-- MySQL dump 10.13  Distrib 5.6.25, for Win64 (x86_64)
--
-- Host: localhost    Database: videogamelibrary
-- ------------------------------------------------------
-- Server version	5.6.25-log

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
-- Current Database: `videogamelibrary`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `videogamelibrary` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `videogamelibrary`;

--
-- Table structure for table `developer`
--

DROP TABLE IF EXISTS `developer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `developer` (
  `DeveloperID` int(11) NOT NULL AUTO_INCREMENT,
  `DeveloperName` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`DeveloperID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `developer`
--

LOCK TABLES `developer` WRITE;
/*!40000 ALTER TABLE `developer` DISABLE KEYS */;
INSERT INTO `developer` VALUES (1,'DeveloperName'),(2,'\"	Namco\"'),(3,'\"	Konami\"'),(4,'\"	id Software\"'),(5,'\"	Stern Electronics\"'),(8,'DeveloperName'),(9,'DeveloperName'),(10,'\"	Namco\"'),(11,'\"	Konami\"'),(12,'\"	id Software\"'),(13,'\"	Stern Electronics\"');
/*!40000 ALTER TABLE `developer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `game`
--

DROP TABLE IF EXISTS `game`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `game` (
  `gameID` int(11) NOT NULL AUTO_INCREMENT,
  `gameNumber` varchar(25) DEFAULT NULL,
  `gameName` varchar(25) DEFAULT NULL,
  `gamePlatform` varchar(25) DEFAULT NULL,
  `DeveloperID` int(11) DEFAULT NULL,
  PRIMARY KEY (`gameID`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game`
--

LOCK TABLES `game` WRITE;
/*!40000 ALTER TABLE `game` DISABLE KEYS */;
INSERT INTO `game` VALUES (1,'gameNumber','gameName','gamePlatform',0),(2,'SLUS-20152','Ace Combat 04: Shattered ','Playstation 2',0),(3,'SLUS-00594/00776','Metal Gear Solid','Playstation',0),(4,'HS-4020 65901','Berzerk','Vectrex',0),(5,'','Quake III Arena','PC',0),(8,'gameNumber','gameName','gamePlatform',0),(9,'SLUS-20152','Ace Combat 04: Shattered ','Playstation 2',1),(10,'SLUS-00594/00776','Metal Gear Solid','Playstation',2),(11,'HS-4020 65901','Berzerk','Vectrex',4),(12,'','Quake III Arena','PC',3),(15,'gameNumber','gameName','gamePlatform',0),(16,'SLUS-20152','Ace Combat 04: Shattered ','Playstation 2',0),(17,'SLUS-00594/00776','Metal Gear Solid','Playstation',0),(18,'HS-4020 65901','Berzerk','Vectrex',0),(19,'','Quake III Arena','PC',0);
/*!40000 ALTER TABLE `game` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-07-02 22:17:36
