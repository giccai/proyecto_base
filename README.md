<div align="center">

# 🔬 Proyecto base de investigación en IA

**Repositorio base de los proyectos de investigación en IA del [GICC](https://github.com/giccai)**  
Inteligencia artificial, agnóstica a la tarea y al dominio: visión por computador, procesamiento de lenguaje natural, modelos de lenguaje, series de tiempo, grafos, aprendizaje por refuerzo o IA generativa.

[![Kanban](https://img.shields.io/badge/Kanban-GitHub_Projects-003C65?style=flat-square)](https://github.com/orgs/giccai/projects) [![Sprints](https://img.shields.io/badge/Sprints-6_milestones-0D47A1?style=flat-square)](https://github.com/giccai/proyecto_base/milestones) [![Etiquetas](https://img.shields.io/badge/Etiquetas-roles_·_sprints_·_fases-4A148C?style=flat-square)](https://github.com/giccai/proyecto_base/labels) [![Guía](https://img.shields.io/badge/Guía-prompt.md-1B5E20?style=flat-square)](https://github.com/giccai/proyecto_base/blob/main/prompt.md)

<i>Plantilla del GICC para conducir un proyecto de investigación en inteligencia artificial de trece semanas, desde la pregunta de investigación hasta sus dos entregables finales: un artículo sometido a un journal indexado en SCOPUS y un prototipo Python reproducible e instalable.</i>

</div>

## Qué es este repositorio

`proyecto_base` es la **plantilla** con la que arranca cualquier proyecto de investigación en inteligencia artificial del GICC: visión por computador, PLN y LLMs, series de tiempo, grafos, aprendizaje por refuerzo o IA generativa. Trae ya montado el marco de trabajo completo —etiquetas, sprints, Product Backlog, tablero Kanban, plantillas y estructura de carpetas— para que un equipo (o una sola persona) se concentre en investigar y no en configurar.

> [!IMPORTANT]
> **Antes de escribir una línea de código, lee [`prompt.md`](prompt.md).** Es la guía paso a paso de cómo se gestiona el repositorio: etiquetas, sprints, Product Backlog y flujo de trabajo.

### Los dos entregables

| | Entregable | Qué se evalúa |
|:-:|---|---|
| 📄 | **Artículo científico** para un journal indizado en **SCOPUS** | Contribución original, estado del arte, rigor experimental, comparación con la literatura y significancia de los resultados |
| 🐍 | **Prototipo en Python** | Que reproduzca **exactamente** los números del artículo: entorno, semillas, datos versionados, experimentos registrados y una demo ejecutable |

**Fecha de finalización del proyecto: lun 07-dic-2026.**

## Cómo empezar un proyecto nuevo

```bash
# 1. Crea tu repositorio desde esta plantilla (botón «Use this template» en https://github.com/giccai/proyecto_base)
gh repo create giccai/gicc-<tu-proyecto> --template giccai/proyecto_base --private --clone
cd gicc-<tu-proyecto>

# 2. Activa la plantilla de mensajes de commit
git config commit.template .gitmessage

# 3. Crea el entorno reproducible
conda env create -f environment.yml && conda activate gicc-proyecto

# 4. Lee la guía y planifica el Sprint 1
$EDITOR prompt.md
```

Al duplicar la plantilla **no se copian** las etiquetas, los milestones ni los Issues: se recrean con la maquinaria de aprovisionamiento del área `GICC_Proyectos` (ver [`prompt.md`](prompt.md), sección «Arrancar un proyecto nuevo»).

## Roles

El GICC trabaja con equipos pequeños: **un integrante puede asumir casi todos los roles**. Los roles no son personas, son **sombreros**: marcan qué pregunta estás respondiendo en cada momento y qué etiqueta le pones al Issue.

| Rol | La pregunta que responde | Responsabilidad principal |
|---|---|---|
| ![IP](https://img.shields.io/badge/IP-Investigador_Principal-1B5E20?style=flat-square) | ¿Respondemos la pregunta correcta y llegamos al 7 de diciembre? | Pregunta de investigación, alcance, backlog y tablero, plan de experimentos, veredicto sobre las hipótesis, autoría y sumisión |
| ![LIT](https://img.shields.io/badge/LIT-Literatura_y_Redacción-0D47A1?style=flat-square) | ¿Ya está hecho, y está bien contado? | Revisión de literatura, posicionamiento, journal objetivo, manuscrito, figuras del artículo y bibliografía |
| ![DAT](https://img.shields.io/badge/DAT-Datos_y_Protocolo-4A148C?style=flat-square) | ¿El dato aguanta la comparación? | Benchmarks, licencias y ética, caracterización, particiones congeladas, pipeline versionado y depósito de datos con DOI |
| ![MOD](https://img.shields.io/badge/MOD-Método_y_Experimentos-E65100?style=flat-square) | ¿El método aporta algo, y por qué? | Baselines reproducidos, método propuesto, entrenamiento en GICC HPRC, barridos, ablaciones y demo |
| ![REP](https://img.shields.io/badge/REP-Reproducibilidad_y_Evidencia-B71C1C?style=flat-square) | ¿Es cierto, y otra persona lo puede volver a obtener? | Entorno y semillas, protocolo de evaluación, registro de experimentos, estadística, tablas por script, pruebas y prototipo Python |

<details>
<summary><b>Foco de cada rol, sprint a sprint</b></summary>

| Rol | S1 | S2 | S3 | S4 | S5 | S6 |
|---|---|---|---|---|---|---|
| **IP** | Formular la pregunta, las hipótesis y los criterios de éxito; montar el tablero | Arbitrar la tensión entre la pregunta y los datos disponibles; podar el alcance | Proteger el alcance: decidir qué no se prepara ni se modela | Cerrar el plan de experimentos y escribir el criterio de parada | Emitir el veredicto sobre cada hipótesis y revisar con rúbrica de revisor | Sumisión al journal, orden de autoría y retrospectiva |
| **LIT** | Revisión de literatura, matriz comparativa y elección del journal SCOPUS | Trabajos relacionados y protocolos que usa la literatura | Sección de datos y de configuración experimental; maqueta de tablas y figuras | Sección de método con la notación definitiva | Resultados, discusión, limitaciones y conclusiones | Formato del journal, carta de presentación y preprint |
| **DAT** | Inventario de datos candidatos: licencias, acceso y ética | Selección del conjunto principal, caracterización y ficha de datos | Pipeline versionado, particiones congeladas y guardias contra fugas | Paridad de entradas entre baselines y método; variantes para las ablaciones | Verificar que la comparación con la literatura es equivalente | Depósito de datos y derivados en Zenodo con DOI y licencias cerradas |
| **MOD** | Prueba de viabilidad en GICC HPRC y presupuesto de cómputo | Baseline sencillo reproducido de extremo a extremo | Interfaz común de modelo y coste por corrida | Baselines de la literatura, método propuesto, barrido y ablaciones | Análisis de errores, sensibilidad y casos de fallo | Checkpoints exportados y demo del resultado principal |
| **REP** | Repositorio, entorno, semillas, estructura e integración continua en verde | Protocolo experimental congelado: particiones, métricas, semillas y prueba estadística | Registro de experimentos, checkpoints reanudables y pruebas de datos | Repeticiones por semilla y tablas y figuras generadas por script | Significancia, tamaño de efecto y regeneración en frío de tablas y figuras | Prototipo instalable, versión v1.0.0 y paquete de reproducibilidad |

</details>

### Quién asume cada rol

> **Coordinador del proyecto:** edita esta tabla al inicio de cada sprint y declara explícitamente quién asume cada rol. En un equipo de una o dos personas es normal que un mismo nombre se repita en varias filas: escríbelo igual, para que quede constancia de quién responde por qué.

| Rol | Sprint 1 | Sprint 2 | Sprint 3 | Sprint 4 | Sprint 5 | Sprint 6 |
|---|:-:|:-:|:-:|:-:|:-:|:-:|
| **IP** · Investigador Principal | — | — | — | — | — | — |
| **LIT** · Literatura y Redacción | — | — | — | — | — | — |
| **DAT** · Datos y Protocolo | — | — | — | — | — | — |
| **MOD** · Método y Experimentos | — | — | — | — | — | — |
| **REP** · Reproducibilidad y Evidencia | — | — | — | — | — | — |

**Asesores / Product Owners**

| | Nombre | GitHub |
|:-:|---|---|
| <img src="https://github.com/pshiguihara.png" width="32" height="32" alt=""> | Pedro Shiguihara | [@pshiguihara](https://github.com/pshiguihara) |

## Sprints

6 sprints, **CRISP-DM adaptado a investigación**. Cada sprint cierra un lun a las **23:59 (hora Perú)** y se revisa con el asesor en la reunión siguiente. Cada sprint tiene su [milestone](https://github.com/giccai/proyecto_base/milestones).

| # | Fase | Qué se consigue | Entrega | Milestone |
|:-:|---|---|---|:-:|
| **1** | Comprensión de la investigación | Cerrar la pregunta y encender la infraestructura | lun 21-set | [Sprint 1](https://github.com/giccai/proyecto_base/milestone/1) |
| **2** | Comprensión de los datos | Datos elegidos y protocolo congelado | lun 05-oct | [Sprint 2](https://github.com/giccai/proyecto_base/milestone/2) |
| **3** | Preparación de los datos | Pipeline reproducible y andamiaje de experimentos | lun 19-oct | [Sprint 3](https://github.com/giccai/proyecto_base/milestone/3) |
| **4** | Modelado y experimentación | Baselines, método propuesto, barrido y ablaciones | lun 09-nov | [Sprint 4](https://github.com/giccai/proyecto_base/milestone/4) |
| **5** | Evaluación | Convertir los números en evidencia y cerrar el manuscrito | lun 23-nov | [Sprint 5](https://github.com/giccai/proyecto_base/milestone/5) |
| **6** | Difusión: prototipo y artículo | Prototipo liberado y artículo sometido | lun 07-dic | [Sprint 6](https://github.com/giccai/proyecto_base/milestone/6) |

<details>
<summary><b>Sprint 1 · Comprensión de la investigación</b> — entrega lun 21-set</summary>

**Meta del sprint.** Convertir una intuición de investigación en una pregunta falsable con hipótesis medibles, respaldada por una revisión de la literatura que muestre el hueco, con el journal SCOPUS objetivo elegido, los conjuntos de datos candidatos identificados con su licencia, y el repositorio reproducible corriendo de punta a punta, incluido un primer job real en GICC HPRC. En este sprint no se entrena todavía ningún modelo definitivo.

**Product Backlog**

| ID | Historia de usuario | Fase |
|---|---|---|
| `PB-01` | Formular la pregunta de investigación, las hipótesis y los criterios de éxito | Comprensión de la investigación |
| `PB-02` | Revisar la literatura y construir la matriz comparativa de trabajos previos | Comprensión de la investigación |
| `PB-03` | Elegir el journal SCOPUS objetivo y abrir el manuscrito en su plantilla | Comprensión de la investigación |
| `PB-04` | Inventariar los datos candidatos y verificar licencias, acceso y ética | Comprensión de la investigación |
| `PB-05` | Levantar el repositorio reproducible: estructura, entorno, semillas e integración continua | Comprensión de la investigación |
| `PB-06` | Probar la viabilidad técnica en GICC HPRC y estimar el presupuesto de cómputo | Comprensión de la investigación |

**Entregables por rol**

| Rol | Entregable |
|---|---|
| **IP** | `docs/pregunta_investigacion.md`: pregunta principal, hipótesis falsables con su magnitud mínima relevante, alcance, contribución declarada y lo que queda fuera; tablero con los 6 milestones y las 34 historias en «Product backlog» |
| **LIT** | `docs/estado_del_arte.md` con cadenas de búsqueda y criterios de cribado, `results/tables/related_work.csv`, `paper/refs.bib` con al menos 20 referencias y `paper/main.tex` compilando en la plantilla del journal elegido |
| **DAT** | `docs/datos_candidatos.md`: al menos dos conjuntos de datos con tamaño, licencia, vía de acceso, artículos de la literatura que los usan y decisión escrita sobre revisión ética |
| **MOD** | `docs/plan_computo.md` con la estimación de GPU-horas por corrida y evidencia de un job real ejecutado en GICC HPRC: identificador, nodo, registro de salida y checkpoint recuperable |
| **REP** | Repositorio instalable con `pip install -e .`, entorno con versiones fijadas, `src/proyecto/seed.py`, `Makefile` e integración continua en verde |

</details>
<details>
<summary><b>Sprint 2 · Comprensión de los datos</b> — entrega lun 05-oct</summary>

**Meta del sprint.** Elegir el conjunto de datos que hace legítima la comparación con la literatura, auditarlo en licencia, procedencia, sesgos y contaminación, y congelar el protocolo experimental antes de modelar: particiones, métricas, semillas y prueba estadística. Al cerrar el sprint existe una corrida completa de un baseline sencillo que demuestra que el protocolo es ejecutable de extremo a extremo.

**Product Backlog**

| ID | Historia de usuario | Fase |
|---|---|---|
| `PB-07` | Seleccionar el conjunto de datos principal y justificar la decisión | Comprensión de los datos |
| `PB-08` | Caracterizar los datos y redactar la ficha de datos | Comprensión de los datos |
| `PB-09` | Congelar el protocolo experimental antes de modelar | Comprensión de los datos |
| `PB-10` | Reproducir de extremo a extremo un baseline sencillo de la literatura | Comprensión de los datos |
| `PB-11` | Redactar «Trabajos relacionados» y el posicionamiento del manuscrito | Comprensión de los datos |

**Entregables por rol**

| Rol | Entregable |
|---|---|
| **IP** | `docs/decisiones/ADR-002-datos.md` con la decisión sobre los datos y el backlog podado para los sprints 3 a 6, con acta de lo que se decidió no hacer |
| **LIT** | `paper/sections/02_related_work.tex` y la introducción con el hueco de la literatura ya argumentado |
| **DAT** | `docs/ficha_datos.md` y `notebooks/01_characterization.ipynb`: procedencia, licencia, composición, sesgos, estadísticas por partición y comprobación de duplicados y solapamientos |
| **MOD** | Baseline trivial y baseline sencillo de la literatura corriendo de extremo a extremo, con su corrida registrada y la brecha frente a la cifra publicada explicada |
| **REP** | `docs/protocolo_experimental.md` congelado, fechado y marcado con una etiqueta de Git: particiones, métrica primaria y secundarias, semillas y prueba estadística prevista |

</details>
<details>
<summary><b>Sprint 3 · Preparación de los datos</b> — entrega lun 19-oct</summary>

**Meta del sprint.** Dejar el conjunto de trabajo reconstruible desde cero con un solo comando, versionado y con las particiones congeladas y hasheadas; blindar el pipeline contra fugas de información con pruebas automatizadas; y dejar listo el andamiaje de experimentos: interfaz común de modelo, registro de corridas y checkpoints reanudables tras una preempción del clúster.

**Product Backlog**

| ID | Historia de usuario | Fase |
|---|---|---|
| `PB-12` | Construir el pipeline de preparación reproducible y versionarlo | Preparación de los datos |
| `PB-13` | Congelar las particiones y blindar el pipeline contra fugas de información | Preparación de los datos |
| `PB-14` | Instrumentar el registro de experimentos y los checkpoints reanudables | Preparación de los datos |
| `PB-15` | Definir la interfaz común de modelo y garantizar la paridad de entradas | Preparación de los datos |
| `PB-16` | Redactar la sección de datos y de configuración experimental | Preparación de los datos |

**Entregables por rol**

| Rol | Entregable |
|---|---|
| **IP** | Presupuesto de cómputo aprobado por experimento y por sprint, y replanificación del backlog si el sprint anterior desbordó |
| **LIT** | `paper/sections/03_data.tex` y `04_setup.tex`, más las tablas y figuras del artículo maquetadas con sus encabezados y leyendas definitivos |
| **DAT** | `dvc.yaml` con las etapas de preparación, `data/splits.json` con un hash por partición y `make data` reconstruyendo el conjunto con hashes idénticos |
| **MOD** | Interfaz común de modelo en `src/proyecto/models/base.py` y `docs/paridad_entradas.md` con la prueba de que todos los métodos ven exactamente los mismos datos |
| **REP** | Registro de experimentos operativo (configuración, semilla, commit, entorno y nodo), checkpoints reanudables verificados y `tests/test_data.py` y `tests/test_leakage.py` en verde |

</details>
<details>
<summary><b>Sprint 4 · Modelado y experimentación</b> — entrega lun 09-nov</summary>

**Meta del sprint.** Reproducir los baselines de la literatura bajo el protocolo congelado, implementar el método propuesto tras la misma interfaz, ejecutar el barrido con un presupuesto de cómputo igualado para todos los métodos y aislar la contribución de cada componente con estudios de ablación. Dura tres semanas porque la cola de GICC HPRC es lo único del proyecto cuyo tiempo no depende del equipo.

**Product Backlog**

| ID | Historia de usuario | Fase |
|---|---|---|
| `PB-17` | Cerrar el plan de experimentos que entra al artículo | Modelado y experimentación |
| `PB-18` | Reproducir los baselines de la literatura bajo el protocolo congelado | Modelado y experimentación |
| `PB-19` | Implementar el método propuesto y entrenarlo de extremo a extremo | Modelado y experimentación |
| `PB-20` | Ejecutar el barrido de hiperparámetros con presupuesto igualado | Modelado y experimentación |
| `PB-21` | Diseñar y ejecutar los estudios de ablación | Modelado y experimentación |
| `PB-22` | Repetir con varias semillas y generar las tablas y figuras por script | Modelado y experimentación |
| `PB-23` | Redactar la sección de método con la notación definitiva | Modelado y experimentación |

**Entregables por rol**

| Rol | Entregable |
|---|---|
| **IP** | `docs/plan_experimentos.md` cerrado: corridas que entran al artículo, coste en GPU-horas, la afirmación que sostiene cada una y el criterio de parada escrito antes de mirar resultados |
| **LIT** | `paper/sections/05_method.tex` con la notación definitiva del artículo y la figura de arquitectura con fuente editable en el repositorio |
| **DAT** | Variantes de datos usadas en las ablaciones, versionadas y descritas, y verificación de que la comparación con la literatura es equivalente |
| **MOD** | `src/proyecto/models/` con los baselines de la literatura reproducidos y el método propuesto, barrido con presupuesto igualado y estudios de ablación ejecutados |
| **REP** | `results/tables/main.csv` y `results/tables/ablation.csv` generadas por script, con al menos tres semillas por configuración final y todas las corridas registradas |

</details>
<details>
<summary><b>Sprint 5 · Evaluación</b> — entrega lun 23-nov</summary>

**Meta del sprint.** Pasar de tener números a tener evidencia: prueba de significancia, tamaño de efecto e intervalos de confianza; análisis de errores y sensibilidad a la semilla; veredicto explícito sobre cada hipótesis y amenazas a la validez declaradas; y manuscrito completo compilado y revisado con la rúbrica de un revisor de journal.

**Product Backlog**

| ID | Historia de usuario | Fase |
|---|---|---|
| `PB-24` | Comparar contra los baselines con significancia estadística y tamaño de efecto | Evaluación |
| `PB-25` | Analizar los errores, la sensibilidad y los casos de fallo | Evaluación |
| `PB-26` | Emitir el veredicto sobre las hipótesis y declarar las amenazas a la validez | Evaluación |
| `PB-27` | Completar el manuscrito: resultados, discusión, limitaciones y conclusiones | Evaluación |
| `PB-28` | Regenerar en frío las tablas y figuras y auditar la trazabilidad | Evaluación |
| `PB-29` | Revisar el manuscrito y el código con la rúbrica de revisor de journal | Evaluación |

**Entregables por rol**

| Rol | Entregable |
|---|---|
| **IP** | `docs/veredicto.md`, `docs/amenazas_validez.md` y `docs/revision_interna.md` con la rúbrica de revisor aplicada y las correcciones abiertas como issues priorizados |
| **LIT** | `paper/main.pdf` completo: resultados, discusión, limitaciones, conclusiones, resumen, título definitivo y palabras clave |
| **DAT** | Verificación de comparabilidad con la literatura: mismas particiones, misma métrica y mismo preprocesamiento, o la diferencia declarada por escrito |
| **MOD** | `notebooks/02_error_analysis.ipynb` con la taxonomía de fallos, las métricas desagregadas por estrato y la sensibilidad a la semilla |
| **REP** | `results/stats/` con prueba, valor p, tamaño de efecto e intervalos; regeneración en frío de todas las tablas y figuras y `docs/reproducibilidad.md` |

</details>
<details>
<summary><b>Sprint 6 · Difusión: prototipo y artículo</b> — entrega lun 07-dic</summary>

**Meta del sprint.** Cerrar los dos entregables finales: el prototipo Python instalable con su demo, verificado en máquina limpia y liberado con DOI, y el artículo formateado según las normas de la revista, con su carta de presentación, sometido al journal SCOPUS y con el acuse de recibo registrado. El proyecto termina con una sumisión, no con una publicación: la revisión por pares excede la ventana de trece semanas.

**Product Backlog**

| ID | Historia de usuario | Fase |
|---|---|---|
| `PB-30` | Empaquetar y liberar el prototipo Python instalable | Difusión: prototipo y artículo |
| `PB-31` | Construir la demo reproducible del resultado principal | Difusión: prototipo y artículo |
| `PB-32` | Depositar datos, derivados y checkpoints en Zenodo con DOI | Difusión: prototipo y artículo |
| `PB-33` | Ajustar el manuscrito al formato del journal y preparar la carta de presentación | Difusión: prototipo y artículo |
| `PB-34` | Someter el artículo, registrar el acuse y cerrar el proyecto | Difusión: prototipo y artículo |

**Entregables por rol**

| Rol | Entregable |
|---|---|
| **IP** | Comprobante de sumisión en `docs/sumision.md`, orden de autoría y contribuciones acordados por escrito, y `docs/retrospectiva.md` con el plan de respuesta a revisores |
| **LIT** | Manuscrito en la plantilla del journal, `paper/cover_letter.md`, declaraciones exigidas por la revista y preprint depositado si su política lo permite |
| **DAT** | Depósito en Zenodo con DOI citado en el manuscrito, en el README y en `CITATION.cff`, con `LICENSE-DATA` compatible con las fuentes originales |
| **MOD** | Demo que reproduce el resultado principal en menos de cinco minutos, sin GPU y sin acceso al clúster, con checkpoint pequeño y datos de ejemplo |
| **REP** | `pip install .` verificado en máquina limpia, comando de consola del prototipo respondiendo, etiqueta `v1.0.0`, `CHANGELOG.md` y `CITATION.cff` |

</details>

## CRISP-DM, en clave de investigación

Las fases conservan el esqueleto de CRISP-DM y cambian lo que hay que cambiar cuando el resultado no es un modelo en producción sino **un artículo y un prototipo que lo sostiene**.

| Fase CRISP-DM | Fase en el GICC | Etiqueta | Qué significa aquí |
|---|---|---|---|
| Business Understanding | Comprensión de la investigación | `comprension-investigacion` | Pregunta de investigación falsable, hipótesis operacionalizadas, revisión de la literatura, baselines de referencia, criterios de éxito científico y elección del journal SCOPUS objetivo. |
| Data Understanding | Comprensión de los datos | `comprension-datos` | Selección del conjunto de datos o benchmark que hace legítima la comparación, caracterización, auditoría de licencias, ética, sesgos y contaminación, y congelamiento del protocolo experimental. |
| Data Preparation | Preparación de los datos | `preparacion-datos` | Pipeline reproducible de preparación, particiones congeladas y hasheadas, versionado con DVC, guardias contra fugas de información y andamiaje de experimentos. |
| Modeling | Modelado y experimentación | `modelado` | Baselines de la literatura reproducidos bajo nuestro protocolo, método propuesto tras la misma interfaz, barrido con presupuesto de cómputo igualado y estudios de ablación en GICC HPRC. |
| Evaluation | Evaluación | `evaluacion` | Comparación con prueba de significancia estadística y tamaño de efecto, análisis de errores y sensibilidad, veredicto sobre las hipótesis y amenazas a la validez declaradas. |
| Deployment | Difusión: prototipo y artículo | `difusion` | Liberación del prototipo Python instalable con su demo, depósito de artefactos en Zenodo con DOI y sumisión del manuscrito al journal SCOPUS: aquí el resultado llega a quien lo usa, que es la comunidad científica. |

## Cómo trabajamos

**Tablero Kanban** ([abrir](https://github.com/orgs/giccai/projects)) — `Product backlog` → `To Do` → `In Progress` → `In Review` → `Done`

1. Las 34 historias `PB-XX` ya existen como **Issues** en la columna **Product backlog**, con sus etiquetas (`rol/…`, `sprint-N`, fase) y su milestone.
2. Al planificar el sprint, se asignan, se completan descripción y criterios de aceptación, se crean las sub-tareas que hagan falta y se mueven a **To Do**.
3. Mueve el Issue a **In Progress** y trabaja en una rama `feat/PB-XX`. Nunca directamente sobre `main`.
4. Abre un **Pull Request** con `Closes #<issue>` y mueve el Issue a **In Review**.
5. Se revisa el PR y se verifica la *Definition of Done*.
6. Al mergear, el Issue pasa a **Done**.

**Definition of Done (común a todas las historias)**

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

**Commits** — el repositorio trae una plantilla que guía el mensaje (tipo, historia, rol y sprint):

```text
exp(PB-09): entrena el baseline ResNet-50 con 3 semillas y registra los runs

Rol: MOD
Sprint: 3
Refs: #9
```

## Estructura del repositorio

```text
proyecto_base/
  README.md                         # Título del proyecto, equipo, sombreros por sprint, calendario, enlaces al tablero y aviso de que el 7 de setiembre es la fecha de inicio del control en GitHub, no necesariamente de la investigación.
  prompt.md                         # Guía para el alumno: cómo se usan las etiquetas, los sprints, el Product Backlog y el tablero Kanban de este repositorio.
  CITATION.cff                      # Cómo citar el trabajo; se completa con el DOI de Zenodo en el Sprint 6.
  LICENSE                           # Licencia del código y del prototipo.
  LICENSE-DATA                      # Licencia de los datos derivados que se publican; puede diferir de la del código.
  CHANGELOG.md                      # Cambios del prototipo entre versiones; se cierra con la etiqueta `v1.0.0`.
  Makefile                          # Objetivos del proyecto: `setup`, `data`, `train`, `eval`, `tables`, `figures`, `paper`, `repro` y `test`.
  pyproject.toml                    # Paquete instalable con `pip install -e .` y punto de entrada de consola del prototipo.
  environment.yml                   # Entorno con versiones fijadas, reproducible en el portátil y en GICC HPRC.
  .gitmessage                       # Plantilla de commit: `tipo(PB-XX): resumen` más las líneas Rol, Sprint y Refs.
  .github/ISSUE_TEMPLATE/           # Plantillas de historia PB-XX, sub-tarea, experimento y error.
  .github/PULL_REQUEST_TEMPLATE.md  # Lista de comprobación de la Definition of Done y la pregunta obligatoria: ¿qué cifra del artículo cambia este Pull Request?
  .github/workflows/                # Integración continua: formato, análisis estático, pruebas y prueba de humo sin GPU.
  configs/                          # Toda la parametrización en YAML: datos, modelo, entrenamiento, evaluación, experimentos y barridos. Ninguna constante experimental vive en el código.
  data/                             # Datos crudos, intermedios y procesados; el contenido no va a Git, solo los punteros de DVC y `splits.json` con los hashes de las particiones.
  src/proyecto/                     # Paquete del proyecto; se renombra al clonar la plantilla.
  src/proyecto/seed.py              # Semilla global que cubre Python, NumPy, el framework de aprendizaje y el orden de los cargadores.
  src/proyecto/data/                # Descarga, particiones, transformaciones y cargadores comunes a todos los métodos.
  src/proyecto/models/              # Interfaz común de modelo, baselines de la literatura reproducidos y método propuesto.
  src/proyecto/training/            # Bucle de entrenamiento, checkpoints reanudables y registro de la corrida.
  src/proyecto/evaluation/          # Métricas, remuestreo bootstrap, pruebas de significancia y tamaño de efecto.
  src/proyecto/analysis/            # Análisis de errores, ablaciones y agregación de corridas.
  scripts/hprc/                     # Plantillas Slurm para GICC HPRC: prueba de viabilidad, entrenamiento, barrido y evaluación.
  scripts/                          # Generación de tablas y figuras, recolección de corridas y descarga de datos.
  experiments/registry/             # Un resumen JSON por corrida, versionado en Git: identificador, configuración, semilla, commit, entorno, nodo y métricas.
  models/                           # Checkpoints versionados fuera de Git, con su hash, su tamaño y la corrida que los produjo.
  results/tables/                   # Tablas generadas por script; nunca se editan a mano.
  results/figures/                  # Figuras vectoriales generadas por script desde el registro de experimentos.
  results/stats/                    # Pruebas de significancia, valores p, tamaños de efecto e intervalos de confianza.
  paper/                            # Manuscrito en LaTeX: `main.tex`, `refs.bib`, secciones, plantilla del journal, carta de presentación y comprobante de sumisión.
  prototype/                        # Segundo entregable: comando de consola y demo que importan el paquete de `src/`, nunca una copia del código.
  notebooks/                        # Exploración, caracterización, análisis de errores y figuras; nunca fuente de verdad de una cifra del artículo.
  tests/                            # Pruebas de datos, fugas, métricas, estadística, reproducibilidad e interfaz del prototipo.
  docs/                             # Pregunta de investigación, protocolo congelado, ficha de datos, tarjeta de modelo, plan de cómputo, veredicto, amenazas a la validez, bitácora y retrospectiva.
  docs/decisiones/                  # Registros de decisión (ADR), uno por decisión de investigación, fechados y con las alternativas descartadas.
```

## Cómputo: GICC HPRC

Los entrenamientos que no caben en un portátil se lanzan al clúster **Slurm** del GICC (`chicken`, `falcon`, `eagle`) a través de [GICC HPRC](https://hprc.gicc.ai) o de su CLI:

```bash
pip install hprc
hprc login                       # usa tu cuenta de usuarios.gicc.ai
hprc submit scripts/train.sbatch # lanza el experimento y devuelve el job id
hprc status <job-id>
```

Los scripts `.sbatch` viven en `scripts/`, los registros de ejecución en `logs/` (ignorados por Git) y las métricas en el gestor de experimentos. **Nunca** se comitean checkpoints ni datasets: van versionados.

---

<div align="center">

<sub><a href="https://github.com/giccai">GICC — Grupo de Investigación de Ciencia de la Computación</a> · <a href="https://github.com/giccai/proyecto_base/blob/main/prompt.md">guía para el alumno</a> · <a href="https://github.com/orgs/giccai/projects">tablero</a></sub>

</div>
