-- MySQL dump 10.13  Distrib 5.6.26, for osx10.10 (x86_64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	5.6.26

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
-- Table structure for table `articledislike`
--

DROP TABLE IF EXISTS `articledislike`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articledislike` (
  `articledislike_id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`articledislike_id`),
  KEY `FKoqvs3hottuh7r1hvr2vtqm4px` (`article_id`),
  KEY `FKsiyt6ap7h0g5wismoi58ibnbv` (`user_id`),
  CONSTRAINT `FKoqvs3hottuh7r1hvr2vtqm4px` FOREIGN KEY (`article_id`) REFERENCES `myarticle` (`article_id`),
  CONSTRAINT `FKsiyt6ap7h0g5wismoi58ibnbv` FOREIGN KEY (`user_id`) REFERENCES `myuser` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articledislike`
--

LOCK TABLES `articledislike` WRITE;
/*!40000 ALTER TABLE `articledislike` DISABLE KEYS */;
/*!40000 ALTER TABLE `articledislike` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articlelike`
--

DROP TABLE IF EXISTS `articlelike`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articlelike` (
  `articlelike_id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`articlelike_id`),
  KEY `FK1y0p3pyovokkxwgrfwbv5yntm` (`article_id`),
  KEY `FKpehx0j4k5jmbhgp7s6evcveev` (`user_id`),
  CONSTRAINT `FK1y0p3pyovokkxwgrfwbv5yntm` FOREIGN KEY (`article_id`) REFERENCES `myarticle` (`article_id`),
  CONSTRAINT `FKpehx0j4k5jmbhgp7s6evcveev` FOREIGN KEY (`user_id`) REFERENCES `myuser` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articlelike`
--

LOCK TABLES `articlelike` WRITE;
/*!40000 ALTER TABLE `articlelike` DISABLE KEYS */;
INSERT INTO `articlelike` VALUES (1,2,3);
/*!40000 ALTER TABLE `articlelike` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment_count`
--

DROP TABLE IF EXISTS `comment_count`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment_count` (
  `comment_count_id` int(11) NOT NULL AUTO_INCREMENT,
  `login_date` date DEFAULT NULL,
  `comment_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`comment_count_id`),
  KEY `FKgva2v64ssh1idf6dptuagemdr` (`comment_id`),
  CONSTRAINT `FKgva2v64ssh1idf6dptuagemdr` FOREIGN KEY (`comment_id`) REFERENCES `mycomment` (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment_count`
--

LOCK TABLES `comment_count` WRITE;
/*!40000 ALTER TABLE `comment_count` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment_count` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commentlike`
--

DROP TABLE IF EXISTS `commentlike`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `commentlike` (
  `commentlike_id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`commentlike_id`),
  KEY `FKr1q2q262c1a88gcecehueq0qk` (`comment_id`),
  KEY `FKt4779pifukt6w91w1mmorkrcm` (`user_id`),
  CONSTRAINT `FKr1q2q262c1a88gcecehueq0qk` FOREIGN KEY (`comment_id`) REFERENCES `mycomment` (`comment_id`),
  CONSTRAINT `FKt4779pifukt6w91w1mmorkrcm` FOREIGN KEY (`user_id`) REFERENCES `myuser` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commentlike`
--

LOCK TABLES `commentlike` WRITE;
/*!40000 ALTER TABLE `commentlike` DISABLE KEYS */;
/*!40000 ALTER TABLE `commentlike` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_count`
--

DROP TABLE IF EXISTS `login_count`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login_count` (
  `login_count_id` int(11) NOT NULL AUTO_INCREMENT,
  `login_date` date DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`login_count_id`),
  KEY `FKnbis92yrgll1n75312ovl43rm` (`user_id`),
  CONSTRAINT `FKnbis92yrgll1n75312ovl43rm` FOREIGN KEY (`user_id`) REFERENCES `myuser` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_count`
--

