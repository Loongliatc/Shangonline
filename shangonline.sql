/*
Navicat MySQL Data Transfer

Source Server         : windows
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : shangonline

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-06-25 10:02:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `auth_group`
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_group_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_permission`
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('5', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('8', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('9', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('10', 'Can add content type', '4', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('11', 'Can change content type', '4', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('12', 'Can delete content type', '4', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('13', 'Can add session', '5', 'add_session');
INSERT INTO `auth_permission` VALUES ('14', 'Can change session', '5', 'change_session');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete session', '5', 'delete_session');
INSERT INTO `auth_permission` VALUES ('16', 'Can add 用户信息', '6', 'add_userprofile');
INSERT INTO `auth_permission` VALUES ('17', 'Can change 用户信息', '6', 'change_userprofile');
INSERT INTO `auth_permission` VALUES ('18', 'Can delete 用户信息', '6', 'delete_userprofile');
INSERT INTO `auth_permission` VALUES ('19', 'Can add 轮播图信息', '7', 'add_banner');
INSERT INTO `auth_permission` VALUES ('20', 'Can change 轮播图信息', '7', 'change_banner');
INSERT INTO `auth_permission` VALUES ('21', 'Can delete 轮播图信息', '7', 'delete_banner');
INSERT INTO `auth_permission` VALUES ('22', 'Can add 邮箱验证码', '8', 'add_emailverify');
INSERT INTO `auth_permission` VALUES ('23', 'Can change 邮箱验证码', '8', 'change_emailverify');
INSERT INTO `auth_permission` VALUES ('24', 'Can delete 邮箱验证码', '8', 'delete_emailverify');
INSERT INTO `auth_permission` VALUES ('25', 'Can add 课程信息', '9', 'add_courseinfo');
INSERT INTO `auth_permission` VALUES ('26', 'Can change 课程信息', '9', 'change_courseinfo');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete 课程信息', '9', 'delete_courseinfo');
INSERT INTO `auth_permission` VALUES ('28', 'Can add 章节信息', '10', 'add_lessoninfo');
INSERT INTO `auth_permission` VALUES ('29', 'Can change 章节信息', '10', 'change_lessoninfo');
INSERT INTO `auth_permission` VALUES ('30', 'Can delete 章节信息', '10', 'delete_lessoninfo');
INSERT INTO `auth_permission` VALUES ('31', 'Can add 资源信息', '11', 'add_sourceinfo');
INSERT INTO `auth_permission` VALUES ('32', 'Can change 资源信息', '11', 'change_sourceinfo');
INSERT INTO `auth_permission` VALUES ('33', 'Can delete 资源信息', '11', 'delete_sourceinfo');
INSERT INTO `auth_permission` VALUES ('34', 'Can add 视频信息', '12', 'add_videoinfo');
INSERT INTO `auth_permission` VALUES ('35', 'Can change 视频信息', '12', 'change_videoinfo');
INSERT INTO `auth_permission` VALUES ('36', 'Can delete 视频信息', '12', 'delete_videoinfo');
INSERT INTO `auth_permission` VALUES ('37', 'Can add 城市信息', '13', 'add_cityinfo');
INSERT INTO `auth_permission` VALUES ('38', 'Can change 城市信息', '13', 'change_cityinfo');
INSERT INTO `auth_permission` VALUES ('39', 'Can delete 城市信息', '13', 'delete_cityinfo');
INSERT INTO `auth_permission` VALUES ('40', 'Can add 机构信息', '14', 'add_orginfo');
INSERT INTO `auth_permission` VALUES ('41', 'Can change 机构信息', '14', 'change_orginfo');
INSERT INTO `auth_permission` VALUES ('42', 'Can delete 机构信息', '14', 'delete_orginfo');
INSERT INTO `auth_permission` VALUES ('43', 'Can add 讲师信息', '15', 'add_teacherinfo');
INSERT INTO `auth_permission` VALUES ('44', 'Can change 讲师信息', '15', 'change_teacherinfo');
INSERT INTO `auth_permission` VALUES ('45', 'Can delete 讲师信息', '15', 'delete_teacherinfo');
INSERT INTO `auth_permission` VALUES ('46', 'Can add 用户咨询信息', '16', 'add_useraskinfo');
INSERT INTO `auth_permission` VALUES ('47', 'Can change 用户咨询信息', '16', 'change_useraskinfo');
INSERT INTO `auth_permission` VALUES ('48', 'Can delete 用户咨询信息', '16', 'delete_useraskinfo');
INSERT INTO `auth_permission` VALUES ('49', 'Can add 用户评论信息', '17', 'add_usercommentinfo');
INSERT INTO `auth_permission` VALUES ('50', 'Can change 用户评论信息', '17', 'change_usercommentinfo');
INSERT INTO `auth_permission` VALUES ('51', 'Can delete 用户评论信息', '17', 'delete_usercommentinfo');
INSERT INTO `auth_permission` VALUES ('52', 'Can add 用户所学课程信息', '18', 'add_usercourseinfo');
INSERT INTO `auth_permission` VALUES ('53', 'Can change 用户所学课程信息', '18', 'change_usercourseinfo');
INSERT INTO `auth_permission` VALUES ('54', 'Can delete 用户所学课程信息', '18', 'delete_usercourseinfo');
INSERT INTO `auth_permission` VALUES ('55', 'Can add 用户收藏信息', '19', 'add_userloveinfo');
INSERT INTO `auth_permission` VALUES ('56', 'Can change 用户收藏信息', '19', 'change_userloveinfo');
INSERT INTO `auth_permission` VALUES ('57', 'Can delete 用户收藏信息', '19', 'delete_userloveinfo');
INSERT INTO `auth_permission` VALUES ('58', 'Can add 用户消息信息', '20', 'add_usermessageinfo');
INSERT INTO `auth_permission` VALUES ('59', 'Can change 用户消息信息', '20', 'change_usermessageinfo');
INSERT INTO `auth_permission` VALUES ('60', 'Can delete 用户消息信息', '20', 'delete_usermessageinfo');
INSERT INTO `auth_permission` VALUES ('61', 'Can view log entry', '1', 'view_logentry');
INSERT INTO `auth_permission` VALUES ('62', 'Can view group', '3', 'view_group');
INSERT INTO `auth_permission` VALUES ('63', 'Can view permission', '2', 'view_permission');
INSERT INTO `auth_permission` VALUES ('64', 'Can view content type', '4', 'view_contenttype');
INSERT INTO `auth_permission` VALUES ('65', 'Can view 课程信息', '9', 'view_courseinfo');
INSERT INTO `auth_permission` VALUES ('66', 'Can view 章节信息', '10', 'view_lessoninfo');
INSERT INTO `auth_permission` VALUES ('67', 'Can view 资源信息', '11', 'view_sourceinfo');
INSERT INTO `auth_permission` VALUES ('68', 'Can view 视频信息', '12', 'view_videoinfo');
INSERT INTO `auth_permission` VALUES ('69', 'Can view 用户咨询信息', '16', 'view_useraskinfo');
INSERT INTO `auth_permission` VALUES ('70', 'Can view 用户评论信息', '17', 'view_usercommentinfo');
INSERT INTO `auth_permission` VALUES ('71', 'Can view 用户所学课程信息', '18', 'view_usercourseinfo');
INSERT INTO `auth_permission` VALUES ('72', 'Can view 用户收藏信息', '19', 'view_userloveinfo');
INSERT INTO `auth_permission` VALUES ('73', 'Can view 用户消息信息', '20', 'view_usermessageinfo');
INSERT INTO `auth_permission` VALUES ('74', 'Can view 城市信息', '13', 'view_cityinfo');
INSERT INTO `auth_permission` VALUES ('75', 'Can view 机构信息', '14', 'view_orginfo');
INSERT INTO `auth_permission` VALUES ('76', 'Can view 讲师信息', '15', 'view_teacherinfo');
INSERT INTO `auth_permission` VALUES ('77', 'Can view session', '5', 'view_session');
INSERT INTO `auth_permission` VALUES ('78', 'Can view 轮播图信息', '7', 'view_banner');
INSERT INTO `auth_permission` VALUES ('79', 'Can view 邮箱验证码', '8', 'view_emailverify');
INSERT INTO `auth_permission` VALUES ('80', 'Can view 用户信息', '6', 'view_userprofile');
INSERT INTO `auth_permission` VALUES ('81', 'Can add Bookmark', '21', 'add_bookmark');
INSERT INTO `auth_permission` VALUES ('82', 'Can change Bookmark', '21', 'change_bookmark');
INSERT INTO `auth_permission` VALUES ('83', 'Can delete Bookmark', '21', 'delete_bookmark');
INSERT INTO `auth_permission` VALUES ('84', 'Can add User Setting', '22', 'add_usersettings');
INSERT INTO `auth_permission` VALUES ('85', 'Can change User Setting', '22', 'change_usersettings');
INSERT INTO `auth_permission` VALUES ('86', 'Can delete User Setting', '22', 'delete_usersettings');
INSERT INTO `auth_permission` VALUES ('87', 'Can add User Widget', '23', 'add_userwidget');
INSERT INTO `auth_permission` VALUES ('88', 'Can change User Widget', '23', 'change_userwidget');
INSERT INTO `auth_permission` VALUES ('89', 'Can delete User Widget', '23', 'delete_userwidget');
INSERT INTO `auth_permission` VALUES ('90', 'Can add log entry', '24', 'add_log');
INSERT INTO `auth_permission` VALUES ('91', 'Can change log entry', '24', 'change_log');
INSERT INTO `auth_permission` VALUES ('92', 'Can delete log entry', '24', 'delete_log');
INSERT INTO `auth_permission` VALUES ('93', 'Can view Bookmark', '21', 'view_bookmark');
INSERT INTO `auth_permission` VALUES ('94', 'Can view log entry', '24', 'view_log');
INSERT INTO `auth_permission` VALUES ('95', 'Can view User Setting', '22', 'view_usersettings');
INSERT INTO `auth_permission` VALUES ('96', 'Can view User Widget', '23', 'view_userwidget');
INSERT INTO `auth_permission` VALUES ('97', 'Can add captcha store', '25', 'add_captchastore');
INSERT INTO `auth_permission` VALUES ('98', 'Can change captcha store', '25', 'change_captchastore');
INSERT INTO `auth_permission` VALUES ('99', 'Can delete captcha store', '25', 'delete_captchastore');
INSERT INTO `auth_permission` VALUES ('100', 'Can view captcha store', '25', 'view_captchastore');

-- ----------------------------
-- Table structure for `captcha_captchastore`
-- ----------------------------
DROP TABLE IF EXISTS `captcha_captchastore`;
CREATE TABLE `captcha_captchastore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `challenge` varchar(32) NOT NULL,
  `response` varchar(32) NOT NULL,
  `hashkey` varchar(40) NOT NULL,
  `expiration` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hashkey` (`hashkey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of captcha_captchastore
-- ----------------------------

-- ----------------------------
-- Table structure for `courses_courseinfo`
-- ----------------------------
DROP TABLE IF EXISTS `courses_courseinfo`;
CREATE TABLE `courses_courseinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `desc` varchar(200) NOT NULL,
  `detail` longtext NOT NULL,
  `level` varchar(5) NOT NULL,
  `stunum` int(11) NOT NULL,
  `study_time` int(11) NOT NULL,
  `lesson_num` int(11) NOT NULL,
  `category` varchar(5) NOT NULL,
  `click_num` int(11) NOT NULL,
  `love_num` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `orginfo_id` int(11) NOT NULL,
  `teacherinfo_id` int(11) NOT NULL,
  `need_know` varchar(100) DEFAULT NULL,
  `teacher_say` varchar(200) DEFAULT NULL,
  `is_banner` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_courseinfo_orginfo_id_3d3f29c6_fk_orgs_orginfo_id` (`orginfo_id`),
  KEY `courses_courseinfo_teacherinfo_id_fc77d47e_fk_orgs_teac` (`teacherinfo_id`),
  CONSTRAINT `courses_courseinfo_orginfo_id_3d3f29c6_fk_orgs_orginfo_id` FOREIGN KEY (`orginfo_id`) REFERENCES `orgs_orginfo` (`id`),
  CONSTRAINT `courses_courseinfo_teacherinfo_id_fc77d47e_fk_orgs_teac` FOREIGN KEY (`teacherinfo_id`) REFERENCES `orgs_teacherinfo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of courses_courseinfo
-- ----------------------------
INSERT INTO `courses_courseinfo` VALUES ('1', 'python', 'python很好玩', 'python很好玩python很好玩python很好玩python很好玩python很好玩python很好玩python很好玩python很好玩python很好玩python很好玩python很好玩python很好玩python很好玩python很好玩python很好玩python很好玩python很好玩python很好玩', '高级', '0', '0', '0', '后台', '0', '0', 'course/18/06/5.jpg', '2018-06-14 10:35:00.000000', '1', '2', 'python不错，比较方便', 'python入门简单，好好学', '0');
INSERT INTO `courses_courseinfo` VALUES ('2', 'mysql初级', '强大的关系型数据库', '强大的关系型数据库，主要是还免费', '高级', '0', '0', '0', '后台', '0', '0', 'course/18/06/3.jpg', '2018-06-14 10:36:00.000000', '1', '1', null, null, '0');
INSERT INTO `courses_courseinfo` VALUES ('3', 'mysql进阶', 'mysql进阶开发', 'mysql进阶开发是要先学习mysql基础后才能继续的', '高级', '5', '0', '0', '后台', '0', '0', 'course/18/06/8.jpg', '2018-06-14 10:37:00.000000', '3', '3', null, null, '0');
INSERT INTO `courses_courseinfo` VALUES ('4', 'mongodb', '一个介于关系型和非关系之间的数据库', '一个介于关系型和非关系之间的数据库', '高级', '0', '0', '0', '后台', '0', '0', 'course/18/06/12.jpg', '2018-06-14 10:38:00.000000', '1', '1', null, null, '0');
INSERT INTO `courses_courseinfo` VALUES ('5', 'mongodb高级', '啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', 'mongodb高级', '高级', '0', '0', '0', '后台', '10', '0', 'course/18/06/9_ES20RFV.jpg', '2018-06-14 10:39:00.000000', '1', '2', null, null, '0');
INSERT INTO `courses_courseinfo` VALUES ('6', 'h5', 'h5h5h5h5', 'h50002_auto_20180621_11480002_auto_20180621_11480002_auto_20180621_11480002_auto_20180621_11480002_auto_20180621_11480002_auto_20180621_11480002_auto_20180621_11480002_auto_20180621_11480002_auto_20180621_11480002_auto_20180621_11480002_auto_20180621_11480002_auto_20180621_11480002_auto_20180621_11480002_auto_20180621_11480002_auto_20180621_1148', '高级', '0', '0', '0', '前端', '0', '0', 'course/18/06/10.jpg', '2018-06-25 09:21:00.000000', '1', '1', '比较基础但是难', '好好学', '1');
INSERT INTO `courses_courseinfo` VALUES ('7', 'java入门1', '啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', 'java入门1java入门1java入门1java入门1java入门1java入门1java入门1java入门1java入门1java入门1java入门1java入门1', '初级', '0', '0', '0', '后台', '0', '0', 'course/18/06/9.jpeg', '2018-06-25 09:23:00.000000', '1', '2', 'java入门1', 'java入门1', '1');
INSERT INTO `courses_courseinfo` VALUES ('8', 'java进阶', 'java进阶java进阶', 'java进阶java进阶java进阶java进阶java进阶java进阶java进阶java进阶java进阶java进阶java进阶', '中级', '0', '0', '0', '后台', '0', '0', 'course/18/06/20.jpg', '2018-06-25 09:23:00.000000', '1', '3', 'java入门2', 'java入门2', '1');
INSERT INTO `courses_courseinfo` VALUES ('9', 'flask开发', 'flask开发flask开发flask开发flask开发', 'flask开发flask开发flask开发flask开发flask开发flask开发flask开发flask开发flask开发flask开发flask开发flask开发flask开发', '中级', '0', '0', '0', '后台', '0', '0', 'course/18/06/17.jpg', '2018-06-25 09:24:00.000000', '1', '1', '又一个NB的框架', '这个也好好学', '0');

-- ----------------------------
-- Table structure for `courses_lessoninfo`
-- ----------------------------
DROP TABLE IF EXISTS `courses_lessoninfo`;
CREATE TABLE `courses_lessoninfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `courseinfo_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_lessoninfo_courseinfo_id_25919b0f_fk_courses_c` (`courseinfo_id`),
  CONSTRAINT `courses_lessoninfo_courseinfo_id_25919b0f_fk_courses_c` FOREIGN KEY (`courseinfo_id`) REFERENCES `courses_courseinfo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of courses_lessoninfo
-- ----------------------------
INSERT INTO `courses_lessoninfo` VALUES ('1', '第一章：python简介', '2018-06-14 10:40:00.000000', '1');
INSERT INTO `courses_lessoninfo` VALUES ('2', '第二章：python数据类型', '2018-06-14 10:40:00.000000', '1');
INSERT INTO `courses_lessoninfo` VALUES ('3', '第三章：python的列表、元组、字符串', '2018-06-14 10:40:00.000000', '1');
INSERT INTO `courses_lessoninfo` VALUES ('4', '第一章：mysql简介', '2018-06-14 10:41:00.000000', '2');
INSERT INTO `courses_lessoninfo` VALUES ('5', '第二章：mysql的基本操作', '2018-06-14 10:41:00.000000', '2');
INSERT INTO `courses_lessoninfo` VALUES ('6', '第一章：mysql视图', '2018-06-14 11:03:00.000000', '3');
INSERT INTO `courses_lessoninfo` VALUES ('7', '第二章：mysql索引', '2018-06-14 11:03:00.000000', '3');
INSERT INTO `courses_lessoninfo` VALUES ('8', '第一章：mongodb简介', '2018-06-14 11:03:00.000000', '4');
INSERT INTO `courses_lessoninfo` VALUES ('9', '第二章：mongodb操作', '2018-06-14 11:03:00.000000', '4');
INSERT INTO `courses_lessoninfo` VALUES ('10', '第一章：mongodb管道', '2018-06-14 11:04:00.000000', '5');
INSERT INTO `courses_lessoninfo` VALUES ('11', '第二章：mongodb副本集', '2018-06-14 11:04:00.000000', '5');

-- ----------------------------
-- Table structure for `courses_sourceinfo`
-- ----------------------------
DROP TABLE IF EXISTS `courses_sourceinfo`;
CREATE TABLE `courses_sourceinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `file_addr` varchar(200) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `courseinfo_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_sourceinfo_courseinfo_id_9d1b6a06_fk_courses_c` (`courseinfo_id`),
  CONSTRAINT `courses_sourceinfo_courseinfo_id_9d1b6a06_fk_courses_c` FOREIGN KEY (`courseinfo_id`) REFERENCES `courses_courseinfo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of courses_sourceinfo
-- ----------------------------
INSERT INTO `courses_sourceinfo` VALUES ('1', '开发流程', 'source/18/06/尚在线开发流程.docx', '2018-06-14 11:20:00.000000', '1');

-- ----------------------------
-- Table structure for `courses_videoinfo`
-- ----------------------------
DROP TABLE IF EXISTS `courses_videoinfo`;
CREATE TABLE `courses_videoinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `study_time` int(11) NOT NULL,
  `url` varchar(200) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `lessoninfo_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_videoinfo_lessoninfo_id_02a97f3a_fk_courses_l` (`lessoninfo_id`),
  CONSTRAINT `courses_videoinfo_lessoninfo_id_02a97f3a_fk_courses_l` FOREIGN KEY (`lessoninfo_id`) REFERENCES `courses_lessoninfo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of courses_videoinfo
-- ----------------------------
INSERT INTO `courses_videoinfo` VALUES ('1', 'python简介', '30', 'http://video.atguigu.com/ce182d3e92d24c08ada798ed75236efe/64240d5f98c849d7a48a701646314ef0-abb0a550e0a4e1bd89390a178f91a577-ld.mp4', '2018-06-14 11:18:00.000000', '1');
INSERT INTO `courses_videoinfo` VALUES ('2', 'python的列表', '40', 'http://video.atguigu.com/ce182d3e92d24c08ada798ed75236efe/64240d5f98c849d7a48a701646314ef0-abb0a550e0a4e1bd89390a178f91a577-ld.mp4', '2018-06-14 11:19:00.000000', '3');
INSERT INTO `courses_videoinfo` VALUES ('3', 'python数据类型', '30', 'http://video.atguigu.com/ce182d3e92d24c08ada798ed75236efe/64240d5f98c849d7a48a701646314ef0-abb0a550e0a4e1bd89390a178f91a577-ld.mp4', '2018-06-14 11:19:00.000000', '2');

-- ----------------------------
-- Table structure for `django_admin_log`
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for `django_content_type`
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('25', 'captcha', 'captchastore');
INSERT INTO `django_content_type` VALUES ('4', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('9', 'courses', 'courseinfo');
INSERT INTO `django_content_type` VALUES ('10', 'courses', 'lessoninfo');
INSERT INTO `django_content_type` VALUES ('11', 'courses', 'sourceinfo');
INSERT INTO `django_content_type` VALUES ('12', 'courses', 'videoinfo');
INSERT INTO `django_content_type` VALUES ('16', 'operations', 'useraskinfo');
INSERT INTO `django_content_type` VALUES ('17', 'operations', 'usercommentinfo');
INSERT INTO `django_content_type` VALUES ('18', 'operations', 'usercourseinfo');
INSERT INTO `django_content_type` VALUES ('19', 'operations', 'userloveinfo');
INSERT INTO `django_content_type` VALUES ('20', 'operations', 'usermessageinfo');
INSERT INTO `django_content_type` VALUES ('13', 'orgs', 'cityinfo');
INSERT INTO `django_content_type` VALUES ('14', 'orgs', 'orginfo');
INSERT INTO `django_content_type` VALUES ('15', 'orgs', 'teacherinfo');
INSERT INTO `django_content_type` VALUES ('5', 'sessions', 'session');
INSERT INTO `django_content_type` VALUES ('7', 'users', 'banner');
INSERT INTO `django_content_type` VALUES ('8', 'users', 'emailverify');
INSERT INTO `django_content_type` VALUES ('6', 'users', 'userprofile');
INSERT INTO `django_content_type` VALUES ('21', 'xadmin', 'bookmark');
INSERT INTO `django_content_type` VALUES ('24', 'xadmin', 'log');
INSERT INTO `django_content_type` VALUES ('22', 'xadmin', 'usersettings');
INSERT INTO `django_content_type` VALUES ('23', 'xadmin', 'userwidget');

-- ----------------------------
-- Table structure for `django_migrations`
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2018-06-13 10:58:13.582847');
INSERT INTO `django_migrations` VALUES ('2', 'contenttypes', '0002_remove_content_type_name', '2018-06-13 10:58:13.631427');
INSERT INTO `django_migrations` VALUES ('3', 'auth', '0001_initial', '2018-06-13 10:58:13.799491');
INSERT INTO `django_migrations` VALUES ('4', 'auth', '0002_alter_permission_name_max_length', '2018-06-13 10:58:13.839445');
INSERT INTO `django_migrations` VALUES ('5', 'auth', '0003_alter_user_email_max_length', '2018-06-13 10:58:13.849449');
INSERT INTO `django_migrations` VALUES ('6', 'auth', '0004_alter_user_username_opts', '2018-06-13 10:58:13.858961');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0005_alter_user_last_login_null', '2018-06-13 10:58:13.865966');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0006_require_contenttypes_0002', '2018-06-13 10:58:13.868968');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0007_alter_validators_add_error_messages', '2018-06-13 10:58:13.876475');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0008_alter_user_username_max_length', '2018-06-13 10:58:13.884478');
INSERT INTO `django_migrations` VALUES ('11', 'users', '0001_initial', '2018-06-13 10:58:14.144694');
INSERT INTO `django_migrations` VALUES ('12', 'admin', '0001_initial', '2018-06-13 10:58:14.233162');
INSERT INTO `django_migrations` VALUES ('13', 'admin', '0002_logentry_remove_auto_add', '2018-06-13 10:58:14.244173');
INSERT INTO `django_migrations` VALUES ('14', 'sessions', '0001_initial', '2018-06-13 10:58:14.272064');
INSERT INTO `django_migrations` VALUES ('15', 'users', '0002_auto_20180613_1120', '2018-06-13 11:20:26.370446');
INSERT INTO `django_migrations` VALUES ('16', 'orgs', '0001_initial', '2018-06-13 15:09:25.049598');
INSERT INTO `django_migrations` VALUES ('17', 'courses', '0001_initial', '2018-06-13 15:09:25.370589');
INSERT INTO `django_migrations` VALUES ('18', 'operations', '0001_initial', '2018-06-13 15:09:25.947487');
INSERT INTO `django_migrations` VALUES ('19', 'operations', '0002_auto_20180613_1553', '2018-06-13 15:53:45.904945');
INSERT INTO `django_migrations` VALUES ('20', 'xadmin', '0001_initial', '2018-06-13 15:53:46.173075');
INSERT INTO `django_migrations` VALUES ('21', 'xadmin', '0002_log', '2018-06-13 15:53:46.427424');
INSERT INTO `django_migrations` VALUES ('22', 'xadmin', '0003_auto_20160715_0100', '2018-06-13 15:53:46.504481');
INSERT INTO `django_migrations` VALUES ('23', 'captcha', '0001_initial', '2018-06-15 10:24:50.664310');
INSERT INTO `django_migrations` VALUES ('24', 'users', '0003_userprofile_is_start', '2018-06-15 16:29:26.988686');
INSERT INTO `django_migrations` VALUES ('25', 'orgs', '0002_orginfo_category', '2018-06-16 11:39:22.209187');
INSERT INTO `django_migrations` VALUES ('26', 'orgs', '0003_orginfo_course_num', '2018-06-16 14:39:19.304782');
INSERT INTO `django_migrations` VALUES ('27', 'courses', '0002_auto_20180621_0952', '2018-06-21 09:52:22.688024');
INSERT INTO `django_migrations` VALUES ('28', 'courses', '0003_auto_20180621_1437', '2018-06-21 14:38:13.732082');
INSERT INTO `django_migrations` VALUES ('29', 'users', '0004_auto_20180623_0914', '2018-06-23 09:14:26.750108');
INSERT INTO `django_migrations` VALUES ('30', 'courses', '0004_courseinfo_is_banner', '2018-06-25 09:20:42.103781');

-- ----------------------------
-- Table structure for `django_session`
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('92deuuaf4usls0adqibsyddg236q02qx', 'MmFiZGE0NjY0NTJjM2VjNTdjNDc1MThiMjYzM2MxZWRlMDE0ZGExNjp7Il9hdXRoX3VzZXJfaWQiOiIxMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZmQzOWRhMGUyMDAwY2MzZWUzNDViYjMyMDNlZjE4MjI4ZTBiMjAxZCJ9', '2018-07-07 16:22:31.521037');
INSERT INTO `django_session` VALUES ('ei510psbjq6y7kb9oum8fckaqkh7ramy', 'MmFiZGE0NjY0NTJjM2VjNTdjNDc1MThiMjYzM2MxZWRlMDE0ZGExNjp7Il9hdXRoX3VzZXJfaWQiOiIxMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZmQzOWRhMGUyMDAwY2MzZWUzNDViYjMyMDNlZjE4MjI4ZTBiMjAxZCJ9', '2018-07-05 14:59:55.301493');
INSERT INTO `django_session` VALUES ('m33f9kmnr1ivwinniqzwrmdhwrlhfxeh', 'ZTFjNjc5ODhiNWI0YTBjZmI5MWZhNjQzNWYyY2M1ODkxYWRjNTQwZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyOWY5MWI3ZGI4ZGY5YTk3NjQ5ZjFhOTdlMjU5YzY3ZWU4MzY5ZjZjIiwiTElTVF9RVUVSWSI6W1sib3JncyIsIm9yZ2luZm8iXSwiIl19', '2018-07-09 09:43:32.715489');

-- ----------------------------
-- Table structure for `operations_useraskinfo`
-- ----------------------------
DROP TABLE IF EXISTS `operations_useraskinfo`;
CREATE TABLE `operations_useraskinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `course` varchar(20) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operations_useraskinfo
-- ----------------------------
INSERT INTO `operations_useraskinfo` VALUES ('1', '赵丽颖', '111111', '阿达', '2018-06-20 11:22:05.620415');
INSERT INTO `operations_useraskinfo` VALUES ('2', '刘诗诗', '3123123', '阿斯顿撒多', '2018-06-20 11:24:00.248644');
INSERT INTO `operations_useraskinfo` VALUES ('3', '郭德纲', '12313', '撒大声地', '2018-06-20 11:26:14.434120');

-- ----------------------------
-- Table structure for `operations_usercommentinfo`
-- ----------------------------
DROP TABLE IF EXISTS `operations_usercommentinfo`;
CREATE TABLE `operations_usercommentinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_content` varchar(200) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `courseinfo_id` int(11) NOT NULL,
  `userinfo_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operations_usercomme_courseinfo_id_4e2033da_fk_courses_c` (`courseinfo_id`),
  KEY `operations_usercomme_userinfo_id_b8cd1d02_fk_users_use` (`userinfo_id`),
  CONSTRAINT `operations_usercomme_courseinfo_id_4e2033da_fk_courses_c` FOREIGN KEY (`courseinfo_id`) REFERENCES `courses_courseinfo` (`id`),
  CONSTRAINT `operations_usercomme_userinfo_id_b8cd1d02_fk_users_use` FOREIGN KEY (`userinfo_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operations_usercommentinfo
-- ----------------------------
INSERT INTO `operations_usercommentinfo` VALUES ('1', '我爱你！', '2018-06-22 09:42:23.918731', '1', '13');

-- ----------------------------
-- Table structure for `operations_usercourseinfo`
-- ----------------------------
DROP TABLE IF EXISTS `operations_usercourseinfo`;
CREATE TABLE `operations_usercourseinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NOT NULL,
  `courseinfo_id` int(11) NOT NULL,
  `userinfo_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `operations_usercourseinf_userinfo_id_courseinfo_i_13608618_uniq` (`userinfo_id`,`courseinfo_id`),
  KEY `operations_usercours_courseinfo_id_5b25885a_fk_courses_c` (`courseinfo_id`),
  CONSTRAINT `operations_usercours_courseinfo_id_5b25885a_fk_courses_c` FOREIGN KEY (`courseinfo_id`) REFERENCES `courses_courseinfo` (`id`),
  CONSTRAINT `operations_usercours_userinfo_id_470fed93_fk_users_use` FOREIGN KEY (`userinfo_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operations_usercourseinfo
-- ----------------------------
INSERT INTO `operations_usercourseinfo` VALUES ('1', '2018-06-21 14:53:35.487164', '1', '13');
INSERT INTO `operations_usercourseinfo` VALUES ('2', '2018-06-21 14:54:08.710139', '2', '13');
INSERT INTO `operations_usercourseinfo` VALUES ('3', '2018-06-21 15:58:20.015571', '4', '13');
INSERT INTO `operations_usercourseinfo` VALUES ('4', '2018-06-21 15:58:30.281220', '5', '13');
INSERT INTO `operations_usercourseinfo` VALUES ('5', '2018-06-22 08:53:16.218025', '3', '13');

-- ----------------------------
-- Table structure for `operations_userloveinfo`
-- ----------------------------
DROP TABLE IF EXISTS `operations_userloveinfo`;
CREATE TABLE `operations_userloveinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `love_id` int(11) NOT NULL,
  `love_type` int(11) NOT NULL,
  `love_status` tinyint(1) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `userinfo_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operations_userlovei_userinfo_id_5b263966_fk_users_use` (`userinfo_id`),
  CONSTRAINT `operations_userlovei_userinfo_id_5b263966_fk_users_use` FOREIGN KEY (`userinfo_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operations_userloveinfo
-- ----------------------------
INSERT INTO `operations_userloveinfo` VALUES ('1', '1', '1', '0', '2018-06-20 16:08:55.584690', '13');
INSERT INTO `operations_userloveinfo` VALUES ('2', '2', '1', '1', '2018-06-21 11:02:46.915049', '1');
INSERT INTO `operations_userloveinfo` VALUES ('3', '2', '2', '0', '2018-06-21 11:28:23.487341', '1');
INSERT INTO `operations_userloveinfo` VALUES ('4', '1', '1', '1', '2018-06-21 11:36:48.420222', '1');
INSERT INTO `operations_userloveinfo` VALUES ('5', '1', '2', '0', '2018-06-21 13:50:07.300889', '1');
INSERT INTO `operations_userloveinfo` VALUES ('6', '3', '2', '0', '2018-06-22 08:48:25.599704', '13');
INSERT INTO `operations_userloveinfo` VALUES ('7', '3', '1', '0', '2018-06-22 08:48:27.069043', '13');
INSERT INTO `operations_userloveinfo` VALUES ('8', '1', '3', '0', '2018-06-22 11:21:41.251303', '13');
INSERT INTO `operations_userloveinfo` VALUES ('9', '2', '1', '0', '2018-06-23 11:26:20.876060', '13');
INSERT INTO `operations_userloveinfo` VALUES ('10', '2', '3', '0', '2018-06-23 14:19:01.986295', '13');
INSERT INTO `operations_userloveinfo` VALUES ('11', '1', '2', '0', '2018-06-23 14:27:54.104179', '13');
INSERT INTO `operations_userloveinfo` VALUES ('12', '2', '2', '0', '2018-06-23 14:27:59.609047', '13');

-- ----------------------------
-- Table structure for `operations_usermessageinfo`
-- ----------------------------
DROP TABLE IF EXISTS `operations_usermessageinfo`;
CREATE TABLE `operations_usermessageinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userinfo` int(11) NOT NULL,
  `message` varchar(200) NOT NULL,
  `msg_status` tinyint(1) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operations_usermessageinfo
-- ----------------------------
INSERT INTO `operations_usermessageinfo` VALUES ('1', '13', '欢迎注册尚在线', '1', '2018-06-23 14:51:13.483353');
INSERT INTO `operations_usermessageinfo` VALUES ('2', '13', '欢迎登录尚在线', '1', '2018-06-23 14:51:56.222259');
INSERT INTO `operations_usermessageinfo` VALUES ('3', '13', '欢迎登录尚在线', '0', '2018-06-23 16:08:03.725277');
INSERT INTO `operations_usermessageinfo` VALUES ('4', '13', '欢迎登录尚在线', '0', '2018-06-23 16:21:18.374612');
INSERT INTO `operations_usermessageinfo` VALUES ('5', '13', '欢迎登录尚在线', '0', '2018-06-23 16:21:33.883802');
INSERT INTO `operations_usermessageinfo` VALUES ('6', '13', '欢迎登录尚在线', '0', '2018-06-23 16:22:31.509031');
INSERT INTO `operations_usermessageinfo` VALUES ('7', '13', '欢迎登录尚在线', '0', '2018-06-25 08:44:13.832500');

-- ----------------------------
-- Table structure for `orgs_cityinfo`
-- ----------------------------
DROP TABLE IF EXISTS `orgs_cityinfo`;
CREATE TABLE `orgs_cityinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orgs_cityinfo
-- ----------------------------
INSERT INTO `orgs_cityinfo` VALUES ('1', '北京', '2018-06-14 09:55:00.000000');
INSERT INTO `orgs_cityinfo` VALUES ('2', '上海', '2018-06-14 10:00:00.000000');
INSERT INTO `orgs_cityinfo` VALUES ('3', '深圳', '2018-06-14 10:00:00.000000');

-- ----------------------------
-- Table structure for `orgs_orginfo`
-- ----------------------------
DROP TABLE IF EXISTS `orgs_orginfo`;
CREATE TABLE `orgs_orginfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `image` varchar(100) NOT NULL,
  `study_num` int(11) NOT NULL,
  `address` varchar(200) NOT NULL,
  `click_num` int(11) NOT NULL,
  `love_num` int(11) NOT NULL,
  `desc` varchar(200) NOT NULL,
  `detail` longtext NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `cityinfo_id` int(11) NOT NULL,
  `category` varchar(5) DEFAULT NULL,
  `course_num` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `orgs_orginfo_cityinfo_id_b30bafbf_fk_orgs_cityinfo_id` (`cityinfo_id`),
  CONSTRAINT `orgs_orginfo_cityinfo_id_b30bafbf_fk_orgs_cityinfo_id` FOREIGN KEY (`cityinfo_id`) REFERENCES `orgs_cityinfo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orgs_orginfo
-- ----------------------------
INSERT INTO `orgs_orginfo` VALUES ('1', '尚硅谷', 'org/18/06/17_TYCVMAH.jpg', '10', '北京昌平', '0', '0', '尚硅谷很牛逼', '尚硅谷-老学员为你推荐，有口皆碑的Java培训、HTML5前端培训、大数据培训、Python培训、区块链培训', '2018-06-14 09:56:00.000000', '1', 'jg', '10');
INSERT INTO `orgs_orginfo` VALUES ('2', '北京大学', 'org/18/06/1_qpLVF9F.jpg', '20', '北京海淀', '0', '0', '梦想的学府', '中国大学中的大学', '2018-06-14 10:01:00.000000', '1', 'gx', '9');
INSERT INTO `orgs_orginfo` VALUES ('3', '尚硅谷2', 'org/18/06/10.jpg', '30', '深圳', '0', '0', '尚硅谷北京的分校，还是那么的牛逼', '尚硅谷-老学员为你推荐，有口皆碑的Java培训、HTML5前端培训、大数据培训、Python培训、区块链培训', '2018-06-14 10:18:00.000000', '3', 'jg', '8');
INSERT INTO `orgs_orginfo` VALUES ('4', '深圳大学', 'org/18/06/2_xysKXbU.jpg', '0', '深圳', '0', '0', '深圳大学的小红星', '深圳大学的小红星', '2018-06-14 10:19:00.000000', '3', 'gx', '20');
INSERT INTO `orgs_orginfo` VALUES ('5', '上海交通大学', 'org/18/06/3_DjUM0kJ.jpg', '0', '上海', '0', '0', '上海交通大学', '上海交通大学', '2018-06-14 10:22:00.000000', '2', 'gx', '0');
INSERT INTO `orgs_orginfo` VALUES ('6', '上海一个人', 'org/18/06/4_rqBkxfc.jpg', '0', '上海', '0', '0', '啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', '上海一个人的培训', '2018-06-14 10:22:00.000000', '2', 'gr', '0');
INSERT INTO `orgs_orginfo` VALUES ('7', '北京航空航天大学', 'org/18/06/16.jpg', '0', '北京海淀', '0', '0', '北京航空666', '北京航空666北京航空666北京航空666北京航空666北京航空666北京航空666北京航空666北京航空666北京航空666北京航空666北京航空666北京航空666北京航空666北京航空666北京航空666北京航空666北京航空666北京航空666北京航空666北京航空666北京航空666北京航空666北京航空666北京航空666北京航空666北京航空666', '2018-06-16 14:07:00.000000', '1', 'gx', '0');
INSERT INTO `orgs_orginfo` VALUES ('8', '尚硅谷1', 'org/18/06/20_wlYaZEe.jpg', '0', '北京昌平', '0', '0', '尚硅谷1尚硅谷1', '尚硅谷1尚硅谷1尚硅谷1尚硅谷1尚硅谷1尚硅谷1尚硅谷1尚硅谷1', '2018-06-25 09:39:00.000000', '1', 'jg', '0');
INSERT INTO `orgs_orginfo` VALUES ('9', '尚硅谷3', 'org/18/06/19.jpg', '0', '北京昌平', '0', '0', '尚硅谷3尚硅谷3', '尚硅谷3尚硅谷3尚硅谷3尚硅谷3尚硅谷3尚硅谷3尚硅谷3尚硅谷3尚硅谷3尚硅谷3尚硅谷3尚硅谷3尚硅谷3尚硅谷3尚硅谷3', '2018-06-25 09:39:00.000000', '1', 'jg', '0');
INSERT INTO `orgs_orginfo` VALUES ('10', '尚硅谷4', 'org/18/06/18.jpg', '0', '北京昌平', '0', '0', '尚硅谷3尚硅谷3尚硅谷3', '尚硅谷3尚硅谷3尚硅谷3尚硅谷3尚硅谷3尚硅谷3尚硅谷3尚硅谷3尚硅谷3尚硅谷3尚硅谷3尚硅谷3尚硅谷3尚硅谷3尚硅谷3尚硅谷3尚硅谷3尚硅谷3', '2018-06-25 09:40:00.000000', '1', 'jg', '0');
INSERT INTO `orgs_orginfo` VALUES ('11', '尚硅谷5', 'org/18/06/17_iiZqYiq.jpg', '0', '北京昌平', '0', '0', '尚硅谷5尚硅谷5尚硅谷5', '尚硅谷5尚硅谷5尚硅谷5尚硅谷5尚硅谷5尚硅谷5尚硅谷5尚硅谷5尚硅谷5尚硅谷5尚硅谷5尚硅谷5尚硅谷5', '2018-06-25 09:40:00.000000', '1', 'jg', '0');
INSERT INTO `orgs_orginfo` VALUES ('12', '尚硅谷6', 'org/18/06/16_RnloMZu.jpg', '0', '北京昌平', '0', '0', '尚硅谷尚硅谷', '尚硅谷6尚硅谷6尚硅谷6尚硅谷6尚硅谷6', '2018-06-25 09:41:00.000000', '1', 'jg', '0');
INSERT INTO `orgs_orginfo` VALUES ('13', '尚硅谷7', 'org/18/06/15.jpg', '0', '北京昌平', '0', '0', '尚硅谷7尚硅谷7尚硅谷7尚硅谷7', '尚硅谷7尚硅谷7尚硅谷7尚硅谷7尚硅谷7尚硅谷7尚硅谷7尚硅谷7尚硅谷7尚硅谷7尚硅谷7尚硅谷7', '2018-06-25 09:41:00.000000', '1', 'jg', '0');
INSERT INTO `orgs_orginfo` VALUES ('14', '尚硅谷8', 'org/18/06/14.jpg', '0', '北京昌平', '0', '0', '尚硅谷8尚硅谷8尚硅谷8', '尚硅谷8尚硅谷8尚硅谷8尚硅谷8尚硅谷8尚硅谷8尚硅谷8尚硅谷8尚硅谷8尚硅谷8尚硅谷8尚硅谷8尚硅谷8', '2018-06-25 09:42:00.000000', '1', 'jg', '0');
INSERT INTO `orgs_orginfo` VALUES ('15', '尚硅谷9', 'org/18/06/13.jpg', '0', '北京昌平', '0', '0', '尚硅谷9尚硅谷9', '尚硅谷9尚硅谷9尚硅谷9尚硅谷9尚硅谷9尚硅谷9尚硅谷9尚硅谷9尚硅谷9尚硅谷9尚硅谷9尚硅谷9尚硅谷9尚硅谷9', '2018-06-25 09:42:00.000000', '1', 'jg', '0');
INSERT INTO `orgs_orginfo` VALUES ('16', '尚硅谷10', 'org/18/06/9.jpeg', '0', '北京昌平', '0', '0', '尚硅谷10尚硅谷10', '尚硅谷10尚硅谷10尚硅谷10尚硅谷10尚硅谷10尚硅谷10尚硅谷10尚硅谷10尚硅谷10尚硅谷10', '2018-06-25 09:43:00.000000', '1', 'jg', '0');

-- ----------------------------
-- Table structure for `orgs_teacherinfo`
-- ----------------------------
DROP TABLE IF EXISTS `orgs_teacherinfo`;
CREATE TABLE `orgs_teacherinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `image` varchar(200) DEFAULT NULL,
  `work_year` int(11) NOT NULL,
  `work_company` varchar(20) DEFAULT NULL,
  `work_position` varchar(20) DEFAULT NULL,
  `age` int(11) NOT NULL,
  `work_style` varchar(20) DEFAULT NULL,
  `click_num` int(11) NOT NULL,
  `love_num` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `orginfo_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `orgs_teacherinfo_orginfo_id_50a88e3a_fk_orgs_orginfo_id` (`orginfo_id`),
  CONSTRAINT `orgs_teacherinfo_orginfo_id_50a88e3a_fk_orgs_orginfo_id` FOREIGN KEY (`orginfo_id`) REFERENCES `orgs_orginfo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orgs_teacherinfo
-- ----------------------------
INSERT INTO `orgs_teacherinfo` VALUES ('1', 'weesmile', 'teacher/18/06/15.jpg', '3', '百度', '技术总监', '30', '闷骚happy', '0', '0', '2018-06-14 10:24:00.000000', '1');
INSERT INTO `orgs_teacherinfo` VALUES ('2', '宋大姐', 'teacher/18/06/9.jpeg', '3', '阿里', '技术总监', '30', '温柔耐心', '0', '10', '2018-06-14 10:25:00.000000', '1');
INSERT INTO `orgs_teacherinfo` VALUES ('3', '阿福小哥', 'teacher/18/06/19.jpg', '3', '腾讯', '技术总监', '30', '真正的风骚', '0', '15', '2018-06-14 10:26:00.000000', '3');

-- ----------------------------
-- Table structure for `users_banner`
-- ----------------------------
DROP TABLE IF EXISTS `users_banner`;
CREATE TABLE `users_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(200) NOT NULL,
  `url` varchar(100) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_banner
-- ----------------------------
INSERT INTO `users_banner` VALUES ('2', 'banner/18/06/14_FXdiiKt.jpg', 'http://www.atguigu.com/', '2018-06-14 10:48:00.000000');
INSERT INTO `users_banner` VALUES ('3', 'banner/18/06/19.jpg', 'http://www.atguigu.com/', '2018-06-14 10:49:00.000000');
INSERT INTO `users_banner` VALUES ('4', 'banner/18/06/18.jpg', 'http://www.atguigu.com/', '2018-06-14 10:50:00.000000');
INSERT INTO `users_banner` VALUES ('5', 'banner/18/06/8.jpg', 'http://www.atguigu.com/', '2018-06-14 10:52:00.000000');
INSERT INTO `users_banner` VALUES ('6', 'banner/18/06/3.jpg', 'http://www.atguigu.com/', '2018-06-14 10:52:00.000000');

-- ----------------------------
-- Table structure for `users_emailverify`
-- ----------------------------
DROP TABLE IF EXISTS `users_emailverify`;
CREATE TABLE `users_emailverify` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `code` varchar(20) NOT NULL,
  `send_type` varchar(20) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_emailverify
-- ----------------------------
INSERT INTO `users_emailverify` VALUES ('1', 'ly03171629@163.com', '0UPshwfi', 'register', '2018-06-15 16:06:07.160555');
INSERT INTO `users_emailverify` VALUES ('2', '1316425655@qq.com', 'oX5Jh6BI', 'register', '2018-06-15 16:38:42.066758');
INSERT INTO `users_emailverify` VALUES ('3', '1316425655@qq.com', 'El2fvXS6', 'forget', '2018-06-16 09:28:53.815131');
INSERT INTO `users_emailverify` VALUES ('4', '1316425655@qq.com', 'qyMWzaoP', 'forget', '2018-06-16 10:25:07.843240');
INSERT INTO `users_emailverify` VALUES ('5', 'ly03171629@163.com', 'O4Sc', 'changeemail', '2018-06-23 09:21:47.140958');
INSERT INTO `users_emailverify` VALUES ('6', 'ly03171629@163.com', 'iyyz', 'changeemail', '2018-06-23 09:34:24.004904');
INSERT INTO `users_emailverify` VALUES ('7', '1316425655@qq.com', 'qWe8', 'changeemail', '2018-06-23 10:13:38.693182');

-- ----------------------------
-- Table structure for `users_userprofile`
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile`;
CREATE TABLE `users_userprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `nick_name` varchar(20) NOT NULL,
  `birthday` date DEFAULT NULL,
  `gender` varchar(5) NOT NULL,
  `address` varchar(200) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `add_time` datetime(6) NOT NULL,
  `is_start` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_userprofile
-- ----------------------------
INSERT INTO `users_userprofile` VALUES ('1', 'pbkdf2_sha256$36000$SIZRxaM4bHHl$gjgQ/p8S196iZ+CxAblvAkC45EVNU9tI76hRnIp/NaM=', '2018-06-25 09:21:22.035002', '1', 'admin', '', '', '', '1', '1', '2018-06-13 15:51:07.110186', '', null, 'girl', null, null, '', '2018-06-13 15:51:07.110186', '0');
INSERT INTO `users_userprofile` VALUES ('13', 'pbkdf2_sha256$36000$DzoKMXwmfoYd$l+wHuDdBGOAxzYaCKY13Y2fm2LjcHJWwuI/FTtAm0VU=', '2018-06-25 08:44:13.828498', '0', '1316425655@qq.com', '', '', '1316425655@qq.com', '0', '1', '2018-06-15 16:38:00.000000', '小蜜蜂', '2018-06-13', 'girl', '北京', '13513256897', 'user/18/06/7.jpg', '2018-06-15 16:38:00.000000', '1');

-- ----------------------------
-- Table structure for `users_userprofile_groups`
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_groups`;
CREATE TABLE `users_userprofile_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userprofile_groups_userprofile_id_group_id_823cf2fc_uniq` (`userprofile_id`,`group_id`),
  KEY `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` (`group_id`),
  CONSTRAINT `users_userprofile_gr_userprofile_id_a4496a80_fk_users_use` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`),
  CONSTRAINT `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_userprofile_groups
-- ----------------------------

-- ----------------------------
-- Table structure for `users_userprofile_user_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_user_permissions`;
CREATE TABLE `users_userprofile_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userprofile_user_p_userprofile_id_permissio_d0215190_uniq` (`userprofile_id`,`permission_id`),
  KEY `users_userprofile_us_permission_id_393136b6_fk_auth_perm` (`permission_id`),
  CONSTRAINT `users_userprofile_us_permission_id_393136b6_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `users_userprofile_us_userprofile_id_34544737_fk_users_use` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_userprofile_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `xadmin_bookmark`
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_bookmark`;
CREATE TABLE `xadmin_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `url_name` varchar(64) NOT NULL,
  `query` varchar(1000) NOT NULL,
  `is_share` tinyint(1) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_bookmark_content_type_id_60941679_fk_django_co` (`content_type_id`),
  KEY `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_bookmark_content_type_id_60941679_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_bookmark
-- ----------------------------

-- ----------------------------
-- Table structure for `xadmin_log`
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_log`;
CREATE TABLE `xadmin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `ip_addr` char(39) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` varchar(32) NOT NULL,
  `message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` (`content_type_id`),
  KEY `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_log
-- ----------------------------
INSERT INTO `xadmin_log` VALUES ('1', '2018-06-14 09:55:54.608961', '127.0.0.1', '1', '北京', 'create', '已添加。', '13', '1');
INSERT INTO `xadmin_log` VALUES ('2', '2018-06-14 09:58:05.965100', '127.0.0.1', '1', '尚硅谷', 'create', '已添加。', '14', '1');
INSERT INTO `xadmin_log` VALUES ('3', '2018-06-14 10:00:35.934261', '127.0.0.1', '2', '上海', 'create', '已添加。', '13', '1');
INSERT INTO `xadmin_log` VALUES ('4', '2018-06-14 10:00:55.303793', '127.0.0.1', '3', '深圳', 'create', '已添加。', '13', '1');
INSERT INTO `xadmin_log` VALUES ('5', '2018-06-14 10:18:51.987231', '127.0.0.1', '2', '北京大学', 'create', '已添加。', '14', '1');
INSERT INTO `xadmin_log` VALUES ('6', '2018-06-14 10:19:52.885990', '127.0.0.1', '3', '尚硅谷2', 'create', '已添加。', '14', '1');
INSERT INTO `xadmin_log` VALUES ('7', '2018-06-14 10:22:01.873609', '127.0.0.1', '4', '深圳大学', 'create', '已添加。', '14', '1');
INSERT INTO `xadmin_log` VALUES ('8', '2018-06-14 10:22:40.744686', '127.0.0.1', '5', '上海交通大学', 'create', '已添加。', '14', '1');
INSERT INTO `xadmin_log` VALUES ('9', '2018-06-14 10:24:25.263879', '127.0.0.1', '6', '上海一个人', 'create', '已添加。', '14', '1');
INSERT INTO `xadmin_log` VALUES ('10', '2018-06-14 10:25:38.324422', '127.0.0.1', '1', 'weesmile', 'create', '已添加。', '15', '1');
INSERT INTO `xadmin_log` VALUES ('11', '2018-06-14 10:26:31.270407', '127.0.0.1', '2', '宋大姐', 'create', '已添加。', '15', '1');
INSERT INTO `xadmin_log` VALUES ('12', '2018-06-14 10:27:09.982979', '127.0.0.1', '3', '阿福小哥', 'create', '已添加。', '15', '1');
INSERT INTO `xadmin_log` VALUES ('13', '2018-06-14 10:36:22.557287', '127.0.0.1', '1', 'python', 'create', '已添加。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('14', '2018-06-14 10:37:14.629998', '127.0.0.1', '2', 'mysql初级', 'create', '已添加。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('15', '2018-06-14 10:38:15.695522', '127.0.0.1', '3', 'mysql进阶', 'create', '已添加。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('16', '2018-06-14 10:39:19.616912', '127.0.0.1', '4', 'mongodb', 'create', '已添加。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('17', '2018-06-14 10:40:09.656542', '127.0.0.1', '5', 'mongodb高级', 'create', '已添加。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('18', '2018-06-14 10:40:45.320006', '127.0.0.1', '1', '第一章：python简介', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('19', '2018-06-14 10:40:56.845977', '127.0.0.1', '2', '第二章：python数据类型', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('20', '2018-06-14 10:41:34.959038', '127.0.0.1', '3', '第三章：python的列表、元组、字符串', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('21', '2018-06-14 10:41:48.505704', '127.0.0.1', '4', '第一章：mysql简介', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('22', '2018-06-14 10:42:06.624717', '127.0.0.1', '5', '第二章：mysql的基本操作', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('23', '2018-06-14 10:48:45.158954', '127.0.0.1', '2', 'banner/18/06/14_FXdiiKt.jpg', 'create', '已添加。', '7', '1');
INSERT INTO `xadmin_log` VALUES ('24', '2018-06-14 10:49:37.429859', '127.0.0.1', '3', 'banner/18/06/19.jpg', 'create', '已添加。', '7', '1');
INSERT INTO `xadmin_log` VALUES ('25', '2018-06-14 10:50:46.504608', '127.0.0.1', '4', 'banner/18/06/18.jpg', 'create', '已添加。', '7', '1');
INSERT INTO `xadmin_log` VALUES ('26', '2018-06-14 10:52:39.608011', '127.0.0.1', '5', 'banner/18/06/8.jpg', 'create', '已添加。', '7', '1');
INSERT INTO `xadmin_log` VALUES ('27', '2018-06-14 10:52:46.478176', '127.0.0.1', '6', 'banner/18/06/3.jpg', 'create', '已添加。', '7', '1');
INSERT INTO `xadmin_log` VALUES ('28', '2018-06-14 11:03:30.034507', '127.0.0.1', '6', '第一章：mysql视图', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('29', '2018-06-14 11:03:44.820673', '127.0.0.1', '7', '第二章：mysql索引', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('30', '2018-06-14 11:03:57.790469', '127.0.0.1', '8', '第一章：mongodb简介', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('31', '2018-06-14 11:04:11.360457', '127.0.0.1', '9', '第二章：mongodb操作', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('32', '2018-06-14 11:04:33.441116', '127.0.0.1', '10', '第一章：mongodb管道', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('33', '2018-06-14 11:04:55.984403', '127.0.0.1', '11', '第二章：mongodb副本集', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('34', '2018-06-14 11:19:00.255331', '127.0.0.1', '1', 'python简介', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('35', '2018-06-14 11:19:22.083765', '127.0.0.1', '2', 'python的列表', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('36', '2018-06-14 11:19:35.223319', '127.0.0.1', '3', 'python数据类型', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('37', '2018-06-14 11:21:27.124307', '127.0.0.1', '1', '开发流程', 'create', '已添加。', '11', '1');
INSERT INTO `xadmin_log` VALUES ('38', '2018-06-16 11:41:25.761691', '127.0.0.1', '6', '上海一个人', 'change', '修改 image 和 category', '14', '1');
INSERT INTO `xadmin_log` VALUES ('39', '2018-06-16 11:41:42.400318', '127.0.0.1', '5', '上海交通大学', 'change', '修改 image 和 category', '14', '1');
INSERT INTO `xadmin_log` VALUES ('40', '2018-06-16 11:42:04.730488', '127.0.0.1', '4', '深圳大学', 'change', '修改 image 和 category', '14', '1');
INSERT INTO `xadmin_log` VALUES ('41', '2018-06-16 11:42:31.056075', '127.0.0.1', '3', '尚硅谷2', 'change', '修改 image 和 category', '14', '1');
INSERT INTO `xadmin_log` VALUES ('42', '2018-06-16 11:42:47.964701', '127.0.0.1', '2', '北京大学', 'change', '修改 image 和 category', '14', '1');
INSERT INTO `xadmin_log` VALUES ('43', '2018-06-16 11:43:03.326143', '127.0.0.1', '1', '尚硅谷', 'change', '修改 image 和 category', '14', '1');
INSERT INTO `xadmin_log` VALUES ('44', '2018-06-16 14:08:11.737460', '127.0.0.1', '7', '北京航空航天大学', 'create', '已添加。', '14', '1');
INSERT INTO `xadmin_log` VALUES ('45', '2018-06-21 09:53:41.701203', '127.0.0.1', '5', 'mongodb高级', 'change', '修改 level，category 和 image', '9', '1');
INSERT INTO `xadmin_log` VALUES ('46', '2018-06-21 14:59:32.442676', '127.0.0.1', '13', '1316425655@qq.com', 'change', '修改 last_login，nick_name，gender 和 image', '6', '1');
INSERT INTO `xadmin_log` VALUES ('47', '2018-06-25 09:23:07.619597', '127.0.0.1', '6', 'h5', 'create', '已添加。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('48', '2018-06-25 09:23:57.139654', '127.0.0.1', '7', 'java入门1', 'create', '已添加。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('49', '2018-06-25 09:24:40.386000', '127.0.0.1', '8', 'java进阶', 'create', '已添加。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('50', '2018-06-25 09:25:45.418380', '127.0.0.1', '9', 'flask开发', 'create', '已添加。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('51', '2018-06-25 09:39:57.620434', '127.0.0.1', '8', '尚硅谷1', 'create', '已添加。', '14', '1');
INSERT INTO `xadmin_log` VALUES ('52', '2018-06-25 09:40:20.115432', '127.0.0.1', '9', '尚硅谷3', 'create', '已添加。', '14', '1');
INSERT INTO `xadmin_log` VALUES ('53', '2018-06-25 09:40:46.730168', '127.0.0.1', '10', '尚硅谷4', 'create', '已添加。', '14', '1');
INSERT INTO `xadmin_log` VALUES ('54', '2018-06-25 09:41:25.965669', '127.0.0.1', '11', '尚硅谷5', 'create', '已添加。', '14', '1');
INSERT INTO `xadmin_log` VALUES ('55', '2018-06-25 09:41:55.608150', '127.0.0.1', '12', '尚硅谷6', 'create', '已添加。', '14', '1');
INSERT INTO `xadmin_log` VALUES ('56', '2018-06-25 09:42:17.514013', '127.0.0.1', '13', '尚硅谷7', 'create', '已添加。', '14', '1');
INSERT INTO `xadmin_log` VALUES ('57', '2018-06-25 09:42:47.494601', '127.0.0.1', '14', '尚硅谷8', 'create', '已添加。', '14', '1');
INSERT INTO `xadmin_log` VALUES ('58', '2018-06-25 09:43:09.934015', '127.0.0.1', '15', '尚硅谷9', 'create', '已添加。', '14', '1');
INSERT INTO `xadmin_log` VALUES ('59', '2018-06-25 09:43:32.429435', '127.0.0.1', '16', '尚硅谷10', 'create', '已添加。', '14', '1');

-- ----------------------------
-- Table structure for `xadmin_usersettings`
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_usersettings`;
CREATE TABLE `xadmin_usersettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(256) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_usersettings
-- ----------------------------
INSERT INTO `xadmin_usersettings` VALUES ('1', 'dashboard:home:pos', '', '1');
INSERT INTO `xadmin_usersettings` VALUES ('2', 'site-theme', '/static/xadmin/css/themes/bootstrap-xadmin.css', '1');

-- ----------------------------
-- Table structure for `xadmin_userwidget`
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_userwidget`;
CREATE TABLE `xadmin_userwidget` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` varchar(256) NOT NULL,
  `widget_type` varchar(50) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_userwidget
-- ----------------------------
