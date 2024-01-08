# Crear usuario
CREATE USER 'user02'@'localhost' IDENTIFIED BY 'user02';

# Darle ciertos privilegios al usuario
 GRANT SELECT, INSERT, UPDATE, DELETE, CREATE TEMPORARY TABLES, 
 LOCK TABLES, EXECUTE ON *.* TO 'user02'@'localhost';
 
 
 # Crear usuario de solo lectura
CREATE USER 'read01'@'localhost' IDENTIFIED BY 'read01';

# Darle solo permisos de lectura privilegios al usuario
 GRANT SELECT, EXECUTE ON *.* TO 'read01'@'localhost';