LOCK TABLES `login_count` WRITE;
/*!40000 ALTER TABLE `login_count` DISABLE KEYS */;
/*!40000 ALTER TABLE `login_count` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media` (
  `media_id` int(11) NOT NULL AUTO_INCREMENT,
  `conent` longtext,
  PRIMARY KEY (`media_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myadmin`
--

DROP TABLE IF EXISTS `myadmin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `myadmin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myadmin`
--

LOCK TABLES `myadmin` WRITE;
/*!40000 ALTER TABLE `myadmin` DISABLE KEYS */;
INSERT INTO `myadmin` VALUES (1,'laixintao1995@163.com','laixintao1995@163.com','123');
/*!40000 ALTER TABLE `myadmin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myarticle`
--

DROP TABLE IF EXISTS `myarticle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `myarticle` (
  `article_id` int(11) NOT NULL AUTO_INCREMENT,
  `abstracts` longtext,
  `article_pic` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `content` longtext,
  `isDel` varchar(255) DEFAULT NULL,
  `pub_date` date DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `classification_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`article_id`),
  KEY `FKk00ha3bwb60qhu0nfire92ao7` (`classification_id`),
  CONSTRAINT `FKk00ha3bwb60qhu0nfire92ao7` FOREIGN KEY (`classification_id`) REFERENCES `myclassification` (`classification_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myarticle`
--

LOCK TABLES `myarticle` WRITE;
/*!40000 ALTER TABLE `myarticle` DISABLE KEYS */;
INSERT INTO `myarticle` VALUES (2,'炸了就炸了','1','1','今天，地球炸了',NULL,'2017-05-28','地球炸了',1),(4,'和之前的传闻一致，苹果在本次 WWDC 上发布屏幕尺寸为 10.5 英寸的 iPad Pro。',NULL,'laixintao','和之前的传闻一致，苹果在本次 WWDC 上发布屏幕尺寸为 10.5 英寸的 iPad Pro。\n\n和此前的 9.7 英寸屏幕版本相比，这款 iPad Pro 采用了超窄边框设计，边框窄了 40%，在机身尺寸几乎没有改变的前提下，屏幕分辨率达到了 2224*1668，其可视面积也增大了 20%，整机重量也仅为 1 磅。新款 iPad Pro 支持全尺寸键盘，当然也支持 Smart Keyboard。\n\n\n\n除了变大，这块屏幕还有不少特性：比如支持 True Tone 显示，广色域屏幕，低反光率。其亮度可以达到 600nits，同时支持 HDR 视频。\n\niPad Pro 10.5 英寸版的一个新特性是 ProMotion。根据屏幕内容，该功能可以让屏幕实现动态调节刷新率，最高实现 120Hz 刷新。这样也可以更好地配合延迟只有 20ms 的 Apple Pencil。\n\n\n\n配置上，iPad Pro 10.5 英寸版升级到了 A10X Fusion。该处理器 CPU 部分为六核设计，其中三核为高性能核心；GPU 部分为十二核心。其 CPU 部分比 A9X 快 30%，GPU 部分比 A9X 快 40%。\n\n\n\n苹果为新 iPad Pro 推出了 USB Type-C 转接头，并且新的 iPad Pro 也可以支持快充了。\n\n\n\n价格上，新款 iPad Pro 都为 64GB 存储空间起跳，10.5 英寸版 iPad Pro 的售价为 649 美元起，12.9 英寸的售价为 799 美元起。\n\n今天即可开订，下周开始发货。\n\n',NULL,'2017-06-03','屏幕变大的新 iPad Pro，或许是今晚最让人想买的硬件',1),(5,'<p>　　当地时间3日晚，北京时间今天凌晨，英国伦敦桥附近，一辆汽车冲撞行人。据BBC报道，目击者称至少造成6人受伤。目前，警方已经封锁了现场，伦敦桥也关闭。　　</p>',NULL,'laixintao','<p>　　当地时间3日晚，北京时间今天凌晨，英国伦敦桥附近，一辆汽车冲撞行人。据BBC报道，目击者称至少造成6人受伤。目前，警方已经封锁了现场，伦敦桥也关闭。　　</p>\n<p>　　伦敦警察厅确认这是恐怖攻击行为，并表示发生在沃克斯豪尔的伤人事件 ，与发生在伦敦桥和博罗市场的事件没有关联。　　</p>\n<p>　　据央视驻英国记者田晓春报道：伦敦恐怖袭击已造成2人死亡，20人受伤。</p>\n<div class=\"img_wrapper\"><img src=\"http://n.sinaimg.cn/news/transform/20170604/mhCc-fyfvnky4409069.jpg\" alt=\"\" data-link=\"\"><span class=\"img_descr\"></span></div>\n<p>　　据央视新闻频道报道：警方已经抓捕一名嫌疑人。</p>\n<p>　　BBC援引英国《每日电讯报》记者消息称，伦敦桥附近的博罗市场（Borough Market）附近传出三次爆炸声。</p>\n<div class=\"img_wrapper\"><img src=\"http://n.sinaimg.cn/news/transform/20170604/3bOb-fyfuzmy1640206.jpg\" alt=\"\" data-link=\"\"><span class=\"img_descr\"></span></div>\n<p>　　据BBC快讯，两名袭击者据信已经被击毙。</p>\n	\n\n\n\n\n\n\n\n<p class=\"article-editor\">责任编辑：张迪 </p>\n',NULL,'2017-01-01','伦敦恐怖袭击已致2死20伤 警方抓捕一名嫌疑人',1),(6,'北京时间6月6日，金州勇士在今年季后赛中的表现堪称现象级，甚至被一些人称为是史上最强球队，但是“关键先生”罗伯特-霍里并不买勇士队的账，他认为2000-01赛季的湖人队比这支勇士队更强。',NULL,'laixintao','<div class=\"article-a__content\" id=\"artibody\">\n							\n\n\n		<figure class=\"article-a__figure\" layout-mt-e=\"\">\n		<img src=\"http://n.sinaimg.cn/sports/transform/20170606/vhjA-fyfuzmy2102377.jpg\">\n		<figcaption class=\"article-a__figcaption\">勇士真的这么强吗？</figcaption>\n		</figure>\n\n\n\n        <link rel=\"stylesheet\" href=\"http://news.sina.com.cn/css/268/2011/1110/17/weibo-all.css\">\n<p><!--StartFragment --></p>\n<p>　　北京时间6月6日，金州勇士在今年季后赛中的表现堪称现象级，甚至被一些人称为是史上最强球队，但是“关键先生”罗伯特-霍里并不买勇士队的账，他认为2000-01赛季的湖人队比这支勇士队更强。</p>\n<p>　　假设勇士队在总决赛中横扫骑士队，并以16胜0负的不败战绩夺冠，这是否能让勇士队超越本世纪初的湖人王朝？</p>\n<p>　　“不，我不这么认为。”霍里毫不犹豫地说道。</p>\n<p>　　他随后进行了解释：“沙克是一股不可阻挡的力量，科比的表现也非常惊艳。这两个人的组合是非常疯狂的。”</p>\n<p>　　2000-01赛季的湖人是卫冕冠军，OK组合当时称霸全联盟，他们在那年季后赛取得15胜1负，唯一一场失利是总决赛第1场负于艾弗森领衔的76人。</p>\n<p>　　（罗森）</p>\n\n\n\n\n							\n							<div style=\"margin-top:35px;\">\n声明：新浪网独家稿件，未经授权禁止转载！</div>\n						</div>',NULL,'2017-03-02','勇士无敌?7冠王不买账 季后赛1负之队能赢他们',1),(7,'对卡塔尔来说，今天应该是非常重大的变局之日——从早上到下午，先后有沙特、巴林、埃及、阿联酋、也门、利比亚等6个中东国家与之断交，就连南亚岛国马尔代夫，也赶来凑了一把热闹，成为今天第七个与之断交的国家。阿盟也发出声明，开除卡塔尔。',NULL,'laixintao','<div class=\"img_wrapper\"><img style=\"max-width: 500px;\" title=\"1496684777877020.jpg\" src=\"http://n.sinaimg.cn/translate/20170606/RqJi-fyfuzmy2069542.jpg\" alt=\"\"><span class=\"img_descr\"></span></div>\n<p>　　对卡塔尔来说，今天应该是非常重大的变局之日——从早上到下午，先后有沙特、巴林、埃及、阿联酋、也门、利比亚等6个中东国家与之断交，就连南亚岛国马尔代夫，也赶来凑了一把热闹，成为今天第七个与之断交的国家。阿盟也发出声明，开除卡塔尔。</p>\n<p>　　卡塔尔，面积约1.152万平方公里，人口154万。在地图上，看上去是真正的“弹丸之地”。作为海合会的创始国、富裕的产油国，卡塔尔到底是为何遭此变局？</p>\n<p>　　为了解答这样的疑惑，我们今天邀请到了岛叔、中国国际广播电台前驻卡塔尔首席记者钟正杰。</p>\n<div class=\"img_wrapper\"><img style=\"max-width: 500px;\" title=\"1496684788977681.jpg\" src=\"http://n.sinaimg.cn/translate/20170606/18SP-fyfuzny3398681.jpg\" alt=\"\"><span class=\"img_descr\"></span></div>\n<div class=\"img_wrapper\"><img style=\"max-width: 500px;\" title=\"1496684798938508.jpg\" src=\"http://n.sinaimg.cn/translate/20170606/Y4h9-fyfvnky4765035.jpg\" alt=\"\"><span class=\"img_descr\"></span></div>\n<p>　　<strong>导火索</strong></p>\n<p>　　事情要从5月底的一场风波说起。</p>\n<p>　　当地时间5月24日，塔尔通讯社网站和卡塔尔埃米尔（国家元首）塔米姆的社交媒体账号发布了一些言论，称卡塔尔支持伊朗和巴勒斯坦伊斯兰抵抗运动“哈马斯”，以及卡塔尔同以色列关系密切，并批评了美国在卡塔尔的军事存在，不满重新与伊朗加深对抗等。其援引的来源，是塔米姆在军方的内部讲话，称伊朗是“不容忽视的伊斯兰强国”，并且“对伊朗怀有敌意是不智的”。</p>\n<p>　　此言一出，立即被大量海湾阿拉伯国家媒体转载，并引起部分国家的强烈反应。比如沙特的许多媒体，就指责卡塔尔脱离海合会成员国的队伍，站到了“敌人”（伊朗）的一边。随后卡塔尔紧急发布声明辟谣，称网站和社交媒体账号都遭到了黑客攻击。</p>\n<p>　　但沙特、埃及、阿联酋等国则显然不买账——自当天起，他们就屏蔽了卡塔尔媒体，包括半岛电视台、卡塔尔的新闻网站等。</p>\n<p>　　且不论这则消息是“假新闻”还是卡塔尔为了缓和局势所作的姿态，都是此次断交风波的直接导火索。最直接点燃火焰的，是卡塔尔跟伊朗的关系。</p>\n<div class=\"img_wrapper\"><img style=\"max-width: 500px;\" title=\"1496684836443061.jpg\" src=\"http://n.sinaimg.cn/translate/20170606/GnO6-fyfuzny3398689.jpg\" alt=\"\"><span class=\"img_descr\"></span></div>\n<p>　　<strong>与伊朗</strong></p>\n<p>　　众所周知，在中东，沙特跟伊朗一直都不对付。2016年初两国断交，只是两国悠久对抗史的最新注脚。</p>\n<p>　　在去年侠客岛的文章（沙特伊朗断交给中国出了个大难题）中，我们已经指出，沙特与伊朗的新仇旧恨简直不要太多——在中东分执逊尼派与什叶派之牛耳，形成根本的宗教分歧；一千多年前阿拉伯第二任哈里发征服古伊朗，种下民族矛盾的种子；一个是亲美的海合会首领，一个是中东头号的反美国家；在叙利亚、在也门等地，两国也是各支持一派，在别国领土上兵戎相见。</p>\n<p>　　偏偏，卡塔尔，这个海合会成员、逊尼派国家（跟沙特一样信奉瓦哈比教派），跟伊朗关系一直就非常不错。</p>\n<p>　　在卡塔尔的五年多时间里，岛叔曾经试图在各种资料中寻找卡塔尔和伊朗这种良好关系的起源和原因，但记载并不明晰。然而，在现实生活中，这种关系之好，居然超越了逊尼派和什叶派的宗教分歧。</p>\n<p>　　事实上，卡塔尔境内，居住了不少伊朗民众，且两国经贸往来密切，涉及到能源等多个方面；卡塔尔航空更是开通了通往伊朗德黑兰、设拉子、马什哈德三个城市的三条航线。伊朗人在卡塔尔各个领域的活动深广到什么层次呢？据消息人士透露，甚至在卡塔尔的大型国有企业的主要控股人中，都有伊朗人的身影。这种经贸关系的密切，远远超出卡塔尔和其他海湾国家（阿曼除外）的关系。也有分析指出，卡塔尔跟伊朗有共享的海上油气田，这是两者共同的利益所在。</p>\n<p>　　因为跟伊朗的特殊关系，卡塔尔曾一度想做海湾国家和伊朗之间的疏通桥梁。2016年，岛叔曾经看到报道称，伊朗外长和沙特外交大臣曾同时到访卡塔尔，当时就有猜测称，卡塔尔正在居中调节断交后的沙伊关系。如果属实的话，那就是调着调着，沙特跟卡塔尔也断交了……</p>\n<p>　　顺便说一句，在岛叔看来，跟中东隔着老远的马尔代夫，此次也跟着凑上“断交”的热闹，很可能也是因为伊朗。去年5月，这个信奉伊斯兰教的南亚国家就宣布了对伊断交，认为伊朗的举措不仅影响了中东，也影响了本国的安全。</p>\n<p>　　跟伊朗的关系当然是造成卡塔尔外交被动的原因，这一点在特朗普访中东之后尤其如此。在特朗普此行中，与传统盟友（沙特、以色列）的关系被进一步稳定，沙特买了1100亿美元的美国军火，而特朗普则一改奥巴马时期美国对伊朗缓和松动的态度，明确转向对伊朗的孤立和遏制。在此情况下，虽然在本国有美军在中东最大的空军基地，卡塔尔依然遭受了巨大的被动。</p>\n<div class=\"img_wrapper\"><img style=\"max-width: 500px;\" title=\"1496684865710468.jpg\" src=\"http://n.sinaimg.cn/translate/20170606/yWJt-fyfuzpn3842044.jpg\" alt=\"\"><span class=\"img_descr\"></span></div>\n<p>　　<strong>“还债”</strong></p>\n<p>　　当然，卡塔尔被7国外交围堵，也不光是因为跟伊朗关系好。更大程度上，是因为之前的卡塔尔奉行的独立外交政策。</p>\n<p>　　虽然国家不大，人口不多（本国民众只有30万），但卡塔尔曾经一度不甘寂寞。毕竟，2012年的时候，它是这个世界上最富裕的国家，人均GDP达到8.8万美元。从2010年到2013年，特别是爆发“阿拉伯之春”以来，卡塔尔曾经似乎看到了机会，试图在地区和国际事务中扮演更大的角色、发挥更大的作用，取代埃及和沙特，争夺地区事务主导权。</p>\n<p>　　比如，在推翻卡扎菲的行动中，卡塔尔是第一个派出战机参与利比亚战事的阿拉伯国家；在也门冲突中，卡塔尔首先提出让总统萨利赫交权；第一个公开支持阿拉伯国家开进叙利亚；支持巴勒斯坦反对武装哈马斯，哈马斯的领袖就住在卡塔尔；支持埃及的穆斯林兄弟会，而穆兄会被沙特等国明确认定为恐怖组织……</p>\n<div class=\"img_wrapper\"><img style=\"max-width: 500px;\" title=\"1496684886777527.jpg\" src=\"http://n.sinaimg.cn/translate/20170606/mnYW-fyfuzpn3842047.jpg\" alt=\"\"><span class=\"img_descr\"></span></div>\n<p>　　这也就是为什么，在此次断交潮中，沙特、阿联酋、巴林、埃及等国都指责卡塔尔“支持恐怖主义”、“干涉本国国内事务”。叙利亚为什么没和支持反对派的卡塔尔断交？那是因为他们压根就没建交。</p>\n<p>　　换句话说，前几年卡塔尔在中东的一系列行动，几乎让自己周围的所有邻居交恶。</p>\n<p>　　<strong>可以挨个数——</strong></p>\n<p>　　埃及动乱后，穆尔西政府上台，这是卡塔尔大力支持的；之后塞西政府推翻穆尔西，卡塔尔又跟新势力没有任何联系。就连埃及普通民众，有许多对半岛电视台极度看不惯，认为都是假新闻，甚至连坐飞机都坚决不在卡塔尔转机。</p>\n<p>　　巴林为什么断交？巴林是沙特的坚实盟友，没有沙特就没有巴林，巴林跟卡塔尔还有领土纠纷；也门的流亡领袖哈迪一直住在沙特，自然也站沙特，海合会领导的联军攻打反对派的胡塞武装一直无果，因为胡塞武装跟伊朗关系好，他们早就在怀疑卡塔尔是否在打击行动中真正出力了。</p>\n<p>　　剩下的中东国家中，阿曼几乎什么都不管；科威特虽然跟卡塔尔算不上坏，但跟沙特关系更好；伊拉克、黎巴嫩几乎无政府状态，自顾不暇；再往西去北非，半岛电视台一向在那边口碑不好。</p>\n<p>　　换句话说，在前任埃米尔和首相（兼外交大臣）的时代，卡塔尔在一系列事务上的“大出风头”，已经让沙特嗅到了危险。加上沙卡两国对伊朗、对穆兄会等的态度分歧，沙特率领各国向卡塔尔集中发难，就是顺理成章的事情了。此番沙特又获得了美国的支持和背书，行动就更加没有后顾之忧了。</p>\n<p>　　当然，卡塔尔也发挥过建设性作用。苏丹战乱的达尔富尔和谈，就是在卡塔尔签成的协议；支持哈马斯的原意，也是想推进巴以和谈。</p>\n<p>　　所以，在政权交接之后，卡塔尔也把首相换成了内政大臣兼任，注意点开始转向国内，开始政策调整。不过，他们依然在给此前的政策“还债”。</p>\n<p>　　<strong>危机</strong></p>\n<p>　　事实上，这也不是卡塔尔第一次遭遇此类危机。2014年，沙特、阿联酋、巴林三国就曾以类似的理由，对卡塔尔召回大使。之后，经过科威特、阿曼的调解，8个月后，事情解决。</p>\n<p>　　此次断交，相比起来事情则严重得多，想必危机也将持续更久。毕竟，卡塔尔的大多数基础物资，均来自沙特、埃及等国。就连卡塔尔航空飞往欧洲的航班，都得绕道伊朗、伊拉克了。岛叔在前线的朋友已经看到，在卡塔尔当地，民众已经开始在超市中抢购物资，虽然还未到恐慌的地步。今天上午开始，卡塔尔的股市已经大跌。至于2022年世界杯会不会移师中国……应该还不至于影响那么久。</p>\n<p>　　当然了，在沙特-卡塔尔的外交风波背后，无疑是大国博弈的最新注脚。叙利亚战场上的代理人战争仍在持续，美国依然需要沙特、以色列来遏制伊朗，表明自己在中东的存在。在沙特抛出1100亿美元大单、彻底向美国表明态度之后，卡塔尔的角色，当然会很尴尬。如果未来美国不出手在中东各国调解，卡塔尔未来的日子恐怕会相当难过。</p>\n<p>　　观点/钟正杰（中国国际广播电台前驻卡塔尔首席记者）</p>\n<p>　　编写/公子无忌</p>\n<div class=\"img_wrapper\"><img style=\"max-width: 500px;\" title=\"1496684706163030.jpg\" src=\"http://n.sinaimg.cn/translate/20170606/ABVJ-fyfvnky4765049.jpg\" alt=\"\"><span class=\"img_descr\"></span></div>\n<div class=\"img_wrapper\"><img style=\"max-width: 500px;\" title=\"1496684704146353.jpg\" src=\"http://n.sinaimg.cn/translate/20170606/rTcg-fyfuzpn3842055.jpg\" alt=\"\"><span class=\"img_descr\"></span></div>\n<div class=\"img_wrapper\"><img style=\"max-width: 500px;\" title=\"1496684705456065.jpg\" src=\"http://n.sinaimg.cn/translate/20170606/q7fX-fyfvnky4765060.jpg\" alt=\"\"><span class=\"img_descr\"></span></div>\n<div class=\"img_wrapper\"><img style=\"max-width: 500px;\" title=\"1496684706562037.jpg\" src=\"http://n.sinaimg.cn/translate/20170606/ubMr-fyfuzny3398703.jpg\" alt=\"\"><span class=\"img_descr\"></span></div>\n<p>　　来源：侠客岛</p>',NULL,'2017-02-02','卡塔尔断交',1),(8,'　　雇人排队只是短线的精明，餐饮业要增加附加价值，要建立在品质升级的基础之上。',NULL,'laixintao','<p><strong>　　原标题：网红餐饮“假排队”只是短线的精明</strong></p>\n<p><strong>　　作者：胡涵</strong></p>\n<p><strong>　　雇人排队只是短线的精明，餐饮业要增加附加价值，要建立在品质升级的基础之上。</strong></p>\n<p>　　曾有人调侃，只要把甜点变成榴莲味，把煎饼果子加上芝士，你就能收获一款网红级食品刷爆朋友圈。到了今天，事实上，还得加上一句，再雇来几十个人排队。</p>\n<p>　　最近这段时间，排队突然成了餐饮界的关键词。奶茶店排队、蛋糕店排队，在北京的CBD地区，我也时刻都能看到楼下的奶茶店有无数白领在排队。我一直好奇的是，为什么总有人在排队？难道这些白领不需要上班吗？</p>\n<p>　　6月5日，一度被热炒的某奶茶店和糕点店被媒体爆料或涉嫌雇人排队，算是解答了我的疑问。该媒体报道称，一个常年排队的某奶茶店雇用了数百人假排队，“人员构成很有讲究，有学生、青年、白领，而且不能一起到，要分批到，一般情况下，假排队10天，人气自然会被带动起来”。</p>\n<p>　　网红餐饮，一度似乎成了拯救餐饮业的希望。传统餐饮行业面临着艰难转型，利润太薄和互联网冲击，击垮了很多餐饮店。而从资本的角度看，餐饮行业的互联网改造并不成功，无论是曾名噪一时的某煎饼还是一些肉夹馍，都面临着过度概念化的诟病。</p>\n<p>　　网红餐饮的路数则非常简单：先打造品牌，通过品牌溢价来实现利润率的提升。这种玩法，真正的功夫并不在口味，而在于如何造势营销，如何让品牌变成稀缺品。雇人排队，正是这种思路所衍生出来的结果。二十四小时不分昼夜的排队事实上是一种用于展示的行为艺术，在线下承担着口碑传播的作用，而另一方面，排队本身，则加强了品牌的稀缺性，为消费行为附加上了稀缺性的品牌溢价。</p>\n<p>　　消费升级的本质，并不是品质服务本身升级，而是为消费品灌注上更多的附加值。在灌注附加值的思路上，雇人排队就成了一种展示稀缺的手段。这更像互联网公司的线上营销思路，只是如今，被餐饮店以夸张和执着的方式植入线下。</p>\n<p>　　但某种意义上说，这只是短线的精明。因为过往经验证明，餐饮业要增加附加价值，是要建立在品质升级的基础之上，否则，再多的眼球效应也只是短期泡沫。</p>\n<p>　　过去几年，明星开餐饮店，一度成了趋势，希望借着明星的IP光环为餐饮附加品牌价值。但这两年，一大批没有在品质上下足功夫的明星餐厅纷纷倒闭，或者传出食物质量不过关等丑闻，这足以证明，对于餐饮业来说，品牌营销并不是万能的。</p>\n<p>　　因此，雇人排队是一种店家的小精明，但更应该问的是，靠排队带来的网红名声，又能维持多久？（新京报）</p>\n	',NULL,'2017-02-02','网红餐饮“假排队”只是短线的精明',1),(9,'　　原标题：台湾政治狂人欲找林志玲当副手 参选台湾地区领导人',NULL,'laixintao','				\n	<p>　　原标题：台湾政治狂人欲找林志玲当副手 参选台湾地区领导人</p>\n<div class=\"img_wrapper\"><img src=\"http://n.sinaimg.cn/news/transform/20170606/d4x7-fyfuzpn3866718.jpg\" alt=\"台湾政治狂人欲找林志玲当副手，参选台湾地区领导人。（图片来源：台湾《中时电子报》）\" data-mcesrc=\"http://n.sinaimg.cn/translate/20170606/9h6A-fyfuzmy2089954.jpg\" data-mcestyle=\"max-width: 500px;\" data-mceselected=\"1\" data-link=\"\"><span class=\"img_descr\">台湾政治狂人欲找林志玲当副手，参选台湾地区领导人。（图片来源：台湾《中时电子报》）</span></div>\n<p>　　中国台湾网6月6日讯　据台湾《中时电子报》报道，前台湾工研院知识经济与竞争力研究中心主任杜紫宸早已高调宣布参选下届台湾地区领导人。5日杜紫宸接受广播专访时，先透露鸿海董事长郭台铭不会出来竞选，至于是否坚持参选2020不退？杜紫宸则说，顺势而为，希望尽量能不退。当杜被问到关于副手人选时，杜紫宸再度发下狂语指出，要找林志玲担任副手人选，因为志玲姐姐高颜值、高EQ，与自己有互补性。</p>\n<p>　　杜紫宸5日接受专访时针对副手人选表示，他认为他的优点在于过去背景使他对当局各领域有所了解，但缺点是个性急躁，因此需要高EQ、高亲和力的副手人选才有互补性。</p>\n<p>　　而朋友建议他为何不找林志玲？因为林志玲的职业生涯将告一段落，若能从政可作为岛内岛外的亲善大使，对民众也有鼓舞作用。另外，他也考虑其他高颜值、高EQ的艺人，但主要限制是参选年龄须在40岁以上。</p>\n	\n\n',NULL,'2001-02-01','湾政治狂人欲找林志玲当副手：因高颜值高EQ',1),(10,'test...',NULL,'laixintao','artile body...',NULL,'2017-01-01','test article',1);
/*!40000 ALTER TABLE `myarticle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myclassification`
--

DROP TABLE IF EXISTS `myclassification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `myclassification` (
  `classification_id` int(11) NOT NULL AUTO_INCREMENT,
  `classification_desc` varchar(255) DEFAULT NULL,
  `classification_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`classification_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myclassification`
--

LOCK TABLES `myclassification` WRITE;
/*!40000 ALTER TABLE `myclassification` DISABLE KEYS */;
INSERT INTO `myclassification` VALUES (1,'猎奇的新闻','猎奇新闻'),(2,'体育','体育'),(3,'bagua ','八卦'),(4,'政治','政治');
/*!40000 ALTER TABLE `myclassification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mycollocation`
--

DROP TABLE IF EXISTS `mycollocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mycollocation` (
  `collocation_id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`collocation_id`),
  KEY `FKlv629lmxqtinp91cu59usha2h` (`article_id`),
  KEY `FK3ew48a7w8ilnilv4qdd3sw4n9` (`user_id`),
  CONSTRAINT `FK3ew48a7w8ilnilv4qdd3sw4n9` FOREIGN KEY (`user_id`) REFERENCES `myuser` (`user_id`),
  CONSTRAINT `FKlv629lmxqtinp91cu59usha2h` FOREIGN KEY (`article_id`) REFERENCES `myarticle` (`article_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mycollocation`
--

LOCK TABLES `mycollocation` WRITE;
/*!40000 ALTER TABLE `mycollocation` DISABLE KEYS */;
/*!40000 ALTER TABLE `mycollocation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mycomment`
--

DROP TABLE IF EXISTS `mycomment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mycomment` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `coment_date` datetime DEFAULT NULL,
  `content` longtext,
  `article_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `FKakyiowa4n2c92anmchd6r6num` (`article_id`),
  KEY `FK81nbq87vg1khvyajvohx28j6v` (`user_id`),
  CONSTRAINT `FK81nbq87vg1khvyajvohx28j6v` FOREIGN KEY (`user_id`) REFERENCES `myuser` (`user_id`),
  CONSTRAINT `FKakyiowa4n2c92anmchd6r6num` FOREIGN KEY (`article_id`) REFERENCES `myarticle` (`article_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mycomment`
--

LOCK TABLES `mycomment` WRITE;
/*!40000 ALTER TABLE `mycomment` DISABLE KEYS */;
INSERT INTO `mycomment` VALUES (2,'2017-05-28 17:43:16','con撒发撒旦法',2,1),(3,'2017-05-28 17:43:29','打发掉发生的',2,1),(4,'2017-05-28 17:43:31','啊撒旦法啊撒旦法阿三 ',2,1),(5,'2017-06-06 10:35:31','测试评论',NULL,3),(6,'2017-06-06 11:02:12','评论',4,3),(7,'2017-06-06 13:15:21','评论测试',7,3),(8,'2017-02-01 13:25:05','勇士无敌',6,1),(9,'2017-02-01 13:25:19','没法挡他拿几冠？现规则场场罚下！//@慢慢爬78659：小球之所以开始有了发展就是因为奥尼尔那时候根本没法阻挡，只能用速度和空间去周旋。然后慢慢的沿袭到了现在这个状况。',6,1),(10,'2017-02-01 13:25:26','小球盛行的原因是现在已没有经典中锋',6,1),(11,'2017-02-01 13:25:33','小球之所以开始有了发展就是因为奥尼尔那时候根本没法阻挡，只能用速度和空间去周旋。然后慢慢的沿袭到了现在这个状况。',6,1),(12,'2017-06-06 14:15:03','test comment',8,4),(13,'2017-06-06 14:23:16','test comment.......',6,5);
/*!40000 ALTER TABLE `mycomment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myfollow`
--

DROP TABLE IF EXISTS `myfollow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `myfollow` (
  `myfollow_id` int(11) NOT NULL AUTO_INCREMENT,
  `U_id` int(11) DEFAULT NULL,
  `I_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`myfollow_id`),
  KEY `FKov3rdldfhgj7i1n2odws5om75` (`U_id`),
  KEY `FKdarths1ab8fjj837lus3rrhrm` (`I_id`),
  CONSTRAINT `FKdarths1ab8fjj837lus3rrhrm` FOREIGN KEY (`I_id`) REFERENCES `myuser` (`user_id`),
  CONSTRAINT `FKov3rdldfhgj7i1n2odws5om75` FOREIGN KEY (`U_id`) REFERENCES `myuser` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myfollow`
--

LOCK TABLES `myfollow` WRITE;
/*!40000 ALTER TABLE `myfollow` DISABLE KEYS */;
/*!40000 ALTER TABLE `myfollow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mysubscribe`
--

DROP TABLE IF EXISTS `mysubscribe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mysubscribe` (
  `subscibe_id` int(11) NOT NULL AUTO_INCREMENT,
  `classification_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`subscibe_id`),
  KEY `FKo52nl2kdka7d7x03gx6wu1afs` (`classification_id`),
  KEY `FK4nu1u9qqv846r85kgh8curixl` (`user_id`),
  CONSTRAINT `FK4nu1u9qqv846r85kgh8curixl` FOREIGN KEY (`user_id`) REFERENCES `myuser` (`user_id`),
  CONSTRAINT `FKo52nl2kdka7d7x03gx6wu1afs` FOREIGN KEY (`classification_id`) REFERENCES `myclassification` (`classification_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mysubscribe`
--

LOCK TABLES `mysubscribe` WRITE;
/*!40000 ALTER TABLE `mysubscribe` DISABLE KEYS */;
/*!40000 ALTER TABLE `mysubscribe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myuser`
--

DROP TABLE IF EXISTS `myuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `myuser` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myuser`
--

LOCK TABLES `myuser` WRITE;
/*!40000 ALTER TABLE `myuser` DISABLE KEYS */;
INSERT INTO `myuser` VALUES (1,'laixintao','123'),(2,'hello','123'),(3,'laixintao','202cb962ac59075b964b07152d234b70'),(4,'test','202cb962ac59075b964b07152d234b70'),(5,'test2','202cb962ac59075b964b07152d234b70');
/*!40000 ALTER TABLE `myuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `read_count`
--

DROP TABLE IF EXISTS `read_count`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `read_count` (
  `read_count_id` int(11) NOT NULL AUTO_INCREMENT,
  `read_date` date DEFAULT NULL,
  `article_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`read_count_id`),
  KEY `FKdnocgsxtxrntdjy72yp154tbs` (`article_id`),
  CONSTRAINT `FKdnocgsxtxrntdjy72yp154tbs` FOREIGN KEY (`article_id`) REFERENCES `myarticle` (`article_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `read_count`
--

LOCK TABLES `read_count` WRITE;
/*!40000 ALTER TABLE `read_count` DISABLE KEYS */;
/*!40000 ALTER TABLE `read_count` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `register_count`
--

DROP TABLE IF EXISTS `register_count`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `register_count` (
  `register_count_id` int(11) NOT NULL AUTO_INCREMENT,
  `register_date` date DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`register_count_id`),
  KEY `FKfcs4p9kv97lildxlcnbiv06h8` (`user_id`),
  CONSTRAINT `FKfcs4p9kv97lildxlcnbiv06h8` FOREIGN KEY (`user_id`) REFERENCES `myuser` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `register_count`
--

LOCK TABLES `register_count` WRITE;
/*!40000 ALTER TABLE `register_count` DISABLE KEYS */;
/*!40000 ALTER TABLE `register_count` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request_count`
--

DROP TABLE IF EXISTS `request_count`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `request_count` (
  `request_count_id` int(11) NOT NULL AUTO_INCREMENT,
  `request_date` date DEFAULT NULL,
  `classification_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`request_count_id`),
  KEY `FKbkk4lh364lw9p86dunrqc4gqe` (`classification_id`),
  CONSTRAINT `FKbkk4lh364lw9p86dunrqc4gqe` FOREIGN KEY (`classification_id`) REFERENCES `myclassification` (`classification_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request_count`
--

LOCK TABLES `request_count` WRITE;
/*!40000 ALTER TABLE `request_count` DISABLE KEYS */;
/*!40000 ALTER TABLE `request_count` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userinformation`
--

DROP TABLE IF EXISTS `userinformation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userinformation` (
  `information_id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `own_word` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`information_id`),
  KEY `FKiysgvof3be13saprs0oka4n23` (`user_id`),
  CONSTRAINT `FKiysgvof3be13saprs0oka4n23` FOREIGN KEY (`user_id`) REFERENCES `myuser` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userinformation`
--

LOCK TABLES `userinformation` WRITE;
/*!40000 ALTER TABLE `userinformation` DISABLE KEYS */;
/*!40000 ALTER TABLE `userinformation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-06 14:40:32
