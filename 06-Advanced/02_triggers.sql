--Un trigger en SQL es un objeto de la base de datos que se ejecuta automáticamente en respuesta
-- a ciertos eventos en una tabla, como INSERT, UPDATE o DELETE.

CREATE TRIGGER nombreTrigger
(cuando)BEFORE/AFTER (accion)INSERT/UPDATE/DELETE
ON users(en q tabla);
FOR EACH ROW(para quien osea q campos)
BEGIN
(isntruccion) 
END ;

-- creo este trigger q se va a lanzar si un usuario actualiza su email
delimiter |
CREATE TRIGGER tg_email--trigger 
AFTER UPDATE ON users-- despues de un update en la tabla users
FOR EACH ROW-- for each
BEGIN
	IF OLD.email<> NEW.email THEN--si el email anterior (OLD) y el nuevo (NEW) son distintos(<>) entonces(THEN)
		INSERT INTO email_history(user_id,email) -- inserta en la tabla email_history(user_id,email)
        VALUES (OLD.users_id,OLD.email);--los valores (OLD.users_id,OLD.email)
	END IF;
END;
|

UPDATE  users SET email = "acostag.123456@gmail.com" WHERE users_id = 1;
-- entonces actualizo el email del user con id 1
-- en la tabla email_history me guardo el id del usuario y el email anterior q tenia

DROP TRIGGER nombreTrigger
--eliminar un triger