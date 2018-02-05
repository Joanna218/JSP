/*
Navicat MySQL Data Transfer

Source Server         : jspfinal
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : final_demo

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-01-06 04:26:15
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `i6p`
-- ----------------------------
DROP TABLE IF EXISTS `i6p`;
CREATE TABLE `i6p` (
  `product_no` int(10) NOT NULL AUTO_INCREMENT,
  `image_path` varchar(20) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `product_price` int(5) NOT NULL,
  `product_num` int(5) DEFAULT NULL,
  `YN` varchar(1) NOT NULL,
  PRIMARY KEY (`product_no`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of i6p
-- ----------------------------
INSERT INTO i6p VALUES ('1', 'img/21.jpg', 'I6.6splus_HH 鋼化玻璃手機殼系列  防摔全包覆式(粉紅色)', '33', '43', 'Y');
INSERT INTO i6p VALUES ('2', 'img/22.jpg', 'I6.6splus_HH 鋼化玻璃手機殼系列防摔全包覆式(白色)', '32', '56', 'Y');
INSERT INTO i6p VALUES ('3', 'img/23.jpg', 'I6.6splus_HOCAR 爵士皮革保護手機殼 背蓋(暗紅)', '88', '5', 'Y');
INSERT INTO i6p VALUES ('4', 'img/24.jpg', 'I6.6splus_iJacket 大眼仔 矽膠軟套', '78', '45', 'Y');
INSERT INTO i6p VALUES ('5', 'img/25.jpg', 'I6.6splus_IPhone 6+棉花糖立體軟綿綿動物手機殼(仰頭貓)', '99', '56', 'Y');
INSERT INTO i6p VALUES ('6', 'img/26.jpg', 'I6.6splus_LINE FRIENDS 透明硬式保護殼-綁架熊大', '199', '23', 'N');
INSERT INTO i6p VALUES ('7', 'img/27.jpg', 'I6.6splus_Nexestek 全包覆流沙綠保護殼', '299', '55', 'Y');
INSERT INTO i6p VALUES ('8', 'img/28.jpg', 'I6.6splus_Nexestek 類皮革款手機保護殼', '212', '243', 'N');
INSERT INTO i6p VALUES ('9', 'img/29.jpg', 'I6.6splus_simpOcase光雕保護殼- 巴黎異想', '123', '24', 'Y');
INSERT INTO i6p VALUES ('10', 'img/30.jpg', 'I6.6splus_UP2度c 紳士法鬥', '213', '55', 'Y');
INSERT INTO i6p VALUES ('11', 'img/31.jpg', 'I6.6splus_WaKase', '98', '33', 'Y');
INSERT INTO i6p VALUES ('12', 'img/32.jpg', 'I6.6splus_WK Design香港潮牌 美萊手機殼保護貼套組-可愛動物', '79', '22', 'Y');
INSERT INTO i6p VALUES ('13', 'img/33.jpg', 'I6.6splus_少女手繪風保護貼+保護套組-愛麗絲(立體彩繪珍珠)', '69', '33', 'N');
INSERT INTO i6p VALUES ('14', 'img/34.jpg', 'I6.6splus_優雅色系木紋軟殼', '99', '55', 'N');
INSERT INTO i6p VALUES ('15', 'img/35.jpg', 'I6.6splus_迪士尼 米奇屁屁 背影系列 硬殼', '20', '3', 'N');
INSERT INTO i6p VALUES ('16', 'img/36.jpg', 'I6.6splus_凌度系列 拆卸式透明手機殼 手機套 金', '66', '3', 'Y');
INSERT INTO i6p VALUES ('17', 'img/37.jpg', 'I6.6splus_氣墊空壓漸變保護套', '78', '52', 'N');
INSERT INTO i6p VALUES ('18', 'img/38.jpg', 'I6.6splus_搖滾巨星印花手機殼 Seohwa Kim設計款', '22', '5', 'Y');
INSERT INTO i6p VALUES ('19', 'img/39.jpg', 'I6.6splus_瑞典大理石紋手機保護殼 義大利西恩納皇家灰', '99', '5', 'N');
INSERT INTO i6p VALUES ('20', 'img/40.jpg', 'I6.6splus_瑞典北歐時尚手機保護殼 加州棕櫚泉', '88', '435', 'Y');
INSERT INTO i6p VALUES ('93', 'I6P', 'I6P', '77', '22', 'Y');
INSERT INTO i6p VALUES ('94', 'AA', 'AA', '66', '22', 'Y');
