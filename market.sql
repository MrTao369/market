
 Navicat Premium Data Transfer

 Source Server         : local_address
 Source Server Type    : MySQL
 Source Server Version : 50720
 Source Host           : localhost:3306
 Source Schema         : market

 Target Server Type    : MySQL
 Target Server Version : 50720
 File Encoding         : 65001



SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '管理员ID',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '管理员名称',
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '密码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', 'E10ADC3949BA59ABBE56E057F20F883E');

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '客户ID',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '客户名称',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '联系电话',
  `address` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '联系地址',
  `intro` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '描述',
  `status` tinyint(1) NOT NULL COMMENT '状态',
  `updater` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '更新人',
  `utime` datetime(0) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '员工ID',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '员工姓名',
  `code` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '员工编号',
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '密码',
  `creater` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '创建人',
  `ctime` datetime(0) NOT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `status` tinyint(1) NOT NULL COMMENT '状态',
  `lock` tinyint(1) NOT NULL COMMENT '是否锁定',
  `ltime` datetime(0) NOT NULL COMMENT '锁定时间',
  `updater` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '更新人',
  `utime` datetime(0) NOT NULL COMMENT '更新时间',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '手机号',
  `address` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '地址',
  `email` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '邮箱',
  `gender` tinyint(1) NOT NULL COMMENT '性别，1男，2女',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES (1, 'q', 'c08190e908d8467ca6e317dd23cc1b02', 'E10ADC3949BA59ABBE56E057F20F883E', 'admin', '2021-05-04 14:34:38', 1, 1, '2021-01-11 23:02:43', 'admin', '2021-01-11 23:02:43', '13245456565', 'China', '12@qq.com', 1);
INSERT INTO `employee` VALUES (2, '员工01', '586a2e0f3a7841148cb51911a4d5fbc3', 'E10ADC3949BA59ABBE56E057F20F883E', 'admin', '2021-05-04 14:53:28', 1, 1, '2021-01-12 08:57:23', 'admin', '2021-05-04 14:53:28', '13345846596', 'China', '123@qq.com', 1);
INSERT INTO `employee` VALUES (3, '员工02', 'e2dfff3b950d4bcbb7b87e3be926d061', 'E10ADC3949BA59ABBE56E057F20F883E', 'admin', '2021-05-04 15:29:33', 1, 0, '2021-01-12 08:58:14', 'admin', '2021-05-04 15:29:34', '13254846759', 'China', '23@qq.com', 0);
INSERT INTO `employee` VALUES (4, '员工03', '7db23b9e607a4ac3b050fe022be0d2e2', 'E10ADC3949BA59ABBE56E057F20F883E', 'admin', '2021-05-04 14:34:38', 1, 1, '2021-01-12 09:44:36', 'admin', '2021-01-12 09:44:36', '15487548459', 'China', '233@qq.com', 0);
INSERT INTO `employee` VALUES (5, '员工04', '6ea4ebe4920f4a26a36e079291321138', 'E10ADC3949BA59ABBE56E057F20F883E', 'admin', '2021-05-04 14:34:38', 1, 1, '2021-01-12 12:09:58', 'admin', '2021-01-12 12:09:58', '15487548956', 'China', '2@qq.com', 1);
INSERT INTO `employee` VALUES (8, '甲', '66ad73e9cfc34e9d96cd48e840718bee', 'E10ADC3949BA59ABBE56E057F20F883E', 'admin', '2021-05-04 15:11:11', 1, 0, '2021-05-04 15:08:35', 'admin', '2021-05-04 15:11:11', '13548754857', 'China', '2@qq.com', 1);
INSERT INTO `employee` VALUES (9, '已', '9acf38744cb2484cba7f8623e0fee89c', 'E10ADC3949BA59ABBE56E057F20F883E', 'admin', '2021-05-04 15:31:30', 1, 0, '2021-05-04 15:30:45', 'admin', '2021-05-04 15:31:30', '13546875949', 'China', '2@qq.com', 1);
INSERT INTO `employee` VALUES (11, 'qw', 'e7885fa7456f452c97de96d2ec1307e7', 'E10ADC3949BA59ABBE56E057F20F883E', 'admin', '2021-05-04 15:52:01', 1, 1, '2021-05-04 15:52:01', 'admin', '2021-05-04 15:52:01', '13548754865', 'v', '3@qq.com', 1);
INSERT INTO `employee` VALUES (13, 'bing', '4cf60a4bc0af4b5c8e1bd1633ff3a329', 'E10ADC3949BA59ABBE56E057F20F883E', 'admin', '2021-05-04 16:16:39', 1, 1, '2021-05-04 16:15:43', 'admin', '2021-05-04 16:16:40', '13254654788', 'China', '2@qq.com', 1);

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '商品ID',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '商品名称',
  `code` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '商品编码',
  `type` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品类别',
  `brand` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品品牌',
  `price` decimal(10, 2) NOT NULL COMMENT '商品单价',
  `intro` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '描述',
  `creater` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '创建人',
  `ctime` datetime(0) NOT NULL COMMENT '商品信息录入时间',
  `updater` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '商品信息更新操作员',
  `utime` datetime(0) NOT NULL COMMENT '更新时间',
  `status` tinyint(1) NOT NULL COMMENT '状态',
  `picture` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品图片',
  `warehouse` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (1, '小阳Sheep', 'cef078ee7675421f946f9ecf1c644fd2', '4d8a7ce91fd94ddebada786273fca305', '1', 1.20, '', 'q', '2021-01-15 22:21:45', 'q', '2021-01-16 11:49:13', 1, NULL, 0);
