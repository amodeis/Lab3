-- MySQL dump 10.13  Distrib 5.6.25, for Win64 (x86_64)
--
-- Host: localhost    Database: VideoGameLibrary
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
-- Current Database: `VideoGameLibrary`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `VideoGameLibrary` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `VideoGameLibrary`;

--
-- Table structure for table `developer`
--

DROP TABLE IF EXISTS `developer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `developer` (
  `developerID` int(11) NOT NULL AUTO_INCREMENT,
  `developerName` varchar(55) DEFAULT NULL,
  `developerHQ` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`developerID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `developer`
--

LOCK TABLES `developer` WRITE;
/*!40000 ALTER TABLE `developer` DISABLE KEYS */;
INSERT INTO `developer` VALUES (1,'\"	Namco\"','Tokyo Japan'),(2,'\"	Konami\"','Tokyo Japan'),(3,'ID Software','Richardson Texas'),(4,'\"	Stern Electronics\"','Chicago Illinois'),(5,'Kojima Productions','Tokyo Japan'),(6,'Grasshopper Manufacture','Tokyo Japan');
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
  `gameName` varchar(25) DEFAULT NULL,
  `releaseDate` date DEFAULT NULL,
  `developerID` int(11) DEFAULT NULL,
  PRIMARY KEY (`gameID`),
  KEY `developerID` (`developerID`),
  CONSTRAINT `game_ibfk_1` FOREIGN KEY (`developerID`) REFERENCES `developer` (`developerID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game`
--

LOCK TABLES `game` WRITE;
/*!40000 ALTER TABLE `game` DISABLE KEYS */;
INSERT INTO `game` VALUES (1,'Ace Combat 04: Shattered ','0000-00-00',1),(2,'Metal Gear Solid','0000-00-00',2),(3,'Berzerk','0000-00-00',4),(4,'Quake III Arena','0000-00-00',3),(5,'Metal Gear Solid V: Groun','0000-00-00',5),(6,'Killer is Dead','0000-00-00',6);
/*!40000 ALTER TABLE `game` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gameplatform`
--

DROP TABLE IF EXISTS `gameplatform`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gameplatform` (
  `gameID` int(11) DEFAULT NULL,
  `platformID` int(11) DEFAULT NULL,
  UNIQUE KEY `pkGamePlatform` (`gameID`,`platformID`),
  KEY `platformID` (`platformID`),
  CONSTRAINT `gameplatform_ibfk_1` FOREIGN KEY (`gameID`) REFERENCES `game` (`gameID`),
  CONSTRAINT `gameplatform_ibfk_2` FOREIGN KEY (`platformID`) REFERENCES `platform` (`platformID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gameplatform`
--

LOCK TABLES `gameplatform` WRITE;
/*!40000 ALTER TABLE `gameplatform` DISABLE KEYS */;
INSERT INTO `gameplatform` VALUES (1,1),(2,2),(2,4),(3,3),(4,4),(5,4),(5,5),(5,6),(6,4),(6,6);
/*!40000 ALTER TABLE `gameplatform` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manufacturer`
--

DROP TABLE IF EXISTS `manufacturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manufacturer` (
  `manufacturerID` int(11) NOT NULL AUTO_INCREMENT,
  `manufacturerName` varchar(55) DEFAULT NULL,
  `manufacturerHQ` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`manufacturerID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manufacturer`
--

LOCK TABLES `manufacturer` WRITE;
/*!40000 ALTER TABLE `manufacturer` DISABLE KEYS */;
INSERT INTO `manufacturer` VALUES (1,'Sony','Tokyo Japan'),(2,'General Consumer Electronics',''),(3,'Milton Bradley Company','East Longmeadow Massachusetts'),(4,'PC','');
/*!40000 ALTER TABLE `manufacturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manufacturerplatform`
--

DROP TABLE IF EXISTS `manufacturerplatform`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manufacturerplatform` (
  `manufacturerID` int(11) DEFAULT NULL,
  `platformID` int(11) DEFAULT NULL,
  UNIQUE KEY `pkManufacturerPlatform` (`manufacturerID`,`platformID`),
  KEY `platformID` (`platformID`),
  CONSTRAINT `manufacturerplatform_ibfk_1` FOREIGN KEY (`manufacturerID`) REFERENCES `manufacturer` (`manufacturerID`),
  CONSTRAINT `manufacturerplatform_ibfk_2` FOREIGN KEY (`platformID`) REFERENCES `platform` (`platformID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manufacturerplatform`
--

LOCK TABLES `manufacturerplatform` WRITE;
/*!40000 ALTER TABLE `manufacturerplatform` DISABLE KEYS */;
INSERT INTO `manufacturerplatform` VALUES (1,1),(1,2),(1,5),(1,6),(2,3),(3,3),(4,4);
/*!40000 ALTER TABLE `manufacturerplatform` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `platform`
--

DROP TABLE IF EXISTS `platform`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `platform` (
  `platformID` int(11) NOT NULL AUTO_INCREMENT,
  `platformName` varchar(25) DEFAULT NULL,
  `platformGeneration` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`platformID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `platform`
--

LOCK TABLES `platform` WRITE;
/*!40000 ALTER TABLE `platform` DISABLE KEYS */;
INSERT INTO `platform` VALUES (1,'Playstation 2','6th Generation'),(2,'Playstation','5th Generation'),(3,'Vectrex','2nd Generation'),(4,'PC',''),(5,'Playstation 4','8th Generation'),(6,'Playstation 3','7th Generation');
/*!40000 ALTER TABLE `platform` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-08-08 14:39:04
