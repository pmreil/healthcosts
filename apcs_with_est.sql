-- MySQL dump 10.13  Distrib 5.5.22, for osx10.6 (i386)
--
-- Host: localhost    Database: healthcosts
-- ------------------------------------------------------
-- Server version	5.5.22

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
-- Table structure for table `apcs`
--

DROP TABLE IF EXISTS `apcs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apcs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `avg_estimated_submitted_charges` float DEFAULT NULL,
  `avg_total_payments` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apcs`
--

LOCK TABLES `apcs` WRITE;
/*!40000 ALTER TABLE `apcs` DISABLE KEYS */;
INSERT INTO `apcs` VALUES (1,12,'Level I Debridement & Destruction','2013-06-12 20:28:20','2013-06-12 20:28:20',91.0928,17.7904),(2,13,'Level II Debridement & Destruction','2013-06-12 20:28:20','2013-06-12 20:28:20',262.577,56.1406),(3,15,'Level III Debridement & Destruction','2013-06-12 20:28:20','2013-06-12 20:28:20',362.13,97.97),(4,19,'Level I Excision/ Biopsy','2013-06-12 20:28:20','2013-06-12 20:28:20',2264.47,331.76),(5,20,'Level II Excision/ Biopsy','2013-06-12 20:28:20','2013-06-12 20:28:20',3430.88,568.787),(6,73,'Level III Endoscopy Upper Airway','2013-06-12 20:28:20','2013-06-12 20:28:20',856.6,291.368),(7,74,'Level IV Endoscopy Upper Airway','2013-06-12 20:28:20','2013-06-12 20:28:20',7139.9,1463.64),(8,78,'Level III Pulmonary Treatment','2013-06-12 20:28:20','2013-06-12 20:28:20',593.796,97.3155),(9,96,'Level II Noninvasive Physiologic Studies','2013-06-12 20:28:20','2013-06-12 20:28:20',751.357,104.559),(10,203,'Level IV Nerve Injections','2013-06-12 20:28:20','2013-06-12 20:28:20',3675.68,839.878),(11,204,'Level I Nerve Injections','2013-06-12 20:28:20','2013-06-12 20:28:20',1279.79,177.452),(12,206,'Level II Nerve Injections','2013-06-12 20:28:20','2013-06-12 20:28:20',1342.7,253.514),(13,207,'Level III Nerve Injections','2013-06-12 20:28:20','2013-06-12 20:28:20',2577.32,502.124),(14,209,'Level II Extended EEG, Sleep, and Cardiovascular Studies','2013-06-12 20:28:20','2013-06-12 20:28:20',3631.53,756.275),(15,265,'Level I Diagnostic and Screening Ultrasound','2013-06-12 20:28:20','2013-06-12 20:28:20',487.042,61.4998),(16,267,'Level III Diagnostic and Screening Ultrasound','2013-06-12 20:28:20','2013-06-12 20:28:20',1057.55,151.281),(17,269,'Level II Echocardiogram Without Contrast','2013-06-12 20:28:20','2013-06-12 20:28:20',1970.56,396.584),(18,270,'Level III Echocardiogram Without Contrast','2013-06-12 20:28:20','2013-06-12 20:28:20',3033.9,561.565),(19,336,'Magnetic Resonance Imaging and Magnetic Resonance Angiography wit','2013-06-12 20:28:20','2013-06-12 20:28:20',2611.02,348.96),(20,368,'Level II Pulmonary Tests','2013-06-12 20:28:20','2013-06-12 20:28:20',316.273,59.1859),(21,369,'Level III Pulmonary Tests','2013-06-12 20:28:20','2013-06-12 20:28:20',1016.89,207.882),(22,377,'Level II Cardiac Imaging','2013-06-12 20:28:20','2013-06-12 20:28:20',4574.47,747.836),(23,604,'Level 1 Hospital Clinic Visits','2013-06-12 20:28:20','2013-06-12 20:28:20',1170.55,51.3182),(24,605,'Level 2 Hospital Clinic Visits','2013-06-12 20:28:20','2013-06-12 20:28:20',202.38,75.0539),(25,606,'Level 3 Hospital Clinic Visits','2013-06-12 20:28:20','2013-06-12 20:28:20',278.388,99.5398),(26,607,'Level 4 Hospital Clinic Visits','2013-06-12 20:28:20','2013-06-12 20:28:20',351.904,128.308),(27,608,'Level 5 Hospital Clinic Visits','2013-06-12 20:28:20','2013-06-12 20:28:20',454.233,171.114),(28,690,'Level I Electronic Analysis of Devices','2013-06-12 20:28:20','2013-06-12 20:28:20',182.684,35.58),(29,692,'Level II Electronic Analysis of Devices','2013-06-12 20:28:20','2013-06-12 20:28:20',705.381,108.943),(30,698,'Level II Eye Tests & Treatments','2013-06-12 20:28:20','2013-06-12 20:28:20',250.686,69.4324);
/*!40000 ALTER TABLE `apcs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-06-20 22:44:41