INSERT INTO `goods` VALUES (2, 'w', 'f0e22615330241e7b42946fcfe6f6b50', '645f3fb475f442878f50b2ad6b520fe4', 'w', 1.20, '', 'q', '2021-01-16 09:02:27', 'q', '2021-01-16 11:49:29', 1, NULL, 0);
INSERT INTO `goods` VALUES (5, 'sdfsdf', '63d8713fed464a76aeef0ce08ddf7dfc', '645f3fb475f442878f50b2ad6b520fe4', 'sdf', 1.20, '', 'q', '2021-01-16 10:21:39', 'q', '2021-01-16 15:06:11', 1, NULL, 0);
INSERT INTO `goods` VALUES (6, 'hgnhgnh', 'c67aa00a9677415fa7e5fbe323ae6fd8', '4d8a7ce91fd94ddebada786273fca305', 'nhgn', 1.20, '', 'q', '2021-01-16 11:56:03', 'q', '2021-01-16 11:56:03', 1, NULL, 0);
INSERT INTO `goods` VALUES (7, 'szczxczx', '6790ddd916894758a318b8518b330f5c', '4d8a7ce91fd94ddebada786273fca305', 'xzcxzcxzc', 1.20, '', 'q', '2021-01-16 11:56:19', 'q', '2021-01-16 11:56:19', 1, NULL, 0);
INSERT INTO `goods` VALUES (8, 'ww', '8c3d4e26bf5b4154a496c687eb94fffa', '4d8a7ce91fd94ddebada786273fca305', NULL, 1.20, NULL, 'q', '2021-01-17 08:58:13', 'q', '2021-05-04 16:20:25', 1, NULL, 0);
INSERT INTO `goods` VALUES (11, '吃的', '5c776c44ddaf4463bc2091ed495aebc6', 'ece6218f2b7f41eabe44a7bc1eb0ae74', '没有', 9.40, '', 'bing', '2021-05-04 16:19:41', 'bing', '2021-05-04 16:19:41', 1, NULL, 0);

