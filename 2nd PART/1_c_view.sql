CREATE OR REPLACE VIEW vue_priorite_robots_proximite AS
SELECT
  vpr.id_robot,
  vpr.nom_robot,
  vpr.score_priorite
    + CASE WHEN r.localisation = s.localisation THEN 15 ELSE 0 END AS score_priorite_final,
  r.localisation,
  vpr.disponibilite,
  s.id_scenario,
  s.localisation AS localisation_scenario
FROM vue_priorite_robots vpr
JOIN robots r ON r.id_robot = vpr.id_robot
JOIN scenarios s ON s.id_scenario = vpr.id_robot;