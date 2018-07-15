/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50520
Source Host           : localhost:3306
Source Database       : toutiao

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 65001

Date: 2018-07-15 20:36:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `comment`
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userId` int(10) DEFAULT NULL,
  `entityId` int(10) DEFAULT NULL,
  `entityType` int(10) DEFAULT NULL,
  `content` varchar(30) DEFAULT NULL,
  `createdDate` date DEFAULT NULL,
  `status` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('100', '25', '11', '1', '你好！', '2018-02-11', '0');
INSERT INTO `comment` VALUES ('101', '2', '1', '1', '挺好的，很有用', '2018-03-07', '0');

-- ----------------------------
-- Table structure for `login_ticket`
-- ----------------------------
DROP TABLE IF EXISTS `login_ticket`;
CREATE TABLE `login_ticket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `expired` date DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `ticket` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of login_ticket
-- ----------------------------
INSERT INTO `login_ticket` VALUES ('6', '25', '2018-02-11', '1', 'a1f3b');
INSERT INTO `login_ticket` VALUES ('7', '25', '2018-02-11', '1', 'bb2ce');
INSERT INTO `login_ticket` VALUES ('8', '26', '2018-02-11', '1', '8220f');
INSERT INTO `login_ticket` VALUES ('9', '25', '2018-02-11', '0', '3c608');
INSERT INTO `login_ticket` VALUES ('10', '25', '2018-02-12', '0', '0db34');
INSERT INTO `login_ticket` VALUES ('11', '25', '2018-02-12', '0', '066c4');
INSERT INTO `login_ticket` VALUES ('12', '25', '2018-02-13', '1', '79548');
INSERT INTO `login_ticket` VALUES ('13', '25', '2018-02-16', '1', '120da');
INSERT INTO `login_ticket` VALUES ('14', '26', '2018-02-16', '0', '48470');
INSERT INTO `login_ticket` VALUES ('15', '25', '2018-02-28', '0', '334ff');
INSERT INTO `login_ticket` VALUES ('16', '25', '2018-02-28', '0', '7a1ff');
INSERT INTO `login_ticket` VALUES ('17', '25', '2018-02-28', '0', 'd53b6');
INSERT INTO `login_ticket` VALUES ('18', '25', '2018-02-28', '0', 'deca9');
INSERT INTO `login_ticket` VALUES ('19', '25', '2018-02-28', '0', '1586f');
INSERT INTO `login_ticket` VALUES ('20', '25', '2018-02-28', '0', 'c431d');
INSERT INTO `login_ticket` VALUES ('21', '25', '2018-02-28', '1', '490dd');
INSERT INTO `login_ticket` VALUES ('22', '25', '2018-02-28', '1', 'c9fbe');
INSERT INTO `login_ticket` VALUES ('23', '25', '2018-02-28', '1', '03a30');
INSERT INTO `login_ticket` VALUES ('24', '25', '2018-02-28', '0', '54154');
INSERT INTO `login_ticket` VALUES ('25', '25', '2018-02-28', '1', '3a2c3');
INSERT INTO `login_ticket` VALUES ('26', '25', '2018-02-28', '0', '14d96');
INSERT INTO `login_ticket` VALUES ('27', '25', '2018-02-28', '0', 'a0b34');
INSERT INTO `login_ticket` VALUES ('28', '25', '2018-02-28', '0', 'c51f8');
INSERT INTO `login_ticket` VALUES ('29', '25', '2018-02-28', '1', '70699');
INSERT INTO `login_ticket` VALUES ('30', '25', '2018-02-28', '0', '1abf5');
INSERT INTO `login_ticket` VALUES ('31', '25', '2018-02-28', '0', '88cb8');
INSERT INTO `login_ticket` VALUES ('32', '25', '2018-02-28', '0', '982ab');
INSERT INTO `login_ticket` VALUES ('33', '25', '2018-02-28', '0', 'c103e');
INSERT INTO `login_ticket` VALUES ('34', '25', '2018-02-28', '0', '2799d');
INSERT INTO `login_ticket` VALUES ('35', '25', '2018-02-28', '1', 'f50f1');
INSERT INTO `login_ticket` VALUES ('36', '25', '2018-02-28', '1', '6a7de');
INSERT INTO `login_ticket` VALUES ('37', '25', '2018-02-28', '0', '1fcd8');
INSERT INTO `login_ticket` VALUES ('38', '25', '2018-02-28', '0', 'd2e57');
INSERT INTO `login_ticket` VALUES ('39', '25', '2018-02-28', '0', '2922a');
INSERT INTO `login_ticket` VALUES ('40', '25', '2018-02-28', '0', '80e30');
INSERT INTO `login_ticket` VALUES ('41', '25', '2018-02-28', '0', '0cddc');
INSERT INTO `login_ticket` VALUES ('42', '25', '2018-02-28', '0', 'eab12');
INSERT INTO `login_ticket` VALUES ('43', '25', '2018-02-28', '1', '7d403');
INSERT INTO `login_ticket` VALUES ('44', '25', '2018-02-28', '0', 'eac4c');
INSERT INTO `login_ticket` VALUES ('45', '25', '2018-02-28', '0', '2724b');
INSERT INTO `login_ticket` VALUES ('46', '25', '2018-02-28', '0', 'ac107');
INSERT INTO `login_ticket` VALUES ('47', '25', '2018-02-28', '1', '75fd3');
INSERT INTO `login_ticket` VALUES ('48', '25', '2018-02-28', '0', 'dab36');
INSERT INTO `login_ticket` VALUES ('49', '25', '2018-02-28', '1', '0787f');
INSERT INTO `login_ticket` VALUES ('50', '25', '2018-02-28', '0', '1c5a4');
INSERT INTO `login_ticket` VALUES ('51', '25', '2018-03-01', '1', 'c3157');
INSERT INTO `login_ticket` VALUES ('52', '25', '2018-03-01', '1', '1658f');
INSERT INTO `login_ticket` VALUES ('53', '25', '2018-03-01', '1', 'f43e2');
INSERT INTO `login_ticket` VALUES ('54', '25', '2018-03-01', '1', 'ce110');
INSERT INTO `login_ticket` VALUES ('55', '25', '2018-03-01', '1', '25bd3');
INSERT INTO `login_ticket` VALUES ('56', '25', '2018-03-01', '0', 'a8715');
INSERT INTO `login_ticket` VALUES ('57', '25', '2018-03-03', '0', 'c3f69');
INSERT INTO `login_ticket` VALUES ('58', '1', '2018-03-03', '0', '4242e');
INSERT INTO `login_ticket` VALUES ('59', '2', '2018-03-08', '1', '0fb1e');
INSERT INTO `login_ticket` VALUES ('60', '1', '2018-03-08', '0', 'e0d45');
INSERT INTO `login_ticket` VALUES ('61', '3', '2018-05-16', '0', '38c65');