-- ----------------------------
-- Table structure for goods_type
-- ----------------------------
DROP TABLE IF EXISTS `goods_type`;
CREATE TABLE `goods_type`  (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '类别ID',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '类别名称',
  `ctime` datetime(0) NOT NULL COMMENT '商品种类信息创建时间',
  `utime` datetime(0) NOT NULL COMMENT '商品种类信息更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods_type
-- ----------------------------
INSERT INTO `goods_type` VALUES ('4d8a7ce91fd94ddebada786273fca305', '日常', '2021-01-17 09:31:43', '2021-01-17 09:31:43');
INSERT INTO `goods_type` VALUES ('645f3fb475f442878f50b2ad6b520fe4', '食品', '2021-01-14 23:51:58', '2021-01-14 23:51:58');
INSERT INTO `goods_type` VALUES ('ece6218f2b7f41eabe44a7bc1eb0ae74', '熟食', '2021-05-04 16:19:10', '2021-05-04 16:19:10');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '订单ID',
  `goods` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '商品名称',
  `no` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '订单号',
  `count` bigint(20) NOT NULL COMMENT '数量',
  `multi` decimal(10, 2) NOT NULL COMMENT '总价',
  `intro` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '描述',
  `creater` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '创建人',
  `ctime` datetime(0) NOT NULL COMMENT '创建时间',
  `updater` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '更新人',
  `utime` datetime(0) NOT NULL COMMENT '更新时间',
  `status` tinyint(1) NOT NULL COMMENT '状态',
  `type` tinyint(1) NULL DEFAULT NULL COMMENT '订单类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (1, 'w', '7e808725653644d48ceaf61e4a4183cb', 10, 120.00, '', 'q', '2021-05-04 10:55:29', 'q', '2021-05-04 10:55:29', 1, NULL);
INSERT INTO `orders` VALUES (2, 'ww', '3d89df95c3df400ca3bd204c5fd84315', 23, 27.60, '', 'q', '2021-05-04 11:59:42', 'q', '2021-05-04 14:20:20', 1, NULL);
INSERT INTO `orders` VALUES (3, 'ww', 'b13b6d34cffd42c0a0c7459b7648101a', 1, 1.20, '', 'bing', '2021-05-04 16:20:46', 'bing', '2021-05-04 16:21:14', 2, NULL);

-- ----------------------------
-- Table structure for provider
-- ----------------------------
DROP TABLE IF EXISTS `provider`;
CREATE TABLE `provider`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '供应商ID',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '供应商名称',
  `contact` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '联系人',
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '联系电话',
  `address` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '联系地址',
  `intro` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '描述',
  `status` tinyint(1) NOT NULL COMMENT '状态',
  `ctime` datetime(0) NOT NULL COMMENT '开始时间',
  `utime` datetime(0) NOT NULL COMMENT '更新时间',
  `operator` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '操作员',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of provider
-- ----------------------------
INSERT INTO `provider` VALUES (1, '供应商1', '联系人1', '13245788495', 'China', '', 1, '2021-01-13 07:40:04', '2021-01-13 07:40:04', 'q');
INSERT INTO `provider` VALUES (2, '供应商2', '联系人2', '13245788495', 'China', NULL, 1, '2021-01-13 07:40:04', '2021-01-13 07:40:04', 'q');
INSERT INTO `provider` VALUES (3, '供应商3', '联系人3', '13245788495', 'China', NULL, 1, '2021-01-13 07:40:04', '2021-01-13 07:40:04', 'q');
INSERT INTO `provider` VALUES (4, '供应商4', '联系人4', '13245788495', 'China', NULL, 1, '2021-01-13 07:40:04', '2021-01-13 07:40:04', 'q');
INSERT INTO `provider` VALUES (5, '供应商5', '联系人5', '13245788495', 'China', NULL, 1, '2021-01-13 07:40:04', '2021-01-13 07:40:04', 'q');
INSERT INTO `provider` VALUES (6, '供应商6', '联系人6', '13245788495', 'China', NULL, 1, '2021-01-13 07:40:04', '2021-01-13 07:40:04', 'q');
INSERT INTO `provider` VALUES (7, '供应商7', '联系人7', '13245788495', 'China', NULL, 1, '2021-01-13 07:40:04', '2021-01-13 07:40:04', 'q');
INSERT INTO `provider` VALUES (8, '供应商8', '联系人8', '13245788495', 'China', NULL, 1, '2021-01-13 07:40:04', '2021-01-13 07:40:04', 'q');
INSERT INTO `provider` VALUES (9, '供应商9', '联系人9', '13245788495', 'Chinas', '', 1, '2021-01-13 07:40:04', '2021-01-13 07:40:04', 'q');
INSERT INTO `provider` VALUES (10, '供应商10', '联系人10', '13245788495', 'China', NULL, 1, '2021-01-13 07:40:04', '2021-01-13 07:40:04', 'q');
INSERT INTO `provider` VALUES (11, '供应商11', '联系人11', '13245788495', 'China', NULL, 1, '2021-01-13 07:40:04', '2021-01-13 07:40:04', 'q');
INSERT INTO `provider` VALUES (12, '供应商12', '联系人12', '13245788495', 'China', NULL, 1, '2021-01-13 07:40:04', '2021-01-13 07:40:04', 'q');
INSERT INTO `provider` VALUES (13, '供应商13', '联系人13', '13245788495', 'China', NULL, 1, '2021-01-13 07:40:04', '2021-01-13 07:40:04', 'q');
INSERT INTO `provider` VALUES (14, '供应商14', '联系人14', '13245788495', 'China', NULL, 1, '2021-01-13 07:40:04', '2021-01-13 07:40:04', 'q');
INSERT INTO `provider` VALUES (15, '供应商15', '联系人15', '13245788495', 'China', NULL, 1, '2021-01-13 07:40:04', '2021-01-13 07:40:04', 'q');
INSERT INTO `provider` VALUES (16, '供应商16', '联系人16', '13245788495', 'China', NULL, 1, '2021-01-13 07:40:04', '2021-01-13 07:40:04', 'q');
INSERT INTO `provider` VALUES (17, '供应商17', '联系人17', '13245788495', 'China', NULL, 1, '2021-01-13 07:40:04', '2021-01-13 07:40:04', 'q');
INSERT INTO `provider` VALUES (18, '供应商18', '联系人18', '13245788495', 'China', NULL, 1, '2021-01-13 07:40:04', '2021-01-13 07:40:04', 'q');
INSERT INTO `provider` VALUES (19, '供应商19', '联系人19', '13245788495', 'China', NULL, 1, '2021-01-13 07:40:04', '2021-01-13 07:40:04', 'q');
INSERT INTO `provider` VALUES (20, '供应商20', '联系人20', '13245788495', 'China', NULL, 1, '2021-01-13 07:40:04', '2021-01-13 07:40:04', 'q');
INSERT INTO `provider` VALUES (21, '供应商21', '我', '13548754690', '世界', '', 1, '2021-05-04 15:55:31', '2021-05-04 15:55:31', 'bing');

-- ----------------------------
-- Table structure for warehouse
-- ----------------------------
DROP TABLE IF EXISTS `warehouse`;
CREATE TABLE `warehouse`  (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '进货批次编号',
  `goods` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '商品',
  `count` int(11) NOT NULL COMMENT '进货数量',
  `price` decimal(10, 2) NULL DEFAULT NULL COMMENT '本批次商品总价',
  `time` datetime(0) NOT NULL COMMENT '进货时间',
  `type` int(11) NOT NULL COMMENT '1为入库，0为出库',
  `operator` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '操作员',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of warehouse
-- ----------------------------
INSERT INTO `warehouse` VALUES ('1fa18adf2e454f8da371ae009ec3867d', 'ww', 1, 1.20, '2021-05-04 16:14:21', 1, 'q');
INSERT INTO `warehouse` VALUES ('b070742f26a847bfa10fda28eb83f4de', 'ww', 10, 12.00, '2021-05-04 16:20:25', 0, 'bing');
INSERT INTO `warehouse` VALUES ('e80e0fc32aa3492b8e1e9a70633b6493', 'ww', 10, 12.00, '2021-05-04 16:06:13', 1, 'q');

SET FOREIGN_KEY_CHECKS = 1;
