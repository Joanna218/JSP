/*
Navicat MySQL Data Transfer

Source Server         : jspfinal
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : final_demo

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-01-06 04:26:04
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `i78p`
-- ----------------------------
DROP TABLE IF EXISTS `i78p`;
CREATE TABLE `i78p` (
  `product_no` int(10) NOT NULL AUTO_INCREMENT,
  `image_path` varchar(20) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `product_price` int(5) NOT NULL,
  `product_num` int(5) DEFAULT NULL,
  `YN` varchar(1) NOT NULL,
  PRIMARY KEY (`product_no`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of i78p
-- ----------------------------
INSERT INTO i78p VALUES ('1', 'img/61.jpg', 'I7.8plus_APPLE 原廠 矽膠保護殼', '55', '5', 'N');
INSERT INTO i78p VALUES ('2', 'img/62.jpg', 'I7.8plus_Baseus倍思 簡約皮套 滑動接聽 支架手機殼 保護套', '65', '3', 'N');
INSERT INTO i78p VALUES ('3', 'img/63.jpg', 'I7.8plus_ESR億色 輕薄磨砂防指紋手機保護殼套', '89', '56', 'N');
INSERT INTO i78p VALUES ('4', 'img/64.jpg', 'I7.8plus_GARMMA LAIMO馬來貘 空壓氣墊防摔保護軟殼', '99', '6', 'N');
INSERT INTO i78p VALUES ('5', 'img/65.jpg', 'I7.8plus_GARMMA 蛋黃哥&馬來貘聯名 空壓氣墊防摔保護軟殼', '77', '7', 'Y');
INSERT INTO i78p VALUES ('6', 'img/66.jpg', 'I7.8plus_kajsa 絨口袋插卡單蓋保護殼-灰', '199', '8', 'Y');
INSERT INTO i78p VALUES ('7', 'img/67.jpg', 'I7.8plus_KS防摔鑽殼-星象儀', '100', '9', 'Y');
INSERT INTO i78p VALUES ('8', 'img/68.jpg', 'I7.8plus_OtterBox炫彩幾何系列保護殼-粉藍', '150', '5', 'N');
INSERT INTO i78p VALUES ('9', 'img/69.jpg', 'I7.8plus_UP2度C-英式風兔子', '210', '6', 'N');
INSERT INTO i78p VALUES ('10', 'img/70.jpg', 'I7.8plus_刀鋒奢華 鋁合金+木紋 防摔保護殼', '43', '66', 'N');
INSERT INTO i78p VALUES ('11', 'img/71.jpg', 'I7.8plus_史努比 SNOOPY 漸層彩繪軟式手機殼(跳跳)', '55', '5', 'N');
INSERT INTO i78p VALUES ('12', 'img/72.jpg', 'I7.8plus_泡泡保護套 - 米奇', '44', '7', 'Y');
INSERT INTO i78p VALUES ('13', 'img/73.jpg', 'I7.8plus_泡泡保護套 - 杯麵', '66', '7', 'Y');
INSERT INTO i78p VALUES ('14', 'img/74.jpg', 'I7.8plus_泡泡保護套 - 貓咪', '77', '3', 'Y');
INSERT INTO i78p VALUES ('15', 'img/75.jpg', 'I7.8plus_泡泡保護套 - 貓熊', '88', '7', 'Y');
INSERT INTO i78p VALUES ('16', 'img/76.jpg', 'I7.8plus_哆啦A夢手機殼', '99', '3', 'N');
INSERT INTO i78p VALUES ('17', 'img/77.jpg', 'I7.8plus_真皮經典款保護殼', '90', '3', 'N');
INSERT INTO i78p VALUES ('18', 'img/78.jpg', 'I7.8plus_透明彩繪空壓手機殼(妞妞舞)保護殼', '99', '2', 'Y');
INSERT INTO i78p VALUES ('19', 'img/79.jpg', 'I7.8plus_極薄時尚皮革保護殼', '98', '6', 'N');
INSERT INTO i78p VALUES ('20', 'img/80.jpg', 'I7.8plus_標準版軍規防摔殼手機保護殼', '98', '4', 'Y');
INSERT INTO i78p VALUES ('21', 'img/81.jpg', 'I7.8plus_韓系5色 大理石手機殼', '199', '3', 'N');
INSERT INTO i78p VALUES ('93', 'I78P', 'I78PK\'KJ', '120', '7', 'Y');
INSERT INTO i78p VALUES ('94', 'I;K', 'OO', '140', '88', 'Y');
INSERT INTO i78p VALUES ('95', 'L;L', 'LL', '100', '0', 'Y');
INSERT INTO i78p VALUES ('96', 'LL;L', 'C', '122', '2', 'Y');
