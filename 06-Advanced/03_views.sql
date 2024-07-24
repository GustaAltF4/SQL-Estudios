--Una view en SQL es una consulta predefinida que se almacena en la base de datos. 
--Cuando se accede a una view, se ejecuta la consulta y se muestran los resultados como si fueran una tabla. 
--Las views pueden simplificar el acceso a datos complejos y mejorar la seguridad 
--al limitar el acceso directo a las tablas.
CREATE VIEW v_aldult_users AS
SELECT name,edad
FROM users
WHERE edad>=18;

SELECT * FROM v_aldult_users;
-- en este caso el view seria de todos los users mayores de edad mostrando solo el name y la edad

DROP VIEW nombre_de_la_View
--eiliminar una view