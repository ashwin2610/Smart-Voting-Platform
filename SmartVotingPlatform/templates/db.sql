-- MySQL dump 10.13  Distrib 8.0.13, for Linux (x86_64)
--
-- Host: localhost    Database: SmartVotingPlatform
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add candidate',7,'add_candidate'),(26,'Can change candidate',7,'change_candidate'),(27,'Can delete candidate',7,'delete_candidate'),(28,'Can view candidate',7,'view_candidate'),(29,'Can add election',8,'add_election'),(30,'Can change election',8,'change_election'),(31,'Can delete election',8,'delete_election'),(32,'Can view election',8,'view_election'),(33,'Can add party',9,'add_party'),(34,'Can change party',9,'change_party'),(35,'Can delete party',9,'delete_party'),(36,'Can view party',9,'view_party'),(37,'Can add voter',10,'add_voter'),(38,'Can change voter',10,'change_voter'),(39,'Can delete voter',10,'delete_voter'),(40,'Can view voter',10,'view_voter'),(41,'Can add party policies',11,'add_partypolicies'),(42,'Can change party policies',11,'change_partypolicies'),(43,'Can delete party policies',11,'delete_partypolicies'),(44,'Can view party policies',11,'view_partypolicies'),(45,'Can add completed task',12,'add_completedtask'),(46,'Can change completed task',12,'change_completedtask'),(47,'Can delete completed task',12,'delete_completedtask'),(48,'Can view completed task',12,'view_completedtask'),(49,'Can add task',13,'add_task'),(50,'Can change task',13,'change_task'),(51,'Can delete task',13,'delete_task'),(52,'Can view task',13,'view_task');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$120000$Et1HU4a7bKeG$V+OYc7nXnBMdKB6enbMjzqTf8NLGodyA2bZ9uPERlEo=','2018-10-28 08:07:55.383443',1,'rahul','','','rahulsnkr@gmail.com',1,1,'2018-10-20 19:12:33.267139'),(10,'pbkdf2_sha256$120000$fonWfPbefU4m$AvOeKo9pxoeDHK5XNwkrZwf2iLXEkcnRYMrljQvTitA=',NULL,0,'rahulsnkr7','Rahul','Sankar','rahulsnkr@gmail.com',0,1,'2018-10-21 11:11:03.052652'),(12,'pbkdf2_sha256$120000$XgVQbJsZRvO5$KfMvBRcYMtht+hoPU4IkFAwGzSiXcN/i4RFC6Cpi4eU=','2018-10-21 13:33:58.411929',0,'rahulsnkr1','Rahul','Sankar','rahulsnkr@gmail.com',0,1,'2018-10-21 13:33:57.576695'),(13,'pbkdf2_sha256$120000$oNhSPhAEorvZ$3dRzo+od0lBxfiBbclx0cgHvlEKZNwwdgiGujJ3Sg5E=','2018-10-21 15:09:32.235599',0,'LOL','LOL','LOL','LOL@lol.com',0,1,'2018-10-21 15:09:31.542447');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `background_task`
--

