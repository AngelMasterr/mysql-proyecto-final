# Crear usuario
CREATE USER 'user02'@'localhost' IDENTIFIED BY 'user02';

# Darle ciertos privilegios al usuario
 GRANT SELECT, INSERT, UPDATE, DELETE, CREATE TEMPORARY TABLES, 
 LOCK TABLES, EXECUTE ON *.* TO 'user02'@'localhost';