# Objetivos del proyecto. Todo lo que produce una cifra del artículo tiene que
# poder regenerarse desde aquí, sin pasos manuales.
.PHONY: setup data train eval tablas figuras paper repro test lint

setup:      ## Crea el entorno reproducible e instala el paquete en modo editable
	conda env create -f environment.yml || conda env update -f environment.yml
	python -m pip install -e .

data:       ## Descarga, prepara y congela las particiones (versionadas con DVC)
	python -m proyecto.data.build --config configs/data.yaml

train:      ## Entrena el método propuesto con la configuración por defecto
	python -m proyecto.training.run --config configs/train.yaml

eval:       ## Evalúa las corridas registradas y calcula significancia
	python -m proyecto.evaluation.run --config configs/eval.yaml

tablas:     ## Regenera todas las tablas del artículo desde experiments/registro/
	python scripts/make_tables.py

figuras:    ## Regenera todas las figuras del artículo desde experiments/registro/
	python scripts/make_figures.py

paper:      ## Compila el manuscrito
	latexmk -pdf -cd paper/main.tex

repro:      ## Reproduce de cero los números del artículo (entorno limpio)
	$(MAKE) data && $(MAKE) eval && $(MAKE) tablas && $(MAKE) figuras

test:       ## Ejecuta la suite de pruebas
	pytest -q

lint:       ## Formato y análisis estático
	ruff check src tests scripts
