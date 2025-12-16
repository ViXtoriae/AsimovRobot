CREATE VIEW vue_conflits_passes AS
SELECT
  robot.id_robot,
  robot.nom_robot,
  
  scenar.id_scenario,
  scenar.description,
  scenar.priorite_loi,
  
  action.id_action,
  action.action,
  action.resultat
  
FROM actions action
JOIN robots robot    ON robot.id_robot = action.id_robot
JOIN scenarios scenar ON scenar.id_scenario = action.id_scenario;

GRANT SELECT ON projetrobot.vue_conflits_passes TO 'supethics'@'localhost';