-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: haswit
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
-- Table structure for table `groups_of_specialization`
--

DROP TABLE IF EXISTS `groups_of_specialization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `groups_of_specialization` (
  `id` int NOT NULL AUTO_INCREMENT,
  `specialization` varchar(240) DEFAULT NULL,
  `mentor_ids` int DEFAULT NULL,
  `student_ids` int DEFAULT NULL,
  `chatbucketid` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups_of_specialization`
--

LOCK TABLES `groups_of_specialization` WRITE;
/*!40000 ALTER TABLE `groups_of_specialization` DISABLE KEYS */;
/*!40000 ALTER TABLE `groups_of_specialization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mentorlogin`
--

DROP TABLE IF EXISTS `mentorlogin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mentorlogin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(240) DEFAULT NULL,
  `age` tinyint DEFAULT NULL,
  `gender` varchar(240) DEFAULT NULL,
  `email` varchar(240) DEFAULT NULL,
  `phone` bigint DEFAULT NULL,
  `specialization` varchar(240) DEFAULT NULL,
  `company` varchar(240) DEFAULT NULL,
  `experience` varchar(240) DEFAULT NULL,
  `password` varchar(240) DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `mentorlogin_ibfk_1` FOREIGN KEY (`id`) REFERENCES `studentlogin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mentorlogin`
--

LOCK TABLES `mentorlogin` WRITE;
/*!40000 ALTER TABLE `mentorlogin` DISABLE KEYS */;
/*!40000 ALTER TABLE `mentorlogin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studentlogin`
--

DROP TABLE IF EXISTS `studentlogin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `studentlogin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `studentname` varchar(240) DEFAULT NULL,
  `age` tinyint DEFAULT NULL,
  `gender` varchar(240) DEFAULT NULL,
  `email` varchar(240) DEFAULT NULL,
  `phone` bigint DEFAULT NULL,
  `college` varchar(240) DEFAULT NULL,
  `address` varchar(240) DEFAULT NULL,
  `password` varchar(240) DEFAULT NULL,
  `id_proof` varchar(240) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studentlogin`
--

LOCK TABLES `studentlogin` WRITE;
/*!40000 ALTER TABLE `studentlogin` DISABLE KEYS */;
INSERT INTO `studentlogin` VALUES (1,'najeeb',22,'male','abs@gmail.com',123456789,'abc','mahdipatnam','2233','adhar');
/*!40000 ALTER TABLE `studentlogin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topics`
--

DROP TABLE IF EXISTS `topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `topics` (
  `id` int NOT NULL AUTO_INCREMENT,
  `parent_topic` varchar(240) DEFAULT NULL,
  `name` varchar(240) DEFAULT NULL,
  `specialization` varchar(240) DEFAULT NULL,
  `introduction` varchar(240) DEFAULT NULL,
  `usees` varchar(240) DEFAULT NULL,
  `implementation` varchar(240) DEFAULT NULL,
  `resources` varchar(240) DEFAULT NULL,
  `duration` time DEFAULT NULL,
  `author_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topics`
--

LOCK TABLES `topics` WRITE;
/*!40000 ALTER TABLE `topics` DISABLE KEYS */;
/*!40000 ALTER TABLE `topics` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-10 23:56:55
