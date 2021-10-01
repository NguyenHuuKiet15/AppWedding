-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: weddingapp
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add user',6,'add_user'),(22,'Can change user',6,'change_user'),(23,'Can delete user',6,'delete_user'),(24,'Can view user',6,'view_user'),(25,'Can add comment',7,'add_comment'),(26,'Can change comment',7,'change_comment'),(27,'Can delete comment',7,'delete_comment'),(28,'Can view comment',7,'view_comment'),(29,'Can add food',8,'add_food'),(30,'Can change food',8,'change_food'),(31,'Can delete food',8,'delete_food'),(32,'Can view food',8,'view_food'),(33,'Can add bank account',9,'add_bankaccount'),(34,'Can change bank account',9,'change_bankaccount'),(35,'Can delete bank account',9,'delete_bankaccount'),(36,'Can view bank account',9,'view_bankaccount'),(37,'Can add wedding halls',10,'add_weddinghalls'),(38,'Can change wedding halls',10,'change_weddinghalls'),(39,'Can delete wedding halls',10,'delete_weddinghalls'),(40,'Can view wedding halls',10,'view_weddinghalls'),(41,'Can add shift',11,'add_shift'),(42,'Can change shift',11,'change_shift'),(43,'Can delete shift',11,'delete_shift'),(44,'Can view shift',11,'view_shift'),(45,'Can add system',12,'add_system'),(46,'Can change system',12,'change_system'),(47,'Can delete system',12,'delete_system'),(48,'Can view system',12,'view_system'),(49,'Can add menu',13,'add_menu'),(50,'Can change menu',13,'change_menu'),(51,'Can delete menu',13,'delete_menu'),(52,'Can view menu',13,'view_menu'),(53,'Can add service',14,'add_service'),(54,'Can change service',14,'change_service'),(55,'Can delete service',14,'delete_service'),(56,'Can view service',14,'view_service'),(57,'Can add wedding',15,'add_wedding'),(58,'Can change wedding',15,'change_wedding'),(59,'Can delete wedding',15,'delete_wedding'),(60,'Can view wedding',15,'view_wedding'),(61,'Can add application',16,'add_application'),(62,'Can change application',16,'change_application'),(63,'Can delete application',16,'delete_application'),(64,'Can view application',16,'view_application'),(65,'Can add access token',17,'add_accesstoken'),(66,'Can change access token',17,'change_accesstoken'),(67,'Can delete access token',17,'delete_accesstoken'),(68,'Can view access token',17,'view_accesstoken'),(69,'Can add grant',18,'add_grant'),(70,'Can change grant',18,'change_grant'),(71,'Can delete grant',18,'delete_grant'),(72,'Can view grant',18,'view_grant'),(73,'Can add refresh token',19,'add_refreshtoken'),(74,'Can change refresh token',19,'change_refreshtoken'),(75,'Can delete refresh token',19,'delete_refreshtoken'),(76,'Can view refresh token',19,'view_refreshtoken'),(77,'Can add id token',20,'add_idtoken'),(78,'Can change id token',20,'change_idtoken'),(79,'Can delete id token',20,'delete_idtoken'),(80,'Can view id token',20,'view_idtoken');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8_unicode_ci,
  `object_repr` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext COLLATE utf8_unicode_ci NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_wedding_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_wedding_user_id` FOREIGN KEY (`user_id`) REFERENCES `wedding_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2021-09-30 14:24:23.189037','1','ƯFVA',1,'[{\"added\": {}}]',12,1),(2,'2021-09-30 14:24:34.913459','2','ƯEGER',1,'[{\"added\": {}}]',10,1),(3,'2021-09-30 14:44:10.419557','1','tets',1,'[{\"added\": {}}]',7,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(17,'oauth2_provider','accesstoken'),(16,'oauth2_provider','application'),(18,'oauth2_provider','grant'),(20,'oauth2_provider','idtoken'),(19,'oauth2_provider','refreshtoken'),(5,'sessions','session'),(9,'wedding','bankaccount'),(7,'wedding','comment'),(8,'wedding','food'),(13,'wedding','menu'),(14,'wedding','service'),(11,'wedding','shift'),(12,'wedding','system'),(6,'wedding','user'),(15,'wedding','wedding'),(10,'wedding','weddinghalls');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-09-30 13:55:06.069041'),(2,'contenttypes','0002_remove_content_type_name','2021-09-30 13:55:06.194038'),(3,'auth','0001_initial','2021-09-30 13:55:06.850268'),(4,'auth','0002_alter_permission_name_max_length','2021-09-30 13:55:06.939683'),(5,'auth','0003_alter_user_email_max_length','2021-09-30 13:55:06.951518'),(6,'auth','0004_alter_user_username_opts','2021-09-30 13:55:06.963790'),(7,'auth','0005_alter_user_last_login_null','2021-09-30 13:55:06.973470'),(8,'auth','0006_require_contenttypes_0002','2021-09-30 13:55:06.979687'),(9,'auth','0007_alter_validators_add_error_messages','2021-09-30 13:55:06.991904'),(10,'auth','0008_alter_user_username_max_length','2021-09-30 13:55:07.002893'),(11,'auth','0009_alter_user_last_name_max_length','2021-09-30 13:55:07.008118'),(12,'auth','0010_alter_group_name_max_length','2021-09-30 13:55:07.101871'),(13,'auth','0011_update_proxy_permissions','2021-09-30 13:55:07.117496'),(14,'auth','0012_alter_user_first_name_max_length','2021-09-30 13:55:07.133116'),(15,'wedding','0001_initial','2021-09-30 13:55:07.773720'),(16,'admin','0001_initial','2021-09-30 13:55:08.029752'),(17,'admin','0002_logentry_remove_auto_add','2021-09-30 13:55:08.045380'),(18,'admin','0003_logentry_add_action_flag_choices','2021-09-30 13:55:08.061002'),(19,'sessions','0001_initial','2021-09-30 13:55:08.123500'),(20,'wedding','0002_bankaccount_comment_food_menu_service_shift_system_wedding_weddinghalls','2021-09-30 13:58:54.745158'),(21,'oauth2_provider','0001_initial','2021-09-30 15:00:38.382397'),(22,'oauth2_provider','0002_auto_20190406_1805','2021-09-30 15:00:38.569688'),(23,'oauth2_provider','0003_auto_20201211_1314','2021-09-30 15:00:38.703897'),(24,'oauth2_provider','0004_auto_20200902_2022','2021-09-30 15:00:39.753932');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('zd3ko3h0fnnubo8e2qrhp9xh62ec2i4v','.eJxVjEEOwiAQRe_C2hAGOhVcuvcMzTAMUjUlKe3KeHdD0oVu_3vvv9VE-1amvck6zUldFKjT7xaJn7J0kB603KvmumzrHHVX9EGbvtUkr-vh_h0UaqXXNGLIcAZM7EaLYIaEwQT2OQwIwC7IGEXYZofeZsieAeLgDaHPZNXnC80cN3g:1mVxT7:ExXQ-VAciz0-tvFPGfzfvLSYM8v9AhD-H4x66wjcv10','2021-10-14 14:55:29.116342');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_accesstoken`
--

DROP TABLE IF EXISTS `oauth2_provider_accesstoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth2_provider_accesstoken` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expires` datetime(6) NOT NULL,
  `scope` longtext COLLATE utf8_unicode_ci NOT NULL,
  `application_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `source_refresh_token_id` bigint DEFAULT NULL,
  `id_token_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `token` (`token`),
  UNIQUE KEY `source_refresh_token_id` (`source_refresh_token_id`),
  UNIQUE KEY `id_token_id` (`id_token_id`),
  KEY `oauth2_provider_acce_application_id_b22886e1_fk_oauth2_pr` (`application_id`),
  KEY `oauth2_provider_accesstoken_user_id_6e4c9a65_fk_wedding_user_id` (`user_id`),
  CONSTRAINT `oauth2_provider_acce_application_id_b22886e1_fk_oauth2_pr` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`),
  CONSTRAINT `oauth2_provider_acce_id_token_id_85db651b_fk_oauth2_pr` FOREIGN KEY (`id_token_id`) REFERENCES `oauth2_provider_idtoken` (`id`),
  CONSTRAINT `oauth2_provider_acce_source_refresh_token_e66fbc72_fk_oauth2_pr` FOREIGN KEY (`source_refresh_token_id`) REFERENCES `oauth2_provider_refreshtoken` (`id`),
  CONSTRAINT `oauth2_provider_accesstoken_user_id_6e4c9a65_fk_wedding_user_id` FOREIGN KEY (`user_id`) REFERENCES `wedding_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_accesstoken`
--

LOCK TABLES `oauth2_provider_accesstoken` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_accesstoken` DISABLE KEYS */;
INSERT INTO `oauth2_provider_accesstoken` VALUES (1,'89XYE2q9oApjadGtal1ED1mf0HpmuU','2021-10-01 01:07:09.576232','read write',1,1,'2021-09-30 15:07:09.578230','2021-09-30 15:07:09.578230',NULL,NULL),(2,'ZVdhll7deoH44PkhylZUEFWRqoaPTk','2021-10-01 22:42:36.533311','read write',1,1,'2021-10-01 12:42:36.541308','2021-10-01 12:42:36.541308',NULL,NULL),(3,'Ip0KsaLfDGaZgcZ0W38R7S0CxdC2bf','2021-10-01 23:05:27.186389','read write',1,1,'2021-10-01 13:05:27.187397','2021-10-01 13:05:27.187397',NULL,NULL);
/*!40000 ALTER TABLE `oauth2_provider_accesstoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_application`
--

DROP TABLE IF EXISTS `oauth2_provider_application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth2_provider_application` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `client_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `redirect_uris` longtext COLLATE utf8_unicode_ci NOT NULL,
  `client_type` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `authorization_grant_type` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `client_secret` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `skip_authorization` tinyint(1) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `algorithm` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `client_id` (`client_id`),
  KEY `oauth2_provider_application_user_id_79829054_fk_wedding_user_id` (`user_id`),
  KEY `oauth2_provider_application_client_secret_53133678` (`client_secret`),
  CONSTRAINT `oauth2_provider_application_user_id_79829054_fk_wedding_user_id` FOREIGN KEY (`user_id`) REFERENCES `wedding_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_application`
--

LOCK TABLES `oauth2_provider_application` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_application` DISABLE KEYS */;
INSERT INTO `oauth2_provider_application` VALUES (1,'HgTmfMKxi7DVfdAwXmaTsUxXdkvAMgZ3UCmQShZi','','confidential','password','WfTM1TxkRvkFbaXzzseqIBcsX6LtLazLzKVC8bg9uzcdaurNqw0pOkyCaXjJtrnzQn6v0YaiJk82cRNDVpl10ldJKanimuxLOrlSZh1H8NH038pQbxOc1bzxQOSF82DK','WeddingAppKP',1,0,'2021-09-30 15:02:03.783875','2021-09-30 15:02:03.783875','');
/*!40000 ALTER TABLE `oauth2_provider_application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_grant`
--

DROP TABLE IF EXISTS `oauth2_provider_grant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth2_provider_grant` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expires` datetime(6) NOT NULL,
  `redirect_uri` longtext COLLATE utf8_unicode_ci NOT NULL,
  `scope` longtext COLLATE utf8_unicode_ci NOT NULL,
  `application_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `code_challenge` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `code_challenge_method` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `nonce` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `claims` longtext COLLATE utf8_unicode_ci NOT NULL DEFAULT (_utf8mb3''),
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `oauth2_provider_gran_application_id_81923564_fk_oauth2_pr` (`application_id`),
  KEY `oauth2_provider_grant_user_id_e8f62af8_fk_wedding_user_id` (`user_id`),
  CONSTRAINT `oauth2_provider_gran_application_id_81923564_fk_oauth2_pr` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`),
  CONSTRAINT `oauth2_provider_grant_user_id_e8f62af8_fk_wedding_user_id` FOREIGN KEY (`user_id`) REFERENCES `wedding_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_grant`
