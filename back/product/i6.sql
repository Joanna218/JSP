/*
Navicat MySQL Data Transfer

Source Server         : jspfinal
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : final_demo

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-01-06 04:26:21
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `i6`
-- ----------------------------
DROP TABLE IF EXISTS `i6`;
CREATE TABLE `i6` (
  `product_no` int(10) NOT NULL AUTO_INCREMENT,
  `image_path` varchar(20) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `product_price` int(5) NOT NULL,
  `product_num` int(5) DEFAULT NULL,
  `YN` varchar(1) NOT NULL,
  PRIMARY KEY (`product_no`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of i6
-- ----------------------------
INSERT INTO i6 VALUES ('1', 'img/01.jpg', 'I6.6s_INOj', '44', '445', 'Y');
INSERT INTO i6 VALUES ('2', 'img/02.jpg', 'I6.6s_Xmass', '200', '66', 'Y');
INSERT INTO i6 VALUES ('3', 'img/03.jpg', 'I6.6s_Xmask', '44', '3', 'Y');
INSERT INTO i6 VALUES ('4', 'img/04.jpg', 'I6.6s_皮革霧漆-紫紅 手機殼', '34', '4', 'Y');
INSERT INTO i6 VALUES ('5', 'img/05.jpg', 'I6.6s_全包覆-流沙灰 手機殼', '77', '53', 'Y');
INSERT INTO i6 VALUES ('6', 'img/06.jpg', 'I6.6s_全包覆-流沙綠 手機殼', '43', '25', 'N');
INSERT INTO i6 VALUES ('7', 'img/07.jpg', 'I6.6s_怪獸大學', '55', '35', 'N');
INSERT INTO i6 VALUES ('8', 'img/08.jpg', 'I6.6s_泡泡保護套 - 三眼外星人 熊抱哥', '223', '54', 'N');
INSERT INTO i6 VALUES ('9', 'img/09.jpg', 'I6.6s_迪士尼 復古米奇 皮革系列 硬式手機殼', '43', '22', 'Y');
INSERT INTO i6 VALUES ('10', 'img/10.jpg', 'I6.6s_迪士尼 復古胡迪 皮革系列 硬式手機殼', '123', '22', 'Y');
INSERT INTO i6 VALUES ('11', 'img/11.jpg', 'I6.6s_迪士尼', '234', '34', 'Y');
INSERT INTO i6 VALUES ('12', 'img/12.jpg', 'I6.6s_原木防摔-橘 手機殼', '213', '44', 'Y');
INSERT INTO i6 VALUES ('13', 'img/13.jpg', 'I6.6s_時尚通勤保護殼', '43', '55', 'Y');
INSERT INTO i6 VALUES ('14', 'img/14.jpg', 'I6.6s_時尚撞色雙層防摔殼-檸檬黃+綠色', '233', '55', 'N');
INSERT INTO i6 VALUES ('15', 'img/15.jpg', 'I6.6s_笑臉怪獸保護殼', '88', '66', 'N');
INSERT INTO i6 VALUES ('16', 'img/16.jpg', 'I6.6s_蛋黃哥透明軟式保護殼', '99', '66', 'N');
INSERT INTO i6 VALUES ('17', 'img/17.jpg', 'I6.6s_斯文法鬥 i6軟殼', '66', '77', 'N');
INSERT INTO i6 VALUES ('18', 'img/18.jpg', 'I6.6s_黃色小鴨水中游 硬殼手機殼', '55', '88', 'N');
INSERT INTO i6 VALUES ('19', 'img/19.jpg', 'I6.6s_誘惑紅唇印花手機殼 Barracuda Studio設計款', '77', '999', 'Y');
INSERT INTO i6 VALUES ('20', 'img/20.jpg', 'I6.6s_輕薄保護殼-薄荷綠', '20', '66', 'Y');
INSERT INTO i6 VALUES ('94', 'i6', 'i6', '11', '11', 'Y');
INSERT INTO i6 VALUES ('95', 'QQ', 'QQ', '22', '22', 'Y');
