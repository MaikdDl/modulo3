CREATE DATABASE  IF NOT EXISTS `Bancos` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `Bancos`;
-- MySQL dump 10.13  Distrib 5.7.25, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: Bancos
-- ------------------------------------------------------
-- Server version	5.7.25-0ubuntu0.18.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cuenta_bancaria`
--

DROP TABLE IF EXISTS `cuenta_bancaria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cuenta_bancaria` (
  `idcuenta_bancaria` int(11) NOT NULL AUTO_INCREMENT,
  `saldo` decimal(18,2) NOT NULL DEFAULT '0.00',
  `fecha_saldo` datetime NOT NULL,
  `tipo_cuenta` varchar(45) NOT NULL,
  `iban` char(24) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `activa` tinyint(1) NOT NULL,
  `idoficina` int(11) NOT NULL,
  `idcliente` int(11) NOT NULL,
  `idtipo_cuenta` int(11) NOT NULL,
  PRIMARY KEY (`idcuenta_bancaria`),
  KEY `fk_cuenta_bancaria_cliente_idx` (`idcliente`),
  KEY `fk_cuenta_bancaria_oficina_idx` (`idoficina`),
  KEY `fk_cuenta_bancaria_tipo_cuenta_idx` (`idtipo_cuenta`),
  KEY `fk_cuenta_bancaria__tipo_cuenta_idx` (`idtipo_cuenta`),
  CONSTRAINT `fk_cuenta_bancaria__tipo_cuenta` FOREIGN KEY (`idtipo_cuenta`) REFERENCES `tipo_cuenta` (`idtipo_cuenta`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_cuenta_bancaria_cliente` FOREIGN KEY (`idcliente`) REFERENCES `cliente` (`idcliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_cuenta_bancaria_oficina` FOREIGN KEY (`idoficina`) REFERENCES `oficina` (`idoficina`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuenta_bancaria`
--

LOCK TABLES `cuenta_bancaria` WRITE;
/*!40000 ALTER TABLE `cuenta_bancaria` DISABLE KEYS */;
/*!40000 ALTER TABLE `cuenta_bancaria` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-12 21:01:03
