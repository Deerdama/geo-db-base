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
-- Table structure for table `timezones`
--

DROP TABLE IF EXISTS `timezones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `timezones` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abrv` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `utc_offset` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `latitude` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `longitude` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `country_id` int DEFAULT NULL,
  `comments` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `timezones_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=426 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timezones`
--

LOCK TABLES `timezones` WRITE;
/*!40000 ALTER TABLE `timezones` DISABLE KEYS */;
INSERT INTO `timezones` VALUES (1,'Africa/Abidjan','gmt','+00:00','5.31666','-4.03333',135,''),(2,'Africa/Accra','gmt','+00:00','5.55','-0.21666',143,''),(3,'Africa/Addis_Ababa','eat','+03:00','9.03333','38.7',41,''),(4,'Africa/Algiers','cet','+01:00','36.78333','3.05',106,''),(5,'Africa/Asmara','eat','+03:00','15.33333','38.88333',218,''),(6,'Africa/Bamako','gmt','+00:00','12.65','-8',162,''),(7,'Africa/Bangui','wat','+01:00','4.36666','18.58333',21,''),(8,'Africa/Banjul','gmt','+00:00','13.46666','-16.64999',190,''),(9,'Africa/Bissau','gmt','+00:00','11.85','-15.58333',146,''),(10,'Africa/Blantyre','cat','+02:00','-15.78333','35',161,''),(11,'Africa/Brazzaville','wat','+01:00','-4.26666','15.28333',189,''),(12,'Africa/Bujumbura','cat','+02:00','-3.38333','29.36666',124,''),(13,'Africa/Cairo','eet','+02:00','30.05','31.25',5,''),(14,'Africa/Casablanca','unknown','+01:00','33.65','-7.58333',84,''),(15,'Africa/Ceuta','cet','+02:00','35.88333','-5.31666',87,'Ceuta, Melilla'),(16,'Africa/Conakry','gmt','+00:00','9.51666','-13.71666',145,''),(17,'Africa/Dakar','gmt','+00:00','14.66666','-17.43333',179,''),(18,'Africa/Dar_es_Salaam','eat','+03:00','-6.8','39.28333',244,''),(19,'Africa/Djibouti','eat','+03:00','11.6','43.15',136,''),(20,'Africa/Douala','wat','+01:00','4.05','9.69999',126,''),(21,'Africa/El_Aaiun','unknown','+01:00','27.15','-13.2',207,''),(22,'Africa/Freetown','gmt','+00:00','8.5','-13.25',182,''),(23,'Africa/Gaborone','cat','+02:00','-24.65','25.91666',122,''),(24,'Africa/Harare','cat','+02:00','-17.83333','31.05',203,''),(25,'Africa/Johannesburg','sast','+02:00','-26.25','28',185,''),(26,'Africa/Juba','cat','+02:00','4.84999','31.61666',186,''),(27,'Africa/Kampala','eat','+03:00','0.31666','32.41666',198,''),(28,'Africa/Khartoum','cat','+02:00','15.6','32.53333',194,''),(29,'Africa/Kigali','cat','+02:00','-1.95','30.06666',177,''),(30,'Africa/Kinshasa','wat','+01:00','-4.3','15.3',34,'Dem. Rep. of Congo (west)'),(31,'Africa/Lagos','wat','+01:00','6.45','3.4',44,''),(32,'Africa/Libreville','wat','+01:00','0.38333','9.44999',51,''),(33,'Africa/Lome','gmt','+00:00','6.13333','1.21666',233,''),(34,'Africa/Luanda','wat','+01:00','-8.8','13.23333',116,''),(35,'Africa/Lubumbashi','cat','+02:00','-11.66666','27.46666',34,'Dem. Rep. of Congo (east)'),(36,'Africa/Lusaka','cat','+02:00','-15.41666','28.28333',202,''),(37,'Africa/Malabo','wat','+01:00','3.75','8.78333',139,''),(38,'Africa/Maputo','cat','+02:00','-25.96666','32.58333',166,''),(39,'Africa/Maseru','sast','+02:00','-29.46666','27.5',83,''),(40,'Africa/Mbabane','sast','+02:00','-26.3','31.1',82,''),(41,'Africa/Mogadishu','eat','+03:00','2.06666','45.36666',45,''),(42,'Africa/Monrovia','gmt','+00:00','6.3','-10.78333',158,''),(43,'Africa/Nairobi','eat','+03:00','-1.28333','36.81666',154,''),(44,'Africa/Ndjamena','wat','+01:00','12.11666','15.05',127,''),(45,'Africa/Niamey','wat','+01:00','13.51666','2.11666',170,''),(46,'Africa/Nouakchott','gmt','+00:00','18.1','-15.95',71,''),(47,'Africa/Ouagadougou','gmt','+00:00','12.36666','-1.51666',18,''),(48,'Africa/Porto-Novo','wat','+01:00','6.48333','2.61666',121,''),(49,'Africa/Sao_Tome','gmt','+00:00','0.33333','6.73333',33,''),(50,'Africa/Tripoli','cet','+02:00','32.9','13.18333',221,''),(51,'Africa/Tunis','cet','+01:00','36.79999','10.18333',235,''),(52,'Africa/Windhoek','cat','+02:00','-22.56666','17.1',167,''),(53,'America/Adak','ahst','-09:00','51.88','-176.65805',246,'Aleutian Islands'),(54,'America/Anchorage','ahst','-08:00','61.21805','-149.90027',246,'Alaska (most areas)'),(55,'America/Anguilla','ast','-04:00','18.2','-63.06666',2,''),(56,'America/Antigua','ast','-04:00','17.05','-61.8',4,''),(57,'America/Araguaina','unknown','-03:00','-7.2','-48.2',48,'Tocantins'),(58,'America/Argentina/Buenos_Aires','cmt','-03:00','-34.6','-58.45',6,'Buenos Aires (BA, CF)'),(59,'America/Argentina/Catamarca','cmt','-03:00','-28.46666','-65.78333',6,'Catamarca (CT); Chubut (CH)'),(60,'America/Argentina/Cordoba','cmt','-03:00','-31.4','-64.18333',6,'Argentina (most areas: CB, CC, CN, ER, FM, MN, SE, SF)'),(61,'America/Argentina/Jujuy','cmt','-03:00','-24.18333','-65.3',6,'Jujuy (JY)'),(62,'America/Argentina/La_Rioja','cmt','-03:00','-29.43333','-66.84999',6,'La Rioja (LR)'),(63,'America/Argentina/Mendoza','cmt','-03:00','-32.88333','-68.81666',6,'Mendoza (MZ)'),(64,'America/Argentina/Rio_Gallegos','cmt','-03:00','-51.63333','-69.21666',6,'Santa Cruz (SC)'),(65,'America/Argentina/Salta','cmt','-03:00','-24.78333','-65.41666',6,'Salta (SA, LP, NQ, RN)'),(66,'America/Argentina/San_Juan','cmt','-03:00','-31.53333','-68.51666',6,'San Juan (SJ)'),(67,'America/Argentina/San_Luis','cmt','-03:00','-33.31666','-66.34999',6,'San Luis (SL)'),(68,'America/Argentina/Tucuman','cmt','-03:00','-26.81666','-65.21666',6,'Tucuman (TM)'),(69,'America/Argentina/Ushuaia','cmt','-03:00','-54.8','-68.3',6,'Tierra del Fuego (TF)'),(70,'America/Aruba','ast','-04:00','12.5','-69.96666',7,''),(71,'America/Asuncion','amt','-03:00','-25.26666','-57.66666',174,''),(72,'America/Atikokan','cst','-05:00','48.75861','-91.62166',19,'EST - ON (Atikokan); NU (Coral H)'),(73,'America/Bahia','unknown','-03:00','-12.98333','-38.51666',48,'Bahia'),(74,'America/Bahia_Banderas','cst','-05:00','20.8','-105.25',243,'Central Time - Bahia de Banderas'),(75,'America/Barbados','ast','-04:00','13.1','-59.61666',10,''),(76,'America/Belem','unknown','-03:00','-1.45','-48.48333',48,'Para (east); Amapa'),(77,'America/Belize','cst','-06:00','17.5','-88.2',11,''),(78,'America/Blanc-Sablon','ast','-04:00','51.41666','-57.11666',19,'AST - QC (Lower North Shore)'),(79,'America/Boa_Vista','unknown','-04:00','2.81666','-60.66666',48,'Roraima'),(80,'America/Bogota','bmt','-05:00','4.59999','-74.08333',130,''),(81,'America/Boise','mst','-06:00','43.61361','-116.2025',246,'Mountain - ID (south); OR (east)'),(82,'America/Cambridge_Bay','cst','-06:00','69.11388','-105.05277',19,'Mountain - NU (west)'),(83,'America/Campo_Grande','unknown','-04:00','-20.45','-54.61666',48,'Mato Grosso do Sul'),(84,'America/Cancun','cst','-05:00','21.08333','-86.76666',243,'Eastern Standard Time - Quintana Roo'),(85,'America/Caracas','cmt','-04:00','10.5','-66.93333',13,''),(86,'America/Cayenne','unknown','-03:00','4.93333','-52.33333',59,''),(87,'America/Cayman','cmt','-05:00','19.3','-81.38333',20,''),(88,'America/Chicago','cst','-05:00','41.85','-87.65',246,'Central (most areas)'),(89,'America/Chihuahua','cst','-06:00','28.63333','-106.08333',243,'Mountain Time - Chihuahua (most areas)'),(90,'America/Costa_Rica','cst','-06:00','9.93333','-84.08333',131,''),(91,'America/Creston','mst','-07:00','49.1','-116.51666',19,'MST - BC (Creston)'),(92,'America/Cuiaba','unknown','-04:00','-15.58333','-56.08333',48,'Mato Grosso'),(93,'America/Curacao','ast','-04:00','12.18333','-69',30,''),(94,'America/Danmarkshavn','gmt','+00:00','76.76666','-18.66666',55,'National Park (east coast)'),(95,'America/Dawson','pst','-07:00','64.06666','-139.41666',19,'MST - Yukon (west)'),(96,'America/Dawson_Creek','mst','-07:00','55.76666','-120.23333',19,'MST - BC (Dawson Cr, Ft St John)'),(97,'America/Denver','mst','-06:00','39.73916','-104.98416',246,'Mountain (most areas)'),(98,'America/Detroit','cst','-04:00','42.33138','-83.04583',246,'Eastern - MI (most areas)'),(99,'America/Dominica','ast','-04:00','15.3','-61.4',25,''),(100,'America/Edmonton','mst','-06:00','53.55','-113.46666',19,'Mountain - AB; BC (E); SK (W)'),(101,'America/Eirunepe','unknown','-05:00','-6.66666','-69.86666',48,'Amazonas (west)'),(102,'America/El_Salvador','cst','-06:00','13.7','-89.2',138,''),(103,'America/Fort_Nelson','mst','-07:00','58.8','-122.7',19,'MST - BC (Ft Nelson)'),(104,'America/Fortaleza','unknown','-03:00','-3.71666','-38.5',48,'Brazil (northeast: MA, PI, CE, RN, PB)'),(105,'America/Glace_Bay','ast','-03:00','46.2','-59.95',19,'Atlantic - NS (Cape Breton)'),(106,'America/Goose_Bay','ast','-03:00','53.33333','-60.41666',19,'Atlantic - Labrador (most areas)'),(107,'America/Grand_Turk','ast','-04:00','21.46666','-71.13333',237,''),(108,'America/Grenada','ast','-04:00','12.05','-61.75',56,''),(109,'America/Guadeloupe','ast','-04:00','16.23333','-61.53333',57,''),(110,'America/Guatemala','cst','-06:00','14.63333','-90.51666',144,''),(111,'America/Guayaquil','qmt','-05:00','-2.16666','-79.83333',137,'Ecuador (mainland)'),(112,'America/Guyana','unknown','-04:00','6.8','-58.16666',22,''),(113,'America/Halifax','ast','-03:00','44.65','-63.6',19,'Atlantic - NS (most areas); PE'),(114,'America/Havana','cst','-04:00','23.13333','-82.36666',133,''),(115,'America/Hermosillo','cst','-07:00','29.06666','-110.96666',243,'Mountain Standard Time - Sonora'),(116,'America/Indiana/Indianapolis','cst','-04:00','39.76833','-86.15805',246,'Eastern - IN (most areas)'),(117,'America/Indiana/Knox','cst','-05:00','41.29583','-86.625',246,'Central - IN (Starke)'),(118,'America/Indiana/Marengo','cst','-04:00','38.37555','-86.34472',246,'Eastern - IN (Crawford)'),(119,'America/Indiana/Petersburg','cst','-04:00','38.49194','-87.27861',246,'Eastern - IN (Pike)'),(120,'America/Indiana/Tell_City','cst','-05:00','37.95305','-86.76138',246,'Central - IN (Perry)'),(121,'America/Indiana/Vevay','cst','-04:00','38.74777','-85.06722',246,'Eastern - IN (Switzerland)'),(122,'America/Indiana/Vincennes','cst','-04:00','38.67722','-87.52861',246,'Eastern - IN (Da, Du, K, Mn)'),(123,'America/Indiana/Winamac','cst','-04:00','41.05138','-86.60305',246,'Eastern - IN (Pulaski)'),(124,'America/Inuvik','mst','-06:00','68.34972','-133.71666',19,'Mountain - NT (west)'),(125,'America/Iqaluit','cst','-04:00','63.73333','-68.46666',19,'Eastern - NU (most east areas)'),(126,'America/Jamaica','est','-05:00','17.96805','-76.79333',75,''),(127,'America/Juneau','akst','-08:00','58.30194','-134.41972',246,'Alaska - Juneau area'),(128,'America/Kentucky/Louisville','cst','-04:00','38.25416','-85.75944',246,'Eastern - KY (Louisville area)'),(129,'America/Kentucky/Monticello','cst','-04:00','36.82972','-84.84916',246,'Eastern - KY (Wayne)'),(130,'America/Kralendijk','ast','-04:00','12.15083','-68.27666',14,''),(131,'America/La_Paz','cmt','-04:00','-16.5','-68.15',110,''),(132,'America/Lima','unknown','-05:00','-12.05','-77.05',175,''),(133,'America/Los_Angeles','pst','-07:00','34.05222','-118.24277',246,'Pacific'),(134,'America/Lower_Princes','ast','-04:00','18.05138','-63.04722',213,''),(135,'America/Maceio','unknown','-03:00','-9.66666','-35.71666',48,'Alagoas, Sergipe'),(136,'America/Managua','cst','-06:00','12.15','-86.28333',169,''),(137,'America/Manaus','unknown','-04:00','-3.13333','-60.01666',48,'Amazonas (east)'),(138,'America/Marigot','ast','-04:00','18.06666','-63.08333',210,''),(139,'America/Martinique','ast','-04:00','14.6','-61.08333',97,''),(140,'America/Matamoros','cst','-05:00','25.83333','-97.5',243,'Central Time US - Coahuila, Nuevo Leon, Tamaulipas (US border)'),(141,'America/Mazatlan','cst','-06:00','23.21666','-106.41666',243,'Mountain Time - Baja California Sur, Nayarit, Sinaloa'),(142,'America/Menominee','cst','-05:00','45.10777','-87.61416',246,'Central - MI (Wisconsin border)'),(143,'America/Merida','cst','-05:00','20.96666','-89.61666',243,'Central Time - Campeche, Yucatan'),(144,'America/Metlakatla','akst','-08:00','55.12694','-131.57638',246,'Alaska - Annette Island'),(145,'America/Mexico_City','cst','-05:00','19.39999','-99.15',243,'Central Time'),(146,'America/Miquelon','ast','-02:00','47.05','-56.33333',211,''),(147,'America/Moncton','ast','-03:00','46.1','-64.78333',19,'Atlantic - New Brunswick'),(148,'America/Monterrey','cst','-05:00','25.66666','-100.31666',243,'Central Time - Durango; Coahuila, Nuevo Leon, Tamaulipas (most areas)'),(149,'America/Montevideo','mmt','-03:00','-34.90916','-56.2125',105,''),(150,'America/Montserrat','ast','-04:00','16.71666','-62.21666',100,''),(151,'America/Nassau','est','-04:00','25.08333','-77.34999',27,''),(152,'America/New_York','est','-04:00','40.71416','-74.00638',246,'Eastern (most areas)'),(153,'America/Nipigon','est','-04:00','49.01666','-88.26666',19,'Eastern - ON, QC (no DST 1967-73)'),(154,'America/Nome','akst','-08:00','64.50111','-165.40638',246,'Alaska (west)'),(155,'America/Noronha','unknown','-02:00','-3.85','-32.41666',48,'Atlantic islands'),(156,'America/North_Dakota/Beulah','cst','-05:00','47.26416','-101.77777',246,'Central - ND (Mercer)'),(157,'America/North_Dakota/Center','cst','-05:00','47.11638','-101.29916',246,'Central - ND (Oliver)'),(158,'America/North_Dakota/New_Salem','cst','-05:00','46.845','-101.41083',246,'Central - ND (Morton rural)'),(159,'America/Nuuk','unknown','-02:00','64.18333','-51.73333',55,'Greenland (most areas)'),(160,'America/Ojinaga','cst','-06:00','29.56666','-104.41666',243,'Mountain Time US - Chihuahua (US border)'),(161,'America/Panama','cmt','-05:00','8.96666','-79.53333',173,''),(162,'America/Pangnirtung','ast','-04:00','66.13333','-65.73333',19,'Eastern - NU (Pangnirtung)'),(163,'America/Paramaribo','pmt','-03:00','5.83333','-55.16666',187,''),(164,'America/Phoenix','mst','-07:00','33.44833','-112.07333',246,'MST - Arizona (except Navajo)'),(165,'America/Port-au-Prince','est','-04:00','18.53333','-72.33333',147,''),(166,'America/Port_of_Spain','ast','-04:00','10.65','-61.51666',196,''),(167,'America/Porto_Velho','unknown','-04:00','-8.76666','-63.9',48,'Rondonia'),(168,'America/Puerto_Rico','ast','-04:00','18.46833','-66.10611',26,''),(169,'America/Punta_Arenas','smt','-03:00','-53.15','-70.91666',128,'Region of Magallanes'),(170,'America/Rainy_River','cst','-05:00','48.71666','-94.56666',19,'Central - ON (Rainy R, Ft Frances)'),(171,'America/Rankin_Inlet','cst','-05:00','62.81666','-92.08305',19,'Central - NU (central)'),(172,'America/Recife','unknown','-03:00','-8.05','-34.9',48,'Pernambuco'),(173,'America/Regina','cst','-06:00','50.4','-104.65',19,'CST - SK (most areas)'),(174,'America/Resolute','cst','-05:00','74.69555','-94.82916',19,'Central - NU (Resolute)'),(175,'America/Rio_Branco','unknown','-05:00','-9.96666','-67.8',48,'Acre'),(176,'America/Santarem','unknown','-03:00','-2.43333','-54.86666',48,'Para (west)'),(177,'America/Santiago','smt','-03:00','-33.45','-70.66666',128,'Chile (most areas)'),(178,'America/Santo_Domingo','ast','-04:00','18.46666','-69.9',38,''),(179,'America/Sao_Paulo','unknown','-03:00','-23.53333','-46.61666',48,'Brazil (southeast: GO, DF, MG, ES, RJ, SP, PR, SC, RS)'),(180,'America/Scoresbysund','unknown','+00:00','70.48333','-21.96666',55,'Scoresbysund/Ittoqqortoormiit'),(181,'America/Sitka','akst','-08:00','57.17638','-135.30194',246,'Alaska - Sitka area'),(182,'America/St_Barthelemy','ast','-04:00','17.88333','-62.85',23,''),(183,'America/St_Johns','nst','-02:30','47.56666','-52.71666',19,'Newfoundland; Labrador (southeast)'),(184,'America/St_Kitts','ast','-04:00','17.3','-62.71666',47,''),(185,'America/St_Lucia','ast','-04:00','14.01666','-61',209,''),(186,'America/St_Thomas','ast','-04:00','18.35','-64.93333',249,''),(187,'America/St_Vincent','ast','-04:00','13.15','-61.23333',212,''),(188,'America/Swift_Current','cst','-06:00','50.28333','-107.83333',19,'CST - SK (midwest)'),(189,'America/Tegucigalpa','cst','-06:00','14.1','-87.21666',148,''),(190,'America/Thule','ast','-03:00','76.56666','-68.78333',55,'Thule/Pituffik'),(191,'America/Thunder_Bay','cst','-04:00','48.38333','-89.25',19,'Eastern - ON (Thunder Bay)'),(192,'America/Tijuana','mst','-07:00','32.53333','-117.01666',243,'Pacific Time US - Baja California'),(193,'America/Toronto','est','-04:00','43.65','-79.38333',19,'Eastern - ON, QC (most areas)'),(194,'America/Tortola','ast','-04:00','18.45','-64.61666',248,''),(195,'America/Vancouver','pst','-07:00','49.26666','-123.11666',19,'Pacific - BC (most areas)'),(196,'America/Whitehorse','pst','-07:00','60.71666','-135.05',19,'MST - Yukon (east)'),(197,'America/Winnipeg','cst','-05:00','49.88333','-97.15',19,'Central - ON (west); Manitoba'),(198,'America/Yakutat','akst','-08:00','59.54694','-139.72722',246,'Alaska - Yakutat'),(199,'America/Yellowknife','mst','-06:00','62.45','-114.35',19,'Mountain - NT (central)'),(200,'Antarctica/Casey','unknown','+11:00','-66.28333','110.51666',3,'Casey'),(201,'Antarctica/Davis','unknown','+07:00','-68.58333','77.96666',3,'Davis'),(202,'Antarctica/DumontDUrville','unknown','+10:00','-66.66666','140.01666',3,'Dumont-d\'Urville'),(203,'Antarctica/Macquarie','aest','+11:00','-54.5','158.94999',24,'Macquarie Island'),(204,'Antarctica/Mawson','unknown','+05:00','-67.59999','62.88333',3,'Mawson'),(205,'Antarctica/McMurdo','nzmt','+13:00','-77.83333','166.6',3,'New Zealand time - McMurdo, South Pole'),(206,'Antarctica/Palmer','unknown','-03:00','-64.8','-64.09999',3,'Palmer'),(207,'Antarctica/Rothera','unknown','-03:00','-67.56666','-68.13333',3,'Rothera'),(208,'Antarctica/Syowa','unknown','+03:00','-69.00611','39.59',3,'Syowa'),(209,'Antarctica/Troll','unknown','+02:00','-72.01138','2.53499',3,'Troll'),(210,'Antarctica/Vostok','unknown','+06:00','-78.4','106.9',3,'Vostok'),(211,'Arctic/Longyearbyen','cet','+02:00','78','16',225,''),(212,'Asia/Aden','unknown','+03:00','12.75','45.2',201,''),(213,'Asia/Almaty','unknown','+06:00','43.25','76.95',153,'Kazakhstan (most areas)'),(214,'Asia/Amman','eet','+03:00','31.95','35.93333',60,''),(215,'Asia/Anadyr','unknown','+12:00','64.75','177.48333',205,'MSK+09 - Bering Sea'),(216,'Asia/Aqtau','unknown','+05:00','44.51666','50.26666',153,'Mangghystau/Mankistau'),(217,'Asia/Aqtobe','unknown','+05:00','50.28333','57.16666',153,'Aqtobe/Aktobe'),(218,'Asia/Ashgabat','unknown','+05:00','37.95','58.38333',236,''),(219,'Asia/Atyrau','unknown','+05:00','47.11666','51.93333',153,'Atyrau/Atirau/Gur\'yev'),(220,'Asia/Baghdad','bmt','+03:00','33.35','44.41666',151,''),(221,'Asia/Bahrain','unknown','+03:00','26.38333','50.58333',77,''),(222,'Asia/Baku','unknown','+04:00','40.38333','49.85',119,''),(223,'Asia/Bangkok','bmt','+07:00','13.75','100.51666',89,''),(224,'Asia/Barnaul','unknown','+07:00','53.36666','83.75',205,'MSK+04 - Altai'),(225,'Asia/Beirut','eet','+03:00','33.88333','35.5',94,''),(226,'Asia/Bishkek','unknown','+06:00','42.9','74.59999',92,''),(227,'Asia/Brunei','unknown','+08:00','4.93333','114.91666',101,''),(228,'Asia/Chita','unknown','+09:00','52.05','113.46666',205,'MSK+06 - Zabaykalsky'),(229,'Asia/Choibalsan','unknown','+08:00','48.06666','114.5',98,'Dornod, Sukhbaatar'),(230,'Asia/Colombo','mmt','+05:30','6.93333','79.84999',36,''),(231,'Asia/Damascus','eet','+03:00','33.5','36.29999',227,''),(232,'Asia/Dhaka','hmt','+06:00','23.71666','90.41666',107,''),(233,'Asia/Dili','unknown','+09:00','-8.55','125.58333',35,''),(234,'Asia/Dubai','unknown','+04:00','25.3','55.3',241,''),(235,'Asia/Dushanbe','unknown','+05:00','38.58333','68.8',188,''),(236,'Asia/Famagusta','eet','+03:00','35.11666','33.95',134,'Northern Cyprus'),(237,'Asia/Gaza','eet','+03:00','31.5','34.46666',222,'Gaza Strip'),(238,'Asia/Hebron','eet','+03:00','31.53333','35.095',222,'West Bank'),(239,'Asia/Ho_Chi_Minh','plmt','+07:00','10.75','106.66666',215,''),(240,'Asia/Hong_Kong','hkt','+08:00','22.28333','114.15',63,''),(241,'Asia/Hovd','unknown','+07:00','48.01666','91.65',98,'Bayan-Olgiy, Govi-Altai, Hovd, Uvs, Zavkhan'),(242,'Asia/Irkutsk','imt','+08:00','52.26666','104.33333',205,'MSK+05 - Irkutsk, Buryatia'),(243,'Asia/Jakarta','bmt','+07:00','-6.16666','106.8',150,'Java, Sumatra'),(244,'Asia/Jayapura','wit','+09:00','-2.53333','140.69999',150,'New Guinea (West Papua / Irian Jaya); Malukus/Moluccas'),(245,'Asia/Jerusalem','ist','+03:00','31.78055','35.22388',219,''),(246,'Asia/Kabul','unknown','+04:30','34.51666','69.2',69,''),(247,'Asia/Kamchatka','unknown','+12:00','53.01666','158.65',205,'MSK+09 - Kamchatka'),(248,'Asia/Karachi','pkt','+05:00','24.86666','67.05',72,''),(249,'Asia/Kathmandu','unknown','+05:45','27.71666','85.31666',42,''),(250,'Asia/Khandyga','unknown','+09:00','62.65638','135.55388',205,'MSK+06 - Tomponsky, Ust-Maysky'),(251,'Asia/Kolkata','ist','+05:30','22.53333','88.36666',149,''),(252,'Asia/Krasnoyarsk','unknown','+07:00','56.01666','92.83333',205,'MSK+04 - Krasnoyarsk area'),(253,'Asia/Kuala_Lumpur','smt','+08:00','3.16666','101.7',96,'Malaysia (peninsula)'),(254,'Asia/Kuching','unknown','+08:00','1.55','110.33333',96,'Sabah, Sarawak'),(255,'Asia/Kuwait','unknown','+03:00','29.33333','47.98333',220,''),(256,'Asia/Macau','cst','+08:00','22.19722','113.54166',95,''),(257,'Asia/Magadan','unknown','+11:00','59.56666','150.8',205,'MSK+08 - Magadan'),(258,'Asia/Makassar','mmt','+08:00','-5.11666','119.4',150,'Borneo (east, south); Sulawesi/Celebes, Bali, Nusa Tengarra; Timor (west)'),(259,'Asia/Manila','jst','+08:00','14.58333','121',193,''),(260,'Asia/Muscat','unknown','+04:00','23.6','58.58333',224,''),(261,'Asia/Nicosia','eet','+03:00','35.16666','33.36666',134,'Cyprus (most areas)'),(262,'Asia/Novokuznetsk','unknown','+07:00','53.75','87.11666',205,'MSK+04 - Kemerovo'),(263,'Asia/Novosibirsk','unknown','+07:00','55.03333','82.91666',205,'MSK+04 - Novosibirsk'),(264,'Asia/Omsk','unknown','+06:00','55','73.4',205,'MSK+03 - Omsk'),(265,'Asia/Oral','unknown','+05:00','51.21666','51.35',153,'West Kazakhstan'),(266,'Asia/Phnom_Penh','bmt','+07:00','11.55','104.91666',80,''),(267,'Asia/Pontianak','pmt','+07:00','-0.03333','109.33333',150,'Borneo (west, central)'),(268,'Asia/Pyongyang','jst','+09:00','39.01666','125.75',32,''),(269,'Asia/Qatar','unknown','+03:00','25.28333','51.53333',223,''),(270,'Asia/Qostanay','unknown','+06:00','53.2','63.61666',153,'Qostanay/Kostanay/Kustanay'),(271,'Asia/Qyzylorda','unknown','+05:00','44.8','65.46666',153,'Qyzylorda/Kyzylorda/Kzyl-Orda'),(272,'Asia/Riyadh','unknown','+03:00','24.63333','46.71666',86,''),(273,'Asia/Sakhalin','unknown','+11:00','46.96666','142.69999',205,'MSK+08 - Sakhalin Island'),(274,'Asia/Samarkand','unknown','+05:00','39.66666','66.8',199,'Uzbekistan (west)'),(275,'Asia/Seoul','jst','+09:00','37.54999','126.96666',155,''),(276,'Asia/Shanghai','cst','+08:00','31.23333','121.46666',108,'Beijing Time'),(277,'Asia/Singapore','smt','+08:00','1.28333','103.85',183,''),(278,'Asia/Srednekolymsk','unknown','+11:00','67.46666','153.71666',205,'MSK+08 - Sakha (E); North Kuril Is'),(279,'Asia/Taipei','cst','+08:00','25.05','121.5',129,''),(280,'Asia/Tashkent','unknown','+05:00','41.33333','69.3',199,'Uzbekistan (east)'),(281,'Asia/Tbilisi','tbmt','+04:00','41.71666','44.81666',52,''),(282,'Asia/Tehran','tmt','+03:30','35.66666','51.43333',70,''),(283,'Asia/Thimphu','unknown','+06:00','27.46666','89.65',79,''),(284,'Asia/Tokyo','jst','+09:00','35.65444','139.74472',76,''),(285,'Asia/Tomsk','unknown','+07:00','56.5','84.96666',205,'MSK+04 - Tomsk'),(286,'Asia/Ulaanbaatar','unknown','+08:00','47.91666','106.88333',98,'Mongolia (most areas)'),(287,'Asia/Urumqi','unknown','+06:00','43.8','87.58333',108,'Xinjiang Time'),(288,'Asia/Ust-Nera','unknown','+10:00','64.56027','143.22666',205,'MSK+07 - Oymyakonsky'),(289,'Asia/Vientiane','bmt','+07:00','17.96666','102.6',93,''),(290,'Asia/Vladivostok','unknown','+10:00','43.16666','131.93333',205,'MSK+07 - Amur River'),(291,'Asia/Yakutsk','unknown','+09:00','62','129.66666',205,'MSK+06 - Lena River'),(292,'Asia/Yangon','rmt','+06:30','16.78333','96.16666',195,''),(293,'Asia/Yekaterinburg','pmt','+05:00','56.85','60.6',205,'MSK+02 - Urals'),(294,'Asia/Yerevan','unknown','+04:00','40.18333','44.5',117,''),(295,'Atlantic/Azores','hmt','+00:00','37.73333','-25.66666',111,'Azores'),(296,'Atlantic/Bermuda','ast','-03:00','32.28333','-64.76666',12,''),(297,'Atlantic/Canary','wet','+01:00','28.1','-15.4',87,'Canary Islands'),(298,'Atlantic/Cape_Verde','unknown','-01:00','14.91666','-23.51666',125,''),(299,'Atlantic/Faroe','wet','+01:00','62.01666','-6.76666',40,''),(300,'Atlantic/Madeira','fmt','+01:00','32.63333','-16.89999',111,'Madeira Islands'),(301,'Atlantic/Reykjavik','gmt','+00:00','64.15','-21.85',65,''),(302,'Atlantic/South_Georgia','unknown','-02:00','-54.26666','-36.53333',217,''),(303,'Atlantic/St_Helena','gmt','+00:00','-15.91666','-5.7',208,''),(304,'Atlantic/Stanley','smt','-03:00','-51.7','-57.85',39,''),(305,'Australia/Adelaide','acst','+10:30','-34.91666','138.58333',24,'South Australia'),(306,'Australia/Brisbane','aest','+10:00','-27.46666','153.03333',24,'Queensland (most areas)'),(307,'Australia/Broken_Hill','acst','+10:30','-31.95','141.44999',24,'New South Wales (Yancowinna)'),(308,'Australia/Darwin','acst','+09:30','-12.46666','130.83333',24,'Northern Territory'),(309,'Australia/Eucla','unknown','+08:45','-31.71666','128.86666',24,'Western Australia (Eucla)'),(310,'Australia/Hobart','aest','+11:00','-42.88333','147.31666',24,'Tasmania'),(311,'Australia/Lindeman','aest','+10:00','-20.26666','149',24,'Queensland (Whitsunday Islands)'),(312,'Australia/Lord_Howe','aest','+11:00','-31.55','159.08333',24,'Lord Howe Island'),(313,'Australia/Melbourne','aest','+11:00','-37.81666','144.96666',24,'Victoria'),(314,'Australia/Perth','awst','+08:00','-31.95','115.85',24,'Western Australia (most areas)'),(315,'Australia/Sydney','aest','+11:00','-33.86666','151.21666',24,'New South Wales (most areas)'),(316,'Europe/Amsterdam','amt','+02:00','52.36666','4.9',90,''),(317,'Europe/Andorra','cet','+02:00','42.5','1.51666',112,''),(318,'Europe/Astrakhan','unknown','+04:00','46.35','48.05',205,'MSK+01 - Astrakhan'),(319,'Europe/Athens','amt','+03:00','37.96666','23.71666',62,''),(320,'Europe/Belgrade','cet','+02:00','44.83333','20.5',180,''),(321,'Europe/Berlin','cet','+02:00','52.5','13.36666',43,'Germany (most areas)'),(322,'Europe/Bratislava','cet','+02:00','48.15','17.11666',214,''),(323,'Europe/Brussels','cet','+02:00','50.83333','4.33333',78,''),(324,'Europe/Bucharest','bmt','+03:00','44.43333','26.1',204,''),(325,'Europe/Budapest','cet','+02:00','47.5','19.08333',64,''),(326,'Europe/Busingen','cet','+02:00','47.7','8.68333',43,'Busingen'),(327,'Europe/Chisinau','bmt','+03:00','47','28.83333',165,''),(328,'Europe/Copenhagen','cet','+02:00','55.66666','12.58333',81,''),(329,'Europe/Dublin','dmt','+01:00','53.33333','-6.25',152,''),(330,'Europe/Gibraltar','cet','+02:00','36.13333','-5.35',53,''),(331,'Europe/Guernsey','bst','+01:00','49.45472','-2.53611',8,''),(332,'Europe/Helsinki','eet','+03:00','60.16666','24.96666',142,''),(333,'Europe/Isle_of_Man','bst','+01:00','54.15','-4.46666',73,''),(334,'Europe/Istanbul','eet','+03:00','41.01666','28.96666',197,''),(335,'Europe/Jersey','bst','+01:00','49.18361','-2.10666',9,''),(336,'Europe/Kaliningrad','cet','+02:00','54.71666','20.5',205,'MSK-01 - Kaliningrad'),(337,'Europe/Kirov','unknown','+03:00','58.6','49.65',205,'MSK+00 - Kirov'),(338,'Europe/Kyiv','unknown','+03:00','50.43333','30.51666',239,'Ukraine (most areas)'),(339,'Europe/Lisbon','cet','+01:00','38.71666','-9.13333',111,'Portugal (mainland)'),(340,'Europe/Ljubljana','cet','+02:00','46.05','14.51666',184,''),(341,'Europe/London','bst','+01:00','51.50833','-0.12527',242,''),(342,'Europe/Luxembourg','cet','+02:00','49.6','6.15',54,''),(343,'Europe/Madrid','cet','+02:00','40.4','-3.68333',87,'Spain (mainland)'),(344,'Europe/Malta','cet','+02:00','35.9','14.51666',163,''),(345,'Europe/Mariehamn','eet','+03:00','60.1','19.95',250,''),(346,'Europe/Minsk','cet','+03:00','53.9','27.56666',120,''),(347,'Europe/Monaco','cet','+02:00','43.7','7.38333',114,''),(348,'Europe/Moscow','eet','+03:00','55.75583','37.61777',205,'MSK+00 - Moscow area'),(349,'Europe/Oslo','cet','+02:00','59.91666','10.75',85,''),(350,'Europe/Paris','cet','+02:00','48.86666','2.33333',50,''),(351,'Europe/Podgorica','cet','+02:00','42.43333','19.26666',99,''),(352,'Europe/Prague','cet','+02:00','50.08333','14.43333',31,''),(353,'Europe/Riga','cet','+03:00','56.95','24.1',157,''),(354,'Europe/Rome','cet','+02:00','41.9','12.48333',74,''),(355,'Europe/Samara','unknown','+04:00','53.2','50.15',205,'MSK+01 - Samara, Udmurtia'),(356,'Europe/San_Marino','cet','+02:00','43.91666','12.46666',178,''),(357,'Europe/Sarajevo','cet','+02:00','43.86666','18.41666',15,''),(358,'Europe/Saratov','unknown','+04:00','51.56666','46.03333',205,'MSK+01 - Saratov'),(359,'Europe/Simferopol','cet','+03:00','44.95','34.1',239,'Crimea'),(360,'Europe/Skopje','cet','+02:00','41.98333','21.43333',171,''),(361,'Europe/Sofia','cet','+03:00','42.68333','23.31666',123,''),(362,'Europe/Stockholm','cet','+02:00','59.33333','18.05',88,''),(363,'Europe/Tallinn','cet','+03:00','59.41666','24.75',140,''),(364,'Europe/Tirane','cet','+02:00','41.33333','19.83333',115,''),(365,'Europe/Ulyanovsk','unknown','+04:00','54.33333','48.4',205,'MSK+01 - Ulyanovsk'),(366,'Europe/Uzhgorod','cet','+03:00','48.61666','22.3',239,'Transcarpathia'),(367,'Europe/Vaduz','cet','+02:00','47.15','9.51666',113,''),(368,'Europe/Vatican','cet','+02:00','41.90222','12.45305',247,''),(369,'Europe/Vienna','cet','+02:00','48.21666','16.33333',118,''),(370,'Europe/Vilnius','cet','+03:00','54.68333','25.31666',159,''),(371,'Europe/Volgograd','unknown','+03:00','48.73333','44.41666',205,'MSK+00 - Volgograd'),(372,'Europe/Warsaw','cet','+02:00','52.25','21',176,''),(373,'Europe/Zagreb','cet','+02:00','45.8','15.96666',132,''),(374,'Europe/Zaporozhye','cet','+03:00','47.83333','35.16666',239,'Zaporozhye and east Lugansk'),(375,'Europe/Zurich','cet','+02:00','47.38333','8.53333',226,''),(376,'Indian/Antananarivo','eat','+03:00','-18.91666','47.51666',160,''),(377,'Indian/Chagos','unknown','+06:00','-7.33333','72.41666',17,''),(378,'Indian/Christmas','unknown','+07:00','-10.41666','105.71666',228,''),(379,'Indian/Cocos','unknown','+06:30','-12.16666','96.91666',230,''),(380,'Indian/Comoro','eat','+03:00','-11.68333','43.26666',240,''),(381,'Indian/Kerguelen','unknown','+05:00','-49.35277','70.2175',231,''),(382,'Indian/Mahe','unknown','+04:00','-4.66666','55.46666',181,''),(383,'Indian/Maldives','mmt','+05:00','4.16666','73.5',191,''),(384,'Indian/Mauritius','unknown','+04:00','-20.16666','57.5',164,''),(385,'Indian/Mayotte','eat','+03:00','-12.78333','45.23333',37,''),(386,'Indian/Reunion','unknown','+04:00','-20.86666','55.46666',206,''),(387,'Pacific/Apia','unknown','+13:00','-13.83333','-171.73333',68,''),(388,'Pacific/Auckland','nzmt','+13:00','-36.86666','174.76666',103,'New Zealand (most areas)'),(389,'Pacific/Bougainville','unknown','+11:00','-6.21666','155.56666',67,'Bougainville'),(390,'Pacific/Chatham','unknown','+13:45','-43.95','-176.55',103,'Chatham Islands'),(391,'Pacific/Chuuk','unknown','+10:00','7.41666','151.78333',46,'Chuuk/Truk, Yap'),(392,'Pacific/Easter','emt','-05:00','-27.15','-109.43333',128,'Easter Island'),(393,'Pacific/Efate','unknown','+11:00','-17.66666','168.41666',200,''),(394,'Pacific/Fakaofo','unknown','+13:00','-9.36666','-171.23333',234,''),(395,'Pacific/Fiji','unknown','+12:00','-18.13333','178.41666',141,''),(396,'Pacific/Funafuti','unknown','+12:00','-8.51666','179.21666',238,''),(397,'Pacific/Galapagos','unknown','-06:00','-0.9','-89.6',137,'Galapagos Islands'),(398,'Pacific/Gambier','unknown','-09:00','-23.13333','-134.94999',49,'Gambier Islands'),(399,'Pacific/Guadalcanal','unknown','+11:00','-9.53333','160.19999',216,''),(400,'Pacific/Guam','chst','+10:00','13.46666','144.75',58,''),(401,'Pacific/Honolulu','hst','-10:00','21.30694','-157.85833',246,'Hawaii'),(402,'Pacific/Kanton','unknown','+13:00','-2.78333','-171.71666',66,'Phoenix Islands'),(403,'Pacific/Kiritimati','unknown','+14:00','1.86666','-157.33333',66,'Line Islands'),(404,'Pacific/Kosrae','unknown','+11:00','5.31666','162.98333',46,'Kosrae'),(405,'Pacific/Kwajalein','unknown','+12:00','9.08333','167.33333',192,'Kwajalein'),(406,'Pacific/Majuro','unknown','+12:00','7.15','171.2',192,'Marshall Islands (most areas)'),(407,'Pacific/Marquesas','unknown','-09:30','-9','-139.5',49,'Marquesas Islands'),(408,'Pacific/Midway','sst','-11:00','28.21666','-177.36666',245,'Midway Islands'),(409,'Pacific/Nauru','unknown','+12:00','-0.51666','166.91666',168,''),(410,'Pacific/Niue','unknown','-11:00','-19.01666','-169.91666',104,''),(411,'Pacific/Norfolk','unknown','+12:00','-29.05','167.96666',229,''),(412,'Pacific/Noumea','unknown','+11:00','-22.26666','166.44999',102,''),(413,'Pacific/Pago_Pago','sst','-11:00','-14.26666','-170.7',1,''),(414,'Pacific/Palau','unknown','+09:00','7.33333','134.48333',172,''),(415,'Pacific/Pitcairn','unknown','-08:00','-25.06666','-130.08333',109,''),(416,'Pacific/Pohnpei','unknown','+11:00','6.96666','158.21666',46,'Pohnpei/Ponape'),(417,'Pacific/Port_Moresby','unknown','+10:00','-9.5','147.16666',67,'Papua New Guinea (most areas)'),(418,'Pacific/Rarotonga','unknown','-10:00','-21.23333','-159.76666',29,''),(419,'Pacific/Saipan','chst','+10:00','15.2','145.75',28,''),(420,'Pacific/Tahiti','unknown','-10:00','-17.53333','-149.56666',49,'Society Islands'),(421,'Pacific/Tarawa','unknown','+12:00','1.41666','173',66,'Gilbert Islands'),(422,'Pacific/Tongatapu','unknown','+13:00','-21.13333','-175.2',91,''),(423,'Pacific/Wake','unknown','+12:00','19.28333','166.61666',245,'Wake Island'),(424,'Pacific/Wallis','unknown','+12:00','-13.3','-176.16666',232,''),(425,'UTC','utc','+00:00','0','0',NULL,'');
/*!40000 ALTER TABLE `timezones` ENABLE KEYS */;
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