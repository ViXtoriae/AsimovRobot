CREATE OR REPLACE VIEW vue_conflits_lois AS
SELECT
    a.id_action,
    r.nom_robot,
    r.modele,
    r.etat,
    h.nom AS nom_humain,
    s.description AS scenario,
    s.priorite_loi,
    a.action,
    a.resultat,
    a.timestamp
FROM actions a
JOIN robots r ON a.id_robot = r.id_robot
JOIN humains h ON a.id_humain = h.id_humain
JOIN scenarios s ON a.id_scenario = s.id_scenario
WHERE s.priorite_loi = 1   -- Loi 1 prioritaire
  AND a.resultat IN ('échec','mitigé')
ORDER BY a.timestamp DESC;
