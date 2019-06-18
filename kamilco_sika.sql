/*
 Navicat Premium Data Transfer

 Source Server         : kamil.co.id
 Source Server Type    : MySQL
 Source Server Version : 50644
 Source Host           : kamil.co.id:3306
 Source Schema         : kamilco_sika

 Target Server Type    : MySQL
 Target Server Version : 50644
 File Encoding         : 65001

 Date: 18/06/2019 19:10:03
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for hira
-- ----------------------------
DROP TABLE IF EXISTS `hira`;
CREATE TABLE `hira` (
  `no` int(40) NOT NULL,
  `date_mulai` date NOT NULL,
  `date_selesai` date NOT NULL,
  `pekerjaan` varchar(40) NOT NULL,
  `fungsi` varchar(40) NOT NULL,
  `pengawas` varchar(40) NOT NULL,
  `ringkasan_pek` text NOT NULL,
  `equip_number` varchar(40) NOT NULL,
  `equip_status` varchar(40) NOT NULL,
  `no_notifikasi` varchar(40) NOT NULL,
  `work_status` varchar(40) NOT NULL,
  `lokasi_owner` varchar(40) NOT NULL,
  `tools` text NOT NULL,
  `jenis_sika` varchar(40) NOT NULL,
  `upload` varchar(100) NOT NULL,
  `status` int(1) DEFAULT '0' COMMENT '0=belum diproses 1=pending 2=disetujui',
  `id_user` varchar(15) DEFAULT NULL,
  `comment` varchar(200) DEFAULT NULL,
  `status_hira` int(1) DEFAULT NULL,
  `comment_hira` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`no`),
  KEY `hr_ibfk1_id_user` (`id_user`),
  CONSTRAINT `hr_ibfk1_id_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of hira
-- ----------------------------
BEGIN;
INSERT INTO `hira` VALUES (1, '2019-05-21', '2019-05-21', 'Pemasangan Kabel Fiber Optik', 'PT. Pertamina Gas', 'Jaya Kencana', '1. Pemasangan Kabel Fiber\r\n2. Pemasangan Kabel', '1234567', 'in service', '1234', 'normal', 'operation', 'Obeng dan Cangkul', 'izin kerja panas', 'a50ada7e3490e9e255849f7d0878a8b73981e6d9.docx', 2, 'user', '', 2, '');
INSERT INTO `hira` VALUES (2, '2019-05-21', '2019-05-21', 'Pemasangan Router', 'PT Jaya Wijaya', 'Wahyu Maruti Adjie', '1. Pasang Router', '123456', 'in service', '1234', 'turnarround', 'operation', '1. Obeng Bunga\r\n2. Kunci Inggris', 'izin kerja dingin', 'b4daab7c7ab3b79c98f8e34ee7a8701479891588.docx', 2, 'user', '', 2, '');
COMMIT;

-- ----------------------------
-- Table structure for hira_detail
-- ----------------------------
DROP TABLE IF EXISTS `hira_detail`;
CREATE TABLE `hira_detail` (
  `dh_id` int(100) NOT NULL AUTO_INCREMENT,
  `dh_kegiatan` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dh_bahaya` longtext COLLATE utf8_unicode_ci,
  `dh_konsekwensi` longtext COLLATE utf8_unicode_ci,
  `dh_p1` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dh_c1` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dh_r1` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dh_pengendalian` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dh_penanggungjawab` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dh_p2` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dh_c2` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dh_r2` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_hira` int(40) DEFAULT NULL,
  PRIMARY KEY (`dh_id`),
  KEY `dh_ibfk1_id_hira` (`id_hira`),
  CONSTRAINT `dh_ibfk1_id_hira` FOREIGN KEY (`id_hira`) REFERENCES `hira` (`no`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of hira_detail
-- ----------------------------
BEGIN;
INSERT INTO `hira_detail` VALUES (15, 'Urutan Kegiatanya Seperti Apa', 'Bahayanya apa', 'Konsekuensinya Seperti apa', '-', '-', 'R', 'Pengendalianya', 'Penanggung Jawab', '-', 'C', 'R', 1);
INSERT INTO `hira_detail` VALUES (16, 'Kegiatan', 'Bahaya', 'Konsekuensi Seperti  apa', 'P', '-', 'R', 'Pengendalian', 'Penanggung Jawab Siapa', 'R', '-', '-', 2);
COMMIT;

-- ----------------------------
-- Table structure for ikd
-- ----------------------------
DROP TABLE IF EXISTS `ikd`;
CREATE TABLE `ikd` (
  `no` varchar(100) NOT NULL,
  `lanjutan_no` int(100) NOT NULL,
  `tanggal_terbit` date NOT NULL,
  `tgl_akhir_terbit` date NOT NULL,
  `jam_kerja` varchar(30) NOT NULL,
  `jam_akhir_kerja` varchar(30) NOT NULL,
  `nama_pelaksana` varchar(100) NOT NULL,
  `perusahaan` varchar(100) NOT NULL,
  `jumlah_pekerja` int(100) NOT NULL,
  `lokasi` varchar(100) NOT NULL,
  `uraian_pekerjaan` text NOT NULL,
  `peralatan` varchar(300) NOT NULL,
  `izin_diperlukan` varchar(300) NOT NULL,
  `sifat_pekerjaan` varchar(300) NOT NULL,
  `isolasi_peralatan` varchar(300) NOT NULL,
  `lampiran` varchar(300) NOT NULL,
  `identiikasi_bahaya` varchar(400) NOT NULL,
  `identifikasi_tambahan` varchar(300) NOT NULL,
  `pengendalian_bahaya` varchar(500) NOT NULL,
  `permintaan_tambahan` varchar(300) NOT NULL,
  `nama1` varchar(150) NOT NULL,
  `date1` date NOT NULL,
  `nama2` varchar(150) NOT NULL,
  `date2` date NOT NULL,
  `nama3` varchar(150) NOT NULL,
  `date3` date NOT NULL,
  `nama4` varchar(150) NOT NULL,
  `date4` date NOT NULL,
  `nama` varchar(150) NOT NULL,
  `date` date NOT NULL,
  `alasan` text NOT NULL,
  `catatan` text NOT NULL,
  `date_penghentian` date NOT NULL,
  `waktu_penghentian` varchar(150) NOT NULL,
  `nama_penghentian` varchar(300) NOT NULL,
  `date_pengesahan` date NOT NULL,
  `waktu_pengesahan` varchar(150) NOT NULL,
  `nama_pengesahan` varchar(300) NOT NULL,
  `penutupan_izin` varchar(500) NOT NULL,
  `nama_penerima` varchar(350) NOT NULL,
  `date_penerima` date NOT NULL,
  `nama_pengawas` varchar(350) NOT NULL,
  `date_pengawas` date NOT NULL,
  `nama_pemberi` varchar(400) NOT NULL,
  `date_pemberi` date NOT NULL,
  `id_hira` int(40) DEFAULT NULL,
  PRIMARY KEY (`no`),
  KEY `ikd_ibfk1_id_hira` (`id_hira`),
  CONSTRAINT `ikd_ibfk1_id_hira` FOREIGN KEY (`id_hira`) REFERENCES `hira` (`no`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ikd
-- ----------------------------
BEGIN;
INSERT INTO `ikd` VALUES ('IKD-EJA0000001', 123456, '2019-05-23', '2019-06-07', '06.00', '17.00', 'Bendra Wardana', 'PT. Pertamina Gas', 12, 'Oil Center Jakarta Pusat', '1. Pasang Router', '1. Obeng Bunga2. Kunci Inggris', '[\"Izin Kerja Radiografi\",\"Izin Kerja Isolasi  Listrik\",\"Izin Kerja Pengangkatan\"]', '[\"Normal\",\"T\\/A\",\"Emergency\"]', '[\"LOTO Electric Circuits\",\"LOTO Valve Gas\"]', '[\"Prosedur Khusus\",\"Gambar P&ID\"]', '[\"Bahan Berbahaya dan beracun\",\"Peralatan jalan\\/listrik hidup\\/tersengat\",\"Mesin bergerak\\/berputar\",\"Longsoran\",\"Benda bergerak\"]', 'Tambahan', '[\"Topi Keselamatan yang sesuai\",\"Sepatu Keselamatan yang sesuai\",\"Harnes\\/Tali Pengaman\",\"Masker debu\\/gas\",\"Tambahan Lampu Penerangan\",\"Pos Pemeriksaan (barang dan data pribadi) \"]', 'Bola Lampu', 'Bendra Wardana', '2019-05-21', 'Wahyu Maruti Adjie', '0000-00-00', 'Librantara Erlangga', '2019-05-21', 'Librantara Erlangga', '2019-05-21', 'Bendra Wardana', '2019-05-14', 'Alasanya apa', 'Catatanya', '2019-05-21', '15 Hari', 'Doni Saputra', '2019-05-21', '12 Hari', 'Diwo None', 'Dede Sunandar', 'Wiwo Nubayanti', '2019-05-21', 'Dicki Indriyana', '2019-05-21', 'Prabowo ', '2019-05-21', 2);
COMMIT;

-- ----------------------------
-- Table structure for ikp
-- ----------------------------
DROP TABLE IF EXISTS `ikp`;
CREATE TABLE `ikp` (
  `no` varchar(100) NOT NULL,
  `lanjutan_no` int(100) NOT NULL,
  `tanggal_terbit` date NOT NULL,
  `tgl_akhir_terbit` date NOT NULL,
  `jam_kerja` varchar(30) NOT NULL,
  `jam_akhir_kerja` varchar(30) NOT NULL,
  `nama_pelaksana` varchar(100) NOT NULL,
  `perusahaan` varchar(100) NOT NULL,
  `jumlah_pekerja` int(100) NOT NULL,
  `lokasi` varchar(100) NOT NULL,
  `uraian_pekerjaan` text NOT NULL,
  `peralatan` varchar(300) NOT NULL,
  `izin_diperlukan` varchar(300) NOT NULL,
  `sifat_pekerjaan` varchar(300) NOT NULL,
  `isolasi_peralatan` varchar(300) NOT NULL,
  `lampiran` varchar(300) NOT NULL,
  `identiikasi_bahaya` varchar(400) NOT NULL,
  `identifikasi_tambahan` varchar(300) NOT NULL,
  `pengendalian_bahaya` varchar(500) NOT NULL,
  `permintaan_tambahan` varchar(300) NOT NULL,
  `nama1` varchar(150) NOT NULL,
  `date1` date NOT NULL,
  `nama2` varchar(150) NOT NULL,
  `date2` date NOT NULL,
  `nama3` varchar(150) NOT NULL,
  `date3` date NOT NULL,
  `nama4` varchar(150) NOT NULL,
  `date4` date NOT NULL,
  `nama` varchar(150) NOT NULL,
  `date` date NOT NULL,
  `alasan` text NOT NULL,
  `catatan` text NOT NULL,
  `date_penghentian` date NOT NULL,
  `waktu_penghentian` varchar(150) NOT NULL,
  `nama_penghentian` varchar(300) NOT NULL,
  `date_pengesahan` date NOT NULL,
  `waktu_pengesahan` varchar(150) NOT NULL,
  `nama_pengesahan` varchar(300) NOT NULL,
  `penutupan_izin` varchar(500) NOT NULL,
  `nama_penerima` varchar(350) NOT NULL,
  `date_penerima` date NOT NULL,
  `nama_pengawas` varchar(350) NOT NULL,
  `date_pengawas` date NOT NULL,
  `nama_pemberi` varchar(400) NOT NULL,
  `date_pemberi` date NOT NULL,
  `id_hira` int(40) DEFAULT NULL,
  PRIMARY KEY (`no`),
  KEY `ikp_ibfk1_id_hira` (`id_hira`),
  CONSTRAINT `ikp_ibfk1_id_hira` FOREIGN KEY (`id_hira`) REFERENCES `hira` (`no`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ikp
-- ----------------------------
BEGIN;
INSERT INTO `ikp` VALUES ('IKP-EJA0000001', 123456, '2019-05-15', '0000-00-00', '16.00', '14.00', 'Bendra Wardana', 'PT Pertamina Gas', 12, 'Oil Center Jakarta Pusat', '1. Pemasangan Kabel Fiber\r\n2. Pemasangan Kabel', 'Obeng dan Cangkul', '[\"Izin Kerja Isolasi Listrik\",\"Izin Kerja Penggalian\",\"Izin Kerja Pengangkatan\",\"Izin Kerja Ketinggian\"]', '[\"Normal\",\"T\\/A\"]', '[\"LOTO Electric Circuits\",\"LOTO Valve Gas\"]', '[\"Gambar P&ID\",\"TKO, TKI, TKPA\",\"HIRA\"]', '[\"Nyala api, percikan api\",\"Bahan mudah terbakar\",\"Pengangkatan Manual\\/alat angkat\",\"Ruang terbatas\\/kekurangan oksigen\",\"Bahaya Pencemaran Lingkungan\",\"Faktor Ergonomis\"]', 'Identifkasinya apa', '[\"Pelindung Telinga yang sesuai\",\"Sarung Tangan Keselamatan\",\"Harnes\\/Tali Pengaman\",\"Tirai Air\",\"Area Kerja Selalu Dibasahi\",\"Tanda Peringatan\\/rintangan\",\"Pengetesan HC gas terus menerus\",\"Dipassang Scaffolding\\/perancah\\/tanggah\",\"Bebas dari endapan yg explosive\\/toxic\",\"Semua sewer dalam jarak 15 m ditutup\",\"Absorben\"]', 'Bola Lampu', 'Bendra Wardana', '2019-05-21', 'Wahyu Maruti Adjie', '2019-05-21', 'Librantara Erlangga', '0000-00-00', 'Librantara Erlangga', '2019-05-21', 'Bendra Wardana', '2019-05-21', 'Aalasanya Seprti apa', 'Catatan nya apa', '2019-05-21', '15 Hari', 'Doni Saputra', '2019-05-21', '12 Hari', 'Deden', 'Dede Sunandar', 'Dono Purwanto', '2019-05-21', 'Dicki Indriyana', '2019-05-21', 'Dewi Sartika', '2019-05-21', 1);
COMMIT;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` varchar(15) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `status` int(10) NOT NULL,
  `role` int(10) NOT NULL DEFAULT '2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES ('admin', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'admin@dd', 1, 1);
INSERT INTO `user` VALUES ('NSArea', 'North Sumatera Area', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'user@add', 1, 2);
INSERT INTO `user` VALUES ('user', 'Central Sumatera Area', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'csarea@gmail.com', 1, 2);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
