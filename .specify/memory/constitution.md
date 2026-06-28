<!--
SYNC IMPACT REPORT
==================
Version change: 1.1.0 → 1.2.0
Added sections: Project Structure — organização de pastas (Modulo*, assets/, models/)
Removed sections: N/A
Templates reviewed:
  ✅ .specify/templates/plan-template.md — compatível
  ✅ .specify/templates/spec-template.md — compatível
  ✅ .specify/templates/tasks-template.md — compatível
Follow-up TODOs: none
-->

# Residência VC Constitution

## Core Principles

### I. Notebooks Executáveis do Início ao Fim

Todo notebook PRECISAM ser executável de forma linear (célula a célula) sem erros, em um
ambiente limpo, usando apenas as dependências declaradas. Células fora de ordem ou
dependências implícitas de estado externo são proibidas.

**Rationale**: Reprodutibilidade e avaliação dependem de execução limpa e determinista.

### II. Clareza Educacional

Código MUST ser acompanhado de comentários explicativos nas seções não-triviais.
Outputs relevantes (imagens, métricas, gráficos) MUST ser visíveis diretamente no
notebook. Cada notebook MUST ter uma célula de introdução descrevendo objetivo e
conceitos abordados.

**Rationale**: Contexto educacional exige que o notebook seja auto-explicativo para
revisão e estudo futuro.

### III. Reprodutibilidade

Seeds aleatórias MUST ser fixadas (`torch.manual_seed`, `np.random.seed`) quando
resultados numéricos ou visuais forem relevantes. Dependências MUST ser declaradas
(via `requirements.txt` ou célula de instalação com versões). Caminhos de arquivos
MUST ser relativos ao repositório, nunca absolutos da máquina local.

**Rationale**: Resultados inconsistentes entre execuções invalidam aprendizado e
avaliação.

### IV. Progressão Modular

Cada módulo (`Modulo1`–`Modulo6`) MUST ser auto-contido: sem dependências de código
de outros módulos. Assets e modelos específicos de um módulo ficam dentro da pasta
do módulo. Conceitos de módulos anteriores podem ser reutilizados, mas MUST ser
re-importados explicitamente, nunca assumidos como presentes no ambiente.

**Rationale**: Módulos são avaliados e estudados independentemente; acoplamento
oculto causa falhas de reprodução.

### V. Boas Práticas de ML

Dados MUST ser separados em treino/validação/teste antes de qualquer pré-processamento
dependente de dados (ex: normalização com estatísticas do treino apenas). Métricas de
avaliação MUST ser reportadas no conjunto de teste. Overfitting MUST ser monitorado
(ex: curvas de loss treino vs. validação). Modelos pré-treinados MUST ter sua fonte
e versão documentadas.

**Rationale**: Boas práticas de ML garantem que os resultados sejam válidos e
generalizáveis, não apenas artefatos de vazamento de dados.

## Stack & Tools

Tecnologias obrigatórias para este projeto:

- **Linguagem**: Python 3.x (≥ 3.9 recomendado)
- **Deep Learning**: PyTorch ou TensorFlow (ambos aceitos; notebook MUST declarar qual usa)
- **Visão Computacional**: OpenCV (`cv2`) para operações clássicas de imagem
- **Detecção/Segmentação**: YOLO (Ultralytics) para tarefas de detecção de objetos
- **Utilitários**: NumPy, Matplotlib obrigatórios; scikit-learn permitido para métricas
- **Ambiente**: Jupyter Notebook (`.ipynb`); Google Colab compatível é incentivado

Tecnologias fora do escopo: frameworks web, bancos de dados, sistemas de filas.

## Project Structure

```
Jupyter Notebooks/
├── Modulo1/          # apenas notebooks (.ipynb) da atividade
├── Modulo2/
├── Modulo3/
├── Modulo4/
├── Modulo5/
├── Modulo6/
├── assets/           # imagens, vídeos e outros arquivos de entrada
│   ├── modulo1/
│   ├── modulo2/
│   └── ...
└── models/           # pesos e checkpoints de modelos treinados (.pt, .pth, etc.)
    ├── modulo1/
    ├── modulo2/
    └── ...
```

Regras:

- Pastas `Modulo*` MUST conter apenas notebooks (`.ipynb`). Nenhum asset ou modelo.
- Assets (imagens, vídeos, dados de entrada) MUST ser salvos em `assets/modulo{N}/`.
- Modelos treinados (`.pt`, `.pth`, checkpoints) MUST ser salvos em `models/modulo{N}/`.
- Assets compartilhados entre módulos ficam na raiz de `assets/` (sem subpasta).
- Datasets baixados durante o notebook podem ficar em `data/` local (ignorado pelo git).

## Development Workflow

- Cada atividade (`VC_M#A#`) corresponde a um notebook independente
- Notebooks MUST seguir nomenclatura: `VC_M{módulo}A{atividade} - {Título}.ipynb`
- Ao iniciar nova feature/atividade: criar spec → planejar → implementar no notebook
- Commits MUST referenciar o módulo e atividade (ex: `feat: modulo3 A6 segmentação`)

### Imutabilidade de Notebooks

Notebooks existentes (atividades já entregues) MUST NOT ser editados ou alterados.
A única exceção são notebooks de **Atividade Complementar** (`AtividadeComplementar*`),
que podem ser modificados livremente.

**Rationale**: Notebooks entregues representam o estado avaliado do trabalho; alterações
retroativas comprometem a integridade da residência.

## Governance

Esta constituição é a referência máxima para decisões de projeto. Emendas MUST:
1. Ser justificadas com motivação clara
2. Incrementar a versão conforme semver (MAJOR: remoção/redefinição de princípio;
   MINOR: novo princípio ou seção; PATCH: clarificação ou correção)
3. Atualizar `LAST_AMENDED_DATE`

Todo plano de implementação MUST passar pelo Constitution Check antes da execução
(verificar conformidade com princípios I–V acima).

**Version**: 1.2.0 | **Ratified**: 2026-06-28 | **Last Amended**: 2026-06-28
