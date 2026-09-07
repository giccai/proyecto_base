# Cómo gestionar tu proyecto de investigación en `proyecto_base`

> Guía para cualquier integrante del **GICC** que arranque un proyecto de investigación en IA a partir de este repositorio base. Léela entera una vez; después vuelve a la sección que necesites.

**Lo que tienes que entregar el lun 07-dic-2026:**

1. 📄 Un **artículo científico** listo para enviar a un journal indizado en **SCOPUS**.
2. 🐍 Un **prototipo en Python** que reproduzca exactamente los resultados del artículo.

Todo lo demás —las etiquetas, los sprints, el Product Backlog, el tablero— existe para que esos dos entregables lleguen a tiempo y sean defendibles.

---

## Contenido

1. [Las tres piezas: Issues, etiquetas y tablero](#1-las-tres-piezas-issues-etiquetas-y-tablero)
2. [Las etiquetas, una por una](#2-las-etiquetas-una-por-una)
3. [Los sprints y sus milestones](#3-los-sprints-y-sus-milestones)
4. [El Product Backlog](#4-el-product-backlog)
5. [El ciclo de trabajo, paso a paso](#5-el-ciclo-de-trabajo-paso-a-paso)
6. [Definition of Done](#6-definition-of-done)
7. [Los roles: sombreros, no personas](#7-los-roles-sombreros-no-personas)
8. [Reproducibilidad: la regla que no se negocia](#8-reproducibilidad-la-regla-que-no-se-negocia)
9. [Arrancar un proyecto nuevo desde esta plantilla](#9-arrancar-un-proyecto-nuevo-desde-esta-plantilla)
10. [Errores comunes](#10-errores-comunes)
11. [Chuleta de comandos](#11-chuleta-de-comandos)

---

## 1. Las tres piezas: Issues, etiquetas y tablero

| Pieza | Dónde vive | Para qué sirve |
|---|---|---|
| **Issues** | [`giccai/proyecto_base/issues`](https://github.com/giccai/proyecto_base/issues) | Cada unidad de trabajo. Las 34 historias `PB-XX` del Product Backlog ya están creadas |
| **Etiquetas** | [`/labels`](https://github.com/giccai/proyecto_base/labels) | Responden *quién*, *cuándo*, *qué fase* y *qué tipo de trabajo* es cada Issue. Son 45 y ninguna es decorativa |
| **Milestones** | [`/milestones`](https://github.com/giccai/proyecto_base/milestones) | Un milestone por sprint, con su fecha de entrega y la lista de historias |
| **Tablero Kanban** | [GitHub Project](https://github.com/orgs/giccai/projects) | Dónde está cada Issue *ahora mismo*: `Product backlog` → `To Do` → `In Progress` → `In Review` → `Done` |

> [!TIP]
> **Regla de oro: si no está en un Issue, no existe.** Un experimento que corriste «rápido para probar» y no anotaste en ningún sitio es trabajo que tendrás que repetir cuando el revisor del journal pregunte.

## 2. Las etiquetas, una por una

Cada Issue lleva **como mínimo cuatro etiquetas**: un `tipo/`, un `sprint-N`, una fase y un `rol/`.

### 2.1. `rol/…` — quién responde por esto

| Etiqueta | Rol | Responde a |
|---|---|---|
| `rol/ip` | Investigador Principal (IP) | ¿Respondemos la pregunta correcta y llegamos al 7 de diciembre? |
| `rol/lit` | Literatura y Redacción (LIT) | ¿Ya está hecho, y está bien contado? |
| `rol/dat` | Datos y Protocolo (DAT) | ¿El dato aguanta la comparación? |
| `rol/mod` | Método y Experimentos (MOD) | ¿El método aporta algo, y por qué? |
| `rol/rep` | Reproducibilidad y Evidencia (REP) | ¿Es cierto, y otra persona lo puede volver a obtener? |

### 2.2. `sprint-N` — cuándo se entrega

| Etiqueta | Sprint | Entrega |
|---|---|---|
| `sprint-1` | Comprensión de la investigación | lun 21-set-2026 |
| `sprint-2` | Comprensión de los datos | lun 05-oct-2026 |
| `sprint-3` | Preparación de los datos | lun 19-oct-2026 |
| `sprint-4` | Modelado y experimentación | lun 09-nov-2026 |
| `sprint-5` | Evaluación | lun 23-nov-2026 |
| `sprint-6` | Difusión: prototipo y artículo | lun 07-dic-2026 |

### 2.3. Fases — en qué etapa del método estás

Son las fases de **CRISP-DM adaptadas a un proyecto de investigación**:

| Etiqueta | Fase | Deriva de | Qué significa |
|---|---|---|---|
| `comprension-investigacion` | Comprensión de la investigación | Business Understanding | Pregunta de investigación falsable, hipótesis operacionalizadas, revisión de la literatura, baselines de referencia, criterios de éxito científico y elección del journal SCOPUS objetivo. |
| `comprension-datos` | Comprensión de los datos | Data Understanding | Selección del conjunto de datos o benchmark que hace legítima la comparación, caracterización, auditoría de licencias, ética, sesgos y contaminación, y congelamiento del protocolo experimental. |
| `preparacion-datos` | Preparación de los datos | Data Preparation | Pipeline reproducible de preparación, particiones congeladas y hasheadas, versionado con DVC, guardias contra fugas de información y andamiaje de experimentos. |
| `modelado` | Modelado y experimentación | Modeling | Baselines de la literatura reproducidos bajo nuestro protocolo, método propuesto tras la misma interfaz, barrido con presupuesto de cómputo igualado y estudios de ablación en GICC HPRC. |
| `evaluacion` | Evaluación | Evaluation | Comparación con prueba de significancia estadística y tamaño de efecto, análisis de errores y sensibilidad, veredicto sobre las hipótesis y amenazas a la validez declaradas. |
| `difusion` | Difusión: prototipo y artículo | Deployment | Liberación del prototipo Python instalable con su demo, depósito de artefactos en Zenodo con DOI y sumisión del manuscrito al journal SCOPUS: aquí el resultado llega a quien lo usa, que es la comunidad científica. |

### 2.4. El resto

**`tipo/…` — qué clase de trabajo es**

| Etiqueta | Para qué |
|---|---|
| `tipo/historia` | Historia del Product Backlog (PB-XX): unidad de valor con criterios de aceptación propios. |
| `tipo/tarea` | Sub-tarea operativa que desglosa una historia PB-XX y cierra dentro del mismo sprint. |
| `tipo/experimento` | Corrida o barrido con hipótesis declarada, configuración versionada y resultado esperado escrito antes de ejecutar. |
| `tipo/bug` | Defecto en el código, en el pipeline de datos o en el cálculo de una métrica que produce un resultado incorrecto. |
| `tipo/docs` | Documentación del repositorio: protocolo, bitácora, ficha de datos, tarjeta de modelo, README y secciones del manuscrito. |
| `tipo/test` | Prueba automatizada de datos, fugas, métricas, estadística, reproducibilidad o prototipo. |

**`entrega/…` — qué artefacto produce**

| Etiqueta | Para qué |
|---|---|
| `entrega/estado-del-arte` | Revisión de literatura: cadenas de búsqueda, criterios de cribado, matriz comparativa y bibliografía. |
| `entrega/protocolo` | Protocolo experimental congelado y fechado: particiones, métricas, semillas, corridas y prueba estadística. |
| `entrega/datos` | Pipeline de datos versionado con DVC, particiones congeladas con hash y ficha de datos. |
| `entrega/codigo` | Código de biblioteca en `src/`: datos, modelos, entrenamiento, evaluación y análisis. Nada de lógica encerrada en cuadernos. |
| `entrega/experimento-hprc` | Job ejecutado en GICC HPRC (Slurm) con su script versionado, su registro y su corrida trazable. |
| `entrega/resultados` | Tabla o figura del artículo generada por script desde el registro de experimentos, nunca escrita a mano. |
| `entrega/tests` | Suite de pruebas automatizadas en verde: datos, fugas, métricas, reproducibilidad y prototipo. |
| `entrega/paper` | Sección, versión compilada o formato final del manuscrito destinado al journal SCOPUS. |
| `entrega/prototipo` | Prototipo Python instalable con `pip install .`, con su comando de consola y su demo reproducible. |
| `entrega/doi-zenodo` | Depósito en Zenodo con DOI de código, datos derivados o checkpoints, y su cita en el manuscrito. |
| `entrega/docs` | Documentación del repositorio: README, `prompt.md`, guía de uso, bitácora y registros de decisión. |

**`prioridad/…` — cuánto duele si no se hace**

| Etiqueta | Para qué |
|---|---|
| `prioridad/alta` | Bloquea la contribución declarada o la fecha del 7 de diciembre. Se atiende primero. |
| `prioridad/media` | Necesaria para el sprint, pero admite reordenarse dentro de la quincena. |
| `prioridad/baja` | Mejora deseable; es lo primero que se recorta si el sprint se estrecha. |

**Banderas sueltas**

| Etiqueta | Para qué |
|---|---|
| `blocked` | Bloqueada por una dependencia externa: acceso a datos, licencia, permiso ético o respuesta de un tercero. |
| `espera-hprc` | Esperando cola, cuota o resultado de un job en GICC HPRC (Slurm). Planificar con antelación. |
| `contribucion-cientifica` | Sustenta directamente la contribución declarada del artículo. Sustituye al `business-value` de los proyectos aplicados. |
| `amenaza-validez` | Detecta o mitiga una amenaza a la validez: fuga entre particiones, contaminación, comparación injusta o sobreajuste al conjunto de prueba. |
| `resultado-negativo` | Experimento que no confirma la hipótesis. Se documenta y se conserva: en investigación también es resultado. |
| `etica-licencias` | Requiere revisar licencia de datos o modelos, consentimiento, datos personales o uso responsable. |
| `deuda-experimental` | Atajo consciente (menos semillas, subconjunto, sin barrido) que hay que saldar antes de cerrar la experimentación. |
| `dod-verificado` | Definition of Done verificada por quien revisa, nunca por quien desarrolla. Requisito para mover el issue a «Done». |

## 3. Los sprints y sus milestones

El proyecto son **6 sprints** que terminan el **lun 07-dic-2026**. Cada sprint es un milestone del repositorio: al abrirlo ves cuántas historias quedan y cuánto falta para la fecha.

| # | Sprint | Inicio | Entrega | Historias |
|:-:|---|---|---|---|
| 1 | Comprensión de la investigación | lun 07-set | **lun 21-set** | `PB-01`…`PB-06` |
| 2 | Comprensión de los datos | lun 21-set | **lun 05-oct** | `PB-07`…`PB-11` |
| 3 | Preparación de los datos | lun 05-oct | **lun 19-oct** | `PB-12`…`PB-16` |
| 4 | Modelado y experimentación | lun 19-oct | **lun 09-nov** | `PB-17`…`PB-23` |
| 5 | Evaluación | lun 09-nov | **lun 23-nov** | `PB-24`…`PB-29` |
| 6 | Difusión: prototipo y artículo | lun 23-nov | **lun 07-dic** | `PB-30`…`PB-34` |

<details>
<summary><b>Sprint 1 · Comprensión de la investigación</b> — qué tiene que estar listo</summary>

**Meta.** Convertir una intuición de investigación en una pregunta falsable con hipótesis medibles, respaldada por una revisión de la literatura que muestre el hueco, con el journal SCOPUS objetivo elegido, los conjuntos de datos candidatos identificados con su licencia, y el repositorio reproducible corriendo de punta a punta, incluido un primer job real en GICC HPRC. En este sprint no se entrena todavía ningún modelo definitivo.

| Rol | Entregable del sprint |
|---|---|
| **IP** | `docs/pregunta_investigacion.md`: pregunta principal, hipótesis falsables con su magnitud mínima relevante, alcance, contribución declarada y lo que queda fuera; tablero con los 6 milestones y las 34 historias en «Product backlog» |
| **LIT** | `docs/estado_del_arte.md` con cadenas de búsqueda y criterios de cribado, `results/tables/related_work.csv`, `paper/refs.bib` con al menos 20 referencias y `paper/main.tex` compilando en la plantilla del journal elegido |
| **DAT** | `docs/datos_candidatos.md`: al menos dos conjuntos de datos con tamaño, licencia, vía de acceso, artículos de la literatura que los usan y decisión escrita sobre revisión ética |
| **MOD** | `docs/plan_computo.md` con la estimación de GPU-horas por corrida y evidencia de un job real ejecutado en GICC HPRC: identificador, nodo, registro de salida y checkpoint recuperable |
| **REP** | Repositorio instalable con `pip install -e .`, entorno con versiones fijadas, `src/proyecto/seed.py`, `Makefile` e integración continua en verde |

</details>
<details>
<summary><b>Sprint 2 · Comprensión de los datos</b> — qué tiene que estar listo</summary>

**Meta.** Elegir el conjunto de datos que hace legítima la comparación con la literatura, auditarlo en licencia, procedencia, sesgos y contaminación, y congelar el protocolo experimental antes de modelar: particiones, métricas, semillas y prueba estadística. Al cerrar el sprint existe una corrida completa de un baseline sencillo que demuestra que el protocolo es ejecutable de extremo a extremo.

| Rol | Entregable del sprint |
|---|---|
| **IP** | `docs/decisiones/ADR-002-datos.md` con la decisión sobre los datos y el backlog podado para los sprints 3 a 6, con acta de lo que se decidió no hacer |
| **LIT** | `paper/sections/02_related_work.tex` y la introducción con el hueco de la literatura ya argumentado |
| **DAT** | `docs/ficha_datos.md` y `notebooks/01_characterization.ipynb`: procedencia, licencia, composición, sesgos, estadísticas por partición y comprobación de duplicados y solapamientos |
| **MOD** | Baseline trivial y baseline sencillo de la literatura corriendo de extremo a extremo, con su corrida registrada y la brecha frente a la cifra publicada explicada |
| **REP** | `docs/protocolo_experimental.md` congelado, fechado y marcado con una etiqueta de Git: particiones, métrica primaria y secundarias, semillas y prueba estadística prevista |

</details>
<details>
<summary><b>Sprint 3 · Preparación de los datos</b> — qué tiene que estar listo</summary>

**Meta.** Dejar el conjunto de trabajo reconstruible desde cero con un solo comando, versionado y con las particiones congeladas y hasheadas; blindar el pipeline contra fugas de información con pruebas automatizadas; y dejar listo el andamiaje de experimentos: interfaz común de modelo, registro de corridas y checkpoints reanudables tras una preempción del clúster.

| Rol | Entregable del sprint |
|---|---|
| **IP** | Presupuesto de cómputo aprobado por experimento y por sprint, y replanificación del backlog si el sprint anterior desbordó |
| **LIT** | `paper/sections/03_data.tex` y `04_setup.tex`, más las tablas y figuras del artículo maquetadas con sus encabezados y leyendas definitivos |
| **DAT** | `dvc.yaml` con las etapas de preparación, `data/splits.json` con un hash por partición y `make data` reconstruyendo el conjunto con hashes idénticos |
| **MOD** | Interfaz común de modelo en `src/proyecto/models/base.py` y `docs/paridad_entradas.md` con la prueba de que todos los métodos ven exactamente los mismos datos |
| **REP** | Registro de experimentos operativo (configuración, semilla, commit, entorno y nodo), checkpoints reanudables verificados y `tests/test_data.py` y `tests/test_leakage.py` en verde |

</details>
<details>
<summary><b>Sprint 4 · Modelado y experimentación</b> — qué tiene que estar listo</summary>

**Meta.** Reproducir los baselines de la literatura bajo el protocolo congelado, implementar el método propuesto tras la misma interfaz, ejecutar el barrido con un presupuesto de cómputo igualado para todos los métodos y aislar la contribución de cada componente con estudios de ablación. Dura tres semanas porque la cola de GICC HPRC es lo único del proyecto cuyo tiempo no depende del equipo.

| Rol | Entregable del sprint |
|---|---|
| **IP** | `docs/plan_experimentos.md` cerrado: corridas que entran al artículo, coste en GPU-horas, la afirmación que sostiene cada una y el criterio de parada escrito antes de mirar resultados |
| **LIT** | `paper/sections/05_method.tex` con la notación definitiva del artículo y la figura de arquitectura con fuente editable en el repositorio |
| **DAT** | Variantes de datos usadas en las ablaciones, versionadas y descritas, y verificación de que la comparación con la literatura es equivalente |
| **MOD** | `src/proyecto/models/` con los baselines de la literatura reproducidos y el método propuesto, barrido con presupuesto igualado y estudios de ablación ejecutados |
| **REP** | `results/tables/main.csv` y `results/tables/ablation.csv` generadas por script, con al menos tres semillas por configuración final y todas las corridas registradas |

</details>
<details>
<summary><b>Sprint 5 · Evaluación</b> — qué tiene que estar listo</summary>

**Meta.** Pasar de tener números a tener evidencia: prueba de significancia, tamaño de efecto e intervalos de confianza; análisis de errores y sensibilidad a la semilla; veredicto explícito sobre cada hipótesis y amenazas a la validez declaradas; y manuscrito completo compilado y revisado con la rúbrica de un revisor de journal.

| Rol | Entregable del sprint |
|---|---|
| **IP** | `docs/veredicto.md`, `docs/amenazas_validez.md` y `docs/revision_interna.md` con la rúbrica de revisor aplicada y las correcciones abiertas como issues priorizados |
| **LIT** | `paper/main.pdf` completo: resultados, discusión, limitaciones, conclusiones, resumen, título definitivo y palabras clave |
| **DAT** | Verificación de comparabilidad con la literatura: mismas particiones, misma métrica y mismo preprocesamiento, o la diferencia declarada por escrito |
| **MOD** | `notebooks/02_error_analysis.ipynb` con la taxonomía de fallos, las métricas desagregadas por estrato y la sensibilidad a la semilla |
| **REP** | `results/stats/` con prueba, valor p, tamaño de efecto e intervalos; regeneración en frío de todas las tablas y figuras y `docs/reproducibilidad.md` |

</details>
<details>
<summary><b>Sprint 6 · Difusión: prototipo y artículo</b> — qué tiene que estar listo</summary>

**Meta.** Cerrar los dos entregables finales: el prototipo Python instalable con su demo, verificado en máquina limpia y liberado con DOI, y el artículo formateado según las normas de la revista, con su carta de presentación, sometido al journal SCOPUS y con el acuse de recibo registrado. El proyecto termina con una sumisión, no con una publicación: la revisión por pares excede la ventana de trece semanas.

| Rol | Entregable del sprint |
|---|---|
| **IP** | Comprobante de sumisión en `docs/sumision.md`, orden de autoría y contribuciones acordados por escrito, y `docs/retrospectiva.md` con el plan de respuesta a revisores |
| **LIT** | Manuscrito en la plantilla del journal, `paper/cover_letter.md`, declaraciones exigidas por la revista y preprint depositado si su política lo permite |
| **DAT** | Depósito en Zenodo con DOI citado en el manuscrito, en el README y en `CITATION.cff`, con `LICENSE-DATA` compatible con las fuentes originales |
| **MOD** | Demo que reproduce el resultado principal en menos de cinco minutos, sin GPU y sin acceso al clúster, con checkpoint pequeño y datos de ejemplo |
| **REP** | `pip install .` verificado en máquina limpia, comando de consola del prototipo respondiendo, etiqueta `v1.0.0`, `CHANGELOG.md` y `CITATION.cff` |

</details>

> [!WARNING]
> **El sprint se cierra con o sin ti.** Si una historia no llega, se mueve al sprint siguiente **con una nota en el Issue explicando por qué**. Lo que no se puede es dejarla en `In Progress` para siempre: eso esconde el problema hasta que ya no hay tiempo de arreglarlo.

## 4. El Product Backlog

Las **34 historias** `PB-01`…`PB-34` cubren el proyecto de punta a punta: de la pregunta de investigación hasta el artículo enviado y el prototipo publicado. Ya existen como Issues, en la columna **Product backlog** del tablero.

| ID | Historia | Fase | Sprint | Rol sugerido |
|---|---|---|:-:|:-:|
| `PB-01` | Formular la pregunta de investigación, las hipótesis y los criterios de éxito | Comprensión de la investigación | 1 | `IP` |
| `PB-02` | Revisar la literatura y construir la matriz comparativa de trabajos previos | Comprensión de la investigación | 1 | `LIT` |
| `PB-03` | Elegir el journal SCOPUS objetivo y abrir el manuscrito en su plantilla | Comprensión de la investigación | 1 | `LIT` |
| `PB-04` | Inventariar los datos candidatos y verificar licencias, acceso y ética | Comprensión de la investigación | 1 | `DAT` |
| `PB-05` | Levantar el repositorio reproducible: estructura, entorno, semillas e integración continua | Comprensión de la investigación | 1 | `REP` |
| `PB-06` | Probar la viabilidad técnica en GICC HPRC y estimar el presupuesto de cómputo | Comprensión de la investigación | 1 | `MOD` |
| `PB-07` | Seleccionar el conjunto de datos principal y justificar la decisión | Comprensión de los datos | 2 | `DAT` |
| `PB-08` | Caracterizar los datos y redactar la ficha de datos | Comprensión de los datos | 2 | `DAT` |
| `PB-09` | Congelar el protocolo experimental antes de modelar | Comprensión de los datos | 2 | `REP` |
| `PB-10` | Reproducir de extremo a extremo un baseline sencillo de la literatura | Comprensión de los datos | 2 | `MOD` |
| `PB-11` | Redactar «Trabajos relacionados» y el posicionamiento del manuscrito | Comprensión de los datos | 2 | `LIT` |
| `PB-12` | Construir el pipeline de preparación reproducible y versionarlo | Preparación de los datos | 3 | `DAT` |
| `PB-13` | Congelar las particiones y blindar el pipeline contra fugas de información | Preparación de los datos | 3 | `DAT` |
| `PB-14` | Instrumentar el registro de experimentos y los checkpoints reanudables | Preparación de los datos | 3 | `REP` |
| `PB-15` | Definir la interfaz común de modelo y garantizar la paridad de entradas | Preparación de los datos | 3 | `MOD` |
| `PB-16` | Redactar la sección de datos y de configuración experimental | Preparación de los datos | 3 | `LIT` |
| `PB-17` | Cerrar el plan de experimentos que entra al artículo | Modelado y experimentación | 4 | `IP` |
| `PB-18` | Reproducir los baselines de la literatura bajo el protocolo congelado | Modelado y experimentación | 4 | `MOD` |
| `PB-19` | Implementar el método propuesto y entrenarlo de extremo a extremo | Modelado y experimentación | 4 | `MOD` |
| `PB-20` | Ejecutar el barrido de hiperparámetros con presupuesto igualado | Modelado y experimentación | 4 | `MOD` |
| `PB-21` | Diseñar y ejecutar los estudios de ablación | Modelado y experimentación | 4 | `MOD` |
| `PB-22` | Repetir con varias semillas y generar las tablas y figuras por script | Modelado y experimentación | 4 | `REP` |
| `PB-23` | Redactar la sección de método con la notación definitiva | Modelado y experimentación | 4 | `LIT` |
| `PB-24` | Comparar contra los baselines con significancia estadística y tamaño de efecto | Evaluación | 5 | `REP` |
| `PB-25` | Analizar los errores, la sensibilidad y los casos de fallo | Evaluación | 5 | `MOD` |
| `PB-26` | Emitir el veredicto sobre las hipótesis y declarar las amenazas a la validez | Evaluación | 5 | `IP` |
| `PB-27` | Completar el manuscrito: resultados, discusión, limitaciones y conclusiones | Evaluación | 5 | `LIT` |
| `PB-28` | Regenerar en frío las tablas y figuras y auditar la trazabilidad | Evaluación | 5 | `REP` |
| `PB-29` | Revisar el manuscrito y el código con la rúbrica de revisor de journal | Evaluación | 5 | `IP` |
| `PB-30` | Empaquetar y liberar el prototipo Python instalable | Difusión: prototipo y artículo | 6 | `REP` |
| `PB-31` | Construir la demo reproducible del resultado principal | Difusión: prototipo y artículo | 6 | `MOD` |
| `PB-32` | Depositar datos, derivados y checkpoints en Zenodo con DOI | Difusión: prototipo y artículo | 6 | `DAT` |
| `PB-33` | Ajustar el manuscrito al formato del journal y preparar la carta de presentación | Difusión: prototipo y artículo | 6 | `LIT` |
| `PB-34` | Someter el artículo, registrar el acuse y cerrar el proyecto | Difusión: prototipo y artículo | 6 | `IP` |

**Qué haces con una historia cuando la planificas**

1. **Complétala.** El Issue viene con la descripción a medio hacer a propósito: escribe qué significa esa historia *en tu proyecto* (tu dataset, tu arquitectura, tu métrica).
2. **Afina los criterios de aceptación.** Los que trae son el mínimo común; los tuyos deben ser verificables («la tabla 2 del artículo se regenera con `make tables`»), no aspiracionales («buen rendimiento»).
3. **Pártela si es grande.** Si no cabe en un sprint, crea sub-tareas con la plantilla *Tarea técnica* y enlázalas a la historia.
4. **Asígnala y muévela a `To Do`.**

> [!NOTE]
> **El backlog es un punto de partida, no un contrato.** Añade historias `PB-XX` propias de tu proyecto (sigue la numeración) y cierra como *no aplica* las que no tengan sentido en tu línea de investigación —pero **deja escrito en el Issue por qué**. Un backlog al que nadie le movió nada suele significar que nadie lo leyó.

## 5. El ciclo de trabajo, paso a paso

```text
  Product backlog  ──▶  To Do  ──▶  In Progress  ──▶  In Review  ──▶  Done
```

| Paso | Qué haces | Dónde queda constancia |
|:-:|---|---|
| 1 | Planificas el sprint: eliges historias, las completas y las asignas | Issues → `To Do` |
| 2 | Creas la rama `feat/PB-XX` y empiezas | Issue → `In Progress` |
| 3 | Commiteas con la plantilla (`tipo(PB-XX): resumen` + `Rol:` `Sprint:` `Refs:`) | Historial de Git |
| 4 | Abres el Pull Request con `Closes #<issue>` | Issue → `In Review` |
| 5 | Alguien revisa; se verifica la *Definition of Done* | Revisión del PR |
| 6 | Mergeas a `main` | Issue → `Done`, se cierra solo |

**Nombres de rama**

```text
feat/PB-07      una historia del backlog
exp/PB-09-lr    una variante experimental de una historia
fix/PB-12       corregir un resultado o un cálculo mal hecho
docs/PB-18      redacción del artículo o de la documentación
```

> [!TIP]
> **Trabajas solo y te parece burocracia.** No lo es: el historial de Issues y PRs es lo que te permitirá, tres meses después y con el revisor 2 preguntando, reconstruir **por qué** elegiste ese *learning rate* y **qué** experimento lo justificaba. La alternativa es volver a correrlo todo.

## 6. Definition of Done

Una historia está **Done** cuando se cumple todo esto. No es negociable: es lo que separa un resultado publicable de un número en una captura de pantalla.

- [ ] Rama `feat/PB-XX` con Pull Request que declara `Closes #<issue>`, revisado y mergeado a `main`. Nunca se trabaja directamente sobre `main`.
- [ ] Revisado por alguien distinto del autor; en equipos de una persona, autorrevisión en sesión separada y fechada en `docs/bitacora.md`, con el Pull Request abierto al menos doce horas.
- [ ] El entorno se reconstruye con versiones fijadas y todo lo que la historia produce se regenera con un comando documentado (`make <objetivo>`).
- [ ] Semillas fijadas y declaradas: ningún número aleatorio sin semilla.
- [ ] Datos, checkpoints y artefactos pesados versionados con DVC; ningún binario ni CSV en el diff de Git.
- [ ] Si la historia lanzó cómputo, la corrida queda registrada con identificador, configuración, semilla, commit, entorno y nodo de GICC HPRC.
- [ ] Toda cifra del entregable es trazable a su corrida; ninguna tabla ni figura del manuscrito se escribe a mano, salvo las cifras citadas de la literatura, que llevan su cita al lado.
- [ ] Ninguna comparación se declara «mejor» sin prueba estadística y tamaño de efecto; las diferencias no significativas se enuncian como tales.
- [ ] Los resultados que contradicen la hipótesis se conservan, se documentan y se etiquetan `resultado-negativo`: borrar un experimento fallido es una falta metodológica.
- [ ] Existe al menos una prueba automatizada, nueva o actualizada, que fallaría si esta historia se rompiera.
- [ ] Si la historia produce texto del artículo, está en `paper/`, compila sin errores y sus referencias están en `paper/refs.bib` con DOI verificado.
- [ ] La documentación afectada quedó actualizada en el mismo Pull Request, en español con tildes correctas; los identificadores del código, en inglés y coherentes con la notación del artículo.
- [ ] El issue tiene sus etiquetas completas (`tipo/*`, `sprint-N`, fase y `rol/*`), su milestone, está enlazado a su Pull Request y se movió a «Done» con `dod-verificado` puesta por quien revisa.

## 7. Los roles: sombreros, no personas

En el GICC los equipos son pequeños y **una sola persona puede asumir casi todos los roles**. El rol no dice quién eres, dice **qué pregunta estás respondiendo ahora mismo** — y por eso sigue siendo útil aunque el equipo sea de una persona: te obliga a cambiar de sombrero y mirar tu propio trabajo con otros ojos.

| Rol | Pregunta | Foco |
|---|---|---|
| **IP** · Investigador Principal | *¿Respondemos la pregunta correcta y llegamos al 7 de diciembre?* | Pregunta de investigación, alcance, backlog y tablero, plan de experimentos, veredicto sobre las hipótesis, autoría y sumisión |
| **LIT** · Literatura y Redacción | *¿Ya está hecho, y está bien contado?* | Revisión de literatura, posicionamiento, journal objetivo, manuscrito, figuras del artículo y bibliografía |
| **DAT** · Datos y Protocolo | *¿El dato aguanta la comparación?* | Benchmarks, licencias y ética, caracterización, particiones congeladas, pipeline versionado y depósito de datos con DOI |
| **MOD** · Método y Experimentos | *¿El método aporta algo, y por qué?* | Baselines reproducidos, método propuesto, entrenamiento en GICC HPRC, barridos, ablaciones y demo |
| **REP** · Reproducibilidad y Evidencia | *¿Es cierto, y otra persona lo puede volver a obtener?* | Entorno y semillas, protocolo de evaluación, registro de experimentos, estadística, tablas por script, pruebas y prototipo Python |

Declara en la tabla del `README.md` quién lleva cada rol en cada sprint. Si eres tú en todos, escríbelo igual: el asesor necesita saber a quién preguntarle.

## 8. Reproducibilidad: la regla que no se negocia

El prototipo no es «el código que usé»: es **la máquina que genera el artículo**. Si una cifra aparece en el paper, tiene que existir un comando que la vuelva a producir.

| Qué | Cómo |
|---|---|
| Entorno | `environment.yml` (Conda) con versiones fijadas; se recrea desde cero |
| Datos | Versionados (DVC o equivalente) y descritos en `docs/`; **nunca** un dataset dentro de Git |
| Semillas | Fijadas y registradas; los resultados se reportan sobre **varias semillas**, con media y desviación |
| Experimentos | Registrados en el gestor de experimentos (MLflow o equivalente): parámetros, métricas y artefactos |
| Cómputo | Jobs de Slurm en `scripts/*.sbatch`, lanzados con `hprc submit`; el job id se anota en el Issue |
| Tablas y figuras | Generadas por código desde los resultados guardados, nunca a mano |
| Publicación | Código y datos con **DOI** (Zenodo) citados en el artículo |

> [!CAUTION]
> **Un resultado que no se puede reproducir no es un resultado.** Si el número de la tabla 3 no sale otra vez al correr el pipeline, no discutas con el pipeline: el número está mal.

## 9. Arrancar un proyecto nuevo desde esta plantilla

```bash
# 1. Crea el repositorio a partir de la plantilla
gh repo create giccai/gicc-<proyecto> --template giccai/proyecto_base --private --clone
cd gicc-<proyecto>
git config commit.template .gitmessage

# 2. Entorno
conda env create -f environment.yml && conda activate gicc-proyecto

# 3. Personaliza el README: título, objetivo, equipo y tabla de roles por sprint
```

Las **etiquetas, los milestones, el tablero y las historias `PB-XX` no se copian** con la plantilla: se recrean con los scripts de aprovisionamiento del área `GICC_Proyectos` (`gicc_provisioning/`), editando `spec.json` con el nombre del repositorio nuevo y sus fechas:

```bash
python3 generate.py                          # README, prompt.md y plantillas
python3 provision.py repo labels milestones push
python3 projects.py create --template=1 settings status link backlog
```

Todos los pasos son **idempotentes**: se pueden volver a ejecutar sin romper nada.

## 10. Errores comunes

| Error | Por qué duele | Qué hacer |
|---|---|---|
| Commitear el dataset o los checkpoints | El repositorio se vuelve inmanejable y el historial es irreversible | Versionar los datos y los pesos fuera de Git; el `.gitignore` ya lo impide |
| Correr experimentos sin registrarlos | A las tres semanas no sabes qué configuración dio el mejor número | Un run por experimento en el gestor de experimentos, con el `PB-XX` en el nombre |
| Reportar una sola semilla | Un revisor lo detecta y tumba el artículo | Mínimo 3 semillas, media ± desviación, y test estadístico cuando compares |
| Comparar contra baselines mal entrenados | Es el fallo más común en revisión | Reproducir el baseline publicado y citar la cifra original |
| Dejar la escritura del artículo para el final | El paper se escribe con lo que sobra de tiempo y se nota | Cada sprint aporta su sección; el artículo crece con el proyecto |
| Trabajar directamente sobre `main` | Se pierde la trazabilidad entre resultado y código | Una rama por historia, siempre |
| Cerrar Issues sin verificar el DoD | Un «Done» que no está hecho | Repasar la lista antes de mergear |

## 11. Chuleta de comandos

```bash
# Ver el backlog del sprint en curso
gh issue list --label sprint-1 --state open

# Tomar una historia
gh issue edit 7 --add-assignee @me
git switch -c feat/PB-07

# Crear una sub-tarea
gh issue create --template tarea.yml

# Abrir el Pull Request
gh pr create --fill --body "Closes #7"

# Lanzar un experimento al clúster
hprc submit scripts/train.sbatch

# Ver el estado del sprint
gh issue list --milestone "Sprint 1 — Comprensión de la investigación"
```

---

<sub>Repositorio base del **GICC** · [`giccai/proyecto_base`](https://github.com/giccai/proyecto_base) · tablero: [proyecto_base](https://github.com/orgs/giccai/projects) · fin del proyecto: **lun 07-dic-2026**</sub>
