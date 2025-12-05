WITH contexte AS (
  SELECT id_scenario, localisation
  FROM scenarios
  WHERE id_scenario = 3
)
SELECT
  vpr.id_robot,
  vpr.nom_robot,
  vpr.score_priorite
    + CASE WHEN r.localisation = (SELECT localisation FROM contexte) THEN 15 ELSE 0 END AS score_priorite_proximite,
  r.localisation,
  vpr.etat
FROM vue_priorite_robots vpr
JOIN robots r ON r.id_robot = vpr.id_robot
WHERE vpr.etat = 'actif'
ORDER BY score_priorite_proximite DESC
LIMIT 5;
