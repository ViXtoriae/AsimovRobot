UPDATE robots
SET etat = 'en panne'
WHERE id_robot IN (
    SELECT id_robot
    FROM (
        SELECT id_robot
        FROM robots
        ORDER BY RAND()
        LIMIT (SELECT CEIL(COUNT(*) * 0.2) FROM robots)
    ) AS t
);
