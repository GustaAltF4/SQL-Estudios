--RIGHT JOIN es exactamente igual q el left pero al reves
SELECT users.name,dni_number FROM users
LEFT JOIN dni-- osea esta 
ON dni.users_id = users.users_id;
-- mostraria todos los datos de la segunda tabla especificada y los datos de la otra tabla completa como null
SELECT users.name,dni_number FROM dni
right JOIN users 
ON dni.users_id = users.users_id;
-- este ejemplo mostraria todos los datos de users y dni q no esten especificados se completarian con null