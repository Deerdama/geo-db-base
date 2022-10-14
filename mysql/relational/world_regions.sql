-- MySQL dump 10.13  Distrib 8.0.29, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: geo_relational
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `world_regions`
--

DROP TABLE IF EXISTS `world_regions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `world_regions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subregion` tinyint(1) NOT NULL DEFAULT '0',
  `parent_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `world_regions_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `world_regions`
--

LOCK TABLES `world_regions` WRITE;
/*!40000 ALTER TABLE `world_regions` DISABLE KEYS */;
INSERT INTO `world_regions` VALUES (1,'Asia',0,NULL),(2,'Southern Asia',1,1),(3,'Europe',0,NULL),(4,'Northern Europe',1,3),(5,'Southern Europe',1,3),(6,'Africa',0,NULL),(7,'Northern Africa',1,6),(8,'Oceania',0,NULL),(9,'Polynesia',1,8),(10,'Middle Africa',1,6),(11,'Americas',0,NULL),(12,'Caribbean',1,11),(13,'Polar',0,NULL),(14,'South America',1,11),(15,'Western Asia',1,1),(16,'Australia and New Zealand',1,8),(17,'Western Europe',1,3),(18,'Eastern Europe',1,3),(19,'Central America',1,11),(20,'Western Africa',1,6),(21,'Northern America',1,11),(22,'Southern Africa',1,6),(23,'Eastern Africa',1,6),(24,'South-Eastern Asia',1,1),(25,'Eastern Asia',1,1),(26,'Melanesia',1,8),(27,'Micronesia',1,8),(28,'Central Asia',1,1),(30,'Southeast Europe',1,3),(31,'Central Europe',1,3),(32,'Antarctic',0,NULL),(33,'North America',1,11);
/*!40000 ALTER TABLE `world_regions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-14 13:20:32
