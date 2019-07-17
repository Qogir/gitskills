/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50723
Source Host           : localhost:3306
Source Database       : pay

Target Server Type    : MYSQL
Target Server Version : 50723
File Encoding         : 65001

Date: 2019-07-17 11:14:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `bestpay_account`
-- ----------------------------
DROP TABLE IF EXISTS `bestpay_account`;
CREATE TABLE `bestpay_account` (
  `user_id` char(32) NOT NULL,
  `org_login_code` varchar(64) DEFAULT NULL COMMENT '商户在翼支付的登录号',
  `plat_code` bigint(32) DEFAULT NULL COMMENT '商户在翼支付的平台编号',
  `plat_code2` bigint(32) DEFAULT NULL COMMENT '1.0割接传过来的客户的平台号，对内1.0使用，外部商户无此字段',
  `cust_code` varchar(64) DEFAULT NULL COMMENT '商户号',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='支付';

-- ----------------------------
-- Records of bestpay_account
-- ----------------------------
INSERT INTO `bestpay_account` VALUES ('test_user_id', 'test_org_login_code', '58468754', '5846875486', 'test_cust_code', '2019-07-12 16:24:25', '2019-07-12 16:24:26');

-- ----------------------------
-- Table structure for `bestpay_netpay`
-- ----------------------------
DROP TABLE IF EXISTS `bestpay_netpay`;
CREATE TABLE `bestpay_netpay` (
  `id` char(32) NOT NULL COMMENT '主键id',
  `user_id` char(32) NOT NULL COMMENT '支付方式  限定值：1|3 1:收银台支付',
  `org_login_code` varchar(64) DEFAULT NULL COMMENT '商户在翼支付的登录号',
  `plat_code` bigint(32) DEFAULT NULL COMMENT '商户在翼支付的平台编号',
  `plat_code2` bigint(32) DEFAULT NULL COMMENT '1.0割接传过来的客户的平台号，对内1.0使用，外部商户无此字段',
  `bid` char(40) DEFAULT NULL COMMENT '商城订单id',
  `order_id` varchar(40) DEFAULT NULL COMMENT '商户生成，需保证唯一',
  `order_amount` bigint(17) DEFAULT NULL COMMENT '订单金额（单位：分）',
  `pay_type` tinyint(2) DEFAULT NULL COMMENT '支付方式  限定值：1|3 1:收银台支付 3:非收银台自定义网银支付',
  `order_status` tinyint(2) DEFAULT NULL COMMENT '订单状态 -2：初始化；-1：处理中；0：失败；1：成功',
  `synnotice_url` longtext COMMENT '支付完成后实时返回支付结果，为空时不进行通知',
  `asynnotice_url` longtext COMMENT '异步通知订单的交易状态，为空时不进行通知',
  `pay_account` varchar(20) DEFAULT NULL COMMENT '银行卡号',
  `card_username` varchar(64) DEFAULT NULL COMMENT '户名',
  `certno` varchar(20) DEFAULT NULL COMMENT '证件号',
  `cert_type` tinyint(2) DEFAULT NULL COMMENT '证件类型 直接支付时客户所选择的银行卡开户时的证件类型',
  `mobile` varchar(11) DEFAULT NULL COMMENT '银行预留手机号',
  `perent_flag` tinyint(2) DEFAULT NULL COMMENT '对公/对私标志 0:对公   1：对私',
  `card_type` tinyint(2) DEFAULT NULL COMMENT '卡类型 限定值：1|2|4|8|  DEB: 借记卡;CRE:贷记卡。当对公/对私标志为对公时，只支持借记卡。',
  `bank_code` varchar(20) DEFAULT NULL COMMENT '银行编码 自定义网银支付时所选择的银行编码',
  `comment1` varchar(120) DEFAULT NULL COMMENT '备注1',
  `comment2` varchar(120) DEFAULT NULL COMMENT '备注2',
  `signstr` text COMMENT '加密串',
  `aeskey` varchar(16) DEFAULT NULL COMMENT 'Aes密钥 Rsa加密',
  `channel` varchar(10) DEFAULT NULL COMMENT '渠道编码 上海理财单点登录必传001，其他一律不传',
  `login_name` varchar(64) DEFAULT NULL COMMENT '统一认证过的单点登录账号（登录号） 上海理财单点登录必传，其他一律不传',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of bestpay_netpay
-- ----------------------------
INSERT INTO `bestpay_netpay` VALUES ('0e510db202064a49ab95317756d02c2b', 'test_user_id', 'test_org_login_code', '58468754', null, 'test_bid', 'test_order_id', null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2019-07-12 16:57:02', '2019-07-12 16:57:02');

-- ----------------------------
-- Table structure for `bestpay_netrecharge`
-- ----------------------------
DROP TABLE IF EXISTS `bestpay_netrecharge`;
CREATE TABLE `bestpay_netrecharge` (
  `id` char(32) NOT NULL COMMENT '主键id',
  `user_id` char(32) NOT NULL COMMENT '用户id',
  `plat_code` bigint(32) DEFAULT NULL COMMENT '商户在翼支付的平台编号',
  `login_code` varchar(64) NOT NULL COMMENT '商户在翼支付的登录号',
  `amount` bigint(17) DEFAULT NULL COMMENT '订单金额 非零正整数',
  `synurl` longtext COMMENT '同步通知URL',
  `asynurl` longtext COMMENT '异步通知URL',
  `order_id` varchar(40) DEFAULT NULL COMMENT '订单号',
  `order_status` tinyint(2) DEFAULT NULL COMMENT '订单状态 -2：初始化；-1：处理中；0：失败；1：成功',
  `perent_flag` tinyint(2) DEFAULT NULL COMMENT '对公/对私标志',
  `comment1` varchar(120) DEFAULT NULL COMMENT '备注1',
  `comment2` varchar(120) DEFAULT NULL COMMENT '备注2',
  `signstr` longtext COMMENT '加密串',
  `aeskey` char(16) DEFAULT NULL COMMENT 'Aes密钥',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='充值';

-- ----------------------------
-- Records of bestpay_netrecharge
-- ----------------------------
INSERT INTO `bestpay_netrecharge` VALUES ('3920215dd7ec431c9c322607cd8f8297', 'test_user_id', '58468754', 'test_org_login_code', '10000', null, null, 'test_order_id', '1', null, null, null, null, null, '2019-07-15 09:30:25', '2019-07-15 09:30:25');

-- ----------------------------
-- Table structure for `bestpay_request_notify`
-- ----------------------------
DROP TABLE IF EXISTS `bestpay_request_notify`;
CREATE TABLE `bestpay_request_notify` (
  `id` char(32) NOT NULL COMMENT '主键id',
  `org_login_code` varchar(64) DEFAULT NULL COMMENT '商户在翼支付的登录号',
  `plat_code` bigint(32) DEFAULT NULL COMMENT '商户在翼支付的平台编号',
  `cust_code` varchar(64) DEFAULT NULL COMMENT '商户号',
  `order_id` varchar(40) DEFAULT NULL COMMENT '商户生成，需保证唯一',
  `trsseq` varchar(32) DEFAULT NULL COMMENT '翼支付订单号',
  `order_amount` bigint(17) DEFAULT NULL COMMENT '订单金额（单位：分）',
  `fee` bigint(17) DEFAULT NULL COMMENT '手续费(单位：分)',
  `trans_date` varchar(19) DEFAULT NULL COMMENT '交易日期',
  `order_status` tinyint(2) DEFAULT NULL COMMENT '订单状态 -2：初始化；-1：处理中；0：失败；1：成功',
  `bank_code` varchar(8) DEFAULT NULL COMMENT '银行编码 ',
  `perent_flag` tinyint(2) DEFAULT NULL COMMENT '对公/对私标志 0:对公   1：对私',
  `comment1` varchar(120) DEFAULT NULL COMMENT '备注1',
  `comment2` varchar(120) DEFAULT NULL COMMENT '备注2',
  `signstr` text COMMENT '加密串',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of bestpay_request_notify
-- ----------------------------
INSERT INTO `bestpay_request_notify` VALUES ('f72455f2360f4036b1f8871bc6ee0d9b', 'test_org_login_code', '58468754', null, 'test_order_id', 'test_trsseq', null, null, null, '1', null, null, null, null, null, '2019-07-15 09:10:15', '2019-07-15 09:10:16');

-- ----------------------------
-- Table structure for `bestpay_withdraw_request`
-- ----------------------------
DROP TABLE IF EXISTS `bestpay_withdraw_request`;
CREATE TABLE `bestpay_withdraw_request` (
  `id` char(32) NOT NULL COMMENT '主键id',
  `org_code` varchar(20) DEFAULT NULL COMMENT '交易商户号 在翼支付运营注册的商户号',
  `req_seq` varchar(32) DEFAULT NULL COMMENT '商户订单号 由商户系统提供的交易流水标识【每次请求都必须不同,用于对账】',
  `req_ip` varchar(15) DEFAULT NULL COMMENT '请求来源ip 请求发起来源ip',
  `req_time` timestamp NULL DEFAULT NULL COMMENT '请求发起时间',
  `notify_url` varchar(255) DEFAULT NULL COMMENT '结果通知地址',
  `ext_order_seq` varchar(32) DEFAULT NULL COMMENT '外部订单号 由商户系统提供的外部系统订单号【当天交易成功或交易中不可复用,交易失败后可以重新发起】',
  `ext_user_id` varchar(32) DEFAULT NULL COMMENT '外部用户标识 由商户提供,一般只是作为查询条件,相当于外部系统的保留或者关联字段',
  `trs_summary` varchar(64) DEFAULT NULL COMMENT '交易摘要 填写购买商品的名称',
  `trs_memo` varchar(128) DEFAULT NULL COMMENT '交易备注 金额大于50000元则必填',
  `trade_amount` bigint(17) DEFAULT NULL COMMENT '交易金额 只能为小于18位的非零正整数,以分为单位,只支持人民币',
  `bank_card_no` varchar(30) DEFAULT NULL COMMENT '银行卡号 与客户绑定的银行卡,提现出的金额充入此银行账号',
  `success` tinyint(2) DEFAULT NULL COMMENT '请求成功标识',
  `error_code` char(6) DEFAULT NULL COMMENT '返回码',
  `error_msg` longtext COMMENT '下单的返回描述。失败的提示信息比较多种,无法确定最大长度',
  `result` longtext COMMENT '返回的结果信息',
  `sign` longtext COMMENT '签文',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `req_seq` (`req_seq`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='提现';

-- ----------------------------
-- Records of bestpay_withdraw_request
-- ----------------------------
INSERT INTO `bestpay_withdraw_request` VALUES ('a43f4408d8104b6fa57309990c708b77', 'test_org_code', 'test_req_seq', null, '2019-07-16 10:19:46', null, null, 'test_user_id', null, null, '100000', null, '1', '下单成功', null, null, 'test_sign', '2019-07-16 10:19:39', '2019-07-16 10:19:39');

-- ----------------------------
-- Table structure for `bestpay_withdraw_result`
-- ----------------------------
DROP TABLE IF EXISTS `bestpay_withdraw_result`;
CREATE TABLE `bestpay_withdraw_result` (
  `id` char(32) NOT NULL COMMENT '主键id',
  `stat_code` char(3) DEFAULT NULL COMMENT '交易状态编码',
  `result_code` char(6) DEFAULT NULL COMMENT '交易结果编码',
  `result_msg` longtext COMMENT '交易结果描述',
  `sign` varchar(64) DEFAULT NULL COMMENT '签文 结果加签签文,用于验签',
  `req_seq` bigint(32) DEFAULT NULL COMMENT '商户订单号 由商户系统提供的交易流水标识【每次请求都必须不同,用于对账】',
  `ext_order_seq` varchar(32) DEFAULT NULL COMMENT '外部订单号 由商户系统提供的外部系统订单号【当天交易成功或交易中不可复用,交易失败后可以重新发起】',
  `order_no` bigint(32) DEFAULT NULL COMMENT '翼支付订单号',
  `core_order_code` bigint(32) DEFAULT NULL COMMENT '翼支付支付流水号',
  `trade_amount` bigint(17) DEFAULT NULL COMMENT '交易金额 请求发起的交易金额(不含手续费),以分为单位,币种为人民币',
  `req_time` timestamp NULL DEFAULT NULL COMMENT '请求发起时间',
  `trade_fin_time` timestamp NULL DEFAULT NULL COMMENT '交易完成时间,毫秒数',
  `org_code` varchar(20) DEFAULT NULL COMMENT '	\r\n交易发起的商户号',
  `merchant_no` varchar(64) DEFAULT NULL COMMENT '发起交易的平台管理商户号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of bestpay_withdraw_result
-- ----------------------------

-- ----------------------------
-- Table structure for `frontlog`
-- ----------------------------
DROP TABLE IF EXISTS `frontlog`;
CREATE TABLE `frontlog` (
  `id` char(32) NOT NULL,
  `order_no` varchar(100) DEFAULT NULL COMMENT '订单号',
  `channel` varchar(20) DEFAULT NULL COMMENT '支付渠道，pa/lakala/wangpos等，根据业务范围扩展',
  `trans_way` int(11) DEFAULT NULL COMMENT '交易方式',
  `merchant_id` varchar(100) DEFAULT NULL COMMENT '商户号',
  `terminal_id` varchar(100) DEFAULT NULL COMMENT '终端号',
  `payer` varchar(100) DEFAULT NULL COMMENT '付款方账号',
  `serial_no` varchar(100) DEFAULT NULL COMMENT '流水号',
  `amount` bigint(20) DEFAULT NULL COMMENT '交易金额，单位为分（无小数点）',
  `status` int(11) DEFAULT NULL COMMENT '支付状态，0交易流水已创建1已受理2已回调，但并不表示成功3已回调，但校验失败4已回调，且校验成功5成功6失败7已关闭',
  `order_name` varchar(200) DEFAULT NULL COMMENT '订单名称',
  `order_desc` varchar(200) DEFAULT NULL COMMENT '订单描述',
  `currency` varchar(20) DEFAULT NULL COMMENT '交易币种代号，如人民币156',
  `trans_type` int(11) DEFAULT NULL COMMENT '交易类型,0支付1退款2撤销',
  `trans_type_name` varchar(20) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间（下单时间）',
  `create_userid` char(32) DEFAULT NULL COMMENT '创建人id',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `update_userid` char(32) DEFAULT NULL COMMENT '最后修改人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='前端/app支付信息日志';

-- ----------------------------
-- Records of frontlog
-- ----------------------------
INSERT INTO `frontlog` VALUES ('6d2660c21f7641fb88eb314ae9409559', 'testOrder', null, null, null, null, null, 'testSerialNo', null, '1', null, null, '156', null, null, '2019-07-05 11:49:36', 'test_user_id', '2019-07-05 11:49:36', null);
INSERT INTO `frontlog` VALUES ('a224a14b93af488483544e8a52194469', 'sn4546546', null, null, null, null, null, null, '110000', '0', null, null, '156', null, null, '2019-07-10 11:28:30', null, '2019-07-10 11:29:18', null);

-- ----------------------------
-- Table structure for `notice`
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `id` char(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='支付信息通知/短信';

-- ----------------------------
-- Records of notice
-- ----------------------------

-- ----------------------------
-- Table structure for `transaction`
-- ----------------------------
DROP TABLE IF EXISTS `transaction`;
CREATE TABLE `transaction` (
  `id` char(32) NOT NULL,
  `serial_no` varchar(100) DEFAULT NULL COMMENT '交易流水号',
  `channel` varchar(20) DEFAULT NULL COMMENT '支付渠道，pa/lakala/wangpos等，根据业务范围扩展',
  `trans_way` int(11) DEFAULT NULL COMMENT '交易方式，TransWayEnum',
  `payee` varchar(50) DEFAULT NULL COMMENT '收款方账号',
  `card_no` varchar(100) DEFAULT NULL COMMENT '支付账号',
  `card_type` int(11) DEFAULT NULL COMMENT '账号类型',
  `order_no` varchar(100) DEFAULT NULL COMMENT '订单号',
  `order_name` varchar(200) DEFAULT NULL COMMENT '订单名称',
  `order_desc` varchar(200) DEFAULT NULL COMMENT '订单描述',
  `status` int(11) DEFAULT NULL COMMENT '支付状态，0交易流水已创建1已受理2已回调，但并不表示成功3已回调，但校验失败4已回调，且校验成功5成功6失败7已关闭',
  `amount` bigint(20) DEFAULT NULL COMMENT '交易金额，单位为分（无小数点）',
  `message` varchar(200) DEFAULT NULL COMMENT '付款信息',
  `currency` varchar(20) DEFAULT NULL COMMENT '交易币种代号，如人民币156',
  `trans_type` int(11) DEFAULT NULL COMMENT '交易类型，0支付1退款2撤销',
  `trans_type_name` varchar(20) DEFAULT NULL,
  `forward_url` varchar(100) DEFAULT NULL COMMENT '前端跳转url',
  `callback_url` varchar(100) DEFAULT NULL COMMENT '后端回调url',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间（下单时间）',
  `create_userid` char(32) DEFAULT NULL COMMENT '创建人id',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `update_userid` char(32) DEFAULT NULL COMMENT '最后修改人',
  `contact` varchar(20) DEFAULT NULL COMMENT '联系方式',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='交易流水信息';

-- ----------------------------
-- Records of transaction
-- ----------------------------
INSERT INTO `transaction` VALUES ('44603142b3a2493185312bb0f227520f', 'testSerialNo', null, null, null, null, null, 'testOrder', null, null, '1', null, 'test_message', null, null, null, null, null, '2019-07-05 11:45:14', 'test_user_id', '2019-07-05 11:45:14', null, null);

-- ----------------------------
-- Table structure for `usercard`
-- ----------------------------
DROP TABLE IF EXISTS `usercard`;
CREATE TABLE `usercard` (
  `id` char(32) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='C端用户账户/卡号';

-- ----------------------------
-- Records of usercard
-- ----------------------------
