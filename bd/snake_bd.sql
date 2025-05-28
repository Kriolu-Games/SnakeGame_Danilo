/*!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.11.8-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: snake_bd
-- ------------------------------------------------------
-- Server version	10.11.8-MariaDB-0ubuntu0.24.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `frutas`
--

DROP TABLE IF EXISTS `frutas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `frutas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `utilizador_id` int(11) DEFAULT NULL,
  `abacaxi` int(11) DEFAULT NULL,
  `banana` int(11) DEFAULT NULL,
  `barata` int(11) DEFAULT NULL,
  `kiwi` int(11) DEFAULT NULL,
  `limao` int(11) DEFAULT NULL,
  `maca` int(11) DEFAULT NULL,
  `morango` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `utilizador_id` (`utilizador_id`),
  CONSTRAINT `frutas_ibfk_1` FOREIGN KEY (`utilizador_id`) REFERENCES `utilizadores` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frutas`
--

LOCK TABLES `frutas` WRITE;
/*!40000 ALTER TABLE `frutas` DISABLE KEYS */;
/*!40000 ALTER TABLE `frutas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pontuacoes`
--

DROP TABLE IF EXISTS `pontuacoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pontuacoes` (
  `ponto` int(11) DEFAULT NULL,
  `utilizador_id` int(11) DEFAULT NULL,
  KEY `utilizador_id` (`utilizador_id`),
  CONSTRAINT `pontuacoes_ibfk_1` FOREIGN KEY (`utilizador_id`) REFERENCES `utilizadores` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pontuacoes`
--

LOCK TABLES `pontuacoes` WRITE;
/*!40000 ALTER TABLE `pontuacoes` DISABLE KEYS */;
INSERT INTO `pontuacoes` VALUES
(0,NULL);
/*!40000 ALTER TABLE `pontuacoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utilizadores`
--

DROP TABLE IF EXISTS `utilizadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `utilizadores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(25) DEFAULT NULL,
  `password` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utilizadores`
--

LOCK TABLES `utilizadores` WRITE;
/*!40000 ALTER TABLE `utilizadores` DISABLE KEYS */;
/*!40000 ALTER TABLE `utilizadores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-25 14:15:45
