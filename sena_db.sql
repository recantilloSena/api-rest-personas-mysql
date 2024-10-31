CREATE DATABASE  IF NOT EXISTS `sena` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `sena`;
-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: sena
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `deportes`
--

DROP TABLE IF EXISTS `deportes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deportes` (
  `id` int NOT NULL,
  `nombre_deporte` varchar(45) NOT NULL,
  `tipo_deporte` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deportes`
--

LOCK TABLES `deportes` WRITE;
/*!40000 ALTER TABLE `deportes` DISABLE KEYS */;
INSERT INTO `deportes` VALUES (1,'BEISBOL','Terrestre'),(2,'FUTBOL','Terrestre'),(3,'BAILAR','Terrestre'),(4,'NBA','Terrestre'),(5,'NATACIÓN','Agua'),(6,'SALTO_TRIPLE','Terrestre'),(13,'Rugby','Terrestre'),(14,'gimnasia terrestres','Terrestre'),(15,'SKY','Hielo'),(16,'HOCKEY','Hielo'),(22,'Nado Sincronizado','Agua'),(23,'Equitación','Terrestre'),(24,'Equitación Express','Terrestre'),(25,'Clavado','Agua'),(26,'Polo','Caballo');
/*!40000 ALTER TABLE `deportes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personas`
--

DROP TABLE IF EXISTS `personas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `edad` int DEFAULT NULL,
  `id_deporte` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_NOMBRE` (`nombre`),
  KEY `fk_persona_deporte_idx` (`id_deporte`),
  CONSTRAINT `fk_persona_deporte` FOREIGN KEY (`id_deporte`) REFERENCES `deportes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personas`
--

LOCK TABLES `personas` WRITE;
/*!40000 ALTER TABLE `personas` DISABLE KEYS */;
INSERT INTO `personas` VALUES (14,'ANDRES DAVID BARRETO TORRES',17,1),(15,'ANDRES IVAN TELLO MENDOZA',18,1),(16,'ANGEL HERNANDEZ AREVALO',19,1),(17,'CARLOS ANDRES ANGARITA GERARDINO',20,1),(18,'GERSON ANDRES GARCIA IBICA',21,1),(19,'HECTOR DAVID VALENCIA GOMEZ',22,1),(20,'ISMAEL NAHUM MAURY CASTRO',23,1),(21,'JHURGEN YESITH CABALLERO MONTAÑEZ',24,1),(22,'KEVIN ALBERTO SIERRA GUERRERO',25,1),(23,'KLEERT FRANKLIN ALMEIDA PÁEZ',26,1),(24,'LEONAR ENRIQUE SAAVEDRA FLORES',27,1),(25,'LEONARDO JUNIOR GONZALEZ GONZALEZ',28,1),(26,'LUIS ALEXANDER PARRA DITA',29,1),(27,'LUIS DAVID RIVERA CARO',30,1),(28,'MAURICIO FONSECA BOTELLO',31,1),(29,'MERLY VANESSA ANILLO TRESPALACIOS',32,1),(30,'NESTOR ALBERTO MARTINEZ DIAZ',33,1),(31,'PABLO JESHUA PORTO NIEBLES',34,1),(32,'RANDY MENDOZA SALAS',35,1),(33,'RICHARD ANDRES SALAMANDRA MUÑOZ',36,1),(34,'SEBASTIAN DARIO BETANCUR JIMENEZ',37,1),(35,'SHARON ANDREA CABARCAS BERRIO',38,1),(36,'SHEINAR CHACON CORTES',39,1),(37,'WALTER STEVEN DE LA HOZ REDONDO',40,1),(41,'RICARDO ENRIQUE CANTILLO CARRILLO',35,5),(42,'DANIEL',23,4),(43,'JAMES',23,2),(44,'david',24,2),(46,'juanes',12,13),(49,'goku',13,3),(50,'Juan David',13,5),(51,'Nelvis Palomino',40,3);
/*!40000 ALTER TABLE `personas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-30 18:59:47
