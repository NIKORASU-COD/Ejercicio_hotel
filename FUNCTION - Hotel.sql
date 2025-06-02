-- FUNCTION PARA CALCULAR TOTAL RESERVA

USE `hotel_transilvania`;
DROP function IF EXISTS `CalcularTotalReserva`;

DELIMITER $$
USE `hotel_transilvania`$$
CREATE FUNCTION CalcularTotalReserva (
FechaReserva TIMESTAMP,
FechaInicioEstancia TIMESTAMP,
DiasEstancia INT,
ValorHabitacion DECIMAL(8,2) 
)
RETURNS DECIMAL(8,2)
BEGIN
DECLARE ValorTotal DECIMAL(8,2);
DECLARE DiasAnterioridad INT;
SET DiasAnterioridad = DATEDIFF(FechaInicioEstancia, FechaReserva);
SET ValorTotal = DiasEstancia * ValorHabitacion;
IF DiasAnterioridad >= 15 THEN SET ValorTotal = ValorTotal - ((ValorTotal * 10) / 100); 
END IF;
RETURN ValorTotal;
END$$

DELIMITER ;

SELECT CalcularTotalReserva (NOW(), "2025-06-26 10:30:00", 4, 80000.00) AS ValorHotel;