CREATE DATABASE  IF NOT EXISTS `product_search` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `product_search`;

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
-- Table structure for table `products_color`
--

DROP TABLE IF EXISTS `products_color`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_color` (
  `pdid` varchar(4) NOT NULL,
  `cid` varchar(2) NOT NULL,
  `color` varchar(20) DEFAULT NULL,
  `stock` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_color`
--

LOCK TABLES `products_color` WRITE;
/*!40000 ALTER TABLE `products_color` DISABLE KEYS */;
INSERT INTO `products_color` VALUES ('P001','1','星光色',100),('P001','2','午夜色',100),('P001','3','藍色',100),('P001','4','粉紅色',100),('P001','5','綠色',100),('P001','6','紅色',100),('P002','1','星光色',100),('P002','2','午夜色',100),('P002','3','藍色',100),('P002','4','粉紅色',100),('P002','5','綠色',100),('P002','6','紅色',100),('P003','1','星光色',100),('P003','2','午夜色',100),('P003','3','藍色',100),('P003','4','粉紅色',100),('P003','5','綠色',100),('P003','6','紅色',100),('P004','1','星光色',100),('P004','2','午夜色',100),('P004','3','藍色',100),('P004','4','粉紅色',100),('P004','5','綠色',100),('P004','6','紅色',100),('P005','1','月曜紫',100),('P005','2','天際黑',100),('P006','1','緞面金',100),('P006','2','微光黑',100),('P007','1','晨光金',100),('P007','2','午夜黑',100),('P008','1','金',100),('P008','2','黑',100),('P009','1','夜色黑',100),('P009','2','幻境紫',100),('P009','3','冰霧白',100),('P010','1','經典黑',100),('P010','2','卡其綠',100),('P011','1','水漾黑',100),('P011','2','水漾白',100),('P011','3','水漾藍',100),('P011','4','水漾粉',100),('P012','1','玫瑰黑',100),('P012','2','桔梗白',100),('P012','3','薰衣草紫',100),('P012','4','鼠尾草綠',100),('P013','1','石墨黑',100),('P013','2','灰綠色',100),('P013','3','粉炭白',100),('P014','1','曜石黑',100),('P014','2','香茅綠',100),('P014','3','雪花白',100),('P015','1','曜石黑',100),('P015','2','霧灰色',100),('P015','3','雪花白',100),('P016','1','曜石黑',100),('P016','2','淺海藍',100),('P016','3','雪花白',100),('P001','0','請選擇顏色',0),('P002','0','請選擇顏色',0),('P003','0','請選擇顏色',0),('P004','0','請選擇顏色',0),('P005','0','請選擇顏色',0),('P006','0','請選擇顏色',0),('P007','0','請選擇顏色',0),('P008','0','請選擇顏色',0),('P009','0','請選擇顏色',0),('P010','0','請選擇顏色',0),('P011','0','請選擇顏色',0),('P012','0','請選擇顏色',0),('P013','0','請選擇顏色',0),('P014','0','請選擇顏色',0),('P015','0','請選擇顏色',0),('P016','0','請選擇顏色',0);
/*!40000 ALTER TABLE `products_color` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-08  0:16:50
