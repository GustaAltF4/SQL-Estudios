SELECT *,
CASE -- en el caso de 
	WHEN edad> 25 THEN "Es mayor de 25"-- cuando(WHEN) edad sea mayor a 25 entonces (then)...
    ELSE "Es menor de 25" -- else sino (else)...
END AS edadTexto -- fin(END) de case como (AS) edadtexto porq lo agrega como otra columna 
FROM users
-- case tienen esta sintaxsis especifica
-- es normal escribir una instruccion mas larga asi en distintas lineas
SELECT *,
CASE 
	WHEN edad> 18 THEN TRUE
    ELSE FALSE
END AS  "es mayor de edad?"
FROM users
-- exactemanete lo mismo pero intepretado como un campo booleano 1 true 0 false
SELECT *,
CASE 
	WHEN edad> 19 THEN "es Mayor de Edad" -- si esto dijera 18 solo tiraria la primera opcion porq comprueba la primera 
    WHEN edad=18 THEN "acaba de cumplir la Mayoria de Edad"-- e ignoraria esta otra
    ELSE "es Menor de Edad"
END AS "es mayor de edad?"-- si no se pone al alias(as) pone de nombre a la columna q crea toda la condicion por eso se usa AS
-- funciona como un swich case se toda la vida 