--

LOCK TABLES `oauth2_provider_grant` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_grant` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth2_provider_grant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_idtoken`
--

DROP TABLE IF EXISTS `oauth2_provider_idtoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth2_provider_idtoken` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `jti` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `expires` datetime(6) NOT NULL,
  `scope` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `application_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `jti` (`jti`),
  KEY `oauth2_provider_idto_application_id_08c5ff4f_fk_oauth2_pr` (`application_id`),
  KEY `oauth2_provider_idtoken_user_id_dd512b59_fk_wedding_user_id` (`user_id`),
  CONSTRAINT `oauth2_provider_idto_application_id_08c5ff4f_fk_oauth2_pr` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`),
  CONSTRAINT `oauth2_provider_idtoken_user_id_dd512b59_fk_wedding_user_id` FOREIGN KEY (`user_id`) REFERENCES `wedding_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_idtoken`
--

LOCK TABLES `oauth2_provider_idtoken` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_idtoken` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth2_provider_idtoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_refreshtoken`
--

DROP TABLE IF EXISTS `oauth2_provider_refreshtoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth2_provider_refreshtoken` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `access_token_id` bigint DEFAULT NULL,
  `application_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `revoked` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `access_token_id` (`access_token_id`),
  UNIQUE KEY `oauth2_provider_refreshtoken_token_revoked_af8a5134_uniq` (`token`,`revoked`),
  KEY `oauth2_provider_refr_application_id_2d1c311b_fk_oauth2_pr` (`application_id`),
  KEY `oauth2_provider_refreshtoken_user_id_da837fce_fk_wedding_user_id` (`user_id`),
  CONSTRAINT `oauth2_provider_refr_access_token_id_775e84e8_fk_oauth2_pr` FOREIGN KEY (`access_token_id`) REFERENCES `oauth2_provider_accesstoken` (`id`),
  CONSTRAINT `oauth2_provider_refr_application_id_2d1c311b_fk_oauth2_pr` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`),
  CONSTRAINT `oauth2_provider_refreshtoken_user_id_da837fce_fk_wedding_user_id` FOREIGN KEY (`user_id`) REFERENCES `wedding_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_refreshtoken`
