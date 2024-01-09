# Crear usuario que se pueda conectar donde sea %
CREATE USER 'user03'@'%' IDENTIFIED BY 'user03';

# Darle ciertos privilegios al usuario y solo pueda acceder a la base de datos 'jugos_ventas'
 GRANT SELECT, INSERT, UPDATE, DELETE, CREATE TEMPORARY TABLES, 
 LOCK TABLES, EXECUTE ON jugos_ventas.* TO 'user03'@'%';
 
 
 
# Crear usuario que se pueda conectar donde sea %
CREATE USER 'user04'@'%' IDENTIFIED BY 'user04';

# Darle ciertos privilegios al usuario y solo pueda acceder a la tabla 'facturas'
 GRANT SELECT, INSERT, UPDATE, DELETE
 ON jugos_ventas.facturas TO 'user04'@'%';
 
 # Darle ciertos privilegios al usuario y solo pueda acceder a la tabla 'tabla_de_vendedores'
 GRANT SELECT
 ON jugos_ventas.tabla_de_vendedores TO 'user04'@'%';