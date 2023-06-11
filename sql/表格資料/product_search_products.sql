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
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `pdid` varchar(4) NOT NULL,
  `pdkind` varchar(30) NOT NULL,
  `pdname` varchar(20) DEFAULT NULL,
  `stock` int DEFAULT NULL,
  `price` int DEFAULT NULL,
  `monitor` varchar(500) DEFAULT NULL,
  `chip` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`pdid`),
  UNIQUE KEY `pdid` (`pdid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES ('P001','Apple','IPhone11',100,13000,'Liquid Retina HD 顯示器 6.1 吋 (對角線) 全螢幕 LCD 多點觸控顯示器，採用 IPS 技術 1792 x 828 像素，326 ppi 解析度 1400:1 對比度 (標準) 原彩顯示 廣色域顯示 (P3) 觸覺回饋觸控 625 尼特最大亮度 (標準) 防指印疏油外膜 支援同時顯示多種語言文字','A13 仿生晶片 6 核心 CPU 配備 2 個效能核心與 4 個節能核心 4 核心 GPU 8 核心神經網路引擎'),('P002','Apple','IPhone12',100,20900,'超 Retina XDR 顯示器 6.1 吋 (對角線) 全螢幕 OLED 顯示器 2532 x 1170 像素，460 ppi 解析度 HDR 顯示 原彩顯示 廣色域 (P3) 觸覺回饋觸控 2,000,000:1 對比度 (標準) 625 尼特最大亮度 (標準)；1200 尼特峰值亮度 (HDR) 防指印疏油外膜 支援同時顯示多種語言文字','A14 仿生晶片 6 核心 CPU 配備 2 個效能核心與 4 個節能核心 4 核心 GPU 16 核心神經網路引擎'),('P003','Apple','IPhone13',100,24000,'超 Retina XDR 顯示器 6.1 吋 (對角線) 全螢幕 OLED 顯示器 2532 x 1170 像素，460 ppi 解析度 HDR 顯示 原彩顯示 廣色域 (P3) 觸覺回饋觸控 2,000,000:1 對比度 (標準) 800 尼特最大亮度 (標準)；1200 尼特峰值亮度 (HDR) 防指印疏油外膜 支援同時顯示多種語言文字','A15 仿生晶片 6 核心 CPU 配備 2 個效能核心與 4 個節能核心 4 核心 GPU 16 核心神經網路引擎'),('P004','Apple','IPhone14',100,34900,'超 Retina XDR 顯示器 6.1 吋 (對角線) 全螢幕 OLED 顯示器 2532 x 1170 像素，460 ppi 解析度 HDR 顯示 原彩顯示 廣色域 (P3) 觸覺回饋觸控 2,000,000:1 對比度 (標準) 625 尼特最大亮度 (標準)；1200 尼特峰值亮度 (HDR) 防指印疏油外膜 支援同時顯示多種語言文字','A14 仿生晶片 6 核心 CPU 配備 2 個效能核心與 4 個節能核心 4 核心 GPU 16 核心神經網路引擎'),('P005','OPPO','Find_N2_flip',100,31990,'內屏：7.10 英寸（對角線） 外屏：5.54 英寸（對角線） 分辨率 內屏：1792 × 1920 像素，370 PPI 外屏：2120 × 1080 像素，429 PPI 色彩 1670 萬色，支持廣色域（P3）','馬里亞納®MariSilicon X 移動平台 第一代驍龍®8+ 移動平台，八核心處理器，最高主頻3.0GHz'),('P006','OPPO','Reno8',100,16990,'2400 × 1080(FHD+) 螢幕刷新率 最高: 90Hz 觸控採樣率 最高: 180Hz 預設: 120Hz 廣色域顯示 生動模式: 97% NTSC/95% DCI-P3 自然模式: 72% NTSC/100% sRGB 色彩深度 1670萬色 (8 bit) 像素密度 409PPI','MediaTek Dimensity 1300 處理器速度 最高3.0GHz，八核心處理器'),('P007','OPPO','Reno8_T',100,14990,'FHD+ (2412x1080) 螢幕更新率 最高: 120Hz 觸控採樣率 最高: 360Hz 預設: 120Hz 廣色域顯示 生動模式: 100% DCI-P3 自然模式: 100% sRGB 色彩深度 10.7 億色 像素密度 394PPI','Qualcomm® Snapdragon® 695 處理器速度 最高 2.2GHz，八核心處理器'),('P008','OPPO','Reno8_Z',100,12990,'2400 x 1080 (FHD+) 螢幕刷新率 60 Hz 觸控採樣率 最高: 180 Hz 預設: 120 Hz 廣色域顯示 生動模式: 93% DCI-P3 自然模式: 標準 sRGB 色彩深度 1670 萬色 (8-bit) 像素密度 409 PPI','Qualcomm® Snapdragon® 695 處理器速度 最高2.2Hz，八核心處理器'),('P009','SONY','SONY_ 1IV',100,20900,'全球首款4K HDR OLED 120Hz螢幕更新率智慧手機<br>\n蔡司光學三鏡頭<br>\nVideo Pro 錄影模式 (支援串流直播)<br>\n高通8 Gen 1八核心高效能處理器<br>\n5000mAh大電池容量，支援PD30W快速充電/無線充電/無線反向充電<br>\nIP65/68防塵防水',''),('P010','SONY','SONY_ 1V',100,38990,'主相機畫素 1200 萬畫素<br>\n主相機畫素 1200 萬畫素<br>\nRAM記憶體 12 GB<br>\nROM儲存空間 256 GB<br>\n電池容量 5000 mAh',''),('P011','SONY','SONY_10III',100,10990,'主相機畫素 1200 萬畫素<br>\nRAM記憶體 6 GB<br>\nROM儲存空間 128 GB<br>\n電池容量 5000 mAh',''),('P012','SONY','SONY_10V',100,13990,'主相機畫素 1200 萬畫素<br>\nRAM記憶體 6 GB<br>\nROM儲存空間 128 GB<br>\n電池容量 5000 mAh\n',''),('P013','Pixel','Pixel_7_pro',100,11490,'主相機畫素1220 萬畫素<br>\nRAM記憶體 6 GB<br>\nROM儲存空間 128 GB<br>\n電池容量 4410 mAh',''),('P014','Pixel','Pixel_7',100,18990,'主相機畫素 5000 萬畫素<br>\nRAM記憶體 8 GB<br>\nROM儲存空間 128 GB<br>\n電池容量 4355 mAh',''),('P016','Pixel','Pixel_7a',100,14990,'尺寸重量：152 x 72.9 x 9 mm / 193.5 g 螢幕：1080 x 2400 pixels、6.1 吋、OLED 記憶插卡：無 電池：4385 mAh (內建式)','2G GSM 四頻 3G WCDMA 850 + 900 + 2100 4G LTE 700 + 900 + 1800 + FDD 2600 + TDD 2600 5G NR + 3.3G');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-11 23:18:07