-- ----------------------------
-- Table structure for `message`
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fromId` int(11) DEFAULT NULL,
  `toId` int(11) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `hasRead` int(11) DEFAULT NULL,
  `conversationId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES ('1', '25', '2', '你好', '2018-02-11 16:07:32', '0', '2_25');
INSERT INTO `message` VALUES ('2', '2', '25', '你好呀', '2018-02-11 16:08:00', '0', '2_25');
INSERT INTO `message` VALUES ('3', '5', '25', '你好呀', '2018-02-11 16:10:56', '0', '5_25');
INSERT INTO `message` VALUES ('4', '4', '25', '你好呀', '2018-02-11 16:11:01', '0', '4_25');
INSERT INTO `message` VALUES ('5', '3', '25', '你好呀', '2018-02-11 16:11:06', '0', '3_25');
INSERT INTO `message` VALUES ('6', '6', '25', '你好呀', '2018-02-11 16:11:10', '0', '6_25');
INSERT INTO `message` VALUES ('7', '0', '0', '用户wujiang赞了你的资讯，http://127.0.0.1:8080/news/11', '2018-02-27 17:14:07', '0', null);
INSERT INTO `message` VALUES ('8', '3', '25', '用户wujiang赞了你的资讯，http://127.0.0.1:8080/news/10', '2018-02-27 17:18:47', '0', null);
INSERT INTO `message` VALUES ('9', '3', '25', '用户wujiang赞了你的资讯，http://127.0.0.1:8080/news/11', '2018-02-27 18:06:27', '0', null);
INSERT INTO `message` VALUES ('10', '3', '25', '你上次的登录ip异常', '2018-02-27 19:13:45', '0', '3_25');
INSERT INTO `message` VALUES ('11', '3', '25', '用户wujiang赞了你的资讯，http://127.0.0.1:8080/news/11', '2018-02-27 19:19:46', '0', null);
INSERT INTO `message` VALUES ('12', '3', '25', '你上次的登录ip异常', '2018-02-28 14:00:33', '0', null);
INSERT INTO `message` VALUES ('13', '3', '25', '你上次的登录ip异常', '2018-02-28 14:10:31', '0', null);
INSERT INTO `message` VALUES ('14', '3', '25', '你上次的登录ip异常', '2018-02-28 14:14:20', '0', null);
INSERT INTO `message` VALUES ('15', '3', '25', '你上次的登录ip异常', '2018-02-28 14:31:18', '0', null);
INSERT INTO `message` VALUES ('16', '3', '25', '你上次的登录ip异常', '2018-02-28 14:33:43', '0', null);
INSERT INTO `message` VALUES ('17', '3', '25', '你上次的登录ip异常', '2018-02-28 14:36:01', '0', null);
INSERT INTO `message` VALUES ('18', '3', '25', '你上次的登录ip异常', '2018-03-02 16:51:11', '0', null);
INSERT INTO `message` VALUES ('19', '3', '1', '你上次的登录ip异常', '2018-03-02 20:01:24', '0', null);
INSERT INTO `message` VALUES ('20', '3', '2', '你上次的登录ip异常', '2018-03-07 00:17:43', '0', null);
INSERT INTO `message` VALUES ('21', '3', '1', '你上次的登录ip异常', '2018-03-07 00:19:03', '0', null);

-- ----------------------------
-- Table structure for `news`
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL DEFAULT '',
  `link` varchar(256) NOT NULL DEFAULT '',
  `image` varchar(256) NOT NULL DEFAULT '',
  `likeCount` int(11) NOT NULL,
  `commentCount` int(11) NOT NULL,
  `createdDate` datetime NOT NULL,
  `userId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('1', '南方和北方', 'http://data.163.com/18/0122/15/D8P0D45P000181IU.html', 'http://localhost:8080/image?name=a0b905310a664fd7a935a60b7f57493d.png', '0', '1', '2018-03-02 20:07:13', '1');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '',
  `password` varchar(128) NOT NULL DEFAULT '',
  `salt` varchar(32) NOT NULL DEFAULT '',
  `headUrl` varchar(256) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'wujiang', '0EA8D3AE3650EF663293FE7EB651B6E4', '9b54c', 'http://images.nowcoder.com/head/514t.png');
INSERT INTO `user` VALUES ('2', 'wj', '6DB5EF4870E970BE918B1329FF1F22D4', '64769', 'http://images.nowcoder.com/head/659t.png');
INSERT INTO `user` VALUES ('3', 'ni', 'E4924B8131EA036BED8D782DF7A711B1', 'ec62a', 'http://images.nowcoder.com/head/502t.png');
