/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50723
Source Host           : localhost:3306
Source Database       : express

Target Server Type    : MYSQL
Target Server Version : 50723
File Encoding         : 65001

Date: 2019-07-17 11:14:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `company`
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company` (
  `code` varchar(50) NOT NULL COMMENT '代号',
  `name` varchar(200) NOT NULL COMMENT '名称',
  PRIMARY KEY (`code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='快递公司信息';

-- ----------------------------
-- Records of company
-- ----------------------------
INSERT INTO `company` VALUES ('baishiwuliu', '百世物流');
INSERT INTO `company` VALUES ('bjemstckj', '北京EMS');
INSERT INTO `company` VALUES ('debangwuliu', '德邦');
INSERT INTO `company` VALUES ('ems', 'EMS');
INSERT INTO `company` VALUES ('emsguoji', 'EMS-国际件');
INSERT INTO `company` VALUES ('ganzhongnengda', '能达');
INSERT INTO `company` VALUES ('guotongkuaidi', '国通');
INSERT INTO `company` VALUES ('huitongkuaidi', '百世汇通');
INSERT INTO `company` VALUES ('jd', '京东');
INSERT INTO `company` VALUES ('quanfengkuaidi', '全峰');
INSERT INTO `company` VALUES ('shentong', '申通');
INSERT INTO `company` VALUES ('shunfeng', '顺丰');
INSERT INTO `company` VALUES ('suer', '速尔');
INSERT INTO `company` VALUES ('tiantian', '天天');
INSERT INTO `company` VALUES ('youshuwuliu', '优速');
INSERT INTO `company` VALUES ('youzhengguoji', '国际包裹');
INSERT INTO `company` VALUES ('youzhengguonei', '邮政包裹/平邮');
INSERT INTO `company` VALUES ('yuantong', '圆通');
INSERT INTO `company` VALUES ('yunda', '韵达');
INSERT INTO `company` VALUES ('zengyisudi', '增益');
INSERT INTO `company` VALUES ('zhaijisong', '宅急送');
INSERT INTO `company` VALUES ('zhongtiewuliu', '中铁快运');
INSERT INTO `company` VALUES ('zhongtong', '中通');
INSERT INTO `company` VALUES ('ztky', '中铁物流');

