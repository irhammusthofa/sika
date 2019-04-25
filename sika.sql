-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2019 at 02:06 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 5.6.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sika`
--

-- --------------------------------------------------------

--
-- Table structure for table `hira`
--

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
  `upload` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hira`
--

INSERT INTO `hira` (`no`, `date_mulai`, `date_selesai`, `pekerjaan`, `fungsi`, `pengawas`, `ringkasan_pek`, `equip_number`, `equip_status`, `no_notifikasi`, `work_status`, `lokasi_owner`, `tools`, `jenis_sika`, `upload`) VALUES
(24, '2019-04-23', '2019-04-23', 'Pemasangan Kabel FO									', 'PT Pertamina Gas										', 'Bendra Wardana	', '1. Memasang FO\r\n2. Memasang Router										', '123456', 'in service', '450021', 'normal', 'operation', '1. Cangkul\r\n2. Obeng										', 'izin kerja panas', '');

-- --------------------------------------------------------

--
-- Table structure for table `ikd`
--

CREATE TABLE `ikd` (
  `no` bigint(100) NOT NULL,
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
  `date_pemberi` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ikp`
--

CREATE TABLE `ikp` (
  `no` bigint(100) NOT NULL,
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
  `date_pemberi` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` varchar(15) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `status` int(10) NOT NULL,
  `role` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hira`
--
ALTER TABLE `hira`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `ikd`
--
ALTER TABLE `ikd`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `ikp`
--
ALTER TABLE `ikp`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hira`
--
ALTER TABLE `hira`
  MODIFY `no` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `ikd`
--
ALTER TABLE `ikd`
  MODIFY `no` bigint(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ikp`
--
ALTER TABLE `ikp`
  MODIFY `no` bigint(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
