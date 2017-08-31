CREATE DATABASE  IF NOT EXISTS `impact` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `impact`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: impact
-- ------------------------------------------------------
-- Server version	5.6.21

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
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'Shahrokh','37dbb6ac19dcd69f9e1b6c4540fcd416','shahrokh@yahoo.com','2017-08-29 10:36:03','2017-08-29 10:36:03'),(3,'Milad Rostampoor','b86ea911d632363c1bb812a6a9827702','milad@yahoo.com','2017-08-29 17:14:09','2017-08-29 17:14:09'),(4,'Mayam Sedighi','73ed82a1d4fbe54ebab41b3448bddeaa','maram@yahoo.com','2017-08-29 17:17:05','2017-08-29 17:17:05'),(5,'Naomi Mater','23d1b44aec271368f25169e5f789d463','naome@milan.it','2017-08-29 17:54:03','2017-08-29 23:16:26'),(6,'Dummy NameO','23d1b44aec271368f25169e5f789d463','shahrokh@yahoo.co','2017-08-29 17:54:25','2017-08-29 23:14:37'),(7,'shakhibazooka','23d1b44aec271368f25169e5f789d463','shahrokh@yahoo.com2','2017-08-29 17:54:46','2017-08-29 17:54:46'),(8,'shakhibazooka','23d1b44aec271368f25169e5f789d463','shahrokh@yahoo.com3','2017-08-29 17:55:06','2017-08-29 17:55:06'),(12,'Mark','23d1b44aec271368f25169e5f789d463','shahrokh@yahoo.com7','2017-08-29 17:56:28','2017-08-29 17:56:28'),(13,'Monika','23d1b44aec271368f25169e5f789d463','shahrokh@yahoo.com8','2017-08-29 17:56:52','2017-08-29 17:56:52'),(14,'Ivan','23d1b44aec271368f25169e5f789d463','ivas@restartnetwork.com','2017-08-29 18:37:09','2017-08-29 18:37:09');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `content`
--

