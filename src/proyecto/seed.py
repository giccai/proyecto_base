"""Semilla global: cubre Python, NumPy y el framework de aprendizaje.

Ninguna cifra del artículo puede salir de una ejecución sin semilla declarada.
"""
from __future__ import annotations

import os
import random

DEFAULT_SEED = 42


def set_seed(seed: int = DEFAULT_SEED, *, deterministic: bool = True) -> int:
    """Fija la semilla en todas las fuentes de aleatoriedad disponibles.

    Devuelve la semilla usada, para que quien llama la registre junto con la corrida.
    """
    os.environ["PYTHONHASHSEED"] = str(seed)
    random.seed(seed)

    try:
        import numpy as np

        np.random.seed(seed)
    except ImportError:
        pass

    try:
        import torch

        torch.manual_seed(seed)
        torch.cuda.manual_seed_all(seed)
        if deterministic:
            torch.use_deterministic_algorithms(True, warn_only=True)
            torch.backends.cudnn.benchmark = False
    except ImportError:
        pass

    return seed
