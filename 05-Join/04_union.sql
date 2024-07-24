-- union se traeria todos los campos de ambas listas q comparten claves primarias y foraneas
SELECT users_id FROM users
UNION
SELECT users_id FROM dni 
-- existe esta consulta pero no es habitual y no se puede aplicar a los ejemplos q hice
SELECT users_id FROM users
UNION ALL
SELECT users_id FROM dni 

SELECT users.users_id AS u_users_id , dni.users_id AS d_users_id
FROM users
LEFT JOIN dni
ON users.users_id = dni.users_id
UNION
SELECT users.users_id AS users_id , dni.users_id AS d_users_id
FROM users
RIGHT JOIN dni
ON users.users_id = dni.users_id;

SELECT *
FROM users
LEFT JOIN dni
ON users.users_id = dni.users_id
UNION
SELECT *
FROM users
RIGHT JOIN dni
ON users.users_id = dni.users_id;
