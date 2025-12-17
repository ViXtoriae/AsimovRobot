-- add 'en intervention' --
ALTER TABLE robots MODIFY etat VARCHAR(20); --La ligne manquante pour implémenter le new statut--
ALTER TABLE robots DROP constraint robots_chk_1;
ALTER TABLE robots add constraint robots_chk_1 CHECK (etat IN ('actif', 'hors service', 'en panne', 'en intervention'));

UPDATE robots
    SET etat = 'en intervention' Where id_robot = 2;
UPDATE robots
    SET etat = 'en intervention' WHERE id_robot = 10;

-- view pour les techniciens avec robots affectés à une intervention--
CREATE or REPLACE VIEW vue_en_intervention AS 
SELECT
    robot.id_robot,
    robot.nom_robot,
    robot.modele,
    robot.etat,

    action.id_action,
    action.id_scenario,
    action.action,
    action.resultat,
    action.timestamp

FROM robots robot
JOIN actions action ON robot.id_robot= action.id_action
WHERE robot.etat = 'en intervention';

-- add privileges
GRANT SELECT ON vue_en_intervention TO 'techops'@'localhost';

GRANT SELECT ON vue_en_intervention TO 'firstanalyst'@'localhost';

-- secure
REVOKE ALL ON vue_robots_en_intervention FROM PUBLIC;
