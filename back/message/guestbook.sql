/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : yrst

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2018-01-06 07:03:32
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `guestbook`
-- ----------------------------
DROP TABLE IF EXISTS `guestbook`;
CREATE TABLE `guestbook` (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `message` varchar(100) NOT NULL,
  `time` date NOT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of guestbook
-- ----------------------------
INSERT INTO guestbook VALUES ('1', '555', 'hayohaiily@yahoo.com.tw', '12131321', '2017-12-30');
INSERT INTO guestbook VALUES ('2', '???', 'hayohaiily@yahoo.com.tw', '12131321', '2017-12-30');
INSERT INTO guestbook VALUES ('3', '李旭婷', 'hayohaiily@yahoo.com.tw', '12131321', '2017-12-30');
INSERT INTO guestbook VALUES ('4', '555', 'hayohaiily@yahoo.com.tw', '12131321', '2017-12-30');
INSERT INTO guestbook VALUES ('5', '李旭婷', 'jessicazjes930029@yahoo.com.tw', '15151', '2018-01-02');
INSERT INTO guestbook VALUES ('6', '李旭婷', 'jessicazjes930029@yahoo.com.tw', '15151', '2018-01-02');
INSERT INTO guestbook VALUES ('7', '李旭婷', 'jessicazjes930029@yahoo.com.tw', '15151', '2018-01-02');
INSERT INTO guestbook VALUES ('12', '9888', '888', '888nnn8n8', '2018-01-03');
INSERT INTO guestbook VALUES ('13', '9999', '999', '999\r<br>ilil\r<br>09999', '2018-01-03');
INSERT INTO guestbook VALUES ('14', '101010101', '101010101', '1010fjije\r<br>gerg', '2018-01-03');
INSERT INTO guestbook VALUES ('15', '11111', '1111', '1111', '2018-01-03');
INSERT INTO guestbook VALUES ('16', '121212', '1212', '121212', '2018-01-03');
INSERT INTO guestbook VALUES ('17', '1313', '1313', '131313', '2018-01-03');
