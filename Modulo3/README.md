# Módulo 3 — Detecção e Segmentação

Uso de modelos pré-treinados para detecção de objetos e segmentação, mais fine-tuning com transfer learning.

## Atividades

| Atividade | O que foi feito | Output |
|-----------|-----------------|--------|
| M3A5 — Detecção de objetos | Inferência com YOLO11n em imagem de rua; ajuste do threshold de confiança | Detectou 7 pessoas, 16 carros, 1 ônibus e 1 caminhão em `street.jpeg`; bounding boxes com labels |
| M3A3 — Transfer learning | Fine-tuning de VGG-16 no CIFAR-10; comparação com MobileNetV2 (3.4M vs 138M parâmetros) | Curvas de loss por batch; MobileNetV2 com 8.2% de acurácia sem fine-tuning como baseline |
| M3A6 — Segmentação semântica | Segmentação de instâncias com YOLO11n-seg e DeepLabV3 (torchvision); CLI da Ultralytics | Máscaras de segmentação sobre `street.jpeg`; comparação entre segmentação de instância (YOLO) e semântica (DeepLabV3) |
