/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100411 (10.4.11-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : adms

 Target Server Type    : MySQL
 Target Server Version : 100411 (10.4.11-MariaDB)
 File Encoding         : 65001

 Date: 25/09/2023 13:46:41
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ip_mesin
-- ----------------------------
DROP TABLE IF EXISTS `ip_mesin`;
CREATE TABLE `ip_mesin`  (
  `id_mesin` int NOT NULL AUTO_INCREMENT,
  `sn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `model` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nama_mesin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ip_address` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `com_key` int NOT NULL,
  `soap_port` int NOT NULL,
  PRIMARY KEY (`id_mesin`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of ip_mesin
-- ----------------------------
INSERT INTO `ip_mesin` VALUES (12, '6583144400270', 'X304', 'Fingerprint kelas x', '192.168.15.205', 0, 0);

-- ----------------------------
-- Table structure for kelas
-- ----------------------------
DROP TABLE IF EXISTS `kelas`;
CREATE TABLE `kelas`  (
  `idkelas` int NOT NULL,
  `kelas` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idkelas`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of kelas
-- ----------------------------
INSERT INTO `kelas` VALUES (305, '10 MPLB A');
INSERT INTO `kelas` VALUES (306, '10 MPLB B');
INSERT INTO `kelas` VALUES (307, '10 TKR A');
INSERT INTO `kelas` VALUES (308, '10 TSM C');
INSERT INTO `kelas` VALUES (309, '10 TKJ A');
INSERT INTO `kelas` VALUES (310, '10 TKJ B');
INSERT INTO `kelas` VALUES (311, '10 TKJ C');
INSERT INTO `kelas` VALUES (312, '10 TSM A');
INSERT INTO `kelas` VALUES (313, '10 TSM B');
INSERT INTO `kelas` VALUES (314, '10 DKV A');
INSERT INTO `kelas` VALUES (315, '10 MPLB C');
INSERT INTO `kelas` VALUES (316, '11 DKV A');
INSERT INTO `kelas` VALUES (317, '11 TKR A');
INSERT INTO `kelas` VALUES (319, '11 TKJ A');
INSERT INTO `kelas` VALUES (320, '11 TKJ B');
INSERT INTO `kelas` VALUES (321, '11 TKJ C');
INSERT INTO `kelas` VALUES (322, '11 TSM A');
INSERT INTO `kelas` VALUES (323, '11 MPLB A');
INSERT INTO `kelas` VALUES (324, '11 MPLB B');
INSERT INTO `kelas` VALUES (325, '11 MPLB C');
INSERT INTO `kelas` VALUES (326, '12 OTKP A');
INSERT INTO `kelas` VALUES (327, '11 TKRO');
INSERT INTO `kelas` VALUES (328, '12 TKJ A');
INSERT INTO `kelas` VALUES (329, '12 TKJ B');
INSERT INTO `kelas` VALUES (330, '12 TBSM A');
INSERT INTO `kelas` VALUES (331, '12 TBSM B');
INSERT INTO `kelas` VALUES (332, '12 MM');
INSERT INTO `kelas` VALUES (333, '11 TSM B');

-- ----------------------------
-- Table structure for logs
-- ----------------------------
DROP TABLE IF EXISTS `logs`;
CREATE TABLE `logs`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `SN` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `date_in` date NULL DEFAULT NULL,
  `time_in` time NULL DEFAULT NULL,
  `date_out` date NULL DEFAULT NULL,
  `time_out` time NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `flag` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of logs
-- ----------------------------
INSERT INTO `logs` VALUES (1, '6583144400270', '1', '2023-09-25', '11:08:09', NULL, NULL, NULL, 'N');
INSERT INTO `logs` VALUES (2, '6583144400270', '2', '2023-09-25', '11:09:25', NULL, NULL, NULL, 'N');
INSERT INTO `logs` VALUES (3, '6583144400270', '3', '2023-09-25', '11:12:33', NULL, NULL, NULL, 'N');
INSERT INTO `logs` VALUES (4, '6583144400270', '4', '2023-09-25', '11:15:05', NULL, NULL, NULL, 'N');
INSERT INTO `logs` VALUES (5, '6583144400270', '6', '2023-09-25', '11:15:57', NULL, NULL, NULL, 'N');
INSERT INTO `logs` VALUES (6, '6583144400270', '8', '2023-09-25', '11:17:15', NULL, NULL, NULL, 'N');
INSERT INTO `logs` VALUES (7, '6583144400270', '11', '2023-09-25', '11:18:58', NULL, NULL, NULL, 'N');
INSERT INTO `logs` VALUES (8, '6583144400270', '12', '2023-09-25', '11:19:58', NULL, NULL, NULL, 'N');
INSERT INTO `logs` VALUES (9, '6583144400270', '15', '2023-09-25', '11:21:16', NULL, NULL, NULL, 'N');
INSERT INTO `logs` VALUES (10, '6583144400270', '16', '2023-09-25', '11:22:51', NULL, NULL, NULL, 'N');
INSERT INTO `logs` VALUES (11, '6583144400270', '17', '2023-09-25', '11:24:07', NULL, NULL, NULL, 'N');
INSERT INTO `logs` VALUES (12, '6583144400270', '18', '2023-09-25', '11:24:55', NULL, NULL, NULL, 'N');
INSERT INTO `logs` VALUES (13, '6583144400270', '24', '2023-09-25', '11:27:11', NULL, NULL, NULL, 'N');
INSERT INTO `logs` VALUES (14, '6583144400270', '25', '2023-09-25', '11:28:05', NULL, NULL, NULL, 'N');
INSERT INTO `logs` VALUES (15, '6583144400270', '26', '2023-09-25', '11:28:46', NULL, NULL, NULL, 'N');
INSERT INTO `logs` VALUES (16, '6583144400270', '27', '2023-09-25', '11:30:46', NULL, NULL, NULL, 'N');
INSERT INTO `logs` VALUES (17, '6583144400270', '31', '2023-09-25', '11:32:54', NULL, NULL, NULL, 'N');
INSERT INTO `logs` VALUES (18, '6583144400270', '32', '2023-09-25', '11:33:59', NULL, NULL, NULL, 'N');

-- ----------------------------
-- Table structure for role_mesin
-- ----------------------------
DROP TABLE IF EXISTS `role_mesin`;
CREATE TABLE `role_mesin`  (
  `id_role` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of role_mesin
-- ----------------------------
INSERT INTO `role_mesin` VALUES (1, 'user');
INSERT INTO `role_mesin` VALUES (2, 'enroller');
INSERT INTO `role_mesin` VALUES (6, 'admin');
INSERT INTO `role_mesin` VALUES (14, 'superadmin');

-- ----------------------------
-- Table structure for tbl_action
-- ----------------------------
DROP TABLE IF EXISTS `tbl_action`;
CREATE TABLE `tbl_action`  (
  `id` int NULL DEFAULT NULL,
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_action
-- ----------------------------
INSERT INTO `tbl_action` VALUES (1, 'Clear All Device Data');
INSERT INTO `tbl_action` VALUES (2, 'Clear All User Template');
INSERT INTO `tbl_action` VALUES (3, 'Clear All Att Logs');

-- ----------------------------
-- Table structure for tbl_member
-- ----------------------------
DROP TABLE IF EXISTS `tbl_member`;
CREATE TABLE `tbl_member`  (
  `id_member` int NOT NULL AUTO_INCREMENT,
  `sn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nis` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_member`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_member
-- ----------------------------
INSERT INTO `tbl_member` VALUES (1, NULL, NULL, '222310339', '1');
INSERT INTO `tbl_member` VALUES (2, NULL, NULL, '222310291', '2');
INSERT INTO `tbl_member` VALUES (3, NULL, NULL, '222310332', '3');
INSERT INTO `tbl_member` VALUES (4, NULL, NULL, '222310345', '4');
INSERT INTO `tbl_member` VALUES (5, NULL, NULL, '222310178', '5');
INSERT INTO `tbl_member` VALUES (6, NULL, NULL, '222310313', '6');
INSERT INTO `tbl_member` VALUES (7, NULL, NULL, '222310285', '7');
INSERT INTO `tbl_member` VALUES (8, NULL, NULL, '222310338', '8');
INSERT INTO `tbl_member` VALUES (9, NULL, NULL, '2223100435', '9');
INSERT INTO `tbl_member` VALUES (10, NULL, NULL, '222310341', '10');
INSERT INTO `tbl_member` VALUES (11, NULL, NULL, '222310323', '11');
INSERT INTO `tbl_member` VALUES (12, NULL, NULL, '222310324', '12');
INSERT INTO `tbl_member` VALUES (13, NULL, NULL, '222310249', '13');
INSERT INTO `tbl_member` VALUES (14, NULL, NULL, '222310270', '14');
INSERT INTO `tbl_member` VALUES (15, NULL, NULL, '222310304', '15');
INSERT INTO `tbl_member` VALUES (16, NULL, NULL, '222310245', '16');
INSERT INTO `tbl_member` VALUES (17, NULL, NULL, '222310052', '17');
INSERT INTO `tbl_member` VALUES (18, NULL, NULL, '222310280', '18');
INSERT INTO `tbl_member` VALUES (19, NULL, NULL, '222310309', '19');
INSERT INTO `tbl_member` VALUES (20, NULL, NULL, '222310343', '20');
INSERT INTO `tbl_member` VALUES (21, NULL, NULL, '222310277', '21');
INSERT INTO `tbl_member` VALUES (22, NULL, NULL, '222310260', '22');
INSERT INTO `tbl_member` VALUES (23, NULL, NULL, '222310297', '23');
INSERT INTO `tbl_member` VALUES (24, NULL, NULL, '222310305', '24');
INSERT INTO `tbl_member` VALUES (25, NULL, NULL, '222310407', '25');
INSERT INTO `tbl_member` VALUES (26, NULL, NULL, '222310261', '26');
INSERT INTO `tbl_member` VALUES (27, NULL, NULL, '222310327', '27');
INSERT INTO `tbl_member` VALUES (28, NULL, NULL, '222310331', '28');
INSERT INTO `tbl_member` VALUES (29, NULL, NULL, '222310064', '29');
INSERT INTO `tbl_member` VALUES (30, NULL, NULL, '222310300', '30');
INSERT INTO `tbl_member` VALUES (31, NULL, NULL, '222310248', '31');
INSERT INTO `tbl_member` VALUES (32, NULL, NULL, '222310293', '32');
INSERT INTO `tbl_member` VALUES (33, NULL, NULL, '222310303', '33');

-- ----------------------------
-- Table structure for tbl_pegawai
-- ----------------------------
DROP TABLE IF EXISTS `tbl_pegawai`;
CREATE TABLE `tbl_pegawai`  (
  `id_pegawai` bigint NOT NULL AUTO_INCREMENT,
  `nip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nama` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tmplahir` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tgllahir` date NULL DEFAULT NULL,
  `bagian` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_pegawai`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 142 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_pegawai
-- ----------------------------
INSERT INTO `tbl_pegawai` VALUES (1, '1388201161', 'LILIS APRIYANI DELASARI, S.Pd', 'Tangerang', '1995-04-24', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (2, '1388203083', 'FIQIH ADITYA PRAMESTI', 'Tegal', '1995-10-31', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (3, '20607849101', 'H. HASBULLAH, M.Pd.', 'Tangerang', '1973-08-10', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (4, '20607849102', 'WASJA', 'KUNINGAN', '1973-02-06', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (5, '20607849103', 'ARISTO, S.T.', 'Tegal', '1995-02-08', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (6, '20607849104', 'ANDI SUPRIANTO', 'Serang', '1985-06-07', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (7, '20607849105', 'ANDINI,S.Pd.', 'Tangerang', '1988-01-01', 'Non Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (8, '20607849106', 'ASEP GUNAWAN', 'Tangerang', '1980-08-29', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (9, '20607849107', 'ATO KUSDIANTO (LAMA)', 'Kuningan', '1979-12-12', 'Non Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (10, '20607849108', 'DADANG', 'Tangerang', '1981-02-09', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (11, '20607849109', 'Dra DESTRIANI', 'Tanjung Karang', '1968-12-05', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (12, '20607849110', 'DHIKA KREDIANSYAH, S.Pd', 'Tangerang', '1988-04-12', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (13, '20607849111', ' H. KULYUBI', 'Tangerang', '1966-04-10', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (14, '20607849112', 'EDI SASMITA,S.Pd', 'Jakarta', '1969-04-01', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (15, '20607849113', 'ERY DWI CAHYONO', 'SERANG', '1980-02-08', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (16, '20607849114', 'GUGUN GUMELAR, S.Pd', 'SUBANG', '1983-01-12', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (17, '20607849115', 'H. ABDULLAH', 'Tangerang', '1973-05-21', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (18, '20607849116', 'HILMAN', 'TANGERANG', '1987-02-03', 'Non Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (19, '20607849117', 'Hj. SITI ROHMIATI,SHi', 'Tangerang', '1980-11-10', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (20, '20607849118', 'INNA RUSLIYANA,S.Pd', 'Tangerang', '1980-06-30', 'Non Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (21, '20607849119', 'KURTUBI,SE', 'Lebak', '1979-03-30', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (22, '20607849120', 'MARKAM,S.Pd', 'Tangerang', '1970-05-04', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (23, '206078491202', 'MAKMUR P LIMBONG, S.Pd', 'TANGERANG', '1990-12-28', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (24, '20607849121', 'MUHAMAD NAWAWI,S.Pd.', 'Tangerang', '1991-06-12', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (25, '20607849122', 'MUHDI', 'Tangerang', '1989-01-26', 'Non Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (26, '20607849123', 'NANANG SUPRIYADI', 'Tangerang', '1983-01-11', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (27, '20607849124', 'NAZARUDIN SALEH, S.Pd', 'Tangerang', '1989-02-18', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (28, '20607849125', 'IMRONUDIN', 'BANDUNG', '1981-06-17', 'Non Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (29, '20607849126', 'NENI MARLINA, S.Pd', 'Kuningan', '1986-08-07', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (30, '20607849127', 'NGIZATUL MUBAROKAH', 'KLATEN', '1984-06-10', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (31, '20607849128', 'PUTRI MARDIKA MAHARANI,S.Pd', 'Tangerang', '1988-07-11', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (32, '20607849129', 'RACHMI FATONAH,S.Pd.', 'Tangerang', '1965-12-07', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (33, '20607849130', 'RAHMAH FAUZIAH', 'Bandung', '1977-08-21', 'Non Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (34, '20607849131', 'RICKY VINDA TAMPATI,S.Kom', 'Tangerang', '1988-11-21', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (35, '20607849132', 'RISA FEBRIANTI,S.Pd', 'Tangerang', '1992-02-23', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (36, '20607849133', 'ROMA HAYATI, S.Kom.', 'Jakarta', '1982-02-26', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (37, '20607849134', 'SAIDAH, S.Pd', 'Tangerang', '1976-10-06', 'Non Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (38, '20607849135', 'SISWANTI,S.Pd', 'Tangerang', '1985-02-25', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (39, '20607849136', 'SITI SYAROH', 'Tangerang', '1983-04-14', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (40, '20607849137', 'SUPENDI,S.Pd.', 'Tangerang', '1988-02-23', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (41, '20607849138', 'UNAYAH,S.Pd', 'Tangerang', '1988-09-08', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (42, '20607849139', 'Drs. WAHYU APANDI', 'Ciamis', '1954-05-21', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (43, '20607849140', 'WAHYUDIN, SHi', 'Tangerang', '1973-07-19', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (44, '20607849141', 'YAYAH SAMSIAH', 'Tangerang', '1989-10-24', 'Non Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (45, '20607849142', 'YENI YULYANI,S.Pd', 'Tangerang', '1991-07-15', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (46, '20607849143', 'YOGIE HERMAWAN', 'BOGOR', '1989-11-11', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (47, '20607849144', 'YUYUN YUNADI K', 'Bandung', '1953-06-08', 'Non Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (48, '20607849145', 'RONI', 'Tangerang', '1986-03-03', 'Non Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (49, '20607849146', 'RIAN HIDAYAT', 'Tangerang', '1988-01-01', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (50, '20607849147', 'OMAN', 'Tangerang', '1985-01-22', 'Non Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (51, '20607849148', 'OVICK HIDAYAT', 'Jakarta', '1990-10-22', 'Non Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (52, '20607849149', 'ISNADI', 'Tuban', '1964-08-05', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (53, '20607849150', 'R WAHYU WIDAYAT,S.Pd.', 'Yogyakarta', '1967-01-28', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (54, '20607849151', 'SLAMET MULYONO, S.Pd', 'KLATEN', '1981-03-10', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (55, '20607849152', 'TATI HARTATI', 'SERANG', '1973-05-08', 'Non Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (56, '20607849153', 'JAELANI FIRMANSYAH, S.Pd', 'Tangerang', '1991-10-16', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (57, '20607849154', 'ADE RACHMAT,S.Pd.', 'Tangerang', '1990-01-01', 'Non Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (58, '20607849155', 'IHSAN BAHRUDIN', 'Tangerang', '1973-01-01', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (59, '20607849156', 'WIKA AULIA AL IHSAN', 'Tangerang', '1988-01-01', 'Non Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (60, '20607849157', 'ADI JUMADI', 'Tangerang', '1994-01-01', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (61, '20607849158', 'APIP', 'Tangerang', '1991-03-03', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (62, '20607849159', 'IRWAN', 'Tangerang', '1989-01-01', 'Non Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (63, '20607849160', 'ANTON A.R', 'Jakarta', '1983-06-28', 'Non Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (64, '20607849161', 'ROMAYUDIN', 'Tangerang', '1983-12-29', 'Non Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (65, '20607849162', 'SOPYAN MAHMUD,A.Md', 'Jakarta', '1965-01-02', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (66, '20607849163', 'M. WAWI MASKURO', 'Tangerang', '1992-10-04', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (67, '20607849164', 'MUHAMAD IZLIS, S.Pd', 'Tangerang', '1994-02-04', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (68, '20607849165', 'LIANAWATI', 'Tangerang', '1975-02-04', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (69, '20607849166', 'Apip', 'Tangerang', '1992-03-05', 'Non Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (70, '20607849167', 'NANANG SUPRIYATNA', 'Serang', '1988-10-11', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (71, '20607849168', 'NASRUDIN', 'Serang', '1986-05-15', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (72, '20607849169', 'YUSUF HUSEIN', 'TANGERANG', '1994-01-04', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (73, '20607849170', 'FAROUK FAHRIZAL, S.Pd', 'TANGERANG', '1983-05-27', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (74, '20607849171', 'ANA CHOLISSHATUL MAGHFIROH S.Pd', 'MADIUN', '1991-08-14', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (75, '20607849172', 'RIDWAN,', 'TANGERANG', '1990-07-25', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (76, '20607849173', 'AHMAD MAKI', 'TANGERANG', '1994-01-08', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (77, '20607849174', 'JULIA WULANDARI, S.Pd', 'TANGERANG', '1993-07-16', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (78, '20607849175', 'M CHOIRUL PAZRIANA,S.Pd.', 'TANGERANG', '1993-11-04', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (79, '20607849176', 'NIDA ZAHARA, S.Pd.', 'TANGERANG', '1993-09-04', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (80, '20607849177', 'EVA NURJANAH', 'tangerang', '1994-04-09', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (81, '20607849178', 'LISWATI', 'TANGERANG', '1988-09-24', 'Non Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (82, '20607849179', 'SYAIPUL BAHRI,M.Pd', 'TANGERANG', '1974-06-12', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (83, '20607849199', 'LINDA MARLIANA, S.Pd', 'TANGERANG', '1994-02-14', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (84, '20607849200', 'DIAH SINTHA ROFITASARI BINONI', 'MAGETAN', '1994-03-04', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (85, '206078492001', 'KUSNADI, S.Pd.', 'TANGERANG', '1982-10-08', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (86, '206078492002', 'ARI', 'Tangerang', '1987-02-01', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (87, '206078492003', 'YENY YULIANY, S.Pd', 'Jakarta', '1979-06-26', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (88, '206078492004', 'HAMIDI', 'Tangerang', '1968-02-03', 'Non Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (89, '206078492005', 'MARYANI, S.Pd', 'Tangerang', '1995-08-28', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (90, '206078492006', 'AI NURHAYATI, S.Pd', 'Sukabumi', '1984-04-08', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (91, '206078492007', 'UUN UNAYAH, S.Pd', 'Tangerang', '1997-08-27', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (92, '206078492008', 'MURO', 'Tangerang', '1974-04-01', 'Non Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (93, '206078492009', 'HERU', 'Tangerang', '1980-02-05', 'Non Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (94, '20607849201', 'SAIDI', 'TANGERANG', '1965-01-01', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (95, '206078492015', 'JUDLI, S.Pd', 'Tangerang', '1999-02-05', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (96, '206078492019', 'KUSWARA', 'JAKARTA', '1990-07-07', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (97, '20607849202', 'FAHRUROJI,S.Pd', 'Tangerang', '1973-05-08', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (98, '206078492020', 'SITI JUBAEDAH', 'Tangerang', '2002-02-25', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (99, '206078492021', 'PUJIA LESTARI, S.Kom', 'Tangerang', '2003-03-03', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (100, '206078492022', 'HARIS NOPENDI S.E', 'Jakarta', '1972-09-11', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (101, '206078492023', 'HERI MULYANA', 'Tangerang', '2005-02-02', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (102, '206078492024', 'EVI', 'Tangerang', '2004-01-03', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (103, '20607849203', 'RAIDA, S.Pd', 'TANGERANG', '1995-02-22', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (104, '20607849204', 'SITI IANATU SYOWIYAH,', 'TANGERANG', '1994-10-13', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (105, '20607849205', 'YULIASTI, S.Pd.', 'TANGERANG', '1991-07-31', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (106, '20607849206', 'MOH. ROSYID ', 'TANGERANG', '1991-06-06', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (107, '20607849207', 'TANTO SUGITO,S.Pd', 'Pemalang', '1982-04-07', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (108, '20607849208', 'LILIS APRIYANI DELASARI,S.Pd', 'TANGERANG', '1995-04-24', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (109, '20607849209', 'MUSRIFASARI', 'JAKARTA', '1985-08-18', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (110, '20607849210', 'DAMAYANTI,S.Pd', 'KRUI', '1974-11-18', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (111, '20607849211', 'IKA RAHAYU, S.Pd', 'TANGERANG', '1989-10-24', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (112, '20607849212', 'DESI DIA OKTAVIADI', 'KLATEN', '1994-03-17', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (113, '20607849213', 'MARWADI', 'TANGERANG', '1990-03-01', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (114, '20607849214', 'TOTO KUNDADI UTOMO,M.Si', 'PANDEGLANG', '1976-08-12', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (115, '20607849215', 'SITI AAN ENDAH JULIYANAH', 'Tangerang', '1994-07-26', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (116, '20607849216', 'JUNIARDI LUTHFIANA S', 'BEKASI', '1995-06-23', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (117, '20607849217', 'SUCI AMALIANI PAKAR', 'Jakarta', '1992-09-17', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (118, '20607849218', 'RINI NUR AINI', 'TANGERANG', '2001-01-01', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (119, '20607849219', 'ISMAIL MARZUKI, ST', 'TANGERANG', '2001-01-01', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (120, '20607849220', 'LINA MARLINA, S.Pd', 'TANGERANG', '2001-01-01', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (121, '20607849221', 'UYUM HAYATI NUFUS, SE', 'TANGERANG', '1991-11-11', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (122, '20607849222', 'FABIO JUNIOR, S.Kom', 'TANGERANG', '2005-01-01', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (123, '20607849223', 'SUTISNA', 'JAKARTA', '1980-12-04', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (124, '20607849224', 'ROSALINA', 'TANGERANG', '1996-01-01', 'Non Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (125, '20607849225', 'SITI KHOLFAH BELLA', 'TANGERANG', '1999-03-05', 'Non Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (126, '20607849227', 'SUHERI', 'TANGERANG', '2002-10-10', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (127, '20607849228', 'NURDIN', 'TANGERANG', '2001-08-11', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (128, '20607849245', 'EVA PUJIANTI', 'Tangerang', '1999-09-24', 'Non Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (129, '20607849274', 'SUSILAWATI', 'TANGERANG', '2001-03-05', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (130, '20607849300', 'UKI PRATAMA', 'TANGERANG', '1986-07-18', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (131, '20607849301', 'AHMAD YANI', 'Tangerang', '1985-08-16', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (132, '20607849302', 'SISKAWATI , S,Kom', 'SUMEDANG', '1996-04-15', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (133, '20607849303', 'HAERUL JUHRONI', 'Tangerang', '1993-08-01', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (134, '20607849304', 'RUDIYANTO, S.KOM', 'TANGERANG', '1995-02-20', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (135, '20607849305', 'RIA ANDRIANI, S.PD', 'TANGERANG', '1993-06-07', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (136, '20607849500', 'MISKAR', 'KUNINGAN', '2003-01-01', 'Non Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (137, '2060784989', 'ATO KUSDIANTO', 'kuningan', '1979-12-12', 'Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (138, '20623237001', 'YENY YULIANY', 'Tangerang', '1987-01-02', 'Non Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (139, 'MBC2223001', 'UKI PRATAMA', 'Tangerang', '1981-09-02', 'Member Bisnis Center', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (140, 'UP001', 'RIZAL STM', 'TANGERANG', '1994-01-10', 'Non Akademik', NULL, NULL);
INSERT INTO `tbl_pegawai` VALUES (141, '20607849306', 'RIFQI', 'Indramayu', '2000-04-15', 'Akademik', NULL, NULL);

-- ----------------------------
-- Table structure for tbl_sekolah
-- ----------------------------
DROP TABLE IF EXISTS `tbl_sekolah`;
CREATE TABLE `tbl_sekolah`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama_sekolah` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `alamat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `kepala_sekolah` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_sekolah
-- ----------------------------
INSERT INTO `tbl_sekolah` VALUES (9, 'YAYASAN DAAREL ROHMAH123', 'Jl. Raya Tigaraksa Cisoka No.158, Caringin, Kec. Cisoka, Tangerang, Banten 15730123', 'H. HASBULLAH, SA.g112345', 'R.png', '2020-11-25 14:29:21', '2022-01-11 06:21:00');
INSERT INTO `tbl_sekolah` VALUES (10, 'SMP', 'JL.mondar mandir', 'RUDI', 'default.jpg', NULL, NULL);

-- ----------------------------
-- Table structure for tbl_semester
-- ----------------------------
DROP TABLE IF EXISTS `tbl_semester`;
CREATE TABLE `tbl_semester`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_sekolah` int NOT NULL,
  `semester` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tbl_tahun_ajaran_fk0`(`id_sekolah` ASC) USING BTREE,
  CONSTRAINT `tbl_semester_ibfk_1` FOREIGN KEY (`id_sekolah`) REFERENCES `tbl_sekolah` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_semester
-- ----------------------------
INSERT INTO `tbl_semester` VALUES (1, 9, 'Ganjil', 'Y', NULL, NULL);

-- ----------------------------
-- Table structure for tbl_siswa
-- ----------------------------
DROP TABLE IF EXISTS `tbl_siswa`;
CREATE TABLE `tbl_siswa`  (
  `id_siswa` bigint NOT NULL AUTO_INCREMENT,
  `nis` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nama` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tempat_lahir` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tgl_lahir` date NULL DEFAULT NULL,
  `idkelas` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `kelas` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_siswa`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 877 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_siswa
-- ----------------------------
INSERT INTO `tbl_siswa` VALUES (1, '2324100080', 'REVINA', 'Tangerang', '2008-07-25', '305', '10 MPLB A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (2, '2324100072', 'NYIMAS AULIA AGUSTIN', 'Tangerang', '2008-08-29', '305', '10 MPLB A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (3, '2324100039', 'INDRIYANI', 'TANGERANG', '2009-01-02', '305', '10 MPLB A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (4, '2324100113', 'ZAHRA BILLAH', 'Tangerang', '2008-08-12', '305', '10 MPLB A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (5, '2324100025', 'BELLA PERIYANI', 'TANGERANG', '2009-01-27', '305', '10 MPLB A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (6, '2324100064', 'NADIA SAFIRA', 'TANGERANG', '2008-10-12', '305', '10 MPLB A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (7, '2324100042', 'JUWITA DARAPUSPITA', 'Tangerang', '2008-08-25', '305', '10 MPLB A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (8, '2324100007', 'ALESIA PUTRI FREDLINA', 'TANGERANG', '2007-06-13', '305', '10 MPLB A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (9, '2324100031', 'ELSA DIANY', 'TANGERANG', '2008-09-18', '305', '10 MPLB A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (10, '2324100110', 'WULAN DWI HAPSARI', 'TANGERANG', '2008-05-30', '305', '10 MPLB A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (11, '2324100018', 'ANNISAH FITRI FAUZIAH', 'TANGERANG', '2008-09-30', '305', '10 MPLB A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (12, '2324100090', 'SITI CC FAUZILAH', 'Tangerang', '2008-10-02', '305', '10 MPLB A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (13, '2324100076', 'PUTRI SHAFIRA RAMADHANI', 'Jakarta', '2007-09-18', '305', '10 MPLB A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (14, '2324100054', 'MARSYA LEVIANA', 'Tangerang', '2008-03-22', '305', '10 MPLB A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (15, '2324100081', 'RIAN HIDAYATULAH', 'Bandar Lampung', '2006-11-06', '305', '10 MPLB A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (16, '2324100021', 'ASTI ARUM MAHARANI', 'Jepara', '2008-07-09', '305', '10 MPLB A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (17, '2324100073', 'PUTRI ANDINI', 'TANGERANG', '2008-11-19', '305', '10 MPLB A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (18, '2324100017', 'ANITA', 'Tagerang', '2008-05-31', '305', '10 MPLB A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (19, '2324100053', 'MARSYA AULIA PRACINTA', 'Tangerang', '2008-03-09', '305', '10 MPLB A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (20, '2324100016', 'ANISA NURAINI', 'TANGERANG', '2008-11-26', '305', '10 MPLB A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (21, '2324100041', 'JELITA ULANDARI', 'TANGERANG', '2008-12-22', '305', '10 MPLB A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (22, '2324100046', 'KESYA AYUDIA PUTRI', 'Tangerang', '2008-06-23', '305', '10 MPLB A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (23, '2324100012', 'AMISHA PUTRI', 'TANGERANG', '2007-07-03', '305', '10 MPLB A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (24, '2324100094', 'SITI NURHODIJAH', 'TANGERANG', '2007-10-25', '305', '10 MPLB A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (25, '2324100055', 'MELLY DAMAYANTI', 'TANGERANG', '2008-05-09', '305', '10 MPLB A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (26, '2324100086', 'SEPTIANA RIRIN RAMADHANI SUPARNO', 'TANGERANG', '2008-09-10', '305', '10 MPLB A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (27, '2324100049', 'LANA JAMEELA DE ONI', 'Batam', '2009-03-08', '305', '10 MPLB A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (28, '2324100101', 'TARISTA PUTRI KIRANA', 'JAKARTA', '2008-01-11', '305', '10 MPLB A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (29, '2324100059', 'MUHAMMAD RAIHAN PRIYANDIKA', 'JAKARTA', '2005-01-14', '305', '10 MPLB A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (30, '2324100056', 'MEYSA TIARA DEWI', 'TANGERANG', '2008-05-04', '305', '10 MPLB A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (31, '2324100015', 'ANGGITA RAMADHANI', 'TANGERANG', '2007-10-08', '305', '10 MPLB A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (32, '2324100005', 'AKHMAD MUFADOL', 'TANJUNG KARANG', '2007-10-15', '305', '10 MPLB A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (33, '2324100058', 'MUHAMMAD FAUZAN', 'TANGERANG', '2007-03-19', '305', '10 MPLB A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (34, '2324100048', 'KIRAN ALPAH LIVI', 'JAKARTA', '2008-06-15', '305', '10 MPLB A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (35, '2324100028', 'DEA AMELIA MOZZA', 'tangerang', '2007-12-28', '305', '10 MPLB A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (36, '2324100004', 'AISYAH NUR HABIBAH', 'Tangerang', '2008-03-10', '305', '10 MPLB A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (37, '2324100027', 'CLAURENCIA E.Y. DOPO', 'Aeka', '2007-05-23', '305', '10 MPLB A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (38, '2324100001', 'ADELIA APRIYANTI', 'TANGERANG', '2009-04-14', '305', '10 MPLB A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (39, '2324100047', 'KHARISA', 'Tangerang', '2008-10-30', '305', '10 MPLB A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (40, '2324100087', 'SERLINAH', 'Tangerang', '2008-05-02', '305', '10 MPLB A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (41, '2324100083', 'RISKA DWI AWLIA', 'TANGERANG', '2007-08-24', '305', '10 MPLB A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (42, '2324100085', 'SALWA AZZAHRA', 'TANGERANG', '2008-01-11', '305', '10 MPLB A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (43, '2223100038', 'FERNANDO FARELLIOFRIE', 'TANGERANG', '2007-04-27', '305', '10 MPLB A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (44, '2324100112', 'YENI LESTARI', 'Tangerang', '2008-02-28', '306', '10 MPLB B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (45, '2324100009', 'ALVINA RAMADAN', 'TANGERANG', '2008-09-11', '306', '10 MPLB B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (46, '2324100006', 'AKHSAN HAIKAL PUTRA ', 'TANGERANG', '2008-05-10', '306', '10 MPLB B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (47, '2324100014', 'ANGGI', 'Tangerang', '2008-08-29', '306', '10 MPLB B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (48, '2324100032', 'ERNASARI', 'Tangerang', '2007-12-11', '306', '10 MPLB B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (49, '2324100038', 'INDAH SEPTIANTY', 'JAKARTA', '2007-09-13', '306', '10 MPLB B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (50, '2324100060', 'MUTIARA DEWI KURNIAWAN', 'TANGERANG', '2009-02-09', '306', '10 MPLB B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (51, '2324100040', 'JASMINE SYAPUTRI SULAIMAN', 'TANGERANG', '2008-06-08', '306', '10 MPLB B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (52, '2324100102', 'TIRAY ANJANI', 'TANGERANG', '2007-11-09', '306', '10 MPLB B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (53, '2324100010', 'AMELDA', 'Tangerang', '2008-11-20', '306', '10 MPLB B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (54, '2324100043', 'JUWITA PUSPITA LESTARI', 'Tangerang', '2008-01-12', '306', '10 MPLB B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (55, '2324100071', 'NOZA APRILIA', 'Tambang Besai', '2007-04-21', '306', '10 MPLB B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (56, '2324100229', 'NURLAILA', 'TANGERANG', '2008-02-16', '306', '10 MPLB B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (57, '2324100002', 'ADITYA YULIANTO', 'Tangerang', '2007-07-04', '306', '10 MPLB B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (58, '2324100089', 'SILVA LIANA PUTRI', 'TANGERANG', '2008-11-24', '306', '10 MPLB B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (59, '2324100029', 'DEVY SUCI OKTAVIANI', 'TANGERANG', '2005-10-16', '306', '10 MPLB B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (60, '2324100078', 'REHAN ANANDA SIDIQ', 'JAKARTA', '2006-08-20', '306', '10 MPLB B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (61, '2324100022', 'ATIKA RAHMAWATI', 'TANGERANG', '2008-08-21', '306', '10 MPLB B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (62, '2324100099', 'SRI WAHYUNI', 'TANGERANG', '2009-01-04', '306', '10 MPLB B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (63, '2324100111', 'WULAN NISA', 'Tangerang', '2008-08-17', '306', '10 MPLB B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (64, '2324100069', 'NILA AMALIA ROSADI', 'TANGERANG', '2007-12-26', '306', '10 MPLB B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (65, '2324100095', 'SITI RISMAH RINDIYANI', 'TANGERANG', '2009-02-05', '306', '10 MPLB B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (66, '2324100013', 'ANGEL APRILIA VAUZI', 'Tasikmalaya', '2007-04-21', '306', '10 MPLB B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (67, '2324100035', 'HANI MELANI', 'TANGERANG', '2008-03-30', '306', '10 MPLB B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (68, '2324100045', 'KARTIKA WANDA SULISTYA', 'Tangerang Selatan', '2008-01-03', '306', '10 MPLB B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (69, '2324100105', 'VICKA AL MUSYA RIZQI', 'TANGERANG', '2008-08-09', '306', '10 MPLB B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (70, '2324100019', 'ARYA MALIK IBRAHIM', 'TANGERANG', '2008-12-25', '306', '10 MPLB B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (71, '2324100026', 'CHELSI ASKATALITA', 'Tangerang', '2008-08-18', '306', '10 MPLB B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (72, '2324100050', 'LAURA ANJANI', 'Tangerang', '2008-01-20', '306', '10 MPLB B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (73, '2324100067', 'NATALIA', 'TANGERANG', '2008-12-24', '306', '10 MPLB B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (74, '2324100023', 'AURA ALFIRA PRASETYO', 'TANGERANG', '2006-03-22', '306', '10 MPLB B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (75, '2324100092', 'SITI NADIA NURMALA', 'Tangerang', '2008-06-18', '306', '10 MPLB B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (76, '2324100024', 'AURA SURYANI', 'TANGERANG', '2008-07-07', '306', '10 MPLB B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (77, '2324100258', 'USTAMA LIDA NAMIROH', 'Tangerang', '2007-06-05', '306', '10 MPLB B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (78, '2324100036', 'HILDA AINI SYIFA', 'Tangerang', '2008-08-23', '306', '10 MPLB B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (79, '2324100066', 'NASYWA AZAHRA', 'Tangerang', '2008-01-12', '306', '10 MPLB B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (80, '2324100070', 'NISA AGUSTIN', 'TANGERANG', '2008-08-15', '306', '10 MPLB B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (81, '2324100132', 'MAULANA', 'Tangerang', '2007-03-08', '307', '10 TKR A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (82, '2324100137', 'MUHAMAD RIANA', 'Tangerang', '2009-05-05', '307', '10 TKR A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (83, '2324100123', 'DAMAS AKRI WIJAYA', 'Kulon progo', '2008-05-05', '307', '10 TKR A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (84, '2324100144', 'OKI JULIANSYACH', 'Tangerang', '2008-07-03', '307', '10 TKR A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (85, '2324100125', 'DWI RIDHO PRASETYO', 'Tangerang', '2007-12-13', '307', '10 TKR A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (86, '2324100135', 'MUHAMAD ANGGA', 'Tangerang', '2008-06-11', '307', '10 TKR A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (87, '2324100337', 'MUHAMAD RIZKI FAHLEPI', 'Tangerang', '2008-01-07', '307', '10 TKR A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (88, '2324100121', 'BAGUS SETIAWAN', 'Tangerang', '2006-08-20', '307', '10 TKR A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (89, '2324100119', 'ARGA VINCENT', 'TANGERANG', '2008-04-27', '307', '10 TKR A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (90, '2324100116', 'AHMAD ZIDAN FAHREZY', 'JAKARTA', '2008-03-08', '307', '10 TKR A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (91, '2324100145', 'REHAN FERDIANSAH', 'TANGERANG', '2008-07-21', '307', '10 TKR A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (92, '2324100126', 'FA`IQ EZAR ABHINAYA', 'TEGAL', '2008-11-03', '307', '10 TKR A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (93, '2324100114', 'ABDUL AZIZ PRATAMA', 'JAKARTA', '2007-11-30', '307', '10 TKR A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (94, '2324100128', 'HUSRIYAL', 'WAY KANAN', '2007-12-25', '307', '10 TKR A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (95, '2324100117', 'ALFITO NANDITA SUSANTO', 'JAKARTA', '2008-03-20', '307', '10 TKR A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (96, '2324100124', 'DUTA PERKASA SEPTIAWAN BAKKARA', 'Pemantang Sianter', '2007-09-08', '307', '10 TKR A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (97, '2324100134', 'MUHAMAD ANDIKA', 'TANGERANG', '2008-06-01', '307', '10 TKR A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (98, '2324100115', 'AHMAD SUPRIO', 'TANGERANG', '2007-03-13', '307', '10 TKR A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (99, '2324100136', 'MUHAMAD RAKA HAWASIH', 'TANGERANG', '2009-06-21', '307', '10 TKR A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (100, '2324100147', 'RIO EPENDI', 'TANGERANG', '2008-02-03', '307', '10 TKR A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (101, '2324100120', 'ASEP ROYANA', 'Tangerang', '2008-05-07', '307', '10 TKR A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (102, '2324100322', 'JONATHAN VEDRICO MANALU', 'TANGERANG', '2008-02-25', '307', '10 TKR A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (103, '2324100191', 'HILAL FATAH HIDAYAT', 'JAKARTA', '2007-03-29', '307', '10 TKR A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (104, '2324100140', 'MUHAMMAD BOBBY SAPUTRA', 'Serang', '2009-01-23', '307', '10 TKR A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (105, '2324100106', 'VIKRI', 'TANGERANG', '2007-12-11', '307', '10 TKR A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (106, '2324100133', 'MICHAEL  KHOERNEFI BOES', 'TANGERANG', '2009-04-12', '307', '10 TKR A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (107, '2324100377', 'MUHAMMAD NAUFAL RIFQIY ', 'Magelang', '2008-01-14', '307', '10 TKR A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (108, '2324100397', 'MAIDIL PUTRA', 'Sikilang', '2006-05-04', '307', '10 TKR A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (109, '2324100401', 'MUHAMAD AGIL AL FARIZ', 'Tangerang', '2008-11-27', '307', '10 TKR A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (110, '2324100359', 'DAVID MARCEL LORENZO ANGGARA PUTRA', 'Pakuncer', '2008-10-04', '307', '10 TKR A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (111, '2324100334', 'MUHAMMAD NURUL HUDA', 'BOYOLALI', '2008-09-06', '308', '10 TSM C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (112, '2324100290', 'MUHAMAD RAIHAN KHAIRUL ILHAM', 'TANGERANG', '2008-02-15', '308', '10 TSM C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (113, '2324100131', 'M.RIFAL', 'Palembang', '2006-09-23', '308', '10 TSM C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (114, '2324100329', 'MUHAMAD ANANTA AJI', 'TANGERANG', '2007-12-27', '308', '10 TSM C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (115, '2324100336', 'MUHAMAD RIYAN ', 'TANGERANG', '2007-07-01', '308', '10 TSM C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (116, '2324100294', 'MUHAMMAD VAISAL MEINALDO', 'TANGERANG', '2009-05-27', '308', '10 TSM C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (117, '2324100325', 'MUHAHAMD IRPAN MAULANA', 'Tangerang', '2008-09-06', '308', '10 TSM C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (118, '2324100298', 'PANJI SUHENDRA PUTRA', 'TANGERANG', '2008-08-06', '308', '10 TSM C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (119, '2324100339', 'MUHAMAD WES RAMDANI', 'TANGERANG', '2008-10-01', '308', '10 TSM C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (120, '2324100280', 'M. FARHAN', 'Bandar Lampung', '2006-12-04', '308', '10 TSM C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (121, '2324100273', 'MUHAMAD DARUL ULUM', 'Tangerang', '2008-02-17', '308', '10 TSM C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (122, '2324100304', 'SAKTI MORENO AGUSTA', 'JAKARTA', '2006-04-21', '308', '10 TSM C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (123, '2324100316', 'DAFFA ANDHIKA ALANSYAH', 'TANGERANG', '2008-06-17', '308', '10 TSM C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (124, '2324100301', 'REZA ADITYA PRATAMA', 'Tangerang', '2008-09-14', '308', '10 TSM C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (125, '2324100313', 'ALFATH NURFADILLAH', 'TANGERANG', '2008-06-29', '308', '10 TSM C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (126, '2324100269', 'ANDI ARSYAD', 'TANGERANG', '2008-11-03', '308', '10 TSM C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (127, '2324100279', 'KIKI AFREZA', 'TANGERANG', '2007-01-14', '308', '10 TSM C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (128, '2324100143', 'MUHAMMAD RIFKY FABIAN', 'Sukoharjo', '2007-12-08', '308', '10 TSM C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (129, '2324100267', 'AHMAD RIFA`I', 'TANGERANG', '2008-08-08', '308', '10 TSM C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (130, '2324100272', 'CIKAL SAPUTRA', 'TANGERANG', '2008-02-26', '308', '10 TSM C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (131, '2324100355', 'VINO BAHARI', 'TANGERANG', '2008-12-21', '308', '10 TSM C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (132, '2324100282', 'MUHAMAD AJI MAULANA', 'TANGERANG', '2007-06-26', '308', '10 TSM C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (133, '2324100305', 'SAWILA', 'TANGERANG', '2007-06-03', '308', '10 TSM C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (134, '2324100244', 'RIZKI', 'TANGERANG', '2008-08-28', '309', '10 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (135, '2324100197', 'IRA RAHMAWATI', 'Tangerang', '2008-06-01', '309', '10 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (136, '2324100220', 'MUHAMMAD AFRIJAL', 'Tangerang', '2008-05-06', '309', '10 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (137, '2324100231', 'NURUL FITRIA', 'Tangerang', '2008-09-28', '309', '10 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (138, '2324100107', 'VIONA DWI ARYANTI', 'TANGERANG', '2007-12-18', '309', '10 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (139, '2324100187', 'FADIL RAMADAN', 'TANGERANG', '2007-10-03', '309', '10 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (140, '2324100179', 'DECHA ALYA RAMADHAN', 'TANGERANG', '2008-09-10', '309', '10 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (141, '2324100174', 'BRINKMEN JANUAR ARDIANTO', 'Tangerang', '2008-01-20', '309', '10 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (142, '2324100155', 'AJI RACHMAN', 'TANGERANG', '2008-06-12', '309', '10 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (143, '2324100256', 'SITI ULPIAH', 'TANGERANG', '2008-01-19', '309', '10 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (144, '2324100201', 'KRISNA PUTRA FERDINAND', 'Bogor', '2008-07-14', '309', '10 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (145, '2324100224', 'MUHAMAD IBNU', 'TANGERANG', '2007-09-21', '309', '10 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (146, '2324100205', 'MADJID DJABAR', 'Tangerang', '2008-12-06', '309', '10 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (147, '2324100183', 'EGA PRATAMA', 'TANGERANG', '2008-05-15', '309', '10 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (148, '2324100211', 'MUHAMMAD AJI FAJRUROHIM', 'Tangerang', '2007-10-26', '309', '10 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (149, '2324100173', 'BINTANG PRAYUDHA', 'Tangerang', '2008-03-20', '309', '10 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (150, '2324100232', 'PAJAR SARIP', 'TANGERANG', '2007-12-06', '309', '10 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (151, '2324100193', 'IKSAN SETIAWAN', 'JAKARTA', '2007-11-18', '309', '10 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (152, '2324100157', 'ALAMSYAH PANDU DEWANTORO', 'TANGERANG', '2007-11-04', '309', '10 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (153, '2324100167', 'AZIZ NURHIDAYAT', 'TANGERANG', '2008-03-13', '309', '10 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (154, '2324100165', 'ASSYFA MAHARANI', 'Tangerang', '2008-08-13', '309', '10 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (155, '2324100154', 'AFIN MAULANA', 'TANGERANG', '2008-03-26', '309', '10 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (156, '2324100206', 'MARCELL AFRIZA DITYA', 'TANGERANG', '2008-04-26', '309', '10 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (157, '2324100247', 'SARAH ERLITA', 'TANGERANG', '2008-06-08', '309', '10 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (158, '2324100214', 'MUHAMAD EFAN FAUJI', 'TANGERANG', '2008-09-13', '309', '10 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (159, '2324100190', 'GOLDY SHANDIKA RIZQIA', 'TANGERANG', '2008-03-18', '309', '10 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (160, '2324100260', 'WAHYU PUTRA ROMADHONI', 'KEBUMEN', '2008-09-01', '309', '10 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (161, '2324100168', 'BAGAS ARIANTO', 'Tangerang', '2008-06-06', '309', '10 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (162, '2324100186', 'FACHRY PEBRIAN', 'BANDUNG', '2008-02-01', '309', '10 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (163, '2324100250', 'SEPTIA WULANDARI', 'TANGERANG', '2008-09-08', '309', '10 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (164, '2324100398', 'SHANDY BANGKIT PUTRA', 'Tangerang', '2008-06-04', '309', '10 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (165, '2324100270', 'ANJAR MAULANA UMAEDI', 'Tangerang', '2008-05-25', '309', '10 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (166, '2324100286', 'MUHAMAD ILHAM', 'TANGERANG', '2009-06-23', '309', '10 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (167, '2324100403', 'EGI SUMAYADI', 'Tangerang', '2008-08-07', '309', '10 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (168, '2324100150', 'ADE LIA', 'TANGERANG', '2008-03-12', '310', '10 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (169, '2324100096', 'SITI RISMAWATI', 'Tangerang', '2007-06-05', '310', '10 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (170, '2324100037', 'IDA ROSIDA', 'Tangerang', '2008-03-05', '310', '10 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (171, '2324100285', 'MUHAMAD IKLIL RAFAEL', 'TANGERANG', '2008-05-05', '310', '10 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (172, '2324100156', 'AKBAR HAFID AULIA', 'TANGERANG', '2008-09-30', '310', '10 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (173, '2324100185', 'EVA WIDIYA WATI', 'TANGERANG', '2007-08-19', '310', '10 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (174, '2324100213', 'MUHAMAD ALWAN FUDOLI', 'LEBAK', '2007-03-26', '310', '10 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (175, '2324100184', 'ERTIAWATI', 'Tangerang', '2007-06-29', '310', '10 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (176, '2324100192', 'IBNU ALVIAN', 'TANGERANG', '2008-01-21', '310', '10 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (177, '2324100226', 'NAY CILA PUSPITASARI', 'TRIMULYO', '2008-11-01', '310', '10 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (178, '2324100170', 'BAYU RIZKI AFRILIO', 'JAKARTA', '2008-04-10', '310', '10 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (179, '2324100164', 'ARI DWI ANDIKA', 'Tangerang', '2008-10-29', '310', '10 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (180, '2324100219', 'MUHAMAD YUSUF BAHTIAR', 'Tangerang', '2007-11-25', '310', '10 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (181, '2324100239', 'REGI SAPUTRA', 'TANGERANG', '2008-06-15', '310', '10 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (182, '2324100199', 'KAFKA YAFI SAKHA', 'JAKARTA', '2008-04-16', '310', '10 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (183, '2324100195', 'IMANUEL SAPULETTE', 'Tangerang', '2008-10-11', '310', '10 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (184, '2324100236', 'RADITYA ALFATTAH MARDIYUWANA', 'TANGERANG', '2008-03-21', '310', '10 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (185, '2324100160', 'ANANDA RIZKI', 'Tangerang', '2007-08-06', '310', '10 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (186, '2324100177', 'DARRUS DWI PUTRA', 'Tangerang', '2007-11-21', '310', '10 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (187, '2324100245', 'RO`UF JANUAR', 'TANGERANG', '2008-01-02', '310', '10 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (188, '2324100204', 'M.SUBHAN ALWANSYAH', 'TANGERANG', '2007-09-04', '310', '10 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (189, '2324100178', 'DAVINA PUTRI', 'TANGERANG', '2008-05-01', '310', '10 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (190, '2324100221', 'MUHAMMAD DIMAS AGUNG LAKSONO', 'JAKARTA', '2008-01-22', '310', '10 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (191, '2324100240', 'REPAN RAMADANSYAH', 'Tangerang', '2008-09-08', '310', '10 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (192, '2324100233', 'PANDU SURYANATA', 'TANGERANG', '2007-12-24', '310', '10 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (193, '2324100172', 'BINTANG G PRATAMA', 'JAKARTA', '2007-01-27', '310', '10 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (194, '2324100212', 'MUHAMAD ALFARIS', 'Tangerang', '2009-01-01', '310', '10 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (195, '2324100225', 'NADILA DWIKE SAPUTRI', 'Bumi Restu', '2008-04-04', '310', '10 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (196, '2324100161', 'ANGGARA SUCIPTO', 'TANGERANG', '2007-08-10', '310', '10 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (197, '2324100230', 'NURLITA AMELIA PUTRI', 'TANGERANG', '2008-07-08', '310', '10 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (198, '2324100396', 'TALITA SALSABILA', 'Tangerang', '2008-06-16', '310', '10 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (199, '2324100399', 'RIFA ABIANSYACH', 'Tangerang', '2008-01-30', '310', '10 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (200, '2324100400', 'RISMA', 'TANGERANG', '2008-06-29', '310', '10 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (201, '2324100406', 'RISKA PEBRIANI', 'Tangerang', '2009-02-14', '310', '10 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (202, '2324100151', 'ADE YUNIARTI', 'TANGERANG', '2007-06-02', '311', '10 TKJ C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (203, '2324100243', 'RIPA', 'Tangerang', '2008-01-24', '311', '10 TKJ C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (204, '2324100237', 'RAFFA PRASETYO', 'TANGERANG', '2008-05-01', '311', '10 TKJ C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (205, '2324100228', 'NOVAN SUGINA', 'Tangerang', '2007-05-18', '311', '10 TKJ C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (206, '2324100077', 'PUTRI YANTI', 'Tangerang', '2008-09-06', '311', '10 TKJ C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (207, '2324100181', 'DIAN ANDITA', 'TANGERANG', '2008-04-27', '311', '10 TKJ C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (208, '2324100196', 'INTAN PERMATASARI', 'Bekasi', '2008-07-23', '311', '10 TKJ C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (209, '2324100194', 'ILA', 'Tangerang', '2007-08-22', '311', '10 TKJ C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (210, '2324100262', 'YUDIA RAHMAWATI', 'TANGERANG', '2008-04-19', '311', '10 TKJ C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (211, '2324100207', 'MOHAMAD AMAR KADAFI', 'Jakarta', '2007-05-25', '311', '10 TKJ C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (212, '2324100215', 'MUHAMMAD ENGLAND', 'Wonogiri', '2007-10-20', '311', '10 TKJ C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (213, '2324100162', 'ANGGI DHARMAWAN', 'Tangerang', '2007-12-02', '311', '10 TKJ C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (214, '2324100216', 'MUHAMAD REFI', 'TANGERANG', '2009-02-27', '311', '10 TKJ C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (215, '2324100171', 'BILLY', 'TANGERANG', '2007-05-15', '311', '10 TKJ C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (216, '2324100163', 'ARDIYANSAH', 'TANGERANG', '2008-04-03', '311', '10 TKJ C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (217, '2324100209', 'MUHAMAD AFGAN', 'Tangerang', '2008-06-24', '311', '10 TKJ C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (218, '2324100261', 'WISNU SHODIK MAULANA ARRHIM', 'TANGERANG', '2008-08-07', '311', '10 TKJ C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (219, '2324100180', 'DEVIKA RAMADANI', 'TANGERANG', '2008-09-13', '311', '10 TKJ C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (220, '2324100254', 'SITI ROHAYATI ', 'TANGERANG', '2008-03-10', '311', '10 TKJ C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (221, '2324100210', 'MUHAMAD AGGUNG DESTIAN', 'Tangerang', '2007-12-11', '311', '10 TKJ C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (222, '2324100158', 'ALFA YUSUF ARRASYID', 'TANGERANG', '2008-08-05', '311', '10 TKJ C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (223, '2324100218', 'MUHAMAD RIDWAN', 'TANGERANG', '2008-07-12', '311', '10 TKJ C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (224, '2324100238', 'RAHMAT FEBRIAN', 'Andaleh', '2008-02-27', '311', '10 TKJ C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (225, '2324100169', 'BAGAS NUR RAMADHAN', 'TANGERANG', '2008-09-01', '311', '10 TKJ C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (226, '2324100198', 'JIHAN RIZKY MAULIDINA', 'TANGERANG', '2008-03-16', '311', '10 TKJ C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (227, '2324100235', 'RADIT MAULANA', 'Tangerang', '2008-03-10', '311', '10 TKJ C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (228, '2324100234', 'PUTRI RAMADHANI', 'TANGERANG', '2008-09-25', '311', '10 TKJ C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (229, '2324100189', 'FETTY AFRIANTI', 'TANGERANG', '2008-04-16', '311', '10 TKJ C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (230, '2324100176', 'CHAYO NUGRAHA', 'LINGKIS', '2007-06-02', '311', '10 TKJ C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (231, '2324100188', 'FAZRI HARIANSYAH', 'Tangerang', '2008-05-03', '311', '10 TKJ C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (232, '2324100223', 'MUHAMMAD FAHRY FEBRIAN AL HUSAINI', 'TANGERANG', '2008-02-09', '311', '10 TKJ C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (233, '2324100153', 'ADITYA COKY FERDIANSYAH', 'TANGERANG', '2008-08-14', '311', '10 TKJ C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (234, '2324100320', 'GOLDY BRAYN ANDIKA', 'TANGERANG', '2008-03-23', '311', '10 TKJ C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (235, '2324100349', 'RIFKI AGUSTINO', 'TANGERANG', '2008-08-01', '311', '10 TKJ C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (236, '2324100402', 'ADRIAN PUTRA PRAMULYA', 'Tangerang', '2008-09-16', '311', '10 TKJ C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (237, '2324100296', 'MUHAMMAD IRVAN', 'Tulung Waras', '2006-10-07', '312', '10 TSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (238, '2324100266', 'AHMAD FATHIR RIYANSYAH', 'Tangerang', '2008-02-13', '312', '10 TSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (239, '2324100284', 'MUHAMAD GILANG RAMADHAN', 'Tangerang', '2008-09-17', '312', '10 TSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (240, '2324100271', 'APIP APIYANSAH', 'TANGERANG', '2008-01-07', '312', '10 TSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (241, '2324100277', 'GUSMAN PULUNGAN', 'TANGERANG', '2007-08-01', '312', '10 TSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (242, '2324100281', 'MOHAMAD REPAN ALDIANSAH', 'TANGERANG', '2009-06-29', '312', '10 TSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (243, '2324100302', 'REZGA DEARDO TARIGAN', 'TANGERANG', '2008-05-30', '312', '10 TSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (244, '2324100283', 'MUHAMAD AL FARIZI', 'Tangerang', '2008-02-07', '312', '10 TSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (245, '2324100275', 'ERVAN SETIAWAN', 'TANGERANG', '2007-06-29', '312', '10 TSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (246, '2324100287', 'MUHAMAD MAULANA RIZKI', 'TANGERANG', '2008-02-13', '312', '10 TSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (247, '2324100309', 'YANDI HERDIANSYAH', 'TANGERANG', '2008-11-30', '312', '10 TSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (248, '2324100292', 'MUHAMAD SAEPUL ANWAR', 'TANGERANG', '2007-11-01', '312', '10 TSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (249, '2324100291', 'MUHAMAD RIKI', 'Tangerang', '2006-08-20', '312', '10 TSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (250, '2324100289', 'MUHAMAD RAFI RAMADHAN', 'Tangerang', '2008-09-02', '312', '10 TSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (251, '2324100293', 'MUHAMAD SARIPUDIN', 'Tangerang', '2008-01-27', '312', '10 TSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (252, '2324100345', 'RESTU BUMI RAMADHAN', 'TANGERANG', '2008-09-20', '312', '10 TSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (253, '2324100297', 'MUHAMMAD ERLANGGA DWI PUTRA', 'TANGERANG', '2008-06-11', '312', '10 TSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (254, '2324100259', 'WAHID FEBRIANSYAH', 'TANGERANG', '2008-02-11', '312', '10 TSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (255, '2324100299', 'RAGA CAHYADI', 'TANGERANG', '2007-08-08', '312', '10 TSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (256, '2324100307', 'SULTHAN RAFIF DWI PRASETYA', 'TANGERANG', '2008-04-30', '312', '10 TSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (257, '2324100276', 'FAREL ADITYA', 'TANGERANG', '2007-12-28', '312', '10 TSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (258, '2324100300', 'REY FELIANO RAMADHAN', 'TANGERANG', '2008-09-07', '312', '10 TSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (259, '2324100265', 'AGISNA GUSTIAWAN', 'Tangerang', '2006-04-16', '312', '10 TSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (260, '2324100274', 'DENI SETIAWAN', 'TANGERANG', '2007-12-30', '312', '10 TSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (261, '2324100268', 'AHMAD RIVALDI AL FARIZI', 'Tangerang', '2008-06-28', '312', '10 TSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (262, '2324100288', 'MUHAMAD MICO FERDIANSYAH', 'Tangerang', '2008-04-11', '312', '10 TSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (263, '2324100263', 'ABDAN FAJRI DAULANI', 'TANGERANG', '2008-07-12', '312', '10 TSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (264, '2324100306', 'SUKATMA', 'Tangerang', '2008-09-02', '312', '10 TSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (265, '2324100327', 'MUHAMAD ADLI FIRMANSYAH', 'TANGERANG', '2008-04-21', '313', '10 TSM B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (266, '2324100341', 'MUHAMAD MUDORI', 'Tangerang', '2008-11-11', '313', '10 TSM B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (267, '2324100343', 'RAJIB IKDIYANA', 'TANGERANG', '2007-06-28', '313', '10 TSM B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (268, '2324100338', 'MUHAMAD SUBANDI', 'TANGERANG', '2009-01-17', '313', '10 TSM B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (269, '2324100347', 'RIDO ABDILLAH', 'TANGERANG', '2008-05-03', '313', '10 TSM B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (270, '2324100346', 'REZA APRIANSYAH', 'Tangerang', '2008-04-24', '313', '10 TSM B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (271, '2324100332', 'MUHAMAD FARHAN NAUVAL AL-ISLAMI', 'TANGERANG', '2007-11-30', '313', '10 TSM B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (272, '2324100340', 'MUHAMMAD DEWA PURNAMA', 'TANGERANG', '2006-01-14', '313', '10 TSM B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (273, '2324100330', 'MUHAMAD DENIS ANDRIYUDIN', 'Tangerang', '2008-03-01', '313', '10 TSM B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (274, '2324100312', 'AHMAD FAUZAN', 'Brebes', '2007-11-06', '313', '10 TSM B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (275, '2324100344', 'RANGGA', 'TANGERANG', '2008-02-15', '313', '10 TSM B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (276, '2324100333', 'MUHAMAD MUNAWIR', 'TANGERANG', '2007-07-11', '313', '10 TSM B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (277, '2324100353', 'SUHENDA', 'TANGERANG', '2007-05-03', '313', '10 TSM B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (278, '2324100319', 'GHERY SATYA AFRIANSYAH', 'MAGETAN', '2008-03-19', '313', '10 TSM B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (279, '2324100318', 'FAJAR ALFIANSYAH', 'TANGERANG', '2008-07-07', '313', '10 TSM B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (280, '2324100356', 'WILDHAN MAULANA DZIKRI', 'JAKARTA', '2008-02-02', '313', '10 TSM B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (281, '2324100317', 'EVAN RIZQI PRAMUDIA SETIAWAN', 'TANGERANG', '2007-12-15', '313', '10 TSM B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (282, '2324100348', 'RIFFA RAYAN QURAIS', 'TANGERANG', '2008-07-01', '313', '10 TSM B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (283, '2324100328', 'MUHAMAD AL-PAJRI', 'Serang', '2008-05-16', '313', '10 TSM B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (284, '2324100331', 'MUHAMAD DICKY FIRMANSYAH', 'TANGERANG', '2008-03-07', '313', '10 TSM B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (285, '2324100342', 'NAZAR NURKHOLIK', 'TANGERANG', '2007-10-09', '313', '10 TSM B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (286, '2324100326', 'MUHAMAD ADITIA PERMANA', 'TANGERANG', '2008-07-17', '313', '10 TSM B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (287, '2324100354', 'SULTAN RABBILHAQ', 'JAKARTA', '2007-11-11', '313', '10 TSM B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (288, '2324100314', 'ARYA FADILAH', 'TANGERANG', '2007-07-10', '313', '10 TSM B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (289, '2324100324', 'MIFTAH FAUZI', 'BEKASI', '2008-07-11', '313', '10 TSM B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (290, '2324100335', 'MUHAMAD RAMADANI', 'TANGERANG', '2007-10-11', '313', '10 TSM B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (291, '2324100310', 'ABDUL MALIK AWALUDIN', 'TANGERANG', '2008-09-15', '313', '10 TSM B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (292, '2324100311', 'ADJIE FEBRIANSYAH', 'Tangerang', '2007-02-14', '313', '10 TSM B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (293, '2324100246', 'RULLY DWI ADESTIAN', 'TANGERANG', '2007-12-13', '313', '10 TSM B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (294, '2324100350', 'RIZKI MAULANA', 'TANGERANG', '2008-06-30', '313', '10 TSM B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (295, '2324100149', 'ABDUL FAHRI', 'Tangerang', '2008-06-30', '314', '10 DKV A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (296, '2324100390', 'SITI NURFADILAH', 'Tangerang', '2007-03-24', '314', '10 DKV A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (297, '2324100388', 'SHELA OCTAPIA', 'Tangerang', '2008-10-28', '314', '10 DKV A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (298, '2324100361', 'EGI MAULANA', 'Tangerang', '2007-05-09', '314', '10 DKV A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (299, '2324100122', 'CECEP MUHYIDIN', 'TANGERANG', '2007-10-05', '314', '10 DKV A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (300, '2324100383', 'OLIVIA KLIORISIA', 'Palembang', '2008-10-29', '314', '10 DKV A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (301, '2324100381', 'NENG ZAHRA FAUZIYANTI', 'TANGERANG', '2008-08-03', '314', '10 DKV A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (302, '2324100387', 'SAFITRI HANDAYANI', 'TANGERANG', '2007-09-15', '314', '10 DKV A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (303, '2324100389', 'SITI MAESAROH', 'SUKABUMI ', '2007-10-17', '314', '10 DKV A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (304, '2324100379', 'MUHAMMAD SYAMSUL MA`ARIP', 'TANGERANG', '2008-01-19', '314', '10 DKV A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (305, '2324100358', 'AZZIRA TAHTA ASMARA', 'Tangerang', '2008-12-30', '314', '10 DKV A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (306, '2324100386', 'REZA MAHENDRA', 'INDRAMAYU', '2008-07-07', '314', '10 DKV A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (307, '2324100091', 'SITI FALISA MAULIDA', 'TANGERANG', '2009-11-24', '314', '10 DKV A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (308, '2324100393', 'YOSSI FADIANESCHITTA', 'JAKARTA', '2009-04-29', '314', '10 DKV A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (309, '2324100360', 'DILLAH PRAMADHANI', 'TANGERANG', '2007-10-11', '314', '10 DKV A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (310, '2324100051', 'LIA SEPTIANI', 'TANGERANG', '2008-09-19', '314', '10 DKV A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (311, '2324100369', 'IQBAL RAMADHAN', 'Tangerang', '2008-09-04', '314', '10 DKV A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (312, '2324100373', 'MIFTAHUL JANNAH', 'SOLOK', '2007-08-15', '314', '10 DKV A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (313, '2324100044', 'KANIATUSSIPA', 'TANGERANG', '2006-02-04', '314', '10 DKV A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (314, '2324100068', 'NIKEN AYU LESTARI', 'TANGERANG', '2008-06-13', '314', '10 DKV A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (315, '2324100372', 'MARTIN ALEXANDER SELAN', 'TANGERANG', '2007-03-16', '314', '10 DKV A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (316, '2324100376', 'MUHAMMAD FURQON', 'TANGERANG', '2008-09-03', '314', '10 DKV A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (317, '2324100362', 'ERIC ATMA WIJAYA', 'AIR KUBANG', '2008-07-17', '314', '10 DKV A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (318, '2324100363', 'FADILA SUSANTY', 'TANGERANG', '2008-04-14', '314', '10 DKV A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (319, '2324100368', 'IBNU AL-MUHIBBU TOHARI', 'TEGAL', '2008-05-12', '314', '10 DKV A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (320, '2324100142', 'MUHAMMAD RAUL SANJAYA', 'BEKASI', '2008-03-20', '314', '10 DKV A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (321, '2324100394', 'ZIDAN HAETAMI', 'TANGERANG', '2009-02-15', '314', '10 DKV A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (322, '2324100371', 'M. RIZKY AL-QURSYAIRI', 'TANGERANG', '2009-02-01', '314', '10 DKV A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (323, '2324100166', 'AUFAA ALFAREZI FEBRIANTO', 'TANGERANG', '2008-02-11', '314', '10 DKV A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (324, '2324100365', 'GEBRIANA FRICILIA', 'JAKARTA', '2007-10-09', '314', '10 DKV A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (325, '2324100392', 'WIDIA SARI', 'TANGERANG', '2008-06-10', '314', '10 DKV A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (326, '2324100357', 'ALISYA PUTRI PRADANA', 'TANGERANG', '2007-12-15', '314', '10 DKV A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (327, '2324100385', 'RAHMI DIAN WARI', 'TANGERANG', '2009-01-13', '314', '10 DKV A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (328, '2324100364', 'FARINA NUGRAHINI PRIHANTARI', 'TANGERANG', '2008-03-16', '314', '10 DKV A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (329, '2324100065', 'NARRANY JUNIELLE', 'JAKARTA', '2008-06-16', '314', '10 DKV A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (330, '2324100118', 'ALFIYANA WAHYUDIN', 'TANGERANG', '2008-01-18', '314', '10 DKV A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (331, '2324100323', 'M. FAHREL PRATAMA', 'Way Kanan ', '2008-02-03', '314', '10 DKV A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (332, '2324100366', 'GLENDY ANUGRAH MELKISEDIK KAMALO', 'Tangerang', '2009-01-11', '314', '10 DKV A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (333, '2324100367', 'HAIKAL AZ HARIL LUBIS', 'jakarta', '2007-03-09', '314', '10 DKV A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (334, '2324100382', 'NINA NURDIANA', 'Jakarta', '2006-07-14', '314', '10 DKV A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (335, '2324100375', 'MUHAMAD RIDWAN', 'JAKARTA', '2009-10-23', '314', '10 DKV A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (336, '2324100370', 'LUDIA INDRIANI', 'TANGERANG', '2008-08-12', '314', '10 DKV A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (337, '2324100062', 'NADYA SAFHIRA', 'JAKARTA', '2008-02-24', '314', '10 DKV A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (338, '2324100075', 'PUTRI CAHAYA SPIRA', 'Tangerang', '2008-09-03', '314', '10 DKV A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (339, '2324100405', 'DIONNIEL CHANG', 'Magetan', '2008-05-20', '314', '10 DKV A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (340, '2324100380', 'NABILA NADA PAJRIAH', 'TANGERANG', '2008-12-28', '315', '10 MPLB C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (341, '2324100011', 'AMELIA ', 'TANGERANG', '2008-05-23', '315', '10 MPLB C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (342, '2324100074', 'PUTRI ANJANI', 'TANGERANG', '2008-04-01', '315', '10 MPLB C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (343, '2324100104', 'VERAIZKA CAHYA FAUZIAH', 'TANGERANG', '2008-06-21', '315', '10 MPLB C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (344, '2324100079', 'RESYA AULIA', 'TANGERANG', '2007-08-05', '315', '10 MPLB C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (345, '2324100395', 'DIANA SYIFA', 'Cianjur', '2007-09-10', '315', '10 MPLB C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (346, '2324100033', 'FEBRI SALSABILA', 'BANDUNG BARAT', '2008-02-05', '315', '10 MPLB C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (347, '222310001', 'ABDUL AZIS HAETAMI', 'Tangerang', '2006-09-09', '316', '11 DKV A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (348, '222310492', 'ADE YUDA PRAYOGA', 'SERANG', '2005-07-13', '316', '11 DKV A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (349, '222310034', 'AGUM AHMAD THAHER', 'Tangerang', '2006-11-18', '316', '11 DKV A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (350, '222310004', 'ANDIRA BARA HERWINDO', 'brebes', '2007-06-30', '316', '11 DKV A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (351, '222310021', 'ARTIKA PUTRI', 'TANGERANG', '2006-11-07', '316', '11 DKV A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (352, '222310032', 'AYU AULIA PUTRI', 'TANGERANG', '2007-08-28', '316', '11 DKV A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (353, '222310022', 'BAYU KRISNA PATI', 'Tangerang', '2007-06-26', '316', '11 DKV A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (354, '222310003', 'BENRY GABRIEL BUTAR-BUTAR', 'TANGERANG', '2007-02-01', '316', '11 DKV A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (355, '222310240', 'CHEVA AL BRYANTORO', 'Tangerang', '2007-02-25', '316', '11 DKV A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (356, '222310023', 'DAFA FADILAH PAJAR', 'Tangerang', '2005-12-02', '316', '11 DKV A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (357, '222310018', 'DIKY FIRMANSAH', 'Tangerang', '2006-12-19', '316', '11 DKV A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (358, '222310010', 'DIMAS FADHLURRAHMAN', 'Tangerang', '2007-08-15', '316', '11 DKV A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (359, '222310335', 'FATHAN MUHAMMAD ALGHIFARI', 'kedondong', '2008-07-03', '316', '11 DKV A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (360, '222310008', 'JIHAN ARISKA', 'Tangerang', '2007-01-10', '316', '11 DKV A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (361, '222310027', 'JONATHAN RIZKY ', 'JAKARTA', '2005-06-24', '316', '11 DKV A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (362, '202310426', 'JULMI ANWAR', 'Garut', '2006-07-20', '316', '11 DKV A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (363, '222310020', 'MAGHFIRA RAHMADANI', 'Tangerang', '2007-09-08', '316', '11 DKV A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (364, '222310025', 'MOHAMAD RAIHAN ABDILAH', 'Tangerang', '2007-07-11', '316', '11 DKV A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (365, '222310030', 'MUHAMAD BINTANG ALFATH', 'JAKARTA', '2007-12-04', '316', '11 DKV A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (366, '222310279', 'MUHAMAD GILANG SAPUTRA', 'Tangerang', '2007-01-06', '316', '11 DKV A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (367, '2223100701', 'MUHAMMAD DAFFA AL FAREZA', 'Pariaman', '2007-03-02', '316', '11 DKV A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (368, '222310005', 'MUTIARA PUTRI UTAMI', 'BEKASI', '2007-06-11', '316', '11 DKV A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (369, '222310007', 'NOVIYANI KHOIRUNNISA', 'TANGERANG', '2006-11-12', '316', '11 DKV A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (370, '222310105', 'RABI`AH AL RAMADHANI', 'TANGERANG', '2007-09-19', '316', '11 DKV A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (371, '222310272', 'RAFA OLPANDI', 'Tangerang', '2006-09-11', '316', '11 DKV A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (372, '222310013', 'RAMADHAN ALFIANSYAH', 'Tangerang', '2006-10-19', '316', '11 DKV A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (373, '222310028', 'RENISA ISWANDINI', 'TANGERANG', '2007-04-04', '316', '11 DKV A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (374, '222310002', 'RIFKY KOHANDAPI', 'TANGERANG', '2007-04-24', '316', '11 DKV A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (375, '222310033', 'RIRIN JELITA', 'TANGERANG', '2007-12-17', '316', '11 DKV A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (376, '222310006', 'RIYA DESIYANI PUTRI KURNIATI', 'TANGERANG', '2006-12-31', '316', '11 DKV A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (377, '222310019', 'THEOFILLUS DANIEL SUGIADI', 'Jakarta', '2007-02-23', '316', '11 DKV A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (378, '222310026', 'ZIL ALLYSSA RADMA KHAIRI', 'Tangerang', '2006-01-04', '316', '11 DKV A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (379, '222310384', 'ABDUL ROHMAN', 'TANGERANG', '2006-12-18', '317', '11 TKR A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (380, '222310354', 'ALDAN', 'Tangerang', '2006-08-04', '317', '11 TKR A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (381, '222310366', 'ALVIAN', 'TANGERANG', '2007-07-23', '317', '11 TKR A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (382, '222310377', 'CESAR NELSEN', 'Tangerang', '2007-11-22', '317', '11 TKR A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (383, '222310244', 'DENIS SETIADI', 'Tangerang', '2008-05-10', '317', '11 TKR A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (384, '222310358', 'ENDANG ARYA RIDO', 'Tangerang', '2007-12-16', '317', '11 TKR A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (385, '222310352', 'FIZAAR ALVYAN', 'Tangerang', '2007-08-10', '317', '11 TKR A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (386, '222310243', 'IHYA ULUMUDIN', 'Tegal', '2007-08-02', '317', '11 TKR A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (387, '222310349', 'JAJULI', 'Tangerang', '2006-07-17', '317', '11 TKR A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (388, '222310426', 'KEVIN ADRIANSYAH', 'Tangerang', '2007-03-13', '317', '11 TKR A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (389, '222310427', 'LINGGA PRASETYA', 'TANGERANG', '2007-11-21', '317', '11 TKR A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (390, '222310374', 'M. AROBI SAPUTRA R', 'TANGERANG', '2008-09-20', '317', '11 TKR A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (391, '222310359', 'M. PEBRIAN', 'Tangerang', '2008-02-27', '317', '11 TKR A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (392, '222310381', 'MUHAMAD ARDI', 'TANGERANG', '2007-02-27', '317', '11 TKR A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (393, '222310357', 'MUHAMAD EGI SAPUTRA', 'Tangerang', '2008-05-23', '317', '11 TKR A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (394, '222310024', 'MUHAMAD IRVAN ALFARIZI', 'TANGERANG', '2007-11-19', '317', '11 TKR A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (395, '222310363', 'MUHAMAD RAFI KAMANI AWALUDIN', 'Tangerang', '2007-09-23', '317', '11 TKR A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (396, '222310355', 'MUHAMAD SUPIYANA', 'Tangerang', '2005-01-10', '317', '11 TKR A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (397, '222310376', 'MUHAMMAD KHOIRUL ANWAR', 'TANGERANG', '2007-09-10', '317', '11 TKR A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (398, '222310364', 'NANDA SAPUTRA', 'Tangerang', '2007-09-16', '317', '11 TKR A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (399, '222310362', 'PERI ANDRIANSYAH', 'Tangerang', '2007-01-13', '317', '11 TKR A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (400, '222310383', 'RANDIKA PRATAMA', 'TANGERANG', '2007-06-04', '317', '11 TKR A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (401, '222310356', 'SIGIT BUDIARTO', 'Tangerang', '2005-12-10', '317', '11 TKR A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (402, '222310035', ' ROBI', 'TANGERANG', '2006-07-24', '317', '11 TKR A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (403, '222310190', 'AL ANSORI', 'Tangerang', '2007-04-11', '317', '11 TKR A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (404, '222310218', 'ANDI RAHA DIAN', 'Tangerang', '2006-10-15', '317', '11 TKR A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (405, '222310396', 'DAFA RISKI PRATAMA', 'Tangerang', '2008-12-03', '317', '11 TKR A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (406, '222310395', 'DONI EVAN MAHENDRA', 'Tangerang', '2006-12-30', '317', '11 TKR A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (407, '222310196', 'EGI AGUSTIAN', 'Tangerang', '2006-08-11', '317', '11 TKR A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (408, '222310401', 'HAYDEN BINTANG WICAKSANA', 'Tangerang', '2007-02-25', '317', '11 TKR A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (409, '222310418', 'MOHAMAD UBAEDILAH', 'Tangerang', '2008-04-04', '317', '11 TKR A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (410, '222310403', 'MOHAMMAD RHASYA AL FAIZ', 'JAKARTA', '2008-10-25', '317', '11 TKR A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (411, '222310385', 'MUHAMAD AKBAR', 'TANGERANG', '2007-03-16', '317', '11 TKR A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (412, '222310390', 'MUHAMAD ARIS SAPUTRA', 'Tangerang', '2005-01-05', '317', '11 TKR A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (413, '222310386', 'OBAY MAULANA', 'TANGERANG', '2008-03-20', '317', '11 TKR A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (414, '222310405', 'RANGGA', 'TANGERANG', '2006-05-02', '317', '11 TKR A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (415, '22231093', 'REFI', 'TANGERANG', '2007-11-07', '317', '11 TKR A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (416, '222310404', 'SAHRUL GUNAWAN', 'Tangerang', '2007-03-06', '317', '11 TKR A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (417, '222310178', 'AHMAD SOBARI', 'TANGERANG', '2006-11-12', '319', '11 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (418, '222310341', 'ERLIN', 'Tangerang', '2007-11-26', '319', '11 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (419, '222310249', 'IMAM MAULANA', 'Tangerang', '2006-05-17', '319', '11 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (420, '222310270', 'JAENUDIN', 'TANGERANG', '2006-03-21', '319', '11 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (421, '222310245', 'MOHAMAD DENDI', 'Tangerang', '2006-12-07', '319', '11 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (422, '222310277', 'MUTIARA NABILA', 'Tangerang', '2007-03-19', '319', '11 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (423, '222310260', 'NAEYELA AGUSTIN', 'TANGERANG', '2007-08-30', '319', '11 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (424, '222310407', 'ROBI IRAWAN', 'Tangerang', '2007-07-18', '319', '11 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (425, '222310261', 'SABRINA ARIANTO', 'KUNINGAN', '2007-04-30', '319', '11 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (426, '222310248', 'VIKA INDRIANY', 'Tangerang', '2008-01-21', '319', '11 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (427, '222310291', 'ANANDA ARYA BAGASWARA', 'Purworejo', '2007-01-16', '319', '11 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (428, '222310313', 'DIANDRA AGISTA KINANDASA', 'TANGERANG', '2007-08-04', '319', '11 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (429, '222310285', 'DINDA AULYA SAPUTRI', 'TANGERANG', '2007-07-28', '319', '11 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (430, '222310304', 'KRISTIANI BEKU', 'JAKARTA', '2006-11-13', '319', '11 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (431, '222310052', 'MUHAMMAD RIZKY ADITIYA', 'Tangerang', '2007-03-29', '319', '11 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (432, '222310280', 'MUHAMAD HASAN NUSI', 'Tangerang', '2007-02-15', '319', '11 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (433, '222310309', 'MUHAMAD SIHABUDIN ANWAR', 'Tangerang', '2007-06-15', '319', '11 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (434, '222310297', 'RESNU FIKRI KURNIA', 'Tangerang', '2006-12-16', '319', '11 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (435, '222310305', 'RESTU UTAMI', 'Tangerang', '2008-06-16', '319', '11 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (436, '222310331', 'SETO ASMORO JATI', 'Tangerang', '2007-01-03', '319', '11 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (437, '222310064', 'SITI INTAN NURAINI', 'Tangerang', '2007-03-28', '319', '11 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (438, '222310300', 'SULISTIA DESTIYANTI', 'Tangerang', '2007-12-14', '319', '11 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (439, '222310293', 'WARIST SATRIA FEBRIANO', 'DEPOK', '2007-02-01', '319', '11 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (440, '222310303', 'WILLY WILDAN FAUZI', 'Serang', '2007-09-28', '319', '11 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (441, '222310339', 'ADITYA', 'TANGERANG', '2006-12-30', '319', '11 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (442, '222310332', 'ARIF ARYANDARA SAPUTRA', 'Brebes', '2007-07-22', '319', '11 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (443, '222310345', 'DEJAN KURNIAWAN ', 'Tangerang', '2006-12-02', '319', '11 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (444, '222310338', 'ELFAN ARYO', 'PEMANGKAT KAB. SAMBAS', '2007-09-26', '319', '11 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (445, '2223100435', 'ERI SUGIANTI', 'Tangerang', '2005-03-28', '319', '11 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (446, '222310323', 'HIDAYAT', 'Tangerang', '2006-06-26', '319', '11 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (447, '222310324', 'ILHAM', 'Tangerang', '2007-01-06', '319', '11 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (448, '222310343', 'MUHAMMAD RASYA', 'JAKARTA', '2006-11-18', '319', '11 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (449, '222310327', 'SEPTIANAH', 'TANGERANG', '2006-09-11', '319', '11 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (450, '222310255', 'ADAM HANDIKA', 'Tangerang', '2006-12-26', '320', '11 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (451, '222310333', 'AUFA NAFIISAH', 'Tangerang', '2006-06-21', '320', '11 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (452, '222310165', 'EGA SAPUTRA ANWAR', 'Tangerang', '2007-01-14', '320', '11 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (453, '222310250', 'LEXSI YANTENDRA', 'Bandar Lampung', '2007-02-14', '320', '11 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (454, '222310268', 'MUHAMAD FARIZ', 'TANGERANG', '2007-02-16', '320', '11 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (455, '222310271', 'NOVHAL ARDITHA', 'TANGERANG', '2007-04-04', '320', '11 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (456, '222310227', 'RIAN ARYANSYAH', 'Bogor', '2006-05-11', '320', '11 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (457, '222310262', 'SALSA ALMAIDA', 'KUNINGAN', '2006-11-21', '320', '11 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (458, '222310256', 'SULUK BIMANTORO', 'Tangerang', '2007-10-21', '320', '11 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (459, '222310307', 'ANISA AGUSTINI', 'Tangerang', '2007-08-03', '320', '11 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (460, '222310017', 'DAFFA RIZKY ALGHOZALI', 'Tangerang', '2007-05-02', '320', '11 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (461, '222310436', 'FAREL APRIANSYAH', 'Tangerang', '2007-04-23', '320', '11 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (462, '222310050', 'FIRZHY MAYZIRINA ZAHRA', 'Tangerang', '2007-05-21', '320', '11 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (463, '222310296', 'MOCHAMAD KHAIFAL', 'Cimahi', '2007-05-17', '320', '11 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (464, '222310085', 'NOPIAN HIDAYATULLAH', 'Kalah Kaduh', '2006-11-14', '320', '11 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (465, '222310301', 'RIZKY HENDRAWAN', 'Tangerang', '2007-07-10', '320', '11 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (466, '222310306', 'SELVYNA JOICE NURAINI', 'Jombang', '2007-01-15', '320', '11 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (467, '222310283', 'SOPIATUL IKLIMAH', 'Tangerang', '2007-05-05', '320', '11 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (468, '222310287', 'SULTHAN RAFI ANANTA', 'TANGERANG', '2007-04-08', '320', '11 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (469, '222310319', 'ALDI ', 'TANGERANG', '2006-05-17', '320', '11 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (470, '222310147', 'ANGGI PRATIWI', 'Serang', '2007-06-13', '320', '11 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (471, '222310009', 'BUTSYAINAH IZMA AZIZAH', 'TANGERANG', '2007-03-08', '320', '11 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (472, '222310347', 'ENDANG TIS`A', 'Tangerang', '2006-10-02', '320', '11 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (473, '222310326', 'ILMAN SATRIO PUTRA', 'TANGERANG', '2006-09-23', '320', '11 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (474, '222310330', 'MIRA', 'Tangerang', '2005-01-26', '320', '11 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (475, '222310342', 'MUHAMAD DIMAS', 'Tangerang', '2006-10-27', '320', '11 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (476, '222310316', 'NAUFAL ALTHOF ADI SOBIRIN', 'KEDIRI', '2006-11-02', '320', '11 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (477, '222310320', 'RIDHO BAGUS SUHANDANA', 'Tangerang', '2006-05-13', '320', '11 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (478, '222310215', 'YOGI ANDREYANTO', 'Tangerang', '2006-04-22', '320', '11 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (479, '222310399', 'RIJAL JULIANSYAH', 'Tangerang', '2006-07-16', '320', '11 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (480, '222310290', 'ANDIKA KAUFFASHA', 'Tangerang', '2008-03-20', '320', '11 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (481, '2324110392', 'RENDI JULIANTO KIKHAU', 'Cikande Permai', '2007-10-09', '320', '11 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (482, '222310263', 'AGUNG GUNAWAN', 'Tangerang', '2008-07-03', '321', '11 TKJ C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (483, '222310311', 'ALDI SURYANA', 'Tangerang', '2008-01-07', '321', '11 TKJ C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (484, '222310264', 'EVAN FADILAH PRATAMA', 'TANGERANG', '2007-12-13', '321', '11 TKJ C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (485, '222310273', 'IKMAL AKASAH', 'TANGERANG', '2005-06-04', '321', '11 TKJ C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (486, '222310258', 'LUTFIANA', 'Tangerang', '2007-05-05', '321', '11 TKJ C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (487, '222310203', 'MARIO SETIAWAN ', 'Tangerang', '2007-06-30', '321', '11 TKJ C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (488, '222310269', 'MUHAMAD RAFLI', 'TANGERANG', '2007-02-23', '321', '11 TKJ C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (489, '222310400', 'RAFI ARYO MAULANA', 'Tangerang', '2007-04-23', '321', '11 TKJ C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (490, '222310247', 'RIHANA', 'Tangerang', '2007-08-15', '321', '11 TKJ C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (491, '222310149', 'SITI MARFAH', 'SERANG', '2006-11-19', '321', '11 TKJ C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (492, '222310274', 'SITI SUSANTI', 'TANGERANG', '2006-06-06', '321', '11 TKJ C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (493, '222310253', 'YUSUF PUTRA', 'Tangerang', '2006-02-03', '321', '11 TKJ C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (494, '222310308', 'ARIQ FIRST SEPTIAN PUTRA', 'Bekasi', '2007-09-19', '321', '11 TKJ C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (495, '222310284', 'ERLANGGA', 'TANGERANG', '2007-09-06', '321', '11 TKJ C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (496, '222310298', 'INDRA WACHYU ARDYANSYAH', 'cilacap', '2007-12-27', '321', '11 TKJ C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (497, '222310289', 'MANDA NOVIYANI', 'KUNINGAN', '2006-11-22', '321', '11 TKJ C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (498, '222310302', 'PUTRI DEFI PUSPITASARI', 'JAKARTA', '2006-09-13', '321', '11 TKJ C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (499, '222310295', 'RAHMA FITRIANI', 'Tangerang', '2006-12-12', '321', '11 TKJ C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (500, '222310292', 'ROYSA ARJUNA ROSANDI', 'TANGERANG', '2007-01-26', '321', '11 TKJ C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (501, '222310700', 'SELA NURPADILAH', 'Tangerang', '2007-02-18', '321', '11 TKJ C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (502, '222310299', 'SITI SUTIHAT', 'Tangerang', '2008-02-23', '321', '11 TKJ C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (503, '222310155', 'ANDRIYANSYAH', 'TANGERANG', '2008-06-14', '321', '11 TKJ C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (504, '222310156', 'ANGGIYANSYAH', 'TANGERANG', '2008-06-14', '321', '11 TKJ C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (505, '222310346', 'ASEP SAEPUDIN', 'Tangerang', '2007-07-05', '321', '11 TKJ C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (506, '222310328', 'GRESIA PASHA APRESIA', 'TANGERANG', '2007-04-06', '321', '11 TKJ C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (507, '2223100700', 'KAYLA NAZULA KHAERANI', 'Tangerang', '2007-05-01', '321', '11 TKJ C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (508, '222310317', 'MOCHAMAD FIHRIS ALDZIKRI ', 'TANGERANG', '2006-06-02', '321', '11 TKJ C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (509, '222310421', 'MUHAMAD LUTFI MAPUJI', 'Tangerang', '2008-09-02', '321', '11 TKJ C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (510, '222310314', 'MUHAMAD RAKA ALFARIZKY', 'Tangerang', '2007-06-13', '321', '11 TKJ C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (511, '222310086', 'NENG NURHAYATI', 'Tangerang', '2006-03-05', '321', '11 TKJ C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (512, '222310315', 'RADEN FATIH ALONSO', 'Tangerang', '2007-04-10', '321', '11 TKJ C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (513, '222310265', 'ISDA YUL MIZGHI', 'Cianjur, ', '2007-10-25', '321', '11 TKJ C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (514, '222310177', 'AGIL PRAWIRA', 'JAKARTA', '2006-10-24', '322', '11 TSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (515, '222310184', 'ANGGA YUDI SAPUTRA', 'TANGERANG', '2007-03-25', '322', '11 TSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (516, '222310193', 'ARIF KURNIAWAN MUHAMAD SUSANTO', 'pemalang ', '2007-04-02', '322', '11 TSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (517, '222310185', 'BAGAS PADILLAH', 'TANGERANG', '2006-08-31', '322', '11 TSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (518, '222310187', 'DESTA DWI FAKHRIANSYAH', 'Serang', '2006-12-16', '322', '11 TSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (519, '222310181', 'FADILA NOPRIANSYAH', 'TANGERANG', '2006-11-10', '322', '11 TSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (520, '222310387', 'FIKRI HIDAYAT TULLOH', 'TANGERANG', '2007-03-21', '322', '11 TSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (521, '222310450', 'INDRA KURNIAWAN', 'Tangerang', '2007-12-05', '322', '11 TSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (522, '222310334', 'IRFAN ARDIANSYAH', 'Tangerang', '2007-09-04', '322', '11 TSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (523, '222310157', 'MICHAEL AGUSTIN SEDA', 'Tangerang', '2007-08-02', '322', '11 TSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (524, '222310162', 'MUHAMAD ABBY ADITIYA', 'Tangerang', '2007-05-22', '322', '11 TSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (525, '222310388', 'MUHAMAD RIZKI PIRMANSAH', 'Tangerang', '2008-07-12', '322', '11 TSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (526, '222310410', 'MUHAMAD RIZKY', 'Tangerang', '2007-06-16', '322', '11 TSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (527, '222310411', 'MUHAMMAD JALALUDIN ASSUYUTI', 'TANGERANG', '2008-01-18', '322', '11 TSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (528, '222310174', 'MUHAMMAD RIZKI', 'Jakarta', '2006-11-18', '322', '11 TSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (529, '222310360', 'PEBRIYANSYAH', 'Tangerang', '2007-02-14', '322', '11 TSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (530, '222310186', 'PUTRA TRIYANA SANTIAR', 'Serang', '2006-11-24', '322', '11 TSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (531, '222310195', 'RECKSY MEILANDO', 'Kuningan', '2007-02-12', '322', '11 TSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (532, '222310380', 'REHAN PUTRA MAULANA', 'TANGERANG', '2008-01-10', '322', '11 TSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (533, '222310192', 'SYAHRUL MAULANA', 'JAKARTA', '2006-08-11', '322', '11 TSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (534, '222310361', 'WIRA ANDRIANSYAH', 'Tangerang', '2007-12-09', '322', '11 TSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (535, '222310430', 'ALDI IBNU SULAEMAN', 'Tangerang', '2006-03-26', '322', '11 TSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (536, '222310239', 'ALFIN PEBRIAN', 'Tangerang', '2007-02-23', '322', '11 TSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (537, '222310241', 'DENIS RIZKULLAH', 'Jakarta', '2008-04-05', '322', '11 TSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (538, '222310286', 'DEPI ARIANSYAH', 'TANGERANG', '2007-06-29', '322', '11 TSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (539, '222310378', 'HAIKAL FIKRI', 'Tangerang', '2007-12-27', '322', '11 TSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (540, '222310434', 'HIKMAL AKBAR ROSADI', 'Jakarta', '2006-09-16', '322', '11 TSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (541, '222310220', 'M.YUSUP', 'Tangerang', '2005-10-03', '322', '11 TSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (542, '222310433', 'MADYANI', 'Tangerang', '2006-10-26', '322', '11 TSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (543, '222310211', 'MUHAMAD NOVAL', 'Tangerang', '2006-11-06', '322', '11 TSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (544, '222310242', 'MUHAMAD RAMDANI', 'Tangerang', '2006-10-07', '322', '11 TSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (545, '222310259', 'MUHAMAD SUHERMAN', 'TANGERANG', '2006-03-11', '322', '11 TSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (546, '222310207', 'MUHAMAD SYAHRUL EPENDI', 'TANGERANG', '2007-09-25', '322', '11 TSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (547, '222310201', 'MUHAMMAD ARIL', 'Tangerang', '2007-04-21', '322', '11 TSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (548, '222310423', 'MUHAMMAD FAUZI SOFYANI', 'Tangerang', '2007-04-23', '322', '11 TSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (549, '222310225', 'RASYA ARJINO', 'Tangerang', '2007-03-27', '322', '11 TSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (550, '222310353', 'RENDI TRI AGUSTINO', 'Tangerang', '2007-08-29', '322', '11 TSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (551, '222310216', 'SYBBU FANDU FADLAN', 'Tangerang', '2007-01-16', '322', '11 TSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (552, '222310232', 'TIRMIJI', 'Tangerang', '2007-03-08', '322', '11 TSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (553, '222310234', 'YUDANTIO', 'Tangerang', '2007-08-03', '322', '11 TSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (554, '222310071', '  ANNINDA', 'TANGERANG', '2007-06-19', '323', '11 MPLB A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (555, '222310058', 'ANNISA RAHMAWATI', 'Jakarta', '2007-04-01', '323', '11 MPLB A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (556, '222310066', 'AYU MARTATINOVA', 'TANGERANG', '2007-11-07', '323', '11 MPLB A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (557, '222310060', 'FEBILIA FITRI', 'TANGERANG', '2007-10-10', '323', '11 MPLB A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (558, '222310044', 'GHINA FAJDILLAH', 'Tangerang', '2007-03-23', '323', '11 MPLB A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (559, '222310072', 'ILKA', 'Tangerang', '2007-07-14', '323', '11 MPLB A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (560, '222310048', 'KESYA DISTALIA SARPIANA', 'TANGERANG', '2007-12-25', '323', '11 MPLB A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (561, '222310039', 'NASROFAH', 'Tangerang', '2007-09-16', '323', '11 MPLB A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (562, '222310281', 'RENDI IRAWAN', 'DEPOK', '2007-05-01', '323', '11 MPLB A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (563, '222310188', 'SEPTIAN DWI RAMADHAN', 'TANGERANG', '2007-09-18', '323', '11 MPLB A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (564, '222310045', 'SISKA', 'Tangerang', '2006-01-21', '323', '11 MPLB A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (565, '222310080', 'BUNGA KIRANIA', 'KARAWANG', '2007-12-24', '323', '11 MPLB A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (566, '222310101', 'DEA RAUDHOTUL JANNAH', 'Tangerang', '2007-02-02', '323', '11 MPLB A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (567, '222310102', 'ERNAWATI', 'Tangerang', '2007-12-11', '323', '11 MPLB A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (568, '222310100', 'JESSICA ADRYANA TATIBUN', 'Haukoto ', '2007-09-30', '323', '11 MPLB A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (569, '222310088', 'KARMILA', 'Tangerang', '2007-11-18', '323', '11 MPLB A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (570, '222310078', 'MUTIARA AMELYA', 'Tangerang', '2007-06-24', '323', '11 MPLB A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (571, '222310093', 'NADHILA NUR FADILAH', 'TANGERANG', '2007-04-02', '323', '11 MPLB A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (572, '222310079', 'NIA', 'TANGERANG', '2007-09-22', '323', '11 MPLB A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (573, '222310095', 'SAHARANI', 'TANGERANG', '2007-03-03', '323', '11 MPLB A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (574, '222310087', 'SITI ANISA', 'Serang', '2007-02-18', '323', '11 MPLB A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (575, '222310107', 'SITI NURSHEILA', 'Tangerang', '2007-09-10', '323', '11 MPLB A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (576, '222310116', 'WANDA KURNIA SARI', 'Tangerang', '2007-08-15', '323', '11 MPLB A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (577, '222310056', 'YARA WIDIA', 'TANGERANG', '2006-03-23', '323', '11 MPLB A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (578, '222310130', 'AGIS APRILIA ', 'TANGERANG', '2007-04-22', '323', '11 MPLB A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (579, '222310132', 'ANGELITA NIKEN AULYA', 'Sukabumi', '2007-02-26', '323', '11 MPLB A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (580, '222310055', 'DEWI ANGGIA', 'TANGERANG', '2006-04-23', '323', '11 MPLB A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (581, '222310222', 'FAKIH NURHAKIM', 'Tangerang', '2007-05-03', '323', '11 MPLB A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (582, '222310120', 'INTAN NAYLA PUTRI', 'Tangerang', '2006-08-27', '323', '11 MPLB A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (583, '222310131', 'NAHDIAH SALIMAH', 'Tangerang', '2006-11-21', '323', '11 MPLB A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (584, '222310150', 'NURUL FAIKOH', 'SERANG', '2007-08-11', '323', '11 MPLB A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (585, '222310121', 'PUTRI NAYLA SEHAN ', 'TANGERANG', '2007-03-29', '323', '11 MPLB A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (586, '222310392', 'ZIDAN ALFAREZA', 'Tangerang', '2008-03-10', '323', '11 MPLB A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (587, '222310145', 'IMELDA SAPITRI', 'Tangerang', '2007-06-08', '323', '11 MPLB A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (588, '222310063', 'AMELIANA SAKUNAB', 'Suanae', '2005-12-15', '324', '11 MPLB B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (589, '222310065', 'DESI ANJANI', 'TANGERANG', '2007-12-12', '324', '11 MPLB B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (590, '222310074', 'FEBRIYANA', 'Tangerang', '2008-02-01', '324', '11 MPLB B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (591, '222310053', 'HERLIN KOSASIH', 'Tangerang', '2002-06-09', '324', '11 MPLB B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (592, '222310046', 'INDRI ANDRIANI', 'Tangerang', '2007-06-24', '324', '11 MPLB B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (593, '222310057', 'LINDA RAHMAWATI', 'MAJALENGKA', '2007-02-11', '324', '11 MPLB B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (594, '222310043', 'NOVA PAUZIAH', 'Tangerang', '2007-02-07', '324', '11 MPLB B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (595, '222310075', 'SALMA DWI ASTUTI', 'Tangerang', '2006-06-12', '324', '11 MPLB B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (596, '222310067', 'SIFA KHARINA', 'TANGERANG', '2007-03-15', '324', '11 MPLB B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (597, '222310069', 'TIARA BELLA SAFITRI', 'Jakarta', '2007-07-16', '324', '11 MPLB B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (598, '222310113', 'ALIL', 'Tangerang', '2007-01-04', '324', '11 MPLB B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (599, '222310081', 'CHIKA JUNIAWATI', 'TANGERANG', '2006-06-18', '324', '11 MPLB B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (600, '222310106', 'DINDA RAHMAWATI', 'Tangerang', '2006-12-07', '324', '11 MPLB B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (601, '222310090', 'FANISYA DIAS HARTANTI', 'Tangerang', '2007-02-27', '324', '11 MPLB B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (602, '222310432', 'JULIA', 'Tangerang', '2007-07-27', '324', '11 MPLB B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (603, '222310094', 'KEYSA PUTRIANA', 'Tangerang', '2007-01-14', '324', '11 MPLB B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (604, '222310110', 'MUTIARA PUTRI', 'Tangerang', '2006-03-08', '324', '11 MPLB B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (605, '222310098', 'NENENG EVITA', 'Tangerang', '2007-07-26', '324', '11 MPLB B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (606, '222310096', 'REVI', 'Tangerang', '2006-10-25', '324', '11 MPLB B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (607, '222310092', 'SERLI SEHAN', 'Tangerang', '2007-03-12', '324', '11 MPLB B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (608, '222310329', 'SITI MAESAROH', 'Tangerang', '2007-01-23', '324', '11 MPLB B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (609, '222310312', 'SYIFA AIDILAH SYAH FITRI', 'JAKARTA', '2006-11-28', '324', '11 MPLB B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (610, '222310137', 'ARDIANSYAH CAHYO RAMADANI', 'Lubuk Linggau ', '2006-10-16', '324', '11 MPLB B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (611, '222310141', 'AYU WINDIYA SETIALANDRI', 'Tangerang', '2007-09-02', '324', '11 MPLB B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (612, '222310154', 'HOFIFA CHOSIYAH', 'INDRALAYA', '2007-04-06', '324', '11 MPLB B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (613, '222310127', 'INTAN SAFITRI', 'Tangerang', '2006-12-19', '324', '11 MPLB B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (614, '222310139', 'NINDI DWI AYU PUTRI', 'Tangerang', '2006-11-08', '324', '11 MPLB B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (615, '222310128', 'NURUL KOMALASARI', 'BANDAR LAMPUNG', '2007-02-27', '324', '11 MPLB B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (616, '222310140', 'PUTRI SEPTINA TRIANA', 'Tangerang', '2006-09-17', '324', '11 MPLB B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (617, '222310118', 'SELA MITA APRILLIA ', 'TANGERANG', '2007-04-19', '324', '11 MPLB B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (618, '222310152', 'SITI INDRIANINGSIH', 'Tangerang', '2006-07-02', '324', '11 MPLB B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (619, '2223100434', 'VIKA AULIA RAHMA', 'Serang', '2006-12-12', '324', '11 MPLB B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (620, '222310124', 'SILVI AMELIA SURYADI', 'Indranayu', '2007-05-24', '324', '11 MPLB B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (621, '222310122', 'SITI NURFADILAH ZAHRA', 'TANGERANG', '2007-01-15', '324', '11 MPLB B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (622, '222310129', 'SITI MAYA SHAROH', 'Tangerang', '2007-12-31', '324', '11 MPLB B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (623, '222310419', 'ANDINI RAMADANI', 'Tangerang', '2008-09-12', '325', '11 MPLB C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (624, '222310068', 'ANNA TASYA PAHRANI', 'TANGERANG', '2008-08-04', '325', '11 MPLB C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (625, '222310051', 'AYU DIAH RASYAH. H', 'Tangerang', '2006-11-08', '325', '11 MPLB C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (626, '222310049', 'HERLINA', 'TANGERANG', '2008-02-23', '325', '11 MPLB C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (627, '222310042', 'INTAN SABRINA', 'Tangerang', '2007-08-26', '325', '11 MPLB C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (628, '222310047', 'MUHESTI DEWI ALPIAH', 'TANGERANG', '2007-04-22', '325', '11 MPLB C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (629, '222310040', 'REFA APRILLIANINGSIH', 'Tangerang', '2007-04-11', '325', '11 MPLB C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (630, '222310070', 'SEKAR SARI', 'TANGERANG', '2007-12-30', '325', '11 MPLB C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (631, '222310266', 'SILPA APRILIANI', 'Cianjur, ', '2007-04-13', '325', '11 MPLB C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (632, '222310276', 'ZAHRA AMALIA', 'TANGERANG', '2007-06-27', '325', '11 MPLB C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (633, '222310089', 'ALYA RAFINA ', 'Bekasi', '2006-08-08', '325', '11 MPLB C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (634, '222310097', 'DIYAH NURUL INSANI', 'JAKARTA', '2006-12-28', '325', '11 MPLB C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (635, '222310099', 'CIKA ADE AFNELIS', 'Ciamis', '2007-01-01', '325', '11 MPLB C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (636, '222310083', 'INDAH KARLINA', 'TANGERANG', '2005-12-27', '325', '11 MPLB C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (637, '222310077', 'JULIANA PUTRIANI', 'Tangerang', '2007-07-10', '325', '11 MPLB C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (638, '222310111', 'MAYA WULANDARI', 'Cimahi', '2007-05-17', '325', '11 MPLB C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (639, '222310109', 'NABILA LUTFYANI', 'Tangerang', '2007-03-15', '325', '11 MPLB C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (640, '222310115', 'NI MADE INDRIANI ASTUTI', 'Tangerang', '2007-03-23', '325', '11 MPLB C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (641, '222310084', 'ROSITA', 'Tangerang', '2007-08-22', '325', '11 MPLB C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (642, '222310112', 'SINTA BILQISTI', 'Tangerang', '2006-12-24', '325', '11 MPLB C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (643, '222310103', 'SITI MUTMAINNAH', 'Tangerang', '2007-07-08', '325', '11 MPLB C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (644, '222310133', 'VIRANISA AULIA ABSTARI', 'Jakarta', '2007-02-12', '325', '11 MPLB C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (645, '222310117', 'ALYA FIRYAL SEPTIANI', 'Serang', '2006-09-03', '325', '11 MPLB C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (646, '222310138', 'DWI BAYU PRATAMA', 'Pandeglang', '2007-06-04', '325', '11 MPLB C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (647, '222310142', 'KEISHA LINGGIANA YASINTA', 'Tangerang', '2006-11-26', '325', '11 MPLB C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (648, '222310440', 'MUHAMAD RIZKY', 'Tangerang', '2005-10-13', '325', '11 MPLB C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (649, '222310146', 'NOVITA SEPTIA RAMADANI', 'Tangerang', '2006-09-25', '325', '11 MPLB C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (650, '222310126', 'PUTRI FEBRIYANTI', 'Tangerang', '2007-02-06', '325', '11 MPLB C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (651, '222310144', 'SELA RAHMAWATI', 'LEBAK', '2008-07-19', '325', '11 MPLB C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (652, '222310041', 'DINDA RIZKY AMALIYA', 'Tangerang', '2006-12-16', '325', '11 MPLB C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (653, '222310114', 'AINI QULBAINISA KAMILA ', 'Tangerang', '2007-09-06', '325', '11 MPLB C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (654, '222310135', 'DHEA AULIA RUDIAWAN', 'TANGERANG', '2006-12-10', '325', '11 MPLB C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (655, '222310123', 'ZAHRA AULIA WARDAH', 'JAKARTA', '2007-01-13', '325', '11 MPLB C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (656, '2324110393', 'AYU AULIA PUTRI', 'Tangerang', '2007-06-17', '325', '11 MPLB C', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (657, '2122100920', 'ALLIYA DWI RIANTI', 'TANGERANG', '2006-08-23', '326', '12 OTKP A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (658, '2122100782', 'ASTIA MONIKA', 'Tangerang', '2006-01-02', '326', '12 OTKP A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (659, '2122100805', 'DESTI LIA FEBRIANI', 'Tangerang', '2006-02-25', '326', '12 OTKP A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (660, '2122100790', 'DEVI MELATI SUCI', 'Tangerang', '2006-06-22', '326', '12 OTKP A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (661, '2122100986', 'DIANA AYU YULIANI SAFITRI', 'Sragen', '2005-11-09', '326', '12 OTKP A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (662, '2122100985', 'DIANI AYU DIAH SAFITRI', 'Sragen', '2005-11-09', '326', '12 OTKP A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (663, '2223110436', 'DWI AUDINA', 'Tangerang', '2006-08-27', '326', '12 OTKP A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (664, '2122100997', 'FLORA HERDIANA', '', '2006-10-11', '326', '12 OTKP A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (665, '2122100804', 'ISLAH DINI', 'Tangerang', '2006-04-27', '326', '12 OTKP A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (666, '2122100789', 'KARTIKA AYU WULANDARI', 'Grobogan', '2006-01-30', '326', '12 OTKP A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (667, '2122100796', 'KHOIRIN NISA', 'Tangerang', '2005-12-24', '326', '12 OTKP A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (668, '2122100791', 'KHUSNUL KHOTIMAH', 'Tangerang', '2006-10-28', '326', '12 OTKP A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (669, '2122101003', 'KUSNIAWATI', 'TANGERANG', '2006-08-28', '326', '12 OTKP A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (670, '2122100875', 'LIBNA INAYAH', 'TANGERANG', '2006-09-23', '326', '12 OTKP A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (671, '2122101000', 'LULU ULJANAH', 'TANGERANG', '2006-05-24', '326', '12 OTKP A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (672, '2122100995', 'MEYYI', 'TANGERANG', '2005-05-05', '326', '12 OTKP A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (673, '2122101002', 'MUTIARA BILQIS APRILYANTI', 'Tangerang', '2006-04-27', '326', '12 OTKP A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (674, '2122101025', 'MUTIARA NABILLA AZZAHRA', 'TANGERANG', '2005-04-10', '326', '12 OTKP A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (675, '222311443', 'NABILA RAMADHANI', 'Tangerang', '2005-10-16', '326', '12 OTKP A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (676, '2122100787', 'NILA SARI', 'Tangerang', '2005-08-11', '326', '12 OTKP A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (677, '2122100794', 'NURUL RIYANTI', 'Tangerang', '2006-01-01', '326', '12 OTKP A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (678, '2122101028', 'NURVI', 'TANGERANG', '2006-02-15', '326', '12 OTKP A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (679, '2122100999', 'PUTRI MAHARANI SUTEJA', 'Tangerang', '2006-06-24', '326', '12 OTKP A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (680, '2122100799', 'SANTI', 'Lebak', '2004-09-05', '326', '12 OTKP A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (681, '2122100785', 'SARYATI', 'Tangerang', '2005-04-06', '326', '12 OTKP A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (682, '2122100780', 'SEFTIYANI', 'Tangerang', '2005-09-01', '326', '12 OTKP A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (683, '2122100788', 'SIFA NURAENI', 'Tangerang', '2006-02-28', '326', '12 OTKP A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (684, '2223110310', 'SINTAMI BERLIANA', 'TANGERANG', '2006-12-11', '326', '12 OTKP A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (685, '2122100803', 'SITI KHOIRUNISA', 'Tangerang', '2006-08-26', '326', '12 OTKP A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (686, '2122100802', 'SITI MUTMAINAH', 'Tangerang', '2005-12-04', '326', '12 OTKP A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (687, '2122100786', 'SITI NURUL FALAH', 'Tangerang', '2007-01-02', '326', '12 OTKP A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (688, '2122100784', 'SOPIA OKTAPIANA', 'Tangerang', '2006-10-14', '326', '12 OTKP A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (689, '2223110311', 'SYIFA RIZKY ANDINI', 'Tangerang', '2006-09-14', '326', '12 OTKP A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (690, '2122100998', 'TAHSA INDAH FITRIYANI', 'Tangerang', '2006-06-03', '326', '12 OTKP A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (691, '2122100806', 'TIA AMANDA AGUSTIN', 'Tangerang', '2006-08-08', '326', '12 OTKP A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (692, '2122100800', 'VIONA DINA SALSABILA', 'Tangerang', '2005-12-21', '326', '12 OTKP A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (693, '2122100994', 'YESICA SADILLA', 'TANGERANG', '2005-12-19', '326', '12 OTKP A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (694, '2122100801', 'ZAHRA KHAIRUNNISA', 'Tangerang', '2006-04-20', '326', '12 OTKP A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (695, '2122100798', 'SELVY', 'Tangerang', '2006-06-11', '326', '12 OTKP A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (696, '2122101016', 'ABDUL HAYYI', 'TANGERANG', '2006-02-17', '327', '12 TKRO', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (697, '2122100823', 'ALDIANSAH', 'TANGERANG', '2007-02-07', '327', '12 TKRO', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (698, '2122100948', 'BAYU SEPTA NUGROHO', 'Tangerang', '2006-09-14', '327', '12 TKRO', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (699, '2122100831', 'EKI FIRMANSYAH', 'Tangerang', '2005-05-30', '327', '12 TKRO', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (700, '2122100830', 'FAJAR SAPUTRA', 'TANGERANG', '2005-07-06', '327', '12 TKRO', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (701, '2122100829', 'LINGGA VIOLA DWI PRASETYO', 'JAKARTA', '2006-03-14', '327', '12 TKRO', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (702, '2122101039', 'MUHAMAD ADRIYANSYAH', 'Tangerang', '2006-06-12', '327', '12 TKRO', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (703, '2122100820', 'MUHAMAD HASANUDIN', 'TANGERANG', '2006-10-10', '327', '12 TKRO', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (704, '2122100889', 'MUHAMAD IKBAL FAUZI', 'TANGERANG', '2006-11-19', '327', '12 TKRO', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (705, '2122100865', 'MUHAMAD RAFLI', 'Tangerang', '2007-01-09', '327', '12 TKRO', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (706, '2122101038', 'MUHAMAD RAFLY ALFAJAR', 'JAKARTA', '2004-10-07', '327', '12 TKRO', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (707, '2122100824', 'SAHRUL', 'Tangerang', '2006-06-16', '327', '12 TKRO', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (708, '2122100954', 'STEEVEN VALENTINO SANBY', 'TANGERANG', '2006-04-06', '327', '12 TKRO', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (709, '2122100945', 'STEVIN LIANTO', 'Tangerang', '2006-03-18', '327', '12 TKRO', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (710, '2122100826', 'SUHENDAR', 'TANGERANG', '2006-10-12', '327', '12 TKRO', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (711, '2122101034', 'ZAKI MUHAFIF', 'TANGERANG', '2006-05-27', '327', '12 TKRO', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (712, '2122100856', 'ABI FADILAH YAHYA', 'Tangerang', '2006-09-21', '328', '12 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (713, '2122100921', 'AGUNG PERMANA', 'TANGERANG', '2005-10-12', '328', '12 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (714, '2122100843', 'AHMAD HIDAYAT', 'Tangerang', '2006-09-24', '328', '12 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (715, '2122101018', 'ALVIN NANDA', '', '2005-01-01', '328', '12 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (716, '2122100858', 'ANDRIANSYAH', 'Tangerang', '2005-12-09', '328', '12 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (717, '2122100845', 'ARJUNA NURWAHID', 'Tangerang', '2006-05-05', '328', '12 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (718, '2122100918', 'CITRA AMALIA MAULIDAH', 'TANGERANG', '2006-04-28', '328', '12 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (719, '2122100991', 'DIMAS ABDILAH', 'Tangerang', '2007-02-16', '328', '12 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (720, '2122100841', 'EGIM YUDIANSYAH', 'Tangerang', '2006-05-06', '328', '12 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (721, '2122100854', 'FIVIH MAGFIROH', 'Tangerang', '2007-02-22', '328', '12 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (722, '2122100860', 'KALSYA DWI AGUSTIN', 'Bekasi', '2005-08-31', '328', '12 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (723, '2122100867', 'MILA AULIA', 'Tangerang', '2006-10-16', '328', '12 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (724, '2122101019', 'MUHAMAD AMIN FAUJI', 'TANGERANG', '2006-04-19', '328', '12 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (725, '2122100855', 'MUHAMAD MANSUR', 'Tangerang', '2006-05-01', '328', '12 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (726, '2122101012', 'MUHAMMAD ABDULLAH SYAFI`I', 'Jakarta', '2006-06-05', '328', '12 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (727, '2122100861', 'OCTA NOVIANSYAH', 'Tangerang', '2006-11-05', '328', '12 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (728, '2122100844', 'RIVA SASTRA PERMANA', 'Tangerang', '2006-05-16', '328', '12 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (729, '2122100842', 'SITI KURNIAWATI', 'Tangerang', '2006-07-06', '328', '12 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (730, '2223110306', 'VICKY MAESA ANTASARI', 'JAKARTA', '2006-03-10', '328', '12 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (731, '2122100892', 'AHMAD ZAKI WIBOWO', 'TANGERANG', '2006-04-01', '328', '12 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (732, '2122100902', 'AULIA YUNIAR TRIUPIYANA', 'TANGERANG', '2006-06-23', '328', '12 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (733, '2122100914', 'DIANA SARI', 'TANGERANG', '2006-08-20', '328', '12 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (734, '2122100917', 'EGA PUTRI LESTARI', 'TANGERANG', '2005-11-08', '328', '12 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (735, '2122100874', 'FA`IZ DIFA NUR WAHID', 'Braja Dewa', '2006-04-01', '328', '12 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (736, '2122100922', 'HENDRICK SIMARMATA', 'TANGERANG', '2005-12-21', '328', '12 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (737, '2122100866', 'LISTIN FIBRIANI', 'Tangerang', '2006-02-26', '328', '12 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (738, '2122100886', 'MOCHAMAD RIGAN ADITIA', 'TANGERANG', '2006-08-15', '328', '12 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (739, '2122100899', 'MUHAMAD IRPAN', 'TANGERANG', '2006-04-09', '328', '12 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (740, '2122100908', 'MUHAMAD RISKY MAULANA', 'TANGERANG', '2005-11-16', '328', '12 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (741, '2122100906', 'MUHAMMAD RAFLY MUNAWAR', 'Sidodadi', '2006-03-10', '328', '12 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (742, '2122100878', 'NIA RAMADHANTY', 'tangerang', '2006-09-28', '328', '12 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (743, '2122100890', 'PUSPO AYU LESTARI', 'Jakarta', '2006-02-06', '328', '12 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (744, '2122101032', 'SANTIA HOLIS', 'Tangerang', '2006-12-16', '328', '12 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (745, '2122100885', 'ZALDY AZIKRA NURANBIA', 'Tangerang', '2006-07-18', '328', '12 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (746, '2122100887', 'SYAIR HIDAYATULLOH', 'JAKARTA', '2004-01-08', '328', '12 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (747, '2122101036', 'HUSNAENI', 'TANGERANG', '2006-11-27', '328', '12 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (748, '2223110313', 'DENDI NOVRIYANTO', 'TANGERANG', '2005-11-15', '328', '12 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (749, '2122100909', 'FADLAN ERLANGGA FIRMANSYAH', 'TANGERANG', '2006-04-28', '328', '12 TKJ A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (750, '2122100913', 'ADITYA NAPASYA AL PAJRI', 'TANGERANG', '2006-11-02', '329', '12 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (751, '2122100848', 'AGUNG PERMANA', 'Serang', '2006-09-06', '329', '12 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (752, '2122100992', 'ALDI SANJAYA', '', '2007-01-01', '329', '12 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (753, '2122101035', 'ANANDA MUHAMAD ALIYANSYAH', 'TANGERANG', '2005-04-03', '329', '12 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (754, '2122100988', 'ARIEL HIDAYAT', 'Tangerang', '2004-12-31', '329', '12 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (755, '2223110309', 'AXEL BRILLIANT', 'Jakarta', '2004-11-15', '329', '12 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (756, '2122100840', 'DHAFA EKA NUGRAHA', 'Kuningan', '2006-05-14', '329', '12 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (757, '2122100919', 'DINI SULISTIAWATI', 'TANGERANG', '2005-03-27', '329', '12 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (758, '2122100927', 'FADLI HARDIANSYAH ZAKARIA', 'TANGERANG', '2006-03-20', '329', '12 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (759, '2122100853', 'HAERUDIN', 'Tangerang', '2006-03-02', '329', '12 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (760, '2122100923', 'M.NUR AHMAD MAULANA YUSUP', 'JAKARTA', '2006-02-18', '329', '12 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (761, '2122100859', 'MOHAMAD MAULANA RIFA`I', 'Tangerang', '2006-04-23', '329', '12 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (762, '2122101021', 'MUHAMAD DIAS FIRDAUS', 'TANGERANG', '2006-09-11', '329', '12 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (763, '2122100847', 'MUHAMAD NURHOMSIM SAPUTRA', 'Serang', '2006-06-10', '329', '12 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (764, '2122100929', 'NURHIDAYAT', 'TANGERANG', '2004-10-10', '329', '12 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (765, '2122100930', 'RIDWAN', 'TANGERANG', '2006-03-16', '329', '12 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (766, '2122100864', 'SITI AYU APRILIA', 'Tangerang', '2006-04-08', '329', '12 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (767, '2122100846', 'SULASTRAPINI', 'Tangerang', '2005-08-23', '329', '12 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (768, '2122100925', 'WIWIN', 'TANGERANG', '2006-09-23', '329', '12 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (769, '2122100870', 'AMI SETIYAWAN', 'Tangerang', '2006-06-15', '329', '12 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (770, '2122100904', 'DIMAS NUGRAHA', 'Jakarta', '2005-12-12', '329', '12 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (771, '2122100897', 'HANDIKA ADITYA PUTRA', 'Jakarta', '2006-05-02', '329', '12 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (772, '2122100882', 'MASKUPAH', 'Tangerang', '2005-03-04', '329', '12 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (773, '2122100891', 'MUHAMAD FARHAN CAESAR', 'TANGERANG', '2006-06-07', '329', '12 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (774, '2122100893', 'MUHAMAD KHAFKA RAMADHAN', 'TANGERANG', '2006-10-16', '329', '12 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (775, '2122100952', 'MUHAMMAD NUHRIL', 'Tangerang', '2007-05-01', '329', '12 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (776, '2122100896', 'NAUFAL SYAUQI', 'TANGERANG', '2006-01-31', '329', '12 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (777, '2122100884', 'NURUL HOTIMAH', 'TANGERANG', '2006-09-22', '329', '12 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (778, '2122100895', 'PUTRA KURNIAWAN', 'Tangerang', '2006-07-16', '329', '12 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (779, '2122100880', 'RAFAEL SANTIAGO SUTEZA', 'Tangerang', '2005-12-13', '329', '12 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (780, '2122100872', 'RATNA NOVITA', 'Tangerang', '2006-05-15', '329', '12 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (781, '2122100903', 'RATNA SAFITRI', 'TANGERANG', '2006-03-08', '329', '12 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (782, '2122100916', 'RISMA OKTAVIANI', 'TANGERANG', '2006-02-01', '329', '12 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (783, '2223110312', 'SAID SAIDINA HARUMAN', 'Tangerang', '2005-09-01', '329', '12 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (784, '2122100883', 'SELINA RESTIANI', 'Tangerang', '2006-06-11', '329', '12 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (785, '2122100915', 'SITI ALIYAH', 'TANGERANG', '2006-03-10', '329', '12 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (786, '2122100901', 'SULISTIA LESTARI', 'TANGERANG', '2006-04-26', '329', '12 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (787, '2122101022', 'UMYATI', 'Tangerang', '2006-04-27', '329', '12 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (788, '2122100849', 'YULI MAULANA', 'Tangerang', '2005-07-11', '329', '12 TKJ B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (789, '2122100821', 'AKLIN INDRA LESMANA', 'TANGERANG', '2006-10-17', '330', '12 TBSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (790, '2122100942', 'DAVID SAPUTRA', 'TANGERANG', '2005-03-22', '330', '12 TBSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (791, '2122100941', 'EGI FERDIAN SAPUTRA', 'GEDUNG WANI TIMUR', '2006-01-06', '330', '12 TBSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (792, '2122100951', 'ERIK LESIANA', 'TANGERANG', '2006-06-01', '330', '12 TBSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (793, '2122100938', 'ISRA ASYURA YUDA', 'PASAR USANG', '2003-07-28', '330', '12 TBSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (794, '2122101007', 'MUHAMAD FAHUDRI', 'TANGERANG', '2007-01-02', '330', '12 TBSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (795, '2122101005', 'MUHAMADA TIYO EKA SAPUTRA', 'TANGERANG', '2006-06-15', '330', '12 TBSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (796, '2122100839', 'MUHAMMAD AKBARUDIN', 'Tangerang', '2006-12-31', '330', '12 TBSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (797, '2122101006', 'MUHAMMAD FARIDDUDIN KAMAL', 'TANGERANG', '2006-08-01', '330', '12 TBSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (798, '2122101004', 'MUSTOFA REGA SIFA', 'TANGERANG', '2006-08-28', '330', '12 TBSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (799, '2122100946', 'RENDI AGUSTIAN', 'TANGERANG', '2005-11-16', '330', '12 TBSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (800, '2122100939', 'RIZAL FAUZI', 'TANGERANG', '2006-07-09', '330', '12 TBSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (801, '2122100953', 'STEFANUS DION OTEMUSU', 'JAKARTA', '2005-06-13', '330', '12 TBSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (802, '2122100966', 'DAVA RISKY PRATAMA', 'TANGERANG', '2005-12-18', '330', '12 TBSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (803, '2122100956', 'ENDANG SURYANA', 'Tangerang', '2006-06-18', '330', '12 TBSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (804, '2122100973', 'FEBRY ARYADILLA', 'Tangerang', '2006-02-26', '330', '12 TBSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (805, '2122101008', 'FERDI MAULANA', 'Tangerang', '2006-04-27', '330', '12 TBSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (806, '2122100962', 'GUSTAF PANCA SUTA', 'TANGERANG', '2006-08-11', '330', '12 TBSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (807, '2122100852', 'HADI INSANI', 'Tangerang', '2006-12-21', '330', '12 TBSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (808, '2122100960', 'MUHAMAD ABDU', 'TANGERANG', '2006-02-06', '330', '12 TBSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (809, '2122100958', 'MUHAMAD ARIF', 'TANGERANG', '2006-05-30', '330', '12 TBSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (810, '2122100964', 'MUHAMAD EXEL ROMIANSAH', 'TANGERANG', '2006-01-05', '330', '12 TBSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (811, '2122100976', 'MUHAMAD HAFID AIMAN', 'TANGERANG', '2005-12-31', '330', '12 TBSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (812, '2122100834', 'MUHAMMAD RIZKI NURYADIN', 'Jakarta', '2005-12-21', '330', '12 TBSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (813, '2122100967', 'MUHAMMAD ROZAN MUYASSAR', 'TANGERANG', '2006-06-15', '330', '12 TBSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (814, '2122101009', 'MUHDI', 'Tangerang', '2006-06-28', '330', '12 TBSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (815, '2122100955', 'NOPAL EPENDI', 'Tangerang', '2005-11-20', '330', '12 TBSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (816, '2122100959', 'PAISAL ANDIKA', 'Tangerang', '2006-11-28', '330', '12 TBSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (817, '2122100965', 'RADITYA ATHA RAMADHAN', 'MAGELANG', '2006-10-05', '330', '12 TBSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (818, '2122101029', 'RAYHAN HERMANSYAH', 'INDRAMAYU', '2006-05-20', '330', '12 TBSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (819, '2122100975', 'RIAN', 'TANGERANG', '2005-03-29', '330', '12 TBSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (820, '2122100825', 'SULTAN BADRIAN', 'Tangerang', '2006-03-03', '330', '12 TBSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (821, '2122100863', 'YOGI MARTIN', 'Tugu Mulyo', '2005-03-18', '330', '12 TBSM A', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (822, '2122101033', 'AL RAMADANI', 'TANGERANG', '2006-09-30', '332', '12 MM', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (823, '2122100982', 'DAVA NODIANTO', 'Tangerang', '2005-02-06', '332', '12 MM', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (824, '2122100977', 'CHRISTIAN LESMANA', 'Jakarta', '2005-12-26', '332', '12 MM', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (825, '2122100981', 'FAIZ ANWAR', 'Tangerang', '2006-08-18', '332', '12 MM', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (826, '2122100983', 'FARREL WILY SEPTIANSYAH', 'Tangerang', '2006-09-05', '332', '12 MM', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (827, '2122100912', 'FASHA RAMADHANI', 'Sidoarjo', '2005-10-05', '332', '12 MM', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (828, '2122100910', 'HANI ANDIKA', 'BANYUMAS', '2005-12-10', '332', '12 MM', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (829, '2122100989', 'ITA WULANDARI', 'Tangerang', '2006-06-01', '332', '12 MM', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (830, '2122100978', 'MUHAMMAD ABDUL FATTAH', 'Jakarta', '2006-02-02', '332', '12 MM', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (831, '2122100987', 'MUHAMMAD NUR RAISYA', 'Karang Anyar', '2006-02-24', '332', '12 MM', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (832, '2122100979', 'NARESYA PUTERI', 'Jakarta', '2006-02-06', '332', '12 MM', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (833, '2223110307', 'RAQKA FAUZI RAHMATULLAH', 'TANGERANG', '2006-04-04', '332', '12 MM', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (834, '2122100797', 'REZA SUNDAPA', 'Lebak', '2004-06-21', '332', '12 MM', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (835, '2122100984', 'RIDHWAN DIMAS NAWAWI ALFAREZI', 'Jakarta', '2006-01-28', '332', '12 MM', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (836, '2122100993', 'STYFEN', 'PEMANGKAT', '2005-12-13', '332', '12 MM', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (837, '2122101026', 'SYAIDINA UMAR', 'JAKARTA', '2007-01-22', '332', '12 MM', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (838, '2122100888', 'WARSITI', 'KEBUMEN', '2004-12-02', '332', '12 MM', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (839, '2122100807', 'ZJULFIKHA AZIZ RIAN SANJAYA', 'Jakarta', '2006-09-03', '332', '12 MM', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (840, '222310158', 'ALFIANSYAH', 'Tangerang', '2007-10-24', '333', '11 TSM B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (841, '222310183', 'ANDI', 'TANGERANG', '2006-04-26', '333', '11 TSM B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (842, '222310164', 'ARIPIN', 'Tangerang', '2005-11-06', '333', '11 TSM B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (843, '222310199', 'ARUL IKLAS RABANI', 'JAKARTA', '2006-05-24', '333', '11 TSM B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (844, '222310439', 'DICKY SETIADI', 'Tangerang', '2007-11-02', '333', '11 TSM B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (845, '222310182', 'GALIH GALANG GUNARSO', 'TANGERANG', '2007-09-30', '333', '11 TSM B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (846, '222310029', 'HANZEN AL-FAJRI', 'TANGERANG', '2006-10-16', '333', '11 TSM B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (847, '222310159', 'M. RAMA RIZKY', 'Tangerang', '2007-03-30', '333', '11 TSM B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (848, '222310191', 'MUHAMAD NUR ARIPIN ILHAM', 'Tangerang', '2007-08-27', '333', '11 TSM B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (849, '222310441', 'MUHAMMAD FAHRUL', 'pandeglang', '2007-04-20', '333', '11 TSM B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (850, '222310168', 'MUHAMMAD IKBAL', 'Tangerang', '2006-09-01', '333', '11 TSM B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (851, '222310416', 'NANA MUNAWAR', 'Tangerang', '2007-08-31', '333', '11 TSM B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (852, '222310160', 'NURRIZKI AFRIZAL', 'Gisting', '2007-04-17', '333', '11 TSM B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (853, '222310398', 'RADEN DIMAS TORA ARDIANSYAH', 'Tangerang', '2007-12-11', '333', '11 TSM B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (854, '222310189', 'RAMADHAN DWI PRAYOGA', 'pemalang ', '2005-10-24', '333', '11 TSM B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (855, '222310350', 'RIZAL SEPTIAWAN', 'Tangerang', '2006-09-18', '333', '11 TSM B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (856, '222310179', 'SYAGIL KHAUFILLAH ', 'TANGERANG', '2006-10-28', '333', '11 TSM B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (857, '222310431', 'ANDIKA KURNIAWAN', 'TANGERANG', '2007-03-25', '333', '11 TSM B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (858, '222310310', 'ARYADILAH', 'Tangerang', '2006-08-29', '333', '11 TSM B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (859, '222310275', 'DIRLI', 'TANGERANG', '2007-02-16', '333', '11 TSM B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (860, '222310219', 'JULIANA NURYADIN ', 'TANGERANG', '2006-07-12', '333', '11 TSM B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (861, '222310415', 'LATIEF ANSHORI PAHMI', 'Tangerang', '2006-10-27', '333', '11 TSM B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (862, '222310278', 'MICHAEL SAPUTRA ZEBUA', 'Tangerang', '2007-02-15', '333', '11 TSM B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (863, '222310344', 'MUHAMAD  DWI APRIANSYAH', 'INDRAMAYU', '2007-04-29', '333', '11 TSM B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (864, '222310213', 'MUHAMAD NUR IRLLY', 'Tangerang', '2007-02-27', '333', '11 TSM B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (865, '222310420', 'MUHAMAD RAMADANI', 'TANGERANG', '2006-10-13', '333', '11 TSM B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (866, '222310257', 'MUHAMAD RIJKI MAULANA', 'Tangerang', '2007-05-23', '333', '11 TSM B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (867, '222310435', 'MUHAMAD RIZQI RAMADHAN', '', '1970-01-01', '333', '11 TSM B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (868, '222310206', 'MUHAMAD ZENI DAHLAN ZAHID', 'TANGERANG', '2007-05-05', '333', '11 TSM B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (869, '222310235', 'MUHAMAMAD KHAERUL LATIF', 'TANGERANG', '2007-03-29', '333', '11 TSM B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (870, '222310202', 'RADEN MUHAMAD RIDHO DHOIFURROHMAN', 'Jakarta', '2006-12-30', '333', '11 TSM B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (871, '222310351', 'RAMA HARIANTO', 'Tangerang', '2007-05-09', '333', '11 TSM B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (872, '222310214', 'RENDI', 'Tangerang', '2006-06-14', '333', '11 TSM B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (873, '222310212', 'RIVALDI PUTRA ANTONI', 'Tangerang', '2006-01-02', '333', '11 TSM B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (874, '222310226', 'RIZQI AGUS MULYONO', 'TANGERANG', '2006-08-31', '333', '11 TSM B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (875, '222310267', 'SANDI PERMANA', 'Tangerang', '2007-07-26', '333', '11 TSM B', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (876, '222310224', 'UBAIDILAH', 'Tangerang', '2007-11-06', '333', '11 TSM B', NULL, NULL);

-- ----------------------------
-- Table structure for tbl_tahun_ajaran
-- ----------------------------
DROP TABLE IF EXISTS `tbl_tahun_ajaran`;
CREATE TABLE `tbl_tahun_ajaran`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_sekolah` int NOT NULL,
  `tahun_ajaran` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tbl_tahun_ajaran_fk0`(`id_sekolah` ASC) USING BTREE,
  CONSTRAINT `tbl_tahun_ajaran_ibfk_1` FOREIGN KEY (`id_sekolah`) REFERENCES `tbl_sekolah` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_tahun_ajaran
-- ----------------------------
INSERT INTO `tbl_tahun_ajaran` VALUES (1, 9, '2020-2021', 'Y', NULL, NULL);
INSERT INTO `tbl_tahun_ajaran` VALUES (2, 9, '2021-2022', 'N', NULL, NULL);

-- ----------------------------
-- Table structure for tbl_user
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user`  (
  `id_user` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_sekolah` int NULL DEFAULT NULL,
  `id_departemen` int NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `username` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `full_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `id_level` int NULL DEFAULT NULL,
  `image` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `is_active` enum('Y','N') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'Y',
  PRIMARY KEY (`id_user`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
INSERT INTO `tbl_user` VALUES (1, 9, 12, 'administrator@sisfo.id', 'administrator', 'Administrator', '$2y$10$3ltF8szQPedU9cQPEcrqj.JOv6vT874XOO4POXJA1WdC5vpL4pw0y', 1, 'illustrations-gallery-it-support.png', 'Y');
INSERT INTO `tbl_user` VALUES (6, 9, 12, 'user@sisfo.id', 'user', 'user satu', '$2y$05$EXivlnsCT0BJOj4tMwN75O.7zruDrsnaPRaNYNIuEO3n0eA5eE.ze', 4, 'Tulips.jpg', 'Y');
INSERT INTO `tbl_user` VALUES (7, 9, 12, 'admin@gmail.com', 'admin', 'admin12', '$2y$10$3ltF8szQPedU9cQPEcrqj.JOv6vT874XOO4POXJA1WdC5vpL4pw0y', 6, 'drawkit-app-user-colour.png', 'Y');

-- ----------------------------
-- Table structure for tbl_userlevel
-- ----------------------------
DROP TABLE IF EXISTS `tbl_userlevel`;
CREATE TABLE `tbl_userlevel`  (
  `id_level` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama_level` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_level`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_userlevel
-- ----------------------------
INSERT INTO `tbl_userlevel` VALUES (1, 'superadmin');
INSERT INTO `tbl_userlevel` VALUES (4, 'User');
INSERT INTO `tbl_userlevel` VALUES (6, 'admin');
INSERT INTO `tbl_userlevel` VALUES (7, 'Bendahara');

-- ----------------------------
-- Table structure for tingkat
-- ----------------------------
DROP TABLE IF EXISTS `tingkat`;
CREATE TABLE `tingkat`  (
  `idtingkat` int NOT NULL,
  `tingkat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idtingkat`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tingkat
-- ----------------------------
INSERT INTO `tingkat` VALUES (26, '10');
INSERT INTO `tingkat` VALUES (27, '11');
INSERT INTO `tingkat` VALUES (28, '12');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `PIN` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Password` int NULL DEFAULT NULL,
  `Group` int NULL DEFAULT NULL,
  `Privilege` int NULL DEFAULT NULL,
  PRIMARY KEY (`PIN`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
