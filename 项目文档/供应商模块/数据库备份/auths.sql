/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50723
Source Host           : localhost:3306
Source Database       : auths

Target Server Type    : MYSQL
Target Server Version : 50723
File Encoding         : 65001

Date: 2019-07-17 11:14:26
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `action`
-- ----------------------------
DROP TABLE IF EXISTS `action`;
CREATE TABLE `action` (
  `id` char(32) NOT NULL,
  `code` varchar(20) NOT NULL COMMENT '操作编号',
  `name` varchar(50) NOT NULL COMMENT '操作名称',
  `appcode` varchar(50) DEFAULT NULL COMMENT '所属应用',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_action_code` (`code`) USING BTREE,
  KEY `idx_action_appcode` (`appcode`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='操作';

-- ----------------------------
-- Records of action
-- ----------------------------
INSERT INTO `action` VALUES ('1', '1', '编辑', 'shop');
INSERT INTO `action` VALUES ('2', '2', '删除', 'shop');
INSERT INTO `action` VALUES ('3', '3', '详情', 'shop');
INSERT INTO `action` VALUES ('5', 'default', '默认', null);

-- ----------------------------
-- Table structure for `app`
-- ----------------------------
DROP TABLE IF EXISTS `app`;
CREATE TABLE `app` (
  `code` varchar(50) NOT NULL COMMENT '应用编号',
  `name` varchar(200) NOT NULL COMMENT '应用名称',
  `enable` int(11) DEFAULT NULL COMMENT '是否可用',
  `addr` varchar(200) DEFAULT NULL COMMENT '主页地址',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='支持的系统';

-- ----------------------------
-- Records of app
-- ----------------------------
INSERT INTO `app` VALUES ('agency', '代理商系统', '1', 'http://192.168.1.42:8003', null);
INSERT INTO `app` VALUES ('shop', '门店系统', '1', 'http://192.168.1.42:8004', null);
INSERT INTO `app` VALUES ('supplier', '供应商系统', '1', 'http://192.168.1.42:8002', null);

-- ----------------------------
-- Table structure for `organ`
-- ----------------------------
DROP TABLE IF EXISTS `organ`;
CREATE TABLE `organ` (
  `id` char(32) NOT NULL,
  `name` varchar(200) NOT NULL COMMENT '名称',
  `type` int(11) DEFAULT NULL COMMENT '类型，1供应商2代理商3门店4仓库',
  `status` int(11) DEFAULT NULL COMMENT '状态，0初始（入驻中）1可用2	暂停3停止4异常',
  `level` int(11) DEFAULT NULL COMMENT '级别',
  `parent` char(32) DEFAULT NULL COMMENT '父节点id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='组织机构';

-- ----------------------------
-- Records of organ
-- ----------------------------
INSERT INTO `organ` VALUES ('1', '手机供应商', '1', '1', null, null);
INSERT INTO `organ` VALUES ('2', '手机代理商', '2', '1', null, null);
INSERT INTO `organ` VALUES ('3', '手机总店', '3', '1', null, null);
INSERT INTO `organ` VALUES ('4', '手机代理商2', '2', '0', null, '2');
INSERT INTO `organ` VALUES ('5', '手机门店1', '3', '1', null, '3');
INSERT INTO `organ` VALUES ('6', '手机门店2', '3', '1', null, '3');
INSERT INTO `organ` VALUES ('7', '手机门店3', '3', '1', null, '3');

-- ----------------------------
-- Table structure for `organ_detail`
-- ----------------------------
DROP TABLE IF EXISTS `organ_detail`;
CREATE TABLE `organ_detail` (
  `id` char(32) NOT NULL,
  `organ` char(32) NOT NULL COMMENT '机构id',
  `corporate` varchar(100) DEFAULT NULL COMMENT '法人信息',
  `license` varchar(100) DEFAULT NULL COMMENT '营业执照编号',
  `license_path` varchar(200) DEFAULT NULL COMMENT '营业执照图片地址',
  `main_products` text COMMENT '主营业务',
  `scope` varchar(200) DEFAULT NULL COMMENT '经营区域',
  `province` varchar(100) DEFAULT NULL COMMENT '省',
  `city` varchar(100) DEFAULT NULL COMMENT '市',
  `county` varchar(100) DEFAULT NULL COMMENT '县',
  `addr` varchar(200) DEFAULT NULL COMMENT '具体地址',
  `manager` char(32) DEFAULT NULL COMMENT '店长id/联系人',
  `mobile` varchar(50) DEFAULT NULL COMMENT '电话',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `create_userid` char(32) DEFAULT NULL COMMENT '创建人id',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `update_userid` char(32) DEFAULT NULL COMMENT '最后修改人',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_organ_detail_organ` (`organ`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='机构详情';

-- ----------------------------
-- Records of organ_detail
-- ----------------------------
INSERT INTO `organ_detail` VALUES ('1', '1', '张三', '100268', 'http://www.baidu.com', '手机,电脑', '北京西单', '110000', '110100', '', '三环', '张三', '17730209003', null, null, null, null);

-- ----------------------------
-- Table structure for `resource`
-- ----------------------------
DROP TABLE IF EXISTS `resource`;
CREATE TABLE `resource` (
  `id` char(32) NOT NULL,
  `name` varchar(50) NOT NULL COMMENT '资源名称',
  `method` varchar(20) DEFAULT NULL COMMENT 'GET/POST...',
  `path` varchar(255) NOT NULL COMMENT '资源地址',
  `appcode` varchar(50) NOT NULL COMMENT '所属应用',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_resource_url` (`path`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='资源';

-- ----------------------------
-- Records of resource
-- ----------------------------
INSERT INTO `resource` VALUES ('02a052e1f6cb4efcbb1b0d71485ec8cd', '商品检索接口', 'GET', '/commodity/name-search', '317');
INSERT INTO `resource` VALUES ('0640279610404920808de78a355d244d', '删除单个进货单记录', 'DELETE', '/stock/delete/goods', '227');
INSERT INTO `resource` VALUES ('07224974c4b84f59a467c7c8e4c7a193', '删除营销活动', 'DELETE', '/plugins/delete', '311');
INSERT INTO `resource` VALUES ('0d35bdc46b794425ad94c8e291d70533', '列表-采购单', 'GET', '/stockin/allocate/list', '185');
INSERT INTO `resource` VALUES ('0e32e7f6a76647dcb7ba85e00f807003', '商品新增', 'POST', '/commodity/create', '35');
INSERT INTO `resource` VALUES ('19b6e0a0e10041c1a2a14786c0b5e8da', '商品详细', 'GET', '/distribution/commodity', '227');
INSERT INTO `resource` VALUES ('1c7ff1d1e7e6406aafc10c2dc17313ec', '进货单最新5条记录', 'GET', '/stock/latest-five', '227');
INSERT INTO `resource` VALUES ('1f1a32208ac24770b50a669e33a383f6', '商品修改', 'PUT', '/commodity/update', '35');
INSERT INTO `resource` VALUES ('1fc82e12db914adbb31943f79eb3660a', '图片下载', 'GET', '/image/download', '203');
INSERT INTO `resource` VALUES ('20eac4ace38c40ee9b7305a0608d9791', '订单查询', 'GET', '/order/read', '71');
INSERT INTO `resource` VALUES ('24dd30d03c784d8d8ec99d5a550afe6d', '入库单列表', 'GET', '/stockin/list', '185');
INSERT INTO `resource` VALUES ('28a3c0e300e640bdaef4752cc1a71974', '门店订单新增', 'POST', '/order/save', '317');
INSERT INTO `resource` VALUES ('2a31f194ade54b0d97580533f0596222', '供货商详情', 'GET', '/supply/read', '173');
INSERT INTO `resource` VALUES ('2b0eae81df21460d8bb26539bb9eb28b', '添加商品-获取规格', 'GET', '/stockin/create/read', '185');
INSERT INTO `resource` VALUES ('2dfff83821554aedb985cce28e22b268', '获取商品ID', 'GET', '/commodity/id', '35');
INSERT INTO `resource` VALUES ('2ed4b77979b74ee3a3d903c4ace4c440', '商品列表-已下架', 'GET', '/commodity/offshelf-list', '35');
INSERT INTO `resource` VALUES ('30946b172a3a488e87146f7096e63d07', '模板新增', 'POST', '/template/create', '107');
INSERT INTO `resource` VALUES ('310c30e4e23b46ea9aea1f315c0ee11e', '商品下架', 'PUT', '/commodity/offshelf', '35');
INSERT INTO `resource` VALUES ('3a6bf71da64244ec9fb79ce651314dcb', '创建营销活动', 'POST', '/plugins/create', '311');
INSERT INTO `resource` VALUES ('3a816953a6f54062964873331fa1786c', '调拨单列表', 'GET', '/allocate/list', '167');
INSERT INTO `resource` VALUES ('42988048172b4b0a95bdeffc66956307', '创建采购单', 'POST', '/purchase/create', '161');
INSERT INTO `resource` VALUES ('430779a4c0a84091a2043e95ee93b1a7', '商品查询', 'GET', '/commodity/read', '149');
INSERT INTO `resource` VALUES ('44e5b3030d86411e9c647f23d8541147', '客户端提交支付记录接口', 'POST', '/frontlog/upsert', '17');
INSERT INTO `resource` VALUES ('454ce4f9a11a4392989934f3d1a12142', '已上架', 'PUT', '/commodity/on-the-shelf/update', '239');
INSERT INTO `resource` VALUES ('4576dc83347f4fa79c5f84fa70f179a4', '图片删除', 'DELETE', '/image/delete', '203');
INSERT INTO `resource` VALUES ('46f60b07ce0343acaeef87e304e5fb2e', '订单详细', 'GET', '/order/shop-read', '323');
INSERT INTO `resource` VALUES ('49ef7f94aae34575999dc1ce765f242f', '商品修改', 'PUT', '/commodity/update', '149');
INSERT INTO `resource` VALUES ('59f425d475d645249d0b3bf83eb7e293', '模板下拉框查询', 'GET', '/template/select-ddl', '107');
INSERT INTO `resource` VALUES ('5d22a8ff85aa46f4a8efcca8f7012e26', '商品查询', 'GET', '/distribution/list', '227');
INSERT INTO `resource` VALUES ('5e51235920154c4cb9969b5332f726ab', '添加到进货单', 'POST', '/stock/create', '227');
INSERT INTO `resource` VALUES ('5f5d8eca47bc4255b9e33546a25b5114', '订单新增-废弃', 'POST', '/order/create', '155');
INSERT INTO `resource` VALUES ('60c81d4774cc4b2b980ac347d512c7b7', '商品列表-销售中', 'GET', '/commodity/onshelf-list', '35');
INSERT INTO `resource` VALUES ('62c9feb1ae8d474db52b21ae067886be', '商品删除', 'DELETE', '/commodity/delete', '35');
INSERT INTO `resource` VALUES ('65e08651fafd4169bf2933433fa34ee2', '登录操作，返回token', 'POST', '/login/signin', '215');
INSERT INTO `resource` VALUES ('66bc6bd4bfe94c92ba99c172959fcc9b', '获取商品ID', 'GET', '/commodity/id', '149');
INSERT INTO `resource` VALUES ('68fa2d0dc17c485c9b3f00c5d243e27a', '查询商品条码', 'GET', '/barcode/get', '335');
INSERT INTO `resource` VALUES ('698bddca83a549b58d8a937a585307f3', '订单详细查询', 'GET', '/agency/order/read', '155');
INSERT INTO `resource` VALUES ('6c937d75f60e439da8bc845e88eae4c6', '入库单详情', 'GET', '/stockin/read', '185');
INSERT INTO `resource` VALUES ('6d54c309ce624957b57a8e0da7ee025a', '创建调拨单', 'POST', '/allocate/create', '167');
INSERT INTO `resource` VALUES ('6e1eea79178641beb192920eb86955c8', '添加商品-列表', 'GET', '/stockin/create/list', '185');
INSERT INTO `resource` VALUES ('6efe7984a6fb43fa98c45fdd31615040', '订单列表', 'GET', '/order/list', '71');
INSERT INTO `resource` VALUES ('6f20fe0370574afbaa4fee3e08e96b46', '订单关闭', 'PUT', '/order/close-order', '155');
INSERT INTO `resource` VALUES ('70df5161a389497d838a289f3b7b0f91', '发布', 'POST', '/commodity/publish', '149');
INSERT INTO `resource` VALUES ('7324e7b5718d4a6f88d797d273f32150', '调拨商品入库', 'PUT', '/allocate/in-store', '167');
INSERT INTO `resource` VALUES ('739a0f55a8d54b14bc93a1f260d915bb', '模板查询', 'GET', '/template/read', '107');
INSERT INTO `resource` VALUES ('74512422d77a4c198896ac153419967b', '供货商列表', 'GET', '/supply/list', '173');
INSERT INTO `resource` VALUES ('7598121a5f0d455fb9469e1d3ab08e9d', '获取用户对某一资源的操作列表', 'GET', '/auths/actions', '221');
INSERT INTO `resource` VALUES ('769b45a49c14407f9f85a788e6fc7037', '编辑修改供货商信息', 'PUT', '/supply/update', '173');
INSERT INTO `resource` VALUES ('77711a8a9f664e29b35edb3302be5368', '模板修改', 'PUT', '/template/update', '107');
INSERT INTO `resource` VALUES ('7adc40a845f84a0092b1402747299f7e', '添加商品-查询', 'GET', '/purchase/create/list', '161');
INSERT INTO `resource` VALUES ('7cd6937dc66345d590eb1c93aaffcd1a', '模板删除', 'DELETE', '/template/delete', '107');
INSERT INTO `resource` VALUES ('815c8d46071a4209b43c050e4a9eccb1', '商品模糊检索', 'GET', '/commodity/search', '227');
INSERT INTO `resource` VALUES ('8487bf8bb9f241439d35821aa5a3c42d', '调拨单详情', 'GET', '/allocate/read', '167');
INSERT INTO `resource` VALUES ('86566b71c6634c0090136652acaa885b', '支付成功', 'PUT', '/order/pay', '155');
INSERT INTO `resource` VALUES ('8b67d19ef23a4723bcc0e1e94911ca30', '模板列表', 'GET', '/template/list', '107');
INSERT INTO `resource` VALUES ('8db4c3f697484e77b28eada4f6838520', '商品列表', 'GET', '/commodity/list', '149');
INSERT INTO `resource` VALUES ('922d14f5a4cb4fa4a25ec1f775185880', '创建供货商', 'POST', '/supply/create', '173');
INSERT INTO `resource` VALUES ('92f5438edfb94832856f470b25134456', '创建门店/仓库', 'POST', '/organ/create', '293');
INSERT INTO `resource` VALUES ('941b87c2d38a445ea3bb95ffd42388c3', '按规格商品id删除进货单数据', 'DELETE', '/stock/delete', '227');
INSERT INTO `resource` VALUES ('99d2f922f54543f0a8f876868f8aaf7a', '营销活动列表', 'GET', '/plugins/list', '311');
INSERT INTO `resource` VALUES ('a20241e6c4e64218b75c71fcd1c259d3', '获取所有快递公司编码', 'GET', '/company/list', '329');
INSERT INTO `resource` VALUES ('a36f51b74a4c40aebcffa0005ef9ef47', '发布并上架', 'POST', '/commodity/publish-onshelf', '149');
INSERT INTO `resource` VALUES ('a5340cd3fa92472abfcc78361ee6f06c', '订阅物流信息', 'POST', '/subscribe/insert', '329');
INSERT INTO `resource` VALUES ('a57e939bf6a94c0eac4ea22cc6fde1e9', '订单改价查询-废弃', 'GET', '/order/read-price', '155');
INSERT INTO `resource` VALUES ('a6ca5f8cd8b241e2adfdba099d8d9ec9', '供应商详细查询', 'GET', '/distribution/supplier', '227');
INSERT INTO `resource` VALUES ('a8e8242bbf104e3c82b4f39afb31ad71', '获取手机验证码', 'GET', '/login/smscode', '215');
INSERT INTO `resource` VALUES ('a9074fa5778544a8b7d15c1f8aad90f6', '添加商品-获取规格', 'GET', '/allocate/create/read', '167');
INSERT INTO `resource` VALUES ('b0ec31041b6a43e28a38f25df9010745', '修改营销活动', 'PUT', '/plugins/update', '311');
INSERT INTO `resource` VALUES ('b4b289ea4e4a47bc9d162a92450f94eb', '赠品查询', 'GET', '/commodity/shop/sku-plugins', '317');
INSERT INTO `resource` VALUES ('b4ca7e03304b4147a846fca1fe842c91', '更改活动状态', 'PUT', '/plugins/update-status', '311');
INSERT INTO `resource` VALUES ('b506e6d86cb6439e88ca46742da7efcf', '采购单列表', 'GET', '/purchase/list', '161');
INSERT INTO `resource` VALUES ('b54a5a1a0c5944e0868da416f95cdec3', '支付完成后保存', 'POST', '/purchase/create-comm', '161');
INSERT INTO `resource` VALUES ('b6216789cccf4c7abfe14cf81149c3dd', '已售罄查询', 'GET', '/commodity/out-of-stock', '239');
INSERT INTO `resource` VALUES ('b8896c679d8f4413bf7809b4a9a981a4', '查询-门店', 'GET', '/allocate/list-shop', '167');
INSERT INTO `resource` VALUES ('b9486994b29c44e08a8f246fae540d46', '已下架', 'PUT', '/commodity/off-shelf/update', '239');
INSERT INTO `resource` VALUES ('ba7fdd88f35249038a7855e75b169fe4', '商品删除', 'DELETE', '/commodity/delete', '149');
INSERT INTO `resource` VALUES ('bb35b0ab9ae5475da29cd30d8b6dbaf5', '营销活动详情', 'GET', '/plugins/read', '311');
INSERT INTO `resource` VALUES ('bb55379c77304805a1a15d78442e1f48', '订单列表', 'GET', '/order/list', '305');
INSERT INTO `resource` VALUES ('bf227a00a7f64c8e83e8e8f5e019630b', '供应商查询', 'GET', '/distribution/supplier/list', '227');
INSERT INTO `resource` VALUES ('bf937c0b246d499ab59b4ccc1dd44c09', '添加商品-查询', 'GET', '/plugins/create/list', '311');
INSERT INTO `resource` VALUES ('c7fb006eefae4f228a42f57255295af6', '订单改价', 'PUT', '/order/price-update', '71');
INSERT INTO `resource` VALUES ('c86b72a5e8ac42baaec9c557138f69cf', '交易成功', 'PUT', '/order/successful-trade', '155');
INSERT INTO `resource` VALUES ('c8ac01d0fce34227a188513f27ad56ba', '订单列表', 'GET', '/agency/order/list', '155');
INSERT INTO `resource` VALUES ('c8c80a590d0d426f84efd0d04e935ea1', '采购单详情', 'GET', '/purchase/read', '161');
INSERT INTO `resource` VALUES ('cc14b6396c79482783f9f2555a4e038f', '创建采购单查询', 'GET', '/agency/order/pay-list', '227');
INSERT INTO `resource` VALUES ('cc3587661d2f4b8d9ff7769d64aa9163', '商品上架', 'PUT', '/commodity/onshelf', '35');
INSERT INTO `resource` VALUES ('cd3724e5cceb481395c41de660aadd12', '添加商品-获取规格', 'GET', '/purchase/create/read', '161');
INSERT INTO `resource` VALUES ('cd42e1d05993428bb53fc25ebef5af97', '去发货-废弃', 'PUT', '/order/delivery', '155');
INSERT INTO `resource` VALUES ('cef640adae9d4689b21ef870dbe403ea', '商品新增', 'POST', '/commodity/create', '149');
INSERT INTO `resource` VALUES ('d44ead47baa7401ea5ff7de8bea4676a', '刷新token', 'POST', '/auths/token/refresh', '221');
INSERT INTO `resource` VALUES ('d55caca8c48e454db80c2202b033ab8f', '列表查询', 'GET', '/commodity/organ-search', '317');
INSERT INTO `resource` VALUES ('d5a5c5b99f734f16a385fefabec07f81', '获取某系统的资源列表，菜单', 'GET', '/auths/resources', '221');
INSERT INTO `resource` VALUES ('d6f63e22ac7b4fc0b3f168ae5062f7f7', '商品详细-规格查询', 'GET', '/distribution/commodity-sku', '227');
INSERT INTO `resource` VALUES ('da95054042e44ffc8dc9b891d91100a9', 'sso，切换门店、切换系统，自动跳转', 'GET', '/login/sso', '215');
INSERT INTO `resource` VALUES ('dbb6f63147934325a35a8d7c19ed7640', '去发货', 'PUT', '/order/delivery', '71');
INSERT INTO `resource` VALUES ('dca51c4578514d82a04e586d50a8738f', '商品详细', 'GET', '/commodity/shop/read', '317');
INSERT INTO `resource` VALUES ('dd21a65dcfde49c2bb2c2fc09dd49bac', '添加商品-获取规格', 'GET', '/plugins/create/read', '311');
INSERT INTO `resource` VALUES ('dde02da1130f4122b87088d304913652', '验证商品条码是否存在并补全', 'GET', '/commodity/valid-barcode', '149');
INSERT INTO `resource` VALUES ('df91be5c5e8f40baab6e74fd88c4ca52', '查询门店/仓库列表', 'GET', '/organ/list', '293');
INSERT INTO `resource` VALUES ('e15b2047d7ce40d386ae5dac1ef94993', '交易流水接口（第三方支付回调记录保存）', 'POST', '/transaction/upsert', '17');
INSERT INTO `resource` VALUES ('e3c4c217bcd544cabd1adb3106511041', '商品查询', 'GET', '/commodity/read', '35');
INSERT INTO `resource` VALUES ('e443ec2bd76f4d109f20fd5e2c5092f2', '生成订单', 'POST', '/agency/order/create', '227');
INSERT INTO `resource` VALUES ('e4f9c6a3349447c0b1bfd7a659693b42', '销售中查询', 'GET', '/commodity/shop/on-the-shelf', '239');
INSERT INTO `resource` VALUES ('e5078bbc26e847e8808a57e6ff2ff0d9', '图片上传', 'POST', '/image/create', '203');
INSERT INTO `resource` VALUES ('e76bf1a30b2d40048f438196037b075f', '创建员工', 'POST', '/user/staff/create', '299');
INSERT INTO `resource` VALUES ('ea9a95067645450c85a2f32f8d95a090', '验证商品是否已存在自动补全', 'GET', '/commodity/vaild-barcode', '35');
INSERT INTO `resource` VALUES ('eaa1738843fd4ded98c8087edb84103a', '查询进货单', 'GET', '/stock/list', '227');
INSERT INTO `resource` VALUES ('ef4856afb2064e5e9abc6274dc30c0db', '查询员工列表', 'GET', '/user/staff/search', '299');
INSERT INTO `resource` VALUES ('f17e97d19dec4b87a8b91fe61c32a42c', '验证访问令牌及鉴权', 'POST', '/auths/verify', '221');
INSERT INTO `resource` VALUES ('f1ce3d8a79a74685a6aed46d289b4019', '订单详情', 'GET', '/order/read', '305');
INSERT INTO `resource` VALUES ('f20f1f04b9b14676b43c69e950fa402d', '创建入库单', 'POST', '/stockin/create', '185');
INSERT INTO `resource` VALUES ('f459b8b4ea4f4b569c92b15e4b78261c', '查询物流信息接口', 'GET', '/result/get', '329');
INSERT INTO `resource` VALUES ('f5a6aa3c6bf145649eb509919589c341', '调拨商品出库', 'PUT', '/allocate/out-store', '167');
INSERT INTO `resource` VALUES ('fa300fce378b403485db9eb0605b2c7e', '订单列表', 'GET', '/order/shop-list', '323');
INSERT INTO `resource` VALUES ('fcf0038d5df748859bbf73b4f1974c53', '添加商品-查询', 'GET', '/allocate/create/list', '167');
INSERT INTO `resource` VALUES ('ff3ee76c22044a32b7ad7332d94a2a1e', '已下架查询', 'GET', '/commodity/off-shelf', '239');

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` char(32) NOT NULL,
  `name` varchar(50) NOT NULL COMMENT '角色名称',
  `type` int(11) NOT NULL COMMENT '角色类型，超级2公用1私有0',
  `appcode` varchar(50) DEFAULT NULL COMMENT '所属应用',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_role_appcode` (`appcode`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='角色';

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '营业员', '1', '');
INSERT INTO `role` VALUES ('2', '店长', '2', '');
INSERT INTO `role` VALUES ('5', '管理员', '1', null);

-- ----------------------------
-- Table structure for `role_action_resource`
-- ----------------------------
DROP TABLE IF EXISTS `role_action_resource`;
CREATE TABLE `role_action_resource` (
  `role` char(32) NOT NULL COMMENT '角色id',
  `action` varchar(20) NOT NULL COMMENT '操作code',
  `resource` char(32) NOT NULL COMMENT '资源id',
  PRIMARY KEY (`role`,`action`,`resource`) USING BTREE,
  KEY `idx_role_action_resource_role` (`role`) USING BTREE,
  KEY `idx_role_action_resource_action` (`action`) USING BTREE,
  KEY `idx_role_action_resource_resource` (`resource`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of role_action_resource
-- ----------------------------
INSERT INTO `role_action_resource` VALUES ('5', 'default', '02a052e1f6cb4efcbb1b0d71485ec8cd');
INSERT INTO `role_action_resource` VALUES ('5', 'default', '0640279610404920808de78a355d244d');
INSERT INTO `role_action_resource` VALUES ('5', 'default', '07224974c4b84f59a467c7c8e4c7a193');
INSERT INTO `role_action_resource` VALUES ('5', 'default', '0d35bdc46b794425ad94c8e291d70533');
INSERT INTO `role_action_resource` VALUES ('5', 'default', '0e32e7f6a76647dcb7ba85e00f807003');
INSERT INTO `role_action_resource` VALUES ('5', 'default', '19b6e0a0e10041c1a2a14786c0b5e8da');
INSERT INTO `role_action_resource` VALUES ('5', 'default', '1c7ff1d1e7e6406aafc10c2dc17313ec');
INSERT INTO `role_action_resource` VALUES ('5', 'default', '1f1a32208ac24770b50a669e33a383f6');
INSERT INTO `role_action_resource` VALUES ('5', 'default', '1fc82e12db914adbb31943f79eb3660a');
INSERT INTO `role_action_resource` VALUES ('5', 'default', '20eac4ace38c40ee9b7305a0608d9791');
INSERT INTO `role_action_resource` VALUES ('5', 'default', '24dd30d03c784d8d8ec99d5a550afe6d');
INSERT INTO `role_action_resource` VALUES ('5', 'default', '28a3c0e300e640bdaef4752cc1a71974');
INSERT INTO `role_action_resource` VALUES ('5', 'default', '2a31f194ade54b0d97580533f0596222');
INSERT INTO `role_action_resource` VALUES ('5', 'default', '2b0eae81df21460d8bb26539bb9eb28b');
INSERT INTO `role_action_resource` VALUES ('5', 'default', '2dfff83821554aedb985cce28e22b268');
INSERT INTO `role_action_resource` VALUES ('5', 'default', '2ed4b77979b74ee3a3d903c4ace4c440');
INSERT INTO `role_action_resource` VALUES ('5', 'default', '30946b172a3a488e87146f7096e63d07');
INSERT INTO `role_action_resource` VALUES ('5', 'default', '310c30e4e23b46ea9aea1f315c0ee11e');
INSERT INTO `role_action_resource` VALUES ('5', 'default', '3a6bf71da64244ec9fb79ce651314dcb');
INSERT INTO `role_action_resource` VALUES ('5', 'default', '3a816953a6f54062964873331fa1786c');
INSERT INTO `role_action_resource` VALUES ('5', 'default', '42988048172b4b0a95bdeffc66956307');
INSERT INTO `role_action_resource` VALUES ('5', 'default', '430779a4c0a84091a2043e95ee93b1a7');
INSERT INTO `role_action_resource` VALUES ('5', 'default', '44e5b3030d86411e9c647f23d8541147');
INSERT INTO `role_action_resource` VALUES ('5', 'default', '454ce4f9a11a4392989934f3d1a12142');
INSERT INTO `role_action_resource` VALUES ('5', 'default', '4576dc83347f4fa79c5f84fa70f179a4');
INSERT INTO `role_action_resource` VALUES ('5', 'default', '46f60b07ce0343acaeef87e304e5fb2e');
INSERT INTO `role_action_resource` VALUES ('5', 'default', '49ef7f94aae34575999dc1ce765f242f');
INSERT INTO `role_action_resource` VALUES ('5', 'default', '59f425d475d645249d0b3bf83eb7e293');
INSERT INTO `role_action_resource` VALUES ('5', 'default', '5d22a8ff85aa46f4a8efcca8f7012e26');
INSERT INTO `role_action_resource` VALUES ('5', 'default', '5e51235920154c4cb9969b5332f726ab');
INSERT INTO `role_action_resource` VALUES ('5', 'default', '5f5d8eca47bc4255b9e33546a25b5114');
INSERT INTO `role_action_resource` VALUES ('5', 'default', '60c81d4774cc4b2b980ac347d512c7b7');
INSERT INTO `role_action_resource` VALUES ('5', 'default', '62c9feb1ae8d474db52b21ae067886be');
INSERT INTO `role_action_resource` VALUES ('5', 'default', '65e08651fafd4169bf2933433fa34ee2');
INSERT INTO `role_action_resource` VALUES ('5', 'default', '66bc6bd4bfe94c92ba99c172959fcc9b');
INSERT INTO `role_action_resource` VALUES ('5', 'default', '68fa2d0dc17c485c9b3f00c5d243e27a');
INSERT INTO `role_action_resource` VALUES ('5', 'default', '698bddca83a549b58d8a937a585307f3');
INSERT INTO `role_action_resource` VALUES ('5', 'default', '6c937d75f60e439da8bc845e88eae4c6');
INSERT INTO `role_action_resource` VALUES ('5', 'default', '6d54c309ce624957b57a8e0da7ee025a');
INSERT INTO `role_action_resource` VALUES ('5', 'default', '6e1eea79178641beb192920eb86955c8');
INSERT INTO `role_action_resource` VALUES ('5', 'default', '6efe7984a6fb43fa98c45fdd31615040');
INSERT INTO `role_action_resource` VALUES ('5', 'default', '6f20fe0370574afbaa4fee3e08e96b46');
INSERT INTO `role_action_resource` VALUES ('5', 'default', '70df5161a389497d838a289f3b7b0f91');
INSERT INTO `role_action_resource` VALUES ('5', 'default', '7324e7b5718d4a6f88d797d273f32150');
INSERT INTO `role_action_resource` VALUES ('5', 'default', '739a0f55a8d54b14bc93a1f260d915bb');
INSERT INTO `role_action_resource` VALUES ('5', 'default', '74512422d77a4c198896ac153419967b');
INSERT INTO `role_action_resource` VALUES ('5', 'default', '7598121a5f0d455fb9469e1d3ab08e9d');
INSERT INTO `role_action_resource` VALUES ('5', 'default', '769b45a49c14407f9f85a788e6fc7037');
INSERT INTO `role_action_resource` VALUES ('5', 'default', '77711a8a9f664e29b35edb3302be5368');
INSERT INTO `role_action_resource` VALUES ('5', 'default', '7adc40a845f84a0092b1402747299f7e');
INSERT INTO `role_action_resource` VALUES ('5', 'default', '7cd6937dc66345d590eb1c93aaffcd1a');
INSERT INTO `role_action_resource` VALUES ('5', 'default', '815c8d46071a4209b43c050e4a9eccb1');
INSERT INTO `role_action_resource` VALUES ('5', 'default', '8487bf8bb9f241439d35821aa5a3c42d');
INSERT INTO `role_action_resource` VALUES ('5', 'default', '86566b71c6634c0090136652acaa885b');
INSERT INTO `role_action_resource` VALUES ('5', 'default', '8b67d19ef23a4723bcc0e1e94911ca30');
INSERT INTO `role_action_resource` VALUES ('5', 'default', '8db4c3f697484e77b28eada4f6838520');
INSERT INTO `role_action_resource` VALUES ('5', 'default', '922d14f5a4cb4fa4a25ec1f775185880');
INSERT INTO `role_action_resource` VALUES ('5', 'default', '92f5438edfb94832856f470b25134456');
INSERT INTO `role_action_resource` VALUES ('5', 'default', '941b87c2d38a445ea3bb95ffd42388c3');
INSERT INTO `role_action_resource` VALUES ('5', 'default', '99d2f922f54543f0a8f876868f8aaf7a');
INSERT INTO `role_action_resource` VALUES ('5', 'default', 'a20241e6c4e64218b75c71fcd1c259d3');
INSERT INTO `role_action_resource` VALUES ('5', 'default', 'a36f51b74a4c40aebcffa0005ef9ef47');
INSERT INTO `role_action_resource` VALUES ('5', 'default', 'a5340cd3fa92472abfcc78361ee6f06c');
INSERT INTO `role_action_resource` VALUES ('5', 'default', 'a57e939bf6a94c0eac4ea22cc6fde1e9');
INSERT INTO `role_action_resource` VALUES ('5', 'default', 'a6ca5f8cd8b241e2adfdba099d8d9ec9');
INSERT INTO `role_action_resource` VALUES ('5', 'default', 'a8e8242bbf104e3c82b4f39afb31ad71');
INSERT INTO `role_action_resource` VALUES ('5', 'default', 'a9074fa5778544a8b7d15c1f8aad90f6');
INSERT INTO `role_action_resource` VALUES ('5', 'default', 'b0ec31041b6a43e28a38f25df9010745');
INSERT INTO `role_action_resource` VALUES ('5', 'default', 'b4b289ea4e4a47bc9d162a92450f94eb');
INSERT INTO `role_action_resource` VALUES ('5', 'default', 'b4ca7e03304b4147a846fca1fe842c91');
INSERT INTO `role_action_resource` VALUES ('5', 'default', 'b506e6d86cb6439e88ca46742da7efcf');
INSERT INTO `role_action_resource` VALUES ('5', 'default', 'b54a5a1a0c5944e0868da416f95cdec3');
INSERT INTO `role_action_resource` VALUES ('5', 'default', 'b6216789cccf4c7abfe14cf81149c3dd');
INSERT INTO `role_action_resource` VALUES ('5', 'default', 'b8896c679d8f4413bf7809b4a9a981a4');
INSERT INTO `role_action_resource` VALUES ('5', 'default', 'b9486994b29c44e08a8f246fae540d46');
INSERT INTO `role_action_resource` VALUES ('5', 'default', 'ba7fdd88f35249038a7855e75b169fe4');
INSERT INTO `role_action_resource` VALUES ('5', 'default', 'bb35b0ab9ae5475da29cd30d8b6dbaf5');
INSERT INTO `role_action_resource` VALUES ('5', 'default', 'bb55379c77304805a1a15d78442e1f48');
INSERT INTO `role_action_resource` VALUES ('5', 'default', 'bf227a00a7f64c8e83e8e8f5e019630b');
INSERT INTO `role_action_resource` VALUES ('5', 'default', 'bf937c0b246d499ab59b4ccc1dd44c09');
INSERT INTO `role_action_resource` VALUES ('5', 'default', 'c7fb006eefae4f228a42f57255295af6');
INSERT INTO `role_action_resource` VALUES ('5', 'default', 'c86b72a5e8ac42baaec9c557138f69cf');
INSERT INTO `role_action_resource` VALUES ('5', 'default', 'c8ac01d0fce34227a188513f27ad56ba');
INSERT INTO `role_action_resource` VALUES ('5', 'default', 'c8c80a590d0d426f84efd0d04e935ea1');
INSERT INTO `role_action_resource` VALUES ('5', 'default', 'cc14b6396c79482783f9f2555a4e038f');
INSERT INTO `role_action_resource` VALUES ('5', 'default', 'cc3587661d2f4b8d9ff7769d64aa9163');
INSERT INTO `role_action_resource` VALUES ('5', 'default', 'cd3724e5cceb481395c41de660aadd12');
INSERT INTO `role_action_resource` VALUES ('5', 'default', 'cd42e1d05993428bb53fc25ebef5af97');
INSERT INTO `role_action_resource` VALUES ('5', 'default', 'cef640adae9d4689b21ef870dbe403ea');
INSERT INTO `role_action_resource` VALUES ('5', 'default', 'd44ead47baa7401ea5ff7de8bea4676a');
INSERT INTO `role_action_resource` VALUES ('5', 'default', 'd55caca8c48e454db80c2202b033ab8f');
INSERT INTO `role_action_resource` VALUES ('5', 'default', 'd5a5c5b99f734f16a385fefabec07f81');
INSERT INTO `role_action_resource` VALUES ('5', 'default', 'd6f63e22ac7b4fc0b3f168ae5062f7f7');
INSERT INTO `role_action_resource` VALUES ('5', 'default', 'da95054042e44ffc8dc9b891d91100a9');
INSERT INTO `role_action_resource` VALUES ('5', 'default', 'dbb6f63147934325a35a8d7c19ed7640');
INSERT INTO `role_action_resource` VALUES ('5', 'default', 'dca51c4578514d82a04e586d50a8738f');
INSERT INTO `role_action_resource` VALUES ('5', 'default', 'dd21a65dcfde49c2bb2c2fc09dd49bac');
INSERT INTO `role_action_resource` VALUES ('5', 'default', 'dde02da1130f4122b87088d304913652');
INSERT INTO `role_action_resource` VALUES ('5', 'default', 'df91be5c5e8f40baab6e74fd88c4ca52');
INSERT INTO `role_action_resource` VALUES ('5', 'default', 'e15b2047d7ce40d386ae5dac1ef94993');
INSERT INTO `role_action_resource` VALUES ('5', 'default', 'e3c4c217bcd544cabd1adb3106511041');
INSERT INTO `role_action_resource` VALUES ('5', 'default', 'e443ec2bd76f4d109f20fd5e2c5092f2');
INSERT INTO `role_action_resource` VALUES ('5', 'default', 'e4f9c6a3349447c0b1bfd7a659693b42');
INSERT INTO `role_action_resource` VALUES ('5', 'default', 'e5078bbc26e847e8808a57e6ff2ff0d9');
INSERT INTO `role_action_resource` VALUES ('5', 'default', 'e76bf1a30b2d40048f438196037b075f');
INSERT INTO `role_action_resource` VALUES ('5', 'default', 'ea9a95067645450c85a2f32f8d95a090');
INSERT INTO `role_action_resource` VALUES ('5', 'default', 'eaa1738843fd4ded98c8087edb84103a');
INSERT INTO `role_action_resource` VALUES ('5', 'default', 'ef4856afb2064e5e9abc6274dc30c0db');
INSERT INTO `role_action_resource` VALUES ('5', 'default', 'f17e97d19dec4b87a8b91fe61c32a42c');
INSERT INTO `role_action_resource` VALUES ('5', 'default', 'f1ce3d8a79a74685a6aed46d289b4019');
INSERT INTO `role_action_resource` VALUES ('5', 'default', 'f20f1f04b9b14676b43c69e950fa402d');
INSERT INTO `role_action_resource` VALUES ('5', 'default', 'f459b8b4ea4f4b569c92b15e4b78261c');
INSERT INTO `role_action_resource` VALUES ('5', 'default', 'f5a6aa3c6bf145649eb509919589c341');
INSERT INTO `role_action_resource` VALUES ('5', 'default', 'fa300fce378b403485db9eb0605b2c7e');
INSERT INTO `role_action_resource` VALUES ('5', 'default', 'fcf0038d5df748859bbf73b4f1974c53');
INSERT INTO `role_action_resource` VALUES ('5', 'default', 'ff3ee76c22044a32b7ad7332d94a2a1e');

-- ----------------------------
-- Table structure for `role_users`
-- ----------------------------
DROP TABLE IF EXISTS `role_users`;
CREATE TABLE `role_users` (
  `role` char(32) NOT NULL COMMENT '角色id',
  `userid` char(32) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`role`,`userid`) USING BTREE,
  KEY `idx_role_users_role` (`role`) USING BTREE,
  KEY `idx_role_users_userid` (`userid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='角色用户关系表';

-- ----------------------------
-- Records of role_users
-- ----------------------------
INSERT INTO `role_users` VALUES ('1', '1');
INSERT INTO `role_users` VALUES ('1', '2');
INSERT INTO `role_users` VALUES ('1', '3');
INSERT INTO `role_users` VALUES ('1', '4');
INSERT INTO `role_users` VALUES ('1', '6');
INSERT INTO `role_users` VALUES ('5', '5');
INSERT INTO `role_users` VALUES ('5', '7');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` char(32) NOT NULL,
  `name` varchar(100) DEFAULT NULL COMMENT '用户名',
  `fullname` varchar(100) DEFAULT NULL COMMENT '姓名',
  `mobile` varchar(20) DEFAULT NULL COMMENT '手机号码',
  `organ` char(32) DEFAULT NULL COMMENT '所属机构',
  `code` varchar(10) DEFAULT NULL COMMENT '最近生成的验证码',
  `code_time` timestamp NULL DEFAULT NULL COMMENT '最近验证码生成的时间',
  `enabled` int(11) DEFAULT NULL COMMENT '是否可用',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `create_userid` char(32) DEFAULT NULL COMMENT '创建人id',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `update_userid` char(32) DEFAULT NULL COMMENT '最后修改人',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_users_mobile` (`mobile`) USING BTREE,
  KEY `idx_users_name` (`name`) USING BTREE,
  KEY `idx_users_create_time` (`create_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户基本信息';

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'zhangsan', '张三', '13333333333', '7', '739083', '2019-06-14 18:21:04', null, '2019-06-19 15:16:08', null, '2019-06-18 14:01:15', '5');
INSERT INTO `users` VALUES ('2', 'lisi', '李四', '13222222222', '5', '290736', '2019-06-10 03:12:12', null, '2019-06-19 15:16:08', null, '2019-06-18 14:01:57', '5');
INSERT INTO `users` VALUES ('3', 'sunchanglei', '孙长磊', '18375315178', '1', '123456', '2019-07-22 15:18:19', null, '2019-06-19 15:16:08', null, '2019-06-18 14:02:57', '5');
INSERT INTO `users` VALUES ('4', 'huang', '黄', '17683861747', '7', '3114', '2019-07-11 14:52:26', null, '2019-06-19 15:16:08', null, '2019-06-18 14:03:17', '1');
INSERT INTO `users` VALUES ('5', 'du', '杜', '18857193039', '1', '8888', '2019-07-21 16:55:58', null, '2019-06-20 11:05:17', null, '2019-06-19 15:16:04', '5');
INSERT INTO `users` VALUES ('6', 'test', '测试', '18888888888', '1', '123456', '2019-07-22 15:18:19', null, '2019-06-19 15:16:08', null, '2019-06-18 14:02:57', '5');
INSERT INTO `users` VALUES ('7', 'zhang', '张', '13646841512', '1', '0896', '2019-07-16 10:15:24', null, '2019-07-10 09:57:09', null, '2019-07-10 09:57:13', '5');

-- ----------------------------
-- Table structure for `users_detail`
-- ----------------------------
DROP TABLE IF EXISTS `users_detail`;
CREATE TABLE `users_detail` (
  `id` char(32) NOT NULL,
  `userid` char(32) DEFAULT NULL,
  `last_login_ip` varchar(50) DEFAULT NULL COMMENT '最后登录ip',
  `last_login_time` timestamp NULL DEFAULT NULL COMMENT '最后登录时间',
  `login_times` int(11) DEFAULT NULL COMMENT '每天连续多少次锁定',
  `login_error_time` timestamp NULL DEFAULT NULL COMMENT '登录失败时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_users_detail_userid` (`userid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户详情';

-- ----------------------------
-- Records of users_detail
-- ----------------------------
INSERT INTO `users_detail` VALUES ('1', '7', '192', '2019-06-14 18:20:58', '7', '2019-06-14 18:13:09');
INSERT INTO `users_detail` VALUES ('2', '3', '192', '2019-06-11 11:07:48', '1', '2019-06-11 15:00:12');
INSERT INTO `users_detail` VALUES ('3', '5', '192', '2019-07-04 16:13:38', '57', '2019-06-11 15:35:08');
INSERT INTO `users_detail` VALUES ('4', '4', '192', '2019-07-04 16:13:38', '57', '2019-06-11 15:35:08');
