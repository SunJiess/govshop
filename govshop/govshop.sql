/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : govshop

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-01-06 09:33:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin_info
-- ----------------------------
DROP TABLE IF EXISTS `admin_info`;
CREATE TABLE `admin_info` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `ROLE_ID` int(11) DEFAULT NULL COMMENT '角色ID',
  `USERNAME` varchar(50) DEFAULT NULL COMMENT '账号',
  `PASSWORD` varchar(50) DEFAULT NULL COMMENT '密码',
  `REALNAME` varchar(30) DEFAULT NULL COMMENT '真实姓名',
  `LOGIN_TIMES` int(11) DEFAULT '0' COMMENT '登录次数',
  `LOTIN_TIME` datetime DEFAULT NULL COMMENT '最后一次登录时间',
  `LOGIN_IP` varchar(20) DEFAULT NULL COMMENT '最后一次登录IP',
  `REMARK` text COMMENT '备注',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='综合后台管理员信息表';

-- ----------------------------
-- Records of admin_info
-- ----------------------------
INSERT INTO `admin_info` VALUES ('1', '4', 'admin', '123', '张三丰', '29', '2011-06-22 23:47:29', '192.168.100.100', '这是帐号的备注\r\n这是帐号的备注\r\n这是帐号的备注\r\n这是帐号的备注\r\n这是帐号的备注\r\n这是帐号的备注\r\n这是帐号的备注\r\n这是帐号的备注\r\n');
INSERT INTO `admin_info` VALUES ('2', '3', 'kevin', '111', '凯文', '2', '2011-06-17 16:32:36', '127.0.0.1', '爱爱爱\r\n爱爱爱\r\n爱爱爱');

-- ----------------------------
-- Table structure for admin_role_deploy
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_deploy`;
CREATE TABLE `admin_role_deploy` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `ROLE_ID` int(11) DEFAULT NULL COMMENT '角色ID',
  `POWER_ID` int(11) DEFAULT NULL COMMENT '功能点ID',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='综合管理后台功能点分配信息表';

-- ----------------------------
-- Records of admin_role_deploy
-- ----------------------------

-- ----------------------------
-- Table structure for admin_role_info
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_info`;
CREATE TABLE `admin_role_info` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `ROLE_NAME` varchar(50) DEFAULT NULL COMMENT '角色名称',
  `PID` int(11) DEFAULT '0' COMMENT '上级角色ID',
  `PARENT_ROLE_NAME` varchar(50) DEFAULT NULL COMMENT '上级角色名称',
  `SAVETEXT` varchar(300) DEFAULT NULL COMMENT '存储序列',
  `SAVE_TIME` datetime DEFAULT NULL COMMENT '保存时间',
  `REMARK` text COMMENT '备注',
  `LOCK_STATUS` int(11) DEFAULT '0' COMMENT '锁定状态,0:开放,1:锁定',
  `local_status` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='综合管理后台角色信息表';

-- ----------------------------
-- Records of admin_role_info
-- ----------------------------

-- ----------------------------
-- Table structure for area_info
-- ----------------------------
DROP TABLE IF EXISTS `area_info`;
CREATE TABLE `area_info` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `NAME` varchar(50) DEFAULT NULL COMMENT '地区名称',
  `PID` int(11) DEFAULT '0' COMMENT '父级地区ID',
  `PNAME` varchar(50) DEFAULT NULL COMMENT '父级地区名称',
  `SAVE_TEXT` varchar(200) DEFAULT NULL COMMENT '存储序列',
  `LOCK_STATUS` int(11) DEFAULT '0' COMMENT '锁定状态,0:开放,1:锁定',
  `REMARK` text COMMENT '备注',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='地区信息表';

-- ----------------------------
-- Records of area_info
-- ----------------------------
INSERT INTO `area_info` VALUES ('1', '北京市', '-1', '', '北京市', '0', '无');
INSERT INTO `area_info` VALUES ('2', '上海市', '-1', '', '上海市', '0', '无');
INSERT INTO `area_info` VALUES ('3', '四川省', '-1', '', '四川省', '0', '无');
INSERT INTO `area_info` VALUES ('4', '成都市', '3', '四川省', '四川省/成都市', '0', '无');
INSERT INTO `area_info` VALUES ('5', '海淀区', '1', '北京市', '北京市/海淀区', '0', '无');
INSERT INTO `area_info` VALUES ('7', '朝阳区', '1', '北京市', '北京市/朝阳区', '0', '无');
INSERT INTO `area_info` VALUES ('8', '丰台区', '1', '北京市', '北京市/丰台区', '0', '无');
INSERT INTO `area_info` VALUES ('9', '武侯区', '4', '成都市', '四川省/成都市/武侯区', '0', '无');
INSERT INTO `area_info` VALUES ('10', '紫荆路', '9', '武侯区', '四川省/成都市/武侯区/紫荆路', '0', '无');

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `TITLE` varchar(100) DEFAULT NULL COMMENT '标题',
  `AUTHOR` varchar(50) DEFAULT NULL COMMENT '作者',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='新闻测试表';

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('1', '周星星1', '喜剧演员1');
INSERT INTO `article` VALUES ('2', '周星星2', '喜剧演员2');
INSERT INTO `article` VALUES ('3', '周星星3', '喜剧演员3');
INSERT INTO `article` VALUES ('4', '周星星4', '喜剧演员4');
INSERT INTO `article` VALUES ('5', '周星星5', '喜剧演员5');
INSERT INTO `article` VALUES ('6', '周星星6', '喜剧演员6');
INSERT INTO `article` VALUES ('7', '周星星1', '喜剧演员1');
INSERT INTO `article` VALUES ('8', '周星星2', '喜剧演员2');
INSERT INTO `article` VALUES ('9', '周星星3', '喜剧演员3');
INSERT INTO `article` VALUES ('10', '周星星4', '喜剧演员4');
INSERT INTO `article` VALUES ('11', '周星星5', '喜剧演员5');
INSERT INTO `article` VALUES ('12', '周星星6', '喜剧演员6');

-- ----------------------------
-- Table structure for bank_inf
-- ----------------------------
DROP TABLE IF EXISTS `bank_inf`;
CREATE TABLE `bank_inf` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `BANK_NAME` varchar(50) DEFAULT NULL COMMENT '银行名称',
  `TRADE_ADDRESS` varchar(100) DEFAULT NULL COMMENT '交易网址',
  `LOGO` varchar(100) DEFAULT NULL COMMENT '银行LOGO文件名，这里将存储CSS样式名',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='银行信息列表';

-- ----------------------------
-- Records of bank_inf
-- ----------------------------

-- ----------------------------
-- Table structure for bidding_file_info
-- ----------------------------
DROP TABLE IF EXISTS `bidding_file_info`;
CREATE TABLE `bidding_file_info` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `BIDDING_ID` int(11) DEFAULT NULL COMMENT '标书ID',
  `PIC_SAVE_NAME` varchar(50) DEFAULT NULL COMMENT '保存名称',
  `PIC_OLD_NAME` varchar(100) DEFAULT NULL COMMENT '原始名称',
  `PIC_SIZE` int(11) DEFAULT NULL COMMENT '图片大小',
  `CATEGORY_ID` int(11) DEFAULT NULL COMMENT '图片分类',
  `SAVE_TIME` datetime DEFAULT NULL COMMENT '保存时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='标书附件信息表';

-- ----------------------------
-- Records of bidding_file_info
-- ----------------------------

-- ----------------------------
-- Table structure for bidding_info
-- ----------------------------
DROP TABLE IF EXISTS `bidding_info`;
CREATE TABLE `bidding_info` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `GOV_ID` int(11) DEFAULT NULL COMMENT '采购单位ID',
  `GOV_ACCOUNT_ID` int(11) DEFAULT NULL COMMENT '采购人员账号ID',
  `TITLE` varchar(200) DEFAULT NULL COMMENT '标题',
  `BEGIN_TIME` datetime DEFAULT NULL COMMENT '有效起始时间',
  `END_TIME` datetime DEFAULT NULL COMMENT '有效结束时间',
  `SAVE_TIME` datetime DEFAULT NULL COMMENT '保存时间',
  `CONTENT` text COMMENT '标书内容',
  `LOCK_STATUS` int(11) DEFAULT '0' COMMENT '锁定状态,0:开放,1:锁定',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='标书信息表';

-- ----------------------------
-- Records of bidding_info
-- ----------------------------

-- ----------------------------
-- Table structure for business_account_info
-- ----------------------------
DROP TABLE IF EXISTS `business_account_info`;
CREATE TABLE `business_account_info` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `ROLE_ID` int(11) DEFAULT NULL COMMENT '角色ID',
  `BUSINESS_ID` int(11) DEFAULT NULL COMMENT '企业ID',
  `USERNAME` varchar(50) DEFAULT NULL COMMENT '账号',
  `PASSWORD` varchar(50) DEFAULT NULL COMMENT '登录密码',
  `REALNAME` varchar(30) DEFAULT NULL COMMENT '真实姓名',
  `LOGIN_TIMES` int(11) DEFAULT '0' COMMENT '登录次数',
  `LOTIN_TIME` datetime DEFAULT NULL COMMENT '最后一次登录时间',
  `LOGIN_IP` varchar(20) DEFAULT NULL COMMENT '最后一次登录IP',
  `QUESTION_TITLE` varchar(100) DEFAULT NULL COMMENT '密码问题',
  `QUESTION_ANSWER` varchar(100) DEFAULT NULL COMMENT '密码答案',
  `REG_TIME` datetime DEFAULT NULL COMMENT '注册时间',
  `REMARK` text COMMENT '备注',
  `LOCK_STATUS` int(11) DEFAULT '0' COMMENT '锁定状态,0:开放,1:锁定',
  PRIMARY KEY (`ID`),
  KEY `FKF249299FD8EA10FF` (`ROLE_ID`),
  KEY `FKF249299F71277F5F` (`BUSINESS_ID`),
  CONSTRAINT `FKF249299F71277F5F` FOREIGN KEY (`BUSINESS_ID`) REFERENCES `business_info` (`ID`),
  CONSTRAINT `FKF249299FD8EA10FF` FOREIGN KEY (`ROLE_ID`) REFERENCES `business_role_info` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='企业账号信息表';

-- ----------------------------
-- Records of business_account_info
-- ----------------------------
INSERT INTO `business_account_info` VALUES ('1', '1', '1', 'bus', '123', '系统管理员', '121', '2011-06-22 23:29:44', '127.0.0.1', '你好', '我好', '2011-06-21 13:46:16', '大家好', '0');
INSERT INTO `business_account_info` VALUES ('2', '2', '1', 'mading', '123', '马丁', '1', '2011-06-21 13:50:50', '127.0.0.1', '马丁你好', '马丁我好', '2011-06-21 13:46:16', '马丁好啊', '0');

-- ----------------------------
-- Table structure for business_category
-- ----------------------------
DROP TABLE IF EXISTS `business_category`;
CREATE TABLE `business_category` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `CATEGORY_NAME` varchar(50) DEFAULT NULL COMMENT '类型',
  `REMARK` varchar(100) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='企业类型信息表';

-- ----------------------------
-- Records of business_category
-- ----------------------------
INSERT INTO `business_category` VALUES ('1', '国有企业', '无');
INSERT INTO `business_category` VALUES ('2', '中外合资企业', '无');
INSERT INTO `business_category` VALUES ('3', '外商独资企业', '无');
INSERT INTO `business_category` VALUES ('4', '民营企业', '无');
INSERT INTO `business_category` VALUES ('5', '私营企业', '无');
INSERT INTO `business_category` VALUES ('6', '个体户', '无');
INSERT INTO `business_category` VALUES ('7', '工作室', '无');
INSERT INTO `business_category` VALUES ('8', '其他类别', '无');

