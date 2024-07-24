-- agregar un indice ayudaria a q algunos datos se consulten mas rapido 
-- pero volveria la lista mas pesada un haria mas rapida la lectura pero complicaria mucho la escritura, creacion , elimanacion,etc
-- hay q tener cuidado y saber bien en q capos poner indices
CREATE INDEX idx_name ON users(name);
-- CREATE INDEX ||nombre_del_indice|| ON ||nombreTABLA(campoTABLA);
CREATE UNIQUE INDEX idx_name ON users(name,surname);
-- se podria hacer unico y tambien concatenar con mas campos
SELECT *  FROM users WHERE name = "caca";
-- si se hiciera esta consulta con el indice creado sobre el campo name o el q sea 
-- seria muchisimo mas rapido al haber creado un indice 
-- pero se nota en tablas reales muy largas en estos ejemplos q hice ni se nota porq no tiene muchos datos
DROP INDEX idx_name ON users;
-- asi se borraria un indice

CREATE UNIQUE INDEX idx_name_seruname ON users(name,surname)