# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.18)
# Database: test
# Generation Time: 2017-05-27 07:08:59 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table car
# ------------------------------------------------------------

DROP TABLE IF EXISTS `car`;

CREATE TABLE `car` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `question` varchar(128) NOT NULL DEFAULT '',
  `a` varchar(64) DEFAULT NULL,
  `b` varchar(64) DEFAULT NULL,
  `c` varchar(64) DEFAULT NULL,
  `d` varchar(64) DEFAULT NULL,
  `right` varchar(32) NOT NULL DEFAULT '',
  `imgUrl` varchar(128) DEFAULT NULL,
  `type` varchar(32) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `car` WRITE;
/*!40000 ALTER TABLE `car` DISABLE KEYS */;

INSERT INTO `car` (`id`, `question`, `a`, `b`, `c`, `d`, `right`, `imgUrl`, `type`)
VALUES
	(1,'伪造、变造机动车驾驶证构成犯罪的将被依法追究刑事责任。',NULL,NULL,NULL,NULL,'1',NULL,'1'),
	(2,'造成交通事故后逃逸且构成犯罪的驾驶人,将吊销驾驶证且终生不得重新取得驾驶证。',NULL,NULL,NULL,NULL,'1',NULL,'1'),
	(3,'驾驶机动车在道路上违反交通安全法规的行为属于违法行为。',NULL,NULL,NULL,NULL,'1',NULL,'1'),
	(4,'驾驶机动车违反道路交通安全法律法规发生交通事故属于交通违章行为。',NULL,NULL,NULL,NULL,'2',NULL,'1'),
	(5,'驾驶机动车在道路上违反道路交通安全法的行为，属于什么行为？','违章行为','违法行为','过失行为','违规行为','2',NULL,'2'),
	(6,'对违法驾驶发生重大交通事故且构成犯罪的，不追究其刑事责任。',NULL,NULL,NULL,NULL,'2',NULL,'1'),
	(7,'机动车驾驶人违法驾驶造成重大交通事故构成犯罪的，依法追究什么责任？','刑事责任','民事责任','经济责任','直接责任','1',NULL,'2'),
	(8,'对未取得驾驶证驾驶机动车的，追究其法律责任。',NULL,NULL,NULL,NULL,'1',NULL,'1'),
	(9,'驾驶人要按照驾驶证载明的准驾车型驾驶车辆。',NULL,NULL,NULL,NULL,'1',NULL,'1'),
	(10,'未取得驾驶证的学员在道路上学习驾驶技能，下列哪种做法是正确的？','使用所学车型的教练车由教练员随车指导','使用所学车型的教练车单独驾驶学习','使用私家车由教练员随车指导','使用所学车型的教练车由非教练员的驾驶人随车指导','1',NULL,'2'),
	(11,'上路行驶的机动车未随车携带身份证的，交通警察可依法扣留机动车。',NULL,NULL,NULL,NULL,'2',NULL,'1'),
	(12,'上路行驶的机动车未放置检验合格标志的，交通警察可依法扣留机动车。',NULL,NULL,NULL,NULL,'1',NULL,'1'),
	(13,'在实习期内驾驶机动车的，应当在车身后部粘贴或者悬挂哪种标志？','注意新手标志','注意避让标志','统一式样的实习标志','注意车距标志','3',NULL,'2'),
	(14,'拼装的机动车只要认为安全就可以上路行驶。',NULL,NULL,NULL,NULL,'2',NULL,'1'),
	(15,'下列哪种证件是驾驶机动车上路行驶应当随车携带？','机动车登记证','机动车保险单','机动车行驶证','出厂合格证明','3',NULL,'2'),
	(16,'驾驶人在下列哪种情况下不能驾驶机动车？ ','饮酒后','喝茶后','喝咖啡后','喝牛奶后','1',NULL,'2'),
	(17,'机动车驾驶人在实习期内驾驶机动车不得牵引挂车。',NULL,NULL,NULL,NULL,'1',NULL,'1'),
	(18,'机动车驾驶人初次申领驾驶证后的实习期是多长时间？','6个月','12个月','16个月','18个月','2',NULL,'2'),
	(19,'对驾驶拼装机动车上路行驶的驾驶人，会受到下列哪种处罚？','处15日以下拘留','依法追究刑事责任','处200以上2000元以下罚款','吊销机动车行驶证','3',NULL,'2'),
	(20,'驾驶机动车在道路上违反道路通行规定应当接受相应的处罚。',NULL,NULL,NULL,NULL,'1',NULL,'1'),
	(21,'已经达到报废标准的机动车经大修后可以上路行驶。',NULL,NULL,NULL,NULL,'2',NULL,'1'),
	(22,'机动车驾驶人造成事故后逃逸构成犯罪的，吊销驾驶证且多长时间不得重新取得驾驶证？','5年内','10年内','终生','20年内','3',NULL,'2'),
	(23,'驾驶拼装机动车上路行驶的驾驶人，除按规定接受罚款外，还要受到哪种处理？','处10日以下拘留','暂扣驾驶证','吊销驾驶证','追究刑事责任','3',NULL,'2'),
	(24,'服用国家管制的精神药品可以短途驾驶机动车。',NULL,NULL,NULL,NULL,'2',NULL,'1'),
	(25,'驾驶人的驾驶证损毁后不得驾驶机动车。',NULL,NULL,NULL,NULL,'1',NULL,'1'),
	(26,'前方路口这种信号灯亮表示什么意思？','路口警示','禁止通行','准许通行','提醒注意','2','http://oqlk4664e.bkt.clouddn.com/5eb4d75agw1e28ynx217gj.jpg','2'),
	(27,'机动车在道路上变更车道需要注意什么？','尽快加速进入左侧车道','不能影响其他车辆正常行驶','进入左侧车道时适当减速','开启转向灯迅速向左转向','2',NULL,'2'),
	(28,'在这种急弯道路上行车应交替使用远近光灯。',NULL,NULL,NULL,NULL,'1','http://oqlk4664e.bkt.clouddn.com/5eb4d75agw1e28yonj0s3j.jpg','1'),
	(29,'驾驶这种机动车上路行驶没有违法行为。',NULL,NULL,NULL,NULL,'2','http://oqlk4664e.bkt.clouddn.com/5eb4d75agw1e28ynvrjv8j.jpg','1'),
	(30,'道路交通安全违法行为累积记分的周期是多长时间？','3个月','6个月','12个月','24个月','3',NULL,'2'),
	(31,'在这种环境下通过路口如何使用灯光？','关闭远光灯','使用危险报警闪光灯','使用远光灯','交替使用远近光灯','4','http://oqlk4664e.bkt.clouddn.com/5eb4d75agw1e28yokhd9yj.jpg','2'),
	(32,'驾驶机动车上路前应当检查车辆安全技术性能。',NULL,NULL,NULL,NULL,'1',NULL,'1'),
	(33,'在这种环境里行车使用近光灯。',NULL,NULL,NULL,NULL,'1','http://oqlk4664e.bkt.clouddn.com/5eb4d75agw1e28yomrdctj.jpg','1'),
	(34,'驾驶机动车上坡时,在将要到达坡道顶端时要加速并鸣喇叭。',NULL,NULL,NULL,NULL,'2',NULL,'1'),
	(35,'不得驾驶具有安全隐患的机动车上道路行驶。',NULL,NULL,NULL,NULL,'1',NULL,'1'),
	(36,'驾驶机动车在道路上超车时可以不使用转向灯。',NULL,NULL,NULL,NULL,'2',NULL,'1'),
	(37,'驾驶机动车在这种道路上如何通行？','在道路两边通行','在道路中间通行','实行分道通行','可随意通行','2','http://oqlk4664e.bkt.clouddn.com/5eb4d75agw1e28yo1bra5j.jpg','2'),
	(38,'饮酒后只要不影响驾驶操作可以短距离驾驶机动车。',NULL,NULL,NULL,NULL,'2',NULL,'1'),
	(39,'在这段城市道路上行驶的最高速度不能超过多少？','30公里/小时','40公里/小时','50公里/小时','70公里/小时','1','http://oqlk4664e.bkt.clouddn.com/5eb4d75agw1e28yoq99yfj.jpg','2'),
	(40,'驾驶机动车通过铁路道口时，最高速度不能超过多少？','15公里/小时','20公里/小时','30公里/小时','40公里/小时','3',NULL,'2'),
	(41,'驾驶机动车在道路上向右变更车道可以不使用转向灯。',NULL,NULL,NULL,NULL,'2',NULL,'1'),
	(42,'驾驶机动车应当随身携带哪种证件？','工作证','驾驶证','身份证','职业资格证','2',NULL,'2'),
	(43,'驾驶机动车在冰雪道路行驶时，最高速度不能超过多少？','20公里/小时','30公里/小时','40公里/小时','50公里/小时','2',NULL,'2'),
	(44,'在这条公路上行驶的最高速度不能超过多少？','30公里/小时','40公里/小时','50公里/小时','70公里/小时','4','http://oqlk4664e.bkt.clouddn.com/5eb4d75agw1e28you73djj.jpg','2'),
	(45,'前方路口这种信号灯亮表示什么意思？','路口警示','禁止通行','准许通行','提醒注意','3','http://oqlk4664e.bkt.clouddn.com/5eb4d75agw1e28yo02ozyj.jpg','2'),
	(46,'驾驶机动车在进出非机动车道时，最高速度不能超过多少？','30公里/小时','40公里/小时','50公里/小时','60公里/小时','1',NULL,'2'),
	(47,'驾驶机动车在雾天行车开启雾灯和危险报警闪光灯。',NULL,NULL,NULL,NULL,'1',NULL,'1'),
	(48,'在这条高速公路上行驶时的最高速度不能超过多少？','100公里/小时','110公里/小时','120公里/小时','90公里 /小时','2','http://oqlk4664e.bkt.clouddn.com/5eb4d75agw1e28yootn48j.jpg','2'),
	(49,'驾驶机动车通过急弯路时，最高速度不能超过多少？','20公里/小时','30公里/小时','40公里/小时','50公里/小时','2',NULL,'2'),
	(50,'驾驶机动车上路行驶应当按规定悬挂号牌。',NULL,NULL,NULL,NULL,'1',NULL,'1'),
	(51,'这辆红色轿车变更车道的方法和路线是正确的。',NULL,NULL,NULL,NULL,'2','http://oqlk4664e.bkt.clouddn.com/5eb4d75agw1e28yofpudaj.jpg','1'),
	(52,'驾驶人持超过有效期的驾驶证可以在1年内驾驶机动车。',NULL,NULL,NULL,NULL,'2',NULL,'1'),
	(53,'在这条城市道路上行驶的最高速度不能超过多少？','30公里/小时','40公里/小时','50公里/小时','70公里/小时','3','http://oqlk4664e.bkt.clouddn.com/5eb4d75agw1e28yosxv4sj.jpg','2'),
	(54,'驾驶机动车通过窄路、窄桥时，最高速度不能超过多少？','60公里/小时','50公里/小时','40公里/小时','30公里/小时','4',NULL,'2'),
	(55,'记分满12分的驾驶人拒不参加学习和考试的将被公告驾驶证停止使用。',NULL,NULL,NULL,NULL,'1',NULL,'1'),
	(56,'在这种路段如何行驶？','减速鸣喇叭示意','加速鸣喇叭通过','在弯道中心转弯','占对方道路转弯','1','http://oqlk4664e.bkt.clouddn.com/5eb4d75agw1e28yolsv2zj.jpg','2'),
	(57,'交通标志和交通标线不属于交通信号。',NULL,NULL,NULL,NULL,'2',NULL,'1'),
	(58,'公安机关交通管理部门对驾驶人的交通违法行为除依法给予行政处罚外,实行下列哪种制度？','违法登记制度','奖励里程制度','累积记分制度','强制报废制度','3',NULL,'2'),
	(59,'驾驶机动车在路口遇到这种情况如何行驶？','可以向右转弯','靠右侧直行','遵守交通信号灯','停车等待','4','http://oqlk4664e.bkt.clouddn.com/5eb4d75agw1e28yo4x4trj.jpg','2'),
	(60,'驾驶报废机动车上路行驶的驾驶人，除按规定罚款外，还要受到哪种处理？','撤销驾驶许可','收缴驾驶证','强制恢复车况','吊销驾驶证','4',NULL,'2'),
	(61,'交通信号灯由红灯、绿灯和黄灯组成。',NULL,NULL,NULL,NULL,'1',NULL,'1'),
	(62,'在这种天气条件下行车如何使用灯光？','使用远光灯','使用雾灯','开启右转向灯','不使用灯光','2','http://oqlk4664e.bkt.clouddn.com/5eb4d75agw1e28yoi7zp3j.jpg','2'),
	(63,'驾驶机动车遇到沙尘、冰雹、雨、雾、结冰等气象条件时应降低行驶速度。',NULL,NULL,NULL,NULL,'1',NULL,'1'),
	(64,'驾驶这种机动车上路行驶属于什么行为？','违规行为','违章行为','违法行为','犯罪行为','3','http://oqlk4664e.bkt.clouddn.com/5eb4d75agw1e28ynx217gj.jpg','2'),
	(65,'有这种信号灯的路口允许机动车如何行驶？','向左转弯','直行通过','向右转弯','停车等待','3','http://oqlk4664e.bkt.clouddn.com/5eb4d75agw1e28yo637y5j.jpg','2'),
	(66,'在这种天气条件下行车如何使用灯光？','使用近光灯','不使用灯光','使用远光灯','使用雾灯','1','http://oqlk4664e.bkt.clouddn.com/5eb4d75agw1e28yoh6x6xj.jpg','2'),
	(67,'下列哪种标志是驾驶机动车上路行驶应当在车上放置的标志？','产品合格标志','保持车距标志','提醒危险标志','检验合格标志','4',NULL,'2'),
	(68,'驾驶机动车在泥泞道路行驶时，最高速度不能超过多少？','15公里/小时','20公里/小时','30公里/小时','40公里/小时','3',NULL,'2'),
	(69,'遇到这种情况的路口怎样通过？','左转弯加速通过','加速直行通过','右转弯加速通过','确认安全后通过','4','http://oqlk4664e.bkt.clouddn.com/5eb4d75agw1e28yo7j7eyj.jpg','2'),
	(70,'交通信号包括交通信号灯、交通标志、交通标线和交通警察的指挥。',NULL,NULL,NULL,NULL,'1',NULL,'1'),
	(71,'道路上划设这种标线的车道内允许下列哪类车辆通行？','出租车','公务用车','公交车','私家车','3','http://oqlk4664e.bkt.clouddn.com/5eb4d75agw1e28yo3c0qbj.jpg','2');

/*!40000 ALTER TABLE `car` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
