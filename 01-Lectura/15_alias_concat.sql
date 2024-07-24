-- alias sirve para establecer literalmente un alias
-- recuperamos datos para intentar darle un nombre distinto al q ya tiene
SELECT name, Init_date AS "fechaDeInicio"  FROM users WHERE edad BETWEEN 20 and 40;
-- en este caso basicamente init_date tendria de alias fechaDeInicio
SELECT CONCAT(name, surname) FROM users;
-- concat permite unir columnas en una como aca se unen name y surname
SELECT CONCAT(name," ", surname) FROM users;
SELECT CONCAT("Nombre: ",name,"Apeliido: ", surname) FROM users;
-- pero tambien se le podrian concatenar cadenas de texto usando "" o ''
--al concatenarlos curiosamente no me devolvio los valores q no tenian surname o era null
SELECT CONCAT("Nombre: ",name,"Apeliido: ", surname) AS "Nombre Completo" FROM users;
-- es muy usual usar el alias (AS) junto con el concat porq al usarlo de le deja 
-- toda la funcion como numbre a la columna