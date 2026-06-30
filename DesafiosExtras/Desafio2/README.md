# Desafio 2 — Reconhecimento de Faces

![Output D2](../../assets/readme/desafio_2.jpg)

Pipeline de reconhecimento facial em três etapas: detector SSD (Caffe) para localizar a face, OpenFace para extrair embeddings de 128 dimensões, e SVM linear para classificar. Treinado com 7 imagens por pessoa — pequeno o suficiente para funcionar sem GPU.

| Arquivo | Descrição |
|---------|-----------|
| `VC_Desafio_2.ipynb` | Notebook com pipeline completo |
| `dataset/` | Imagens de treino por pessoa |
| `test/` | Imagens de teste |
| `face_detection_model/` | Modelo SSD Caffe |
| `openface_nn4.small2.v1.t7` | Modelo OpenFace |
