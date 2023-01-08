/*
Navicat MySQL Data Transfer

Source Server         : spring5_jdbc
Source Server Version : 50737
Source Host           : 192.168.83.161:3306
Source Database       : nba

Target Server Type    : MYSQL
Target Server Version : 50737
File Encoding         : 65001

Date: 2023-01-08 16:36:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `field`
-- ----------------------------
DROP TABLE IF EXISTS `field`;
CREATE TABLE `field` (
  `field_id` int(10) NOT NULL,
  `field_name` varchar(20) NOT NULL,
  `field_short` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`field_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of field
-- ----------------------------
INSERT INTO `field` VALUES ('1', '标靶中心球馆', null);
INSERT INTO `field` VALUES ('2', '国家农业球馆	', null);
INSERT INTO `field` VALUES ('3', '赛复赛', null);
INSERT INTO `field` VALUES ('4', 'qwerqwqe', null);

-- ----------------------------
-- Table structure for `registration`
-- ----------------------------
DROP TABLE IF EXISTS `registration`;
CREATE TABLE `registration` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `team_name` varchar(255) NOT NULL,
  `stadium` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `coach` varchar(255) NOT NULL,
  `general_manager` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `team_union` varchar(255) NOT NULL,
  `division` varchar(255) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `registration_date` varchar(30) NOT NULL,
  `registration_power` int(1) unsigned zerofill NOT NULL DEFAULT '0',
  `check_date` varchar(30) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of registration
-- ----------------------------
INSERT INTO `registration` VALUES ('34', 'sdfsdfs', 'sdfsdf', 'sdfsdf', 'sdfsdf', 'sdfsd', 'sdfsdf', '东部联盟', '东部联盟', 'sdfsdfsdf', '2022-05-19 14:25:52', '1', '2022-05-19 14:25:58', '5');
INSERT INTO `registration` VALUES ('35', 'sdfsdfsd', 'sdfsdsdfd', 'sdfsdfd', 'sdfsdfd', 'sdfsdf', 'sdfsdf', '东部联盟', '西部联盟', '234234233423', '2022-05-19 19:54:28', '1', '2022-05-19 19:54:54', '5');
INSERT INTO `registration` VALUES ('36', 'hghjghjgjh', 'yyggy', 'dfgdf`', 'rgdfg1', 'fdgdfg', 'dfgdfg', '东部联盟', '西部联盟', '12345678467', '2022-05-25 18:29:47', '1', '2022-05-25 18:30:49', '5');

-- ----------------------------
-- Table structure for `scedule`
-- ----------------------------
DROP TABLE IF EXISTS `scedule`;
CREATE TABLE `scedule` (
  `match_id` int(11) NOT NULL AUTO_INCREMENT,
  `team_name` varchar(45) NOT NULL,
  `date_time` varchar(45) DEFAULT NULL,
  `opponent` varchar(45) DEFAULT NULL,
  `result` varchar(45) DEFAULT NULL,
  `scores` varchar(45) DEFAULT NULL,
  `site` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`match_id`)
) ENGINE=InnoDB AUTO_INCREMENT=544 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of scedule
-- ----------------------------
INSERT INTO `scedule` VALUES ('1', '华盛顿奇才', null, 'hghjghjgjh', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('2', '夏洛特黄蜂', null, 'sdfsdfsd', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('3', '亚特兰大老鹰', null, 'sdfsdfs', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('4', '迈阿密热火', null, '萨克拉门托国王', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('5', '奥兰多魔术', null, '菲尼克斯太阳', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('6', '纽约尼克斯', null, '洛杉矶快船', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('7', '费城76人', null, '洛杉矶湖人', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('8', '布鲁克林篮网', null, '金州勇士', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('9', '波士顿凯尔特人', null, '达拉斯独行侠', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('10', '多伦多猛龙', null, '圣安东尼奥马刺', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('11', '芝加哥公牛', null, '新奥尔良鹈鹕', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('12', '克利夫兰骑士', null, '休斯顿火箭', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('13', '印第安纳步行者', null, '孟菲斯灰熊', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('14', '底特律活塞', null, '丹佛掘金', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('15', '密尔沃基雄鹿', null, '波特兰开拓者', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('16', '明尼苏达森林狼', null, '俄克拉荷马城雷霆', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('17', '华盛顿奇才', null, 'hghjghjgjh', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('18', '夏洛特黄蜂', null, 'sdfsdfsd', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('19', '亚特兰大老鹰', null, 'sdfsdfs', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('20', '迈阿密热火', null, '萨克拉门托国王', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('21', '奥兰多魔术', null, '菲尼克斯太阳', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('22', '纽约尼克斯', null, '洛杉矶快船', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('23', '费城76人', null, '洛杉矶湖人', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('24', '布鲁克林篮网', null, '金州勇士', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('25', '波士顿凯尔特人', null, '达拉斯独行侠', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('26', '多伦多猛龙', null, '圣安东尼奥马刺', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('27', '芝加哥公牛', null, '新奥尔良鹈鹕', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('28', '克利夫兰骑士', null, '休斯顿火箭', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('29', '印第安纳步行者', null, '孟菲斯灰熊', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('30', '底特律活塞', null, '丹佛掘金', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('31', '密尔沃基雄鹿', null, '波特兰开拓者', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('32', '明尼苏达森林狼', null, '俄克拉荷马城雷霆', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('33', '华盛顿奇才', null, 'hghjghjgjh', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('34', '夏洛特黄蜂', null, 'sdfsdfsd', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('35', '亚特兰大老鹰', null, 'sdfsdfs', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('36', '迈阿密热火', null, '萨克拉门托国王', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('37', '奥兰多魔术', null, '菲尼克斯太阳', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('38', '纽约尼克斯', null, '洛杉矶快船', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('39', '费城76人', null, '洛杉矶湖人', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('40', '布鲁克林篮网', null, '金州勇士', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('41', '波士顿凯尔特人', null, '达拉斯独行侠', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('42', '多伦多猛龙', null, '圣安东尼奥马刺', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('43', '芝加哥公牛', null, '新奥尔良鹈鹕', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('44', '克利夫兰骑士', null, '休斯顿火箭', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('45', '印第安纳步行者', null, '孟菲斯灰熊', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('46', '底特律活塞', null, '丹佛掘金', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('47', '密尔沃基雄鹿', null, '波特兰开拓者', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('48', '明尼苏达森林狼', null, '俄克拉荷马城雷霆', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('49', '华盛顿奇才', null, 'hghjghjgjh', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('50', '夏洛特黄蜂', null, 'sdfsdfsd', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('51', '亚特兰大老鹰', null, 'sdfsdfs', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('52', '迈阿密热火', null, '萨克拉门托国王', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('53', '奥兰多魔术', null, '菲尼克斯太阳', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('54', '纽约尼克斯', null, '洛杉矶快船', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('55', '费城76人', null, '洛杉矶湖人', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('56', '布鲁克林篮网', null, '金州勇士', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('57', '波士顿凯尔特人', null, '达拉斯独行侠', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('58', '多伦多猛龙', null, '圣安东尼奥马刺', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('59', '芝加哥公牛', null, '新奥尔良鹈鹕', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('60', '克利夫兰骑士', null, '休斯顿火箭', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('61', '印第安纳步行者', null, '孟菲斯灰熊', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('62', '底特律活塞', null, '丹佛掘金', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('63', '密尔沃基雄鹿', null, '波特兰开拓者', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('64', '明尼苏达森林狼', null, '俄克拉荷马城雷霆', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('65', '华盛顿奇才', null, 'hghjghjgjh', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('66', '夏洛特黄蜂', null, 'sdfsdfsd', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('67', '亚特兰大老鹰', null, 'sdfsdfs', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('68', '迈阿密热火', null, '萨克拉门托国王', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('69', '奥兰多魔术', null, '菲尼克斯太阳', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('70', '纽约尼克斯', null, '洛杉矶快船', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('71', '费城76人', null, '洛杉矶湖人', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('72', '布鲁克林篮网', null, '金州勇士', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('73', '波士顿凯尔特人', null, '达拉斯独行侠', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('74', '多伦多猛龙', null, '圣安东尼奥马刺', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('75', '芝加哥公牛', null, '新奥尔良鹈鹕', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('76', '克利夫兰骑士', null, '休斯顿火箭', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('77', '印第安纳步行者', null, '孟菲斯灰熊', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('78', '底特律活塞', null, '丹佛掘金', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('79', '密尔沃基雄鹿', null, '波特兰开拓者', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('80', '明尼苏达森林狼', null, '俄克拉荷马城雷霆', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('81', '华盛顿奇才', null, 'hghjghjgjh', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('82', '夏洛特黄蜂', null, 'sdfsdfsd', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('83', '亚特兰大老鹰', null, 'sdfsdfs', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('84', '迈阿密热火', null, '萨克拉门托国王', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('85', '奥兰多魔术', null, '菲尼克斯太阳', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('86', '纽约尼克斯', null, '洛杉矶快船', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('87', '费城76人', null, '洛杉矶湖人', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('88', '布鲁克林篮网', null, '金州勇士', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('89', '波士顿凯尔特人', null, '达拉斯独行侠', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('90', '多伦多猛龙', null, '圣安东尼奥马刺', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('91', '芝加哥公牛', null, '新奥尔良鹈鹕', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('92', '克利夫兰骑士', null, '休斯顿火箭', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('93', '印第安纳步行者', null, '孟菲斯灰熊', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('94', '底特律活塞', null, '丹佛掘金', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('95', '密尔沃基雄鹿', null, '波特兰开拓者', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('96', '明尼苏达森林狼', null, '俄克拉荷马城雷霆', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('97', '华盛顿奇才', null, 'hghjghjgjh', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('98', '夏洛特黄蜂', null, 'sdfsdfsd', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('99', '亚特兰大老鹰', null, 'sdfsdfs', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('100', '迈阿密热火', null, '萨克拉门托国王', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('101', '奥兰多魔术', null, '菲尼克斯太阳', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('102', '纽约尼克斯', null, '洛杉矶快船', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('103', '费城76人', null, '洛杉矶湖人', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('104', '布鲁克林篮网', null, '金州勇士', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('105', '波士顿凯尔特人', null, '达拉斯独行侠', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('106', '多伦多猛龙', null, '圣安东尼奥马刺', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('107', '芝加哥公牛', null, '新奥尔良鹈鹕', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('108', '克利夫兰骑士', null, '休斯顿火箭', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('109', '印第安纳步行者', null, '孟菲斯灰熊', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('110', '底特律活塞', null, '丹佛掘金', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('111', '密尔沃基雄鹿', null, '波特兰开拓者', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('112', '明尼苏达森林狼', null, '俄克拉荷马城雷霆', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('113', '华盛顿奇才', null, 'hghjghjgjh', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('114', '夏洛特黄蜂', null, 'sdfsdfsd', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('115', '亚特兰大老鹰', null, 'sdfsdfs', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('116', '迈阿密热火', null, '萨克拉门托国王', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('117', '奥兰多魔术', null, '菲尼克斯太阳', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('118', '纽约尼克斯', null, '洛杉矶快船', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('119', '费城76人', null, '洛杉矶湖人', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('120', '布鲁克林篮网', null, '金州勇士', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('121', '波士顿凯尔特人', null, '达拉斯独行侠', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('122', '多伦多猛龙', null, '圣安东尼奥马刺', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('123', '芝加哥公牛', null, '新奥尔良鹈鹕', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('124', '克利夫兰骑士', null, '休斯顿火箭', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('125', '印第安纳步行者', null, '孟菲斯灰熊', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('126', '底特律活塞', null, '丹佛掘金', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('127', '密尔沃基雄鹿', null, '波特兰开拓者', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('128', '明尼苏达森林狼', null, '俄克拉荷马城雷霆', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('129', '华盛顿奇才', null, 'hghjghjgjh', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('130', '夏洛特黄蜂', null, 'sdfsdfsd', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('131', '亚特兰大老鹰', null, 'sdfsdfs', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('132', '迈阿密热火', null, '萨克拉门托国王', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('133', '奥兰多魔术', null, '菲尼克斯太阳', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('134', '纽约尼克斯', null, '洛杉矶快船', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('135', '费城76人', null, '洛杉矶湖人', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('136', '布鲁克林篮网', null, '金州勇士', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('137', '波士顿凯尔特人', null, '达拉斯独行侠', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('138', '多伦多猛龙', null, '圣安东尼奥马刺', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('139', '芝加哥公牛', null, '新奥尔良鹈鹕', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('140', '克利夫兰骑士', null, '休斯顿火箭', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('141', '印第安纳步行者', null, '孟菲斯灰熊', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('142', '底特律活塞', null, '丹佛掘金', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('143', '密尔沃基雄鹿', null, '波特兰开拓者', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('144', '明尼苏达森林狼', null, '俄克拉荷马城雷霆', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('145', '华盛顿奇才', null, 'hghjghjgjh', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('146', '夏洛特黄蜂', null, 'sdfsdfsd', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('147', '亚特兰大老鹰', null, 'sdfsdfs', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('148', '迈阿密热火', null, '萨克拉门托国王', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('149', '奥兰多魔术', null, '菲尼克斯太阳', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('150', '纽约尼克斯', null, '洛杉矶快船', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('151', '费城76人', null, '洛杉矶湖人', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('152', '布鲁克林篮网', null, '金州勇士', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('153', '波士顿凯尔特人', null, '达拉斯独行侠', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('154', '多伦多猛龙', null, '圣安东尼奥马刺', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('155', '芝加哥公牛', null, '新奥尔良鹈鹕', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('156', '克利夫兰骑士', null, '休斯顿火箭', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('157', '印第安纳步行者', null, '孟菲斯灰熊', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('158', '底特律活塞', null, '丹佛掘金', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('159', '密尔沃基雄鹿', null, '波特兰开拓者', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('160', '明尼苏达森林狼', null, '俄克拉荷马城雷霆', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('161', '华盛顿奇才', null, 'hghjghjgjh', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('162', '夏洛特黄蜂', null, 'sdfsdfsd', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('163', '亚特兰大老鹰', null, 'sdfsdfs', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('164', '迈阿密热火', null, '萨克拉门托国王', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('165', '奥兰多魔术', null, '菲尼克斯太阳', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('166', '纽约尼克斯', null, '洛杉矶快船', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('167', '费城76人', null, '洛杉矶湖人', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('168', '布鲁克林篮网', null, '金州勇士', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('169', '波士顿凯尔特人', null, '达拉斯独行侠', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('170', '多伦多猛龙', null, '圣安东尼奥马刺', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('171', '芝加哥公牛', null, '新奥尔良鹈鹕', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('172', '克利夫兰骑士', null, '休斯顿火箭', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('173', '印第安纳步行者', null, '孟菲斯灰熊', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('174', '底特律活塞', null, '丹佛掘金', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('175', '密尔沃基雄鹿', null, '波特兰开拓者', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('176', '明尼苏达森林狼', null, '俄克拉荷马城雷霆', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('177', '华盛顿奇才', null, 'hghjghjgjh', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('178', '夏洛特黄蜂', null, 'sdfsdfsd', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('179', '亚特兰大老鹰', null, 'sdfsdfs', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('180', '迈阿密热火', null, '萨克拉门托国王', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('181', '奥兰多魔术', null, '菲尼克斯太阳', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('182', '纽约尼克斯', null, '洛杉矶快船', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('183', '费城76人', null, '洛杉矶湖人', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('184', '布鲁克林篮网', null, '金州勇士', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('185', '波士顿凯尔特人', null, '达拉斯独行侠', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('186', '多伦多猛龙', null, '圣安东尼奥马刺', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('187', '芝加哥公牛', null, '新奥尔良鹈鹕', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('188', '克利夫兰骑士', null, '休斯顿火箭', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('189', '印第安纳步行者', null, '孟菲斯灰熊', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('190', '底特律活塞', null, '丹佛掘金', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('191', '密尔沃基雄鹿', null, '波特兰开拓者', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('192', '明尼苏达森林狼', null, '俄克拉荷马城雷霆', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('193', '华盛顿奇才', null, 'hghjghjgjh', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('194', '夏洛特黄蜂', null, 'sdfsdfsd', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('195', '亚特兰大老鹰', null, 'sdfsdfs', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('196', '迈阿密热火', null, '萨克拉门托国王', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('197', '奥兰多魔术', null, '菲尼克斯太阳', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('198', '纽约尼克斯', null, '洛杉矶快船', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('199', '费城76人', null, '洛杉矶湖人', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('200', '布鲁克林篮网', null, '金州勇士', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('201', '波士顿凯尔特人', null, '达拉斯独行侠', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('202', '多伦多猛龙', null, '圣安东尼奥马刺', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('203', '芝加哥公牛', null, '新奥尔良鹈鹕', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('204', '克利夫兰骑士', null, '休斯顿火箭', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('205', '印第安纳步行者', null, '孟菲斯灰熊', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('206', '底特律活塞', null, '丹佛掘金', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('207', '密尔沃基雄鹿', null, '波特兰开拓者', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('208', '明尼苏达森林狼', null, '俄克拉荷马城雷霆', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('209', '华盛顿奇才', null, 'hghjghjgjh', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('210', '夏洛特黄蜂', null, 'sdfsdfsd', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('211', '亚特兰大老鹰', null, 'sdfsdfs', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('212', '迈阿密热火', null, '萨克拉门托国王', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('213', '奥兰多魔术', null, '菲尼克斯太阳', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('214', '纽约尼克斯', null, '洛杉矶快船', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('215', '费城76人', null, '洛杉矶湖人', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('216', '布鲁克林篮网', null, '金州勇士', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('217', '波士顿凯尔特人', null, '达拉斯独行侠', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('218', '多伦多猛龙', null, '圣安东尼奥马刺', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('219', '芝加哥公牛', null, '新奥尔良鹈鹕', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('220', '克利夫兰骑士', null, '休斯顿火箭', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('221', '印第安纳步行者', null, '孟菲斯灰熊', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('222', '底特律活塞', null, '丹佛掘金', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('223', '密尔沃基雄鹿', null, '波特兰开拓者', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('224', '明尼苏达森林狼', null, '俄克拉荷马城雷霆', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('225', '华盛顿奇才', null, 'hghjghjgjh', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('226', '夏洛特黄蜂', null, 'sdfsdfsd', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('227', '亚特兰大老鹰', null, 'sdfsdfs', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('228', '迈阿密热火', null, '萨克拉门托国王', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('229', '奥兰多魔术', null, '菲尼克斯太阳', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('230', '纽约尼克斯', null, '洛杉矶快船', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('231', '费城76人', null, '洛杉矶湖人', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('232', '布鲁克林篮网', null, '金州勇士', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('233', '波士顿凯尔特人', null, '达拉斯独行侠', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('234', '多伦多猛龙', null, '圣安东尼奥马刺', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('235', '芝加哥公牛', null, '新奥尔良鹈鹕', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('236', '克利夫兰骑士', null, '休斯顿火箭', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('237', '印第安纳步行者', null, '孟菲斯灰熊', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('238', '底特律活塞', null, '丹佛掘金', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('239', '密尔沃基雄鹿', null, '波特兰开拓者', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('240', '明尼苏达森林狼', null, '俄克拉荷马城雷霆', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('241', '华盛顿奇才', null, 'hghjghjgjh', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('242', '夏洛特黄蜂', null, 'sdfsdfsd', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('243', '亚特兰大老鹰', null, 'sdfsdfs', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('244', '迈阿密热火', null, '萨克拉门托国王', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('245', '奥兰多魔术', null, '菲尼克斯太阳', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('246', '纽约尼克斯', null, '洛杉矶快船', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('247', '费城76人', null, '洛杉矶湖人', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('248', '布鲁克林篮网', null, '金州勇士', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('249', '波士顿凯尔特人', null, '达拉斯独行侠', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('250', '多伦多猛龙', null, '圣安东尼奥马刺', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('251', '芝加哥公牛', null, '新奥尔良鹈鹕', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('252', '克利夫兰骑士', null, '休斯顿火箭', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('253', '印第安纳步行者', null, '孟菲斯灰熊', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('254', '底特律活塞', null, '丹佛掘金', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('255', '密尔沃基雄鹿', null, '波特兰开拓者', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('256', '明尼苏达森林狼', null, '俄克拉荷马城雷霆', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('257', '华盛顿奇才', null, 'hghjghjgjh', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('258', '夏洛特黄蜂', null, 'sdfsdfsd', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('259', '亚特兰大老鹰', null, 'sdfsdfs', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('260', '迈阿密热火', null, '萨克拉门托国王', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('261', '奥兰多魔术', null, '菲尼克斯太阳', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('262', '纽约尼克斯', null, '洛杉矶快船', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('263', '费城76人', null, '洛杉矶湖人', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('264', '布鲁克林篮网', null, '金州勇士', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('265', '波士顿凯尔特人', null, '达拉斯独行侠', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('266', '多伦多猛龙', null, '圣安东尼奥马刺', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('267', '芝加哥公牛', null, '新奥尔良鹈鹕', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('268', '克利夫兰骑士', null, '休斯顿火箭', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('269', '印第安纳步行者', null, '孟菲斯灰熊', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('270', '底特律活塞', null, '丹佛掘金', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('271', '密尔沃基雄鹿', null, '波特兰开拓者', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('272', '明尼苏达森林狼', null, '俄克拉荷马城雷霆', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('273', '华盛顿奇才', null, 'hghjghjgjh', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('274', '夏洛特黄蜂', null, 'sdfsdfsd', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('275', '亚特兰大老鹰', null, 'sdfsdfs', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('276', '迈阿密热火', null, '萨克拉门托国王', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('277', '奥兰多魔术', null, '菲尼克斯太阳', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('278', '纽约尼克斯', null, '洛杉矶快船', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('279', '费城76人', null, '洛杉矶湖人', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('280', '布鲁克林篮网', null, '金州勇士', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('281', '波士顿凯尔特人', null, '达拉斯独行侠', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('282', '多伦多猛龙', null, '圣安东尼奥马刺', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('283', '芝加哥公牛', null, '新奥尔良鹈鹕', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('284', '克利夫兰骑士', null, '休斯顿火箭', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('285', '印第安纳步行者', null, '孟菲斯灰熊', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('286', '底特律活塞', null, '丹佛掘金', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('287', '密尔沃基雄鹿', null, '波特兰开拓者', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('288', '明尼苏达森林狼', null, '俄克拉荷马城雷霆', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('289', '华盛顿奇才', null, 'hghjghjgjh', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('290', '夏洛特黄蜂', null, 'sdfsdfsd', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('291', '亚特兰大老鹰', null, 'sdfsdfs', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('292', '迈阿密热火', null, '萨克拉门托国王', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('293', '奥兰多魔术', null, '菲尼克斯太阳', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('294', '纽约尼克斯', null, '洛杉矶快船', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('295', '费城76人', null, '洛杉矶湖人', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('296', '布鲁克林篮网', null, '金州勇士', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('297', '波士顿凯尔特人', null, '达拉斯独行侠', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('298', '多伦多猛龙', null, '圣安东尼奥马刺', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('299', '芝加哥公牛', null, '新奥尔良鹈鹕', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('300', '克利夫兰骑士', null, '休斯顿火箭', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('301', '印第安纳步行者', null, '孟菲斯灰熊', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('302', '底特律活塞', null, '丹佛掘金', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('303', '密尔沃基雄鹿', null, '波特兰开拓者', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('304', '明尼苏达森林狼', null, '俄克拉荷马城雷霆', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('305', '华盛顿奇才', null, 'hghjghjgjh', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('306', '夏洛特黄蜂', null, 'sdfsdfsd', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('307', '亚特兰大老鹰', null, 'sdfsdfs', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('308', '迈阿密热火', null, '萨克拉门托国王', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('309', '奥兰多魔术', null, '菲尼克斯太阳', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('310', '纽约尼克斯', null, '洛杉矶快船', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('311', '费城76人', null, '洛杉矶湖人', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('312', '布鲁克林篮网', null, '金州勇士', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('313', '波士顿凯尔特人', null, '达拉斯独行侠', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('314', '多伦多猛龙', null, '圣安东尼奥马刺', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('315', '芝加哥公牛', null, '新奥尔良鹈鹕', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('316', '克利夫兰骑士', null, '休斯顿火箭', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('317', '印第安纳步行者', null, '孟菲斯灰熊', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('318', '底特律活塞', null, '丹佛掘金', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('319', '密尔沃基雄鹿', null, '波特兰开拓者', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('320', '明尼苏达森林狼', null, '俄克拉荷马城雷霆', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('321', '华盛顿奇才', null, 'hghjghjgjh', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('322', '夏洛特黄蜂', null, 'sdfsdfsd', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('323', '亚特兰大老鹰', null, 'sdfsdfs', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('324', '迈阿密热火', null, '萨克拉门托国王', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('325', '奥兰多魔术', null, '菲尼克斯太阳', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('326', '纽约尼克斯', null, '洛杉矶快船', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('327', '费城76人', null, '洛杉矶湖人', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('328', '布鲁克林篮网', null, '金州勇士', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('329', '波士顿凯尔特人', null, '达拉斯独行侠', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('330', '多伦多猛龙', null, '圣安东尼奥马刺', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('331', '芝加哥公牛', null, '新奥尔良鹈鹕', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('332', '克利夫兰骑士', null, '休斯顿火箭', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('333', '印第安纳步行者', null, '孟菲斯灰熊', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('334', '底特律活塞', null, '丹佛掘金', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('335', '密尔沃基雄鹿', null, '波特兰开拓者', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('336', '明尼苏达森林狼', null, '俄克拉荷马城雷霆', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('337', '华盛顿奇才', null, 'hghjghjgjh', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('338', '夏洛特黄蜂', null, 'sdfsdfsd', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('339', '亚特兰大老鹰', null, 'sdfsdfs', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('340', '迈阿密热火', null, '萨克拉门托国王', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('341', '奥兰多魔术', null, '菲尼克斯太阳', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('342', '纽约尼克斯', null, '洛杉矶快船', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('343', '费城76人', null, '洛杉矶湖人', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('344', '布鲁克林篮网', null, '金州勇士', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('345', '波士顿凯尔特人', null, '达拉斯独行侠', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('346', '多伦多猛龙', null, '圣安东尼奥马刺', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('347', '芝加哥公牛', null, '新奥尔良鹈鹕', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('348', '克利夫兰骑士', null, '休斯顿火箭', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('349', '印第安纳步行者', null, '孟菲斯灰熊', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('350', '底特律活塞', null, '丹佛掘金', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('351', '密尔沃基雄鹿', null, '波特兰开拓者', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('352', '明尼苏达森林狼', null, '俄克拉荷马城雷霆', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('353', '华盛顿奇才', null, 'hghjghjgjh', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('354', '夏洛特黄蜂', null, 'sdfsdfsd', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('355', '亚特兰大老鹰', null, 'sdfsdfs', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('356', '迈阿密热火', null, '萨克拉门托国王', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('357', '奥兰多魔术', null, '菲尼克斯太阳', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('358', '纽约尼克斯', null, '洛杉矶快船', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('359', '费城76人', null, '洛杉矶湖人', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('360', '布鲁克林篮网', null, '金州勇士', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('361', '波士顿凯尔特人', null, '达拉斯独行侠', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('362', '多伦多猛龙', null, '圣安东尼奥马刺', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('363', '芝加哥公牛', null, '新奥尔良鹈鹕', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('364', '克利夫兰骑士', null, '休斯顿火箭', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('365', '印第安纳步行者', null, '孟菲斯灰熊', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('366', '底特律活塞', null, '丹佛掘金', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('367', '密尔沃基雄鹿', null, '波特兰开拓者', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('368', '明尼苏达森林狼', null, '俄克拉荷马城雷霆', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('369', '华盛顿奇才', null, 'hghjghjgjh', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('370', '夏洛特黄蜂', null, 'sdfsdfsd', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('371', '亚特兰大老鹰', null, 'sdfsdfs', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('372', '迈阿密热火', null, '萨克拉门托国王', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('373', '奥兰多魔术', null, '菲尼克斯太阳', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('374', '纽约尼克斯', null, '洛杉矶快船', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('375', '费城76人', null, '洛杉矶湖人', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('376', '布鲁克林篮网', null, '金州勇士', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('377', '波士顿凯尔特人', null, '达拉斯独行侠', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('378', '多伦多猛龙', null, '圣安东尼奥马刺', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('379', '芝加哥公牛', null, '新奥尔良鹈鹕', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('380', '克利夫兰骑士', null, '休斯顿火箭', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('381', '印第安纳步行者', null, '孟菲斯灰熊', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('382', '底特律活塞', null, '丹佛掘金', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('383', '密尔沃基雄鹿', null, '波特兰开拓者', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('384', '明尼苏达森林狼', null, '俄克拉荷马城雷霆', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('385', '华盛顿奇才', null, 'hghjghjgjh', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('386', '夏洛特黄蜂', null, 'sdfsdfsd', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('387', '亚特兰大老鹰', null, 'sdfsdfs', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('388', '迈阿密热火', null, '萨克拉门托国王', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('389', '奥兰多魔术', null, '菲尼克斯太阳', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('390', '纽约尼克斯', null, '洛杉矶快船', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('391', '费城76人', null, '洛杉矶湖人', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('392', '布鲁克林篮网', null, '金州勇士', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('393', '波士顿凯尔特人', null, '达拉斯独行侠', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('394', '多伦多猛龙', null, '圣安东尼奥马刺', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('395', '芝加哥公牛', null, '新奥尔良鹈鹕', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('396', '克利夫兰骑士', null, '休斯顿火箭', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('397', '印第安纳步行者', null, '孟菲斯灰熊', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('398', '底特律活塞', null, '丹佛掘金', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('399', '密尔沃基雄鹿', null, '波特兰开拓者', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('400', '明尼苏达森林狼', null, '俄克拉荷马城雷霆', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('401', '华盛顿奇才', null, 'hghjghjgjh', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('402', '夏洛特黄蜂', null, 'sdfsdfsd', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('403', '亚特兰大老鹰', null, 'sdfsdfs', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('404', '迈阿密热火', null, '萨克拉门托国王', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('405', '奥兰多魔术', null, '菲尼克斯太阳', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('406', '纽约尼克斯', null, '洛杉矶快船', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('407', '费城76人', null, '洛杉矶湖人', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('408', '布鲁克林篮网', null, '金州勇士', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('409', '波士顿凯尔特人', null, '达拉斯独行侠', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('410', '多伦多猛龙', null, '圣安东尼奥马刺', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('411', '芝加哥公牛', null, '新奥尔良鹈鹕', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('412', '克利夫兰骑士', null, '休斯顿火箭', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('413', '印第安纳步行者', null, '孟菲斯灰熊', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('414', '底特律活塞', null, '丹佛掘金', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('415', '密尔沃基雄鹿', null, '波特兰开拓者', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('416', '明尼苏达森林狼', null, '俄克拉荷马城雷霆', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('417', '华盛顿奇才', null, 'hghjghjgjh', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('418', '夏洛特黄蜂', null, 'sdfsdfsd', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('419', '亚特兰大老鹰', null, 'sdfsdfs', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('420', '迈阿密热火', null, '萨克拉门托国王', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('421', '奥兰多魔术', null, '菲尼克斯太阳', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('422', '纽约尼克斯', null, '洛杉矶快船', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('423', '费城76人', null, '洛杉矶湖人', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('424', '布鲁克林篮网', null, '金州勇士', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('425', '波士顿凯尔特人', null, '达拉斯独行侠', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('426', '多伦多猛龙', null, '圣安东尼奥马刺', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('427', '芝加哥公牛', null, '新奥尔良鹈鹕', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('428', '克利夫兰骑士', null, '休斯顿火箭', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('429', '印第安纳步行者', null, '孟菲斯灰熊', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('430', '底特律活塞', null, '丹佛掘金', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('431', '密尔沃基雄鹿', null, '波特兰开拓者', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('432', '明尼苏达森林狼', null, '俄克拉荷马城雷霆', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('433', '华盛顿奇才', null, 'hghjghjgjh', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('434', '夏洛特黄蜂', null, 'sdfsdfsd', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('435', '亚特兰大老鹰', null, 'sdfsdfs', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('436', '迈阿密热火', null, '萨克拉门托国王', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('437', '奥兰多魔术', null, '菲尼克斯太阳', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('438', '纽约尼克斯', null, '洛杉矶快船', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('439', '费城76人', null, '洛杉矶湖人', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('440', '布鲁克林篮网', null, '金州勇士', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('441', '波士顿凯尔特人', null, '达拉斯独行侠', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('442', '多伦多猛龙', null, '圣安东尼奥马刺', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('443', '芝加哥公牛', null, '新奥尔良鹈鹕', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('444', '克利夫兰骑士', null, '休斯顿火箭', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('445', '印第安纳步行者', null, '孟菲斯灰熊', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('446', '底特律活塞', null, '丹佛掘金', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('447', '密尔沃基雄鹿', null, '波特兰开拓者', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('448', '明尼苏达森林狼', null, '俄克拉荷马城雷霆', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('449', '华盛顿奇才', null, 'hghjghjgjh', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('450', '夏洛特黄蜂', null, 'sdfsdfsd', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('451', '亚特兰大老鹰', null, 'sdfsdfs', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('452', '迈阿密热火', null, '萨克拉门托国王', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('453', '奥兰多魔术', null, '菲尼克斯太阳', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('454', '纽约尼克斯', null, '洛杉矶快船', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('455', '费城76人', null, '洛杉矶湖人', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('456', '布鲁克林篮网', null, '金州勇士', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('457', '波士顿凯尔特人', null, '达拉斯独行侠', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('458', '多伦多猛龙', null, '圣安东尼奥马刺', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('459', '芝加哥公牛', null, '新奥尔良鹈鹕', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('460', '克利夫兰骑士', null, '休斯顿火箭', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('461', '印第安纳步行者', null, '孟菲斯灰熊', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('462', '底特律活塞', null, '丹佛掘金', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('463', '密尔沃基雄鹿', null, '波特兰开拓者', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('464', '明尼苏达森林狼', null, '俄克拉荷马城雷霆', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('465', '华盛顿奇才', null, 'hghjghjgjh', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('466', '夏洛特黄蜂', null, 'sdfsdfsd', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('467', '亚特兰大老鹰', null, 'sdfsdfs', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('468', '迈阿密热火', null, '萨克拉门托国王', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('469', '奥兰多魔术', null, '菲尼克斯太阳', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('470', '纽约尼克斯', null, '洛杉矶快船', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('471', '费城76人', null, '洛杉矶湖人', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('472', '布鲁克林篮网', null, '金州勇士', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('473', '波士顿凯尔特人', null, '达拉斯独行侠', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('474', '多伦多猛龙', null, '圣安东尼奥马刺', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('475', '芝加哥公牛', null, '新奥尔良鹈鹕', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('476', '克利夫兰骑士', null, '休斯顿火箭', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('477', '印第安纳步行者', null, '孟菲斯灰熊', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('478', '底特律活塞', null, '丹佛掘金', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('479', '密尔沃基雄鹿', null, '波特兰开拓者', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('480', '明尼苏达森林狼', null, '俄克拉荷马城雷霆', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('481', '华盛顿奇才', null, 'hghjghjgjh', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('482', '夏洛特黄蜂', null, 'sdfsdfsd', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('483', '亚特兰大老鹰', null, 'sdfsdfs', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('484', '迈阿密热火', null, '萨克拉门托国王', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('485', '奥兰多魔术', null, '菲尼克斯太阳', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('486', '纽约尼克斯', null, '洛杉矶快船', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('487', '费城76人', null, '洛杉矶湖人', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('488', '布鲁克林篮网', null, '金州勇士', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('489', '波士顿凯尔特人', null, '达拉斯独行侠', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('490', '多伦多猛龙', null, '圣安东尼奥马刺', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('491', '芝加哥公牛', null, '新奥尔良鹈鹕', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('492', '克利夫兰骑士', null, '休斯顿火箭', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('493', '印第安纳步行者', null, '孟菲斯灰熊', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('494', '底特律活塞', null, '丹佛掘金', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('495', '密尔沃基雄鹿', null, '波特兰开拓者', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('496', '明尼苏达森林狼', null, '俄克拉荷马城雷霆', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('497', '华盛顿奇才', null, 'hghjghjgjh', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('498', '夏洛特黄蜂', null, 'sdfsdfsd', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('499', '亚特兰大老鹰', null, 'sdfsdfs', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('500', '迈阿密热火', null, '萨克拉门托国王', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('501', '奥兰多魔术', null, '菲尼克斯太阳', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('502', '纽约尼克斯', null, '洛杉矶快船', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('503', '费城76人', null, '洛杉矶湖人', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('504', '布鲁克林篮网', null, '金州勇士', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('505', '波士顿凯尔特人', null, '达拉斯独行侠', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('506', '多伦多猛龙', null, '圣安东尼奥马刺', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('507', '芝加哥公牛', null, '新奥尔良鹈鹕', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('508', '克利夫兰骑士', null, '休斯顿火箭', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('509', '印第安纳步行者', null, '孟菲斯灰熊', null, null, '标靶中心球馆');
INSERT INTO `scedule` VALUES ('510', '底特律活塞', null, '丹佛掘金', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('511', '密尔沃基雄鹿', null, '波特兰开拓者', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('512', '明尼苏达森林狼', null, '俄克拉荷马城雷霆', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('519', '明尼苏达森林狼', null, '克利夫兰骑士', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('520', '多伦多猛龙', null, '犹他爵士', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('521', '迈阿密热火', null, '达拉斯独行侠', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('522', '多伦多猛龙', null, '洛杉矶快船', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('523', '新奥尔良鹈鹕', null, '洛杉矶湖人', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('524', '底特律活塞', null, 'sdfsdfsd', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('525', 'sdfsdfs', null, '费城76人', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('526', '波特兰开拓者', null, '奥兰多魔术', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('527', '萨克拉门托国王', null, '洛杉矶湖人', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('528', '金州勇士', null, '洛杉矶快船', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('529', '犹他爵士', null, '布鲁克林篮网', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('530', '明尼苏达森林狼', null, '密尔沃基雄鹿', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('531', '印第安纳步行者', null, '克利夫兰骑士', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('532', '圣安东尼奥马刺', null, '夏洛特黄蜂', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('533', '菲尼克斯太阳', null, '金州勇士', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('534', '华盛顿奇才', null, '圣安东尼奥马刺', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('535', 'sdfsdfsd', null, '新奥尔良鹈鹕', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('536', '达拉斯独行侠', null, '菲尼克斯太阳', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('537', '丹佛掘金', null, '亚特兰大老鹰', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('538', '多伦多猛龙', null, '明尼苏达森林狼', null, null, 'qwerqwqe');
INSERT INTO `scedule` VALUES ('539', 'sdfsdfs', null, '圣安东尼奥马刺', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('541', '洛杉矶快船', null, '丹佛掘金', null, null, '赛复赛');
INSERT INTO `scedule` VALUES ('542', '印第安纳步行者', null, '迈阿密热火', null, null, '国家农业球馆	');
INSERT INTO `scedule` VALUES ('543', '奥兰多魔术', null, '多伦多猛龙', null, null, '赛复赛');

-- ----------------------------
-- Table structure for `team`
-- ----------------------------
DROP TABLE IF EXISTS `team`;
CREATE TABLE `team` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `team_name` varchar(255) NOT NULL,
  `stadium` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `coach` varchar(255) NOT NULL,
  `general_manager` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `team_union` varchar(255) NOT NULL,
  `number_of_champions` int(10) DEFAULT NULL,
  `division` varchar(255) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `join_date` varchar(30) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of team
-- ----------------------------
INSERT INTO `team` VALUES ('1', '华盛顿奇才', '首都中心', '华盛顿特区华盛顿', '韦斯·昂塞尔德', '厄尔尼·格伦菲尔德', '泰德·莱昂西斯', '东部联盟', '0', '东南赛区', '', null, null);
INSERT INTO `team` VALUES ('2', '夏洛特黄蜂', '光谱中心', '北卡罗来纳州夏洛特', '詹姆斯·博雷戈', '邱瑞克', '迈克尔·乔丹', '东部联盟', '0', '东南赛区', '', null, null);
INSERT INTO `team` VALUES ('3', '亚特兰大老鹰', 'State Farm Arena', '乔治亚州亚特兰大', '内特·麦克米兰', '维斯·威尔考克斯', '迈克尔·吉隆和斯蒂文·普莱斯', '东部联盟', '1', '东南赛区', '', null, null);
INSERT INTO `team` VALUES ('4', '迈阿密热火', 'FTX Arena', '佛罗里达州迈阿密', '埃里克·斯波尔斯特拉', '帕特·莱利', '阿诺德·唐纳德', '东部联盟', '3', '东南赛区', '', null, null);
INSERT INTO `team` VALUES ('5', '奥兰多魔术', '安利中心球馆', '佛罗里达州奥兰多', '史蒂夫·克利福德', '罗布·汉尼根', '里克·德沃斯', '东部联盟', '0', '东南赛区', '', null, null);
INSERT INTO `team` VALUES ('6', '纽约尼克斯', '麦迪逊广场花园球馆', '尼克斯纽约', '锡伯杜', '斯蒂夫·米尔斯', '詹姆斯·杜兰', '东部联盟', '2', '大西洋赛区', '', null, null);
INSERT INTO `team` VALUES ('7', '费城76人', '富国银行中心球馆', '宾夕法尼亚州费城', '里弗斯', '山姆·辛奇', '约书亚·哈里斯', '东部联盟', '3', '大西洋赛区', '', null, null);
INSERT INTO `team` VALUES ('8', '布鲁克林篮网', '巴克莱中心球馆', '尼克斯布鲁克林', '纳什', '比利·金', '蔡崇信', '东部联盟', '2', '大西洋赛区', '', null, null);
INSERT INTO `team` VALUES ('9', '波士顿凯尔特人', 'TD花园球馆', '马萨诸塞州波士顿', '布拉德·史蒂文斯', '丹尼·安吉', '里奇·格萨姆', '东部联盟', '1', '大西洋赛区', '', null, null);
INSERT INTO `team` VALUES ('10', '多伦多猛龙', 'Scotiabank Arena', '多伦多多伦多', '尼克·纳斯', '马萨伊·乌杰里', '蒂莫西·列威克', '东部联盟', '1', '大西洋赛区', '', null, null);
INSERT INTO `team` VALUES ('11', '芝加哥公牛', '联合中心球馆', '伊利诺斯州芝加哥', '比利·多诺万', '盖尔·福尔曼', '迈克尔·莱因斯多夫', '东部联盟', '6', '中部赛区', '', null, null);
INSERT INTO `team` VALUES ('12', '克利夫兰骑士', '火箭按揭球馆', '俄亥俄州克利夫兰', 'J.B.比克斯塔夫', '科比·奥尔特曼', '丹尼尔·吉尔伯特', '东部联盟', '1', '中部赛区', '', null, null);
INSERT INTO `team` VALUES ('13', '印第安纳步行者', 'Gainbridge Fieldhouse', '印第安纳州印第安纳波利斯', '内特·麦克米兰', '凯文·普理查德', '赫伯特·西蒙', '东部联盟', '0', '中部赛区', '', null, null);
INSERT INTO `team` VALUES ('14', '底特律活塞', '小凯撒球馆', '密歇根州底特律', '德韦恩·凯西', '杰夫·鲍尔', '汤姆·戈尔斯', '东部联盟', '3', '中部赛区', '', null, null);
INSERT INTO `team` VALUES ('15', '密尔沃基雄鹿', 'Fiserv Forum', '威斯康辛州密尔沃基', '迈克·布登霍尔泽', '约翰·哈蒙德', '韦斯利·艾登斯/马克·莱斯利', '东部联盟', '2', '中部赛区', '', null, null);
INSERT INTO `team` VALUES ('16', '明尼苏达森林狼', '标靶中心球馆', '明尼苏达州明尼阿波利斯', '莱恩-桑德斯', '米尔特·牛顿', '格伦·泰勒', '西部联盟', '0', '西北赛区', '', null, null);
INSERT INTO `team` VALUES ('17', '犹他爵士', 'Vivint Arena', '犹他州盐湖城', '奎因·斯奈德', '丹尼斯·林瑟', '格雷格·米勒', '西部联盟', '0', '西北赛区', '', null, null);
INSERT INTO `team` VALUES ('18', '俄克拉荷马城雷霆', 'Paycom Center', '俄克拉荷马州俄克拉荷马城', '比利·多诺万', '山姆·普莱斯蒂', '克雷·本内特', '西部联盟', '1', '西北赛区', '', null, null);
INSERT INTO `team` VALUES ('19', '波特兰开拓者', '摩达中心', '俄勒冈州波特兰', '比卢普斯', '内尔·奥尔西', '保罗·艾伦', '西部联盟', '1', '西北赛区', '', null, null);
INSERT INTO `team` VALUES ('20', '丹佛掘金', 'Ball Arena', '科罗拉多州丹佛', '迈克尔·马龙', '蒂姆·康奈利', '斯坦·克伦克', '西部联盟', '0', '西北赛区', '', null, null);
INSERT INTO `team` VALUES ('21', '孟菲斯灰熊', '联邦快递球馆', '田纳西州孟菲斯', 'JB·比克斯塔夫', '克里斯·华莱士', '罗伯特·佩拉', '西部联盟', '0', '西南赛区', '', null, null);
INSERT INTO `team` VALUES ('22', '休斯顿火箭', '丰田中心球馆', '得克萨斯州休斯顿', '斯蒂芬·塞拉斯', '拉斐尔·斯通', '蒂尔曼·费尔蒂塔', '西部联盟', '2', '西南赛区', '', null, null);
INSERT INTO `team` VALUES ('23', '新奥尔良鹈鹕', '冰沙王中心', '洛杉矶新奥尔良', '斯坦·范甘迪', '戴尔·丹普斯', '汤姆·本森', '西部联盟', '0', '西南赛区', '', null, null);
INSERT INTO `team` VALUES ('24', '圣安东尼奥马刺', 'AT&T中心球场', '得克萨斯州圣安东尼奥', '格雷格·波波维奇', 'R.C.布福德', '皮特·霍尔特', '西部联盟', '5', '西南赛区', '', null, null);
INSERT INTO `team` VALUES ('25', '达拉斯独行侠', '美航中心球馆', '得克萨斯州达拉斯', '杰森·基德', '唐尼·尼尔森', '马克·库班', '西部联盟', '1', '西南赛区', '', null, null);
INSERT INTO `team` VALUES ('26', '金州勇士', 'Chase Center', '加利福尼亚州旧金山', '史蒂夫·科尔', '鲍勃·梅尔斯', '乔·拉科布', '西部联盟', '6', '太平洋赛区', '', null, null);
INSERT INTO `team` VALUES ('27', '洛杉矶湖人', 'Crypto.com Arena', '加利福尼亚州洛杉矶', '弗兰克·沃格尔', '佩林卡', '珍妮·巴斯', '西部联盟', '1', '太平洋赛区', '', null, null);
INSERT INTO `team` VALUES ('28', '洛杉矶快船', 'Crypto.com Arena', '加利福尼亚州洛杉矶', '泰伦卢', '戴夫·沃尔', '史蒂夫·鲍尔默', '西部联盟', '0', '太平洋赛区', '', null, null);
INSERT INTO `team` VALUES ('29', '菲尼克斯太阳', 'Footprint Center', '亚利桑那州菲尼克斯', '伊戈尔·科科什科夫', '瑞恩·麦克多纳', '罗伯特·萨沃尔', '西部联盟', '0', '太平洋赛区', '', null, null);
INSERT INTO `team` VALUES ('30', '萨克拉门托国王', '黄金一号中心', '加利福尼亚州萨克拉门托', '阿尔文·金特里', '弗拉德·迪瓦茨', '维韦克-拉纳迪维', '西部联盟', '1', '太平洋赛区', '', null, null);
INSERT INTO `team` VALUES ('31', 'sdfsdfs', 'sdfsdf', 'sdfsdf', 'sdfsdf', 'sdfsd', 'sdfsdf', '东部联盟', '0', '东部联盟', null, '2022-05-19 14:25:58', '5');
INSERT INTO `team` VALUES ('32', 'sdfsdfsd', 'sdfsdsdfd', 'sdfsdfd', 'sdfsdfd', 'sdfsdf', 'sdfsdf', '东部联盟', '0', '西部联盟', null, '2022-05-19 19:54:54', '5');
INSERT INTO `team` VALUES ('33', 'hghjghjgjh', 'yyggy', 'dfgdf`', 'rgdfg1', 'fdgdfg', 'dfgdfg', '东部联盟', '0', '西部联盟', null, '2022-05-25 18:30:49', '5');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(30) NOT NULL,
  `user_password` varchar(16) NOT NULL,
  `user_email` varchar(30) NOT NULL,
  `user_gender` int(1) DEFAULT NULL,
  `user_birth` date DEFAULT NULL,
  `power` int(1) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `UserName` (`user_name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('3', 'admin', '123456', 'sdf@qq.com', '1', '2000-01-11', '0');
INSERT INTO `users` VALUES ('5', 'user', '123456', 'user@qq.com', '1', '2000-01-07', '1');
INSERT INTO `users` VALUES ('6', 'user2', '654321', 'sdf@qq.com', null, null, '1');
