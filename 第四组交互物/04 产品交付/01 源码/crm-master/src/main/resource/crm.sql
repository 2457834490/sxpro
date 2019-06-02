/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50562
Source Host           : localhost:3306
Source Database       : crm

Target Server Type    : MYSQL
Target Server Version : 50562
File Encoding         : 65001

Date: 2019-05-21 20:44:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `first_menu`
-- ----------------------------
DROP TABLE IF EXISTS `first_menu`;
CREATE TABLE `first_menu` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of first_menu
-- ----------------------------
INSERT INTO `first_menu` VALUES ('1', '人员管理');
INSERT INTO `first_menu` VALUES ('2', '薪酬管理');

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of second_menu
-- ----------------------------
INSERT INTO `second_menu` VALUES ('1', '员工考勤', 'ygkq.jsp', '1');
INSERT INTO `second_menu` VALUES ('2', '员工信息', 'ygxx.jsp', '1');
INSERT INTO `second_menu` VALUES ('3', '月度季报', 'ydjb.jsp', '2');
INSERT INTO `second_menu` VALUES ('4', '年度考核', 'ndkh.jsp', '2');