--

LOCK TABLES `oauth2_provider_refreshtoken` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_refreshtoken` DISABLE KEYS */;
INSERT INTO `oauth2_provider_refreshtoken` VALUES (1,'zrZEV6HvDbXobpSbrDn708XabDa31p',1,1,1,'2021-09-30 15:07:09.635532','2021-09-30 15:07:09.635532',NULL),(2,'BVoc4Zes7QyxlRiK9oYod0vSbm2WGE',2,1,1,'2021-10-01 12:42:36.725287','2021-10-01 12:42:36.725287',NULL),(3,'Z9jRlPGIzGq07Ad0elLPlD2juEXonz',3,1,1,'2021-10-01 13:05:27.298425','2021-10-01 13:05:27.298425',NULL);
/*!40000 ALTER TABLE `oauth2_provider_refreshtoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wedding_bankaccount`
--

DROP TABLE IF EXISTS `wedding_bankaccount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wedding_bankaccount` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `number` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `surplus` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wedding_bankaccount`
--

LOCK TABLES `wedding_bankaccount` WRITE;
/*!40000 ALTER TABLE `wedding_bankaccount` DISABLE KEYS */;
/*!40000 ALTER TABLE `wedding_bankaccount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wedding_comment`
--

DROP TABLE IF EXISTS `wedding_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wedding_comment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `updated_date` datetime(6) NOT NULL,
  `creator_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wedding_comment_creator_id_f58db97d_fk_wedding_user_id` (`creator_id`),
  CONSTRAINT `wedding_comment_creator_id_f58db97d_fk_wedding_user_id` FOREIGN KEY (`creator_id`) REFERENCES `wedding_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wedding_comment`
--

LOCK TABLES `wedding_comment` WRITE;
/*!40000 ALTER TABLE `wedding_comment` DISABLE KEYS */;
INSERT INTO `wedding_comment` VALUES (1,'tets','2021-09-30 14:44:10.412561','2021-09-30 14:44:10.413562',1);
/*!40000 ALTER TABLE `wedding_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wedding_food`
--

DROP TABLE IF EXISTS `wedding_food`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wedding_food` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `updated_date` datetime(6) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `menu_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `wedding_food_menu_id_7187dfc6_fk_wedding_menu_id` (`menu_id`),
  CONSTRAINT `wedding_food_menu_id_7187dfc6_fk_wedding_menu_id` FOREIGN KEY (`menu_id`) REFERENCES `wedding_menu` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wedding_food`
--

LOCK TABLES `wedding_food` WRITE;
/*!40000 ALTER TABLE `wedding_food` DISABLE KEYS */;
/*!40000 ALTER TABLE `wedding_food` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wedding_menu`
--

DROP TABLE IF EXISTS `wedding_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wedding_menu` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `updated_date` datetime(6) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `system_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `wedding_menu_system_id_9e8280e8_fk_wedding_system_id` (`system_id`),
  CONSTRAINT `wedding_menu_system_id_9e8280e8_fk_wedding_system_id` FOREIGN KEY (`system_id`) REFERENCES `wedding_system` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wedding_menu`
--

LOCK TABLES `wedding_menu` WRITE;
/*!40000 ALTER TABLE `wedding_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `wedding_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wedding_service`
--

DROP TABLE IF EXISTS `wedding_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wedding_service` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `updated_date` datetime(6) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `system_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `wedding_service_system_id_be8c1dec_fk_wedding_system_id` (`system_id`),
  CONSTRAINT `wedding_service_system_id_be8c1dec_fk_wedding_system_id` FOREIGN KEY (`system_id`) REFERENCES `wedding_system` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wedding_service`
--

LOCK TABLES `wedding_service` WRITE;
/*!40000 ALTER TABLE `wedding_service` DISABLE KEYS */;
/*!40000 ALTER TABLE `wedding_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wedding_shift`
--

DROP TABLE IF EXISTS `wedding_shift`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wedding_shift` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `updated_date` datetime(6) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `price` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wedding_shift`
--

LOCK TABLES `wedding_shift` WRITE;
/*!40000 ALTER TABLE `wedding_shift` DISABLE KEYS */;
/*!40000 ALTER TABLE `wedding_shift` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wedding_system`
--

DROP TABLE IF EXISTS `wedding_system`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wedding_system` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wedding_system`
--

LOCK TABLES `wedding_system` WRITE;
/*!40000 ALTER TABLE `wedding_system` DISABLE KEYS */;
INSERT INTO `wedding_system` VALUES (1,'ƯFVA');
/*!40000 ALTER TABLE `wedding_system` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wedding_user`
--

DROP TABLE IF EXISTS `wedding_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wedding_user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `avatar` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wedding_user`
--

LOCK TABLES `wedding_user` WRITE;
/*!40000 ALTER TABLE `wedding_user` DISABLE KEYS */;
INSERT INTO `wedding_user` VALUES (1,'pbkdf2_sha256$260000$vUBGxmrW4E9mKSQ4EIJf2H$59rY3hIgxV+jcdQvXy4r1i/LldUV6WCGlhU/C5xLluo=','2021-09-30 14:55:29.106756',1,'admin','','','huukiet21@gmail.com',1,1,'2021-09-30 14:04:16.504466',''),(2,'pbkdf2_sha256$260000$u45O4M9MN168OtzsVa3lL3$QOmaoz8QTwMKTS2H5YMGkA8Pg37K5vpFrYNLdqQBpBk=',NULL,0,'HK','Kiet','Nguyen','huukiet21@gmail.com',0,1,'2021-10-01 11:59:27.102486','uploads/2021/10/tải_xuống.jpg'),(3,'pbkdf2_sha256$260000$9RZXo04bYtFRPrAuHS8WOd$ocn7F4+yMGbZKtV/i8jDujCSbEJzRu4kM5ulEVX7+tU=',NULL,0,'PL','Lê','Quốc Phát','abasfidsfk@gmail.com',0,1,'2021-10-01 13:06:21.428708','uploads/2021/10/menu1.jpg');
/*!40000 ALTER TABLE `wedding_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wedding_user_groups`
--

DROP TABLE IF EXISTS `wedding_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wedding_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wedding_user_groups_user_id_group_id_d2f991b2_uniq` (`user_id`,`group_id`),
  KEY `wedding_user_groups_group_id_8316c968_fk_auth_group_id` (`group_id`),
  CONSTRAINT `wedding_user_groups_group_id_8316c968_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `wedding_user_groups_user_id_d177c0f9_fk_wedding_user_id` FOREIGN KEY (`user_id`) REFERENCES `wedding_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wedding_user_groups`
--

LOCK TABLES `wedding_user_groups` WRITE;
/*!40000 ALTER TABLE `wedding_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `wedding_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wedding_user_user_permissions`
--

DROP TABLE IF EXISTS `wedding_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wedding_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wedding_user_user_permis_user_id_permission_id_1047e857_uniq` (`user_id`,`permission_id`),
  KEY `wedding_user_user_pe_permission_id_8943d6f7_fk_auth_perm` (`permission_id`),
  CONSTRAINT `wedding_user_user_pe_permission_id_8943d6f7_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `wedding_user_user_pe_user_id_f9f97f68_fk_wedding_u` FOREIGN KEY (`user_id`) REFERENCES `wedding_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wedding_user_user_permissions`
--

LOCK TABLES `wedding_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `wedding_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `wedding_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wedding_wedding`
--

DROP TABLE IF EXISTS `wedding_wedding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wedding_wedding` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `updated_date` datetime(6) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `organization_date` date NOT NULL,
  `menu_id` bigint DEFAULT NULL,
  `shift_id` bigint DEFAULT NULL,
  `stk_id` bigint DEFAULT NULL,
  `wedding_hall_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `wedding_wedding_name_wedding_hall_id_ad44c305_uniq` (`name`,`wedding_hall_id`),
  KEY `wedding_wedding_menu_id_e89d7b49_fk_wedding_menu_id` (`menu_id`),
  KEY `wedding_wedding_shift_id_782ed4b7_fk_wedding_shift_id` (`shift_id`),
  KEY `wedding_wedding_stk_id_67d17628_fk_wedding_bankaccount_id` (`stk_id`),
  KEY `wedding_wedding_wedding_hall_id_7d94c416_fk_wedding_w` (`wedding_hall_id`),
  CONSTRAINT `wedding_wedding_menu_id_e89d7b49_fk_wedding_menu_id` FOREIGN KEY (`menu_id`) REFERENCES `wedding_menu` (`id`),
  CONSTRAINT `wedding_wedding_shift_id_782ed4b7_fk_wedding_shift_id` FOREIGN KEY (`shift_id`) REFERENCES `wedding_shift` (`id`),
  CONSTRAINT `wedding_wedding_stk_id_67d17628_fk_wedding_bankaccount_id` FOREIGN KEY (`stk_id`) REFERENCES `wedding_bankaccount` (`id`),
  CONSTRAINT `wedding_wedding_wedding_hall_id_7d94c416_fk_wedding_w` FOREIGN KEY (`wedding_hall_id`) REFERENCES `wedding_weddinghalls` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wedding_wedding`
--

LOCK TABLES `wedding_wedding` WRITE;
/*!40000 ALTER TABLE `wedding_wedding` DISABLE KEYS */;
/*!40000 ALTER TABLE `wedding_wedding` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wedding_wedding_service`
--

DROP TABLE IF EXISTS `wedding_wedding_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wedding_wedding_service` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `wedding_id` bigint NOT NULL,
  `service_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wedding_wedding_service_wedding_id_service_id_618db4ca_uniq` (`wedding_id`,`service_id`),
  KEY `wedding_wedding_serv_service_id_00d22bdf_fk_wedding_s` (`service_id`),
  CONSTRAINT `wedding_wedding_serv_service_id_00d22bdf_fk_wedding_s` FOREIGN KEY (`service_id`) REFERENCES `wedding_service` (`id`),
  CONSTRAINT `wedding_wedding_serv_wedding_id_6d6ec61e_fk_wedding_w` FOREIGN KEY (`wedding_id`) REFERENCES `wedding_wedding` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wedding_wedding_service`
--

LOCK TABLES `wedding_wedding_service` WRITE;
/*!40000 ALTER TABLE `wedding_wedding_service` DISABLE KEYS */;
/*!40000 ALTER TABLE `wedding_wedding_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wedding_weddinghalls`
--

DROP TABLE IF EXISTS `wedding_weddinghalls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wedding_weddinghalls` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `updated_date` datetime(6) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `system_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `wedding_weddinghalls_system_id_5e28fc49_fk_wedding_system_id` (`system_id`),
  CONSTRAINT `wedding_weddinghalls_system_id_5e28fc49_fk_wedding_system_id` FOREIGN KEY (`system_id`) REFERENCES `wedding_system` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wedding_weddinghalls`
--

LOCK TABLES `wedding_weddinghalls` WRITE;
/*!40000 ALTER TABLE `wedding_weddinghalls` DISABLE KEYS */;
INSERT INTO `wedding_weddinghalls` VALUES (1,'test','2021-09-30 14:01:38.868901','2021-09-30 14:01:38.868901',1,'','',NULL),(2,'ƯEGER','2021-09-30 14:24:34.906458','2021-09-30 14:24:34.906458',1,'wedding-hall/2021/09/4-837.jpg','ƯEQGRWG',1);
/*!40000 ALTER TABLE `wedding_weddinghalls` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-01 20:08:54
