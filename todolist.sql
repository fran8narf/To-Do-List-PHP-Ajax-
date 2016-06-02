-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         5.6.17 - MySQL Community Server (GPL)
-- SO del servidor:              Win64
-- HeidiSQL Versión:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Volcando estructura de base de datos para prueba_netberry
CREATE DATABASE IF NOT EXISTS `prueba_netberry` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `prueba_netberry`;


-- Volcando estructura para tabla prueba_netberry.categorias
CREATE TABLE IF NOT EXISTS `categorias` (
  `ID_categoria` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre_categoria` varchar(50) NOT NULL,
  PRIMARY KEY (`ID_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla prueba_netberry.categorias: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
REPLACE INTO `categorias` (`ID_categoria`, `nombre_categoria`) VALUES
	(1, 'PHP'),
	(2, 'Javascript'),
	(3, 'CSS');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;


-- Volcando estructura para tabla prueba_netberry.tareas
CREATE TABLE IF NOT EXISTS `tareas` (
  `ID_tarea` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre_tarea` varchar(50) NOT NULL,
  PRIMARY KEY (`ID_tarea`)
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla prueba_netberry.tareas: ~18 rows (aproximadamente)
/*!40000 ALTER TABLE `tareas` DISABLE KEYS */;
REPLACE INTO `tareas` (`ID_tarea`, `nombre_tarea`) VALUES
	(128, 'Nueva tarea con cosas'),
	(129, 'tarea 1'),
	(130, 'afdsafd'),
	(131, 'adsads'),
	(132, 'borrar '),
	(133, 'jkhgkjhgkjhg'),
	(134, 'q21432'),
	(135, '132132132');
/*!40000 ALTER TABLE `tareas` ENABLE KEYS */;


-- Volcando estructura para tabla prueba_netberry.tareas_categorias
CREATE TABLE IF NOT EXISTS `tareas_categorias` (
  `ID_tareas` int(10) unsigned NOT NULL,
  `ID_categorias` int(10) unsigned NOT NULL,
  PRIMARY KEY (`ID_tareas`,`ID_categorias`),
  KEY `FK__categorias` (`ID_categorias`),
  CONSTRAINT `FK__categorias` FOREIGN KEY (`ID_categorias`) REFERENCES `categorias` (`ID_categoria`),
  CONSTRAINT `FK__tareas` FOREIGN KEY (`ID_tareas`) REFERENCES `tareas` (`ID_tarea`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla prueba_netberry.tareas_categorias: ~32 rows (aproximadamente)
/*!40000 ALTER TABLE `tareas_categorias` DISABLE KEYS */;
REPLACE INTO `tareas_categorias` (`ID_tareas`, `ID_categorias`) VALUES
	(128, 1),
	(129, 1),
	(130, 1),
	(131, 1),
	(132, 1),
	(134, 1),
	(135, 1),
	(128, 2),
	(130, 2),
	(132, 2),
	(133, 2),
	(134, 2),
	(135, 2),
	(128, 3),
	(129, 3),
	(133, 3),
	(134, 3),
	(135, 3);
/*!40000 ALTER TABLE `tareas_categorias` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
