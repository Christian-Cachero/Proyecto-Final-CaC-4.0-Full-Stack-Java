DROP TABLE IF EXISTS `oradores`;

CREATE TABLE `oradores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `fecha_alta` varchar(45) NOT NULL,  -- Se mantiene como varchar(45)
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb3;

INSERT INTO `oradores` (id, nombre, apellido, fecha_alta) VALUES
(1, 'Steve', 'Jobs', '28/06/2023'),
(2, 'Ada', 'Lovelace', '28/06/2023'),
(3, 'Bill', 'Gates', '28/06/2023'),
(37, 'Armando', 'Paredes', '12/07/2023'),
(38, 'Esteban', 'Quito', '13/07/2023');

UNLOCK TABLES;