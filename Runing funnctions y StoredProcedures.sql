SELECT f_cliente_aleatorio() AS DNI_CLIENTE;

SELECT `f_producto_aleatorio`() AS PRODUCTO_DESCRIPCION;

SELECT `f_vendedor_aleatorio`() AS VENDEDOR_COMISION;

CALL `sp_venta`('20240104', 15, 100);

SELECT MAX(NUMERO) FROM facturas;
SELECT * FROM empresa.facturas;