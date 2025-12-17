
EXPLAIN
SELECT
    robot.id_robot,
    robot.nom_robot,
    robot.etat,
    (robot.priorite_modele * 10)
      + (IFNULL(SUM(CASE WHEN action.resultat = 'succès' THEN 1 ELSE 0 END), 0) * 5)
      + (CASE WHEN robot.etat = 'actif' THEN 50 ELSE 0 END)
    AS score_priorite
FROM robots r
LEFT JOIN actions a ON robot.id_robot = action.id_robot
GROUP BY robot.id_robot;

CREATE INDEX idxActionRobot ON actions(id_robot);
CREATE INDEX idxEtatRobot ON robots(etat);

EXPLAIN
SELECT
    robot.id_robot,
    robot.nom_robot,
    robot.etat,
    (robot.priorite_modele * 10)
      + (IFNULL(SUM(CASE WHEN action.resultat = 'succès' THEN 1 ELSE 0 END), 0) * 5)
      + (CASE WHEN robot.etat = 'actif' THEN 50 ELSE 0 END)
    AS score_priorite
FROM robots robot
LEFT JOIN actions action ON robot.id_robot = action.id_robot
GROUP BY robot.id_robot;

