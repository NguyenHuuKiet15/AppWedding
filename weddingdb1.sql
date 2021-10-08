-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: weddingapp
-- ------------------------------------------------------
-- Server version	8.0.22

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
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
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
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
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
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_wedding_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_wedding_user_id` FOREIGN KEY (`user_id`) REFERENCES `wedding_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2021-09-30 14:24:23.189037','1','ƯFVA',1,'[{\"added\": {}}]',12,1),(2,'2021-09-30 14:24:34.913459','2','ƯEGER',1,'[{\"added\": {}}]',10,1),(3,'2021-09-30 14:44:10.419557','1','tets',1,'[{\"added\": {}}]',7,1),(4,'2021-10-03 07:32:32.699937','2','tuyệt vời',1,'[{\"added\": {}}]',7,1),(5,'2021-10-03 07:32:48.105833','3','quá tệ',1,'[{\"added\": {}}]',7,1),(6,'2021-10-03 07:40:32.313032','1','ƯFVA',3,'',12,1),(7,'2021-10-03 07:41:17.879597','2','Home page',1,'[{\"added\": {}}]',12,1),(8,'2021-10-03 07:43:11.451424','2','Home page',3,'',12,1),(9,'2021-10-03 07:43:21.686649','3','Banquet hall',1,'[{\"added\": {}}]',12,1),(10,'2021-10-03 07:43:36.841282','4','Menu',1,'[{\"added\": {}}]',12,1),(11,'2021-10-03 07:43:55.087103','5','Service',1,'[{\"added\": {}}]',12,1),(12,'2021-10-03 07:44:41.062460','6','Recruitment',1,'[{\"added\": {}}]',12,1),(13,'2021-10-03 07:45:12.684974','1','Menu1',1,'[{\"added\": {}}]',13,1),(14,'2021-10-03 07:45:39.459289','2','Menu2',1,'[{\"added\": {}}]',13,1),(15,'2021-10-03 07:46:06.615407','1','food1',1,'[{\"added\": {}}]',8,1),(16,'2021-10-03 07:46:26.033792','2','food2',1,'[{\"added\": {}}]',8,1),(17,'2021-10-03 07:46:48.239459','3','food3',1,'[{\"added\": {}}]',8,1),(18,'2021-10-03 12:20:51.954636','1','sảnh 1',2,'[{\"changed\": {\"fields\": [\"Name\", \"Image\", \"Description\", \"System\"]}}]',10,1),(19,'2021-10-03 12:21:13.761330','2','sảnh 2',2,'[{\"changed\": {\"fields\": [\"Name\", \"Image\", \"Description\", \"System\"]}}]',10,1),(20,'2021-10-03 12:21:36.935593','3','sảnh 3',1,'[{\"added\": {}}]',10,1),(21,'2021-10-03 12:22:48.957723','1','Bàn trang trí',1,'[{\"added\": {}}]',14,1),(22,'2021-10-03 12:23:24.385851','2','Cổng chào',1,'[{\"added\": {}}]',14,1),(23,'2021-10-03 12:23:50.123626','3','Ca nhạc',1,'[{\"added\": {}}]',14,1),(24,'2021-10-03 12:24:21.371924','1','Ca sáng',1,'[{\"added\": {}}]',11,1),(25,'2021-10-03 12:24:34.907874','2','Ca trưa',1,'[{\"added\": {}}]',11,1),(26,'2021-10-03 12:24:48.439330','3','Ca tối',1,'[{\"added\": {}}]',11,1),(27,'2021-10-03 12:32:39.557835','1','123',1,'[{\"added\": {}}]',9,1),(28,'2021-10-03 12:32:54.599325','2','1234',1,'[{\"added\": {}}]',9,1),(29,'2021-10-03 12:43:38.620146','1','Phát Lê',1,'[{\"added\": {}}]',15,1),(30,'2021-10-03 12:44:15.756216','2','Nguyễn Kiệt',1,'[{\"added\": {}}]',15,1),(31,'2021-10-04 13:58:38.056125','3','sảnh 3',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',10,1),(32,'2021-10-04 14:37:15.265928','3','456',1,'[{\"added\": {}}]',9,1),(33,'2021-10-04 15:58:27.479121','11','cũng đc',3,'',7,1),(34,'2021-10-04 15:58:27.662645','9','cũng ok',3,'',7,1),(35,'2021-10-04 15:58:27.693460','8','sdsad',3,'',7,1),(36,'2021-10-04 15:58:27.725058','7','lại xem',3,'',7,1),(37,'2021-10-04 15:58:27.756959','5','123',3,'',7,1),(38,'2021-10-04 15:58:40.959955','6','test repa',3,'',7,1),(39,'2021-10-04 15:58:41.023909','4','ok chưa',3,'',7,1),(40,'2021-10-04 15:58:41.065618','3','quá tệ',3,'',7,1),(41,'2021-10-05 03:38:16.657371','7','chart',1,'[{\"added\": {}}]',12,1),(42,'2021-10-05 03:38:25.772049','7','Chart',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',12,1),(43,'2021-10-06 07:46:40.217755','3','PL',2,'[]',6,1),(44,'2021-10-06 08:08:36.850651','3','PL',2,'[]',6,1),(45,'2021-10-06 08:25:25.628746','3','PL',2,'[]',6,1),(46,'2021-10-07 09:59:42.392741','3','PL',2,'[{\"changed\": {\"fields\": [\"Avatar\"]}}]',6,1),(47,'2021-10-07 10:00:00.857416','2','HK',2,'[{\"changed\": {\"fields\": [\"Avatar\"]}}]',6,1),(48,'2021-10-07 10:00:41.590983','1','admin',2,'[{\"changed\": {\"fields\": [\"Avatar\"]}}]',6,1),(49,'2021-10-07 13:24:35.490164','2','food2',2,'[]',8,1),(50,'2021-10-08 03:20:01.303736','12','GK',3,'',6,1),(51,'2021-10-08 03:20:01.372497','11','GD',3,'',6,1),(52,'2021-10-08 03:20:01.446302','10','sa',3,'',6,1),(53,'2021-10-08 03:20:01.485164','9','TA',3,'',6,1),(54,'2021-10-08 03:20:01.542012','8','LQ',3,'',6,1),(55,'2021-10-08 03:20:01.633798','7','TT',3,'',6,1),(56,'2021-10-08 03:20:01.671667','6','lk',3,'',6,1),(57,'2021-10-08 13:17:20.716872','29','121',3,'',7,1),(58,'2021-10-08 13:17:20.792669','28','fine thnaks2',3,'',7,1),(59,'2021-10-08 13:17:20.828834','27','fine thanks',3,'',7,1),(60,'2021-10-08 13:17:20.860976','26','2016',3,'',7,1),(61,'2021-10-08 13:17:20.890971','25','2010',3,'',7,1),(62,'2021-10-08 13:17:20.921958','24','2005',3,'',7,1),(63,'2021-10-08 13:17:20.952825','23','1597',3,'',7,1),(64,'2021-10-08 13:17:20.988080','22','1956',3,'',7,1),(65,'2021-10-08 13:17:21.032204','21','456',3,'',7,1),(66,'2021-10-08 13:17:21.062050','20','1956',3,'',7,1),(67,'2021-10-08 13:17:21.093399','19','1527',3,'',7,1),(68,'2021-10-08 13:17:21.122876','18','23456',3,'',7,1),(69,'2021-10-08 13:17:21.152126','17','2345',3,'',7,1),(70,'2021-10-08 13:17:21.182671','16','234',3,'',7,1),(71,'2021-10-08 13:17:21.213044','15','123',3,'',7,1),(72,'2021-10-08 13:17:21.242838','14','test loadd',3,'',7,1),(73,'2021-10-08 13:17:21.274060','13','test loadd',3,'',7,1),(74,'2021-10-08 13:17:21.304386','12','thử load',3,'',7,1);
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
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
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
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
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
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('3ltlurks8nocgwrud8465ce71ok0nwj9','.eJxVjEEOwiAQRe_C2hAGOhVcuvcMzTAMUjUlKe3KeHdD0oVu_3vvv9VE-1amvck6zUldFKjT7xaJn7J0kB603KvmumzrHHVX9EGbvtUkr-vh_h0UaqXXNGLIcAZM7EaLYIaEwQT2OQwIwC7IGEXYZofeZsieAeLgDaHPZNXnC80cN3g:1mXO1P:snvsf6xNNUi_DyvI-ZhFe6jdMQFGFG15NX-JlPhg4N0','2021-10-18 13:28:47.297155'),('h5bd2cyrg9nbxl0x7w8u0fhmbxmz6pm8','.eJxVjEEOwiAQRe_C2hAGOhVcuvcMzTAMUjUlKe3KeHdD0oVu_3vvv9VE-1amvck6zUldFKjT7xaJn7J0kB603KvmumzrHHVX9EGbvtUkr-vh_h0UaqXXNGLIcAZM7EaLYIaEwQT2OQwIwC7IGEXYZofeZsieAeLgDaHPZNXnC80cN3g:1mWvUa:xMMMhG1Qi9W29fMlH2gVFkeASc5jIxZugV3CojFSlMY','2021-10-17 07:01:00.679861'),('zd3ko3h0fnnubo8e2qrhp9xh62ec2i4v','.eJxVjEEOwiAQRe_C2hAGOhVcuvcMzTAMUjUlKe3KeHdD0oVu_3vvv9VE-1amvck6zUldFKjT7xaJn7J0kB603KvmumzrHHVX9EGbvtUkr-vh_h0UaqXXNGLIcAZM7EaLYIaEwQT2OQwIwC7IGEXYZofeZsieAeLgDaHPZNXnC80cN3g:1mVxT7:ExXQ-VAciz0-tvFPGfzfvLSYM8v9AhD-H4x66wjcv10','2021-10-14 14:55:29.116342');
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
  `token` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `expires` datetime(6) NOT NULL,
  `scope` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_accesstoken`
--

LOCK TABLES `oauth2_provider_accesstoken` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_accesstoken` DISABLE KEYS */;
INSERT INTO `oauth2_provider_accesstoken` VALUES (1,'89XYE2q9oApjadGtal1ED1mf0HpmuU','2021-10-01 01:07:09.576232','read write',1,1,'2021-09-30 15:07:09.578230','2021-09-30 15:07:09.578230',NULL,NULL),(2,'ZVdhll7deoH44PkhylZUEFWRqoaPTk','2021-10-01 22:42:36.533311','read write',1,1,'2021-10-01 12:42:36.541308','2021-10-01 12:42:36.541308',NULL,NULL),(3,'Ip0KsaLfDGaZgcZ0W38R7S0CxdC2bf','2021-10-01 23:05:27.186389','read write',1,1,'2021-10-01 13:05:27.187397','2021-10-01 13:05:27.187397',NULL,NULL),(4,'exP67kUrde25tM4VDQJDjUE0Vr65jw','2021-10-03 19:14:19.562284','read write',1,1,'2021-10-03 09:14:19.563196','2021-10-03 09:14:19.563196',NULL,NULL),(5,'GWtsm9CX6dZd6OAamoewRX4sCf4urS','2021-10-03 20:37:51.663742','read write',1,1,'2021-10-03 10:37:51.663742','2021-10-03 10:37:51.663742',NULL,NULL),(6,'qr0atAt6wCISOieJu2fZKgmKKtql4T','2021-10-03 20:59:18.386172','read write',1,1,'2021-10-03 10:59:18.386172','2021-10-03 10:59:18.386172',NULL,NULL),(7,'L2v3LU6nSyL76EcSJSKyADnjj7Ls1l','2021-10-04 23:41:13.599972','read write',1,1,'2021-10-04 13:41:13.600969','2021-10-04 13:41:13.600969',NULL,NULL),(8,'VYE0ea9wcMK4TvzSNCxXaCJHuL4wYs','2021-10-04 23:42:44.297168','read write',1,1,'2021-10-04 13:42:44.298165','2021-10-04 13:42:44.298165',NULL,NULL),(9,'0N4Hsj3WDEN2ia2pUiGhAS6RCh8kid','2021-10-05 01:20:46.805591','read write',1,1,'2021-10-04 15:20:46.805591','2021-10-04 15:20:46.805591',NULL,NULL),(10,'LT49LX9a8wv53R67zY8ry34eGgMxFH','2021-10-05 01:24:59.552674','read write',1,1,'2021-10-04 15:24:59.552674','2021-10-04 15:24:59.552674',NULL,NULL),(11,'7ih0ck5KDKUJDahv2ed2KgQuV6BUjF','2021-10-05 01:25:50.637557','read write',1,1,'2021-10-04 15:25:50.638552','2021-10-04 15:25:50.638552',NULL,NULL),(12,'gwxTNGyMZ97zym7k1L6haCktINSELb','2021-10-07 19:02:59.295193','read write',1,1,'2021-10-07 09:02:59.295193','2021-10-07 09:02:59.295193',NULL,NULL),(13,'DVLG9VsI4eA9rN5UPBYWfsarsoRe02','2021-10-07 20:05:47.042082','read write',1,1,'2021-10-07 10:05:47.042082','2021-10-07 10:05:47.042082',NULL,NULL),(14,'YLDLaFo7Bui3D3px7AD1uTaBrtmXyH','2021-10-08 00:52:26.016108','read write',1,1,'2021-10-07 14:52:26.036711','2021-10-07 14:52:26.036711',NULL,NULL),(15,'7GAa4Hug0iOXMmgK3jUggaH4fzaH3f','2021-10-08 01:01:45.252344','read write',1,1,'2021-10-07 15:01:45.253342','2021-10-07 15:01:45.253342',NULL,NULL),(16,'cupCU5CatpiPVlT7hiipdRUg7BB9Ip','2021-10-08 01:02:34.099239','read write',1,1,'2021-10-07 15:02:34.100237','2021-10-07 15:02:34.100237',NULL,NULL),(17,'ltYdVMNx0Qtq5QFihOFHSGkrbPUlmy','2021-10-08 01:07:25.002843','read write',1,1,'2021-10-07 15:07:25.002843','2021-10-07 15:07:25.002843',NULL,NULL),(18,'VpanbQrYbGmxi7V3WDRrYnxJS9I0Ro','2021-10-08 01:10:35.328563','read write',1,1,'2021-10-07 15:10:35.328563','2021-10-07 15:10:35.328563',NULL,NULL),(19,'jek7DklGzNK38zVD0W1fpFRSEDNSGl','2021-10-08 01:13:19.059954','read write',1,1,'2021-10-07 15:13:19.060954','2021-10-07 15:13:19.060954',NULL,NULL),(20,'PfTql194TG6oMjf0AR9RAeflHgCXNT','2021-10-08 01:14:22.329738','read write',1,1,'2021-10-07 15:14:22.330733','2021-10-07 15:14:22.330733',NULL,NULL),(21,'1Dw5zKIp4jf8EXoyczpLiTddMHWZNs','2021-10-08 01:14:26.618379','read write',1,1,'2021-10-07 15:14:26.619377','2021-10-07 15:14:26.619377',NULL,NULL),(22,'gjcEe67XPcg3JmptmB3e1rQ4QMwFji','2021-10-08 01:14:51.546086','read write',1,1,'2021-10-07 15:14:51.547083','2021-10-07 15:14:51.547083',NULL,NULL),(23,'jciod7kSpJBzKODNPT3aDuoH8ZU4QD','2021-10-08 01:18:55.783332','read write',1,1,'2021-10-07 15:18:55.784326','2021-10-07 15:18:55.784326',NULL,NULL),(24,'SBQlaiX4d9622o9KfrtQjLkgJFzm5P','2021-10-08 01:27:11.455205','read write',1,1,'2021-10-07 15:27:11.456192','2021-10-07 15:27:11.456192',NULL,NULL),(25,'0VY7d8avJIbcWqykj2KVz0Nv5ty6kv','2021-10-08 01:28:13.423228','read write',1,1,'2021-10-07 15:28:13.424226','2021-10-07 15:28:13.424226',NULL,NULL),(26,'eZ1SmiWl9gcpIpIIoxOoEn0PjzPfiZ','2021-10-08 01:40:33.968470','read write',1,1,'2021-10-07 15:40:33.969467','2021-10-07 15:40:33.969467',NULL,NULL),(27,'450iGJSkhejmPpOSUnZJVNdtSHxmEP','2021-10-08 01:41:27.902429','read write',1,1,'2021-10-07 15:41:27.903393','2021-10-07 15:41:27.903393',NULL,NULL),(28,'xZNd02e1wZW30wLYfvzBk0l3pbcVB2','2021-10-08 01:44:07.347284','read write',1,1,'2021-10-07 15:44:07.347284','2021-10-07 15:44:07.347284',NULL,NULL),(29,'JyVUiEh1DJNBll1pu4qOPb2rFNXJYj','2021-10-08 01:45:18.959682','read write',1,1,'2021-10-07 15:45:18.959682','2021-10-07 15:45:18.959682',NULL,NULL),(30,'ZaT6JzI84AFY2JfSUwDir9fFgAUePB','2021-10-08 01:46:29.791557','read write',1,1,'2021-10-07 15:46:29.791557','2021-10-07 15:46:29.791557',NULL,NULL),(31,'ROX7ccentMmxioJHBtVpbY6cdQZR7E','2021-10-08 01:53:22.469423','read write',1,1,'2021-10-07 15:53:22.470428','2021-10-07 15:53:22.470428',NULL,NULL),(32,'HDiWUr6ppaSrY10xylrS9N4yTLigUe','2021-10-08 12:13:16.299328','read write',1,1,'2021-10-08 02:13:16.300325','2021-10-08 02:13:16.300325',NULL,NULL),(33,'4Ndy04GxmZwoRXBFoMoNirYunVZSQV','2021-10-08 12:14:17.712757','read write',1,1,'2021-10-08 02:14:17.712757','2021-10-08 02:14:17.712757',NULL,NULL),(34,'9tfJQi3Mdrv1PbeySE6VlFCNM822KV','2021-10-08 12:19:36.858544','read write',1,1,'2021-10-08 02:19:36.858544','2021-10-08 02:19:36.858544',NULL,NULL),(35,'AGjoIqiR2lyTxm8idC2xQR3W2riuzw','2021-10-08 12:27:44.873538','read write',1,1,'2021-10-08 02:27:44.874535','2021-10-08 02:27:44.874535',NULL,NULL),(36,'HQxYZGkpnUfruJXZVy7eaZTO8uGnig','2021-10-08 13:15:49.986599','read write',1,1,'2021-10-08 03:15:49.987543','2021-10-08 03:15:49.987543',NULL,NULL),(37,'fsiVUWkNtj5o8uhMHbCvFYMGqlQJT5','2021-10-08 13:16:33.018330','read write',1,1,'2021-10-08 03:16:33.020324','2021-10-08 03:16:33.020324',NULL,NULL),(38,'NUvtc5P5IULJgRRhXYedhRYvY44m8x','2021-10-08 22:56:17.029029','read write',1,1,'2021-10-08 12:56:17.029029','2021-10-08 12:56:17.029029',NULL,NULL),(39,'JuxRD7lqpRo81uF43B8HZAzqh77gBG','2021-10-08 22:59:09.948049','read write',1,1,'2021-10-08 12:59:09.948049','2021-10-08 12:59:09.948049',NULL,NULL);
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
  `client_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `redirect_uris` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `client_type` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `authorization_grant_type` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `client_secret` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `skip_authorization` tinyint(1) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `algorithm` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `client_id` (`client_id`),
  KEY `oauth2_provider_application_user_id_79829054_fk_wedding_user_id` (`user_id`),
  KEY `oauth2_provider_application_client_secret_53133678` (`client_secret`),
  CONSTRAINT `oauth2_provider_application_user_id_79829054_fk_wedding_user_id` FOREIGN KEY (`user_id`) REFERENCES `wedding_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
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
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `expires` datetime(6) NOT NULL,
  `redirect_uri` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `scope` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `application_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `code_challenge` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `code_challenge_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `nonce` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `claims` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT (_utf8mb3''),
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `oauth2_provider_gran_application_id_81923564_fk_oauth2_pr` (`application_id`),
  KEY `oauth2_provider_grant_user_id_e8f62af8_fk_wedding_user_id` (`user_id`),
  CONSTRAINT `oauth2_provider_gran_application_id_81923564_fk_oauth2_pr` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`),
  CONSTRAINT `oauth2_provider_grant_user_id_e8f62af8_fk_wedding_user_id` FOREIGN KEY (`user_id`) REFERENCES `wedding_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
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
  `jti` char(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `expires` datetime(6) NOT NULL,
  `scope` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
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
  `token` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_refreshtoken`
--

LOCK TABLES `oauth2_provider_refreshtoken` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_refreshtoken` DISABLE KEYS */;
INSERT INTO `oauth2_provider_refreshtoken` VALUES (1,'zrZEV6HvDbXobpSbrDn708XabDa31p',1,1,1,'2021-09-30 15:07:09.635532','2021-09-30 15:07:09.635532',NULL),(2,'BVoc4Zes7QyxlRiK9oYod0vSbm2WGE',2,1,1,'2021-10-01 12:42:36.725287','2021-10-01 12:42:36.725287',NULL),(3,'Z9jRlPGIzGq07Ad0elLPlD2juEXonz',3,1,1,'2021-10-01 13:05:27.298425','2021-10-01 13:05:27.298425',NULL),(4,'X8WEMcHxu1bTpeJgQfewDTLYvT0M3c',4,1,1,'2021-10-03 09:14:20.402955','2021-10-03 09:14:20.402955',NULL),(5,'cncBNCXlsEl5o8Tv2sh015pX1rIVHL',5,1,1,'2021-10-03 10:37:52.060588','2021-10-03 10:37:52.060588',NULL),(6,'lMBHAntaGqVj4HZsWJ6qfgIw5VBP1n',6,1,1,'2021-10-03 10:59:18.552728','2021-10-03 10:59:18.552728',NULL),(7,'XmOjlWjMPPkKOCPHc7cEIoUCi0kOjC',7,1,1,'2021-10-04 13:41:14.160264','2021-10-04 13:41:14.160264',NULL),(8,'hF4vgor1f3axde9W8NBlgLwTqRa0WP',8,1,1,'2021-10-04 13:42:44.482640','2021-10-04 13:42:44.482640',NULL),(9,'brKeZZdjh8xvYX3au7Fj2Pwz2dPoHN',9,1,1,'2021-10-04 15:20:46.977134','2021-10-04 15:20:46.977134',NULL),(10,'PKf7HJhO4PKqYmTmJYqd2MFHGzsPpE',10,1,1,'2021-10-04 15:24:59.721224','2021-10-04 15:24:59.721224',NULL),(11,'06TruQT4PLkcZ8C53LHTqmS0iLNQ10',11,1,1,'2021-10-04 15:25:50.717389','2021-10-04 15:25:50.717389',NULL),(12,'XzAP3SqfSAXSj0SQWnAWlDBI5h8dfs',12,1,1,'2021-10-07 09:02:59.678447','2021-10-07 09:02:59.678447',NULL),(13,'WqC9RQc4KTWlMX6AsnVLwAN89jpg9T',13,1,1,'2021-10-07 10:05:47.086018','2021-10-07 10:05:47.086018',NULL),(14,'hOlqRYT1s837Z5rDAg5ufU6QDmxxcW',14,1,1,'2021-10-07 14:52:26.603785','2021-10-07 14:52:26.603785',NULL),(15,'v2DXG7KsgvZCPDtuQA3eJ2axnimDBH',15,1,1,'2021-10-07 15:01:45.309193','2021-10-07 15:01:45.309193',NULL),(16,'lfvm3QZ0A176nGKR9eJq1Yt5p97JkD',16,1,1,'2021-10-07 15:02:34.158426','2021-10-07 15:02:34.158426',NULL),(17,'UnPbQHMNHuECAt9Oq5ZJRwfdUHV7vV',17,1,1,'2021-10-07 15:07:25.123519','2021-10-07 15:07:25.123519',NULL),(18,'l0BTshYxO5eqkwQjEQkwSlODq0Q1ZV',18,1,1,'2021-10-07 15:10:35.376235','2021-10-07 15:10:35.376235',NULL),(19,'C5TTT2TmIHN0t1Mp9r3Yrr697DvwVY',19,1,1,'2021-10-07 15:13:19.110820','2021-10-07 15:13:19.110820',NULL),(20,'vgc5g6nnZ4sEDI4oqvtQBPDcwlaNNJ',20,1,1,'2021-10-07 15:14:22.373652','2021-10-07 15:14:22.373652',NULL),(21,'wyFbYMga5v8RUt8vcP2M31i7s03UbM',21,1,1,'2021-10-07 15:14:26.702163','2021-10-07 15:14:26.702163',NULL),(22,'NyGvLDNhnQw4KOcurU6WEx0w5d2t33',22,1,1,'2021-10-07 15:14:51.618895','2021-10-07 15:14:51.618895',NULL),(23,'9C6ScPuARCtxuSDosJ6cJ9hRiZmRrN',23,1,1,'2021-10-07 15:18:55.823216','2021-10-07 15:18:55.823216',NULL),(24,'DBzh6O3LS7o3AbL6oIcNrFljrbWzzC',24,1,1,'2021-10-07 15:27:11.500069','2021-10-07 15:27:11.500069',NULL),(25,'7veYyOvwnGnunpgVEx0eSWYs8z49Aa',25,1,1,'2021-10-07 15:28:13.475091','2021-10-07 15:28:13.475091',NULL),(26,'mjIbcbTZCDQxJXnQzHzi2N9uP4PTQX',26,1,1,'2021-10-07 15:40:34.063219','2021-10-07 15:40:34.063219',NULL),(27,'YEsPsupUyJDHKvczJ0rvoA99BUzEWu',27,1,1,'2021-10-07 15:41:28.005120','2021-10-07 15:41:28.005120',NULL),(28,'A62XWLfoEDg8h5LNDXz9iLF0eAhJnJ',28,1,1,'2021-10-07 15:44:07.383459','2021-10-07 15:44:07.383459',NULL),(29,'9KxbVkNWDS2SfMERQoGMsCGZmMQgeA',29,1,1,'2021-10-07 15:45:19.023192','2021-10-07 15:45:19.023192',NULL),(30,'pTZBsoJ8TdYWaUrGswfbiLZlz9FNbz',30,1,1,'2021-10-07 15:46:29.852427','2021-10-07 15:46:29.852427',NULL),(31,'lenIM3IbeQg7D6fJvfCLxf4iUCgHpo',31,1,1,'2021-10-07 15:53:22.516296','2021-10-07 15:53:22.516296',NULL),(32,'HJNCZ5AgVxAYh1t0HebjZaz8kWIa1q',32,1,1,'2021-10-08 02:13:16.357148','2021-10-08 02:13:16.357148',NULL),(33,'o7XTCceOVObDLtTLcBO6KT5iaD8rOP',33,1,1,'2021-10-08 02:14:17.762710','2021-10-08 02:14:17.762710',NULL),(34,'X9SHrzFC5Bv2zLzJS1KZ4Wpu8H8irf',34,1,1,'2021-10-08 02:19:36.911155','2021-10-08 02:19:36.911155',NULL),(35,'XNTJnHDJOMue2IxYjMCe6PRhc7pJXZ',35,1,1,'2021-10-08 02:27:45.298307','2021-10-08 02:27:45.298307',NULL),(36,'U9XBH6eevF3vRvcSiBz2zfvOcD1sDo',36,1,1,'2021-10-08 03:15:50.104527','2021-10-08 03:15:50.104527',NULL),(37,'xz2IkXUrOLYfJBmPbE3WQxSoqiDlzi',37,1,1,'2021-10-08 03:16:33.177903','2021-10-08 03:16:33.177903',NULL),(38,'bhQFWkJ4Vs05jTKz5gRyI5KVD7Gqur',38,1,1,'2021-10-08 12:56:17.079810','2021-10-08 12:56:17.079810',NULL),(39,'UMo8VA3cmdDuj7dQ20wZIE7jnyfQrq',39,1,1,'2021-10-08 12:59:10.082689','2021-10-08 12:59:10.082689',NULL);
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
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `number` varchar(12) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `surplus` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wedding_bankaccount`
--

LOCK TABLES `wedding_bankaccount` WRITE;
/*!40000 ALTER TABLE `wedding_bankaccount` DISABLE KEYS */;
INSERT INTO `wedding_bankaccount` VALUES (1,'Phát','2021-10-03 12:32:39.519995',1,'123','1000000'),(2,'Kiệt','2021-10-03 12:32:54.239159',1,'1234','101010'),(3,'ok','2021-10-04 14:37:15.180158',1,'456','123456');
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
  `content` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `updated_date` datetime(6) NOT NULL,
  `creator_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wedding_comment_creator_id_f58db97d_fk_wedding_user_id` (`creator_id`),
  CONSTRAINT `wedding_comment_creator_id_f58db97d_fk_wedding_user_id` FOREIGN KEY (`creator_id`) REFERENCES `wedding_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wedding_comment`
--

LOCK TABLES `wedding_comment` WRITE;
/*!40000 ALTER TABLE `wedding_comment` DISABLE KEYS */;
INSERT INTO `wedding_comment` VALUES (1,'tets','2021-09-30 14:44:10.412561','2021-09-30 14:44:10.413562',1),(2,'tuyệt vời','2021-10-03 07:32:32.609030','2021-10-03 07:32:32.609030',3),(10,'cũng ok','2021-10-04 15:57:01.346083','2021-10-04 15:57:01.346083',1);
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
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `updated_date` datetime(6) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `menu_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `wedding_food_menu_id_7187dfc6_fk_wedding_menu_id` (`menu_id`),
  CONSTRAINT `wedding_food_menu_id_7187dfc6_fk_wedding_menu_id` FOREIGN KEY (`menu_id`) REFERENCES `wedding_menu` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wedding_food`
--

LOCK TABLES `wedding_food` WRITE;
/*!40000 ALTER TABLE `wedding_food` DISABLE KEYS */;
INSERT INTO `wedding_food` VALUES (1,'food1','2021-10-03 07:46:06.500626','2021-10-03 07:46:06.500626',1,'food/2021/10/1-101.jpg',1),(2,'food2','2021-10-03 07:46:25.787417','2021-10-07 13:24:35.269585',1,'food/2021/10/2-601.jpg',2),(3,'food3','2021-10-03 07:46:48.144678','2021-10-03 07:46:48.144678',1,'food/2021/10/3.jpg',1);
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
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `updated_date` datetime(6) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `system_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `wedding_menu_system_id_9e8280e8_fk_wedding_system_id` (`system_id`),
  CONSTRAINT `wedding_menu_system_id_9e8280e8_fk_wedding_system_id` FOREIGN KEY (`system_id`) REFERENCES `wedding_system` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wedding_menu`
--

LOCK TABLES `wedding_menu` WRITE;
/*!40000 ALTER TABLE `wedding_menu` DISABLE KEYS */;
INSERT INTO `wedding_menu` VALUES (1,'Menu1','2021-10-03 07:45:12.593026','2021-10-03 07:45:12.593026',1,'menu/2021/10/menu1.jpg',4),(2,'Menu2','2021-10-03 07:45:39.347851','2021-10-03 07:45:39.347851',1,'menu/2021/10/menu2.jpg',4);
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
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `updated_date` datetime(6) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `system_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `wedding_service_system_id_be8c1dec_fk_wedding_system_id` (`system_id`),
  CONSTRAINT `wedding_service_system_id_be8c1dec_fk_wedding_system_id` FOREIGN KEY (`system_id`) REFERENCES `wedding_system` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wedding_service`
--

LOCK TABLES `wedding_service` WRITE;
/*!40000 ALTER TABLE `wedding_service` DISABLE KEYS */;
INSERT INTO `wedding_service` VALUES (1,'Bàn trang trí','2021-10-03 12:22:48.881146','2021-10-03 12:22:48.881146',1,'black','service/2021/10/decorativeTable.jpg',5),(2,'Cổng chào','2021-10-03 12:23:24.358896','2021-10-03 12:23:24.358896',1,'black','service/2021/10/gateFlower.jpg',5),(3,'Ca nhạc','2021-10-03 12:23:50.098981','2021-10-03 12:23:50.098981',1,'black','service/2021/10/violinist.jpg',5);
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
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `updated_date` datetime(6) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `price` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wedding_shift`
--

LOCK TABLES `wedding_shift` WRITE;
/*!40000 ALTER TABLE `wedding_shift` DISABLE KEYS */;
INSERT INTO `wedding_shift` VALUES (1,'Ca sáng','2021-10-03 12:24:21.270523','2021-10-03 12:24:21.270523',1,'100tr'),(2,'Ca trưa','2021-10-03 12:24:34.884012','2021-10-03 12:24:34.884012',1,'200tr'),(3,'Ca tối','2021-10-03 12:24:47.942061','2021-10-03 12:24:47.942061',1,'300tr');
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
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wedding_system`
--

LOCK TABLES `wedding_system` WRITE;
/*!40000 ALTER TABLE `wedding_system` DISABLE KEYS */;
INSERT INTO `wedding_system` VALUES (3,'Banquet hall'),(7,'Chart'),(4,'Menu'),(6,'Recruitment'),(5,'Service');
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
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wedding_user`
--

LOCK TABLES `wedding_user` WRITE;
/*!40000 ALTER TABLE `wedding_user` DISABLE KEYS */;
INSERT INTO `wedding_user` VALUES (1,'pbkdf2_sha256$260000$vUBGxmrW4E9mKSQ4EIJf2H$59rY3hIgxV+jcdQvXy4r1i/LldUV6WCGlhU/C5xLluo=','2021-10-04 13:28:46.000000',1,'admin','','','huukiet21@gmail.com',1,1,'2021-09-30 14:04:16.000000','uploads/2021/10/tuvan.jpg'),(2,'pbkdf2_sha256$260000$u45O4M9MN168OtzsVa3lL3$QOmaoz8QTwMKTS2H5YMGkA8Pg37K5vpFrYNLdqQBpBk=',NULL,0,'HK','Kiet','Nguyen','huukiet21@gmail.com',0,1,'2021-10-01 11:59:27.000000','uploads/2021/10/violinist.jpg'),(3,'pbkdf2_sha256$260000$9RZXo04bYtFRPrAuHS8WOd$ocn7F4+yMGbZKtV/i8jDujCSbEJzRu4kM5ulEVX7+tU=',NULL,0,'PL','Lê','Quốc Phát','abasfidsfk@gmail.com',0,1,'2021-10-01 13:06:21.000000','uploads/2021/10/serve.jpg'),(4,'pbkdf2_sha256$260000$cvmAppjtpkDPXR1Xu3YZTF$2O61eLLCXx3nHM3YbJ1zdgjd26kM8VfOoV6j2Mx/CG0=',NULL,0,'NT','Nguyễn','Tiêm','quoc@gmail.com',0,1,'2021-10-07 15:21:05.354396','uploads/2021/10/signed.jpg'),(5,'pbkdf2_sha256$260000$SgbBZ1YcguzCa9ozqGPP71$kKYMK3FZw+XgOYcvmYpgcWhYwoIJG460GkO+Mp6rNT0=',NULL,0,'NK','Nguyễn','Ka','quoc@gmail.com',0,1,'2021-10-08 02:24:54.572966','uploads/2021/10/decorativeTable.jpg');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
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
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wedding_wedding`
--

LOCK TABLES `wedding_wedding` WRITE;
/*!40000 ALTER TABLE `wedding_wedding` DISABLE KEYS */;
INSERT INTO `wedding_wedding` VALUES (1,'Phát Lê','2021-10-03 12:43:37.969811','2021-10-03 12:43:37.969811',1,'2021-10-04',2,2,1,2),(2,'Nguyễn Kiệt','2021-10-03 12:44:15.629525','2021-10-03 12:44:15.629525',1,'2021-10-21',1,2,2,3),(3,'dsfsdaf','2021-10-04 15:09:35.387090','2021-10-04 15:09:35.387090',1,'2021-10-04',2,2,1,2),(4,'sadasd','2021-10-04 15:14:50.464143','2021-10-04 15:14:50.464143',1,'2021-10-04',1,2,1,3),(5,'Nguyễn Kì','2021-10-04 15:15:34.687308','2021-10-04 15:15:34.687308',1,'2021-10-04',1,2,2,3),(6,'quốc gia','2021-10-04 15:17:40.799246','2021-10-04 15:17:40.799246',1,'2021-10-04',2,2,3,1),(7,'lê tuấn','2021-10-04 15:18:21.806512','2021-10-04 15:18:21.806512',1,'2021-10-04',1,3,3,3),(8,'tuan le','2021-10-04 15:20:18.074517','2021-10-04 15:20:18.074517',1,'2021-10-13',2,2,2,3),(9,'dung do','2021-10-04 15:28:25.067835','2021-10-04 15:28:25.067835',1,'2021-10-04',1,3,3,3),(10,'vu pham','2021-10-05 08:13:13.056241','2021-10-05 08:13:13.056305',1,'2021-10-05',1,2,NULL,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wedding_wedding_service`
--

LOCK TABLES `wedding_wedding_service` WRITE;
/*!40000 ALTER TABLE `wedding_wedding_service` DISABLE KEYS */;
INSERT INTO `wedding_wedding_service` VALUES (1,1,2),(2,2,3);
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
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `updated_date` datetime(6) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `system_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `wedding_weddinghalls_system_id_5e28fc49_fk_wedding_system_id` (`system_id`),
  CONSTRAINT `wedding_weddinghalls_system_id_5e28fc49_fk_wedding_system_id` FOREIGN KEY (`system_id`) REFERENCES `wedding_system` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wedding_weddinghalls`
--

LOCK TABLES `wedding_weddinghalls` WRITE;
/*!40000 ALTER TABLE `wedding_weddinghalls` DISABLE KEYS */;
INSERT INTO `wedding_weddinghalls` VALUES (1,'sảnh 1','2021-09-30 14:01:38.868901','2021-10-03 12:20:51.487240',1,'wedding-hall/2021/10/IMG_2203-1.jpg','black',3),(2,'sảnh 2','2021-09-30 14:24:34.906458','2021-10-03 12:21:13.647597',1,'wedding-hall/2021/10/sanh2.jpg','black',3),(3,'sảnh 3','2021-10-03 12:21:36.892710','2021-10-04 13:58:37.982583',1,'wedding-hall/2021/10/sanh3.jpg','blackdsfdsfsdfsdfsdf',3);
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

-- Dump completed on 2021-10-08 20:29:12
