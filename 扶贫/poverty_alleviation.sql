create database poverty_alleviation charset=utf8;

use poverty_alleviation;

-- ----------------------------
-- Table structure for alleviation
-- ----------------------------
DROP TABLE IF EXISTS `alleviation`;
CREATE TABLE `poverty_alleviation`.`alleviation`  (
  `id` bigint(20) NOT NULL DEFAULT 0 COMMENT '主键',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_sinhala_ci NULL DEFAULT NULL COMMENT '标题',
  `type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_sinhala_ci NULL DEFAULT NULL COMMENT '扶贫类型',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_sinhala_ci NULL COMMENT '扶贫内容',
  `release_time` int(11) NULL DEFAULT NULL COMMENT '发布时间',
  `cover` varchar(550) CHARACTER SET utf8mb4 COLLATE utf8mb4_sinhala_ci NULL DEFAULT NULL COMMENT '封面',
  `last_click_time` datetime(0) NULL DEFAULT NULL COMMENT '最近点击时间',
  `click_num` int(11) NULL DEFAULT NULL COMMENT '点击次数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_sinhala_ci COMMENT = '扶贫政策' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of alleviation
-- ----------------------------
INSERT INTO `alleviation` VALUES (1, '2022-03-31 12:55:08', '1', '贫困', '家中受洪水', 2022, 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fwww.chengduvip.cn%2Fdata%2Fupload%2Fimage%2FNews%2F2017%2F02%2Fb%2F58aa2b9e2d3b2.jpeg&refer=http%3A%2F%2Fwww.chengduvip.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1651290469&t=5914d5b7b5842385df0f55a74a876d9c', '2022-03-29 16:46:46', 400);
INSERT INTO `alleviation` VALUES (2, '2022-03-31 12:55:30', '2', '疫情', '发洪水', 2022, 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fp3.pccoo.cn%2Fnews%2F20151001%2F2015100110251025609609.jpg&refer=http%3A%2F%2Fp3.pccoo.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1651290502&t=5f2c479e03a168a0e8bad1a460c534a8', '2022-01-30 21:23:41', 567);
INSERT INTO `alleviation` VALUES (3, '2022-03-31 12:55:40', '1', '虫灾', '树木被破坏', 2012, 'https://img1.baidu.com/it/u=3385456665,3468503093&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=333', '2012-01-24 06:15:41', 342);
INSERT INTO `alleviation` VALUES (4, '2022-03-31 12:55:48', '3', '生病', '得病', 2005, 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fdingyue.ws.126.net%2F2020%2F0501%2Fb115fad1p00q9mffg00jed200m800etg00i900c5.png&refer=http%3A%2F%2Fdingyue.ws.126.net&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1651290534&t=870d3fbef4e0dc1b83704fa1cc883a4a', '2005-03-30 21:26:02', 678);
INSERT INTO `alleviation` VALUES (5, '2022-03-31 12:55:53', '2', '贫困', '家中受洪水', 2022, 'https://img2.baidu.com/it/u=2894496598,1497666170&fm=253&fmt=auto&app=138&f=JPEG?w=690&h=460', '2005-03-30 21:26:02', 678);

-- ----------------------------
-- Table structure for collection
-- ----------------------------
DROP TABLE IF EXISTS `collection`;
CREATE TABLE `collection`  (
  `id` bigint(20) NOT NULL DEFAULT 0 COMMENT '主键',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '用户id',
  `ref_id` bigint(20) NULL DEFAULT NULL COMMENT '收藏id',
  `table_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_sinhala_ci NULL DEFAULT NULL COMMENT '表名',
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_sinhala_ci NULL DEFAULT NULL COMMENT '收藏名称',
  `picture` varchar(550) CHARACTER SET utf8mb4 COLLATE utf8mb4_sinhala_ci NULL DEFAULT NULL COMMENT '收藏图片',
  `type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_sinhala_ci NULL DEFAULT NULL COMMENT '类型（1:收藏;2:点赞;3:踩）',
  `recommend_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_sinhala_ci NULL DEFAULT NULL COMMENT '推荐类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_sinhala_ci COMMENT = '收藏' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of collection
-- ----------------------------
INSERT INTO `collection` VALUES (1, '2022-04-07 16:44:27', 1, 1, '艘船', '易烊千玺', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fblog%2F202106%2F20%2F20210620220940_94114.thumb.1000_0.jpg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1651288839&t=898657195b2b75005985344ecb28bf4e', '赞', '推荐');
INSERT INTO `collection` VALUES (2, '2022-04-07 16:44:27', 2, 2, '香锅', '迪丽热巴', 'https://img1.baidu.com/it/u=1251304868,2272658182&fm=253&fmt=auto&app=138&f=JPEG?w=308&h=500', '可', '推荐');
INSERT INTO `collection` VALUES (3, '2022-04-07 16:44:27', 5, 3, '可爱', '欧阳娜娜', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Falcdn.img.xiaoka.tv%2F20200511%2Fe26%2F79f%2F10173657%2Fe2679fe0a461214cefc8597f70780390.jpg%401e_1c_0o_0l_600h_800w_90q_1pr.jpg&refer=http%3A%2F%2Falcdn.img.xiaoka.tv&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1651288944&t=071a9e114f658449bdc5405879539089', '看', '推荐');
INSERT INTO `collection` VALUES (4, '2022-04-07 16:44:27', 3, 1, '想你', '玛卡巴卡', 'https://img0.baidu.com/it/u=1372085595,1449241426&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=501', '是', '推荐');
INSERT INTO `collection` VALUES (5, '2022-04-07 16:44:27', 4, 2, '麻辣', '依古比古', 'https://img2.baidu.com/it/u=1339699816,1156338298&fm=253&fmt=auto&app=138&f=JPEG?w=490&h=324', '以', '推荐');

-- ----------------------------
-- Table structure for message_board
-- ----------------------------
DROP TABLE IF EXISTS `message_board`;
CREATE TABLE `message_board`  (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '用户id',
  `username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_sinhala_ci NULL DEFAULT NULL COMMENT '用户名',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_sinhala_ci NULL COMMENT '留言内容',
  `picture` varchar(550) CHARACTER SET utf8mb4 COLLATE utf8mb4_sinhala_ci NULL DEFAULT NULL COMMENT '留言图片',
  `reply` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_sinhala_ci NULL COMMENT '回复内容',
  `reply_picture` varchar(5500) CHARACTER SET utf8mb4 COLLATE utf8mb4_sinhala_ci NULL DEFAULT NULL COMMENT '回复图片',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_sinhala_ci COMMENT = '留言板' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of message_board
-- ----------------------------
INSERT INTO `message_board` VALUES (1, '2022-03-31 13:03:04', 3, '跑不掉', '可以', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fwww.chengduvip.cn%2Fdata%2Fupload%2Fimage%2FNews%2F2017%2F02%2Fb%2F58aa2b9e2d3b2.jpeg&refer=http%3A%2F%2Fwww.chengduvip.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1651290469&t=5914d5b7b5842385df0f55a74a876d9c', '抗击疫情', '完美');
INSERT INTO `message_board` VALUES (2, '2022-03-31 13:02:58', 2, '掀你头盖骨', '可以', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fp3.pccoo.cn%2Fnews%2F20151001%2F2015100110251025609609.jpg&refer=http%3A%2F%2Fp3.pccoo.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1651290502&t=5f2c479e03a168a0e8bad1a460c534a8', '抗击疫情', '完美');
INSERT INTO `message_board` VALUES (3, '2022-03-31 13:02:29', 1, '姐比你厉害', '可以', 'https://img1.baidu.com/it/u=3385456665,3468503093&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=333', '抗击疫情', '完美');
INSERT INTO `message_board` VALUES (4, '2022-03-31 13:03:15', 5, '桃之妖妖', '可以', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fdingyue.ws.126.net%2F2020%2F0501%2Fb115fad1p00q9mffg00jed200m800etg00i900c5.png&refer=http%3A%2F%2Fdingyue.ws.126.net&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1651290534&t=870d3fbef4e0dc1b83704fa1cc883a4a', '抗击疫情', '完美');
INSERT INTO `message_board` VALUES (5, '2022-03-31 13:03:11', 4, '余生嫚嫚', '可以', 'https://img2.baidu.com/it/u=2894496598,1497666170&fm=253&fmt=auto&app=138&f=JPEG?w=690&h=460', '抗击疫情', '完美');

-- ----------------------------
-- Table structure for poor
-- ----------------------------
DROP TABLE IF EXISTS `poor`;
CREATE TABLE `poor`  (
  `id` bigint(20) NOT NULL DEFAULT 0 COMMENT '主键',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `sn` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_sinhala_ci NULL DEFAULT NULL COMMENT '编号',
  `member` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_sinhala_ci NULL DEFAULT NULL COMMENT '家庭成员',
  `number` int(11) NULL DEFAULT NULL COMMENT '家庭成员人数',
  `address` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_sinhala_ci NULL DEFAULT NULL COMMENT '家庭住址',
  `condition` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_sinhala_ci NULL COMMENT '家庭状况',
  `cover` varchar(550) CHARACTER SET utf8mb4 COLLATE utf8mb4_sinhala_ci NULL DEFAULT NULL COMMENT '封面',
  `income` int(11) NULL DEFAULT NULL COMMENT '人均收入',
  `introduce` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_sinhala_ci NULL COMMENT '详细介绍',
  `username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_sinhala_ci NULL DEFAULT NULL COMMENT '账号',
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_sinhala_ci NULL DEFAULT NULL COMMENT '姓名',
  `audit` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_sinhala_ci NULL DEFAULT NULL COMMENT '是否审核',
  `reply` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_sinhala_ci NULL COMMENT '审核回复',
  `last_click_time` datetime(0) NULL DEFAULT NULL COMMENT '最近一次点击时间',
  `click_num` int(11) NULL DEFAULT NULL COMMENT '点击次数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_sinhala_ci COMMENT = '贫困户' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of poor
-- ----------------------------
INSERT INTO `poor` VALUES (1, '2022-03-31 13:05:17', '12345', '刘达', 4, '武义县', '贫困', 'https://img1.baidu.com/it/u=1596755683,2736766138&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=667', 2000, '就是很突然', '34234', '刘晓晓', '是', '通过', '2022-03-28 16:49:19', 6097);
INSERT INTO `poor` VALUES (2, '2022-03-31 13:05:37', '13452', '李晓红', 1, '荥阳市', '贫困', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2F5b0988e595225.cdn.sohucs.com%2Fq_70%2Cc_zoom%2Cw_640%2Fimages%2F20181122%2Fd1c903c4b3d84cdfa05e6d5fd4e018d7.jpeg&refer=http%3A%2F%2F5b0988e595225.cdn.sohucs.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1651295110&t=f98c9b75f7efdb7582c710f1079af69e', 3000, '就是很突然', '34234', '刘满满', '是', '通过', '2022-03-28 16:49:19', 2536);
INSERT INTO `poor` VALUES (3, '2022-03-31 13:05:55', '13453', '陈静', 2, '唐河县', '贫困', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2F5b0988e595225.cdn.sohucs.com%2Fimages%2F20181117%2Ff67d9d9c249b4fee846a95096e16b8d0.jpeg&refer=http%3A%2F%2F5b0988e595225.cdn.sohucs.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1651295145&t=1a2d23b66f1ed6ee1b3d3cf3ec4987cc', 1800, '就是很突然', '34234', '穆芊芊', '是', '通过', '2022-03-28 16:49:19', 3762);
INSERT INTO `poor` VALUES (4, '2022-03-31 13:06:11', '13454', '李达', 4, '河南省新乡市', '贫困', 'https://img1.baidu.com/it/u=742913900,152945255&fm=253&fmt=auto&app=138&f=JPEG?w=658&h=500', 1750, '就是很突然', '34234', '段嘉许', '是', '通过', '2022-03-28 16:49:19', 3827);
INSERT INTO `poor` VALUES (5, '2022-03-31 13:06:26', '13452', '金宇', 5, '河南省南阳市', '贫困', 'https://img2.baidu.com/it/u=1119598434,1128091435&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=665', 3500, '就是很突然', '34234', '桑智', '是', '通过', '2022-03-28 16:49:19', 3764);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint(20) NOT NULL DEFAULT 0 COMMENT '主键',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_sinhala_ci NOT NULL COMMENT '账户名',
  `password` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_sinhala_ci NOT NULL COMMENT '密码',
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_sinhala_ci NULL DEFAULT NULL COMMENT '姓名',
  `age` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_sinhala_ci NULL DEFAULT NULL COMMENT '年龄',
  `gender` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_sinhala_ci NULL DEFAULT NULL COMMENT '性别',
  `phone` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_sinhala_ci NULL DEFAULT NULL COMMENT '电话',
  `email` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_sinhala_ci NULL DEFAULT NULL COMMENT '邮箱',
  `photo` varchar(550) CHARACTER SET utf8mb4 COLLATE utf8mb4_sinhala_ci NULL DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_sinhala_ci COMMENT = '用户' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '2022-03-30 16:53:32', '姐比你厉害', '23323', '邱同学', '18', '女', '13839670384', '3334273598@qq.com', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201603%2F11%2F20160311212012_RZmsL.thumb.1000_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1651288440&t=5fdd795e02286c12bb4ab2595964a4ff');
INSERT INTO `user` VALUES (2, '2022-03-31 13:02:44', '掀你头盖骨', '53262', '楠楠同学', '16', '女', '13003160331', '2386496111@qq.com', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fpic.baike.soso.com%2Fp%2F20101108%2F20101108160056-1620231282.jpg&refer=http%3A%2F%2Fpic.baike.soso.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1651288501&t=4ec4cb4b1bb192e8588d0f6252ab719a');
INSERT INTO `user` VALUES (3, '2022-03-30 16:53:32', '跑不掉', '19733', '萍萍同学', '18', '女', '13728346373', '2958577357@qq.com', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201811%2F20%2F20181120194256_M3mdT.thumb.700_0.jpeg&refer=http%3A%2F%2Fb-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1651288521&t=b64cbbb08e53f40c28031f05e85150a8');
INSERT INTO `user` VALUES (4, '2022-03-30 16:53:32', '余生嫚嫚', '38493', '王同学', '16', '男', '13256372636', '635702657@qq.com', 'https://img1.baidu.com/it/u=2311573315,2117322364&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500');
INSERT INTO `user` VALUES (5, '2022-03-30 16:53:32', '桃之妖妖', '48657', '刘同学', '16', '男', '15273637736', '253676478@qq.com', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fdingyue.ws.126.net%2F4loKcmtyIK3AHhHtA11UUzQZPxdlDaqjpticOFCUkzN3E1553467386587.jpeg&refer=http%3A%2F%2Fdingyue.ws.126.net&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1651288581&t=ff8e02932a548f3cb4156ae727e843e1');

-- ----------------------------
-- Table structure for volunteer_recruitment
-- ----------------------------
DROP TABLE IF EXISTS `volunteer_recruitment`;
CREATE TABLE `volunteer_recruitment`  (
  `id` bigint(20) NOT NULL DEFAULT 0 COMMENT '主键',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `total` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_sinhala_ci NULL DEFAULT NULL COMMENT '招牌标题',
  `position` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_sinhala_ci NULL DEFAULT NULL COMMENT '职位',
  `work_require` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_sinhala_ci NULL COMMENT '招聘要求',
  `work_salary` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_sinhala_ci NULL DEFAULT NULL COMMENT '工资待遇',
  `work_place` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_sinhala_ci NULL DEFAULT NULL COMMENT '工作地点',
  `work_time` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_sinhala_ci NULL DEFAULT NULL COMMENT '工作时间',
  `recruits_num` int(11) NULL DEFAULT NULL COMMENT '招聘人数',
  `recruits_time` date NULL DEFAULT NULL COMMENT '招聘时间',
  `recruits_end_time` date NULL DEFAULT NULL COMMENT '招聘截止时间',
  `lead` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_sinhala_ci NULL DEFAULT NULL COMMENT '负责人',
  `contact` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_sinhala_ci NULL DEFAULT NULL COMMENT '联系方式',
  `picture` varchar(550) CHARACTER SET utf8mb4 COLLATE utf8mb4_sinhala_ci NULL DEFAULT NULL COMMENT '图片',
  `release_date` date NULL DEFAULT NULL COMMENT '发布日期',
  `last_click_time` datetime(0) NULL DEFAULT NULL COMMENT '最近点击时间',
  `click_num` int(11) NULL DEFAULT NULL COMMENT '点击次数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_sinhala_ci COMMENT = '志愿者招聘' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of volunteer_recruitment
-- ----------------------------
INSERT INTO `volunteer_recruitment` VALUES (1, '2022-03-31 13:07:41', '3', '抗洪', '吃苦耐劳', '志愿者', '青少年', '2021', 3, '2022-03-29', '2022-03-29', '张小', '13835672345', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fqqpublic.qpic.cn%2Fqq_public%2F0%2F0-3210870043-3584C4E7A6BE7A92DF47FA59C15E9633%2F0%3Ffmt%3Djpg%26size%3D80%26h%3D505%26w%3D900%26ppv%3D1.jpg&refer=http%3A%2F%2Fqqpublic.qpic.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1651291233&t=550155cfb72720c9786c7758452aebc5', '2022-03-31', '2022-03-31 13:07:39', 4654576);
INSERT INTO `volunteer_recruitment` VALUES (3, '2022-03-31 13:07:45', '2', '抗洪', '认真负责', '志愿者', '青少年', '2021', 1, '2022-03-29', '2022-03-29', '李丽', '76543345', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fp5.itc.cn%2Fimages01%2F20220114%2F52bc66a2fcdb4c8891bd7cf9fc869532.jpeg&refer=http%3A%2F%2Fp5.itc.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1651291234&t=223afc5fc2f525eae7608be956441aa1', '2022-03-31', '2022-03-23 13:07:42', 4455677);
INSERT INTO `volunteer_recruitment` VALUES (4, '2022-03-31 13:07:49', '5', '抗洪', '任劳任怨', '志愿者', '未成年', '2021', 4, '2022-03-29', '2022-03-29', '白静', '7653476534', 'https://img1.baidu.com/it/u=3721752679,1106916260&fm=253&fmt=auto&app=120&f=JPEG?w=860&h=500', '2022-03-31', '2022-03-08 13:07:46', 678554);
INSERT INTO `volunteer_recruitment` VALUES (5, '2022-03-31 13:07:56', '6', '抗洪', '勤勤恳恳', '志愿者', '青少年', '2021', 5, '2022-03-29', '2022-03-29', '时艰', '459856745', 'https://img1.baidu.com/it/u=551547780,1946770554&fm=253&fmt=auto&app=138&f=JPEG?w=640&h=480', '2022-03-31', '2022-03-20 13:07:51', 433533);
INSERT INTO `volunteer_recruitment` VALUES (6, '2022-03-31 13:08:01', '4', '抗洪', '身强力壮', '服务者', '青年', '2021', 2, '2022-03-29', '2022-03-29', '张万森', '187654987', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fjiangsu.china.com.cn%2Fuploadfile%2F2020%2F0130%2F1580396078599538.jpg&refer=http%3A%2F%2Fjiangsu.china.com.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1651292540&t=a8721aebb49c76c9fef44dae608b5e9c', '2022-03-31', '2022-03-14 13:07:57', 6543465);

SET FOREIGN_KEY_CHECKS = 1;
