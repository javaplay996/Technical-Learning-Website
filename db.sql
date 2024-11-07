/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - zaixiaoxuexiwangzhan
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`zaixiaoxuexiwangzhan` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `zaixiaoxuexiwangzhan`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/zaixiaoxuexiwangzhan/upload/1619061158246.jpg'),(2,'轮播图2','http://localhost:8080/zaixiaoxuexiwangzhan/upload/1619061188336.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'sex_types','性别类型名称',1,'男',NULL,'2021-04-21 17:59:42'),(2,'sex_types','性别类型名称',2,'女',NULL,'2021-04-21 17:59:42'),(3,'jiaoan_types','教案类型名称',1,'教案类型1',NULL,'2021-04-21 17:59:42'),(4,'jiaoan_types','教案类型名称',2,'教案类型2',NULL,'2021-04-21 17:59:42'),(5,'jiaoan_types','教案类型名称',3,'教案类型3',NULL,'2021-04-21 17:59:42'),(6,'jiaoan_types','教案类型名称',4,'教案类型4',NULL,'2021-04-21 17:59:42'),(7,'zuoye_types','作业类型名称',1,'日常作业',NULL,'2021-04-21 17:59:43'),(8,'zuoye_types','作业类型名称',2,'期末作业',NULL,'2021-04-21 17:59:43'),(9,'zuoye_types','作业类型名称',3,'毕业作业',NULL,'2021-04-21 17:59:43'),(10,'news_types','新闻类型名称',1,'日常新闻',NULL,'2021-04-21 17:59:43'),(11,'news_types','新闻类型名称',2,'紧急新闻',NULL,'2021-04-21 17:59:43'),(12,'tongzhi_types','通知类型名称',1,'日常通知',NULL,'2021-04-21 17:59:43'),(13,'tongzhi_types','通知类型名称',2,'紧急新闻',NULL,'2021-04-21 17:59:43'),(14,'zuoye_types','作业类型名称',4,'三十三',NULL,'2021-04-22 11:21:19');

/*Table structure for table `jiaoan` */

DROP TABLE IF EXISTS `jiaoan`;

CREATE TABLE `jiaoan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiaoan_name` varchar(200) DEFAULT NULL COMMENT '教案名称  Search111 ',
  `jiaoan_types` int(11) DEFAULT NULL COMMENT '教案类型  Search111 ',
  `jiaoan_file` varchar(200) DEFAULT NULL COMMENT '教案文件',
  `jiaoan_photo` varchar(200) DEFAULT NULL COMMENT '教案图片',
  `jiaoan_content` text COMMENT '教案详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='教案';

/*Data for the table `jiaoan` */

insert  into `jiaoan`(`id`,`jiaoan_name`,`jiaoan_types`,`jiaoan_file`,`jiaoan_photo`,`jiaoan_content`,`create_time`) values (1,'教案1',4,'http://localhost:8080/zaixiaoxuexiwangzhan/file/download?fileName=1619004256334.txt','http://localhost:8080/zaixiaoxuexiwangzhan/file/download?fileName=1619004213641.webp','教案1的详情\r\n','2021-04-21 19:24:26'),(2,'教案2',2,'http://localhost:8080/zaixiaoxuexiwangzhan/file/download?fileName=1619004333753.txt','http://localhost:8080/zaixiaoxuexiwangzhan/file/download?fileName=1619004379647.webp','教案2的详情\r\n','2021-04-21 19:26:29'),(3,'教案3',3,'http://localhost:8080/zaixiaoxuexiwangzhan/file/download?fileName=1619061217448.txt','http://localhost:8080/zaixiaoxuexiwangzhan/file/download?fileName=1619061225937.webp','教案3的详情\r\n','2021-04-22 11:13:53');

/*Table structure for table `jiaoan_collection` */

DROP TABLE IF EXISTS `jiaoan_collection`;

CREATE TABLE `jiaoan_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiaoan_id` int(11) DEFAULT NULL COMMENT '教案',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='教案收藏';

/*Data for the table `jiaoan_collection` */

insert  into `jiaoan_collection`(`id`,`jiaoan_id`,`yonghu_id`,`insert_time`,`create_time`) values (1,1,1,'2021-04-21 20:08:54','2021-04-21 20:08:54');

/*Table structure for table `jiaoan_liuyan` */

