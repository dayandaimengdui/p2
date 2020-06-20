/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 80011
Source Host           : localhost:3306
Source Database       : sushe

Target Server Type    : MYSQL
Target Server Version : 80011
File Encoding         : 65001

Date: 2020-06-18 15:54:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `Admin_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Admin_Username` varchar(20) DEFAULT NULL,
  `Admin_Password` varchar(20) DEFAULT NULL,
  `Admin_Name` varchar(20) DEFAULT NULL,
  `Admin_Sex` varchar(10) DEFAULT NULL,
  `Admin_Tel` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Admin_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'java1234', '123', 'admin', '', null);

-- ----------------------------
-- Table structure for `building`
-- ----------------------------
DROP TABLE IF EXISTS `building`;
CREATE TABLE `building` (
  `Building_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Building_Name` varchar(50) DEFAULT NULL,
  `Building_Introduction` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`Building_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of building
-- ----------------------------
INSERT INTO `building` VALUES ('1', '兰天公寓楼宇1', '男生楼');
INSERT INTO `building` VALUES ('2', '兰天公寓楼宇2', '男生楼');
INSERT INTO `building` VALUES ('3', '兰天公寓楼宇3', '男生楼');
INSERT INTO `building` VALUES ('4', '兰天公寓楼宇4', '男生楼');
INSERT INTO `building` VALUES ('5', '兰天公寓楼宇5', '男生楼');
INSERT INTO `building` VALUES ('6', '兰天公寓楼宇6', '女生楼');
INSERT INTO `building` VALUES ('7', '兰天公寓楼宇7', '女生楼');
INSERT INTO `building` VALUES ('8', '兰天公寓楼宇8', '女生楼');
INSERT INTO `building` VALUES ('9', '兰天公寓楼宇9', '女生楼');
INSERT INTO `building` VALUES ('10', '兰天公寓楼宇10', '女生楼');
INSERT INTO `building` VALUES ('11', '党校楼宇1', '女生楼');
INSERT INTO `building` VALUES ('12', '党校楼宇2', '女生楼');
INSERT INTO `building` VALUES ('13', '党校楼宇3', '女生楼');
INSERT INTO `building` VALUES ('14', '党校楼宇4', '男生楼');
INSERT INTO `building` VALUES ('15', '党校楼宇5', '男生楼');
INSERT INTO `building` VALUES ('16', '党校楼宇6', '男生楼');
INSERT INTO `building` VALUES ('17', '党校楼宇7', '男生楼');
INSERT INTO `building` VALUES ('18', '党校楼宇8', '男生楼');
INSERT INTO `building` VALUES ('19', '新校区楼宇1', '女生楼');
INSERT INTO `building` VALUES ('20', '新校区楼宇2', '女生楼');
INSERT INTO `building` VALUES ('21', '新校区楼宇3', '女生楼');
INSERT INTO `building` VALUES ('22', '新校区楼宇4', '女生楼');
INSERT INTO `building` VALUES ('23', '新校区楼宇5', '男生楼');
INSERT INTO `building` VALUES ('24', '校本部楼宇1', '女生楼');
INSERT INTO `building` VALUES ('25', '校本部楼宇2', '女生楼');
INSERT INTO `building` VALUES ('26', '校本部楼宇3', '男生楼');

-- ----------------------------
-- Table structure for `domitory`
-- ----------------------------
DROP TABLE IF EXISTS `domitory`;
CREATE TABLE `domitory` (
  `Domitory_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Domitory_BuildingID` int(11) DEFAULT NULL,
  `Domitory_Name` varchar(20) DEFAULT NULL,
  `Domitory_Type` varchar(20) DEFAULT NULL,
  `Domitory_Number` varchar(20) DEFAULT NULL,
  `Domitory_Tel` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Domitory_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of domitory
-- ----------------------------
INSERT INTO `domitory` VALUES ('1', '1', '103', '男', '4', '11');
INSERT INTO `domitory` VALUES ('2', '1', '207', '男', '4', '312');
INSERT INTO `domitory` VALUES ('3', '1', '204', '男', '4', '3734675349');
INSERT INTO `domitory` VALUES ('4', '1', '306', '男', '4', '237334649');
INSERT INTO `domitory` VALUES ('5', '2', '104', '男', '4', '465969');
INSERT INTO `domitory` VALUES ('6', '2', '507', '男', '4', '127625649');
INSERT INTO `domitory` VALUES ('7', '2', '204', '男', '4', '124962950');
INSERT INTO `domitory` VALUES ('8', '3', '407', '男', '4', '346956');
INSERT INTO `domitory` VALUES ('9', '3', '807', '男', '4', '12423875496');
INSERT INTO `domitory` VALUES ('10', '3', '507', '男', '4', '1246239569');
INSERT INTO `domitory` VALUES ('11', '3', '209', '男', '4', '0685907-92345');
INSERT INTO `domitory` VALUES ('12', '4', '405', '男', '4', '67594950');
INSERT INTO `domitory` VALUES ('13', '4', '209', '男', '4', '5794574967');
INSERT INTO `domitory` VALUES ('14', '4', '607', '男', '4', '4852893563489');
INSERT INTO `domitory` VALUES ('15', '4', '608', '男', '4', '485638309');
INSERT INTO `domitory` VALUES ('16', '5', '503', '男', '4', '498568478');
INSERT INTO `domitory` VALUES ('17', '5', '207', '男', '4', '359873838');
INSERT INTO `domitory` VALUES ('18', '5', '106', '男', '4', '29856678');
INSERT INTO `domitory` VALUES ('19', '5', '305', '男', '4', '23598789');
INSERT INTO `domitory` VALUES ('20', '6', '509', '女', '6', '34895896');
INSERT INTO `domitory` VALUES ('21', '6', '513', '女', '6', '23846438');
INSERT INTO `domitory` VALUES ('22', '6', '715', '女', '6', '35869');
INSERT INTO `domitory` VALUES ('23', '6', '803', '女', '6', '2586603');
INSERT INTO `domitory` VALUES ('24', '7', '715', '女', '6', '2359860');
INSERT INTO `domitory` VALUES ('25', '7', '417', '女', '6', '235096');
INSERT INTO `domitory` VALUES ('26', '7', '503', '女', '6', '8898766');
INSERT INTO `domitory` VALUES ('27', '7', '209', '女', '6', '89075');
INSERT INTO `domitory` VALUES ('28', '8', '305', '女', '6', '90875');
INSERT INTO `domitory` VALUES ('29', '8', '514', '女', '6', '9875');
INSERT INTO `domitory` VALUES ('30', '8', '314', '女', '6', '89075');
INSERT INTO `domitory` VALUES ('31', '9', '615', '女', '6', '0897569');
INSERT INTO `domitory` VALUES ('32', '9', '807', '女', '6', '875098');
INSERT INTO `domitory` VALUES ('33', '9', '525', '女', '6', '60986');
INSERT INTO `domitory` VALUES ('34', '9', '516', '女', '6', '097856');
INSERT INTO `domitory` VALUES ('35', '10', '825', '女', '6', '236-986');
INSERT INTO `domitory` VALUES ('36', '10', '617', '女', '6', '23460875');
INSERT INTO `domitory` VALUES ('37', '10', '815', '女', '6', '3460956');
INSERT INTO `domitory` VALUES ('38', '10', '613', '女', '6', '72356390');
INSERT INTO `domitory` VALUES ('39', '11', '102', '女', '6', '23876789');
INSERT INTO `domitory` VALUES ('40', '11', '105', '女', '6', '2938745680');
INSERT INTO `domitory` VALUES ('41', '11', '104', '女', '6', '235475');
INSERT INTO `domitory` VALUES ('42', '11', '106', '女', '6', '23487780');
INSERT INTO `domitory` VALUES ('43', '12', '204', '女', '6', '213958756');
INSERT INTO `domitory` VALUES ('44', '12', '304', '女', '6', '1834756');
INSERT INTO `domitory` VALUES ('45', '12', '502', '女', '6', '1908237456');
INSERT INTO `domitory` VALUES ('46', '12', '504', '女', '6', '10827356');
INSERT INTO `domitory` VALUES ('47', '13', '204', '女', '6', '0123785056');
INSERT INTO `domitory` VALUES ('48', '13', '605', '女', '6', '0127894056');
INSERT INTO `domitory` VALUES ('49', '13', '607', '女', '6', '1203789056');
INSERT INTO `domitory` VALUES ('50', '13', '129', '女', '6', '102356');
INSERT INTO `domitory` VALUES ('51', '14', '403', '男', '4', '10923456');
INSERT INTO `domitory` VALUES ('52', '14', '305', '男', '4', '1823756');
INSERT INTO `domitory` VALUES ('53', '14', '204', '男', '4', '912837556');
INSERT INTO `domitory` VALUES ('54', '14', '305', '男', '4', '198237');
INSERT INTO `domitory` VALUES ('55', '15', '607', '男', '4', '1923874');
INSERT INTO `domitory` VALUES ('56', '15', '304', '男', '4', '19283764');
INSERT INTO `domitory` VALUES ('57', '15', '302', '男', '4', '12893754');
INSERT INTO `domitory` VALUES ('58', '16', '504', '男', '4', '928376');
INSERT INTO `domitory` VALUES ('59', '16', '607', '男', '4', '12893764');
INSERT INTO `domitory` VALUES ('60', '16', '803', '男', '4', '2918374964');
INSERT INTO `domitory` VALUES ('61', '17', '102', '男', '4', '298137464');
INSERT INTO `domitory` VALUES ('62', '17', '313', '男', '4', '98237464');
INSERT INTO `domitory` VALUES ('63', '17', '242', '男', '4', '389476');
INSERT INTO `domitory` VALUES ('64', '18', '515', '男', '4', '2893744');
INSERT INTO `domitory` VALUES ('65', '18', '616', '男', '4', '289237');
INSERT INTO `domitory` VALUES ('66', '18', '717', '男', '4', '2189374');
INSERT INTO `domitory` VALUES ('67', '19', '503', '女', '6', '278356');
INSERT INTO `domitory` VALUES ('68', '19', '204', '女', '6', '92387556');
INSERT INTO `domitory` VALUES ('69', '19', '305', '女', '6', '192873556');
INSERT INTO `domitory` VALUES ('70', '20', '603', '女', '6', '3824956');
INSERT INTO `domitory` VALUES ('71', '20', '506', '女', '6', '98324756');
INSERT INTO `domitory` VALUES ('72', '20', '204', '女', '6', '893756');
INSERT INTO `domitory` VALUES ('73', '21', '805', '女', '6', '8327456');
INSERT INTO `domitory` VALUES ('74', '21', '103', '女', '6', '1823756');
INSERT INTO `domitory` VALUES ('75', '21', '314', '女', '6', '18923762938');
INSERT INTO `domitory` VALUES ('76', '22', '516', '女', '6', '23572357');
INSERT INTO `domitory` VALUES ('77', '22', '718', '女', '6', '7234649137');
INSERT INTO `domitory` VALUES ('78', '22', '415', '女', '6', '9238756');
INSERT INTO `domitory` VALUES ('79', '23', '317', '男', '4', '9823764');
INSERT INTO `domitory` VALUES ('80', '23', '221', '男', '4', '891237464');
INSERT INTO `domitory` VALUES ('81', '23', '132', '男', '4', '2893756');
INSERT INTO `domitory` VALUES ('82', '24', '412', '女', '6', '658365478');
INSERT INTO `domitory` VALUES ('83', '24', '223', '女', '6', '6523478');
INSERT INTO `domitory` VALUES ('84', '24', '503', '女', '6', '659823');
INSERT INTO `domitory` VALUES ('85', '24', '402', '女', '6', '92834756');
INSERT INTO `domitory` VALUES ('86', '25', '604', '女', '6', '3489756');
INSERT INTO `domitory` VALUES ('87', '25', '106', '女', '6', '02083754');
INSERT INTO `domitory` VALUES ('88', '25', '718', '女', '6', '89237454');
INSERT INTO `domitory` VALUES ('89', '26', '618', '男', '4', '28374333');
INSERT INTO `domitory` VALUES ('90', '26', '518', '男', '4', '28394756');
INSERT INTO `domitory` VALUES ('91', '26', '418', '男', '4', '2387556');

-- ----------------------------
-- Table structure for `log`
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `Log_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Log_StudentID` int(11) DEFAULT NULL,
  `Log_TeacherID` int(11) DEFAULT NULL,
  `Log_Date` varchar(50) DEFAULT NULL,
  `Log_Remark` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`Log_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES ('1', '2', '1', '2020-06-10', '迟到');

-- ----------------------------
-- Table structure for `out1`
-- ----------------------------
DROP TABLE IF EXISTS `out1`;
CREATE TABLE `out1` (
  `Out_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Out_StudentID` varchar(11) DEFAULT NULL,
  `Out_Date` varchar(50) DEFAULT NULL,
  `Out_Remark` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`Out_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of out1
-- ----------------------------
INSERT INTO `out1` VALUES ('1', '2', '2020-6-10', '13');
INSERT INTO `out1` VALUES ('2', '1', '2020-6-15', '搜索');

-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `Student_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Student_DomitoryID` int(11) DEFAULT NULL,
  `Student_Username` varchar(20) DEFAULT NULL,
  `Student_Password` varchar(20) DEFAULT NULL,
  `Student_Name` varchar(20) DEFAULT NULL,
  `Student_Sex` varchar(20) DEFAULT NULL,
  `Student_Class` varchar(20) DEFAULT NULL,
  `Student_State` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Student_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', '2', '001', '123', '李晓明', '男', '08计本', '迁出');
INSERT INTO `student` VALUES ('2', '1', '002', '123', '王大发', '男', '17云亭', '入住');
INSERT INTO `student` VALUES ('3', '6', '003', '123', '何炅', '男', '17云亭', '入住');
INSERT INTO `student` VALUES ('4', '8', '004', '123', '王嘉尔', '男', '17云亭', '入住');
INSERT INTO `student` VALUES ('5', '13', '005', '123', '邓超', '男', '17云亭', '入住');
INSERT INTO `student` VALUES ('6', '17', '006', '123', '陈赫', '男', '19云亭', '入住');
INSERT INTO `student` VALUES ('7', '20', '007', '123', '杨幂', '女', '19云亭', '入住');
INSERT INTO `student` VALUES ('8', '24', '008', '123', '杨颖', '女', '19云亭', '入住');
INSERT INTO `student` VALUES ('9', '27', '009', '123', '张大奕', '女', '19云亭', '入住');
INSERT INTO `student` VALUES ('10', '33', '010', '123', '黄圣依', '女', '18云亭', '入住');
INSERT INTO `student` VALUES ('11', '38', '011', '123', '刘芸', '女', '18云亭', '入住');
INSERT INTO `student` VALUES ('12', '42', '012', '123', '蓝盈莹', '女', '18云亭', '入住');
INSERT INTO `student` VALUES ('13', '47', '013', '123', '万茜', '女', '18云亭', '入住');
INSERT INTO `student` VALUES ('14', '50', '014', '123', '张雨绮', '女', '19卓越', '入住');
INSERT INTO `student` VALUES ('15', '54', '015', '123', '陈奕迅', '男', '19卓越', '入住');
INSERT INTO `student` VALUES ('16', '58', '016', '123', '胡歌', '男', '19卓越', '入住');
INSERT INTO `student` VALUES ('17', '62', '017', '123', '张艺兴', '男', '19卓越', '入住');
INSERT INTO `student` VALUES ('18', '65', '018', '123', '孙红雷', '男', '19卓越', '入住');
INSERT INTO `student` VALUES ('19', '69', '019', '123', '朱婧汐', '女', '19卓越', '入住');
INSERT INTO `student` VALUES ('20', '73', '020', '123', '孟佳', '女', '19卓越', '入住');
INSERT INTO `student` VALUES ('21', '76', '021', '123', '陈乔恩', '女', '19卓越', '入住');
INSERT INTO `student` VALUES ('22', '80', '022', '123', '罗志祥', '男', '19卓越', '入住');
INSERT INTO `student` VALUES ('23', '83', '023', '123', '袁咏琳', '女', '19卓越', '入住');
INSERT INTO `student` VALUES ('24', '87', '024', '123', '刘涛', '女', '19卓越', '入住');
INSERT INTO `student` VALUES ('25', '90', '025', '123', '魏大勋', '男', '19卓越', '入住');
INSERT INTO `student` VALUES ('26', '91', '026', '123', '王中军', '男', '19云亭', '入住');

-- ----------------------------
-- Table structure for `tb`
-- ----------------------------
DROP TABLE IF EXISTS `tb`;
CREATE TABLE `tb` (
  `TB_ID` int(11) NOT NULL AUTO_INCREMENT,
  `TB_TeacherID` int(11) DEFAULT NULL,
  `TB_BuildingID` int(11) DEFAULT NULL,
  PRIMARY KEY (`TB_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb
-- ----------------------------
INSERT INTO `tb` VALUES ('1', '1', '1');
INSERT INTO `tb` VALUES ('2', '2', '2');
INSERT INTO `tb` VALUES ('3', '3', '3');
INSERT INTO `tb` VALUES ('4', '4', '4');
INSERT INTO `tb` VALUES ('5', '5', '5');
INSERT INTO `tb` VALUES ('6', '6', '6');
INSERT INTO `tb` VALUES ('7', '7', '7');
INSERT INTO `tb` VALUES ('8', '8', '8');
INSERT INTO `tb` VALUES ('9', '9', '9');
INSERT INTO `tb` VALUES ('10', '10', '10');
INSERT INTO `tb` VALUES ('11', '11', '11');
INSERT INTO `tb` VALUES ('12', '12', '12');
INSERT INTO `tb` VALUES ('13', '13', '13');
INSERT INTO `tb` VALUES ('14', '14', '14');
INSERT INTO `tb` VALUES ('15', '15', '15');
INSERT INTO `tb` VALUES ('16', '16', '16');
INSERT INTO `tb` VALUES ('17', '17', '17');
INSERT INTO `tb` VALUES ('18', '18', '18');
INSERT INTO `tb` VALUES ('19', '19', '19');
INSERT INTO `tb` VALUES ('20', '20', '20');
INSERT INTO `tb` VALUES ('21', '21', '21');
INSERT INTO `tb` VALUES ('22', '22', '22');
INSERT INTO `tb` VALUES ('23', '23', '23');
INSERT INTO `tb` VALUES ('24', '24', '24');
INSERT INTO `tb` VALUES ('25', '25', '25');
INSERT INTO `tb` VALUES ('26', '26', '26');

-- ----------------------------
-- Table structure for `teacher`
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `Teacher_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Teacher_Username` varchar(20) DEFAULT NULL,
  `Teacher_Password` varchar(20) DEFAULT NULL,
  `Teacher_Name` varchar(20) DEFAULT NULL,
  `Teacher_Sex` varchar(10) DEFAULT NULL,
  `Teacher_Tel` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Teacher_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('1', '楼宇管理员1', '123', '楼宇管理员1', '女', '12303827');
INSERT INTO `teacher` VALUES ('2', '楼宇管理员2', '123', '楼宇管理员2', '女', '3827');
INSERT INTO `teacher` VALUES ('3', '楼宇管理员3', '123', '楼宇管理员3', '女', '64132876');
INSERT INTO `teacher` VALUES ('4', '楼宇管理员4', '123', '楼宇管理员4', '女', '46089767');
INSERT INTO `teacher` VALUES ('5', '楼宇管理员5', '123', '楼宇管理员5', '女', '1234897');
INSERT INTO `teacher` VALUES ('6', '楼宇管理员6', '123', '楼宇管理员6', '女', '123548976');
INSERT INTO `teacher` VALUES ('7', '楼宇管理员7', '123', '楼宇管理员7', '女', '134254875612');
INSERT INTO `teacher` VALUES ('8', '楼宇管理员8', '123', '楼宇管理员8', '女', '3459087');
INSERT INTO `teacher` VALUES ('9', '楼宇管理员9', '123', '楼宇管理员9', '女', '34671237498');
INSERT INTO `teacher` VALUES ('10', '楼宇管理员10', '123', '楼宇管理员10', '女', '2345489756');
INSERT INTO `teacher` VALUES ('11', '楼宇管理员11', '123', '楼宇管理员11', '女', '234851236');
INSERT INTO `teacher` VALUES ('12', '楼宇管理员12', '123', '楼宇管理员12', '女', '52323589');
INSERT INTO `teacher` VALUES ('13', '楼宇管理员13', '123', '楼宇管理员13', '女', '532789');
INSERT INTO `teacher` VALUES ('14', '楼宇管理员14', '123', '楼宇管理员14', '女', '523789780');
INSERT INTO `teacher` VALUES ('15', '楼宇管理员15', '123', '楼宇管理员15', '女', '52353689689');
INSERT INTO `teacher` VALUES ('16', '楼宇管理员16', '123', '楼宇管理员16', '女', '524516');
INSERT INTO `teacher` VALUES ('17', '楼宇管理员17', '123', '楼宇管理员17', '女', '461671');
INSERT INTO `teacher` VALUES ('18', '楼宇管理员18', '123', '楼宇管理员18', '女', '36871687');
INSERT INTO `teacher` VALUES ('19', '楼宇管理员19', '123', '楼宇管理员19', '女', '6542645965');
INSERT INTO `teacher` VALUES ('20', '楼宇管理员20', '123', '楼宇管理员20', '女', '452345566');
INSERT INTO `teacher` VALUES ('21', '楼宇管理员21', '123', '楼宇管理员21', '女', '545642385');
INSERT INTO `teacher` VALUES ('22', '楼宇管理员22', '123', '楼宇管理员22', '女', '23414123');
INSERT INTO `teacher` VALUES ('23', '楼宇管理员23', '123', '楼宇管理员23', '女', '41564189');
INSERT INTO `teacher` VALUES ('24', '楼宇管理员24', '123', '楼宇管理员24', '女', '523234123');
INSERT INTO `teacher` VALUES ('25', '楼宇管理员25', '123', '楼宇管理员25', '女', '41565623');
INSERT INTO `teacher` VALUES ('26', '楼宇管理员26', '123', '楼宇管理员26', '女', '234156489');
