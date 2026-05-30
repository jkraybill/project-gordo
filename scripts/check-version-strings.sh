#!/usr/bin/env bash
# Check version string consistency across umbrella repos
# Usage: ./scripts/check-version-strings.sh <expected-version>
# Example: ./scripts/check-version-strings.sh 1.0.0-rc7

set -euo pipefail

if [[ $# -ne 1 ]]; then
    echo "Usage: $0 <expected-version>"
    echo "Example: $0 1.0.0-rc7"
    exit 1
fi

EXPECTED="$1"
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

    # Find all rc version strings that aren't the expected one
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
        echo "STALE in $repo_name:"
        echo "$matches" | while read -r line; do
            echo "  $line"
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
