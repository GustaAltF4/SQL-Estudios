SELECT * FROM users WHERE name IN ('caca');
-- retornaria todos los usuarios de la lista con el nombre entre ('') pero los busca independientemente de si tiene 
-- mayusculas o no 
SELECT * FROM users WHERE name IN ('caca','mugre');
-- tambien podria retornar mas de un caracter especifico igual el criteio a buscar tiene q ser si o si espesifico 
-- si el nombre se escribiera mal no funcionaria