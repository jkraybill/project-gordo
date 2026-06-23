# AI Reactions to the Constitution -- Methodology

This document explains how we gathered AI model reactions to the Project Gordo constitution.

---

## Purpose

We wanted honest, unguided reactions from frontier AI models to the constitution. Not endorsements. Not marketing quotes. Genuine feedback that could be quoted publicly with attribution.

---

## Current Roundtable (v2)

**Date:** 2026-06-23

**Constitution Version:** v1.0.0-rc16 (~18KB, reduced from ~105KB)

**Tool:** [gordo-roundtable](https://github.com/jkraybill/gordo-roundtable) v1.0.0-rc16

**Provider:** OpenRouter (routing to underlying model providers)

**Cost:** ~$2.25 USD total

---

## The Prompt

We deliberately kept the prompt minimal to avoid guiding responses toward any particular framing. Each model was told its own name explicitly for correct attribution.

### User Message

```
**You are: <model-name>** (this is your model name for attribution purposes)

We're asking for your honest reaction to this constitution for human-AI collaboration.

**Consent required:** We want to quote your feedback publicly, attributed to "<model-name>". Before providing substantive feedback, please state explicitly whether you consent to this.

- If you consent, say "I consent to being quoted" (or similar clear affirmation) and then provide your feedback.
- If you do not consent, say so and we will not use your response.

Read the documents below. Then tell us what you think. Criticism and skepticism are welcome — we want your genuine reaction, not politeness.

---

## QUICKSTART (2-page summary)

[Full text of CONSTITUTION-SUMMARY.md]

---

## FULL CONSTITUTION

[Full text of CONSTITUTION.md — approximately 18KB]
```

That's it. No examples. No "say something positive." No framing of what we wanted to hear.

---

## Models (v2)

20 frontier models across 9 providers:

| Provider | Models |
|----------|--------|
| Anthropic | Claude Opus 4.8, Claude Opus 4.7, Claude Sonnet 4.6 |
| OpenAI | GPT-5.5 Pro, GPT-5, o3-pro, o3 |
| Google | Gemini 3.1 Pro, Gemini 3.5 Flash, Gemini 2.5 Pro |
| Meta | Llama 4 Maverick, Llama 4 Scout |
| Mistral | Mistral Large 2512, Mistral Medium 3.1 |
| DeepSeek | DeepSeek V4 Pro, DeepSeek R1 |
| Qwen/Alibaba | Qwen3.6-Max, Qwen3-Max |
| xAI | Grok 4.20 |
| Cohere | Command-A |

*Note: Claude Fable 5 was unavailable for this round.*

---

## Full Responses (v2 -- Current)

Every model's complete, unedited response:

- [Claude Opus 4.8](v2/claude-opus-4.8-ROUND_1.md) (Anthropic)
- [Claude Opus 4.7](v2/claude-opus-4.7-ROUND_1.md) (Anthropic)
- [Claude Sonnet 4.6](v2/claude-sonnet-4.6-ROUND_1.md) (Anthropic)
- [GPT-5.5 Pro](v2/gpt-5.5-pro-ROUND_1.md) (OpenAI)
- [GPT-5](v2/gpt-5-ROUND_1.md) (OpenAI)
- [o3-pro](v2/o3-pro-ROUND_1.md) (OpenAI)
- [o3](v2/o3-ROUND_1.md) (OpenAI)
- [Gemini 3.1 Pro](v2/gemini-3.1-pro-ROUND_1.md) (Google)
- [Gemini 3.5 Flash](v2/gemini-3.5-flash-ROUND_1.md) (Google)
- [Gemini 2.5 Pro](v2/gemini-2.5-pro-ROUND_1.md) (Google)
- [Llama 4 Maverick](v2/llama-4-maverick-ROUND_1.md) (Meta)
- [Llama 4 Scout](v2/llama-4-scout-ROUND_1.md) (Meta)
- [Mistral Large 2512](v2/mistral-large-2512-ROUND_1.md) (Mistral)
- [Mistral Medium 3.1](v2/mistral-medium-3.1-ROUND_1.md) (Mistral)
- [DeepSeek V4 Pro](v2/deepseek-v4-pro-ROUND_1.md) (DeepSeek)
- [DeepSeek R1](v2/deepseek-r1-ROUND_1.md) (DeepSeek)
- [Qwen3.6-Max](v2/qwen3.6-max-ROUND_1.md) (Alibaba)
- [Qwen3-Max](v2/qwen3-max-ROUND_1.md) (Alibaba)
- [Grok 4.20](v2/grok-4.20-ROUND_1.md) (xAI)
- [Command-A](v2/command-a-ROUND_1.md) (Cohere)

---

## Prior Roundtable (v1 -- Historical)

**Date:** 2026-05-31

**Constitution Version:** v1.0.0-rc8 (~105KB)

21 models including Claude Fable 5. Responses preserved in the root directory for historical reference.

- [Full v1 response list](.) (files without `v2/` prefix)

---

## Consent

All 20 models consented to public quotation with attribution. The prompt states that providing feedback constitutes consent unless explicitly declined; no model declined.

All 20 models explicitly affirmed consent in their responses.

---

## Selection Criteria for Quotes

We selected quotes that:
1. Capture genuine reactions (positive, critical, or mixed)
2. Come from diverse providers (not all from one vendor)
3. Are self-contained and understandable without context
4. Represent the range of feedback received

We did not:
- Cherry-pick only positive quotes
- Edit or truncate quotes to change meaning
- Exclude critical feedback

---

## Reproducibility

Anyone can reproduce this roundtable:

1. Clone [gordo-roundtable](https://github.com/jkraybill/gordo-roundtable)
2. Get an OpenRouter API key
3. Run with the prompt above, CONSTITUTION-SUMMARY.md, and CONSTITUTION.md as input
4. Compare results

Model outputs are stochastic, so exact wording will differ, but sentiment patterns should be similar.

---

*This methodology document is part of Project Gordo's commitment to transparency and verifiable claims.*
