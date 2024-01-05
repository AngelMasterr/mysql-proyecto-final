CREATE DEFINER=`root`@`localhost` FUNCTION `f_cliente_aleatorio`() RETURNS varchar(40) CHARSET utf8mb4
BEGIN
    DECLARE vDNI VARCHAR(20);
    DECLARE vNOMBRE VARCHAR(20);
    DECLARE vResultado VARCHAR(40);
    DECLARE vmax INT;
    DECLARE valeatorio INT;

    SELECT count(*) INTO vmax FROM clientes;
    SET valeatorio = f_aleatorio(1, vmax);
    SET valeatorio = valeatorio - 1;
    
    SELECT DNI, NOMBRE INTO vDNI, vNOMBRE FROM clientes LIMIT valeatorio, 1;
    
    SET vResultado = vDNI;
    RETURN vResultado;
END