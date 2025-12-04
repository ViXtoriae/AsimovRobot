CREATE USER 'admin'@'localhost' IDENTIFIED BY '123';
grant select on * to 'admin'@'localhost';

CREATE USER 'firstanalyst'@'localhost' IDENTIFIED BY '123';
GRANT <insert views> TO 'firstanalyst'@'localhost';

CREATE USER 'techops'@'localhost' IDENTIFIED BY '123';
GRANT <robotétats> TO 'techops'@'localhost';
CREATE USER 'supethics'@'localhost' IDENTIFIED BY '123';
GRANT <analysescenar+conflits> TO 'supethics'@'localhost';
 
