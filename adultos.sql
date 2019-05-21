DROP DATABASE IF EXISTS adultos;

CREATE DATABASE adultos;

use adultos;

--
-- Table structure for table `Categorias`
--

DROP TABLE IF EXISTS `categorias`;
CREATE TABLE `categorias` (
  `id_act` int(10) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id_act`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `Amigabilidad`
--

DROP TABLE IF EXISTS `amigabilidad`;
CREATE TABLE `amigabilidad` (
  `id_amig` int(10) NOT NULL,
  `descripcion_amig` int(10) NOT NULL,
  PRIMARY KEY (`id_amig`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
--
-- Table structure for table `apps`
--

DROP TABLE IF EXISTS `apps`;
CREATE TABLE `apps` (
  `id_app` int(10) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `descripcion2` varchar(255) DEFAULT NULL,
  `sitio_descarga` varchar(255) DEFAULT NULL,
  `sist_operativo` varchar(50) DEFAULT NULL,
  `amigable` int(10) DEFAULT NULL,
  `costo` float(10) DEFAULT NULL,
  `idioma` varchar(50) DEFAULT NULL,
  `num_consultas` int(10) DEFAULT NULL,
  `num_likes` int(10) DEFAULT NULL,
  `id_tipo_u` int(10) DEFAULT NULL,
  `id_act` int(10) NOT NULL,
  `id_amigabilidad` int(10) NOT NULL,
  PRIMARY KEY (`id_app`),
  CONSTRAINT `cate_ibfk_1` FOREIGN KEY (`id_act`) REFERENCES `categorias` (`id_act`),
  CONSTRAINT `ami_ibfk_1` FOREIGN KEY (`id_amigabilidad`) REFERENCES `amigabilidad` (`id_amig`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `genero`
--

DROP TABLE IF EXISTS `genero`;
CREATE TABLE `genero` (
  `id_genero` int(10) NOT NULL,
  `nombre_genero` int(100) NOT NULL,
  PRIMARY KEY (`id_genero`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `paciente`
--

DROP TABLE IF EXISTS `paciente`;
CREATE TABLE `paciente` (
  `id_paciente` int(10) NOT NULL,
  `nombre_paciente` varchar(100) NOT NULL,
  `fecha_nac` varchar(255) DEFAULT NULL,
  `edad` int(10) DEFAULT NULL,
  `id_genero` int(10) NOT NULL,
  PRIMARY KEY (`id_paciente`),
  CONSTRAINT `genero_ibfk_1` FOREIGN KEY (`id_genero`) REFERENCES `genero` (`id_genero`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `paciente_apps`
--

DROP TABLE IF EXISTS `paciente_apps`;
CREATE TABLE `paciente_apps` (
  `id_paciente` int(10) NOT NULL,
  `id_app` int(100) NOT NULL,
  `fecha` varchar(255) DEFAULT NULL,
  `num_consultas` int(10) DEFAULT NULL,
  `num_likes` int(10) DEFAULT NULL,
  PRIMARY KEY (`id_paciente`),
  CONSTRAINT `app2_ibfk_1` FOREIGN KEY (`id_app`) REFERENCES `apps` (`id_app`),
  CONSTRAINT `paciente_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `paciente` (`id_paciente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `tipo_usuario`
--

DROP TABLE IF EXISTS `tipo_usuario`;
CREATE TABLE `tipo_usuario` (
  `id_tipo_u` int(10) NOT NULL,
  `tipo_usuario` varchar(50) NOT NULL,
  PRIMARY KEY (`id_tipo_u`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `tipo_usuario_apps`
--

DROP TABLE IF EXISTS `tipo_usuario_apps`;
CREATE TABLE `tipo_usuario_apps` (
  `id_tipo_u` int(10) NOT NULL,
  `id_app` int(10) NOT NULL,
  PRIMARY KEY (`id_tipo_u`),
  CONSTRAINT `app_ibfk_1` FOREIGN KEY (`id_app`) REFERENCES `apps` (`id_app`),
  CONSTRAINT `tipou_ibfk_1` FOREIGN KEY (`id_tipo_u`) REFERENCES `tipo_usuario` (`id_tipo_u`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE USER 'adultos'@'localhost' IDENTIFIED BY 'mipass';
GRANT SELECT,UPDATE,INSERT ON escuela.* TO 'adultos'@'localhost';