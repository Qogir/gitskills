/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50723
Source Host           : localhost:3306
Source Database       : angency

Target Server Type    : MYSQL
Target Server Version : 50723
File Encoding         : 65001

Date: 2019-07-17 11:14:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `allocate`
-- ----------------------------
DROP TABLE IF EXISTS `allocate`;
CREATE TABLE `allocate` (
  `id` char(32) NOT NULL COMMENT '调拨单编号',
  `daily_id` char(15) DEFAULT NULL COMMENT '单号',
  `from` char(32) DEFAULT NULL COMMENT '调出方id',
  `from_type` int(11) DEFAULT NULL COMMENT '调出方类型，0门店1	仓库',
  `from_name` varchar(100) DEFAULT NULL COMMENT '调出方名称',
  `to` char(32) DEFAULT NULL COMMENT '调入方id',
  `to_type` int(11) DEFAULT NULL COMMENT '调入方类型,0门店1仓库',
  `to_name` varchar(100) DEFAULT NULL COMMENT '调入方名称',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `update_userid` char(32) DEFAULT NULL COMMENT '最后修改人',
  `status` int(11) DEFAULT NULL COMMENT '0待入库1已入库2待出库3已出库',
  `bid` char(32) DEFAULT NULL COMMENT 'business id',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_allocate_create_time` (`create_time`) USING BTREE,
  KEY `idx_allocate_bid` (`bid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='调拨单';

-- ----------------------------
-- Records of allocate
-- ----------------------------
INSERT INTO `allocate` VALUES ('1', null, '1', '0', '小红', '5', '1', '小绿', '2019-06-06 16:53:50', '2019-06-20 15:12:01', '110', '0', '1');
INSERT INTO `allocate` VALUES ('1266028eb48c42ea9e459b7ecb2ac4f6', null, '5', '1', '小绿', '5', '1', '小兰', '2019-06-24 10:42:09', '2019-06-24 10:42:09', '110', '2', '1');
INSERT INTO `allocate` VALUES ('2', null, '2', '1', '小白', '1', '0', '小红', '2019-06-13 16:54:22', '2019-06-20 15:12:01', '110', '1', '1');
INSERT INTO `allocate` VALUES ('274b2a9d38cc4ea48b34834bcb7d356b', null, '42', '0', '小米', '16', '1', '大米', '2019-06-25 18:09:07', '2019-06-25 18:09:07', '1', '2', '1');
INSERT INTO `allocate` VALUES ('2ebe26434ed045a59eda34d2f6520fad', null, '42', '0', '小米', '16', '1', '大米', '2019-06-26 13:29:58', '2019-06-26 13:29:58', '1', '2', '1');
INSERT INTO `allocate` VALUES ('3', null, '3', '1', '小兰', '2', '1', '小白', '2019-06-19 14:23:51', '2019-06-05 14:23:54', '911', '2', '1');
INSERT INTO `allocate` VALUES ('31b952176da04371844ba2313f9b4517', null, '5', '1', '小绿', '3', '1', '小兰', '2019-06-24 16:52:53', '2019-06-24 16:52:53', '110', '2', '1');
INSERT INTO `allocate` VALUES ('38580055c845412693ba853d2f828f65', null, '42', '0', '小米', '16', '1', '大米', '2019-06-25 14:37:25', '2019-06-25 14:37:25', '1', '2', '1');
INSERT INTO `allocate` VALUES ('3ba7563fb30548678fb746b6c4da3ec4', null, '42', '0', '小米', '16', '1', '大米', '2019-06-25 14:45:11', '2019-06-25 14:45:11', '1', '2', '1');
INSERT INTO `allocate` VALUES ('4', null, '5', '1', '小绿', '4', '0', '小小', '2019-06-19 14:24:02', '2019-06-25 15:59:07', '110', '1', '1');
INSERT INTO `allocate` VALUES ('4f72bd45c0494aafabaebeede95de05d', 'TO2019071100001', '5', '1', '小绿', '3', '1', '小兰', '2019-07-11 16:53:40', '2019-07-11 16:53:40', '156', '2', '154');
INSERT INTO `allocate` VALUES ('5238472c83ec467692fd440974feb641', 'TO2019070400005', 'nu14124n', '1', 'incididunt labore', 'aliquip cupidatat ea', '1', 'exercitation', '2019-07-04 17:34:56', '2019-07-04 17:34:56', '1', '2', '1');
INSERT INTO `allocate` VALUES ('535fa8f342f64ff1a6e28ebf5570f41e', null, '42', '0', '小米', '16', '1', '大米', '2019-06-25 18:02:43', '2019-06-25 18:02:43', '1', '2', '1');
INSERT INTO `allocate` VALUES ('64252822f5114698bbbc5f1b4e28b020', null, '42', '0', '小米', '16', '1', '大米', '2019-06-25 17:54:10', '2019-06-25 17:54:10', '1', '2', '1');
INSERT INTO `allocate` VALUES ('666d79f6590340be8136c4e1522fefa6', 'TO2019070400004', 'nu14124n', '1', 'incididunt labore', 'aliquip cupidatat ea', '1', 'exercitation', '2019-07-04 17:19:11', '2019-07-04 17:19:11', '1', '2', '1');
INSERT INTO `allocate` VALUES ('6e58b80215f2430b8fb2b16d90dc4d09', null, '5', '1', '小绿', '2', '1', '小兰', '2019-06-24 11:05:25', '2019-06-24 11:05:25', '110', '2', '1');
INSERT INTO `allocate` VALUES ('6ff7380bca4141128ba634ecd3d34412', null, '5', '1', '小绿', '3', '1', '小兰', '2019-06-24 10:51:20', '2019-06-24 10:51:20', '110', '2', '1');
INSERT INTO `allocate` VALUES ('7', null, '1', '0', '小红', '5', '1', '小绿', '2019-06-06 16:53:50', '2019-06-19 15:13:24', '110', '0', '1');
INSERT INTO `allocate` VALUES ('8', null, '1', '0', '小红', '5', '1', '小绿', '2019-06-06 16:53:50', '2019-06-19 15:13:24', '110', '0', '1');
INSERT INTO `allocate` VALUES ('86f07d47f40c4aa9a1d40268916ea2f7', null, '5', '1', '小绿', '3', '1', '小兰', '2019-06-24 11:58:58', '2019-06-24 11:58:58', '110', '2', '1');
INSERT INTO `allocate` VALUES ('9cb65d11638345588976bebc97bf93f2', null, '5', '1', '小绿', '3', '1', '小兰', '2019-06-24 10:25:18', '2019-06-26 13:29:58', '1', '0', '1');
INSERT INTO `allocate` VALUES ('a1abe3b04a5d4f3fa20c5448ca2d4d5d', null, '5', '1', '小绿', '3', '1', '小兰', '2019-06-24 11:57:08', '2019-06-24 11:57:08', '110', '2', '1');
INSERT INTO `allocate` VALUES ('aa67fe06f7534b73b6b71462c6fd6c47', 'TO2019070900001', '5', '1', '小绿', '3', '1', '小兰', '2019-07-09 15:05:25', '2019-07-09 15:05:25', '156', '2', '154');
INSERT INTO `allocate` VALUES ('b7ba1c6b259a408f80da30a808d2c7e2', null, '4', '0', '小小', '5', '1', '小绿', '2019-06-20 15:12:02', '2019-06-20 15:12:02', '110', '2', '1');
INSERT INTO `allocate` VALUES ('c1d54b8aa4a3400db702cc36ef342393', null, '4', '0', '小小', '5', '1', '小绿', '2019-06-19 15:47:58', '2019-06-19 15:47:58', '110', '2', '1');
INSERT INTO `allocate` VALUES ('d71e1fd276604a0099e19408ab304807', null, '5', '1', '小绿', '3', '1', '小兰', '2019-06-24 10:09:33', '2019-06-24 10:09:33', '110', '2', '1');
INSERT INTO `allocate` VALUES ('dac46a774afe4b44b8c8e7497c7c6e0b', null, '42', '0', '小米', '16', '1', '大米', '2019-06-25 15:02:36', '2019-06-25 15:02:36', '1', '2', '1');
INSERT INTO `allocate` VALUES ('dd1e1ac8c2274d16984cdc82ae094400', null, '5', '1', '小绿', '3', '1', '小兰', '2019-06-25 15:59:07', '2019-06-25 15:59:07', '110', '2', '4');
INSERT INTO `allocate` VALUES ('ed2ab8163c3d4d45bc33caf23342c930', null, '5', '1', '小绿', '3', '1', '小兰', '2019-06-24 11:54:38', '2019-06-24 11:54:38', '110', '2', '1');
INSERT INTO `allocate` VALUES ('f25c7279867f4c3fa11ccef35b02b218', null, '5', '1', '小绿', '3', '1', '小兰', '2019-06-24 10:21:55', '2019-06-24 10:21:55', '110', '2', '1');
INSERT INTO `allocate` VALUES ('fccc0b6d638041648a9ad86f601bbc0b', null, '4', '0', '小小', '5', '1', '小绿', '2019-06-20 10:22:29', '2019-06-20 10:22:29', '110', '2', '1');

-- ----------------------------
-- Table structure for `allocate_detail`
-- ----------------------------
DROP TABLE IF EXISTS `allocate_detail`;
CREATE TABLE `allocate_detail` (
  `id` char(32) NOT NULL COMMENT '编号',
  `allocate_id` char(32) DEFAULT NULL COMMENT '调拨单编号',
  `commodity` char(32) DEFAULT NULL COMMENT '商品id',
  `counts` int(11) DEFAULT NULL COMMENT '数量',
  `sku1` char(32) DEFAULT NULL COMMENT '规格值',
  `sku2` char(32) DEFAULT NULL,
  `sku3` char(32) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_allocate_detail_allocate_id` (`allocate_id`) USING BTREE,
  KEY `idx_allocate_detail_commodity` (`commodity`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='调拨单详情';

-- ----------------------------
-- Records of allocate_detail
-- ----------------------------
INSERT INTO `allocate_detail` VALUES ('011c72466c534339936fd2c38612e18c', '6e58b80215f2430b8fb2b16d90dc4d09', 'b9e60a49d8aa4ba391eb190bfa8087d1', '5', '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('029000c59409406385190b91d7e1e1d6', '6e58b80215f2430b8fb2b16d90dc4d09', '8996dab7e98e4af1aeec162eb96b053d', '2', '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('02f5629e7b7649e18f57c7d28925fac5', '5238472c83ec467692fd440974feb641', 'esse', '3', 'nulla', 'incididunt', 'laboris culpa');
INSERT INTO `allocate_detail` VALUES ('087a35852e8d428db073ebf42378259a', 'f25c7279867f4c3fa11ccef35b02b218', 'b9e60a49d8aa4ba391eb190bfa8087d1', '2', '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('0dd69a8b384f404ca6d8f0a5dfd1856c', '1266028eb48c42ea9e459b7ecb2ac4f6', '27c1c682257f4078963cf5e19d6ebf76', '2', '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('1', '1', '21', '100', '红色', '128G', '5.0');
INSERT INTO `allocate_detail` VALUES ('1357cb7504d24dc9ac60d92c0a0dd1d2', '4', '025253b6eee94837a7b32a5f871d3bba', '2', '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('158f7cca59b04c0f9498920d490bb466', '4', 'f94f1057980b477d9e649053f641016f', '2', '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('2', '1', '22', '50', '蓝色', '64G', '5.0');
INSERT INTO `allocate_detail` VALUES ('266da3847c7448c1acdbc968b985b711', '666d79f6590340be8136c4e1522fefa6', 'esse', '3', 'nulla', 'incididunt', 'laboris culpa');
INSERT INTO `allocate_detail` VALUES ('2759d4320daf476880d8ba5f546a4e7f', '38580055c845412693ba853d2f828f65', '8996dab7e98e4af1aeec162eb96b053d', '11', '绿色', '256G', '5.5寸');
INSERT INTO `allocate_detail` VALUES ('2b4757ac24894de18873a8b60a240c48', '4f72bd45c0494aafabaebeede95de05d', null, '2', '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('2bd7979baf314e32b106d3735b7a39eb', '4', '12aa5104e847448a95ba73c53e3dea20', '2', '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('3', '3', '53', '100', '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('343d5596d21f4b69912158024309ed07', '4', '54ebc97dc82f4a32be83c7aa0dda5b04', '2', '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('34ee695ee24443ab8a8a466a8b461dbb', '64252822f5114698bbbc5f1b4e28b020', 'c0964c6702704873903cb0cfcee9ed6d', '11', '蓝色', '256G', null);
INSERT INTO `allocate_detail` VALUES ('366afe9e45184858a99787e13cb7e377', '4', 'e6782e4b99734455820f8b218f94e7e9', '2', '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('3af1d39401034969a5e15240e5b1fce1', '4', 'adc3e4ca47f643b29f34fb0dc5532dd1', '2', '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('3bc8fef96a8a4fd780b1c39a8510dd50', '31b952176da04371844ba2313f9b4517', '8c79410692bf4c27b0a83711ac30712b', '2', '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('3dd682adb7fc4da3a4f5550f2ad07b48', '4', 'd598594325c343ea83978bb13ff05253', '2', '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('4', '3', '54', '60', '红色', '128G', '5.5');
INSERT INTO `allocate_detail` VALUES ('406fcdb63c2b4c058ce26f2fecb01c44', '666d79f6590340be8136c4e1522fefa6', '8996dab7e98e4af1aeec162eb96b053d', '1', '吹风机', '1', 'amet reprehenderit aliquip');
INSERT INTO `allocate_detail` VALUES ('41784209ee944258aaf4c2e863817cfb', 'a1abe3b04a5d4f3fa20c5448ca2d4d5d', 'a4e27fdcc2e04d5eb3e9f5d722153542', '2', '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('418cc838143a4bd6b82d8fcd3a2b4f6c', '4', '7cd9fe16baa64cf7acafb205dd7c8c85', '2', '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('461bd786dcd9494c8ae8dcd46cda191c', 'd71e1fd276604a0099e19408ab304807', '26046b8a40cc471c974858d063184710', '2', '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('4dedada40b0745fca48bf0a35383182c', '4', 'f454e693575d458daffe6f5083719989', '2', '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('5', '2', '91', '75', '蓝色', '64G', '5.5');
INSERT INTO `allocate_detail` VALUES ('51c09af3958d4b78a34b804a0c1accd3', '4', 'b16e0419a75a4c61a70f46221eb7df70', '2', '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('54fd3bb870c8455486de3a34bae1d9da', 'dd1e1ac8c2274d16984cdc82ae094400', 'f45db1ac835347c7af49eed8542c2573', '2', '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('58795935cd0346b89bc845cfdae80a44', '4', '25bc16b4c6f34763a93f05477b04896e', '2', '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('6', '2', '92', '25', '绿色', '128G', '5.0');
INSERT INTO `allocate_detail` VALUES ('60d8599a594848e7a5aac133b871a6e1', 'a1abe3b04a5d4f3fa20c5448ca2d4d5d', 'e0deb64623e4455e80a17298731bd308', '2', '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('61bc4ebcf15b494faa8ba010bdad9e9d', 'a1abe3b04a5d4f3fa20c5448ca2d4d5d', 'c4643bada73b4587ab93d045bf7c9e57', '2', '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('61cb1ef2c2104b53b9df4672669420fb', '4', '7761b63adaaf4b5cae76953fdc3a9a91', '2', '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('6406a104da6545599498b5efe9db2e2f', '86f07d47f40c4aa9a1d40268916ea2f7', '0350bb8000f64b74b4b3b2ab822a667c', '2', '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('648049221d194a8aa38729d3261d10bf', 'd71e1fd276604a0099e19408ab304807', '42fb7d89b4d74426bc8cd506b21d1c6b', '2', '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('674a1f4cdfd645e4ab584bcfab3922a9', '9cb65d11638345588976bebc97bf93f2', 'f5480e8e0b0949df8c0ae1526499e0b0', '2', '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('6a70c2c4996f422d8b6e5b4c678eb1ba', '4', 'd0f1fc13f15b478e9afb440cd5833dbd', '2', '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('6c12f5cbf4584aa3b4105d795bb6bbf6', 'dd1e1ac8c2274d16984cdc82ae094400', '25a74404ac4c461286f8dd9c32189971', '2', '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('6fc45ba8b85e42f78066af8495fa0eda', 'b7ba1c6b259a408f80da30a808d2c7e2', '99', '66', '绿色', '128G', '6.0');
INSERT INTO `allocate_detail` VALUES ('7', '2', '93', '17', '红色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('716036e02f9c471db8432228a26df5b6', '4', 'f527f38881ec48f6b164163afc0f6e80', '2', '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('74b101b730d74768ac888d6e44236fbc', '4', 'c4c98f4e369748a19729d82b7473212c', '2', '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('78941534c76d4a05b15343717c7d9530', '2ebe26434ed045a59eda34d2f6520fad', '8996dab7e98e4af1aeec162eb96b053d', '11', '绿色', '256G', '5.5寸');
INSERT INTO `allocate_detail` VALUES ('7d0696481c4c4a03a22f620b04df739f', '86f07d47f40c4aa9a1d40268916ea2f7', '85866a67d3654635a591491c15ef6bf2', '2', '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('7d6b9e27534a4bfeadd39ff23058b693', '4', 'ba4a0a8cbadd45099781cf56f328b5d4', '2', '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('7fe9a90d2ce1444a9d9d66035e56e771', '4', 'e2ab8fca78f94de28a3b9965aaee4d41', '2', '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('888b92b0508243148ec75cd7e71ed1ed', '4f72bd45c0494aafabaebeede95de05d', null, '2', '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('8a4fbb38540c42d185b413b8e77f7ddc', '4', 'c8a2cc3fbfbf4a8cab881fc91e54c01a', '2', '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('8f869ab5785d4813b0c1316c55ffa2b3', 'dac46a774afe4b44b8c8e7497c7c6e0b', '8996dab7e98e4af1aeec162eb96b053d', '11', '绿色', '256G', '5.5寸');
INSERT INTO `allocate_detail` VALUES ('91fecb66ac504eba9bca966453f6f12c', '4', 'b55523b388304de380807ca66a9aac9d', '2', '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('938193b5ae8d4f6988ca1de9daf9e222', '4', 'b2961a60b99647bcbd23461db3a0795d', '2', '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('95337bc739984317b39d0ff41d4c19c2', '4', '7b4078f129dd4be192fe0c74e0cd11e5', '2', '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('96d0bd6f0ff74d30ad5f9a63fbb10dfa', '5238472c83ec467692fd440974feb641', '8996dab7e98e4af1aeec162eb96b053d', '1', '吹风机', '1', 'amet reprehenderit aliquip');
INSERT INTO `allocate_detail` VALUES ('9786768e8d0b47c18287c7da85f3ef13', '6e58b80215f2430b8fb2b16d90dc4d09', '8cabf9dfeb9a4aadb2c4b3c7b9af0af9', '2', '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('978aa951554c47b2baa6900413fdce99', '6ff7380bca4141128ba634ecd3d34412', '7e8b87609eed4ffd9ba54718cc644a7b', '2', '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('99938e52d0fc434ba089c7b569fd51dc', '4', '35472da4e52449f6b96ac66a230f6e2c', '2', '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('99a046ff9841426f997f700c2fb77fd6', 'dd1e1ac8c2274d16984cdc82ae094400', '44add832f5f448b4ba04959ee7b609be', '2', '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('9b693fa8a0cb4caca9b6ba2af787f9d6', '3ba7563fb30548678fb746b6c4da3ec4', '8996dab7e98e4af1aeec162eb96b053d', '11', '绿色', '256G', '5.5寸');
INSERT INTO `allocate_detail` VALUES ('9ba46a7235dd406c9290c7e51e9e9bc1', '4', '58b103441c164c4a9f38435642d9056b', '2', '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('9cd0c977781c4a99badf015cfda82f2d', '4', 'cf81210dba89478eb71eecfdfc10f215', '2', '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('9d20742c080045b3bc6fec8aeabd772b', '4', '2d52b5a9e4924b5fb688c3e915b77fa8', '2', '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('a06cf0b830c340618a6c99d5b2d39122', '4', '9dd326c5935f48298c48ef18fd23a39c', '2', '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('a0b8ea0559804a6fba407e7569660f63', '666d79f6590340be8136c4e1522fefa6', 'aliquip sint Duis', '2', 'id in ut et', 'minim deserunt eiusmod ea', 'adipisicing dolore');
INSERT INTO `allocate_detail` VALUES ('a2cef54162db41c88b12111b5844ef74', '9cb65d11638345588976bebc97bf93f2', 'c3075ffd8732455ebef653b828947570', '2', '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('a7d7206480194ccfa2e19a75d5dc110a', '4', '034cef5924a04c8c8b3e8f57c18556ce', '2', '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('a93dbf26a465493d8bd3f49460243d7e', 'ed2ab8163c3d4d45bc33caf23342c930', 'b077d8a32423435f8456f9552ad549ec', '2', '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('aabbd6abb236412f9e201e9d3e431422', '4', '9810e90c51cb4d95bb4d95fd7a2a43da', '2', '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('ab1945adf42e49fa918c50b270833c7e', '4', 'd7618a466a3d4e6e9d86b5353ac28c93', '2', '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('af1d211e07514c248f3f8f5d10f422ef', 'aa67fe06f7534b73b6b71462c6fd6c47', null, '2', '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('aff23a8de7d341f7a2107e3f2a6fcfb8', '31b952176da04371844ba2313f9b4517', 'fcc8cd455bd64b8bbf724072df0c3f06', '2', '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('b14de0a09c3640e598e63566f74fc30e', '4', 'd5ede3ac8eab4a6bbbea60fa996dc4c6', '2', '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('b7452c7a9ba5407196d799a451c4ced8', '4', '36d95df44d2e499188d915bb08696b77', '2', '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('b9225f7b0bbe41139ac3542cae867831', 'aa67fe06f7534b73b6b71462c6fd6c47', null, '2', '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('ba1de3929fa5459b97f01fd6929cf77e', '4', 'c2c6a2ae501c45cda8bcf2ea840a10db', '2', '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('ba8750e0da754903b30fada21e08c94f', 'fccc0b6d638041648a9ad86f601bbc0b', '99', '66', '绿色', '128G', '6.0');
INSERT INTO `allocate_detail` VALUES ('be04cfd3bb8b43209fe60f146f91887f', '4', '1549d942f43b4bd3b4b405c32f327066', '2', '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('bfe19d798427417ebf79fe047f820420', 'f25c7279867f4c3fa11ccef35b02b218', 'dde9aad635b3431d88c8bfa43287f408', '2', '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('c171fbeaea92487cb3e49181daf2a4ca', 'aa67fe06f7534b73b6b71462c6fd6c47', null, '2', '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('c2483c7534184149bb0b8e8494c1d55f', '6ff7380bca4141128ba634ecd3d34412', '51b57880dcfb46e6b44513db3218e826', '2', '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('c7cf32cf6d3e4eb294ad0bed301042e2', '31b952176da04371844ba2313f9b4517', '8c7760b01c6d45a6b3c971e52aedc664', '2', '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('ccb738fc9c154bcf8e08a63ec8fb66b6', '1266028eb48c42ea9e459b7ecb2ac4f6', '04cada6d3f8c40da832dee31aef98876', '2', '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('cfaf230cdaf84a9fa5f96fc0dc014f5d', 'd71e1fd276604a0099e19408ab304807', 'df5712d25f56487ea95812e331e9b8dd', '2', '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('cfb8680d5d304e66bb629cf7442e86b9', '4', 'b2aff958f747485394f0e72e3892625b', '2', '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('d0441ddf77914803ad60033fe660fdd0', 'ed2ab8163c3d4d45bc33caf23342c930', '40984fa317614bb0a245bbe99ab1de64', '2', '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('d1db8b6a827145a6940edb6aa30eb585', '535fa8f342f64ff1a6e28ebf5570f41e', '8996dab7e98e4af1aeec162eb96b053d', '11', '绿色', '256G', '5.5寸');
INSERT INTO `allocate_detail` VALUES ('d1fc9360c94049f1abe5644c2564b1a8', '9cb65d11638345588976bebc97bf93f2', '9feb46ce525d475398d871a318c36cd7', '2', '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('dab8149ad34841f8a9d69cab859219fa', '4', 'd309f5b28088456196c3a02dd5c1865c', '2', '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('dee56f2cde044f3db8525670382a8635', '4f72bd45c0494aafabaebeede95de05d', null, '2', '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('e15a1c41e4994e4aa000d20483847c19', '4', 'c454b90c3600441eab2ca08886d923a7', '2', '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('e58a6c1d2a1f4d52bbe6a9037202547d', '4', 'd720c58e88764d958717eca4e3495af0', '2', '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('e7f56e1757354bf3a3f8335d8f2d755f', '4', '4acd2f603fcb49df860c9f385095f0d0', '2', '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('e834c40c02324def92fb6b8bba63540b', '274b2a9d38cc4ea48b34834bcb7d356b', '8996dab7e98e4af1aeec162eb96b053d', '11', '绿色', '256G', '5.5寸');
INSERT INTO `allocate_detail` VALUES ('e9a6d56ed669456082a959137faa94e7', '4', 'e0ea19f952004dacbe836981530d0666', '2', '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('ebd2a2c8f5ed49099e6283a364a82d2c', 'c1d54b8aa4a3400db702cc36ef342393', '99', '66', '绿色', '128G', '6.0');
INSERT INTO `allocate_detail` VALUES ('f00d250571e048a59100c3742377a7d3', 'ed2ab8163c3d4d45bc33caf23342c930', '2743fe5bcd62400abca182de46b9d0f0', '2', '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('f35cd623c8ab47aea1e5495277c84c99', '4', 'c37ed29ee09340fc8ea6154b80b225b6', '2', '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('f48e6b37fe104a19afb2c3fd7ba55b39', '4', '90ea53a2a73d42309ead281a44589db5', '2', '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('f5adb71184ac42bdb274b3b495d0d85d', '86f07d47f40c4aa9a1d40268916ea2f7', '9cb5aecc030d42b39b8b14e4e131a6cd', '2', '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('f8e5e7829f1a4cfe870aeed1df475751', 'f25c7279867f4c3fa11ccef35b02b218', '54d197842463441d83def3e1cb8cbf50', '2', '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('fa91af9af84344f9a4394af4829bbb36', '4', 'd6ea15f5741044b2a55c478e0ea43d5a', '2', '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('fb752799702045caafbec744c4763cb8', '6ff7380bca4141128ba634ecd3d34412', '8bf5012e940b417a8c0facee64bc4da1', '2', '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('fbb6f6b092fd4412b77e3e06e322a43e', '5238472c83ec467692fd440974feb641', 'aliquip sint Duis', '2', 'id in ut et', 'minim deserunt eiusmod ea', 'adipisicing dolore');
INSERT INTO `allocate_detail` VALUES ('fd86648d02d7436bb20776a9cc65726b', '1266028eb48c42ea9e459b7ecb2ac4f6', '01de31d9ed2a46f19c843a258022717a', '2', '绿色', '256G', '5.5');

-- ----------------------------
-- Table structure for `commodity`
-- ----------------------------
DROP TABLE IF EXISTS `commodity`;
CREATE TABLE `commodity` (
  `id` char(32) NOT NULL COMMENT '商品编号',
  `name` varchar(200) NOT NULL COMMENT '名称',
  `type` varchar(50) DEFAULT NULL COMMENT '分类',
  `barcode` varchar(100) NOT NULL COMMENT '条码',
  `image` varchar(200) DEFAULT NULL COMMENT '图片目录地址',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `update_userid` char(32) DEFAULT NULL COMMENT '最后修改人',
  `bid` char(32) DEFAULT NULL COMMENT 'business id',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_commodity_name` (`name`) USING BTREE,
  KEY `idx_commodity_bid` (`bid`) USING BTREE,
  KEY `idx_commodity_create_time` (`create_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='商品信息';

-- ----------------------------
-- Records of commodity
-- ----------------------------
INSERT INTO `commodity` VALUES ('1', '电视机1', '1', '1', '2019/06/25/123/0.png', '2019-07-15 15:34:26', '2019-07-15 15:34:26', null, '1');
INSERT INTO `commodity` VALUES ('11', '手机11', '1', '11', '2019/06/25/123/0.png', '2019-07-15 15:37:01', '2019-07-15 15:37:01', null, '1');
INSERT INTO `commodity` VALUES ('12', '手机12', '1', '12', '2019/06/25/123/0.png', '2019-07-15 15:37:11', '2019-07-15 15:37:11', null, '1');
INSERT INTO `commodity` VALUES ('13', '手机13', '1', '13', '2019/06/25/123/0.png', '2019-07-15 15:38:04', '2019-07-15 15:38:04', null, '1');
INSERT INTO `commodity` VALUES ('14', '手机14', '1', '14', '2019/06/25/123/0.png', '2019-07-15 15:38:13', '2019-07-15 15:38:13', null, '1');
INSERT INTO `commodity` VALUES ('15', '手机15', '1', '15', '2019/06/25/123/0.png', '2019-07-15 15:38:20', '2019-07-15 15:38:20', null, '1');
INSERT INTO `commodity` VALUES ('16', '手机16', '1', '16', '2019/06/25/123/0.png', '2019-07-15 15:38:27', '2019-07-15 15:38:27', null, '1');
INSERT INTO `commodity` VALUES ('17', '手机17', '1', '17', '2019/06/25/123/0.png', '2019-07-15 15:38:34', '2019-07-15 15:38:34', null, '1');
INSERT INTO `commodity` VALUES ('18', '手机18', '1', '18', '2019/06/25/123/0.png', '2019-07-15 15:38:42', '2019-07-15 15:38:42', null, '1');
INSERT INTO `commodity` VALUES ('19', '手机19', '1', '19', '2019/06/25/123/0.png', '2019-07-15 15:38:52', '2019-07-15 15:38:52', null, '1');
INSERT INTO `commodity` VALUES ('2', '电视机2', '1', '2', '2019/06/25/123/0.png', '2019-07-15 15:34:56', '2019-07-15 15:34:56', null, '1');
INSERT INTO `commodity` VALUES ('20', '手机20', '1', '20', '2019/06/25/123/0.png', '2019-07-15 15:39:10', '2019-07-15 15:39:10', null, '1');
INSERT INTO `commodity` VALUES ('21', '手机21', '1', '21', '2019/06/25/123/0.png', '2019-07-15 15:39:20', '2019-07-15 15:39:20', null, '1');
INSERT INTO `commodity` VALUES ('3', '电视机3', '1', '3', '2019/06/25/123/0.png', '2019-07-15 15:35:09', '2019-07-15 15:35:09', null, '1');
INSERT INTO `commodity` VALUES ('4', '电视机4', '1', '4', '2019/06/25/123/0.png', '2019-07-15 15:35:24', '2019-07-15 15:35:24', null, '1');
INSERT INTO `commodity` VALUES ('5', '电视机5', '1', '5', '2019/06/25/123/0.png', '2019-07-15 15:35:44', '2019-07-15 15:35:44', null, '1');
INSERT INTO `commodity` VALUES ('6', '电视机6', '1', '6', '2019/06/25/123/0.png', '2019-07-15 15:35:56', '2019-07-15 15:35:56', null, '1');
INSERT INTO `commodity` VALUES ('7', '电视机7', '1', '7', '2019/06/25/123/0.png', '2019-07-15 15:36:08', '2019-07-15 15:36:08', null, '1');
INSERT INTO `commodity` VALUES ('8', '电视机8', '1', '8', '2019/06/25/123/0.png', '2019-07-15 15:36:22', '2019-07-15 15:36:22', null, '1');
INSERT INTO `commodity` VALUES ('9', '电视机9', '1', '9', '2019/06/25/123/0.png', '2019-07-15 15:36:36', '2019-07-15 15:36:36', null, '1');

-- ----------------------------
-- Table structure for `commodity_detail`
-- ----------------------------
DROP TABLE IF EXISTS `commodity_detail`;
CREATE TABLE `commodity_detail` (
  `id` char(32) NOT NULL COMMENT 'sku编号',
  `commodity` char(32) NOT NULL COMMENT '商品编号',
  `sku1` char(32) DEFAULT NULL COMMENT '规格值',
  `sku2` char(32) DEFAULT NULL,
  `sku3` char(32) DEFAULT NULL,
  `barcode` varchar(100) DEFAULT NULL COMMENT '规格条码',
  `retail_price` float DEFAULT NULL COMMENT '零售价',
  `price_begin` float DEFAULT NULL COMMENT '可售价格区间begin',
  `price_end` float DEFAULT NULL COMMENT '可售价格区间end',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_commodity_detail_commodity` (`commodity`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='商品sku信息';

-- ----------------------------
-- Records of commodity_detail
-- ----------------------------
INSERT INTO `commodity_detail` VALUES ('1287864e002744e88e502db7b4a91368', '16', '1', '2', '3', '123001', '10', '10', '100');
INSERT INTO `commodity_detail` VALUES ('1e59c1ffc4b5419098edb4c31ed10dd4', '17', '1', '2', '3', '123001', '10', '10', '100');
INSERT INTO `commodity_detail` VALUES ('218c7336bd72421c851a985aee825c7f', '4', '1', '2', '3', '123001', '10', '10', '100');
INSERT INTO `commodity_detail` VALUES ('258056859e7e4f93b8ca8e02d0efad7f', '7', '1', '2', '3', '123001', '10', '10', '100');
INSERT INTO `commodity_detail` VALUES ('34239f3dea07466dbaa46bd16b6b02b1', '3', '1', '2', '3', '123001', '10', '10', '100');
INSERT INTO `commodity_detail` VALUES ('40f590699c62438782695d3a2c7814b0', '2', '1', '2', '3', '123001', '10', '10', '100');
INSERT INTO `commodity_detail` VALUES ('572bf2ef5315480bbee72049174a49d8', '13', '1', '2', '3', '123001', '10', '10', '100');
INSERT INTO `commodity_detail` VALUES ('5aaa0f2469424757b4c2706eafec58dd', '19', '1', '2', '3', '123001', '10', '10', '100');
INSERT INTO `commodity_detail` VALUES ('6ba5cf4d2ed7455da9635e47b12d65df', '8', '1', '2', '3', '123001', '10', '10', '100');
INSERT INTO `commodity_detail` VALUES ('728c6cf0e83f40e69f81ca19a346c31a', '11', '1', '2', '3', '123001', '10', '10', '100');
INSERT INTO `commodity_detail` VALUES ('7562d286d19047f19b95b5c648b3c765', '18', '1', '2', '3', '123001', '10', '10', '100');
INSERT INTO `commodity_detail` VALUES ('87c21f86a55542409c04941fb7b2f605', '20', '1', '2', '3', '123001', '10', '10', '100');
INSERT INTO `commodity_detail` VALUES ('9048d65e6a4d42b791d57916170be454', '12', '1', '2', '3', '123001', '10', '10', '100');
INSERT INTO `commodity_detail` VALUES ('aa360b81065042b3857a291f83142754', '15', '1', '2', '3', '123001', '10', '10', '100');
INSERT INTO `commodity_detail` VALUES ('b16fe6507fe04568bad91a24e566e63b', '5', '1', '2', '3', '123001', '10', '10', '100');
INSERT INTO `commodity_detail` VALUES ('e385bd8a5db643ec86da5e9d167c2456', '1', '1', '2', '3', '123001', '10', '10', '100');
INSERT INTO `commodity_detail` VALUES ('e48dbbc0d2d04efa9280c9e172ef9e99', '6', '1', '2', '3', '123001', '10', '10', '100');
INSERT INTO `commodity_detail` VALUES ('eec40bac795d48bb92d58ac244618f72', '21', '1', '2', '3', '123001', '10', '10', '100');
INSERT INTO `commodity_detail` VALUES ('f2dd4127ecf74accab3b23a397f018b8', '9', '1', '2', '3', '123001', '10', '10', '100');
INSERT INTO `commodity_detail` VALUES ('fdb2088d34b14834ae792342ad33448e', '14', '1', '2', '3', '123001', '10', '10', '100');

-- ----------------------------
-- Table structure for `commodity_shop`
-- ----------------------------
DROP TABLE IF EXISTS `commodity_shop`;
CREATE TABLE `commodity_shop` (
  `id` char(32) NOT NULL COMMENT '编号',
  `commodity` char(32) NOT NULL COMMENT '商品编号',
  `organ` char(32) DEFAULT NULL COMMENT '门店机构编号',
  `status` int(11) DEFAULT NULL COMMENT '商品状态，0待上架1	已上架2已售磬3已下架',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_commodity_shop_commodity` (`commodity`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='可售门店配置';

-- ----------------------------
-- Records of commodity_shop
-- ----------------------------
INSERT INTO `commodity_shop` VALUES ('0a2af83f12604bc5bcef64a25064378d', '5', '3', '1');
INSERT INTO `commodity_shop` VALUES ('0d516b4f23a4451e9caebf9d6b9155a5', '3', '1', '1');
INSERT INTO `commodity_shop` VALUES ('0ddd48747a49453cafc292c1fa18845b', '9', '3', '1');
INSERT INTO `commodity_shop` VALUES ('11b9e63f471c483aa3d31a067218c799', '11', '1', '1');
INSERT INTO `commodity_shop` VALUES ('11edecfef30b40a4a9ed1a7030bd7b60', '12', '1', '1');
INSERT INTO `commodity_shop` VALUES ('170236627aa54fa4833b82b54792e7ac', '18', '3', '1');
INSERT INTO `commodity_shop` VALUES ('1c20931193fd4968b36615410812bc02', '19', '1', '1');
INSERT INTO `commodity_shop` VALUES ('1c38baed714143eeb330a99767c89947', '21', '3', '1');
INSERT INTO `commodity_shop` VALUES ('2314760430ee4d63bf4068cee7864606', '18', '2', '1');
INSERT INTO `commodity_shop` VALUES ('25b6576824d541cfa23b2f3dc715f881', '18', '1', '1');
INSERT INTO `commodity_shop` VALUES ('2975795beb3b4a4cb6660bcd4fd4bf3b', '7', '3', '1');
INSERT INTO `commodity_shop` VALUES ('315c9ecd439a4fa696d58586e3ab7705', '15', '2', '1');
INSERT INTO `commodity_shop` VALUES ('37bebf4fbcb048138f71b0a82605bf1b', '19', '2', '1');
INSERT INTO `commodity_shop` VALUES ('37f77e925bad41edbe94f207b8a04d4d', '2', '1', '1');
INSERT INTO `commodity_shop` VALUES ('3b3b076d7d1841eeab53bb1dcd9d0898', '6', '1', '1');
INSERT INTO `commodity_shop` VALUES ('43ca06a1d4fd4ab6b04249fba474daae', '1', '3', '1');
INSERT INTO `commodity_shop` VALUES ('4e17073b3af649b8a1258e5994a21120', '17', '2', '1');
INSERT INTO `commodity_shop` VALUES ('52a04ea170c94c7290375985a0259aad', '13', '3', '1');
INSERT INTO `commodity_shop` VALUES ('579efb29df154cfa981739f383334925', '11', '3', '1');
INSERT INTO `commodity_shop` VALUES ('5a8ff14dc42841c68e3e3fd57201d015', '9', '1', '1');
INSERT INTO `commodity_shop` VALUES ('5fba588a6eab4d508a6b09115a0c0ff1', '4', '2', '1');
INSERT INTO `commodity_shop` VALUES ('5ff9598644564cf1932035c2b72c5140', '6', '3', '1');
INSERT INTO `commodity_shop` VALUES ('61080b7b94394cd681b9ff31047423ba', '17', '1', '1');
INSERT INTO `commodity_shop` VALUES ('66ee8d224ffd4cb5a8cfd476fa1e2487', '16', '3', '1');
INSERT INTO `commodity_shop` VALUES ('684b90ecc0c94a618c9ad4baa61a11b5', '7', '1', '1');
INSERT INTO `commodity_shop` VALUES ('716985d9051648cd86528a7d409c2bbf', '13', '2', '1');
INSERT INTO `commodity_shop` VALUES ('7b31a1b167ca4e008600cdd17a57350a', '2', '3', '1');
INSERT INTO `commodity_shop` VALUES ('83815d59f0af4a7db6c1912b7fbce315', '1', '1', '1');
INSERT INTO `commodity_shop` VALUES ('88bc92f571f04128aba4a43242fb1ded', '19', '3', '1');
INSERT INTO `commodity_shop` VALUES ('8de4ca41d57c4fd295a6a99eb749a4f6', '5', '1', '1');
INSERT INTO `commodity_shop` VALUES ('8f312024d1b14e5ba30c6cdb08221e5e', '8', '2', '1');
INSERT INTO `commodity_shop` VALUES ('8f99ee8278b5421c8c94db48d7a934b8', '2', '2', '1');
INSERT INTO `commodity_shop` VALUES ('91568cfcc95543158cb765908b8674f0', '4', '3', '1');
INSERT INTO `commodity_shop` VALUES ('94a6e9da358f42beab2cca62e317bf59', '21', '2', '1');
INSERT INTO `commodity_shop` VALUES ('9566c79b97f84d9abd235ec00ce3092f', '3', '3', '1');
INSERT INTO `commodity_shop` VALUES ('9589f1904c20429688e1bd6b26931d27', '14', '2', '1');
INSERT INTO `commodity_shop` VALUES ('960d92ff22604d988356c6960f191cdb', '20', '1', '1');
INSERT INTO `commodity_shop` VALUES ('a1f6fc14ee3f4188bc81c2f153d7155b', '8', '1', '1');
INSERT INTO `commodity_shop` VALUES ('a99cee009567492bbc00ccd3567344f9', '11', '2', '1');
INSERT INTO `commodity_shop` VALUES ('aa428d3f6abe43b383b554d4bd3accf3', '6', '2', '1');
INSERT INTO `commodity_shop` VALUES ('b0cb3322a1d04dea9fc42057428b1827', '16', '1', '1');
INSERT INTO `commodity_shop` VALUES ('b355225fa14c41359b8c6160c8ace67e', '13', '1', '1');
INSERT INTO `commodity_shop` VALUES ('b4646ba92e884e698f2f3063ec16ddb0', '12', '3', '1');
INSERT INTO `commodity_shop` VALUES ('b5a886a06da94157873a972c0fdfceb4', '7', '2', '1');
INSERT INTO `commodity_shop` VALUES ('b9e827b24018488ab02873fa764b3e61', '20', '3', '1');
INSERT INTO `commodity_shop` VALUES ('bb504e5c0e3343e88310f37d0eeb7dfe', '8', '3', '1');
INSERT INTO `commodity_shop` VALUES ('c05a27141c71461ea30abf805bd0fda4', '15', '1', '1');
INSERT INTO `commodity_shop` VALUES ('c189491a759e4de7afcdc8cd6f8fa336', '20', '2', '1');
INSERT INTO `commodity_shop` VALUES ('d1e3cc87e57f43518752405e41c1a69b', '17', '3', '1');
INSERT INTO `commodity_shop` VALUES ('d2f920ae43354c0794b5d9f45001c3c8', '9', '2', '1');
INSERT INTO `commodity_shop` VALUES ('d5b678fb87b24915a783af9411644e6e', '16', '2', '1');
INSERT INTO `commodity_shop` VALUES ('e3d55fd7236f49cda105af6fb4857ffc', '1', '2', '1');
INSERT INTO `commodity_shop` VALUES ('e3eab7f880d3479cb53a41aead017c12', '14', '1', '1');
INSERT INTO `commodity_shop` VALUES ('e877e93c54cd435d809a8e60e24b53cf', '14', '3', '1');
INSERT INTO `commodity_shop` VALUES ('e94d93fc45bb4383b76b978d804f4f27', '4', '1', '1');
INSERT INTO `commodity_shop` VALUES ('ee89373e702348ee80186cc731db10d7', '5', '2', '1');
INSERT INTO `commodity_shop` VALUES ('f0a6b34493244a9aa6bc8ca9f4fad8a6', '12', '2', '1');
INSERT INTO `commodity_shop` VALUES ('f24020068c3449a38dc559d22f20a230', '15', '3', '1');
INSERT INTO `commodity_shop` VALUES ('f2cc27fcce8c4a1c9defbece66194573', '21', '1', '1');
INSERT INTO `commodity_shop` VALUES ('f2f6f70c59b34a759d852afd6342ad02', '3', '2', '1');

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
INSERT INTO `commodity_sku` VALUES ('0e904013ed1a4b8fbbd3c9104acfdc0c', '18', '1', '2', '3', '1,2,3', '1,2,,3', '1,2,3');
INSERT INTO `commodity_sku` VALUES ('21f43bdec36a4ced8e2e6485f8f0614a', '21', '1', '2', '3', '1,2,3', '1,2,,3', '1,2,3');
INSERT INTO `commodity_sku` VALUES ('38265e464e8a49ba97f67e9c188bf799', '5', '1', '2', '3', '1,2,3', '1,2,,3', '1,2,3');
INSERT INTO `commodity_sku` VALUES ('577f42643c054987a6e28a3dee2e3d6f', '15', '1', '2', '3', '1,2,3', '1,2,,3', '1,2,3');
INSERT INTO `commodity_sku` VALUES ('65fd881848da4883bb7e9557c58d4a7d', '3', '1', '2', '3', '1,2,3', '1,2,,3', '1,2,3');
INSERT INTO `commodity_sku` VALUES ('662e636dfdd0497895808beca60bcb5d', '13', '1', '2', '3', '1,2,3', '1,2,,3', '1,2,3');
INSERT INTO `commodity_sku` VALUES ('87d4b3705a204c9bb30c181a9cdc0873', '16', '1', '2', '3', '1,2,3', '1,2,,3', '1,2,3');
INSERT INTO `commodity_sku` VALUES ('8975247dfd8d46c58b83f895ed12d816', '9', '1', '2', '3', '1,2,3', '1,2,,3', '1,2,3');
INSERT INTO `commodity_sku` VALUES ('8b774ac4742243e89210b97ebf0a9b31', '6', '1', '2', '3', '1,2,3', '1,2,,3', '1,2,3');
INSERT INTO `commodity_sku` VALUES ('8eaee062772e4476b78b561f8084246e', '17', '1', '2', '3', '1,2,3', '1,2,,3', '1,2,3');
INSERT INTO `commodity_sku` VALUES ('a5685b55f0a741f9b341f5f6b493c034', '14', '1', '2', '3', '1,2,3', '1,2,,3', '1,2,3');
INSERT INTO `commodity_sku` VALUES ('aea1f20c13fa4a21970bd8c000c6291f', '12', '1', '2', '3', '1,2,3', '1,2,,3', '1,2,3');
INSERT INTO `commodity_sku` VALUES ('b33af967ab1d4242aa274831009d5cab', '8', '1', '2', '3', '1,2,3', '1,2,,3', '1,2,3');
INSERT INTO `commodity_sku` VALUES ('c606fe32b4d44a77a205478d13ab1262', '19', '1', '2', '3', '1,2,3', '1,2,,3', '1,2,3');
INSERT INTO `commodity_sku` VALUES ('c8c9c15ddedc43a6a93b685a79b95595', '20', '1', '2', '3', '1,2,3', '1,2,,3', '1,2,3');
INSERT INTO `commodity_sku` VALUES ('d31c2722d6254ad7b1e563e3be00dd1a', '1', '1', '2', '3', '1,2,3', '1,2,,3', '1,2,3');
INSERT INTO `commodity_sku` VALUES ('f17e1d0af14e4340849a19e32a39074b', '2', '1', '2', '3', '1,2,3', '1,2,,3', '1,2,3');
INSERT INTO `commodity_sku` VALUES ('f2732eccf8324221bfa14058668b7d17', '11', '1', '2', '3', '1,2,3', '1,2,,3', '1,2,3');
INSERT INTO `commodity_sku` VALUES ('f4ee937cc42d4c758716a44f5045d50b', '7', '1', '2', '3', '1,2,3', '1,2,,3', '1,2,3');
INSERT INTO `commodity_sku` VALUES ('fac2404cad0f469c976259b5abe88a03', '4', '1', '2', '3', '1,2,3', '1,2,,3', '1,2,3');

-- ----------------------------
-- Table structure for `inventory`
-- ----------------------------
DROP TABLE IF EXISTS `inventory`;
CREATE TABLE `inventory` (
  `id` char(32) NOT NULL,
  `commodity` char(32) DEFAULT NULL COMMENT '商品id',
  `remain` int(11) DEFAULT NULL COMMENT '存量',
  `owner` char(32) DEFAULT NULL COMMENT '所有者id',
  `owner_type` int(11) DEFAULT NULL COMMENT '所有者类型，0门店1	仓库',
  `sku1` char(32) DEFAULT NULL COMMENT '规格值',
  `sku2` char(32) DEFAULT NULL,
  `sku3` char(32) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_inventory_commodity` (`commodity`) USING BTREE,
  KEY `idx_inventory_owner` (`owner`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='库存信息';

-- ----------------------------
-- Records of inventory
-- ----------------------------
INSERT INTO `inventory` VALUES ('1', '3', '700', '1', '1', '1', '2', '3');
INSERT INTO `inventory` VALUES ('2', '4', '1227', '1', '1', '1', '2', '3');
INSERT INTO `inventory` VALUES ('3', '22', '850', '1', '1', '蓝色', '64G', '5.0');
INSERT INTO `inventory` VALUES ('4', '99', '1235', '2', '1', '绿色', '128G', '5.0');
INSERT INTO `inventory` VALUES ('5', '93', '1051', '2', '0', '红色', '256G', '5.5');
INSERT INTO `inventory` VALUES ('6', '99', '350', '1', '1', '红色', '128G', '5.0');
INSERT INTO `inventory` VALUES ('7', 'd9186a92be24407ca30b992201229577', '1219', '5', '0', '绿色', '256G', '5.5');
INSERT INTO `inventory` VALUES ('8', 'd9186a92be24407ca30b992201229577', '1225', '42', '0', '绿色', '256G', '5.5');
INSERT INTO `inventory` VALUES ('9', 'c0964c6702704873903cb0cfcee9ed6d', '1225', '42', '0', '蓝色', '256G', null);

-- ----------------------------
-- Table structure for `order`
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `id` bigint(32) NOT NULL COMMENT '订单编号',
  `total_price` float DEFAULT NULL COMMENT '总价',
  `status` int(11) DEFAULT NULL COMMENT '订单状态，0待支付3交易成功4已关闭',
  `consumer` varchar(50) DEFAULT NULL COMMENT '购买人姓名',
  `mobile` varchar(20) DEFAULT NULL COMMENT '购买人手机号码',
  `pay_time` timestamp NULL DEFAULT NULL COMMENT '支付时间',
  `trans_way` int(11) DEFAULT NULL COMMENT '交易方式',
  `trans_way_name` varchar(30) DEFAULT NULL COMMENT '交易方式名称',
  `selling_shopid` char(32) DEFAULT NULL COMMENT '销售门店',
  `selling_shopname` varchar(100) DEFAULT NULL COMMENT '销售门店名称',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间（下单时间）',
  `create_userid` char(32) DEFAULT NULL COMMENT '创建人id',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `update_userid` char(32) DEFAULT NULL COMMENT '最后修改人',
  `seller` char(32) DEFAULT NULL COMMENT '营业员id',
  `seller_name` varchar(50) DEFAULT NULL COMMENT '营业员姓名',
  `bid` char(32) DEFAULT NULL COMMENT 'business id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='订单';

-- ----------------------------
-- Records of order
-- ----------------------------

-- ----------------------------
-- Table structure for `order_commodity`
-- ----------------------------
DROP TABLE IF EXISTS `order_commodity`;
CREATE TABLE `order_commodity` (
  `id` char(32) NOT NULL COMMENT '编号',
  `order_id` bigint(32) NOT NULL COMMENT '订单编号',
  `commodity` char(32) DEFAULT NULL COMMENT '商品id',
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
  `counts` int(11) DEFAULT NULL COMMENT '数量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='订单商品信息';

-- ----------------------------
-- Records of order_commodity
-- ----------------------------

-- ----------------------------
-- Table structure for `plugins`
-- ----------------------------
DROP TABLE IF EXISTS `plugins`;
CREATE TABLE `plugins` (
  `id` char(32) NOT NULL,
  `name` varchar(200) DEFAULT NULL COMMENT '名称',
  `begin_time` timestamp NULL DEFAULT NULL COMMENT '开始时间',
  `end_time` timestamp NULL DEFAULT NULL COMMENT '结束时间',
  `status` int(11) DEFAULT NULL COMMENT '0待生效1已生效2已停止3已关闭4已结束',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `update_userid` char(32) DEFAULT NULL COMMENT '最后修改人',
  `bid` char(32) DEFAULT NULL COMMENT 'business id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='营销插件';

-- ----------------------------
-- Records of plugins
-- ----------------------------
INSERT INTO `plugins` VALUES ('170a4a93310441dea2218330edd07bf7', '双十一大促销', '2019-07-09 14:23:15', '2019-07-30 18:23:29', '1', '2019-07-09 13:41:18', '2019-07-09 13:45:13', '1', '1');
INSERT INTO `plugins` VALUES ('4d55c563f2474b2a8f86e7192b863f15', '双十一大促销', '2019-07-09 13:23:15', '2019-07-10 18:23:29', '4', '2019-07-09 13:41:06', '2019-07-09 13:41:06', '1', '1');
INSERT INTO `plugins` VALUES ('569671d9b8684a70861cbded940abf14', '双十一大促销', '2019-07-08 13:23:15', '2019-07-09 13:23:29', '4', '2019-07-09 13:41:17', '2019-07-09 13:41:17', '1', '1');

-- ----------------------------
-- Table structure for `plugins_commodity`
-- ----------------------------
DROP TABLE IF EXISTS `plugins_commodity`;
CREATE TABLE `plugins_commodity` (
  `id` char(32) NOT NULL COMMENT 'sku编号',
  `plugin_id` char(32) NOT NULL COMMENT '插件编号',
  `commodity_detail_id` char(32) NOT NULL COMMENT '商品skuId',
  `type` int(11) DEFAULT NULL COMMENT '活动商品类型，0参与商品1赠品',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='插件(活动)商品';

-- ----------------------------
-- Records of plugins_commodity
-- ----------------------------
INSERT INTO `plugins_commodity` VALUES ('28b4b790fd314965a6c57954d2547a23', '170a4a93310441dea2218330edd07bf7', '40f590699c62438782695d3a2c7814b0', '0');
INSERT INTO `plugins_commodity` VALUES ('30d985891d20493cb1a96e5869baa781', '4d55c563f2474b2a8f86e7192b863f15', 'aa360b81065042b3857a291f83142754', '1');
INSERT INTO `plugins_commodity` VALUES ('3a412be8a58540c7866126c85341d43e', '170a4a93310441dea2218330edd07bf7', '728c6cf0e83f40e69f81ca19a346c31a', '1');
INSERT INTO `plugins_commodity` VALUES ('8ea71b05f6ac4dba80f557619172b5f6', '170a4a93310441dea2218330edd07bf7', '7562d286d19047f19b95b5c648b3c765', '1');
INSERT INTO `plugins_commodity` VALUES ('bf26b43360404b168bf2ea2f5077baca', '170a4a93310441dea2218330edd07bf7', '87c21f86a55542409c04941fb7b2f605', '1');
INSERT INTO `plugins_commodity` VALUES ('ee211837c12746b0a0c15e80927ee032', '170a4a93310441dea2218330edd07bf7', '34239f3dea07466dbaa46bd16b6b02b1', '0');

-- ----------------------------
-- Table structure for `purchase`
-- ----------------------------
DROP TABLE IF EXISTS `purchase`;
CREATE TABLE `purchase` (
  `id` char(32) NOT NULL COMMENT '采购单编号',
  `daily_id` char(15) DEFAULT NULL COMMENT '单号',
  `supply_id` char(32) DEFAULT NULL COMMENT '供应商id',
  `supply_name` varchar(100) DEFAULT NULL COMMENT '供应商名称',
  `to` char(32) DEFAULT NULL COMMENT '门店/仓库id',
  `to_type` int(11) DEFAULT NULL COMMENT '门店/仓库类型',
  `to_name` varchar(100) DEFAULT NULL COMMENT '门店/仓库名称',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `update_userid` char(32) DEFAULT NULL COMMENT '最后修改人',
  `bid` char(32) DEFAULT NULL COMMENT 'business id',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_purchase_create_time` (`create_time`) USING BTREE,
  KEY `idx_purchase_bid` (`bid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='采购单';

-- ----------------------------
-- Records of purchase
-- ----------------------------
INSERT INTO `purchase` VALUES ('049e0f1b78bd491baa5a996e27dab865', null, 'b713524c4624443797e9ab2573bb5507', '苹果醋', '5', '1', '小绿', '2019-06-25 18:01:41', '2019-06-25 18:01:41', '1', '1');
INSERT INTO `purchase` VALUES ('1', null, null, null, null, null, null, '2019-06-12 10:23:44', null, null, '1');
INSERT INTO `purchase` VALUES ('1693718d3f364754826d18503c5688be', null, '1', '苹果醋', '5', '1', '小绿', '2019-07-11 16:53:40', '2019-07-11 16:53:40', '110', '5');
INSERT INTO `purchase` VALUES ('2', null, null, null, null, null, null, '2019-06-20 10:23:40', null, null, '1');
INSERT INTO `purchase` VALUES ('3', null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `purchase` VALUES ('300a78d50f9347fbabc84a0ca85c1e1a', null, 'b713524c4624443797e9ab2573bb5507', '苹果醋', '5', '1', '小绿', '2019-06-26 09:46:50', '2019-06-26 09:46:50', '1', '1');
INSERT INTO `purchase` VALUES ('34ca52fcadcc4e5d8fe36da8677c165c', null, '1', '苹果醋', '5', '1', '小绿', '2019-07-04 15:51:47', '2019-07-04 15:51:47', '110', '5');
INSERT INTO `purchase` VALUES ('34d09b81cd0d44f08a5fc635906b3934', null, '1', '苹果醋', '5', '1', '小绿', '2019-06-24 10:14:44', '2019-06-24 10:14:44', '110', '1');
INSERT INTO `purchase` VALUES ('3a1afa35964e4d5bbba15fb760588f0d', null, '1', '苹果醋', '5', '1', '小绿', '2019-06-24 10:25:19', '2019-06-24 10:25:19', '110', '1');
INSERT INTO `purchase` VALUES ('3d5b902deac94cccb690ba25b0b3e061', null, 'b713524c4624443797e9ab2573bb5507', '苹果醋', '5', '1', '小绿', '2019-06-26 13:27:53', '2019-06-26 13:27:53', '1', '1');
INSERT INTO `purchase` VALUES ('4', null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `purchase` VALUES ('5953121c6285447693f9809244c69b29', null, '1', '苹果醋', '5', '1', '小绿', '2019-06-24 10:20:59', '2019-06-24 10:20:59', '110', '1');
INSERT INTO `purchase` VALUES ('5ac3e8b204ed4d6da1df62e0b812195e', 'PO2019070300001', 'b713524c4624443797e9ab2573bb5507', '苹果醋', '5', '1', '小绿', '2019-07-03 16:12:52', '2019-07-03 16:12:52', '1', '1');
INSERT INTO `purchase` VALUES ('5cdb3c1a8eb14069899970bdbdc553e2', null, 'b713524c4624443797e9ab2573bb5507', '苹果醋', '5', '1', '小绿', '2019-06-25 18:08:58', '2019-06-25 18:08:58', '1', '1');
INSERT INTO `purchase` VALUES ('5dc2d686c0464e2e8a31374aa0dc44f6', null, '1', '苹果醋', '5', '1', '小绿', '2019-06-24 10:21:56', '2019-06-24 10:21:56', '110', '1');
INSERT INTO `purchase` VALUES ('5fd900c927dd4de99dc77e371788176b', null, 'b713524c4624443797e9ab2573bb5507', '苹果醋', '5', '1', '小绿', '2019-06-25 18:02:00', '2019-06-25 18:02:00', '1', '1');
INSERT INTO `purchase` VALUES ('6c16f6c94aec4bc785e75c5989bbc0a5', null, '1', '苹果醋', '5', '1', '小绿', '2019-06-24 11:54:38', '2019-06-24 11:54:38', '110', '1');
INSERT INTO `purchase` VALUES ('707ac65b7343406a92f08a1e7386de03', null, '0c7d3df13b5a46c79f744abdfd025905', '小米供应商', '1', '1', '小米', '2019-07-03 16:15:39', '2019-07-03 16:15:39', '1', '1');
INSERT INTO `purchase` VALUES ('76cbf4d9de2a4988b2cbef19fa76640a', 'PO2019071500002', '1', 'A代理商', '1', '0', 'A门店', '2019-07-15 13:07:19', '2019-07-15 13:07:19', '1', '1');
INSERT INTO `purchase` VALUES ('8020439d5c00409bad64526a761f02e8', null, '0c7d3df13b5a46c79f744abdfd025905', '小米供应商', '7', '0', '大米', '2019-07-12 14:31:22', '2019-07-12 14:31:22', '15', '5');
INSERT INTO `purchase` VALUES ('85e06e03f7404bcf9179e81e165d5628', null, 'b713524c4624443797e9ab2573bb5507', '苹果醋', '5', '1', '小绿', '2019-06-25 15:02:32', '2019-06-25 15:02:32', '1', '1');
INSERT INTO `purchase` VALUES ('8721d37a9fe44141af4346f511290a0a', 'PO2019070300002', 'b713524c4624443797e9ab2573bb5507', '苹果醋', '5', '1', '小绿', '2019-07-03 16:12:59', '2019-07-03 16:12:59', '1', '1');
INSERT INTO `purchase` VALUES ('88a473b7281e44c49b7a865c151a3284', null, '0c7d3df13b5a46c79f744abdfd025905', '小米供应商', '1', '1', '小米', '2019-07-03 16:36:52', '2019-07-03 16:36:52', '1', '1');
INSERT INTO `purchase` VALUES ('8ef9049c7ccf45f4b1e692c881a681b9', null, '1', '苹果醋', '5', '1', '小绿', '2019-06-24 10:42:10', '2019-06-24 10:42:10', '110', '1');
INSERT INTO `purchase` VALUES ('916957c68eb1445a8b9597d96acb6de7', null, '1', '苹果醋', '5', '1', '小绿', '2019-06-24 10:18:04', '2019-06-24 10:18:04', '110', '1');
INSERT INTO `purchase` VALUES ('9de1a57d45674af3a17ede8c7f8a4069', null, '1', '苹果醋', '5', '1', '小绿', '2019-06-24 11:57:09', '2019-06-24 11:57:09', '110', '1');
INSERT INTO `purchase` VALUES ('a3b709e6b1e74d88909b815d76eb051e', 'PO2019070300003', 'b713524c4624443797e9ab2573bb5507', '苹果醋', '5', '1', '小绿', '2019-07-03 16:13:11', '2019-07-03 16:13:11', '1', '1');
INSERT INTO `purchase` VALUES ('b309be90558b4f3c87f09ca5f4a93a0f', null, '1', '苹果醋', '5', '1', '小绿', '2019-06-24 16:52:54', '2019-06-24 16:52:54', '110', '1');
INSERT INTO `purchase` VALUES ('bb72eb76656140d0be746baede1ffaee', null, '0c7d3df13b5a46c79f744abdfd025905', '小米供应商', '1', '1', '小米', '2019-06-28 16:24:04', '2019-06-28 16:24:04', '1', '1');
INSERT INTO `purchase` VALUES ('bbd814def1294135aabba785b1e7bc02', null, '1', '苹果醋', '5', '1', '小绿', '2019-06-25 15:59:08', '2019-06-25 15:59:08', '110', '5');
INSERT INTO `purchase` VALUES ('c3ea2b7bb60f4d2a95d76f49218cfc72', null, '1', '苹果醋', '5', '1', '小绿', '2019-06-24 11:58:59', '2019-06-24 11:58:59', '110', '1');
INSERT INTO `purchase` VALUES ('cbb56dc6e0d643829f040c63601e761e', null, '1', '苹果醋', '5', '1', '小绿', '2019-06-24 11:05:25', '2019-06-24 11:05:25', '110', '1');
INSERT INTO `purchase` VALUES ('cfbffb46bd8544a6a37647e645d1e45d', 'PO2019071500001', '1', 'A代理商', '1', '0', 'A门店', '2019-07-15 13:04:14', '2019-07-15 13:04:14', '1', '1');
INSERT INTO `purchase` VALUES ('d3b8492393424d9686d5b607d7b84b3d', null, '1', '苹果醋', '5', '1', '小绿', '2019-06-24 10:51:20', '2019-06-24 10:51:20', '110', '1');
INSERT INTO `purchase` VALUES ('d862f3ed65894d4ab665f17bf0c9ec14', null, '0c7d3df13b5a46c79f744abdfd025905', '小米供应商', '1', '1', '小米', '2019-06-28 16:28:34', '2019-06-28 16:28:34', '1', '1');
INSERT INTO `purchase` VALUES ('eaba4c8bbe1b4d8882c81d53329138a6', null, '1', '苹果醋', '5', '1', '小绿', '2019-07-09 15:05:26', '2019-07-09 15:05:26', '110', '5');

-- ----------------------------
-- Table structure for `purchase_commodity`
-- ----------------------------
DROP TABLE IF EXISTS `purchase_commodity`;
CREATE TABLE `purchase_commodity` (
  `id` char(32) NOT NULL COMMENT '编号',
  `purchase_id` char(32) NOT NULL COMMENT '采购单编号',
  `name` varchar(200) NOT NULL COMMENT '商品名称',
  `barcode` varchar(100) DEFAULT NULL COMMENT '商品条码',
  `image` varchar(200) DEFAULT NULL COMMENT '图片目录地址',
  `sku_id` char(32) NOT NULL COMMENT 'sku编号',
  `sku1` varchar(100) DEFAULT NULL,
  `sku2` varchar(100) DEFAULT NULL,
  `sku3` varchar(100) DEFAULT NULL,
  `sku_barcode` varchar(100) DEFAULT NULL COMMENT '规格条码',
  `counts` int(11) DEFAULT NULL COMMENT '数量',
  `retail_price` float DEFAULT NULL COMMENT '单价',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_purchase_commodity_purchase_id` (`purchase_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='采购商品信息';

-- ----------------------------
-- Records of purchase_commodity
-- ----------------------------
INSERT INTO `purchase_commodity` VALUES ('01630edcef1f4d33a5e1a1b4a4a2d621', '34ca52fcadcc4e5d8fe36da8677c165c', '小红', '911', '119', '1', '颜色', '大小', '容量', '985', '500', '9');
INSERT INTO `purchase_commodity` VALUES ('09c9916972ca49979c2c3f9b3b936521', 'a3b709e6b1e74d88909b815d76eb051e', '小红', '74987491', '119', '1', '5.5寸', null, null, '478491651', '15', '16481');
INSERT INTO `purchase_commodity` VALUES ('0dd41545ad794191a66378eca2dfe883', '300a78d50f9347fbabc84a0ca85c1e1a', '小红', '74987491', '119', '1', '蓝色', '256G', '5.5寸', '478491651', '15', '16481');
INSERT INTO `purchase_commodity` VALUES ('1', '1', '小白', null, null, '1', null, null, null, null, null, null);
INSERT INTO `purchase_commodity` VALUES ('10650e915e37459091beb2702a462217', '34ca52fcadcc4e5d8fe36da8677c165c', '小红', '911', '119', '1', '颜色', '大小', '容量', '985', '20', '9');
INSERT INTO `purchase_commodity` VALUES ('2', '3', '小蓝', null, null, '1', null, null, null, null, null, null);
INSERT INTO `purchase_commodity` VALUES ('3', '3', '小绿', null, null, '2', null, null, null, null, null, null);
INSERT INTO `purchase_commodity` VALUES ('3891d768b5e542b29437428f6e137e49', '1693718d3f364754826d18503c5688be', '小红', '911', '119', '1', '颜色', '大小', '容量', '985', '20', '9');
INSERT INTO `purchase_commodity` VALUES ('4d8863a95e1c4786b64a083301fac359', '5fd900c927dd4de99dc77e371788176b', '小红', '74987491', '119', '7d6acc07940f46c29a95834ae20bb72c', '5.5寸', null, null, '478491651', '15', '16481');
INSERT INTO `purchase_commodity` VALUES ('554ce76789594859bd14c181857456b4', 'd862f3ed65894d4ab665f17bf0c9ec14', '苹果', '62513425', '51afd6561a', '84aae1665b374fd69f8d97678ba705c8', '红色', '1024G', null, '459824379', '20', '2000');
INSERT INTO `purchase_commodity` VALUES ('5abc4a312cf34e62925375d8f2d8f8a6', '88a473b7281e44c49b7a865c151a3284', '苹果', '62513425', '51afd6561a', '8b8199b5c6ca4fa5ac8c80de9f00f93f', '红色', '1024G', null, '459824379', '20', '2000');
INSERT INTO `purchase_commodity` VALUES ('6726cf258f6746a7b6063a704c8d0fdd', '3d5b902deac94cccb690ba25b0b3e061', '小红', '74987491', '119', '506acedea57c41d695e0cef3ee06a609', '蓝色', '256G', '5.5寸', '478491651', '1000', '16481');
INSERT INTO `purchase_commodity` VALUES ('6a85becc78374d5a831c6cfd0d2a31c3', '85e06e03f7404bcf9179e81e165d5628', '小红', '74987491', '119', '1', '5.5寸', null, null, '478491651', '15', '16481');
INSERT INTO `purchase_commodity` VALUES ('6ea7399f95b44110a59995963bf5eb93', '5cdb3c1a8eb14069899970bdbdc553e2', '小红', '74987491', '119', '1', '5.5寸', null, null, '478491651', '15', '16481');
INSERT INTO `purchase_commodity` VALUES ('7221522c793047a3b6a9b3643a6b8bce', '1693718d3f364754826d18503c5688be', '小红', '911', '119', '1', '颜色', '大小', '容量', '985', '20', '9');
INSERT INTO `purchase_commodity` VALUES ('7ac2d4b428174a4fa510b7c1dd424eb2', '34ca52fcadcc4e5d8fe36da8677c165c', '小红', '911', '119', '1', '颜色', '大小', '容量', '985', '20', '9');
INSERT INTO `purchase_commodity` VALUES ('87d1534dfb2c44689b61f829d7391a3c', '707ac65b7343406a92f08a1e7386de03', '苹果', '62513425', '51afd6561a', '7d6acc07940f46c29a95834ae20bb42c', '红色', '1024G', null, '459824379', '20', '2000');
INSERT INTO `purchase_commodity` VALUES ('8897087102c7405c9ee49045599810c9', 'eaba4c8bbe1b4d8882c81d53329138a6', '小红', '911', '119', '1', '颜色', '大小', '容量', '985', '20', '9');
INSERT INTO `purchase_commodity` VALUES ('8cadccca8a1c4b45ba2dec796cd63a8d', '5ac3e8b204ed4d6da1df62e0b812195e', '小红', '74987491', '119', '1', '5.5寸', null, null, '478491651', '15', '16481');
INSERT INTO `purchase_commodity` VALUES ('966ab2b32e0a45e783e318533e4538b8', '049e0f1b78bd491baa5a996e27dab865', '小红', '74987491', '119', '1', '5.5寸', null, null, '478491651', '15', '16481');
INSERT INTO `purchase_commodity` VALUES ('a1dc66832a79454aa26130a2002b0264', '8020439d5c00409bad64526a761f02e8', '苹果手机', '123', 'http://www.baidu.com', 'd6a6396cfb22472dba0bacbc17c02dd4', '白色add', '64', null, '123001', '500', '199.9');
INSERT INTO `purchase_commodity` VALUES ('c5054b7bbb2f415e819e704d360d7f65', 'eaba4c8bbe1b4d8882c81d53329138a6', '小红', '911', '119', '1', '颜色', '大小', '容量', '985', '20', '9');
INSERT INTO `purchase_commodity` VALUES ('cd34fa2079214f16a336ec40a521d472', '1693718d3f364754826d18503c5688be', '小红', '911', '119', '1', '颜色', '大小', '容量', '985', '20', '9');
INSERT INTO `purchase_commodity` VALUES ('cf163be1cbbe4a0cb3d31854f5dd23db', 'eaba4c8bbe1b4d8882c81d53329138a6', '小红', '911', '119', '1', '颜色', '大小', '容量', '985', '20', '9');
INSERT INTO `purchase_commodity` VALUES ('e2df0ca733314e4ca514242206868e51', '8721d37a9fe44141af4346f511290a0a', '小红', '74987491', '119', '1', '5.5寸', null, null, '478491651', '15', '16481');

-- ----------------------------
-- Table structure for `stockin`
-- ----------------------------
DROP TABLE IF EXISTS `stockin`;
CREATE TABLE `stockin` (
  `id` char(32) NOT NULL,
  `daily_id` char(15) DEFAULT NULL COMMENT '单号',
  `purchase_id` char(32) NOT NULL COMMENT '采购单编号',
  `supply_id` char(32) DEFAULT NULL COMMENT '供应商id',
  `supply_name` varchar(100) DEFAULT NULL COMMENT '供应商名称',
  `to` char(32) DEFAULT NULL COMMENT '门店/仓库id',
  `to_type` int(11) DEFAULT NULL COMMENT '门店/仓库类型',
  `to_name` varchar(100) DEFAULT NULL COMMENT '门店/仓库名称',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `create_userid` char(32) DEFAULT NULL COMMENT '最后修改人',
  `bid` char(32) DEFAULT NULL COMMENT 'business id',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_stockin_purchase_id` (`purchase_id`) USING BTREE,
  KEY `idx_stockin_bid` (`bid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='入库单';

-- ----------------------------
-- Records of stockin
-- ----------------------------
INSERT INTO `stockin` VALUES ('1', '1', '34ca52fcadcc4e5d8fe36da8677c165c', null, null, null, null, null, '2019-06-25 19:12:37', '1', '1');
INSERT INTO `stockin` VALUES ('2', '2', '34ca52fcadcc4e5d8fe36da8677c165c', null, null, null, null, null, null, null, null);
INSERT INTO `stockin` VALUES ('79aac316ec4b49449688728dd1c374e5', 'IO2019070500009', '3d5b902deac94cccb690ba25b0b3e061', 'b713524c4624443797e9ab2573bb5507', '苹果醋', '5', '1', '小绿', '2019-07-05 11:38:55', '1', '1');
INSERT INTO `stockin` VALUES ('823262a058f6414e853f375003eed87a', 'IO2019070500006', '3d5b902deac94cccb690ba25b0b3e061', 'b713524c4624443797e9ab2573bb5507', '苹果醋', '5', '1', '小绿', '2019-07-05 11:30:17', '1', '1');

-- ----------------------------
-- Table structure for `stockin_commodity`
-- ----------------------------
DROP TABLE IF EXISTS `stockin_commodity`;
CREATE TABLE `stockin_commodity` (
  `id` char(32) NOT NULL,
  `stockin_id` char(32) DEFAULT NULL COMMENT '入库单id',
  `commodity` char(32) DEFAULT NULL COMMENT '商品id',
  `purchase_commodity_id` char(32) DEFAULT NULL COMMENT '采购商品表id',
  `sku1` char(32) DEFAULT NULL COMMENT '规格值',
  `sku2` char(32) DEFAULT NULL,
  `sku3` char(32) DEFAULT NULL,
  `counts` int(11) DEFAULT NULL COMMENT '数量',
  `retail_price` float DEFAULT NULL COMMENT '单价',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_stockin_commodity_stockin_id` (`stockin_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='入库商品表';

-- ----------------------------
-- Records of stockin_commodity
-- ----------------------------
INSERT INTO `stockin_commodity` VALUES ('1', '1', '1', '', null, null, null, '1', null);
INSERT INTO `stockin_commodity` VALUES ('2', null, null, '', null, null, null, '2', null);
INSERT INTO `stockin_commodity` VALUES ('65fa801a2b234f2b9a6d42fc06687bb1', '823262a058f6414e853f375003eed87a', '1', null, '蓝色', '256G', '5.5寸', '5', '16481');
INSERT INTO `stockin_commodity` VALUES ('eb53ea4b179344d998b0664d9190a809', '79aac316ec4b49449688728dd1c374e5', '1', '6726cf258f6746a7b6063a704c8d0fdd', '蓝色', '256G', '5.5寸', '5', '16481');

-- ----------------------------
-- Table structure for `supply`
-- ----------------------------
DROP TABLE IF EXISTS `supply`;
CREATE TABLE `supply` (
  `id` char(32) NOT NULL,
  `name` varchar(200) DEFAULT NULL COMMENT '供应商名称',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `update_userid` char(32) DEFAULT NULL COMMENT '最后修改人',
  `bid` char(32) DEFAULT NULL COMMENT 'business id',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_supply_bid` (`bid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='供应商';

-- ----------------------------
-- Records of supply
-- ----------------------------
INSERT INTO `supply` VALUES ('0015682cc68c4c1c93033ff763ee8b70', '苹果醋', '2019-06-24 11:54:39', '2019-06-24 11:54:39', '110', '1');
INSERT INTO `supply` VALUES ('0c7d3df13b5a46c79f744abdfd025905', '小米供应商', '2019-06-25 14:58:49', '2019-06-25 14:58:49', '1', '1');
INSERT INTO `supply` VALUES ('5', 'xx', null, null, null, '1');
INSERT INTO `supply` VALUES ('6231ca04d03f483a94ed808bf938b63c', '小米供应商', '2019-06-25 18:17:17', '2019-06-25 18:17:17', '1', '1');
INSERT INTO `supply` VALUES ('82f5ccea91f5452580c8e050a810248e', '苹果醋', '2019-06-24 10:42:10', '2019-06-24 10:42:10', '110', '1');
INSERT INTO `supply` VALUES ('8447adb62d0e40b297ec86152bd598f4', '苹果醋', '2019-06-25 15:59:08', '2019-06-25 15:59:08', '110', '9');
INSERT INTO `supply` VALUES ('8756a11e0ec4421fbb99f75c6224afd3', '小米供应商', '2019-06-26 13:33:54', '2019-06-26 13:33:54', '1', '1');
INSERT INTO `supply` VALUES ('882b4937bcdb4c0293f9ddcac47a7fd0', '小米供应商', '2019-07-04 09:44:44', '2019-07-04 09:44:44', '1', '1');
INSERT INTO `supply` VALUES ('912fc256782742a282e0f16ac78e2204', '苹果醋', '2019-06-24 10:51:21', '2019-06-24 10:51:21', '110', '1');
INSERT INTO `supply` VALUES ('98e6d492184e424c8fcf07b9654f3857', '苹果醋', '2019-06-24 11:05:25', '2019-06-24 11:05:25', '110', '1');
INSERT INTO `supply` VALUES ('ae5fca4bbcab4dc3b09803e6a7c457fd', '苹果醋', '2019-07-04 15:51:47', '2019-07-04 15:51:47', '110', '9');
INSERT INTO `supply` VALUES ('b713524c4624443797e9ab2573bb5507', '苹果醋', '2019-06-24 16:52:54', '2019-06-24 16:52:54', '110', '1');
INSERT INTO `supply` VALUES ('b7ed7801390a43fb900cfcafa1be453a', '苹果', '2019-06-24 10:24:59', '2019-07-04 09:44:56', '1', '1');
INSERT INTO `supply` VALUES ('be5930b0c6ff4c559382444f14081768', '苹果醋', '2019-07-09 15:05:26', '2019-07-09 15:05:26', '110', '9');
INSERT INTO `supply` VALUES ('db55efba9442425788783761a5c3fb4a', '苹果醋', '2019-06-24 11:57:09', '2019-06-24 11:57:09', '110', '1');
INSERT INTO `supply` VALUES ('e3e64172320f44368ee5a768057acd2e', '小米供应商', '2019-06-25 18:09:13', '2019-06-25 18:09:13', '1', '1');
INSERT INTO `supply` VALUES ('f73b54f958ac469c8b7d5f513d0985e5', '苹果醋', '2019-07-11 16:53:41', '2019-07-11 16:53:41', '110', '9');
INSERT INTO `supply` VALUES ('f93a6a88927f44b292a07c1aa4696d39', '苹果醋', '2019-06-24 11:58:59', '2019-06-24 11:58:59', '110', '1');
INSERT INTO `supply` VALUES ('fcfd6c7242424b0989d10713801befa8', '苹果醋', '2019-06-24 10:25:19', '2019-06-24 10:25:19', '110', '1');

-- ----------------------------
-- Table structure for `supply_contact`
-- ----------------------------
DROP TABLE IF EXISTS `supply_contact`;
CREATE TABLE `supply_contact` (
  `id` char(32) NOT NULL,
  `supply_id` char(32) NOT NULL COMMENT '供应商id',
  `name` varchar(50) DEFAULT NULL COMMENT '联系人',
  `position` varchar(100) DEFAULT NULL COMMENT '职位',
  `mobile` varchar(50) DEFAULT NULL COMMENT '手机号',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_supply_contact_supply_id` (`supply_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='供应商';

-- ----------------------------
-- Records of supply_contact
-- ----------------------------
INSERT INTO `supply_contact` VALUES ('0718aaea51fb46a6940b2f57691a19b0', '6231ca04d03f483a94ed808bf938b63c', '王老五', '经理', '17787778778');
INSERT INTO `supply_contact` VALUES ('08a05236b8f04785a1ded6ff480942a2', '0c7d3df13b5a46c79f744abdfd025905', '王老五', '经理', '17787778778');
INSERT INTO `supply_contact` VALUES ('1', '5', null, null, null);
INSERT INTO `supply_contact` VALUES ('10a9d3404017477e9d6cefde5f9c012c', 'f93a6a88927f44b292a07c1aa4696d39', '杨过0', '光明顶', '15623984156');
INSERT INTO `supply_contact` VALUES ('121ca2204f324c07b995f1356ca64c8d', 'b713524c4624443797e9ab2573bb5507', '杨过0', '光明顶', '15623984156');
INSERT INTO `supply_contact` VALUES ('136c8f30322f45a8989a4a6254251347', 'b7ed7801390a43fb900cfcafa1be453a', '杨过2', '光明顶', '15623984156');
INSERT INTO `supply_contact` VALUES ('2', '5', null, null, null);
INSERT INTO `supply_contact` VALUES ('20f60a1b29d3475784cce728b214d81d', '98e6d492184e424c8fcf07b9654f3857', '杨过1', '光明顶', '15623984156');
INSERT INTO `supply_contact` VALUES ('218a067f64124f4db8c62952ccaf4160', '82f5ccea91f5452580c8e050a810248e', '杨过2', '光明顶', '15623984156');
INSERT INTO `supply_contact` VALUES ('226df17f517743b6a8783b3072037c2e', 'ae5fca4bbcab4dc3b09803e6a7c457fd', '杨过0', '光明顶', '15623984156');
INSERT INTO `supply_contact` VALUES ('24572240810e4d0a9b91dc0953bf3041', 'f73b54f958ac469c8b7d5f513d0985e5', '杨过1', '光明顶', '15623984156');
INSERT INTO `supply_contact` VALUES ('25c75123fdcb4619a8aed601c7650a79', 'fcfd6c7242424b0989d10713801befa8', '杨过1', '光明顶', '15623984156');
INSERT INTO `supply_contact` VALUES ('2a4f622b9f6b4daa93c447f2acb96dcc', 'b7ed7801390a43fb900cfcafa1be453a', '杨过', '董事长', '15623984156');
INSERT INTO `supply_contact` VALUES ('3', '4', null, null, null);
INSERT INTO `supply_contact` VALUES ('31877d4bc1a6490fa214858b98e6ce3c', 'b713524c4624443797e9ab2573bb5507', '杨过1', '光明顶', '15623984156');
INSERT INTO `supply_contact` VALUES ('359b8c48b6fb438f891cb202d8a2f56d', '912fc256782742a282e0f16ac78e2204', '杨过0', '光明顶', '15623984156');
INSERT INTO `supply_contact` VALUES ('370f4aa07feb48a8a63de853eaefb335', 'db55efba9442425788783761a5c3fb4a', '杨过2', '光明顶', '15623984156');
INSERT INTO `supply_contact` VALUES ('37d9db1b34944a4f9c0bb8ecbf262d34', 'e3e64172320f44368ee5a768057acd2e', '王老五', '经理', '17787778778');
INSERT INTO `supply_contact` VALUES ('3c8d27d40e3647deaceacc12fcf79539', 'b713524c4624443797e9ab2573bb5507', '杨过2', '光明顶', '15623984156');
INSERT INTO `supply_contact` VALUES ('3e68b3e5bc074f7f8c8a51df4bc0ca16', '8447adb62d0e40b297ec86152bd598f4', '杨过1', '光明顶', '15623984156');
INSERT INTO `supply_contact` VALUES ('40624dab75154149a55fb246c6fd3f14', 'ae5fca4bbcab4dc3b09803e6a7c457fd', '杨过1', '光明顶', '15623984156');
INSERT INTO `supply_contact` VALUES ('40d945d23d124a2685828e3ac8a0db17', 'b7ed7801390a43fb900cfcafa1be453a', '杨过', '董事长', '15623984156');
INSERT INTO `supply_contact` VALUES ('415951d1a49a486ca448544e87f5b0bc', 'f93a6a88927f44b292a07c1aa4696d39', '杨过2', '光明顶', '15623984156');
INSERT INTO `supply_contact` VALUES ('437d6713e31b44dfa16175f34144c935', '98e6d492184e424c8fcf07b9654f3857', '杨过0', '光明顶', '15623984156');
INSERT INTO `supply_contact` VALUES ('4af1c70de8284b36b9a4f7c948b3aca5', '0015682cc68c4c1c93033ff763ee8b70', '杨过1', '光明顶', '15623984156');
INSERT INTO `supply_contact` VALUES ('57603e52741b4c6a803559be68389c5c', 'ae5fca4bbcab4dc3b09803e6a7c457fd', '杨过2', '光明顶', '15623984156');
INSERT INTO `supply_contact` VALUES ('5f9ef7349cf7420e8a54c30ed31ddee6', 'fcfd6c7242424b0989d10713801befa8', '杨过2', '光明顶', '15623984156');
INSERT INTO `supply_contact` VALUES ('631b856f06b242b489b50da8cbacd5a8', 'b7ed7801390a43fb900cfcafa1be453a', '杨过', '董事长', '15623984156');
INSERT INTO `supply_contact` VALUES ('6b89f97e2a2e46ea9aaf2a77c2ff0a9a', 'b7ed7801390a43fb900cfcafa1be453a', '杨过', '董事长', '15623984156');
INSERT INTO `supply_contact` VALUES ('743ee2f7136f4b84b478686eb2a24ea8', 'be5930b0c6ff4c559382444f14081768', '杨过1', '光明顶', '15623984156');
INSERT INTO `supply_contact` VALUES ('7eec5269b93b487a97d651280eb54a32', 'b7ed7801390a43fb900cfcafa1be453a', '杨过', '董事长', '15623984156');
INSERT INTO `supply_contact` VALUES ('824d790ddea64687b224957dff5bea62', 'f93a6a88927f44b292a07c1aa4696d39', '杨过1', '光明顶', '15623984156');
INSERT INTO `supply_contact` VALUES ('89fe905b426546acb839805f68482322', 'fcfd6c7242424b0989d10713801befa8', '杨过0', '光明顶', '15623984156');
INSERT INTO `supply_contact` VALUES ('8d8c9d7aaf8b4d4ba6591cea25b7fdff', '8447adb62d0e40b297ec86152bd598f4', '杨过0', '光明顶', '15623984156');
INSERT INTO `supply_contact` VALUES ('93fc15f2d2984fb9b87df199e02d737b', '0015682cc68c4c1c93033ff763ee8b70', '杨过2', '光明顶', '15623984156');
INSERT INTO `supply_contact` VALUES ('94a488352492403385f775a6234057ff', 'b7ed7801390a43fb900cfcafa1be453a', '杨过1', '光明顶', '15623984156');
INSERT INTO `supply_contact` VALUES ('96fd0445df884265801cc10122af0f56', 'be5930b0c6ff4c559382444f14081768', '杨过0', '光明顶', '15623984156');
INSERT INTO `supply_contact` VALUES ('9828a1a544054c9ba5ed562643ec9164', 'db55efba9442425788783761a5c3fb4a', '杨过1', '光明顶', '15623984156');
INSERT INTO `supply_contact` VALUES ('a00cc0066b5c49ffa4e82f0aa628a432', '912fc256782742a282e0f16ac78e2204', '杨过1', '光明顶', '15623984156');
INSERT INTO `supply_contact` VALUES ('a09535491fff4192b0f4d6d58641e21e', '8447adb62d0e40b297ec86152bd598f4', '杨过2', '光明顶', '15623984156');
INSERT INTO `supply_contact` VALUES ('a44bec1ea4154736bb0ef25ac26b0a41', '8756a11e0ec4421fbb99f75c6224afd3', '王老五', '经理', '17787778778');
INSERT INTO `supply_contact` VALUES ('a552dcde18704a9fb5c9d4af33fc4408', 'b7ed7801390a43fb900cfcafa1be453a', '杨过0', '光明顶', '15623984156');
INSERT INTO `supply_contact` VALUES ('a7256cc7982e4e4ea9b985ef39f6ab87', '82f5ccea91f5452580c8e050a810248e', '杨过1', '光明顶', '15623984156');
INSERT INTO `supply_contact` VALUES ('b829577ab9664b7ca9c10b0bccf11c9e', 'db55efba9442425788783761a5c3fb4a', '杨过0', '光明顶', '15623984156');
INSERT INTO `supply_contact` VALUES ('b91a118da0554ea986f5e5e6cc60dd50', 'f73b54f958ac469c8b7d5f513d0985e5', '杨过0', '光明顶', '15623984156');
INSERT INTO `supply_contact` VALUES ('bbf2407b7b1b46e1899871c13233ba80', '98e6d492184e424c8fcf07b9654f3857', '杨过2', '光明顶', '15623984156');
INSERT INTO `supply_contact` VALUES ('bc6c901aa2a94a809aac1a77a109718d', 'be5930b0c6ff4c559382444f14081768', '杨过2', '光明顶', '15623984156');
INSERT INTO `supply_contact` VALUES ('bcf6e1c648e44e67aae460901e97db63', 'f73b54f958ac469c8b7d5f513d0985e5', '杨过2', '光明顶', '15623984156');
INSERT INTO `supply_contact` VALUES ('c467cfca613648449590d199789fb778', '882b4937bcdb4c0293f9ddcac47a7fd0', '王老五', '经理', '17787778778');
INSERT INTO `supply_contact` VALUES ('c74b6fb6f266427392eae9f0eee11ac8', '912fc256782742a282e0f16ac78e2204', '杨过2', '光明顶', '15623984156');
INSERT INTO `supply_contact` VALUES ('d3c6b46e4fc54b5eab3c00d59d82cf53', 'b7ed7801390a43fb900cfcafa1be453a', '杨过', '董事长', '15623984156');
INSERT INTO `supply_contact` VALUES ('d5fefeb593f54a939e8a9649d3bc012e', '82f5ccea91f5452580c8e050a810248e', '杨过0', '光明顶', '15623984156');
INSERT INTO `supply_contact` VALUES ('f21cb6ff0d6c4d50838e59d12ed6e5bf', '0015682cc68c4c1c93033ff763ee8b70', '杨过0', '光明顶', '15623984156');
