-- MySQL dump 10.13  Distrib 5.6.35, for osx10.9 (x86_64)
--
-- Host: localhost    Database: projectuas
-- ------------------------------------------------------
-- Server version	5.6.35

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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `id_cust` int(5) NOT NULL AUTO_INCREMENT,
  `nama_depan` varchar(25) NOT NULL,
  `nama_belakang` varchar(35) NOT NULL,
  `nama_customer` varchar(50) NOT NULL,
  `alamat_customer` varchar(150) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(25) NOT NULL,
  `phone` int(12) NOT NULL,
  PRIMARY KEY (`id_cust`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (40,'Maryadi','Aris Munandar','PT. Aktiva Kreasi Investama','Bekasi Timur','user1@aktiva.co.id','password',1234567),(43,'Nugi','Abdiansyah','PT Nugi Maju Bersama','Bekasi Selatan','nugi@nugi.biz','password',1234567),(44,'Rizky','Pratama','PT Rizky Berkah','Kranji Bekasi','rizky@rizkypratama.id','password',1234567),(45,'Raihan','Utomo','Raihan Bersaudara','Pekayon Bekasi','raihan@colamen.id','password',1234567),(46,'Choirrulloh','Irul','PT Irul Uril Ulir','Bekasi Utara','irul@choirrulloh.web.id','password',1234567),(47,'Muhammad','Dhenandi','Dhenandi dan Saudara','Jalan Kranji Raya','dhenandi@dhenandi.com','password',1234567),(48,'Ahmad','Imanudin','PT Imanudin Berjaya','Bekasi Timur','admin@imanudin.net','password',1234567),(49,'User1','Example','PT. User1 Example','JL. User1 Example','user1@example1.com','password',1234567),(50,'User2','Example','PT. User2 Example','Jalan User2 Example','user2@example2.com','password',1234567),(59,'Ahmad','Imanudin','PT. Ahmad Imanudin','JL. Indra','ahmad@imanudin.com','password',1234567),(60,'Fajar','Mukharom','PT. Fajar Mukharom','JL. Rawa Bebek Rawa Entog','fajar@mukharom.com','password',1234567),(68,'Arif','Rahman','PT. Arif Rahman','Jalan Arif Rahman	','arif@arifrahman.com','password',1234567),(69,'Nugi','Abdiansyah','PT Nugi Abdiansyah','Jalan Nugi','nugi@nugi.biz.net','password',1234567);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `domain`
--

DROP TABLE IF EXISTS `domain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `domain` (
  `id_domain` int(5) NOT NULL AUTO_INCREMENT,
  `nama_domain` varchar(50) NOT NULL,
  `id_cust` int(5) NOT NULL,
  PRIMARY KEY (`id_domain`),
  UNIQUE KEY `nama_domain` (`nama_domain`),
  KEY `domain_fk1` (`id_cust`),
  CONSTRAINT `domain_fk1` FOREIGN KEY (`id_cust`) REFERENCES `customer` (`id_cust`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `domain`
--

LOCK TABLES `domain` WRITE;
/*!40000 ALTER TABLE `domain` DISABLE KEYS */;
INSERT INTO `domain` VALUES (57,'example4.com',46),(63,'nugi.biz',43),(64,'rizkypratama.id',44),(65,'colamen.id',45),(66,'choirrulloh.web.id',46),(67,'dhenandi.com',47),(69,'example2.com',50),(70,'example3.com',50),(71,'example1.com',49),(72,'arifrahman.net',68),(73,'arifrahman.com',68),(74,'nugi.biz.id',69);
/*!40000 ALTER TABLE `domain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loginAdmin`
--

DROP TABLE IF EXISTS `loginAdmin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loginAdmin` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `passwd` varchar(50) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loginAdmin`
--

LOCK TABLES `loginAdmin` WRITE;
/*!40000 ALTER TABLE `loginAdmin` DISABLE KEYS */;
INSERT INTO `loginAdmin` VALUES (1,'ahmad@imanudin.net','password','Ahmad Imanudin');
/*!40000 ALTER TABLE `loginAdmin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loginCustomer`
--

DROP TABLE IF EXISTS `loginCustomer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loginCustomer` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `passwd` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loginCustomer`
--

LOCK TABLES `loginCustomer` WRITE;
/*!40000 ALTER TABLE `loginCustomer` DISABLE KEYS */;
/*!40000 ALTER TABLE `loginCustomer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paket`
--

DROP TABLE IF EXISTS `paket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paket` (
  `id_paket` int(5) NOT NULL AUTO_INCREMENT,
  `nama_paket` varchar(50) NOT NULL,
  `harga` int(5) NOT NULL,
  `quota_email` int(50) NOT NULL,
  `max_domain` int(5) NOT NULL,
  `phone_support` varchar(5) NOT NULL,
  `max_attachment` varchar(5) NOT NULL,
  PRIMARY KEY (`id_paket`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paket`
--

LOCK TABLES `paket` WRITE;
/*!40000 ALTER TABLE `paket` DISABLE KEYS */;
INSERT INTO `paket` VALUES (1,'Bronze',350000,50000,1,'No','10 MB'),(2,'Silver',500000,75000,2,'Yes','15 MB'),(3,'Gold',700000,90000,3,'Yes','25 MB'),(4,'Premium',950000,100000,4,'Yes','35 MB');
/*!40000 ALTER TABLE `paket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipeLangganan`
--

DROP TABLE IF EXISTS `tipeLangganan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipeLangganan` (
  `id_langganan` int(5) NOT NULL AUTO_INCREMENT,
  `tipe_langganan` varchar(50) NOT NULL,
  `lama_bulan` int(5) NOT NULL,
  PRIMARY KEY (`id_langganan`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipeLangganan`
--

LOCK TABLES `tipeLangganan` WRITE;
/*!40000 ALTER TABLE `tipeLangganan` DISABLE KEYS */;
INSERT INTO `tipeLangganan` VALUES (1,'Trial',0),(2,'Bulanan',1),(3,'Triwulan',3),(4,'Caturwulan',4),(5,'Semester',6),(6,'Tahunan',12);
/*!40000 ALTER TABLE `tipeLangganan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaksi`
--

DROP TABLE IF EXISTS `transaksi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaksi` (
  `id_transaksi` int(5) NOT NULL AUTO_INCREMENT,
  `id_cust` int(5) NOT NULL,
  `id_paket` int(5) NOT NULL,
  `id_langganan` int(5) NOT NULL,
  `harga` int(25) DEFAULT NULL,
  `masa_aktif` date DEFAULT NULL,
  PRIMARY KEY (`id_transaksi`),
  KEY `id_cust` (`id_cust`),
  KEY `id_paket` (`id_paket`),
  KEY `id_langganan` (`id_langganan`),
  CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`id_cust`) REFERENCES `customer` (`id_cust`),
  CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`id_paket`) REFERENCES `paket` (`id_paket`),
  CONSTRAINT `transaksi_ibfk_3` FOREIGN KEY (`id_langganan`) REFERENCES `tipeLangganan` (`id_langganan`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaksi`
--

LOCK TABLES `transaksi` WRITE;
/*!40000 ALTER TABLE `transaksi` DISABLE KEYS */;
INSERT INTO `transaksi` VALUES (28,40,1,2,350000,'2019-08-22'),(31,43,4,6,11400000,'2020-07-22'),(32,44,3,3,2100000,'2019-10-22'),(33,45,4,4,3800000,'2019-11-22'),(34,46,4,6,11400000,'2020-07-22'),(35,47,2,6,6000000,'2020-07-22'),(36,49,2,3,1500000,'2019-10-23'),(37,50,2,6,6000000,'2020-07-23'),(41,68,4,4,3800000,'2019-11-24'),(42,69,3,5,4200000,'2020-01-24');
/*!40000 ALTER TABLE `transaksi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-24 12:17:00
