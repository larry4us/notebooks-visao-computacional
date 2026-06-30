# Módulo 6 — ML OPS

Módulo curto focado em observabilidade de treino: como acompanhar métricas em tempo real em vez de esperar o treino terminar pra ver o que aconteceu. Usa TensorBoard integrado a um loop de treino PyTorch.

Útil especialmente depois do Módulo 5, onde os treinos ficaram mais longos — ter as curvas de loss e acurácia atualizando em tempo real muda bastante a capacidade de decidir se vale continuar ou ajustar hiperparâmetros.

## Atividades

| Atividade | O que foi feito | Output |
|-----------|-----------------|--------|
| M6A3 — Monitoramento de Experimentos | Integração do TensorBoard num loop de treino PyTorch; logging de loss e métricas por época com `SummaryWriter` | Dashboard com curvas de treino em tempo real via `tensorboard --logdir runs/` |