DROP TABLE IF EXISTS `background_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `background_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task_name` varchar(190) NOT NULL,
  `task_params` longtext NOT NULL,
  `task_hash` varchar(40) NOT NULL,
  `verbose_name` varchar(255) DEFAULT NULL,
  `priority` int(11) NOT NULL,
  `run_at` datetime(6) NOT NULL,
  `repeat` bigint(20) NOT NULL,
  `repeat_until` datetime(6) DEFAULT NULL,
  `queue` varchar(190) DEFAULT NULL,
  `attempts` int(11) NOT NULL,
  `failed_at` datetime(6) DEFAULT NULL,
  `last_error` longtext NOT NULL,
  `locked_by` varchar(64) DEFAULT NULL,
  `locked_at` datetime(6) DEFAULT NULL,
  `creator_object_id` int(10) unsigned DEFAULT NULL,
  `creator_content_type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `background_task_creator_content_type_61cc9af3_fk_django_co` (`creator_content_type_id`),
  KEY `background_task_task_name_4562d56a` (`task_name`),
  KEY `background_task_task_hash_d8f233bd` (`task_hash`),
  KEY `background_task_priority_88bdbce9` (`priority`),
  KEY `background_task_run_at_7baca3aa` (`run_at`),
  KEY `background_task_queue_1d5f3a40` (`queue`),
  KEY `background_task_attempts_a9ade23d` (`attempts`),
  KEY `background_task_failed_at_b81bba14` (`failed_at`),
  KEY `background_task_locked_by_db7779e3` (`locked_by`),
  KEY `background_task_locked_at_0fb0f225` (`locked_at`),
  CONSTRAINT `background_task_creator_content_type_61cc9af3_fk_django_co` FOREIGN KEY (`creator_content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `background_task`
--

LOCK TABLES `background_task` WRITE;
/*!40000 ALTER TABLE `background_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `background_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `background_task_completedtask`
--

DROP TABLE IF EXISTS `background_task_completedtask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `background_task_completedtask` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task_name` varchar(190) NOT NULL,
  `task_params` longtext NOT NULL,
  `task_hash` varchar(40) NOT NULL,
  `verbose_name` varchar(255) DEFAULT NULL,
  `priority` int(11) NOT NULL,
  `run_at` datetime(6) NOT NULL,
  `repeat` bigint(20) NOT NULL,
  `repeat_until` datetime(6) DEFAULT NULL,
  `queue` varchar(190) DEFAULT NULL,
  `attempts` int(11) NOT NULL,
  `failed_at` datetime(6) DEFAULT NULL,
  `last_error` longtext NOT NULL,
  `locked_by` varchar(64) DEFAULT NULL,
  `locked_at` datetime(6) DEFAULT NULL,
  `creator_object_id` int(10) unsigned DEFAULT NULL,
  `creator_content_type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `background_task_comp_creator_content_type_21d6a741_fk_django_co` (`creator_content_type_id`),
  KEY `background_task_completedtask_task_name_388dabc2` (`task_name`),
  KEY `background_task_completedtask_task_hash_91187576` (`task_hash`),
  KEY `background_task_completedtask_priority_9080692e` (`priority`),
  KEY `background_task_completedtask_run_at_77c80f34` (`run_at`),
  KEY `background_task_completedtask_queue_61fb0415` (`queue`),
  KEY `background_task_completedtask_attempts_772a6783` (`attempts`),
  KEY `background_task_completedtask_failed_at_3de56618` (`failed_at`),
  KEY `background_task_completedtask_locked_by_edc8a213` (`locked_by`),
  KEY `background_task_completedtask_locked_at_29c62708` (`locked_at`),
  CONSTRAINT `background_task_comp_creator_content_type_21d6a741_fk_django_co` FOREIGN KEY (`creator_content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `background_task_completedtask`
--

LOCK TABLES `background_task_completedtask` WRITE;
/*!40000 ALTER TABLE `background_task_completedtask` DISABLE KEYS */;
INSERT INTO `background_task_completedtask` VALUES (108,'simulation.views.background_votes','[[], {}]','c5dcfc3767eac497584485ed931278cacdfa4d46',NULL,0,'2018-10-28 10:03:44.374401',0,NULL,NULL,1,NULL,'','25630','2018-10-28 10:02:50.184597',NULL,NULL),(109,'simulation.views.background_votes','[[], {}]','c5dcfc3767eac497584485ed931278cacdfa4d46',NULL,0,'2018-10-28 10:05:26.529008',0,NULL,NULL,1,NULL,'','25822','2018-10-28 10:04:37.615613',NULL,NULL),(110,'simulation.views.background_votes','[[], {}]','c5dcfc3767eac497584485ed931278cacdfa4d46',NULL,0,'2018-10-28 10:07:04.052430',0,NULL,NULL,1,NULL,'','25630','2018-10-28 10:06:25.637228',NULL,NULL),(111,'simulation.views.background_votes','[[], {}]','c5dcfc3767eac497584485ed931278cacdfa4d46',NULL,0,'2018-10-28 14:01:47.642672',0,NULL,NULL,1,NULL,'','32236','2018-10-28 14:01:17.136648',NULL,NULL),(112,'simulation.views.background_votes','[[], {}]','c5dcfc3767eac497584485ed931278cacdfa4d46',NULL,0,'2018-10-28 14:03:55.864229',0,NULL,NULL,1,NULL,'','32236','2018-10-28 14:03:28.362528',NULL,NULL);
/*!40000 ALTER TABLE `background_task_completedtask` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidate`
--

DROP TABLE IF EXISTS `candidate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `candidate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` varchar(20) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `mid_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) NOT NULL,
  `num_of_votes` int(11) DEFAULT NULL,
  `location` varchar(50) NOT NULL,
  `election_id` int(11) DEFAULT NULL,
  `party_name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `candidate_party_name_340a4de0_fk_party_name` (`party_name`),
  KEY `candidate_election_id_fc7edcb4_fk` (`election_id`),
  CONSTRAINT `candidate_election_id_fc7edcb4_fk` FOREIGN KEY (`election_id`) REFERENCES `election` (`id`),
  CONSTRAINT `candidate_party_name_340a4de0_fk_party_name` FOREIGN KEY (`party_name`) REFERENCES `party` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate`
--

LOCK TABLES `candidate` WRITE;
/*!40000 ALTER TABLE `candidate` DISABLE KEYS */;
INSERT INTO `candidate` VALUES (1,'Minister','Amir',NULL,'Datta',79,'Uttar Pradesh',1,'Bharatiya Janata Party'),(2,'Minister','Darpan','Bhai','Sen',73,'Bihar',1,'Communist Party of India'),(3,'Minister','Monin',NULL,'Saini',75,'Gujarat',1,'Bahujan Samaj Party'),(4,'Minister','Mukund',NULL,'Mukhopadhyay',72,'West Bengal',1,'Indian National Congress'),(5,'Minister','Venkat',NULL,'Master',74,'Tamil Nadu',1,'Nationalist Congress Party');
/*!40000 ALTER TABLE `candidate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=281 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2018-10-21 11:18:32.581782','2','ashwin',3,'',4,1),(2,'2018-10-21 11:18:45.587043','3','rahulsnkr',3,'',4,1),(3,'2018-10-21 11:18:52.494607','4','rahulsnkr1',3,'',4,1),(4,'2018-10-21 11:18:56.965539','5','rahulsnkr2',3,'',4,1),(5,'2018-10-21 11:19:02.065068','6','rahulsnkr3',3,'',4,1),(6,'2018-10-21 11:19:06.874526','7','rahulsnkr4',3,'',4,1),(7,'2018-10-21 11:19:12.845901','8','rahulsnkr5',3,'',4,1),(8,'2018-10-21 11:19:18.499612','9','rahulsnkr6',3,'',4,1),(11,'2018-10-21 13:34:36.461544','11','rahulsnkr',3,'',4,1),(14,'2018-10-21 13:36:56.238516','12','rahulsnkr1',3,'',4,1),(15,'2018-10-21 13:36:56.849558','10','rahulsnkr7',3,'',4,1),(16,'2018-10-21 15:10:10.835481','13','LOL',3,'',4,1),(17,'2018-10-21 15:14:24.928693','13','LOL',3,'',4,1),(18,'2018-10-21 15:14:25.043411','12','rahulsnkr1',3,'',4,1),(19,'2018-10-21 15:14:25.122990','10','rahulsnkr7',3,'',4,1),(20,'2018-10-27 08:32:30.282291','All India Trinamool Congress','Party object (All India Trinamool Congress)',1,'[{\"added\": {}}]',9,1),(21,'2018-10-27 08:33:21.824348','Bahujan Samaj Party','Party object (Bahujan Samaj Party)',1,'[{\"added\": {}}]',9,1),(22,'2018-10-27 08:34:05.568971','Bharatiya Janata Party','Party object (Bharatiya Janata Party)',1,'[{\"added\": {}}]',9,1),(23,'2018-10-27 08:35:00.305383','Communist Party of India','Party object (Communist Party of India)',1,'[{\"added\": {}}]',9,1),(24,'2018-10-27 08:36:06.590027','Communist Party of India (M)','Party object (Communist Party of India (M))',1,'[{\"added\": {}}]',9,1),(25,'2018-10-27 08:36:39.790722','Indian National Congress','Party object (Indian National Congress)',1,'[{\"added\": {}}]',9,1),(26,'2018-10-27 08:37:04.610994','Nationalist Congress Party','Party object (Nationalist Congress Party)',1,'[{\"added\": {}}]',9,1),(27,'2018-10-27 08:37:54.497509','1','Election object (1)',1,'[{\"added\": {}}]',8,1),(28,'2018-10-27 08:40:01.511334','1','Candidate object (1)',1,'[{\"added\": {}}]',7,1),(29,'2018-10-27 08:40:46.449971','2','Candidate object (2)',1,'[{\"added\": {}}]',7,1),(30,'2018-10-27 08:41:17.855588','3','Candidate object (3)',1,'[{\"added\": {}}]',7,1),(31,'2018-10-27 08:42:34.408887','4','Candidate object (4)',1,'[{\"added\": {}}]',7,1),(32,'2018-10-27 08:43:16.037437','5','Candidate object (5)',1,'[{\"added\": {}}]',7,1),(33,'2018-10-27 08:43:49.270451','5','Candidate object (5)',2,'[{\"changed\": {\"fields\": [\"party_name\"]}}]',7,1),(34,'2018-10-27 09:12:40.363144','5','Candidate object (5)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(35,'2018-10-27 09:12:42.959373','5','Candidate object (5)',2,'[]',7,1),(36,'2018-10-27 09:12:47.740765','4','Candidate object (4)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(37,'2018-10-27 09:12:53.090881','3','Candidate object (3)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(38,'2018-10-27 09:13:00.126413','2','Candidate object (2)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(39,'2018-10-27 09:13:04.277914','1','Candidate object (1)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(40,'2018-10-27 18:32:36.256108','12','simulation.views.background_votes',3,'',13,1),(41,'2018-10-27 18:32:36.417996','11','simulation.views.background_votes',3,'',13,1),(42,'2018-10-27 18:32:36.531733','10','simulation.views.background_votes',3,'',13,1),(43,'2018-10-27 18:32:36.632885','9','simulation.views.background_votes',3,'',13,1),(44,'2018-10-27 18:32:36.724910','8','simulation.views.background_votes',3,'',13,1),(45,'2018-10-27 18:32:36.831977','7','simulation.views.background_votes',3,'',13,1),(46,'2018-10-27 18:32:36.922572','6','simulation.views.background_votes',3,'',13,1),(47,'2018-10-27 18:32:37.008952','5','simulation.views.background_votes',3,'',13,1),(48,'2018-10-27 18:32:37.094046','4','simulation.views.background_votes',3,'',13,1),(49,'2018-10-27 18:32:37.162646','3','simulation.views.background_votes',3,'',13,1),(50,'2018-10-27 18:32:37.259903','2','simulation.views.background_votes',3,'',13,1),(51,'2018-10-27 18:32:37.339640','1','simulation.views.background_votes',3,'',13,1),(52,'2018-10-27 18:36:42.209293','14','simulation.views.background_votes',3,'',13,1),(53,'2018-10-27 18:36:43.336915','13','simulation.views.background_votes',3,'',13,1),(54,'2018-10-27 18:44:52.299107','15','simulation.views.background_votes',3,'',13,1),(55,'2018-10-27 18:45:34.236153','16','simulation.views.background_votes',3,'',13,1),(56,'2018-10-27 18:46:42.261746','18','simulation.views.background_votes',3,'',13,1),(57,'2018-10-27 18:46:43.814762','17','simulation.views.background_votes',3,'',13,1),(58,'2018-10-27 18:48:08.994745','20','simulation.views.background_votes',3,'',13,1),(59,'2018-10-27 18:48:10.946713','19','simulation.views.background_votes',3,'',13,1),(60,'2018-10-27 18:48:28.274014','4','Candidate object (4)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(61,'2018-10-27 18:48:35.295660','3','Candidate object (3)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(62,'2018-10-27 18:48:42.858017','2','Candidate object (2)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(63,'2018-10-27 18:48:49.862698','1','Candidate object (1)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(64,'2018-10-27 18:54:34.846515','5','Candidate object (5)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(65,'2018-10-27 18:54:40.177836','4','Candidate object (4)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(66,'2018-10-27 18:54:44.512546','3','Candidate object (3)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(67,'2018-10-27 18:54:49.382463','2','Candidate object (2)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(68,'2018-10-27 18:54:53.847804','1','Candidate object (1)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(69,'2018-10-27 18:55:53.906097','23','simulation.views.background_votes',3,'',13,1),(70,'2018-10-27 18:55:54.869551','22','simulation.views.background_votes',3,'',13,1),(71,'2018-10-27 18:57:54.225252','5','Candidate object (5)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(72,'2018-10-27 18:57:59.803926','4','Candidate object (4)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(73,'2018-10-27 18:58:04.973971','3','Candidate object (3)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(74,'2018-10-27 18:58:09.701929','2','Candidate object (2)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(75,'2018-10-27 18:58:15.664489','1','Candidate object (1)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(76,'2018-10-27 19:02:53.744691','25','simulation.views.background_votes',3,'',13,1),(77,'2018-10-27 19:03:07.329956','5','Candidate object (5)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(78,'2018-10-27 19:03:11.406439','4','Candidate object (4)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(79,'2018-10-27 19:03:17.024834','3','Candidate object (3)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(80,'2018-10-27 19:03:21.141459','2','Candidate object (2)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(81,'2018-10-27 19:03:26.151384','1','Candidate object (1)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(82,'2018-10-27 19:26:04.961842','31','simulation.views.background_votes',3,'',13,1),(83,'2018-10-27 19:27:42.622983','8','simulation.views.background_votes - 2018-10-27 19:26:48.952567+00:00',3,'',12,1),(84,'2018-10-27 19:27:42.804032','7','simulation.views.background_votes - 2018-10-27 19:24:33.330490+00:00',3,'',12,1),(85,'2018-10-27 19:27:42.916640','6','simulation.views.background_votes - 2018-10-27 19:06:29.768498+00:00',3,'',12,1),(86,'2018-10-27 19:27:43.020455','5','simulation.views.background_votes - 2018-10-27 19:06:20.851533+00:00',3,'',12,1),(87,'2018-10-27 19:27:43.135832','4','simulation.views.background_votes - 2018-10-27 19:04:54.871585+00:00',3,'',12,1),(88,'2018-10-27 19:27:43.225013','3','simulation.views.background_votes - 2018-10-27 19:04:17.664096+00:00',3,'',12,1),(89,'2018-10-27 19:27:43.332357','2','simulation.views.background_votes - 2018-10-27 18:57:25.923077+00:00',3,'',12,1),(90,'2018-10-27 19:27:43.440480','1','simulation.views.background_votes - 2018-10-27 18:50:29.216702+00:00',3,'',12,1),(91,'2018-10-27 19:31:33.947457','1','Candidate object (1)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(92,'2018-10-27 19:33:17.655749','5','Candidate object (5)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(93,'2018-10-27 19:33:22.939886','4','Candidate object (4)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(94,'2018-10-27 19:33:29.297881','3','Candidate object (3)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(95,'2018-10-27 19:33:33.265204','3','Candidate object (3)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(96,'2018-10-27 19:33:42.417102','2','Candidate object (2)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(97,'2018-10-27 19:33:50.704899','1','Candidate object (1)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(98,'2018-10-27 20:16:36.546366','5','Candidate object (5)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(99,'2018-10-27 20:16:41.006018','4','Candidate object (4)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(100,'2018-10-27 20:16:45.972667','3','Candidate object (3)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(101,'2018-10-27 20:16:50.156296','2','Candidate object (2)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(102,'2018-10-27 20:16:54.090145','1','Candidate object (1)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(103,'2018-10-27 20:19:01.033667','5','Candidate object (5)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(104,'2018-10-27 20:19:07.355394','4','Candidate object (4)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(105,'2018-10-27 20:19:15.570970','3','Candidate object (3)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(106,'2018-10-27 20:19:20.757994','2','Candidate object (2)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(107,'2018-10-27 20:19:26.900070','1','Candidate object (1)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(108,'2018-10-27 20:27:03.241786','5','Candidate object (5)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(109,'2018-10-27 20:27:14.236541','4','Candidate object (4)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(110,'2018-10-27 20:27:19.240432','3','Candidate object (3)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(111,'2018-10-27 20:27:25.198590','2','Candidate object (2)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(112,'2018-10-27 20:27:30.363636','1','Candidate object (1)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(113,'2018-10-27 20:29:00.008131','5','Candidate object (5)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(114,'2018-10-27 20:29:05.319587','4','Candidate object (4)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(115,'2018-10-27 20:29:09.964387','3','Candidate object (3)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(116,'2018-10-27 20:29:15.026559','2','Candidate object (2)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(117,'2018-10-27 20:29:18.959621','1','Candidate object (1)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(118,'2018-10-27 20:32:44.420762','5','Candidate object (5)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(119,'2018-10-27 20:32:53.385008','4','Candidate object (4)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(120,'2018-10-27 20:32:59.107212','3','Candidate object (3)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(121,'2018-10-27 20:33:04.469226','2','Candidate object (2)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(122,'2018-10-27 20:33:10.047763','1','Candidate object (1)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(123,'2018-10-27 20:34:29.738360','5','Candidate object (5)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(124,'2018-10-27 20:34:34.554669','4','Candidate object (4)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(125,'2018-10-27 20:34:40.102637','3','Candidate object (3)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(126,'2018-10-27 20:34:44.187572','2','Candidate object (2)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(127,'2018-10-27 20:34:48.953553','1','Candidate object (1)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(128,'2018-10-27 20:36:00.989288','5','Candidate object (5)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(129,'2018-10-27 20:36:08.713624','4','Candidate object (4)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(130,'2018-10-27 20:36:16.427923','3','Candidate object (3)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(131,'2018-10-27 20:36:24.747147','2','Candidate object (2)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(132,'2018-10-27 20:36:31.534557','1','Candidate object (1)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(133,'2018-10-27 21:40:42.056721','5','Candidate object (5)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(134,'2018-10-27 21:40:48.199990','4','Candidate object (4)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(135,'2018-10-27 21:40:53.804742','3','Candidate object (3)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(136,'2018-10-27 21:41:00.442339','2','Candidate object (2)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(137,'2018-10-27 21:41:05.833271','1','Candidate object (1)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(138,'2018-10-27 23:38:40.237036','5','Candidate object (5)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(139,'2018-10-27 23:38:45.851718','4','Candidate object (4)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(140,'2018-10-27 23:38:50.597517','3','Candidate object (3)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(141,'2018-10-27 23:38:55.057620','2','Candidate object (2)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(142,'2018-10-27 23:39:01.116816','1','Candidate object (1)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(143,'2018-10-27 23:39:20.431220','77','simulation.views.background_votes',3,'',13,1),(144,'2018-10-27 23:39:21.780250','76','simulation.views.background_votes',3,'',13,1),(145,'2018-10-27 23:39:22.776146','75','simulation.views.background_votes',3,'',13,1),(146,'2018-10-27 23:39:23.549122','74','simulation.views.background_votes',3,'',13,1),(147,'2018-10-27 23:39:24.320759','73','simulation.views.background_votes',3,'',13,1),(148,'2018-10-27 23:39:24.741263','72','simulation.views.background_votes',3,'',13,1),(149,'2018-10-27 23:39:24.832304','70','simulation.views.background_votes',3,'',13,1),(150,'2018-10-27 23:39:24.934557','69','simulation.views.background_votes',3,'',13,1),(151,'2018-10-27 23:39:25.037532','68','simulation.views.background_votes',3,'',13,1),(152,'2018-10-27 23:39:25.117074','67','simulation.views.background_votes',3,'',13,1),(153,'2018-10-27 23:39:25.271808','66','simulation.views.background_votes',3,'',13,1),(154,'2018-10-27 23:39:25.362068','64','simulation.views.background_votes',3,'',13,1),(155,'2018-10-27 23:39:25.430455','63','simulation.views.background_votes',3,'',13,1),(156,'2018-10-27 23:39:25.540304','60','simulation.views.background_votes',3,'',13,1),(157,'2018-10-27 23:39:25.618673','59','simulation.views.background_votes',3,'',13,1),(158,'2018-10-27 23:39:38.007467','38','simulation.views.background_votes - 2018-10-27 23:37:44.097459+00:00',3,'',12,1),(159,'2018-10-27 23:39:38.587716','37','simulation.views.background_votes - 2018-10-27 23:12:14.646634+00:00',3,'',12,1),(160,'2018-10-27 23:39:38.690903','36','simulation.views.background_votes - 2018-10-27 23:11:39.136155+00:00',3,'',12,1),(161,'2018-10-27 23:39:38.781006','35','simulation.views.background_votes - 2018-10-27 23:10:37.299393+00:00',3,'',12,1),(162,'2018-10-27 23:39:38.849659','34','simulation.views.background_votes - 2018-10-27 21:45:05.536745+00:00',3,'',12,1),(163,'2018-10-27 23:39:38.935509','33','simulation.views.background_votes - 2018-10-27 21:41:58.268506+00:00',3,'',12,1),(164,'2018-10-27 23:39:39.020757','32','simulation.views.background_votes - 2018-10-27 21:39:36.719935+00:00',3,'',12,1),(165,'2018-10-27 23:39:39.107297','31','simulation.views.background_votes - 2018-10-27 21:10:01.329329+00:00',3,'',12,1),(166,'2018-10-27 23:39:39.175932','30','simulation.views.background_votes - 2018-10-27 21:08:32.589681+00:00',3,'',12,1),(167,'2018-10-27 23:39:39.255595','29','simulation.views.background_votes - 2018-10-27 21:05:39.189160+00:00',3,'',12,1),(168,'2018-10-27 23:39:39.616687','28','simulation.views.background_votes - 2018-10-27 20:53:50.090721+00:00',3,'',12,1),(169,'2018-10-27 23:39:39.737837','27','simulation.views.background_votes - 2018-10-27 20:48:45.629794+00:00',3,'',12,1),(170,'2018-10-27 23:39:39.817409','26','simulation.views.background_votes - 2018-10-27 20:46:09.998721+00:00',3,'',12,1),(171,'2018-10-27 23:39:39.885457','25','simulation.views.background_votes - 2018-10-27 20:44:41.995207+00:00',3,'',12,1),(172,'2018-10-27 23:39:39.989109','24','simulation.views.background_votes - 2018-10-27 20:43:24.573001+00:00',3,'',12,1),(173,'2018-10-27 23:39:40.091073','23','simulation.views.background_votes - 2018-10-27 20:42:28.642586+00:00',3,'',12,1),(174,'2018-10-27 23:39:40.171449','22','simulation.views.background_votes - 2018-10-27 20:41:10.873221+00:00',3,'',12,1),(175,'2018-10-27 23:39:40.256920','21','simulation.views.background_votes - 2018-10-27 20:40:10.189750+00:00',3,'',12,1),(176,'2018-10-27 23:39:40.327233','20','simulation.views.background_votes - 2018-10-27 20:35:46.322592+00:00',3,'',12,1),(177,'2018-10-27 23:39:40.406975','19','simulation.views.background_votes - 2018-10-27 20:34:15.023722+00:00',3,'',12,1),(178,'2018-10-27 23:39:40.473607','18','simulation.views.background_votes - 2018-10-27 20:31:56.835581+00:00',3,'',12,1),(179,'2018-10-27 23:39:40.576935','17','simulation.views.background_votes - 2018-10-27 20:28:39.361958+00:00',3,'',12,1),(180,'2018-10-27 23:39:40.679773','16','simulation.views.background_votes - 2018-10-27 20:26:31.066425+00:00',3,'',12,1),(181,'2018-10-27 23:39:40.759090','15','simulation.views.background_votes - 2018-10-27 20:26:18.736365+00:00',3,'',12,1),(182,'2018-10-27 23:39:40.828002','14','simulation.views.background_votes - 2018-10-27 20:18:15.255826+00:00',3,'',12,1),(183,'2018-10-27 23:39:40.935817','13','simulation.views.background_votes - 2018-10-27 20:16:12.224800+00:00',3,'',12,1),(184,'2018-10-27 23:39:41.015331','12','simulation.views.background_votes - 2018-10-27 19:59:37.981351+00:00',3,'',12,1),(185,'2018-10-27 23:39:41.095328','11','simulation.views.background_votes - 2018-10-27 19:59:37.798543+00:00',3,'',12,1),(186,'2018-10-27 23:39:41.174468','10','simulation.views.background_votes - 2018-10-27 19:32:28.787030+00:00',3,'',12,1),(187,'2018-10-27 23:39:41.278640','9','simulation.views.background_votes - 2018-10-27 19:28:43.100633+00:00',3,'',12,1),(188,'2018-10-28 08:08:09.252651','95','simulation.views.background_votes',3,'',13,1),(189,'2018-10-28 08:08:10.682148','88','simulation.views.background_votes',3,'',13,1),(190,'2018-10-28 08:08:11.016497','87','simulation.views.background_votes',3,'',13,1),(191,'2018-10-28 08:08:11.102768','86','simulation.views.background_votes',3,'',13,1),(192,'2018-10-28 08:08:11.171386','85','simulation.views.background_votes',3,'',13,1),(193,'2018-10-28 08:08:20.716696','51','simulation.views.background_votes - 2018-10-28 08:01:29.956242+00:00',3,'',12,1),(194,'2018-10-28 08:08:20.841020','50','simulation.views.background_votes - 2018-10-28 08:00:49.491731+00:00',3,'',12,1),(195,'2018-10-28 08:08:20.926932','49','simulation.views.background_votes - 2018-10-28 08:00:32.159119+00:00',3,'',12,1),(196,'2018-10-28 08:08:21.012506','48','simulation.views.background_votes - 2018-10-28 08:00:16.764417+00:00',3,'',12,1),(197,'2018-10-28 08:08:23.457975','47','simulation.views.background_votes - 2018-10-28 07:58:55.755959+00:00',3,'',12,1),(198,'2018-10-28 08:08:24.927597','46','simulation.views.background_votes - 2018-10-28 07:57:50.364075+00:00',3,'',12,1),(199,'2018-10-28 08:08:25.894699','45','simulation.views.background_votes - 2018-10-28 07:49:23.075208+00:00',3,'',12,1),(200,'2018-10-28 08:08:26.065981','44','simulation.views.background_votes - 2018-10-28 07:36:46.153174+00:00',3,'',12,1),(201,'2018-10-28 08:08:26.464615','43','simulation.views.background_votes - 2018-10-28 07:31:06.839057+00:00',3,'',12,1),(202,'2018-10-28 08:08:26.577438','42','simulation.views.background_votes - 2018-10-28 07:29:39.406669+00:00',3,'',12,1),(203,'2018-10-28 08:08:26.675815','41','simulation.views.background_votes - 2018-10-28 07:28:25.232698+00:00',3,'',12,1),(204,'2018-10-28 08:08:26.754619','40','simulation.views.background_votes - 2018-10-28 07:09:48.108617+00:00',3,'',12,1),(205,'2018-10-28 08:08:26.841657','39','simulation.views.background_votes - 2018-10-27 23:41:26.710844+00:00',3,'',12,1),(206,'2018-10-28 08:08:38.414270','5','Candidate object (5)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(207,'2018-10-28 08:08:44.348645','4','Candidate object (4)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(208,'2018-10-28 08:08:50.169509','3','Candidate object (3)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(209,'2018-10-28 08:08:57.820052','2','Candidate object (2)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(210,'2018-10-28 08:09:04.431376','1','Candidate object (1)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(211,'2018-10-28 08:20:25.314852','104','simulation.views.background_votes',3,'',13,1),(212,'2018-10-28 08:20:39.881926','59','simulation.views.background_votes - 2018-10-28 08:19:27.084130+00:00',3,'',12,1),(213,'2018-10-28 08:20:40.946310','58','simulation.views.background_votes - 2018-10-28 08:19:11.821920+00:00',3,'',12,1),(214,'2018-10-28 08:20:41.101839','57','simulation.views.background_votes - 2018-10-28 08:18:43.584077+00:00',3,'',12,1),(215,'2018-10-28 08:20:41.204292','56','simulation.views.background_votes - 2018-10-28 08:17:00.261473+00:00',3,'',12,1),(216,'2018-10-28 08:20:41.284397','55','simulation.views.background_votes - 2018-10-28 08:15:45.875568+00:00',3,'',12,1),(217,'2018-10-28 08:20:41.369453','54','simulation.views.background_votes - 2018-10-28 08:14:27.556009+00:00',3,'',12,1),(218,'2018-10-28 08:20:41.448947','53','simulation.views.background_votes - 2018-10-28 08:13:31.107196+00:00',3,'',12,1),(219,'2018-10-28 08:20:41.552396','52','simulation.views.background_votes - 2018-10-28 08:11:30.897083+00:00',3,'',12,1),(220,'2018-10-28 08:20:51.293346','5','Candidate object (5)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(221,'2018-10-28 08:20:58.302379','4','Candidate object (4)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(222,'2018-10-28 08:21:09.542141','3','Candidate object (3)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(223,'2018-10-28 08:21:14.169725','2','Candidate object (2)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(224,'2018-10-28 08:21:22.389627','1','Candidate object (1)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(225,'2018-10-28 10:02:15.834320','154','simulation.views.background_votes',3,'',13,1),(226,'2018-10-28 10:02:16.173643','146','simulation.views.background_votes',3,'',13,1),(227,'2018-10-28 10:02:27.403288','107','simulation.views.background_votes - 2018-10-28 10:01:00.111929+00:00',3,'',12,1),(228,'2018-10-28 10:02:27.632871','106','simulation.views.background_votes - 2018-10-28 09:59:38.910318+00:00',3,'',12,1),(229,'2018-10-28 10:02:27.712437','105','simulation.views.background_votes - 2018-10-28 09:54:41.319350+00:00',3,'',12,1),(230,'2018-10-28 10:02:27.781307','104','simulation.views.background_votes - 2018-10-28 09:52:45.147384+00:00',3,'',12,1),(231,'2018-10-28 10:02:27.884206','103','simulation.views.background_votes - 2018-10-28 09:52:38.779804+00:00',3,'',12,1),(232,'2018-10-28 10:02:27.963737','102','simulation.views.background_votes - 2018-10-28 09:52:34.025081+00:00',3,'',12,1),(233,'2018-10-28 10:02:28.049561','101','simulation.views.background_votes - 2018-10-28 09:52:32.815558+00:00',3,'',12,1),(234,'2018-10-28 10:02:28.118589','100','simulation.views.background_votes - 2018-10-28 09:22:35.248117+00:00',3,'',12,1),(235,'2018-10-28 10:02:28.221356','99','simulation.views.background_votes - 2018-10-28 09:21:50.806908+00:00',3,'',12,1),(236,'2018-10-28 10:02:28.300887','98','simulation.views.background_votes - 2018-10-28 09:20:11.665172+00:00',3,'',12,1),(237,'2018-10-28 10:02:28.369328','97','simulation.views.background_votes - 2018-10-28 09:18:33.117755+00:00',3,'',12,1),(238,'2018-10-28 10:02:28.472281','96','simulation.views.background_votes - 2018-10-28 09:18:05.243591+00:00',3,'',12,1),(239,'2018-10-28 10:02:28.558324','95','simulation.views.background_votes - 2018-10-28 09:17:35.764334+00:00',3,'',12,1),(240,'2018-10-28 10:02:28.637992','94','simulation.views.background_votes - 2018-10-28 09:15:35.300987+00:00',3,'',12,1),(241,'2018-10-28 10:02:28.724145','93','simulation.views.background_votes - 2018-10-28 09:15:09.431833+00:00',3,'',12,1),(242,'2018-10-28 10:02:28.809414','92','simulation.views.background_votes - 2018-10-28 09:14:19.586591+00:00',3,'',12,1),(243,'2018-10-28 10:02:29.254446','91','simulation.views.background_votes - 2018-10-28 09:13:57.639875+00:00',3,'',12,1),(244,'2018-10-28 10:02:29.378054','90','simulation.views.background_votes - 2018-10-28 09:13:34.821216+00:00',3,'',12,1),(245,'2018-10-28 10:02:29.458488','89','simulation.views.background_votes - 2018-10-28 09:10:45.032862+00:00',3,'',12,1),(246,'2018-10-28 10:02:29.595353','88','simulation.views.background_votes - 2018-10-28 09:09:37.455176+00:00',3,'',12,1),(247,'2018-10-28 10:02:29.675950','87','simulation.views.background_votes - 2018-10-28 09:09:17.898497+00:00',3,'',12,1),(248,'2018-10-28 10:02:29.760660','86','simulation.views.background_votes - 2018-10-28 09:04:03.544742+00:00',3,'',12,1),(249,'2018-10-28 10:02:29.829232','85','simulation.views.background_votes - 2018-10-28 09:02:25.865295+00:00',3,'',12,1),(250,'2018-10-28 10:02:29.915351','84','simulation.views.background_votes - 2018-10-28 09:01:51.707507+00:00',3,'',12,1),(251,'2018-10-28 10:02:29.984504','83','simulation.views.background_votes - 2018-10-28 08:57:15.720919+00:00',3,'',12,1),(252,'2018-10-28 10:02:30.086757','82','simulation.views.background_votes - 2018-10-28 08:56:46.248824+00:00',3,'',12,1),(253,'2018-10-28 10:02:30.185393','81','simulation.views.background_votes - 2018-10-28 08:53:46.084121+00:00',3,'',12,1),(254,'2018-10-28 10:02:30.289671','80','simulation.views.background_votes - 2018-10-28 08:48:58.993619+00:00',3,'',12,1),(255,'2018-10-28 10:02:30.405159','79','simulation.views.background_votes - 2018-10-28 08:48:36.532609+00:00',3,'',12,1),(256,'2018-10-28 10:02:30.605343','78','simulation.views.background_votes - 2018-10-28 08:47:30.161987+00:00',3,'',12,1),(257,'2018-10-28 10:02:30.720116','77','simulation.views.background_votes - 2018-10-28 08:45:51.666099+00:00',3,'',12,1),(258,'2018-10-28 10:02:30.824248','76','simulation.views.background_votes - 2018-10-28 08:45:36.342430+00:00',3,'',12,1),(259,'2018-10-28 10:02:30.946137','75','simulation.views.background_votes - 2018-10-28 08:45:06.721495+00:00',3,'',12,1),(260,'2018-10-28 10:02:31.061395','74','simulation.views.background_votes - 2018-10-28 08:43:33.035616+00:00',3,'',12,1),(261,'2018-10-28 10:02:31.183406','73','simulation.views.background_votes - 2018-10-28 08:43:03.202348+00:00',3,'',12,1),(262,'2018-10-28 10:02:31.298423','72','simulation.views.background_votes - 2018-10-28 08:42:00.926505+00:00',3,'',12,1),(263,'2018-10-28 10:02:31.420772','71','simulation.views.background_votes - 2018-10-28 08:41:18.737389+00:00',3,'',12,1),(264,'2018-10-28 10:02:31.606396','70','simulation.views.background_votes - 2018-10-28 08:40:33.779101+00:00',3,'',12,1),(265,'2018-10-28 10:02:31.732782','69','simulation.views.background_votes - 2018-10-28 08:40:01.142039+00:00',3,'',12,1),(266,'2018-10-28 10:02:31.848097','68','simulation.views.background_votes - 2018-10-28 08:39:41.612102+00:00',3,'',12,1),(267,'2018-10-28 10:02:32.261381','67','simulation.views.background_votes - 2018-10-28 08:38:36.427836+00:00',3,'',12,1),(268,'2018-10-28 10:02:32.365109','66','simulation.views.background_votes - 2018-10-28 08:36:30.827872+00:00',3,'',12,1),(269,'2018-10-28 10:02:32.527449','65','simulation.views.background_votes - 2018-10-28 08:34:38.746023+00:00',3,'',12,1),(270,'2018-10-28 10:02:32.700960','64','simulation.views.background_votes - 2018-10-28 08:31:53.020397+00:00',3,'',12,1),(271,'2018-10-28 10:02:32.828344','63','simulation.views.background_votes - 2018-10-28 08:30:13.649269+00:00',3,'',12,1),(272,'2018-10-28 10:02:32.944720','62','simulation.views.background_votes - 2018-10-28 08:25:50.120926+00:00',3,'',12,1),(273,'2018-10-28 10:02:33.065473','61','simulation.views.background_votes - 2018-10-28 08:24:41.863354+00:00',3,'',12,1),(274,'2018-10-28 10:02:33.169469','60','simulation.views.background_votes - 2018-10-28 08:22:46.277651+00:00',3,'',12,1),(275,'2018-10-28 14:02:10.117226','5','Candidate object (5)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(276,'2018-10-28 14:02:16.001395','4','Candidate object (4)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(277,'2018-10-28 14:02:21.058683','3','Candidate object (3)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(278,'2018-10-28 14:02:26.516741','2','Candidate object (2)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(279,'2018-10-28 14:02:26.667466','2','Candidate object (2)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1),(280,'2018-10-28 14:02:30.906255','1','Candidate object (1)',2,'[{\"changed\": {\"fields\": [\"num_of_votes\"]}}]',7,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(12,'background_task','completedtask'),(13,'background_task','task'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(7,'user_details','candidate'),(8,'user_details','election'),(9,'user_details','party'),(11,'user_details','partypolicies'),(10,'user_details','voter');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2018-10-20 19:04:24.528417'),(2,'auth','0001_initial','2018-10-20 19:05:01.942696'),(3,'admin','0001_initial','2018-10-20 19:05:10.481007'),(4,'admin','0002_logentry_remove_auto_add','2018-10-20 19:05:10.764352'),(5,'admin','0003_logentry_add_action_flag_choices','2018-10-20 19:05:10.988447'),(6,'contenttypes','0002_remove_content_type_name','2018-10-20 19:05:20.023626'),(7,'auth','0002_alter_permission_name_max_length','2018-10-20 19:05:23.840540'),(8,'auth','0003_alter_user_email_max_length','2018-10-20 19:05:28.526982'),(9,'auth','0004_alter_user_username_opts','2018-10-20 19:05:28.760463'),(10,'auth','0005_alter_user_last_login_null','2018-10-20 19:05:32.836963'),(11,'auth','0006_require_contenttypes_0002','2018-10-20 19:05:33.531172'),(12,'auth','0007_alter_validators_add_error_messages','2018-10-20 19:05:35.196240'),(13,'auth','0008_alter_user_username_max_length','2018-10-20 19:05:43.708317'),(14,'auth','0009_alter_user_last_name_max_length','2018-10-20 19:05:56.737518'),(15,'sessions','0001_initial','2018-10-20 19:05:59.603028'),(16,'user_details','0001_initial','2018-10-20 19:05:59.925336'),(17,'user_details','0002_auto_20181020_1916','2018-10-20 19:16:39.960822'),(18,'user_details','0003_auto_20181020_1920','2018-10-20 19:23:24.878520'),(19,'user_details','0004_auto_20181020_1923','2018-10-20 19:23:25.729711'),(20,'user_details','0005_auto_20181020_1923','2018-10-20 19:24:46.986149'),(21,'user_details','0006_auto_20181020_1928','2018-10-20 19:29:08.312517'),(22,'user_details','0002_auto_20181020_1944','2018-10-20 19:44:18.120774'),(23,'user_details','0003_auto_20181020_1944','2018-10-20 19:46:22.204660'),(24,'user_details','0004_auto_20181020_1946','2018-10-20 19:46:22.852648'),(25,'user_details','0005_auto_20181020_1946','2018-10-20 19:47:26.437575'),(26,'user_details','0006_auto_20181020_1947','2018-10-20 19:47:26.852551'),(27,'user_details','0007_auto_20181020_1947','2018-10-20 19:48:14.418669'),(28,'user_details','0008_remove_voter_birth_date','2018-10-20 19:48:14.556071'),(29,'user_details','0009_voter_birth_date','2018-10-20 19:49:26.063123'),(30,'user_details','0010_remove_voter_birth_date','2018-10-20 19:49:26.404783'),(31,'user_details','0011_remove_voter_email','2018-10-20 19:51:08.805012'),(32,'user_details','0012_auto_20181020_1951','2018-10-20 19:53:07.417176'),(33,'user_details','0002_auto_20181020_1955','2018-10-20 19:55:45.662526'),(34,'user_details','0002_auto_20181020_1958','2018-10-20 19:58:20.443622'),(35,'user_details','0002_auto_20181020_2001','2018-10-20 20:01:52.507181'),(36,'user_details','0003_auto_20181020_2002','2018-10-20 20:02:11.091268'),(37,'user_details','0004_auto_20181021_1106','2018-10-21 11:06:59.579912'),(38,'user_details','0005_auto_20181021_1109','2018-10-21 11:09:17.764239'),(39,'user_details','0006_remove_voter_password','2018-10-21 11:10:14.033892'),(40,'user_details','0007_auto_20181021_1114','2018-10-21 11:14:20.203919'),(41,'background_task','0001_initial','2018-10-27 17:24:02.870827'),(42,'background_task','0002_auto_20170927_1109','2018-10-27 17:24:39.894270');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('3g6tjf34a9nhryjledeynahlxd7h1h5f','NDdlMTEwNzBmMjFjYjNjYWFjNmRkMjY1OTdiYzFhNDJkNTJlMTA1ZTp7fQ==','2018-11-04 11:14:43.561676'),('dbghr1ukd5dfob0wxlhepd28j8yt4rz3','NDdlMTEwNzBmMjFjYjNjYWFjNmRkMjY1OTdiYzFhNDJkNTJlMTA1ZTp7fQ==','2018-11-04 06:18:03.225745'),('ikokk9akj0oc7emtu1xf4c8bf4xhhusb','NDdlMTEwNzBmMjFjYjNjYWFjNmRkMjY1OTdiYzFhNDJkNTJlMTA1ZTp7fQ==','2018-11-04 06:11:02.263181'),('iwdlaucpdccqprwe48kv3dvhhy4d7bgr','NDdlMTEwNzBmMjFjYjNjYWFjNmRkMjY1OTdiYzFhNDJkNTJlMTA1ZTp7fQ==','2018-11-04 06:35:53.133337'),('nwcoclfntumc4nzxtn1hccyl8gmauydv','NDdlMTEwNzBmMjFjYjNjYWFjNmRkMjY1OTdiYzFhNDJkNTJlMTA1ZTp7fQ==','2018-11-04 10:22:03.112210'),('qv4wfm2jlk2lt0cp1tdbnoqjjvb6qal5','NDdlMTEwNzBmMjFjYjNjYWFjNmRkMjY1OTdiYzFhNDJkNTJlMTA1ZTp7fQ==','2018-11-04 06:21:30.418067'),('syoutoauvmzwmonmtouzzc7p192dc7lh','MGFhYTZjMGM0NTk3YTE4ZTEyZWFmYzZhMTZlMzk4MGNkNDEwMWMxYTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlMmNlZWIwMDllOTc1ZjBmYzFhYjRkMWY2YjJjNTg3Y2ZhOTgzMGExIn0=','2018-11-05 08:54:05.832359'),('z0qa3t80uahy4ci42v5hvmq10mkqemhr','NDdlMTEwNzBmMjFjYjNjYWFjNmRkMjY1OTdiYzFhNDJkNTJlMTA1ZTp7fQ==','2018-11-04 06:19:20.972237');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `election`
--

DROP TABLE IF EXISTS `election`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `election` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `result` varchar(50) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `election`
--

LOCK TABLES `election` WRITE;
/*!40000 ALTER TABLE `election` DISABLE KEYS */;
INSERT INTO `election` VALUES (1,'NA','2018-10-26','2018-10-30');
/*!40000 ALTER TABLE `election` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `party`
--

DROP TABLE IF EXISTS `party`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `party` (
  `name` varchar(30) NOT NULL,
  `location` varchar(50) NOT NULL,
  `num_members` int(11) NOT NULL,
  `party_head_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `party_party_head_id_26b754db_fk` (`party_head_id`),
  CONSTRAINT `party_party_head_id_26b754db_fk` FOREIGN KEY (`party_head_id`) REFERENCES `candidate` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `party`
--

LOCK TABLES `party` WRITE;
/*!40000 ALTER TABLE `party` DISABLE KEYS */;
INSERT INTO `party` VALUES ('All India Trinamool Congress','National',530,NULL),('Bahujan Samaj Party','National',530,NULL),('Bharatiya Janata Party','National',530,NULL),('Communist Party of India','National',530,NULL),('Communist Party of India (M)','National',530,NULL),('Indian National Congress','National',530,NULL),('Nationalist Congress Party','National',530,NULL);
/*!40000 ALTER TABLE `party` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `party_policies`
--

DROP TABLE IF EXISTS `party_policies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `party_policies` (
  `policies` varchar(100) NOT NULL,
  `party_name` varchar(30) NOT NULL,
  PRIMARY KEY (`party_name`),
  CONSTRAINT `party_policies_party_name_c1f50963_fk_party_name` FOREIGN KEY (`party_name`) REFERENCES `party` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `party_policies`
--

LOCK TABLES `party_policies` WRITE;
/*!40000 ALTER TABLE `party_policies` DISABLE KEYS */;
/*!40000 ALTER TABLE `party_policies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voter`
--

DROP TABLE IF EXISTS `voter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `voter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mid_name` varchar(20) DEFAULT NULL,
  `voted` int(11) DEFAULT NULL,
  `gender` varchar(1) NOT NULL,
  `location` varchar(30) NOT NULL,
  `election_id` int(11) DEFAULT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `username` int(11) NOT NULL,
  `birth_date` date NOT NULL,
  `email` varchar(254) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `voter_election_id_bc22b5c2_fk` (`election_id`),
  CONSTRAINT `voter_election_id_bc22b5c2_fk` FOREIGN KEY (`election_id`) REFERENCES `election` (`id`),
  CONSTRAINT `voter_username_039161a9_fk_auth_user_id` FOREIGN KEY (`username`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voter`
--

LOCK TABLES `voter` WRITE;
/*!40000 ALTER TABLE `voter` DISABLE KEYS */;
INSERT INTO `voter` VALUES (1,NULL,NULL,'','',NULL,'','',10,'2018-10-21','test@example.com'),(2,NULL,NULL,'','',NULL,'','',12,'2018-10-21','test@example.com'),(3,NULL,NULL,'','',NULL,'','',13,'2018-10-21','test@example.com');
/*!40000 ALTER TABLE `voter` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-28 19:52:43
