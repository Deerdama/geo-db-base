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
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `currencies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `currencies_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=172 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currencies`
--

LOCK TABLES `currencies` WRITE;
/*!40000 ALTER TABLE `currencies` DISABLE KEYS */;
INSERT INTO `currencies` VALUES (1,'Afghan afghani','AFN','؋'),(2,'Albanian lek','ALL','L'),(3,'Algerian dinar','DZD','د.ج'),(4,'Angolan kwanza','AOA','Kz'),(5,'Argentine peso','ARS','$'),(6,'Armenian dram','AMD','֏'),(7,'Aruban florin','AWG','ƒ'),(8,'Australian dollar','AUD','$'),(9,'Azerbaijani manat','AZN','₼'),(10,'Bahamian dollar','BSD','$'),(11,'Bahraini dinar','BHD','.د.ب'),(12,'Bangladeshi taka','BDT','৳'),(13,'Barbadian dollar','BBD','$'),(14,'Belarusian ruble','BYN','Br'),(15,'Belize dollar','BZD','$'),(16,'Bermudian dollar','BMD','$'),(17,'Bhutanese ngultrum','BTN','Nu.'),(18,'Bolivian boliviano','BOB','Bs.'),(19,'Bosnia and Herzegovina convertible mark','BAM',NULL),(20,'Botswana pula','BWP','P'),(21,'Brazilian real','BRL','R$'),(22,'British pound','GBP','£'),(23,'Brunei dollar','BND','$'),(24,'Bulgarian lev','BGN','лв'),(25,'Burmese kyat','MMK','Ks'),(26,'Burundian franc','BIF','Fr'),(27,'Cambodian riel','KHR','៛'),(28,'Canadian dollar','CAD','$'),(29,'Cape Verdean escudo','CVE','Esc'),(30,'Cayman Islands dollar','KYD','$'),(31,'Central African CFA franc','XAF','Fr'),(32,'CFP franc','XPF','₣'),(33,'Chilean peso','CLP','$'),(34,'Chinese yuan','CNY','¥'),(35,'Colombian peso','COP','$'),(36,'Comorian franc','KMF','Fr'),(37,'Congolese franc','CDF','FC'),(38,'Cook Islands dollar','CKD','$'),(39,'Costa Rican colón','CRC','₡'),(40,'Croatian kuna','HRK','kn'),(41,'Cuban convertible peso','CUC','$'),(42,'Cuban peso','CUP','$'),(43,'Czech koruna','CZK','Kč'),(44,'dalasi','GMD','D'),(45,'Danish krone','DKK','kr'),(46,'denar','MKD','den'),(47,'Djiboutian franc','DJF','Fr'),(48,'Dominican peso','DOP','$'),(49,'Eastern Caribbean dollar','XCD','$'),(50,'Egyptian pound','EGP','£'),(51,'Eritrean nakfa','ERN','Nfk'),(52,'Ethiopian birr','ETB','Br'),(53,'Euro','EUR','€'),(54,'Falkland Islands pound','FKP','£'),(56,'Faroese króna','FOK','kr'),(57,'Fijian dollar','FJD','$'),(58,'Ghanaian cedi','GHS','₵'),(59,'Gibraltar pound','GIP','£'),(60,'Guatemalan quetzal','GTQ','Q'),(61,'Guernsey pound','GGP','£'),(62,'Guinean franc','GNF','Fr'),(63,'Guyanese dollar','GYD','$'),(64,'Haitian gourde','HTG','G'),(65,'Honduran lempira','HNL','L'),(66,'Hong Kong dollar','HKD','$'),(67,'Hungarian forint','HUF','Ft'),(68,'Icelandic króna','ISK','kr'),(69,'Indian rupee','INR','₹'),(70,'Indonesian rupiah','IDR','Rp'),(71,'Iranian rial','IRR','﷼'),(72,'Iraqi dinar','IQD','ع.د'),(73,'Israeli new shekel','ILS','₪'),(74,'Jamaican dollar','JMD','$'),(75,'Japanese yen','JPY','¥'),(76,'Jersey pound','JEP','£'),(77,'Jersey pound','JEP[G]','£'),(78,'Jordanian dinar','JOD','JD'),(79,'Kazakhstani tenge','KZT','₸'),(80,'Kenyan shilling','KES','Sh'),(81,'Kiribati dollar','KID','$'),(82,'krone','NOK','kr'),(83,'Kuwaiti dinar','KWD','د.ك'),(84,'Kyrgyzstani som','KGS','с'),(85,'Lao kip','LAK','₭'),(86,'lari','GEL','₾'),(87,'Lebanese pound','LBP','ل.ل'),(88,'Lesotho loti','LSL','L'),(89,'Liberian dollar','LRD','$'),(90,'Libyan dinar','LYD','ل.د'),(91,'Macanese pataca','MOP','P'),(92,'Malagasy ariary','MGA','Ar'),(93,'Malawian kwacha','MWK','MK'),(94,'Malaysian ringgit','MYR','RM'),(95,'Maldivian rufiyaa','MVR','.ރ'),(96,'Manx pound','IMP','£'),(97,'Manx pound','IMP[G]','£'),(98,'Mauritanian ouguiya','MRO','UM'),(99,'Mauritanian ouguiya','MRU','UM'),(100,'Mauritian rupee','MUR','₨'),(101,'Mexican peso','MXN','$'),(102,'Moldovan leu','MDL','L'),(103,'Mongolian tögrög','MNT','₮'),(104,'Moroccan dirham','MAD','د.م.'),(105,'Mozambican metical','MZN','MT'),(106,'Namibian dollar','NAD','$'),(107,'Nepalese rupee','NPR','₨'),(108,'Netherlands Antillean guilder','ANG','ƒ'),(109,'New Taiwan dollar','TWD','$'),(110,'New Zealand dollar','NZD','$'),(111,'Nicaraguan córdoba','NIO','C$'),(112,'Nigerian naira','NGN','₦'),(113,'North Korean won','KPW','₩'),(114,'Old Belarusian ruble','BYR','Br'),(115,'Omani rial','OMR','ر.ع.'),(116,'Pakistani rupee','PKR','₨'),(117,'Panamanian balboa','PAB','B/.'),(118,'Papua New Guinean kina','PGK','K'),(119,'Paraguayan guaraní','PYG','₲'),(120,'Peruvian sol','PEN','S/ '),(121,'Philippine peso','PHP','₱'),(122,'Polish złoty','PLN','zł'),(123,'Qatari riyal','QAR','ر.ق'),(124,'Romanian leu','RON','lei'),(125,'Russian ruble','RUB','₽'),(126,'Rwandan franc','RWF','Fr'),(127,'Saint Helena pound','SHP','£'),(128,'Samoan tālā','WST','T'),(129,'Saudi riyal','SAR','ر.س'),(130,'Serbian dinar','RSD','дин.'),(131,'Seychellois rupee','SCR','₨'),(132,'Sierra Leonean leone','SLL','Le'),(133,'Singapore dollar','SGD','$'),(134,'Solomon Islands dollar','SBD','$'),(135,'Somali shilling','SOS','Sh'),(136,'South African rand','ZAR','R'),(137,'South Korean won','KRW','₩'),(138,'South Sudanese pound','SSP','£'),(139,'Sri Lankan rupee','LKR','Rs  රු'),(140,'Sudanese pound','SDG',NULL),(141,'Surinamese dollar','SRD','$'),(142,'Swazi lilangeni','SZL','L'),(143,'Swedish krona','SEK','kr'),(144,'Swiss franc','CHF','Fr.'),(145,'Syrian pound','SYP','£'),(146,'São Tomé and Príncipe dobra','STD','Db'),(147,'São Tomé and Príncipe dobra','STN','Db'),(148,'Tajikistani somoni','TJS','ЅМ'),(149,'Tanzanian shilling','TZS','Sh'),(150,'Thai baht','THB','฿'),(151,'Tongan paʻanga','TOP','T$'),(152,'Trinidad and Tobago dollar','TTD','$'),(153,'Tunisian dinar','TND','د.ت'),(154,'Turkish lira','TRY','₺'),(155,'Turkmenistan manat','TMT','m'),(156,'Tuvaluan dollar','TVD','$'),(157,'Tuvaluan dollar','TVD[G]','$'),(158,'Ugandan shilling','UGX','Sh'),(159,'Ukrainian hryvnia','UAH','₴'),(160,'United Arab Emirates dirham','AED','د.إ'),(161,'United States dollar','USD','$'),(162,'Uruguayan peso','UYU','$'),(163,'Uzbekistani soʻm','UZS','so\'m'),(164,'Vanuatu vatu','VUV','Vt'),(165,'Venezuelan bolívar','VEF','Bs F'),(166,'Venezuelan bolívar soberano','VES','Bs.S.'),(167,'Vietnamese đồng','VND','₫'),(168,'West African CFA franc','XOF','Fr'),(169,'Yemeni rial','YER','﷼'),(170,'Zambian kwacha','ZMW','ZK'),(171,'Zimbabwean dollar','ZWL','$');
/*!40000 ALTER TABLE `currencies` ENABLE KEYS */;
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
