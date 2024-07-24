--RELACION 1:1
CREATE TABLE dni(
	dni_id int NOT NULL UNIQUE AUTO_INCREMENT AUTO_INCREMENT,
    dni_number int NOT NULL,
    users_id int,
    FOREIGN KEY(users_id) REFERENCES users (users_id)
);-- se crea una tabla que usa como clave foranea la primary key (users_id) de la tabla users
-- asi se crea una relacion 1:1

------------------------------------------------------------------------------------------------------------------------

--RELACION 1:N 
-- Crear la tabla 'companies' 
CREATE TABLE companies(
    company_id int AUTO_INCREMENT PRIMARY KEY, -- Crear una columna 'company_id' que se autoincrementa y es la clave primaria
    name varchar(100) NOT NULL -- Crear una columna 'name' que almacena hasta 100 caracteres y no puede ser nula
);

-- Modificar la tabla 'users' para agregar una nueva columna 'company_id'
ALTER TABLE users
ADD company_id int; -- Añadir una columna 'company_id' de tipo entero a la tabla 'users'

-- Modificar la tabla 'users' para añadir una clave foránea
ALTER TABLE users
ADD CONSTRAINT fk_companies -- Añadir una restricción llamada 'fk_companies'
FOREIGN KEY (company_id) REFERENCES companies (company_id); -- Definir que 'company_id' en 'users' es una clave foránea que referencia a 'company_id' en 'companies'

------------------------------------------------------------------------------------------------------------------------

--RELACION N:N
-- Crear la tabla 'lenguajes' para almacenar diferentes lenguajes de programación
CREATE TABLE lenguajes (
    id_lenguaje int AUTO_INCREMENT PRIMARY KEY,  -- Columna 'id_lenguaje' con auto-incremento y clave primaria
    name varchar(100) NOT NULL  -- Columna 'name' para el nombre del lenguaje, con un máximo de 100 caracteres y que no puede ser nula
);

-- Crear la tabla intermedia 'users_lenguajes' para la relación muchos a muchos entre usuarios y lenguajes
CREATE TABLE users_lenguajes (
    id_lenguaje_user int AUTO_INCREMENT PRIMARY KEY,  -- Columna 'id_lenguaje_user' con auto-incremento y clave primaria
    users_id int,  -- Columna 'users_id' para almacenar la referencia al usuario
    id_lenguaje int,  -- Columna 'id_lenguaje' para almacenar la referencia al lenguaje
    FOREIGN KEY (users_id) REFERENCES users(users_id),  -- Definición de clave foránea que referencia la columna 'users_id' en la tabla 'users'
    FOREIGN KEY (id_lenguaje) REFERENCES lenguajes(id_lenguaje),  -- Definición de clave foránea que referencia la columna 'id_lenguaje' en la tabla 'lenguajes'
    UNIQUE (users_id, id_lenguaje)  -- Restricción única para evitar duplicados de la combinación 'users_id' y 'id_lenguaje'
);

-------------------
INSERT INTO dni (dni_number,users_id) VALUES (11111111,1);
INSERT INTO dni (dni_number,users_id) VALUES (22222222,2);
INSERT INTO dni (dni_number,users_id) VALUES (33333333,3);
INSERT INTO dni (dni_number) VALUES (44444444);
INSERT INTO dni (dni_number,users_id) VALUES (11111111,1);

INSERT INTO companies (name) VALUES ("CacasCorp.");
INSERT INTO companies (name) VALUES ("Apple");
INSERT INTO companies (name) VALUES ("Google");

UPDATE users SET company_id = 1 WHERE users_id = 2 ;
UPDATE users SET company_id = 1 WHERE users_id = 3 ;
UPDATE users SET company_id = 2 WHERE users_id = 4 ;
UPDATE users SET company_id = 3 WHERE users_id = 5 ;
UPDATE users SET company_id = 2 WHERE users_id = 6 ;
UPDATE users SET company_id = 3 WHERE users_id = 7 ;
UPDATE users SET company_id = 3 WHERE users_id = 8 ;
UPDATE users SET company_id = 1 WHERE users_id = 9 ;
UPDATE users SET company_id = 1 WHERE users_id = 16 ;

INSERT INTO lenguajes (name) VALUES ("Java");
INSERT INTO lenguajes (name) VALUES ("JavaScript");
INSERT INTO lenguajes (name) VALUES ("Kotlin");
INSERT INTO lenguajes (name) VALUES ("Python");
INSERT INTO lenguajes (name) VALUES ("C#");
INSERT INTO lenguajes (name) VALUES ("C++");

INSERT INTO users_lenguajes (users_id, id_lenguaje) VALUES (1,1);
INSERT INTO users_lenguajes (users_id, id_lenguaje) VALUES (1,2);
INSERT INTO users_lenguajes (users_id, id_lenguaje) VALUES (1,5);
INSERT INTO users_lenguajes (users_id, id_lenguaje) VALUES (2,3);
INSERT INTO users_lenguajes (users_id, id_lenguaje) VALUES (2,5);
