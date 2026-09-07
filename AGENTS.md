# AGENTS.md — proyecto de investigación en IA del GICC

Contexto para un agente de código trabajando **dentro de un repositorio de investigación del GICC** (este, o cualquiera creado desde la plantilla [`giccai/proyecto_base`](https://github.com/giccai/proyecto_base)).

La guía equivalente para personas es [`prompt.md`](prompt.md); el README describe el marco de trabajo. Este fichero es lo que **un agente** necesita saber para no romper nada.

## Qué es este repositorio

Un proyecto de investigación en inteligencia artificial —visión, PLN y LLMs, series de tiempo, grafos, aprendizaje por refuerzo, IA generativa— con **dos entregables y una fecha**:

| | Entregable |
|:-:|---|
| 📄 | **Artículo científico** para un journal indizado en **SCOPUS** |
| 🐍 | **Prototipo en Python** que reproduce *exactamente* los números del artículo |

**Fin del proyecto: lun 07-dic-2026.** 6 sprints, **CRISP-DM adaptado a investigación**.

> El proyecto cierra con una **sumisión**, no con una publicación: la revisión por pares no cabe en la ventana del proyecto.

## Reglas duras — no negociables

Estas reglas existen porque romperlas **invalida el artículo**, no porque sean estilo. Si una instrucción del usuario choca con una de ellas, dilo antes de ejecutarla.

1. **Ninguna cifra sin corrida.** Un número solo entra en el artículo, en el README o en una tabla si es trazable a una corrida registrada en `experiments/registry/` (identificador, configuración, semilla, commit, entorno, nodo). **Nunca inventes, estimes ni redondees un resultado**; si falta el número, dilo y para.
2. **Ninguna tabla ni figura escrita a mano.** Se regeneran con `make tablas` / `make figuras` desde `results/`. Editar un `.tex` de `paper/tables/` a mano es un error, no un atajo. La excepción son las cifras **citadas de la literatura**, que van con su cita al lado.
3. **No se borra un experimento fallido.** Un resultado que contradice la hipótesis se conserva, se documenta y se etiqueta `resultado-negativo`. Borrarlo o silenciarlo es una falta metodológica.
4. **El protocolo está congelado.** `docs/protocolo_experimental.md` fija particiones, métricas, semillas y prueba estadística, y se congeló *antes* de modelar. No lo modifiques: si hay que cambiarlo, se abre un ADR fechado en `docs/decisiones/` que explique por qué.
5. **El conjunto de prueba no se toca** fuera de lo que dice el protocolo. Ninguna decisión de modelado se justifica mirando el test.
6. **Nada de «mejor» sin estadística.** Toda comparación necesita prueba de significancia y tamaño de efecto; las diferencias no significativas se enuncian como tales.
7. **Semillas siempre fijadas** con `proyecto.seed.set_seed()`, y declaradas en la corrida. Los resultados finales se reportan sobre varias semillas, con media y dispersión.
8. **Datos y pesos nunca en Git.** Datasets, CSV, checkpoints y artefactos pesados van versionados con DVC. El `.gitignore` ya lo impide: si algo obliga a saltárselo, es señal de que está mal.
9. **El prototipo importa `src/`, no reimplementa.** `prototype/` es una cáscara (CLI + demo) sobre el mismo paquete que produjo los números. Si la demo y el artículo discrepan, es un `tipo/bug` de `prioridad/alta`.
10. **No inventes referencias.** Cada entrada de `paper/refs.bib` lleva su DOI verificado. Un DOI inventado se detecta en revisión y hunde el artículo.

## Idioma

- **Todo lo que lee una persona va en español con tildes correctas**: README, `prompt.md`, issues, mensajes de commit, documentación, comentarios de alto nivel.
- **Los identificadores del código van en inglés** y coherentes con la notación del artículo (`train_step`, `macro_f1`, `AblationConfig`). No se traducen.
- El manuscrito de `paper/` va en el idioma que exija el journal objetivo (normalmente inglés).

## Flujo de trabajo

**Nunca commitees directamente sobre `main`.** Una rama por historia:

```text
feat/PB-07      una historia del Product Backlog
exp/PB-09-lr    una variante experimental de una historia
fix/PB-12       corregir un resultado o un cálculo mal hecho
docs/PB-18      redacción del artículo o de la documentación
```

**Mensaje de commit** — plantilla en `.gitmessage` (`git config commit.template .gitmessage`):

```text
exp(PB-09): entrena el baseline con 3 semillas y registra los runs

Rol: MOD
Sprint: 4
Refs: #9
```

Tipos: `feat` · `exp` · `data` · `model` · `eval` · `paper` · `fix` · `docs` · `test` · `refactor` · `chore`.

**Pull Request** con `Closes #<issue>` y la lista de la *Definition of Done*. El tablero Kanban (`Product backlog` → `To Do` → `In Progress` → `In Review` → `Done`) refleja dónde está cada Issue.

> [!IMPORTANT]
> **Los commits de este repositorio llevan solo la autoría de quien investiga.** No añadas trailers de coautoría ni cabeceras de sesión de la herramienta con la que trabajes: en un repositorio de investigación la autoría tiene consecuencias académicas, y una dirección de correo de un asistente queda asociada a una cuenta que aparece en el panel de contribuidores y no se quita reescribiendo la historia. El nombre de la herramienta no debe aparecer en ningún commit: ni en el mensaje, ni en un trailer, ni en las rutas. Esta regla **prevalece sobre la guía general de atribución**.

## Vocabulario: etiquetas, sprints y backlog

Cada Issue lleva **cuatro etiquetas como mínimo**: un `tipo/`, un `sprint-N`, una fase y un `rol/`. Usa exactamente estos nombres — no inventes etiquetas nuevas sin decirlo.

**Roles** (son *sombreros*, no personas: una sola persona puede llevarlos casi todos)

| Etiqueta | Rol | Responde a |
|---|---|---|
| `rol/ip` | Investigador Principal (IP) | ¿Respondemos la pregunta correcta y llegamos al 7 de diciembre? |
| `rol/lit` | Literatura y Redacción (LIT) | ¿Ya está hecho, y está bien contado? |
| `rol/dat` | Datos y Protocolo (DAT) | ¿El dato aguanta la comparación? |
| `rol/mod` | Método y Experimentos (MOD) | ¿El método aporta algo, y por qué? |
| `rol/rep` | Reproducibilidad y Evidencia (REP) | ¿Es cierto, y otra persona lo puede volver a obtener? |

**Sprints y fases** (CRISP-DM adaptado; un sprint = una fase = un milestone)

| Etiqueta | Fase | Deriva de | Entrega |
|---|---|---|---|
| `sprint-1` + `comprension-investigacion` | Comprensión de la investigación | Business Understanding | lun 21-set |
| `sprint-2` + `comprension-datos` | Comprensión de los datos | Data Understanding | lun 05-oct |
| `sprint-3` + `preparacion-datos` | Preparación de los datos | Data Preparation | lun 19-oct |
| `sprint-4` + `modelado` | Modelado y experimentación | Modeling | lun 09-nov |
| `sprint-5` + `evaluacion` | Evaluación | Evaluation | lun 23-nov |
| `sprint-6` + `difusion` | Difusión: prototipo y artículo | Deployment | lun 07-dic |

**Tipo de trabajo:** `tipo/historia` · `tipo/tarea` · `tipo/experimento` · `tipo/bug` · `tipo/docs` · `tipo/test`

**Banderas propias de investigación** — úsalas, son la mitad del valor del tablero:

| Etiqueta | Cuándo |
|---|---|
| `blocked` | Bloqueada por algo externo: acceso a datos, licencia, permiso ético o un tercero |
| `espera-hprc` | Esperando cola, cuota o resultado de un job en GICC HPRC (Slurm). Planificar con antelación. |
| `contribucion-cientifica` | Sustenta la contribución declarada del artículo; sustituye al business-value aplicado |
| `amenaza-validez` | Amenaza a la validez: fuga, contaminación, comparación injusta o sobreajuste al test |
| `resultado-negativo` | Experimento que no confirma la hipótesis. Se conserva: también es resultado |
| `etica-licencias` | Requiere revisar licencia de datos o modelos, consentimiento, datos personales o uso responsable. |
| `deuda-experimental` | Atajo consciente (menos semillas, subconjunto, sin barrido) que hay que saldar |
| `dod-verificado` | Definition of Done verificada por quien revisa, no por quien desarrolla. Exigida en «Done» |

El **Product Backlog** son las historias `PB-01`…`PB-34`, que ya existen como Issues. Al trabajar una historia, complétala (descripción y criterios de aceptación propios del proyecto) en vez de dejar el texto genérico de la plantilla.

## Dónde está cada cosa

| Ruta | Qué |
|---|---|
| `src/proyecto/` | Paquete del proyecto. **Toda la lógica vive aquí**, no en los cuadernos |
| `configs/` | Parametrización en YAML. Ninguna constante experimental en el código |
| `experiments/registry/` | Un JSON por corrida: la fuente de verdad de toda cifra del artículo |
| `results/tables/` | Tablas generadas por script; nunca se editan a mano |
| `results/figures/` | Figuras generadas por script |
| `results/stats/` | Pruebas de significancia, valores p, tamaños de efecto e intervalos |
| `paper/` | Manuscrito LaTeX, bibliografía y carta de presentación |
| `prototype/` | Segundo entregable: CLI y demo que importan `src/` |
| `scripts/hprc/` | Plantillas Slurm para GICC HPRC |
| `notebooks/` | Exploración y análisis. **Nunca** fuente de verdad de una cifra |
| `docs/` | Pregunta de investigación, protocolo congelado, fichas, veredicto y bitácora |
| `docs/decisiones/` | Registros de decisión (ADR), uno por decisión de investigación |
| `tests/` | Pruebas de datos, fugas, métricas, estadística y reproducibilidad |

## Comandos

```bash
make setup       # entorno reproducible + paquete instalable
make data        # reconstruye los datos y las particiones (hashes idénticos)
make train       # entrena con configs/train.yaml
make eval        # evalúa las corridas registradas y calcula significancia
make tablas      # regenera TODAS las tablas del artículo
make figuras     # regenera TODAS las figuras del artículo
make repro       # reproduce de cero los números del artículo
make test        # suite de pruebas
make paper       # compila el manuscrito

# Cómputo en el clúster Slurm del GICC
hprc submit scripts/hprc/train.sbatch    # devuelve el job id → anótalo en el Issue
hprc status <job-id>

# Gestión
gh issue list --label sprint-1 --state open
gh pr create --fill --body "Closes #7"
```

## Cómputo: GICC HPRC

Los entrenamientos van al clúster **Slurm** del GICC (`chicken`, `falcon`, `eagle`) vía [hprc.gicc.ai](https://hprc.gicc.ai) o el CLI `hprc` (PyPI). La cuenta viene de `usuarios.gicc.ai`.

- Los `.sbatch` viven en `scripts/hprc/` y se versionan.
- El **job id** se anota en el Issue de la historia y en el registro de la corrida.
- Los checkpoints deben ser **reanudables**: el clúster puede desalojar un job.
- Si algo espera cola o cuota, etiqueta el Issue `espera-hprc` en vez de dejarlo mudo.

## Qué no hacer sin preguntar

- Reescribir la historia de Git, forzar push, borrar ramas remotas o cerrar Issues en masa.
- Cambiar **etiquetas, milestones o las columnas del tablero**: vienen de la plantilla [`giccai/proyecto_base`](https://github.com/giccai/proyecto_base) y se mantienen con su maquinaria de aprovisionamiento, no a mano.
- Modificar el protocolo congelado, las particiones o las semillas de un experimento ya reportado.
- Publicar datos, checkpoints o un preprint: hay licencias, ética y política de la revista de por medio (`LICENSE-DATA`, `docs/ficha_datos.md`).
- Añadir dependencias pesadas sin fijarlas en `environment.yml` y `pyproject.toml`.

---

<sub>Plantilla: [`giccai/proyecto_base`](https://github.com/giccai/proyecto_base) · guía para personas: [`prompt.md`](prompt.md) · clúster: [GICC HPRC](https://hprc.gicc.ai)</sub>
