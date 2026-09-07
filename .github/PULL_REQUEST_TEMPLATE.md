## Qué cambia

<!-- Resumen breve: qué se construyó o qué se encontró, y qué número o sección del artículo lo respalda. -->

Closes #

**Sprint:** <!-- 1..6 -->  ·  **Rol:** <!-- IP · LIT · DAT · MOD · REP -->

## Evidencia

<!-- Enlace al run del experimento, a la tabla regenerada o al job de HPRC. Si el cambio mueve una cifra
     del artículo, di cuál y de cuánto a cuánto. -->

## Definition of Done

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

## Notas para quien revisa

<!-- Qué mirar con más cuidado, supuestos, riesgos, lo que no está resuelto. -->
