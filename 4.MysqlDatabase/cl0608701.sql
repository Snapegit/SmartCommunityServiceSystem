-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: cl0608701
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
-- Current Database: `cl0608701`
--

/*!40000 DROP DATABASE IF EXISTS `cl0608701`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `cl0608701` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `cl0608701`;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `phone` varchar(200) DEFAULT NULL COMMENT '电话',
  `isdefault` varchar(200) DEFAULT NULL COMMENT '是否默认地址',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) DEFAULT NULL COMMENT '收货人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1708851754747 DEFAULT CHARSET=utf8 COMMENT='地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'2024-02-25 08:39:14','19819881111','是',11,'地址1','张三'),(2,'2024-02-25 08:39:14','19819882222','是',12,'地址2','李四'),(3,'2024-02-25 08:39:14','19819883333','是',13,'地址3','王五'),(4,'2024-02-25 08:39:14','19819884444','是',14,'地址4','赵六'),(5,'2024-02-25 08:39:14','19819885555','是',15,'地址5','孙七'),(6,'2024-02-25 08:39:14','19819886666','是',16,'地址6','周八'),(1708851754746,'2024-02-25 09:02:34','13612312312','是',1708851724216,'广州大道2号','小王');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT NULL COMMENT '商品表名',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` longtext NOT NULL COMMENT '图片',
  `buynumber` int(11) DEFAULT NULL COMMENT '购买数量',
  `price` double DEFAULT NULL COMMENT '单价',
  `discountprice` double DEFAULT NULL COMMENT '折扣价',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `shangjiazhanghao` varchar(200) DEFAULT NULL COMMENT '商户名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1708852205856 DEFAULT CHARSET=utf8 COMMENT='购物车';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cheliangchuchang`
--

DROP TABLE IF EXISTS `cheliangchuchang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cheliangchuchang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tingchechangmingcheng` varchar(200) DEFAULT NULL COMMENT '停车场名称',
  `cheweishu` int(11) DEFAULT NULL COMMENT '车位数',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `chezhu` varchar(200) DEFAULT NULL COMMENT '车主',
  `jiage` longtext COMMENT '每小时价',
  `tingcheshizhang` int(11) DEFAULT NULL COMMENT '停车时长',
  `tingchefei` varchar(200) DEFAULT NULL COMMENT '停车费',
  `wuyezhanghao` varchar(200) DEFAULT NULL COMMENT '物业账号',
  `wuyexingming` varchar(200) DEFAULT NULL COMMENT '物业姓名',
  `chuchangshijian` datetime DEFAULT NULL COMMENT '出场时间',
  `ispay` varchar(200) DEFAULT NULL COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1708852286103 DEFAULT CHARSET=utf8 COMMENT='车辆出场';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cheliangchuchang`
--

LOCK TABLES `cheliangchuchang` WRITE;
/*!40000 ALTER TABLE `cheliangchuchang` DISABLE KEYS */;
INSERT INTO `cheliangchuchang` VALUES (211,'2024-02-25 08:39:14','停车场名称1',1,'类型1','车主1','每小时价1',1,'停车费1','物业账号1','物业姓名1','2024-02-25 16:39:14','未支付'),(212,'2024-02-25 08:39:14','停车场名称2',2,'类型2','车主2','每小时价2',2,'停车费2','物业账号2','物业姓名2','2024-02-25 16:39:14','未支付'),(213,'2024-02-25 08:39:14','停车场名称3',3,'类型3','车主3','每小时价3',3,'停车费3','物业账号3','物业姓名3','2024-02-25 16:39:14','未支付'),(214,'2024-02-25 08:39:14','停车场名称4',4,'类型4','车主4','每小时价4',4,'停车费4','物业账号4','物业姓名4','2024-02-25 16:39:14','未支付'),(215,'2024-02-25 08:39:14','停车场名称5',5,'类型5','车主5','每小时价5',5,'停车费5','物业账号5','物业姓名5','2024-02-25 16:39:14','未支付'),(216,'2024-02-25 08:39:14','停车场名称6',6,'类型6','车主6','每小时价6',6,'停车费6','物业账号6','物业姓名6','2024-02-25 16:39:14','未支付'),(1708852286102,'2024-02-25 09:11:25','美好停车场',1,'室内停车场','1','5',2,'10.00','3','3','2024-02-25 17:11:21','已支付');
/*!40000 ALTER TABLE `cheliangchuchang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cheliangruchang`
--

DROP TABLE IF EXISTS `cheliangruchang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cheliangruchang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tingchechangmingcheng` varchar(200) DEFAULT NULL COMMENT '停车场名称',
  `cheweishu` int(11) NOT NULL COMMENT '车位数',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `chezhu` varchar(200) DEFAULT NULL COMMENT '车主',
  `jiage` longtext COMMENT '每小时价',
  `ruchangshijian` datetime DEFAULT NULL COMMENT '入场时间',
  `wuyezhanghao` varchar(200) DEFAULT NULL COMMENT '物业账号',
  `wuyexingming` varchar(200) DEFAULT NULL COMMENT '物业姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1708852181469 DEFAULT CHARSET=utf8 COMMENT='车辆入场';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cheliangruchang`
--

LOCK TABLES `cheliangruchang` WRITE;
/*!40000 ALTER TABLE `cheliangruchang` DISABLE KEYS */;
INSERT INTO `cheliangruchang` VALUES (221,'2024-02-25 08:39:14','停车场名称1',1,'类型1','车主1','每小时价1','2024-02-25 16:39:14','物业账号1','物业姓名1'),(222,'2024-02-25 08:39:14','停车场名称2',2,'类型2','车主2','每小时价2','2024-02-25 16:39:14','物业账号2','物业姓名2'),(223,'2024-02-25 08:39:14','停车场名称3',3,'类型3','车主3','每小时价3','2024-02-25 16:39:14','物业账号3','物业姓名3'),(224,'2024-02-25 08:39:14','停车场名称4',4,'类型4','车主4','每小时价4','2024-02-25 16:39:14','物业账号4','物业姓名4'),(225,'2024-02-25 08:39:14','停车场名称5',5,'类型5','车主5','每小时价5','2024-02-25 16:39:14','物业账号5','物业姓名5'),(226,'2024-02-25 08:39:14','停车场名称6',6,'类型6','车主6','每小时价6','2024-02-25 16:39:14','物业账号6','物业姓名6'),(1708852181468,'2024-02-25 09:09:41','美好停车场',1,'室内停车场','1','5','2024-02-25 17:09:39','3','3');
/*!40000 ALTER TABLE `cheliangruchang` ENABLE KEYS */;
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
INSERT INTO `config` VALUES (1,'swiper1','file/swiperPicture1.jpg'),(2,'swiper2','file/1708852152355.jpg'),(3,'swiper3','file/swiperPicture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussshangpinxinxi`
--

DROP TABLE IF EXISTS `discussshangpinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussshangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1708852467852 DEFAULT CHARSET=utf8 COMMENT='商品信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussshangpinxinxi`
--

LOCK TABLES `discussshangpinxinxi` WRITE;
/*!40000 ALTER TABLE `discussshangpinxinxi` DISABLE KEYS */;
INSERT INTO `discussshangpinxinxi` VALUES (1708852467851,'2024-02-25 09:14:27',1708851840852,1708851724216,'file/1708851712876.jpeg','1','购买完可以评价','回复');
/*!40000 ALTER TABLE `discussshangpinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `duijiangxinxi`
--

DROP TABLE IF EXISTS `duijiangxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `duijiangxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yezhuzhanghao` varchar(200) DEFAULT NULL COMMENT '业主账号',
  `yezhuxingming` varchar(200) DEFAULT NULL COMMENT '业主姓名',
  `loudonghao` varchar(200) DEFAULT NULL COMMENT '楼栋号',
  `loufanghao` varchar(200) DEFAULT NULL COMMENT '楼房号',
  `duijiangneirong` longtext COMMENT '对讲内容',
  `yuyin` longtext COMMENT '语音',
  `duijiangren` varchar(200) DEFAULT NULL COMMENT '对讲人',
  `duijiangshijian` datetime DEFAULT NULL COMMENT '对讲时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1708852350579 DEFAULT CHARSET=utf8 COMMENT='对讲信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `duijiangxinxi`
--

LOCK TABLES `duijiangxinxi` WRITE;
/*!40000 ALTER TABLE `duijiangxinxi` DISABLE KEYS */;
INSERT INTO `duijiangxinxi` VALUES (251,'2024-02-25 08:39:14','业主账号1','业主姓名1','楼栋号1','楼房号1','对讲内容1','','对讲人1','2024-02-25 16:39:14'),(252,'2024-02-25 08:39:14','业主账号2','业主姓名2','楼栋号2','楼房号2','对讲内容2','','对讲人2','2024-02-25 16:39:14'),(253,'2024-02-25 08:39:14','业主账号3','业主姓名3','楼栋号3','楼房号3','对讲内容3','','对讲人3','2024-02-25 16:39:14'),(254,'2024-02-25 08:39:14','业主账号4','业主姓名4','楼栋号4','楼房号4','对讲内容4','','对讲人4','2024-02-25 16:39:14'),(255,'2024-02-25 08:39:14','业主账号5','业主姓名5','楼栋号5','楼房号5','对讲内容5','','对讲人5','2024-02-25 16:39:14'),(256,'2024-02-25 08:39:14','业主账号6','业主姓名6','楼栋号6','楼房号6','对讲内容6','','对讲人6','2024-02-25 16:39:14'),(1708852350578,'2024-02-25 09:12:29','1','1','2栋','203','内容','file/1708852347046.m4a','客人','2024-02-25 17:12:13');
/*!40000 ALTER TABLE `duijiangxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fangwuxinxi`
--

DROP TABLE IF EXISTS `fangwuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fangwuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangwumingcheng` varchar(200) NOT NULL COMMENT '房屋名称',
  `fangwutupian` longtext COMMENT '房屋图片',
  `fangwuleixing` varchar(200) NOT NULL COMMENT '房屋类型',
  `fangwumianji` varchar(200) DEFAULT NULL COMMENT '房屋面积',
  `fangwudizhi` varchar(200) DEFAULT NULL COMMENT '房屋地址',
  `fangwujieshao` longtext COMMENT '房屋介绍',
  `wuyezhanghao` varchar(200) DEFAULT NULL COMMENT '物业账号',
  `wuyexingming` varchar(200) DEFAULT NULL COMMENT '物业姓名',
  `storeupnum` int(11) DEFAULT NULL COMMENT '收藏数量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=utf8 COMMENT='房屋信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fangwuxinxi`
--

LOCK TABLES `fangwuxinxi` WRITE;
/*!40000 ALTER TABLE `fangwuxinxi` DISABLE KEYS */;
INSERT INTO `fangwuxinxi` VALUES (161,'2024-02-25 08:39:14','房屋名称1','file/fangwuxinxiFangwutupian1.jpg,file/fangwuxinxiFangwutupian2.jpg,file/fangwuxinxiFangwutupian3.jpg','房屋类型1','房屋面积1','房屋地址1','房屋介绍1','物业账号1','物业姓名1',2),(162,'2024-02-25 08:39:14','房屋名称2','file/fangwuxinxiFangwutupian2.jpg,file/fangwuxinxiFangwutupian3.jpg,file/fangwuxinxiFangwutupian4.jpg','房屋类型2','房屋面积2','房屋地址2','房屋介绍2','物业账号2','物业姓名2',2),(163,'2024-02-25 08:39:14','房屋名称3','file/fangwuxinxiFangwutupian3.jpg,file/fangwuxinxiFangwutupian4.jpg,file/fangwuxinxiFangwutupian5.jpg','房屋类型3','房屋面积3','房屋地址3','房屋介绍3','物业账号3','物业姓名3',3),(164,'2024-02-25 08:39:14','房屋名称4','file/fangwuxinxiFangwutupian4.jpg,file/fangwuxinxiFangwutupian5.jpg,file/fangwuxinxiFangwutupian6.jpg','房屋类型4','房屋面积4','房屋地址4','房屋介绍4','物业账号4','物业姓名4',4),(165,'2024-02-25 08:39:14','房屋名称5','file/fangwuxinxiFangwutupian5.jpg,file/fangwuxinxiFangwutupian6.jpg,file/fangwuxinxiFangwutupian7.jpg','房屋类型5','房屋面积5','房屋地址5','房屋介绍5','物业账号5','物业姓名5',5),(166,'2024-02-25 08:39:14','房屋名称6','file/fangwuxinxiFangwutupian6.jpg,file/fangwuxinxiFangwutupian7.jpg,file/fangwuxinxiFangwutupian8.jpg','房屋类型6','房屋面积6','房屋地址6','房屋介绍6','物业账号6','物业姓名6',6);
/*!40000 ALTER TABLE `fangwuxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiankongshebei`
--

DROP TABLE IF EXISTS `jiankongshebei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiankongshebei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shebeibianhao` varchar(200) DEFAULT NULL COMMENT '设备编号',
  `shebeimingcheng` varchar(200) DEFAULT NULL COMMENT '设备名称',
  `shebeishuliang` int(11) DEFAULT NULL COMMENT '设备数量',
  `shebeitupian` longtext COMMENT '设备图片',
  `yongtu` longtext COMMENT '用途',
  `shebeicanshu` longtext COMMENT '设备参数',
  `jiankongluxiang` longtext COMMENT '监控录像',
  `anzhuangweizhi` varchar(200) DEFAULT NULL COMMENT '安装位置',
  `yunxingzhuangtai` longtext COMMENT '运行状态',
  `jiankongriqi` datetime DEFAULT NULL COMMENT '监控日期',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shebeimingcheng` (`shebeimingcheng`)
) ENGINE=InnoDB AUTO_INCREMENT=1708852127883 DEFAULT CHARSET=utf8 COMMENT='监控设备';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiankongshebei`
--

LOCK TABLES `jiankongshebei` WRITE;
/*!40000 ALTER TABLE `jiankongshebei` DISABLE KEYS */;
INSERT INTO `jiankongshebei` VALUES (241,'2024-02-25 08:39:14','设备编号1','设备名称1',1,'file/jiankongshebeiShebeitupian1.jpg,file/jiankongshebeiShebeitupian2.jpg,file/jiankongshebeiShebeitupian3.jpg','用途1','设备参数1','','安装位置1','运行状态1','2024-02-25 16:39:14'),(242,'2024-02-25 08:39:14','设备编号2','设备名称2',2,'file/jiankongshebeiShebeitupian2.jpg,file/jiankongshebeiShebeitupian3.jpg,file/jiankongshebeiShebeitupian4.jpg','用途2','设备参数2','','安装位置2','运行状态2','2024-02-25 16:39:14'),(243,'2024-02-25 08:39:14','设备编号3','设备名称3',3,'file/jiankongshebeiShebeitupian3.jpg,file/jiankongshebeiShebeitupian4.jpg,file/jiankongshebeiShebeitupian5.jpg','用途3','设备参数3','','安装位置3','运行状态3','2024-02-25 16:39:14'),(244,'2024-02-25 08:39:14','设备编号4','设备名称4',4,'file/jiankongshebeiShebeitupian4.jpg,file/jiankongshebeiShebeitupian5.jpg,file/jiankongshebeiShebeitupian6.jpg','用途4','设备参数4','','安装位置4','运行状态4','2024-02-25 16:39:14'),(245,'2024-02-25 08:39:14','设备编号5','设备名称5',5,'file/jiankongshebeiShebeitupian5.jpg,file/jiankongshebeiShebeitupian6.jpg,file/jiankongshebeiShebeitupian7.jpg','用途5','设备参数5','','安装位置5','运行状态5','2024-02-25 16:39:14'),(246,'2024-02-25 08:39:14','设备编号6','设备名称6',6,'file/jiankongshebeiShebeitupian6.jpg,file/jiankongshebeiShebeitupian7.jpg,file/jiankongshebeiShebeitupian8.jpg','用途6','设备参数6','','安装位置6','运行状态6','2024-02-25 16:39:14'),(1708852127882,'2024-02-25 09:08:47','5555','电梯监控',2,'file/1708852098647.png','用途','参数','file/1708852108049.mp4','电梯','正常','2024-02-25 00:00:00');
/*!40000 ALTER TABLE `jiankongshebei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaofeileixing`
--

DROP TABLE IF EXISTS `jiaofeileixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaofeileixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaofeileixing` varchar(200) NOT NULL COMMENT '缴费类型',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiaofeileixing` (`jiaofeileixing`)
) ENGINE=InnoDB AUTO_INCREMENT=1708851944345 DEFAULT CHARSET=utf8 COMMENT='缴费类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaofeileixing`
--

LOCK TABLES `jiaofeileixing` WRITE;
/*!40000 ALTER TABLE `jiaofeileixing` DISABLE KEYS */;
INSERT INTO `jiaofeileixing` VALUES (171,'2024-02-25 08:39:14','缴费类型1'),(172,'2024-02-25 08:39:14','缴费类型2'),(173,'2024-02-25 08:39:14','缴费类型3'),(174,'2024-02-25 08:39:14','缴费类型4'),(175,'2024-02-25 08:39:14','缴费类型5'),(176,'2024-02-25 08:39:14','缴费类型6'),(1708851944344,'2024-02-25 09:05:43','停车费');
/*!40000 ALTER TABLE `jiaofeileixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaofeixinxi`
--

DROP TABLE IF EXISTS `jiaofeixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaofeixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaofeibianhao` varchar(200) DEFAULT NULL COMMENT '缴费编号',
  `yezhuzhanghao` varchar(200) NOT NULL COMMENT '业主账号',
  `yezhuxingming` varchar(200) DEFAULT NULL COMMENT '业主姓名',
  `jiaofeileixing` varchar(200) NOT NULL COMMENT '缴费类型',
  `jine` double NOT NULL COMMENT '金额',
  `jiaofeishijian` datetime DEFAULT NULL COMMENT '缴费时间',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `ispay` varchar(200) DEFAULT NULL COMMENT '是否支付',
  `wuyezhanghao` varchar(200) DEFAULT NULL COMMENT '物业账号',
  `wuyexingming` varchar(200) DEFAULT NULL COMMENT '物业姓名',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiaofeibianhao` (`jiaofeibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1708851953483 DEFAULT CHARSET=utf8 COMMENT='缴费信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaofeixinxi`
--

LOCK TABLES `jiaofeixinxi` WRITE;
/*!40000 ALTER TABLE `jiaofeixinxi` DISABLE KEYS */;
INSERT INTO `jiaofeixinxi` VALUES (181,'2024-02-25 08:39:14','1111111111','业主账号1','业主姓名1','缴费类型1',1,'2024-02-25 16:39:14','备注1','未支付','物业账号1','物业姓名1'),(182,'2024-02-25 08:39:14','2222222222','业主账号2','业主姓名2','缴费类型2',2,'2024-02-25 16:39:14','备注2','未支付','物业账号2','物业姓名2'),(183,'2024-02-25 08:39:14','3333333333','业主账号3','业主姓名3','缴费类型3',3,'2024-02-25 16:39:14','备注3','未支付','物业账号3','物业姓名3'),(184,'2024-02-25 08:39:14','4444444444','业主账号4','业主姓名4','缴费类型4',4,'2024-02-25 16:39:14','备注4','未支付','物业账号4','物业姓名4'),(185,'2024-02-25 08:39:14','5555555555','业主账号5','业主姓名5','缴费类型5',5,'2024-02-25 16:39:14','备注5','未支付','物业账号5','物业姓名5'),(186,'2024-02-25 08:39:14','6666666666','业主账号6','业主姓名6','缴费类型6',6,'2024-02-25 16:39:14','备注6','未支付','物业账号6','物业姓名6'),(1708851953482,'2024-02-25 09:05:53','1708851948858','1','1','停车费',20,'2024-02-25 17:05:48',NULL,'已支付','3','3');
/*!40000 ALTER TABLE `jiaofeixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `menujson` longtext COMMENT '菜单',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='菜单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'2024-02-25 08:39:15','[{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-qrcode\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"已退款订单\",\"menuJump\":\"已退款\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-qrcode\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"已支付订单\",\"menuJump\":\"已支付\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-qrcode\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"已发货订单\",\"menuJump\":\"已发货\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-qrcode\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"已完成订单\",\"menuJump\":\"已完成\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-qrcode\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"商品订单\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-qrcode\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"已取消订单\",\"menuJump\":\"已取消\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-qrcode\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"未支付订单\",\"menuJump\":\"未支付\",\"tableName\":\"orders\"}],\"menu\":\"订单管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-news\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"一卡通\",\"menuJump\":\"列表\",\"tableName\":\"yikatong\"}],\"fontClass\":\"icon-common43\",\"menu\":\"门禁卡管理\",\"unicode\":\"&#xef27;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-wenzi\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"停车场\",\"menuJump\":\"列表\",\"tableName\":\"tingchechang\"},{\"appFrontIcon\":\"cuIcon-goods\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"车辆出场\",\"menuJump\":\"列表\",\"tableName\":\"cheliangchuchang\"},{\"appFrontIcon\":\"cuIcon-discover\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"车辆入场\",\"menuJump\":\"列表\",\"tableName\":\"cheliangruchang\"}],\"fontClass\":\"icon-common46\",\"menu\":\"停车场管理\",\"unicode\":\"&#xef3d;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-goods\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"资讯信息\",\"menuJump\":\"列表\",\"tableName\":\"news\"}],\"fontClass\":\"icon-common20\",\"menu\":\"资讯信息\",\"unicode\":\"&#xee02;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-skin\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"缴费类型\",\"menuJump\":\"列表\",\"tableName\":\"jiaofeileixing\"},{\"appFrontIcon\":\"cuIcon-taxi\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"缴费信息\",\"menuJump\":\"列表\",\"tableName\":\"jiaofeixinxi\"}],\"fontClass\":\"icon-common2\",\"menu\":\"缴费信息管理\",\"unicode\":\"&#xeda4;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-addressbook\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"业主\",\"menuJump\":\"列表\",\"tableName\":\"yezhu\"},{\"appFrontIcon\":\"cuIcon-shop\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"商家\",\"menuJump\":\"列表\",\"tableName\":\"shangjia\"},{\"appFrontIcon\":\"cuIcon-send\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"物业人员\",\"menuJump\":\"列表\",\"tableName\":\"wuyerenyuan\"}],\"fontClass\":\"icon-user7\",\"menu\":\"用户\",\"unicode\":\"&#xef9d;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-pay\",\"buttons\":[\"删除\",\"查看\"],\"menu\":\"维修信息\",\"menuJump\":\"列表\",\"tableName\":\"weixiuxinxi\"},{\"appFrontIcon\":\"cuIcon-explore\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"维修申请\",\"menuJump\":\"列表\",\"tableName\":\"weixiushenqing\"}],\"fontClass\":\"icon-common20\",\"menu\":\"维修信息管理\",\"unicode\":\"&#xee02;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-vipcard\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"监控设备\",\"menuJump\":\"列表\",\"tableName\":\"jiankongshebei\"}],\"fontClass\":\"icon-common36\",\"menu\":\"监控设备管理\",\"unicode\":\"&#xee9f;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-link\",\"buttons\":[\"查看\",\"删除\",\"修改\"],\"menu\":\"小区信息\",\"menuJump\":\"列表\",\"tableName\":\"xiaoquxinxi\"},{\"appFrontIcon\":\"cuIcon-time\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"房屋信息\",\"menuJump\":\"列表\",\"tableName\":\"fangwuxinxi\"}],\"fontClass\":\"icon-common46\",\"menu\":\"小区信息管理\",\"unicode\":\"&#xef3d;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-pic\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"商品信息\",\"menuJump\":\"列表\",\"tableName\":\"shangpinxinxi\"}],\"fontClass\":\"icon-common23\",\"menu\":\"商品信息管理\",\"unicode\":\"&#xee05;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-list\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"对讲信息\",\"menuJump\":\"列表\",\"tableName\":\"duijiangxinxi\"}],\"fontClass\":\"icon-common38\",\"menu\":\"对讲信息管理\",\"unicode\":\"&#xeeb2;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-pic\",\"buttons\":[\"查看\",\"删除\",\"审核\"],\"menu\":\"投诉信息\",\"menuJump\":\"列表\",\"tableName\":\"tousuxinxi\"}],\"fontClass\":\"icon-common41\",\"menu\":\"投诉信息管理\",\"unicode\":\"&#xeede;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-goodsnew\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"轮播图\",\"menuJump\":\"列表\",\"tableName\":\"config\"}],\"fontClass\":\"icon-common18\",\"menu\":\"管理员管理\",\"unicode\":\"&#xedff;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-shop\",\"buttons\":[\"查看\"],\"menu\":\"房屋信息\",\"menuJump\":\"列表\",\"tableName\":\"fangwuxinxi\"}],\"menu\":\"房源信息管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-vip\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"购物车\",\"menuJump\":\"列表\",\"tableName\":\"cart\"}],\"menu\":\"购物车管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-time\",\"buttons\":[\"查看\",\"入场\"],\"menu\":\"停车场\",\"menuJump\":\"列表\",\"tableName\":\"tingchechang\"}],\"menu\":\"停车场管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-clothes\",\"buttons\":[\"查看\"],\"menu\":\"商品信息\",\"menuJump\":\"列表\",\"tableName\":\"shangpinxinxi\"}],\"menu\":\"商品信息管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-rank\",\"buttons\":[\"查看\"],\"menu\":\"小区信息\",\"menuJump\":\"列表\",\"tableName\":\"xiaoquxinxi\"}],\"menu\":\"小区信息管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-vip\",\"buttons\":[\"查看\"],\"menu\":\"资讯信息\",\"menuJump\":\"列表\",\"tableName\":\"news\"}],\"menu\":\"资讯信息\"}],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"管理员\",\"tableName\":\"users\"},{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-pay\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"维修信息\",\"menuJump\":\"列表\",\"tableName\":\"weixiuxinxi\"},{\"appFrontIcon\":\"cuIcon-explore\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"维修申请\",\"menuJump\":\"列表\",\"tableName\":\"weixiushenqing\"}],\"fontClass\":\"icon-common20\",\"menu\":\"维修信息管理\",\"unicode\":\"&#xee02;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-qrcode\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"已退款订单\",\"menuJump\":\"已退款\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-qrcode\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"已支付订单\",\"menuJump\":\"已支付\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-qrcode\",\"buttons\":[\"查看\",\"删除\",\"确认收货\"],\"menu\":\"已发货订单\",\"menuJump\":\"已发货\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-qrcode\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"已完成订单\",\"menuJump\":\"已完成\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-qrcode\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"商品订单\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-qrcode\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"已取消订单\",\"menuJump\":\"已取消\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-qrcode\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"未支付订单\",\"menuJump\":\"未支付\",\"tableName\":\"orders\"}],\"menu\":\"订单管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-explore\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"地址\",\"menuJump\":\"列表\",\"tableName\":\"address\"}],\"fontClass\":\"icon-common39\",\"menu\":\"地址管理\",\"unicode\":\"&#xeeba;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-discover\",\"buttons\":[\"查看\",\"删除\",\"出场\"],\"menu\":\"车辆入场\",\"menuJump\":\"列表\",\"tableName\":\"cheliangruchang\"},{\"appFrontIcon\":\"cuIcon-goods\",\"buttons\":[\"查看\",\"删除\",\"支付\"],\"menu\":\"车辆出场\",\"menuJump\":\"列表\",\"tableName\":\"cheliangchuchang\"}],\"fontClass\":\"icon-common46\",\"menu\":\"停车场管理\",\"unicode\":\"&#xef3d;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-taxi\",\"buttons\":[\"查看\",\"删除\",\"支付\"],\"menu\":\"缴费信息\",\"menuJump\":\"列表\",\"tableName\":\"jiaofeixinxi\"}],\"fontClass\":\"icon-common2\",\"menu\":\"缴费信息管理\",\"unicode\":\"&#xeda4;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-news\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"一卡通\",\"menuJump\":\"列表\",\"tableName\":\"yikatong\"}],\"fontClass\":\"icon-common43\",\"menu\":\"门禁卡管理\",\"unicode\":\"&#xef27;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-pic\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"投诉信息\",\"menuJump\":\"列表\",\"tableName\":\"tousuxinxi\"}],\"fontClass\":\"icon-common41\",\"menu\":\"投诉信息管理\",\"unicode\":\"&#xeede;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-list\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"对讲信息\",\"menuJump\":\"列表\",\"tableName\":\"duijiangxinxi\"}],\"fontClass\":\"icon-common38\",\"menu\":\"对讲信息管理\",\"unicode\":\"&#xeeb2;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-clothes\",\"buttons\":[\"查看\"],\"menu\":\"我的收藏\",\"menuJump\":\"1\",\"tableName\":\"storeup\"}],\"fontClass\":\"icon-common11\",\"menu\":\"我的收藏管理\",\"unicode\":\"&#xeded;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-shop\",\"buttons\":[\"查看\"],\"menu\":\"房屋信息\",\"menuJump\":\"列表\",\"tableName\":\"fangwuxinxi\"}],\"menu\":\"房源信息管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-vip\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"购物车\",\"menuJump\":\"列表\",\"tableName\":\"cart\"}],\"menu\":\"购物车管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-time\",\"buttons\":[\"查看\",\"入场\"],\"menu\":\"停车场\",\"menuJump\":\"列表\",\"tableName\":\"tingchechang\"}],\"menu\":\"停车场管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-clothes\",\"buttons\":[\"查看\"],\"menu\":\"商品信息\",\"menuJump\":\"列表\",\"tableName\":\"shangpinxinxi\"}],\"menu\":\"商品信息管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-rank\",\"buttons\":[\"查看\"],\"menu\":\"小区信息\",\"menuJump\":\"列表\",\"tableName\":\"xiaoquxinxi\"}],\"menu\":\"小区信息管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-vip\",\"buttons\":[\"查看\"],\"menu\":\"资讯信息\",\"menuJump\":\"列表\",\"tableName\":\"news\"}],\"menu\":\"资讯信息\"}],\"hasBackLogin\":\"否\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"是\",\"hasFrontRegister\":\"是\",\"roleName\":\"业主\",\"tableName\":\"yezhu\"},{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-rank\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"商品分类\",\"menuJump\":\"列表\",\"tableName\":\"shangpinfenlei\"},{\"appFrontIcon\":\"cuIcon-pic\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"查看评论\"],\"menu\":\"商品信息\",\"menuJump\":\"列表\",\"tableName\":\"shangpinxinxi\"}],\"fontClass\":\"icon-common23\",\"menu\":\"商品信息管理\",\"unicode\":\"&#xee05;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-qrcode\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"已取消订单\",\"menuJump\":\"已取消\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-qrcode\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"未支付订单\",\"menuJump\":\"未支付\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-qrcode\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"已退款订单\",\"menuJump\":\"已退款\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-qrcode\",\"buttons\":[\"查看\",\"删除\",\"发货\"],\"menu\":\"已支付订单\",\"menuJump\":\"已支付\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-qrcode\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"已发货订单\",\"menuJump\":\"已发货\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-qrcode\",\"buttons\":[\"查看\",\"删除\",\"销售额统计\"],\"menu\":\"已完成订单\",\"menuJump\":\"已完成\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-qrcode\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"商品订单\",\"tableName\":\"orders\"}],\"menu\":\"订单管理\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-shop\",\"buttons\":[\"查看\"],\"menu\":\"房屋信息\",\"menuJump\":\"列表\",\"tableName\":\"fangwuxinxi\"}],\"menu\":\"房源信息管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-vip\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"购物车\",\"menuJump\":\"列表\",\"tableName\":\"cart\"}],\"menu\":\"购物车管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-time\",\"buttons\":[\"查看\",\"入场\"],\"menu\":\"停车场\",\"menuJump\":\"列表\",\"tableName\":\"tingchechang\"}],\"menu\":\"停车场管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-clothes\",\"buttons\":[\"查看\"],\"menu\":\"商品信息\",\"menuJump\":\"列表\",\"tableName\":\"shangpinxinxi\"}],\"menu\":\"商品信息管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-rank\",\"buttons\":[\"查看\"],\"menu\":\"小区信息\",\"menuJump\":\"列表\",\"tableName\":\"xiaoquxinxi\"}],\"menu\":\"小区信息管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-vip\",\"buttons\":[\"查看\"],\"menu\":\"资讯信息\",\"menuJump\":\"列表\",\"tableName\":\"news\"}],\"menu\":\"资讯信息\"}],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"是\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"商家\",\"tableName\":\"shangjia\"},{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-goods\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"车辆出场\",\"menuJump\":\"列表\",\"tableName\":\"cheliangchuchang\"},{\"appFrontIcon\":\"cuIcon-discover\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"车辆入场\",\"menuJump\":\"列表\",\"tableName\":\"cheliangruchang\"},{\"appFrontIcon\":\"cuIcon-wenzi\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"停车场\",\"menuJump\":\"列表\",\"tableName\":\"tingchechang\"}],\"fontClass\":\"icon-common46\",\"menu\":\"停车场管理\",\"unicode\":\"&#xef3d;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-taxi\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"缴费信息\",\"menuJump\":\"列表\",\"tableName\":\"jiaofeixinxi\"},{\"appFrontIcon\":\"cuIcon-skin\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"缴费类型\",\"menuJump\":\"列表\",\"tableName\":\"jiaofeileixing\"}],\"fontClass\":\"icon-common2\",\"menu\":\"缴费信息管理\",\"unicode\":\"&#xeda4;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-link\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"小区信息\",\"menuJump\":\"列表\",\"tableName\":\"xiaoquxinxi\"},{\"appFrontIcon\":\"cuIcon-time\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"房屋信息\",\"menuJump\":\"列表\",\"tableName\":\"fangwuxinxi\"}],\"fontClass\":\"icon-common46\",\"menu\":\"小区信息管理\",\"unicode\":\"&#xef3d;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-rank\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"商品分类\",\"menuJump\":\"列表\",\"tableName\":\"shangpinfenlei\"}],\"fontClass\":\"icon-common23\",\"menu\":\"商品信息管理\",\"unicode\":\"&#xee05;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-pic\",\"buttons\":[\"查看\",\"删除\",\"审核\"],\"menu\":\"投诉信息\",\"menuJump\":\"列表\",\"tableName\":\"tousuxinxi\"}],\"fontClass\":\"icon-common41\",\"menu\":\"投诉信息管理\",\"unicode\":\"&#xeede;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-explore\",\"buttons\":[\"查看\",\"删除\",\"维修\"],\"menu\":\"维修申请\",\"menuJump\":\"列表\",\"tableName\":\"weixiushenqing\"},{\"appFrontIcon\":\"cuIcon-pay\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"维修信息\",\"menuJump\":\"列表\",\"tableName\":\"weixiuxinxi\"}],\"fontClass\":\"icon-common20\",\"menu\":\"维修信息管理\",\"unicode\":\"&#xee02;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-goods\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"资讯信息\",\"menuJump\":\"列表\",\"tableName\":\"news\"}],\"fontClass\":\"icon-common20\",\"menu\":\"资讯信息\",\"unicode\":\"&#xee02;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-shop\",\"buttons\":[\"查看\"],\"menu\":\"房屋信息\",\"menuJump\":\"列表\",\"tableName\":\"fangwuxinxi\"}],\"menu\":\"房源信息管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-vip\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"购物车\",\"menuJump\":\"列表\",\"tableName\":\"cart\"}],\"menu\":\"购物车管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-time\",\"buttons\":[\"查看\",\"入场\"],\"menu\":\"停车场\",\"menuJump\":\"列表\",\"tableName\":\"tingchechang\"}],\"menu\":\"停车场管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-clothes\",\"buttons\":[\"查看\"],\"menu\":\"商品信息\",\"menuJump\":\"列表\",\"tableName\":\"shangpinxinxi\"}],\"menu\":\"商品信息管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-rank\",\"buttons\":[\"查看\"],\"menu\":\"小区信息\",\"menuJump\":\"列表\",\"tableName\":\"xiaoquxinxi\"}],\"menu\":\"小区信息管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-vip\",\"buttons\":[\"查看\"],\"menu\":\"资讯信息\",\"menuJump\":\"列表\",\"tableName\":\"news\"}],\"menu\":\"资讯信息\"}],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"是\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"物业人员\",\"tableName\":\"wuyerenyuan\"}]');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` longtext NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1708852032560 DEFAULT CHARSET=utf8 COMMENT='资讯信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (61,'2024-02-25 08:39:14','青花瓷','素胚勾勒出青花笔锋浓转淡，瓶身描绘的牡丹一如你初妆，冉冉檀香透过窗心事我了然，宣上走笔至此搁一半，釉色渲染仕女图韵味被私藏，而你嫣然的一笑如含苞待放，你的美缕飘散，去到我去不了的地方，天青色等烟雨 而我在等你，炊烟袅袅升起','file/newsPicture1.jpg','素胚勾勒出青花笔锋浓转淡，瓶身描绘的牡丹一如你初妆，冉冉檀香透过窗心事我了然，宣上走笔至此搁一半，釉色渲染仕女图韵味被私藏，而你嫣然的一笑如含苞待放，你的美缕飘散，去到我去不了的地方，天青色等烟雨 而我在等你，炊烟袅袅升起， 隔江千万里，在瓶底书前朝的飘逸，就当我为遇见你伏笔，天青色等烟雨， 而我在等你，月色被打捞起， 晕开了局，如传世的青花瓷自顾自美丽，你眼带笑意，色白花青的锦鲤跃然于碗底，临摹宋体落款时却惦记着你，你隐藏在窑烧里千年的秘密，极细腻犹如绣花针落地，帘外芭蕉惹骤雨门环惹铜绿，而我路过那江南小镇惹了你，在泼墨山水画里，你从墨色深处被隐去，天青色等烟雨 ，而我在等你，炊烟袅袅升起 ，隔江千万里，在瓶底书汉隶仿前朝的飘逸，就当我为遇见你伏笔，天色等烟雨 ，而我在等你，月色被打捞起， 晕开了结局，如传世的青花瓷自顾自美丽，你眼带笑意，天青色等烟雨 ，而我在等你，炊烟袅袅升起 ，隔江千万里，在瓶底书汉隶仿前朝的飘逸，就当我为遇见你伏笔，天青色等烟雨， 而我在等你，月色被打捞起 ，晕开了结局，如传世的青花瓷自顾自美丽，你眼带笑意。'),(62,'2024-02-25 08:39:14','理想三旬','雨后有车驶来，驶过暮色苍白，旧铁皮往南开，恋人已不在，收听浓烟下的，诗歌电台，不动情的咳嗽，至少看起来，归途也还可爱，琴弦少了姿态，再不见那夜里，听歌的小孩，时光匆匆独白，将颠沛磨成卡带，已枯倦的情怀，踏碎成年代，就老去吧，孤独别醒来，你渴望的离开，只是无处停摆，就歌唱吧，眼睛眯起来，而热泪的崩坏，只是没抵达的存在','file/newsPicture2.jpg','雨后有车驶来，驶过暮色苍白，旧铁皮往南开，恋人已不在，收听浓烟下的，诗歌电台，不动情的咳嗽，至少看起来，归途也还可爱，琴弦少了姿态，再不见那夜里，听歌的小孩，时光匆匆独白，将颠沛磨成卡带，已枯倦的情怀，踏碎成年代，就老去吧，孤独别醒来，你渴望的离开，只是无处停摆，就歌唱吧，眼睛眯起来，而热泪的崩坏，只是没抵达的存在，青春又醉倒在，籍籍无名的怀，靠嬉笑来虚度，聚散得慷慨，辗转却去不到，对的站台，如果漂泊是成长，必经的路牌，你迷醒岁月中，那贫瘠的未来，像遗憾季节里，未结果的爱，弄脏了每一页诗，吻最疼痛的告白，而风声吹到这，已不需要释怀，就老去吧，孤独别醒来，渴望的离开只是无处停摆就歌唱吧，眼睛眯起来而热泪的崩坏，只是没抵达的存在，就甜蜜地忍耐，繁星润湿窗台，光影跳动着像在，困倦里说爱，再无谓的感慨，以为明白，梦倒塌的地方，今已爬满青苔。'),(63,'2024-02-25 08:39:14','七里香','窗外的麻雀在电线杆上多嘴，你说这一句很有夏天的感觉，手中的铅笔在纸上来来回回，我用几行字形容你是我的谁，秋刀鱼的滋味猫跟你都想了解，初恋的香味就这样被我们寻回，那温暖的阳光像刚摘的鲜艳草莓，你说你舍不得吃掉这一种感觉，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠','file/newsPicture3.jpg','窗外的麻雀在电线杆上多嘴，你说这一句很有夏天的感觉，手中的铅笔在纸上来来回回，我用几行字形容你是我的谁，秋刀鱼的滋味猫跟你都想了解，初恋的香味就这样被我们寻回，那温暖的阳光像刚摘的鲜艳草莓，你说你舍不得吃掉这一种感觉，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠，几句是非也无法将我的热情冷却，你出现在我诗的每一页，雨下整夜我的爱溢出就像雨水，窗台蝴蝶像诗里纷飞的美丽章节，我接着写，把永远爱你写进诗的结尾，你是我唯一想要的了解，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠，几句是非也无法将我的热情冷却，你出现在我诗的每一页，那饱满的稻穗幸福了这个季节，而你的脸颊像田里熟透的番茄，你突然对我说七里香的名字很美，我此刻却只想亲吻你倔强的嘴，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠，几句是非也无法将我的热情冷却，你出现在我诗的每一页，整夜我的爱溢出就像雨水，窗台蝴蝶像诗里纷飞的美丽章节，我接着写，把永远爱你写进诗的结尾，是我唯一想要的了解。'),(64,'2024-02-25 08:39:14','江南','风到这里就是粘，粘住过客的思念，雨到了这里缠成线，缠着我们流连人世间，你在身边就是缘，缘分写在三生石上面，爱有万分之一甜，宁愿我就葬在这一点，圈圈圆圆圈圈，天天年年天天的我，深深看你的脸，生气的温柔，埋怨的温柔的脸','file/newsPicture4.jpg','风到这里就是粘，粘住过客的思念，雨到了这里缠成线，缠着我们流连人世间，你在身边就是缘，缘分写在三生石上面，爱有万分之一甜，宁愿我就葬在这一点，圈圈圆圆圈圈，天天年年天天的我，深深看你的脸，生气的温柔，埋怨的温柔的脸，不懂爱恨情愁煎熬的我们，都以为相爱就像风云的善变，相信爱一天抵过永远，在这一刹那冻结了时间，不懂怎么表现温柔的我们，还以为殉情只是古老的传言，离愁能有多痛痛有多浓，当梦被埋在江南烟雨中，心碎了才懂，圈圈圆圆圈圈，天天年年天天的我，深深看你的脸，生气的温柔，埋怨的温柔的脸，不懂爱恨情愁煎熬的我们，都以为相爱就像风云的善变，相信爱一天 抵过永远，在这一刹那冻结了时间，不懂怎么表现温柔的我们，还以为殉情只是古老的传言，离愁能有多痛 痛有多浓，当梦被埋在江南烟雨中，心碎了才懂，相信爱一天抵过永远。在这一刹那冻结了时间，不懂怎么表现温柔的我们，还以为殉情只是古老的传言，离愁能有多痛 痛有多浓，当梦被埋在江南烟雨中，心碎了才懂。'),(65,'2024-02-25 08:39:14','那些你很冒险的梦','当两颗心开始震动，当你瞳孔学会闪躲，当爱慢慢被遮住只剩下黑，距离像影子被拉拖，当爱的故事剩听说，我找不到你单纯的面孔，当生命每分每秒都为你转动，心多执着就加倍心痛，那些你很冒险的梦， 我陪你去疯，折纸飞机碰到雨天终究会坠落','file/newsPicture5.jpg','当两颗心开始震动，当你瞳孔学会闪躲，当爱慢慢被遮住只剩下黑，距离像影子被拉拖，当爱的故事剩听说，我找不到你单纯的面孔，当生命每分每秒都为你转动，心多执着就加倍心痛，那些你很冒险的梦， 我陪你去疯，折纸飞机碰到雨天终究会坠落，太残忍的话我直说 因为爱很重，你却不想懂 只往反方向走，当爱的故事剩听说，我找不到你单纯的面孔，当生命每分每秒都为你转动，心有多执着就加倍心痛，那些你很冒险的梦 我陪你去疯，折纸飞机 碰到雨天 终究会坠落，太残忍的话我直说 因为爱很重，你却不想懂 只往反方向走，我不想放手 你松开的左手，你爱的放纵 我白不回天空，我输了 累了，但你再也 不回头，那些你很冒险的梦 我陪你去疯，折纸飞机 碰到雨天 终究会坠落，太残忍的话我直说 因为爱很重，你却不想懂 只往反方向走，你真的不懂 我的爱已降落。'),(66,'2024-02-25 08:39:14','孤勇者','都，是勇敢的，你额头的伤口 你的 不同 你犯的错，都 不必隐藏，你破旧的玩偶 你的 面具 你的自我，他们说 要带着光 驯服每一头怪兽，他们说 要缝好你的伤，没有人爱小丑 为何孤独 不可 光荣，人只有不完美 值得歌颂，谁说污泥满身的不算英雄，爱你孤身走暗巷，爱你不跪的模样，爱你对峙过绝望','file/newsPicture6.jpg','都，是勇敢的，你额头的伤口 你的 不同 你犯的错，都 不必隐藏，你破旧的玩偶 你的 面具 你的自我，他们说 要带着光 驯服每一头怪兽，他们说 要缝好你的伤，没有人爱小丑 为何孤独 不可 光荣，人只有不完美 值得歌颂，谁说污泥满身的不算英雄，爱你孤身走暗巷，爱你不跪的模样，爱你对峙过绝望，不肯哭一场，爱你破烂的衣裳，却敢堵命运的枪，爱你和我那么像，缺口都一样，去吗 配吗 这褴褛的披风，战吗 战啊 以最卑微的梦，致那黑夜中的呜咽与怒吼，谁说站在光里的才算英雄，他们说 要戒了你的狂，就像擦掉了污垢，他们说 要顺台阶而上，而代价是低头，那就让我 不可 乘风，你一样骄傲着 那种孤勇，谁说对弈平凡的不算英雄，爱你孤身走暗巷 爱你不跪的模样，爱你对峙过绝望 不肯哭一场，爱你破烂的衣裳 却敢堵命运的枪，爱你和我那么像 缺口都一样，去吗 配吗 这褴褛的披风，战吗 战啊 以最卑微的梦，致那黑夜中的呜咽与怒吼，谁说站在光里的才算英雄，你的斑驳 与众不同 与众不同，你的沉默 震耳欲聋 震耳欲聋，You Are The Hero，爱你孤身走暗巷 爱你不跪的模样，爱你对峙过绝望 不肯哭一场，爱你来自于蛮荒 一生不借谁的光，你将造你的城邦 在废墟之上，去吗 去啊 以最卑微的梦，战吗 战啊 以最孤高的梦，致那黑夜中的呜咽与怒吼，谁说站在光里的才算英雄。'),(1708852032559,'2024-02-25 09:07:12','资讯','环境周围环境周围环境周围环境周围环境周围环境周围环境','file/1708852026894.jpg','<p>环境周围环境周围环境周围环境周围环境周围环境周围环境环境周围环境周围环境周围环境周围环境周围环境周围环境环境周围环境周围环境周围环境周围环境周围环境周围环境环境周围环境周围环境周围环境周围环境周围环境周围环境环境周围环境周围环境周围环境周围环境周围环境周围环境环境周围环境周围环境周围环境周围环境周围环境周围环境</p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT NULL COMMENT '商品表名',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` longtext NOT NULL COMMENT '图片',
  `buynumber` int(11) DEFAULT NULL COMMENT '购买数量',
  `price` double DEFAULT NULL COMMENT '单价',
  `discountprice` double DEFAULT NULL COMMENT '折扣价',
  `total` double DEFAULT NULL COMMENT '总价',
  `discounttotal` double DEFAULT NULL COMMENT '折扣总价格',
  `type` varchar(200) DEFAULT NULL COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '订单状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `tel` varchar(200) DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) DEFAULT NULL COMMENT '收货人',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `logistics` longtext COMMENT '物流',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `shangjiazhanghao` varchar(200) DEFAULT NULL COMMENT '商户名称',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1708852214829 DEFAULT CHARSET=utf8 COMMENT='商品订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1708852197840,'2024-02-25 09:09:57','202422517958366','shangpinxinxi',1708851840852,'饼干','file/1708851823111.jpg',1,59,59,59,59,'1','已完成','广州大道2号','13612312312','小王',NULL,NULL,1708851724216,'2'),(1708852214828,'2024-02-25 09:10:14','202422517101516','shangpinxinxi',1708851840852,'饼干','file/1708851823111.jpg',2,59,59,118,118,'1','已退款','广州大道2号','13612312312','小王',NULL,NULL,1708851724216,'2');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangjia`
--

DROP TABLE IF EXISTS `shangjia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangjiazhanghao` varchar(200) NOT NULL COMMENT '商家账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `shangjiaxingming` varchar(200) NOT NULL COMMENT '商家姓名',
  `touxiang` longtext COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangjiazhanghao` (`shangjiazhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1708851785876 DEFAULT CHARSET=utf8 COMMENT='商家';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangjia`
--

LOCK TABLES `shangjia` WRITE;
/*!40000 ALTER TABLE `shangjia` DISABLE KEYS */;
INSERT INTO `shangjia` VALUES (41,'2024-02-25 08:39:14','商家账号1','123456','商家姓名1','file/shangjiaTouxiang1.jpg','男','19819881111'),(42,'2024-02-25 08:39:14','商家账号2','123456','商家姓名2','file/shangjiaTouxiang2.jpg','男','19819881112'),(43,'2024-02-25 08:39:14','商家账号3','123456','商家姓名3','file/shangjiaTouxiang3.jpg','男','19819881113'),(44,'2024-02-25 08:39:14','商家账号4','123456','商家姓名4','file/shangjiaTouxiang4.jpg','男','19819881114'),(45,'2024-02-25 08:39:14','商家账号5','123456','商家姓名5','file/shangjiaTouxiang5.jpg','男','19819881115'),(46,'2024-02-25 08:39:14','商家账号6','123456','商家姓名6','file/shangjiaTouxiang6.jpg','男','19819881116'),(1708851785875,'2024-02-25 09:03:05','2','2','2','file/1708851781024.jpg','女','13612312312');
/*!40000 ALTER TABLE `shangjia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinfenlei`
--

DROP TABLE IF EXISTS `shangpinfenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinfenlei` varchar(200) NOT NULL COMMENT '商品分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinfenlei` (`shangpinfenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1708852005141 DEFAULT CHARSET=utf8 COMMENT='商品分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinfenlei`
--

LOCK TABLES `shangpinfenlei` WRITE;
/*!40000 ALTER TABLE `shangpinfenlei` DISABLE KEYS */;
INSERT INTO `shangpinfenlei` VALUES (71,'2024-02-25 08:39:14','商品分类1'),(72,'2024-02-25 08:39:14','商品分类2'),(73,'2024-02-25 08:39:14','商品分类3'),(74,'2024-02-25 08:39:14','商品分类4'),(75,'2024-02-25 08:39:14','商品分类5'),(76,'2024-02-25 08:39:14','商品分类6'),(1708851802056,'2024-02-25 09:03:21','零食'),(1708852005140,'2024-02-25 09:06:45','电子类');
/*!40000 ALTER TABLE `shangpinfenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinxinxi`
--

DROP TABLE IF EXISTS `shangpinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dianpumingcheng` varchar(200) DEFAULT NULL COMMENT '店铺名称',
  `shangpinmingcheng` varchar(200) NOT NULL COMMENT '商品名称',
  `shangpintupian` longtext COMMENT '商品图片',
  `shangpinfenlei` varchar(200) NOT NULL COMMENT '商品分类',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `shangpinxiangqing` longtext COMMENT '商品详情',
  `shangjiazhanghao` varchar(200) DEFAULT NULL COMMENT '商家账号',
  `shangjiaxingming` varchar(200) DEFAULT NULL COMMENT '商家姓名',
  `onelimittimes` int(11) DEFAULT NULL COMMENT '单限',
  `alllimittimes` int(11) DEFAULT NULL COMMENT '库存',
  `storeupnum` int(11) DEFAULT NULL COMMENT '收藏数量',
  `price` double DEFAULT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1708851840853 DEFAULT CHARSET=utf8 COMMENT='商品信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinxinxi`
--

LOCK TABLES `shangpinxinxi` WRITE;
/*!40000 ALTER TABLE `shangpinxinxi` DISABLE KEYS */;
INSERT INTO `shangpinxinxi` VALUES (81,'2024-02-25 08:39:14','店铺名称1','商品名称1','file/shangpinxinxiShangpintupian1.jpg,file/shangpinxinxiShangpintupian2.jpg,file/shangpinxinxiShangpintupian3.jpg','商品分类1','规格1','品牌1','商品详情1','商家账号1','商家姓名1',1,99,1,99.9),(82,'2024-02-25 08:39:14','店铺名称2','商品名称2','file/shangpinxinxiShangpintupian2.jpg,file/shangpinxinxiShangpintupian3.jpg,file/shangpinxinxiShangpintupian4.jpg','商品分类2','规格2','品牌2','商品详情2','商家账号2','商家姓名2',2,99,2,99.9),(83,'2024-02-25 08:39:14','店铺名称3','商品名称3','file/shangpinxinxiShangpintupian3.jpg,file/shangpinxinxiShangpintupian4.jpg,file/shangpinxinxiShangpintupian5.jpg','商品分类3','规格3','品牌3','商品详情3','商家账号3','商家姓名3',3,99,3,99.9),(84,'2024-02-25 08:39:14','店铺名称4','商品名称4','file/shangpinxinxiShangpintupian4.jpg,file/shangpinxinxiShangpintupian5.jpg,file/shangpinxinxiShangpintupian6.jpg','商品分类4','规格4','品牌4','商品详情4','商家账号4','商家姓名4',4,99,4,99.9),(85,'2024-02-25 08:39:14','店铺名称5','商品名称5','file/shangpinxinxiShangpintupian5.jpg,file/shangpinxinxiShangpintupian6.jpg,file/shangpinxinxiShangpintupian7.jpg','商品分类5','规格5','品牌5','商品详情5','商家账号5','商家姓名5',5,99,5,99.9),(86,'2024-02-25 08:39:14','店铺名称6','商品名称6','file/shangpinxinxiShangpintupian6.jpg,file/shangpinxinxiShangpintupian7.jpg,file/shangpinxinxiShangpintupian8.jpg','商品分类6','规格6','品牌6','商品详情6','商家账号6','商家姓名6',6,99,6,99.9),(1708851840852,'2024-02-25 09:04:00','大大店铺','饼干','file/1708851823111.jpg','零食','250克','奥迪','<p>详情详情</p>','2','2',2,0,1,59);
/*!40000 ALTER TABLE `shangpinxinxi` ENABLE KEYS */;
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
  `refid` bigint(20) DEFAULT NULL COMMENT 'refid',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '名称',
  `picture` longtext NOT NULL COMMENT '图片',
  `type` varchar(200) DEFAULT NULL COMMENT '类型(1:收藏,21:赞,22:踩,31:竞拍参与,41:关注)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1708852460556 DEFAULT CHARSET=utf8 COMMENT='我的收藏';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1708852173482,'2024-02-25 09:09:32',161,'fangwuxinxi','房屋名称1','file/fangwuxinxiFangwutupian1.jpg','1',NULL,NULL,1708851724216),(1708852460555,'2024-02-25 09:14:20',1708851840852,'shangpinxinxi','饼干','file/1708851823111.jpg','1',NULL,NULL,1708851724216);
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tingchechang`
--

DROP TABLE IF EXISTS `tingchechang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tingchechang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tingchechangmingcheng` varchar(200) DEFAULT NULL COMMENT '停车场名称',
  `fengmian` longtext COMMENT '封面',
  `cheweishu` int(11) DEFAULT NULL COMMENT '车位数',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `peitaoshishi` varchar(200) DEFAULT NULL COMMENT '配套实施',
  `jiage` double DEFAULT NULL COMMENT '每小时价',
  `shoufeibiaozhun` varchar(200) DEFAULT NULL COMMENT '收费标准',
  `xiangqing` longtext COMMENT '详情',
  `wuyezhanghao` varchar(200) DEFAULT NULL COMMENT '物业账号',
  `wuyexingming` varchar(200) DEFAULT NULL COMMENT '物业姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1708851932053 DEFAULT CHARSET=utf8 COMMENT='停车场';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tingchechang`
--

LOCK TABLES `tingchechang` WRITE;
/*!40000 ALTER TABLE `tingchechang` DISABLE KEYS */;
INSERT INTO `tingchechang` VALUES (201,'2024-02-25 08:39:14','停车场名称1','file/tingchechangFengmian1.jpg,file/tingchechangFengmian2.jpg,file/tingchechangFengmian3.jpg',1,'地下停车场','配套实施1',1,'收费标准1','详情1','物业账号1','物业姓名1'),(202,'2024-02-25 08:39:14','停车场名称2','file/tingchechangFengmian2.jpg,file/tingchechangFengmian3.jpg,file/tingchechangFengmian4.jpg',2,'地下停车场','配套实施2',2,'收费标准2','详情2','物业账号2','物业姓名2'),(203,'2024-02-25 08:39:14','停车场名称3','file/tingchechangFengmian3.jpg,file/tingchechangFengmian4.jpg,file/tingchechangFengmian5.jpg',3,'地下停车场','配套实施3',3,'收费标准3','详情3','物业账号3','物业姓名3'),(204,'2024-02-25 08:39:14','停车场名称4','file/tingchechangFengmian4.jpg,file/tingchechangFengmian5.jpg,file/tingchechangFengmian6.jpg',4,'地下停车场','配套实施4',4,'收费标准4','详情4','物业账号4','物业姓名4'),(205,'2024-02-25 08:39:14','停车场名称5','file/tingchechangFengmian5.jpg,file/tingchechangFengmian6.jpg,file/tingchechangFengmian7.jpg',5,'地下停车场','配套实施5',5,'收费标准5','详情5','物业账号5','物业姓名5'),(206,'2024-02-25 08:39:14','停车场名称6','file/tingchechangFengmian6.jpg,file/tingchechangFengmian7.jpg,file/tingchechangFengmian8.jpg',6,'地下停车场','配套实施6',6,'收费标准6','详情6','物业账号6','物业姓名6'),(1708851932052,'2024-02-25 09:05:31','美好停车场','file/1708851907892.png',19,'室内停车场','配套',5,'收费标准','详情','3','3');
/*!40000 ALTER TABLE `tingchechang` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,31,'业主账号1','yezhu','业主','w4pm4j4mm9ah0uq2aaqyiywtg3clxhh4','2024-02-25 09:00:54','2024-02-25 10:00:54'),(2,1708851724216,'1','yezhu','业主','s55o6nj1kvolym1sugsd7l8g7c9vgdsk','2024-02-25 09:02:09','2024-02-25 10:09:28'),(3,1708851785875,'2','shangjia','商家','hqlfdr6s7onqbjfsi1atwqg3b5r9nmb2','2024-02-25 09:03:11','2024-02-25 10:14:45'),(4,1708851874397,'3','wuyerenyuan','物业人员','cqdv0y3dnhrqczmw15vccm8i920x32qj','2024-02-25 09:04:40','2024-02-25 10:16:02'),(5,1,'admin','users','管理员','uignoqets8aykp5cbrng007xxr3vn7yv','2024-02-25 09:07:24','2024-02-25 10:15:12');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tousuxinxi`
--

DROP TABLE IF EXISTS `tousuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tousuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tousubianhao` varchar(200) DEFAULT NULL COMMENT '投诉编号',
  `wuyezhanghao` varchar(200) NOT NULL COMMENT '物业账号',
  `tousuneirong` longtext NOT NULL COMMENT '投诉内容',
  `tousushijian` datetime DEFAULT NULL COMMENT '投诉时间',
  `yezhuzhanghao` varchar(200) DEFAULT NULL COMMENT '业主账号',
  `yezhuxingming` varchar(200) DEFAULT NULL COMMENT '业主姓名',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `shhf` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tousubianhao` (`tousubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1708852323168 DEFAULT CHARSET=utf8 COMMENT='投诉信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tousuxinxi`
--

LOCK TABLES `tousuxinxi` WRITE;
/*!40000 ALTER TABLE `tousuxinxi` DISABLE KEYS */;
INSERT INTO `tousuxinxi` VALUES (191,'2024-02-25 08:39:14','1111111111','物业账号1','投诉内容1','2024-02-25 16:39:14','业主账号1','业主姓名1','手机号码1',''),(192,'2024-02-25 08:39:14','2222222222','物业账号2','投诉内容2','2024-02-25 16:39:14','业主账号2','业主姓名2','手机号码2',''),(193,'2024-02-25 08:39:14','3333333333','物业账号3','投诉内容3','2024-02-25 16:39:14','业主账号3','业主姓名3','手机号码3',''),(194,'2024-02-25 08:39:14','4444444444','物业账号4','投诉内容4','2024-02-25 16:39:14','业主账号4','业主姓名4','手机号码4',''),(195,'2024-02-25 08:39:14','5555555555','物业账号5','投诉内容5','2024-02-25 16:39:14','业主账号5','业主姓名5','手机号码5',''),(196,'2024-02-25 08:39:14','6666666666','物业账号6','投诉内容6','2024-02-25 16:39:14','业主账号6','业主姓名6','手机号码6',''),(1708852323167,'2024-02-25 09:12:02','1708852314199','3','<p>漏水环境周围环境周围环境周围环境周围环境周围环境周围环境环境周围环境周围环境周围环境周围环境周围环境周围环境环境周围环境周围环境周围环境周围环境周围环境周围环境环境周围环境周围环境周围环境周围环境周围环境周围环境环境周围环境周围环境周围环境周围环境周围环境周围环境环境周围环境周围环境周围环境周围环境周围环境周围环境环境周围环境周围环境周围环境周围环境周围环境周围环境环境周围环境周围环境周围环境周围环境周围环境周围环境环境周围环境周围环境周围环境周围环境周围环境周围环境环境周围环境周围环境周围环境周围环境周围环境周围环境环境周围环境周围环境周围环境周围环境周围环境周围环境</p>','2024-02-25 17:11:54','1','1','13512312312','收到');
/*!40000 ALTER TABLE `tousuxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `username` varchar(200) NOT NULL COMMENT '用户名',
  `password` varchar(200) NOT NULL COMMENT '密码',
  `role` varchar(200) DEFAULT NULL COMMENT '角色',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'2024-02-25 08:39:15','admin','admin','管理员');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weixiushenqing`
--

DROP TABLE IF EXISTS `weixiushenqing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weixiushenqing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yezhuzhanghao` varchar(200) DEFAULT NULL COMMENT '业主账号',
  `yezhuxingming` varchar(200) DEFAULT NULL COMMENT '业主姓名',
  `loufanghao` varchar(200) DEFAULT NULL COMMENT '楼房号',
  `weixiuleixing` varchar(200) DEFAULT NULL COMMENT '维修类型',
  `baoxiuneirong` longtext NOT NULL COMMENT '报修内容',
  `baoxiushijian` datetime DEFAULT NULL COMMENT '报修时间',
  `weixiuzhuangtai` varchar(200) DEFAULT NULL COMMENT '维修状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1708852264545 DEFAULT CHARSET=utf8 COMMENT='维修申请';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weixiushenqing`
--

LOCK TABLES `weixiushenqing` WRITE;
/*!40000 ALTER TABLE `weixiushenqing` DISABLE KEYS */;
INSERT INTO `weixiushenqing` VALUES (131,'2024-02-25 08:39:14','业主账号1','业主姓名1','楼房号1','维修类型1','报修内容1','2024-02-25 16:39:14','已维修'),(132,'2024-02-25 08:39:14','业主账号2','业主姓名2','楼房号2','维修类型2','报修内容2','2024-02-25 16:39:14','已维修'),(133,'2024-02-25 08:39:14','业主账号3','业主姓名3','楼房号3','维修类型3','报修内容3','2024-02-25 16:39:14','已维修'),(134,'2024-02-25 08:39:14','业主账号4','业主姓名4','楼房号4','维修类型4','报修内容4','2024-02-25 16:39:14','已维修'),(135,'2024-02-25 08:39:14','业主账号5','业主姓名5','楼房号5','维修类型5','报修内容5','2024-02-25 16:39:14','已维修'),(136,'2024-02-25 08:39:14','业主账号6','业主姓名6','楼房号6','维修类型6','报修内容6','2024-02-25 16:39:14','已维修'),(1708852264544,'2024-02-25 09:11:03','1','1','203','水电 类','<p>环境周围环境周围环境周围环境周围环境周围环境周围环境环境周围环境周围环境周围环境周围环境周围环境周围环境环境周围环境周围环境周围环境周围环境周围环境周围环境环境周围环境周围环境周围环境周围环境周围环境周围环境环境周围环境周围环境周围环境周围环境周围环境周围环境环境周围环境周围环境周围环境周围环境周围环境周围环境环境周围环境周围环境周围环境周围环境周围环境周围环境环境周围环境周围环境周围环境周围环境周围环境周围环境环境周围环境周围环境周围环境周围环境周围环境周围环境环境周围环境周围环境周围环境周围环境周围环境周围环境环境周围环境周围环境周围环境周围环境周围环境周围环境环境周围环境周围环境周围环境周围环境周围环境周围环境环境周围环境周围环境周围环境周围环境周围环境周围环境环境周围环境周围环境周围环境周围环境周围环境周围环境环境周围环境周围环境周围环境周围环境周围环境周围环境环境周围环境周围环境周围环境周围环境周围环境周围环境环境周围环境周围环境周围环境周围环境周围环境周围环境环境周围环境周围环境周围环境周围环境周围环境周围环境环境周围环境周围环境周围环境周围环境周围环境周围环境环境周围环境周围环境周围环境周围环境周围环境周围环境</p>','2024-02-25 17:10:49','未维修');
/*!40000 ALTER TABLE `weixiushenqing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weixiuxinxi`
--

DROP TABLE IF EXISTS `weixiuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weixiuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yezhuzhanghao` varchar(200) DEFAULT NULL COMMENT '业主账号',
  `yezhuxingming` varchar(200) DEFAULT NULL COMMENT '业主姓名',
  `loufanghao` varchar(200) DEFAULT NULL COMMENT '楼房号',
  `weixiuleixing` varchar(200) DEFAULT NULL COMMENT '维修类型',
  `weixiuneirong` longtext COMMENT '维修内容',
  `weixiuren` varchar(200) DEFAULT NULL COMMENT '维修人',
  `weixiushijian` datetime DEFAULT NULL COMMENT '维修时间',
  `weixiuzhuangtai` varchar(200) DEFAULT NULL COMMENT '维修状态',
  `wuyezhanghao` varchar(200) DEFAULT NULL COMMENT '物业账号',
  `wuyexingming` varchar(200) DEFAULT NULL COMMENT '物业姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1708852442326 DEFAULT CHARSET=utf8 COMMENT='维修信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weixiuxinxi`
--

LOCK TABLES `weixiuxinxi` WRITE;
/*!40000 ALTER TABLE `weixiuxinxi` DISABLE KEYS */;
INSERT INTO `weixiuxinxi` VALUES (141,'2024-02-25 08:39:14','业主账号1','业主姓名1','楼房号1','维修类型1','维修内容1','维修人1','2024-02-25 16:39:14','未维修','物业账号1','物业姓名1'),(142,'2024-02-25 08:39:14','业主账号2','业主姓名2','楼房号2','维修类型2','维修内容2','维修人2','2024-02-25 16:39:14','未维修','物业账号2','物业姓名2'),(143,'2024-02-25 08:39:14','业主账号3','业主姓名3','楼房号3','维修类型3','维修内容3','维修人3','2024-02-25 16:39:14','未维修','物业账号3','物业姓名3'),(144,'2024-02-25 08:39:14','业主账号4','业主姓名4','楼房号4','维修类型4','维修内容4','维修人4','2024-02-25 16:39:14','未维修','物业账号4','物业姓名4'),(145,'2024-02-25 08:39:14','业主账号5','业主姓名5','楼房号5','维修类型5','维修内容5','维修人5','2024-02-25 16:39:14','未维修','物业账号5','物业姓名5'),(146,'2024-02-25 08:39:14','业主账号6','业主姓名6','楼房号6','维修类型6','维修内容6','维修人6','2024-02-25 16:39:14','未维修','物业账号6','物业姓名6'),(1708852442325,'2024-02-25 09:14:02','1','1','203','水电 类','维修内容','小张','2024-02-26 00:00:00','未维修','3','3');
/*!40000 ALTER TABLE `weixiuxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wuyerenyuan`
--

DROP TABLE IF EXISTS `wuyerenyuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wuyerenyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wuyezhanghao` varchar(200) NOT NULL COMMENT '物业账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `wuyexingming` varchar(200) NOT NULL COMMENT '物业姓名',
  `touxiang` longtext COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `wuyezhanghao` (`wuyezhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1708851874398 DEFAULT CHARSET=utf8 COMMENT='物业人员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wuyerenyuan`
--

LOCK TABLES `wuyerenyuan` WRITE;
/*!40000 ALTER TABLE `wuyerenyuan` DISABLE KEYS */;
INSERT INTO `wuyerenyuan` VALUES (51,'2024-02-25 08:39:14','物业账号1','123456','物业姓名1','file/wuyerenyuanTouxiang1.jpg','男','19819881111'),(52,'2024-02-25 08:39:14','物业账号2','123456','物业姓名2','file/wuyerenyuanTouxiang2.jpg','男','19819881112'),(53,'2024-02-25 08:39:14','物业账号3','123456','物业姓名3','file/wuyerenyuanTouxiang3.jpg','男','19819881113'),(54,'2024-02-25 08:39:14','物业账号4','123456','物业姓名4','file/wuyerenyuanTouxiang4.jpg','男','19819881114'),(55,'2024-02-25 08:39:14','物业账号5','123456','物业姓名5','file/wuyerenyuanTouxiang5.jpg','男','19819881115'),(56,'2024-02-25 08:39:14','物业账号6','123456','物业姓名6','file/wuyerenyuanTouxiang6.jpg','男','19819881116'),(1708851874397,'2024-02-25 09:04:34','3','3','3','file/1708851862552.jpg','男','13645645645');
/*!40000 ALTER TABLE `wuyerenyuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xiaoquxinxi`
--

DROP TABLE IF EXISTS `xiaoquxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xiaoquxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xiaoqumingcheng` varchar(200) DEFAULT NULL COMMENT '小区名称',
  `xiaoquleixing` varchar(200) DEFAULT NULL COMMENT '小区类型',
  `xiaoqudizhi` varchar(200) DEFAULT NULL COMMENT '小区地址',
  `jianzhumianji` double DEFAULT NULL COMMENT '建筑面积',
  `zonghushu` int(11) DEFAULT NULL COMMENT '总户数',
  `tingcheweishuliang` varchar(200) DEFAULT NULL COMMENT '停车位数量',
  `xiaoqutupian` longtext COMMENT '小区图片',
  `zhouweihuanjing` longtext COMMENT '周围环境',
  `loudongshu` int(11) DEFAULT NULL COMMENT '楼栋数',
  `wuyezhanghao` varchar(200) DEFAULT NULL COMMENT '物业账号',
  `wuyexingming` varchar(200) DEFAULT NULL COMMENT '物业姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1708851996642 DEFAULT CHARSET=utf8 COMMENT='小区信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xiaoquxinxi`
--

LOCK TABLES `xiaoquxinxi` WRITE;
/*!40000 ALTER TABLE `xiaoquxinxi` DISABLE KEYS */;
INSERT INTO `xiaoquxinxi` VALUES (151,'2024-02-25 08:39:14','小区名称1','住宅小区','小区地址1',1,1,'停车位数量1','file/xiaoquxinxiXiaoqutupian1.jpg,file/xiaoquxinxiXiaoqutupian2.jpg,file/xiaoquxinxiXiaoqutupian3.jpg','周围环境1',1,'物业账号1','物业姓名1'),(152,'2024-02-25 08:39:14','小区名称2','住宅小区','小区地址2',2,2,'停车位数量2','file/xiaoquxinxiXiaoqutupian2.jpg,file/xiaoquxinxiXiaoqutupian3.jpg,file/xiaoquxinxiXiaoqutupian4.jpg','周围环境2',2,'物业账号2','物业姓名2'),(153,'2024-02-25 08:39:14','小区名称3','住宅小区','小区地址3',3,3,'停车位数量3','file/xiaoquxinxiXiaoqutupian3.jpg,file/xiaoquxinxiXiaoqutupian4.jpg,file/xiaoquxinxiXiaoqutupian5.jpg','周围环境3',3,'物业账号3','物业姓名3'),(154,'2024-02-25 08:39:14','小区名称4','住宅小区','小区地址4',4,4,'停车位数量4','file/xiaoquxinxiXiaoqutupian4.jpg,file/xiaoquxinxiXiaoqutupian5.jpg,file/xiaoquxinxiXiaoqutupian6.jpg','周围环境4',4,'物业账号4','物业姓名4'),(155,'2024-02-25 08:39:14','小区名称5','住宅小区','小区地址5',5,5,'停车位数量5','file/xiaoquxinxiXiaoqutupian5.jpg,file/xiaoquxinxiXiaoqutupian6.jpg,file/xiaoquxinxiXiaoqutupian7.jpg','周围环境5',5,'物业账号5','物业姓名5'),(156,'2024-02-25 08:39:14','小区名称6','住宅小区','小区地址6',6,6,'停车位数量6','file/xiaoquxinxiXiaoqutupian6.jpg,file/xiaoquxinxiXiaoqutupian7.jpg,file/xiaoquxinxiXiaoqutupian8.jpg','周围环境6',6,'物业账号6','物业姓名6'),(1708851996641,'2024-02-25 09:06:36','和谐小区','住宅小区','地址',200,50,'20','file/1708851978051.png','<p>环境周围环境周围环境周围环境周围环境周围环境周围环境周围环境周围环境周围环境周围环境周围环境周围环境周围环境周围环境周围环境周围环境周围环境周围环境周围环境周围环境周围环境周围环境周围环境周围环境周围环境周围环境周围环境周围环境周围环境周围环境周围环境周围环境周围环境周围环境周围环境周围环境周围环境周围环境周围</p>',2,'3','3');
/*!40000 ALTER TABLE `xiaoquxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yezhu`
--

DROP TABLE IF EXISTS `yezhu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yezhu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yezhuzhanghao` varchar(200) NOT NULL COMMENT '业主账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yezhuxingming` varchar(200) NOT NULL COMMENT '业主姓名',
  `touxiang` longtext COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `loudonghao` varchar(200) DEFAULT NULL COMMENT '楼栋号',
  `loufanghao` varchar(200) DEFAULT NULL COMMENT '楼房号',
  `chepaihao` varchar(200) DEFAULT NULL COMMENT '车牌号',
  `money` double DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yezhuzhanghao` (`yezhuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1708851724217 DEFAULT CHARSET=utf8 COMMENT='业主';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yezhu`
--

LOCK TABLES `yezhu` WRITE;
/*!40000 ALTER TABLE `yezhu` DISABLE KEYS */;
INSERT INTO `yezhu` VALUES (31,'2024-02-25 08:39:14','业主账号1','123456','业主姓名1','file/yezhuTouxiang1.jpg','男','19819881111','楼栋号1','楼房号1','车牌号1',200),(32,'2024-02-25 08:39:14','业主账号2','123456','业主姓名2','file/yezhuTouxiang2.jpg','男','19819881112','楼栋号2','楼房号2','车牌号2',200),(33,'2024-02-25 08:39:14','业主账号3','123456','业主姓名3','file/yezhuTouxiang3.jpg','男','19819881113','楼栋号3','楼房号3','车牌号3',200),(34,'2024-02-25 08:39:14','业主账号4','123456','业主姓名4','file/yezhuTouxiang4.jpg','男','19819881114','楼栋号4','楼房号4','车牌号4',200),(35,'2024-02-25 08:39:14','业主账号5','123456','业主姓名5','file/yezhuTouxiang5.jpg','男','19819881115','楼栋号5','楼房号5','车牌号5',200),(36,'2024-02-25 08:39:14','业主账号6','123456','业主姓名6','file/yezhuTouxiang6.jpg','男','19819881116','楼栋号6','楼房号6','车牌号6',200),(1708851724216,'2024-02-25 09:02:04','1','1','1','file/1708851712876.jpeg','女','13512312312','2栋','203','888888',141);
/*!40000 ALTER TABLE `yezhu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yikatong`
--

DROP TABLE IF EXISTS `yikatong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yikatong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yezhuzhanghao` varchar(200) DEFAULT NULL COMMENT '业主账号',
  `yezhuxingming` varchar(200) DEFAULT NULL COMMENT '业主姓名',
  `loudonghao` varchar(200) DEFAULT NULL COMMENT '楼栋号',
  `loufanghao` varchar(200) DEFAULT NULL COMMENT '楼房号',
  `kahao` varchar(200) DEFAULT NULL COMMENT '卡号',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `quanxianxinxi` longtext COMMENT '权限信息',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1708852059807 DEFAULT CHARSET=utf8 COMMENT='一卡通';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yikatong`
--

LOCK TABLES `yikatong` WRITE;
/*!40000 ALTER TABLE `yikatong` DISABLE KEYS */;
INSERT INTO `yikatong` VALUES (231,'2024-02-25 08:39:14','业主账号1','业主姓名1','楼栋号1','楼房号1','卡号1',1,'权限信息1','备注1'),(232,'2024-02-25 08:39:14','业主账号2','业主姓名2','楼栋号2','楼房号2','卡号2',2,'权限信息2','备注2'),(233,'2024-02-25 08:39:14','业主账号3','业主姓名3','楼栋号3','楼房号3','卡号3',3,'权限信息3','备注3'),(234,'2024-02-25 08:39:14','业主账号4','业主姓名4','楼栋号4','楼房号4','卡号4',4,'权限信息4','备注4'),(235,'2024-02-25 08:39:14','业主账号5','业主姓名5','楼栋号5','楼房号5','卡号5',5,'权限信息5','备注5'),(236,'2024-02-25 08:39:14','业主账号6','业主姓名6','楼栋号6','楼房号6','卡号6',6,'权限信息6','备注6'),(1708852059806,'2024-02-25 09:07:39','1','1','2栋','203','22222,33333',2,'权限',NULL);
/*!40000 ALTER TABLE `yikatong` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-27 10:13:03
