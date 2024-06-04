/*
SQLyog Ultimate v12.3.1 (64 bit)
MySQL - 5.7.31-log : Database - zu
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`zu` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `zu`;

/*Table structure for table `apply` */

DROP TABLE IF EXISTS `apply`;

CREATE TABLE `apply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `house_id` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `area` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `userlist_id` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `apply` */

/*Table structure for table `applyout` */

DROP TABLE IF EXISTS `applyout`;

CREATE TABLE `applyout` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `house_id` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `userlist_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `applyout` */

insert  into `applyout`(`id`,`house_id`,`address`,`status`,`userlist_id`) values 
(7,'1','人才路30号3楼301','已同意',3),
(8,'1','人才路30号3楼301','已同意',2);

/*Table structure for table `checkout` */

DROP TABLE IF EXISTS `checkout`;

CREATE TABLE `checkout` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `house_id` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `userlist_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `checkout` */

insert  into `checkout`(`id`,`house_id`,`address`,`status`,`userlist_id`) values 
(6,'1','人才路30号3楼301','已退租',3),
(7,'1','人才路30号3楼301','已退租',3),
(8,'1','人才路30号3楼301','已退租',3),
(9,'1','人才路30号3楼301','已退租',2);

/*Table structure for table `hetong` */

DROP TABLE IF EXISTS `hetong`;

CREATE TABLE `hetong` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `chuzu` varchar(255) DEFAULT NULL,
  `chuzu_idcard` varchar(255) DEFAULT NULL,
  `zuke` varchar(255) DEFAULT NULL,
  `zuke_idcard` varchar(255) DEFAULT NULL,
  `fromdate` varchar(255) DEFAULT NULL,
  `todate` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `house_id` varchar(255) DEFAULT NULL,
  `payday` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

/*Data for the table `hetong` */

insert  into `hetong`(`id`,`chuzu`,`chuzu_idcard`,`zuke`,`zuke_idcard`,`fromdate`,`todate`,`price`,`address`,`house_id`,`payday`) values 
(14,'房东我','441111111111111111','李四','44444444444444445','2024-01-04','2025-01-01',1100,'人才路30号3楼301','1',2),
(15,'房东我','441111111111111111','李四','44444444444444444','2024-01-04','2024-10-03',2500,'复兴路20号2楼201','3',2);

/*Table structure for table `houselist` */

DROP TABLE IF EXISTS `houselist`;

CREATE TABLE `houselist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `houseid` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `area` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `houselist` */

insert  into `houselist`(`id`,`houseid`,`address`,`area`,`price`,`status`) values 
(1,'1','人才路30号3楼301',20,1000,'已租赁'),
(2,'2','人才路30号4楼402',22,1100,'未租赁'),
(3,'3','复兴路20号2楼201',45,2500,'已租赁'),
(4,'4','复兴路20号5楼501',40,2300,'未租赁');

/*Table structure for table `paid` */

DROP TABLE IF EXISTS `paid`;

CREATE TABLE `paid` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `house_id` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `price` double DEFAULT NULL,
  `paydate` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `userlist_id` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `paid` */

insert  into `paid`(`id`,`house_id`,`address`,`date`,`price`,`paydate`,`name`,`userlist_id`,`status`) values 
(3,'1','人才路30号3楼301','2024-01-04',1100,'2024-01-22','李四',2,'租金已缴'),
(4,'1','人才路30号3楼301','2024-02-02',1200,'2024-01-22','李四',2,'租金已缴'),
(5,'3','复兴路20号2楼201','2024-01-23',2500,'2024-01-22','张三',3,'租金已缴');

/*Table structure for table `schedule` */

DROP TABLE IF EXISTS `schedule`;

CREATE TABLE `schedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `schedule` */

insert  into `schedule`(`id`,`date`,`content`) values 
(2,'2024-01-04','今天是收租日');

/*Table structure for table `solve` */

DROP TABLE IF EXISTS `solve`;

CREATE TABLE `solve` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `house_id` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `detail` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `userlist_id` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `solve` */

insert  into `solve`(`id`,`house_id`,`address`,`date`,`detail`,`name`,`userlist_id`,`status`) values 
(4,'1','人才路30号3楼301','2024-01-24','灯坏了','李四',2,'已处理'),
(6,'1','人才路30号3楼301','2024-01-22','水龙头坏','李四',2,'已处理'),
(7,'1','人才路30号3楼301','2024-02-09','门锁坏了','李四',2,'已处理');

/*Table structure for table `topaid` */

DROP TABLE IF EXISTS `topaid`;

CREATE TABLE `topaid` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `house_id` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `price` double DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `userlist_id` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `topaid` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`password`,`type`) values 
(1,'admin','admin','admin'),
(2,'user','123456','zuke'),
(3,'lisi','123456','zuke');

/*Table structure for table `userlist` */

DROP TABLE IF EXISTS `userlist`;

CREATE TABLE `userlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `idcard` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `userlist` */

insert  into `userlist`(`id`,`name`,`idcard`,`phone`,`user_id`) values 
(2,'李四','444444444444444445','13333333334',3),
(3,'张三','444444444444444444','13333333333',2);

/*Table structure for table `wrong` */

DROP TABLE IF EXISTS `wrong`;

CREATE TABLE `wrong` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `house_id` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `detail` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `userlist_id` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `wrong` */

/*Table structure for table `zulist` */

DROP TABLE IF EXISTS `zulist`;

CREATE TABLE `zulist` (
  `zid` int(11) NOT NULL AUTO_INCREMENT,
  `house_id` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `userlist_id` int(11) DEFAULT NULL,
  `contract_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`zid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `zulist` */

insert  into `zulist`(`zid`,`house_id`,`price`,`address`,`userlist_id`,`contract_id`) values 
(11,'1',1000,'人才路30号3楼301',2,14),
(12,'3',2500,'复兴路20号2楼201',3,15);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
