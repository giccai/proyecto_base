#!/bin/bash
#SBATCH --job-name=proyecto-entrenamiento
#SBATCH --output=logs/slurm-%j.out
#SBATCH --error=logs/slurm-%j.err
#SBATCH --time=04:00:00
#SBATCH --gres=gpu:1
#SBATCH --cpus-per-task=8
#SBATCH --mem=32G

# Plantilla de job para el clúster Slurm del GICC (GICC HPRC).
#   hprc submit scripts/hprc/train.sbatch
# Anota el job id devuelto en el Issue de la historia correspondiente.

set -euo pipefail

source "$(conda info --base)/etc/profile.d/conda.sh"
conda activate gicc-proyecto

echo "commit:  $(git rev-parse HEAD)"
echo "nodo:    ${SLURMD_NODENAME:-desconocido}"
echo "job:     ${SLURM_JOB_ID:-local}"

python -m proyecto.training.run \
    --config configs/train.yaml \
    --seed "${SEED:-42}" \
    --run-id "${SLURM_JOB_ID:-local}"
