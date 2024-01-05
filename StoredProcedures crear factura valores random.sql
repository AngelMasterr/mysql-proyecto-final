CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_venta`(fecha DATE, maxitem INT, maxcantidad INT)
BEGIN
	DECLARE vcliente VARCHAR(40);
	DECLARE vproducto VARCHAR(40);
	DECLARE vvendedor VARCHAR(30);   
    DECLARE vcantidad INT;
	DECLARE vprecio FLOAT;
	DECLARE vitems INT;
    DECLARE vnfactura INT;
    DECLARE vcontador INT DEFAULT 1;    
    
	SELECT MAX(NUMERO)+1 INTO vnfactura FROM facturas;
    SET vcliente = `f_cliente_aleatorio`();    
    SET vvendedor = `f_vendedor_aleatorio`();
    INSERT INTO facturas (`NUMERO`, `FECHA`, `DNI`, `MATRICULA`, `IMPUESTO`)
    VALUES (vnfactura, fecha, vcliente, vvendedor, 0.16);
    SET vitems = `f_aleatorio`(1, maxitem);
    
    WHILE vcontador <= vitems
    DO
		SET vproducto = `f_producto_aleatorio`();
        SET vcantidad = `f_aleatorio`(1, maxcantidad);
        SELECT PRECIO INTO vprecio FROM productos WHERE CODIGO = vproducto;
        INSERT INTO items(`NUMERO`, `CODIGO`, `CANTIDAD`, `PRECIO`) 
        VALUES (vnfactura, vproducto, vcantidad, vprecio);
        SET vcontador = vcontador + 1;
    END WHILE;
END