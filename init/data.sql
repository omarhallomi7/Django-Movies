-- MySQL dump 10.16  Distrib 10.1.48-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: db
-- ------------------------------------------------------
-- Server version	10.1.48-MariaDB-0+deb9u2

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
-- Table structure for table `auth_group`
--
CREATE DATABASE  IF NOT EXISTS  movies;
use movies;
DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` varchar(0) DEFAULT NULL,
  `name` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` varchar(0) DEFAULT NULL,
  `group_id` varchar(0) DEFAULT NULL,
  `permission_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` tinyint(4) DEFAULT NULL,
  `content_type_id` tinyint(4) DEFAULT NULL,
  `codename` varchar(18) DEFAULT NULL,
  `name` varchar(23) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,1,'add_logentry','Can add log entry'),(2,1,'change_logentry','Can change log entry'),(3,1,'delete_logentry','Can delete log entry'),(4,1,'view_logentry','Can view log entry'),(5,2,'add_permission','Can add permission'),(6,2,'change_permission','Can change permission'),(7,2,'delete_permission','Can delete permission'),(8,2,'view_permission','Can view permission'),(9,3,'add_group','Can add group'),(10,3,'change_group','Can change group'),(11,3,'delete_group','Can delete group'),(12,3,'view_group','Can view group'),(13,4,'add_user','Can add user'),(14,4,'change_user','Can change user'),(15,4,'delete_user','Can delete user'),(16,4,'view_user','Can view user'),(17,5,'add_contenttype','Can add content type'),(18,5,'change_contenttype','Can change content type'),(19,5,'delete_contenttype','Can delete content type'),(20,5,'view_contenttype','Can view content type'),(21,6,'add_session','Can add session'),(22,6,'change_session','Can change session'),(23,6,'delete_session','Can delete session'),(24,6,'view_session','Can view session'),(25,7,'add_movie','Can add movie'),(26,7,'change_movie','Can change movie'),(27,7,'delete_movie','Can delete movie'),(28,7,'view_movie','Can view movie'),(29,8,'add_review','Can add review'),(30,8,'change_review','Can change review'),(31,8,'delete_review','Can delete review'),(32,8,'view_review','Can view review');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` tinyint(4) DEFAULT NULL,
  `password` varchar(88) DEFAULT NULL,
  `last_login` DATETIME DEFAULT NULL,
  `is_superuser` tinyint(4) DEFAULT NULL,
  `username` varchar(5) DEFAULT NULL,
  `last_name` varchar(0) DEFAULT NULL,
  `email` varchar(22) DEFAULT NULL,
  `is_staff` tinyint(4) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT NULL,
  `date_joined` DATETIME DEFAULT NULL,
  `first_name` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$870000$ZlZGYqIpXeAAeDzqyEhEjb$ABTXyw41uqDW2bb81RBKVRlAshPjaS4IBg1ZbmUDHgc=','2024-09-22',1,'omar','','omarhallomi7@gmail.com',1,1,'2024-09-15',''),(2,'pbkdf2_sha256$870000$REifNcQMmO1mFJ6SxLXGMn$oEnBcvFwTiVcMqr3shdpRcwSP+0C42RyZ/9B//H9Nk0=','2024-09-21',0,'ahmad','','',0,1,'2024-09-15','');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` varchar(0) DEFAULT NULL,
  `user_id` varchar(0) DEFAULT NULL,
  `group_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` varchar(0) DEFAULT NULL,
  `user_id` varchar(0) DEFAULT NULL,
  `permission_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` tinyint(4) DEFAULT NULL,
  `object_id` tinyint(4) DEFAULT NULL,
  `object_repr` varchar(30) DEFAULT NULL,
  `action_flag` tinyint(4) DEFAULT NULL,
  `change_message` varchar(51) DEFAULT NULL,
  `content_type_id` tinyint(4) DEFAULT NULL,
  `user_id` tinyint(4) DEFAULT NULL,
  `action_time` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,1,'Damsel',1,'[{\"added\": {}}]',7,1,'2024-09-15'),(2,1,'Damsel',3,'',7,1,'2024-09-15'),(3,2,'Batman',1,'[{\"added\": {}}]',7,1,'2024-09-15'),(4,2,'Batman',2,'[]',7,1,'2024-09-15'),(5,3,'Damsel',1,'[{\"added\": {}}]',7,1,'2024-09-15'),(6,3,'Damsel',3,'',7,1,'2024-09-16'),(7,2,'Batman',3,'',7,1,'2024-09-16'),(8,1,'THE REVENANT',1,'[{\"added\": {}}]',7,1,'2024-09-16'),(9,2,'RUSH HOUR',1,'[{\"added\": {}}]',7,1,'2024-09-16'),(10,3,'LUCY',1,'[{\"added\": {}}]',7,1,'2024-09-16'),(11,4,'PATTON',1,'[{\"added\": {}}]',7,1,'2024-09-16'),(12,5,'THE DROP',1,'[{\"added\": {}}]',7,1,'2024-09-16'),(13,6,'DRACULA',1,'[{\"added\": {}}]',7,1,'2024-09-16'),(14,13,'Review of THE DROP by omar',3,'',8,1,'2024-09-16'),(15,12,'Review of LUCY by omar',3,'',8,1,'2024-09-16'),(16,11,'Review of DRACULA by ',3,'',8,1,'2024-09-16'),(17,10,'Review of PATTON by ',3,'',8,1,'2024-09-16'),(18,9,'Review of LUCY by ',3,'',8,1,'2024-09-16'),(19,8,'Review of LUCY by ',3,'',8,1,'2024-09-16'),(20,7,'Review of RUSH HOUR by ',3,'',8,1,'2024-09-16'),(21,6,'Review of RUSH HOUR by ',3,'',8,1,'2024-09-16'),(22,5,'Review of RUSH HOUR by ',3,'',8,1,'2024-09-16'),(23,4,'Review of RUSH HOUR by ',3,'',8,1,'2024-09-16'),(24,3,'Review of RUSH HOUR by ',3,'',8,1,'2024-09-16'),(25,2,'Review of THE REVENANT by ',3,'',8,1,'2024-09-16'),(26,1,'Review of THE REVENANT by ',3,'',8,1,'2024-09-16'),(27,17,'Review of PATTON by omar',3,'',8,1,'2024-09-16'),(28,16,'Review of PATTON by omar',3,'',8,1,'2024-09-16'),(29,15,'Review of PATTON by omar',3,'',8,1,'2024-09-16'),(30,14,'Review of PATTON by omar',3,'',8,1,'2024-09-16'),(31,22,'Review of THE REVENANT by omar',3,'',8,1,'2024-09-16'),(32,21,'Review of THE REVENANT by omar',3,'',8,1,'2024-09-16'),(33,20,'Review of THE REVENANT by omar',3,'',8,1,'2024-09-16'),(34,19,'Review of THE REVENANT by omar',3,'',8,1,'2024-09-16'),(35,18,'Review of PATTON by omar',3,'',8,1,'2024-09-16'),(36,7,'AFRAID',1,'[{\"added\": {}}]',7,1,'2024-09-21'),(37,8,'TRAP',1,'[{\"added\": {}}]',7,1,'2024-09-21'),(38,9,'GUNNER',1,'[{\"added\": {}}]',7,1,'2024-09-21'),(39,10,'TWISTERS',1,'[{\"added\": {}}]',7,1,'2024-09-21'),(40,11,'BAD BOYS',1,'[{\"added\": {}}]',7,1,'2024-09-21'),(41,12,'MATRIX',1,'[{\"added\": {}}]',7,1,'2024-09-21'),(42,13,'AVENGERS',1,'[{\"added\": {}}]',7,1,'2024-09-21'),(43,13,'AVENGERS',2,'[{\"changed\": {\"fields\": [\"Poster\", \"Background\"]}}]',7,1,'2024-09-21'),(44,14,'TERMINATOR',1,'[{\"added\": {}}]',7,1,'2024-09-21'),(45,15,'28 WEEKS LATER',1,'[{\"added\": {}}]',7,1,'2024-09-21'),(46,16,'I AM LEGEND',1,'[{\"added\": {}}]',7,1,'2024-09-21'),(47,17,'I AM LEGEND',1,'[{\"added\": {}}]',7,1,'2024-09-21'),(48,16,'I AM LEGEND',3,'',7,1,'2024-09-21'),(49,15,'28 WEEKS LATER',2,'[]',7,1,'2024-09-21'),(50,17,'I AM LEGEND',2,'[]',7,1,'2024-09-21'),(51,15,'28 WEEKS LATER',2,'[]',7,1,'2024-09-21'),(52,14,'TERMINATOR',2,'[]',7,1,'2024-09-21'),(53,17,'I AM LEGEND',3,'',7,1,'2024-09-21'),(54,15,'28 WEEKS LATER',3,'',7,1,'2024-09-21'),(55,18,'I AM LEGEND',1,'[{\"added\": {}}]',7,1,'2024-09-21'),(56,19,'28 WEEKS LATER',1,'[{\"added\": {}}]',7,1,'2024-09-21'),(57,20,'THE CREATOR',1,'[{\"added\": {}}]',7,1,'2024-09-21'),(58,21,'AVATAR',1,'[{\"added\": {}}]',7,1,'2024-09-21'),(59,31,'Review of THE REVENANT by omar',3,'',8,1,'2024-09-21'),(60,30,'Review of TWISTERS by omar',3,'',8,1,'2024-09-21'),(61,29,'Review of TWISTERS by omar',3,'',8,1,'2024-09-21'),(62,28,'Review of RUSH HOUR by omar',3,'',8,1,'2024-09-21'),(63,27,'Review of RUSH HOUR by omar',3,'',8,1,'2024-09-21'),(64,26,'Review of RUSH HOUR by omar',3,'',8,1,'2024-09-21'),(65,25,'Review of THE REVENANT by omar',3,'',8,1,'2024-09-21'),(66,24,'Review of LUCY by omar',3,'',8,1,'2024-09-21'),(67,23,'Review of THE REVENANT by omar',3,'',8,1,'2024-09-21'),(68,32,'Review of DRACULA by omar',3,'',8,1,'2024-09-22'),(69,33,'Review of TRAP by omar',3,'',8,1,'2024-09-24');
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` tinyint(4) DEFAULT NULL,
  `app_label` varchar(12) DEFAULT NULL,
  `model` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'movies','movie'),(8,'movies','review'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` tinyint(4) DEFAULT NULL,
  `app` varchar(12) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `applied` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-09-15'),(2,'auth','0001_initial','2024-09-15'),(3,'admin','0001_initial','2024-09-15'),(4,'admin','0002_logentry_remove_auto_add','2024-09-15'),(5,'admin','0003_logentry_add_action_flag_choices','2024-09-15'),(6,'contenttypes','0002_remove_content_type_name','2024-09-15'),(7,'auth','0002_alter_permission_name_max_length','2024-09-15'),(8,'auth','0003_alter_user_email_max_length','2024-09-15'),(9,'auth','0004_alter_user_username_opts','2024-09-15'),(10,'auth','0005_alter_user_last_login_null','2024-09-15'),(11,'auth','0006_require_contenttypes_0002','2024-09-15'),(12,'auth','0007_alter_validators_add_error_messages','2024-09-15'),(13,'auth','0008_alter_user_username_max_length','2024-09-15'),(14,'auth','0009_alter_user_last_name_max_length','2024-09-15'),(15,'auth','0010_alter_group_name_max_length','2024-09-15'),(16,'auth','0011_update_proxy_permissions','2024-09-15'),(17,'auth','0012_alter_user_first_name_max_length','2024-09-15'),(18,'movies','0001_initial','2024-09-15'),(19,'sessions','0001_initial','2024-09-15'),(20,'movies','0002_movie_background_alter_movie_poster','2024-09-16');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(32) DEFAULT NULL,
  `session_data` varchar(226) DEFAULT NULL,
  `expire_date` DATETIME DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('k8keujytrxon82x6x0si7yt31enuxrzd','.eJxVjEEOwiAQRe_C2hARyoBL9z0DGWZGqRpISrsy3l2bdKHb_977L5VwXUpau8xpYnVWRh1-t4z0kLoBvmO9NU2tLvOU9abonXY9NpbnZXf_Dgr28q29DZGNGLbeGc8RESyQRfQg4MhFOHJkpDAEJ-RpMAGY8OTyVVDAq_cH3Lk4SA:1sppIr:uFmW6DwWXlmJEWZdTTNhFwtsSgScg4n8AUsgkJTpWUg','2024-09-29'),('svrvf18ilk7kbo7t3yuop4zf710ghcat','.eJxVjEEOwiAQRe_C2hARyoBL9z0DGWZGqRpISrsy3l2bdKHb_977L5VwXUpau8xpYnVWRh1-t4z0kLoBvmO9NU2tLvOU9abonXY9NpbnZXf_Dgr28q29DZGNGLbeGc8RESyQRfQg4MhFOHJkpDAEJ-RpMAGY8OTyVVDAq_cH3Lk4SA:1spuBP:B37E_-0xy2_sIXpV2sWCUFDsZt2vA525BY0wUZTzVFA','2024-09-29'),('nokkj9ez81gj0tnjk9n4wm0r9ykd1rjl','.eJxVjEEOwiAQRe_C2hARyoBL9z0DGWZGqRpISrsy3l2bdKHb_977L5VwXUpau8xpYnVWRh1-t4z0kLoBvmO9NU2tLvOU9abonXY9NpbnZXf_Dgr28q29DZGNGLbeGc8RESyQRfQg4MhFOHJkpDAEJ-RpMAGY8OTyVVDAq_cH3Lk4SA:1sqD53:wrvCWd-gGL3JoUxtkvSWhqf-rTZH1owh52B35mq9H3o','2024-09-30'),('z3hglnkmpp7jhg4upa0bmd9rbh536t9h','.eJxVjEEOwiAQRe_C2hARyoBL9z0DGWZGqRpISrsy3l2bdKHb_977L5VwXUpau8xpYnVWRh1-t4z0kLoBvmO9NU2tLvOU9abonXY9NpbnZXf_Dgr28q29DZGNGLbeGc8RESyQRfQg4MhFOHJkpDAEJ-RpMAGY8OTyVVDAq_cH3Lk4SA:1sqY0z:tXkcvG44Pv4-keZtt5M24dnxWlPjcn8_1MelQb0JVUE','2024-10-01'),('74cgo3q8ivfeebksfd13r6w47644m2jv','.eJxVjEEOwiAQRe_C2hARyoBL9z0DGWZGqRpISrsy3l2bdKHb_977L5VwXUpau8xpYnVWRh1-t4z0kLoBvmO9NU2tLvOU9abonXY9NpbnZXf_Dgr28q29DZGNGLbeGc8RESyQRfQg4MhFOHJkpDAEJ-RpMAGY8OTyVVDAq_cH3Lk4SA:1srwbg:8GuF5U_tGXsw4I1JmlV7lwPqoDxqLRYhglbU4Ob9rDs','2024-10-05'),('s0n8vr1r8y5naiuq8ycpdtm8atloxid0','.eJxVjEEOwiAQRe_C2hARyoBL9z0DGWZGqRpISrsy3l2bdKHb_977L5VwXUpau8xpYnVWRh1-t4z0kLoBvmO9NU2tLvOU9abonXY9NpbnZXf_Dgr28q29DZGNGLbeGc8RESyQRfQg4MhFOHJkpDAEJ-RpMAGY8OTyVVDAq_cH3Lk4SA:1ss3cA:oO08KkaHNANvZ_eELRtDQno8pzT2igTg-IJmBAFF6Y8','2024-10-05');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies_movie`
--

DROP TABLE IF EXISTS `movies_movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movies_movie` (
  `id` tinyint(4) DEFAULT NULL,
  `title` varchar(14) DEFAULT NULL,
  `slug` varchar(14) DEFAULT NULL,
  `description` text,
  `director` varchar(27) DEFAULT NULL,
  `actors` text,
  `release_date` DATETIME DEFAULT NULL,
  `background` varchar(33) DEFAULT NULL,
  `poster` varchar(33) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies_movie`