DROP TABLE IF EXISTS `jiaoan_liuyan`;

CREATE TABLE `jiaoan_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiaoan_id` int(11) DEFAULT NULL COMMENT '教案',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `jiaoan_liuyan_content` text COMMENT '留言内容',
  `reply_content` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='教案留言';

/*Data for the table `jiaoan_liuyan` */

insert  into `jiaoan_liuyan`(`id`,`jiaoan_id`,`yonghu_id`,`jiaoan_liuyan_content`,`reply_content`,`insert_time`,`create_time`) values (1,1,1,'教案1有些东西不全',NULL,'2021-04-21 20:08:50','2021-04-21 20:08:50'),(2,2,1,'教案2的留言',NULL,'2021-04-22 11:14:31','2021-04-22 11:14:31'),(3,2,1,'教案2的留言',NULL,'2021-04-22 11:14:32','2021-04-22 11:14:32'),(4,3,1,'教案3的留言\r\n','教案3的回复\r\n','2021-04-22 11:14:48','2021-04-22 11:14:48');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '新闻名称 Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '新闻类型 Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '新闻图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '新闻时间',
  `news_content` text COMMENT '新闻详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='新闻';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (3,'新闻1',1,'http://localhost:8080/zaixiaoxuexiwangzhan/file/download?fileName=1619005679951.webp','2021-04-21 19:48:10','新闻1的详情\r\n','2021-04-21 19:48:10'),(4,'新闻2',2,'http://localhost:8080/zaixiaoxuexiwangzhan/file/download?fileName=1619005700331.webp','2021-04-21 19:48:25','新闻2的详情\r\n','2021-04-21 19:48:25'),(5,'新闻3',1,'http://localhost:8080/zaixiaoxuexiwangzhan/file/download?fileName=1619061499831.jpg','2021-04-22 11:18:25','新闻3的详情\r\n','2021-04-22 11:18:25');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','v3t1pg8coyxf5hy8y3rljs9e0zstb6ew','2021-04-21 19:17:38','2021-04-22 12:36:53'),(2,1,'a1','yonghu','用户','xkpfimhu45xxxwkh4d2tm0bs6mcrb74l','2021-04-21 20:06:20','2021-04-22 12:36:43'),(3,2,'a2','yonghu','用户','kslmudefd4f12zpkmumj2ynjcdk0rep6','2021-04-22 11:01:51','2021-04-22 12:05:58');

/*Table structure for table `tongzhi` */

DROP TABLE IF EXISTS `tongzhi`;

CREATE TABLE `tongzhi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `tongzhi_name` varchar(200) DEFAULT NULL COMMENT '通知名称 Search111 ',
  `tongzhi_types` int(11) DEFAULT NULL COMMENT '通知类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '通知时间',
  `tongzhi_content` text COMMENT '通知详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='通知';

/*Data for the table `tongzhi` */

insert  into `tongzhi`(`id`,`tongzhi_name`,`tongzhi_types`,`insert_time`,`tongzhi_content`,`create_time`) values (3,'通知1',1,'2021-04-21 19:48:46','通知1的详情\r\n','2021-04-21 19:48:46'),(4,'通知2',2,'2021-04-21 19:49:05','通知2的详情\r\n','2021-04-21 19:49:05');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','123456','管理员','2021-01-29 14:51:13');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号 Search111 ',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号 Search111 ',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`create_time`) values (1,'a1','123456','张11','17703786901','410224199610232001','http://localhost:8080/zaixiaoxuexiwangzhan/file/download?fileName=1619003898028.jpg',2,'2021-04-21 19:18:19'),(2,'a2','123456','张2','17703786902','410224199610232002','http://localhost:8080/zaixiaoxuexiwangzhan/file/download?fileName=1619003923069.jpg',1,'2021-04-21 19:18:51'),(3,'a3','123456','张三','17703786903','410224199610232003','http://localhost:8080/zaixiaoxuexiwangzhan/file/download?fileName=1619061140413.jpg',2,'2021-04-22 11:12:26');

/*Table structure for table `yonghuzuoye` */

DROP TABLE IF EXISTS `yonghuzuoye`;

CREATE TABLE `yonghuzuoye` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zuoye_id` int(11) DEFAULT NULL COMMENT '作业',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `yonghuzuoye_file` varchar(200) DEFAULT NULL COMMENT '回答作业',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '回答作业时间',
  `yonghuzuoye_fenshu` int(11) DEFAULT NULL COMMENT '分数',
  `yonghuzuoye_content` text COMMENT '批改详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='回答作业';