-- ----------------------------
-- Table structure for `destresult`
-- ----------------------------
DROP TABLE IF EXISTS `destresult`;
CREATE TABLE `destresult` (
  `id` char(32) NOT NULL COMMENT '主键id',
  `message` varchar(255) DEFAULT NULL COMMENT '消息体',
  `state` varchar(20) DEFAULT NULL COMMENT '快递单当前状态，包括0在途，1揽收，2疑难，3签收，4退签，5派件，6退回等7个状态',
  `status` varchar(50) DEFAULT NULL COMMENT '通讯状态',
  `condition` varchar(50) DEFAULT NULL COMMENT '快递单明细状态标记',
  `ischeck` varchar(50) DEFAULT NULL COMMENT '是否签收标记',
  `com` varchar(50) DEFAULT NULL COMMENT '快递公司编码,一律用小写字母',
  `nu` varchar(50) DEFAULT NULL COMMENT '单号',
  `data` longtext COMMENT '物流信息json格式',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='最新的目的国家的查询结果';

-- ----------------------------
-- Records of destresult
-- ----------------------------
INSERT INTO `destresult` VALUES ('74b10555406243aab7b7bc0a5e2a7897', null, '5', '200', null, '1', 'yuantong', '11111', '[{\"ftime\":\"2012-08-28 16:33:19 \",\"areaCode\":\"3100000000000\",\"areaName\":\"上海市0\",\"context\":\"上海分拨中心/装件入车扫描 0\",\"time\":\"2012-08-28 16:33:19 \",\"status\":\"在途0\"},{\"ftime\":\"2012-08-28 16:33:19 \",\"areaCode\":\"3100000000001\",\"areaName\":\"上海市1\",\"context\":\"上海分拨中心/装件入车扫描 1\",\"time\":\"2012-08-28 16:33:19 \",\"status\":\"在途1\"},{\"ftime\":\"2012-08-28 16:33:19 \",\"areaCode\":\"3100000000002\",\"areaName\":\"上海市2\",\"context\":\"上海分拨中心/装件入车扫描 2\",\"time\":\"2012-08-28 16:33:19 \",\"status\":\"在途2\"}]', '2019-07-03 13:10:37', '2019-07-03 15:55:35');

-- ----------------------------
-- Table structure for `info`
-- ----------------------------
DROP TABLE IF EXISTS `info`;
CREATE TABLE `info` (
  `id` char(32) NOT NULL COMMENT '主键id',
  `status` varchar(20) DEFAULT NULL COMMENT '监控状态:polling:监控中，shutdown:结束，abort:中止，updateall：重新推送',
  `message` varchar(255) DEFAULT NULL COMMENT '监控状态相关消息，如:3天查询无记录，60天无变化',
  `auto_check` varchar(255) DEFAULT NULL COMMENT '快递公司编码是否出错，0为本推送信息对应的是贵司提交的原始快递公司编码，1为本推送信息对应的是我方纠正后的新的快递公司编码。',
  `com_old` varchar(255) DEFAULT NULL COMMENT '提交的原始的快递公司编码。详细见autoCheck后说明。若开启了国际版（即在订阅请求中增加字段interCom=1），则回调请求中暂无此字段',
  `com_new` varchar(255) DEFAULT NULL COMMENT '纠正后的新的快递公司编码。详细见autoCheck后说明。若开启了国际版（即在订阅请求中增加字段interCom=1），则回调请求中暂无此字段',
  `num` varchar(50) DEFAULT NULL COMMENT '快递单号',
  `inter_com` tinyint(10) DEFAULT NULL COMMENT '是否有境外物流信息,0是无，1是有',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='快递信息';

-- ----------------------------
-- Records of info
-- ----------------------------
INSERT INTO `info` VALUES ('fda9b73ab5e2486b9d11ce1c518372a1', '200', null, null, 'yuantong', 'shunfeng', '11111', '0', '2019-07-09 13:34:57', '2019-07-09 13:43:22');

-- ----------------------------
-- Table structure for `lastresult`
-- ----------------------------
DROP TABLE IF EXISTS `lastresult`;
CREATE TABLE `lastresult` (
  `id` char(32) NOT NULL COMMENT '主键id',
  `message` varchar(255) DEFAULT NULL COMMENT '消息体',
  `state` varchar(20) DEFAULT NULL COMMENT '快递单当前状态，包括0在途，1揽收，2疑难，3签收，4退签，5派件，6退回等7个状态',
  `status` varchar(50) DEFAULT NULL COMMENT '通讯状态',
  `condition` varchar(50) DEFAULT NULL COMMENT '快递单明细状态标记',
  `ischeck` varchar(50) DEFAULT NULL COMMENT '是否签收标记',
  `com` varchar(50) DEFAULT NULL COMMENT '快递公司编码,一律用小写字母',
  `nu` varchar(50) DEFAULT NULL COMMENT '单号',
  `data` longtext COMMENT '物流信息',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='最新查询结果';

-- ----------------------------
-- Records of lastresult
-- ----------------------------
INSERT INTO `lastresult` VALUES ('54d872d322ae4045be8cfac2b603a271', null, '1', '200', null, '1', 'yuantong', '11111', '[{\"ftime\":\"2012-08-28 16:33:19 \",\"areaCode\":\"3100000000000\",\"areaName\":\"上海市0\",\"context\":\"上海分拨中心/装件入车扫描 0\",\"time\":\"2012-08-28 16:33:19 \",\"status\":\"在途0\"},{\"ftime\":\"2012-08-28 16:33:19 \",\"areaCode\":\"3100000000001\",\"areaName\":\"上海市1\",\"context\":\"上海分拨中心/装件入车扫描 1\",\"time\":\"2012-08-28 16:33:19 \",\"status\":\"在途1\"},{\"ftime\":\"2012-08-28 16:33:19 \",\"areaCode\":\"3100000000002\",\"areaName\":\"上海市2\",\"context\":\"上海分拨中心/装件入车扫描 2\",\"time\":\"2012-08-28 16:33:19 \",\"status\":\"在途2\"}]', '2019-07-09 13:46:43', '2019-07-09 13:46:44');

-- ----------------------------
-- Table structure for `subscribe`
-- ----------------------------
DROP TABLE IF EXISTS `subscribe`;
CREATE TABLE `subscribe` (
  `id` char(32) NOT NULL COMMENT '主键id',
  `company` varchar(45) DEFAULT NULL COMMENT '订阅的快递公司的编码，一律用小写字母',
  `number` varchar(45) DEFAULT NULL COMMENT '订阅的快递单号，单号的最大长度是32个字符',
  `from` varchar(100) DEFAULT NULL COMMENT '出发地城市',
  `to` varchar(100) DEFAULT NULL COMMENT '目的地城市',
  `key` varchar(100) DEFAULT NULL COMMENT '授权码',
  `callbackurl` varchar(100) DEFAULT NULL COMMENT '回调接口的地址',
  `salt` varchar(50) DEFAULT NULL COMMENT '签名',
  `resultv2` varchar(20) DEFAULT NULL COMMENT '添加此字段表示开通行政区域解析功能',
  `autoCom` varchar(20) DEFAULT NULL COMMENT '添加此字段且将此值设为1，则表示开始智能判断单号所属公司的功能',
  `interCom` varchar(20) DEFAULT NULL COMMENT '添加此字段表示开启国际版',
  `departureCountry` varchar(20) DEFAULT NULL COMMENT '出发国家编码',
  `departureCom` varchar(20) DEFAULT NULL COMMENT '出发的快递公司的编码',
  `destinationCountry` varchar(20) DEFAULT NULL COMMENT '目的国家编码',
  `destinationCom` varchar(20) DEFAULT NULL COMMENT '目的的快递公司的编码',
  `phone` varchar(20) DEFAULT NULL COMMENT '收件人或寄件人的手机号（顺丰单号必填）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='订阅信息';

-- ----------------------------
-- Records of subscribe
-- ----------------------------
INSERT INTO `subscribe` VALUES ('3bcf3f037d6b4513ba02d499c34ddf73', 'yuantong', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
