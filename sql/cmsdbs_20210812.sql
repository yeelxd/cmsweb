-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        5.7.35-log - MySQL Community Server (GPL)
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- 导出 cmsdbs 的数据库结构
DROP DATABASE IF EXISTS `cmsdbs`;
CREATE DATABASE IF NOT EXISTS `cmsdbs` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `cmsdbs`;

-- 导出  表 cmsdbs.sys_config 结构
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE IF NOT EXISTS `sys_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL COMMENT '名称',
  `key` varchar(64) NOT NULL COMMENT '键',
  `value` varchar(1000) NOT NULL COMMENT '值',
  `code` varchar(64) DEFAULT NULL COMMENT '编码',
  `type` int(11) NOT NULL DEFAULT '0' COMMENT '类型',
  `sort` int(11) NOT NULL DEFAULT '10' COMMENT '排序号',
  `update_time` varchar(64) DEFAULT NULL COMMENT '更新时间',
  `update_id` int(11) DEFAULT '0' COMMENT '更新人',
  `create_time` varchar(64) DEFAULT NULL COMMENT '创建时间',
  `create_id` int(11) DEFAULT '0' COMMENT '创建者',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='系统配置表';

-- 正在导出表  cmsdbs.sys_config 的数据：~20 rows (大约)
/*!40000 ALTER TABLE `sys_config` DISABLE KEYS */;
INSERT INTO `sys_config` (`id`, `name`, `key`, `value`, `code`, `type`, `sort`, `update_time`, `update_id`, `create_time`, `create_id`) VALUES
	(1, '系统参数', 'systemParam', '0', NULL, 0, 10, '2016-12-17 22:32:35', 1, '2016-12-17 22:32:35', 1),
	(2, 'API参数', 'apiParam', '0', NULL, 0, 11, '2016-12-17 22:33:41', 1, '2016-12-17 22:33:41', 1),
	(4, '版权', 'copyright', '©FLY的狐狸 版权所有', NULL, 1, 10, '2016-12-17 23:07:21', 1, '2016-12-17 23:07:21', 1),
	(5, 'API是否开启', 'API.FLAG', 'true', NULL, 2, 110, '2016-12-17 23:12:26', 1, '2016-12-17 23:12:26', 1),
	(6, 'ip黑名单，逗号分隔', 'API.IP.BLACK', '127.0.0.122,localhost22', NULL, 2, 111, '2016-12-17 23:16:29', 1, '2016-12-17 23:16:29', 1),
	(7, '支持的版本，逗号分隔', 'API.VERSIONS', '1.0.0,1.0.1', NULL, 2, 112, '2016-12-17 23:17:00', 1, '2016-12-17 23:17:00', 1),
	(8, '登陆验证是否开启', 'API.LOGIN.VALID', 'false', NULL, 2, 114, '2016-12-17 23:17:23', 1, '2016-12-17 23:17:23', 1),
	(9, '站点参数', 'siteParam', '0', NULL, 0, 12, '2016-12-31 16:27:12', 1, '2016-12-31 16:27:12', 1),
	(10, '多站点标示', 'SITE.MULTI.FLAG', 'false', NULL, 9, 211, '2016-12-31 16:28:02', 1, '2016-12-31 16:28:02', 1),
	(11, '站点根目录', 'SITE.TEMPLATE.PATH', '/template/', NULL, 9, 212, '2016-12-31 16:28:43', 1, '2016-12-31 16:28:43', 1),
	(12, 'Session站点列表', 'SITE.SESSION.SITES', 'sites', NULL, 9, 213, '2016-12-31 16:30:17', 1, '2016-12-31 16:30:17', 1),
	(13, 'Session站点', 'SITE.SESSION.SITE', 'site', NULL, 9, 214, '2016-12-31 16:30:38', 1, '2016-12-31 16:30:38', 1),
	(14, 'API参数加密是否开启', 'API.PARAM.ENCRYPT', 'false', NULL, 2, 115, '2017-03-17 23:17:23', 1, '2017-03-17 23:17:23', 1),
	(15, '文件备份参数', 'backupParam', '0', NULL, 0, 10, '2017-04-05 03:49:21', 1, '2017-04-05 03:49:21', 1),
	(16, '文件备份类型名称', 'backup.name', 'empty', NULL, 15, 10, '2017-04-05 03:50:12', 1, '2017-04-05 03:50:12', 1),
	(17, '文件系统备份路径', 'backup.filemanger.path', '/backup/', NULL, 15, 10, '2017-04-05 03:50:42', 1, '2017-04-05 03:50:42', 1),
	(18, '阿里云存储bucketname', 'backup.oss.bucketname', 'jflyfox', NULL, 15, 10, '2017-04-05 22:58:05', 1, '2017-04-05 22:58:05', 1),
	(19, '阿里云存储endpoint', 'backup.oss.endpoint', 'http://oss-cn-beijing.aliyuncs.com', NULL, 15, 10, '2017-04-05 22:59:01', 1, '2017-04-05 22:59:01', 1),
	(20, '阿里云存储ID', 'backup.oss.id', '', NULL, 15, 10, '2017-04-05 22:59:24', 1, '2017-04-05 22:59:24', 1),
	(21, '阿里云存储KEY', 'backup.oss.key', '', NULL, 15, 10, '2017-04-05 22:59:51', 1, '2017-04-05 22:59:51', 1);
/*!40000 ALTER TABLE `sys_config` ENABLE KEYS */;

-- 导出  表 cmsdbs.sys_department 结构
DROP TABLE IF EXISTS `sys_department`;
CREATE TABLE IF NOT EXISTS `sys_department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT '0' COMMENT '上级机构',
  `name` varchar(32) NOT NULL COMMENT '部门/11111',
  `code` varchar(128) DEFAULT NULL COMMENT '机构编码',
  `sort` int(11) DEFAULT '0' COMMENT '序号',
  `linkman` varchar(64) DEFAULT NULL COMMENT '联系人',
  `linkman_no` varchar(32) DEFAULT NULL COMMENT '联系人电话',
  `remark` varchar(128) DEFAULT NULL COMMENT '机构描述',
  `update_time` varchar(64) DEFAULT NULL COMMENT '更新时间',
  `update_id` int(11) DEFAULT '0' COMMENT '更新者',
  `create_time` varchar(64) DEFAULT NULL COMMENT '创建时间',
  `create_id` int(11) DEFAULT '0' COMMENT '创建者',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='部门';

-- 正在导出表  cmsdbs.sys_department 的数据：~3 rows (大约)
/*!40000 ALTER TABLE `sys_department` DISABLE KEYS */;
INSERT INTO `sys_department` (`id`, `parent_id`, `name`, `code`, `sort`, `linkman`, `linkman_no`, `remark`, `update_time`, `update_id`, `create_time`, `create_id`) VALUES
	(1, 0, '系统承建单位', NULL, 99, 'system', '15888888888', NULL, '2016-06-06 06:06:06', 1, '2016-06-06 06:06:06', 1),
	(2, 0, '注册用户', NULL, 97, '无人', '15888888888', NULL, '2015-04-28 22:39:34', 1, '2015-04-28 22:39:34', 1),
	(3, 0, '第三方用户', NULL, 90, '无人', '15888888888', NULL, '2015-06-01 12:39:41', 1, '2015-06-01 12:39:41', 1);
/*!40000 ALTER TABLE `sys_department` ENABLE KEYS */;

