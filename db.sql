-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssm1m683
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Current Database: `ssm1m683`
--

/*!40000 DROP DATABASE IF EXISTS `ssm1m683`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ssm1m683` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `ssm1m683`;

--
-- Table structure for table `caipufenlei`
--

DROP TABLE IF EXISTS `caipufenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `caipufenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `caipufenlei` varchar(200) NOT NULL COMMENT '菜谱分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `caipufenlei` (`caipufenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='菜谱分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caipufenlei`
--

LOCK TABLES `caipufenlei` WRITE;
/*!40000 ALTER TABLE `caipufenlei` DISABLE KEYS */;
INSERT INTO `caipufenlei` VALUES (21,'2022-02-20 04:07:59','菜谱分类1'),(22,'2022-02-20 04:07:59','菜谱分类2'),(23,'2022-02-20 04:07:59','菜谱分类3'),(24,'2022-02-20 04:07:59','菜谱分类4'),(25,'2022-02-20 04:07:59','菜谱分类5'),(26,'2022-02-20 04:07:59','菜谱分类6');
/*!40000 ALTER TABLE `caipufenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `caipuxinxi`
--

DROP TABLE IF EXISTS `caipuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `caipuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `caipinmingcheng` varchar(200) DEFAULT NULL COMMENT '菜品名称',
  `kouwei` varchar(200) DEFAULT NULL COMMENT '口味',
  `caipufenlei` varchar(200) DEFAULT NULL COMMENT '菜谱分类',
  `shiherenqun` varchar(200) DEFAULT NULL COMMENT '适合人群',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shicai` longtext COMMENT '食材',
  `yingyang` longtext COMMENT '营养',
  `zhizuobuzhou` longtext COMMENT '制作步骤',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='菜谱信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caipuxinxi`
--

LOCK TABLES `caipuxinxi` WRITE;
/*!40000 ALTER TABLE `caipuxinxi` DISABLE KEYS */;
INSERT INTO `caipuxinxi` VALUES (41,'2022-02-20 04:07:59','菜品名称1','口味1','菜谱分类1','适合人群1','upload/caipuxinxi_tupian1.jpg','食材1','营养1','制作步骤1','2022-02-20 12:07:59',1),(42,'2022-02-20 04:07:59','菜品名称2','口味2','菜谱分类2','适合人群2','upload/caipuxinxi_tupian2.jpg','食材2','营养2','制作步骤2','2022-02-20 12:17:53',4),(43,'2022-02-20 04:07:59','菜品名称3','口味3','菜谱分类3','适合人群3','upload/caipuxinxi_tupian3.jpg','食材3','营养3','制作步骤3','2022-02-20 12:07:59',3),(44,'2022-02-20 04:07:59','菜品名称4','口味4','菜谱分类4','适合人群4','upload/caipuxinxi_tupian4.jpg','食材4','营养4','制作步骤4','2022-02-20 12:07:59',4),(45,'2022-02-20 04:07:59','菜品名称5','口味5','菜谱分类5','适合人群5','upload/caipuxinxi_tupian5.jpg','食材5','营养5','制作步骤5','2022-02-20 12:07:59',5),(46,'2022-02-20 04:07:59','菜品名称6','口味6','菜谱分类6','适合人群6','upload/caipuxinxi_tupian6.jpg','食材6','营养6','制作步骤6','2022-02-20 12:07:59',6);
/*!40000 ALTER TABLE `caipuxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shicaifenlei`
--

DROP TABLE IF EXISTS `shicaifenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shicaifenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shicaifenlei` varchar(200) NOT NULL COMMENT '食材分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='食材分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shicaifenlei`
--

LOCK TABLES `shicaifenlei` WRITE;
/*!40000 ALTER TABLE `shicaifenlei` DISABLE KEYS */;
INSERT INTO `shicaifenlei` VALUES (31,'2022-02-20 04:07:59','食材分类1'),(32,'2022-02-20 04:07:59','食材分类2'),(33,'2022-02-20 04:07:59','食材分类3'),(34,'2022-02-20 04:07:59','食材分类4'),(35,'2022-02-20 04:07:59','食材分类5'),(36,'2022-02-20 04:07:59','食材分类6');
/*!40000 ALTER TABLE `shicaifenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shicaizhanshi`
--

DROP TABLE IF EXISTS `shicaizhanshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shicaizhanshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shicaimingcheng` varchar(200) NOT NULL COMMENT '食材名称',
  `shicaifenlei` varchar(200) NOT NULL COMMENT '食材分类',
  `shicaitupian` varchar(200) DEFAULT NULL COMMENT '食材图片',
  `shicaigongxiao` longtext COMMENT '食材功效',
  `shicaijieshao` longtext COMMENT '食材介绍',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='食材展示';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shicaizhanshi`
--

LOCK TABLES `shicaizhanshi` WRITE;
/*!40000 ALTER TABLE `shicaizhanshi` DISABLE KEYS */;
INSERT INTO `shicaizhanshi` VALUES (51,'2022-02-20 04:07:59','食材名称1','食材分类1','upload/shicaizhanshi_shicaitupian1.jpg','食材功效1','食材介绍1'),(52,'2022-02-20 04:07:59','食材名称2','食材分类2','upload/shicaizhanshi_shicaitupian2.jpg','食材功效2','食材介绍2'),(53,'2022-02-20 04:07:59','食材名称3','食材分类3','upload/shicaizhanshi_shicaitupian3.jpg','食材功效3','食材介绍3'),(54,'2022-02-20 04:07:59','食材名称4','食材分类4','upload/shicaizhanshi_shicaitupian4.jpg','食材功效4','食材介绍4'),(55,'2022-02-20 04:07:59','食材名称5','食材分类5','upload/shicaizhanshi_shicaitupian5.jpg','食材功效5','食材介绍5'),(56,'2022-02-20 04:07:59','食材名称6','食材分类6','upload/shicaizhanshi_shicaitupian6.jpg','食材功效6','食材介绍6');
/*!40000 ALTER TABLE `shicaizhanshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  `type` varchar(200) DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,11,'用户账号1','yonghu','用户','ljtcicpnujo6tuvj1pi6wrxjojb76k4w','2022-02-20 04:17:06','2022-02-20 05:17:06');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2022-02-20 04:07:59');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2022-02-20 04:07:59','用户账号1','用户姓名1','123456','男',1,'13823888881'),(12,'2022-02-20 04:07:59','用户账号2','用户姓名2','123456','男',2,'13823888882'),(13,'2022-02-20 04:07:59','用户账号3','用户姓名3','123456','男',3,'13823888883'),(14,'2022-02-20 04:07:59','用户账号4','用户姓名4','123456','男',4,'13823888884'),(15,'2022-02-20 04:07:59','用户账号5','用户姓名5','123456','男',5,'13823888885'),(16,'2022-02-20 04:07:59','用户账号6','用户姓名6','123456','男',6,'13823888886');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-20 14:56:33
