/*
 Navicat Premium Data Transfer

 Source Server         : phpmyadmin
 Source Server Type    : MySQL
 Source Server Version : 100419
 Source Host           : localhost:3306
 Source Schema         : adms

 Target Server Type    : MySQL
 Target Server Version : 100419
 File Encoding         : 65001

 Date: 19/05/2022 14:04:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for absen
-- ----------------------------
DROP TABLE IF EXISTS `absen`;
CREATE TABLE `absen`  (
  `PIN` int NOT NULL AUTO_INCREMENT,
  `DateTime` datetime NULL DEFAULT NULL,
  `Verified` int NULL DEFAULT NULL,
  `Status` int NULL DEFAULT NULL,
  `WorkCode` int NULL DEFAULT NULL,
  PRIMARY KEY (`PIN`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of absen
-- ----------------------------

-- ----------------------------
-- Table structure for ip_mesin
-- ----------------------------
DROP TABLE IF EXISTS `ip_mesin`;
CREATE TABLE `ip_mesin`  (
  `id_mesin` int NOT NULL AUTO_INCREMENT,
  `nama_mesin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ip_address` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `com_key` int NOT NULL,
  `soap_port` int NOT NULL,
  `status` int NOT NULL,
  PRIMARY KEY (`id_mesin`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ip_mesin
-- ----------------------------
INSERT INTO `ip_mesin` VALUES (1, 'Ruang Kesiswaan', '192.168.5.201', 0, 80, 0);
INSERT INTO `ip_mesin` VALUES (11, 'Ruang TU', '192.168.5.9', 0, 0, 0);

-- ----------------------------
-- Table structure for logs
-- ----------------------------
DROP TABLE IF EXISTS `logs`;
CREATE TABLE `logs`  (
  `id` int NOT NULL,
  `pin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `date_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of logs
-- ----------------------------
INSERT INTO `logs` VALUES (1, '1', '2022-01-30 22:11:07');
INSERT INTO `logs` VALUES (2, '1', '2022-01-30 23:11:24');
INSERT INTO `logs` VALUES (3, '2', '2022-01-31 23:03:52');
INSERT INTO `logs` VALUES (4, '2', '2022-01-31 23:08:01');
INSERT INTO `logs` VALUES (5, '3', '2022-02-01 23:24:11');

-- ----------------------------
-- Table structure for role_mesin
-- ----------------------------
DROP TABLE IF EXISTS `role_mesin`;
CREATE TABLE `role_mesin`  (
  `id_role` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_action
-- ----------------------------
INSERT INTO `tbl_action` VALUES (1, 'Clear All Device Data');
INSERT INTO `tbl_action` VALUES (2, 'Clear All User Template');
INSERT INTO `tbl_action` VALUES (3, 'Clear All Att Logs');

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
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

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
  INDEX `tbl_tahun_ajaran_fk0`(`id_sekolah`) USING BTREE,
  CONSTRAINT `tbl_semester_ibfk_1` FOREIGN KEY (`id_sekolah`) REFERENCES `tbl_sekolah` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_semester
-- ----------------------------
INSERT INTO `tbl_semester` VALUES (1, 9, 'Ganjil', 'Y', NULL, NULL);

-- ----------------------------
-- Table structure for tbl_siswa
-- ----------------------------
DROP TABLE IF EXISTS `tbl_siswa`;
CREATE TABLE `tbl_siswa`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `id_sekolah` int NOT NULL,
  `id_departemen` int NOT NULL,
  `pin` int NULL DEFAULT NULL,
  `nis` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nisn` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nik` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nama` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tempat_lahir` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tgl_lahir` date NULL DEFAULT NULL,
  `jenis_kelamin` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `id_agama` int NULL DEFAULT NULL,
  `id_gol_darah` int NULL DEFAULT NULL,
  `nomor_kk` varchar(35) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nama_kk` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `alamat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `rt` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `rw` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `kode_pos` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `no_hp` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `asal_sekolah` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `no_peserta_un` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `no_seri_ijasah` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `no_seri_shun` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `kewarganegaraan` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nik_ayah` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ayah_kandung` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tempat_lahir_ayah` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tgl_lahir_ayah` date NULL DEFAULT NULL,
  `id_agama_ayah` int NULL DEFAULT NULL,
  `id_pendidikan_ayah` int NULL DEFAULT NULL,
  `id_pekerjaan_ayah` int NULL DEFAULT NULL,
  `no_hp_ayah` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nik_ibu` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ibu_kandung` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tempat_lahir_ibu` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tgl_lahir_ibu` date NULL DEFAULT NULL,
  `id_agama_ibu` int NULL DEFAULT NULL,
  `id_pendidikan_ibu` int NULL DEFAULT NULL,
  `id_pekerjaan_ibu` int NULL DEFAULT NULL,
  `no_hp_ibu` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `alamat_ortu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nik_wali` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nama_wali` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tempat_lahir_wali` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tgl_lahir_wali` date NULL DEFAULT NULL,
  `jenis_kelamin_wali` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `id_agama_wali` int NULL DEFAULT NULL,
  `id_pendidikan_wali` int NULL DEFAULT NULL,
  `id_pekerjaan_wali` int NULL DEFAULT NULL,
  `no_hp_wali` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `hub_dengan_siswa` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `alamat_wali` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_siswa
-- ----------------------------
INSERT INTO `tbl_siswa` VALUES (1, 9, 12, 1, '', '070821900001', '3603050505910070', 'RAFLI AHMAD', 'TANGERANG', '2022-04-13', 'Laki-laki', 2, 1, '3603050586900002', 'SABIT', 'Kp. Nagreg ', '008', '005', '15730', 'rafli@sisfo.id', '$2y$10$FPW3zmxFvoY4.ooKivlFE..paMgDHqE8qt1nooD9YmMEQH3FdsPhW', '081356527728', '4', '0708127', 'DN30-87662', 'DN30-87662', NULL, '36000944998392', 'SABIT', 'TANGERANG', '2021-12-11', 1, 3, 2, '', '36039494838784', 'LINDA MARLIANA', 'TANGERANG', '0000-00-00', 1, 3, 5, '', 'kp.jengkola rt.08/05 Ds.cisoka', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '', '', 'Y', '2021-12-11 18:22:00', NULL);
INSERT INTO `tbl_siswa` VALUES (2, 9, 12, 3, '123', '12334', '124124', 'coba', 'tangerang', '2021-12-01', 'Laki-laki', NULL, 1, '3456456456', 'hedi', '', '', '', '', 'coba@sisfo.com', '$2y$10$VQrW/MZBVTpB4nCwH53a4erTuuHXFo.fSbkaZv3LGTNP42IL/d08K', '', 'SMP N 2 Cisoka', '34563456', 'SDFGSDFX ', '34563456', NULL, '', '', '', '2010-02-02', 1, 1, 1, '', '', '', '', '0000-00-00', 1, 1, 1, '', '', '5463456', 'ZXCVZXCV', 'ZXCVZXCV', '2022-04-27', 'Laki-laki', 1, NULL, NULL, '34563456', 'XCVBXCV', 'XCVBXCVBX', 'Y', '2022-04-27 16:39:00', NULL);
INSERT INTO `tbl_siswa` VALUES (3, 9, 12, 2, '11', '222', '12122', 'ssss', 'asasa', '2021-12-08', 'Perempuan', 2, 3, '1211212', 'aaa', 'aaaaaaaaaaaaaaa', '33', '33', '333', NULL, NULL, '33', '4', '', '', '', '', '', '', '', '2021-12-14', 5, 2, 3, '', '', '', '', '2021-12-21', 4, 4, 3, '', '', '', '', '', NULL, '', 0, 0, 0, '', '', '', 'Y', NULL, NULL);
INSERT INTO `tbl_siswa` VALUES (4, 9, 12, 4, '123123', '123', '123', 'Rafatar', 'Tangerang', '2022-01-11', 'Laki-laki', 1, 2, '563452345234', 'Rafi Ahmad', 'jl. Tambora barat', '12', '12', '122122', 'admin@sisfo.id', '$2y$10$3ltF8szQPedU9cQPEcrqj.JOv6vT874XOO4POXJA1WdC5vpL4pw0y', '0852465584', NULL, '', '', '', NULL, '', 'Rafi Ahmad', '', '0000-00-00', NULL, NULL, NULL, '', '', 'Nagita S', '', '0000-00-00', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '', '', 'Y', '2022-01-10 16:13:00', NULL);
INSERT INTO `tbl_siswa` VALUES (5, 9, 12, 5, '1234561', '54311', '341234123411', 'ARIS PERMANA1', 'Tangerang1', '2022-02-28', 'Laki-laki', 1, 1, '3452345234523', 'HASIM', 'Kp. Jengkol Cisoka Rt.16/03 Ds.Cisoka Kec.Cisoka Kab. Tangerang-Banten1', '161', '031', '157301', NULL, NULL, '08673736377', 'smp citra madinah', 'DN9838888', 'DN3219192', 'ND9374884', NULL, '13412341341', 'HASIM1', 'Tangerang', '2022-02-15', 1, 3, 2, '086363777672', '123412341', 'LINA1', 'Tangerang', '0000-00-00', 1, 2, 5, '0837373737', 'Kp. Jengkol Rt.16/03 Ds. Cisoka Kec. Cisoka Kab. Tangerang-Banten', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '', '', 'Y', '2022-02-28 22:17:00', NULL);
INSERT INTO `tbl_siswa` VALUES (6, 9, 12, 6, '12345615', '543115', '3412341234115', 'heru periadi', 'Tangerang1', '2022-02-28', 'Laki-laki', 1, 1, '3452345234523', 'HASIM', 'Kp. Jengkol Cisoka Rt.16/03 Ds.Cisoka Kec.Cisoka Kab. Tangerang-Banten1', '161', '031', '157301', 'sesese@bb.rd', '$2y$10$b2kxDReCPxYS6Prm5d7RP.DNVhky7KPGC558ASCS.AnLokvstP1.e', '08673736377', 'smp citra madinah', 'DN9838888', 'DN3219192', 'ND9374884', NULL, '13412341341', 'HASIM1', 'Tangerang', '2022-02-15', 1, 3, 2, '086363777672', '123412341', 'LINA1', 'Tangerang', '0000-00-00', 1, 2, 5, '0837373737', 'Kp. Jengkol Rt.16/03 Ds. Cisoka Kec. Cisoka Kab. Tangerang-Banten', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '', '', 'Y', '2022-02-28 22:17:00', NULL);

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
  INDEX `tbl_tahun_ajaran_fk0`(`id_sekolah`) USING BTREE,
  CONSTRAINT `tbl_tahun_ajaran_ibfk_1` FOREIGN KEY (`id_sekolah`) REFERENCES `tbl_sekolah` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
INSERT INTO `tbl_user` VALUES (1, 9, 12, 'administrator@sisfo.id', 'administrator', 'Administrator', '$2y$10$3ltF8szQPedU9cQPEcrqj.JOv6vT874XOO4POXJA1WdC5vpL4pw0y', 1, 'illustrations-gallery-it-support.png', 'Y');
INSERT INTO `tbl_user` VALUES (6, 9, 12, 'user@sisfo.id', 'user', 'user satu', '$2y$05$EXivlnsCT0BJOj4tMwN75O.7zruDrsnaPRaNYNIuEO3n0eA5eE.ze', 4, 'Tulips.jpg', 'Y');
INSERT INTO `tbl_user` VALUES (7, 9, 12, 'admin@sisfo.id', 'admin', 'admin12', '$2y$10$3ltF8szQPedU9cQPEcrqj.JOv6vT874XOO4POXJA1WdC5vpL4pw0y', 6, 'drawkit-app-user-colour.png', 'Y');

-- ----------------------------
-- Table structure for tbl_userlevel
-- ----------------------------
DROP TABLE IF EXISTS `tbl_userlevel`;
CREATE TABLE `tbl_userlevel`  (
  `id_level` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama_level` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_level`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_userlevel
-- ----------------------------
INSERT INTO `tbl_userlevel` VALUES (1, 'superadmin');
INSERT INTO `tbl_userlevel` VALUES (4, 'User');
INSERT INTO `tbl_userlevel` VALUES (6, 'admin');
INSERT INTO `tbl_userlevel` VALUES (7, 'Bendahara');

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
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
