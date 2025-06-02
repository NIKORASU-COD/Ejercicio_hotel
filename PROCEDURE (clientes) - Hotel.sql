-- PROCEDURE INSERTAR CLIENTES

USE `hotel_transilvania`;
DROP procedure IF EXISTS `InsertarCliente`;

DELIMITER $$
USE `hotel_transilvania`$$
CREATE PROCEDURE InsertarCliente (
IN Doc VARCHAR(10),
IN Nom VARCHAR(20),
IN Ape VARCHAR(20),
IN Ed INT
)
BEGIN
INSERT INTO Cliente (ID_Cliente, Nombre, Apellido, Edad) 
VALUES (Doc, Nom, Ape, Ed);
END$$

DELIMITER ;
