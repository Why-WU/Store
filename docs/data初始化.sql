/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.5.20-log : Database - letao
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`data` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `data`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `addressDetail` varchar(200) DEFAULT NULL,
  `isDelete` int(4) DEFAULT NULL,
  `recipients` varchar(100) DEFAULT NULL,
  `postCode` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

/*Data for the table `address` */

insert  into `address`(`id`,`userId`,`address`,`addressDetail`,`isDelete`,`recipients`,`postCode`,`mobile`) values (1,1,'山西省太原市小店区','解放东路望园小区14层1402室',1,'周双大','111112',NULL);

/*Table structure for table `brand` */

DROP TABLE IF EXISTS `brand`;

CREATE TABLE `brand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandName` varchar(50) DEFAULT NULL,
  `categoryId` int(11) DEFAULT NULL,
  `brandLogo` varchar(200) DEFAULT NULL,
  `isDelete` int(4) DEFAULT NULL,
  `hot` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `brand` */

insert  into `brand`(`id`,`brandName`,`categoryId`,`brandLogo`,`isDelete`,`hot`) values (1,'计算机网络',1,'/mobile/images/brand1.png',1,1),(2,'操作系统',1,'/mobile/images/brand2.png',1,1),(3,'计算机组成原理',1,'/mobile/images/brand3.png',1,1),(4,'概率论',1,'/mobile/images/brand4.png',1,0),(5,'数据结构',1,'/mobile/images/brand5.png',1,1),(6,'计算方法',2,'/mobile/images/brand5.png',1,1),(7,'c++',2,'/mobile/images/brand5.png',1,1),(8,'java',2,'/mobile/images/brand5.png',1,1),(9,'大数据',2,'/mobile/images/brand5.png',1,1),(10,'人工智能',2,'/mobile/images/brand5.png',1,1),(11,'python',2,'/mobile/images/brand5.png',1,1),(12,'大数据分析',2,'/mobile/images/brand5.png',1,1),(13,'数据库',2,'/mobile/images/brand5.png',1,1),(14,'数据库',2,'/mobile/images/brand5.png',1,1),(15,'数据库',2,'/mobile/images/brand5.png',1,1),(16,'数据库',2,'/mobile/images/brand5.png',1,1),(17,'数据库',2,'/mobile/images/brand5.png',1,1),(18,'数据库',2,'/mobile/images/brand5.png',1,1),(19,'数据库',2,'/mobile/images/brand5.png',1,1),(20,'数据库',2,'/mobile/images/brand5.png',1,1),(21,'数据库',2,'/mobile/images/brand5.png',1,1),(22,'数据库',2,'/mobile/images/brand5.png',1,1),(23,'数据库',2,'/mobile/images/brand5.png',1,1),(24,'数据库',2,'/mobile/images/brand5.png',1,1),(25,'数据库',2,'/mobile/images/brand5.png',1,1),(26,'数据库',2,'/mobile/images/brand5.png',1,1),(27,'数据库',2,'/mobile/images/brand5.png',1,1),(28,'数据库',2,'/mobile/images/brand5.png',1,1),(29,'数据库',2,'/mobile/images/brand5.png',1,1),(30,'数据库',2,'/mobile/images/brand5.png',1,1),(31,'数据库',2,'/mobile/images/brand5.png',1,1),(32,'数据库',2,'/mobile/images/brand5.png',1,1),(33,'数据库',2,'/mobile/images/brand5.png',1,1),(34,'数据库',2,'/mobile/images/brand5.png',1,1),(35,'数据库',2,'/mobile/images/brand5.png',1,1),(36,'数据库',2,'/mobile/images/brand5.png',1,1),(37,'数据库',2,'/mobile/images/brand5.png',1,1),(38,'数据库',2,'/mobile/images/brand5.png',1,1),(39,'数据库',2,'/mobile/images/brand5.png',1,1),(40,'数据库',2,'/mobile/images/brand5.png',1,1),(41,'数据库',2,'/mobile/images/brand5.png',1,1);

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `num` int(20) DEFAULT NULL,
  `size` varchar(20) DEFAULT NULL,
  `isDelete` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `cart` */

