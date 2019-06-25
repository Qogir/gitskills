/*
 Navicat Premium Data Transfer

 Source Server         : lemuji
 Source Server Type    : MySQL
 Source Server Version : 80016
 Source Host           : 192.168.1.41:3306
 Source Schema         : supply

 Target Server Type    : MySQL
 Target Server Version : 80016
 File Encoding         : 65001

 Date: 20/06/2019 09:29:09
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for commodity
-- ----------------------------
DROP TABLE IF EXISTS `commodity`;
CREATE TABLE `commodity`  (
  `id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品编号',
  `barcode` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '条码',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  `type` int(11) NULL DEFAULT NULL COMMENT '商品一级分类',
  `type1` int(11) NULL DEFAULT NULL COMMENT '商品二级分类',
  `image` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片目录地址',
  `create_time` timestamp(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT NULL COMMENT '修改时间',
  `update_userid` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '最后修改人',
  `status` int(11) NULL DEFAULT NULL COMMENT '商品状态，0待上架1	已上架2已售磬3已下架',
  `bid` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'business id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商品信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of commodity
-- ----------------------------
INSERT INTO `commodity` VALUES ('f78f4d0a959941b3a688837b8f0c2499', '123', '苹果手机', 1, 2, 'http://www.baidu.com', '2019-06-19 14:58:43', '2019-06-19 15:15:26', '1', 0, '1');

-- ----------------------------
-- Table structure for commodity_detail
-- ----------------------------
DROP TABLE IF EXISTS `commodity_detail`;
CREATE TABLE `commodity_detail`  (
  `id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'sku编号',
  `commodity` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品编号',
  `sku1` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '规格值',
  `sku2` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sku3` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `barcode` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '规格条码',
  `retail_price` float NULL DEFAULT NULL COMMENT '售价',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商品sku信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of commodity_detail
-- ----------------------------
INSERT INTO `commodity_detail` VALUES ('42c15ea3a46f4894baafe7d6e754a897', 'f78f4d0a959941b3a688837b8f0c2499', '白色', '128', NULL, '1230001', 1);
INSERT INTO `commodity_detail` VALUES ('5995765b6fb3468f98d1fd979122b41e', 'f78f4d0a959941b3a688837b8f0c2499', '红色', '128', NULL, '1230001', 1);
INSERT INTO `commodity_detail` VALUES ('6aadd4aeecb44fce812697ab42b0d51d', 'f78f4d0a959941b3a688837b8f0c2499', '白色', '64', NULL, '123001', 1);
INSERT INTO `commodity_detail` VALUES ('81caf341819140f7bad702e3b6341e21', 'f78f4d0a959941b3a688837b8f0c2499', '红色', '64', NULL, '123001', 1);

-- ----------------------------
-- Table structure for commodity_sku
-- ----------------------------
DROP TABLE IF EXISTS `commodity_sku`;
CREATE TABLE `commodity_sku`  (
  `id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'sku编号',
  `commodity` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品编号',
  `sku1` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '规格名',
  `sku2` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sku3` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商品sku' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of commodity_sku
-- ----------------------------
INSERT INTO `commodity_sku` VALUES ('2f1b798e0b9c4b8b8882706a9d3f5f37', 'f78f4d0a959941b3a688837b8f0c2499', '颜色', '容量', NULL);

-- ----------------------------
-- Table structure for commodity_trans
-- ----------------------------
DROP TABLE IF EXISTS `commodity_trans`;
CREATE TABLE `commodity_trans`  (
  `id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'sku编号',
  `commodity` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品编号',
  `trans_type` int(11) NULL DEFAULT NULL COMMENT '运费类型，0统一邮费，1运费模板',
  `trans_template` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '运费模板id',
  `trans_fee` int(11) NULL DEFAULT NULL COMMENT '统一邮费的运费',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商品运费信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of commodity_trans
-- ----------------------------
INSERT INTO `commodity_trans` VALUES ('69e4d74c4fea41fa9d95895c180aedae', 'f78f4d0a959941b3a688837b8f0c2499', 0, NULL, 10);

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`  (
  `id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单编号',
  `create_time` timestamp(0) NULL DEFAULT NULL COMMENT '创建时间（下单时间）',
  `update_time` timestamp(0) NULL DEFAULT NULL COMMENT '修改时间',
  `update_userid` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '最后修改人',
  `total_price` float NULL DEFAULT NULL COMMENT '总价（不含运费）',
  `status` int(11) NULL DEFAULT NULL COMMENT '订单状态，0待支付1	待发货2已发货3交易成功4已关闭',
  `trans_type` int(11) NULL DEFAULT NULL COMMENT '配送方式，0自提1快递2物流3送货上门',
  `bid` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'business id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订单信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for order_commodity
-- ----------------------------
DROP TABLE IF EXISTS `order_commodity`;
CREATE TABLE `order_commodity`  (
  `id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '编号',
  `order_id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单编号',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品名称',
  `barcode` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品条码',
  `image` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片目录地址',
  `sku_id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'sku编号',
  `sku1` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sku2` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sku3` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sku_barcode` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '规格条码',
  `retail_price` float NULL DEFAULT NULL COMMENT '售价',
  `deal_price` float NULL DEFAULT NULL COMMENT '成交价',
  `counts` int(11) NULL DEFAULT NULL COMMENT '数量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订单商品信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for order_trans
-- ----------------------------
DROP TABLE IF EXISTS `order_trans`;
CREATE TABLE `order_trans`  (
  `id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '编号',
  `order_id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单编号',
  `fee` float NULL DEFAULT NULL COMMENT '运费',
  `company` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '物流公司',
  `billno` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '运单号',
  `addr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货地址',
  `contact` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系人',
  `mobile` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `track` tinytext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '物流进度',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订单物流信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for order_trans_track
-- ----------------------------
DROP TABLE IF EXISTS `order_trans_track`;
CREATE TABLE `order_trans_track`  (
  `id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '编号',
  `trans_id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'trans编号',
  `info` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '物流进度信息',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订单物流进度信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for trans_template
-- ----------------------------
DROP TABLE IF EXISTS `trans_template`;
CREATE TABLE `trans_template`  (
  `id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  `type` int(11) NULL DEFAULT NULL COMMENT '计费方式',
  `bid` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'business id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '运费模板' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for trans_template_detail
-- ----------------------------
DROP TABLE IF EXISTS `trans_template_detail`;
CREATE TABLE `trans_template_detail`  (
  `id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `template_id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '模板id',
  `area_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '区域编号',
  `area_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '区域名称',
  `first` int(11) NULL DEFAULT NULL COMMENT '首件',
  `first_fee` float NULL DEFAULT NULL COMMENT '首件运费',
  `follow` int(11) NULL DEFAULT NULL COMMENT '续件',
  `follow_fee` float NULL DEFAULT NULL COMMENT '续费',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '运费模板详情' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
