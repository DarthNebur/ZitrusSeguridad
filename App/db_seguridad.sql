CREATE DATABASE  IF NOT EXISTS `db_seguridad` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_seguridad`;
-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: db_seguridad
-- ------------------------------------------------------
-- Server version	8.0.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tb_documentos`
--

DROP TABLE IF EXISTS `tb_documentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_documentos` (
  `ID` int NOT NULL,
  `Nombre` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_documentos`
--

LOCK TABLES `tb_documentos` WRITE;
/*!40000 ALTER TABLE `tb_documentos` DISABLE KEYS */;
INSERT INTO `tb_documentos` VALUES (1,'Credencial de elector'),(2,'Ine'),(3,'Fm2'),(4,'Licencia de conducir'),(5,'Pasaporte'),(6,'RFC'),(7,'Cartilla militar');
/*!40000 ALTER TABLE `tb_documentos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-08 16:41:13

DROP TABLE IF EXISTS `tb_clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
DROP TABLE IF EXISTS `ZTS_CLI`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ZTS_CLI` (
  `CORCLI` int NOT NULL AUTO_INCREMENT,
  `NCLI` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin not null,
  `NOFCLI` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin not null,
  `NOCCLI` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin not null,
  `MAICLI` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `RFCCLI` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `Tipo_Doc` int(1) NOT NULL,
  `WEBCLI` varchar(500) CHARACTER SET uf8mb4 COLLATE utf8mb4_bin Default null,
  `FBCLI` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin Default null,
  `TOFCLI` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `EXTCLI` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin Default null,
  `MOVCLI` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `MOVCLI_E`varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `WAPCLI` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `UBICLI` varchar(250) CHARACTER SET utf8 COLLATE utf8mb4_bin NOT NULL,
  `RFACLI` int(1)  NOT NULL,
  `NCPCLI` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin not null,
  `PCPCLI` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin not null,
  `TCPCLI` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin not null,
  `VENCLI` varchar(250)CHARACTER SET utf8mb4 COLLATE utf8mb4_bin not null,
  `FPACLi` int(1) not null,
  `TIPCLI` int(1)  null,
  `ZIPCLI` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin not null,
  `ACTCLI` int(1) not null,
  `STACLI`int(1) not null,
  `FECCLI` datetime NOT NULL,
  `FACCLI` datetime Default Null,
  `FUMCLI` datetime Not Null,
  `FCUCLI` date Not null,
  PRIMARY KEY (`Correlativo`),
  UNIQUE KEY `Usuario_UNIQUE` (`Usuario`),
  UNIQUE KEY `Numero_Doc` (`RFC`),
  KEY `Tipo_Doc` (`Tipo_Doc`),
  CONSTRAINT `tb_clientes_ibfk_1` FOREIGN KEY (`Tipo_Doc`) REFERENCES `tb_documentos` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_clientes`
--

LOCK TABLES `ZTS_CLI` WRITE;
/*!40000 ALTER TABLE `tb_clientes` DISABLE KEYS */;

/*!40000 ALTER TABLE `tb_clientes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-08 16:41:13
DROP TABLE IF EXISTS `ZTS_ZIP`;
Create Table `ZTS_ZIP`(
  `CODZIP` VARCHAR(250) NOT NULL,
  `COLZIP` VARCHAR(250) NOT NULL,
  `TASZIP` VARCHAR(250) NOT NULL,
  `MNPZIP` VARCHAR(250) NOT NULL,
  `CIUZIP` VARCHAR(250) NOT NULL,
  `ESTZIP` VARCHAR(250) NOT NULL,
  PRIMARY KEY (`CODZIP`)
);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
DROP TABLE IF EXISTS `tb_empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_empleados` (
  `correlativo` int NOT NULL AUTO_INCREMENT,
  `Nombres` varchar(250) NOT NULL,
  `Apellidos` varchar(250) NOT NULL,
  `Correo` varchar(350) NOT NULL,
  `Numero_Doc` varchar(350) NOT NULL,
  `Tipo_Doc` int NOT NULL,
  `R_Foto` varchar(300) NOT NULL,
  `Telefono` varchar(250) NOT NULL,
  `Telefono_E` varchar(250) NOT NULL,
  `Password` varchar(500) NOT NULL,
  `Usuario` varchar(250) NOT NULL,
  `R_Act_NoPenal` varchar(500) NOT NULL,
  `R_Cartilla_ServicioM` varchar(500) NOT NULL,
  `R_Dom` varchar(500) NOT NULL,
  `R_ExamenM` varchar(500) NOT NULL,
  `Salario` decimal(65,0) NOT NULL,
  PRIMARY KEY (`correlativo`),
  UNIQUE KEY `Numero_Doc_UNIQUE` (`Numero_Doc`),
  UNIQUE KEY `Usuario_UNIQUE` (`Usuario`),
  UNIQUE KEY `R_Act_NoPenal_UNIQUE` (`R_Act_NoPenal`),
  UNIQUE KEY `R_ExamenM_UNIQUE` (`R_ExamenM`),
  UNIQUE KEY `R_Dom_UNIQUE` (`R_Dom`),
  UNIQUE KEY `R_Cartilla_ServicioM_UNIQUE` (`R_Cartilla_ServicioM`),
  KEY `_idx` (`Tipo_Doc`),
  CONSTRAINT `documento` FOREIGN KEY (`Tipo_Doc`) REFERENCES `tb_documentos` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_empleados`
--

LOCK TABLES `tb_empleados` WRITE;
/*!40000 ALTER TABLE `tb_empleados` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_empleados` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-08 16:41:12
