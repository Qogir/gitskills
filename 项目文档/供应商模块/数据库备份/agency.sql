/*
 Navicat Premium Data Transfer

 Source Server         : lemuji
 Source Server Type    : MySQL
 Source Server Version : 80016
 Source Host           : 192.168.1.41:3306
 Source Schema         : agency

 Target Server Type    : MySQL
 Target Server Version : 80016
 File Encoding         : 65001

 Date: 26/06/2019 16:48:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for allocate
-- ----------------------------
DROP TABLE IF EXISTS `allocate`;
CREATE TABLE `allocate`  (
  `id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调拨单编号',
  `from` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '调出方id',
  `from_type` int(11) NULL DEFAULT NULL COMMENT '调出方类型，0门店1	仓库',
  `from_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '调出方名称',
  `to` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '调入方id',
  `to_type` int(11) NULL DEFAULT NULL COMMENT '调入方类型,0门店1仓库',
  `to_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '调入方名称',
  `create_time` timestamp(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT NULL COMMENT '修改时间',
  `update_userid` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '最后修改人',
  `status` int(11) NULL DEFAULT NULL COMMENT '0待入库1已入库2待出库3已出库',
  `bid` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'business id',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_allocate_create_time`(`create_time`) USING BTREE,
  INDEX `idx_allocate_bid`(`bid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '调拨单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of allocate
-- ----------------------------
INSERT INTO `allocate` VALUES ('1', '1', 0, '小红', '5', 1, '小绿', '2019-06-06 16:53:50', '2019-06-20 15:12:01', '110', 0, '1');
INSERT INTO `allocate` VALUES ('1266028eb48c42ea9e459b7ecb2ac4f6', '5', 1, '小绿', '5', 1, '小兰', '2019-06-24 10:42:09', '2019-06-24 10:42:09', '110', 2, '1');
INSERT INTO `allocate` VALUES ('2', '2', 1, '小白', '1', 0, '小红', '2019-06-13 16:54:22', '2019-06-20 15:12:01', '110', 1, '1');
INSERT INTO `allocate` VALUES ('274b2a9d38cc4ea48b34834bcb7d356b', '42', 0, '小米', '16', 1, '大米', '2019-06-25 18:09:07', '2019-06-25 18:09:07', '1', 2, '1');
INSERT INTO `allocate` VALUES ('2ebe26434ed045a59eda34d2f6520fad', '42', 0, '小米', '16', 1, '大米', '2019-06-26 13:29:58', '2019-06-26 13:29:58', '1', 2, '1');
INSERT INTO `allocate` VALUES ('3', '3', 1, '小兰', '2', 1, '小白', '2019-06-19 14:23:51', '2019-06-05 14:23:54', '911', 2, '1');
INSERT INTO `allocate` VALUES ('31b952176da04371844ba2313f9b4517', '5', 1, '小绿', '3', 1, '小兰', '2019-06-24 16:52:53', '2019-06-24 16:52:53', '110', 2, '1');
INSERT INTO `allocate` VALUES ('38580055c845412693ba853d2f828f65', '42', 0, '小米', '16', 1, '大米', '2019-06-25 14:37:25', '2019-06-25 14:37:25', '1', 2, '1');
INSERT INTO `allocate` VALUES ('3ba7563fb30548678fb746b6c4da3ec4', '42', 0, '小米', '16', 1, '大米', '2019-06-25 14:45:11', '2019-06-25 14:45:11', '1', 2, '1');
INSERT INTO `allocate` VALUES ('4', '5', 1, '小绿', '4', 0, '小小', '2019-06-19 14:24:02', '2019-06-25 15:59:07', '110', 1, '1');
INSERT INTO `allocate` VALUES ('535fa8f342f64ff1a6e28ebf5570f41e', '42', 0, '小米', '16', 1, '大米', '2019-06-25 18:02:43', '2019-06-25 18:02:43', '1', 2, '1');
INSERT INTO `allocate` VALUES ('64252822f5114698bbbc5f1b4e28b020', '42', 0, '小米', '16', 1, '大米', '2019-06-25 17:54:10', '2019-06-25 17:54:10', '1', 2, '1');
INSERT INTO `allocate` VALUES ('6e58b80215f2430b8fb2b16d90dc4d09', '5', 1, '小绿', '2', 1, '小兰', '2019-06-24 11:05:25', '2019-06-24 11:05:25', '110', 2, '1');
INSERT INTO `allocate` VALUES ('6ff7380bca4141128ba634ecd3d34412', '5', 1, '小绿', '3', 1, '小兰', '2019-06-24 10:51:20', '2019-06-24 10:51:20', '110', 2, '1');
INSERT INTO `allocate` VALUES ('7', '1', 0, '小红', '5', 1, '小绿', '2019-06-06 16:53:50', '2019-06-19 15:13:24', '110', 0, '1');
INSERT INTO `allocate` VALUES ('8', '1', 0, '小红', '5', 1, '小绿', '2019-06-06 16:53:50', '2019-06-19 15:13:24', '110', 0, '1');
INSERT INTO `allocate` VALUES ('86f07d47f40c4aa9a1d40268916ea2f7', '5', 1, '小绿', '3', 1, '小兰', '2019-06-24 11:58:58', '2019-06-24 11:58:58', '110', 2, '1');
INSERT INTO `allocate` VALUES ('9cb65d11638345588976bebc97bf93f2', '5', 1, '小绿', '3', 1, '小兰', '2019-06-24 10:25:18', '2019-06-26 13:29:58', '1', 0, '1');
INSERT INTO `allocate` VALUES ('a1abe3b04a5d4f3fa20c5448ca2d4d5d', '5', 1, '小绿', '3', 1, '小兰', '2019-06-24 11:57:08', '2019-06-24 11:57:08', '110', 2, '1');
INSERT INTO `allocate` VALUES ('b7ba1c6b259a408f80da30a808d2c7e2', '4', 0, '小小', '5', 1, '小绿', '2019-06-20 15:12:02', '2019-06-20 15:12:02', '110', 2, '1');
INSERT INTO `allocate` VALUES ('c1d54b8aa4a3400db702cc36ef342393', '4', 0, '小小', '5', 1, '小绿', '2019-06-19 15:47:58', '2019-06-19 15:47:58', '110', 2, '1');
INSERT INTO `allocate` VALUES ('d71e1fd276604a0099e19408ab304807', '5', 1, '小绿', '3', 1, '小兰', '2019-06-24 10:09:33', '2019-06-24 10:09:33', '110', 2, '1');
INSERT INTO `allocate` VALUES ('dac46a774afe4b44b8c8e7497c7c6e0b', '42', 0, '小米', '16', 1, '大米', '2019-06-25 15:02:36', '2019-06-25 15:02:36', '1', 2, '1');
INSERT INTO `allocate` VALUES ('dd1e1ac8c2274d16984cdc82ae094400', '5', 1, '小绿', '3', 1, '小兰', '2019-06-25 15:59:07', '2019-06-25 15:59:07', '110', 2, '4');
INSERT INTO `allocate` VALUES ('ed2ab8163c3d4d45bc33caf23342c930', '5', 1, '小绿', '3', 1, '小兰', '2019-06-24 11:54:38', '2019-06-24 11:54:38', '110', 2, '1');
INSERT INTO `allocate` VALUES ('f25c7279867f4c3fa11ccef35b02b218', '5', 1, '小绿', '3', 1, '小兰', '2019-06-24 10:21:55', '2019-06-24 10:21:55', '110', 2, '1');
INSERT INTO `allocate` VALUES ('fccc0b6d638041648a9ad86f601bbc0b', '4', 0, '小小', '5', 1, '小绿', '2019-06-20 10:22:29', '2019-06-20 10:22:29', '110', 2, '1');

-- ----------------------------
-- Table structure for allocate_detail
-- ----------------------------
DROP TABLE IF EXISTS `allocate_detail`;
CREATE TABLE `allocate_detail`  (
  `id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '编号',
  `allocate_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '调拨单编号',
  `commodity` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '商品id',
  `counts` int(11) NULL DEFAULT NULL COMMENT '数量',
  `sku1` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '规格值',
  `sku2` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sku3` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_allocate_detail_allocate_id`(`allocate_id`) USING BTREE,
  INDEX `idx_allocate_detail_commodity`(`commodity`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '调拨单详情' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of allocate_detail
-- ----------------------------
INSERT INTO `allocate_detail` VALUES ('011c72466c534339936fd2c38612e18c', '6e58b80215f2430b8fb2b16d90dc4d09', 'b9e60a49d8aa4ba391eb190bfa8087d1', 2, '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('029000c59409406385190b91d7e1e1d6', '6e58b80215f2430b8fb2b16d90dc4d09', '8996dab7e98e4af1aeec162eb96b053d', 2, '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('087a35852e8d428db073ebf42378259a', 'f25c7279867f4c3fa11ccef35b02b218', 'b9e60a49d8aa4ba391eb190bfa8087d1', 2, '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('0dd69a8b384f404ca6d8f0a5dfd1856c', '1266028eb48c42ea9e459b7ecb2ac4f6', '27c1c682257f4078963cf5e19d6ebf76', 2, '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('1', '1', '21', 100, '红色', '128G', '5.0');
INSERT INTO `allocate_detail` VALUES ('1357cb7504d24dc9ac60d92c0a0dd1d2', '4', '025253b6eee94837a7b32a5f871d3bba', 2, '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('158f7cca59b04c0f9498920d490bb466', '4', 'f94f1057980b477d9e649053f641016f', 2, '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('2', '1', '22', 50, '蓝色', '64G', '5.0');
INSERT INTO `allocate_detail` VALUES ('2759d4320daf476880d8ba5f546a4e7f', '38580055c845412693ba853d2f828f65', '8996dab7e98e4af1aeec162eb96b053d', 11, '绿色', '256G', '5.5寸');
INSERT INTO `allocate_detail` VALUES ('2bd7979baf314e32b106d3735b7a39eb', '4', '12aa5104e847448a95ba73c53e3dea20', 2, '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('3', '3', '53', 100, '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('34ee695ee24443ab8a8a466a8b461dbb', '64252822f5114698bbbc5f1b4e28b020', '8996dab7e98e4af1aeec162eb96b053d', 11, '绿色', '256G', '5.5寸');
INSERT INTO `allocate_detail` VALUES ('366afe9e45184858a99787e13cb7e377', '4', 'e6782e4b99734455820f8b218f94e7e9', 2, '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('3af1d39401034969a5e15240e5b1fce1', '4', 'adc3e4ca47f643b29f34fb0dc5532dd1', 2, '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('3bc8fef96a8a4fd780b1c39a8510dd50', '31b952176da04371844ba2313f9b4517', '8c79410692bf4c27b0a83711ac30712b', 2, '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('4', '3', '54', 60, '红色', '128G', '5.5');
INSERT INTO `allocate_detail` VALUES ('41784209ee944258aaf4c2e863817cfb', 'a1abe3b04a5d4f3fa20c5448ca2d4d5d', 'a4e27fdcc2e04d5eb3e9f5d722153542', 2, '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('418cc838143a4bd6b82d8fcd3a2b4f6c', '4', '7cd9fe16baa64cf7acafb205dd7c8c85', 2, '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('461bd786dcd9494c8ae8dcd46cda191c', 'd71e1fd276604a0099e19408ab304807', '26046b8a40cc471c974858d063184710', 2, '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('4dedada40b0745fca48bf0a35383182c', '4', 'f454e693575d458daffe6f5083719989', 2, '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('5', '2', '91', 75, '蓝色', '64G', '5.5');
INSERT INTO `allocate_detail` VALUES ('51c09af3958d4b78a34b804a0c1accd3', '4', 'b16e0419a75a4c61a70f46221eb7df70', 2, '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('54fd3bb870c8455486de3a34bae1d9da', 'dd1e1ac8c2274d16984cdc82ae094400', 'f45db1ac835347c7af49eed8542c2573', 2, '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('58795935cd0346b89bc845cfdae80a44', '4', '25bc16b4c6f34763a93f05477b04896e', 2, '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('6', '2', '92', 25, '绿色', '128G', '5.0');
INSERT INTO `allocate_detail` VALUES ('60d8599a594848e7a5aac133b871a6e1', 'a1abe3b04a5d4f3fa20c5448ca2d4d5d', 'e0deb64623e4455e80a17298731bd308', 2, '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('61bc4ebcf15b494faa8ba010bdad9e9d', 'a1abe3b04a5d4f3fa20c5448ca2d4d5d', 'c4643bada73b4587ab93d045bf7c9e57', 2, '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('61cb1ef2c2104b53b9df4672669420fb', '4', '7761b63adaaf4b5cae76953fdc3a9a91', 2, '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('6406a104da6545599498b5efe9db2e2f', '86f07d47f40c4aa9a1d40268916ea2f7', '0350bb8000f64b74b4b3b2ab822a667c', 2, '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('648049221d194a8aa38729d3261d10bf', 'd71e1fd276604a0099e19408ab304807', '42fb7d89b4d74426bc8cd506b21d1c6b', 2, '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('674a1f4cdfd645e4ab584bcfab3922a9', '9cb65d11638345588976bebc97bf93f2', 'f5480e8e0b0949df8c0ae1526499e0b0', 2, '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('6c12f5cbf4584aa3b4105d795bb6bbf6', 'dd1e1ac8c2274d16984cdc82ae094400', '25a74404ac4c461286f8dd9c32189971', 2, '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('6fc45ba8b85e42f78066af8495fa0eda', 'b7ba1c6b259a408f80da30a808d2c7e2', '99', 66, '绿色', '128G', '6.0');
INSERT INTO `allocate_detail` VALUES ('7', '2', '93', 17, '红色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('716036e02f9c471db8432228a26df5b6', '4', 'f527f38881ec48f6b164163afc0f6e80', 2, '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('74b101b730d74768ac888d6e44236fbc', '4', 'c4c98f4e369748a19729d82b7473212c', 2, '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('78941534c76d4a05b15343717c7d9530', '2ebe26434ed045a59eda34d2f6520fad', '8996dab7e98e4af1aeec162eb96b053d', 11, '绿色', '256G', '5.5寸');
INSERT INTO `allocate_detail` VALUES ('7d0696481c4c4a03a22f620b04df739f', '86f07d47f40c4aa9a1d40268916ea2f7', '85866a67d3654635a591491c15ef6bf2', 2, '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('7d6b9e27534a4bfeadd39ff23058b693', '4', 'ba4a0a8cbadd45099781cf56f328b5d4', 2, '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('7fe9a90d2ce1444a9d9d66035e56e771', '4', 'e2ab8fca78f94de28a3b9965aaee4d41', 2, '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('8a4fbb38540c42d185b413b8e77f7ddc', '4', 'c8a2cc3fbfbf4a8cab881fc91e54c01a', 2, '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('8f869ab5785d4813b0c1316c55ffa2b3', 'dac46a774afe4b44b8c8e7497c7c6e0b', '8996dab7e98e4af1aeec162eb96b053d', 11, '绿色', '256G', '5.5寸');
INSERT INTO `allocate_detail` VALUES ('938193b5ae8d4f6988ca1de9daf9e222', '4', 'b2961a60b99647bcbd23461db3a0795d', 2, '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('95337bc739984317b39d0ff41d4c19c2', '4', '7b4078f129dd4be192fe0c74e0cd11e5', 2, '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('9786768e8d0b47c18287c7da85f3ef13', '6e58b80215f2430b8fb2b16d90dc4d09', '8cabf9dfeb9a4aadb2c4b3c7b9af0af9', 2, '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('978aa951554c47b2baa6900413fdce99', '6ff7380bca4141128ba634ecd3d34412', '7e8b87609eed4ffd9ba54718cc644a7b', 2, '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('99938e52d0fc434ba089c7b569fd51dc', '4', '35472da4e52449f6b96ac66a230f6e2c', 2, '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('99a046ff9841426f997f700c2fb77fd6', 'dd1e1ac8c2274d16984cdc82ae094400', '44add832f5f448b4ba04959ee7b609be', 2, '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('9b693fa8a0cb4caca9b6ba2af787f9d6', '3ba7563fb30548678fb746b6c4da3ec4', '8996dab7e98e4af1aeec162eb96b053d', 11, '绿色', '256G', '5.5寸');
INSERT INTO `allocate_detail` VALUES ('9ba46a7235dd406c9290c7e51e9e9bc1', '4', '58b103441c164c4a9f38435642d9056b', 2, '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('9cd0c977781c4a99badf015cfda82f2d', '4', 'cf81210dba89478eb71eecfdfc10f215', 2, '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('9d20742c080045b3bc6fec8aeabd772b', '4', '2d52b5a9e4924b5fb688c3e915b77fa8', 2, '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('a06cf0b830c340618a6c99d5b2d39122', '4', '9dd326c5935f48298c48ef18fd23a39c', 2, '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('a2cef54162db41c88b12111b5844ef74', '9cb65d11638345588976bebc97bf93f2', 'c3075ffd8732455ebef653b828947570', 2, '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('a7d7206480194ccfa2e19a75d5dc110a', '4', '034cef5924a04c8c8b3e8f57c18556ce', 2, '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('a93dbf26a465493d8bd3f49460243d7e', 'ed2ab8163c3d4d45bc33caf23342c930', 'b077d8a32423435f8456f9552ad549ec', 2, '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('ab1945adf42e49fa918c50b270833c7e', '4', 'd7618a466a3d4e6e9d86b5353ac28c93', 2, '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('aff23a8de7d341f7a2107e3f2a6fcfb8', '31b952176da04371844ba2313f9b4517', 'fcc8cd455bd64b8bbf724072df0c3f06', 2, '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('b14de0a09c3640e598e63566f74fc30e', '4', 'd5ede3ac8eab4a6bbbea60fa996dc4c6', 2, '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('b7452c7a9ba5407196d799a451c4ced8', '4', '36d95df44d2e499188d915bb08696b77', 2, '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('ba1de3929fa5459b97f01fd6929cf77e', '4', 'c2c6a2ae501c45cda8bcf2ea840a10db', 2, '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('ba8750e0da754903b30fada21e08c94f', 'fccc0b6d638041648a9ad86f601bbc0b', '99', 66, '绿色', '128G', '6.0');
INSERT INTO `allocate_detail` VALUES ('be04cfd3bb8b43209fe60f146f91887f', '4', '1549d942f43b4bd3b4b405c32f327066', 2, '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('bfe19d798427417ebf79fe047f820420', 'f25c7279867f4c3fa11ccef35b02b218', 'dde9aad635b3431d88c8bfa43287f408', 2, '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('c2483c7534184149bb0b8e8494c1d55f', '6ff7380bca4141128ba634ecd3d34412', '51b57880dcfb46e6b44513db3218e826', 2, '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('c7cf32cf6d3e4eb294ad0bed301042e2', '31b952176da04371844ba2313f9b4517', '8c7760b01c6d45a6b3c971e52aedc664', 2, '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('ccb738fc9c154bcf8e08a63ec8fb66b6', '1266028eb48c42ea9e459b7ecb2ac4f6', '04cada6d3f8c40da832dee31aef98876', 2, '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('cfaf230cdaf84a9fa5f96fc0dc014f5d', 'd71e1fd276604a0099e19408ab304807', 'df5712d25f56487ea95812e331e9b8dd', 2, '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('d0441ddf77914803ad60033fe660fdd0', 'ed2ab8163c3d4d45bc33caf23342c930', '40984fa317614bb0a245bbe99ab1de64', 2, '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('d1db8b6a827145a6940edb6aa30eb585', '535fa8f342f64ff1a6e28ebf5570f41e', '8996dab7e98e4af1aeec162eb96b053d', 11, '绿色', '256G', '5.5寸');
INSERT INTO `allocate_detail` VALUES ('d1fc9360c94049f1abe5644c2564b1a8', '9cb65d11638345588976bebc97bf93f2', '9feb46ce525d475398d871a318c36cd7', 2, '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('e58a6c1d2a1f4d52bbe6a9037202547d', '4', 'd720c58e88764d958717eca4e3495af0', 2, '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('e7f56e1757354bf3a3f8335d8f2d755f', '4', '4acd2f603fcb49df860c9f385095f0d0', 2, '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('e834c40c02324def92fb6b8bba63540b', '274b2a9d38cc4ea48b34834bcb7d356b', '8996dab7e98e4af1aeec162eb96b053d', 11, '绿色', '256G', '5.5寸');
INSERT INTO `allocate_detail` VALUES ('ebd2a2c8f5ed49099e6283a364a82d2c', 'c1d54b8aa4a3400db702cc36ef342393', '99', 66, '绿色', '128G', '6.0');
INSERT INTO `allocate_detail` VALUES ('f00d250571e048a59100c3742377a7d3', 'ed2ab8163c3d4d45bc33caf23342c930', '2743fe5bcd62400abca182de46b9d0f0', 2, '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('f35cd623c8ab47aea1e5495277c84c99', '4', 'c37ed29ee09340fc8ea6154b80b225b6', 2, '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('f48e6b37fe104a19afb2c3fd7ba55b39', '4', '90ea53a2a73d42309ead281a44589db5', 2, '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('f5adb71184ac42bdb274b3b495d0d85d', '86f07d47f40c4aa9a1d40268916ea2f7', '9cb5aecc030d42b39b8b14e4e131a6cd', 2, '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('f8e5e7829f1a4cfe870aeed1df475751', 'f25c7279867f4c3fa11ccef35b02b218', '54d197842463441d83def3e1cb8cbf50', 2, '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('fa91af9af84344f9a4394af4829bbb36', '4', 'd6ea15f5741044b2a55c478e0ea43d5a', 2, '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('fb752799702045caafbec744c4763cb8', '6ff7380bca4141128ba634ecd3d34412', '8bf5012e940b417a8c0facee64bc4da1', 2, '绿色', '256G', '5.5');
INSERT INTO `allocate_detail` VALUES ('fd86648d02d7436bb20776a9cc65726b', '1266028eb48c42ea9e459b7ecb2ac4f6', '01de31d9ed2a46f19c843a258022717a', 2, '绿色', '256G', '5.5');

-- ----------------------------
-- Table structure for commodity
-- ----------------------------
DROP TABLE IF EXISTS `commodity`;
CREATE TABLE `commodity`  (
  `id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '商品编号',
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '名称',
  `type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '分类',
  `barcode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '条码',
  `image` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '图片目录地址',
  `create_time` timestamp(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT NULL COMMENT '修改时间',
  `bid` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'business id',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_commodity_name`(`name`) USING BTREE,
  INDEX `idx_commodity_bid`(`bid`) USING BTREE,
  INDEX `idx_commodity_create_time`(`create_time`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '商品信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of commodity
-- ----------------------------
INSERT INTO `commodity` VALUES ('7b4078f129dd4be192fe0c74e0cd11e5', '小米2', '0', '1341', NULL, NULL, NULL, '1');
INSERT INTO `commodity` VALUES ('b16e0419a75a4c61a70f46221eb7df70', '华为4', '0', '15', NULL, '2019-06-17 16:19:15', NULL, '1');
INSERT INTO `commodity` VALUES ('b9e60a49d8aa4ba391eb190bfa8087d1', '小米3', '0', '123', NULL, '2019-06-19 16:19:09', NULL, '1');
INSERT INTO `commodity` VALUES ('fcc8cd455bd64b8bbf724072df0c3f06', '小米1', '0', '21', NULL, '2019-06-18 16:18:45', NULL, '1');

-- ----------------------------
-- Table structure for commodity_detail
-- ----------------------------
DROP TABLE IF EXISTS `commodity_detail`;
CREATE TABLE `commodity_detail`  (
  `id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'sku编号',
  `commodity` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '商品编号',
  `sku1` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '规格值',
  `sku2` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sku3` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `barcode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '规格条码',
  `retail_price` float NULL DEFAULT NULL COMMENT '零售价',
  `price_begin` float NULL DEFAULT NULL COMMENT '可售价格区间begin',
  `price_end` float NULL DEFAULT NULL COMMENT '可售价格区间end',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_commodity_detail_commodity`(`commodity`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '商品sku信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of commodity_detail
-- ----------------------------
INSERT INTO `commodity_detail` VALUES ('3', '1', '红', '128G', '5.0', NULL, NULL, NULL, NULL);
INSERT INTO `commodity_detail` VALUES ('b9e60a49d8aa4ba391eb190bfa80873e', 'f5480e8e0b0949df8c0ae1526499e0b0', '蓝色', '256G', '5.5', NULL, NULL, NULL, NULL);
INSERT INTO `commodity_detail` VALUES ('f5480e8e0b0949df8c0ae1526499e0c1', 'b9e60a49d8aa4ba391eb190bfa8087d1', '绿色', '256G', '5.5', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for commodity_shop
-- ----------------------------
DROP TABLE IF EXISTS `commodity_shop`;
CREATE TABLE `commodity_shop`  (
  `id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '编号',
  `commodity` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '商品编号',
  `organ` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '门店机构编号',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_commodity_shop_commodity`(`commodity`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '可售门店配置' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of commodity_shop
-- ----------------------------
INSERT INTO `commodity_shop` VALUES ('1', '1', '1');
INSERT INTO `commodity_shop` VALUES ('2', '2', '1');
INSERT INTO `commodity_shop` VALUES ('3', '3', '1');

-- ----------------------------
-- Table structure for commodity_sku
-- ----------------------------
DROP TABLE IF EXISTS `commodity_sku`;
CREATE TABLE `commodity_sku`  (
  `id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'sku编号',
  `commodity` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '商品编号',
  `sku1` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '规格名',
  `sku2` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sku3` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_commodity_sku_commodity`(`commodity`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '商品sku' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of commodity_sku
-- ----------------------------
INSERT INTO `commodity_sku` VALUES ('1', 'b9e60a49d8aa4ba391eb190bfa8087d1', '颜色', '容量', '大小');

-- ----------------------------
-- Table structure for inventory
-- ----------------------------
DROP TABLE IF EXISTS `inventory`;
CREATE TABLE `inventory`  (
  `id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `commodity` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '商品id',
  `remain` int(11) NULL DEFAULT NULL COMMENT '存量',
  `owner` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所有者id',
  `owner_type` int(11) NULL DEFAULT NULL COMMENT '所有者类型，0门店1	仓库',
  `sku1` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '规格值',
  `sku2` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sku3` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_inventory_commodity`(`commodity`) USING BTREE,
  INDEX `idx_inventory_owner`(`owner`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '库存信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of inventory
-- ----------------------------
INSERT INTO `inventory` VALUES ('1', '21', 700, '1', 1, '红色', '128G', '5.0');
INSERT INTO `inventory` VALUES ('2', 'f5480e8e0b0949df8c0ae1526499e0b0', 1227, '5', 0, '蓝色', '256G', '5.5');
INSERT INTO `inventory` VALUES ('3', '22', 850, '1', 1, '蓝色', '64G', '5.0');
INSERT INTO `inventory` VALUES ('4', '99', 1235, '2', 1, '绿色', '128G', '5.0');
INSERT INTO `inventory` VALUES ('5', '93', 1051, '2', 0, '红色', '256G', '5.5');
INSERT INTO `inventory` VALUES ('6', '99', 350, '1', 1, '红色', '128G', '5.0');
INSERT INTO `inventory` VALUES ('7', 'b9e60a49d8aa4ba391eb190bfa8087d1', 1219, '5', 0, '红色', '256G', '5.5');
INSERT INTO `inventory` VALUES ('8', 'b9e60a49d8aa4ba391eb190bfa8087d1', 1225, '2', 0, '绿色', '256G', '5.5');

-- ----------------------------
-- Table structure for purchase
-- ----------------------------
DROP TABLE IF EXISTS `purchase`;
CREATE TABLE `purchase`  (
  `id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '采购单编号',
  `supply_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '供应商id',
  `supply_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '供应商名称',
  `to` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '门店/仓库id',
  `to_type` int(11) NULL DEFAULT NULL COMMENT '门店/仓库类型',
  `to_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '门店/仓库名称',
  `create_time` timestamp(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT NULL COMMENT '修改时间',
  `update_userid` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '最后修改人',
  `bid` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'business id',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_purchase_create_time`(`create_time`) USING BTREE,
  INDEX `idx_purchase_bid`(`bid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '采购单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of purchase
-- ----------------------------
INSERT INTO `purchase` VALUES ('049e0f1b78bd491baa5a996e27dab865', 'b713524c4624443797e9ab2573bb5507', '苹果醋', '5', 1, '小绿', '2019-06-25 18:01:41', '2019-06-25 18:01:41', '1', '1');
INSERT INTO `purchase` VALUES ('1', NULL, NULL, NULL, NULL, NULL, '2019-06-12 10:23:44', NULL, NULL, '1');
INSERT INTO `purchase` VALUES ('2', NULL, NULL, NULL, NULL, NULL, '2019-06-20 10:23:40', NULL, NULL, '1');
INSERT INTO `purchase` VALUES ('3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1');
INSERT INTO `purchase` VALUES ('300a78d50f9347fbabc84a0ca85c1e1a', 'b713524c4624443797e9ab2573bb5507', '苹果醋', '5', 1, '小绿', '2019-06-26 09:46:50', '2019-06-26 09:46:50', '1', '1');
INSERT INTO `purchase` VALUES ('34d09b81cd0d44f08a5fc635906b3934', '1', '苹果醋', '5', 1, '小绿', '2019-06-24 10:14:44', '2019-06-24 10:14:44', '110', '1');
INSERT INTO `purchase` VALUES ('3a1afa35964e4d5bbba15fb760588f0d', '1', '苹果醋', '5', 1, '小绿', '2019-06-24 10:25:19', '2019-06-24 10:25:19', '110', '1');
INSERT INTO `purchase` VALUES ('3d5b902deac94cccb690ba25b0b3e061', 'b713524c4624443797e9ab2573bb5507', '苹果醋', '5', 1, '小绿', '2019-06-26 13:27:53', '2019-06-26 13:27:53', '1', '1');
INSERT INTO `purchase` VALUES ('4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1');
INSERT INTO `purchase` VALUES ('5953121c6285447693f9809244c69b29', '1', '苹果醋', '5', 1, '小绿', '2019-06-24 10:20:59', '2019-06-24 10:20:59', '110', '1');
INSERT INTO `purchase` VALUES ('5cdb3c1a8eb14069899970bdbdc553e2', 'b713524c4624443797e9ab2573bb5507', '苹果醋', '5', 1, '小绿', '2019-06-25 18:08:58', '2019-06-25 18:08:58', '1', '1');
INSERT INTO `purchase` VALUES ('5dc2d686c0464e2e8a31374aa0dc44f6', '1', '苹果醋', '5', 1, '小绿', '2019-06-24 10:21:56', '2019-06-24 10:21:56', '110', '1');
INSERT INTO `purchase` VALUES ('5fd900c927dd4de99dc77e371788176b', 'b713524c4624443797e9ab2573bb5507', '苹果醋', '5', 1, '小绿', '2019-06-25 18:02:00', '2019-06-25 18:02:00', '1', '1');
INSERT INTO `purchase` VALUES ('6c16f6c94aec4bc785e75c5989bbc0a5', '1', '苹果醋', '5', 1, '小绿', '2019-06-24 11:54:38', '2019-06-24 11:54:38', '110', '1');
INSERT INTO `purchase` VALUES ('85e06e03f7404bcf9179e81e165d5628', 'b713524c4624443797e9ab2573bb5507', '苹果醋', '5', 1, '小绿', '2019-06-25 15:02:32', '2019-06-25 15:02:32', '1', '1');
INSERT INTO `purchase` VALUES ('8ef9049c7ccf45f4b1e692c881a681b9', '1', '苹果醋', '5', 1, '小绿', '2019-06-24 10:42:10', '2019-06-24 10:42:10', '110', '1');
INSERT INTO `purchase` VALUES ('916957c68eb1445a8b9597d96acb6de7', '1', '苹果醋', '5', 1, '小绿', '2019-06-24 10:18:04', '2019-06-24 10:18:04', '110', '1');
INSERT INTO `purchase` VALUES ('9de1a57d45674af3a17ede8c7f8a4069', '1', '苹果醋', '5', 1, '小绿', '2019-06-24 11:57:09', '2019-06-24 11:57:09', '110', '1');
INSERT INTO `purchase` VALUES ('b309be90558b4f3c87f09ca5f4a93a0f', '1', '苹果醋', '5', 1, '小绿', '2019-06-24 16:52:54', '2019-06-24 16:52:54', '110', '1');
INSERT INTO `purchase` VALUES ('bbd814def1294135aabba785b1e7bc02', '1', '苹果醋', '5', 1, '小绿', '2019-06-25 15:59:08', '2019-06-25 15:59:08', '110', '5');
INSERT INTO `purchase` VALUES ('c3ea2b7bb60f4d2a95d76f49218cfc72', '1', '苹果醋', '5', 1, '小绿', '2019-06-24 11:58:59', '2019-06-24 11:58:59', '110', '1');
INSERT INTO `purchase` VALUES ('cbb56dc6e0d643829f040c63601e761e', '1', '苹果醋', '5', 1, '小绿', '2019-06-24 11:05:25', '2019-06-24 11:05:25', '110', '1');
INSERT INTO `purchase` VALUES ('d3b8492393424d9686d5b607d7b84b3d', '1', '苹果醋', '5', 1, '小绿', '2019-06-24 10:51:20', '2019-06-24 10:51:20', '110', '1');

-- ----------------------------
-- Table structure for purchase_commodity
-- ----------------------------
DROP TABLE IF EXISTS `purchase_commodity`;
CREATE TABLE `purchase_commodity`  (
  `id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '编号',
  `purchase_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '采购单编号',
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '商品名称',
  `barcode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '商品条码',
  `image` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '图片目录地址',
  `sku_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'sku编号',
  `sku1` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sku2` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sku3` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sku_barcode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '规格条码',
  `counts` int(11) NULL DEFAULT NULL COMMENT '数量',
  `retail_price` float NULL DEFAULT NULL COMMENT '单价',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_purchase_commodity_purchase_id`(`purchase_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '采购商品信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of purchase_commodity
-- ----------------------------
INSERT INTO `purchase_commodity` VALUES ('05f8fdc7228b4c738f180d68feeed094', 'd3b8492393424d9686d5b607d7b84b3d', '小红', '911', '119', '1', '颜色', '大小', '容量', '985', 20, 9);
INSERT INTO `purchase_commodity` VALUES ('0dd41545ad794191a66378eca2dfe883', '300a78d50f9347fbabc84a0ca85c1e1a', '小红', '74987491', '119', '1', '蓝色', '256G', '5.5寸', '478491651', 15, 16481);
INSERT INTO `purchase_commodity` VALUES ('1', '1', '小白', NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `purchase_commodity` VALUES ('19047fe66dd642f7b71a07c065cf3512', 'b309be90558b4f3c87f09ca5f4a93a0f', '小红', '911', '119', '1', '颜色', '大小', '容量', '985', 20, 9);
INSERT INTO `purchase_commodity` VALUES ('2', '3', '小蓝', NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `purchase_commodity` VALUES ('254bd4bb596f4d20ad78858ed7881e9d', '9de1a57d45674af3a17ede8c7f8a4069', '小红', '911', '119', '1', '颜色', '大小', '容量', '985', 20, 9);
INSERT INTO `purchase_commodity` VALUES ('2d258bdc8bce4e7ba646e022d8942a4d', 'cbb56dc6e0d643829f040c63601e761e', '小红', '911', '119', '1', '颜色', '大小', '容量', '985', 20, 9);
INSERT INTO `purchase_commodity` VALUES ('3', '3', '小绿', NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `purchase_commodity` VALUES ('3163935f1ff54d76baa998e59edd8384', '6c16f6c94aec4bc785e75c5989bbc0a5', '小红', '911', '119', '1', '颜色', '大小', '容量', '985', 20, 9);
INSERT INTO `purchase_commodity` VALUES ('35ae4f82cea34552ba59651dfed2acb1', 'c3ea2b7bb60f4d2a95d76f49218cfc72', '小红', '911', '119', '1', '颜色', '大小', '容量', '985', 20, 9);
INSERT INTO `purchase_commodity` VALUES ('386bf0211ddc4caf817afb16565ca2c6', 'c3ea2b7bb60f4d2a95d76f49218cfc72', '小红', '911', '119', '1', '颜色', '大小', '容量', '985', 20, 9);
INSERT INTO `purchase_commodity` VALUES ('3db7c60bd95840dd9a762bf23ced74c4', '8ef9049c7ccf45f4b1e692c881a681b9', '小红', '911', '119', '1', '颜色', '大小', '容量', '985', 20, 9);
INSERT INTO `purchase_commodity` VALUES ('4d8863a95e1c4786b64a083301fac359', '5fd900c927dd4de99dc77e371788176b', '小红', '74987491', '119', '1', '5.5寸', NULL, NULL, '478491651', 15, 16481);
INSERT INTO `purchase_commodity` VALUES ('516bd9ae9b1c46849641da49d475ab84', 'cbb56dc6e0d643829f040c63601e761e', '小红', '911', '119', '1', '颜色', '大小', '容量', '985', 20, 9);
INSERT INTO `purchase_commodity` VALUES ('5ef08e371ce24aa3935037b132e0af49', '6c16f6c94aec4bc785e75c5989bbc0a5', '小红', '911', '119', '1', '颜色', '大小', '容量', '985', 20, 9);
INSERT INTO `purchase_commodity` VALUES ('6204319d787f42959c9219df716c8c52', '5953121c6285447693f9809244c69b29', '小红', '911', '119', '1', '颜色', '大小', '容量', '985', 20, 9);
INSERT INTO `purchase_commodity` VALUES ('6726cf258f6746a7b6063a704c8d0fdd', '3d5b902deac94cccb690ba25b0b3e061', '小红', '74987491', '119', '1', '蓝色', '256G', '5.5寸', '478491651', 15, 16481);
INSERT INTO `purchase_commodity` VALUES ('6a85becc78374d5a831c6cfd0d2a31c3', '85e06e03f7404bcf9179e81e165d5628', '小红', '74987491', '119', '1', '5.5寸', NULL, NULL, '478491651', 15, 16481);
INSERT INTO `purchase_commodity` VALUES ('6d65e2f8856243d5a5a9354104c533f4', '5953121c6285447693f9809244c69b29', '小红', '911', '119', '1', '颜色', '大小', '容量', '985', 20, 9);
INSERT INTO `purchase_commodity` VALUES ('6ea7399f95b44110a59995963bf5eb93', '5cdb3c1a8eb14069899970bdbdc553e2', '小红', '74987491', '119', '1', '5.5寸', NULL, NULL, '478491651', 15, 16481);
INSERT INTO `purchase_commodity` VALUES ('78e14d87d2854d518374c5a0cfdb2366', 'bbd814def1294135aabba785b1e7bc02', '小红', '911', '119', '1', '颜色', '大小', '容量', '985', 20, 9);
INSERT INTO `purchase_commodity` VALUES ('7ac29c49069b42a3a47a98f76e607ff6', '8ef9049c7ccf45f4b1e692c881a681b9', '小红', '911', '119', '1', '颜色', '大小', '容量', '985', 20, 9);
INSERT INTO `purchase_commodity` VALUES ('7f22a7b073b64ba8b3dcb9b5745fbc61', '3a1afa35964e4d5bbba15fb760588f0d', '小红', '911', '119', '1', '颜色', '大小', '容量', '985', 20, 9);
INSERT INTO `purchase_commodity` VALUES ('801d7b7376f64200bed03cec711c4b99', '3a1afa35964e4d5bbba15fb760588f0d', '小红', '911', '119', '1', '颜色', '大小', '容量', '985', 20, 9);
INSERT INTO `purchase_commodity` VALUES ('8c20d80011914c0c8c01b2f1c8c4a571', 'd3b8492393424d9686d5b607d7b84b3d', '小红', '911', '119', '1', '颜色', '大小', '容量', '985', 20, 9);
INSERT INTO `purchase_commodity` VALUES ('966ab2b32e0a45e783e318533e4538b8', '049e0f1b78bd491baa5a996e27dab865', '小红', '74987491', '119', '1', '5.5寸', NULL, NULL, '478491651', 15, 16481);
INSERT INTO `purchase_commodity` VALUES ('99399841076547b2a0b2223e2c3c040c', '5dc2d686c0464e2e8a31374aa0dc44f6', '小红', '911', '119', '1', '颜色', '大小', '容量', '985', 20, 9);
INSERT INTO `purchase_commodity` VALUES ('a19b95f4585e4d9b80ad0b45b812826b', '6c16f6c94aec4bc785e75c5989bbc0a5', '小红', '911', '119', '1', '颜色', '大小', '容量', '985', 20, 9);
INSERT INTO `purchase_commodity` VALUES ('a216553a8dec40d4a881b24945694a64', 'b309be90558b4f3c87f09ca5f4a93a0f', '小红', '911', '119', '1', '颜色', '大小', '容量', '985', 20, 9);
INSERT INTO `purchase_commodity` VALUES ('ab832266851d45b88a07478ac1bd0160', '9de1a57d45674af3a17ede8c7f8a4069', '小红', '911', '119', '1', '颜色', '大小', '容量', '985', 20, 9);
INSERT INTO `purchase_commodity` VALUES ('b7526da41c0645909ce765600483bdfa', 'cbb56dc6e0d643829f040c63601e761e', '小红', '911', '119', '1', '颜色', '大小', '容量', '985', 20, 9);
INSERT INTO `purchase_commodity` VALUES ('b853cb5c9129466898638c2df3a72517', '5dc2d686c0464e2e8a31374aa0dc44f6', '小红', '911', '119', '1', '颜色', '大小', '容量', '985', 20, 9);
INSERT INTO `purchase_commodity` VALUES ('ba7d0edc5c484158aff1f6bf6b1529eb', 'b309be90558b4f3c87f09ca5f4a93a0f', '小红', '911', '119', '1', '颜色', '大小', '容量', '985', 20, 9);
INSERT INTO `purchase_commodity` VALUES ('bdf16bbe8d02424198ad3098b932c55e', '8ef9049c7ccf45f4b1e692c881a681b9', '小红', '911', '119', '1', '颜色', '大小', '容量', '985', 20, 9);
INSERT INTO `purchase_commodity` VALUES ('c4b5370667f84419802238898f6f15c4', '9de1a57d45674af3a17ede8c7f8a4069', '小红', '911', '119', '1', '颜色', '大小', '容量', '985', 20, 9);
INSERT INTO `purchase_commodity` VALUES ('cabebedd08cf4112bde31229d107a28a', '5953121c6285447693f9809244c69b29', '小红', '911', '119', '1', '颜色', '大小', '容量', '985', 20, 9);
INSERT INTO `purchase_commodity` VALUES ('d2927987a8a94e848cd4bfea7f88b1ba', '5dc2d686c0464e2e8a31374aa0dc44f6', '小红', '911', '119', '1', '颜色', '大小', '容量', '985', 20, 9);
INSERT INTO `purchase_commodity` VALUES ('e05e65e4518744c494fb4ab673696179', '3a1afa35964e4d5bbba15fb760588f0d', '小红', '911', '119', '1', '颜色', '大小', '容量', '985', 20, 9);
INSERT INTO `purchase_commodity` VALUES ('e107599e04b44d84bdb9655380a32a96', 'bbd814def1294135aabba785b1e7bc02', '小红', '911', '119', '1', '颜色', '大小', '容量', '985', 20, 9);
INSERT INTO `purchase_commodity` VALUES ('eba413c73a3245c0bb4d9b44c837e44e', 'd3b8492393424d9686d5b607d7b84b3d', '小红', '911', '119', '1', '颜色', '大小', '容量', '985', 20, 9);
INSERT INTO `purchase_commodity` VALUES ('f38799e575954b0598a7928e784d40f9', 'c3ea2b7bb60f4d2a95d76f49218cfc72', '小红', '911', '119', '1', '颜色', '大小', '容量', '985', 20, 9);
INSERT INTO `purchase_commodity` VALUES ('fa1f60bc3acc4142ac3a8859592b3ecb', 'bbd814def1294135aabba785b1e7bc02', '小红', '911', '119', '1', '颜色', '大小', '容量', '985', 20, 9);

-- ----------------------------
-- Table structure for stockin
-- ----------------------------
DROP TABLE IF EXISTS `stockin`;
CREATE TABLE `stockin`  (
  `id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `purchase_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '采购单编号',
  `commodity` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '商品id',
  `sku1` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '规格值',
  `sku2` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sku3` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `counts` int(11) NULL DEFAULT NULL COMMENT '数量',
  `retail_price` float NULL DEFAULT NULL COMMENT '单价',
  `create_time` timestamp(0) NULL DEFAULT NULL COMMENT '创建时间',
  `create_userid` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '最后修改人',
  `bid` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'business id',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_stockin_purchase_id`(`purchase_id`) USING BTREE,
  INDEX `idx_stockin_commodity`(`commodity`) USING BTREE,
  INDEX `idx_stockin_bid`(`bid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '入库单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for supply
-- ----------------------------
DROP TABLE IF EXISTS `supply`;
CREATE TABLE `supply`  (
  `id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '供应商名称',
  `create_time` timestamp(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT NULL COMMENT '修改时间',
  `update_userid` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '最后修改人',
  `bid` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'business id',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_supply_bid`(`bid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '供应商' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of supply
-- ----------------------------
INSERT INTO `supply` VALUES ('0015682cc68c4c1c93033ff763ee8b70', '苹果醋', '2019-06-24 11:54:39', '2019-06-24 11:54:39', '110', '1');
INSERT INTO `supply` VALUES ('0c7d3df13b5a46c79f744abdfd025905', '小米供应商', '2019-06-25 14:58:49', '2019-06-25 14:58:49', '1', '1');
INSERT INTO `supply` VALUES ('5', 'xx', NULL, NULL, NULL, '1');
INSERT INTO `supply` VALUES ('6231ca04d03f483a94ed808bf938b63c', '小米供应商', '2019-06-25 18:17:17', '2019-06-25 18:17:17', '1', '1');
INSERT INTO `supply` VALUES ('82f5ccea91f5452580c8e050a810248e', '苹果醋', '2019-06-24 10:42:10', '2019-06-24 10:42:10', '110', '1');
INSERT INTO `supply` VALUES ('8447adb62d0e40b297ec86152bd598f4', '苹果醋', '2019-06-25 15:59:08', '2019-06-25 15:59:08', '110', '9');
INSERT INTO `supply` VALUES ('8756a11e0ec4421fbb99f75c6224afd3', '小米供应商', '2019-06-26 13:33:54', '2019-06-26 13:33:54', '1', '1');
INSERT INTO `supply` VALUES ('912fc256782742a282e0f16ac78e2204', '苹果醋', '2019-06-24 10:51:21', '2019-06-24 10:51:21', '110', '1');
INSERT INTO `supply` VALUES ('98e6d492184e424c8fcf07b9654f3857', '苹果醋', '2019-06-24 11:05:25', '2019-06-24 11:05:25', '110', '1');
INSERT INTO `supply` VALUES ('b713524c4624443797e9ab2573bb5507', '苹果醋', '2019-06-24 16:52:54', '2019-06-24 16:52:54', '110', '1');
INSERT INTO `supply` VALUES ('b7ed7801390a43fb900cfcafa1be453a', '苹果', '2019-06-24 10:24:59', '2019-06-26 13:33:54', '1', '1');
INSERT INTO `supply` VALUES ('db55efba9442425788783761a5c3fb4a', '苹果醋', '2019-06-24 11:57:09', '2019-06-24 11:57:09', '110', '1');
INSERT INTO `supply` VALUES ('e3e64172320f44368ee5a768057acd2e', '小米供应商', '2019-06-25 18:09:13', '2019-06-25 18:09:13', '1', '1');
INSERT INTO `supply` VALUES ('f93a6a88927f44b292a07c1aa4696d39', '苹果醋', '2019-06-24 11:58:59', '2019-06-24 11:58:59', '110', '1');
INSERT INTO `supply` VALUES ('fcfd6c7242424b0989d10713801befa8', '苹果醋', '2019-06-24 10:25:19', '2019-06-24 10:25:19', '110', '1');

-- ----------------------------
-- Table structure for supply_contact
-- ----------------------------
DROP TABLE IF EXISTS `supply_contact`;
CREATE TABLE `supply_contact`  (
  `id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `supply_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '供应商id',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系人',
  `position` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '职位',
  `mobile` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '手机号',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_supply_contact_supply_id`(`supply_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '供应商' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of supply_contact
-- ----------------------------
INSERT INTO `supply_contact` VALUES ('0718aaea51fb46a6940b2f57691a19b0', '6231ca04d03f483a94ed808bf938b63c', '王老五', '经理', '17787778778');
INSERT INTO `supply_contact` VALUES ('08a05236b8f04785a1ded6ff480942a2', '0c7d3df13b5a46c79f744abdfd025905', '王老五', '经理', '17787778778');
INSERT INTO `supply_contact` VALUES ('1', '5', NULL, NULL, NULL);
INSERT INTO `supply_contact` VALUES ('10a9d3404017477e9d6cefde5f9c012c', 'f93a6a88927f44b292a07c1aa4696d39', '杨过0', '光明顶', '15623984156');
INSERT INTO `supply_contact` VALUES ('121ca2204f324c07b995f1356ca64c8d', 'b713524c4624443797e9ab2573bb5507', '杨过0', '光明顶', '15623984156');
INSERT INTO `supply_contact` VALUES ('136c8f30322f45a8989a4a6254251347', 'b7ed7801390a43fb900cfcafa1be453a', '杨过2', '光明顶', '15623984156');
INSERT INTO `supply_contact` VALUES ('2', '5', NULL, NULL, NULL);
INSERT INTO `supply_contact` VALUES ('20f60a1b29d3475784cce728b214d81d', '98e6d492184e424c8fcf07b9654f3857', '杨过1', '光明顶', '15623984156');
INSERT INTO `supply_contact` VALUES ('218a067f64124f4db8c62952ccaf4160', '82f5ccea91f5452580c8e050a810248e', '杨过2', '光明顶', '15623984156');
INSERT INTO `supply_contact` VALUES ('25c75123fdcb4619a8aed601c7650a79', 'fcfd6c7242424b0989d10713801befa8', '杨过1', '光明顶', '15623984156');
INSERT INTO `supply_contact` VALUES ('3', '4', NULL, NULL, NULL);
INSERT INTO `supply_contact` VALUES ('31877d4bc1a6490fa214858b98e6ce3c', 'b713524c4624443797e9ab2573bb5507', '杨过1', '光明顶', '15623984156');
INSERT INTO `supply_contact` VALUES ('359b8c48b6fb438f891cb202d8a2f56d', '912fc256782742a282e0f16ac78e2204', '杨过0', '光明顶', '15623984156');
INSERT INTO `supply_contact` VALUES ('370f4aa07feb48a8a63de853eaefb335', 'db55efba9442425788783761a5c3fb4a', '杨过2', '光明顶', '15623984156');
INSERT INTO `supply_contact` VALUES ('37d9db1b34944a4f9c0bb8ecbf262d34', 'e3e64172320f44368ee5a768057acd2e', '王老五', '经理', '17787778778');
INSERT INTO `supply_contact` VALUES ('3c8d27d40e3647deaceacc12fcf79539', 'b713524c4624443797e9ab2573bb5507', '杨过2', '光明顶', '15623984156');
INSERT INTO `supply_contact` VALUES ('3e68b3e5bc074f7f8c8a51df4bc0ca16', '8447adb62d0e40b297ec86152bd598f4', '杨过1', '光明顶', '15623984156');
INSERT INTO `supply_contact` VALUES ('40d945d23d124a2685828e3ac8a0db17', 'b7ed7801390a43fb900cfcafa1be453a', '杨过', '董事长', '15623984156');
INSERT INTO `supply_contact` VALUES ('415951d1a49a486ca448544e87f5b0bc', 'f93a6a88927f44b292a07c1aa4696d39', '杨过2', '光明顶', '15623984156');
INSERT INTO `supply_contact` VALUES ('437d6713e31b44dfa16175f34144c935', '98e6d492184e424c8fcf07b9654f3857', '杨过0', '光明顶', '15623984156');
INSERT INTO `supply_contact` VALUES ('4af1c70de8284b36b9a4f7c948b3aca5', '0015682cc68c4c1c93033ff763ee8b70', '杨过1', '光明顶', '15623984156');
INSERT INTO `supply_contact` VALUES ('5f9ef7349cf7420e8a54c30ed31ddee6', 'fcfd6c7242424b0989d10713801befa8', '杨过2', '光明顶', '15623984156');
INSERT INTO `supply_contact` VALUES ('631b856f06b242b489b50da8cbacd5a8', 'b7ed7801390a43fb900cfcafa1be453a', '杨过', '董事长', '15623984156');
INSERT INTO `supply_contact` VALUES ('6b89f97e2a2e46ea9aaf2a77c2ff0a9a', 'b7ed7801390a43fb900cfcafa1be453a', '杨过', '董事长', '15623984156');
INSERT INTO `supply_contact` VALUES ('7eec5269b93b487a97d651280eb54a32', 'b7ed7801390a43fb900cfcafa1be453a', '杨过', '董事长', '15623984156');
INSERT INTO `supply_contact` VALUES ('824d790ddea64687b224957dff5bea62', 'f93a6a88927f44b292a07c1aa4696d39', '杨过1', '光明顶', '15623984156');
INSERT INTO `supply_contact` VALUES ('89fe905b426546acb839805f68482322', 'fcfd6c7242424b0989d10713801befa8', '杨过0', '光明顶', '15623984156');
INSERT INTO `supply_contact` VALUES ('8d8c9d7aaf8b4d4ba6591cea25b7fdff', '8447adb62d0e40b297ec86152bd598f4', '杨过0', '光明顶', '15623984156');
INSERT INTO `supply_contact` VALUES ('93fc15f2d2984fb9b87df199e02d737b', '0015682cc68c4c1c93033ff763ee8b70', '杨过2', '光明顶', '15623984156');
INSERT INTO `supply_contact` VALUES ('94a488352492403385f775a6234057ff', 'b7ed7801390a43fb900cfcafa1be453a', '杨过1', '光明顶', '15623984156');
INSERT INTO `supply_contact` VALUES ('9828a1a544054c9ba5ed562643ec9164', 'db55efba9442425788783761a5c3fb4a', '杨过1', '光明顶', '15623984156');
INSERT INTO `supply_contact` VALUES ('a00cc0066b5c49ffa4e82f0aa628a432', '912fc256782742a282e0f16ac78e2204', '杨过1', '光明顶', '15623984156');
INSERT INTO `supply_contact` VALUES ('a09535491fff4192b0f4d6d58641e21e', '8447adb62d0e40b297ec86152bd598f4', '杨过2', '光明顶', '15623984156');
INSERT INTO `supply_contact` VALUES ('a44bec1ea4154736bb0ef25ac26b0a41', '8756a11e0ec4421fbb99f75c6224afd3', '王老五', '经理', '17787778778');
INSERT INTO `supply_contact` VALUES ('a552dcde18704a9fb5c9d4af33fc4408', 'b7ed7801390a43fb900cfcafa1be453a', '杨过0', '光明顶', '15623984156');
INSERT INTO `supply_contact` VALUES ('a7256cc7982e4e4ea9b985ef39f6ab87', '82f5ccea91f5452580c8e050a810248e', '杨过1', '光明顶', '15623984156');
INSERT INTO `supply_contact` VALUES ('b829577ab9664b7ca9c10b0bccf11c9e', 'db55efba9442425788783761a5c3fb4a', '杨过0', '光明顶', '15623984156');
INSERT INTO `supply_contact` VALUES ('bbf2407b7b1b46e1899871c13233ba80', '98e6d492184e424c8fcf07b9654f3857', '杨过2', '光明顶', '15623984156');
INSERT INTO `supply_contact` VALUES ('c74b6fb6f266427392eae9f0eee11ac8', '912fc256782742a282e0f16ac78e2204', '杨过2', '光明顶', '15623984156');
INSERT INTO `supply_contact` VALUES ('d3c6b46e4fc54b5eab3c00d59d82cf53', 'b7ed7801390a43fb900cfcafa1be453a', '杨过', '董事长', '15623984156');
INSERT INTO `supply_contact` VALUES ('d5fefeb593f54a939e8a9649d3bc012e', '82f5ccea91f5452580c8e050a810248e', '杨过0', '光明顶', '15623984156');
INSERT INTO `supply_contact` VALUES ('f21cb6ff0d6c4d50838e59d12ed6e5bf', '0015682cc68c4c1c93033ff763ee8b70', '杨过0', '光明顶', '15623984156');

SET FOREIGN_KEY_CHECKS = 1;
