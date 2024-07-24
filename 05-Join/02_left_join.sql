--LEFT JOIN 
--se trae por los datos de la tabla "izq"(osea la tabla q consultamos primero)
-- y de la union pero no de la tabla "derecha"
SELECT * FROM users
LEFT JOIN dni 
ON dni.users_id = users.users_id;

SELECT users.name,dni_number FROM users-- osea esta
LEFT JOIN dni 
ON dni.users_id = users.users_id;
-- este caso traeria el nombre de users y el dni number
-- pero al ser un left join se trae todos los campos de la tabla q consultamos primero
-- osea traeria todos los users pero los q no tengan dni completaria con null

SELECT users.name,dni_number FROM dni
LEFT JOIN users 
ON dni.users_id = users.users_id
-- en este caso se traeria el nombre de users y el dni number
--pero traeria los campos q se consulta primero
--osea q traewria todos los dni q esten cargados y los dni sin user especificado completaria con null

--TODOS LOS EJEMPLOS DEL INNER JOIN SE PODRIAN HACER PERFECTAMENTE CON EL LEFT JOIN
SELECT users.name,lenguajes.name 
FROM users_lenguajes
LEFT JOIN users ON users_lenguajes.users_id = users.users_id
LEFT JOIN lenguajes ON users_lenguajes.id_lenguaje = lenguajes.id_lenguaje;
