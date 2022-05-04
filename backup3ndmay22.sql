CREATE DATABASE  IF NOT EXISTS `jobsdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `jobsdb`;
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: jobsdb
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `clusters`
--

DROP TABLE IF EXISTS `clusters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clusters` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sscMinPercent` float DEFAULT NULL,
  `hscMinPercent` float DEFAULT NULL,
  `otherPercent` float DEFAULT NULL,
  `agelimit` int DEFAULT NULL,
  `minexperience` int DEFAULT NULL,
  `cluster` int DEFAULT NULL,
  `jobid` int DEFAULT NULL,
  `userid` varchar(200) DEFAULT NULL,
  `utype` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2009 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clusters`
--

LOCK TABLES `clusters` WRITE;
/*!40000 ALTER TABLE `clusters` DISABLE KEYS */;
INSERT INTO `clusters` VALUES (1881,60,66,61,29,1,0,1004,'TCS','company'),(1882,61,67,62,28,2,0,1004,'TCS','company'),(1883,62,68,63,27,3,0,1004,'TCS','company'),(1884,63,69,64,26,4,0,1004,'TCS','company'),(1885,64,70,65,25,5,0,1004,'TCS','company'),(1886,65,71,66,24,6,0,1004,'TCS','company'),(1887,66,72,67,23,7,0,1004,'TCS','company'),(1888,67,73,68,22,8,0,1004,'TCS','company'),(1889,68,74,69,21,9,0,1004,'TCS','company'),(1890,69,75,70,21,10,0,1004,'TCS','company'),(1891,70,76,71,21,11,0,1004,'TCS','company'),(1892,71,77,72,21,12,0,1004,'TCS','company'),(1893,72,78,73,21,13,0,1004,'TCS','company'),(1894,73,79,74,21,14,0,1004,'TCS','company'),(1895,74,80,75,21,15,0,1004,'TCS','company'),(1896,75,81,76,21,16,0,1004,'TCS','company'),(1897,76,82,77,21,17,0,1004,'TCS','company'),(1898,77,83,78,21,18,0,1004,'TCS','company'),(1899,78,84,79,21,19,0,1004,'TCS','company'),(1900,79,85,80,21,20,1,1004,'TCS','company'),(1901,80,86,81,21,21,1,1004,'TCS','company'),(1902,81,87,82,21,22,1,1004,'TCS','company'),(1903,82,88,83,21,23,1,1004,'TCS','company'),(1904,83,89,84,21,24,1,1004,'TCS','company'),(1905,84,90,85,21,25,1,1004,'TCS','company'),(1906,85,91,86,21,26,1,1004,'TCS','company'),(1907,86,92,87,21,27,1,1004,'TCS','company'),(1908,87,93,88,21,28,1,1004,'TCS','company'),(1909,88,94,89,21,29,1,1004,'TCS','company'),(1910,89,95,90,21,30,1,1004,'TCS','company'),(1911,90,96,91,21,31,1,1004,'TCS','company'),(1912,91,97,92,21,32,1,1004,'TCS','company'),(1913,92,98,93,21,33,1,1004,'TCS','company'),(1914,93,99,94,21,34,1,1004,'TCS','company'),(1915,94,100,95,21,35,1,1004,'TCS','company'),(1916,95,101,96,21,36,1,1004,'TCS','company'),(1917,96,102,97,21,37,1,1004,'TCS','company'),(1918,97,103,98,21,38,1,1004,'TCS','company'),(1919,98,104,99,21,39,1,1004,'TCS','company'),(1920,99,105,100,21,40,1,1004,'TCS','company'),(1921,70,71,71,49,21,1,1005,'syntel','company'),(1922,71,72,72,48,22,1,1005,'syntel','company'),(1923,72,73,73,47,23,1,1005,'syntel','company'),(1924,73,74,74,46,24,1,1005,'syntel','company'),(1925,74,75,75,45,25,1,1005,'syntel','company'),(1926,75,76,76,44,26,1,1005,'syntel','company'),(1927,76,77,77,43,27,1,1005,'syntel','company'),(1928,77,78,78,42,28,1,1005,'syntel','company'),(1929,78,79,79,41,29,1,1005,'syntel','company'),(1930,79,80,80,40,30,1,1005,'syntel','company'),(1931,80,81,81,39,31,1,1005,'syntel','company'),(1932,81,82,82,38,32,1,1005,'syntel','company'),(1933,82,83,83,37,33,1,1005,'syntel','company'),(1934,83,84,84,36,34,1,1005,'syntel','company'),(1935,84,85,85,35,35,1,1005,'syntel','company'),(1936,85,86,86,34,36,1,1005,'syntel','company'),(1937,86,87,87,33,37,1,1005,'syntel','company'),(1938,87,88,88,32,38,1,1005,'syntel','company'),(1939,88,89,89,31,39,1,1005,'syntel','company'),(1940,89,90,90,30,40,1,1005,'syntel','company'),(1941,90,91,91,29,41,1,1005,'syntel','company'),(1942,91,92,92,28,42,1,1005,'syntel','company'),(1943,92,93,93,27,43,1,1005,'syntel','company'),(1944,93,94,94,26,44,1,1005,'syntel','company'),(1945,94,95,95,25,45,1,1005,'syntel','company'),(1946,95,96,96,24,46,1,1005,'syntel','company'),(1947,96,97,97,23,47,1,1005,'syntel','company'),(1948,97,98,98,22,48,1,1005,'syntel','company'),(1949,98,99,99,21,49,1,1005,'syntel','company'),(1950,99,100,100,21,50,1,1005,'syntel','company'),(2008,76,88,69.2,25,0,1,0,'santosh','user');
/*!40000 ALTER TABLE `clusters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `edudetails`
--

