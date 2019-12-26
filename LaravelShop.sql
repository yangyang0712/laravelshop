/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50719
 Source Host           : localhost:3306
 Source Schema         : shop

 Target Server Type    : MySQL
 Target Server Version : 50719
 File Encoding         : 65001

 Date: 20/02/2019 18:09:50
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `permission` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO `admin_menu` VALUES (1, 0, 1, '首页', 'fa-bar-chart', '/', NULL, NULL, '2019-02-14 08:05:00');
INSERT INTO `admin_menu` VALUES (2, 0, 6, '系统管理', 'fa-tasks', NULL, NULL, NULL, '2019-02-19 09:18:40');
INSERT INTO `admin_menu` VALUES (3, 2, 7, '管理员', 'fa-users', 'auth/users', NULL, NULL, '2019-02-19 09:18:40');
INSERT INTO `admin_menu` VALUES (4, 2, 8, '角色', 'fa-user', 'auth/roles', NULL, NULL, '2019-02-19 09:18:40');
INSERT INTO `admin_menu` VALUES (5, 2, 9, '权限', 'fa-ban', 'auth/permissions', NULL, NULL, '2019-02-19 09:18:40');
INSERT INTO `admin_menu` VALUES (6, 2, 10, '菜单', 'fa-bars', 'auth/menu', NULL, NULL, '2019-02-19 09:18:40');
INSERT INTO `admin_menu` VALUES (7, 2, 11, '操作日志', 'fa-history', 'auth/logs', NULL, NULL, '2019-02-19 09:18:40');
INSERT INTO `admin_menu` VALUES (8, 0, 2, '用户管理', 'fa-users', '/users', NULL, '2019-02-14 08:17:54', '2019-02-14 08:18:51');
INSERT INTO `admin_menu` VALUES (9, 0, 3, '商品管理', 'fa-cubes', '/products', NULL, '2019-02-14 08:45:40', '2019-02-14 08:45:51');
INSERT INTO `admin_menu` VALUES (10, 0, 5, '订单管理', 'fa-rmb', '/order', NULL, '2019-02-18 07:26:32', '2019-02-19 09:18:40');
INSERT INTO `admin_menu` VALUES (11, 0, 4, '优惠卷管理', 'fa-tags', '/coupon_codes', NULL, '2019-02-19 09:18:08', '2019-02-19 09:19:21');

