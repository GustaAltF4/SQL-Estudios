CREATE TABLE persons(
	id int,
    name varchar(30),
    age int,
    email varchar(40),
    created date
);

CREATE TABLE persons2(
	id int NOT NULL,-- es util ponerle restricciones a las tablas para q cumplan funciones especificas
    name varchar(30) NOT NULL,-- en este caso not null no nos dejaria intruducir q el parametro sea nulo si o si tendria q tener un valor
    age int,
    email varchar(40),
    created date
);

CREATE TABLE persons3(
	id int NOT NULL UNIQUE,-- RESTRICCION UNIQUE es para q el parametro sea unico osea q no se pueda repetir
    name varchar(30) NOT NULL,
    age int,
    email varchar(40),
    created date
    
);

CREATE TABLE persons4(
	id int NOT NULL UNIQUE PRIMARY KEY ,-- primary key indica q este paramtro en este caso id es el indentificador primario de la tabla
    name varchar(30) NOT NULL,
    age int,
    email varchar(40),
    created date
    
);

CREATE TABLE persons5 (
	id int NOT NULL UNIQUE PRIMARY KEY ,
    name varchar(30) NOT NULL,
    age int CHECK(age>=18),-- check serviria para indicar q solo se puede cargar a la tabla cuando el dato en este caso age sea mayor o igual a 18
    email varchar(40),
    created date-- date FECHA// datetime FECHA Y HORA
    
);

CREATE TABLE persons6 (
	id int NOT NULL UNIQUE PRIMARY KEY ,
    name varchar(30) NOT NULL,
    age int CHECK(age>=18),
    email varchar(40),
    created datetime DEFAULT CURRENT_TIMESTAMP()
    -- DEFAULT serviria para darle un valor por defecto puede ser cualquier cosa un string un int 
    --en este caso se usa CURRENT_TIMESTAMP() es una funcion q le pone la fecha y hora actual 
    
);

CREATE TABLE persons7 (
	id int NOT NULL UNIQUE PRIMARY KEY AUTO_INCREMENT ,-- la funcion AUTO_INCREMENT indica lo q dice q se auto incrementa a si mismo
    name varchar(30) NOT NULL,
    age int CHECK(age>=18),
    email varchar(40),
    created datetime DEFAULT CURRENT_TIMESTAMP()
    
);