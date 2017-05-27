# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.18)
# Database: test
# Generation Time: 2017-05-27 07:08:40 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table wrong
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wrong`;

CREATE TABLE `wrong` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `qid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `question` varchar(128) NOT NULL DEFAULT '',
  `a` varchar(64) DEFAULT NULL,
  `b` varchar(64) DEFAULT NULL,
  `c` varchar(64) DEFAULT NULL,
  `d` varchar(64) DEFAULT NULL,
  `right` varchar(32) NOT NULL DEFAULT '',
  `imgUrl` varchar(128) DEFAULT NULL,
  `type` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `wrong` WRITE;
/*!40000 ALTER TABLE `wrong` DISABLE KEYS */;

INSERT INTO `wrong` (`id`, `qid`, `uid`, `question`, `a`, `b`, `c`, `d`, `right`, `imgUrl`, `type`)
VALUES
	(6,1,4,'伪造、变造机动车驾驶证构成犯罪的将被依法追究刑事责任。',NULL,NULL,NULL,NULL,'1',NULL,'1'),
	(7,1,2,'伪造、变造机动车驾驶证构成犯罪的将被依法追究刑事责任。',NULL,NULL,NULL,NULL,'1',NULL,'1'),
	(8,2,2,'造成交通事故后逃逸且构成犯罪的驾驶人,将吊销驾驶证且终生不得重新取得驾驶证。',NULL,NULL,NULL,NULL,'1',NULL,'1'),
	(9,1,1,'伪造、变造机动车驾驶证构成犯罪的将被依法追究刑事责任。',NULL,NULL,NULL,NULL,'1',NULL,'1'),
	(10,4,1,'驾驶机动车违反道路交通安全法律法规发生交通事故属于交通违章行为。',NULL,NULL,NULL,NULL,'2',NULL,'1'),
	(11,2,1,'造成交通事故后逃逸且构成犯罪的驾驶人,将吊销驾驶证且终生不得重新取得驾驶证。',NULL,NULL,NULL,NULL,'1',NULL,'1'),
	(12,5,1,'驾驶机动车在道路上违反道路交通安全法的行为，属于什么行为？','违章行为','违法行为','过失行为','违规行为','2',NULL,'2'),
	(13,7,1,'机动车驾驶人违法驾驶造成重大交通事故构成犯罪的，依法追究什么责任？','刑事责任','民事责任','经济责任','直接责任','1',NULL,'2'),
	(14,9,1,'驾驶人要按照驾驶证载明的准驾车型驾驶车辆。',NULL,NULL,NULL,NULL,'1',NULL,'1'),
	(15,8,1,'对未取得驾驶证驾驶机动车的，追究其法律责任。',NULL,NULL,NULL,NULL,'1',NULL,'1'),
	(16,10,1,'未取得驾驶证的学员在道路上学习驾驶技能，下列哪种做法是正确的？','使用所学车型的教练车由教练员随车指导','使用所学车型的教练车单独驾驶学习','使用私家车由教练员随车指导','使用所学车型的教练车由非教练员的驾驶人随车指导','1',NULL,'2');

/*!40000 ALTER TABLE `wrong` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
