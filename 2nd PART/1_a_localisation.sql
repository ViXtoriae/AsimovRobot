ALTER TABLE robots ADD COLUMN localisation VARCHAR(50) NOT NULL;
ALTER TABLE scenarios ADD COLUMN localisation VARCHAR(50) NOT NULL;

ALTER TABLE robots ADD batterie INT CHECK (batterie BETWEEN 0 AND 100);


-- Modifications valeurs des robots
UPDATE robots SET localisation = 'NeoCity', batterie = 85 WHERE id_robot = 1;   -- R-Pikachu
UPDATE robots SET localisation = 'DômeCentral', batterie = 70 WHERE id_robot = 2; -- R-Link
UPDATE robots SET localisation = 'LaboQuantique', batterie = 40 WHERE id_robot = 3; -- R-GammaRay
UPDATE robots SET localisation = 'BaseRebelle', batterie = 55 WHERE id_robot = 4; -- R-DeltaForce
UPDATE robots SET localisation = 'NeoCity', batterie = 90 WHERE id_robot = 5;   -- R-Eevee
UPDATE robots SET localisation = 'BourgPalette', batterie = 95 WHERE id_robot = 6; -- R-Aloy
UPDATE robots SET localisation = 'BaseRebelle', batterie = 60 WHERE id_robot = 7; -- R-C3PO
UPDATE robots SET localisation = 'BaseRebelle', batterie = 75 WHERE id_robot = 8; -- R-R2D2
UPDATE robots SET localisation = 'NeoCity', batterie = 30 WHERE id_robot = 9;   -- R-T800
UPDATE robots SET localisation = 'DômeCentral', batterie = 80 WHERE id_robot = 10; -- R-WallE


-- Modifications valeurs des scenarios
UPDATE scenarios SET localisation = 'NeoCity' WHERE id_scenario = 1;   -- Pokémon blessé + générateur warp instable
UPDATE scenarios SET localisation = 'DômeCentral' WHERE id_scenario = 2; -- Collision Guardians Hylien
UPDATE scenarios SET localisation = 'DômeCentral' WHERE id_scenario = 3; -- Fuite O2
UPDATE scenarios SET localisation = 'NeoCity' WHERE id_scenario = 4;   -- Villageois paniqué
UPDATE scenarios SET localisation = 'BourgPalette' WHERE id_scenario = 5; -- Machine corrompue
UPDATE scenarios SET localisation = 'NeoCity' WHERE id_scenario = 6;   -- Simulation VR
UPDATE scenarios SET localisation = 'BaseRebelle' WHERE id_scenario = 7; -- Sabotage réacteur
UPDATE scenarios SET localisation = 'LaboQuantique' WHERE id_scenario = 8; -- Expérience Pokémon incontrôlée
