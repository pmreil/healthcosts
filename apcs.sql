-- MySQL dump 10.13  Distrib 5.5.22, for osx10.6 (i386)
--
-- Host: localhost    Database: hospital_costs
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
INSERT INTO `apcs` VALUES (1,12,'Level I Debridement & Destruction','2013-06-12 20:28:20','2013-06-12 20:28:20',NULL,NULL),(2,13,'Level II Debridement & Destruction','2013-06-12 20:28:20','2013-06-12 20:28:20',NULL,NULL),(3,15,'Level III Debridement & Destruction','2013-06-12 20:28:20','2013-06-12 20:28:20',NULL,NULL),(4,19,'Level I Excision/ Biopsy','2013-06-12 20:28:20','2013-06-12 20:28:20',NULL,NULL),(5,20,'Level II Excision/ Biopsy','2013-06-12 20:28:20','2013-06-12 20:28:20',NULL,NULL),(6,73,'Level III Endoscopy Upper Airway','2013-06-12 20:28:20','2013-06-12 20:28:20',NULL,NULL),(7,74,'Level IV Endoscopy Upper Airway','2013-06-12 20:28:20','2013-06-12 20:28:20',NULL,NULL),(8,78,'Level III Pulmonary Treatment','2013-06-12 20:28:20','2013-06-12 20:28:20',NULL,NULL),(9,96,'Level II Noninvasive Physiologic Studies','2013-06-12 20:28:20','2013-06-12 20:28:20',NULL,NULL),(10,203,'Level IV Nerve Injections','2013-06-12 20:28:20','2013-06-12 20:28:20',NULL,NULL),(11,204,'Level I Nerve Injections','2013-06-12 20:28:20','2013-06-12 20:28:20',NULL,NULL),(12,206,'Level II Nerve Injections','2013-06-12 20:28:20','2013-06-12 20:28:20',NULL,NULL),(13,207,'Level III Nerve Injections','2013-06-12 20:28:20','2013-06-12 20:28:20',NULL,NULL),(14,209,'Level II Extended EEG, Sleep, and Cardiovascular Studies','2013-06-12 20:28:20','2013-06-12 20:28:20',NULL,NULL),(15,265,'Level I Diagnostic and Screening Ultrasound','2013-06-12 20:28:20','2013-06-12 20:28:20',NULL,NULL),(16,267,'Level III Diagnostic and Screening Ultrasound','2013-06-12 20:28:20','2013-06-12 20:28:20',NULL,NULL),(17,269,'Level II Echocardiogram Without Contrast','2013-06-12 20:28:20','2013-06-12 20:28:20',NULL,NULL),(18,270,'Level III Echocardiogram Without Contrast','2013-06-12 20:28:20','2013-06-12 20:28:20',NULL,NULL),(19,336,'Magnetic Resonance Imaging and Magnetic Resonance Angiography wit','2013-06-12 20:28:20','2013-06-12 20:28:20',NULL,NULL),(20,368,'Level II Pulmonary Tests','2013-06-12 20:28:20','2013-06-12 20:28:20',NULL,NULL),(21,369,'Level III Pulmonary Tests','2013-06-12 20:28:20','2013-06-12 20:28:20',NULL,NULL),(22,377,'Level II Cardiac Imaging','2013-06-12 20:28:20','2013-06-12 20:28:20',NULL,NULL),(23,604,'Level 1 Hospital Clinic Visits','2013-06-12 20:28:20','2013-06-12 20:28:20',NULL,NULL),(24,605,'Level 2 Hospital Clinic Visits','2013-06-12 20:28:20','2013-06-12 20:28:20',NULL,NULL),(25,606,'Level 3 Hospital Clinic Visits','2013-06-12 20:28:20','2013-06-12 20:28:20',NULL,NULL),(26,607,'Level 4 Hospital Clinic Visits','2013-06-12 20:28:20','2013-06-12 20:28:20',NULL,NULL),(27,608,'Level 5 Hospital Clinic Visits','2013-06-12 20:28:20','2013-06-12 20:28:20',NULL,NULL),(28,690,'Level I Electronic Analysis of Devices','2013-06-12 20:28:20','2013-06-12 20:28:20',NULL,NULL),(29,692,'Level II Electronic Analysis of Devices','2013-06-12 20:28:20','2013-06-12 20:28:20',NULL,NULL),(30,698,'Level II Eye Tests & Treatments','2013-06-12 20:28:20','2013-06-12 20:28:20',NULL,NULL);
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

-- Dump completed on 2013-06-12 21:09:52
