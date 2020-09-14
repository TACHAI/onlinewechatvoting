/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50560
Source Host           : 127.0.0.1:3306
Source Database       : online_wechat_voting

Target Server Type    : MYSQL
Target Server Version : 50560
File Encoding         : 65001

Date: 2020-09-14 16:16:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_activity`
-- ----------------------------
DROP TABLE IF EXISTS `t_activity`;
CREATE TABLE `t_activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '活动标题',
  `content` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '内容介绍',
  `image` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `type` int(11) DEFAULT NULL COMMENT '0是主题活动1是本馆活动',
  `entry_method` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '参赛方式',
  `participants` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '参赛对象',
  `activity_time` datetime DEFAULT NULL COMMENT '活动时间',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `is_delete` int(11) DEFAULT NULL COMMENT '0是未删除1是已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_activity
-- ----------------------------

-- ----------------------------
-- Table structure for `t_dict`
-- ----------------------------
DROP TABLE IF EXISTS `t_dict`;
CREATE TABLE `t_dict` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `type_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_dict
-- ----------------------------

-- ----------------------------
-- Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '姓名',
  `password` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '密码',
  `type` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '类型',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `is_delete` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '是否删除 0是未删除1是已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', 'admin', 'AB2385DD1F310B9C2995687B10162B73', '1', '2020-01-02 16:56:53', null, '0');

-- ----------------------------
-- Table structure for `t_wechat_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_wechat_user`;
CREATE TABLE `t_wechat_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `pickname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `sex` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `province` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `headimgurl` varchar(255) COLLATE utf8_bin NOT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_wechat_user
-- ----------------------------

-- ----------------------------
-- Table structure for `t_work`
-- ----------------------------
DROP TABLE IF EXISTS `t_work`;
CREATE TABLE `t_work` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `video` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `content` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '简介备注',
  `author` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '作者',
  `activity_id` int(11) DEFAULT NULL COMMENT '活动',
  `work_user_id` int(11) DEFAULT NULL COMMENT '作者id',
  `select_type1` int(11) DEFAULT NULL,
  `select_type2` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_work
-- ----------------------------

-- ----------------------------
-- Table structure for `t_work_log`
-- ----------------------------
DROP TABLE IF EXISTS `t_work_log`;
CREATE TABLE `t_work_log` (
  `id` int(11) NOT NULL DEFAULT '0',
  `work_id` int(11) DEFAULT NULL,
  `wx_openid` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `activity_id` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_work_log
-- ----------------------------

-- ----------------------------
-- Table structure for `t_work_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_work_user`;
CREATE TABLE `t_work_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `age` datetime DEFAULT NULL,
  `school` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `openid` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_work_user
-- ----------------------------
