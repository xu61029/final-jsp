-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: product_search
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `reflection`
--

DROP TABLE IF EXISTS `reflection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reflection` (
  `id` int NOT NULL AUTO_INCREMENT,
  `photo_url` varchar(45) DEFAULT NULL,
  `text_content` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO reflection (photo_url, text_content) 
VALUES 
("images/1.jpg", "我覺得前後端要統整再一起是很難的事情，溝通上也還要再加強。不能動到前端的div如果沒有包好的話，就會整個版都跑掉，讓我在這個過程中很困擾！但在這其中也讓我獲益良多，也認知到自己有很多的進步空間。
我做了很多的jsp檔，我覺得內容都很相似，但是套進去頁面又完全的不一樣，所以又要花很多時間去理解。一個人寫的資料庫，可以遷比較快，因為自己比較了解自己設定了甚麼，如果分開來做的話，要花的時間就會更多，是很棒的經驗
"),
("images/2.jpg", "我覺得前後端要統整在一起是很難的事情，溝通上也還要再加強。過程中，不能動到前端的div如果沒有包好的話，就會整個版都跑掉，或是完全跑不出來，讓我真的很困擾！但在完成專案的其中也讓我獲益良多，也認知到自己有很多的進步空間。"),
("images/3.jpg", "經過這學期的課程我們學習了jsp的實際應用，同時也利用這學期所學做了一個商務網站。在製作網站的過程中我們會碰到許多和資料庫相關的程式碼，
讓我很頭痛，也讓我明白網頁和資料庫之間緊密的關聯性。
");

--
-- Dumping data for table `reflection`
--

LOCK TABLES `reflection` WRITE;
/*!40000 ALTER TABLE `reflection` DISABLE KEYS */;
/*!40000 ALTER TABLE `reflection` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-08 20:44:17
