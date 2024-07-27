/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t213`;
CREATE DATABASE IF NOT EXISTS `t213` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t213`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COMMENT='字典表';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'qiudui_types', '球队类型', 1, '球队类型1', NULL, NULL, '2022-03-31 08:52:33'),
	(2, 'qiudui_types', '球队类型', 2, '球队类型2', NULL, NULL, '2022-03-31 08:52:33'),
	(3, 'qiudui_types', '球队类型', 3, '球队类型3', NULL, NULL, '2022-03-31 08:52:33'),
	(4, 'news_types', '公告类型', 1, '公告类型1', NULL, NULL, '2022-03-31 08:52:33'),
	(5, 'news_types', '公告类型', 2, '公告类型2', NULL, NULL, '2022-03-31 08:52:33'),
	(6, 'news_types', '公告类型', 3, '公告类型3', NULL, NULL, '2022-03-31 08:52:33'),
	(7, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2022-03-31 08:52:33'),
	(8, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2022-03-31 08:52:33');

DROP TABLE IF EXISTS `jiaolian`;
CREATE TABLE IF NOT EXISTS `jiaolian` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `jiaolian_name` varchar(200) DEFAULT NULL COMMENT '教练姓名 Search111 ',
  `jiaolian_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `jiaolian_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111 ',
  `jiaolian_delete` int DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='教练';

DELETE FROM `jiaolian`;
INSERT INTO `jiaolian` (`id`, `username`, `password`, `jiaolian_name`, `jiaolian_phone`, `jiaolian_email`, `sex_types`, `jiaolian_delete`, `create_time`) VALUES
	(1, '教练1', '123456', '教练姓名1', '17703786901', '1@qq.com', 1, 1, '2022-03-31 08:52:40'),
	(2, '教练2', '123456', '教练姓名2', '17703786902', '2@qq.com', 2, 1, '2022-03-31 08:52:40'),
	(3, '教练3', '123456', '教练姓名3', '17703786903', '3@qq.com', 1, 1, '2022-03-31 08:52:40');

DROP TABLE IF EXISTS `jiarudeqiudui`;
CREATE TABLE IF NOT EXISTS `jiarudeqiudui` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `qiudui_id` int DEFAULT NULL COMMENT '球队',
  `yonghu_id` int DEFAULT NULL COMMENT '球员',
  `jiarudeqiudui_number` decimal(10,2) DEFAULT NULL COMMENT '工资',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '加入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 COMMENT='加入的球队';

DELETE FROM `jiarudeqiudui`;
INSERT INTO `jiarudeqiudui` (`id`, `qiudui_id`, `yonghu_id`, `jiarudeqiudui_number`, `insert_time`, `create_time`) VALUES
	(1, 1, 2, 878.15, '2022-03-31 08:52:40', '2022-03-31 08:52:40'),
	(2, 2, 1, 189.22, '2022-03-31 08:52:40', '2022-03-31 08:52:40'),
	(3, 3, 3, 36.84, '2022-03-31 08:52:40', '2022-03-31 08:52:40');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='公告信息';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `news_name`, `news_types`, `news_photo`, `insert_time`, `news_content`, `create_time`) VALUES
	(1, '公告标题1', 3, 'http://localhost:8080/qiuduixunlianxinxi/upload/news1.jpg', '2022-03-31 08:52:40', '公告详情1', '2022-03-31 08:52:40'),
	(2, '公告标题2', 3, 'http://localhost:8080/qiuduixunlianxinxi/upload/news2.jpg', '2022-03-31 08:52:40', '公告详情2', '2022-03-31 08:52:40'),
	(3, '公告标题3', 1, 'http://localhost:8080/qiuduixunlianxinxi/upload/news3.jpg', '2022-03-31 08:52:40', '公告详情3', '2022-03-31 08:52:40'),
	(4, '公告标题4', 1, 'http://localhost:8080/qiuduixunlianxinxi/upload/news4.jpg', '2022-03-31 08:52:40', '公告详情4', '2022-03-31 08:52:40'),
	(5, '公告标题5', 2, 'http://localhost:8080/qiuduixunlianxinxi/upload/news5.jpg', '2022-03-31 08:52:40', '公告详情5', '2022-03-31 08:52:40');

DROP TABLE IF EXISTS `qiudui`;
CREATE TABLE IF NOT EXISTS `qiudui` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `qiudui_name` varchar(200) DEFAULT NULL COMMENT '球队名称  Search111 ',
  `qiudui_types` int DEFAULT NULL COMMENT '球队类型 Search111',
  `qiudui_address` varchar(200) DEFAULT NULL COMMENT '所属地点',
  `jiaolian_id` int DEFAULT NULL COMMENT '教练',
  `qiudui_content` text COMMENT '球队简介 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COMMENT='球队信息';

DELETE FROM `qiudui`;
INSERT INTO `qiudui` (`id`, `qiudui_name`, `qiudui_types`, `qiudui_address`, `jiaolian_id`, `qiudui_content`, `create_time`) VALUES
	(1, '球队名称1', 3, '所属地点1', 3, '球队简介1', '2022-03-31 08:52:40'),
	(2, '球队名称2', 1, '所属地点2', 3, '球队简介2', '2022-03-31 08:52:40'),
	(3, '球队名称3', 2, '所属地点3', 3, '球队简介3', '2022-03-31 08:52:40'),
	(4, '球队名称4', 1, '所属地点4', 3, '球队简介4', '2022-03-31 08:52:40'),
	(5, '球队名称5', 2, '所属地点5', 1, '球队简介5', '2022-03-31 08:52:40');

DROP TABLE IF EXISTS `shoufamingdan`;
CREATE TABLE IF NOT EXISTS `shoufamingdan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `qiudui_id` int DEFAULT NULL COMMENT '球队',
  `shoufamingdan_file` varchar(200) DEFAULT NULL COMMENT '名单下载',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 COMMENT='比赛首发名单';

DELETE FROM `shoufamingdan`;
INSERT INTO `shoufamingdan` (`id`, `qiudui_id`, `shoufamingdan_file`, `create_time`) VALUES
	(1, 1, 'http://localhost:8080/qiuduixunlianxinxi/upload/file.rar', '2022-03-31 08:52:40'),
	(2, 2, 'http://localhost:8080/qiuduixunlianxinxi/upload/file.rar', '2022-03-31 08:52:40'),
	(3, 3, 'http://localhost:8080/qiuduixunlianxinxi/upload/file.rar', '2022-03-31 08:52:40'),
	(4, 4, 'http://localhost:8080/qiuduixunlianxinxi/upload/file.rar', '2022-03-31 08:52:40'),
	(5, 5, 'http://localhost:8080/qiuduixunlianxinxi/upload/file.rar', '2022-03-31 08:52:40');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'admin', 'users', '管理员', '67q0fleyqm67u0bqboos2exdezu7x9ce', '2022-03-31 08:18:00', '2024-06-09 09:25:00'),
	(2, 1, 'a1', 'yonghu', '球员', '8jxboszsk4nc5izdmxo5ch6gxs7kruw8', '2022-03-31 08:21:55', '2024-06-09 09:26:28'),
	(3, 1, 'a1', 'jiaolian', '教练', 'mw7100j9r65jwy0rpe2e0viubeujppd3', '2022-03-31 08:24:47', '2024-06-09 09:26:13');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2022-04-30 16:00:00');

DROP TABLE IF EXISTS `xunlianjihua`;
CREATE TABLE IF NOT EXISTS `xunlianjihua` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `qiudui_id` int DEFAULT NULL COMMENT '球队',
  `xunlianjihua_name` varchar(200) DEFAULT NULL COMMENT '标题  Search111 ',
  `xunlianjihua_tianshu` varchar(200) DEFAULT NULL COMMENT '训练天数',
  `xunlianjihua_text` text COMMENT '训练内容',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 COMMENT='训练计划';

DELETE FROM `xunlianjihua`;
INSERT INTO `xunlianjihua` (`id`, `qiudui_id`, `xunlianjihua_name`, `xunlianjihua_tianshu`, `xunlianjihua_text`, `create_time`) VALUES
	(1, 1, '标题1', '训练天数1', '训练内容1', '2022-03-31 08:52:40'),
	(2, 2, '标题2', '训练天数2', '训练内容2', '2022-03-31 08:52:40'),
	(3, 3, '标题3', '训练天数3', '训练内容3', '2022-03-31 08:52:40'),
	(4, 4, '标题4', '训练天数4', '训练内容4', '2022-03-31 08:52:40'),
	(5, 5, '标题5', '训练天数5', '训练内容5', '2022-03-31 08:52:40');

DROP TABLE IF EXISTS `xunlianjindu`;
CREATE TABLE IF NOT EXISTS `xunlianjindu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `xunlianjihua_id` int DEFAULT NULL COMMENT '训练计划',
  `yonghu_id` int DEFAULT NULL COMMENT '球员',
  `xunlianjindu_text` text COMMENT '训练进度',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3 COMMENT='训练进度';

DELETE FROM `xunlianjindu`;
INSERT INTO `xunlianjindu` (`id`, `xunlianjihua_id`, `yonghu_id`, `xunlianjindu_text`, `create_time`) VALUES
	(13, 2, 1, '进度详情123333333', '2022-03-31 09:14:58');

DROP TABLE IF EXISTS `xunliankaoqin`;
CREATE TABLE IF NOT EXISTS `xunliankaoqin` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `xunlianjihua_id` int DEFAULT NULL COMMENT '训练计划',
  `yonghu_id` int DEFAULT NULL COMMENT '球员',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '打卡时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3 COMMENT='考勤信息';

DELETE FROM `xunliankaoqin`;
INSERT INTO `xunliankaoqin` (`id`, `xunlianjihua_id`, `yonghu_id`, `insert_time`, `create_time`) VALUES
	(1, 1, 1, '2022-03-31 08:52:40', '2022-03-31 08:52:40'),
	(2, 2, 3, '2022-03-31 08:52:40', '2022-03-31 08:52:40'),
	(3, 3, 1, '2022-03-31 08:52:40', '2022-03-31 08:52:40'),
	(4, 4, 2, '2022-03-31 08:52:40', '2022-03-31 08:52:40'),
	(5, 5, 3, '2022-03-31 08:52:40', '2022-03-31 08:52:40');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '球员姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111 ',
  `yonghu_delete` int DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='球员';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_phone`, `yonghu_id_number`, `yonghu_email`, `sex_types`, `yonghu_delete`, `create_time`) VALUES
	(1, '球员1', '123456', '球员姓名1', '17703786901', '410224199610232001', '1@qq.com', 1, 1, '2022-03-31 08:52:40'),
	(2, '球员2', '123456', '球员姓名2', '17703786902', '410224199610232002', '2@qq.com', 1, 1, '2022-03-31 08:52:40'),
	(3, '球员3', '123456', '球员姓名3', '17703786903', '410224199610232003', '3@qq.com', 2, 1, '2022-03-31 08:52:40');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
