# Configuración

Toda la parametrización del proyecto vive aquí, en YAML. **Ninguna constante experimental en el
código**: si un número afecta a un resultado, es configuración y se versiona.

- `data.yaml` — fuentes, particiones, transformaciones.
- `train.yaml` — modelo, optimizador, entrenamiento.
- `eval.yaml` — métricas, remuestreo, pruebas estadísticas.
- `sweeps/` — barridos de hiperparámetros.
