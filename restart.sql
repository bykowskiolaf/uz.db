DROP DATABASE lab;
DROP USER 'lab'@'localhost';
DROP USER 'lab'@'%';
CREATE DATABASE lab;
GRANT ALL PRIVILEGES ON lab.* TO 'lab'@'localhost' IDENTIFIED BY 'lab';
GRANT ALL PRIVILEGES ON lab.* TO 'lab'@'%' IDENTIFIED BY 'lab';
USE mysql;
SELECT host, user, password FROM user WHERE user LIKE 'lab';
SELECT host, db, user FROM db WHERE db LIKE 'lab';