INSERT INTO Habitacion (Capacidad, Precio, Estado) 
VALUES (2,120000.00, TRUE), (3,160000.00, TRUE), (4,180000.00, TRUE), (1,80000.00, TRUE), (2,120000.00, TRUE), (3,160000.00, TRUE), (4,180000.00, TRUE);

CALL InsertarCliente ("1014480875", "Nicolas", "Bautista", 18);
CALL InsertarCliente("1023456789", "Camila", "Rodríguez", 25);
CALL InsertarCliente("1039876543", "Juan", "González", 30);

CALL InsertarReserva (NOW(), "2025-06-26 10:30:00", 4, 3, "1014480875");