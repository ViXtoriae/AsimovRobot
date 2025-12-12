SET @besto_robot := (
    SELECT id_robot
    FROM vue_priorite_robots
    WHERE etat = 'actif'
    ORDER BY score_priorite DESC
    LIMIT 1
);

START TRANSACTION;

UPDATE robots
SET etat = 'en intervention'
WHERE id_robot = @besto_robot;

INSERT INTO actions(id_action, id_robot, id_humain, id_scenario, action, resultat, timestamp)
VALUES (
    (SELECT IFNULL(MAX(id_action), 0) + 1 FROM actions),
    @besto_robot,
    1,
    1,
    'Intervention automatisée',
    'succès',
    NOW()
);

COMMIT;
