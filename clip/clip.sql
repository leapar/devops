-- MySQL dump 10.13  Distrib 5.1.73, for redhat-linux-gnu (x86_64)
--
-- Host: localhost    Database: clip
-- ------------------------------------------------------
-- Server version	5.1.73

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
-- Table structure for table `clip`
--

DROP TABLE IF EXISTS `clip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clip` (
  `idc` varchar(20) NOT NULL,
  `product` varchar(20) NOT NULL,
  `modules` varchar(20) NOT NULL,
  `group` varchar(20) NOT NULL,
  `ext` varchar(20) DEFAULT '0',
  `s_k` varchar(20) NOT NULL,
  `s_v` varchar(200) NOT NULL,
  `operator` varchar(20) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY `idc` (`idc`,`product`,`modules`,`group`,`ext`,`s_k`,`s_v`),
  KEY `idc_4` (`idc`,`product`,`modules`,`group`,`ext`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clip`
--

LOCK TABLES `clip` WRITE;
/*!40000 ALTER TABLE `clip` DISABLE KEYS */;
INSERT INTO `clip` VALUES ('bj','qq','qzone','web','0','ip','192.168.0.1','wds','2015-01-16 09:04:54'),('bj','qq','qzone','web','0','ip','192.168.0.2','wds','2015-01-16 09:04:54'),('bj','qq','qzone','web','0','ip','192.168.0.3','wds','2015-01-16 09:04:54'),('bj','qq','qzone','web','0','ip','192.168.0.4','wds','2015-01-16 09:04:54'),('bj','qq','qzone','web','0','ip','192.168.0.5','wds','2015-01-16 09:04:54'),('bj','qq','qzone','web','0','ip','192.168.0.6','wds','2015-01-16 09:04:54'),('bj','qq','qzone','web','0','ip','192.168.0.7','wds','2015-01-16 09:04:54'),('bj','qq','qzone','web','0','ip','192.168.0.8','wds','2015-01-16 09:04:54'),('bj','qq','qzone','web','0','ip','192.168.0.9','wds','2015-01-16 09:04:54'),('bj','qq','qzone','web','0','ip','192.168.0.10','wds','2015-01-16 09:04:54'),('sh','qq','qzone','web','0','ip','192.168.0.11','wds','2015-01-16 09:04:54'),('sh','qq','qzone','web','0','ip','192.168.0.12','wds','2015-01-16 09:04:54'),('sh','qq','qzone','web','0','ip','192.168.0.13','wds','2015-01-16 09:04:54');
/*!40000 ALTER TABLE `clip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `history`
--

DROP TABLE IF EXISTS `history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `log` varchar(200) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history`
--

LOCK TABLES `history` WRITE;
/*!40000 ALTER TABLE `history` DISABLE KEYS */;
INSERT INTO `history` VALUES (1,'/bin/clip cstring -q *-*-*-*','2015-01-15 12:56:18'),(2,'clip tree -q *-*-*-*','2015-01-15 13:03:22'),(3,'clip tree -q *-*-*-*','2015-01-15 13:06:29'),(4,'clip tree -q *-*-*-*','2015-01-15 13:06:44'),(5,'clip tree -q *-*-*-*','2015-01-15 13:06:48'),(6,'clip tree -q *-*-*-*','2015-01-15 13:07:57'),(7,'clip tree -q *-*-*-*','2015-01-15 13:08:00'),(8,'clip tree -q *-*-*-*','2015-01-15 13:08:08'),(9,'clip tree -q *-*-*-*','2015-01-15 13:08:11'),(10,'clip tree -q *-*-*-*','2015-01-15 13:08:40'),(11,'clip tree -q *-*-*-*','2015-01-15 13:08:49'),(12,'clip tree -q *-*-*-*','2015-01-16 09:05:12'),(13,'clip tree -q *-qq-*-*','2015-01-16 09:05:16'),(14,'/bin/clip cstring -q bj-qq-qzone-web-0','2015-01-16 09:05:26'),(15,'clip tree -q *-*-*-*','2015-01-19 07:01:11'),(16,'clip tree -q *-qq-*-*','2015-01-19 07:01:16'),(17,'./clip cstring -q *-qq-*-*','2015-01-19 07:20:42'),(18,'/usr/local/services/clip/clip cstring -q *-*-*-*','2015-01-20 03:29:50'),(19,'/usr/local/services/clip/clip cstring -q *-qq-*-*','2015-01-20 03:29:54');
/*!40000 ALTER TABLE `history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ip_data`
--

DROP TABLE IF EXISTS `ip_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ip_data` (
  `idc` varchar(20) NOT NULL,
  `product` varchar(20) NOT NULL,
  `modules` varchar(20) NOT NULL,
  `group` varchar(20) NOT NULL,
  `ext` varchar(20) DEFAULT '0',
  `ipaddress` varchar(15) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY `idc_3` (`idc`,`product`,`modules`,`group`,`ext`,`ipaddress`),
  KEY `idc_4` (`idc`,`product`,`modules`,`group`,`ext`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ip_data`
--

LOCK TABLES `ip_data` WRITE;
/*!40000 ALTER TABLE `ip_data` DISABLE KEYS */;
INSERT INTO `ip_data` VALUES ('bj','qq','qzone','web','0','192.168.0.1','2015-01-16 09:04:54'),('bj','qq','qzone','web','0','192.168.0.2','2015-01-16 09:04:54'),('bj','qq','qzone','web','0','192.168.0.3','2015-01-16 09:04:54'),('bj','qq','qzone','web','0','192.168.0.4','2015-01-16 09:04:54'),('bj','qq','qzone','web','0','192.168.0.5','2015-01-16 09:04:54'),('bj','qq','qzone','web','0','192.168.0.6','2015-01-16 09:04:54'),('bj','qq','qzone','web','0','192.168.0.7','2015-01-16 09:04:54'),('bj','qq','qzone','web','0','192.168.0.8','2015-01-16 09:04:54'),('bj','qq','qzone','web','0','192.168.0.9','2015-01-16 09:04:54'),('bj','qq','qzone','web','0','192.168.0.10','2015-01-16 09:04:54'),('sh','qq','qzone','web','0','192.168.0.11','2015-01-16 09:04:54'),('sh','qq','qzone','web','0','192.168.0.12','2015-01-16 09:04:54'),('sh','qq','qzone','web','0','192.168.0.13','2015-01-16 09:04:54');
/*!40000 ALTER TABLE `ip_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_data`
--

DROP TABLE IF EXISTS `tags_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags_data` (
  `idc` varchar(20) NOT NULL,
  `product` varchar(20) NOT NULL,
  `modules` varchar(20) NOT NULL,
  `group` varchar(20) NOT NULL,
  `ext` varchar(20) DEFAULT '0',
  `tags` varchar(70) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY `idc_3` (`idc`,`product`,`modules`,`group`,`ext`,`tags`),
  KEY `idc_4` (`idc`,`product`,`modules`,`group`,`ext`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_data`
--

LOCK TABLES `tags_data` WRITE;
/*!40000 ALTER TABLE `tags_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags_data` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-01-20 11:33:05
