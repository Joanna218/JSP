/*
Navicat MySQL Data Transfer

Source Server         : jsp
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : demo

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2018-01-06 06:28:58
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `book`
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `no` int(255) NOT NULL AUTO_INCREMENT,
  `img` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `quantity` varchar(10) NOT NULL,
  `price` int(10) NOT NULL,
  `id` varchar(255) NOT NULL,
  `new_totalprice` int(11) NOT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO book VALUES ('29', 'img/01.jpg', 'I6.6s_INOj', '1', '44', 'null', '44');
INSERT INTO book VALUES ('31', 'img/01.jpg', 'I6.6s_INOj', '1', '44', 'null', '44');
INSERT INTO book VALUES ('32', 'img/01.jpg', 'I6.6s_INOj', '1', '44', 'null', '44');
INSERT INTO book VALUES ('33', 'img/01.jpg', 'I6.6s_INOj', '1', '44', 'null', '44');
INSERT INTO book VALUES ('34', 'img/01.jpg', 'I6.6s_INOj', '1', '44', 'null', '44');
INSERT INTO book VALUES ('35', 'img/01.jpg', 'I6.6s_INOj', '1', '44', 'null', '44');