DROP TABLE IF EXISTS `edudetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `edudetails` (
  `eduId` int NOT NULL,
  `course` varchar(200) DEFAULT NULL,
  `passingYr` int DEFAULT NULL,
  `percent` double DEFAULT NULL,
  `university` varchar(800) DEFAULT NULL,
  `userid` varchar(200) DEFAULT NULL,
  `fpath` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`eduId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `edudetails`
--

LOCK TABLES `edudetails` WRITE;
/*!40000 ALTER TABLE `edudetails` DISABLE KEYS */;
INSERT INTO `edudetails` VALUES (1001,'MCA',2011,67,'SGBAU','suresh','1001.pdf'),(1002,'SSC',2003,60,'State Board','suresh','1002.pdf'),(1003,'HSC',2005,78,'State Board','suresh','1003.pdf'),(1004,'SSC',2007,76,'State Board','santosh','1004.pdf'),(1005,'HSC',2009,88,'State BOard','santosh','1005.pdf'),(1006,'MCA',2019,76,'SGBAU','santosh','1006.pdf'),(1007,'BE(CSE)',2022,67,'SGBAU','shreyas','1007.pdf'),(1008,'SSC',2018,79,'Maharashtra Education Board','shreyas','1008.pdf'),(1009,'HSC',2020,88,'SGBAU','shreyas','1009.pdf'),(1010,'SSC',2016,70,'Maharashtra Education Board','rahul','1010.pdf'),(1011,'HSC',2018,67,'Maharashtra Board','rahul','1011.pdf'),(1012,'BE(IT)',2022,70,'SGBAU','rahul','1012.pdf'),(1013,'Java Certification',2022,70,'NA','rahul','1013.pdf'),(1014,'BE(IT)',2022,67,'SGBAU','santosh','1014.pdf'),(1015,'Phd',2022,67,'SGBAU','santosh','1015.pdf'),(1016,'Java Certification',2022,70,'NA','santosh','1016.pdf'),(1017,'PHP Certification',2022,66,'NA','santosh','1017.pdf');
/*!40000 ALTER TABLE `edudetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `jobid` int NOT NULL,
  `company` varchar(200) DEFAULT NULL,
  `sscMinPercent` double DEFAULT NULL,
  `hscMinPercent` double DEFAULT NULL,
  `otherPercent` double DEFAULT NULL,
  `agelimit` int DEFAULT NULL,
  `minexperience` double DEFAULT NULL,
  `prevdesig` varchar(200) DEFAULT NULL,
  `salary` double DEFAULT NULL,
  `workingCity` varchar(200) DEFAULT NULL,
  `bond` varchar(200) DEFAULT NULL,
  `designation` varchar(200) DEFAULT NULL,
  `requiredCourses` text,
  `interviewDt` varchar(200) DEFAULT NULL,
  `interviewTime` varchar(200) DEFAULT NULL,
  `contactNo` varchar(200) DEFAULT NULL,
  `contactPersonName` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`jobid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT INTO `jobs` VALUES (1004,'TCS',60,65,60,30,0,'NA',4,'Nagpur','NA','Developer','SSC,HSC,BCA,MCA,BE(IT),BE(CSE)','2022-05-03','2022-05-03','9889876765','Mohan'),(1005,'syntel',70,70,70,50,20,'Analyst',10,'Nagpur','0','Analyst','SSC,HSC,BCA,MCA,MBA(Computer),MSCIT,TALLY,ITI in computers,Phd,BE(IT),BE(CSE)','2022-05-13','2022-05-13','9889876765','Sachin Patil');
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs1`
--

DROP TABLE IF EXISTS `jobs1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs1` (
  `jobid` int NOT NULL,
  `company` varchar(200) DEFAULT NULL,
  `sscMinPercent` double DEFAULT NULL,
  `hscMinPercent` double DEFAULT NULL,
  `otherPercent` double DEFAULT NULL,
  `agelimit` int DEFAULT NULL,
  `minexperience` double DEFAULT NULL,
  `prevdesig` varchar(200) DEFAULT NULL,
  `salary` double DEFAULT NULL,
  `workingCity` varchar(200) DEFAULT NULL,
  `bond` varchar(200) DEFAULT NULL,
  `designation` varchar(200) DEFAULT NULL,
  `requiredCourses` text,
  `interviewDt` varchar(200) DEFAULT NULL,
  `interviewTime` varchar(200) DEFAULT NULL,
  `contactNo` varchar(200) DEFAULT NULL,
  `contactPersonName` varchar(200) DEFAULT NULL,
  `jobid1` int DEFAULT NULL,
  PRIMARY KEY (`jobid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs1`
--

LOCK TABLES `jobs1` WRITE;
/*!40000 ALTER TABLE `jobs1` DISABLE KEYS */;
INSERT INTO `jobs1` VALUES (1001,'TCS',60,66,61,29,1,'NA',4,'Hyderabad','NA','Developer','SSC,HSC,BCA,MCA,BE(IT),BE(CSE)','2022-05-03','2022-05-03','9889876765','Mohan',1004),(1002,'TCS',61,67,62,28,2,'NA',4,'Hyderabad','NA','Developer','SSC,HSC,BCA,MCA,BE(IT),BE(CSE)','2022-05-03','2022-05-03','9889876765','Mohan',1004),(1003,'TCS',62,68,63,27,3,'NA',4,'Hyderabad','NA','Developer','SSC,HSC,BCA,MCA,BE(IT),BE(CSE)','2022-05-03','2022-05-03','9889876765','Mohan',1004),(1004,'TCS',63,69,64,26,4,'NA',4,'Hyderabad','NA','Developer','SSC,HSC,BCA,MCA,BE(IT),BE(CSE)','2022-05-03','2022-05-03','9889876765','Mohan',1004),(1005,'TCS',64,70,65,25,5,'NA',4,'Hyderabad','NA','Developer','SSC,HSC,BCA,MCA,BE(IT),BE(CSE)','2022-05-03','2022-05-03','9889876765','Mohan',1004),(1006,'TCS',65,71,66,24,6,'NA',4,'Hyderabad','NA','Developer','SSC,HSC,BCA,MCA,BE(IT),BE(CSE)','2022-05-03','2022-05-03','9889876765','Mohan',1004),(1007,'TCS',66,72,67,23,7,'NA',4,'Hyderabad','NA','Developer','SSC,HSC,BCA,MCA,BE(IT),BE(CSE)','2022-05-03','2022-05-03','9889876765','Mohan',1004),(1008,'TCS',67,73,68,22,8,'NA',4,'Hyderabad','NA','Developer','SSC,HSC,BCA,MCA,BE(IT),BE(CSE)','2022-05-03','2022-05-03','9889876765','Mohan',1004),(1009,'TCS',68,74,69,21,9,'NA',4,'Hyderabad','NA','Developer','SSC,HSC,BCA,MCA,BE(IT),BE(CSE)','2022-05-03','2022-05-03','9889876765','Mohan',1004),(1010,'TCS',69,75,70,21,10,'NA',4,'Hyderabad','NA','Developer','SSC,HSC,BCA,MCA,BE(IT),BE(CSE)','2022-05-03','2022-05-03','9889876765','Mohan',1004),(1011,'TCS',70,76,71,21,11,'NA',4,'Hyderabad','NA','Developer','SSC,HSC,BCA,MCA,BE(IT),BE(CSE)','2022-05-03','2022-05-03','9889876765','Mohan',1004),(1012,'TCS',71,77,72,21,12,'NA',4,'Hyderabad','NA','Developer','SSC,HSC,BCA,MCA,BE(IT),BE(CSE)','2022-05-03','2022-05-03','9889876765','Mohan',1004),(1013,'TCS',72,78,73,21,13,'NA',4,'Hyderabad','NA','Developer','SSC,HSC,BCA,MCA,BE(IT),BE(CSE)','2022-05-03','2022-05-03','9889876765','Mohan',1004),(1014,'TCS',73,79,74,21,14,'NA',4,'Hyderabad','NA','Developer','SSC,HSC,BCA,MCA,BE(IT),BE(CSE)','2022-05-03','2022-05-03','9889876765','Mohan',1004),(1015,'TCS',74,80,75,21,15,'NA',4,'Hyderabad','NA','Developer','SSC,HSC,BCA,MCA,BE(IT),BE(CSE)','2022-05-03','2022-05-03','9889876765','Mohan',1004),(1016,'TCS',75,81,76,21,16,'NA',4,'Hyderabad','NA','Developer','SSC,HSC,BCA,MCA,BE(IT),BE(CSE)','2022-05-03','2022-05-03','9889876765','Mohan',1004),(1017,'TCS',76,82,77,21,17,'NA',4,'Hyderabad','NA','Developer','SSC,HSC,BCA,MCA,BE(IT),BE(CSE)','2022-05-03','2022-05-03','9889876765','Mohan',1004),(1018,'TCS',77,83,78,21,18,'NA',4,'Hyderabad','NA','Developer','SSC,HSC,BCA,MCA,BE(IT),BE(CSE)','2022-05-03','2022-05-03','9889876765','Mohan',1004),(1019,'TCS',78,84,79,21,19,'NA',4,'Hyderabad','NA','Developer','SSC,HSC,BCA,MCA,BE(IT),BE(CSE)','2022-05-03','2022-05-03','9889876765','Mohan',1004),(1020,'TCS',79,85,80,21,20,'NA',4,'Hyderabad','NA','Developer','SSC,HSC,BCA,MCA,BE(IT),BE(CSE)','2022-05-03','2022-05-03','9889876765','Mohan',1004),(1021,'TCS',80,86,81,21,21,'NA',4,'Hyderabad','NA','Developer','SSC,HSC,BCA,MCA,BE(IT),BE(CSE)','2022-05-03','2022-05-03','9889876765','Mohan',1004),(1022,'TCS',81,87,82,21,22,'NA',4,'Hyderabad','NA','Developer','SSC,HSC,BCA,MCA,BE(IT),BE(CSE)','2022-05-03','2022-05-03','9889876765','Mohan',1004),(1023,'TCS',82,88,83,21,23,'NA',4,'Hyderabad','NA','Developer','SSC,HSC,BCA,MCA,BE(IT),BE(CSE)','2022-05-03','2022-05-03','9889876765','Mohan',1004),(1024,'TCS',83,89,84,21,24,'NA',4,'Hyderabad','NA','Developer','SSC,HSC,BCA,MCA,BE(IT),BE(CSE)','2022-05-03','2022-05-03','9889876765','Mohan',1004),(1025,'TCS',84,90,85,21,25,'NA',4,'Hyderabad','NA','Developer','SSC,HSC,BCA,MCA,BE(IT),BE(CSE)','2022-05-03','2022-05-03','9889876765','Mohan',1004),(1026,'TCS',85,91,86,21,26,'NA',4,'Hyderabad','NA','Developer','SSC,HSC,BCA,MCA,BE(IT),BE(CSE)','2022-05-03','2022-05-03','9889876765','Mohan',1004),(1027,'TCS',86,92,87,21,27,'NA',4,'Hyderabad','NA','Developer','SSC,HSC,BCA,MCA,BE(IT),BE(CSE)','2022-05-03','2022-05-03','9889876765','Mohan',1004),(1028,'TCS',87,93,88,21,28,'NA',4,'Hyderabad','NA','Developer','SSC,HSC,BCA,MCA,BE(IT),BE(CSE)','2022-05-03','2022-05-03','9889876765','Mohan',1004),(1029,'TCS',88,94,89,21,29,'NA',4,'Hyderabad','NA','Developer','SSC,HSC,BCA,MCA,BE(IT),BE(CSE)','2022-05-03','2022-05-03','9889876765','Mohan',1004),(1030,'TCS',89,95,90,21,30,'NA',4,'Hyderabad','NA','Developer','SSC,HSC,BCA,MCA,BE(IT),BE(CSE)','2022-05-03','2022-05-03','9889876765','Mohan',1004),(1031,'TCS',90,96,91,21,31,'NA',4,'Hyderabad','NA','Developer','SSC,HSC,BCA,MCA,BE(IT),BE(CSE)','2022-05-03','2022-05-03','9889876765','Mohan',1004),(1032,'TCS',91,97,92,21,32,'NA',4,'Hyderabad','NA','Developer','SSC,HSC,BCA,MCA,BE(IT),BE(CSE)','2022-05-03','2022-05-03','9889876765','Mohan',1004),(1033,'TCS',92,98,93,21,33,'NA',4,'Hyderabad','NA','Developer','SSC,HSC,BCA,MCA,BE(IT),BE(CSE)','2022-05-03','2022-05-03','9889876765','Mohan',1004),(1034,'TCS',93,99,94,21,34,'NA',4,'Hyderabad','NA','Developer','SSC,HSC,BCA,MCA,BE(IT),BE(CSE)','2022-05-03','2022-05-03','9889876765','Mohan',1004),(1035,'TCS',94,100,95,21,35,'NA',4,'Hyderabad','NA','Developer','SSC,HSC,BCA,MCA,BE(IT),BE(CSE)','2022-05-03','2022-05-03','9889876765','Mohan',1004),(1036,'TCS',95,101,96,21,36,'NA',4,'Hyderabad','NA','Developer','SSC,HSC,BCA,MCA,BE(IT),BE(CSE)','2022-05-03','2022-05-03','9889876765','Mohan',1004),(1037,'TCS',96,102,97,21,37,'NA',4,'Hyderabad','NA','Developer','SSC,HSC,BCA,MCA,BE(IT),BE(CSE)','2022-05-03','2022-05-03','9889876765','Mohan',1004),(1038,'TCS',97,103,98,21,38,'NA',4,'Hyderabad','NA','Developer','SSC,HSC,BCA,MCA,BE(IT),BE(CSE)','2022-05-03','2022-05-03','9889876765','Mohan',1004),(1039,'TCS',98,104,99,21,39,'NA',4,'Hyderabad','NA','Developer','SSC,HSC,BCA,MCA,BE(IT),BE(CSE)','2022-05-03','2022-05-03','9889876765','Mohan',1004),(1040,'TCS',99,105,100,21,40,'NA',4,'Hyderabad','NA','Developer','SSC,HSC,BCA,MCA,BE(IT),BE(CSE)','2022-05-03','2022-05-03','9889876765','Mohan',1004),(1041,'syntel',70,71,71,49,21,'Analyst',10,'Chennai','0','Analyst','SSC,HSC,BCA,MCA,MBA(Computer),MSCIT,TALLY,ITI in computers,Phd,BE(IT),BE(CSE)','2022-05-13','2022-05-13','9889876765','Sachin Patil',1005),(1042,'syntel',71,72,72,48,22,'Analyst',10,'Chennai','0','Analyst','SSC,HSC,BCA,MCA,MBA(Computer),MSCIT,TALLY,ITI in computers,Phd,BE(IT),BE(CSE)','2022-05-13','2022-05-13','9889876765','Sachin Patil',1005),(1043,'syntel',72,73,73,47,23,'Analyst',10,'Chennai','0','Analyst','SSC,HSC,BCA,MCA,MBA(Computer),MSCIT,TALLY,ITI in computers,Phd,BE(IT),BE(CSE)','2022-05-13','2022-05-13','9889876765','Sachin Patil',1005),(1044,'syntel',73,74,74,46,24,'Analyst',10,'Chennai','0','Analyst','SSC,HSC,BCA,MCA,MBA(Computer),MSCIT,TALLY,ITI in computers,Phd,BE(IT),BE(CSE)','2022-05-13','2022-05-13','9889876765','Sachin Patil',1005),(1045,'syntel',74,75,75,45,25,'Analyst',10,'Chennai','0','Analyst','SSC,HSC,BCA,MCA,MBA(Computer),MSCIT,TALLY,ITI in computers,Phd,BE(IT),BE(CSE)','2022-05-13','2022-05-13','9889876765','Sachin Patil',1005),(1046,'syntel',75,76,76,44,26,'Analyst',10,'Chennai','0','Analyst','SSC,HSC,BCA,MCA,MBA(Computer),MSCIT,TALLY,ITI in computers,Phd,BE(IT),BE(CSE)','2022-05-13','2022-05-13','9889876765','Sachin Patil',1005),(1047,'syntel',76,77,77,43,27,'Analyst',10,'Chennai','0','Analyst','SSC,HSC,BCA,MCA,MBA(Computer),MSCIT,TALLY,ITI in computers,Phd,BE(IT),BE(CSE)','2022-05-13','2022-05-13','9889876765','Sachin Patil',1005),(1048,'syntel',77,78,78,42,28,'Analyst',10,'Chennai','0','Analyst','SSC,HSC,BCA,MCA,MBA(Computer),MSCIT,TALLY,ITI in computers,Phd,BE(IT),BE(CSE)','2022-05-13','2022-05-13','9889876765','Sachin Patil',1005),(1049,'syntel',78,79,79,41,29,'Analyst',10,'Chennai','0','Analyst','SSC,HSC,BCA,MCA,MBA(Computer),MSCIT,TALLY,ITI in computers,Phd,BE(IT),BE(CSE)','2022-05-13','2022-05-13','9889876765','Sachin Patil',1005),(1050,'syntel',79,80,80,40,30,'Analyst',10,'Chennai','0','Analyst','SSC,HSC,BCA,MCA,MBA(Computer),MSCIT,TALLY,ITI in computers,Phd,BE(IT),BE(CSE)','2022-05-13','2022-05-13','9889876765','Sachin Patil',1005),(1051,'syntel',80,81,81,39,31,'Analyst',10,'Chennai','0','Analyst','SSC,HSC,BCA,MCA,MBA(Computer),MSCIT,TALLY,ITI in computers,Phd,BE(IT),BE(CSE)','2022-05-13','2022-05-13','9889876765','Sachin Patil',1005),(1052,'syntel',81,82,82,38,32,'Analyst',10,'Chennai','0','Analyst','SSC,HSC,BCA,MCA,MBA(Computer),MSCIT,TALLY,ITI in computers,Phd,BE(IT),BE(CSE)','2022-05-13','2022-05-13','9889876765','Sachin Patil',1005),(1053,'syntel',82,83,83,37,33,'Analyst',10,'Chennai','0','Analyst','SSC,HSC,BCA,MCA,MBA(Computer),MSCIT,TALLY,ITI in computers,Phd,BE(IT),BE(CSE)','2022-05-13','2022-05-13','9889876765','Sachin Patil',1005),(1054,'syntel',83,84,84,36,34,'Analyst',10,'Chennai','0','Analyst','SSC,HSC,BCA,MCA,MBA(Computer),MSCIT,TALLY,ITI in computers,Phd,BE(IT),BE(CSE)','2022-05-13','2022-05-13','9889876765','Sachin Patil',1005),(1055,'syntel',84,85,85,35,35,'Analyst',10,'Chennai','0','Analyst','SSC,HSC,BCA,MCA,MBA(Computer),MSCIT,TALLY,ITI in computers,Phd,BE(IT),BE(CSE)','2022-05-13','2022-05-13','9889876765','Sachin Patil',1005),(1056,'syntel',85,86,86,34,36,'Analyst',10,'Chennai','0','Analyst','SSC,HSC,BCA,MCA,MBA(Computer),MSCIT,TALLY,ITI in computers,Phd,BE(IT),BE(CSE)','2022-05-13','2022-05-13','9889876765','Sachin Patil',1005),(1057,'syntel',86,87,87,33,37,'Analyst',10,'Chennai','0','Analyst','SSC,HSC,BCA,MCA,MBA(Computer),MSCIT,TALLY,ITI in computers,Phd,BE(IT),BE(CSE)','2022-05-13','2022-05-13','9889876765','Sachin Patil',1005),(1058,'syntel',87,88,88,32,38,'Analyst',10,'Chennai','0','Analyst','SSC,HSC,BCA,MCA,MBA(Computer),MSCIT,TALLY,ITI in computers,Phd,BE(IT),BE(CSE)','2022-05-13','2022-05-13','9889876765','Sachin Patil',1005),(1059,'syntel',88,89,89,31,39,'Analyst',10,'Chennai','0','Analyst','SSC,HSC,BCA,MCA,MBA(Computer),MSCIT,TALLY,ITI in computers,Phd,BE(IT),BE(CSE)','2022-05-13','2022-05-13','9889876765','Sachin Patil',1005),(1060,'syntel',89,90,90,30,40,'Analyst',10,'Chennai','0','Analyst','SSC,HSC,BCA,MCA,MBA(Computer),MSCIT,TALLY,ITI in computers,Phd,BE(IT),BE(CSE)','2022-05-13','2022-05-13','9889876765','Sachin Patil',1005),(1061,'syntel',90,91,91,29,41,'Analyst',10,'Chennai','0','Analyst','SSC,HSC,BCA,MCA,MBA(Computer),MSCIT,TALLY,ITI in computers,Phd,BE(IT),BE(CSE)','2022-05-13','2022-05-13','9889876765','Sachin Patil',1005),(1062,'syntel',91,92,92,28,42,'Analyst',10,'Chennai','0','Analyst','SSC,HSC,BCA,MCA,MBA(Computer),MSCIT,TALLY,ITI in computers,Phd,BE(IT),BE(CSE)','2022-05-13','2022-05-13','9889876765','Sachin Patil',1005),(1063,'syntel',92,93,93,27,43,'Analyst',10,'Chennai','0','Analyst','SSC,HSC,BCA,MCA,MBA(Computer),MSCIT,TALLY,ITI in computers,Phd,BE(IT),BE(CSE)','2022-05-13','2022-05-13','9889876765','Sachin Patil',1005),(1064,'syntel',93,94,94,26,44,'Analyst',10,'Chennai','0','Analyst','SSC,HSC,BCA,MCA,MBA(Computer),MSCIT,TALLY,ITI in computers,Phd,BE(IT),BE(CSE)','2022-05-13','2022-05-13','9889876765','Sachin Patil',1005),(1065,'syntel',94,95,95,25,45,'Analyst',10,'Chennai','0','Analyst','SSC,HSC,BCA,MCA,MBA(Computer),MSCIT,TALLY,ITI in computers,Phd,BE(IT),BE(CSE)','2022-05-13','2022-05-13','9889876765','Sachin Patil',1005),(1066,'syntel',95,96,96,24,46,'Analyst',10,'Chennai','0','Analyst','SSC,HSC,BCA,MCA,MBA(Computer),MSCIT,TALLY,ITI in computers,Phd,BE(IT),BE(CSE)','2022-05-13','2022-05-13','9889876765','Sachin Patil',1005),(1067,'syntel',96,97,97,23,47,'Analyst',10,'Chennai','0','Analyst','SSC,HSC,BCA,MCA,MBA(Computer),MSCIT,TALLY,ITI in computers,Phd,BE(IT),BE(CSE)','2022-05-13','2022-05-13','9889876765','Sachin Patil',1005),(1068,'syntel',97,98,98,22,48,'Analyst',10,'Chennai','0','Analyst','SSC,HSC,BCA,MCA,MBA(Computer),MSCIT,TALLY,ITI in computers,Phd,BE(IT),BE(CSE)','2022-05-13','2022-05-13','9889876765','Sachin Patil',1005),(1069,'syntel',98,99,99,21,49,'Analyst',10,'Chennai','0','Analyst','SSC,HSC,BCA,MCA,MBA(Computer),MSCIT,TALLY,ITI in computers,Phd,BE(IT),BE(CSE)','2022-05-13','2022-05-13','9889876765','Sachin Patil',1005),(1070,'syntel',99,100,100,21,50,'Analyst',10,'Chennai','0','Analyst','SSC,HSC,BCA,MCA,MBA(Computer),MSCIT,TALLY,ITI in computers,Phd,BE(IT),BE(CSE)','2022-05-13','2022-05-13','9889876765','Sachin Patil',1005);
/*!40000 ALTER TABLE `jobs1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userdetails`
--

DROP TABLE IF EXISTS `userdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userdetails` (
  `id` int NOT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `userid` varchar(200) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `prefcity` varchar(200) DEFAULT NULL,
  `addr` varchar(200) DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `prevjob` varchar(800) DEFAULT NULL,
  `prevemployer` varchar(500) DEFAULT NULL,
  `prevSalary` double DEFAULT NULL,
  `expSalary` double DEFAULT NULL,
  `bondpref` varchar(200) DEFAULT NULL,
  `dob` varchar(200) DEFAULT NULL,
  `age` double DEFAULT NULL,
  `experience` double DEFAULT NULL,
  `gender` varchar(200) DEFAULT NULL,
  `userResume` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userdetails`
--

LOCK TABLES `userdetails` WRITE;
/*!40000 ALTER TABLE `userdetails` DISABLE KEYS */;
INSERT INTO `userdetails` VALUES (1004,'Himanshu Patil','himanshu','9878765654','himanshu@gmail.com','Nagpur','Sai Nagar Amravati','Amravati','NA','NA',0,2,'Yes','1992-12-12',0,0,'Male','1004.docx'),(1005,'Suresh Joshi','suresh','9876765454','suresh@gmail.com','Nagpur','Raja Peth Amravati','Amravati','Developer','TCS',12.55,3,'No','1987-12-12',0,2,'Male','1005.docx'),(1006,'Santosh','santosh','9878767656','santosh@gmail.com','Nagpur','Raja peth','Amravati','NA','NA',0,0,'yes','1995-11-08',25,0,'Male','1006.docx'),(1007,'shreyas joshi','shreyas','9889876765','spiderprojects1@gmail.com','Chennai','amt','amt','NA',NULL,0,0,'yes','1998-12-12',23,0,'Male','shreyas.jpg'),(1008,'Rahul','rahul','9889876765','rahul@gmail.com','Nagpur','amt','amt','NA',NULL,0,0,'yes','1990-12-12',27,0,'Male','rahul.jpg');
/*!40000 ALTER TABLE `userdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `userid` varchar(200) NOT NULL,
  `username` varchar(200) DEFAULT NULL,
  `pass` varchar(200) DEFAULT NULL,
  `loginsts` varchar(200) DEFAULT NULL,
  `utype` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('admin','Administrator','Admin@123','active','admin'),('himanshu','Himanshu Patil','himanshu@1','active','user'),('rahul','Rahul','test','active','user'),('santosh','Santosh','Santosh@123','active','user'),('shreyas','shreyas joshi','test','active','user'),('suresh','Suresh Joshi','Suresh@123','active','user');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'jobsdb'
--

--
-- Dumping routines for database 'jobsdb'
--
/*!50003 DROP PROCEDURE IF EXISTS `getEduDetails` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getEduDetails`(in userid1 varchar(200))
begin
select * from edudetails where userid=userid1;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getJobDetails` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getJobDetails`()
begin
select * from jobs;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getMaxIdUsers` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getMaxIdUsers`()
begin
declare mxid integer;
set mxid=(select ifnull(max(id),1000) from userdetails);
set mxid=mxid+1;
 select mxid ;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertCluster` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertCluster`(in userid1 varchar(200))
begin
declare mxid integer;
declare ssc1 float;
declare hsc1 float;
declare other1 float;
declare age1 integer;
declare minexp integer; 
set mxid=(select ifnull(max(id),1000) from clusters);
set mxid=mxid+1;
set ssc1=(select avg(percent) from edudetails where course='SSC' and userid=userid1);
set hsc1=(select avg(percent) from edudetails where course='HSC' and userid=userid1);
set other1=(select avg(percent) from edudetails where course<>'SSC' and course<>'HSC' and userid=userid1);
set age1=(select age from userdetails where userid=userid1);
set minexp=(select experience from userdetails where userid=userid1);
delete from clusters;
insert into clusters(sscMinPercent,hscMinPercent,otherPercent,agelimit,minexperience,cluster,jobid,userid,utype)  select sscMinPercent,hscMinPercent, otherPercent , agelimit, minexperience,0,jobid1,company,'company' from jobs1; 
insert into clusters(sscMinPercent,hscMinPercent,otherPercent,agelimit,minexperience,cluster,jobid,userid,utype) values(ssc1,hsc1,other1,age1,minexp,0,0,userid1,'user'); 
   
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertCluster1` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertCluster1`(in userid1 varchar(200))
begin
declare mxid integer;
declare ssc1 float;
declare hsc1 float;
declare other1 float;
declare age1 integer;
declare minexp integer; 
set mxid=(select ifnull(max(id),1000) from clusters);
set mxid=mxid+1;
set ssc1=(select avg(percent) from edudetails where course='SSC' and userid=userid1);
set hsc1=(select avg(percent) from edudetails where course='HSC' and userid=userid1);
set other1=(select avg(percent) from edudetails where course<>'SSC' and course<>'HSC' and userid=userid1);
set age1=(select age from userdetails where userid=userid1);
set minexp=(select experience from userdetails where userid=userid1);
delete from clusters;
insert into clusters(sscMinPercent,hscMinPercent,otherPercent,agelimit,minexperience,cluster,jobid,userid,utype)  
select case when sscMinPercent<=ssc1 then 1 else 0 end as sscMinPercent,
case when hscMinPercent<=hsc1 then 1 else 0 end as hscMinPercent,
case when otherPercent<=other1 then 1 else 0 end as otherPercent,
case when agelimit<=age1 then 1 else 0 end as agelimit,
case when minexperience<=minexp then 1 else 0 end as minexperience,
0,jobid,company,'company' from jobs;  
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertEdu` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertEdu`(in userid1 varchar(200),in course1 varchar(200), in passingYr1 varchar(200), in percent1 double, in university1 varchar(200), in path1 varchar(200))
begin
declare mxid integer;
set mxid=(select ifnull(max(eduId),1000) from edudetails);
set mxid=mxid+1;
insert into edudetails values(mxid,course1,passingYr1,percent1,university1,userid1,path1);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertJobs` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertJobs`(in company1 varchar(200),in sscpercent double, in hscpercent double, in otherpercent1 double,
in age int,in minexp double,in prevdesig1 varchar(200),in sal double,in wcity varchar(200),in bond1 varchar(200),in desig varchar(200),
in reqCourse text,in intDt varchar(200),in intTime varchar(200), in mobno varchar(200),in contactper varchar(200)
)
begin
declare mxid integer;
set mxid=(select ifnull(max(jobid),1000) from jobs);
set mxid=mxid+1;
insert into jobs values(mxid,company1,sscpercent,hscpercent,otherpercent1,age,minexp,prevdesig1,sal,wcity,bond1,desig,reqCourse,intDt,intTime,mobno,contactper);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertJobs1` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertJobs1`(in company1 varchar(200),in sscpercent double, in hscpercent double, in otherpercent1 double,
in age int,in minexp double,in prevdesig1 varchar(200),in sal double,in wcity varchar(200),in bond1 varchar(200),in desig varchar(200),
in reqCourse text,in intDt varchar(200),in intTime varchar(200), in mobno varchar(200),in contactper varchar(200)
)
begin
declare mxid integer;
declare mxid1 integer;
set mxid=(select ifnull(max(jobid),1000) from jobs1);
set mxid1=(select ifnull(max(jobid),1000) from jobs);
set mxid=mxid+1;
insert into jobs1 values(mxid,company1,sscpercent,hscpercent,otherpercent1,age,minexp,prevdesig1,sal,wcity,bond1,desig,reqCourse,intDt,intTime,mobno,contactper,mxid1);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertUser`(in userid1 varchar(200),in pass1 varchar(200), in custNm varchar(200), in mob varchar(30), in emailId varchar(200)
,prefcity1 varchar(200),city1 varchar(200),addr1 varchar(200),prevjob1 varchar(200),prevemployer1 varchar(300),prevSalary1 double,expSalary1 double,bondpref1 varchar(200),dob1 varchar(200),age1 double,experience1 double,resume1 varchar(200), in gender1 varchar(200)
)
begin
declare mxid integer;
set mxid=(select ifnull(max(id),1000) from userdetails);
set mxid=mxid+1;
insert into userdetails values(mxid,custNm,userid1,mob,emailId,prefcity1,addr1,city1,prevjob1,prevemployer1,prevSalary1,expSalary1,bondpref1,dob1,age1,experience1,gender1,resume1);
insert into users values(userid1,custNm,pass1,'active','user'); 
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateCluster` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateCluster`(in id1 integer,in cluster1 integer)
begin
update clusters set cluster=cluster1 where id=id1;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `userlogin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `userlogin`(in userid1 varchar(200),in pass1 varchar(200))
begin
select * from users where userid=userid1 and pass=pass1 and loginsts='active';
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-03 13:04:29
