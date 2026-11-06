# 🏆 Nexus Syndicate — Database Management Platform

Bienvenido al repositorio oficial del modelo de base de datos para **Nexus Syndicate**, una plataforma integral de gestión de torneos de eSports y ligas competitivas.


## 👥 Integrantes del Proyecto
* **Óscar Cuin** — *Project Manager / Scrum Master*
* **Derik Hernandez** — *Technical Lead / Database Engineer*

---

##  Arquitectura de la Base de Datos (10 Tablas - 3NF)
El modelo relacional ha sido normalizado cumpliendo estrictamente con la **Tercera Forma Normal (3NF)** y consta de las siguientes 10 entidades:

1. `juego` (Catálogo de videojuegos)
2. `modalidad` (Formatos de competencia: 1v1, 3v3, 5v5)
3. `fase` (Catálogo de etapas: Grupos, Cuartos, Semifinal, Final)
4. `arbitro` (Personal encargado de supervisar partidas)
5. `equipo` (Organizaciones/Equipos participantes)
6. `modalidad de juego` (Tabla intermedia de configuración)
7. `jugador` (Jugadores registrados vinculados a sus equipos)
8. `partida` (Encuentros programados por fase y árbitro)
9. `torneo` (Competencias organizadas con bolsa de premios y reglas)
10. `estadistica` (Métricas de desempeño K/D/A por jugador y partida)

---

## Archivos del Repositorio

| Archivo | Tipo | Descripción |
| :--- | :--- | :--- |
| `nexus_syndicate_schema.sql` | DDL | Script de creación del esquema, tablas y llaves foráneas. |
| `nexus_syndicate_data.sql` | DML | Script de inserción de datos de prueba (36+ registros). |
| `nuevo diagrama.mwb.bak.zip` | MWB | Respaldo del modelo Workbench. |
| `LÉAME.md` | Doc | Documentación del repositorio. |

---

##  Instrucciones de Ejecución en MySQL Workbench

Para desplegar la base de datos localmente, ejecuta los scripts en el siguiente **orden estricto**:

1. **Creación del Esquema (DDL):**
   ```sql
   -- Ejecutar primero en MySQL Workbench
   SOURCE nexus_syndicate_schema.sql;
