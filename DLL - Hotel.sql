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

)