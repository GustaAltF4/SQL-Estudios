DELETE FROM users;
-- este comando tampoco se debe usar sin especicar un condicional porq podria borrar todo... 
DELETE FROM users WHERE users_id= 5;
-- la sintaxis cambia un poco
-- en este caso se borraria de la lista users el usuario con el users_id=5