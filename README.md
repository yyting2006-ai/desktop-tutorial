# Youtingrui Paper Prompting

A personal Codex skill for prompt-driven academic writing.

This skill makes Codex follow Youtingrui's preferred paper-writing workflow: recover context first, build the argument before polishing, define the problem-gap-method-contribution chain, then draft or revise academic sections with a clear claim-evidence-contribution structure.

## What It Does

- Plans and writes abstracts, introductions, methods, results, discussions, grant text, and 大创/结题 materials.
- Converts short prompts such as "帮我写引言" or "按我写论文的方式改" into a staged academic writing workflow.
- Preserves the user's research framing around multi-agent consensus, LLM reliability evaluation, structural consensus, false consensus, minority-correct warnings, and dynamic adjudication.
- Supports Chinese planning and critique, concise English academic prose, and Chinese-to-English academic rewriting.

## Install

From this repository:

```bash
./install.sh
```

Or manually copy the folder into Codex skills:

```bash
mkdir -p "${CODEX_HOME:-$HOME/.codex}/skills/youtingrui-paper-prompting"
cp -R . "${CODEX_HOME:-$HOME/.codex}/skills/youtingrui-paper-prompting"
```

## Publish To GitHub

Create an empty GitHub repository first, then run:

```bash
./publish.sh git@github.com:YOUR_NAME/youtingrui-paper-prompting-skill.git
```

HTTPS remotes also work:

```bash
./publish.sh https://github.com/YOUR_NAME/youtingrui-paper-prompting-skill.git
```

## Use

Invoke the skill explicitly:

```text
Use $youtingrui-paper-prompting to help me write this paper section in my usual prompting style.
```

Natural triggers also include:

- 按我写论文的方式
- 用我的 prompt 写论文方式
- 帮我搭论文逻辑
- 先搭框架再写
- 不要直接润色

## Files

- `SKILL.md`: Main skill instructions.
- `references/llm-reliability-writing.md`: Research-specific writing reference.
- `agents/openai.yaml`: Codex UI metadata.
