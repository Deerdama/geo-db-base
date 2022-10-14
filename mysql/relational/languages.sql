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
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `native_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code_iso` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code_iso_2` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt_iso` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `languages_name_unique` (`name`),
  UNIQUE KEY `languages_code_iso_unique` (`code_iso`),
  UNIQUE KEY `languages_code_iso_2_unique` (`code_iso_2`)
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'Afrikaans','Afrikaans','af','afr',NULL),(2,'Amharic','አማርኛ','am','amh',NULL),(3,'Arabic','العربية','ar','ara',NULL),(4,'Aymara','aymar aru','ay','aym',NULL),(5,'Azerbaijani','azərbaycan dili','az','aze',NULL),(6,'Belarusian','беларуская мова','be','bel',NULL),(7,'Bulgarian','български език','bg','bul',NULL),(8,'Bislama','Bislama','bi','bis',NULL),(9,'Bengali','বাংলা','bn','ben',NULL),(10,'Bosnian','bosanski jezik','bs','bos',NULL),(11,'Catalan','català','ca','cat',NULL),(12,'Chamorro','Chamoru','ch','cha',NULL),(13,'Czech','čeština','cs','ces',NULL),(14,'Danish','dansk','da','dan',NULL),(15,'German','Deutsch','de','deu',NULL),(16,'Divehi','ދިވެހި','dv','div',NULL),(17,'Dzongkha','རྫོང་ཁ','dz','dzo',NULL),(18,'Greek (modern)','ελληνικά','el','ell',NULL),(19,'English','English','en','eng',NULL),(20,'Spanish','Español','es','spa',NULL),(21,'Estonian','eesti','et','est',NULL),(22,'Persian (Farsi)','فارسی','fa','fas','per'),(23,'Fula','Fulfulde','ff','ful',NULL),(24,'Finnish','suomi','fi','fin',NULL),(25,'Fijian','vosa Vakaviti','fj','fij',NULL),(26,'Faroese','føroyskt','fo','fao',NULL),(27,'French','français','fr','fra',NULL),(28,'Irish','Gaeilge','ga','gle',NULL),(29,'Guaraní','Avañe\'ẽ','gn','grn',NULL),(30,'Manx','Gaelg','gv','glv',NULL),(31,'Hebrew (modern)','עברית','he','heb',NULL),(32,'Hindi','हिन्दी','hi','hin',NULL),(33,'Croatian','hrvatski jezik','hr','hrv',NULL),(34,'Haitian','Kreyòl ayisyen','ht','hat',NULL),(35,'Hungarian','magyar','hu','hun',NULL),(36,'Armenian','Հայերեն','hy','hye',NULL),(37,'Indonesian','Bahasa Indonesia','id','ind',NULL),(38,'Icelandic','Íslenska','is','isl',NULL),(39,'Italian','Italiano','it','ita',NULL),(40,'Japanese','日本語 (にほんご)','ja','jpn',NULL),(41,'Georgian','ქართული','ka','kat',NULL),(42,'Kongo','Kikongo','kg','kon',NULL),(43,'Kazakh','қазақ тілі','kk','kaz',NULL),(44,'Kalaallisut','kalaallisut','kl','kal',NULL),(45,'Khmer','ខ្មែរ','km','khm',NULL),(46,'Korean','한국어','ko','kor',NULL),(47,'Kurdish','Kurdî','ku','kur',NULL),(48,'Kyrgyz','Кыргызча','ky','kir',NULL),(49,'Latin','latine','la','lat',NULL),(50,'Luxembourgish','Lëtzebuergesch','lb','ltz',NULL),(51,'Lingala','Lingála','ln','lin',NULL),(52,'Lao','ພາສາລາວ','lo','lao',NULL),(53,'Lithuanian','lietuvių kalba','lt','lit',NULL),(54,'Luba-Katanga','Tshiluba','lu','lub',NULL),(55,'Latvian','latviešu valoda','lv','lav',NULL),(56,'Malagasy','fiteny malagasy','mg','mlg',NULL),(57,'Marshallese','Kajin M̧ajeļ','mh','mah',NULL),(58,'Māori','te reo Māori','mi','mri',NULL),(59,'Macedonian','македонски јазик','mk','mkd',NULL),(60,'Mongolian','Монгол хэл','mn','mon',NULL),(61,'Malay','bahasa Melayu','ms','msa',NULL),(62,'Maltese','Malti','mt','mlt',NULL),(63,'Burmese','ဗမာစာ','my','mya',NULL),(64,'Nauruan','Dorerin Naoero','na','nau',NULL),(65,'Norwegian Bokmål','Norsk bokmål','nb','nob',NULL),(66,'Northern Ndebele','isiNdebele','nd','nde',NULL),(67,'Nepali','नेपाली','ne','nep',NULL),(68,'Dutch','Nederlands','nl','nld',NULL),(69,'Norwegian Nynorsk','Norsk nynorsk','nn','nno',NULL),(70,'Norwegian','Norsk','no','nor',NULL),(71,'Southern Ndebele','isiNdebele','nr','nbl',NULL),(72,'Chichewa','chiCheŵa','ny','nya',NULL),(73,'(Eastern) Punjabi','ਪੰਜਾਬੀ','pa','pan',NULL),(74,'Polish','język polski','pl','pol',NULL),(75,'Pashto','پښتو','ps','pus',NULL),(76,'Portuguese','Português','pt','por',NULL),(77,'Quechua','Runa Simi','qu','que',NULL),(78,'Kirundi','Ikirundi','rn','run',NULL),(79,'Romanian','Română','ro','ron',NULL),(80,'Russian','Русский','ru','rus',NULL),(81,'Kinyarwanda','Ikinyarwanda','rw','kin',NULL),(82,'Sango','yângâ tî sängö','sg','sag',NULL),(83,'Sinhalese','සිංහල','si','sin',NULL),(84,'Slovak','slovenčina','sk','slk',NULL),(85,'Slovene','slovenski jezik','sl','slv',NULL),(86,'Samoan','gagana fa\'a Samoa','sm','smo',NULL),(87,'Shona','chiShona','sn','sna',NULL),(88,'Somali','Soomaaliga','so','som',NULL),(89,'Albanian','Shqip','sq','sqi',NULL),(90,'Serbian','српски језик','sr','srp',NULL),(91,'Swati','SiSwati','ss','ssw',NULL),(92,'Southern Sotho','Sesotho','st','sot',NULL),(93,'Swedish','svenska','sv','swe',NULL),(94,'Swahili','Kiswahili','sw','swa',NULL),(95,'Tamil','தமிழ்','ta','tam',NULL),(96,'Tajik','тоҷикӣ','tg','tgk',NULL),(97,'Thai','ไทย','th','tha',NULL),(98,'Tigrinya','ትግርኛ','ti','tir',NULL),(99,'Turkmen','Türkmen','tk','tuk',NULL),(100,'Tswana','Setswana','tn','tsn',NULL),(101,'Tonga (Tonga Islands)','faka Tonga','to','ton',NULL),(102,'Turkish','Türkçe','tr','tur',NULL),(103,'Tsonga','Xitsonga','ts','tso',NULL),(104,'Ukrainian','Українська','uk','ukr',NULL),(105,'Urdu','اردو','ur','urd',NULL),(106,'Uzbek','Oʻzbek','uz','uzb',NULL),(107,'Venda','Tshivenḓa','ve','ven',NULL),(108,'Vietnamese','Tiếng Việt','vi','vie',NULL),(109,'Xhosa','isiXhosa','xh','xho',NULL),(110,'Chinese','中文 (Zhōngwén)','zh','zho',NULL),(111,'Malaysian','بهاس مليسيا','zsm','zsm',NULL),(112,'Zulu','isiZulu','zu','zul',NULL),(113,'Welsh','Cymraeg','cy','cym','wel'),(114,'Luba-Kasai','Tshiluba','lua','lua',NULL),(115,'Niuean','ko e vagahau Niuē','niu','niu',NULL),(116,'Seychellois Creole','seselwa','crs','crs',NULL),(117,'Nafaanra','Nafaanra','nfr','nfr',NULL),(118,'Herero','Otjiherero','hz','her',NULL),(119,'Khoekhoe','Khoekhoegowab','hgm','hgm','naq'),(120,'Kwangali','Kwangali','kwn','kwn',NULL),(121,'Lozi','Lozi','loz','loz',NULL),(122,'Ndonga','Oshindonga','ng','ndo',NULL),(123,'Montenegrin','crnogorski','cnr','cnr',NULL),(124,'Swiss German','Schwiizerdütsch','gsw','gsw',NULL),(125,'Romansh','Romontsch','rm','roh',NULL),(126,'Jèrriais','Jèrriais','nrf','nrf',NULL),(127,'Comorian','شِكُمُرِ‎','zdj','zdj',NULL),(128,'Fiji Hindi','फ़िजी हिंदी;','hif','hif',NULL),(129,'Cook Islands Māori','Māori Kūki \'Āirani','rar','rar',NULL),(130,'Belizean Creole','Belize Kriol','bzj','bzj','bjz'),(131,'Sámi','Saami','smi','smi',NULL),(132,'Northern Sotho','Sesotho sa Leboa','nso','nso',NULL),(133,'Berber','ⵜⴰⵎⴰⵣⵉⵖⵜ','ber','ber',NULL),(134,'Filipino','Wikang Filipino','fil','fil',NULL),(135,'Aramaic','ܐܪܡܝܐ','arc','arc',NULL),(136,'Sorani','کوردیی ناوەندی','ckb','ckb',NULL),(137,'Papiamento','Papiamentu','pap','pap',NULL),(138,'Pitcairn-Norfolk','Norf\'k','pih','pih',NULL),(139,'Tokelauan','Tokelau','tkl','tkl',NULL),(140,'Upper Guinea Crioulo','Upper Guinea Crioulo','pov','pov',NULL),(141,'Tuvaluan','Te Ggana Tuuvalu','tvl','tvl',NULL),(142,'Dari Persian','دری','prs','prs',NULL),(143,'Hassaniya','حسانية','mey','mey',NULL),(144,'Carolinian','Refaluwasch','cal','cal',NULL),(145,'Tetum','Tétum Praça','tet','tet',NULL),(146,'Chibarwe','Chibarwe','bwg','bwg',NULL),(147,'Kalanga','TjiKalanga','kck','kck',NULL),(148,'Khoisan','Khoesaan','khi','khi',NULL),(149,'Ndau','Ndau','ndc','ndc',NULL),(150,'Tonga (Zambia)','isiTonga','toi','toi',NULL),(151,'Hiri Motu','Police Motu','ho','hmo',NULL),(152,'Tok Pisin','Tok Pisin','tpi','tpi',NULL),(153,'Austro-Bavarian German','Boarisch','bar','bar',NULL),(154,'Gilbertese','Taetae ni Kiribati','gil','gil',NULL),(155,'Palauan','a tekoi er a Belau','pau','pau',NULL),(156,'Mauritian Creole','kreol morisien','mfe','mfe',NULL),(157,'Jamaican Patois','Patwah','jam','jam',NULL);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
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
