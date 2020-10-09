/*
Navicat MySQL Data Transfer

Source Server         : 120.131.6.144(mysql8.0)
Source Server Version : 80017
Source Host           : 120.131.6.144:3306
Source Database       : ovp

Target Server Type    : MYSQL
Target Server Version : 80017
File Encoding         : 65001

Date: 2020-09-27 16:16:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `activity`
-- ----------------------------
DROP TABLE IF EXISTS `activity`;
CREATE TABLE `activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '标题',
  `auther` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '作者',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '地点',
  `cover` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '封面图',
  `activitytime` datetime DEFAULT NULL COMMENT '活动时间',
  `organizer` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '主办单位',
  `detail` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '活动详情',
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '活动状态 0是正常1是下架',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `is_delete` int(11) DEFAULT NULL COMMENT '是否删除 0是未删除1是已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of activity
-- ----------------------------
INSERT INTO `activity` VALUES ('1', '新馆开放', '张老师', '火炬大道', null, null, '图书馆', '带好雨伞', '0', '2020-05-12 14:22:00', null, '1');
INSERT INTO `activity` VALUES ('2', '活动一', '给大哥', '是搭嘎十多个时高时低阿三哥是', '/static/uploadFile/image/banner1202005261733010.png', '2020-05-19 12:38:07', '搜嘎是个', '<p>三道杠三道杠三道杠收到广东省按个电视端ad 的</p>', '0', '2020-05-19 13:25:11', null, '1');
INSERT INTO `activity` VALUES ('3', '三道杠', '', '', '', '2020-05-19 13:39:03', '', '', '0', '2020-05-19 13:39:06', null, '1');
INSERT INTO `activity` VALUES ('4', '三道杠的', '十大歌手', '杀', '/static/uploadFile/image/404202005191342020.png', '2020-05-30 00:00:00', '三国杀', '<p>三道杠收到挂是搭嘎十多个</p>', '0', '2020-05-19 13:42:29', null, '1');
INSERT INTO `activity` VALUES ('5', null, null, null, null, null, null, null, '0', null, null, null);
INSERT INTO `activity` VALUES ('6', '三道杠给大哥', '', '的实施多个', '', '2020-05-19 14:39:03', '', '<p>是的归属感的故事大概</p>', '0', '2020-05-19 14:39:05', null, '1');
INSERT INTO `activity` VALUES ('7', '递归', '', '', '', '2020-05-19 15:08:54', '', '<p>递归三道杠山岗上的故事</p>', '0', '2020-05-19 15:08:57', null, '1');
INSERT INTO `activity` VALUES ('8', '搭嘎大纲', '', '', '', '2020-05-19 15:18:44', '', '<p>搭嘎大纲第三个撒个三道杠撒递归sad</p>', '0', '2020-05-19 15:18:50', null, '1');
INSERT INTO `activity` VALUES ('9', '是搭嘎十多个', '都是根深蒂固', '三道杠', '/static/uploadFile/image/404202005191522052.png', '2020-05-19 15:22:54', '三道杠', '<p><img src=\"../dev-api/static/uploadFile/image/电量202005200917039.png\" alt=\"\" width=\"200\" height=\"200\" />adsgsadg&nbsp;</p>', '1', '2020-05-19 15:22:59', null, '1');
INSERT INTO `activity` VALUES ('10', '的', '是的感受到', '是个', '/static/uploadFile/image/20191108103652_gfefqc90u3202006011034035.jpg', '2020-05-20 10:04:40', '三道杠', '<p>三道杠收到挂是搭嘎十多个</p>', '0', '2020-05-20 10:04:42', null, '1');
INSERT INTO `activity` VALUES ('11', '递归', '第三个', '', '', '2020-05-20 10:33:21', '', '<p>都是根深蒂固</p>', '0', '2020-05-20 10:33:22', null, '1');
INSERT INTO `activity` VALUES ('12', '的故事是个', '是搭嘎十多个', '是个', '/static/uploadFile/image/电量202005201036047.png', '2020-05-20 10:34:33', '十大歌手', '<p>第三个三国杀的搜嘎是个三道杠收到挂是搭嘎十多个<img src=\"../../dev-api/static/uploadFile/image/电量202005201039042.png\" /><img src=\"../../dev-api/static/uploadFile/image/杂志期刊202005201039042.png\" /><img src=\"../../dev-api/static/uploadFile/image/培训202005201039042.png\" /><img src=\"../../dev-api/static/uploadFile/image/摄影202005201039043.png\" /></p>', '0', '2020-05-20 10:34:51', null, '1');
INSERT INTO `activity` VALUES ('13', '读书活动', '撒郭德纲', '九江市图书馆一楼报告大厅', '/static/uploadFile/image/right_bottom_pic202006011152039.png', '2020-06-01 15:30:00', '九江市图书馆', '<p>山豆根山豆根山豆根山豆根山豆根山豆根是是的故事大纲盛顿国</p>', '0', '2020-06-01 11:53:48', null, '1');
INSERT INTO `activity` VALUES ('14', '九江市图书馆第三届古诗词大会线上报名', '死歌', '九江市图书馆寻庐小剧场', '/static/uploadFile/image/微信图片_20200611114151202006111147006.png', '2020-06-11 00:00:00', '九江市图书馆', '<p style=\"text-align: center;\">中华民族的传统文化源远流长，博大精深。经典古诗文作品，是中华传统文化的瑰宝，更是中华民族精神品格的真实写照。</p>\n<p><strong>活动对象：</strong>全体中小学生</p>\n<p><strong>活动时间：</strong><strong>2020</strong><strong>年6月20日开启首场比赛</strong></p>\n<p><strong>活动形式：</strong>活动分预赛、复赛、决赛进行小组赛</p>\n<p>预赛分8场，每场比赛有8组家庭进行对决；</p>\n<p>预赛取得前2名的家庭进入复赛</p>\n<p>（复赛2场，共16组家庭）；</p>\n<p>复赛取得前4名的家庭进入决赛</p>\n<p>（决赛1场，共8组家庭）</p>\n<p><strong>比赛方式：</strong>预赛每场比赛有三个环节，具体如下：</p>\n<p><strong>第一环节：</strong></p>\n<p>&ldquo;8进4&rdquo;&mdash;&mdash;8名选手上台比赛，完成8道必答题。得分排名前四的选手晋级。（如果有选手分数相同，无法确定前四名时，采取飞花令，依次淘汰。最终确定4名选手。下同。）</p>\n<p><strong>第二环节：</strong></p>\n<p>&ldquo;4进2&rdquo;&mdash;&mdash;4名选手参加比赛，题目类型为抢答题。在选手上一环节成绩基础上计分，分数排名前两名的选手晋级。</p>\n<p><strong>第三环节：</strong></p>\n<p>&ldquo;2进1&rdquo;&mdash;&mdash;此环节皆为必答题，两名选手依次答题，得分高者为本场比赛冠军。</p>\n<p><strong>&nbsp;</strong></p>', '0', '2020-06-02 08:57:50', null, '0');

-- ----------------------------
-- Table structure for `activity_user`
-- ----------------------------
DROP TABLE IF EXISTS `activity_user`;
CREATE TABLE `activity_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) DEFAULT NULL COMMENT '活动id',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '姓名',
  `phone` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '联系方式 手机号',
  `detail` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '其他',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `is_delete` int(11) DEFAULT NULL COMMENT '是否删除 0是未删除 1是已删除',
  PRIMARY KEY (`id`),
  KEY `activity_id_index` (`activity_id`),
  KEY `activity_id_phone_index` (`activity_id`,`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=362 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of activity_user
-- ----------------------------
INSERT INTO `activity_user` VALUES ('1', '9', 'dsgd', '15016464615', 'dgdg', '2020-05-19 16:41:23', null, '0');
INSERT INTO `activity_user` VALUES ('2', '14', '樟树', '13798478266', '缺一个上单', '2020-06-02 09:34:12', null, '0');
INSERT INTO `activity_user` VALUES ('3', '14', '樟树', '13798478266', '缺一个上单', '2020-06-02 09:34:23', null, '0');
INSERT INTO `activity_user` VALUES ('4', '14', '这个', '15866403976', '4949473818419194949', '2020-06-05 17:28:32', null, '0');
INSERT INTO `activity_user` VALUES ('5', '14', '九江', '13377777888', '无', '2020-06-09 10:28:04', null, '0');
INSERT INTO `activity_user` VALUES ('6', '14', '李四', '13767094798', '测试', '2020-06-11 11:57:55', null, '0');
INSERT INTO `activity_user` VALUES ('7', '14', '李四', '13767094798', '测试', '2020-06-11 11:58:01', null, '0');
INSERT INTO `activity_user` VALUES ('8', '13', '张恒', '15134554356', '九江', '2020-06-11 13:18:03', null, '0');
INSERT INTO `activity_user` VALUES ('9', '13', '张恒', '15134554356', '九江', '2020-06-11 13:18:05', null, '0');
INSERT INTO `activity_user` VALUES ('10', '14', '殷武', '17707928231', '小学和大家介绍介绍', '2020-06-11 14:53:43', null, '0');
INSERT INTO `activity_user` VALUES ('11', '14', '殷武', '17707928231', '小学和大家介绍介绍韩国哥哥哥哥和白白净净鞠躬感谢大家一直支持我们支持的', '2020-06-11 14:54:02', null, '0');
INSERT INTO `activity_user` VALUES ('12', '14', '刘浩哲', '13576224208', null, '2020-06-11 17:25:14', null, '0');
INSERT INTO `activity_user` VALUES ('13', '14', '周公哺', '13879281365', null, '2020-06-11 17:26:56', null, '0');
INSERT INTO `activity_user` VALUES ('14', '14', '周公哺', '13879281365', '九江小学八里湖校区二1班，陪同家长，龚思齐', '2020-06-11 17:29:13', null, '0');
INSERT INTO `activity_user` VALUES ('15', '14', '石云昊', '13870228574', '九江小学 四8班 陪同家长:杜荣娟', '2020-06-11 17:49:14', null, '0');
INSERT INTO `activity_user` VALUES ('16', '14', '徐子言', '15979989687', '东风小学五（四）班', '2020-06-11 18:09:34', null, '0');
INSERT INTO `activity_user` VALUES ('17', '14', '徐子言', '15979989687', '东风小学五（四）班', '2020-06-11 18:09:37', null, '0');
INSERT INTO `activity_user` VALUES ('18', '14', '廖常清', '19979267038', null, '2020-06-11 18:18:34', null, '0');
INSERT INTO `activity_user` VALUES ('19', '14', '廖常清', '19979267038', null, '2020-06-11 18:18:38', null, '0');
INSERT INTO `activity_user` VALUES ('20', '14', '廖常清', '19979267038', '九江外国语学校初一', '2020-06-11 18:38:24', null, '0');
INSERT INTO `activity_user` VALUES ('21', '14', '易浩轩', '13970246585', null, '2020-06-11 18:42:55', null, '0');
INSERT INTO `activity_user` VALUES ('22', '14', '胡铭轩', '18720134737', null, '2020-06-11 18:50:59', null, '0');
INSERT INTO `activity_user` VALUES ('23', '14', '胡铭轩', '18720134737', null, '2020-06-11 18:51:02', null, '0');
INSERT INTO `activity_user` VALUES ('24', '14', '张弘毅', '18370251188', '与爸爸张胜军一起参赛', '2020-06-11 19:45:09', null, '0');
INSERT INTO `activity_user` VALUES ('25', '14', '张弘毅', '18370251188', '与爸爸张胜军一起参赛', '2020-06-11 19:45:17', null, '0');
INSERT INTO `activity_user` VALUES ('26', '14', '齐周睿', '13407929502', null, '2020-06-11 20:11:52', null, '0');
INSERT INTO `activity_user` VALUES ('27', '14', '齐周睿', '13407929502', '双峰小学四（5）班', '2020-06-11 20:12:14', null, '0');
INSERT INTO `activity_user` VALUES ('28', '14', '刘昊雄', '18270200182', null, '2020-06-11 20:13:09', null, '0');
INSERT INTO `activity_user` VALUES ('29', '14', '聂沛尧', '15007020007', '九江小学二年级学生，陪同家长聂和明', '2020-06-11 20:16:31', null, '0');
INSERT INTO `activity_user` VALUES ('30', '14', '聂沛尧', '15007020007', '九江小学二年级学生，陪同家长聂和明', '2020-06-11 20:16:38', null, '0');
INSERT INTO `activity_user` VALUES ('31', '14', '聂沛尧', '15007020007', '九江小学二年级学生，陪同家长聂和明', '2020-06-11 20:16:40', null, '0');
INSERT INTO `activity_user` VALUES ('32', '14', '刘昊雄', '18270200182', '濂溪区一小五年级(5)班马英', '2020-06-11 20:17:02', null, '0');
INSERT INTO `activity_user` VALUES ('33', '14', '张弘毅', '18370251188', '濂溪区第二小学五年级二班。\n和爸爸张胜军一起参加。', '2020-06-11 20:19:41', null, '0');
INSERT INTO `activity_user` VALUES ('34', '14', '张凌畅', '13979298790', null, '2020-06-11 20:22:54', null, '0');
INSERT INTO `activity_user` VALUES ('35', '14', '张凌畅', '13979298790', null, '2020-06-11 20:23:03', null, '0');
INSERT INTO `activity_user` VALUES ('36', '14', '杨洁', '18279248861', '孩子姓名贺昭阳', '2020-06-11 20:47:25', null, '0');
INSERT INTO `activity_user` VALUES ('37', '14', '刘徐梓', '13915956614', '双峰小学 二年级 8岁', '2020-06-11 20:50:22', null, '0');
INSERT INTO `activity_user` VALUES ('38', '14', '赵菊君', '13979247510', null, '2020-06-11 21:06:00', null, '0');
INSERT INTO `activity_user` VALUES ('39', '14', '何烨宸', '18979233711', '母子组合', '2020-06-11 21:10:24', null, '0');
INSERT INTO `activity_user` VALUES ('40', '14', '何烨宸', '18979233711', '母子组合', '2020-06-11 21:10:30', null, '0');
INSERT INTO `activity_user` VALUES ('41', '14', '何烨宸', '18979233711', '双峰小学新，五年级，母亲章志红', '2020-06-11 21:11:36', null, '0');
INSERT INTO `activity_user` VALUES ('42', '14', '沈安旭', '15979900536', null, '2020-06-11 21:34:47', null, '0');
INSERT INTO `activity_user` VALUES ('43', '14', '江奕涵', '13755240300', '九江小学八里湖校区 五（4）班 熊雅静', '2020-06-11 21:40:37', null, '0');
INSERT INTO `activity_user` VALUES ('44', '14', '江奕涵', '13755240300', '九江小学八里湖校区 五（4）班 熊雅静', '2020-06-11 21:40:45', null, '0');
INSERT INTO `activity_user` VALUES ('45', '14', '江奕卓', '13755240300', '九江小学八里湖校区 二（3）班 熊雅静', '2020-06-11 21:41:14', null, '0');
INSERT INTO `activity_user` VALUES ('46', '14', '江奕卓', '13755240300', '九江小学八里湖校区 二（3）班 熊雅静', '2020-06-11 21:41:29', null, '0');
INSERT INTO `activity_user` VALUES ('47', '14', '钟李炘睿', '13970266353', null, '2020-06-11 21:56:22', null, '0');
INSERT INTO `activity_user` VALUES ('48', '14', '钟李炘睿', '13970266353', null, '2020-06-11 21:56:27', null, '0');
INSERT INTO `activity_user` VALUES ('49', '14', '黄琳茵', '15779234721', '', '2020-06-11 22:11:34', null, '0');
INSERT INTO `activity_user` VALUES ('50', '14', '黄琳茵', '15779234721', '', '2020-06-11 22:11:40', null, '0');
INSERT INTO `activity_user` VALUES ('51', '14', '黄琳茵', '15779234721', '', '2020-06-11 22:11:59', null, '0');
INSERT INTO `activity_user` VALUES ('52', '14', '金姝熹', '13687925279', null, '2020-06-11 22:13:38', null, '0');
INSERT INTO `activity_user` VALUES ('53', '14', '金姝熹', '13687925279', null, '2020-06-11 22:13:54', null, '0');
INSERT INTO `activity_user` VALUES ('54', '14', '黄靖钦', '13879290601', '九江小学八里湖校区一年级2班', '2020-06-11 22:16:26', null, '0');
INSERT INTO `activity_user` VALUES ('55', '14', '刘奕宁', '13870242105', null, '2020-06-11 22:19:37', null, '0');
INSERT INTO `activity_user` VALUES ('56', '14', '刘奕宁', '13870242105', null, '2020-06-11 22:19:41', null, '0');
INSERT INTO `activity_user` VALUES ('57', '14', '李姝妤', '13807027818', '九江国学养正堂大班', '2020-06-11 22:31:58', null, '0');
INSERT INTO `activity_user` VALUES ('58', '14', '李姝妤', '13807027818', '九江国学养正堂大班，陪同：妈妈钟桂芳', '2020-06-11 22:34:02', null, '0');
INSERT INTO `activity_user` VALUES ('59', '14', '金珊璨果', '15879263862', '', '2020-06-11 22:49:34', null, '0');
INSERT INTO `activity_user` VALUES ('60', '14', '金珊璨果', '15879263862', '', '2020-06-11 22:49:39', null, '0');
INSERT INTO `activity_user` VALUES ('61', '14', '黄祎涵', '18162257333', null, '2020-06-11 22:50:18', null, '0');
INSERT INTO `activity_user` VALUES ('62', '14', '金珊璨果', '15879263862', '九江市委机关幼儿园 中班 陪同人员 谢丹', '2020-06-11 23:01:10', null, '0');
INSERT INTO `activity_user` VALUES ('63', '14', '董婧婷', '15107921625', '东风小学二年级', '2020-06-12 00:02:10', null, '0');
INSERT INTO `activity_user` VALUES ('64', '14', '朱梓灏', '13755211655', null, '2020-06-12 04:59:38', null, '0');
INSERT INTO `activity_user` VALUES ('65', '14', '朱梓灏', '13755211655', null, '2020-06-12 04:59:45', null, '0');
INSERT INTO `activity_user` VALUES ('66', '14', '朱梓灏', '13755211655', '九江小学八里湖校区五年级 妈妈', '2020-06-12 05:02:55', null, '0');
INSERT INTO `activity_user` VALUES ('67', '14', '陈昊', '15870811949', '九江市经开区兴中学校五（5）班', '2020-06-12 05:36:11', null, '0');
INSERT INTO `activity_user` VALUES ('68', '14', '冯瑾瑜', '18079250905', null, '2020-06-12 06:14:06', null, '0');
INSERT INTO `activity_user` VALUES ('69', '14', '齐周睿', '13407929502', '双峰小学庾亮校区四（5）班，陪同家长周璇', '2020-06-12 06:15:55', null, '0');
INSERT INTO `activity_user` VALUES ('70', '14', '熊子萱', '18279227191', '11岁', '2020-06-12 08:15:10', null, '0');
INSERT INTO `activity_user` VALUES ('71', '14', '熊子萱', '18279227191', '11岁', '2020-06-12 08:16:04', null, '0');
INSERT INTO `activity_user` VALUES ('72', '14', '韩金嬉', '18779266992', '濂溪区第一小学三(八)班\n父亲:韩山勤   孩子:韩金嬉', '2020-06-12 08:55:07', null, '0');
INSERT INTO `activity_user` VALUES ('73', '14', '韩金嬉', '18779266992', '濂溪区第一小学三(八)班\n父亲:韩山勤   孩子:韩金嬉', '2020-06-12 08:55:18', null, '0');
INSERT INTO `activity_user` VALUES ('74', '14', '罗天舜', '18970238123', '九江小学八里湖校区四一中队', '2020-06-12 11:27:09', null, '0');
INSERT INTO `activity_user` VALUES ('75', '14', '金诗雯', '13970295505', null, '2020-06-12 11:37:37', null, '0');
INSERT INTO `activity_user` VALUES ('76', '14', '龚煜峰', '13870222489', null, '2020-06-12 14:21:44', null, '0');
INSERT INTO `activity_user` VALUES ('77', '14', '龚煜峰', '13870222489', '九江小学八里湖校区五年级', '2020-06-12 14:27:05', null, '0');
INSERT INTO `activity_user` VALUES ('78', '14', '刘毅恺', '13879279054', null, '2020-06-12 21:07:42', null, '0');
INSERT INTO `activity_user` VALUES ('79', '14', '夏伟铭', '15270280659', null, '2020-06-12 21:41:07', null, '0');
INSERT INTO `activity_user` VALUES ('80', '14', '夏伟铭', '15270280659', null, '2020-06-12 21:41:10', null, '0');
INSERT INTO `activity_user` VALUES ('81', '14', '夏伟铭', '15270280659', null, '2020-06-12 21:41:27', null, '0');
INSERT INTO `activity_user` VALUES ('82', '14', '夏伟铭', '15270280659', null, '2020-06-12 21:41:30', null, '0');
INSERT INTO `activity_user` VALUES ('83', '14', '李仪婷', '13870207538', null, '2020-06-12 22:29:44', null, '0');
INSERT INTO `activity_user` VALUES ('84', '14', '李仪婷', '13870207538', null, '2020-06-12 22:29:50', null, '0');
INSERT INTO `activity_user` VALUES ('85', '14', '颜上城', '18172935835', '湖滨小学，六（5）班，黄娟', '2020-06-12 22:45:26', null, '0');
INSERT INTO `activity_user` VALUES ('86', '14', '颜上城', '18172935835', null, '2020-06-12 22:48:02', null, '0');
INSERT INTO `activity_user` VALUES ('87', '14', '颜上城', '18172935835', null, '2020-06-12 22:48:05', null, '0');
INSERT INTO `activity_user` VALUES ('88', '14', '颜上城', '18172935835', null, '2020-06-12 22:48:09', null, '0');
INSERT INTO `activity_user` VALUES ('89', '14', '毛子谦', '13755241188', '长虹小学 四(2)班 \n陪同家长：毛国新 (父亲)', '2020-06-12 23:27:52', null, '0');
INSERT INTO `activity_user` VALUES ('90', '14', '毛子谦', '13755241188', '长虹小学 四(2)班 \n陪同家长：毛国新 (父亲)', '2020-06-12 23:27:59', null, '0');
INSERT INTO `activity_user` VALUES ('91', '14', '周子超', '13907925083', null, '2020-06-13 06:34:55', null, '0');
INSERT INTO `activity_user` VALUES ('92', '14', '王嫣', '18079209736', null, '2020-06-13 07:21:02', null, '0');
INSERT INTO `activity_user` VALUES ('93', '14', '吴宬熹', '18170238008', null, '2020-06-13 08:10:47', null, '0');
INSERT INTO `activity_user` VALUES ('94', '14', '吴宬熹', '18170238008', null, '2020-06-13 08:10:49', null, '0');
INSERT INTO `activity_user` VALUES ('95', '14', '左宛萌', '15270239652', '湖滨小学一（2）班', '2020-06-13 08:40:48', null, '0');
INSERT INTO `activity_user` VALUES ('96', '14', '左宛萌', '15270239652', '湖滨小学一（2）班', '2020-06-13 08:40:50', null, '0');
INSERT INTO `activity_user` VALUES ('97', '14', '左宛萌', '15270239652', '湖滨小学  一2班 家长：张念', '2020-06-13 08:42:38', null, '0');
INSERT INTO `activity_user` VALUES ('98', '14', '左宛萌', '15270239652', '湖滨小学  一2班 家长：张念', '2020-06-13 08:42:40', null, '0');
INSERT INTO `activity_user` VALUES ('99', '14', '程湖杨', '13970227337', null, '2020-06-13 10:27:06', null, '0');
INSERT INTO `activity_user` VALUES ('100', '14', '程湖杨', '13970227337', '学校：湖滨小学\n年级：四年级\n陪同人员：程玲琳', '2020-06-13 10:30:52', null, '0');
INSERT INTO `activity_user` VALUES ('101', '14', '胡歆野', '13970220220', '湖滨小学一(2)班\n陪同家长：卢钰玲', '2020-06-13 10:59:00', null, '0');
INSERT INTO `activity_user` VALUES ('102', '14', '胡歆野', '13970220220', '湖滨小学一(2)班\n陪同家长：卢钰玲', '2020-06-13 10:59:25', null, '0');
INSERT INTO `activity_user` VALUES ('103', '14', '曾泰荣', '18046823818', null, '2020-06-13 13:02:54', null, '0');
INSERT INTO `activity_user` VALUES ('104', '14', '冯娅杰', '13807927558', '长虹小学三年级五班', '2020-06-13 13:21:42', null, '0');
INSERT INTO `activity_user` VALUES ('105', '14', '冯娅杰', '13807927558', '长虹小学三年级五班', '2020-06-13 13:21:58', null, '0');
INSERT INTO `activity_user` VALUES ('106', '14', '冯娅杰', '13807927558', '长虹小学三年级五班', '2020-06-13 13:22:01', null, '0');
INSERT INTO `activity_user` VALUES ('107', '14', '吴子渊', '13879225920', null, '2020-06-13 14:49:46', null, '0');
INSERT INTO `activity_user` VALUES ('108', '14', '吴子渊', '13879225920', null, '2020-06-13 14:49:51', null, '0');
INSERT INTO `activity_user` VALUES ('109', '14', '李厚霖', '15180629428', '湖滨小学四3班', '2020-06-13 16:00:30', null, '0');
INSERT INTO `activity_user` VALUES ('110', '14', '李厚霖', '15180629428', '湖滨小学四3班', '2020-06-13 16:00:37', null, '0');
INSERT INTO `activity_user` VALUES ('111', '14', '李厚霖', '15180629428', '湖滨小学四3班', '2020-06-13 16:00:40', null, '0');
INSERT INTO `activity_user` VALUES ('112', '14', '江子恺', '15070237877', '湖滨小学6年级', '2020-06-13 17:12:28', null, '0');
INSERT INTO `activity_user` VALUES ('113', '14', '徐超', '15720971399', '湖滨小学四（6）学生', '2020-06-13 18:53:39', null, '0');
INSERT INTO `activity_user` VALUES ('114', '14', '徐超', '15720971399', '湖滨小学四（6）学生', '2020-06-13 18:53:44', null, '0');
INSERT INTO `activity_user` VALUES ('115', '14', '刘藩', '18179258951', null, '2020-06-13 19:17:29', null, '0');
INSERT INTO `activity_user` VALUES ('116', '14', '刘藩', '18179258951', null, '2020-06-13 19:17:34', null, '0');
INSERT INTO `activity_user` VALUES ('117', '14', '徐子涵', '13879299917', '小学5年级', '2020-06-13 21:32:00', null, '0');
INSERT INTO `activity_user` VALUES ('118', '14', '徐子涵', '13879299917', '小学5年级', '2020-06-13 21:32:03', null, '0');
INSERT INTO `activity_user` VALUES ('119', '14', '苏熙云', '15870813943', '苏敬乔', '2020-06-14 12:41:17', null, '0');
INSERT INTO `activity_user` VALUES ('120', '14', '张时豪', '13767276885', null, '2020-06-14 13:09:30', null, '0');
INSERT INTO `activity_user` VALUES ('121', '14', '张时豪', '13767276885', null, '2020-06-14 13:09:47', null, '0');
INSERT INTO `activity_user` VALUES ('122', '14', '张时豪', '13767276885', '双峰小学，一（5）班，陪同人员：张又文', '2020-06-14 13:12:17', null, '0');
INSERT INTO `activity_user` VALUES ('123', '14', '张梓琪', '15079317425', null, '2020-06-14 13:37:18', null, '0');
INSERT INTO `activity_user` VALUES ('124', '14', '张梓琪', '15079317425', null, '2020-06-14 13:37:23', null, '0');
INSERT INTO `activity_user` VALUES ('125', '14', '陈涵博', '13707927124', '湖滨小学四（9）班', '2020-06-14 15:07:35', null, '0');
INSERT INTO `activity_user` VALUES ('126', '14', '李宇乐', '18079207823', '柴桑小学二年级', '2020-06-14 18:57:36', null, '0');
INSERT INTO `activity_user` VALUES ('127', '14', '梁海田', '13507923590', '九江小学甘棠校区一年级', '2020-06-14 20:17:32', null, '0');
INSERT INTO `activity_user` VALUES ('128', '14', '梁海田', '13507923590', '九江小学甘棠校区一年级', '2020-06-14 20:17:37', null, '0');
INSERT INTO `activity_user` VALUES ('129', '14', '李雨融', '15979920166', null, '2020-06-14 22:00:40', null, '0');
INSERT INTO `activity_user` VALUES ('130', '14', '李雨融', '15979920166', null, '2020-06-14 22:00:54', null, '0');
INSERT INTO `activity_user` VALUES ('131', '14', '孙晚茹', '18679201073', '滨兴小学二（3）班    妈妈陪同', '2020-06-14 22:23:57', null, '0');
INSERT INTO `activity_user` VALUES ('132', '14', '孙晚茹', '18679201073', '滨兴小学二（3）班    妈妈陪同', '2020-06-14 22:24:04', null, '0');
INSERT INTO `activity_user` VALUES ('133', '14', '胡歆野', '15707929700', '湖滨小学一(2)班\n陪同家长：胡亮', '2020-06-14 22:35:29', null, '0');
INSERT INTO `activity_user` VALUES ('134', '14', '李玉航', '13707928620', '家长：李超', '2020-06-15 07:12:34', null, '0');
INSERT INTO `activity_user` VALUES ('135', '14', '李玉航', '13707928620', '家长：李超', '2020-06-15 07:12:38', null, '0');
INSERT INTO `activity_user` VALUES ('136', '14', '李玉航', '13707928620', '家长：李超', '2020-06-15 07:12:41', null, '0');
INSERT INTO `activity_user` VALUES ('137', '14', '李玉航', '13707928620', '湖滨小学五6班，家长：李超', '2020-06-15 07:14:22', null, '0');
INSERT INTO `activity_user` VALUES ('138', '14', '李玉航', '13707928620', '湖滨小学五6班，家长：李超', '2020-06-15 07:14:25', null, '0');
INSERT INTO `activity_user` VALUES ('139', '14', '李玉航', '13707928620', '湖滨小学五6班，家长：李超', '2020-06-15 07:14:27', null, '0');
INSERT INTO `activity_user` VALUES ('140', '14', '钱佳泓', '18160720202', null, '2020-06-15 07:20:48', null, '0');
INSERT INTO `activity_user` VALUES ('141', '14', '刘谨诚', '13607929073', '湖滨小学五(6)班\n陪同家长：章春燕', '2020-06-15 07:37:25', null, '0');
INSERT INTO `activity_user` VALUES ('142', '14', '谭翊涌', '13755244930', '湖滨小学五（6）班', '2020-06-15 07:46:38', null, '0');
INSERT INTO `activity_user` VALUES ('143', '14', '谭翊涌', '13755244930', '湖滨小学五（6）班', '2020-06-15 07:46:52', null, '0');
INSERT INTO `activity_user` VALUES ('144', '14', '王浦东', '18979271141', '姜莉莉', '2020-06-15 07:48:16', null, '0');
INSERT INTO `activity_user` VALUES ('145', '14', '王浦东', '18979271141', '姜莉莉', '2020-06-15 07:48:23', null, '0');
INSERT INTO `activity_user` VALUES ('146', '14', '张子墨', '13970279092', '湖滨小学五年级', '2020-06-15 08:44:11', null, '0');
INSERT INTO `activity_user` VALUES ('147', '14', '张子墨', '13970279092', '湖滨小学五年级', '2020-06-15 08:44:13', null, '0');
INSERT INTO `activity_user` VALUES ('148', '14', '钱佳泓', '18160720202', '湖滨小学一年级', '2020-06-15 08:48:24', null, '0');
INSERT INTO `activity_user` VALUES ('149', '14', '汪钰苏', '18679260592', '妈妈陪同', '2020-06-15 08:59:09', null, '0');
INSERT INTO `activity_user` VALUES ('150', '14', '汪钰苏', '18679260592', '妈妈陪同', '2020-06-15 08:59:15', null, '0');
INSERT INTO `activity_user` VALUES ('151', '14', '骆溶天', '15307921127', '湖滨小学五六班', '2020-06-15 10:33:41', null, '0');
INSERT INTO `activity_user` VALUES ('152', '14', '骆溶天', '15307921127', '湖滨小学五六班', '2020-06-15 10:33:46', null, '0');
INSERT INTO `activity_user` VALUES ('153', '14', '索衔彬', '18770922510', '湖滨小学五（6）班', '2020-06-15 11:04:29', null, '0');
INSERT INTO `activity_user` VALUES ('154', '14', '黄天赐', '15070209732', null, '2020-06-15 12:22:36', null, '0');
INSERT INTO `activity_user` VALUES ('155', '14', '梅骏杰', '18279212652', null, '2020-06-15 13:07:29', null, '0');
INSERT INTO `activity_user` VALUES ('156', '14', '沈静姝', '18779284699', null, '2020-06-15 13:41:35', null, '0');
INSERT INTO `activity_user` VALUES ('157', '14', '袁煊睿', '13979289527', '九江小学:二年级，陪同家长:袁清华', '2020-06-15 14:21:54', null, '0');
INSERT INTO `activity_user` VALUES ('158', '14', '贺思琪', '13979242382', '湖滨小学五（7）班', '2020-06-15 14:34:37', null, '0');
INSERT INTO `activity_user` VALUES ('159', '14', '史雨泽', '13970279022', null, '2020-06-15 14:37:39', null, '0');
INSERT INTO `activity_user` VALUES ('160', '14', '史雨泽', '13970279022', null, '2020-06-15 14:37:43', null, '0');
INSERT INTO `activity_user` VALUES ('161', '14', '王可馨', '13755229295', null, '2020-06-15 14:40:58', null, '0');
INSERT INTO `activity_user` VALUES ('162', '14', '吴易樽', '15170276766', '湖滨小学五年级7班吴剑飞', '2020-06-15 14:47:02', null, '0');
INSERT INTO `activity_user` VALUES ('163', '14', '代可馨', '18720293733', null, '2020-06-15 14:49:58', null, '0');
INSERT INTO `activity_user` VALUES ('164', '14', '沈静姝', '18779284699', null, '2020-06-15 14:53:50', null, '0');
INSERT INTO `activity_user` VALUES ('165', '14', '缪宇雯', '13607022072', '湖滨小学 五(7)班 陪同:妈妈', '2020-06-15 14:54:39', null, '0');
INSERT INTO `activity_user` VALUES ('166', '14', '缪宇雯', '13607022072', '湖滨小学 五(7)班 陪同:妈妈', '2020-06-15 14:54:47', null, '0');
INSERT INTO `activity_user` VALUES ('167', '14', '胡可盈', '15170967329', null, '2020-06-15 14:56:50', null, '0');
INSERT INTO `activity_user` VALUES ('168', '14', '沈静姝', '18779284699', '湖滨小学五年级   汪红春（妈妈）', '2020-06-15 14:57:29', null, '0');
INSERT INTO `activity_user` VALUES ('169', '14', '吴弈轩', '13979206485', null, '2020-06-15 14:58:02', null, '0');
INSERT INTO `activity_user` VALUES ('170', '14', '杨沛元', '18770259672', '', '2020-06-15 14:58:47', null, '0');
INSERT INTO `activity_user` VALUES ('171', '14', '潘馨然', '18720186612', '家长,但小利', '2020-06-15 15:04:28', null, '0');
INSERT INTO `activity_user` VALUES ('172', '14', '潘馨然', '18720186612', '家长,但小利', '2020-06-15 15:04:30', null, '0');
INSERT INTO `activity_user` VALUES ('173', '14', '张家睿', '15270569736', null, '2020-06-15 16:37:31', null, '0');
INSERT INTO `activity_user` VALUES ('174', '14', '张家睿', '15270569736', null, '2020-06-15 16:37:36', null, '0');
INSERT INTO `activity_user` VALUES ('175', '14', '张家睿', '15270569736', null, '2020-06-15 16:37:43', null, '0');
INSERT INTO `activity_user` VALUES ('176', '14', '华梓朗', '13407024163', null, '2020-06-15 16:40:37', null, '0');
INSERT INTO `activity_user` VALUES ('177', '14', '华梓朗', '13407024163', null, '2020-06-15 16:40:44', null, '0');
INSERT INTO `activity_user` VALUES ('178', '14', '杨丰玮', '18979239137', null, '2020-06-15 17:11:55', null, '0');
INSERT INTO `activity_user` VALUES ('179', '14', '黄天赐', '15070209732', '爸爸陪同', '2020-06-15 17:35:29', null, '0');
INSERT INTO `activity_user` VALUES ('180', '14', '黄天赐', '15070209732', '爸爸陪同', '2020-06-15 17:35:36', null, '0');
INSERT INTO `activity_user` VALUES ('181', '14', '张燎堃', '15779848355', '和妈妈一起参加', '2020-06-15 17:37:33', null, '0');
INSERT INTO `activity_user` VALUES ('182', '14', '刘煜辰', '13576225531', null, '2020-06-15 17:48:14', null, '0');
INSERT INTO `activity_user` VALUES ('183', '14', '武紫阳', '13803558783', null, '2020-06-15 17:55:45', null, '0');
INSERT INTO `activity_user` VALUES ('184', '14', '钟任飞', '13879200566', '湖滨小学本部三年级（4）班', '2020-06-15 18:17:17', null, '0');
INSERT INTO `activity_user` VALUES ('185', '14', '钟任飞', '13879200566', '湖滨小学本部三年级（4）班', '2020-06-15 18:17:22', null, '0');
INSERT INTO `activity_user` VALUES ('186', '14', '周思妤', '15079200453', null, '2020-06-15 18:51:56', null, '0');
INSERT INTO `activity_user` VALUES ('187', '14', '黄家玉', '13970240823', '13879270823', '2020-06-15 18:53:06', null, '0');
INSERT INTO `activity_user` VALUES ('188', '14', '李心悦', '15270282178', null, '2020-06-15 18:53:31', null, '0');
INSERT INTO `activity_user` VALUES ('189', '14', '黄家玉', '13879270823', '湖滨小学    三年级（9）班  黄辉（爸爸）', '2020-06-15 18:56:29', null, '0');
INSERT INTO `activity_user` VALUES ('190', '14', '刘在成', '18679261601', '湖滨小学，三（3）班，陈洁「家长」', '2020-06-15 18:56:32', null, '0');
INSERT INTO `activity_user` VALUES ('191', '14', '余知阳', '13879239016', null, '2020-06-15 19:09:20', null, '0');
INSERT INTO `activity_user` VALUES ('192', '14', '周怡然', '15879291712', '湖滨小学三年级，陪同家长刘珊', '2020-06-15 19:11:48', null, '0');
INSERT INTO `activity_user` VALUES ('193', '14', '周怡然', '15879291712', '湖滨小学三年级，陪同家长刘珊', '2020-06-15 19:11:53', null, '0');
INSERT INTO `activity_user` VALUES ('194', '14', '余知阳', '13879239016', null, '2020-06-15 19:18:15', null, '0');
INSERT INTO `activity_user` VALUES ('195', '14', '聂晨熙', '13970220018', null, '2020-06-15 20:13:40', null, '0');
INSERT INTO `activity_user` VALUES ('196', '14', '聂晨熙', '13970220018', null, '2020-06-15 20:13:54', null, '0');
INSERT INTO `activity_user` VALUES ('197', '14', '罗羽飞', '15979903509', '', '2020-06-15 20:21:34', null, '0');
INSERT INTO `activity_user` VALUES ('198', '14', '罗萌阳', '13870288016', '湖滨小学          一(7)班    陪同家长:吕艳', '2020-06-15 20:46:16', null, '0');
INSERT INTO `activity_user` VALUES ('199', '14', '周岐玮', '13870289555', null, '2020-06-15 20:47:23', null, '0');
INSERT INTO `activity_user` VALUES ('200', '14', '陶宇涵', '13970225095', '湖滨小学三九班', '2020-06-15 21:34:43', null, '0');
INSERT INTO `activity_user` VALUES ('201', '14', '陶宇涵', '13970225095', '湖滨小学三九班', '2020-06-15 21:34:47', null, '0');
INSERT INTO `activity_user` VALUES ('202', '14', '潘馨然', '18720186612', '家长:但小利', '2020-06-15 21:35:48', null, '0');
INSERT INTO `activity_user` VALUES ('203', '14', '张博宇', '18679238099', null, '2020-06-15 21:42:33', null, '0');
INSERT INTO `activity_user` VALUES ('204', '14', '张博宇', '18679238099', null, '2020-06-15 21:42:42', null, '0');
INSERT INTO `activity_user` VALUES ('205', '14', '余良建', '15270591111', null, '2020-06-15 21:43:56', null, '0');
INSERT INTO `activity_user` VALUES ('206', '14', '王卓睿', '18146603599', null, '2020-06-15 22:05:45', null, '0');
INSERT INTO `activity_user` VALUES ('207', '14', '王卓睿', '18146603599', null, '2020-06-15 22:06:48', null, '0');
INSERT INTO `activity_user` VALUES ('208', '14', '王卓睿', '18146603599', '湖滨小学三（9）班，家长爸爸：王金灿', '2020-06-15 22:15:35', null, '0');
INSERT INTO `activity_user` VALUES ('209', '14', '袁夕雯', '18679218899', null, '2020-06-16 00:06:46', null, '0');
INSERT INTO `activity_user` VALUES ('210', '14', '袁夕雯', '18679218899', null, '2020-06-16 00:06:51', null, '0');
INSERT INTO `activity_user` VALUES ('211', '14', '袁夕雯', '18679218899', null, '2020-06-16 00:09:30', null, '0');
INSERT INTO `activity_user` VALUES ('212', '14', '袁夕雯', '18679218899', '湖滨小学1（7）班，爸爸袁辉陪同参赛', '2020-06-16 00:21:58', null, '0');
INSERT INTO `activity_user` VALUES ('213', '14', '彭烨', '13979226670', '湖滨小学', '2020-06-16 06:05:38', null, '0');
INSERT INTO `activity_user` VALUES ('214', '14', '彭烨', '13979226670', '湖滨小学', '2020-06-16 06:05:43', null, '0');
INSERT INTO `activity_user` VALUES ('215', '14', '彭烨', '13979226670', '湖滨小学', '2020-06-16 06:06:03', null, '0');
INSERT INTO `activity_user` VALUES ('216', '14', '彭烨', '13979226670', '湖滨小学一年级', '2020-06-16 06:11:05', null, '0');
INSERT INTO `activity_user` VALUES ('217', '14', '彭烨', '13979226670', '湖滨小学一年级', '2020-06-16 06:11:08', null, '0');
INSERT INTO `activity_user` VALUES ('218', '14', '彭烨', '13979226670', '湖滨小学一年级', '2020-06-16 06:11:10', null, '0');
INSERT INTO `activity_user` VALUES ('219', '14', '谢李昊', '13979214111', null, '2020-06-16 07:01:46', null, '0');
INSERT INTO `activity_user` VALUES ('220', '14', '谢李昊', '13979214111', null, '2020-06-16 07:02:01', null, '0');
INSERT INTO `activity_user` VALUES ('221', '14', '谢李昊', '13979214111', null, '2020-06-16 07:02:04', null, '0');
INSERT INTO `activity_user` VALUES ('222', '14', '钟江明', '13879200566', '钟任飞  湖滨小学本部三年级（4）班', '2020-06-16 07:18:46', null, '0');
INSERT INTO `activity_user` VALUES ('223', '14', '钟江明', '13879200566', '钟任飞  湖滨小学本部三年级（4）班', '2020-06-16 07:19:00', null, '0');
INSERT INTO `activity_user` VALUES ('224', '14', '潘馨然', '18720186612', '家长:但小利（湖滨小学五7班）', '2020-06-16 07:19:23', null, '0');
INSERT INTO `activity_user` VALUES ('225', '14', '陈文星', '13970220018', null, '2020-06-16 07:35:24', null, '0');
INSERT INTO `activity_user` VALUES ('226', '14', '聂晨熙', '13970220018', '湖滨小学一年级7班\n陪同家长陈文星', '2020-06-16 07:38:02', null, '0');
INSERT INTO `activity_user` VALUES ('227', '14', '蔡欣妍', '13767212386', '湖滨小学三年级3班', '2020-06-16 07:47:19', null, '0');
INSERT INTO `activity_user` VALUES ('228', '14', '蔡欣妍', '13767212386', '湖滨小学三年级3班', '2020-06-16 07:47:46', null, '0');
INSERT INTO `activity_user` VALUES ('229', '14', '余良建', '15270591111', '湖滨小学.三（5）班', '2020-06-16 07:49:19', null, '0');
INSERT INTO `activity_user` VALUES ('230', '14', '周岐玮', '13870289555', '湖滨小学一年级14班陪同家长李媛', '2020-06-16 08:26:51', null, '0');
INSERT INTO `activity_user` VALUES ('231', '14', '汤语妃', '13755267997', null, '2020-06-16 08:36:28', null, '0');
INSERT INTO `activity_user` VALUES ('232', '14', '汪梓宁', '13407028080', null, '2020-06-16 08:41:10', null, '0');
INSERT INTO `activity_user` VALUES ('233', '14', '吴俊辰', '13870200966', '湖滨小学一(8)班', '2020-06-16 08:43:33', null, '0');
INSERT INTO `activity_user` VALUES ('234', '14', '吴俊辰', '13870200966', '湖滨小学一(8)班', '2020-06-16 08:43:37', null, '0');
INSERT INTO `activity_user` VALUES ('235', '14', '傅敏学', '17779233069', '湖滨小学一年级', '2020-06-16 08:55:45', null, '0');
INSERT INTO `activity_user` VALUES ('236', '14', '傅敏学', '17779233069', '湖滨小学一年级', '2020-06-16 08:55:50', null, '0');
INSERT INTO `activity_user` VALUES ('237', '14', '傅敏学', '17779233069', '湖滨小学一年级', '2020-06-16 08:55:54', null, '0');
INSERT INTO `activity_user` VALUES ('238', '14', '黄天赐', '15070209732', '湖滨小学五六班爸爸陪同', '2020-06-16 09:05:30', null, '0');
INSERT INTO `activity_user` VALUES ('239', '14', '黄天赐', '15070209732', '湖滨小学五六班爸爸陪同', '2020-06-16 09:05:47', null, '0');
INSERT INTO `activity_user` VALUES ('240', '14', '吴陈宇', '15807922620', null, '2020-06-16 09:10:01', null, '0');
INSERT INTO `activity_user` VALUES ('241', '14', '汪梓宁', '13407028080', null, '2020-06-16 09:12:47', null, '0');
INSERT INTO `activity_user` VALUES ('242', '14', '张家睿', '15270569736', '湖滨小学一年级', '2020-06-16 09:17:59', null, '0');
INSERT INTO `activity_user` VALUES ('243', '14', '王乾浩', '15007928949', '湖滨小学一年级', '2020-06-16 09:18:26', null, '0');
INSERT INTO `activity_user` VALUES ('244', '14', '张家睿', '15270569736', '九江市湖滨小学一年级12班', '2020-06-16 09:18:27', null, '0');
INSERT INTO `activity_user` VALUES ('245', '14', '彭健', '13803568965', null, '2020-06-16 09:39:10', null, '0');
INSERT INTO `activity_user` VALUES ('246', '14', '邹雨鑫', '15179279698', null, '2020-06-16 10:45:05', null, '0');
INSERT INTO `activity_user` VALUES ('247', '14', '邹雨鑫', '15179279698', '浔阳区湖滨小学一(15)班', '2020-06-16 10:45:43', null, '0');
INSERT INTO `activity_user` VALUES ('248', '14', '虞方瑾', '18170262613', null, '2020-06-16 10:46:43', null, '0');
INSERT INTO `activity_user` VALUES ('249', '14', '虞方瑾', '18170262613', null, '2020-06-16 10:46:47', null, '0');
INSERT INTO `activity_user` VALUES ('250', '14', '虞方瑾', '18170262613', null, '2020-06-16 10:47:00', null, '0');
INSERT INTO `activity_user` VALUES ('251', '14', '虞方瑾', '18170262613', '五年级', '2020-06-16 10:48:36', null, '0');
INSERT INTO `activity_user` VALUES ('252', '14', '石语芯', '15949560100', '湖滨小学', '2020-06-16 11:31:13', null, '0');
INSERT INTO `activity_user` VALUES ('253', '14', '蔡勃森', '15979928012', null, '2020-06-16 11:33:18', null, '0');
INSERT INTO `activity_user` VALUES ('254', '14', '张清昀', '13907928579', null, '2020-06-16 11:36:12', null, '0');
INSERT INTO `activity_user` VALUES ('255', '14', '黄骐跃', '13767214231', '小学三年级', '2020-06-16 12:07:02', null, '0');
INSERT INTO `activity_user` VALUES ('256', '14', '余文茜', '13970279827', '湖滨小学三（5）班', '2020-06-16 12:46:37', null, '0');
INSERT INTO `activity_user` VALUES ('257', '14', '余文茜', '13970279827', '湖滨小学三（5）班', '2020-06-16 12:46:45', null, '0');
INSERT INTO `activity_user` VALUES ('258', '14', '余文茜', '13970279827', '湖滨小学三（5）班', '2020-06-16 12:46:48', null, '0');
INSERT INTO `activity_user` VALUES ('259', '14', '余文茜', '13970279827', '湖滨小学三（5）班', '2020-06-16 12:46:59', null, '0');
INSERT INTO `activity_user` VALUES ('260', '14', '李思涵', '18607921710', '湖滨小学一(6)班 陪同参赛家长姓名：廖凤', '2020-06-16 12:51:34', null, '0');
INSERT INTO `activity_user` VALUES ('261', '14', '樊沈延', '13755276061', '无', '2020-06-16 13:06:19', null, '0');
INSERT INTO `activity_user` VALUES ('262', '14', '樊沈延', '13755276061', '无', '2020-06-16 13:06:22', null, '0');
INSERT INTO `activity_user` VALUES ('263', '14', '余良建', '15270591111', '', '2020-06-16 13:13:06', null, '0');
INSERT INTO `activity_user` VALUES ('264', '14', '王基淦', '18720169881', null, '2020-06-16 13:15:10', null, '0');
INSERT INTO `activity_user` VALUES ('265', '14', '王基淦', '18720169881', null, '2020-06-16 13:15:15', null, '0');
INSERT INTO `activity_user` VALUES ('266', '14', '毛紫欣', '15170286277', '家庭参加', '2020-06-16 13:23:51', null, '0');
INSERT INTO `activity_user` VALUES ('267', '14', '毛紫欣', '15170286277', '家庭参加', '2020-06-16 13:24:05', null, '0');
INSERT INTO `activity_user` VALUES ('268', '14', '董思嘉', '18070209668', null, '2020-06-16 13:46:37', null, '0');
INSERT INTO `activity_user` VALUES ('269', '14', '董思嘉', '18070209668', null, '2020-06-16 13:46:44', null, '0');
INSERT INTO `activity_user` VALUES ('270', '14', '董思嘉', '18070209668', '陪同 ：母亲  陈亮华', '2020-06-16 13:48:29', null, '0');
INSERT INTO `activity_user` VALUES ('271', '14', '董思嘉', '18070209668', '湖滨小学一（7）班  家长：陈亮华', '2020-06-16 13:50:54', null, '0');
INSERT INTO `activity_user` VALUES ('272', '14', '张子睿', '15779850609', '湖滨小学五四班，妈妈彭秉华陪同', '2020-06-16 14:12:31', null, '0');
INSERT INTO `activity_user` VALUES ('273', '14', '张子睿', '15779850609', '湖滨小学五四班，妈妈彭秉华陪同', '2020-06-16 14:12:34', null, '0');
INSERT INTO `activity_user` VALUES ('274', '14', '唐一维', '13507021893', '18979273381', '2020-06-16 14:26:04', null, '0');
INSERT INTO `activity_user` VALUES ('275', '14', '唐一维', '13507021893', '18979273381', '2020-06-16 14:26:11', null, '0');
INSERT INTO `activity_user` VALUES ('276', '14', '唐一维', '13507021893', '18979273381', '2020-06-16 14:26:15', null, '0');
INSERT INTO `activity_user` VALUES ('277', '14', '唐一维', '18979273381', '湖滨小学五年级 黄欢', '2020-06-16 14:28:34', null, '0');
INSERT INTO `activity_user` VALUES ('278', '14', '唐一维', '18979273381', '湖滨小学五年级 黄欢', '2020-06-16 14:28:36', null, '0');
INSERT INTO `activity_user` VALUES ('279', '14', '陈玥辛', '18707021092', null, '2020-06-16 14:36:54', null, '0');
INSERT INTO `activity_user` VALUES ('280', '14', '陈玥辛', '18707021092', null, '2020-06-16 14:37:00', null, '0');
INSERT INTO `activity_user` VALUES ('281', '14', '骆溶天', '15307921127', '湖滨小学五六班', '2020-06-16 15:44:36', null, '0');
INSERT INTO `activity_user` VALUES ('282', '14', '骆溶天', '15307921127', '湖滨小学五六班', '2020-06-16 15:44:39', null, '0');
INSERT INTO `activity_user` VALUES ('283', '14', '骆溶天', '15307921127', '湖滨小学五六班', '2020-06-16 15:44:46', null, '0');
INSERT INTO `activity_user` VALUES ('284', '14', '蔡依桐', '18170234567', '妈妈陪蔡依桐一起参加', '2020-06-16 15:48:04', null, '0');
INSERT INTO `activity_user` VALUES ('285', '14', '蔡依桐', '18170234567', '妈妈陪蔡依桐一起参加', '2020-06-16 15:48:08', null, '0');
INSERT INTO `activity_user` VALUES ('286', '14', '蔡依桐', '18170234567', '妈妈陪蔡依桐一起参加', '2020-06-16 15:48:16', null, '0');
INSERT INTO `activity_user` VALUES ('287', '14', '蔡依桐', '18170234567', '妈妈陪蔡依桐一起参加', '2020-06-16 15:48:18', null, '0');
INSERT INTO `activity_user` VALUES ('288', '14', '冯子依', '13434056926', null, '2020-06-16 16:09:51', null, '0');
INSERT INTO `activity_user` VALUES ('289', '14', '许林鹏', '13979206667', null, '2020-06-16 16:50:50', null, '0');
INSERT INTO `activity_user` VALUES ('290', '14', '许林鹏', '13979206667', null, '2020-06-16 16:50:59', null, '0');
INSERT INTO `activity_user` VALUES ('291', '14', '许林鹏', '13979206667', null, '2020-06-16 16:51:05', null, '0');
INSERT INTO `activity_user` VALUES ('292', '14', '许林鹏', '13979206667', null, '2020-06-16 16:51:13', null, '0');
INSERT INTO `activity_user` VALUES ('293', '14', '许林鹏', '13979206667', null, '2020-06-16 16:51:16', null, '0');
INSERT INTO `activity_user` VALUES ('294', '14', '许林鹏', '13979206667', null, '2020-06-16 16:51:19', null, '0');
INSERT INTO `activity_user` VALUES ('295', '14', '许林鹏', '13979206667', null, '2020-06-16 16:51:25', null, '0');
INSERT INTO `activity_user` VALUES ('296', '14', '陈悠然', '13803566162', '湖滨小学五（4）班', '2020-06-16 17:20:18', null, '0');
INSERT INTO `activity_user` VALUES ('297', '14', '陈悠然', '13803566162', '湖滨小学五（4）班', '2020-06-16 17:21:18', null, '0');
INSERT INTO `activity_user` VALUES ('298', '14', '李欣洋', '18079222377', '湖滨小学 一年级 李可欣', '2020-06-16 17:45:00', null, '0');
INSERT INTO `activity_user` VALUES ('299', '14', '王绎棋', '13970223609', null, '2020-06-16 18:52:54', null, '0');
INSERT INTO `activity_user` VALUES ('300', '14', '闵晟杰', '15270578888', null, '2020-06-16 20:29:15', null, '0');
INSERT INTO `activity_user` VALUES ('301', '14', '高诗语', '18979277770', null, '2020-06-16 20:36:01', null, '0');
INSERT INTO `activity_user` VALUES ('302', '14', '马诗盈', '13970249087', null, '2020-06-16 20:38:20', null, '0');
INSERT INTO `activity_user` VALUES ('303', '14', '程子', '13755268744', '同组：程子父亲李德军', '2020-06-16 20:44:43', null, '0');
INSERT INTO `activity_user` VALUES ('304', '14', '刘鼎暄', '15170279606', '湖滨小学', '2020-06-17 08:52:58', null, '0');
INSERT INTO `activity_user` VALUES ('305', '14', '的第三个身高多是个大使馆是', '15070015793', '是根深蒂固三道杠是三国杀', '2020-06-17 09:37:47', null, '0');
INSERT INTO `activity_user` VALUES ('306', '14', '刘尉然', '13707923357', null, '2020-06-17 09:58:18', null, '0');
INSERT INTO `activity_user` VALUES ('307', '14', '涂予婷', '13479268046', '湖滨小学三年级，妈妈裴林华陪同', '2020-06-17 10:08:52', null, '0');
INSERT INTO `activity_user` VALUES ('308', '14', '周铭轩', '15179255626', '湖滨小学六年级，陪同家长姓名陈红丽', '2020-06-17 10:51:59', null, '0');
INSERT INTO `activity_user` VALUES ('309', '14', '顾铭轩', '13970297717', '和妈妈一起参加', '2020-06-17 11:34:52', null, '0');
INSERT INTO `activity_user` VALUES ('310', '14', '王珮辰', '18007921096', '湖滨小学二年级2班', '2020-06-17 12:19:04', null, '0');
INSERT INTO `activity_user` VALUES ('311', '14', '李嘉栎', '13970984652', null, '2020-06-17 13:47:44', null, '0');
INSERT INTO `activity_user` VALUES ('312', '14', '吕欣霏', '15079282400', '湖滨小学三年级，陪同家庭成员吕宜臻或王腊梅', '2020-06-17 14:25:52', null, '0');
INSERT INTO `activity_user` VALUES ('313', '14', '张涵', '13879233485', '妈妈', '2020-06-17 14:31:23', null, '0');
INSERT INTO `activity_user` VALUES ('314', '14', '钟付祎', '19979237757', '学校:  湖滨小学  年级：五年级\n陪同人：付调芬', '2020-06-17 15:04:06', null, '0');
INSERT INTO `activity_user` VALUES ('315', '14', '刘博翰', '13970264252', null, '2020-06-17 15:20:17', null, '0');
INSERT INTO `activity_user` VALUES ('316', '14', '梅轩宁', '13979249095', '湖滨小学一年级 13班，妈妈陪同：梁丽茹', '2020-06-17 15:33:11', null, '0');
INSERT INTO `activity_user` VALUES ('317', '14', '杨雅涵', '18162271772', '湖滨小学五（8）班', '2020-06-17 15:38:20', null, '0');
INSERT INTO `activity_user` VALUES ('318', '14', '胡悦', '13979245645', '湖滨小学五（7）班', '2020-06-17 15:48:39', null, '0');
INSERT INTO `activity_user` VALUES ('319', '14', '李昱梁', '13507065565', null, '2020-06-17 16:01:29', null, '0');
INSERT INTO `activity_user` VALUES ('320', '14', '邵元铭', '15870858511', null, '2020-06-17 16:04:58', null, '0');
INSERT INTO `activity_user` VALUES ('321', '14', '游苏妍', '15107028869', null, '2020-06-17 16:06:32', null, '0');
INSERT INTO `activity_user` VALUES ('322', '14', '曹雅萱', '13879243200', '湖滨小学，五年级，家长曹建波', '2020-06-17 16:23:53', null, '0');
INSERT INTO `activity_user` VALUES ('323', '14', '杨若楷', '13879284192', '参加七月份的', '2020-06-17 16:25:24', null, '0');
INSERT INTO `activity_user` VALUES ('324', '14', '陶文浩', '13870227816', null, '2020-06-17 16:45:14', null, '0');
INSERT INTO `activity_user` VALUES ('325', '14', '黄思菱', '18507928521', null, '2020-06-17 16:50:43', null, '0');
INSERT INTO `activity_user` VALUES ('326', '14', '汪宇扬', '13097029916', null, '2020-06-17 17:20:56', null, '0');
INSERT INTO `activity_user` VALUES ('327', '14', '王浩辉', '13607923425', null, '2020-06-17 17:28:44', null, '0');
INSERT INTO `activity_user` VALUES ('328', '14', '齐珂敏', '18179279390', '九江小学八里湖校区五年级四班，陪同家属:夏玲玲', '2020-06-17 18:00:04', null, '0');
INSERT INTO `activity_user` VALUES ('329', '14', '梅子浩', '18170266031', null, '2020-06-17 18:26:20', null, '0');
INSERT INTO `activity_user` VALUES ('330', '14', '刘恩玺', '18607628767', null, '2020-06-17 18:28:03', null, '0');
INSERT INTO `activity_user` VALUES ('331', '14', '杨絮文', '15979919167', '湖滨小学六年级一班', '2020-06-17 18:41:15', null, '0');
INSERT INTO `activity_user` VALUES ('332', '14', '蒋隆晨', '15879234500', null, '2020-06-17 18:43:36', null, '0');
INSERT INTO `activity_user` VALUES ('333', '14', '张榕榕', '13809633337', '湖滨小学五年级', '2020-06-17 18:44:16', null, '0');
INSERT INTO `activity_user` VALUES ('334', '14', '欧阳尹一', '13803568185', null, '2020-06-17 19:33:23', null, '0');
INSERT INTO `activity_user` VALUES ('335', '14', '谭楷睿', '13979228004', '2222', '2020-06-17 20:01:09', null, '0');
INSERT INTO `activity_user` VALUES ('336', '14', '彭康博', '13879250376', '参赛', '2020-06-17 20:42:53', null, '0');
INSERT INTO `activity_user` VALUES ('337', '14', '薛乐山', '15949554929', null, '2020-06-17 20:48:39', null, '0');
INSERT INTO `activity_user` VALUES ('338', '14', '沈思睿', '13517927614', '参赛', '2020-06-17 21:21:28', null, '0');
INSERT INTO `activity_user` VALUES ('339', '14', '潘雨涵', '13970254670', '湖滨小学 五（10）班 陪同成员:梅美珍', '2020-06-17 21:24:20', null, '0');
INSERT INTO `activity_user` VALUES ('340', '14', '卢泽楷', '13979254697', '邀请表哥刘志扬一起组团参赛', '2020-06-17 22:51:32', null, '0');
INSERT INTO `activity_user` VALUES ('341', '14', '刘志扬', '13979258123', '湖滨小学五（一）班，邀请表弟卢泽楷组团参赛', '2020-06-17 22:55:22', null, '0');
INSERT INTO `activity_user` VALUES ('342', '14', '张宇翔', '13517922131', null, '2020-06-18 10:20:25', null, '0');
INSERT INTO `activity_user` VALUES ('343', '14', '盛熙梓', '13979292463', null, '2020-06-18 14:04:39', null, '0');
INSERT INTO `activity_user` VALUES ('344', '14', '黄嘉琦', '18079203453', null, '2020-06-18 15:13:25', null, '0');
INSERT INTO `activity_user` VALUES ('345', '14', '刘诗峰', '13970207627', '湖滨小学五年级\n陪同家长邱丽丽', '2020-06-18 18:32:09', null, '0');
INSERT INTO `activity_user` VALUES ('346', '14', '余天好', '13667235628', '余天航', '2020-06-18 18:37:56', null, '0');
INSERT INTO `activity_user` VALUES ('347', '14', '高隽祺', '13870233136', '湖滨小学一年级(14)班    陪同妈妈：陶花', '2020-06-18 22:19:40', null, '0');
INSERT INTO `activity_user` VALUES ('348', '14', '高隽褀', '18970233011', '一年级', '2020-06-18 22:23:42', null, '0');
INSERT INTO `activity_user` VALUES ('349', '14', '崔明哲', '15170935658', '湖滨小学六年级九班', '2020-06-19 07:52:32', null, '0');
INSERT INTO `activity_user` VALUES ('350', '14', '罗景心', '15350231677', null, '2020-06-19 08:44:25', null, '0');
INSERT INTO `activity_user` VALUES ('351', '14', '杨巧灵', '13979288401', null, '2020-06-19 10:33:27', null, '0');
INSERT INTO `activity_user` VALUES ('352', '14', '严紫铖', '13970228892', null, '2020-06-19 12:27:09', null, '0');
INSERT INTO `activity_user` VALUES ('353', '14', '孙彦鑫', '15079212332', '男孩', '2020-06-19 14:51:12', null, '0');
INSERT INTO `activity_user` VALUES ('354', '14', '金承熙', '13627068666', '湖滨小学一年级11班学生', '2020-06-19 15:14:38', null, '0');
INSERT INTO `activity_user` VALUES ('355', '14', '李昱宏', '13879202888', '湖滨小学六（9）班，爸爸李明', '2020-06-19 21:24:51', null, '0');
INSERT INTO `activity_user` VALUES ('356', '14', '陈乐卉', '13507926322', '晨光中学初二（1）班  妈妈罗小丽', '2020-06-20 10:23:34', null, '0');
INSERT INTO `activity_user` VALUES ('357', '14', '吴宬熹', '13407924155', null, '2020-06-20 12:14:03', null, '0');
INSERT INTO `activity_user` VALUES ('358', '14', '吴宬熹', '13755268031', '热爱古诗词', '2020-06-20 13:14:21', null, '0');
INSERT INTO `activity_user` VALUES ('359', '14', '陶李', '13607027827', '父子参加', '2020-06-20 14:09:18', null, '0');
INSERT INTO `activity_user` VALUES ('360', '14', '赵钰轩', '15070218972', null, '2020-06-21 21:29:01', null, '0');
INSERT INTO `activity_user` VALUES ('361', '14', '罗大钧', '18270219303', null, '2020-06-21 23:23:09', null, '0');

-- ----------------------------
-- Table structure for `back_live`
-- ----------------------------
DROP TABLE IF EXISTS `back_live`;
CREATE TABLE `back_live` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '直播标题',
  `introduction` varchar(2000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '介绍',
  `address` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '地点',
  `replay` int(11) DEFAULT NULL COMMENT '是否准许回看',
  `video_stream_name` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '视频流名称',
  `pull_stream_address` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '没有拼接过的流名称',
  `rtmp_pull_address` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'Rtmp拉流地址',
  `m3u8_pull_address` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'm3u8接流地址',
  `stram_id` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '流ID',
  `push_stram_address` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '推流地址',
  `file_address` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '直播数据数据主键',
  `mp4_address` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'mp4直播文件下载地址',
  `m3u8_address` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'm3u8文件下载地址',
  `notice_time` datetime DEFAULT NULL COMMENT '预告时间',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `is_delete` int(5) DEFAULT NULL COMMENT '0是未删除1是已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of back_live
-- ----------------------------
INSERT INTO `back_live` VALUES ('1', '慕课直播', '测试直播', '高新大道', '0', 'NEWLIVET75280bwvdoid5271717110u09_vdoid5271717110u09', 'NEWLIVET75280bwvdoid5271717110u09', 'rtmp://rtmp-live.superlib.com/live/NEWLIVET75280bwvdoid5271717110u09', 'https://hls-live.superlib.com/live/NEWLIVET75280bwvdoid5271717110u09/index.m3u8', 'vdoid5271717110u09', 'rtmp://ksuplive.chaoxing.com/live/NEWLIVET75280bwvdoid5271717110u09?signature=wcHpJcWZN%2BBRDDZenOtPoPNYX6A%3D&accesskey=YbAIvlTzp6KEbJnhukkT&expire=2221610404933&nonce=7538d7a482144ad3a519dc9b7baf578f&public=0&vdoid=vdoid5271717110u09', '7876173', 'https://ks3-cn-beijing.chaoxing.com/vdoid5271717110u09.mp4', 'https://ks3-cn-beijing.chaoxing.com/record/live/NEWLIVET75280bwvdoid5271717110u09/hls/NEWLIVET75280bwvdoid5271717110u09-vdoid5271717110u09.m3u8', null, '2020-05-26 10:00:06', '2020-05-26 10:00:06', '0');
INSERT INTO `back_live` VALUES ('2', '的故事大概', '是个三道杠收到挂是搭嘎十多个sad噶是的', '是搭嘎十多个', '0', 'NEWLIVEN6Z426b3vdoid52818841833f3_vdoid52818841833f3', 'NEWLIVEN6Z426b3vdoid52818841833f3', 'rtmp://rtmp-live.superlib.com/live/NEWLIVEN6Z426b3vdoid52818841833f3', 'https://hls-live.superlib.com/live/NEWLIVEN6Z426b3vdoid52818841833f3/index.m3u8', 'vdoid52818841833f3', 'rtmp://ksuplive.chaoxing.com/live/NEWLIVEN6Z426b3vdoid52818841833f3?signature=Sw1zohfpz0nFYWsg1zR8VklACww%3D&accesskey=YbAIvlTzp6KEbJnhukkT&expire=2221629111492&nonce=a176e69cb29549118bcdb243bd7f80fe&public=0&vdoid=vdoid52818841833f3', '7886560', 'https://ks3-cn-beijing.chaoxing.com/vdoid52818841833f3.mp4', 'https://ks3-cn-beijing.chaoxing.com/record/live/NEWLIVEN6Z426b3vdoid52818841833f3/hls/NEWLIVEN6Z426b3vdoid52818841833f3-vdoid52818841833f3.m3u8', null, '2020-05-26 15:11:52', '2020-05-26 15:11:52', '0');
INSERT INTO `back_live` VALUES ('3', '第三个', '是个俺是个大as是', '三道杠', '0', 'NEWLIVE4s289W4Kvdoid52933578P30S8_vdoid52933578P30S8', 'NEWLIVE4s289W4Kvdoid52933578P30S8', 'rtmp://rtmp-live.superlib.com/live/NEWLIVE4s289W4Kvdoid52933578P30S8', 'https://hls-live.superlib.com/live/NEWLIVE4s289W4Kvdoid52933578P30S8/index.m3u8', 'vdoid52933578P30S8', 'rtmp://ksuplive.chaoxing.com/live/NEWLIVE4s289W4Kvdoid52933578P30S8?signature=M4kFS9%2FxPgfxKveHENaDoKRUAkw%3D&accesskey=YbAIvlTzp6KEbJnhukkT&expire=2221693229100&nonce=806fa9623f664ef4998b5231b23f1930&public=0&vdoid=vdoid52933578P30S8', '7898512', 'https://ks3-cn-beijing.chaoxing.com/vdoid52933578P30S8.mp4', 'https://ks3-cn-beijing.chaoxing.com/record/live/NEWLIVE4s289W4Kvdoid52933578P30S8/hls/NEWLIVE4s289W4Kvdoid52933578P30S8-vdoid52933578P30S8.m3u8', null, '2020-05-27 09:00:30', '2020-05-27 09:00:30', '0');
INSERT INTO `back_live` VALUES ('4', '是搭嘎十多个', '收到噶过过过过过过过过过过过过啥顶顶顶顶', '三个傻瓜撒', '0', 'NEWLIVEGKlT834vvdoid5293442Q6IEa9_vdoid5293442Q6IEa9', 'NEWLIVEGKlT834vvdoid5293442Q6IEa9', 'rtmp://rtmp-live.superlib.com/live/NEWLIVEGKlT834vvdoid5293442Q6IEa9', 'https://hls-live.superlib.com/live/NEWLIVEGKlT834vvdoid5293442Q6IEa9/index.m3u8', 'vdoid5293442Q6IEa9', 'rtmp://ksuplive.chaoxing.com/live/NEWLIVEGKlT834vvdoid5293442Q6IEa9?signature=HY7U79QNzyoAHFy7ZC4btkutBi4%3D&accesskey=YbAIvlTzp6KEbJnhukkT&expire=2221693310947&nonce=0668e110f32d4e75b019db2cd6e61792&public=0&vdoid=vdoid5293442Q6IEa9', '7898597', 'https://ks3-cn-beijing.chaoxing.com/vdoid5293442Q6IEa9.mp4', 'https://ks3-cn-beijing.chaoxing.com/record/live/NEWLIVEGKlT834vvdoid5293442Q6IEa9/hls/NEWLIVEGKlT834vvdoid5293442Q6IEa9-vdoid5293442Q6IEa9.m3u8', null, '2020-05-27 09:01:52', '2020-05-27 09:01:52', '0');
INSERT INTO `back_live` VALUES ('5', 'sdgdg', '', '', '0', 'NEWLIVE81981u4svdoid5382588knh4px_vdoid5382588knh4px', 'NEWLIVE81981u4svdoid5382588knh4px', 'rtmp://rtmp-live.superlib.com/live/NEWLIVE81981u4svdoid5382588knh4px', 'https://hls-live.superlib.com/live/NEWLIVE81981u4svdoid5382588knh4px/index.m3u8', 'vdoid5382588knh4px', 'rtmp://ksuplive.chaoxing.com/live/NEWLIVE81981u4svdoid5382588knh4px?signature=WVclmx4b6Rel4Uiq6ybTNnvdzlg%3D&accesskey=YbAIvlTzp6KEbJnhukkT&expire=2222147817636&nonce=36564ccbb2b14329b69e887ae4588069&public=0&vdoid=vdoid5382588knh4px', '7991086', 'https://ks3-cn-beijing.chaoxing.com/vdoid5382588knh4px.mp4', 'https://ks3-cn-beijing.chaoxing.com/record/live/NEWLIVE81981u4svdoid5382588knh4px/hls/NEWLIVE81981u4svdoid5382588knh4px-vdoid5382588knh4px.m3u8', null, '2020-06-01 15:16:58', '2020-06-01 15:16:58', '0');
INSERT INTO `back_live` VALUES ('6', 'sgsgsdgsdg', '', '', '0', 'NEWLIVEhH5F69N8vdoid5382634W1ffxf_vdoid5382634W1ffxf', 'NEWLIVEhH5F69N8vdoid5382634W1ffxf', 'rtmp://rtmp-live.superlib.com/live/NEWLIVEhH5F69N8vdoid5382634W1ffxf', 'https://hls-live.superlib.com/live/NEWLIVEhH5F69N8vdoid5382634W1ffxf/index.m3u8', 'vdoid5382634W1ffxf', 'rtmp://ksuplive.chaoxing.com/live/NEWLIVEhH5F69N8vdoid5382634W1ffxf?signature=LagfpZVD6qRU2m%2B0kPCi7uw4xaU%3D&accesskey=YbAIvlTzp6KEbJnhukkT&expire=2222147887903&nonce=f2b414cb820f40299aae369255827f50&public=0&vdoid=vdoid5382634W1ffxf', '7991132', 'https://ks3-cn-beijing.chaoxing.com/vdoid5382634W1ffxf.mp4', 'https://ks3-cn-beijing.chaoxing.com/record/live/NEWLIVEhH5F69N8vdoid5382634W1ffxf/hls/NEWLIVEhH5F69N8vdoid5382634W1ffxf-vdoid5382634W1ffxf.m3u8', null, '2020-06-01 15:18:08', '2020-06-01 15:18:08', '0');
INSERT INTO `back_live` VALUES ('7', '直播测试', '山豆根山豆根山豆根山豆根收到是德国盛顿国', '山豆根山豆s\'d\'g', '0', 'NEWLIVE2781G2pmvdoid5525430qdtp14_vdoid5525430qdtp14', 'NEWLIVE2781G2pmvdoid5525430qdtp14', 'rtmp://rtmp-live.superlib.com/live/NEWLIVE2781G2pmvdoid5525430qdtp14', 'https://hls-live.superlib.com/live/NEWLIVE2781G2pmvdoid5525430qdtp14/index.m3u8', 'vdoid5525430qdtp14', 'rtmp://ksuplive.chaoxing.com/live/NEWLIVE2781G2pmvdoid5525430qdtp14?signature=vlGWt5JIyF5GtoIf5tr81C4IFDA%3D&accesskey=YbAIvlTzp6KEbJnhukkT&expire=2222918883494&nonce=e875da4c7e044c6b891ad65c0487fb67&public=0&vdoid=vdoid5525430qdtp14', '8139372', 'https://ks3-cn-beijing.chaoxing.com/vdoid5525430qdtp14.mp4', 'https://ks3-cn-beijing.chaoxing.com/record/live/NEWLIVE2781G2pmvdoid5525430qdtp14/hls/NEWLIVE2781G2pmvdoid5525430qdtp14-vdoid5525430qdtp14.m3u8', null, '2020-06-10 13:28:04', '2020-06-10 13:28:04', '0');
INSERT INTO `back_live` VALUES ('8', 'dgdg', '', '', '0', 'NEWLIVE55w4VrOEvdoid5531400O52b66_vdoid5531400O52b66', 'NEWLIVE55w4VrOEvdoid5531400O52b66', 'rtmp://rtmp-live.superlib.com/live/NEWLIVE55w4VrOEvdoid5531400O52b66', 'https://hls-live.superlib.com/live/NEWLIVE55w4VrOEvdoid5531400O52b66/index.m3u8', 'vdoid5531400O52b66', 'rtmp://ksuplive.chaoxing.com/live/NEWLIVE55w4VrOEvdoid5531400O52b66?signature=nv6XXCnmUgI99AdhPSjtOMCKzIs%3D&accesskey=YbAIvlTzp6KEbJnhukkT&expire=2222933374621&nonce=a37eff9645074ea7bbbdd9f232017dad&public=0&vdoid=vdoid5531400O52b66', '8145460', 'https://ks3-cn-beijing.chaoxing.com/vdoid5531400O52b66.mp4', 'https://ks3-cn-beijing.chaoxing.com/record/live/NEWLIVE55w4VrOEvdoid5531400O52b66/hls/NEWLIVE55w4VrOEvdoid5531400O52b66-vdoid5531400O52b66.m3u8', null, '2020-06-10 17:29:35', '2020-06-10 17:29:35', '0');
INSERT INTO `back_live` VALUES ('9', 'dgasdgdsg', '', '', '0', 'NEWLIVEmF956l85vdoid5531402i63kxH_vdoid5531402i63kxH', 'NEWLIVEmF956l85vdoid5531402i63kxH', 'rtmp://rtmp-live.superlib.com/live/NEWLIVEmF956l85vdoid5531402i63kxH', 'https://hls-live.superlib.com/live/NEWLIVEmF956l85vdoid5531402i63kxH/index.m3u8', 'vdoid5531402i63kxH', 'rtmp://ksuplive.chaoxing.com/live/NEWLIVEmF956l85vdoid5531402i63kxH?signature=XsBF69Cy8hRvVfkvypOaBkJtpPA%3D&accesskey=YbAIvlTzp6KEbJnhukkT&expire=2222933382358&nonce=fc49d35a73714f0d91784a8a982b3313&public=0&vdoid=vdoid5531402i63kxH', '8145462', 'https://ks3-cn-beijing.chaoxing.com/vdoid5531402i63kxH.mp4', 'https://ks3-cn-beijing.chaoxing.com/record/live/NEWLIVEmF956l85vdoid5531402i63kxH/hls/NEWLIVEmF956l85vdoid5531402i63kxH-vdoid5531402i63kxH.m3u8', null, '2020-06-10 17:29:43', '2020-06-10 17:29:43', '0');
INSERT INTO `back_live` VALUES ('10', 'dgsdgasdg', '', '', '0', 'NEWLIVE53K2o737vdoid553140452P311_vdoid553140452P311', 'NEWLIVE53K2o737vdoid553140452P311', 'rtmp://rtmp-live.superlib.com/live/NEWLIVE53K2o737vdoid553140452P311', 'https://hls-live.superlib.com/live/NEWLIVE53K2o737vdoid553140452P311/index.m3u8', 'vdoid553140452P311', 'rtmp://ksuplive.chaoxing.com/live/NEWLIVE53K2o737vdoid553140452P311?signature=jd%2Fn7T4DQknV4oDFucP5xvS0n88%3D&accesskey=YbAIvlTzp6KEbJnhukkT&expire=2222933388929&nonce=2119841ba6fe488392a653a48717daf2&public=0&vdoid=vdoid553140452P311', '8145464', 'https://ks3-cn-beijing.chaoxing.com/vdoid553140452P311.mp4', 'https://ks3-cn-beijing.chaoxing.com/record/live/NEWLIVE53K2o737vdoid553140452P311/hls/NEWLIVE53K2o737vdoid553140452P311-vdoid553140452P311.m3u8', null, '2020-06-10 17:29:49', '2020-06-10 17:29:49', '0');
INSERT INTO `back_live` VALUES ('11', 'dsgsdg', '', '', '0', 'NEWLIVEg1JHxocuvdoid5531406p8385Z_vdoid5531406p8385Z', 'NEWLIVEg1JHxocuvdoid5531406p8385Z', 'rtmp://rtmp-live.superlib.com/live/NEWLIVEg1JHxocuvdoid5531406p8385Z', 'https://hls-live.superlib.com/live/NEWLIVEg1JHxocuvdoid5531406p8385Z/index.m3u8', 'vdoid5531406p8385Z', 'rtmp://ksuplive.chaoxing.com/live/NEWLIVEg1JHxocuvdoid5531406p8385Z?signature=io0TG0%2BBSbWDQssmGYufnwrVgq4%3D&accesskey=YbAIvlTzp6KEbJnhukkT&expire=2222933395028&nonce=82d861e213ad4504b42c955d6a48cfb2&public=0&vdoid=vdoid5531406p8385Z', '8145466', 'https://ks3-cn-beijing.chaoxing.com/vdoid5531406p8385Z.mp4', 'https://ks3-cn-beijing.chaoxing.com/record/live/NEWLIVEg1JHxocuvdoid5531406p8385Z/hls/NEWLIVEg1JHxocuvdoid5531406p8385Z-vdoid5531406p8385Z.m3u8', null, '2020-06-10 17:29:55', '2020-06-10 17:29:55', '0');
INSERT INTO `back_live` VALUES ('12', '测试', '', '', '0', 'NEWLIVE66302R16vdoid5604272F6719M_vdoid5604272F6719M', 'NEWLIVE66302R16vdoid5604272F6719M', 'rtmp://rtmp-live.superlib.com/live/NEWLIVE66302R16vdoid5604272F6719M', 'https://hls-live.superlib.com/live/NEWLIVE66302R16vdoid5604272F6719M/index.m3u8', 'vdoid5604272F6719M', 'rtmp://ksuplive.chaoxing.com/live/NEWLIVE66302R16vdoid5604272F6719M?signature=mtBOfXJGF%2F00YpnqlZFM07z%2FCo8%3D&accesskey=YbAIvlTzp6KEbJnhukkT&expire=2223361373241&nonce=3aaae252fec34bd4902d45e2c3cc6b5a&public=0&vdoid=vdoid5604272F6719M', '8220581', 'https://ks3-cn-beijing.chaoxing.com/vdoid5604272F6719M.mp4', 'https://ks3-cn-beijing.chaoxing.com/record/live/NEWLIVE66302R16vdoid5604272F6719M/hls/NEWLIVE66302R16vdoid5604272F6719M-vdoid5604272F6719M.m3u8', null, '2020-06-15 16:22:53', '2020-06-15 16:22:53', '0');
INSERT INTO `back_live` VALUES ('13', '测试', '张三的心路历程', '高新大道', '0', 'NEWLIVEAB24Wlk2vdoid59695772758Zi_vdoid59695772758Zi', 'NEWLIVEAB24Wlk2vdoid59695772758Zi', 'rtmp://rtmp-live.superlib.com/live/NEWLIVEAB24Wlk2vdoid59695772758Zi', 'https://hls-live.superlib.com/live/NEWLIVEAB24Wlk2vdoid59695772758Zi/index.m3u8', 'vdoid59695772758Zi', 'rtmp://ksuplive.chaoxing.com/live/NEWLIVEAB24Wlk2vdoid59695772758Zi?signature=l5Y5E0lxnjfz2uMw3V3lh4Z0VwE%3D&accesskey=YbAIvlTzp6KEbJnhukkT&expire=2231806572981&nonce=ac5d2f2a920b46d3b56715343ff4bf17&public=0&vdoid=vdoid59695772758Zi', '8626107', 'https://ks3-cn-beijing.chaoxing.com/vdoid59695772758Zi.mp4', 'https://ks3-cn-beijing.chaoxing.com/record/live/NEWLIVEAB24Wlk2vdoid59695772758Zi/hls/NEWLIVEAB24Wlk2vdoid59695772758Zi-vdoid59695772758Zi.m3u8', null, '2020-09-21 18:00:44', '2020-09-21 18:00:44', '0');
INSERT INTO `back_live` VALUES ('14', '2019群星奖决赛（百官图部分）', '', '', '0', 'NEWLIVEb061g692vdoid5979169240834_vdoid5979169240834', 'NEWLIVEb061g692vdoid5979169240834', 'rtmp://rtmp-live.superlib.com/live/NEWLIVEb061g692vdoid5979169240834', 'https://hls-live.superlib.com/live/NEWLIVEb061g692vdoid5979169240834/index.m3u8', 'vdoid5979169240834', 'rtmp://ksuplive.chaoxing.com/live/NEWLIVEb061g692vdoid5979169240834?signature=KjkwPBgboFEZKQ%2FQ2f3zRr%2FjwYA%3D&accesskey=YbAIvlTzp6KEbJnhukkT&expire=2231998856433&nonce=02948cde0d454e5c9af0ee08500d219e&public=0&vdoid=vdoid5979169240834', '8636524', 'https://ks3-cn-beijing.chaoxing.com/vdoid5979169240834.mp4', 'https://ks3-cn-beijing.chaoxing.com/record/live/NEWLIVEb061g692vdoid5979169240834/hls/NEWLIVEb061g692vdoid5979169240834-vdoid5979169240834.m3u8', null, '2020-09-23 23:25:25', '2020-09-23 23:25:25', '0');
INSERT INTO `back_live` VALUES ('15', '测试直播', '', '', '0', 'NEWLIVE4f17rCrmvdoid59794076Xr6sG_vdoid59794076Xr6sG', 'NEWLIVE4f17rCrmvdoid59794076Xr6sG', 'rtmp://rtmp-live.superlib.com/live/NEWLIVE4f17rCrmvdoid59794076Xr6sG', 'https://hls-live.superlib.com/live/NEWLIVE4f17rCrmvdoid59794076Xr6sG/index.m3u8', 'vdoid59794076Xr6sG', 'rtmp://ksuplive.chaoxing.com/live/NEWLIVE4f17rCrmvdoid59794076Xr6sG?signature=FMAROwTfibQ4XSg62OGgbBwp8kg%3D&accesskey=YbAIvlTzp6KEbJnhukkT&expire=2232001546827&nonce=c177f8a22d314b99826d3dc52824f30f&public=0&vdoid=vdoid59794076Xr6sG', '8636772', 'https://ks3-cn-beijing.chaoxing.com/vdoid59794076Xr6sG.mp4', 'https://ks3-cn-beijing.chaoxing.com/record/live/NEWLIVE4f17rCrmvdoid59794076Xr6sG/hls/NEWLIVE4f17rCrmvdoid59794076Xr6sG-vdoid59794076Xr6sG.m3u8', null, '2020-09-24 00:10:16', '2020-09-24 00:10:16', '0');
INSERT INTO `back_live` VALUES ('16', '123123123', '123123', '123123', '0', 'NEWLIVETPpeFOFivdoid5981908493545_vdoid5981908493545', 'NEWLIVETPpeFOFivdoid5981908493545', 'rtmp://rtmp-live.superlib.com/live/NEWLIVETPpeFOFivdoid5981908493545', 'https://hls-live.superlib.com/live/NEWLIVETPpeFOFivdoid5981908493545/index.m3u8', 'vdoid5981908493545', 'rtmp://ksuplive.chaoxing.com/live/NEWLIVETPpeFOFivdoid5981908493545?signature=8dqvUhtChQ79MRxVzMkbbFAw%2Bnk%3D&accesskey=YbAIvlTzp6KEbJnhukkT&expire=2232067445753&nonce=1694d5b461474fe79bbd1348e8c2779c&public=0&vdoid=vdoid5981908493545', '8639566', 'https://ks3-cn-beijing.chaoxing.com/vdoid5981908493545.mp4', 'https://ks3-cn-beijing.chaoxing.com/record/live/NEWLIVETPpeFOFivdoid5981908493545/hls/NEWLIVETPpeFOFivdoid5981908493545-vdoid5981908493545.m3u8', null, '2020-09-24 18:28:34', '2020-09-24 18:28:34', '0');

-- ----------------------------
-- Table structure for `good`
-- ----------------------------
DROP TABLE IF EXISTS `good`;
CREATE TABLE `good` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `live_id` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '有效状态 0是有效 1是无效',
  PRIMARY KEY (`id`),
  KEY `good_user_id_index` (`user_id`),
  KEY `good_live_id_index` (`live_id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of good
-- ----------------------------
INSERT INTO `good` VALUES ('1', null, null, '2020-05-28 15:50:21', '0');
INSERT INTO `good` VALUES ('2', null, null, '2020-05-28 15:51:52', '0');
INSERT INTO `good` VALUES ('3', null, null, '2020-05-28 15:52:54', '0');
INSERT INTO `good` VALUES ('4', null, null, '2020-05-28 15:52:56', '0');
INSERT INTO `good` VALUES ('5', null, null, '2020-05-28 15:53:11', '0');
INSERT INTO `good` VALUES ('6', null, null, '2020-05-28 15:55:03', '0');
INSERT INTO `good` VALUES ('7', null, '3', '2020-05-28 15:55:43', '0');
INSERT INTO `good` VALUES ('8', null, '3', '2020-05-28 15:55:56', '0');
INSERT INTO `good` VALUES ('9', null, '2', '2020-05-28 15:55:56', '0');
INSERT INTO `good` VALUES ('10', null, '1', '2020-05-28 15:55:57', '0');
INSERT INTO `good` VALUES ('11', null, '2', '2020-05-28 15:56:13', '0');
INSERT INTO `good` VALUES ('12', null, '3', '2020-05-28 15:56:26', '0');
INSERT INTO `good` VALUES ('13', null, '3', '2020-05-28 15:59:56', '0');
INSERT INTO `good` VALUES ('14', null, '3', '2020-05-28 16:00:44', '0');
INSERT INTO `good` VALUES ('15', null, '3', '2020-05-28 16:01:04', '0');
INSERT INTO `good` VALUES ('16', null, '3', '2020-05-28 16:01:44', '0');
INSERT INTO `good` VALUES ('17', null, '3', '2020-05-28 16:04:47', '0');
INSERT INTO `good` VALUES ('18', null, '2', '2020-05-28 16:04:52', '0');
INSERT INTO `good` VALUES ('19', null, '1', '2020-05-28 16:04:53', '0');
INSERT INTO `good` VALUES ('20', null, '4', '2020-05-28 16:11:48', '0');
INSERT INTO `good` VALUES ('21', null, '1', '2020-06-01 14:13:32', '0');
INSERT INTO `good` VALUES ('22', null, '6', '2020-06-01 15:39:15', '0');
INSERT INTO `good` VALUES ('23', null, '3', '2020-06-01 15:39:20', '0');
INSERT INTO `good` VALUES ('24', null, '4', '2020-06-01 15:39:21', '0');
INSERT INTO `good` VALUES ('25', null, '5', '2020-06-01 15:39:23', '0');
INSERT INTO `good` VALUES ('26', null, '2', '2020-06-01 15:39:25', '0');
INSERT INTO `good` VALUES ('27', null, '6', '2020-06-01 16:00:34', '0');
INSERT INTO `good` VALUES ('28', null, '5', '2020-06-01 16:00:35', '0');
INSERT INTO `good` VALUES ('29', null, '4', '2020-06-01 16:00:36', '0');
INSERT INTO `good` VALUES ('30', null, '3', '2020-06-01 16:00:37', '0');
INSERT INTO `good` VALUES ('31', null, '2', '2020-06-01 16:00:38', '0');
INSERT INTO `good` VALUES ('32', null, '1', '2020-06-01 16:00:39', '0');
INSERT INTO `good` VALUES ('33', null, '3', '2020-06-01 21:34:28', '0');
INSERT INTO `good` VALUES ('34', null, '2', '2020-06-01 21:34:28', '0');
INSERT INTO `good` VALUES ('35', null, '1', '2020-06-01 21:34:30', '0');
INSERT INTO `good` VALUES ('36', null, '4', '2020-06-01 21:34:32', '0');
INSERT INTO `good` VALUES ('37', null, '5', '2020-06-01 21:34:33', '0');
INSERT INTO `good` VALUES ('38', null, '6', '2020-06-01 21:34:34', '0');
INSERT INTO `good` VALUES ('39', null, '2', '2020-06-10 23:48:56', '0');
INSERT INTO `good` VALUES ('40', null, '11', '2020-06-12 00:23:46', '0');
INSERT INTO `good` VALUES ('41', null, '11', '2020-06-12 14:32:06', '0');
INSERT INTO `good` VALUES ('42', null, '11', '2020-06-15 10:55:01', '0');
INSERT INTO `good` VALUES ('43', null, null, '2020-06-15 11:01:14', '0');
INSERT INTO `good` VALUES ('44', null, null, '2020-06-15 11:02:14', '0');
INSERT INTO `good` VALUES ('45', null, null, '2020-06-15 11:02:38', '0');
INSERT INTO `good` VALUES ('46', null, null, '2020-06-15 11:02:39', '0');
INSERT INTO `good` VALUES ('47', null, null, '2020-06-15 11:02:39', '0');
INSERT INTO `good` VALUES ('48', null, null, '2020-06-15 11:02:39', '0');
INSERT INTO `good` VALUES ('49', null, null, '2020-06-15 11:02:39', '0');
INSERT INTO `good` VALUES ('50', null, null, '2020-06-15 11:02:39', '0');
INSERT INTO `good` VALUES ('51', null, null, '2020-06-15 11:02:43', '0');
INSERT INTO `good` VALUES ('52', null, null, '2020-06-15 11:02:44', '0');
INSERT INTO `good` VALUES ('53', null, null, '2020-06-15 11:02:47', '0');
INSERT INTO `good` VALUES ('54', null, null, '2020-06-15 11:02:48', '0');
INSERT INTO `good` VALUES ('55', null, null, '2020-06-15 11:02:48', '0');
INSERT INTO `good` VALUES ('56', null, null, '2020-06-15 11:04:34', '0');
INSERT INTO `good` VALUES ('57', null, null, '2020-06-15 11:43:18', '0');
INSERT INTO `good` VALUES ('58', null, null, '2020-06-15 11:46:57', '0');
INSERT INTO `good` VALUES ('59', null, '11', '2020-06-15 11:47:47', '0');
INSERT INTO `good` VALUES ('60', null, null, '2020-06-15 11:48:37', '0');
INSERT INTO `good` VALUES ('61', null, null, '2020-06-15 11:49:45', '0');
INSERT INTO `good` VALUES ('62', null, '11', '2020-06-15 11:50:16', '0');
INSERT INTO `good` VALUES ('63', null, null, '2020-06-15 16:52:55', '0');
INSERT INTO `good` VALUES ('64', null, null, '2020-06-15 16:53:32', '0');
INSERT INTO `good` VALUES ('65', null, null, '2020-06-15 16:53:45', '0');
INSERT INTO `good` VALUES ('66', null, null, '2020-06-15 16:55:04', '0');
INSERT INTO `good` VALUES ('67', null, null, '2020-06-15 16:55:06', '0');
INSERT INTO `good` VALUES ('68', null, null, '2020-06-15 17:05:09', '0');
INSERT INTO `good` VALUES ('69', null, null, '2020-06-15 17:05:10', '0');
INSERT INTO `good` VALUES ('70', null, null, '2020-06-15 17:05:16', '0');
INSERT INTO `good` VALUES ('71', null, null, '2020-06-15 17:10:26', '0');
INSERT INTO `good` VALUES ('72', null, null, '2020-06-15 17:10:49', '0');
INSERT INTO `good` VALUES ('73', null, null, '2020-06-15 17:10:52', '0');
INSERT INTO `good` VALUES ('74', null, null, '2020-06-15 17:11:12', '0');
INSERT INTO `good` VALUES ('75', null, null, '2020-06-15 17:11:35', '0');
INSERT INTO `good` VALUES ('76', null, null, '2020-06-15 17:11:42', '0');
INSERT INTO `good` VALUES ('77', null, null, '2020-06-15 17:11:44', '0');
INSERT INTO `good` VALUES ('78', null, null, '2020-06-15 17:11:47', '0');
INSERT INTO `good` VALUES ('79', null, null, '2020-06-15 17:11:48', '0');
INSERT INTO `good` VALUES ('80', null, null, '2020-06-15 17:11:49', '0');
INSERT INTO `good` VALUES ('81', null, null, '2020-06-15 17:11:50', '0');
INSERT INTO `good` VALUES ('82', null, null, '2020-06-15 17:11:50', '0');
INSERT INTO `good` VALUES ('83', null, null, '2020-06-15 17:11:51', '0');
INSERT INTO `good` VALUES ('84', null, null, '2020-06-15 17:13:22', '0');
INSERT INTO `good` VALUES ('85', null, null, '2020-06-15 17:13:55', '0');
INSERT INTO `good` VALUES ('86', null, null, '2020-06-15 17:14:16', '0');
INSERT INTO `good` VALUES ('87', null, null, '2020-06-15 17:15:02', '0');
INSERT INTO `good` VALUES ('88', null, null, '2020-06-15 17:15:52', '0');
INSERT INTO `good` VALUES ('89', null, null, '2020-06-15 17:16:53', '0');
INSERT INTO `good` VALUES ('90', null, null, '2020-06-15 17:17:50', '0');
INSERT INTO `good` VALUES ('91', null, '11', '2020-06-15 17:33:08', '0');
INSERT INTO `good` VALUES ('92', null, '11', '2020-06-16 15:26:00', '0');
INSERT INTO `good` VALUES ('93', null, '11', '2020-06-17 23:21:17', '0');
INSERT INTO `good` VALUES ('94', null, '11', '2020-06-20 12:14:19', '0');
INSERT INTO `good` VALUES ('95', null, '11', '2020-09-15 17:16:34', '0');
INSERT INTO `good` VALUES ('96', null, '14', '2020-09-23 23:55:10', '0');

-- ----------------------------
-- Table structure for `live`
-- ----------------------------
DROP TABLE IF EXISTS `live`;
CREATE TABLE `live` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '标题',
  `cover` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '封面图',
  `replay` int(5) DEFAULT NULL COMMENT '是否回放0是回放1是不回放',
  `auther` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '作者',
  `video` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '视频',
  `introduction` varchar(2000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '介绍',
  `address` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '地点',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `is_delete` int(11) DEFAULT NULL COMMENT '0是未删除1是已删除',
  `pv` int(11) DEFAULT NULL COMMENT '观看次数',
  `status` int(11) DEFAULT NULL COMMENT '上下架',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of live
-- ----------------------------
INSERT INTO `live` VALUES ('1', '慕课直播', '/static/uploadFile/image/banner202005281444047.png', '0', '王盼', '', '测试直播', '高新大道', '2020-05-26 10:00:06', null, '1', '7', '2');
INSERT INTO `live` VALUES ('2', '的故事大概', '/static/uploadFile/image/banner1202005281444041.png', '0', '都是根深蒂固', '', '是个三道杠收到挂是搭嘎十多个sad噶是的', '是搭嘎十多个', '2020-05-26 15:11:52', null, '1', '12', '2');
INSERT INTO `live` VALUES ('3', '第三个', '/static/uploadFile/image/电量202005270922035.png', '0', '是搭嘎十多个', '', '是个俺是个大as是', '三道杠', '2020-05-27 09:00:30', null, '1', '29', '2');
INSERT INTO `live` VALUES ('4', '是搭嘎十多个', '/static/uploadFile/image/bg202005270902001.png', '0', '三道杠', '/static/uploadFile/video/852888piChdt202005270920055.mp4', '收到噶过过过过过过过过过过过过啥顶顶顶顶', '三个傻瓜撒', '2020-05-27 09:01:52', null, '1', '22', '2');
INSERT INTO `live` VALUES ('5', 'sdgdg', '/static/uploadFile/image/icon4202006011516054.png', '0', '', '', '', '', '2020-06-01 15:16:58', null, '1', '2', '2');
INSERT INTO `live` VALUES ('6', 'sgsgsdgsdg', '/static/uploadFile/image/icon1202006011518006.png', '0', '', '', '', '', '2020-06-01 15:18:08', null, '1', '8', '2');
INSERT INTO `live` VALUES ('7', '直播测试', '/static/uploadFile/image/丘氏重修族谱202006101327055.png', '0', '三个', '', '山豆根山豆根山豆根山豆根收到是德国盛顿国', '山豆根山豆s\'d\'g', '2020-06-10 13:28:04', null, '1', '4', '2');
INSERT INTO `live` VALUES ('8', 'dgdg', '/static/uploadFile/image/avatar202006101729034.jpg', '0', '', '', '', '', '2020-06-10 17:29:35', null, '1', '1', '2');
INSERT INTO `live` VALUES ('9', 'dgasdgdsg', '/static/uploadFile/image/thumbnail202006101729042.jpg', '0', '', '', '', '', '2020-06-10 17:29:43', null, '1', '2', '2');
INSERT INTO `live` VALUES ('10', 'dgsdgasdg', '/static/uploadFile/image/avatar202006101729048.jpg', '0', '', '', '', '', '2020-06-10 17:29:49', null, '1', '3', '2');
INSERT INTO `live` VALUES ('11', '《琵琶行》鉴赏 01', '/static/uploadFile/image/寻庐讲坛logo(1)202006111455019202006161519003.jpg', '0', '蔡厚淳', '/static/uploadFile/video/4 《琵琶行》鉴赏01202006161517042.mp4', '', '', '2020-06-10 17:29:55', null, '1', '165', '2');
INSERT INTO `live` VALUES ('12', '测试', '/static/uploadFile/image/banner1202006151622049.png', '0', '', '/static/uploadFile/video/20200610151445_o30rkl3nk8202006151623028.mp4', '', '', '2020-06-15 16:22:53', null, '1', '1', '2');
INSERT INTO `live` VALUES ('13', '测试', '/static/uploadFile/image/thumbnail4@2x202009211407012.png', '0', '张三', '', '张三的心路历程', '高新大道', '2020-09-21 18:00:44', null, '1', '2', '0');
INSERT INTO `live` VALUES ('14', '2019群星奖决赛（百官图部分）', '/static/uploadFile/image/微信图片_20190404173726202009231530056.jpg', '0', '', '', '', '', '2020-09-23 23:25:25', null, '0', '19', '2');
INSERT INTO `live` VALUES ('15', '测试直播', '/static/uploadFile/image/timg202009231610009.jpg', '0', '', '', '', '', '2020-09-24 00:10:16', null, '1', '0', '0');
INSERT INTO `live` VALUES ('16', '123123123', '/static/uploadFile/image/原图202009241028027.jpg', '0', '123123123', '', '123123', '123123', '2020-09-24 18:28:34', null, '0', '4', '2');

-- ----------------------------
-- Table structure for `live_reservation`
-- ----------------------------
DROP TABLE IF EXISTS `live_reservation`;
CREATE TABLE `live_reservation` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '上下架 0上架1下架',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `cover` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `author` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of live_reservation
-- ----------------------------
INSERT INTO `live_reservation` VALUES ('1', '《我喜欢--九江戏剧人小品专场晚会》', '/static/uploadFile/image/7202009231522001.jpg', '以“悠然庐山·自在九江”为主题，开展庆祝中秋国庆佳节系列文旅惠民活动，营造热烈、祥和、欢乐的节日氛围。', '九江市文化馆', null, null);

-- ----------------------------
-- Table structure for `test_paper`
-- ----------------------------
DROP TABLE IF EXISTS `test_paper`;
CREATE TABLE `test_paper` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '试卷名',
  `auther` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '作者',
  `introduction` varchar(2000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '介绍',
  `examtime` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '考试时间',
  `insert_time` datetime DEFAULT NULL COMMENT '新建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `is_delete` int(255) DEFAULT NULL COMMENT '是否删除0 未删除1是已删除',
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of test_paper
-- ----------------------------
INSERT INTO `test_paper` VALUES ('1', '试卷一', '上岗大概', '三道杠撒个傻瓜搜嘎是个大哥大哥哥三道杠撒个傻瓜搜嘎是个大哥大哥哥三道杠撒个傻瓜搜嘎是个大哥大哥哥三道杠撒个傻瓜搜嘎是个大哥大哥哥三道杠撒个傻瓜搜嘎是个大哥大哥哥三道杠撒个傻瓜搜嘎是个大哥大哥哥三道杠撒个傻瓜搜嘎是个大哥大哥哥三道杠撒个傻瓜搜嘎是个大哥大哥哥三道杠撒个傻瓜搜嘎是个大哥大哥哥三道杠撒个傻瓜搜嘎是个大哥大哥哥三道杠撒个傻瓜搜嘎是个大哥大哥哥三道杠撒个傻瓜搜嘎是个大哥大哥哥三道杠撒个傻瓜搜嘎是个大哥大哥哥三道杠撒个傻瓜搜嘎是个大哥大哥哥三道杠撒个傻瓜搜嘎是个大哥大哥哥三道杠撒个傻瓜搜嘎是个大哥大哥哥三道杠撒个傻瓜搜嘎是个大哥大哥哥三道杠撒个傻瓜搜嘎是个大哥大哥哥三道杠撒个傻瓜搜嘎是个大哥大哥哥三道杠撒个傻瓜搜嘎是个大哥大哥哥三道杠撒个傻瓜搜嘎是个大哥大哥哥三道杠撒个傻瓜搜嘎是个大哥大哥哥三道杠撒个傻瓜搜嘎是个大哥大哥哥三道杠撒个傻瓜搜嘎是个大哥大哥哥三道杠撒个傻瓜搜嘎是个大哥大哥哥三道杠撒个傻瓜搜嘎是个大哥大哥哥', '100', '2020-05-20 14:09:20', '2020-06-01 14:14:11', '1', null);
INSERT INTO `test_paper` VALUES ('2', '试卷二', '实打实大概', '是的噶啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', '60', '2020-05-27 09:26:02', '2020-06-01 14:14:12', '1', null);
INSERT INTO `test_paper` VALUES ('3', '试卷三', '是个', '管道撒啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', '42', '2020-05-27 09:29:32', '2020-06-01 14:14:13', '1', null);
INSERT INTO `test_paper` VALUES ('4', '试卷四', '十大歌手', '是个', '1', '2020-05-27 09:29:40', '2020-06-01 14:14:14', '1', null);
INSERT INTO `test_paper` VALUES ('5', '试卷五', '搜嘎是个', '', '1', '2020-05-27 09:29:49', '2020-06-01 14:14:14', '1', null);
INSERT INTO `test_paper` VALUES ('6', '试卷六', '是个', '', '1', '2020-05-27 09:29:58', '2020-06-01 14:14:15', '1', null);
INSERT INTO `test_paper` VALUES ('7', '试卷七', '是个', '', '1', '2020-05-27 09:30:07', '2020-06-01 14:14:16', '1', null);
INSERT INTO `test_paper` VALUES ('8', '试卷八', '的', '', '1', '2020-05-27 09:30:15', '2020-06-01 14:14:16', '1', null);
INSERT INTO `test_paper` VALUES ('9', '试卷九', '三道杠是个的', '', '1', '2020-05-27 09:30:22', '2020-06-01 14:14:17', '1', null);
INSERT INTO `test_paper` VALUES ('10', '试卷十', '感受到', '', '8', '2020-05-27 09:30:32', '2020-06-01 14:14:18', '1', null);
INSERT INTO `test_paper` VALUES ('11', '试卷十一', '是搭嘎十多个', '三个傻瓜撒的', '3', '2020-05-27 09:30:53', '2020-06-01 14:14:19', '1', null);
INSERT INTO `test_paper` VALUES ('12', '试卷测试', '', '', '1', '2020-06-01 11:26:29', '2020-06-01 14:15:03', '1', null);
INSERT INTO `test_paper` VALUES ('13', '六一儿童节测试', '王五', 'test', '5', '2020-06-01 14:16:02', '2020-06-01 15:05:57', '1', null);
INSERT INTO `test_paper` VALUES ('14', '六一儿童节', '张三', '是的', '5', '2020-06-01 15:06:27', '2020-06-16 14:23:50', '1', null);
INSERT INTO `test_paper` VALUES ('15', '考试', '1', '', '10', '2020-06-11 14:28:34', '2020-06-16 14:23:52', '1', null);
INSERT INTO `test_paper` VALUES ('16', '端午节知识有奖问答', '宋岩', '端午节知识', '10', '2020-06-16 14:25:20', '2020-06-21 17:40:24', '0', '0');
INSERT INTO `test_paper` VALUES ('17', '端午节', '宋岩', '', '10', '2020-06-18 09:17:24', '2020-06-18 10:17:36', '1', '0');
INSERT INTO `test_paper` VALUES ('18', '11', '11', '', '1', '2020-06-18 10:39:12', '2020-06-18 14:42:54', '0', '1');

-- ----------------------------
-- Table structure for `test_paper_answer`
-- ----------------------------
DROP TABLE IF EXISTS `test_paper_answer`;
CREATE TABLE `test_paper_answer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) DEFAULT NULL COMMENT '题目id',
  `option` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '选项例 A',
  `answer` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '答案',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `test_paper_question_id_index` (`question_id`)
) ENGINE=InnoDB AUTO_INCREMENT=222 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of test_paper_answer
-- ----------------------------
INSERT INTO `test_paper_answer` VALUES ('2', '2', null, '选项二', '2020-05-21 09:04:52');
INSERT INTO `test_paper_answer` VALUES ('3', '2', null, '选项三搜索', '2020-05-21 09:10:34');
INSERT INTO `test_paper_answer` VALUES ('4', '2', null, '选项一', '2020-05-21 09:15:42');
INSERT INTO `test_paper_answer` VALUES ('6', '7', null, '十多个傻瓜', '2020-05-21 09:30:54');
INSERT INTO `test_paper_answer` VALUES ('7', '7', null, '是根深蒂固撒嘎嘎', '2020-05-21 09:31:02');
INSERT INTO `test_paper_answer` VALUES ('8', '2', null, '是的归属感', '2020-05-27 09:32:54');
INSERT INTO `test_paper_answer` VALUES ('9', '10', null, '不是（）真确答案', '2020-06-01 14:17:47');
INSERT INTO `test_paper_answer` VALUES ('10', '10', null, '是', '2020-06-01 14:17:51');
INSERT INTO `test_paper_answer` VALUES ('11', '11', null, '张三', '2020-06-01 14:18:14');
INSERT INTO `test_paper_answer` VALUES ('12', '11', null, '李四', '2020-06-01 14:18:23');
INSERT INTO `test_paper_answer` VALUES ('13', '11', null, '王五', '2020-06-01 14:18:31');
INSERT INTO `test_paper_answer` VALUES ('14', '11', null, '都不是', '2020-06-01 14:18:38');
INSERT INTO `test_paper_answer` VALUES ('15', '12', null, '没有人写（正确答案）', '2020-06-01 14:19:56');
INSERT INTO `test_paper_answer` VALUES ('16', '12', null, '张三', '2020-06-01 14:20:03');
INSERT INTO `test_paper_answer` VALUES ('17', '12', null, '李四', '2020-06-01 14:20:09');
INSERT INTO `test_paper_answer` VALUES ('18', '13', null, '李四', '2020-06-01 14:20:25');
INSERT INTO `test_paper_answer` VALUES ('19', '13', null, '王二', '2020-06-01 14:20:33');
INSERT INTO `test_paper_answer` VALUES ('20', '13', null, '张三的儿子（正确答案）', '2020-06-01 14:20:47');
INSERT INTO `test_paper_answer` VALUES ('21', '13', null, '麻子', '2020-06-01 14:20:53');
INSERT INTO `test_paper_answer` VALUES ('22', '14', null, '张三', '2020-06-01 15:07:08');
INSERT INTO `test_paper_answer` VALUES ('23', '14', null, '星期一（真确答案）', '2020-06-01 15:07:17');
INSERT INTO `test_paper_answer` VALUES ('24', '14', null, '星期二', '2020-06-01 15:07:27');
INSERT INTO `test_paper_answer` VALUES ('25', '14', null, '星期三', '2020-06-01 15:07:39');
INSERT INTO `test_paper_answer` VALUES ('26', '17', null, '100000', '2020-06-11 14:29:31');
INSERT INTO `test_paper_answer` VALUES ('27', '17', null, '100000', '2020-06-11 14:29:40');
INSERT INTO `test_paper_answer` VALUES ('28', '17', null, '100000', '2020-06-11 14:29:47');
INSERT INTO `test_paper_answer` VALUES ('29', '19', null, 'A秦国', '2020-06-16 14:27:25');
INSERT INTO `test_paper_answer` VALUES ('30', '19', null, 'B魏国', '2020-06-16 14:27:37');
INSERT INTO `test_paper_answer` VALUES ('31', '19', null, 'C楚国', '2020-06-16 14:27:45');
INSERT INTO `test_paper_answer` VALUES ('32', '19', null, 'D赵国', '2020-06-16 14:27:50');
INSERT INTO `test_paper_answer` VALUES ('33', '20', null, 'A吉祥', '2020-06-16 14:30:59');
INSERT INTO `test_paper_answer` VALUES ('34', '20', null, 'B一种装饰', '2020-06-16 14:31:10');
INSERT INTO `test_paper_answer` VALUES ('35', '20', null, 'C治病防身', '2020-06-16 14:31:17');
INSERT INTO `test_paper_answer` VALUES ('36', '20', null, 'D驱邪避瘟', '2020-06-16 14:31:28');
INSERT INTO `test_paper_answer` VALUES ('37', '21', null, 'A甜味', '2020-06-16 14:31:58');
INSERT INTO `test_paper_answer` VALUES ('38', '21', null, 'B咸味', '2020-06-16 14:32:04');
INSERT INTO `test_paper_answer` VALUES ('39', '21', null, 'C都不是', '2020-06-16 14:32:11');
INSERT INTO `test_paper_answer` VALUES ('40', '22', null, 'A解毒', '2020-06-16 14:32:58');
INSERT INTO `test_paper_answer` VALUES ('41', '22', null, 'B纪念白蛇', '2020-06-16 14:33:05');
INSERT INTO `test_paper_answer` VALUES ('42', '22', null, 'C驱邪避瘟', '2020-06-16 14:33:11');
INSERT INTO `test_paper_answer` VALUES ('43', '22', null, 'D吉祥幸福', '2020-06-16 14:33:16');
INSERT INTO `test_paper_answer` VALUES ('44', '23', null, 'A南北朝时期', '2020-06-16 15:13:29');
INSERT INTO `test_paper_answer` VALUES ('45', '23', null, 'B春秋时期', '2020-06-16 15:13:37');
INSERT INTO `test_paper_answer` VALUES ('46', '23', null, 'C晋代', '2020-06-16 15:13:43');
INSERT INTO `test_paper_answer` VALUES ('47', '23', null, 'D周商时期', '2020-06-16 15:13:49');
INSERT INTO `test_paper_answer` VALUES ('48', '24', null, 'A南北朝时期', '2020-06-16 15:14:19');
INSERT INTO `test_paper_answer` VALUES ('49', '24', null, 'B商周时期', '2020-06-16 15:14:24');
INSERT INTO `test_paper_answer` VALUES ('50', '24', null, 'C战国时期', '2020-06-16 15:14:30');
INSERT INTO `test_paper_answer` VALUES ('51', '24', null, 'D春秋时期', '2020-06-16 15:14:35');
INSERT INTO `test_paper_answer` VALUES ('52', '25', null, 'A吃粽子', '2020-06-16 15:15:14');
INSERT INTO `test_paper_answer` VALUES ('53', '25', null, 'B赛龙舟', '2020-06-16 15:15:21');
INSERT INTO `test_paper_answer` VALUES ('54', '25', null, 'C登高采菊', '2020-06-16 15:15:26');
INSERT INTO `test_paper_answer` VALUES ('55', '25', null, 'D饮雄黄', '2020-06-16 15:15:33');
INSERT INTO `test_paper_answer` VALUES ('56', '26', null, '2', '2020-06-16 17:49:33');
INSERT INTO `test_paper_answer` VALUES ('57', '26', null, '3', '2020-06-16 17:49:33');
INSERT INTO `test_paper_answer` VALUES ('58', '26', null, '4', '2020-06-16 17:49:33');
INSERT INTO `test_paper_answer` VALUES ('59', '26', null, '5', '2020-06-16 17:49:33');
INSERT INTO `test_paper_answer` VALUES ('60', '27', null, '2', '2020-06-16 17:49:33');
INSERT INTO `test_paper_answer` VALUES ('61', '27', null, '3', '2020-06-16 17:49:33');
INSERT INTO `test_paper_answer` VALUES ('62', '27', null, '4', '2020-06-16 17:49:33');
INSERT INTO `test_paper_answer` VALUES ('63', '27', null, '5', '2020-06-16 17:49:33');
INSERT INTO `test_paper_answer` VALUES ('64', '28', null, '2', '2020-06-16 17:49:33');
INSERT INTO `test_paper_answer` VALUES ('65', '28', null, '3', '2020-06-16 17:49:33');
INSERT INTO `test_paper_answer` VALUES ('66', '28', null, '4', '2020-06-16 17:49:33');
INSERT INTO `test_paper_answer` VALUES ('67', '28', null, '5', '2020-06-16 17:49:33');
INSERT INTO `test_paper_answer` VALUES ('68', '29', null, '2', '2020-06-16 17:49:33');
INSERT INTO `test_paper_answer` VALUES ('69', '29', null, '3', '2020-06-16 17:49:33');
INSERT INTO `test_paper_answer` VALUES ('70', '29', null, '4', '2020-06-16 17:49:33');
INSERT INTO `test_paper_answer` VALUES ('71', '29', null, '5', '2020-06-16 17:49:33');
INSERT INTO `test_paper_answer` VALUES ('72', '30', null, '2', '2020-06-16 17:49:33');
INSERT INTO `test_paper_answer` VALUES ('73', '30', null, '3', '2020-06-16 17:49:33');
INSERT INTO `test_paper_answer` VALUES ('74', '30', null, '4', '2020-06-16 17:49:33');
INSERT INTO `test_paper_answer` VALUES ('75', '30', null, '5', '2020-06-16 17:49:33');
INSERT INTO `test_paper_answer` VALUES ('76', '31', null, '2', '2020-06-16 17:49:33');
INSERT INTO `test_paper_answer` VALUES ('77', '31', null, '3', '2020-06-16 17:49:33');
INSERT INTO `test_paper_answer` VALUES ('78', '31', null, '4', '2020-06-16 17:49:33');
INSERT INTO `test_paper_answer` VALUES ('79', '31', null, '5', '2020-06-16 17:49:33');
INSERT INTO `test_paper_answer` VALUES ('80', '32', null, '2', '2020-06-16 17:49:33');
INSERT INTO `test_paper_answer` VALUES ('81', '32', null, '3', '2020-06-16 17:49:33');
INSERT INTO `test_paper_answer` VALUES ('82', '32', null, '4', '2020-06-16 17:49:33');
INSERT INTO `test_paper_answer` VALUES ('83', '32', null, '5', '2020-06-16 17:49:33');
INSERT INTO `test_paper_answer` VALUES ('84', '33', null, '2', '2020-06-16 17:49:33');
INSERT INTO `test_paper_answer` VALUES ('85', '33', null, '3', '2020-06-16 17:49:33');
INSERT INTO `test_paper_answer` VALUES ('86', '33', null, '4', '2020-06-16 17:49:33');
INSERT INTO `test_paper_answer` VALUES ('87', '33', null, '5', '2020-06-16 17:49:33');
INSERT INTO `test_paper_answer` VALUES ('88', '34', null, '2', '2020-06-16 17:49:33');
INSERT INTO `test_paper_answer` VALUES ('89', '34', null, '3', '2020-06-16 17:49:33');
INSERT INTO `test_paper_answer` VALUES ('90', '34', null, '4', '2020-06-16 17:49:33');
INSERT INTO `test_paper_answer` VALUES ('91', '34', null, '5', '2020-06-16 17:49:33');
INSERT INTO `test_paper_answer` VALUES ('92', '35', null, '2', '2020-06-16 17:49:33');
INSERT INTO `test_paper_answer` VALUES ('93', '35', null, '3', '2020-06-16 17:49:33');
INSERT INTO `test_paper_answer` VALUES ('94', '35', null, '4', '2020-06-16 17:49:34');
INSERT INTO `test_paper_answer` VALUES ('95', '35', null, '5', '2020-06-16 17:49:34');
INSERT INTO `test_paper_answer` VALUES ('96', '36', null, '2', '2020-06-16 17:49:34');
INSERT INTO `test_paper_answer` VALUES ('97', '36', null, '3', '2020-06-16 17:49:34');
INSERT INTO `test_paper_answer` VALUES ('98', '36', null, '4', '2020-06-16 17:49:34');
INSERT INTO `test_paper_answer` VALUES ('99', '36', null, '5', '2020-06-16 17:49:34');
INSERT INTO `test_paper_answer` VALUES ('100', '37', null, '2', '2020-06-16 17:49:34');
INSERT INTO `test_paper_answer` VALUES ('101', '37', null, '3', '2020-06-16 17:49:34');
INSERT INTO `test_paper_answer` VALUES ('102', '37', null, '4', '2020-06-16 17:49:34');
INSERT INTO `test_paper_answer` VALUES ('103', '37', null, '5', '2020-06-16 17:49:34');
INSERT INTO `test_paper_answer` VALUES ('104', '38', null, '2', '2020-06-16 17:49:34');
INSERT INTO `test_paper_answer` VALUES ('105', '38', null, '3', '2020-06-16 17:49:34');
INSERT INTO `test_paper_answer` VALUES ('106', '38', null, '4', '2020-06-16 17:49:34');
INSERT INTO `test_paper_answer` VALUES ('107', '38', null, '5', '2020-06-16 17:49:34');
INSERT INTO `test_paper_answer` VALUES ('108', '39', null, '2', '2020-06-16 17:49:34');
INSERT INTO `test_paper_answer` VALUES ('109', '39', null, '3', '2020-06-16 17:49:34');
INSERT INTO `test_paper_answer` VALUES ('110', '39', null, '4', '2020-06-16 17:49:34');
INSERT INTO `test_paper_answer` VALUES ('111', '39', null, '5', '2020-06-16 17:49:34');
INSERT INTO `test_paper_answer` VALUES ('112', '40', null, '2', '2020-06-16 19:09:00');
INSERT INTO `test_paper_answer` VALUES ('113', '40', null, '3', '2020-06-16 19:09:00');
INSERT INTO `test_paper_answer` VALUES ('114', '40', null, '4', '2020-06-16 19:09:00');
INSERT INTO `test_paper_answer` VALUES ('115', '40', null, '5', '2020-06-16 19:09:00');
INSERT INTO `test_paper_answer` VALUES ('116', '41', null, '2', '2020-06-16 19:09:00');
INSERT INTO `test_paper_answer` VALUES ('117', '41', null, '3', '2020-06-16 19:09:00');
INSERT INTO `test_paper_answer` VALUES ('118', '41', null, '4', '2020-06-16 19:09:00');
INSERT INTO `test_paper_answer` VALUES ('119', '41', null, '5', '2020-06-16 19:09:00');
INSERT INTO `test_paper_answer` VALUES ('120', '42', null, '2', '2020-06-16 19:09:00');
INSERT INTO `test_paper_answer` VALUES ('121', '42', null, '3', '2020-06-16 19:09:00');
INSERT INTO `test_paper_answer` VALUES ('122', '42', null, '4', '2020-06-16 19:09:00');
INSERT INTO `test_paper_answer` VALUES ('123', '42', null, '5', '2020-06-16 19:09:00');
INSERT INTO `test_paper_answer` VALUES ('124', '43', null, '2', '2020-06-16 19:09:00');
INSERT INTO `test_paper_answer` VALUES ('125', '43', null, '3', '2020-06-16 19:09:00');
INSERT INTO `test_paper_answer` VALUES ('126', '43', null, '4', '2020-06-16 19:09:00');
INSERT INTO `test_paper_answer` VALUES ('127', '43', null, '5', '2020-06-16 19:09:00');
INSERT INTO `test_paper_answer` VALUES ('128', '44', null, '2', '2020-06-16 19:09:00');
INSERT INTO `test_paper_answer` VALUES ('129', '44', null, '3', '2020-06-16 19:09:00');
INSERT INTO `test_paper_answer` VALUES ('130', '44', null, '4', '2020-06-16 19:09:00');
INSERT INTO `test_paper_answer` VALUES ('131', '44', null, '5', '2020-06-16 19:09:00');
INSERT INTO `test_paper_answer` VALUES ('132', '45', null, '2', '2020-06-16 19:09:00');
INSERT INTO `test_paper_answer` VALUES ('133', '45', null, '3', '2020-06-16 19:09:00');
INSERT INTO `test_paper_answer` VALUES ('134', '45', null, '4', '2020-06-16 19:09:00');
INSERT INTO `test_paper_answer` VALUES ('135', '45', null, '5', '2020-06-16 19:09:00');
INSERT INTO `test_paper_answer` VALUES ('136', '46', null, '2', '2020-06-16 19:09:00');
INSERT INTO `test_paper_answer` VALUES ('137', '46', null, '3', '2020-06-16 19:09:00');
INSERT INTO `test_paper_answer` VALUES ('138', '46', null, '4', '2020-06-16 19:09:00');
INSERT INTO `test_paper_answer` VALUES ('139', '46', null, '5', '2020-06-16 19:09:00');
INSERT INTO `test_paper_answer` VALUES ('140', '47', null, '2', '2020-06-16 19:09:00');
INSERT INTO `test_paper_answer` VALUES ('141', '47', null, '3', '2020-06-16 19:09:00');
INSERT INTO `test_paper_answer` VALUES ('142', '47', null, '4', '2020-06-16 19:09:00');
INSERT INTO `test_paper_answer` VALUES ('143', '47', null, '5', '2020-06-16 19:09:00');
INSERT INTO `test_paper_answer` VALUES ('144', '48', null, '2', '2020-06-16 19:09:00');
INSERT INTO `test_paper_answer` VALUES ('145', '48', null, '3', '2020-06-16 19:09:00');
INSERT INTO `test_paper_answer` VALUES ('146', '48', null, '4', '2020-06-16 19:09:00');
INSERT INTO `test_paper_answer` VALUES ('147', '48', null, '5', '2020-06-16 19:09:00');
INSERT INTO `test_paper_answer` VALUES ('148', '49', null, '2', '2020-06-16 19:09:00');
INSERT INTO `test_paper_answer` VALUES ('149', '49', null, '3', '2020-06-16 19:09:00');
INSERT INTO `test_paper_answer` VALUES ('150', '49', null, '4', '2020-06-16 19:09:00');
INSERT INTO `test_paper_answer` VALUES ('151', '49', null, '5', '2020-06-16 19:09:00');
INSERT INTO `test_paper_answer` VALUES ('152', '50', null, '2', '2020-06-16 19:09:00');
INSERT INTO `test_paper_answer` VALUES ('153', '50', null, '3', '2020-06-16 19:09:00');
INSERT INTO `test_paper_answer` VALUES ('154', '50', null, '4', '2020-06-16 19:09:00');
INSERT INTO `test_paper_answer` VALUES ('155', '50', null, '5', '2020-06-16 19:09:00');
INSERT INTO `test_paper_answer` VALUES ('156', '51', null, '2', '2020-06-16 19:09:00');
INSERT INTO `test_paper_answer` VALUES ('157', '51', null, '3', '2020-06-16 19:09:00');
INSERT INTO `test_paper_answer` VALUES ('158', '51', null, '4', '2020-06-16 19:09:00');
INSERT INTO `test_paper_answer` VALUES ('159', '51', null, '5', '2020-06-16 19:09:00');
INSERT INTO `test_paper_answer` VALUES ('160', '52', null, '2', '2020-06-16 19:09:01');
INSERT INTO `test_paper_answer` VALUES ('161', '52', null, '3', '2020-06-16 19:09:01');
INSERT INTO `test_paper_answer` VALUES ('162', '52', null, '4', '2020-06-16 19:09:01');
INSERT INTO `test_paper_answer` VALUES ('163', '52', null, '5', '2020-06-16 19:09:01');
INSERT INTO `test_paper_answer` VALUES ('164', '53', null, '2', '2020-06-16 19:09:01');
INSERT INTO `test_paper_answer` VALUES ('165', '53', null, '3', '2020-06-16 19:09:01');
INSERT INTO `test_paper_answer` VALUES ('166', '53', null, '4', '2020-06-16 19:09:01');
INSERT INTO `test_paper_answer` VALUES ('167', '53', null, '5', '2020-06-16 19:09:01');
INSERT INTO `test_paper_answer` VALUES ('168', '54', null, 'A米角', '2020-06-18 10:18:09');
INSERT INTO `test_paper_answer` VALUES ('169', '54', null, 'B米包', '2020-06-18 10:18:16');
INSERT INTO `test_paper_answer` VALUES ('170', '54', null, 'C角黍', '2020-06-18 10:18:24');
INSERT INTO `test_paper_answer` VALUES ('171', '54', null, 'D米黍', '2020-06-18 10:18:34');
INSERT INTO `test_paper_answer` VALUES ('172', '55', null, 'A农历六月初五', '2020-06-18 10:19:32');
INSERT INTO `test_paper_answer` VALUES ('173', '55', null, 'B阳历六月初五', '2020-06-18 10:19:38');
INSERT INTO `test_paper_answer` VALUES ('174', '55', null, 'C阳历五月初五', '2020-06-18 10:19:45');
INSERT INTO `test_paper_answer` VALUES ('175', '55', null, 'D农历五月初五', '2020-06-18 10:19:50');
INSERT INTO `test_paper_answer` VALUES ('176', '56', null, 'A蜥蜴', '2020-06-18 10:20:18');
INSERT INTO `test_paper_answer` VALUES ('177', '56', null, 'B青蛙', '2020-06-18 10:20:23');
INSERT INTO `test_paper_answer` VALUES ('178', '56', null, 'C蟾蜍', '2020-06-18 10:20:30');
INSERT INTO `test_paper_answer` VALUES ('179', '56', null, 'D毛毛虫', '2020-06-18 10:20:36');
INSERT INTO `test_paper_answer` VALUES ('180', '57', null, 'A黄帝内经学', '2020-06-18 10:21:03');
INSERT INTO `test_paper_answer` VALUES ('181', '57', null, 'B阴阳五行学', '2020-06-18 10:21:09');
INSERT INTO `test_paper_answer` VALUES ('182', '57', null, 'C天地日月学', '2020-06-18 10:21:13');
INSERT INTO `test_paper_answer` VALUES ('183', '57', null, 'D人体经络学', '2020-06-18 10:21:18');
INSERT INTO `test_paper_answer` VALUES ('184', '58', null, 'A金沙江', '2020-06-18 10:21:46');
INSERT INTO `test_paper_answer` VALUES ('185', '58', null, 'B长江', '2020-06-18 10:22:11');
INSERT INTO `test_paper_answer` VALUES ('186', '58', null, 'C珠江', '2020-06-18 10:22:20');
INSERT INTO `test_paper_answer` VALUES ('187', '58', null, 'D汨罗江', '2020-06-18 10:22:25');
INSERT INTO `test_paper_answer` VALUES ('188', '59', null, 'A熏衣草', '2020-06-18 10:22:49');
INSERT INTO `test_paper_answer` VALUES ('189', '59', null, 'B菖蒲', '2020-06-18 10:22:55');
INSERT INTO `test_paper_answer` VALUES ('190', '59', null, 'C苇叶', '2020-06-18 10:23:01');
INSERT INTO `test_paper_answer` VALUES ('191', '59', null, 'D荷叶', '2020-06-18 10:23:07');
INSERT INTO `test_paper_answer` VALUES ('192', '60', null, 'A郊游', '2020-06-18 10:23:38');
INSERT INTO `test_paper_answer` VALUES ('193', '60', null, 'B遍游', '2020-06-18 10:23:42');
INSERT INTO `test_paper_answer` VALUES ('194', '60', null, 'C踏春', '2020-06-18 10:23:47');
INSERT INTO `test_paper_answer` VALUES ('195', '60', null, 'D远郊', '2020-06-18 10:23:51');
INSERT INTO `test_paper_answer` VALUES ('196', '61', null, 'A新鲜竹叶', '2020-06-18 10:24:16');
INSERT INTO `test_paper_answer` VALUES ('197', '61', null, 'B苇叶', '2020-06-18 10:24:21');
INSERT INTO `test_paper_answer` VALUES ('198', '61', null, 'C乾竹叶', '2020-06-18 10:24:26');
INSERT INTO `test_paper_answer` VALUES ('199', '62', null, 'A象征牛 祭祖', '2020-06-18 10:24:49');
INSERT INTO `test_paper_answer` VALUES ('200', '62', null, 'B象征剑 勇猛', '2020-06-18 10:25:05');
INSERT INTO `test_paper_answer` VALUES ('201', '62', null, 'C象征果实 丰收', '2020-06-18 10:25:11');
INSERT INTO `test_paper_answer` VALUES ('202', '62', null, 'D象征塔 健康', '2020-06-18 10:25:17');
INSERT INTO `test_paper_answer` VALUES ('203', '63', null, 'A龙', '2020-06-18 10:25:40');
INSERT INTO `test_paper_answer` VALUES ('204', '63', null, 'B狮子', '2020-06-18 10:25:46');
INSERT INTO `test_paper_answer` VALUES ('205', '63', null, 'C蛇', '2020-06-18 10:25:57');
INSERT INTO `test_paper_answer` VALUES ('206', '63', null, 'D虎', '2020-06-18 10:26:01');
INSERT INTO `test_paper_answer` VALUES ('207', '64', null, 'A《离骚》', '2020-06-18 10:26:27');
INSERT INTO `test_paper_answer` VALUES ('208', '64', null, 'B《怀沙》', '2020-06-18 10:26:33');
INSERT INTO `test_paper_answer` VALUES ('209', '64', null, 'C《天问》', '2020-06-18 10:26:39');
INSERT INTO `test_paper_answer` VALUES ('210', '65', null, 'A1979', '2020-06-18 10:27:10');
INSERT INTO `test_paper_answer` VALUES ('211', '65', null, 'B1980', '2020-06-18 10:27:14');
INSERT INTO `test_paper_answer` VALUES ('212', '65', null, 'C1982', '2020-06-18 10:27:20');
INSERT INTO `test_paper_answer` VALUES ('213', '65', null, 'D1990', '2020-06-18 10:27:24');
INSERT INTO `test_paper_answer` VALUES ('214', '66', null, 'A纪念曹娥', '2020-06-18 10:27:57');
INSERT INTO `test_paper_answer` VALUES ('215', '66', null, 'B纪念伍子胥', '2020-06-18 10:28:03');
INSERT INTO `test_paper_answer` VALUES ('216', '66', null, 'C纪念楚庄王', '2020-06-18 10:28:08');
INSERT INTO `test_paper_answer` VALUES ('217', '66', null, 'D纪念屈原', '2020-06-18 10:28:14');
INSERT INTO `test_paper_answer` VALUES ('218', '67', null, '2', '2020-06-18 10:41:00');
INSERT INTO `test_paper_answer` VALUES ('219', '67', null, '3', '2020-06-18 10:41:00');
INSERT INTO `test_paper_answer` VALUES ('220', '67', null, '4', '2020-06-18 10:41:00');
INSERT INTO `test_paper_answer` VALUES ('221', '67', null, '5', '2020-06-18 10:41:00');

-- ----------------------------
-- Table structure for `test_paper_mark`
-- ----------------------------
DROP TABLE IF EXISTS `test_paper_mark`;
CREATE TABLE `test_paper_mark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wx_user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `test_paper_id` int(11) DEFAULT NULL COMMENT '试卷id',
  `mark` int(11) DEFAULT NULL COMMENT '分叔成绩',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `test_paper_mark_question_id_user_id_index` (`test_paper_id`,`wx_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of test_paper_mark
-- ----------------------------
INSERT INTO `test_paper_mark` VALUES ('1', '1', '1', '10', null);
INSERT INTO `test_paper_mark` VALUES ('2', '1', '12', '0', null);
INSERT INTO `test_paper_mark` VALUES ('3', null, '13', '10', null);
INSERT INTO `test_paper_mark` VALUES ('4', null, '13', '5', null);
INSERT INTO `test_paper_mark` VALUES ('5', '3', '13', '0', null);
INSERT INTO `test_paper_mark` VALUES ('6', null, '14', '5', '2020-06-01 15:28:50');
INSERT INTO `test_paper_mark` VALUES ('7', null, '14', '0', '2020-06-01 15:29:39');
INSERT INTO `test_paper_mark` VALUES ('8', null, '14', '0', '2020-06-01 16:14:08');
INSERT INTO `test_paper_mark` VALUES ('9', null, '14', '0', '2020-06-01 16:20:38');
INSERT INTO `test_paper_mark` VALUES ('10', null, '14', '0', '2020-06-01 16:45:07');
INSERT INTO `test_paper_mark` VALUES ('11', '17', '14', '0', '2020-06-01 17:06:24');
INSERT INTO `test_paper_mark` VALUES ('12', null, '14', '5', '2020-06-01 17:28:51');
INSERT INTO `test_paper_mark` VALUES ('13', null, '14', '5', '2020-06-01 19:05:58');
INSERT INTO `test_paper_mark` VALUES ('14', null, '14', '0', '2020-06-01 21:33:02');
INSERT INTO `test_paper_mark` VALUES ('15', null, '14', '5', '2020-06-02 08:36:20');
INSERT INTO `test_paper_mark` VALUES ('16', '18', '14', '5', '2020-06-02 09:35:20');
INSERT INTO `test_paper_mark` VALUES ('17', null, '14', '5', '2020-06-02 14:48:45');
INSERT INTO `test_paper_mark` VALUES ('18', null, '14', '5', '2020-06-04 12:46:05');
INSERT INTO `test_paper_mark` VALUES ('19', null, '14', '0', '2020-06-05 17:28:41');
INSERT INTO `test_paper_mark` VALUES ('20', '20', '14', '5', '2020-06-08 09:23:48');
INSERT INTO `test_paper_mark` VALUES ('21', null, '14', '5', '2020-06-08 16:45:25');
INSERT INTO `test_paper_mark` VALUES ('22', '21', '14', '0', '2020-06-09 10:48:05');
INSERT INTO `test_paper_mark` VALUES ('23', '23', '14', '0', '2020-06-10 19:53:05');
INSERT INTO `test_paper_mark` VALUES ('24', '24', '14', '5', '2020-06-11 10:16:48');
INSERT INTO `test_paper_mark` VALUES ('25', '19', '15', '0', '2020-06-11 17:53:05');
INSERT INTO `test_paper_mark` VALUES ('26', '27', '15', '0', '2020-06-11 18:51:18');
INSERT INTO `test_paper_mark` VALUES ('27', '30', '15', '0', '2020-06-11 21:56:54');
INSERT INTO `test_paper_mark` VALUES ('28', '30', '14', '5', '2020-06-11 21:57:40');
INSERT INTO `test_paper_mark` VALUES ('29', '32', '15', '0', '2020-06-11 22:58:46');
INSERT INTO `test_paper_mark` VALUES ('30', '32', '14', '5', '2020-06-11 22:59:00');
INSERT INTO `test_paper_mark` VALUES ('31', '33', '14', '5', '2020-06-12 09:16:22');
INSERT INTO `test_paper_mark` VALUES ('32', '34', '14', '5', '2020-06-12 09:17:17');
INSERT INTO `test_paper_mark` VALUES ('33', '21', '15', '0', '2020-06-12 09:35:38');
INSERT INTO `test_paper_mark` VALUES ('34', '35', '15', '0', '2020-06-12 12:33:04');
INSERT INTO `test_paper_mark` VALUES ('35', '35', '14', '0', '2020-06-12 12:33:29');
INSERT INTO `test_paper_mark` VALUES ('36', '36', '15', '0', '2020-06-12 14:22:53');
INSERT INTO `test_paper_mark` VALUES ('37', '36', '14', '5', '2020-06-12 14:23:42');
INSERT INTO `test_paper_mark` VALUES ('38', '37', '15', '0', '2020-06-12 21:08:38');
INSERT INTO `test_paper_mark` VALUES ('39', '37', '14', '5', '2020-06-12 21:09:22');
INSERT INTO `test_paper_mark` VALUES ('40', '38', '14', '5', '2020-06-12 22:40:47');
INSERT INTO `test_paper_mark` VALUES ('41', '38', '15', '0', '2020-06-12 22:41:20');
INSERT INTO `test_paper_mark` VALUES ('42', '39', '15', '0', '2020-06-12 22:55:18');
INSERT INTO `test_paper_mark` VALUES ('43', '39', '14', '5', '2020-06-12 22:55:55');
INSERT INTO `test_paper_mark` VALUES ('44', '40', '15', '0', '2020-06-13 06:15:59');
INSERT INTO `test_paper_mark` VALUES ('45', '41', '14', '5', '2020-06-13 08:11:10');
INSERT INTO `test_paper_mark` VALUES ('46', '41', '15', '0', '2020-06-13 08:14:52');
INSERT INTO `test_paper_mark` VALUES ('47', '42', '14', '5', '2020-06-13 13:03:12');
INSERT INTO `test_paper_mark` VALUES ('48', '42', '15', '0', '2020-06-13 13:03:44');
INSERT INTO `test_paper_mark` VALUES ('49', '44', '14', '0', '2020-06-13 18:54:16');
INSERT INTO `test_paper_mark` VALUES ('50', '44', '15', '0', '2020-06-13 18:55:03');
INSERT INTO `test_paper_mark` VALUES ('51', '46', '14', '5', '2020-06-14 13:37:56');
INSERT INTO `test_paper_mark` VALUES ('52', '46', '15', '0', '2020-06-14 13:38:29');
INSERT INTO `test_paper_mark` VALUES ('53', '48', '15', '0', '2020-06-15 19:19:36');
INSERT INTO `test_paper_mark` VALUES ('54', '48', '14', '5', '2020-06-15 19:19:52');
INSERT INTO `test_paper_mark` VALUES ('55', '50', '15', '0', '2020-06-15 20:50:47');
INSERT INTO `test_paper_mark` VALUES ('56', '50', '14', '5', '2020-06-15 20:51:04');
INSERT INTO `test_paper_mark` VALUES ('57', '51', '15', '0', '2020-06-15 21:44:43');
INSERT INTO `test_paper_mark` VALUES ('58', '51', '14', '5', '2020-06-15 21:45:19');
INSERT INTO `test_paper_mark` VALUES ('59', '52', '14', '5', '2020-06-15 22:07:15');
INSERT INTO `test_paper_mark` VALUES ('60', '52', '15', '0', '2020-06-15 22:08:05');
INSERT INTO `test_paper_mark` VALUES ('61', '53', '15', '0', '2020-06-16 06:06:54');
INSERT INTO `test_paper_mark` VALUES ('62', '53', '14', '0', '2020-06-16 06:07:25');
INSERT INTO `test_paper_mark` VALUES ('63', '54', '14', '0', '2020-06-16 08:26:49');
INSERT INTO `test_paper_mark` VALUES ('64', '56', '14', '5', '2020-06-16 09:58:33');
INSERT INTO `test_paper_mark` VALUES ('65', '57', '14', '0', '2020-06-16 10:46:10');
INSERT INTO `test_paper_mark` VALUES ('66', '57', '15', '0', '2020-06-16 10:46:59');
INSERT INTO `test_paper_mark` VALUES ('67', '24', '16', '5', '2020-06-16 14:28:52');
INSERT INTO `test_paper_mark` VALUES ('68', '17', '16', '20', '2020-06-16 14:52:05');
INSERT INTO `test_paper_mark` VALUES ('69', '59', '16', '15', '2020-06-16 16:11:54');
INSERT INTO `test_paper_mark` VALUES ('71', '61', '16', '35', '2020-06-17 13:46:58');
INSERT INTO `test_paper_mark` VALUES ('72', '62', '16', '15', '2020-06-17 15:02:01');
INSERT INTO `test_paper_mark` VALUES ('73', '63', '16', '15', '2020-06-17 15:21:53');
INSERT INTO `test_paper_mark` VALUES ('74', '65', '16', '15', '2020-06-17 16:05:22');
INSERT INTO `test_paper_mark` VALUES ('75', '64', '16', '0', '2020-06-17 16:38:17');
INSERT INTO `test_paper_mark` VALUES ('76', '66', '16', '20', '2020-06-17 16:53:31');
INSERT INTO `test_paper_mark` VALUES ('77', '68', '16', '30', '2020-06-17 17:40:00');
INSERT INTO `test_paper_mark` VALUES ('78', '67', '16', '20', '2020-06-17 17:40:13');
INSERT INTO `test_paper_mark` VALUES ('79', '69', '16', '20', '2020-06-17 18:01:38');
INSERT INTO `test_paper_mark` VALUES ('80', '70', '16', '20', '2020-06-17 18:43:31');
INSERT INTO `test_paper_mark` VALUES ('81', '71', '16', '25', '2020-06-17 18:47:50');
INSERT INTO `test_paper_mark` VALUES ('82', '72', '16', '25', '2020-06-17 19:34:02');
INSERT INTO `test_paper_mark` VALUES ('83', '60', '16', '30', '2020-06-18 06:17:34');
INSERT INTO `test_paper_mark` VALUES ('84', '74', '16', '25', '2020-06-18 13:32:06');
INSERT INTO `test_paper_mark` VALUES ('85', '74', '18', '5', '2020-06-18 13:36:14');
INSERT INTO `test_paper_mark` VALUES ('86', '75', '18', '5', '2020-06-18 14:02:24');
INSERT INTO `test_paper_mark` VALUES ('87', '76', '16', '55', '2020-06-18 15:11:30');
INSERT INTO `test_paper_mark` VALUES ('88', '78', '16', '70', '2020-06-21 18:38:22');
INSERT INTO `test_paper_mark` VALUES ('89', '79', '16', '50', '2020-06-21 18:38:23');
INSERT INTO `test_paper_mark` VALUES ('90', '80', '16', '95', '2020-06-21 19:05:04');
INSERT INTO `test_paper_mark` VALUES ('91', '81', '16', '45', '2020-06-21 19:07:07');
INSERT INTO `test_paper_mark` VALUES ('92', '82', '16', '100', '2020-06-21 19:19:43');
INSERT INTO `test_paper_mark` VALUES ('93', '83', '16', '70', '2020-06-21 19:33:02');
INSERT INTO `test_paper_mark` VALUES ('94', '28', '16', '100', '2020-06-21 20:13:35');
INSERT INTO `test_paper_mark` VALUES ('95', '85', '16', '75', '2020-06-21 20:50:13');
INSERT INTO `test_paper_mark` VALUES ('96', '86', '16', '40', '2020-06-21 20:54:04');
INSERT INTO `test_paper_mark` VALUES ('97', '87', '16', '85', '2020-06-21 21:01:41');
INSERT INTO `test_paper_mark` VALUES ('98', '89', '16', '55', '2020-06-21 21:13:11');
INSERT INTO `test_paper_mark` VALUES ('99', '88', '16', '60', '2020-06-21 21:18:34');
INSERT INTO `test_paper_mark` VALUES ('100', '91', '16', '100', '2020-06-21 21:28:36');
INSERT INTO `test_paper_mark` VALUES ('101', '90', '16', '85', '2020-06-21 21:29:30');
INSERT INTO `test_paper_mark` VALUES ('102', '92', '16', '65', '2020-06-21 21:39:17');
INSERT INTO `test_paper_mark` VALUES ('103', '93', '16', '65', '2020-06-21 21:40:20');
INSERT INTO `test_paper_mark` VALUES ('104', '94', '16', '100', '2020-06-21 22:18:21');
INSERT INTO `test_paper_mark` VALUES ('105', '96', '16', '90', '2020-06-21 22:46:08');
INSERT INTO `test_paper_mark` VALUES ('106', '98', '16', '100', '2020-06-21 23:36:05');
INSERT INTO `test_paper_mark` VALUES ('107', '99', '16', '30', '2020-06-22 01:20:12');
INSERT INTO `test_paper_mark` VALUES ('108', '100', '16', '75', '2020-06-22 06:05:17');
INSERT INTO `test_paper_mark` VALUES ('109', '102', '16', '80', '2020-06-22 07:05:49');
INSERT INTO `test_paper_mark` VALUES ('110', '103', '16', '55', '2020-06-22 08:03:00');
INSERT INTO `test_paper_mark` VALUES ('111', '104', '16', '60', '2020-06-22 08:05:14');
INSERT INTO `test_paper_mark` VALUES ('112', '105', '16', '75', '2020-06-22 09:04:51');
INSERT INTO `test_paper_mark` VALUES ('113', '106', '16', '80', '2020-06-22 09:11:28');
INSERT INTO `test_paper_mark` VALUES ('114', '107', '16', '90', '2020-06-22 09:59:10');
INSERT INTO `test_paper_mark` VALUES ('115', '108', '16', '100', '2020-06-22 10:10:59');
INSERT INTO `test_paper_mark` VALUES ('116', '109', '16', '100', '2020-06-22 10:38:35');
INSERT INTO `test_paper_mark` VALUES ('117', '110', '16', '100', '2020-06-22 10:40:16');
INSERT INTO `test_paper_mark` VALUES ('118', '111', '16', '100', '2020-06-22 10:41:05');
INSERT INTO `test_paper_mark` VALUES ('119', '112', '16', '75', '2020-06-22 11:03:40');
INSERT INTO `test_paper_mark` VALUES ('120', '113', '16', '55', '2020-06-22 11:12:23');
INSERT INTO `test_paper_mark` VALUES ('121', '114', '16', '65', '2020-06-22 11:16:53');

-- ----------------------------
-- Table structure for `test_paper_question`
-- ----------------------------
DROP TABLE IF EXISTS `test_paper_question`;
CREATE TABLE `test_paper_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `paper_id` int(11) DEFAULT NULL,
  `question_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '题目',
  `answer_detail` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '答案详解',
  `answer` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '答案例如 A',
  `point` int(11) DEFAULT NULL COMMENT '分数',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '题目类型，例文学',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `is_delete` int(255) DEFAULT NULL COMMENT '是否删除 0是未删除1是已删除',
  PRIMARY KEY (`id`),
  KEY `test_paper_question_paper_id_question_name_index` (`paper_id`,`question_name`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of test_paper_question
-- ----------------------------
INSERT INTO `test_paper_question` VALUES ('1', '1', '都是噶时代感', '', '', '6', '', '2020-05-20 16:58:25', '2020-05-20 17:05:52', '1');
INSERT INTO `test_paper_question` VALUES ('2', '1', '题目一', '解析解析解析解析解析解析解析解析解析解析解析解析解析解析解析解析解析解析解析解析解析解析解析解析解析解析解析解析解析解析解析解析解析解析解析解析解析解析解析解析解析解析解析解析解析解析解析解析解析解析解析解析解析解析', '3', '5', '', '2020-05-20 17:06:51', '2020-05-21 09:34:14', '0');
INSERT INTO `test_paper_question` VALUES ('3', '1', '是搭嘎十多个', '', '', '6', '', '2020-05-20 17:10:47', '2020-05-21 09:29:56', '1');
INSERT INTO `test_paper_question` VALUES ('4', '1', '刚三道杠撒蛋糕师', '', '', '1', '', '2020-05-20 17:14:41', '2020-05-21 09:29:56', '1');
INSERT INTO `test_paper_question` VALUES ('5', '1', '试卷二', '', '', '5', '', '2020-05-20 17:15:51', '2020-05-21 09:29:55', '1');
INSERT INTO `test_paper_question` VALUES ('6', '1', '第三个', '', '', '1', '', '2020-05-20 17:16:10', '2020-05-21 09:29:54', '1');
INSERT INTO `test_paper_question` VALUES ('7', '1', '三国杀是个是个是个', '十多个杀三个', '6', '5', '', '2020-05-21 09:30:33', '2020-05-21 09:31:04', '0');
INSERT INTO `test_paper_question` VALUES ('8', '1', '三道杠撒个', '', '', '1', '', '2020-05-21 09:31:28', null, '0');
INSERT INTO `test_paper_question` VALUES ('9', '1', '都是根深蒂固', '', '', '1', '', '2020-05-21 09:34:08', null, '0');
INSERT INTO `test_paper_question` VALUES ('10', '13', '儿童节是国际节日吗', '我也不知道', '9', '5', '', '2020-06-01 14:16:41', '2020-06-01 14:19:21', '0');
INSERT INTO `test_paper_question` VALUES ('11', '13', '儿童节是谁建立的', '展示', '14', '5', '', '2020-06-01 14:16:56', '2020-06-01 14:18:54', '0');
INSERT INTO `test_paper_question` VALUES ('12', '13', '格林童话是谁写的', '是多少', '15', '5', '', '2020-06-01 14:17:15', '2020-06-01 14:20:16', '0');
INSERT INTO `test_paper_question` VALUES ('13', '13', '张三的儿子是谁', '1212', '20', '5', '', '2020-06-01 14:17:30', '2020-06-01 14:21:01', '0');
INSERT INTO `test_paper_question` VALUES ('14', '14', '今天星期几', '对', '23', '5', '', '2020-06-01 15:06:56', '2020-06-01 15:07:57', '0');
INSERT INTO `test_paper_question` VALUES ('15', '14', '答题', '', '', '1', '', '2020-06-11 14:26:33', null, '0');
INSERT INTO `test_paper_question` VALUES ('16', '14', '1', '', '', '100', '', '2020-06-11 14:27:36', null, '0');
INSERT INTO `test_paper_question` VALUES ('17', '15', '1千米等于多少厘米', '', '', '10', '', '2020-06-11 14:29:14', null, '0');
INSERT INTO `test_paper_question` VALUES ('18', '15', '1+1=？', '', '', '10', '', '2020-06-12 14:10:54', '2020-06-12 14:10:57', '1');
INSERT INTO `test_paper_question` VALUES ('19', '16', '屈原是我国春秋时期哪国人', '', '31', '5', '', '2020-06-16 14:26:06', '2020-06-16 14:28:07', '0');
INSERT INTO `test_paper_question` VALUES ('20', '16', '端午节有为小孩佩香囊的习惯，大人在香囊内放朱砂、雄黄、香药等代表的意义是什么？', '', '36', '5', '', '2020-06-16 14:26:35', '2020-06-16 14:31:36', '0');
INSERT INTO `test_paper_question` VALUES ('21', '16', '南方的粽子一般是什么口味？', '', '38', '5', '', '2020-06-16 14:31:50', '2020-06-16 14:32:21', '0');
INSERT INTO `test_paper_question` VALUES ('22', '16', '古人端午节涂饮雄黄酒的意义是？', '', '42', '5', '', '2020-06-16 14:32:51', '2020-06-16 14:33:22', '0');
INSERT INTO `test_paper_question` VALUES ('23', '16', '最早的粽子并不是端午节的特产，那粽子是什么时期被正式定为端午节食品的？', '', '44', '5', '', '2020-06-16 15:13:22', '2020-06-16 15:13:55', '0');
INSERT INTO `test_paper_question` VALUES ('24', '16', '赛龙舟是端午节的主要习俗之一，相传起源于古代楚国人因舍不得贤臣屈原投江死去，许多人划船追赶拯救。其实，“龙舟竞渡”早在（）时期就有了', '', '51', '5', '', '2020-06-16 15:14:10', '2020-06-16 15:14:50', '0');
INSERT INTO `test_paper_question` VALUES ('25', '16', '下列哪项不是端午节的习俗？', '', '54', '5', '', '2020-06-16 15:15:03', '2020-06-16 15:15:38', '0');
INSERT INTO `test_paper_question` VALUES ('26', '16', '1+1', '1+1=2地球人都知道', '56', '5', null, '2020-06-16 17:49:33', '2020-06-16 17:49:49', '1');
INSERT INTO `test_paper_question` VALUES ('27', '16', '1+2', '1+1=3地球人都知道', '60', '5', null, '2020-06-16 17:49:33', '2020-06-16 17:49:48', '1');
INSERT INTO `test_paper_question` VALUES ('28', '16', '1+3', '1+1=4地球人都知道', '64', '5', null, '2020-06-16 17:49:33', '2020-06-16 17:49:47', '1');
INSERT INTO `test_paper_question` VALUES ('29', '16', '1+4', '1+1=5地球人都知道', '68', '5', null, '2020-06-16 17:49:33', '2020-06-16 17:49:47', '1');
INSERT INTO `test_paper_question` VALUES ('30', '16', '1+5', '1+1=6地球人都知道', '72', '5', null, '2020-06-16 17:49:33', '2020-06-16 17:49:46', '1');
INSERT INTO `test_paper_question` VALUES ('31', '16', '1+6', '1+1=7地球人都知道', '76', '5', null, '2020-06-16 17:49:33', '2020-06-16 17:49:46', '1');
INSERT INTO `test_paper_question` VALUES ('32', '16', '1+7', '1+1=8地球人都知道', '80', '5', null, '2020-06-16 17:49:33', '2020-06-16 17:49:45', '1');
INSERT INTO `test_paper_question` VALUES ('33', '16', '1+8', '1+1=9地球人都知道', '84', '5', null, '2020-06-16 17:49:33', '2020-06-16 17:49:44', '1');
INSERT INTO `test_paper_question` VALUES ('34', '16', '1+9', '1+1=10地球人都知道', '88', '5', null, '2020-06-16 17:49:33', '2020-06-16 17:49:44', '1');
INSERT INTO `test_paper_question` VALUES ('35', '16', '1+10', '1+1=11地球人都知道', '92', '5', null, '2020-06-16 17:49:33', '2020-06-16 17:49:43', '1');
INSERT INTO `test_paper_question` VALUES ('36', '16', '1+11', '1+1=12地球人都知道', '96', '5', null, '2020-06-16 17:49:34', '2020-06-16 17:49:42', '1');
INSERT INTO `test_paper_question` VALUES ('37', '16', '1+12', '1+1=13地球人都知道', '100', '5', null, '2020-06-16 17:49:34', '2020-06-16 17:49:41', '1');
INSERT INTO `test_paper_question` VALUES ('38', '16', '1+13', '1+1=14地球人都知道', '104', '5', null, '2020-06-16 17:49:34', '2020-06-16 17:49:40', '1');
INSERT INTO `test_paper_question` VALUES ('39', '16', '1+14', '1+1=15地球人都知道', '108', '5', null, '2020-06-16 17:49:34', '2020-06-16 17:49:40', '1');
INSERT INTO `test_paper_question` VALUES ('40', '16', '1+1', '1+1=2地球人都知道', '112', '5', null, '2020-06-16 19:09:00', '2020-06-16 19:09:21', '1');
INSERT INTO `test_paper_question` VALUES ('41', '16', '1+2', '1+1=3地球人都知道', '116', '5', null, '2020-06-16 19:09:00', '2020-06-16 19:09:20', '1');
INSERT INTO `test_paper_question` VALUES ('42', '16', '1+3', '1+1=4地球人都知道', '120', '5', null, '2020-06-16 19:09:00', '2020-06-16 19:09:20', '1');
INSERT INTO `test_paper_question` VALUES ('43', '16', '1+4', '1+1=5地球人都知道', '124', '5', null, '2020-06-16 19:09:00', '2020-06-16 19:09:19', '1');
INSERT INTO `test_paper_question` VALUES ('44', '16', '1+5', '1+1=6地球人都知道', '128', '5', null, '2020-06-16 19:09:00', '2020-06-16 19:09:18', '1');
INSERT INTO `test_paper_question` VALUES ('45', '16', '1+6', '1+1=7地球人都知道', '132', '5', null, '2020-06-16 19:09:00', '2020-06-16 19:09:17', '1');
INSERT INTO `test_paper_question` VALUES ('46', '16', '1+7', '1+1=8地球人都知道', '136', '5', null, '2020-06-16 19:09:00', '2020-06-16 19:09:17', '1');
INSERT INTO `test_paper_question` VALUES ('47', '16', '1+8', '1+1=9地球人都知道', '140', '5', null, '2020-06-16 19:09:00', '2020-06-16 19:09:16', '1');
INSERT INTO `test_paper_question` VALUES ('48', '16', '1+9', '1+1=10地球人都知道', '144', '5', null, '2020-06-16 19:09:00', '2020-06-16 19:09:24', '1');
INSERT INTO `test_paper_question` VALUES ('49', '16', '1+10', '1+1=11地球人都知道', '148', '5', null, '2020-06-16 19:09:00', '2020-06-16 19:09:15', '1');
INSERT INTO `test_paper_question` VALUES ('50', '16', '1+11', '1+1=12地球人都知道', '152', '5', null, '2020-06-16 19:09:00', '2020-06-16 19:09:26', '1');
INSERT INTO `test_paper_question` VALUES ('51', '16', '1+12', '1+1=13地球人都知道', '156', '5', null, '2020-06-16 19:09:00', '2020-06-16 19:09:13', '1');
INSERT INTO `test_paper_question` VALUES ('52', '16', '1+13', '1+1=14地球人都知道', '160', '5', null, '2020-06-16 19:09:01', '2020-06-16 19:09:12', '1');
INSERT INTO `test_paper_question` VALUES ('53', '16', '1+14', '1+1=15地球人都知道', '164', '5', null, '2020-06-16 19:09:01', '2020-06-16 19:09:24', '1');
INSERT INTO `test_paper_question` VALUES ('54', '16', '粽子最早叫什么？', '', '170', '5', '', '2020-06-18 10:17:59', '2020-06-18 10:18:46', '0');
INSERT INTO `test_paper_question` VALUES ('55', '16', '端午节是哪一天?', '', '175', '5', '', '2020-06-18 10:19:20', '2020-06-18 10:19:57', '0');
INSERT INTO `test_paper_question` VALUES ('56', '16', '端午节要防的五毒除蝎子、蛇、蜈蚣、壁虎以外，还有什么？', '', '178', '5', '', '2020-06-18 10:20:08', '2020-06-18 10:20:45', '0');
INSERT INTO `test_paper_question` VALUES ('57', '16', '传统的端节节五彩线，青、红、黑、黄、白五色，是依据历史上什么学说？', '', '181', '5', '', '2020-06-18 10:20:55', '2020-06-18 10:21:25', '0');
INSERT INTO `test_paper_question` VALUES ('58', '16', '屈原投江是哪条江?', '', '187', '5', '', '2020-06-18 10:21:38', '2020-06-18 10:22:32', '0');
INSERT INTO `test_paper_question` VALUES ('59', '16', '在我国一些地区，端午节要在门上插什么东西来祛毒？', '', '189', '5', '', '2020-06-18 10:22:41', '2020-06-18 10:23:13', '0');
INSERT INTO `test_paper_question` VALUES ('60', '16', '俗有“南龙舟，北踏青”之说，因为北方少不河，所以端午节人们都选择踏青。踏青古时又叫什么？', '', '194', '5', '', '2020-06-18 10:23:29', '2020-06-18 10:23:56', '0');
INSERT INTO `test_paper_question` VALUES ('61', '16', '北方人一般用什么材料包粽子？', '', '197', '5', '', '2020-06-18 10:24:08', '2020-06-18 10:24:30', '0');
INSERT INTO `test_paper_question` VALUES ('62', '16', '粽子多是做成角形的，这是为什么？', '', '199', '5', '', '2020-06-18 10:24:42', '2020-06-18 10:25:21', '0');
INSERT INTO `test_paper_question` VALUES ('63', '16', '端午节的来源与史上的百越族有关，那么百越族的图腾是什么？', '', '203', '5', '', '2020-06-18 10:25:31', '2020-06-18 10:26:08', '0');
INSERT INTO `test_paper_question` VALUES ('64', '16', '端午节是为了纪念屈原这一说法影响甚广，屈原天五月初五写了绝笔作，投入汨罗江。请问屈原的绝笔作是什么？', '', '208', '5', '', '2020-06-18 10:26:18', '2020-06-18 10:26:44', '0');
INSERT INTO `test_paper_question` VALUES ('65', '16', '赛龙舟是哪一年被列入中国国家体育比赛项目，并每年举行“屈原杯”龙舟赛?', '', '211', '5', '', '2020-06-18 10:27:02', '2020-06-18 10:27:30', '0');
INSERT INTO `test_paper_question` VALUES ('66', '16', '以下不属于端午节来源的是哪个？', '', '216', '5', '', '2020-06-18 10:27:43', '2020-06-18 10:28:37', '0');
INSERT INTO `test_paper_question` VALUES ('67', '18', '1+1', '1+1=2地球人都知道', '218', '5', null, '2020-06-18 10:41:00', null, '0');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '姓名',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '密码',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '类型',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `is_delete` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '是否删除 0是未删除1是已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'AB2385DD1F310B9C2995687B10162B73', '1', '2020-01-02 16:56:53', null, '0');

-- ----------------------------
-- Table structure for `vote`
-- ----------------------------
DROP TABLE IF EXISTS `vote`;
CREATE TABLE `vote` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '投票活动名称',
  `introduction` varchar(2000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '介绍',
  `cover` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '图片',
  `organizer` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '主办单位',
  `status` int(11) DEFAULT NULL COMMENT '上下架  0是已上架1是下架',
  `votetime` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '投票时间',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `is_delete` int(11) DEFAULT NULL COMMENT '是否 删除 0是未删除1是已删除',
  `vstart_time` datetime DEFAULT NULL COMMENT '投票开始时间',
  `vend_time` datetime DEFAULT NULL COMMENT '投票结束时间',
  `ustart_time` datetime DEFAULT NULL COMMENT '上传开始时间',
  `uend_time` datetime DEFAULT NULL COMMENT '上传结束时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of vote
-- ----------------------------
INSERT INTO `vote` VALUES ('1', null, null, null, null, null, null, '2020-05-15 11:29:54', null, '1', null, null, null, null);
INSERT INTO `vote` VALUES ('2', '的发挥地方', '', '', '', '0', null, '2020-05-15 16:12:21', null, '1', '2020-05-15 16:12:20', '2020-05-15 16:12:22', '2020-05-15 16:12:16', '2020-05-15 16:12:18');
INSERT INTO `vote` VALUES ('3', '的发挥地方', '', '', '', '0', null, '2020-05-15 16:12:32', null, '1', '2020-05-15 16:12:20', '2020-05-15 16:12:22', '2020-05-15 16:12:16', '2020-05-15 16:12:18');
INSERT INTO `vote` VALUES ('4', '都干啥干啥干啥', '是干啥干啥干啥干啥三国杀是格式是是个 是干啥干啥干啥干啥三国杀是格式是是个 是干啥干啥干啥干啥三国杀是格式是是个 是干啥干啥干啥干啥三国杀是格式是是个 是干啥干啥干啥干啥三国杀是格式是是个 是干啥干啥干啥干啥三国杀是格式是是个 是干啥干啥干啥干啥三国杀是格式是是个 是干啥干啥干啥干啥三国杀是格式是是个 是干啥干啥干啥干啥三国杀是格式是是个', '', '哥哥是个', '0', null, '2020-05-18 08:46:41', null, '1', '2020-05-18 08:46:46', '2020-05-18 08:46:48', '2020-05-18 08:46:44', '2020-05-18 08:46:45');
INSERT INTO `vote` VALUES ('5', '都干啥干啥干啥', '是干啥干啥干啥干啥三国杀是格式是是个 是干啥干啥干啥干啥三国杀是格式是是个 是干啥干啥干啥干啥三国杀是格式是是个 是干啥干啥干啥干啥三国杀是格式是是个 是干啥干啥干啥干啥三国杀是格式是是个 是干啥干啥干啥干啥三国杀是格式是是个 是干啥干啥干啥干啥三国杀是格式是是个 是干啥干啥干啥干啥三国杀是格式是是个 是干啥干啥干啥干啥三国杀是格式是是个', '', '哥哥是个', '0', null, '2020-05-18 08:46:49', null, '1', '2020-05-18 08:46:46', '2020-05-18 08:46:48', '2020-05-18 08:46:44', '2020-05-18 08:46:45');
INSERT INTO `vote` VALUES ('6', 'sgsg', '', '', '', '0', null, '2020-05-18 08:51:29', null, '1', '2020-05-18 08:51:34', '2020-05-18 08:51:36', '2020-05-18 08:51:31', '2020-05-22 00:00:00');
INSERT INTO `vote` VALUES ('7', 'sdgsgsdg', 'sdgsdgsdg', '/static/uploadFile/image/404202005180946055.png', 'sdgsdg', '0', null, '2020-05-18 09:47:09', null, '1', '2020-05-18 09:47:12', '2020-05-18 09:47:13', '2020-05-18 09:47:06', '2020-05-18 09:47:08');
INSERT INTO `vote` VALUES ('8', 'sdgsgsdg', 'sdgsdgsdg', '', 'sdgsdg', '0', null, '2020-05-18 09:47:35', null, '1', '2020-05-18 09:47:12', '2020-05-18 09:47:13', '2020-05-03 14:04:02', '2020-05-29 14:04:04');
INSERT INTO `vote` VALUES ('9', 'sdgsgsdg', 'sdgsdgsdg', '/static/uploadFile/image/404202005180946055.png', 'sdgsdg', '0', null, '2020-05-18 09:48:58', null, '1', '2020-05-18 09:47:12', '2020-05-18 09:47:13', '2020-05-18 09:47:06', '2020-05-18 09:47:08');
INSERT INTO `vote` VALUES ('10', 'sdgsg', 'sdgsdg', '', '', '0', null, '2020-05-18 09:49:12', null, '1', '2020-05-18 09:49:19', '2020-05-18 09:49:20', '2020-05-18 09:49:16', '2020-05-18 09:49:17');
INSERT INTO `vote` VALUES ('11', '傻大哥哥', '', '', '', '0', null, '2020-05-18 11:24:12', null, '1', '2020-05-18 11:24:09', '2020-05-18 11:24:11', '2020-05-18 11:24:04', '2020-05-18 11:24:07');
INSERT INTO `vote` VALUES ('12', '多个', '', '', '', '0', null, '2020-05-18 11:25:38', null, '1', '2020-05-18 11:25:33', '2020-05-18 11:25:32', '2020-05-18 11:25:35', '2020-05-18 11:25:36');
INSERT INTO `vote` VALUES ('13', '傻大哥哥', '第三个', '', '', '0', null, '2020-05-18 14:16:40', null, '1', '2020-05-18 14:16:36', '2020-05-18 14:16:37', '2020-05-18 14:16:33', '2020-05-18 14:16:34');
INSERT INTO `vote` VALUES ('14', '孤独根深蒂固是挂是搭嘎十多个三道杠三道杠三道杠收到高', '三道杠三道杠三道杠收到', '/static/uploadFile/image/banner202005251041048.png', '得高高的', '0', null, '2020-05-18 14:17:23', null, '1', '2020-05-18 14:17:21', '2020-05-18 14:17:22', '2020-05-18 16:35:03', '2020-05-30 14:17:19');
INSERT INTO `vote` VALUES ('15', '的身高多少', '收到噶所过所多过撒多过过过过过过过过过过过过搜嘎多多多多多多多多多多多多多多多多是个大啊啊啊啊啊啊啊啊啊啊啊啊啊啊搜嘎多多多多多多多多多多多多多多多多多多多多多多多多多是个大啊啊啊啊啊啊啊啊啊啊身高多啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊是个大啊啊啊啊啊啊啊啊啊啊啊搜嘎多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多是个', '/static/uploadFile/image/banner202005251041055.png', '', '0', null, '2020-05-18 14:17:33', null, '1', '2020-05-18 14:17:31', '2020-05-18 14:17:32', '2020-05-18 14:17:29', '2020-05-18 14:17:30');
INSERT INTO `vote` VALUES ('16', '搭嘎大纲', 'sdgsdgsdgsdgasdgasdgasdg', '/static/uploadFile/image/banner1202005251042001.png', 'dsgsdgasdgasdg', '0', null, '2020-05-18 14:17:43', null, '1', '2020-05-18 14:17:41', '2020-05-18 14:17:42', '2020-05-18 14:17:39', '2020-05-18 14:17:40');
INSERT INTO `vote` VALUES ('17', '是搭嘎十多个', 'sdgsdgsagsg', '/static/uploadFile/image/banner1202005251042014.png', 'sdgaaaaaaaaagsd', '0', null, '2020-05-18 14:17:53', null, '1', '2020-05-18 14:17:51', '2020-05-18 14:17:52', '2020-05-18 14:17:49', '2020-05-18 14:17:50');
INSERT INTO `vote` VALUES ('18', '是搭嘎十多个', 'sdgsadgdg', '/static/uploadFile/image/bg202005251042025.png', '', '0', null, '2020-05-18 14:18:01', null, '1', '2020-05-18 14:17:59', '2020-05-18 14:18:00', '2020-05-18 14:17:57', '2020-05-18 14:17:58');
INSERT INTO `vote` VALUES ('19', '是都干啥的管道是根深蒂固', 'sdgsagasdg', '/static/uploadFile/image/banner1202005251042031.png', '', '0', null, '2020-05-18 14:18:12', null, '1', '2020-05-18 14:18:09', '2020-05-18 14:18:10', '2020-05-18 14:18:07', '2020-05-18 14:18:08');
INSERT INTO `vote` VALUES ('20', '是搭嘎十多个', '', '/static/uploadFile/image/banner202005251056001.png', '', '0', null, '2020-05-18 14:18:21', null, '1', '2020-05-18 14:18:19', '2020-05-18 14:18:20', '2020-05-18 14:18:17', '2020-05-18 14:18:18');
INSERT INTO `vote` VALUES ('21', '三道杠', '三道杠', '', '', '0', null, '2020-05-18 14:18:32', null, '1', '2020-05-18 14:18:29', '2020-05-18 14:18:31', '2020-05-18 14:18:27', '2020-05-18 14:18:28');
INSERT INTO `vote` VALUES ('22', '广东省理工技术的公司', '水果萨达干啥的时高时低故事的故事东港市是个是收到根深蒂固是个是个是个身高多', '/static/uploadFile/image/banner202005250925044.png', '搜嘎是个', '0', null, '2020-05-25 09:25:53', null, '1', '2020-05-25 09:25:51', '2020-05-25 09:25:52', '2020-05-25 09:25:48', '2020-05-25 09:25:49');
INSERT INTO `vote` VALUES ('23', '是个是根深蒂固', '丧尸国度山岗上的故事个三道杠撒个', '/static/uploadFile/image/banner1202005250926004.png', '第三个三国杀的个', '0', null, '2020-05-25 09:26:11', null, '1', '2020-05-25 09:26:09', '2020-05-25 09:26:10', '2020-05-25 09:26:06', '2020-05-25 09:26:08');
INSERT INTO `vote` VALUES ('24', '三道杠撒个傻瓜傻瓜', '三道杠撒搭嘎是个时代感', '/static/uploadFile/image/banner1202005250926031.png', '三道杠收到挂是搭嘎十多个是递归', '0', null, '2020-05-25 09:26:38', null, '1', '2020-05-25 09:26:36', '2020-05-25 09:26:37', '2020-05-25 09:26:34', '2020-05-25 09:26:35');
INSERT INTO `vote` VALUES ('25', '都是根深蒂固是递归的观点公司的故事大概是三道杠三道杠三道杠收到广东省个是的感受到三道杠三道杠sad噶是的噶是的', '是管道是搭嘎十多个', '/static/uploadFile/image/banner1202005261737040.png', '都是根深蒂固是', '0', null, '2020-05-25 09:26:54', null, '1', '2020-05-25 09:26:50', '2020-05-25 09:26:52', '2020-05-25 09:26:47', '2020-05-25 09:26:51');
INSERT INTO `vote` VALUES ('26', '这是第一个测试作品数据', '<p><span class=\"ql-cursor\">﻿﻿﻿﻿﻿﻿</span><span style=\"color: rgb(136, 136, 136);\">青少儿“抗击新型冠状病毒肺炎”主题图形创意设计大赛</span></p><p><span style=\"color: rgb(136, 136, 136);\">投稿时间：截止2020年7月10日</span></p><p><span style=\"color: rgb(136, 136, 136);\">作品要求：</span></p><p><span style=\"color: rgb(136, 136, 136);\">作品原件大小：A4（21*29.7cm）或A3（29.7*42cm）&nbsp;</span></p><p><span style=\"color: rgb(136, 136, 136);\">统一以电子文件提交方式提交作品，提交内容包括如下：&nbsp;</span></p><p><span style=\"color: rgb(136, 136, 136);\">01：电子版作品图片或照片，拍摄要求正面平行拍摄，画面干净整洁。</span></p><p><span style=\"color: rgb(136, 136, 136);\">02：请参赛选手妥善保管好作品原件，如通过评审获奖，组委会将举办获奖作品展览及相关画册设计。</span><span class=\"ql-cursor\">﻿﻿﻿﻿﻿﻿﻿﻿</span></p>', '/static/uploadFile/image/sub_module5202006011111008.png', '九江市图书馆', '0', null, '2020-06-01 11:12:13', null, '0', '2020-06-01 08:00:00', '2020-07-31 00:00:00', '2020-06-01 08:00:00', '2020-07-31 00:00:00');

-- ----------------------------
-- Table structure for `vote_user`
-- ----------------------------
DROP TABLE IF EXISTS `vote_user`;
CREATE TABLE `vote_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `vote_id` int(11) DEFAULT NULL COMMENT '投票活动id',
  `vote_work_id` int(11) DEFAULT NULL COMMENT '投票作品id',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `vote_id_user_id` (`vote_id`,`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of vote_user
-- ----------------------------
INSERT INTO `vote_user` VALUES ('1', '17', '26', '16', '2020-06-01 17:06:03');
INSERT INTO `vote_user` VALUES ('2', '18', '26', '16', '2020-06-02 09:34:09');
INSERT INTO `vote_user` VALUES ('3', '21', '26', '16', '2020-06-09 10:40:41');
INSERT INTO `vote_user` VALUES ('4', '37', '26', '17', '2020-06-12 21:09:50');
INSERT INTO `vote_user` VALUES ('5', '61', '26', '25', '2020-06-17 13:48:12');
INSERT INTO `vote_user` VALUES ('6', '64', '26', '30', '2020-06-17 16:37:45');

-- ----------------------------
-- Table structure for `vote_work`
-- ----------------------------
DROP TABLE IF EXISTS `vote_work`;
CREATE TABLE `vote_work` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vote_id` int(11) DEFAULT NULL COMMENT '投票活动id',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '作品名',
  `cover` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '图片',
  `auther` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '作者',
  `pv` int(11) DEFAULT NULL COMMENT '投票次数',
  `introduction` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT '介绍',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL,
  `is_delete` int(11) DEFAULT NULL COMMENT '是否删除 0是未删除1是已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of vote_work
-- ----------------------------
INSERT INTO `vote_work` VALUES ('1', '14', '递归', '/static/uploadFile/image/404202005191118059.png', '三道杠sg', null, 0x3C703E647367647367647367673C2F703E0A3C703EE98092E5BD923C2F703E0A3C703E3C61207469746C653D22E983ADE5BEB7E7BAB2E582BBE7939CE698AFE4B8AA2220687265663D222E2E2F2E2E2F6465762D6170692F7374617469632F75706C6F616446696C652F6F746865725265736F757263652F41646D696E4C54452D6D61737465723230323030353230303933343032372E7A6970223E41646D696E4C54452D6D61737465723C2F613E3C2F703E, '2020-05-18 16:35:38', null, '0');
INSERT INTO `vote_work` VALUES ('2', '14', '是东港市递归收到', '/static/uploadFile/image/avatar202005181735047.gif', '是搭嘎十多个啥', null, 0x3C703EE4B89CE6B8AFE5B882E98092E5BD92E694B6E588B0E698AFE4B8AAE698AFE4B8AAE698AFE4B8AAE4B889E4B8AAE582BBE7939C3C2F703E, '2020-05-18 17:37:14', null, '0');
INSERT INTO `vote_work` VALUES ('3', '14', '都是根深蒂固是', '/static/uploadFile/image/404202005181737021.png', '收到挂是搭嘎十多个啥', null, 0x3C703EE698AFE4B89CE6B8AFE5B882E98092E5BD92E694B6E588B03C2F703E, '2020-05-18 17:37:25', null, '0');
INSERT INTO `vote_work` VALUES ('4', '14', '水果萨达干啥的', '/static/uploadFile/image/404202005181737032.png', '三道杠撒递归三道杠', null, 0x3C703EE698AFE690ADE5988EE58D81E5A49AE4B8AAE595A5E5A4A7E6A682E6B492E5A4A7E6A6823C2F703E, '2020-05-18 17:37:37', null, '0');
INSERT INTO `vote_work` VALUES ('5', '14', '三道杠撒搭嘎是个', '/static/uploadFile/image/avatar202005181737044.gif', '是个是搭嘎十多个啥大概洒大概', null, 0x3C703EE4B889E98193E69DA0E69292E690ADE5988EE58D81E5A49AE4B8AAE890A8E5988EE694B6E588B03C2F703E, '2020-05-18 17:37:48', null, '0');
INSERT INTO `vote_work` VALUES ('6', '14', '三道杠撒gas递归', '/static/uploadFile/image/avatar202005181737054.gif', '三道杠撒递归sad', null, 0x3C703EE58D81E5A49AE4B8AAE69D80E4B889E4B8AA3C2F703E, '2020-05-18 17:37:59', null, '0');
INSERT INTO `vote_work` VALUES ('7', '14', '三道杠撒大概啥时', '/static/uploadFile/image/404202005181738005.png', '三道杠撒个傻瓜', null, 0x3C703EE698AFE690ADE5988EE58D81E5A49AE4B8AAE6A0B9E6B7B1E89282E59BBAE5958A3C2F703E, '2020-05-18 17:38:14', null, '0');
INSERT INTO `vote_work` VALUES ('8', '14', '是的噶是搭嘎十多个', '/static/uploadFile/image/404202005181738021.png', '三道杠撒蛋糕师', null, 0x3C703EE4B889E98193E69DA0E69292E4B8AAE69292E690ADE5988EE58D81E5A49AE4B8AA3C2F703E, '2020-05-18 17:38:27', null, '0');
INSERT INTO `vote_work` VALUES ('9', '14', '三个傻大哥撒旦', '/static/uploadFile/image/404202005181738033.png', '三道杠撒递归sad干撒大概', null, 0x3C703EE4B889E4B8AAE582BBE5A4A7E593A5E69292E697A6E6849FE58F97E588B03C2F703E, '2020-05-18 17:38:38', null, '0');
INSERT INTO `vote_work` VALUES ('10', '14', '是个啥公司的公司ad', '/static/uploadFile/image/404202005181738044.png', '是个三道杠撒递归sad个', null, 0x3C703EE4B889E4B8AAE582BBE5A4A7E593A5E69292E697A6E4B8AA3C2F703E, '2020-05-18 17:38:48', null, '0');
INSERT INTO `vote_work` VALUES ('11', '14', '大概多少个', '/static/uploadFile/image/电量202005200906022.png', '电视广告', null, 0x3C703E3C766964656F20636F6E74726F6C733D22636F6E74726F6C73222077696474683D2233303022206865696768743D22313530223E0A3C736F75726365207372633D222E2E2F6465762D6170692F7374617469632F75706C6F616446696C652F766964656F2F3835323838387069436864743230323030353230303930363030362E6D70342220747970653D22766964656F2F6D703422202F3E3C2F766964656F3E3C2F703E, '2020-05-20 09:06:23', null, '0');
INSERT INTO `vote_work` VALUES ('12', '14', '的三个傻大哥撒旦', '/static/uploadFile/image/电量202005200928040.png', '搜嘎是个', null, 0x3C703EE4B889E98193E69DA0E694B6E588B0E68C82E698AFE690ADE5988EE58D81E5A49AE4B8AA3C2F703E, '2020-05-20 09:28:51', null, '0');
INSERT INTO `vote_work` VALUES ('13', '14', '三道杠', '/static/uploadFile/image/电量202005201047028.png', '收到该公司', null, 0x3C703EE698AFE79A84E6849FE58F97E588B0E599B6E595A5E698AFE79A84E599B6E6909CE5988E3C2F703E, '2020-05-20 10:47:34', null, '0');
INSERT INTO `vote_work` VALUES ('14', '14', '三道杠', '/static/uploadFile/image/电量202005201049005.png', '身高多', null, 0x3C703EE4B889E4B8AAE582BBE5A4A7E593A5E69292E697A6E6849FE58F97E588B0E4B8AA3C2F703E, '2020-05-20 10:49:09', null, '0');
INSERT INTO `vote_work` VALUES ('15', '14', '的固定格式', '/static/uploadFile/image/banner1202005261738013.png', '第三个', null, 0x3C703EE5B9B2E59388E8BEBEE59388E79A84E5908EE4BBA3E698AFE590A6E59088E98082E59CB0E696B9E8BF98E698AFE794B5E8AF9DE8B4B9E983BDE68896E5A49AE68896E5B091E983BDE5BE88E68782E4BA8B3C2F703E, '2020-05-20 10:50:17', null, '0');
INSERT INTO `vote_work` VALUES ('16', '26', '最强作品', '/static/uploadFile/image/C652ED40-CA2B-43A3-965C-71EDBB77079A202006011113011.png', '无名氏', '3', 0x3C7020636C6173733D2222207374796C653D22223EE590ACE4BDA0E8BF99E8BF98E694AFE694AFE590BEE590BE696E67E9BE87E78999E592A7E598B4E8BF87E4B880E998B5E5AD903C2F703E3C696D672077696474683D223130302522206865696768743D226175746F22207372633D222F7374617469632F75706C6F616446696C652F6F746865725265736F757263652F36464537364535372D413039422D344435432D394641342D3938463637343030313441343230323030363031313131333034342E6769662220636C6173733D22223E, '2020-06-01 11:14:08', '2020-06-17 14:00:29', '1');
INSERT INTO `vote_work` VALUES ('17', '26', '六一儿童节', '/static/uploadFile/image/9D892751-A9B5-4C46-8072-FBB36CCE79E4202006011114058.gif', '李四', '1', '', '2020-06-01 11:15:08', '2020-06-17 14:00:29', '1');
INSERT INTO `vote_work` VALUES ('18', '26', '测试', '/static/uploadFile/image/Screenshot_20200531_154218_com.android.browser202006011148024.jpg', '陈公民', '0', 0x3C7020636C6173733D2222207374796C653D22223EE7BB99E4BDA0E5819AE6988EE6988EE593A6E593A6E6988EE593A6E38082E590BCE590BCE590BCE591A8E585B1E5928CE58FAAE4B8BAE4BDA0E6B395E588B6E5AEA3E4BCA03C2F703E3C696D672077696474683D223130302522206865696768743D226175746F22207372633D222F7374617469632F75706C6F616446696C652F6F746865725265736F757263652F696D672D64626363393032393761363230363934373430636238626364323233386561373230323030363031313134393030342E6A70672220636C6173733D22223E, '2020-06-01 11:49:14', '2020-06-12 14:00:03', '1');
INSERT INTO `vote_work` VALUES ('19', '26', '清文', '/static/uploadFile/image/1592113204286202006141340028.jpg', '张煜杰', '0', 0x3C7020636C6173733D2222207374796C653D22223EE4BDA0E5A5BDE591803C2F703E, '2020-06-14 13:42:27', '2020-06-15 16:24:43', '1');
INSERT INTO `vote_work` VALUES ('20', '26', '名字', '/static/uploadFile/image/416F4CBA-4D5C-43BF-9D89-4D439C696F24202006171109005.gif', '测试', '0', 0x3C7020636C6173733D2222207374796C653D22223EE683A0E6B091E8BF98E4B880E79BB4E598BBE598BBE598BBE598BBE598BBE5908EE69E9CE5BE88E4B8A5E9878D3C2F703E, '2020-06-17 11:09:18', '2020-06-17 14:00:31', '1');
INSERT INTO `vote_work` VALUES ('21', '26', '迷宫', '/static/uploadFile/image/FEB0C791-A816-486B-9C32-CFE5D517D256202006171109054.gif', '明年', '0', 0x3C696D672077696474683D223130302522206865696768743D226175746F22207372633D222F7374617469632F75706C6F616446696C652F6F746865725265736F757263652F44443335343531312D413146302D343334372D383939412D3033303432323530333438433230323030363137313131303030382E6769662220636C6173733D22223E3C70207374796C653D22666F6E742D73697A653A20313870783B223EE4BDA0E4BBA5E4B8BAE4BE9DE784B6E59CA8E4B880E8B5B7E997AEE4B880E4B88BE6B88DE6B88DE6B88DE8A681E4B880E79BB4E4B880E79BB4E68891E4B880E585B1E4BDA0E59180E4B880E79BB4E4B880E79BB4E59CA8E4B880E8B5B7E6B88DE6B88DE6B88DE598A4E598A4E598A4E68891E6B88DE6B88DE6B88DE4B880E79BB4E59CA8E598BBE598BBE598BBE598BBE598BBE598BBE598BB3C2F703E, '2020-06-17 11:10:31', '2020-06-17 14:00:33', '1');
INSERT INTO `vote_work` VALUES ('22', '26', '测试作品列表是个是根深蒂固是东港市递归收到三道杠', '/dev-api/static/uploadFile/image/banner202006171141047.png', '是的杠杆第三个是的感受到', '0', 0x3C7020636C6173733D2222207374796C653D22223E7364677364677361643C2F703E, '2020-06-17 11:42:29', '2020-06-17 11:43:46', '1');
INSERT INTO `vote_work` VALUES ('23', '26', '工', '/static/uploadFile/image/753306A2-2645-4FBD-998C-024E11E917DD202006171145004.gif', '好好工作', '0', 0x3C7020636C6173733D2222207374796C653D22223EE5B7A5E8B5843C2F703E3C696D672077696474683D223130302522206865696768743D226175746F22207372633D222F7374617469632F75706C6F616446696C652F6F746865725265736F757263652F44423934344639352D304237352D344332302D393837412D4636453334313035313839443230323030363137313134353031372E676966223E, '2020-06-17 11:45:21', '2020-06-17 14:00:33', '1');
INSERT INTO `vote_work` VALUES ('24', '26', 'dg', '/static/uploadFile/image/banner202006171247051.png', 'dsgsgsg', '0', 0x3C7020636C6173733D2222207374796C653D22223E7364677364676173646464646464646464646464646464646464646464646464646464646464646464646464646464646464646464646464646464646464646464646464646464646464646464646464646464646464646464646464646464646464646464646464643C2F703E, '2020-06-17 12:47:59', '2020-06-17 14:00:34', '1');
INSERT INTO `vote_work` VALUES ('25', '26', 'sdg', '/static/uploadFile/image/banner1202006171303004.png', 'dsgsdg', '1', 0x3C7020636C6173733D2222207374796C653D22223E73646761616161616161616161616161616161616161616161616161616161616161616161616161616161616161616161616161616161616161616161613C2F703E, '2020-06-17 13:03:12', '2020-06-17 14:00:30', '1');
INSERT INTO `vote_work` VALUES ('26', '26', 'csjjxjjd', '/static/uploadFile/image/IMG_20200614_224330202006171348042.jpg', '李嘉栎', '0', 0x3C696D672077696474683D223130302522206865696768743D226175746F22207372633D222F7374617469632F75706C6F616446696C652F6F746865725265736F757263652F494D475F32303230303631345F3232343234303230323030363137313334383035332E6A7067223E, '2020-06-17 13:48:55', '2020-06-17 14:00:35', '1');
INSERT INTO `vote_work` VALUES ('27', '26', '张三的夏天', '/static/uploadFile/image/B1A1F37F-B460-46EF-A7C2-7C6B2BCE91A5202006171354034.gif', '张三', '0', 0x3C696D672077696474683D223130302522206865696768743D226175746F22207372633D222F7374617469632F75706C6F616446696C652F6F746865725265736F757263652F38463644394243352D413435302D343541332D383530412D4533394445363132343335343230323030363137313335353030342E6A706567223E, '2020-06-17 13:55:09', '2020-06-17 14:00:36', '1');
INSERT INTO `vote_work` VALUES ('28', '26', '测试投稿', '/static/uploadFile/image/1592373386133202006171356038.jpg', '应该', '0', 0x3C7020636C6173733D2222207374796C653D22223EE6B58BE8AF95E68A95E7A8BF3C2F703E3C696D672077696474683D223130302522206865696768743D226175746F22207372633D222F7374617469632F75706C6F616446696C652F6F746865725265736F757263652F494D475F32303230303631325F3135303932313230323030363137313335373032342E6A7067223E, '2020-06-17 13:57:26', '2020-06-17 14:00:21', '1');
INSERT INTO `vote_work` VALUES ('29', '26', 'msjks', '/static/uploadFile/image/IMG_20200613_135936_mh1592059889351202006171358006.jpg', 'hejsj', '0', 0x3C696D672077696474683D223130302522206865696768743D226175746F22207372633D222F7374617469632F75706C6F616446696C652F6F746865725265736F757263652F494D475F32303230303631335F3133353730305F6D68313539323035393835353738383230323030363137313335383031382E6A7067223E, '2020-06-17 13:58:31', '2020-06-17 14:00:36', '1');
INSERT INTO `vote_work` VALUES ('30', '26', '测试数据', '/static/uploadFile/image/F2CAE42F-5DC6-4882-8F12-93D21AD0A69B202006171635019.png', '张三', '1', 0x3C696D672077696474683D223130302522206865696768743D226175746F22207372633D222F7374617469632F75706C6F616446696C652F6F746865725265736F757263652F44363839344335342D414344322D344245392D384338412D3437374638463835334446463230323030363137313633353034342E6A7065672220636C6173733D22223E3C70207374796C653D226C696E652D6865696768743A20312E383B20746578742D616C69676E3A206C6566743B20646973706C61793A20626C6F636B3B20666F6E742D73697A653A20313870783B206261636B67726F756E642D636F6C6F723A20696E68657269743B20746578742D6465636F726174696F6E3A20696E68657269743B20666F6E742D7765696768743A206E6F726D616C3B20636F6C6F723A20726762283132312C2038352C203732293B2220636C6173733D22223E266E6273703B20266E6273703B20266E6273703B20266E6273703BE4B98BE4B880E4BABAE4B98BE4B88BE4B880E79BB4E4B880E79BB4E59CA8E4B880E8B5B7E598BBE598BBE598BBE598BBE598BBE598BBE598BBE598BBE598BBE598BBE598BBE598BBE598BBE4B880E6A0B7E79A84E6B88DE6B88DE6B88DE4B880E79BB4E4BBA5E4B8BAE4B880E5AD97E59E8BE4B880E79BB4E4BBA5E4B8BAE887AAE7BB99E887AAE8B6B3E4B880E79BB4E59CA8E68891E4B880E79BB4E4BBA5E4B8BAE58FAFE4BBA5E4B880E5AD97E59E8B77E69893E4BFA1E4B893E7BABFE4B880E5AD97E59E8BE58F8BE8B08AE8B7AFE8A5BFE4BA94E5B7B7E5BC82E7958CE4B98BE4B99DE998B3E79C9FE7BB8F3C2F703E3C6469763E3C62723E3C2F6469763E3C64697620636C6173733D2222207374796C653D22666F6E742D7765696768743A206E6F726D616C3B20666F6E742D73697A653A20313870783B20636F6C6F723A20726762283132312C2038352C203732293B206C696E652D6865696768743A20323B223E266E6273703B20266E6273703B20266E6273703B20266E6273703B676F676F676FE5BE88E887AAE794B1E4BDA0E5B18BE5A4B4E78B97E78B97E6ACA2E8BF8EE4BDA0E6B091E68891E8818CE5B7A5E4B98BE5AEB6E696B0E6B58EE585ACE58FABE688914C4F4CE58CBFE5908D696E67E4B880E5AD97E59E8B3C2F6469763E3C703E3C2F703E, '2020-06-17 16:37:27', null, '0');

-- ----------------------------
-- Table structure for `wx_user`
-- ----------------------------
DROP TABLE IF EXISTS `wx_user`;
CREATE TABLE `wx_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `pickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `province` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `headimgurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of wx_user
-- ----------------------------
INSERT INTO `wx_user` VALUES ('16', 'os1l4wP6eBfsqRxxlSgxGBMj_V6k', '梵落', '2', '江西', null, '中国', 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83ep9iaycU7YfLr4dySukYGDAKPcGQBSrCL308q7XibRXd0FIgnWQknRxiblSdUKNUjibp3eic8miaXYd754Q/132', '2020-06-01 16:17:31');
INSERT INTO `wx_user` VALUES ('17', 'os1l4wDdwxabDMzQa-RWBECvO-TE', '塔拆', '1', '江西', null, '中国', 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqIcL7cPj0vNupkQ3xKN2NUToRc4z8GPia3t0dXcgA491oGXnf0CMxxicugYb4xIuPGntyeghGw8UFA/132', '2020-06-01 16:44:40');
INSERT INTO `wx_user` VALUES ('18', 'os1l4wGdZJtGlz6As7RSSgafWoEY', '寅潇', '2', '江西', null, '中国', 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83epgy9F5tmH2fwDIT0wupUJ2XrXDjUEWRZPQR6O7xnUNR7ZAQ4icGTicJZUlcNv9WKbHkzPIJibviaP01w/132', '2020-06-02 09:34:07');
INSERT INTO `wx_user` VALUES ('19', 'os1l4wIAZpxWiohDK3Xn8BLiNQXY', '魏燕龙', '1', '', null, '泽西岛', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJv1rq4SGSnXxtjTS7APueT8GQ82zoMw6aAPNRt84wpaoGQjF3H9Nz4m4EKuFE3d9jhc8ib7sXBd0Q/132', '2020-06-04 16:57:41');
INSERT INTO `wx_user` VALUES ('20', 'os1l4wFZw2PxHJu74F00UybeN4y8', '徐小俊', '1', '江西', null, '中国', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTI8M1ksB6ib5KInYhNP6iaxicWE7UKOSya340kKmeqVkHtWdJ9flmQNw7LSlzTH8Ao5YnZbpYEyXIunw/132', '2020-06-08 09:23:43');
INSERT INTO `wx_user` VALUES ('21', 'os1l4wDi5kjqQ4jy3MBYmdgYeCHo', 'zh', '1', '江西', null, '中国', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKdpkticRhiakFgxoDuV5hRyyTGe7HAQzvHKQbS8KdESAkUcFM6ic3gPJHRUpicVBfibib92HmHicoynrzAg/132', '2020-06-09 10:40:31');
INSERT INTO `wx_user` VALUES ('22', 'os1l4wHn1o_X4X7ExrwkJ-ozYvpk', '刘帅', '1', '安徽', null, '中国', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKU0MC8lDhUl1vmBcD8YOzjLgwruXmaiaWiaicZhpibR7XYPWj9I3EMiaEqachalW8icVZt48NdOD2l9PJA/132', '2020-06-10 17:08:19');
INSERT INTO `wx_user` VALUES ('23', 'os1l4wJDgjZjQrciwTWIS3CliYbA', '曾森林', '1', '江西', null, '中国', 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83epHffUM48icw9aa66AASOd5BcBbo7HUEjJv5ccIdI88v2Dh9S6icIqZacEPj1chmjTfgIEcNDjaT0pA/132', '2020-06-10 19:53:03');
INSERT INTO `wx_user` VALUES ('24', 'os1l4wLiH239Ei1Vp3pwq1JbWRT8', '宋岩', '1', '江西', null, '中国', 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eq7a56whPWxsyVy2RsicTxbr2Sz7GGysdfibzib7kngNskft5HzdFO9qlR3OaS2qvCNZ6v1uEZ57LFqw/132', '2020-06-11 10:16:30');
INSERT INTO `wx_user` VALUES ('25', 'os1l4wFVvkDK85HaCHA6hZA7ymF4', '姜慧', '2', '江西', null, '中国', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTL5X4Qd53LmYLnID2w5khoQBqNXZMHygmj0CrhLoibGGHI14kHm9FoW0R2iaRX3KTXGcB9PH7thoZyQ/132', '2020-06-11 16:18:21');
INSERT INTO `wx_user` VALUES ('26', 'os1l4wNrfIlA8XdG0woeCekKr9ls', '果妈', '2', '江西', null, '中国', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTK6HfBvHWHX6OLOKeVvsHJt7QqSNpEWFQ4icGM0ATpYAnial7rKTnmuEbT5ibaNL5s9JvhuUzheO0oZw/132', '2020-06-11 18:09:46');
INSERT INTO `wx_user` VALUES ('27', 'os1l4wP41cZKM7uK1htqL0LuNe_c', '杨晶', '1', '江西', null, '中国', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTK2s59CvHnrxfjVYwQIZiciaE4mPcfGGENqTn5AGNRmNPBUpZF48s8QUfnO4538srj7XAURY7z8UB0w/132', '2020-06-11 18:51:09');
INSERT INTO `wx_user` VALUES ('28', 'os1l4wB-vZKxypbhTWjEh1dSfumQ', '熊永生', '1', '江西', null, '中国', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKyHLn0FnSHBkntdLG2CcYibg8ze7gOQY9BYG6FActPy0zwvaEGqwnxNgibtyuTKPffQd6yqporoOicQ/132', '2020-06-11 19:18:46');
INSERT INTO `wx_user` VALUES ('29', 'os1l4wNTL6WniEJESjyxsrh8-o3o', 'Linda', '2', '浙江', null, '中国', 'http://thirdwx.qlogo.cn/mmopen/vi_32/LPn898RCDy89F5z6OnZZ2TCW3RQzuG7pQYLx1Qt2WOZt8hDH1TC0u28cYySbaDt09iaf0QogNvnemT3QmpYgvYw/132', '2020-06-11 20:19:07');
INSERT INTO `wx_user` VALUES ('30', 'os1l4wMdCi0PlN92BL2kF3ZtLjpE', '灵', '1', '江西', null, '中国', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLtLfzx8n8XamZVo5Rw7plRD54aDICDTgkwjEWNRdparILdC6zg1ylIKvWsqVeryQaliawOx4zkC2w/132', '2020-06-11 21:56:40');
INSERT INTO `wx_user` VALUES ('31', 'os1l4wNOdmuTNe8SWQ7E9e-G7Ra4', 'simin', '2', '江西', null, '中国', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJ4Mg9HAJ5au36hB0yUlZ1QwqoD8sicZ6RX1OTSg0FKPzMxxULqbNFy03tFTBaehYk2BLIeAvEfttw/132', '2020-06-11 22:32:47');
INSERT INTO `wx_user` VALUES ('32', 'os1l4wIDnNVeT_ZXUA4mnuFTrSGI', '陈飞', '1', '江西', null, '中国', 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoVVo7p10WtM9edCJmmjaRcVwiaNjD0ZvkFP9rnqbNXMRAe1RRQV70szkrM5lQqO8Pic4wAlWNLtibrw/132', '2020-06-11 22:58:29');
INSERT INTO `wx_user` VALUES ('33', 'os1l4wH9RDu2xCFtdNgYBwlcjScQ', '小刀刀', '2', '江西', null, '中国', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTI26CtZLfW9EKKoAiaibZxVRib5gwzBQwWxAOPsNaOtXUAGHibRfVDPgYKiaFS64W3hJhqvo1NYrVgRWlQ/132', '2020-06-12 09:16:15');
INSERT INTO `wx_user` VALUES ('34', 'os1l4wIzxAdO65wPEejDccPabXWU', '夏青', '1', '江西', null, '中国', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTI9ZGEs3EQWUGtDos0mp5DuZQmq5apQBe3HlOjZP2QrCia2d6NhrMMMwXSH5XfRf3ZdxSr4giaJGVHQ/132', '2020-06-12 09:17:05');
INSERT INTO `wx_user` VALUES ('35', 'os1l4wLE96N4x1xCGAhmZ7MWfBrY', '睿智思维训练营 Ms Zhao', '2', '', null, '新加坡', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIFricMEe1scyYHyrvSTXp5ATS7XVzWOuHH6Br44WMd2Nic8hOe8e8TWCmfMRfSicI7dyU42WRibooBMQ/132', '2020-06-12 12:32:51');
INSERT INTO `wx_user` VALUES ('36', 'os1l4wK998KoV5B1XBhP2llclC5c', '祝东风', '0', '', null, '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/tro5ojiaUYicNo92HboFhVlfleUpveR139e7LW6YCMgFTK3pDLxjJvUZiaRj9oE1D8Vq4FPNAbQNFQmoezLcgW0vw/132', '2020-06-12 14:22:37');
INSERT INTO `wx_user` VALUES ('37', 'os1l4wMzrGFCJvMyWHvkJqxhvdGI', '@Txy', '2', '吉隆坡', null, '马来西亚', 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eraYbaM2lNBubPBGHGt4xrts6mGSmicwEEdKks3CI0bYn5W5VTAczMk5w2QXmnFwy058mCrsZpA7xA/132', '2020-06-12 21:08:28');
INSERT INTO `wx_user` VALUES ('38', 'os1l4wERB2KugE5Zyn8BztWVf_2I', '娟', '0', '江西', null, '中国', 'http://thirdwx.qlogo.cn/mmopen/vi_32/erDIOSYyiaLKwEUIdtXAicJSnMVexJouJ5C77Pa8qKCakkV37Bvs10ziag6SjC68hBhdFMk0T8gZ2VDFBCgRAlMew/132', '2020-06-12 22:40:33');
INSERT INTO `wx_user` VALUES ('39', 'os1l4wEHzrwhhuw-_wav7Ucon1c0', '燕子', '2', '江西', null, '中国', 'http://thirdwx.qlogo.cn/mmopen/vi_32/JuvFUdFKfW1YfrqVWafHSicMajQAQOot7dhJOuPkkicK3nNsoYFQgBKKKHBV5Yy44bqJzB5ibWJ4rDXxHgKKkCn9A/132', '2020-06-12 22:55:07');
INSERT INTO `wx_user` VALUES ('40', 'os1l4wAUhU35dFMqUHtGcJEfj_DU', '王一伊', '1', '江西', null, '中国', 'http://thirdwx.qlogo.cn/mmopen/vi_32/p8oFqWlEhwYneElgkkkvACshem0Fw5xVs8ETwVnP0CGOEQYkr4X2478qhxalNZF1QT8bztfe12icrsvAUt5VZNA/132', '2020-06-13 06:14:45');
INSERT INTO `wx_user` VALUES ('41', 'os1l4wMh1L4AOCySvpdS38qUQP8I', '傅珊珊', '2', '江西', null, '中国', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLFJA27iczVXtZBEJKZmB9PpDucvqoUxCibHKod6paf3XT22RuibicpY9k9BGWoJjbVYRXknHHDnmtgHg/132', '2020-06-13 08:10:58');
INSERT INTO `wx_user` VALUES ('42', 'os1l4wF1iDHkpjnZD8YEcda4yH_g', '杂货店', '0', '江西', null, '中国', 'http://thirdwx.qlogo.cn/mmopen/vi_32/IUuuZwB7n7AFqibMK0zMZ309XtfM3YG5VVnngyhwT0BRJLnp8yJALrPic9G77P1CjTA2EB9ibnwAsuL8hBZh60Img/132', '2020-06-13 13:03:05');
INSERT INTO `wx_user` VALUES ('43', 'os1l4wP4qB70cyqA4dJc5u7vJEvI', '天山雪莲___长安瓷砖', '2', '江西', null, '中国', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTK1Vc8SPMLKP0bx3te3YgCPnryJp0YAXInLrDsia4ibLQktKl2wy6FGueaE5Mibv7PoTOq3MmNahB5EQ/132', '2020-06-13 13:22:46');
INSERT INTO `wx_user` VALUES ('44', 'os1l4wN-qwoxEgRyEWXZMCaHqCP0', '春华秋实', '2', '江西', null, '中国', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Z9ZVeGLkVetAdzTXiajvCZxibHHgicqpNo6kgicbf5ia7jwqDWQnywwQLibUpbscPJk63WlEcME9l1HC52CVQ9k4S2mQ/132', '2020-06-13 18:53:54');
INSERT INTO `wx_user` VALUES ('45', 'os1l4wFutdIN4ON_PLTE7iK4H9IY', '畅', '2', '江西', null, '中国', 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83epKTELPhkQz1sKAnF6WGjFQSjiaMJUrLdEum5vicLfwLFZn6oJ6eBQhmkicN0VufNm8PXy36H2mDmJWw/132', '2020-06-14 12:41:37');
INSERT INTO `wx_user` VALUES ('46', 'os1l4wO7-4_5WxBkGOiRKuX5Y6w4', '沉默是金', '1', '江西', null, '中国', 'http://thirdwx.qlogo.cn/mmopen/vi_32/7Mr46Ac7ibusC6P3GRzJMNicPgIjESSLxvm88ibibWt1o70jAqZFKuaxo4kNqUtE5oiaVPn8ibztnGoQgU1CiaQueopwg/132', '2020-06-14 13:37:47');
INSERT INTO `wx_user` VALUES ('47', 'os1l4wFiuNKPn29-S2KM-xzy2OxQ', '屈智霞', '2', '', null, '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/ZTdfF7WkP3tgC46wiaNJcDnmiaibLgJwibhWJDWkKCT2dP6kjAhzdJZY81gCEkicEHM3mZEBPPqunJW5N7TU49VK2MA/132', '2020-06-14 15:07:53');
INSERT INTO `wx_user` VALUES ('48', 'os1l4wAUw-PxkT3f1z9nRp_-NXwA', '灼眼的焱萌', '2', '福建', null, '中国', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJqMlPTUwibXr1iaONdohic6ibE4JfK9BKYmuZGQB8sLSHBKb8Fnm3n2POykFiaBEokP3VibNyVhyiaTBOrA/132', '2020-06-15 19:19:27');
INSERT INTO `wx_user` VALUES ('49', 'os1l4wKhE9aMFPwm0PIjts_VsWCc', '玻璃花房', '2', '江西', null, '中国', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJgicGq5IuiaPbjrpxmRtdbfMT4X6uSjPSmpNJrSVXRKJ0KZlAgb1lXKXENpFn5kJuJod7RcBicPI4Ug/132', '2020-06-15 20:14:05');
INSERT INTO `wx_user` VALUES ('50', 'os1l4wI5LkDoKfKCzMT8wJIsnj9A', '参商', '0', '', null, '安道尔', 'http://thirdwx.qlogo.cn/mmopen/vi_32/elDqOAMBiaIlqBjTqgPnZYoyP835h9RSnlvDBiaiccYhSVXHXfNYAklNOe0ITDaTDMdhuhiaxBJQ3iclZWo8Pic4jOUw/132', '2020-06-15 20:50:31');
INSERT INTO `wx_user` VALUES ('51', 'os1l4wJkpExi8hCAeYsIvaNep-iU', '笑对人生', '2', '江西', null, '中国', 'http://thirdwx.qlogo.cn/mmopen/vi_32/R0t2U57ez7q4OUWQTbptwKygus8wNTgIkMQ5ZMuRbic2mCYYibgj1BXR1WA9DalS5FLicLrgehibwFykKCsic4Mza2A/132', '2020-06-15 21:44:09');
INSERT INTO `wx_user` VALUES ('52', 'os1l4wJkfrENbJ3ht0OiH2wEtN6Q', '捷顺门窗开开木门18146603599苏', '2', '江西', null, '中国', 'http://thirdwx.qlogo.cn/mmopen/vi_32/1kMd5Z7htMKeMoqAd8jpiaJmJE7YdEflC3JTlHzma23uZdYria4zVLoYxmOj2icbIgTJeDfdy8DFC0G9Cokv0jqYQ/132', '2020-06-15 22:07:06');
INSERT INTO `wx_user` VALUES ('53', 'os1l4wAWErIxciElJmdTGPmL0VME', '小草', '2', '江西', null, '中国', 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83er1lNEEGPZkvDbtIOl85X2nneoIu9ujsNWJT06L420EfUAumPR36xaG74kxFNX5Uu8ehnocEwZdQg/132', '2020-06-16 06:06:38');
INSERT INTO `wx_user` VALUES ('54', 'os1l4wMC2Dr8RWn8N2oZWlY6KH6c', '腊生', '0', '江西', null, '中国', 'http://thirdwx.qlogo.cn/mmopen/vi_32/IV7gftIXoFeURPF2UO60qZ2Sn4qibrf5SckUMvADmibXRbXExcKj1iaLH6lr76F5yTiarhBszgY8UDRKeu1rocxaxw/132', '2020-06-16 08:26:38');
INSERT INTO `wx_user` VALUES ('55', 'os1l4wIskw7-YmxW4GvXz3UXNDTc', '快乐有你', '1', '江西', null, '中国', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTI34wGCsR2gplH1FW3S8Rbiclcek6jBUdLpV3OXellMGxZFckf3jia2ru6fQOJ3CpsQGAGQia60ic9ETA/132', '2020-06-16 08:56:30');
INSERT INTO `wx_user` VALUES ('56', 'os1l4wPsqkZihV3BA-SiJnqE_Tqw', '汝果', '2', '江西', null, '中国', 'http://thirdwx.qlogo.cn/mmopen/vi_32/mSoicm356XicXEUKFkgThG0QyLJj4yia6IGPcibtCTdvp2u7QLKfRDJdArwPehX2DcBbpGnkyPD40m57cuc4cCbvgQ/132', '2020-06-16 09:58:22');
INSERT INTO `wx_user` VALUES ('57', 'os1l4wHhH_k-nSX_5O7PwN1YgWnE', 'L.K', '2', '江西', null, '中国', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJYLEWgBnBzuv6bgzhsI8pX7icfzMvHmKW8p0fJZJuK9eUFhfP1lFbTqiac6fqibo90IK3JUTvMILiaLw/132', '2020-06-16 10:45:59');
INSERT INTO `wx_user` VALUES ('58', 'os1l4wJ-l4f17Cmm_-SUAOAAeHc8', '沈辉', '2', '江西', null, '中国', 'http://thirdwx.qlogo.cn/mmopen/vi_32/djO9rmYljIvv9VprerKBNkp3iaqj3PHet4hbGYcUZicrWSbZYjU7mdzbm1LibXLvSCPic5dQ4icXaFSrZIvyyYAKThQ/132', '2020-06-16 13:47:32');
INSERT INTO `wx_user` VALUES ('59', 'os1l4wK8sqCgsEtlsGYHCz0RCIsc', '～静好～', '2', '广东', null, '中国', 'http://thirdwx.qlogo.cn/mmopen/vi_32/UxayzicXefeKg0nQShsT3KTGSc04SQ4OGFv8ibgOHNV2d9a76wJaDzsribK351R2fOuIa4qceSxDWjQNI9CzW0jqA/132', '2020-06-16 16:10:30');
INSERT INTO `wx_user` VALUES ('60', 'os1l4wFRtViVtJmnoztUlZN5eznQ', '汤涵睿妈妈', '2', '江西', null, '中国', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJg335UHYMroGwCWgFoOlUVR2woYy7BMdicuX4VeXcAqSruIMORO6IqeS63bRDAeuricJhibicbCoPo1A/132', '2020-06-16 17:19:09');
INSERT INTO `wx_user` VALUES ('61', 'os1l4wKyYvI3DfxzHQNzo4RcajEc', '山复尔尔.', '2', '', null, '波多黎各', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLsR19wO33DbvM3U3E6KiasxROibov8wps0zOqW4zAfUBZ1mQFJZum08dAxaVQTNvzkiaEr6DfQkByaw/132', '2020-06-17 13:46:28');
INSERT INTO `wx_user` VALUES ('62', 'os1l4wFHrFYEscwBqcTTVomuAaIU', '紫轩', '2', '', null, '中非共和国', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKHz6JWKSf2UNvZx1libRaZAaJer9gu39RddvH23f977o9btNFD2MNAAvUYhfKUUvs1t5ic3qj7jicxg/132', '2020-06-17 15:00:29');
INSERT INTO `wx_user` VALUES ('63', 'os1l4wPD6YtJ5dv72CuqQ9F9A_yk', '丹心向阳', '2', '', null, '阿尔巴尼亚', 'http://thirdwx.qlogo.cn/mmopen/vi_32/nzCiaconP6rz2moZaIOswDiaBJtiaTicBpAYGavialn7lYhUPDdyaIMfLhgjmKypabqyre47VbK6TeLf3XEuibYU477Q/132', '2020-06-17 15:20:57');
INSERT INTO `wx_user` VALUES ('64', 'os1l4wO7fOxqz2FxoFaw82k82oOE', '王盼', '1', '江西', null, '中国', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTISOlDeG3wQJqibSP4ybxV07L5kSPo9Pq45gAIQJ9uuM81zRg8S4XJia51J8fzyibVLRJmL1nXMu29fw/132', '2020-06-17 16:00:26');
INSERT INTO `wx_user` VALUES ('65', 'os1l4wDl-0rSG8J74sgji4XYqiIs', '空城旧梦·醉不归·小太阳·露露', '2', '江西', null, '中国', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTISBiaLoFTGFNbJU6Geib5ib1QBn8xF5VAXRWZYLpfd6MEOk6aIGphmQdUoibJiczyYYibC3cHguhKYHkYQ/132', '2020-06-17 16:04:29');
INSERT INTO `wx_user` VALUES ('66', 'os1l4wP_glcRILKTWsRVV8XUPkek', '曙光', '0', '', null, '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/dlhLkgMO4utia804UWiascMMZYKo6qcibZHZcExW5P21TRoNIcj3sqMqt91dEicJUcxkyyS1ZXIPgxpWCXOcxC6Diaw/132', '2020-06-17 16:51:45');
INSERT INTO `wx_user` VALUES ('67', 'os1l4wPI_CdYDceZnuL6kSF3GO6U', '石玲玲', '2', '江西', null, '中国', 'http://thirdwx.qlogo.cn/mmopen/vi_32/kpt7WT8NyVzvFT4rmvMzB1hE7b0UrxPeTXDIEdpSZuxkJe3BdlRgy5jj03PDy5JXibZqPExK3UXuENssuVMAgvg/132', '2020-06-17 17:38:26');
INSERT INTO `wx_user` VALUES ('68', 'os1l4wJXrxMtD40dNLHsS-Jp3OAM', '天行健', '1', '江西', null, '中国', 'http://thirdwx.qlogo.cn/mmopen/vi_32/SHYWgjNQZItgSYHHpV1iaBIVBVcR0MKQEtTw1zrC3PW6xTqmZAicqMjCUjvVnPpuG2E2OGFzQgGbsqThMS7abnGw/132', '2020-06-17 17:38:28');
INSERT INTO `wx_user` VALUES ('69', 'os1l4wD7cdSjzL5oyAt-NVua68SE', '玲敏', '2', '江西', null, '中国', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q12j0kibBQKXLOJ3lnCXDCZmMrBu0GtcUt8vtMnw9NbWLZQNt4m5TvcWSP5DhBQTNc7OUhsCThtdP0w9BNbsAbQ/132', '2020-06-17 18:00:53');
INSERT INTO `wx_user` VALUES ('70', 'os1l4wEoNX-TKHjB28vVd5dphNr8', '爱到最美是陪伴', '2', '江西', null, '中国', 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83epviaA89kOCaQPYZStNxxQ04QEURibicm62rPyu7EsHXfIV3WvibbjNhibDQgt9fvNy2pQd1iaDqsOt4IsA/132', '2020-06-17 18:41:52');
INSERT INTO `wx_user` VALUES ('71', 'os1l4wNLla36QFuW5m6D0FYwZ3CM', '春语.庐山云雾茶', '0', '', null, '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Yxm6LrtpKic0tum9uvY84po3xU1zux7RvtUdCGXnSgP56ZvZtQPjqiaqF6mIKVRpZCZ7LpOtj6tdvjHtF4sBksibA/132', '2020-06-17 18:47:14');
INSERT INTO `wx_user` VALUES ('72', 'os1l4wMVXAXxHGFMMkgHn2SbryMg', '仙玖～', '2', '江西', null, '中国', 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eonjticVk7o3v3DMdkIEQz35kqicQe9Z8F15zCEoRCBJPbrxy4mmyHPxC26lR91h3Bj4aQTXGUhKmLg/132', '2020-06-17 19:29:33');
INSERT INTO `wx_user` VALUES ('73', 'os1l4wPEFDeQrmuh_ngT4paWmLGY', '山中隐士', '1', '', null, '安道尔', 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqUxvoudwzRcSvZujsl3h5SUvMANXaice6xeHmicPq5u1X3Q1QVQicLHnSxs1lgqgIRJ75Q909UwR0Ew/132', '2020-06-17 19:58:05');
INSERT INTO `wx_user` VALUES ('74', 'os1l4wCudBh0MLUUTD-V5InToqDY', '.', '2', '江西', null, '中国', 'http://thirdwx.qlogo.cn/mmopen/vi_32/0iat0zZPUr2JrwGOic2p3bKHf6c5DPzuJKRBlornYGL26JiahxgYBtXsVQgrDtuic4FCmBzxvicK1MGnNUicjDY8N4ibg/132', '2020-06-18 13:31:18');
INSERT INTO `wx_user` VALUES ('75', 'os1l4wKtYnH4D4GzaL5iaB6vQT0c', '起床困难症患者', '2', '汉堡', null, '德国', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLB0nNVBIwCWB7sBs7szGk2Q90RsKZsw9jeDNCZ45hJ16ALY6uoDUerGIqAopkFhF4EFKCf8ib7RGw/132', '2020-06-18 14:02:21');
INSERT INTO `wx_user` VALUES ('76', 'os1l4wF8hvOXekQ0B8rTc7qkbIgQ', '明月', '2', '', null, '安道尔', 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83ergiaicv2dodVYiarecyTdFficudGltFAlCvqtUkOS5DgwRPt3qIR9FzaSoOQzCcoalpwoJCsdsZrdDag/132', '2020-06-18 15:09:07');
INSERT INTO `wx_user` VALUES ('77', 'os1l4wFCrucNb8tlBvUKxOMoPAM8', '小丽', '2', '江西', null, '中国', 'http://thirdwx.qlogo.cn/mmopen/vi_32/ubdTPZJwicad70ibibhugTk7z1QFqXicKlbKhD819X2Cl6g9PUUXDDgicepqgSkqAOInVudPib1cqMb93WKYINpWgRRQ/132', '2020-06-18 16:01:08');
INSERT INTO `wx_user` VALUES ('78', 'os1l4wHYjDn2lZUa0AYAfQZjzWhk', '凌云之晨', '2', '', null, '希腊', 'http://thirdwx.qlogo.cn/mmopen/vi_32/aosZia495XBSiasfZpKhggwcjcibFFF00rfjz62IT4tR0ntdyicfzonMgRAFRqTga0miagHotgDvM7DEbl00BfNeH4w/132', '2020-06-21 18:28:32');
INSERT INTO `wx_user` VALUES ('79', 'os1l4wJ-TKFZBOBHsAPqUT4ihwDY', '曾祥水', '1', '江西', null, '中国', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLOPAbFFibRVQ6BnWXPxwllvmRxs4N1u19IWxWMMic0oMUic0mTITHUhUwFFB4OKPylcuXVe2g9GZrnQ/132', '2020-06-21 18:31:23');
INSERT INTO `wx_user` VALUES ('80', 'os1l4wIWkQ66U0UKNCN7LySF82NQ', '淇', '2', '北京', null, '中国', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLm2icgY5acerVvzvdS1lMTOC1tOicshH6ICH95vPnPoYdQyTUkia4L3XC1nfLMfBTSKCQictgEfdB7YQ/132', '2020-06-21 18:54:45');
INSERT INTO `wx_user` VALUES ('81', 'os1l4wKPm_KRvRhHtNAvsrUnRF6Y', '红彤彤', '1', '江西', null, '中国', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJ1UdB2kksVznHKvznKEIuVnxNAz6icxQYvcCMW1ribtz9FPUPibjWQNJXhdnhlQ7TCmK6Emak2jBppQ/132', '2020-06-21 19:03:09');
INSERT INTO `wx_user` VALUES ('82', 'os1l4wKhmXO0AbfSivg_4TKPpNjQ', '露水', '2', '江西', null, '中国', 'http://thirdwx.qlogo.cn/mmopen/vi_32/0pU8wo4icVR03dpIG1ibFoxMIpmceo3b4WKAf4qJGQZRPgIcKHSD8NDWQibgolmTzgt3LMddjIuwQKIUCiaNv0ogcw/132', '2020-06-21 19:17:24');
INSERT INTO `wx_user` VALUES ('83', 'os1l4wEy1Cb9Ta9GLOBfJbMutDJs', '艾小晴', '2', '江西', null, '中国', 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83epZuxh9g1ZYl5DTkqJBdojp1oFtGpYL5ylG30qEVCbeBPjmcV95eASatrCtN5D2hBicPGXQy5r78Hg/132', '2020-06-21 19:29:51');
INSERT INTO `wx_user` VALUES ('84', 'os1l4wIXQMV30ySrtUhy6CeO7eyc', '岁月静好(小梅)', '2', '江西', null, '中国', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTI9Otibvy8ibu9EH1X1Nxh95LS9SsQNhkuJ6lsoxUxLjmS48fuGMsl2M82yDUc3FqxgluPcibkAUOUdg/132', '2020-06-21 19:34:36');
INSERT INTO `wx_user` VALUES ('85', 'os1l4wMDxTW3zviR-xRcVRGTzfw8', '王四正', '0', '', null, '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/FDfpruRnibxHMYLqaVsxatHic8lzlV7cAoKSJSesurytjl6YgsnAzSuV278nc1XIriawiaQsyXPic8xPW6Z3Tq5k9QQ/132', '2020-06-21 20:40:18');
INSERT INTO `wx_user` VALUES ('86', 'os1l4wO2tRKY9KByRmg6r6D41230', '徐乐文', '1', '江西', null, '中国', 'http://thirdwx.qlogo.cn/mmopen/vi_32/6p7YWGXJhrFD3Tquc7bPvzy3OMX3Xsn4BEpKQMGDVibDstDdibpib7Vicr0ElEL3UEd7hH7zD8YaLH4UD2niaB3UicdA/132', '2020-06-21 20:51:56');
INSERT INTO `wx_user` VALUES ('87', 'os1l4wJW4F5W_QpgGfrv3PCALpGY', '香榧', '2', '', null, '挪威', 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83epdLm2GOgTjt9Ms4xbdRNP3jraynDwmiaVKFDKFyTicicOArYv00W0HXNsaxa5jpbRo6Tdx824kN1huw/132', '2020-06-21 20:52:15');
INSERT INTO `wx_user` VALUES ('88', 'os1l4wDRk16tAdmQmHXTjJ8mZSUo', '昊语', '2', '江西', null, '中国', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJ4m0SOXZ3PkwoYib7ZIu4oXUlKeH2vMia2pzC3snOPKxeZO9IarOfibicdLRMJklpnIedETq72AMFAWQ/132', '2020-06-21 21:08:33');
INSERT INTO `wx_user` VALUES ('89', 'os1l4wF1flVGrjNtm-m6vVw01rYQ', '我在宽路上', '2', '江西', null, '中国', 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83erib0mOUtfroRB4aFeGibW5w4NrL3k4K56tru4ELcecuTVVjJibf6ZjE74Wic3S6M7PrEwSUczomcTD4Q/132', '2020-06-21 21:09:49');
INSERT INTO `wx_user` VALUES ('90', 'os1l4wIkMN0sdeoy6zgEy7fSz8_0', '胡椒', '1', '', null, '泽西岛', 'http://thirdwx.qlogo.cn/mmopen/vi_32/wkyK9eP565NaoVQIx1W8RY6ePLOILLDGznBcEeadg8qKX3ibt4JbeLD8lOpPInd72KnO94ouGE4tcxSmnP9pXJg/132', '2020-06-21 21:21:56');
INSERT INTO `wx_user` VALUES ('91', 'os1l4wIDvqTnVfIGXLxHdmUBq_MM', ': 王 胡 。', '2', '江苏', null, '中国', 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83epFRbF5IkEBkGGuzgjRKQKNrMIvcgI4uskib10QjgrU47aQ1XG9lCnF09ic1YbmXJibEMLwO6diaYtdOg/132', '2020-06-21 21:24:43');
INSERT INTO `wx_user` VALUES ('92', 'os1l4wOsbZDQcqVJKvJxqEpENyro', '爱轩轩宝宝', '2', '江西', null, '中国', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIg8jibDUq1QVfONYoWMQ4dUyau6pKkbsacx7YWtuOzVhMeAxknia5LUrMHOnfHhCXATKMZrQVuZkkw/132', '2020-06-21 21:29:15');
INSERT INTO `wx_user` VALUES ('93', 'os1l4wODlbt4LELOPe3jtPdy7TQE', '美子妈妈', '2', '江西', null, '中国', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTI07WicskqVY207D8tSS0RwibiaJuIr2dRiaAibwRzktv68o9douTMAUQPVcRkGtoB1ozXLeNO1ZqByXLA/132', '2020-06-21 21:35:27');
INSERT INTO `wx_user` VALUES ('94', 'os1l4wFYDE3LzTa_3MlU0WUbh6Mk', 'Andy.V', '1', '江苏', null, '中国', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTITh8rlBes9KZYP8AMfZzdibh4icCibQdlhKT1UJW1icYLm34coTicNjIiaHibYTVbOJY39kplWrSeeLGYlw/132', '2020-06-21 22:17:25');
INSERT INTO `wx_user` VALUES ('95', 'os1l4wNbpeJbJpYeQDwpvMwBLY30', '龙行天下', '1', '江西', null, '中国', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJI35vJxFXBsGVWEzb41MvIr1BCP2GNgQg83XBD8UviawMSeOTLhkJySIX5M9rUTq5dje0UFlJbMag/132', '2020-06-21 22:25:33');
INSERT INTO `wx_user` VALUES ('96', 'os1l4wFRrYs5Y82CZQRbUxWYimHk', '清风徐徐', '1', '江西', null, '中国', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIiaX5NpqdgjyJgvfNGXAHpdj9hADaREdqwG6emJw4mova3ClIceF8GDFgGeoGYmWuH8vsomUWVickw/132', '2020-06-21 22:39:20');
INSERT INTO `wx_user` VALUES ('97', 'os1l4wGfQk4KVoLW4FNCFJSN1OMY', '一泓', '2', '山东', null, '中国', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLcFnG1MA1IxpkOPyIJ0hte0OiaviaObv7Uw8u9FjwvgNOfiaaiaYLCfR196K7C68oZAibxBVHicaw96VOA/132', '2020-06-21 23:03:42');
INSERT INTO `wx_user` VALUES ('98', 'os1l4wNfXx4pWT9TT1rZKdLEHZQk', '小戴（毛毛仔）', '2', '', null, '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTK6Gsiakiav45P2iausgoffnVaqtQ7mQPPDWUstgX1EMCHhs7jeibD1mEkns6SRMuDUfpxt7t9NdtN7zA/132', '2020-06-21 23:34:49');
INSERT INTO `wx_user` VALUES ('99', 'os1l4wEgxUCs4nHZNpsG1uwOcZIY', '初见', '2', '', null, '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLG44I6sZyAQRxJ3MEkO9mExWZ710hm1QpVvFJ8HgnHphRMVhxZgs3dibtnD8JU8WYhjoDKWPJRehA/132', '2020-06-22 01:15:48');
INSERT INTO `wx_user` VALUES ('100', 'os1l4wK4JSb4fXUV_-LvOhyX0Q8U', '细雨湿流光', '2', '河北', null, '中国', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTK6zmnIDhZFZKx7dn3nB4gsQVqtmmyha1RtAqAF1TkqI0I4PFWoxBxL6hupr4x5VC4rnrv1HFr9AQ/132', '2020-06-22 06:02:28');
INSERT INTO `wx_user` VALUES ('101', 'os1l4wCgWy_vQbOMbDSqLxZFym7o', '予', '2', '江西', null, '中国', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJocicFbNNzra1vXdllynLuY2JoFk4Vh9VYfwNH5nr561Whn9860yo00Tdnp10SGQCqryn5hQBe9JQ/132', '2020-06-22 06:13:08');
INSERT INTO `wx_user` VALUES ('102', 'os1l4wMpqYYIk6PULGN_Lp-DtGrI', '赤名', '0', '江西', null, '中国', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJS6wSiayyjQ9tfM4Xd2veJuAd8lXwTCyqRjnibJDXPVn29ictaYygYXxguRBUhxIUcPqmK5Yd5FpVGw/132', '2020-06-22 06:58:41');
INSERT INTO `wx_user` VALUES ('103', 'os1l4wClarnGFLhzY1BrLsowDoRE', '达达', '2', '江西', null, '中国', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJtk9g42mtPFzdF0AqibSfhDHUTnzibL2an2zQlaaPdibsnoIzXsSN8iaqcPqwSyqKnV4hL7x7xeicnCHg/132', '2020-06-22 08:00:09');
INSERT INTO `wx_user` VALUES ('104', 'os1l4wF9AkgZH96jtKdxt2Q2lM_4', '陈越', '2', '江西', null, '中国', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJaLibT0DBV5CgqrYt2l4DZMXgmB3kvlPpb6NpXr4p50s0ESYtGg9G2FZQbqK35jTtBcoQuKF5T9xQ/132', '2020-06-22 08:01:29');
INSERT INTO `wx_user` VALUES ('105', 'os1l4wM2hKAuHvfl_hycEhfVDmZU', '开心老爸', '1', '江西', null, '中国', 'http://thirdwx.qlogo.cn/mmopen/vi_32/geUsFu8SianCqK3cxUWmxA6OmiaAvj5xiaRL6qvH0xbQTIiaFYkmPJGBqbW0oLRicAvNWgasoGnunHvFmdRIZ7s06Iw/132', '2020-06-22 08:55:25');
INSERT INTO `wx_user` VALUES ('106', 'os1l4wJVfSI64lf-mGzx9SOBf768', '不饿', '1', '江西', null, '中国', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJnRV11GshCnDkeRxFLJWwOf98CfrZ4yWU0kfJFic3XT5ibrLbO6Y3IyaOPGWtm82T0SyDX3muVcGVQ/132', '2020-06-22 09:05:34');
INSERT INTO `wx_user` VALUES ('107', 'os1l4wE77rzc5xPOlICSfUsNcJqg', '对方正在输入...', '1', '', null, '冰岛', 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83erdz3icMTUOzPCS8GiaJPOqNLNu7rCGpOGXI7QXibNzGviaeL1gy6d51WXzwWu79hcQIyHfEFIibKNGS9A/132', '2020-06-22 09:52:57');
INSERT INTO `wx_user` VALUES ('108', 'os1l4wDBwMwocrwz9xJGm_1x0nPc', '安然', '0', '吉林', null, '中国', 'http://thirdwx.qlogo.cn/mmopen/vi_32/PiajxSqBRaEI8Ls1yibf6DmgIA8Fc5eFx7bVcFcel3y3jIAZBJaFSJ7FAoUOYsdvMKh5MUuyMTImu7o1hcsLToIA/132', '2020-06-22 10:01:03');
INSERT INTO `wx_user` VALUES ('109', 'os1l4wFHf9ZlDX52OfiPmhmjDi0c', '冬日暖阳', '2', '江西', null, '中国', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLia25UibfcicZcwTGKsibAlicQuCUHLaSNN7QUa7W5WKDtTjHpibZ1Yb1iaMG7OlFaCFRbGGHHp1oCZbuGg/132', '2020-06-22 10:36:28');
INSERT INTO `wx_user` VALUES ('110', 'os1l4wALgoIBAr_5RK7kgDarnSIQ', '忆', '2', '江西', null, '中国', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJGC9Fy7gxkQJtql09PibWkJzvtecCP6PoPib171BOu6vY3nJmNOeicYLtACgh3iayjkwPzibMleH56Diaw/132', '2020-06-22 10:38:31');
INSERT INTO `wx_user` VALUES ('111', 'os1l4wDgyAawo_zDjec02xOZoJu8', '攒一ロ袋°βθ光～', '2', '', null, '卡塔尔', 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83er9VZ2cmG8JvCKjjs3RTCA7dw1LzZesxkicGhcTfWZmFbCZgViaQGUqfWkVPEib2X2Ziaxs7Sg4Qj4UCw/132', '2020-06-22 10:39:55');
INSERT INTO `wx_user` VALUES ('112', 'os1l4wM3QMC8gid3Wl6Ysyt78TMU', '小王同学', '1', '安徽', null, '中国', 'http://thirdwx.qlogo.cn/mmopen/vi_32/n2vmqxIOHJ5FTxqmlFsSeEQxy2lgw2EjIgSFGb1AgpF1ZtFMg0boOU0XNpzWViclpibuTANBaZicicCs6WCicGoFuYA/132', '2020-06-22 11:01:51');
INSERT INTO `wx_user` VALUES ('113', 'os1l4wL9KaySmhNvPjybzrWIO8EI', '䒞芓', '2', '宁夏', null, '中国', 'http://thirdwx.qlogo.cn/mmopen/vi_32/iavdAuMucXHtMcR3pnoWEmSMzSJsMPvJ2zBgiamD2xWURYPRQUaN5iaNQUucRUJFkz3NxfianP0rZJUKFRAB59fIlA/132', '2020-06-22 11:02:22');
INSERT INTO `wx_user` VALUES ('114', 'os1l4wK5EGpjIJo3Pq1l-4TTrTW4', '绿叶   红竹', '0', '', null, '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/ohO4tjcTibKcFKMWYhvjXavEtlm6ic29oqJYLlCzhvokicQns1csxDqbKicjVDuCI69C9PL0gxlSzNMgnFOsrofoEA/132', '2020-06-22 11:14:05');
