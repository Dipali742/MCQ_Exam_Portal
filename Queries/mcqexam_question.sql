-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mcqexam
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `question` (
  `queid` int NOT NULL AUTO_INCREMENT,
  `que_desc` varchar(50) DEFAULT NULL,
  `que_img` varchar(100) DEFAULT NULL,
  `opt1` varchar(30) DEFAULT NULL,
  `opt2` varchar(30) DEFAULT NULL,
  `opt3` varchar(30) DEFAULT NULL,
  `opt4` varchar(30) DEFAULT NULL,
  `ans` varchar(30) DEFAULT NULL,
  `marks` int DEFAULT NULL,
  `qid` int NOT NULL,
  `image` longblob,
  PRIMARY KEY (`queid`),
  KEY `fk_qid` (`qid`),
  CONSTRAINT `fk_qid` FOREIGN KEY (`qid`) REFERENCES `quiz` (`qid`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
sdc


