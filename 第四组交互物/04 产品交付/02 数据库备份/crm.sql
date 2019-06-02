/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50562
Source Host           : localhost:3306
Source Database       : crm

Target Server Type    : MYSQL
Target Server Version : 50562
File Encoding         : 65001

Date: 2019-06-02 14:41:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `bm`
-- ----------------------------
DROP TABLE IF EXISTS `bm`;
CREATE TABLE `bm` (
  `bid` int(10) NOT NULL AUTO_INCREMENT,
  `bm` varchar(256) DEFAULT NULL,
  `bmxx` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bm
-- ----------------------------
INSERT INTO `bm` VALUES ('0', '技术部', null);
INSERT INTO `bm` VALUES ('1', '人事部', null);
INSERT INTO `bm` VALUES ('2', '财务部', null);
INSERT INTO `bm` VALUES ('3', '运行部', null);
INSERT INTO `bm` VALUES ('4', 'CEO', '哈哈哈哈');

-- ----------------------------
-- Table structure for `first_menu`
-- ----------------------------
DROP TABLE IF EXISTS `first_menu`;
CREATE TABLE `first_menu` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of first_menu
-- ----------------------------
INSERT INTO `first_menu` VALUES ('1', '人员管理');
INSERT INTO `first_menu` VALUES ('2', '职位管理');
INSERT INTO `first_menu` VALUES ('3', '用户管理');
INSERT INTO `first_menu` VALUES ('4', '部门管理');
INSERT INTO `first_menu` VALUES ('5', '公告管理');

-- ----------------------------
-- Table structure for `gg`
-- ----------------------------
DROP TABLE IF EXISTS `gg`;
CREATE TABLE `gg` (
  `gid` int(10) NOT NULL AUTO_INCREMENT,
  `ggmc` varchar(256) DEFAULT NULL,
  `ggnr` varchar(10000) DEFAULT NULL,
  `cjsj` varchar(256) DEFAULT NULL,
  `ggr` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gg
-- ----------------------------
INSERT INTO `gg` VALUES ('1', '哈哈', '哈哈哈哈哈哈', '2019-05-26 11:04:53', '吴永攀');
INSERT INTO `gg` VALUES ('2', '中国', '中中中中国国国国', '2019-05-26 15:20:43', '吴永攀');
INSERT INTO `gg` VALUES ('3', '美国', '中中中中国国设计师计算机睡觉觉', '2019-05-26 15:21:30', '吴永攀');
INSERT INTO `gg` VALUES ('4', '中国', '中中妹妹诶可是看到酷酷的', '2019-05-26 15:22:24', '吴永攀');
INSERT INTO `gg` VALUES ('5', '中国', '中国强大', '2019-05-30 14:31:45', '吴永攀');

-- ----------------------------
-- Table structure for `second_menu`
-- ----------------------------
DROP TABLE IF EXISTS `second_menu`;
CREATE TABLE `second_menu` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `sname` varchar(255) DEFAULT NULL,
  `spath` varchar(255) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of second_menu
-- ----------------------------
INSERT INTO `second_menu` VALUES ('2', '员工信息', 'ygxx.jsp', '1');
INSERT INTO `second_menu` VALUES ('3', '添加职位', 'tjzw.jsp', '2');
INSERT INTO `second_menu` VALUES ('4', '职位查询', 'zwcx.jsp', '2');
INSERT INTO `second_menu` VALUES ('5', '用户查询', 'yhcx.jsp', '3');
INSERT INTO `second_menu` VALUES ('6', '添加用户', 'tjyh.jsp', '3');
INSERT INTO `second_menu` VALUES ('7', '添加部门', 'tjbm.jsp', '4');
INSERT INTO `second_menu` VALUES ('8', '部门查询', 'bmcx.jsp', '4');
INSERT INTO `second_menu` VALUES ('9', '公告查询', 'ggcx.jsp', '5');
INSERT INTO `second_menu` VALUES ('10', '添加公告', 'tjgg.jsp', '5');
INSERT INTO `second_menu` VALUES ('11', '文档查询', 'wdcx.jsp', '6');
INSERT INTO `second_menu` VALUES ('12', '上传文档', 'scwd.jsp', '6');
INSERT INTO `second_menu` VALUES ('13', '添加员工', 'tjyg.jsp', '1');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `xm` varchar(10) DEFAULT NULL,
  `zh` varchar(30) DEFAULT NULL,
  `mm` varchar(30) DEFAULT NULL,
  `zt` int(10) DEFAULT NULL,
  `rq` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('5', '吴永攀', '吴永攀', '123', null, null);
INSERT INTO `user` VALUES ('6', '杨鑫', '杨鑫', '123', null, null);
INSERT INTO `user` VALUES ('7', '孙腾飞', '孙腾飞', '123', null, null);
INSERT INTO `user` VALUES ('8', '陈富银', '陈富银', '123', null, null);
INSERT INTO `user` VALUES ('9', '攀攀', '攀攀', '123', '1', '2019-05-30 14:29:02');
INSERT INTO `user` VALUES ('10', '攀攀', '666', '555', null, null);

-- ----------------------------
-- Table structure for `yg`
-- ----------------------------
DROP TABLE IF EXISTS `yg`;
CREATE TABLE `yg` (
  `yid` int(10) NOT NULL AUTO_INCREMENT,
  `xm` varchar(256) DEFAULT NULL,
  `sfzh` varchar(256) DEFAULT NULL,
  `xb` varchar(256) DEFAULT NULL,
  `zy` varchar(256) DEFAULT NULL,
  `xl` varchar(256) DEFAULT NULL,
  `yx` varchar(256) DEFAULT NULL,
  `sj` varchar(256) DEFAULT NULL,
  `dh` varchar(256) DEFAULT NULL,
  `zzmm` varchar(256) DEFAULT NULL,
  `qq` varchar(256) DEFAULT NULL,
  `dz` varchar(256) DEFAULT NULL,
  `yb` varchar(256) DEFAULT NULL,
  `birth` varchar(256) DEFAULT NULL,
  `mz` varchar(256) DEFAULT NULL,
  `sxzy` varchar(256) DEFAULT NULL,
  `ah` varchar(256) DEFAULT NULL,
  `bz` varchar(256) DEFAULT NULL,
  `bid` int(10) DEFAULT NULL,
  PRIMARY KEY (`yid`),
  KEY `bid` (`bid`),
  CONSTRAINT `yg_ibfk_1` FOREIGN KEY (`bid`) REFERENCES `bm` (`bid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yg
-- ----------------------------
INSERT INTO `yg` VALUES ('1', '吴永攀', '500384199709', '男', '0', '本科', '2457834490@qq.ocm', '18315157591', '8888', '党员', '2457834490', '重庆', '408400', '1997821', '汉', '软件工程', '篮球', '号的', '1');
INSERT INTO `yg` VALUES ('2', '田桐', '500384199709', '男', '1', '本科', '2457834490@qq.ocm', '18315157591', '8888', '党员', '2457834490', '重庆', '408400', '1997821', '汉', '软件工程', '篮球', '号的', '0');
INSERT INTO `yg` VALUES ('3', '陈富银', '50000', '男', '2', '大学', '2457834490@qq.ocm', '18315157591', '8888', '党员', '2457834490', '重庆', '408400', '1997821', '汉', '软件工程', '篮球', 'sss', '1');
INSERT INTO `yg` VALUES ('5', '徐聪', '520', '男', '1', '520', '520', '520', '520', '520', '520', '520', '520', '520', '520', '520', '520', '520', '0');
INSERT INTO `yg` VALUES ('6', '姚佳兵', '000', '男', '1', '000', '000', '000', '000', '团员', '2222', '000', '000', '000', '汉', '软件工程', '篮球', '000', '0');
INSERT INTO `yg` VALUES ('7', '张渊博', '500000', '男', '1', '本科', '2457834490@qq.ocm', '18315157591', '1110', '团员', '555555555', '重庆', '408400', '1997821', '汉', '软件工程', '打游戏', '无', '0');

-- ----------------------------
-- Table structure for `zw`
-- ----------------------------
DROP TABLE IF EXISTS `zw`;
CREATE TABLE `zw` (
  `zid` int(10) NOT NULL AUTO_INCREMENT,
  `zwmc` varchar(256) DEFAULT NULL,
  `xxxx` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`zid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zw
-- ----------------------------
INSERT INTO `zw` VALUES ('1', '程序员', '工资低');
INSERT INTO `zw` VALUES ('2', '高级工程师', '工资低，头发少');
INSERT INTO `zw` VALUES ('3', '技术部2', '技术部2');