-- ----------------------------
-- Table structure for admin_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `admin_operation_log`;
CREATE TABLE `admin_operation_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `admin_operation_log_user_id_index`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 602 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_operation_log
-- ----------------------------
INSERT INTO `admin_operation_log` VALUES (1, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-02-14 08:02:29', '2019-02-14 08:02:29');
INSERT INTO `admin_operation_log` VALUES (2, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-14 08:02:53', '2019-02-14 08:02:53');
INSERT INTO `admin_operation_log` VALUES (3, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-02-14 08:03:16', '2019-02-14 08:03:16');
INSERT INTO `admin_operation_log` VALUES (4, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-02-14 08:03:40', '2019-02-14 08:03:40');
INSERT INTO `admin_operation_log` VALUES (5, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-14 08:03:50', '2019-02-14 08:03:50');
INSERT INTO `admin_operation_log` VALUES (6, 1, 'admin/auth/menu/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-14 08:04:00', '2019-02-14 08:04:00');
INSERT INTO `admin_operation_log` VALUES (7, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-14 08:04:32', '2019-02-14 08:04:32');
INSERT INTO `admin_operation_log` VALUES (8, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-14 08:04:41', '2019-02-14 08:04:41');
INSERT INTO `admin_operation_log` VALUES (9, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"XZImg2kMiOFcQdyzoUCUsuXORkcFFCIf0YGzrmDy\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2019-02-14 08:04:43', '2019-02-14 08:04:43');
INSERT INTO `admin_operation_log` VALUES (10, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-14 08:04:43', '2019-02-14 08:04:43');
INSERT INTO `admin_operation_log` VALUES (11, 1, 'admin/auth/menu/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-14 08:04:47', '2019-02-14 08:04:47');
INSERT INTO `admin_operation_log` VALUES (12, 1, 'admin/auth/menu/1', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u9996\\u9875\",\"icon\":\"fa-bar-chart\",\"uri\":\"\\/\",\"roles\":[null],\"permission\":null,\"_token\":\"XZImg2kMiOFcQdyzoUCUsuXORkcFFCIf0YGzrmDy\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shop.test\\/admin\\/auth\\/menu\"}', '2019-02-14 08:05:00', '2019-02-14 08:05:00');
INSERT INTO `admin_operation_log` VALUES (13, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-02-14 08:05:00', '2019-02-14 08:05:00');
INSERT INTO `admin_operation_log` VALUES (14, 1, 'admin/auth/menu/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-14 08:05:14', '2019-02-14 08:05:14');
INSERT INTO `admin_operation_log` VALUES (15, 1, 'admin/auth/menu/2', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u7cfb\\u7edf\\u7ba1\\u7406\",\"icon\":\"fa-tasks\",\"uri\":null,\"roles\":[\"1\",null],\"permission\":null,\"_token\":\"XZImg2kMiOFcQdyzoUCUsuXORkcFFCIf0YGzrmDy\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shop.test\\/admin\\/auth\\/menu\"}', '2019-02-14 08:05:22', '2019-02-14 08:05:22');
INSERT INTO `admin_operation_log` VALUES (16, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-02-14 08:05:22', '2019-02-14 08:05:22');
INSERT INTO `admin_operation_log` VALUES (17, 1, 'admin/auth/menu/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-14 08:05:30', '2019-02-14 08:05:30');
INSERT INTO `admin_operation_log` VALUES (18, 1, 'admin/auth/menu/3', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u7ba1\\u7406\\u5458\",\"icon\":\"fa-users\",\"uri\":\"auth\\/users\",\"roles\":[null],\"permission\":null,\"_token\":\"XZImg2kMiOFcQdyzoUCUsuXORkcFFCIf0YGzrmDy\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shop.test\\/admin\\/auth\\/menu\"}', '2019-02-14 08:05:34', '2019-02-14 08:05:34');
INSERT INTO `admin_operation_log` VALUES (19, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-02-14 08:05:34', '2019-02-14 08:05:34');
INSERT INTO `admin_operation_log` VALUES (20, 1, 'admin/auth/menu/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-14 08:05:41', '2019-02-14 08:05:41');
INSERT INTO `admin_operation_log` VALUES (21, 1, 'admin/auth/menu/4', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u89d2\\u8272\",\"icon\":\"fa-user\",\"uri\":\"auth\\/roles\",\"roles\":[null],\"permission\":null,\"_token\":\"XZImg2kMiOFcQdyzoUCUsuXORkcFFCIf0YGzrmDy\",\"after-save\":\"1\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shop.test\\/admin\\/auth\\/menu\"}', '2019-02-14 08:05:48', '2019-02-14 08:05:48');
INSERT INTO `admin_operation_log` VALUES (22, 1, 'admin/auth/menu/4/edit', 'GET', '127.0.0.1', '[]', '2019-02-14 08:05:48', '2019-02-14 08:05:48');
INSERT INTO `admin_operation_log` VALUES (23, 1, 'admin/auth/menu/4', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u89d2\\u8272\",\"icon\":\"fa-user\",\"uri\":\"auth\\/roles\",\"roles\":[null],\"permission\":null,\"_token\":\"XZImg2kMiOFcQdyzoUCUsuXORkcFFCIf0YGzrmDy\",\"_method\":\"PUT\"}', '2019-02-14 08:05:50', '2019-02-14 08:05:50');
INSERT INTO `admin_operation_log` VALUES (24, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-02-14 08:05:50', '2019-02-14 08:05:50');
INSERT INTO `admin_operation_log` VALUES (25, 1, 'admin/auth/menu/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-14 08:06:00', '2019-02-14 08:06:00');
INSERT INTO `admin_operation_log` VALUES (26, 1, 'admin/auth/menu/5', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u6743\\u9650\",\"icon\":\"fa-ban\",\"uri\":\"auth\\/permissions\",\"roles\":[null],\"permission\":null,\"_token\":\"XZImg2kMiOFcQdyzoUCUsuXORkcFFCIf0YGzrmDy\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shop.test\\/admin\\/auth\\/menu\"}', '2019-02-14 08:06:03', '2019-02-14 08:06:03');
INSERT INTO `admin_operation_log` VALUES (27, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-02-14 08:06:03', '2019-02-14 08:06:03');
INSERT INTO `admin_operation_log` VALUES (28, 1, 'admin/auth/menu/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-14 08:06:11', '2019-02-14 08:06:11');
INSERT INTO `admin_operation_log` VALUES (29, 1, 'admin/auth/menu/6', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u83dc\\u5355\",\"icon\":\"fa-bars\",\"uri\":\"auth\\/menu\",\"roles\":[null],\"permission\":null,\"_token\":\"XZImg2kMiOFcQdyzoUCUsuXORkcFFCIf0YGzrmDy\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shop.test\\/admin\\/auth\\/menu\"}', '2019-02-14 08:06:14', '2019-02-14 08:06:14');
INSERT INTO `admin_operation_log` VALUES (30, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-02-14 08:06:15', '2019-02-14 08:06:15');
INSERT INTO `admin_operation_log` VALUES (31, 1, 'admin/auth/menu/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-14 08:06:24', '2019-02-14 08:06:24');
INSERT INTO `admin_operation_log` VALUES (32, 1, 'admin/auth/menu/7', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u64cd\\u4f5c\\u65e5\\u5fd7\",\"icon\":\"fa-history\",\"uri\":\"auth\\/logs\",\"roles\":[null],\"permission\":null,\"_token\":\"XZImg2kMiOFcQdyzoUCUsuXORkcFFCIf0YGzrmDy\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shop.test\\/admin\\/auth\\/menu\"}', '2019-02-14 08:06:27', '2019-02-14 08:06:27');
INSERT INTO `admin_operation_log` VALUES (33, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-02-14 08:06:27', '2019-02-14 08:06:27');
INSERT INTO `admin_operation_log` VALUES (34, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-02-14 08:16:45', '2019-02-14 08:16:45');
INSERT INTO `admin_operation_log` VALUES (35, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-14 08:17:01', '2019-02-14 08:17:01');
INSERT INTO `admin_operation_log` VALUES (36, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"fa-users\",\"uri\":\"\\/users\",\"roles\":[null],\"permission\":null,\"_token\":\"XZImg2kMiOFcQdyzoUCUsuXORkcFFCIf0YGzrmDy\"}', '2019-02-14 08:17:54', '2019-02-14 08:17:54');
INSERT INTO `admin_operation_log` VALUES (37, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-02-14 08:17:54', '2019-02-14 08:17:54');
INSERT INTO `admin_operation_log` VALUES (38, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-02-14 08:18:02', '2019-02-14 08:18:02');
INSERT INTO `admin_operation_log` VALUES (39, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-02-14 08:18:13', '2019-02-14 08:18:13');
INSERT INTO `admin_operation_log` VALUES (40, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-14 08:18:19', '2019-02-14 08:18:19');
INSERT INTO `admin_operation_log` VALUES (41, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-14 08:18:44', '2019-02-14 08:18:44');
INSERT INTO `admin_operation_log` VALUES (42, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"XZImg2kMiOFcQdyzoUCUsuXORkcFFCIf0YGzrmDy\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":8},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2019-02-14 08:18:51', '2019-02-14 08:18:51');
INSERT INTO `admin_operation_log` VALUES (43, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-14 08:18:51', '2019-02-14 08:18:51');
INSERT INTO `admin_operation_log` VALUES (44, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-02-14 08:18:52', '2019-02-14 08:18:52');
INSERT INTO `admin_operation_log` VALUES (45, 1, 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-14 08:19:00', '2019-02-14 08:19:00');
INSERT INTO `admin_operation_log` VALUES (46, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-14 08:20:37', '2019-02-14 08:20:37');
INSERT INTO `admin_operation_log` VALUES (47, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-14 08:20:43', '2019-02-14 08:20:43');
INSERT INTO `admin_operation_log` VALUES (48, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-14 08:20:50', '2019-02-14 08:20:50');
INSERT INTO `admin_operation_log` VALUES (49, 1, 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-14 08:20:55', '2019-02-14 08:20:55');
INSERT INTO `admin_operation_log` VALUES (50, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-14 08:21:44', '2019-02-14 08:21:44');
INSERT INTO `admin_operation_log` VALUES (51, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-14 08:22:43', '2019-02-14 08:22:43');
INSERT INTO `admin_operation_log` VALUES (52, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-14 08:22:44', '2019-02-14 08:22:44');
INSERT INTO `admin_operation_log` VALUES (53, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-14 08:22:49', '2019-02-14 08:22:49');
INSERT INTO `admin_operation_log` VALUES (54, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"user\",\"name\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"http_method\":[null],\"http_path\":\"\\/user*\",\"_token\":\"XZImg2kMiOFcQdyzoUCUsuXORkcFFCIf0YGzrmDy\",\"_previous_\":\"http:\\/\\/shop.test\\/admin\\/auth\\/permissions\"}', '2019-02-14 08:23:53', '2019-02-14 08:23:53');
INSERT INTO `admin_operation_log` VALUES (55, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-02-14 08:23:53', '2019-02-14 08:23:53');
INSERT INTO `admin_operation_log` VALUES (56, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-14 08:24:23', '2019-02-14 08:24:23');
INSERT INTO `admin_operation_log` VALUES (57, 1, 'admin/auth/roles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-14 08:24:28', '2019-02-14 08:24:28');
INSERT INTO `admin_operation_log` VALUES (58, 1, 'admin/auth/roles', 'POST', '127.0.0.1', '{\"slug\":\"operator\",\"name\":\"\\u8fd0\\u8425\",\"permissions\":[\"6\",null],\"_token\":\"XZImg2kMiOFcQdyzoUCUsuXORkcFFCIf0YGzrmDy\",\"_previous_\":\"http:\\/\\/shop.test\\/admin\\/auth\\/roles\"}', '2019-02-14 08:25:50', '2019-02-14 08:25:50');
INSERT INTO `admin_operation_log` VALUES (59, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2019-02-14 08:25:50', '2019-02-14 08:25:50');
INSERT INTO `admin_operation_log` VALUES (60, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-14 08:26:02', '2019-02-14 08:26:02');
INSERT INTO `admin_operation_log` VALUES (61, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-14 08:26:05', '2019-02-14 08:26:05');
INSERT INTO `admin_operation_log` VALUES (62, 1, 'admin/auth/users', 'POST', '127.0.0.1', '{\"username\":\"operator\",\"name\":\"\\u8fd0\\u8425\",\"password\":\"123456\",\"password_confirmation\":\"123456\",\"roles\":[\"2\",null],\"permissions\":[null],\"_token\":\"XZImg2kMiOFcQdyzoUCUsuXORkcFFCIf0YGzrmDy\",\"_previous_\":\"http:\\/\\/shop.test\\/admin\\/auth\\/users\"}', '2019-02-14 08:27:06', '2019-02-14 08:27:06');
INSERT INTO `admin_operation_log` VALUES (63, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-02-14 08:27:06', '2019-02-14 08:27:06');
INSERT INTO `admin_operation_log` VALUES (64, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-14 08:27:22', '2019-02-14 08:27:22');
INSERT INTO `admin_operation_log` VALUES (65, 2, 'admin', 'GET', '127.0.0.1', '[]', '2019-02-14 08:27:28', '2019-02-14 08:27:28');
INSERT INTO `admin_operation_log` VALUES (66, 2, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-14 08:27:30', '2019-02-14 08:27:30');
INSERT INTO `admin_operation_log` VALUES (67, 2, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-14 08:27:36', '2019-02-14 08:27:36');
INSERT INTO `admin_operation_log` VALUES (68, 2, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-14 08:28:02', '2019-02-14 08:28:02');
INSERT INTO `admin_operation_log` VALUES (69, 2, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-14 08:28:06', '2019-02-14 08:28:06');
INSERT INTO `admin_operation_log` VALUES (70, 2, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2019-02-14 08:28:08', '2019-02-14 08:28:08');
INSERT INTO `admin_operation_log` VALUES (71, 2, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2019-02-14 08:28:08', '2019-02-14 08:28:08');
INSERT INTO `admin_operation_log` VALUES (72, 2, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-14 08:28:11', '2019-02-14 08:28:11');
INSERT INTO `admin_operation_log` VALUES (73, 2, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-14 08:28:13', '2019-02-14 08:28:13');
INSERT INTO `admin_operation_log` VALUES (74, 2, 'admin', 'GET', '127.0.0.1', '[]', '2019-02-14 08:28:15', '2019-02-14 08:28:15');
INSERT INTO `admin_operation_log` VALUES (75, 2, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-14 08:28:24', '2019-02-14 08:28:24');
INSERT INTO `admin_operation_log` VALUES (76, 2, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2019-02-14 08:28:26', '2019-02-14 08:28:26');
INSERT INTO `admin_operation_log` VALUES (77, 2, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-14 08:28:27', '2019-02-14 08:28:27');
INSERT INTO `admin_operation_log` VALUES (78, 2, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-14 08:28:28', '2019-02-14 08:28:28');
INSERT INTO `admin_operation_log` VALUES (79, 2, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-14 08:28:29', '2019-02-14 08:28:29');
INSERT INTO `admin_operation_log` VALUES (80, 2, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-14 08:28:36', '2019-02-14 08:28:36');
INSERT INTO `admin_operation_log` VALUES (81, 2, 'admin', 'GET', '127.0.0.1', '[]', '2019-02-14 08:28:42', '2019-02-14 08:28:42');
INSERT INTO `admin_operation_log` VALUES (82, 2, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-14 08:28:51', '2019-02-14 08:28:51');
INSERT INTO `admin_operation_log` VALUES (83, 2, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-14 08:28:56', '2019-02-14 08:28:56');
INSERT INTO `admin_operation_log` VALUES (84, 2, 'admin', 'GET', '127.0.0.1', '[]', '2019-02-14 08:32:43', '2019-02-14 08:32:43');
INSERT INTO `admin_operation_log` VALUES (85, 2, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-14 08:32:48', '2019-02-14 08:32:48');
INSERT INTO `admin_operation_log` VALUES (86, 2, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-14 08:32:50', '2019-02-14 08:32:50');
INSERT INTO `admin_operation_log` VALUES (87, 2, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-14 08:32:55', '2019-02-14 08:32:55');
INSERT INTO `admin_operation_log` VALUES (88, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-02-14 08:33:31', '2019-02-14 08:33:31');
INSERT INTO `admin_operation_log` VALUES (89, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-14 08:33:37', '2019-02-14 08:33:37');
INSERT INTO `admin_operation_log` VALUES (90, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-14 08:33:40', '2019-02-14 08:33:40');
INSERT INTO `admin_operation_log` VALUES (91, 1, 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-14 08:33:43', '2019-02-14 08:33:43');
INSERT INTO `admin_operation_log` VALUES (92, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-14 08:33:51', '2019-02-14 08:33:51');
INSERT INTO `admin_operation_log` VALUES (93, 1, 'admin/auth/users/2', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"sb7CqTMQXo3xsgywe8Ixi1sepnpp6eu9AOreECDt\"}', '2019-02-14 08:33:54', '2019-02-14 08:33:54');
INSERT INTO `admin_operation_log` VALUES (94, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-14 08:33:54', '2019-02-14 08:33:54');
INSERT INTO `admin_operation_log` VALUES (95, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-14 08:44:49', '2019-02-14 08:44:49');
INSERT INTO `admin_operation_log` VALUES (96, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u5546\\u54c1\\u7ba1\\u7406\",\"icon\":\"fa-cubes\",\"uri\":\"\\/products\",\"roles\":[null],\"permission\":null,\"_token\":\"sb7CqTMQXo3xsgywe8Ixi1sepnpp6eu9AOreECDt\"}', '2019-02-14 08:45:40', '2019-02-14 08:45:40');
INSERT INTO `admin_operation_log` VALUES (97, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-02-14 08:45:40', '2019-02-14 08:45:40');
INSERT INTO `admin_operation_log` VALUES (98, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"sb7CqTMQXo3xsgywe8Ixi1sepnpp6eu9AOreECDt\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":8},{\\\"id\\\":9},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2019-02-14 08:45:51', '2019-02-14 08:45:51');
INSERT INTO `admin_operation_log` VALUES (99, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-14 08:45:52', '2019-02-14 08:45:52');
INSERT INTO `admin_operation_log` VALUES (100, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-02-14 08:45:53', '2019-02-14 08:45:53');
INSERT INTO `admin_operation_log` VALUES (101, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2019-02-14 08:46:44', '2019-02-14 08:46:44');
INSERT INTO `admin_operation_log` VALUES (102, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-14 09:00:58', '2019-02-14 09:00:58');
INSERT INTO `admin_operation_log` VALUES (103, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-14 09:01:40', '2019-02-14 09:01:40');
INSERT INTO `admin_operation_log` VALUES (104, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2019-02-14 09:01:42', '2019-02-14 09:01:42');
INSERT INTO `admin_operation_log` VALUES (105, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-14 09:01:43', '2019-02-14 09:01:43');
INSERT INTO `admin_operation_log` VALUES (106, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2019-02-14 09:02:45', '2019-02-14 09:02:45');
INSERT INTO `admin_operation_log` VALUES (107, 1, 'admin/products', 'POST', '127.0.0.1', '{\"title\":\"\\u624b\\u673a\",\"description\":\"<p>\\u8428\\u8fbe\\u8428\\u8fbe\\u6492asda<\\/p>\",\"on_sale\":\"1\",\"skus\":{\"new_1\":{\"title\":\"\\u624b\\u673a\",\"description\":\"123456789\",\"price\":\"12.8\",\"stock\":\"222\",\"id\":null,\"_remove_\":\"0\"}},\"_token\":\"sb7CqTMQXo3xsgywe8Ixi1sepnpp6eu9AOreECDt\"}', '2019-02-14 09:03:43', '2019-02-14 09:03:43');
INSERT INTO `admin_operation_log` VALUES (108, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2019-02-14 09:03:43', '2019-02-14 09:03:43');
INSERT INTO `admin_operation_log` VALUES (109, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2019-02-14 09:03:59', '2019-02-14 09:03:59');
INSERT INTO `admin_operation_log` VALUES (110, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-14 09:04:06', '2019-02-14 09:04:06');
INSERT INTO `admin_operation_log` VALUES (111, 1, 'admin/products', 'POST', '127.0.0.1', '{\"title\":\"\\u624b\\u673a\",\"description\":\"<p>sadada<\\/p>\",\"on_sale\":\"1\",\"skus\":{\"new_1\":{\"title\":\"\\u7ea2\\u8272\",\"description\":\"123456\",\"price\":\"111\",\"stock\":\"222\",\"id\":null,\"_remove_\":\"0\"},\"new_2\":{\"title\":\"\\u94f6\\u8272\",\"description\":\"1333112\",\"price\":\"112\",\"stock\":\"1111\",\"id\":null,\"_remove_\":\"0\"}},\"_token\":\"sb7CqTMQXo3xsgywe8Ixi1sepnpp6eu9AOreECDt\",\"_previous_\":\"http:\\/\\/shop.test\\/admin\\/products\"}', '2019-02-14 09:05:03', '2019-02-14 09:05:03');
INSERT INTO `admin_operation_log` VALUES (112, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2019-02-14 09:05:03', '2019-02-14 09:05:03');
INSERT INTO `admin_operation_log` VALUES (113, 1, 'admin/products', 'POST', '127.0.0.1', '{\"title\":\"\\u624b\\u673a\",\"description\":\"<p>sadada<\\/p>\",\"on_sale\":\"1\",\"skus\":{\"new_1\":{\"title\":\"\\u624b\\u673a\",\"description\":\"<p>sadada<\\/p>\",\"price\":\"111\",\"stock\":\"222\",\"id\":null,\"_remove_\":\"0\"},\"new_2\":{\"title\":\"\\u624b\\u673a\",\"description\":\"<p>sadada<\\/p>\",\"price\":\"112\",\"stock\":\"1111\",\"id\":null,\"_remove_\":\"0\"}},\"_token\":\"sb7CqTMQXo3xsgywe8Ixi1sepnpp6eu9AOreECDt\"}', '2019-02-14 09:05:14', '2019-02-14 09:05:14');
INSERT INTO `admin_operation_log` VALUES (114, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2019-02-14 09:05:14', '2019-02-14 09:05:14');
INSERT INTO `admin_operation_log` VALUES (115, 1, 'admin/products', 'POST', '127.0.0.1', '{\"title\":\"\\u624b\\u673a\",\"description\":\"<p>sadada<\\/p>\",\"on_sale\":\"1\",\"skus\":{\"new_1\":{\"title\":\"\\u624b\\u673a\",\"description\":\"<p>sadada<\\/p>\",\"price\":\"111\",\"stock\":\"222\",\"id\":null,\"_remove_\":\"0\"},\"new_2\":{\"title\":\"\\u624b\\u673a\",\"description\":\"<p>sadada<\\/p>\",\"price\":\"112\",\"stock\":\"1111\",\"id\":null,\"_remove_\":\"0\"}},\"_token\":\"sb7CqTMQXo3xsgywe8Ixi1sepnpp6eu9AOreECDt\"}', '2019-02-14 09:05:22', '2019-02-14 09:05:22');
INSERT INTO `admin_operation_log` VALUES (116, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2019-02-14 09:05:22', '2019-02-14 09:05:22');
INSERT INTO `admin_operation_log` VALUES (117, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2019-02-14 09:06:29', '2019-02-14 09:06:29');
INSERT INTO `admin_operation_log` VALUES (118, 1, 'admin/products/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-14 09:06:31', '2019-02-14 09:06:31');
INSERT INTO `admin_operation_log` VALUES (119, 1, 'admin/products/1/edit', 'GET', '127.0.0.1', '[]', '2019-02-14 09:07:19', '2019-02-14 09:07:19');
INSERT INTO `admin_operation_log` VALUES (120, 1, 'admin/products/1/edit', 'GET', '127.0.0.1', '[]', '2019-02-14 09:07:24', '2019-02-14 09:07:24');
INSERT INTO `admin_operation_log` VALUES (121, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-14 09:07:29', '2019-02-14 09:07:29');
INSERT INTO `admin_operation_log` VALUES (122, 1, 'admin/products/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-14 09:07:31', '2019-02-14 09:07:31');
INSERT INTO `admin_operation_log` VALUES (123, 1, 'admin/products/1/edit', 'GET', '127.0.0.1', '[]', '2019-02-14 09:07:42', '2019-02-14 09:07:42');
INSERT INTO `admin_operation_log` VALUES (124, 1, 'admin/products/1/edit', 'GET', '127.0.0.1', '[]', '2019-02-14 09:09:32', '2019-02-14 09:09:32');
INSERT INTO `admin_operation_log` VALUES (125, 1, 'admin/products/1/edit', 'GET', '127.0.0.1', '[]', '2019-02-14 09:12:19', '2019-02-14 09:12:19');
INSERT INTO `admin_operation_log` VALUES (126, 1, 'admin/products/1/edit', 'GET', '127.0.0.1', '[]', '2019-02-14 09:12:22', '2019-02-14 09:12:22');
INSERT INTO `admin_operation_log` VALUES (127, 1, 'admin/products/1/edit', 'GET', '127.0.0.1', '[]', '2019-02-14 09:12:41', '2019-02-14 09:12:41');
INSERT INTO `admin_operation_log` VALUES (128, 1, 'admin/products/1/edit', 'GET', '127.0.0.1', '[]', '2019-02-14 09:12:43', '2019-02-14 09:12:43');
INSERT INTO `admin_operation_log` VALUES (129, 1, 'admin/products/1', 'PUT', '127.0.0.1', '{\"title\":\"\\u82f9\\u679c\\u624b\\u673a\",\"description\":\"<p>\\u8428\\u8fbe\\u8428\\u8fbe\\u6492asda<\\/p>\",\"on_sale\":\"1\",\"skus\":{\"1\":{\"title\":\"\\u624b\\u673a\",\"description\":\"123456789\",\"price\":\"12.80\",\"stock\":\"222\",\"id\":\"1\",\"_remove_\":\"0\"}},\"_token\":\"sb7CqTMQXo3xsgywe8Ixi1sepnpp6eu9AOreECDt\",\"_method\":\"PUT\"}', '2019-02-14 09:14:13', '2019-02-14 09:14:13');
INSERT INTO `admin_operation_log` VALUES (130, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2019-02-14 09:14:13', '2019-02-14 09:14:13');
INSERT INTO `admin_operation_log` VALUES (131, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-14 09:14:16', '2019-02-14 09:14:16');
INSERT INTO `admin_operation_log` VALUES (132, 1, 'admin/products/2', 'PUT', '127.0.0.1', '{\"title\":\"\\u534e\\u4e3a\\u624b\\u673a\",\"description\":\"<p>sadada<\\/p>\",\"on_sale\":\"1\",\"skus\":{\"2\":{\"title\":\"\\u624b\\u673a\",\"description\":\"<p>sadada<\\/p>\",\"price\":\"111.00\",\"stock\":\"222\",\"id\":\"2\",\"_remove_\":\"0\"},\"3\":{\"title\":\"\\u624b\\u673a\",\"description\":\"<p>sadada<\\/p>\",\"price\":\"112.00\",\"stock\":\"1111\",\"id\":\"3\",\"_remove_\":\"0\"}},\"_token\":\"sb7CqTMQXo3xsgywe8Ixi1sepnpp6eu9AOreECDt\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shop.test\\/admin\\/products\"}', '2019-02-14 09:14:23', '2019-02-14 09:14:23');
INSERT INTO `admin_operation_log` VALUES (133, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2019-02-14 09:14:23', '2019-02-14 09:14:23');
INSERT INTO `admin_operation_log` VALUES (134, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2019-02-14 09:28:51', '2019-02-14 09:28:51');
INSERT INTO `admin_operation_log` VALUES (135, 1, 'admin/products/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-14 09:29:03', '2019-02-14 09:29:03');
INSERT INTO `admin_operation_log` VALUES (136, 1, 'admin/products/1', 'PUT', '127.0.0.1', '{\"title\":\"\\u82f9\\u679c\\u624b\\u673a\",\"description\":\"<p>\\u8428\\u8fbe\\u8428\\u8fbe\\u6492asda<\\/p>\",\"on_sale\":\"0\",\"skus\":{\"1\":{\"title\":\"\\u624b\\u673a\",\"description\":\"123456789\",\"price\":\"12.80\",\"stock\":\"222\",\"id\":\"1\",\"_remove_\":\"0\"}},\"_token\":\"sb7CqTMQXo3xsgywe8Ixi1sepnpp6eu9AOreECDt\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shop.test\\/admin\\/products\"}', '2019-02-14 09:29:06', '2019-02-14 09:29:06');
INSERT INTO `admin_operation_log` VALUES (137, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2019-02-14 09:29:06', '2019-02-14 09:29:06');
INSERT INTO `admin_operation_log` VALUES (138, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-14 09:29:10', '2019-02-14 09:29:10');
INSERT INTO `admin_operation_log` VALUES (139, 1, 'admin/products/2', 'PUT', '127.0.0.1', '{\"title\":\"\\u534e\\u4e3a\\u624b\\u673a\",\"description\":\"<p>sadada<\\/p>\",\"on_sale\":\"0\",\"skus\":{\"2\":{\"title\":\"\\u624b\\u673a\",\"description\":\"<p>sadada<\\/p>\",\"price\":\"111.00\",\"stock\":\"222\",\"id\":\"2\",\"_remove_\":\"0\"},\"3\":{\"title\":\"\\u624b\\u673a\",\"description\":\"<p>sadada<\\/p>\",\"price\":\"112.00\",\"stock\":\"1111\",\"id\":\"3\",\"_remove_\":\"0\"}},\"_token\":\"sb7CqTMQXo3xsgywe8Ixi1sepnpp6eu9AOreECDt\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shop.test\\/admin\\/products\"}', '2019-02-14 09:29:14', '2019-02-14 09:29:14');
INSERT INTO `admin_operation_log` VALUES (140, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2019-02-14 09:29:14', '2019-02-14 09:29:14');
INSERT INTO `admin_operation_log` VALUES (141, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2019-02-15 01:47:09', '2019-02-15 01:47:09');
INSERT INTO `admin_operation_log` VALUES (142, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2019-02-15 03:08:20', '2019-02-15 03:08:20');
INSERT INTO `admin_operation_log` VALUES (143, 1, 'admin/products/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-15 03:08:25', '2019-02-15 03:08:25');
INSERT INTO `admin_operation_log` VALUES (144, 1, 'admin/products/5', 'PUT', '127.0.0.1', '{\"title\":\"qui\",\"description\":\"<p>Magni impedit ea mollitia aut quasi.<\\/p>\",\"on_sale\":\"0\",\"skus\":{\"10\":{\"title\":\"amet\",\"description\":\"Quidem incidunt harum inventore ut est et in.\",\"price\":\"7945.00\",\"stock\":\"67658\",\"id\":\"10\",\"_remove_\":\"0\"},\"11\":{\"title\":\"nam\",\"description\":\"Quia doloribus nemo incidunt aperiam voluptatem perferendis.\",\"price\":\"1896.00\",\"stock\":\"91695\",\"id\":\"11\",\"_remove_\":\"0\"},\"12\":{\"title\":\"voluptatem\",\"description\":\"Sit enim neque cumque ipsa.\",\"price\":\"5346.00\",\"stock\":\"68321\",\"id\":\"12\",\"_remove_\":\"0\"}},\"_token\":\"dotVlClDr1ASXFghFneCe8P7LT23bxPttLBNmeMQ\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shop.test\\/admin\\/products\"}', '2019-02-15 03:08:31', '2019-02-15 03:08:31');
INSERT INTO `admin_operation_log` VALUES (145, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2019-02-15 03:08:31', '2019-02-15 03:08:31');
INSERT INTO `admin_operation_log` VALUES (146, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2019-02-15 03:45:42', '2019-02-15 03:45:42');
INSERT INTO `admin_operation_log` VALUES (147, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2019-02-15 03:45:43', '2019-02-15 03:45:43');
INSERT INTO `admin_operation_log` VALUES (148, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2019-02-15 03:45:48', '2019-02-15 03:45:48');
INSERT INTO `admin_operation_log` VALUES (149, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-15 03:45:53', '2019-02-15 03:45:53');
INSERT INTO `admin_operation_log` VALUES (150, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-15 03:45:55', '2019-02-15 03:45:55');
INSERT INTO `admin_operation_log` VALUES (151, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-15 03:47:01', '2019-02-15 03:47:01');
INSERT INTO `admin_operation_log` VALUES (152, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2019-02-15 07:32:51', '2019-02-15 07:32:51');
INSERT INTO `admin_operation_log` VALUES (153, 1, 'admin/products/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-15 07:33:01', '2019-02-15 07:33:01');
INSERT INTO `admin_operation_log` VALUES (154, 1, 'admin/products/3', 'PUT', '127.0.0.1', '{\"title\":\"rerum\",\"description\":\"<p>Vel aut voluptatem facere aut ea voluptate nemo.<\\/p>\",\"on_sale\":\"0\",\"skus\":{\"4\":{\"title\":\"autem\",\"description\":\"Magnam enim omnis architecto vel.\",\"price\":\"2736.00\",\"stock\":\"4236\",\"id\":\"4\",\"_remove_\":\"0\"},\"5\":{\"title\":\"culpa\",\"description\":\"Eius placeat cum occaecati sed velit.\",\"price\":\"1900.00\",\"stock\":\"3780\",\"id\":\"5\",\"_remove_\":\"0\"},\"6\":{\"title\":\"optio\",\"description\":\"Est distinctio quisquam quo quia accusantium eaque modi ipsum.\",\"price\":\"3510.00\",\"stock\":\"83516\",\"id\":\"6\",\"_remove_\":\"0\"}},\"_token\":\"OWdepUyf1tkDFBF5MNWdXIiNaPPQf8N4hU85GH0L\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shop.test\\/admin\\/products\"}', '2019-02-15 07:33:05', '2019-02-15 07:33:05');
INSERT INTO `admin_operation_log` VALUES (155, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2019-02-15 07:33:05', '2019-02-15 07:33:05');
INSERT INTO `admin_operation_log` VALUES (156, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2019-02-18 07:24:37', '2019-02-18 07:24:37');
INSERT INTO `admin_operation_log` VALUES (157, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-18 07:25:17', '2019-02-18 07:25:17');
INSERT INTO `admin_operation_log` VALUES (158, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u8ba2\\u5355\\u7ba1\\u7406\",\"icon\":\"fa-rmb\",\"uri\":\"\\/order\",\"roles\":[null],\"permission\":null,\"_token\":\"mRbJj4ZT4QdAuptD6uSmWh52GypQx7dVZTVGJgrW\"}', '2019-02-18 07:26:32', '2019-02-18 07:26:32');
INSERT INTO `admin_operation_log` VALUES (159, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-02-18 07:26:32', '2019-02-18 07:26:32');
INSERT INTO `admin_operation_log` VALUES (160, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"mRbJj4ZT4QdAuptD6uSmWh52GypQx7dVZTVGJgrW\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":8},{\\\"id\\\":9},{\\\"id\\\":10},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2019-02-18 07:26:38', '2019-02-18 07:26:38');
INSERT INTO `admin_operation_log` VALUES (161, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-18 07:26:38', '2019-02-18 07:26:38');
INSERT INTO `admin_operation_log` VALUES (162, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-02-18 07:26:41', '2019-02-18 07:26:41');
INSERT INTO `admin_operation_log` VALUES (163, 1, 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-18 07:26:44', '2019-02-18 07:26:44');
INSERT INTO `admin_operation_log` VALUES (164, 1, 'admin/order', 'GET', '127.0.0.1', '[]', '2019-02-18 07:27:05', '2019-02-18 07:27:05');
INSERT INTO `admin_operation_log` VALUES (165, 1, 'admin/order/39', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-18 07:33:56', '2019-02-18 07:33:56');
INSERT INTO `admin_operation_log` VALUES (166, 1, 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-18 07:34:02', '2019-02-18 07:34:02');
INSERT INTO `admin_operation_log` VALUES (167, 1, 'admin/order', 'GET', '127.0.0.1', '[]', '2019-02-18 07:54:20', '2019-02-18 07:54:20');
INSERT INTO `admin_operation_log` VALUES (168, 1, 'admin/order', 'GET', '127.0.0.1', '[]', '2019-02-18 07:54:23', '2019-02-18 07:54:23');
INSERT INTO `admin_operation_log` VALUES (169, 1, 'admin/order/39', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-18 07:54:27', '2019-02-18 07:54:27');
INSERT INTO `admin_operation_log` VALUES (170, 1, 'admin/order/39', 'GET', '127.0.0.1', '[]', '2019-02-18 07:54:27', '2019-02-18 07:54:27');
INSERT INTO `admin_operation_log` VALUES (171, 1, 'admin/order/39', 'GET', '127.0.0.1', '[]', '2019-02-18 07:55:10', '2019-02-18 07:55:10');
INSERT INTO `admin_operation_log` VALUES (172, 1, 'admin/order/39', 'GET', '127.0.0.1', '[]', '2019-02-18 07:57:36', '2019-02-18 07:57:36');
INSERT INTO `admin_operation_log` VALUES (173, 1, 'admin/order/39', 'GET', '127.0.0.1', '[]', '2019-02-18 07:58:43', '2019-02-18 07:58:43');
INSERT INTO `admin_operation_log` VALUES (174, 1, 'admin/order/39', 'GET', '127.0.0.1', '[]', '2019-02-18 07:58:53', '2019-02-18 07:58:53');
INSERT INTO `admin_operation_log` VALUES (175, 1, 'admin/order/39', 'GET', '127.0.0.1', '[]', '2019-02-18 07:59:27', '2019-02-18 07:59:27');
INSERT INTO `admin_operation_log` VALUES (176, 1, 'admin/order/39', 'GET', '127.0.0.1', '[]', '2019-02-18 07:59:48', '2019-02-18 07:59:48');
INSERT INTO `admin_operation_log` VALUES (177, 1, 'admin/order/39', 'GET', '127.0.0.1', '[]', '2019-02-18 08:00:02', '2019-02-18 08:00:02');
INSERT INTO `admin_operation_log` VALUES (178, 1, 'admin/order/39', 'GET', '127.0.0.1', '[]', '2019-02-18 08:00:04', '2019-02-18 08:00:04');
INSERT INTO `admin_operation_log` VALUES (179, 1, 'admin/order/39', 'GET', '127.0.0.1', '[]', '2019-02-18 08:00:10', '2019-02-18 08:00:10');
INSERT INTO `admin_operation_log` VALUES (180, 1, 'admin/order/39', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-18 08:13:07', '2019-02-18 08:13:07');
INSERT INTO `admin_operation_log` VALUES (181, 1, 'admin/orders/39/ship', 'POST', '127.0.0.1', '{\"_token\":\"mRbJj4ZT4QdAuptD6uSmWh52GypQx7dVZTVGJgrW\",\"express_company\":null,\"express_no\":null}', '2019-02-18 08:13:09', '2019-02-18 08:13:09');
INSERT INTO `admin_operation_log` VALUES (182, 1, 'admin/order/39', 'GET', '127.0.0.1', '[]', '2019-02-18 08:14:41', '2019-02-18 08:14:41');
INSERT INTO `admin_operation_log` VALUES (183, 1, 'admin/order/39', 'GET', '127.0.0.1', '[]', '2019-02-18 08:14:42', '2019-02-18 08:14:42');
INSERT INTO `admin_operation_log` VALUES (184, 1, 'admin/orders/39/ship', 'POST', '127.0.0.1', '{\"_token\":\"mRbJj4ZT4QdAuptD6uSmWh52GypQx7dVZTVGJgrW\",\"express_company\":null,\"express_no\":null}', '2019-02-18 08:14:43', '2019-02-18 08:14:43');
INSERT INTO `admin_operation_log` VALUES (185, 1, 'admin/order/39', 'GET', '127.0.0.1', '[]', '2019-02-18 08:14:43', '2019-02-18 08:14:43');
INSERT INTO `admin_operation_log` VALUES (186, 1, 'admin/orders/39/ship', 'POST', '127.0.0.1', '{\"_token\":\"mRbJj4ZT4QdAuptD6uSmWh52GypQx7dVZTVGJgrW\",\"express_company\":\"\\u5706\\u901a\",\"express_no\":\"2012\"}', '2019-02-18 08:15:24', '2019-02-18 08:15:24');
INSERT INTO `admin_operation_log` VALUES (187, 1, 'admin/orders/39/ship', 'POST', '127.0.0.1', '{\"_token\":\"mRbJj4ZT4QdAuptD6uSmWh52GypQx7dVZTVGJgrW\",\"express_company\":\"\\u5706\\u901a\",\"express_no\":\"2012\"}', '2019-02-18 08:15:29', '2019-02-18 08:15:29');
INSERT INTO `admin_operation_log` VALUES (188, 1, 'admin/orders/39/ship', 'POST', '127.0.0.1', '{\"_token\":\"mRbJj4ZT4QdAuptD6uSmWh52GypQx7dVZTVGJgrW\",\"express_company\":\"\\u5706\\u901a\",\"express_no\":\"2012\"}', '2019-02-18 08:15:56', '2019-02-18 08:15:56');
INSERT INTO `admin_operation_log` VALUES (189, 1, 'admin/order/39', 'GET', '127.0.0.1', '[]', '2019-02-18 08:15:57', '2019-02-18 08:15:57');
INSERT INTO `admin_operation_log` VALUES (190, 1, 'admin/order/39', 'GET', '127.0.0.1', '[]', '2019-02-18 08:15:59', '2019-02-18 08:15:59');
INSERT INTO `admin_operation_log` VALUES (191, 1, 'admin/order/39', 'GET', '127.0.0.1', '[]', '2019-02-18 08:16:00', '2019-02-18 08:16:00');
INSERT INTO `admin_operation_log` VALUES (192, 1, 'admin/order/39', 'GET', '127.0.0.1', '[]', '2019-02-18 08:17:10', '2019-02-18 08:17:10');
INSERT INTO `admin_operation_log` VALUES (193, 1, 'admin/orders/39/ship', 'POST', '127.0.0.1', '{\"_token\":\"mRbJj4ZT4QdAuptD6uSmWh52GypQx7dVZTVGJgrW\",\"express_company\":\"\\u5706\\u901a\",\"express_no\":\"2012\"}', '2019-02-18 08:17:19', '2019-02-18 08:17:19');
INSERT INTO `admin_operation_log` VALUES (194, 1, 'admin/order/39', 'GET', '127.0.0.1', '[]', '2019-02-18 08:17:34', '2019-02-18 08:17:34');
INSERT INTO `admin_operation_log` VALUES (195, 1, 'admin/orders/39/ship', 'POST', '127.0.0.1', '{\"_token\":\"mRbJj4ZT4QdAuptD6uSmWh52GypQx7dVZTVGJgrW\",\"express_company\":\"\\u5706\\u901a\",\"express_no\":\"2012\"}', '2019-02-18 08:17:40', '2019-02-18 08:17:40');
INSERT INTO `admin_operation_log` VALUES (196, 1, 'admin/order/39', 'GET', '127.0.0.1', '[]', '2019-02-18 08:17:40', '2019-02-18 08:17:40');
INSERT INTO `admin_operation_log` VALUES (197, 1, 'admin/order/39', 'GET', '127.0.0.1', '[]', '2019-02-18 08:17:41', '2019-02-18 08:17:41');
INSERT INTO `admin_operation_log` VALUES (198, 1, 'admin/order/39', 'GET', '127.0.0.1', '[]', '2019-02-18 08:17:44', '2019-02-18 08:17:44');
INSERT INTO `admin_operation_log` VALUES (199, 1, 'admin/order/39', 'GET', '127.0.0.1', '[]', '2019-02-18 08:18:02', '2019-02-18 08:18:02');
INSERT INTO `admin_operation_log` VALUES (200, 1, 'admin/order/39', 'GET', '127.0.0.1', '[]', '2019-02-18 08:19:06', '2019-02-18 08:19:06');
INSERT INTO `admin_operation_log` VALUES (201, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2019-02-18 08:49:44', '2019-02-18 08:49:44');
INSERT INTO `admin_operation_log` VALUES (202, 1, 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-18 08:49:47', '2019-02-18 08:49:47');
INSERT INTO `admin_operation_log` VALUES (203, 1, 'admin/order/39', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-18 08:49:49', '2019-02-18 08:49:49');
INSERT INTO `admin_operation_log` VALUES (204, 1, 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-18 08:54:25', '2019-02-18 08:54:25');
INSERT INTO `admin_operation_log` VALUES (205, 1, 'admin/order/40', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-18 08:54:27', '2019-02-18 08:54:27');
INSERT INTO `admin_operation_log` VALUES (206, 1, 'admin/orders/40/ship', 'POST', '127.0.0.1', '{\"_token\":\"WaPqisrIt7Xd1Ht85le0ZfWZ9ubOumVF72L4gQbU\",\"express_company\":\"\\u5706\\u901a\",\"express_no\":\"2012\"}', '2019-02-18 08:54:31', '2019-02-18 08:54:31');
INSERT INTO `admin_operation_log` VALUES (207, 1, 'admin/order/40', 'GET', '127.0.0.1', '[]', '2019-02-18 08:54:31', '2019-02-18 08:54:31');
INSERT INTO `admin_operation_log` VALUES (208, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-18 08:54:47', '2019-02-18 08:54:47');
INSERT INTO `admin_operation_log` VALUES (209, 1, 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-18 08:55:05', '2019-02-18 08:55:05');
INSERT INTO `admin_operation_log` VALUES (210, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-18 08:55:07', '2019-02-18 08:55:07');
INSERT INTO `admin_operation_log` VALUES (211, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-18 08:55:08', '2019-02-18 08:55:08');
INSERT INTO `admin_operation_log` VALUES (212, 1, 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-18 08:55:09', '2019-02-18 08:55:09');
INSERT INTO `admin_operation_log` VALUES (213, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-18 08:55:12', '2019-02-18 08:55:12');
INSERT INTO `admin_operation_log` VALUES (214, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-18 08:55:14', '2019-02-18 08:55:14');
INSERT INTO `admin_operation_log` VALUES (215, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-18 08:55:18', '2019-02-18 08:55:18');
INSERT INTO `admin_operation_log` VALUES (216, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-18 08:55:20', '2019-02-18 08:55:20');
INSERT INTO `admin_operation_log` VALUES (217, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-18 08:55:38', '2019-02-18 08:55:38');
INSERT INTO `admin_operation_log` VALUES (218, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-18 08:55:39', '2019-02-18 08:55:39');
INSERT INTO `admin_operation_log` VALUES (219, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-18 08:55:40', '2019-02-18 08:55:40');
INSERT INTO `admin_operation_log` VALUES (220, 1, 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-18 08:55:40', '2019-02-18 08:55:40');
INSERT INTO `admin_operation_log` VALUES (221, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-18 08:55:44', '2019-02-18 08:55:44');
INSERT INTO `admin_operation_log` VALUES (222, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-18 08:55:46', '2019-02-18 08:55:46');
INSERT INTO `admin_operation_log` VALUES (223, 1, 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-18 08:55:46', '2019-02-18 08:55:46');
INSERT INTO `admin_operation_log` VALUES (224, 1, 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-18 08:55:47', '2019-02-18 08:55:47');
INSERT INTO `admin_operation_log` VALUES (225, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-18 08:55:52', '2019-02-18 08:55:52');
INSERT INTO `admin_operation_log` VALUES (226, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-18 08:56:01', '2019-02-18 08:56:01');
INSERT INTO `admin_operation_log` VALUES (227, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-18 08:56:04', '2019-02-18 08:56:04');
INSERT INTO `admin_operation_log` VALUES (228, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-18 08:56:06', '2019-02-18 08:56:06');
INSERT INTO `admin_operation_log` VALUES (229, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-18 08:56:39', '2019-02-18 08:56:39');
INSERT INTO `admin_operation_log` VALUES (230, 1, 'admin/products/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-18 08:57:27', '2019-02-18 08:57:27');
INSERT INTO `admin_operation_log` VALUES (231, 1, 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-18 08:58:41', '2019-02-18 08:58:41');
INSERT INTO `admin_operation_log` VALUES (232, 1, 'admin/order/39', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-18 08:58:43', '2019-02-18 08:58:43');
INSERT INTO `admin_operation_log` VALUES (233, 1, 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-18 08:58:47', '2019-02-18 08:58:47');
INSERT INTO `admin_operation_log` VALUES (234, 1, 'admin/order', 'GET', '127.0.0.1', '[]', '2019-02-18 09:13:12', '2019-02-18 09:13:12');
INSERT INTO `admin_operation_log` VALUES (235, 1, 'admin/order', 'GET', '127.0.0.1', '[]', '2019-02-18 09:13:17', '2019-02-18 09:13:17');
INSERT INTO `admin_operation_log` VALUES (236, 1, 'admin/order/38', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-18 09:13:19', '2019-02-18 09:13:19');
INSERT INTO `admin_operation_log` VALUES (237, 1, 'admin/orders/38/ship', 'POST', '127.0.0.1', '{\"_token\":\"WaPqisrIt7Xd1Ht85le0ZfWZ9ubOumVF72L4gQbU\",\"express_company\":null,\"express_no\":null}', '2019-02-18 09:13:21', '2019-02-18 09:13:21');
INSERT INTO `admin_operation_log` VALUES (238, 1, 'admin/order/38', 'GET', '127.0.0.1', '[]', '2019-02-18 09:13:21', '2019-02-18 09:13:21');
INSERT INTO `admin_operation_log` VALUES (239, 1, 'admin/orders/38/ship', 'POST', '127.0.0.1', '{\"_token\":\"WaPqisrIt7Xd1Ht85le0ZfWZ9ubOumVF72L4gQbU\",\"express_company\":\"\\u5706\\u901a\",\"express_no\":\"4\"}', '2019-02-18 09:13:25', '2019-02-18 09:13:25');
INSERT INTO `admin_operation_log` VALUES (240, 1, 'admin/order/38', 'GET', '127.0.0.1', '[]', '2019-02-18 09:13:25', '2019-02-18 09:13:25');
INSERT INTO `admin_operation_log` VALUES (241, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2019-02-19 06:20:33', '2019-02-19 06:20:33');
INSERT INTO `admin_operation_log` VALUES (242, 1, 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-19 06:20:40', '2019-02-19 06:20:40');
INSERT INTO `admin_operation_log` VALUES (243, 1, 'admin/order', 'GET', '127.0.0.1', '[]', '2019-02-19 06:26:55', '2019-02-19 06:26:55');
INSERT INTO `admin_operation_log` VALUES (244, 1, 'admin/order', 'GET', '127.0.0.1', '[]', '2019-02-19 06:46:16', '2019-02-19 06:46:16');
INSERT INTO `admin_operation_log` VALUES (245, 1, 'admin/order/39', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-19 06:46:18', '2019-02-19 06:46:18');
INSERT INTO `admin_operation_log` VALUES (246, 1, 'admin/order', 'GET', '127.0.0.1', '[]', '2019-02-19 06:46:18', '2019-02-19 06:46:18');
INSERT INTO `admin_operation_log` VALUES (247, 1, 'admin/order/39', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-19 06:46:25', '2019-02-19 06:46:25');
INSERT INTO `admin_operation_log` VALUES (248, 1, 'admin/order', 'GET', '127.0.0.1', '[]', '2019-02-19 06:46:25', '2019-02-19 06:46:25');
INSERT INTO `admin_operation_log` VALUES (249, 1, 'admin/order/39', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-19 06:46:59', '2019-02-19 06:46:59');
INSERT INTO `admin_operation_log` VALUES (250, 1, 'admin/order', 'GET', '127.0.0.1', '[]', '2019-02-19 06:47:00', '2019-02-19 06:47:00');
INSERT INTO `admin_operation_log` VALUES (251, 1, 'admin/order/39', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-19 06:47:20', '2019-02-19 06:47:20');
INSERT INTO `admin_operation_log` VALUES (252, 1, 'admin/order', 'GET', '127.0.0.1', '[]', '2019-02-19 06:47:21', '2019-02-19 06:47:21');
INSERT INTO `admin_operation_log` VALUES (253, 1, 'admin/order', 'GET', '127.0.0.1', '[]', '2019-02-19 06:47:22', '2019-02-19 06:47:22');
INSERT INTO `admin_operation_log` VALUES (254, 1, 'admin/order', 'GET', '127.0.0.1', '[]', '2019-02-19 06:47:23', '2019-02-19 06:47:23');
INSERT INTO `admin_operation_log` VALUES (255, 1, 'admin/order/40', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-19 06:47:26', '2019-02-19 06:47:26');
INSERT INTO `admin_operation_log` VALUES (256, 1, 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-19 06:47:37', '2019-02-19 06:47:37');
INSERT INTO `admin_operation_log` VALUES (257, 1, 'admin/order/39', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-19 06:47:40', '2019-02-19 06:47:40');
INSERT INTO `admin_operation_log` VALUES (258, 1, 'admin/order', 'GET', '127.0.0.1', '[]', '2019-02-19 06:47:40', '2019-02-19 06:47:40');
INSERT INTO `admin_operation_log` VALUES (259, 1, 'admin/order/39', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-19 06:48:26', '2019-02-19 06:48:26');
INSERT INTO `admin_operation_log` VALUES (260, 1, 'admin/order/39', 'GET', '127.0.0.1', '[]', '2019-02-19 06:48:32', '2019-02-19 06:48:32');
INSERT INTO `admin_operation_log` VALUES (261, 1, 'admin/orders/39/refund', 'POST', '127.0.0.1', '{\"agree\":false,\"reason\":\"asdsa\",\"_token\":\"3omOm6x60nvtWfx5vDNgBQwcHDfocecnqUQMc8ct\"}', '2019-02-19 06:48:37', '2019-02-19 06:48:37');
INSERT INTO `admin_operation_log` VALUES (262, 1, 'admin/order/39', 'GET', '127.0.0.1', '[]', '2019-02-19 06:48:39', '2019-02-19 06:48:39');
INSERT INTO `admin_operation_log` VALUES (263, 1, 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-19 06:48:57', '2019-02-19 06:48:57');
INSERT INTO `admin_operation_log` VALUES (264, 1, 'admin/order', 'GET', '127.0.0.1', '[]', '2019-02-19 06:48:59', '2019-02-19 06:48:59');
INSERT INTO `admin_operation_log` VALUES (265, 1, 'admin/order', 'GET', '127.0.0.1', '[]', '2019-02-19 06:49:13', '2019-02-19 06:49:13');
INSERT INTO `admin_operation_log` VALUES (266, 1, 'admin/order', 'GET', '127.0.0.1', '[]', '2019-02-19 06:50:24', '2019-02-19 06:50:24');
INSERT INTO `admin_operation_log` VALUES (267, 1, 'admin/order/42', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-19 06:50:25', '2019-02-19 06:50:25');
INSERT INTO `admin_operation_log` VALUES (268, 1, 'admin/orders/42/refund', 'POST', '127.0.0.1', '{\"agree\":false,\"reason\":\"dasda\",\"_token\":\"3omOm6x60nvtWfx5vDNgBQwcHDfocecnqUQMc8ct\"}', '2019-02-19 06:50:31', '2019-02-19 06:50:31');
INSERT INTO `admin_operation_log` VALUES (269, 1, 'admin/order/42', 'GET', '127.0.0.1', '[]', '2019-02-19 06:50:32', '2019-02-19 06:50:32');
INSERT INTO `admin_operation_log` VALUES (270, 1, 'admin/order/42', 'GET', '127.0.0.1', '[]', '2019-02-19 06:52:34', '2019-02-19 06:52:34');
INSERT INTO `admin_operation_log` VALUES (271, 1, 'admin/orders/42/refund', 'POST', '127.0.0.1', '{\"agree\":false,\"reason\":\"sadasd\",\"_token\":\"3omOm6x60nvtWfx5vDNgBQwcHDfocecnqUQMc8ct\"}', '2019-02-19 06:52:40', '2019-02-19 06:52:40');
INSERT INTO `admin_operation_log` VALUES (272, 1, 'admin/order/42', 'GET', '127.0.0.1', '[]', '2019-02-19 06:52:41', '2019-02-19 06:52:41');
INSERT INTO `admin_operation_log` VALUES (273, 1, 'admin/order/42', 'GET', '127.0.0.1', '[]', '2019-02-19 06:56:52', '2019-02-19 06:56:52');
INSERT INTO `admin_operation_log` VALUES (274, 1, 'admin/orders/42/refund', 'POST', '127.0.0.1', '{\"agree\":false,\"reason\":\"\\u6d4b\\u8bd5\\u62d2\\u7edd\",\"_token\":\"3omOm6x60nvtWfx5vDNgBQwcHDfocecnqUQMc8ct\"}', '2019-02-19 06:57:03', '2019-02-19 06:57:03');
INSERT INTO `admin_operation_log` VALUES (275, 1, 'admin/order/42', 'GET', '127.0.0.1', '[]', '2019-02-19 06:57:04', '2019-02-19 06:57:04');
INSERT INTO `admin_operation_log` VALUES (276, 1, 'admin/order/42', 'GET', '127.0.0.1', '[]', '2019-02-19 06:59:56', '2019-02-19 06:59:56');
INSERT INTO `admin_operation_log` VALUES (277, 1, 'admin/order/42', 'GET', '127.0.0.1', '[]', '2019-02-19 06:59:57', '2019-02-19 06:59:57');
INSERT INTO `admin_operation_log` VALUES (278, 1, 'admin/order/42', 'GET', '127.0.0.1', '[]', '2019-02-19 06:59:58', '2019-02-19 06:59:58');
INSERT INTO `admin_operation_log` VALUES (279, 1, 'admin/order/42', 'GET', '127.0.0.1', '[]', '2019-02-19 06:59:58', '2019-02-19 06:59:58');
INSERT INTO `admin_operation_log` VALUES (280, 1, 'admin/order/42', 'GET', '127.0.0.1', '[]', '2019-02-19 06:59:58', '2019-02-19 06:59:58');
INSERT INTO `admin_operation_log` VALUES (281, 1, 'admin/order/42', 'GET', '127.0.0.1', '[]', '2019-02-19 06:59:59', '2019-02-19 06:59:59');
INSERT INTO `admin_operation_log` VALUES (282, 1, 'admin/order/42', 'GET', '127.0.0.1', '[]', '2019-02-19 06:59:59', '2019-02-19 06:59:59');
INSERT INTO `admin_operation_log` VALUES (283, 1, 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-19 07:00:01', '2019-02-19 07:00:01');
INSERT INTO `admin_operation_log` VALUES (284, 1, 'admin/order', 'GET', '127.0.0.1', '[]', '2019-02-19 07:00:02', '2019-02-19 07:00:02');
INSERT INTO `admin_operation_log` VALUES (285, 1, 'admin/order', 'GET', '127.0.0.1', '[]', '2019-02-19 07:00:03', '2019-02-19 07:00:03');
INSERT INTO `admin_operation_log` VALUES (286, 1, 'admin/order', 'GET', '127.0.0.1', '[]', '2019-02-19 07:00:03', '2019-02-19 07:00:03');
INSERT INTO `admin_operation_log` VALUES (287, 1, 'admin/order', 'GET', '127.0.0.1', '[]', '2019-02-19 07:00:04', '2019-02-19 07:00:04');
INSERT INTO `admin_operation_log` VALUES (288, 1, 'admin/order', 'GET', '127.0.0.1', '[]', '2019-02-19 07:02:10', '2019-02-19 07:02:10');
INSERT INTO `admin_operation_log` VALUES (289, 1, 'admin/order', 'GET', '127.0.0.1', '[]', '2019-02-19 07:02:13', '2019-02-19 07:02:13');
INSERT INTO `admin_operation_log` VALUES (290, 1, 'admin/order', 'GET', '127.0.0.1', '[]', '2019-02-19 07:03:24', '2019-02-19 07:03:24');
INSERT INTO `admin_operation_log` VALUES (291, 1, 'admin/order/41', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-19 07:03:26', '2019-02-19 07:03:26');
INSERT INTO `admin_operation_log` VALUES (292, 1, 'admin/orders/41/refund', 'POST', '127.0.0.1', '{\"agree\":false,\"reason\":\"asdsa\",\"_token\":\"3omOm6x60nvtWfx5vDNgBQwcHDfocecnqUQMc8ct\"}', '2019-02-19 07:04:00', '2019-02-19 07:04:00');
INSERT INTO `admin_operation_log` VALUES (293, 1, 'admin/order/41', 'GET', '127.0.0.1', '[]', '2019-02-19 07:04:14', '2019-02-19 07:04:14');
INSERT INTO `admin_operation_log` VALUES (294, 1, 'admin/orders/41/refund', 'POST', '127.0.0.1', '{\"agree\":false,\"reason\":\"123456\",\"_token\":\"3omOm6x60nvtWfx5vDNgBQwcHDfocecnqUQMc8ct\"}', '2019-02-19 07:04:21', '2019-02-19 07:04:21');
INSERT INTO `admin_operation_log` VALUES (295, 1, 'admin/order/41', 'GET', '127.0.0.1', '[]', '2019-02-19 07:04:29', '2019-02-19 07:04:29');
INSERT INTO `admin_operation_log` VALUES (296, 1, 'admin/orders/41/refund', 'POST', '127.0.0.1', '{\"agree\":false,\"reason\":\"sadas\",\"_token\":\"3omOm6x60nvtWfx5vDNgBQwcHDfocecnqUQMc8ct\"}', '2019-02-19 07:04:55', '2019-02-19 07:04:55');
INSERT INTO `admin_operation_log` VALUES (297, 1, 'admin/order/41', 'GET', '127.0.0.1', '[]', '2019-02-19 07:05:02', '2019-02-19 07:05:02');
INSERT INTO `admin_operation_log` VALUES (298, 1, 'admin/orders/41/refund', 'POST', '127.0.0.1', '{\"agree\":false,\"reason\":\"dsadas\",\"_token\":\"3omOm6x60nvtWfx5vDNgBQwcHDfocecnqUQMc8ct\"}', '2019-02-19 07:05:12', '2019-02-19 07:05:12');
INSERT INTO `admin_operation_log` VALUES (299, 1, 'admin/order/41', 'GET', '127.0.0.1', '[]', '2019-02-19 07:05:18', '2019-02-19 07:05:18');
INSERT INTO `admin_operation_log` VALUES (300, 1, 'admin/orders/41/refund', 'POST', '127.0.0.1', '{\"agree\":false,\"reason\":\"123456789\",\"_token\":\"3omOm6x60nvtWfx5vDNgBQwcHDfocecnqUQMc8ct\"}', '2019-02-19 07:05:24', '2019-02-19 07:05:24');
INSERT INTO `admin_operation_log` VALUES (301, 1, 'admin/order/41', 'GET', '127.0.0.1', '[]', '2019-02-19 07:06:29', '2019-02-19 07:06:29');
INSERT INTO `admin_operation_log` VALUES (302, 1, 'admin/orders/41/refund', 'POST', '127.0.0.1', '{\"agree\":false,\"reason\":\"123\",\"_token\":\"3omOm6x60nvtWfx5vDNgBQwcHDfocecnqUQMc8ct\"}', '2019-02-19 07:06:34', '2019-02-19 07:06:34');
INSERT INTO `admin_operation_log` VALUES (303, 1, 'admin/order/41', 'GET', '127.0.0.1', '[]', '2019-02-19 07:06:37', '2019-02-19 07:06:37');
INSERT INTO `admin_operation_log` VALUES (304, 1, 'admin/orders/41/refund', 'POST', '127.0.0.1', '{\"agree\":false,\"reason\":\"1233\",\"_token\":\"3omOm6x60nvtWfx5vDNgBQwcHDfocecnqUQMc8ct\"}', '2019-02-19 07:06:46', '2019-02-19 07:06:46');
INSERT INTO `admin_operation_log` VALUES (305, 1, 'admin/order/41', 'GET', '127.0.0.1', '[]', '2019-02-19 07:06:47', '2019-02-19 07:06:47');
INSERT INTO `admin_operation_log` VALUES (306, 1, 'admin/order/41', 'GET', '127.0.0.1', '[]', '2019-02-19 07:54:28', '2019-02-19 07:54:28');
INSERT INTO `admin_operation_log` VALUES (307, 1, 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-19 07:54:32', '2019-02-19 07:54:32');
INSERT INTO `admin_operation_log` VALUES (308, 1, 'admin/order', 'GET', '127.0.0.1', '[]', '2019-02-19 07:54:45', '2019-02-19 07:54:45');
INSERT INTO `admin_operation_log` VALUES (309, 1, 'admin/order/41', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-19 07:54:47', '2019-02-19 07:54:47');
INSERT INTO `admin_operation_log` VALUES (310, 1, 'admin/order/41', 'GET', '127.0.0.1', '[]', '2019-02-19 07:55:49', '2019-02-19 07:55:49');
INSERT INTO `admin_operation_log` VALUES (311, 1, 'admin/orders/41/refund', 'POST', '127.0.0.1', '{\"agree\":true,\"_token\":\"3omOm6x60nvtWfx5vDNgBQwcHDfocecnqUQMc8ct\"}', '2019-02-19 07:55:52', '2019-02-19 07:55:52');
INSERT INTO `admin_operation_log` VALUES (312, 1, 'admin/order/41', 'GET', '127.0.0.1', '[]', '2019-02-19 07:55:53', '2019-02-19 07:55:53');
INSERT INTO `admin_operation_log` VALUES (313, 1, 'admin/orders/41/refund', 'POST', '127.0.0.1', '{\"agree\":true,\"_token\":\"3omOm6x60nvtWfx5vDNgBQwcHDfocecnqUQMc8ct\"}', '2019-02-19 07:55:57', '2019-02-19 07:55:57');
INSERT INTO `admin_operation_log` VALUES (314, 1, 'admin/order/41', 'GET', '127.0.0.1', '[]', '2019-02-19 07:58:19', '2019-02-19 07:58:19');
INSERT INTO `admin_operation_log` VALUES (315, 1, 'admin/orders/41/refund', 'POST', '127.0.0.1', '{\"agree\":true,\"_token\":\"3omOm6x60nvtWfx5vDNgBQwcHDfocecnqUQMc8ct\"}', '2019-02-19 07:58:28', '2019-02-19 07:58:28');
INSERT INTO `admin_operation_log` VALUES (316, 1, 'admin/orders/41/refund', 'POST', '127.0.0.1', '{\"agree\":true,\"_token\":\"3omOm6x60nvtWfx5vDNgBQwcHDfocecnqUQMc8ct\"}', '2019-02-19 07:59:35', '2019-02-19 07:59:35');
INSERT INTO `admin_operation_log` VALUES (317, 1, 'admin/orders/41/refund', 'POST', '127.0.0.1', '{\"agree\":true,\"_token\":\"3omOm6x60nvtWfx5vDNgBQwcHDfocecnqUQMc8ct\"}', '2019-02-19 08:00:05', '2019-02-19 08:00:05');
INSERT INTO `admin_operation_log` VALUES (318, 1, 'admin/orders/41/refund', 'POST', '127.0.0.1', '{\"agree\":true,\"_token\":\"3omOm6x60nvtWfx5vDNgBQwcHDfocecnqUQMc8ct\"}', '2019-02-19 08:02:58', '2019-02-19 08:02:58');
INSERT INTO `admin_operation_log` VALUES (319, 1, 'admin/order/41', 'GET', '127.0.0.1', '[]', '2019-02-19 08:03:02', '2019-02-19 08:03:02');
INSERT INTO `admin_operation_log` VALUES (320, 1, 'admin/orders/41/refund', 'POST', '127.0.0.1', '{\"agree\":true,\"_token\":\"3omOm6x60nvtWfx5vDNgBQwcHDfocecnqUQMc8ct\"}', '2019-02-19 08:03:04', '2019-02-19 08:03:04');
INSERT INTO `admin_operation_log` VALUES (321, 1, 'admin/orders/41/refund', 'POST', '127.0.0.1', '{\"agree\":true,\"_token\":\"3omOm6x60nvtWfx5vDNgBQwcHDfocecnqUQMc8ct\"}', '2019-02-19 08:03:27', '2019-02-19 08:03:27');
INSERT INTO `admin_operation_log` VALUES (322, 1, 'admin/orders/41/refund', 'POST', '127.0.0.1', '{\"agree\":true,\"_token\":\"3omOm6x60nvtWfx5vDNgBQwcHDfocecnqUQMc8ct\"}', '2019-02-19 08:08:21', '2019-02-19 08:08:21');
INSERT INTO `admin_operation_log` VALUES (323, 1, 'admin/order/41', 'GET', '127.0.0.1', '[]', '2019-02-19 08:08:23', '2019-02-19 08:08:23');
INSERT INTO `admin_operation_log` VALUES (324, 1, 'admin/orders/41/refund', 'POST', '127.0.0.1', '{\"agree\":true,\"_token\":\"3omOm6x60nvtWfx5vDNgBQwcHDfocecnqUQMc8ct\"}', '2019-02-19 08:08:38', '2019-02-19 08:08:38');
INSERT INTO `admin_operation_log` VALUES (325, 1, 'admin/order/41', 'GET', '127.0.0.1', '[]', '2019-02-19 08:09:32', '2019-02-19 08:09:32');
INSERT INTO `admin_operation_log` VALUES (326, 1, 'admin/orders/41/refund', 'POST', '127.0.0.1', '{\"agree\":true,\"_token\":\"3omOm6x60nvtWfx5vDNgBQwcHDfocecnqUQMc8ct\"}', '2019-02-19 08:09:36', '2019-02-19 08:09:36');
INSERT INTO `admin_operation_log` VALUES (327, 1, 'admin/order/41', 'GET', '127.0.0.1', '[]', '2019-02-19 08:09:40', '2019-02-19 08:09:40');
INSERT INTO `admin_operation_log` VALUES (328, 1, 'admin/order/41', 'GET', '127.0.0.1', '[]', '2019-02-19 08:10:37', '2019-02-19 08:10:37');
INSERT INTO `admin_operation_log` VALUES (329, 1, 'admin/order/41', 'GET', '127.0.0.1', '[]', '2019-02-19 08:10:38', '2019-02-19 08:10:38');
INSERT INTO `admin_operation_log` VALUES (330, 1, 'admin/orders/41/refund', 'POST', '127.0.0.1', '{\"agree\":true,\"_token\":\"3omOm6x60nvtWfx5vDNgBQwcHDfocecnqUQMc8ct\"}', '2019-02-19 08:10:42', '2019-02-19 08:10:42');
INSERT INTO `admin_operation_log` VALUES (331, 1, 'admin/orders/41/refund', 'POST', '127.0.0.1', '{\"agree\":true,\"_token\":\"3omOm6x60nvtWfx5vDNgBQwcHDfocecnqUQMc8ct\"}', '2019-02-19 08:10:58', '2019-02-19 08:10:58');
INSERT INTO `admin_operation_log` VALUES (332, 1, 'admin/order/41', 'GET', '127.0.0.1', '[]', '2019-02-19 08:11:20', '2019-02-19 08:11:20');
INSERT INTO `admin_operation_log` VALUES (333, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-19 08:11:23', '2019-02-19 08:11:23');
INSERT INTO `admin_operation_log` VALUES (334, 1, 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-19 08:11:24', '2019-02-19 08:11:24');
INSERT INTO `admin_operation_log` VALUES (335, 1, 'admin/order/42', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-19 08:11:25', '2019-02-19 08:11:25');
INSERT INTO `admin_operation_log` VALUES (336, 1, 'admin/orders/42/refund', 'POST', '127.0.0.1', '{\"agree\":true,\"_token\":\"3omOm6x60nvtWfx5vDNgBQwcHDfocecnqUQMc8ct\"}', '2019-02-19 08:11:35', '2019-02-19 08:11:35');
INSERT INTO `admin_operation_log` VALUES (337, 1, 'admin/order/42', 'GET', '127.0.0.1', '[]', '2019-02-19 08:12:22', '2019-02-19 08:12:22');
INSERT INTO `admin_operation_log` VALUES (338, 1, 'admin/orders/42/refund', 'POST', '127.0.0.1', '{\"agree\":true,\"_token\":\"3omOm6x60nvtWfx5vDNgBQwcHDfocecnqUQMc8ct\"}', '2019-02-19 08:12:25', '2019-02-19 08:12:25');
INSERT INTO `admin_operation_log` VALUES (339, 1, 'admin/orders/42/refund', 'POST', '127.0.0.1', '{\"agree\":true,\"_token\":\"3omOm6x60nvtWfx5vDNgBQwcHDfocecnqUQMc8ct\"}', '2019-02-19 08:13:20', '2019-02-19 08:13:20');
INSERT INTO `admin_operation_log` VALUES (340, 1, 'admin/orders/42/refund', 'POST', '127.0.0.1', '{\"agree\":true,\"_token\":\"3omOm6x60nvtWfx5vDNgBQwcHDfocecnqUQMc8ct\"}', '2019-02-19 08:13:35', '2019-02-19 08:13:35');
INSERT INTO `admin_operation_log` VALUES (341, 1, 'admin/orders/42/refund', 'POST', '127.0.0.1', '{\"agree\":true,\"_token\":\"3omOm6x60nvtWfx5vDNgBQwcHDfocecnqUQMc8ct\"}', '2019-02-19 08:13:50', '2019-02-19 08:13:50');
INSERT INTO `admin_operation_log` VALUES (342, 1, 'admin/orders/42/refund', 'POST', '127.0.0.1', '{\"agree\":true,\"_token\":\"3omOm6x60nvtWfx5vDNgBQwcHDfocecnqUQMc8ct\"}', '2019-02-19 08:14:25', '2019-02-19 08:14:25');
INSERT INTO `admin_operation_log` VALUES (343, 1, 'admin/order/42', 'GET', '127.0.0.1', '[]', '2019-02-19 08:15:18', '2019-02-19 08:15:18');
INSERT INTO `admin_operation_log` VALUES (344, 1, 'admin/orders/42/refund', 'POST', '127.0.0.1', '{\"agree\":true,\"_token\":\"3omOm6x60nvtWfx5vDNgBQwcHDfocecnqUQMc8ct\"}', '2019-02-19 08:15:20', '2019-02-19 08:15:20');
INSERT INTO `admin_operation_log` VALUES (345, 1, 'admin/order/42', 'GET', '127.0.0.1', '[]', '2019-02-19 08:15:39', '2019-02-19 08:15:39');
INSERT INTO `admin_operation_log` VALUES (346, 1, 'admin/orders/42/refund', 'POST', '127.0.0.1', '{\"agree\":true,\"_token\":\"3omOm6x60nvtWfx5vDNgBQwcHDfocecnqUQMc8ct\"}', '2019-02-19 08:15:43', '2019-02-19 08:15:43');
INSERT INTO `admin_operation_log` VALUES (347, 1, 'admin/order/42', 'GET', '127.0.0.1', '[]', '2019-02-19 08:15:47', '2019-02-19 08:15:47');
INSERT INTO `admin_operation_log` VALUES (348, 1, 'admin/order/42', 'GET', '127.0.0.1', '[]', '2019-02-19 08:15:58', '2019-02-19 08:15:58');
INSERT INTO `admin_operation_log` VALUES (349, 1, 'admin/orders/42/refund', 'POST', '127.0.0.1', '{\"agree\":true,\"_token\":\"3omOm6x60nvtWfx5vDNgBQwcHDfocecnqUQMc8ct\"}', '2019-02-19 08:16:06', '2019-02-19 08:16:06');
INSERT INTO `admin_operation_log` VALUES (350, 1, 'admin/order/42', 'GET', '127.0.0.1', '[]', '2019-02-19 08:16:27', '2019-02-19 08:16:27');
INSERT INTO `admin_operation_log` VALUES (351, 1, 'admin/orders/42/refund', 'POST', '127.0.0.1', '{\"agree\":true,\"_token\":\"3omOm6x60nvtWfx5vDNgBQwcHDfocecnqUQMc8ct\"}', '2019-02-19 08:16:35', '2019-02-19 08:16:35');
INSERT INTO `admin_operation_log` VALUES (352, 1, 'admin/orders/42/refund', 'POST', '127.0.0.1', '{\"agree\":true,\"_token\":\"3omOm6x60nvtWfx5vDNgBQwcHDfocecnqUQMc8ct\"}', '2019-02-19 08:17:01', '2019-02-19 08:17:01');
INSERT INTO `admin_operation_log` VALUES (353, 1, 'admin/order/42', 'GET', '127.0.0.1', '[]', '2019-02-19 08:17:18', '2019-02-19 08:17:18');
INSERT INTO `admin_operation_log` VALUES (354, 1, 'admin/orders/42/refund', 'POST', '127.0.0.1', '{\"agree\":true,\"_token\":\"3omOm6x60nvtWfx5vDNgBQwcHDfocecnqUQMc8ct\"}', '2019-02-19 08:17:22', '2019-02-19 08:17:22');
INSERT INTO `admin_operation_log` VALUES (355, 1, 'admin/order/42', 'GET', '127.0.0.1', '[]', '2019-02-19 08:17:42', '2019-02-19 08:17:42');
INSERT INTO `admin_operation_log` VALUES (356, 1, 'admin/orders/42/refund', 'POST', '127.0.0.1', '{\"agree\":true,\"_token\":\"3omOm6x60nvtWfx5vDNgBQwcHDfocecnqUQMc8ct\"}', '2019-02-19 08:17:46', '2019-02-19 08:17:46');
INSERT INTO `admin_operation_log` VALUES (357, 1, 'admin/order/42', 'GET', '127.0.0.1', '[]', '2019-02-19 08:18:00', '2019-02-19 08:18:00');
INSERT INTO `admin_operation_log` VALUES (358, 1, 'admin/orders/42/refund', 'POST', '127.0.0.1', '{\"agree\":true,\"_token\":\"3omOm6x60nvtWfx5vDNgBQwcHDfocecnqUQMc8ct\"}', '2019-02-19 08:18:04', '2019-02-19 08:18:04');
INSERT INTO `admin_operation_log` VALUES (359, 1, 'admin/orders/42/refund', 'POST', '127.0.0.1', '{\"agree\":true,\"_token\":\"3omOm6x60nvtWfx5vDNgBQwcHDfocecnqUQMc8ct\"}', '2019-02-19 08:18:21', '2019-02-19 08:18:21');
INSERT INTO `admin_operation_log` VALUES (360, 1, 'admin/orders/42/refund', 'POST', '127.0.0.1', '{\"agree\":true,\"_token\":\"3omOm6x60nvtWfx5vDNgBQwcHDfocecnqUQMc8ct\"}', '2019-02-19 08:18:39', '2019-02-19 08:18:39');
INSERT INTO `admin_operation_log` VALUES (361, 1, 'admin/order/42', 'GET', '127.0.0.1', '[]', '2019-02-19 08:18:51', '2019-02-19 08:18:51');
INSERT INTO `admin_operation_log` VALUES (362, 1, 'admin/orders/42/refund', 'POST', '127.0.0.1', '{\"agree\":true,\"_token\":\"3omOm6x60nvtWfx5vDNgBQwcHDfocecnqUQMc8ct\"}', '2019-02-19 08:18:59', '2019-02-19 08:18:59');
INSERT INTO `admin_operation_log` VALUES (363, 1, 'admin/order/42', 'GET', '127.0.0.1', '[]', '2019-02-19 08:19:25', '2019-02-19 08:19:25');
INSERT INTO `admin_operation_log` VALUES (364, 1, 'admin/orders/42/refund', 'POST', '127.0.0.1', '{\"agree\":true,\"_token\":\"3omOm6x60nvtWfx5vDNgBQwcHDfocecnqUQMc8ct\"}', '2019-02-19 08:19:27', '2019-02-19 08:19:27');
INSERT INTO `admin_operation_log` VALUES (365, 1, 'admin/order/42', 'GET', '127.0.0.1', '[]', '2019-02-19 08:19:42', '2019-02-19 08:19:42');
INSERT INTO `admin_operation_log` VALUES (366, 1, 'admin/orders/42/refund', 'POST', '127.0.0.1', '{\"agree\":true,\"_token\":\"3omOm6x60nvtWfx5vDNgBQwcHDfocecnqUQMc8ct\"}', '2019-02-19 08:20:31', '2019-02-19 08:20:31');
INSERT INTO `admin_operation_log` VALUES (367, 1, 'admin/order/42', 'GET', '127.0.0.1', '[]', '2019-02-19 08:20:39', '2019-02-19 08:20:39');
INSERT INTO `admin_operation_log` VALUES (368, 1, 'admin/orders/42/refund', 'POST', '127.0.0.1', '{\"agree\":true,\"_token\":\"3omOm6x60nvtWfx5vDNgBQwcHDfocecnqUQMc8ct\"}', '2019-02-19 08:20:42', '2019-02-19 08:20:42');
INSERT INTO `admin_operation_log` VALUES (369, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-19 08:21:46', '2019-02-19 08:21:46');
INSERT INTO `admin_operation_log` VALUES (370, 1, 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-19 08:21:47', '2019-02-19 08:21:47');
INSERT INTO `admin_operation_log` VALUES (371, 1, 'admin/order/40', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-19 08:21:51', '2019-02-19 08:21:51');
INSERT INTO `admin_operation_log` VALUES (372, 1, 'admin/orders/40/refund', 'POST', '127.0.0.1', '{\"agree\":true,\"_token\":\"3omOm6x60nvtWfx5vDNgBQwcHDfocecnqUQMc8ct\"}', '2019-02-19 08:21:54', '2019-02-19 08:21:54');
INSERT INTO `admin_operation_log` VALUES (373, 1, 'admin/order/40', 'GET', '127.0.0.1', '[]', '2019-02-19 08:22:32', '2019-02-19 08:22:32');
INSERT INTO `admin_operation_log` VALUES (374, 1, 'admin/orders/40/refund', 'POST', '127.0.0.1', '{\"agree\":true,\"_token\":\"3omOm6x60nvtWfx5vDNgBQwcHDfocecnqUQMc8ct\"}', '2019-02-19 08:22:37', '2019-02-19 08:22:37');
INSERT INTO `admin_operation_log` VALUES (375, 1, 'admin/order/40', 'GET', '127.0.0.1', '[]', '2019-02-19 08:24:47', '2019-02-19 08:24:47');
INSERT INTO `admin_operation_log` VALUES (376, 1, 'admin/order/40', 'GET', '127.0.0.1', '[]', '2019-02-19 08:24:52', '2019-02-19 08:24:52');
INSERT INTO `admin_operation_log` VALUES (377, 1, 'admin/orders/40/refund', 'POST', '127.0.0.1', '{\"agree\":true,\"_token\":\"3omOm6x60nvtWfx5vDNgBQwcHDfocecnqUQMc8ct\"}', '2019-02-19 08:24:58', '2019-02-19 08:24:58');
INSERT INTO `admin_operation_log` VALUES (378, 1, 'admin/orders/40/refund', 'POST', '127.0.0.1', '{\"agree\":true,\"_token\":\"3omOm6x60nvtWfx5vDNgBQwcHDfocecnqUQMc8ct\"}', '2019-02-19 08:26:07', '2019-02-19 08:26:07');
INSERT INTO `admin_operation_log` VALUES (379, 1, 'admin/order/40', 'GET', '127.0.0.1', '[]', '2019-02-19 08:26:39', '2019-02-19 08:26:39');
INSERT INTO `admin_operation_log` VALUES (380, 1, 'admin/order/40', 'GET', '127.0.0.1', '[]', '2019-02-19 08:26:53', '2019-02-19 08:26:53');
INSERT INTO `admin_operation_log` VALUES (381, 1, 'admin/orders/40/refund', 'POST', '127.0.0.1', '{\"agree\":true,\"_token\":\"3omOm6x60nvtWfx5vDNgBQwcHDfocecnqUQMc8ct\"}', '2019-02-19 08:26:57', '2019-02-19 08:26:57');
INSERT INTO `admin_operation_log` VALUES (382, 1, 'admin/order/40', 'GET', '127.0.0.1', '[]', '2019-02-19 08:28:33', '2019-02-19 08:28:33');
INSERT INTO `admin_operation_log` VALUES (383, 1, 'admin/order/40', 'GET', '127.0.0.1', '[]', '2019-02-19 08:28:34', '2019-02-19 08:28:34');
INSERT INTO `admin_operation_log` VALUES (384, 1, 'admin/order/40', 'GET', '127.0.0.1', '[]', '2019-02-19 08:28:41', '2019-02-19 08:28:41');
INSERT INTO `admin_operation_log` VALUES (385, 1, 'admin/order/40', 'GET', '127.0.0.1', '[]', '2019-02-19 08:29:50', '2019-02-19 08:29:50');
INSERT INTO `admin_operation_log` VALUES (386, 1, 'admin/order/40', 'GET', '127.0.0.1', '[]', '2019-02-19 08:29:55', '2019-02-19 08:29:55');
INSERT INTO `admin_operation_log` VALUES (387, 1, 'admin/order/40', 'GET', '127.0.0.1', '[]', '2019-02-19 08:30:12', '2019-02-19 08:30:12');
INSERT INTO `admin_operation_log` VALUES (388, 1, 'admin/order/40', 'GET', '127.0.0.1', '[]', '2019-02-19 08:30:38', '2019-02-19 08:30:38');
INSERT INTO `admin_operation_log` VALUES (389, 1, 'admin/orders/40/refund', 'POST', '127.0.0.1', '{\"agree\":true,\"_token\":\"3omOm6x60nvtWfx5vDNgBQwcHDfocecnqUQMc8ct\"}', '2019-02-19 08:31:43', '2019-02-19 08:31:43');
INSERT INTO `admin_operation_log` VALUES (390, 1, 'admin/order/40', 'GET', '127.0.0.1', '[]', '2019-02-19 08:32:21', '2019-02-19 08:32:21');
INSERT INTO `admin_operation_log` VALUES (391, 1, 'admin/orders/40/refund', 'POST', '127.0.0.1', '{\"agree\":true,\"_token\":\"3omOm6x60nvtWfx5vDNgBQwcHDfocecnqUQMc8ct\"}', '2019-02-19 08:32:24', '2019-02-19 08:32:24');
INSERT INTO `admin_operation_log` VALUES (392, 1, 'admin/order/40', 'GET', '127.0.0.1', '[]', '2019-02-19 08:34:09', '2019-02-19 08:34:09');
INSERT INTO `admin_operation_log` VALUES (393, 1, 'admin/orders/40/refund', 'POST', '127.0.0.1', '{\"agree\":true,\"_token\":\"3omOm6x60nvtWfx5vDNgBQwcHDfocecnqUQMc8ct\"}', '2019-02-19 08:34:13', '2019-02-19 08:34:13');
INSERT INTO `admin_operation_log` VALUES (394, 1, 'admin/order/40', 'GET', '127.0.0.1', '[]', '2019-02-19 08:34:16', '2019-02-19 08:34:16');
INSERT INTO `admin_operation_log` VALUES (395, 1, 'admin/order/40', 'GET', '127.0.0.1', '[]', '2019-02-19 08:34:37', '2019-02-19 08:34:37');
INSERT INTO `admin_operation_log` VALUES (396, 1, 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-19 08:34:53', '2019-02-19 08:34:53');
INSERT INTO `admin_operation_log` VALUES (397, 1, 'admin/order', 'GET', '127.0.0.1', '[]', '2019-02-19 08:34:57', '2019-02-19 08:34:57');
INSERT INTO `admin_operation_log` VALUES (398, 1, 'admin/order/42', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-19 08:35:00', '2019-02-19 08:35:00');
INSERT INTO `admin_operation_log` VALUES (399, 1, 'admin/orders/42/refund', 'POST', '127.0.0.1', '{\"agree\":true,\"_token\":\"3omOm6x60nvtWfx5vDNgBQwcHDfocecnqUQMc8ct\"}', '2019-02-19 08:35:03', '2019-02-19 08:35:03');
INSERT INTO `admin_operation_log` VALUES (400, 1, 'admin/orders/42/refund', 'POST', '127.0.0.1', '{\"agree\":true,\"_token\":\"3omOm6x60nvtWfx5vDNgBQwcHDfocecnqUQMc8ct\"}', '2019-02-19 08:35:54', '2019-02-19 08:35:54');
INSERT INTO `admin_operation_log` VALUES (401, 1, 'admin/order/42', 'GET', '127.0.0.1', '[]', '2019-02-19 08:36:13', '2019-02-19 08:36:13');
INSERT INTO `admin_operation_log` VALUES (402, 1, 'admin/orders/42/refund', 'POST', '127.0.0.1', '{\"agree\":true,\"_token\":\"3omOm6x60nvtWfx5vDNgBQwcHDfocecnqUQMc8ct\"}', '2019-02-19 08:36:18', '2019-02-19 08:36:18');
INSERT INTO `admin_operation_log` VALUES (403, 1, 'admin/order/42', 'GET', '127.0.0.1', '[]', '2019-02-19 09:17:27', '2019-02-19 09:17:27');
INSERT INTO `admin_operation_log` VALUES (404, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-19 09:17:33', '2019-02-19 09:17:33');
INSERT INTO `admin_operation_log` VALUES (405, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u4f18\\u60e0\\u5377\\u7ba1\\u7406\",\"icon\":\"fa-\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"3omOm6x60nvtWfx5vDNgBQwcHDfocecnqUQMc8ct\"}', '2019-02-19 09:18:08', '2019-02-19 09:18:08');
INSERT INTO `admin_operation_log` VALUES (406, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-02-19 09:18:08', '2019-02-19 09:18:08');
INSERT INTO `admin_operation_log` VALUES (407, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":null,\"icon\":\"fa-tags\",\"uri\":\"\\/coupon_codes\",\"roles\":[null],\"permission\":null,\"_token\":\"3omOm6x60nvtWfx5vDNgBQwcHDfocecnqUQMc8ct\"}', '2019-02-19 09:18:33', '2019-02-19 09:18:33');
INSERT INTO `admin_operation_log` VALUES (408, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-02-19 09:18:34', '2019-02-19 09:18:34');
INSERT INTO `admin_operation_log` VALUES (409, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"3omOm6x60nvtWfx5vDNgBQwcHDfocecnqUQMc8ct\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":8},{\\\"id\\\":9},{\\\"id\\\":11},{\\\"id\\\":10},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2019-02-19 09:18:40', '2019-02-19 09:18:40');
INSERT INTO `admin_operation_log` VALUES (410, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-19 09:18:40', '2019-02-19 09:18:40');
INSERT INTO `admin_operation_log` VALUES (411, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-02-19 09:18:42', '2019-02-19 09:18:42');
INSERT INTO `admin_operation_log` VALUES (412, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-02-19 09:18:45', '2019-02-19 09:18:45');
INSERT INTO `admin_operation_log` VALUES (413, 1, 'admin/auth/menu/11/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-19 09:18:52', '2019-02-19 09:18:52');
INSERT INTO `admin_operation_log` VALUES (414, 1, 'admin/auth/menu/11', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u4f18\\u60e0\\u5377\\u7ba1\\u7406\",\"icon\":\"fa-tags\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"3omOm6x60nvtWfx5vDNgBQwcHDfocecnqUQMc8ct\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shop.test\\/admin\\/auth\\/menu\"}', '2019-02-19 09:19:02', '2019-02-19 09:19:02');
INSERT INTO `admin_operation_log` VALUES (415, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-02-19 09:19:02', '2019-02-19 09:19:02');
INSERT INTO `admin_operation_log` VALUES (416, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-02-19 09:19:04', '2019-02-19 09:19:04');
INSERT INTO `admin_operation_log` VALUES (417, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-19 09:19:05', '2019-02-19 09:19:05');
INSERT INTO `admin_operation_log` VALUES (418, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-19 09:19:07', '2019-02-19 09:19:07');
INSERT INTO `admin_operation_log` VALUES (419, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-19 09:19:12', '2019-02-19 09:19:12');
INSERT INTO `admin_operation_log` VALUES (420, 1, 'admin/auth/menu/11/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-19 09:19:16', '2019-02-19 09:19:16');
INSERT INTO `admin_operation_log` VALUES (421, 1, 'admin/auth/menu/11', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u4f18\\u60e0\\u5377\\u7ba1\\u7406\",\"icon\":\"fa-tags\",\"uri\":\"\\/coupon_codes\",\"roles\":[null],\"permission\":null,\"_token\":\"3omOm6x60nvtWfx5vDNgBQwcHDfocecnqUQMc8ct\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shop.test\\/admin\\/auth\\/menu\"}', '2019-02-19 09:19:21', '2019-02-19 09:19:21');
INSERT INTO `admin_operation_log` VALUES (422, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-02-19 09:19:21', '2019-02-19 09:19:21');
INSERT INTO `admin_operation_log` VALUES (423, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-19 09:19:23', '2019-02-19 09:19:23');
INSERT INTO `admin_operation_log` VALUES (424, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-02-19 09:19:24', '2019-02-19 09:19:24');
INSERT INTO `admin_operation_log` VALUES (425, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-02-19 09:19:25', '2019-02-19 09:19:25');
INSERT INTO `admin_operation_log` VALUES (426, 1, 'admin/coupon_codes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-19 09:19:26', '2019-02-19 09:19:26');
INSERT INTO `admin_operation_log` VALUES (427, 1, 'admin/coupon_codes', 'GET', '127.0.0.1', '[]', '2019-02-19 09:27:36', '2019-02-19 09:27:36');
INSERT INTO `admin_operation_log` VALUES (428, 1, 'admin/coupon_codes', 'GET', '127.0.0.1', '[]', '2019-02-19 09:27:41', '2019-02-19 09:27:41');
INSERT INTO `admin_operation_log` VALUES (429, 1, 'admin/coupon_codes', 'GET', '127.0.0.1', '[]', '2019-02-19 09:28:26', '2019-02-19 09:28:26');
INSERT INTO `admin_operation_log` VALUES (430, 1, 'admin/coupon_codes', 'GET', '127.0.0.1', '[]', '2019-02-19 09:36:02', '2019-02-19 09:36:02');
INSERT INTO `admin_operation_log` VALUES (431, 1, 'admin/coupon_codes', 'GET', '127.0.0.1', '[]', '2019-02-19 09:36:41', '2019-02-19 09:36:41');
INSERT INTO `admin_operation_log` VALUES (432, 1, 'admin/coupon_codes', 'GET', '127.0.0.1', '[]', '2019-02-19 09:36:43', '2019-02-19 09:36:43');
INSERT INTO `admin_operation_log` VALUES (433, 1, 'admin/coupon_codes', 'GET', '127.0.0.1', '[]', '2019-02-19 09:38:55', '2019-02-19 09:38:55');
INSERT INTO `admin_operation_log` VALUES (434, 1, 'admin/coupon_codes', 'GET', '127.0.0.1', '[]', '2019-02-19 09:39:23', '2019-02-19 09:39:23');
INSERT INTO `admin_operation_log` VALUES (435, 1, 'admin/coupon_codes', 'GET', '127.0.0.1', '[]', '2019-02-19 09:41:23', '2019-02-19 09:41:23');
INSERT INTO `admin_operation_log` VALUES (436, 1, 'admin/coupon_codes', 'GET', '127.0.0.1', '[]', '2019-02-19 09:50:41', '2019-02-19 09:50:41');
INSERT INTO `admin_operation_log` VALUES (437, 1, 'admin/coupon_codes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-19 09:50:44', '2019-02-19 09:50:44');
INSERT INTO `admin_operation_log` VALUES (438, 1, 'admin/coupon_codes', 'POST', '127.0.0.1', '{\"name\":null,\"code\":null,\"value\":null,\"total\":null,\"min_amount\":null,\"not_before\":null,\"not_after\":null,\"enabled\":\"0\",\"_token\":\"3omOm6x60nvtWfx5vDNgBQwcHDfocecnqUQMc8ct\",\"_previous_\":\"http:\\/\\/shop.test\\/admin\\/coupon_codes\"}', '2019-02-19 09:50:50', '2019-02-19 09:50:50');
INSERT INTO `admin_operation_log` VALUES (439, 1, 'admin/coupon_codes/create', 'GET', '127.0.0.1', '[]', '2019-02-19 09:50:51', '2019-02-19 09:50:51');
INSERT INTO `admin_operation_log` VALUES (440, 1, 'admin/coupon_codes', 'POST', '127.0.0.1', '{\"name\":\"aut beatae eos\",\"code\":null,\"value\":null,\"total\":null,\"min_amount\":null,\"not_before\":null,\"not_after\":null,\"enabled\":\"0\",\"_token\":\"3omOm6x60nvtWfx5vDNgBQwcHDfocecnqUQMc8ct\"}', '2019-02-19 09:50:58', '2019-02-19 09:50:58');
INSERT INTO `admin_operation_log` VALUES (441, 1, 'admin/coupon_codes/create', 'GET', '127.0.0.1', '[]', '2019-02-19 09:50:58', '2019-02-19 09:50:58');
INSERT INTO `admin_operation_log` VALUES (442, 1, 'admin/coupon_codes', 'POST', '127.0.0.1', '{\"name\":\"aut beatae eos\",\"code\":\"4919\",\"type\":\"fixed\",\"value\":\"25\",\"total\":\"10\",\"min_amount\":\"15\",\"not_before\":\"2019-02-19 00:00:00\",\"not_after\":\"2019-02-20 00:00:00\",\"enabled\":\"1\",\"_token\":\"3omOm6x60nvtWfx5vDNgBQwcHDfocecnqUQMc8ct\"}', '2019-02-19 09:51:20', '2019-02-19 09:51:20');
INSERT INTO `admin_operation_log` VALUES (443, 1, 'admin/coupon_codes/create', 'GET', '127.0.0.1', '[]', '2019-02-19 09:51:20', '2019-02-19 09:51:20');
INSERT INTO `admin_operation_log` VALUES (444, 1, 'admin/coupon_codes', 'POST', '127.0.0.1', '{\"name\":\"aut beatae eos\",\"code\":\"4919\",\"type\":\"fixed\",\"value\":\"25\",\"total\":\"10\",\"min_amount\":\"15\",\"not_before\":\"2019-02-19 00:00:00\",\"not_after\":\"2019-02-20 00:00:00\",\"enabled\":\"1\",\"_token\":\"3omOm6x60nvtWfx5vDNgBQwcHDfocecnqUQMc8ct\"}', '2019-02-19 09:52:37', '2019-02-19 09:52:37');
INSERT INTO `admin_operation_log` VALUES (445, 1, 'admin/coupon_codes/create', 'GET', '127.0.0.1', '[]', '2019-02-19 09:52:37', '2019-02-19 09:52:37');
INSERT INTO `admin_operation_log` VALUES (446, 1, 'admin/coupon_codes', 'POST', '127.0.0.1', '{\"name\":\"aut beatae eos\",\"code\":\"4919\",\"type\":\"fixed\",\"value\":\"25\",\"total\":\"10\",\"min_amount\":\"15\",\"not_before\":\"2019-02-18 23:59:59\",\"not_after\":\"2019-02-20 00:00:00\",\"enabled\":\"1\",\"_token\":\"3omOm6x60nvtWfx5vDNgBQwcHDfocecnqUQMc8ct\"}', '2019-02-19 09:53:10', '2019-02-19 09:53:10');
INSERT INTO `admin_operation_log` VALUES (447, 1, 'admin/coupon_codes/create', 'GET', '127.0.0.1', '[]', '2019-02-19 09:53:10', '2019-02-19 09:53:10');
INSERT INTO `admin_operation_log` VALUES (448, 1, 'admin/coupon_codes', 'POST', '127.0.0.1', '{\"name\":\"aut beatae eos\",\"code\":\"4919\",\"type\":\"fixed\",\"value\":\"25\",\"total\":\"10\",\"min_amount\":\"15\",\"not_before\":\"2019-02-18 23:59:59\",\"not_after\":\"2019-02-20 00:00:01\",\"enabled\":\"1\",\"_token\":\"3omOm6x60nvtWfx5vDNgBQwcHDfocecnqUQMc8ct\"}', '2019-02-19 09:53:20', '2019-02-19 09:53:20');
INSERT INTO `admin_operation_log` VALUES (449, 1, 'admin/coupon_codes/create', 'GET', '127.0.0.1', '[]', '2019-02-19 09:53:20', '2019-02-19 09:53:20');
INSERT INTO `admin_operation_log` VALUES (450, 1, 'admin/coupon_codes', 'GET', '127.0.0.1', '[]', '2019-02-19 10:01:30', '2019-02-19 10:01:30');
INSERT INTO `admin_operation_log` VALUES (451, 1, 'admin/coupon_codes', 'GET', '127.0.0.1', '[]', '2019-02-19 10:01:32', '2019-02-19 10:01:32');
INSERT INTO `admin_operation_log` VALUES (452, 1, 'admin/coupon_codes', 'POST', '127.0.0.1', '{\"name\":\"aut beatae eos\",\"code\":\"4919\",\"type\":\"fixed\",\"value\":\"25\",\"total\":\"10\",\"min_amount\":\"15\",\"not_before\":\"2019-02-18 23:59:59\",\"not_after\":\"2019-02-20 00:00:01\",\"enabled\":\"1\",\"_token\":\"3omOm6x60nvtWfx5vDNgBQwcHDfocecnqUQMc8ct\"}', '2019-02-19 10:01:35', '2019-02-19 10:01:35');
INSERT INTO `admin_operation_log` VALUES (453, 1, 'admin/coupon_codes', 'GET', '127.0.0.1', '[]', '2019-02-19 10:01:35', '2019-02-19 10:01:35');
INSERT INTO `admin_operation_log` VALUES (454, 1, 'admin/coupon_codes', 'GET', '127.0.0.1', '[]', '2019-02-19 10:01:36', '2019-02-19 10:01:36');
INSERT INTO `admin_operation_log` VALUES (455, 1, 'admin/coupon_codes', 'GET', '127.0.0.1', '[]', '2019-02-19 10:01:37', '2019-02-19 10:01:37');
INSERT INTO `admin_operation_log` VALUES (456, 1, 'admin/coupon_codes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-19 10:01:41', '2019-02-19 10:01:41');
INSERT INTO `admin_operation_log` VALUES (457, 1, 'admin/coupon_codes', 'POST', '127.0.0.1', '{\"name\":\"aut beatae eos\",\"code\":\"4919\",\"type\":\"fixed\",\"value\":\"25\",\"total\":\"10\",\"min_amount\":\"12\",\"not_before\":\"2019-02-19 00:00:00\",\"not_after\":\"2019-02-28 00:00:00\",\"enabled\":\"1\",\"_token\":\"3omOm6x60nvtWfx5vDNgBQwcHDfocecnqUQMc8ct\",\"_previous_\":\"http:\\/\\/shop.test\\/admin\\/coupon_codes\"}', '2019-02-19 10:02:03', '2019-02-19 10:02:03');
INSERT INTO `admin_operation_log` VALUES (458, 1, 'admin/coupon_codes/create', 'GET', '127.0.0.1', '[]', '2019-02-19 10:02:03', '2019-02-19 10:02:03');
INSERT INTO `admin_operation_log` VALUES (459, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2019-02-20 01:30:57', '2019-02-20 01:30:57');
INSERT INTO `admin_operation_log` VALUES (460, 1, 'admin/coupon_codes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-20 01:31:00', '2019-02-20 01:31:00');
INSERT INTO `admin_operation_log` VALUES (461, 1, 'admin/coupon_codes/11/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-20 01:31:03', '2019-02-20 01:31:03');
INSERT INTO `admin_operation_log` VALUES (462, 1, 'admin/coupon_codes', 'GET', '127.0.0.1', '[]', '2019-02-20 01:31:03', '2019-02-20 01:31:03');
INSERT INTO `admin_operation_log` VALUES (463, 1, 'admin/coupon_codes/11/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-20 01:31:39', '2019-02-20 01:31:39');
INSERT INTO `admin_operation_log` VALUES (464, 1, 'admin/coupon_codes', 'GET', '127.0.0.1', '[]', '2019-02-20 01:31:39', '2019-02-20 01:31:39');
INSERT INTO `admin_operation_log` VALUES (465, 1, 'admin/coupon_codes', 'GET', '127.0.0.1', '[]', '2019-02-20 01:31:40', '2019-02-20 01:31:40');
INSERT INTO `admin_operation_log` VALUES (466, 1, 'admin/coupon_codes', 'GET', '127.0.0.1', '[]', '2019-02-20 01:31:41', '2019-02-20 01:31:41');
INSERT INTO `admin_operation_log` VALUES (467, 1, 'admin/coupon_codes/11/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-20 01:31:43', '2019-02-20 01:31:43');
INSERT INTO `admin_operation_log` VALUES (468, 1, 'admin/coupon_codes', 'GET', '127.0.0.1', '[]', '2019-02-20 01:31:43', '2019-02-20 01:31:43');
INSERT INTO `admin_operation_log` VALUES (469, 1, 'admin/coupon_codes/11/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-20 01:32:33', '2019-02-20 01:32:33');
INSERT INTO `admin_operation_log` VALUES (470, 1, 'admin/coupon_codes', 'GET', '127.0.0.1', '[]', '2019-02-20 01:32:34', '2019-02-20 01:32:34');
INSERT INTO `admin_operation_log` VALUES (471, 1, 'admin/coupon_codes', 'GET', '127.0.0.1', '[]', '2019-02-20 01:32:35', '2019-02-20 01:32:35');
INSERT INTO `admin_operation_log` VALUES (472, 1, 'admin/coupon_codes', 'GET', '127.0.0.1', '[]', '2019-02-20 01:32:35', '2019-02-20 01:32:35');
INSERT INTO `admin_operation_log` VALUES (473, 1, 'admin/coupon_codes/11/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-20 01:32:37', '2019-02-20 01:32:37');
INSERT INTO `admin_operation_log` VALUES (474, 1, 'admin/coupon_codes', 'GET', '127.0.0.1', '[]', '2019-02-20 01:32:37', '2019-02-20 01:32:37');
INSERT INTO `admin_operation_log` VALUES (475, 1, 'admin/coupon_codes', 'GET', '127.0.0.1', '[]', '2019-02-20 01:34:52', '2019-02-20 01:34:52');
INSERT INTO `admin_operation_log` VALUES (476, 1, 'admin/coupon_codes/11/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-20 01:34:53', '2019-02-20 01:34:53');
INSERT INTO `admin_operation_log` VALUES (477, 1, 'admin/coupon_codes', 'GET', '127.0.0.1', '[]', '2019-02-20 01:34:53', '2019-02-20 01:34:53');
INSERT INTO `admin_operation_log` VALUES (478, 1, 'admin/coupon_codes', 'GET', '127.0.0.1', '[]', '2019-02-20 01:35:56', '2019-02-20 01:35:56');
INSERT INTO `admin_operation_log` VALUES (479, 1, 'admin/coupon_codes/11/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-20 01:35:58', '2019-02-20 01:35:58');
INSERT INTO `admin_operation_log` VALUES (480, 1, 'admin/coupon_codes', 'GET', '127.0.0.1', '[]', '2019-02-20 01:35:59', '2019-02-20 01:35:59');
INSERT INTO `admin_operation_log` VALUES (481, 1, 'admin/coupon_codes/11/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-20 01:36:26', '2019-02-20 01:36:26');
INSERT INTO `admin_operation_log` VALUES (482, 1, 'admin/coupon_codes/11', 'PUT', '127.0.0.1', '{\"name\":\"aut beatae eos\",\"code\":\"4919\",\"type\":\"fixed\",\"value\":\"26.00\",\"total\":\"10\",\"min_amount\":\"15.00\",\"not_before\":\"2019-02-18 23:59:59\",\"not_after\":\"2019-02-20 00:00:01\",\"enabled\":\"1\",\"_token\":\"WxqmSr9EhNmeZY7sIZv11VeaMXqvh4nWKYBEXG8I\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shop.test\\/admin\\/coupon_codes\"}', '2019-02-20 01:36:52', '2019-02-20 01:36:52');
INSERT INTO `admin_operation_log` VALUES (483, 1, 'admin/coupon_codes/11/edit', 'GET', '127.0.0.1', '[]', '2019-02-20 01:36:52', '2019-02-20 01:36:52');
INSERT INTO `admin_operation_log` VALUES (484, 1, 'admin/coupon_codes/11', 'PUT', '127.0.0.1', '{\"name\":\"aut beatae eos\",\"code\":\"4919\",\"type\":\"fixed\",\"value\":\"26.00\",\"total\":\"10\",\"min_amount\":\"15.00\",\"not_before\":\"2019-02-18 23:59:59\",\"not_after\":\"2019-02-20 00:00:01\",\"enabled\":\"1\",\"_token\":\"WxqmSr9EhNmeZY7sIZv11VeaMXqvh4nWKYBEXG8I\",\"_method\":\"PUT\"}', '2019-02-20 01:43:32', '2019-02-20 01:43:32');
INSERT INTO `admin_operation_log` VALUES (485, 1, 'admin/coupon_codes', 'GET', '127.0.0.1', '[]', '2019-02-20 01:43:32', '2019-02-20 01:43:32');
INSERT INTO `admin_operation_log` VALUES (486, 1, 'admin/coupon_codes/11/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-20 01:43:36', '2019-02-20 01:43:36');
INSERT INTO `admin_operation_log` VALUES (487, 1, 'admin/coupon_codes/11/edit', 'GET', '127.0.0.1', '[]', '2019-02-20 01:43:40', '2019-02-20 01:43:40');
INSERT INTO `admin_operation_log` VALUES (488, 1, 'admin/coupon_codes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-20 01:43:42', '2019-02-20 01:43:42');
INSERT INTO `admin_operation_log` VALUES (489, 1, 'admin/coupon_codes/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-20 01:43:44', '2019-02-20 01:43:44');
INSERT INTO `admin_operation_log` VALUES (490, 1, 'admin/coupon_codes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-20 01:43:46', '2019-02-20 01:43:46');
INSERT INTO `admin_operation_log` VALUES (491, 1, 'admin/coupon_codes/11/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-20 01:43:47', '2019-02-20 01:43:47');
INSERT INTO `admin_operation_log` VALUES (492, 1, 'admin/coupon_codes/11/edit', 'GET', '127.0.0.1', '[]', '2019-02-20 01:43:49', '2019-02-20 01:43:49');
INSERT INTO `admin_operation_log` VALUES (493, 1, 'admin/coupon_codes/11', 'PUT', '127.0.0.1', '{\"_token\":\"WxqmSr9EhNmeZY7sIZv11VeaMXqvh4nWKYBEXG8I\",\"_method\":\"PUT\"}', '2019-02-20 01:43:50', '2019-02-20 01:43:50');
INSERT INTO `admin_operation_log` VALUES (494, 1, 'admin/coupon_codes', 'GET', '127.0.0.1', '[]', '2019-02-20 01:43:50', '2019-02-20 01:43:50');
INSERT INTO `admin_operation_log` VALUES (495, 1, 'admin/coupon_codes', 'GET', '127.0.0.1', '[]', '2019-02-20 01:43:52', '2019-02-20 01:43:52');
INSERT INTO `admin_operation_log` VALUES (496, 1, 'admin/coupon_codes', 'GET', '127.0.0.1', '[]', '2019-02-20 01:43:52', '2019-02-20 01:43:52');
INSERT INTO `admin_operation_log` VALUES (497, 1, 'admin/coupon_codes/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-20 01:43:54', '2019-02-20 01:43:54');
INSERT INTO `admin_operation_log` VALUES (498, 1, 'admin/coupon_codes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-20 01:44:02', '2019-02-20 01:44:02');
INSERT INTO `admin_operation_log` VALUES (499, 1, 'admin/coupon_codes', 'GET', '127.0.0.1', '[]', '2019-02-20 01:44:03', '2019-02-20 01:44:03');
INSERT INTO `admin_operation_log` VALUES (500, 1, 'admin/coupon_codes', 'GET', '127.0.0.1', '[]', '2019-02-20 01:44:03', '2019-02-20 01:44:03');
INSERT INTO `admin_operation_log` VALUES (501, 1, 'admin/coupon_codes', 'GET', '127.0.0.1', '[]', '2019-02-20 01:44:04', '2019-02-20 01:44:04');
INSERT INTO `admin_operation_log` VALUES (502, 1, 'admin/coupon_codes', 'GET', '127.0.0.1', '[]', '2019-02-20 01:44:04', '2019-02-20 01:44:04');
INSERT INTO `admin_operation_log` VALUES (503, 1, 'admin/coupon_codes', 'GET', '127.0.0.1', '[]', '2019-02-20 01:44:04', '2019-02-20 01:44:04');
INSERT INTO `admin_operation_log` VALUES (504, 1, 'admin/coupon_codes/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-20 01:44:05', '2019-02-20 01:44:05');
INSERT INTO `admin_operation_log` VALUES (505, 1, 'admin/coupon_codes/1/edit', 'GET', '127.0.0.1', '[]', '2019-02-20 01:44:07', '2019-02-20 01:44:07');
INSERT INTO `admin_operation_log` VALUES (506, 1, 'admin/coupon_codes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-20 01:44:12', '2019-02-20 01:44:12');
INSERT INTO `admin_operation_log` VALUES (507, 1, 'admin/coupon_codes', 'GET', '127.0.0.1', '[]', '2019-02-20 01:44:14', '2019-02-20 01:44:14');
INSERT INTO `admin_operation_log` VALUES (508, 1, 'admin/coupon_codes/11/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-20 01:44:15', '2019-02-20 01:44:15');
INSERT INTO `admin_operation_log` VALUES (509, 1, 'admin/coupon_codes/11/edit', 'GET', '127.0.0.1', '[]', '2019-02-20 01:44:22', '2019-02-20 01:44:22');
INSERT INTO `admin_operation_log` VALUES (510, 1, 'admin/coupon_codes/11/edit', 'GET', '127.0.0.1', '[]', '2019-02-20 01:44:28', '2019-02-20 01:44:28');
INSERT INTO `admin_operation_log` VALUES (511, 1, 'admin/coupon_codes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-20 01:45:55', '2019-02-20 01:45:55');
INSERT INTO `admin_operation_log` VALUES (512, 1, 'admin/coupon_codes', 'GET', '127.0.0.1', '[]', '2019-02-20 01:45:55', '2019-02-20 01:45:55');
INSERT INTO `admin_operation_log` VALUES (513, 1, 'admin/coupon_codes/11/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-20 01:45:57', '2019-02-20 01:45:57');
INSERT INTO `admin_operation_log` VALUES (514, 1, 'admin/coupon_codes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-20 01:46:04', '2019-02-20 01:46:04');
INSERT INTO `admin_operation_log` VALUES (515, 1, 'admin/coupon_codes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-20 01:46:05', '2019-02-20 01:46:05');
INSERT INTO `admin_operation_log` VALUES (516, 1, 'admin/coupon_codes/create', 'GET', '127.0.0.1', '[]', '2019-02-20 01:46:07', '2019-02-20 01:46:07');
INSERT INTO `admin_operation_log` VALUES (517, 1, 'admin/coupon_codes/create', 'GET', '127.0.0.1', '[]', '2019-02-20 01:46:20', '2019-02-20 01:46:20');
INSERT INTO `admin_operation_log` VALUES (518, 1, 'admin/coupon_codes', 'POST', '127.0.0.1', '{\"_token\":\"WxqmSr9EhNmeZY7sIZv11VeaMXqvh4nWKYBEXG8I\",\"after-save\":\"3\"}', '2019-02-20 01:46:22', '2019-02-20 01:46:22');
INSERT INTO `admin_operation_log` VALUES (519, 1, 'admin/coupon_codes/create', 'GET', '127.0.0.1', '[]', '2019-02-20 01:46:23', '2019-02-20 01:46:23');
INSERT INTO `admin_operation_log` VALUES (520, 1, 'admin/coupon_codes/create', 'GET', '127.0.0.1', '[]', '2019-02-20 01:47:14', '2019-02-20 01:47:14');
INSERT INTO `admin_operation_log` VALUES (521, 1, 'admin/coupon_codes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-20 01:47:19', '2019-02-20 01:47:19');
INSERT INTO `admin_operation_log` VALUES (522, 1, 'admin/coupon_codes', 'GET', '127.0.0.1', '[]', '2019-02-20 01:47:22', '2019-02-20 01:47:22');
INSERT INTO `admin_operation_log` VALUES (523, 1, 'admin/coupon_codes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-20 01:47:24', '2019-02-20 01:47:24');
INSERT INTO `admin_operation_log` VALUES (524, 1, 'admin/coupon_codes/create', 'GET', '127.0.0.1', '[]', '2019-02-20 01:47:52', '2019-02-20 01:47:52');
INSERT INTO `admin_operation_log` VALUES (525, 1, 'admin/coupon_codes/create', 'GET', '127.0.0.1', '[]', '2019-02-20 01:47:53', '2019-02-20 01:47:53');
INSERT INTO `admin_operation_log` VALUES (526, 1, 'admin/coupon_codes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-20 01:47:55', '2019-02-20 01:47:55');
INSERT INTO `admin_operation_log` VALUES (527, 1, 'admin/coupon_codes/11/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-20 01:47:57', '2019-02-20 01:47:57');
INSERT INTO `admin_operation_log` VALUES (528, 1, 'admin/coupon_codes/11', 'PUT', '127.0.0.1', '{\"name\":\"aut beatae eos\",\"code\":\"4919\",\"type\":\"fixed\",\"value\":\"26\",\"total\":\"10\",\"min_amount\":\"15.00\",\"not_before\":\"2019-02-18 23:59:59\",\"not_after\":\"2019-02-20 00:00:01\",\"enabled\":\"1\",\"_token\":\"WxqmSr9EhNmeZY7sIZv11VeaMXqvh4nWKYBEXG8I\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shop.test\\/admin\\/coupon_codes\"}', '2019-02-20 01:48:02', '2019-02-20 01:48:02');
INSERT INTO `admin_operation_log` VALUES (529, 1, 'admin/coupon_codes/11/edit', 'GET', '127.0.0.1', '[]', '2019-02-20 01:48:02', '2019-02-20 01:48:02');
INSERT INTO `admin_operation_log` VALUES (530, 1, 'admin/coupon_codes/11/edit', 'GET', '127.0.0.1', '[]', '2019-02-20 01:49:07', '2019-02-20 01:49:07');
INSERT INTO `admin_operation_log` VALUES (531, 1, 'admin/coupon_codes/11/edit', 'GET', '127.0.0.1', '[]', '2019-02-20 01:50:27', '2019-02-20 01:50:27');
INSERT INTO `admin_operation_log` VALUES (532, 1, 'admin/coupon_codes/11', 'PUT', '127.0.0.1', '{\"name\":\"aut beatae eos\",\"code\":\"4919\",\"type\":\"fixed\",\"value\":\"26.00\",\"total\":\"10\",\"min_amount\":\"15.00\",\"not_before\":\"2019-02-18 23:59:59\",\"not_after\":\"2019-02-20 00:00:01\",\"enabled\":\"1\",\"_token\":\"WxqmSr9EhNmeZY7sIZv11VeaMXqvh4nWKYBEXG8I\",\"_method\":\"PUT\"}', '2019-02-20 01:50:33', '2019-02-20 01:50:33');
INSERT INTO `admin_operation_log` VALUES (533, 1, 'admin/coupon_codes', 'GET', '127.0.0.1', '[]', '2019-02-20 01:50:33', '2019-02-20 01:50:33');
INSERT INTO `admin_operation_log` VALUES (534, 1, 'admin/coupon_codes', 'GET', '127.0.0.1', '[]', '2019-02-20 01:50:34', '2019-02-20 01:50:34');
INSERT INTO `admin_operation_log` VALUES (535, 1, 'admin/coupon_codes/11/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-20 01:50:36', '2019-02-20 01:50:36');
INSERT INTO `admin_operation_log` VALUES (536, 1, 'admin/coupon_codes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-20 01:50:39', '2019-02-20 01:50:39');
INSERT INTO `admin_operation_log` VALUES (537, 1, 'admin/coupon_codes', 'GET', '127.0.0.1', '[]', '2019-02-20 09:52:46', '2019-02-20 09:52:46');
INSERT INTO `admin_operation_log` VALUES (538, 1, 'admin/coupon_codes/11', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"WxqmSr9EhNmeZY7sIZv11VeaMXqvh4nWKYBEXG8I\"}', '2019-02-20 09:52:50', '2019-02-20 09:52:50');
INSERT INTO `admin_operation_log` VALUES (539, 1, 'admin/coupon_codes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-20 09:52:50', '2019-02-20 09:52:50');
INSERT INTO `admin_operation_log` VALUES (540, 1, 'admin/coupon_codes', 'GET', '127.0.0.1', '[]', '2019-02-20 09:52:52', '2019-02-20 09:52:52');
INSERT INTO `admin_operation_log` VALUES (541, 1, 'admin/coupon_codes', 'GET', '127.0.0.1', '[]', '2019-02-20 10:33:35', '2019-02-20 10:33:35');
INSERT INTO `admin_operation_log` VALUES (542, 1, 'admin/coupon_codes/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-20 10:33:38', '2019-02-20 10:33:38');
INSERT INTO `admin_operation_log` VALUES (543, 1, 'admin/coupon_codes/1', 'PUT', '127.0.0.1', '{\"name\":\"ut alias aut\",\"code\":\"HSJF5O9BEKTZECKJ\",\"type\":\"fixed\",\"value\":\"185.00\",\"total\":\"1000\",\"min_amount\":\"185.01\",\"not_before\":\"2019-02-21 00:00:01\",\"not_after\":\"2019-02-22 00:00:00\",\"enabled\":\"1\",\"_token\":\"Qj1mgpvFwdK0dhM60rgv6vKbCAWPF6FsEcV1xmpx\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shop.test\\/admin\\/coupon_codes\"}', '2019-02-20 10:34:18', '2019-02-20 10:34:18');
INSERT INTO `admin_operation_log` VALUES (544, 1, 'admin/coupon_codes', 'GET', '127.0.0.1', '[]', '2019-02-20 10:34:19', '2019-02-20 10:34:19');
INSERT INTO `admin_operation_log` VALUES (545, 1, 'admin/coupon_codes/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-20 10:34:34', '2019-02-20 10:34:34');
INSERT INTO `admin_operation_log` VALUES (546, 1, 'admin/coupon_codes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-20 10:34:47', '2019-02-20 10:34:47');
INSERT INTO `admin_operation_log` VALUES (547, 1, 'admin/coupon_codes/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-20 11:16:05', '2019-02-20 11:16:05');
INSERT INTO `admin_operation_log` VALUES (548, 1, 'admin/coupon_codes/9', 'PUT', '127.0.0.1', '{\"name\":\"repudiandae sequi at\",\"code\":\"6LMW196LKZUWLEMS\",\"type\":\"percent\",\"value\":\"10.00\",\"total\":\"1000\",\"min_amount\":\"0.00\",\"not_before\":null,\"not_after\":null,\"enabled\":\"1\",\"_token\":\"Qj1mgpvFwdK0dhM60rgv6vKbCAWPF6FsEcV1xmpx\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shop.test\\/admin\\/coupon_codes\"}', '2019-02-20 11:16:12', '2019-02-20 11:16:12');
INSERT INTO `admin_operation_log` VALUES (549, 1, 'admin/coupon_codes', 'GET', '127.0.0.1', '[]', '2019-02-20 11:16:12', '2019-02-20 11:16:12');
INSERT INTO `admin_operation_log` VALUES (550, 1, 'admin/coupon_codes', 'GET', '127.0.0.1', '[]', '2019-02-20 11:42:05', '2019-02-20 11:42:05');
INSERT INTO `admin_operation_log` VALUES (551, 1, 'admin/coupon_codes', 'GET', '127.0.0.1', '[]', '2019-02-20 14:25:50', '2019-02-20 14:25:50');
INSERT INTO `admin_operation_log` VALUES (552, 1, 'admin/coupon_codes', 'GET', '127.0.0.1', '[]', '2019-02-20 14:25:52', '2019-02-20 14:25:52');
INSERT INTO `admin_operation_log` VALUES (553, 1, 'admin/coupon_codes', 'GET', '127.0.0.1', '[]', '2019-02-20 14:25:52', '2019-02-20 14:25:52');
INSERT INTO `admin_operation_log` VALUES (554, 1, 'admin/coupon_codes', 'GET', '127.0.0.1', '[]', '2019-02-20 14:26:00', '2019-02-20 14:26:00');
INSERT INTO `admin_operation_log` VALUES (555, 1, 'admin/coupon_codes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-20 14:26:02', '2019-02-20 14:26:02');
INSERT INTO `admin_operation_log` VALUES (556, 1, 'admin/coupon_codes/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-20 14:26:04', '2019-02-20 14:26:04');
INSERT INTO `admin_operation_log` VALUES (557, 1, 'admin/coupon_codes/1', 'PUT', '127.0.0.1', '{\"name\":\"ut alias aut\",\"code\":\"HSJF5O9BEKTZECKJ\",\"type\":\"fixed\",\"value\":\"185.00\",\"total\":\"1000\",\"min_amount\":\"185.01\",\"not_before\":\"2019-02-21 00:00:01\",\"not_after\":\"2019-02-22 00:00:00\",\"enabled\":\"0\",\"_token\":\"33Yn5plXuGEiOFo6yCxDTD0PoDrNcMEdk2ptSJkN\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shop.test\\/admin\\/coupon_codes\"}', '2019-02-20 14:26:07', '2019-02-20 14:26:07');
INSERT INTO `admin_operation_log` VALUES (558, 1, 'admin/coupon_codes', 'GET', '127.0.0.1', '[]', '2019-02-20 14:26:07', '2019-02-20 14:26:07');
INSERT INTO `admin_operation_log` VALUES (559, 1, 'admin/coupon_codes', 'GET', '127.0.0.1', '[]', '2019-02-20 14:43:01', '2019-02-20 14:43:01');
INSERT INTO `admin_operation_log` VALUES (560, 1, 'admin/coupon_codes', 'GET', '127.0.0.1', '[]', '2019-02-20 14:43:03', '2019-02-20 14:43:03');
INSERT INTO `admin_operation_log` VALUES (561, 1, 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-20 14:43:21', '2019-02-20 14:43:21');
INSERT INTO `admin_operation_log` VALUES (562, 1, 'admin/order', 'GET', '127.0.0.1', '[]', '2019-02-20 14:43:24', '2019-02-20 14:43:24');
INSERT INTO `admin_operation_log` VALUES (563, 1, 'admin/order', 'GET', '127.0.0.1', '[]', '2019-02-20 14:43:24', '2019-02-20 14:43:24');
INSERT INTO `admin_operation_log` VALUES (564, 1, 'admin/order', 'GET', '127.0.0.1', '[]', '2019-02-20 14:43:29', '2019-02-20 14:43:29');
INSERT INTO `admin_operation_log` VALUES (565, 1, 'admin/order/42', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-20 14:43:32', '2019-02-20 14:43:32');
INSERT INTO `admin_operation_log` VALUES (566, 1, 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-20 14:43:51', '2019-02-20 14:43:51');
INSERT INTO `admin_operation_log` VALUES (567, 1, 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-20 15:18:30', '2019-02-20 15:18:30');
INSERT INTO `admin_operation_log` VALUES (568, 1, 'admin/coupon_codes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-20 15:18:31', '2019-02-20 15:18:31');
INSERT INTO `admin_operation_log` VALUES (569, 1, 'admin/coupon_codes', 'GET', '127.0.0.1', '[]', '2019-02-20 15:21:32', '2019-02-20 15:21:32');
INSERT INTO `admin_operation_log` VALUES (570, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-20 16:08:54', '2019-02-20 16:08:54');
INSERT INTO `admin_operation_log` VALUES (571, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-20 16:08:57', '2019-02-20 16:08:57');
INSERT INTO `admin_operation_log` VALUES (572, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-20 16:09:02', '2019-02-20 16:09:02');
INSERT INTO `admin_operation_log` VALUES (573, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-20 16:09:07', '2019-02-20 16:09:07');
INSERT INTO `admin_operation_log` VALUES (574, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-20 16:09:09', '2019-02-20 16:09:09');
INSERT INTO `admin_operation_log` VALUES (575, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-20 16:09:11', '2019-02-20 16:09:11');
INSERT INTO `admin_operation_log` VALUES (576, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-20 16:09:13', '2019-02-20 16:09:13');
INSERT INTO `admin_operation_log` VALUES (577, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"goods\",\"name\":\"\\u5546\\u54c1\\u7ba1\\u7406\",\"http_method\":[null],\"http_path\":\"\\/products*\",\"_token\":\"33Yn5plXuGEiOFo6yCxDTD0PoDrNcMEdk2ptSJkN\",\"_previous_\":\"http:\\/\\/shop.test\\/admin\\/auth\\/permissions\"}', '2019-02-20 16:10:33', '2019-02-20 16:10:33');
INSERT INTO `admin_operation_log` VALUES (578, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-02-20 16:10:34', '2019-02-20 16:10:34');
INSERT INTO `admin_operation_log` VALUES (579, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-20 16:10:38', '2019-02-20 16:10:38');
INSERT INTO `admin_operation_log` VALUES (580, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"orders\",\"name\":\"\\u8ba2\\u5355\\u7ba1\\u7406\",\"http_method\":[null],\"http_path\":\"\\/order*\",\"_token\":\"33Yn5plXuGEiOFo6yCxDTD0PoDrNcMEdk2ptSJkN\",\"_previous_\":\"http:\\/\\/shop.test\\/admin\\/auth\\/permissions\"}', '2019-02-20 16:11:08', '2019-02-20 16:11:08');
INSERT INTO `admin_operation_log` VALUES (581, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-02-20 16:11:08', '2019-02-20 16:11:08');
INSERT INTO `admin_operation_log` VALUES (582, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-20 16:11:12', '2019-02-20 16:11:12');
INSERT INTO `admin_operation_log` VALUES (583, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"coupon_codes\",\"name\":\"\\u4f18\\u60e0\\u5377\",\"http_method\":[null],\"http_path\":\"\\/coupon_codes*\",\"_token\":\"33Yn5plXuGEiOFo6yCxDTD0PoDrNcMEdk2ptSJkN\",\"_previous_\":\"http:\\/\\/shop.test\\/admin\\/auth\\/permissions\"}', '2019-02-20 16:11:41', '2019-02-20 16:11:41');
INSERT INTO `admin_operation_log` VALUES (584, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-02-20 16:11:41', '2019-02-20 16:11:41');
INSERT INTO `admin_operation_log` VALUES (585, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-20 16:11:50', '2019-02-20 16:11:50');
INSERT INTO `admin_operation_log` VALUES (586, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-20 16:11:51', '2019-02-20 16:11:51');
INSERT INTO `admin_operation_log` VALUES (587, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-20 16:11:52', '2019-02-20 16:11:52');
INSERT INTO `admin_operation_log` VALUES (588, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-20 16:11:55', '2019-02-20 16:11:55');
INSERT INTO `admin_operation_log` VALUES (589, 1, 'admin/auth/roles/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-20 16:11:59', '2019-02-20 16:11:59');
INSERT INTO `admin_operation_log` VALUES (590, 1, 'admin/auth/roles/2', 'PUT', '127.0.0.1', '{\"slug\":\"operator\",\"name\":\"\\u8fd0\\u8425\",\"permissions\":[\"6\",\"7\",\"8\",\"9\",null],\"_token\":\"33Yn5plXuGEiOFo6yCxDTD0PoDrNcMEdk2ptSJkN\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shop.test\\/admin\\/auth\\/roles\"}', '2019-02-20 16:12:17', '2019-02-20 16:12:17');
INSERT INTO `admin_operation_log` VALUES (591, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2019-02-20 16:12:17', '2019-02-20 16:12:17');
INSERT INTO `admin_operation_log` VALUES (592, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-20 16:12:20', '2019-02-20 16:12:20');
INSERT INTO `admin_operation_log` VALUES (593, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-20 16:12:31', '2019-02-20 16:12:31');
INSERT INTO `admin_operation_log` VALUES (594, 1, 'admin/auth/users', 'POST', '127.0.0.1', '{\"username\":\"yy\",\"name\":\"\\u8fd0\\u8425\",\"password\":\"123456\",\"password_confirmation\":\"123456\",\"roles\":[\"2\",null],\"permissions\":[null],\"_token\":\"33Yn5plXuGEiOFo6yCxDTD0PoDrNcMEdk2ptSJkN\",\"_previous_\":\"http:\\/\\/shop.test\\/admin\\/auth\\/users\"}', '2019-02-20 16:13:00', '2019-02-20 16:13:00');
INSERT INTO `admin_operation_log` VALUES (595, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-02-20 16:13:00', '2019-02-20 16:13:00');
INSERT INTO `admin_operation_log` VALUES (596, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-20 16:13:05', '2019-02-20 16:13:05');
INSERT INTO `admin_operation_log` VALUES (597, 3, 'admin', 'GET', '127.0.0.1', '[]', '2019-02-20 16:13:12', '2019-02-20 16:13:12');
INSERT INTO `admin_operation_log` VALUES (598, 3, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-20 16:13:17', '2019-02-20 16:13:17');
INSERT INTO `admin_operation_log` VALUES (599, 3, 'admin/coupon_codes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-20 16:13:18', '2019-02-20 16:13:18');
INSERT INTO `admin_operation_log` VALUES (600, 3, 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-20 16:13:19', '2019-02-20 16:13:19');
INSERT INTO `admin_operation_log` VALUES (601, 3, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-20 16:13:23', '2019-02-20 16:13:23');

-- ----------------------------
-- Table structure for admin_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE `admin_permissions`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `http_path` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_permissions_name_unique`(`name`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_permissions
-- ----------------------------
INSERT INTO `admin_permissions` VALUES (1, 'All permission', '*', '', '*', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (6, '用户管理', 'user', '', '/user*', '2019-02-14 08:23:53', '2019-02-14 08:23:53');
INSERT INTO `admin_permissions` VALUES (7, '商品管理', 'goods', '', '/products*', '2019-02-20 16:10:33', '2019-02-20 16:10:33');
INSERT INTO `admin_permissions` VALUES (8, '订单管理', 'orders', '', '/order*', '2019-02-20 16:11:08', '2019-02-20 16:11:08');
INSERT INTO `admin_permissions` VALUES (9, '优惠卷', 'coupon_codes', '', '/coupon_codes*', '2019-02-20 16:11:41', '2019-02-20 16:11:41');

-- ----------------------------
-- Table structure for admin_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE `admin_role_menu`  (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `admin_role_menu_role_id_menu_id_index`(`role_id`, `menu_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of admin_role_menu
-- ----------------------------
INSERT INTO `admin_role_menu` VALUES (1, 2, NULL, NULL);

-- ----------------------------
-- Table structure for admin_role_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_permissions`;
CREATE TABLE `admin_role_permissions`  (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `admin_role_permissions_role_id_permission_id_index`(`role_id`, `permission_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of admin_role_permissions
-- ----------------------------
INSERT INTO `admin_role_permissions` VALUES (1, 1, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (2, 6, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (2, 7, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (2, 8, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (2, 9, NULL, NULL);

-- ----------------------------
-- Table structure for admin_role_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_users`;
CREATE TABLE `admin_role_users`  (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `admin_role_users_role_id_user_id_index`(`role_id`, `user_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of admin_role_users
-- ----------------------------
INSERT INTO `admin_role_users` VALUES (1, 1, NULL, NULL);
INSERT INTO `admin_role_users` VALUES (2, 3, NULL, NULL);

-- ----------------------------
-- Table structure for admin_roles
-- ----------------------------
DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE `admin_roles`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_roles_name_unique`(`name`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_roles
-- ----------------------------
INSERT INTO `admin_roles` VALUES (1, 'Administrator', 'administrator', '2019-02-14 07:43:29', '2019-02-14 07:43:29');
INSERT INTO `admin_roles` VALUES (2, '运营', 'operator', '2019-02-14 08:25:50', '2019-02-14 08:25:50');

-- ----------------------------
-- Table structure for admin_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_user_permissions`;
CREATE TABLE `admin_user_permissions`  (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `admin_user_permissions_user_id_permission_id_index`(`user_id`, `permission_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for admin_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_users_username_unique`(`username`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_users
-- ----------------------------
INSERT INTO `admin_users` VALUES (1, 'admin', '$2y$10$ZCyEWjNs4ql1U1.w3YGEkuCE6iHWQioAtNHurN6OkBAGM.5ibIWsG', 'Administrator', NULL, 'ASUNrNwxQFE7NWffgmsw0l7BA4V4rzozIghnzLpYlggfyEStV0pP0WihLLxx', '2019-02-14 07:43:29', '2019-02-14 07:43:29');
INSERT INTO `admin_users` VALUES (3, 'yy', '$2y$10$h6DEr70GiNJ6XhwCfS93zO7gPntX2h8CY86Nwe95/xq/AGB7MfEqS', '运营', NULL, NULL, '2019-02-20 16:13:00', '2019-02-20 16:13:00');

-- ----------------------------
-- Table structure for cart_items
-- ----------------------------
DROP TABLE IF EXISTS `cart_items`;
CREATE TABLE `cart_items`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `product_sku_id` int(10) UNSIGNED NOT NULL,
  `amount` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `cart_items_user_id_foreign`(`user_id`) USING BTREE,
  INDEX `cart_items_product_sku_id_foreign`(`product_sku_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 51 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of cart_items
-- ----------------------------
INSERT INTO `cart_items` VALUES (49, 1, 19, 1);
INSERT INTO `cart_items` VALUES (50, 1, 25, 1);
INSERT INTO `cart_items` VALUES (48, 1, 16, 1);

-- ----------------------------
-- Table structure for coupon_codes
-- ----------------------------
DROP TABLE IF EXISTS `coupon_codes`;
CREATE TABLE `coupon_codes`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` decimal(8, 2) NOT NULL,
  `total` int(10) UNSIGNED NOT NULL,
  `used` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `min_amount` decimal(10, 2) NOT NULL,
  `not_before` datetime(0) NULL DEFAULT NULL,
  `not_after` datetime(0) NULL DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `coupon_codes_code_unique`(`code`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of coupon_codes
-- ----------------------------
INSERT INTO `coupon_codes` VALUES (1, 'ut alias aut', 'HSJF5O9BEKTZECKJ', 'fixed', 185.00, 1000, 0, 185.01, '2019-02-21 00:00:01', '2019-02-22 00:00:00', 0, '2019-02-19 10:01:22', '2019-02-20 14:26:07');
INSERT INTO `coupon_codes` VALUES (2, 'voluptatibus et doloremque', '8GIUFRN4RB270BLR', 'percent', 22.00, 1000, 0, 0.00, NULL, NULL, 1, '2019-02-19 10:01:22', '2019-02-19 10:01:22');
INSERT INTO `coupon_codes` VALUES (3, 'quae quia quia', 'ENEEE3Y55C1EAY5I', 'percent', 34.00, 1000, 0, 0.00, NULL, NULL, 1, '2019-02-19 10:01:22', '2019-02-19 10:01:22');
INSERT INTO `coupon_codes` VALUES (4, 'dolore et sint', '4XK7NQNC09QB0NS6', 'fixed', 191.00, 1000, 0, 191.01, NULL, NULL, 1, '2019-02-19 10:01:22', '2019-02-19 10:01:22');
INSERT INTO `coupon_codes` VALUES (5, 'ut unde magnam', 'LVHHHLUITTXNN2BE', 'fixed', 104.00, 1000, 0, 104.01, NULL, NULL, 1, '2019-02-19 10:01:22', '2019-02-19 10:01:22');
INSERT INTO `coupon_codes` VALUES (6, 'qui quo ea', '5FEVDRJ6EV8IDIIY', 'fixed', 68.00, 1000, 0, 68.01, NULL, NULL, 1, '2019-02-19 10:01:22', '2019-02-19 10:01:22');
INSERT INTO `coupon_codes` VALUES (7, 'quaerat nostrum quis', 'Y5IANZMBY4LZ5SRT', 'percent', 10.00, 1000, 0, 652.00, NULL, NULL, 1, '2019-02-19 10:01:22', '2019-02-19 10:01:22');
INSERT INTO `coupon_codes` VALUES (8, 'et odit sed', 'DD1HTXFVD5GFHZPU', 'percent', 32.00, 1000, 0, 102.00, NULL, NULL, 1, '2019-02-19 10:01:22', '2019-02-19 10:01:22');
INSERT INTO `coupon_codes` VALUES (9, 'repudiandae sequi at', '6LMW196LKZUWLEMS', 'percent', 10.00, 1000, 3, 0.00, NULL, NULL, 1, '2019-02-19 10:01:22', '2019-02-20 15:30:38');
INSERT INTO `coupon_codes` VALUES (10, 'rem culpa numquam', 'UXLPODK1OXZTGCH5', 'fixed', 81.00, 1000, 0, 81.01, NULL, NULL, 1, '2019-02-19 10:01:22', '2019-02-19 10:01:22');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_02_13_083608_add_verification_to_users_table', 1);
INSERT INTO `migrations` VALUES (5, '2019_02_14_012800_create_user_addresses_table', 2);
INSERT INTO `migrations` VALUES (6, '2016_01_04_173148_create_admin_tables', 3);
INSERT INTO `migrations` VALUES (7, '2019_02_14_083119_create_products_table', 4);
INSERT INTO `migrations` VALUES (8, '2019_02_14_083617_create_product_skus_table', 4);
INSERT INTO `migrations` VALUES (9, '2019_02_15_031419_create_user_favorite_products_table', 5);
INSERT INTO `migrations` VALUES (10, '2019_02_15_062253_create_cart_items_table', 6);
INSERT INTO `migrations` VALUES (13, '2019_02_15_075301_create_orders_table', 7);
INSERT INTO `migrations` VALUES (14, '2019_02_15_075315_create_order_items_table', 7);
INSERT INTO `migrations` VALUES (17, '2019_02_19_084235_create_coupon_codes_table', 8);
INSERT INTO `migrations` VALUES (18, '2019_02_19_085337_orders_add_coupom_code_id', 8);
INSERT INTO `migrations` VALUES (20, '2019_02_20_164420_users_add_email_verified', 9);

-- ----------------------------
-- Table structure for order_items
-- ----------------------------
DROP TABLE IF EXISTS `order_items`;
CREATE TABLE `order_items`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `product_sku_id` int(10) UNSIGNED NOT NULL,
  `amount` int(10) UNSIGNED NULL DEFAULT 0,
  `price` decimal(10, 2) NOT NULL,
  `rating` int(10) UNSIGNED NULL DEFAULT NULL,
  `review` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `reviewed_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `order_items_order_id_foreign`(`order_id`) USING BTREE,
  INDEX `order_items_product_id_foreign`(`product_id`) USING BTREE,
  INDEX `order_items_product_sku_id_foreign`(`product_sku_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 122 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_items
-- ----------------------------
INSERT INTO `order_items` VALUES (1, 1, 11, 28, 0, 2459.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (2, 1, 14, 39, 0, 5520.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (3, 1, 4, 7, 0, 1194.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (4, 2, 11, 28, 0, 2459.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (5, 2, 14, 39, 0, 5520.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (6, 2, 4, 7, 0, 1194.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (7, 3, 11, 28, 0, 2459.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (8, 3, 14, 39, 0, 5520.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (9, 3, 4, 7, 0, 1194.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (10, 4, 11, 28, 0, 2459.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (11, 4, 14, 39, 0, 5520.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (12, 4, 4, 7, 0, 1194.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (13, 5, 11, 28, 0, 2459.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (14, 5, 14, 39, 0, 5520.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (15, 5, 4, 7, 0, 1194.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (16, 6, 11, 28, 0, 2459.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (17, 6, 14, 39, 0, 5520.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (18, 6, 4, 7, 0, 1194.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (19, 7, 4, 9, 0, 3669.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (20, 8, 4, 9, 0, 3669.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (21, 9, 4, 9, 0, 3669.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (22, 10, 4, 9, 0, 3669.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (23, 11, 4, 9, 0, 3669.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (24, 12, 4, 9, 0, 3669.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (25, 13, 4, 9, 0, 3669.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (26, 14, 4, 9, 0, 3669.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (27, 15, 4, 9, 0, 3669.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (28, 16, 4, 8, 0, 7557.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (29, 16, 4, 9, 0, 3669.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (30, 17, 4, 8, 0, 7557.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (31, 17, 4, 9, 0, 3669.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (32, 18, 4, 8, 0, 7557.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (33, 18, 4, 9, 0, 3669.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (34, 19, 7, 18, 0, 2495.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (35, 20, 7, 18, 0, 2495.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (36, 21, 9, 23, 0, 5823.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (37, 22, 9, 23, 0, 5823.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (38, 23, 9, 23, 0, 5823.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (39, 24, 6, 14, 0, 3145.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (40, 24, 8, 20, 0, 2215.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (41, 25, 11, 29, 0, 5999.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (42, 26, 8, 21, 0, 4147.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (43, 27, 8, 21, 0, 4147.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (44, 28, 8, 21, 0, 4147.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (45, 28, 4, 8, 0, 7557.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (46, 29, 19, 54, 0, 709.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (47, 29, 8, 21, 0, 4147.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (48, 30, 18, 50, 0, 8847.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (49, 31, 18, 49, 0, 7533.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (50, 32, 10, 26, 0, 1450.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (51, 33, 18, 50, 0, 8847.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (52, 34, 4, 7, 0, 1194.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (53, 35, 4, 8, 0, 7557.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (54, 36, 7, 16, 0, 3341.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (55, 37, 6, 13, 0, 5336.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (56, 38, 8, 21, 0, 4147.00, 5, '12341', '2019-02-19 03:10:44');
INSERT INTO `order_items` VALUES (57, 39, 8, 19, 0, 1414.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (58, 40, 10, 25, 0, 6497.00, 4, 'asda', '2019-02-19 02:32:35');
INSERT INTO `order_items` VALUES (59, 41, 10, 25, 0, 6497.00, 5, '123', '2019-02-19 03:00:18');
INSERT INTO `order_items` VALUES (60, 42, 10, 25, 0, 6497.00, 5, '123', '2019-02-19 03:08:15');
INSERT INTO `order_items` VALUES (61, 43, 7, 18, 0, 2495.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (62, 43, 6, 13, 0, 5336.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (63, 44, 7, 18, 0, 2495.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (64, 44, 6, 13, 0, 5336.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (65, 45, 7, 18, 0, 2495.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (66, 45, 6, 13, 0, 5336.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (67, 46, 7, 16, 0, 3341.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (68, 47, 7, 16, 0, 3341.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (69, 48, 7, 16, 0, 3341.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (70, 49, 7, 16, 0, 3341.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (71, 50, 7, 16, 0, 3341.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (72, 51, 7, 16, 0, 3341.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (73, 52, 7, 16, 0, 3341.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (74, 53, 7, 16, 0, 3341.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (75, 54, 7, 16, 0, 3341.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (76, 55, 7, 16, 0, 3341.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (77, 56, 7, 16, 0, 3341.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (78, 57, 7, 16, 0, 3341.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (79, 58, 7, 16, 0, 3341.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (80, 59, 7, 16, 0, 3341.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (81, 60, 7, 16, 0, 3341.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (82, 61, 7, 16, 0, 3341.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (83, 62, 7, 16, 0, 3341.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (84, 63, 7, 16, 0, 3341.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (85, 64, 7, 16, 0, 3341.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (86, 65, 7, 16, 0, 3341.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (87, 66, 7, 16, 0, 3341.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (88, 67, 7, 16, 0, 3341.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (89, 68, 7, 16, 0, 3341.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (90, 69, 7, 16, 0, 3341.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (91, 70, 7, 16, 0, 3341.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (92, 71, 7, 16, 0, 3341.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (93, 72, 7, 16, 0, 3341.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (94, 73, 7, 16, 0, 3341.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (95, 74, 7, 16, 0, 3341.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (96, 75, 7, 16, 0, 3341.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (97, 76, 7, 16, 0, 3341.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (98, 77, 7, 16, 0, 3341.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (99, 78, 7, 16, 0, 3341.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (100, 79, 7, 16, 0, 3341.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (101, 80, 7, 16, 0, 3341.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (102, 81, 7, 16, 0, 3341.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (103, 82, 7, 16, 0, 3341.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (104, 83, 7, 16, 0, 3341.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (105, 84, 7, 16, 0, 3341.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (106, 85, 7, 16, 0, 3341.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (107, 86, 7, 16, 0, 3341.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (108, 87, 7, 17, 0, 7201.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (109, 87, 7, 16, 0, 3341.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (110, 88, 7, 17, 0, 7201.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (111, 88, 7, 16, 0, 3341.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (112, 89, 7, 17, 0, 7201.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (113, 89, 7, 16, 0, 3341.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (114, 90, 7, 17, 0, 7201.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (115, 90, 7, 16, 0, 3341.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (116, 94, 7, 17, 0, 7201.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (117, 94, 7, 16, 0, 3341.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (118, 96, 7, 17, 2, 7201.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (119, 96, 7, 16, 1, 3341.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (120, 97, 4, 7, 2, 1194.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (121, 98, 4, 7, 1, 1194.00, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `no` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_amount` decimal(10, 2) NOT NULL,
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `paid_at` datetime(0) NULL DEFAULT NULL,
  `coupon_code_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `payment_method` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `payment_no` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `refund_status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `refund_no` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `closed` tinyint(1) NOT NULL DEFAULT 0,
  `reviewed` tinyint(1) NOT NULL DEFAULT 0,
  `ship_status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `ship_data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `extra` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `orders_no_unique`(`no`) USING BTREE,
  UNIQUE INDEX `orders_refund_no_unique`(`refund_no`) USING BTREE,
  INDEX `orders_user_id_foreign`(`user_id`) USING BTREE,
  INDEX `orders_coupon_code_id_foreign`(`coupon_code_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 99 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (27, '20190216080919462291', 1, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u897f\\u57ce\\u533a\\u5e7f\\u5dde\\u6d77\\u73e0\\u533a\\u660e\\u901a\\u521b\\u610f\\u56edE\\u680b205\",\"zip\":7251000,\"contact_name\":\"123\",\"contact_phone\":\"123\"}', 0.00, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 0, 0, 'pending', NULL, NULL, '2019-02-16 08:09:19', '2019-02-16 08:09:19');
INSERT INTO `orders` VALUES (28, '20190216083122080054', 1, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u897f\\u57ce\\u533a\\u5e7f\\u5dde\\u6d77\\u73e0\\u533a\\u660e\\u901a\\u521b\\u610f\\u56edE\\u680b205\",\"zip\":7251000,\"contact_name\":\"123\",\"contact_phone\":\"123\"}', 5.00, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 0, 0, 'pending', NULL, NULL, '2019-02-16 08:31:22', '2019-02-16 08:31:22');
INSERT INTO `orders` VALUES (29, '20190216090711963014', 1, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u897f\\u57ce\\u533a\\u5e7f\\u5dde\\u6d77\\u73e0\\u533a\\u660e\\u901a\\u521b\\u610f\\u56edE\\u680b205\",\"zip\":7251000,\"contact_name\":\"123\",\"contact_phone\":\"123\"}', 2.00, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 0, 0, 'pending', NULL, NULL, '2019-02-16 09:07:11', '2019-02-16 09:07:11');
INSERT INTO `orders` VALUES (30, '20190216091726862854', 1, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u897f\\u57ce\\u533a\\u5e7f\\u5dde\\u6d77\\u73e0\\u533a\\u660e\\u901a\\u521b\\u610f\\u56edE\\u680b205\",\"zip\":7251000,\"contact_name\":\"123\",\"contact_phone\":\"123\"}', 1.00, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 0, 0, 'pending', NULL, NULL, '2019-02-16 09:17:26', '2019-02-16 09:17:26');
INSERT INTO `orders` VALUES (31, '20190216092015111786', 1, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u897f\\u57ce\\u533a\\u5e7f\\u5dde\\u6d77\\u73e0\\u533a\\u660e\\u901a\\u521b\\u610f\\u56edE\\u680b205\",\"zip\":7251000,\"contact_name\":\"123\",\"contact_phone\":\"123\"}', 1.00, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 0, 0, 'pending', NULL, NULL, '2019-02-16 09:20:15', '2019-02-16 09:20:15');
INSERT INTO `orders` VALUES (32, '20190216092502342848', 1, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u897f\\u57ce\\u533a\\u5e7f\\u5dde\\u6d77\\u73e0\\u533a\\u660e\\u901a\\u521b\\u610f\\u56edE\\u680b205\",\"zip\":7251000,\"contact_name\":\"123\",\"contact_phone\":\"123\"}', 1.00, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 0, 0, 'pending', NULL, NULL, '2019-02-16 09:25:02', '2019-02-16 09:25:02');
INSERT INTO `orders` VALUES (33, '20190216092839356017', 1, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u897f\\u57ce\\u533a\\u5e7f\\u5dde\\u6d77\\u73e0\\u533a\\u660e\\u901a\\u521b\\u610f\\u56edE\\u680b205\",\"zip\":7251000,\"contact_name\":\"123\",\"contact_phone\":\"123\"}', 1.00, '4745', '2019-02-18 17:12:43', NULL, 'alipay', NULL, 'pending', NULL, 0, 0, 'pending', NULL, NULL, '2019-02-16 09:28:39', '2019-02-16 09:28:39');
INSERT INTO `orders` VALUES (34, '20190218015736991478', 1, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u897f\\u57ce\\u533a\\u5e7f\\u5dde\\u6d77\\u73e0\\u533a\\u660e\\u901a\\u521b\\u610f\\u56edE\\u680b205\",\"zip\":7251000,\"contact_name\":\"123\",\"contact_phone\":\"123\"}', 1.00, NULL, '2019-02-18 17:12:41', NULL, 'alipay', NULL, 'pending', NULL, 0, 0, 'pending', NULL, NULL, '2019-02-18 01:57:36', '2019-02-18 01:57:36');
INSERT INTO `orders` VALUES (35, '20190218020316435896', 1, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u897f\\u57ce\\u533a\\u5e7f\\u5dde\\u6d77\\u73e0\\u533a\\u660e\\u901a\\u521b\\u610f\\u56edE\\u680b205\",\"zip\":7251000,\"contact_name\":\"123\",\"contact_phone\":\"123\"}', 1.00, NULL, '2019-02-18 17:12:39', NULL, 'alipay', NULL, 'pending', NULL, 0, 0, 'pending', NULL, NULL, '2019-02-18 02:03:16', '2019-02-18 02:03:16');
INSERT INTO `orders` VALUES (36, '20190218024520083140', 1, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u897f\\u57ce\\u533a\\u5e7f\\u5dde\\u6d77\\u73e0\\u533a\\u660e\\u901a\\u521b\\u610f\\u56edE\\u680b205\",\"zip\":7251000,\"contact_name\":\"123\",\"contact_phone\":\"123\"}', 1.00, NULL, '2019-02-18 17:12:38', NULL, 'alipay', NULL, 'pending', NULL, 0, 0, 'pending', NULL, NULL, '2019-02-18 02:45:20', '2019-02-18 02:45:20');
INSERT INTO `orders` VALUES (37, '20190218025040191798', 1, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u897f\\u57ce\\u533a\\u5e7f\\u5dde\\u6d77\\u73e0\\u533a\\u660e\\u901a\\u521b\\u610f\\u56edE\\u680b205\",\"zip\":7251000,\"contact_name\":\"123\",\"contact_phone\":\"123\"}', 1.00, NULL, '2019-02-18 17:12:36', NULL, 'alipay', NULL, 'pending', NULL, 0, 0, 'pending', NULL, NULL, '2019-02-18 02:50:40', '2019-02-18 02:50:40');
INSERT INTO `orders` VALUES (38, '20190218025146947632', 1, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u897f\\u57ce\\u533a\\u5e7f\\u5dde\\u6d77\\u73e0\\u533a\\u660e\\u901a\\u521b\\u610f\\u56edE\\u680b205\",\"zip\":7251000,\"contact_name\":\"123\",\"contact_phone\":\"123\"}', 1.00, NULL, '2019-02-18 17:12:34', NULL, 'alipay', NULL, 'pending', NULL, 0, 1, 'received', '{\"express_company\":\"\\u5706\\u901a\",\"express_no\":\"4\"}', NULL, '2019-02-18 02:51:46', '2019-02-19 03:10:44');
INSERT INTO `orders` VALUES (39, '20190218034002694826', 1, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u897f\\u57ce\\u533a\\u5e7f\\u5dde\\u6d77\\u73e0\\u533a\\u660e\\u901a\\u521b\\u610f\\u56edE\\u680b205\",\"zip\":7251000,\"contact_name\":\"123\",\"contact_phone\":\"123\"}', 1.00, NULL, '2019-02-18 03:52:24', NULL, 'alipay', '2019021822001431550200836739', 'pending', NULL, 0, 0, 'received', '{\"express_company\":\"\\u5706\\u901a\",\"express_no\":\"2012\"}', '{\"refund_reason\":\"dasdsa\",\"refund_disagree_reason\":null}', '2019-02-18 03:40:02', '2019-02-19 06:48:37');
INSERT INTO `orders` VALUES (40, '20190218085144055963', 1, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u897f\\u57ce\\u533a\\u5e7f\\u5dde\\u6d77\\u73e0\\u533a\\u660e\\u901a\\u521b\\u610f\\u56edE\\u680b205\",\"zip\":7251000,\"contact_name\":\"123\",\"contact_phone\":\"123\"}', 1.00, NULL, '2019-02-18 16:54:07', NULL, 'alipay', NULL, 'success', 'c0e4d363e6974283975c1731a14adac0', 0, 1, 'received', '{\"express_company\":\"\\u5706\\u901a\",\"express_no\":\"2012\"}', 'true', '2019-02-18 08:51:44', '2019-02-19 08:34:13');
INSERT INTO `orders` VALUES (41, '20190219025740395177', 1, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u897f\\u57ce\\u533a\\u5e7f\\u5dde\\u6d77\\u73e0\\u533a\\u660e\\u901a\\u521b\\u610f\\u56edE\\u680b205\",\"zip\":7251000,\"contact_name\":\"123\",\"contact_phone\":\"123\"}', 1.00, NULL, '2019-02-19 10:59:43', NULL, 'alipay', NULL, 'applied', '9930122d9f164b36be8536321565f431', 0, 1, 'pending', NULL, 'true', '2019-02-19 02:57:40', '2019-02-19 08:09:39');
INSERT INTO `orders` VALUES (42, '20190219030647060794', 1, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u897f\\u57ce\\u533a\\u5e7f\\u5dde\\u6d77\\u73e0\\u533a\\u660e\\u901a\\u521b\\u610f\\u56edE\\u680b205\",\"zip\":7251000,\"contact_name\":\"123\",\"contact_phone\":\"123\"}', 1.00, NULL, '2019-02-19 11:07:52', NULL, 'alipay', NULL, 'applied', '587f88df0f24410992e64307a1b2ff55', 0, 1, 'pending', NULL, 'true', '2019-02-19 03:06:47', '2019-02-19 08:19:30');
INSERT INTO `orders` VALUES (43, '20190220111829055761', 1, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u897f\\u57ce\\u533a\\u5e7f\\u5dde\\u6d77\\u73e0\\u533a\\u660e\\u901a\\u521b\\u610f\\u56edE\\u680b205\",\"zip\":7251000,\"contact_name\":\"123\",\"contact_phone\":\"123\"}', 0.00, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 0, 0, 'pending', NULL, NULL, '2019-02-20 11:18:29', '2019-02-20 11:18:29');
INSERT INTO `orders` VALUES (44, '20190220111936178710', 1, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u897f\\u57ce\\u533a\\u5e7f\\u5dde\\u6d77\\u73e0\\u533a\\u660e\\u901a\\u521b\\u610f\\u56edE\\u680b205\",\"zip\":7251000,\"contact_name\":\"123\",\"contact_phone\":\"123\"}', 0.00, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 0, 0, 'pending', NULL, NULL, '2019-02-20 11:19:36', '2019-02-20 11:19:36');
INSERT INTO `orders` VALUES (45, '20190220113453569303', 1, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u897f\\u57ce\\u533a\\u5e7f\\u5dde\\u6d77\\u73e0\\u533a\\u660e\\u901a\\u521b\\u610f\\u56edE\\u680b205\",\"zip\":7251000,\"contact_name\":\"123\",\"contact_phone\":\"123\"}', 2.00, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 0, 0, 'pending', NULL, NULL, '2019-02-20 11:34:53', '2019-02-20 11:34:53');
INSERT INTO `orders` VALUES (46, '20190220113616576761', 1, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u897f\\u57ce\\u533a\\u5e7f\\u5dde\\u6d77\\u73e0\\u533a\\u660e\\u901a\\u521b\\u610f\\u56edE\\u680b205\",\"zip\":7251000,\"contact_name\":\"123\",\"contact_phone\":\"123\"}', 1.00, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 0, 0, 'pending', NULL, NULL, '2019-02-20 11:36:16', '2019-02-20 11:36:16');
INSERT INTO `orders` VALUES (47, '20190220113715154874', 1, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u897f\\u57ce\\u533a\\u5e7f\\u5dde\\u6d77\\u73e0\\u533a\\u660e\\u901a\\u521b\\u610f\\u56edE\\u680b205\",\"zip\":7251000,\"contact_name\":\"123\",\"contact_phone\":\"123\"}', 0.00, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 0, 0, 'pending', NULL, NULL, '2019-02-20 11:37:15', '2019-02-20 11:37:15');
INSERT INTO `orders` VALUES (48, '20190220113749818055', 1, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u897f\\u57ce\\u533a\\u5e7f\\u5dde\\u6d77\\u73e0\\u533a\\u660e\\u901a\\u521b\\u610f\\u56edE\\u680b205\",\"zip\":7251000,\"contact_name\":\"123\",\"contact_phone\":\"123\"}', 0.00, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 0, 0, 'pending', NULL, NULL, '2019-02-20 11:37:49', '2019-02-20 11:37:49');
INSERT INTO `orders` VALUES (49, '20190220113800934435', 1, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u897f\\u57ce\\u533a\\u5e7f\\u5dde\\u6d77\\u73e0\\u533a\\u660e\\u901a\\u521b\\u610f\\u56edE\\u680b205\",\"zip\":7251000,\"contact_name\":\"123\",\"contact_phone\":\"123\"}', 0.00, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 0, 0, 'pending', NULL, NULL, '2019-02-20 11:38:00', '2019-02-20 11:38:00');
INSERT INTO `orders` VALUES (50, '20190220113932107404', 1, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u897f\\u57ce\\u533a\\u5e7f\\u5dde\\u6d77\\u73e0\\u533a\\u660e\\u901a\\u521b\\u610f\\u56edE\\u680b205\",\"zip\":7251000,\"contact_name\":\"123\",\"contact_phone\":\"123\"}', 0.00, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 0, 0, 'pending', NULL, NULL, '2019-02-20 11:39:32', '2019-02-20 11:39:32');
INSERT INTO `orders` VALUES (51, '20190220114019456841', 1, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u897f\\u57ce\\u533a\\u5e7f\\u5dde\\u6d77\\u73e0\\u533a\\u660e\\u901a\\u521b\\u610f\\u56edE\\u680b205\",\"zip\":7251000,\"contact_name\":\"123\",\"contact_phone\":\"123\"}', 0.00, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 0, 0, 'pending', NULL, NULL, '2019-02-20 11:40:19', '2019-02-20 11:40:19');
INSERT INTO `orders` VALUES (52, '20190220114041152795', 1, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u897f\\u57ce\\u533a\\u5e7f\\u5dde\\u6d77\\u73e0\\u533a\\u660e\\u901a\\u521b\\u610f\\u56edE\\u680b205\",\"zip\":7251000,\"contact_name\":\"123\",\"contact_phone\":\"123\"}', 0.00, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 0, 0, 'pending', NULL, NULL, '2019-02-20 11:40:41', '2019-02-20 11:40:41');
INSERT INTO `orders` VALUES (53, '20190220114057830300', 1, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u897f\\u57ce\\u533a\\u5e7f\\u5dde\\u6d77\\u73e0\\u533a\\u660e\\u901a\\u521b\\u610f\\u56edE\\u680b205\",\"zip\":7251000,\"contact_name\":\"123\",\"contact_phone\":\"123\"}', 0.00, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 0, 0, 'pending', NULL, NULL, '2019-02-20 11:40:57', '2019-02-20 11:40:57');
INSERT INTO `orders` VALUES (54, '20190220114120536090', 1, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u897f\\u57ce\\u533a\\u5e7f\\u5dde\\u6d77\\u73e0\\u533a\\u660e\\u901a\\u521b\\u610f\\u56edE\\u680b205\",\"zip\":7251000,\"contact_name\":\"123\",\"contact_phone\":\"123\"}', 0.00, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 0, 0, 'pending', NULL, NULL, '2019-02-20 11:41:20', '2019-02-20 11:41:20');
INSERT INTO `orders` VALUES (55, '20190220114142422534', 1, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u897f\\u57ce\\u533a\\u5e7f\\u5dde\\u6d77\\u73e0\\u533a\\u660e\\u901a\\u521b\\u610f\\u56edE\\u680b205\",\"zip\":7251000,\"contact_name\":\"123\",\"contact_phone\":\"123\"}', 0.00, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 0, 0, 'pending', NULL, NULL, '2019-02-20 11:41:42', '2019-02-20 11:41:42');
INSERT INTO `orders` VALUES (56, '20190220114154985855', 1, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u897f\\u57ce\\u533a\\u5e7f\\u5dde\\u6d77\\u73e0\\u533a\\u660e\\u901a\\u521b\\u610f\\u56edE\\u680b205\",\"zip\":7251000,\"contact_name\":\"123\",\"contact_phone\":\"123\"}', 3341.00, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 0, 0, 'pending', NULL, NULL, '2019-02-20 11:41:54', '2019-02-20 11:41:54');
INSERT INTO `orders` VALUES (57, '20190220114224496576', 1, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u897f\\u57ce\\u533a\\u5e7f\\u5dde\\u6d77\\u73e0\\u533a\\u660e\\u901a\\u521b\\u610f\\u56edE\\u680b205\",\"zip\":7251000,\"contact_name\":\"123\",\"contact_phone\":\"123\"}', 3341.00, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 0, 0, 'pending', NULL, NULL, '2019-02-20 11:42:24', '2019-02-20 11:42:24');
INSERT INTO `orders` VALUES (58, '20190220114306545157', 1, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u897f\\u57ce\\u533a\\u5e7f\\u5dde\\u6d77\\u73e0\\u533a\\u660e\\u901a\\u521b\\u610f\\u56edE\\u680b205\",\"zip\":7251000,\"contact_name\":\"123\",\"contact_phone\":\"123\"}', 0.00, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 0, 0, 'pending', NULL, NULL, '2019-02-20 11:43:06', '2019-02-20 11:43:06');
INSERT INTO `orders` VALUES (59, '20190220114420678380', 1, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u897f\\u57ce\\u533a\\u5e7f\\u5dde\\u6d77\\u73e0\\u533a\\u660e\\u901a\\u521b\\u610f\\u56edE\\u680b205\",\"zip\":7251000,\"contact_name\":\"123\",\"contact_phone\":\"123\"}', 0.00, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 0, 0, 'pending', NULL, NULL, '2019-02-20 11:44:20', '2019-02-20 11:44:20');
INSERT INTO `orders` VALUES (60, '20190220120326261331', 1, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u897f\\u57ce\\u533a\\u5e7f\\u5dde\\u6d77\\u73e0\\u533a\\u660e\\u901a\\u521b\\u610f\\u56edE\\u680b205\",\"zip\":7251000,\"contact_name\":\"123\",\"contact_phone\":\"123\"}', 0.00, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 0, 0, 'pending', NULL, NULL, '2019-02-20 12:03:26', '2019-02-20 12:03:26');
INSERT INTO `orders` VALUES (61, '20190220120403155388', 1, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u897f\\u57ce\\u533a\\u5e7f\\u5dde\\u6d77\\u73e0\\u533a\\u660e\\u901a\\u521b\\u610f\\u56edE\\u680b205\",\"zip\":7251000,\"contact_name\":\"123\",\"contact_phone\":\"123\"}', 0.00, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 0, 0, 'pending', NULL, NULL, '2019-02-20 12:04:03', '2019-02-20 12:04:03');
INSERT INTO `orders` VALUES (62, '20190220140753226297', 1, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u897f\\u57ce\\u533a\\u5e7f\\u5dde\\u6d77\\u73e0\\u533a\\u660e\\u901a\\u521b\\u610f\\u56edE\\u680b205\",\"zip\":7251000,\"contact_name\":\"123\",\"contact_phone\":\"123\"}', 0.00, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 0, 0, 'pending', NULL, NULL, '2019-02-20 14:07:53', '2019-02-20 14:07:53');
INSERT INTO `orders` VALUES (63, '20190220140804764138', 1, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u897f\\u57ce\\u533a\\u5e7f\\u5dde\\u6d77\\u73e0\\u533a\\u660e\\u901a\\u521b\\u610f\\u56edE\\u680b205\",\"zip\":7251000,\"contact_name\":\"123\",\"contact_phone\":\"123\"}', 0.00, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 0, 0, 'pending', NULL, NULL, '2019-02-20 14:08:04', '2019-02-20 14:08:04');
INSERT INTO `orders` VALUES (64, '20190220140836330383', 1, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u897f\\u57ce\\u533a\\u5e7f\\u5dde\\u6d77\\u73e0\\u533a\\u660e\\u901a\\u521b\\u610f\\u56edE\\u680b205\",\"zip\":7251000,\"contact_name\":\"123\",\"contact_phone\":\"123\"}', 0.00, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 0, 0, 'pending', NULL, NULL, '2019-02-20 14:08:36', '2019-02-20 14:08:36');
INSERT INTO `orders` VALUES (65, '20190220141058800229', 1, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u897f\\u57ce\\u533a\\u5e7f\\u5dde\\u6d77\\u73e0\\u533a\\u660e\\u901a\\u521b\\u610f\\u56edE\\u680b205\",\"zip\":7251000,\"contact_name\":\"123\",\"contact_phone\":\"123\"}', 0.00, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 0, 0, 'pending', NULL, NULL, '2019-02-20 14:10:58', '2019-02-20 14:10:58');
INSERT INTO `orders` VALUES (66, '20190220141202708917', 1, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u897f\\u57ce\\u533a\\u5e7f\\u5dde\\u6d77\\u73e0\\u533a\\u660e\\u901a\\u521b\\u610f\\u56edE\\u680b205\",\"zip\":7251000,\"contact_name\":\"123\",\"contact_phone\":\"123\"}', 0.00, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 0, 0, 'pending', NULL, NULL, '2019-02-20 14:12:02', '2019-02-20 14:12:02');
INSERT INTO `orders` VALUES (67, '20190220141355755379', 1, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u897f\\u57ce\\u533a\\u5e7f\\u5dde\\u6d77\\u73e0\\u533a\\u660e\\u901a\\u521b\\u610f\\u56edE\\u680b205\",\"zip\":7251000,\"contact_name\":\"123\",\"contact_phone\":\"123\"}', 0.00, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 0, 0, 'pending', NULL, NULL, '2019-02-20 14:13:55', '2019-02-20 14:13:55');
INSERT INTO `orders` VALUES (68, '20190220141424237374', 1, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u897f\\u57ce\\u533a\\u5e7f\\u5dde\\u6d77\\u73e0\\u533a\\u660e\\u901a\\u521b\\u610f\\u56edE\\u680b205\",\"zip\":7251000,\"contact_name\":\"123\",\"contact_phone\":\"123\"}', 0.00, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 0, 0, 'pending', NULL, NULL, '2019-02-20 14:14:24', '2019-02-20 14:14:24');
INSERT INTO `orders` VALUES (69, '20190220141747697856', 1, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u897f\\u57ce\\u533a\\u5e7f\\u5dde\\u6d77\\u73e0\\u533a\\u660e\\u901a\\u521b\\u610f\\u56edE\\u680b205\",\"zip\":7251000,\"contact_name\":\"123\",\"contact_phone\":\"123\"}', 0.00, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 0, 0, 'pending', NULL, NULL, '2019-02-20 14:17:47', '2019-02-20 14:17:47');
INSERT INTO `orders` VALUES (70, '20190220141907122574', 1, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u897f\\u57ce\\u533a\\u5e7f\\u5dde\\u6d77\\u73e0\\u533a\\u660e\\u901a\\u521b\\u610f\\u56edE\\u680b205\",\"zip\":7251000,\"contact_name\":\"123\",\"contact_phone\":\"123\"}', 0.00, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 0, 0, 'pending', NULL, NULL, '2019-02-20 14:19:07', '2019-02-20 14:19:07');
INSERT INTO `orders` VALUES (71, '20190220142109867495', 1, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u897f\\u57ce\\u533a\\u5e7f\\u5dde\\u6d77\\u73e0\\u533a\\u660e\\u901a\\u521b\\u610f\\u56edE\\u680b205\",\"zip\":7251000,\"contact_name\":\"123\",\"contact_phone\":\"123\"}', 0.00, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 0, 0, 'pending', NULL, NULL, '2019-02-20 14:21:09', '2019-02-20 14:21:09');
INSERT INTO `orders` VALUES (72, '20190220143802829295', 1, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u897f\\u57ce\\u533a\\u5e7f\\u5dde\\u6d77\\u73e0\\u533a\\u660e\\u901a\\u521b\\u610f\\u56edE\\u680b205\",\"zip\":7251000,\"contact_name\":\"123\",\"contact_phone\":\"123\"}', 0.00, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 0, 0, 'pending', NULL, NULL, '2019-02-20 14:38:02', '2019-02-20 14:38:02');
INSERT INTO `orders` VALUES (73, '20190220143819207625', 1, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u897f\\u57ce\\u533a\\u5e7f\\u5dde\\u6d77\\u73e0\\u533a\\u660e\\u901a\\u521b\\u610f\\u56edE\\u680b205\",\"zip\":7251000,\"contact_name\":\"123\",\"contact_phone\":\"123\"}', 0.00, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 0, 0, 'pending', NULL, NULL, '2019-02-20 14:38:19', '2019-02-20 14:38:19');
INSERT INTO `orders` VALUES (74, '20190220143837052664', 1, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u897f\\u57ce\\u533a\\u5e7f\\u5dde\\u6d77\\u73e0\\u533a\\u660e\\u901a\\u521b\\u610f\\u56edE\\u680b205\",\"zip\":7251000,\"contact_name\":\"123\",\"contact_phone\":\"123\"}', 0.00, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 0, 0, 'pending', NULL, NULL, '2019-02-20 14:38:37', '2019-02-20 14:38:37');
INSERT INTO `orders` VALUES (75, '20190220143929362314', 1, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u897f\\u57ce\\u533a\\u5e7f\\u5dde\\u6d77\\u73e0\\u533a\\u660e\\u901a\\u521b\\u610f\\u56edE\\u680b205\",\"zip\":7251000,\"contact_name\":\"123\",\"contact_phone\":\"123\"}', 0.00, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 0, 0, 'pending', NULL, NULL, '2019-02-20 14:39:29', '2019-02-20 14:39:29');
INSERT INTO `orders` VALUES (76, '20190220144131815551', 1, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u897f\\u57ce\\u533a\\u5e7f\\u5dde\\u6d77\\u73e0\\u533a\\u660e\\u901a\\u521b\\u610f\\u56edE\\u680b205\",\"zip\":7251000,\"contact_name\":\"123\",\"contact_phone\":\"123\"}', 3006.90, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 0, 0, 'pending', NULL, NULL, '2019-02-20 14:41:31', '2019-02-20 14:41:31');
INSERT INTO `orders` VALUES (77, '20190220144150270524', 1, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u897f\\u57ce\\u533a\\u5e7f\\u5dde\\u6d77\\u73e0\\u533a\\u660e\\u901a\\u521b\\u610f\\u56edE\\u680b205\",\"zip\":7251000,\"contact_name\":\"123\",\"contact_phone\":\"123\"}', 3341.00, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 0, 0, 'pending', NULL, NULL, '2019-02-20 14:41:50', '2019-02-20 14:41:50');
INSERT INTO `orders` VALUES (78, '20190220152120381186', 1, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u897f\\u57ce\\u533a\\u5e7f\\u5dde\\u6d77\\u73e0\\u533a\\u660e\\u901a\\u521b\\u610f\\u56edE\\u680b205\",\"zip\":7251000,\"contact_name\":\"123\",\"contact_phone\":\"123\"}', 3006.90, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 0, 0, 'pending', NULL, NULL, '2019-02-20 15:21:20', '2019-02-20 15:21:21');
INSERT INTO `orders` VALUES (79, '20190220153038625786', 1, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u897f\\u57ce\\u533a\\u5e7f\\u5dde\\u6d77\\u73e0\\u533a\\u660e\\u901a\\u521b\\u610f\\u56edE\\u680b205\",\"zip\":7251000,\"contact_name\":\"123\",\"contact_phone\":\"123\"}', 3006.90, NULL, NULL, 9, NULL, NULL, 'pending', NULL, 0, 0, 'pending', NULL, NULL, '2019-02-20 15:30:38', '2019-02-20 15:30:38');
INSERT INTO `orders` VALUES (80, '20190220153240423238', 1, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u897f\\u57ce\\u533a\\u5e7f\\u5dde\\u6d77\\u73e0\\u533a\\u660e\\u901a\\u521b\\u610f\\u56edE\\u680b205\",\"zip\":7251000,\"contact_name\":\"123\",\"contact_phone\":\"123\"}', 0.00, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 0, 0, 'pending', NULL, NULL, '2019-02-20 15:32:40', '2019-02-20 15:32:40');
INSERT INTO `orders` VALUES (81, '20190220153335506412', 1, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u897f\\u57ce\\u533a\\u5e7f\\u5dde\\u6d77\\u73e0\\u533a\\u660e\\u901a\\u521b\\u610f\\u56edE\\u680b205\",\"zip\":7251000,\"contact_name\":\"123\",\"contact_phone\":\"123\"}', 0.00, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 0, 0, 'pending', NULL, NULL, '2019-02-20 15:33:35', '2019-02-20 15:33:35');
INSERT INTO `orders` VALUES (82, '20190220153414934786', 1, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u897f\\u57ce\\u533a\\u5e7f\\u5dde\\u6d77\\u73e0\\u533a\\u660e\\u901a\\u521b\\u610f\\u56edE\\u680b205\",\"zip\":7251000,\"contact_name\":\"123\",\"contact_phone\":\"123\"}', 0.00, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 0, 0, 'pending', NULL, NULL, '2019-02-20 15:34:14', '2019-02-20 15:34:14');
INSERT INTO `orders` VALUES (83, '20190220153451302697', 1, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u897f\\u57ce\\u533a\\u5e7f\\u5dde\\u6d77\\u73e0\\u533a\\u660e\\u901a\\u521b\\u610f\\u56edE\\u680b205\",\"zip\":7251000,\"contact_name\":\"123\",\"contact_phone\":\"123\"}', 0.00, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 0, 0, 'pending', NULL, NULL, '2019-02-20 15:34:51', '2019-02-20 15:34:51');
INSERT INTO `orders` VALUES (84, '20190220154314137077', 1, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u897f\\u57ce\\u533a\\u5e7f\\u5dde\\u6d77\\u73e0\\u533a\\u660e\\u901a\\u521b\\u610f\\u56edE\\u680b205\",\"zip\":7251000,\"contact_name\":\"123\",\"contact_phone\":\"123\"}', 6682.00, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 0, 0, 'pending', NULL, NULL, '2019-02-20 15:43:14', '2019-02-20 15:43:14');
INSERT INTO `orders` VALUES (85, '20190220154840487556', 1, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u897f\\u57ce\\u533a\\u5e7f\\u5dde\\u6d77\\u73e0\\u533a\\u660e\\u901a\\u521b\\u610f\\u56edE\\u680b205\",\"zip\":7251000,\"contact_name\":\"123\",\"contact_phone\":\"123\"}', 0.00, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 0, 0, 'pending', NULL, NULL, '2019-02-20 15:48:40', '2019-02-20 15:48:40');
INSERT INTO `orders` VALUES (86, '20190220154850184071', 1, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u897f\\u57ce\\u533a\\u5e7f\\u5dde\\u6d77\\u73e0\\u533a\\u660e\\u901a\\u521b\\u610f\\u56edE\\u680b205\",\"zip\":7251000,\"contact_name\":\"123\",\"contact_phone\":\"123\"}', 0.00, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 0, 0, 'pending', NULL, NULL, '2019-02-20 15:48:50', '2019-02-20 15:48:50');
INSERT INTO `orders` VALUES (87, '20190220155014839547', 1, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u897f\\u57ce\\u533a\\u5e7f\\u5dde\\u6d77\\u73e0\\u533a\\u660e\\u901a\\u521b\\u610f\\u56edE\\u680b205\",\"zip\":7251000,\"contact_name\":\"123\",\"contact_phone\":\"123\"}', 0.00, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 0, 0, 'pending', NULL, NULL, '2019-02-20 15:50:14', '2019-02-20 15:50:14');
INSERT INTO `orders` VALUES (88, '20190220155029457779', 1, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u897f\\u57ce\\u533a\\u5e7f\\u5dde\\u6d77\\u73e0\\u533a\\u660e\\u901a\\u521b\\u610f\\u56edE\\u680b205\",\"zip\":7251000,\"contact_name\":\"123\",\"contact_phone\":\"123\"}', 0.00, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 0, 0, 'pending', NULL, NULL, '2019-02-20 15:50:29', '2019-02-20 15:50:29');
INSERT INTO `orders` VALUES (89, '20190220155042097302', 1, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u897f\\u57ce\\u533a\\u5e7f\\u5dde\\u6d77\\u73e0\\u533a\\u660e\\u901a\\u521b\\u610f\\u56edE\\u680b205\",\"zip\":7251000,\"contact_name\":\"123\",\"contact_phone\":\"123\"}', 0.00, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 0, 0, 'pending', NULL, NULL, '2019-02-20 15:50:42', '2019-02-20 15:50:42');
INSERT INTO `orders` VALUES (90, '20190220155108133483', 1, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u897f\\u57ce\\u533a\\u5e7f\\u5dde\\u6d77\\u73e0\\u533a\\u660e\\u901a\\u521b\\u610f\\u56edE\\u680b205\",\"zip\":7251000,\"contact_name\":\"123\",\"contact_phone\":\"123\"}', 0.00, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 0, 0, 'pending', NULL, NULL, '2019-02-20 15:51:08', '2019-02-20 15:51:08');
INSERT INTO `orders` VALUES (91, '20190220155132602502', 1, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u897f\\u57ce\\u533a\\u5e7f\\u5dde\\u6d77\\u73e0\\u533a\\u660e\\u901a\\u521b\\u610f\\u56edE\\u680b205\",\"zip\":7251000,\"contact_name\":\"123\",\"contact_phone\":\"123\"}', 0.00, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 0, 0, 'pending', NULL, NULL, '2019-02-20 15:51:32', '2019-02-20 15:51:32');
INSERT INTO `orders` VALUES (92, '20190220155315270166', 1, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u897f\\u57ce\\u533a\\u5e7f\\u5dde\\u6d77\\u73e0\\u533a\\u660e\\u901a\\u521b\\u610f\\u56edE\\u680b205\",\"zip\":7251000,\"contact_name\":\"123\",\"contact_phone\":\"123\"}', 0.00, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 0, 0, 'pending', NULL, NULL, '2019-02-20 15:53:15', '2019-02-20 15:53:15');
INSERT INTO `orders` VALUES (93, '20190220155329486642', 1, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u897f\\u57ce\\u533a\\u5e7f\\u5dde\\u6d77\\u73e0\\u533a\\u660e\\u901a\\u521b\\u610f\\u56edE\\u680b205\",\"zip\":7251000,\"contact_name\":\"123\",\"contact_phone\":\"123\"}', 0.00, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 0, 0, 'pending', NULL, NULL, '2019-02-20 15:53:29', '2019-02-20 15:53:29');
INSERT INTO `orders` VALUES (94, '20190220155440490538', 1, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u897f\\u57ce\\u533a\\u5e7f\\u5dde\\u6d77\\u73e0\\u533a\\u660e\\u901a\\u521b\\u610f\\u56edE\\u680b205\",\"zip\":7251000,\"contact_name\":\"123\",\"contact_phone\":\"123\"}', 0.00, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 0, 0, 'pending', NULL, NULL, '2019-02-20 15:54:40', '2019-02-20 15:54:40');
INSERT INTO `orders` VALUES (95, '20190220155608668310', 1, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u897f\\u57ce\\u533a\\u5e7f\\u5dde\\u6d77\\u73e0\\u533a\\u660e\\u901a\\u521b\\u610f\\u56edE\\u680b205\",\"zip\":7251000,\"contact_name\":\"123\",\"contact_phone\":\"123\"}', 0.00, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 0, 0, 'pending', NULL, NULL, '2019-02-20 15:56:08', '2019-02-20 15:56:08');
INSERT INTO `orders` VALUES (96, '20190220155635154933', 1, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u897f\\u57ce\\u533a\\u5e7f\\u5dde\\u6d77\\u73e0\\u533a\\u660e\\u901a\\u521b\\u610f\\u56edE\\u680b205\",\"zip\":7251000,\"contact_name\":\"123\",\"contact_phone\":\"123\"}', 3341.00, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 0, 0, 'pending', NULL, NULL, '2019-02-20 15:56:35', '2019-02-20 15:56:35');
INSERT INTO `orders` VALUES (97, '20190220155837592416', 1, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u897f\\u57ce\\u533a\\u5e7f\\u5dde\\u6d77\\u73e0\\u533a\\u660e\\u901a\\u521b\\u610f\\u56edE\\u680b205\",\"zip\":7251000,\"contact_name\":\"123\",\"contact_phone\":\"123\"}', 2388.00, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 0, 0, 'pending', NULL, NULL, '2019-02-20 15:58:37', '2019-02-20 15:58:37');
INSERT INTO `orders` VALUES (98, '20190220155850506013', 1, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u897f\\u57ce\\u533a\\u5e7f\\u5dde\\u6d77\\u73e0\\u533a\\u660e\\u901a\\u521b\\u610f\\u56edE\\u680b205\",\"zip\":7251000,\"contact_name\":\"123\",\"contact_phone\":\"123\"}', 1194.00, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 0, 0, 'pending', NULL, NULL, '2019-02-20 15:58:50', '2019-02-20 15:58:51');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for product_skus
-- ----------------------------
DROP TABLE IF EXISTS `product_skus`;
CREATE TABLE `product_skus`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(10, 2) NOT NULL,
  `stock` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `product_skus_product_id_foreign`(`product_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 94 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_skus
-- ----------------------------
INSERT INTO `product_skus` VALUES (1, '手机', '123456789', 12.80, 222, 1, '2019-02-14 09:03:43', '2019-02-14 09:03:43');
INSERT INTO `product_skus` VALUES (2, '手机', '<p>sadada</p>', 111.00, 222, 2, '2019-02-14 09:05:22', '2019-02-14 09:05:22');
INSERT INTO `product_skus` VALUES (3, '手机', '<p>sadada</p>', 112.00, 1111, 2, '2019-02-14 09:05:22', '2019-02-14 09:05:22');
INSERT INTO `product_skus` VALUES (4, 'autem', 'Magnam enim omnis architecto vel.', 2736.00, 4236, 3, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `product_skus` VALUES (5, 'culpa', 'Eius placeat cum occaecati sed velit.', 1900.00, 3780, 3, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `product_skus` VALUES (6, 'optio', 'Est distinctio quisquam quo quia accusantium eaque modi ipsum.', 3510.00, 83516, 3, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `product_skus` VALUES (7, 'consequatur', 'Voluptatibus asperiores eveniet vitae dolorem minus quasi nihil qui.', 1194.00, 98654, 4, '2019-02-14 09:28:29', '2019-02-20 15:58:51');
INSERT INTO `product_skus` VALUES (8, 'voluptas', 'Doloremque officiis eaque aut dolorem.', 7557.00, 65066, 4, '2019-02-14 09:28:29', '2019-02-18 02:03:16');
INSERT INTO `product_skus` VALUES (9, 'inventore', 'Perspiciatis in consequatur neque non aliquid qui.', 3669.00, 35701, 4, '2019-02-14 09:28:29', '2019-02-16 06:48:45');
INSERT INTO `product_skus` VALUES (10, 'amet', 'Quidem incidunt harum inventore ut est et in.', 7945.00, 67658, 5, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `product_skus` VALUES (11, 'nam', 'Quia doloribus nemo incidunt aperiam voluptatem perferendis.', 1896.00, 91695, 5, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `product_skus` VALUES (12, 'voluptatem', 'Sit enim neque cumque ipsa.', 5346.00, 68321, 5, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `product_skus` VALUES (13, 'perferendis', 'Dolores tempora rerum in quo itaque.', 5336.00, 46586, 6, '2019-02-14 09:28:29', '2019-02-20 11:34:53');
INSERT INTO `product_skus` VALUES (14, 'dicta', 'Soluta sed non dolor voluptatem commodi vitae culpa vero.', 3145.00, 71177, 6, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `product_skus` VALUES (15, 'qui', 'Nulla laboriosam dolore ullam facere.', 1851.00, 78032, 6, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `product_skus` VALUES (16, 'at', 'Tempora pariatur et assumenda illum.', 3341.00, 67655, 7, '2019-02-14 09:28:29', '2019-02-20 15:56:35');
INSERT INTO `product_skus` VALUES (17, 'aperiam', 'Beatae quia aut voluptatem assumenda voluptatibus.', 7201.00, 2360, 7, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `product_skus` VALUES (18, 'molestias', 'Tenetur culpa voluptatibus recusandae ad.', 2495.00, 19421, 7, '2019-02-14 09:28:29', '2019-02-20 11:19:36');
INSERT INTO `product_skus` VALUES (19, 'veritatis', 'Occaecati molestiae officia vel ipsam ad.', 1414.00, 10907, 8, '2019-02-14 09:28:29', '2019-02-18 03:40:02');
INSERT INTO `product_skus` VALUES (20, 'in', 'Est aut nobis harum qui maxime.', 2215.00, 33611, 8, '2019-02-14 09:28:29', '2019-02-16 08:03:50');
INSERT INTO `product_skus` VALUES (21, 'iste', 'Tempore ipsa consequatur molestiae cum.', 4147.00, 36850, 8, '2019-02-14 09:28:29', '2019-02-18 02:51:46');
INSERT INTO `product_skus` VALUES (22, 'omnis', 'Error blanditiis et doloribus maiores maxime.', 9441.00, 22013, 9, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `product_skus` VALUES (23, 'debitis', 'Explicabo voluptatem odio enim labore omnis quasi.', 5823.00, 67922, 9, '2019-02-14 09:28:29', '2019-02-16 14:55:28');
INSERT INTO `product_skus` VALUES (24, 'corrupti', 'Eius nam esse dolores a pariatur veniam.', 6324.00, 28938, 9, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `product_skus` VALUES (25, 'omnis', 'Placeat voluptatem voluptas voluptas sed ut.', 6497.00, 14269, 10, '2019-02-14 09:28:29', '2019-02-19 03:06:47');
INSERT INTO `product_skus` VALUES (26, 'voluptas', 'Mollitia est quo nisi sint consequatur minima necessitatibus.', 1450.00, 87804, 10, '2019-02-14 09:28:29', '2019-02-16 09:25:02');
INSERT INTO `product_skus` VALUES (27, 'error', 'Sunt quis aperiam provident pariatur id iure.', 992.00, 58795, 10, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `product_skus` VALUES (28, 'dicta', 'Maiores ut mollitia amet sed aut libero excepturi.', 2459.00, 30994, 11, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `product_skus` VALUES (29, 'provident', 'Dolores consequatur fugiat laudantium esse nam fuga.', 5999.00, 42829, 11, '2019-02-14 09:28:29', '2019-02-16 08:06:47');
INSERT INTO `product_skus` VALUES (30, 'quidem', 'Aliquam delectus dolor repudiandae amet est.', 1664.00, 72947, 11, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `product_skus` VALUES (31, 'veritatis', 'Quis aliquam reprehenderit cum amet.', 2336.00, 40362, 12, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `product_skus` VALUES (32, 'ut', 'Ut quos qui et.', 4280.00, 7901, 12, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `product_skus` VALUES (33, 'sunt', 'Culpa debitis exercitationem ducimus laborum consequatur mollitia.', 2552.00, 27045, 12, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `product_skus` VALUES (34, 'qui', 'Aut nostrum quos vel quia ut illo.', 2921.00, 23702, 13, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `product_skus` VALUES (35, 'at', 'Ut porro eveniet facere sunt hic aspernatur possimus.', 8670.00, 32620, 13, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `product_skus` VALUES (36, 'est', 'Veniam blanditiis aliquid maxime consequatur harum officia qui porro.', 5736.00, 87132, 13, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `product_skus` VALUES (37, 'et', 'Recusandae et rerum dicta rerum enim vitae.', 8839.00, 48141, 14, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `product_skus` VALUES (38, 'sunt', 'Similique tenetur culpa ut.', 64.00, 78434, 14, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `product_skus` VALUES (39, 'est', 'Officia incidunt quae nesciunt aut cum.', 5520.00, 28663, 14, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `product_skus` VALUES (40, 'delectus', 'Officiis magni doloremque qui.', 6384.00, 20943, 15, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `product_skus` VALUES (41, 'nobis', 'Et distinctio eum iure non sunt.', 4774.00, 58759, 15, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `product_skus` VALUES (42, 'repellat', 'Aperiam enim ullam illum sapiente incidunt dolores.', 70.00, 26172, 15, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `product_skus` VALUES (43, 'quae', 'Illo rerum reiciendis ad voluptatum molestiae.', 8378.00, 28103, 16, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `product_skus` VALUES (44, 'aut', 'Et molestias non accusantium consequatur non nostrum voluptatum.', 728.00, 48497, 16, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `product_skus` VALUES (45, 'iure', 'Reiciendis vitae omnis officia consequatur ducimus excepturi ut sed.', 80.00, 29224, 16, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `product_skus` VALUES (46, 'voluptas', 'Qui quasi quaerat asperiores sapiente.', 4139.00, 94400, 17, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `product_skus` VALUES (47, 'sint', 'Nisi autem ipsa explicabo corporis aut dolore deserunt.', 188.00, 86984, 17, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `product_skus` VALUES (48, 'fugit', 'Eaque modi error in recusandae dolorem reiciendis.', 9792.00, 80953, 17, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `product_skus` VALUES (49, 'voluptates', 'Eos dolor architecto et sunt aliquam consequatur quisquam et.', 7533.00, 29328, 18, '2019-02-14 09:28:29', '2019-02-16 09:20:15');
INSERT INTO `product_skus` VALUES (50, 'voluptatem', 'Aliquid exercitationem commodi cupiditate velit dolorem repudiandae a.', 8847.00, 92201, 18, '2019-02-14 09:28:29', '2019-02-16 09:28:39');
INSERT INTO `product_skus` VALUES (51, 'iure', 'Et sit sunt nemo aperiam deserunt impedit expedita cupiditate.', 7830.00, 94742, 18, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `product_skus` VALUES (52, 'est', 'Sint labore ea eos fuga dolor dicta mollitia.', 9975.00, 44981, 19, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `product_skus` VALUES (53, 'aut', 'Impedit tempora sunt qui veritatis fugiat aspernatur sed.', 4562.00, 27053, 19, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `product_skus` VALUES (54, 'veritatis', 'Cum at non molestiae ab fugiat et consequuntur.', 709.00, 78586, 19, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `product_skus` VALUES (55, 'assumenda', 'Quos assumenda voluptate recusandae saepe vero accusamus sunt adipisci.', 1711.00, 43103, 20, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `product_skus` VALUES (56, 'veritatis', 'Qui aut enim officia et a.', 8927.00, 73036, 20, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `product_skus` VALUES (57, 'sint', 'Voluptatem inventore vero aut.', 6647.00, 5086, 20, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `product_skus` VALUES (58, 'velit', 'Maiores est accusamus vel sint expedita nesciunt exercitationem.', 1370.00, 49531, 21, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `product_skus` VALUES (59, 'totam', 'Consequatur ut velit itaque iure.', 7719.00, 20581, 21, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `product_skus` VALUES (60, 'amet', 'Cum earum fugiat fuga ut sed cupiditate.', 2267.00, 10715, 21, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `product_skus` VALUES (61, 'veritatis', 'Esse consectetur molestiae omnis nisi sit est.', 4409.00, 48991, 22, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `product_skus` VALUES (62, 'temporibus', 'Harum quia voluptatum distinctio sunt qui.', 9745.00, 34182, 22, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `product_skus` VALUES (63, 'suscipit', 'Qui sit consectetur quia ab veniam aut et.', 1560.00, 63192, 22, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `product_skus` VALUES (64, 'quia', 'Vero assumenda atque non aut.', 7576.00, 52318, 23, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `product_skus` VALUES (65, 'voluptate', 'Eaque enim et ut qui suscipit sed temporibus.', 3646.00, 44807, 23, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `product_skus` VALUES (66, 'ullam', 'Aut quia enim dicta repudiandae.', 2087.00, 86970, 23, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `product_skus` VALUES (67, 'eos', 'Ut veniam at voluptas deleniti.', 4638.00, 3168, 24, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `product_skus` VALUES (68, 'quibusdam', 'Quia et aut facilis voluptas eligendi est.', 7405.00, 61205, 24, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `product_skus` VALUES (69, 'sunt', 'Quam deserunt qui consectetur laborum et est.', 9638.00, 81269, 24, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `product_skus` VALUES (70, 'explicabo', 'Ullam labore pariatur ut dolores odio.', 9176.00, 74003, 25, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `product_skus` VALUES (71, 'eligendi', 'At ipsa dolor est aliquid aut autem.', 5071.00, 29716, 25, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `product_skus` VALUES (72, 'dolor', 'Vel consectetur distinctio numquam enim.', 1524.00, 24897, 25, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `product_skus` VALUES (73, 'reprehenderit', 'Voluptatum exercitationem assumenda vel voluptatibus pariatur odio explicabo.', 9868.00, 70796, 26, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `product_skus` VALUES (74, 'maiores', 'Dolor blanditiis tempora unde labore.', 377.00, 38735, 26, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `product_skus` VALUES (75, 'quo', 'In amet quidem sit nisi autem deserunt harum ipsum.', 7303.00, 58099, 26, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `product_skus` VALUES (76, 'laboriosam', 'Iusto tempora repellendus consequatur iste.', 1286.00, 95488, 27, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `product_skus` VALUES (77, 'aut', 'Molestiae rerum optio est.', 7670.00, 50872, 27, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `product_skus` VALUES (78, 'ipsam', 'Et iusto quidem reiciendis dicta sit sed.', 8873.00, 25783, 27, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `product_skus` VALUES (79, 'quidem', 'Et harum perferendis facilis esse.', 7824.00, 12146, 28, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `product_skus` VALUES (80, 'architecto', 'Odio nemo id quaerat maiores aut.', 1685.00, 16147, 28, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `product_skus` VALUES (81, 'expedita', 'Voluptates aut qui modi nihil adipisci.', 2931.00, 61290, 28, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `product_skus` VALUES (82, 'omnis', 'Distinctio quia et rerum soluta neque excepturi.', 1416.00, 45009, 29, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `product_skus` VALUES (83, 'cumque', 'Itaque voluptate ut quisquam quaerat neque ut vero itaque.', 1976.00, 53641, 29, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `product_skus` VALUES (84, 'dolorum', 'Repudiandae dolorem est et qui iure sed.', 4037.00, 26698, 29, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `product_skus` VALUES (85, 'pariatur', 'Vitae distinctio aut nihil tenetur.', 4272.00, 8574, 30, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `product_skus` VALUES (86, 'earum', 'Voluptatem necessitatibus consequatur dolor eos consequuntur ut voluptatum.', 9462.00, 80594, 30, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `product_skus` VALUES (87, 'asperiores', 'Quisquam maxime iure repudiandae sequi qui.', 5052.00, 43356, 30, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `product_skus` VALUES (88, 'sit', 'Omnis perferendis minus pariatur dolores quia et optio.', 8096.00, 30768, 31, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `product_skus` VALUES (89, 'sunt', 'Impedit aut repellendus natus quidem.', 5478.00, 32153, 31, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `product_skus` VALUES (90, 'quo', 'Rerum quo assumenda et accusantium nihil qui cum.', 4554.00, 83431, 31, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `product_skus` VALUES (91, 'nam', 'Aperiam et eum soluta magnam libero et repellat.', 7699.00, 54821, 32, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `product_skus` VALUES (92, 'doloremque', 'Accusantium optio totam maiores dolore.', 1920.00, 29988, 32, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `product_skus` VALUES (93, 'culpa', 'Dicta et pariatur facere rerum saepe magnam numquam.', 7151.00, 34507, 32, '2019-02-14 09:28:29', '2019-02-14 09:28:29');

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `on_sale` tinyint(1) NOT NULL DEFAULT 1,
  `rating` double(8, 2) NOT NULL DEFAULT 5.00,
  `sold_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `review_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `price` decimal(10, 2) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 33 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES (1, '苹果手机', '<p>萨达萨达撒asda</p>', 'images/大象定制.jpg', 0, 5.00, 0, 0, 12.80, '2019-02-14 09:03:43', '2019-02-14 09:29:06');
INSERT INTO `products` VALUES (2, '华为手机', '<p>sadada</p>', 'images/八鲜-1(1).jpg', 0, 5.00, 0, 0, 111.00, '2019-02-14 09:05:22', '2019-02-14 09:29:14');
INSERT INTO `products` VALUES (3, 'rerum', '<p>Vel aut voluptatem facere aut ea voluptate nemo.</p>', 'https://iocaffcdn.phphub.org/uploads/images/201806/01/5320/XrtIwzrxj7.jpg', 0, 4.00, 0, 0, 1900.00, '2019-02-14 09:28:29', '2019-02-15 07:33:05');
INSERT INTO `products` VALUES (4, 'quia', 'Et dolores aut quo qui quae.', 'https://iocaffcdn.phphub.org/uploads/images/201806/01/5320/nIvBAQO5Pj.jpg', 1, 0.00, 0, 0, 1194.00, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `products` VALUES (5, 'qui', '<p>Magni impedit ea mollitia aut quasi.</p>', 'https://iocaffcdn.phphub.org/uploads/images/201806/01/5320/1B3n0ATKrn.jpg', 0, 5.00, 0, 0, 1896.00, '2019-02-14 09:28:29', '2019-02-15 03:08:31');
INSERT INTO `products` VALUES (6, 'soluta', 'Doloribus minus atque hic animi corporis.', 'https://iocaffcdn.phphub.org/uploads/images/201806/01/5320/nIvBAQO5Pj.jpg', 1, 4.00, 0, 0, 1851.00, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `products` VALUES (7, 'voluptatem', 'Nam et tenetur molestiae ratione fugiat expedita assumenda.', 'https://iocaffcdn.phphub.org/uploads/images/201806/01/5320/XrtIwzrxj7.jpg', 1, 2.00, 0, 0, 2495.00, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `products` VALUES (8, 'harum', 'Aliquid non ab vel placeat libero.', 'https://iocaffcdn.phphub.org/uploads/images/201806/01/5320/uYEHCJ1oRp.jpg', 1, 1.00, 0, 0, 1414.00, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `products` VALUES (9, 'excepturi', 'Ipsum reiciendis non et nemo.', 'https://iocaffcdn.phphub.org/uploads/images/201806/01/5320/82Wf2sg8gM.jpg', 1, 3.00, 0, 0, 5823.00, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `products` VALUES (10, 'vero', 'Odio voluptatum nihil et et.', 'https://iocaffcdn.phphub.org/uploads/images/201806/01/5320/C0bVuKB2nt.jpg', 1, 3.00, 0, 0, 992.00, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `products` VALUES (11, 'esse', 'Voluptas distinctio aliquid nihil qui fugiat nihil et.', 'https://iocaffcdn.phphub.org/uploads/images/201806/01/5320/r3BNRe4zXG.jpg', 1, 4.00, 0, 0, 1664.00, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `products` VALUES (12, 'sint', 'Vitae omnis rerum est laborum.', 'https://iocaffcdn.phphub.org/uploads/images/201806/01/5320/7kG1HekGK6.jpg', 1, 0.00, 0, 0, 2336.00, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `products` VALUES (13, 'blanditiis', 'Veritatis repudiandae aspernatur nihil enim assumenda quia omnis.', 'https://iocaffcdn.phphub.org/uploads/images/201806/01/5320/pa7DrV43Mw.jpg', 1, 1.00, 0, 0, 2921.00, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `products` VALUES (14, 'enim', 'Sit beatae dolores aut iste earum dignissimos reprehenderit omnis.', 'https://iocaffcdn.phphub.org/uploads/images/201806/01/5320/uYEHCJ1oRp.jpg', 1, 4.00, 0, 0, 64.00, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `products` VALUES (15, 'porro', 'Cumque id quisquam laborum voluptatem.', 'https://iocaffcdn.phphub.org/uploads/images/201806/01/5320/pa7DrV43Mw.jpg', 1, 3.00, 0, 0, 70.00, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `products` VALUES (16, 'et', 'Quo ipsa perferendis dolor nesciunt laboriosam.', 'https://iocaffcdn.phphub.org/uploads/images/201806/01/5320/1B3n0ATKrn.jpg', 1, 4.00, 0, 0, 80.00, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `products` VALUES (17, 'nostrum', 'Perspiciatis quia est culpa fuga nisi qui magni quas.', 'https://iocaffcdn.phphub.org/uploads/images/201806/01/5320/C0bVuKB2nt.jpg', 1, 2.00, 0, 0, 188.00, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `products` VALUES (18, 'explicabo', 'Consequatur odio aut quod dolor.', 'https://iocaffcdn.phphub.org/uploads/images/201806/01/5320/2JMRaFwRpo.jpg', 1, 1.00, 0, 0, 7533.00, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `products` VALUES (19, 'inventore', 'Reiciendis quia non non laborum dolorem a esse.', 'https://iocaffcdn.phphub.org/uploads/images/201806/01/5320/pa7DrV43Mw.jpg', 1, 5.00, 0, 0, 709.00, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `products` VALUES (20, 'architecto', 'Voluptatem sit aut porro dolorum.', 'https://iocaffcdn.phphub.org/uploads/images/201806/01/5320/7kG1HekGK6.jpg', 1, 1.00, 0, 0, 1711.00, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `products` VALUES (21, 'qui', 'Laudantium sit architecto qui ipsum nobis saepe.', 'https://iocaffcdn.phphub.org/uploads/images/201806/01/5320/uYEHCJ1oRp.jpg', 1, 4.00, 0, 0, 1370.00, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `products` VALUES (22, 'reprehenderit', 'Et itaque adipisci et occaecati vel dolorum dolores.', 'https://iocaffcdn.phphub.org/uploads/images/201806/01/5320/7kG1HekGK6.jpg', 1, 1.00, 0, 0, 1560.00, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `products` VALUES (23, 'quo', 'Sequi iusto nobis consequuntur incidunt ipsam aut itaque.', 'https://iocaffcdn.phphub.org/uploads/images/201806/01/5320/r3BNRe4zXG.jpg', 1, 0.00, 0, 0, 2087.00, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `products` VALUES (24, 'et', 'Ea sit modi pariatur.', 'https://iocaffcdn.phphub.org/uploads/images/201806/01/5320/1B3n0ATKrn.jpg', 1, 1.00, 0, 0, 4638.00, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `products` VALUES (25, 'blanditiis', 'Aut at velit neque.', 'https://iocaffcdn.phphub.org/uploads/images/201806/01/5320/82Wf2sg8gM.jpg', 1, 0.00, 0, 0, 1524.00, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `products` VALUES (26, 'deleniti', 'Placeat ex quis libero voluptatem sunt.', 'https://iocaffcdn.phphub.org/uploads/images/201806/01/5320/pa7DrV43Mw.jpg', 1, 1.00, 0, 0, 377.00, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `products` VALUES (27, 'sit', 'Explicabo est quas alias sit cum minima.', 'https://iocaffcdn.phphub.org/uploads/images/201806/01/5320/C0bVuKB2nt.jpg', 1, 2.00, 0, 0, 1286.00, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `products` VALUES (28, 'quo', 'Aut laboriosam dolore hic minima.', 'https://iocaffcdn.phphub.org/uploads/images/201806/01/5320/pa7DrV43Mw.jpg', 1, 2.00, 0, 0, 1685.00, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `products` VALUES (29, 'consequuntur', 'Reiciendis rem esse quibusdam nesciunt et accusamus et id.', 'https://iocaffcdn.phphub.org/uploads/images/201806/01/5320/1B3n0ATKrn.jpg', 1, 1.00, 0, 0, 1416.00, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `products` VALUES (30, 'voluptas', 'Ex porro vitae ut voluptatibus similique non maxime.', 'https://iocaffcdn.phphub.org/uploads/images/201806/01/5320/pa7DrV43Mw.jpg', 1, 1.00, 0, 0, 4272.00, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `products` VALUES (31, 'unde', 'Et officia repellendus voluptatem quas.', 'https://iocaffcdn.phphub.org/uploads/images/201806/01/5320/uYEHCJ1oRp.jpg', 1, 1.00, 0, 0, 4554.00, '2019-02-14 09:28:29', '2019-02-14 09:28:29');
INSERT INTO `products` VALUES (32, 'quisquam', 'Exercitationem et dolorem natus ab inventore.', 'https://iocaffcdn.phphub.org/uploads/images/201806/01/5320/2JMRaFwRpo.jpg', 1, 0.00, 0, 0, 1920.00, '2019-02-14 09:28:29', '2019-02-14 09:28:29');

-- ----------------------------
-- Table structure for user_addresses
-- ----------------------------
DROP TABLE IF EXISTS `user_addresses`;
CREATE TABLE `user_addresses`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `province` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `district` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` int(10) UNSIGNED NOT NULL,
  `contact_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_used_at` datetime(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_addresses_user_id_foreign`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_addresses
-- ----------------------------
INSERT INTO `user_addresses` VALUES (7, 1, '北京市', '市辖区', '西城区', '广州海珠区明通创意园E栋205', 7251000, '123', '123', '2019-02-20 11:19:36', '2019-02-14 07:32:27', '2019-02-20 11:19:36');

-- ----------------------------
-- Table structure for user_favorite_products
-- ----------------------------
DROP TABLE IF EXISTS `user_favorite_products`;
CREATE TABLE `user_favorite_products`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_favorite_products_user_id_foreign`(`user_id`) USING BTREE,
  INDEX `user_favorite_products_product_id_foreign`(`product_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp(0) NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email_verified` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, '123', '123456@qq.com', '2019-02-14 10:07:04', '$2y$10$FJZUtXhuWCz5BRAUkzHy3OfT/mXpA97uxlbyCCSgN/N8T/npK8VZa', 'BeM6fKAJsA3lCNb7CTPcE7WczU5zg1z57ZmV09HfD3z2zCTE0DIJZvFVMkj5', 1, '2019-02-14 02:05:28', '2019-02-14 02:05:28');

SET FOREIGN_KEY_CHECKS = 1;
