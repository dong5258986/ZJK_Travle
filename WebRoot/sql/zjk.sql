/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.0.16-nt : Database - zjk
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`zjk` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `zjk`;

/*Table structure for table `attractions` */

DROP TABLE IF EXISTS `attractions`;

CREATE TABLE `attractions` (
  `a_id` int(11) NOT NULL auto_increment,
  `a_address` varchar(255) default NULL,
  `a_info` text,
  `a_name` varchar(255) default NULL,
  `a_phone` varchar(255) default NULL,
  `a_picture` varchar(255) default NULL,
  `a_ticket` int(255) NOT NULL default '10',
  `a_infotitle` varchar(255) default NULL,
  `a_simpleinfo` varchar(255) default NULL,
  PRIMARY KEY  (`a_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `attractions` */

insert  into `attractions`(`a_id`,`a_address`,`a_info`,`a_name`,`a_phone`,`a_picture`,`a_ticket`,`a_infotitle`,`a_simpleinfo`) values (1,NULL,'坝上草原是坝上高原的重要组成部分，位于内蒙古高原与大兴安岭南麓的接壤地带。<br>[1] <b>地理位置</b>\r\n坝上草原主要位于河北省，境内特指由草原陡然升高而形成的地带，又因气候和植被的原因形成的草甸式草原。张家口以北100公里处到承德以北100公里处，统称为坝上草原地区，平均海拔高度1500—2100米，平均气温约1.4-5度，西起张家口市的张北县、尚义县，康保县、中挟沽源县、丰宁县，东至承德市围场县。<br>[2] \r\n就旅游地域而言，坝上草原主要又分为围场坝上(木兰围场)、丰宁坝上、张北坝上和草原天路等区域组成，是内蒙古高原的重要组成部分，其中木兰围场县-乌兰布统大草原最为美丽，丰宁坝上草原位于北京正北的河北省丰宁满族自治县，是离北京最近的天然草原，又名“京北第一草原”。<br>[3] \r\n坝上草原属温带季风气候，冬季漫长，夏季无暑，清凉宜人，7月平均气温摄氏24度，水草丰茂、富饶美丽、冬夏分明、晨夕各异，是中国北方旅游、休闲、避暑、度假的首选之地。[4] ','坝上草原',NULL,'w32.jpg',10,'张北草原欢迎您','这里风光秀丽，气候宜人，您可尽情感受到驾驭大自然的情趣。您可以策马扬鞭，弯弓射箭，一展万丈豪情；也可以观看马术、摔跤、草原歌舞等草原传统娱乐项目。'),(2,NULL,'黄帝城，即涿鹿故城，亦称轩辕城。位于涿鹿县矾山镇三堡村北50米处。据传，黄帝城即黄帝所建华夏建一都城。历史考究，黄帝城遗址在今易县城西南三十华里的中易水北岸北福地村南，古为易氏部落遗址。.','黄帝城',NULL,'1.jpg',0,NULL,'黄帝城，即涿鹿故城，亦称轩辕城。位于涿鹿县矾山镇三堡村北50米处。据传，黄帝城即黄帝所建华夏建一都城。历史考究，黄帝城遗址在今易县城西南三十华里的中易水北岸北福地村南，古为易氏部落遗址。'),(3,NULL,'dsadsadasdasdasdasdass','鸡鸣山',NULL,'jimingshan.jpg',0,NULL,'鸡鸣山是塞外最高的孤山，有“飞来峰“之美称，元朝诗人郝经曾用“一峰奇秀高插云“的诗句来形容鸡鸣山的高峻。可谓美白不胜收。此山景观峻秀，伟岸挺拔，如巨人参天，又如天然屏障。'),(4,NULL,NULL,'安家沟',NULL,'anjiagou.jpg',0,NULL,'有“小桂林”的美称，安家沟生态旅游区是一个风景秀丽、气候宜人的旅游栖息场所，可以看到各种各样的植物动物共存，整个给人一种自然与人文共融的享受。'),(5,NULL,NULL,'天鹅湖',NULL,'tianehu.jpg',0,NULL,'沽源天鹅湖是典型的草原湖泊风光，湖周边是垦为农田的低岗梁和绿色草原。山岗、树木、绿草、蓝天、白云、碧水相映，给草原增添了更多魅力。'),(6,NULL,NULL,'大境门',NULL,'dajingmen.jpg',0,NULL,'站在关口上登高远望，满山草木郁郁葱葱，崇山峻岭之上，巨蛇般的长城依着山形逶迤而行，塞外风光尽收眼底。察哈尔督统高维岳于张家口大境门楣手书“大好河山”'),(7,NULL,NULL,'暖泉山庄',NULL,'nuanquan.jpg',0,NULL,'这里风光秀丽，气候宜人，您可尽情感受到驾驭大自然的情趣。您可以策马扬鞭，弯弓射箭，一展万丈豪情；也可以观看马术、摔跤、草原歌舞等草原传统娱乐项目'),(8,NULL,NULL,'万龙滑雪场',NULL,'xue.jpg',0,NULL,'万龙滑雪场的整体硬件设施就现在而言已经位于全国雪场的前列。');

/*Table structure for table `hotel` */

DROP TABLE IF EXISTS `hotel`;

CREATE TABLE `hotel` (
  `st_id` int(16) NOT NULL,
  `st_name` varchar(50) default NULL,
  `h_id` int(11) NOT NULL,
  `h_address` varchar(255) default NULL,
  `h_info` text,
  `h_name` varchar(255) default NULL,
  `h_price` int(255) default NULL,
  PRIMARY KEY  (`st_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Data for the table `hotel` */

/*Table structure for table `log` */

DROP TABLE IF EXISTS `log`;

CREATE TABLE `log` (
  `id` int(11) NOT NULL auto_increment,
  `operatelog` varchar(255) default NULL,
  `time` varchar(255) default NULL,
  `username` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `log` */

/*Table structure for table `specialty` */

DROP TABLE IF EXISTS `specialty`;

CREATE TABLE `specialty` (
  `s_id` int(11) NOT NULL auto_increment,
  `s_bussiness` varchar(255) default NULL,
  `s_info` text,
  `s_name` varchar(255) default NULL,
  `s_price` int(255) default NULL,
  `st_id` int(11) NOT NULL,
  PRIMARY KEY  (`s_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `specialty` */

/*Table structure for table `specialtytype` */

DROP TABLE IF EXISTS `specialtytype`;

CREATE TABLE `specialtytype` (
  `st_id` int(11) NOT NULL auto_increment,
  `st_name` varchar(255) default NULL,
  `st_amount` int(11) default NULL,
  PRIMARY KEY  (`st_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `specialtytype` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL auto_increment,
  `password` varchar(255) default NULL,
  `role` varchar(255) default NULL,
  `username` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
