/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 50537
Source Host           : 127.0.0.1:3306
Source Database       : trav_cms

Target Server Type    : MYSQL
Target Server Version : 50537
File Encoding         : 65001

Date: 2017-04-14 12:55:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_banner`
-- ----------------------------
DROP TABLE IF EXISTS `t_banner`;
CREATE TABLE `t_banner` (
  `ban_id` int(11) NOT NULL AUTO_INCREMENT,
  `ban_name` varchar(30) DEFAULT NULL,
  `ban_title` varchar(80) DEFAULT NULL,
  `ban_path` varchar(30) DEFAULT '' COMMENT '轮播图路径',
  `scen_id` int(11) DEFAULT NULL COMMENT '景点',
  PRIMARY KEY (`ban_id`),
  KEY `Prim_scenid` (`scen_id`),
  CONSTRAINT `Prim_scenid` FOREIGN KEY (`scen_id`) REFERENCES `t_scen` (`scen_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COMMENT='图片轮播';

-- ----------------------------
-- Records of t_banner
-- ----------------------------
INSERT INTO `t_banner` VALUES ('119', '龙门石窟', 'http://www.lyta.com.cn/scenic/8a928c4841a657c10141ab7d51b20130', 'image/banner/slide3.jpg', '1');
INSERT INTO `t_banner` VALUES ('121', '重渡沟', 'http://www.forguo.com/map.html', 'image/banner/slide4.jpg', '6');
INSERT INTO `t_banner` VALUES ('122', '丽景门', 'http://www.forguo.com', 'image/banner/slide5.jpg', '4');
INSERT INTO `t_banner` VALUES ('123', '关林', 'http://www.lyta.com.cn/scenic/8a928c4841a657c10141ab7e91d30168', 'image/banner/slide2.jpg', '5');
INSERT INTO `t_banner` VALUES ('136', '白马寺', 'http://www.lyta.com.cn/scenic/8a928c4841a657c10141ab7e11490150', 'image/banner/slide1.jpg', '2');