/*Data for the table `yonghuzuoye` */

insert  into `yonghuzuoye`(`id`,`zuoye_id`,`yonghu_id`,`yonghuzuoye_file`,`insert_time`,`yonghuzuoye_fenshu`,`yonghuzuoye_content`,`create_time`) values (1,2,1,'http://localhost:8080/zaixiaoxuexiwangzhan/file/download?fileName=1619060487928.txt','2021-04-22 11:01:31',80,'‍做的不错\r\n','2021-04-22 11:01:31'),(2,2,2,'http://localhost:8080/zaixiaoxuexiwangzhan/file/download?fileName=1619060532402.txt','2021-04-22 11:02:15',98,'很好\r\n','2021-04-22 11:02:15'),(3,4,1,'http://localhost:8080/zaixiaoxuexiwangzhan/file/download?fileName=1619062325270.txt','2021-04-22 11:32:12',NULL,'‍\r\n','2021-04-22 11:32:12');

/*Table structure for table `zuoye` */

DROP TABLE IF EXISTS `zuoye`;

CREATE TABLE `zuoye` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zuoye_name` varchar(200) DEFAULT NULL COMMENT '作业名称  Search111 ',
  `zuoye_types` int(11) DEFAULT NULL COMMENT '作业类型  Search111 ',
  `zuoye_file` varchar(200) DEFAULT NULL COMMENT '作业文件',
  `zuoye_end_time` timestamp NULL DEFAULT NULL COMMENT '作业截止时间 Search111 ',
  `zuoye_photo` varchar(200) DEFAULT NULL COMMENT '作业图片',
  `zuoye_content` text COMMENT '作业详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='作业';

/*Data for the table `zuoye` */

insert  into `zuoye`(`id`,`zuoye_name`,`zuoye_types`,`zuoye_file`,`zuoye_end_time`,`zuoye_photo`,`zuoye_content`,`create_time`) values (1,'作业1',3,'http://localhost:8080/zaixiaoxuexiwangzhan/file/download?fileName=1619005508470.webp','2021-04-24 00:00:00','http://localhost:8080/zaixiaoxuexiwangzhan/file/download?fileName=1619005539354.webp','作业1的详情\r\n','2021-04-21 19:45:50'),(2,'作业2',1,'http://localhost:8080/zaixiaoxuexiwangzhan/file/download?fileName=1619005589630.txt','2021-04-23 00:00:00','http://localhost:8080/zaixiaoxuexiwangzhan/file/download?fileName=1619005577417.webp','作业2的详情\r\n','2021-04-21 19:46:43'),(3,'作业3',2,'http://localhost:8080/zaixiaoxuexiwangzhan/file/download?fileName=1619005625772.txt','2021-04-03 00:00:00','http://localhost:8080/zaixiaoxuexiwangzhan/file/download?fileName=1619005636425.webp','作业3的详情\r\n','2021-04-21 19:47:26'),(4,'作业4',2,'http://localhost:8080/zaixiaoxuexiwangzhan/file/download?fileName=1619061390566.webp','2021-04-30 00:00:00','http://localhost:8080/zaixiaoxuexiwangzhan/file/download?fileName=1619061402366.webp','作业4的详情\r\n','2021-04-22 11:16:49');

/*Table structure for table `zuoye_collection` */

DROP TABLE IF EXISTS `zuoye_collection`;

CREATE TABLE `zuoye_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zuoye_id` int(11) DEFAULT NULL COMMENT '作业',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='作业收藏';

/*Data for the table `zuoye_collection` */

insert  into `zuoye_collection`(`id`,`zuoye_id`,`yonghu_id`,`insert_time`,`create_time`) values (1,2,1,'2021-04-21 20:09:08','2021-04-21 20:09:08');

/*Table structure for table `zuoye_liuyan` */

DROP TABLE IF EXISTS `zuoye_liuyan`;

CREATE TABLE `zuoye_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zuoye_id` int(11) DEFAULT NULL COMMENT '作业',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `zuoye_liuyan_content` text COMMENT '留言内容',
  `reply_content` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='作业留言';

/*Data for the table `zuoye_liuyan` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
