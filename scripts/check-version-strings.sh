#!/usr/bin/env bash
# Check version string consistency across umbrella repos
# Usage: ./scripts/check-version-strings.sh <expected-version>
# Example: ./scripts/check-version-strings.sh 1.0.0-rc17
#
# Checks for:
# - Version strings in code/docs (1.0.0-rcN pattern)
# - Badge URLs (shields.io with version param)
# - CLI .version() calls
# - SPEC.md Version: headers
# - const/export VERSION patterns

set -euo pipefail

if [[ $# -ne 1 ]]; then
    echo "Usage: $0 <expected-version>"
    echo "Example: $0 1.0.0-rc17"
    exit 1
fi

EXPECTED="$1"
# Extract just the rc number for badge matching (e.g., "rc17" from "1.0.0-rc17")
RC_NUM="${EXPECTED##*-}"
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
UMBRELLA_ROOT="$(dirname "$SCRIPT_DIR")"

REPOS=(
    "$UMBRELLA_ROOT"
    "$HOME/gordo-seal"
    "$HOME/gordo-roundtable"
    "$HOME/gordo-ledger"
    "$HOME/gordo-gauge"
    "$HOME/gordo-forge"
)

EXCLUDE_PATTERNS=(
    "node_modules"
    ".git"
    ".gordo-memory"
    "ai-reactions"
    "attic"
    "dist"
)

EXCLUDE_FILES=(
    "CHANGELOG.md"
    "package-lock.json"
    "check-version-strings.sh"
)

build_exclude_args() {
    local args=""
    for pattern in "${EXCLUDE_PATTERNS[@]}"; do
        args="$args --exclude-dir=$pattern"
    done
    for file in "${EXCLUDE_FILES[@]}"; do
        args="$args --exclude=$file"
    done
    echo "$args"
}

EXCLUDE_ARGS=$(build_exclude_args)

echo "Checking for version strings that don't match: $EXPECTED"
echo "Scanning umbrella repos..."
echo

FOUND_ISSUES=0

for repo in "${REPOS[@]}"; do
    if [[ ! -d "$repo" ]]; then
        echo "SKIP: $repo (not found)"
        continue
    fi

    repo_name=$(basename "$repo")
    repo_matches=""

    # 1. Standard version strings (1.0.0-rcN)
    # shellcheck disable=SC2086
    matches=$(grep -rn $EXCLUDE_ARGS \
        --include="*.md" --include="*.json" --include="*.cff" \
        --include="*.ts" --include="*.js" --include="VERSION" \
        -E "1\.0\.0-rc[0-9]+" "$repo" 2>/dev/null | \
        grep -v "$EXPECTED" | \
        grep -v "CHANGELOG.md" | \
        grep -v "package-lock.json" | \
        grep -v "check-version-strings.sh" || true)

    if [[ -n "$matches" ]]; then
        repo_matches+="$matches"$'\n'
    fi

    # 2. Badge URLs (shields.io with stale version)
    # Pattern: shields.io/badge/...-rc[0-9]+-...
    # shellcheck disable=SC2086
    badge_matches=$(grep -rn $EXCLUDE_ARGS \
        --include="*.md" \
        -E "shields\.io.*-rc[0-9]+-" "$repo" 2>/dev/null | \
        grep -v "$RC_NUM" || true)

    if [[ -n "$badge_matches" ]]; then
        repo_matches+="  [badge] $badge_matches"$'\n'
    fi

    # 3. CLI .version() calls in TypeScript
    # Pattern: .version('1.0.0-rcN')
    # shellcheck disable=SC2086
    cli_matches=$(grep -rn $EXCLUDE_ARGS \
        --include="*.ts" --include="*.js" \
        -E "\.version\(['\"]1\.0\.0-rc[0-9]+" "$repo" 2>/dev/null | \
        grep -v "$EXPECTED" || true)

    if [[ -n "$cli_matches" ]]; then
        repo_matches+="  [cli] $cli_matches"$'\n'
    fi

    # 4. SPEC.md Version headers
    # Pattern: Version: 1.0.0-rcN or **Version:** 1.0.0-rcN
    # shellcheck disable=SC2086
    spec_matches=$(grep -rn $EXCLUDE_ARGS \
        --include="SPEC.md" --include="SPEC*.md" \
        -iE "version:?\s*1\.0\.0-rc[0-9]+" "$repo" 2>/dev/null | \
        grep -v "$EXPECTED" || true)

    if [[ -n "$spec_matches" ]]; then
        repo_matches+="  [spec] $spec_matches"$'\n'
    fi

    # 5. Const/export VERSION patterns
    # Pattern: const VERSION = '1.0.0-rcN' or export const UMBRELLA_VERSION
    # shellcheck disable=SC2086
    const_matches=$(grep -rn $EXCLUDE_ARGS \
        --include="*.ts" --include="*.js" \
        -E "(const|export).*VERSION.*['\"]1\.0\.0-rc[0-9]+" "$repo" 2>/dev/null | \
        grep -v "$EXPECTED" || true)

    if [[ -n "$const_matches" ]]; then
        repo_matches+="  [const] $const_matches"$'\n'
    fi

    if [[ -n "$repo_matches" ]]; then
        echo "STALE in $repo_name:"
        echo "$repo_matches" | while read -r line; do
            [[ -n "$line" ]] && echo "  $line"
        done
        echo
        FOUND_ISSUES=1
    fi
done

if [[ $FOUND_ISSUES -eq 0 ]]; then
    echo "All version strings match $EXPECTED"
    exit 0
else
    echo "Found stale version strings. Update before release."
    exit 1
fi
