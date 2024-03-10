/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.26 : Database - weixnpaotuipingtai
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`weixnpaotuipingtai` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `weixnpaotuipingtai`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/weixnpaotuipingtai/upload/config1.jpg'),(2,'轮播图2','http://localhost:8080/weixnpaotuipingtai/upload/config2.jpg'),(3,'轮播图3','http://localhost:8080/weixnpaotuipingtai/upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'paotuirenwu_types','任务类型',1,'帮我买',NULL,NULL,'2022-05-05 14:09:04'),(2,'paotuirenwu_types','任务类型',2,'帮我送',NULL,NULL,'2022-05-05 14:09:04'),(3,'paotuirenwu_types','任务类型',3,'帮我取',NULL,NULL,'2022-05-05 14:09:04'),(4,'paotuirenwu_status_types','任务状态',1,'可接单',NULL,NULL,'2022-05-05 14:09:04'),(5,'paotuirenwu_status_types','任务状态',2,'已接单',NULL,NULL,'2022-05-05 14:09:04'),(6,'paotuirenwu_status_types','任务状态',3,'已完成',NULL,NULL,'2022-05-05 14:09:04'),(7,'jiedanxiangqing_status_types','接单状态',1,'进行中',NULL,NULL,'2022-05-05 14:09:04'),(8,'jiedanxiangqing_status_types','接单状态',2,'已送达',NULL,NULL,'2022-05-05 14:09:04'),(17,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2022-05-05 14:09:04'),(18,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2022-05-05 14:09:05'),(19,'news_types','公告类型',3,'公告类型3',NULL,NULL,'2022-05-05 14:09:05'),(20,'sex_types','性别',1,'男',NULL,NULL,'2022-05-05 14:09:05'),(21,'sex_types','性别',2,'女',NULL,NULL,'2022-05-05 14:09:05');

/*Table structure for table `jiedanxiangqing` */

DROP TABLE IF EXISTS `jiedanxiangqing`;

CREATE TABLE `jiedanxiangqing` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `paotuirenwu_id` int(11) DEFAULT NULL COMMENT '任务',
  `jiedanyuan_id` int(11) DEFAULT NULL COMMENT '跑腿员',
  `jiedanxiangqing_status_types` int(11) DEFAULT NULL COMMENT '接单状态 Search111',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='接单详情';

/*Data for the table `jiedanxiangqing` */

insert  into `jiedanxiangqing`(`id`,`paotuirenwu_id`,`jiedanyuan_id`,`jiedanxiangqing_status_types`,`create_time`) values (10,5,1,2,'2022-05-05 16:41:50'),(11,4,1,2,'2022-05-05 17:11:31');

/*Table structure for table `jiedanyuan` */

DROP TABLE IF EXISTS `jiedanyuan`;

CREATE TABLE `jiedanyuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `jiedanyuan_name` varchar(200) DEFAULT NULL COMMENT '跑腿员姓名 Search111 ',
  `jiedanyuan_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `jiedanyuan_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `jiedanyuan_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '工资',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='跑腿员';

/*Data for the table `jiedanyuan` */

insert  into `jiedanyuan`(`id`,`username`,`password`,`jiedanyuan_name`,`jiedanyuan_photo`,`sex_types`,`jiedanyuan_phone`,`jiedanyuan_email`,`new_money`,`insert_time`,`create_time`) values (1,'a1','123456','跑腿员姓名1','http://localhost:8080/weixnpaotuipingtai/upload/jiedanyuan1.jpg',2,'17703786901','1@qq.com','0.00','2022-05-05 15:24:24','2022-05-05 15:24:24'),(2,'a2','123456','跑腿员姓名2','http://localhost:8080/weixnpaotuipingtai/upload/jiedanyuan2.jpg',1,'17703786902','2@qq.com','807.12','2022-05-05 15:24:24','2022-05-05 15:24:24'),(3,'a3','123456','跑腿员姓名3','http://localhost:8080/weixnpaotuipingtai/upload/jiedanyuan3.jpg',2,'17703786903','3@qq.com','334.02','2022-05-05 17:12:16','2022-05-05 15:24:24');

/*Table structure for table `jiedanyuan_liuyan` */

DROP TABLE IF EXISTS `jiedanyuan_liuyan`;

CREATE TABLE `jiedanyuan_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiedanyuan_id` int(11) DEFAULT NULL COMMENT '跑腿员',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `jiedanyuan_liuyan_text` text COMMENT '评论内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评论时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='跑腿员评论';

/*Data for the table `jiedanyuan_liuyan` */

