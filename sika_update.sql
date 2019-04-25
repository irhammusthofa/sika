/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100130
 Source Host           : localhost:3306
 Source Schema         : sika

 Target Server Type    : MySQL
 Target Server Version : 100130
 File Encoding         : 65001

 Date: 24/04/2019 10:02:39
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
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of hira
-- ----------------------------
BEGIN;
INSERT INTO `hira` VALUES (1, '2019-04-24', '2019-04-24', '1', '2', '3', '4', '5', 'under maintenance', '6', 'normal', 'maintenance', '', 'izin kerja panas', '');
INSERT INTO `hira` VALUES (2, '2019-04-24', '2019-04-24', '4', '5', '6', '7', '8', 'standby', '9', 'normal', 'maintenance', '', 'izin kerja dingin', '');
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
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` varchar(15) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `status` int(10) NOT NULL,
  `role` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

SET FOREIGN_KEY_CHECKS = 1;
