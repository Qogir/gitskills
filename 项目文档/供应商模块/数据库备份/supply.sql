/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50723
Source Host           : localhost:3306
Source Database       : supply

Target Server Type    : MYSQL
Target Server Version : 50723
File Encoding         : 65001

Date: 2019-07-17 11:15:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `commodity`
-- ----------------------------
DROP TABLE IF EXISTS `commodity`;
CREATE TABLE `commodity` (
  `id` char(32) NOT NULL COMMENT '商品编号',
  `barcode` varchar(100) DEFAULT NULL COMMENT '条码',
  `name` varchar(200) NOT NULL COMMENT '名称',
  `type` varchar(50) DEFAULT NULL COMMENT '商品一级分类',
  `type1` varchar(50) DEFAULT NULL COMMENT '商品二级分类',
  `image` varchar(200) DEFAULT NULL COMMENT '图片目录地址',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `update_userid` char(32) DEFAULT NULL COMMENT '最后修改人',
  `status` int(11) DEFAULT NULL COMMENT '商品状态，0待上架1	已上架2已售磬3已下架',
  `bid` char(32) DEFAULT NULL COMMENT 'business id',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_commodity_name` (`name`) USING BTREE,
  KEY `idx_commodity_barcode` (`barcode`) USING BTREE,
  KEY `idx_commodity_bid` (`bid`) USING BTREE,
  KEY `idx_commodity_create_time` (`create_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='商品信息';

-- ----------------------------
-- Records of commodity
-- ----------------------------
INSERT INTO `commodity` VALUES ('1', '1', '电视机', '1', '2', '2019/06/25/123/0.png', '2019-07-05 14:07:58', '2019-07-15 11:13:40', '1', '0', '1');
INSERT INTO `commodity` VALUES ('123', '123', '苹果手机update', '1', null, 'http://www.baidu.com', '2019-07-09 14:02:32', '2019-07-09 14:48:24', '1', '1', '1');
INSERT INTO `commodity` VALUES ('2', '2', '电视机', '1', '2', '2019/06/25/123/0.png', '2019-07-15 11:14:26', '2019-07-15 13:44:56', '1', '1', '1');

-- ----------------------------
-- Table structure for `commodity_detail`
-- ----------------------------
DROP TABLE IF EXISTS `commodity_detail`;
CREATE TABLE `commodity_detail` (
  `id` char(32) NOT NULL COMMENT 'sku编号',
  `commodity` char(32) NOT NULL COMMENT '商品编号',
  `sku1` varchar(100) DEFAULT NULL COMMENT '规格值',
  `sku2` varchar(100) DEFAULT NULL,
  `sku3` varchar(100) DEFAULT NULL,
  `barcode` varchar(100) DEFAULT NULL COMMENT '规格条码',
  `retail_price` float DEFAULT NULL COMMENT '售价',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_commodity_detail_commodity` (`commodity`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='商品sku信息';

-- ----------------------------
-- Records of commodity_detail
-- ----------------------------
INSERT INTO `commodity_detail` VALUES ('2186f7f504cf46e0909a723caf882e9b', '123', '白色update', '128', null, '1230001', '1');
INSERT INTO `commodity_detail` VALUES ('25badf50bd7c44fdacec0f9466e93867', '123', '红色update', '128', null, '1230001', '1');
INSERT INTO `commodity_detail` VALUES ('660d2eed6a3a4b999d06956fefd49a51', '123', '白色update', '64', null, '123001', '1');
INSERT INTO `commodity_detail` VALUES ('71c93be5ea38467c80635d77cb6b6a8d', '2', '1', '2', '3', '123001', '10');
INSERT INTO `commodity_detail` VALUES ('c175c5d17a89434caf3195aed61954c4', '123', '红色update', '64', null, '123001', '1');
INSERT INTO `commodity_detail` VALUES ('c3b6c43839854151a8a4b285477410aa', '1', '白色', '64G', '4.7', '123001', '10');

-- ----------------------------
-- Table structure for `commodity_sku`
-- ----------------------------
DROP TABLE IF EXISTS `commodity_sku`;
CREATE TABLE `commodity_sku` (
  `id` char(32) NOT NULL COMMENT 'sku编号',
  `commodity` char(32) NOT NULL COMMENT '商品编号',
  `sku1` varchar(50) DEFAULT NULL COMMENT '规格名',
  `sku2` varchar(50) DEFAULT NULL,
  `sku3` varchar(50) DEFAULT NULL,
  `sku1_value` varchar(50) DEFAULT NULL COMMENT '规格值1',
  `sku2_value` varchar(50) DEFAULT NULL COMMENT '规格值2',
  `sku3_value` varchar(50) DEFAULT NULL COMMENT '规格值3',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_commodity_sku_commodity` (`commodity`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='商品sku';

-- ----------------------------
-- Records of commodity_sku
-- ----------------------------
INSERT INTO `commodity_sku` VALUES ('146b8f86ea174d278109e821dc0e50aa', '1', '颜色', '容量', '尺寸', '白色,红色,黄色', '64G,128G,256G', '4.7,5.0,5.3');
INSERT INTO `commodity_sku` VALUES ('42945de47dea4a9a9577e9b27151cf0b', '2', '1', '2', '3', null, null, null);
INSERT INTO `commodity_sku` VALUES ('a7cf4377f44a49b9bf7b56b36d49efbf', '123', '颜色update', '容量update', null, null, null, null);

-- ----------------------------
-- Table structure for `commodity_trans`
-- ----------------------------
DROP TABLE IF EXISTS `commodity_trans`;
CREATE TABLE `commodity_trans` (
  `id` char(32) NOT NULL COMMENT 'sku编号',
  `commodity` char(32) NOT NULL COMMENT '商品编号',
  `trans_type` int(11) DEFAULT NULL COMMENT '运费类型，0统一邮费，1运费模板',
  `trans_template` char(32) DEFAULT NULL COMMENT '运费模板id',
  `trans_fee` int(11) DEFAULT NULL COMMENT '统一邮费的运费',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_commodity_trans_commodity` (`commodity`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='商品运费信息';

-- ----------------------------
-- Records of commodity_trans
-- ----------------------------
INSERT INTO `commodity_trans` VALUES ('425fd57f72f3475bbdddcb30eb3eb4bf', '2', '0', null, '20');
INSERT INTO `commodity_trans` VALUES ('66cbe355108247c1b5cc32648103ea80', '123', '0', null, '100');
INSERT INTO `commodity_trans` VALUES ('935adf5c88f7497eab231bfd76ca6500', '1', '0', '模板id', '20');

-- ----------------------------
-- Table structure for `order`
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `id` bigint(32) NOT NULL COMMENT '订单编号',
  `total_price` float DEFAULT NULL COMMENT '总价（不含运费）',
  `status` int(11) DEFAULT NULL COMMENT '订单状态，0待支付1	待发货2已发货3交易成功4已关闭',
  `trans_type` int(11) DEFAULT NULL COMMENT '配送方式，0自提1快递2物流3送货上门',
  `bid` char(32) DEFAULT NULL COMMENT 'business id',
  `agency_bid` char(32) DEFAULT NULL COMMENT '代理商bid',
  `pay_time` timestamp NULL DEFAULT NULL COMMENT '支付时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间（下单时间）',
  `create_userid` char(32) DEFAULT NULL COMMENT '创建人id',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `update_userid` char(32) DEFAULT NULL COMMENT '最后修改人',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_order_bid` (`bid`) USING BTREE,
  KEY `idx_order_create_time` (`create_time`) USING BTREE,
  KEY `idx_order_agency_bid` (`agency_bid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='订单信息';

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES ('69835063788621824', '40', '3', null, '1', '1', '2019-07-15 13:07:08', '2019-07-12 16:59:34', '1', '2019-07-12 16:59:34', '1');

-- ----------------------------
-- Table structure for `order_commodity`
-- ----------------------------
DROP TABLE IF EXISTS `order_commodity`;
CREATE TABLE `order_commodity` (
  `id` char(32) NOT NULL COMMENT '编号',
  `order_id` bigint(32) NOT NULL COMMENT '订单编号',
  `name` varchar(200) NOT NULL COMMENT '商品名称',
  `barcode` varchar(100) DEFAULT NULL COMMENT '商品条码',
  `image` varchar(200) DEFAULT NULL COMMENT '图片目录地址',
  `sku_id` char(32) NOT NULL COMMENT 'sku编号',
  `sku1` varchar(100) DEFAULT NULL,
  `sku2` varchar(100) DEFAULT NULL,
  `sku3` varchar(100) DEFAULT NULL,
  `sku_barcode` varchar(100) DEFAULT NULL COMMENT '规格条码',
  `retail_price` float DEFAULT NULL COMMENT '售价',
  `deal_price` float DEFAULT NULL COMMENT '成交价',
  `let_price` float DEFAULT NULL COMMENT '让利，优惠',
  `counts` int(11) DEFAULT NULL COMMENT '数量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='订单商品信息';

-- ----------------------------
-- Records of order_commodity
-- ----------------------------
INSERT INTO `order_commodity` VALUES ('8736cd7ed5f7452dbbc3042390f47725', '69835063788621824', '手机', '123', '11', 'a7cf4377f44a49b9bf7b56b36d49efbf', 'x3', null, null, '101001', '10', '10', null, '2');
INSERT INTO `order_commodity` VALUES ('9ac14777ffc04c0e81793f88ebdd29d5', '69835063788621824', '手机', '123', '11', 'a7cf4377f44a49b9bf7b56b36d49efbf', '3', null, null, '123001', '10', '10', null, '2');

-- ----------------------------
-- Table structure for `order_trans`
-- ----------------------------
DROP TABLE IF EXISTS `order_trans`;
CREATE TABLE `order_trans` (
  `id` char(32) NOT NULL COMMENT '编号',
  `order_id` bigint(32) NOT NULL COMMENT '订单编号',
  `fee` float DEFAULT NULL COMMENT '运费',
  `company` varchar(50) DEFAULT NULL COMMENT '物流公司编号',
  `company_name` varchar(200) DEFAULT NULL COMMENT '物流公司名称',
  `billno` varchar(50) DEFAULT NULL COMMENT '运单号',
  `addr` varchar(200) DEFAULT NULL COMMENT '收货地址',
  `contact` varchar(50) DEFAULT NULL COMMENT '联系人',
  `mobile` varchar(50) DEFAULT NULL COMMENT '手机号',
  `track` tinytext COMMENT '物流进度',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_order_trans_order_id` (`order_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='订单物流信息';

-- ----------------------------
-- Records of order_trans
-- ----------------------------

-- ----------------------------
-- Table structure for `stock_goods`
-- ----------------------------
DROP TABLE IF EXISTS `stock_goods`;
CREATE TABLE `stock_goods` (
  `id` char(32) NOT NULL COMMENT '商品编号',
  `name` varchar(200) NOT NULL COMMENT '名称',
  `type` varchar(50) DEFAULT NULL COMMENT '分类',
  `barcode` varchar(100) NOT NULL COMMENT '条码',
  `image` varchar(200) DEFAULT NULL COMMENT '图片目录地址',
  `supply_id` char(32) NOT NULL COMMENT '供应商id',
  `supply_name` varchar(200) NOT NULL COMMENT '供应商id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `update_userid` char(32) DEFAULT NULL COMMENT '最后修改人',
  `bid` char(32) DEFAULT NULL COMMENT 'business id',
  KEY `idx_stock_goods_bid` (`bid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='进货单';

-- ----------------------------
-- Records of stock_goods
-- ----------------------------

-- ----------------------------
-- Table structure for `stock_goods_detail`
-- ----------------------------
DROP TABLE IF EXISTS `stock_goods_detail`;
CREATE TABLE `stock_goods_detail` (
  `id` char(32) NOT NULL COMMENT 'sku编号',
  `goods_id` char(32) NOT NULL COMMENT '进货单商品编号',
  `sku1` char(32) DEFAULT NULL COMMENT '规格值',
  `sku2` char(32) DEFAULT NULL,
  `sku3` char(32) DEFAULT NULL,
  `barcode` varchar(100) DEFAULT NULL COMMENT '规格条码',
  `retail_price` float DEFAULT NULL COMMENT '单价',
  `counts` int(11) DEFAULT NULL COMMENT '数量',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_stock_goods_detail_goods_id` (`goods_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='进货单详情';

-- ----------------------------
-- Records of stock_goods_detail
-- ----------------------------

-- ----------------------------
-- Table structure for `stock_goods_sku`
-- ----------------------------
DROP TABLE IF EXISTS `stock_goods_sku`;
CREATE TABLE `stock_goods_sku` (
  `id` char(32) NOT NULL COMMENT 'sku编号',
  `goods_id` char(32) NOT NULL COMMENT '进货单商品编号',
  `sku1` varchar(50) DEFAULT NULL COMMENT '规格名',
  `sku2` varchar(50) DEFAULT NULL,
  `sku3` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_stock_goods_sku_goods_id` (`goods_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='进货单SKU';

-- ----------------------------
-- Records of stock_goods_sku
-- ----------------------------

-- ----------------------------
-- Table structure for `trans_template`
-- ----------------------------
DROP TABLE IF EXISTS `trans_template`;
CREATE TABLE `trans_template` (
  `id` char(32) NOT NULL,
  `name` varchar(100) NOT NULL COMMENT '名称',
  `type` int(11) DEFAULT NULL COMMENT '计费方式',
  `bid` char(32) DEFAULT NULL COMMENT 'business id',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_trans_template_bid` (`bid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='运费模板';

-- ----------------------------
-- Records of trans_template
-- ----------------------------
INSERT INTO `trans_template` VALUES ('591011baacd143d0affa732b5a8502a2', '华北地区', '1', '1');

-- ----------------------------
-- Table structure for `trans_template_detail`
-- ----------------------------
DROP TABLE IF EXISTS `trans_template_detail`;
CREATE TABLE `trans_template_detail` (
  `id` char(32) NOT NULL,
  `template_id` char(32) NOT NULL COMMENT '模板id',
  `area_code` varchar(50) DEFAULT NULL COMMENT '区域编号',
  `area_name` varchar(200) DEFAULT NULL COMMENT '区域名称',
  `first` int(11) DEFAULT NULL COMMENT '首件',
  `first_fee` float DEFAULT NULL COMMENT '首件运费',
  `follow` int(11) DEFAULT NULL COMMENT '续件',
  `follow_fee` float DEFAULT NULL COMMENT '续费',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_trans_template_detail_template_id` (`template_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='运费模板详情';

-- ----------------------------
-- Records of trans_template_detail
-- ----------------------------
INSERT INTO `trans_template_detail` VALUES ('29c48218baec49eb875f3a5643015fb2', '591011baacd143d0affa732b5a8502a2', '110000', '北京', '1', '10', '1', '10');
