/*
 Navicat Premium Data Transfer

 Source Server         : lemuji
 Source Server Type    : MySQL
 Source Server Version : 80016
 Source Host           : 192.168.1.41:3306
 Source Schema         : sms

 Target Server Type    : MySQL
 Target Server Version : 80016
 File Encoding         : 65001

 Date: 26/06/2019 16:50:02
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sms
-- ----------------------------
DROP TABLE IF EXISTS `sms`;
CREATE TABLE `sms`  (
  `id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `template` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '模板id',
  `receiver` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '接收人手机号码',
  `params` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '模板参数列表，jso格式map',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '短信内容',
  `sid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '发送该短信的服务提供商代码',
  `status` int(11) NULL DEFAULT NULL COMMENT '状态，接口响应状态码',
  `times` int(11) NULL DEFAULT NULL COMMENT '重试次数',
  `create_time` timestamp(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT NULL COMMENT '修改时间',
  `smsid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '流水号',
  `report_time` timestamp(0) NULL DEFAULT NULL COMMENT '回执时间',
  `report_msg` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '回执状态说明',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sms_failed
-- ----------------------------
DROP TABLE IF EXISTS `sms_failed`;
CREATE TABLE `sms_failed`  (
  `id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `template` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '模板id',
  `receiver` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '接收人手机号码',
  `params` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '模板参数列表，jso格式map',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '短信内容',
  `status` int(11) NULL DEFAULT NULL COMMENT '状态',
  `create_time` timestamp(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT NULL COMMENT '修改时间',
  `times` int(11) NULL DEFAULT NULL COMMENT '重试次数',
  `error_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '错误代码',
  `error_msg` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '错误信息',
  `smsid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '流水号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sms_failed
-- ----------------------------
INSERT INTO `sms_failed` VALUES ('27d6d319cbc54803a0bcec79ad1c9e06', '111', '12', '123', '', 0, '2019-06-14 17:03:22', '2019-06-14 17:03:22', 2, '404', '短信内容不能为空', '0');
INSERT INTO `sms_failed` VALUES ('3dff5235c6354e91b836ae3425be81f0', '1', '17683861747', '{\"code\":\"123556\"}', '您的验证码是：123556。请不要把验证码泄露给其他人。', 0, '2019-06-05 22:17:58', '2019-06-05 22:18:01', 1, '4072', '你提交过来的短信内容必须与报备过的模板格式相匹配', NULL);
INSERT INTO `sms_failed` VALUES ('422089d5716e47ce9d0fca093e409f3f', '1', '17683861747', '{\"vitity\":\"216584\"}', '剩余条数不足', 0, '2019-06-14 10:31:56', '2019-06-14 10:31:56', 0, '4051', '0', '0');
INSERT INTO `sms_failed` VALUES ('4fb98ad963f44250bb7d8ac86d1fa9fe', '1', '17683861747', '{\"vitity\":\"216584\"}', '剩余条数不足', 0, '2019-06-14 11:37:25', '2019-06-14 11:37:25', 0, '4051', '0', '0');
INSERT INTO `sms_failed` VALUES ('5282727bebae4c7d8c2d94e05c608fe5', '1', '13333333333', '{\"code\":\"739083\"}', '您的验证码是：739083。请不要把验证码泄露给其他人。', 0, '2019-06-13 11:13:48', '2019-06-13 11:13:48', 3, '4030', 'BLACK-Y', '0');
INSERT INTO `sms_failed` VALUES ('5c375882bdba49fb8e7f19673caf9029', '111', '12', '123', '', 0, '2019-06-14 17:03:22', '2019-06-14 17:03:22', 2, '404', '短信内容不能为空', '0');
INSERT INTO `sms_failed` VALUES ('673f327c52f74822b2579374ba0e2714', '1', '17683861747', '{\"code\":\"475219\"}', '您的验证码是：475219。请不要把验证码泄露给其他人。', 0, '2019-06-11 11:50:29', '2019-06-11 11:50:29', 3, '4080', '同一手机号码同一秒钟之内发送频率不能超过1条(c)', '0');
INSERT INTO `sms_failed` VALUES ('717d82de59c14083af0c0c31d27c965b', '1', '17683861747', '{\"code\":\"305047\"}', '您的验证码是：305047。请不要把验证码泄露给其他人。', 0, '2019-06-11 11:44:25', '2019-06-11 11:44:25', 3, '4080', '同一手机号码同一秒钟之内发送频率不能超过1条(c)', '0');
INSERT INTO `sms_failed` VALUES ('77761a7174374444a1758921bd45451b', '1', '17683861747', '{\"code\":\"123556\"}', '您的验证码是：123556。请不要把验证码泄露给其他人。', 0, '2019-06-11 09:24:27', '2019-06-11 09:24:27', 3, '4080', '同一手机号码同一秒钟之内发送频率不能超过1条(c)', NULL);
INSERT INTO `sms_failed` VALUES ('77cf0135af014e88b8c8242d3b712c10', '111', '12', '123', '', 0, '2019-06-14 17:03:22', '2019-06-14 17:03:22', 2, '404', '短信内容不能为空', '0');
INSERT INTO `sms_failed` VALUES ('8300df0649a74838807ee78c48dd4632', '111', '12', '123', '', 0, '2019-06-14 17:03:58', '2019-06-14 17:03:58', 2, '404', '短信内容不能为空', '0');
INSERT INTO `sms_failed` VALUES ('843939f119304f5c88e3cc24d42b9682', '111', '12', '123', '', 0, '2019-06-14 17:06:17', '2019-06-14 17:06:17', 2, '404', '短信内容不能为空', '0');
INSERT INTO `sms_failed` VALUES ('8b493b08d0c24f4eb1afa2e2d8ee9567', '1', '17683861747', '{\"code\":\"123556\"}', '您的验证码是：123556。请不要把验证码泄露给其他人。【{{qianmian}}】', 0, '2019-06-05 23:42:21', '2019-06-05 23:42:25', 3, '4072', '你提交过来的短信内容必须与报备过的模板格式相匹配', NULL);
INSERT INTO `sms_failed` VALUES ('915484ff9360452aa2c28360a0e15d3e', '111', '12', '123', '', 0, '2019-06-14 17:06:49', '2019-06-14 17:06:49', 2, '404', '短信内容不能为空', '0');
INSERT INTO `sms_failed` VALUES ('93c4d02ea59c4ef9a4e74c1c2261cfe6', '1', '17683861747', '{\"vitity\":\"216584\"}', '剩余条数不足', 0, '2019-06-11 13:01:06', '2019-06-14 11:40:27', 0, '4051', '0', '0');
INSERT INTO `sms_failed` VALUES ('a640f937d37e45bdae2e62ac05d44dba', '1', '17683861747', '{\"vitity\":\"216584\"}', '剩余条数不足', 0, '2019-06-14 11:31:41', '2019-06-14 11:31:41', 0, '4051', '0', '0');
INSERT INTO `sms_failed` VALUES ('a76df0974ced4d13b6ac40a09aa0f7c0', '1', '17683861747', '{\"vitity\":\"216584\"}', '剩余条数不足', 0, '2019-06-14 11:40:27', '2019-06-14 11:40:27', 0, '4051', '0', '0');
INSERT INTO `sms_failed` VALUES ('c1aa0ea8ae0f4b478c03dc29cab10096', '1', '17683861747', '{\"code\":\"123556\"}', '您的验证码是：123556。请不要把验证码泄露给其他人。', 0, '2019-06-11 09:24:28', '2019-06-11 09:24:28', 3, '4080', '同一手机号码同一秒钟之内发送频率不能超过1条(c)', NULL);
INSERT INTO `sms_failed` VALUES ('c828b17057ea47498f825fc0ab043a4a', '1', '17683861747', '{\"code\":\"608250\"}', '您的验证码是：608250。请不要把验证码泄露给其他人。', 0, '2019-06-11 10:57:46', '2019-06-11 10:57:46', 3, '4085', '同一手机号验证码短信发送超出5条', NULL);
INSERT INTO `sms_failed` VALUES ('d4e55397cc72455d8e49913385fef4ab', '1', '17683861747', '{\"code\":\"284002\"}', '您的验证码是：284002。请不要把验证码泄露给其他人。', 0, '2019-06-11 10:49:44', '2019-06-11 10:49:44', 3, '4085', '同一手机号验证码短信发送超出5条', NULL);
INSERT INTO `sms_failed` VALUES ('e112c321d6fb40caa92cf40e57ce04b0', '1', '17683861747', '{\"vitity\":\"216584\"}', '剩余条数不足', 0, '2019-06-14 11:35:37', '2019-06-14 11:35:37', 0, '4051', '0', '0');
INSERT INTO `sms_failed` VALUES ('ea7cf0f577be409bb5d1d027fd5e4a4a', '111', '12', '123', '', 0, '2019-06-14 17:06:49', '2019-06-14 17:06:49', 2, '404', '短信内容不能为空', '0');
INSERT INTO `sms_failed` VALUES ('f4b0dad0072e41718c549723d6354fe0', '111', '12', '123', '', 0, '2019-06-14 17:06:52', '2019-06-14 17:06:52', 2, '404', '短信内容不能为空', '0');
INSERT INTO `sms_failed` VALUES ('fc97862b7d8c41d7a79c0fbaa1c1d09c', '111', '12', '123', '', 0, '2019-06-14 17:06:53', '2019-06-14 17:06:53', 2, '404', '短信内容不能为空', '0');

-- ----------------------------
-- Table structure for sms_record
-- ----------------------------
DROP TABLE IF EXISTS `sms_record`;
CREATE TABLE `sms_record`  (
  `id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `template` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '模板id',
  `receiver` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '接收人手机号码',
  `params` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '模板参数列表，json格式map',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '短信内容',
  `status` int(11) NULL DEFAULT NULL COMMENT '状态',
  `create_time` timestamp(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT NULL COMMENT '修改时间',
  `times` int(11) NULL DEFAULT NULL COMMENT '重试次数',
  `remark` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  `smsid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '流水号',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_sms_record_receiver`(`receiver`) USING BTREE,
  INDEX `idx_sms_record_create_time`(`create_time`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sms_record
-- ----------------------------
INSERT INTO `sms_record` VALUES ('05cfb0b0a11e4abc9adcc7bb731588ad', '1', '17683861747', '{\"code\":\"123556\"}', '您的验证码是：123556。请不要把验证码泄露给其他人。', 0, '2019-06-05 23:56:56', '2019-06-05 23:56:56', 0, '发送验证码', '0');
INSERT INTO `sms_record` VALUES ('74ec5e5d5b08406aa4958f02d7c312df', '1', '17683861747', '{\"code\":\"123556\"}', '您的验证码是：123556。请不要把验证码泄露给其他人。', 0, '2019-06-05 23:59:47', '2019-06-05 23:59:49', 0, '发送验证码', '0');
INSERT INTO `sms_record` VALUES ('984bad9eba1a47309213726092d6f444', '1', '17683861747', '{\"code\":\"123556\"}', '您的验证码是：123556。请不要把验证码泄露给其他人。', 0, '2019-06-05 23:56:57', '2019-06-05 23:56:57', 0, '发送验证码', '0');
INSERT INTO `sms_record` VALUES ('e5c268ea39394f8c90cfb5779c5cc76c', '1', '17683861747', '{\"code\":\"123556\"}', '您的验证码是：123556。请不要把验证码泄露给其他人。', 0, '2019-06-05 23:56:59', '2019-06-05 23:56:59', 1, '发送验证码', '0');
INSERT INTO `sms_record` VALUES ('f4b0dad0072e41718c549723d6354fe0', '1', '17683861747', '{\"verify\":\"997043\"}', '您的验证码是：997043。请不要把验证码泄露给其他人。', 0, '2019-06-14 10:47:45', '2019-06-14 10:47:45', 0, '发送验证码', '15604168137355121985');

-- ----------------------------
-- Table structure for template
-- ----------------------------
DROP TABLE IF EXISTS `template`;
CREATE TABLE `template`  (
  `code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '模板代号',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '模板名称',
  `tcontent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '模板内容',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '说明',
  PRIMARY KEY (`code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of template
-- ----------------------------
INSERT INTO `template` VALUES ('1', '验证码', '您的验证码是：{{verify}}。请不要把验证码泄露给其他人。', '发送验证码');
INSERT INTO `template` VALUES ('2', '验证码', '您的验证码是：{{code}}。请不要把验证码泄露给其他人。', '发送验证码');

SET FOREIGN_KEY_CHECKS = 1;
