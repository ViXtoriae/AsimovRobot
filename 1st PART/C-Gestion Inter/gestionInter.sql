use projetrobot;

START TRANSACTION;

-- Step 1 : la dispo des robots
SELECT etat FROM robots
WHERE id_robot = 6 for UPDATE;

-- Step 2: si actif, alors intervention
UPDATE robots
    SET etat= 'en intervention'
    WHERE id_robot = 6 and etat= 'actif';

-- Step 3: nouvelle action
INSERT INTO actions (id_action, id_robot, id_humain, id_scenario, action, resultat, timestamp)
VALUES (
    11, 6, 5, 5, "Neutralisation de la machine corrompue", 'succès', NOW()
);

COMMIT;