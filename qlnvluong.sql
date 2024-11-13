CREATE DATABASE  IF NOT EXISTS `j062401cb` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `j062401cb`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: j062401cb
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `chuyenkhoa`
--

DROP TABLE IF EXISTS `chuyenkhoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chuyenkhoa` (
  `MaKhoa` varchar(10) NOT NULL,
  `TenKhoa` varchar(150) DEFAULT NULL,
  `DienThoai` varchar(20) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`MaKhoa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chuyenkhoa`
--

LOCK TABLES `chuyenkhoa` WRITE;
/*!40000 ALTER TABLE `chuyenkhoa` DISABLE KEYS */;
INSERT INTO `chuyenkhoa` VALUES ('CNTT','Công nghệ thông tin','0912345679','mhcntt@gmail.com'),('DT','Điện tử','0969948968','mhdientu@gmail.com'),('KD','Kinh doanh','0982968689','mhkinhdoanh@gmail.com'),('KT','Kinh Tế','0945678969','mhkinhte@gmail.com');
/*!40000 ALTER TABLE `chuyenkhoa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diemthi`
--

DROP TABLE IF EXISTS `diemthi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `diemthi` (
  `MaSV` varchar(10) NOT NULL,
  `MaMH` varchar(10) NOT NULL,
  `Diem` float DEFAULT NULL,
  `NgayThi` date DEFAULT NULL,
  `PhongHocId` int DEFAULT NULL,
  PRIMARY KEY (`MaSV`,`MaMH`),
  KEY `FK_MonHoc_idx` (`MaMH`),
  KEY `FK_PhongHoc_idx` (`PhongHocId`),
  CONSTRAINT `FK_DiemThi_SinhVien` FOREIGN KEY (`MaSV`) REFERENCES `sinhvien` (`MaSV`),
  CONSTRAINT `FK_MonHoc` FOREIGN KEY (`MaMH`) REFERENCES `monhoc` (`MaMH`),
  CONSTRAINT `FK_PhongHoc` FOREIGN KEY (`PhongHocId`) REFERENCES `phonghoc` (`MaPhong`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diemthi`
--

LOCK TABLES `diemthi` WRITE;
/*!40000 ALTER TABLE `diemthi` DISABLE KEYS */;
INSERT INTO `diemthi` VALUES ('SF001','CSDL',5,'2024-06-16',3),('SF001','LTC',7,'2024-09-06',2),('SF001','TA',7,'2024-12-06',2),('SF001','TCC',9,'2024-10-06',1),('SF002','CSDL',8,'2024-06-16',3),('SF002','LTC',6,'2024-09-06',2),('SF002','TA',4,'2024-12-06',2),('SF002','TCC',4,'2024-10-06',1),('SF003','LTC',8,'2024-09-06',2),('SF003','TA',6,'2024-12-06',2),('SF003','TCC',5,'2024-10-06',1),('SF004','TA',5,'2024-12-06',2),('SF004','TCC',8,'2024-10-06',1),('SF005','TA',8,'2024-12-06',2),('SF005','TCC',10,'2024-10-06',1);
/*!40000 ALTER TABLE `diemthi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monhoc`
--

DROP TABLE IF EXISTS `monhoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monhoc` (
  `MaMH` varchar(10) NOT NULL,
  `TenMonHoc` varchar(150) DEFAULT NULL,
  `SoTinChi` int DEFAULT NULL,
  PRIMARY KEY (`MaMH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monhoc`
--

LOCK TABLES `monhoc` WRITE;
/*!40000 ALTER TABLE `monhoc` DISABLE KEYS */;
INSERT INTO `monhoc` VALUES ('CSDL','Cơ sở dữ liệu',4),('LTC','Lập trình c++',4),('MMT','Mạng máy tính',4),('PTTKHT','Phân tích thiết kế hệ thống',4),('TA','Tiếng anh',3),('TCC','Toán cao cấp',3),('THDC','Tin học đại cương',3),('TTNT','Trí tuệ nhân tạo',4);
/*!40000 ALTER TABLE `monhoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phonghoc`
--

DROP TABLE IF EXISTS `phonghoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phonghoc` (
  `MaPhong` int NOT NULL,
  `TenPhong` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`MaPhong`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phonghoc`
--

LOCK TABLES `phonghoc` WRITE;
/*!40000 ALTER TABLE `phonghoc` DISABLE KEYS */;
INSERT INTO `phonghoc` VALUES (1,'Phòng 201'),(2,'Phòng 202'),(3,'Phòng 203'),(4,'Phòng 301'),(5,'Phòng 302');
/*!40000 ALTER TABLE `phonghoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sinhvien`
--

DROP TABLE IF EXISTS `sinhvien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sinhvien` (
  `MaSV` varchar(10) NOT NULL,
  `HoTen` varchar(30) DEFAULT NULL,
  `DiaChi` varchar(250) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `MaKhoa` varchar(10) DEFAULT NULL,
  `GioiTinh` tinyint(1) DEFAULT NULL,
  `NgaySinh` datetime DEFAULT NULL,
  `DienThoai` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`MaSV`),
  KEY `FK_ChuyenKhoa_idx` (`MaKhoa`),
  CONSTRAINT `FK_ChuyenKhoa` FOREIGN KEY (`MaKhoa`) REFERENCES `chuyenkhoa` (`MaKhoa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sinhvien`
--

LOCK TABLES `sinhvien` WRITE;
/*!40000 ALTER TABLE `sinhvien` DISABLE KEYS */;
INSERT INTO `sinhvien` VALUES ('SF001','Vũ Mạnh Cường','Ha Nội','vmc@gmail.com','CNTT',0,'1999-08-01 00:00:00','0912345678'),('SF002','Trần Tuấn Hà','Nam Định','tuanha@gmail.com','CNTT',0,'2000-10-15 00:00:00','0912347685'),('SF003','Nguyễn Minh Anh','Hải Phòng','minhanh@gmail.com','DT',0,'2000-06-12 00:00:00','0912345999'),('SF004','Nguyễn Thị Hà','Hải Dương','hant@outlook.com','KD',1,'2000-05-20 00:00:00','0916378999'),('SF005','Nguyễn Trần Hưng','Hải Phòng','hungnt@gmail.com','KD',0,'2000-10-25 00:00:00','0916456896'),('SF006','Trần Hà Nam','Hà Nội','thn@gmail.com','KD',0,'2000-02-15 00:00:00','0917286864'),('SF007','Nguyễn Văn Tài','Đà Nẵng','nvt@gmail.com','DT',0,'2000-08-18 00:00:00','0959949818'),('SF008','Lê Đại Hành','Hồ Chí Minh','ldh@gmail.com','CNTT',0,'2002-02-20 00:00:00','0968567888');
/*!40000 ALTER TABLE `sinhvien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'j062401cb'
--

--
-- Dumping routines for database 'j062401cb'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-13 16:35:52
