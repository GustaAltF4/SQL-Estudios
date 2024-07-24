SELECT * FROM users WHERE edad=33;
-- retorna los datos de la tabla users q cumplan con el where ,mostraria la fila completa 

SELECT name FROM users WHERE edad=33;
-- retorna los datos name de la tabla q tengan 33, solo mostraria la columna elejida osea name

SELECT DISTINCT name FROM users WHERE edad=33;
SELECT DISTINCT edad FROM users WHERE edad=33;