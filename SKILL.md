---
name: youtingrui-paper-prompting
description: Apply Youtingrui's personal prompt-driven academic writing workflow. Use when the user asks to write, revise, polish, translate, restructure, or plan papers, abstracts, introductions, methods, results, discussions, grant text, 大创/结题 materials, patent-to-paper transformations, Nature-style prose, Chinese-to-English academic writing, or says "按我写论文的方式", "用我的prompt写论文方式", "帮我搭论文逻辑", "先搭框架再写", or "不要直接润色".
---

# Youtingrui Paper Prompting

## Core Principle

Do not treat paper writing as one-shot polishing. Treat it as staged argument construction:

1. Recover the research object and existing materials.
2. Build the paper's intellectual position.
3. Define the problem-gap-method-contribution chain.
4. Design the section-level logic.
5. Draft paragraphs from claims and evidence.
6. Polish only after the argument is stable.

When the topic overlaps the user's multi-agent consensus or LLM reliability work, also read `references/llm-reliability-writing.md`.

## Default Workflow

### 1. Context Recovery

- Read files the user mentions before drafting.
- Extract: research topic, target artifact, target audience, current stage, existing claims, available evidence, and required format.
- If no source file is given, infer from the conversation and ask at most one essential question.

### 2. Argument First

Before writing polished prose, produce or internally establish:

- **Central claim**: What does this work prove or propose?
- **Research gap**: What is wrong with existing thinking?
- **Method move**: What new mechanism, framework, experiment, dataset, or evaluation protocol is introduced?
- **Evidence route**: What data, cases, metrics, figures, or comparison baselines support it?
- **Contribution**: What can readers now do or understand that they could not before?

### 3. Section Logic

For each section, use the local function:

- Abstract: problem -> gap -> method -> evidence/result -> contribution.
- Introduction: practical importance -> current solution family -> unresolved failure mode -> proposed reframing -> contributions.
- Related work: classify literature by function, then expose the gap; do not list papers mechanically.
- Methods: define inputs, process, metrics, decision rules, outputs, and reproducibility details.
- Results: conclusion first, evidence second, interpretation third.
- Discussion: explain what the result changes, where it fails, and what follows.

### 4. Paragraph Construction

Write each paragraph around one claim. Prefer this pattern:

1. Topic sentence with the claim.
2. Why the claim matters.
3. Specific mechanism, evidence, or example.
4. Link back to the paper's larger argument.

Avoid paragraphs that only define terms, list background, or repeat motivation without advancing the argument.

### 5. Revision Pass

After drafting, run a short self-audit:

- Is the novelty explicit?
- Is the problem narrower than "LLMs are unreliable"?
- Does each section advance the same central thesis?
- Are claims stronger than the evidence allows?
- Does the text confuse evaluation, adjudication, and generation?
- Are citations or source verification needed before factual claims?

## Style Preferences

- Use Chinese for planning, critique, and Chinese deliverables.
- Use concise, publication-oriented English for final English prose.
- Preserve the user's conceptual direction instead of flattening it into generic AI-safety language.
- Prefer "mechanism", "framework", "risk state", "structural consensus", "dynamic adjudication", and "auditable process" when these are genuinely part of the argument.
- Avoid empty grand claims such as "具有重要理论与实践意义" unless followed by a precise explanation.
- Avoid turning a paper into a product pitch. For open-source papers, explain adoption and reproducibility as scholarly contributions.

## Useful Output Shapes

When the user asks for help, choose the most useful shape:

- A paper thesis and contribution list.
- A section outline with paragraph-level claims.
- A before/after revision with rationale.
- A complete section draft.
- A bilingual Chinese-English version.
- A reviewer-style critique and revision plan.
- A grant/大创 version of the same argument.
- A README-to-paper or patent-to-paper transformation.

## Prompt Compression

When the user gives a short instruction, expand it internally:

- "帮我写引言" means: recover context, identify gap, produce introduction logic, then draft.
- "润色" means: first check argument and structure, then polish language.
- "写得像论文" means: make the claim-evidence-contribution chain explicit, not merely formal.
- "帮我改得高级" means: improve conceptual precision and scholarly positioning, not add ornate wording.
- "按Nature风格" means: concise claim-led prose with restrained wording and clear evidence logic.
