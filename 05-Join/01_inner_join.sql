-- INNER JOIN es un comando para unir tablas en base a un criterio

--JOIN en tablas realcionadas 1:1 
SELECT * FROM users
INNER JOIN dni;
-- esto ya es ejecutable el inner join trae las tablas q deseamos comparar
SELECT * FROM users
INNER JOIN dni
ON users.users_id = dni.users_id;
-- esta es la verdadera forma en q se usaria el inner join junto con un on y especificando los 
-- parametros q relacionan las tablas a comparar 
-- el inner join solo trae los datos q son comunes en ambas tablas... en este caso la funcion
-- solo me trajo los usuarios de la lista users q tenian especificado el dni en la lista dni
SELECT * FROM users
JOIN dni
ON users.users_id = dni.users_id;
-- en la mayoria de bases de datos poner inner join es lo mismo q solo poner join
SELECT name, dni_number FROM users
JOIN dni
ON users.users_id = dni.users_id
ORDER BY edad DESC;-- se pueden hacer pedidos mucho mas complejos o especificos

--JOIN en tablas realcionadas 1:N Basicamente no cambia nada la sintaxis
SELECT * FROM users
JOIN companies
ON users.company_id = companies.company_id;
-- siempre hay q especificar los campos q comparten ambas tablas
-- en este caso me mostraria toda la info de users y de companies q esten pero solo de los q esten relacionados
SELECT * FROM companies
JOIN users
ON users.company_id = companies.company_id;
-- en este caso seria la misma informacion pero solo cambia el orden 
-- primero mostraria la compañia y despues los datos de la la tabla users relacionados a las companies
SELECT companies.name, users.name FROM companies
JOIN users
ON users.company_id = companies.company_id;
-- este caso simplemente especifica q solo me de elk dato del nombre de la company y el nombre del user

--JOIN en tablas realcionadas N:N o N:M
--este tipo de relacion normalmente usa 3 tablas en la q hay una intermediaria q guarda todas las relaciones
SELECT * 
FROM users_lenguajes
JOIN users ON users_lenguajes.users_id = users.users_id
JOIN lenguajes ON users_lenguajes.id_lenguaje = lenguajes.id_lenguaje;
-- la sintaxis cambia un poco porq al haber una tabla intermedia q guarda las relaciones entre ambas
-- se tendria q poner 2 JOIN counsultando las relaciones q fueron especificas en la tabla intermedia
-- en este caso la tabla seria un kilombo porq no se especifica q parametro se quiere mostrar entonces muestra todo

SELECT users.name,lenguajes.name -- aqui especificamos los cambios a traer
FROM users_lenguajes
JOIN users ON users_lenguajes.users_id = users.users_id
JOIN lenguajes ON users_lenguajes.id_lenguaje = lenguajes.id_lenguaje;
--en este caso es lo mismo nada mas q retornaria los el users.name y el lenguaje.name para q sea mas visible la relacion

--cambiar el orden de las tablas a consultar no afecta los resultados