/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : yrst

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2018-01-03 01:43:25
*/

SET FOREIGN_KEY_CHECKS=0;
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
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO product VALUES ('1', 'img/01.jpg', 'I6.6s_INOj', '44', '445', 'Y');
INSERT INTO product VALUES ('2', 'img/02.jpg', 'I6.6s_Xmass', '200', '66', 'Y');
INSERT INTO product VALUES ('3', 'img/03.jpg', 'I6.6s_Xmask', '555', '3', 'Y');
INSERT INTO product VALUES ('4', 'img/04.jpg', 'I6.6s_皮革霧漆-紫紅 手機殼', '20', '4', 'Y');
INSERT INTO product VALUES ('5', 'img/05.jpg', 'I6.6s_全包覆-流沙灰 手機殼', '20', '53', 'Y');
INSERT INTO product VALUES ('6', 'img/06.jpg', 'I6.6s_全包覆-流沙綠 手機殼', '20', '25', 'N');
INSERT INTO product VALUES ('7', 'img/07.jpg', 'I6.6s_怪獸大學', '20', '35', 'N');
INSERT INTO product VALUES ('8', 'img/08.jpg', 'I6.6s_泡泡保護套 - 三眼外星人 熊抱哥', '20', '54', 'N');
INSERT INTO product VALUES ('9', 'img/09.jpg', 'I6.6s_迪士尼 復古米奇 皮革系列 硬式手機殼', '20', '22', 'Y');
INSERT INTO product VALUES ('10', 'img/10.jpg', 'I6.6s_迪士尼 復古胡迪 皮革系列 硬式手機殼', '20', '22', 'Y');
INSERT INTO product VALUES ('11', 'img/11.jpg', 'I6.6s_迪士尼', '55', '34', 'Y');
INSERT INTO product VALUES ('12', 'img/12.jpg', 'I6.6s_原木防摔-橘 手機殼', '20', '44', 'Y');
INSERT INTO product VALUES ('13', 'img/13.jpg', 'I6.6s_時尚通勤保護殼', '20', '55', 'Y');
INSERT INTO product VALUES ('14', 'img/14.jpg', 'I6.6s_時尚撞色雙層防摔殼-檸檬黃+綠色', '20', '55', 'N');
INSERT INTO product VALUES ('15', 'img/15.jpg', 'I6.6s_笑臉怪獸保護殼', '20', '66', 'N');
INSERT INTO product VALUES ('16', 'img/16.jpg', 'I6.6s_蛋黃哥透明軟式保護殼', '20', '66', 'N');
INSERT INTO product VALUES ('17', 'img/17.jpg', 'I6.6s_斯文法鬥 i6軟殼', '20', '77', 'N');
INSERT INTO product VALUES ('18', 'img/18.jpg', 'I6.6s_黃色小鴨水中游 硬殼手機殼', '20', '88', 'N');
INSERT INTO product VALUES ('19', 'img/19.jpg', 'I6.6s_誘惑紅唇印花手機殼 Barracuda Studio設計款', '20', '999', 'Y');
INSERT INTO product VALUES ('20', 'img/20.jpg', 'I6.6s_輕薄保護殼-薄荷綠', '20', '66', 'Y');
INSERT INTO product VALUES ('21', 'img/21.jpg', 'I6.6splus_HH 鋼化玻璃手機殼系列  防摔全包覆式(粉紅色)', '20', '43', 'Y');
INSERT INTO product VALUES ('22', 'img/22.jpg', 'I6.6splus_HH 鋼化玻璃手機殼系列防摔全包覆式(白色)', '20', '56', 'Y');
INSERT INTO product VALUES ('23', 'img/23.jpg', 'I6.6splus_HOCAR 爵士皮革保護手機殼 背蓋(暗紅)', '20', '5', 'Y');
INSERT INTO product VALUES ('24', 'img/24.jpg', 'I6.6splus_iJacket 大眼仔 矽膠軟套', '20', '45', 'Y');
INSERT INTO product VALUES ('25', 'img/25.jpg', 'I6.6splus_IPhone 6+棉花糖立體軟綿綿動物手機殼(仰頭貓)', '20', '56', 'Y');
INSERT INTO product VALUES ('26', 'img/26.jpg', 'I6.6splus_LINE FRIENDS 透明硬式保護殼-綁架熊大', '20', '23', 'N');
INSERT INTO product VALUES ('27', 'img/27.jpg', 'I6.6splus_Nexestek 全包覆流沙綠保護殼', '20', '55', 'Y');
INSERT INTO product VALUES ('28', 'img/28.jpg', 'I6.6splus_Nexestek 類皮革款手機保護殼', '20', '243', 'N');
INSERT INTO product VALUES ('29', 'img/29.jpg', 'I6.6splus_simpOcase光雕保護殼- 巴黎異想', '20', '24', 'Y');
INSERT INTO product VALUES ('30', 'img/30.jpg', 'I6.6splus_UP2度c 紳士法鬥', '20', '55', 'Y');
INSERT INTO product VALUES ('31', 'img/31.jpg', 'I6.6splus_WaKase', '244', '33', 'Y');
INSERT INTO product VALUES ('32', 'img/32.jpg', 'I6.6splus_WK Design香港潮牌 美萊手機殼保護貼套組-可愛動物', '20', '22', 'Y');
INSERT INTO product VALUES ('33', 'img/33.jpg', 'I6.6splus_少女手繪風保護貼+保護套組-愛麗絲(立體彩繪珍珠)', '20', '33', 'N');
INSERT INTO product VALUES ('34', 'img/34.jpg', 'I6.6splus_優雅色系木紋軟殼', '20', '55', 'N');
INSERT INTO product VALUES ('35', 'img/35.jpg', 'I6.6splus_迪士尼 米奇屁屁 背影系列 硬殼', '20', '3', 'N');
INSERT INTO product VALUES ('36', 'img/36.jpg', 'I6.6splus_凌度系列 拆卸式透明手機殼 手機套 金', '20', '3', 'Y');
INSERT INTO product VALUES ('37', 'img/37.jpg', 'I6.6splus_氣墊空壓漸變保護套', '20', '52', 'N');
INSERT INTO product VALUES ('38', 'img/38.jpg', 'I6.6splus_搖滾巨星印花手機殼 Seohwa Kim設計款', '20', '5', 'Y');
INSERT INTO product VALUES ('39', 'img/39.jpg', 'I6.6splus_瑞典大理石紋手機保護殼 義大利西恩納皇家灰', '20', '5', 'N');
INSERT INTO product VALUES ('40', 'img/40.jpg', 'I6.6splus_瑞典北歐時尚手機保護殼 加州棕櫚泉', '20', '435', 'Y');
INSERT INTO product VALUES ('41', 'img/41.jpg', 'I7.8_adidas TPU 彩繪系列手機殼 珊瑚', '20', '234', 'N');
INSERT INTO product VALUES ('42', 'img/42.jpg', 'I7.8_Air Skin-極致輕薄保護殼', '20', '5345', 'Y');
INSERT INTO product VALUES ('43', 'img/43.jpg', 'I7.8_BYEBYECHUCHU 掰掰啾啾-奧樂雞 WaKase', '20', '45', 'N');
INSERT INTO product VALUES ('44', 'img/44.jpg', 'I7.8_Gramas 日本東京 抗衝擊行李箱-白', '20', '54', 'Y');
INSERT INTO product VALUES ('45', 'img/45.jpg', 'I7.8_MONOCOZZI Ultra Slim 超薄保護殼', '20', '66', 'N');
INSERT INTO product VALUES ('46', 'img/46.jpg', 'I7.8_NILLKIN 卡仕商務手機殼', '20', '44', 'Y');
INSERT INTO product VALUES ('47', 'img/47.jpg', 'I7.8_ONUSK Cattitude 手機保護殼-藍', '20', '33', 'N');
INSERT INTO product VALUES ('48', 'img/48.jpg', 'I7.8_X-Doria 極盾系列手機殼', '20', '56', 'Y');
INSERT INTO product VALUES ('49', 'img/49.jpg', 'I7.8_石墨黑系列高質感側邊防滑手機殼-宇宙火箭', '20', '22', 'N');
INSERT INTO product VALUES ('50', 'img/50.jpg', 'I7.8_角落生物 疊疊款 硬式手機殼', '20', '55', 'Y');
INSERT INTO product VALUES ('51', 'img/51.jpg', 'I7.8_拉拉熊 經典咖啡款 口袋皮革系列 硬式手機殼', '20', '66', 'N');
INSERT INTO product VALUES ('52', 'img/52.jpg', 'I7.8_紅點法鬥 手機殼', '20', '4', 'Y');
INSERT INTO product VALUES ('53', 'img/53.jpg', 'I7.8_英倫風絨布拼接撞色 可插卡 手機殼', '20', '6', 'N');
INSERT INTO product VALUES ('54', 'img/54.jpg', 'I7.8_迪士尼 三眼怪透明亂花 硬式手機殼', '20', '4', 'Y');
INSERT INTO product VALUES ('55', 'img/55.jpg', 'I7.8_迪士尼 小熊維尼 金箔 透明硬式手機殼', '20', '34', 'N');
INSERT INTO product VALUES ('56', 'img/56.jpg', 'I7.8_迪士尼 米奇牛仔藍 皮革系列 硬式手機殼', '20', '45', 'Y');
INSERT INTO product VALUES ('57', 'img/57.jpg', 'I7.8_迪士尼 披薩三眼怪 皮革系列 硬式手機殼', '20', '45', 'N');
INSERT INTO product VALUES ('58', 'img/58.jpg', 'I7.8_迪士尼 蛋頭先生透明亂花 硬式手機殼', '20', '657', 'Y');
INSERT INTO product VALUES ('59', 'img/59.jpg', 'I7.8_迪士尼 復古米奇 口袋皮革 手機殼', '20', '9', 'N');
INSERT INTO product VALUES ('60', 'img/60.jpg', 'I7.8_真皮手機殼', '20', '8', 'Y');
INSERT INTO product VALUES ('61', 'img/61.jpg', 'I7.8plus_APPLE 原廠 矽膠保護殼', '20', '5', 'N');
INSERT INTO product VALUES ('62', 'img/62.jpg', 'I7.8plus_Baseus倍思 簡約皮套 滑動接聽 支架手機殼 保護套', '20', '3', 'N');
INSERT INTO product VALUES ('63', 'img/63.jpg', 'I7.8plus_ESR億色 輕薄磨砂防指紋手機保護殼套', '20', '56', 'N');
INSERT INTO product VALUES ('64', 'img/64.jpg', 'I7.8plus_GARMMA LAIMO馬來貘 空壓氣墊防摔保護軟殼', '20', '6', 'N');
INSERT INTO product VALUES ('65', 'img/65.jpg', 'I7.8plus_GARMMA 蛋黃哥&馬來貘聯名 空壓氣墊防摔保護軟殼', '20', '7', 'Y');
INSERT INTO product VALUES ('66', 'img/66.jpg', 'I7.8plus_kajsa 絨口袋插卡單蓋保護殼-灰', '20', '8', 'Y');
INSERT INTO product VALUES ('67', 'img/67.jpg', 'I7.8plus_KS防摔鑽殼-星象儀', '20', '9', 'Y');
INSERT INTO product VALUES ('68', 'img/68.jpg', 'I7.8plus_OtterBox炫彩幾何系列保護殼-粉藍', '20', '5', 'N');
INSERT INTO product VALUES ('69', 'img/69.jpg', 'I7.8plus_UP2度C-英式風兔子', '20', '6', 'N');
INSERT INTO product VALUES ('70', 'img/70.jpg', 'I7.8plus_刀鋒奢華 鋁合金+木紋 防摔保護殼', '20', '66', 'N');
INSERT INTO product VALUES ('71', 'img/71.jpg', 'I7.8plus_史努比 SNOOPY 漸層彩繪軟式手機殼(跳跳)', '20', '5', 'N');
INSERT INTO product VALUES ('72', 'img/72.jpg', 'I7.8plus_泡泡保護套 - 米奇', '20', '7', 'Y');
INSERT INTO product VALUES ('73', 'img/73.jpg', 'I7.8plus_泡泡保護套 - 杯麵', '20', '7', 'Y');
INSERT INTO product VALUES ('74', 'img/74.jpg', 'I7.8plus_泡泡保護套 - 貓咪', '20', '3', 'Y');
INSERT INTO product VALUES ('75', 'img/75.jpg', 'I7.8plus_泡泡保護套 - 貓熊', '20', '7', 'Y');
INSERT INTO product VALUES ('76', 'img/76.jpg', 'I7.8plus_哆啦A夢手機殼', '20', '3', 'N');
INSERT INTO product VALUES ('77', 'img/77.jpg', 'I7.8plus_真皮經典款保護殼', '20', '3', 'N');
INSERT INTO product VALUES ('78', 'img/78.jpg', 'I7.8plus_透明彩繪空壓手機殼(妞妞舞)保護殼', '20', '2', 'Y');
INSERT INTO product VALUES ('79', 'img/79.jpg', 'I7.8plus_極薄時尚皮革保護殼', '20', '6', 'N');
INSERT INTO product VALUES ('80', 'img/80.jpg', 'I7.8plus_標準版軍規防摔殼手機保護殼', '20', '4', 'Y');
INSERT INTO product VALUES ('81', 'img/81.jpg', 'I7.8plus_韓系5色 大理石手機殼', '20', '3', 'N');
INSERT INTO product VALUES ('82', 'img/82.jpg', 'IX_ Minions小小兵 空壓安全手機殼(筆記本) 保護殼', '20', '2', 'Y');
INSERT INTO product VALUES ('83', 'img/83.jpg', 'IX_Folio 皮革保護殼', '20', '5', 'N');
INSERT INTO product VALUES ('84', 'img/84.jpg', 'IX_iDeal Of Sweden 瑞典大理石紋手機保護殼-義大利卡拉卡塔海洋金', '20', '5', 'N');
INSERT INTO product VALUES ('85', 'img/85.jpg', 'IX_Mokka 時尚木紋 插卡 手機殼', '20', '6', 'N');
INSERT INTO product VALUES ('86', 'img/86.jpg', 'IX_OtterBox 通勤者系列保護殼-淺綠', '20', '7', 'N');
INSERT INTO product VALUES ('87', 'img/87.jpg', 'IX_SEIDIO DILE 軍規級四角防撞保護殼', '20', '4', 'Y');
INSERT INTO product VALUES ('88', 'img/88.jpg', 'IX_UAG 頂級版耐衝擊保護殼-紅金', '20', '3', 'Y');
INSERT INTO product VALUES ('90', 'img/90.jpg', 'IX_拉拉熊 Rilakkuma 變裝系列彩繪手機殼(狐狸黃)', '20', '5', 'Y');
