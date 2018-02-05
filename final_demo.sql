/*
Navicat MySQL Data Transfer

Source Server         : jspfinal
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : final_demo

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-01-09 23:04:30
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
) ENGINE=InnoDB AUTO_INCREMENT=203 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO book VALUES ('36', 'img/01.jpg', 'I6.6s_INOj', '1', '44', 'null', '44');
INSERT INTO book VALUES ('37', 'img/01.jpg', 'I6.6s_INOj', '1', '44', 'null', '44');
INSERT INTO book VALUES ('38', 'img/01.jpg', 'I6.6s_INOj', '1', '44', 'null', '44');
INSERT INTO book VALUES ('39', 'img/01.jpg', 'I6.6s_INOj', '1', '44', 'null', '44');
INSERT INTO book VALUES ('40', 'img/01.jpg', 'I6.6s_INOj', '1', '44', 'yyyo', '44');
INSERT INTO book VALUES ('41', 'img/01.jpg', 'I6.6s_INOj', '1', '44', 'yyyo', '44');
INSERT INTO book VALUES ('42', 'img/01.jpg', 'I6.6s_INOj', '1', '44', 'yyyo', '44');
INSERT INTO book VALUES ('43', 'img/01.jpg', 'I6.6s_INOj', '1', '44', 'yyyo', '44');
INSERT INTO book VALUES ('44', 'img/01.jpg', 'I6.6s_INOj', '1', '44', 'yyyo', '44');
INSERT INTO book VALUES ('45', 'img/01.jpg', 'I6.6s_INOj', '1', '44', 'yyyo', '44');
INSERT INTO book VALUES ('46', 'img/01.jpg', 'I6.6s_INOj', '1', '44', 'yyyo', '44');
INSERT INTO book VALUES ('47', 'img/01.jpg', 'I6.6s_INOj', '1', '44', 'yyyo', '44');
INSERT INTO book VALUES ('48', 'img/01.jpg', 'I6.6s_INOj', '1', '44', 'yyyo', '44');
INSERT INTO book VALUES ('49', 'img/01.jpg', 'I6.6s_INOj', '1', '44', 'yyyo', '44');
INSERT INTO book VALUES ('50', 'img/01.jpg', 'I6.6s_INOj', '1', '44', 'yyyo', '44');
INSERT INTO book VALUES ('51', 'img/01.jpg', 'I6.6s_INOj', '1', '44', 'yyyo', '44');
INSERT INTO book VALUES ('52', 'img/01.jpg', 'I6.6s_INOj', '1', '44', 'yyyo', '44');
INSERT INTO book VALUES ('53', 'img/01.jpg', 'I6.6s_INOj', '1', '44', 'yyyo', '44');
INSERT INTO book VALUES ('54', 'img/01.jpg', 'I6.6s_INOj', '1', '44', 'yyyo', '44');
INSERT INTO book VALUES ('55', 'img/01.jpg', 'I6.6s_INOj', '1', '44', 'yyyo', '44');
INSERT INTO book VALUES ('56', 'img/01.jpg', 'I6.6s_INOj', '1', '44', 'yyyo', '44');
INSERT INTO book VALUES ('57', 'img/01.jpg', 'I6.6s_INOj', '1', '44', 'yyyo', '44');
INSERT INTO book VALUES ('58', 'img/01.jpg', 'I6.6s_INOj', '1', '44', 'yyyo', '44');
INSERT INTO book VALUES ('59', 'img/01.jpg', 'I6.6s_INOj', '1', '44', 'yyyo', '44');
INSERT INTO book VALUES ('60', 'img/01.jpg', 'I6.6s_INOj', '1', '44', 'yyyo', '44');
INSERT INTO book VALUES ('61', 'img/01.jpg', 'I6.6s_INOj', '1', '44', 'yyyo', '44');
INSERT INTO book VALUES ('62', 'img/01.jpg', 'I6.6s_INOj', '1', '44', 'yyyo', '44');
INSERT INTO book VALUES ('63', 'img/01.jpg', 'I6.6s_INOj', '1', '44', 'yyyo', '44');
INSERT INTO book VALUES ('64', 'img/01.jpg', 'I6.6s_INOj', '1', '44', 'yyyo', '44');
INSERT INTO book VALUES ('65', 'img/01.jpg', 'I6.6s_INOj', '1', '44', 'yyyo', '44');
INSERT INTO book VALUES ('66', 'img/01.jpg', 'I6.6s_INOj', '1', '44', 'yyyo', '44');
INSERT INTO book VALUES ('67', 'img/01.jpg', 'I6.6s_INOj', '1', '44', 'yyyo', '44');
INSERT INTO book VALUES ('68', 'img/01.jpg', 'I6.6s_INOj', '2', '44', 'yyyo', '88');
INSERT INTO book VALUES ('69', 'img/01.jpg', 'I6.6s_INOj', '1', '44', 'yyyo', '44');
INSERT INTO book VALUES ('70', 'img/01.jpg', 'I6.6s_INOj', '1', '44', 'yyyo', '44');
INSERT INTO book VALUES ('71', 'img/01.jpg', 'I6.6s_INOj', '1', '44', 'yyyo', '44');
INSERT INTO book VALUES ('72', 'img/01.jpg', 'I6.6s_INOj', '1', '44', 'pp', '44');
INSERT INTO book VALUES ('73', 'img/01.jpg', 'I6.6s_INOj', '1', '44', 'pp', '44');
INSERT INTO book VALUES ('74', 'img/01.jpg', 'I6.6s_INOj', '1', '44', 'pp', '44');
INSERT INTO book VALUES ('75', 'img/01.jpg', 'I6.6s_INOj', '1', '44', 'pp', '44');
INSERT INTO book VALUES ('76', 'img/01.jpg', 'I6.6s_INOj', '3', '44', 'pp', '132');
INSERT INTO book VALUES ('77', 'img/01.jpg', 'I6.6s_INOj', '1', '44', 'pp', '44');
INSERT INTO book VALUES ('78', 'img/01.jpg', 'I6.6s_INOj', '4', '44', 'pp', '176');
INSERT INTO book VALUES ('79', 'img/01.jpg', 'I6.6s_INOj', '1', '44', 'null', '44');
INSERT INTO book VALUES ('80', 'img/01.jpg', 'I6.6s_INOj', '1', '44', 'null', '44');
INSERT INTO book VALUES ('81', 'img/01.jpg', 'I6.6s_INOj', '1', '44', 'null', '44');
INSERT INTO book VALUES ('84', 'img/01.jpg', 'I6.6s_INOj', '1', '44', 'aaa', '44');
INSERT INTO book VALUES ('85', 'img/01.jpg', 'I6.6s_INOj', '1', '44', 'null', '44');
INSERT INTO book VALUES ('86', 'img/01.jpg', 'I6.6s_INOj', '1', '44', 'null', '44');
INSERT INTO book VALUES ('87', 'img/01.jpg', 'I6.6s_INOj', '1', '44', 'yyyo', '44');
INSERT INTO book VALUES ('88', 'img/01.jpg', 'I6.6s_INOj', '1', '44', 'aaa', '44');
INSERT INTO book VALUES ('89', 'img/01.jpg', 'I6.6s_INOj', '1', '44', 'yyyo', '44');
INSERT INTO book VALUES ('90', 'img/01.jpg', 'I6.6s_INOj', '1', '44', 'yyyo', '44');
INSERT INTO book VALUES ('91', 'img/01.jpg', 'I6.6s_INOj', '1', '44', 'null', '44');
INSERT INTO book VALUES ('92', 'img/01.jpg', 'I6.6s_INOj', '1', '44', 'null', '44');
INSERT INTO book VALUES ('93', 'img/01.jpg', 'I6.6s_INOj', '1', '44', 'yyyo', '44');
INSERT INTO book VALUES ('94', 'img/01.jpg', 'I6.6s_INOj', '1', '44', 'yyyo', '44');
INSERT INTO book VALUES ('95', 'img/01.jpg', 'I6.6s_INOj', '1', '44', 'yyyo', '44');
INSERT INTO book VALUES ('96', 'img/02.jpg', 'I6.6s_Xmass', '1', '200', 'null', '200');
INSERT INTO book VALUES ('97', 'img/02.jpg', 'I6.6s_Xmass ', '1', '200', 'yyyo', '200');
INSERT INTO book VALUES ('98', 'img/03.jpg', 'I6.6s_Xmask', '1', '44', 'yyyo', '44');
INSERT INTO book VALUES ('99', 'img/03.jpg', 'I6.6s_Xmask', '1', '44', 'yyyo', '44');
INSERT INTO book VALUES ('100', 'img/02.jpg', 'I6.6s_Xmass ', '10', '200', 'null', '2000');
INSERT INTO book VALUES ('101', 'img/04.jpg', 'I6.6s_皮革霧漆-紫紅 手機殼', '1', '34', 'yyyo', '34');
INSERT INTO book VALUES ('102', 'img/05.jpg', 'I6.6s_全包覆-流沙灰 手機殼', '1', '77', 'yyyo', '77');
INSERT INTO book VALUES ('103', 'img/09.jpg', 'I6.6s_迪士尼 復古米奇 皮革系列', '1', '43', 'yyyo', '43');
INSERT INTO book VALUES ('104', 'img/10.jpg', 'I6.6s_迪士尼 復古胡迪 皮革系列', '1', '123', 'yyyo', '123');
INSERT INTO book VALUES ('105', 'img/44.jpg', 'I7.8_Gramas 日本東京 抗衝擊行李箱-白', '1', '99', 'yyyo', '99');
INSERT INTO book VALUES ('106', 'img/66.jpg', 'I7.8plus_kajsa 絨口袋插卡單蓋保護殼-灰', '1', '199', 'yyyo', '199');
INSERT INTO book VALUES ('107', 'img/66.jpg', 'I7.8plus_kajsa 絨口袋插卡單蓋保護殼-灰', '1', '199', 'yyyo', '199');
INSERT INTO book VALUES ('108', 'img/66.jpg', 'I7.8plus_kajsa 絨口袋插卡單蓋保護殼-灰', '1', '199', 'yyyo', '199');
INSERT INTO book VALUES ('109', 'img/02.jpg', 'I6.6s_Xmass ', '1', '200', 'yyyo', '200');
INSERT INTO book VALUES ('110', 'img/23.jpg', 'I6.6splus_HOCAR 爵士皮革保護手機殼 背蓋(暗紅)', '1', '88', 'yyyo', '88');
INSERT INTO book VALUES ('111', 'img/52.jpg', 'I7.8_紅點法鬥 手機殼', '1', '123', 'yyyo', '123');
INSERT INTO book VALUES ('112', 'img/72.jpg', 'I7.8plus_泡泡保護套 - 米奇', '1', '44', 'yyyo', '44');
INSERT INTO book VALUES ('113', 'img/09.jpg', 'I6.6s_迪士尼 復古米奇 皮革系列', '1', '43', 'yyyo', '43');
INSERT INTO book VALUES ('114', 'img/13.jpg', 'I6.6s_時尚通勤保護殼', '1', '43', 'yyyo', '43');
INSERT INTO book VALUES ('115', 'img/21.jpg', 'I6.6splus_HH 鋼化玻璃手機殼系列  防摔全包覆式(粉紅色)', '1', '33', 'yyyo', '33');
INSERT INTO book VALUES ('116', 'img/42.jpg', 'I7.8_Air Skin-極致輕薄保護殼', '1', '55', 'yyyo', '55');
INSERT INTO book VALUES ('117', 'img/01.jpg', 'I6.6s_INOj', '1', '44', 'yyyo', '44');
INSERT INTO book VALUES ('118', 'img/01.jpg', 'I6.6s_INOj', '4', '44', 'null', '176');
INSERT INTO book VALUES ('119', 'img/02.jpg', 'I6.6s_Xmass ', '1', '200', 'yyyo', '200');
INSERT INTO book VALUES ('120', 'img/50.jpg', 'I7.8_角落生物 疊疊款 硬式手機殼', '1', '99', 'yyyo', '99');
INSERT INTO book VALUES ('121', 'img/42.jpg', 'I7.8_Air Skin-極致輕薄保護殼', '1', '55', 'yyyo', '55');
INSERT INTO book VALUES ('122', 'img/66.jpg', 'I7.8plus_kajsa 絨口袋插卡單蓋保護殼-灰', '1', '199', 'yyyo', '199');
INSERT INTO book VALUES ('123', 'img/05.jpg', 'I6.6s_全包覆-流沙灰 手機殼', '1', '77', 'yyyo', '77');
INSERT INTO book VALUES ('124', 'img/52.jpg', 'I7.8_紅點法鬥 手機殼', '1', '123', 'yyyo', '123');
INSERT INTO book VALUES ('125', 'img/22.jpg', 'I6.6splus_HH 鋼化玻璃手機殼系列防摔全包覆式(白色)', '1', '32', 'yyyo', '32');
INSERT INTO book VALUES ('126', 'img/02.jpg', 'I6.6s_Xmass ', '1', '200', 'null', '200');
INSERT INTO book VALUES ('127', 'img/21.jpg', 'I6.6splus_HH 鋼化玻璃手機殼系列  防摔全包覆式(粉紅色)', '1', '33', 'null', '33');
INSERT INTO book VALUES ('128', 'img/01.jpg', 'I6.6s_INOj', '1', '44', 'ww', '44');
INSERT INTO book VALUES ('129', 'img/42.jpg', 'I7.8_Air Skin-極致輕薄保護殼', '1', '55', 'ww', '55');
INSERT INTO book VALUES ('130', 'img/66.jpg', 'I7.8plus_kajsa 絨口袋插卡單蓋保護殼-灰', '1', '199', 'ww', '199');
INSERT INTO book VALUES ('131', 'img/66.jpg', 'I7.8plus_kajsa 絨口袋插卡單蓋保護殼-灰', '1', '199', 'ww', '199');
INSERT INTO book VALUES ('132', 'img/21.jpg', 'I6.6splus_HH 鋼化玻璃手機殼系列  防摔全包覆式(粉紅色)', '1', '33', '12', '33');
INSERT INTO book VALUES ('133', 'img/44.jpg', 'I7.8_Gramas 日本東京 抗衝擊行李箱-白', '1', '99', 'ww', '99');
INSERT INTO book VALUES ('134', 'img/22.jpg', 'I6.6splus_HH 鋼化玻璃手機殼系列防摔全包覆式(白色)', '1', '32', 'ww', '32');
INSERT INTO book VALUES ('135', 'img/48.jpg', 'I7.8_X-Doria 極盾系列手機殼', '1', '65', 'ww', '65');
INSERT INTO book VALUES ('136', 'img/50.jpg', 'I7.8_角落生物 疊疊款 硬式手機殼', '1', '99', 'ww', '99');
INSERT INTO book VALUES ('137', 'img/01.jpg', 'I6.6s_INOj', '1', '44', 'ww', '44');
INSERT INTO book VALUES ('138', 'img/66.jpg', 'I7.8plus_kajsa 絨口袋插卡單蓋保護殼-灰', '1', '199', 'ww', '199');
INSERT INTO book VALUES ('139', 'img/03.jpg', 'I6.6s_Xmask', '1', '44', 'ww', '44');
INSERT INTO book VALUES ('140', 'img/23.jpg', 'I6.6splus_HOCAR 爵士皮革保護手機殼 背蓋(暗紅)', '1', '88', 'ww', '88');
INSERT INTO book VALUES ('141', 'img/02.jpg', 'I6.6s_Xmass ', '1', '200', 'ww', '200');
INSERT INTO book VALUES ('142', 'img/21.jpg', 'I6.6splus_HH 鋼化玻璃手機殼系列  防摔全包覆式(粉紅色)', '1', '33', 'null', '33');
INSERT INTO book VALUES ('143', 'img/01.jpg', 'I6.6s_INOj', '2', '44', 'null', '88');
INSERT INTO book VALUES ('144', 'img/01.jpg', 'I6.6s_INOj', '1000', '44', '123456', '44000');
INSERT INTO book VALUES ('145', 'img/02.jpg', 'I6.6s_Xmass ', '1', '200', 'aaaa', '200');
INSERT INTO book VALUES ('146', 'img/21.jpg', 'I6.6splus_HH 鋼化玻璃手機殼系列  防摔全包覆式(粉紅色)', '5', '33', '512224', '165');
INSERT INTO book VALUES ('147', 'img/02.jpg', 'I6.6s_Xmass ', '1000', '200', '123456', '200000');
INSERT INTO book VALUES ('148', 'img/02.jpg', 'I6.6s_Xmass ', '1000', '200', '123456', '200000');
INSERT INTO book VALUES ('149', 'img/80.jpg', 'I7.8plus_標準版軍規防摔殼手機保護殼', '1', '98', 'aaaa', '98');
INSERT INTO book VALUES ('150', 'img/03.jpg', 'I6.6s_Xmask', '100', '44', '5', '4400');
INSERT INTO book VALUES ('151', 'img/01.jpg', 'I6.6s_INOj', '2', '44', 'ww', '88');
INSERT INTO book VALUES ('152', 'img/66.jpg', 'I7.8plus_kajsa 絨口袋插卡單蓋保護殼-灰', '5', '199', 'aaaa', '995');
INSERT INTO book VALUES ('153', 'img/01.jpg', 'I6.6s_INOj', '1000', '44', '123456', '44000');
INSERT INTO book VALUES ('154', 'img/50.jpg', 'I7.8_角落生物 疊疊款 硬式手機殼', '200', '99', '5', '19800');
INSERT INTO book VALUES ('155', 'img/03.jpg', 'I6.6s_Xmask', '1', '44', 'ww', '44');
INSERT INTO book VALUES ('156', 'img/66.jpg', 'I7.8plus_kajsa 絨口袋插卡單蓋保護殼-灰', '999', '199', 'ccc', '198801');
INSERT INTO book VALUES ('157', 'img/23.jpg', 'I6.6splus_HOCAR 爵士皮革保護手機殼 背蓋(暗紅)', '2', '88', 'aaaa', '176');
INSERT INTO book VALUES ('158', 'img/66.jpg', 'I7.8plus_kajsa 絨口袋插卡單蓋保護殼-灰', '999', '199', 'ccc', '198801');
INSERT INTO book VALUES ('159', 'img/50.jpg', 'I7.8_角落生物 疊疊款 硬式手機殼', '1', '99', 'null', '99');
INSERT INTO book VALUES ('160', 'img/44.jpg', 'I7.8_Gramas 日本東京 抗衝擊行李箱-白', '4', '99', '123', '396');
INSERT INTO book VALUES ('161', 'img/21.jpg', 'I6.6splus_HH 鋼化玻璃手機殼系列  防摔全包覆式(粉紅色)', '4', '33', '1', '132');
INSERT INTO book VALUES ('162', 'img/50.jpg', 'I7.8_角落生物 疊疊款 硬式手機殼', '6', '99', '123', '594');
INSERT INTO book VALUES ('163', 'img/78.jpg', 'I7.8plus_透明彩繪空壓手機殼(妞妞舞)保護殼', '1000', '99', '5', '99000');
INSERT INTO book VALUES ('164', 'img/50.jpg', 'I7.8_角落生物 疊疊款 硬式手機殼', '1000', '99', '5', '99000');
INSERT INTO book VALUES ('165', 'img/21.jpg', 'I6.6splus_HH 鋼化玻璃手機殼系列  防摔全包覆式(粉紅色)', '500', '33', '5', '16500');
INSERT INTO book VALUES ('166', 'img/02.jpg', 'I6.6s_Xmass ', '1', '200', '1', '200');
INSERT INTO book VALUES ('167', 'img/01.jpg', 'I6.6s_INOj', '500', '44', '1', '22000');
INSERT INTO book VALUES ('168', 'img/01.jpg', 'I6.6s_INOj', '1', '44', '5', '44');
INSERT INTO book VALUES ('169', 'img/02.jpg', 'I6.6s_Xmass ', '1000', '200', 'null', '200000');
INSERT INTO book VALUES ('170', 'img/02.jpg', 'I6.6s_Xmass ', '1000', '200', 'ww', '200000');
INSERT INTO book VALUES ('171', 'img/02.jpg', 'I6.6s_Xmass ', '1000', '200', 'ww', '200000');
INSERT INTO book VALUES ('172', 'img/02.jpg', 'I6.6s_Xmass ', '1000', '200', 'ww', '200000');
INSERT INTO book VALUES ('173', 'img/42.jpg', 'I7.8_Air Skin-極致輕薄保護殼', '1', '55', 'null', '55');
INSERT INTO book VALUES ('174', 'img/42.jpg', 'I7.8_Air Skin-極致輕薄保護殼', '1', '55', 'ww', '55');
INSERT INTO book VALUES ('175', 'img/02.jpg', 'I6.6s_Xmass ', '1', '200', 'null', '200');
INSERT INTO book VALUES ('176', 'img/66.jpg', 'I7.8plus_kajsa 絨口袋插卡單蓋保護殼-灰', '1000', '199', '1', '199000');
INSERT INTO book VALUES ('177', 'img/66.jpg', 'I7.8plus_kajsa 絨口袋插卡單蓋保護殼-灰', '1000', '199', '1', '199000');
INSERT INTO book VALUES ('178', 'img/01.jpg', 'I6.6s_INOj', '3', '44', 'a112', '132');
INSERT INTO book VALUES ('179', 'img/23.jpg', 'I6.6splus_HOCAR 爵士皮革保護手機殼 背蓋(暗紅)', '1', '88', 'a112', '88');
INSERT INTO book VALUES ('180', 'img/66.jpg', 'I7.8plus_kajsa 絨口袋插卡單蓋保護殼-灰', '1', '199', 'a112', '199');
INSERT INTO book VALUES ('181', 'img/01.jpg', 'I6.6s_INOj', '1', '44', 'null', '44');
INSERT INTO book VALUES ('182', 'img/66.jpg', 'I7.8plus_kajsa 絨口袋插卡單蓋保護殼-灰', '1', '199', 'null', '199');
INSERT INTO book VALUES ('183', 'img/66.jpg', 'I7.8plus_kajsa 絨口袋插卡單蓋保護殼-灰', '1', '199', 'ww', '199');
INSERT INTO book VALUES ('184', 'img/02.jpg', 'I6.6s_Xmass ', '1', '200', 'ww', '200');
INSERT INTO book VALUES ('185', 'img/66.jpg', 'I7.8plus_kajsa 絨口袋插卡單蓋保護殼-灰', '1', '199', 'ww', '199');
INSERT INTO book VALUES ('186', 'img/73.jpg', 'I7.8plus_泡泡保護套 - 杯麵', '1', '66', 'ww', '66');
INSERT INTO book VALUES ('187', 'img/60.jpg', 'I7.8_真皮手機殼', '1', '236', 'ww', '236');
INSERT INTO book VALUES ('188', 'img/80.jpg', 'I7.8plus_標準版軍規防摔殼手機保護殼', '1', '98', 'ww', '98');
INSERT INTO book VALUES ('189', 'img/65.jpg', 'I7.8plus_GARMMA 蛋黃哥&馬來貘聯名 空壓氣墊防摔保護軟殼', '1', '77', 'ww', '77');
INSERT INTO book VALUES ('190', 'img/67.jpg', 'I7.8plus_KS防摔鑽殼-星象儀', '1', '100', 'ww', '100');
INSERT INTO book VALUES ('191', 'img/72.jpg', 'I7.8plus_泡泡保護套 - 米奇', '1', '44', 'ww', '44');
INSERT INTO book VALUES ('192', 'img/73.jpg', 'I7.8plus_泡泡保護套 - 杯麵', '1', '66', 'ww', '66');
INSERT INTO book VALUES ('193', 'img/66.jpg', 'I7.8plus_kajsa 絨口袋插卡單蓋保護殼-灰', '1', '199', 'ww', '199');
INSERT INTO book VALUES ('194', 'img/87.jpg', 'IX_SEIDIO DILE 軍規級四角防撞保護殼', '1', '140', 'ww', '140');
INSERT INTO book VALUES ('195', 'img/88.jpg', 'IX_UAG 頂級版耐衝擊保護殼-紅金', '1', '54', 'ww', '54');
INSERT INTO book VALUES ('196', 'img/90.jpg', 'IX_拉拉熊 Rilakkuma 變裝系列彩繪手機殼(狐狸黃)', '1', '88', 'ww', '88');
INSERT INTO book VALUES ('197', 'img/09.jpg', 'I6.6s_迪士尼 復古米奇 皮革系列', '1', '43', 'ww', '43');
INSERT INTO book VALUES ('198', 'img/60.jpg', 'I7.8_真皮手機殼', '1', '236', 'ww', '236');
INSERT INTO book VALUES ('199', 'img/22.jpg', 'I6.6splus_HH 鋼化玻璃手機殼系列防摔全包覆式(白色)', '1', '32', 'ww', '32');
INSERT INTO book VALUES ('200', 'img/24.jpg', 'I6.6splus_iJacket 大眼仔 矽膠軟套', '1', '78', 'ww', '78');
INSERT INTO book VALUES ('201', 'img/31.jpg', 'I6.6splus_WaKase Voyage 城事 - 台北 Taipei - 霧透軟殼', '1', '98', 'ww', '98');
INSERT INTO book VALUES ('202', 'img/31.jpg', 'I6.6splus_WaKase Voyage 城事 - 台北 Taipei - 霧透軟殼', '1', '98', 'ww', '98');

-- ----------------------------
-- Table structure for `counter`
-- ----------------------------
DROP TABLE IF EXISTS `counter`;
CREATE TABLE `counter` (
  `counter` int(11) NOT NULL,
  PRIMARY KEY (`counter`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of counter
-- ----------------------------
INSERT INTO counter VALUES ('243');

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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of guestbook
-- ----------------------------
INSERT INTO guestbook VALUES ('2', '李旭婷', 'hayohaiily@yahoo.com.tw', '12131321', '2017-12-30');
INSERT INTO guestbook VALUES ('4', '李旭婷', 'jessicazjes930029@yahoo.com.tw', '15151', '2018-01-02');
INSERT INTO guestbook VALUES ('5', '李旭婷', 'jessicazjes930029@yahoo.com.tw', '15151', '2018-01-02');
INSERT INTO guestbook VALUES ('6', '李旭婷', 'jessicazjes930029@yahoo.com.tw', '15151', '2018-01-02');
INSERT INTO guestbook VALUES ('7', '9888', '888', '888nnn8n8', '2018-01-03');
INSERT INTO guestbook VALUES ('8', '9999', '999', '999\r<br>ilil\r<br>09999', '2018-01-03');
INSERT INTO guestbook VALUES ('9', '101010101', '101010101', '1010fjije\r<br>gerg', '2018-01-03');
INSERT INTO guestbook VALUES ('10', '11111', '1111', '1111', '2018-01-03');
INSERT INTO guestbook VALUES ('11', '121212', '1212', '121212', '2018-01-03');
INSERT INTO guestbook VALUES ('12', '1313', '1313', '131313', '2018-01-03');
INSERT INTO guestbook VALUES ('18', 'joanna', 'okokis101@gmail.com', 'ofjweoijfoweijfiowjf', '2018-01-04');
INSERT INTO guestbook VALUES ('19', 'joanna', 'okokis101@gmail.com', 'ofjweoijfoweijfiowjf', '2018-01-04');
INSERT INTO guestbook VALUES ('20', 'fdfdf', 'dfdsf', 'dfdsfds\r<br>dfsfdf', '2018-01-04');
INSERT INTO guestbook VALUES ('26', '龍捲風', '123@gmail.com', 'hihi', '2018-01-06');
INSERT INTO guestbook VALUES ('27', '龍捲風', '123@gmail.com', '\r<br>我要史迪奇', '2018-01-06');
INSERT INTO guestbook VALUES ('28', '', '', '', '2018-01-06');
INSERT INTO guestbook VALUES ('29', 'dsf', 'sdf', 'fsd', '2018-01-06');
INSERT INTO guestbook VALUES ('30', '123', '123', '123', '2018-01-06');
INSERT INTO guestbook VALUES ('31', '888', '123@gmail.com', 'hohh', '2018-01-06');
INSERT INTO guestbook VALUES ('32', '123', '123', '454546454564546', '2018-01-06');
INSERT INTO guestbook VALUES ('33', '', '', '', '2018-01-06');
INSERT INTO guestbook VALUES ('34', '', '', '', '2018-01-06');
INSERT INTO guestbook VALUES ('35', '', '', '', '2018-01-08');

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
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of i6
-- ----------------------------
INSERT INTO i6 VALUES ('1', 'img/01.jpg', 'I6.6s_INOj', '44', '445', 'Y');
INSERT INTO i6 VALUES ('2', 'img/02.jpg', 'I6.6s_Xmass', '200', '66', 'Y');
INSERT INTO i6 VALUES ('3', 'img/03.jpg', 'I6.6s_Xmask', '44', '3', 'N');
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

-- ----------------------------
-- Table structure for `i6p`
-- ----------------------------
DROP TABLE IF EXISTS `i6p`;
CREATE TABLE `i6p` (
  `product_no` int(10) NOT NULL AUTO_INCREMENT,
  `num` varchar(255) DEFAULT NULL,
  `image_path` varchar(20) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `product_price` int(5) NOT NULL,
  `product_num` int(5) DEFAULT NULL,
  `YN` varchar(1) NOT NULL,
  PRIMARY KEY (`product_no`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of i6p
-- ----------------------------
INSERT INTO i6p VALUES ('1', '21.jsp', 'img/21.jpg', 'I6.6splus_HH 鋼化玻璃手機殼系列  防摔全包覆式(粉紅色)', '33', '43', 'Y');
INSERT INTO i6p VALUES ('2', '22.jsp', 'img/22.jpg', 'I6.6splus_HH 鋼化玻璃手機殼系列防摔全包覆式(白色)', '32', '56', 'Y');
INSERT INTO i6p VALUES ('3', '23.jsp', 'img/23.jpg', 'I6.6splus_HOCAR 爵士皮革保護手機殼 背蓋(暗紅)', '88', '5', 'Y');
INSERT INTO i6p VALUES ('4', '24.jsp', 'img/24.jpg', 'I6.6splus_iJacket 大眼仔 矽膠軟套', '78', '45', 'Y');
INSERT INTO i6p VALUES ('5', '25.jsp', 'img/25.jpg', 'I6.6splus_IPhone 6+棉花糖立體軟綿綿動物手機殼(仰頭貓)', '99', '56', 'Y');
INSERT INTO i6p VALUES ('6', '26.jsp', 'img/26.jpg', 'I6.6splus_LINE FRIENDS 透明硬式保護殼-綁架熊大', '199', '23', 'N');
INSERT INTO i6p VALUES ('7', '27.jsp', 'img/27.jpg', 'I6.6splus_Nexestek 全包覆流沙綠保護殼', '299', '55', 'Y');
INSERT INTO i6p VALUES ('8', '28.jsp', 'img/28.jpg', 'I6.6splus_Nexestek 類皮革款手機保護殼', '212', '243', 'N');
INSERT INTO i6p VALUES ('9', '29.jsp', 'img/29.jpg', 'I6.6splus_simpOcase光雕保護殼- 巴黎異想', '123', '24', 'Y');
INSERT INTO i6p VALUES ('10', '30.jsp', 'img/30.jpg', 'I6.6splus_UP2度c 紳士法鬥', '213', '55', 'Y');
INSERT INTO i6p VALUES ('11', '31.jsp', 'img/31.jpg', 'I6.6splus_WaKase', '98', '33', 'Y');
INSERT INTO i6p VALUES ('12', '32.jsp', 'img/32.jpg', 'I6.6splus_WK Design香港潮牌 美萊手機殼保護貼套組-可愛動物', '79', '22', 'Y');
INSERT INTO i6p VALUES ('13', '33.jsp', 'img/33.jpg', 'I6.6splus_少女手繪風保護貼+保護套組-愛麗絲(立體彩繪珍珠)', '69', '33', 'N');
INSERT INTO i6p VALUES ('14', '34.jsp', 'img/34.jpg', 'I6.6splus_優雅色系木紋軟殼', '99', '55', 'N');
INSERT INTO i6p VALUES ('15', '35.jsp', 'img/35.jpg', 'I6.6splus_迪士尼 米奇屁屁 背影系列 硬殼', '20', '3', 'N');
INSERT INTO i6p VALUES ('16', '36.jsp', 'img/36.jpg', 'I6.6splus_凌度系列 拆卸式透明手機殼 手機套 金', '66', '3', 'Y');
INSERT INTO i6p VALUES ('17', '37.jsp', 'img/37.jpg', 'I6.6splus_氣墊空壓漸變保護套', '78', '52', 'N');
INSERT INTO i6p VALUES ('18', '38.jsp', 'img/38.jpg', 'I6.6splus_搖滾巨星印花手機殼 Seohwa Kim設計款', '22', '5', 'Y');
INSERT INTO i6p VALUES ('19', '39.jsp', 'img/39.jpg', 'I6.6splus_瑞典大理石紋手機保護殼 義大利西恩納皇家灰', '99', '5', 'N');
INSERT INTO i6p VALUES ('20', '40.jsp', 'img/40.jpg', 'I6.6splus_瑞典北歐時尚手機保護殼 加州棕櫚泉', '88', '435', 'Y');

-- ----------------------------
-- Table structure for `i78`
-- ----------------------------
DROP TABLE IF EXISTS `i78`;
CREATE TABLE `i78` (
  `product_no` int(10) NOT NULL AUTO_INCREMENT,
  `num` varchar(255) DEFAULT NULL,
  `image_path` varchar(20) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `product_price` int(5) NOT NULL,
  `product_num` int(5) DEFAULT NULL,
  `YN` varchar(1) NOT NULL,
  PRIMARY KEY (`product_no`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of i78
-- ----------------------------
INSERT INTO i78 VALUES ('1', '41.jsp', 'img/41.jpg', 'I7.8_adidas TPU 彩繪系列手機殼 珊瑚', '33', '234', 'N');
INSERT INTO i78 VALUES ('2', '42.jsp', 'img/42.jpg', 'I7.8_Air Skin-極致輕薄保護殼', '55', '5345', 'Y');
INSERT INTO i78 VALUES ('3', '43.jsp', 'img/43.jpg', 'I7.8_BYEBYECHUCHU 掰掰啾啾-奧樂雞 WaKase', '75', '45', 'N');
INSERT INTO i78 VALUES ('4', '44.jsp', 'img/44.jpg', 'I7.8_Gramas 日本東京 抗衝擊行李箱-白', '99', '54', 'Y');
INSERT INTO i78 VALUES ('5', '45.jsp', 'img/45.jpg', 'I7.8_MONOCOZZI Ultra Slim 超薄保護殼', '87', '66', 'N');
INSERT INTO i78 VALUES ('6', '46.jsp', 'img/46.jpg', 'I7.8_NILLKIN 卡仕商務手機殼', '76', '44', 'Y');
INSERT INTO i78 VALUES ('7', '47.jsp', 'img/47.jpg', 'I7.8_ONUSK Cattitude 手機保護殼-藍', '55', '33', 'N');
INSERT INTO i78 VALUES ('8', '48.jsp', 'img/48.jpg', 'I7.8_X-Doria 極盾系列手機殼', '65', '56', 'Y');
INSERT INTO i78 VALUES ('9', '49.jsp', 'img/49.jpg', 'I7.8_石墨黑系列高質感側邊防滑手機殼-宇宙火箭', '57', '22', 'N');
INSERT INTO i78 VALUES ('10', '50.jsp', 'img/50.jpg', 'I7.8_角落生物 疊疊款 硬式手機殼', '99', '55', 'Y');
INSERT INTO i78 VALUES ('11', '51.jsp', 'img/51.jpg', 'I7.8_拉拉熊 經典咖啡款 口袋皮革系列 硬式手機殼', '23', '66', 'N');
INSERT INTO i78 VALUES ('12', '52.jsp', 'img/52.jpg', 'I7.8_紅點法鬥 手機殼', '123', '4', 'Y');
INSERT INTO i78 VALUES ('13', '53.jsp', 'img/53.jpg', 'I7.8_英倫風絨布拼接撞色 可插卡 手機殼', '212', '6', 'N');
INSERT INTO i78 VALUES ('14', '54.jsp', 'img/54.jpg', 'I7.8_迪士尼 三眼怪透明亂花 硬式手機殼', '199', '4', 'Y');
INSERT INTO i78 VALUES ('15', '55.jsp', 'img/55.jpg', 'I7.8_迪士尼 小熊維尼 金箔 透明硬式手機殼', '100', '34', 'N');
INSERT INTO i78 VALUES ('16', '56.jsp', 'img/56.jpg', 'I7.8_迪士尼 米奇牛仔藍 皮革系列 硬式手機殼', '150', '45', 'Y');
INSERT INTO i78 VALUES ('17', '57.jsp', 'img/57.jpg', 'I7.8_迪士尼 披薩三眼怪 皮革系列 硬式手機殼', '130', '45', 'N');
INSERT INTO i78 VALUES ('18', '58.jsp', 'img/58.jpg', 'I7.8_迪士尼 蛋頭先生透明亂花 硬式手機殼', '145', '657', 'Y');
INSERT INTO i78 VALUES ('19', '59.jsp', 'img/59.jpg', 'I7.8_迪士尼 復古米奇 口袋皮革 手機殼', '154', '9', 'N');
INSERT INTO i78 VALUES ('20', '60.jsp', 'img/60.jpg', 'I7.8_真皮手機殼', '236', '8', 'Y');

-- ----------------------------
-- Table structure for `i78p`
-- ----------------------------
DROP TABLE IF EXISTS `i78p`;
CREATE TABLE `i78p` (
  `product_no` int(10) NOT NULL AUTO_INCREMENT,
  `num` varchar(255) DEFAULT NULL,
  `image_path` varchar(20) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `product_price` int(5) NOT NULL,
  `product_num` int(5) DEFAULT NULL,
  `YN` varchar(1) NOT NULL,
  PRIMARY KEY (`product_no`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of i78p
-- ----------------------------
INSERT INTO i78p VALUES ('1', '61.jsp', 'img/61.jpg', 'I7.8plus_APPLE 原廠 矽膠保護殼', '55', '5', 'N');
INSERT INTO i78p VALUES ('2', '62.jsp', 'img/62.jpg', 'I7.8plus_Baseus倍思 簡約皮套 滑動接聽 支架手機殼 保護套', '65', '3', 'N');
INSERT INTO i78p VALUES ('3', 'i63.jsp', 'img/63.jpg', 'I7.8plus_ESR億色 輕薄磨砂防指紋手機保護殼套', '89', '56', 'N');
INSERT INTO i78p VALUES ('4', '64.jsp', 'img/64.jpg', 'I7.8plus_GARMMA LAIMO馬來貘 空壓氣墊防摔保護軟殼', '99', '6', 'N');
INSERT INTO i78p VALUES ('5', '65.jsp', 'img/65.jpg', 'I7.8plus_GARMMA 蛋黃哥&馬來貘聯名 空壓氣墊防摔保護軟殼', '77', '7', 'Y');
INSERT INTO i78p VALUES ('6', '66.jsp', 'img/66.jpg', 'I7.8plus_kajsa 絨口袋插卡單蓋保護殼-灰', '199', '8', 'Y');
INSERT INTO i78p VALUES ('7', '67.jsp', 'img/67.jpg', 'I7.8plus_KS防摔鑽殼-星象儀', '100', '9', 'Y');
INSERT INTO i78p VALUES ('8', '68.jsp', 'img/68.jpg', 'I7.8plus_OtterBox炫彩幾何系列保護殼-粉藍', '150', '5', 'N');
INSERT INTO i78p VALUES ('9', '69.jsp', 'img/69.jpg', 'I7.8plus_UP2度C-英式風兔子', '210', '6', 'N');
INSERT INTO i78p VALUES ('10', '70.jsp', 'img/70.jpg', 'I7.8plus_刀鋒奢華 鋁合金+木紋 防摔保護殼', '43', '66', 'N');
INSERT INTO i78p VALUES ('11', '71.jsp', 'img/71.jpg', 'I7.8plus_史努比 SNOOPY 漸層彩繪軟式手機殼(跳跳)', '55', '5', 'N');
INSERT INTO i78p VALUES ('12', '72.jsp', 'img/72.jpg', 'I7.8plus_泡泡保護套 - 米奇', '44', '7', 'Y');
INSERT INTO i78p VALUES ('13', '73.jsp', 'img/73.jpg', 'I7.8plus_泡泡保護套 - 杯麵', '66', '7', 'Y');
INSERT INTO i78p VALUES ('14', '74.jsp', 'img/74.jpg', 'I7.8plus_泡泡保護套 - 貓咪', '77', '3', 'Y');
INSERT INTO i78p VALUES ('15', '75.jsp', 'img/75.jpg', 'I7.8plus_泡泡保護套 - 貓熊', '88', '7', 'Y');
INSERT INTO i78p VALUES ('16', '76.jsp', 'img/76.jpg', 'I7.8plus_哆啦A夢手機殼', '99', '3', 'N');
INSERT INTO i78p VALUES ('17', '77.jsp', 'img/77.jpg', 'I7.8plus_真皮經典款保護殼', '90', '3', 'N');
INSERT INTO i78p VALUES ('18', '78.jsp', 'img/78.jpg', 'I7.8plus_透明彩繪空壓手機殼(妞妞舞)保護殼', '99', '2', 'Y');
INSERT INTO i78p VALUES ('19', '79.jsp', 'img/79.jpg', 'I7.8plus_極薄時尚皮革保護殼', '98', '6', 'N');
INSERT INTO i78p VALUES ('20', '80.jsp', 'img/80.jpg', 'I7.8plus_標準版軍規防摔殼手機保護殼', '98', '4', 'Y');
INSERT INTO i78p VALUES ('21', '81.jsp', 'img/81.jpg', 'I7.8plus_韓系5色 大理石手機殼', '199', '3', 'N');

-- ----------------------------
-- Table structure for `ix`
-- ----------------------------
DROP TABLE IF EXISTS `ix`;
CREATE TABLE `ix` (
  `product_no` int(10) NOT NULL AUTO_INCREMENT,
  `num` varchar(255) NOT NULL,
  `image_path` varchar(20) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `product_price` int(5) NOT NULL,
  `product_num` int(5) DEFAULT NULL,
  `YN` varchar(1) NOT NULL,
  PRIMARY KEY (`product_no`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ix
-- ----------------------------
INSERT INTO ix VALUES ('1', '82.jsp', 'img/82.jpg', 'IX_ Minions小小兵 空壓安全手機殼(筆記本) 保護殼', '99', '2', 'Y');
INSERT INTO ix VALUES ('2', '83.jsp', 'img/83.jpg', 'IX_Folio 皮革保護殼', '199', '9', 'N');
INSERT INTO ix VALUES ('3', '84.jsp', 'img/84.jpg', 'IX_iDeal Of Sweden 瑞典大理石紋手機保護殼-義大利卡拉卡塔海洋金', '212', '5', 'N');
INSERT INTO ix VALUES ('4', '85.jsp', 'img/85.jpg', 'IX_Mokka 時尚木紋 插卡 手機殼', '160', '6', 'N');
INSERT INTO ix VALUES ('5', '86.jsp', 'img/86.jpg', 'IX_OtterBox 通勤者系列保護殼-淺綠', '150', '7', 'N');
INSERT INTO ix VALUES ('6', '87.jsp', 'img/87.jpg', 'IX_SEIDIO DILE 軍規級四角防撞保護殼', '140', '4', 'Y');
INSERT INTO ix VALUES ('7', '88.jsp', 'img/88.jpg', 'IX_UAG 頂級版耐衝擊保護殼-紅金', '54', '3', 'Y');
INSERT INTO ix VALUES ('8', '90.jsp', 'img/90.jpg', 'IX_拉拉熊 Rilakkuma 變裝系列彩繪手機殼(狐狸黃)', '88', '5', 'Y');

-- ----------------------------
-- Table structure for `member`
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
  `num_NO` int(11) NOT NULL,
  `id` varchar(20) NOT NULL,
  `pwd` varchar(20) NOT NULL,
  `name` varchar(10) NOT NULL,
  `sex` varchar(255) NOT NULL,
  `birthday` date NOT NULL,
  `address` varchar(255) NOT NULL,
  `tel` varchar(10) NOT NULL,
  `email` varchar(40) NOT NULL,
  PRIMARY KEY (`num_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO member VALUES ('1', 'WGRG', 'WEQ', 'GRERG', '女', '2017-12-21', 'ccc', 'JQW', 'ERGEdfdaf');
INSERT INTO member VALUES ('2', 'joanna', 'nbbb', 'obob', '女', '2017-12-22', 'fewf', 'nnjb', 'ewf');
INSERT INTO member VALUES ('3', 'dg', 'feg', 'rher', '男', '2017-12-19', 'rgre', 'gerg', 'ujj');
INSERT INTO member VALUES ('4', '54y4', 'huih', 'hib', '女', '2017-12-06', 'rth', 'ge', 'thr');
INSERT INTO member VALUES ('6', 'hreh', 'htw', 'he', '男', '2018-01-18', 'gggggrrr', 'hw', 'greqgrewg');

-- ----------------------------
-- Table structure for `product`
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `product_no` int(10) NOT NULL AUTO_INCREMENT,
  `image_path` varchar(20) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `product_price` int(5) NOT NULL,
  `product_num` int(5) DEFAULT NULL,
  `YN` varchar(1) NOT NULL,
  PRIMARY KEY (`product_no`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO product VALUES ('1', 'img/01.jpg', 'I6.6s_INOj', '44', '442', 'Y');
INSERT INTO product VALUES ('2', 'img/02.jpg', 'I6.6s_Xmass', '200', '-1002', 'Y');
INSERT INTO product VALUES ('3', 'img/03.jpg', 'I6.6s_Xmask', '44', '3', 'N');
INSERT INTO product VALUES ('4', 'img/04.jpg', 'I6.6s_皮革霧漆-紫紅 手機殼', '34', '2000', 'Y');
INSERT INTO product VALUES ('5', 'img/05.jpg', 'I6.6s_全包覆-流沙灰 手機殼', '77', '1999', 'Y');
INSERT INTO product VALUES ('6', 'img/06.jpg', 'I6.6s_全包覆-流沙綠 手機殼', '43', '2000', 'N');
INSERT INTO product VALUES ('7', 'img/07.jpg', 'I6.6s_怪獸大學', '55', '2000', 'N');
INSERT INTO product VALUES ('8', 'img/08.jpg', 'I6.6s_泡泡保護套 - 三眼外星人 熊抱哥', '223', '2000', 'N');
INSERT INTO product VALUES ('9', 'img/09.jpg', 'I6.6s_迪士尼 復古米奇 皮革系列', '43', '2000', 'Y');
INSERT INTO product VALUES ('10', 'img/10.jpg', 'I6.6s_迪士尼 復古胡迪 皮革系列 ', '123', '2000', 'Y');
INSERT INTO product VALUES ('11', 'img/11.jpg', 'I6.6s_迪士尼 復古唐老鴨 皮革系列 ', '234', '2000', 'Y');
INSERT INTO product VALUES ('12', 'img/12.jpg', 'I6.6s_原木防摔-橘 手機殼', '213', '2000', 'Y');
INSERT INTO product VALUES ('13', 'img/13.jpg', 'I6.6s_時尚通勤保護殼', '43', '2000', 'Y');
INSERT INTO product VALUES ('14', 'img/14.jpg', 'I6.6s_時尚撞色雙層防摔殼-檸檬黃+綠色', '233', '2000', 'N');
INSERT INTO product VALUES ('15', 'img/15.jpg', 'I6.6s_笑臉怪獸保護殼', '88', '2000', 'N');
INSERT INTO product VALUES ('16', 'img/16.jpg', 'I6.6s_蛋黃哥透明軟式保護殼', '99', '2000', 'N');
INSERT INTO product VALUES ('17', 'img/17.jpg', 'I6.6s_斯文法鬥 i6軟殼', '66', '2000', 'N');
INSERT INTO product VALUES ('18', 'img/18.jpg', 'I6.6s_黃色小鴨水中游 硬殼手機殼', '55', '2000', 'N');
INSERT INTO product VALUES ('19', 'img/19.jpg', 'I6.6s_誘惑紅唇印花手機殼 Barracuda Studio設計款', '77', '2000', 'Y');
INSERT INTO product VALUES ('20', 'img/20.jpg', 'I6.6s_輕薄保護殼-薄荷綠', '20', '2000', 'Y');
INSERT INTO product VALUES ('21', 'img/21.jpg', 'I6.6splus_HH 鋼化玻璃手機殼系列  防摔全包覆式(粉紅色)', '33', '1490', 'Y');
INSERT INTO product VALUES ('22', 'img/22.jpg', 'I6.6splus_HH 鋼化玻璃手機殼系列防摔全包覆式(白色)', '32', '2000', 'Y');
INSERT INTO product VALUES ('23', 'img/23.jpg', 'I6.6splus_HOCAR 爵士皮革保護手機殼 背蓋(暗紅)', '88', '1997', 'Y');
INSERT INTO product VALUES ('24', 'img/24.jpg', 'I6.6splus_iJacket 大眼仔 矽膠軟套', '78', '2000', 'Y');
INSERT INTO product VALUES ('25', 'img/25.jpg', 'I6.6splus_IPhone 6+棉花糖立體軟綿綿動物手機殼(仰頭貓)', '99', '2000', 'Y');
INSERT INTO product VALUES ('26', 'img/26.jpg', 'I6.6splus_LINE FRIENDS 透明硬式保護殼-綁架熊大', '199', '2000', 'N');
INSERT INTO product VALUES ('27', 'img/27.jpg', 'I6.6splus_Nexestek 全包覆流沙綠保護殼', '299', '2000', 'Y');
INSERT INTO product VALUES ('28', 'img/28.jpg', 'I6.6splus_Nexestek 類皮革款手機保護殼', '212', '2000', 'N');
INSERT INTO product VALUES ('29', 'img/29.jpg', 'I6.6splus_simpOcase光雕保護殼- 巴黎異想', '123', '2000', 'Y');
INSERT INTO product VALUES ('30', 'img/30.jpg', 'I6.6splus_UP2度c 紳士法鬥', '213', '2000', 'Y');
INSERT INTO product VALUES ('31', 'img/31.jpg', 'I6.6splus_WaKase Voyage 城事 - 台北 Taipei - 霧透軟殼', '98', '2000', 'Y');
INSERT INTO product VALUES ('32', 'img/32.jpg', 'I6.6splus_WK Design香港潮牌 美萊手機殼保護貼套組-可愛動物', '79', '2000', 'Y');
INSERT INTO product VALUES ('33', 'img/33.jpg', 'I6.6splus_少女手繪風保護貼+保護套組-愛麗絲(立體彩繪珍珠)', '69', '2000', 'N');
INSERT INTO product VALUES ('34', 'img/34.jpg', 'I6.6splus_優雅色系木紋軟殼', '99', '2000', 'N');
INSERT INTO product VALUES ('35', 'img/35.jpg', 'I6.6splus_迪士尼 米奇屁屁 背影系列 硬殼', '20', '2000', 'N');
INSERT INTO product VALUES ('36', 'img/36.jpg', 'I6.6splus_凌度系列 拆卸式透明手機殼 手機套 金', '66', '2000', 'Y');
INSERT INTO product VALUES ('37', 'img/37.jpg', 'I6.6splus_氣墊空壓漸變保護套', '78', '2000', 'N');
INSERT INTO product VALUES ('38', 'img/38.jpg', 'I6.6splus_搖滾巨星印花手機殼 Seohwa Kim設計款', '22', '2000', 'Y');
INSERT INTO product VALUES ('39', 'img/39.jpg', 'I6.6splus_瑞典大理石紋手機保護殼 義大利西恩納皇家灰', '99', '2000', 'N');
INSERT INTO product VALUES ('40', 'img/40.jpg', 'I6.6splus_瑞典北歐時尚手機保護殼 加州棕櫚泉', '88', '2000', 'Y');
INSERT INTO product VALUES ('41', 'img/41.jpg', 'I7.8_adidas TPU 彩繪系列手機殼 珊瑚', '33', '2000', 'N');
INSERT INTO product VALUES ('42', 'img/42.jpg', 'I7.8_Air Skin-極致輕薄保護殼', '55', '5342', 'Y');
INSERT INTO product VALUES ('43', 'img/43.jpg', 'I7.8_BYEBYECHUCHU 掰掰啾啾-奧樂雞 WaKase', '75', '2000', 'N');
INSERT INTO product VALUES ('44', 'img/44.jpg', 'I7.8_Gramas 日本東京 抗衝擊行李箱-白', '99', '1996', 'Y');
INSERT INTO product VALUES ('45', 'img/45.jpg', 'I7.8_MONOCOZZI Ultra Slim 超薄保護殼', '87', '2000', 'N');
INSERT INTO product VALUES ('46', 'img/46.jpg', 'I7.8_NILLKIN 卡仕商務手機殼', '76', '2000', 'Y');
INSERT INTO product VALUES ('47', 'img/47.jpg', 'I7.8_ONUSK Cattitude 手機保護殼-藍', '55', '2000', 'N');
INSERT INTO product VALUES ('48', 'img/48.jpg', 'I7.8_X-Doria 極盾系列手機殼', '65', '2000', 'Y');
INSERT INTO product VALUES ('49', 'img/49.jpg', 'I7.8_石墨黑系列高質感側邊防滑手機殼-宇宙火箭', '57', '2000', 'N');
INSERT INTO product VALUES ('50', 'img/50.jpg', 'I7.8_角落生物 疊疊款 硬式手機殼', '99', '1793', 'Y');
INSERT INTO product VALUES ('51', 'img/51.jpg', 'I7.8_拉拉熊 經典咖啡款 口袋皮革系列 硬式手機殼', '23', '2000', 'N');
INSERT INTO product VALUES ('52', 'img/52.jpg', 'I7.8_紅點法鬥 手機殼', '123', '2000', 'Y');
INSERT INTO product VALUES ('53', 'img/53.jpg', 'I7.8_英倫風絨布拼接撞色 可插卡 手機殼', '212', '2000', 'N');
INSERT INTO product VALUES ('54', 'img/54.jpg', 'I7.8_迪士尼 三眼怪透明亂花 硬式手機殼', '199', '2000', 'Y');
INSERT INTO product VALUES ('55', 'img/55.jpg', 'I7.8_迪士尼 小熊維尼 金箔 透明硬式手機殼', '100', '2000', 'N');
INSERT INTO product VALUES ('56', 'img/56.jpg', 'I7.8_迪士尼 米奇牛仔藍 皮革系列 硬式手機殼', '150', '2000', 'Y');
INSERT INTO product VALUES ('57', 'img/57.jpg', 'I7.8_迪士尼 披薩三眼怪 皮革系列 硬式手機殼', '130', '2000', 'N');
INSERT INTO product VALUES ('58', 'img/58.jpg', 'I7.8_迪士尼 蛋頭先生透明亂花 硬式手機殼', '145', '2000', 'Y');
INSERT INTO product VALUES ('59', 'img/59.jpg', 'I7.8_迪士尼 復古米奇 口袋皮革 手機殼', '154', '2000', 'N');
INSERT INTO product VALUES ('60', 'img/60.jpg', 'I7.8_真皮手機殼', '236', '2000', 'Y');
INSERT INTO product VALUES ('61', 'img/61.jpg', 'I7.8plus_APPLE 原廠 矽膠保護殼', '55', '2000', 'N');
INSERT INTO product VALUES ('62', 'img/62.jpg', 'I7.8plus_Baseus倍思 簡約皮套 滑動接聽 支架手機殼 保護套', '65', '2000', 'N');
INSERT INTO product VALUES ('63', 'img/63.jpg', 'I7.8plus_ESR億色 輕薄磨砂防指紋手機保護殼套', '89', '2000', 'N');
INSERT INTO product VALUES ('64', 'img/64.jpg', 'I7.8plus_GARMMA LAIMO馬來貘 空壓氣墊防摔保護軟殼', '99', '2000', 'N');
INSERT INTO product VALUES ('65', 'img/65.jpg', 'I7.8plus_GARMMA 蛋黃哥&馬來貘聯名 空壓氣墊防摔保護軟殼', '77', '2000', 'Y');
INSERT INTO product VALUES ('66', 'img/66.jpg', 'I7.8plus_kajsa 絨口袋插卡單蓋保護殼-灰', '199', '1', 'Y');
INSERT INTO product VALUES ('67', 'img/67.jpg', 'I7.8plus_KS防摔鑽殼-星象儀', '100', '2000', 'Y');
INSERT INTO product VALUES ('68', 'img/68.jpg', 'I7.8plus_OtterBox炫彩幾何系列保護殼-粉藍', '150', '2000', 'N');
INSERT INTO product VALUES ('69', 'img/69.jpg', 'I7.8plus_UP2度C-英式風兔子', '210', '2000', 'N');
INSERT INTO product VALUES ('70', 'img/70.jpg', 'I7.8plus_刀鋒奢華 鋁合金+木紋 防摔保護殼', '43', '2000', 'N');
INSERT INTO product VALUES ('71', 'img/71.jpg', 'I7.8plus_史努比 SNOOPY 漸層彩繪軟式手機殼(跳跳)', '55', '2000', 'N');
INSERT INTO product VALUES ('72', 'img/72.jpg', 'I7.8plus_泡泡保護套 - 米奇', '44', '2000', 'Y');
INSERT INTO product VALUES ('73', 'img/73.jpg', 'I7.8plus_泡泡保護套 - 杯麵', '66', '2000', 'Y');
INSERT INTO product VALUES ('74', 'img/74.jpg', 'I7.8plus_泡泡保護套 - 貓咪', '77', '2000', 'Y');
INSERT INTO product VALUES ('75', 'img/75.jpg', 'I7.8plus_泡泡保護套 - 貓熊', '88', '2000', 'Y');
INSERT INTO product VALUES ('76', 'img/76.jpg', 'I7.8plus_哆啦A夢手機殼', '99', '2000', 'N');
INSERT INTO product VALUES ('77', 'img/77.jpg', 'I7.8plus_真皮經典款保護殼', '90', '2000', 'N');
INSERT INTO product VALUES ('78', 'img/78.jpg', 'I7.8plus_透明彩繪空壓手機殼(妞妞舞)保護殼', '99', '0', 'Y');
INSERT INTO product VALUES ('79', 'img/79.jpg', 'I7.8plus_極薄時尚皮革保護殼', '98', '2000', 'N');
INSERT INTO product VALUES ('80', 'img/80.jpg', 'I7.8plus_標準版軍規防摔殼手機保護殼', '98', '1999', 'Y');
INSERT INTO product VALUES ('81', 'img/81.jpg', 'I7.8plus_韓系5色 大理石手機殼', '199', '2000', 'N');
INSERT INTO product VALUES ('82', 'img/82.jpg', 'IX_ Minions小小兵 空壓安全手機殼(筆記本) 保護殼', '99', '2000', 'Y');
INSERT INTO product VALUES ('83', 'img/83.jpg', 'IX_Folio 皮革保護殼', '199', '2000', 'N');
INSERT INTO product VALUES ('84', 'img/84.jpg', 'IX_iDeal Of Sweden 瑞典大理石紋手機保護殼-義大利卡拉卡塔海洋金', '212', '2000', 'N');
INSERT INTO product VALUES ('85', 'img/85.jpg', 'IX_Mokka 時尚木紋 插卡 手機殼', '160', '2000', 'N');
INSERT INTO product VALUES ('86', 'img/86.jpg', 'IX_OtterBox 通勤者系列保護殼-淺綠', '150', '2000', 'N');
INSERT INTO product VALUES ('87', 'img/87.jpg', 'IX_SEIDIO DILE 軍規級四角防撞保護殼', '140', '2000', 'Y');
INSERT INTO product VALUES ('88', 'img/88.jpg', 'IX_UAG 頂級版耐衝擊保護殼-紅金', '54', '2000', 'Y');
INSERT INTO product VALUES ('90', 'img/90.jpg', 'IX_拉拉熊 Rilakkuma 變裝系列彩繪手機殼(狐狸黃)', '88', '2000', 'Y');

-- ----------------------------
-- Table structure for `randad`
-- ----------------------------
DROP TABLE IF EXISTS `randad`;
CREATE TABLE `randad` (
  `ADID` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `Alternate` text NOT NULL,
  `ADContent` text NOT NULL,
  PRIMARY KEY (`ADID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of randad
-- ----------------------------
INSERT INTO randad VALUES ('1', '歡迎進入留言板', '歡迎進入留言板');
INSERT INTO randad VALUES ('2', '留個言吧~', '留個言吧~');
INSERT INTO randad VALUES ('3', '趕緊商品區特價拍賣', '趕緊商品區特價拍賣');

-- ----------------------------
-- Table structure for `shoporder`
-- ----------------------------
DROP TABLE IF EXISTS `shoporder`;
CREATE TABLE `shoporder` (
  `no` int(255) NOT NULL AUTO_INCREMENT,
  `img` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `quantity` varchar(10) NOT NULL,
  `price` int(10) NOT NULL,
  `id` varchar(255) NOT NULL,
  `new_totalprice` int(11) NOT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=205 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shoporder
-- ----------------------------
INSERT INTO shoporder VALUES ('29', 'img/01.jpg', 'I6.6s_INOj', '1', '44', 'null', '44');
INSERT INTO shoporder VALUES ('34', 'img/01.jpg', 'I6.6s_INOj', '1', '44', 'null', '44');
INSERT INTO shoporder VALUES ('36', 'img/01.jpg', 'I6.6s_INOj', '1', '44', 'null', '44');
INSERT INTO shoporder VALUES ('37', 'img/01.jpg', 'I6.6s_INOj', '1', '44', 'null', '44');
INSERT INTO shoporder VALUES ('38', 'img/01.jpg', 'I6.6s_INOj', '1', '44', 'null', '44');
INSERT INTO shoporder VALUES ('39', 'img/01.jpg', 'I6.6s_INOj', '1', '44', 'null', '44');
INSERT INTO shoporder VALUES ('40', 'img/01.jpg', 'I6.6s_INOj', '1', '44', 'null', '44');
INSERT INTO shoporder VALUES ('41', 'img/01.jpg', 'I6.6s_INOj', '1', '44', 'null', '44');
INSERT INTO shoporder VALUES ('81', 'img/01.jpg', 'I6.6s_INOj', '1', '44', 'null', '44');
INSERT INTO shoporder VALUES ('82', 'img/01.jpg', 'I6.6s_INOj', '1', '44', 'null', '44');
INSERT INTO shoporder VALUES ('83', 'img/01.jpg', 'I6.6s_INOj', '1', '44', 'null', '44');
INSERT INTO shoporder VALUES ('86', 'img/01.jpg', 'I6.6s_INOj', '1', '44', 'aaa', '44');
INSERT INTO shoporder VALUES ('87', 'img/01.jpg', 'I6.6s_INOj', '1', '44', 'null', '44');
INSERT INTO shoporder VALUES ('88', 'img/01.jpg', 'I6.6s_INOj', '1', '44', 'null', '44');
INSERT INTO shoporder VALUES ('90', 'img/01.jpg', 'I6.6s_INOj', '1', '44', 'aaa', '44');
INSERT INTO shoporder VALUES ('93', 'img/01.jpg', 'I6.6s_INOj', '1', '44', 'null', '44');
INSERT INTO shoporder VALUES ('94', 'img/01.jpg', 'I6.6s_INOj', '1', '44', 'null', '44');
INSERT INTO shoporder VALUES ('98', 'img/02.jpg', 'I6.6s_Xmass', '1', '200', 'null', '200');
INSERT INTO shoporder VALUES ('102', 'img/02.jpg', 'I6.6s_Xmass ', '10', '200', 'null', '2000');
INSERT INTO shoporder VALUES ('120', 'img/01.jpg', 'I6.6s_INOj', '4', '44', 'null', '176');
INSERT INTO shoporder VALUES ('128', 'img/02.jpg', 'I6.6s_Xmass ', '1', '200', 'null', '200');
INSERT INTO shoporder VALUES ('129', 'img/21.jpg', 'I6.6splus_HH 鋼化玻璃手機殼系列  防摔全包覆式(粉紅色)', '1', '33', 'null', '33');
INSERT INTO shoporder VALUES ('144', 'img/21.jpg', 'I6.6splus_HH 鋼化玻璃手機殼系列  防摔全包覆式(粉紅色)', '1', '33', 'null', '33');
INSERT INTO shoporder VALUES ('145', 'img/01.jpg', 'I6.6s_INOj', '2', '44', 'null', '88');
INSERT INTO shoporder VALUES ('161', 'img/50.jpg', 'I7.8_角落生物 疊疊款 硬式手機殼', '1', '99', 'null', '99');
INSERT INTO shoporder VALUES ('171', 'img/02.jpg', 'I6.6s_Xmass ', '1000', '200', 'null', '200000');
INSERT INTO shoporder VALUES ('175', 'img/42.jpg', 'I7.8_Air Skin-極致輕薄保護殼', '1', '55', 'null', '55');
INSERT INTO shoporder VALUES ('177', 'img/02.jpg', 'I6.6s_Xmass ', '1', '200', 'null', '200');
INSERT INTO shoporder VALUES ('179', 'img/66.jpg', 'I7.8plus_kajsa 絨口袋插卡單蓋保護殼-灰', '1000', '199', '1', '199000');
INSERT INTO shoporder VALUES ('183', 'img/01.jpg', 'I6.6s_INOj', '1', '44', 'null', '44');
INSERT INTO shoporder VALUES ('184', 'img/66.jpg', 'I7.8plus_kajsa 絨口袋插卡單蓋保護殼-灰', '1', '199', 'null', '199');
INSERT INTO shoporder VALUES ('199', 'img/09.jpg', 'I6.6s_迪士尼 復古米奇 皮革系列', '1', '43', 'ww', '43');
INSERT INTO shoporder VALUES ('200', 'img/60.jpg', 'I7.8_真皮手機殼', '1', '236', 'ww', '236');
INSERT INTO shoporder VALUES ('201', 'img/22.jpg', 'I6.6splus_HH 鋼化玻璃手機殼系列防摔全包覆式(白色)', '1', '32', 'ww', '32');
INSERT INTO shoporder VALUES ('202', 'img/24.jpg', 'I6.6splus_iJacket 大眼仔 矽膠軟套', '1', '78', 'ww', '78');
INSERT INTO shoporder VALUES ('203', 'img/31.jpg', 'I6.6splus_WaKase Voyage 城事 - 台北 Taipei - 霧透軟殼', '1', '98', 'ww', '98');
INSERT INTO shoporder VALUES ('204', 'img/31.jpg', 'I6.6splus_WaKase Voyage 城事 - 台北 Taipei - 霧透軟殼', '1', '98', 'ww', '98');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(40) NOT NULL,
  `id` varchar(20) NOT NULL,
  `pwd` varchar(20) NOT NULL,
  `name` varchar(10) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `year` int(4) NOT NULL,
  `month` int(4) NOT NULL,
  `date` int(4) NOT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO user VALUES ('1', 'hayohaiily@gmail.com', '1039603592756564', 'aaa', 'aaa', '男性', '2008', '1', '1');
INSERT INTO user VALUES ('2', 'okois101@gmail.com', 'aaa', 'bbb', 'joanna', '女性', '1998', '4', '4');
INSERT INTO user VALUES ('3', 'fdfd fd@fdafd', 'ddddd', 'aaaaa', 'dddddd', '女性', '2009', '1', '1');
INSERT INTO user VALUES ('4', 'fdfd fd@fdafd', 'dddddd', 'ddddd', 'dddddd', '女性', '1991', '7', '1');
INSERT INTO user VALUES ('5', 'j30029@yahoo.com.tw', 'dfsa', 'gggg', 'gggg', '女性', '2007', '9', '1');
INSERT INTO user VALUES ('6', 'fdfd fd@fdafd', 'erere', 'ddd', 'dddddd', '女性', '2007', '1', '1');
INSERT INTO user VALUES ('7', 'aaaa@gmail.com', 'null', 'aaaa', 'aaaa', '女性', '2010', '12', '20');
INSERT INTO user VALUES ('8', 'jklll@gmail.com', 'yyyo', 'null', 'wwww', '男性', '1998', '4', '21');
INSERT INTO user VALUES ('11', 'pp@gmail.com', 'pp', 'aa', 'dd', '女性', '2010', '1', '1');
INSERT INTO user VALUES ('12', 'qq@gmail.com', 'qq', 'oo', 'oo', '男性', '2006', '10', '10');
INSERT INTO user VALUES ('13', 'joanna@gmail.com', 'joannalin', 'jjj', 'joannalin', '女性', '2009', '4', '4');
INSERT INTO user VALUES ('14', '666', '666', '66', '6', '男性', '1991', '1', '1');
INSERT INTO user VALUES ('15', '6', '666', '', '6', '男性', '2010', '1', '1');
INSERT INTO user VALUES ('16', '', 'test', '5', 'asd', '男性', '1991', '1', '1');
INSERT INTO user VALUES ('17', '', 'fe', '', 'ee', '男性', '2007', '11', '1');
INSERT INTO user VALUES ('18', 'qq@gmail.com', 'qqq', 'qq', 'aa', '女性', '2009', '12', '1');
INSERT INTO user VALUES ('19', 'ww@gmail.com', 'ww', 'ww', 'rrr', '男性', '2008', '10', '1');
INSERT INTO user VALUES ('20', '', '12', '12', '', '女性', '2004', '11', '18');
INSERT INTO user VALUES ('21', '', 'qw', '', '我很聰明', '女性', '2003', '1', '1');
INSERT INTO user VALUES ('22', '', '12', '12', '', '女性', '1991', '1', '1');
INSERT INTO user VALUES ('23', '5', '5', '5', '5', '男性', '2006', '11', '19');
INSERT INTO user VALUES ('24', '123@gd.fdg', '123456', '123456', '123456', '男性', '1991', '1', '1');
INSERT INTO user VALUES ('25', 'aaaa', 'aaaa', 'null', 'aaaa', '男性', '2008', '9', '19');
INSERT INTO user VALUES ('26', '123@ABC', '512224', '512224', '1212', '女性', '2010', '12', '20');
INSERT INTO user VALUES ('27', '123@123', '123', '123', '123', '女性', '2009', '12', '19');
INSERT INTO user VALUES ('28', 'ccc', 'ccc', 'ccc', 'ccc', '男性', '1991', '1', '1');
INSERT INTO user VALUES ('29', '123@123', '123', '123', '123', '女性', '2009', '11', '14');
INSERT INTO user VALUES ('30', '123@123', '123', '123', '123', '女性', '2004', '10', '1');
INSERT INTO user VALUES ('31', '', '1', 'null', '1', '男性', '1992', '10', '10');
INSERT INTO user VALUES ('32', '', '1', 'null', '1', '男性', '1992', '10', '10');
INSERT INTO user VALUES ('33', '', '1', 'null', '1', '男性', '2009', '1', '1');
INSERT INTO user VALUES ('34', '2', '22', '2', '22', '男性', '1991', '1', '1');
INSERT INTO user VALUES ('35', 'a112', 'a112', '1', '1', '男性', '1991', '1', '1');
