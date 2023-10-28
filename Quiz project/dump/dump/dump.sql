-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: exam-portal
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `exam-portal`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `exam-portal` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `exam-portal`;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `cat_id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'This category contains quizzes related to programming.','Programming'),(3,'This category contains quizzes related to aptitude.','Aptitude');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questions` (
  `ques_id` bigint NOT NULL AUTO_INCREMENT,
  `answer` varchar(255) DEFAULT NULL,
  `question` varchar(5000) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `option1` varchar(255) DEFAULT NULL,
  `option2` varchar(255) DEFAULT NULL,
  `option3` varchar(255) DEFAULT NULL,
  `option4` varchar(255) DEFAULT NULL,
  `quiz_quiz_id` bigint DEFAULT NULL,
  PRIMARY KEY (`ques_id`),
  KEY `FK6vkbvy5b7cqsbtccf6n77ljhw` (`quiz_quiz_id`),
  CONSTRAINT `FK6vkbvy5b7cqsbtccf6n77ljhw` FOREIGN KEY (`quiz_quiz_id`) REFERENCES `quizzes` (`quiz_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (1,'option2','Which of these best describes an array?','','A data structure that shows a hierarchical behavior.','Container of objects of similar types.','Arrays are immutable once initialised.','Array is not a data structure.',1),(2,'option1','An algebraic expression that contains only one term is called?','','Monomial','Binomial','Trinomial','None of the above',4),(3,'option1','If we add, 7xy + 5yz – 3zx, 4yz + 9zx – 4y and –3xz + 5x – 2xy, then the answer is:','','5xy + 9yz +3zx + 5x – 4y','5xy – 9yz +3zx – 5x – 4y','5xy + 10yz +3zx + 15x – 4y','5xy + 10yz +3zx + 5x – 6y',4),(5,'option1','In a stack, if a user tries to remove an element from an empty stack it is called?','','Underflow','Empty collection','Overflow','Garbage Collection',1);
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quiz_results`
--

DROP TABLE IF EXISTS `quiz_results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quiz_results` (
  `quiz_res_id` bigint NOT NULL AUTO_INCREMENT,
  `attempt_datetime` varchar(255) DEFAULT NULL,
  `total_obtained_marks` float DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `quiz_quiz_id` bigint DEFAULT NULL,
  PRIMARY KEY (`quiz_res_id`),
  KEY `FKa8n68igflai1ha9249uvpbcyx` (`quiz_quiz_id`),
  CONSTRAINT `FKa8n68igflai1ha9249uvpbcyx` FOREIGN KEY (`quiz_quiz_id`) REFERENCES `quizzes` (`quiz_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quiz_results`
--

LOCK TABLES `quiz_results` WRITE;
/*!40000 ALTER TABLE `quiz_results` DISABLE KEYS */;
INSERT INTO `quiz_results` VALUES (1,'2022-09-10 11:08:14',10,2,1),(2,'2022-09-10 11:08:42',10,2,4),(3,'2022-09-10 11:12:11',20,2,4),(4,'2022-09-10 13:27:32',0,2,1),(5,'2022-09-10 13:27:54',0,2,1),(6,'2022-09-10 13:28:11',0,2,1),(7,'2022-09-10 13:28:22',0,2,1),(8,'2022-09-10 13:40:29',0,2,1),(9,'2022-09-10 13:40:32',0,2,1),(10,'2022-09-10 13:42:01',0,2,4),(11,'2022-09-10 13:42:18',0,2,4),(12,'2022-09-10 13:43:27',0,2,4),(13,'2022-09-10 13:43:57',20,2,4),(14,'2022-09-10 13:46:22',0,2,1),(15,'2022-09-10 13:48:38',0,2,1),(16,'2022-09-11 07:32:42',0,2,1),(17,'2022-09-11 07:59:53',0,2,1),(18,'2022-09-11 08:36:01',0,2,1),(19,'2022-09-11 08:37:25',0,2,1),(20,'2022-09-11 08:38:10',0,2,1),(21,'2022-09-11 08:40:31',0,2,1),(22,'2022-09-11 08:42:20',0,2,1),(23,'2022-09-11 08:44:03',0,2,4),(24,'2022-09-11 08:46:37',0,2,1),(25,'2022-09-11 08:57:27',0,2,4),(26,'2022-09-11 08:59:28',0,2,1),(27,'2022-09-11 08:59:40',0,2,2),(28,'2022-09-11 08:59:45',0,2,1),(29,'2022-09-11 09:00:12',0,2,4),(30,'2022-09-11 09:01:07',0,2,4),(31,'2022-09-11 09:01:49',0,2,4),(32,'2022-09-11 09:02:27',0,2,4),(33,'2022-09-11 09:03:02',0,2,4),(34,'2022-09-11 09:03:39',0,2,4),(35,'2022-09-11 09:05:07',0,2,4),(36,'2022-09-11 09:05:57',0,2,4),(37,'2022-09-11 09:07:00',10,2,4),(38,'2022-09-11 09:08:50',10,2,1),(39,'2022-09-11 09:11:33',10,2,4),(40,'2022-09-11 09:15:26',10,2,1),(41,'2022-09-11 09:16:06',20,2,1),(42,'2022-09-11 09:28:19',20,2,4);
/*!40000 ALTER TABLE `quiz_results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quizzes`
--

DROP TABLE IF EXISTS `quizzes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quizzes` (
  `quiz_id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(5000) DEFAULT NULL,
  `is_active` bit(1) DEFAULT NULL,
  `max_marks` int DEFAULT NULL,
  `number_of_questions` int DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `category_cat_id` bigint DEFAULT NULL,
  PRIMARY KEY (`quiz_id`),
  KEY `FKi0mytbs01dvkmvgqsuamy2692` (`category_cat_id`),
  CONSTRAINT `FKi0mytbs01dvkmvgqsuamy2692` FOREIGN KEY (`category_cat_id`) REFERENCES `categories` (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quizzes`
--

LOCK TABLES `quizzes` WRITE;
/*!40000 ALTER TABLE `quizzes` DISABLE KEYS */;
INSERT INTO `quizzes` VALUES (1,'This quiz contains questions related to basic Data Structures like Arrays, Strings, LinkedList etc.',_binary '\0',100,10,'Data Structures - Basic',1),(2,'This quiz contains questions related to the percentage topic.',_binary '\0',90,9,'Percentage',3),(4,'This quiz contains questions related to algebra.',_binary '\0',150,15,'Algebra',3);
/*!40000 ALTER TABLE `quizzes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `role_name` varchar(255) NOT NULL,
  `role_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`role_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES ('ADMIN','Administrator user with full acces.'),('USER','Default role for newly created users.');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_role` (
  `user_id` bigint NOT NULL,
  `role_id` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FKt7e7djp752sqn6w22i6ocqy6q` (`role_id`),
  CONSTRAINT `FKj345gk1bovqvfame88rcx7yyx` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `FKt7e7djp752sqn6w22i6ocqy6q` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (1,'ADMIN'),(2,'USER');
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` bigint NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `is_active` bit(1) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `UK_r43af9ap4edm43mmtq01oddj6` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Prakash',_binary '','Gupta','$2a$10$NbTEZFscR9k8AyVetKN.U.tLN9q6SyzDzvjypxV3UB.eUtjalpZ2m','1234567890','admin@gmail.com'),(2,'Test',_binary '','User','$2a$10$uHdaW8BCZJ0.U2cr6VZw/ub5Uwab0X5CQH64fPvE22475cMZhY12K','1234567890','test@gmail.com');
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

-- Dump completed on 2022-09-16  7:52:34