-- ----------------------------
-- Table structure for business_info
-- ----------------------------
DROP TABLE IF EXISTS `business_info`;
CREATE TABLE `business_info` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `COP_NAME` varchar(200) DEFAULT NULL COMMENT '企业名称',
  `ADDRESS` varchar(200) DEFAULT NULL COMMENT '企业地址',
  `POSTAL_CODE` varchar(60) DEFAULT NULL COMMENT '邮政编码',
  `LEGAL_PERSON` varchar(20) DEFAULT NULL COMMENT '企业法人',
  `LEGAL_PERSON_IDCARD` varchar(20) DEFAULT NULL COMMENT '企业法人身份证号码',
  `AREA_ID` int(11) DEFAULT NULL COMMENT '地区ID',
  `INDUSTRY_ID` int(11) DEFAULT NULL COMMENT '企业所属行业ID',
  `BUSINESS_TYPE_ID` int(11) DEFAULT NULL COMMENT '企业类型ID',
  `BUSINESS_LICENSE` varchar(80) DEFAULT NULL COMMENT '营业执照号码',
  `STATE_TAXES` varchar(80) DEFAULT NULL COMMENT '国税登记号',
  `GOVERNMENT_RENT` varchar(80) DEFAULT NULL COMMENT '地税登记号',
  `REGISTERED_CAPITAL` double DEFAULT NULL COMMENT '注册资金',
  `REGISTER_TIME` datetime DEFAULT NULL COMMENT '注册时间',
  `REGISTER_SITE_TIME` datetime DEFAULT NULL COMMENT '企业注册本网站时间',
  `BANK_OF_DEPOSIT` varchar(50) DEFAULT NULL COMMENT '开户行',
  `BANK_ACCOUNT` varchar(40) DEFAULT NULL COMMENT '银行账号',
  `CONTACT_PERSON` varchar(30) DEFAULT NULL COMMENT '联系人',
  `CONTACT_PHONE` varchar(100) DEFAULT NULL COMMENT '联系电话',
  `FAX` varchar(100) DEFAULT NULL COMMENT '传真号码',
  `EMAIL` varchar(100) DEFAULT NULL COMMENT '企业邮箱',
  `BRIEF_INTRODUCTION` text COMMENT '企业简介',
  `MAIN_BUSINESS` text COMMENT '主营项目',
  `ADDITION_BUSINESS` text COMMENT '兼营项目',
  `RECENT_PERFORMANCE` text COMMENT '近期业绩',
  `FILE_BUSINESS_LICENSE` varchar(100) DEFAULT NULL COMMENT '营业执照复件',
  `FILE_TAX_ENROL_CERTIFICATE` varchar(100) DEFAULT NULL COMMENT '税务登记证复件',
  `FILE_LEGAL_PERSON` varchar(100) DEFAULT NULL COMMENT '企业法人身份证复件',
  `LOCK_STATUS` int(11) DEFAULT '0' COMMENT '企业状态,0:未审核,1:通过审核,3:资料不完善,4:未通过审核,5:锁定',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='供应商信息表';

-- ----------------------------
-- Records of business_info
-- ----------------------------
INSERT INTO `business_info` VALUES ('1', '珠海盈宝贸易有限公司', '北京市海淀区', '331021', '张1三', '370284197901130819', '5', '2', '4', '53454354353425345', '54523454235345435', '54525245454545565', '234324', '2011-11-11 00:00:00', null, '中国建设银行', '543253453253543525', '李1阳', '13812923222', '010-12124434', 'admin@hanyang.com', '公司简介\r\n公司简介\r\n公司简介', '主营项目\r\n主营项目\r\n主营项目', '兼营项目\r\n兼营项目\r\n兼营项目', '近期业绩\r\n近期业绩\r\n近期业绩', '1308628937062.jpg', '1308628937062.jpg', '1308628937062.jpg', '1');
INSERT INTO `business_info` VALUES ('2', '华夏典当行有限公司', '北京市海淀区', '331022', '张2三', '370284197901130820', '5', '2', '4', '53454354353425346', '54523454235345436', '54525245454545566', '23432', '2011-11-11 00:00:00', null, '中国建设银行', '543253453253543526', '李2阳', '13812923223', '010-12124435', 'admin@hanyang.com', '公司简介\r\n公司简介\r\n公司简介', '主营项目\r\n主营项目\r\n主营项目', '兼营项目\r\n兼营项目\r\n兼营项目', '近期业绩\r\n近期业绩\r\n近期业绩', '1308628937062.jpg', '1308628937062.jpg', '1308628937062.jpg', '1');
INSERT INTO `business_info` VALUES ('3', 'IBM中国有限公司', '北京市海淀区', '331023', '张3三', '370284197901130821', '5', '2', '4', '53454354353425347', '54523454235345437', '54525245454545567', '23432', '2018-01-06 09:26:39', null, '中国建设银行', '543253453253543527', '李3阳', '13812923224', '010-12124436', 'admin@hanyang.com', '公司简介\r\n公司简介\r\n公司简介', '主营项目', '兼营项目', '近期业绩', '1308628937062.jpg', '1308628937062.jpg', '1308628937062.jpg', '1');
INSERT INTO `business_info` VALUES ('4', 'HP香港分公司', '北京市海淀区', '331024', '张4三', '370284197901130822', '5', '2', '4', '53454354353425348', '54523454235345438', '54525245454545568', '23432', '2018-01-06 09:26:43', null, '中国建设银行', '543253453253543528', '李4阳', '13812923225', '010-12124437', 'admin@hanyang.com', '公司简介\r\n公司简介\r\n公司简介', '主营项目', '兼营项目', '近期业绩', null, null, null, '0');
INSERT INTO `business_info` VALUES ('5', 'KP香港分公司', '北京市海淀区', '331025', '张5三', '370284197901130823', '5', '2', '4', '53454354353425349', '54523454235345439', '54525245454545569', '23432', '2018-01-06 09:26:46', null, '中国建设银行', '543253453253543529', '李5阳', '13812923226', '010-12124438', 'admin@hanyang.com', '公司简介\r\n公司简介\r\n公司简介', '主营项目', '兼营项目', '近期业绩', null, null, null, '0');

-- ----------------------------
-- Table structure for business_pic_lib
-- ----------------------------
DROP TABLE IF EXISTS `business_pic_lib`;
CREATE TABLE `business_pic_lib` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `BUSINESS_ID` int(11) DEFAULT NULL COMMENT '企业ID',
  `PIC_SAVE_NAME` varchar(50) DEFAULT NULL COMMENT '保存名称',
  `PIC_OLD_NAME` varchar(100) DEFAULT NULL COMMENT '原始名称',
  `PIC_SIZE` int(11) DEFAULT NULL COMMENT '图片大小',
  `CATEGORY_ID` int(11) DEFAULT NULL COMMENT '图片分类',
  `SAVE_TIME` datetime DEFAULT NULL COMMENT '保存时间',
  `LOCK_STATUS` int(11) DEFAULT '0' COMMENT '锁定状态,0:开放,1:锁定',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='企业图库信息表';

-- ----------------------------
-- Records of business_pic_lib
-- ----------------------------

-- ----------------------------
-- Table structure for business_pic_lib_category
-- ----------------------------
DROP TABLE IF EXISTS `business_pic_lib_category`;
CREATE TABLE `business_pic_lib_category` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `BUSINESS_ID` int(11) DEFAULT NULL COMMENT '企业ID',
  `CATEGORY_NAME` varchar(50) DEFAULT NULL COMMENT '分类名称',
  `LOCK_STATUS` int(11) DEFAULT '0' COMMENT '锁定状态,0:开放,1:锁定',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='企业图库分类信息表';

-- ----------------------------
-- Records of business_pic_lib_category
-- ----------------------------
INSERT INTO `business_pic_lib_category` VALUES ('1', '1', '企业建筑', '0');
INSERT INTO `business_pic_lib_category` VALUES ('2', '1', '日常活动', '0');
INSERT INTO `business_pic_lib_category` VALUES ('3', '1', '会议照片', '0');
INSERT INTO `business_pic_lib_category` VALUES ('4', '1', '其他', '0');
INSERT INTO `business_pic_lib_category` VALUES ('5', '1', '员工照片', '0');

-- ----------------------------
-- Table structure for business_role_deploy
-- ----------------------------
DROP TABLE IF EXISTS `business_role_deploy`;
CREATE TABLE `business_role_deploy` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `ROLE_ID` int(11) DEFAULT NULL COMMENT '角色ID',
  `POWER_ID` int(11) DEFAULT NULL COMMENT '功能点ID',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='供应商功能点分配信息表';

-- ----------------------------
-- Records of business_role_deploy
-- ----------------------------

-- ----------------------------
-- Table structure for business_role_info
-- ----------------------------
DROP TABLE IF EXISTS `business_role_info`;
CREATE TABLE `business_role_info` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `BUSINESS_ID` int(11) DEFAULT NULL COMMENT '企业ID',
  `ROLE_NAME` varchar(50) DEFAULT NULL COMMENT '角色名称',
  `PID` int(11) DEFAULT '0' COMMENT '上级角色ID',
  `PARENT_ROLE_NAME` varchar(50) DEFAULT NULL COMMENT '上级角色名称',
  `SAVETEXT` varchar(300) DEFAULT NULL COMMENT '存储序列',
  `SAVE_TIME` datetime DEFAULT NULL COMMENT '保存时间',
  `REMARK` text COMMENT '备注',
  `LOCK_STATUS` int(11) DEFAULT '0' COMMENT '锁定状态,0:开放,1:锁定',
  PRIMARY KEY (`ID`),
  KEY `FK86CB811871277F5F` (`BUSINESS_ID`),
  CONSTRAINT `FK86CB811871277F5F` FOREIGN KEY (`BUSINESS_ID`) REFERENCES `business_info` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='企业角色信息表';

-- ----------------------------
-- Records of business_role_info
-- ----------------------------
INSERT INTO `business_role_info` VALUES ('1', '1', '总经理', '-1', '', '总经理', '2011-06-21 15:36:42', '无', '0');
INSERT INTO `business_role_info` VALUES ('2', '1', '副总经理', '1', '总经理', '总经理/副总经理', '2011-06-21 15:41:15', '无', '0');

-- ----------------------------
-- Table structure for feedback_file_info
-- ----------------------------
DROP TABLE IF EXISTS `feedback_file_info`;
CREATE TABLE `feedback_file_info` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `FEEDBACK_ID` int(11) DEFAULT NULL COMMENT '反馈信息ID',
  `SAVE_FILE_NAME` varchar(100) DEFAULT NULL COMMENT '附件保存名称',
  `OLD_FILE_NAME` varchar(100) DEFAULT NULL COMMENT '附件原始名称',
  `FILE_SIZE` int(11) DEFAULT NULL COMMENT '文件大小',
  `SAVE_TIME` datetime DEFAULT NULL COMMENT '保存时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='提交反馈附件';

-- ----------------------------
-- Records of feedback_file_info
-- ----------------------------

-- ----------------------------
-- Table structure for feedback_info
-- ----------------------------
DROP TABLE IF EXISTS `feedback_info`;
CREATE TABLE `feedback_info` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `COME_FROM` int(11) DEFAULT '1' COMMENT '反馈来源,1:企业,2:采购单位',
  `COP_OR_GOV_ID` int(11) DEFAULT NULL COMMENT '供应商或采购单位ID',
  `TITLE` varchar(100) DEFAULT NULL COMMENT '反馈简述',
  `DETAIL_CONTENT` text COMMENT '反馈详细信息',
  `SUBMIT_TIME` datetime DEFAULT NULL COMMENT '提交时间',
  `PROCESS_STATUS` int(11) DEFAULT '0' COMMENT '处理状态,0:未处理,1:已处理,2:锁定不可见',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='反馈信息表';

-- ----------------------------
-- Records of feedback_info
-- ----------------------------

-- ----------------------------
-- Table structure for friend_link
-- ----------------------------
DROP TABLE IF EXISTS `friend_link`;
CREATE TABLE `friend_link` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `ACCOUNT_ID` int(11) DEFAULT NULL COMMENT '管理人员账号ID',
  `URL` varchar(100) DEFAULT NULL COMMENT '网址',
  `SITE_NAME` varchar(50) DEFAULT NULL COMMENT '网站名称',
  `LOGO` varchar(50) DEFAULT NULL COMMENT 'LOGO文件名',
  `REMARK` text COMMENT '备注',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=utf8 COMMENT='友情链接信息表';

