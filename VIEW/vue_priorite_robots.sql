ALTER TABLE robots ADD priorite_modele INT;

UPDATE robots SET priorite_modele =
    CASE modele
        WHEN 'A100' THEN 2
        WHEN 'A200' THEN 3
        WHEN 'B100' THEN 1
        WHEN 'C300' THEN 1
        ELSE 1
    END;



CREATE OR REPLACE VIEW vue_priorite_robots AS
SELECT
    r.id_robot,
    r.nom_robot,
    r.modele,
    r.etat,

    -- Succès comptés simplement
    IFNULL(SUM(CASE WHEN a.resultat = 'succès' THEN 1 ELSE 0 END), 0) AS succes,

    -- Score simplifié
    (
        (r.priorite_modele * 10) +
        (IFNULL(SUM(CASE WHEN a.resultat = 'succès' THEN 1 ELSE 0 END), 0) * 5) +
        (CASE WHEN r.etat = 'actif' THEN 50 ELSE 0 END)
    ) AS score_priorite

FROM robots r
LEFT JOIN actions a ON r.id_robot = a.id_robot
GROUP BY r.id_robot, r.nom_robot, r.modele, r.etat, r.priorite_modele
ORDER BY score_priorite DESC;