insert  into `jiedanyuan_liuyan`(`id`,`jiedanyuan_id`,`yonghu_id`,`jiedanyuan_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,3,1,'评论内容1','2022-05-05 15:24:24','回复信息1','2022-05-05 15:24:24','2022-05-05 15:24:24'),(2,3,2,'评论内容2','2022-05-05 15:24:24','回复信息2','2022-05-05 15:24:24','2022-05-05 15:24:24'),(3,1,2,'评论内容3','2022-05-05 15:24:24','回复信息3','2022-05-05 15:24:24','2022-05-05 15:24:24'),(4,2,3,'评论内容4','2022-05-05 15:24:24','回复信息4','2022-05-05 15:24:24','2022-05-05 15:24:24'),(5,2,2,'评论内容5','2022-05-05 15:24:24','回复信息5','2022-05-05 15:24:24','2022-05-05 15:24:24'),(8,1,1,'评论内容21212','2022-05-05 17:29:19','',NULL,'2022-05-05 17:29:19');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',2,'http://localhost:8080/weixnpaotuipingtai/upload/news1.jpg','2022-05-05 15:24:24','公告详情1','2022-05-05 15:24:24'),(2,'公告标题2',2,'http://localhost:8080/weixnpaotuipingtai/upload/news2.jpg','2022-05-05 15:24:24','公告详情2','2022-05-05 15:24:24'),(3,'公告标题3',3,'http://localhost:8080/weixnpaotuipingtai/upload/news3.jpg','2022-05-05 15:24:24','公告详情3','2022-05-05 15:24:24'),(4,'公告标题4',3,'http://localhost:8080/weixnpaotuipingtai/upload/news4.jpg','2022-05-05 15:24:24','公告详情4','2022-05-05 15:24:24'),(5,'公告标题5',1,'http://localhost:8080/weixnpaotuipingtai/upload/news5.jpg','2022-05-05 15:24:24','公告详情5','2022-05-05 15:24:24');

/*Table structure for table `paotuirenwu` */

DROP TABLE IF EXISTS `paotuirenwu`;

CREATE TABLE `paotuirenwu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `paotuirenwu_uuid_number` varchar(200) DEFAULT NULL COMMENT '任务编号  Search111 ',
  `paotuirenwu_name` varchar(200) DEFAULT NULL COMMENT '任务标题  Search111 ',
  `paotuirenwu_types` int(11) DEFAULT NULL COMMENT '任务类型 Search111',
  `paotuirenwu_new_money` decimal(10,2) DEFAULT NULL COMMENT '单价',
  `paotuirenwu_photo` varchar(200) DEFAULT NULL COMMENT '封面',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `paotuirenwu_shouhbuoren` varchar(200) NOT NULL COMMENT '收货人 ',
  `paotuirenwu_phone` varchar(200) NOT NULL COMMENT '电话 ',
  `paotuirenwu_dizhi` varchar(200) NOT NULL COMMENT '地址 ',
  `paotuirenwu_text` text COMMENT '备注',
  `paotuirenwu_status_types` int(11) DEFAULT NULL COMMENT '任务状态 Search111',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='跑腿任务';

/*Data for the table `paotuirenwu` */

insert  into `paotuirenwu`(`id`,`paotuirenwu_uuid_number`,`paotuirenwu_name`,`paotuirenwu_types`,`paotuirenwu_new_money`,`paotuirenwu_photo`,`yonghu_id`,`paotuirenwu_shouhbuoren`,`paotuirenwu_phone`,`paotuirenwu_dizhi`,`paotuirenwu_text`,`paotuirenwu_status_types`,`create_time`) values (1,'165173546470693','任务标题1',1,'174.95','http://localhost:8080/weixnpaotuipingtai/upload/paotuirenwu1.jpg',1,'收货人1','17703786901','地址1','备注1',1,'2022-05-05 15:24:24'),(2,'165173546470643','任务标题2',2,'264.68','http://localhost:8080/weixnpaotuipingtai/upload/paotuirenwu2.jpg',3,'收货人2','17703786902','地址2','备注2',1,'2022-05-05 15:24:24'),(3,'165173546470613','任务标题3',2,'307.06','http://localhost:8080/weixnpaotuipingtai/upload/paotuirenwu3.jpg',2,'收货人3','17703786903','地址3','备注3',1,'2022-05-05 15:24:24'),(4,'165173546470695','任务标题4',3,'352.12','http://localhost:8080/weixnpaotuipingtai/upload/paotuirenwu4.jpg',1,'收货人4','17703786904','地址4','备注4',3,'2022-05-05 15:24:24'),(5,'165173546470686','任务标题5',1,'179.94','http://localhost:8080/weixnpaotuipingtai/upload/paotuirenwu5.jpg',1,'收货人5','17703786905','地址5','备注5',3,'2022-05-05 15:24:24'),(8,'1651742971611','123',3,'123.00','http://localhost:8080/weixnpaotuipingtai/upload/1651742977975.jpg',1,'123','123','河南省郑州市惠济区开元路8号惠济区人民政府信访局','123',1,'2022-05-05 17:29:48');

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (4,1,'admin','users','管理员','chjjqfzhvijn33llj5l3tog5efxws7r4','2022-05-05 15:48:40','2022-05-05 18:38:26'),(5,1,'a1','jiedanyuan','跑腿员','g3gkw4hccpybigni77ibi6hlbydusevn','2022-05-05 16:00:48','2022-05-05 18:11:24'),(6,1,'a1','yonghu','用户','7iqrrz947e1nircmcd7p7m84qywnefqt','2022-05-05 16:09:45','2022-05-05 18:29:00');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2022-05-01 00:00:00');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `yonghu_delete` int(11) DEFAULT '1' COMMENT '假删',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_photo`,`sex_types`,`yonghu_phone`,`yonghu_email`,`new_money`,`yonghu_delete`,`insert_time`,`create_time`) values (1,'a1','123456','用户姓名1','http://localhost:8080/weixnpaotuipingtai/upload/yonghu1.jpg',1,'17703786901','1@qq.com','492.19',1,'2022-05-05 15:24:24','2022-05-05 15:24:24'),(2,'a2','123456','用户姓名2','http://localhost:8080/weixnpaotuipingtai/upload/yonghu2.jpg',2,'17703786902','2@qq.com','231.02',1,'2022-05-05 15:24:24','2022-05-05 15:24:24'),(3,'a3','123456','用户姓名3','http://localhost:8080/weixnpaotuipingtai/upload/yonghu3.jpg',1,'17703786903','3@qq.com','711.49',1,'2022-05-05 15:24:24','2022-05-05 15:24:24');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
