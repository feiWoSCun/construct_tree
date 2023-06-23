/*
 Navicat Premium Data Transfer

 Source Server         : 4c8g
 Source Server Type    : MySQL
 Source Server Version : 80031
 Source Host           : 110.42.240.230:3307
 Source Schema         : test_constuct_tree

 Target Server Type    : MySQL
 Target Server Version : 80031
 File Encoding         : 65001

 Date: 23/06/2023 15:10:06
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_xk
-- ----------------------------
DROP TABLE IF EXISTS `t_xk`;
CREATE TABLE `t_xk`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `dm` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '代码',
  `mc` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '名称',
  `fdm` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '父代码',
  `lx` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '类型',
  `zjdm` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '祖级代码',
  `px` int NULL DEFAULT NULL COMMENT '排序',
  `sfsc` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `scr` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `scsj` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `dm`(`dm` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2046 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '专业表' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of t_xk
-- ----------------------------
INSERT INTO `t_xk` VALUES (1851, '01', '哲学', '01', '学科类', '0', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1852, '0101', '哲学', '01', '学科', '0,01', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1853, '0151', '应用伦理', '01', '学科', '0,01', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1854, '02', '经济学', '01', '学科类', '0', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1855, '0201', '理论经济学', '02', '学科', '0,02', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1856, '0202', '应用经济学', '02', '学科', '0,02', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1857, '0251', '金融', '02', '学科', '0,02', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1858, '0252', '应用统计', '02', '学科', '0,02', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1859, '0253', '税务', '02', '学科', '0,02', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1860, '0254', '国际商务', '02', '学科', '0,02', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1861, '0255', '保险', '02', '学科', '0,02', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1862, '0256', '资产评估', '02', '学科', '0,02', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1863, '0258', '数字经济', '02', '学科', '0,02', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1864, '03', '法学', '01', '学科类', '0', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1865, '0301', '法学', '03', '学科', '0,03', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1866, '0302', '政治学', '03', '学科', '0,03', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1867, '0303', '社会学', '03', '学科', '0,03', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1868, '0304', '民族学', '03', '学科', '0,03', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1869, '0305', '马克思主义理论', '03', '学科', '0,03', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1870, '0306', '公安学', '03', '学科', '0,03', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1871, '0307', '中共党史党建学', '03', '学科', '0,03', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1872, '0308', '纪检监察学', '03', '学科', '0,03', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1873, '0351', '法律', '03', '学科', '0,03', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1874, '0352', '社会工作', '03', '学科', '0,03', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1875, '0353', '警务', '03', '学科', '0,03', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1876, '0354', '知识产权', '03', '学科', '0,03', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1877, '0355', '国际事务', '03', '学科', '0,03', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1878, '04', '教育学', '01', '学科类', '0', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1879, '0401', '教育学', '04', '学科', '0,04', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1880, '0402', '心理学（可授教育学、理学学位）', '04', '学科', '0,04', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1881, '0403', '体育学', '04', '学科', '0,04', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1882, '0451', '教育', '04', '学科', '0,04', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1883, '0452', '体育', '04', '学科', '0,04', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1884, '0453', '国际中文教育', '04', '学科', '0,04', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1885, '0454', '应用心理', '04', '学科', '0,04', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1886, '05', '文学', '01', '学科类', '0', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1887, '0501', '中国语言文学', '05', '学科', '0,05', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1888, '0502', '外国语言文学', '05', '学科', '0,05', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1889, '0503', '新闻传播学', '05', '学科', '0,05', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1890, '0551', '翻译', '05', '学科', '0,05', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1891, '0552', '新闻与传播', '05', '学科', '0,05', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1892, '0553', '出版', '05', '学科', '0,05', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1893, '06', '历史学', '01', '学科类', '0', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1894, '0601', '考古学', '06', '学科', '0,06', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1895, '0602', '中国史', '06', '学科', '0,06', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1896, '0603', '世界史', '06', '学科', '0,06', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1897, '0651', '博物馆', '06', '学科', '0,06', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1898, '07', '理学', '01', '学科类', '0', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1899, '0701', '数学', '07', '学科', '0,07', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1900, '0702', '物理学', '07', '学科', '0,07', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1901, '0703', '化学', '07', '学科', '0,07', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1902, '0704', '天文学', '07', '学科', '0,07', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1903, '0705', '地理学', '07', '学科', '0,07', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1904, '0706', '大气科学', '07', '学科', '0,07', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1905, '0707', '海洋科学', '07', '学科', '0,07', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1906, '0708', '地球物理学', '07', '学科', '0,07', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1907, '0709', '地质学', '07', '学科', '0,07', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1908, '0710', '生物学', '07', '学科', '0,07', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1909, '0711', '系统科学', '07', '学科', '0,07', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1910, '0712', '科学技术史（可授理学、工学、农学、医学学位）', '07', '学科', '0,07', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1911, '0713', '生态学', '07', '学科', '0,07', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1912, '0714', '统计学（可授理学、经济学学位）', '07', '学科', '0,07', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1913, '0751', '气象', '08', '学科', '0,08', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1914, '08', '工学', '01', '学科类', '0', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1915, '0801', '力学（可授工学、理学学位）', '08', '学科', '0,08', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1916, '0802', '机械工程', '08', '学科', '0,08', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1917, '0803', '光学工程', '08', '学科', '0,08', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1918, '0804', '仪器科学与技术', '08', '学科', '0,08', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1919, '0805', '材料科学与工程（可授工学、理学学位）', '08', '学科', '0,08', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1920, '0806', '冶金工程', '08', '学科', '0,08', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1921, '0807', '动力工程及工程热物理', '08', '学科', '0,08', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1922, '0808', '电气工程', '08', '学科', '0,08', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1923, '0809', '电子科学与技术（可授工学、理学学位）', '08', '学科', '0,08', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1924, '0810', '信息与通信工程', '08', '学科', '0,08', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1925, '0811', '控制科学与工程', '08', '学科', '0,08', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1926, '0812', '计算机科学与技术（可授工学、理学学位）', '08', '学科', '0,08', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1927, '0813', '建筑学', '08', '学科', '0,08', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1928, '0814', '土木工程', '08', '学科', '0,08', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1929, '0815', '水利工程', '08', '学科', '0,08', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1930, '0816', '测绘科学与技术', '08', '学科', '0,08', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1931, '0817', '化学工程与技术', '08', '学科', '0,08', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1932, '0818', '地质资源与地质工程', '08', '学科', '0,08', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1933, '0819', '矿业工程', '08', '学科', '0,08', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1934, '0820', '石油与天然气工程', '08', '学科', '0,08', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1935, '0821', '纺织科学与工程', '08', '学科', '0,08', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1936, '0822', '轻工技术与工程', '08', '学科', '0,08', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1937, '0823', '交通运输工程', '08', '学科', '0,08', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1938, '0824', '船舶与海洋工程', '08', '学科', '0,08', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1939, '0825', '航空宇航科学与技术', '08', '学科', '0,08', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1940, '0826', '兵器科学与技术', '08', '学科', '0,08', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1941, '0827', '核科学与技术', '08', '学科', '0,08', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1942, '0828', '农业工程', '08', '学科', '0,08', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1943, '0829', '林业工程', '08', '学科', '0,08', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1944, '0830', '环境科学与工程（可授工学、理学、农业学位）', '08', '学科', '0,08', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1945, '0831', '生物医学工程（可授工学、理学、医学学位）', '08', '学科', '0,08', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1946, '0832', '食品科学与工程（可授工学、农学学位）', '08', '学科', '0,08', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1947, '0833', '城乡规划学', '08', '学科', '0,08', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1948, '0835', '软件工程', '08', '学科', '0,08', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1949, '0836', '生物工程', '08', '学科', '0,08', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1950, '0837', '安全科学与工程（可授工学、管理学学位）', '08', '学科', '0,08', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1951, '0838', '公安技术', '08', '学科', '0,08', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1952, '0839', '网络空间安全', '08', '学科', '0,08', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1953, '0851', '建筑', '08', '学科', '0,08', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1954, '0853', '城乡规划', '08', '学科', '0,08', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1955, '0854', '电子信息', '08', '学科', '0,08', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1956, '0855', '机械', '08', '学科', '0,08', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1957, '0856', '材料与化工', '08', '学科', '0,08', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1958, '0857', '资源与环境', '08', '学科', '0,08', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1959, '0858', '能源动力', '08', '学科', '0,08', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1960, '0859', '土木水利', '08', '学科', '0,08', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1961, '0860', '生物与医药', '08', '学科', '0,08', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1962, '0861', '交通运输', '08', '学科', '0,08', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1963, '0862', '风景园林', '08', '学科', '0,08', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1964, '09', '农学', '01', '学科类', '0', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1965, '0901', '作物学', '09', '学科', '0,09', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1966, '0902', '园艺学', '09', '学科', '0,09', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1967, '0903', '农业资源与环境', '09', '学科', '0,09', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1968, '0904', '植物保护', '09', '学科', '0,09', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1969, '0905', '畜牧学', '09', '学科', '0,09', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1970, '0906', '兽医学', '09', '学科', '0,09', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1971, '0907', '林学', '09', '学科', '0,09', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1972, '0908', '水产', '09', '学科', '0,09', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1973, '0909', '草学', '09', '学科', '0,09', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1974, '0910', '水土保持与荒漠化防治学', '09', '学科', '0,09', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1975, '0951', '农业', '09', '学科', '0,09', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1976, '0952', '兽医', '09', '学科', '0,09', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1977, '0954', '林业', '09', '学科', '0,09', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1978, '0955', '食品与营养', '09', '学科', '0,09', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1979, '10', '医学', '01', '学科类', '0', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1980, '1001', '基础医学（可授医学、理学学位）', '10', '学科', '0,10', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1981, '1002', '临床医学（同时设专业学位类别，代码为1051）', '10', '学科', '0,10', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1982, '1003', '口腔医学（同时设专业学位类别，代码为1052）', '10', '学科', '0,10', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1983, '1004', '公共卫生与预防医学（可授医学、理学学位）', '10', '学科', '0,10', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1984, '1005', '中医学', '10', '学科', '0,10', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1985, '1006', '中西医结合', '10', '学科', '0,10', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1986, '1007', '药学（可授医学、理学学位，同时设专业学位类别，代码为1055）', '10', '学科', '0,10', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1987, '1008', '中药学（可授医学、理学学位）', '10', '学科', '0,10', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1988, '1009', '特种医学', '10', '学科', '0,10', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1989, '1011', '护理学（可授医学、理学学位）', '10', '学科', '0,10', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1990, '1012', '法医学', '10', '学科', '0,10', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1991, '1053', '公共卫生', '10', '学科', '0,10', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1992, '1054', '护理', '10', '学科', '0,10', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1993, '1056', '中药', '10', '学科', '0,10', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1994, '1057', '中医', '10', '学科', '0,10', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1995, '1058', '医学技术', '10', '学科', '0,10', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1996, '1059', '针灸', '10', '学科', '0,10', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1997, '11', '军事学', '01', '学科类', '0', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1998, '1101', '军事思想与军事历史', '11', '学科', '0,11', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (1999, '1102', '战略学', '11', '学科', '0,11', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (2000, '1103', '联合作战学', '11', '学科', '0,11', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (2001, '1104', '军兵种作战学', '11', '学科', '0,11', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (2002, '1105', '军队指挥学', '11', '学科', '0,11', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (2003, '1106', '军队政治工作学', '11', '学科', '0,11', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (2004, '1107', '军事后勤学', '11', '学科', '0,11', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (2005, '1108', '军事装备学', '11', '学科', '0,11', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (2006, '1109', '军事管理学', '11', '学科', '0,11', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (2007, '1110', '军事训练学', '11', '学科', '0,11', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (2008, '1111', '军事智能', '11', '学科', '0,11', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (2009, '1152', '联合作战指挥', '11', '学科', '0,11', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (2010, '1153', '军兵种作战指挥', '11', '学科', '0,11', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (2011, '1154', '作战指挥保障', '11', '学科', '0,11', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (2012, '1155', '战时政治工作', '11', '学科', '0,11', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (2013, '1156', '后勤与装备保障', '11', '学科', '0,11', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (2014, '1157', '军事训练与管理', '11', '学科', '0,11', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (2015, '12', '管理学', '01', '学科类', '0', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (2016, '1201', '管理科学与工程(可授管理学、工学学位)', '12', '学科', '0,12', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (2017, '1202', '工商管理学', '12', '学科', '0,12', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (2018, '1203', '农业经济管理', '12', '学科', '0,12', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (2019, '1204', '公共管理学', '12', '学科', '0,12', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (2020, '1205', '信息资源管理', '12', '学科', '0,12', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (2021, '1251', '工商管理', '12', '学科', '0,12', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (2022, '1252', '公共管理', '12', '学科', '0,12', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (2023, '1253', '会计', '12', '学科', '0,12', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (2024, '1254', '旅游管理', '12', '学科', '0,12', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (2025, '1255', '图书情报', '12', '学科', '0,12', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (2026, '1256', '工程管理', '12', '学科', '0,12', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (2027, '1257', '审计', '12', '学科', '0,12', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (2028, '13', '艺术学', '01', '学科类', '0', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (2029, '1301', '艺术学（含音乐、舞蹈、戏剧与影视。戏曲与曲艺、美术与书法、设计等历史、理论和评论研究）', '13', '学科', '0,13', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (2030, '1352', '音乐', '13', '学科', '0,13', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (2031, '1353', '舞蹈', '13', '学科', '0,13', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (2032, '1354', '戏剧与影视', '13', '学科', '0,13', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (2033, '1355', '戏曲与曲艺', '13', '学科', '0,13', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (2034, '1356', '美术与书法', '13', '学科', '0,13', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (2035, '1357', '设计', '13', '学科', '0,13', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (2036, '14', '交叉学科', '01', '学科类', '0', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (2037, '1401', '集成电路科学与工程（可授理学、工学学位）', '14', '学科', '0,14', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (2038, '1402', '国家安全学（可授法学、工学、管理学、军事学学位）', '14', '学科', '0,14', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (2039, '1403', '设计学（可授工学、艺术学学位）', '14', '学科', '0,14', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (2040, '1404', '遥感科学与技术（可授理学、工学学位）', '14', '学科', '0,14', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (2041, '1405', '智能科学与技术（可授理学、工学学位）', '14', '学科', '0,14', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (2042, '1406', '纳米科学与工程（可授理学、工学学位）', '14', '学科', '0,14', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (2043, '1407', '区域国别学（可授经济学、法学、文学、历史学学位）', '14', '学科', '0,14', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (2044, '1451', '文物', '14', '学科', '0,14', NULL, NULL, NULL, NULL);
INSERT INTO `t_xk` VALUES (2045, '1452', '密码', '14', '学科', '0,14', NULL, NULL, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
