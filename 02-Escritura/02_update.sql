UPDATE users SET edad= 21;
--nunca se deberia usar el update sin un where porq actulizaria todas las edades de todos los usuarios en este caso 
UPDATE users SET edad= 21 WHERE users_id=7;
-- en ese caso se actulizaria la edad a 21 del usuario con el users_id 7
UPDATE users SET edad= 21 ,eMail= "123@cacas.com" WHERE users_id=15;
-- se puede obviamente actualizar mas de un dato a la vez
