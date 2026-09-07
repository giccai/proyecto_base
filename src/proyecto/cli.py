"""Punto de entrada del prototipo: `proyecto --help`.

El prototipo es una cáscara sobre el paquete que produjo los números del artículo.
Nunca reimplementa nada: importa de `proyecto.*`.
"""
from __future__ import annotations

import argparse

from proyecto.seed import DEFAULT_SEED, set_seed


def main(argv: list[str] | None = None) -> int:
    p = argparse.ArgumentParser(prog="proyecto", description="Prototipo del proyecto de investigación")
    p.add_argument("--seed", type=int, default=DEFAULT_SEED, help="semilla global")
    sub = p.add_subparsers(dest="comando", required=True)
    sub.add_parser("demo", help="ejecuta la demo del resultado principal")

    args = p.parse_args(argv)
    set_seed(args.seed)

    if args.comando == "demo":
        print("TODO: demo del resultado principal del artículo.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
