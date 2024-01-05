CREATE DEFINER=`root`@`localhost` FUNCTION `f_vendedor_aleatorio`() RETURNS varchar(40) CHARSET utf8mb4
BEGIN
	DECLARE vMatricula VARCHAR(5);
    DECLARE vResultado VARCHAR(20);
    DECLARE vmax INT;
    DECLARE valeatorio INT;

    SELECT count(*) INTO vmax FROM vendedores;
    SET valeatorio = f_aleatorio(1, vmax);
    SET valeatorio = valeatorio - 1;
    
    SELECT MATRICULA INTO vMatricula FROM vendedores LIMIT valeatorio, 1;
    
    SET vResultado = vMatricula;
    RETURN vResultado;
END