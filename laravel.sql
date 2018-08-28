-- MySQL dump 10.13  Distrib 5.7.23, for Linux (x86_64)
--
-- Host: localhost    Database: laravel
-- ------------------------------------------------------
-- Server version	5.7.23-0ubuntu0.18.04.1

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
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2018_08_23_112937_create_passports_table',2),(5,'2018_08_23_124101_llenar_tabla',3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passports`
--

DROP TABLE IF EXISTS `passports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `passports` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` int(11) NOT NULL,
  `office` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `passports_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passports`
--

LOCK TABLES `passports` WRITE;
/*!40000 ALTER TABLE `passports` DISABLE KEYS */;
INSERT INTO `passports` VALUES (1,'Pepa',978307200,'pepe@gmail.es',666666666,'Delhi','1535027574imagen.jpeg','2018-08-23 10:32:54','2018-08-27 05:01:10'),(2,'Valentina',33,'Efrain@gmail.com',115605996,'Bangalore','1535027574imagen.jpeg',NULL,'2018-08-27 04:57:13'),(3,'Cortney',51,'Maxime@gmail.com',378038198,'Mumbai','1535027574imagen.jpeg',NULL,NULL),(4,'Neoma',18,'Gideon@gmail.com',803546083,'Bangalore','1535027574imagen.jpeg',NULL,NULL),(5,'Jodie',36,'Matteo@gmail.com',403957938,'Delhi','1535027574imagen.jpeg',NULL,NULL),(6,'Zaria',46,'Cristian@gmail.com',508186587,'Chennai','1535027574imagen.jpeg',NULL,NULL),(7,'Sasha',16,'Jaren@gmail.com',850754642,'Chennai','1535027574imagen.jpeg',NULL,NULL),(8,'Angelica',12,'Frederic@gmail.com',137484246,'Bangalore','1535027574imagen.jpeg',NULL,NULL),(9,'Amie',11,'Jerod@gmail.com',229979929,'Bangalore','1535027574imagen.jpeg',NULL,NULL),(10,'Aglae',44,'Nikolas@gmail.com',793941360,'Chennai','1535027574imagen.jpeg',NULL,NULL),(11,'Libbie',65,'Coty@gmail.com',710586644,'Mumbai','1535027574imagen.jpeg',NULL,NULL),(12,'Fay',12,'Amparo@gmail.com',558493361,'Bangalore','1535027574imagen.jpeg',NULL,NULL),(13,'Sienna',54,'Wendell@gmail.com',273430517,'Chennai','1535027574imagen.jpeg',NULL,NULL),(14,'Winnifred',37,'Kyler@gmail.com',933181638,'Delhi','1535027574imagen.jpeg',NULL,NULL),(15,'Katherine',35,'Finn@gmail.com',684385908,'Bangalore','1535027574imagen.jpeg',NULL,NULL),(16,'Edwina',63,'Shaun@gmail.com',169658988,'Bangalore','1535027574imagen.jpeg',NULL,NULL),(17,'Adaline',51,'Monte@gmail.com',130918395,'Delhi','1535027574imagen.jpeg',NULL,NULL),(18,'Adaline',46,'Jaron@gmail.com',907562700,'Mumbai','1535027574imagen.jpeg',NULL,NULL),(19,'Cecile',45,'Jonathan@gmail.com',679014377,'Chennai','1535027574imagen.jpeg',NULL,NULL),(20,'Ena',17,'Haskell@gmail.com',990509863,'Chennai','1535027574imagen.jpeg',NULL,NULL),(21,'Raina',10,'Cody@gmail.com',666666609,'Mumbai','1535027574imagen.jpeg',NULL,NULL),(22,'Alexandra',47,'Quinton@gmail.com',500254851,'Delhi','1535027574imagen.jpeg',NULL,NULL),(23,'Adelia',23,'Domenico@gmail.com',699127433,'Chennai','1535027574imagen.jpeg',NULL,NULL),(24,'Maybell',66,'Niko@gmail.com',369118672,'Mumbai','1535027574imagen.jpeg',NULL,NULL),(25,'Liana',46,'Roy@gmail.com',597433012,'Bangalore','1535027574imagen.jpeg',NULL,NULL),(26,'Jackeline',42,'Lennie@gmail.com',973273802,'Bangalore','1535027574imagen.jpeg',NULL,NULL),(27,'Laurine',50,'Edmund@gmail.com',352353597,'Chennai','1535027574imagen.jpeg',NULL,NULL),(28,'Tamia',49,'Jayde@gmail.com',386807594,'Bangalore','1535027574imagen.jpeg',NULL,NULL),(29,'Alba',49,'Rusty@gmail.com',697528329,'Delhi','1535027574imagen.jpeg',NULL,NULL),(30,'Beryl',47,'Ward@gmail.com',768594193,'Delhi','1535027574imagen.jpeg',NULL,NULL),(31,'Margaretta',53,'Oran@gmail.com',894017747,'Chennai','1535027574imagen.jpeg',NULL,NULL),(32,'Dayna',66,'Zakary@gmail.com',947910382,'Bangalore','1535027574imagen.jpeg',NULL,NULL),(33,'Camille',59,'Horacio@gmail.com',487745186,'Delhi','1535027574imagen.jpeg',NULL,NULL),(34,'Emily',55,'Dexter@gmail.com',730635497,'Delhi','1535027574imagen.jpeg',NULL,NULL),(35,'Tiana',18,'Bell@gmail.com',993003855,'Bangalore','1535027574imagen.jpeg',NULL,NULL),(36,'Marian',25,'Frederik@gmail.com',367601655,'Delhi','1535027574imagen.jpeg',NULL,NULL),(37,'Alexandrea',62,'Neal@gmail.com',625911978,'Chennai','1535027574imagen.jpeg',NULL,NULL),(38,'Ruthe',43,'Adonis@gmail.com',604874843,'Chennai','1535027574imagen.jpeg',NULL,NULL),(39,'Scarlett',44,'Wilber@gmail.com',716655456,'Mumbai','1535027574imagen.jpeg',NULL,NULL),(40,'Maximillia',23,'Hailey@gmail.com',445301869,'Bangalore','1535027574imagen.jpeg',NULL,NULL),(41,'Angelica',13,'Eric@gmail.com',727151289,'Mumbai','1535027574imagen.jpeg',NULL,NULL),(42,'Agnes',49,'Gus@gmail.com',898784857,'Delhi','1535027574imagen.jpeg',NULL,NULL),(43,'Retha',14,'Jamil@gmail.com',826671131,'Chennai','1535027574imagen.jpeg',NULL,NULL),(44,'Jakayla',27,'Pablo@gmail.com',116152537,'Delhi','1535027574imagen.jpeg',NULL,NULL),(45,'Destiny',32,'Alejandrin@gmail.com',199759668,'Delhi','1535027574imagen.jpeg',NULL,NULL),(46,'Vallie',24,'Jonas@gmail.com',426195634,'Mumbai','1535027574imagen.jpeg',NULL,NULL),(47,'Alice',51,'Alfredo@gmail.com',695073367,'Mumbai','1535027574imagen.jpeg',NULL,NULL),(48,'Reina',27,'Dylan@gmail.com',628283036,'Bangalore','1535027574imagen.jpeg',NULL,NULL),(49,'Rosetta',31,'Emanuel@gmail.com',990518166,'Bangalore','1535027574imagen.jpeg',NULL,NULL),(50,'Yasmine',12,'Tyrese@gmail.com',229917373,'Mumbai','1535027574imagen.jpeg',NULL,NULL);
/*!40000 ALTER TABLE `passports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-08-27 11:56:20
