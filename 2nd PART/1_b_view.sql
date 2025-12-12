CREATE OR REPLACE VIEW vue_priorite_robots_geo AS
SELECT
    viewpriorob.id_robot,
    viewpriorob.nom_robot,
    viewpriorob.modele,
    viewpriorob.etat,
    viewpriorob.succes,

    robot.localisation,
    robot.batterie,

    scenar.id_scenario,
    scenar.description,
    scenar.priorite_loi,

    (
        viewpriorob.score_priorite + (robot.batterie /2 ) +
        (CASE WHEN robot.localisation = scenar.localisation THEN 75 else 0 end)
    ) as score_final

FROM vue_priorite_robots viewpriorob
JOIN robots robot ON robot.id_robot=viewpriorob.id_robot
JOIN actions action ON robot.id_robot = action.id_robot
JOIN scenarios scenar ON action.id_scenario = scenar.id_scenario
GROUP BY robot.id_robot, robot.nom_robot, robot.modele, robot.etat, robot.localisation, robot.batterie, robot.priorite_modele, scenar.id_scenario, scenar.description, scenar.priorite_loi
ORDER BY score_final DESC;

--test
SELECT * from vue_priorite_robots_geo;