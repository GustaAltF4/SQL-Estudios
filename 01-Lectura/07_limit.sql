SELECT * FROM users WHERE NOT eMail LIKE '%gmail.com' OR edad= 33 LIMIT 1;
-- retorna todos los que no tengan el gmail.com OR q tengan edad = 33 PERO LIMITaria los resultados a 1
SELECT * FROM users LIMIT 3;
-- retorna todos los datos de la la tabla users pero limitaria los resultados a 3 (los primeros 3)