--

LOCK TABLES `movies_movie` WRITE;
/*!40000 ALTER TABLE `movies_movie` DISABLE KEYS */;
INSERT INTO `movies_movie` VALUES (1,'THE REVENANT','the-revenant','Leonardo DiCaprio stars in this critically acclaimed epic adventure inspired by true events from writer-director Alejandro G. Iñárritu. While on a hunting expedition in the American wilderness, Hugh Glass (DiCaprio) is attacked by a bear and left for dead. Despite unimaginable grief and betrayal by his confidant (Tom Hardy), Glass must navigate a vicious winter in a relentless pursuit to live.','Alejandro González Iñárritu','Leonardo Dicaprio, Tom Hardy, Domhnall Gleeson, Will Poulter','','posters/The-revenant1.jpg','posters/The-revenant2.jpg'),(2,'RUSH HOUR','rush-hour','Martial arts superstar Jackie Chan and wisecracking comedian Chris Tucker are back in action! While vacationing together in Hong Kong, fast-talking Los Angeles Police Department detective Carter (Tucker) and Hong Kong Police inspector Lee (Chan) investigate when a bomb explodes in the American embassy, killing two secret agents on the trail of a ring of smugglers.','Brett Ratner','Jackie Chan, Chris Tucker, John Lone, Zhang Ziyi, Roselyn Sanchez, Harris Yulin, Alan King','','posters/rushHour1.jpg','posters/rushhour2.jpg'),(3,'LUCY','lucy','From the visionary director of La Femme Nikita and The Professional and starring Scarlett Johansson and Academy Award® winner Morgan Freeman comes an action-thriller about a woman accidentally caught in a dark deal who turns the tables on her captors. Altered by a dangerous new drug allowing her to use 100% of her brain capacity, Lucy transforms into a merciless warrior evolved beyond human logic.','Luc Besson','Choi Min-sik, Morgan Freeman, Scarlett Johansson, Amr Waked','','posters/lucy2.jpg','posters/lucy1.jpg'),(4,'PATTON','patton','This critically acclaimed, 1970 Best Picture Academy Award® Winner is a riveting portrait of one of the 20th century\'s greatest military geniuses. The only Allied general truly feared by the Nazis, George S. Patton (George C. Scott in a Best Actor OSCAR®-winning performance), Patton out-maneuvered Rommel in Africa, and after D-Day led his troops in an unstoppable campaign across Europe.','Franklin J. Schaffner','George C. Scott, Karl Malden','','posters/patton2.jpg','posters/patton1.jpg'),(5,'THE DROP','the-drop','A phenomenal cast, including Tom Hardy and James Gandolfini, lead this gritty thriller about Bartender Bob Saginowski (Hardy) and his hardened employer Uncle Marv (Gandolfini) who must choose between survival and loyalty when they find themselves caught in a robbery gone bad, and on the hook for a mob debt they can’t repay.','Michaël R. Roskam','Tom Hardy, Noomi Rapace, James Gandolfini, Matthias Schoenaerts, John Ortiz','','posters/thedrop2.jpg','posters/thedrop1.jpg'),(6,'DRACULA','dracula','Mel Brooks takes a turn at a classic horror tale. The vampires are loose, but somehow everyone\'s having a great time, including the undead count himself in Dracula: Dead and Loving It.','Mel Brooks','Leslie Nielsen, Peter MacNicol, Steven Weber, Amy Yasbeck, Mel Brooks, Lysette Anthony, Harvey Korman, Mark Blankfield, Megan Cavanagh, Gregg Binkley, Clive Revill, Chuck McCann, Avery Schreiber, Cherie Franklin, Matthew Porretta, Anne Bancroft','','posters/dracula2.jpg','posters/dracula1.jpg'),(7,'AFRAID','AFRAID','From Blumhouse, producer of M3gan and The Black Phone, comes AFRAID. Curtis (John Cho) and his family are selected to test a revolutionary new home device: a digital family assistant called AIA. Taking smart home to the next level, once the unit and all its sensors and cameras are installed in their home, AIA seems able to do it all. She learns the family\'s behaviors and begins to anticipate their needs. And she can make sure nothing – and no one – gets in her family’s way.','Chris Weitz','John Cho, Katherine Waterston, Havana Rose Liu, Lukita Maxwell, Ashley Romans, Greg Hill, Riki Lindhome, Wyatt Lindner, Isaac Bae, Todd Waring, David Dastmalchian, Keith Carradine','','posters/afraid2.jpg','posters/afraid1.jpg'),(8,'TRAP','trap','A father and teen daughter attend a pop concert, where they realize they’re at the center of a dark and sinister event.','M. Night Shyamalan','Josh Hartnett, Ariel Donoghue, Saleka Shyamalan, Hayley Mills, Alison Pill','','posters/trap2.jpg','posters/trap1.jpg'),(9,'GUNNER','gunner','War veteran Colonel Lee Gunner takes his two sons on a camping trip with their uncle Jon, to reconnect with them after being at the battle front for so long. The trip goes awry when Jon stumbles over a tripwire and sets off an explosion, alerting a gang of violent bikers in the midst of a massive drug operation. Not anticipating Gunner\'s elite combat skills, the gang members are taken out one by one. The boys try to go for help, but end up right in the arms of Dobbs, the son of kingpin Kendric Ryker who runs the organization from prison. With no one but himself to turn to, an enraged Gunner wreaks havoc to rescue his two sons, until he gets to the top and confronts Ryker. You don\'t cross Gunner.','Dimitri Logothetis','Luke Hemsworth, Mykel Shannon Jenkins, Yulia Klass, Grant Feely, Connor DeWolfe, Morgan Freeman','','posters/gunner2.jpg','posters/gunner1.jpg'),(10,'TWISTERS','twisters','Twisters brings back the blockbuster disaster epic with a whirlwind of heart-stopping action and exhilarating thrills. Ever since a devastating tornado encounter, Kate (Daisy Edgar-Jones) gave up chasing storms across the Oklahoma prairie to safely study them on screens in New York City. Lured back to the field by her friend Javi (Anthony Ramos) and a once-in-a-lifetime scientific opportunity, Kate crosses paths with Tyler (Glen Powell), a charming daredevil and self-proclaimed tornado wrangler whose thirst for tornado-tracking adventures made him a social media sensation. As storm season intensifies with terrifying phenomena unlike anything seen before, Kate and Tyler realize they may need to work together if they are to have any chance of taming, and surviving, an unprecedented outbreak of destructive tornados.','Lee Isaac Chung','Daisy Edgar-Jones, Glen Powell, Anthony Ramos, Brandon Perea, Maura Tierney, Sasha Lane','','posters/twisters2.jpg','posters/twisters1.jpg'),(11,'BAD BOYS','bad-boys','The world\'s favorite Bad Boys are back with their iconic mix of edge-of-your seat action and outrageous comedy but this time with a twist: Miami\'s finest are now on the run.','Adil El Arbi, Bilall Fallah','Will Smith, Martin Lawrence, Vanessa Hudgens, Alexander Ludwig, Paola Nuñez, Eric Dane, Ioan Gruffudd, Melanie Liburd, Tasha Smith, Tiffany Haddish, Joe Pantoliano, Jacob Scipio, Rhea Seehorn, Khaled (DJ Khaled) Khaled, John Salley','','posters/badboys2.jpg','posters/badboys1.jpg'),(12,'MATRIX','matrix','From visionary filmmaker Lana Wachowski comes “The Matrix Resurrections,” the long-awaited fourth film in the groundbreaking franchise that redefined a genre. The new film reunites original stars Keanu Reeves and Carrie-Anne Moss in the iconic roles they made famous, Neo and Trinity.','Lana Wachowski','Keanu Reeves, Carrie‐Anne Moss, Yahya Abdul Mateen II, Jessica Henwick, Jonathan Groff, Neil Patrick Harris, Christina Ricci, Eréndira Ibarra, Toby Onwumere, Max Riemelt, Brian J. Smith, Jada Pinkett Smith','','posters/matrix2.jpg','posters/matrix1.jpg'),(13,'AVENGERS','avengers','Marvel Studios unleashes the next global phenomenon in the Marvel Cinematic Universe – Marvel’s Avengers: Age of Ultron. Good intentions wreak havoc when Tony Stark (Robert Downey Jr.) unwittingly creates Ultron (James Spader), a terrifying A.I. monster who vows to achieve “world peace” via mass extinction. Now, Iron Man, Captain America (Chris Evans), Thor (Chris Hemsworth) and The Hulk (Mark Ruffalo) – alongside Black Widow (Scarlett Johansson), Hawkeye (Jeremy Renner) and Nick Fury (Samuel L. Jackson) – must reassemble to defeat Ultron and save mankind...if they can! This action-packed adventure is a mind-blowing blast!','Joss Whedon','Robert Downey Jr., Chris Hemsworth, Mark Ruffalo, Chris Evans, Scarlett Johansson, Jeremy Renner, Don Cheadle, Aaron Taylor-Johnson, Elizabeth Olsen, Paul Bettany, Cobie Smulders, Anthony Mackie','','posters/avengers2.jpg','posters/avengers1.jpg'),(14,'TERMINATOR','terminator','Terminator Salvation (Director\'s Cut) contains explosive additional footage not shown in theaters. The year is 2018. An army of Terminators roams the post-apocalyptic landscape, killing or collecting humans. But small groups of survivors have organized into a Resistance, hiding in underground bunkers and striking when they can. Controlling the Terminators is the artificial intelligence network Skynet, which became self-aware 14 years earlier and turned on its creators, unleashing nuclear annihilation. The world is on the brink of the future that John Connor (Christian Bale) has been warned about all his life. But something totally new has shaken his belief that humanity stands a chance of winning this war: the appearance of Marcus Wright (Sam Worthington), a stranger from the past. As Skynet adapts new strategies to end the Resistance forever, Connor and Marcus must find common ground to take a stand against the onslaught--to infiltrate Skynet and meet the enemy head-on.','McG','Christian Bale, Sam Worthington, Anton Yelchin, Moon Bloodgood, Bryce Dallas Howard, Common, Jane Alexander, Helena Bonham Carter, Michael Ironside, Jadagrace Berry','','posters/terminator2.jpg','posters/terminator1.jpg'),(18,'I AM LEGEND','i-am-legend','Will Smith stars in a sci-fi thriller from the director of Constantine--I Am Legend. After a biological war, Robert Neville is the last healthy human living on Earth, but he is not alone. The other humans have become vampire-like mutants, and all are hungry for Neville\'s blood. By day, he is the hunter, stalking the sleeping undead through the abandoned ruins of civilization. By night, he barricades himself in his home and prays for the dawn.','Francis Lawrence','Will Smith, Alice Braga, Charlie Tahan, Salli Richardson, Willow Smith','','posters/iamlegend2.jpg','posters/iamlegend1.jpg'),(19,'28 WEEKS LATER','28-weeks-later','This sequel to the original horror-thriller picks up six months after the military has declared Britain safe from the rage virus, but a terrifying new nightmare soon begins.','Juan Carlos Fresnadillo','Robert Carlyle, Rose Byrne, Jeremy Renner, Harold Perrineau, Catherine McCormack, Mackintosh Muggleton, Imogen Poots, Idris Elba','','posters/28weekslater2_4pBQhbC.jpg','posters/28weekslater1_HXNc8j2.jpg'),(20,'THE CREATOR','the-creator','Amidst a future war between the human race and the forces of artificial intelligence, Joshua (John David Washington), a hardened ex-special forces agent grieving the disappearance of his wife (Gemma Chan), is recruited to hunt down and kill the Creator, the elusive architect of advanced AI who has developed a mysterious weapon with the power to end the war — and humankind. Joshua and his team of elite operatives journey across enemy lines into the dark heart of AI-occupied territory, only to discover the world-ending weapon he’s been instructed to destroy is an AI in the form of a young child, in this epic sci-fi action thriller directed by Gareth Edwards (Rogue One: A Star Wars Story) from a screenplay by Edwards and Chris Weitz.','Gareth Edwards','John David Washington, Gemma Chan, Ken Watanabe, Sturgill Simpson, Amar Chadha-Patel, Amar Chadha-Patel, Amar Chadha-Patel, Ralph Ineson, Veronica Ngo, Marc Menchaca, Madeleine Yuna Voyles, Allison Janney, Michael Esper, Robbie Tann, Ian Verdun, Daniel Ray Rodriguez, Rad Pereira, Syd Skidmore, Karen Aldridge, Teerawat Mulvilai, Leanna Chea, Sahatchai Chumrum','','posters/thecreator2.jpg','posters/thecreator1.jpg'),(21,'AVATAR','avatar','Avatar takes us to the amazing world of Pandora, where a man embarks on an epic journey of adventure and love, ultimately fighting to save the unique place he has learned to call home. James Cameron, the Oscar®-winning director of Titanic, delivers an immersive cinematic experience, where revolutionary technology meets engaging characters in a timeless, emotional story.','James Cameron','Sam Worthington, Zoe Saldana, Stephen Lang, Michelle Rodriguez, Sigourney Weaver, Giovanni Ribisi','','posters/avatar2.jpg','posters/avatar1.jpg');
/*!40000 ALTER TABLE `movies_movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies_review`
--

DROP TABLE IF EXISTS `movies_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movies_review` (
  `id` tinyint(4) DEFAULT NULL,
  `reviewer_name` varchar(4) DEFAULT NULL,
  `rating` tinyint(4) DEFAULT NULL,
  `comment` text,
  `created_at` DATETIME DEFAULT NULL,
  `movie_id` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies_review`
--

LOCK TABLES `movies_review` WRITE;
/*!40000 ALTER TABLE `movies_review` DISABLE KEYS */;
INSERT INTO `movies_review` VALUES (34,'omar',5,'wow','2024-09-25',1);
/*!40000 ALTER TABLE `movies_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sqlite_sequence`
--

DROP TABLE IF EXISTS `sqlite_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sqlite_sequence` (
  `name` varchar(19) DEFAULT NULL,
  `seq` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sqlite_sequence`
--

LOCK TABLES `sqlite_sequence` WRITE;
/*!40000 ALTER TABLE `sqlite_sequence` DISABLE KEYS */;
INSERT INTO `sqlite_sequence` VALUES ('django_migrations',20),('django_admin_log',69),('django_content_type',8),('auth_permission',32),('auth_group',0),('auth_user',2),('movies_movie',21),('movies_review',34);
/*!40000 ALTER TABLE `sqlite_sequence` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-30 16:42:47