-- 导出  表 cmsdbs.sys_dict 结构
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE IF NOT EXISTS `sys_dict` (
  `dict_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dict_name` varchar(256) NOT NULL COMMENT '名称',
  `dict_type` varchar(64) NOT NULL COMMENT '类型',
  `dict_remark` varchar(256) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `UK_SYS_DICT_TYPE` (`dict_type`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8 COMMENT='数据字典主表';

-- 正在导出表  cmsdbs.sys_dict 的数据：~6 rows (大约)
/*!40000 ALTER TABLE `sys_dict` DISABLE KEYS */;
INSERT INTO `sys_dict` (`dict_id`, `dict_name`, `dict_type`, `dict_remark`) VALUES
	(1, '日志配置', 'systemLog', NULL),
	(2, '目录类型', 'articleType', NULL),
	(11, '目录类型', 'folderType', NULL),
	(100, '系统参数', 'systemParam', NULL),
	(101, '友情链接类型', 'friendlyLinkType', NULL),
	(102, '栏目类型', 'materialType', NULL);
/*!40000 ALTER TABLE `sys_dict` ENABLE KEYS */;

-- 导出  表 cmsdbs.sys_dict_detail 结构
DROP TABLE IF EXISTS `sys_dict_detail`;
CREATE TABLE IF NOT EXISTS `sys_dict_detail` (
  `detail_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dict_type` varchar(64) NOT NULL COMMENT '数据字典类型',
  `detail_name` varchar(256) DEFAULT NULL COMMENT '名称',
  `detail_code` varchar(32) DEFAULT NULL COMMENT '代码',
  `detail_sort` varchar(32) DEFAULT NULL COMMENT '排序号',
  `detail_type` varchar(32) DEFAULT NULL COMMENT '类型',
  `detail_state` varchar(32) DEFAULT NULL COMMENT '状态',
  `detail_content` varchar(256) DEFAULT NULL COMMENT '内容',
  `detail_remark` varchar(256) DEFAULT NULL COMMENT '备注',
  `create_time` varchar(64) DEFAULT NULL COMMENT '创建时间',
  `create_id` int(11) DEFAULT '0' COMMENT '创建者',
  PRIMARY KEY (`detail_id`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8 COMMENT='数据字典';

-- 正在导出表  cmsdbs.sys_dict_detail 的数据：~34 rows (大约)
/*!40000 ALTER TABLE `sys_dict_detail` DISABLE KEYS */;
INSERT INTO `sys_dict_detail` (`detail_id`, `dict_type`, `detail_name`, `detail_code`, `detail_sort`, `detail_type`, `detail_state`, `detail_content`, `detail_remark`, `create_time`, `create_id`) VALUES
	(1, 'folderType', '目录', '1', '1', NULL, NULL, NULL, NULL, '2015-01-30', 1),
	(2, 'folderType', 'a标签', '2', '2', NULL, NULL, NULL, NULL, '2015-01-30', 1),
	(3, 'folderType', 'a标签target', '3', '3', NULL, NULL, NULL, NULL, '2015-01-30', 1),
	(4, 'folderType', 'html标签', '4', '4', NULL, NULL, NULL, NULL, '2015-01-30', 1),
	(11, 'articleType', '正常', '1', '1', NULL, NULL, NULL, NULL, '2015-01-30', 1),
	(12, 'articleType', '预览', '2', '2', NULL, NULL, NULL, NULL, '2015-01-30', 1),
	(13, 'articleType', '程序', '3', '3', NULL, NULL, NULL, NULL, '2015-01-30', 1),
	(21, 'friendlyLinkType', '友情链接', NULL, '1', NULL, NULL, NULL, NULL, '2015-05-06 15:18:59', 1),
	(22, 'friendlyLinkType', '关于我们', NULL, '2', NULL, NULL, NULL, NULL, '2015-05-06 15:19:20', 1),
	(51, 'systemLog', 'sys_dict', '数据字典主表', '1', NULL, NULL, NULL, NULL, '2015-01-30', 1),
	(52, 'systemLog', 'sys_dict_detail', '数据字典', '2', NULL, NULL, NULL, NULL, '2015-01-30', 1),
	(53, 'systemLog', 'sys_menu', '菜单管理', '3', NULL, NULL, NULL, NULL, '2015-01-30', 1),
	(54, 'systemLog', 'sys_department', '组织机构', '4', NULL, NULL, NULL, NULL, '2015-01-30', 1),
	(55, 'systemLog', 'sys_user', '用户管理', '5', NULL, NULL, NULL, NULL, '2015-01-30', 1),
	(56, 'systemLog', 'sys_user_role', '用户角色授权', '6', NULL, NULL, NULL, NULL, '2015-01-30', 1),
	(57, 'systemLog', 'sys_role', '角色管理', '7', NULL, NULL, NULL, NULL, '2015-01-30', 1),
	(58, 'systemLog', 'sys_role_folder', '角色目录授权', '8', NULL, NULL, NULL, NULL, '2015-01-30', 1),
	(59, 'systemLog', 'sys_role_menu', '角色菜单授权', '9', NULL, NULL, NULL, NULL, '2015-01-30', 1),
	(60, 'systemLog', 'tb_folder', '目录管理', '10', NULL, NULL, NULL, NULL, '2015-01-30', 1),
	(61, 'systemLog', 'tb_article', '文章管理', '11', NULL, NULL, NULL, NULL, '2015-01-30', 1),
	(62, 'systemLog', 'tb_articlelike', '喜欢的文章管理', '12', NULL, NULL, NULL, NULL, '2015-01-30', 1),
	(63, 'systemLog', 'tb_comment', '评论管理', '13', NULL, NULL, NULL, NULL, '2015-01-30', 1),
	(64, 'systemLog', 'tb_tags', '标签管理', '14', NULL, NULL, NULL, NULL, '2015-01-30', 1),
	(65, 'systemLog', 'tb_contact', '联系人', '15', NULL, NULL, NULL, NULL, '2015-01-30', 1),
	(66, 'systemLog', 'tb_error', '错误管理', '16', NULL, NULL, NULL, NULL, '2015-01-30', 1),
	(67, 'systemLog', 'tb_friendlylink', '友情链接', '17', NULL, NULL, NULL, NULL, '2015-01-30', 1),
	(68, 'systemLog', 'tb_pageview', '访问量统计', '18', NULL, NULL, NULL, NULL, '2015-01-30', 1),
	(101, 'systemParam', '门头沟信息网', '1', '1', NULL, NULL, NULL, NULL, '2015-01-30', 1),
	(102, 'materialType', '文章', '1', '1', NULL, NULL, NULL, NULL, '2016-03-31 22:35:05', 1),
	(103, 'materialType', '图片', '2', '2', NULL, NULL, NULL, NULL, '2016-03-31 22:35:17', 1),
	(104, 'materialType', '视频', '3', '3', NULL, NULL, NULL, NULL, '2016-03-31 22:35:28', 1),
	(105, 'materialType', '其他', '9', '9', NULL, NULL, NULL, NULL, '2016-03-31 22:35:39', 1),
	(106, 'materialType', '栏目', '6', '6', NULL, NULL, NULL, NULL, '2016-03-31 23:46:27', 1),
	(107, 'systemLog', 'tb_site', '站点管理', '19', NULL, NULL, NULL, NULL, '2016-04-14 00:02:45', 1);
/*!40000 ALTER TABLE `sys_dict_detail` ENABLE KEYS */;

-- 导出  表 cmsdbs.sys_file_upload 结构
DROP TABLE IF EXISTS `sys_file_upload`;
CREATE TABLE IF NOT EXISTS `sys_file_upload` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(256) NOT NULL DEFAULT '' COMMENT '名称',
  `path` varchar(512) NOT NULL DEFAULT '' COMMENT '文件路径',
  `factpath` varchar(512) NOT NULL COMMENT '实际路径',
  `ext` varchar(32) NOT NULL COMMENT '后缀',
  `originalname` varchar(256) NOT NULL COMMENT '原名称',
  `type` int(11) NOT NULL DEFAULT '9' COMMENT '类型',
  `size` int(11) NOT NULL DEFAULT '0' COMMENT '大小',
  `remark` varchar(256) DEFAULT NULL COMMENT '描述',
  `business_type` int(11) NOT NULL DEFAULT '1' COMMENT '业务类型',
  `update_time` varchar(64) DEFAULT NULL COMMENT '更新时间',
  `update_id` int(11) DEFAULT '0' COMMENT '更新人',
  `create_time` varchar(64) DEFAULT NULL COMMENT '创建时间',
  `create_id` int(11) DEFAULT '0' COMMENT '创建者',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COMMENT='文件上传记录';

-- 正在导出表  cmsdbs.sys_file_upload 的数据：~45 rows (大约)
/*!40000 ALTER TABLE `sys_file_upload` DISABLE KEYS */;
INSERT INTO `sys_file_upload` (`id`, `name`, `path`, `factpath`, `ext`, `originalname`, `type`, `size`, `remark`, `business_type`, `update_time`, `update_id`, `create_time`, `create_id`) VALUES
	(1, '20210811_175700_937162.jpg', '/jflyfox/project/roll_image/20210811_175700_937162.jpg', 'C:/WorkCenter/Projects/ACommon/Collect/GitHub/cmsweb/src/main/webapp/jflyfox/project/roll_image/20210811_175700_937162.jpg', 'jpg', '1.jpg', 2, 157571, NULL, 1, '2021-08-11 17:57:00', 1, '2021-08-11 17:57:00', 1),
	(2, '20210811_180007_621230.jpg', '/jflyfox/project/image/20210811_180007_621230.jpg', 'C:/WorkCenter/Projects/ACommon/Collect/GitHub/cmsweb/src/main/webapp/jflyfox/project/image/20210811_180007_621230.jpg', 'jpg', '1.jpg', 2, 157571, NULL, 1, '2021-08-11 18:00:07', 1, '2021-08-11 18:00:07', 1),
	(3, '20210811_180038_250847.jpg', '/jflyfox/project/image/20210811_180038_250847.jpg', 'C:/WorkCenter/Projects/ACommon/Collect/GitHub/cmsweb/src/main/webapp/jflyfox/project/image/20210811_180038_250847.jpg', 'jpg', '2.jpg', 2, 146195, NULL, 1, '2021-08-11 18:00:38', 1, '2021-08-11 18:00:38', 1),
	(4, '20210811_180440_668979.jpg', '/jflyfox/project/image/20210811_180440_668979.jpg', 'C:/WorkCenter/Projects/ACommon/Collect/GitHub/cmsweb/src/main/webapp/jflyfox/project/image/20210811_180440_668979.jpg', 'jpg', '1.jpg', 2, 157571, NULL, 1, '2021-08-11 18:04:40', 1, '2021-08-11 18:04:40', 1),
	(5, '20210811_180534_859898.jpg', '/jflyfox/project/image/20210811_180534_859898.jpg', 'C:/WorkCenter/Projects/ACommon/Collect/GitHub/cmsweb/src/main/webapp/jflyfox/project/image/20210811_180534_859898.jpg', 'jpg', '2.jpg', 2, 146195, NULL, 1, '2021-08-11 18:05:34', 1, '2021-08-11 18:05:34', 1),
	(6, '20210811_180545_392566.jpg', '/jflyfox/project/image/20210811_180545_392566.jpg', 'C:/WorkCenter/Projects/ACommon/Collect/GitHub/cmsweb/src/main/webapp/jflyfox/project/image/20210811_180545_392566.jpg', 'jpg', '1.jpg', 2, 157571, NULL, 1, '2021-08-11 18:05:45', 1, '2021-08-11 18:05:45', 1),
	(7, '20210811_185101_309944.jpg', '/jflyfox/mtg/roll_image/20210811_185101_309944.jpg', 'C:/WorkCenter/Projects/ACommon/Collect/GitHub/cmsweb/src/main/webapp/jflyfox/mtg/roll_image/20210811_185101_309944.jpg', 'jpg', '2.jpg', 2, 146195, NULL, 1, '2021-08-11 18:51:01', 1, '2021-08-11 18:51:01', 1),
	(8, '20210811_185129_616367.jpg', '/jflyfox/mtg/roll_image/20210811_185129_616367.jpg', 'C:/WorkCenter/Projects/ACommon/Collect/GitHub/cmsweb/src/main/webapp/jflyfox/mtg/roll_image/20210811_185129_616367.jpg', 'jpg', '2.jpg', 2, 146195, NULL, 1, '2021-08-11 18:51:29', 1, '2021-08-11 18:51:29', 1),
	(9, '20210812_090318_485697.jpg', '/jflyfox/mtg/article_image/20210812_090318_485697.jpg', 'C:/WorkCenter/Projects/ACommon/Collect/GitHub/cmsweb/src/main/webapp/jflyfox/mtg/article_image/20210812_090318_485697.jpg', 'jpg', '1.jpg', 2, 157571, NULL, 1, '2021-08-12 09:03:18', 1, '2021-08-12 09:03:18', 1),
	(10, '20210812_092925_755972.jpg', '/jflyfox/website/article_image/20210812_092925_755972.jpg', 'C:/WorkCenter/Projects/ACommon/Collect/GitHub/cmsweb/src/main/webapp/jflyfox/website/article_image/20210812_092925_755972.jpg', 'jpg', '1.jpg', 2, 157571, NULL, 1, '2021-08-12 09:29:25', 1, '2021-08-12 09:29:25', 1),
	(11, '20210812_092946_436436.jpg', '/jflyfox/website/article_image/20210812_092946_436436.jpg', 'C:/WorkCenter/Projects/ACommon/Collect/GitHub/cmsweb/src/main/webapp/jflyfox/website/article_image/20210812_092946_436436.jpg', 'jpg', '1.jpg', 2, 157571, NULL, 1, '2021-08-12 09:29:46', 1, '2021-08-12 09:29:46', 1),
	(12, '20210812_093016_816017.jpg', '/jflyfox/website/article_image/20210812_093016_816017.jpg', 'C:/WorkCenter/Projects/ACommon/Collect/GitHub/cmsweb/src/main/webapp/jflyfox/website/article_image/20210812_093016_816017.jpg', 'jpg', '1.jpg', 2, 157571, NULL, 1, '2021-08-12 09:30:16', 1, '2021-08-12 09:30:16', 1),
	(13, '20210812_095635_480715.jpg', '/jflyfox/website/article_image/20210812_095635_480715.jpg', 'C:/WorkCenter/Projects/ACommon/Collect/GitHub/cmsweb/src/main/webapp/jflyfox/website/article_image/20210812_095635_480715.jpg', 'jpg', '3.jpg', 2, 148147, NULL, 1, '2021-08-12 09:56:35', 1, '2021-08-12 09:56:35', 1),
	(14, '20210812_095706_185575.jpg', '/jflyfox/website/article_image/20210812_095706_185575.jpg', 'C:/WorkCenter/Projects/ACommon/Collect/GitHub/cmsweb/src/main/webapp/jflyfox/website/article_image/20210812_095706_185575.jpg', 'jpg', '4eb87a813329d1d568ed5c88bca99659.water.jpg_1190x550_16e25e47.jpg', 2, 856543, NULL, 1, '2021-08-12 09:57:06', 1, '2021-08-12 09:57:06', 1),
	(15, '20210812_095719_439238.jpg', '/jflyfox/website/article_image/20210812_095719_439238.jpg', 'C:/WorkCenter/Projects/ACommon/Collect/GitHub/cmsweb/src/main/webapp/jflyfox/website/article_image/20210812_095719_439238.jpg', 'jpg', '4eb87a813329d1d568ed5c88bca99659.water.jpg_1190x550_16e25e47.jpg', 2, 856543, NULL, 1, '2021-08-12 09:57:19', 1, '2021-08-12 09:57:19', 1),
	(16, '20210812_095757_604783.jpg', '/jflyfox/website/article_image/20210812_095757_604783.jpg', 'C:/WorkCenter/Projects/ACommon/Collect/GitHub/cmsweb/src/main/webapp/jflyfox/website/article_image/20210812_095757_604783.jpg', 'jpg', '8dce2e3d9fc87b4e5e3ace7b0c78a5ef.jpg_1190x550_6607f387.jpg', 2, 651538, NULL, 1, '2021-08-12 09:57:57', 1, '2021-08-12 09:57:57', 1),
	(17, '20210812_095825_697784.jpg', '/jflyfox/website/article_image/20210812_095825_697784.jpg', 'C:/WorkCenter/Projects/ACommon/Collect/GitHub/cmsweb/src/main/webapp/jflyfox/website/article_image/20210812_095825_697784.jpg', 'jpg', '1.jpg', 2, 157571, NULL, 1, '2021-08-12 09:58:25', 1, '2021-08-12 09:58:25', 1),
	(18, '20210812_095840_226521.jpg', '/jflyfox/website/article_image/20210812_095840_226521.jpg', 'C:/WorkCenter/Projects/ACommon/Collect/GitHub/cmsweb/src/main/webapp/jflyfox/website/article_image/20210812_095840_226521.jpg', 'jpg', '2.jpg', 2, 146195, NULL, 1, '2021-08-12 09:58:40', 1, '2021-08-12 09:58:40', 1),
	(19, '20210812_154719_951333.jpg', '/jflyfox/photo/image/20210812_154719_951333.jpg', 'C:/WorkCenter/Projects/ACommon/Collect/GitHub/cmsweb/src/main/webapp/jflyfox/photo/image/20210812_154719_951333.jpg', 'jpg', 'tree1.jpg', 2, 856543, NULL, 1, '2021-08-12 15:47:19', 1, '2021-08-12 15:47:19', 1),
	(20, '20210812_162837_640519.jpg', '/jflyfox/blog/article_image/20210812_162837_640519.jpg', 'C:/WorkCenter/Projects/ACommon/Collect/GitHub/cmsweb/src/main/webapp/jflyfox/blog/article_image/20210812_162837_640519.jpg', 'jpg', '1.jpg', 2, 157571, NULL, 1, '2021-08-12 16:28:37', 1, '2021-08-12 16:28:37', 1),
	(21, '20210812_165040_988619.mp4', '/jflyfox/video/video/20210812_165040_988619.mp4', 'C:/WorkCenter/Projects/ACommon/Collect/GitHub/cmsweb/src/main/webapp/jflyfox/video/video/20210812_165040_988619.mp4', 'mp4', 'myflv.mp4', 4, 1867456, NULL, 1, '2021-08-12 16:50:40', 1, '2021-08-12 16:50:40', 1),
	(22, '20210812_165123_917964.flv', '/jflyfox/video/video/20210812_165123_917964.flv', 'C:/WorkCenter/Projects/ACommon/Collect/GitHub/cmsweb/src/main/webapp/jflyfox/video/video/20210812_165123_917964.flv', 'flv', '7nnet-qk7ug.flv', 4, 3427538, NULL, 1, '2021-08-12 16:51:23', 1, '2021-08-12 16:51:23', 1),
	(23, '20210812_165322_388833.flv', '/jflyfox/video/video/20210812_165322_388833.flv', 'C:/WorkCenter/Projects/ACommon/Collect/GitHub/cmsweb/src/main/webapp/jflyfox/video/video/20210812_165322_388833.flv', 'flv', 'myflv.flv', 4, 3427538, NULL, 1, '2021-08-12 16:53:22', 1, '2021-08-12 16:53:22', 1),
	(24, '20210812_165838_467370.flv', '/jflyfox/video/video/20210812_165838_467370.flv', 'C:/WorkCenter/Projects/ACommon/Collect/GitHub/cmsweb/src/main/webapp/jflyfox/video/video/20210812_165838_467370.flv', 'flv', 'myflv.flv', 4, 3427538, NULL, 1, '2021-08-12 16:58:38', 1, '2021-08-12 16:58:38', 1),
	(25, '20210812_172825_485227.jpg', '/jflyfox/mtg/roll_image/20210812_172825_485227.jpg', 'C:/WorkCenter/Projects/ACommon/Collect/GitHub/cmsweb/src/main/webapp/jflyfox/mtg/roll_image/20210812_172825_485227.jpg', 'jpg', '1.jpg', 2, 157571, NULL, 1, '2021-08-12 17:28:25', 1, '2021-08-12 17:28:25', 1),
	(26, '20210812_172839_186890.jpg', '/jflyfox/mtg/roll_image/20210812_172839_186890.jpg', 'C:/WorkCenter/Projects/ACommon/Collect/GitHub/cmsweb/src/main/webapp/jflyfox/mtg/roll_image/20210812_172839_186890.jpg', 'jpg', '3.jpg', 2, 148147, NULL, 1, '2021-08-12 17:28:39', 1, '2021-08-12 17:28:39', 1),
	(27, '20210812_172848_978291.jpg', '/jflyfox/mtg/roll_image/20210812_172848_978291.jpg', 'C:/WorkCenter/Projects/ACommon/Collect/GitHub/cmsweb/src/main/webapp/jflyfox/mtg/roll_image/20210812_172848_978291.jpg', 'jpg', 'tree1.jpg', 2, 856543, NULL, 1, '2021-08-12 17:28:48', 1, '2021-08-12 17:28:48', 1),
	(28, '20210812_172859_957632.jpg', '/jflyfox/mtg/roll_image/20210812_172859_957632.jpg', 'C:/WorkCenter/Projects/ACommon/Collect/GitHub/cmsweb/src/main/webapp/jflyfox/mtg/roll_image/20210812_172859_957632.jpg', 'jpg', 'tree1.jpg', 2, 856543, NULL, 1, '2021-08-12 17:28:59', 1, '2021-08-12 17:28:59', 1),
	(29, '20210812_173104_451689.jpg', '/jflyfox/mtg/article_image/20210812_173104_451689.jpg', 'C:/WorkCenter/Projects/ACommon/Collect/GitHub/cmsweb/src/main/webapp/jflyfox/mtg/article_image/20210812_173104_451689.jpg', 'jpg', 'tree1.jpg', 2, 856543, NULL, 1, '2021-08-12 17:31:04', 1, '2021-08-12 17:31:04', 1),
	(30, '20210812_173113_615316.jpg', '/jflyfox/mtg/article_image/20210812_173113_615316.jpg', 'C:/WorkCenter/Projects/ACommon/Collect/GitHub/cmsweb/src/main/webapp/jflyfox/mtg/article_image/20210812_173113_615316.jpg', 'jpg', 'tree1.jpg', 2, 856543, NULL, 1, '2021-08-12 17:31:13', 1, '2021-08-12 17:31:13', 1),
	(31, '20210812_174300_756427.jpg', '/jflyfox/mtg/roll_image/20210812_174300_756427.jpg', 'C:/WorkCenter/Projects/ACommon/Collect/GitHub/cmsweb/src/main/webapp/jflyfox/mtg/roll_image/20210812_174300_756427.jpg', 'jpg', 'tree1.jpg', 2, 856543, NULL, 1, '2021-08-12 17:43:00', 1, '2021-08-12 17:43:00', 1),
	(32, '20210812_174309_91785.jpg', '/jflyfox/mtg/roll_image/20210812_174309_91785.jpg', 'C:/WorkCenter/Projects/ACommon/Collect/GitHub/cmsweb/src/main/webapp/jflyfox/mtg/roll_image/20210812_174309_91785.jpg', 'jpg', '2.jpg', 2, 146195, NULL, 1, '2021-08-12 17:43:09', 1, '2021-08-12 17:43:09', 1),
	(33, '20210812_174324_521407.jpg', '/jflyfox/mtg/roll_image/20210812_174324_521407.jpg', 'C:/WorkCenter/Projects/ACommon/Collect/GitHub/cmsweb/src/main/webapp/jflyfox/mtg/roll_image/20210812_174324_521407.jpg', 'jpg', 'tree2.jpg', 2, 651538, NULL, 1, '2021-08-12 17:43:24', 1, '2021-08-12 17:43:24', 1),
	(34, '20210812_174643_476091.jpg', '/jflyfox/mtg/roll_image/20210812_174643_476091.jpg', 'C:/WorkCenter/Projects/ACommon/Collect/GitHub/cmsweb/src/main/webapp/jflyfox/mtg/roll_image/20210812_174643_476091.jpg', 'jpg', 'in2.jpg', 2, 210633, NULL, 1, '2021-08-12 17:46:43', 1, '2021-08-12 17:46:43', 1),
	(35, '20210812_175353_204900.jpg', '/jflyfox/mtg/roll_image/20210812_175353_204900.jpg', 'C:/WorkCenter/Projects/ACommon/Collect/GitHub/cmsweb/src/main/webapp/jflyfox/mtg/roll_image/20210812_175353_204900.jpg', 'jpg', '创新.jpg', 2, 66582, NULL, 1, '2021-08-12 17:53:53', 1, '2021-08-12 17:53:53', 1),
	(36, '20210812_175404_901608.jpg', '/jflyfox/mtg/roll_image/20210812_175404_901608.jpg', 'C:/WorkCenter/Projects/ACommon/Collect/GitHub/cmsweb/src/main/webapp/jflyfox/mtg/roll_image/20210812_175404_901608.jpg', 'jpg', '合作.jpg', 2, 50633, NULL, 1, '2021-08-12 17:54:04', 1, '2021-08-12 17:54:04', 1),
	(37, '20210812_175411_849641.jpg', '/jflyfox/mtg/roll_image/20210812_175411_849641.jpg', 'C:/WorkCenter/Projects/ACommon/Collect/GitHub/cmsweb/src/main/webapp/jflyfox/mtg/roll_image/20210812_175411_849641.jpg', 'jpg', '合作.jpg', 2, 50633, NULL, 1, '2021-08-12 17:54:11', 1, '2021-08-12 17:54:11', 1),
	(38, '20210812_175417_185798.jpg', '/jflyfox/mtg/roll_image/20210812_175417_185798.jpg', 'C:/WorkCenter/Projects/ACommon/Collect/GitHub/cmsweb/src/main/webapp/jflyfox/mtg/roll_image/20210812_175417_185798.jpg', 'jpg', '共赢.jpg', 2, 26315, NULL, 1, '2021-08-12 17:54:17', 1, '2021-08-12 17:54:17', 1),
	(39, '20210812_175423_946249.jpg', '/jflyfox/mtg/roll_image/20210812_175423_946249.jpg', 'C:/WorkCenter/Projects/ACommon/Collect/GitHub/cmsweb/src/main/webapp/jflyfox/mtg/roll_image/20210812_175423_946249.jpg', 'jpg', '2.jpg', 2, 146195, NULL, 1, '2021-08-12 17:54:23', 1, '2021-08-12 17:54:23', 1),
	(40, '20210812_175918_559534.png', '/jflyfox/mtg/roll_image/20210812_175918_559534.png', 'C:/WorkCenter/Projects/ACommon/Collect/GitHub/cmsweb/src/main/webapp/jflyfox/mtg/roll_image/20210812_175918_559534.png', 'png', '价值观.png', 2, 146249, NULL, 1, '2021-08-12 17:59:18', 1, '2021-08-12 17:59:18', 1),
	(41, '20210812_175924_227807.png', '/jflyfox/mtg/roll_image/20210812_175924_227807.png', 'C:/WorkCenter/Projects/ACommon/Collect/GitHub/cmsweb/src/main/webapp/jflyfox/mtg/roll_image/20210812_175924_227807.png', 'png', '使命.png', 2, 152094, NULL, 1, '2021-08-12 17:59:24', 1, '2021-08-12 17:59:24', 1),
	(42, '20210812_180831_73009.jpg', '/jflyfox/mtg/roll_image/20210812_180831_73009.jpg', 'C:/WorkCenter/Projects/ACommon/Collect/GitHub/cmsweb/src/main/webapp/jflyfox/mtg/roll_image/20210812_180831_73009.jpg', 'jpg', '共进.jpg', 2, 20987, NULL, 1, '2021-08-12 18:08:31', 1, '2021-08-12 18:08:31', 1),
	(43, '20210812_180852_630028.jpg', '/jflyfox/mtg/roll_image/20210812_180852_630028.jpg', 'C:/WorkCenter/Projects/ACommon/Collect/GitHub/cmsweb/src/main/webapp/jflyfox/mtg/roll_image/20210812_180852_630028.jpg', 'jpg', '技术.jpg', 2, 94738, NULL, 1, '2021-08-12 18:08:52', 1, '2021-08-12 18:08:52', 1),
	(44, '20210812_180951_846180.jpg', '/jflyfox/mtg/roll_image/20210812_180951_846180.jpg', 'C:/WorkCenter/Projects/ACommon/Collect/GitHub/cmsweb/src/main/webapp/jflyfox/mtg/roll_image/20210812_180951_846180.jpg', 'jpg', '合作.jpg', 2, 50649, NULL, 1, '2021-08-12 18:09:51', 1, '2021-08-12 18:09:51', 1),
	(45, '20210812_183243_840724.mp4', '/jflyfox/video/video/20210812_183243_840724.mp4', 'C:/WorkCenter/Projects/ACommon/Collect/GitHub/cmsweb/src/main/webapp/jflyfox/video/video/20210812_183243_840724.mp4', 'mp4', '20160217_094403_874395.mp4', 4, 788493, NULL, 1, '2021-08-12 18:32:43', 1, '2021-08-12 18:32:43', 1);
/*!40000 ALTER TABLE `sys_file_upload` ENABLE KEYS */;

-- 导出  表 cmsdbs.sys_log 结构
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE IF NOT EXISTS `sys_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `log_type` int(11) NOT NULL COMMENT '类型',
  `oper_object` varchar(64) DEFAULT NULL COMMENT '操作对象',
  `oper_table` varchar(64) NOT NULL COMMENT '操作表',
  `oper_id` int(11) DEFAULT '0' COMMENT '操作主键',
  `oper_type` varchar(64) DEFAULT NULL COMMENT '操作类型',
  `oper_remark` varchar(100) DEFAULT NULL COMMENT '操作备注',
  `create_time` varchar(64) NOT NULL COMMENT '创建时间',
  `create_id` int(11) DEFAULT '0' COMMENT '创建者',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COMMENT='日志';

-- 正在导出表  cmsdbs.sys_log 的数据：~35 rows (大约)
/*!40000 ALTER TABLE `sys_log` DISABLE KEYS */;
INSERT INTO `sys_log` (`id`, `log_type`, `oper_object`, `oper_table`, `oper_id`, `oper_type`, `oper_remark`, `create_time`, `create_id`) VALUES
	(1, 2, '用户管理', 'sys_user', 1, '登入', '', '2021-08-11 15:48:07', 1),
	(2, 2, '用户管理', 'sys_user', 1, '登出', '', '2021-08-11 15:54:04', 1),
	(3, 2, '用户管理', 'sys_user', 1, '登入', '', '2021-08-11 15:54:12', 1),
	(4, 2, '用户管理', 'sys_user', 1, '登入', '', '2021-08-11 18:37:35', 1),
	(5, 2, '用户管理', 'sys_user', 1, '登出', '', '2021-08-11 18:38:20', 1),
	(6, 2, '用户管理', 'sys_user', 1, '登入', '', '2021-08-11 18:38:38', 1),
	(7, 2, '用户管理', 'sys_user', 1, '登出', '', '2021-08-11 18:41:30', 1),
	(8, 2, '用户管理', 'sys_user', 1, '登入', '', '2021-08-11 18:41:36', 1),
	(9, 2, '用户管理', 'sys_user', 1, '登入', '', '2021-08-11 18:44:11', 1),
	(10, 2, '用户管理', 'sys_user', 1, '登入', '', '2021-08-12 08:51:19', 1),
	(11, 2, '用户管理', 'sys_user', 1, '登出', '', '2021-08-12 09:28:20', 1),
	(12, 2, '用户管理', 'sys_user', 1, '登入', '', '2021-08-12 09:28:47', 1),
	(13, 2, '用户管理', 'sys_user', 1, '登出', '', '2021-08-12 10:02:53', 1),
	(14, 2, '用户管理', 'sys_user', 1, '登入', '', '2021-08-12 10:05:57', 1),
	(15, 2, '用户管理', 'sys_user', 1, '登入', '', '2021-08-12 14:56:37', 1),
	(16, 2, '用户管理', 'sys_user', 1, '登入', '', '2021-08-12 15:44:10', 1),
	(17, 2, '用户管理', 'sys_user', 1, '登出', '', '2021-08-12 15:45:03', 1),
	(18, 2, '用户管理', 'sys_user', 1, '登入', '', '2021-08-12 17:01:34', 1),
	(19, 2, '用户管理', 'sys_user', 1, '登出', '', '2021-08-12 17:02:14', 1),
	(20, 2, '用户管理', 'sys_user', 1, '登入', '', '2021-08-12 17:02:28', 1),
	(21, 2, '用户管理', 'sys_user', 1, '登出', '', '2021-08-12 17:02:43', 1),
	(22, 2, '用户管理', 'sys_user', 1, '登入', '', '2021-08-12 17:02:59', 1),
	(23, 2, '用户管理', 'sys_user', 1, '登出', '', '2021-08-12 17:03:11', 1),
	(24, 2, '用户管理', 'sys_user', 1, '登入', '', '2021-08-12 17:03:34', 1),
	(25, 2, '用户管理', 'sys_user', 1, '登入', '', '2021-08-12 17:18:32', 1),
	(26, 2, '用户管理', 'sys_user', 1, '登出', '', '2021-08-12 17:18:47', 1),
	(27, 2, '用户管理', 'sys_user', 1, '登入', '', '2021-08-12 17:20:00', 1),
	(28, 2, '用户管理', 'sys_user', 1, '登出', '', '2021-08-12 17:21:15', 1),
	(29, 2, '用户管理', 'sys_user', 1, '登入', '', '2021-08-12 17:21:41', 1),
	(30, 2, '用户管理', 'sys_user', 1, '登出', '', '2021-08-12 17:22:21', 1),
	(31, 2, '用户管理', 'sys_user', 1, '登入', '', '2021-08-12 17:26:56', 1),
	(32, 2, '用户管理', 'sys_user', 1, '登出', '', '2021-08-12 17:42:01', 1),
	(33, 2, '用户管理', 'sys_user', 1, '登入', '', '2021-08-12 17:42:41', 1),
	(34, 2, '用户管理', 'sys_user', 1, '登入', '', '2021-08-12 18:32:07', 1),
	(35, 2, '用户管理', 'sys_user', 1, '登出', '', '2021-08-13 08:36:05', 1),
	(36, 2, '用户管理', 'sys_user', 1, '登入', '', '2021-08-13 08:44:04', 1),
	(37, 2, '用户管理', 'sys_user', 1, '登出', '', '2021-08-13 08:45:21', 1),
	(38, 2, '用户管理', 'sys_user', 4, '登入', '', '2021-08-13 08:45:43', 4),
	(39, 2, '用户管理', 'sys_user', 4, '登出', '', '2021-08-13 08:47:00', 4),
	(40, 2, '用户管理', 'sys_user', 1, '登入', '', '2021-08-13 08:47:11', 1),
	(41, 2, '用户管理', 'sys_user', 1, '登出', '', '2021-08-13 08:49:25', 1),
	(42, 2, '用户管理', 'sys_user', 4, '登入', '', '2021-08-13 08:49:35', 4),
	(43, 2, '用户管理', 'sys_user', 1, '登入', '', '2021-08-13 08:50:25', 1);
/*!40000 ALTER TABLE `sys_log` ENABLE KEYS */;

-- 导出  表 cmsdbs.sys_menu 结构
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE IF NOT EXISTS `sys_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `parentid` int(11) NOT NULL DEFAULT '0' COMMENT '父id',
  `name` varchar(200) NOT NULL DEFAULT '' COMMENT '名称/11111',
  `urlkey` varchar(256) DEFAULT NULL COMMENT '菜单key',
  `url` varchar(256) DEFAULT NULL COMMENT '链接地址',
  `status` int(11) DEFAULT '1' COMMENT '状态//radio/2,隐藏,1,显示',
  `type` int(11) DEFAULT '1' COMMENT '类型//select/1,根目录,2,a标签,3,a标签_blank,4,外部url',
  `sort` int(11) DEFAULT '1' COMMENT '排序',
  `level` int(11) DEFAULT '1' COMMENT '级别',
  `create_time` varchar(64) DEFAULT NULL COMMENT '创建时间',
  `create_id` int(11) DEFAULT '0' COMMENT '创建者',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COMMENT='菜单';

-- 正在导出表  cmsdbs.sys_menu 的数据：~31 rows (大约)
/*!40000 ALTER TABLE `sys_menu` DISABLE KEYS */;
INSERT INTO `sys_menu` (`id`, `parentid`, `name`, `urlkey`, `url`, `status`, `type`, `sort`, `level`, `create_time`, `create_id`) VALUES
	(1, 0, '系统管理', 'system_root', NULL, 1, 1, 90, 1, '2015-04-27 17:28:06', 1),
	(2, 1, '组织机构', 'department', 'system/department', 1, 1, 91, 2, '2015-04-27 17:28:25', 1),
	(3, 1, '用户管理', 'user', 'system/user', 1, 1, 92, 2, '2015-04-27 17:28:46', 1),
	(4, 1, '角色管理', 'role', 'system/role', 1, 1, 94, 2, '2015-04-27 17:29:13', 1),
	(5, 1, '菜单管理', 'menu', 'system/menu', 1, 1, 96, 2, '2015-04-27 17:29:43', 1),
	(6, 1, '数据字典', 'dict', 'system/dict', 1, 1, 97, 2, '2015-04-27 17:30:05', 1),
	(7, 20, '联系人管理', 'contact', 'admin/contact/list', 1, 1, 38, 2, '2015-04-28 12:38:04', 1),
	(8, 18, '栏目管理', 'folder', 'admin/folder/list', 1, 1, 11, 2, '2015-04-28 22:34:46', 1),
	(9, 18, '文章管理', 'article', 'admin/article/list', 1, 1, 14, 2, '2015-04-28 22:35:24', 1),
	(10, 20, '友情链接', 'friendlylink', 'admin/friendlylink/list', 1, 1, 32, 2, '2015-04-28 22:35:56', 1),
	(11, 20, '访问量统计', 'pageview', 'admin/pageview', 1, 1, 33, 2, '2015-04-28 22:36:34', 1),
	(12, 19, '回复管理', 'comment', 'admin/comment/list', 1, 1, 21, 2, '2015-05-06 09:40:46', 1),
	(13, 20, '缓存更新', 'operation', 'admin/operation', 1, 1, 31, 2, '2015-05-06 11:41:33', 1),
	(14, 1, '日志管理', 'log', 'system/log/list', 1, 1, 98, 2, '2016-01-03 18:09:18', 1),
	(15, 19, '意见反馈', 'advicefeedback', 'admin/advicefeedback/list', 1, 1, 22, 2, '2016-01-29 01:06:46', 1),
	(16, 18, '栏目公告', 'foldernotice', 'admin/foldernotice/list', 1, 1, 12, 2, '2016-01-29 01:07:35', 1),
	(17, 18, '栏目滚动图片', 'folderrollpicture', 'admin/folderrollpicture/list', 1, 1, 13, 2, '2016-01-29 01:11:48', 1),
	(18, 0, '内容管理', 'folder_root', NULL, 1, 1, 10, 1, '2016-01-29 04:24:45', 1),
	(19, 0, '评论管理', 'comment_root', NULL, 1, 1, 20, 1, '2016-01-29 04:26:57', 1),
	(20, 0, '其他管理', 'other_root', NULL, 1, 1, 30, 1, '2016-01-29 04:29:39', 1),
	(21, 0, '首页', 'home', 'admin/home', 1, 1, 2, 1, '2015-04-27 17:28:06', 1),
	(22, 0, '素材管理', 'material_root', NULL, 1, 1, 16, 1, '2016-02-05 11:15:25', 1),
	(23, 22, '图片管理', 'image', 'admin/image/list', 1, 1, 18, 2, '2016-02-05 11:15:45', 1),
	(24, 22, '相册管理', 'imagealbum', 'admin/imagealbum/list', 1, 1, 17, 2, '2016-02-05 11:17:57', 1),
	(25, 22, '我的相册', 'imageshow', 'admin/imageshow/list', 1, 1, 16, 2, '2016-02-10 01:22:01', 1),
	(26, 22, '视频专辑管理', 'videoalbum', 'admin/videoalbum/list', 1, 1, 19, 2, '2016-02-16 16:25:08', 1),
	(27, 22, '视频管理', 'video', 'admin/video/list', 1, 1, 20, 2, '2016-02-16 16:25:37', 1),
	(28, 0, '模板管理', 'filemanager', 'admin/filemanager/list', 1, 1, 60, 1, '2016-03-06 09:36:36', 1),
	(29, 18, '文章审核', 'article_approve', 'admin/article/list_approve', 1, 1, 15, 2, '2016-03-16 00:21:12', 1),
	(30, 20, '站点管理', 'site', 'admin/site/list', 1, 1, 31, 2, '2016-04-02 22:26:33', 1),
	(31, 1, '参数配置', 'config', 'system/config', 1, 1, 97, 2, '2016-12-17 23:34:13', 1);
/*!40000 ALTER TABLE `sys_menu` ENABLE KEYS */;

-- 导出  表 cmsdbs.sys_role 结构
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE IF NOT EXISTS `sys_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(200) NOT NULL DEFAULT '' COMMENT '名称/11111/',
  `status` int(11) DEFAULT '1' COMMENT '状态//radio/2,隐藏,1,显示',
  `sort` int(11) DEFAULT '1' COMMENT '排序',
  `remark` text COMMENT '说明//textarea',
  `create_time` varchar(64) DEFAULT NULL COMMENT '创建时间',
  `create_id` int(11) DEFAULT '0' COMMENT '创建者',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='角色';

-- 正在导出表  cmsdbs.sys_role 的数据：~1 rows (大约)
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
INSERT INTO `sys_role` (`id`, `name`, `status`, `sort`, `remark`, `create_time`, `create_id`) VALUES
	(2, '站点维护角色', 1, 10, '站点内容维护', '2021-08-13 08:32:49', 1);
/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;

-- 导出  表 cmsdbs.sys_role_menu 结构
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE IF NOT EXISTS `sys_role_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `roleid` int(11) NOT NULL COMMENT '角色id',
  `menuid` int(11) NOT NULL COMMENT '菜单id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='角色和菜单关联';

-- 正在导出表  cmsdbs.sys_role_menu 的数据：~14 rows (大约)
/*!40000 ALTER TABLE `sys_role_menu` DISABLE KEYS */;
INSERT INTO `sys_role_menu` (`id`, `roleid`, `menuid`) VALUES
	(15, 2, 21),
	(16, 2, 18),
	(17, 2, 8),
	(18, 2, 16),
	(19, 2, 17),
	(20, 2, 9),
	(21, 2, 19),
	(22, 2, 12),
	(23, 2, 15),
	(24, 2, 20),
	(25, 2, 13),
	(26, 2, 10),
	(27, 2, 11);
/*!40000 ALTER TABLE `sys_role_menu` ENABLE KEYS */;

-- 导出  表 cmsdbs.sys_user 结构
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE IF NOT EXISTS `sys_user` (
  `userid` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(32) NOT NULL COMMENT '用户名/11111',
  `password` varchar(32) NOT NULL COMMENT '密码',
  `realname` varchar(32) DEFAULT NULL COMMENT '真实姓名',
  `departid` int(11) DEFAULT '0' COMMENT '部门/11111/dict',
  `usertype` int(11) DEFAULT '2' COMMENT '类型//select/1,管理员,2,普通用户,3,前台用户,4,第三方用户,5,API用户',
  `state` int(11) DEFAULT '10' COMMENT '状态',
  `thirdid` varchar(200) DEFAULT NULL COMMENT '第三方ID',
  `endtime` varchar(32) DEFAULT NULL COMMENT '结束时间',
  `email` varchar(64) DEFAULT NULL COMMENT 'email',
  `tel` varchar(32) DEFAULT NULL COMMENT '手机号',
  `address` varchar(32) DEFAULT NULL COMMENT '地址',
  `title_url` varchar(200) DEFAULT NULL COMMENT '头像地址',
  `remark` varchar(1000) DEFAULT NULL COMMENT '说明',
  `theme` varchar(64) DEFAULT 'default' COMMENT '主题',
  `back_site_id` int(11) DEFAULT '0' COMMENT '后台选择站点ID',
  `create_site_id` int(11) DEFAULT '1' COMMENT '创建站点ID',
  `create_time` varchar(64) DEFAULT NULL COMMENT '创建时间',
  `create_id` int(11) DEFAULT '0' COMMENT '创建者',
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='用户';

-- 正在导出表  cmsdbs.sys_user 的数据：~3 rows (大约)
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` (`userid`, `username`, `password`, `realname`, `departid`, `usertype`, `state`, `thirdid`, `endtime`, `email`, `tel`, `address`, `title_url`, `remark`, `theme`, `back_site_id`, `create_site_id`, `create_time`, `create_id`) VALUES
	(1, 'admin', 'MjOgSuNJActX1orE0zo6Lw==', '系统管理员', 1, 1, 10, NULL, NULL, '545798731@qq.com', '13913163260', NULL, NULL, '专业服务，精益求精，客户至上！', 'flat', 5, 1, '2016-06-06 06:06:06', 1),
	(4, 'siteadmin', 'dRv9FT/BFqYPwTmcNSnrRA==', '站点管理员', 2, 2, 2, NULL, NULL, 'site@admin.com', '13900006666', NULL, NULL, NULL, 'inverse', 0, 2, '2021-08-13 08:39:22', 1);
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;

-- 导出  表 cmsdbs.sys_user_role 结构
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE IF NOT EXISTS `sys_user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `userid` int(11) NOT NULL COMMENT '用户id',
  `roleid` int(11) NOT NULL COMMENT '角色id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户和角色关联';

-- 正在导出表  cmsdbs.sys_user_role 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `sys_user_role` DISABLE KEYS */;
INSERT INTO `sys_user_role` (`id`, `userid`, `roleid`) VALUES
	(2, 4, 2);
/*!40000 ALTER TABLE `sys_user_role` ENABLE KEYS */;

-- 导出  表 cmsdbs.tb_advice_feedback 结构
DROP TABLE IF EXISTS `tb_advice_feedback`;
CREATE TABLE IF NOT EXISTS `tb_advice_feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` int(11) NOT NULL COMMENT '用户ID',
  `username` varchar(32) NOT NULL COMMENT '用户名',
  `qq` varchar(32) DEFAULT NULL COMMENT 'qq',
  `email` varchar(64) DEFAULT NULL COMMENT 'email',
  `telphone` varchar(32) DEFAULT NULL COMMENT '手机号',
  `content` varchar(2000) DEFAULT NULL COMMENT '意见反馈内容',
  `remark` varchar(2000) DEFAULT NULL COMMENT '备注',
  `is_read` int(11) DEFAULT NULL COMMENT '是否已读',
  `create_time` varchar(64) DEFAULT NULL COMMENT '创建时间',
  `create_id` int(11) DEFAULT '0' COMMENT '创建者',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='意见反馈';

-- 正在导出表  cmsdbs.tb_advice_feedback 的数据：~2 rows (大约)
/*!40000 ALTER TABLE `tb_advice_feedback` DISABLE KEYS */;
INSERT INTO `tb_advice_feedback` (`id`, `userid`, `username`, `qq`, `email`, `telphone`, `content`, `remark`, `is_read`, `create_time`, `create_id`) VALUES
	(2, 1, '系统管理员', '330321321', '223@sina.com', '13983283282', NULL, '系统很不错~等待升级', NULL, '2016-01-29 04:41:27', 1),
	(7, 1, '系统管理员', '545798731', '545798731@qq.com', '13913163260', NULL, '网站初始化一切完成。', NULL, '2021-08-11 16:14:31', 1);
/*!40000 ALTER TABLE `tb_advice_feedback` ENABLE KEYS */;

-- 导出  表 cmsdbs.tb_article 结构
DROP TABLE IF EXISTS `tb_article`;
CREATE TABLE IF NOT EXISTS `tb_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `folder_id` int(11) DEFAULT '1' COMMENT '目录id',
  `title` varchar(200) DEFAULT '' COMMENT '文章名称',
  `content` longtext COMMENT '文件内容',
  `count_view` int(11) DEFAULT '0' COMMENT '浏览数',
  `count_comment` int(11) DEFAULT '0' COMMENT '评论数',
  `type` int(11) DEFAULT '1' COMMENT '类型：1 正常 2 预览展示概述 3 程序调用处理',
  `status` varchar(20) DEFAULT '1' COMMENT '状态//radio/2,隐藏,1,显示',
  `is_comment` int(11) DEFAULT '1' COMMENT '是否评论：2 否 1 是',
  `is_recommend` int(11) DEFAULT '2' COMMENT '是否推荐：2 否 1 是',
  `sort` int(11) DEFAULT '1' COMMENT '排序',
  `jump_url` varchar(256) DEFAULT NULL COMMENT '跳转地址',
  `image_url` varchar(256) DEFAULT NULL COMMENT '图片路径',
  `image_net_url` varchar(256) DEFAULT NULL COMMENT '网络图片路径',
  `file_url` varchar(256) DEFAULT NULL,
  `file_name` varchar(256) DEFAULT NULL,
  `approve_status` int(11) DEFAULT NULL COMMENT '审核状态',
  `publish_time` varchar(64) DEFAULT NULL COMMENT '发布时间',
  `publish_user` varchar(64) DEFAULT '1' COMMENT '发布者',
  `start_time` varchar(64) DEFAULT NULL COMMENT '开始时间',
  `end_time` varchar(64) DEFAULT NULL COMMENT '结束时间',
  `update_time` varchar(64) DEFAULT NULL COMMENT '更新时间',
  `create_time` varchar(64) DEFAULT NULL COMMENT '创建时间',
  `create_id` int(11) DEFAULT '0' COMMENT '创建者',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4253 DEFAULT CHARSET=utf8 COMMENT='文章';

-- 正在导出表  cmsdbs.tb_article 的数据：~36 rows (大约)
/*!40000 ALTER TABLE `tb_article` DISABLE KEYS */;
INSERT INTO `tb_article` (`id`, `folder_id`, `title`, `content`, `count_view`, `count_comment`, `type`, `status`, `is_comment`, `is_recommend`, `sort`, `jump_url`, `image_url`, `image_net_url`, `file_url`, `file_name`, `approve_status`, `publish_time`, `publish_user`, `start_time`, `end_time`, `update_time`, `create_time`, `create_id`) VALUES
	(1, 1, '门头沟', '<p>门头沟</p>', 122, 123, 12, '2', 1, 1, 1, NULL, 'download/image_url/20150529_102007_298104.jpg', NULL, NULL, NULL, 10, '2014-03-05', '系统管理员', '2015-01-29', '2015-01-23', '2015-01-28 17:29:55', '2015-01-28', 1),
	(111, 2, '门头沟定都阁:看“3D北京”', '<p align="center" style="margin-top: 10px; margin-bottom: 10px; font-stretch: normal; line-height: 25.2000007629395px; font-family: 宋体; font-size: 1.4rem; word-wrap: break-word; white-space: normal;"><img alt="" src="http://www.people.com.cn/mediafile/pic/20150515/92/11134802480688866980.jpg" style="border-style: none;"/></p><p style="margin-top: 10px; margin-bottom: 10px; font-stretch: normal; line-height: 25.2000007629395px; font-family: 宋体; font-size: 1.4rem; word-wrap: break-word; white-space: normal;">　　这两天，许多市民驱车赶到门头沟定都阁欣赏初夏“3D北京”，大气磅礴的白云下，视野格外通透，人们肉眼可以清晰分辨数十公里外远的景致。定都阁位于门头沟区潭柘寺镇定都峰上，定都峰，海拔680米，位于门头沟区桑峪村东北狮山山顶，其位置正处在长安街向西的延长线上，是传说中“燕王喜登定都峰，刘伯温一夜建北京”的所在地。</p><p><br/></p>', 29, 0, 11, '1', 1, 2, 10, NULL, NULL, NULL, NULL, NULL, 1, '2015-02-04', '人民网', NULL, NULL, '2015-02-04 08:47:31', '2015-02-04', 1),
	(112, 2, 'S1线6号线西延 明年年底开通', '<p>&nbsp;&nbsp;S1线预计明年年底将与6号线西延一起开通，同时长安街西延工程预计2017年12月全线通车。未来门头沟也将成为距离中心城区最近、交通最便利的新城。这是门头沟区区长王洪钟今天上午做客北京城市广播“市民对话一把手”栏目时透露的。</p><p>　　<strong>S1线与六号线西延一起开通</strong></p><p>　　提到门头沟区的交通发展，王洪钟表示，S1线现在已经开工建设，将在明年年底和地铁6号线西延一起开通。据介绍，S1线磁悬浮铁路在门头沟设了6个站点，届时从门头沟石门营到苹果园仅需10分钟左右。</p><p>　　另外长安街延长线从去年下半年也已经开工建设，预计将在2017年建成。据介绍，西延工程中还将架设永定河跨河大桥。在S1线和长安街延长线两条交通线建设完成后，门头沟区和市区的交通会更加便捷，这两条线也将与阜石路二期以及莲石路到潭柘寺的108国道、未来即将修建的109高速公路等形成一个总的大交通体系。</p>', 231, 3, 11, '1', 1, 1, 9, NULL, 'download/image_url/20150525_233451_151572.jpg', NULL, NULL, NULL, 10, '2015-04-20', '中新网', NULL, NULL, '2015-02-06 09:18:50', '2015-02-06', 1),
	(318, 2, '门头沟华润悦景湾30-100平2-3居总价100万起', '<p style="text-align: center;"><img src="http://src.house.sina.com.cn/imp/imp/deal/f2/51/e/82508c253d348a23a271ffd0417_p7_mk7_osc75b7a_cm440X330.jpg" _src="http://src.house.sina.com.cn/imp/imp/deal/f2/51/e/82508c253d348a23a271ffd0417_p7_mk7_osc75b7a_cm440X330.jpg"/></p><p>华润悦景湾以LOFT产品为主，底商为辅。层高4.2米，最高21层，主要户型为30-100平米的两至三居，容积率4.0，地块规划1612户，共6栋楼，毛坯交房，总价100万起。</p><p><span style="font-family: Arial, 宋体, sans-serif; font-size: 14px; line-height: 26px; white-space: normal;">项目位于北京市城西，门头沟新城核心区（永定镇），长安街西延长线南侧。周边重点名校云集，内外部多重园林景观，多维交通，给予居住者真正轻松优享的生活品质。</span></p>', 3, 0, 11, '1', 1, 2, 10, NULL, NULL, NULL, NULL, NULL, 10, '2015-05-06', '新浪房产', NULL, NULL, '2015-05-24 22:17:25', '2015-05-24 22:17:25', 1),
	(320, 2, '北京遭遇64年最冷5月 昨天门头沟下雪了', '<p align="center" style="margin-top: 0px; margin-bottom: 0px; padding: 5px 25px; font-family: 宋体; color: rgb(0, 0, 0); font-size: 14px; line-height: 28px; white-space: normal;"><img src="http://news.workercn.cn/html/files/2015-05/10/20150510111950681533257.jpg"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 5px 25px; font-family: 宋体; color: rgb(0, 0, 0); font-size: 14px; line-height: 28px; text-align: justify; white-space: normal;"></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 5px 25px; font-family: 宋体; color: rgb(0, 0, 0); font-size: 14px; line-height: 28px; text-align: justify; white-space: normal;">　　人民网北京5月10日电 据京华时报微博报道，5月9日中午，北京门头沟灵山气温1℃，下雪了！由于灵山海拔高气温低，所以水蒸气直接凝结成了雪片儿。当北京别的地下雨时，灵山在下雪！今天最高气温12℃。</p><p align="center" style="margin-top: 0px; margin-bottom: 0px; padding: 5px 25px; font-family: 宋体; color: rgb(0, 0, 0); font-size: 14px; line-height: 28px; white-space: normal;"><img src="http://news.workercn.cn/html/files/2015-05/10/20150510111950704668741.JPG"/></p><p><br/></p>', 8, 0, 11, '1', 1, 2, 10, NULL, NULL, NULL, NULL, NULL, 10, '2015-05-10', ' 人民网', NULL, NULL, '2015-05-24 22:17:38', '2015-05-24 22:17:38', 1),
	(331, 4, '灵山', '<p>&nbsp; &nbsp; 盛夏避暑的好去所。夏季，这里“丰草绿缛而争茂，佳木葱茏而可悦”，走在林中，让人备感舒适。自然山水自然景，自然空调自然风，凉风习习，心惬意，来到灵山方知城乡大不同。入夜，遥望星空，这里视野开阔，可以看到“天阶月色凉如水，卧看牵牛织女星”的美景。</p><p>&nbsp; &nbsp; 灵山自然风景区距京城122公里，其顶峰海拔2303米，是北京的第一峰。西与龙门森林公园毗邻；东与龙门涧景区相连；南与109国道相通。由于其海拔高度所致，使灵山在方圆25平方公里内形成北京地区集断层山、褶皱山为一体，奇峰峻俏、花卉无垠的自然风景区。</p><p>这里既有暖温带植被，又有西伯利亚寒冷地带亲缘植被。生长着杜鹃、丁香、白桦林和榛子、黄花、等植物，尤以高山草甸最为著名，因此，它是新疆细毛羊、伊犁马、青藏牦牛在北京唯一的天然繁衍养殖场，也是野生动物的乐园。</p><p>&nbsp; &nbsp; 灵山风景区内有旅游饭店3座，可同时接待就餐1200人，住宿500人以上。此外，村内有农家旅店，如有兴趣住进“山兄弟”、“山里人”，定能享受一下山里人的烤全羊、烤野兔和手扒羊肉等野味。</p><p>成人门票：35元</p><p>地址：门头沟区灵山景区管理处</p><p>公交车：乘坐公交汽车、电车到苹果园下车前200米转乘929支线至双塘涧（灵山脚下）每天四趟。</p><p><br/></p><p>电话：010-61827994、61827028</p><p>门票：35元/人，老人、学生、残疾人士凭有效证件17.5元/人，军人凭有效证件免费。</p><p>地址：北京市门头沟区灵山景区</p>', 6, 0, 11, '1', 1, 2, 10, NULL, 'download/image_url/20150524_224714_571477.jpg', NULL, NULL, NULL, 10, '2015-05-24', '系统管理员', NULL, NULL, '2015-05-24 22:47:14', '2015-05-24 22:47:14', 1),
	(332, 4, '龙门涧', '<p>&nbsp; &nbsp; 龙门涧位于门头沟区清水乡燕家台西北侧。有长江三峡之峻拔，桂林山水之秀美，又有匡庐之飞瀑，黄山之叠泉。因此人们以“燕京小三峡”、“京西小桂林”、“大自然中的山水盆景”等赞语赞美龙门涧。</p><p>&nbsp; &nbsp; 龙门涧分为东西两涧，各绵延十余里。由于这里聚集了我国几类著名风景区的景色，诸如“三峡之气势”、“桂林之秀美”、“匡庐之飞瀑”、“黄 山之叠泉”，都可以在这里看到缩影，因此，龙门涧得到了许多 如“燕京小三峡”，“京西小桂林”、“京西小黄山”等美誉。 进入龙门涧峡谷，两侧山峰对峙，高耸碧空，如斧劈成。涧内泉水涓涓，清澈碧透，溪水潺潺，奔腾飞溅。冬日崖挂冰凌，夏日绿枝俏控。还有将军石、一线天、试剑峰、黑龙潭、听音阁、祭天台等景观。半山腰上，在一簇簇鲜花掩映下，十几个巨大的石灰岩洞若隐若现，为游人增添了无穷乐趣。由于山高谷深，日照温度低，盛夏酷暑时节，涧内却凉爽宜人，是旅游度假的好去处。</p><p><br/></p><p>地址：门头沟区西部清水镇燕家台村</p><p>电话：(010)61828185,(010)61828185</p>', 7, 0, 11, '1', 1, 2, 10, NULL, 'download/image_url/20150524_224755_937404.jpg', NULL, NULL, NULL, 10, '2015-05-24', '系统管理员', NULL, NULL, '2015-05-24 22:47:55', '2015-05-24 22:47:55', 1),
	(334, 3, '大鸭梨', '<p>地址：北京近郊门头沟区新桥南大街49号(月季园小区对面)</p><p>电话：(010)69834563</p>', 7, 0, 11, '1', 1, 1, 9, NULL, 'download/image_url/20150524_231027_730846.jpg', NULL, NULL, NULL, 10, '2015-05-24', '系统管理员', NULL, NULL, '2015-05-24 23:04:05', '2015-05-24 23:04:05', 1),
	(335, 3, '福华肥牛', '<p>地址：北京近郊门头沟区新桥南大街49号(月季园小区对面)</p><p>电话：(010)69846725</p>', 32, 0, 11, '1', 1, 2, 8, NULL, 'download/image_url/20150524_231021_399721.jpg', NULL, NULL, NULL, 10, '2015-05-24', '系统管理员', NULL, NULL, '2015-05-24 23:04:49', '2015-05-24 23:04:49', 1),
	(343, 5, '大峪中学', '<p>北京市大峪中学始建于1946年，1978年列为北京市重点中学，2004年进入北京市普通高中示范校行列。是一所校风优良、质量上乘的北京市重点中学，莘莘学子向往的京西名校。学校位于九龙山下，永定河畔，北京门头沟城镇中心的滨河德露苑18号，新的开发区内。</p><p><br/></p><p>学校地址：门头沟区滨河德露苑18号</p><p>邮政编码：102300</p><p>联系电话：61864110</p><p>学校网址：http://www.dyzx-bj.com/</p>', 13, 0, 11, '1', 1, 2, 9, NULL, 'download/image_url/20150526_140229_544065.jpg', NULL, NULL, NULL, 10, '2015-05-24', '系统管理员', NULL, NULL, '2015-05-24 23:22:24', '2015-05-24 23:22:24', 1),
	(351, 90, '捐赠我们', '<p style="box-sizing: border-box; padding: 0px; color: rgb(51, 51, 51); line-height: 22.8571434020996px; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);">支付宝捐赠二维码 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 微信捐赠二维码</p><p style="box-sizing: border-box; padding: 0px; color: rgb(51, 51, 51); line-height: 22.8571434020996px; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);"><img src="http://ww1.sinaimg.cn/mw690/3fc7e281jw1eqec436tzwj2074074mxr.jpg" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: middle;"/>&nbsp; &nbsp;&nbsp;<img src="http://ww1.sinaimg.cn/mw690/3fc7e281jw1es3jr0k25xj20a50a5q3v.jpg" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: middle; line-height: 1.42857143; width: 256px; height: 256px;"/></p><p style="box-sizing: border-box; padding: 0px; color: rgb(51, 51, 51); line-height: 22.8571434020996px; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);"><br/></p><br/><p><br/></p>', 1, 0, 11, '1', 1, 2, 19, NULL, NULL, NULL, NULL, NULL, 10, '2015-05-26', '系统管理员', NULL, NULL, '2015-05-26 10:39:11', '2015-05-26 10:39:11', 1),
	(352, 90, '关于我们', '<p style="white-space: normal; box-sizing: border-box; padding: 0px; color: rgb(51, 51, 51); line-height: 22.8571434020996px; background-color: rgb(255, 255, 255);"><span style="line-height: 22.8571434020996px;"></span></p><p>门头沟信息网（http://www.jflyfox.com/mtg以下简称“本网站”）是由个人承建的为人民服务的门头沟信息网站。</p><p>门头沟信息网主要提供了全面的生活，新闻，美食，旅游、教育等各个方面的关于门头沟的资讯。</p><p><br/></p><p>可通过如下方式联系我们：</p><p>联系方式：qq(545798731)</p><p style="white-space: normal; box-sizing: border-box; padding: 0px; color: rgb(51, 51, 51); line-height: 22.8571434020996px; background-color: rgb(255, 255, 255);"><a target="_blank" href="http://mail.qq.com/cgi-bin/qm_share?t=qm_mailme&email=Og8ODw0DAg0JC3pLSxRZVVc" style="text-decoration:none;"><img src="http://rescdn.qqmail.com/zh_CN/htmledition/images/function/qm_open/ico_mailme_02.png"/></a></p><p><br/></p>', 2, 0, 11, '1', 1, 2, 13, NULL, NULL, NULL, NULL, NULL, 10, '2015-05-26', '系统管理员', NULL, NULL, '2015-05-26 10:39:24', '2015-05-26 10:39:24', 1),
	(353, 90, '联系我们', '<p style="white-space: normal; box-sizing: border-box; padding: 0px; color: rgb(51, 51, 51); line-height: 22.8571434020996px; background-color: rgb(255, 255, 255);"><span style="line-height: 22.8571434020996px;">地址：北京市门头沟</span><br/></p><p style="white-space: normal;">联系方式：qq(545798731)</p><p style="white-space: normal; box-sizing: border-box; padding: 0px; color: rgb(51, 51, 51); line-height: 22.8571px; background-color: rgb(255, 255, 255);"><a target="_blank" href="http://mail.qq.com/cgi-bin/qm_share?t=qm_mailme&email=Og8ODw0DAg0JC3pLSxRZVVc" style="text-decoration-line: none;"><img src="http://rescdn.qqmail.com/zh_CN/htmledition/images/function/qm_open/ico_mailme_02.png"/></a></p><p style="white-space: normal; box-sizing: border-box; padding: 0px; color: rgb(51, 51, 51); line-height: 22.8571434020996px; background-color: rgb(255, 255, 255);"><a target="_blank" href="http://mail.qq.com/cgi-bin/qm_share?t=qm_mailme&email=allcU1tTW15dWiobG0QJBQc" style="text-decoration:none;"></a><br/></p>', 1, 0, 11, '1', 1, 2, 15, NULL, NULL, NULL, NULL, NULL, 10, '2015-05-26', '系统管理员', NULL, NULL, '2015-05-26 10:39:53', '2015-05-26 10:39:53', 1),
	(354, 90, '免责声明', '<p>门头沟信息网（http://www.jflyfox.com/mtg以下简称“本网站”）是由个人承建的为人民服务的门头沟信息网站。</p><p><br/></p><p>门头沟信息网主要提供了全面的生活，新闻，美食，旅游、教育等各个方面的关于门头沟的资讯。</p><p><br/></p><p>请用户使用本网站前仔细阅读本法律声明。您一旦使用本网站则表明您已明知并接受这些条款。用户必须按照法律法规的规定和本声明的要求使用本网站的信息和服务，否则本网站将依法追究有关当事人的法律责任。</p><p><br/></p><p><strong>一、知识产权</strong><br/></p><p>域名、标识及专有名称</p><p>本网站所使用的www.jflyfox.com、Logo等专有标识，未经网站所有者许可，任何人不得使用。</p><p><br/></p><p>版权</p><p>本网站包含的所有内容（包括但不限于：文本、图形、图片、视像及声音内容、LOGO标识、版面设计、专栏目录与名称、内容分类）的所有权归网站承办人所有。</p><p><br/></p><p>本网站的内容和软件均受《中华人民共和国著作权法》及其它相关法律的保护。任何单位或个人将本网站提供的内容与服务用于商业、盈利、广告性等目的时，需征得本网站承办人许可；将本网站提供的内容与服务用于非商业用途时，应遵守著作权法以及其他相关法律的规定，不得侵犯网站所有者及相关权利人的权益。</p><p><br/></p><p>版权异议</p><p>如权利人认为本网站内容中所涉及的文字作品、图片和音视频资料（以下简称“作品”），侵犯其著作权的，请及时书面通知本网站，本网站将依法删除被指侵权的作品或断开相应的链接；但权利人不能出示有效身份证明、著作权权属证明及侵权情况证明的，视为未提出异议。因权利人的通知导致本网站错误删除作品，或者错误断开与作品的链接的，本网站不承担任何责任。</p><p><br/></p><p><strong>二、用户信息</strong></p><p>信息采集</p><p>当用户浏览本网站时，本网站的系统将自动收集用户的IP地址及网站浏览信息。这些信息有助于我们在整体基础上评估我们的网站浏览者以及用户如何使用、浏览我们的网站，包括浏览者和用户对每一网页的访问次数、频率和浏览时间。通过收集上述信息，我们将进行流量统计，从而改进网站的管理和服务。</p><p><br/></p><p>信息使用</p><p>用户向本网站提供的个人信息将可能用于下列用途：</p><p>（1）核实用户身份，并提供相应的服务；</p><p>（2）用于编制有关网站使用的流量统计数据；</p><p>（3）通过发送电子邮件或以其它方式，告知用户相关信息。</p><p><br/></p><p>在未得到用户许可前，本网站不会将用户的任何个人信息提供给任何第三方，但发生以下事由的除外：</p><p>（1）按照本网站制订的规则和程序，本网站有充分的理由相信已经获得用户的授权；</p><p>（2）按照中华人民共和国的法律、法规、政策等规范性法律文件规定，要求本网站提供的；</p><p>（3）不能归咎于本网站的客观情势，所导致的个人资料的公开；</p><p>（4）因不可抗力，所导致的个人资料的公开；</p><p>（5）由于用户自身过错，而导致的个人资料的公开；</p><p>（6）超出本网站使用的硬件和软件的技术能力范围，所导致的个人资料的公开；</p><p>（7）紧急情况下为维护用户个人或社会大众的隐私和安全的；</p><p>（8）为维护本网站的所有权及相关权利的。</p><p><br/></p><p>信息安全</p><p>本网站将对用户所提供的资料进行严格的管理及保护，并将使用相应的技术措施（例如设置服务器备份数据和对用户密码加密等），防止用户的个人资料丢失、被盗用或遭窜改。如因不可抗力或计算机病毒感染、黑客攻击等特殊原因，导致用户信息被破坏、泄密并受到损失的，本网站将采取必要措施尽力减少用户的损失，但本网站对此不承担任何责任。</p><p><br/></p><p>用户权利</p><p>用户可通过本网站的相关网页查看、更新并修改提供给本网站的个人信息，也可以要求本网站删除该信息。</p><p><br/></p><p><strong>三、免责</strong></p><p>本网站对本网站上所有由第三方提供的信息、内容和服务，不提供明示或暗示的担保。本网站对使用上述信息、内容和服务所造成的任何损失不承担责任，包括直接损失和间接损失。</p><p><br/></p>', 1, 0, 11, '1', 1, 2, 20, NULL, NULL, NULL, NULL, NULL, 10, '2015-05-26', '系统管理员', NULL, NULL, '2015-05-26 10:40:04', '2015-05-26 10:40:04', 1),
	(355, 90, '广告服务', '<p>广告服务请通过以下方式联系：</p><p style="white-space: normal;">联系方式：qq(545798731)</p><p style="white-space: normal; box-sizing: border-box; padding: 0px; color: rgb(51, 51, 51); line-height: 22.8571px; background-color: rgb(255, 255, 255);"><a target="_blank" href="http://mail.qq.com/cgi-bin/qm_share?t=qm_mailme&email=Og8ODw0DAg0JC3pLSxRZVVc" style="text-decoration-line: none;"><img src="http://rescdn.qqmail.com/zh_CN/htmledition/images/function/qm_open/ico_mailme_02.png"/></a></p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; color: rgb(51, 51, 51); font-family: &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; padding: 0px; line-height: 22.8571434020996px; background-color: rgb(255, 255, 255);"><a target="_blank" href="http://mail.qq.com/cgi-bin/qm_share?t=qm_mailme&email=allcU1tTW15dWiobG0QJBQc" style="box-sizing: border-box; color: rgb(51, 122, 183); text-decoration: none; background-color: transparent;"></a><br/></p>', 1, 0, 11, '1', 1, 2, 17, NULL, NULL, NULL, NULL, NULL, 10, '2015-05-26', '系统管理员', NULL, NULL, '2015-05-26 10:40:30', '2015-05-26 10:40:30', 1),
	(360, 10, '光荣园', '<p><span>光荣园位于门头沟区光荣院，北邻门头沟区档案馆，依山傍水、交通便利。公园修建于2010年10月，占地面积6500平方米，其中绿地面积3500平方米。</span></p><p><span>绿地内建花岗岩步道270平方米，景观石2块，修建京西革命光荣墙1面，缅怀门头沟区战争年代的革命先驱。</span></p><p><span>目前工程主体已全部完工，它在为广大市民提供良好城市居住环境的同时，承载着弘扬门头沟区革命老区光荣传统、记载京西革命文化的重要使命，是青少年爱国主义教育基地。光荣园的修建得到全区人民的大力拥护和社会各界的普遍关注，接受社会捐助500万元。</span></p>', 2, 0, 11, '1', 1, 2, 10, NULL, 'jflyfox/mtg/article_image/20210812_090318_485697.jpg', NULL, NULL, NULL, 10, '2015-05-26', '系统管理员', NULL, NULL, '2015-05-26 12:28:42', '2015-05-26 12:28:42', 1),
	(377, 5, '大峪第二小学', NULL, 1, 0, 11, '1', 1, 2, 10, NULL, 'jflyfox/mtg/article_image/20210812_173113_615316.jpg', NULL, NULL, NULL, 10, '2015-05-26', '系统管理员', NULL, NULL, '2015-05-26 13:58:32', '2015-05-26 13:58:32', 1),
	(378, 5, '城子小学', NULL, 2, 0, 11, '1', 1, 2, 10, NULL, 'jflyfox/mtg/article_image/20210812_173104_451689.jpg', NULL, NULL, NULL, 10, '2015-05-26', '系统管理员', NULL, NULL, '2015-05-26 13:58:48', '2015-05-26 13:58:48', 1),
	(2351, 231, '捐赠我们', '<p style="box-sizing: border-box; padding: 0px; color: rgb(51, 51, 51); line-height: 22.8571434020996px; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);">支付宝捐赠二维码 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 微信捐赠二维码</p><p style="box-sizing: border-box; padding: 0px; color: rgb(51, 51, 51); line-height: 22.8571434020996px; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);"><img src="http://ww1.sinaimg.cn/mw690/3fc7e281jw1eqec436tzwj2074074mxr.jpg" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: middle;"/>&nbsp; &nbsp;&nbsp;<img src="http://ww1.sinaimg.cn/mw690/3fc7e281jw1es3jr0k25xj20a50a5q3v.jpg" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: middle; line-height: 1.42857143; width: 256px; height: 256px;"/></p><p style="box-sizing: border-box; padding: 0px; color: rgb(51, 51, 51); line-height: 22.8571434020996px; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);"><br/></p><br/><p><br/></p>', 0, 0, 11, '1', 1, 2, 19, NULL, NULL, NULL, NULL, NULL, 10, '2015-05-26', '系统管理员', NULL, NULL, '2015-05-26 10:39:11', '2015-05-26 10:39:11', 1),
	(2352, 231, '关于我们', '<p style="white-space: normal; box-sizing: border-box; padding: 0px; color: rgb(51, 51, 51); line-height: 22.8571434020996px; background-color: rgb(255, 255, 255);"><span style="line-height: 22.8571434020996px;"></span></p><p>可通过如下方式联系我们：<br/></p><p>联系方式：qq(369191470)</p><p style="white-space: normal; box-sizing: border-box; padding: 0px; color: rgb(51, 51, 51); line-height: 22.8571434020996px; background-color: rgb(255, 255, 255);"><a target="_blank" href="http://mail.qq.com/cgi-bin/qm_share?t=qm_mailme&email=_crKyc-LzszIzrmIiNealpQ" style="box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(66, 139, 202); text-decoration: none; background: 0px 0px;"></a></p><p style="white-space: normal;"><a target="_blank" href="http://mail.qq.com/cgi-bin/qm_share?t=qm_mailme&email=allcU1tTW15dWiobG0QJBQc" style="text-decoration: none;"><img src="http://rescdn.qqmail.com/zh_CN/htmledition/images/function/qm_open/ico_mailme_02.png"/></a></p><p><br/></p>', 2, 0, 11, '1', 1, 2, 13, NULL, NULL, NULL, NULL, NULL, 10, '2015-05-26', '系统管理员', NULL, NULL, '2015-05-26 10:39:24', '2015-05-26 10:39:24', 1),
	(2353, 231, '联系我们', '<p style="white-space: normal; box-sizing: border-box; padding: 0px; color: rgb(51, 51, 51); line-height: 22.8571434020996px; background-color: rgb(255, 255, 255);"><span style="line-height: 22.8571434020996px;">地址：北京市</span><br/></p><p style="white-space: normal; box-sizing: border-box; padding: 0px; color: rgb(51, 51, 51); line-height: 22.8571434020996px; background-color: rgb(255, 255, 255);">联系方式：qq(369191470)</p><p style="white-space: normal; box-sizing: border-box; padding: 0px; color: rgb(51, 51, 51); line-height: 22.8571434020996px; background-color: rgb(255, 255, 255);"><a target="_blank" href="http://mail.qq.com/cgi-bin/qm_share?t=qm_mailme&email=_crKyc-LzszIzrmIiNealpQ" style="box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(66, 139, 202); text-decoration: none; background: 0px 0px;"></a></p><p><a target="_blank" href="http://mail.qq.com/cgi-bin/qm_share?t=qm_mailme&email=allcU1tTW15dWiobG0QJBQc" style="text-decoration:none;"><img src="http://rescdn.qqmail.com/zh_CN/htmledition/images/function/qm_open/ico_mailme_02.png"/></a></p>', 0, 0, 11, '1', 1, 2, 15, NULL, NULL, NULL, NULL, NULL, 10, '2015-05-26', '系统管理员', NULL, NULL, '2015-05-26 10:39:53', '2015-05-26 10:39:53', 1),
	(2354, 231, '免责声明', '<p>本网站对本网站上所有由第三方提供的信息、内容和服务，不提供明示或暗示的担保。本网站对使用上述信息、内容和服务所造成的任何损失不承担责任，包括直接损失和间接损失。<br/></p><p><br/></p>', 0, 0, 11, '1', 1, 2, 20, NULL, NULL, NULL, NULL, NULL, 10, '2015-05-26', '系统管理员', NULL, NULL, '2015-05-26 10:40:04', '2015-05-26 10:40:04', 1),
	(2355, 231, '广告服务', '<p>广告服务请通过以下方式联系：</p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; color: rgb(51, 51, 51); font-family: &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; padding: 0px; line-height: 22.8571434020996px; background-color: rgb(255, 255, 255);">联系方式：qq(369191470)</p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; color: rgb(51, 51, 51); font-family: &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; padding: 0px; line-height: 22.8571434020996px; background-color: rgb(255, 255, 255);"><a target="_blank" href="http://mail.qq.com/cgi-bin/qm_share?t=qm_mailme&email=_crKyc-LzszIzrmIiNealpQ" style="box-sizing: border-box; color: rgb(66, 139, 202); text-decoration: none; margin: 0px; padding: 0px; background: 0px 0px;"></a></p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; color: rgb(51, 51, 51); font-family: &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px; white-space: normal; background-color: rgb(255, 255, 255);"><a target="_blank" href="http://mail.qq.com/cgi-bin/qm_share?t=qm_mailme&email=allcU1tTW15dWiobG0QJBQc" style="box-sizing: border-box; color: rgb(51, 122, 183); text-decoration: none; background-color: transparent;"><img src="http://rescdn.qqmail.com/zh_CN/htmledition/images/function/qm_open/ico_mailme_02.png" style="box-sizing: border-box; border: 0px; vertical-align: middle;"/></a></p>', 1, 0, 11, '1', 1, 2, 17, NULL, NULL, NULL, NULL, NULL, 10, '2015-05-26', '系统管理员', NULL, NULL, '2015-05-26 10:40:30', '2015-05-26 10:40:30', 1),
	(2409, 230, '德玛西亚皇子', '<p>德玛西亚皇子,别名四阿哥,周杰伦,嘉文四世。</p><p>E-Q技能的存在为嘉文带来了不错的机动性，还附带三种控制技能让他成为一个让人十分头疼的坦克，</p><p>你无法在第一时间秒掉他，却也无法忽视他的存在，是一个团队价值非常高的英雄。</p>', 6, 0, 11, '1', 1, 2, 11, NULL, 'jflyfox/website/article_image/20210812_095757_604783.jpg', NULL, NULL, NULL, 10, '2016-01-20', '系统管理员', NULL, NULL, '2016-01-20 17:04:15', '2016-01-20 17:04:15', 1),
	(2412, 230, '皎月女神', '<p>皎月女神,别名皎月,黛安娜。</p><p>戴安娜作为一个近战法师，有着其他AP难以企</p><p>及的爆发，同时还有突进、控制以及不错的生存能力。</p><p>但缺点也很明显，作为一个法师却是近战，而且又没有逃</p><p>生技能，如果团战的时机切入时机错误，经常会有去无回。</p><p>皎月女神</p><p>皎月女神</p><p>皎月女神</p><p>皎月女神</p>', 2, 0, 11, '1', 1, 2, 14, NULL, 'jflyfox/website/article_image/20210812_095840_226521.jpg', NULL, NULL, NULL, 10, '2016-01-20', '系统管理员', NULL, NULL, '2016-01-20 17:05:59', '2016-01-20 17:05:59', 1),
	(3001, 241, '个人介绍', '<p style="text-align: center; font-family: 微软雅黑, Verdana, sans-serif, 宋体;"><img src="http://ww3.sinaimg.cn/mw690/3fc7e281jw1ep7p6ei1g8j20sg0lcgxc.jpg" _src="http://ww3.sinaimg.cn/mw690/3fc7e281jw1ep7p6ei1g8j20sg0lcgxc.jpg" style="width: 410px; height: 319px;"/></p><p>&nbsp; &nbsp; 本人从事Java Web开发工作，有较丰富的4A、工资社保、军交运输(GIS)、短信平台项目开发经验；有丰富的linux、unix部署、调试经验；有独立开发设计项目的经验。</p><p>&nbsp; &nbsp; 经常通过开源中国（<a href="http://www.oschina.net" target="_blank" title="oschina">www.oschina.net</a>）等网站学习新的技术，如Jfinal、beelt、fastjson、afinal等；曾阅读一些书籍和框架源码，如《Spring3.x企业应用开发实践》、《锋利的Jquery》、Jfinal源码、fastjson等；并在工作期间开发过安盟双因素认证，支付宝，微信自动回复、Oauth2、短信（cmpp、smgp、sgip）等外部接口。</p>', 1740, 25, 12, '1', 1, 2, 5, NULL, 'jflyfox/blog/article_image/20210812_162837_640519.jpg', NULL, NULL, NULL, 10, '2014-03-05', '系统管理员', '2015-01-29', '2015-01-23', '2015-01-28 17:29:55', '2015-01-28 17:29:55', 1),
	(3010, 248, 'Oauth2.0认证', '<meta property="qc:admins" content="37460026076264167063757715402" />', 125, 0, 13, '1', 1, NULL, 10, NULL, NULL, NULL, NULL, NULL, 10, '2015-02-15', '系统管理员', NULL, NULL, '2015-02-15 14:11:45', '2015-02-15 14:11:45', 1),
	(3106, 245, '关于我们', '<p>作者：FLY的狐狸</p><p>地址：北京市</p><p>联系方式：qq(369191470),请注明来源和添加原因</p><p><a target="_blank" href="http://mail.qq.com/cgi-bin/qm_share?t=qm_mailme&email=allcU1tTW15dWiobG0QJBQc" style="text-decoration:none;"><img src="http://rescdn.qqmail.com/zh_CN/htmledition/images/function/qm_open/ico_mailme_02.png"/></a></p>', 414, 1, 12, '1', 1, 2, 11, NULL, 'jflyfox/blog/article_image/20160611_162651_964248.png', NULL, '', '', 10, '2015-01-29', '系统管理员', NULL, NULL, '2015-01-29 14:04:52', '2015-01-29 14:04:52', 1),
	(3109, 243, '个人博客jflyfox', '<p style="margin-top: 0px; margin-bottom: 10px; color: rgb(0, 0, 0); font-family: 微软雅黑, Verdana, sans-serif, 宋体; font-size: 13px; line-height: 21.3333320617676px; white-space: normal;"><span style="line-height: 1.5; font-size: 10pt;">这是一个简单不的不能再简单的Blog软件，本着提高自己，帮助新人的态度。</span><span style="font-size: 10pt; line-height: 1.5;">刚刚开始做，还望大家多多包涵。</span></p><p style="margin-top: 0px; margin-bottom: 10px; color: rgb(0, 0, 0); font-family: 微软雅黑, Verdana, sans-serif, 宋体; font-size: 13px; line-height: 21.3333320617676px; white-space: normal;">Jflyfox采用了简洁强大的JFinal作为web框架，模板引擎用的是beelt，数据库用mysql，前端bootstrap框架。</p><p style="margin-top: 0px; margin-bottom: 10px; color: rgb(0, 0, 0); font-family: 微软雅黑, Verdana, sans-serif, 宋体; font-size: 13px; line-height: 21.3333320617676px; white-space: normal;">源码地址：<a href="http://git.oschina.net/flyfox/jflyfox" target="_blank" style="color: rgb(62, 98, 166); outline: 0px;">http://git.oschina.net/flyfox/jflyfox</a></p><p style="margin-top: 0px; margin-bottom: 10px; color: rgb(0, 0, 0); font-family: 微软雅黑, Verdana, sans-serif, 宋体; font-size: 13px; line-height: 21.3333320617676px; white-space: normal;"><span style="line-height: 1.5; font-size: 10pt;">运行效果：<a href="http://jflyfox.oschina.mopaas.com/" target="_blank" style="color: rgb(62, 98, 166); outline: 0px;">http://jflyfox.oschina.mopaas.com/</a></span></p><p style="margin-top: 0px; margin-bottom: 10px; color: rgb(0, 0, 0); font-family: 微软雅黑, Verdana, sans-serif, 宋体; font-size: 13px; line-height: 21.3333320617676px; white-space: normal;"><span style="line-height: 1.5; font-size: 10pt;">首页效果图如下：</span></p><p style="margin-top: 0px; margin-bottom: 10px; color: rgb(0, 0, 0); font-family: 微软雅黑, Verdana, sans-serif, 宋体; font-size: 13px; line-height: 21.3333320617676px; white-space: normal;"><span style="line-height: 1.5; font-size: 10pt;"><img src="http://ww4.sinaimg.cn/mw690/3fc7e281jw1eqebcg72juj20s00ftaf9.jpg"/></span></p><p style="margin-top: 0px; margin-bottom: 10px; color: rgb(0, 0, 0); font-family: 微软雅黑, Verdana, sans-serif, 宋体; font-size: 13px; line-height: 21.3333320617676px; white-space: normal;">后台登陆：<a href="http://jflyfox.oschina.mopaas.com/admin" target="_blank" style="color: rgb(62, 98, 166); outline: 0px;">http://jflyfox.oschina.mopaas.com/admin</a></p><p style="margin-top: 0px; margin-bottom: 10px; color: rgb(0, 0, 0); font-family: 微软雅黑, Verdana, sans-serif, 宋体; font-size: 13px; line-height: 21.3333320617676px; white-space: normal;"><img src="http://ww2.sinaimg.cn/mw690/3fc7e281jw1eqebchm1j4j20h00ee0x5.jpg"/></p><p style="margin-top: 0px; margin-bottom: 10px; color: rgb(0, 0, 0); font-family: 微软雅黑, Verdana, sans-serif, 宋体; font-size: 13px; line-height: 21.3333320617676px; white-space: normal;">账号密码：admin/admin123,test/123456</p><p style="margin-top: 0px; margin-bottom: 10px; color: rgb(0, 0, 0); font-family: 微软雅黑, Verdana, sans-serif, 宋体; font-size: 13px; line-height: 21.3333320617676px; white-space: normal;">后台页面页面效果图如下：</p><p style="margin-top: 0px; margin-bottom: 10px; color: rgb(0, 0, 0); font-family: 微软雅黑, Verdana, sans-serif, 宋体; font-size: 13px; line-height: 21.3333320617676px; white-space: normal;"><img src="http://ww2.sinaimg.cn/mw690/3fc7e281jw1eqebcfhs3nj210v0diwjx.jpg"/></p>', 453, 4, 12, '1', 1, NULL, 10, NULL, NULL, NULL, NULL, NULL, 10, '2015-02-02', '系统管理员', NULL, NULL, '2015-02-02 14:25:10', '2015-02-02 14:25:10', 1),
	(3121, 245, '捐赠我们', '<p style="text-align: center;">支付宝捐赠二维码 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 微信捐赠二维码</p><p style="text-align: center;"><img src="http://ww1.sinaimg.cn/mw690/3fc7e281jw1eqec436tzwj2074074mxr.jpg"/>&nbsp; &nbsp;&nbsp;<img src="http://ww1.sinaimg.cn/mw690/3fc7e281jw1es3jr0k25xj20a50a5q3v.jpg" style="line-height: 1.42857143; width: 256px; height: 256px;"/></p><p style="text-align: center;"><br/><br/></p>', 830, 1, 12, '1', 1, NULL, 12, NULL, NULL, NULL, NULL, NULL, 10, '2015-02-13', '系统管理员', NULL, NULL, '2015-02-13 12:23:37', '2015-02-13 12:23:37', 1),
	(3209, 241, '三种人', '<p><span style="font-family: SimSun, Verdana, Arial, Helvetica, sans-serif; font-size: 14px; letter-spacing: 0.5px; line-height: 21px;">人的一生总是要学习各种知识。人人都在学习，但学习方法却各有不同。</span><br/></p><p><span style="letter-spacing: 0.5px; font-family: SimSun, Verdana, Arial, Helvetica, sans-serif; font-size: 14px; line-height: 21px;">1 绝大多数人是闭门学习受填鸭式学习教育遗毒影响，独自一个人挑灯苦灯，学习吸收各种知识。</span><br style="font-family: 微软雅黑, Verdana, sans-serif, 宋体; font-size: 13px; letter-spacing: 0.5px; line-height: 22.5px; white-space: normal;"/><span style="letter-spacing: 0.5px; font-family: SimSun, Verdana, Arial, Helvetica, sans-serif; font-size: 14px; line-height: 21px;">这种学习方式比较枯燥，需要比较好的耐力，毅力。</span><br style="font-family: 微软雅黑, Verdana, sans-serif, 宋体; font-size: 13px; letter-spacing: 0.5px; line-height: 22.5px; white-space: normal;"/><span style="letter-spacing: 0.5px; font-family: SimSun, Verdana, Arial, Helvetica, sans-serif; font-size: 14px; line-height: 21px;">2 一部分重视通过交流学习现在网络比较发达了，许多人自觉不自觉得把自己的学习心得记录下来，并发表在网上。</span><br style="font-family: 微软雅黑, Verdana, sans-serif, 宋体; font-size: 13px; letter-spacing: 0.5px; line-height: 22.5px; white-space: normal;"/><span style="letter-spacing: 0.5px; font-family: SimSun, Verdana, Arial, Helvetica, sans-serif; font-size: 14px; line-height: 21px;">3 也有人通过启发别人来启发自己其中的哲学原理，按古代说法是天人合一，物我同体；按现代说法是信息相通，沟通无极限。</span><br style="font-family: 微软雅黑, Verdana, sans-serif, 宋体; font-size: 13px; letter-spacing: 0.5px; line-height: 22.5px; white-space: normal;"/><br style="font-family: 微软雅黑, Verdana, sans-serif, 宋体; font-size: 13px; letter-spacing: 0.5px; line-height: 22.5px; white-space: normal;"/><span style="letter-spacing: 0.5px; font-family: SimSun, Verdana, Arial, Helvetica, sans-serif; font-size: 14px; line-height: 21px;">通过帮助别人来帮助自己。通过启发别人来启发自己。凡有所得，必须分享。只有分享了的知识，才是真正的知识。</span><br style="font-family: 微软雅黑, Verdana, sans-serif, 宋体; font-size: 13px; letter-spacing: 0.5px; line-height: 22.5px; white-space: normal;"/><br style="font-family: 微软雅黑, Verdana, sans-serif, 宋体; font-size: 13px; letter-spacing: 0.5px; line-height: 22.5px; white-space: normal;"/><span style="letter-spacing: 0.5px; font-family: SimSun, Verdana, Arial, Helvetica, sans-serif; font-size: 14px; line-height: 21px;">上面三种人，对于知识而言，</span><br style="font-family: 微软雅黑, Verdana, sans-serif, 宋体; font-size: 13px; letter-spacing: 0.5px; line-height: 22.5px; white-space: normal;"/><span style="letter-spacing: 0.5px; font-family: SimSun, Verdana, Arial, Helvetica, sans-serif; font-size: 14px; line-height: 21px;">第一种人是只进不出，只是获取别人总结的知识，而基本不去帮助别人获取知识</span><br style="font-family: 微软雅黑, Verdana, sans-serif, 宋体; font-size: 13px; letter-spacing: 0.5px; line-height: 22.5px; white-space: normal;"/><span style="letter-spacing: 0.5px; font-family: SimSun, Verdana, Arial, Helvetica, sans-serif; font-size: 14px; line-height: 21px;">第二种人是多进少出，在学习知识的同时，也把自己的一些心得分享出来</span><br style="font-family: 微软雅黑, Verdana, sans-serif, 宋体; font-size: 13px; letter-spacing: 0.5px; line-height: 22.5px; white-space: normal;"/><span style="letter-spacing: 0.5px; font-family: SimSun, Verdana, Arial, Helvetica, sans-serif; font-size: 14px; line-height: 21px;">第三种人趋于得失平衡，认为只有分享的知识才是真正的知识，只有帮助别人也掌握的知识才是真正的知识</span></p>', 646, 13, 12, '1', 1, 2, 9, NULL, NULL, NULL, NULL, NULL, 10, '2015-03-13', '系统管理员', NULL, NULL, '2015-03-13 09:14:47', '2015-03-13 09:14:47', 1),
	(4231, 253, '内容管理平台jfinal+beetl 开发的jfinal cms', '<p style="margin-top: 0px; margin-bottom: 10px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, Verdana, sans-serif, 宋体; font-size: 13.3333px; line-height: 21.3333px; white-space: normal; background-color: rgb(255, 255, 255);">jfinal cms，采用了简洁强大的<a href="http://www.oschina.net/p/jfinal" target="_blank" style="margin: 0px; padding: 0px; color: rgb(62, 98, 166); outline: 0px;">JFinal</a>作为web框架，模板引擎用的是<a href="http://www.oschina.net/p/beetl" target="_blank" style="margin: 0px; padding: 0px; color: rgb(62, 98, 166); outline: 0px;">beetl</a>，数据库用mysql，前端<a href="http://www.oschina.net/p/bootstrap" target="_blank" style="margin: 0px; padding: 0px; color: rgb(62, 98, 166); outline: 0px;">bootstrap</a>框架。 支持多站点、oauth2认证、帐号注册、密码加密、评论及回复，消息提示，网站访问量统计，文章评论数和浏览量统计，回复管理，支持权限管理。</p><p style="margin-top: 0px; margin-bottom: 10px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, Verdana, sans-serif, 宋体; font-size: 13.3333px; line-height: 21.3333px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="margin: 0px; padding: 0px; font-size: 13.3333px; line-height: 1.5;">后台模块包含：栏目管理，栏目公告，栏目滚动图片，文章管理，回复管理，意见反馈，我的相册，相册管理，图片管理，专辑管理、视频管理、缓存更新，友情链接，访问统计，联系人管理，模板管理，组织机构管理，用户管理，角色管理，菜单管理，数据字典管理，站点管理。</span></p><p style="margin-top: 0px; margin-bottom: 10px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, Verdana, sans-serif, 宋体; font-size: 13.3333px; line-height: 21.3333px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 13.3333px; line-height: 1.5;"><span style="margin: 0px; padding: 0px; font-size: 13.3333px; line-height: 20px;"><span style="margin: 0px; padding: 0px; font-size: 13.3333px;">jfinal cms交流群：</span><span style="margin: 0px; padding: 0px; font-size: 13.3333px;">568909653</span><br style="margin: 0px; padding: 0px;"/></span></span></p><p style="margin-top: 0px; margin-bottom: 10px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, Verdana, sans-serif, 宋体; font-size: 13.3333px; line-height: 21.3333px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 13.3333px; line-height: 1.5;"><span style="margin: 0px; padding: 0px; font-size: 13.3333px; line-height: 20px;">源码地址：</span><a href="http://git.oschina.net/flyfox/jfinal_cms" target="_blank" style="margin: 0px; padding: 0px; color: rgb(62, 98, 166); outline: 0px;">http://git.oschina.net/flyfox/jfinal_cms</a><br style="margin: 0px; padding: 0px;"/></span></p><p style="margin-top: 0px; margin-bottom: 10px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, Verdana, sans-serif, 宋体; font-size: 13.3333px; line-height: 21.3333px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 13.3333px; line-height: 1.5;">默认模板运行效果：<a href="http://mtg.jflyfox.com/" target="_blank" style="margin: 0px; padding: 0px; color: rgb(62, 98, 166); outline: 0px;">http://mtg.jflyfox.com/</a></span></p><p style="margin-top: 0px; margin-bottom: 10px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, Verdana, sans-serif, 宋体; white-space: normal; font-size: 13.3333px; color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);"><span style="margin: 0px; padding: 0px; font-size: 13.3333px;">官网模板运行效果：<a href="http://website.jflyfox.com/" target="_blank" style="margin: 0px; padding: 0px; color: rgb(62, 98, 166); outline: 0px;">http://website.jflyfox.com/</a></span></p><p style="margin-top: 0px; margin-bottom: 10px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, Verdana, sans-serif, 宋体; white-space: normal; font-size: 13.3333px; color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);">相册模板运行效果：<a href="http://photo.jflyfox.com/" target="_blank" style="margin: 0px; padding: 0px; color: rgb(62, 98, 166); outline: 0px;">http://photo.jflyfox.com/</a></p><p style="margin-top: 0px; margin-bottom: 10px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, Verdana, sans-serif, 宋体; white-space: normal; font-size: 13.3333px; color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);"><span style="margin: 0px; padding: 0px; font-size: 13.3333px;">视频模板运行效果：<a href="http://video.jflyfox.com/" target="_blank" style="margin: 0px; padding: 0px; color: rgb(62, 98, 166); outline: 0px;">http://video.jflyfox.com/</a></span></p><p style="margin-top: 0px; margin-bottom: 10px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, Verdana, sans-serif, 宋体; white-space: normal; font-size: 13.3333px; color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);"><span style="margin: 0px; padding: 0px; font-size: 13.3333px; line-height: 1.5;">登陆页面：</span><span style="margin: 0px; padding: 0px; line-height: 1.5; font-size: 10pt;">管理员登陆账号密码：admin/admin123</span></p><p style="margin-top: 0px; margin-bottom: 10px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, Verdana, sans-serif, 宋体; white-space: normal; font-size: 13.3333px; color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);">欢迎页：<a href="http://www.jflyfox.com/" target="_blank" style="margin: 0px; padding: 0px; color: rgb(62, 98, 166); outline: 0px;">http://www.jflyfox.com</a></p><p style="margin-top: 0px; margin-bottom: 10px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, Verdana, sans-serif, 宋体; white-space: normal; font-size: 13.3333px; color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);"><span style="margin: 0px; padding: 0px; font-size: 12.5px; line-height: 22.5px;">模板功能：通过配置config.properties中ATTR.PATH_PC进行修改，demo中的数据库数据需要对应上。</span></p><p style="margin-top: 0px; margin-bottom: 10px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, Verdana, sans-serif, 宋体; white-space: normal; font-size: 13.3333px; color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);">代码生成：通过本人<a href="http://www.oschina.net/p/AutoCreate" target="_blank" style="margin: 0px; padding: 0px; color: rgb(62, 98, 166); outline: 0px;">AutoCreate</a>项目可实现代码自动生成功能；新增模板，创建好表以及注释，增删改查排序等功能一键搞定。模板可根据自己项目定制完善。</p><p style="margin-top: 0px; margin-bottom: 10px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, Verdana, sans-serif, 宋体; white-space: normal; font-size: 13.3333px; color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);"><span style="margin: 0px; padding: 0px; line-height: 1.5; font-size: 10pt;"><span style="margin: 0px; padding: 0px; font-size: 12.5px; line-height: 22.5px;"></span></span><span style="margin: 0px; padding: 0px; font-size: 13.3333px; line-height: 1.5;">前台默认模板：</span></p><p style="margin-top: 0px; margin-bottom: 10px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, Verdana, sans-serif, 宋体; white-space: normal; font-size: 13.3333px; color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);"><a href="http://static.oschina.net/uploads/img/201601/21022316_Nk5M.gif" target="_blank" style="margin: 0px; padding: 0px; color: rgb(62, 98, 166); outline: 0px;"></a><a href="http://static.oschina.net/uploads/img/201601/21022316_Nk5M.gif" target="_blank" style="margin: 0px; padding: 0px; color: rgb(62, 98, 166); outline: 0px;"><img src="/jflyfox/ueditor/image/20160617/1466154129826030943.gif" width="678" height="261" data-bd-imgshare-binded="1" style="margin: 0px; padding: 0px; border: 1px solid rgb(221, 221, 221); max-width: 700px;"/></a></p><p style="margin-top: 0px; margin-bottom: 10px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, Verdana, sans-serif, 宋体; white-space: normal; font-size: 13.3333px; color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);"><span style="margin: 0px; padding: 0px; font-size: 13.3333px;">前台官网</span>模板：</p><p style="margin-top: 0px; margin-bottom: 10px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, Verdana, sans-serif, 宋体; white-space: normal; font-size: 13.3333px; color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);"><a href="http://static.oschina.net/uploads/img/201601/21022316_XkxY.gif" target="_blank" style="margin: 0px; padding: 0px; color: rgb(62, 98, 166); outline: 0px;"></a><a href="http://static.oschina.net/uploads/img/201601/21022316_XkxY.gif" target="_blank" style="margin: 0px; padding: 0px; color: rgb(62, 98, 166); outline: 0px;"><img src="/jflyfox/ueditor/image/20160617/1466154130077025812.gif" width="678" height="317" data-bd-imgshare-binded="1" style="margin: 0px; padding: 0px; border: 1px solid rgb(221, 221, 221); max-width: 700px;"/></a></p><p style="margin-top: 0px; margin-bottom: 10px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, Verdana, sans-serif, 宋体; white-space: normal; font-size: 13.3333px; color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);">前台相册模板：</p><p style="margin-top: 0px; margin-bottom: 10px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, Verdana, sans-serif, 宋体; white-space: normal; font-size: 13.3333px; color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);"><img src="/jflyfox/ueditor/image/20160617/1466154130331096951.gif" alt="" data-bd-imgshare-binded="1" style="margin: 0px; padding: 0px; border: 0px; max-width: 700px;"/></p><p style="margin-top: 0px; margin-bottom: 10px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, Verdana, sans-serif, 宋体; white-space: normal; font-size: 13.3333px; color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);"><span style="margin: 0px; padding: 0px; font-size: 13.3333px;">前台视频模板：</span></p><p style="margin-top: 0px; margin-bottom: 10px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, Verdana, sans-serif, 宋体; white-space: normal; font-size: 13.3333px; color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);"><img src="/jflyfox/ueditor/image/20160617/1466154130418010839.gif" alt="" data-bd-imgshare-binded="1" style="margin: 0px; padding: 0px; border: 0px; max-width: 700px;"/></p><p style="margin-top: 0px; margin-bottom: 10px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, Verdana, sans-serif, 宋体; white-space: normal; font-size: 13.3333px; color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);">后端模板：</p><p style="margin-top: 0px; margin-bottom: 10px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, Verdana, sans-serif, 宋体; white-space: normal; font-size: 13.3333px; color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);"><a href="http://static.oschina.net/uploads/img/201601/28091447_rQtD.gif" target="_blank" style="margin: 0px; padding: 0px; color: rgb(62, 98, 166); outline: 0px;"><img src="/jflyfox/ueditor/image/20160617/1466154130502035443.gif" alt="" data-bd-imgshare-binded="1" style="margin: 0px; padding: 0px; border: 1px solid rgb(221, 221, 221); max-width: 700px;"/></a></p><p style="margin-top: 0px; margin-bottom: 10px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, Verdana, sans-serif, 宋体; white-space: normal; font-size: 13.3333px; color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);"><a href="http://static.oschina.net/uploads/space/2015/0202/132559_bxcq_166354.jpg" target="_blank" style="margin: 0px; padding: 0px; color: rgb(62, 98, 166); outline: 0px;"></a><a href="http://static.oschina.net/uploads/space/2015/0202/132559_bxcq_166354.jpg" target="_blank" style="margin: 0px; padding: 0px; color: rgb(62, 98, 166); outline: 0px;"><img src="/jflyfox/ueditor/image/20160617/1466154130614082371.jpg" alt="" data-bd-imgshare-binded="1" style="margin: 0px; padding: 0px; border: 1px solid rgb(221, 221, 221); max-width: 700px;"/></a></p><p style="margin-top: 0px; margin-bottom: 10px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, Verdana, sans-serif, 宋体; font-size: 13.3333px; line-height: 21.3333px; white-space: normal; background-color: rgb(255, 255, 255);">支持在线编辑模板：</p><p style="margin-top: 0px; margin-bottom: 10px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, Verdana, sans-serif, 宋体; font-size: 13.3333px; line-height: 21.3333px; white-space: normal; background-color: rgb(255, 255, 255);"><img src="/jflyfox/ueditor/image/20160617/1466154130900043350.gif" alt="" data-bd-imgshare-binded="1" style="margin: 0px; padding: 0px; border: 0px; max-width: 700px;"/></p><p><br/></p>', 21, 0, 11, '1', 1, 2, 9, NULL, 'jflyfox/project/article_image/20160621_122708_874079.png', NULL, NULL, NULL, 10, '2016-06-17', '系统管理员', NULL, NULL, '2016-06-17 17:01:42', '2016-06-17 17:01:42', 1),
	(4242, 253, '其他项目', '<p style="font-family: Simsun; font-size: 12px; white-space: normal; ">其他项目</p><p style="font-family: Simsun; font-size: 12px; white-space: normal; "><strong>一、人员信息记录</strong></p><p style="font-family: Simsun; font-size: 12px; white-space: normal; ">主要是记录人员信息，可定制化人员信息字段，可进行excel导入导出的系统。</p><p style="font-family: Simsun; font-size: 12px; white-space: normal; "><br/></p><p style="font-family: Simsun; font-size: 12px; white-space: normal; "><strong>二、工资管理</strong></p><p style="font-family: Simsun; font-size: 12px; white-space: normal; ">主要是人员信息、部门管理，以及工资导入、导出。本来还想加入工资编辑和计算，但是由于各种原因放弃了。</p><p style="font-family: Simsun; font-size: 12px; white-space: normal; "><br/></p><p style="font-family: Simsun; font-size: 12px; white-space: normal; "><strong>三、website_jfinal类似于个人博客</strong></p><p style="font-family: Simsun; font-size: 12px; white-space: normal; ">这个是比较早的项目通过jfinal和jsp实现，通过后台配置实现网站首页更新。</p><p style="font-family: Simsun; font-size: 12px; white-space: normal; ">和现在的blog差不多就是代码和页面都比较老了。</p><p style="font-family: Simsun; font-size: 12px; white-space: normal; ">源码地址：<a href="http://git.oschina.net/flyfox/website_jfinal" target="_blank" title="http://git.oschina.net/flyfox/website_jfinal" style="text-decoration: none; color: rgb(63, 167, 203);">http://git.oschina.net/flyfox/website_jfinal</a></p><p style="font-family: Simsun; font-size: 12px; white-space: normal; "><br/></p><p style="font-family: Simsun; font-size: 12px; white-space: normal; "><strong>四、JavaFX</strong></p><p style="font-family: Simsun; font-size: 12px; white-space: normal; ">有一个JavaFX工具类项目和处理文件名称个性化批量修改工具以及学习JavaFX的大量DEMO。</p><p style="font-family: Simsun; font-size: 12px; white-space: normal; ">JavaFX Demo地址：<a href="http://git.oschina.net/flyfox/JavaFXDemo" target="_blank" title="http://git.oschina.net/flyfox/JavaFXDemo" style="text-decoration: none; color: rgb(63, 167, 203);">http://git.oschina.net/flyfox/JavaFXDemo</a></p><p style="font-family: Simsun; font-size: 12px; white-space: normal; "><br/></p><p style="font-family: Simsun; font-size: 12px; white-space: normal; "><strong>五、仓储管理：jfinal+jsp</strong></p><p style="font-family: Simsun; font-size: 12px; white-space: normal; ">（1）管理员登录模块&nbsp;</p><p style="font-family: Simsun; font-size: 12px; white-space: normal; ">包括对管理员的用户名密码进行匹配性验证，以及登录验证码，防止暴力破解登录。&nbsp;</p><p style="font-family: Simsun; font-size: 12px; white-space: normal; ">（2）物资管理模块&nbsp;</p><p style="font-family: Simsun; font-size: 12px; white-space: normal; ">能够对新物资进行建档，管理员可以查看所有已建档物资信息并可以修改或删除。&nbsp;</p><p style="font-family: Simsun; font-size: 12px; white-space: normal; ">（3）入库管理模块&nbsp;</p><p style="font-family: Simsun; font-size: 12px; white-space: normal; ">管理员可以进行入库登记，可以修改或删除入库记录，也可以按照时间段进行入库情况统计。&nbsp;</p><p style="font-family: Simsun; font-size: 12px; white-space: normal; ">（4）出库管理模块&nbsp;</p><p style="font-family: Simsun; font-size: 12px; white-space: normal; ">管理员可以查看所有出库信息，可以进行出库登记，可以修改或删除出库记录。可以按时间段进行统计查询。&nbsp;</p><p style="font-family: Simsun; font-size: 12px; white-space: normal; ">（5）盘存管理模块&nbsp;</p><p style="font-family: Simsun; font-size: 12px; white-space: normal; ">管理员可以查看所有物资的库存情况。可以进行商品查询，可以按名称查询单一商品，也可以按种类查询某一种类物资。</p><p style="font-family: Simsun; font-size: 12px; white-space: normal; ">（6）系统管理模块&nbsp;</p><p style="font-family: Simsun; font-size: 12px; white-space: normal; ">包括供货单位管理、收货单位管理、物资种类管理、经手人管理等。</p><p style="font-family: Simsun; font-size: 12px; white-space: normal; ">（7）用户管理模块 &nbsp;</p><p style="font-family: Simsun; font-size: 12px; white-space: normal; ">主要提供用户修改密码的功能。</p><p style="font-family: Simsun; font-size: 12px; white-space: normal; "><br/></p><p style="font-family: Simsun; font-size: 12px; white-space: normal; "><strong>六、低值易耗品信息管理<span style="line-height: 22.8571px;">：jfinal+jsp</span></strong></p><p style="font-family: Simsun; font-size: 12px; white-space: normal; ">类似与仓储管理</p><p style="font-family: Simsun; font-size: 12px; white-space: normal; ">（1）用户管理</p><p style="font-family: Simsun; font-size: 12px; white-space: normal; ">1)登录；2)注册；3)修改员工个人信息；4)修改员工密码；5)管理员工</p><p style="font-family: Simsun; font-size: 12px; white-space: normal; ">（2）低值易耗品信息管理</p><p style="font-family: Simsun; font-size: 12px; white-space: normal; ">1)分类：低值易耗品分类表中添加、删除、修改、查看分类。</p><p style="font-family: Simsun; font-size: 12px; white-space: normal; ">2)信息增加：员工或管理员登陆后可以将采购到的低值易耗品信息添加到信息表中，并生成凭单。</p><p style="font-family: Simsun; font-size: 12px; white-space: normal; ">（3）凭单管理</p><p style="font-family: Simsun; font-size: 12px; white-space: normal; ">1)凭单查看，编辑；2)凭单打印：</p><p style="font-family: Simsun; font-size: 12px; white-space: normal; ">（4）报表管理</p><p style="font-family: Simsun; font-size: 12px; white-space: normal; ">1)报表生成；2)报表打印</p><p style="font-family: Simsun; font-size: 12px; white-space: normal; "><br/></p><p style="font-family: Simsun; font-size: 12px; white-space: normal; "><strong>七、任务管理<span style="line-height: 22.8571px;"><span style="line-height: 22.8571px;">：jfinal+jsp</span></span></strong></p><p style="font-family: Simsun; font-size: 12px; white-space: normal; "><strong><span style="line-height: 22.8571px;"><span style="line-height: 22.8571px;"></span></span></strong></p><p style="font-family: Simsun; font-size: 12px; white-space: normal; ">（1）系统用户登录及注册</p><p style="font-family: Simsun; font-size: 12px; white-space: normal; ">1）角色管理； 2）用户注册；3）信息维护</p><p style="font-family: Simsun; font-size: 12px; white-space: normal; ">（2）公告模块</p><p style="font-family: Simsun; font-size: 12px; white-space: normal; ">1）公告展示进行权限划分；2）公告编辑，实现公告发布</p><p style="font-family: Simsun; font-size: 12px; white-space: normal; ">（3）任务管理</p><p style="font-family: Simsun; font-size: 12px; white-space: normal; ">1）核心模块，任务信息维护；2）实现流转-》处理-》结束流程；3）实现任务权限管理，按照部门和用户角色划分</p><p style="font-family: Simsun; font-size: 12px; white-space: normal; "><strong><span style="line-height: 22.8571px;"><span style="line-height: 22.8571px;"><br/></span></span></strong><strong>八、文献管理<span style="line-height: 22.8571px;"><span style="line-height: 22.8571px;"><span style="line-height: 22.8571px;">：jfinal+jsp</span></span></span></strong></p><p style="font-family: Simsun; font-size: 12px; white-space: normal; "><span style="line-height: 22.8571px;"><span style="line-height: 22.8571px;"><span style="line-height: 22.8571px;">实现文献信息编辑，文献上传、以及根据文献文本自动解析标题、作者、摘要、内容等信息。</span></span></span></p><p style="font-family: Simsun; font-size: 12px; white-space: normal; "><span style="line-height: 22.8571px;"><span style="line-height: 22.8571px;"><span style="line-height: 22.8571px;"><br/></span></span></span></p><p style="font-family: Simsun; font-size: 12px; white-space: normal; "><span style="line-height: 22.8571px;"><span style="line-height: 22.8571px;"><span style="line-height: 22.8571px;"><strong>九、仓库管理<span style="line-height: 22.8571px;">：springmvc3+hibernate4</span></strong></span></span></span></p><p style="font-family: Simsun; font-size: 12px; white-space: normal; "><span style="line-height: 22.8571px;">类似仓储管理，修改实现技术</span></p><p style="font-family: Simsun; font-size: 12px; white-space: normal; "><span style="line-height: 22.8571px;"><br/></span></p><p style="font-family: Simsun; font-size: 12px; white-space: normal; "><span style="line-height: 22.8571px;"><span style="line-height: 22.8571px;"><span style="line-height: 22.8571px;"><strong>十、企业库存管理<span style="line-height: 22.8571px;"><span style="line-height: 22.8571px;"><span style="line-height: 22.8571px;"><span style="line-height: 22.8571px;"><span style="line-height: 22.8571px;">：jfinal+jsp</span></span></span></span></span></strong></span></span></span></p><p style="font-family: Simsun; font-size: 12px; white-space: normal; "><span style="line-height: 22.8571px;"><span style="line-height: 22.8571px;"><span style="line-height: 22.8571px;"><span style="line-height: 22.8571px;">类似仓储管理，实现</span><span style="line-height: 22.8571px;">用户模块，库存模块，退货模块，订货模块以及报表管理</span></span></span></span></p><p><br/></p>', 7, 0, 11, '1', 1, 2, 99, NULL, NULL, NULL, NULL, NULL, 10, '2016-06-16', '系统管理员', NULL, NULL, '2016-06-17 17:14:11', '2016-06-17 17:14:11', 1),
	(4244, 257, 'jfinal cms介绍', '<p style="box-sizing: border-box; color: rgb(17, 17, 17); font-family: &#39;PingFang SC&#39;, &#39;Helvetica Neue&#39;, &#39;Microsoft YaHei UI&#39;, &#39;Microsoft YaHei&#39;, &#39;Noto Sans CJK SC&#39;, Sathu, EucrosiaUPC, sans-serif; line-height: 25.888px; white-space: normal; background-color: rgb(255, 255, 255);">jfinal cms，采用了简洁强大的JFinal作为web框架，模板引擎用的是beetl，数据库用mysql，前端bootstrap、flat ui等框架。 支持多站点、oauth2认证、帐号注册、密码加密、评论及回复，消息提示，网站访问量统计，文章评论数和浏览量统计，回复管理，权限管理等。</p><p style="box-sizing: border-box; color: rgb(17, 17, 17); font-family: &#39;PingFang SC&#39;, &#39;Helvetica Neue&#39;, &#39;Microsoft YaHei UI&#39;, &#39;Microsoft YaHei&#39;, &#39;Noto Sans CJK SC&#39;, Sathu, EucrosiaUPC, sans-serif; line-height: 25.888px; white-space: normal; background-color: rgb(255, 255, 255);">后台模块包含：栏目管理，栏目公告，栏目滚动图片，文章管理，回复管理，意见反馈，我的相册，相册管理，图片管理，专辑管理、视频管理、缓存更新，友情链接，访问统计，联系人管理，模板管理，组织机构管理，用户管理，角色管理，菜单管理，数据字典管理，站点管理。</p><p><br/></p>', 5, 1, 11, '1', 1, 2, 20, NULL, NULL, NULL, NULL, NULL, 10, '2017-01-21', '系统管理员', NULL, NULL, '2017-01-21 23:36:31', '2017-01-21 23:36:31', 1),
	(4250, 264, '论坛介绍', '<p>&nbsp;&nbsp;&nbsp;&nbsp;论坛（forum） ，简单理解为发帖回帖讨论的平台。是Internet上的一种电子信息服务系统。它提供一块公共电子白板，每个用户都可以在上面书写，可发布信息或提出看法。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;它是一种交互性强，内容丰富而及时的Internet电子信息服务系统，用户在BBS站点上可以获得各种信息服务、发布信息、进行讨论、聊天等等。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;BBS的英文全称是Bulletin Board System。翻译为中文就是“电子布告栏系统”。BBS最早是用来公布股市价格等类信息的，当时BBS连文件传输的功能都没有，而且只能在苹果机上运行。早期的BBS与一般街头和校园内的公告板性质相同，只不过是通过来传播或获得消息而已。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;本站就是论坛，地址：<a href="http://bbs.jflyfox.com" target="_blank" title="bbs.jflyfox.com">bbs.jflyfox.com</a><br/></p>', 0, 0, 11, '1', 1, 2, 20, NULL, NULL, NULL, NULL, NULL, 10, '2017-01-22', '系统管理员', NULL, NULL, '2017-01-22 00:04:44', '2017-01-22 00:04:44', 1),
	(4252, 256, '论坛使用须知', '<p>一、用户可通过以下方式注册成为社区的正式用户。成为论坛正式用户即获得本社区规定用户所应享有的一切权限；未经认证仅享有本社区规定的部分会员权限。社区有权对会员的权限设计进行变更。</p><p>二、如发现用户帐号中含有不雅文字或不恰当名称的，本社区保留取消其用户资格的权利，相应后果由用户自行承担。</p><p>(1)请勿以党和国家领导人或其他社会名人的真实姓名、字号、艺名、笔名注册；</p><p>(2)请勿以国家机构或其他机构的名称注册；</p><p>(3)请勿注册不文明、不健康名字，或包含歧视、侮辱、猥亵类词语的帐号；</p><p>(4)请勿注册易产生歧义、引起他人误解或其它不符合法律规定的帐号。</p><p>三、如发现用户的头像、简介/心情等个人信息中包含违法和不良信息的，本社区保留取消其用户资格的权利。</p><p>四、用户帐号的所有权归本社区，用户仅享有使用权。3个月未使用的用户帐号，本社区保留收回的权利。</p><p>五、用户有义务保证密码和帐号的安全，用户利用该密码和帐号所进行的一切活动引起的任何损失或损害，由用户自行承担全部责任，本社区不承担任何责任。如用户发现帐号遭到未授权的使用或发生其他任何安全问题，应立即修改帐号密码并妥善保管，如有必要，请通知本社区。因黑客行为或用户的保管疏忽导致帐号非法使用，本社区不承担任何责任。</p><p><br/></p>', 5, 1, 11, '1', 1, 1, 9, NULL, NULL, NULL, NULL, NULL, 10, '2017-01-22', '系统管理员', NULL, NULL, '2017-01-22 00:14:05', '2017-01-22 00:14:05', 1);
/*!40000 ALTER TABLE `tb_article` ENABLE KEYS */;

-- 导出  表 cmsdbs.tb_articlelike 结构
DROP TABLE IF EXISTS `tb_articlelike`;
CREATE TABLE IF NOT EXISTS `tb_articlelike` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `article_id` int(11) DEFAULT NULL COMMENT '文章ID',
  `create_time` varchar(64) DEFAULT NULL COMMENT '创建时间',
  `create_id` int(11) DEFAULT '0' COMMENT '创建者',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='喜欢的文章';

-- 正在导出表  cmsdbs.tb_articlelike 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `tb_articlelike` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_articlelike` ENABLE KEYS */;

-- 导出  表 cmsdbs.tb_comment 结构
DROP TABLE IF EXISTS `tb_comment`;
CREATE TABLE IF NOT EXISTS `tb_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `fatherId` int(11) DEFAULT NULL COMMENT '父评论ID',
  `article_id` int(11) DEFAULT NULL COMMENT '文章ID',
  `content` text NOT NULL COMMENT '内容',
  `status` int(11) DEFAULT '11' COMMENT '状态//select/11,评论未读,12,评论已读,21,回复未读,22,回复已读',
  `reply_userid` int(11) DEFAULT NULL,
  `create_time` varchar(64) DEFAULT NULL COMMENT '创建时间',
  `create_id` int(11) DEFAULT '0' COMMENT '创建者 评论者',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='评论';

-- 正在导出表  cmsdbs.tb_comment 的数据：~1 rows (大约)
/*!40000 ALTER TABLE `tb_comment` DISABLE KEYS */;
INSERT INTO `tb_comment` (`id`, `fatherId`, `article_id`, `content`, `status`, `reply_userid`, `create_time`, `create_id`) VALUES
	(4, 0, 4252, '<p>珍爱生命，文明上网<img src="http://img.baidu.com/hi/face/i_f01.gif"/></p>', 12, 1, '2017-01-22 00:19:49', 1);
/*!40000 ALTER TABLE `tb_comment` ENABLE KEYS */;

-- 导出  表 cmsdbs.tb_contact 结构
DROP TABLE IF EXISTS `tb_contact`;
CREATE TABLE IF NOT EXISTS `tb_contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(256) NOT NULL COMMENT '姓名',
  `phone` varchar(32) DEFAULT NULL COMMENT '手机号',
  `email` varchar(32) DEFAULT NULL COMMENT 'Email',
  `addr` varchar(256) DEFAULT NULL COMMENT '地址',
  `birthday` varchar(32) DEFAULT NULL COMMENT '生日',
  `remark` varchar(256) DEFAULT NULL COMMENT '说明',
  `create_time` varchar(64) DEFAULT NULL COMMENT '创建时间',
  `create_id` int(11) DEFAULT '0' COMMENT '创建者',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='联系人';

-- 正在导出表  cmsdbs.tb_contact 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `tb_contact` DISABLE KEYS */;
INSERT INTO `tb_contact` (`id`, `name`, `phone`, `email`, `addr`, `birthday`, `remark`, `create_time`, `create_id`) VALUES
	(1, '刘向东', '13913163260', '545798731@qq.com', '苏州市', '1987-07-25', '超管', '2015-01-27', 1);
/*!40000 ALTER TABLE `tb_contact` ENABLE KEYS */;

-- 导出  表 cmsdbs.tb_error 结构
DROP TABLE IF EXISTS `tb_error`;
CREATE TABLE IF NOT EXISTS `tb_error` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `type` int(11) DEFAULT NULL COMMENT '类型',
  `ip` varchar(64) NOT NULL COMMENT 'IP地址',
  `userid` int(11) DEFAULT NULL COMMENT '用户ID',
  `content` text COMMENT '描述',
  `remark` text COMMENT '备注',
  `create_time` varchar(64) DEFAULT NULL COMMENT '创建时间',
  `create_id` int(11) DEFAULT '0' COMMENT '创建者',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='异常数据';

-- 正在导出表  cmsdbs.tb_error 的数据：~2 rows (大约)
/*!40000 ALTER TABLE `tb_error` DISABLE KEYS */;
INSERT INTO `tb_error` (`id`, `type`, `ip`, `userid`, `content`, `remark`, `create_time`, `create_id`) VALUES
	(1, 1, '127.0.0.1', 2, '上传数量：2015062100(11)-20150621(11)', NULL, '2015-06-21 00:24:30', 2),
	(2, 1, '127.0.0.1', 2, '上传数量：2015062100(11)-20150621(11)', NULL, '2015-06-21 00:26:32', 2);
/*!40000 ALTER TABLE `tb_error` ENABLE KEYS */;

-- 导出  表 cmsdbs.tb_folder 结构
DROP TABLE IF EXISTS `tb_folder`;
CREATE TABLE IF NOT EXISTS `tb_folder` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '目录id',
  `parent_id` int(11) DEFAULT '0' COMMENT '父ID',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '中文名',
  `key` varchar(100) DEFAULT '' COMMENT 'URL KEY',
  `path` varchar(200) DEFAULT '' COMMENT '模板路径',
  `content` text COMMENT '描述',
  `sort` int(11) DEFAULT '1' COMMENT '排序',
  `status` int(11) DEFAULT '1' COMMENT '状态//radio/2,隐藏,1,显示',
  `type` int(11) DEFAULT '1' COMMENT '类型 1 普通目录 2 a标签 3 a标签_blank 4 直接加载url信息',
  `jump_url` varchar(200) DEFAULT NULL COMMENT '跳转地址',
  `material_type` int(11) DEFAULT NULL COMMENT '素材类型',
  `site_id` int(11) DEFAULT NULL COMMENT '站点ID',
  `seo_title` varchar(200) DEFAULT NULL COMMENT 'SEO title',
  `seo_keywords` varchar(200) DEFAULT NULL COMMENT 'SEO keywords',
  `seo_description` varchar(200) DEFAULT NULL COMMENT 'SEO description',
  `update_time` varchar(64) DEFAULT NULL COMMENT '更新时间',
  `update_id` int(11) DEFAULT '0' COMMENT '更新人',
  `create_time` varchar(64) DEFAULT NULL COMMENT '创建时间',
  `create_id` int(11) DEFAULT '0' COMMENT '创建者',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=268 DEFAULT CHARSET=utf8 COMMENT='目录';

-- 正在导出表  cmsdbs.tb_folder 的数据：~27 rows (大约)
/*!40000 ALTER TABLE `tb_folder` DISABLE KEYS */;
INSERT INTO `tb_folder` (`id`, `parent_id`, `name`, `key`, `path`, `content`, `sort`, `status`, `type`, `jump_url`, `material_type`, `site_id`, `seo_title`, `seo_keywords`, `seo_description`, `update_time`, `update_id`, `create_time`, `create_id`) VALUES
	(1, 0, '首页', 'home', '', '', 1, 1, 1, NULL, 102, 2, NULL, NULL, NULL, '2015-01-28 16:54:03', 0, '2015-01-30 13:24:58', 1),
	(2, 0, '新闻', 'news', NULL, NULL, 2, 1, 1, NULL, 102, 2, NULL, NULL, NULL, '2015-05-24 15:46:40', 0, '2015-01-30 13:24:58', 1),
	(3, 0, '美食', 'food', '', NULL, 3, 1, 1, NULL, 102, 2, NULL, NULL, NULL, '2015-05-24 15:46:54', 0, '2015-01-30 13:24:58', 1),
	(4, 0, '旅游', 'travel', '', NULL, 5, 1, 1, NULL, 102, 2, NULL, NULL, NULL, '2015-05-24 15:47:43', 0, '2015-05-24 15:47:43', 1),
	(5, 0, '教育', 'education', '', NULL, 7, 1, 1, NULL, 102, 2, NULL, NULL, NULL, '2015-05-24 15:47:55', 0, '2015-05-24 15:47:55', 1),
	(7, 103, '标签查询', NULL, NULL, NULL, 80, 1, 2, 'front/tags/all', 102, 2, NULL, NULL, NULL, '2015-05-27 23:34:38', 0, '2015-05-18 09:12:57', 1),
	(10, 103, '公园', 'park', NULL, NULL, 51, 1, 1, NULL, 102, 2, NULL, NULL, NULL, '2015-05-24 15:49:35', 0, '2015-05-24 15:49:11', 1),
	(90, 103, '关于我们', 'about', NULL, NULL, 81, 1, 2, 'front/about.html', 102, 2, NULL, NULL, NULL, '2015-05-26 16:40:46', 0, '2015-05-26 10:36:30', 1),
	(101, 103, '意见反馈', 'advice', NULL, NULL, 82, 1, 1, NULL, 102, 2, NULL, NULL, NULL, '2016-01-29 01:13:16', 1, '2016-01-29 01:13:16', 1),
	(103, 0, '其他', 'others', NULL, NULL, 10, 1, 1, NULL, 102, 2, NULL, NULL, NULL, '2016-03-31 23:50:26', 1, '2016-03-31 23:50:26', 1),
	(230, 0, '首页', 'home', 'home/home.html', NULL, 1, 1, 1, NULL, 102, 3, 'JS Title', 'JS KW', 'JS Desc', '2016-04-07 01:13:40', 1, '2016-04-07 01:13:40', 1),
	(231, 0, '关于我们', 'about', '', NULL, 81, 1, 1, NULL, 1, 3, NULL, NULL, NULL, '2015-05-26 16:40:46', 0, '2015-05-26 10:36:30', 1),
	(241, 0, '首页', '', 'home/home.html', 'FLY的狐狸', 1, 1, 1, '', 1, 5, '', '', '', '2015-01-28 16:54:03', NULL, '2015-01-28 12:00:00', 1),
	(243, 0, '我的项目', '', 'home/home.html', '', 3, 1, 1, '', 1, 5, '', '', '', '2015-01-28 16:56:45', NULL, '2015-01-28 12:10:00', 1),
	(245, 0, '关于我们', '', 'home/home.html', '', 99, 1, 1, '', 1, 5, '', '', '', '2015-01-29 14:04:23', NULL, '2015-01-29 12:00:00', 1),
	(248, 0, '程序调用', '', 'home/home.html', '程序调用，不进行展示', 199, 2, 1, '', 1, 5, '', '', '', '2015-02-15 14:11:23', NULL, '2015-02-15 12:00:00', 1),
	(250, 0, '查看标签', '', '', '', 20, 1, 2, 'front/tags/all', 102, 5, '', '', '', '2015-05-18 00:06:48', NULL, '2015-05-18 00:06:48', 1),
	(252, 0, '我的微博', 'weibo', 'home/home.html', '', 8, 2, 1, '', 102, 5, '', '', '', '2016-05-03 07:21:29', 1, '2016-05-03 07:21:29', 1),
	(253, 0, '首页', 'index', 'index.html', NULL, 10, 1, 1, NULL, 102, 8, NULL, NULL, NULL, '2016-06-17 16:48:11', 1, '2016-06-17 16:48:11', 1),
	(254, 0, '意见反馈', NULL, NULL, NULL, 10, 1, 3, 'http://mtg.jflyfox.com/advice.html', 102, 8, NULL, NULL, NULL, '2016-06-21 12:21:19', 1, '2016-06-21 12:21:19', 1),
	(255, 0, '关于我们', NULL, NULL, NULL, 10, 1, 3, 'http://blog.jflyfox.com/245.html', 102, 8, NULL, NULL, NULL, '2016-06-21 12:21:58', 1, '2016-06-21 12:21:58', 1),
	(256, 0, '首页', 'home', NULL, NULL, 5, 1, 1, NULL, 102, 9, NULL, NULL, NULL, '2017-01-21 23:26:30', 1, '2017-01-21 23:26:30', 1),
	(257, 0, 'jFinalCMS', 'jfinalcms', 'home/common_menu.html', NULL, 12, 1, 1, NULL, 102, 9, NULL, NULL, NULL, '2017-01-21 23:28:06', 1, '2017-01-21 23:28:06', 1),
	(261, 0, '其他', 'other', NULL, NULL, 50, 1, 1, NULL, 102, 9, NULL, NULL, NULL, '2017-01-21 23:29:46', 1, '2017-01-21 23:29:46', 1),
	(264, 261, '论坛站点', 'bbs', 'home/common_menu.html', NULL, 56, 1, 1, NULL, 102, 9, NULL, NULL, NULL, '2017-01-21 23:31:42', 1, '2017-01-21 23:31:42', 1),
	(266, 261, '意见反馈', 'advice', NULL, NULL, 70, 1, 1, NULL, 102, 9, NULL, NULL, NULL, '2017-01-21 23:33:18', 1, '2017-01-21 23:33:18', 1),
	(267, 261, '标签查询', 'tags', NULL, NULL, 60, 1, 2, 'front/tags/all.html', 102, 9, NULL, NULL, NULL, '2017-01-21 23:41:16', 1, '2017-01-21 23:41:16', 1);
/*!40000 ALTER TABLE `tb_folder` ENABLE KEYS */;

-- 导出  表 cmsdbs.tb_folder_notice 结构
DROP TABLE IF EXISTS `tb_folder_notice`;
CREATE TABLE IF NOT EXISTS `tb_folder_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `folder_id` int(11) NOT NULL COMMENT '目录id',
  `type` int(11) NOT NULL DEFAULT '0' COMMENT '类型',
  `icon` varchar(255) DEFAULT NULL COMMENT '图标',
  `content` varchar(2000) DEFAULT NULL COMMENT '内容',
  `url` varchar(255) DEFAULT NULL COMMENT '链接地址',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `status` int(11) DEFAULT '1' COMMENT '状态//radio/2,隐藏,1,显示',
  `is_deleted` int(11) NOT NULL DEFAULT '0' COMMENT '是否已删除',
  `update_time` varchar(64) DEFAULT NULL COMMENT '更新时间',
  `update_id` int(11) DEFAULT '0' COMMENT '更新人',
  `create_time` varchar(64) DEFAULT NULL COMMENT '创建时间',
  `create_id` int(11) DEFAULT '0' COMMENT '创建者',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='栏目公告';

-- 正在导出表  cmsdbs.tb_folder_notice 的数据：~2 rows (大约)
/*!40000 ALTER TABLE `tb_folder_notice` DISABLE KEYS */;
INSERT INTO `tb_folder_notice` (`id`, `folder_id`, `type`, `icon`, `content`, `url`, `sort`, `status`, `is_deleted`, `update_time`, `update_id`, `create_time`, `create_id`) VALUES
	(1, 1, 0, NULL, '这里是我们的公告信息，哈哈', NULL, 20, 1, 1, '2016-01-31 02:52:56', 1, '2016-01-31 02:52:56', 1),
	(2, 2, 0, NULL, '通知大家，jfinal cms是一个很好的内容管理平台', 'http://www.baidu.com', 20, 1, 1, '2016-01-31 02:53:22', 1, '2016-01-31 02:53:22', 1);
/*!40000 ALTER TABLE `tb_folder_notice` ENABLE KEYS */;

-- 导出  表 cmsdbs.tb_folder_roll_picture 结构
DROP TABLE IF EXISTS `tb_folder_roll_picture`;
CREATE TABLE IF NOT EXISTS `tb_folder_roll_picture` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `folder_id` int(11) NOT NULL COMMENT '目录id',
  `title` varchar(200) DEFAULT '' COMMENT '题目',
  `content` varchar(2000) DEFAULT NULL COMMENT '内容',
  `sort` int(11) DEFAULT '1' COMMENT '排序',
  `status` int(11) DEFAULT '1' COMMENT '状态//radio/2,隐藏,1,显示',
  `image_url` varchar(256) DEFAULT NULL COMMENT '图片路径',
  `image_net_url` varchar(256) DEFAULT NULL COMMENT '网络图片路径',
  `url` varchar(255) DEFAULT NULL COMMENT '链接地址',
  `is_deleted` int(11) NOT NULL DEFAULT '0' COMMENT '是否已删除',
  `update_time` varchar(64) DEFAULT NULL COMMENT '更新时间',
  `update_id` int(11) DEFAULT '0' COMMENT '更新人',
  `create_time` varchar(64) DEFAULT NULL COMMENT '创建时间',
  `create_id` int(11) DEFAULT '0' COMMENT '创建者',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='栏目轮播图';

-- 正在导出表  cmsdbs.tb_folder_roll_picture 的数据：~5 rows (大约)
/*!40000 ALTER TABLE `tb_folder_roll_picture` DISABLE KEYS */;
INSERT INTO `tb_folder_roll_picture` (`id`, `folder_id`, `title`, `content`, `sort`, `status`, `image_url`, `image_net_url`, `url`, `is_deleted`, `update_time`, `update_id`, `create_time`, `create_id`) VALUES
	(3, 1, '百花山', NULL, 1, 1, 'jflyfox/mtg/roll_image/20210812_175353_204900.jpg', NULL, 'front/article/112.html', 1, '2016-01-28 17:40:22', 1, '2016-01-28 17:40:22', 1),
	(4, 1, '美丽门城', NULL, 2, 1, 'jflyfox/mtg/roll_image/20210812_180831_73009.jpg', NULL, '#', 1, '2016-01-28 17:41:13', 1, '2016-01-28 17:41:13', 1),
	(5, 1, '永定塔', NULL, 3, 1, 'jflyfox/mtg/roll_image/20210812_180852_630028.jpg', NULL, 'http://www.jflyfox.com/mtg/front/article/406.html', 1, '2016-01-28 17:42:12', 1, '2016-01-28 17:42:12', 1),
	(6, 1, '爨底下', NULL, 4, 1, 'jflyfox/mtg/roll_image/20210812_180951_846180.jpg', NULL, 'front/article/320.html', 1, '2016-01-28 17:42:40', 1, '2016-01-28 17:42:40', 1),
	(7, 255, '公告测试', '公告测试', 20, 1, 'jflyfox/project/roll_image/20210811_175700_937162.jpg', NULL, 'https://www.huxiu.com/', 2, '2021-08-11 17:57:00', 1, '2021-08-11 17:57:00', 1);
/*!40000 ALTER TABLE `tb_folder_roll_picture` ENABLE KEYS */;

-- 导出  表 cmsdbs.tb_friendlylink 结构
DROP TABLE IF EXISTS `tb_friendlylink`;
CREATE TABLE IF NOT EXISTS `tb_friendlylink` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(256) NOT NULL COMMENT '名称/11111/',
  `url` varchar(256) NOT NULL COMMENT 'URL',
  `sort` int(11) NOT NULL COMMENT '排序号',
  `state` int(11) DEFAULT '0' COMMENT '是否显示//radio/1,显示,2,不显示',
  `type` int(11) DEFAULT '21' COMMENT '类型//select/1,见数据字典',
  `remark` varchar(256) DEFAULT NULL COMMENT '备注//textarea',
  `site_id` int(11) DEFAULT '0' COMMENT '站点ID',
  `create_time` varchar(64) DEFAULT NULL COMMENT '创建时间',
  `create_id` int(11) DEFAULT '0' COMMENT '创建者',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='友情链接表';

-- 正在导出表  cmsdbs.tb_friendlylink 的数据：~10 rows (大约)
/*!40000 ALTER TABLE `tb_friendlylink` DISABLE KEYS */;
INSERT INTO `tb_friendlylink` (`id`, `name`, `url`, `sort`, `state`, `type`, `remark`, `site_id`, `create_time`, `create_id`) VALUES
	(1, '意见反馈', 'http://www.jflyfox.com/mtg/advice', 16, 1, 22, NULL, 0, '2015-04-24 15:03:02', 1),
	(2, '捐赠我们', 'http://www.jflyfox.com/mtg/front/about/351.html', 13, 1, 22, NULL, 0, '2015-04-24 15:27:36', 1),
	(3, '关于我们', 'http://www.jflyfox.com/mtgfront/about/352.html', 2, 1, 22, NULL, 0, '2015-04-24 15:28:56', 1),
	(4, '给我写信', 'http://mail.qq.com/cgi-bin/qm_share?t=qm_mailme&email=Og8ODw0DAg0JC3pLSxRZVVc', 15, 1, 22, NULL, 0, '2015-04-24 15:29:12', 1),
	(5, '材料与测试网', 'http://www.mat-test.com/', 200, 1, 21, NULL, 0, '2015-05-06 16:13:40', 1),
	(6, '中国新材料测试评价联盟', 'https://www.camtea.org.cn/', 220, 1, 21, NULL, 0, '2015-05-06 16:14:37', 1),
	(7, '中国社会科学院', 'http://cass.cssn.cn/', 210, 1, 21, NULL, 0, '2015-05-06 16:15:03', 1),
	(8, '联系我们', 'http://www.jflyfox.com/mtgfront/about/353.html', 3, 1, 22, NULL, 0, '2015-05-26 11:26:57', 1),
	(9, '免责声明', 'http://www.jflyfox.com/mtgfront/about/354.html', 20, 1, 22, NULL, 0, '2015-05-26 11:27:18', 1),
	(10, '广告服务', 'http://www.jflyfox.com/mtgfront/about/355.html', 11, 1, 22, NULL, 0, '2015-05-26 11:28:42', 1);
/*!40000 ALTER TABLE `tb_friendlylink` ENABLE KEYS */;

-- 导出  表 cmsdbs.tb_image 结构
DROP TABLE IF EXISTS `tb_image`;
CREATE TABLE IF NOT EXISTS `tb_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `album_id` int(11) DEFAULT '1' COMMENT '相册ID',
  `album_name` varchar(200) DEFAULT '' COMMENT '相册名称',
  `name` varchar(200) DEFAULT '' COMMENT '图片名称',
  `linkurl` varchar(400) DEFAULT '' COMMENT '链接地址',
  `cdnurl` varchar(400) DEFAULT '' COMMENT 'CDN地址',
  `image_url` varchar(256) DEFAULT NULL COMMENT '图片路径',
  `image_net_url` varchar(256) DEFAULT NULL COMMENT '网络图片路径',
  `ext` varchar(20) DEFAULT '' COMMENT '扩展名',
  `width` varchar(20) DEFAULT '' COMMENT '宽',
  `height` varchar(20) DEFAULT '' COMMENT '高',
  `status` int(11) DEFAULT '1' COMMENT '状态//radio/2,隐藏,1,显示',
  `is_comment` int(11) DEFAULT '1' COMMENT '是否评论//radio/2,否,1,是',
  `is_recommend` int(11) DEFAULT '2' COMMENT '是否推荐：2 否 1 是',
  `sort` int(11) DEFAULT '1' COMMENT '排序',
  `remark` varchar(400) DEFAULT NULL COMMENT '备注',
  `publish_time` varchar(64) DEFAULT NULL COMMENT '发布时间',
  `publish_user` varchar(64) DEFAULT '1' COMMENT '发布者',
  `update_time` varchar(64) DEFAULT NULL COMMENT '更新时间',
  `update_id` int(11) DEFAULT '0' COMMENT '更新者',
  `create_time` varchar(64) DEFAULT NULL COMMENT '创建时间',
  `create_id` int(11) DEFAULT '0' COMMENT '创建者',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COMMENT='图片';

-- 正在导出表  cmsdbs.tb_image 的数据：~6 rows (大约)
/*!40000 ALTER TABLE `tb_image` DISABLE KEYS */;
INSERT INTO `tb_image` (`id`, `album_id`, `album_name`, `name`, `linkurl`, `cdnurl`, `image_url`, `image_net_url`, `ext`, `width`, `height`, `status`, `is_comment`, `is_recommend`, `sort`, `remark`, `publish_time`, `publish_user`, `update_time`, `update_id`, `create_time`, `create_id`) VALUES
	(2, 1, '风景', '风景1', 'http://localhost:8888/cmsweb/jflyfox/photo/image/20210812_154719_951333.jpg', '', 'jflyfox/photo/image/20210812_154719_951333.jpg', NULL, 'jpg', '1190', '550', 1, 2, 2, 10, NULL, '2016-02-10', '系统管理员', '2016-02-10 00:41:10', 1, '2016-02-10 00:41:10', 1),
	(4, 2, '美女', '美女1', 'http://icon.mobanwang.com/UploadFiles_8971/200910/20091016192119446.png', '', NULL, 'http://icon.mobanwang.com/UploadFiles_8971/200910/20091016192119446.png', 'png', '256', '256', 1, 2, 1, 2, NULL, '2016-02-10', '系统管理员', '2016-02-10 00:43:20', 1, '2016-02-10 00:43:20', 1),
	(11, 2, '美女', '美女6', 'http://icon.mobanwang.com/UploadFiles_8971/200806/20080610183332442.png', '', NULL, 'http://icon.mobanwang.com/UploadFiles_8971/200806/20080610183332442.png', 'png', '128', '128', 1, 2, 2, 8, NULL, '2016-02-10', '系统管理员', '2016-02-10 01:31:45', 1, '2016-02-10 01:31:45', 1),
	(22, 1, '风景', '游戏4', 'http://icon.mobanwang.com/UploadFiles_8971/200910/20091016215812108.png', '', NULL, 'http://icon.mobanwang.com/UploadFiles_8971/200910/20091016215812108.png', 'png', '256', '256', 1, 2, 2, 10, NULL, '2016-02-11', '系统管理员', '2016-02-11 03:00:11', 1, '2016-02-11 03:00:11', 1),
	(25, 2, '美女', '游戏8', 'http://icon.mobanwang.com/UploadFiles_8971/200910/20091016215811189.png', '', NULL, 'http://icon.mobanwang.com/UploadFiles_8971/200910/20091016215811189.png', 'png', '256', '256', 1, 2, 2, 10, NULL, '2016-02-11', '系统管理员', '2016-02-11 03:04:52', 1, '2016-02-11 03:04:52', 1),
	(28, 1, '风景', 'Cat4', 'http://icon.mobanwang.com/UploadFiles_8971/200806/20080610183332241.png', '', NULL, 'http://icon.mobanwang.com/UploadFiles_8971/200806/20080610183332241.png', 'png', '128', '128', 1, 2, 2, 10, NULL, '2016-02-11', '系统管理员', '2016-02-11 03:07:03', 1, '2016-02-11 03:07:03', 1);
/*!40000 ALTER TABLE `tb_image` ENABLE KEYS */;

-- 导出  表 cmsdbs.tb_image_album 结构
DROP TABLE IF EXISTS `tb_image_album`;
CREATE TABLE IF NOT EXISTS `tb_image_album` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `parent_id` int(11) DEFAULT '0' COMMENT '父ID',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '相册名称',
  `remark` text COMMENT '描述',
  `sort` int(11) DEFAULT '1' COMMENT '排序',
  `status` int(11) DEFAULT '1' COMMENT '状态//radio/2,隐藏,1,显示',
  `update_time` varchar(64) DEFAULT NULL COMMENT '更新时间',
  `update_id` int(11) DEFAULT '0' COMMENT '更新人',
  `create_time` varchar(64) DEFAULT NULL COMMENT '创建时间',
  `create_id` int(11) DEFAULT '0' COMMENT '创建者',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='相册';

-- 正在导出表  cmsdbs.tb_image_album 的数据：~2 rows (大约)
/*!40000 ALTER TABLE `tb_image_album` DISABLE KEYS */;
INSERT INTO `tb_image_album` (`id`, `parent_id`, `name`, `remark`, `sort`, `status`, `update_time`, `update_id`, `create_time`, `create_id`) VALUES
	(1, 0, '风景', NULL, 1, 1, '2016-02-10 00:28:19', 1, '2016-02-10 00:28:19', 1),
	(2, 0, '美女', NULL, 2, 1, '2016-02-10 00:28:43', 1, '2016-02-10 00:28:43', 1);
/*!40000 ALTER TABLE `tb_image_album` ENABLE KEYS */;

-- 导出  表 cmsdbs.tb_image_tags 结构
DROP TABLE IF EXISTS `tb_image_tags`;
CREATE TABLE IF NOT EXISTS `tb_image_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `image_id` int(11) DEFAULT NULL COMMENT '图片ID',
  `tagname` varchar(200) DEFAULT '' COMMENT '标签内容',
  `create_time` varchar(64) DEFAULT NULL COMMENT '创建时间',
  `create_id` int(11) DEFAULT '0' COMMENT '创建者',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 COMMENT='标签';

-- 正在导出表  cmsdbs.tb_image_tags 的数据：~10 rows (大约)
/*!40000 ALTER TABLE `tb_image_tags` DISABLE KEYS */;
INSERT INTO `tb_image_tags` (`id`, `image_id`, `tagname`, `create_time`, `create_id`) VALUES
	(1, NULL, 'a', '2016-02-10 02:09:39', 1),
	(2, NULL, 'b', '2016-02-10 02:09:39', 1),
	(3, NULL, 'b', '2016-02-10 02:09:39', 1),
	(4, NULL, 'a', '2016-02-10 02:09:48', 1),
	(5, NULL, 'c', '2016-02-10 02:09:48', 1),
	(6, NULL, 'a', '2016-02-10 02:10:43', 1),
	(7, NULL, 'b', '2016-02-10 02:10:45', 1),
	(45, 4, '美女', '2021-08-11 17:58:50', 1),
	(46, 4, '图片', '2021-08-11 17:58:50', 1),
	(47, 4, '视频', '2021-08-11 17:58:50', 1);
/*!40000 ALTER TABLE `tb_image_tags` ENABLE KEYS */;

-- 导出  表 cmsdbs.tb_pageview 结构
DROP TABLE IF EXISTS `tb_pageview`;
CREATE TABLE IF NOT EXISTS `tb_pageview` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `ip` varchar(64) NOT NULL COMMENT 'IP地址',
  `userid` int(11) DEFAULT NULL COMMENT '用户ID',
  `create_day` varchar(64) NOT NULL COMMENT '创建时间到天',
  `create_time` varchar(64) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8 COMMENT='访问量统计';

-- 正在导出表  cmsdbs.tb_pageview 的数据：~28 rows (大约)
/*!40000 ALTER TABLE `tb_pageview` DISABLE KEYS */;
INSERT INTO `tb_pageview` (`id`, `ip`, `userid`, `create_day`, `create_time`) VALUES
	(87, '127.0.0.1', 0, '2016-04-04', '2016-04-04 19:53:45'),
	(88, '127.0.0.1', 0, '2016-04-05', '2016-04-05 00:03:09'),
	(89, '127.0.0.1', 0, '2016-04-06', '2016-04-06 00:06:37'),
	(90, '127.0.0.1', 0, '2016-04-07', '2016-04-07 00:09:26'),
	(91, '0:0:0:0:0:0:0:1', 0, '2016-04-13', '2016-04-13 23:26:45'),
	(92, '127.0.0.1', 0, '2016-04-13', '2016-04-13 23:55:23'),
	(93, '0:0:0:0:0:0:0:1', 0, '2016-04-14', '2016-04-14 00:00:30'),
	(94, '0:0:0:0:0:0:0:1', 0, '2016-04-16', '2016-04-16 02:01:06'),
	(95, '127.0.0.1', 0, '2016-04-16', '2016-04-16 02:02:32'),
	(96, '0:0:0:0:0:0:0:1', 0, '2016-04-17', '2016-04-17 05:19:38'),
	(97, '127.0.0.1', 0, '2016-04-17', '2016-04-17 05:20:06'),
	(98, '0:0:0:0:0:0:0:1', 0, '2016-04-18', '2016-04-18 00:05:27'),
	(99, '127.0.0.1', 0, '2016-04-18', '2016-04-18 00:14:24'),
	(100, '127.0.0.1', 0, '2016-04-19', '2016-04-19 00:02:25'),
	(101, '0:0:0:0:0:0:0:1', 0, '2016-04-19', '2016-04-19 21:28:43'),
	(102, '127.0.0.1', 0, '2016-04-20', '2016-04-20 00:00:09'),
	(103, '127.0.0.1', 0, '2016-04-21', '2016-04-21 01:47:03'),
	(104, '0:0:0:0:0:0:0:1', 0, '2016-05-07', '2016-05-07 21:53:05'),
	(105, '127.0.0.1', 0, '2016-05-07', '2016-05-07 22:25:34'),
	(106, '0:0:0:0:0:0:0:1', 0, '2016-05-08', '2016-05-08 00:01:17'),
	(107, '0:0:0:0:0:0:0:1', 0, '2016-05-11', '2016-05-11 23:44:10'),
	(108, '0:0:0:0:0:0:0:1', 0, '2016-05-12', '2016-05-12 00:00:04'),
	(109, '127.0.0.1', 0, '2016-05-12', '2016-05-12 00:06:36'),
	(110, '0:0:0:0:0:0:0:1', 0, '2016-09-21', '2016-09-21 00:21:57'),
	(111, '0:0:0:0:0:0:0:1', 0, '2021-08-11', '2021-08-11 15:46:11'),
	(112, '0:0:0:0:0:0:0:1', 0, '2021-08-12', '2021-08-12 08:47:42'),
	(113, '127.0.0.1', 0, '2021-08-12', '2021-08-12 15:43:40'),
	(114, '0:0:0:0:0:0:0:1', 0, '2021-08-13', '2021-08-13 08:28:06');
/*!40000 ALTER TABLE `tb_pageview` ENABLE KEYS */;

-- 导出  表 cmsdbs.tb_site 结构
DROP TABLE IF EXISTS `tb_site`;
CREATE TABLE IF NOT EXISTS `tb_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(32) NOT NULL COMMENT '名称',
  `template` varchar(32) DEFAULT NULL COMMENT '模板名称',
  `template_mobile` varchar(32) DEFAULT NULL,
  `domain_pc` varchar(64) DEFAULT NULL COMMENT 'pc端域名',
  `domain_mobile` varchar(64) DEFAULT NULL COMMENT '移动端域名',
  `domain_others` varchar(400) DEFAULT NULL COMMENT '其他域名',
  `site_title` varchar(256) DEFAULT NULL COMMENT '标题',
  `site_folder_id` int(11) DEFAULT NULL COMMENT '默认标题ID',
  `site_article_id` int(11) DEFAULT NULL COMMENT '默认文章ID',
  `thumbnail` varchar(256) DEFAULT NULL COMMENT '缩略图',
  `db_url` varchar(200) DEFAULT NULL COMMENT '数据库',
  `db_user` varchar(64) DEFAULT NULL COMMENT '数据库用户',
  `db_pwd` varchar(64) DEFAULT NULL COMMENT '数据库密码',
  `db_driver` varchar(64) DEFAULT NULL COMMENT '数据库驱动',
  `sort` int(11) DEFAULT '10' COMMENT '序号',
  `status` int(2) DEFAULT '1' COMMENT '状态//radio/2,禁用,1,启用',
  `site_defalut` int(2) DEFAULT '2' COMMENT '默认站点：1,是,2,否',
  `remark` varchar(1000) DEFAULT NULL COMMENT '备注',
  `update_time` varchar(64) DEFAULT NULL COMMENT '更新时间',
  `update_id` int(11) DEFAULT '0' COMMENT '更新人',
  `create_time` varchar(64) DEFAULT NULL COMMENT '创建时间',
  `create_id` int(11) DEFAULT '0' COMMENT '创建者',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='站点';

-- 正在导出表  cmsdbs.tb_site 的数据：~7 rows (大约)
/*!40000 ALTER TABLE `tb_site` DISABLE KEYS */;
INSERT INTO `tb_site` (`id`, `name`, `template`, `template_mobile`, `domain_pc`, `domain_mobile`, `domain_others`, `site_title`, `site_folder_id`, `site_article_id`, `thumbnail`, `db_url`, `db_user`, `db_pwd`, `db_driver`, `sort`, `status`, `site_defalut`, `remark`, `update_time`, `update_id`, `create_time`, `create_id`) VALUES
	(1, '视频管理', 'video', 'video', 'video.demo.com', 'video.demo.com', NULL, 'FLY的狐狸', NULL, NULL, 'jflyfox\\website\\site_thumbnail\\20170101_002223_487110.png', NULL, NULL, NULL, NULL, 12, 1, 2, NULL, '2016-04-04 19:57:22', 1, '2016-04-04 19:57:22', 1),
	(2, '门头沟', 'mtg', 'mtg', 'mtg.demo.com', 'mtg.demo.com', NULL, '门头沟信息网', 1, 1, 'jflyfox\\website\\site_thumbnail\\20170101_002130_323416.png', NULL, NULL, NULL, NULL, 8, 1, 1, NULL, '2016-04-07 01:10:22', 1, '2016-04-07 01:10:22', 1),
	(3, '网站', 'website', 'website', 'website.demo.com', 'website.demo.com', NULL, 'FLY的狐狸', 230, 2409, 'jflyfox\\website\\site_thumbnail\\20170101_002147_613266.gif', 'jdbc:mysql://127.0.0.1:3306/jfinal_cms_website?characterEncoding=UTF-8&zeroDateTimeBehavior=convertToNull', 'root', '123456', 'com.mysql.jdbc.Driver', 10, 1, 2, NULL, '2016-03-21 23:58:54', 1, '2016-03-21 23:58:54', 1),
	(4, '照片管理', 'photo', 'photo', 'photo.demo.com', 'photo.demo.com', NULL, 'FLY的狐狸', NULL, NULL, 'jflyfox\\website\\site_thumbnail\\20170101_002209_956776.png', 'jdbc:mysql://127.0.0.1:3306/jfinal_cms_photo?characterEncoding=UTF-8&zeroDateTimeBehavior=convertToNull', 'root', '123456', 'com.mysql.jdbc.Driver', 11, 1, 2, NULL, '2016-03-22 22:25:21', 1, '2016-03-22 22:25:21', 1),
	(5, '博客', 'blog', 'blog', 'blog.demo.com', 'blog.demo.com', NULL, 'FLY的狐狸', 241, 3001, 'jflyfox\\website\\site_thumbnail\\20170101_002344_503232.png', 'jdbc:mysql://127.0.0.1:3306/jflyfox_mtg?characterEncoding=UTF-8&zeroDateTimeBehavior=convertToNull', 'root', '123456', 'com.mysql.jdbc.Driver', 15, 1, 2, NULL, '2016-03-23 22:07:47', 1, '2016-03-23 22:07:47', 1),
	(8, '项目', 'project', 'project', 'project.demo.com', 'project.demo.com', NULL, 'FLY的狐狸', 253, NULL, 'jflyfox\\website\\site_thumbnail\\20170101_002358_867823.png', NULL, NULL, NULL, NULL, 20, 1, 2, NULL, '2016-06-17 16:47:44', 1, '2016-06-17 16:47:44', 1),
	(9, '论坛', 'bbs', 'bbs', '1', '2', NULL, '论坛', NULL, NULL, 'jflyfox\\project\\site_thumbnail\\20170113_162827_889442.png', NULL, NULL, NULL, NULL, 3, 1, 2, NULL, '2017-01-13 16:28:03', 1, '2017-01-13 16:28:03', 1);
/*!40000 ALTER TABLE `tb_site` ENABLE KEYS */;

-- 导出  表 cmsdbs.tb_tags 结构
DROP TABLE IF EXISTS `tb_tags`;
CREATE TABLE IF NOT EXISTS `tb_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `article_id` int(11) DEFAULT NULL COMMENT '文章ID',
  `tagname` varchar(200) DEFAULT '' COMMENT '标签内容',
  `create_time` varchar(64) DEFAULT NULL COMMENT '创建时间',
  `create_id` int(11) DEFAULT '0' COMMENT '创建者',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4748 DEFAULT CHARSET=utf8 COMMENT='标签';

-- 正在导出表  cmsdbs.tb_tags 的数据：~365 rows (大约)
/*!40000 ALTER TABLE `tb_tags` DISABLE KEYS */;
INSERT INTO `tb_tags` (`id`, `article_id`, `tagname`, `create_time`, `create_id`) VALUES
	(6, 343, '学校', '2015-05-24 23:26:54', 1),
	(7, 343, '大峪中学', '2015-05-24 23:26:54', 1),
	(8, 350, '学校', '2015-05-25 14:05:41', 1),
	(9, 350, '坡头中学', '2015-05-25 14:05:41', 1),
	(10, 349, '学校', '2015-05-25 14:05:51', 1),
	(11, 349, '三家店铁路中学', '2015-05-25 14:05:51', 1),
	(12, 348, '学校', '2015-05-25 14:06:01', 1),
	(13, 348, '育新中学', '2015-05-25 14:06:02', 1),
	(14, 347, '学校', '2015-05-25 14:06:13', 1),
	(15, 347, '新桥路中学', '2015-05-25 14:06:13', 1),
	(16, 346, '学校', '2015-05-25 14:06:24', 1),
	(17, 346, '大峪中学分校', '2015-05-25 14:06:24', 1),
	(18, 345, '学校', '2015-05-25 14:06:42', 1),
	(19, 345, '首都师范大学附属中学', '2015-05-25 14:06:42', 1),
	(20, 345, '永定中学', '2015-05-25 14:06:42', 1),
	(21, 344, '学校', '2015-05-25 14:06:53', 1),
	(22, 344, '育园中学', '2015-05-25 14:06:53', 1),
	(23, 375, '公园', '2015-05-26 13:19:08', 1),
	(24, 375, '永定河文化广场', '2015-05-26 13:19:08', 1),
	(25, 374, '永定河森林公园', '2015-05-26 13:19:17', 1),
	(26, 374, '公园', '2015-05-26 13:19:17', 1),
	(27, 373, '永定河森林公园', '2015-05-26 13:19:25', 1),
	(28, 373, '公园', '2015-05-26 13:19:25', 1),
	(29, 372, '新桥公园', '2015-05-26 13:20:12', 1),
	(30, 372, '公园', '2015-05-26 13:20:12', 1),
	(31, 371, '西苑公园', '2015-05-26 13:22:48', 1),
	(32, 371, '公园', '2015-05-26 13:22:48', 1),
	(33, 370, '石门营公园', '2015-05-26 13:25:00', 1),
	(34, 370, '公园', '2015-05-26 13:25:00', 1),
	(35, 369, '石龙公园', '2015-05-26 13:37:24', 1),
	(36, 369, '公园', '2015-05-26 13:37:24', 1),
	(37, 368, '葡山公园', '2015-05-26 13:39:14', 1),
	(38, 368, '公园', '2015-05-26 13:39:14', 1),
	(39, 367, '葡东公园', '2015-05-26 13:40:26', 1),
	(40, 367, '公园', '2015-05-26 13:40:26', 1),
	(41, 366, '门头沟新城滨河森林公园', '2015-05-26 13:42:29', 1),
	(42, 366, '公园', '2015-05-26 13:42:29', 1),
	(43, 365, '门矿遗址公园', '2015-05-26 13:43:30', 1),
	(44, 365, '公园', '2015-05-26 13:43:30', 1),
	(45, 364, '立思辰公园', '2015-05-26 13:44:43', 1),
	(46, 364, '公园', '2015-05-26 13:44:43', 1),
	(47, 363, '京门铁路遗址公园', '2015-05-26 13:45:35', 1),
	(48, 363, '公园', '2015-05-26 13:45:35', 1),
	(49, 362, '京浪岛文化体育公园', '2015-05-26 13:46:57', 1),
	(50, 362, '公园', '2015-05-26 13:46:57', 1),
	(51, 361, '黑山公园', '2015-05-26 13:48:00', 1),
	(52, 361, '公园', '2015-05-26 13:48:00', 1),
	(53, 360, '光荣园', '2015-05-26 13:49:15', 1),
	(54, 360, '公园', '2015-05-26 13:49:16', 1),
	(57, 358, '东辛房公园', '2015-05-26 13:50:45', 1),
	(58, 358, '公园', '2015-05-26 13:50:45', 1),
	(59, 357, '晨曦公园', '2015-05-26 13:51:47', 1),
	(60, 357, '公园', '2015-05-26 13:51:47', 1),
	(61, 356, '滨河公园', '2015-05-26 13:52:42', 1),
	(62, 356, '公园', '2015-05-26 13:52:42', 1),
	(63, 324, '新闻', '2015-05-26 14:05:51', 1),
	(64, 323, '新闻', '2015-05-26 14:08:41', 1),
	(65, 322, '新闻', '2015-05-26 14:10:33', 1),
	(66, 321, '新闻', '2015-05-26 14:12:12', 1),
	(67, 320, '新闻', '2015-05-26 14:13:58', 1),
	(68, 319, '新闻', '2015-05-26 14:37:57', 1),
	(69, 318, '新闻', '2015-05-26 14:40:09', 1),
	(70, 111, '新闻', '2015-05-26 14:43:28', 1),
	(71, 111, '定都阁', '2015-05-26 14:43:28', 1),
	(72, 105, '新闻', '2015-05-26 14:44:49', 1),
	(77, 335, '福华肥牛', '2015-05-26 14:52:49', 1),
	(78, 335, '饭店', '2015-05-26 14:52:49', 1),
	(79, 335, '美食', '2015-05-26 14:52:49', 1),
	(80, 334, '大鸭梨', '2015-05-26 14:52:54', 1),
	(81, 334, '饭店', '2015-05-26 14:52:54', 1),
	(82, 334, '美食', '2015-05-26 14:52:54', 1),
	(83, 342, '美食', '2015-05-26 14:53:01', 1),
	(84, 342, '老家肉饼', '2015-05-26 14:53:01', 1),
	(85, 342, '饭店', '2015-05-26 14:53:01', 1),
	(88, 341, '顶风针', '2015-05-26 14:55:38', 1),
	(89, 341, '蛋糕店', '2015-05-26 14:55:38', 1),
	(96, 340, '饭店', '2015-05-26 16:01:38', 1),
	(97, 340, '美食', '2015-05-26 16:01:38', 1),
	(98, 340, '新新包子铺', '2015-05-26 16:01:38', 1),
	(99, 339, '酒店', '2015-05-26 16:03:40', 1),
	(100, 339, '今天假日酒店', '2015-05-26 16:03:40', 1),
	(101, 339, '饭店', '2015-05-26 16:03:40', 1),
	(102, 338, '宾馆', '2015-05-26 16:09:18', 1),
	(103, 338, '龙泉宾馆', '2015-05-26 16:09:18', 1),
	(104, 336, '晨光饭店', '2015-05-26 16:09:58', 1),
	(105, 336, '饭店', '2015-05-26 16:09:58', 1),
	(108, 337, '潭柘嘉福饭店', '2015-05-26 16:12:13', 1),
	(109, 337, '饭店', '2015-05-26 16:12:13', 1),
	(126, 329, '百花山', '2015-05-26 16:31:32', 1),
	(127, 329, '旅游', '2015-05-26 16:31:32', 1),
	(128, 330, '爨底下', '2015-05-26 16:32:10', 1),
	(129, 330, '旅游', '2015-05-26 16:32:10', 1),
	(130, 331, '灵山', '2015-05-26 16:34:18', 1),
	(131, 331, '旅游', '2015-05-26 16:34:18', 1),
	(132, 332, '旅游', '2015-05-26 16:34:54', 1),
	(133, 332, '龙门涧', '2015-05-26 16:34:54', 1),
	(134, 332, '旅游', '2015-05-26 16:34:54', 1),
	(137, 333, '妙峰山', '2015-05-26 16:35:46', 1),
	(138, 333, '旅游', '2015-05-26 16:35:46', 1),
	(139, 328, '双龙峡', '2015-05-26 16:44:36', 1),
	(140, 328, '旅游', '2015-05-26 16:44:36', 1),
	(141, 391, '2. 博文内容尽量控制在1200个文字内', '2015-06-20 16:59:29', 2),
	(142, 391, '内容合法健康', '2015-06-20 16:59:29', 2),
	(143, 391, '否则可能会被删除。2. 博文内容尽量控制在1200个文字内', '2015-06-20 16:59:29', 2),
	(144, 391, '内容合法健康', '2015-06-20 16:59:29', 2),
	(145, 391, '否则可能会被删除。2. 博文内容尽量控制在1200个文字内', '2015-06-20 16:59:29', 2),
	(146, 392, '123', '2015-06-20 18:31:13', 2),
	(147, 383, '123', '2015-06-20 18:33:14', 2),
	(151, 396, '测44', '2015-06-20 21:48:59', 2),
	(152, 397, '测试', '2015-06-20 21:52:02', 2),
	(153, 112, 'S1线', '2015-08-16 19:24:15', 1),
	(155, 359, '福鼎公园', '2015-09-21 22:37:54', 1),
	(156, 359, '公园', '2015-09-21 22:37:54', 1),
	(3021, 3236, 'java', '2015-05-19 15:30:43', 1),
	(3022, 3235, 'java', '2015-05-19 15:30:53', 1),
	(3023, 3235, 'java', '2015-05-19 15:30:53', 1),
	(3024, 3231, 'java', '2015-05-19 15:31:31', 1),
	(3025, 3227, 'java', '2015-05-19 15:31:36', 1),
	(3026, 3224, 'java', '2015-05-19 15:31:44', 1),
	(3027, 3223, 'java', '2015-05-19 15:31:48', 1),
	(3028, 3221, 'java', '2015-05-19 15:31:55', 1),
	(3032, 3216, '数据库', '2015-05-19 15:32:20', 1),
	(3033, 3217, '数据库', '2015-05-19 15:33:03', 1),
	(3034, 3218, '数据库', '2015-05-19 15:33:07', 1),
	(3035, 3219, '数据库', '2015-05-19 15:33:12', 1),
	(3037, 3248, 'linux', '2015-05-19 15:33:39', 1),
	(3038, 3252, 'linux', '2015-05-19 15:33:51', 1),
	(3039, 3252, '数据库', '2015-05-19 15:33:51', 1),
	(3041, 3254, 'linux', '2015-05-19 15:33:58', 1),
	(3060, 3255, 'java', '2015-05-19 16:17:35', 1),
	(3068, 3257, 'windows', '2015-05-28 12:58:10', 1),
	(3070, 3253, 'linux', '2015-06-01 13:03:33', 1),
	(3079, 3258, 'Jquery', '2015-06-01 13:24:02', 1),
	(3085, 3259, 'jquery', '2015-06-01 13:29:19', 1),
	(3107, 3001, '生活', '2016-01-14 23:53:02', 1),
	(3109, 3243, '数据库', '2016-01-22 17:30:37', 1),
	(3110, 3265, '开发', '2016-02-19 11:49:55', 1),
	(3116, 3267, '数据库', '2016-02-19 12:57:14', 1),
	(3120, 3268, 'chrome', '2016-02-25 16:46:20', 1),
	(3123, 3270, '开发', '2016-03-04 09:35:28', 1),
	(3127, 3271, '开发', '2016-03-06 15:16:25', 1),
	(3156, 3269, '魔术', '2016-04-14 14:47:53', 1),
	(3160, 3282, 'javascript', '2016-04-18 02:15:12', 1),
	(3162, 3283, 'java', '2016-04-18 22:32:29', 1),
	(3164, 3284, 'javascript', '2016-04-19 14:19:26', 1),
	(3165, 3285, '数据库', '2016-04-19 14:21:52', 1),
	(3166, 3285, '数据库', '2016-04-19 14:21:52', 1),
	(3167, 3286, '数据库', '2016-04-19 14:25:08', 1),
	(3168, 3286, '数据库', '2016-04-19 14:25:08', 1),
	(3170, 3287, 'javascript', '2016-04-20 02:35:53', 1),
	(3171, 3288, 'jquery', '2016-04-20 23:00:17', 1),
	(3172, 3288, 'javascript', '2016-04-20 23:00:17', 1),
	(4003, 4010, '数据库', '2013-09-10 09:13:00', 1),
	(4004, 4010, '数据库', '2013-09-10 09:13:00', 1),
	(4006, 4011, 'java', '2013-05-21 12:40:00', 1),
	(4007, 4012, '数据库', '2013-04-23 09:01:00', 1),
	(4008, 4014, 'java', '2013-01-08 14:58:00', 1),
	(4011, 4014, 'javascript', '2013-01-08 14:58:00', 1),
	(4013, 4016, '数据库', '2012-11-29 23:37:00', 1),
	(4016, 4018, 'jquery', '2012-09-25 10:05:00', 1),
	(4020, 4019, 'windows', '2012-09-18 15:04:00', 1),
	(4022, 4020, 'java', '2012-09-18 11:39:00', 1),
	(4025, 4020, 'editplus', '2012-09-18 11:39:00', 1),
	(4026, 4021, 'java', '2012-09-09 22:31:00', 1),
	(4030, 4023, '数据库', '2012-09-05 09:23:00', 1),
	(4035, 4024, '数据库', '2012-09-05 09:21:00', 1),
	(4040, 4025, 'java', '2012-09-02 22:46:00', 1),
	(4044, 4026, '数据库', '2012-08-04 19:56:00', 1),
	(4047, 4027, 'javascript', '2012-07-12 01:12:00', 1),
	(4049, 4028, '数据库', '2012-06-16 16:06:00', 1),
	(4051, 4029, '数据库', '2012-06-16 16:05:00', 1),
	(4056, 4030, 'java', '2012-06-13 00:12:00', 1),
	(4058, 4032, 'java', '2012-06-12 22:57:00', 1),
	(4061, 4033, 'java', '2012-06-12 22:56:00', 1),
	(4065, 4034, '数据库', '2012-05-30 11:56:00', 1),
	(4067, 4035, 'java', '2012-05-13 23:01:00', 1),
	(4070, 4036, 'java', '2012-05-13 02:19:00', 1),
	(4072, 4037, 'java', '2012-04-11 13:24:00', 1),
	(4076, 4038, 'java', '2012-04-05 23:03:00', 1),
	(4078, 4039, 'java', '2012-04-05 22:38:00', 1),
	(4081, 4040, 'java', '2012-04-04 21:10:00', 1),
	(4083, 4041, 'java', '2012-03-12 23:14:00', 1),
	(4086, 4042, 'java', '2012-02-27 15:49:00', 1),
	(4091, 4043, 'java', '2012-02-23 20:50:00', 1),
	(4095, 4044, 'jquery', '2012-02-21 17:45:00', 1),
	(4100, 4045, 'jquery', '2012-02-19 01:59:00', 1),
	(4105, 4046, 'java', '2012-02-19 01:52:00', 1),
	(4108, 4047, 'java', '2012-02-17 00:00:00', 1),
	(4111, 4048, '数据库', '2012-02-16 08:19:00', 1),
	(4116, 4049, 'jquery', '2012-02-15 09:54:00', 1),
	(4121, 4050, 'java', '2012-02-15 09:40:00', 1),
	(4124, 4051, 'java', '2012-02-11 20:22:00', 1),
	(4128, 4052, 'javascript', '2012-02-09 13:02:00', 1),
	(4133, 4053, '数据库', '2012-02-09 01:11:00', 1),
	(4135, 4054, 'java', '2012-02-08 15:36:00', 1),
	(4140, 4055, 'javascript', '2012-02-07 17:48:00', 1),
	(4144, 4056, 'java', '2012-01-20 16:01:00', 1),
	(4147, 4057, 'java', '2012-01-20 11:59:00', 1),
	(4150, 4058, 'java', '2012-01-19 16:51:00', 1),
	(4154, 4059, 'html', '2012-01-19 13:05:00', 1),
	(4158, 4060, 'html', '2012-01-19 08:17:00', 1),
	(4162, 4061, 'java', '2012-01-13 10:19:00', 1),
	(4166, 4062, 'java', '2012-01-12 12:44:00', 1),
	(4173, 4063, 'java', '2012-01-12 11:07:00', 1),
	(4174, 4064, 'java', '2012-01-11 12:06:00', 1),
	(4178, 4065, 'java', '2012-01-11 11:37:00', 1),
	(4182, 4066, 'html', '2012-01-11 10:10:00', 1),
	(4184, 4067, 'java', '2012-01-11 10:00:00', 1),
	(4189, 4068, 'java', '2012-01-09 11:43:00', 1),
	(4191, 4068, 'html', '2012-01-09 11:43:00', 1),
	(4193, 4069, 'java', '2011-12-30 15:43:00', 1),
	(4196, 4070, 'java', '2011-12-19 10:36:00', 1),
	(4198, 4071, 'java', '2011-12-15 15:14:00', 1),
	(4202, 4072, '影视', '2011-12-15 13:17:00', 1),
	(4205, 4073, 'oralce', '2011-12-14 11:40:00', 1),
	(4207, 4074, '数据库', '2011-12-14 11:38:00', 1),
	(4210, 4075, '数据库', '2011-12-14 11:36:00', 1),
	(4213, 4076, '数据库', '2011-12-14 11:17:00', 1),
	(4218, 4077, 'java', '2011-12-09 11:26:00', 1),
	(4221, 4078, 'java', '2011-12-09 11:19:00', 1),
	(4224, 4079, 'windows', '2011-12-05 10:58:00', 1),
	(4228, 4080, 'windows', '2011-12-05 09:52:00', 1),
	(4229, 4081, 'java', '2011-12-02 15:42:00', 1),
	(4233, 4082, 'c', '2011-12-02 10:03:00', 1),
	(4239, 4084, 'java', '2011-11-17 11:14:00', 1),
	(4242, 4085, '生活', '2011-11-10 09:45:00', 1),
	(4245, 4086, '服务器', '2011-11-08 13:46:00', 1),
	(4249, 4087, '服务器', '2011-11-08 11:07:00', 1),
	(4252, 4088, 'expect', '2011-11-08 10:34:00', 1),
	(4256, 4089, 'expect', '2011-11-08 10:29:00', 1),
	(4261, 4090, 'java', '2011-10-27 10:04:00', 1),
	(4264, 4091, 'java', '2011-10-15 22:15:00', 1),
	(4267, 4092, 'java', '2011-10-15 22:01:00', 1),
	(4271, 4093, 'java', '2011-10-12 11:30:00', 1),
	(4274, 4094, 'java', '2011-10-12 10:03:00', 1),
	(4277, 4095, 'java', '2011-10-12 09:53:00', 1),
	(4278, 4096, 'java', '2011-10-08 13:22:00', 1),
	(4282, 4097, 'java', '2011-10-08 13:09:00', 1),
	(4286, 4098, 'java', '2011-10-08 12:22:00', 1),
	(4290, 4099, 'java', '2011-09-08 11:13:00', 1),
	(4295, 4100, 'windows', '2011-08-25 15:15:00', 1),
	(4299, 4101, 'autoit', '2011-08-24 17:28:00', 1),
	(4302, 4102, 'autoit', '2011-08-23 17:22:00', 1),
	(4304, 4103, 'autoit', '2011-08-23 17:08:00', 1),
	(4307, 4104, 'autoit', '2011-08-23 15:09:00', 1),
	(4311, 4105, 'python', '2011-08-23 11:17:00', 1),
	(4315, 4106, 'python', '2011-08-23 11:15:00', 1),
	(4319, 4107, 'python', '2011-08-23 11:13:00', 1),
	(4323, 4108, 'python', '2011-08-23 10:59:00', 1),
	(4328, 4109, 'python', '2011-08-23 10:33:00', 1),
	(4333, 4110, 'python', '2011-08-23 10:27:00', 1),
	(4337, 4111, 'python', '2011-08-23 09:14:00', 1),
	(4343, 4112, 'java', '2011-08-18 10:20:00', 1),
	(4345, 4113, 'java', '2011-08-18 09:58:00', 1),
	(4348, 4114, 'photoshop', '2011-08-18 09:32:00', 1),
	(4350, 4115, 'javascript', '2011-08-16 17:00:00', 1),
	(4353, 4116, 'javascript', '2011-08-16 13:38:00', 1),
	(4357, 4117, 'java', '2011-08-15 10:11:00', 1),
	(4569, 3109, 'java', '2016-04-21 22:20:29', 1),
	(4570, 3109, '项目', '2016-04-21 22:20:29', 1),
	(4571, 3109, 'jflyfox', '2016-04-21 22:20:29', 1),
	(4572, 3107, 'JavaFX', '2016-04-21 22:20:36', 1),
	(4573, 3107, 'java', '2016-04-21 22:20:36', 1),
	(4574, 3107, '项目', '2016-04-21 22:20:36', 1),
	(4575, 3107, 'jflyfox', '2016-04-21 22:20:36', 1),
	(4576, 3103, 'java', '2016-04-21 22:20:42', 1),
	(4577, 3103, '项目', '2016-04-21 22:20:42', 1),
	(4578, 3103, 'jflyfox', '2016-04-21 22:20:42', 1),
	(4579, 3116, 'java', '2016-04-21 22:20:46', 1),
	(4580, 3116, '项目', '2016-04-21 22:20:46', 1),
	(4581, 3116, 'jflyfox', '2016-04-21 22:20:46', 1),
	(4582, 3117, 'java', '2016-04-21 22:20:50', 1),
	(4583, 3117, '项目', '2016-04-21 22:20:50', 1),
	(4584, 3117, 'jflyfox', '2016-04-21 22:20:50', 1),
	(4585, 3108, 'JavaFX', '2016-04-21 22:20:55', 1),
	(4586, 3108, 'java', '2016-04-21 22:20:55', 1),
	(4587, 3108, '项目', '2016-04-21 22:20:55', 1),
	(4588, 3108, 'jflyfox', '2016-04-21 22:20:55', 1),
	(4589, 3115, 'JavaFX', '2016-04-21 22:21:00', 1),
	(4590, 3115, 'java', '2016-04-21 22:21:00', 1),
	(4591, 3115, '项目', '2016-04-21 22:21:00', 1),
	(4592, 3115, 'jflyfox', '2016-04-21 22:21:00', 1),
	(4593, 3118, 'java', '2016-04-21 22:21:06', 1),
	(4594, 3118, '项目', '2016-04-21 22:21:06', 1),
	(4595, 3118, 'jflyfox', '2016-04-21 22:21:06', 1),
	(4596, 3119, 'java', '2016-04-21 22:21:12', 1),
	(4597, 3119, '项目', '2016-04-21 22:21:12', 1),
	(4598, 3119, 'jflyfox', '2016-04-21 22:21:12', 1),
	(4599, 3249, 'java', '2016-04-21 22:21:20', 1),
	(4600, 3249, '项目', '2016-04-21 22:21:20', 1),
	(4601, 3249, 'jflyfox', '2016-04-21 22:21:20', 1),
	(4602, 3249, '微信', '2016-04-21 22:21:20', 1),
	(4603, 3120, 'JavaFX', '2016-04-21 22:21:28', 1),
	(4604, 3120, 'java', '2016-04-21 22:21:28', 1),
	(4605, 3120, '项目', '2016-04-21 22:21:28', 1),
	(4606, 3120, 'jflyfox', '2016-04-21 22:21:28', 1),
	(4607, 3228, '英语', '2016-04-21 22:21:40', 1),
	(4608, 3228, 'english', '2016-04-21 22:21:40', 1),
	(4611, 3206, '英语', '2016-04-21 22:21:47', 1),
	(4612, 3206, 'english', '2016-04-21 22:21:47', 1),
	(4613, 3112, '英语', '2016-04-21 22:21:50', 1),
	(4614, 3112, 'english', '2016-04-21 22:21:50', 1),
	(4615, 3111, '英语', '2016-04-21 22:21:53', 1),
	(4616, 3111, 'english', '2016-04-21 22:21:53', 1),
	(4617, 3105, '英语', '2016-04-21 22:21:56', 1),
	(4618, 3105, 'english', '2016-04-21 22:21:56', 1),
	(4619, 3266, '生活', '2016-04-21 22:22:08', 1),
	(4620, 3263, '生活', '2016-04-21 22:22:36', 1),
	(4621, 3263, '美食', '2016-04-21 22:22:36', 1),
	(4622, 3262, '生活', '2016-04-21 22:22:41', 1),
	(4623, 3262, '美食', '2016-04-21 22:22:41', 1),
	(4624, 3261, '生活', '2016-04-21 22:22:45', 1),
	(4625, 3261, '美食', '2016-04-21 22:22:45', 1),
	(4626, 3260, '生活', '2016-04-21 22:22:54', 1),
	(4627, 3256, '生活', '2016-04-21 22:23:03', 1),
	(4628, 3245, '孕婴', '2016-04-21 22:23:26', 1),
	(4629, 3244, '影视', '2016-04-21 22:23:49', 1),
	(4634, 3242, '生活', '2016-04-21 22:24:14', 1),
	(4635, 3242, '美食', '2016-04-21 22:24:14', 1),
	(4636, 3242, '孕婴', '2016-04-21 22:24:14', 1),
	(4637, 3241, '生活', '2016-04-21 22:24:19', 1),
	(4638, 3241, '美食', '2016-04-21 22:24:19', 1),
	(4639, 3241, '孕婴', '2016-04-21 22:24:19', 1),
	(4640, 3240, '新闻', '2016-04-21 22:24:27', 1),
	(4641, 3238, '项目', '2016-04-21 22:24:38', 1),
	(4642, 3237, '音乐', '2016-04-21 22:24:53', 1),
	(4644, 3233, '旅游', '2016-04-21 22:25:27', 1),
	(4645, 3232, '生活', '2016-04-21 22:25:36', 1),
	(4646, 3230, '影视', '2016-04-21 22:25:44', 1),
	(4647, 3229, '生活', '2016-04-21 22:25:51', 1),
	(4648, 3212, '孕婴', '2016-04-21 22:25:58', 1),
	(4649, 3220, '生活', '2016-04-21 22:26:04', 1),
	(4650, 3208, '生活', '2016-04-21 22:26:09', 1),
	(4651, 3207, '工作', '2016-04-21 22:26:16', 1),
	(4652, 3203, '开发', '2016-04-21 22:26:36', 1),
	(4653, 3114, '开发', '2016-04-21 22:26:44', 1),
	(4654, 3113, '音乐', '2016-04-21 22:26:50', 1),
	(4655, 4009, '生活', '2016-04-21 22:27:50', 1),
	(4658, 3209, '三种人', '2016-04-23 10:01:35', 1),
	(4660, 3272, 'flume', '2016-04-23 15:57:48', 1),
	(4662, 3273, 'flume', '2016-04-23 16:44:47', 1),
	(4664, 3275, 'flume', '2016-04-23 16:52:55', 1),
	(4687, 3213, '英语', '2016-05-05 22:22:04', 1),
	(4688, 3213, 'english', '2016-05-05 22:22:04', 1),
	(4718, 3239, '影视', '2016-06-10 00:01:52', 1),
	(4721, 3234, 'java', '2016-06-12 00:05:32', 1),
	(4725, 4013, 'java', '2016-06-13 10:12:47', 1),
	(4726, 4013, 'tomcat', '2016-06-13 10:12:47', 1),
	(4727, 4017, 'java', '2016-06-13 10:12:53', 1),
	(4728, 4017, 'tomcat', '2016-06-13 10:12:53', 1),
	(4729, 4083, 'html', '2016-06-13 10:13:00', 1),
	(4730, 4083, 'java', '2016-06-13 10:13:00', 1),
	(4731, 4083, 'tomcat', '2016-06-13 10:13:00', 1),
	(4732, 4244, 'jfinal cms', '2017-01-21 23:36:31', 1),
	(4733, 4244, 'jfinal', '2017-01-21 23:36:32', 1),
	(4734, 4244, 'beetl', '2017-01-21 23:36:32', 1),
	(4735, 4245, 'jfinal', '2017-01-21 23:38:50', 1),
	(4736, 4246, 'beetl', '2017-01-21 23:39:36', 1),
	(4739, 4247, 'mysql', '2017-01-21 23:43:22', 1),
	(4740, 4247, '数据库', '2017-01-21 23:43:22', 1),
	(4741, 4248, '博客', '2017-01-22 00:01:13', 1),
	(4742, 4249, '资讯', '2017-01-22 00:02:47', 1),
	(4743, 4250, '论坛', '2017-01-22 00:04:44', 1),
	(4744, 4251, '网站', '2017-01-22 00:06:13', 1),
	(4747, 2412, '皎月女神', '2021-08-12 15:43:34', 1);
/*!40000 ALTER TABLE `tb_tags` ENABLE KEYS */;

-- 导出  表 cmsdbs.tb_video 结构
DROP TABLE IF EXISTS `tb_video`;
CREATE TABLE IF NOT EXISTS `tb_video` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `album_id` int(11) DEFAULT '1' COMMENT '专辑ID',
  `album_name` varchar(200) DEFAULT '' COMMENT '专辑名称',
  `name` varchar(200) DEFAULT '' COMMENT '视频名称',
  `video_url` varchar(256) DEFAULT NULL COMMENT '点播视频路径',
  `video_net_url` varchar(256) DEFAULT NULL COMMENT '网络视频路径',
  `thumbnail` varchar(256) DEFAULT '' COMMENT '缩略图',
  `ext` varchar(20) DEFAULT '' COMMENT '扩展名',
  `resolution` varchar(20) DEFAULT '' COMMENT '分辨率',
  `status` int(11) DEFAULT '1' COMMENT '状态//ra dio/2,隐藏,1,显示',
  `is_comment` int(11) DEFAULT '1' COMMENT '是否评论//radio/2,否,1,是',
  `is_recommend` int(11) DEFAULT '2' COMMENT '是否推荐：2 否 1 是',
  `sort` int(11) DEFAULT '1' COMMENT '排序',
  `remark` varchar(400) DEFAULT NULL COMMENT '备注',
  `publish_time` varchar(64) DEFAULT NULL COMMENT '发布时间',
  `publish_user` varchar(64) DEFAULT '1' COMMENT '发布者',
  `update_time` varchar(64) DEFAULT NULL COMMENT '更新时间',
  `update_id` int(11) DEFAULT '0' COMMENT '更新者',
  `create_time` varchar(64) DEFAULT NULL COMMENT '创建时间',
  `create_id` int(11) DEFAULT '0' COMMENT '创建者',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='视频';

-- 正在导出表  cmsdbs.tb_video 的数据：~2 rows (大约)
/*!40000 ALTER TABLE `tb_video` DISABLE KEYS */;
INSERT INTO `tb_video` (`id`, `album_id`, `album_name`, `name`, `video_url`, `video_net_url`, `thumbnail`, `ext`, `resolution`, `status`, `is_comment`, `is_recommend`, `sort`, `remark`, `publish_time`, `publish_user`, `update_time`, `update_id`, `create_time`, `create_id`) VALUES
	(6, 5, '娱乐', '娱乐5', 'jflyfox/video/video/20210812_183243_840724.mp4', NULL, 'http://icon.mobanwang.com/UploadFiles_8971/201408/2014082914282646.png', 'mp4', '', 1, 1, 2, 9, NULL, '2016-02-19', '系统管理员', '2016-02-19 17:32:50', 1, '2016-02-19 17:32:50', 1),
	(10, 6, '新闻', '新闻1', 'jflyfox/video/video/20210812_165838_467370.flv', ' http://mov.bn.netease.com/open-movie/nos/mp4/2014/06/24/S9UJAG3QE_sd.mp4', 'http://icon.mobanwang.com/UploadFiles_8971/200806/20080610183331715.png', 'mp4', '', 1, 1, 2, 10, NULL, '2016-02-20', '系统管理员', '2016-02-20 09:28:19', 1, '2016-02-20 09:28:19', 1);
/*!40000 ALTER TABLE `tb_video` ENABLE KEYS */;

-- 导出  表 cmsdbs.tb_video_album 结构
DROP TABLE IF EXISTS `tb_video_album`;
CREATE TABLE IF NOT EXISTS `tb_video_album` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `parent_id` int(11) DEFAULT '0' COMMENT '父ID',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '专辑名称',
  `remark` text COMMENT '描述',
  `sort` int(11) DEFAULT '1' COMMENT '排序',
  `status` int(11) DEFAULT '1' COMMENT '状态//radio/2,隐藏,1,显示',
  `update_time` varchar(64) DEFAULT NULL COMMENT '更新时间',
  `update_id` int(11) DEFAULT '0' COMMENT '更新人',
  `create_time` varchar(64) DEFAULT NULL COMMENT '创建时间',
  `create_id` int(11) DEFAULT '0' COMMENT '创建者',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='专辑';

-- 正在导出表  cmsdbs.tb_video_album 的数据：~2 rows (大约)
/*!40000 ALTER TABLE `tb_video_album` DISABLE KEYS */;
INSERT INTO `tb_video_album` (`id`, `parent_id`, `name`, `remark`, `sort`, `status`, `update_time`, `update_id`, `create_time`, `create_id`) VALUES
	(5, 0, '娱乐', NULL, 10, 1, '2016-02-16 16:58:22', 1, '2016-02-16 16:58:22', 1),
	(6, 0, '新闻', NULL, 10, 1, '2016-02-16 16:58:26', 1, '2016-02-16 16:58:26', 1);
/*!40000 ALTER TABLE `tb_video_album` ENABLE KEYS */;

-- 导出  表 cmsdbs.tb_video_tags 结构
DROP TABLE IF EXISTS `tb_video_tags`;
CREATE TABLE IF NOT EXISTS `tb_video_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `video_id` int(11) DEFAULT NULL COMMENT '视频ID',
  `tagname` varchar(200) DEFAULT '' COMMENT '标签内容',
  `create_time` varchar(64) DEFAULT NULL COMMENT '创建时间',
  `create_id` int(11) DEFAULT '0' COMMENT '创建者',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='视频标签';

-- 正在导出表  cmsdbs.tb_video_tags 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `tb_video_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_video_tags` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