-- ----------------------------
-- Records of friend_link
-- ----------------------------
INSERT INTO `friend_link` VALUES ('1', '1', 'http://www.xinhuanet.com', '新华网', null, '<a href=\"http://www.xinhuanet.com\" target=\"_blank\">新华网</a>');
INSERT INTO `friend_link` VALUES ('2', '1', 'http://news.qq.com', '腾讯新闻', null, '<a href=\"http://news.qq.com\" target=\"_blank\">腾讯新闻</a>');
INSERT INTO `friend_link` VALUES ('3', '1', 'http://www.ifeng.com', '凤凰网', null, '<a href=\"http://www.ifeng.com\" target=\"_blank\">凤凰网</a>');
INSERT INTO `friend_link` VALUES ('4', '1', 'http://news.sohu.com', '搜狐新闻', null, '<a href=\"http://news.sohu.com\" target=\"_blank\">搜狐新闻</a>');
INSERT INTO `friend_link` VALUES ('5', '1', 'http://www.cctv.com', 'CCTV', null, '<a href=\"http://www.cctv.com\" target=\"_blank\">CCTV</a>');
INSERT INTO `friend_link` VALUES ('6', '1', 'http://www.chinanews.com.cn', '中国新闻网', null, '<a href=\"http://www.chinanews.com.cn\" target=\"_blank\">中国新闻网</a>');
INSERT INTO `friend_link` VALUES ('7', '1', 'http://news.163.com', '网易新闻', null, '<a href=\"http://news.163.com\" target=\"_blank\">网易新闻</a>');
INSERT INTO `friend_link` VALUES ('8', '1', 'http://www.zaobao.com', '联合早报', null, '<a href=\"http://www.zaobao.com\" target=\"_blank\">联合早报</a>');
INSERT INTO `friend_link` VALUES ('9', '1', 'http://www.people.com.cn', '人民网', null, '<a href=\"http://www.people.com.cn\" target=\"_blank\">人民网</a>');
INSERT INTO `friend_link` VALUES ('10', '1', 'http://www.southcn.com', '南方网', null, '<a href=\"http://www.southcn.com\" target=\"_blank\">南方网</a>');
INSERT INTO `friend_link` VALUES ('11', '1', 'http://www.cnr.cn', '中国广播网', null, '<a href=\"http://www.cnr.cn\" target=\"_blank\">中国广播网</a>');
INSERT INTO `friend_link` VALUES ('12', '1', 'http://www.china.com.cn', '中国网', null, '<a href=\"http://www.china.com.cn\" target=\"_blank\">中国网</a>');
INSERT INTO `friend_link` VALUES ('13', '1', 'http://www.legaldaily.com.cn', '法制日报', null, '<a href=\"http://www.legaldaily.com.cn\" target=\"_blank\">法制日报</a>');
INSERT INTO `friend_link` VALUES ('14', '1', 'http://www.cyol.net', '中国青年报', null, '<a href=\"http://www.cyol.net\" target=\"_blank\">中国青年报</a>');
INSERT INTO `friend_link` VALUES ('15', '1', 'http://www.chinamil.com.cn', '中国军网', null, '<a href=\"http://www.chinamil.com.cn\" target=\"_blank\">中国军网</a>');
INSERT INTO `friend_link` VALUES ('16', '1', 'http://www.gov.cn/jrzg', '中国政府网', null, '<a href=\"http://www.gov.cn/jrzg\" target=\"_blank\">中国政府网</a>');
INSERT INTO `friend_link` VALUES ('17', '1', 'http://www.huanqiu.com', '环球时报', null, '<a href=\"http://www.huanqiu.com\" target=\"_blank\">环球时报</a>');
INSERT INTO `friend_link` VALUES ('18', '1', 'http://www.china.com', '中华网', null, '<a href=\"http://www.china.com\" target=\"_blank\">中华网</a>');
INSERT INTO `friend_link` VALUES ('19', '1', 'http://www.ce.cn', '经济日报', null, '<a href=\"http://www.ce.cn\" target=\"_blank\">经济日报</a>');
INSERT INTO `friend_link` VALUES ('20', '1', 'http://news.baidu.com', '百度新闻搜索', null, '<a href=\"http://news.baidu.com\" target=\"_blank\">百度新闻搜索</a>');
INSERT INTO `friend_link` VALUES ('21', '1', 'http://www.infzm.com', '南方周末', null, '<a href=\"http://www.infzm.com\" target=\"_blank\">南方周末</a>');
INSERT INTO `friend_link` VALUES ('22', '1', 'http://www.nfcmag.com', '南风窗', null, '<a href=\"http://www.nfcmag.com\" target=\"_blank\">南风窗</a>');
INSERT INTO `friend_link` VALUES ('23', '1', 'http://hsb.hsw.cn', '华商报', null, '<a href=\"http://hsb.hsw.cn\" target=\"_blank\">华商报</a>');
INSERT INTO `friend_link` VALUES ('24', '1', 'http://www.dahe.cn', '大河报', null, '<a href=\"http://www.dahe.cn\" target=\"_blank\">大河报</a>');
INSERT INTO `friend_link` VALUES ('25', '1', 'http://www.wenweipo.com', '香港文汇报', null, '<a href=\"http://www.wenweipo.com\" target=\"_blank\">香港文汇报</a>');
INSERT INTO `friend_link` VALUES ('26', '1', 'http://www.takungpao.com', '大公报', null, '<a href=\"http://www.takungpao.com\" target=\"_blank\">大公报</a>');
INSERT INTO `friend_link` VALUES ('27', '1', 'http://www.chinadaily.com.cn', '中国日报', null, '<a href=\"http://www.chinadaily.com.cn\" target=\"_blank\">中国日报</a>');
INSERT INTO `friend_link` VALUES ('28', '1', 'http://www.gxnews.com.cn', '广西新闻网', null, '<a href=\"http://www.gxnews.com.cn\" target=\"_blank\">广西新闻网</a>');
INSERT INTO `friend_link` VALUES ('29', '1', 'http://www.ynet.com', '北青网', null, '<a href=\"http://www.ynet.com\" target=\"_blank\">北青网</a>');
INSERT INTO `friend_link` VALUES ('30', '1', 'http://www.daynews.com.cn', '山西新闻网', null, '<a href=\"http://www.daynews.com.cn\" target=\"_blank\">山西新闻网</a>');
INSERT INTO `friend_link` VALUES ('31', '1', 'http://www.dbw.cn', '黑龙江东北网', null, '<a href=\"http://www.dbw.cn\" target=\"_blank\">黑龙江东北网</a>');
INSERT INTO `friend_link` VALUES ('32', '1', 'http://www.fjsen.com', '东南新闻网', null, '<a href=\"http://www.fjsen.com\" target=\"_blank\">东南新闻网</a>');
INSERT INTO `friend_link` VALUES ('33', '1', 'http://www.bjnews.com.cn', '新京报', null, '<a href=\"http://www.bjnews.com.cn\" target=\"_blank\">新京报</a>');
INSERT INTO `friend_link` VALUES ('34', '1', 'http://www.nddaily.com', '南方都市报', null, '<a href=\"http://www.nddaily.com\" target=\"_blank\">南方都市报</a>');
INSERT INTO `friend_link` VALUES ('35', '1', 'http://www.cqnews.net', '重庆华龙网', null, '<a href=\"http://www.cqnews.net\" target=\"_blank\">重庆华龙网</a>');
INSERT INTO `friend_link` VALUES ('36', '1', 'http://www.enorth.com.cn', '天津北方网', null, '<a href=\"http://www.enorth.com.cn\" target=\"_blank\">天津北方网</a>');
INSERT INTO `friend_link` VALUES ('37', '1', 'http://www.ycwb.com', '羊城晚报', null, '<a href=\"http://www.ycwb.com\" target=\"_blank\">羊城晚报</a>');
INSERT INTO `friend_link` VALUES ('38', '1', 'http://www.yangtse.com', '扬子晚报', null, '<a href=\"http://www.yangtse.com\" target=\"_blank\">扬子晚报</a>');
INSERT INTO `friend_link` VALUES ('39', '1', 'http://www.dzwww.com', '山东大众网', null, '<a href=\"http://www.dzwww.com\" target=\"_blank\">山东大众网</a>');
INSERT INTO `friend_link` VALUES ('40', '1', 'http://www.sanqindaily.com', '三秦都市报', null, '<a href=\"http://www.sanqindaily.com\" target=\"_blank\">三秦都市报</a>');
INSERT INTO `friend_link` VALUES ('41', '1', 'http://ctdsb.cnhubei.com', '楚天都市报', null, '<a href=\"http://ctdsb.cnhubei.com\" target=\"_blank\">楚天都市报</a>');
INSERT INTO `friend_link` VALUES ('42', '1', 'http://cn.chinareviewnews.com', '中国评论新闻', null, '<a href=\"http://cn.chinareviewnews.com\" target=\"_blank\">中国评论新闻</a>');
INSERT INTO `friend_link` VALUES ('43', '1', 'http://www.reuters.com', '英国路透社', null, '<a href=\"http://www.reuters.com\" target=\"_blank\">英国路透社</a>');
INSERT INTO `friend_link` VALUES ('44', '1', 'http://chinese.joins.com', '韩国中央日报', null, '<a href=\"http://chinese.joins.com\" target=\"_blank\">韩国中央日报</a>');
INSERT INTO `friend_link` VALUES ('45', '1', 'http://chn.chosun.com', '朝鲜日报(韩国)', null, '<a href=\"http://chn.chosun.com\" target=\"_blank\">朝鲜日报(韩国)</a>');
INSERT INTO `friend_link` VALUES ('46', '1', 'http://www.un.org/chinese/News', '联合国新闻', null, '<a href=\"http://www.un.org/chinese/News\" target=\"_blank\">联合国新闻</a>');
INSERT INTO `friend_link` VALUES ('47', '1', 'http://www.time.com', '美国时代周刊', null, '<a href=\"http://www.time.com\" target=\"_blank\">美国时代周刊</a>');
INSERT INTO `friend_link` VALUES ('48', '1', 'http://www.cnn.com', '美国CNN', null, '<a href=\"http://www.cnn.com\" target=\"_blank\">美国CNN</a>');
INSERT INTO `friend_link` VALUES ('49', '1', 'http://www.chinese.wsj.com', '华尔街日报', null, '<a href=\"http://www.chinese.wsj.com\" target=\"_blank\">华尔街日报</a>');
INSERT INTO `friend_link` VALUES ('50', '1', 'http://www.m-news.cc', '报天下', null, '<a href=\"http://www.m-news.cc\" target=\"_blank\">报天下</a>');
INSERT INTO `friend_link` VALUES ('51', '1', 'http://www.eastmoney.com', '东方财富网', null, '<a href=\"http://www.eastmoney.com\" target=\"_blank\">东方财富网</a>');
INSERT INTO `friend_link` VALUES ('52', '1', 'http://finance.sina.com.cn', '新浪财经', null, '<a href=\"http://finance.sina.com.cn\" target=\"_blank\">新浪财经</a>');
INSERT INTO `friend_link` VALUES ('53', '1', 'http://www.stockstar.com/home.htm', '证券之星', null, '<a href=\"http://www.stockstar.com/home.htm\" target=\"_blank\">证券之星</a>');
INSERT INTO `friend_link` VALUES ('54', '1', 'http://www.hexun.com', '和讯财经', null, '<a href=\"http://www.hexun.com\" target=\"_blank\">和讯财经</a>');
INSERT INTO `friend_link` VALUES ('55', '1', 'http://fund.eastmoney.com', '天天基金网', null, '<a href=\"http://fund.eastmoney.com\" target=\"_blank\">天天基金网</a>');
INSERT INTO `friend_link` VALUES ('56', '1', 'http://business.sohu.com', '搜狐财经', null, '<a href=\"http://business.sohu.com\" target=\"_blank\">搜狐财经</a>');
INSERT INTO `friend_link` VALUES ('57', '1', 'http://www.gw.com.cn', '大智慧', null, '<a href=\"http://www.gw.com.cn\" target=\"_blank\">大智慧</a>');
INSERT INTO `friend_link` VALUES ('58', '1', 'http://www.10jqka.com.cn', '同花顺', null, '<a href=\"http://www.10jqka.com.cn\" target=\"_blank\">同花顺</a>');
INSERT INTO `friend_link` VALUES ('59', '1', 'http://www.jrj.com', '金融界', null, '<a href=\"http://www.jrj.com\" target=\"_blank\">金融界</a>');
INSERT INTO `friend_link` VALUES ('60', '1', 'http://www.cnfol.com', '中金在线', null, '<a href=\"http://www.cnfol.com\" target=\"_blank\">中金在线</a>');
INSERT INTO `friend_link` VALUES ('61', '1', 'http://finance.ifeng.com', '凤凰财经', null, '<a href=\"http://finance.ifeng.com\" target=\"_blank\">凤凰财经</a>');
INSERT INTO `friend_link` VALUES ('62', '1', 'http://money.163.com', '网易财经', null, '<a href=\"http://money.163.com\" target=\"_blank\">网易财经</a>');
INSERT INTO `friend_link` VALUES ('63', '1', 'http://www.cnstock.com', '中国证券网', null, '<a href=\"http://www.cnstock.com\" target=\"_blank\">中国证券网</a>');
INSERT INTO `friend_link` VALUES ('64', '1', 'http://www.cfi.net.cn', '中财网', null, '<a href=\"http://www.cfi.net.cn\" target=\"_blank\">中财网</a>');
INSERT INTO `friend_link` VALUES ('65', '1', 'http://www.cs.com.cn', '中国证券报', null, '<a href=\"http://www.cs.com.cn\" target=\"_blank\">中国证券报</a>');
INSERT INTO `friend_link` VALUES ('66', '1', 'http://www.p5w.net', '全景网', null, '<a href=\"http://www.p5w.net\" target=\"_blank\">全景网</a>');
INSERT INTO `friend_link` VALUES ('67', '1', 'http://finance.qq.com', '腾讯财经', null, '<a href=\"http://finance.qq.com\" target=\"_blank\">腾讯财经</a>');
INSERT INTO `friend_link` VALUES ('68', '1', 'http://stock.baidu.com', '百度财经', null, '<a href=\"http://stock.baidu.com\" target=\"_blank\">百度财经</a>');
INSERT INTO `friend_link` VALUES ('69', '1', 'http://www.591hx.com', '华讯财经', null, '<a href=\"http://www.591hx.com\" target=\"_blank\">华讯财经</a>');
INSERT INTO `friend_link` VALUES ('70', '1', 'http://guba.eastmoney.com', '股吧', null, '<a href=\"http://guba.eastmoney.com\" target=\"_blank\">股吧</a>');
INSERT INTO `friend_link` VALUES ('71', '1', 'http://stock.eastmoney.com/gpxuexiao.html', '股票入门', null, '<a href=\"http://stock.eastmoney.com/gpxuexiao.html\" target=\"_blank\">股票入门</a>');
INSERT INTO `friend_link` VALUES ('72', '1', 'http://www.ce.cn', '中国经济网', null, '<a href=\"http://www.ce.cn\" target=\"_blank\">中国经济网</a>');
INSERT INTO `friend_link` VALUES ('73', '1', 'http://www.zhihuangjin.com', '纸黄金', null, '<a href=\"http://www.zhihuangjin.com\" target=\"_blank\">纸黄金</a>');
INSERT INTO `friend_link` VALUES ('74', '1', 'http://www.horise.com', '和瑞网', null, '<a href=\"http://www.horise.com\" target=\"_blank\">和瑞网</a>');
INSERT INTO `friend_link` VALUES ('75', '1', 'http://www.cnlist.com', '上市公司资讯网', null, '<a href=\"http://www.cnlist.com\" target=\"_blank\">上市公司资讯网</a>');
INSERT INTO `friend_link` VALUES ('76', '1', 'http://www.qihuoz.com', '期货实战网', null, '<a href=\"http://www.qihuoz.com\" target=\"_blank\">期货实战网</a>');
INSERT INTO `friend_link` VALUES ('77', '1', 'http://www.sse.com.cn', '上海证券交易所', null, '<a href=\"http://www.sse.com.cn\" target=\"_blank\">上海证券交易所</a>');
INSERT INTO `friend_link` VALUES ('78', '1', 'http://www.szse.cn', '深圳证券交易所', null, '<a href=\"http://www.szse.cn\" target=\"_blank\">深圳证券交易所</a>');
INSERT INTO `friend_link` VALUES ('79', '1', 'http://www.gtja.com', '国泰君安', null, '<a href=\"http://www.gtja.com\" target=\"_blank\">国泰君安</a>');
INSERT INTO `friend_link` VALUES ('80', '1', 'http://www.gf.com.cn', '广发证券', null, '<a href=\"http://www.gf.com.cn\" target=\"_blank\">广发证券</a>');
INSERT INTO `friend_link` VALUES ('81', '1', 'http://www.newone.com.cn', '招商证券', null, '<a href=\"http://www.newone.com.cn\" target=\"_blank\">招商证券</a>');
INSERT INTO `friend_link` VALUES ('82', '1', 'http://www.htsec.com', '海通证券', null, '<a href=\"http://www.htsec.com\" target=\"_blank\">海通证券</a>');
INSERT INTO `friend_link` VALUES ('83', '1', 'http://www.chinastock.com.cn', '银河证券', null, '<a href=\"http://www.chinastock.com.cn\" target=\"_blank\">银河证券</a>');
INSERT INTO `friend_link` VALUES ('84', '1', 'http://www.htsc.com.cn', '华泰证券', null, '<a href=\"http://www.htsc.com.cn\" target=\"_blank\">华泰证券</a>');
INSERT INTO `friend_link` VALUES ('85', '1', 'http://www.foundersc.com', '方正证券', null, '<a href=\"http://www.foundersc.com\" target=\"_blank\">方正证券</a>');
INSERT INTO `friend_link` VALUES ('86', '1', 'http://www.essence.com.cn', '安信证券', null, '<a href=\"http://www.essence.com.cn\" target=\"_blank\">安信证券</a>');
INSERT INTO `friend_link` VALUES ('87', '1', 'http://www.westsecu.com', '西部证券', null, '<a href=\"http://www.westsecu.com\" target=\"_blank\">西部证券</a>');
INSERT INTO `friend_link` VALUES ('88', '1', 'http://www.sw2000.com.cn', '申银万国', null, '<a href=\"http://www.sw2000.com.cn\" target=\"_blank\">申银万国</a>');
INSERT INTO `friend_link` VALUES ('89', '1', 'http://www.qlzq.com.cn', '齐鲁证券', null, '<a href=\"http://www.qlzq.com.cn\" target=\"_blank\">齐鲁证券</a>');
INSERT INTO `friend_link` VALUES ('90', '1', 'http://www.cs.ecitic.com', '中信证券', null, '<a href=\"http://www.cs.ecitic.com\" target=\"_blank\">中信证券</a>');
INSERT INTO `friend_link` VALUES ('91', '1', 'http://www.95579.com', '长江证券', null, '<a href=\"http://www.95579.com\" target=\"_blank\">长江证券</a>');
INSERT INTO `friend_link` VALUES ('92', '1', 'http://www.guosen.com.cn', '国信证券', null, '<a href=\"http://www.guosen.com.cn\" target=\"_blank\">国信证券</a>');
INSERT INTO `friend_link` VALUES ('93', '1', 'http://www.ebscn.com', '光大证券', null, '<a href=\"http://www.ebscn.com\" target=\"_blank\">光大证券</a>');
INSERT INTO `friend_link` VALUES ('94', '1', 'http://www.huaans.com.cn', '华安证券', null, '<a href=\"http://www.huaans.com.cn\" target=\"_blank\">华安证券</a>');
INSERT INTO `friend_link` VALUES ('95', '1', 'http://www.ghzq.com.cn', '国海证券', null, '<a href=\"http://www.ghzq.com.cn\" target=\"_blank\">国海证券</a>');
INSERT INTO `friend_link` VALUES ('96', '1', 'http://www.gjzq.com.cn', '国金证券', null, '<a href=\"http://www.gjzq.com.cn\" target=\"_blank\">国金证券</a>');
INSERT INTO `friend_link` VALUES ('97', '1', 'http://www.csrc.gov.cn', '中国证监会', null, '<a href=\"http://www.csrc.gov.cn\" target=\"_blank\">中国证监会</a>');
INSERT INTO `friend_link` VALUES ('98', '1', 'http://www.dxzq.net', '东兴证券', null, '<a href=\"http://www.dxzq.net\" target=\"_blank\">东兴证券</a>');
INSERT INTO `friend_link` VALUES ('99', '1', 'http://www.sge.sh', '上海黄金交易所', null, '<a href=\"http://www.sge.sh\" target=\"_blank\">上海黄金交易所</a>');
INSERT INTO `friend_link` VALUES ('100', '1', 'http://www.i618.com.cn', '山西证券', null, '<a href=\"http://www.i618.com.cn\" target=\"_blank\">山西证券</a>');
INSERT INTO `friend_link` VALUES ('101', '1', 'http://www.hx168.com.cn', '华西证券', null, '<a href=\"http://www.hx168.com.cn\" target=\"_blank\">华西证券</a>');
INSERT INTO `friend_link` VALUES ('102', '1', 'http://www.cjis.cn', '中投证券', null, '<a href=\"http://www.cjis.cn\" target=\"_blank\">中投证券</a>');
INSERT INTO `friend_link` VALUES ('103', '1', 'http://www.hysec.com', '宏源证券', null, '<a href=\"http://www.hysec.com\" target=\"_blank\">宏源证券</a>');
INSERT INTO `friend_link` VALUES ('104', '1', 'http://www.xyzq.com.cn', '兴业证券', null, '<a href=\"http://www.xyzq.com.cn\" target=\"_blank\">兴业证券</a>');
INSERT INTO `friend_link` VALUES ('105', '1', 'http://www.nesc.cn', '东北证券', null, '<a href=\"http://www.nesc.cn\" target=\"_blank\">东北证券</a>');
INSERT INTO `friend_link` VALUES ('106', '1', 'http://www.csc108.com', '中信建投', null, '<a href=\"http://www.csc108.com\" target=\"_blank\">中信建投</a>');
INSERT INTO `friend_link` VALUES ('107', '1', 'http://www.gyzq.com.cn', '国元证券', null, '<a href=\"http://www.gyzq.com.cn\" target=\"_blank\">国元证券</a>');
INSERT INTO `friend_link` VALUES ('108', '1', 'http://www.lhzq.com', '华泰联合证券', null, '<a href=\"http://www.lhzq.com\" target=\"_blank\">华泰联合证券</a>');
INSERT INTO `friend_link` VALUES ('109', '1', 'http://www.dtsbc.com.cn', '大同证券', null, '<a href=\"http://www.dtsbc.com.cn\" target=\"_blank\">大同证券</a>');
INSERT INTO `friend_link` VALUES ('110', '1', 'http://www.dfzq.com.cn', '东方证券', null, '<a href=\"http://www.dfzq.com.cn\" target=\"_blank\">东方证券</a>');
INSERT INTO `friend_link` VALUES ('111', '1', 'http://www.dwjq.com.cn', '东吴证券', null, '<a href=\"http://www.dwjq.com.cn\" target=\"_blank\">东吴证券</a>');
INSERT INTO `friend_link` VALUES ('112', '1', 'http://www.ccnew.com', '中原证券', null, '<a href=\"http://www.ccnew.com\" target=\"_blank\">中原证券</a>');
INSERT INTO `friend_link` VALUES ('113', '1', 'http://www.stocke.com.cn', '浙商证券', null, '<a href=\"http://www.stocke.com.cn\" target=\"_blank\">浙商证券</a>');
INSERT INTO `friend_link` VALUES ('114', '1', 'http://www.njzq.com.cn', '南京证券', null, '<a href=\"http://www.njzq.com.cn\" target=\"_blank\">南京证券</a>');
INSERT INTO `friend_link` VALUES ('115', '1', 'http://www.962518.com', '上海证券', null, '<a href=\"http://www.962518.com\" target=\"_blank\">上海证券</a>');
INSERT INTO `friend_link` VALUES ('116', '1', 'http://www.cindasc.com', '信达证券', null, '<a href=\"http://www.cindasc.com\" target=\"_blank\">信达证券</a>');
INSERT INTO `friend_link` VALUES ('117', '1', 'http://www.gsstock.com', '国盛证券', null, '<a href=\"http://www.gsstock.com\" target=\"_blank\">国盛证券</a>');
INSERT INTO `friend_link` VALUES ('118', '1', 'http://www.longone.com.cn', '东海证券', null, '<a href=\"http://www.longone.com.cn\" target=\"_blank\">东海证券</a>');
INSERT INTO `friend_link` VALUES ('119', '1', 'http://www.dgzq.com.cn', '东莞证券', null, '<a href=\"http://www.dgzq.com.cn\" target=\"_blank\">东莞证券</a>');
INSERT INTO `friend_link` VALUES ('120', '1', 'http://www.zxwt.com.cn', '中信万通证券', null, '<a href=\"http://www.zxwt.com.cn\" target=\"_blank\">中信万通证券</a>');
INSERT INTO `friend_link` VALUES ('121', '1', 'http://www.glsc.com.cn', '国联证券', null, '<a href=\"http://www.glsc.com.cn\" target=\"_blank\">国联证券</a>');
INSERT INTO `friend_link` VALUES ('122', '1', 'http://www.cfzq.com', '财富证券', null, '<a href=\"http://www.cfzq.com\" target=\"_blank\">财富证券</a>');
INSERT INTO `friend_link` VALUES ('123', '1', 'http://www.swsc.com.cn', '西南证券', null, '<a href=\"http://www.swsc.com.cn\" target=\"_blank\">西南证券</a>');
INSERT INTO `friend_link` VALUES ('124', '1', 'http://www.mszq.com', '民生证券', null, '<a href=\"http://www.mszq.com\" target=\"_blank\">民生证券</a>');
INSERT INTO `friend_link` VALUES ('125', '1', 'http://www.hrsec.com.cn', '华融证券', null, '<a href=\"http://www.hrsec.com.cn\" target=\"_blank\">华融证券</a>');
INSERT INTO `friend_link` VALUES ('126', '1', 'http://www.xcsc.com', '湘财证券', null, '<a href=\"http://www.xcsc.com\" target=\"_blank\">湘财证券</a>');
INSERT INTO `friend_link` VALUES ('127', '1', 'http://new.cgws.com', '长城证券', null, '<a href=\"http://new.cgws.com\" target=\"_blank\">长城证券</a>');
INSERT INTO `friend_link` VALUES ('128', '1', 'http://www.scstock.com', '江南证券', null, '<a href=\"http://www.scstock.com\" target=\"_blank\">江南证券</a>');
INSERT INTO `friend_link` VALUES ('129', '1', 'http://www.ctsec.com', '财通证券', null, '<a href=\"http://www.ctsec.com\" target=\"_blank\">财通证券</a>');
INSERT INTO `friend_link` VALUES ('130', '1', 'http://www.ewww.com.cn', '渤海证券', null, '<a href=\"http://www.ewww.com.cn\" target=\"_blank\">渤海证券</a>');
INSERT INTO `friend_link` VALUES ('131', '1', 'http://www.e5618.com', '民族证券', null, '<a href=\"http://www.e5618.com\" target=\"_blank\">民族证券</a>');
INSERT INTO `friend_link` VALUES ('132', '1', 'http://www.ydsc.com.cn', '英大证券', null, '<a href=\"http://www.ydsc.com.cn\" target=\"_blank\">英大证券</a>');
INSERT INTO `friend_link` VALUES ('133', '1', 'http://www.hlzqgs.com', '华龙证券', null, '<a href=\"http://www.hlzqgs.com\" target=\"_blank\">华龙证券</a>');
INSERT INTO `friend_link` VALUES ('134', '1', 'http://www.xzsec.com', '西藏证券', null, '<a href=\"http://www.xzsec.com\" target=\"_blank\">西藏证券</a>');
INSERT INTO `friend_link` VALUES ('135', '1', 'http://www.jhzq.com.cn', '江海证券', null, '<a href=\"http://www.jhzq.com.cn\" target=\"_blank\">江海证券</a>');
INSERT INTO `friend_link` VALUES ('136', '1', 'http://www.csco.com.cn', '世纪证券', null, '<a href=\"http://www.csco.com.cn\" target=\"_blank\">世纪证券</a>');
INSERT INTO `friend_link` VALUES ('137', '1', 'http://www.cnht.com.cn', '恒泰证券', null, '<a href=\"http://www.cnht.com.cn\" target=\"_blank\">恒泰证券</a>');
INSERT INTO `friend_link` VALUES ('138', '1', 'http://www.tebon.com.cn', '德邦证券', null, '<a href=\"http://www.tebon.com.cn\" target=\"_blank\">德邦证券</a>');
INSERT INTO `friend_link` VALUES ('139', '1', 'http://www.tfzq.com', '天风证券', null, '<a href=\"http://www.tfzq.com\" target=\"_blank\">天风证券</a>');
INSERT INTO `friend_link` VALUES ('140', '1', 'http://blog.cnfol.com', '中金博客', null, '<a href=\"http://blog.cnfol.com\" target=\"_blank\">中金博客</a>');
INSERT INTO `friend_link` VALUES ('141', '1', 'http://blog.sina.com.cn/lm/finance/index.html', '新浪财经博客', null, '<a href=\"http://blog.sina.com.cn/lm/finance/index.html\" target=\"_blank\">新浪财经博客</a>');
INSERT INTO `friend_link` VALUES ('142', '1', 'http://blog.eastmoney.com', '东方财富网博客', null, '<a href=\"http://blog.eastmoney.com\" target=\"_blank\">东方财富网博客</a>');
INSERT INTO `friend_link` VALUES ('143', '1', 'http://blog.sohu.com/business', '搜狐财经博客', null, '<a href=\"http://blog.sohu.com/business\" target=\"_blank\">搜狐财经博客</a>');
INSERT INTO `friend_link` VALUES ('144', '1', 'http://fblog.hexun.com', '和讯财经博客', null, '<a href=\"http://fblog.hexun.com\" target=\"_blank\">和讯财经博客</a>');
INSERT INTO `friend_link` VALUES ('145', '1', 'http://blog.cnstock.com', '中国证券网博客', null, '<a href=\"http://blog.cnstock.com\" target=\"_blank\">中国证券网博客</a>');
INSERT INTO `friend_link` VALUES ('146', '1', 'http://blog.sina.com.cn/shaminnong', '老沙博客', null, '<a href=\"http://blog.sina.com.cn/shaminnong\" target=\"_blank\">老沙博客</a>');
INSERT INTO `friend_link` VALUES ('147', '1', 'http://blog.sina.com.cn/xuxiaoming8', '徐小明博客', null, '<a href=\"http://blog.sina.com.cn/xuxiaoming8\" target=\"_blank\">徐小明博客</a>');
INSERT INTO `friend_link` VALUES ('148', '1', 'http://blog.sina.com.cn/yehong', '叶弘博客', null, '<a href=\"http://blog.sina.com.cn/yehong\" target=\"_blank\">叶弘博客</a>');
INSERT INTO `friend_link` VALUES ('149', '1', 'http://bbs.gutx.com', '股天下', null, '<a href=\"http://bbs.gutx.com\" target=\"_blank\">股天下</a>');
INSERT INTO `friend_link` VALUES ('150', '1', 'http://www.55188.com/index.php', '理想论坛', null, '<a href=\"http://www.55188.com/index.php\" target=\"_blank\">理想论坛</a>');
INSERT INTO `friend_link` VALUES ('151', '1', 'http://finance.cctv.com', 'CCTV经济频道', null, '<a href=\"http://finance.cctv.com\" target=\"_blank\">CCTV经济频道</a>');
INSERT INTO `friend_link` VALUES ('152', '1', 'http://cn.reuters.com', '路透财经', null, '<a href=\"http://cn.reuters.com\" target=\"_blank\">路透财经</a>');
INSERT INTO `friend_link` VALUES ('153', '1', 'http://chinese.wsj.com', '华尔街日报', null, '<a href=\"http://chinese.wsj.com\" target=\"_blank\">华尔街日报</a>');
INSERT INTO `friend_link` VALUES ('154', '1', 'http://www.ftchinese.com/index.php', 'FT中文网', null, '<a href=\"http://www.ftchinese.com/index.php\" target=\"_blank\">FT中文网</a>');
INSERT INTO `friend_link` VALUES ('155', '1', 'http://www.cb.com.cn', '中国经营报', null, '<a href=\"http://www.cb.com.cn\" target=\"_blank\">中国经营报</a>');
INSERT INTO `friend_link` VALUES ('156', '1', 'http://www.zgjrw.com', '中国金融网', null, '<a href=\"http://www.zgjrw.com\" target=\"_blank\">中国金融网</a>');
INSERT INTO `friend_link` VALUES ('157', '1', 'http://www.eeo.com.cn', '经济观察网', null, '<a href=\"http://www.eeo.com.cn\" target=\"_blank\">经济观察网</a>');
INSERT INTO `friend_link` VALUES ('158', '1', 'http://www.21cbh.com', '21世纪经济报道', null, '<a href=\"http://www.21cbh.com\" target=\"_blank\">21世纪经济报道</a>');
INSERT INTO `friend_link` VALUES ('159', '1', 'http://www.financialnews.com.cn', '金融时报', null, '<a href=\"http://www.financialnews.com.cn\" target=\"_blank\">金融时报</a>');
INSERT INTO `friend_link` VALUES ('160', '1', 'http://www.tsts168.com', '天生我财', null, '<a href=\"http://www.tsts168.com\" target=\"_blank\">天生我财</a>');
INSERT INTO `friend_link` VALUES ('161', '1', 'http://www.caijing.com.cn', '财经网', null, '<a href=\"http://www.caijing.com.cn\" target=\"_blank\">财经网</a>');
INSERT INTO `friend_link` VALUES ('162', null, 'http://www.financialnews.com.cn', '金融时报', null, '金融时报网址');

