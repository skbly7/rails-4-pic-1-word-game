-- MySQL dump 10.13  Distrib 5.5.38, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: shivam
-- ------------------------------------------------------
-- Server version	5.5.38-0ubuntu0.14.04.1

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
-- Table structure for table `active_admin_comments`
--

DROP TABLE IF EXISTS `active_admin_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `active_admin_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `namespace` varchar(255) DEFAULT NULL,
  `body` text,
  `resource_id` varchar(255) NOT NULL,
  `resource_type` varchar(255) NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `author_type` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_active_admin_comments_on_namespace` (`namespace`),
  KEY `index_active_admin_comments_on_author_type_and_author_id` (`author_type`,`author_id`),
  KEY `index_active_admin_comments_on_resource_type_and_resource_id` (`resource_type`,`resource_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `active_admin_comments`
--

LOCK TABLES `active_admin_comments` WRITE;
/*!40000 ALTER TABLE `active_admin_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `active_admin_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ousers`
--

DROP TABLE IF EXISTS `ousers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ousers` (
  `username` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `high_score` int(11) NOT NULL DEFAULT '0',
  `password` varchar(20) DEFAULT 'pass',
  `fb_ac` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ousers`
--

LOCK TABLES `ousers` WRITE;
/*!40000 ALTER TABLE `ousers` DISABLE KEYS */;
/*!40000 ALTER TABLE `ousers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `image_file_name` varchar(255) DEFAULT NULL,
  `image_content_type` varchar(255) DEFAULT NULL,
  `image_file_size` int(11) DEFAULT NULL,
  `image_updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (14,'test','dirty',1,'2014-09-20 01:42:30','2014-09-20 01:42:30','4pics1word-large-0001.jpg','image/jpeg',13900,'2014-09-20 01:42:30'),(15,'test','ball',1,'2014-09-20 01:42:43','2014-09-20 01:42:43','4pics1word-large-0002.jpg','image/jpeg',12873,'2014-09-20 01:42:43'),(16,'test','fish',1,'2014-09-20 01:43:01','2014-09-20 01:43:01','4pics1word-large-0003.jpg','image/jpeg',10923,'2014-09-20 01:43:01'),(17,'test','pair',1,'2014-09-20 01:44:15','2014-09-20 01:55:19','4pics1word-large-0006.jpg','image/jpeg',10379,'2014-09-20 01:55:19'),(18,'test','cross',1,'2014-09-20 01:44:40','2014-09-20 01:44:40','4pics1word-large-0005.jpg','image/jpeg',10101,'2014-09-20 01:44:40'),(19,'test','hahah',2,'2014-09-20 01:44:54','2014-09-20 01:44:54','4pics1word-large-0007.jpg','image/jpeg',10712,'2014-09-20 01:44:54');
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20140912010217'),('20140912011449'),('20140912124556'),('20140912131037'),('20140912132302'),('20140919222928'),('20140919223649'),('20140919230322'),('20140919230415'),('20140919231733');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `highest1` int(11) DEFAULT NULL,
  `highest2` int(11) DEFAULT NULL,
  `highest3` int(11) DEFAULT NULL,
  `facebook` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (6,'shivam','shivam@shivam.com','jaadu123',7,3,0,0,'2014-09-12 03:07:34','2014-09-20 03:06:34',NULL,NULL),(7,'okrdx','okrdx@okrdx.com','okrdxok',0,0,0,0,'2014-09-12 03:24:02','2014-09-12 03:24:02',NULL,NULL),(8,'okrdxe','okrdx@okrdx.come','okrdxok',0,0,0,0,'2014-09-12 03:24:29','2014-09-12 03:24:29',NULL,NULL),(10,'gmail','gmail@gmail.com','gmail.com',200,0,34,0,'2014-09-12 03:39:40','2014-09-20 01:05:40',NULL,NULL),(11,'kingkong','king@kong.com','comking',0,0,0,0,'2014-09-12 08:53:36','2014-09-12 08:53:36',NULL,NULL),(12,'joker','joker@joker.com','joker123',0,0,0,0,'2014-09-12 09:42:30','2014-09-12 09:42:30',NULL,NULL),(13,'skbly7','jaadu@jaddu.com','joker123',0,0,0,0,'2014-09-12 12:33:37','2014-09-12 12:33:37',NULL,NULL),(14,'rajat','rajat@royal.com','rajat123',0,0,0,0,'2014-09-12 12:33:59','2014-09-12 12:33:59',NULL,NULL),(15,'skbly77','anhi@angi.com','iamdon',0,0,0,0,'2014-09-12 13:33:02','2014-09-12 13:33:02',NULL,NULL),(17,'jammu','jammu@jammu.org','okrdx.com',0,0,0,0,'2014-09-12 14:54:54','2014-09-12 14:54:54',NULL,NULL),(18,'jammu2','jammu@jammu2.org','okrdx.com',0,0,0,0,'2014-09-12 14:56:05','2014-09-12 14:56:05',NULL,NULL),(19,'jammu3','jammu@jammu3.org','skbly77',0,0,0,0,'2014-09-12 14:56:44','2014-09-12 14:56:44',NULL,NULL),(20,'shivam123','12s3@123s.com','okrdx.com',0,0,0,0,'2014-09-12 15:04:42','2014-09-12 15:04:42',NULL,NULL),(21,'sqwerty','qwert@wq.com','okrdx1',0,0,0,0,'2014-09-12 15:11:04','2014-09-12 15:11:04',NULL,NULL),(22,'okrdx.com','okrdx@okrdx.co2m','okrdx.com',0,0,0,0,'2014-09-12 15:13:09','2014-09-12 15:13:09',NULL,NULL),(23,'okrdxfb','okrdx.com@okrdx.comm','helloall',0,0,0,0,'2014-09-12 15:15:22','2014-09-12 15:15:22',NULL,NULL),(25,'facebook.shivam0581@gmail.com','facebook.shivam0581@gmail.com','Shivam Khandelwal',0,0,0,1,'2014-09-12 16:29:25','2014-09-20 03:10:02',NULL,NULL),(27,'github','github@kuchbhi.com','kuchbhi',0,0,0,0,'2014-09-20 01:26:02','2014-09-20 01:26:02',NULL,NULL),(28,'skbly7@gmail.com','skbly7@gmail.com','Shivam Khandelwal',0,0,0,1,'2014-09-20 01:27:05','2014-09-20 01:27:05',NULL,NULL),(29,'fbskbly7@gmail.com','fbskbly7@gmail.com','Shivam Khandelwal',7,3,0,1,'2014-09-20 01:27:30','2014-09-20 03:10:38',NULL,NULL);
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

-- Dump completed on 2014-09-20  8:43:43
