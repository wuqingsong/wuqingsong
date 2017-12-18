/*
Navicat MySQL Data Transfer

Source Server         : wuqingsong
Source Server Version : 50613
Source Host           : localhost:3306
Source Database       : m-gate-cms

Target Server Type    : MYSQL
Target Server Version : 50613
File Encoding         : 65001

Date: 2017-11-27 16:11:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for mgate_admin
-- ----------------------------
DROP TABLE IF EXISTS `mgate_admin`;
CREATE TABLE `mgate_admin` (
  `id` varchar(32) NOT NULL,
  `msisdn` varchar(20) NOT NULL,
  `short_code` varchar(32) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `sex` char(1) DEFAULT NULL,
  `login_pwd` varchar(255) NOT NULL,
  `account_status` char(1) DEFAULT NULL COMMENT '0正常，1销户，2冻结',
  `login_num` varchar(10) DEFAULT NULL,
  `login_error_num` varchar(255) DEFAULT NULL,
  `last_login_time` varchar(255) DEFAULT NULL,
  `destory_time` varchar(255) DEFAULT NULL,
  `head_portrait` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `sessiontoken_expiration_time` varchar(255) DEFAULT NULL,
  `user_role` varchar(10) DEFAULT NULL,
  `create_by` varchar(32) DEFAULT NULL,
  `create_date` datetime(6) DEFAULT NULL,
  `update_by` varchar(32) DEFAULT NULL,
  `update_date` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mgate_admin
-- ----------------------------
INSERT INTO `mgate_admin` VALUES ('12345', '12345', '12345', '测试', '1', '222', '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `mgate_admin` VALUES ('2', '222', '222', '测试merchant', '1', '222', '0', null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for mgate_customer
-- ----------------------------
DROP TABLE IF EXISTS `mgate_customer`;
CREATE TABLE `mgate_customer` (
  `id` varchar(32) NOT NULL,
  `msisdn` varchar(20) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `sex` char(1) DEFAULT NULL,
  `login_pwd` varchar(255) NOT NULL,
  `account_status` char(1) DEFAULT NULL COMMENT '0正常，1销户，2冻结',
  `login_num` varchar(10) DEFAULT NULL,
  `login_error_num` varchar(255) DEFAULT NULL,
  `last_login_time` varchar(255) DEFAULT NULL,
  `destory_time` varchar(255) DEFAULT NULL,
  `head_portrait` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `sessiontoken_expiration_time` varchar(255) DEFAULT NULL,
  `create_by` varchar(32) DEFAULT NULL,
  `create_date` datetime(6) DEFAULT NULL,
  `update_by` varchar(32) DEFAULT NULL,
  `update_date` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mgate_customer
-- ----------------------------
INSERT INTO `mgate_customer` VALUES ('1', '1234', '回复测试customer', '1', '111111', '0', '0', '0', null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for mgate_device_bind
-- ----------------------------
DROP TABLE IF EXISTS `mgate_device_bind`;
CREATE TABLE `mgate_device_bind` (
  `id` varchar(32) NOT NULL,
  `user_id` varchar(32) DEFAULT NULL COMMENT '客户/商户id，对应用户/商户表的id',
  `bind_type` char(1) DEFAULT NULL COMMENT '1用户，2商户',
  `imei` varchar(255) DEFAULT NULL COMMENT '设备号',
  `phone_model` varchar(255) DEFAULT NULL COMMENT '手机型号',
  `phone_system` varchar(255) DEFAULT NULL COMMENT '操作系统',
  `push_token` varchar(255) DEFAULT NULL,
  `bind_state` char(1) DEFAULT NULL COMMENT '1,当前绑定，2上次绑定，3已解绑',
  `create_by` varchar(32) DEFAULT NULL,
  `create_date` datetime(6) DEFAULT NULL,
  `update_by` varchar(32) DEFAULT NULL,
  `update_date` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='设备绑定表';

-- ----------------------------
-- Records of mgate_device_bind
-- ----------------------------
INSERT INTO `mgate_device_bind` VALUES ('12123', '12345', '1', '111', '11', 'Android', null, '1', '1', '2017-11-27 15:36:26.000000', null, null);
INSERT INTO `mgate_device_bind` VALUES ('123211', '1', '1', '111', '11', 'ios', null, '1', '1', '2017-11-27 14:50:07.000000', '', '');

-- ----------------------------
-- Table structure for mgate_security_record
-- ----------------------------
DROP TABLE IF EXISTS `mgate_security_record`;
CREATE TABLE `mgate_security_record` (
  `id` varchar(32) NOT NULL,
  `user_id` varchar(32) DEFAULT NULL,
  `user_type` char(1) DEFAULT NULL,
  `satefy_problem` varchar(255) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `create_date` datetime(6) DEFAULT NULL,
  `update_date` datetime(6) DEFAULT NULL,
  `create_by` varchar(32) DEFAULT NULL,
  `update_by` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mgate_security_record
-- ----------------------------

-- ----------------------------
-- Table structure for mms_app_version
-- ----------------------------
DROP TABLE IF EXISTS `mms_app_version`;
CREATE TABLE `mms_app_version` (
  `id` varchar(32) NOT NULL,
  `create_by` varchar(32) DEFAULT NULL,
  `create_date` datetime(6) DEFAULT NULL,
  `update_by` varchar(32) DEFAULT NULL,
  `update_date` datetime(6) DEFAULT NULL,
  `app_name` varchar(255) DEFAULT NULL COMMENT 'APP名称',
  `version_no` varchar(255) DEFAULT NULL COMMENT 'APP版本号',
  `download_url` varchar(255) DEFAULT NULL COMMENT 'APP下载地址',
  `app_desc` varchar(1000) DEFAULT NULL COMMENT '版本描述',
  `upgrade_identifier` varchar(2) DEFAULT NULL COMMENT '更新标识:1不升级 2可选升级 3强制升级',
  `upgrade_type` varchar(2) DEFAULT NULL COMMENT '更新类型:IOS Android',
  `upgrade_info` varchar(1000) DEFAULT NULL COMMENT '更新信息APP回显给用户',
  `publish_date` datetime(6) DEFAULT NULL COMMENT '版本发布时间',
  `is_delete` int(2) DEFAULT NULL COMMENT '删除状态:0未删除 1已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='APP版本管理';

-- ----------------------------
-- Records of mms_app_version
-- ----------------------------
INSERT INTO `mms_app_version` VALUES ('1085b424f6fd4f428f39e849246d3695', '1', '2017-11-23 16:57:43.000000', null, null, '测试', '12345', 'www.baidu.com', '测试', '1', '1', '测试', '2017-11-23 16:57:40.000000', '0');

-- ----------------------------
-- Table structure for mms_black_list
-- ----------------------------
DROP TABLE IF EXISTS `mms_black_list`;
CREATE TABLE `mms_black_list` (
  `id` varchar(32) NOT NULL,
  `create_by` varchar(32) DEFAULT NULL,
  `create_date` datetime(6) DEFAULT NULL,
  `update_by` varchar(32) DEFAULT NULL,
  `update_date` datetime(6) DEFAULT NULL,
  `list_name` varchar(255) DEFAULT NULL COMMENT '名单名称',
  `list_desc` varchar(500) DEFAULT NULL COMMENT '名单描述',
  `customer_id` varchar(32) DEFAULT NULL COMMENT '顾客ID',
  `service_id` varchar(32) DEFAULT NULL COMMENT '业务功能主键ID',
  `start_date` datetime(6) DEFAULT NULL COMMENT '生效时间',
  `end_date` datetime(6) DEFAULT NULL COMMENT '过期时间',
  `is_delete` int(2) DEFAULT NULL COMMENT '删除状态:0未删除 1已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='黑名单';

-- ----------------------------
-- Records of mms_black_list
-- ----------------------------

-- ----------------------------
-- Table structure for mms_code_constrast
-- ----------------------------
DROP TABLE IF EXISTS `mms_code_constrast`;
CREATE TABLE `mms_code_constrast` (
  `id` varchar(32) NOT NULL,
  `create_by` varchar(32) DEFAULT NULL,
  `create_date` datetime(6) DEFAULT NULL,
  `update_by` varchar(32) DEFAULT NULL,
  `update_date` datetime(6) DEFAULT NULL,
  `ref_system` varchar(5) DEFAULT NULL COMMENT '所属系统:0全部 1customer 2merchant',
  `error_code` varchar(255) DEFAULT NULL COMMENT '系统错误码',
  `error_info` varchar(255) DEFAULT NULL COMMENT '系统错误信息',
  `trans_flag` varchar(2) DEFAULT NULL COMMENT '转义标示:0未转义,1已转义',
  `trans_info` varchar(100) DEFAULT NULL COMMENT '转译信息',
  `cps_error_code` varchar(10) DEFAULT NULL COMMENT 'CPS错误码',
  `cps_error_info` varchar(100) DEFAULT NULL COMMENT 'CPS错误信息',
  `is_delete` int(2) DEFAULT NULL COMMENT '删除状态:0未删除 1已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mms_code_constrast
-- ----------------------------
INSERT INTO `mms_code_constrast` VALUES ('1', null, null, null, null, '1', '1', '1', '1', '1', '1', '1', '0');

-- ----------------------------
-- Table structure for mms_command_constrast
-- ----------------------------
DROP TABLE IF EXISTS `mms_command_constrast`;
CREATE TABLE `mms_command_constrast` (
  `id` varchar(32) NOT NULL,
  `create_by` varchar(32) DEFAULT NULL,
  `create_date` datetime(6) DEFAULT NULL,
  `update_by` varchar(32) DEFAULT NULL,
  `update_date` datetime(6) DEFAULT NULL,
  `ref_system` varchar(5) DEFAULT NULL COMMENT '所属系统:0全部 1customer 2merchant',
  `command_id` varchar(255) DEFAULT NULL COMMENT '系统commandID',
  `command_info` varchar(255) DEFAULT NULL COMMENT 'commandID描述',
  `cps_command_id` varchar(255) DEFAULT NULL COMMENT '对应cps的commandID',
  `cps_command_info` varchar(255) DEFAULT NULL COMMENT 'cps commandId描述',
  `is_delete` int(2) DEFAULT NULL COMMENT '删除状态:0未删除 1已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mms_command_constrast
-- ----------------------------
INSERT INTO `mms_command_constrast` VALUES ('1', null, null, null, null, '1', '1', '1', '1', '1', '1');
INSERT INTO `mms_command_constrast` VALUES ('29f689b023e54ffcb2344ca06aac5333', '1', '2017-11-23 16:27:17.000000', null, null, '2', '12', '12', '12', '12', '0');

-- ----------------------------
-- Table structure for mms_department
-- ----------------------------
DROP TABLE IF EXISTS `mms_department`;
CREATE TABLE `mms_department` (
  `id` varchar(32) NOT NULL,
  `create_by` varchar(32) DEFAULT NULL,
  `create_date` datetime(6) DEFAULT NULL,
  `update_by` varchar(32) DEFAULT NULL,
  `update_date` datetime(6) DEFAULT NULL,
  `parent_id` varchar(32) DEFAULT NULL COMMENT '上级机构ID',
  `dept_level` int(5) DEFAULT NULL COMMENT '机构级别:1为最高,依上下级关系递减递增',
  `dept_name` varchar(255) DEFAULT NULL COMMENT '机构名称',
  `dept_code` varchar(255) DEFAULT NULL COMMENT '机构代码',
  `dept_desc` varchar(500) DEFAULT NULL COMMENT '机构描述',
  `is_delete` int(2) DEFAULT NULL COMMENT '删除状态:0未删除 1已删除',
  `dept_state` varchar(2) DEFAULT NULL COMMENT '机构状态:1启动 0停用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mms_department
-- ----------------------------
INSERT INTO `mms_department` VALUES ('12f00ad75df942a99d153caa74d7bccb', '1', '2017-11-23 14:14:10.000000', null, null, 'f64389fd7e1346bfbdfc9a5c91ce81cb', '3', '12', '12', '12', '1', '1');
INSERT INTO `mms_department` VALUES ('84c87bfbc93348c9a89cf43534b0beae', null, null, null, null, '', '1', '开发部', '111', '开发部', '0', '1');
INSERT INTO `mms_department` VALUES ('983991ba201c44dbbc7c2df12134c800', '1', '2017-11-23 14:18:50.000000', null, null, '84c87bfbc93348c9a89cf43534b0beae', '2', '开发部下级', '123', '开发部下级', '0', '1');
INSERT INTO `mms_department` VALUES ('f64389fd7e1346bfbdfc9a5c91ce81cb', '1', '2017-11-23 14:13:16.000000', null, null, '84c87bfbc93348c9a89cf43534b0beae', '2', '123', '123', '123', '1', '1');

-- ----------------------------
-- Table structure for mms_feedback_info
-- ----------------------------
DROP TABLE IF EXISTS `mms_feedback_info`;
CREATE TABLE `mms_feedback_info` (
  `id` varchar(32) NOT NULL,
  `create_by` varchar(32) DEFAULT NULL,
  `create_date` datetime(6) DEFAULT NULL,
  `update_by` varchar(32) DEFAULT NULL,
  `update_date` datetime(6) DEFAULT NULL,
  `parent_id` varchar(32) DEFAULT NULL COMMENT '上次回复关联ID',
  `content` varchar(500) DEFAULT NULL COMMENT '反馈内容',
  `reply_state` int(2) DEFAULT NULL COMMENT '回复状态:0未回复 1已回复',
  `reply_type` varchar(5) DEFAULT NULL COMMENT '回复类型:0顾客回复 1操作员回复',
  `ref_system` varchar(5) DEFAULT NULL COMMENT '所属系统:1customer 2merchant',
  `read_state` int(1) DEFAULT NULL COMMENT '已读状态:0未读',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mms_feedback_info
-- ----------------------------
INSERT INTO `mms_feedback_info` VALUES ('1', '1', '2017-11-27 10:20:59.000000', null, null, '0', '回复内容', '0', '0', '1', '0');
INSERT INTO `mms_feedback_info` VALUES ('2', '2', '2017-11-27 10:28:07.000000', null, null, '0', '回复内容', '0', '0', '2', '0');

-- ----------------------------
-- Table structure for mms_login_record
-- ----------------------------
DROP TABLE IF EXISTS `mms_login_record`;
CREATE TABLE `mms_login_record` (
  `id` varchar(32) NOT NULL,
  `user_id` varchar(32) DEFAULT NULL COMMENT '操作员ID',
  `login_date` datetime(6) DEFAULT NULL COMMENT '登陆时间',
  `login_state` varchar(2) DEFAULT NULL COMMENT '登陆状态:1成功 0失败',
  `login_ip` varchar(255) DEFAULT NULL COMMENT '登陆IP地址',
  `login_info` varchar(255) DEFAULT NULL COMMENT '登陆信息:登陆状态为1则为成功信息,否则为登陆失败原因',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mms_login_record
-- ----------------------------
INSERT INTO `mms_login_record` VALUES ('072d8d2855b54cf7ba97b70e8ce2330c', '1', '2017-11-22 17:23:02.000000', '1', '127.0.0.1', 'Login success!');
INSERT INTO `mms_login_record` VALUES ('0f5733d4d5c344f1812df3d8ff290f8d', '1', '2017-11-22 10:31:48.000000', '1', '127.0.0.1', 'Login success!');
INSERT INTO `mms_login_record` VALUES ('12871c65de6a438e9967d741606e078c', '8bf6c9ae369b4fd0961843feb42150b4', '2017-11-22 19:17:08.000000', '1', '127.0.0.1', 'Login success!');
INSERT INTO `mms_login_record` VALUES ('17d3656b89d94a498966f332c19afcf1', '68a11f4137174877b4bc19ccac97e2c6', '2017-11-22 16:37:00.000000', '1', '127.0.0.1', 'Login success!');
INSERT INTO `mms_login_record` VALUES ('20774a9fe180459fbe60a912b984094d', '1', '2017-11-24 15:36:02.000000', '1', '127.0.0.1', 'Login success!');
INSERT INTO `mms_login_record` VALUES ('2372408bffb845e6bfd65b034425575b', '1', '2017-11-22 14:45:58.000000', '1', '127.0.0.1', 'Login success!');
INSERT INTO `mms_login_record` VALUES ('242d04af54a64634afb3f57415e5b844', '9fd935a5665b40aa9bd2c11b4590c67e', '2017-11-22 16:05:29.000000', '1', '127.0.0.1', 'Login success!');
INSERT INTO `mms_login_record` VALUES ('2f40a023263541e1a7d1c8c9b768a3dc', '68a11f4137174877b4bc19ccac97e2c6', '2017-11-22 16:58:01.000000', '1', '127.0.0.1', 'Login success!');
INSERT INTO `mms_login_record` VALUES ('32e503e952b54780b9e422feb79ee222', '1', '2017-11-27 09:48:26.000000', '1', '127.0.0.1', 'Login success!');
INSERT INTO `mms_login_record` VALUES ('34ef95c19536480fb40e7c5c951271fc', '9fd935a5665b40aa9bd2c11b4590c67e', '2017-11-22 16:06:40.000000', '1', '127.0.0.1', 'Login success!');
INSERT INTO `mms_login_record` VALUES ('42c974a863384ec2946fc32cdd2b0a85', '1', '2017-11-22 16:55:46.000000', '1', '127.0.0.1', 'Login success!');
INSERT INTO `mms_login_record` VALUES ('5124a1f4e2b14ef4a7d3c8a8d4b70a85', '1', '2017-11-21 15:01:07.000000', '1', '127.0.0.1', 'Login success!');
INSERT INTO `mms_login_record` VALUES ('525fd85119154c42954394de5f0c7b36', '1', '2017-11-22 19:04:02.000000', '1', '127.0.0.1', 'Login success!');
INSERT INTO `mms_login_record` VALUES ('53513ba230bc4fc68cff6d9ac9fae73e', '1', '2017-11-22 16:07:05.000000', '1', '127.0.0.1', 'Login success!');
INSERT INTO `mms_login_record` VALUES ('55075c6eba0349d98b82c24db5b53c20', '1', '2017-11-21 15:31:35.000000', '1', '127.0.0.1', 'Login success!');
INSERT INTO `mms_login_record` VALUES ('56ec52f25f3a4cd5b656f1ff9cbc9e5b', '1', '2017-11-22 16:04:43.000000', '1', '127.0.0.1', 'Login success!');
INSERT INTO `mms_login_record` VALUES ('5776a950e4d545a3ba3118ba1a5a370d', '1', '2017-11-22 15:04:53.000000', '1', '127.0.0.1', 'Login success!');
INSERT INTO `mms_login_record` VALUES ('5c26a7f08bda4a10b90346c986e79bc4', '8bf6c9ae369b4fd0961843feb42150b4', '2017-11-22 19:04:15.000000', '1', '127.0.0.1', 'Login success!');
INSERT INTO `mms_login_record` VALUES ('61824dd15d6441c4ae9bcbf4a2273787', 'c0f82156961e422b9111fb7cc067f03d', '2017-11-22 14:56:05.000000', '1', '127.0.0.1', 'Login success!');
INSERT INTO `mms_login_record` VALUES ('63bb65ea3d9a45278598e80056cf335d', 'a25ff9b9b32c450cb925cbd5cd7bbe21', '2017-11-22 16:13:50.000000', '1', '127.0.0.1', 'Login success!');
INSERT INTO `mms_login_record` VALUES ('6b8df583328443adb5899377d46832f6', '9fd935a5665b40aa9bd2c11b4590c67e', '2017-11-22 15:12:56.000000', '1', '127.0.0.1', 'Login success!');
INSERT INTO `mms_login_record` VALUES ('7de5a04eaf0e4b0a82006809b70fc768', '1', '2017-11-23 08:52:33.000000', '1', '127.0.0.1', 'Login success!');
INSERT INTO `mms_login_record` VALUES ('7e93abaff91f497f83c272b1cca7335f', '1', '2017-11-22 14:34:08.000000', '1', '127.0.0.1', 'Login success!');
INSERT INTO `mms_login_record` VALUES ('82f00a0754f0494ebf4839fd2266a27b', '8bf6c9ae369b4fd0961843feb42150b4', '2017-11-22 17:23:25.000000', '1', '127.0.0.1', 'Login success!');
INSERT INTO `mms_login_record` VALUES ('8e1b63e0ba3943bf8b1f243e0a77bf02', '1', '2017-11-21 14:57:24.000000', '1', '127.0.0.1', 'Login success!');
INSERT INTO `mms_login_record` VALUES ('91bbcd03198048c0892d2cea76747c49', '68a11f4137174877b4bc19ccac97e2c6', '2017-11-22 16:46:01.000000', '1', '127.0.0.1', 'Login success!');
INSERT INTO `mms_login_record` VALUES ('93262b960df54051b989c8dab84da868', '9fd935a5665b40aa9bd2c11b4590c67e', '2017-11-22 15:06:39.000000', '1', '127.0.0.1', 'Login success!');
INSERT INTO `mms_login_record` VALUES ('9649509f16fc4713923715a4a8243f14', '1', '2017-11-21 15:20:36.000000', '1', '127.0.0.1', 'Login success!');
INSERT INTO `mms_login_record` VALUES ('9d81d0cc2ae14279a5af63ec03294376', '1', '2017-11-23 13:57:49.000000', '1', '127.0.0.1', 'Login success!');
INSERT INTO `mms_login_record` VALUES ('a6d4f1a798bf404f89773d5980c08331', '1', '2017-11-22 16:45:25.000000', '1', '127.0.0.1', 'Login success!');
INSERT INTO `mms_login_record` VALUES ('aaa16315cb6848819d566758d7651a35', '1', '2017-11-22 10:53:46.000000', '1', '127.0.0.1', 'Login success!');
INSERT INTO `mms_login_record` VALUES ('ab222cc688c3475a9682f6db4816dc7a', '1', '2017-11-22 14:30:22.000000', '1', '127.0.0.1', 'Login success!');
INSERT INTO `mms_login_record` VALUES ('b044ebaa9d244836bc1eb3664082cf39', 'c0f82156961e422b9111fb7cc067f03d', '2017-11-22 14:58:54.000000', '1', '127.0.0.1', 'Login success!');
INSERT INTO `mms_login_record` VALUES ('b4a4c060e23045c2acbdb95cd57ffb17', '1', '2017-11-22 17:21:08.000000', '1', '127.0.0.1', 'Login success!');
INSERT INTO `mms_login_record` VALUES ('c1cbe39bc4af489ea06e0d7cac6832c1', '1', '2017-11-22 16:34:57.000000', '1', '127.0.0.1', 'Login success!');
INSERT INTO `mms_login_record` VALUES ('c4b92691b9f94883bf2311d7cf1354bb', '1', '2017-11-27 14:36:57.000000', '1', '127.0.0.1', 'Login success!');
INSERT INTO `mms_login_record` VALUES ('c5a16b05be1b4d4695209b9792d52f97', '9fd935a5665b40aa9bd2c11b4590c67e', '2017-11-22 15:17:41.000000', '1', '127.0.0.1', 'Login success!');
INSERT INTO `mms_login_record` VALUES ('c8ca6c4500a04883b331a3b86006e4c5', '9fd935a5665b40aa9bd2c11b4590c67e', '2017-11-22 15:52:00.000000', '1', '127.0.0.1', 'Login success!');
INSERT INTO `mms_login_record` VALUES ('c96149b6c4f84eb0b3252c3ac6902471', '8bf6c9ae369b4fd0961843feb42150b4', '2017-11-23 08:35:25.000000', '1', '127.0.0.1', 'Login success!');
INSERT INTO `mms_login_record` VALUES ('d1bf07ccf3a643e599e99ce721e56768', '1', '2017-11-21 15:10:23.000000', '1', '127.0.0.1', 'Login success!');
INSERT INTO `mms_login_record` VALUES ('da2887ba9100440eaee83e81bf99390d', '1', '2017-11-21 15:45:54.000000', '1', '127.0.0.1', 'Login success!');
INSERT INTO `mms_login_record` VALUES ('dd901dd0b41043c6933e3de7f1f88f1f', '1', '2017-11-22 16:04:26.000000', '1', '127.0.0.1', 'Login success!');
INSERT INTO `mms_login_record` VALUES ('e8eb980e0d0e460797990456b33d8c3a', '9fd935a5665b40aa9bd2c11b4590c67e', '2017-11-22 15:24:24.000000', '1', '127.0.0.1', 'Login success!');
INSERT INTO `mms_login_record` VALUES ('eabeab64a8e041f293b0778335ac2431', '1', '2017-11-22 16:06:25.000000', '1', '127.0.0.1', 'Login success!');
INSERT INTO `mms_login_record` VALUES ('ed7914d95f054324b1149ca552cf4ea1', '8bf6c9ae369b4fd0961843feb42150b4', '2017-11-22 19:18:12.000000', '1', '127.0.0.1', 'Login success!');
INSERT INTO `mms_login_record` VALUES ('fa8d14ffd04e4be3b2c9c3cd05979a70', '1', '2017-11-22 16:57:36.000000', '1', '127.0.0.1', 'Login success!');

-- ----------------------------
-- Table structure for mms_menu
-- ----------------------------
DROP TABLE IF EXISTS `mms_menu`;
CREATE TABLE `mms_menu` (
  `id` varchar(32) NOT NULL,
  `create_by` varchar(32) DEFAULT NULL,
  `create_date` datetime(6) DEFAULT NULL,
  `update_by` varchar(32) DEFAULT NULL,
  `update_date` datetime(6) DEFAULT NULL,
  `parent_id` varchar(32) DEFAULT NULL COMMENT '上级菜单ID',
  `menu_name` varchar(255) DEFAULT NULL COMMENT '菜单名称',
  `menu_url` varchar(255) DEFAULT NULL COMMENT '菜单映射地址',
  `menu_desc` varchar(500) DEFAULT NULL COMMENT '菜单描述',
  `menu_type` varchar(2) DEFAULT NULL COMMENT '菜单类型:1导航菜单 2按钮菜单',
  `menu_code` varchar(255) DEFAULT NULL COMMENT '菜单代码,方便树查询',
  `is_delete` int(2) DEFAULT NULL COMMENT '删除状态:0未删除 1已删除',
  `menu_seq` int(5) DEFAULT NULL COMMENT '菜单排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mms_menu
-- ----------------------------
INSERT INTO `mms_menu` VALUES ('0174b866c39d44fd8062fba7727905ca', null, null, null, null, 'c65a87375d924254b556d6d29f80f9cb', 'Modify app version', '/appVersion/update.do', null, '2', 'updApp', '0', '2');
INSERT INTO `mms_menu` VALUES ('08455b28e00a466ea3d4a859230a3e60', null, null, null, null, 'e6e19a88b7ea4950b621e24e25368b08', 'System Initalization', '/system/initialize.do', '6', '1', null, '0', '4');
INSERT INTO `mms_menu` VALUES ('08a0572a08324432a71bc67dfdbfa0b0', null, null, null, null, '382d7512bad649c0a469bb7468dd8c1a', 'Modify Agreement', '/serviceAgreement/update.do', null, '2', 'updAgreement', '0', '2');
INSERT INTO `mms_menu` VALUES ('0a1ef46c43b942acbe1fad46916d89d0', null, null, null, null, '51ee577ee96442c6a253d961b66861b2', 'M-gate management', null, '0', '1', null, '0', '4');
INSERT INTO `mms_menu` VALUES ('0c7001c81ea44dd7a3f78520b038631f', null, null, null, null, '51ee577ee96442c6a253d961b66861b2', 'System management', null, '7', '1', null, '0', '3');
INSERT INTO `mms_menu` VALUES ('154cd00e411d458b93d043af14192b6a', null, null, null, null, '0a1ef46c43b942acbe1fad46916d89d0', 'Q & A', '/questionAnswer/list.do', '19', '1', 'qaList', '0', '4');
INSERT INTO `mms_menu` VALUES ('176559adcc20448da6aff3511e0dd591', null, null, null, null, '2258085defb84246bababa5af84277a5', 'Add notice', '/notice/add.do', null, '2', 'addNotice', '0', '1');
INSERT INTO `mms_menu` VALUES ('1c43190b6e5846cf91180d3510d153b4', null, null, null, null, 'a49ed04af63f44408b3787929c026936', 'Add code', '/codeConstrast/add.do', null, '2', 'addcodeConstrast', '0', '1');
INSERT INTO `mms_menu` VALUES ('2032b1b1cb1c4fefb126c32a640e9b42', null, null, null, null, 'a49ed04af63f44408b3787929c026936', 'Delete code', '/codeConstrast/delete.do', null, '2', 'delcodeConstrast', '0', '3');
INSERT INTO `mms_menu` VALUES ('2258085defb84246bababa5af84277a5', null, null, null, null, '0a1ef46c43b942acbe1fad46916d89d0', 'Notice', '/notice/list.do', '16', '1', 'noticeList', '0', '1');
INSERT INTO `mms_menu` VALUES ('246dfbdbcc984d9dad8fa047b4ff7a00', null, null, null, null, '2258085defb84246bababa5af84277a5', 'Modify notice', '/notice/update.do', null, '2', 'updNotice', '0', '2');
INSERT INTO `mms_menu` VALUES ('2bd81800d11f4cbe8816c442a496ee33', null, null, null, null, 'e3fc5d7454924facb87b85f3ab9ad1c5', 'Unbind device', '/deviceBind/unBind.do', null, '2', 'unbindDevice', '0', '1');
INSERT INTO `mms_menu` VALUES ('2f6b9ce020b14028aae6b8e5f87afad1', null, null, null, null, 'ed396d532ecf44a3845e6a625b819507', 'Add operator', '/user/add.do', null, '2', 'addUser', '0', '1');
INSERT INTO `mms_menu` VALUES ('382d7512bad649c0a469bb7468dd8c1a', null, null, null, null, '0a1ef46c43b942acbe1fad46916d89d0', 'Service Agreement', '/serviceAgreement/list.do', '20', '1', 'saList', '0', '5');
INSERT INTO `mms_menu` VALUES ('3f2cbe9dd94a4130b825f4ad4175cc12', null, null, null, null, 'c65a87375d924254b556d6d29f80f9cb', 'Add app version', '/appVersion/add.do', null, '2', 'addApp', '0', '1');
INSERT INTO `mms_menu` VALUES ('40e402b448a74e00841a835ed58c7e3e', null, null, null, null, '9d14b5163e864656ac66e13df3cd901a', 'Modify param', '/systemParam/update.do', null, '2', 'updSystemParam', '0', '2');
INSERT INTO `mms_menu` VALUES ('4efa2ef1aea440d3b5714b5e307ff28b', null, null, null, null, '0c7001c81ea44dd7a3f78520b038631f', 'System Dict', '/systemDict/list.do', '13', '1', 'dictList', '0', '1');
INSERT INTO `mms_menu` VALUES ('50c02530fdd3422d80bb4b1ee5398ab6', null, null, null, null, 'e6e19a88b7ea4950b621e24e25368b08', 'Department', '/department/list.do', '5', '1', 'deptList', '0', '3');
INSERT INTO `mms_menu` VALUES ('50fc3219bc594b4aa74bce75e9bbd017', null, null, null, null, 'e502784caf0945ad9ddbf74dd1c3f59a', 'Modify role', '/role/update.do', null, '2', 'updRole', '0', '2');
INSERT INTO `mms_menu` VALUES ('51d7aea7c49240d8992cd221dbdeaa24', null, null, null, null, 'aa4dc33745564652b756c1256f42a5ec', 'Opreate Log', '/operateLog/list.do', null, '1', null, '0', '1');
INSERT INTO `mms_menu` VALUES ('51ee577ee96442c6a253d961b66861b2', null, null, null, null, '0', 'Management', null, '1', '1', 'management', '0', '1');
INSERT INTO `mms_menu` VALUES ('52a6c632541a45ba9ddd04c923dd21b9', null, null, null, null, '154cd00e411d458b93d043af14192b6a', 'Delete Q & A', '/questionAnswer/delete.do', null, '2', 'delQuestionAnswer', '0', '3');
INSERT INTO `mms_menu` VALUES ('542478517cdc48bfbd0956b1d9d095f0', null, null, null, null, '154cd00e411d458b93d043af14192b6a', 'Modify Q & A', '/questionAnswer/update.do', null, '2', 'updQuestionAnswer', '0', '2');
INSERT INTO `mms_menu` VALUES ('6720915a492b44cbb42dd7cb10cecead', null, null, null, null, '50c02530fdd3422d80bb4b1ee5398ab6', 'Add deparment', '/department/add.do', null, '2', 'addDept', '0', '1');
INSERT INTO `mms_menu` VALUES ('67e89fa4717b435aaaf0468f9a267773', null, null, null, null, '718e021993ca4ad88ae58a703136ef39', 'Delete command Id', '/commandConstrast/delete.do', null, '2', 'delcommandConstrast', '0', '3');
INSERT INTO `mms_menu` VALUES ('6a6e1e59d19e4d50ad68fa436b646b16', null, null, null, null, 'e4987533a6674ef2a446cb136a3ce7f7', 'Reply feedback', '/feedback/update.do', null, '2', 'replyFeedback', '0', '1');
INSERT INTO `mms_menu` VALUES ('6c549dd381364c4dbb7d7e1ab6970ea1', null, null, null, null, '4efa2ef1aea440d3b5714b5e307ff28b', 'Add dict', '/systemDict/add.do', null, '2', 'addSystemDict', '0', '1');
INSERT INTO `mms_menu` VALUES ('718e021993ca4ad88ae58a703136ef39', null, null, null, null, '0c7001c81ea44dd7a3f78520b038631f', 'Command Id Constrast', '/commandConstrast/list.do', null, '1', 'commandConstrastList', '0', '4');
INSERT INTO `mms_menu` VALUES ('7b2bcde992194930a1b7f389bd63f93d', null, null, null, null, '718e021993ca4ad88ae58a703136ef39', 'Add command Id', '/commandConstrast/add.do', null, '2', 'addcommandConstrast', '0', '1');
INSERT INTO `mms_menu` VALUES ('7b8c6c1b848942fe85505b9d693616e2', null, null, null, null, 'e502784caf0945ad9ddbf74dd1c3f59a', 'Delete role', '/role/delete.do', null, '2', 'delRole', '0', '3');
INSERT INTO `mms_menu` VALUES ('7eb8862e60d146b89dc888fcdfde7fbd', null, null, null, null, '50c02530fdd3422d80bb4b1ee5398ab6', 'Delete department', '/department/delete.do', null, '2', 'delDept', '0', '3');
INSERT INTO `mms_menu` VALUES ('848e15cc2d8a462f831ec850814385cc', null, null, null, null, '154cd00e411d458b93d043af14192b6a', 'Add Q & A', '/questionAnswer/add.do', null, '2', 'addQuestionAnswer', '0', '1');
INSERT INTO `mms_menu` VALUES ('86f26eea127a487abfcd8e097731698f', null, null, null, null, '2258085defb84246bababa5af84277a5', 'Delete notice', '/notice/delete.do', null, '2', 'delNotice', '0', '3');
INSERT INTO `mms_menu` VALUES ('8905575de8d54f52a645d8b93a66f6a3', null, null, null, null, 'b5048b578d6c455eb6b8f0f53a44e922', 'Table Rule', '/tableRule/list.do', null, '1', 'trList', '0', '1');
INSERT INTO `mms_menu` VALUES ('908cf043ed0441c485c8cc927c7ed552', null, null, null, null, '51ee577ee96442c6a253d961b66861b2', 'Business management ', null, '8', '1', null, '0', '2');
INSERT INTO `mms_menu` VALUES ('96edd6b51612478ba734d19e6ec5f8d2', null, null, null, null, '50c02530fdd3422d80bb4b1ee5398ab6', 'Modify department', '/department/update.do', null, '2', 'updDept', '0', '2');
INSERT INTO `mms_menu` VALUES ('9797fe365f7846adb9c977225c2ec996', null, null, null, null, 'ed396d532ecf44a3845e6a625b819507', 'Delete operator', '/user/delete.do', null, '2', 'delUser', '0', '3');
INSERT INTO `mms_menu` VALUES ('99c5bbd0a12f4d32bc5455a3fe305ba0', null, null, null, null, 'a49ed04af63f44408b3787929c026936', 'Modify code', '/codeConstrast/update.do', null, '2', 'updcodeConstrast', '0', '2');
INSERT INTO `mms_menu` VALUES ('9cec213bf96d45c09974875bc9fdb40d', null, null, null, null, 'c65a87375d924254b556d6d29f80f9cb', 'Delete app version', '/appVersion/delete.do', null, '2', 'delApp', '0', '3');
INSERT INTO `mms_menu` VALUES ('9d14b5163e864656ac66e13df3cd901a', null, null, null, null, '0c7001c81ea44dd7a3f78520b038631f', 'System Param', '/systemParam/list.do', '14', '1', 'paramList', '0', '2');
INSERT INTO `mms_menu` VALUES ('a49ed04af63f44408b3787929c026936', null, null, null, null, '0c7001c81ea44dd7a3f78520b038631f', 'Code Constrast', '/codeConstrast/list.do', null, '1', 'codeConstrastList', '0', '3');
INSERT INTO `mms_menu` VALUES ('a567c860134445dc9108c04ed1d0180d', null, null, null, null, '908cf043ed0441c485c8cc927c7ed552', 'Trading limit', '/transactionLimit/list.do', null, '1', null, '0', '2');
INSERT INTO `mms_menu` VALUES ('a953f15558b14caf9f7db1f436e34a7f', null, null, null, null, '718e021993ca4ad88ae58a703136ef39', 'Modify command Id', '/commandConstrast/update.do', null, '2', 'updcommandConstrast', '0', '2');
INSERT INTO `mms_menu` VALUES ('aa4dc33745564652b756c1256f42a5ec', null, null, null, null, 'd6b7a69b27394faeaccf0f8e76919ee3', 'Logging management', null, '11', '1', null, '0', '1');
INSERT INTO `mms_menu` VALUES ('ae6869bfa3484103aea7847f9e2cff7f', null, null, null, null, '4efa2ef1aea440d3b5714b5e307ff28b', 'Modify dict', '/systemDict/update.do', null, '2', 'updSystemDict', '0', '2');
INSERT INTO `mms_menu` VALUES ('b0fd17d5cea04e08bfbbc9606114c3b4', null, null, null, null, 'ed396d532ecf44a3845e6a625b819507', 'Modify operator', '/user/update.do', null, '2', 'updUser', '0', '2');
INSERT INTO `mms_menu` VALUES ('b5048b578d6c455eb6b8f0f53a44e922', null, null, null, null, 'd6b7a69b27394faeaccf0f8e76919ee3', 'Table Setting', null, null, '1', null, '0', '3');
INSERT INTO `mms_menu` VALUES ('b62711dde4aa435fa9c82f6048f24c08', null, null, null, null, '382d7512bad649c0a469bb7468dd8c1a', 'Add Agreement', '/serviceAgreement/add.do', null, '2', 'addAgreement', '0', '1');
INSERT INTO `mms_menu` VALUES ('bc1acd2c42a54e4487f0eb0413686c80', null, null, null, null, '9d14b5163e864656ac66e13df3cd901a', 'Add param', '/systemParam/add.do', null, '2', 'addSystemParam', '0', '1');
INSERT INTO `mms_menu` VALUES ('c345cdf0ccb74a2298ecfd85fd8b7e98', null, null, null, null, 'e502784caf0945ad9ddbf74dd1c3f59a', 'Add role', '/role/add.do', null, '2', 'addRole', '0', '1');
INSERT INTO `mms_menu` VALUES ('c65a87375d924254b556d6d29f80f9cb', null, null, null, null, '0a1ef46c43b942acbe1fad46916d89d0', 'APP Version', '/appVersion/list.do', '17', '1', 'appVersionList', '0', '2');
INSERT INTO `mms_menu` VALUES ('ca7769dd78cc41a19c8519b15ed8026a', null, null, null, null, 'd6b7a69b27394faeaccf0f8e76919ee3', 'Day-end Processing', null, '12', '1', null, '0', '2');
INSERT INTO `mms_menu` VALUES ('ce165d53bb0c4f4e9d29ec5e2cfebe3c', null, null, null, null, '4efa2ef1aea440d3b5714b5e307ff28b', 'Delete dict', '/systemDict/delete.do', null, '2', 'delSystemDict', '0', '3');
INSERT INTO `mms_menu` VALUES ('d5fbc2794a244c70afc9e97725671b72', null, null, null, null, '908cf043ed0441c485c8cc927c7ed552', 'Business', '/systemService/list.do', '15', '1', 'buzzList', '0', '1');
INSERT INTO `mms_menu` VALUES ('d6b7a69b27394faeaccf0f8e76919ee3', null, null, null, null, '0', 'Settings', null, '9', '1', null, '0', '2');
INSERT INTO `mms_menu` VALUES ('e3fc5d7454924facb87b85f3ab9ad1c5', null, null, null, null, '0a1ef46c43b942acbe1fad46916d89d0', 'Device Bind', '/deviceBind/list.do', '21', '1', 'deviceBindList', '0', '6');
INSERT INTO `mms_menu` VALUES ('e4987533a6674ef2a446cb136a3ce7f7', null, null, null, null, '0a1ef46c43b942acbe1fad46916d89d0', 'Feedback ', '/feedback/list.do', '18', '1', 'feedbackList', '0', '3');
INSERT INTO `mms_menu` VALUES ('e502784caf0945ad9ddbf74dd1c3f59a', null, null, null, null, 'e6e19a88b7ea4950b621e24e25368b08', 'Role', '/role/list.do', '4', '1', 'roleList', '0', '2');
INSERT INTO `mms_menu` VALUES ('e6e19a88b7ea4950b621e24e25368b08', null, null, null, null, '51ee577ee96442c6a253d961b66861b2', 'Basic management', null, '2', '1', 'baseManagement', '0', '1');
INSERT INTO `mms_menu` VALUES ('ed396d532ecf44a3845e6a625b819507', null, null, null, null, 'e6e19a88b7ea4950b621e24e25368b08', 'Operator', '/user/list.do', '3', '1', 'userList', '0', '1');
INSERT INTO `mms_menu` VALUES ('fbced76bc96f47909238ff8cb6197c3f', null, null, null, null, '08455b28e00a466ea3d4a859230a3e60', 'Initialize', '/system/initialize.do', null, '2', 'initialize', '0', '1');

-- ----------------------------
-- Table structure for mms_notice
-- ----------------------------
DROP TABLE IF EXISTS `mms_notice`;
CREATE TABLE `mms_notice` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(32) DEFAULT NULL,
  `create_date` datetime(6) DEFAULT NULL,
  `update_by` varchar(32) DEFAULT NULL,
  `update_date` datetime(6) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL COMMENT '公告标题',
  `content_text` varchar(3500) DEFAULT NULL COMMENT '公告文本内容',
  `start_date` datetime(6) DEFAULT NULL COMMENT '开始时间',
  `end_date` datetime(6) DEFAULT NULL COMMENT '结束时间',
  `is_delete` varchar(2) DEFAULT NULL COMMENT '删除状态:0未删除 1已删除',
  `notice_state` varchar(2) DEFAULT NULL COMMENT '公告状态：1发布2草稿3下架',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mms_notice
-- ----------------------------
INSERT INTO `mms_notice` VALUES ('1', '1', '2017-11-21 16:25:18.000000', null, null, '测试', '<p>测试<img src=\"http://localhost:8080/mGateCMS/upload/2017-11-21/35abdec6077b44039fd16c1cb13a7b0a.jpg\" _src=\"http://localhost:8080/mGateCMS/upload/2017-11-21/35abdec6077b44039fd16c1cb13a7b0a.jpg\"/></p>', '2017-11-21 16:25:15.000000', null, '0', '2');
INSERT INTO `mms_notice` VALUES ('2', '1', '2017-11-23 16:41:24.000000', null, null, '1', '<p><img src=\"http://localhost:8080/mGateCMS/upload/2017-11-23/69b693cc066b4536a682eb6a3112c08f.png\" _src=\"http://localhost:8080/mGateCMS/upload/2017-11-23/69b693cc066b4536a682eb6a3112c08f.png\"/>11211121</p>', '2017-11-23 16:41:21.000000', null, '0', '2');
INSERT INTO `mms_notice` VALUES ('3', '1', '2017-11-23 16:42:02.000000', null, null, '2', '<p><img src=\"http://localhost:8080/mGateCMS/upload/2017-11-23/a1f20d042d6646908d63e67b09892405.jpg\" _src=\"http://localhost:8080/mGateCMS/upload/2017-11-23/a1f20d042d6646908d63e67b09892405.jpg\"/>4444</p>', '2017-11-23 16:41:58.000000', null, '0', '3');

-- ----------------------------
-- Table structure for mms_operate_log
-- ----------------------------
DROP TABLE IF EXISTS `mms_operate_log`;
CREATE TABLE `mms_operate_log` (
  `id` varchar(32) NOT NULL,
  `create_by` varchar(32) DEFAULT NULL COMMENT '操作人',
  `create_date` datetime(6) DEFAULT NULL COMMENT '操作时间',
  `operate_method` varchar(255) DEFAULT NULL COMMENT '操作方法',
  `ref_id` varchar(32) DEFAULT NULL COMMENT '如果操作类型为写,则为所操作项的id,否则为空',
  `operate_type` varchar(255) DEFAULT NULL COMMENT '操作类型0读 1写 2其他',
  `operate_desc` varchar(500) DEFAULT NULL COMMENT '操作描述(包括操作的出入参)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mms_operate_log
-- ----------------------------
INSERT INTO `mms_operate_log` VALUES ('008aa64df8c44ea98086fd76846ff5a5', '1', '2017-11-21 17:38:51.000000', 'Add role', '1', '1', 'Add role params:[roleName:用户管理员;roleDesc:用户管理员;menuIds:51ee577ee96442c6a253d961b66861b2,e6e19a88b7ea4950b621e24e25368b08,ed396d532ecf44a3845e6a625b819507,2f6b9ce020b14028aae6b8e5f87afad1,b0fd17d5cea04e08bfbbc9606114c3b4,9797fe365f7846adb9c977225c2ec996;]');
INSERT INTO `mms_operate_log` VALUES ('00a323154e2c40d3934f124856ddbbb4', '1', '2017-11-21 15:21:45.000000', 'System Dict', '1', '0', 'System Dict params:[cpage:1;dictName:;]');
INSERT INTO `mms_operate_log` VALUES ('00ae2b537bcc4f8e8c5f44842bed7c27', '1', '2017-11-27 11:00:04.000000', 'feedbackInfoDetail', '1', '0', 'feedbackInfoDetail params:[id:1;]');
INSERT INTO `mms_operate_log` VALUES ('00bd2e6b7e40453c8e4e1fec61eaaae2', '1', '2017-11-23 15:28:39.000000', 'Trading limit', '1', '0', 'Trading limit params:[serviceId:459a13440f1341839e43e181c5d05d53;]');
INSERT INTO `mms_operate_log` VALUES ('0148b0b9532249a3b1b9c63d847c84cd', '1', '2017-11-22 16:07:16.000000', 'Role', '1', '0', 'Role params:[]');
INSERT INTO `mms_operate_log` VALUES ('017ef813e2b84c5a8a194a2b2d5bdb17', '1', '2017-11-23 14:18:54.000000', 'Department', '1', '0', 'Department params:[]');
INSERT INTO `mms_operate_log` VALUES ('0212b964a09e489e95feb2426624a890', '1', '2017-11-27 10:52:13.000000', 'feedbackInfoDetail', '1', '0', 'feedbackInfoDetail params:[id:1;]');
INSERT INTO `mms_operate_log` VALUES ('0220d69316704540ac12142e7511bbbf', '1', '2017-11-22 11:08:14.000000', 'Role', '1', '0', 'Role params:[]');
INSERT INTO `mms_operate_log` VALUES ('02e248b105124292b2243ea18ea60e0f', '1', '2017-11-23 11:03:09.000000', 'Operator', '1', '0', 'Operator params:[]');
INSERT INTO `mms_operate_log` VALUES ('02f8e9847e434a168c41fd14983f3fcb', '1', '2017-11-23 16:41:25.000000', 'Add notice', '1', '1', 'Add notice params:[title:1;contentText:<p><img src=\"http://localhost:8080/mGateCMS/upload/2017-11-23/69b693cc066b4536a682eb6a3112c08f.png\" _src=\"http://localhost:8080/mGateCMS/upload/2017-11-23/69b693cc066b4536a682eb6a3112c08f.png\"/>11211121</p>;startDate:2017-11-23 16:41:21;noticeState:2;]');
INSERT INTO `mms_operate_log` VALUES ('038170ac826149db9b6ae72f207a1efc', '1', '2017-11-21 15:59:55.000000', 'Notice', '1', '0', 'Notice params:[]');
INSERT INTO `mms_operate_log` VALUES ('039c9cab3539476ab55bbff1e3d23aeb', '1', '2017-11-27 10:55:20.000000', 'Feedback ', '1', '0', 'Feedback  params:[]');
INSERT INTO `mms_operate_log` VALUES ('03e77d01853444f3a0baf603ae9a9736', '1', '2017-11-22 17:22:23.000000', 'Operator', '1', '0', 'Operator params:[]');
INSERT INTO `mms_operate_log` VALUES ('03e7bc4c91eb4f93a4ce8ecdbd808a04', '1', '2017-11-23 11:06:13.000000', 'Operator', '1', '0', 'Operator params:[]');
INSERT INTO `mms_operate_log` VALUES ('03ffba67ebd547e296a8eb338dcc560e', 'c0f82156961e422b9111fb7cc067f03d', '2017-11-22 14:58:28.000000', 'Role', 'c0f82156961e422b9111fb7cc067f03d', '0', 'Role params:[]');
INSERT INTO `mms_operate_log` VALUES ('045d98cc1c0a4d4da55d4b03914d0fa3', '1', '2017-11-21 15:11:53.000000', 'System Dict', '1', '0', 'System Dict params:[]');
INSERT INTO `mms_operate_log` VALUES ('04f70d1d1c794ad8b7d1c2c29a43858e', '1', '2017-11-22 14:29:47.000000', 'roleDetail', 'a7fa3695f0c444feaa9d843c7947c530', '0', 'roleDetail params:[id:a7fa3695f0c444feaa9d843c7947c530;]');
INSERT INTO `mms_operate_log` VALUES ('051c0ece4c4f4551acbe2f05895edd8b', '1', '2017-11-21 16:26:26.000000', 'Notice', '1', '0', 'Notice params:[noticeState:1;]');
INSERT INTO `mms_operate_log` VALUES ('056d80b0b8824b96a610b416215560e1', '1', '2017-11-27 15:22:08.000000', 'Operator', '1', '0', 'Operator params:[]');
INSERT INTO `mms_operate_log` VALUES ('05ad75e51e6944d59a3374d9203d5ea3', '1', '2017-11-27 15:00:33.000000', 'Device Bind', '1', '0', 'Device Bind params:[phone:1234;val:1;]');
INSERT INTO `mms_operate_log` VALUES ('05ae08ea50814886b8c149600adf81b6', '1', '2017-11-22 11:31:22.000000', 'Role', '1', '0', 'Role params:[]');
INSERT INTO `mms_operate_log` VALUES ('065dc6ae3c29412894f28e316a77a830', '1', '2017-11-22 14:50:38.000000', 'Operator', '1', '0', 'Operator params:[]');
INSERT INTO `mms_operate_log` VALUES ('06904dd155de4f71839299ea1785f05f', '1', '2017-11-23 14:03:40.000000', 'Operator', '1', '0', 'Operator params:[]');
INSERT INTO `mms_operate_log` VALUES ('0694d3739fce4309bf5d9c094ec55b6c', '1', '2017-11-23 14:47:21.000000', 'Trading limit', '1', '0', 'Trading limit params:[serviceId:459a13440f1341839e43e181c5d05d53;]');
INSERT INTO `mms_operate_log` VALUES ('069af47c91db4f42abffbc72557d4021', '8bf6c9ae369b4fd0961843feb42150b4', '2017-11-22 19:04:16.000000', 'doLogin', '8bf6c9ae369b4fd0961843feb42150b4', '0', 'doLogin params:[userName:wuqingsong;userPassword:WUqing123;veriCode:jxp7;remFlag:1;]');
INSERT INTO `mms_operate_log` VALUES ('06b58f36e510406e9c73abd782e7aaff', '1', '2017-11-27 15:35:05.000000', 'Device Bind', '1', '0', 'Device Bind params:[phone:1234;val:2;]');
INSERT INTO `mms_operate_log` VALUES ('06d8476c5a4f45958446f5b4a275a35a', '8bf6c9ae369b4fd0961843feb42150b4', '2017-11-23 08:52:13.000000', 'Role', '8bf6c9ae369b4fd0961843feb42150b4', '0', 'Role params:[]');
INSERT INTO `mms_operate_log` VALUES ('06ff7a518f33499889167148476115ea', '1', '2017-11-23 16:15:25.000000', 'systemDictDetail', '1', '0', 'systemDictDetail params:[id:1;]');
INSERT INTO `mms_operate_log` VALUES ('07c312a14dfd47dfbd937d27e3ae879d', '1', '2017-11-27 15:21:37.000000', 'userDetail', '8bf6c9ae369b4fd0961843feb42150b4', '0', 'userDetail params:[id:8bf6c9ae369b4fd0961843feb42150b4;]');
INSERT INTO `mms_operate_log` VALUES ('09396607cb0e4d2db23537ef4288d451', '1', '2017-11-27 15:18:06.000000', 'Operator', '1', '0', 'Operator params:[]');
INSERT INTO `mms_operate_log` VALUES ('096ee782353c45cba33099c17894d333', '1', '2017-11-27 10:16:55.000000', 'Notice', '1', '0', 'Notice params:[noticeState:2;]');
INSERT INTO `mms_operate_log` VALUES ('0a0fb9f2e1544ca880cff175cce58e8b', '1', '2017-11-23 15:46:07.000000', 'Trading limit', '1', '0', 'Trading limit params:[]');
INSERT INTO `mms_operate_log` VALUES ('0a5929c579064bd8ad6cbd54278cb35d', '1', '2017-11-27 14:36:57.000000', 'doLogin', '1', '0', 'doLogin params:[userName:admin;userPassword:222222;veriCode:5vdw;remFlag:1;]');
INSERT INTO `mms_operate_log` VALUES ('0a79d9eddbd24e2d8984338fb23f030b', '1', '2017-11-27 15:34:10.000000', 'Device Bind', '1', '0', 'Device Bind params:[phone:12345;val:2;]');
INSERT INTO `mms_operate_log` VALUES ('0ad54897cbad4e7589dcaefe213f3601', '1', '2017-11-23 14:18:57.000000', 'System Initalization', '1', '0', 'System Initalization params:[]');
INSERT INTO `mms_operate_log` VALUES ('0c1c8a87a10c4709aae76b7281d98322', '1', '2017-11-23 14:41:14.000000', 'systemServiceDetail', '5e448e982a0e41338e6099495ce63175', '0', 'systemServiceDetail params:[id:5e448e982a0e41338e6099495ce63175;]');
INSERT INTO `mms_operate_log` VALUES ('0c60bb77162248b9bac385fe2f15771e', '1', '2017-11-21 15:27:51.000000', 'System Dict', '1', '0', 'System Dict params:[cpage:2;dictName:;]');
INSERT INTO `mms_operate_log` VALUES ('0cc35ff274ef4500aea564dd2bdd7b91', '1', '2017-11-21 15:22:53.000000', 'systemDictDetail', '1', '0', 'systemDictDetail params:[id:1;]');
INSERT INTO `mms_operate_log` VALUES ('0cf78ba7c4ac4f6bb6cf98523b897d5a', 'c0f82156961e422b9111fb7cc067f03d', '2017-11-22 14:58:23.000000', 'Role', 'c0f82156961e422b9111fb7cc067f03d', '0', 'Role params:[]');
INSERT INTO `mms_operate_log` VALUES ('0d0cf5ee3b914904a84805009dd3adf0', '8bf6c9ae369b4fd0961843feb42150b4', '2017-11-23 08:52:11.000000', 'Operator', '8bf6c9ae369b4fd0961843feb42150b4', '0', 'Operator params:[]');
INSERT INTO `mms_operate_log` VALUES ('0d53e5719490447abbe07c41a1b875a7', '1', '2017-11-27 15:26:19.000000', 'Operator', '1', '0', 'Operator params:[]');
INSERT INTO `mms_operate_log` VALUES ('0d7c55e0c8754fd29e71b595e5e459a6', '1', '2017-11-22 17:21:09.000000', 'doLogin', '1', '0', 'doLogin params:[userName:admin;userPassword:222222;veriCode:ld7z;remFlag:1;]');
INSERT INTO `mms_operate_log` VALUES ('0e0ed79e43c340b39cca1ddc7fb99d22', '1', '2017-11-23 16:38:23.000000', 'Notice', '1', '0', 'Notice params:[noticeState:3;]');
INSERT INTO `mms_operate_log` VALUES ('0e4442ff70df43169958f408a0f87e2d', '9fd935a5665b40aa9bd2c11b4590c67e', '2017-11-22 16:04:16.000000', 'doLogOut', '9fd935a5665b40aa9bd2c11b4590c67e', '0', 'User log out');
INSERT INTO `mms_operate_log` VALUES ('0e5dfb81fc184389b54544ce4a8231e3', '1', '2017-11-21 16:26:33.000000', 'noticeDetail', '1', '0', 'noticeDetail params:[id:1;]');
INSERT INTO `mms_operate_log` VALUES ('0e6274e42c3f4fa2b324ec239a33f91e', '1', '2017-11-27 10:41:35.000000', 'Feedback ', '1', '0', 'Feedback  params:[refSystem:2;]');
INSERT INTO `mms_operate_log` VALUES ('0f05e3a7fa7049918f38ff9e88038480', '1', '2017-11-23 15:00:26.000000', 'Trading limit', '1', '0', 'Trading limit params:[serviceId:5e448e982a0e41338e6099495ce63175;]');
INSERT INTO `mms_operate_log` VALUES ('0f0e81f78b564514bc95044b8cc9214c', '1', '2017-11-23 16:26:10.000000', 'Command Id Constrast', '1', '0', 'Command Id Constrast params:[commandId:;]');
INSERT INTO `mms_operate_log` VALUES ('0f569559f3354099ad0f96e860619a72', '1', '2017-11-27 16:03:59.000000', 'Table Rule', '1', '0', 'Table Rule params:[]');
INSERT INTO `mms_operate_log` VALUES ('0f88157e412d4893bce960dad172cd0f', '1', '2017-11-22 17:21:30.000000', 'Role', '1', '0', 'Role params:[]');
INSERT INTO `mms_operate_log` VALUES ('0f897dc6f906410696a56b0f273e40d2', '1', '2017-11-27 10:55:22.000000', 'feedbackInfoDetail', '1', '0', 'feedbackInfoDetail params:[id:1;]');
INSERT INTO `mms_operate_log` VALUES ('103b0d0a42d64bdf8e8de82d0e530e2d', '1', '2017-11-21 15:22:36.000000', 'System Dict', '1', '0', 'System Dict params:[dictName:;]');
INSERT INTO `mms_operate_log` VALUES ('105133ecd6dc47799018c9cf43724a34', '1', '2017-11-22 09:39:09.000000', 'Add role', '1', '1', 'Add role params:[roleName:用户管理员;roleDesc:用户管理员;menuIds:51ee577ee96442c6a253d961b66861b2,e6e19a88b7ea4950b621e24e25368b08,ed396d532ecf44a3845e6a625b819507,2f6b9ce020b14028aae6b8e5f87afad1,b0fd17d5cea04e08bfbbc9606114c3b4,9797fe365f7846adb9c977225c2ec996;]');
INSERT INTO `mms_operate_log` VALUES ('106df2e8c8d54909997863387187a29d', '1', '2017-11-27 15:41:22.000000', 'Device Bind', '1', '0', 'Device Bind params:[phone:1234;val:1;]');
INSERT INTO `mms_operate_log` VALUES ('107be501bdcf40378af9331092a17d1d', '1', '2017-11-22 14:50:10.000000', 'Operator', '1', '0', 'Operator params:[]');
INSERT INTO `mms_operate_log` VALUES ('1116f229864e44299cd1bcedd8dd48df', '1', '2017-11-27 15:05:00.000000', 'Device Bind', '1', '0', 'Device Bind params:[phone:12345;val:1;]');
INSERT INTO `mms_operate_log` VALUES ('114260f9951d46a68a0c4568a1a1e700', '1', '2017-11-22 11:24:56.000000', 'roleDetail', 'cab3ffe45fa34c06a7bd7724c5809763', '0', 'roleDetail params:[id:cab3ffe45fa34c06a7bd7724c5809763;]');
INSERT INTO `mms_operate_log` VALUES ('117899f2dee04414a88fbaaa3e587e86', '1', '2017-11-23 16:26:19.000000', 'Code Constrast', '1', '0', 'Code Constrast params:[]');
INSERT INTO `mms_operate_log` VALUES ('1181a42549f145bda4c4e4403cbf6024', '1', '2017-11-23 15:44:23.000000', 'System Dict', '1', '0', 'System Dict params:[]');
INSERT INTO `mms_operate_log` VALUES ('12a463bdfee84549b4188bafe3ad7152', '1', '2017-11-22 16:07:08.000000', 'Role', '1', '0', 'Role params:[]');
INSERT INTO `mms_operate_log` VALUES ('12ec8034e34b4cdea1df98948eb912c4', '1', '2017-11-21 16:26:29.000000', 'Notice', '1', '0', 'Notice params:[noticeState:2;]');
INSERT INTO `mms_operate_log` VALUES ('1324582b05f84d86a060c260cba3cc1f', '1', '2017-11-23 14:44:04.000000', 'Trading limit', '1', '0', 'Trading limit params:[]');
INSERT INTO `mms_operate_log` VALUES ('13ac1c5661b542ce9ab563f5b6eeb61a', '1', '2017-11-23 15:52:40.000000', 'Trading limit', '1', '0', 'Trading limit params:[serviceId:459a13440f1341839e43e181c5d05d53;]');
INSERT INTO `mms_operate_log` VALUES ('1416327d58864ee2971f70fb2544bf12', '1', '2017-11-22 16:55:47.000000', 'doLogin', '1', '0', 'doLogin params:[userName:admin;userPassword:222222;veriCode:rcfk;remFlag:1;]');
INSERT INTO `mms_operate_log` VALUES ('14599394a6cd498f9e77b2120697ec53', '1', '2017-11-21 15:22:18.000000', 'systemDictDetail', '2ed3861b507e42c296cdd90a165ab587', '0', 'systemDictDetail params:[id:2ed3861b507e42c296cdd90a165ab587;]');
INSERT INTO `mms_operate_log` VALUES ('145c504fee63445d8ca86a9aa30c14ba', '1', '2017-11-22 10:46:18.000000', 'roleDetail', '0fff7c3c005c40599d80f1a05fa56deb', '0', 'roleDetail params:[id:0fff7c3c005c40599d80f1a05fa56deb;]');
INSERT INTO `mms_operate_log` VALUES ('14b866fed6e94df78aad02102e1f5c71', '1', '2017-11-22 15:06:22.000000', 'Add operator', '1', '1', 'Add operator params:[userName:AAbb11;userPassword:AAbb11;realName:AAbb11;userPhoto:http://localhost:8080/mGateCMS/static/imgs/upload/20171122/1511334361981_321.jpg;userNo:1234;userPhone:123;userEmail:123@qq.com;certType:1;userGender:1;certId:123;deptId:84c87bfbc93348c9a89cf43534b0beae;roleIds:5d8bc58e8eaa44efa8bf20d8a33412ae,6f1a5d427c6742598f4582a2ff331801;userRemark:123;]');
INSERT INTO `mms_operate_log` VALUES ('14f0cd6674be4fe58fe4f5e9f92c4da9', '1', '2017-11-27 10:44:08.000000', 'feedbackInfoDetail', '2', '0', 'feedbackInfoDetail params:[id:2;]');
INSERT INTO `mms_operate_log` VALUES ('153e59c3746d4c2f87d3484e30c6d267', '1', '2017-11-23 15:00:23.000000', 'Trading limit', '1', '0', 'Trading limit params:[serviceId:459a13440f1341839e43e181c5d05d53;]');
INSERT INTO `mms_operate_log` VALUES ('15800c91b880467e93180e233091fcdb', '1', '2017-11-21 15:21:43.000000', 'System Dict', '1', '0', 'System Dict params:[cpage:3;dictName:;]');
INSERT INTO `mms_operate_log` VALUES ('15b8a958784f407fa717dcd90b373b41', '1', '2017-11-22 14:50:12.000000', 'Role', '1', '0', 'Role params:[]');
INSERT INTO `mms_operate_log` VALUES ('1682284567d349f88394d38384f27526', '8bf6c9ae369b4fd0961843feb42150b4', '2017-11-22 19:16:55.000000', 'doLogOut', '8bf6c9ae369b4fd0961843feb42150b4', '0', 'User log out');
INSERT INTO `mms_operate_log` VALUES ('16e9480d54d04d24b794f3ffd1d08590', '1', '2017-11-21 15:21:38.000000', 'System Dict', '1', '0', 'System Dict params:[cpage:3;dictName:;]');
INSERT INTO `mms_operate_log` VALUES ('16ea17aee88f41b7bb932721d5b03584', '1', '2017-11-27 10:42:17.000000', 'Feedback ', '1', '0', 'Feedback  params:[refSystem:2;]');
INSERT INTO `mms_operate_log` VALUES ('1712794216dd49cbbbcf6a44874ee3be', '1', '2017-11-27 14:57:17.000000', 'Device Bind', '1', '0', 'Device Bind params:[phone:12345;val:2;]');
INSERT INTO `mms_operate_log` VALUES ('175b3002dacd40ee99c89b5ee6af1813', '1', '2017-11-22 14:29:53.000000', 'Modify role', 'a7fa3695f0c444feaa9d843c7947c530', '1', 'Modify role params:[id:a7fa3695f0c444feaa9d843c7947c530;roleName:测试;roleDesc:测试;menuIds:51ee577ee96442c6a253d961b66861b2,e6e19a88b7ea4950b621e24e25368b08,ed396d532ecf44a3845e6a625b819507,2f6b9ce020b14028aae6b8e5f87afad1,b0fd17d5cea04e08bfbbc9606114c3b4,9797fe365f7846adb9c977225c2ec996,e502784caf0945ad9ddbf74dd1c3f59a,c345cdf0ccb74a2298ecfd85fd8b7e98;]');
INSERT INTO `mms_operate_log` VALUES ('1799368f54374cac9a05a629759a4fe7', '1', '2017-11-23 16:41:39.000000', 'noticeDetail', '2', '0', 'noticeDetail params:[id:2;]');
INSERT INTO `mms_operate_log` VALUES ('179e3451587546c59457287f839219e7', '1', '2017-11-22 17:22:22.000000', 'Add operator', '1', '1', 'Add operator params:[userName:wuqingsong;userPassword:WUqing123;realName:武青松;userPhoto:http://localhost:8080/mGateCMS/static/imgs/upload/20171122/1511342527177_319.jpg;userNo:123;userPhone:123;userEmail:123@qq.com;certType:1;userGender:1;certId:123;deptId:84c87bfbc93348c9a89cf43534b0beae;roleIds:4686e167563241d89e2d8f137e2b96cb,7b3da3149a7542dc88126cb3ff83c0d5;userRemark:123;]');
INSERT INTO `mms_operate_log` VALUES ('17b304022b6b4ffebbc78a0952a773c6', '1', '2017-11-22 11:03:16.000000', 'Role', '1', '0', 'Role params:[]');
INSERT INTO `mms_operate_log` VALUES ('17c228478b824ece8c83d7eed69900e7', '1', '2017-11-21 15:22:33.000000', 'System Dict', '1', '0', 'System Dict params:[dictName:男;]');
INSERT INTO `mms_operate_log` VALUES ('17eb3ac0a0f8424a8030122358d263fd', '1', '2017-11-21 16:26:47.000000', 'Notice', '1', '0', 'Notice params:[]');
INSERT INTO `mms_operate_log` VALUES ('1812abc666494a9196163732498bb622', '1', '2017-11-23 16:41:34.000000', 'Notice', '1', '0', 'Notice params:[noticeState:1;]');
INSERT INTO `mms_operate_log` VALUES ('1812c52f75aa4c18b5efc4d6efb8feb3', '1', '2017-11-23 16:16:36.000000', 'System Dict', '1', '0', 'System Dict params:[]');
INSERT INTO `mms_operate_log` VALUES ('18360d68170c488c9be697c96f620a79', '1', '2017-11-23 13:57:50.000000', 'doLogin', '1', '0', 'doLogin params:[userName:admin;userPassword:222222;veriCode:euad;remFlag:1;]');
INSERT INTO `mms_operate_log` VALUES ('185163e8f1504e698d4111f331ff04ae', '1', '2017-11-22 14:14:23.000000', 'roleDetail', '91a15fbff4284f5f9d9ceaceaadea855', '0', 'roleDetail params:[id:91a15fbff4284f5f9d9ceaceaadea855;]');
INSERT INTO `mms_operate_log` VALUES ('1890284f9e6c498b9dcdaf7aaa2f6b31', '1', '2017-11-23 16:16:10.000000', 'System Dict', '1', '0', 'System Dict params:[]');
INSERT INTO `mms_operate_log` VALUES ('190f1eb18bfd470fb745c106e586c589', 'c0f82156961e422b9111fb7cc067f03d', '2017-11-22 15:03:55.000000', 'userDetail', 'c0f82156961e422b9111fb7cc067f03d', '0', 'userDetail params:[id:c0f82156961e422b9111fb7cc067f03d;]');
INSERT INTO `mms_operate_log` VALUES ('19508f845f6a40ed9ac3c57e2248a013', '1', '2017-11-27 10:38:30.000000', 'Feedback ', '1', '0', 'Feedback  params:[refSystem:2;]');
INSERT INTO `mms_operate_log` VALUES ('1967d04e2d93498198a756e4fd2399f4', '1', '2017-11-23 16:59:43.000000', 'Feedback ', '1', '0', 'Feedback  params:[]');
INSERT INTO `mms_operate_log` VALUES ('19757a7240c140369c81e081d1bc2e93', '1', '2017-11-22 10:52:22.000000', 'roleDetail', '0fff7c3c005c40599d80f1a05fa56deb', '0', 'roleDetail params:[id:0fff7c3c005c40599d80f1a05fa56deb;]');
INSERT INTO `mms_operate_log` VALUES ('198a69a25aec4a8086e976cd6a4012b8', '1', '2017-11-23 16:39:13.000000', 'Add notice', '1', '1', 'Add notice params:[title:1;contentText:<p><img src=\"http://localhost:8080/mGateCMS/upload/2017-11-23/c8a56a9bd3674793980471456546640d.png\" _src=\"http://localhost:8080/mGateCMS/upload/2017-11-23/c8a56a9bd3674793980471456546640d.png\"/>1221312312</p>;startDate:2017-11-23 16:39:07;noticeState:2;]');
INSERT INTO `mms_operate_log` VALUES ('19d0db26ee204479ae7f371b2db8944f', '1', '2017-11-22 17:21:47.000000', 'Role', '1', '0', 'Role params:[]');
INSERT INTO `mms_operate_log` VALUES ('1a3904949ad74eef8bb2adcd19e99a3c', '1', '2017-11-22 10:53:46.000000', 'doLogin', '1', '0', 'doLogin params:[userName:admin;userPassword:222222;veriCode:u0tr;remFlag:1;]');
INSERT INTO `mms_operate_log` VALUES ('1a3991eb413442d0bf99ebed210360c5', '1', '2017-11-27 10:53:03.000000', 'feedbackInfoDetail', '1', '0', 'feedbackInfoDetail params:[id:1;]');
INSERT INTO `mms_operate_log` VALUES ('1a54b6dcb4da40839fe1d60e820165a5', '1', '2017-11-22 16:35:13.000000', 'Delete operator', '1', '1', 'Delete operator params:[ids:a25ff9b9b32c450cb925cbd5cd7bbe21;]');
INSERT INTO `mms_operate_log` VALUES ('1a7d22ea08ba4e19a4a77ba801d84088', '1', '2017-11-27 10:38:24.000000', 'Feedback ', '1', '0', 'Feedback  params:[refSystem:2;]');
INSERT INTO `mms_operate_log` VALUES ('1abfa88fcb644dc1bdcbb74a324192fd', '1', '2017-11-22 11:29:04.000000', 'roleDetail', '392e9b1a42bf45519df66722044b8784', '0', 'roleDetail params:[id:392e9b1a42bf45519df66722044b8784;]');
INSERT INTO `mms_operate_log` VALUES ('1ad766e1f50c4ebab224312b8c7a5eeb', '1', '2017-11-27 15:59:39.000000', 'Device Bind', '1', '0', 'Device Bind params:[phone:12345;val:2;]');
INSERT INTO `mms_operate_log` VALUES ('1af29f0b4578411f9e50024f4aa8c307', '1', '2017-11-22 10:55:21.000000', 'Role', '1', '0', 'Role params:[]');
INSERT INTO `mms_operate_log` VALUES ('1b53529ca0d247658d1e745a704824fa', '1', '2017-11-23 16:26:13.000000', 'Command Id Constrast', '1', '0', 'Command Id Constrast params:[commandId:;]');
INSERT INTO `mms_operate_log` VALUES ('1bb08ced2d4c439b856eff0703848c4a', '1', '2017-11-22 14:55:53.000000', 'doLogOut', '1', '0', 'User log out');
INSERT INTO `mms_operate_log` VALUES ('1bc8f87a234c43fa9e9478c90b4ebc31', '1', '2017-11-27 14:42:35.000000', 'Service Agreement', '1', '0', 'Service Agreement params:[]');
INSERT INTO `mms_operate_log` VALUES ('1bda74b3e2634f3281b92aa3843f7d3e', '1', '2017-11-22 11:31:43.000000', 'roleDetail', 'a7fa3695f0c444feaa9d843c7947c530', '0', 'roleDetail params:[id:a7fa3695f0c444feaa9d843c7947c530;]');
INSERT INTO `mms_operate_log` VALUES ('1c23556a0fd645c898d3497edec17d73', '1', '2017-11-22 11:09:10.000000', 'Delete role', '1', '1', 'Delete role params:[ids:0fff7c3c005c40599d80f1a05fa56deb;]');
INSERT INTO `mms_operate_log` VALUES ('1c9f30dd0d3148beb2ee5f04c11ef30d', '1', '2017-11-22 10:17:27.000000', 'Role', '1', '0', 'Role params:[]');
INSERT INTO `mms_operate_log` VALUES ('1db270abfb994dba8f7f47f6a2e257cd', '1', '2017-11-23 14:29:28.000000', 'Business', '1', '0', 'Business params:[]');
INSERT INTO `mms_operate_log` VALUES ('1df4afabee7b4a3ca584a8c2d8b47eba', '1', '2017-11-23 14:44:49.000000', 'Trading limit', '1', '0', 'Trading limit params:[serviceId:459a13440f1341839e43e181c5d05d53;]');
INSERT INTO `mms_operate_log` VALUES ('1e03bbdbd0724f68abe5c7c3753e2257', '8bf6c9ae369b4fd0961843feb42150b4', '2017-11-23 08:52:22.000000', 'roleDetail', '4686e167563241d89e2d8f137e2b96cb', '0', 'roleDetail params:[id:4686e167563241d89e2d8f137e2b96cb;]');
INSERT INTO `mms_operate_log` VALUES ('1e854e14ee7045f0b5c8ced3ba44614a', '1', '2017-11-22 10:17:15.000000', 'Role', '1', '0', 'Role params:[]');
INSERT INTO `mms_operate_log` VALUES ('1ece4bb419b746c9a0716ac3e7973757', '1', '2017-11-22 14:55:23.000000', 'Operator', '1', '0', 'Operator params:[]');
INSERT INTO `mms_operate_log` VALUES ('1ee4a30d44624055b26a3a9f09267973', 'c0f82156961e422b9111fb7cc067f03d', '2017-11-22 15:04:14.000000', 'Operator', 'c0f82156961e422b9111fb7cc067f03d', '0', 'Operator params:[]');
INSERT INTO `mms_operate_log` VALUES ('1ef9eda814814f918112c99d81274b68', '1', '2017-11-23 16:42:31.000000', 'APP Version', '1', '0', 'APP Version params:[]');
INSERT INTO `mms_operate_log` VALUES ('1f9699f57f7443edb5012aef49037d98', '1', '2017-11-27 10:25:39.000000', 'Feedback ', '1', '0', 'Feedback  params:[refSystem:2;]');
INSERT INTO `mms_operate_log` VALUES ('1fb29cfbba7544e1ba5ac8e169aae260', '1', '2017-11-23 14:51:21.000000', 'addTransactionLimit', '1', '1', 'addTransactionLimit params:[serviceId:459a13440f1341839e43e181c5d05d53;limitType:1;limitAmount:12;currency:1;]');
INSERT INTO `mms_operate_log` VALUES ('1fbb7c6d2e2240379f7c7a83bd0a6baa', '1', '2017-11-22 14:05:29.000000', 'roleDetail', '91a15fbff4284f5f9d9ceaceaadea855', '0', 'roleDetail params:[id:91a15fbff4284f5f9d9ceaceaadea855;]');
INSERT INTO `mms_operate_log` VALUES ('204d85e2815640948f0da1cc06c40012', '1', '2017-11-22 09:44:18.000000', 'Add role', '1', '1', 'Add role params:[roleName:12311;roleDesc:1;menuIds:51ee577ee96442c6a253d961b66861b2,e6e19a88b7ea4950b621e24e25368b08,ed396d532ecf44a3845e6a625b819507,2f6b9ce020b14028aae6b8e5f87afad1,b0fd17d5cea04e08bfbbc9606114c3b4;]');
INSERT INTO `mms_operate_log` VALUES ('207110ebfa4446948b583851c7bd72a8', '1', '2017-11-27 14:37:16.000000', 'Service Agreement', '1', '0', 'Service Agreement params:[]');
INSERT INTO `mms_operate_log` VALUES ('20aa4c2b248d445badca35a6f032e663', '1', '2017-11-23 14:30:50.000000', 'Trading limit', '1', '0', 'Trading limit params:[]');
INSERT INTO `mms_operate_log` VALUES ('21032ef4286d45cbbcb8943b6ff70a99', '9fd935a5665b40aa9bd2c11b4590c67e', '2017-11-22 15:12:39.000000', 'doLogOut', '9fd935a5665b40aa9bd2c11b4590c67e', '0', 'User log out');
INSERT INTO `mms_operate_log` VALUES ('215da9ec1141411aa7261f045a8c8eb9', '1', '2017-11-23 14:41:40.000000', 'Business', '1', '0', 'Business params:[]');
INSERT INTO `mms_operate_log` VALUES ('215e808292b349858d04c880490030be', '1', '2017-11-23 14:43:14.000000', 'addTransactionLimit', '1', '1', 'addTransactionLimit params:[serviceId:459a13440f1341839e43e181c5d05d53;limitType:1;limitAmount:200;currency:1;]');
INSERT INTO `mms_operate_log` VALUES ('217bfbc12ed64a58bf968088dd7dae4f', '1', '2017-11-23 16:14:31.000000', 'System Dict', '1', '0', 'System Dict params:[]');
INSERT INTO `mms_operate_log` VALUES ('21a07973e97e494194f9aa4a430089cd', '1', '2017-11-22 14:34:09.000000', 'doLogin', '1', '0', 'doLogin params:[userName:admin;userPassword:222222;veriCode:ajdw;remFlag:1;]');
INSERT INTO `mms_operate_log` VALUES ('21eb1a0da590453f9f12fab2473fba1f', '1', '2017-11-23 14:43:50.000000', 'Trading limit', '1', '0', 'Trading limit params:[serviceId:5e448e982a0e41338e6099495ce63175;]');
INSERT INTO `mms_operate_log` VALUES ('225f27caa77146cab5cc6b850f0da5ac', '1', '2017-11-27 15:18:15.000000', 'addCmsImg', '1', '1', 'addCmsImg params:[]');
INSERT INTO `mms_operate_log` VALUES ('22b31c6da2fe4d509bb1247c8dbd714d', '1', '2017-11-23 14:41:02.000000', 'addSystemService', '1', '1', 'addSystemService params:[serviceCode:123456;serviceName:测试;serviceDesc:测试;dictId:123456;listType:2;]');
INSERT INTO `mms_operate_log` VALUES ('22e0a92f70cf4a93b880347976b9c21e', '1', '2017-11-27 15:35:08.000000', 'Device Bind', '1', '0', 'Device Bind params:[phone:12345;val:2;]');
INSERT INTO `mms_operate_log` VALUES ('239746f1e3d74b4b81a0937bc6a19d42', '1', '2017-11-21 17:37:18.000000', 'Add role', '1', '1', 'Add role params:[roleName:用户管理员;roleDesc:用户管理员;menuIds:51ee577ee96442c6a253d961b66861b2,e6e19a88b7ea4950b621e24e25368b08,ed396d532ecf44a3845e6a625b819507,2f6b9ce020b14028aae6b8e5f87afad1,b0fd17d5cea04e08bfbbc9606114c3b4,9797fe365f7846adb9c977225c2ec996;]');
INSERT INTO `mms_operate_log` VALUES ('23ebcc8247424285b39a35e5319c4890', '8bf6c9ae369b4fd0961843feb42150b4', '2017-11-22 17:48:31.000000', 'Operator', '8bf6c9ae369b4fd0961843feb42150b4', '0', 'Operator params:[]');
INSERT INTO `mms_operate_log` VALUES ('23fe378a200a4ff7ba7b9af373a79460', '1', '2017-11-27 10:38:29.000000', 'Feedback ', '1', '0', 'Feedback  params:[refSystem:1;]');
INSERT INTO `mms_operate_log` VALUES ('2405d74fcaef49dfbc360d3ff9cce7a5', '1', '2017-11-23 15:52:29.000000', 'Trading limit', '1', '0', 'Trading limit params:[serviceId:5e448e982a0e41338e6099495ce63175;]');
INSERT INTO `mms_operate_log` VALUES ('2481bf486dcc44b8a224c6ec44c1d890', '1', '2017-11-23 16:42:07.000000', 'Notice', '1', '0', 'Notice params:[noticeState:1;]');
INSERT INTO `mms_operate_log` VALUES ('24968d01575e4f8b993ddb0fcb1b1ff1', '1', '2017-11-23 14:36:44.000000', 'addSystemService', '1', '1', 'addSystemService params:[serviceCode:123;serviceName:123;serviceDesc:123;dictId:123;listType:0;]');
INSERT INTO `mms_operate_log` VALUES ('25bfc14e6a904292b19dfa55fe523c31', '1', '2017-11-23 15:27:00.000000', 'addTransactionLimit', '1', '1', 'addTransactionLimit params:[serviceId:5e448e982a0e41338e6099495ce63175;limitType:0;limitAmount:123;currency:1;]');
INSERT INTO `mms_operate_log` VALUES ('25c945044f2d403c863b5a696b373ac5', '1', '2017-11-22 16:05:16.000000', 'doLogOut', '1', '0', 'User log out');
INSERT INTO `mms_operate_log` VALUES ('25e610a042684ca196bc0d2994ddd507', '1', '2017-11-21 16:00:07.000000', 'Notice', '1', '0', 'Notice params:[noticeState:2;]');
INSERT INTO `mms_operate_log` VALUES ('260cd75a75b945119470b08cb0200834', '1', '2017-11-27 10:41:30.000000', 'Feedback ', '1', '0', 'Feedback  params:[refSystem:2;]');
INSERT INTO `mms_operate_log` VALUES ('275eb8d05e7a49ebb834329f647359a0', '1', '2017-11-27 10:42:18.000000', 'Feedback ', '1', '0', 'Feedback  params:[refSystem:1;]');
INSERT INTO `mms_operate_log` VALUES ('277af28363e143a090cb2684e5ad35f0', '1', '2017-11-21 15:46:06.000000', 'Notice', '1', '0', 'Notice params:[]');
INSERT INTO `mms_operate_log` VALUES ('277d00cc96db40bc906a2ff30ef44bc7', 'c0f82156961e422b9111fb7cc067f03d', '2017-11-22 15:04:13.000000', 'userDetail', 'c0f82156961e422b9111fb7cc067f03d', '0', 'userDetail params:[id:c0f82156961e422b9111fb7cc067f03d;]');
INSERT INTO `mms_operate_log` VALUES ('27e2bfa0ec92420f8720e206ca841259', '1', '2017-11-21 16:26:31.000000', 'Notice', '1', '0', 'Notice params:[noticeState:2;]');
INSERT INTO `mms_operate_log` VALUES ('27f8cd637ca64ad49035a91fab8429aa', '1', '2017-11-21 17:13:20.000000', 'Role', '1', '0', 'Role params:[]');
INSERT INTO `mms_operate_log` VALUES ('28c2259ec49e45698ac00eda3a5a3ea3', '1', '2017-11-23 15:27:38.000000', 'addTransactionLimit', '1', '1', 'addTransactionLimit params:[serviceId:5e448e982a0e41338e6099495ce63175;limitType:1;limitAmount:222;currency:1;]');
INSERT INTO `mms_operate_log` VALUES ('2908ee5bf32b4c9e8696395952584e6f', '1', '2017-11-22 14:32:33.000000', 'Role', '1', '0', 'Role params:[]');
INSERT INTO `mms_operate_log` VALUES ('290c5f5c457c4b3dbf6bb7bebefa7120', '1', '2017-11-27 10:35:16.000000', 'Operator', '1', '0', 'Operator params:[]');
INSERT INTO `mms_operate_log` VALUES ('2914703add264d55b60005f61e6f0f5c', '1', '2017-11-23 16:27:18.000000', 'Add command Id', '1', '1', 'Add command Id params:[refSystem:2;commandId:12;commandInfo:12;cpsCommandId:12;cpsCommandInfo:12;]');
INSERT INTO `mms_operate_log` VALUES ('295abb9437214737b2eb925a70b13cca', '1', '2017-11-27 14:37:10.000000', 'Q & A', '1', '0', 'Q & A params:[]');
INSERT INTO `mms_operate_log` VALUES ('29beb8babdba4b0eb768373bff570d0f', '1', '2017-11-21 15:56:35.000000', 'Notice', '1', '0', 'Notice params:[]');
INSERT INTO `mms_operate_log` VALUES ('29cdadabcbbb4685890381c9306066dd', '1', '2017-11-23 15:27:34.000000', 'addTransactionLimit', '1', '1', 'addTransactionLimit params:[serviceId:5e448e982a0e41338e6099495ce63175;limitType:0;limitAmount:222;currency:1;]');
INSERT INTO `mms_operate_log` VALUES ('29d1e629c32e4765818a765cf124df5d', '1', '2017-11-23 14:41:31.000000', 'systemServiceDetail', '459a13440f1341839e43e181c5d05d53', '0', 'systemServiceDetail params:[id:459a13440f1341839e43e181c5d05d53;]');
INSERT INTO `mms_operate_log` VALUES ('2a30f1ec976744fdb2c708b8cc156ffa', '1', '2017-11-22 09:26:45.000000', 'Operator', '1', '0', 'Operator params:[]');
INSERT INTO `mms_operate_log` VALUES ('2a8036755ca44cf581fa6c4d86f3373c', '1', '2017-11-27 15:15:30.000000', 'userDetail', '8bf6c9ae369b4fd0961843feb42150b4', '0', 'userDetail params:[id:8bf6c9ae369b4fd0961843feb42150b4;]');
INSERT INTO `mms_operate_log` VALUES ('2ac81e33b1a14dc09aa4b4705fbb65ab', '9fd935a5665b40aa9bd2c11b4590c67e', '2017-11-22 16:05:29.000000', 'doLogin', '9fd935a5665b40aa9bd2c11b4590c67e', '0', 'doLogin params:[userName:AAbb11;userPassword:AAbb11;veriCode:KWCN;remFlag:1;]');
INSERT INTO `mms_operate_log` VALUES ('2acf406271314d7bbe7ea5a08a9aec53', '1', '2017-11-23 16:55:48.000000', 'APP Version', '1', '0', 'APP Version params:[]');
INSERT INTO `mms_operate_log` VALUES ('2b19a4241ca64b18bc9cdae84a407e25', '1', '2017-11-27 10:37:34.000000', 'Feedback ', '1', '0', 'Feedback  params:[]');
INSERT INTO `mms_operate_log` VALUES ('2b5de73895ca42eebdf16f901bd06bdd', '1', '2017-11-22 14:20:09.000000', 'roleDetail', 'a7fa3695f0c444feaa9d843c7947c530', '0', 'roleDetail params:[id:a7fa3695f0c444feaa9d843c7947c530;]');
INSERT INTO `mms_operate_log` VALUES ('2b6b9b98d68448cbbf28146ba03f0d52', '9fd935a5665b40aa9bd2c11b4590c67e', '2017-11-22 16:06:41.000000', 'doLogin', '9fd935a5665b40aa9bd2c11b4590c67e', '0', 'doLogin params:[userName:AAbb11;userPassword:AAbb11;veriCode:QVKX;remFlag:1;]');
INSERT INTO `mms_operate_log` VALUES ('2c337a5e57044c71893f1f1cc5b4168c', '1', '2017-11-23 16:16:38.000000', 'systemDictDetail', '1', '0', 'systemDictDetail params:[id:1;]');
INSERT INTO `mms_operate_log` VALUES ('2c3b9e40bab7434489013c64dae55edb', '1', '2017-11-22 16:35:19.000000', 'addCmsImg', '1', '1', 'addCmsImg params:[]');
INSERT INTO `mms_operate_log` VALUES ('2c7b8d7633e34a129c8450f6813fe2f5', '1', '2017-11-23 14:42:22.000000', 'updateTransactionLimit', '5dc7a935777049bda783a69653569353', '1', 'updateTransactionLimit params:[id:5dc7a935777049bda783a69653569353;limitAmount:800;]');
INSERT INTO `mms_operate_log` VALUES ('2cd2bb18cee8416185090a0683412471', '1', '2017-11-23 15:28:50.000000', 'addTransactionLimit', '1', '1', 'addTransactionLimit params:[serviceId:459a13440f1341839e43e181c5d05d53;limitType:0;limitAmount:21;currency:1;]');
INSERT INTO `mms_operate_log` VALUES ('2d085d2c38174311a6f9c07e48809d64', '1', '2017-11-27 10:16:58.000000', 'Notice', '1', '0', 'Notice params:[]');
INSERT INTO `mms_operate_log` VALUES ('2d1be015131c4242bb64944f6e6cd4c5', '1', '2017-11-21 17:17:18.000000', 'Delete role', '1', '1', 'Delete role params:[ids:e1071edb10c44e8b81fd7aa3ea451dec;]');
INSERT INTO `mms_operate_log` VALUES ('2d21ba98c67f4f8db4d90a386405b94c', '1', '2017-11-23 14:13:18.000000', 'departmentDetail', 'f64389fd7e1346bfbdfc9a5c91ce81cb', '0', 'departmentDetail params:[id:f64389fd7e1346bfbdfc9a5c91ce81cb;]');
INSERT INTO `mms_operate_log` VALUES ('2d2d50d533c14fec8a6d28c6f6895f19', '1', '2017-11-21 16:39:19.000000', 'Operator', '1', '0', 'Operator params:[]');
INSERT INTO `mms_operate_log` VALUES ('2d88863c4f10414c885a852ee47a0977', '1', '2017-11-23 16:16:07.000000', 'systemDictDetail', '1', '0', 'systemDictDetail params:[id:1;]');
INSERT INTO `mms_operate_log` VALUES ('2dab2a871d4a46859c1e6ef9f8c2ea30', '1', '2017-11-27 10:56:09.000000', 'feedbackInfoDetail', '1', '0', 'feedbackInfoDetail params:[id:1;]');
INSERT INTO `mms_operate_log` VALUES ('2e0313ac6fc144d981ebefae83946f7a', '1', '2017-11-22 16:07:06.000000', 'doLogin', '1', '0', 'doLogin params:[userName:admin;userPassword:222222;veriCode:bj5h;remFlag:1;]');
INSERT INTO `mms_operate_log` VALUES ('2e08e99c37bb4209b24a9b2c5f014840', '1', '2017-11-22 11:27:31.000000', 'roleDetail', 'cab3ffe45fa34c06a7bd7724c5809763', '0', 'roleDetail params:[id:cab3ffe45fa34c06a7bd7724c5809763;]');
INSERT INTO `mms_operate_log` VALUES ('2e173d43be1d46208bffe8f3dd00d6f0', '8bf6c9ae369b4fd0961843feb42150b4', '2017-11-22 17:48:11.000000', 'Operator', '8bf6c9ae369b4fd0961843feb42150b4', '0', 'Operator params:[]');
INSERT INTO `mms_operate_log` VALUES ('2e53124d13df43f6bdde3a4df8b89366', '1', '2017-11-23 16:20:41.000000', 'systemParamDetail', 'bec6164f474441e7b6b4d708d6172474', '0', 'systemParamDetail params:[id:bec6164f474441e7b6b4d708d6172474;]');
INSERT INTO `mms_operate_log` VALUES ('2e9b502f72a94012808078b365fb7cac', '1', '2017-11-21 15:45:46.000000', 'Notice', '1', '0', 'Notice params:[]');
INSERT INTO `mms_operate_log` VALUES ('2fb41f5f152744a8a1e825685056b045', '1', '2017-11-27 10:51:19.000000', 'Feedback ', '1', '0', 'Feedback  params:[refSystem:1;]');
INSERT INTO `mms_operate_log` VALUES ('2fd466d190814ba2926881b87dd74da8', '1', '2017-11-21 17:22:07.000000', 'Add role', '1', '1', 'Add role params:[roleName:1231;roleDesc:;menuIds:51ee577ee96442c6a253d961b66861b2,e6e19a88b7ea4950b621e24e25368b08,ed396d532ecf44a3845e6a625b819507,2f6b9ce020b14028aae6b8e5f87afad1;]');
INSERT INTO `mms_operate_log` VALUES ('303b015ef181490eb9e1aee2243dcc62', '1', '2017-11-22 16:07:14.000000', 'Operator', '1', '0', 'Operator params:[]');
INSERT INTO `mms_operate_log` VALUES ('30437231c6d5496198fa4a34206b989a', '1', '2017-11-23 16:26:07.000000', 'Command Id Constrast', '1', '0', 'Command Id Constrast params:[commandId:1;]');
INSERT INTO `mms_operate_log` VALUES ('308474027cda47d1b550c566f4cd7afe', '1', '2017-11-23 15:46:10.000000', 'Trading limit', '1', '0', 'Trading limit params:[serviceId:459a13440f1341839e43e181c5d05d53;]');
INSERT INTO `mms_operate_log` VALUES ('30bb03542c2f44e39d657b4bbce74a9d', '1', '2017-11-23 15:28:09.000000', 'Trading limit', '1', '0', 'Trading limit params:[serviceId:5e448e982a0e41338e6099495ce63175;]');
INSERT INTO `mms_operate_log` VALUES ('30ce4dbface14ee4bd1e4eb602147c99', '1', '2017-11-23 15:27:52.000000', 'Trading limit', '1', '0', 'Trading limit params:[limitAmount:600;]');
INSERT INTO `mms_operate_log` VALUES ('3111215c372541dbaf3e7b5bcb111a00', '1', '2017-11-21 16:25:19.000000', 'Notice', '1', '0', 'Notice params:[]');
INSERT INTO `mms_operate_log` VALUES ('314a028e54aa44f588c21d266031ff37', '1', '2017-11-27 15:26:22.000000', 'Department', '1', '0', 'Department params:[]');
INSERT INTO `mms_operate_log` VALUES ('3155e3d8eda04c53ba28cc58533567fc', '1', '2017-11-21 15:21:35.000000', 'System Dict', '1', '0', 'System Dict params:[cpage:2;dictName:;]');
INSERT INTO `mms_operate_log` VALUES ('316e0552fc8243b6a72d4e7bb113c987', '1', '2017-11-27 16:00:20.000000', 'Device Bind', '1', '0', 'Device Bind params:[phone:;val:1;]');
INSERT INTO `mms_operate_log` VALUES ('31bb58527b6c4e77af7571401a843e76', '1', '2017-11-22 16:04:43.000000', 'doLogin', '1', '0', 'doLogin params:[userName:admin;userPassword:222222;veriCode:lxeh;remFlag:1;]');
INSERT INTO `mms_operate_log` VALUES ('31de4c1530f14d028eb0507e0cc84861', '1', '2017-11-23 15:12:04.000000', 'Trading limit', '1', '0', 'Trading limit params:[serviceId:5e448e982a0e41338e6099495ce63175;]');
INSERT INTO `mms_operate_log` VALUES ('321287e6bf0f4915aaa76126cce71338', '1', '2017-11-27 10:55:07.000000', 'Feedback ', '1', '0', 'Feedback  params:[refSystem:1;]');
INSERT INTO `mms_operate_log` VALUES ('327dac7eb9494005a31694d7ec19ecf5', '1', '2017-11-23 16:42:23.000000', 'Notice', '1', '0', 'Notice params:[]');
INSERT INTO `mms_operate_log` VALUES ('328404c129f0433e927d1e4ccb029ed1', '1', '2017-11-21 15:22:57.000000', 'System Dict', '1', '0', 'System Dict params:[]');
INSERT INTO `mms_operate_log` VALUES ('32d87c0ce5c14f31ac85128f3d43525b', '8bf6c9ae369b4fd0961843feb42150b4', '2017-11-22 19:17:09.000000', 'doLogin', '8bf6c9ae369b4fd0961843feb42150b4', '0', 'doLogin params:[userName:wuqingsong;userPassword:WUqing123;veriCode:q7vb;remFlag:1;]');
INSERT INTO `mms_operate_log` VALUES ('333cf555de9141a986e8645cce2d85bd', '1', '2017-11-23 14:41:03.000000', 'Business', '1', '0', 'Business params:[]');
INSERT INTO `mms_operate_log` VALUES ('336bfb38c59946a09ce4b77274a93a9c', '1', '2017-11-23 15:41:04.000000', 'Trading limit', '1', '0', 'Trading limit params:[]');
INSERT INTO `mms_operate_log` VALUES ('3398e61219d443d7aa3718550c55d712', '1', '2017-11-23 15:42:34.000000', 'Trading limit', '1', '0', 'Trading limit params:[serviceId:459a13440f1341839e43e181c5d05d53;]');
INSERT INTO `mms_operate_log` VALUES ('33f678442d2147e8bb3b9232ffc7fd49', '1', '2017-11-27 10:55:36.000000', 'feedbackInfoDetail', '1', '0', 'feedbackInfoDetail params:[id:1;]');
INSERT INTO `mms_operate_log` VALUES ('343e35918633439b9889174979d63940', '1', '2017-11-23 15:44:27.000000', 'System Dict', '1', '0', 'System Dict params:[dictName:男;]');
INSERT INTO `mms_operate_log` VALUES ('345c1b01c6a24174abfb3736a862ec4e', '1', '2017-11-27 14:57:42.000000', 'Device Bind', '1', '0', 'Device Bind params:[phone:1234;val:1;]');
INSERT INTO `mms_operate_log` VALUES ('34fade5fa2cf4ff2a39a9607d4137c7e', '1', '2017-11-22 11:28:32.000000', 'Delete role', '1', '1', 'Delete role params:[ids:cab3ffe45fa34c06a7bd7724c5809763;]');
INSERT INTO `mms_operate_log` VALUES ('3534729e22f048f495efbbcace40231e', '1', '2017-11-22 09:30:39.000000', 'Role', '1', '0', 'Role params:[]');
INSERT INTO `mms_operate_log` VALUES ('35594786b3374b28afe6a6563e2d7fb7', '1', '2017-11-23 15:00:35.000000', 'Trading limit', '1', '0', 'Trading limit params:[serviceId:5e448e982a0e41338e6099495ce63175;]');
INSERT INTO `mms_operate_log` VALUES ('35675617efc145d3a955d72b95b20a70', '1', '2017-11-27 10:37:51.000000', 'Feedback ', '1', '0', 'Feedback  params:[]');
INSERT INTO `mms_operate_log` VALUES ('3645aae5b58d402aa8fffb4d74b1d988', '1', '2017-11-23 16:15:02.000000', 'systemServiceDetail', '459a13440f1341839e43e181c5d05d53', '0', 'systemServiceDetail params:[id:459a13440f1341839e43e181c5d05d53;]');
INSERT INTO `mms_operate_log` VALUES ('36b15e0d581f48aba264aec7f5af1abe', '1', '2017-11-22 10:21:11.000000', 'Role', '1', '0', 'Role params:[]');
INSERT INTO `mms_operate_log` VALUES ('3777dd3038774c89834504ea7c9be930', '1', '2017-11-21 15:22:53.000000', 'Modify dict', '1', '1', 'Modify dict params:[id:1;dictKey:1;dictValue:0;dictName:女2;dictSeq:1;dictDesc:女;]');
INSERT INTO `mms_operate_log` VALUES ('37a99a04dc514daf9ce7e68f92373af0', '1', '2017-11-23 16:27:18.000000', 'Command Id Constrast', '1', '0', 'Command Id Constrast params:[]');
INSERT INTO `mms_operate_log` VALUES ('387a83879a38462ebcd1f85b62b66461', '1', '2017-11-23 15:41:02.000000', 'Business', '1', '0', 'Business params:[]');
INSERT INTO `mms_operate_log` VALUES ('3892db2b8c6645d59f6d3ffed7f2522d', '1', '2017-11-21 16:25:18.000000', 'Add notice', '1', '1', 'Add notice params:[title:测试;contentText:<p>测试<img src=\"http://localhost:8080/mGateCMS/upload/2017-11-21/35abdec6077b44039fd16c1cb13a7b0a.jpg\" _src=\"http://localhost:8080/mGateCMS/upload/2017-11-21/35abdec6077b44039fd16c1cb13a7b0a.jpg\"/></p>;startDate:2017-11-21 16:25:15;noticeState:2;]');
INSERT INTO `mms_operate_log` VALUES ('3a0b4a76e86c4a2885c77196d17c5de8', '1', '2017-11-27 15:15:24.000000', 'userDetail', '8bf6c9ae369b4fd0961843feb42150b4', '0', 'userDetail params:[id:8bf6c9ae369b4fd0961843feb42150b4;]');
INSERT INTO `mms_operate_log` VALUES ('3a12c3e59d0a4f1cb5f6948769eff687', '1', '2017-11-23 14:29:43.000000', 'addSystemService', '1', '1', 'addSystemService params:[serviceCode:1;serviceName:1;serviceDesc:1;dictId:1;listType:0;]');
INSERT INTO `mms_operate_log` VALUES ('3a1a130b54f44e7d8fee7f15e370c8cd', 'c0f82156961e422b9111fb7cc067f03d', '2017-11-22 14:58:30.000000', 'doLogOut', 'c0f82156961e422b9111fb7cc067f03d', '0', 'User log out');
INSERT INTO `mms_operate_log` VALUES ('3a505c87b424471eb0dd746ebba542d7', '1', '2017-11-23 16:38:37.000000', 'Notice', '1', '0', 'Notice params:[noticeState:1;]');
INSERT INTO `mms_operate_log` VALUES ('3a561970131c4c54a3b61a585fa2c5eb', '9fd935a5665b40aa9bd2c11b4590c67e', '2017-11-22 15:12:56.000000', 'doLogin', '9fd935a5665b40aa9bd2c11b4590c67e', '0', 'doLogin params:[userName:AAbb11;userPassword:AAbb11;veriCode:p8pg;remFlag:1;]');
INSERT INTO `mms_operate_log` VALUES ('3a7b673d49d842a3aa5c54b8dad4a7ca', '1', '2017-11-21 15:27:46.000000', 'System Dict', '1', '0', 'System Dict params:[cpage:4;dictName:;]');
INSERT INTO `mms_operate_log` VALUES ('3a7ea1530626495fa415e7ac5f682f85', '1', '2017-11-23 11:08:04.000000', 'Role', '1', '0', 'Role params:[]');
INSERT INTO `mms_operate_log` VALUES ('3a81fd1c75624a6c9572b8b1ab2118ab', '1', '2017-11-23 16:41:54.000000', 'uploadFileSave', '1', '0', 'uploadFileSave params:[editorid:contentText;]');
INSERT INTO `mms_operate_log` VALUES ('3a9a6af7df014d0a9b8834d84363f822', '1', '2017-11-27 10:39:57.000000', 'Feedback ', '1', '0', 'Feedback  params:[]');
INSERT INTO `mms_operate_log` VALUES ('3abe1f7fffec4428b0e1e012ae54b0b4', '1', '2017-11-27 10:51:24.000000', 'feedbackInfoDetail', '2', '0', 'feedbackInfoDetail params:[id:2;]');
INSERT INTO `mms_operate_log` VALUES ('3b50ecc1755646b3bc82a02842776b63', '1', '2017-11-23 14:44:44.000000', 'Trading limit', '1', '0', 'Trading limit params:[serviceId:5e448e982a0e41338e6099495ce63175;]');
INSERT INTO `mms_operate_log` VALUES ('3ba569e4ddd8441999ce76064439dc73', '1', '2017-11-27 10:51:14.000000', 'Feedback ', '1', '0', 'Feedback  params:[refSystem:2;]');
INSERT INTO `mms_operate_log` VALUES ('3bb07d24e09c4561861e160f7a887066', '1', '2017-11-27 11:05:18.000000', 'Q & A', '1', '0', 'Q & A params:[]');
INSERT INTO `mms_operate_log` VALUES ('3bbd56e2e3d548c199eb181fafa26d79', '1', '2017-11-27 10:42:20.000000', 'Feedback ', '1', '0', 'Feedback  params:[refSystem:1;]');
INSERT INTO `mms_operate_log` VALUES ('3bfe265175fe42b3a621944664e541d2', '1', '2017-11-22 16:06:26.000000', 'doLogin', '1', '0', 'doLogin params:[userName:admin;userPassword:222222;veriCode:y48d;remFlag:1;]');
INSERT INTO `mms_operate_log` VALUES ('3c6f2aeacde44b949986578378275fac', '1', '2017-11-22 11:09:50.000000', 'Role', '1', '0', 'Role params:[]');
INSERT INTO `mms_operate_log` VALUES ('3d134e88ebe64d71a681df7ce96d0e99', '1', '2017-11-23 16:36:42.000000', 'Notice', '1', '0', 'Notice params:[]');
INSERT INTO `mms_operate_log` VALUES ('3d9f5a501e444c0b9d1e9a3154e60bd4', '1', '2017-11-23 16:14:51.000000', 'System Dict', '1', '0', 'System Dict params:[]');
INSERT INTO `mms_operate_log` VALUES ('3de456dcc8124dc8ace70c2a5c2f26f4', '9fd935a5665b40aa9bd2c11b4590c67e', '2017-11-22 16:06:00.000000', 'doLogOut', '9fd935a5665b40aa9bd2c11b4590c67e', '0', 'User log out');
INSERT INTO `mms_operate_log` VALUES ('3e0299f255d548dfb1c96d5a316949a4', '8bf6c9ae369b4fd0961843feb42150b4', '2017-11-22 17:48:38.000000', 'Role', '8bf6c9ae369b4fd0961843feb42150b4', '0', 'Role params:[]');
INSERT INTO `mms_operate_log` VALUES ('3e3d1f9eee5f43dd85602529a126b300', '1', '2017-11-21 17:45:53.000000', 'Add role', '1', '1', 'Add role params:[roleName:1;roleDesc:1;menuIds:51ee577ee96442c6a253d961b66861b2,e6e19a88b7ea4950b621e24e25368b08,ed396d532ecf44a3845e6a625b819507,2f6b9ce020b14028aae6b8e5f87afad1,b0fd17d5cea04e08bfbbc9606114c3b4,9797fe365f7846adb9c977225c2ec996;]');
INSERT INTO `mms_operate_log` VALUES ('3e7d5d945fdc489ebe4a04e61ada0900', '1', '2017-11-21 16:26:23.000000', 'Notice', '1', '0', 'Notice params:[noticeState:2;]');
INSERT INTO `mms_operate_log` VALUES ('3ec81d2e1c274c358f7c2f594cf24c98', '1', '2017-11-23 14:29:11.000000', 'Trading limit', '1', '0', 'Trading limit params:[]');
INSERT INTO `mms_operate_log` VALUES ('3f8dce4f1f7747868f3374e39070f1cd', '1', '2017-11-27 11:03:16.000000', 'Q & A', '1', '0', 'Q & A params:[]');
INSERT INTO `mms_operate_log` VALUES ('3fc776f4d03842628db18031e399adb3', '1', '2017-11-22 14:25:38.000000', 'Modify role', 'a7fa3695f0c444feaa9d843c7947c530', '1', 'Modify role params:[id:a7fa3695f0c444feaa9d843c7947c530;roleName:测试;roleDesc:测试;menuIds:51ee577ee96442c6a253d961b66861b2,e6e19a88b7ea4950b621e24e25368b08,ed396d532ecf44a3845e6a625b819507,2f6b9ce020b14028aae6b8e5f87afad1,b0fd17d5cea04e08bfbbc9606114c3b4,9797fe365f7846adb9c977225c2ec996,e502784caf0945ad9ddbf74dd1c3f59a,c345cdf0ccb74a2298ecfd85fd8b7e98;]');
INSERT INTO `mms_operate_log` VALUES ('3fd3832edecf49d488447c2d61788b1f', '1', '2017-11-23 14:13:51.000000', 'Department', '1', '0', 'Department params:[]');
INSERT INTO `mms_operate_log` VALUES ('401d52df4d514ddeb295ba5bf58fdaf1', '9fd935a5665b40aa9bd2c11b4590c67e', '2017-11-22 15:52:00.000000', 'doLogin', '9fd935a5665b40aa9bd2c11b4590c67e', '0', 'doLogin params:[userName:AAbb11;userPassword:AAbb11;veriCode:DOZB;remFlag:1;]');
INSERT INTO `mms_operate_log` VALUES ('409309987b214611a637475edf937faa', '1', '2017-11-23 14:42:29.000000', 'Trading limit', '1', '0', 'Trading limit params:[]');
INSERT INTO `mms_operate_log` VALUES ('4162d0e4f14b4c64a493e201bcc0f12e', '1', '2017-11-23 14:13:17.000000', 'Department', '1', '0', 'Department params:[]');
INSERT INTO `mms_operate_log` VALUES ('41a6c5be17cf4504a7397018948e7517', '1', '2017-11-22 11:24:24.000000', 'Role', '1', '0', 'Role params:[]');
INSERT INTO `mms_operate_log` VALUES ('41c35c8a4f54463c803c3addeeb853c2', '1', '2017-11-27 15:18:20.000000', 'userDetail', '8bf6c9ae369b4fd0961843feb42150b4', '0', 'userDetail params:[id:8bf6c9ae369b4fd0961843feb42150b4;]');
INSERT INTO `mms_operate_log` VALUES ('422c8e64948b45858e3b5561cc95e300', '1', '2017-11-27 10:25:39.000000', 'Feedback ', '1', '0', 'Feedback  params:[refSystem:2;]');
INSERT INTO `mms_operate_log` VALUES ('4292f5e0f4d746a2a0abeefc18066c49', '1', '2017-11-22 17:22:55.000000', 'doLogOut', '1', '0', 'User log out');
INSERT INTO `mms_operate_log` VALUES ('42c4d0cadccf43a9a31309ba29f165b2', '1', '2017-11-22 11:23:51.000000', 'Add role', '1', '1', 'Add role params:[roleName:测试;roleDesc:测试;menuIds:51ee577ee96442c6a253d961b66861b2,e6e19a88b7ea4950b621e24e25368b08,ed396d532ecf44a3845e6a625b819507,2f6b9ce020b14028aae6b8e5f87afad1,b0fd17d5cea04e08bfbbc9606114c3b4,9797fe365f7846adb9c977225c2ec996;]');
INSERT INTO `mms_operate_log` VALUES ('42e10e2cd16f43519a61645ba545cb85', '1', '2017-11-23 14:07:19.000000', 'Department', '1', '0', 'Department params:[]');
INSERT INTO `mms_operate_log` VALUES ('432be48d6fe846719b5e0c2abfc44d31', '1', '2017-11-23 14:07:24.000000', 'departmentDetail', '84c87bfbc93348c9a89cf43534b0beae', '0', 'departmentDetail params:[id:84c87bfbc93348c9a89cf43534b0beae;]');
INSERT INTO `mms_operate_log` VALUES ('436fde5481894641a3746b48b904ec8c', '1', '2017-11-21 16:26:27.000000', 'Notice', '1', '0', 'Notice params:[noticeState:3;]');
INSERT INTO `mms_operate_log` VALUES ('438904aed71e427f89cdb36cecca6cec', '1', '2017-11-27 15:43:12.000000', 'Device Bind', '1', '0', 'Device Bind params:[phone:12345;val:2;]');
INSERT INTO `mms_operate_log` VALUES ('4396d3511fe94d99858fda6c1a9d9462', '1', '2017-11-23 15:18:19.000000', 'addTransactionLimit', '1', '1', 'addTransactionLimit params:[serviceId:5e448e982a0e41338e6099495ce63175;limitType:0;limitAmount:123;currency:1;]');
INSERT INTO `mms_operate_log` VALUES ('441fa109cb924dfb8e21a36458da9710', '1', '2017-11-27 15:07:44.000000', 'Device Bind', '1', '0', 'Device Bind params:[phone:123;val:1;]');
INSERT INTO `mms_operate_log` VALUES ('446241a1ac1449ff8b1ec71eda754312', '1', '2017-11-22 09:35:43.000000', 'Role', '1', '0', 'Role params:[]');
INSERT INTO `mms_operate_log` VALUES ('449762b10c454d1bb3ade72162ca7bce', '1', '2017-11-27 10:33:26.000000', 'Feedback ', '1', '0', 'Feedback  params:[refSystem:2;]');
INSERT INTO `mms_operate_log` VALUES ('44a1a4e122db4762b9060eaf81c59c97', '1', '2017-11-23 16:27:27.000000', 'Notice', '1', '0', 'Notice params:[]');
INSERT INTO `mms_operate_log` VALUES ('458732f261bf4e6c83256ddc8ea52591', '1', '2017-11-27 15:07:46.000000', 'Device Bind', '1', '0', 'Device Bind params:[phone:1234;val:1;]');
INSERT INTO `mms_operate_log` VALUES ('45bd3f38513443eeb3945ddde461df30', '1', '2017-11-22 10:17:53.000000', 'Add role', '1', '1', 'Add role params:[roleName:1;roleDesc:1;menuIds:51ee577ee96442c6a253d961b66861b2,e6e19a88b7ea4950b621e24e25368b08;]');
INSERT INTO `mms_operate_log` VALUES ('45fad700faee4912bd3665a8a21f12c8', '1', '2017-11-23 16:38:52.000000', 'Notice', '1', '0', 'Notice params:[noticeState:2;]');
INSERT INTO `mms_operate_log` VALUES ('460992f936f3436db9cc90f2cc38d395', '1', '2017-11-22 15:06:30.000000', 'doLogOut', '1', '0', 'User log out');
INSERT INTO `mms_operate_log` VALUES ('46241319ae2240ea8b4045aea4f2afe3', '1', '2017-11-27 14:43:52.000000', 'Service Agreement', '1', '0', 'Service Agreement params:[]');
INSERT INTO `mms_operate_log` VALUES ('463baf7c86a349c98d8482ddb3b73411', '1', '2017-11-21 15:27:34.000000', 'System Dict', '1', '0', 'System Dict params:[cpage:1;dictName:;]');
INSERT INTO `mms_operate_log` VALUES ('476c29c9a9db497a9b2f5e8779b58e05', '1', '2017-11-23 14:44:00.000000', 'Trading limit', '1', '0', 'Trading limit params:[serviceId:459a13440f1341839e43e181c5d05d53;]');
INSERT INTO `mms_operate_log` VALUES ('47af3a6e755a40caa8ef84dc8672b065', '1', '2017-11-27 15:39:41.000000', 'Device Bind', '1', '0', 'Device Bind params:[phone:1234;val:1;]');
INSERT INTO `mms_operate_log` VALUES ('47ddbfc26cbb4e45bb35a42158493ab3', '1', '2017-11-22 16:07:14.000000', 'Delete operator', '1', '1', 'Delete operator params:[ids:c0f82156961e422b9111fb7cc067f03d,9fd935a5665b40aa9bd2c11b4590c67e;]');
INSERT INTO `mms_operate_log` VALUES ('48eafda706ee4fdf8de6aabaae416794', '1', '2017-11-27 15:21:26.000000', 'userDetail', '8bf6c9ae369b4fd0961843feb42150b4', '0', 'userDetail params:[id:8bf6c9ae369b4fd0961843feb42150b4;]');
INSERT INTO `mms_operate_log` VALUES ('4902cfb88f024e89b04b186164aa215c', '1', '2017-11-23 16:18:20.000000', 'System Param', '1', '0', 'System Param params:[]');
INSERT INTO `mms_operate_log` VALUES ('4918ae9d037a49cba4f02079080a7d14', '1', '2017-11-22 17:23:05.000000', 'doLogOut', '1', '0', 'User log out');
INSERT INTO `mms_operate_log` VALUES ('493213ced7b741fa9f3cd382e9360da5', '1', '2017-11-23 11:08:53.000000', 'Role', '1', '0', 'Role params:[]');
INSERT INTO `mms_operate_log` VALUES ('49b3a7b20e7c4f8da688f6bea073f7f4', '1', '2017-11-27 15:05:02.000000', 'Device Bind', '1', '0', 'Device Bind params:[phone:12345;val:2;]');
INSERT INTO `mms_operate_log` VALUES ('4a1613b23a1a43c3b754fe63219c3309', '1', '2017-11-24 15:50:14.000000', 'Operator', '1', '0', 'Operator params:[]');
INSERT INTO `mms_operate_log` VALUES ('4a640cd9453649c1927ca68a101732f4', '1', '2017-11-27 15:21:51.000000', 'Modify operator', '8bf6c9ae369b4fd0961843feb42150b4', '1', 'Modify operator params:[id:8bf6c9ae369b4fd0961843feb42150b4;realName:武青松;userPhoto:http://localhost:8080/mGateCMS/static/imgs/upload/20171127/1511767309784_329.jpg;userNo:123;userPhone:123;userEmail:123@qq.com;certType:1;userGender:1;userRemark:123;]');
INSERT INTO `mms_operate_log` VALUES ('4ae4d383b8244cb789429d5741a2ea7d', '1', '2017-11-22 14:30:12.000000', 'doLogOut', '1', '0', 'User log out');
INSERT INTO `mms_operate_log` VALUES ('4b21e9db3a254f7cb146f5d0f42e6b76', '1', '2017-11-23 15:52:33.000000', 'Trading limit', '1', '0', 'Trading limit params:[serviceId:5e448e982a0e41338e6099495ce63175;]');
INSERT INTO `mms_operate_log` VALUES ('4b7b981f8a344754b6771838f27d6d91', '1', '2017-11-21 16:26:30.000000', 'Notice', '1', '0', 'Notice params:[noticeState:1;]');
INSERT INTO `mms_operate_log` VALUES ('4bc0087a016645869b00abab3aafb899', '1', '2017-11-22 10:32:01.000000', 'roleDetail', '0fff7c3c005c40599d80f1a05fa56deb', '0', 'roleDetail params:[id:0fff7c3c005c40599d80f1a05fa56deb;]');
INSERT INTO `mms_operate_log` VALUES ('4bc1682ff2f34f99b9c5874fc0acff68', '1', '2017-11-27 10:51:17.000000', 'feedbackInfoDetail', '1', '0', 'feedbackInfoDetail params:[id:1;]');
INSERT INTO `mms_operate_log` VALUES ('4be79935019a4476b03f1f5dc8a918f8', '1', '2017-11-21 17:04:51.000000', 'addCmsImg', '1', '1', 'addCmsImg params:[]');
INSERT INTO `mms_operate_log` VALUES ('4becca66fb0641a68c9997df0eae5877', '1', '2017-11-23 16:24:00.000000', 'Code Constrast', '1', '0', 'Code Constrast params:[]');
INSERT INTO `mms_operate_log` VALUES ('4bf8dbd8fff74b82b2010f141620ac3c', '1', '2017-11-22 17:21:44.000000', 'roleDetail', '4686e167563241d89e2d8f137e2b96cb', '0', 'roleDetail params:[id:4686e167563241d89e2d8f137e2b96cb;]');
INSERT INTO `mms_operate_log` VALUES ('4d40b3da67e34dea84b43ae88d14961f', '1', '2017-11-23 08:52:35.000000', 'Operator', '1', '0', 'Operator params:[]');
INSERT INTO `mms_operate_log` VALUES ('4d8e9d62599a4b7b8cb047d52291a835', '1', '2017-11-21 17:12:06.000000', 'Add role', '1', '1', 'Add role params:[roleName:用户管理员;roleDesc:用户管理员;menuIds:51ee577ee96442c6a253d961b66861b2,e6e19a88b7ea4950b621e24e25368b08,ed396d532ecf44a3845e6a625b819507,2f6b9ce020b14028aae6b8e5f87afad1,b0fd17d5cea04e08bfbbc9606114c3b4,9797fe365f7846adb9c977225c2ec996;]');
INSERT INTO `mms_operate_log` VALUES ('4dc75355525f41e091247cbf7a2f3b68', '1', '2017-11-23 15:29:43.000000', 'System Dict', '1', '0', 'System Dict params:[]');
INSERT INTO `mms_operate_log` VALUES ('4e6a9c9854ef47b2910106c7c535b1d4', '1', '2017-11-23 14:14:12.000000', 'departmentDetail', '12f00ad75df942a99d153caa74d7bccb', '0', 'departmentDetail params:[id:12f00ad75df942a99d153caa74d7bccb;]');
INSERT INTO `mms_operate_log` VALUES ('4ea6ebdfbec54ab2a40b4dd0883b211e', '1', '2017-11-27 10:53:14.000000', 'feedbackInfoDetail', '1', '0', 'feedbackInfoDetail params:[id:1;]');
INSERT INTO `mms_operate_log` VALUES ('4eff37d2e3a94b5a985db28704a30b57', '1', '2017-11-23 15:31:54.000000', 'System Dict', '1', '0', 'System Dict params:[]');
INSERT INTO `mms_operate_log` VALUES ('4f84776b0a6e4556a0e8dabccb19d85b', '1', '2017-11-23 16:38:24.000000', 'Notice', '1', '0', 'Notice params:[noticeState:1;]');
INSERT INTO `mms_operate_log` VALUES ('4f9a228119cf4ff1ac575c5465541a4a', '1', '2017-11-22 14:50:08.000000', 'addCmsImg', '1', '1', 'addCmsImg params:[]');
INSERT INTO `mms_operate_log` VALUES ('4fe528ee1f75450aabb135647f5b2fba', '1', '2017-11-22 17:22:07.000000', 'addCmsImg', '1', '1', 'addCmsImg params:[]');
INSERT INTO `mms_operate_log` VALUES ('500af19ab6104520aab7629a2725d53d', '1', '2017-11-23 14:41:14.000000', 'systemServiceDetail', '459a13440f1341839e43e181c5d05d53', '0', 'systemServiceDetail params:[id:459a13440f1341839e43e181c5d05d53;]');
INSERT INTO `mms_operate_log` VALUES ('5063846589fa4a2385fbda8ac5f10a11', '1', '2017-11-27 10:16:42.000000', 'Notice', '1', '0', 'Notice params:[noticeState:2;]');
INSERT INTO `mms_operate_log` VALUES ('5063a84fd21c4658bbe2c2d0aea47178', '1', '2017-11-22 10:02:45.000000', 'Add role', '1', '1', 'Add role params:[roleName:1231;roleDesc:1;menuIds:51ee577ee96442c6a253d961b66861b2,e6e19a88b7ea4950b621e24e25368b08,ed396d532ecf44a3845e6a625b819507,2f6b9ce020b14028aae6b8e5f87afad1,b0fd17d5cea04e08bfbbc9606114c3b4,9797fe365f7846adb9c977225c2ec996;]');
INSERT INTO `mms_operate_log` VALUES ('508e64f0fa904d6981a928d95b5db4c1', '1', '2017-11-23 16:41:44.000000', 'Notice', '1', '0', 'Notice params:[noticeState:2;]');
INSERT INTO `mms_operate_log` VALUES ('50cf08c7431f449ba82f90b9e8e2feda', '1', '2017-11-22 14:22:00.000000', 'roleDetail', 'a7fa3695f0c444feaa9d843c7947c530', '0', 'roleDetail params:[id:a7fa3695f0c444feaa9d843c7947c530;]');
INSERT INTO `mms_operate_log` VALUES ('50e6d6c4851743959ea8097d8897aded', '1', '2017-11-22 16:08:09.000000', 'addCmsImg', '1', '1', 'addCmsImg params:[]');
INSERT INTO `mms_operate_log` VALUES ('519157a939074099abe3bdf23ea7b129', '1', '2017-11-23 16:42:03.000000', 'Notice', '1', '0', 'Notice params:[]');
INSERT INTO `mms_operate_log` VALUES ('51a3435fbc294e23b727a19246c48c18', '1', '2017-11-23 14:44:17.000000', 'Trading limit', '1', '0', 'Trading limit params:[serviceId:459a13440f1341839e43e181c5d05d53;]');
INSERT INTO `mms_operate_log` VALUES ('51a6bf186b204e25ba86ec1b3e50fefe', '1', '2017-11-27 16:09:05.000000', 'Operator', '1', '0', 'Operator params:[]');
INSERT INTO `mms_operate_log` VALUES ('51bb0689e36547a0a012d1888bb3772b', '1', '2017-11-22 16:06:28.000000', 'doLogOut', '1', '0', 'User log out');
INSERT INTO `mms_operate_log` VALUES ('522d4a05fb354f2eba973f0b623d5e72', '1', '2017-11-22 14:46:29.000000', 'Operator', '1', '0', 'Operator params:[]');
INSERT INTO `mms_operate_log` VALUES ('52782fad735a40c691dbc0f6fb637b5f', '1', '2017-11-22 16:35:34.000000', 'Add operator', '1', '1', 'Add operator params:[userName:wuqingsong;userPassword:WUqing123;realName:W1;userPhoto:http://localhost:8080/mGateCMS/static/imgs/upload/20171122/1511339719963_831.png;userNo:1;userPhone:2;userEmail:2@qq.com;certType:1;userGender:1;certId:123;deptId:84c87bfbc93348c9a89cf43534b0beae;roleIds:5d8bc58e8eaa44efa8bf20d8a33412ae,6f1a5d427c6742598f4582a2ff331801,c3a37f277fea4802bd757daaf5a474c9;userRemark:12;]');
INSERT INTO `mms_operate_log` VALUES ('52941319450c49c9bc63d8bea8a5cb77', '1', '2017-11-22 11:24:46.000000', 'roleDetail', 'cab3ffe45fa34c06a7bd7724c5809763', '0', 'roleDetail params:[id:cab3ffe45fa34c06a7bd7724c5809763;]');
INSERT INTO `mms_operate_log` VALUES ('534464cc77034fe6a0e9aeed533306b1', '1', '2017-11-22 16:07:33.000000', 'Add role', '1', '1', 'Add role params:[roleName:部门管理员;roleDesc:部门管理员;menuIds:51ee577ee96442c6a253d961b66861b2,e6e19a88b7ea4950b621e24e25368b08,50c02530fdd3422d80bb4b1ee5398ab6,6720915a492b44cbb42dd7cb10cecead,96edd6b51612478ba734d19e6ec5f8d2,7eb8862e60d146b89dc888fcdfde7fbd;]');
INSERT INTO `mms_operate_log` VALUES ('5344c54814c34e3f921d8df8c5c4ce65', '1', '2017-11-22 16:07:10.000000', 'Operator', '1', '0', 'Operator params:[]');
INSERT INTO `mms_operate_log` VALUES ('53e036c80bba45c18768842d4a7689b6', '1', '2017-11-27 15:19:43.000000', 'userDetail', '8bf6c9ae369b4fd0961843feb42150b4', '0', 'userDetail params:[id:8bf6c9ae369b4fd0961843feb42150b4;]');
INSERT INTO `mms_operate_log` VALUES ('53e5ba1f7d014e5996e4e49fa7055aa8', '1', '2017-11-27 10:33:45.000000', 'Feedback ', '1', '0', 'Feedback  params:[refSystem:1;]');
INSERT INTO `mms_operate_log` VALUES ('54d1de976ac147128c054453a68efaba', '1', '2017-11-27 10:41:30.000000', 'Feedback ', '1', '0', 'Feedback  params:[refSystem:1;]');
INSERT INTO `mms_operate_log` VALUES ('5614aa791980423fb96a466d70480116', '1', '2017-11-27 10:43:05.000000', 'Feedback ', '1', '0', 'Feedback  params:[]');
INSERT INTO `mms_operate_log` VALUES ('56ae10a5cea44b3eb4749a198ea7d93a', '1', '2017-11-27 14:37:03.000000', 'Q & A', '1', '0', 'Q & A params:[]');
INSERT INTO `mms_operate_log` VALUES ('56f9078e06414e6982d82d6ae1304004', '1', '2017-11-27 15:21:55.000000', 'userDetail', '8bf6c9ae369b4fd0961843feb42150b4', '0', 'userDetail params:[id:8bf6c9ae369b4fd0961843feb42150b4;]');
INSERT INTO `mms_operate_log` VALUES ('5713d329d916496e8464403d984805e7', '1', '2017-11-27 10:40:35.000000', 'Feedback ', '1', '0', 'Feedback  params:[]');
INSERT INTO `mms_operate_log` VALUES ('5714aaa23f0e4229a87eba69e89481fe', '1', '2017-11-27 10:42:32.000000', 'Feedback ', '1', '0', 'Feedback  params:[]');
INSERT INTO `mms_operate_log` VALUES ('5717fde784f64df3a1827b0efba835dc', '1', '2017-11-23 11:09:10.000000', 'Role', '1', '0', 'Role params:[]');
INSERT INTO `mms_operate_log` VALUES ('574253b4a9d34941ad271e9386946dd3', '1', '2017-11-22 15:05:10.000000', 'Role', '1', '0', 'Role params:[]');
INSERT INTO `mms_operate_log` VALUES ('5749b8c9975b441ba75f28ec6bdada16', '1', '2017-11-27 16:09:10.000000', 'Operator', '1', '0', 'Operator params:[]');
INSERT INTO `mms_operate_log` VALUES ('57d080967823418bbdf058d93c8349fd', '1', '2017-11-27 14:57:38.000000', 'Device Bind', '1', '0', 'Device Bind params:[phone:12345;val:2;]');
INSERT INTO `mms_operate_log` VALUES ('57f69bb2c9fe4486a97317d88271d247', '1', '2017-11-27 15:41:42.000000', 'Device Bind', '1', '0', 'Device Bind params:[phone:1234;val:1;]');
INSERT INTO `mms_operate_log` VALUES ('583c3a8a049649979876ec1c1903a40e', '1', '2017-11-23 14:42:40.000000', 'Trading limit', '1', '0', 'Trading limit params:[serviceId:459a13440f1341839e43e181c5d05d53;]');
INSERT INTO `mms_operate_log` VALUES ('587506564b614467b17dd18cb0969b43', '8bf6c9ae369b4fd0961843feb42150b4', '2017-11-23 08:52:27.000000', 'doLogOut', '8bf6c9ae369b4fd0961843feb42150b4', '0', 'User log out');
INSERT INTO `mms_operate_log` VALUES ('58e060ddc351455c8159ff74ffceb9e2', '1', '2017-11-21 15:23:03.000000', 'systemDictDetail', '1', '0', 'systemDictDetail params:[id:1;]');
INSERT INTO `mms_operate_log` VALUES ('5907d4fc436043e99f33346750e7d298', '1', '2017-11-23 14:59:16.000000', 'Trading limit', '1', '0', 'Trading limit params:[serviceId:5e448e982a0e41338e6099495ce63175;]');
INSERT INTO `mms_operate_log` VALUES ('59f8091c238f4c139cbc4b68911d1460', '1', '2017-11-23 14:29:21.000000', 'Trading limit', '1', '0', 'Trading limit params:[]');
INSERT INTO `mms_operate_log` VALUES ('5ad9d284d52a4b1c9bbfbbe4685444fe', '1', '2017-11-23 14:18:50.000000', 'Department', '1', '0', 'Department params:[]');
INSERT INTO `mms_operate_log` VALUES ('5adf0430b0294b23a204c9754ca14fbe', '1', '2017-11-22 17:23:02.000000', 'doLogin', '1', '0', 'doLogin params:[userName:admin;userPassword:222222;veriCode:cude;remFlag:1;]');
INSERT INTO `mms_operate_log` VALUES ('5b054e3d09474db8985b5cb4a9abc9a1', '1', '2017-11-23 16:20:46.000000', 'System Param', '1', '0', 'System Param params:[]');
INSERT INTO `mms_operate_log` VALUES ('5b089418be0f49d0a58c3a764d7df2b2', '1', '2017-11-27 10:55:11.000000', 'Reply feedback', '1', '1', 'Reply feedback params:[content:;id:1;]');
INSERT INTO `mms_operate_log` VALUES ('5b1584fedbd0476bb7eae84ca89927ae', '1', '2017-11-21 15:27:39.000000', 'System Dict', '1', '0', 'System Dict params:[cpage:2;dictName:;]');
INSERT INTO `mms_operate_log` VALUES ('5b6183dc5bbc4493a9316eac42970a98', '1', '2017-11-23 14:22:01.000000', 'Business', '1', '0', 'Business params:[]');
INSERT INTO `mms_operate_log` VALUES ('5b7e178443a54610a7d733629ff031d1', '1', '2017-11-27 10:34:15.000000', 'Feedback ', '1', '0', 'Feedback  params:[refSystem:1;]');
INSERT INTO `mms_operate_log` VALUES ('5b85d21a3e034923aa30cdd001940b60', '1', '2017-11-27 10:55:01.000000', 'feedbackInfoDetail', '1', '0', 'feedbackInfoDetail params:[id:1;]');
INSERT INTO `mms_operate_log` VALUES ('5b9300ac9d9f4bd0aa96f5ad4f204970', '1', '2017-11-21 15:26:31.000000', 'Add dict', '1', '1', 'Add dict params:[dictKey:4;dictValue:4;dictName:测试;dictDesc:4测试;]');
INSERT INTO `mms_operate_log` VALUES ('5bad99ff4f6a4b22846967a346c7ed10', '1', '2017-11-27 11:00:35.000000', 'feedbackInfoDetail', '1', '0', 'feedbackInfoDetail params:[id:1;]');
INSERT INTO `mms_operate_log` VALUES ('5bc00daac7bb4e06a5666b38b469a0e5', '1', '2017-11-23 14:45:10.000000', 'Trading limit', '1', '0', 'Trading limit params:[serviceId:459a13440f1341839e43e181c5d05d53;]');
INSERT INTO `mms_operate_log` VALUES ('5bc9b8893d5546a49bf05831b758c94b', '1', '2017-11-22 14:20:15.000000', 'Modify role', 'a7fa3695f0c444feaa9d843c7947c530', '1', 'Modify role params:[id:a7fa3695f0c444feaa9d843c7947c530;roleName:测试;roleDesc:测试;menuIds:51ee577ee96442c6a253d961b66861b2,e6e19a88b7ea4950b621e24e25368b08,ed396d532ecf44a3845e6a625b819507,2f6b9ce020b14028aae6b8e5f87afad1,b0fd17d5cea04e08bfbbc9606114c3b4,9797fe365f7846adb9c977225c2ec996,e502784caf0945ad9ddbf74dd1c3f59a,c345cdf0ccb74a2298ecfd85fd8b7e98;]');
INSERT INTO `mms_operate_log` VALUES ('5bce66dc2d834eb6913cd790b3b04125', '1', '2017-11-21 16:44:44.000000', 'Operator', '1', '0', 'Operator params:[]');
INSERT INTO `mms_operate_log` VALUES ('5c00e96928cc47c3a95612caa7d5b5fe', '9fd935a5665b40aa9bd2c11b4590c67e', '2017-11-22 15:24:24.000000', 'doLogin', '9fd935a5665b40aa9bd2c11b4590c67e', '0', 'doLogin params:[userName:AAbb11;userPassword:AAbb11;veriCode:3z9d;remFlag:1;]');
INSERT INTO `mms_operate_log` VALUES ('5c1c52f432bc4a5e879e1a059b2f8e56', '68a11f4137174877b4bc19ccac97e2c6', '2017-11-22 16:46:01.000000', 'doLogin', '68a11f4137174877b4bc19ccac97e2c6', '0', 'doLogin params:[userName:wuqingsong;userPassword:WUqing123;veriCode:ofnk;remFlag:1;]');
INSERT INTO `mms_operate_log` VALUES ('5c332e4d4c1b41d680fa922e52e2849a', '1', '2017-11-23 16:17:08.000000', 'System Dict', '1', '0', 'System Dict params:[cpage:2;dictName:;]');
INSERT INTO `mms_operate_log` VALUES ('5c9d3eff1f2c4d9bbe1be44ecbcd60cd', '1', '2017-11-27 11:00:12.000000', 'feedbackInfoDetail', '1', '0', 'feedbackInfoDetail params:[id:1;]');
INSERT INTO `mms_operate_log` VALUES ('5cbfe0c3bde24c3688131736f96dfadf', '1', '2017-11-23 16:17:21.000000', 'System Dict', '1', '0', 'System Dict params:[cpage:2;]');
INSERT INTO `mms_operate_log` VALUES ('5cc895a3eeb2493aa2f64dabaea37378', '1', '2017-11-27 10:16:39.000000', 'Notice', '1', '0', 'Notice params:[]');
INSERT INTO `mms_operate_log` VALUES ('5d01fd458ef842d58ea61fe2e96089a1', '1', '2017-11-23 14:32:32.000000', 'Trading limit', '1', '0', 'Trading limit params:[]');
INSERT INTO `mms_operate_log` VALUES ('5d954a582630432da5d75d11ef41e651', '9fd935a5665b40aa9bd2c11b4590c67e', '2017-11-22 16:05:57.000000', 'Operator', '9fd935a5665b40aa9bd2c11b4590c67e', '0', 'Operator params:[]');
INSERT INTO `mms_operate_log` VALUES ('5dac73102c4b4916a8bdb27cdc386042', '1', '2017-11-23 16:18:18.000000', 'System Dict', '1', '0', 'System Dict params:[cpage:1;]');
INSERT INTO `mms_operate_log` VALUES ('5e0391078c314906b4e20531de3084fa', '1', '2017-11-21 15:27:52.000000', 'System Dict', '1', '0', 'System Dict params:[cpage:1;dictName:;]');
INSERT INTO `mms_operate_log` VALUES ('5e99d06baef54118b746c00c7b4564cd', '1', '2017-11-23 15:52:37.000000', 'deleteTransactionLimits', '479371e20bad4293b4c2aa0e6751c714', '1', 'deleteTransactionLimits params:[id:479371e20bad4293b4c2aa0e6751c714;]');
INSERT INTO `mms_operate_log` VALUES ('5ebcffaec05e4891974439d52c0a1b06', '1', '2017-11-23 14:41:07.000000', 'Business', '1', '0', 'Business params:[]');
INSERT INTO `mms_operate_log` VALUES ('5ee8d6f0a7fd4c208413b991b7bf573e', '1', '2017-11-23 14:35:52.000000', 'Business', '1', '0', 'Business params:[]');
INSERT INTO `mms_operate_log` VALUES ('60187407e44448f3b14707e22f576e42', '1', '2017-11-27 11:00:52.000000', 'Feedback ', '1', '0', 'Feedback  params:[]');
INSERT INTO `mms_operate_log` VALUES ('60328bced9a54608a01ed2470451bf40', 'c0f82156961e422b9111fb7cc067f03d', '2017-11-22 14:58:18.000000', 'Operator', 'c0f82156961e422b9111fb7cc067f03d', '0', 'Operator params:[]');
INSERT INTO `mms_operate_log` VALUES ('60670b1004084930a6438f0f164714e9', '1', '2017-11-23 14:03:27.000000', 'userDetail', '8bf6c9ae369b4fd0961843feb42150b4', '0', 'userDetail params:[id:8bf6c9ae369b4fd0961843feb42150b4;]');
INSERT INTO `mms_operate_log` VALUES ('608f2694e9a44b3493722e6456e563d9', '9fd935a5665b40aa9bd2c11b4590c67e', '2017-11-22 15:24:14.000000', 'doLogOut', '9fd935a5665b40aa9bd2c11b4590c67e', '0', 'User log out');
INSERT INTO `mms_operate_log` VALUES ('60c24eb5551745969d3dfa169e906704', '1', '2017-11-21 17:13:50.000000', 'Role', '1', '0', 'Role params:[]');
INSERT INTO `mms_operate_log` VALUES ('60da11bec7294e12bd09ed960d3bd8b8', '1', '2017-11-22 09:24:43.000000', 'Operator', '1', '0', 'Operator params:[]');
INSERT INTO `mms_operate_log` VALUES ('60e1294a6f4f486b87d40303efcc5f84', '1', '2017-11-27 16:00:00.000000', 'Unbind device', '12345', '1', 'Unbind device params:[id:12345;]');
INSERT INTO `mms_operate_log` VALUES ('613ba2f4146c414b89911bb9a2717ad5', '1', '2017-11-21 15:20:36.000000', 'doLogin', '1', '0', 'doLogin params:[userName:admin;userPassword:222222;veriCode:hcdu;remFlag:1;]');
INSERT INTO `mms_operate_log` VALUES ('614525d4690f4988a4bd887aa637580b', 'c0f82156961e422b9111fb7cc067f03d', '2017-11-22 15:03:45.000000', 'Operator', 'c0f82156961e422b9111fb7cc067f03d', '0', 'Operator params:[]');
INSERT INTO `mms_operate_log` VALUES ('6165367bf7044a259ac91f441f5de0a0', '1', '2017-11-23 16:15:01.000000', 'Business', '1', '0', 'Business params:[]');
INSERT INTO `mms_operate_log` VALUES ('618cbc2a6c8846f2a54a3b2e24a4007f', '1', '2017-11-23 16:38:50.000000', 'Notice', '1', '0', 'Notice params:[noticeState:1;]');
INSERT INTO `mms_operate_log` VALUES ('61c559771963418bbc2094b89eaf3dcb', '1', '2017-11-22 15:06:26.000000', 'userDetail', '9fd935a5665b40aa9bd2c11b4590c67e', '0', 'userDetail params:[id:9fd935a5665b40aa9bd2c11b4590c67e;]');
INSERT INTO `mms_operate_log` VALUES ('62ce9ed765864bce939a7fde0b2a2e7a', '1', '2017-11-23 14:45:19.000000', 'addTransactionLimit', '1', '1', 'addTransactionLimit params:[serviceId:459a13440f1341839e43e181c5d05d53;limitType:0;limitAmount:12;currency:1;]');
INSERT INTO `mms_operate_log` VALUES ('631b3d89a1b54c9cb6dea168d0d9aaa3', '8bf6c9ae369b4fd0961843feb42150b4', '2017-11-22 17:49:13.000000', 'Operator', '8bf6c9ae369b4fd0961843feb42150b4', '0', 'Operator params:[]');
INSERT INTO `mms_operate_log` VALUES ('6334a75ba9664ed38374ceee2a5c5101', '1', '2017-11-23 16:42:09.000000', 'Notice', '1', '0', 'Notice params:[noticeState:2;]');
INSERT INTO `mms_operate_log` VALUES ('6358343b976346808b6220c9246d3556', '1', '2017-11-23 15:21:46.000000', 'addTransactionLimit', '1', '1', 'addTransactionLimit params:[serviceId:5e448e982a0e41338e6099495ce63175;limitType:0;limitAmount:12;currency:1;]');
INSERT INTO `mms_operate_log` VALUES ('63c5af95d84c4816b7a1922afc5601b0', '1', '2017-11-27 10:51:02.000000', 'feedbackInfoDetail', '2', '0', 'feedbackInfoDetail params:[id:2;]');
INSERT INTO `mms_operate_log` VALUES ('640e7a1e21874f1b9104f57156149589', '1', '2017-11-22 19:04:05.000000', 'doLogOut', '1', '0', 'User log out');
INSERT INTO `mms_operate_log` VALUES ('647ec4333a04443a8d408350f6f2a9ee', '1', '2017-11-23 16:44:02.000000', 'APP Version', '1', '0', 'APP Version params:[]');
INSERT INTO `mms_operate_log` VALUES ('649a358e0387474098a579268470bb2d', '1', '2017-11-23 14:42:56.000000', 'addTransactionLimit', '1', '1', 'addTransactionLimit params:[serviceId:459a13440f1341839e43e181c5d05d53;limitType:0;limitAmount:200;currency:1;]');
INSERT INTO `mms_operate_log` VALUES ('64b1c8c454874b4c934c7d0894b052a7', '1', '2017-11-21 17:17:19.000000', 'Role', '1', '0', 'Role params:[]');
INSERT INTO `mms_operate_log` VALUES ('64b77d58d4624a33b4b6036fc9eae5dd', '1', '2017-11-23 14:45:23.000000', 'addTransactionLimit', '1', '1', 'addTransactionLimit params:[serviceId:459a13440f1341839e43e181c5d05d53;limitType:0;limitAmount:12;currency:1;]');
INSERT INTO `mms_operate_log` VALUES ('6537a3e2aaaa4448a77d5ca05a1bb0a8', '1', '2017-11-23 14:03:48.000000', 'Department', '1', '0', 'Department params:[]');
INSERT INTO `mms_operate_log` VALUES ('655859aedd6b4c2b8df8c0a785492355', '1', '2017-11-23 14:42:34.000000', 'Trading limit', '1', '0', 'Trading limit params:[serviceId:5e448e982a0e41338e6099495ce63175;]');
INSERT INTO `mms_operate_log` VALUES ('658869fd514c4e618310eb40c5e0db10', '1', '2017-11-22 09:56:14.000000', 'Add role', '1', '1', 'Add role params:[roleName:1;roleDesc:1;menuIds:51ee577ee96442c6a253d961b66861b2,e6e19a88b7ea4950b621e24e25368b08,ed396d532ecf44a3845e6a625b819507,2f6b9ce020b14028aae6b8e5f87afad1,b0fd17d5cea04e08bfbbc9606114c3b4,9797fe365f7846adb9c977225c2ec996;]');
INSERT INTO `mms_operate_log` VALUES ('661ad565c75b45a7ae0bf659a8b23525', '1', '2017-11-27 10:59:29.000000', 'feedbackInfoDetail', '1', '0', 'feedbackInfoDetail params:[id:1;]');
INSERT INTO `mms_operate_log` VALUES ('66342bc7ec734c66bc262cee80a09ff4', '1', '2017-11-24 15:52:05.000000', 'Operator', '1', '0', 'Operator params:[]');
INSERT INTO `mms_operate_log` VALUES ('670f7c0f151b4ee59762b3378b43e651', '1', '2017-11-22 11:07:50.000000', 'Delete role', '1', '1', 'Delete role params:[ids:0fff7c3c005c40599d80f1a05fa56deb;]');
INSERT INTO `mms_operate_log` VALUES ('672909b692464e7da8cffd182dab8198', '1', '2017-11-21 16:00:20.000000', 'Department', '1', '0', 'Department params:[]');
INSERT INTO `mms_operate_log` VALUES ('6767ca61baa64a97ae5e3c5aeade201f', '1', '2017-11-22 16:34:57.000000', 'doLogin', '1', '0', 'doLogin params:[userName:admin;userPassword:222222;veriCode:on2g;remFlag:1;]');
INSERT INTO `mms_operate_log` VALUES ('67693b7984d74d29bda50b5d950e2a84', '8bf6c9ae369b4fd0961843feb42150b4', '2017-11-22 19:17:12.000000', 'Operator', '8bf6c9ae369b4fd0961843feb42150b4', '0', 'Operator params:[]');
INSERT INTO `mms_operate_log` VALUES ('67dc0c494b3d46519ed8397a042a7037', '1', '2017-11-22 19:04:02.000000', 'doLogin', '1', '0', 'doLogin params:[userName:admin;userPassword:222222;veriCode:wehg;remFlag:1;]');
INSERT INTO `mms_operate_log` VALUES ('6873906eed5a4ffd95a37c9fd03884b1', '9fd935a5665b40aa9bd2c11b4590c67e', '2017-11-22 15:17:42.000000', 'doLogin', '9fd935a5665b40aa9bd2c11b4590c67e', '0', 'doLogin params:[userName:AAbb11;userPassword:AAbb11;veriCode:HULM;remFlag:1;]');
INSERT INTO `mms_operate_log` VALUES ('689e85e5f5314390af869803280d0f97', '1', '2017-11-23 16:41:36.000000', 'Notice', '1', '0', 'Notice params:[noticeState:2;]');
INSERT INTO `mms_operate_log` VALUES ('68f682d2b0cb473386d9df0a397716a1', '1', '2017-11-27 10:16:50.000000', 'Notice', '1', '0', 'Notice params:[noticeState:1;]');
INSERT INTO `mms_operate_log` VALUES ('691308b05714430186c29f52fdfe83af', '1', '2017-11-23 16:42:05.000000', 'Notice', '1', '0', 'Notice params:[noticeState:3;]');
INSERT INTO `mms_operate_log` VALUES ('692a6f5d23484c17a3b665b5e22ab051', '1', '2017-11-27 14:56:56.000000', 'Device Bind', '1', '0', 'Device Bind params:[phone:1234;val:1;]');
INSERT INTO `mms_operate_log` VALUES ('6946e92e211e4447b39a50ff2b727ee9', '1', '2017-11-23 14:42:24.000000', 'Trading limit', '1', '0', 'Trading limit params:[serviceId:459a13440f1341839e43e181c5d05d53;]');
INSERT INTO `mms_operate_log` VALUES ('699c7470b76648b5b5c5792264227154', '1', '2017-11-27 14:43:54.000000', 'serviceAgreementDetail', '927a3c6fe6c346f5a8b2f3e6826af19e', '0', 'serviceAgreementDetail params:[id:927a3c6fe6c346f5a8b2f3e6826af19e;]');
INSERT INTO `mms_operate_log` VALUES ('6a258cd31d994f1e99b31b3735b31ce7', '1', '2017-11-22 10:44:32.000000', 'Role', '1', '0', 'Role params:[]');
INSERT INTO `mms_operate_log` VALUES ('6a2c8e36fc644591adbb8ee643d32742', '1', '2017-11-22 10:17:25.000000', 'System Initalization', '1', '0', 'System Initalization params:[]');
INSERT INTO `mms_operate_log` VALUES ('6a944161ae6544cc9ba661b49ca63709', '1', '2017-11-22 16:45:26.000000', 'doLogin', '1', '0', 'doLogin params:[userName:admin;userPassword:222222;veriCode:2yqa;remFlag:1;]');
INSERT INTO `mms_operate_log` VALUES ('6a9dcce2ab12484d82f9b0b6861c32a9', '1', '2017-11-27 10:41:13.000000', 'Feedback ', '1', '0', 'Feedback  params:[]');
INSERT INTO `mms_operate_log` VALUES ('6b4301d10f9c4b6cb0d0295467e8ab85', '1', '2017-11-22 16:08:30.000000', 'doLogOut', '1', '0', 'User log out');
INSERT INTO `mms_operate_log` VALUES ('6b799e2c37ab4dfdb3b78b4e17f266aa', '1', '2017-11-27 14:37:12.000000', 'questionAnswerDetail', '71e8d7bf232e450aaf12f437534a99ef', '0', 'questionAnswerDetail params:[id:71e8d7bf232e450aaf12f437534a99ef;]');
INSERT INTO `mms_operate_log` VALUES ('6ca9e57b52c44604919f0c84048f2353', '8bf6c9ae369b4fd0961843feb42150b4', '2017-11-22 19:18:00.000000', 'doLogOut', '8bf6c9ae369b4fd0961843feb42150b4', '0', 'User log out');
INSERT INTO `mms_operate_log` VALUES ('6cb2228c035547859c75e543153563c3', '1', '2017-11-23 15:08:48.000000', 'addTransactionLimit', '1', '1', 'addTransactionLimit params:[serviceId:5e448e982a0e41338e6099495ce63175;limitType:0;limitAmount:500;currency:1;]');
INSERT INTO `mms_operate_log` VALUES ('6d03442bdce04a719e27165e177e23cc', '1', '2017-11-21 17:07:12.000000', 'Role', '1', '0', 'Role params:[]');
INSERT INTO `mms_operate_log` VALUES ('6d45ad64db274ef5b2df65c75dd98b20', '1', '2017-11-21 15:22:13.000000', 'System Dict', '1', '0', 'System Dict params:[cpage:1;dictName:;]');
INSERT INTO `mms_operate_log` VALUES ('6daab250e21b48c586e531ce0e2cb450', '1', '2017-11-27 11:04:26.000000', 'Q & A', '1', '0', 'Q & A params:[]');
INSERT INTO `mms_operate_log` VALUES ('6e71b44e64684ea9b789bf7481e9abab', '1', '2017-11-23 16:16:54.000000', 'systemDictDetail', '1', '0', 'systemDictDetail params:[id:1;]');
INSERT INTO `mms_operate_log` VALUES ('6f611b18a5244034a917e081ca1fbbfe', '1', '2017-11-22 16:35:09.000000', 'Operator', '1', '0', 'Operator params:[]');
INSERT INTO `mms_operate_log` VALUES ('7075393893e04e83b4efc6e5406a7aa3', '1', '2017-11-27 10:42:16.000000', 'Feedback ', '1', '0', 'Feedback  params:[refSystem:1;]');
INSERT INTO `mms_operate_log` VALUES ('707b84e9c58a457abb5a6aeff5a536d4', '1', '2017-11-27 11:00:11.000000', 'Reply feedback', '1', '1', 'Reply feedback params:[content:;id:1;]');
INSERT INTO `mms_operate_log` VALUES ('70e4ce91531440739ce5f636136e4cc9', '1', '2017-11-27 10:33:51.000000', 'Feedback ', '1', '0', 'Feedback  params:[refSystem:2;]');
INSERT INTO `mms_operate_log` VALUES ('7205ef5056fb4950aa20a53bce49e449', '1', '2017-11-23 15:00:34.000000', 'deleteTransactionLimits', '5222b08b90f24405850ac810f746fb29', '1', 'deleteTransactionLimits params:[id:5222b08b90f24405850ac810f746fb29;]');
INSERT INTO `mms_operate_log` VALUES ('726c208ba83f4e0e8ee37249ad20e7b4', '1', '2017-11-27 10:51:20.000000', 'Feedback ', '1', '0', 'Feedback  params:[refSystem:2;]');
INSERT INTO `mms_operate_log` VALUES ('726ef6a48007464193ba88bc5f71bacf', '1', '2017-11-27 10:25:21.000000', 'Feedback ', '1', '0', 'Feedback  params:[]');
INSERT INTO `mms_operate_log` VALUES ('7272ebfa10ae4b2da3df30dfa5b5f09f', '1', '2017-11-24 15:51:59.000000', 'Operator', '1', '0', 'Operator params:[]');
INSERT INTO `mms_operate_log` VALUES ('73b6d05d0ac64d3c9756bca05f3924c9', '1', '2017-11-22 10:25:46.000000', 'Add role', '1', '1', 'Add role params:[roleName:2;roleDesc:2;menuIds:51ee577ee96442c6a253d961b66861b2,e6e19a88b7ea4950b621e24e25368b08,ed396d532ecf44a3845e6a625b819507;]');
INSERT INTO `mms_operate_log` VALUES ('73c796b976d24d3eb45b6ee4b4164251', '1', '2017-11-23 14:03:38.000000', 'userDetail', '8bf6c9ae369b4fd0961843feb42150b4', '0', 'userDetail params:[id:8bf6c9ae369b4fd0961843feb42150b4;]');
INSERT INTO `mms_operate_log` VALUES ('73c8d6df99d546c7a46d096ff240c9b7', '1', '2017-11-23 16:20:16.000000', 'System Dict', '1', '0', 'System Dict params:[]');
INSERT INTO `mms_operate_log` VALUES ('7475f0c592b94b5391d337cd5849a514', '1', '2017-11-22 16:57:36.000000', 'doLogin', '1', '0', 'doLogin params:[userName:admin;userPassword:222222;veriCode:qsgj;remFlag:1;]');
INSERT INTO `mms_operate_log` VALUES ('74d82bdee4ef40028fd8a985772af6fc', '1', '2017-11-21 16:26:45.000000', 'noticeDetail', '1', '0', 'noticeDetail params:[id:1;]');
INSERT INTO `mms_operate_log` VALUES ('75394ce0289c4a29aa3f2ae6a930d2ab', '1', '2017-11-23 14:41:34.000000', 'updateSystemService', '459a13440f1341839e43e181c5d05d53', '1', 'updateSystemService params:[id:459a13440f1341839e43e181c5d05d53;serviceName:测试;serviceDesc:测试;dictId:123456;certType:0;]');
INSERT INTO `mms_operate_log` VALUES ('75708e3999a14222a3b977d27e4e5189', '1', '2017-11-23 14:41:14.000000', 'systemServiceDetail', '459a13440f1341839e43e181c5d05d53', '0', 'systemServiceDetail params:[id:459a13440f1341839e43e181c5d05d53;]');
INSERT INTO `mms_operate_log` VALUES ('7577165b645c4972aeaedbf51f3e9645', '1', '2017-11-27 10:42:11.000000', 'Feedback ', '1', '0', 'Feedback  params:[refSystem:2;]');
INSERT INTO `mms_operate_log` VALUES ('7632965ea1664f03b79b68ef15bdb689', '1', '2017-11-21 17:19:53.000000', 'Add role', '1', '1', 'Add role params:[roleName:管理员;roleDesc:管理员;menuIds:51ee577ee96442c6a253d961b66861b2,e6e19a88b7ea4950b621e24e25368b08,ed396d532ecf44a3845e6a625b819507,2f6b9ce020b14028aae6b8e5f87afad1,b0fd17d5cea04e08bfbbc9606114c3b4,9797fe365f7846adb9c977225c2ec996;]');
INSERT INTO `mms_operate_log` VALUES ('7683d91522cf44febbbb788776ff9639', '1', '2017-11-27 10:37:58.000000', 'Feedback ', '1', '0', 'Feedback  params:[refSystem:2;]');
INSERT INTO `mms_operate_log` VALUES ('76c0303e9e1f4385a6eef1185e6541e6', '1', '2017-11-21 16:03:10.000000', 'uploadFileSave', '1', '0', 'uploadFileSave params:[editorid:contentText;]');
INSERT INTO `mms_operate_log` VALUES ('77c92beb24df4594b5db20d8027a3a13', '1', '2017-11-27 10:44:15.000000', 'Feedback ', '1', '0', 'Feedback  params:[refSystem:2;]');
INSERT INTO `mms_operate_log` VALUES ('77fab50ba2354e7cb1186f4ec0651dfd', '1', '2017-11-22 17:21:14.000000', 'Role', '1', '0', 'Role params:[]');
INSERT INTO `mms_operate_log` VALUES ('7849270144a14a599ce7476ece8471e9', '8bf6c9ae369b4fd0961843feb42150b4', '2017-11-23 08:52:17.000000', 'Role', '8bf6c9ae369b4fd0961843feb42150b4', '0', 'Role params:[]');
INSERT INTO `mms_operate_log` VALUES ('79192d5b91134f8f90b6980fb40c31bb', '1', '2017-11-23 16:57:12.000000', 'APP Version', '1', '0', 'APP Version params:[]');
INSERT INTO `mms_operate_log` VALUES ('7a30058778e64bcca3d9d36c8d7baa75', '1', '2017-11-23 16:16:17.000000', 'systemDictDetail', '1', '0', 'systemDictDetail params:[id:1;]');
INSERT INTO `mms_operate_log` VALUES ('7a50eac51f8b48a895498106a103921d', '1', '2017-11-22 14:55:47.000000', 'userDetail', 'c0f82156961e422b9111fb7cc067f03d', '0', 'userDetail params:[id:c0f82156961e422b9111fb7cc067f03d;]');
INSERT INTO `mms_operate_log` VALUES ('7a6a68390b8d4d5585881852c4d369ef', '1', '2017-11-27 11:03:53.000000', 'uploadFileSave', '1', '0', 'uploadFileSave params:[editorid:answer;]');
INSERT INTO `mms_operate_log` VALUES ('7ab92ccf6bdd424bb878cc26f3f6adca', '1', '2017-11-23 16:35:08.000000', 'Notice', '1', '0', 'Notice params:[]');
INSERT INTO `mms_operate_log` VALUES ('7b14225146ce407aa208e6ff7e3a341b', '1', '2017-11-23 14:34:27.000000', 'Trading limit', '1', '0', 'Trading limit params:[]');
INSERT INTO `mms_operate_log` VALUES ('7b1ce2d23a8640c6870dcbade71986e0', '1', '2017-11-22 11:31:31.000000', 'Add role', '1', '1', 'Add role params:[roleName:测试;roleDesc:测试;menuIds:51ee577ee96442c6a253d961b66861b2,e6e19a88b7ea4950b621e24e25368b08,ed396d532ecf44a3845e6a625b819507,2f6b9ce020b14028aae6b8e5f87afad1,b0fd17d5cea04e08bfbbc9606114c3b4,9797fe365f7846adb9c977225c2ec996,e502784caf0945ad9ddbf74dd1c3f59a;]');
INSERT INTO `mms_operate_log` VALUES ('7b5316d725e040afb119b536e3eceb66', '1', '2017-11-23 16:38:08.000000', 'Notice', '1', '0', 'Notice params:[]');
INSERT INTO `mms_operate_log` VALUES ('7c3f18c75a0648bcb359953d1d6c2023', '1', '2017-11-22 11:03:08.000000', 'Role', '1', '0', 'Role params:[]');
INSERT INTO `mms_operate_log` VALUES ('7c645be5616b4d16845e66fdf79b5f38', '1', '2017-11-23 15:36:01.000000', 'System Dict', '1', '0', 'System Dict params:[dictName:男;]');
INSERT INTO `mms_operate_log` VALUES ('7cba167191734039bf1148a2457cc7e9', '1', '2017-11-23 16:27:05.000000', 'Command Id Constrast', '1', '0', 'Command Id Constrast params:[]');
INSERT INTO `mms_operate_log` VALUES ('7d3ba8dd87d647ebbabfc25a9a31ed91', '1', '2017-11-27 11:00:39.000000', 'Feedback ', '1', '0', 'Feedback  params:[]');
INSERT INTO `mms_operate_log` VALUES ('7f3feb9b90324442a6e85a67ae61c1e6', '1', '2017-11-23 16:20:36.000000', 'Add param', '1', '1', 'Add param params:[paramTitle:测试;paramKey:123;paramValue:测试;paramDesc:测试;]');
INSERT INTO `mms_operate_log` VALUES ('7f664f724cab4c4096c4176f23ca5a00', '1', '2017-11-27 10:14:58.000000', 'Feedback ', '1', '0', 'Feedback  params:[]');
INSERT INTO `mms_operate_log` VALUES ('8090cc7179ee49f9a4e0d598916098fd', '9fd935a5665b40aa9bd2c11b4590c67e', '2017-11-22 16:05:33.000000', 'Operator', '9fd935a5665b40aa9bd2c11b4590c67e', '0', 'Operator params:[]');
INSERT INTO `mms_operate_log` VALUES ('81706da7a0a048529dcc92ee06e7f497', '1', '2017-11-22 16:35:02.000000', 'Role', '1', '0', 'Role params:[]');
INSERT INTO `mms_operate_log` VALUES ('81708bdee9ee4df59d8ddda929c54830', '1', '2017-11-23 11:08:30.000000', 'Role', '1', '0', 'Role params:[]');
INSERT INTO `mms_operate_log` VALUES ('821941770c5c44aba27a13d72484b658', '9fd935a5665b40aa9bd2c11b4590c67e', '2017-11-22 16:06:51.000000', 'doLogOut', '9fd935a5665b40aa9bd2c11b4590c67e', '0', 'User log out');
INSERT INTO `mms_operate_log` VALUES ('831dbd19d29d4e0eb36dc141b53070bd', '1', '2017-11-27 16:00:23.000000', 'Device Bind', '1', '0', 'Device Bind params:[phone:1234;val:1;]');
INSERT INTO `mms_operate_log` VALUES ('832a308009f141a29f96a057d40a43bd', '1', '2017-11-27 10:38:23.000000', 'Feedback ', '1', '0', 'Feedback  params:[refSystem:1;]');
INSERT INTO `mms_operate_log` VALUES ('836e77fb5f7d49bb8f78a299f1a5f251', '1', '2017-11-21 15:26:36.000000', 'Delete dict', '1', '1', 'Delete dict params:[ids:b9a046e987e841879d35521db45119e6;]');
INSERT INTO `mms_operate_log` VALUES ('839a46d4bc01461e8c2fd780c2560879', '1', '2017-11-23 14:41:07.000000', 'updateSystemService', '459a13440f1341839e43e181c5d05d53', '1', 'updateSystemService params:[id:459a13440f1341839e43e181c5d05d53;serviceState:0;]');
INSERT INTO `mms_operate_log` VALUES ('83c533fb891e4956a46064ee0766bbbd', '1', '2017-11-23 14:03:42.000000', 'Role', '1', '0', 'Role params:[]');
INSERT INTO `mms_operate_log` VALUES ('847e131adb204b0d8a451934db5d06a7', '1', '2017-11-22 15:04:53.000000', 'doLogin', '1', '0', 'doLogin params:[userName:admin;userPassword:222222;veriCode:1qmp;remFlag:1;]');
INSERT INTO `mms_operate_log` VALUES ('848333ce35dd41369f717a5c5df4803c', '1', '2017-11-21 15:27:49.000000', 'System Dict', '1', '0', 'System Dict params:[cpage:3;dictName:;]');
INSERT INTO `mms_operate_log` VALUES ('84af61a43b2444cb9d68fc6f2f2fd400', '1', '2017-11-23 15:43:37.000000', 'Trading limit', '1', '0', 'Trading limit params:[serviceId:459a13440f1341839e43e181c5d05d53;]');
INSERT INTO `mms_operate_log` VALUES ('84b9fadd57474abf9a825b5f4bf2b23b', '1', '2017-11-27 10:51:11.000000', 'feedbackInfoDetail', '2', '0', 'feedbackInfoDetail params:[id:2;]');
INSERT INTO `mms_operate_log` VALUES ('84e3480079bc498f9134ebe4588a8e0a', '1', '2017-11-21 16:08:25.000000', 'Add notice', '1', '1', 'Add notice params:[title:测试;contentText:<p>测试<img src=\"http://localhost:8080/mGateCMS/upload/2017-11-21/014daae0334b4f93b46a67c624fb05d4.jpg\" _src=\"http://localhost:8080/mGateCMS/upload/2017-11-21/014daae0334b4f93b46a67c624fb05d4.jpg\"/></p>;startDate:2017-11-21 16:08:20;noticeState:2;]');
INSERT INTO `mms_operate_log` VALUES ('856e949ae8884af18b80580162fa5af7', '1', '2017-11-23 14:42:28.000000', 'Trading limit', '1', '0', 'Trading limit params:[serviceId:5e448e982a0e41338e6099495ce63175;]');
INSERT INTO `mms_operate_log` VALUES ('858bb25c3694439b90376ca58e15e5be', '1', '2017-11-22 15:05:11.000000', 'roleDetail', '5d8bc58e8eaa44efa8bf20d8a33412ae', '0', 'roleDetail params:[id:5d8bc58e8eaa44efa8bf20d8a33412ae;]');
INSERT INTO `mms_operate_log` VALUES ('85ab0ffb200240298f91636ac3421f89', '1', '2017-11-22 14:50:54.000000', 'addCmsImg', '1', '1', 'addCmsImg params:[]');
INSERT INTO `mms_operate_log` VALUES ('85b44fcf0f2c4120a3ce5e54207d1d4b', '1', '2017-11-23 14:41:57.000000', 'Trading limit', '1', '0', 'Trading limit params:[]');
INSERT INTO `mms_operate_log` VALUES ('86e4ccf79c50490386bdf350bfcd20bf', '1', '2017-11-23 14:22:35.000000', 'addSystemService', '1', '1', 'addSystemService params:[serviceCode:123456;serviceName:测试;serviceDesc:测试;dictId:123456;listType:0;]');
INSERT INTO `mms_operate_log` VALUES ('86e5a9ae34574fd99c7b6721a31cfc48', '1', '2017-11-22 10:49:26.000000', 'roleDetail', '0fff7c3c005c40599d80f1a05fa56deb', '0', 'roleDetail params:[id:0fff7c3c005c40599d80f1a05fa56deb;]');
INSERT INTO `mms_operate_log` VALUES ('86f7804cef4c43bea408e36598d03ab2', '1', '2017-11-22 15:05:15.000000', 'Role', '1', '0', 'Role params:[]');
INSERT INTO `mms_operate_log` VALUES ('8757f8c94c1844689b92ddec34123e1e', '1', '2017-11-22 11:28:27.000000', 'Role', '1', '0', 'Role params:[]');
INSERT INTO `mms_operate_log` VALUES ('876f7f72670645e188f544f5745ce7ab', '1', '2017-11-21 15:21:40.000000', 'System Dict', '1', '0', 'System Dict params:[cpage:4;dictName:;]');
INSERT INTO `mms_operate_log` VALUES ('8777c43a3a49409bb77edca729e7f5d8', '1', '2017-11-23 15:28:17.000000', 'updateTransactionLimit', '18b051badb134653b35e0c3648a0a7c0', '1', 'updateTransactionLimit params:[id:18b051badb134653b35e0c3648a0a7c0;limitAmount:600;]');
INSERT INTO `mms_operate_log` VALUES ('87ee8436deb14b5eb07523231bdb9be0', '1', '2017-11-27 10:40:27.000000', 'Feedback ', '1', '0', 'Feedback  params:[]');
INSERT INTO `mms_operate_log` VALUES ('87f11aece6d94b31866f99d2262746a6', '1', '2017-11-27 15:21:49.000000', 'addCmsImg', '1', '1', 'addCmsImg params:[]');
INSERT INTO `mms_operate_log` VALUES ('88d275c89ef145edbc9ee17daf0d091d', '1', '2017-11-27 15:26:24.000000', 'Role', '1', '0', 'Role params:[]');
INSERT INTO `mms_operate_log` VALUES ('8940299b5981489b989110d9e1fbfef1', '1', '2017-11-23 16:23:03.000000', 'Code Constrast', '1', '0', 'Code Constrast params:[]');
INSERT INTO `mms_operate_log` VALUES ('89a5d5eb666248b6a3f09ab1ba3e8d57', '1', '2017-11-22 10:08:04.000000', 'Add role', '1', '1', 'Add role params:[roleName:12311;roleDesc:1;menuIds:51ee577ee96442c6a253d961b66861b2,e6e19a88b7ea4950b621e24e25368b08,ed396d532ecf44a3845e6a625b819507,2f6b9ce020b14028aae6b8e5f87afad1,b0fd17d5cea04e08bfbbc9606114c3b4,9797fe365f7846adb9c977225c2ec996;]');
INSERT INTO `mms_operate_log` VALUES ('89a6fbf06d9749228e00b69b1d6642e2', 'c0f82156961e422b9111fb7cc067f03d', '2017-11-22 15:04:05.000000', 'userDetail', 'c0f82156961e422b9111fb7cc067f03d', '0', 'userDetail params:[id:c0f82156961e422b9111fb7cc067f03d;]');
INSERT INTO `mms_operate_log` VALUES ('89b3c40757df4d08a136e671e5fb833c', '1', '2017-11-21 17:07:11.000000', 'Operator', '1', '0', 'Operator params:[]');
INSERT INTO `mms_operate_log` VALUES ('8a0d2c1954464362a5b4853d8383cfcf', '1', '2017-11-22 14:50:32.000000', 'Role', '1', '0', 'Role params:[]');
INSERT INTO `mms_operate_log` VALUES ('8a6beb27dff84a68bd000c05be55845a', '1', '2017-11-27 15:04:33.000000', 'Device Bind', '1', '0', 'Device Bind params:[phone:1234;val:1;]');
INSERT INTO `mms_operate_log` VALUES ('8a6c0dfa7200439aa57da949dfb72895', '1', '2017-11-22 10:21:11.000000', 'Add role', '1', '1', 'Add role params:[roleName:1;roleDesc:1;menuIds:51ee577ee96442c6a253d961b66861b2,e6e19a88b7ea4950b621e24e25368b08,ed396d532ecf44a3845e6a625b819507,2f6b9ce020b14028aae6b8e5f87afad1;]');
INSERT INTO `mms_operate_log` VALUES ('8ae3b7f69eba412991c465ed36da7bf6', '1', '2017-11-22 11:24:55.000000', 'Modify role', 'cab3ffe45fa34c06a7bd7724c5809763', '1', 'Modify role params:[id:cab3ffe45fa34c06a7bd7724c5809763;roleName:测试;roleDesc:测试;menuIds:51ee577ee96442c6a253d961b66861b2,e6e19a88b7ea4950b621e24e25368b08,ed396d532ecf44a3845e6a625b819507,2f6b9ce020b14028aae6b8e5f87afad1,b0fd17d5cea04e08bfbbc9606114c3b4,9797fe365f7846adb9c977225c2ec996;]');
INSERT INTO `mms_operate_log` VALUES ('8b580538c68f43eabb9cff879d9225e9', '1', '2017-11-22 11:31:11.000000', 'roleDetail', '392e9b1a42bf45519df66722044b8784', '0', 'roleDetail params:[id:392e9b1a42bf45519df66722044b8784;]');
INSERT INTO `mms_operate_log` VALUES ('8baccf47e0a147e2ae75d76f74b3564d', '1', '2017-11-23 16:26:29.000000', 'Command Id Constrast', '1', '0', 'Command Id Constrast params:[]');
INSERT INTO `mms_operate_log` VALUES ('8bc5d6639aa0409db495a95a8f01cf17', '1', '2017-11-27 10:15:57.000000', 'APP Version', '1', '0', 'APP Version params:[]');
INSERT INTO `mms_operate_log` VALUES ('8c2509e66bc5400b934add56d8a00bbb', '1', '2017-11-27 10:40:58.000000', 'Feedback ', '1', '0', 'Feedback  params:[]');
INSERT INTO `mms_operate_log` VALUES ('8c5b8a794c114180966bb40720237505', '1', '2017-11-27 10:55:09.000000', 'feedbackInfoDetail', '1', '0', 'feedbackInfoDetail params:[id:1;]');
INSERT INTO `mms_operate_log` VALUES ('8c61ce7345354abc80b09068a5d33458', '1', '2017-11-23 14:41:39.000000', 'Trading limit', '1', '0', 'Trading limit params:[]');
INSERT INTO `mms_operate_log` VALUES ('8c9872ec687e47aca2bd4349b25bbd60', '1', '2017-11-27 10:37:20.000000', 'Feedback ', '1', '0', 'Feedback  params:[]');
INSERT INTO `mms_operate_log` VALUES ('8d69435310884e8888a00eac34d7d566', '1', '2017-11-27 10:41:26.000000', 'Feedback ', '1', '0', 'Feedback  params:[]');
INSERT INTO `mms_operate_log` VALUES ('8dd97546a45944aca0e03de764c25c19', '1', '2017-11-23 16:22:23.000000', 'Code Constrast', '1', '0', 'Code Constrast params:[]');
INSERT INTO `mms_operate_log` VALUES ('8deaa8bbbc2240ee90db8e976a06cd8d', '1', '2017-11-23 14:41:36.000000', 'Business', '1', '0', 'Business params:[]');
INSERT INTO `mms_operate_log` VALUES ('8e24712973ae47be8ad993b5d089c253', '1', '2017-11-27 10:25:26.000000', 'Feedback ', '1', '0', 'Feedback  params:[refSystem:2;]');
INSERT INTO `mms_operate_log` VALUES ('8ed671c7b1424868831ecda835fd10a4', '1', '2017-11-23 15:29:37.000000', 'Operator', '1', '0', 'Operator params:[]');
INSERT INTO `mms_operate_log` VALUES ('8edae8b85e274b9ebf5a4a083a85efc1', '1', '2017-11-22 10:31:49.000000', 'doLogin', '1', '0', 'doLogin params:[userName:admin;userPassword:222222;veriCode:qyzq;remFlag:1;]');
INSERT INTO `mms_operate_log` VALUES ('8f0391e4c5374712bee6cc73b95152d8', '1', '2017-11-23 14:59:13.000000', 'Trading limit', '1', '0', 'Trading limit params:[serviceId:459a13440f1341839e43e181c5d05d53;]');
INSERT INTO `mms_operate_log` VALUES ('8fb50c0146044791b476b79d8e2d6e38', '1', '2017-11-23 16:20:39.000000', 'systemParamDetail', 'bec6164f474441e7b6b4d708d6172474', '0', 'systemParamDetail params:[id:bec6164f474441e7b6b4d708d6172474;]');
INSERT INTO `mms_operate_log` VALUES ('8fc5e7b0e8854a97bffd34e77fba903d', '1', '2017-11-22 17:21:42.000000', 'Role', '1', '0', 'Role params:[]');
INSERT INTO `mms_operate_log` VALUES ('9001e056654f4b7d871d3d0b5e5de9de', '1', '2017-11-23 15:08:31.000000', 'Trading limit', '1', '0', 'Trading limit params:[serviceId:5e448e982a0e41338e6099495ce63175;]');
INSERT INTO `mms_operate_log` VALUES ('9008856004fd45da98c7aa49c004ac3f', '1', '2017-11-22 11:23:31.000000', 'Role', '1', '0', 'Role params:[]');
INSERT INTO `mms_operate_log` VALUES ('911a6ac2f124494cb91da32edcb07dc7', '1', '2017-11-27 10:42:14.000000', 'Feedback ', '1', '0', 'Feedback  params:[refSystem:2;]');
INSERT INTO `mms_operate_log` VALUES ('9146b1994a45416aa047fc0b4ed68946', '1', '2017-11-21 15:22:59.000000', 'systemDictDetail', '1', '0', 'systemDictDetail params:[id:1;]');
INSERT INTO `mms_operate_log` VALUES ('9176b8cd35e34956a7eb61e45bc370c1', '1', '2017-11-22 17:21:49.000000', 'Operator', '1', '0', 'Operator params:[]');
INSERT INTO `mms_operate_log` VALUES ('918ab62f221d47d1adca8f5d0b15c20e', '1', '2017-11-27 11:05:14.000000', 'questionAnswerDetail', '71e8d7bf232e450aaf12f437534a99ef', '0', 'questionAnswerDetail params:[id:71e8d7bf232e450aaf12f437534a99ef;]');
INSERT INTO `mms_operate_log` VALUES ('91af849f9d734841b5a255720f0bfb68', '1', '2017-11-22 11:25:10.000000', 'Role', '1', '0', 'Role params:[]');
INSERT INTO `mms_operate_log` VALUES ('9240a599545e410db081236e0f03f705', '9fd935a5665b40aa9bd2c11b4590c67e', '2017-11-22 16:05:53.000000', 'Operator', '9fd935a5665b40aa9bd2c11b4590c67e', '0', 'Operator params:[]');
INSERT INTO `mms_operate_log` VALUES ('929b2561491c4d87934261bd0da9a081', '1', '2017-11-22 14:30:03.000000', 'roleDetail', 'a7fa3695f0c444feaa9d843c7947c530', '0', 'roleDetail params:[id:a7fa3695f0c444feaa9d843c7947c530;]');
INSERT INTO `mms_operate_log` VALUES ('93086da6535e4680898b608aa1702eb8', '1', '2017-11-22 14:55:30.000000', 'userDetail', 'c0f82156961e422b9111fb7cc067f03d', '0', 'userDetail params:[id:c0f82156961e422b9111fb7cc067f03d;]');
INSERT INTO `mms_operate_log` VALUES ('9332b3b098894b489ca52ef44ab03ec1', '1', '2017-11-27 10:16:55.000000', 'Notice', '1', '0', 'Notice params:[noticeState:2;]');
INSERT INTO `mms_operate_log` VALUES ('9334ed7e525a4786a70540fa578f7962', '1', '2017-11-23 11:08:36.000000', 'Role', '1', '0', 'Role params:[]');
INSERT INTO `mms_operate_log` VALUES ('94350f8b638a4cae87db7d76b04db738', '1', '2017-11-23 14:41:10.000000', 'Business', '1', '0', 'Business params:[]');
INSERT INTO `mms_operate_log` VALUES ('943f60e55b2241b69516311278b799f4', '1', '2017-11-22 16:35:34.000000', 'Operator', '1', '0', 'Operator params:[]');
INSERT INTO `mms_operate_log` VALUES ('955ea2f9506244a0848e9b751b86ba16', '1', '2017-11-27 10:55:12.000000', 'feedbackInfoDetail', '1', '0', 'feedbackInfoDetail params:[id:1;]');
INSERT INTO `mms_operate_log` VALUES ('95caf0868c9f49c7ad09c53f4d7d50dd', '1', '2017-11-27 15:38:20.000000', 'Device Bind', '1', '0', 'Device Bind params:[phone:1234;val:1;]');
INSERT INTO `mms_operate_log` VALUES ('95da9c5f828140ed83a2587aaffa9b3c', '8bf6c9ae369b4fd0961843feb42150b4', '2017-11-22 17:48:22.000000', 'Operator', '8bf6c9ae369b4fd0961843feb42150b4', '0', 'Operator params:[]');
INSERT INTO `mms_operate_log` VALUES ('95fa5849727942799d4fe68c899a4b15', '1', '2017-11-27 11:04:29.000000', 'questionAnswerDetail', '71e8d7bf232e450aaf12f437534a99ef', '0', 'questionAnswerDetail params:[id:71e8d7bf232e450aaf12f437534a99ef;]');
INSERT INTO `mms_operate_log` VALUES ('964431b769fa47d8b7c70d91c0247c9d', '1', '2017-11-23 14:41:27.000000', 'Business', '1', '0', 'Business params:[]');
INSERT INTO `mms_operate_log` VALUES ('9699a3d0075d414b85c46ee3a4c8d673', '1', '2017-11-22 10:25:12.000000', 'Role', '1', '0', 'Role params:[]');
INSERT INTO `mms_operate_log` VALUES ('96bbd33d86e34ffd90ac2a856193d1f2', '1', '2017-11-22 14:30:28.000000', 'Role', '1', '0', 'Role params:[]');
INSERT INTO `mms_operate_log` VALUES ('971f6f541cd04a6facb9aa8585afadfe', '68a11f4137174877b4bc19ccac97e2c6', '2017-11-22 16:37:00.000000', 'doLogin', '68a11f4137174877b4bc19ccac97e2c6', '0', 'doLogin params:[userName:wuqingsong;userPassword:WUqing123;veriCode:n7na;remFlag:1;]');
INSERT INTO `mms_operate_log` VALUES ('9736c600afff4890bbfe430274548498', '1', '2017-11-27 11:04:26.000000', 'Add Q & A', '1', '1', 'Add Q & A params:[title:测试标题;answer:<p>问这个图片好看吗？<sub><img src=\"http://localhost:8080/mGateCMS/upload/2017-11-27/7158f14af503466f96d5dc4b38d709b3.jpg\" _src=\"http://localhost:8080/mGateCMS/upload/2017-11-27/7158f14af503466f96d5dc4b38d709b3.jpg\"/></sub></p>;questionDesc:问这个图片;questionType:2;]');
INSERT INTO `mms_operate_log` VALUES ('97961edc4c3c4abf95b9535330e6fe90', '1', '2017-11-22 16:08:27.000000', 'Add operator', '1', '1', 'Add operator params:[userName:wuqingsong;userPassword:WUqing123;realName:W1;userPhoto:http://localhost:8080/mGateCMS/static/imgs/upload/20171122/1511338089601_348.png;userNo:1;userPhone:2;userEmail:2@qq.com;certType:1;userGender:1;certId:123;deptId:84c87bfbc93348c9a89cf43534b0beae;roleIds:5d8bc58e8eaa44efa8bf20d8a33412ae,6f1a5d427c6742598f4582a2ff331801,c3a37f277fea4802bd757daaf5a474c9;userRemark:12;]');
INSERT INTO `mms_operate_log` VALUES ('97c74841d40b4b39a956a3ca10d80860', '1', '2017-11-22 10:53:55.000000', 'Role', '1', '0', 'Role params:[]');
INSERT INTO `mms_operate_log` VALUES ('97f35df531194bc8a0131a3aba0cbf1a', '1', '2017-11-21 15:27:30.000000', 'System Dict', '1', '0', 'System Dict params:[cpage:2;dictName:;]');
INSERT INTO `mms_operate_log` VALUES ('987e580a34ee4dc6a7668c49be5fab08', '1', '2017-11-22 10:33:51.000000', 'roleDetail', '0fff7c3c005c40599d80f1a05fa56deb', '0', 'roleDetail params:[id:0fff7c3c005c40599d80f1a05fa56deb;]');
INSERT INTO `mms_operate_log` VALUES ('98ad2b043c2b40198c9d55fef1e160e2', '1', '2017-11-23 15:41:10.000000', 'Trading limit', '1', '0', 'Trading limit params:[serviceId:459a13440f1341839e43e181c5d05d53;]');
INSERT INTO `mms_operate_log` VALUES ('98bdae2bd1354d3caf69e4bd6497604e', '1', '2017-11-27 10:38:56.000000', 'Feedback ', '1', '0', 'Feedback  params:[refSystem:2;]');
INSERT INTO `mms_operate_log` VALUES ('98e94b0f429846e5b32d8c0d9a563673', '1', '2017-11-23 16:42:11.000000', 'Notice', '1', '0', 'Notice params:[noticeState:3;]');
INSERT INTO `mms_operate_log` VALUES ('9928b7acea7548f8b51e3e382c29e0da', '1', '2017-11-23 14:18:28.000000', 'Department', '1', '0', 'Department params:[]');
INSERT INTO `mms_operate_log` VALUES ('9939496b8ae64d87856e0a05d10c001c', '1', '2017-11-23 16:17:26.000000', 'System Dict', '1', '0', 'System Dict params:[cpage:1;dictName:;]');
INSERT INTO `mms_operate_log` VALUES ('9986673a60b244db954951c324fc3e85', '1', '2017-11-23 14:43:29.000000', 'Trading limit', '1', '0', 'Trading limit params:[serviceId:459a13440f1341839e43e181c5d05d53;]');
INSERT INTO `mms_operate_log` VALUES ('9990a819590344b295a85c37fcd2d63a', 'a25ff9b9b32c450cb925cbd5cd7bbe21', '2017-11-22 16:13:50.000000', 'doLogin', 'a25ff9b9b32c450cb925cbd5cd7bbe21', '0', 'doLogin params:[userName:wuqingsong;userPassword:WUqing123;veriCode:chiy;remFlag:1;]');
INSERT INTO `mms_operate_log` VALUES ('9a28fd4e178641a393c09eebd93bc0cc', '1', '2017-11-27 10:35:11.000000', 'Notice', '1', '0', 'Notice params:[]');
INSERT INTO `mms_operate_log` VALUES ('9a465f66b7eb49aa8b70a746a77f3687', '1', '2017-11-23 16:41:32.000000', 'Notice', '1', '0', 'Notice params:[noticeState:2;]');
INSERT INTO `mms_operate_log` VALUES ('9a9795b0459f4e9a906a930f5347b805', '1', '2017-11-22 14:25:33.000000', 'roleDetail', 'a7fa3695f0c444feaa9d843c7947c530', '0', 'roleDetail params:[id:a7fa3695f0c444feaa9d843c7947c530;]');
INSERT INTO `mms_operate_log` VALUES ('9ad50fd491d14c3c84f83f0421568a74', '1', '2017-11-21 15:10:23.000000', 'doLogin', '1', '0', 'doLogin params:[userName:admin;userPassword:222222;veriCode:dwxi;remFlag:1;]');
INSERT INTO `mms_operate_log` VALUES ('9b351fcfb6d84856ae7d6c187e283c22', '1', '2017-11-23 14:41:35.000000', 'systemServiceDetail', '459a13440f1341839e43e181c5d05d53', '0', 'systemServiceDetail params:[id:459a13440f1341839e43e181c5d05d53;]');
INSERT INTO `mms_operate_log` VALUES ('9b4ab70809154ed2812ffd13d6e1c77f', '1', '2017-11-27 15:37:45.000000', 'Device Bind', '1', '0', 'Device Bind params:[phone:1234;val:1;]');
INSERT INTO `mms_operate_log` VALUES ('9b6638c008a842b08cbebe10c1cf1a1f', '1', '2017-11-23 16:27:23.000000', 'Delete command Id', '1', '1', 'Delete command Id params:[ids:1;]');
INSERT INTO `mms_operate_log` VALUES ('9b8d2498e84d4f78860e63dd8feb5838', '1', '2017-11-21 16:02:35.000000', 'Notice', '1', '0', 'Notice params:[]');
INSERT INTO `mms_operate_log` VALUES ('9bbd57f4e011457d8d1c79ee17c69c84', '1', '2017-11-22 15:05:02.000000', 'roleDetail', 'a7fa3695f0c444feaa9d843c7947c530', '0', 'roleDetail params:[id:a7fa3695f0c444feaa9d843c7947c530;]');
INSERT INTO `mms_operate_log` VALUES ('9c21f109414a493f93179417ce955065', '1', '2017-11-24 15:52:02.000000', 'userDetail', '8bf6c9ae369b4fd0961843feb42150b4', '0', 'userDetail params:[id:8bf6c9ae369b4fd0961843feb42150b4;]');
INSERT INTO `mms_operate_log` VALUES ('9c366f06ed1645a1b8cc1fc11c7eadaf', '1', '2017-11-27 16:09:03.000000', 'Table Rule', '1', '0', 'Table Rule params:[]');
INSERT INTO `mms_operate_log` VALUES ('9ccb74c06e894a90885bdd9bf657ab6f', '1', '2017-11-22 10:32:46.000000', 'Role', '1', '0', 'Role params:[]');
INSERT INTO `mms_operate_log` VALUES ('9d0fbf24e20a4029afdc84e68b6e0460', '1', '2017-11-27 10:53:09.000000', 'feedbackInfoDetail', '1', '0', 'feedbackInfoDetail params:[id:1;]');
INSERT INTO `mms_operate_log` VALUES ('9d85164e14004e16acd70444a97d31c5', '1', '2017-11-23 15:26:36.000000', 'addTransactionLimit', '1', '1', 'addTransactionLimit params:[serviceId:5e448e982a0e41338e6099495ce63175;limitType:1;limitAmount:123;currency:1;]');
INSERT INTO `mms_operate_log` VALUES ('9dc276e51f934b69884726eba667bd40', '1', '2017-11-27 15:15:29.000000', 'Operator', '1', '0', 'Operator params:[]');
INSERT INTO `mms_operate_log` VALUES ('9e0f09ca3b5f4e818c83c693d6aaccde', '1', '2017-11-22 16:35:14.000000', 'Operator', '1', '0', 'Operator params:[]');
INSERT INTO `mms_operate_log` VALUES ('9e2c4eab5d99498287e7588357835c3a', '1', '2017-11-27 15:09:49.000000', 'Device Bind', '1', '0', 'Device Bind params:[phone:1234;val:1;]');
INSERT INTO `mms_operate_log` VALUES ('9e353d8af6e943a6b3d98513b82adf23', '1', '2017-11-21 15:31:42.000000', 'Notice', '1', '0', 'Notice params:[]');
INSERT INTO `mms_operate_log` VALUES ('9e7265c3b19d45f5957b026d261e6346', '1', '2017-11-27 14:43:52.000000', 'Add Agreement', '1', '1', 'Add Agreement params:[agreementName:业务许可测试;contentUrl:<p>业务许可测试<img src=\"http://localhost:8080/mGateCMS/upload/2017-11-27/29153df8ce8f4af6aa6263426d2efba4.jpg\" _src=\"http://localhost:8080/mGateCMS/upload/2017-11-27/29153df8ce8f4af6aa6263426d2efba4.jpg\"/></p>;agreementDesc:业务许可测试;refType:1;]');
INSERT INTO `mms_operate_log` VALUES ('9e835b5183dc494fb39d824a26c692c5', '1', '2017-11-27 10:38:21.000000', 'Feedback ', '1', '0', 'Feedback  params:[refSystem:2;]');
INSERT INTO `mms_operate_log` VALUES ('9ebaee7021364e20a1cf72b094a45b31', '1', '2017-11-27 16:05:31.000000', 'Table Rule', '1', '0', 'Table Rule params:[]');
INSERT INTO `mms_operate_log` VALUES ('9ee0166441a047908c35b44b62513649', '1', '2017-11-23 15:28:46.000000', 'addTransactionLimit', '1', '1', 'addTransactionLimit params:[serviceId:459a13440f1341839e43e181c5d05d53;limitType:1;limitAmount:21;currency:1;]');
INSERT INTO `mms_operate_log` VALUES ('9f601d5691f04b208fe02182b5f2f42a', '1', '2017-11-27 15:02:24.000000', 'Device Bind', '1', '0', 'Device Bind params:[phone:1234;val:1;]');
INSERT INTO `mms_operate_log` VALUES ('9f9f587420a242feab189c2b1f84f8bd', '1', '2017-11-27 10:55:06.000000', 'feedbackInfoDetail', '1', '0', 'feedbackInfoDetail params:[id:1;]');
INSERT INTO `mms_operate_log` VALUES ('9fc20a49730240f4b5ad73dfcfa8cdc7', '1', '2017-11-21 15:26:32.000000', 'System Dict', '1', '0', 'System Dict params:[]');
INSERT INTO `mms_operate_log` VALUES ('9fdcbb8d6bc6462baeb7e5bf282bf1f4', '1', '2017-11-22 14:45:58.000000', 'doLogin', '1', '0', 'doLogin params:[userName:admin;userPassword:222222;veriCode:2vmu;remFlag:1;]');
INSERT INTO `mms_operate_log` VALUES ('a030a40a856e486795b246b304758dfa', '1', '2017-11-23 14:03:34.000000', 'userDetail', '8bf6c9ae369b4fd0961843feb42150b4', '0', 'userDetail params:[id:8bf6c9ae369b4fd0961843feb42150b4;]');
INSERT INTO `mms_operate_log` VALUES ('a036cfad659f46339c3c76267072c8e1', '68a11f4137174877b4bc19ccac97e2c6', '2017-11-22 16:55:37.000000', 'doLogOut', '68a11f4137174877b4bc19ccac97e2c6', '0', 'User log out');
INSERT INTO `mms_operate_log` VALUES ('a0cf39d9a9544e58a1c9c431edce72fc', '1', '2017-11-21 17:17:13.000000', 'Role', '1', '0', 'Role params:[]');
INSERT INTO `mms_operate_log` VALUES ('a0d8ad1a4aed44d6a2ced7fb6e11bd9b', '1', '2017-11-21 15:27:43.000000', 'System Dict', '1', '0', 'System Dict params:[cpage:3;dictName:;]');
INSERT INTO `mms_operate_log` VALUES ('a0e17194a0314924a45b7f40a558e960', '1', '2017-11-27 10:37:56.000000', 'Feedback ', '1', '0', 'Feedback  params:[refSystem:1;]');
INSERT INTO `mms_operate_log` VALUES ('a10bf68205054a2a986df0a8fc9cbd24', 'c0f82156961e422b9111fb7cc067f03d', '2017-11-22 14:58:19.000000', 'Operator', 'c0f82156961e422b9111fb7cc067f03d', '0', 'Operator params:[]');
INSERT INTO `mms_operate_log` VALUES ('a1703de18fe9409e97a401eabb801576', '1', '2017-11-23 14:43:42.000000', 'Trading limit', '1', '0', 'Trading limit params:[serviceId:5e448e982a0e41338e6099495ce63175;]');
INSERT INTO `mms_operate_log` VALUES ('a197a8e96ebb42f3a62e88a5040d1cb2', '1', '2017-11-21 16:02:31.000000', 'Department', '1', '0', 'Department params:[]');
INSERT INTO `mms_operate_log` VALUES ('a1bb488b906646768bec733d546736d4', '8bf6c9ae369b4fd0961843feb42150b4', '2017-11-23 08:52:15.000000', 'roleDetail', '7b3da3149a7542dc88126cb3ff83c0d5', '0', 'roleDetail params:[id:7b3da3149a7542dc88126cb3ff83c0d5;]');
INSERT INTO `mms_operate_log` VALUES ('a1c04452ef7b45a997a102dd462ad372', '1', '2017-11-22 10:58:47.000000', 'Role', '1', '0', 'Role params:[]');
INSERT INTO `mms_operate_log` VALUES ('a28f30d3e09f44e7945892fde01478dc', '1', '2017-11-27 10:42:21.000000', 'feedbackInfoDetail', '1', '0', 'feedbackInfoDetail params:[id:1;]');
INSERT INTO `mms_operate_log` VALUES ('a2941cac6f2e4221a791655772162806', '1', '2017-11-22 15:06:23.000000', 'Operator', '1', '0', 'Operator params:[]');
INSERT INTO `mms_operate_log` VALUES ('a2e48ee06d4b4fa99376f446cd498f9e', '1', '2017-11-23 15:52:30.000000', 'Trading limit', '1', '0', 'Trading limit params:[]');
INSERT INTO `mms_operate_log` VALUES ('a3bc4054c0f54962a9beef9e7726398c', '8bf6c9ae369b4fd0961843feb42150b4', '2017-11-22 17:23:25.000000', 'doLogin', '8bf6c9ae369b4fd0961843feb42150b4', '0', 'doLogin params:[userName:wuqingsong;userPassword:WUqing123;veriCode:coha;remFlag:1;]');
INSERT INTO `mms_operate_log` VALUES ('a46bb5da8b404b53a7a2dbe745b6c8ee', '1', '2017-11-22 14:16:33.000000', 'roleDetail', 'a7fa3695f0c444feaa9d843c7947c530', '0', 'roleDetail params:[id:a7fa3695f0c444feaa9d843c7947c530;]');
INSERT INTO `mms_operate_log` VALUES ('a4b0863cb6c1483f8fba6b47629f3dc1', '1', '2017-11-23 11:03:11.000000', 'Role', '1', '0', 'Role params:[]');
INSERT INTO `mms_operate_log` VALUES ('a4c762a307b24fe99bd206395bab750b', '1', '2017-11-23 11:02:45.000000', 'Feedback ', '1', '0', 'Feedback  params:[refSystem:1;]');
INSERT INTO `mms_operate_log` VALUES ('a516ab01758e4ae793e4321d29a9a47a', '1', '2017-11-22 16:35:03.000000', 'Operator', '1', '0', 'Operator params:[]');
INSERT INTO `mms_operate_log` VALUES ('a51ab2d789014bbc8faf2ac9c63f0fc2', '1', '2017-11-27 10:41:33.000000', 'Feedback ', '1', '0', 'Feedback  params:[refSystem:1;]');
INSERT INTO `mms_operate_log` VALUES ('a5a62b4675964c12afbd6444480805ee', '1', '2017-11-27 10:35:29.000000', 'Feedback ', '1', '0', 'Feedback  params:[]');
INSERT INTO `mms_operate_log` VALUES ('a74f40072ebe4450955b630dd4a1f576', '1', '2017-11-22 14:11:24.000000', 'roleDetail', '91a15fbff4284f5f9d9ceaceaadea855', '0', 'roleDetail params:[id:91a15fbff4284f5f9d9ceaceaadea855;]');
INSERT INTO `mms_operate_log` VALUES ('a7cce2c6f9a249b885f3ee0a83828fc9', '1', '2017-11-23 14:03:37.000000', 'Operator', '1', '0', 'Operator params:[]');
INSERT INTO `mms_operate_log` VALUES ('a7effc96c06e45eca589069c1cdd1ddf', '1', '2017-11-21 15:22:23.000000', 'System Dict', '1', '0', 'System Dict params:[dictName:;]');
INSERT INTO `mms_operate_log` VALUES ('a836725f18d74761b028e4191ceecd37', '1', '2017-11-27 16:09:07.000000', 'userDetail', '8bf6c9ae369b4fd0961843feb42150b4', '0', 'userDetail params:[id:8bf6c9ae369b4fd0961843feb42150b4;]');
INSERT INTO `mms_operate_log` VALUES ('a869a3f2ee0747218fbfd610ec55cdf8', '1', '2017-11-23 11:06:14.000000', 'Role', '1', '0', 'Role params:[]');
INSERT INTO `mms_operate_log` VALUES ('a891d6aaa9fa4285bfc09f550037d9a2', '9fd935a5665b40aa9bd2c11b4590c67e', '2017-11-22 16:05:58.000000', 'Operator', '9fd935a5665b40aa9bd2c11b4590c67e', '0', 'Operator params:[]');
INSERT INTO `mms_operate_log` VALUES ('a89be694844d449c9b4d9ea8b60773e0', '8bf6c9ae369b4fd0961843feb42150b4', '2017-11-22 19:18:12.000000', 'doLogin', '8bf6c9ae369b4fd0961843feb42150b4', '0', 'doLogin params:[userName:wuqingsong;userPassword:WUqing123;veriCode:dkyo;remFlag:1;]');
INSERT INTO `mms_operate_log` VALUES ('a8f40101befd4a8e83e08b4fef803c12', '1', '2017-11-21 15:45:45.000000', 'Notice', '1', '0', 'Notice params:[]');
INSERT INTO `mms_operate_log` VALUES ('a977b7f9b6c649f087392fb6f1ef05bb', '1', '2017-11-21 16:00:10.000000', 'Notice', '1', '0', 'Notice params:[noticeState:1;]');
INSERT INTO `mms_operate_log` VALUES ('a9c6a08372844aaa985f5105a8bbdcdb', '1', '2017-11-22 11:06:55.000000', 'Role', '1', '0', 'Role params:[]');
INSERT INTO `mms_operate_log` VALUES ('aae80328d61f4bb588eb86576dc7ef7c', '1', '2017-11-23 16:41:26.000000', 'Notice', '1', '0', 'Notice params:[]');
INSERT INTO `mms_operate_log` VALUES ('ab002ab539e749fa8493ceb107126d09', '1', '2017-11-21 15:31:35.000000', 'doLogin', '1', '0', 'doLogin params:[userName:admin;userPassword:222222;veriCode:0qbf;remFlag:1;]');
INSERT INTO `mms_operate_log` VALUES ('ab094421ff2e40bba0f16cc68421e361', '1', '2017-11-23 08:52:38.000000', 'Role', '1', '0', 'Role params:[]');
INSERT INTO `mms_operate_log` VALUES ('ab6e6bb782f5450d9d3c3f90f18fd780', '1', '2017-11-27 10:16:57.000000', 'APP Version', '1', '0', 'APP Version params:[]');
INSERT INTO `mms_operate_log` VALUES ('abded7d3eaba4f5694877a5e01d0d7b5', '1', '2017-11-27 10:51:35.000000', 'feedbackInfoDetail', '2', '0', 'feedbackInfoDetail params:[id:2;]');
INSERT INTO `mms_operate_log` VALUES ('ac24b73c326b4c8e9bae746083c3bd6b', '1', '2017-11-27 10:59:33.000000', 'feedbackInfoDetail', '1', '0', 'feedbackInfoDetail params:[id:1;]');
INSERT INTO `mms_operate_log` VALUES ('ac3ea471509c45aab4d2ac380f080ce5', '1', '2017-11-22 09:36:06.000000', 'Add role', '1', '1', 'Add role params:[roleName:用户管理员;roleDesc:用户管理员;menuIds:51ee577ee96442c6a253d961b66861b2,e6e19a88b7ea4950b621e24e25368b08,ed396d532ecf44a3845e6a625b819507,2f6b9ce020b14028aae6b8e5f87afad1,b0fd17d5cea04e08bfbbc9606114c3b4,9797fe365f7846adb9c977225c2ec996;]');
INSERT INTO `mms_operate_log` VALUES ('ac4aa9adf8e540a19c4bee69c953ba1e', '1', '2017-11-27 10:59:47.000000', 'feedbackInfoDetail', '1', '0', 'feedbackInfoDetail params:[id:1;]');
INSERT INTO `mms_operate_log` VALUES ('ad2fe8f1dc5c48e6be0bc4b643f360da', '1', '2017-11-23 16:14:37.000000', 'System Dict', '1', '0', 'System Dict params:[]');
INSERT INTO `mms_operate_log` VALUES ('ae0ddd6303f745bf8a2204eb4ba7195e', '1', '2017-11-23 16:38:17.000000', 'Notice', '1', '0', 'Notice params:[noticeState:2;]');
INSERT INTO `mms_operate_log` VALUES ('ae27e386fb6d4146945cad460496db63', '1', '2017-11-27 15:35:03.000000', 'Device Bind', '1', '0', 'Device Bind params:[phone:1234;val:1;]');
INSERT INTO `mms_operate_log` VALUES ('ae439578184d451e85169489753edf38', '1', '2017-11-27 10:42:36.000000', 'feedbackInfoDetail', '1', '0', 'feedbackInfoDetail params:[id:1;]');
INSERT INTO `mms_operate_log` VALUES ('ae852471c2574255b4bb1ab3d9259e3c', '1', '2017-11-27 15:07:22.000000', 'Device Bind', '1', '0', 'Device Bind params:[phone:12345;val:1;]');
INSERT INTO `mms_operate_log` VALUES ('aeb7b50e53264d368258446adae8b514', '1', '2017-11-27 11:04:35.000000', 'Q & A', '1', '0', 'Q & A params:[]');
INSERT INTO `mms_operate_log` VALUES ('aefa219f2bbe44cbb3b4c7cf10d5cfd6', '1', '2017-11-22 16:45:51.000000', 'doLogOut', '1', '0', 'User log out');
INSERT INTO `mms_operate_log` VALUES ('af1a71b58c4e4019871a8dd57d405408', '1', '2017-11-22 11:27:30.000000', 'Modify role', 'cab3ffe45fa34c06a7bd7724c5809763', '1', 'Modify role params:[id:cab3ffe45fa34c06a7bd7724c5809763;roleName:测试;roleDesc:测试;menuIds:51ee577ee96442c6a253d961b66861b2,e6e19a88b7ea4950b621e24e25368b08,ed396d532ecf44a3845e6a625b819507,2f6b9ce020b14028aae6b8e5f87afad1,9797fe365f7846adb9c977225c2ec996,e502784caf0945ad9ddbf74dd1c3f59a;]');
INSERT INTO `mms_operate_log` VALUES ('af22ff28de634be486c8f93669d4c5b4', '1', '2017-11-23 14:42:14.000000', 'addTransactionLimit', '1', '1', 'addTransactionLimit params:[serviceId:459a13440f1341839e43e181c5d05d53;limitType:1;limitAmount:500;currency:1;]');
INSERT INTO `mms_operate_log` VALUES ('af37f28556884f72949d260a50a3f385', '1', '2017-11-23 11:08:22.000000', 'Role', '1', '0', 'Role params:[]');
INSERT INTO `mms_operate_log` VALUES ('b009ab919bd343f9914c5034199ddf8d', '1', '2017-11-22 09:30:37.000000', 'Operator', '1', '0', 'Operator params:[]');
INSERT INTO `mms_operate_log` VALUES ('b00ea224a78a4a0ea6a3a4500da57e26', '1', '2017-11-23 16:14:49.000000', 'systemDictDetail', '1', '0', 'systemDictDetail params:[id:1;]');
INSERT INTO `mms_operate_log` VALUES ('b01987d9188c481c92da91e2a5a59563', '1', '2017-11-22 11:31:32.000000', 'Role', '1', '0', 'Role params:[]');
INSERT INTO `mms_operate_log` VALUES ('b02bfd44077a43a5b1722ea6ed467be7', '1', '2017-11-27 14:57:25.000000', 'Device Bind', '1', '0', 'Device Bind params:[phone:1234;val:1;]');
INSERT INTO `mms_operate_log` VALUES ('b21a4904b5db44f8ab14d58b27f58ffc', '1', '2017-11-27 10:44:06.000000', 'Feedback ', '1', '0', 'Feedback  params:[refSystem:2;]');
INSERT INTO `mms_operate_log` VALUES ('b29771db7edb4b48ad4298ec77832cef', '1', '2017-11-23 16:20:26.000000', 'System Param', '1', '0', 'System Param params:[]');
INSERT INTO `mms_operate_log` VALUES ('b316682af120401aa592d85a366be33c', '1', '2017-11-27 10:59:23.000000', 'feedbackInfoDetail', '1', '0', 'feedbackInfoDetail params:[id:1;]');
INSERT INTO `mms_operate_log` VALUES ('b3e73e55f9d9483db2420052af95893b', '68a11f4137174877b4bc19ccac97e2c6', '2017-11-22 16:58:01.000000', 'doLogin', '68a11f4137174877b4bc19ccac97e2c6', '0', 'doLogin params:[userName:wuqingsong;userPassword:WUqing123;veriCode:tqkp;remFlag:1;]');
INSERT INTO `mms_operate_log` VALUES ('b553344e96b84832a7fe4e94e40f29b5', '1', '2017-11-23 14:59:21.000000', 'Trading limit', '1', '0', 'Trading limit params:[serviceId:459a13440f1341839e43e181c5d05d53;]');
INSERT INTO `mms_operate_log` VALUES ('b568d97386b543a6804011a54eddd53e', '1', '2017-11-21 16:26:21.000000', 'Notice', '1', '0', 'Notice params:[]');
INSERT INTO `mms_operate_log` VALUES ('b597e732e06f42f38fcc059debd9b6c6', '1', '2017-11-23 14:42:00.000000', 'Trading limit', '1', '0', 'Trading limit params:[serviceId:459a13440f1341839e43e181c5d05d53;]');
INSERT INTO `mms_operate_log` VALUES ('b61045715bd44ba38a1e19213cbfe15c', '1', '2017-11-23 15:00:45.000000', 'Trading limit', '1', '0', 'Trading limit params:[serviceId:5e448e982a0e41338e6099495ce63175;]');
INSERT INTO `mms_operate_log` VALUES ('b66e010c596547a9be0ba019fe4cf4c5', '1', '2017-11-23 16:16:15.000000', 'System Dict', '1', '0', 'System Dict params:[]');
INSERT INTO `mms_operate_log` VALUES ('b7939e2d8b1b466fb693774db7542db4', '1', '2017-11-23 15:43:31.000000', 'Trading limit', '1', '0', 'Trading limit params:[serviceId:5e448e982a0e41338e6099495ce63175;]');
INSERT INTO `mms_operate_log` VALUES ('b799de966692499aa1bd2afe9db7577c', '1', '2017-11-23 14:14:11.000000', 'Department', '1', '0', 'Department params:[]');
INSERT INTO `mms_operate_log` VALUES ('b7ea1cac44cf4810a1ef987661b48883', '1', '2017-11-27 15:33:58.000000', 'Device Bind', '1', '0', 'Device Bind params:[phone:1234;val:1;]');
INSERT INTO `mms_operate_log` VALUES ('b884dbc731854cd5933ddd9b91339f32', '1', '2017-11-27 10:40:46.000000', 'Feedback ', '1', '0', 'Feedback  params:[]');
INSERT INTO `mms_operate_log` VALUES ('b99080e7dfc54b99aa4913def0228b58', '1', '2017-11-22 14:30:30.000000', 'roleDetail', 'a7fa3695f0c444feaa9d843c7947c530', '0', 'roleDetail params:[id:a7fa3695f0c444feaa9d843c7947c530;]');
INSERT INTO `mms_operate_log` VALUES ('b9f7089655cb44d090353dd79dc0269f', '1', '2017-11-27 15:59:36.000000', 'Device Bind', '1', '0', 'Device Bind params:[phone:1234;val:1;]');
INSERT INTO `mms_operate_log` VALUES ('ba3d2f1103504d3083bf53934a9576e6', '1', '2017-11-23 16:42:20.000000', 'Notice', '1', '0', 'Notice params:[noticeState:1;]');
INSERT INTO `mms_operate_log` VALUES ('ba5b2b0b909d4a989ffdf8fbec8afd05', '1', '2017-11-23 16:41:16.000000', 'uploadFileSave', '1', '0', 'uploadFileSave params:[editorid:contentText;]');
INSERT INTO `mms_operate_log` VALUES ('ba7a861eaa1d46c29f028554d1c1fb0f', '1', '2017-11-23 15:43:35.000000', 'Trading limit', '1', '0', 'Trading limit params:[]');
INSERT INTO `mms_operate_log` VALUES ('baacd7ec32b3449f80b14d4103011c3f', '1', '2017-11-22 11:23:51.000000', 'Role', '1', '0', 'Role params:[]');
INSERT INTO `mms_operate_log` VALUES ('baca559028804705a6e248b625f40cb6', '1', '2017-11-22 10:31:57.000000', 'Role', '1', '0', 'Role params:[]');
INSERT INTO `mms_operate_log` VALUES ('bb6c7e0e8d954ab89d406e6a20f12bf3', '1', '2017-11-27 15:35:14.000000', 'Device Bind', '1', '0', 'Device Bind params:[phone:1234;val:1;]');
INSERT INTO `mms_operate_log` VALUES ('bc0205783bb849fe97f87ac141b5d5ac', '1', '2017-11-22 14:50:34.000000', 'roleDetail', '5d8bc58e8eaa44efa8bf20d8a33412ae', '0', 'roleDetail params:[id:5d8bc58e8eaa44efa8bf20d8a33412ae;]');
INSERT INTO `mms_operate_log` VALUES ('bc0db7656f824e57a2886c4e31713aad', '1', '2017-11-21 15:21:25.000000', 'System Dict', '1', '0', 'System Dict params:[]');
INSERT INTO `mms_operate_log` VALUES ('bc722f50ecae46d4815151b005842d05', '1', '2017-11-23 14:41:25.000000', 'systemServiceDetail', '5e448e982a0e41338e6099495ce63175', '0', 'systemServiceDetail params:[id:5e448e982a0e41338e6099495ce63175;]');
INSERT INTO `mms_operate_log` VALUES ('bcc49d6174344ed6a38a64f65cec9b1a', '1', '2017-11-23 15:28:37.000000', 'Trading limit', '1', '0', 'Trading limit params:[serviceId:5e448e982a0e41338e6099495ce63175;]');
INSERT INTO `mms_operate_log` VALUES ('bcc7128916644ea7a2a1e494309b7010', '1', '2017-11-27 11:00:58.000000', 'Q & A', '1', '0', 'Q & A params:[]');
INSERT INTO `mms_operate_log` VALUES ('bcdf155bf1b0416596f9312d09f65817', '1', '2017-11-23 16:15:24.000000', 'System Dict', '1', '0', 'System Dict params:[]');
INSERT INTO `mms_operate_log` VALUES ('bd0d7e3d12134515b2a3e2f82d1b8072', '1', '2017-11-22 11:09:48.000000', 'Role', '1', '0', 'Role params:[]');
INSERT INTO `mms_operate_log` VALUES ('bd65db3c85dd4f63a4f9fb313c4d7e3d', '1', '2017-11-22 11:03:15.000000', 'Delete role', '1', '1', 'Delete role params:[ids:0fff7c3c005c40599d80f1a05fa56deb;]');
INSERT INTO `mms_operate_log` VALUES ('bd7a03e35a53469f8325e25842bfc589', '1', '2017-11-23 15:28:35.000000', 'addTransactionLimit', '1', '1', 'addTransactionLimit params:[serviceId:5e448e982a0e41338e6099495ce63175;limitType:1;limitAmount:123;currency:1;]');
INSERT INTO `mms_operate_log` VALUES ('bd996f1d99e244139180868a4a16b39e', '1', '2017-11-21 15:22:11.000000', 'System Dict', '1', '0', 'System Dict params:[cpage:2;dictName:;]');
INSERT INTO `mms_operate_log` VALUES ('bdacf380b4f9493690b8d85f36ee00a5', '1', '2017-11-23 14:19:03.000000', 'Business', '1', '0', 'Business params:[]');
INSERT INTO `mms_operate_log` VALUES ('bdbfa90684174dc4a0b19bb0da3025f1', '1', '2017-11-27 15:19:49.000000', 'addCmsImg', '1', '1', 'addCmsImg params:[]');
INSERT INTO `mms_operate_log` VALUES ('bddd2048b77949e4b94460373a4d58b7', '1', '2017-11-21 17:13:55.000000', 'roleDetail', 'e1071edb10c44e8b81fd7aa3ea451dec', '0', 'roleDetail params:[id:e1071edb10c44e8b81fd7aa3ea451dec;]');
INSERT INTO `mms_operate_log` VALUES ('bde8408e32074fe6bb167cfa227e8a01', '1', '2017-11-23 14:42:52.000000', 'addTransactionLimit', '1', '1', 'addTransactionLimit params:[serviceId:459a13440f1341839e43e181c5d05d53;limitType:0;limitAmount:200;currency:1;]');
INSERT INTO `mms_operate_log` VALUES ('be5cd680b0ba4672a9f0ad320d3345a9', '1', '2017-11-27 14:37:13.000000', 'Q & A', '1', '0', 'Q & A params:[]');
INSERT INTO `mms_operate_log` VALUES ('be5eaf7cf3594207ac112cf4be38d028', '1', '2017-11-23 14:40:27.000000', 'Business', '1', '0', 'Business params:[]');
INSERT INTO `mms_operate_log` VALUES ('be99b0f7ad13496c869bf3ba5f70d29e', '1', '2017-11-23 14:13:16.000000', 'Add deparment', '1', '1', 'Add deparment params:[parentId:84c87bfbc93348c9a89cf43534b0beae;deptName:123;deptCode:123;deptDesc:123;deptState:1;]');
INSERT INTO `mms_operate_log` VALUES ('beb17c2386684c02b66e44e2e81c0600', '1', '2017-11-21 15:22:19.000000', 'System Dict', '1', '0', 'System Dict params:[dictName:REF_TYPE;]');
INSERT INTO `mms_operate_log` VALUES ('beded171e765441a839d6ec4d38cf413', '1', '2017-11-22 16:35:05.000000', 'userDetail', 'a25ff9b9b32c450cb925cbd5cd7bbe21', '0', 'userDetail params:[id:a25ff9b9b32c450cb925cbd5cd7bbe21;]');
INSERT INTO `mms_operate_log` VALUES ('bf02b7d616624c33be1c9091c744a897', '1', '2017-11-23 16:16:57.000000', 'System Dict', '1', '0', 'System Dict params:[]');
INSERT INTO `mms_operate_log` VALUES ('bf0b5f76e76d4c17a11ca651b5ec0fb1', '1', '2017-11-23 15:52:28.000000', 'Trading limit', '1', '0', 'Trading limit params:[serviceId:459a13440f1341839e43e181c5d05d53;]');
INSERT INTO `mms_operate_log` VALUES ('bf3e6255558f45aba5a82333c03e8558', '1', '2017-11-21 16:00:07.000000', 'Notice', '1', '0', 'Notice params:[noticeState:1;]');
INSERT INTO `mms_operate_log` VALUES ('bf549f8469ba4139919229cce56e68bc', '1', '2017-11-22 14:50:32.000000', 'Add role', '1', '1', 'Add role params:[roleName:用户管理员;roleDesc:用户管理员;menuIds:51ee577ee96442c6a253d961b66861b2,e6e19a88b7ea4950b621e24e25368b08,ed396d532ecf44a3845e6a625b819507,2f6b9ce020b14028aae6b8e5f87afad1,b0fd17d5cea04e08bfbbc9606114c3b4,9797fe365f7846adb9c977225c2ec996;]');
INSERT INTO `mms_operate_log` VALUES ('bfadbe9be6e346f1951c52dd356ece0b', 'c0f82156961e422b9111fb7cc067f03d', '2017-11-22 14:56:05.000000', 'doLogin', 'c0f82156961e422b9111fb7cc067f03d', '0', 'doLogin params:[userName:wuqingsong;userPassword:WUqing123;veriCode:c1dj;remFlag:1;]');
INSERT INTO `mms_operate_log` VALUES ('bfaf0f11b5634bc6b5d7628729bcf776', '1', '2017-11-23 16:57:53.000000', 'Feedback ', '1', '0', 'Feedback  params:[]');
INSERT INTO `mms_operate_log` VALUES ('bfb228de4102459dbb821326672b9b67', '1', '2017-11-23 16:16:32.000000', 'System Dict', '1', '0', 'System Dict params:[]');
INSERT INTO `mms_operate_log` VALUES ('c0358835740b4224ba522e3c6c191317', '1', '2017-11-23 11:09:15.000000', 'Role', '1', '0', 'Role params:[]');
INSERT INTO `mms_operate_log` VALUES ('c037b076d3b04d87991426bcd200737a', '1', '2017-11-22 16:57:39.000000', 'doLogOut', '1', '0', 'User log out');
INSERT INTO `mms_operate_log` VALUES ('c03a021ef9f64e8d9da841d929730d14', '1', '2017-11-22 14:22:07.000000', 'Modify role', 'a7fa3695f0c444feaa9d843c7947c530', '1', 'Modify role params:[id:a7fa3695f0c444feaa9d843c7947c530;roleName:测试;roleDesc:测试;menuIds:51ee577ee96442c6a253d961b66861b2,e6e19a88b7ea4950b621e24e25368b08,ed396d532ecf44a3845e6a625b819507,2f6b9ce020b14028aae6b8e5f87afad1,b0fd17d5cea04e08bfbbc9606114c3b4,9797fe365f7846adb9c977225c2ec996,e502784caf0945ad9ddbf74dd1c3f59a,c345cdf0ccb74a2298ecfd85fd8b7e98;]');
INSERT INTO `mms_operate_log` VALUES ('c059f703cca34ff99f46864577828c5f', '1', '2017-11-23 16:16:28.000000', 'systemDictDetail', '1', '0', 'systemDictDetail params:[id:1;]');
INSERT INTO `mms_operate_log` VALUES ('c0ab25c6e96348fd8a90d1205e9f53b8', '1', '2017-11-23 16:27:23.000000', 'Command Id Constrast', '1', '0', 'Command Id Constrast params:[]');
INSERT INTO `mms_operate_log` VALUES ('c1383f271e474d7eaf26bf1c02a79ad4', '1', '2017-11-23 15:35:55.000000', 'System Dict', '1', '0', 'System Dict params:[]');
INSERT INTO `mms_operate_log` VALUES ('c17589b8f8aa42edaf7624617ac99648', '1', '2017-11-27 10:16:59.000000', 'Notice', '1', '0', 'Notice params:[]');
INSERT INTO `mms_operate_log` VALUES ('c1eed71c38e34c7ca746a077f0ea417f', '1', '2017-11-27 15:15:42.000000', 'Operator', '1', '0', 'Operator params:[]');
INSERT INTO `mms_operate_log` VALUES ('c21a974c743e4af99181331b01d13ac6', '1', '2017-11-22 10:17:18.000000', 'Role', '1', '0', 'Role params:[]');
INSERT INTO `mms_operate_log` VALUES ('c224246695ae4d268f483488e6abd347', '1', '2017-11-27 14:57:08.000000', 'Device Bind', '1', '0', 'Device Bind params:[phone:12345;val:2;]');
INSERT INTO `mms_operate_log` VALUES ('c2545b1b76e44450971e614ac24ed456', '1', '2017-11-23 14:42:14.000000', 'Trading limit', '1', '0', 'Trading limit params:[serviceId:459a13440f1341839e43e181c5d05d53;]');
INSERT INTO `mms_operate_log` VALUES ('c25e472b639e4127a642cf0cc041c02d', '1', '2017-11-23 15:28:50.000000', 'Trading limit', '1', '0', 'Trading limit params:[serviceId:459a13440f1341839e43e181c5d05d53;]');
INSERT INTO `mms_operate_log` VALUES ('c25ed51afd5445218fa883e171385490', '1', '2017-11-22 10:16:26.000000', 'Role', '1', '0', 'Role params:[]');
INSERT INTO `mms_operate_log` VALUES ('c35f8c10eb8149cd9d09ce2037da0702', '1', '2017-11-23 14:18:50.000000', 'Add deparment', '1', '1', 'Add deparment params:[parentId:84c87bfbc93348c9a89cf43534b0beae;deptName:开发部下级;deptCode:123;deptDesc:开发部下级;deptState:1;]');
INSERT INTO `mms_operate_log` VALUES ('c42547603b90474f8816e48e3e25a96f', '1', '2017-11-27 14:37:07.000000', 'questionAnswerDetail', '71e8d7bf232e450aaf12f437534a99ef', '0', 'questionAnswerDetail params:[id:71e8d7bf232e450aaf12f437534a99ef;]');
INSERT INTO `mms_operate_log` VALUES ('c54d524f5133447ca7a4a67ed0d10e8b', '1', '2017-11-21 15:44:02.000000', 'Notice', '1', '0', 'Notice params:[]');
INSERT INTO `mms_operate_log` VALUES ('c55ae0b8d5f24e759ff040d71c6b0e8d', '1', '2017-11-23 16:26:11.000000', 'Command Id Constrast', '1', '0', 'Command Id Constrast params:[commandId:2;]');
INSERT INTO `mms_operate_log` VALUES ('c654aada06f84e61ad33f236bf205879', '1', '2017-11-22 10:04:28.000000', 'Add role', '1', '1', 'Add role params:[roleName:1231;roleDesc:1;menuIds:51ee577ee96442c6a253d961b66861b2,e6e19a88b7ea4950b621e24e25368b08,ed396d532ecf44a3845e6a625b819507,2f6b9ce020b14028aae6b8e5f87afad1,b0fd17d5cea04e08bfbbc9606114c3b4,9797fe365f7846adb9c977225c2ec996;]');
INSERT INTO `mms_operate_log` VALUES ('c66f3adec04944618cd24e516fd1a5b7', '1', '2017-11-27 10:16:43.000000', 'Notice', '1', '0', 'Notice params:[noticeState:3;]');
INSERT INTO `mms_operate_log` VALUES ('c6b991b7e2ad4893bade1aec11cc5134', '1', '2017-11-22 11:06:00.000000', 'Role', '1', '0', 'Role params:[]');
INSERT INTO `mms_operate_log` VALUES ('c6f2bd24d87547b4a2b6f94f2f8591f3', '1', '2017-11-22 11:10:32.000000', 'Delete role', '1', '1', 'Delete role params:[ids:0fff7c3c005c40599d80f1a05fa56deb;]');
INSERT INTO `mms_operate_log` VALUES ('c77473ad08da4d6f8092b754e73a7760', '1', '2017-11-22 09:29:51.000000', 'addCmsImg', '1', '1', 'addCmsImg params:[]');
INSERT INTO `mms_operate_log` VALUES ('c84362d28abc4b6aa6e29f95cc7ac843', '1', '2017-11-27 10:51:25.000000', 'feedbackInfoDetail', '2', '0', 'feedbackInfoDetail params:[id:2;]');
INSERT INTO `mms_operate_log` VALUES ('c8cef3e63bb847c29806a3c88f7f13e0', '1', '2017-11-27 10:52:28.000000', 'feedbackInfoDetail', '1', '0', 'feedbackInfoDetail params:[id:1;]');
INSERT INTO `mms_operate_log` VALUES ('c8d3c39830fc4d7d81c79b4c4387c140', '1', '2017-11-27 10:35:12.000000', 'Feedback ', '1', '0', 'Feedback  params:[]');
INSERT INTO `mms_operate_log` VALUES ('c8f1d481104b4cb6a4a8cef6b4594d12', 'c0f82156961e422b9111fb7cc067f03d', '2017-11-22 15:04:39.000000', 'doLogOut', 'c0f82156961e422b9111fb7cc067f03d', '0', 'User log out');
INSERT INTO `mms_operate_log` VALUES ('c96ae28834b84ee6b5bcc77b1b6dc84f', '1', '2017-11-22 17:21:30.000000', 'Add role', '1', '1', 'Add role params:[roleName:用户管理员;roleDesc:用户管理员;menuIds:51ee577ee96442c6a253d961b66861b2,e6e19a88b7ea4950b621e24e25368b08,ed396d532ecf44a3845e6a625b819507,2f6b9ce020b14028aae6b8e5f87afad1,b0fd17d5cea04e08bfbbc9606114c3b4,9797fe365f7846adb9c977225c2ec996;]');
INSERT INTO `mms_operate_log` VALUES ('c98d9c7237fe4ca7ad75541dcba669d1', '1', '2017-11-23 14:41:09.000000', 'updateSystemService', '459a13440f1341839e43e181c5d05d53', '1', 'updateSystemService params:[id:459a13440f1341839e43e181c5d05d53;serviceState:1;]');
INSERT INTO `mms_operate_log` VALUES ('ca7dc1cb856f4fb19acf48b99001bb13', '1', '2017-11-22 14:30:08.000000', 'Role', '1', '0', 'Role params:[]');
INSERT INTO `mms_operate_log` VALUES ('cad04fe834524a70b9a13dbfdb62e433', '1', '2017-11-21 15:22:14.000000', 'System Dict', '1', '0', 'System Dict params:[cpage:2;dictName:;]');
INSERT INTO `mms_operate_log` VALUES ('cafc52f25cdb474ebe47978f87405f96', '1', '2017-11-22 10:48:28.000000', 'roleDetail', '0fff7c3c005c40599d80f1a05fa56deb', '0', 'roleDetail params:[id:0fff7c3c005c40599d80f1a05fa56deb;]');
INSERT INTO `mms_operate_log` VALUES ('cb13f06bac45497db346c7d1637e6688', '1', '2017-11-22 11:31:22.000000', 'Delete role', '1', '1', 'Delete role params:[ids:392e9b1a42bf45519df66722044b8784;]');
INSERT INTO `mms_operate_log` VALUES ('cb45de78ac6a46fb805aab4fda1001e0', '1', '2017-11-23 16:42:02.000000', 'Add notice', '1', '1', 'Add notice params:[title:2;contentText:<p><img src=\"http://localhost:8080/mGateCMS/upload/2017-11-23/a1f20d042d6646908d63e67b09892405.jpg\" _src=\"http://localhost:8080/mGateCMS/upload/2017-11-23/a1f20d042d6646908d63e67b09892405.jpg\"/>4444</p>;startDate:2017-11-23 16:41:58;noticeState:3;]');
INSERT INTO `mms_operate_log` VALUES ('cb9560195708467ebd410844ce5594d5', '1', '2017-11-23 15:27:38.000000', 'Trading limit', '1', '0', 'Trading limit params:[serviceId:5e448e982a0e41338e6099495ce63175;]');
INSERT INTO `mms_operate_log` VALUES ('cbcde2d3cd2f474cbd574be3953b42fd', '1', '2017-11-23 14:43:50.000000', 'addTransactionLimit', '1', '1', 'addTransactionLimit params:[serviceId:5e448e982a0e41338e6099495ce63175;limitType:1;limitAmount:500;currency:1;]');
INSERT INTO `mms_operate_log` VALUES ('cc2ac59786ce47bfb2a3158116a9caa3', '1', '2017-11-23 14:41:14.000000', 'systemServiceDetail', '459a13440f1341839e43e181c5d05d53', '0', 'systemServiceDetail params:[id:459a13440f1341839e43e181c5d05d53;]');
INSERT INTO `mms_operate_log` VALUES ('cc667cfd2924443cbab2c83eeb1af62e', '1', '2017-11-23 16:26:33.000000', 'Code Constrast', '1', '0', 'Code Constrast params:[]');
INSERT INTO `mms_operate_log` VALUES ('cc76c91fe0cb4d9baab3f2e391fd326e', '1', '2017-11-23 16:57:47.000000', 'appVersionDetail', '1085b424f6fd4f428f39e849246d3695', '0', 'appVersionDetail params:[id:1085b424f6fd4f428f39e849246d3695;]');
INSERT INTO `mms_operate_log` VALUES ('cd049492cb2a407f9ed30e6cbd5e0782', '1', '2017-11-21 16:27:07.000000', 'Operator', '1', '0', 'Operator params:[]');
INSERT INTO `mms_operate_log` VALUES ('cd2b0e7dc82f49609d9ffc02f5e81109', '1', '2017-11-27 09:48:26.000000', 'doLogin', '1', '0', 'doLogin params:[userName:admin;userPassword:222222;veriCode:tskp;remFlag:1;]');
INSERT INTO `mms_operate_log` VALUES ('cd5e64fedd5d42c0942cbf3bc0e56271', '1', '2017-11-23 15:13:39.000000', 'addTransactionLimit', '1', '1', 'addTransactionLimit params:[serviceId:5e448e982a0e41338e6099495ce63175;limitType:0;limitAmount:600;currency:1;]');
INSERT INTO `mms_operate_log` VALUES ('cd66f4f1f5f24c268febc3bc34e83624', '1', '2017-11-22 14:50:36.000000', 'Role', '1', '0', 'Role params:[]');
INSERT INTO `mms_operate_log` VALUES ('cdc4dcbec9374052a6b84f3420f20cfb', '1', '2017-11-23 14:59:38.000000', 'Trading limit', '1', '0', 'Trading limit params:[serviceId:459a13440f1341839e43e181c5d05d53;]');
INSERT INTO `mms_operate_log` VALUES ('cdcaefef826040a1a442c703bf25fd98', '1', '2017-11-23 14:12:53.000000', 'Department', '1', '0', 'Department params:[]');
INSERT INTO `mms_operate_log` VALUES ('ce358e59f61b41c48fa4b0e36c0e440f', '1', '2017-11-27 10:42:28.000000', 'feedbackInfoDetail', '1', '0', 'feedbackInfoDetail params:[id:1;]');
INSERT INTO `mms_operate_log` VALUES ('cec0316f3dab477d8ed81d6be71502a4', '1', '2017-11-22 17:21:42.000000', 'Add role', '1', '1', 'Add role params:[roleName:角色管理员;roleDesc:角色管理员;menuIds:51ee577ee96442c6a253d961b66861b2,e6e19a88b7ea4950b621e24e25368b08,e502784caf0945ad9ddbf74dd1c3f59a,c345cdf0ccb74a2298ecfd85fd8b7e98,50fc3219bc594b4aa74bce75e9bbd017,7b8c6c1b848942fe85505b9d693616e2;]');
INSERT INTO `mms_operate_log` VALUES ('cff1d1ec2a104d94a6894bc34b5b66b3', '1', '2017-11-23 15:36:04.000000', 'System Dict', '1', '0', 'System Dict params:[dictName:;]');
INSERT INTO `mms_operate_log` VALUES ('d04f6e3368324099bb57263a39d7538f', '1', '2017-11-22 11:28:59.000000', 'Role', '1', '0', 'Role params:[]');
INSERT INTO `mms_operate_log` VALUES ('d0798f57ef7745a1b037d191245f8d3f', '1', '2017-11-23 16:20:02.000000', 'System Param', '1', '0', 'System Param params:[]');
INSERT INTO `mms_operate_log` VALUES ('d0f55e74411f449596149fbbade02520', '1', '2017-11-27 10:38:59.000000', 'Feedback ', '1', '0', 'Feedback  params:[refSystem:2;]');
INSERT INTO `mms_operate_log` VALUES ('d182b2bb78a341a492e0ad28fd32b215', '1', '2017-11-23 16:57:44.000000', 'Add app version', '1', '1', 'Add app version params:[appName:测试;versionNo:12345;downloadUrl:www.baidu.com;appDesc:测试;upgradeIdentifier:1;upgradeType:1;upgradeInfo:测试;publishDate:2017-11-23 16:57:40;]');
INSERT INTO `mms_operate_log` VALUES ('d188220ab3bf4441adfc7eb0793ebdf9', '1', '2017-11-22 10:53:50.000000', 'Role', '1', '0', 'Role params:[]');
INSERT INTO `mms_operate_log` VALUES ('d1cdc2d05bbf458ba0f97700a3602410', '1', '2017-11-22 10:33:11.000000', 'roleDetail', '0fff7c3c005c40599d80f1a05fa56deb', '0', 'roleDetail params:[id:0fff7c3c005c40599d80f1a05fa56deb;]');
INSERT INTO `mms_operate_log` VALUES ('d208b308e23943feb3268ff45122b767', '1', '2017-11-27 10:25:17.000000', 'Notice', '1', '0', 'Notice params:[]');
INSERT INTO `mms_operate_log` VALUES ('d238f72c12914091a971e301e8e665a3', '1', '2017-11-22 11:25:12.000000', 'roleDetail', 'cab3ffe45fa34c06a7bd7724c5809763', '0', 'roleDetail params:[id:cab3ffe45fa34c06a7bd7724c5809763;]');
INSERT INTO `mms_operate_log` VALUES ('d23c7fa68a67456f94f0b528a85de3fe', '9fd935a5665b40aa9bd2c11b4590c67e', '2017-11-22 15:06:39.000000', 'doLogin', '9fd935a5665b40aa9bd2c11b4590c67e', '0', 'doLogin params:[userName:AAbb11;userPassword:AAbb11;veriCode:aewp;remFlag:1;]');
INSERT INTO `mms_operate_log` VALUES ('d259b86427bb4d7fa06a7c59c45ab265', '1', '2017-11-21 16:08:18.000000', 'uploadFileSave', '1', '0', 'uploadFileSave params:[editorid:contentText;]');
INSERT INTO `mms_operate_log` VALUES ('d2802ca2bfe246c59e4686f8926dee2e', '1', '2017-11-23 14:14:11.000000', 'Add deparment', '1', '1', 'Add deparment params:[parentId:f64389fd7e1346bfbdfc9a5c91ce81cb;deptName:12;deptCode:12;deptDesc:12;deptState:1;]');
INSERT INTO `mms_operate_log` VALUES ('d2ae060578584fcda99d859f5521cff6', '1', '2017-11-23 17:01:50.000000', 'Feedback ', '1', '0', 'Feedback  params:[]');
INSERT INTO `mms_operate_log` VALUES ('d302d608aa294f5cb23b0f6eb94b93b0', '1', '2017-11-22 10:53:40.000000', 'doLogin', '1', '0', 'doLogin params:[userName:admin;userPassword:222222;veriCode:q91f;remFlag:1;]');
INSERT INTO `mms_operate_log` VALUES ('d39a802e3aec46ad8202d67e2736a651', '1', '2017-11-21 15:21:44.000000', 'System Dict', '1', '0', 'System Dict params:[cpage:2;dictName:;]');
INSERT INTO `mms_operate_log` VALUES ('d442f42fd3844bee8be7b8b648ecd9f4', '1', '2017-11-22 10:17:19.000000', 'Role', '1', '0', 'Role params:[]');
INSERT INTO `mms_operate_log` VALUES ('d49aeb0750d641599034160246e00b3a', '1', '2017-11-27 10:40:57.000000', 'Feedback ', '1', '0', 'Feedback  params:[]');
INSERT INTO `mms_operate_log` VALUES ('d4b7d30616b041a881a0e2ad6aaf38d4', '1', '2017-11-22 11:24:28.000000', 'Delete role', '1', '1', 'Delete role params:[ids:ef9d9c5c993f4c1ba07e92de7f0806d9;]');
INSERT INTO `mms_operate_log` VALUES ('d4fb9ed50d904a98bfd38aa3d99fcd9f', '1', '2017-11-23 16:38:26.000000', 'Notice', '1', '0', 'Notice params:[noticeState:2;]');
INSERT INTO `mms_operate_log` VALUES ('d54085f3aa0e4480ac9886a49dcb0ea4', '1', '2017-11-23 16:57:49.000000', 'APP Version', '1', '0', 'APP Version params:[]');
INSERT INTO `mms_operate_log` VALUES ('d5487ef046094455945e62286dd747a2', '1', '2017-11-23 14:41:15.000000', 'systemServiceDetail', '5e448e982a0e41338e6099495ce63175', '0', 'systemServiceDetail params:[id:5e448e982a0e41338e6099495ce63175;]');
INSERT INTO `mms_operate_log` VALUES ('d6059a0420284045be775a73b5ff601d', '1', '2017-11-23 15:52:25.000000', 'Trading limit', '1', '0', 'Trading limit params:[serviceId:5e448e982a0e41338e6099495ce63175;]');
INSERT INTO `mms_operate_log` VALUES ('d68718bfd23042aa9ac6a85e80bbc44e', '1', '2017-11-23 15:00:44.000000', 'addTransactionLimit', '1', '1', 'addTransactionLimit params:[serviceId:5e448e982a0e41338e6099495ce63175;limitType:0;limitAmount:123;currency:1;]');
INSERT INTO `mms_operate_log` VALUES ('d6f5a836d1154f91ba0bc188e35c65ff', '1', '2017-11-22 14:51:54.000000', 'Add operator', '1', '1', 'Add operator params:[userName:wuqingsong;userPassword:WUqing123;realName:武青松;userPhoto:http://localhost:8080/mGateCMS/static/imgs/upload/20171122/1511333454531_57.jpg;userNo:666666;userPhone:15036939659;userEmail:wu_qing_song2016@163.com;certType:1;userGender:1;certId:123456789098764321;deptId:84c87bfbc93348c9a89cf43534b0beae;roleIds:5d8bc58e8eaa44efa8bf20d8a33412ae,a7fa3695f0c444feaa9d843c7947c530;userRemark:测绘师;]');
INSERT INTO `mms_operate_log` VALUES ('d7ac804ca47f4d1db829199d8fcf1932', '1', '2017-11-27 10:51:38.000000', 'Feedback ', '1', '0', 'Feedback  params:[refSystem:1;]');
INSERT INTO `mms_operate_log` VALUES ('d891f64f00a94ae2b1e551d340660d2e', '1', '2017-11-23 14:18:52.000000', 'departmentDetail', '84c87bfbc93348c9a89cf43534b0beae', '0', 'departmentDetail params:[id:84c87bfbc93348c9a89cf43534b0beae;]');
INSERT INTO `mms_operate_log` VALUES ('d8a2956e9e244c40925940a2348dd236', '1', '2017-11-23 16:20:37.000000', 'System Param', '1', '0', 'System Param params:[]');
INSERT INTO `mms_operate_log` VALUES ('d8ec50dd23df40e892f4ef3fa322539d', '1', '2017-11-21 16:25:36.000000', 'noticeDetail', '1', '0', 'noticeDetail params:[id:1;]');
INSERT INTO `mms_operate_log` VALUES ('d8f1a78e8d024d81a23fa088642f60dc', '1', '2017-11-27 15:18:22.000000', 'Operator', '1', '0', 'Operator params:[]');
INSERT INTO `mms_operate_log` VALUES ('d95a66f75a224b8381a4d841f257edaf', '1', '2017-11-23 14:47:01.000000', 'Trading limit', '1', '0', 'Trading limit params:[serviceId:459a13440f1341839e43e181c5d05d53;]');
INSERT INTO `mms_operate_log` VALUES ('d971bdfbfc414f77be237abea48df5e1', '1', '2017-11-22 14:16:25.000000', 'Role', '1', '0', 'Role params:[]');
INSERT INTO `mms_operate_log` VALUES ('d9ed1f9c7408420aa3eb138c36c4638d', '1', '2017-11-22 10:58:54.000000', 'Delete role', '1', '1', 'Delete role params:[ids:0fff7c3c005c40599d80f1a05fa56deb;]');
INSERT INTO `mms_operate_log` VALUES ('d9fee9a665644de38bfb81ed5fa9d142', '1', '2017-11-22 11:08:56.000000', 'Role', '1', '0', 'Role params:[]');
INSERT INTO `mms_operate_log` VALUES ('da28a838a818402690d9c2c6daee6a76', '1', '2017-11-23 14:22:17.000000', 'Business', '1', '0', 'Business params:[]');
INSERT INTO `mms_operate_log` VALUES ('da3e50e84c09484fa024b24fa3c7e4ea', '1', '2017-11-23 16:26:00.000000', 'Command Id Constrast', '1', '0', 'Command Id Constrast params:[]');
INSERT INTO `mms_operate_log` VALUES ('da4ba2f59b5f47f0bad7ae379ac67f53', '1', '2017-11-23 15:28:08.000000', 'updateTransactionLimit', '479371e20bad4293b4c2aa0e6751c714', '1', 'updateTransactionLimit params:[id:479371e20bad4293b4c2aa0e6751c714;limitAmount:700;]');
INSERT INTO `mms_operate_log` VALUES ('da7897dd02d54ec08177661ca1e1db15', '1', '2017-11-21 15:22:39.000000', 'systemDictDetail', '1', '0', 'systemDictDetail params:[id:1;]');
INSERT INTO `mms_operate_log` VALUES ('db6fd371810a44339d32e717a478bb07', '1', '2017-11-21 15:26:36.000000', 'System Dict', '1', '0', 'System Dict params:[]');
INSERT INTO `mms_operate_log` VALUES ('dba97d4c2c4e4c98beb26af826edd7b1', '1', '2017-11-23 15:27:59.000000', 'Trading limit', '1', '0', 'Trading limit params:[serviceId:5e448e982a0e41338e6099495ce63175;]');
INSERT INTO `mms_operate_log` VALUES ('dbbb90362b884d498cdc1afcd9944164', '1', '2017-11-27 15:09:27.000000', 'Device Bind', '1', '0', 'Device Bind params:[phone:1234;val:1;]');
INSERT INTO `mms_operate_log` VALUES ('dbe2cca8e4df4907a96c27dd2cc3920f', '9fd935a5665b40aa9bd2c11b4590c67e', '2017-11-22 15:17:27.000000', 'doLogOut', '9fd935a5665b40aa9bd2c11b4590c67e', '0', 'User log out');
INSERT INTO `mms_operate_log` VALUES ('dbf1091187a349d9b1022f7986f18ccb', '1', '2017-11-21 15:22:18.000000', 'systemDictDetail', '2ed3861b507e42c296cdd90a165ab587', '0', 'systemDictDetail params:[id:2ed3861b507e42c296cdd90a165ab587;]');
INSERT INTO `mms_operate_log` VALUES ('dc6d22a93b3e4a03b1fac9072aaed2a9', '1', '2017-11-22 15:04:57.000000', 'Role', '1', '0', 'Role params:[]');
INSERT INTO `mms_operate_log` VALUES ('dc96b4401e4941f2bd907ea8b134ddd6', '1', '2017-11-21 15:23:03.000000', 'Modify dict', '1', '1', 'Modify dict params:[id:1;dictKey:1;dictValue:0;dictName:女;dictSeq:1;dictDesc:女;]');
INSERT INTO `mms_operate_log` VALUES ('dcac673f76e44e7483c2d4573d895a9f', '1', '2017-11-23 15:27:04.000000', 'addTransactionLimit', '1', '1', 'addTransactionLimit params:[serviceId:5e448e982a0e41338e6099495ce63175;limitType:1;limitAmount:123;currency:1;]');
INSERT INTO `mms_operate_log` VALUES ('dcb714946e6c482f8b0d9b8dad40cbfc', '1', '2017-11-22 11:03:35.000000', 'Role', '1', '0', 'Role params:[]');
INSERT INTO `mms_operate_log` VALUES ('dcbf66e5610f41d0ba1a1db50507ffc9', '1', '2017-11-27 14:44:05.000000', 'Device Bind', '1', '0', 'Device Bind params:[phone:1234;val:1;]');
INSERT INTO `mms_operate_log` VALUES ('dcbf934c0e9a4e7482b502f410c6a748', '1', '2017-11-24 15:36:03.000000', 'doLogin', '1', '0', 'doLogin params:[userName:admin;userPassword:222222;veriCode:xeaf;remFlag:1;]');
INSERT INTO `mms_operate_log` VALUES ('dcd4db59a020433b8f74f4bf75d9cb4c', '1', '2017-11-21 16:03:41.000000', 'Add notice', '1', '1', 'Add notice params:[title:测试;contentText:<p>测试时间2017-11-21<img src=\"http://localhost:8080/mGateCMS/upload/2017-11-21/c4a1bcc46d6c475fb52a3036f1a0669d.jpg\" _src=\"http://localhost:8080/mGateCMS/upload/2017-11-21/c4a1bcc46d6c475fb52a3036f1a0669d.jpg\"/></p>;startDate:2017-11-22 16:03:14;noticeState:2;]');
INSERT INTO `mms_operate_log` VALUES ('dd16a7f712c34f94915f00f4af115f64', '1', '2017-11-22 16:04:27.000000', 'doLogin', '1', '0', 'doLogin params:[userName:admin;userPassword:222222;veriCode:3tpg;remFlag:1;]');
INSERT INTO `mms_operate_log` VALUES ('dd209a81dd834f44ac146249910ad24e', '1', '2017-11-27 15:40:16.000000', 'Device Bind', '1', '0', 'Device Bind params:[phone:1234;val:1;]');
INSERT INTO `mms_operate_log` VALUES ('dd44a741507540abbdf0bd5d17e0ac96', '1', '2017-11-23 14:12:52.000000', 'departmentDetail', '84c87bfbc93348c9a89cf43534b0beae', '0', 'departmentDetail params:[id:84c87bfbc93348c9a89cf43534b0beae;]');
INSERT INTO `mms_operate_log` VALUES ('de157131b0894848866bdbaa9cf6c7a6', '8bf6c9ae369b4fd0961843feb42150b4', '2017-11-23 08:52:19.000000', 'roleDetail', '7b3da3149a7542dc88126cb3ff83c0d5', '0', 'roleDetail params:[id:7b3da3149a7542dc88126cb3ff83c0d5;]');
INSERT INTO `mms_operate_log` VALUES ('de64e9fb0aa84bd697af112a91c0df37', '1', '2017-11-23 14:41:14.000000', 'systemServiceDetail', '459a13440f1341839e43e181c5d05d53', '0', 'systemServiceDetail params:[id:459a13440f1341839e43e181c5d05d53;]');
INSERT INTO `mms_operate_log` VALUES ('de687be776764539a094ac011a44bc4f', '1', '2017-11-27 10:42:13.000000', 'Feedback ', '1', '0', 'Feedback  params:[refSystem:1;]');
INSERT INTO `mms_operate_log` VALUES ('de782b6335ef467d82e7b6af13b824fe', '1', '2017-11-21 15:23:04.000000', 'System Dict', '1', '0', 'System Dict params:[]');
INSERT INTO `mms_operate_log` VALUES ('de9962d98f16445c93475f1048b5c4a0', '1', '2017-11-23 15:52:22.000000', 'Trading limit', '1', '0', 'Trading limit params:[serviceId:459a13440f1341839e43e181c5d05d53;]');
INSERT INTO `mms_operate_log` VALUES ('dee735ff01354b3292bc28f4f0c1567f', '1', '2017-11-22 16:36:46.000000', 'doLogOut', '1', '0', 'User log out');
INSERT INTO `mms_operate_log` VALUES ('df06c7ac3e80421687f8121243b837e7', '1', '2017-11-21 17:13:50.000000', 'Add role', '1', '1', 'Add role params:[roleName:管理员;roleDesc:管理员;]');
INSERT INTO `mms_operate_log` VALUES ('df08b1ad8d62458d9161a7306a228583', '1', '2017-11-23 16:19:45.000000', 'System Param', '1', '0', 'System Param params:[]');
INSERT INTO `mms_operate_log` VALUES ('df36029aed474f508ffb1ef9a6667eab', '1', '2017-11-23 14:29:18.000000', 'Business', '1', '0', 'Business params:[]');
INSERT INTO `mms_operate_log` VALUES ('df7ae480c1b7430aa1be19cd1266ca6a', '1', '2017-11-27 15:18:23.000000', 'userDetail', '8bf6c9ae369b4fd0961843feb42150b4', '0', 'userDetail params:[id:8bf6c9ae369b4fd0961843feb42150b4;]');
INSERT INTO `mms_operate_log` VALUES ('dfdfc163def94053be0dffe6a916e78e', '1', '2017-11-27 15:15:40.000000', 'userDetail', '8bf6c9ae369b4fd0961843feb42150b4', '0', 'userDetail params:[id:8bf6c9ae369b4fd0961843feb42150b4;]');
INSERT INTO `mms_operate_log` VALUES ('e02d3a1bceb54bd9adab41d7cf029f45', '1', '2017-11-27 10:41:28.000000', 'Feedback ', '1', '0', 'Feedback  params:[refSystem:2;]');
INSERT INTO `mms_operate_log` VALUES ('e03de715a9424167b2cf48d7c35e14ff', '1', '2017-11-23 11:09:13.000000', 'Operator', '1', '0', 'Operator params:[]');
INSERT INTO `mms_operate_log` VALUES ('e12fcd0c1d2a495f893b24adf6c1a55f', '1', '2017-11-24 15:50:10.000000', 'userDetail', '8bf6c9ae369b4fd0961843feb42150b4', '0', 'userDetail params:[id:8bf6c9ae369b4fd0961843feb42150b4;]');
INSERT INTO `mms_operate_log` VALUES ('e193e3e5ba734a99852d561330ed961a', '1', '2017-11-27 10:16:56.000000', 'Notice', '1', '0', 'Notice params:[noticeState:1;]');
INSERT INTO `mms_operate_log` VALUES ('e1a21aebdfec45d2b88148d957998188', '1', '2017-11-23 16:20:14.000000', 'System Param', '1', '0', 'System Param params:[]');
INSERT INTO `mms_operate_log` VALUES ('e227f0c68cd145b4aa5cd3a3cbf0aa7a', '1', '2017-11-22 14:14:28.000000', 'Role', '1', '0', 'Role params:[]');
INSERT INTO `mms_operate_log` VALUES ('e240cd291eee470593ee13e8fb17ac1a', '1', '2017-11-23 16:39:02.000000', 'uploadFileSave', '1', '0', 'uploadFileSave params:[editorid:contentText;]');
INSERT INTO `mms_operate_log` VALUES ('e279f0555f9e43789e8cde985c65b603', '1', '2017-11-27 10:52:12.000000', 'Feedback ', '1', '0', 'Feedback  params:[refSystem:1;]');
INSERT INTO `mms_operate_log` VALUES ('e2dd397e96fd46bfadbd8454f6de6963', '1', '2017-11-23 15:28:25.000000', 'Trading limit', '1', '0', 'Trading limit params:[serviceId:5e448e982a0e41338e6099495ce63175;]');
INSERT INTO `mms_operate_log` VALUES ('e30d4e346d854ab78ec97c4beea74984', '1', '2017-11-23 11:09:09.000000', 'Operator', '1', '0', 'Operator params:[]');
INSERT INTO `mms_operate_log` VALUES ('e363967d942e4556900a7017fa417de9', '1', '2017-11-27 15:18:17.000000', 'Operator', '1', '0', 'Operator params:[]');
INSERT INTO `mms_operate_log` VALUES ('e370864634de4c68a001dd21a2f97cd2', '1', '2017-11-27 14:43:24.000000', 'Service Agreement', '1', '0', 'Service Agreement params:[]');
INSERT INTO `mms_operate_log` VALUES ('e37df921be8a44fc984c5f11263810a7', '1', '2017-11-22 11:31:18.000000', 'Role', '1', '0', 'Role params:[]');
INSERT INTO `mms_operate_log` VALUES ('e3fb154e556347ffb2a79a7894921274', '1', '2017-11-22 11:24:29.000000', 'Role', '1', '0', 'Role params:[]');
INSERT INTO `mms_operate_log` VALUES ('e449714be0ca4467b1bb8074b5a4d319', '1', '2017-11-22 11:24:43.000000', 'Add role', '1', '1', 'Add role params:[roleName:测试;roleDesc:测试;menuIds:51ee577ee96442c6a253d961b66861b2,e6e19a88b7ea4950b621e24e25368b08,ed396d532ecf44a3845e6a625b819507,2f6b9ce020b14028aae6b8e5f87afad1,b0fd17d5cea04e08bfbbc9606114c3b4,9797fe365f7846adb9c977225c2ec996;]');
INSERT INTO `mms_operate_log` VALUES ('e5a1aec5cfac4ddda65bcd6d53a998ce', '1', '2017-11-23 15:24:38.000000', 'addTransactionLimit', '1', '1', 'addTransactionLimit params:[serviceId:5e448e982a0e41338e6099495ce63175;limitType:1;limitAmount:123;currency:1;]');
INSERT INTO `mms_operate_log` VALUES ('e647dd7c0373464e834166f5b4a7b409', '1', '2017-11-27 10:44:18.000000', 'feedbackInfoDetail', '2', '0', 'feedbackInfoDetail params:[id:2;]');
INSERT INTO `mms_operate_log` VALUES ('e69f503527594f21bd45990be9a74ccc', '1', '2017-11-27 10:41:19.000000', 'Feedback ', '1', '0', 'Feedback  params:[]');
INSERT INTO `mms_operate_log` VALUES ('e70ed7bcdc494d919054458e6c9a0b19', '1', '2017-11-22 15:05:34.000000', 'Operator', '1', '0', 'Operator params:[]');
INSERT INTO `mms_operate_log` VALUES ('e744249cab8f4799a58d66918ae80bfd', '1', '2017-11-22 10:17:43.000000', 'Role', '1', '0', 'Role params:[]');
INSERT INTO `mms_operate_log` VALUES ('e77ccc12e41c499ca4fa26fb845ee87a', '1', '2017-11-22 10:16:26.000000', 'Add role', '1', '1', 'Add role params:[roleName:1;roleDesc:1;menuIds:51ee577ee96442c6a253d961b66861b2;]');
INSERT INTO `mms_operate_log` VALUES ('e7b9630b40ce4a6c8471ff127979f93a', '1', '2017-11-22 16:04:36.000000', 'doLogOut', '1', '0', 'User log out');
INSERT INTO `mms_operate_log` VALUES ('e7e6fed97e04404f9211dbd0fcea26ab', '1', '2017-11-23 14:33:56.000000', 'Business', '1', '0', 'Business params:[]');
INSERT INTO `mms_operate_log` VALUES ('e8308da2ea844c13939c098f12c031f8', '1', '2017-11-22 10:01:36.000000', 'Add role', '1', '1', 'Add role params:[roleName:1231;roleDesc:1;menuIds:51ee577ee96442c6a253d961b66861b2,e6e19a88b7ea4950b621e24e25368b08,ed396d532ecf44a3845e6a625b819507,2f6b9ce020b14028aae6b8e5f87afad1,b0fd17d5cea04e08bfbbc9606114c3b4,9797fe365f7846adb9c977225c2ec996;]');
INSERT INTO `mms_operate_log` VALUES ('e86053aef24d4e13a406fba94dcaf5a6', '8bf6c9ae369b4fd0961843feb42150b4', '2017-11-23 08:35:26.000000', 'doLogin', '8bf6c9ae369b4fd0961843feb42150b4', '0', 'doLogin params:[userName:wuqingsong;userPassword:WUqing123;veriCode:arvt;remFlag:1;]');
INSERT INTO `mms_operate_log` VALUES ('e877c8cf39124ac79cfaf9f5f08448fb', '1', '2017-11-27 10:52:29.000000', 'feedbackInfoDetail', '1', '0', 'feedbackInfoDetail params:[id:1;]');
INSERT INTO `mms_operate_log` VALUES ('e888e304c1074f84846064f9b5bfdc80', '1', '2017-11-21 17:15:10.000000', 'roleDetail', 'e1071edb10c44e8b81fd7aa3ea451dec', '0', 'roleDetail params:[id:e1071edb10c44e8b81fd7aa3ea451dec;]');
INSERT INTO `mms_operate_log` VALUES ('e8a2c8baeb33457cbb107dcf9def9f48', '1', '2017-11-23 15:12:22.000000', 'addTransactionLimit', '1', '1', 'addTransactionLimit params:[serviceId:5e448e982a0e41338e6099495ce63175;limitType:0;limitAmount:600;currency:1;]');
INSERT INTO `mms_operate_log` VALUES ('e8c3c35c2c5f4ff0a7c5a2b343c27cc2', '1', '2017-11-27 10:16:44.000000', 'Notice', '1', '0', 'Notice params:[noticeState:1;]');
INSERT INTO `mms_operate_log` VALUES ('e9040a85073348c481e08a9acd25c269', '1', '2017-11-22 15:06:01.000000', 'addCmsImg', '1', '1', 'addCmsImg params:[]');
INSERT INTO `mms_operate_log` VALUES ('e92aa2cb2d614d42b3abedbf453beadb', '1', '2017-11-27 14:43:42.000000', 'uploadFileSave', '1', '0', 'uploadFileSave params:[editorid:contentUrl;]');
INSERT INTO `mms_operate_log` VALUES ('e96d68bcabce47c6998bce73f31e159c', '1', '2017-11-27 10:51:16.000000', 'Feedback ', '1', '0', 'Feedback  params:[refSystem:1;]');
INSERT INTO `mms_operate_log` VALUES ('e975b2c86d3e48c4b52cef6eecff110c', '1', '2017-11-23 14:03:25.000000', 'Operator', '1', '0', 'Operator params:[]');
INSERT INTO `mms_operate_log` VALUES ('e976bc9200b54bf58b98817c13142bc0', '1', '2017-11-22 14:16:39.000000', 'Modify role', 'a7fa3695f0c444feaa9d843c7947c530', '1', 'Modify role params:[id:a7fa3695f0c444feaa9d843c7947c530;roleName:测试;roleDesc:测试;menuIds:51ee577ee96442c6a253d961b66861b2,e6e19a88b7ea4950b621e24e25368b08,ed396d532ecf44a3845e6a625b819507,2f6b9ce020b14028aae6b8e5f87afad1,b0fd17d5cea04e08bfbbc9606114c3b4,9797fe365f7846adb9c977225c2ec996,e502784caf0945ad9ddbf74dd1c3f59a,c345cdf0ccb74a2298ecfd85fd8b7e98;]');
INSERT INTO `mms_operate_log` VALUES ('ea84ac057dfc45fe9e37486620d4e14c', '1', '2017-11-27 15:10:13.000000', 'Device Bind', '1', '0', 'Device Bind params:[phone:1234;val:1;]');
INSERT INTO `mms_operate_log` VALUES ('eb399c575c9143918a08d8d5cea04443', '1', '2017-11-22 16:07:49.000000', 'Operator', '1', '0', 'Operator params:[]');
INSERT INTO `mms_operate_log` VALUES ('eb54d1ac21304dfe9ef3f9581fa42d2c', '1', '2017-11-22 14:30:22.000000', 'doLogin', '1', '0', 'doLogin params:[userName:admin;userPassword:222222;veriCode:wr5p;remFlag:1;]');
INSERT INTO `mms_operate_log` VALUES ('eb88198c89234a869ee9d09bf532ced3', '1', '2017-11-23 08:52:40.000000', 'Department', '1', '0', 'Department params:[]');
INSERT INTO `mms_operate_log` VALUES ('eba1a02d9a0d4bf8bc0aa0952d68f96e', '1', '2017-11-27 15:21:52.000000', 'userDetail', '8bf6c9ae369b4fd0961843feb42150b4', '0', 'userDetail params:[id:8bf6c9ae369b4fd0961843feb42150b4;]');
INSERT INTO `mms_operate_log` VALUES ('ebd991405d8c41bbbedc7e5300d1449c', '1', '2017-11-21 16:00:08.000000', 'Notice', '1', '0', 'Notice params:[noticeState:3;]');
INSERT INTO `mms_operate_log` VALUES ('eca09909377c4133a1219df07e42d10e', '1', '2017-11-23 16:20:52.000000', 'Code Constrast', '1', '0', 'Code Constrast params:[]');
INSERT INTO `mms_operate_log` VALUES ('ecbc6c06b3de48ab973c0e94c5c9de2d', '1', '2017-11-22 10:56:31.000000', 'Role', '1', '0', 'Role params:[]');
INSERT INTO `mms_operate_log` VALUES ('ece9cfe30ddd41a2a88a77a14d681975', '1', '2017-11-23 14:43:30.000000', 'Trading limit', '1', '0', 'Trading limit params:[serviceId:459a13440f1341839e43e181c5d05d53;]');
INSERT INTO `mms_operate_log` VALUES ('ed4f412d2f3b40f388303a006710ce0e', '8bf6c9ae369b4fd0961843feb42150b4', '2017-11-22 17:48:12.000000', 'Role', '8bf6c9ae369b4fd0961843feb42150b4', '0', 'Role params:[]');
INSERT INTO `mms_operate_log` VALUES ('ed8b7f5437ad481e90cba8677e0be7e3', '1', '2017-11-22 15:05:06.000000', 'Role', '1', '0', 'Role params:[]');
INSERT INTO `mms_operate_log` VALUES ('ee56b4687e3842b2b22c1f938c5ff5cf', '1', '2017-11-27 10:37:54.000000', 'Feedback ', '1', '0', 'Feedback  params:[refSystem:2;]');
INSERT INTO `mms_operate_log` VALUES ('eea1f4e83c5b4152a8affa5113093662', '1', '2017-11-22 15:05:10.000000', 'Delete role', '1', '1', 'Delete role params:[ids:a7fa3695f0c444feaa9d843c7947c530;]');
INSERT INTO `mms_operate_log` VALUES ('eef8f8a1cd1b4bddbc3de8a0a0404315', '1', '2017-11-22 14:55:22.000000', 'Add operator', '1', '1', 'Add operator params:[userName:wuqingsong;userPassword:WUqing123;realName:武青松;userPhoto:http://localhost:8080/mGateCMS/static/imgs/upload/20171122/1511333454531_57.jpg;userNo:666666;userPhone:15036939659;userEmail:wu_qing_song2016@163.com;certType:1;userGender:1;certId:123456789098764321;deptId:84c87bfbc93348c9a89cf43534b0beae;roleIds:5d8bc58e8eaa44efa8bf20d8a33412ae,a7fa3695f0c444feaa9d843c7947c530;userRemark:测绘师;]');
INSERT INTO `mms_operate_log` VALUES ('ef112e886386417cb4bda6e9db044d25', '1', '2017-11-27 10:16:56.000000', 'Notice', '1', '0', 'Notice params:[noticeState:3;]');
INSERT INTO `mms_operate_log` VALUES ('ef1bb11bbe724f8296b743fae03d1471', '1', '2017-11-23 16:16:03.000000', 'systemDictDetail', '1', '0', 'systemDictDetail params:[id:1;]');
INSERT INTO `mms_operate_log` VALUES ('ef8749d0789b48818dd1067cdc85bdce', '1', '2017-11-23 15:26:12.000000', 'Trading limit', '1', '0', 'Trading limit params:[serviceId:5e448e982a0e41338e6099495ce63175;]');
INSERT INTO `mms_operate_log` VALUES ('efaf48a16adc424fadfb53eade474c8c', '1', '2017-11-23 14:41:44.000000', 'Trading limit', '1', '0', 'Trading limit params:[serviceId:459a13440f1341839e43e181c5d05d53;]');
INSERT INTO `mms_operate_log` VALUES ('f02bdd3246c445a28883be5801cea87e', 'c0f82156961e422b9111fb7cc067f03d', '2017-11-22 14:58:54.000000', 'doLogin', 'c0f82156961e422b9111fb7cc067f03d', '0', 'doLogin params:[userName:wuqingsong;userPassword:WUqing123;veriCode:uxzx;remFlag:1;]');
INSERT INTO `mms_operate_log` VALUES ('f08a0323a1a94a8e9b850f695a6116d7', '1', '2017-11-22 11:28:32.000000', 'Role', '1', '0', 'Role params:[]');
INSERT INTO `mms_operate_log` VALUES ('f0b88d518610402b9ddec407582bfd1e', '1', '2017-11-21 17:11:35.000000', 'Role', '1', '0', 'Role params:[]');
INSERT INTO `mms_operate_log` VALUES ('f0e076351ae148408493c3cd85dd24ff', '1', '2017-11-23 15:27:53.000000', 'updateTransactionLimit', '479371e20bad4293b4c2aa0e6751c714', '1', 'updateTransactionLimit params:[id:479371e20bad4293b4c2aa0e6751c714;limitAmount:600;]');
INSERT INTO `mms_operate_log` VALUES ('f0e4db9f97a34731aa30ce7fbc3212e9', '1', '2017-11-23 15:28:17.000000', 'Trading limit', '1', '0', 'Trading limit params:[serviceId:5e448e982a0e41338e6099495ce63175;]');
INSERT INTO `mms_operate_log` VALUES ('f15bc0c90be6491fa7cc107eae1ba75f', '1', '2017-11-23 15:52:38.000000', 'Trading limit', '1', '0', 'Trading limit params:[serviceId:5e448e982a0e41338e6099495ce63175;]');
INSERT INTO `mms_operate_log` VALUES ('f15c4096aef84fd4b81f94facc546ebb', '1', '2017-11-27 10:51:21.000000', 'feedbackInfoDetail', '2', '0', 'feedbackInfoDetail params:[id:2;]');
INSERT INTO `mms_operate_log` VALUES ('f16a3c545e434619bf303193ad2b842c', '1', '2017-11-21 16:25:12.000000', 'uploadFileSave', '1', '0', 'uploadFileSave params:[editorid:contentText;]');
INSERT INTO `mms_operate_log` VALUES ('f212f9a72d574e9da9c32e822e63d1e9', '1', '2017-11-27 15:21:35.000000', 'userDetail', '8bf6c9ae369b4fd0961843feb42150b4', '0', 'userDetail params:[id:8bf6c9ae369b4fd0961843feb42150b4;]');
INSERT INTO `mms_operate_log` VALUES ('f21bca37a88f4c89af36bbd6a4d798da', '1', '2017-11-24 15:36:22.000000', 'Operator', '1', '0', 'Operator params:[]');
INSERT INTO `mms_operate_log` VALUES ('f2229fe4e99e4e8995c705dce4dd6925', '1', '2017-11-21 15:45:55.000000', 'doLogin', '1', '0', 'doLogin params:[userName:admin;userPassword:222222;veriCode:tizh;remFlag:1;]');
INSERT INTO `mms_operate_log` VALUES ('f2471caa52a04b0798c7b49e97587ad8', '1', '2017-11-27 14:43:57.000000', 'Service Agreement', '1', '0', 'Service Agreement params:[]');
INSERT INTO `mms_operate_log` VALUES ('f2a9090303ce4a7d8a537cd35e6654ae', '1', '2017-11-23 14:14:15.000000', 'Department', '1', '0', 'Department params:[]');
INSERT INTO `mms_operate_log` VALUES ('f34b25ce7c3b4ecb80f2b1e69e89ed32', '1', '2017-11-23 15:17:31.000000', 'Trading limit', '1', '0', 'Trading limit params:[serviceId:5e448e982a0e41338e6099495ce63175;]');
INSERT INTO `mms_operate_log` VALUES ('f37465e9c243446798627ec38b2ce934', '1', '2017-11-22 16:07:33.000000', 'Role', '1', '0', 'Role params:[]');
INSERT INTO `mms_operate_log` VALUES ('f3ca295f9b7047dfa2a2715fca3700ee', '1', '2017-11-22 11:24:43.000000', 'Role', '1', '0', 'Role params:[]');
INSERT INTO `mms_operate_log` VALUES ('f3d5a17b2fcc47408e53c18b09025286', '1', '2017-11-22 10:33:00.000000', 'Delete role', '1', '1', 'Delete role params:[ids:0fff7c3c005c40599d80f1a05fa56deb;]');
INSERT INTO `mms_operate_log` VALUES ('f3f1ae671e2e4b53ac7d732f1e7d419b', '1', '2017-11-27 10:42:19.000000', 'Feedback ', '1', '0', 'Feedback  params:[refSystem:2;]');
INSERT INTO `mms_operate_log` VALUES ('f4645bef7f6b4490b38befc8e2469e1e', '1', '2017-11-22 15:05:32.000000', 'Add role', '1', '1', 'Add role params:[roleName:角色管理员;roleDesc:角色管理员;menuIds:51ee577ee96442c6a253d961b66861b2,e6e19a88b7ea4950b621e24e25368b08,e502784caf0945ad9ddbf74dd1c3f59a,c345cdf0ccb74a2298ecfd85fd8b7e98,50fc3219bc594b4aa74bce75e9bbd017,7b8c6c1b848942fe85505b9d693616e2;]');
INSERT INTO `mms_operate_log` VALUES ('f4ae50ddd5fc4097a750773ae1073af5', '8bf6c9ae369b4fd0961843feb42150b4', '2017-11-22 17:48:28.000000', 'Role', '8bf6c9ae369b4fd0961843feb42150b4', '0', 'Role params:[]');
INSERT INTO `mms_operate_log` VALUES ('f4d073a3d69e420d8277ae5cb79bbc3b', '1', '2017-11-23 14:10:19.000000', 'departmentDetail', '84c87bfbc93348c9a89cf43534b0beae', '0', 'departmentDetail params:[id:84c87bfbc93348c9a89cf43534b0beae;]');
INSERT INTO `mms_operate_log` VALUES ('f4e7229497a841d8a152060ad65d389f', '1', '2017-11-27 14:57:15.000000', 'Device Bind', '1', '0', 'Device Bind params:[phone:1234;val:1;]');
INSERT INTO `mms_operate_log` VALUES ('f4fd6362ddd146f3abcb4cf3459b43f1', '8bf6c9ae369b4fd0961843feb42150b4', '2017-11-22 19:17:48.000000', 'Operator', '8bf6c9ae369b4fd0961843feb42150b4', '0', 'Operator params:[]');
INSERT INTO `mms_operate_log` VALUES ('f500e890af78477a9d07781462f5e556', '1', '2017-11-22 14:29:53.000000', 'roleDetail', 'a7fa3695f0c444feaa9d843c7947c530', '0', 'roleDetail params:[id:a7fa3695f0c444feaa9d843c7947c530;]');
INSERT INTO `mms_operate_log` VALUES ('f5798051d01545e684b1f38f302bbc8b', '1', '2017-11-23 08:52:33.000000', 'doLogin', '1', '0', 'doLogin params:[userName:admin;userPassword:222222;veriCode:qlm2;remFlag:1;]');
INSERT INTO `mms_operate_log` VALUES ('f58cae6056544cf2abe632cc13683501', '8bf6c9ae369b4fd0961843feb42150b4', '2017-11-23 08:52:25.000000', 'Role', '8bf6c9ae369b4fd0961843feb42150b4', '0', 'Role params:[]');
INSERT INTO `mms_operate_log` VALUES ('f5d75133b0c440b1b6c6a670e8c64e0b', '8bf6c9ae369b4fd0961843feb42150b4', '2017-11-23 08:52:20.000000', 'Role', '8bf6c9ae369b4fd0961843feb42150b4', '0', 'Role params:[]');
INSERT INTO `mms_operate_log` VALUES ('f6d61de2d3a04ac2accee4e0c6a9826a', '1', '2017-11-23 15:26:19.000000', 'addTransactionLimit', '1', '1', 'addTransactionLimit params:[serviceId:5e448e982a0e41338e6099495ce63175;limitType:0;limitAmount:123;currency:1;]');
INSERT INTO `mms_operate_log` VALUES ('f6eae58930174cf484312511b91508e9', '1', '2017-11-23 14:03:33.000000', 'Operator', '1', '0', 'Operator params:[]');
INSERT INTO `mms_operate_log` VALUES ('f75e45afc0df4a29ae6c9f184472d827', '1', '2017-11-21 17:44:19.000000', 'Add role', '1', '1', 'Add role params:[roleName:1231;roleDesc:1;menuIds:51ee577ee96442c6a253d961b66861b2,e6e19a88b7ea4950b621e24e25368b08,ed396d532ecf44a3845e6a625b819507,2f6b9ce020b14028aae6b8e5f87afad1,b0fd17d5cea04e08bfbbc9606114c3b4;]');
INSERT INTO `mms_operate_log` VALUES ('f77174d41e2c4a7fa8ac2be15d164c9a', '1', '2017-11-23 11:03:04.000000', 'Feedback ', '1', '0', 'Feedback  params:[refSystem:1;]');
INSERT INTO `mms_operate_log` VALUES ('f7c5ac45248e4042a89748d9ecfcca7e', '1', '2017-11-22 10:28:52.000000', 'Role', '1', '0', 'Role params:[]');
INSERT INTO `mms_operate_log` VALUES ('f7e98515d1ce44b1a2a53c7d68ca9362', '1', '2017-11-22 10:53:46.000000', 'Modify role', '0fff7c3c005c40599d80f1a05fa56deb', '1', 'Modify role params:[id:0fff7c3c005c40599d80f1a05fa56deb;roleName:1;roleDesc:1;menuIds:51ee577ee96442c6a253d961b66861b2,e6e19a88b7ea4950b621e24e25368b08,ed396d532ecf44a3845e6a625b819507,2f6b9ce020b14028aae6b8e5f87afad1,b0fd17d5cea04e08bfbbc9606114c3b4;]');
INSERT INTO `mms_operate_log` VALUES ('f81cac0f2c924dc380508a890f7050bb', '1', '2017-11-23 14:40:26.000000', 'addSystemService', '1', '1', 'addSystemService params:[serviceCode:123;serviceName:123;serviceDesc:123;dictId:123;listType:0;]');
INSERT INTO `mms_operate_log` VALUES ('f87daa3f534448fbb2d3f700b118c29e', '1', '2017-11-23 16:57:44.000000', 'APP Version', '1', '0', 'APP Version params:[]');
INSERT INTO `mms_operate_log` VALUES ('f889242c82ba48dcb5cbd130e79b783a', '1', '2017-11-27 15:43:10.000000', 'Device Bind', '1', '0', 'Device Bind params:[phone:1234;val:1;]');
INSERT INTO `mms_operate_log` VALUES ('f8a856fb573b4496b1039aa06e7ce96c', '1', '2017-11-23 14:18:27.000000', 'Delete department', '1', '1', 'Delete department params:[ids:12f00ad75df942a99d153caa74d7bccb,f64389fd7e1346bfbdfc9a5c91ce81cb;]');
INSERT INTO `mms_operate_log` VALUES ('f951f9bbf758412e86473241f5f04080', '1', '2017-11-23 16:24:08.000000', 'Command Id Constrast', '1', '0', 'Command Id Constrast params:[]');
INSERT INTO `mms_operate_log` VALUES ('f9d5fbcd70af456ba0fe3c7b501fa039', '1', '2017-11-23 16:38:53.000000', 'Notice', '1', '0', 'Notice params:[noticeState:1;]');
INSERT INTO `mms_operate_log` VALUES ('faefde8f9f574e4ea45e80e655fbc893', '1', '2017-11-22 16:57:28.000000', 'doLogOut', '1', '0', 'User log out');
INSERT INTO `mms_operate_log` VALUES ('fb36a4c25e234a1cb92d445d3e328815', '1', '2017-11-27 10:39:47.000000', 'Operator', '1', '0', 'Operator params:[]');
INSERT INTO `mms_operate_log` VALUES ('fb55e244745545e99a2c7b428ccc1351', '1', '2017-11-22 10:16:05.000000', 'Add role', '1', '1', 'Add role params:[roleName:1;roleDesc:1;menuIds:51ee577ee96442c6a253d961b66861b2,e6e19a88b7ea4950b621e24e25368b08,ed396d532ecf44a3845e6a625b819507,2f6b9ce020b14028aae6b8e5f87afad1;]');
INSERT INTO `mms_operate_log` VALUES ('fb72835f8b834a9f84fd82dd72c8362f', '1', '2017-11-23 16:14:40.000000', 'systemDictDetail', '1', '0', 'systemDictDetail params:[id:1;]');
INSERT INTO `mms_operate_log` VALUES ('fba6f73cc11b4b749b455aef337a6303', '1', '2017-11-22 10:53:52.000000', 'roleDetail', '0fff7c3c005c40599d80f1a05fa56deb', '0', 'roleDetail params:[id:0fff7c3c005c40599d80f1a05fa56deb;]');
INSERT INTO `mms_operate_log` VALUES ('fbba10e971ed4ae7840885c1535dc8af', '1', '2017-11-22 14:30:02.000000', 'Modify role', 'a7fa3695f0c444feaa9d843c7947c530', '1', 'Modify role params:[id:a7fa3695f0c444feaa9d843c7947c530;roleName:测试;roleDesc:测试;menuIds:51ee577ee96442c6a253d961b66861b2,e6e19a88b7ea4950b621e24e25368b08,ed396d532ecf44a3845e6a625b819507,2f6b9ce020b14028aae6b8e5f87afad1,b0fd17d5cea04e08bfbbc9606114c3b4,e502784caf0945ad9ddbf74dd1c3f59a,c345cdf0ccb74a2298ecfd85fd8b7e98,50fc3219bc594b4aa74bce75e9bbd017;]');
INSERT INTO `mms_operate_log` VALUES ('fbc60ac59fbe436da03eec13be261ade', '1', '2017-11-21 17:18:40.000000', 'Add role', '1', '1', 'Add role params:[roleName:管理员;roleDesc:管理员;menuIds:51ee577ee96442c6a253d961b66861b2,e6e19a88b7ea4950b621e24e25368b08,ed396d532ecf44a3845e6a625b819507,2f6b9ce020b14028aae6b8e5f87afad1,b0fd17d5cea04e08bfbbc9606114c3b4,9797fe365f7846adb9c977225c2ec996;]');
INSERT INTO `mms_operate_log` VALUES ('fc09aac7728847d8959a5ac1e6347e86', '8bf6c9ae369b4fd0961843feb42150b4', '2017-11-22 19:17:42.000000', 'Operator', '8bf6c9ae369b4fd0961843feb42150b4', '0', 'Operator params:[]');
INSERT INTO `mms_operate_log` VALUES ('fc270cf6196945ec9eaff4aad33eac13', '1', '2017-11-23 16:14:42.000000', 'systemDictDetail', '1', '0', 'systemDictDetail params:[id:1;]');
INSERT INTO `mms_operate_log` VALUES ('fc669c3c0f644951bb5be9af40c26f79', '1', '2017-11-23 14:41:42.000000', 'Trading limit', '1', '0', 'Trading limit params:[]');
INSERT INTO `mms_operate_log` VALUES ('fe7d63b0f90f47d7aa6c4cf52a8e739e', '1', '2017-11-27 15:15:20.000000', 'Operator', '1', '0', 'Operator params:[]');
INSERT INTO `mms_operate_log` VALUES ('fef617349ffa45e2a6f70d64c5be1b5b', '8bf6c9ae369b4fd0961843feb42150b4', '2017-11-22 17:48:40.000000', 'Operator', '8bf6c9ae369b4fd0961843feb42150b4', '0', 'Operator params:[]');
INSERT INTO `mms_operate_log` VALUES ('ff12d3181e1a46cd91d8c392dd68f2a8', '1', '2017-11-22 16:08:27.000000', 'Operator', '1', '0', 'Operator params:[]');
INSERT INTO `mms_operate_log` VALUES ('ff321d34f4dc4c189d67d5d478ac0d73', '1', '2017-11-27 10:42:28.000000', 'Reply feedback', '1', '1', 'Reply feedback params:[content:12;id:1;]');
INSERT INTO `mms_operate_log` VALUES ('ff3ece964d7a47a183276d8dd11c4e9d', '1', '2017-11-22 15:05:32.000000', 'Role', '1', '0', 'Role params:[]');
INSERT INTO `mms_operate_log` VALUES ('ffa9a35ec1144276a38f0564e53d0614', '1', '2017-11-27 10:40:55.000000', 'Feedback ', '1', '0', 'Feedback  params:[]');

-- ----------------------------
-- Table structure for mms_question_answer
-- ----------------------------
DROP TABLE IF EXISTS `mms_question_answer`;
CREATE TABLE `mms_question_answer` (
  `id` varchar(32) NOT NULL,
  `create_by` varchar(32) DEFAULT NULL,
  `create_date` datetime(6) DEFAULT NULL,
  `update_by` varchar(32) DEFAULT NULL,
  `update_date` datetime(6) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL COMMENT '问题标题',
  `answer` varchar(4000) DEFAULT NULL COMMENT '问题回答富文本内容',
  `question_desc` varchar(1000) DEFAULT NULL COMMENT '问答描述',
  `question_type` varchar(255) DEFAULT NULL COMMENT '问题分类:例如付款类,交易类,账户类,有待进一步讨论统一',
  `is_delete` int(2) DEFAULT NULL COMMENT '删除状态:0未删除 1已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mms_question_answer
-- ----------------------------
INSERT INTO `mms_question_answer` VALUES ('71e8d7bf232e450aaf12f437534a99ef', '1', '2017-11-27 11:04:25.000000', null, null, '测试标题', '<p>问这个图片好看吗？<sub><img src=\"http://localhost:8080/mGateCMS/upload/2017-11-27/7158f14af503466f96d5dc4b38d709b3.jpg\" _src=\"http://localhost:8080/mGateCMS/upload/2017-11-27/7158f14af503466f96d5dc4b38d709b3.jpg\"/></sub></p>', '问这个图片', '2', '0');

-- ----------------------------
-- Table structure for mms_role
-- ----------------------------
DROP TABLE IF EXISTS `mms_role`;
CREATE TABLE `mms_role` (
  `id` varchar(32) NOT NULL,
  `create_by` varchar(32) DEFAULT NULL,
  `create_date` datetime(6) DEFAULT NULL,
  `update_by` varchar(32) DEFAULT NULL,
  `update_date` datetime(6) DEFAULT NULL,
  `parent_id` varchar(32) DEFAULT NULL COMMENT '上级角色ID',
  `role_name` varchar(255) DEFAULT NULL COMMENT '角色名',
  `role_desc` varchar(500) DEFAULT NULL COMMENT '角色描述',
  `is_delete` int(2) DEFAULT NULL COMMENT '删除状态:0未删除 1已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mms_role
-- ----------------------------
INSERT INTO `mms_role` VALUES ('4686e167563241d89e2d8f137e2b96cb', '1', '2017-11-22 17:21:42.000000', null, null, null, '角色管理员', '角色管理员', '0');
INSERT INTO `mms_role` VALUES ('7b3da3149a7542dc88126cb3ff83c0d5', '1', '2017-11-22 17:21:30.000000', null, null, null, '用户管理员', '用户管理员', '0');

-- ----------------------------
-- Table structure for mms_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `mms_role_menu`;
CREATE TABLE `mms_role_menu` (
  `role_id` varchar(32) DEFAULT NULL,
  `menu_id` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mms_role_menu
-- ----------------------------
INSERT INTO `mms_role_menu` VALUES ('7b3da3149a7542dc88126cb3ff83c0d5', '51ee577ee96442c6a253d961b66861b2');
INSERT INTO `mms_role_menu` VALUES ('7b3da3149a7542dc88126cb3ff83c0d5', 'e6e19a88b7ea4950b621e24e25368b08');
INSERT INTO `mms_role_menu` VALUES ('7b3da3149a7542dc88126cb3ff83c0d5', 'ed396d532ecf44a3845e6a625b819507');
INSERT INTO `mms_role_menu` VALUES ('7b3da3149a7542dc88126cb3ff83c0d5', '2f6b9ce020b14028aae6b8e5f87afad1');
INSERT INTO `mms_role_menu` VALUES ('7b3da3149a7542dc88126cb3ff83c0d5', 'b0fd17d5cea04e08bfbbc9606114c3b4');
INSERT INTO `mms_role_menu` VALUES ('7b3da3149a7542dc88126cb3ff83c0d5', '9797fe365f7846adb9c977225c2ec996');
INSERT INTO `mms_role_menu` VALUES ('4686e167563241d89e2d8f137e2b96cb', '51ee577ee96442c6a253d961b66861b2');
INSERT INTO `mms_role_menu` VALUES ('4686e167563241d89e2d8f137e2b96cb', 'e6e19a88b7ea4950b621e24e25368b08');
INSERT INTO `mms_role_menu` VALUES ('4686e167563241d89e2d8f137e2b96cb', 'e502784caf0945ad9ddbf74dd1c3f59a');
INSERT INTO `mms_role_menu` VALUES ('4686e167563241d89e2d8f137e2b96cb', 'c345cdf0ccb74a2298ecfd85fd8b7e98');
INSERT INTO `mms_role_menu` VALUES ('4686e167563241d89e2d8f137e2b96cb', '50fc3219bc594b4aa74bce75e9bbd017');
INSERT INTO `mms_role_menu` VALUES ('4686e167563241d89e2d8f137e2b96cb', '7b8c6c1b848942fe85505b9d693616e2');

-- ----------------------------
-- Table structure for mms_service_agreement
-- ----------------------------
DROP TABLE IF EXISTS `mms_service_agreement`;
CREATE TABLE `mms_service_agreement` (
  `id` varchar(32) NOT NULL,
  `create_by` varchar(32) DEFAULT NULL,
  `create_date` datetime(6) DEFAULT NULL,
  `update_by` varchar(32) DEFAULT NULL,
  `update_date` datetime(6) DEFAULT NULL,
  `agreement_name` varchar(255) DEFAULT NULL COMMENT '业务许可名称',
  `content_url` varchar(255) DEFAULT NULL COMMENT '服务许可内容html页面访问地址',
  `agreement_desc` varchar(500) DEFAULT NULL COMMENT '服务许可描述',
  `ref_type` varchar(5) DEFAULT NULL COMMENT '对应产品类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mms_service_agreement
-- ----------------------------
INSERT INTO `mms_service_agreement` VALUES ('927a3c6fe6c346f5a8b2f3e6826af19e', '1', '2017-11-27 14:43:52.000000', null, null, '业务许可测试', '<p>业务许可测试<img src=\"http://localhost:8080/mGateCMS/upload/2017-11-27/29153df8ce8f4af6aa6263426d2efba4.jpg\" _src=\"http://localhost:8080/mGateCMS/upload/2017-11-27/29153df8ce8f4af6aa6263426d2efba4.jpg\"/></p>', '业务许可测试', '1');

-- ----------------------------
-- Table structure for mms_system_dict
-- ----------------------------
DROP TABLE IF EXISTS `mms_system_dict`;
CREATE TABLE `mms_system_dict` (
  `id` varchar(32) NOT NULL,
  `create_by` varchar(32) DEFAULT NULL,
  `create_date` datetime(6) DEFAULT NULL,
  `update_by` varchar(32) DEFAULT NULL,
  `update_date` datetime(6) DEFAULT NULL,
  `dict_key` varchar(255) DEFAULT NULL COMMENT '字典key',
  `dict_value` varchar(255) DEFAULT NULL COMMENT '字典值',
  `dict_name` varchar(255) DEFAULT NULL COMMENT '字典名称,前端回显',
  `dict_seq` int(5) DEFAULT NULL COMMENT '字典排序',
  `dict_desc` varchar(500) DEFAULT NULL COMMENT '字典描述',
  `is_delete` int(2) DEFAULT NULL COMMENT '删除状态:0未删除 1已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mms_system_dict
-- ----------------------------
INSERT INTO `mms_system_dict` VALUES ('00949a8cd99a4fda8dc11be099e1aa5e', '1', null, null, null, 'LIST_TYPE', '2', '白名单', '3', '白名单', '0');
INSERT INTO `mms_system_dict` VALUES ('0937933f409540a997e0d51b0d8d9b83', '1', null, null, null, 'REF_SYSTEM', '2', 'merchant', '2', '所属系统', '0');
INSERT INTO `mms_system_dict` VALUES ('0dff7d4c59e44f1aa7b37906ff69ddec', '1', null, '1', null, 'QUESTION_TYPE', '2', '交易类', '2', '问题分类', '0');
INSERT INTO `mms_system_dict` VALUES ('1', null, null, '1', '2017-11-21 15:23:03.000000', '1', '0', '女', '1', '女', '0');
INSERT INTO `mms_system_dict` VALUES ('1124d4e07f31469a8120f4726e7d8f2d', '1', null, '1', null, 'NOTICE_STATE', '2', '草稿状态', '2', '草稿状态', '0');
INSERT INTO `mms_system_dict` VALUES ('16806393222947359de8a17b566c9199', '1', null, null, null, 'LIST_TYPE', '0', '无名单', '1', '无名单', '0');
INSERT INTO `mms_system_dict` VALUES ('1f0e0d9f23f34bbeb99ca625bbda554f', '1', null, null, null, 'TRANS_FLAG', '1', '已转义', '1', '转义标示', '0');
INSERT INTO `mms_system_dict` VALUES ('2', null, null, '1', null, '1', '1', '男', '2', '男', '0');
INSERT INTO `mms_system_dict` VALUES ('2572f15aa09149cb82558b551df5edb6', '1', null, null, null, 'CERT_TYPE', '2', '护照', '2', '证件类型', '0');
INSERT INTO `mms_system_dict` VALUES ('2ccbfae1dfd24d7188f0c50e2ddadef9', '1', null, null, null, 'TRANS_FLAG', '0', '未转义', '0', '转义标 示', '0');
INSERT INTO `mms_system_dict` VALUES ('2ed3861b507e42c296cdd90a165ab587', '1', null, null, null, 'REF_TYPE', '1', '产品类型一', '1', '产品类型', '0');
INSERT INTO `mms_system_dict` VALUES ('37e1e608da464460910f0b468d9ef7cf', '1', null, null, null, 'LIMIT_TYPE', '1', '日累计限额', '2', '日累计限额', '1');
INSERT INTO `mms_system_dict` VALUES ('3a63328b40d0428598d31daccbc80096', '1', null, null, null, 'LIMIT_TYPE', '0', '单笔限额', '0', '单笔限额', '1');
INSERT INTO `mms_system_dict` VALUES ('3b709f1df89d4aa4921a2e630611dedf', '1', null, null, null, 'USER_STATE', '0', '正常', '1', '用户状态', '0');
INSERT INTO `mms_system_dict` VALUES ('4389097283c5439688cc930e5e7e59ff', '1', null, null, null, 'NOTICE_STATE', '3', '下架状态', '3', '下架状态', '0');
INSERT INTO `mms_system_dict` VALUES ('51b4dbc624534aaab8f58bc8951999b3', '1', null, null, null, 'UPGRADE_IDENTIFIER', '2', '强制更新', '2', 'APP更新', '0');
INSERT INTO `mms_system_dict` VALUES ('55203aea6c8a4e57938e0e241eb0fcfb', '1', null, null, null, 'CERT_TYPE', '1', '居民身份证', '1', '证件类型', '0');
INSERT INTO `mms_system_dict` VALUES ('5768b6e009e4439a9b352054874e7be8', '1', null, null, null, 'USER_STATE', '1', '停用', '2', '用户状态', '0');
INSERT INTO `mms_system_dict` VALUES ('76529af3f02a4d6da7152efac7bd2680', '1', null, '1', null, 'REF_SYSTEM', '1', 'customer', '1', '所属系统', '0');
INSERT INTO `mms_system_dict` VALUES ('7c1ef9e5946f4b8a8e1f743f52f1c8bb', '1', null, null, null, 'LIMIT_TYPE', '1', '日累计限额', '2', '日累计限额', '0');
INSERT INTO `mms_system_dict` VALUES ('8f770f8fec0d4523a90895726a50f23f', '1', null, '1', null, 'BIND_STATE', '1', '已绑定', '1', '设备绑定', '0');
INSERT INTO `mms_system_dict` VALUES ('9619df850cca4a4fa549bd6fe54c8879', '1', null, null, null, 'LIMIT_TYPE', '0', '单笔限额', '1', '单笔限额', '0');
INSERT INTO `mms_system_dict` VALUES ('9b080068dec2404e83cfea7043584572', '1', null, null, null, 'UPGRADE_IDENTIFIER', '1', '可升级', '1', 'APP更新', '0');
INSERT INTO `mms_system_dict` VALUES ('a536b570b0e54533bc21c8e8893bbaa4', '1', null, null, null, 'DEPT_STATE', '2', '停用', '2', '部门状态', '0');
INSERT INTO `mms_system_dict` VALUES ('a7aa5ce7315a4cd2b33b3a72458be528', '1', null, null, null, 'REF_TYPE', '2', '产品类型2', '2', '产品类型', '0');
INSERT INTO `mms_system_dict` VALUES ('a8cd31c899c64815b239644011012bfa', '1', null, null, null, 'LIST_TYPE', '1', '黑名单', '2', '黑名单', '0');
INSERT INTO `mms_system_dict` VALUES ('b9a046e987e841879d35521db45119e6', '1', '2017-11-21 15:26:31.000000', null, null, '4', '4', '测试', '1', '4测试', '1');
INSERT INTO `mms_system_dict` VALUES ('bcd1bbb2e0a5494d9db3d05ef21fa9a0', '1', null, '1', null, 'QUESTION_TYPE', '1', '付款类', '1', '问题分类', '0');
INSERT INTO `mms_system_dict` VALUES ('c66774875dab4bc5b18d817a42664b50', '1', null, null, null, 'NOTICE_STATE', '1', '发布状态', '1', '发布状态', '0');
INSERT INTO `mms_system_dict` VALUES ('d19ab1550b0d4df49107bad2c2efa58c', '1', null, null, null, 'CURRENCY', '1', '人民币', '1', '人民币', '0');
INSERT INTO `mms_system_dict` VALUES ('da9d7f3aa9054212add1b319f73d435e', '1', null, null, null, 'UPGRADE_TYPE', '2', 'Android', '2', 'APP更新类型', '0');
INSERT INTO `mms_system_dict` VALUES ('e693fcfc9362464aa43ca352394518a2', '1', null, null, null, 'BIND_STATE', '2', '未绑定', '2', '设备绑定', '0');
INSERT INTO `mms_system_dict` VALUES ('f05b690b5f944b3a8b087472530f85b1', '1', null, null, null, 'DEPT_STATE', '1', '启用', '1', '部门状态', '0');
INSERT INTO `mms_system_dict` VALUES ('f48ec3199161429197393698009eeda2', '1', null, null, null, 'UPGRADE_TYPE', '1', 'IOS', '1', 'APP更新类型', '0');

-- ----------------------------
-- Table structure for mms_system_param
-- ----------------------------
DROP TABLE IF EXISTS `mms_system_param`;
CREATE TABLE `mms_system_param` (
  `id` varchar(32) NOT NULL,
  `create_by` varchar(32) DEFAULT NULL,
  `create_date` datetime(6) DEFAULT NULL,
  `update_by` varchar(32) DEFAULT NULL,
  `update_date` datetime(6) DEFAULT NULL,
  `param_title` varchar(255) DEFAULT NULL COMMENT '参数标题名',
  `param_key` varchar(255) DEFAULT NULL COMMENT '参数键key',
  `param_value` varchar(255) DEFAULT NULL COMMENT '参数值',
  `param_desc` varchar(500) DEFAULT NULL COMMENT '参数描述',
  `is_delete` int(2) DEFAULT NULL COMMENT '删除状态:0未删除 1已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mms_system_param
-- ----------------------------
INSERT INTO `mms_system_param` VALUES ('bec6164f474441e7b6b4d708d6172474', '1', '2017-11-23 16:20:36.000000', null, null, '测试', '123', '测试', '测试', '0');

-- ----------------------------
-- Table structure for mms_system_service
-- ----------------------------
DROP TABLE IF EXISTS `mms_system_service`;
CREATE TABLE `mms_system_service` (
  `id` varchar(32) NOT NULL,
  `create_by` varchar(32) DEFAULT NULL,
  `create_date` datetime(6) DEFAULT NULL,
  `update_by` varchar(32) DEFAULT NULL,
  `update_date` datetime(6) DEFAULT NULL,
  `service_code` varchar(255) DEFAULT NULL COMMENT '业务交易码',
  `service_name` varchar(255) DEFAULT NULL COMMENT '业务名称',
  `service_desc` varchar(500) DEFAULT NULL COMMENT '业务描述',
  `dict_id` varchar(32) DEFAULT NULL COMMENT '业务类型,关联数据字典表',
  `list_type` varchar(10) DEFAULT NULL COMMENT '名单控制类型:0无名单 1黑名单 2白名单',
  `service_state` varchar(10) DEFAULT NULL COMMENT '业务状态:0关闭 1开启',
  `is_delete` varchar(2) DEFAULT NULL COMMENT '删除状态:0未删除 1已删除',
  `service_url` varchar(255) DEFAULT NULL COMMENT '业务url访问地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mms_system_service
-- ----------------------------
INSERT INTO `mms_system_service` VALUES ('459a13440f1341839e43e181c5d05d53', '1', '2017-11-23 14:41:02.000000', '1', '2017-11-23 14:41:34.000000', '123456', '测试', '测试', '123456', '2', '1', '0', null);
INSERT INTO `mms_system_service` VALUES ('5e448e982a0e41338e6099495ce63175', '1', '2017-11-23 14:40:25.000000', null, null, '123', '123', '123', '123', '0', '1', '0', null);

-- ----------------------------
-- Table structure for mms_table_rule
-- ----------------------------
DROP TABLE IF EXISTS `mms_table_rule`;
CREATE TABLE `mms_table_rule` (
  `id` varchar(32) NOT NULL,
  `table_name` varchar(255) DEFAULT NULL COMMENT '表名',
  `rule` varchar(255) DEFAULT NULL COMMENT '分表规则',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_date` varchar(6) DEFAULT NULL COMMENT '创建时间',
  `rule_desc` varchar(500) DEFAULT NULL COMMENT '规则描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mms_table_rule
-- ----------------------------

-- ----------------------------
-- Table structure for mms_transaction_limit
-- ----------------------------
DROP TABLE IF EXISTS `mms_transaction_limit`;
CREATE TABLE `mms_transaction_limit` (
  `id` varchar(32) NOT NULL,
  `create_by` varchar(32) DEFAULT NULL,
  `create_date` datetime(6) DEFAULT NULL,
  `update_by` varchar(32) DEFAULT NULL,
  `update_date` datetime(6) DEFAULT NULL,
  `service_id` varchar(32) DEFAULT NULL COMMENT '业务交易ID',
  `limit_type` varchar(2) DEFAULT NULL COMMENT '限额类型:0:单笔限额 1:日累计限额',
  `limit_amount` int(20) DEFAULT NULL COMMENT '交易限额',
  `is_delete` int(2) DEFAULT NULL COMMENT '删除状态:0未删除 1已删除',
  `currency` int(10) DEFAULT NULL COMMENT '币种(暂定1.人民币)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mms_transaction_limit
-- ----------------------------
INSERT INTO `mms_transaction_limit` VALUES ('18b051badb134653b35e0c3648a0a7c0', '1', '2017-11-23 15:27:37.000000', '1', '2017-11-23 15:28:16.000000', '5e448e982a0e41338e6099495ce63175', '1', '600', '0', '1');
INSERT INTO `mms_transaction_limit` VALUES ('479371e20bad4293b4c2aa0e6751c714', '1', '2017-11-23 15:00:44.000000', '1', '2017-11-23 15:28:08.000000', '5e448e982a0e41338e6099495ce63175', '0', '700', '1', '1');
INSERT INTO `mms_transaction_limit` VALUES ('5dc7a935777049bda783a69653569353', '1', '2017-11-23 14:42:13.000000', '1', '2017-11-23 14:42:22.000000', '459a13440f1341839e43e181c5d05d53', '1', '800', '0', '1');
INSERT INTO `mms_transaction_limit` VALUES ('be04795df9b14ebe8390313c068df6cf', '1', '2017-11-23 15:28:49.000000', null, null, '459a13440f1341839e43e181c5d05d53', '0', '21', '0', '1');

-- ----------------------------
-- Table structure for mms_user
-- ----------------------------
DROP TABLE IF EXISTS `mms_user`;
CREATE TABLE `mms_user` (
  `id` varchar(32) NOT NULL,
  `create_by` varchar(32) DEFAULT NULL,
  `create_date` datetime(6) DEFAULT NULL,
  `update_by` varchar(32) DEFAULT NULL,
  `update_date` datetime(6) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL COMMENT '用户登陆账号',
  `user_password` varchar(500) DEFAULT NULL COMMENT '用户登陆密码',
  `real_name` varchar(255) DEFAULT NULL COMMENT '用户真实姓名',
  `user_no` varchar(255) DEFAULT NULL COMMENT '用户编号',
  `user_phone` varchar(255) DEFAULT NULL COMMENT '用户联系电话',
  `user_email` varchar(255) DEFAULT NULL COMMENT '用户联系邮箱',
  `cert_type` varchar(255) DEFAULT NULL COMMENT '证件类型',
  `cert_id` varchar(255) DEFAULT NULL COMMENT '证件号码',
  `dept_id` varchar(32) DEFAULT NULL COMMENT '用户所在机构（部门名称）',
  `role_id` varchar(32) DEFAULT NULL COMMENT '用户角色',
  `user_state` varchar(2) DEFAULT NULL COMMENT '用户状态:0正常 1封停',
  `is_delete` int(2) DEFAULT NULL COMMENT '删除状态:0未删除 1已删除',
  `user_type` varchar(2) DEFAULT NULL COMMENT '用户类型:1超级管理员 0普通管理员',
  `user_gender` varchar(2) DEFAULT NULL COMMENT '用户性别:0女 1男',
  `user_remark` varchar(500) DEFAULT NULL COMMENT '用户备注信息',
  `user_photo` varchar(255) DEFAULT NULL COMMENT '用户头像',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mms_user
-- ----------------------------
INSERT INTO `mms_user` VALUES ('1', '1', null, '1', null, 'admin', '0e0c5635c4cacc00f9caf38e891ee36844d9a4bf5f53c954d70605007447890777fb8a95ee265f1d935e2de901436f3552af78b4bb850ad7f87e48d27987c4f0', '超级管理员', '1', '15036939659', '123@qq.com', '1', '1', '1', '12345678', '0', '0', '1', '1', '哈哈', 'http://localhost:8080/mGateCMS/static/imgs/upload/20171031/1509428859735_43.png');
INSERT INTO `mms_user` VALUES ('8bf6c9ae369b4fd0961843feb42150b4', '1', '2017-11-22 17:22:22.000000', '1', '2017-11-27 15:21:51.000000', 'wuqingsong', '9f5c33bdb8910d00c015c1b4563e8f5bf220b56c5686ae144c0a77dd7812f2d0a0be63104f2b232c594a8102a737861ed2b8e04cd29f71e92fa28fb460222bb0', '武青松', '123', '123', '123@qq.com', '1', '123', '84c87bfbc93348c9a89cf43534b0beae', null, '0', '0', '0', '1', '123', 'http://localhost:8080/mGateCMS/static/imgs/upload/20171127/1511767309784_329.jpg');

-- ----------------------------
-- Table structure for mms_user_role
-- ----------------------------
DROP TABLE IF EXISTS `mms_user_role`;
CREATE TABLE `mms_user_role` (
  `user_id` varchar(32) DEFAULT NULL COMMENT '用户ID',
  `role_id` varchar(32) DEFAULT NULL COMMENT '角色ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mms_user_role
-- ----------------------------

-- ----------------------------
-- Table structure for tb_tree
-- ----------------------------
DROP TABLE IF EXISTS `tb_tree`;
CREATE TABLE `tb_tree` (
  `cid` varchar(32) NOT NULL DEFAULT '',
  `cname` varchar(32) DEFAULT NULL,
  `pid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_tree
-- ----------------------------
INSERT INTO `tb_tree` VALUES ('1', '中国', '0');
INSERT INTO `tb_tree` VALUES ('10', '南山区', '6');
INSERT INTO `tb_tree` VALUES ('11', '密云县', '2');
INSERT INTO `tb_tree` VALUES ('12', '浦东', '4');
INSERT INTO `tb_tree` VALUES ('2', '北京市', '1');
INSERT INTO `tb_tree` VALUES ('3', '广东省', '1');
INSERT INTO `tb_tree` VALUES ('4', '上海市', '1');
INSERT INTO `tb_tree` VALUES ('5', '广州市', '3');
INSERT INTO `tb_tree` VALUES ('6', '深圳市', '3');
INSERT INTO `tb_tree` VALUES ('7', '海珠区', '5');
INSERT INTO `tb_tree` VALUES ('8', '天河区', '5');
INSERT INTO `tb_tree` VALUES ('9', '福田区', '6');