-- ----------------------------
-- Table structure for government_info
-- ----------------------------
DROP TABLE IF EXISTS `government_info`;
CREATE TABLE `government_info` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `GOV_NAME` varchar(100) DEFAULT NULL COMMENT '采购单位名称',
  `AREA_ID` int(11) DEFAULT NULL COMMENT '所在地区ID',
  `ADDRESS` varchar(100) DEFAULT NULL COMMENT '单位地址',
  `POSTAL_CODE` varchar(6) DEFAULT NULL COMMENT '邮政编码',
  `PRINCIPLE` varchar(30) DEFAULT NULL COMMENT '负责人',
  `CONTACT_PHONE` varchar(100) DEFAULT NULL COMMENT '联系电话',
  `FAX` varchar(100) DEFAULT NULL COMMENT '传真号码',
  `INTRODUCE` text COMMENT '简介',
  `REG_TIME` datetime DEFAULT NULL COMMENT '注册时间',
  `LOCK_STATUS` int(11) DEFAULT '0' COMMENT '状态,0:未审核,1:通过审核,3:资料不完善,4:未通过审核,5:锁定',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='采购单位信息表';

-- ----------------------------
-- Records of government_info
-- ----------------------------
INSERT INTO `government_info` VALUES ('1', '成都市采购中心', '4', '四川省成都市', '121212', '老张', '028-1103231332', '028-11934343434', '介绍', '2011-11-11 11:11:11', '1');
INSERT INTO `government_info` VALUES ('2', '', '0', '', '', '', '', '', null, null, '0');

