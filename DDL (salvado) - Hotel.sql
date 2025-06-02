# Table	Create Table
Reserva	CREATE TABLE `reserva` (
  `ID_Reserva` int(11) NOT NULL AUTO_INCREMENT,
  `FechaReserva` timestamp NOT NULL DEFAULT current_timestamp(),
  `FechaInicioEstancia` timestamp NULL DEFAULT NULL,
  `DiasEstancia` int(11) DEFAULT NULL,
  `ValorTotal` decimal(8,2) DEFAULT NULL,
  `ID_Habitacion` int(11) DEFAULT NULL,
  `ID_Cliente` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ID_Reserva`),
  KEY `FK_Reserva_Habitacion` (`ID_Habitacion`),
  KEY `FK_Reserva_Cliente` (`ID_Cliente`),
  CONSTRAINT `FK_Reserva_Cliente` FOREIGN KEY (`ID_Cliente`) REFERENCES `cliente` (`ID_Cliente`),
  CONSTRAINT `FK_Reserva_Habitacion` FOREIGN KEY (`ID_Habitacion`) REFERENCES `habitacion` (`ID_Habitacion`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci

# Table	Create Table
Cliente	CREATE TABLE `cliente` (
  `ID_Cliente` varchar(10) NOT NULL,
  `Nombre` varchar(20) DEFAULT NULL,
  `Apellido` varchar(20) DEFAULT NULL,
  `Edad` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_Cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci

# Table	Create Table
Habitacion	CREATE TABLE `habitacion` (
  `ID_Habitacion` int(11) NOT NULL AUTO_INCREMENT,
  `Capacidad` int(11) DEFAULT NULL,
  `Precio` decimal(8,2) DEFAULT NULL,
  `Estado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID_Habitacion`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci
