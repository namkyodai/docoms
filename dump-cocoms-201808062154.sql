-- MySQL dump 10.16  Distrib 10.1.26-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cocoms
-- ------------------------------------------------------
-- Server version	10.1.26-MariaDB-0+deb9u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cake_d_c_users_phinxlog`
--

DROP TABLE IF EXISTS `cake_d_c_users_phinxlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cake_d_c_users_phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `end_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cake_d_c_users_phinxlog`
--

LOCK TABLES `cake_d_c_users_phinxlog` WRITE;
/*!40000 ALTER TABLE `cake_d_c_users_phinxlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `cake_d_c_users_phinxlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `letters`
--

DROP TABLE IF EXISTS `letters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `letters` (
  `id` char(36) NOT NULL,
  `sender_id` char(36) NOT NULL,
  `recipient_id` char(36) NOT NULL,
  `work_package_id` char(36) NOT NULL,
  `filelink` varchar(255) DEFAULT NULL,
  `file_dir` varchar(255) DEFAULT NULL,
  `docref` varchar(255) DEFAULT NULL,
  `subject` text NOT NULL,
  `contents` mediumtext,
  `docdate` date DEFAULT NULL,
  `confidential` tinyint(1) DEFAULT '0',
  `replyreq` tinyint(1) DEFAULT '0',
  `tag_count` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `letters`
--

LOCK TABLES `letters` WRITE;
/*!40000 ALTER TABLE `letters` DISABLE KEYS */;
INSERT INTO `letters` VALUES ('8b9bda29-5e88-4d69-a939-3520d45653c4','9b334885-6d92-449f-92e5-3cc5fb0db769','828ed758-6003-48d1-ada0-a6a6efed97d0','513db1b1-4570-44f5-941c-f40bb86c44c9',NULL,'','sadf','sdfsf','sdfasdf',NULL,0,0,0),('db30eecb-80d8-465e-bb2b-e6cf1cee5b95','9b334885-6d92-449f-92e5-3cc5fb0db769','828ed758-6003-48d1-ada0-a6a6efed97d0','b12507c3-2edc-4433-915f-d880583ebfac',NULL,'','sdfsdf','sdafsfddf','sdfsfsdf',NULL,0,0,0),('f8b5bb1a-2018-406b-9a97-6485c6bae18e','9b334885-6d92-449f-92e5-3cc5fb0db769','828ed758-6003-48d1-ada0-a6a6efed97d0','513db1b1-4570-44f5-941c-f40bb86c44c9',NULL,'','asdf','sdafasdf','asdf',NULL,0,0,0);
/*!40000 ALTER TABLE `letters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `muffin_tags_phinxlog`
--

DROP TABLE IF EXISTS `muffin_tags_phinxlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `muffin_tags_phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `end_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muffin_tags_phinxlog`
--

LOCK TABLES `muffin_tags_phinxlog` WRITE;
/*!40000 ALTER TABLE `muffin_tags_phinxlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `muffin_tags_phinxlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipients`
--

DROP TABLE IF EXISTS `recipients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recipients` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` text,
  `representative` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `remarks` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipients`
--

LOCK TABLES `recipients` WRITE;
/*!40000 ALTER TABLE `recipients` DISABLE KEYS */;
INSERT INTO `recipients` VALUES ('66a094b7-12f4-4d27-a62b-eadfc5d4dd1b','Nam Le','','','','','','','',''),('828ed758-6003-48d1-ada0-a6a6efed97d0','WADM','','','','','','','wadm@gmail.com',''),('d64ddd2b-c7a2-43aa-9fcd-f3152ac3bbd6','Scott','','','','','','','scott.moore@ghd.com','');
/*!40000 ALTER TABLE `recipients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `senders`
--

DROP TABLE IF EXISTS `senders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `senders` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` text,
  `representative` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `remarks` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `senders`
--

LOCK TABLES `senders` WRITE;
/*!40000 ALTER TABLE `senders` DISABLE KEYS */;
INSERT INTO `senders` VALUES ('1d07a024-e4bd-4167-8c8d-c6a624d9b752','Nam Le','','','','','','','namlt@protonmail.com',''),('2ab3faf3-5abc-4604-aef7-656471a165cf','Scott Moore','','','','','','','',''),('9b334885-6d92-449f-92e5-3cc5fb0db769','GHD','','','','','','','ghd@ghd.com','');
/*!40000 ALTER TABLE `senders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_accounts`
--

DROP TABLE IF EXISTS `social_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_accounts` (
  `id` char(36) NOT NULL,
  `user_id` char(36) NOT NULL,
  `provider` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `reference` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `description` text,
  `link` varchar(255) NOT NULL,
  `token` varchar(500) NOT NULL,
  `token_secret` varchar(500) DEFAULT NULL,
  `token_expires` datetime DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `data` text NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `social_accounts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_accounts`
--

LOCK TABLES `social_accounts` WRITE;
/*!40000 ALTER TABLE `social_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_tagged`
--

DROP TABLE IF EXISTS `tags_tagged`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags_tagged` (
  `id` char(36) NOT NULL,
  `tag_id` char(36) DEFAULT NULL,
  `fk_id` char(36) DEFAULT NULL,
  `fk_table` varchar(255) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tag_id` (`tag_id`,`fk_id`,`fk_table`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_tagged`
--

LOCK TABLES `tags_tagged` WRITE;
/*!40000 ALTER TABLE `tags_tagged` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags_tagged` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_tags`
--

DROP TABLE IF EXISTS `tags_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags_tags` (
  `id` char(36) NOT NULL,
  `namespace` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `counter` int(11) unsigned NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `tag_key` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tag_key` (`tag_key`,`label`,`namespace`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_tags`
--

LOCK TABLES `tags_tags` WRITE;
/*!40000 ALTER TABLE `tags_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` char(36) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `token_expires` datetime DEFAULT NULL,
  `api_token` varchar(255) DEFAULT NULL,
  `activation_date` datetime DEFAULT NULL,
  `tos_date` datetime DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `is_superuser` tinyint(1) NOT NULL DEFAULT '0',
  `role` varchar(255) DEFAULT 'user',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('50d0be63-f6f6-4b1b-ad67-4c47feb5bcde','root','namkyodai@gmail.com','$2y$10$SiBG6h9hbe6agMh1N1ot0.bWhpZfJPw5GsQwne1kku..L8vZbm8/S','Nico','Friedman','0e015038f5bc7a35ff45e6f5d7073612','2018-07-28 16:21:38',NULL,NULL,'2018-07-28 15:21:38',1,1,'admin','2018-07-28 15:21:38','2018-07-28 15:21:38'),('6a8931b4-d117-4912-b770-3f726e91c4e5','users','users@gmail.com','$2y$10$jTWe4WKGC.X/iDh28WV9oeMburfQkVBBxIjFYCy8oIuHXtZ/ML0Vu','Users','Users',NULL,NULL,NULL,NULL,NULL,1,0,'user','2018-07-29 01:24:11','2018-07-29 01:24:11'),('8fda6f44-0e8a-4fcd-8abd-2223addc4ea5','namlt','namlt@protonmail.com','$2y$10$pQp4anfYS5NDkTUVzpGCN.Gy6MlWM/38jLsmF9zneYuo97BCXXFlG','Nam','Le','b6f06c9bf73d6484b405e9777b0ad6ec','2018-07-28 16:20:23',NULL,NULL,'2018-07-28 15:17:26',1,1,'admin','2018-07-28 15:17:26','2018-07-29 01:24:35'),('b6672cc6-93e8-42ef-ad1d-0f0d1f513cfc','scott','scott.moore@ghd.com','$2y$10$2Izlp4tO/4lzXkgx9h4h0OPimeV5hkpeZ8znYAlPCtGJxee5MuWM.','Scott','Moore',NULL,NULL,NULL,NULL,NULL,1,0,'user','2018-07-29 01:23:28','2018-07-29 01:23:28');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `work_packages`
--

DROP TABLE IF EXISTS `work_packages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `work_packages` (
  `id` char(36) NOT NULL,
  `number` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `wp_coordinator` varchar(255) DEFAULT NULL,
  `wp_qs` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `work_packages`
--

LOCK TABLES `work_packages` WRITE;
/*!40000 ALTER TABLE `work_packages` DISABLE KEYS */;
INSERT INTO `work_packages` VALUES ('513db1b1-4570-44f5-941c-f40bb86c44c9','3','WP3','',''),('76907c74-4dac-4a56-89be-49448d839ec0','2','WP2','',''),('b12507c3-2edc-4433-915f-d880583ebfac','4','WP4','',''),('df220366-8af8-46dd-838c-e2c805a5c34c','1','WP1','','');
/*!40000 ALTER TABLE `work_packages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'cocoms'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-08-06 21:54:08
