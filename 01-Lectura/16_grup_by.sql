SELECT  max(edad) FROM users GROUP BY edad;
-- grup by literalmete agrupa por un dato q nosotros le digamos pero siempre se usa con otros operadores
SELECT  COUNT(edad) FROM users GROUP BY edad;
-- en este caso los agrupaia por la cuenta de edad osea cuantos hay de 33 daria 2(porq hay 2 de 33) ,1 de 32 
SELECT  COUNT(edad),edad FROM users GROUP BY edad ORDER BY edad ASC;
-- en este caso agruparia por Count(edad) y los ordena tambien por edad pero ascendente
-- y de paso al lado tambien retorna edad para q sea mas entedible
SELECT  COUNT(edad),edad FROM users WHERE edad>25 GROUP BY edad ORDER BY edad ASC;
-- y este igual pero agregando la restriccion q solo retorne los mayores de 25 