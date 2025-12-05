CREATE VIEW vue_conflits_passes AS
SELECT
  r.id_robot,
  r.nom_robot,
  s.id_scenario,
  s.description AS description_scenario,
  s.priorite_loi,
  a.id_action,
  a.action      AS action_entrep,
  a.resultat,
  a.timestamp
FROM actions a
JOIN robots r    ON r.id_robot = a.id_robot
JOIN scenarios s ON s.id_scenario = a.id_scenario;