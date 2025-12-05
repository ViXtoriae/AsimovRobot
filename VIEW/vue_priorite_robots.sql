CREATE OR REPLACE VIEW vue_priorite_robots AS
SELECT
    r.id_robot,
    r.nom_robot,
    r.modele,
    r.etat,
    mp.coefficient AS priorite_modele,
    IFNULL(SUM(CASE WHEN a.resultat = 'succès' THEN 1 ELSE 0 END), 0) AS succes,
    (
        (mp.coefficient * 10)
        + (IFNULL(SUM(CASE WHEN a.resultat = 'succès' THEN 1 ELSE 0 END), 0) * 5)
        + (CASE WHEN r.etat = 'actif' THEN 50 ELSE 0 END)
    ) AS score_priorite
FROM robots r
LEFT JOIN actions a ON a.id_robot = r.id_robot
LEFT JOIN modele_priorite mp ON r.modele = mp.modele
GROUP BY r.id_robot, r.nom_robot, r.modele, r.etat, mp.coefficient
ORDER BY score_priorite DESC;