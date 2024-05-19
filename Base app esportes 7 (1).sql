-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: pi3_2a etapa
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `e_mail`
--

DROP TABLE IF EXISTS `e_mail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `e_mail` (
  `idUsuario` char(1) NOT NULL,
  `E_mail_Usuario` varchar(30) NOT NULL,
  PRIMARY KEY (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `e_mail`
--

LOCK TABLES `e_mail` WRITE;
/*!40000 ALTER TABLE `e_mail` DISABLE KEYS */;
INSERT INTO `e_mail` VALUES ('A','I1@gmail.com'),('B','f2@hotmail.com'),('C','f3@uol.com.br'),('D','jp@gmail.com');
/*!40000 ALTER TABLE `e_mail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endereco`
--

DROP TABLE IF EXISTS `endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `endereco` (
  `idEndereco` int NOT NULL,
  `Estado` char(2) NOT NULL,
  `CEP` char(9) NOT NULL,
  `Cidade` longtext NOT NULL,
  `Logradouro` longtext NOT NULL,
  `Numero` int NOT NULL,
  `Complemento` longtext NOT NULL,
  PRIMARY KEY (`idEndereco`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco`
--

LOCK TABLES `endereco` WRITE;
/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
INSERT INTO `endereco` VALUES (1,'SP','11409-001','Sao Paulo','Rua Peixoto Gomide',949,'Jardim Paulista'),(2,'MG','30110-014','Belo Horizonte','Av. do Contorno',2552,'Santa Efigenia'),(3,'SP','24094-050','Sao Paulo','Av. Pedro Alvares Cabral',120,'Parque Ibirapuera'),(4,'RS','90001-970','Porto Alegre','Rua Siqueira Campos',1100,'Centro Histórico');
/*!40000 ALTER TABLE `endereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `local`
--

DROP TABLE IF EXISTS `local`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `local` (
  `idLocal` int NOT NULL,
  `Modalidade` varchar(30) NOT NULL,
  `Disponibilidade` char(3) NOT NULL,
  `Preco` int NOT NULL,
  `Local_Nome` varchar(60) NOT NULL,
  `Endereco_idEndereco` int NOT NULL,
  PRIMARY KEY (`idLocal`),
  KEY `fk_Local_Endereco1_idx` (`Endereco_idEndereco`),
  CONSTRAINT `fk_Local_Endereco1` FOREIGN KEY (`Endereco_idEndereco`) REFERENCES `endereco` (`idEndereco`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `local`
--

LOCK TABLES `local` WRITE;
/*!40000 ALTER TABLE `local` DISABLE KEYS */;
INSERT INTO `local` VALUES (1,'Pista caminhada','Sim',0,'Parque Trianon',1),(2,'Quadra poliesportiva','Sim',0,'Quadra Efigênia',2),(3,'Futebol Society','Sim',100,'Parque Ibirapuera',3),(4,'Pista atletismo','Sim',0,'IFRS',4);
/*!40000 ALTER TABLE `local` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perfil`
--

DROP TABLE IF EXISTS `perfil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `perfil` (
  `idPerfil` char(1) NOT NULL,
  `Professor` varchar(20) NOT NULL,
  `Genero` char(1) NOT NULL,
  `Nascimento` date NOT NULL,
  PRIMARY KEY (`idPerfil`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfil`
--

LOCK TABLES `perfil` WRITE;
/*!40000 ALTER TABLE `perfil` DISABLE KEYS */;
INSERT INTO `perfil` VALUES ('X','José','M','1972-05-24'),('Y','Antônio','M','2001-07-10'),('Z','Patrícia','F','1998-03-20');
/*!40000 ALTER TABLE `perfil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `idUsuario` char(1) NOT NULL,
  `CPF` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Usuario_Nome` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Senha` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=ujis;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES ('A','111','Leandro','12345@le'),('B','222','Fernando','67891@fe'),('C','333','Fabiane','01112@fu'),('D','444','João Paulo','31415@jp');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_has_local`
--

DROP TABLE IF EXISTS `usuario_has_local`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario_has_local` (
  `Usuario_idUsuario` char(1) NOT NULL,
  `Local_idLocal` varchar(8) NOT NULL,
  PRIMARY KEY (`Usuario_idUsuario`,`Local_idLocal`),
  KEY `fk_Usuario_has_Local_Local1_idx` (`Local_idLocal`),
  KEY `fk_Usuario_has_Local_Usuario1_idx` (`Usuario_idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_has_local`
--

LOCK TABLES `usuario_has_local` WRITE;
/*!40000 ALTER TABLE `usuario_has_local` DISABLE KEYS */;
INSERT INTO `usuario_has_local` VALUES ('A','1'),('B','2'),('C','4');
/*!40000 ALTER TABLE `usuario_has_local` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_has_perfil`
--

DROP TABLE IF EXISTS `usuario_has_perfil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario_has_perfil` (
  `Usuario_idUsuario` char(1) NOT NULL,
  `Perfil_idPerfil` char(1) NOT NULL,
  PRIMARY KEY (`Usuario_idUsuario`,`Perfil_idPerfil`),
  KEY `fk_Usuario_has_Perfil_Perfil1_idx` (`Perfil_idPerfil`),
  KEY `fk_Usuario_has_Perfil_Usuario1_idx` (`Usuario_idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_has_perfil`
--

LOCK TABLES `usuario_has_perfil` WRITE;
/*!40000 ALTER TABLE `usuario_has_perfil` DISABLE KEYS */;
INSERT INTO `usuario_has_perfil` VALUES ('A','X'),('B','Y'),('C','Z');
/*!40000 ALTER TABLE `usuario_has_perfil` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-18 23:54:42