insert  into `cart`(`id`,`userId`,`productId`,`num`,`size`,`isDelete`) values (1,1,1,1,'50',1),(2,1,2,2,'45',1),(3,1,3,4,'40',1);

/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(50) DEFAULT NULL,
  `isDelete` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `category` */

insert  into `category`(`id`,`categoryName`,`isDelete`) values (1,'计算机',1),(2,'经管',1),(3,'农学',1),(4,'动科',1),(5,'动药',1),(6,'动医',1),(7,'园林',1),(8,'水产',1),(9,'数学',1),(10,'管理',1),(11,'工程',1),(12,'生命',1),(13,'电气',1),(14,'法律',1),(15,'马克思',1),(16,'俄语',1),(17,'英语',1),(18,'日语',1),(19,'西班牙语',1),(20,'建筑',1);

/*Table structure for table `employee` */

DROP TABLE IF EXISTS `employee`;

CREATE TABLE `employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `mobile` char(11) DEFAULT NULL,
  `authority` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `employee` */

insert  into `employee`(`id`,`username`,`password`,`mobile`,`authority`) values (1,'root','4QrcOUm6Wau+VuBX8g+IPg==','13902060052',1);

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `proName` varchar(200) DEFAULT NULL COMMENT '资料名称',
  `oldPrice` float DEFAULT NULL COMMENT '资料价格',
  `price` float DEFAULT NULL COMMENT '资料折扣价',
  `proDesc` varchar(500) DEFAULT NULL COMMENT '资料描述',
  `size` varchar(20) DEFAULT NULL COMMENT '资料尺寸',
  `statu` int(4) DEFAULT NULL COMMENT '是否下架',
  `updateTime` datetime DEFAULT NULL COMMENT '上下架时间',
  `num` int(20) DEFAULT NULL COMMENT '资料库存',
  `brandId` int(11) DEFAULT NULL COMMENT '归属学科',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `product` */

insert  into `product`(`id`,`proName`,`oldPrice`,`price`,`proDesc`,`size`,`statu`,`updateTime`,`num`,`brandId`) values (1,'计算机网络，重点知识，包含TCP/IP三次握手四次挥手等重点知识详解',30,20,'描述','40-50',1,'2017-01-05 00:28:29',20,1),(2,'数据结构，重点知识，包含图树等重点数据结构等重点知识详解',888.1,499.1,'描述','35-45',1,'2017-01-05 00:28:29',20,1),(3,'数据库，重点知识，包含sql查询等重点知识详解',888.1,499.1,'描述','30-50',1,'2017-01-05 00:28:29',20,1),(4,'概率论，重点知识，包含期末等重点知识详解',888.1,499.1,'描述','40-55',1,'2017-01-05 00:28:29',20,1),(5,'计算方法，重点知识，包含重点知识，包含期末等重点知识详解',8868.1,4969.1,'描述123123','40-50',1,'2017-01-05 00:48:05',22,2),(6,'计算机专业英语，重点知识，包含期末重点知识详解',342,112,'描述123123','35-56',1,'2017-01-05 00:48:05',44,2);

/*Table structure for table `product_picture` */

DROP TABLE IF EXISTS `product_picture`;

CREATE TABLE `product_picture` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `picName` varchar(40) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `picAddr` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `product_picture` */

insert  into `product_picture`(`id`,`picName`,`productId`,`picAddr`) values (1,'good1.png',1,'/mobile/images/good1.png'),(2,'good2.png',2,'/mobile/images/good2.png'),(3,'good3.png',3,'/mobile/images/good3.png'),(4,'good4.png',4,'/mobile/images/good4.png'),(5,'good5.png',5,'/mobile/images/good5.png'),(6,'good6.png',6,'/mobile/images/good6.png'),(7,'good6.png',1,'/mobile/images/good6.png');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `mobile` char(11) DEFAULT NULL,
  `isDelete` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`password`,`mobile`,`isDelete`) values (1,'itcast','lueSGJZetyySpUndWjMBEg==','15102324243',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