-- ----------------------------
-- Table structure for government_pic
-- ----------------------------
DROP TABLE IF EXISTS `government_pic`;
CREATE TABLE `government_pic` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `GOV_ID` int(11) DEFAULT NULL COMMENT '采购单位ID',
  `PIC_SAVE_NAME` varchar(50) DEFAULT NULL COMMENT '保存名称',
  `PIC_OLD_NAME` varchar(100) DEFAULT NULL COMMENT '原始名称',
  `PIC_SIZE` int(11) DEFAULT NULL COMMENT '图片大小',
  `CATEGORY_ID` int(11) DEFAULT NULL COMMENT '图片分类',
  `SAVE_TIME` datetime DEFAULT NULL COMMENT '保存时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='采购单位照片信息表';

-- ----------------------------
-- Records of government_pic
-- ----------------------------

-- ----------------------------
-- Table structure for gov_account_info
-- ----------------------------
DROP TABLE IF EXISTS `gov_account_info`;
CREATE TABLE `gov_account_info` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `GOV_ID` int(11) DEFAULT NULL COMMENT '单位ID',
  `ROLE_ID` int(11) DEFAULT NULL COMMENT '角色ID',
  `USERNAME` varchar(50) DEFAULT NULL COMMENT '账号',
  `PASSWORD` varchar(50) DEFAULT NULL COMMENT '登录密码',
  `REALNAME` varchar(30) DEFAULT NULL COMMENT '真实姓名',
  `LOGIN_TIMES` int(11) DEFAULT '0' COMMENT '登录次数',
  `LOTIN_TIME` datetime DEFAULT NULL COMMENT '最后一次登录时间',
  `LOGIN_IP` varchar(20) DEFAULT NULL COMMENT '最后一次登录IP',
  `QUESTION_TITLE` varchar(100) DEFAULT NULL COMMENT '密码问题',
  `QUESTION_ANSWER` varchar(100) DEFAULT NULL COMMENT '密码答案',
  `REG_TIME` datetime DEFAULT NULL COMMENT '注册时间',
  `REMARK` text COMMENT '备注',
  `LOCK_STATUS` int(11) DEFAULT '0' COMMENT '锁定状态,0:开放,1:锁定',
  PRIMARY KEY (`ID`),
  KEY `FK97B69791DEB193C2` (`GOV_ID`),
  CONSTRAINT `FK97B69791DEB193C2` FOREIGN KEY (`GOV_ID`) REFERENCES `government_info` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='采购单位账号信息表';

