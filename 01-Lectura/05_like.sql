SELECT * FROM users WHERE eMail LIKE '%gmail.com';
-- retornaria todos las filas de la tabla users que tengan un eMail q termine con el gmail.com 
-- el uso de % indica q lo q este antes de gmail.com da igual
SELECT * FROM users WHERE eMail LIKE 'caca%';
-- lo mismo pero al reves trae todos los q el email empieza con caca y lo q sigue del % da igual
SELECT * FROM users WHERE eMail LIKE '%@%';
-- lo mismo pero traeria a todos los q en el email tengan un @