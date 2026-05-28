# LLM Reliability Writing Reference

Use this reference when writing about the user's recurring research direction: multi-agent consensus, multi-LLM collaboration, trustworthy evaluation, structural consensus, and dynamic adjudication.

## Preferred Thesis

The project should not be framed as another hallucination detector or majority-voting ensemble. Frame it as a method for observing and controlling the reliability state of multi-LLM outputs.

Strong thesis:

> Multi-model agreement is not equivalent to trustworthiness. A reliable multi-LLM system should distinguish shared semantic cores, model-specific dissent, false consensus risk, minority-correct warnings, answer drift, and evidence support before deciding whether to aggregate, re-sample, route, or escalate.

Chinese thesis:

> 多模型一致不等于可信。可信的多LLM系统不应只追求合并答案，而应识别共享语义核心、结构性分歧、虚假共识风险、少数派正确信号、答案漂移和证据支持状态，并据此决定是否自动聚合、保守输出、追加采样、模型路由或人工复核。

## Argument Skeleton

Use this skeleton for abstracts, introductions, project proposals, and README-to-paper transformations:

1. LLMs are increasingly used in settings where answers must be reliable and auditable.
2. Multi-model collaboration is often used to reduce single-model instability.
3. Existing approaches often over-trust agreement, voting, debate, or judge models.
4. Agreement can be false, dissent can be valuable, and discussion can introduce drift.
5. Therefore, the core problem is not selecting the winning answer, but diagnosing the reliability state of the multi-model process.
6. The proposed approach builds a structured consensus state from repeated multi-model outputs.
7. It quantifies shared cores, model-specific themes, distributional divergence, evidence support, and decision risk.
8. It maps these states to dynamic adjudication actions such as accept, conservative merge, counter-check, resample, route, or human review.

## Key Terms

- **Structural consensus**: A state representation that separates shared semantic core, model-specific dissent, and distributional divergence.
- **False consensus**: Multiple models agree on an answer or claim that is unsupported or incorrect.
- **Minority-correct warning**: A minority answer is inconsistent with the majority but has evidence or benchmark support.
- **Discussion drift**: A model or agent changes from a correct answer to an incorrect answer during debate or deliberation.
- **Dynamic adjudication**: A control policy that chooses different actions according to the diagnosed risk state.
- **Consensus trace**: A structured record of model outputs, prompts, samples, topics, metrics, decisions, and evidence.

## Preferred Contributions

Use 3-4 contributions, not a long list:

- A structured representation of multi-LLM consensus that distinguishes shared semantic cores from stable dissent and distributional divergence.
- A reliability metric suite for false consensus, minority-correct risk, answer drift, evidence support, and confidence mismatch.
- A dynamic adjudication policy that maps reliability states to aggregation, re-sampling, counter-evidence checking, routing, or human review.
- A reproducible benchmark or open-source prototype for auditing multi-model decision processes.

## Common Pitfalls To Avoid

- Do not say the method "solves hallucination" broadly.
- Do not imply more agents automatically produce more reliable answers.
- Do not collapse reliability into accuracy alone.
- Do not use "trustworthy AI" as a vague slogan; specify what is measured and controlled.
- Do not over-claim if the evidence is only prototype-level.
