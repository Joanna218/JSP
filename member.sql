/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : yrst

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2018-01-01 12:56:57
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `member`
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
  `num_NO` int(11) NOT NULL,
  `id` varchar(20) NOT NULL,
  `tel` varchar(10) NOT NULL,
  `pwd` varchar(20) NOT NULL,
  `name` varchar(10) NOT NULL,
  `sex` varchar(255) NOT NULL,
  `birthday` date NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(40) NOT NULL,
  PRIMARY KEY (`num_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO member VALUES ('1', 'WGRG', 'JQW', 'WEQ', 'GRERG', '女', '2017-12-21', 'bbbbb', 'ERGE');
INSERT INTO member VALUES ('2', 'jlnl', 'nnjb', 'nbbb', 'obob', '女', '2017-12-22', 'fewf', 'ewf');
INSERT INTO member VALUES ('3', 'dg', 'gerg', 'feg', 'rher', '男', '2017-12-19', 'rgre', 'ujj');
INSERT INTO member VALUES ('4', '54y4', 'ge', 'huih', 'hib', '男', '2017-12-06', 'rth', 'thr');
INSERT INTO member VALUES ('5', 'jkb', 'fyrc', 'hoh', 'ygu', '女', '2017-12-11', 'j44', 'tjyt');
INSERT INTO member VALUES ('6', 'hreh', 'hw', 'htw', 'he', '男', '2018-01-18', 'gggggrrr', 'greqgrewg');
