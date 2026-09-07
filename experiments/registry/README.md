# Registro de corridas

Un fichero JSON por corrida, versionado en Git. Es la fuente de verdad de toda cifra del artículo.

```json
{
  "run_id": "20261019-1432-a1f3",
  "historia": "PB-19",
  "config_hash": "sha256:…",
  "commit": "9f2c1ab",
  "semilla": 42,
  "entorno": "gicc-proyecto @ python3.11",
  "nodo": "falcon",
  "job_slurm": "184213",
  "metricas": { "f1_macro": 0.8123 },
  "artefactos": ["models/…", "logs/slurm-184213.out"]
}
```
