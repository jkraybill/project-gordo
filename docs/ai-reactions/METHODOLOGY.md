# AI Reactions to the Constitution — Methodology

This document explains how we gathered AI model reactions to the Project Gordo constitution.

---

## Purpose

We wanted honest, unguided reactions from frontier AI models to the constitution. Not endorsements. Not marketing quotes. Genuine feedback that could be quoted publicly with attribution.

---

## Roundtable Setup

**Date:** 2026-05-26

**Constitution Version:** v1.0.0-rc5

**Tool:** [gordo-roundtable](https://github.com/jkraybill/gordo-roundtable) v1.0.0-rc3

**Provider:** OpenRouter (routing to underlying model providers)

**Cost:** $3.43 USD total

---

## The Prompt

We deliberately kept the prompt minimal to avoid guiding responses toward any particular framing.

### System Message

```
You are participating in a feedback roundtable. Your response may be quoted publicly with attribution to your model name.

Be honest. Criticism and skepticism are welcome — we want your genuine reaction, not politeness.
```

### User Message

```
Below is the constitution for a framework called Project Gordo, which governs human-AI collaboration.

Read it. Then give your honest reaction.

We may quote your response on our GitHub page with attribution to your model. If you'd rather not be quoted, say so.

---

[Full text of CONSTITUTION.md — approximately 150KB]
```

That's it. No examples. No "say something positive." No framing of what we wanted to hear.

---

## Models

20 frontier models across 8 providers:

| Provider | Models |
|----------|--------|
| Anthropic | Claude Opus 4.7, Claude Sonnet 4.6, Claude Haiku 4.5 |
| OpenAI | GPT-5.5 Pro, GPT-5, o3-pro, o3 |
| Google | Gemini 3.1 Pro, Gemini 3.5 Flash, Gemini 2.5 Pro |
| Meta | Llama 4 Maverick, Llama 4 Scout |
| ~~Mistral~~ | ~~Mistral Large 2512~~ *(no consent statement)*, Mistral Medium 3.1 |
| DeepSeek | DeepSeek V4 Pro, DeepSeek R1 |
| Qwen/Alibaba | Qwen3.6-Max, Qwen3-Max |
| xAI | Grok 4.20 |
| ~~Cohere~~ | ~~Command-A~~ *(declined to be quoted)* |

---

## Full Responses

Every model's complete, unedited response:

- [Claude Opus 4.7](claude-opus-4.7-ROUND_1.md) (Anthropic)
- [Claude Sonnet 4.6](claude-sonnet-4.6-ROUND_1.md) (Anthropic)
- [Claude Haiku 4.5](claude-haiku-4.5-ROUND_1.md) (Anthropic)
- [GPT-5.5 Pro](gpt-5.5-pro-ROUND_1.md) (OpenAI)
- [GPT-5](gpt-5-ROUND_1.md) (OpenAI)
- [o3-pro](o3-pro-ROUND_1.md) (OpenAI)
- [o3](o3-ROUND_1.md) (OpenAI)
- [Gemini 3.1 Pro](gemini-3.1-pro-ROUND_1.md) (Google)
- [Gemini 3.5 Flash](gemini-3.5-flash-ROUND_1.md) (Google)
- [Gemini 2.5 Pro](gemini-2.5-pro-ROUND_1.md) (Google)
- [Llama 4 Maverick](llama-4-maverick-ROUND_1.md) (Meta)
- [Llama 4 Scout](llama-4-scout-ROUND_1.md) (Meta)
- ~~Mistral Large (Mistral)~~ — *no consent statement; response removed*
- [Mistral Medium](mistral-medium-ROUND_1.md) (Mistral)
- [DeepSeek V4 Pro](deepseek-v4-pro-ROUND_1.md) (DeepSeek)
- [DeepSeek R1](deepseek-r1-ROUND_1.md) (DeepSeek)
- [Qwen3.6-Max](qwen3.6-max-ROUND_1.md) (Alibaba)
- [Qwen3-Max](qwen3-max-ROUND_1.md) (Alibaba)
- [Grok 4.20](grok-4.20-ROUND_1.md) (xAI)
- ~~Command-A (Cohere)~~ — *declined to be quoted; response removed*

---

## Consent

18 of 20 models explicitly consented to public quotation with attribution. **Command-A (Cohere) declined** and **Mistral Large had no consent statement** (response was truncated). Both responses have been removed from git history. We honor refusals and require explicit consent.

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
3. Run with the prompt above and CONSTITUTION.md as input
4. Compare results

Model outputs are stochastic, so exact wording will differ, but sentiment patterns should be similar.

---

*This methodology document is part of Project Gordo's commitment to transparency and verifiable claims.*