DROP TABLE IF EXISTS `content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `slug` varchar(255) DEFAULT NULL,
  `description` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `admin_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_content_admin_idx` (`admin_id`),
  CONSTRAINT `fk_content_id_admin` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `content`
--

LOCK TABLES `content` WRITE;
/*!40000 ALTER TABLE `content` DISABLE KEYS */;
INSERT INTO `content` VALUES (3,'The Night Way','This is the content of my content for this perpose jhgfd','the-night-way','This is a short description about how this content will work hg','2017-08-31 15:09:19','2017-08-31 15:09:19',1),(4,'Ring A10 West bij Amsterdam zaterdag al open','Rijkswaterstaat laat weten dat bij het plannen van de werkzaamheden extra tijd was uitgetrokken voor eventuele tegenvallers. Maar die zijn er nauwelijks geweest. \"Het werk verliep soepel en het weer zat mee\'\', aldus een woordvoerder. \r\n\r\nDe afgelopen zes weken is asfalt weggefreesd en opnieuw aangebracht en is nieuwe belijning getrokken. Verder zijn de bestrating in de bermen en de matrixborden vervangen en is de regenwaterafvoer verbeterd.','Ring-A10','Het verkeer kan vanaf zaterdagmorgen vroeg weer in beide richtingen gebruikmaken van de A10 West bij Amsterdam. Dat is twee dagen eerder dan gepland.','2017-08-31 14:16:31','2017-08-31 14:16:31',1),(5,'Transportbedrijf Brinkman krijgt deurwaarder over de vloer','De drie medewerkers, allen chauffeur en FNV-lid, zijn volgens FNV meerdere keren onterecht ontslagen bij het bedrijf. De rechter heeft dit besluit teruggefloten. Twee chauffeurs werken volgens de FNV nog bij het bedrijf en de ander heeft een ontbonden contract.\r\n\r\nDoor het ontslag zouden de medewerkers volgens de vakbond inkomsten zijn misgelopen. De rechtbank bepaalde eerder dit jaar al dat het vervoersbedrijf met terugwerkende kracht loon moet betalen.\r\n\r\nFacebook\r\nDe redenen voor de ontslagen lopen uiteen. Zo zou een medewerker volgens de vakbond zijn ontslagen nadat deze het op Facebook had opgenomen voor de vakbond. Ook stelt de FNV dat een medewerker ontslagen is omdat deze verdacht werd van geweld, wat volgens FNV-medewerker Edwin Atema berust op een \"fabel\".\r\n\r\nEen ander ontslag zou volgens Atema zijn veroorzaakt doordat een medewerker zich niet zou hebben gehouden aan de rijrusttijden, terwijl dit bedrijfsbeleid is.\r\n\r\nEerdere pogingen\r\nDe FNV stelt dat de afgelopen maanden meerdere malen is gepoogd beslag te leggen op rekeningen van de Drentse onderneming. Dit zou echter te weinig hebben opgeleverd. \"Het kan zijn dat het bedrijf klanten heeft gevraagd transacties op een andere rekening over te maken.\"\r\n\r\nDe deurwaarder begint volgens FNV om 14:00 uur \'s middags met de beslaglegging in Emmen. Sinds 13:30 uur deze middag zouden sympathisanten zich verzamelen voor het bedrijfsgebouw. Atema: \"Wij hebben geadviseerd om te zoeken naar auto’s, heftrucks en computers. Maar hierover beslist de deurwaarder.\"\r\n\r\nDe FNV won eerder dit jaar ook een zaak tegen Brinkman Trans Holland over cao-lonen en arbeidsomstandigheden van Poolse en Moldavische chauffeurs. De vakbond dwong toen af dat het vervoersbedrijf deze medewerkers Nederlandse cao-lonen moest betalen en dat het bedrijf deze chauffeurs niet in hun truck moest laten overnachten.\r\n\r\nBrinkman Trans Holland wil geen commentaar geven over deze kwestie.','trans-parent','IKEA-transporteur Brinkman Trans Holland krijgt vanmiddag een deurwaarder met politiebegeleiding over de vloer. Deze zou volgens vakbond FNV voor 100.000 euro aan natura beslag moeten leggen.','2017-08-31 14:34:03','2017-08-31 14:34:03',1);
/*!40000 ALTER TABLE `content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery`
--

DROP TABLE IF EXISTS `gallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `file_name` varchar(64) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `admin_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_gallery_admins_idx` (`admin_id`),
  CONSTRAINT `fk_gallery_admins` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery`
--

LOCK TABLES `gallery` WRITE;
/*!40000 ALTER TABLE `gallery` DISABLE KEYS */;
INSERT INTO `gallery` VALUES (90,'Delk en Boot','fnNL0iIe','2017-08-31 01:57:01','2017-08-31 03:44:39',1),(91,'Family','0Jl5UWMa','2017-08-31 01:57:57','2017-08-31 03:50:50',1),(92,'Me','WX3wzc76','2017-08-31 03:51:36','2017-08-31 03:51:36',1);
/*!40000 ALTER TABLE `gallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `key` varchar(64) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'site_name','Samer Abdelneur','2017-08-31 08:34:47','2017-08-31 10:59:38'),(2,'welcome_msg','We are here to help build your future','2017-08-31 09:00:22','2017-08-31 10:59:38'),(4,'meta_desc','meta description','2017-08-31 09:00:22','2017-08-31 10:59:38'),(6,'meta_key','caltural,name,me,best','2017-08-31 10:08:40','2017-08-31 10:59:38'),(12,'site_icon','icon.gif','2017-08-31 10:40:06','2017-08-31 10:57:58'),(13,'site_logo','logo.jpg','2017-08-31 10:59:38','2017-08-31 10:59:38');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscription`
--

DROP TABLE IF EXISTS `subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscription` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscription`
--

LOCK TABLES `subscription` WRITE;
/*!40000 ALTER TABLE `subscription` DISABLE KEYS */;
INSERT INTO `subscription` VALUES (2,'shahrokh@yahoo.com','2017-08-31 11:34:41','2017-08-31 11:34:41'),(3,'mina@ymail.com','2017-08-31 11:34:41','2017-08-31 11:34:41'),(4,'nazanin@gmail.com','2017-08-31 11:34:41','2017-08-31 11:34:41');
/*!40000 ALTER TABLE `subscription` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-08-31 16:42:18