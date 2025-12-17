SELECT
    robot.id_robot,
    robot.nom_robot,
    robot.modele,
    robot.etat,
    
    IFNULL(SUM(CASE WHEN action.resultat = 'succès' THEN 1 ELSE 0 END), 0) AS succes,
    
    (robot.priorite_modele * 15)
      + (IFNULL(SUM(CASE WHEN action.resultat = 'succès' THEN 1 ELSE 0 END), 0) * 3)
      + (CASE WHEN robot.etat = 'actif' THEN 30 ELSE 0 END)
    AS nouveau_score

FROM robots robot
LEFT JOIN actions a ON rrobot.id_robot = action.id_robot
GROUP BY robot.id_robot
ORDER BY nouveau_score DESC;
