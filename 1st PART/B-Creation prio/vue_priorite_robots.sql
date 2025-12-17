ALTER TABLE robots ADD priorite_modele INT;

UPDATE robots SET priorite_modele =
    CASE modele
        WHEN 'A100' THEN 2
        WHEN 'A200' THEN 3
        WHEN 'B100' THEN 1
        WHEN 'C300' THEN 1
        WHEN 'PokeVolt' THEN 3
        WHEN 'HylianBlade' THEN 4
        WHEN 'PokeEvolve' THEN 2
        WHEN 'HorizonHunter' THEN 4
        ELSE 1
    END;



CREATE OR REPLACE VIEW vue_priorite_robots AS
SELECT
    robot.id_robot,
    robot.nom_robot,
    robot.modele,
    robot.etat,

    IFNULL(SUM(CASE WHEN action.resultat = 'succès' THEN 1 ELSE 0 END), 0) AS succes,

    (
        (robot.priorite_modele * 10) +
        (IFNULL(SUM(CASE WHEN action.resultat = 'succès' THEN 1 ELSE 0 END), 0) * 5) +
        (CASE WHEN robot.etat = 'actif' THEN 50 ELSE 0 END)
    ) AS score_priorite

FROM robots robot
LEFT JOIN actions action ON robot.id_robot = action.id_robot
GROUP BY robot.id_robot, robot.nom_robot, robot.modele, robot.etat, robot.priorite_modele
ORDER BY score_priorite DESC;
