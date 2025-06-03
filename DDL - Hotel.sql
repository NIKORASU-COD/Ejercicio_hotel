DROP DATABASE IF EXISTS Hotel_Transilvania;
CREATE DATABASE Hotel_Transilvania;
USE Hotel_Transilvania;

CREATE TABLE Cliente (
ID_Cliente VARCHAR(10) PRIMARY KEY,
Nombre VARCHAR(20),
Apellido VARCHAR(20),
Edad INT
);

CREATE TABLE Habitacion (
ID_Habitacion INT PRIMARY KEY AUTO_INCREMENT,
Capacidad INT,
Precio DECIMAL(8,2),
Estado BOOLEAN
);

CREATE TABLE Reservas (
ID_Reserva INT PRIMARY KEY AUTO_INCREMENT,
FechaReserva TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
FechaInicioEstancia TIMESTAMP NULL,
DiasEstancia INT,
ValorTotal DECIMAL(8,2),
ID_Habitacion INT,
ID_Cliente VARCHAR (10)
);

ALTER TABLE Reservas 
ADD CONSTRAINT FK_Reservas_Habitación
FOREIGN KEY (ID_Habitacion) REFERENCES Habitacion (ID_Habitacion);

ALTER TABLE Reservas 
ADD CONSTRAINT FK_Reservas_Cliente
FOREIGN KEY (ID_Cliente) REFERENCES Cliente (ID_Cliente);