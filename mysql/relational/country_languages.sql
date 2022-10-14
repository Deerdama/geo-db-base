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
-- Table structure for table `country_languages`
--

DROP TABLE IF EXISTS `country_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country_languages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `country_id` int unsigned NOT NULL,
  `language_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `country_languages_country_id_language_id_unique` (`country_id`,`language_id`)
) ENGINE=InnoDB AUTO_INCREMENT=412 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country_languages`
--

LOCK TABLES `country_languages` WRITE;
/*!40000 ALTER TABLE `country_languages` DISABLE KEYS */;
INSERT INTO `country_languages` VALUES (1,1,19),(2,1,86),(3,2,19),(4,4,19),(5,5,3),(7,6,20),(6,6,29),(8,7,68),(9,7,137),(10,8,19),(11,8,27),(12,8,117),(13,9,19),(14,9,27),(15,9,126),(16,10,19),(18,11,19),(19,11,20),(17,11,130),(20,12,19),(21,13,20),(22,14,19),(23,14,68),(24,14,137),(25,15,10),(26,15,33),(27,15,90),(28,16,70),(29,17,19),(30,18,27),(31,19,19),(32,19,27),(33,20,19),(34,21,27),(35,21,82),(36,22,19),(37,23,27),(38,24,19),(39,25,19),(40,26,19),(41,26,20),(42,27,19),(44,28,12),(45,28,19),(43,28,144),(46,29,19),(47,29,129),(48,30,19),(49,30,68),(50,30,137),(51,31,13),(52,31,84),(53,32,46),(54,33,76),(55,34,27),(56,34,42),(57,34,51),(59,34,94),(58,34,114),(60,35,76),(61,35,145),(62,36,83),(63,36,95),(64,37,27),(65,38,20),(66,39,19),(67,40,14),(68,40,26),(69,41,2),(70,42,67),(71,43,15),(72,44,19),(73,45,3),(74,45,88),(75,46,19),(76,47,19),(77,48,76),(78,49,27),(79,50,27),(80,51,27),(81,52,41),(82,53,19),(83,54,15),(84,54,27),(85,54,50),(86,55,44),(87,56,19),(88,57,27),(89,58,12),(90,58,19),(91,58,20),(92,59,27),(93,60,3),(94,61,19),(95,62,18),(96,63,19),(97,63,110),(98,64,35),(99,65,38),(100,66,19),(101,66,154),(102,67,19),(103,67,151),(104,67,152),(105,68,19),(106,68,86),(108,69,75),(109,69,99),(107,69,142),(110,70,22),(111,71,3),(112,72,19),(113,72,105),(114,73,19),(115,73,30),(116,74,39),(117,75,19),(118,75,157),(119,76,40),(120,77,3),(121,78,15),(122,78,27),(123,78,68),(124,79,17),(125,80,45),(126,81,14),(127,82,19),(128,82,91),(129,83,19),(130,83,92),(131,84,3),(132,84,133),(134,85,65),(133,85,69),(135,85,131),(136,86,3),(137,87,20),(138,88,93),(139,89,97),(140,90,68),(141,91,19),(142,91,101),(143,92,48),(144,92,80),(145,93,52),(146,94,3),(147,94,27),(148,95,76),(149,95,110),(150,96,19),(151,96,61),(152,97,27),(153,98,60),(154,99,123),(155,100,19),(156,101,61),(157,102,27),(158,103,19),(159,103,58),(160,104,19),(161,104,115),(162,105,20),(163,106,3),(164,107,9),(165,108,110),(166,109,19),(167,110,4),(170,110,20),(168,110,29),(169,110,77),(171,111,76),(172,112,11),(173,113,15),(174,114,27),(175,115,89),(176,116,76),(177,117,36),(178,118,15),(179,118,153),(180,119,5),(181,119,80),(182,120,6),(183,120,80),(184,121,27),(185,122,19),(186,122,100),(187,123,7),(188,124,27),(189,124,78),(190,125,76),(191,126,19),(192,126,27),(193,127,3),(194,127,27),(195,128,20),(196,129,110),(197,130,20),(198,131,20),(199,132,33),(200,133,20),(201,134,18),(202,134,102),(203,135,27),(204,136,3),(205,136,27),(206,137,20),(207,138,20),(210,139,20),(208,139,27),(209,139,76),(211,140,21),(212,141,19),(213,141,25),(214,141,128),(215,142,24),(216,142,93),(217,143,19),(218,144,20),(219,145,27),(220,146,76),(221,146,140),(222,147,27),(223,147,34),(224,148,20),(225,149,19),(226,149,32),(227,149,95),(228,150,37),(229,151,3),(230,151,135),(231,151,136),(232,152,19),(233,152,28),(234,153,43),(235,153,80),(236,154,19),(237,154,94),(238,155,46),(239,156,89),(240,156,90),(241,157,55),(242,158,19),(243,159,53),(244,160,27),(245,160,56),(246,161,19),(247,161,72),(248,162,27),(249,163,19),(250,163,62),(251,164,19),(252,164,27),(253,164,156),(254,165,79),(255,166,76),(256,167,1),(257,167,15),(258,167,19),(264,167,100),(259,167,118),(260,167,119),(261,167,120),(262,167,121),(263,167,122),(265,168,19),(266,168,64),(267,169,20),(268,170,27),(269,171,59),(270,172,19),(271,172,155),(272,173,20),(274,174,20),(273,174,29),(275,175,4),(277,175,20),(276,175,77),(278,176,74),(279,177,19),(280,177,27),(281,177,81),(282,178,39),(283,179,27),(284,180,90),(286,181,19),(287,181,27),(285,181,116),(288,182,19),(290,183,19),(291,183,61),(292,183,95),(289,183,110),(293,184,85),(294,185,1),(295,185,19),(296,185,71),(299,185,91),(298,185,92),(300,185,100),(301,185,103),(302,185,107),(303,185,109),(304,185,112),(297,185,132),(305,186,19),(306,187,68),(307,188,80),(308,188,96),(309,189,27),(310,189,42),(311,189,51),(312,190,19),(313,191,16),(314,192,19),(315,192,57),(316,193,19),(317,193,134),(318,194,3),(319,194,19),(320,195,63),(321,196,19),(322,197,102),(323,198,19),(324,198,94),(325,199,80),(326,199,106),(327,200,8),(328,200,19),(329,200,27),(330,201,3),(331,202,19),(333,203,19),(337,203,66),(338,203,72),(339,203,87),(340,203,92),(342,203,100),(343,203,103),(344,203,107),(345,203,109),(332,203,146),(334,203,147),(335,203,148),(336,203,149),(341,203,150),(346,204,79),(347,205,80),(348,206,27),(351,207,20),(349,207,133),(350,207,143),(352,208,19),(353,209,19),(354,210,27),(355,211,27),(356,212,19),(357,213,19),(358,213,27),(359,213,68),(360,214,84),(361,215,108),(362,216,19),(363,217,19),(364,218,3),(365,218,19),(366,218,98),(367,219,3),(368,219,31),(369,220,3),(370,221,3),(371,222,3),(372,223,3),(373,224,3),(374,225,70),(375,226,27),(377,226,39),(376,226,124),(378,226,125),(379,227,3),(380,228,19),(381,229,19),(382,229,138),(383,230,19),(384,231,27),(385,232,27),(386,233,27),(387,234,19),(388,234,86),(389,234,139),(390,235,3),(391,236,80),(392,236,99),(393,237,19),(394,238,19),(395,238,141),(396,239,104),(397,240,3),(398,240,27),(399,240,127),(400,241,3),(401,242,19),(402,243,20),(403,244,19),(404,244,94),(405,245,19),(406,246,19),(407,247,39),(408,247,49),(409,248,19),(410,249,19),(411,250,93);
/*!40000 ALTER TABLE `country_languages` ENABLE KEYS */;
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