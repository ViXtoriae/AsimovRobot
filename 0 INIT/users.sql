use projetrobot;

CREATE USER 'admin'@'localhost' IDENTIFIED BY '123';
grant ALL PRIVILEGES on * to 'admin'@'localhost';

CREATE USER 'firstanalyst'@'localhost' IDENTIFIED BY '123';
GRANT select on <insert views> TO 'firstanalyst'@'localhost';

CREATE USER 'techops'@'localhost' IDENTIFIED BY '123';
GRANT select on robots TO 'techops'@'localhost';
GRANT update ON robots TO 'techops'@'localhost';
GRANT insert, select on actions TO 'techops'@'localhost';

CREATE USER 'supethics'@'localhost' IDENTIFIED BY '123';
GRANT insert, select on actions TO 'supethics'@'localhost';
GRANT select on <insert views ethiques> TO 'supethics'@'localhost';

FLUSH PRIVILEGES;

