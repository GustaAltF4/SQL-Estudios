SELECT * FROM users ORDER BY edad;
-- selecionaria la tabla odenados por la columna edad
SELECT * FROM users ORDER BY edad ASC;-- de forma ascendente
SELECT * FROM users ORDER BY edad DESC;-- de forma descendente

SELECT * FROM users WHERE eMail = 'caca@gmail.com' ORDER BY edad DESC;
-- retornaria solo los usuarios con ese Email odernados por edad de forma descendente
SELECT name FROM users WHERE eMail = 'caca@gmail.com' ORDER BY edad DESC;
-- lo mismo pero en vez de retorname toda la columna con todos los datos solo traeria el nombre
