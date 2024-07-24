ALTER TABLE persons8
ADD surname varchar(50);
-- agrega a la tabla una columna en este caso surname q es un varchar de 50 caracteres
ALTER TABLE persons8
RENAME COLUMN surname TO descripcion;
-- renombrar un elemento se usaria
-- RENAME COLUMN ||nombreDeLaComlumnaAmodificar|| TO ||nuevoNombre||
 ALTER TABLE persons8
MODIFY COLUMN descripcion varchar(200);
-- asi se modificaria el valor de una columna en este caso cambia el valor de descripcion de un varchar(50) a varchar(200)
-- pero se podria cambiar a cualquier otro valor ya sea int,date,etc. 
ALTER TABLE persons8
DROP COLUMN descripcion ;
-- este caso borraria por completo toda la columna llamada descripcion

ALTER TABLE `hello_mysql`.`dni` 
ADD PRIMARY KEY (`dni_id`);
;-- aca tuve a agregar a la tabla dni q sea primary key la columna dni_id