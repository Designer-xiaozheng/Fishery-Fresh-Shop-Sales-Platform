DROP TABLE IF EXISTS `student_user`;
CREATE TABLE `student_user`(
	   `student_user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '学生用户ID',
`student_number` varchar(64) NOT NULL UNIQUE comment '学生学号',
`student_name` varchar(64) comment '学生姓名',
`student_gender` varchar(64) comment '学生性别',
`student_age` varchar(64) comment '学生年龄',
`class_name` varchar(64) comment '班级名称',
`examine_state` varchar(16) DEFAULT '已通过' NOT NULL comment '审核状态',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`user_id` int(11) DEFAULT '0' NOT NULL comment '用户ID',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (student_user_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '学生用户';

DROP TABLE IF EXISTS `teacher_user`;
CREATE TABLE `teacher_user`(
	   `teacher_user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '教师用户ID',
`teacher_job_number` varchar(64) NOT NULL UNIQUE comment '教师工号',
`teacher_name` varchar(64) comment '教师姓名',
`teacher_gender` varchar(64) comment '教师性别',
`teacher_age` varchar(64) comment '教师年龄',
`teacher_certificate` varchar(255) comment '教师证',
`examine_state` varchar(16) DEFAULT '已通过' NOT NULL comment '审核状态',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`user_id` int(11) DEFAULT '0' NOT NULL comment '用户ID',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (teacher_user_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '教师用户';

DROP TABLE IF EXISTS `job_release`;
CREATE TABLE `job_release`(
	   `job_release_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '作业发布ID',
`release_teacher` int(11) DEFAULT 0 comment ' 发布教师',
`job_name` varchar(64) comment '作业名称',
`job_file` varchar(255) comment '作业文件',
`release_time` datetime comment '发布时间',
`required_time` datetime comment '要求时间',
`job_details` text comment '作业详情',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (job_release_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '作业发布';
insert into `job_release` values (1,0,'作业名称1','点此下载','2022-3-28 21:14:12','2022-3-28 21:14:12','作业详情1','0','2022-03-28 21:14:12','2022-03-28 21:14:12');
insert into `job_release` values (2,0,'作业名称2','点此下载','2022-3-28 21:14:12','2022-3-28 21:14:12','作业详情2','0','2022-03-28 21:14:12','2022-03-28 21:14:12');
insert into `job_release` values (3,0,'作业名称3','点此下载','2022-3-28 21:14:12','2022-3-28 21:14:12','作业详情3','0','2022-03-28 21:14:12','2022-03-28 21:14:12');
insert into `job_release` values (4,0,'作业名称4','点此下载','2022-3-28 21:14:12','2022-3-28 21:14:12','作业详情4','0','2022-03-28 21:14:12','2022-03-28 21:14:12');
insert into `job_release` values (5,0,'作业名称5','点此下载','2022-3-28 21:14:12','2022-3-28 21:14:12','作业详情5','0','2022-03-28 21:14:12','2022-03-28 21:14:12');
insert into `job_release` values (6,0,'作业名称6','点此下载','2022-3-28 21:14:12','2022-3-28 21:14:12','作业详情6','0','2022-03-28 21:14:12','2022-03-28 21:14:12');
insert into `job_release` values (7,0,'作业名称7','点此下载','2022-3-28 21:14:12','2022-3-28 21:14:12','作业详情7','0','2022-03-28 21:14:12','2022-03-28 21:14:12');
insert into `job_release` values (8,0,'作业名称8','点此下载','2022-3-28 21:14:12','2022-3-28 21:14:12','作业详情8','0','2022-03-28 21:14:12','2022-03-28 21:14:12');

DROP TABLE IF EXISTS `job_submission`;
CREATE TABLE `job_submission`(
	   `job_submission_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '作业提交ID',
`release_teacher` int(11) DEFAULT 0 comment ' 发布教师',
`job_name` varchar(64) comment '作业名称',
`release_time` datetime comment '发布时间',
`required_time` datetime comment '要求时间',
`student_user` int(11) DEFAULT 0 comment '学生用户',
`submit_job` varchar(255) comment '提交作业',
`submission_time` datetime comment '提交时间',
`job_details` text comment '作业详情',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (job_submission_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '作业提交';
insert into `job_submission` values (1,0,'作业名称1','2022-3-28 21:14:12','2022-3-28 21:14:12',0,'点此下载','2022-3-28 21:14:12','作业详情1','0','2022-03-28 21:14:12','2022-03-28 21:14:12');
insert into `job_submission` values (2,0,'作业名称2','2022-3-28 21:14:12','2022-3-28 21:14:12',0,'点此下载','2022-3-28 21:14:12','作业详情2','0','2022-03-28 21:14:12','2022-03-28 21:14:12');
insert into `job_submission` values (3,0,'作业名称3','2022-3-28 21:14:12','2022-3-28 21:14:12',0,'点此下载','2022-3-28 21:14:12','作业详情3','0','2022-03-28 21:14:12','2022-03-28 21:14:12');
insert into `job_submission` values (4,0,'作业名称4','2022-3-28 21:14:12','2022-3-28 21:14:12',0,'点此下载','2022-3-28 21:14:12','作业详情4','0','2022-03-28 21:14:12','2022-03-28 21:14:12');
insert into `job_submission` values (5,0,'作业名称5','2022-3-28 21:14:12','2022-3-28 21:14:12',0,'点此下载','2022-3-28 21:14:12','作业详情5','0','2022-03-28 21:14:12','2022-03-28 21:14:12');
insert into `job_submission` values (6,0,'作业名称6','2022-3-28 21:14:12','2022-3-28 21:14:12',0,'点此下载','2022-3-28 21:14:12','作业详情6','0','2022-03-28 21:14:12','2022-03-28 21:14:12');
insert into `job_submission` values (7,0,'作业名称7','2022-3-28 21:14:12','2022-3-28 21:14:12',0,'点此下载','2022-3-28 21:14:12','作业详情7','0','2022-03-28 21:14:12','2022-03-28 21:14:12');
insert into `job_submission` values (8,0,'作业名称8','2022-3-28 21:14:12','2022-3-28 21:14:12',0,'点此下载','2022-3-28 21:14:12','作业详情8','0','2022-03-28 21:14:12','2022-03-28 21:14:12');

DROP TABLE IF EXISTS `achievement_information`;
CREATE TABLE `achievement_information`(
	   `achievement_information_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '成绩信息ID',
`test_paper_name` varchar(64) comment '试卷名称',
`examination_time` datetime comment '考试时间',
`end_time` datetime comment '结束时间',
`total_score_of_test_paper` int(11) DEFAULT 0 comment '试卷总分',
`student_number` int(11) DEFAULT 0 comment '学生学号',
`student_name` varchar(64) comment '学生姓名',
`student_score` int(11) DEFAULT 0 comment '学生分数',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (achievement_information_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '成绩信息';
insert into `achievement_information` values (1,'试卷名称1','2022-3-28 21:14:12','2022-3-28 21:14:12',5,0,'学生姓名1',5,'0','2022-03-28 21:14:12','2022-03-28 21:14:12');
insert into `achievement_information` values (2,'试卷名称2','2022-3-28 21:14:12','2022-3-28 21:14:12',10,0,'学生姓名2',10,'0','2022-03-28 21:14:12','2022-03-28 21:14:12');
insert into `achievement_information` values (3,'试卷名称3','2022-3-28 21:14:12','2022-3-28 21:14:12',15,0,'学生姓名3',15,'0','2022-03-28 21:14:12','2022-03-28 21:14:12');
insert into `achievement_information` values (4,'试卷名称4','2022-3-28 21:14:12','2022-3-28 21:14:12',20,0,'学生姓名4',20,'0','2022-03-28 21:14:12','2022-03-28 21:14:12');
insert into `achievement_information` values (5,'试卷名称5','2022-3-28 21:14:12','2022-3-28 21:14:12',25,0,'学生姓名5',25,'0','2022-03-28 21:14:12','2022-03-28 21:14:12');
insert into `achievement_information` values (6,'试卷名称6','2022-3-28 21:14:12','2022-3-28 21:14:12',30,0,'学生姓名6',30,'0','2022-03-28 21:14:12','2022-03-28 21:14:12');
insert into `achievement_information` values (7,'试卷名称7','2022-3-28 21:14:12','2022-3-28 21:14:12',35,0,'学生姓名7',35,'0','2022-03-28 21:14:12','2022-03-28 21:14:12');
insert into `achievement_information` values (8,'试卷名称8','2022-3-28 21:14:12','2022-3-28 21:14:12',40,0,'学生姓名8',40,'0','2022-03-28 21:14:12','2022-03-28 21:14:12');

DROP TABLE IF EXISTS `message_feedback`;
CREATE TABLE `message_feedback`(
	   `message_feedback_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '留言反馈ID',
`student_number` int(11) DEFAULT 0 comment '学生学号',
`student_name` varchar(64) comment '学生姓名',
`feedback_information` text comment '反馈信息',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (message_feedback_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '留言反馈';
insert into `message_feedback` values (1,0,'学生姓名1','反馈信息1','0','2022-03-28 21:14:12','2022-03-28 21:14:12');
insert into `message_feedback` values (2,0,'学生姓名2','反馈信息2','0','2022-03-28 21:14:12','2022-03-28 21:14:12');
insert into `message_feedback` values (3,0,'学生姓名3','反馈信息3','0','2022-03-28 21:14:12','2022-03-28 21:14:12');
insert into `message_feedback` values (4,0,'学生姓名4','反馈信息4','0','2022-03-28 21:14:12','2022-03-28 21:14:12');
insert into `message_feedback` values (5,0,'学生姓名5','反馈信息5','0','2022-03-28 21:14:12','2022-03-28 21:14:12');
insert into `message_feedback` values (6,0,'学生姓名6','反馈信息6','0','2022-03-28 21:14:12','2022-03-28 21:14:12');
insert into `message_feedback` values (7,0,'学生姓名7','反馈信息7','0','2022-03-28 21:14:12','2022-03-28 21:14:12');
insert into `message_feedback` values (8,0,'学生姓名8','反馈信息8','0','2022-03-28 21:14:12','2022-03-28 21:14:12');

DROP TABLE IF EXISTS `access_token`;
CREATE TABLE `access_token` (
  `token_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '临时访问牌ID',
  `token` varchar(64) DEFAULT NULL COMMENT '临时访问牌',
  `info` text,
  `maxage` int(2) NOT NULL DEFAULT '2' COMMENT '最大寿命：默认2小时',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户编号:',
  PRIMARY KEY (`token_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='临时访问牌';
insert into `access_token` values ('57','5accf85cb6a7f06f0aa2968deadaec1b',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('58','46ff1d4d07714f046ba07b34bffe0af9',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('59','ed9d6cba9826fda1beafcd9326be7a86',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('60','c99763c1833ea0785d9e2b81da3fd28f',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('61','33fbfaccd6d1cb9143e4129bd919d4b0',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('62','493e13da5f293ba67a56a0fe3e1fa6cf',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('63','c4b48e9e2160db09c703041a8fee0a1f',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('64','d13cdaefd3823c360c959a02a262f71d',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('65','6c6ff426fd77ea5a2025ce5ed2e42c8a',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('66','80930065a61ffcdd5cbb75f60932973c',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('67','94114763cf2e3b020495d8a27096d4ef',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('68','761052c551c97c9317bc3aa475c85b84',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('69','7c44ef14131a0ba7c16aa16cef104065',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('70','96380f3d9542c80d04bdade1cf7635a5',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('71','bfdc7acfcbf5763fda81945b60961222',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('72','170a598e51ae8ae2badde20a42fe171d',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('73','c82c357488c75926a92d8a9608d4b367',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('74','4d35290c023f407a820f37dbbb1ceb09',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('75','8d19162776682b695c0f62f3c7a92fec',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('76','a7ea2cdc9a2be179e19200e593ad5a69',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('77','c79a554f9832adc01f19682c5d576bc4',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('78','1c7d95001fa09951a679841c8100ad1f',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('79','776da1bcdd01ddb3cbf0a37fa13fc5b0',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('80','d336e88e57c329d0166931292c1fac41',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('81','37a40f526a6c82fc6110b512802d35bf',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('82','691ad331771f4109206d58aeee572371',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('83','9942e458886219960d3344b4a6a6fbec',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('84','e9939a8b7ccf9f548f0bbb5664981f96',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('85','f5b27912060d1909bef61fab9d96faae',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('86','7c5888682f1d449eb1b62f0054a79fbf',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('87','00dfdc6ac21c4a9da80fd71c990764d1',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('88','3cce592bc72840ab932ce96d85a194da',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('89','43fdaa989a644ad683ef4b4d488e8629',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('90','d6a3cecadacff0dbd6b43b25372cc2a2',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('91','5570bc5b07b3589f4ef8553bd46eb0d1',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('92','5570bc5b07b3589f4ef8553bd46eb0d1',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('93','26c553bd2ee2ab6605d18dfd310d85f9',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('94','3fd52f81236ed2c37ff91a6696d4e47a',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('95','893332e9ee67d60d8312b3700c58a359',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('96','b7844068ade535b2e517df4a40948703',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('97','179b37a5e1893c3af6b946bd5a1c8625',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('98','3a47b8a040a83ebbc9194cb255dc668c',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('99','afa60196afb77dcc2b520ed13a817560',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('100','7fc6d9b324f8c0a3a1784d04ef132692',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `article_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '文章id：[0,8388607]',
  `title` varchar(125) NOT NULL DEFAULT '' COMMENT '标题：[0,125]用于文章和html的title标签中',
  `type` varchar(64) NOT NULL DEFAULT '0' COMMENT '文章分类：[0,1000]用来搜索指定类型的文章',
  `hits` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击数：[0,1000000000]访问这篇文章的人次',
  `praise_len` int(11) NOT NULL DEFAULT '0' COMMENT '点赞数',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `source` varchar(255) DEFAULT NULL COMMENT '来源：[0,255]文章的出处',
  `url` varchar(255) DEFAULT NULL COMMENT '来源地址：[0,255]用于跳转到发布该文章的网站',
  `tag` varchar(255) DEFAULT NULL COMMENT '标签：[0,255]用于标注文章所属相关内容，多个标签用空格隔开',
  `content` longtext COMMENT '正文：文章的主体内容',
  `img` varchar(255) DEFAULT NULL COMMENT '封面图',
  `description` text COMMENT '文章描述',
  PRIMARY KEY (`article_id`,`title`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='文章：用于内容管理系统的文章';
DROP TABLE IF EXISTS `article_type`;
CREATE TABLE `article_type` (
  `type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类ID：[0,10000]',
  `display` smallint(4) unsigned NOT NULL DEFAULT '100' COMMENT '显示顺序：[0,1000]决定分类显示的先后顺序',
  `name` varchar(16) NOT NULL DEFAULT '' COMMENT '分类名称：[2,16]',
  `father_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID：[0,32767]',
  `description` varchar(255) DEFAULT NULL COMMENT '描述：[0,255]描述该分类的作用',
  `icon` text COMMENT '分类图标：',
  `url` varchar(255) DEFAULT NULL COMMENT '外链地址：[0,255]如果该分类是跳转到其他网站的情况下，就在该URL上设置',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`type_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='文章频道：用于汇总浏览文章，在不同频道下展示不同文章。';

DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `comment_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '评论ID：',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '评论人ID：',
  `reply_to_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '回复评论ID：空为0',
  `content` longtext COMMENT '内容：',
  `nickname` varchar(255) DEFAULT NULL COMMENT '昵称：',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像地址：[0,255]',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `source_table` varchar(255) DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  PRIMARY KEY (`comment_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='评论：';
DROP TABLE IF EXISTS `forum`;
CREATE TABLE `forum` (
  `forum_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '论坛id',
  `display` smallint(5) unsigned NOT NULL DEFAULT '100' COMMENT '排序',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `nickname` varchar(16) DEFAULT '' COMMENT '昵称：[0,16]',
  `praise_len` int(10) unsigned DEFAULT '0' COMMENT '点赞数',
  `hits` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '访问数',
  `title` varchar(125) NOT NULL DEFAULT '' COMMENT '标题',
  `keywords` varchar(125) DEFAULT NULL COMMENT '关键词',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `url` varchar(255) DEFAULT NULL COMMENT '来源地址',
  `tag` varchar(255) DEFAULT NULL COMMENT '标签',
  `img` text COMMENT '封面图',
  `content` longtext COMMENT '正文',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `avatar` varchar(255) DEFAULT NULL COMMENT '发帖人头像：',
  `type` varchar(64) CHARACTER SET utf8mb4 NOT NULL DEFAULT '0' COMMENT '论坛分类：[0,1000]用来搜索指定类型的论坛帖',
  PRIMARY KEY (`forum_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='论坛：';
insert into `forum` values ('1','100','1','小明','0','149','测试标题','关键字1','描述','#','标签','/static/img/img_temp.jpg','<h1>fafgwagbagbwgwag</h1>',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'http://localhost:5000/upload/jingdian (11)_15.jpg','0');
insert into `forum` values ('2','100','2','小明','0','30','测试标题2','关键字2','dec','#','标签','/static/img/img_temp.jpg','测试文章内容2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",null,'0');
insert into `forum` values ('3','100','2','小红','0','42','测试标题3','关键字3','dec2','#','标签','/static/img/img_temp.jpg','测试文章内容3',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",null,'0');
insert into `forum` values ('4','100','2','小红','0','22','测试标题4','关键字4','dec3','#','标签','/static/img/img_temp.jpg','测试文章内容4',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",null,'0');
DROP TABLE IF EXISTS `forum_type`;
CREATE TABLE `forum_type` (
  `type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类ID：[0,10000]',
  `name` varchar(16) NOT NULL DEFAULT '' COMMENT '分类名称：[2,16]',
  `description` varchar(255) DEFAULT NULL COMMENT '描述：[0,255]描述该分类的作用',
  `url` varchar(255) DEFAULT NULL COMMENT '外链地址：[0,255]如果该分类是跳转到其他网站的情况下，就在该URL上设置',
  `father_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID：[0,32767]',
  `icon` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '分类图标：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`type_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='论坛频道：用于汇总浏览论坛，在不同频道下展示不同论坛。';
insert into `forum_type` values ('1','休闲','描述','/article/list?type_id=1','0',null,"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `forum_type` values ('2','娱乐','企业信息描述描述描述描述','/article/list?type_id=2','0',null,"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `forum_type` values ('3','开心','操作帮助描述描述描述','/article/list?type_id=3','0',null,"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `notice_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '公告id：',
  `title` varchar(125) NOT NULL DEFAULT '' COMMENT '标题：',
  `content` longtext COMMENT '正文：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='公告：';
insert into `notice` values ('1','公告标题1','公告，是指政府、团体对重大事件当众正式公布或者公开宣告，宣布。国务院2012年4月16日发布、2012年7月1日起施行的《党政机关公文处理工作条例》，对公告的使用表述为：“适用于向国内外宣布重要事项或者法定事项”。其中包含两方面的内容：一是向国内外宣布重要事项，公布依据政策、法令采取的重大行动等；二是向国内外宣布法定事项，公布依据法律规定告知国内外的有关重要规定和重大行动等。',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `notice` values ('2','公告标题2','公告，包含两方面的内容：一是向国内外宣布重要事项，公布依据政策、法令采取的重大行动等；二是向国内外宣布法定事项，公布依据法律规定告知国内外的有关重要规定和重大行动等',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `notice` values ('3','公告标题3','公告，是指政府、团体对重大事件当众正式公布或者公开宣告，宣布。国务院2012年4月16日发布、2012年7月1日起施行的《党政机关公文处理工作条例》，对公告的使用表述为：“适用于向国内外宣布重要事项或者法定事项”。其中包含两方面的内容：一是向国内外宣布重要事项，公布依据政策、法令采取的重大行动等；二是向国内外宣布法定事项，公布依据法律规定告知国内外的有关重要规定和重大行动等。',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `notice` values ('4','公告标题4','公告，包含两方面的内容：一是向国内外宣布重要事项，公布依据政策、法令采取的重大行动等；二是向国内外宣布法定事项，公布依据法律规定告知国内外的有关重要规定和重大行动等',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
DROP TABLE IF EXISTS `praise`;
CREATE TABLE `praise` (
  `praise_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '点赞ID：',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '点赞人：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `source_table` varchar(255) DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '点赞状态:1为点赞，0已取消',
  PRIMARY KEY (`praise_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='点赞：';
insert into `praise` values ('2','1',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','7','1');
insert into `praise` values ('25','5',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','9','1');
insert into `praise` values ('26','5',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','7','1');
insert into `praise` values ('27','5',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','7','1');
insert into `praise` values ('44','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'forum','forum_id','2','1');
insert into `praise` values ('50','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'forum','forum_id','2','1');
insert into `praise` values ('54','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','9','1');
insert into `praise` values ('57','0',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','10','1');
insert into `praise` values ('86','0',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','6','1');
insert into `praise` values ('101','7',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','7','1');
insert into `praise` values ('108','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','8','1');
insert into `praise` values ('221','0',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','2','1');
DROP TABLE IF EXISTS `slides`;
CREATE TABLE `slides` (
  `slides_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '轮播图ID：',
  `title` varchar(64) DEFAULT NULL COMMENT '标题：',
  `content` varchar(255) DEFAULT NULL COMMENT '内容：',
  `url` varchar(255) DEFAULT NULL COMMENT '链接：',
  `img` varchar(255) DEFAULT NULL COMMENT '轮播图：',
  `hits` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击量：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`slides_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='轮播图：';
DROP TABLE IF EXISTS `upload`;
CREATE TABLE `upload` (
  `upload_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '上传ID',
  `name` varchar(64) DEFAULT NULL COMMENT '文件名',
  `path` varchar(255) DEFAULT NULL COMMENT '访问路径',
  `file` varchar(255) DEFAULT NULL COMMENT '文件路径',
  `display` varchar(255) DEFAULT NULL COMMENT '显示顺序',
  `father_id` int(11) DEFAULT '0' COMMENT '父级ID',
  `dir` varchar(255) DEFAULT NULL COMMENT '文件夹',
  `type` varchar(32) DEFAULT NULL COMMENT '文件类型',
  PRIMARY KEY (`upload_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
insert into `upload` values ('1','movie.mp4','/upload/movie.mp4','',null,'0',null,'video');
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户ID：[0,8388607]用户获取其他与用户相关的数据',
  `state` smallint(1) unsigned NOT NULL DEFAULT '1' COMMENT '账户状态：[0,10](1可用|2异常|3已冻结|4已注销)',
  `user_group` varchar(32) DEFAULT NULL COMMENT '所在用户组：[0,32767]决定用户身份和权限',
  `login_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '上次登录时间：',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号码：[0,11]用户的手机号码，用于找回密码时或登录时',
  `phone_state` smallint(1) unsigned NOT NULL DEFAULT '0' COMMENT '手机认证：[0,1](0未认证|1审核中|2已认证)',
  `username` varchar(16) NOT NULL DEFAULT '' COMMENT '用户名：[0,16]用户登录时所用的账户名称',
  `nickname` varchar(16) DEFAULT '' COMMENT '昵称：[0,16]',
  `password` varchar(64) NOT NULL DEFAULT '' COMMENT '密码：[0,32]用户登录所需的密码，由6-16位数字或英文组成',
  `email` varchar(64) DEFAULT '' COMMENT '邮箱：[0,64]用户的邮箱，用于找回密码时或登录时',
  `email_state` smallint(1) unsigned NOT NULL DEFAULT '0' COMMENT '邮箱认证：[0,1](0未认证|1审核中|2已认证)',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像地址：[0,255]',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户账户：用于保存用户登录信息';
insert into `user` values ('1','1','管理员',"2022-04-19 07:32:09.000 ",null,'0','admin','admin','bfd59291e825b5f2bbf1eb76569f8fe7','','0','/api/upload/avatar.jpg',"2022-04-19 07:32:09.000 ");
DROP TABLE IF EXISTS `user_group`;
CREATE TABLE `user_group` (
  `group_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户组ID：[0,8388607]',
  `display` smallint(4) unsigned NOT NULL DEFAULT '100' COMMENT '显示顺序：[0,1000]',
  `name` varchar(16) NOT NULL DEFAULT '' COMMENT '名称：[0,16]',
  `description` varchar(255) DEFAULT NULL COMMENT '描述：[0,255]描述该用户组的特点或权限范围',
  `source_table` varchar(255) DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  `register` smallint(1) unsigned DEFAULT '0' COMMENT '注册位置:',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`group_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户组：用于用户前端身份和鉴权';
DROP TABLE IF EXISTS `hits`;
CREATE TABLE `hits` (
  `hits_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '点赞ID：',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '点赞人：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `source_table` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  PRIMARY KEY (`hits_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
DROP TABLE IF EXISTS `exam`;
CREATE TABLE `exam` (
  `exam_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '考试id',
  `name` varchar(32) CHARACTER SET utf8mb4 NOT NULL DEFAULT '' COMMENT '考试名称：[2,32]',
  `duration` int(11) DEFAULT NULL COMMENT '答题时长',
  `score` double(8,2) DEFAULT NULL COMMENT '总分',
  `status` varchar(10) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '状态：启用、禁用',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`exam_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC COMMENT='考试';
insert into `exam` values ('1','计算机基础考试','60','100','启用',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam` values ('2','大学语文','90','120','启用',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam` values ('3','C语言考试','70','100','禁用',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
DROP TABLE IF EXISTS `exam_question`;
CREATE TABLE `exam_question` (
  `exam_question_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(20) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '类型',
  `title` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '题目',
  `question_item` varchar(500) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '选项',
  `answer` varchar(500) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '参考答案',
  `score` double(8,2) DEFAULT NULL COMMENT '总分',
  `question_order` int(11) DEFAULT NULL COMMENT '排序',
  `exam_id` mediumint(8) DEFAULT NULL COMMENT '所属试卷',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`exam_question_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
insert into `exam_question` values ('1','单选题','启动Word后，空白文档的文档名为（　　）。','A、untitled
B、文档1.DOC
C、新文档.DOC
D、我的文档.DOC','C、新文档.DOC','10','1','1',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('2','单选题','Word软件处理的主要对象是（　　）。','A、表格
B、文档
C、图片
D、数据','B、文档','10','2','1',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('3','单选题','当前活动窗口是文档dl.doc的窗口，单击该窗口的“最小化”按钮（　　）。','A、不显示dl.doc文档内容，但dl.doc文档并未关闭
B、dl.doc文档未关闭，且继续显示其内容
C、该窗口和dl.doc文档都被关闭
D、关闭了dl.doc文档但该窗口并未关闭','A、不显示dl.doc文档内容，但dl.doc文档并未关闭','10','3','1',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('4','多选题','文件或文件夹的属性一般有（　　）。','A、只读
B、隐藏
C、存档
D、系统','A、只读|B、隐藏','10','4','1',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('5','多选题','电子计算机根据外观可以分为（　　）。','A、巨型机
B、便携机
C、微型机
D、游戏机','A、巨型机|B、便携机|C、微型机','10','5','1',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('6','判断题','Word和Windows都是系统软件。','A、正确
B、错误','B、错误','5','6','1',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('7','判断题','ROM的是只读存储器。','A、正确
B、错误','A、正确','5','7','1',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('8','判断题','在存储器容量的表示中,1MB的含义是1024K个汉字。','A、正确
B、错误','B、错误','5','8','1',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('9','填空题','在Word文档中，每个段落都有自己的段落标记，段落标记的位置在______。','','段落的结尾处','10','9','1',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('10','填空题','能显示页眉和页脚的方式是______。','','页面视图','10','10','1',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('11','主观题','请简述一下计算机的工作原理？','','计算机最主要的工作原理是存储程序与程序控制','15','11','1',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('18','单选题','下列诗歌属于乐府旧题的有( )','A、《短歌行》
B、《饮酒》
C、《蛇》','A、《短歌行》','5','1','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('19','单选题','提倡“文章合为时而著，歌诗合为事而作”的唐代诗人是( )','A、韩愈
B、柳宗元
C、白居易','C、白居易','5','2','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('20','单选题','“甘其食，美其服，乐其俗”中的“甘”“美”“乐”属( )','A、使动词
B、意动词
C、名词','B、意动词','5','3','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('21','单选题','“功施到今”中“施”读作( )','A、yi
B、si
C、shi','A、yi','5','4','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('22','单选题','“回眸一笑百媚生，六宫粉黛无颜色”的作者是(  )','A、陆游
B、唐琬
C、白居易','C、白居易','5','5','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('23','多选题','《采薇》一诗的艺术特点是( )','A、反复咏叹
B、抒情和写景融为一体
C、起兴手法','A、反复咏叹|B、抒情和写景融为一体|C、起兴手法','10','6','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('24','多选题','“回眸一笑百媚生，六宫粉黛无颜色”运用的修辞手法有( )','A、夸张
B、对比
C、借代','A、夸张|B、对比|C、借代','10','7','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('25','多选题','不是《西厢记.长亭送别》一折戏的主角是( )','A、崔莺莺
B、张珙
C、红娘','C、红娘','10','8','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('26','填空题','《铸剑》属于____。','','小说','5','9','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('27','填空题','“对酒当歌，人生几何?”的作者是____。','','曹操','5','10','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('28','填空题','《诗经》中的“风”是____。','','国风','5','11','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('29','填空题','《采薇》是选自《诗经》的____。','','《小雅》','5','12','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('30','判断题','王维的《送梓州李使君》是一首赠别诗','A、正确
B、错误','A、正确','5','13','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('31','判断题','《乡愁》属于余秋雨的作品','A、正确
B、错误','B、错误','5','14','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('32','判断题','《雅舍》属于梁实秋的作品','A、正确
B、错误','A、正确','5','15','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('33','主观题','默写《短歌行》','','对酒当歌，人生几何！ 譬如朝露，去日苦多。 慨当以慷，忧思难忘。 何以解忧？唯有杜康。 青青子衿，悠悠我心。 但为君故，沉吟至今。 呦呦鹿鸣，食野之苹。 我有嘉宾，鼓瑟吹笙。 明明如月，何时可掇？ 忧从中来，不可断绝。 越陌度阡，枉用相存。 契阔谈讌，心念旧恩。 月明星稀，乌鹊南飞。 绕树三匝，何枝可依？ 山不厌高，海不厌深。 周公吐哺，天下归心。','15','16','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('34','主观题','分析王维的《送梓州李使君》是在什么时代背景下抒写的？体现了当时的社会环境是如何的？','','这是一首送别之作。具体创作时间不详，李使君当是初往梓州（治今四川三台）赴任，王维写此诗相赠。','15','17','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('35','单选题','以下选项中，不能作为合法常量的是______。','A、1.234e04
B、1.234e0.4
C、1.234e+4
D、1.234e0','B、1.234e0.4','5','1','5',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('36','单选题','以下符合C语言语法的实型常量是______。','A、1.2E0.5
B、3.14159E
C、.5E-3
D、E15','C、.5E-3','5','2','5',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('37','单选题','设int a=12，则执行完语句a+=a-=a*a后，a的值是______。','A、552
B、264
C、144
D、-264','D、-264','5','3','5',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('38','单选题','若要求在if后一对圆括号中表示a不等于0的关系,则能正确表示这一关系的表达式为______','A、a<>0
B、!a
C、a=0
D、a','D、a','5','4','5',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('39','单选题','已知有double型变量x=2.5,y=4.7,整型变量a=7,  则表达式 x+a%3*(int)(x+y)%2/4 的值是_______','A、2.4
B、2.5
C、2.75
D、0','B、2.5','5','5','5',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('40','判断题','一个C语言的执行是从本程序的第一个函数开始,到本程序的最后一个函数结束','A、正确
B、错误','B、错误','5','6','5',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('41','判断题','为了避免嵌套的if-else语句的二义性，C语言规定else总是与在其之前未配对的if组成配对关系.','A、正确
B、错误','B、错误','5','7','5',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('42','判断题','设x 、y 、z 、t均为int型变量,则执行以下语句后,t的值为1.  x=y=z=1;  t=++x || ++y && ++z;','A、正确
B、错误','A、正确','5','8','5',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('43','判断题','下面程序段的输出结果是输出错误信息.  x=3;  do { y=x--;  if (!y) {printf("*");continue;}  printf("#");  } while(x=2);','A、正确
B、错误','B、错误','5','9','5',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('44','判断题','下面程序段的运行结果是123.  int n=0;  while (n++<=2)  printf("%d",n);','A、正确
B、错误','A、正确','5','10','5',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('45','主观题','下面程序的运行结果是_______.  #include<stdio.h>  void main( )  { int a,b;  a=-1;  b=0;  do {  ++a;  ++a;  b+=a;  } while(a<9);  printf("%d
",b);  }','','25','8','11','5',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('46','主观题','以下函数的功能是：求x的y次方，请填空._______  #include<stdio.h>  void main()  { int i,x,y;  double z;  scanf("%d %d",&x,&y);  for(i=1,z=x;i<y;i++)  z=z*______ ;  printf("x^y=%e
",z);  }','','x','8','12','5',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('47','主观题','下面程序的输出结果是_____.  #include<stdio.h>  void main( )  { int i;  for(i=1;i<6;i++)  { if (i%2!=0) {printf("#");continue;}  printf("*");  }  printf("
");  }','','#*#*#','8','13','5',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('48','主观题','有如下程序  #include<stdio.h>  void main( )  { int n=9;  while(n>6) {n--;printf("%d",n);}  }  该程序段的输出结果是_____.','','876','8','14','5',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('49','主观题','阅读以下程序，程序运行后的输出结果是____.  #include<stdio.h>  void main( )  { int x;  for(x=5;x>0;x--)  if (x--<5) printf("%d,",x);  else printf("%d,",x++); }','','4,3,1','8','15','5',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('50','主观题','#include <stdio.h>  void main()  { int a[4][4]={{1,3,5,},{2,4,6},{3,5,7}};  printf("%d%d%d%d
",a[0][3],a[1][2],a[2][1],a[3][0]);  }，程序的输出结果是？','','0650','10','16','5',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
DROP TABLE IF EXISTS `user_answer`;
CREATE TABLE `user_answer` (
  `user_answer_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) NOT NULL COMMENT '用户ID：[0,8388607]用户获取其他与用户相关的数据',
  `exam_id` mediumint(8) NOT NULL DEFAULT '0' COMMENT '考试id',
  `score` double(8,2) DEFAULT '0.00' COMMENT '分数',
  `answers` varchar(1000) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '答案',
  `score_detail` varchar(1000) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '评分详情',
  `objective_score` double(8,2) DEFAULT '0.00' COMMENT '客观题得分',
  `subjective_score` double(8,2) DEFAULT '0.00' COMMENT '主观题得分',
  `score_state` tinyint(2) DEFAULT '0' COMMENT '评分状态',
  `nickname` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '提交人',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`user_answer_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
insert into `user_answer` values ('1','1','2','100','[{"exam_question_id":12,"answer":"A.1"},{"exam_question_id":13,"answer":["A.1","B.5"]},{"exam_question_id":14,"answer":"A.正确"},{"exam_question_id":15,"answer":"挂号费"},{"exam_question_id":16,"answer":"发货的共和国"}]','[{"exam_question_id":12,"score":10},{"exam_question_id":13,"score":20},{"exam_question_id":14,"score":30},{"exam_question_id":15,"score":20},{"exam_question_id":16,"score":20}]','60','40','1','admin',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `user_answer` values ('2','1','1','75','[{"exam_question_id":1,"answer":"C、新文档.DOC"},{"exam_question_id":2,"answer":"B、文档"},{"exam_question_id":3,"answer":"A、不显示dl.doc文档内容，但dl.doc文档并未关闭"},{"exam_question_id":4,"answer":["B、隐藏","A、只读"]},{"exam_question_id":5,"answer":["A、巨型机","B、便携机","C、微型机"]},{"exam_question_id":6,"answer":"B、错误"},{"exam_question_id":7,"answer":"A、正确"},{"exam_question_id":8,"answer":"B、错误"},{"exam_question_id":9,"answer":"页面尾部"},{"exam_question_id":10,"answer":"页面尾部"},{"exam_question_id":11,"answer":"我也不知道呀"}]','[{"exam_question_id":1,"score":10},{"exam_question_id":2,"score":10},{"exam_question_id":3,"score":10},{"exam_question_id":4,"score":10},{"exam_question_id":5,"score":10},{"exam_question_id":6,"score":5},{"exam_question_id":7,"score":5},{"exam_question_id":8,"score":5},{"exam_question_id":9,"score":0},{"exam_question_id":10,"score":10},{"exam_question_id":11,"score":0}]','65','10','1','admin',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `user_group` values ('1','100','管理员',null,'','','0',null,"2022-03-28 13:14:12.000 ","2022-03-28 13:14:12.000 ");
insert into `user_group` values ('2','100','游客',null,'','','0','0',"2022-03-28 13:14:12.000 ","2022-03-28 13:14:12.000 ");
insert into `user_group` values ('3','100','教师用户',null,'teacher_user','teacher_user_id','0','0',"2022-03-28 13:14:12.000 ","2022-03-28 13:14:12.000 ");
insert into `user_group` values ('4','100','学生用户',null,'student_user','student_user_id','0','3',"2022-03-28 13:14:12.000 ","2022-03-28 13:14:12.000 ");
insert into `slides` values ('1','轮播图1','内容1','/article/details?article=1','/api/upload/image_1646920060675.jpeg','936',"2022-03-28 13:14:12.000 ","2022-03-28 13:14:12.000 ");
insert into `slides` values ('2','轮播图2','内容2','/article/details?article=2','/api/upload/image_1646920060689.jpeg','144',"2022-03-28 13:14:12.000 ","2022-03-28 13:14:12.000 ");
insert into `slides` values ('3','轮播图3','内容3','/article/details?article=3','/api/upload/image_1646920060675.jpeg','264',"2022-03-28 13:14:12.000 ","2022-03-28 13:14:12.000 ");
insert into `slides` values ('4','轮播图4','内容4','/article/details?article=4','/api/upload/image_1646920060675.jpeg','733',"2022-03-28 13:14:12.000 ","2022-03-28 13:14:12.000 ");
insert into `article` values ('1','让爱与温暖照进孩子的心里 衡阳幼高专耒阳学院走进特殊学校','学校','708','0',"2022-03-28 13:14:12.000 ","2022-03-28 13:14:12.000 ",null,null,null,'<p>阳春三月万树青，正是致敬雷锋时。3月23日下午，阳光格外灿烂，衡阳幼高专耒阳学院的志愿者们怀揣着爱和关怀走进了耒阳市特殊学校。志愿者们的到来让整个学校顿时热闹了起来，灵动的舞姿，美妙的歌声，博得了孩子们的阵阵掌声，让这群孩子们感受到了春天的气息和生命的活力，拉进了彼此心灵的距离，整个校园变得特别温暖、有爱。活动最后，志愿者们将精心准备好的小礼物分发给了特殊学校的孩子们。</p><p><img src="http://n.sinaimg.cn/sinakd20210401ac/272/w640h432/20210401/ec44-knaqvqn9876034.jpg"></p><p><img src="http://n.sinaimg.cn/sinakd20210401ac/272/w640h432/20210401/dde1-knaqvqn9876037.jpg"></p><p><img src="http://n.sinaimg.cn/sinakd20210401ac/272/w640h432/20210401/4438-knaqvqn9876030.jpg"></p>','','2022年03月23日 12:51 新浪网');
insert into `article` values ('2','让爱与温暖照进孩子的心里 衡阳幼高专耒阳学院走进特殊学校','学校','805','0',"2022-03-28 13:14:12.000 ","2022-03-28 13:14:12.000 ",null,null,null,'<p>阳春三月万树青，正是致敬雷锋时。3月23日下午，阳光格外灿烂，衡阳幼高专耒阳学院的志愿者们怀揣着爱和关怀走进了耒阳市特殊学校。志愿者们的到来让整个学校顿时热闹了起来，灵动的舞姿，美妙的歌声，博得了孩子们的阵阵掌声，让这群孩子们感受到了春天的气息和生命的活力，拉进了彼此心灵的距离，整个校园变得特别温暖、有爱。活动最后，志愿者们将精心准备好的小礼物分发给了特殊学校的孩子们。</p><p><img src="http://n.sinaimg.cn/sinakd20210401ac/272/w640h432/20210401/ec44-knaqvqn9876034.jpg"></p><p><img src="http://n.sinaimg.cn/sinakd20210401ac/272/w640h432/20210401/dde1-knaqvqn9876037.jpg"></p><p><img src="http://n.sinaimg.cn/sinakd20210401ac/272/w640h432/20210401/4438-knaqvqn9876030.jpg"></p>','','2022年03月23日 12:51 新浪网');
insert into `article` values ('3','让爱与温暖照进孩子的心里 衡阳幼高专耒阳学院走进特殊学校','学校','37','0',"2022-03-28 13:14:12.000 ","2022-03-28 13:14:12.000 ",null,null,null,'<p>阳春三月万树青，正是致敬雷锋时。3月23日下午，阳光格外灿烂，衡阳幼高专耒阳学院的志愿者们怀揣着爱和关怀走进了耒阳市特殊学校。志愿者们的到来让整个学校顿时热闹了起来，灵动的舞姿，美妙的歌声，博得了孩子们的阵阵掌声，让这群孩子们感受到了春天的气息和生命的活力，拉进了彼此心灵的距离，整个校园变得特别温暖、有爱。活动最后，志愿者们将精心准备好的小礼物分发给了特殊学校的孩子们。</p><p><img src="http://n.sinaimg.cn/sinakd20210401ac/272/w640h432/20210401/ec44-knaqvqn9876034.jpg"></p><p><img src="http://n.sinaimg.cn/sinakd20210401ac/272/w640h432/20210401/dde1-knaqvqn9876037.jpg"></p><p><img src="http://n.sinaimg.cn/sinakd20210401ac/272/w640h432/20210401/4438-knaqvqn9876030.jpg"></p>','','2022年03月23日 12:51 新浪网');
insert into `article` values ('4','课堂设在乡村美景前！这所学校的“思政第一课”这么讲……','学校','393','0',"2022-03-28 13:14:12.000 ","2022-03-28 13:14:12.000 ",null,null,null,'<p>广州应用科技学院举办2021年春季学期校长“思政第一课”</p><p><strong>文/羊城晚报全媒体记者 陈亮</strong></p><p><strong>通讯员 李帆</strong></p><p>3月24日上午，广州应用科技学院举办2021年春季学期校长“思政第一课”。该校校长庞永师结合党史学习教育，为2020级美术学专业1班的同学现场授课。</p><p>与以往的课堂在教室不同的是，此次思政课设在了广州市增城区的乡村振兴示范点——小楼镇邓山村。</p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd2021324s/533/w800h533/20210324/612f-kmvwsvx6995196.png"></p><p>小楼镇邓山村</p><p>据悉，学校将党史学习教育融入新学期“书记、校长思政第一课”教学，把思政课堂搬到了邓山村党员广场，教育引导青年学生，把党的历史学习好、总结好、传承好、发扬好，从百年历程中传承红色基因，汲取继续前进的智慧和力量。</p><p>“1949年以后，中国扶贫从输血式扶贫、以工代赈到区域扶贫攻坚再到精准扶贫模式，使累计约7亿多农村贫困人口成功脱贫。到2020年底，新时代脱贫攻坚目标任务如期完成。2021年2月，国家乡村振兴局成立，中央一号文件提出全面推进乡村振兴，标志着中国扶贫工作将进入新阶段。”</p><p>站在邓山村的党员广场，庞永师校长给该校2020级美术学专业1班的同学介绍了“新农村建设”“精准扶贫攻坚”“乡村振兴”等一系列党的重大方针政策与战略。</p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd2021324s/533/w800h533/20210324/ccff-kmvwsvx6995193.png"></p><p>站在邓山村的党员广场，庞永师校长给同学们上思政课</p><p>据庞永师校长介绍，邓山村过去由于位置偏僻、交通落后，村民收入少，村里的年轻人想方设法离开山村，村里只剩下年迈的老人，导致村庄发展滞后。2019年，广州市政协选取邓山村作为帮扶试点村，制定了详细的帮扶试点工作方案，协助推进项目投资约5亿元，对标对表“全国一流、广州第一”的目标，着力打造名村建设示范点。</p><p>“不到两年时间，一个集旅游休闲、康养度假为一体的乡村振兴示范点火热建成，邓山村基础设施全面提升，村容村貌焕然一新。”现场讲课中，庞永师校长结合邓山村的建设发展，使学生感受党的领导与社会主义制度的优越性，坚定“四个自信”。</p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd2021324s/600/w800h600/20210324/107d-kmvwsvx6995290.png"></p><p>邓山村基础设施全面提升</p><p>据了解，该校艺术与传媒系与邓山村于2020年共同设立了教学实践基地，将通过村校合作，挖掘地方文化资源，与邓山村携手推进和实施乡村振兴战略。</p><p>“近年来，在乡村振兴国家战略指导下，很多大学生也在积极参与振兴乡村的社会实践活动。大学生在乡村振兴中扮演了什么样的角色？给乡村带去哪些变化？如何才能做得更好？”庞永师为同学们留下了几道“课堂作业”问题进行思考交流。</p><p>同学们表示，通过这堂特殊的思政课，让大家切身感受到中国共产党坚强有力的领导，感受到独特体制的显著优势，亲眼目睹了乡村振兴的显著变化，也深刻体会到青年学生是强国一代，要在奋斗与奉献中实现自我。</p>','','2022年03月23日 12:51 新浪网');
insert into `article` values ('5','金溪仰山学校：课堂展风采 教研促成长（图）','学校','851','0',"2022-03-28 13:14:12.000 ","2022-03-28 13:14:12.000 ",null,null,null,'<p>大江网/抚州头条客户端讯 通讯员<strong>王谷平</strong>报道：为了提高教师课堂教学水平，追求课堂教学的有效性，打造高效课堂，近日，金溪县仰山学校开展了精彩的数学组教学研讨活动。</p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd2021319s/33/w500h333/20210319/31f4-kmrcukz0380047.jpg"><strong>精彩的课堂王谷平提供</strong></p><p>此次教研由该校五年级数学教师陈红执教《分数的产生和意义》。课堂上，学生通过动手操作分别找出了圆、正方形，线段等，教师自然而又巧妙地诠释了本节课重难点。陈红对教材把握精准，紧扣学科要素，课堂扎实有效，营造轻松的课堂氛围，特别是在小组建设上，培养了学生自主学习能力、合作能力及团队意识。</p><p>课后，全体数学老师对课堂进行了点评，既肯定了课堂展现的亮点，又对陈红的困惑发表了自己的见解。该校校长黄国胜充分肯定了陈红精湛的教学能力，丰富的教学经验及扎实的教学基本功，为老师们树立了榜样。</p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd2021319s/33/w500h333/20210319/f138-kmrcukz0380048.jpg"><strong>教师们在录播室听课王谷平提供</strong></p><p><br></p>','','2022年03月23日 12:51 新浪网');
insert into `article` values ('6','北大附小石景山学校落实评价总体方案 夯实课堂教学实效','学校','787','0',"2022-03-28 13:14:12.000 ","2022-03-28 13:14:12.000 ",null,null,null,'<p class="ql-align-justify">北京大学附属小学石景山学校为深化课堂教学实效性，落实《新时代教育评价改革总体方案》，在对方案进行解读和深度理解的基础上，对学校已有的教学评价指标，进行了关注教师专业化和学生课堂生成的对标细化和修订。开学后，针对新评价方案的实施和促进教研组备课能力的提升，学校开展了为期两周的青年教师研究课展示及课堂有效评价教学研讨活动。10位入职三年以内的青年教师承担研究课，所有教师参与本学科及跨学科的听评课活动。</p><p><img src="https://pics6.baidu.com/feed/d62a6059252dd42a6184c69cd81f67bdc9eab821.png?token=bf3e8f6504e5ac147dbd86b78fa46397&amp;s=C91A479A4C3605AF94187809030070D0" width="640"></p><p class="ql-align-justify"><strong>积极准备</strong></p><p class="ql-align-justify">开学前，根据教学计划部署本次活动的意义和实施方式，10位青年教师以积极、主动、认真的态度进行了为期一周的备课与试讲，各教研组全程参与指导磨课。</p><p><img src="https://pics7.baidu.com/feed/b3b7d0a20cf431adc4dd3870921290a72edd981c.png?token=ac84a5da4a8f565372b36391531038a3&amp;s=9E6045824CB225AFBCADCD5C03005093" width="640"></p><p class="ql-align-justify"><strong>精彩呈现</strong></p><p class="ql-align-justify">经过精心的准备，开学第二周，涵盖7个学科的10节研究课呈现在全校老师面前。每位老师都在课堂中展现出了个人的教学特点，引领着学生们阅读、实验、思考……每一节课均各具特色，同时引发了听课教师对学科教学的思考、评议。</p><p><img src="https://pics7.baidu.com/feed/0d338744ebf81a4c47a1f84c0e0e5c51242da654.png?token=9509606c824dec6457766ac9aa698cf0&amp;s=828061A4448729EB0C9D08F00300C012" width="640"></p><p class="ql-align-justify"><strong>科学评价</strong></p><p class="ql-align-justify">本次活动特别关注教科研的过程性生成，全校教师共听课343节次，每位教师通过网络平台对所听课进行对标评议，经计算共收集有效评课样本320条。随后，教师发展中心将所有评课信息进行整理、归纳，形成了10份客观、详细的课堂教学诊断报告。</p><p><img src="https://pics6.baidu.com/feed/d62a6059252dd42ad4b90b93d81f67bdc9eab807.png?token=69c888893cd57de8581b4fe9daf760ad&amp;s=CF92DBAE8C9605EB14B5A89A03005013" width="640"></p><p class="ql-align-justify"><strong>专家引领</strong></p><p class="ql-align-justify">本次活动对于青年教师的专业成长起到了良好促进作用，活动进程中，学校特邀请了书法、体育学科的教学专家参与听评课，让学科团队与专家面对面进行说课议课。为了深化我校的体育和传统文化课程的纵深研究，借此活动之际，特成立了书法学科“杨跃西工作室”和体育学科“郭金贵特级教师工作室”，并在两位资深教学专家的引领下，我们的教学团队深入课堂研究，促进学科素养的整体提升。</p><p><img src="https://pics7.baidu.com/feed/d8f9d72a6059252dfb902fe4ebbf3f335ab5b973.png?token=1ef7d01eb3dca50d9b9dfc34ae82c4f2&amp;s=5C92D8BE4C97BDE972B1D1AE03005001" width="640"></p><p class="ql-align-justify"><strong>总结反思</strong></p><p class="ql-align-justify">经过了为期三周的备课、上课、评课和数据分析，在活动结束后，学校召开了教学总结会。教学副校长焦倩对此次活动进行了全面细致地点评，带领全体教师回顾了此次活动的意义、目的及达成情况。结合评价数据分析了青年教师课堂教学中呈现的优势和问题。同时，从320份教学评价中选取了有代表性的评议，引导老师们思考如何根据评价细则更加科学、精准地进行本学科和跨学科的课堂评价。最后，焦校长借用习主席在中国工程院院士大会上的讲话内容鼓励并帮助大家明确课堂教学及专业化提升意义，鼓励青年教师要练就过硬的教学基本功，锻炼自身的关键核心能力。</p><p><img src="https://pics3.baidu.com/feed/0df431adcbef7609d0486857f7f99fc47dd99e60.png?token=63695b54db52944af04577dc2b58ec54&amp;s=172748A24B361FAF06A745B80300501E" width="640"></p><p class="ql-align-justify">最后，北大附小石景山学校执行校长张志宏做活动总结。张校长从三个层面引领老师们反思。首先，身为教师要有敬业之心，教学工作要以专业为重；第二，备课时要坚持科学性、严谨性原则，精准把握教材；第三，要坚持“提质为目标，落实在课堂，坚持常态化，学科间共融”的理念上好课，育好人。</p><p><img src="https://pics3.baidu.com/feed/e1fe9925bc315c609bba887d5795f71b49547726.png?token=877ed55c1a0c7ef8e52c49d10d6c456c&amp;s=0D705C84424420FE5A90853703000043" width="640"></p><p class="ql-align-justify">北京大学附属小学石景山学校本次活动只是课堂教学评价研究的起点，我们将把握优势，直面问题，以科学严谨的态度和“一竿子插到底”的精神做好教学工作，做到课程全面育人。</p><p><br></p>','','2022年03月23日 12:51 新浪网');
insert into `article` values ('7','教智融合云端一体—星洋学校小学部“三大工程”课堂教学展示活动','学校','305','0',"2022-03-28 13:14:12.000 ","2022-03-28 13:14:12.000 ",null,null,null,'<p>为切实推进园区教育“教智融合深化年”的活动开展，充分发挥学校党员、骨干、行政的示范、先锋、领航作用。2021年3月16日～18日，苏州工业园区星洋学校小学部开展了主题为“教智融合，云端一体”的“三大工程”课堂教学展示活动。本次活动共有19位老师进行了课堂教学展示，涉及到语文、数学、英语、音乐、体育、美术、信息、劳技等学科。</p><p>活动中，来自语文学科的向日萍、高小梅、丁鲁笑老师分别执教了《肥皂泡》《杨氏之子》《骑鹅旅行记》。教学中，向老师重点指导学生学习抓关键词和想象画面的学习策略读懂课文，感受肥皂泡的美丽与可爱。高老师以读为基本路径，努力让学生在读中理解，读中感悟。丁老师紧扣单元语文要素，聚焦略读课文的阅读提示，巧借结构聚合图梳理主要情节。英语学科的吴骏老师执教的是《My day》，吴老师通过线上线下相结合的各种游戏，帮助学生高效巩固了教学重难点。又利用思维导图，帮助学生复述课文。周福娟老师执教的是五年级劳技《小鹿书签》一课，教学中通过看一看、拆一拆、试一试的方法让学生探究小鹿的穿编规律掌握穿编技巧。整堂课充实有趣，学生们乐在其中。景淑丽老师执教的是五年级美术《多彩的民族传统纹样》，她以传统纹样八角纹为切入口，从八角纹的文化寓意到各民族八角纹样式欣赏，再运用分割法设计现代感八角纹。陈春晖、戎光苏老师分别执教了音乐课《芦笛》《京调》。陈老师在教学中由浅入深，由简至繁，层层递进教唱扎实。戎老师的教学自信大方，学生课堂参与度很高，教学过程生动而高效。</p><p><img src="http://n.sinaimg.cn/sinakd20108/290/w1080h810/20210322/8694-kmrcukz7015960.png"></p><p><img src="http://n.sinaimg.cn/sinakd20108/290/w1080h810/20210322/74d7-kmrcukz7016151.png"></p><p><img src="http://n.sinaimg.cn/sinakd20108/290/w1080h810/20210322/ef7a-kmrcukz7016289.png"></p><p><img src="http://n.sinaimg.cn/sinakd20108/200/w1080h720/20210322/29f2-kmrcukz7016367.png"></p><p>本次展示活动中，数学老师参与的积极性最高，共展示了6节高质量的课堂教学。童晓花老师执教《分数的意义》，教学中关注技术与教学的融合创新。刘珊珊老师在《浸没问题》一课的教学中通过仿真实验、模型以及小组的讨论交流启发学生观察、发现水面以下物体体积与上升部分体积的关系，建立浸没问题的等量关系模型，并引导学生应用模型解决简单的问题。纪亚老师教学《圆柱、圆锥的整理与练习》一课时，注重引导学生正确有条理地通过思维导图进行整理，结合学生的描述同时借助媒体的直观演示，使学生对圆柱和圆锥的计算公式的推导过程与转化思想有了更为明晰的认识。王军老师执教的是《认识三角形》，教学中突出学生主体性，通过动手操作、合作交流，建构三角形的数学模型，促进学生数学核心素养的提升。夏小进老师在《用方向和距离确定位置》一课的教学中让大家感受到了执教者对数学、儿童以及教学的思考在不断深入，彰显了对学习的理解和把握。刘亚芳老师执教的是《认识长方形和正方形》，整个教学过程都以学生自主学习为主，学生通过量一量、折一折、比一比等方法了解长方形和正方形的特征。</p><p><img src="http://n.sinaimg.cn/sinakd20108/200/w1080h720/20210322/dbdc-kmrcukz7016394.png"></p><p><img src="http://n.sinaimg.cn/sinakd20108/290/w1080h810/20210322/c458-kmrcukz7016426.png"></p><p><img src="http://n.sinaimg.cn/sinakd20108/290/w1080h810/20210322/ebfa-kmrcukz7016529.jpg"></p>','','2022年03月23日 12:51 新浪网');
insert into `article` values ('8','让爱与温暖照进孩子的心里 衡阳幼高专耒阳学院走进特殊学校','学校','942','0',"2022-03-28 13:14:12.000 ","2022-03-28 13:14:12.000 ",null,null,null,'<p>阳春三月万树青，正是致敬雷锋时。3月23日下午，阳光格外灿烂，衡阳幼高专耒阳学院的志愿者们怀揣着爱和关怀走进了耒阳市特殊学校。志愿者们的到来让整个学校顿时热闹了起来，灵动的舞姿，美妙的歌声，博得了孩子们的阵阵掌声，让这群孩子们感受到了春天的气息和生命的活力，拉进了彼此心灵的距离，整个校园变得特别温暖、有爱。活动最后，志愿者们将精心准备好的小礼物分发给了特殊学校的孩子们。</p><p><img src="http://n.sinaimg.cn/sinakd20210401ac/272/w640h432/20210401/ec44-knaqvqn9876034.jpg"></p><p><img src="http://n.sinaimg.cn/sinakd20210401ac/272/w640h432/20210401/dde1-knaqvqn9876037.jpg"></p><p><img src="http://n.sinaimg.cn/sinakd20210401ac/272/w640h432/20210401/4438-knaqvqn9876030.jpg"></p>','','2022年03月23日 12:51 新浪网');
insert into `article` values ('9','河南张村老艺人孙宝水把非遗泥塑送进滨州市实验学校课堂','学校','728','0',"2022-03-28 13:14:12.000 ","2022-03-28 13:14:12.000 ",null,null,null,'<p>3月10日，火把李庙会之前，惠民县河南张村的泥娃娃老艺人孙宝水到滨州市实验学校，向孩子们传授泥娃娃传统的上色技艺。</p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd2021320s/290/w1080h810/20210320/e5af-kmrcukz2922169.png"></p><p>滨州实验学校是滨州市开展泥娃娃教学最好的学校，专门设有非遗进课堂的教学项目，教授美术的孙波老师也是一位泥娃娃研究者。收集了全国各地的泥娃娃，为孩子们横向比较各种娃娃的差异。尤其是对惠民县的河南张泥娃娃具有独到的见解，走进非遗教室，展架上摆满了全国各地的泥娃娃，孙波老师在课堂上详细讲解河南张泥娃娃的制作过程，教授学生们制作模具、脱泥娃娃、上色等工艺。既传承了滨州市唯一的泥娃娃非遗项目，又拓展了教学内容，丰富了同学们的阅历，教学过程生动活泼。</p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd2021320s/126/w1080h646/20210320/f48e-kmrcukz2922167.png"></p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd2021320s/12/w1080h532/20210320/127b-kmrcukz2922273.png"></p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd2021320s/165/w1080h685/20210320/16a5-kmrcukz2922274.png"></p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd2021320s/753/w1080h473/20210320/9e84-kmrcukz2922308.png"></p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd2021320s/769/w1080h489/20210320/4b50-kmrcukz2922310.png"></p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd2021320s/100/w1080h620/20210320/ddb1-kmrcukz2922347.png"></p><p>河南张村的泥娃娃老艺人孙宝水也是一位制作传统泥娃娃的高手，他家里从祖辈开始就制作“小泥活”，作品包括“泥狗狗”、“泥猫咪”、小相公、弥勒佛等这些小泥活，完全是用红泥制作的，外型变化多端非常可爱，是河南张村保留很少的“小泥活”的发起之家。</p><p>孙宝水已经70多岁了，在非遗课堂上演示了用鸡蛋黄加鲜艳的传统颜料为泥娃娃上色的绝活。由于传统颜料是水性色，可以勾画出非常精细的线条，不像油漆那样拖不开笔，可以将非常小的娃娃刻画的很精致，增加了小娃娃的卖相。大杜村的杜翠，也是利用水性色的精细刻画优点，提高销售量的。7厘米高的“小相公”经过孙宝水大爷的刻画产生了画龙点睛的效果，观赏性骤然提高。</p><p>孙宝水不顾晕车的不适，忙了一上午，中午简单吃饭后，下午仍然坚持为孩子们授课，演示使用传统颜料上色，还辅导孩子们脱模。为了传授泥娃娃制作技术，孙宝水也是拼尽了全力。</p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd2021320s/290/w1080h810/20210320/0d8a-kmrcukz2922348.png"></p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd2021320s/290/w1080h810/20210320/da36-kmrcukz2922412.png"></p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd2021320s/60/w1080h580/20210320/8bfe-kmrcukz2922405.png"></p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd2021320s/746/w1080h466/20210320/ed33-kmrcukz2922475.png"></p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd2021320s/722/w1080h442/20210320/1854-kmrcukz2922476.png"></p><p class="ql-align-center">这种黑色的娃娃是河南淮阳的“泥泥狗”，是一种古化石级的艺术形式，代表着一种原始符号</p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd2021320s/188/w1080h708/20210320/5bac-kmrcukz2922538.png"></p><p class="ql-align-center">这个“画模”虽然只有核桃大小，却生动刻画出两只狮子相互撕咬的场面。</p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd2021320s/427/w1018h1809/20210320/1baf-kmrcukz2922544.png"></p><p class="ql-align-center">双脸的陶娃。</p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd2021320s/119/w1080h1439/20210320/b823-kmrcukz2922638.png"></p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd2021320s/119/w1080h1439/20210320/2035-kmrcukz2922636.png"></p><p class="ql-align-center">经过孙宝水上色的小娃娃。</p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd2021320s/119/w1080h1439/20210320/d4da-kmrcukz2922735.png"></p><p class="ql-align-center">经孙宝水上色后的小泥活。</p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd2021320s/490/w1080h1010/20210320/6614-kmrcukz2922730.png"></p><p class="ql-align-center">泥猫咪。</p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd2021320s/312/w1080h832/20210320/f85d-kmrcukz2922798.png"></p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd2021320s/119/w1080h1439/20210320/5c3f-kmrcukz2922801.png"></p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd2021320s/290/w1080h810/20210320/b315-kmrcukz2922871.png"><strong>杜增香（杜翠）的小娃娃。</strong></p><p><br></p>','','2022年03月23日 12:51 新浪网');
insert into `article` values ('10','北大附小石景山学校落实评价总体方案 夯实课堂教学实效','学校','109','0',"2022-03-28 13:14:12.000 ","2022-03-28 13:14:12.000 ",null,null,null,'<p class="ql-align-justify">北京大学附属小学石景山学校为深化课堂教学实效性，落实《新时代教育评价改革总体方案》，在对方案进行解读和深度理解的基础上，对学校已有的教学评价指标，进行了关注教师专业化和学生课堂生成的对标细化和修订。开学后，针对新评价方案的实施和促进教研组备课能力的提升，学校开展了为期两周的青年教师研究课展示及课堂有效评价教学研讨活动。10位入职三年以内的青年教师承担研究课，所有教师参与本学科及跨学科的听评课活动。</p><p><img src="https://pics6.baidu.com/feed/d62a6059252dd42a6184c69cd81f67bdc9eab821.png?token=bf3e8f6504e5ac147dbd86b78fa46397&amp;s=C91A479A4C3605AF94187809030070D0" width="640"></p><p class="ql-align-justify"><strong>积极准备</strong></p><p class="ql-align-justify">开学前，根据教学计划部署本次活动的意义和实施方式，10位青年教师以积极、主动、认真的态度进行了为期一周的备课与试讲，各教研组全程参与指导磨课。</p><p><img src="https://pics7.baidu.com/feed/b3b7d0a20cf431adc4dd3870921290a72edd981c.png?token=ac84a5da4a8f565372b36391531038a3&amp;s=9E6045824CB225AFBCADCD5C03005093" width="640"></p><p class="ql-align-justify"><strong>精彩呈现</strong></p><p class="ql-align-justify">经过精心的准备，开学第二周，涵盖7个学科的10节研究课呈现在全校老师面前。每位老师都在课堂中展现出了个人的教学特点，引领着学生们阅读、实验、思考……每一节课均各具特色，同时引发了听课教师对学科教学的思考、评议。</p><p><img src="https://pics7.baidu.com/feed/0d338744ebf81a4c47a1f84c0e0e5c51242da654.png?token=9509606c824dec6457766ac9aa698cf0&amp;s=828061A4448729EB0C9D08F00300C012" width="640"></p><p class="ql-align-justify"><strong>科学评价</strong></p><p class="ql-align-justify">本次活动特别关注教科研的过程性生成，全校教师共听课343节次，每位教师通过网络平台对所听课进行对标评议，经计算共收集有效评课样本320条。随后，教师发展中心将所有评课信息进行整理、归纳，形成了10份客观、详细的课堂教学诊断报告。</p><p><img src="https://pics6.baidu.com/feed/d62a6059252dd42ad4b90b93d81f67bdc9eab807.png?token=69c888893cd57de8581b4fe9daf760ad&amp;s=CF92DBAE8C9605EB14B5A89A03005013" width="640"></p><p class="ql-align-justify"><strong>专家引领</strong></p><p class="ql-align-justify">本次活动对于青年教师的专业成长起到了良好促进作用，活动进程中，学校特邀请了书法、体育学科的教学专家参与听评课，让学科团队与专家面对面进行说课议课。为了深化我校的体育和传统文化课程的纵深研究，借此活动之际，特成立了书法学科“杨跃西工作室”和体育学科“郭金贵特级教师工作室”，并在两位资深教学专家的引领下，我们的教学团队深入课堂研究，促进学科素养的整体提升。</p><p><img src="https://pics7.baidu.com/feed/d8f9d72a6059252dfb902fe4ebbf3f335ab5b973.png?token=1ef7d01eb3dca50d9b9dfc34ae82c4f2&amp;s=5C92D8BE4C97BDE972B1D1AE03005001" width="640"></p><p class="ql-align-justify"><strong>总结反思</strong></p><p class="ql-align-justify">经过了为期三周的备课、上课、评课和数据分析，在活动结束后，学校召开了教学总结会。教学副校长焦倩对此次活动进行了全面细致地点评，带领全体教师回顾了此次活动的意义、目的及达成情况。结合评价数据分析了青年教师课堂教学中呈现的优势和问题。同时，从320份教学评价中选取了有代表性的评议，引导老师们思考如何根据评价细则更加科学、精准地进行本学科和跨学科的课堂评价。最后，焦校长借用习主席在中国工程院院士大会上的讲话内容鼓励并帮助大家明确课堂教学及专业化提升意义，鼓励青年教师要练就过硬的教学基本功，锻炼自身的关键核心能力。</p><p><img src="https://pics3.baidu.com/feed/0df431adcbef7609d0486857f7f99fc47dd99e60.png?token=63695b54db52944af04577dc2b58ec54&amp;s=172748A24B361FAF06A745B80300501E" width="640"></p><p class="ql-align-justify">最后，北大附小石景山学校执行校长张志宏做活动总结。张校长从三个层面引领老师们反思。首先，身为教师要有敬业之心，教学工作要以专业为重；第二，备课时要坚持科学性、严谨性原则，精准把握教材；第三，要坚持“提质为目标，落实在课堂，坚持常态化，学科间共融”的理念上好课，育好人。</p><p><img src="https://pics3.baidu.com/feed/e1fe9925bc315c609bba887d5795f71b49547726.png?token=877ed55c1a0c7ef8e52c49d10d6c456c&amp;s=0D705C84424420FE5A90853703000043" width="640"></p><p class="ql-align-justify">北京大学附属小学石景山学校本次活动只是课堂教学评价研究的起点，我们将把握优势，直面问题，以科学严谨的态度和“一竿子插到底”的精神做好教学工作，做到课程全面育人。</p><p><br></p>','','2022年03月23日 12:51 新浪网');
insert into `article_type` values ('1','100','学校','0',null,null,null,"2022-03-28 13:14:12.000 ","2022-03-28 13:14:12.000 ");
