# Módulo 2 — Características e Descritores

Detecção de keypoints, extração de descritores e correspondências entre imagens. Introdução a modelos pré-treinados para classificação.

## Atividades

| Atividade | O que foi feito | Output |
|-----------|-----------------|--------|
| M2A1 — Detecção e Extração de Características | Extração de keypoints com SIFT (ajuste de `contrastThreshold`), AKAZE e comparação entre detectores | Imagens com keypoints desenhados; comparação visual entre SIFT padrão, SIFT ajustado e AKAZE |
| M2A2 — Correspondências de Características | Matching de keypoints ORB e SIFT entre pares de fotos (`minhamao_1/2/3.jpeg`) com BFMatcher | Visualização das correspondências entre pares de imagens; SIFT gerou matches mais robustos que ORB |
| M2A10 — Modelos Pré-Treinados | Classificação de imagens com VGG-16 e ResNet-50 (ImageNet); comparação de top-5 probabilidades | VGG-16 e ResNet-50 predisseram "Border collie" corretamente; gráfico de probabilidades por classe |
