/*
 Navicat Premium Data Transfer

 Source Server         : php_study
 Source Server Type    : MySQL
 Source Server Version : 50553
 Source Host           : localhost:3306
 Source Schema         : springbootemplate

 Target Server Type    : MySQL
 Target Server Version : 50553
 File Encoding         : 65001

 Date: 19/04/2019 15:33:02
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for oper_log
-- ----------------------------
DROP TABLE IF EXISTS `oper_log`;
CREATE TABLE `oper_log`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `userid` int(11) NULL DEFAULT NULL,
  `username` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createtime` datetime NULL DEFAULT NULL,
  `classname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `methodname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `params` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `durationtime` decimal(10, 0) NULL DEFAULT NULL,
  `ip` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `location` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 419 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of oper_log
-- ----------------------------
INSERT INTO `oper_log` VALUES (1, 1, 'admin', '2019-03-23 00:25:54', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: \"admin\"  password: \"123456\"', 27, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (2, 1, 'admin', '2019-03-23 00:26:51', 'com.longuto.springbootemplate.controller.LoginController', 'test', '', 1, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '登录测试接口一');
INSERT INTO `oper_log` VALUES (3, 1, 'admin', '2019-03-23 00:27:00', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: \"admin\"  password: \"123456\"', 15, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (4, 1, 'admin', '2019-03-23 00:27:51', 'com.longuto.springbootemplate.controller.LoginController', 'test', '', 0, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '登录测试接口一');
INSERT INTO `oper_log` VALUES (5, NULL, NULL, '2019-03-23 14:48:21', 'com.longuto.springbootemplate.controller.UserController', 'addUser', '  userInfo: \"com.longuto.springbootemplate.domain.UserInfo@308214d2\"  roleId: \"2\"', 272, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '注册用户');
INSERT INTO `oper_log` VALUES (6, NULL, NULL, '2019-03-23 14:53:22', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: \"tang\"  password: \"tang\"', 16, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (7, NULL, NULL, '2019-03-23 15:06:10', 'com.longuto.springbootemplate.controller.UserController', 'addUser', '  userInfo: \"com.longuto.springbootemplate.domain.UserInfo@60ec5155\"  roleId: \"2\"', 115, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '注册用户');
INSERT INTO `oper_log` VALUES (8, NULL, NULL, '2019-03-23 15:07:39', 'com.longuto.springbootemplate.controller.UserController', 'addUser', '  userInfo: \"com.longuto.springbootemplate.domain.UserInfo@2c06e661\"  roleId: \"2\"', 273, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '注册用户');
INSERT INTO `oper_log` VALUES (9, NULL, NULL, '2019-03-23 15:08:39', 'com.longuto.springbootemplate.controller.UserController', 'addUser', '  userInfo: \"com.longuto.springbootemplate.domain.UserInfo@79794e79\"  roleId: \"2\"', 267, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '注册用户');
INSERT INTO `oper_log` VALUES (10, NULL, NULL, '2019-03-23 15:36:39', 'com.longuto.springbootemplate.controller.UserController', 'addUser', '  userInfo: \"com.longuto.springbootemplate.domain.UserInfo@4b018fcb\"  roleId: \"2\"', 120, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '注册用户');
INSERT INTO `oper_log` VALUES (11, NULL, NULL, '2019-03-23 15:38:56', 'com.longuto.springbootemplate.controller.UserController', 'addUser', '  userInfo: \"com.longuto.springbootemplate.domain.UserInfo@7832acab\"  roleId: \"2\"', 293, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '注册用户');
INSERT INTO `oper_log` VALUES (12, NULL, NULL, '2019-03-23 15:41:18', 'com.longuto.springbootemplate.controller.UserController', 'addUser', '  userInfo: \"com.longuto.springbootemplate.domain.UserInfo@3083a744\"  roleId: \"3\"', 284, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '注册用户');
INSERT INTO `oper_log` VALUES (13, NULL, NULL, '2019-03-23 15:41:34', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: \"tang\"  password: \"tang\"', 11, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (14, NULL, NULL, '2019-03-23 15:41:46', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: \"zhou\"  password: \"zhou\"', 5, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (15, NULL, NULL, '2019-03-23 15:47:29', 'com.longuto.springbootemplate.controller.UserController', 'addUser', '  userInfo: \"com.longuto.springbootemplate.domain.UserInfo@2466c998\"  roleId: \"2\"', 122, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '注册用户');
INSERT INTO `oper_log` VALUES (16, 10, 'tang', '2019-03-23 15:47:41', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: \"tang\"  password: \"tang\"', 20, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (17, 10, 'tang', '2019-03-23 15:53:46', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: \"tang\"  password: \"tang\"', 294, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (18, 10, 'tang', '2019-03-23 15:53:49', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: \"tang\"  password: \"tang\"', 14, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (19, 10, 'tang', '2019-03-23 15:53:49', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: \"tang\"  password: \"tang\"', 13, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (20, 10, 'tang', '2019-03-23 15:53:50', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: \"tang\"  password: \"tang\"', 13, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (21, 10, 'tang', '2019-03-23 15:53:50', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: \"tang\"  password: \"tang\"', 14, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (22, 10, 'tang', '2019-03-23 15:53:50', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: \"tang\"  password: \"tang\"', 13, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (23, 10, 'tang', '2019-03-23 15:54:09', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: \"tang\"  password: \"tang\"', 278, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (24, 10, 'tang', '2019-03-23 15:54:16', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: \"tang\"  password: \"tang\"', 14, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (25, 10, 'tang', '2019-03-23 15:54:17', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: \"tang\"  password: \"tang\"', 14, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (26, 10, 'tang', '2019-03-23 15:54:17', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: \"tang\"  password: \"tang\"', 15, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (27, 10, 'tang', '2019-03-23 15:54:17', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: \"tang\"  password: \"tang\"', 12, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (28, 10, 'tang', '2019-03-23 15:54:17', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: \"tang\"  password: \"tang\"', 13, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (29, 10, 'tang', '2019-03-23 15:54:18', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: \"tang\"  password: \"tang\"', 14, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (30, 10, 'tang', '2019-03-23 15:54:18', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: \"tang\"  password: \"tang\"', 14, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (31, 10, 'tang', '2019-03-23 15:54:18', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: \"tang\"  password: \"tang\"', 13, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (32, 10, 'tang', '2019-03-23 15:54:18', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: \"tang\"  password: \"tang\"', 13, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (33, 10, 'tang', '2019-03-23 15:54:18', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: \"tang\"  password: \"tang\"', 12, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (34, 10, 'tang', '2019-03-23 15:54:40', 'com.longuto.springbootemplate.controller.UserController', 'addUser', '  userInfo: \"com.longuto.springbootemplate.domain.UserInfo@25c9906c\"  roleId: \"2\"', 22, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '注册用户');
INSERT INTO `oper_log` VALUES (35, 10, 'tang', '2019-03-23 15:55:28', 'com.longuto.springbootemplate.controller.UserController', 'addUser', '  userInfo: \"com.longuto.springbootemplate.domain.UserInfo@4aadf5af\"  roleId: \"1\"', 311, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '注册用户');
INSERT INTO `oper_log` VALUES (36, 10, 'tang', '2019-03-23 16:04:03', 'com.longuto.springbootemplate.controller.UserController', 'addUser', '  userInfo: \"com.longuto.springbootemplate.domain.UserInfo@1132b954\"  roleId: \"1\"', 110, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '注册用户');
INSERT INTO `oper_log` VALUES (37, NULL, NULL, '2019-03-23 17:09:44', 'com.longuto.springbootemplate.controller.UserController', 'addUser', '  userInfo: \"com.longuto.springbootemplate.domain.UserInfo@5c0f567d\"  roleId: \"1\"', 113, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '注册用户');
INSERT INTO `oper_log` VALUES (38, NULL, NULL, '2019-03-23 17:10:38', 'com.longuto.springbootemplate.controller.UserController', 'addUser', '  userInfo: \"com.longuto.springbootemplate.domain.UserInfo@5f404b5c\"  roleId: \"1\"', 326, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '注册用户');
INSERT INTO `oper_log` VALUES (39, NULL, NULL, '2019-03-23 18:01:54', 'com.longuto.springbootemplate.controller.UserController', 'addUser', '  userInfo: \"com.longuto.springbootemplate.domain.UserInfo@63d10d1\"  roleId: \"3\"', 116, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '注册用户');
INSERT INTO `oper_log` VALUES (40, NULL, NULL, '2019-03-23 18:03:48', 'com.longuto.springbootemplate.controller.UserController', 'addUser', '  userInfo: \"com.longuto.springbootemplate.domain.UserInfo@f32b2c7\"  roleId: \"3\"', 286, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '注册用户');
INSERT INTO `oper_log` VALUES (41, NULL, NULL, '2019-03-23 18:04:24', 'com.longuto.springbootemplate.controller.UserController', 'addUser', '  userInfo: \"com.longuto.springbootemplate.domain.UserInfo@a9a39e0\"  roleId: \"3\"', 298, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '注册用户');
INSERT INTO `oper_log` VALUES (42, NULL, NULL, '2019-03-23 18:09:44', 'com.longuto.springbootemplate.controller.UserController', 'addUser', '  userInfo: \"com.longuto.springbootemplate.domain.UserInfo@76d9470e\"  roleId: \"3\"', 331, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '注册用户');
INSERT INTO `oper_log` VALUES (43, NULL, NULL, '2019-03-23 18:10:35', 'com.longuto.springbootemplate.controller.UserController', 'addUser', '  userInfo: \"com.longuto.springbootemplate.domain.UserInfo@4619c4cc\"  roleId: \"3\"', 282, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '注册用户');
INSERT INTO `oper_log` VALUES (44, NULL, NULL, '2019-03-23 18:11:04', 'com.longuto.springbootemplate.controller.UserController', 'addUser', '  userInfo: \"com.longuto.springbootemplate.domain.UserInfo@5e5c2b7a\"  roleId: \"3\"', 290, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '注册用户');
INSERT INTO `oper_log` VALUES (45, NULL, NULL, '2019-03-23 18:11:20', 'com.longuto.springbootemplate.controller.UserController', 'addUser', '  userInfo: \"com.longuto.springbootemplate.domain.UserInfo@31fa1bac\"  roleId: \"3\"', 24, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '注册用户');
INSERT INTO `oper_log` VALUES (46, 1, 'admin', '2019-03-23 20:19:30', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: \"admin\"  password: \"123456\"', 120, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (47, 1, 'admin', '2019-03-23 20:19:35', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"', 42, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (48, 1, 'admin', '2019-03-23 20:20:53', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"', 13, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (49, 1, 'admin', '2019-03-23 20:20:55', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"', 5, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (50, 1, 'admin', '2019-03-23 20:20:56', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"', 9, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (51, 1, 'admin', '2019-03-23 20:21:04', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"', 7, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (52, 1, 'admin', '2019-03-23 20:21:08', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"', 6, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (53, 1, 'admin', '2019-03-23 20:21:09', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"', 6, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (54, 1, 'admin', '2019-03-23 20:21:09', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"', 7, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (55, 1, 'admin', '2019-03-23 20:21:09', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"', 6, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (56, 1, 'admin', '2019-03-23 20:21:09', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"', 7, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (57, 1, 'admin', '2019-03-23 20:21:09', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"', 7, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (58, 1, 'admin', '2019-03-23 20:21:10', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"', 6, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (59, 1, 'admin', '2019-03-23 20:21:21', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"', 6, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (60, 1, 'admin', '2019-03-23 20:21:21', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"', 10, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (61, 1, 'admin', '2019-03-23 20:21:22', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"', 7, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (62, 1, 'admin', '2019-03-23 20:21:22', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"', 7, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (63, 1, 'admin', '2019-03-23 20:21:47', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"', 5, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (64, 1, 'admin', '2019-03-23 21:15:12', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"  roleId: null', 282, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (65, 1, 'admin', '2019-03-23 21:17:03', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"  roleId: null', 10, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (66, 1, 'admin', '2019-03-23 21:18:09', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"  roleId: null', 9, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (67, 1, 'admin', '2019-03-23 21:18:15', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"  roleId: null', 5, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (68, 1, 'admin', '2019-03-23 21:20:57', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"  roleId: null', 268, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (69, 1, 'admin', '2019-03-23 21:23:03', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"  roleId: null', 284, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (70, 1, 'admin', '2019-03-23 21:24:20', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"  roleId: null', 269, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (71, 1, 'admin', '2019-03-23 21:24:54', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"  roleId: null', 259, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (72, 1, 'admin', '2019-03-23 21:29:20', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"  roleId: null', 12, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (73, 1, 'admin', '2019-03-23 21:29:33', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"  roleId: null', 5, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (74, 1, 'admin', '2019-03-23 21:33:33', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"  roleId: null', 277, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (75, 1, 'admin', '2019-03-23 21:38:20', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"  roleId: null', 239, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (76, 1, 'admin', '2019-03-23 21:55:57', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"  roleId: null', 280, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (77, 1, 'admin', '2019-03-23 21:56:06', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"  roleId: null', 5, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (78, 1, 'admin', '2019-03-23 21:56:10', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"  roleId: null', 7, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (79, 1, 'admin', '2019-03-23 21:56:28', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"  roleId: null', 5, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (80, 1, 'admin', '2019-03-23 21:56:46', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"  roleId: null', 286, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (81, 1, 'admin', '2019-03-23 21:57:43', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"  roleId: null', 237, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (82, 1, 'admin', '2019-03-23 21:58:24', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"  roleId: null', 252, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (83, 1, 'admin', '2019-03-23 22:00:07', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"  roleId: null', 9, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (84, 1, 'admin', '2019-03-23 22:01:26', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"  roleId: null', 9, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (85, 1, 'admin', '2019-03-23 22:04:14', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"  roleId: null', 245, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (86, 1, 'admin', '2019-03-23 22:06:11', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"  roleId: null', 242, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (87, 1, 'admin', '2019-03-23 22:06:25', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"  roleId: null', 4, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (88, 1, 'admin', '2019-03-23 22:07:48', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"  roleId: null', 79, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (89, 1, 'admin', '2019-03-23 22:11:54', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: \"admin\"  password: \"123456\"', 136, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (90, 1, 'admin', '2019-03-23 22:13:44', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"  roleId: null', 238, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (91, 1, 'admin', '2019-03-23 22:17:53', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"  roleId: \"1\"', 276, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (92, 1, 'admin', '2019-03-23 22:18:51', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"  roleId: \"1\"', 290, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (93, 1, 'admin', '2019-03-23 22:18:53', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"  roleId: \"1\"', 9, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (94, 1, 'admin', '2019-03-23 22:18:58', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"  roleId: \"1\"', 9, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (95, 1, 'admin', '2019-03-23 22:19:09', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=1, pageNum=1}\"  roleId: \"1\"', 9, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (96, 1, 'admin', '2019-03-23 22:19:18', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=1, pageNum=2}\"  roleId: \"1\"', 8, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (97, 1, 'admin', '2019-03-23 22:19:30', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=2, pageNum=1}\"  roleId: \"1\"', 8, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (98, 1, 'admin', '2019-03-23 22:19:39', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=2, pageNum=0}\"  roleId: \"1\"', 9, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (99, 1, 'admin', '2019-03-23 22:19:53', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=1}\"  roleId: \"1\"', 19, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (100, 1, 'admin', '2019-03-23 22:19:59', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=1, pageNum=1}\"  roleId: \"1\"', 9, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (101, 1, 'admin', '2019-03-23 22:43:52', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"  roleId: \"1\"', 19, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (102, 1, 'admin', '2019-03-23 22:43:59', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"  roleId: \"2\"', 5, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (103, 1, 'admin', '2019-03-23 22:54:03', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"  roleId: null', 106, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (104, 1, 'admin', '2019-03-23 22:54:59', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"  roleId: null', 296, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (105, 1, 'admin', '2019-03-24 12:23:07', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: \"admin\"  password: \"123456\"', 130, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (106, 1, 'admin', '2019-03-24 12:24:31', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"  roleId: null', 121, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (107, 1, 'admin', '2019-03-24 12:24:50', 'com.longuto.springbootemplate.controller.UserController', 'addUser', '  userInfo: \"com.longuto.springbootemplate.domain.UserInfo@14478684\"  roleId: \"3\"', 48, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '注册用户');
INSERT INTO `oper_log` VALUES (108, 1, 'admin', '2019-03-24 12:25:01', 'com.longuto.springbootemplate.controller.UserController', 'addUser', '  userInfo: \"com.longuto.springbootemplate.domain.UserInfo@6ebdf74b\"  roleId: \"3\"', 12, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '注册用户');
INSERT INTO `oper_log` VALUES (109, 1, 'admin', '2019-03-24 12:25:15', 'com.longuto.springbootemplate.controller.UserController', 'addUser', '  userInfo: \"com.longuto.springbootemplate.domain.UserInfo@615f8123\"  roleId: \"1\"', 20, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '注册用户');
INSERT INTO `oper_log` VALUES (110, 1, 'admin', '2019-03-24 12:25:24', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"  roleId: null', 10, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (111, 1, 'admin', '2019-03-24 12:25:57', 'com.longuto.springbootemplate.controller.UserController', 'deleteByName', '  names: \"哈哈,呵呵\"', 15, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '通过姓名删除用户');
INSERT INTO `oper_log` VALUES (112, 1, 'admin', '2019-03-24 12:26:03', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"  roleId: null', 14, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (113, 1, 'admin', '2019-03-24 12:26:17', 'com.longuto.springbootemplate.controller.UserController', 'deleteByName', '  names: \"哈哈\"', 4, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '通过姓名删除用户');
INSERT INTO `oper_log` VALUES (114, 1, 'admin', '2019-03-24 12:26:26', 'com.longuto.springbootemplate.controller.UserController', 'deleteByName', '  names: \"hu,131\"', 4, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '通过姓名删除用户');
INSERT INTO `oper_log` VALUES (115, 1, 'admin', '2019-03-24 12:52:24', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"  roleId: null', 17, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (116, 1, 'admin', '2019-03-24 12:53:11', 'com.longuto.springbootemplate.controller.UserController', 'addUser', '  userInfo: \"com.longuto.springbootemplate.domain.UserInfo@4a8676da\"  roleId: \"3\"', 18, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '注册用户');
INSERT INTO `oper_log` VALUES (117, 1, 'admin', '2019-03-24 12:53:20', 'com.longuto.springbootemplate.controller.UserController', 'addUser', '  userInfo: \"com.longuto.springbootemplate.domain.UserInfo@3822e9f7\"  roleId: \"3\"', 6, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '注册用户');
INSERT INTO `oper_log` VALUES (118, 1, 'admin', '2019-03-24 12:53:23', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"  roleId: null', 12, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (119, 1, 'admin', '2019-03-24 12:53:46', 'com.longuto.springbootemplate.controller.UserController', 'addUser', '  userInfo: \"com.longuto.springbootemplate.domain.UserInfo@3df3b48e\"  roleId: \"3\"', 10, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '注册用户');
INSERT INTO `oper_log` VALUES (120, 1, 'admin', '2019-03-24 12:54:08', 'com.longuto.springbootemplate.controller.UserController', 'addUser', '  userInfo: \"com.longuto.springbootemplate.domain.UserInfo@4b6bb5f3\"  roleId: \"3\"', 21, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '注册用户');
INSERT INTO `oper_log` VALUES (121, 1, 'admin', '2019-03-24 12:54:14', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"  roleId: null', 9, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (122, 1, 'admin', '2019-03-24 12:54:36', 'com.longuto.springbootemplate.controller.UserController', 'deleteByName', '  names: \"嘻嘻,123\"', 14, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '通过姓名删除用户');
INSERT INTO `oper_log` VALUES (123, 1, 'admin', '2019-03-24 23:49:01', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: \"admin\"  password: \"123456\"', 127, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (124, 1, 'admin', '2019-03-24 23:49:11', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"  roleId: null', 39, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (125, 1, 'admin', '2019-03-24 23:50:48', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: \"admin\"  password: \"123456\"', 314, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (126, 1, 'admin', '2019-03-24 23:51:05', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"  roleId: null', 38, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (127, 1, 'admin', '2019-03-24 23:53:00', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"  roleId: null', 291, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (128, 1, 'admin', '2019-03-24 23:54:11', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"  roleId: \"1\"', 8, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (129, 1, 'admin', '2019-03-24 23:56:12', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=1, pageNum=3}\"  roleId: null', 14, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (130, 1, 'admin', '2019-03-24 23:56:45', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=1, pageNum=2}\"  roleId: null', 6, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (131, 1, 'admin', '2019-03-24 23:57:07', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=1, pageNum=1}\"  roleId: null', 6, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (132, 1, 'admin', '2019-03-24 23:58:00', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"  roleId: \"2\"', 2, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (133, 1, 'admin', '2019-03-25 23:12:46', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: \"admin\"  password: \"123456\"', 140, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (134, 1, 'admin', '2019-03-25 23:13:00', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"  roleId: \"1\"', 11, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (135, 1, 'admin', '2019-03-25 23:13:43', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"  roleId: \"2\"', 2, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (136, 1, 'admin', '2019-03-25 23:13:58', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"  roleId: null', 36, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (137, 1, 'admin', '2019-03-25 23:14:12', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"  roleId: \"3\"', 2, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (138, 1, 'admin', '2019-03-25 23:17:12', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"  roleId: \"1\"', 41, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (139, 1, 'admin', '2019-03-25 23:17:16', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"  roleId: \"1\"', 2, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (140, 1, 'admin', '2019-03-25 23:18:08', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"  roleId: \"1\"', 43, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (141, 1, 'admin', '2019-03-25 23:18:13', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: \"admin\"  password: \"123456\"', 62, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (142, 1, 'admin', '2019-03-25 23:18:17', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"  roleId: \"1\"', 2, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (143, 1, 'admin', '2019-03-25 23:18:22', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"  roleId: null', 30, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (144, 1, 'admin', '2019-03-25 23:18:33', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"  roleId: null', 7, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (145, 1, 'admin', '2019-03-25 23:19:19', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"  roleId: null', 7, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (146, 1, 'admin', '2019-03-25 23:19:33', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"  roleId: \"1\"', 2, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (147, 1, 'admin', '2019-03-25 23:23:33', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"  roleId: \"1\"', 38, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (148, 1, 'admin', '2019-03-25 23:26:29', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"  roleId: \"1\"', 277, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (149, 1, 'admin', '2019-03-25 23:26:38', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"  roleId: \"2\"', 7, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (150, 1, 'admin', '2019-03-25 23:44:36', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: \"admin\"  password: \"123456\"', 288, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (151, 1, 'admin', '2019-03-25 23:55:30', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: \"admin\"  password: \"123456\"', 314, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (152, 1, 'admin', '2019-03-26 00:04:17', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"  roleId: null', 300, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (153, 1, 'admin', '2019-03-26 00:04:21', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"  roleId: \"1\"', 12, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (154, 1, 'admin', '2019-03-26 00:13:17', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"  roleId: \"1\"', 309, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (155, 1, 'admin', '2019-03-26 00:21:25', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: \"admin\"  password: \"123456\"', 123, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (156, 1, 'admin', '2019-03-26 00:25:37', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: \"admin\"  password: \"123456\"', 154, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (157, 1, 'admin', '2019-03-26 00:29:30', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: \"admin\"  password: \"123456\"', 176, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (158, 1, 'admin', '2019-03-26 00:30:49', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: \"admin\"  password: \"123456\"', 175, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (159, 1, 'admin', '2019-03-26 00:30:55', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"  roleId: null', 50, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (160, 1, 'admin', '2019-03-26 00:32:31', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"  roleId: \"1\"', 16, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (161, 1, 'admin', '2019-03-26 00:33:28', 'com.longuto.springbootemplate.controller.UserController', 'addUser', '  userInfo: \"com.longuto.springbootemplate.domain.UserInfo@450c8d63\"  roleId: \"2\"', 18, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '注册用户');
INSERT INTO `oper_log` VALUES (162, 1, 'admin', '2019-03-26 00:33:42', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"  roleId: null', 9, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (163, 1, 'admin', '2019-03-26 20:14:05', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: \"admin\"  password: \"123456\"', 301, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (164, 1, 'admin', '2019-03-26 20:18:06', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: \"admin\"  password: \"123456\"', 18, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (165, 1, 'admin', '2019-03-26 20:30:16', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: \"admin\"  password: \"123456\"', 21, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (166, 1, 'admin', '2019-03-26 20:30:29', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: \"admin\"  password: \"123456\"', 15, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (167, 1, 'admin', '2019-03-26 22:32:32', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: \"admin\"  password: \"123456\"', 130, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (168, 1, 'admin', '2019-03-26 23:19:59', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: \"admin\"  password: \"123456\"', 139, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (169, 1, 'admin', '2019-03-26 23:27:43', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"  roleId: null', 314, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (170, 1, 'admin', '2019-03-26 23:28:22', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: \"admin\"  password: \"123456\"', 40, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (171, 1, 'admin', '2019-03-26 23:28:24', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"  roleId: null', 7, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (172, 1, 'admin', '2019-03-26 23:28:27', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"  roleId: \"1\"', 10, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (173, 1, 'admin', '2019-03-26 23:28:32', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=1, pageNum=1}\"  roleId: \"1\"', 9, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (174, 1, 'admin', '2019-03-26 23:37:07', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"  roleId: \"0\"', 16, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (175, 1, 'admin', '2019-03-26 23:39:07', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: \"admin\"  password: \"123456\"', 123, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (176, 1, 'admin', '2019-03-26 23:39:09', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"  roleId: \"0\"', 40, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (177, 1, 'admin', '2019-03-26 23:39:20', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"  roleId: null', 14, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (178, 1, 'admin', '2019-03-26 23:39:27', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"  roleId: \"1\"', 8, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (179, 1, 'admin', '2019-03-28 10:32:34', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: \"admin\"  password: \"123456\"', 309, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (180, 1, 'admin', '2019-03-28 10:32:40', 'com.longuto.springbootemplate.controller.UserController', 'exportUsers', '', 53, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '导出用户list');
INSERT INTO `oper_log` VALUES (181, 1, 'admin', '2019-03-28 10:53:07', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: \"admin\"  password: \"123456\"', 301, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (182, 1, 'admin', '2019-03-28 10:53:15', 'com.longuto.springbootemplate.controller.UserController', 'exportUsers2Explore', '  response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@389efdbe', 505, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '导出用户list至浏览器');
INSERT INTO `oper_log` VALUES (183, 1, 'admin', '2019-03-28 10:55:04', 'com.longuto.springbootemplate.controller.UserController', 'exportUsers2Explore', '  response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@f92dadf', 51, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '导出用户list至浏览器');
INSERT INTO `oper_log` VALUES (184, 1, 'admin', '2019-03-28 11:09:25', 'com.longuto.springbootemplate.controller.UserController', 'exportUsers2Service', '', 53, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '导出用户list至本地');
INSERT INTO `oper_log` VALUES (185, 1, 'admin', '2019-03-28 11:12:29', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: \"admin\"  password: \"123456\"', 121, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (186, 1, 'admin', '2019-03-28 11:12:38', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"  roleId: null', 45, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (187, 1, 'admin', '2019-03-28 11:12:49', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"  roleId: \"1\"', 11, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (188, 1, 'admin', '2019-03-28 11:13:09', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=1, pageNum=1}\"  roleId: \"1\"', 9, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (189, 1, 'admin', '2019-03-28 11:18:17', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: \"admin\"  password: \"123456\"', 293, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (190, 1, 'admin', '2019-03-28 11:18:22', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"  roleId: null', 42, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (191, 1, 'admin', '2019-03-28 11:18:29', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"  roleId: \"1\"', 10, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (192, 1, 'admin', '2019-03-28 11:18:38', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=1, pageNum=1}\"  roleId: \"1\"', 8, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (193, 1, 'admin', '2019-03-28 16:27:34', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: \"admin\"  password: \"123456\"', 464, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (194, 1, 'admin', '2019-03-28 16:27:42', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"  roleId: null', 64, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (195, 1, 'admin', '2019-03-28 16:49:24', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: \"admin\"  password: \"123456\"', 29, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (196, 1, 'admin', '2019-03-29 10:57:22', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: \"admin\"  password: \"123456\"', 294, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (197, 1, 'admin', '2019-03-29 10:57:30', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"  roleId: null', 45, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (198, 1, 'admin', '2019-03-29 11:03:21', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: \"admin\"  password: \"123456\"', 296, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (199, 1, 'admin', '2019-03-29 11:04:34', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"  roleId: null', 310, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (200, 1, 'admin', '2019-03-29 11:07:20', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: \"admin\"  password: \"123456\"', 313, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (201, 1, 'admin', '2019-03-29 11:07:22', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"  roleId: null', 40, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (202, 18, '2', '2019-03-29 17:31:14', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: \"2\"  password: \"2\"', 127, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (203, 1, 'admin', '2019-03-30 15:59:39', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: \"admin\"  password: \"123456\"', 230, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (204, 1, 'admin', '2019-03-30 16:44:37', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: \"admin\"  password: \"123456\"', 120, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (205, 1, 'admin', '2019-03-30 17:06:28', 'com.longuto.springbootemplate.controller.LoginController', 'test', '', 2, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '登录测试接口一');
INSERT INTO `oper_log` VALUES (206, 1, 'admin', '2019-03-30 17:23:12', 'com.longuto.springbootemplate.controller.PubSkuController', 'createSku', '  pubSku: \"com.longuto.springbootemplate.domain.PubSku@6df20e2d\"', 121, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '创建sku');
INSERT INTO `oper_log` VALUES (207, 1, 'admin', '2019-03-30 17:24:22', 'com.longuto.springbootemplate.controller.PubSkuController', 'createSku', '  pubSku: \"com.longuto.springbootemplate.domain.PubSku@63b7b064\"', 14, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '创建sku');
INSERT INTO `oper_log` VALUES (208, 1, 'admin', '2019-03-30 17:24:36', 'com.longuto.springbootemplate.controller.PubSkuController', 'createSku', '  pubSku: \"com.longuto.springbootemplate.domain.PubSku@6b5b791\"', 6, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '创建sku');
INSERT INTO `oper_log` VALUES (209, 1, 'admin', '2019-03-30 17:24:47', 'com.longuto.springbootemplate.controller.PubSkuController', 'createSku', '  pubSku: \"com.longuto.springbootemplate.domain.PubSku@6e4504c7\"', 6, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '创建sku');
INSERT INTO `oper_log` VALUES (210, 1, 'admin', '2019-03-30 17:25:22', 'com.longuto.springbootemplate.controller.PubSkuController', 'createSku', '  pubSku: \"com.longuto.springbootemplate.domain.PubSku@26c1c64f\"', 4, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '创建sku');
INSERT INTO `oper_log` VALUES (211, 1, 'admin', '2019-03-30 17:25:43', 'com.longuto.springbootemplate.controller.PubSkuController', 'createSku', '  pubSku: \"com.longuto.springbootemplate.domain.PubSku@7a26eeaf\"', 5, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '创建sku');
INSERT INTO `oper_log` VALUES (212, 1, 'admin', '2019-03-30 17:27:37', 'com.longuto.springbootemplate.controller.PubSkuController', 'createSku', '  pubSku: \"com.longuto.springbootemplate.domain.PubSku@4d1ed31\"', 18744, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '创建sku');
INSERT INTO `oper_log` VALUES (213, 1, 'admin', '2019-03-30 17:28:26', 'com.longuto.springbootemplate.controller.PubSkuController', 'createSku', '  pubSku: \"com.longuto.springbootemplate.domain.PubSku@2a5dcfde\"', 277, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '创建sku');
INSERT INTO `oper_log` VALUES (214, 1, 'admin', '2019-03-30 17:31:33', 'com.longuto.springbootemplate.controller.PubSkuController', 'createSku', '  pubSku: \"com.longuto.springbootemplate.domain.PubSku@641d088b\"', 325, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '创建sku');
INSERT INTO `oper_log` VALUES (215, 1, 'admin', '2019-03-30 17:31:38', 'com.longuto.springbootemplate.controller.PubSkuController', 'createSku', '  pubSku: \"com.longuto.springbootemplate.domain.PubSku@76005e2d\"', 5, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '创建sku');
INSERT INTO `oper_log` VALUES (216, 1, 'admin', '2019-03-30 17:31:46', 'com.longuto.springbootemplate.controller.PubSkuController', 'createSku', '  pubSku: \"com.longuto.springbootemplate.domain.PubSku@412155af\"', 6, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '创建sku');
INSERT INTO `oper_log` VALUES (217, 1, 'admin', '2019-03-30 17:32:57', 'com.longuto.springbootemplate.controller.PubSkuController', 'createSku', '  pubSku: \"com.longuto.springbootemplate.domain.PubSku@c615118\"', 24, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '创建sku');
INSERT INTO `oper_log` VALUES (218, 1, 'admin', '2019-03-30 17:33:18', 'com.longuto.springbootemplate.controller.PubSkuController', 'createSku', '  pubSku: \"com.longuto.springbootemplate.domain.PubSku@608ace88\"', 17, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '创建sku');
INSERT INTO `oper_log` VALUES (219, 1, 'admin', '2019-03-30 17:52:12', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"  roleId: \"234\"', 135, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (220, 1, 'admin', '2019-03-30 17:57:48', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"  roleId: null', 121, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (221, 1, 'admin', '2019-03-30 18:03:35', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"  roleId: null', 16, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (222, NULL, NULL, '2019-03-30 19:06:30', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: null  password: null', 15, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (223, NULL, NULL, '2019-03-30 20:05:07', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: null  password: null', 6, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (224, NULL, NULL, '2019-03-30 20:05:56', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: null  password: null', 10, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (225, NULL, NULL, '2019-03-30 20:07:00', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: \"admin\"  password: null', 11, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (226, NULL, NULL, '2019-03-30 20:07:55', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: \"admin\"  password: null', 40, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (227, NULL, NULL, '2019-03-30 20:08:56', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: \"admin\"  password: null', 100, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (228, NULL, NULL, '2019-03-30 20:09:00', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: null  password: null', 1, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (229, NULL, NULL, '2019-03-30 20:09:04', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: null  password: null', 0, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (230, NULL, NULL, '2019-03-30 20:09:05', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: null  password: null', 0, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (231, NULL, NULL, '2019-03-30 20:13:48', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: null  password: \"123456\"', 40, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (232, NULL, NULL, '2019-03-30 20:20:16', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: null  password: null', 82, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (233, NULL, NULL, '2019-03-30 20:21:05', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: null  password: null', 299, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (234, NULL, NULL, '2019-03-30 20:54:20', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: null  password: null', 81, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (235, NULL, NULL, '2019-03-30 20:54:44', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: null  password: null', 79, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (236, 1, 'admin', '2019-03-30 20:54:50', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: \"admin\"  password: \"123456\"', 72, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (237, 1, 'admin', '2019-03-30 20:54:56', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: \"admin\"  password: null', 1, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (238, 1, 'admin', '2019-03-30 20:55:52', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: null  password: null', 80, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (239, NULL, NULL, '2019-03-30 20:56:32', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: \"\"  password: \"\"', 0, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (240, 1, 'admin', '2019-03-30 20:57:14', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: null  password: null', 80, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (241, 1, 'admin', '2019-03-30 21:00:43', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: \"admin\"  password: \"123456\"', 71, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (242, NULL, NULL, '2019-03-30 21:05:20', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: null  password: \"123456\"', 53, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (243, NULL, NULL, '2019-03-30 21:09:49', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: null  password: \"123456\"', 82, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (244, NULL, NULL, '2019-03-30 21:21:15', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: null  password: null', 41, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (245, NULL, NULL, '2019-03-30 21:32:52', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: null  password: null', 14, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (246, 1, 'admin', '2019-03-30 21:35:18', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: \"admin\"  password: \"123456\"', 139, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (247, 1, 'admin', '2019-03-31 16:40:58', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: \"admin\"  password: \"123456\"', 146, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (248, 1, 'admin', '2019-03-31 16:41:53', 'com.longuto.springbootemplate.controller.PubSkuController', 'createSku', '  pubSku: \"com.longuto.springbootemplate.domain.PubSku@640adfc6\"', 24, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '创建sku');
INSERT INTO `oper_log` VALUES (249, 1, 'admin', '2019-03-31 16:44:25', 'com.longuto.springbootemplate.controller.PubSkuController', 'skuList', '  queryRequest: \"QueryRequest{pageSize=0, pageNum=0}\"', 42, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', 'sku集合');
INSERT INTO `oper_log` VALUES (250, 1, 'admin', '2019-03-31 17:44:36', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: \"admin\"  password: \"123456\"', 145, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (251, 1, 'admin', '2019-03-31 17:44:48', 'com.longuto.springbootemplate.controller.PubStockController', 'createStock', '  number: \"king\"  name: \"king单仓管理\"  type: \"0\"', 34, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '创建stock');
INSERT INTO `oper_log` VALUES (252, 1, 'admin', '2019-03-31 17:47:07', 'com.longuto.springbootemplate.controller.PubStockController', 'createStock', '  number: \"stock001\"  name: \"合肥鱼竿单仓\"  type: \"0\"', 120, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '创建stock');
INSERT INTO `oper_log` VALUES (253, 1, 'admin', '2019-03-31 17:47:28', 'com.longuto.springbootemplate.controller.UserController', 'userList', '  request: \"QueryRequest{pageSize=0, pageNum=0}\"  roleId: null', 54, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '查询用户list');
INSERT INTO `oper_log` VALUES (254, 10, 'tang', '2019-03-31 17:47:43', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: \"tang\"  password: \"tang\"', 79, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (255, 10, 'tang', '2019-03-31 17:48:21', 'com.longuto.springbootemplate.controller.PubStockController', 'createStock', '  number: \"stock002\"  name: \"老汤板鸭仓位管理仓库\"  type: \"1\"', 20, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '创建stock');
INSERT INTO `oper_log` VALUES (256, 10, 'tang', '2019-03-31 17:48:37', 'com.longuto.springbootemplate.controller.PubStockController', 'skuList', '  queryRequest: \"QueryRequest{pageSize=0, pageNum=0}\"', 9, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', 'stock集合');
INSERT INTO `oper_log` VALUES (257, 10, 'tang', '2019-03-31 17:48:45', 'com.longuto.springbootemplate.controller.PubStockController', 'skuList', '  queryRequest: \"QueryRequest{pageSize=2, pageNum=1}\"', 9, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', 'stock集合');
INSERT INTO `oper_log` VALUES (258, 10, 'tang', '2019-03-31 17:50:17', 'com.longuto.springbootemplate.controller.PubStockController', 'skuList', '  queryRequest: \"QueryRequest{pageSize=2, pageNum=1}\"', 261, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', 'stock集合');
INSERT INTO `oper_log` VALUES (259, 1, 'admin', '2019-04-01 10:42:48', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: \"admin\"  password: \"123456\"', 144, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (260, 1, 'admin', '2019-04-01 10:43:28', 'com.longuto.springbootemplate.controller.PubStockController', 'createStock', '  number: \"stock0002\"  name: \"单仓测试0002\"  type: \"3\"', 29, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '创建stock');
INSERT INTO `oper_log` VALUES (261, 1, 'admin', '2019-04-01 10:46:15', 'com.longuto.springbootemplate.controller.PubStockController', 'skuList', '  queryRequest: \"QueryRequest{pageSize=0, pageNum=0}\"', 362, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', 'stock集合');
INSERT INTO `oper_log` VALUES (262, 1, 'admin', '2019-04-01 11:10:52', 'com.longuto.springbootemplate.controller.PubPickController', 'createPick', '  number: \"A01-01-1\"  stockId: \"5\"  totalqty: \"100\"', 174, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '创建货位');
INSERT INTO `oper_log` VALUES (263, 1, 'admin', '2019-04-01 11:10:58', 'com.longuto.springbootemplate.controller.PubPickController', 'createPick', '  number: \"A01-01-1\"  stockId: \"1\"  totalqty: \"100\"', 32, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '创建货位');
INSERT INTO `oper_log` VALUES (264, 1, 'admin', '2019-04-01 11:11:20', 'com.longuto.springbootemplate.controller.PubPickController', 'createPick', '  number: \"A01-01-1\"  stockId: \"2\"  totalqty: \"100\"', 7, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '创建货位');
INSERT INTO `oper_log` VALUES (265, 1, 'admin', '2019-04-01 11:11:29', 'com.longuto.springbootemplate.controller.PubPickController', 'createPick', '  number: \"A01-01-2\"  stockId: \"1\"  totalqty: null', 24, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '创建货位');
INSERT INTO `oper_log` VALUES (266, 1, 'admin', '2019-04-01 11:11:48', 'com.longuto.springbootemplate.controller.PubPickController', 'createPick', '  number: \"A02-01-1\"  stockId: \"2\"  totalqty: \"100\"', 27, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '创建货位');
INSERT INTO `oper_log` VALUES (267, 1, 'admin', '2019-04-01 11:11:58', 'com.longuto.springbootemplate.controller.PubPickController', 'createPick', '  number: \"A02-01-2\"  stockId: \"2\"  totalqty: \"150\"', 29, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '创建货位');
INSERT INTO `oper_log` VALUES (268, 1, 'admin', '2019-04-01 11:12:07', 'com.longuto.springbootemplate.controller.PubPickController', 'createPick', '  number: \"A03-01-1\"  stockId: \"3\"  totalqty: \"150\"', 24, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '创建货位');
INSERT INTO `oper_log` VALUES (269, 1, 'admin', '2019-04-01 11:12:16', 'com.longuto.springbootemplate.controller.PubPickController', 'createPick', '  number: \"A03-01-2\"  stockId: \"3\"  totalqty: \"99\"', 18, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '创建货位');
INSERT INTO `oper_log` VALUES (270, 1, 'admin', '2019-04-01 11:12:31', 'com.longuto.springbootemplate.controller.PubPickController', 'skuList', '  queryRequest: \"QueryRequest{pageSize=0, pageNum=0}\"', 31, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', 'pick集合');
INSERT INTO `oper_log` VALUES (271, 1, 'admin', '2019-04-01 11:13:16', 'com.longuto.springbootemplate.controller.PubPickController', 'createPick', '  number: \"A01-01-112\"  stockId: \"4\"  totalqty: \"99\"', 22, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '创建货位');
INSERT INTO `oper_log` VALUES (272, 1, 'admin', '2019-04-01 11:21:05', 'com.longuto.springbootemplate.controller.PubPickController', 'pickList', '  queryRequest: \"QueryRequest{pageSize=0, pageNum=0}\"', 141, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', 'pick集合');
INSERT INTO `oper_log` VALUES (273, 1, 'admin', '2019-04-01 11:21:26', 'com.longuto.springbootemplate.controller.PubPickController', 'deleteByPickId', '  id: \"7\"', 13, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '根据仓位id删除仓位');
INSERT INTO `oper_log` VALUES (274, 1, 'admin', '2019-04-01 11:30:10', 'com.longuto.springbootemplate.controller.PubPickController', 'deleteByPickId', '  id: \"7\"', 11, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '根据仓位id删除仓位');
INSERT INTO `oper_log` VALUES (275, 1, 'admin', '2019-04-01 12:14:21', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: \"admin\"  password: \"123456\"', 130, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (276, 1, 'admin', '2019-04-01 12:15:52', 'com.longuto.springbootemplate.controller.PubPickController', 'pickList', '  queryRequest: \"QueryRequest{pageSize=0, pageNum=0}\"', 144, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', 'pick集合');
INSERT INTO `oper_log` VALUES (277, 1, 'admin', '2019-04-01 12:16:10', 'com.longuto.springbootemplate.controller.PubPickController', 'changePickStatu', '  pid: \"7\"  status: \"1\"', 25, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '禁用启用仓位的状态');
INSERT INTO `oper_log` VALUES (278, 1, 'admin', '2019-04-01 12:16:14', 'com.longuto.springbootemplate.controller.PubPickController', 'changePickStatu', '  pid: \"6\"  status: \"1\"', 4, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '禁用启用仓位的状态');
INSERT INTO `oper_log` VALUES (279, 1, 'admin', '2019-04-01 12:16:20', 'com.longuto.springbootemplate.controller.PubPickController', 'changePickStatu', '  pid: \"6\"  status: \"0\"', 14, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '禁用启用仓位的状态');
INSERT INTO `oper_log` VALUES (280, 1, 'admin', '2019-04-01 12:16:37', 'com.longuto.springbootemplate.controller.PubPickController', 'changePickStatu', '  pid: \"6\"  status: \"0\"', 8, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '禁用启用仓位的状态');
INSERT INTO `oper_log` VALUES (281, 1, 'admin', '2019-04-01 12:16:42', 'com.longuto.springbootemplate.controller.PubPickController', 'changePickStatu', '  pid: \"6\"  status: \"1\"', 20, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '禁用启用仓位的状态');
INSERT INTO `oper_log` VALUES (282, 1, 'admin', '2019-04-01 12:16:57', 'com.longuto.springbootemplate.controller.PubPickController', 'createPick', '  number: \"A04-01-1\"  stockId: \"4\"  totalqty: null', 53, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '创建货位');
INSERT INTO `oper_log` VALUES (283, 1, 'admin', '2019-04-01 12:17:13', 'com.longuto.springbootemplate.controller.PubPickController', 'deleteByPickId', '  id: \"7\"', 5, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '根据仓位id删除仓位');
INSERT INTO `oper_log` VALUES (284, 1, 'admin', '2019-04-01 12:17:17', 'com.longuto.springbootemplate.controller.PubPickController', 'deleteByPickId', '  id: \"8\"', 15, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '根据仓位id删除仓位');
INSERT INTO `oper_log` VALUES (285, 1, 'admin', '2019-04-01 16:58:52', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: \"admin\"  password: \"123456\"', 150, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (286, 1, 'admin', '2019-04-01 16:59:00', 'com.longuto.springbootemplate.controller.PubPickController', 'pickList', '  queryRequest: \"QueryRequest{pageSize=0, pageNum=0}\"', 36, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', 'pick集合');
INSERT INTO `oper_log` VALUES (287, 10, 'tang', '2019-04-01 22:35:50', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: \"tang\"  password: \"tang\"', 137, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (288, 10, 'tang', '2019-04-01 22:36:30', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'upperShelf', '  pickid: \"1\"  skuNumber: \"ygydas\"  batch: null  qty: \"1\"', 30, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品上架');
INSERT INTO `oper_log` VALUES (289, 10, 'tang', '2019-04-01 22:36:43', 'com.longuto.springbootemplate.controller.PubSkuController', 'skuList', '  queryRequest: \"QueryRequest{pageSize=0, pageNum=0}\"', 32, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', 'sku集合');
INSERT INTO `oper_log` VALUES (290, 10, 'tang', '2019-04-01 23:06:02', 'com.longuto.springbootemplate.controller.LoginController', 'test', '', 41, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '登录测试接口一');
INSERT INTO `oper_log` VALUES (291, 10, 'tang', '2019-04-01 23:07:26', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'upperShelf', '  pickid: \"1\"  skuNumber: \"allenl\"  batch: null  qty: \"1\"', 399, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品上架');
INSERT INTO `oper_log` VALUES (292, 10, 'tang', '2019-04-01 23:07:51', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'upperShelf', '  pickid: \"1\"  skuNumber: \"allenl\"  batch: null  qty: \"1\"', 29, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品上架');
INSERT INTO `oper_log` VALUES (293, 10, 'tang', '2019-04-01 23:08:08', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'upperShelf', '  pickid: \"1\"  skuNumber: \"allenlx\"  batch: null  qty: \"1\"', 9, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品上架');
INSERT INTO `oper_log` VALUES (294, 10, 'tang', '2019-04-01 23:08:14', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'upperShelf', '  pickid: \"1\"  skuNumber: \"allenxl\"  batch: null  qty: \"1\"', 13, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品上架');
INSERT INTO `oper_log` VALUES (295, 10, 'tang', '2019-04-01 23:08:35', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'upperShelf', '  pickid: \"1\"  skuNumber: \"010001322\"  batch: null  qty: \"1\"', 8, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品上架');
INSERT INTO `oper_log` VALUES (296, 10, 'tang', '2019-04-01 23:08:40', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'upperShelf', '  pickid: \"2\"  skuNumber: \"010001322\"  batch: null  qty: \"1\"', 9, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品上架');
INSERT INTO `oper_log` VALUES (297, 10, 'tang', '2019-04-01 23:08:44', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'upperShelf', '  pickid: \"2\"  skuNumber: \"010001322\"  batch: \"123\"  qty: \"1\"', 29, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品上架');
INSERT INTO `oper_log` VALUES (298, 10, 'tang', '2019-04-01 23:09:17', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'upperShelf', '  pickid: \"2\"  skuNumber: \"010001322\"  batch: \"124\"  qty: \"1\"', 28, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品上架');
INSERT INTO `oper_log` VALUES (299, 10, 'tang', '2019-04-01 23:10:00', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'upperShelf', '  pickid: \"2\"  skuNumber: \"010001322\"  batch: \"124\"  qty: \"3\"', 18, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品上架');
INSERT INTO `oper_log` VALUES (300, 10, 'tang', '2019-04-02 09:06:38', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: \"tang\"  password: \"tang\"', 147, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (301, 10, 'tang', '2019-04-02 09:10:28', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: \"tang\"  password: \"tang\"', 39, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (302, 1, 'admin', '2019-04-02 09:10:36', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: \"admin\"  password: \"123456\"', 16, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (303, 1, 'admin', '2019-04-02 09:17:02', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: \"admin\"  password: \"123456\"', 170, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (304, NULL, NULL, '2019-04-02 09:22:26', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'upperShelf', '  pickid: \"1\"  skuNumber: \"010001322\"  batch: null  qty: \"1\"', 162, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品上架');
INSERT INTO `oper_log` VALUES (305, 1, 'admin', '2019-04-02 09:26:26', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: \"admin\"  password: \"123456\"', 171, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (306, 1, 'admin', '2019-04-02 09:31:44', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: \"admin\"  password: \"123456\"', 170, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (307, 10, 'tang', '2019-04-02 09:33:39', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: \"tang\"  password: \"tang\"', 368, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (308, 10, 'tang', '2019-04-02 09:33:44', 'com.longuto.springbootemplate.controller.LoginController', 'test', '', 1, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '登录测试接口一');
INSERT INTO `oper_log` VALUES (309, 10, 'tang', '2019-04-02 09:33:49', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'upperShelf', '  pickid: \"1\"  skuNumber: \"010001322\"  batch: null  qty: \"1\"', 34, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品上架');
INSERT INTO `oper_log` VALUES (310, 10, 'tang', '2019-04-02 10:04:53', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'upperShelf', '  pickid: \"1\"  skuNumber: \"010001322\"  batch: null  qty: \"1\"', 327, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品上架');
INSERT INTO `oper_log` VALUES (311, 10, 'tang', '2019-04-02 10:04:58', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'upperShelf', '  pickid: \"2\"  skuNumber: \"010001322\"  batch: null  qty: \"1\"', 12, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品上架');
INSERT INTO `oper_log` VALUES (312, 10, 'tang', '2019-04-02 10:05:05', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'upperShelf', '  pickid: \"2\"  skuNumber: \"test\"  batch: null  qty: \"1\"', 12, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品上架');
INSERT INTO `oper_log` VALUES (313, 10, 'tang', '2019-04-02 10:05:10', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'upperShelf', '  pickid: \"2\"  skuNumber: \"test001\"  batch: null  qty: \"1\"', 12, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品上架');
INSERT INTO `oper_log` VALUES (314, 10, 'tang', '2019-04-02 10:05:23', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'upperShelf', '  pickid: \"2\"  skuNumber: \"010001322\"  batch: \"234\"  qty: \"5\"', 45, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品上架');
INSERT INTO `oper_log` VALUES (315, 10, 'tang', '2019-04-02 10:08:31', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'pdaInshelfList', '  queryRequest: \"QueryRequest{pageSize=0, pageNum=0}\"', 152, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', 'pda在位表集合');
INSERT INTO `oper_log` VALUES (316, 1, 'admin', '2019-04-02 10:51:20', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: \"admin\"  password: \"123456\"', 112, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (317, 10, 'tang', '2019-04-02 16:41:36', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: \"tang\"  password: \"tang\"', 158, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (318, 10, 'tang', '2019-04-02 16:42:19', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'downShelf', '  pickid: \"1\"  skuNumber: \"Allenxl\"  batch: null  qty: \"1\"', 26, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品下架');
INSERT INTO `oper_log` VALUES (319, 10, 'tang', '2019-04-02 16:42:27', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'downShelf', '  pickid: \"1\"  skuNumber: \"010001322\"  batch: null  qty: \"1\"', 13, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品下架');
INSERT INTO `oper_log` VALUES (320, 10, 'tang', '2019-04-02 16:42:38', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'pdaInshelfList', '  queryRequest: \"QueryRequest{pageSize=0, pageNum=0}\"', 39, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', 'pda在位表集合');
INSERT INTO `oper_log` VALUES (321, 10, 'tang', '2019-04-02 16:42:59', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'downShelf', '  pickid: \"1\"  skuNumber: \"Allenl\"  batch: null  qty: \"1\"', 32, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品下架');
INSERT INTO `oper_log` VALUES (322, 10, 'tang', '2019-04-02 16:43:11', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'downShelf', '  pickid: \"1\"  skuNumber: \"Allenl\"  batch: null  qty: \"2\"', 19, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品下架');
INSERT INTO `oper_log` VALUES (323, 10, 'tang', '2019-04-02 16:43:23', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'downShelf', '  pickid: \"1\"  skuNumber: \"Allenl\"  batch: null  qty: \"1\"', 31, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品下架');
INSERT INTO `oper_log` VALUES (324, 10, 'tang', '2019-04-02 16:43:49', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'pdaInshelfList', '  queryRequest: \"QueryRequest{pageSize=0, pageNum=0}\"', 6, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', 'pda在位表集合');
INSERT INTO `oper_log` VALUES (325, 10, 'tang', '2019-04-02 16:44:12', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'downShelf', '  pickid: \"2\"  skuNumber: \"Allenl\"  batch: null  qty: \"1\"', 16, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品下架');
INSERT INTO `oper_log` VALUES (326, 10, 'tang', '2019-04-02 16:44:19', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'downShelf', '  pickid: \"3\"  skuNumber: \"Allenl\"  batch: null  qty: \"1\"', 11, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品下架');
INSERT INTO `oper_log` VALUES (327, 10, 'tang', '2019-04-02 16:44:28', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'downShelf', '  pickid: \"3\"  skuNumber: \"Allenxl\"  batch: null  qty: \"1\"', 12, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品下架');
INSERT INTO `oper_log` VALUES (328, 10, 'tang', '2019-04-02 16:44:36', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'downShelf', '  pickid: \"3\"  skuNumber: \"010001322\"  batch: null  qty: \"1\"', 12, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品下架');
INSERT INTO `oper_log` VALUES (329, 10, 'tang', '2019-04-02 16:44:40', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'downShelf', '  pickid: \"3\"  skuNumber: \"010001322\"  batch: null  qty: \"1\"', 10, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品下架');
INSERT INTO `oper_log` VALUES (330, 10, 'tang', '2019-04-02 16:44:51', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'downShelf', '  pickid: \"2\"  skuNumber: \"010001322\"  batch: null  qty: \"1\"', 11, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品下架');
INSERT INTO `oper_log` VALUES (331, 10, 'tang', '2019-04-02 16:44:57', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'downShelf', '  pickid: \"2\"  skuNumber: \"010001322\"  batch: \"567\"  qty: \"1\"', 18, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品下架');
INSERT INTO `oper_log` VALUES (332, 10, 'tang', '2019-04-02 16:45:03', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'downShelf', '  pickid: \"2\"  skuNumber: \"010001322\"  batch: \"123\"  qty: \"1\"', 30, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品下架');
INSERT INTO `oper_log` VALUES (333, 10, 'tang', '2019-04-02 16:55:07', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'downShelf', '  pickid: \"2\"  skuNumber: \"010001322\"  batch: \"123\"  qty: \"1\"', 470, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品下架');
INSERT INTO `oper_log` VALUES (334, 10, 'tang', '2019-04-02 16:55:53', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'downShelf', '  pickid: \"1\"  skuNumber: \"Allenl\"  batch: null  qty: \"1\"', 20, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品下架');
INSERT INTO `oper_log` VALUES (335, 10, 'tang', '2019-04-02 16:58:08', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'downShelf', '  pickid: \"1\"  skuNumber: \"Allenl\"  batch: null  qty: \"1\"', 18, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品下架');
INSERT INTO `oper_log` VALUES (336, 10, 'tang', '2019-04-02 16:58:10', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'downShelf', '  pickid: \"1\"  skuNumber: \"Allenl\"  batch: null  qty: \"1\"', 13, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品下架');
INSERT INTO `oper_log` VALUES (337, 10, 'tang', '2019-04-02 16:58:20', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'downShelf', '  pickid: \"1\"  skuNumber: \"010001322\"  batch: null  qty: \"1\"', 13, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品下架');
INSERT INTO `oper_log` VALUES (338, 10, 'tang', '2019-04-02 16:58:25', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'downShelf', '  pickid: \"2\"  skuNumber: \"010001322\"  batch: null  qty: \"1\"', 11, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品下架');
INSERT INTO `oper_log` VALUES (339, 10, 'tang', '2019-04-02 16:58:36', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'downShelf', '  pickid: \"2\"  skuNumber: \"010001322\"  batch: \"123\"  qty: \"1\"', 18, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品下架');
INSERT INTO `oper_log` VALUES (340, 10, 'tang', '2019-04-02 16:58:41', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'downShelf', '  pickid: \"2\"  skuNumber: \"010001322\"  batch: \"124\"  qty: \"1\"', 36, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品下架');
INSERT INTO `oper_log` VALUES (341, 10, 'tang', '2019-04-02 16:58:52', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'downShelf', '  pickid: \"2\"  skuNumber: \"010001322\"  batch: \"124\"  qty: \"3\"', 29, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品下架');
INSERT INTO `oper_log` VALUES (342, 10, 'tang', '2019-04-02 17:03:03', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'downShelf', '  pickid: \"2\"  skuNumber: \"010001322\"  batch: \"124\"  qty: \"3\"', 413, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品下架');
INSERT INTO `oper_log` VALUES (343, 10, 'tang', '2019-04-02 17:03:30', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'downShelf', '  pickid: \"2\"  skuNumber: \"010001322\"  batch: \"4\"  qty: \"3\"', 18, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品下架');
INSERT INTO `oper_log` VALUES (344, 10, 'tang', '2019-04-02 17:03:52', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'downShelf', '  pickid: \"2\"  skuNumber: \"010001322\"  batch: \"234\"  qty: \"4\"', 35, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品下架');
INSERT INTO `oper_log` VALUES (345, 10, 'tang', '2019-04-02 17:04:12', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'downShelf', '  pickid: \"2\"  skuNumber: \"010001322\"  batch: \"234\"  qty: \"4\"', 20, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品下架');
INSERT INTO `oper_log` VALUES (346, 10, 'tang', '2019-04-02 17:04:16', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'downShelf', '  pickid: \"2\"  skuNumber: \"010001322\"  batch: \"234\"  qty: \"1\"', 37, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品下架');
INSERT INTO `oper_log` VALUES (347, 10, 'tang', '2019-04-02 17:06:43', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'downShelf', '  pickid: \"2\"  skuNumber: \"010001322\"  batch: \"234\"  qty: \"1\"', 453, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品下架');
INSERT INTO `oper_log` VALUES (348, 10, 'tang', '2019-04-02 17:06:47', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'downShelf', '  pickid: \"2\"  skuNumber: \"010001322\"  batch: \"123\"  qty: \"1\"', 19, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品下架');
INSERT INTO `oper_log` VALUES (349, 10, 'tang', '2019-04-02 17:09:15', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'upperShelf', '  pickid: \"1\"  skuNumber: \"Allenl\"  batch: null  qty: \"5\"', 428, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品上架');
INSERT INTO `oper_log` VALUES (350, 10, 'tang', '2019-04-02 17:09:23', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'upperShelf', '  pickid: \"1\"  skuNumber: \"Allenl\"  batch: null  qty: \"5\"', 35, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品上架');
INSERT INTO `oper_log` VALUES (351, 10, 'tang', '2019-04-02 17:09:36', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'upperShelf', '  pickid: \"2\"  skuNumber: \"010001322\"  batch: \"123\"  qty: \"5\"', 27, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品上架');
INSERT INTO `oper_log` VALUES (352, 10, 'tang', '2019-04-02 17:09:49', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'upperShelf', '  pickid: \"2\"  skuNumber: \"010001322\"  batch: \"234\"  qty: \"5\"', 31, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品上架');
INSERT INTO `oper_log` VALUES (353, 10, 'tang', '2019-04-02 17:09:58', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'pdaInshelfList', '  queryRequest: \"QueryRequest{pageSize=0, pageNum=0}\"', 34, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', 'pda在位表集合');
INSERT INTO `oper_log` VALUES (354, 10, 'tang', '2019-04-02 17:10:22', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'downShelf', '  pickid: \"1\"  skuNumber: \"Allenl\"  batch: null  qty: \"1\"', 36, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品下架');
INSERT INTO `oper_log` VALUES (355, 10, 'tang', '2019-04-02 17:10:36', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'downShelf', '  pickid: \"1\"  skuNumber: \"Allenl\"  batch: null  qty: \"10\"', 20, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品下架');
INSERT INTO `oper_log` VALUES (356, 10, 'tang', '2019-04-02 17:10:48', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'downShelf', '  pickid: \"1\"  skuNumber: \"Allenl\"  batch: null  qty: \"8\"', 32, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品下架');
INSERT INTO `oper_log` VALUES (357, 10, 'tang', '2019-04-02 17:10:56', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'downShelf', '  pickid: \"1\"  skuNumber: \"Allenl\"  batch: null  qty: \"1\"', 26, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品下架');
INSERT INTO `oper_log` VALUES (358, 10, 'tang', '2019-04-02 17:14:55', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'upperShelf', '  pickid: \"1\"  skuNumber: \"Allenl\"  batch: \"234\"  qty: \"5\"', 419, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品上架');
INSERT INTO `oper_log` VALUES (359, 10, 'tang', '2019-04-02 17:14:59', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'upperShelf', '  pickid: \"1\"  skuNumber: \"Allenl\"  batch: \"234\"  qty: \"5\"', 33, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品上架');
INSERT INTO `oper_log` VALUES (360, 10, 'tang', '2019-04-02 17:15:15', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'downShelf', '  pickid: \"1\"  skuNumber: \"Allenl\"  batch: null  qty: \"11\"', 22, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品下架');
INSERT INTO `oper_log` VALUES (361, 10, 'tang', '2019-04-02 17:15:20', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'downShelf', '  pickid: \"1\"  skuNumber: \"Allenl\"  batch: null  qty: \"8\"', 25, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品下架');
INSERT INTO `oper_log` VALUES (362, 10, 'tang', '2019-04-02 17:15:26', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'downShelf', '  pickid: \"1\"  skuNumber: \"Allenl\"  batch: null  qty: \"1\"', 36, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品下架');
INSERT INTO `oper_log` VALUES (363, 10, 'tang', '2019-04-02 17:15:28', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'downShelf', '  pickid: \"1\"  skuNumber: \"Allenl\"  batch: null  qty: \"1\"', 25, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品下架');
INSERT INTO `oper_log` VALUES (364, 10, 'tang', '2019-04-02 17:18:37', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'upperShelf', '  pickid: \"1\"  skuNumber: \"Allenl\"  batch: \"234\"  qty: \"5\"', 461, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品上架');
INSERT INTO `oper_log` VALUES (365, 10, 'tang', '2019-04-02 17:18:41', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'upperShelf', '  pickid: \"1\"  skuNumber: \"Allenl\"  batch: \"234\"  qty: \"5\"', 33, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品上架');
INSERT INTO `oper_log` VALUES (366, 10, 'tang', '2019-04-02 17:18:54', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'downShelf', '  pickid: \"1\"  skuNumber: \"Allenl\"  batch: null  qty: \"1\"', 35, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品下架');
INSERT INTO `oper_log` VALUES (367, 10, 'tang', '2019-04-02 17:18:59', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'downShelf', '  pickid: \"1\"  skuNumber: \"Allenl\"  batch: null  qty: \"10\"', 18, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品下架');
INSERT INTO `oper_log` VALUES (368, 10, 'tang', '2019-04-02 17:19:03', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'downShelf', '  pickid: \"1\"  skuNumber: \"Allenl\"  batch: null  qty: \"9\"', 36, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品下架');
INSERT INTO `oper_log` VALUES (369, 10, 'tang', '2019-04-02 17:22:09', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'upperShelf', '  pickid: \"1\"  skuNumber: \"Allenl\"  batch: \"234\"  qty: \"5\"', 480, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品上架');
INSERT INTO `oper_log` VALUES (370, 10, 'tang', '2019-04-02 17:22:11', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'upperShelf', '  pickid: \"1\"  skuNumber: \"Allenl\"  batch: \"234\"  qty: \"5\"', 34, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品上架');
INSERT INTO `oper_log` VALUES (371, 10, 'tang', '2019-04-02 17:22:18', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'downShelf', '  pickid: \"1\"  skuNumber: \"Allenl\"  batch: null  qty: \"1\"', 33, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品下架');
INSERT INTO `oper_log` VALUES (372, 10, 'tang', '2019-04-02 17:22:24', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'downShelf', '  pickid: \"1\"  skuNumber: \"Allenl\"  batch: null  qty: \"7\"', 33, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品下架');
INSERT INTO `oper_log` VALUES (373, 10, 'tang', '2019-04-02 17:22:28', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'downShelf', '  pickid: \"1\"  skuNumber: \"Allenl\"  batch: null  qty: \"3\"', 24, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品下架');
INSERT INTO `oper_log` VALUES (374, 10, 'tang', '2019-04-02 17:22:40', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'downShelf', '  pickid: \"1\"  skuNumber: \"Allenl\"  batch: null  qty: \"2\"', 21, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品下架');
INSERT INTO `oper_log` VALUES (375, 10, 'tang', '2019-04-02 17:25:31', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'upperShelf', '  pickid: \"1\"  skuNumber: \"Allenl\"  batch: \"234\"  qty: \"5\"', 338, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品上架');
INSERT INTO `oper_log` VALUES (376, 10, 'tang', '2019-04-02 17:25:42', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'downShelf', '  pickid: \"1\"  skuNumber: \"Allenl\"  batch: null  qty: \"3\"', 34, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品下架');
INSERT INTO `oper_log` VALUES (377, 10, 'tang', '2019-04-02 17:26:45', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'downShelf', '  pickid: \"1\"  skuNumber: \"Allenl\"  batch: null  qty: \"2\"', 58006, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品下架');
INSERT INTO `oper_log` VALUES (378, 10, 'tang', '2019-04-02 17:27:24', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'upperShelf', '  pickid: \"1\"  skuNumber: \"Allenl\"  batch: \"234\"  qty: \"5\"', 474, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品上架');
INSERT INTO `oper_log` VALUES (379, 10, 'tang', '2019-04-02 17:27:34', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'downShelf', '  pickid: \"1\"  skuNumber: \"Allenl\"  batch: null  qty: \"2\"', 27, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品下架');
INSERT INTO `oper_log` VALUES (380, 10, 'tang', '2019-04-02 17:27:38', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'downShelf', '  pickid: \"1\"  skuNumber: \"Allenl\"  batch: null  qty: \"2\"', 34, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品下架');
INSERT INTO `oper_log` VALUES (381, 10, 'tang', '2019-04-02 17:27:43', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'downShelf', '  pickid: \"1\"  skuNumber: \"Allenl\"  batch: null  qty: \"2\"', 14, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品下架');
INSERT INTO `oper_log` VALUES (382, 10, 'tang', '2019-04-02 17:27:46', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'downShelf', '  pickid: \"1\"  skuNumber: \"Allenl\"  batch: null  qty: \"1\"', 32, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品下架');
INSERT INTO `oper_log` VALUES (383, 10, 'tang', '2019-04-02 17:29:29', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'upperShelf', '  pickid: \"1\"  skuNumber: \"Allenl\"  batch: \"234\"  qty: \"5\"', 465, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品上架');
INSERT INTO `oper_log` VALUES (384, 10, 'tang', '2019-04-02 17:29:36', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'downShelf', '  pickid: \"1\"  skuNumber: \"Allenl\"  batch: null  qty: \"3\"', 31, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品下架');
INSERT INTO `oper_log` VALUES (385, 10, 'tang', '2019-04-02 17:29:40', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'downShelf', '  pickid: \"1\"  skuNumber: \"Allenl\"  batch: null  qty: \"2\"', 34, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品下架');
INSERT INTO `oper_log` VALUES (386, 10, 'tang', '2019-04-02 17:30:09', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'downShelf', '  pickid: \"2\"  skuNumber: \"Allenl\"  batch: null  qty: \"2\"', 10, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品下架');
INSERT INTO `oper_log` VALUES (387, 10, 'tang', '2019-04-02 17:30:15', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'downShelf', '  pickid: \"2\"  skuNumber: \"010001322\"  batch: null  qty: \"2\"', 12, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品下架');
INSERT INTO `oper_log` VALUES (388, 10, 'tang', '2019-04-02 17:30:18', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'downShelf', '  pickid: \"2\"  skuNumber: \"010001322\"  batch: \"123\"  qty: \"2\"', 34, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品下架');
INSERT INTO `oper_log` VALUES (389, 10, 'tang', '2019-04-02 17:34:15', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'downShelf', '  pickid: \"2\"  skuNumber: \"010001322\"  batch: \"123\"  qty: \"2\"', 458, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品下架');
INSERT INTO `oper_log` VALUES (390, 10, 'tang', '2019-04-02 17:34:25', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'downShelf', '  pickid: \"2\"  skuNumber: \"010001322\"  batch: \"123\"  qty: \"1\"', 29, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品下架');
INSERT INTO `oper_log` VALUES (391, 10, 'tang', '2019-04-02 17:34:35', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'downShelf', '  pickid: \"2\"  skuNumber: \"010001322\"  batch: \"123\"  qty: \"1\"', 20, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品下架');
INSERT INTO `oper_log` VALUES (392, 10, 'tang', '2019-04-02 17:34:49', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'downShelf', '  pickid: \"2\"  skuNumber: \"010001322\"  batch: \"234\"  qty: \"1\"', 35, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品下架');
INSERT INTO `oper_log` VALUES (393, 10, 'tang', '2019-04-02 17:34:55', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'downShelf', '  pickid: \"2\"  skuNumber: \"010001322\"  batch: \"234\"  qty: \"5\"', 24, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品下架');
INSERT INTO `oper_log` VALUES (394, 10, 'tang', '2019-04-02 17:34:59', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'downShelf', '  pickid: \"2\"  skuNumber: \"010001322\"  batch: \"234\"  qty: \"4\"', 23, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品下架');
INSERT INTO `oper_log` VALUES (395, 1, 'admin', '2019-04-04 09:28:47', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: \"admin\"  password: \"123456\"', 567, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (396, 1, 'admin', '2019-04-04 09:29:53', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'pdaInshelfList', '  queryRequest: \"QueryRequest{pageSize=0, pageNum=0}\"', 82, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', 'pda在位表集合');
INSERT INTO `oper_log` VALUES (397, 1, 'admin', '2019-04-04 09:34:11', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'upperShelf', '  pickid: \"1\"  skuNumber: \"Allenl\"  batch: null  qty: \"5\"', 83, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品上架');
INSERT INTO `oper_log` VALUES (398, 1, 'admin', '2019-04-04 09:34:15', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'upperShelf', '  pickid: \"1\"  skuNumber: \"Allenl\"  batch: null  qty: \"5\"', 56, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品上架');
INSERT INTO `oper_log` VALUES (399, 1, 'admin', '2019-04-04 09:34:18', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'upperShelf', '  pickid: \"1\"  skuNumber: \"Allenl\"  batch: null  qty: \"5\"', 38, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品上架');
INSERT INTO `oper_log` VALUES (400, 1, 'admin', '2019-04-04 09:34:29', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'upperShelf', '  pickid: \"1\"  skuNumber: \"Allenxl\"  batch: null  qty: \"5\"', 13, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品上架');
INSERT INTO `oper_log` VALUES (401, 1, 'admin', '2019-04-04 09:34:41', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'upperShelf', '  pickid: \"2\"  skuNumber: \"Allenxl\"  batch: null  qty: \"5\"', 34, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品上架');
INSERT INTO `oper_log` VALUES (402, 1, 'admin', '2019-04-04 09:34:53', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'upperShelf', '  pickid: \"2\"  skuNumber: \"Allenxl\"  batch: null  qty: \"5\"', 35, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品上架');
INSERT INTO `oper_log` VALUES (403, 1, 'admin', '2019-04-04 09:35:12', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'upperShelf', '  pickid: \"2\"  skuNumber: \"Allenl\"  batch: null  qty: \"5\"', 21, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品上架');
INSERT INTO `oper_log` VALUES (404, 1, 'admin', '2019-04-04 09:35:21', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'upperShelf', '  pickid: \"3\"  skuNumber: \"010001322\"  batch: null  qty: \"5\"', 15, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品上架');
INSERT INTO `oper_log` VALUES (405, 1, 'admin', '2019-04-04 09:35:36', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'upperShelf', '  pickid: \"3\"  skuNumber: \"010001322\"  batch: \"123\"  qty: \"5\"', 38, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品上架');
INSERT INTO `oper_log` VALUES (406, 1, 'admin', '2019-04-04 09:35:43', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'upperShelf', '  pickid: \"3\"  skuNumber: \"010001322\"  batch: \"234\"  qty: \"5\"', 30, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品上架');
INSERT INTO `oper_log` VALUES (407, 1, 'admin', '2019-04-04 09:35:54', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'upperShelf', '  pickid: \"3\"  skuNumber: \"010001322\"  batch: \"124\"  qty: \"5\"', 34, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品上架');
INSERT INTO `oper_log` VALUES (408, 1, 'admin', '2019-04-04 09:35:58', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'upperShelf', '  pickid: \"3\"  skuNumber: \"010001322\"  batch: \"124\"  qty: \"5\"', 31, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品上架');
INSERT INTO `oper_log` VALUES (409, 10, 'tang', '2019-04-04 15:09:37', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: \"tang\"  password: \"tang\"', 154, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (410, 10, 'tang', '2019-04-04 15:09:43', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'pdaInshelfList', '  queryRequest: \"QueryRequest{pageSize=0, pageNum=0}\"', 43, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', 'pda在位表集合');
INSERT INTO `oper_log` VALUES (411, 10, 'tang', '2019-04-04 15:10:23', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'upperShelf', '  pickid: \"4\"  skuNumber: \"Allenl\"  batch: null  qty: \"5\"', 41, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品上架');
INSERT INTO `oper_log` VALUES (412, 10, 'tang', '2019-04-04 15:13:05', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'moveShelf', '  pickid: \"4\"  skuNumber: \"Allenl\"  batch: null  qty: \"2\"  pickoutId: \"1\"', 206, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品移库');
INSERT INTO `oper_log` VALUES (413, 10, 'tang', '2019-04-04 15:15:00', 'com.longuto.springbootemplate.controller.PdaInShelfController', 'moveShelf', '  pickid: \"4\"  skuNumber: \"Allenl\"  batch: null  qty: \"2\"  pickoutId: \"1\"', 398, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '商品移库');
INSERT INTO `oper_log` VALUES (414, NULL, NULL, '2019-04-14 21:42:06', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: \"admin\"  password: \"123456\"', 241511, '192.168.100.109', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (415, NULL, NULL, '2019-04-15 01:06:29', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: \"admin\"  password: \"123456\"', 128185, '192.168.100.109', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (416, NULL, NULL, '2019-04-15 01:14:08', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: \"admin\"  password: \"123456\"', 128288, '192.168.100.109', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (417, NULL, NULL, '2019-04-15 01:16:15', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: \"admin\"  password: \"123456\"', 129739, '192.168.100.109', '内网IP|0|0|内网IP|内网IP', '用户登录');
INSERT INTO `oper_log` VALUES (418, NULL, NULL, '2019-04-15 01:21:29', 'com.longuto.springbootemplate.controller.LoginController', 'login', '  username: \"admin\"  password: \"123456\"', 127332, '192.168.100.109', '内网IP|0|0|内网IP|内网IP', '用户登录');

-- ----------------------------
-- Table structure for pda_in_shelf
-- ----------------------------
DROP TABLE IF EXISTS `pda_in_shelf`;
CREATE TABLE `pda_in_shelf`  (
  `pickid` int(11) UNSIGNED NOT NULL COMMENT '货位主键',
  `skuid` int(11) UNSIGNED NOT NULL COMMENT 'sku主键',
  `skubatch` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '批次号',
  `qty` int(18) NULL DEFAULT 0,
  `editor` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `edittime` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`pickid`, `skuid`, `skubatch`) USING BTREE,
  INDEX `skuid`(`skuid`) USING BTREE,
  CONSTRAINT `pda_in_shelf_ibfk_1` FOREIGN KEY (`pickid`) REFERENCES `pub_pick` (`pid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `pda_in_shelf_ibfk_2` FOREIGN KEY (`skuid`) REFERENCES `pub_sku` (`sid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of pda_in_shelf
-- ----------------------------
INSERT INTO `pda_in_shelf` VALUES (1, 1, '', 11, '龙骨头', '2019-04-04 15:15:00');
INSERT INTO `pda_in_shelf` VALUES (2, 2, '', 10, '管理员', '2019-04-04 09:34:53');
INSERT INTO `pda_in_shelf` VALUES (3, 3, '123', 5, '管理员', '2019-04-04 09:35:36');
INSERT INTO `pda_in_shelf` VALUES (3, 3, '124', 10, '管理员', '2019-04-04 09:35:58');
INSERT INTO `pda_in_shelf` VALUES (3, 3, '234', 5, '管理员', '2019-04-04 09:35:43');
INSERT INTO `pda_in_shelf` VALUES (4, 1, '', 9, '龙骨头', '2019-04-04 15:15:00');

-- ----------------------------
-- Table structure for pub_pick
-- ----------------------------
DROP TABLE IF EXISTS `pub_pick`;
CREATE TABLE `pub_pick`  (
  `pid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `number` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '货位名称',
  `status` tinyint(4) NULL DEFAULT 1 COMMENT '状态：0禁用，1启用',
  `skuid` int(11) NULL DEFAULT NULL COMMENT 'sku外键',
  `stockid` int(11) NULL DEFAULT NULL COMMENT '仓库外键',
  `totalqty` int(11) NULL DEFAULT NULL COMMENT '总容量',
  `usedqty` int(11) NULL DEFAULT NULL COMMENT '已用容量',
  PRIMARY KEY (`pid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of pub_pick
-- ----------------------------
INSERT INTO `pub_pick` VALUES (1, 'A01-01-1', 1, 1, 1, 100, 11);
INSERT INTO `pub_pick` VALUES (2, 'A01-01-2', 1, 2, 1, 0, 10);
INSERT INTO `pub_pick` VALUES (3, 'A02-01-1', 1, 3, 2, 100, 20);
INSERT INTO `pub_pick` VALUES (4, 'A02-01-2', 1, 1, 2, 150, 5);
INSERT INTO `pub_pick` VALUES (5, 'A03-01-1', 1, NULL, 3, 150, 0);
INSERT INTO `pub_pick` VALUES (6, 'A03-01-2', 1, NULL, 3, 99, 0);

-- ----------------------------
-- Table structure for pub_sku
-- ----------------------------
DROP TABLE IF EXISTS `pub_sku`;
CREATE TABLE `pub_sku`  (
  `sid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `number` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` tinyint(4) NULL DEFAULT 1 COMMENT '状态：禁用是0，启用是1',
  `type` tinyint(4) NULL DEFAULT 0 COMMENT '类型：0是无批次号，1是启用批次号',
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品说明',
  PRIMARY KEY (`sid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of pub_sku
-- ----------------------------
INSERT INTO `pub_sku` VALUES (1, 'allenl', 'allenl物料', 1, 0, NULL);
INSERT INTO `pub_sku` VALUES (2, 'Allenxl', 'Allenxl物料', 1, 0, NULL);
INSERT INTO `pub_sku` VALUES (3, '010001322', '批次测试', 1, 1, NULL);
INSERT INTO `pub_sku` VALUES (4, 'test001', 'test测试批次', 1, 1, NULL);
INSERT INTO `pub_sku` VALUES (5, 'apple', '苹果', 1, 0, NULL);

-- ----------------------------
-- Table structure for pub_stock
-- ----------------------------
DROP TABLE IF EXISTS `pub_stock`;
CREATE TABLE `pub_stock`  (
  `sid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '仓库名称',
  `number` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '仓库编码（仓库别名）',
  `type` tinyint(4) NULL DEFAULT 0 COMMENT '仓库类型：0单仓，1启用货位',
  `status` tinyint(4) NULL DEFAULT 0 COMMENT '状态：0是禁用，1是启用',
  `createtime` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `edittime` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `editor` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`sid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of pub_stock
-- ----------------------------
INSERT INTO `pub_stock` VALUES (1, 'king单仓管理', 'king', 0, 1, '2019-03-31 17:44:48', NULL, '管理员');
INSERT INTO `pub_stock` VALUES (2, '合肥鱼竿单仓', 'stock001', 0, 1, '2019-03-31 17:47:07', NULL, '管理员');
INSERT INTO `pub_stock` VALUES (3, '老汤板鸭仓位管理仓库', 'stock002', 1, 1, '2019-03-31 17:48:21', NULL, '龙骨头');
INSERT INTO `pub_stock` VALUES (4, '单仓测试0002', 'stock0002', 0, 1, '2019-04-01 10:43:28', NULL, '管理员');

-- ----------------------------
-- Table structure for sys_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_permission`;
CREATE TABLE `sys_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `available` bit(1) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `parent_id` bigint(20) NULL DEFAULT NULL,
  `parent_ids` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `resource_type` enum('menu','button') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_permission
-- ----------------------------
INSERT INTO `sys_permission` VALUES (1, b'0', '用户管理', 0, '0/', 'userInfo:view', 'menu', 'userInfo/userList');
INSERT INTO `sys_permission` VALUES (2, b'0', '用户添加', 1, '0/1', 'userInfo:add', 'button', 'userInfo/userAdd');
INSERT INTO `sys_permission` VALUES (3, b'0', '用户删除', 1, '0/1', 'userInfo:del', 'button', 'userInfo/userDel');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `available` bit(1) NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, b'0', '管理员', 'admin');
INSERT INTO `sys_role` VALUES (2, b'0', 'VIP会员', 'vip');
INSERT INTO `sys_role` VALUES (3, b'1', 'test', 'test');

-- ----------------------------
-- Table structure for sys_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_permission`;
CREATE TABLE `sys_role_permission`  (
  `permission_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  INDEX `FK9q28ewrhntqeipl1t04kh1be7`(`role_id`) USING BTREE,
  INDEX `FKomxrs8a388bknvhjokh440waq`(`permission_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_role_permission
-- ----------------------------
INSERT INTO `sys_role_permission` VALUES (1, 1);
INSERT INTO `sys_role_permission` VALUES (2, 1);
INSERT INTO `sys_role_permission` VALUES (3, 2);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `role_id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`role_id`, `uid`) USING BTREE,
  INDEX `FKgkmyslkrfeyn9ukmolvek8b8f`(`uid`) USING BTREE,
  INDEX `FKhh52n8vd4ny9ff4x9fb8v65qx`(`role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 10);
INSERT INTO `sys_user_role` VALUES (2, 11);
INSERT INTO `sys_user_role` VALUES (1, 12);
INSERT INTO `sys_user_role` VALUES (3, 13);
INSERT INTO `sys_user_role` VALUES (3, 14);
INSERT INTO `sys_user_role` VALUES (1, 15);
INSERT INTO `sys_user_role` VALUES (3, 16);
INSERT INTO `sys_user_role` VALUES (3, 17);
INSERT INTO `sys_user_role` VALUES (2, 18);

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info`  (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `salt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `state` tinyint(4) NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES (1, '管理员', 'd3c59d25033dbf980d29554025c23a75', '8d78869f470951332959580424d4bf4f', 1, 'admin');
INSERT INTO `user_info` VALUES (10, '龙骨头', '8b10b75a95685ec2bedaed72c75ed094', NULL, 1, 'tang');
INSERT INTO `user_info` VALUES (11, '周燕', '385bf65b8d39fc918b7103e1dd8d948f', NULL, 1, 'zhou');
INSERT INTO `user_info` VALUES (12, '汤林溪', '89a2dd4d5abfe141f6d606e37dbb6952', NULL, 1, 'linxi');
INSERT INTO `user_info` VALUES (17, '呵呵', 'cf6b4266f3af6939e410baea17bc9353', NULL, 1, '3');
INSERT INTO `user_info` VALUES (18, '2', '56c9af8201fdca98f558baaf4cd5658a', NULL, 1, '2');

SET FOREIGN_KEY_CHECKS = 1;
