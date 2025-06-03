-- TRIGGER PARA VALIDAR Y CAMBIAR EL ESTADO DE LA HABITACION 
USE `hotel_transilvania`;
DROP trigger IF EXISTS `ValidacionHabitacion`;

DELIMITER //
CREATE TRIGGER ValidacionHabitacion 
BEFORE INSERT ON Reservas
FOR EACH ROW 

BEGIN 
DECLARE EstadoHabi BOOLEAN;

SELECT Estado INTO EstadoHabi FROM Habitacion
WHERE ID_Habitacion = NEW.ID_Habitacion;

IF NEW.DiasEstancia <= 0 
THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Por favor, ingrese un número de dias de estancia valido.';
END IF;

IF EstadoHabi = 0 
THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'La habitacion en donde te deseas hospedar ya está ocupada.';
END IF;

END//
delimiter ;