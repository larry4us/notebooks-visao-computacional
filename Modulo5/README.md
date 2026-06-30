# Módulo 5 — Aplicações Práticas de VC

Módulo de projetos aplicados — cada atividade é um problema real com dataset próprio e fine-tuning de modelo específico para a tarefa. É o módulo mais extenso e onde o pipeline de treino (carregar dataset, adaptar modelo, treinar, validar) se repete com variações em cada atividade.

A dependência de `ffmpeg` no M5A4 pegou de surpresa — é necessário instalar separadamente do pip antes de rodar o notebook. O M5A3 usa Faster R-CNN no dataset `mobile-ui-design` do HuggingFace, que tem 4 classes de componentes de UI.

> GPU recomendada para M5A1, M5A3, M5A4, M5A5 e M5A6.

## Atividades

| Atividade | O que foi feito | Output |
|-----------|-----------------|--------|
| M5A1 — Inspeção Visual em Manufatura | Fine-tuning YOLO (Ultralytics) no dataset `fruits-dataset` (HuggingFace) para detecção de defeitos | Bounding boxes sobre defeitos detectados; métricas de precisão no conjunto de validação |
| M5A2 — Reconhecimento de Texto (OCR) | Extração de texto de imagens com EasyOCR em imagens de números e texto em inglês | Texto extraído com posição das regiões; bounding boxes sobre áreas identificadas |
| M5A3 — Identificação de Elementos de UI | Fine-tuning Faster R-CNN no `mobile-ui-design` (4 classes: botões, campos, ícones, texto) | Loss caiu de 1.72 para ~0.16; bounding boxes sobre componentes de UI em screenshots |
| M5A4 — Sistema de Vigilância | Fine-tuning para detecção em vídeo de vigilância; requer `ffmpeg` instalado separadamente | Vídeo anotado com detecções por frame |
| M5A5 — Segmentação de Falhas em Tecidos | Fine-tuning de modelo de segmentação no dataset DTD (torchvision) para identificar anomalias | Máscaras de segmentação sobre regiões com defeito |
| M5A6 — Detecção de Faixas para Veículos Autônomos | Fine-tuning FCN no `bdd100k_15frames` (HuggingFace) para lane detection | Faixas detectadas e demarcadas sobre imagens de rodovia |
