/*
Navicat MySQL Data Transfer

Source Server         : jspfinal
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : final_demo

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-01-06 04:25:58
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `ix`
-- ----------------------------
DROP TABLE IF EXISTS `ix`;
CREATE TABLE `ix` (
  `product_no` int(10) NOT NULL AUTO_INCREMENT,
  `image_path` varchar(20) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `product_price` int(5) NOT NULL,
  `product_num` int(5) DEFAULT NULL,
  `YN` varchar(1) NOT NULL,
  PRIMARY KEY (`product_no`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ix
-- ----------------------------
INSERT INTO ix VALUES ('1', 'img/82.jpg', 'IX_ Minions小小兵 空壓安全手機殼(筆記本) 保護殼', '99', '2', 'Y');
INSERT INTO ix VALUES ('2', 'img/83.jpg', 'IX_Folio 皮革保護殼', '199', '9', 'N');
INSERT INTO ix VALUES ('3', 'img/84.jpg', 'IX_iDeal Of Sweden 瑞典大理石紋手機保護殼-義大利卡拉卡塔海洋金', '212', '5', 'N');
INSERT INTO ix VALUES ('4', 'img/85.jpg', 'IX_Mokka 時尚木紋 插卡 手機殼', '160', '6', 'N');
INSERT INTO ix VALUES ('5', 'img/86.jpg', 'IX_OtterBox 通勤者系列保護殼-淺綠', '150', '7', 'N');
INSERT INTO ix VALUES ('6', 'img/87.jpg', 'IX_SEIDIO DILE 軍規級四角防撞保護殼', '140', '4', 'Y');
INSERT INTO ix VALUES ('7', 'img/88.jpg', 'IX_UAG 頂級版耐衝擊保護殼-紅金', '54', '3', 'Y');
INSERT INTO ix VALUES ('8', 'img/90.jpg', 'IX_拉拉熊 Rilakkuma 變裝系列彩繪手機殼(狐狸黃)', '88', '5', 'Y');
INSERT INTO ix VALUES ('93', 'IX\'XXX', 'I\'XX', '99', '22', 'Y');
INSERT INTO ix VALUES ('94', 'GG', 'GG', '199', '4', 'Y');
