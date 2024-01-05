# CREA UN NUMERO ALEATORIO EN UN RANGO ESPECIFICO
# MIN = 20 Y MAX = 250
# (RAND() * (MAX - MIN + 1)) + MIN

SELECT (rand() * (250-20+1)) + 20 AS ALEATORIO;
SELECT FLOOR((rand() * (250-20+1)) + 20) AS ALEATORIO;

# permite que los usuarios con permisos adecuados puedan crear funciones y procedimientos
SET GLOBAL log_bin_trust_function_creators = 1;

SELECT f_aleatorio(1, 10) AS RESULTADO;

SELECT f_cliente_aleatorio() AS DNI_CLIENTE;

SELECT `f_producto_aleatorio`() AS PRODUCTO_DESCRIPCION;

SELECT `f_vendedor_aleatorio`() AS VENDEDOR_COMISION;

