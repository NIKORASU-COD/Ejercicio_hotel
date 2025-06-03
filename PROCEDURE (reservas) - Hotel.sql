
-- PROCEDURE INSERTAR RESERVAS

USE `hotel_transilvania`;
DROP procedure IF EXISTS `InsertarReserva`;

DELIMITER $$
USE `hotel_transilvania`$$
CREATE PROCEDURE InsertarReserva (
IN FeReserva TIMESTAMP ,
IN FeInicio TIMESTAMP,
IN DiasEstancia INT,
IN ID_Habi INT,
IN ID_Cliente VARCHAR (10)
)
BEGIN	
	INSERT INTO Reservas (FechaReserva, FechaInicioEstancia, DiasEstancia, ID_Habitacion, ID_Cliente)
    VALUES (NOW(), FeInicio, DiasEstancia,ID_Habi, ID_Cliente);
    
    UPDATE Habitacion
    SET Estado = 0
    WHERE ID_Habitacion = ID_Habi;
    
END$$

DELIMITER ;



