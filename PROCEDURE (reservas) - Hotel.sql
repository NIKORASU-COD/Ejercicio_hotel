-- PROCEDURE INSERTAR RESERVAS

USE `hotel_transilvania`;
DROP procedure IF EXISTS `InsertarReserva`;

DELIMITER $$
USE `hotel_transilvania`$$
CREATE PROCEDURE InsertarReserva (
IN FeReserva TIMESTAMP ,
IN FeInicio TIMESTAMP,
IN DiasEstancia INT,
IN ID_Habitacion INT,
IN ID_Cliente VARCHAR (10)
)
BEGIN	
	INSERT INTO Reserva (FechaReserva, FechaInicioEstancia, DiasEstancia, ID_Habitacion, ID_Cliente)
    VALUES (NOW(), FeInicio, DiasEstancia,ID_Habitacion, ID_Cliente);
END$$

DELIMITER ;