/*
 Navicat Premium Data Transfer

 Source Server         : lemuji
 Source Server Type    : MySQL
 Source Server Version : 80016
 Source Host           : 192.168.1.41:3306
 Source Schema         : auths

 Target Server Type    : MySQL
 Target Server Version : 80016
 File Encoding         : 65001

 Date: 26/06/2019 16:49:31
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for action
-- ----------------------------
DROP TABLE IF EXISTS `action`;
CREATE TABLE `action`  (
  `id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '操作编号',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '操作名称',
  `appcode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属应用',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_action_code`(`code`) USING BTREE,
  INDEX `idx_action_appcode`(`appcode`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '操作' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of action
-- ----------------------------
INSERT INTO `action` VALUES ('1', '1', '编辑', 'shop');
INSERT INTO `action` VALUES ('2', '2', '删除', 'shop');
INSERT INTO `action` VALUES ('3', '3', '详情', 'shop');
INSERT INTO `action` VALUES ('5', 'default', '默认', NULL);

-- ----------------------------
-- Table structure for app
-- ----------------------------
DROP TABLE IF EXISTS `app`;
CREATE TABLE `app`  (
  `code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '应用编号',
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '应用名称',
  `enable` int(11) NULL DEFAULT NULL COMMENT '是否可用',
  `addr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '主页地址',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '支持的系统' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of app
-- ----------------------------
INSERT INTO `app` VALUES ('agency', '代理商系统', 1, 'http://192.168.1.42:9030', NULL);
INSERT INTO `app` VALUES ('shop', '门店系统', 1, 'http://192.168.1.42:9040', NULL);
INSERT INTO `app` VALUES ('supplier', '供应商系统', 1, 'http://192.168.1.42:9020', NULL);

-- ----------------------------
-- Table structure for organ
-- ----------------------------
DROP TABLE IF EXISTS `organ`;
CREATE TABLE `organ`  (
  `id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '名称',
  `type` int(11) NULL DEFAULT NULL COMMENT '类型，1供应商2代理商3门店4仓库',
  `status` int(11) NULL DEFAULT NULL COMMENT '状态，0初始（入驻中）1可用2	暂停3停止4异常',
  `level` int(11) NULL DEFAULT NULL COMMENT '级别',
  `parent` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '父节点id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '组织机构' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of organ
-- ----------------------------
INSERT INTO `organ` VALUES ('1', '手机供应商', 1, 0, NULL, NULL);
INSERT INTO `organ` VALUES ('2', '手机代理商', 2, 1, NULL, NULL);
INSERT INTO `organ` VALUES ('3', '手机总店', 3, 1, NULL, NULL);
INSERT INTO `organ` VALUES ('4', '手机代理商2', 2, 1, NULL, '2');
INSERT INTO `organ` VALUES ('5', '手机门店1', 3, 1, NULL, '3');
INSERT INTO `organ` VALUES ('6', '手机门店2', 3, 1, NULL, '3');
INSERT INTO `organ` VALUES ('7', '手机门店3', 3, 1, NULL, '3');

-- ----------------------------
-- Table structure for organ_detail
-- ----------------------------
DROP TABLE IF EXISTS `organ_detail`;
CREATE TABLE `organ_detail`  (
  `id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `organ` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '机构id',
  `corporate` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '法人信息',
  `license` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '营业执照编号',
  `license_path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '营业执照图片地址',
  `province` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '省',
  `city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '市',
  `county` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '县',
  `addr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '具体地址',
  `manager` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '店长id/联系人',
  `mobile` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '电话',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_organ_detail_organ`(`organ`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '机构详情' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for resource
-- ----------------------------
DROP TABLE IF EXISTS `resource`;
CREATE TABLE `resource`  (
  `id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '资源名称',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '资源地址',
  `appcode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '所属应用',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_resource_url`(`url`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '资源' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of resource
-- ----------------------------
INSERT INTO `resource` VALUES ('1', '添加员工', '/user/add', 'agency');
INSERT INTO `resource` VALUES ('2', '删除员工', '/user/delete', 'agency');
INSERT INTO `resource` VALUES ('3', '添加商品', '/commodity/add', 'agency');
INSERT INTO `resource` VALUES ('4', '商品信息', '/commodity/list', 'agency');
INSERT INTO `resource` VALUES ('5', '测试', '/test', 'agency');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色名称',
  `type` int(11) NOT NULL COMMENT '角色类型，超级2公用1私有0',
  `appcode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属应用',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_role_appcode`(`appcode`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '营业员', 1, '');
INSERT INTO `role` VALUES ('2', '店长', 2, '');
INSERT INTO `role` VALUES ('5', '管理员', 1, NULL);

-- ----------------------------
-- Table structure for role_action_resource
-- ----------------------------
DROP TABLE IF EXISTS `role_action_resource`;
CREATE TABLE `role_action_resource`  (
  `role` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色id',
  `action` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '操作id',
  `resource` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '资源id',
  PRIMARY KEY (`role`, `action`, `resource`) USING BTREE,
  INDEX `idx_role_action_resource_role`(`role`) USING BTREE,
  INDEX `idx_role_action_resource_action`(`action`) USING BTREE,
  INDEX `idx_role_action_resource_resource`(`resource`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_action_resource
-- ----------------------------
INSERT INTO `role_action_resource` VALUES ('1', '1', '1');
INSERT INTO `role_action_resource` VALUES ('1', '1', '3');
INSERT INTO `role_action_resource` VALUES ('1', '1', '4');
INSERT INTO `role_action_resource` VALUES ('1', '2', '2');
INSERT INTO `role_action_resource` VALUES ('2', '3', '3');
INSERT INTO `role_action_resource` VALUES ('5', 'default', '5');

-- ----------------------------
-- Table structure for role_users
-- ----------------------------
DROP TABLE IF EXISTS `role_users`;
CREATE TABLE `role_users`  (
  `role` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色id',
  `userid` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户id',
  PRIMARY KEY (`role`, `userid`) USING BTREE,
  INDEX `idx_role_users_role`(`role`) USING BTREE,
  INDEX `idx_role_users_userid`(`userid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色用户关系表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_users
-- ----------------------------
INSERT INTO `role_users` VALUES ('1', '1');
INSERT INTO `role_users` VALUES ('1', '2');
INSERT INTO `role_users` VALUES ('1', '3');
INSERT INTO `role_users` VALUES ('1', '4');
INSERT INTO `role_users` VALUES ('5', '5');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户名',
  `fullname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '姓名',
  `mobile` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '手机号码',
  `organ` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属机构',
  `code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '最近生成的验证码',
  `code_time` timestamp(0) NULL DEFAULT NULL COMMENT '最近验证码生成的时间',
  `enabled` int(11) NULL DEFAULT NULL COMMENT '是否可用',
  `create_time` timestamp(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT NULL COMMENT '修改时间',
  `update_userid` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '最后修改人',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_users_mobile`(`mobile`) USING BTREE,
  INDEX `idx_users_name`(`name`) USING BTREE,
  INDEX `idx_users_create_time`(`create_time`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户基本信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'zhangsan', '张三', '13333333333', '7', '739083', '2019-06-14 18:21:04', NULL, '2019-06-19 15:16:08', '2019-06-18 14:01:15', '5');
INSERT INTO `users` VALUES ('2', 'lisi', '李四', '13222222222', '5', '290736', '2019-06-10 03:12:12', NULL, '2019-06-19 15:16:08', '2019-06-18 14:01:57', '5');
INSERT INTO `users` VALUES ('3', 'wangwu', '王五', '13111111111', '6', NULL, NULL, NULL, '2019-06-19 15:16:08', '2019-06-18 14:02:57', '5');
INSERT INTO `users` VALUES ('4', 'huang', '黄', '17683861747', '7', '211430', '2019-06-19 11:17:41', NULL, '2019-06-19 15:16:08', '2019-06-18 14:03:17', '1');
INSERT INTO `users` VALUES ('5', 'du', '杜', '18857193039', '3', '111111', '2019-06-20 16:36:04', NULL, '2019-06-20 11:05:17', '2019-06-19 15:16:04', '5');

-- ----------------------------
-- Table structure for users_detail
-- ----------------------------
DROP TABLE IF EXISTS `users_detail`;
CREATE TABLE `users_detail`  (
  `id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `userid` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `last_login_ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '最后登录ip',
  `last_login_time` timestamp(0) NULL DEFAULT NULL COMMENT '最后登录时间',
  `login_times` int(11) NULL DEFAULT NULL COMMENT '每天连续多少次锁定',
  `login_error_time` timestamp(0) NULL DEFAULT NULL COMMENT '登录失败时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_users_detail_userid`(`userid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户详情' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users_detail
-- ----------------------------
INSERT INTO `users_detail` VALUES ('1', NULL, '192', '2019-06-14 18:20:58', 7, '2019-06-14 18:13:09');
INSERT INTO `users_detail` VALUES ('2', NULL, '192', '2019-06-11 11:07:48', 1, '2019-06-11 15:00:12');
INSERT INTO `users_detail` VALUES ('3', '5', '192', '2019-06-11 15:35:08', 0, '2019-06-11 15:35:08');

SET FOREIGN_KEY_CHECKS = 1;
