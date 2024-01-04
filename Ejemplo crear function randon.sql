CREATE DEFINER=`root`@`localhost` FUNCTION `f_aleatoria`(min INT, max INT) RETURNS int
BEGIN
DECLARE vresultado INT;
SELECT FLOOR((rand() * (max-min+1)) + min) INTO vresultado;
RETURN vresultado;
END