# nexus-syndicate-db
Repositorio oficial del proyecto Nexus Syndicate 
# Nexus Syndicate — Plataforma de Gestión de Torneos de eSports
## 📌 Visión General
**Nexus Syndicate** es un sistema de base de datos relacional diseñado para centralizar, automatizar y estructurar la administración de ligas y torneos competitivos de eSports. La plataforma permite la gestión de videojuegos, equipos, jugadores, modalidades de juego, árbitros, partidas y el registro estadístico detallado del rendimiento de los competidores.

Este proyecto forma parte de la asignatura **Bases de Datos 1** en **CESUN Universidad**.

---

## 🛠️ Tecnologías y Herramientas Utilizadas
* **Gestor de Base de Datos:** MySQL Workbench 8.0 / MySQL Server.
* **Gestión de Proyecto (Scrum):** Jira Software.
* **Documentación y Wiki:** Confluence.
* **Control de Versiones:** GitHub.
* **Diseño del Diagrama:** Lucidchart / MySQL Workbench.

---

## 📐 Estructura del Modelo Relacional
El modelo relacional consta de **9 tablas** interrelacionadas y normalizadas (hasta la 3FN):

1. **Juego:** Catálogo de videojuegos soportados en la plataforma.
2. **Modalidad:** Tipos de competencia (1v1, 5v5, Battle Royale, etc.).
3. **Modalidad_Juego:** Tabla intermedia que conecta los juegos con sus modalidades disponibles.
4. **Equipo:** Registro de clubes y organizaciones participantes.
5. **Jugador:** Información de los pro-players pertenecientes a cada equipo.
6. **Árbitro:** Registro del personal encargado de supervisar las partidas.
7. **Torneo:** Eventos competitivos organizados en la plataforma.
8. **Partida:** Enfrentamientos específicos dentro de cada torneo.
9. **Estadística:** Registro detallado de rendimiento individual (KDA, puntos, bajas, asistencias).

---

## 👥 Equipo de Desarrollo
* **Oscar Manuel Cuin Colin** 
* **Derik Hernández** 

---

## 📂 Contenido del Repositorio
```text
├── README.md              # Descripción y documentación general del proyecto
└── new diagrama.mwb       # Modelo físico en MySQL Workbench
