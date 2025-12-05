ALTER TABLE robots ADD COLUMN localisation VARCHAR(50) NOT NULL;
ALTER TABLE scenarios ADD COLUMN localisation VARCHAR(50) NOT NULL;

-- Mise à jour des localisations des robots
UPDATE robots SET localisation = 'Secteur 7' WHERE id_robot = 1;
UPDATE robots SET localisation = 'Secteur 2' WHERE id_robot = 2;
UPDATE robots SET localisation = 'Base médicale' WHERE id_robot = 3;
UPDATE robots SET localisation = 'Dôme principal' WHERE id_robot = 4;
UPDATE robots SET localisation = 'Secteur 7' WHERE id_robot = 5;
UPDATE robots SET localisation = 'Secteur Nostromo' WHERE id_robot = 6;
UPDATE robots SET localisation = 'Matrix Hub' WHERE id_robot = 7;
UPDATE robots SET localisation = 'Base Rebelle' WHERE id_robot = 8;
UPDATE robots SET localisation = 'Skynet Core' WHERE id_robot = 9;
UPDATE robots SET localisation = 'Ferme Hydro' WHERE id_robot = 10;

-- Mise à jour des localisations des scénarios
UPDATE scenarios SET localisation = 'Secteur 7' WHERE id_scenario = 1;
UPDATE scenarios SET localisation = 'Secteur 2' WHERE id_scenario = 2;
UPDATE scenarios SET localisation = 'Base médicale' WHERE id_scenario = 3;
UPDATE scenarios SET localisation = 'Dôme principal' WHERE id_scenario = 4;
UPDATE scenarios SET localisation = 'Module Agricole' WHERE id_scenario = 5;
UPDATE scenarios SET localisation = 'Matrix Hub' WHERE id_scenario = 6;
UPDATE scenarios SET localisation = 'Réacteur Principal' WHERE id_scenario = 7;
UPDATE scenarios SET localisation = 'Laboratoire Physique' WHERE id_scenario = 8;


--testooo--
WITH contexte AS (
  SELECT id_scenario, localisation FROM scenarios
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