-- ----------------------------
-- Records of gov_account_info
-- ----------------------------
INSERT INTO `gov_account_info` VALUES ('1', '1', '2', 'gov', '123', '李四', '119', '2011-06-22 23:32:31', '127.0.0.1', 'nihao', 'wohao', null, 'dajiahao', '0');
INSERT INTO `gov_account_info` VALUES ('2', '1', '1', 'gov1', '111', '张三', '0', '2011-06-18 12:29:12', '127.0.0.1', null, null, null, null, '0');
INSERT INTO `gov_account_info` VALUES ('3', '1', '1', 'kevin', 'kevin', '老丁', '1', '2011-06-07 17:32:53', '127.0.0.1', null, null, null, null, '0');
INSERT INTO `gov_account_info` VALUES ('4', '1', '1', 'admin', '123', '王麻子', '0', null, '', 'nihao', 'wohao', null, '大家好', '0');
INSERT INTO `gov_account_info` VALUES ('5', '1', '1', 'renee', '111', '人呃呃', '0', null, '', 'wowowo', 'nininini', '2011-06-18 13:01:09', '哒哒哒', '0');
INSERT INTO `gov_account_info` VALUES ('6', '2', '0', '', '', null, '0', null, null, null, null, null, '', '0');

-- ----------------------------
-- Table structure for gov_role_deploy
-- ----------------------------
DROP TABLE IF EXISTS `gov_role_deploy`;
CREATE TABLE `gov_role_deploy` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `ROLE_ID` int(11) DEFAULT NULL COMMENT '角色ID',
  `POWER_ID` int(11) DEFAULT NULL COMMENT '功能点ID',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='采购单位后台功能点分配信息表';

-- ----------------------------
-- Records of gov_role_deploy
-- ----------------------------

-- ----------------------------
-- Table structure for gov_role_info
-- ----------------------------
DROP TABLE IF EXISTS `gov_role_info`;
CREATE TABLE `gov_role_info` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `GOV_ID` int(11) DEFAULT NULL COMMENT '采购单位ID',
  `ROLE_NAME` varchar(50) DEFAULT NULL COMMENT '角色名称',
  `PID` int(11) DEFAULT '0' COMMENT '上级角色ID',
  `PARENT_ROLE_NAME` varchar(50) DEFAULT NULL COMMENT '上级角色名称',
  `SAVETEXT` varchar(300) DEFAULT NULL COMMENT '存储序列',
  `SAVE_TIME` datetime DEFAULT NULL COMMENT '保存时间',
  `REMARK` text COMMENT '备注',
  `LOCK_STATUS` int(11) DEFAULT '0' COMMENT '锁定状态,0:开放,1:锁定',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='企业角色信息表';

-- ----------------------------
-- Records of gov_role_info
-- ----------------------------
INSERT INTO `gov_role_info` VALUES ('1', '1', '采购主任', '2', '采购厅长', '采购厅长/采购主任', '2011-06-18 15:14:52', '无', '0');
INSERT INTO `gov_role_info` VALUES ('2', '1', '采购厅长', '-1', '', '采购厅长', '2011-06-18 15:14:43', '无', '0');
INSERT INTO `gov_role_info` VALUES ('3', '1', '采购经理', '2', '采购厅长', '采购厅长/采购经理', '2011-06-18 14:13:15', '无', '0');
INSERT INTO `gov_role_info` VALUES ('4', '1', '业务员', '1', '采购主任', '采购厅长/采购主任/业务员', '2011-06-18 14:33:26', '无', '0');
INSERT INTO `gov_role_info` VALUES ('5', '1', '话务员', '1', '采购主任', '采购厅长/采购主任/话务员', '2011-06-18 14:33:29', '无', '0');
INSERT INTO `gov_role_info` VALUES ('6', '1', '扫地的', '8', '采购喽啰', '采购厅长/采购经理/采购主管/采购喽啰/扫地的', '2011-06-18 15:15:20', '无', '0');
INSERT INTO `gov_role_info` VALUES ('7', '1', '采购主管', '3', '采购经理', '采购厅长/采购经理/采购主管', '2011-06-18 14:15:12', '无', '0');
INSERT INTO `gov_role_info` VALUES ('8', '1', '采购喽啰', '7', '采购主管', '采购厅长/采购经理/采购主管/采购喽啰', '2011-06-18 14:15:43', '哈哈', '0');

-- ----------------------------
-- Table structure for industry_info
-- ----------------------------
DROP TABLE IF EXISTS `industry_info`;
CREATE TABLE `industry_info` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `INDUSTRY_NAME` varchar(50) DEFAULT NULL COMMENT '行业名称',
  `REMARK` varchar(100) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='行业信息表';

-- ----------------------------
-- Records of industry_info
-- ----------------------------
INSERT INTO `industry_info` VALUES ('1', '建筑', '无');
INSERT INTO `industry_info` VALUES ('2', 'IT', '无');

-- ----------------------------
-- Table structure for join_bidding_files
-- ----------------------------
DROP TABLE IF EXISTS `join_bidding_files`;
CREATE TABLE `join_bidding_files` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `BUSINESS_ID` int(11) DEFAULT NULL COMMENT '企业ID',
  `BIDDING_ID` int(11) DEFAULT NULL COMMENT '标书ID',
  `SAVE_FILE_NAME` varchar(100) DEFAULT NULL COMMENT '附件保存名称',
  `OLD_FILE_NAME` varchar(100) DEFAULT NULL COMMENT '附件原始名称',
  `FILE_SIZE` int(11) DEFAULT NULL COMMENT '文件大小',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='投标信息表';

-- ----------------------------
-- Records of join_bidding_files
-- ----------------------------

-- ----------------------------
-- Table structure for join_bidding_info
-- ----------------------------
DROP TABLE IF EXISTS `join_bidding_info`;
CREATE TABLE `join_bidding_info` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `BUSINESS_ID` int(11) DEFAULT NULL COMMENT '企业ID',
  `BIDDING_ID` int(11) DEFAULT NULL COMMENT '标书ID',
  `APPLY_ACCOUNT_ID` int(11) DEFAULT NULL COMMENT '投标账号ID',
  `APPLY_CONTENT` text COMMENT '竞标申请内容',
  `APPLAY_TIME` datetime DEFAULT NULL COMMENT '投标时间',
  `STATUS` int(11) DEFAULT '0' COMMENT '处理状态,0:未处理;1:已处理',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='投标信息表';

-- ----------------------------
-- Records of join_bidding_info
-- ----------------------------

-- ----------------------------
-- Table structure for laws_and_regulations
-- ----------------------------
DROP TABLE IF EXISTS `laws_and_regulations`;
CREATE TABLE `laws_and_regulations` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `ACCOUNT_ID` int(11) DEFAULT NULL COMMENT '管理人员账号ID',
  `TITLE` varchar(200) DEFAULT NULL COMMENT '标题',
  `CONTENT` text COMMENT '内容',
  `SAVE_TIME` datetime DEFAULT NULL COMMENT '保存时间',
  `READ_TIMES` int(11) DEFAULT '0' COMMENT '阅读次数',
  `LOCK_STATUS` int(11) DEFAULT '0' COMMENT '锁定状态,0:开放,1:锁定',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='法律法规信息表';

-- ----------------------------
-- Records of laws_and_regulations
-- ----------------------------

-- ----------------------------
-- Table structure for market_news
-- ----------------------------
DROP TABLE IF EXISTS `market_news`;
CREATE TABLE `market_news` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `ACCOUNT_ID` int(11) DEFAULT NULL COMMENT '管理人员账号ID',
  `TITLE` varchar(200) DEFAULT NULL COMMENT '标题',
  `CONTENT` text COMMENT '内容',
  `SAVE_TIME` datetime DEFAULT NULL COMMENT '保存时间',
  `READ_TIMES` int(11) DEFAULT '0' COMMENT '阅读次数',
  `LOCK_STATUS` int(11) DEFAULT '0' COMMENT '锁定状态,0:开放,1:锁定',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='市场动态信息表';

-- ----------------------------
-- Records of market_news
-- ----------------------------

-- ----------------------------
-- Table structure for order_form
-- ----------------------------
DROP TABLE IF EXISTS `order_form`;
CREATE TABLE `order_form` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `ORDER_FORM_NUMBER` varchar(50) DEFAULT NULL COMMENT '订单号',
  `GOV_ID` int(11) DEFAULT NULL COMMENT '采购单位ID',
  `BUSINESS_ID` int(11) DEFAULT '-1' COMMENT '交易企业ID',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '订单创建时间',
  `TITLE` varchar(100) DEFAULT NULL COMMENT '订单标题',
  `TOTAL_MONEY` double DEFAULT NULL COMMENT '订单总金额',
  `PAY_MONEY` double DEFAULT NULL COMMENT '实际支付金额',
  `PAY_TYPE` int(11) DEFAULT NULL COMMENT '支付类型',
  `PAY_BANK` varchar(100) DEFAULT NULL COMMENT '支付银行',
  `PAY_ACCOUNT` varchar(50) DEFAULT NULL COMMENT '支付账号',
  `PAY_ACCOUNT_PERSON` varchar(30) DEFAULT NULL COMMENT '开户人',
  `PAY_PERSON_IDCARD` varchar(20) DEFAULT NULL COMMENT '开户人身份证号码',
  `PAY_OTHER_DESC` varchar(200) DEFAULT NULL COMMENT '其他支付方式描述',
  `DELIVER_TYPE` int(11) DEFAULT NULL COMMENT '送货方式',
  `DELIVER_ADDRESS` varchar(200) DEFAULT NULL COMMENT '送货目的地详细地址',
  `DELIVER_POSTAL_CODE` varchar(6) DEFAULT NULL COMMENT '送货目的地邮编',
  `DELIVER_CONTACT_PERSON` varchar(30) DEFAULT NULL COMMENT '送货联系人',
  `DELIVER_CONTACT_PHONE` varchar(100) DEFAULT NULL COMMENT '送货联系电话',
  `RIGHT_LIABILITIES` text COMMENT '权责声明',
  `REMARK` text COMMENT '备注',
  `FORM_STATUS` int(11) DEFAULT '0' COMMENT '订单状态，状态值详细请参看订单状态描述',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单信息表';

-- ----------------------------
-- Records of order_form
-- ----------------------------

