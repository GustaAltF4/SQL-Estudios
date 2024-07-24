SELECT  COUNT(edad) FROM users HAVING COUNT(edad)>3;
-- en este caso me mostraria cuantos tienen edad serian 6 en nuestra tabla pero having lo limita a solo mostrarlo  
-- si en este caso son mayores a 3 
SELECT  COUNT(edad) FROM users HAVING COUNT(edad)>7;
-- en este caso no mostraria nada porq solo al haber 6 users con la edad definidada el having no me dejaria mostrarlos
-- having establece limitacion sobre una propia columan agregada q estamos definiendo
/*
en SQL, la cláusula HAVING se utiliza para filtrar los resultados de un grupo de datos
que se han agregado utilizando funciones de agregado como COUNT, SUM, AVG, MAX, MIN, etc.
La cláusula HAVING se utiliza junto con GROUP BY para especificar condiciones que deben
cumplirse para que un grupo de resultados se incluya en el resultado final.

La principal diferencia entre HAVING y WHERE es que WHERE se utiliza para filtrar filas
antes de que se apliquen las funciones de agregado, mientras que HAVING se utiliza para
filtrar grupos de resultados después de que se han aplicado las funciones de agregado.*/
