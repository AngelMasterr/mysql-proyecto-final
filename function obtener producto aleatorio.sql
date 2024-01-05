CREATE DEFINER=`root`@`localhost` FUNCTION `f_producto_aleatorio`() 
RETURNS varchar(40) CHARSET utf8mb4
BEGIN
	DECLARE vCODIGO VARCHAR(20);
    DECLARE vDESCRIPCION VARCHAR(20);
    DECLARE vResultado VARCHAR(40);
    DECLARE vmax INT;
    DECLARE valeatorio INT;

    SELECT count(*) INTO vmax FROM productos;
    SET valeatorio = f_aleatorio(1, vmax);
    SET valeatorio = valeatorio - 1;
    
    SELECT CODIGO, DESCRIPCION INTO vCODIGO, vDESCRIPCION FROM productos LIMIT valeatorio, 1;
    
    SET vResultado = CONCAT(vCODIGO, ', ', vDESCRIPCION);
    RETURN vResultado;
END