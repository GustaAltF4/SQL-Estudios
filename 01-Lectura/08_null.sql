SELECT * FROM users WHERE eMail IS null;
-- reotrnaria los elemntos de la tabla q su email sea null
SELECT * FROM users WHERE eMail IS NOT null;
--reotrnaria los elemntos de la tabla q su email no sea null
SELECT * FROM users WHERE eMail IS NOT null AND edad=15;

SELECT name,surname, IFNULL(edad,0) FROM users;
-- en este caso trae el nombre, apellido y la edad pero SI FUERA NULA(ifnull) mostraria 0 en vez de null
-- el problema es q me muestra la columna con el nombre de la funcion
SELECT name,surname, IFNULL(edad,0) AS edad FROM users;
-- entonces es comun agregarle un alias (AS)
