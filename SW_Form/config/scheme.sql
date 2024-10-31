-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: sw_forms
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cat_centros`
--

DROP TABLE IF EXISTS `cat_centros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cat_centros` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_prescriptor` int(11) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `edited_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `activo` int(1) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_centros`
--

LOCK TABLES `cat_centros` WRITE;
/*!40000 ALTER TABLE `cat_centros` DISABLE KEYS */;
INSERT INTO `cat_centros` VALUES (5,6,'HUCAB','2022-01-29 01:32:04',NULL,1),(6,7,'CABUEÑES','2022-02-14 12:13:38',NULL,1),(7,8,'HOSPITAL DE CABUEÑES','2022-03-09 13:10:27',NULL,1),(8,9,'HOSPITAL UNIVERSITARIO VILLALBA','2022-05-04 15:15:54',NULL,1),(9,10,'HOSPITAL SANT JOAN DE DEU','2022-06-02 13:04:17',NULL,1),(10,11,'HOSPITAL JOSEP TRUETA DE GIRONA','2022-09-09 11:42:24',NULL,1),(11,12,'HOSPITAL UNIVERSITARIO DE CANARIAS','2022-09-09 12:12:24',NULL,1),(12,13,'Hospital General Universitario de Castellon','2022-09-12 08:23:04',NULL,1),(13,14,'HOSPITAL DE CABUEÑES','2022-10-19 19:34:23',NULL,1),(14,15,'HOSPITAL UNIVERSITARIO 12 DE OCTUBRE','2022-11-23 08:13:45',NULL,1);
/*!40000 ALTER TABLE `cat_centros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cat_distribuidores`
--

DROP TABLE IF EXISTS `cat_distribuidores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cat_distribuidores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_fileMaker` varchar(10) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `CIF` varchar(50) DEFAULT NULL,
  `contacto` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `email_facturacion` varchar(150) DEFAULT NULL,
  `direccion` text DEFAULT NULL,
  `poblacion` varchar(100) DEFAULT NULL,
  `provincia` varchar(100) DEFAULT NULL,
  `pais` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `edit_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `activo` int(1) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_distribuidores`
--

LOCK TABLES `cat_distribuidores` WRITE;
/*!40000 ALTER TABLE `cat_distribuidores` DISABLE KEYS */;
INSERT INTO `cat_distribuidores` VALUES (3,'1','Acuña y Fombona','A33620485','985363211','afom@acuna-fombona.com','info@pimakerovd.com','Marqués de Casa Valdés, 103-105 / 33202','Gijón','Asturias','España','2022-01-29 01:30:10','2022-02-14 12:12:56',1);
/*!40000 ALTER TABLE `cat_distribuidores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cat_estatus`
--

DROP TABLE IF EXISTS `cat_estatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cat_estatus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `edited_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `activo` int(1) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_estatus`
--

LOCK TABLES `cat_estatus` WRITE;
/*!40000 ALTER TABLE `cat_estatus` DISABLE KEYS */;
INSERT INTO `cat_estatus` VALUES (1,'Pendiente','2021-11-30 01:28:28',NULL,1),(2,'Procesado','2021-11-30 02:33:37',NULL,1),(3,'Terminado','2021-11-30 02:33:45',NULL,1),(4,'Cancelado','2021-11-30 02:33:48',NULL,1),(5,'Sin Archivo','2021-12-15 23:43:52',NULL,1);
/*!40000 ALTER TABLE `cat_estatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cat_perfiles`
--

DROP TABLE IF EXISTS `cat_perfiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cat_perfiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `edited_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `activo` int(1) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_perfiles`
--

LOCK TABLES `cat_perfiles` WRITE;
/*!40000 ALTER TABLE `cat_perfiles` DISABLE KEYS */;
INSERT INTO `cat_perfiles` VALUES (1,'Administrador','2021-11-25 21:49:26',NULL,1),(2,'Supervisor','2021-11-25 21:49:37',NULL,1),(3,'Comercial','2021-11-25 21:49:41','2021-11-27 15:17:06',1),(4,'Administrativo','2022-02-15 23:19:40',NULL,1);
/*!40000 ALTER TABLE `cat_perfiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cat_prescriptor`
--

DROP TABLE IF EXISTS `cat_prescriptor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cat_prescriptor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_distribuidor` int(11) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `colegiado` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `edited_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `activo` int(1) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_prescriptor`
--

LOCK TABLES `cat_prescriptor` WRITE;
/*!40000 ALTER TABLE `cat_prescriptor` DISABLE KEYS */;
INSERT INTO `cat_prescriptor` VALUES (6,3,'Angel','01','angel','2022-01-29 01:31:22',NULL,1),(7,3,'ALVARO LOSANTOS','AF','tino.quiros@acuna-fombona.com','2022-02-14 12:12:57',NULL,1),(8,3,'DR. PIÑERA','33/3805673','info@drpinera.es','2022-03-09 13:10:04',NULL,1),(9,3,'FELIX TOME BERMEJO','50001','quini.lucas@acuna-fombona.com','2022-05-04 15:15:16',NULL,1),(10,3,'ALEJANDRO PEIRO GARCIA','56332','peigara@gmail.com','2022-06-02 13:02:23','2022-06-02 13:07:43',1),(11,3,'ANTONIA MATAMALAS ADROVRE','40039','juan.fernandez@acuna-fombona.com','2022-09-09 11:41:49','2022-09-09 12:06:47',1),(12,3,'BERNABE RAFAEL DENIZ RODRIGUEZ','04142','victor.garcia@acuna-fombona.com','2022-09-09 12:10:32',NULL,1),(13,3,'Juan José Valls Vilalta','1204866','victor.garcia@acuna-fombona.com','2022-09-12 08:22:46',NULL,1),(14,3,'Dr. Miguel Angel Suárez Suárez ','333308005','marcos.muniz@acuna-fombona.com','2022-10-19 19:33:57',NULL,1),(15,3,'MARIA TERESA MENENDEZ CRESPO','2852781','lourdes.gomez@acuna-fombona.com','2022-11-23 08:13:06',NULL,1);
/*!40000 ALTER TABLE `cat_prescriptor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `config` (
  `serverDatos` text DEFAULT NULL,
  `serverSMTP` varchar(100) DEFAULT NULL,
  `userSMTP` varchar(100) DEFAULT NULL,
  `passSMTP` varchar(100) DEFAULT NULL,
  `portSMTP` int(5) DEFAULT NULL,
  `emailAdmin` varchar(100) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `debug` int(1) DEFAULT NULL,
  `rangoIP` varchar(50) DEFAULT NULL,
  `ip` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES ('C:\\SurgicalWorks','mail.surgicalworks.es','pedidos@surgicalworks.es','RBApKYKUG()&',465,'info@surgicalworks.es','127.0.0.1',0,'127.0.1.x',0);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_comercial` int(11) DEFAULT NULL,
  `id_prescriptor` int(11) DEFAULT NULL,
  `id_centro` int(1) DEFAULT NULL,
  `id_cat_estatus` int(1) DEFAULT 1,
  `nombrePaciente` varchar(50) DEFAULT NULL,
  `apellidos` varchar(50) DEFAULT NULL,
  `numHistorialPaciente` varchar(10) DEFAULT NULL,
  `numEstudio` varchar(50) DEFAULT NULL,
  `fechaEstudio` date DEFAULT NULL,
  `fechaCirugia` date DEFAULT NULL,
  `archivo` text DEFAULT NULL,
  `descripcionCirugia` text DEFAULT NULL,
  `c1` int(1) DEFAULT NULL,
  `c2` int(1) DEFAULT NULL,
  `c3` int(1) DEFAULT NULL,
  `c4` int(1) DEFAULT NULL,
  `c5` int(1) DEFAULT NULL,
  `c6` int(1) DEFAULT NULL,
  `c7` int(1) DEFAULT NULL,
  `t1` int(1) DEFAULT NULL,
  `t2` int(1) DEFAULT NULL,
  `t3` int(1) DEFAULT NULL,
  `t4` int(1) DEFAULT NULL,
  `t5` int(1) DEFAULT NULL,
  `t6` int(1) DEFAULT NULL,
  `t7` int(1) DEFAULT NULL,
  `t8` int(1) DEFAULT NULL,
  `t9` int(1) DEFAULT NULL,
  `t10` int(1) DEFAULT NULL,
  `t11` int(1) DEFAULT NULL,
  `t12` int(1) DEFAULT NULL,
  `t13` int(1) DEFAULT NULL,
  `l1` int(1) DEFAULT NULL,
  `l2` int(1) DEFAULT NULL,
  `l3` int(1) DEFAULT NULL,
  `l4` int(1) DEFAULT NULL,
  `l5` int(1) DEFAULT NULL,
  `l6` int(1) DEFAULT NULL,
  `s1` int(1) DEFAULT NULL,
  `sacroili` int(1) DEFAULT NULL,
  `ili` int(1) DEFAULT NULL,
  `numpedido` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `edited_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `activo` int(1) DEFAULT 1,
  `link` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (35,2,6,5,5,'Elpaciente','pacon pacon','HCAB-01','1','2022-01-31','2022-02-01',NULL,'Escoliosis',0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,NULL,'2022-01-29 01:33:38','2022-02-14 11:41:25',0,NULL),(36,5,7,6,2,'PACIENTE 109 # ','PACIENTE 109 # ','2072783','4233','2021-12-14','2022-02-28','PACIENTE109 # PACIENTE 109 # _42332022214122355.zip','ESCOLIOSIS',0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,NULL,'2022-02-14 12:17:22','2022-06-08 10:51:09',0,NULL),(37,6,8,7,0,'Spine F ','','7D','bc10bb9e-a','2022-04-13','2022-04-13','ILDEFONSOPABLOSMUÑOZ _4776420223913245.zip','dsfsdafsdaf',0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL,'2022-03-09 13:22:40','2022-04-07 13:12:30',1,NULL),(38,6,8,7,3,'FERNANDO LUIS FERNANDEZ NORIEGA','','HCAB326420','46498','2022-02-04','2022-04-20','FERNANDOLUIS FERNANDEZ NORIEGA_4649820224121356.zip','Cirugía torácica.',0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,NULL,'2022-04-12 13:04:24','2024-09-17 12:03:45',1,'http://212.73.134.130:8080/myapp/#/client/b3RoZXJob3N0AGMAZGVmYXVsdA'),(39,6,9,8,1,'BELEN BELLON JIMENEZ ','','89326','HGV2022055','2022-04-25','2022-05-24','BELENBELLON JIMENEZ _HGV202205520225581918.zip','DEFORMIDAD',0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,NULL,'2022-05-04 18:14:00','2024-09-17 12:03:45',0,''),(40,6,9,8,1,'BELEN BELLON JIMENEZ ','','89326','HGV2022055','2022-04-25','2022-05-24','BELENBELLON JIMENEZ _HGV20220552022558376.zip','DEFORMIDAD',0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,NULL,'2022-05-05 08:33:35','2024-09-24 00:36:56',0,'http://212.73.134.130:8080/myapp/#/client/b3RoZXJob3N0AGMAZGVmYXVsdA'),(41,6,9,8,3,'BELEN BELLON JIMENEZ ','','89326','2022055240','2022-04-25','2022-05-24',NULL,'DEFORMIDAD. EL NUMERO DE ESTUDIO ES HGV20220552402 LO PONGO AQUI PORQUE NO ENTRA EN EL CAMPO.',0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,NULL,'2022-05-05 10:10:32','2024-09-24 00:37:40',1,'http://212.73.134.130:8080/myapp/#/client/b3RoZXJob3N0AGMAZGVmYXVsdA'),(42,6,10,9,3,'SHARON MICHEL PARADA TIBOCHE','','1720118','1737774','2022-04-01','2022-06-27',NULL,'FUSION CERVICOTORACICA',0,0,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL,'2022-06-02 13:07:54','2022-07-01 10:31:19',1,NULL),(43,6,9,8,3,'SOFIA NOGUERAS MOKRANE','','315875','0220444115','2022-03-31','2022-06-28',NULL,'DEFORMIDAD. ENVIO TAC POR MAIL',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL,'2022-06-08 09:32:37','2022-07-01 10:31:25',1,NULL),(44,6,8,7,3,'ADOLFO GONZALEZ ALVAREZ ','','HCAB146898','3196','2022-07-18','2022-07-28','ADOLFOGONZALEZ ALVAREZ _319620227221105.zip','Cirugía cervical',1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL,'2022-07-22 10:59:10','2022-07-29 12:08:23',1,NULL),(45,6,8,7,3,'DANIEL RODRIGUEZ IGLESIAS','','HCAB506538','3482','2022-07-25','2022-08-03',NULL,'Deformidad',0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,NULL,'2022-07-29 10:53:47','2022-09-13 08:48:00',1,NULL),(46,6,11,10,0,'MARIA DEL CARME VICENS FARRERAS','','10733153','6968','2022-08-11','2022-09-28',NULL,'SEGMENTO ADYACENTE SOBRE MASA DE FUSIÓN NO INSTRUMENTADA L4-S1. REQUERIMOS GUIAS PARA EL SEGMENTO FUSIONADO. ',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1,1,0,0,0,0,NULL,'2022-09-09 11:45:03','2022-09-09 11:48:32',1,NULL),(47,6,11,10,0,'MARIA DEL CARME VICENS FARRERAS','','10733153','6968','2022-08-11','2022-09-28',NULL,'SEGMENTO ADYACENTE SOBRE MASA DE FUSIÓN NO INSTRUMENTADA L4-S1. REQUERIMOS GUIAS PARA EL SEGMENTO FUSIONADO. ',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1,1,0,0,0,0,NULL,'2022-09-09 11:49:42','2022-09-09 12:06:58',1,NULL),(48,6,11,10,5,'MARIA DEL CARME VICENS FARRERAS','','10733153','6968','2022-08-11','2022-09-28',NULL,'SEGMENTO ADYACENTE SOBRE MASA DE FUSIÓN NO INSTRUMENTADA L4-S1. REQUERIMOS GUIAS PARA EL SEGMENTO FUSIONADO. ',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1,1,0,0,0,0,NULL,'2022-09-09 12:09:03',NULL,1,NULL),(49,6,12,11,1,'Lopez Pulido Thirma Angelica','','1989029920','7541264','2022-08-12','2022-10-18','LopezPulido Thirma Angelica_7541264202299121514.zip','ARTRODESIS INSTRUMENTADA POSTERIOR',1,1,1,1,1,1,0,1,1,1,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,1,0,0,1,NULL,'2022-09-09 12:14:14','2022-09-09 12:15:15',1,NULL),(50,6,13,12,5,'Eva Miravete Rodriguez ','','363454','0150310011','2022-08-23','2022-10-03',NULL,'Artrodesis torácica por escoliosis del adolescente',0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,NULL,'2022-09-12 08:31:14',NULL,1,NULL),(51,6,14,13,5,'ORFELINA SUAREZ SUAREZ ','','HCAB103459','47235','2022-02-21','2022-11-02',NULL,'TAC Enviado por correo.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL,'2022-10-19 19:35:44',NULL,1,NULL),(52,6,15,14,5,'PAULA ARRABAL LOPEZ','','4482884','1185','2022-11-16','2022-12-13',NULL,'ARTRODESIS POSTERIOR T3-L3 O L4 POR ESCOLIOSIS SINDRÓMICA',0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,NULL,'2022-11-23 08:34:07',NULL,1,NULL);
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uploads`
--

DROP TABLE IF EXISTS `uploads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uploads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `org` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `activated` tinyint(4) NOT NULL DEFAULT 0,
  `deleted` tinyint(4) NOT NULL DEFAULT 0,
  `pedido` int(11) NOT NULL DEFAULT 0,
  `mimetype` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uploads`
--

LOCK TABLES `uploads` WRITE;
/*!40000 ALTER TABLE `uploads` DISABLE KEYS */;
INSERT INTO `uploads` VALUES (49,'739852.txt','Story_TheIntercept_BeforeJSON.txt',1,0,38,'text/plain'),(48,'620039.mrb','38.mrb',1,0,49,'application/octet-stream');
/*!40000 ALTER TABLE `uploads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_perfil` int(1) DEFAULT NULL,
  `id_distribuidor` int(1) DEFAULT NULL,
  `nombre` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `apaterno` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `amaterno` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `DNI` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `usuario` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `passwd` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `email1` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `tel1` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `distribuidor` varchar(100) DEFAULT NULL,
  `cargo` varchar(100) DEFAULT NULL,
  `primera` int(1) DEFAULT 1,
  `error` int(11) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  `edited_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `activo` int(1) DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `id_perfil` (`id_perfil`),
  CONSTRAINT `fk_perfil` FOREIGN KEY (`id_perfil`) REFERENCES `cat_perfiles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,1,0,'Ernest','Mar','Cald','e32232','root','7C4A8D09CA3762AF61E59520943DC26494F8941B','ernie.martzc@gmail.com','',NULL,NULL,0,7,'2021-11-25 21:50:18','2024-09-14 10:04:42',1),(2,2,0,'Supervisor','SW','SW','ELCIF','Supervisor','7C4A8D09CA3762AF61E59520943DC26494F8941B','info@surgicalworks.es','984297258',NULL,NULL,0,2,'2022-01-29 01:25:23','2024-09-09 18:44:19',1),(3,3,3,'Angel R','Piñera','Parrilla','71638219G','71638219','7C4A8D09CA3762AF61E59520943DC26494F8941B','arpinerap@gmail.com','605550613',NULL,NULL,0,0,'2022-02-01 22:48:08','2024-09-09 18:44:23',1),(4,3,3,'Comercial','Comercial','Comercial','Comercial','Comercial','7C4A8D09CA3762AF61E59520943DC26494F8941B','a','a',NULL,NULL,1,0,'2022-02-03 16:23:37','2024-09-09 18:44:26',1),(5,3,3,'Tino','Quiros','Nieto','11440212N','11440212','7C4A8D09CA3762AF61E59520943DC26494F8941B','tino.quiros@acuna-fombona.com','689621002','Acuña y Fombona','Comercial',0,0,'2022-02-14 12:03:22','2024-09-09 18:44:29',1),(6,3,3,'Isabel','Tabajara','Da Cunha','Y6347378J','6347378','7C4A8D09CA3762AF61E59520943DC26494F8941B','isabel.cunha@acuna-fombona.com','985363211','Acuña y Fombona S.A.','Soporte Columna',0,1,'2022-03-09 12:30:02','2024-09-09 18:44:33',1);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'sw_forms'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-30 15:30:43
