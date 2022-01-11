-- MySQL dump 10.19  Distrib 10.3.31-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: flightclub
-- ------------------------------------------------------
-- Server version	10.3.31-MariaDB-0+deb10u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Airplane`
--

DROP TABLE IF EXISTS `Airplane`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Airplane` (
  `AirplaneID` int(11) NOT NULL,
  `Brand` text DEFAULT NULL,
  `Star_rating` double DEFAULT NULL,
  PRIMARY KEY (`AirplaneID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Airplane`
--

LOCK TABLES `Airplane` WRITE;
/*!40000 ALTER TABLE `Airplane` DISABLE KEYS */;
INSERT INTO `Airplane` VALUES (111111,'Delta Air Lines',4),(123456,'United Airlines',3),(222222,'American Airlines',3),(333333,'Delta Air Lines',4),(444444,'EVA Air',4.5),(555555,'AirAsia X',3.5),(666666,'AirAsia X',3.5),(777777,'Cape Air',3.5);
/*!40000 ALTER TABLE `Airplane` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Airport`
--

DROP TABLE IF EXISTS `Airport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Airport` (
  `AirportID` int(11) NOT NULL,
  `Name` text DEFAULT NULL,
  `Address` text DEFAULT NULL,
  `Star_rating` double DEFAULT NULL,
  PRIMARY KEY (`AirportID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Airport`
--

LOCK TABLES `Airport` WRITE;
/*!40000 ALTER TABLE `Airport` DISABLE KEYS */;
INSERT INTO `Airport` VALUES (111111,'John F. Kennedy International Airport','Queens, NY 11430, USA',4),(123456,'Bakersfield Municipal Airport','2000 S Union Ave, Bakersfield, CA 93307, USA',4.6),(222222,'Dallas/Fort Worth Internation Airport','2400 Aviation Dr, DFW Airport, TX 75261, USA',4.1),(333333,'Los Angeles International Airport','1 World Way, Los Angeles, CA 90045, USA',3.9),(444444,'Southwest Florida International Airport','11000 Terminal Access Rd, Fort Myers, FL 33913, USA',4.5),(555555,'Hilo International Airport','2450 Kekuanaoa St, Hilo, HI 96720, USA',4.3),(666666,'Indira Gandhi International Airport','New Delhi, Delhi, 110037, India',4.5),(777777,'Nirata International Airport','1-1 Furugome, Narita, Chiba 282-0004, Japan',4.2),(888888,'Paris Charles de Gaulle Airport','95700 Roissy-en-France, France',3.7),(999999,'Beijing Capital Airport','Shunyi District, Beijing, China',3.6);
/*!40000 ALTER TABLE `Airport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Class`
--

DROP TABLE IF EXISTS `Class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Class` (
  `ClassID` int(11) NOT NULL,
  `Name` text DEFAULT NULL,
  PRIMARY KEY (`ClassID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Class`
--

LOCK TABLES `Class` WRITE;
/*!40000 ALTER TABLE `Class` DISABLE KEYS */;
INSERT INTO `Class` VALUES (1,'Economy'),(2,'Premium Economy'),(3,'Business'),(4,'First-Class');
/*!40000 ALTER TABLE `Class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Customer`
--

DROP TABLE IF EXISTS `Customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Customer` (
  `CusID` int(11) NOT NULL AUTO_INCREMENT,
  `Username` text DEFAULT NULL,
  `Pwd` text DEFAULT NULL,
  `Name` text DEFAULT NULL,
  `Passport` text DEFAULT NULL,
  `Phone_num` text DEFAULT NULL,
  `Email` text DEFAULT NULL,
  `Credit_card` text DEFAULT NULL,
  PRIMARY KEY (`CusID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customer`
--

LOCK TABLES `Customer` WRITE;
/*!40000 ALTER TABLE `Customer` DISABLE KEYS */;
INSERT INTO `Customer` VALUES (1,'winter','111111','John Snow','C01234567','555-555-5555','winter@gmail.com','2222 2222 2222 2222'),(2,'america','222222','George W. Bush','A11111111','111-111-1111','bushy@aol.com','11111 1111 1111 1111'),(3,'thanksgiving','333333','Charlie Brown','B000B0001','222-222-2222','snoopy@yahoo.com','3333 3333 3333 3333'),(4,'katerina','231fsas','Katrine Fone','A47115028','722-397-8915','kfone0@dot.gov','3531 9683 8516 9123'),(5,'goo122','asda21','Hermine Gooly','Y73895861','127-171-5200','hgooly1@arizona.edu','3570 3059 3346 4593'),(6,'edddd','sfas1234','Aryn Enden','P06154024','655-731-0800','aenden2@smugmug.com','201 4513 6003 1183'),(7,'michy','2131dwd','Michaela Bacher','Z97949673','572-201-0468','mbacher3@zimbio.com','4911 4156 7882 3170'),(8,'russia213','65g456','Em Oleszczak','J71869633','956-337-9195','eoleszczak4@yellowpages.com','5538 9944 3879 1836'),(9,'gary2','21311','Gery Wapplington','F35677710','944-937-1650','gwapplington5@toplist.cz','4017 9583 2469 7905'),(10,'leeroyy32','*FE86240CBC1A9A0A2F198EB33830030BBDBC3AD4','Elroy Schuricke','X72226865','101-650-0568','eschuricke6@umich.edu','4844 5542 8456 2897');
/*!40000 ALTER TABLE `Customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Customer2`
--

DROP TABLE IF EXISTS `Customer2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Customer2` (
  `CusID` int(11) NOT NULL AUTO_INCREMENT,
  `Username` text DEFAULT NULL,
  `Pwd` text DEFAULT NULL,
  `Name` text DEFAULT NULL,
  `Passport` text DEFAULT NULL,
  `Phone_num` text DEFAULT NULL,
  `Email` text DEFAULT NULL,
  `Credit_card` text DEFAULT NULL,
  PRIMARY KEY (`CusID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customer2`
--

LOCK TABLES `Customer2` WRITE;
/*!40000 ALTER TABLE `Customer2` DISABLE KEYS */;
INSERT INTO `Customer2` VALUES (1,'winter','$2y$10$9rMPhKf8DdMYhG2qqNVJUutKmVK43f/e2srXon2igzHNmp5gt7gzW','John Snow','C01234567','555-555-5555','winter@gmail.com','2222 2222 2222 2222'),(2,'america','$2y$10$AtZQiyhaTQc9bHoyK65NWe1AcJCgewr9AqnBUCZrq6igpn/ZPKYi2','George W. Bush','A11111111','111-111-1111','bushy@aol.com','11111 1111 1111 1111'),(3,'thanksgiving','$2y$10$4QKFAqsUcYr9zVx4QTRG5OzlzJEqeHTJ2G3tuTJIvUl88RAh6cFqu','Charlie Brown','B000B0001','222-222-2222','snoopy@yahoo.com','3333 3333 3333 3333'),(4,'katerina','$2y$10$PTwHngXMpCqb.q3gzgP5juLw.YCjNhCDSydLiWwmkDictjSVhfav.','Katrine Fone','A47115028','722-397-8915','kfone0@dot.gov','3531 9683 8516 9123'),(5,'goo122','$2y$10$4fF4kpb5cgEVqK7LrX7JCef1ovf5r1hW.plYo0bS/kZtKZbAU/ACu','Hermine Gooly','Y73895861','127-171-5200','hgooly1@arizona.edu','3570 3059 3346 4593'),(6,'edddd','$2y$10$DrQMBEn89YWWK3O6JVYwruY815FN7EW4ojXylaqPHKvcK.1ZE9zgq','Aryn Enden','P06154024','655-731-0800','aenden2@smugmug.com','201 4513 6003 1183'),(7,'michy','$2y$10$ssAu67vNM.IA0G9FF8Ha..z5D9knjgA3H7xKeP0P7no0D615QKP0S','Michaela Bacher','Z97949673','572-201-0468','mbacher3@zimbio.com','4911 4156 7882 3170'),(8,'russia213','$2y$10$fYyc88Trra4p/xVHmuk3d.6jskti7REeH0koZbRh1mRoWAMPqwHqS','Em Oleszczak','J71869633','956-337-9195','eoleszczak4@yellowpages.com','5538 9944 3879 1836'),(9,'gary2','$2y$10$9fhQ/Gx3Vj85dTXGzjTXNejrNF9fpmfCooBaiKOCoSJYPH.wt9sjW','Gery Wapplington','F35677710','944-937-1650','gwapplington5@toplist.cz','4017 9583 2469 7905'),(10,'leeroyy32','$2y$10$7gmyfzcMAjl1pGjQ3hd5EuQdsmKwKUeCxgg3NPvT3sQqhdAdBvS9m','Elroy Schuricke','X72226865','101-650-0568','eschuricke6@umich.edu','4844 5542 8456 2897');
/*!40000 ALTER TABLE `Customer2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `Domestic`
--

DROP TABLE IF EXISTS `Domestic`;
/*!50001 DROP VIEW IF EXISTS `Domestic`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `Domestic` (
  `FlightID` tinyint NOT NULL,
  `Airport` tinyint NOT NULL,
  `AirplaneID` tinyint NOT NULL,
  `Airline` tinyint NOT NULL,
  `Departure_time` tinyint NOT NULL,
  `Destination` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Flight`
--

DROP TABLE IF EXISTS `Flight`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Flight` (
  `FlightID` int(11) NOT NULL,
  `AirplaneID` int(11) NOT NULL,
  `Departure_time` datetime NOT NULL,
  `Boarding_time` time DEFAULT NULL,
  `Depart_airportID` int(11) NOT NULL,
  `Arrival_time` datetime DEFAULT NULL,
  `Arrive_airportID` int(11) NOT NULL,
  PRIMARY KEY (`FlightID`,`AirplaneID`),
  KEY `AirplaneID` (`AirplaneID`),
  KEY `Arrive_airportID` (`Arrive_airportID`),
  KEY `Depart_airportID` (`Depart_airportID`),
  CONSTRAINT `Flight_ibfk_1` FOREIGN KEY (`AirplaneID`) REFERENCES `Airplane` (`AirplaneID`) ON DELETE CASCADE,
  CONSTRAINT `Flight_ibfk_2` FOREIGN KEY (`Arrive_airportID`) REFERENCES `Airport` (`AirportID`),
  CONSTRAINT `Flight_ibfk_3` FOREIGN KEY (`Depart_airportID`) REFERENCES `Airport` (`AirportID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Flight`
--

LOCK TABLES `Flight` WRITE;
/*!40000 ALTER TABLE `Flight` DISABLE KEYS */;
INSERT INTO `Flight` VALUES (1,123456,'2021-11-05 06:45:00','06:30:00',123456,'2021-11-05 10:31:00',111111),(2,111111,'2021-09-05 00:22:00','00:00:00',123456,'2021-09-05 03:14:00',222222),(3,222222,'2022-05-13 09:22:00','09:00:00',123456,'2022-05-13 12:33:00',555555),(4,111111,'2022-07-18 12:07:00','11:30:00',888888,'2022-07-19 23:25:00',333333),(5,222222,'2021-11-05 12:14:00','11:40:00',777777,'2021-11-06 05:37:00',555555),(6,111111,'2021-09-19 06:15:00','05:50:00',555555,'2021-09-19 10:58:00',222222),(7,444444,'2021-04-15 02:38:00','02:10:00',444444,'2021-04-17 10:17:00',777777),(8,555555,'2022-08-08 23:38:00','23:10:00',111111,'2022-08-10 04:25:00',777777),(9,666666,'2021-04-20 17:47:00','17:22:00',666666,'2021-04-21 21:46:00',111111),(10,555555,'2022-02-08 15:20:00','14:50:00',999999,'2022-02-10 21:56:00',333333),(11,111111,'2022-05-30 04:31:00','04:00:00',222222,'2022-05-31 22:18:00',888888),(12,666666,'2021-11-24 20:29:00','20:00:00',222222,'2021-11-26 20:35:00',999999),(13,123456,'2021-10-24 22:41:00','22:10:00',444444,'2021-10-24 00:52:00',555555),(14,111111,'2022-08-06 02:05:00','01:25:00',555555,'2022-08-06 05:04:00',333333),(15,333333,'2022-04-01 18:30:00','18:00:00',111111,'2022-04-01 23:04:00',444444),(16,333333,'2021-04-23 17:21:00','16:49:00',111111,'2021-04-14 11:47:00',333333),(17,777777,'2021-03-21 22:13:00','21:40:00',333333,'2021-03-21 21:06:00',111111),(18,444444,'2021-07-03 12:39:00','12:10:00',333333,'2021-07-06 01:08:00',888888),(19,555555,'2022-12-17 07:12:00','06:40:00',333333,'2022-12-19 11:55:00',666666);
/*!40000 ALTER TABLE `Flight` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `International`
--

DROP TABLE IF EXISTS `International`;
/*!50001 DROP VIEW IF EXISTS `International`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `International` (
  `FlightID` tinyint NOT NULL,
  `Airport` tinyint NOT NULL,
  `AirplaneID` tinyint NOT NULL,
  `Airline` tinyint NOT NULL,
  `Departure_time` tinyint NOT NULL,
  `Destination` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `Open`
--

DROP TABLE IF EXISTS `Open`;
/*!50001 DROP VIEW IF EXISTS `Open`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `Open` (
  `Airline` tinyint NOT NULL,
  `Seat_num` tinyint NOT NULL,
  `Price` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `Reservations`
--

DROP TABLE IF EXISTS `Reservations`;
/*!50001 DROP VIEW IF EXISTS `Reservations`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `Reservations` (
  `CusID` tinyint NOT NULL,
  `FlightID` tinyint NOT NULL,
  `Seat_num` tinyint NOT NULL,
  `AirplaneID` tinyint NOT NULL,
  `Airline` tinyint NOT NULL,
  `Airport` tinyint NOT NULL,
  `Departure_time` tinyint NOT NULL,
  `Boarding_time` tinyint NOT NULL,
  `Destination` tinyint NOT NULL,
  `Arrival_time` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Reserves`
--

DROP TABLE IF EXISTS `Reserves`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Reserves` (
  `FlightID` int(11) NOT NULL,
  `CusID` int(11) NOT NULL,
  `AirplaneID` int(11) NOT NULL,
  `Seat_num` int(11) NOT NULL,
  PRIMARY KEY (`FlightID`,`CusID`,`AirplaneID`,`Seat_num`),
  KEY `FlightID` (`FlightID`,`AirplaneID`),
  KEY `CusID` (`CusID`),
  KEY `AirplaneID` (`AirplaneID`,`Seat_num`),
  CONSTRAINT `Reserves_ibfk_1` FOREIGN KEY (`FlightID`, `AirplaneID`) REFERENCES `Flight` (`FlightID`, `AirplaneID`) ON DELETE CASCADE,
  CONSTRAINT `Reserves_ibfk_2` FOREIGN KEY (`CusID`) REFERENCES `Customer` (`CusID`) ON DELETE CASCADE,
  CONSTRAINT `Reserves_ibfk_3` FOREIGN KEY (`AirplaneID`, `Seat_num`) REFERENCES `Seat` (`AirplaneID`, `Seat_num`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Reserves`
--

LOCK TABLES `Reserves` WRITE;
/*!40000 ALTER TABLE `Reserves` DISABLE KEYS */;
INSERT INTO `Reserves` VALUES (1,3,123456,3),(1,4,123456,98),(1,5,123456,53),(1,10,123456,32),(2,6,111111,1),(2,8,111111,88),(4,7,111111,35),(5,4,222222,22),(5,4,222222,47),(5,4,222222,81),(5,5,222222,70),(5,8,222222,8),(6,5,111111,1),(6,5,111111,61),(6,8,111111,55),(6,9,111111,35),(6,9,111111,88),(6,10,111111,35),(7,7,444444,11),(8,7,555555,80),(9,2,666666,2),(9,4,666666,56),(10,4,555555,24),(12,3,666666,23),(13,5,123456,79),(13,7,123456,3),(14,2,111111,61),(14,8,111111,1),(14,9,111111,61),(15,2,333333,14),(15,2,333333,20),(15,3,333333,48),(15,4,333333,85),(15,6,333333,99),(15,8,333333,21),(16,3,333333,60),(16,4,333333,60),(16,8,333333,5),(17,8,777777,52),(17,9,777777,30),(17,9,777777,62),(18,4,444444,49),(18,5,444444,5),(18,10,444444,53),(19,1,555555,24),(19,2,555555,98),(19,3,555555,36),(19,4,555555,76),(19,8,555555,80),(19,10,555555,96);
/*!40000 ALTER TABLE `Reserves` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`dpham`@`localhost`*/ /*!50003 TRIGGER deleteReserves
BEFORE DELETE ON Reserves
FOR EACH ROW
BEGIN
   INSERT INTO Reserves_history
   SELECT FlightID, CusID, AirplaneID, Seat_num
   FROM Reserves AS r
   WHERE r.FlightID = OLD.FlightID AND r.CusID = OLD.CusID AND r. AirplaneID = OLD.AirplaneID;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `Reserves_history`
--

DROP TABLE IF EXISTS `Reserves_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Reserves_history` (
  `FlightID` int(11) DEFAULT NULL,
  `CusID` int(11) DEFAULT NULL,
  `AirplaneID` int(11) DEFAULT NULL,
  `Seat_num` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Reserves_history`
--

LOCK TABLES `Reserves_history` WRITE;
/*!40000 ALTER TABLE `Reserves_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `Reserves_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Seat`
--

DROP TABLE IF EXISTS `Seat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Seat` (
  `Seat_num` int(11) NOT NULL,
  `AirplaneID` int(11) NOT NULL,
  `Price` int(11) DEFAULT NULL,
  `ClassID` int(11) DEFAULT NULL,
  PRIMARY KEY (`Seat_num`,`AirplaneID`),
  KEY `AirplaneID` (`AirplaneID`),
  KEY `ClassID` (`ClassID`),
  CONSTRAINT `Seat_ibfk_1` FOREIGN KEY (`AirplaneID`) REFERENCES `Airplane` (`AirplaneID`) ON DELETE CASCADE,
  CONSTRAINT `Seat_ibfk_2` FOREIGN KEY (`ClassID`) REFERENCES `Class` (`ClassID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Seat`
--

LOCK TABLES `Seat` WRITE;
/*!40000 ALTER TABLE `Seat` DISABLE KEYS */;
INSERT INTO `Seat` VALUES (1,111111,231,1),(2,666666,1644,4),(3,123456,1453,1),(5,333333,233,2),(5,444444,189,1),(6,777777,686,3),(8,222222,277,1),(11,444444,1333,3),(14,333333,111,2),(16,666666,1123,2),(20,333333,1543,3),(21,333333,1342,3),(22,222222,653,4),(23,666666,1449,1),(24,555555,255,3),(28,555555,1176,3),(30,777777,551,1),(32,123456,543,3),(34,666666,89,2),(35,111111,111,3),(36,555555,178,2),(46,444444,1233,3),(47,222222,1342,3),(48,333333,324,3),(49,444444,234,3),(51,666666,765,4),(52,666666,299,1),(52,777777,481,3),(53,123456,66,3),(53,444444,1444,3),(55,111111,436,2),(56,666666,395,3),(57,333333,1765,4),(59,777777,311,3),(60,333333,1133,1),(61,111111,1169,2),(62,777777,611,3),(69,444444,263,2),(70,222222,322,2),(76,555555,666,4),(77,777777,1542,4),(79,123456,127,3),(80,555555,432,4),(81,222222,777,2),(85,333333,166,3),(88,111111,123,3),(96,555555,445,3),(98,123456,1101,1),(98,555555,1305,3),(99,333333,654,1);
/*!40000 ALTER TABLE `Seat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `flightView`
--

DROP TABLE IF EXISTS `flightView`;
/*!50001 DROP VIEW IF EXISTS `flightView`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `flightView` (
  `FlightID` tinyint NOT NULL,
  `AirplaneID` tinyint NOT NULL,
  `Departure_time` tinyint NOT NULL,
  `Boarding_time` tinyint NOT NULL,
  `Airport` tinyint NOT NULL,
  `Arrival_time` tinyint NOT NULL,
  `Destination` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `price_below_200`
--

DROP TABLE IF EXISTS `price_below_200`;
/*!50001 DROP VIEW IF EXISTS `price_below_200`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `price_below_200` (
  `Seat_num` tinyint NOT NULL,
  `AirplaneID` tinyint NOT NULL,
  `Price` tinyint NOT NULL,
  `ClassID` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `seatsPerAirplane`
--

DROP TABLE IF EXISTS `seatsPerAirplane`;
/*!50001 DROP VIEW IF EXISTS `seatsPerAirplane`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `seatsPerAirplane` (
  `AirplaneID` tinyint NOT NULL,
  `Brand` tinyint NOT NULL,
  `seatCount` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `Domestic`
--

/*!50001 DROP TABLE IF EXISTS `Domestic`*/;
/*!50001 DROP VIEW IF EXISTS `Domestic`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`dpham`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `Domestic` AS select distinct `f`.`FlightID` AS `FlightID`,`a`.`Name` AS `Airport`,`f`.`AirplaneID` AS `AirplaneID`,`Airplane`.`Brand` AS `Airline`,`f`.`Departure_time` AS `Departure_time`,`d`.`Name` AS `Destination` from (((`Flight` `f` join `Airplane` on(`f`.`AirplaneID` = `Airplane`.`AirplaneID`)) join `Airport` `a` on(`f`.`Depart_airportID` = `a`.`AirportID`)) join `Airport` `d` on(`f`.`Arrive_airportID` = `d`.`AirportID`)) where locate('USA',`d`.`Address`) > 0 order by `a`.`Name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `International`
--

/*!50001 DROP TABLE IF EXISTS `International`*/;
/*!50001 DROP VIEW IF EXISTS `International`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`dpham`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `International` AS select distinct `f`.`FlightID` AS `FlightID`,`a`.`Name` AS `Airport`,`f`.`AirplaneID` AS `AirplaneID`,`Airplane`.`Brand` AS `Airline`,`f`.`Departure_time` AS `Departure_time`,`d`.`Name` AS `Destination` from (((`Flight` `f` join `Airplane` on(`f`.`AirplaneID` = `Airplane`.`AirplaneID`)) join `Airport` `a` on(`f`.`Depart_airportID` = `a`.`AirportID`)) join `Airport` `d` on(`f`.`Arrive_airportID` = `d`.`AirportID`)) where locate('USA',`d`.`Address`) = 0 order by `a`.`Name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Open`
--

/*!50001 DROP TABLE IF EXISTS `Open`*/;
/*!50001 DROP VIEW IF EXISTS `Open`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`dpham`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `Open` AS select `a`.`Brand` AS `Airline`,`s`.`Seat_num` AS `Seat_num`,`s`.`Price` AS `Price` from (`Seat` `s` join `Airplane` `a` on(`s`.`AirplaneID` = `a`.`AirplaneID`)) where !(`s`.`Seat_num` in (select `Reserves`.`Seat_num` from (`Reserves` join `Seat` on(`Reserves`.`AirplaneID` = `Seat`.`AirplaneID` and `Reserves`.`Seat_num` = `Seat`.`Seat_num`)) where `s`.`AirplaneID` = `Reserves`.`AirplaneID`)) order by `a`.`Brand` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Reservations`
--

/*!50001 DROP TABLE IF EXISTS `Reservations`*/;
/*!50001 DROP VIEW IF EXISTS `Reservations`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`dpham`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `Reservations` AS select `r`.`CusID` AS `CusID`,`r`.`FlightID` AS `FlightID`,`r`.`Seat_num` AS `Seat_num`,`r`.`AirplaneID` AS `AirplaneID`,`Airplane`.`Brand` AS `Airline`,`a`.`Name` AS `Airport`,`f`.`Departure_time` AS `Departure_time`,`f`.`Boarding_time` AS `Boarding_time`,`d`.`Name` AS `Destination`,`f`.`Arrival_time` AS `Arrival_time` from ((((`Reserves` `r` join `Flight` `f` on(`r`.`FlightID` = `f`.`FlightID` and `r`.`AirplaneID` = `f`.`AirplaneID`)) join `Airplane` on(`r`.`AirplaneID` = `Airplane`.`AirplaneID`)) join `Airport` `a` on(`f`.`Depart_airportID` = `a`.`AirportID`)) join `Airport` `d` on(`f`.`Arrive_airportID` = `d`.`AirportID`)) order by `a`.`Name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `flightView`
--

/*!50001 DROP TABLE IF EXISTS `flightView`*/;
/*!50001 DROP VIEW IF EXISTS `flightView`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`dpham`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `flightView` AS select distinct `f`.`FlightID` AS `FlightID`,`f`.`AirplaneID` AS `AirplaneID`,`f`.`Departure_time` AS `Departure_time`,`f`.`Boarding_time` AS `Boarding_time`,`a`.`Name` AS `Airport`,`f`.`Arrival_time` AS `Arrival_time`,`d`.`Name` AS `Destination` from ((`Flight` `f` join `Airport` `a` on(`f`.`Depart_airportID` = `a`.`AirportID`)) join `Airport` `d` on(`f`.`Arrive_airportID` = `d`.`AirportID`)) order by `a`.`Name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `price_below_200`
--

/*!50001 DROP TABLE IF EXISTS `price_below_200`*/;
/*!50001 DROP VIEW IF EXISTS `price_below_200`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`dpham`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `price_below_200` AS select `Seat`.`Seat_num` AS `Seat_num`,`Seat`.`AirplaneID` AS `AirplaneID`,`Seat`.`Price` AS `Price`,`Seat`.`ClassID` AS `ClassID` from `Seat` where `Seat`.`Price` < 200 order by `Seat`.`Price` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `seatsPerAirplane`
--

/*!50001 DROP TABLE IF EXISTS `seatsPerAirplane`*/;
/*!50001 DROP VIEW IF EXISTS `seatsPerAirplane`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`dpham`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `seatsPerAirplane` AS select `a`.`AirplaneID` AS `AirplaneID`,`a`.`Brand` AS `Brand`,count(0) AS `seatCount` from (`Seat` join `Airplane` `a` on(`Seat`.`AirplaneID` = `a`.`AirplaneID`)) group by `a`.`AirplaneID` order by count(0) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-10 17:57:19