-- ----------------------------
-- Table structure for `t_group`
-- ----------------------------
DROP TABLE IF EXISTS `t_group`;
CREATE TABLE `t_group` (
  `group_id` int(11) NOT NULL,
  `group_name` varchar(100) NOT NULL COMMENT '级别',
  PRIMARY KEY (`group_id`),
  KEY `group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='管理员级别';

-- ----------------------------
-- Records of t_group
-- ----------------------------
INSERT INTO `t_group` VALUES ('0', '普通用户');
INSERT INTO `t_group` VALUES ('1', '管理员');
INSERT INTO `t_group` VALUES ('2', '超级管理员');
INSERT INTO `t_group` VALUES ('3', 'Vip管理');

-- ----------------------------
-- Table structure for `t_info`
-- ----------------------------
DROP TABLE IF EXISTS `t_info`;
CREATE TABLE `t_info` (
  `info_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `info_title` varchar(100) NOT NULL COMMENT '标题',
  `info_txt` varchar(500) NOT NULL COMMENT '内容',
  `info_tag` varchar(20) DEFAULT NULL,
  `info_pic` varchar(40) DEFAULT NULL COMMENT '图片',
  `info_video` varchar(40) DEFAULT NULL COMMENT '视频',
  `info_url` varchar(80) DEFAULT NULL COMMENT 'URl',
  `info_date` date DEFAULT NULL COMMENT '日期',
  `info_order` int(11) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='资讯表';

-- ----------------------------
-- Records of t_info
-- ----------------------------
INSERT INTO `t_info` VALUES ('1', '龙门石窟', 'Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper.', '洛阳旅游', 'image/info/ava-1.jpg', null, 'http://www.forguo.com', '2017-04-05', '4');
INSERT INTO `t_info` VALUES ('2', '牡丹文化艺术节', '2017年4月，第27届牡丹文化艺术节隆重矩形', '洛阳旅游', 'image/info/ava-1.jpg', 'video', 'http://www.forguo.com', '2017-04-10', '1');
INSERT INTO `t_info` VALUES ('4', '牡丹文化艺术节', 'Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper.', '洛阳旅游', 'image/info/ava-1.jpg', null, '洛阳旅游', '2017-04-10', '1');
INSERT INTO `t_info` VALUES ('5', '牡丹文化艺术节', 'Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper.', '洛阳旅游', 'image/info/ava-2.jpg', null, '洛阳旅游', '2017-04-10', '3');
INSERT INTO `t_info` VALUES ('6', '牡丹文化艺术节', 'Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper.', '洛阳旅游', 'image/info/ava-1.jpg', null, '1', '2017-04-10', '1');
INSERT INTO `t_info` VALUES ('7', '牡丹文化艺术节', 'Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper.', '洛阳旅游', 'image/info/ava-2.jpg', null, '2', '2017-04-10', '2');
INSERT INTO `t_info` VALUES ('8', '牡丹文化艺术节', 'Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper.', '洛阳旅游', 'image/info/ava-3.jpg', null, '3', '2017-04-10', '3');
INSERT INTO `t_info` VALUES ('9', '牡丹文化艺术节', 'Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper.', '洛阳旅游', 'image/info/ava-5.jpg', null, '4', '2017-04-10', '4');
INSERT INTO `t_info` VALUES ('10', '牡丹文化艺术节', 'Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper.', '洛阳旅游', 'image/info/ava-4.jpg', null, '5', '2017-04-10', '5');
INSERT INTO `t_info` VALUES ('11', '牡丹文化艺术节', 'Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper.', '洛阳旅游', 'image/info/ava-1.jpg', null, '9', '2017-04-10', '9');
INSERT INTO `t_info` VALUES ('12', '牡丹文化艺术节', 'Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper.', '洛阳旅游', 'image/info/ava-2.jpg', null, '10', '2017-04-10', '10');
INSERT INTO `t_info` VALUES ('13', '牡丹文化艺术节', 'Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper.', '洛阳旅游', 'image/info/ava-1.jpg', null, '11', '2017-04-10', '11');
INSERT INTO `t_info` VALUES ('15', '第35届中国洛阳牡丹文化节 “河洛欢歌·广场文化月”', '作为第35届中国洛阳牡丹文化节“文惠洛阳”系列活动的重头戏，“河洛欢歌·广场文化月”活动在西工区周王城广场开幕。该活动从2007年开始，迄今为止已经开展了11个年头，已经成为我市群众文化展示交流的舞台，先后荣获“全国特色广场文化活动”称号和“集体项目群星奖”，成为牡丹文化节的一张文化名片和全国群众文化活动的知名品牌。 ...', '河洛欢歌·广场文化月', 'image/info/20191CF.jpg', null, 'http://www.lyta.com.cn/activity/detail/4028808b5b50ec93015b666b2fb402ab', '2017-04-14', '99');
INSERT INTO `t_info` VALUES ('16', '第35届中国洛阳牡丹文化节 “河洛欢歌·广场文化月”', '作为第35届中国洛阳牡丹文化节“文惠洛阳”系列活动的重头戏，“河洛欢歌·广场文化月”活动在西工区周王城广场开幕。该活动从2007年开始，迄今为止已经开展了11个年头，已经成为我市群众文化展示交流的舞台，先后荣获“全国特色广场文化活动”称号和“集体项目群星奖”，成为牡丹文化节的一张文化名片和全国群众文化活动的知名品牌。 ...', '河洛欢歌·广场文化月', 'image/info/20191CF.jpg', null, 'http://www.lyta.com.cn/activity/detail/4028808b5b50ec93015b666b2fb402ab', '2017-04-14', '98');
INSERT INTO `t_info` VALUES ('17', '第35届中国洛阳牡丹文化节 “河洛欢歌·广场文化月”', '作为第35届中国洛阳牡丹文化节“文惠洛阳”系列活动的重头戏，“河洛欢歌·广场文化月”活动在西工区周王城广场开幕。该活动从2007年开始，迄今为止已经开展了11个年头，已经成为我市群众文化展示交流的舞台，先后荣获“全国特色广场文化活动”称号和“集体项目群星奖”，成为牡丹文化节的一张文化名片和全国群众文化活动的知名品牌。 ...', '河洛欢歌·广场文化月', 'image/info/20191CF.jpg', null, 'http://www.lyta.com.cn/activity/detail/4028808b5b50ec93015b666b2fb402ab', '2017-04-14', '97');
INSERT INTO `t_info` VALUES ('18', '第35届中国洛阳牡丹文化节 “河洛欢歌·广场文化月”', '作为第35届中国洛阳牡丹文化节“文惠洛阳”系列活动的重头戏，“河洛欢歌·广场文化月”活动在西工区周王城广场开幕。该活动从2007年开始，迄今为止已经开展了11个年头，已经成为我市群众文化展示交流的舞台，先后荣获“全国特色广场文化活动”称号和“集体项目群星奖”，成为牡丹文化节的一张文化名片和全国群众文化活动的知名品牌。 ...', '河洛欢歌·广场文化月', 'image/info/20191CF.jpg', null, 'http://www.lyta.com.cn/activity/detail/4028808b5b50ec93015b666b2fb402ab', '2017-04-14', '96');
INSERT INTO `t_info` VALUES ('19', '第三届洛阳荆紫仙山桃花节', '阳春叁月，春暖花开，又到了去荆紫仙山看桃花的季节了。今年荆紫仙山桃花节将于3月5日盛大开幕，持续至3月25日，开幕当天免门票。桃红又是一年春，每年的叁月都是外出游玩踏青的好时节，在洛阳有件赏花盛事，那就是去荆紫仙山观赏桃花，在早春花开时节，在新安县北部荆紫仙山下，黄河小浪底水库南岸，有一片长达十里的桃林，粉红的桃花漫山...', '桃花节', 'image/info/2014271.jpg', null, 'http://www.lyta.com.cn/activity/detail/4028808b59927cc3015a83bd7f940874', '2017-04-14', '90');
INSERT INTO `t_info` VALUES ('20', '第三届洛阳荆紫仙山桃花节', '阳春叁月，春暖花开，又到了去荆紫仙山看桃花的季节了。今年荆紫仙山桃花节将于3月5日盛大开幕，持续至3月25日，开幕当天免门票。桃红又是一年春，每年的叁月都是外出游玩踏青的好时节，在洛阳有件赏花盛事，那就是去荆紫仙山观赏桃花，在早春花开时节，在新安县北部荆紫仙山下，黄河小浪底水库南岸，有一片长达十里的桃林，粉红的桃花漫山...', '桃花节', 'image/info/2014271.jpg', null, 'http://www.lyta.com.cn/activity/detail/4028808b59927cc3015a83bd7f940874', '2017-04-14', '89');
INSERT INTO `t_info` VALUES ('21', '中国(洛宁)塬上油菜花节', '中国(洛宁)塬上油菜花节开幕式将在3月25日洛宁县小界乡盛大开幕，本次节会将持续一个月，让您在都市生活的乏味中，来洛宁真正体会一场乡间田园式的美好生活。', '油菜花节', 'image/info/201BB71.jpg', null, 'http://www.lyta.com.cn/activity/detail/4028808b59927cc3015affbffc40100b', '2017-04-14', '80');
INSERT INTO `t_info` VALUES ('22', '美！滑雪看戏吃鱼宴，今年过年来嵩县！', '洛阳白云山23年来首度冬季不闭园，大年初一至初三，在白云山铜河游客服务中心广场，推出“鸿运当头，好戏连连看”原汁原味过大年活动。\r\n　　主要节目：锣鼓队、大型舞狮和小型舞狮开场表演。开封市豫剧团表演三天，主要剧目：穆桂英挂帅、疯哑怨、文状元挂帅、桃花庵、伍子胥反朝、打金枝、泪洒相思地、清风亭、李文忠征北、五世请缨、钱塘江血案、开馆审子、杨靖招亲、包青天、陈平打朝、三孝堂', '看戏吃鱼宴', 'image/info/2015B90.jpg', null, 'http://www.lyta.com.cn/activity/detail/4028808b59927cc30159cf9dfdbd023a', '2017-04-14', '80');

-- ----------------------------
-- Table structure for `t_msg`
-- ----------------------------
DROP TABLE IF EXISTS `t_msg`;
CREATE TABLE `t_msg` (
  `msg_id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(20) DEFAULT NULL COMMENT '用户昵称',
  `msg_text` varchar(255) DEFAULT NULL COMMENT '内容',
  `msg_time` datetime DEFAULT NULL COMMENT '留言时间',
  `msg_ip` varchar(64) DEFAULT NULL COMMENT '留言IP',
  `email` varchar(32) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`msg_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='留言表';

-- ----------------------------
-- Records of t_msg
-- ----------------------------
INSERT INTO `t_msg` VALUES ('1', '卫国', '我靠，你大爷的', '2017-04-06 00:03:03', '127.0.0.1', null);
INSERT INTO `t_msg` VALUES ('2', 'www', 'wwwwww', '2009-01-01 17:59:16', '127.0.0.1', null);
INSERT INTO `t_msg` VALUES ('4', '周卫国', '大家好，我是周卫国', '2017-04-13 11:58:01', '127.0.0.1', '664646@qq.com');
INSERT INTO `t_msg` VALUES ('5', 'today', 'ytgbhmkl', '2017-04-13 14:45:26', '127.0.0.1', '96416@qq.com');
INSERT INTO `t_msg` VALUES ('6', 'today', 'ytgbhmkl', '2017-04-13 16:36:59', '127.0.0.1', '96416@qq.com');

-- ----------------------------
-- Table structure for `t_pic`
-- ----------------------------
DROP TABLE IF EXISTS `t_pic`;
CREATE TABLE `t_pic` (
  `pic_id` int(11) NOT NULL AUTO_INCREMENT,
  `pic_name` varchar(255) DEFAULT NULL COMMENT '图片名',
  `pic_title` varchar(255) DEFAULT '' COMMENT '标题',
  `pic_path` varchar(255) DEFAULT NULL COMMENT '路径',
  `pic_url` varchar(50) DEFAULT NULL COMMENT '路径',
  KEY `pic_id` (`pic_id`)
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8 COMMENT='全表图片';

-- ----------------------------
-- Records of t_pic
-- ----------------------------
INSERT INTO `t_pic` VALUES ('119', '龙门石窟', '龙门石窟', 'image/banner/3.jpg', null);
INSERT INTO `t_pic` VALUES ('120', '白马寺', '白马寺', 'image/banner/4.jpg', null);
INSERT INTO `t_pic` VALUES ('121', '重渡沟', '重渡沟', 'image/banner/5.jpg', null);
INSERT INTO `t_pic` VALUES ('122', '丽景门', '丽景门', 'image/banner/2.jpg', null);
INSERT INTO `t_pic` VALUES ('123', '关林', '关林', 'image/banner/1.jpg', null);

-- ----------------------------
-- Table structure for `t_scen`
-- ----------------------------
DROP TABLE IF EXISTS `t_scen`;
CREATE TABLE `t_scen` (
  `scen_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `scen_name` varchar(100) NOT NULL COMMENT '景点名称',
  `scen_intro` varchar(1000) DEFAULT NULL COMMENT '介绍',
  `scen_level` varchar(20) DEFAULT NULL COMMENT '等级',
  `scen_title` varchar(100) DEFAULT NULL COMMENT '标题',
  `scen_feature` varchar(100) DEFAULT NULL COMMENT '特色',
  `scen_traff` varchar(500) DEFAULT NULL COMMENT '交通',
  `scen_map` varchar(50) DEFAULT NULL COMMENT '地图描述',
  `pic_path` varchar(50) DEFAULT NULL COMMENT '展示图片',
  `video_path` varchar(50) DEFAULT NULL COMMENT '视频路径',
  `scen_add` varchar(50) DEFAULT NULL COMMENT '地址',
  `scen_name_en` varchar(100) DEFAULT NULL COMMENT '英文名',
  `scen_order` int(11) DEFAULT NULL COMMENT '排序',
  `scen_url` varchar(30) DEFAULT NULL COMMENT 'URL地址',
  PRIMARY KEY (`scen_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='景点信息';

-- ----------------------------
-- Records of t_scen
-- ----------------------------
INSERT INTO `t_scen` VALUES ('1', '龙门石窟', '龙门石窟位于洛阳市城南6公里的伊阙峡谷，这里香山和龙门山两山对峙，伊河水从中穿流而过，古称“伊阙”。隋炀帝迁都洛阳后，把皇宫的正门正对伊阙，从此，伊阙便被人们习惯的称为龙门。龙门自古为险要关隘，交通要冲，向为兵家必争之地。因山青水秀，环境清幽，气候宜人，被誉为洛阳八大景之冠，唐代大诗人白居易曾说：“洛都四郊，山水之胜，龙门首焉”，此处素为文人墨客钟情的游览胜地。又因龙门山石质优良，宜于雕刻，故而古人择此而建石窟。这里青山绿水、万象生辉，伊河两岸东西山崖壁上的窟龛星罗棋布、密如蜂房。龙门石窟景区有丰富的历史文化旅游资源，包括东、西山石窟、白园、香山寺等国际国内知名景区（点），东、西两山现存窟龛2345个、佛塔70余座，造像10万余尊，碑刻题记2860多块，是我国三大佛教石窟艺术宝库之一。 \r\n1961年，龙门石窟被国务院公布为全国第一批重点文物保护单位。1982年，龙门石窟被公布为全国第一批国家级风景名胜区。2000年11月，联合国教科文组织将龙门石窟列入《世界遗产名录》。2006年1月，龙门石窟被中央文明办、建设部、国家旅游局联合授予全国文明风景旅游区。2007年5月，龙门石窟被国家旅游局评定为全国首批5A级景区、国家级风景名胜区综合整治工作优秀单位。', 'AAAAA', '领略龙门山水，品味石窟文化', '领略龙门山水，品味石窟文化', '60路谷水西 起点站 -龙门石窟 终点站 起点站首末车时间:06:15-21:10终点站首末车时间:05:20-20:00票制:单一票制无人售票全程票价:1.50元\r\n\r\n81路火车站 起点站-龙门石窟 终点站起点站首末车时间:05:50-20:00终点站首末车时:06:35-20:50票制:单一票制无人售票全程票价:1.50元\r\n\r\n53路平等街 起点站 -龙门石窟 终点站 起点站首末车时间:06:00-20:30 夏 06:00-20:00 冬 终点站首末车时间:06:20-21:17 夏 06:30-20:48 冬 票制:单一票制无人售票全程票价:1.00元\r\n\r\n67路 环线 关林枢纽早班车7:00；起点站首末车时间:07:00-19:35终点站首末车时间:07:00-19:35票制:单一票制无人售票全程票价:1.00元', 'luoyang', 'image/scen/slide3.jpg', '1', '河南省洛阳市龙门石窟世界文化遗产园区', 'Longmen Grottoes', '1', 'http://www.forguo.com');
INSERT INTO `t_scen` VALUES ('2', '白马寺', '白马寺，位于古都洛阳东十二公里处，这里北依邙山，南临洛水，宝塔高耸，殿阁峥嵘，长林古木，肃然幽静。白马寺乃是佛教传入中国后官办的第一座寺院，距今已有一千九百多年的历史，被中国佛教界乃至日本、南韩、朝鲜、越南佛教界誉为“释源”“祖庭”，又称“中国第一古刹”。在中国佛教史上，白马寺具有极高的历史文物价值。一九六一年被国务院公布为第一批文物重点保护单位，一九八三年被国务院公布为全国重点寺院。2001年被国家旅游局评定为第一批全国AAAA级旅游景区（点），2004年7月5日，江泽民总书记视察白马寺时题词“中国第一古刹”，进一步肯定了白马寺的地位。', 'AAAA', '白马寺乃是佛教传入中国后官办的第一座寺院', '白马寺乃是佛教传入中国后官办的第一座寺院', '白马寺位于九朝古都的东郊，门前310国道开阔挺直，陇海、焦枝铁路穿插而过，北距郑洛高速8公里，西北距洛阳飞机场13公里，56路、58路公交车为旅游专线，可谓交通便利，可进入性良好，各种交通设施齐全', 'luoyang', 'image/scen/baimasi.jpg', '1', '洛阳市洛龙区白马寺镇白马寺', 'White Horse Temple', '4', 'http://www.forguo.com');
INSERT INTO `t_scen` VALUES ('4', '丽景门', '王城大道', 'AAA', '王城大道', '王城大道', '王城大道', 'luoyang', 'image/scen/pic.jpg', null, '王城大道', null, '2', 'http://www.forguo.com');
INSERT INTO `t_scen` VALUES ('5', '关林', '关羽，字云长，东汉延熹三年（公元160年）生，建安二十四年（219年）夏，关羽发动襄阳战役，斩庞德，擒于禁，水淹七军，兵镇新野。219年冬孙权偷袭荆州，关羽退走麦城，大义归天。220年春正月，孙权害怕刘备起兵报复，将关羽首级送于洛阳曹操处，曹操敬慕关羽为人，用沉香木为躯，以王侯之礼葬关羽首级于洛阳城南十里，并建庙祭祀，迄今已有1790年。万历三十三年敕封关羽“三界伏魔大帝神威远镇关圣帝君”，关羽始封“圣”。顺治五年敕封关羽“忠义神武关圣大帝”，康熙五年敕封洛阳关帝陵为“忠义神武关圣大帝林”，始称“关林”，成为与山东曲阜“孔林”并肩而立的两大圣域。洛阳关林是我国唯一一处“林、庙”合祀关圣帝君的圣域，海内外唯一一处可以称“林”之庙宇,也是国家级重点文物保护单位，AAAA级旅游景区。', 'AAAA', '千年关庙祈福圣地—洛阳关林', '千年关庙祈福圣地—洛阳关林', '洛阳市内到关林景区公交密集、便捷。1、乘15、39、55、58、69、71路公交可直达景区；2、乘37、29、38等多条公交，到关林庙西洛龙大道与关林大道交叉口、洛阳八中站，下车向东约500米可到达景区。', 'luoyang', 'image/scen/1.jpg', null, '河南省洛阳市洛龙区关林南路2号', 'Guanlin', '3', 'http://www.forguo.com');
INSERT INTO `t_scen` VALUES ('6', '龙潭大峡谷', '龙潭大峡谷景区位于河南省洛阳市新安县，是黛眉山世界地质公园的核心景区，先后获得世界地质公园”、“国家AAAAA级景区”等称号，享有“中国嶂谷第一峡”、“古海洋天然博物馆”、“峡谷绝品”和“黄河山水画廊”“全国科普教育基地”等美名。 <br/><br/>龙潭大峡谷是一条由紫红色石英砂岩经流水追踪下切形成的深切峡谷，全长12公里，谷内嶂谷、隘谷呈串珠状分布，云蒸霞蔚，激流飞溅，红岩绿荫，悬崖绝壁,不同时期的流水切割、旋蚀，磨痕十分清晰，因崩塌作用所形成的山崩地裂奇观国内外罕见。景区有六大自然谜团（水往高处流、佛光罗汉崖、巨人指纹、石上天书、蝴蝶泉、仙人足迹），七大幽潭瀑布（五龙潭、龙涎潭、青龙潭、黑龙潭、卧龙潭、阴阳潭、芦苇潭），八大自然奇观（绝世天碑、石上春秋、石龛瓮谷、波纹巨石、山崩地裂、通灵巷谷、喜鹊迎宾、银链挂天），令人惊叹不已，流连忘返。红岩绝壁，飞瀑幽潭，狭沟深谷，奇石绿荫，组成世界上罕见的山水画廊。', 'AAA', '古海地质奇观 中国北方水峡', '古海地质奇观 中国北方水峡', '河南省洛阳市新安县石井镇', 'luoyang', 'image/scen/longtanxia.jpg', null, '河南省洛阳市新安县石井镇', 'Longtan Valley', '5', 'http://www.forguo.com');
INSERT INTO `t_scen` VALUES ('7', '老君山风景区', '河南省老君山生态旅游开发有限公司（简称老君山）是国家AAAAA级景区，1997年由国务院批准建立国家级自然保护区，是伏牛山世界地质公园，国家地质公园。河南省老君山生态旅游开发有限公司位于洛阳市栾川县城东区，距洛阳市120公里，游览面积26.7平方公里。 <br/><br/>老君山历代香火旺盛，被尊为道教圣地、天下名山。老君山原貌保存良好，它记录着十九亿年来华北古陆块南缘裂解、离散、增生、聚合、碰撞、造山等构造演化过程，其独特的“滑脱峰林”地貌、石林、马鬃岭等景观群，令人叹为观至，被称为国家地质公园，伏牛山世界地质公园具极高科学研究价值。', 'AAAAA', '山岳经典，十里画屏;品钟灵毓秀山水，悟道', '山岳经典，十里画屏;品钟灵毓秀山水，悟道', '从洛阳的锦远汽车站（也就是长途汽车站），乘坐开往栾川县城的班车，在“老君山路口”下车后，再换成当地的摩的，就可以到达景区售票处了。洛阳-栾川的班车，白天每20分钟一班，车程约2-3小时（走高速约2小时），参考车费：高速50元，普通40元。', 'luoyang', 'image/scen/laojunshan.jpg', null, '洛阳市栾川县城东', 'Laojun Mountain Scenic Area', null, null);
INSERT INTO `t_scen` VALUES ('8', '鸡冠洞', '鸡冠洞位于河南洛阳栾川城西三公里处 ，属天然石灰岩溶洞，形成于早中更新纪，地质学称其为“喀斯特岩溶地貌”。    鸡冠洞洞深5600米，目前观赏面积23000平方米，上下分五层，落差138米。洞内峰回路转，景观布局疏密有致。石林耸秀，石花吐芳；石帷垂挂，石瀑飞溅，天然成趣，巧夺天工。洞中四季恒温18℃，清爽宜人，四季成游。  　景区为国家AAAAA级旅游景区。原新华社社长穆青为鸡冠洞题名“北国第一洞”；中国地质学会洞穴研究会会长朱学稳教授作出了“景观壮丽、堪称北国第一洞府；成因独特，正是国内首家龙宫”的权威性评语', 'AAAA', '洞内峰回路转，景观布局疏密有致。石林耸秀', '洞内峰回路转，景观布局疏密有致。石林耸秀', '洛阳-栾川栾川县城-鸡冠洞景区4路车、6路车', 'luoyang', 'image/scen/jiguandong.jpg', null, '河南省洛阳市栾川县', 'JIGUAN Cave', null, null);
INSERT INTO `t_scen` VALUES ('9', '白云山', '洛阳白云山位于河南省洛阳市嵩县西南部伏牛山腹地，总面积45平方公里，是世界地质公园、国家AAAAA级旅游景区、全国最具影响力的森林公园、全国科普教育基地、中国十佳休闲胜地。地跨长江、黄河、淮河三大流域，处于北亚热带向暖温带的气候过渡带，盛夏最高气温不超过26℃，有脊椎动物204种，维管束植物1991种，昆虫3000余种，是天然的生物资源基因库，被专家誉为“自然博物馆” 。白云山目前已开发有九龙瀑布、玉皇顶、白云峰、原始森林、小黄山五大观光区和白云湖、森林氧吧、高山牡丹园、留候祠、芦花谷等五大休闲区。中央政治局常委李长春视察白云山题词“中原名山”；著名书法家启功先生题笔“人间仙境白云山”；原新华社社长穆青先生泼墨“白云天下秀”。被誉为“中国夏都，养生天堂”。”', 'AAAA', '千年帝王避暑地，生态疗养第一山。', '千年帝王避暑地，生态疗养第一山。', '洛阳-栾川栾川县城-鸡冠洞景区4路车、6路车', 'luoyang', 'image/scen/slide4.jpg', null, '河南省洛阳市嵩县白云山景区', 'Baiyun Mountain nation', null, null);
INSERT INTO `t_scen` VALUES ('10', '洛阳薰衣草庄园', '洛阳·中国薰衣草庄园总面积6000多亩，是集旅游观光、特色农业、度假养生、五星级酒店等功能为一体的大型创意观光农业园，是中原地区面积最大，香草品种最多的“爱情”主题庄园。', 'AAA', '中原地区面积最大，香草品种最多的“爱情”', '中原地区面积最大，香草品种最多的“爱情”', '河南 洛阳 洛龙区伊河东岸向北5公里\r\n', 'luoyang', null, null, '河南 洛阳 洛龙区伊河东岸向北5公里\r\n', 'LUOYANG LAVENDER MANOR', null, null);
INSERT INTO `t_scen` VALUES ('11', '中国国花园', '花会期间可用年票。公园位于隋唐古城遗址之上，以隋唐历史文化为底蕴，以牡丹文化为主要内容，融历史文化、牡丹文化和园林景观为一体，充分展示了洛阳牡丹文化的地域特色。规划设计占地1548亩，作为我国目前最大的牡丹专类观赏园和洛阳市最佳牡丹观赏园，中国国花园以其单个牡丹种植面积大、品种全、色泽纯正艳丽、单株花朵最大、珍稀品种多和如画的风景而蜚声中外。现园内种植牡丹1080多个品种750多亩60余万株，配植各种乔、灌木180多个品种380多万株，草坪180000平方米。尤其在黑、绿、黄等珍稀牡丹品种方面独领风骚，引无数中外游客慕名前来观赏，成为展示洛阳牡丹和牡丹文化的主要窗口，并成为我市接待中外重要客人的主要场所。园内新增景点蝴蝶科普展馆和占地2000平米的蝴蝶鸟语林以及金石文字博物馆丰富了园内的观赏内容，展现了洛阳浓厚的文化底蕴！', 'AAAAA', '以牡丹文化为主要内容，融历史文化、牡丹文', '以牡丹文化为主要内容，融历史文化、牡丹文', '中国国花园西门有15、37、49、68、77路公交车，“聂湾村”站下车即到东门有33、52、53、55、57、58、61、65、66、69、81路公交车，“洛阳桥南”站下车即到。', 'luoyang', null, null, '洛阳市洛龙区龙门大道4号', 'Country Park', null, null);
INSERT INTO `t_scen` VALUES ('12', '黛眉山景区', '大山大水，大爱大美——黛眉山 <br/>黛眉山，是世界地质公园，是由河南黛眉山原始生态文化旅游开发有限公司投资近五亿元人民币，按AAAAA景区标准建设的新景区。黛眉山景区于2014年5月1日开门迎宾。 \r\n       黛眉山景区地处洛阳市新安县石井镇境内，她北枕中华母亲河黄河，东出小浪底水库，西接三门峡大坝，南临十三朝帝都洛阳。是中国境内唯一被黄河三面环绕的世界地质公园。是名副其实的大山大水完美组合的杰出典范。是中国长江-黄河边上最精彩的一幕。', 'AAAAA', '黛眉奇景甲天下，应叹桃源小洞天；中国旅游', '黛眉奇景甲天下，应叹桃源小洞天；中国旅游', '洛阳市新安县石井镇黛眉山风景区', 'luoyang', null, null, '洛阳市新安县石井镇黛眉山风景区', 'Henan DaiMeishan Originai Ecol', null, null);
INSERT INTO `t_scen` VALUES ('13', '隋唐城遗址植物园', '牡丹花会期间可用年票。洛阳市隋唐城遗址植物园，始建于2005年12月，位于王城大道以东、聂泰路以西、南临古城路、北接隋唐城北路的隋唐城遗址，是以河南豫西地区地带性植物和隋唐城遗址文化为基础，坚持科学保护与合理利用相结合，集科研、科普、文化娱乐为一体的综合性植物园。    隋唐城遗址植物园总占地面积2864亩，园内建设了千姿牡丹园、野趣水景园、木兰琼花园、万柳园、岩石园、百草园、梅园、竹园、海棠园、桂花园、芳香园等17个专类园区。其中，千姿牡丹园占地327亩，由百花园、九色园、特色园、科技示范园组成，共种植九大色系牡丹1200多个品种27万多株。同时，通过置石、园林小品等艺术手法，以楹联、雕刻等形式，对赞美洛阳牡丹的诗词、典故等进行充分展示，丰富了牡丹文化内涵，是目前全市牡丹品种最多、花色最全、文化氛围最浓的牡丹园。全园植物种类达1000多种，总绿地面积130多万平方米，在植物配置上以乔、灌、花、草合理搭配，形成南北园艺交汇、自然与规则共融、中外园林荟萃的大型植物园。    20多个休闲娱乐广场，形式各异、造型独特，与之相辉映的30多组亭台、廊架，既体现了隋唐时期建筑风格，又不乏浓郁的现代气息。占地12万平方米，堆山而建、绿岛点缀、奇石围绕的通济湖；3万多平方米湿地、种植105种水生植物等组成的野趣水景园；1万多米长的水系明渠蜿蜒贯通、巧妙连接，既发挥了灌溉功能，又增添了植物园的灵秀之气，共同营造出流水潺潺、碧波荡漾、水鸟纷飞、野趣盎然，如诗似画的迷人景象。', 'AAAA', '赏牡丹，到隋唐城遗址植物园，是目前国内牡', '赏牡丹，到隋唐城遗址植物园，是目前国内牡', '26路、29路、37路、60路、62路植物园西门下车34路、68路积翠南街积翠北街口下车', 'luoyang', null, null, '河南省洛阳市洛龙区王城大桥南200米', 'the ruins of the city botanica', null, null);
INSERT INTO `t_scen` VALUES ('14', '小浪底', '黄河小浪底水利枢纽风景区——以举世瞩目的水利枢纽工程为依托，以山、水、林、草为特色的大型生态园林，是黄河沿线最具特色的风景线之一。下辖爱国主义展厅、大坝、地下厂房、坝后生态保护区、移民故居、老神树等六个游览区数十个景点。黄河小浪底水利枢纽风景区位于黄河中下游最后一段峡谷的出口，地跨洛阳和济源两市，交通便利。景区是以伟大的国际性工程为依托，以黄河文化及水文化为内涵，以工程文化、移民文化和山水文化为特色，多角度展示宏伟壮阔的治黄工程、厚重的黄河历史文化、俊秀迤逦的黄河山水画卷，并通过深度体验，唤起炎黄子孙对母亲河的情感回归，从而满足人们观光、休闲度假、科学考察、爱国主义教育等心理需求。坝后生态保护区以其秀丽的山水、活泼可爱的动物、巧夺天工的雕塑让无数游客流连忘返，在品味黄河工程文化的同时，充分感受大自然的魅力。“中国最具吸引力的地方”、“国家AAAA级景区”、“河南十大旅游热点景区”、“洛阳市新八大景之一”——黄河小浪底，热情欢迎您的到来！', 'AAAA', '黄河沿线最具特色的风景线之一\r\n', '黄河沿线最具特色的风景线之一\r\n黄河沿线最具特色的风景线之一\r\n黄河沿线最具特色的风景线之一\r\n', '洛阳一运站——景区 洛阳站——麻屯——常袋——横水——景区官庄大门——景区西门 票价7元 始发时间 6：40 末班时间17：30 全程50分钟', 'luoyang', null, null, '洛阳市孟津县小浪底镇', 'Yellow River xiaolangdi Scrnic', null, null);
INSERT INTO `t_scen` VALUES ('16', '1', '1', '1', '1', '1', '1', 'luoyang', 'image/scen/yuntaishan.png', null, '1', '1', '1', '1');

-- ----------------------------
-- Table structure for `t_scen_pic`
-- ----------------------------
DROP TABLE IF EXISTS `t_scen_pic`;
CREATE TABLE `t_scen_pic` (
  `scen_id` int(11) DEFAULT NULL,
  `pic_id` int(11) NOT NULL AUTO_INCREMENT,
  `pic_title` varchar(255) DEFAULT NULL,
  `pic_name` varchar(255) DEFAULT NULL,
  `pic_path` varchar(255) DEFAULT NULL,
  `pic_url` varchar(50) DEFAULT NULL COMMENT '路径',
  PRIMARY KEY (`pic_id`),
  KEY `Scen_id` (`scen_id`),
  CONSTRAINT `Scen_id` FOREIGN KEY (`scen_id`) REFERENCES `t_scen` (`scen_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='景点图片库';

-- ----------------------------
-- Records of t_scen_pic
-- ----------------------------
INSERT INTO `t_scen_pic` VALUES ('1', '1', '白马寺', '白马寺', 'image/1.jpg', null);
INSERT INTO `t_scen_pic` VALUES ('2', '2', '龙门', '龙门', 'image/2.jpg', null);
INSERT INTO `t_scen_pic` VALUES ('1', '3', '白马寺', '白马寺', 'image/3.jpg', null);
INSERT INTO `t_scen_pic` VALUES ('2', '4', '龙门', '龙门', 'image/4.jpg', null);
INSERT INTO `t_scen_pic` VALUES ('2', '5', '关林', '关林', 'image/5.jpg', null);

-- ----------------------------
-- Table structure for `t_site`
-- ----------------------------
DROP TABLE IF EXISTS `t_site`;
CREATE TABLE `t_site` (
  `site_name` varchar(50) NOT NULL DEFAULT '',
  `site_keyword` varchar(50) DEFAULT NULL COMMENT '关键词',
  `site_desc` varchar(50) DEFAULT NULL COMMENT '描述',
  `site_copy` varchar(20) DEFAULT NULL COMMENT '版权信息',
  `site_beian` varchar(20) DEFAULT NULL COMMENT '备案号',
  PRIMARY KEY (`site_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='网站基本设置';

-- ----------------------------
-- Records of t_site
-- ----------------------------

-- ----------------------------
-- Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` char(32) NOT NULL COMMENT '密码',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `register_time` date NOT NULL COMMENT '注册时间',
  `register_ip` varchar(50) NOT NULL DEFAULT '127.0.0.1' COMMENT '注册IP',
  `group_id` int(11) NOT NULL DEFAULT '0' COMMENT '管理员级别',
  `gender` varchar(3) DEFAULT NULL COMMENT '性别',
  `user_pic` varchar(30) DEFAULT NULL COMMENT '用户头像',
  `user_stat` int(11) DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`user_id`),
  KEY `F_group_id` (`group_id`),
  CONSTRAINT `F_group_id` FOREIGN KEY (`group_id`) REFERENCES `t_group` (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', 'forguo', 'forguo', 'forguo@qq.com', '2017-03-22', '127.0.0.1', '0', '女', null, '1');
INSERT INTO `t_user` VALUES ('2', 'admin', 'admin', 'admin@qq.com', '2017-03-21', '127.0.0.1', '2', '男', null, '1');
INSERT INTO `t_user` VALUES ('3', 'weiguo', 'weiguo', 'weiguo@163.com', '2017-04-13', '127.0.0.1', '0', '男', null, '1');
INSERT INTO `t_user` VALUES ('4', 'liuwenyan', 'liuwenyan', 'liuwenyan@qq.com', '2017-04-13', '127.0.0.1', '0', '女', null, '1');

-- ----------------------------
-- Table structure for `t_video`
-- ----------------------------
DROP TABLE IF EXISTS `t_video`;
CREATE TABLE `t_video` (
  `video_id` int(11) NOT NULL,
  `video_name` varchar(100) DEFAULT NULL COMMENT '视频名称',
  `video_path` varchar(100) NOT NULL COMMENT '视频路径',
  `video_title` varchar(100) DEFAULT NULL COMMENT '标题',
  `video_url` varchar(50) DEFAULT NULL COMMENT '路径',
  PRIMARY KEY (`video_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='视频';

-- ----------------------------
-- Records of t_video
-- ----------------------------
INSERT INTO `t_video` VALUES ('1', '龙门石窟', '/static/video/scen', '龙门石窟', null);
