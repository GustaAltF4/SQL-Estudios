/*
Una procedure (procedimiento almacenado) en SQL es un conjunto de instrucciones SQL precompiladas
que se almacenan en la base de datos y se pueden ejecutar como una unidad.
Las procedures permiten ejecutar operaciones complejas y repetitivas con una única llamada, 
mejorando la eficiencia y la reutilización del código.
*/

-- Cambiar el delimitador temporalmente para permitir el uso de punto y coma dentro del bloque BEGIN...END
DELIMITER //

-- Crear una nueva procedure llamada p_user_by_id con un parámetro de entrada
CREATE PROCEDURE p_user_by_id(IN user_id INT)
BEGIN
    -- Seleccionar todos los registros de la tabla users donde el id es igual al parámetro de entrada user_id
    SELECT * FROM users WHERE id = user_id;
END //

-- Restaurar el delimitador original a punto y coma
DELIMITER ;
-- Llamar al procedimiento p_user_by_id con el parámetro user_id igual a 1
CALL p_user_by_id(1);
--______________________________________________________________________________________________________

DELIMITER //
CREATE PROCEDURE p_all_users()
BEGIN 
	SELECT * FROM users;
END //

CALL p_all_users()

DELIMITER //
CREATE PROCEDURE p_age_users(IN edad int)
BEGIN 
	SELECT * FROM users WHERE edad= edad;
END //

DROP PROCEDURE p_age_users;


DELIMITER //
CREATE PROCEDURE p_age_users(IN edadParam int)
BEGIN 
	SELECT * FROM users WHERE edad= edadParam;
END //

CALL p_age_users(33)