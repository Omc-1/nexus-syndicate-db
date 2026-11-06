-- Nexus Syndicate - Datos de prueba
-- Ejecutar despues de nexus_syndicate_schema.sql.

USE `nexus_syndicate`;
START TRANSACTION;

INSERT INTO `juego` (`id`, `nombre`) VALUES
  (1, 'Valorant'),
  (2, 'League of Legends'),
  (3, 'Rocket League'),
  (4, 'Counter-Strike 2');

INSERT INTO `modalidad` (`id`, `nombre`) VALUES
  (1, '5 vs 5'),
  (2, '3 vs 3'),
  (3, '1 vs 1');

INSERT INTO `fase` (`id fase`, `nombre`) VALUES
  (1, 'Fase de grupos'),
  (2, 'Cuartos de final'),
  (3, 'Semifinal'),
  (4, 'Final');

INSERT INTO `arbitro` (`id`, `nombre_completo`) VALUES
  (1, 'Alejandro Ramirez'),
  (2, 'Mariana Torres'),
  (3, 'Carlos Mendoza'),
  (4, 'Sofia Herrera');

INSERT INTO `equipo` (`id`, `nombre_equipo`) VALUES
  (1, 'Lobos Rojos'),
  (2, 'Nova Gaming'),
  (3, 'Titanes Esports'),
  (4, 'Eclipse Team'),
  (5, 'Turbo Squad'),
  (6, 'Orbit United');

INSERT INTO `modalidad de juego` (`id`, `modalidad_id`, `juego_id`) VALUES
  (1, 1, 1),
  (2, 1, 2),
  (3, 2, 3),
  (4, 1, 4);

INSERT INTO `jugador` (`id`, `nickname`, `es_capitan`, `id_equipo`) VALUES
  (1, 'Raptor', 1, 1),
  (2, 'Nox', 0, 1),
  (3, 'Vex', 0, 1),
  (4, 'Kira', 0, 1),
  (5, 'Delta', 0, 1),
  (6, 'Astra', 1, 2),
  (7, 'Blaze', 0, 2),
  (8, 'Cobra', 0, 2),
  (9, 'Drift', 0, 2),
  (10, 'Echo', 0, 2),
  (11, 'Frost', 1, 3),
  (12, 'Ghost', 0, 3),
  (13, 'Hawk', 0, 3),
  (14, 'Iris', 0, 3),
  (15, 'Jett', 0, 3),
  (16, 'Knox', 1, 4),
  (17, 'Luna', 0, 4),
  (18, 'Maverick', 0, 4),
  (19, 'Nyx', 0, 4),
  (20, 'Onyx', 0, 4),
  (21, 'Boost', 1, 5),
  (22, 'Comet', 0, 5),
  (23, 'Flip', 0, 5),
  (24, 'Aero', 1, 6),
  (25, 'Pulse', 0, 6),
  (26, 'Zen', 0, 6);

INSERT INTO `partida`
  (`id`, `id_arbitro`, `modalidad_id`, `juego_id`, `modalidad de juego_id`, `fase_id fase`)
VALUES
  (1, 1, 1, 1, 1, 1),
  (2, 2, 1, 2, 2, 2),
  (3, 3, 2, 3, 3, 4),
  (4, 4, 1, 4, 4, 3);

INSERT INTO `torneo`
  (`id`, `cuota_inscripcion`, `cupo_maximo`, `fecha_limite`, `bolsa_premios`,
   `id_juego`, `id_partida`, `modalidad_id`, `modalidad de juego_id`)
VALUES
  (1, 150, 16, '2026-12-01', 15000, 1, 1, 1, 1),
  (2, 200, 16, '2026-12-10', 25000, 2, 2, 1, 2),
  (3, 75, 8, '2026-12-15', 8000, 3, 3, 2, 3),
  (4, 175, 16, '2026-12-20', 18000, 4, 4, 1, 4);

INSERT INTO `estadistica`
  (`id_estadistica`, `bajas_kills`, `muertes`, `asistencias`, `puntaje`,
   `id_partida`, `id_arbitro`, `id_jugador`, `id_equipo`)
VALUES
  (1, 24, 12, 8, 280, 1, 1, 1, 1),
  (2, 18, 14, 9, 235, 1, 1, 2, 1),
  (3, 16, 15, 11, 220, 1, 1, 3, 1),
  (4, 13, 16, 7, 190, 1, 1, 4, 1),
  (5, 11, 17, 10, 175, 1, 1, 5, 1),
  (6, 21, 15, 6, 255, 1, 1, 6, 2),
  (7, 19, 16, 8, 240, 1, 1, 7, 2),
  (8, 15, 17, 9, 205, 1, 1, 8, 2),
  (9, 14, 18, 7, 195, 1, 1, 9, 2),
  (10, 10, 19, 12, 180, 1, 1, 10, 2),
  (11, 8, 3, 15, 270, 2, 2, 11, 3),
  (12, 6, 4, 18, 255, 2, 2, 12, 3),
  (13, 5, 5, 12, 210, 2, 2, 13, 3),
  (14, 3, 4, 20, 230, 2, 2, 14, 3),
  (15, 4, 6, 16, 205, 2, 2, 15, 3),
  (16, 7, 5, 13, 245, 2, 2, 16, 4),
  (17, 5, 6, 15, 220, 2, 2, 17, 4),
  (18, 4, 7, 17, 215, 2, 2, 18, 4),
  (19, 3, 5, 14, 195, 2, 2, 19, 4),
  (20, 2, 8, 19, 190, 2, 2, 20, 4),
  (21, 5, 2, 4, 260, 3, 3, 21, 5),
  (22, 3, 3, 5, 225, 3, 3, 22, 5),
  (23, 2, 4, 6, 210, 3, 3, 23, 5),
  (24, 4, 3, 4, 245, 3, 3, 24, 6),
  (25, 3, 4, 5, 220, 3, 3, 25, 6),
  (26, 2, 5, 6, 205, 3, 3, 26, 6),
  (27, 22, 13, 7, 265, 4, 4, 1, 1),
  (28, 19, 14, 8, 245, 4, 4, 2, 1),
  (29, 17, 15, 9, 225, 4, 4, 3, 1),
  (30, 15, 16, 8, 210, 4, 4, 4, 1),
  (31, 12, 17, 10, 190, 4, 4, 5, 1),
  (32, 20, 14, 7, 250, 4, 4, 11, 3),
  (33, 18, 15, 8, 235, 4, 4, 12, 3),
  (34, 16, 16, 10, 220, 4, 4, 13, 3),
  (35, 14, 17, 9, 205, 4, 4, 14, 3),
  (36, 11, 18, 11, 185, 4, 4, 15, 3);

COMMIT;
