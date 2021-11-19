-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2021 at 04:46 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portal_rsih`
--

-- --------------------------------------------------------

--
-- Table structure for table `aturandirutsotk`
--

CREATE TABLE `aturandirutsotk` (
  `id` int(11) NOT NULL,
  `unit` varchar(20) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `files` varchar(160) NOT NULL,
  `tgl_upload` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `corporatebylaw`
--

CREATE TABLE `corporatebylaw` (
  `id` int(11) NOT NULL,
  `unit` varchar(20) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `files` varchar(160) NOT NULL,
  `tgl_upload` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `formulir`
--

CREATE TABLE `formulir` (
  `id` int(11) NOT NULL,
  `unit` varchar(20) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `files` varchar(160) NOT NULL,
  `tgl_upload` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hospitalbylaw`
--

CREATE TABLE `hospitalbylaw` (
  `id` int(11) NOT NULL,
  `unit` varchar(20) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `files` varchar(160) NOT NULL,
  `tgl_upload` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kpn`
--

CREATE TABLE `kpn` (
  `id` int(11) NOT NULL,
  `unit` varchar(20) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `files` varchar(160) NOT NULL,
  `tgl_upload` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kspbp`
--

CREATE TABLE `kspbp` (
  `id` int(11) NOT NULL,
  `unit` varchar(20) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `files` varchar(160) NOT NULL,
  `tgl_upload` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `medicalbylaw`
--

CREATE TABLE `medicalbylaw` (
  `id` int(11) NOT NULL,
  `unit` varchar(20) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `files` varchar(160) NOT NULL,
  `tgl_upload` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mst_divisi`
--

CREATE TABLE `mst_divisi` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tgl_input` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mst_divisi`
--

INSERT INTO `mst_divisi` (`id`, `nama`, `tgl_input`) VALUES
(1, 'Marketing dan Keuangan', '2021-11-08 14:01:00'),
(2, 'Medik Keperawatan', '2021-11-08 14:01:00'),
(3, 'Sentral', '2021-11-08 14:02:56'),
(4, 'SDM dan Umum', '2021-11-08 14:02:56'),
(5, 'Pendapatan', '2021-11-08 14:03:07'),
(6, 'Komite dan SPI', '2021-11-08 14:03:07');

-- --------------------------------------------------------

--
-- Table structure for table `mst_jabatan`
--

CREATE TABLE `mst_jabatan` (
  `id` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `level` tinyint(1) NOT NULL,
  `tgl_input` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mst_jabatan`
--

INSERT INTO `mst_jabatan` (`id`, `nama`, `level`, `tgl_input`) VALUES
(1, 'Direktur', 0, '2021-11-08 15:42:45'),
(2, 'Manajer', 0, '2021-11-08 15:42:45'),
(3, 'Kepala Unit', 0, '2021-11-08 15:43:37'),
(4, 'Staf', 1, '2021-11-08 15:43:53'),
(5, 'superadmin', 0, '2021-11-08 15:46:01'),
(6, 'Ketua', 0, '2021-11-08 16:06:08');

-- --------------------------------------------------------

--
-- Table structure for table `mst_unit`
--

CREATE TABLE `mst_unit` (
  `id` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `ext_telepon` varchar(4) NOT NULL,
  `pimpinan` varchar(160) DEFAULT NULL,
  `jabatan` varchar(15) NOT NULL,
  `lokasi` varchar(160) DEFAULT NULL,
  `manajer` int(1) NOT NULL COMMENT '0: marketing keuangan, 1: keperawatan, 2: yanmed, 3: umum'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mst_unit`
--

INSERT INTO `mst_unit` (`id`, `nama`, `ext_telepon`, `pimpinan`, `jabatan`, `lokasi`, `manajer`) VALUES
(2, 'UNIT KEUANGAN', '2441', 'Mila Sopariah', 'Kepala Unit', 'Lantai 2, Gedung A', 0),
(3, 'UNIT AKUNTANSI', '2401', 'Nurdin', 'Kepala Unit', 'Lantai 2, Gedung A', 0),
(4, 'UNIT PEMASARAN', '2401', 'Hilmi Mubarok', 'Kepala Unit', 'Lantai 2, Gedung A', 0),
(5, 'UNIT IT', '1199', 'Tubagus Rizal Abdul Hamid', 'Kepala Unit', 'Lantai 1, Gedung A, Samping Kasir', 0),
(6, 'UNIT BISNIS', '1000', 'Adita Nur Faoziah', 'Kepala Unit', 'Lantai 1, Gedung A', 0),
(7, 'UNIT GAWAT DARURAT', '1111', 'Iman Nurjaman', 'Kepala Unit', 'Lantai 1, Gedung A', 1),
(8, 'UNIT RAWAT JALAN', '1101', 'Elis Dida Junica', 'Kepala Unit', 'Lantai 1, Gedung A', 1),
(9, 'UNIT RAWAT INAP', '', '', 'Kepala Unit', 'Lantai 2-4, Gedung B', 1),
(10, 'UNIT INTENSIF DEWASA', '2201', 'Hinda', 'Kepala Unit', 'Lantai 2, Gedung B', 1),
(11, 'UNIT INTENSIF ANAK', '2205', 'Resti', 'Kepala Unit', 'Lantai 2, Gedung B', 1),
(12, 'UNIT KAMAR OPERASI', '1201', 'Lia Setiawati', 'Kepala Unit', 'Lantai 2, Gedung A', 1),
(13, 'UNIT KAMAR BERSALIN', '1202', 'Mely', 'Kepala Unit', 'Lantai 2, Gedung A', 1),
(14, 'UNIT FARMASI', '2110', 'Dwi Ishmi Novanti', 'Kepala Unit', 'Lantai 1, Gedung B', 1),
(15, 'UNIT RADIOLOGI', '2101', 'Resti Septianisa', 'Kepala Unit', 'Lantai 1, Gedung B', 1),
(16, 'UNIT LABORATORIUM', '2103', 'Rima Karimah', 'Kepala Unit', 'Lantai 1, Gedung B', 1),
(17, 'UNIT REKAM MEDIS', '1209', 'Aceng Hilman', 'Kepala Unit', 'Lantai 2, Gedung A', 1),
(18, 'UNIT GIZI', '2204', 'Rahma', 'Kepala Unit', 'Lantai 2, Gedung B', 1),
(19, 'UNIT GAWAT DARURAT', '1111', 'Iman Nurjaman', 'Kepala Unit', 'Lantai 1, Gedung A', 2),
(20, 'UNIT RAWAT JALAN', '1101', 'Elis Dida Junica', 'Kepala Unit', 'Lantai 1, Gedung A', 2),
(21, 'UNIT RAWAT INAP', '', '', 'Kepala Unit', 'Lantai 2-4, Gedung B', 2),
(22, 'UNIT INTENSIF DEWASA', '2201', 'Hinda', 'Kepala Unit', 'Lantai 2, Gedung B', 2),
(23, 'UNIT INTENSIF ANAK', '2205', 'Resti', 'Kepala Unit', 'Lantai 2, Gedung B', 2),
(24, 'UNIT KAMAR OPERASI', '1201', 'Lia Setiawati', 'Kepala Unit', 'Lantai 2, Gedung A', 2),
(25, 'UNIT KAMAR BERSALIN', '1202', 'Mely', 'Kepala Unit', 'Lantai 2, Gedung A', 2),
(26, 'UNIT FARMASI', '2110', 'Dwi Ishmi Novanti', 'Kepala Unit', 'Lantai 1, Gedung B', 2),
(27, 'UNIT RADIOLOGI', '2101', 'Resti Septianisa', 'Kepala Unit', 'Lantai 1, Gedung B', 2),
(28, 'UNIT LABORATORIUM', '2103', 'Rima Karimah', 'Kepala Unit', 'Lantai 1, Gedung B', 2),
(29, 'UNIT REKAM MEDIS', '1209', 'Aceng Hilman', 'Kepala Unit', 'Lantai 2, Gedung A', 2),
(30, 'UNIT GIZI', '2204', 'Rahma', 'Kepala Unit', 'Lantai 2, Gedung B', 2),
(31, 'UNIT SDM & DIKLAT', '1206', 'Atri Fitri', 'Kepala Unit', '', 3),
(32, 'UNIT KESEKRETARIATAN', '1206', 'Rani Setia Utami', 'Kepala Unit', '', 3),
(33, 'UNIT UMUM', '1206', 'Rian S. Ariansyah', 'Kepala Unit', '', 3),
(34, 'UNIT LOGISTIK', '5101', 'Yeni', 'Kepala Unit', '', 3),
(35, 'UNIT BINATU', '5100', 'Selly Riantica', 'Kepala Unit', '', 3);

-- --------------------------------------------------------

--
-- Table structure for table `mst_user`
--

CREATE TABLE `mst_user` (
  `username` varchar(20) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `nama` varchar(160) DEFAULT NULL,
  `unit` int(11) DEFAULT NULL,
  `jabatan` varchar(20) DEFAULT NULL,
  `level` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mst_user`
--

INSERT INTO `mst_user` (`username`, `password`, `nama`, `unit`, `jabatan`, `level`) VALUES
('a', '0cc175b9c0f1b6a831c399e269772661', 'Wildan Auliana,A.Md.Kom', 1, 'superadmin', 0),
('aceng', '0cc175b9c0f1b6a831c399e269772661', 'Aceng Hilman, A.Md RMIK, SST', 0, 'Kepala Unit', 2),
('adita', '0cc175b9c0f1b6a831c399e269772661', 'Adita Nurfaoziyah,S.P', 0, 'Kepala Unit', 2),
('ami', '0cc175b9c0f1b6a831c399e269772661', 'Ami Amanda, SE', 0, 'Ketua', 2),
('atri', '0cc175b9c0f1b6a831c399e269772661', 'Atri Fitri Rahmi, S.S', 0, 'Kepala Unit', 2),
('depi', '0cc175b9c0f1b6a831c399e269772661', 'Depi Rismayanti', 0, 'Manajer', 2),
('dwi', '0cc175b9c0f1b6a831c399e269772661', 'Dwi Ishmi Novanti, S.Farm.,Apt', 0, 'Kepala Unit', 2),
('elis', '0cc175b9c0f1b6a831c399e269772661', 'Elis Dida Junica, A.Md Kep', 0, 'Kepala Unit', 2),
('hilmy', '0cc175b9c0f1b6a831c399e269772661', 'M. Hilmy Mubarak, S.Kom', 0, 'Kepala Unit', 2),
('hinda', '0cc175b9c0f1b6a831c399e269772661', 'Hinda Setiawati, A,Md Kep', 0, 'Kepala Unit', 2),
('ika', '0cc175b9c0f1b6a831c399e269772661', 'dr. Ika Sriwahyuni', 0, 'Ketua', 2),
('iman', '0cc175b9c0f1b6a831c399e269772661', 'Iman Nurjaman, S.Kep. Ners', 0, 'Kepala Unit', 2),
('iva', '0cc175b9c0f1b6a831c399e269772661', 'dr. Iva Tania', 0, 'Manajer', 2),
('lia', '0cc175b9c0f1b6a831c399e269772661', 'Lia Susilawati, S.Kep., Ners', 0, 'Kepala Unit', 2),
('maya', '0cc175b9c0f1b6a831c399e269772661', 'Maya Anggraini, Spd', 0, 'Manajer', 2),
('mila', '0cc175b9c0f1b6a831c399e269772661', 'Mila Sofariah, SE', 0, 'Kepala Unit', 2),
('nurdin', '0cc175b9c0f1b6a831c399e269772661', 'Nurdin, SE', 0, 'Kepala Unit', 2),
('rahcmawati', '0cc175b9c0f1b6a831c399e269772661', 'Rahcmawati , S.Gz', 0, 'Kepala Unit', 2),
('rani', '0cc175b9c0f1b6a831c399e269772661', 'Rani Setia Utami, A.Md Keb', 0, 'Kepala Unit', 1),
('rere', '0cc175b9c0f1b6a831c399e269772661', 'Resti Septianisa, A.Md Rad', 0, 'Kepala Unit', 2),
('resti', '0cc175b9c0f1b6a831c399e269772661', 'Resti Fauziah, A.Md Kep', 0, 'Kepala Unit', 2),
('rizal', '0cc175b9c0f1b6a831c399e269772661', 'Tubagus Rizal Abdul Hamid, S.T', 0, 'Kepala Unit', 2),
('ryan', '0cc175b9c0f1b6a831c399e269772661', 'Ryan Saeful Ariansyah,A.Md', 0, 'Kepala Unit', 2),
('selly', '0cc175b9c0f1b6a831c399e269772661', 'Selly Riantica F, S.Kom', 0, 'Kepala Unit', 2),
('wahyu', '0cc175b9c0f1b6a831c399e269772661', 'Wahyu Suprayogo, SE., MM', 0, 'Manajer', 2),
('yeni', '0cc175b9c0f1b6a831c399e269772661', 'Yeni Nuryeni, SE', 0, 'Kepala Unit', 2),
('yusti', '0cc175b9c0f1b6a831c399e269772661', 'Yusti Meliana,A.Md Keb', 0, 'Kepala Unit', 2);

-- --------------------------------------------------------

--
-- Table structure for table `notulensi`
--

CREATE TABLE `notulensi` (
  `id` int(11) NOT NULL,
  `unit` varchar(50) NOT NULL,
  `masalah` varchar(50) NOT NULL,
  `tindaklanjut` varchar(500) NOT NULL,
  `pic1` varchar(160) NOT NULL,
  `pic2` varchar(160) DEFAULT NULL,
  `pic3` varchar(160) DEFAULT NULL,
  `deadline` date NOT NULL,
  `deadline_baru` date DEFAULT NULL,
  `tgl_selesai` date DEFAULT NULL,
  `hasil` varchar(200) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `tgl_input` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tgl_update` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notulensi`
--

INSERT INTO `notulensi` (`id`, `unit`, `masalah`, `tindaklanjut`, `pic1`, `pic2`, `pic3`, `deadline`, `deadline_baru`, `tgl_selesai`, `hasil`, `status`, `tgl_input`, `tgl_update`) VALUES
(11, 'Pendapatan', 'Kerjasama dengan klinik', '-', 'M. Hilmy Mubarak, S.Kom', '-', '-', '2021-11-17', '0000-00-00', NULL, '', 0, '2021-11-10 12:25:38', '2021-11-10 12:27:07'),
(12, 'Pendapatan', 'Kerjasama dengan asuransi', '-', 'M. Hilmy Mubarak, S.Kom', '-', '-', '2021-11-17', '0000-00-00', NULL, '', 0, '2021-11-10 12:26:05', '2021-11-10 12:27:14'),
(13, 'Pendapatan', 'Kerjasama dengan praktek dokter', '-', 'M. Hilmy Mubarak, S.Kom', '-', '-', '2021-11-17', '0000-00-00', NULL, '', 0, '2021-11-10 12:26:31', '2021-11-10 12:27:21'),
(14, 'Pendapatan', 'Kerjasama dengan hotel', '-', 'M. Hilmy Mubarak, S.Kom', '-', '-', '2021-11-17', '0000-00-00', NULL, '', 0, '2021-11-10 12:26:58', '2021-11-10 12:27:28'),
(15, 'Pendapatan', 'Rincian tindakan bedah yang akan dijual', '-', 'dr. Iva Tania', '-', '-', '2021-11-17', '0000-00-00', NULL, '', 0, '2021-11-10 12:28:03', '2021-11-10 12:28:38'),
(16, 'Pendapatan', 'Menambah slot dokter 50%', '-', 'dr. Iva Tania', '-', '-', '2021-11-17', '0000-00-00', NULL, '', 0, '2021-11-10 12:37:39', '2021-11-10 12:37:48'),
(17, 'Pendapatan', 'Perhitungan BEP panoramic', '-', 'dr. Iva Tania', '-', '-', '2021-11-17', '0000-00-00', NULL, '', 0, '2021-11-10 12:41:47', '2021-11-10 12:41:57'),
(18, 'Pendapatan', 'Perdir. Insentif dokter jaga IGD', '-', 'dr. Iva Tania', '-', '-', '2021-11-17', '0000-00-00', NULL, '', 0, '2021-11-10 12:42:40', '2021-11-10 12:42:47'),
(19, 'Pendapatan', 'Strategi meningkatkan pasien perinatologi', '-', 'dr. Iva Tania', 'Depi Rismayanti', 'M. Hilmy Mubarak, S.Kom', '2021-11-17', '0000-00-00', NULL, '', 0, '2021-11-10 12:49:04', '2021-11-10 12:49:21'),
(20, 'Pendapatan', 'Promosi penunjang medis (CT-Scan dan Lab.)', '-', 'M. Hilmy Mubarak, S.Kom', '-', '-', '2021-11-17', '0000-00-00', NULL, '', 0, '2021-11-10 12:52:14', '2021-11-10 12:52:40'),
(21, 'SDM dan Umum', 'Pedoman Pengorganisasian Unit SDM dan Doklat', 'tgl 18 Nov 2021 dikirimkan Draft Pedoman Pengorganisasian ke Direktur', 'Atri Fitri Rahmi, S.S', '-', '-', '2021-11-18', '0000-00-00', NULL, '', 0, '2021-11-11 09:14:09', '2021-11-18 09:27:14'),
(22, 'SDM dan Umum', 'Menyusun Panduan Seragam Staf', '- Rencana dibuatkan Meeting Penyusunan Panduan Seragam Staf setelah Panduan selesai dikerjakan \r\n- Penyusunan Panduan Seragam dibedakan dengan Grooming', 'Atri Fitri Rahmi, S.S', '-', '-', '2021-11-21', '0000-00-00', NULL, '', 0, '2021-11-11 09:16:41', '2021-11-18 10:39:37'),
(23, 'SDM dan Umum', 'Pedoman Pengorganisasian Unit Kesekretariatan', 'tgl 18 Nov 2021 dikirimkan Draft Pedoman Pengorganisasian ke Direktur', 'Rani Setia Utami, A.Md Keb', '-', '-', '2021-11-18', '0000-00-00', NULL, '', 0, '2021-11-11 10:02:25', '2021-11-18 09:37:41'),
(24, 'SDM dan Umum', 'Pedoman Pengorganisasian Unit Logistik', 'tgl 18 Nov 2021 dikirimkan Draft Pedoman Pengorganisasian ke Direktur, perbaikan struktur organisasi', 'Yeni Nuryeni, SE', '-', '-', '2021-11-25', '0000-00-00', NULL, '', 0, '2021-11-11 10:04:48', '2021-11-18 10:16:28'),
(25, 'SDM dan Umum', 'Pedoman Pengorganisasian Unit Binatu', '.', 'Selly Riantica F, S.Kom', '-', '-', '2021-11-18', '0000-00-00', NULL, '', 0, '2021-11-11 10:05:21', '2021-11-11 10:19:25'),
(26, 'SDM dan Umum', 'Pedoman Pengorganisasian Unit Umum', '.tgl 18 Nov 2021 dikirimkan Draft Pedoman Pengorganisasian ke Direktur', 'Ryan Saeful Ariansyah,A.Md', '-', '-', '2021-11-18', '0000-00-00', NULL, '', 0, '2021-11-11 10:05:59', '2021-11-18 10:16:46'),
(27, 'Pendapatan', 'Pemindahan Lift ', '.', 'Ryan Saeful Ariansyah,A.Md', '--Pilih Salah Satu--', '--Pilih Salah Satu--', '2021-11-18', NULL, NULL, NULL, 0, '2021-11-11 11:18:14', NULL),
(28, 'SDM dan Umum', 'Pemindahan Lift', 'FPBTR, form sudah ke PT untuk persetujuan', 'Ryan Saeful Ariansyah,A.Md', '-', '-', '2021-11-18', '0000-00-00', NULL, '', 0, '2021-11-11 11:18:52', '2021-11-18 09:35:53'),
(29, 'SDM dan Umum', 'Upgrade Lift Gedung 2 (Abtech)', 'Vendor lain menawarkan penggantian semua, bila tetap penggantian mesin tetap di vendor ABTECH', 'Ryan Saeful Ariansyah,A.Md', '-', '-', '2021-11-18', '2021-11-25', NULL, '', 0, '2021-11-11 11:20:20', '2021-11-18 09:35:02'),
(30, 'SDM dan Umum', 'Penambahan Sumur ', 'Follow Up BPMPT untuk regulasi baru', 'Ryan Saeful Ariansyah,A.Md', '-', '-', '2021-11-18', '2021-11-25', NULL, '', 0, '2021-11-11 11:28:35', '2021-11-18 09:46:15'),
(31, 'SDM dan Umum', 'Upgrade Ambulance', 'Perbaikan Penawaran dari vendor karosering ', 'Ryan Saeful Ariansyah,A.Md', 'dr. Iva Tania', '-', '2021-11-18', '0000-00-00', NULL, '', 0, '2021-11-11 11:37:12', '2021-11-18 09:51:00'),
(32, 'SDM dan Umum', 'Penambahan PJU', 'FPBTR meminta persetujuan PT, Logistik Bidding (TRC)', 'Ryan Saeful Ariansyah,A.Md', '-', '-', '2021-11-18', '0000-00-00', NULL, '', 0, '2021-11-11 11:45:40', '2021-11-18 09:51:35'),
(33, 'SDM dan Umum', 'Peremajaan Taman', 'FBTR sudah acc PT, sedang proses bidding logistik', 'Ryan Saeful Ariansyah,A.Md', '-', '-', '2021-11-18', '0000-00-00', NULL, '', 0, '2021-11-11 11:46:06', '2021-11-18 09:52:09'),
(34, 'SDM dan Umum', 'Papan Siaga Bencana', 'Pendataan Jumlah Papan Siaga Bencana', 'Ryan Saeful Ariansyah,A.Md', '-', '-', '2021-11-18', '0000-00-00', NULL, '', 0, '2021-11-11 11:48:13', '2021-11-18 09:55:02'),
(35, 'SDM dan Umum', 'Perbaikan Sofa', 'FBTR dalam tahap persetujuan PT', 'Ryan Saeful Ariansyah,A.Md', '-', '-', '2021-11-18', '0000-00-00', NULL, '', 0, '2021-11-11 11:49:20', '2021-11-18 09:55:42'),
(36, 'SDM dan Umum', 'Pembersihan Jendela Luar', 'Sedang dilakukan, menuju gedung 2 ', 'Ryan Saeful Ariansyah,A.Md', '-', '-', '2021-11-18', '2021-11-25', NULL, '', 0, '2021-11-11 11:50:42', '2021-11-18 09:56:48'),
(37, 'SDM dan Umum', 'Penyusunan  Unit Cost Laundry', '-', 'Selly Riantica F, S.Kom', '--Pilih Salah Satu--', '--Pilih Salah Satu--', '2021-11-18', NULL, NULL, NULL, 0, '2021-11-11 11:52:42', NULL),
(38, 'SDM dan Umum', 'Wacana KSO Buana Raya ', '-', 'Selly Riantica F, S.Kom', '--Pilih Salah Satu--', '--Pilih Salah Satu--', '2021-11-18', NULL, NULL, NULL, 0, '2021-11-11 11:54:51', NULL),
(39, 'SDM dan Umum', 'Alur Pengadaan Barang\r\n', 'Membuat alur pengadaan barang sampai barang diterima', 'Yeni Nuryeni, SE', '-', '-', '2021-11-18', '2021-11-25', NULL, '', 0, '2021-11-11 12:06:05', '2021-11-18 10:04:10'),
(40, 'SDM dan Umum', 'Monitoring Absen Karyawan setiap pagi', '-', 'Atri Fitri Rahmi, S.S', '-', '-', '2021-11-18', '0000-00-00', NULL, '', 0, '2021-11-11 12:08:05', '2021-11-11 12:32:18'),
(41, 'SDM dan Umum', 'Ketentuan Paket dan HP', '-', 'Atri Fitri Rahmi, S.S', '--Pilih Salah Satu--', '--Pilih Salah Satu--', '2021-11-18', NULL, NULL, NULL, 0, '2021-11-11 12:32:51', NULL),
(42, 'SDM dan Umum', 'Manajemen Kursi Roda', '-', 'Ryan Saeful Ariansyah,A.Md', '--Pilih Salah Satu--', '--Pilih Salah Satu--', '2021-11-18', NULL, NULL, NULL, 0, '2021-11-11 12:47:53', NULL),
(43, 'Marketing dan Keuangan', 'evaluasi jampersal', 'hasil evaluasi jampersal memberikan selisih positif  untuk bulan agustus sebesar 35% dari total tagihan, september 32% dan bulan oktober sebesar 52%\r\n -cek untuk terakhir pembayaran dari dinas kesehatan\r\n-evaluasi perpanjangan kontrak jampersal\r\n-', 'Nurdin, SE', 'M. Hilmy Mubarak, S.Kom', '-', '2021-11-22', '0000-00-00', NULL, '', 0, '2021-11-15 10:11:09', '2021-11-19 08:09:22'),
(44, 'Marketing dan Keuangan', 'pembuatan referal fee untuk pasien jampersal', '- buat analisa besaran referal fee bagi pasien jampersal\r\n- target pemberian referal fee', 'Wahyu Suprayogo, SE., MM', '-', '-', '2021-11-22', '0000-00-00', NULL, '', 0, '2021-11-15 10:13:41', '2021-11-19 08:09:43'),
(45, 'Marketing dan Keuangan', 'PEDOMAN PENGORGANISASIAN', '- dIbuatkan 5 pedoman pengorganisasian dibawah manajer marketing dan keuangan meliputi\r\n- pedoman unit bisnis\r\n- pedoman keuangan\r\n-pedoman akuntansi\r\n-pedoman marketing\r\n-pedoman IT', 'Wahyu Suprayogo, SE., MM', 'Mila Sofariah, SE', 'Nurdin, SE', '2021-11-22', '0000-00-00', NULL, '', 0, '2021-11-15 10:53:09', '2021-11-19 08:09:48'),
(46, 'Marketing dan Keuangan', 'KAJIAN KLINIK MITRA UTAMA', '- Menyiapkan kajian mengenai regulasi klinik sesuai PMK', 'Wahyu Suprayogo, SE., MM', '-', '-', '2021-11-22', '0000-00-00', NULL, '', 0, '2021-11-15 10:55:33', '2021-11-19 08:09:51'),
(47, 'Marketing dan Keuangan', 'PERUBAHAN ALUR PEMBAYARAN', '-Siapkan skema pembayaran\r\n- flow chart pembayaran', 'Wahyu Suprayogo, SE., MM', 'Mila Sofariah, SE', '-', '2021-11-22', '0000-00-00', NULL, '', 0, '2021-11-15 10:57:35', '2021-11-19 08:09:54'),
(48, 'Marketing dan Keuangan', 'KERJASAMA DENGAN SELURUH ASURANSI', '- Asuransi yang tersedia di kabupaten garut\r\n-update data yang sudah bekerjasama dan belum bekerjasama', 'M. Hilmy Mubarak, S.Kom', '-', '-', '2021-11-22', '0000-00-00', NULL, '', 0, '2021-11-15 11:00:31', '2021-11-19 08:09:57'),
(49, 'SDM dan Umum', 'Penyusunan Perdir Panduan Gaji Pegawai ', '.', 'Maya Anggraini, Spd', 'Atri Fitri Rahmi, S.S', '-', '2021-11-25', '0000-00-00', NULL, '', 0, '2021-11-18 10:30:21', '2021-11-18 11:19:41');

-- --------------------------------------------------------

--
-- Table structure for table `nursingbylaw`
--

CREATE TABLE `nursingbylaw` (
  `id` int(11) NOT NULL,
  `unit` varchar(20) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `files` varchar(160) NOT NULL,
  `tgl_upload` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `panduan`
--

CREATE TABLE `panduan` (
  `id` int(11) NOT NULL,
  `unit` varchar(20) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `files` varchar(160) NOT NULL,
  `tgl_upload` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pedoman`
--

CREATE TABLE `pedoman` (
  `id` int(11) NOT NULL,
  `unit` varchar(20) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `files` varchar(160) NOT NULL,
  `tgl_upload` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sdrs`
--

CREATE TABLE `sdrs` (
  `id` int(11) NOT NULL,
  `unit` varchar(20) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `files` varchar(160) NOT NULL,
  `tgl_upload` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `spo`
--

CREATE TABLE `spo` (
  `id` int(11) NOT NULL,
  `unit` varchar(20) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `files` varchar(160) NOT NULL,
  `tgl_upload` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `spo`
--

INSERT INTO `spo` (`id`, `unit`, `judul`, `deskripsi`, `files`, `tgl_upload`) VALUES
(1, 'UNIT IT', 'SPO Install Ulang PC atau Laptop', 'Cara Install Ulang PC atau Laptop', '../../files/UNIT IT-SPO Install Ulang PC atau Laptop.pdf', '2021-11-19 10:21:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aturandirutsotk`
--
ALTER TABLE `aturandirutsotk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `corporatebylaw`
--
ALTER TABLE `corporatebylaw`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `formulir`
--
ALTER TABLE `formulir`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hospitalbylaw`
--
ALTER TABLE `hospitalbylaw`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kpn`
--
ALTER TABLE `kpn`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kspbp`
--
ALTER TABLE `kspbp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicalbylaw`
--
ALTER TABLE `medicalbylaw`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mst_divisi`
--
ALTER TABLE `mst_divisi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mst_jabatan`
--
ALTER TABLE `mst_jabatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mst_unit`
--
ALTER TABLE `mst_unit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mst_user`
--
ALTER TABLE `mst_user`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `notulensi`
--
ALTER TABLE `notulensi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nursingbylaw`
--
ALTER TABLE `nursingbylaw`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `panduan`
--
ALTER TABLE `panduan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pedoman`
--
ALTER TABLE `pedoman`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sdrs`
--
ALTER TABLE `sdrs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spo`
--
ALTER TABLE `spo`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aturandirutsotk`
--
ALTER TABLE `aturandirutsotk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `corporatebylaw`
--
ALTER TABLE `corporatebylaw`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `formulir`
--
ALTER TABLE `formulir`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hospitalbylaw`
--
ALTER TABLE `hospitalbylaw`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kpn`
--
ALTER TABLE `kpn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kspbp`
--
ALTER TABLE `kspbp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `medicalbylaw`
--
ALTER TABLE `medicalbylaw`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mst_divisi`
--
ALTER TABLE `mst_divisi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mst_jabatan`
--
ALTER TABLE `mst_jabatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mst_unit`
--
ALTER TABLE `mst_unit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `notulensi`
--
ALTER TABLE `notulensi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `nursingbylaw`
--
ALTER TABLE `nursingbylaw`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `panduan`
--
ALTER TABLE `panduan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pedoman`
--
ALTER TABLE `pedoman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sdrs`
--
ALTER TABLE `sdrs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spo`
--
ALTER TABLE `spo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
