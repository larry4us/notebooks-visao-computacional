# Módulo 5 — Aplicações Práticas de VC

Projetos aplicados: fine-tuning de modelos para tarefas reais em manufatura, OCR, vigilância e veículos autônomos.

> GPU recomendada para os notebooks de fine-tuning (M5A1, M5A3, M5A4, M5A5, M5A6).

## Atividades

| Atividade | O que foi feito | Output |
|-----------|-----------------|--------|
| M5A1 — Inspeção Visual em Manufatura | Fine-tuning de modelo (YOLO/Ultralytics) para detectar defeitos em itens de esteira | Bounding boxes sobre defeitos detectados; métricas de precisão no conjunto de validação |
| M5A2 — Reconhecimento de Texto (OCR) | Extração de texto de imagens com EasyOCR | Texto extraído e posição das regiões identificadas; visualização das bounding boxes sobre o texto |
| M5A3 — Identificação de Elementos de UI | Fine-tuning para detecção de componentes de interface (botões, campos, ícones) em screenshots | Bounding boxes sobre elementos de UI identificados em screenshots de aplicativos |
| M5A4 — Sistema de Vigilância | Fine-tuning para detecção e rastreamento de pessoas/objetos em vídeo; requer `ffmpeg` | Vídeo anotado com detecções por frame; modelo adaptado para cenário de vigilância |
| M5A5 — Segmentação de Falhas em Tecidos | Fine-tuning de modelo de segmentação para identificar anomalias em tecidos | Máscaras de segmentação sobre regiões com defeito; métricas de IoU no conjunto de teste |
| M5A6 — Detecção de Faixas para Veículos Autônomos | Fine-tuning para lane detection em imagens de rodovia | Faixas detectadas e demarcadas sobre imagens de estrada |
