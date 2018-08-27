-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: feature-code2
-- ------------------------------------------------------
-- Server version	5.5.45

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
-- Table structure for table `tblbranddept`
--

DROP TABLE IF EXISTS `tblbranddept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblbranddept` (
  `Brand` varchar(20) NOT NULL,
  `Department` varchar(25) DEFAULT NULL,
  `DeptNum` varchar(4) NOT NULL,
  `MappedDept` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`DeptNum`,`Brand`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblbranddept`
--

LOCK TABLES `tblbranddept` WRITE;
/*!40000 ALTER TABLE `tblbranddept` DISABLE KEYS */;
INSERT INTO `tblbranddept` VALUES ('Gymboree','GY Web','11',NULL),('Gymboree','GY Baby Boy','14',NULL),('Gymboree','GY Baby Girl','15',NULL),('Gymboree','GY Accessories','2',NULL),('Outlet','GY Access Outlet','30','2'),('Outlet','GY Kid Boy Outlet','31','4'),('Outlet','GY Kid Girl Outlet','32','5'),('Outlet','GY Newborn Outlet','33','8'),('Outlet','GY Baby Boy Outlet','34','14'),('Outlet','GY Baby Girl Outlet','35','15'),('Gymboree','GY Boy','4',NULL),('Crazy 8','C8 Accessories','40',NULL),('Crazy 8','C8 Boy','41',NULL),('Crazy 8','C8 Girl','42',NULL),('Crazy 8','C8 Baby 8','43',NULL),('Crazy 8','C8 Toddler Boy','44',NULL),('Crazy 8','C8 Toddler Girl','45',NULL),('Crazy 8','C8 Sleepwear','46',NULL),('Gymboree','GY Kid Girl','5',NULL),('Janie & Jack','JJ Girl','52',NULL),('Janie & Jack','JJ Boy','53',NULL),('Janie & Jack','JJ Layette Apparel','54',NULL),('Janie & Jack','JJ Layette Access','55',NULL),('Janie & Jack','JJ Accessories','58',NULL),('Janie & Jack','JJ Web','70',NULL),('Gymboree','GY Newborn','8',NULL);
/*!40000 ALTER TABLE `tblbranddept` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-08-27  7:36:55
