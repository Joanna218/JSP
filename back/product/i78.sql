/*
Navicat MySQL Data Transfer

Source Server         : jspfinal
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : final_demo

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-01-06 04:26:10
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `i78`
-- ----------------------------
DROP TABLE IF EXISTS `i78`;
CREATE TABLE `i78` (
  `product_no` int(10) NOT NULL AUTO_INCREMENT,
  `image_path` varchar(20) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `product_price` int(5) NOT NULL,
  `product_num` int(5) DEFAULT NULL,
  `YN` varchar(1) NOT NULL,
  PRIMARY KEY (`product_no`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of i78
-- ----------------------------
INSERT INTO i78 VALUES ('1', 'img/41.jpg', 'I7.8_adidas TPU 彩繪系列手機殼 珊瑚', '33', '234', 'N');
INSERT INTO i78 VALUES ('2', 'img/42.jpg', 'I7.8_Air Skin-極致輕薄保護殼', '55', '5345', 'Y');
INSERT INTO i78 VALUES ('3', 'img/43.jpg', 'I7.8_BYEBYECHUCHU 掰掰啾啾-奧樂雞 WaKase', '75', '45', 'N');
INSERT INTO i78 VALUES ('4', 'img/44.jpg', 'I7.8_Gramas 日本東京 抗衝擊行李箱-白', '99', '54', 'Y');
INSERT INTO i78 VALUES ('5', 'img/45.jpg', 'I7.8_MONOCOZZI Ultra Slim 超薄保護殼', '87', '66', 'N');
INSERT INTO i78 VALUES ('6', 'img/46.jpg', 'I7.8_NILLKIN 卡仕商務手機殼', '76', '44', 'Y');
INSERT INTO i78 VALUES ('7', 'img/47.jpg', 'I7.8_ONUSK Cattitude 手機保護殼-藍', '55', '33', 'N');
INSERT INTO i78 VALUES ('8', 'img/48.jpg', 'I7.8_X-Doria 極盾系列手機殼', '65', '56', 'Y');
INSERT INTO i78 VALUES ('9', 'img/49.jpg', 'I7.8_石墨黑系列高質感側邊防滑手機殼-宇宙火箭', '57', '22', 'N');
INSERT INTO i78 VALUES ('10', 'img/50.jpg', 'I7.8_角落生物 疊疊款 硬式手機殼', '99', '55', 'Y');
INSERT INTO i78 VALUES ('11', 'img/51.jpg', 'I7.8_拉拉熊 經典咖啡款 口袋皮革系列 硬式手機殼', '23', '66', 'N');
INSERT INTO i78 VALUES ('12', 'img/52.jpg', 'I7.8_紅點法鬥 手機殼', '123', '4', 'Y');
INSERT INTO i78 VALUES ('13', 'img/53.jpg', 'I7.8_英倫風絨布拼接撞色 可插卡 手機殼', '212', '6', 'N');
INSERT INTO i78 VALUES ('14', 'img/54.jpg', 'I7.8_迪士尼 三眼怪透明亂花 硬式手機殼', '199', '4', 'Y');
INSERT INTO i78 VALUES ('15', 'img/55.jpg', 'I7.8_迪士尼 小熊維尼 金箔 透明硬式手機殼', '100', '34', 'N');
INSERT INTO i78 VALUES ('16', 'img/56.jpg', 'I7.8_迪士尼 米奇牛仔藍 皮革系列 硬式手機殼', '150', '45', 'Y');
INSERT INTO i78 VALUES ('17', 'img/57.jpg', 'I7.8_迪士尼 披薩三眼怪 皮革系列 硬式手機殼', '130', '45', 'N');
INSERT INTO i78 VALUES ('18', 'img/58.jpg', 'I7.8_迪士尼 蛋頭先生透明亂花 硬式手機殼', '145', '657', 'Y');
INSERT INTO i78 VALUES ('19', 'img/59.jpg', 'I7.8_迪士尼 復古米奇 口袋皮革 手機殼', '154', '9', 'N');
INSERT INTO i78 VALUES ('20', 'img/60.jpg', 'I7.8_真皮手機殼', '236', '8', 'Y');
INSERT INTO i78 VALUES ('93', 'I78', 'I78', '222', '11', 'Y');
INSERT INTO i78 VALUES ('94', 'EE', 'EE\'R', '111', '333', 'Y');