-- ----------------------------
-- Table structure for order_form_detail
-- ----------------------------
DROP TABLE IF EXISTS `order_form_detail`;
CREATE TABLE `order_form_detail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `FORM_ID` int(11) DEFAULT NULL COMMENT '订单ID',
  `PRODUCT_ID` int(11) DEFAULT NULL COMMENT '商品ID',
  `PRODUCT_COUNT` int(11) DEFAULT NULL COMMENT '数量',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单明细表';

-- ----------------------------
-- Records of order_form_detail
-- ----------------------------

-- ----------------------------
-- Table structure for order_form_files
-- ----------------------------
DROP TABLE IF EXISTS `order_form_files`;
CREATE TABLE `order_form_files` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `ORDER_FORM_ID` int(11) DEFAULT NULL COMMENT '订单ID',
  `SAVE_FILE_NAME` varchar(100) DEFAULT NULL COMMENT '附件保存名称',
  `OLD_FILE_NAME` varchar(100) DEFAULT NULL COMMENT '附件原始名称',
  `FILE_SIZE` int(11) DEFAULT NULL COMMENT '文件大小',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单附件信息表';

-- ----------------------------
-- Records of order_form_files
-- ----------------------------

-- ----------------------------
-- Table structure for order_form_log
-- ----------------------------
DROP TABLE IF EXISTS `order_form_log`;
CREATE TABLE `order_form_log` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `ORDER_FORM_ID` int(11) DEFAULT NULL COMMENT '订单ID',
  `SAVE_TIME` datetime DEFAULT NULL COMMENT '存储日期',
  `CONTENT` text COMMENT '日志内容',
  `INFO_FROM` int(11) DEFAULT '0' COMMENT '日志来源,1:采购单位日志,2:供应商日志',
  `ACCOUNT_ID` int(11) DEFAULT NULL COMMENT '操作账号ID',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单日志信息表';

-- ----------------------------
-- Records of order_form_log
-- ----------------------------

-- ----------------------------
-- Table structure for order_form_status
-- ----------------------------
DROP TABLE IF EXISTS `order_form_status`;
CREATE TABLE `order_form_status` (
  `ID` int(11) NOT NULL COMMENT '主键',
  `GOV_STATUS` varchar(50) DEFAULT NULL COMMENT '采购单位订单状态描述',
  `BUS_STATUS` varchar(50) DEFAULT NULL COMMENT '供应商订单状态描述',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单状态信息表';

-- ----------------------------
-- Records of order_form_status
-- ----------------------------
INSERT INTO `order_form_status` VALUES ('0', '未发送', '-');
INSERT INTO `order_form_status` VALUES ('1', '已发送，等待确认', '待确认');
INSERT INTO `order_form_status` VALUES ('2', '已确认，等待发货', '等待发货');
INSERT INTO `order_form_status` VALUES ('3', '已发货，待确认货到', '已发货，等待货到');
INSERT INTO `order_form_status` VALUES ('4', '货已到，等待支付', '货已到，等待支付');
INSERT INTO `order_form_status` VALUES ('5', '交易完成', '交易完成');
INSERT INTO `order_form_status` VALUES ('6', '已作废', '已作废');

-- ----------------------------
-- Table structure for power_item_admin
-- ----------------------------
DROP TABLE IF EXISTS `power_item_admin`;
CREATE TABLE `power_item_admin` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `NAME` varchar(50) DEFAULT NULL COMMENT '功能点名称',
  `URL` varchar(100) DEFAULT NULL COMMENT '管理地址',
  `PID` int(11) DEFAULT '0' COMMENT '父级功能点ID',
  `LOCK_STATUS` int(11) DEFAULT '0' COMMENT '锁定状态,0:开放,1:锁定',
  `PNAME` varchar(50) DEFAULT NULL COMMENT '上级功能点名称',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 COMMENT='综合管理后台功能点';

-- ----------------------------
-- Records of power_item_admin
-- ----------------------------
INSERT INTO `power_item_admin` VALUES ('1', '系统信息配置', '', '-1', '0', '');
INSERT INTO `power_item_admin` VALUES ('2', '帐号管理', '', '-1', '0', '');
INSERT INTO `power_item_admin` VALUES ('3', '采购单位管理', '', '-1', '0', '');
INSERT INTO `power_item_admin` VALUES ('4', '供应商管理', '', '-1', '0', '');
INSERT INTO `power_item_admin` VALUES ('5', '市场动态管理', '', '-1', '0', '');
INSERT INTO `power_item_admin` VALUES ('6', '企业类型管理', '', '-1', '0', '');
INSERT INTO `power_item_admin` VALUES ('7', '政策法规管理', '', '-1', '0', '');
INSERT INTO `power_item_admin` VALUES ('8', '采购指南管理', '', '-1', '0', '');
INSERT INTO `power_item_admin` VALUES ('9', '友情连接管理', '', '-1', '0', '');
INSERT INTO `power_item_admin` VALUES ('10', '地区信息管理', '', '-1', '0', '');
INSERT INTO `power_item_admin` VALUES ('11', '行业信息管理', '', '-1', '0', '');
INSERT INTO `power_item_admin` VALUES ('12', '产品分类管理', '', '-1', '0', '');
INSERT INTO `power_item_admin` VALUES ('13', '反馈信息管理', '', '-1', '0', '');
INSERT INTO `power_item_admin` VALUES ('14', '功能点管理', '', '-1', '0', '');
INSERT INTO `power_item_admin` VALUES ('15', '角色管理', '', '-1', '0', '');
INSERT INTO `power_item_admin` VALUES ('16', '站点信息配置', 'self-admin', '1', '0', '系统信息配置');
INSERT INTO `power_item_admin` VALUES ('17', '密码修改', 'midify-password', '1', '0', '系统信息配置');
INSERT INTO `power_item_admin` VALUES ('18', '注销', 'logon-off', '1', '0', '系统信息配置');
INSERT INTO `power_item_admin` VALUES ('19', '帐号列表', 'account-info', '2', '0', '帐号管理');
INSERT INTO `power_item_admin` VALUES ('20', '录入帐号', 'account-info!edit', '2', '0', '帐号管理');
INSERT INTO `power_item_admin` VALUES ('21', '采购单位资料审核', 'gov-info', '3', '0', '采购单位管理');
INSERT INTO `power_item_admin` VALUES ('22', '采购单位列表', 'gov-info!old', '3', '0', '采购单位管理');
INSERT INTO `power_item_admin` VALUES ('23', '供应商资料审核', 'business-info', '4', '0', '供应商管理');
INSERT INTO `power_item_admin` VALUES ('24', '供应商列表', 'business-info!old', '4', '0', '供应商管理');
INSERT INTO `power_item_admin` VALUES ('25', '动态列表', 'market-news-info', '5', '0', '市场动态管理');
INSERT INTO `power_item_admin` VALUES ('26', '录入动态', 'market-news-info!edit', '5', '0', '市场动态管理');
INSERT INTO `power_item_admin` VALUES ('27', '企业类型列表', 'business-type-info', '6', '0', '企业类型管理');
INSERT INTO `power_item_admin` VALUES ('28', '录入类型', 'business-type-info!edit', '6', '0', '企业类型管理');
INSERT INTO `power_item_admin` VALUES ('29', '法规列表', 'lay-news-info', '7', '0', '政策法规管理');
INSERT INTO `power_item_admin` VALUES ('30', '录入法规', 'lay-news-info!edit', '7', '0', '政策法规管理');
INSERT INTO `power_item_admin` VALUES ('31', '指南列表', 'shopping-guide-info', '8', '0', '采购指南管理');
INSERT INTO `power_item_admin` VALUES ('32', '录入指南', 'shopping-guide-info!edit', '8', '0', '采购指南管理');
INSERT INTO `power_item_admin` VALUES ('33', '连接列表', 'friend-link', '9', '0', '友情连接管理');
INSERT INTO `power_item_admin` VALUES ('34', '录入连接', 'friend-link!edit', '9', '0', '友情连接管理');
INSERT INTO `power_item_admin` VALUES ('35', '地区列表', 'area-info', '10', '0', '地区信息管理');
INSERT INTO `power_item_admin` VALUES ('36', '录入地区', 'area-info!edit', '10', '0', '地区信息管理');
INSERT INTO `power_item_admin` VALUES ('37', '行业列表', 'industry-list', '11', '0', '行业信息管理');
INSERT INTO `power_item_admin` VALUES ('38', '录入行业', 'industry-list!edit', '11', '0', '行业信息管理');
INSERT INTO `power_item_admin` VALUES ('39', '分类列表', 'product-class-info', '12', '0', '产品分类管理');
INSERT INTO `power_item_admin` VALUES ('40', '录入分类', 'product-class-info!edit', '12', '0', '产品分类管理');
INSERT INTO `power_item_admin` VALUES ('41', '企业反馈', 'feedback-info!bus', '13', '0', '反馈信息管理');
INSERT INTO `power_item_admin` VALUES ('42', '采购单位反馈', 'feedback-info!gov', '13', '0', '反馈信息管理');
INSERT INTO `power_item_admin` VALUES ('43', '采购单位', '', '14', '0', '功能点管理');
INSERT INTO `power_item_admin` VALUES ('44', '功能点列表', 'power-item-list-gov', '43', '0', '采购单位');
INSERT INTO `power_item_admin` VALUES ('45', '录入功能点', 'power-item-list-gov!edit', '43', '0', '采购单位');
INSERT INTO `power_item_admin` VALUES ('46', '供应商', '', '14', '0', '功能点管理');
INSERT INTO `power_item_admin` VALUES ('47', '功能点列表', 'power-item-list-bussiness', '46', '0', '供应商');
INSERT INTO `power_item_admin` VALUES ('48', '录入功能点', 'power-item-list-bussiness!edit', '46', '0', '供应商');
INSERT INTO `power_item_admin` VALUES ('49', '综合管理后台', '', '14', '0', '功能点管理');
INSERT INTO `power_item_admin` VALUES ('50', '功能点列表', 'power-item-list-admin', '49', '0', '综合管理后台');
INSERT INTO `power_item_admin` VALUES ('51', '录入功能点', 'power-item-list-admin!edit', '49', '0', '综合管理后台');
INSERT INTO `power_item_admin` VALUES ('52', '角色列表', 'role-list', '15', '0', '角色管理');
INSERT INTO `power_item_admin` VALUES ('53', '录入角色', 'role-list!edit', '15', '0', '角色管理');

-- ----------------------------
-- Table structure for power_item_business
-- ----------------------------
DROP TABLE IF EXISTS `power_item_business`;
CREATE TABLE `power_item_business` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `NAME` varchar(50) DEFAULT NULL COMMENT '功能点名称',
  `URL` varchar(100) DEFAULT NULL COMMENT '管理地址',
  `PID` int(11) DEFAULT '0' COMMENT '父级功能点ID',
  `LOCK_STATUS` int(11) DEFAULT '0' COMMENT '锁定状态,0:开放,1:锁定',
  `PNAME` varchar(50) DEFAULT NULL COMMENT '上级功能点名称',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='供应商后台功能点';

-- ----------------------------
-- Records of power_item_business
-- ----------------------------
INSERT INTO `power_item_business` VALUES ('1', '系统管理', '', '-1', '0', '');
INSERT INTO `power_item_business` VALUES ('2', '产品信息管理', '', '-1', '0', '');
INSERT INTO `power_item_business` VALUES ('3', '竞标管理', '', '-1', '0', '');
INSERT INTO `power_item_business` VALUES ('4', '角色管理', '', '-1', '0', '');
INSERT INTO `power_item_business` VALUES ('5', '订单管理', '', '-1', '0', '');
INSERT INTO `power_item_business` VALUES ('6', '信息反馈', '', '-1', '0', '');
INSERT INTO `power_item_business` VALUES ('7', '注册资料维护', 'self-admin', '1', '0', '系统管理');
INSERT INTO `power_item_business` VALUES ('8', '企业图库', 'business-pic', '1', '0', '系统管理');
INSERT INTO `power_item_business` VALUES ('9', '密码修改', 'midify-password', '1', '0', '系统管理');
INSERT INTO `power_item_business` VALUES ('10', '帐号管理', 'accounts-list', '1', '0', '系统管理');
INSERT INTO `power_item_business` VALUES ('11', '录入帐号', 'accounts-list!edit', '1', '0', '系统管理');
INSERT INTO `power_item_business` VALUES ('12', '注销', 'logon-off', '1', '0', '系统管理');
INSERT INTO `power_item_business` VALUES ('13', '产品列表', 'product-list', '2', '0', '产品信息管理');
INSERT INTO `power_item_business` VALUES ('14', '录入产品', 'product-list!edit', '2', '0', '产品信息管理');
INSERT INTO `power_item_business` VALUES ('15', '竞标管理', 'bidding-list', '3', '0', '竞标管理');
INSERT INTO `power_item_business` VALUES ('16', '角色列表', 'role-list', '4', '0', '角色管理');
INSERT INTO `power_item_business` VALUES ('17', '录入角色', 'role-list!edit', '4', '0', '角色管理');
INSERT INTO `power_item_business` VALUES ('18', '待确认订单', 'order-form!execute1', '5', '0', '订单管理');
INSERT INTO `power_item_business` VALUES ('19', '待发货订单', 'order-form!execute2', '5', '0', '订单管理');
INSERT INTO `power_item_business` VALUES ('20', '待确认货到订单', 'order-form!execute3', '5', '0', '订单管理');
INSERT INTO `power_item_business` VALUES ('21', '待支付订单', 'order-form!execute4', '5', '0', '订单管理');
INSERT INTO `power_item_business` VALUES ('22', '完成订单', 'order-form!execute5', '5', '0', '订单管理');
INSERT INTO `power_item_business` VALUES ('23', '作废订单', 'order-form!execute6', '5', '0', '订单管理');
INSERT INTO `power_item_business` VALUES ('24', '反馈管理', 'feedback-list', '6', '0', '信息反馈');
INSERT INTO `power_item_business` VALUES ('25', '反馈信息', 'feedback-list!edit', '6', '0', '信息反馈');

-- ----------------------------
-- Table structure for power_item_gov
-- ----------------------------
DROP TABLE IF EXISTS `power_item_gov`;
CREATE TABLE `power_item_gov` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `NAME` varchar(50) DEFAULT NULL COMMENT '功能点名称',
  `URL` varchar(100) DEFAULT NULL COMMENT '管理地址',
  `PID` int(11) DEFAULT '0' COMMENT '父级功能点ID',
  `LOCK_STATUS` int(11) DEFAULT '0' COMMENT '锁定状态,0:开放,1:锁定',
  `PNAME` varchar(50) DEFAULT NULL COMMENT '上级功能点名称',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='采购单位后台功能点';

-- ----------------------------
-- Records of power_item_gov
-- ----------------------------
INSERT INTO `power_item_gov` VALUES ('1', '系统管理', '', '-1', '0', '');
INSERT INTO `power_item_gov` VALUES ('2', '竞标管理', '', '-1', '0', '');
INSERT INTO `power_item_gov` VALUES ('3', '角色管理', '', '-1', '0', '');
INSERT INTO `power_item_gov` VALUES ('4', '工作动态管理', '', '-1', '0', '');
INSERT INTO `power_item_gov` VALUES ('5', '订单管理', '', '-1', '0', '');
INSERT INTO `power_item_gov` VALUES ('6', '信息反馈', '', '-1', '0', '');
INSERT INTO `power_item_gov` VALUES ('7', '资料维护', 'self-admin', '1', '0', '系统管理');
INSERT INTO `power_item_gov` VALUES ('8', '密码修改', 'midify-password', '1', '0', '系统管理');
INSERT INTO `power_item_gov` VALUES ('9', '帐号管理', 'accounts-list', '1', '0', '系统管理');
INSERT INTO `power_item_gov` VALUES ('10', '录入帐号', 'accounts-list!edit', '1', '0', '系统管理');
INSERT INTO `power_item_gov` VALUES ('11', '标书管理', 'bidding-list', '2', '0', '竞标管理');
INSERT INTO `power_item_gov` VALUES ('12', '录入标书', 'bidding-list!edit', '2', '0', '竞标管理');
INSERT INTO `power_item_gov` VALUES ('13', '角色列表', 'role-list', '3', '0', '角色管理');
INSERT INTO `power_item_gov` VALUES ('14', '录入角色', 'role-list!edit', '3', '0', '角色管理');
INSERT INTO `power_item_gov` VALUES ('15', '动态列表', 'worktrends-list', '4', '0', '工作动态管理');
INSERT INTO `power_item_gov` VALUES ('16', '录入动态', 'worktrends-list!edit', '4', '0', '工作动态管理');
INSERT INTO `power_item_gov` VALUES ('17', '待发送订单', 'order-form!execute0', '5', '0', '订单管理');
INSERT INTO `power_item_gov` VALUES ('18', '待确认订单', 'order-form!execute1', '5', '0', '订单管理');
INSERT INTO `power_item_gov` VALUES ('19', '待发货订单', 'order-form!execute2', '5', '0', '订单管理');
INSERT INTO `power_item_gov` VALUES ('20', '待确认货到订单', 'order-form!execute3', '5', '0', '订单管理');
INSERT INTO `power_item_gov` VALUES ('21', '待支付订单', 'order-form!execute4', '5', '0', '订单管理');
INSERT INTO `power_item_gov` VALUES ('22', '完成订单', 'order-form!execute5', '5', '0', '订单管理');
INSERT INTO `power_item_gov` VALUES ('23', '作废订单', 'order-form!execute6', '5', '0', '订单管理');
INSERT INTO `power_item_gov` VALUES ('24', '信息发聩', 'feedback-list', '6', '0', '信息反馈');
INSERT INTO `power_item_gov` VALUES ('25', '我要反馈', 'feedback-list!edit', '6', '0', '信息反馈');
INSERT INTO `power_item_gov` VALUES ('26', '注销', 'logon-off', '1', '0', '系统管理');

-- ----------------------------
-- Table structure for product_category
-- ----------------------------
DROP TABLE IF EXISTS `product_category`;
CREATE TABLE `product_category` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `NAME` varchar(50) DEFAULT NULL COMMENT '分类名称',
  `PID` int(11) DEFAULT '0' COMMENT '父级分类ID',
  `PNAME` varchar(50) DEFAULT NULL COMMENT '父级分类名称',
  `SAVE_TEXT` varchar(200) DEFAULT NULL COMMENT '存储序列',
  `LOCK_STATUS` int(11) DEFAULT '0' COMMENT '锁定状态,0:开放,1:锁定',
  `REMARK` text COMMENT '备注',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='产品分类信息表';

-- ----------------------------
-- Records of product_category
-- ----------------------------
INSERT INTO `product_category` VALUES ('1', '服饰', '-1', '', '服饰', '0', '无		');
INSERT INTO `product_category` VALUES ('2', '儿童装', '1', '服饰', '服饰/儿童装', '0', '无');
INSERT INTO `product_category` VALUES ('3', '小裤子', '2', '儿童装', '服饰/儿童装/小裤子', '0', '无');
INSERT INTO `product_category` VALUES ('4', 'IT', '-1', '', 'IT', '0', '无');
INSERT INTO `product_category` VALUES ('5', '建材', '-1', '', '建材', '0', '无');
INSERT INTO `product_category` VALUES ('6', '软件', '4', 'IT', 'IT/软件', '0', '无');
INSERT INTO `product_category` VALUES ('7', '办公软件', '6', '软件', 'IT/软件/办公软件', '0', '无');
INSERT INTO `product_category` VALUES ('8', '杀毒软件', '6', '软件', 'IT/软件/杀毒软件', '0', '无');
INSERT INTO `product_category` VALUES ('9', '家具家私', '-1', '', '家具家私', '0', '无 ');
INSERT INTO `product_category` VALUES ('10', '国内家私', '9', '家具家私', '家具家私/国内家私', '0', '无');

-- ----------------------------
-- Table structure for product_info
-- ----------------------------
DROP TABLE IF EXISTS `product_info`;
CREATE TABLE `product_info` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `BUSINESS_ID` int(11) DEFAULT NULL COMMENT '企业ID',
  `TITLE` varchar(100) DEFAULT NULL COMMENT '产品名称',
  `PRODUCT_CATEGORY_ID` int(11) DEFAULT NULL COMMENT '产品分类ID',
  `PRODUCT_PIC` varchar(100) DEFAULT NULL COMMENT '产品图片',
  `INTRODUCE` text COMMENT '产品介绍',
  `TIP_DESC` varchar(200) DEFAULT NULL COMMENT '简单描述',
  `SEARCH_KEYWORDS` varchar(100) DEFAULT NULL COMMENT '关键字',
  `PRICE` double DEFAULT '0' COMMENT '单价',
  `SAVE_TIME` datetime DEFAULT NULL COMMENT '保存时间',
  `LOCK_STATUS` int(11) DEFAULT '0' COMMENT '锁定状态,0:开放,1:锁定',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='产品信息表';

-- ----------------------------
-- Records of product_info
-- ----------------------------

-- ----------------------------
-- Table structure for product_pic
-- ----------------------------
DROP TABLE IF EXISTS `product_pic`;
CREATE TABLE `product_pic` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `PRODUCT_ID` int(11) DEFAULT NULL COMMENT '产品ID',
  `PIC_SAVE_NAME` varchar(50) DEFAULT NULL COMMENT '保存名称',
  `PIC_OLD_NAME` varchar(100) DEFAULT NULL COMMENT '原始名称',
  `PIC_SIZE` int(11) DEFAULT NULL COMMENT '图片大小',
  `SAVE_TIME` datetime DEFAULT NULL COMMENT '保存时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='产品图片信息表';

-- ----------------------------
-- Records of product_pic
-- ----------------------------

-- ----------------------------
-- Table structure for proecss_feedback_info
-- ----------------------------
DROP TABLE IF EXISTS `proecss_feedback_info`;
CREATE TABLE `proecss_feedback_info` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `FEEDBACK_ID` int(11) DEFAULT NULL COMMENT '反馈信息ID',
  `PROCESS_MANAGER_ID` int(11) DEFAULT NULL COMMENT '处理员ID',
  `PROCESS_CONTENT` text COMMENT '处理回复内容',
  `PROCESS_TIME` datetime DEFAULT NULL COMMENT '处理时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='反馈处理信息表';

-- ----------------------------
-- Records of proecss_feedback_info
-- ----------------------------

-- ----------------------------
-- Table structure for shopping_guide
-- ----------------------------
DROP TABLE IF EXISTS `shopping_guide`;
CREATE TABLE `shopping_guide` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `ACCOUNT_ID` int(11) DEFAULT NULL COMMENT '管理人员账号ID',
  `TITLE` varchar(200) DEFAULT NULL COMMENT '标题',
  `CONTENT` text COMMENT '内容',
  `SAVE_TIME` datetime DEFAULT NULL COMMENT '保存时间',
  `READ_TIMES` int(11) DEFAULT '0' COMMENT '阅读次数',
  `LOCK_STATUS` int(11) DEFAULT '0' COMMENT '锁定状态,0:开放,1:锁定',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='采购指南信息表';

-- ----------------------------
-- Records of shopping_guide
-- ----------------------------

-- ----------------------------
-- Table structure for site_info
-- ----------------------------
DROP TABLE IF EXISTS `site_info`;
CREATE TABLE `site_info` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `SITE_NAME` varchar(100) DEFAULT NULL COMMENT '站点名称',
  `COPNAME` varchar(100) DEFAULT NULL COMMENT '企业名称',
  `EMAIL` varchar(100) DEFAULT NULL COMMENT '企业邮箱',
  `ABOUT_US` text COMMENT '关于我们',
  `COPYRIGHT` varchar(100) DEFAULT NULL COMMENT '版权所有',
  `SERVICE_PHONE` varchar(100) DEFAULT NULL COMMENT '客服电话',
  `FAX` varchar(100) DEFAULT NULL COMMENT '传真号码',
  `ADDRESS` varchar(200) DEFAULT NULL COMMENT '地址',
  `POSTAL_CODE` varchar(6) DEFAULT NULL COMMENT '邮政编码',
  `WEB_URL` varchar(100) DEFAULT NULL COMMENT '网址',
  `REMARK` text COMMENT '备注',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='站点信息表';

-- ----------------------------
-- Records of site_info
-- ----------------------------
INSERT INTO `site_info` VALUES ('1', '政府采购网', null, null, '政府采购是一个B2G模式的商业采购平台，政府参与。。。<br/>\r\n政府采购是一个B2G模式的商业采购平台，政府参与。。。<br/>\r\n政府采购是一个B2G模式的商业采购平台，政府参与。。。<br/>\r\n政府采购是一个B2G模式的商业采购平台，政府参与。。。<br/>\r\n政府采购是一个B2G模式的商业采购平台，政府参与。。。<br/>\r\n政府采购是一个B2G模式的商业采购平台，政府参与。。。<br/>\r\n政府采购是一个B2G模式的商业采购平台，政府参与。。。<br/>', null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for work_trends
-- ----------------------------
DROP TABLE IF EXISTS `work_trends`;
CREATE TABLE `work_trends` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `GOV_ID` int(11) DEFAULT NULL COMMENT '采购单位ID',
  `GOV_ACCOUNT_ID` int(11) DEFAULT NULL COMMENT '采购单信息管理账号ID',
  `TITLE` varchar(200) DEFAULT NULL COMMENT '标题',
  `CONTENT` text COMMENT '内容',
  `SAVE_TIME` datetime DEFAULT NULL COMMENT '保存时间',
  `READ_TIMES` int(11) DEFAULT '0' COMMENT '阅读次数',
  `LOCK_STATUS` int(11) DEFAULT '0' COMMENT '锁定状态,0:开放,1:锁定',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='工作动态';

-- ----------------------------
-- Records of work_trends
-- ----------------------------

-- ----------------------------
-- Table structure for work_trends_files
-- ----------------------------
DROP TABLE IF EXISTS `work_trends_files`;
CREATE TABLE `work_trends_files` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `WORK_TRENDS_ID` int(11) DEFAULT NULL COMMENT '工作动态ID',
  `PIC_SAVE_NAME` varchar(50) DEFAULT NULL COMMENT '保存名称',
  `PIC_OLD_NAME` varchar(100) DEFAULT NULL COMMENT '原始名称',
  `PIC_SIZE` int(11) DEFAULT NULL COMMENT '图片大小',
  `CATEGORY_ID` int(11) DEFAULT NULL COMMENT '图片分类',
  `SAVE_TIME` datetime DEFAULT NULL COMMENT '保存时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='工作动态附件';

-- ----------------------------
-- Records of work_trends_files
-- ----------------------------
