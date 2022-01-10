-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 23, 2021 at 07:29 AM
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
  `unit` varchar(50) NOT NULL,
  `judul` varchar(255) NOT NULL,
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
  `unit` varchar(50) NOT NULL,
  `judul` varchar(255) NOT NULL,
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
  `unit` varchar(255) NOT NULL,
  `judul` varchar(255) NOT NULL,
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
  `unit` varchar(50) NOT NULL,
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
  `unit` varchar(50) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `files` varchar(160) NOT NULL,
  `tgl_upload` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kpn`
--

INSERT INTO `kpn` (`id`, `unit`, `judul`, `deskripsi`, `files`, `tgl_upload`) VALUES
(1, 'KEBIJAKAN PRONAS', 'KEBIJAKAN PROGRAM NASIONAL', 'Peraturan Direktur Rumah Sakit Intan Husada Nomor 3515/A000/XI/2021 Tentang Kebijakan Program Nasional', '../../files/KEBIJAKAN PRONAS-KEBIJAKAN PROGRAM NASIONAL.pdf', '2021-11-26 08:55:33');

-- --------------------------------------------------------

--
-- Table structure for table `kspbp`
--

CREATE TABLE `kspbp` (
  `id` int(11) NOT NULL,
  `unit` varchar(50) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `files` varchar(160) NOT NULL,
  `tgl_upload` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kspbp`
--

INSERT INTO `kspbp` (`id`, `unit`, `judul`, `deskripsi`, `files`, `tgl_upload`) VALUES
(1, 'KEBIJAKAN STANDAR PBP', 'KEBIJAKAN STANDAR PELAYANAN BERFOKUS PASIEN', 'Peraturan Direktur Rumah Sakit Intan Husada Nomor 3523/A000/XI/2021 Tentang Standar Pelayanan Berfokus Pasien', '../../files/KEBIJAKAN STANDAR PBP-KEBIJAKAN STANDAR PELAYANAN BERFOKUS PASIEN.pdf', '2021-11-26 09:26:19');

-- --------------------------------------------------------

--
-- Table structure for table `medicalbylaw`
--

CREATE TABLE `medicalbylaw` (
  `id` int(11) NOT NULL,
  `unit` varchar(50) NOT NULL,
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
(35, 'UNIT BINATU', '5100', 'Selly Riantica', 'Kepala Unit', '', 3),
(36, 'KOMITE PPI', '', NULL, 'unit', NULL, 4),
(37, 'KOMITE KEPERAWATAN', '', NULL, 'unit', NULL, 4),
(38, 'KOMITE SPI', '', NULL, 'unit', NULL, 4);

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
('baga', '0cc175b9c0f1b6a831c399e269772661', 'Baga Erlangga', 0, 'Kepala Unit', 2),
('depi', '0cc175b9c0f1b6a831c399e269772661', 'Depi Rismayanti', 0, 'Manajer', 2),
('dwi', '0cc175b9c0f1b6a831c399e269772661', 'Dwi Ishmi Novanti, S.Farm.,Apt', 0, 'Kepala Unit', 2),
('elis', '0cc175b9c0f1b6a831c399e269772661', 'Elis Dida Junica, A.Md Kep', 0, 'Kepala Unit', 2),
('firda', '0cc175b9c0f1b6a831c399e269772661', 'Firda Dzulfahmiyanti Gandara S.K.M', 0, 'Kepala Unit', 2),
('hilmy', '0cc175b9c0f1b6a831c399e269772661', 'M. Hilmy Mubarak, S.Kom', 0, 'Kepala Unit', 2),
('hinda', '0cc175b9c0f1b6a831c399e269772661', 'Hinda Setiawati, A,Md Kep', 0, 'Kepala Unit', 2),
('ika', '0cc175b9c0f1b6a831c399e269772661', 'dr. Ika Sriwahyuni', 0, 'Ketua', 2),
('iman', '0cc175b9c0f1b6a831c399e269772661', 'Iman Nurjaman, S.Kep. Ners', 0, 'Kepala Unit', 2),
('iva', '0cc175b9c0f1b6a831c399e269772661', 'dr. Iva Tania', 0, 'Manajer', 2),
('lia', '0cc175b9c0f1b6a831c399e269772661', 'Lia Susilawati, S.Kep., Ners', 0, 'Kepala Unit', 2),
('maya', '0cc175b9c0f1b6a831c399e269772661', 'Maya Anggraini, Spd', 0, 'Manajer', 2),
('mila', '0cc175b9c0f1b6a831c399e269772661', 'Mila Sofariah, SE', 0, 'Kepala Unit', 2),
('nurdin', '0cc175b9c0f1b6a831c399e269772661', 'Nurdin, SE', 0, 'Kepala Unit', 2),
('raden', '0cc175b9c0f1b6a831c399e269772661', 'Rd. Iman Nurjaman SE', 0, 'Kepala Unit', 2),
('rahcmawati', '0cc175b9c0f1b6a831c399e269772661', 'Rahcmawati , S.Gz', 0, 'Kepala Unit', 2),
('rani', '0cc175b9c0f1b6a831c399e269772661', 'Rani Setia Utami, A.Md Keb', 0, 'Kepala Unit', 1),
('rere', '0cc175b9c0f1b6a831c399e269772661', 'Resti Septianisa, A.Md Rad', 0, 'Kepala Unit', 2),
('resti', '0cc175b9c0f1b6a831c399e269772661', 'Resti Fauziah, A.Md Kep', 0, 'Kepala Unit', 2),
('rizal', '0cc175b9c0f1b6a831c399e269772661', 'Tubagus Rizal Abdul Hamid, S.T', 0, 'Kepala Unit', 1),
('ryan', '0cc175b9c0f1b6a831c399e269772661', 'Ryan Saeful Ariansyah,A.Md', 0, 'Kepala Unit', 2),
('selly', '0cc175b9c0f1b6a831c399e269772661', 'Selly Riantica F, S.Kom', 0, 'Kepala Unit', 2),
('ucit', '0cc175b9c0f1b6a831c399e269772661', 'Tresna Suci Novalani Wilden', 0, 'Kepala Unit', 2),
('wahyu', '0cc175b9c0f1b6a831c399e269772661', 'Wahyu Suprayogo, SE., MM', 0, 'Manajer', 2),
('yeliani', '0cc175b9c0f1b6a831c399e269772661', 'Yeliani Rachmi Fauzi', 0, 'Kepala Unit', 2),
('yeni', '0cc175b9c0f1b6a831c399e269772661', 'Yeni Nuryeni, SE', 0, 'Kepala Unit', 2),
('yusti', '0cc175b9c0f1b6a831c399e269772661', 'Yusti Meliana,A.Md Keb', 0, 'Kepala Unit', 2);

-- --------------------------------------------------------

--
-- Table structure for table `notulensi`
--

CREATE TABLE `notulensi` (
  `id` int(11) NOT NULL,
  `unit` varchar(50) NOT NULL,
  `masalah` text NOT NULL,
  `tindaklanjut` text NOT NULL,
  `pic1` varchar(160) NOT NULL,
  `pic2` varchar(160) DEFAULT NULL,
  `pic3` varchar(160) DEFAULT NULL,
  `deadline` date NOT NULL,
  `deadline_baru` date DEFAULT NULL,
  `tgl_selesai` date DEFAULT NULL,
  `hasil` varchar(2000) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `tgl_input` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tgl_update` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notulensi`
--

INSERT INTO `notulensi` (`id`, `unit`, `masalah`, `tindaklanjut`, `pic1`, `pic2`, `pic3`, `deadline`, `deadline_baru`, `tgl_selesai`, `hasil`, `status`, `tgl_input`, `tgl_update`) VALUES
(11, 'Marketing dan Keuangan', 'Kerjasama dengan klinik', 'Progress tgl 07-12-2021\r\nDikabupaten Garut ada 73 Klinik Pratama\r\n- Sudah kerjasama : 53 Klinik (Tambah klinik Pratama tarogong, Group Klinik padjajaran) \r\n- Belum kerjasama : 20 Klinik', 'M. Hilmy Mubarak, S.Kom', '-', '-', '2021-11-17', '2021-12-22', NULL, '', 0, '2021-11-10 12:25:38', '2021-12-15 08:49:21'),
(12, 'Marketing dan Keuangan', 'Kerjasama dengan asuransi', 'Update tgl 07/12/2021\r\nJumlah Asuransi : 66 Asuransi\r\n- Sudah bekerjasama : 51 Asuransi\r\n- Sedang proses : 12 Asuransi\r\n- Belum proses : 3 Asuransi\r\nrevisi surat penawaran kerjasama', 'M. Hilmy Mubarak, S.Kom', '-', '-', '2021-11-17', '2021-12-22', NULL, '', 0, '2021-11-10 12:26:05', '2021-12-15 08:50:41'),
(13, 'Marketing dan Keuangan', 'Kerjasama dengan praktek dokter', 'Jumlah dokter praktek : 281 dokter\r\n- Sudah bekerjasama : 116 dokter\r\n- Belum bekerjasama : 165 dokter', 'M. Hilmy Mubarak, S.Kom', '-', '-', '2021-11-17', '2021-11-27', NULL, '', 0, '2021-11-10 12:26:31', '2021-12-06 08:14:09'),
(14, 'Marketing dan Keuangan', 'Kerjasama dengan hotel', 'Target kerjasama :\r\n1. Santika : bertemu tanggal 21-12-2021\r\n2. Harmoni\r\n3. Cahaya Villa\r\n4. Sabda Alam\r\n5. Sumber Alam\r\n6. Fave Hotel\r\n7. Sampireun : Bertemu tanggal 20-12-2021\r\n\r\nMarketing In Charge : Novie Masayu Azan', 'M. Hilmy Mubarak, S.Kom', '-', '-', '2021-11-17', '2021-12-27', NULL, '', 0, '2021-11-10 12:26:58', '2021-12-20 10:33:33'),
(15, 'Pendapatan', 'Rincian tindakan bedah yang akan dijual', 'Tindakan yang akan dijual :\r\n1. Tonsilektomi\r\n2. Appendiktomi\r\n3. Sirkumsisi\r\n4. SC Eras\r\n5. Katarak\r\n6. Batu empedu\r\n\r\n- Data excel tindakan sudah diserahkan ke bagian keuangan', 'dr. Iva Tania', '-', '-', '2021-11-17', '2021-11-27', NULL, '', 0, '2021-11-10 12:28:03', '2021-12-01 09:48:18'),
(16, 'Pendapatan', 'Menambah slot dokter 50%', '- Dibahas lebih lanjut dengan komite medik\r\n- Kolaborasi dengan marketing internal untuk komunikasi dengan dokter', 'dr. Iva Tania', 'M. Hilmy Mubarak, S.Kom', '-', '2021-11-17', '2021-12-08', NULL, '', 0, '2021-11-10 12:37:39', '2021-12-01 09:55:28'),
(17, 'Pendapatan', 'Perhitungan BEP panoramic', '- Tarif panoramic sudah ada\r\n- Tarif cefalometri belum ada', 'dr. Iva Tania', '-', '-', '2021-11-17', '2021-12-08', NULL, '', 0, '2021-11-10 12:41:47', '2021-12-01 09:57:27'),
(18, 'Pendapatan', 'Perdir. Insentif dokter jaga IGD', '- Akan digabungkan dengan perdir. gaji dokter jaga', 'dr. Iva Tania', '-', '-', '2021-11-17', '2021-12-08', NULL, '', 0, '2021-11-10 12:42:40', '2021-12-01 09:59:26'),
(19, 'Pendapatan', 'Strategi meningkatkan pasien perinatologi', '- Buat paket partus spontan\r\n  - BMHP jampersal = BMHP paket partus kelas 3\r\n- Fee bidan jampersal sementara di hold', 'dr. Iva Tania', 'Depi Rismayanti', 'Nurdin, SE', '2021-11-17', '2021-12-08', NULL, '', 0, '2021-11-10 12:49:04', '2021-12-01 10:04:48'),
(20, 'Marketing dan Keuangan', 'Promosi penunjang medis (CT-Scan dan Lab.)', 'Yang sudah dilakukan : Pembuatan design banner\r\nRencana penempatan : Akrilik\r\nProses pemasangan akrilik : tgl 21-12-2021', 'Firda Dzulfahmiyanti Gandara S.K.M', '-', '-', '2021-11-17', '2021-12-27', NULL, '', 0, '2021-11-10 12:52:14', '2021-12-20 10:34:52'),
(21, 'SDM dan Umum', 'Pedoman Pengorganisasian Unit SDM dan Diklat', 'tgl 18 Nov 2021 dikirimkan Draft Pedoman Pengorganisasian ke Direktur\r\ntgl 25 Nov 2021 Draft Pedoman Pengorganisasian dalam tahap pengesahan Direktur\r\n-Pedoman sudah di Upload tanggal 27 November 2021', 'Atri Fitri Rahmi, S.S', '-', '-', '2021-11-18', '0000-00-00', NULL, '', 2, '2021-11-11 09:14:09', '2021-12-02 14:58:06'),
(22, 'SDM dan Umum', 'Menyusun Panduan Seragam Staf', '- Rencana dibuatkan Meeting Penyusunan Panduan Seragam Staf setelah Panduan selesai dikerjakan \r\n- Penyusunan Panduan Seragam dibedakan dengan Grooming\r\n- Gambar dalam proses pembuatan design (Design gambar di update minggu ini maksimal) \r\n9 Desember 2021\r\n- Sudah masuk ke PT meminta masukan dan persetujuan, FU tanggal 9 Desember 2021\r\n- Target 16 Desember 2021 utk PO\r\nTanggal 20 Desember 2021\r\n- Panduan Proses Pengesahan Direktur \r\n- Proses review kembali untuk seragam runner laundry, OB, pramusaji, perbantuan dll agar dimasukan ke panduan \r\n- PO dilakukan setelah negosiasi harga baju dan perhitungan qty-nya\r\n- Final Harga untuk seragam 15 % acc untuk diskon, akan lebih baik apabila nego diskon >15% ', 'Atri Fitri Rahmi, S.S', '-', '-', '2021-11-21', '2021-12-23', NULL, '', 2, '2021-11-11 09:16:41', '2021-12-23 09:22:47'),
(23, 'SDM dan Umum', 'Pedoman Pengorganisasian Unit Kesekretariatan', 'tgl 18 Nov 2021 dikirimkan Draft Pedoman Pengorganisasian ke Direktur\r\n- Dalam tahap pengesahan direktur (Penyesuaian dengan tata kelola naskah)\r\n- Dalam tahap penambahan isi pedoman ditambahkan dengan struktur manajer umum sdm, asisten manajer dan admin umum dan sdm\r\n9 Desember 2021 \r\n- Proses pengesahan\r\n14 Desember 2021\r\nUpload di Portal RSIH ', 'Rani Setia Utami, A.Md Keb', '-', '-', '2021-11-18', '0000-00-00', NULL, '', 2, '2021-11-11 10:02:25', '2021-12-20 15:11:17'),
(24, 'SDM dan Umum', 'Pedoman Pengorganisasian Unit Logistik', '-tgl 2 Desember 2021 proses pengesahan di sekre\r\n- tgl 18 Nov 2021 dikirimkan Draft Pedoman Pengorganisasian ke Direktur, perbaikan struktur organisasi \r\n- Dalam tahap review direktur\r\n9 Desember 2021\r\n- 8 Desember sudah di upload ke portal rsih', 'Yeni Nuryeni, SE', '-', '-', '2021-11-25', '0000-00-00', NULL, '', 2, '2021-11-11 10:04:48', '2021-12-09 09:31:15'),
(25, 'SDM dan Umum', 'Pedoman Pengorganisasian Unit Binatu', '- 2 Desember 2021 Proses Pengesahan, sudah sampai manajer  \r\n-Draft Pedoman Pengorganisasian Unit Binatu di kirim ke Direktur 25 November 2021\r\n9 Desember 2021\r\n- sudah di upload ke portal tanggal 7 Desember 2021', 'Selly Riantica F, S.Kom', '-', '-', '2021-11-18', '0000-00-00', NULL, '', 2, '2021-11-11 10:05:21', '2021-12-09 09:31:38'),
(26, 'SDM dan Umum', 'Pengajuan Kontrak Kerja Sama Pemeriksaan Sampel Lingkungan Untuk 3 tahun ke depan (TRC)', '9 Desember 2021\r\nUntuk Laboratorium PDAM Bandung kontrak 3 tahun, tahap legal untuk penyusunan PKS, nilainya 160jt \r\n23 Desember 2021 \r\nPengajuan kerjasama sudah Acc dari PT, menunggu pencairan ', 'Ryan Saeful Ariansyah,A.Md', '-', '-', '2021-12-09', '2021-12-16', NULL, '', 2, '2021-11-11 10:05:59', '2021-12-23 09:24:25'),
(27, 'Pendapatan', 'Pemindahan Lift ', '.', 'Ryan Saeful Ariansyah,A.Md', '--Pilih Salah Satu--', '--Pilih Salah Satu--', '2021-11-18', NULL, NULL, NULL, 0, '2021-11-11 11:18:14', NULL),
(28, 'SDM dan Umum', 'Pemindahan Lift', '- FPBTR, form sudah ke PT untuk persetujuan\r\n- Dalam proses Bidding ke PT (target selesai 27 November 2021)\r\n- 2 Desember 2021 \r\nBidding menunggu persetujuan PT, masuk tanggal 1 Desember 2021\r\n- 9 Desember 2021\r\nSudah tahap PO, vendor mengirimkan schedule pengerjaan \r\nPengerjaan di bulan januari minggu ke-2 \r\n20 Desember 2021\r\nInvoice sudah masuk \r\n', 'Ryan Saeful Ariansyah,A.Md', '-', '-', '2021-11-18', '2021-12-23', NULL, '', 0, '2021-11-11 11:18:52', '2021-12-20 16:17:08'),
(29, 'SDM dan Umum', 'Upgrade Lift Gedung 2 (Abtech)', '-Vendor lain menawarkan penggantian semua, bila tetap penggantian mesin tetap di vendor ABTECH\r\n- FPBTR menunggu persetujuan PT\r\n- 2 Desember 2021\r\nProses Bidding persetujuan Manajer Keuangan\r\n- 9 Desember 2021\r\nProses Bidding \r\nPengerjaan setelaan pemindahan lift, sekitar di minggu ketiga bulan Februari\r\n20 Desember 2021\r\nInvoice sudah masuk \r\nPengerjaan Minggu ke2 bulan Februari (Pengerjaan kurang lebih 2 bulan)', 'Ryan Saeful Ariansyah,A.Md', '-', '-', '2021-11-18', '2021-11-25', NULL, '', 0, '2021-11-11 11:20:20', '2021-12-20 16:18:18'),
(30, 'SDM dan Umum', 'Penambahan Sumur ', '- Follow Up BPMPT untuk regulasi baru\r\n- 25 November 2021\r\nFBPTR (Pengerjaan dan Perizinan) target masuk tanggal 25 November ke Direktur \r\n- 2 Desember 2021 \r\nProses Bidding (negosiasi dengan vendor)\r\n- 9 Desember 2021\r\nProses Bidding \r\n20 Desember 2021\r\nSudah PO dan invoice sudah masuk \r\nProses pembayaran DP\r\n23 Desember 2021\r\n- Kendala izin warga (koordinasi dengan PT untuk CSR) \r\n- Koordinasi dengan PT untuk titik penambahan sumur (sesuai dengan site plan)', 'Ryan Saeful Ariansyah,A.Md', '-', '-', '2021-11-18', '2021-11-25', NULL, '', 0, '2021-11-11 11:28:35', '2021-12-23 09:28:02'),
(31, 'SDM dan Umum', 'Upgrade Ambulance', '-Perbaikan Penawaran dari vendor karosering \r\n- Proses Bidding di Logistik\r\n- Alkes koordinasi manajer pelayanan \r\n- 2 Desember 2021\r\nFollow Up SPH Vendor \r\n- 9 Desember 2021\r\nPerbaikan Mesin sudah PO \r\nEksterior dan alkesnya masih proses bidding\r\n- 20 Desember 2021\r\nPO Eksterior dan Alkes Ambulance\r\nInvoice sudah ada\r\n23 Desember 2021\r\nFollow Up ke BRI untuk ambulance CSR ', 'Ryan Saeful Ariansyah,A.Md', 'dr. Iva Tania', '-', '2021-11-18', '2021-12-23', NULL, '', 0, '2021-11-11 11:37:12', '2021-12-23 09:30:31'),
(32, 'SDM dan Umum', 'Penambahan PJU', 'FPBTR meminta persetujuan PT, Logistik Bidding (TRC)\r\n- Bidding Logistik\r\n- 2 Desember 2021 \r\nProses Bidding mencari vendor lain untuk pembanding\r\n- 9 Desember 2021 \r\nProses Bidding\r\n20 Desember 2021\r\nSudah PO dan invoice\r\n23 Desember 2021\r\nMinggu awal Januari pengerjaan, lama pengerjaan 3 minggu', 'Ryan Saeful Ariansyah,A.Md', '-', '-', '2021-11-18', '0000-00-00', NULL, '', 0, '2021-11-11 11:45:40', '2021-12-23 09:31:30'),
(33, 'SDM dan Umum', 'Peremajaan Taman', 'FBTR sudah acc PT, sedang proses bidding logistik\r\n- Logistik mencari vendor pembanding (Proses Bidding)\r\n2 Desember 2021\r\n- Mapping dan Perinciannya \r\n9 Desember 2021\r\nSudah PO dan DP \r\n20 Desember 2021 \r\nDalam proses pengerjaan', 'Ryan Saeful Ariansyah,A.Md', '-', '-', '2021-11-18', '0000-00-00', NULL, '', 0, '2021-11-11 11:46:06', '2021-12-20 16:23:46'),
(34, 'SDM dan Umum', 'Papan Siaga Bencana dan Pengadaan helm serta gantungannya', '- Pendataan Jumlah Papan Siaga Bencana\r\n- Pembuatan FPBTR ke Direktur (target 25 Nov 2021) \r\n- Lampirkan Jumlah perunit\r\n- 2 Desember 2021 \r\nProses Bidding\r\n- 9 Desember 2021\r\nProses Bidding\r\n20 Desember 2021\r\nPersetujuan design papan siaga bencana \r\npengadaan helm -> menunggu SPH vendor \r\nGantungan helm -> menunggu SPH vendor\r\n23 Desember 2021\r\nProses FPBTR untuk pengadaan helm dan gantungan (pending) ', 'Ryan Saeful Ariansyah,A.Md', '-', '-', '2021-11-18', '2021-12-23', NULL, '', 0, '2021-11-11 11:48:13', '2021-12-23 09:32:41'),
(35, 'SDM dan Umum', 'Perbaikan Sofa', '- FPBTR dalam tahap persetujuan PT\r\n- Proses Bidding \r\n- 2 Desember 2021 \r\nSampling bahan dalam proses bidding\r\n- 9 Desember 2021\r\nProses PO \r\n20 Desember 2021\r\nPersetujuan PT -> memilih Devin Meubel namun bahan tidak sesuai \r\nMelanjutkan ke vendor lainnya -> MS Meubel untuk PO (20 Desember 2021)\r\n23 Desember 2021\r\nPO perbaikan sofa, menunggu pencairan dari keuangan', 'Ryan Saeful Ariansyah,A.Md', '-', '-', '2021-11-18', '0000-00-00', NULL, '', 0, '2021-11-11 11:49:20', '2021-12-23 09:33:13'),
(36, 'SDM dan Umum', 'Pembersihan Jendela Luar', '- Sudah selesai', '-', '-', '-', '2021-11-25', '2021-11-25', NULL, '', 2, '2021-11-11 11:50:42', '2021-11-25 10:08:40'),
(37, 'SDM dan Umum', 'Penyusunan Unit Cost Laundry Rp. 5.000,-', 'Dalam tahap perhitungan kembali unit cost mencapai Rp. 5.000\r\n- Presentasi 2 Desember untuk Unit Cost dengan Manajer Mkt dan Keuangan\r\n-2 Desember 2021\r\nUpdate tarif data satu tahun \r\n9 Desember 2021\r\nDibahas setiap minggu ke-2 utk bahasan unit cost, utk melihat uc tiap bulannya', 'Selly Riantica F, S.Kom', '-', '-', '2021-11-18', '2022-01-06', NULL, '', 0, '2021-11-11 11:52:42', '2021-12-20 16:28:05'),
(38, 'SDM dan Umum', 'Wacana KSO Buana Raya ', '- Bulan Desember presentasi Buana Raya\r\n- 2 Desember 2021\r\nRencana presentasi buana raya pada pertengahan bulan Desember 2021\r\n9 Desember 2021\r\nSudah dilakukan presentasi di tanggal 7 Desember, belum ada FU lagi utk selanjutnya\r\n20 Desember 2021 \r\nTidak jadi', 'Selly Riantica F, S.Kom', '-', '-', '2021-11-18', '2021-12-09', NULL, '', 2, '2021-11-11 11:54:51', '2021-12-20 16:28:45'),
(39, 'SDM dan Umum', 'Alur Pengadaan Barang\r\n', '- Membuat alur pengadaan barang sampai barang diterima\r\n- SPO sudah ada \r\n- Alur tahap pembuatan di aplikasi visio\r\n- 2 Desember 2021\r\nProses penyusunan Alur Pengadaan Barang dengan aplikasi visio\r\n9 Desember 2021\r\nProses penyusunan Alur Pengadaan Barang dengan aplikasi visio', 'Yeni Nuryeni, SE', '-', '-', '2021-11-18', '2022-01-06', NULL, '', 0, '2021-11-11 12:06:05', '2021-12-09 10:08:14'),
(40, 'SDM dan Umum', 'Absensi Karyawan Update', 'Dikirim melalui email Manajer ,\r\nKoordinasi IT\r\n9 Desember 2021\r\nTim IT masih menyusun koding untuk absen karyawan \r\n23 Desember 2021 \r\nDibatalkan ', '-', '-', '-', '2021-12-02', '0000-00-00', NULL, '', 2, '2021-11-11 12:08:05', '2021-12-23 09:40:27'),
(41, 'SDM dan Umum', 'Ketentuan (Paket (Karyawan) dan Penggunaan HP)', '- Membuat Internal Memo untuk ketentuan tsb\r\n- Internal memo sudah di edarkan tanggal 30 November 2021', 'Atri Fitri Rahmi, S.S', '-', '-', '2021-11-18', '2021-12-02', NULL, '', 2, '2021-11-11 12:32:51', '2021-12-02 15:50:38'),
(42, 'SDM dan Umum', 'Manajemen Kursi Roda ', '- FPBTR untuk stick fiber\r\n- 2 Desember 2021\r\nFPBTR sudah masuk ke logistik tanggal 2 Desember 2021 \r\nTarget 9 Desember 2021 ada Draft SPO, Buku Peminjaman Kursi Roda\r\n9 Desember 2021\r\n- Revisi alur dan SPO \r\n- Pengadaan benderanya\r\n20 Desember 2021 \r\n- SPO sudah di pisah (dalam proses pengerjaan)\r\n- Stick Fiber sudah PO\r\n- Bendera dalam tahap design\r\n23 Desember 2021\r\n- Design bendera sudah ada \r\n- Koordinasi dengan digital marketing untuk revisi design bendera ', 'Ryan Saeful Ariansyah,A.Md', '-', '-', '2021-11-18', '2021-12-09', NULL, '', 0, '2021-11-11 12:47:53', '2021-12-23 09:36:04'),
(43, 'Marketing dan Keuangan', 'evaluasi jampersal', 'hasil evaluasi jampersal memberikan selisih positif  untuk bulan agustus sebesar 35% dari total tagihan, september 32% dan bulan oktober sebesar 52%\r\n -cek untuk terakhir pembayaran dari dinas kesehatan\r\n-evaluasi perpanjangan kontrak jampersal\r\n', 'Nurdin, SE', 'M. Hilmy Mubarak, S.Kom', '-', '2021-11-22', '0000-00-00', NULL, 'Menunggu surat dari dinkes untuk pemberhentian \r\n-', 2, '2021-11-15 10:11:09', '2021-11-22 09:23:28'),
(44, 'Marketing dan Keuangan', 'pembuatan referal fee untuk pasien jampersal', '- buat analisa besaran referal fee bagi pasien jampersal\r\n- target pemberian referal fee\r\n- Dibuat sesudah perhitungan tarif/ PKS', 'Wahyu Suprayogo, SE., MM', '-', '-', '2021-11-22', '2021-12-22', NULL, '', 0, '2021-11-15 10:13:41', '2021-12-15 09:15:55'),
(45, 'Marketing dan Keuangan', 'PEDOMAN PENGORGANISASIAN', '- dIbuatkan 5 pedoman pengorganisasian dibawah manajer marketing dan keuangan meliputi\r\n- pedoman unit bisnis (Revisi)\r\n- pedoman keuangan (Revisi)\r\n-pedoman akuntansi\r\n-pedoman marketing (Revisi)\r\n-pedoman IT (Revisi)\r\n22/11. review Direktur\r\n\r\nMinggu ke 3 bulan Desember 2021 harus sudah selesai revisinya', 'Wahyu Suprayogo, SE., MM', 'Mila Sofariah, SE', 'Nurdin, SE', '2021-11-22', '2021-12-22', NULL, '', 0, '2021-11-15 10:53:09', '2021-12-15 09:19:12'),
(46, 'Marketing dan Keuangan', 'KAJIAN KLINIK MITRA UTAMA', '- Menyiapkan kajian mengenai regulasi klinik sesuai PMK\r\n-22/11 perbaiki kajian yng lebih mengarah ke gap antara rs-klinik', 'Wahyu Suprayogo, SE., MM', '-', '-', '2021-11-22', '0000-00-00', NULL, '', 2, '2021-11-15 10:55:33', '2021-12-07 15:31:11'),
(47, 'Marketing dan Keuangan', 'PERUBAHAN ALUR PEMBAYARAN', '- Siapkan skema pembayaran\r\n- Flow chart pembayaran\r\n22/11 sudah dilakukan meeting pada hari sabtu 20/11/2021 \r\nakan diujicoba pada pengajuan tgl 15 Desember 2021\r\n- Dibuat list jenis pembayaran\r\n- Review uji coba\r\n   - Cek PKS atau landasan tunjangan kelangkaan profesi dokter\r\n   - Cek alur pembayaran PLN, PDAM, tunjangan-tunjangan karyawan', 'Wahyu Suprayogo, SE., MM', 'Mila Sofariah, SE', '-', '2021-11-22', '2021-12-27', NULL, '', 0, '2021-11-15 10:57:35', '2021-12-20 10:01:43'),
(48, 'Marketing dan Keuangan', 'KERJASAMA DENGAN SELURUH ASURANSI', '- Asuransi yang tersedia di kabupaten garut\r\n-update data yang sudah bekerjasama dan belum bekerjasama\r\n22/11 sudah dilaporkan pada saat laporan pendapatan', 'M. Hilmy Mubarak, S.Kom', '-', '-', '2021-11-22', '0000-00-00', NULL, 'pindah ke meeting pendapatan', 2, '2021-11-15 11:00:31', '2021-11-22 10:01:43'),
(49, 'SDM dan Umum', 'Penyusunan Perdir Gaji Pegawai ', '- Proses revisi untuk perdir Gaji Pegawai \r\n- Draft Perdir dalam proses review PT RSIH\r\n- 2 Desember 2021\r\nPerdir RS diganti menjadi Perdirut PT. RSIH\r\n- 9 Desember 2021\r\nDraft Perdirut Gaji Pegawai sudah selesai revisi, persetujuan PT\r\n20 Desember 2021\r\nDraft Perdirut Gaji Pegawai sudah selesai revisi, persetujuan PT', 'Maya Anggraini, Spd', 'Atri Fitri Rahmi, S.S', '-', '2021-11-25', '2021-12-02', NULL, '', 0, '2021-11-18 10:30:21', '2021-12-20 16:38:59'),
(50, 'SDM dan Umum', 'Renovasi TPS Limbah B3 sesuai dengan Permenkes ', '- 2 Desember 2021\r\nFPBTR dalam proses \r\n- 9 Desember 2021\r\nRevisi FPBTR, mencari vendor kontraktor lokal\r\nSesuai dengan standar permenkes dan di rinci\r\n20 Desember 2021\r\nMasuk ke list konsultan (masuk ke PT untuk pengerjaan ini)\r\n23 Desember 2021\r\nMasuk ke list tim Delta TRC (masuk ke PT untuk pengerjaan ini)', 'Ryan Saeful Ariansyah,A.Md', '-', '-', '2021-11-26', '2021-12-09', NULL, '', 0, '2021-11-19 15:24:17', '2021-12-23 09:46:54'),
(51, 'Marketing dan Keuangan', 'Pembuatan Banner untuk penempatan klinik mandiri', '- Revisi X - Bannernya dg gambar rs dan fasilitasnya\r\n- Jumlah X - Banner yang dibuat : 100 PCS\r\n- Sudah di Logistik (dicancel)\r\n- Konfirmasi logistik terkait progress pembelian (dicancel)\r\n- Surat masih di PT (proses ulang)', 'M. Hilmy Mubarak, S.Kom', '-', '-', '2021-11-27', '2021-12-27', NULL, '', 0, '2021-11-20 08:45:12', '2021-12-20 10:44:16'),
(52, 'Pendapatan', 'Pembagian tugas mkt. eksternal', '-', 'M. Hilmy Mubarak, S.Kom', '-', '-', '2021-11-27', NULL, NULL, NULL, 0, '2021-11-20 08:58:13', NULL),
(53, 'Pendapatan', 'Kerjasama dengan dr. spesialis', '- Pengecekan jadwal-jadwal dokter\r\n- Koordinasi dengan dinkes atau IDI untuk meminta database dokter spesialis di Garut', 'M. Hilmy Mubarak, S.Kom', '-', '-', '2021-11-27', '2021-12-10', NULL, '', 0, '2021-11-20 09:17:17', '2021-12-03 14:51:23'),
(54, 'Pendapatan', 'Pembuatan sticker lift', '- Total design : 8 Design\r\n   - Yang sudah ada design : 2 Design', 'M. Hilmy Mubarak, S.Kom', '-', '-', '2021-11-27', '0000-00-00', NULL, '', 0, '2021-11-20 09:23:48', '2021-12-03 14:53:57'),
(55, 'Marketing dan Keuangan', 'Pembuatan kalender 2022', '- Pembuatan kalender :\r\n   1. Kalender dinding : sudah selesai (tidak jadi)\r\n   2. Kalender meja : progress foto\r\n- Hitung jumlah kalender yang akan dibuat\r\n- Segera buat PBTR\r\n- Revisi konten kalender\r\n- Deadline konten kalender minggu ke 3 Desember 2021', 'Firda Dzulfahmiyanti Gandara S.K.M', '-', '-', '2021-11-27', '2021-12-22', NULL, '', 0, '2021-11-20 09:25:31', '2021-12-15 09:29:36'),
(56, 'Pendapatan', 'Buat Gathering Bidan', '- Total bidan di Garut : 1248 bidan\r\n  - Hasil seleksi 113 bidan\r\n  - Pemateri :\r\n     - 2 dr. spesialis obgyn\r\n     - 1 dr. spesialis anastesi\r\n     - 1 dr. spesialis anak\r\n   - Mendapatkan SKP IBI', 'M. Hilmy Mubarak, S.Kom', 'Depi Rismayanti', 'Yusti Meliana,A.Md Keb', '2021-11-27', '2021-12-10', NULL, '', 0, '2021-11-20 10:38:05', '2021-12-03 15:01:16'),
(57, 'Pendapatan', 'Buat Gathering Dokter', '- Tema : Kegawatdaruratan bedah\r\n- Peserta : dr umum sebanyak 100 dr\r\n- Pembicara : - dr. Maman Sp.B\r\n                      - dr. Sena \r\n                      - dr. Adit\r\n                      - dr. Iwan Sp.OT\r\n- Mendapatkan SKP IDI', 'M. Hilmy Mubarak, S.Kom', 'dr. Iva Tania', '-', '2021-11-27', '2021-12-10', NULL, '', 0, '2021-11-20 10:40:31', '2021-12-03 15:15:12'),
(58, 'Pendapatan', 'Buat Gathering Faskes', '- Tema yang berbeda dengan gathering dokter\r\n- Rencana 50 faskes', 'M. Hilmy Mubarak, S.Kom', 'dr. Iva Tania', '-', '2021-11-27', '2021-12-10', NULL, '', 0, '2021-11-20 10:41:23', '2021-12-03 15:22:10'),
(59, 'Marketing dan Keuangan', 'Pembuatan Akrilik Marketing di lift (TRC)', 'Sedang proses di logistik\r\n- Proses bidding\r\n- Konfirmasi ke logistik terkait proses bidding\r\n- Proses pemasangan', 'Firda Dzulfahmiyanti Gandara S.K.M', '-', '-', '2021-11-29', '2021-12-27', NULL, '', 0, '2021-11-22 10:07:46', '2021-12-20 10:50:41'),
(60, 'Marketing dan Keuangan', 'Pembuatan Buku tarif Untuk BPJSTK', '- Harus dibubuhi Tanda tangan direktur sebagai bukti legalitas', 'M. Hilmy Mubarak, S.Kom', '-', '-', '2021-11-29', '0000-00-00', NULL, 'Sudah di tanda tangan direktur', 2, '2021-11-22 10:12:49', '2021-11-29 09:37:22'),
(61, 'Marketing dan Keuangan', 'TIm Implementasi SIMRS', '-Buat tim\r\n-Buat tim Pokja per bagian\r\n- Buat uraian tugas tim implementasi\r\n- Kirim ke Kesekretariatan untuk dibuat SK', 'Tubagus Rizal Abdul Hamid, S.T', '-', '-', '2021-11-29', '2021-12-27', NULL, '', 0, '2021-11-22 10:15:04', '2021-12-20 10:51:27'),
(62, 'Marketing dan Keuangan', 'EVALUASI LABA RUGI PER UNIT', '- Bikin laporan per unit\r\n- Revisi sumber pendapatan rajal dan ranap\r\n- Tiap tgl 5 laporan dibagikan ke tiap kepala unit terkait\r\n- OK dan VK dibuatkan laporan seperti ranap\r\n- Revisi laba rugi farmasi, OK dan VK\r\n- Pembuatan laporan laba rugi tiap minggu ke-2 tiap bulan\r\n- Pembuatan laporan laba rugi ranap per ruangan\r\n  - Dari segi pendapatan bisa dilakukan tetapi segi beban langsung belum bisa dilakukan dikarenakan perhitungan beban langsung dilakukan oleh unit SDM secara global tidak di pecah beradasarkan kelas atau ruangan\r\n   - Koordinasi dengan SDM terkait perhitungan beban langsung', 'Mila Sofariah, SE', 'Nurdin, SE', '-', '2021-11-29', '2021-12-27', NULL, '', 0, '2021-11-22 10:38:01', '2021-12-20 10:55:46'),
(63, 'Marketing dan Keuangan', 'PEMUSNAHAN ASSET', '- Bikin surat inventaris asset ke setiap Unit yang rusak dan tidak rusak\r\n-stock opname asset meliputi bagian inventori, akuntansi dan SPI\r\n\r\n- Rapat pertama tgl 27 Nov. 2021\r\n- Buatkan panduan manajemen asset\r\n  - Menunggu aplikasi management asset untuk dimasukkan ke dalam pedoman\r\n\r\n- Pembuatan PBTR pembelian aplikasi Asset\r\n   - Sudah di ACC\r\n   - Sedang menunggu penawaran dari SIMRS inova terkait modul management asset', 'Rd. Iman Nurjaman SE', 'Nurdin, SE', '-', '2021-11-29', '2021-12-27', NULL, '', 0, '2021-11-22 10:44:51', '2021-12-20 11:06:50'),
(64, 'Marketing dan Keuangan', 'ANALISA INFRASTUKTUR JARINGAN DAN PABX', '-SIAPKAN ANALISA\r\n- Koordinasi dengan logistik terkait bidding vendor\r\n- Proses negosiasi dari pihak logistik dengan vendor', 'Tubagus Rizal Abdul Hamid, S.T', '-', '-', '2021-11-29', '2021-12-27', NULL, '', 0, '2021-11-22 10:46:43', '2021-12-20 11:07:52'),
(65, 'Komite dan SPI', 'SPI\r\nRekomendasi  masih perlukah pemakaian materai\r\n', '-materai dipakai untuk apa saja?\r\n6/12/2021  \r\nRekomendasi sudah selesai tunggu persetujuan direktur\r\n13/12/2021\r\nAudit materai', 'Ami Amanda, SE', '-', '-', '2021-11-29', '2021-12-20', NULL, '', 0, '2021-11-22 13:38:14', '2021-12-13 14:53:23'),
(66, 'Komite dan SPI', 'evaluasi penggunaan materai\r\n', 'apa saja yang memakai materai\r\n', 'Ami Amanda, SE', '-', '-', '2021-11-29', '0000-00-00', NULL, '', 2, '2021-11-22 13:51:01', '2021-11-22 13:51:20'),
(67, 'Komite dan SPI', 'KPPI\r\nPengadaan Tempat sampah dari KPPI\r\n', 'pgjuan tempat sampah\r\n6/12/2021\r\ndesain label dilaporkan ke direktur\r\ntempat sampah acc Pt tinggal eksekusi logistik\r\nKresek sampah domestik tidak ada\r\n13/12/2021\r\nsatu lembar jadi 4 atau 6 gambar\r\nlabel sudah jadi dan acc\r\ntinggal diproduksi', 'Rani Setia Utami, A.Md Keb', '-', '-', '2012-11-29', '2021-12-20', NULL, '', 0, '2021-11-22 14:00:43', '2021-12-13 15:06:10'),
(68, 'Komite dan SPI', 'Pannduan Pegelolaan sampah', 'KPPI', 'Rani Setia Utami, A.Md Keb', '-', '-', '2021-11-29', '0000-00-00', NULL, '', 2, '2021-11-22 14:01:37', '2021-12-13 10:24:07'),
(69, 'Komite dan SPI', 'Rekomedasi Jalur Linen dan pembuagan sampah', 'dibuat alur\r\n6/12/2021\r\nAlur linen sudah dilaksanakan\r\nrekomendasi partisi laundry', 'Rani Setia Utami, A.Md Keb', '-', '-', '2021-11-29', '2021-12-13', NULL, '', 2, '2021-11-22 14:24:25', '2021-12-13 10:24:20'),
(70, 'Medik Keperawatan', 'PEDOMAN PELAYANAN', 'Dibuat Pedoman Pelayanan setiap unit\r\n7 Desember 2021 semua sudah menyelesaikan, nunggu revisi\r\n14 Desember 2021, sebagian masih proses revisi dan untuk deadline minggu depan harus selesai\r\n22 Desember 2022 pedoman sudah selesai proses di sekre', 'dr. Iva Tania', 'Depi Rismayanti', '-', '2021-12-06', '2021-12-21', NULL, '', 2, '2021-11-22 15:41:08', '2021-12-22 14:43:19'),
(71, 'Medik Keperawatan', 'DAFTAR INVENTARIS ', 'akan dibagikan oleh Manajer Marketing dan Keuangan ke setiap unit dan akan diadakan SO secara rutin\r\n7Desember 2021 untuk pendataan sudah mulai dilakukan dan koordinasi dengan logistik\r\n14 Desember 2021, sudah ada pendataan ke setiap unit tinggal menunggu rekapan dari logistik (PU oleh Manajer)\r\n22 Desember 2021 rawat jalan belum selesai', 'Wahyu Suprayogo, SE., MM', '-', '-', '2021-11-22', '2022-01-04', NULL, '', 0, '2021-11-22 15:50:11', '2021-12-22 15:02:11'),
(72, 'Medik Keperawatan', 'PEMBAGIAN MAKANAN PASIEN', 'Untuk setiap pembagian makanan pasien tidak langsung diberikan oleh bagian gizi sehingga harus ada operan terlebih dahulu dengan bagian perawat ruangan (Note : dibuatkan alur untuk pemesanan dan penerimaan makanan pasien)\r\n7 Desember 2021 rencana pembuatan google form dan revisi SPO\r\n14 Desember 2021, menunggu pengesahan pedoman dan panduan\r\n22 desember 2021 ada kendala dari rawat inap untuk pengisian google form, makanan dicek perawat belum terealisasi terkait waktu, koordinasi dengan IT untuk pembuatan format excel', 'Depi Rismayanti', 'Rahcmawati , S.Gz', '-', '2021-12-07', '2021-12-21', NULL, '', 0, '2021-11-22 15:53:21', '2021-12-22 15:14:03'),
(73, 'Medik Keperawatan', 'STANDAR PASILITAS RUANG PERAWATAN', 'Dibuatkan list data pasilitas setiap ruang perawatan \r\n30November 2021 sudah dilaporkan ke direktur pada tanggal 26 November 2021', 'Depi Rismayanti', '-', '-', '2021-11-22', '0000-00-00', NULL, '', 2, '2021-11-22 15:59:32', '2021-11-30 09:29:54'),
(74, 'Medik Keperawatan', 'DIBUATKAN SPO', 'SPO dibuatkan setelah Pedoman Pelayanan diselesaikan 7 Desember 2021 untuk pedoman pelayanan sudah selesai menunggu revisi dari Direktur\r\n22 desember 2021 pedoman sudah acc proses di sekre', 'Depi Rismayanti', 'dr. Iva Tania', '-', '2021-11-22', '2021-12-14', NULL, '', 2, '2021-11-22 16:27:12', '2021-12-22 15:22:21'),
(75, 'Medik Keperawatan', 'FORMULARIUM', 'Dibuatkan draft untuk formularium\r\n30 November 2021 sudah dilaporkan ke direktur tetapi masih ada revisi perihal rekomendasi obat\r\n7 Desember 2021 menunggu progres dari Direktur, Sudah diserahkan ke PT, \r\n14 Desember 2021, sudah acc PT tinggal menunggu proses design buku dan PO (menunggu list obat yg masih double sehingg harus dikeuarkan dulu oleh user)', 'dr. Iva Tania', 'Dwi Ishmi Novanti, S.Farm.,Apt', '-', '2021-11-29', '2021-12-07', NULL, '', 0, '2021-11-22 16:44:09', '2021-12-14 14:37:03'),
(76, 'SDM dan Umum', 'Penambahan PC dan Switch di Ruang Rapat PT', '2 Desember 2021 \r\n- PC Form PBTR sudah disetujui PT 27 November 2021, dan diterima oleh logistik , sedang dalam proses bidding di Logistik\r\n- Switch : Form PBTR sudah masuk logistik tanggal 26 November 2021 \r\n- Dalam Proses Bidding Logistik\r\n9 Desember 2021\r\nProses Bidding Logistik\r\n20 Desember 2021 \r\nProses Bidding Logistik (Ulang karena ada revisi dari PT)\r\n23 Desember 2021\r\nPembuatan PO', 'Rani Setia Utami, A.Md Keb', '-', '-', '2021-12-02', '0000-00-00', NULL, '', 0, '2021-11-25 09:38:54', '2021-12-23 09:47:21'),
(77, 'SDM dan Umum', 'Pengadaan Gudang B3', 'Koordinasi dengan Kesling untuk ketentuannya\r\n- Ruang Spoel Hoek di Belakang Ruang Psikiatri\r\n- Pintu Masuk Spel Hoek di Gedung 2 (Lantai 1 Belakang)', 'Ryan Saeful Ariansyah,A.Md', 'Yeni Nuryeni, SE', 'Dwi Ishmi Novanti, S.Farm.,Apt', '2021-12-02', '2021-12-16', NULL, '', 0, '2021-11-25 10:12:30', '2021-12-20 16:38:46'),
(78, 'SDM dan Umum', 'Pengecatan Gedung 3 ', '2 Desember 2021\r\nFPBTR proses ttd SPI ada revisi \r\n9 Desember 2021 \r\nRevisi FPBTR, mencari vendor kontraktor lokal\r\n20 Desember 2021\r\nMasuk ke list proyek renovasi RS (PT)', 'Ryan Saeful Ariansyah,A.Md', '-', '-', '2021-12-02', '2021-12-09', NULL, '', 0, '2021-11-25 10:17:51', '2021-12-20 16:43:29'),
(79, 'Medik Keperawatan', 'pembuatan vidio orientasi PB di ranap', 'koordinasi digital marketing\r\n30 November 2021 sudah koordinasi dengan digital marketing untuk progres masih dalam proses konsep dan untuk vidionya masih menunggu renov ruangan 416\r\n7 Desember 2021 pembautan vidio baru kelas 3 saja, menunggu ruangan ready\r\n14 Desember 2021, Dipending sampe bulan depan\r\n22 DESEEMBER 2021 VIDIO HARUS LANGSUNG KE INTINYA', 'Depi Rismayanti', 'Wahyu Suprayogo, SE., MM', '-', '2021-12-03', '2022-01-18', NULL, '', 0, '2021-11-26 08:40:02', '2021-12-22 15:46:22'),
(80, 'Medik Keperawatan', 'STANDAR FASILITAS RANAP', 'DAFTAR INVENTARIS RUANGAN', 'Depi Rismayanti', '-', '-', '2021-12-03', '0000-00-00', NULL, '', 2, '2021-11-26 08:51:28', '2021-11-30 09:34:23'),
(81, 'Medik Keperawatan', 'PEMBUATAN DESIGN IGD', 'DISKUSI\r\n30 November 2021 sudah dilaporkan ke bagian manajer keperawatan pada tanggal 29 November 2021 dan sudah ditindaklanjut ke direktur pada tanggal 30 November 2021\r\n7 Desember 2021 design sudah dikirim ulang ke Direktur dan sudah acc', 'Depi Rismayanti', 'Iman Nurjaman, S.Kep. Ners', 'dr. Iva Tania', '2021-12-03', '2021-12-14', NULL, '', 2, '2021-11-26 08:52:23', '2021-12-07 11:06:16'),
(82, 'Medik Keperawatan', 'PEMBUATAN FRAME LUKISAN', 'PENDATAAN LOKASI PENEMPATAN\r\n30 November 2021 sudah dilakukan pendataan untuk di lt 4 dan masih proses untuk ruang lainnya\r\n7 Desember 2021 masih menentukan titik-titik pemasangannya, rencana ada 8 titik untuk space yang besar\r\n14 Desember 2021, masih diproses oleh bagian umum (42 sisi untuk pemasanga, untuk poliklinik tidak perlu dipasang)\r\n22 desember 2021 cancel TRC', 'Depi Rismayanti', 'Ryan Saeful Ariansyah,A.Md', '-', '2021-12-03', '2021-12-21', NULL, '', 2, '2021-11-26 08:53:04', '2021-12-22 15:24:21'),
(83, 'Medik Keperawatan', 'PENGADAAN HANDRUB DI BED PASIEN', 'KOORDINASI PPI\r\n7 Desember 2021 sudah acc dari PT dan pengajuan sudah diserahkan ke Unit Farmasi untuk proses PO\r\n14 Desember 2021 bidding untuk harga dari vendor (dimintarekomendasi dari PPI)\r\n22 DESEMBER 2021 handrub tidak masuk TRC tapi kontrak dengan vndor tetap dilanjutkan', 'Depi Rismayanti', 'dr. Iva Tania', '-', '2021-12-03', '2021-12-28', NULL, '', 0, '2021-11-26 08:55:06', '2021-12-22 15:48:09'),
(84, 'Medik Keperawatan', 'SARUNG TABUNG OKSIGEN', 'KOORDINAIS LOGISTIK \r\n7 Desember 2021 masih dalam proses pembiddingan\r\n14 Desember 2021, menunggu disposisi dari PT\r\n22 desember 2021 proses PO', 'Depi Rismayanti', 'Yeni Nuryeni, SE', '-', '2021-12-03', '2021-12-28', NULL, '', 0, '2021-11-26 08:56:21', '2021-12-22 15:49:38'),
(85, 'Medik Keperawatan', 'AKRILIK TATA TERTIB', 'LOGISTIK\r\n30 November 2021 proses pembiddingan untuk pemasangan akrilik di setiap ruangan\r\n7 Desember 2021 masih proses pembiddingan\r\n12 Desember 2021, sudahpros PO dan tinggal menunggu barang datang', 'Depi Rismayanti', 'Yeni Nuryeni, SE', '-', '2021-12-03', '2021-12-14', NULL, '', 0, '2021-11-26 08:57:02', '2021-12-14 13:55:28'),
(86, 'Medik Keperawatan', 'LANTAI FINIL', 'KOORDINASI UMUM\r\n30 November 2021 masih menunggu proses pengukuran lantai dari bagian umum\r\n7 Desember 2021 dari umum baru ada esrtimasi ukuran dan harga, tinggal pengajuan ke bagian SPI \r\n14 Desember 2021 menunggu disposisi dari PT\r\n22 Desember 2021 sudah proses po', 'Depi Rismayanti', 'Ryan Saeful Ariansyah,A.Md', 'dr. Iva Tania', '2021-12-03', '2021-12-28', NULL, '', 0, '2021-11-26 08:58:12', '2021-12-22 15:51:09'),
(87, 'Medik Keperawatan', 'PENRGANTIAN GAYUNG DAN EMBER', 'KOORDINASI LOGISTIK\r\n30 November 2021 sudah di proses untuk proses pemesanan ke bagian logistik\r\n7 Desember 2021 masih mencari vendor\r\n14 Desember 2021, masih dalam proses mencari vendor\r\n22desember 2021 masih pencarian vendor ember', 'Depi Rismayanti', 'Yeni Nuryeni, SE', '-', '2021-12-03', '2021-12-28', NULL, '', 0, '2021-11-26 08:58:56', '2021-12-22 15:52:03'),
(88, 'SDM dan Umum', 'Pengadaan watchman clock systems security', '- Rencana pertemuan dengan pihak red guard utk pengadaan\r\n- RS Mengundang pihak Red Guard (Spv untuk pengadaan tsb)\r\n9 Desember 2021\r\nSudah ada pertemuan dengan red guard, unit umum meminta SPO security ke Reg Guard\r\nFU Tanggal 9 Des 2021 \r\n20 Desember 2021 \r\nTarget Januari untuk pengadaan dari vendor (Red Guard)\r\n23 Desember 2021 \r\nTarget Januari 2022 untuk pengadaan dari vendor (Red Guard)', 'Ryan Saeful Ariansyah,A.Md', '-', '-', '2021-12-02', '2021-12-09', NULL, '', 0, '2021-11-26 09:04:09', '2021-12-23 09:49:49'),
(89, 'Pendapatan', 'Pengadaan Panoramik', '- Lanjutkan Pengadaan\r\n- PO alat sudah\r\n- Sedang proses bidding pengerjaan sipil ruangan Panoramic', 'dr. Iva Tania', 'Maya Anggraini, Spd', '-', '2021-12-03', '2021-12-10', NULL, '', 0, '2021-11-26 09:50:48', '2021-12-03 15:24:54'),
(90, 'Pendapatan', 'Tarif  pesaing lab\r\n', '- Prodia : sudah ada', 'M. Hilmy Mubarak, S.Kom', 'dr. Iva Tania', '-', '2021-12-03', '0000-00-00', NULL, '', 2, '2021-11-26 09:55:08', '2021-12-03 15:27:03'),
(92, 'Marketing dan Keuangan', 'Pembuatan surat usulan penggantian SIMRS', '- Masalah implementasi\r\n- Rekomendasi SIMRS', 'Tubagus Rizal Abdul Hamid, S.T', '-', '-', '2021-12-06', '0000-00-00', NULL, '', 2, '2021-11-29 09:46:47', '2021-12-07 16:15:11'),
(93, 'Marketing dan Keuangan', 'Pembuatan tarif rawat jalan', '- Revisi perhitungan unit cost soal investasi alat\r\n- Nilai unit cost lebih besar dibanding tarif jual\r\n- Nilai unit cost lebih besar dari tarif pesaing', 'Wahyu Suprayogo, SE., MM', 'Nurdin, SE', '-', '2021-12-06', '2021-12-27', NULL, '', 0, '2021-11-29 10:14:24', '2021-12-20 11:12:46'),
(94, 'Marketing dan Keuangan', 'Penguatan marketing eksternal', '- Mapping area kunjungan', 'M. Hilmy Mubarak, S.Kom', '-', '-', '2021-12-06', '0000-00-00', NULL, '', 2, '2021-11-29 10:29:00', '2021-12-07 16:16:09'),
(95, 'Marketing dan Keuangan', 'Cash Opname pendapatan yang ditahan', '- Dilaksanakan tiap hari selasa pagi\r\n- Buat laporan untuk ke PT. RSIH\r\n- Selasa tgl 14/12/2021 akan dilakukan Cash Opname (ditunda karena ada pemaparan dari PRIADI)\r\n- Selasa tgl 21/12/2021 akan dilakukan Cash Opname', 'Mila Sofariah, SE', '-', '-', '2021-12-06', '2021-12-27', NULL, '', 0, '2021-11-29 10:39:32', '2021-12-20 11:14:19'),
(96, 'Marketing dan Keuangan', 'Buat perdir jasa dokter umum', '- Koordinasi dengan dr Iva\r\n- Pelayanan medis masih koordinasi dengan SDM', 'Wahyu Suprayogo, SE., MM', 'dr. Iva Tania', 'Mila Sofariah, SE', '2021-12-06', '2021-12-27', NULL, '', 0, '2021-11-29 10:42:30', '2021-12-20 11:17:33'),
(97, 'Marketing dan Keuangan', 'SPO Snack dokter', '- Proses pembuatan pedoman oleh unit SDM\r\n- Laporan selisih voucher dokter sudah dikirim ke manajer marketing dan keuangan tgl 4-20 Desember 2021 (total selisih Rp. 222.000)', 'Adita Nurfaoziyah,S.P', 'dr. Iva Tania', 'Ami Amanda, SE', '2021-12-06', '2021-12-27', NULL, '', 0, '2021-11-29 11:15:03', '2021-12-20 11:25:34'),
(98, 'SDM dan Umum', 'Pemasangan TV kabel di RSIH dan pemberhentian berlangganan indovision', '2 Desember 2021\r\nMenunggu SPH dari Transvision, dan persiapan untuk pemutusan dengan indovision (minta chanel 2 untuk RSIH)\r\n9 Desember 2021\r\nRencana kontrak transvision 3 tahun, PKS transvision masuk legal 9 Desember 2021\r\n20 Desember 2021\r\nMenunggu invoice dari vendor (Transvision) \r\nPKS sedang proses (kerjasama januari 2022)\r\nIndovision berakhir bulan desember 2021\r\nbuat surat untuk pemutusan berlangganan ke indovision\r\n23 Desember 2021 \r\nPKS dalam proses di legal review\r\nFU ke Indovision untuk pemberhentian berlangganan ', 'Ryan Saeful Ariansyah,A.Md', '-', '-', '2021-12-06', '2021-12-23', NULL, '', 0, '2021-11-29 11:33:10', '2021-12-23 09:51:58'),
(99, 'Marketing dan Keuangan', 'Pembuatan video orientasi pasien baru', '- Shooting unit Asoka\r\n- Revisi video (tambah narasi)', 'Firda Dzulfahmiyanti Gandara S.K.M', 'Depi Rismayanti', '-', '2021-12-06', '2021-12-27', NULL, '', 0, '2021-11-29 11:34:32', '2021-12-20 11:21:34'),
(100, 'Komite dan SPI', 'persiapan kredensial perawat\r\nWhite Paper\r\nLog Book', 'Template untuk permohonan kredensial dari perawat ke direktur \r\n6/12/2021\r\nsimulasi assesment beserta perangkat dan berkasnya serta dikonsultasikan dengan direktur\r\n13/12/2021\r\nFormulir sudah acc\r\nDisimulasikan dengan assesor dan manajer keperawatan\r\nminggu ini selesai dikonsultasikan ke direktur\r\nBuku putih \r\nrincian klinik rawat jalan, disesuaikan dengan PK nya bukan bergantung pada tempat penempatannya\r\nBuku putih keperawatan sudah di acc\r\nNursing staf by law\r\nPanduan etik\r\n\r\n', 'Ami Amanda, SE', '-', '-', '2021-12-06', '2021-12-20', NULL, '', 0, '2021-11-29 14:51:09', '2021-12-13 14:51:34'),
(101, 'Komite dan SPI', 'Kejadian tertusuk jarum', 'Panduan Penurunan Infeksi Pasca Pajanan\r\n6/12/2021\r\nKejadian tersebut tidak ditanggung BPJS\r\nBiayanya menjadi tanggungan rumah sakit\r\nKoordinasikan dengan SDM dan Bagian Pelayanan Medis\r\n13/12/2021\r\nSDM = bisa diclaim ke bpjs ketenaga kerjaan\r\nkejadian yang paling tinggi ada di OK', 'Ami Amanda, SE', '-', '-', '2021-12-06', '2021-12-20', NULL, '', 0, '2021-11-29 15:02:14', '2021-12-13 15:08:22'),
(102, 'Komite dan SPI', 'Analisa CSSD di OK', 'Mapping untuk sterilisasi alat, \r\nProses disinfektan dilakukan di OK\r\n13/12/2021\r\nSDM untuk pencucian alat di OK\r\nDilakukan dalam satu waktu\r\nDalam rangka efisiensi cairan enzimatik\r\nDibuat pengajuan selama setahun\r\n', 'Ami Amanda, SE', '-', '-', '2021-12-06', '2021-12-20', NULL, '', 0, '2021-11-29 15:15:04', '2021-12-13 15:29:27'),
(103, 'Komite dan SPI', 'Ruang lingkup PPI', '6/12/2021\r\nPanduan APD on proses menunggu dokumentasi foto\r\nUntuk saat ini belum ada pemeriksaan kesehatan karyawan\r\nLaporan sedang on proses\r\nIn house training untuk cuci tangan dan regulasi PPI\r\n13/12/2021\r\ndisosialisasikan kalau sudah di sahkan', 'Ami Amanda, SE', '-', '-', '2021-12-06', '2021-12-20', NULL, '', 0, '2021-11-29 15:44:48', '2021-12-13 15:03:08'),
(104, 'Medik Keperawatan', 'PENGADAAN KONDOM CATETER, IV CATETER, MASKER, SARUNG TANGAN STERIL DAN NON STERIL, ALKOHOL SWAB, OK PLAS, INFUS SET, DOWER CATETER, IV 3000 ANAK dan DEWASA', '7 Desember 2021 untuk pengadaan IV Cateter, alkohol swab,OK Plast,infus set, sudah acc, proses PO oleh farmasi, untuk sebagian lagi masuh dikanit tim ahli\r\n21 desember 2021 sudah proses PO', 'Depi Rismayanti', 'dr. Iva Tania', 'Dwi Ishmi Novanti, S.Farm.,Apt', '2021-12-07', '2021-12-28', NULL, '', 0, '2021-11-30 10:15:15', '2021-12-22 15:52:55'),
(105, 'Medik Keperawatan', 'DIBUATKAN TIM KHUSUS PETUGAS PERAWAT PEMASANGAN CATETER', 'PEMBENTUKAN TIM KOMPETENSIF 7 Desember 2021 untuk kandidat SDM sudah ada ,koordinasi dengan assor untuk menguji tindakan tersebut\r\n14 Desember 2021, masih proses disiapkan untuk minggu depan di uji\r\n21 DSEMBER 2021  asesmen dilakukan tanggal 23-24 desember 2021', 'Depi Rismayanti', '-', '-', '2021-12-07', '2021-12-29', NULL, '', 0, '2021-11-30 10:18:43', '2021-12-22 15:54:00'),
(106, 'Medik Keperawatan', 'DIBUATKAN TIM KHUSUS UNTUK PEMASANGAN INFUS UNTUK ANAK/ BAYI', 'TIM KHUSUS KOPETENSI PEMASANGAN INFUS ANAK/ BAYI 7 Desember 2021 untuk kandidat sudah ada, koordinasi dengan asesor untuk menguji tindakan tersebut', 'Depi Rismayanti', '-', '-', '2021-12-07', '2021-12-14', NULL, '', 0, '2021-11-30 10:21:05', '2021-12-07 10:18:20'),
(107, 'Medik Keperawatan', 'PENGADAAN DISFENSER UNTUK SETIAP RUANG RANAP', 'KOORDINASI DENGAN VENDOR UNTUK TERKAIT KERJASAMANYA 7 Desember 2021 masih menunggu konfirmasi dari vendor terkait penawaran \r\n22 desember 2021 rencana yang ada dispenser di VIP saja,di ruang rawat inap lain hanya ada di nurse station atau lorong', 'dr. Iva Tania', 'Depi Rismayanti', 'Rahcmawati , S.Gz', '2021-12-07', '2021-12-28', NULL, '', 0, '2021-11-30 10:31:30', '2021-12-22 15:57:19'),
(108, 'Medik Keperawatan', 'ALUR PESESANAN AIR MINERAL UNTUK PASIEN DAN KARYAWAN', 'DISKUSI UNTUK PROSES PEMESANAN AIR MINERAL 7 Desember 2021 pemasaan air dari logistik tinggal follow up ulang, kemarin logistik sudah OK', 'dr. Iva Tania', 'Rahcmawati , S.Gz', '-', '2021-12-07', '2021-12-14', NULL, '', 0, '2021-11-30 10:35:00', '2021-12-07 07:58:09'),
(109, 'Medik Keperawatan', 'ALUR PEMERIKSAAN ECHO UNTUK PASIEN RAWAT INAP', 'PEMBUATAN ALUR PEMERIKSAAN 7 Desember 2021 SPO sudah dibuatkan \r\n22 desember 2021 nunggu sosialisasi, form sudah ada di logistik tapi tidak diperbanyak, untuk form di print dulu dan disediakan di keperawatan, simulasikan secepatnya', 'Depi Rismayanti', 'Resti Septianisa, A.Md Rad', 'Elis Dida Junica, A.Md Kep', '2021-12-07', '2021-12-28', NULL, '', 0, '2021-11-30 10:38:38', '2021-12-22 16:09:32'),
(110, 'Medik Keperawatan', 'PENGADAAN BMPH UNTUK POLI GIGI ', 'KOORDINASI DENGAN FARMASI UNTUK PENGAJUAN BARANG PEMESANAN  TIDAK RUTIN 7 Desember 2021 sudah acc menunggu estimasi harga dari unit farmasi\r\n22 desember 2021 masih proses nanya ke vendor', 'Elis Dida Junica, A.Md Kep', 'Dwi Ishmi Novanti, S.Farm.,Apt', 'Yeni Nuryeni, SE', '2021-12-07', '2021-12-28', NULL, '', 0, '2021-11-30 11:01:01', '2021-12-22 16:11:47'),
(111, 'Medik Keperawatan', 'PANDUAN SKRINING', 'KOORDINASI DENGAN IGD 7 Desember 2021 sudah acc, harus di sosialisasikan ke semua unit 22 desember 2021 menunggu pengesahan dari sekre untuk panduan yang lain', 'dr. Iva Tania', 'Iman Nurjaman, S.Kep. Ners', '-', '2021-12-07', '2021-12-28', NULL, '', 0, '2021-11-30 11:03:38', '2021-12-22 16:12:56'),
(112, 'Medik Keperawatan', 'PENGADAAN  DOKTER UMUM PART TIMER DI POLIKLINIK', 'KOORDINASI DENGAN MARKETING 7 Desember 2021 sudah pengajuan k manajer Umum SDM, tinggal follow up terkait progres\r\n22 desember 2021 masih proses rekrutmen oleh SDM ', 'dr. Iva Tania', 'Wahyu Suprayogo, SE., MM', '-', '2021-12-07', '2021-12-28', NULL, '', 0, '2021-11-30 11:09:52', '2021-12-22 16:13:37'),
(113, 'Medik Keperawatan', 'PROGRES PENGADAAN RAWAT INAP UNTUK PERSALINAN (KELAS 3)', 'KOORDINASI DENGAN KEUANGAN UNTUK TARIF 7 Desember 2021 ruangan masih fleksibel sementara dipakai untuk bedah wanita \r\n22 desember 2021 masih dalam proses review, draft sudah dikasih', 'dr. Iva Tania', 'Depi Rismayanti', 'Wahyu Suprayogo, SE., MM', '2021-12-07', '2021-12-28', NULL, '', 0, '2021-11-30 11:14:45', '2021-12-22 16:14:43'),
(114, 'Medik Keperawatan', 'PEMBUATAN RUANG RETENSI REKAM MEDIS', 'KOORDINASI DENGAN MANJER MARKETING DAN KEUNGAN UNTUK PEMINDAHAN BILLING 7 Desember 2021 masih koordinasi dengan manajer keuangan, tidak ada ruangan menunggu rencana GRS\r\n22 desember 2021 sudah dibicarakan degan PT, untuk ruang rekmed rencana di lantai 1', 'dr. Iva Tania', 'Aceng Hilman, A.Md RMIK, SST', 'Wahyu Suprayogo, SE., MM', '2021-12-07', '2022-01-11', NULL, '', 0, '2021-11-30 11:22:02', '2021-12-22 16:16:17'),
(115, 'Medik Keperawatan', 'DIBUATKAN DENAH UNTUK RUANG OK ', 'KOORDINASI DENGAN BAGIAN UMUM UNTUK PEMBUATAN DESIGN 7 Desember 2021 design sudah selesai ', 'Depi Rismayanti', 'Lia Susilawati, S.Kep., Ners', 'Ryan Saeful Ariansyah,A.Md', '2021-12-07', '2021-12-14', NULL, '', 2, '2021-11-30 11:27:14', '2021-12-15 08:49:56'),
(116, 'Medik Keperawatan', 'PROMOSI LAYANAN METODE SC ERAS ', 'KOORDINASI DENGAN MARKETING UNTUK PEMBUATAN IKLAN 7 Desember 2021 sidah pengajuan ke manajer marketing dan keuangan, dari keuangan akan di evaluasi dulu terkai tarif eras\r\n22 desember 2021 nunggu harga deal', 'dr. Iva Tania', 'Wahyu Suprayogo, SE., MM', 'M. Hilmy Mubarak, S.Kom', '2021-12-07', '2021-12-27', NULL, '', 0, '2021-11-30 11:31:43', '2021-12-22 16:18:20'),
(117, 'Medik Keperawatan', 'PELAYANAN POLI KEJIWAAN UNTUK HYPNOTERAPHY, PSIKOMETRI , PROBLEM BELAJAR ANAK', 'DISKUSI UNTUK DIBUKA KEMBALI PELAYANAN HYPNOTERAPHY 7 Desember 2021 masih koordinasi dengan dokter terkait dan kanit rawat jalan dan untuk SDM harus ada yang mengikuti pelatihan\r\n22 desember 2021 SDM sudah ada yang bersedia, nunggu pelatihan dri dr hendi rencana januari 2022', 'dr. Iva Tania', 'Elis Dida Junica, A.Md Kep', '-', '2021-12-07', '2022-01-11', NULL, '', 0, '2021-11-30 11:32:56', '2021-12-22 16:19:40'),
(118, 'Medik Keperawatan', 'PENYUSUNAN TARIF UNTUK REIMBURSE PASIEN ASURANSI', 'KOORDINASI REKAM MEDIS KE KEUANGAN UNTUK PEMBUATAN TARIF 7 Desember 2021 sudah pengajuan belum ada tindak lanjut dari bagian keuangan\r\n22 desember 2021 proses review oleh manajer marketing', 'Aceng Hilman, A.Md RMIK, SST', 'Wahyu Suprayogo, SE., MM', 'Nurdin, SE', '2021-12-07', '2021-12-28', NULL, '', 0, '2021-11-30 11:33:59', '2021-12-22 16:21:06'),
(119, 'SDM dan Umum', 'Kartu Penunggu Pasien', '- Review SPO Kartu Penunggu Pasien \r\n- Untuk biaya kehilangan kartu Rp.100.000,-\r\n- 9 Desember 2021\r\nRevisi FPBTR, Design kartu penunggu pasien koordinasi dengan Digital Marketing sesuai dengan ruangan\r\nSPO di revisi oleh pelmed\r\n20 Desember 2021\r\nDesign sudah ada, selanjutnya FPBTR \r\n23 Desember 2021 \r\nFPBTR masuk hari ini (23 Desember 2021)', 'Ryan Saeful Ariansyah,A.Md', 'dr. Iva Tania', '-', '2021-12-08', '2021-12-16', NULL, '', 0, '2021-12-01 08:30:12', '2021-12-23 09:53:13'),
(120, 'Pendapatan', 'Buatkan materi marketing mengenai tindakan bedah yang akan dijual', '- Podcast\r\n  - Materi : Apendectomi, Tonsilektomi\r\n  - Pembicara : dr. Mutiara Sp.B, dr. Vita Sp.THT\r\n- SWAP', 'Firda Dzulfahmiyanti Gandara S.K.M', 'dr. Iva Tania', '-', '2021-12-08', '2021-12-10', NULL, '', 0, '2021-12-01 09:50:20', '2021-12-11 10:47:54'),
(121, 'Pendapatan', 'Kerjasama dengan Radio REKS dan ANTARES untuk promosi', '- Menggunakan dana TRC\r\n- Kerjasama mulai bulan Januari 2022\r\n- Baru mendapatkan penawaran dari radio REKS', 'Firda Dzulfahmiyanti Gandara S.K.M', '-', '-', '2021-12-08', '0000-00-00', NULL, '', 0, '2021-12-01 09:53:38', '2021-12-11 10:48:05'),
(122, 'Pendapatan', 'Referal fee CT SCAN', '-', 'M. Hilmy Mubarak, S.Kom', '-', '-', '2021-12-08', NULL, NULL, NULL, 0, '2021-12-01 10:11:30', NULL),
(123, 'SDM dan Umum', 'Rencana Kontrak dengan Buana Raya untuk chemical dengan diskon 30% (TRC) (Penyediaan Dispenser dan SPO Linen)', '9 Desember 2021 \r\nFU untuk ke vendor buana\r\n20 Desember 2021\r\nProses negosiasi diskon menuju 35% dengan tambahan bonus dispenser chemical dll \r\n23 Desember 2021\r\nBuana Raya sudah acc dengan diskon 35%, menunggu SPH dari vendor', 'Selly Riantica F, S.Kom', 'Yeni Nuryeni, SE', '-', '2021-12-09', '2021-12-23', NULL, '', 0, '2021-12-02 15:30:47', '2021-12-23 09:56:00'),
(124, 'SDM dan Umum', 'SPO Alur Linen Bersin dan Linen Kotor (Koordinasi dengan KPPI untuk rekomendasi jalurnya)', '9 Desember 2021\r\nSudah membuat Draft untuk SPO Alur Linen Bersin dan Linen Kotor \r\n20 Desember 2021\r\nMenyesuaikan dengan denah yang baru ', 'Selly Riantica F, S.Kom', '-', '-', '2021-12-09', '2022-01-06', NULL, '', 0, '2021-12-02 15:33:28', '2021-12-20 16:56:01'),
(125, 'Pendapatan', 'Perdir. Bonus Marketing Eksternal', '-', 'M. Hilmy Mubarak, S.Kom', '-', '-', '2021-12-10', NULL, NULL, NULL, 0, '2021-12-03 14:36:49', NULL),
(126, 'Pendapatan', 'Pembuatan formulir pemeriksaan Radiologi', '-', 'dr. Iva Tania', '-', '-', '2021-12-10', NULL, NULL, NULL, 0, '2021-12-03 14:47:28', NULL),
(127, 'Pendapatan', 'Kerjasama dengan garut update, jajanan garut', '-', 'Firda Dzulfahmiyanti Gandara S.K.M', '-', '-', '2021-12-10', '0000-00-00', NULL, '', 0, '2021-12-03 15:46:40', '2021-12-11 10:48:28'),
(128, 'Komite dan SPI', 'evaluasi pembayaran cash', 'mapping pembayaran tunai', 'Ami Amanda, SE', '-', '-', '2021-12-13', '0000-00-00', NULL, '', 2, '2021-12-06 15:52:53', '2021-12-13 13:14:54'),
(129, 'Komite dan SPI', 'evaluasi pembayaran cash', 'mapping pembayaran tunai\r\n13/12/2021\r\nPembuatan rekomendasi', 'Ami Amanda, SE', '-', '-', '2021-12-13', '0000-00-00', NULL, '', 0, '2021-12-06 15:52:53', '2021-12-13 14:18:17'),
(130, 'Komite dan SPI', 'ontang anting', 'audit sampel ontang anting 2021', 'Ami Amanda, SE', '-', '-', '2021-12-13', NULL, NULL, NULL, 0, '2021-12-06 16:11:33', NULL),
(131, 'Komite dan SPI', 'Kresek domestik tidak ada jadi mempergunakan kresek medis', 'Pengadaan Kresek untuk 1 tahun ke logistik\r\n13/12/2021\r\nDalam proses pengajuan logistik\r\nHarga beli nya dikendalikan', 'Ami Amanda, SE', '-', '-', '2021-12-13', '2021-12-20', NULL, '', 0, '2021-12-06 16:24:10', '2021-12-13 15:34:56'),
(132, 'Medik Keperawatan', 'Pelayanan ODS', 'pembuatan panduan pelayanan ODS\r\n22 desember 2021 sudah dibicarakan dengan dokter bedah, ods bisa di asoka tapi ruangan harus tersediia jika ada pasien masuk ODS, biaya 7,5 diluar pemeriksaan antigen\r\npenyediaan 2 bed di ruang asoka', 'Depi Rismayanti', 'Lia Susilawati, S.Kep., Ners', 'dr. Iva Tania', '2021-12-14', '2021-12-29', NULL, '', 0, '2021-12-07 09:49:46', '2021-12-22 16:34:30'),
(133, 'Medik Keperawatan', 'sewa layanan ruang ODS', 'revisi tarif ODS\r\n22 desember 2021 tarif masih sama dengan sebelumnya', 'Depi Rismayanti', 'dr. Iva Tania', 'Lia Susilawati, S.Kep., Ners', '2021-12-14', '2021-12-29', NULL, '', 2, '2021-12-07 10:29:30', '2021-12-22 16:32:43'),
(134, 'Medik Keperawatan', 'Pelayanan Eras', 'pembuatan PPK Eras', 'dr. Iva Tania', 'dr. Ika Sriwahyuni', 'Lia Susilawati, S.Kep., Ners', '2021-12-14', NULL, NULL, NULL, 0, '2021-12-07 10:36:42', NULL);
INSERT INTO `notulensi` (`id`, `unit`, `masalah`, `tindaklanjut`, `pic1`, `pic2`, `pic3`, `deadline`, `deadline_baru`, `tgl_selesai`, `hasil`, `status`, `tgl_input`, `tgl_update`) VALUES
(135, 'Medik Keperawatan', 'pelayanan Eras', 'pembuatan lembr edukasi pasien  pre op eras (kertas kecil)', 'dr. Iva Tania', 'dr. Ika Sriwahyuni', 'Depi Rismayanti', '2021-12-14', '2021-12-14', NULL, '', 0, '2021-12-07 10:42:20', '2021-12-07 12:03:42'),
(136, 'Medik Keperawatan', 'pelayanan operasi', 'pembuatan SPO pelayanan operasi elektif 22 desember 2021 spo sudah masuk ke pelayanan', 'dr. Iva Tania', 'Lia Susilawati, S.Kep., Ners', 'dr. Ika Sriwahyuni', '2021-12-14', '0000-00-00', NULL, '', 0, '2021-12-07 10:47:28', '2021-12-22 16:41:52'),
(137, 'Medik Keperawatan', 'review untuk transfusi ', 'tinjau ulang SPO transfusi dan simulasikan, pembuatan panduan transfusi\r\n22 desember 2021 nunggu pengesahan , dibuat panduan saja tidak dengan spo', 'Depi Rismayanti', 'dr. Iva Tania', '-', '2021-12-14', '2021-12-29', NULL, '', 0, '2021-12-07 11:15:30', '2021-12-22 16:43:22'),
(138, 'Medik Keperawatan', 'admin di ruang rawat inap', 'mapping SDM admin \r\n14 Desember 2021, sudah selesai di mapping tinggal menunggu surat tugas pertanggal 21 Desember 2021', 'Depi Rismayanti', '-', '-', '2021-12-14', '0000-00-00', NULL, 'menunggu surat tugas pertanggal 21 Desember 2021', 2, '2021-12-07 12:04:56', '2021-12-15 08:51:47'),
(139, 'Medik Keperawatan', 'perawat ct scan ', 'Penambahan Petugas Perawat untuk CT-Scan \r\n22 desember 2021 suda ada list tinggal pengajuan buat surat tugas', 'Depi Rismayanti', '-', '-', '2021-12-21', '0000-00-00', NULL, '', 0, '2021-12-07 12:10:47', '2021-12-22 16:45:09'),
(140, 'Marketing dan Keuangan', 'Penambahan marketing eksternal', '2 orang baru untuk marketing eksternal\r\n- Adi joyo (ex Billing)\r\n- Bayu Nur (ex Ifood)', 'Wahyu Suprayogo, SE., MM', 'M. Hilmy Mubarak, S.Kom', '-', '2021-12-14', '2021-12-20', NULL, '', 2, '2021-12-07 14:59:34', '2021-12-20 11:26:30'),
(141, 'Marketing dan Keuangan', 'Pembuatan Design Papan List Dokter', '- Data list dokter\r\n- Data jadwal dr untuk di tiap poli\r\n- Revisi design warna', 'Firda Dzulfahmiyanti Gandara S.K.M', '-', '-', '2021-12-14', '2021-12-27', NULL, '', 0, '2021-12-07 15:26:38', '2021-12-20 11:26:54'),
(142, 'Marketing dan Keuangan', 'Pembuatan kartu nama untuk Marketing Eksternal', '- Revisi design belakang', 'M. Hilmy Mubarak, S.Kom', '-', '-', '2021-12-14', '2021-12-27', NULL, '', 0, '2021-12-07 15:34:30', '2021-12-20 11:27:19'),
(143, 'SDM dan Umum', 'Ambulance escort (ambulance transport, untuk kegiatan di luar RS)', '- FU Manajer umum dan SDM untuk ambulance BRI \r\n20 Desember 2021\r\n- FU Manajer marketing dan keuangan untuk ke BRI, untuk jadwal pengiriman ambulance dari BRI ke RSIH\r\n23 Desember 2021 \r\n- FU Manajer marketing dan keuangan untuk ke BRI, untuk jadwal pengiriman ambulance dari BRI ke RSIH ', 'Ryan Saeful Ariansyah,A.Md', 'Maya Anggraini, Spd', 'Wahyu Suprayogo, SE., MM', '2021-12-16', '2021-12-23', NULL, '', 0, '2021-12-09 09:48:01', '2021-12-23 09:57:13'),
(144, 'SDM dan Umum', 'Alur Pelayanan Makan Karyawan', '.', 'Atri Fitri Rahmi, S.S', '-', '-', '2022-01-06', NULL, NULL, NULL, 0, '2021-12-09 10:17:09', NULL),
(145, 'SDM dan Umum', 'Panduan Pendidikan dan Pelatihan', '.', 'Atri Fitri Rahmi, S.S', '-', '-', '2022-01-06', NULL, NULL, NULL, 0, '2021-12-09 10:58:20', NULL),
(146, 'SDM dan Umum', 'PKS Medivest di perbaiki (ditambahkan addendum)', '20 Desember 2021\r\nHarga 8500/kg sudah dengan PPN \r\nUntuk pengajuan (Umum) pembayaran memakai formulir dan dilampirkan PKS halaman pertama dan Lampiran harganya dan diberikan langsung ke Staf Keuangan', 'Maya Anggraini, Spd', 'Ryan Saeful Ariansyah,A.Md', 'Rani Setia Utami, A.Md Keb', '2021-12-16', '2021-12-23', NULL, '', 0, '2021-12-09 11:00:50', '2021-12-20 17:02:47'),
(147, 'Komite dan SPI', 'Penjualan barang bekas', 'Rutin diambil untuk dijual sehari atau 2 hari sekali', 'Ami Amanda, SE', '-', '-', '2021-12-20', NULL, NULL, NULL, 0, '2021-12-13 14:16:13', NULL),
(148, 'Komite dan SPI', 'Sosialisasi Panduan yang sudah di sahkan direktur', 'Dilakukan secara online\r\nDan absensi sebagai bukti materi telah disampaikan\r\nMateri dishare dalam bentuk pdf ke dalam grup\r\nMateri nya jangan terlalu banyak', 'Ami Amanda, SE', '-', '-', '2021-12-20', '0000-00-00', NULL, '', 2, '2021-12-13 15:00:08', '2021-12-13 15:04:41'),
(149, 'Komite dan SPI', 'Sosialisai Panduan Yang sudah Di sahkan', 'Disosialisasikan secara offline\r\ndisertai absensi\r\nMaterinya di bentuk dalam bentuk power point dan dinconvert pdf dishare di grup\r\nSatu kali sosialisasi 2 materi minimal', 'Ami Amanda, SE', '-', '-', '2021-12-20', NULL, NULL, NULL, 0, '2021-12-13 15:02:24', NULL),
(150, 'Komite dan SPI', 'Centralisasi CSSD di Ok', 'Rekomendasi pemakaian enzimatik', 'Ami Amanda, SE', '-', '-', '2021-12-20', NULL, NULL, NULL, 0, '2021-12-13 15:35:31', NULL),
(151, 'Komite dan SPI', 'RKA', 'Tempelate minta ke rani\r\nisisnya pelatihan2', 'Ami Amanda, SE', '-', '-', '2021-12-20', NULL, NULL, NULL, 0, '2021-12-13 15:43:33', NULL),
(152, 'Medik Keperawatan', 'OBAT ED', 'dibuat list untuk obat ED setiap periode mendekati 3 bulan dan 6 bulan\r\n22 desember 2021 difu tiap minggu, dan harus ada progres berkurang , bersurat ke direktur untuk retur obat yanga kan ED', 'Dwi Ishmi Novanti, S.Farm.,Apt', 'dr. Iva Tania', '-', '2021-12-21', '2021-12-29', NULL, '', 0, '2021-12-14 14:18:52', '2021-12-22 16:54:02'),
(153, 'Medik Keperawatan', 'SURAT EDARAN PEMESANAN MAKANAN ', 'dibuat internal memo dri medik-keperawatan\r\n22 desember 2021 surat edaran dicabut dan sudah sosialisasikan yng baru', 'dr. Iva Tania', 'Depi Rismayanti', '-', '2021-12-21', '2021-12-29', NULL, '', 0, '2021-12-14 14:29:17', '2021-12-22 16:48:55'),
(154, 'Marketing dan Keuangan', 'Pembuatan SPO Referal Fee', '- Revisi SPO', 'M. Hilmy Mubarak, S.Kom', '-', '-', '2021-12-22', '2021-12-27', NULL, '', 0, '2021-12-15 08:35:42', '2021-12-20 11:27:55'),
(155, 'Marketing dan Keuangan', 'Pembuatan kalender konten talkshow dan iklan untuk di RADIO REKS', '- Proses penyusunan konten :\r\n   - 1 bulan 3 tema', 'Firda Dzulfahmiyanti Gandara S.K.M', '-', '-', '2021-12-22', '2021-12-27', NULL, '', 0, '2021-12-15 09:11:22', '2021-12-20 11:28:51'),
(156, 'Marketing dan Keuangan', 'Apresiasi perujuk terbanyak', '- Bidan dan Dokter luar\r\n- Proses pencarian data 1 tahun kebelakang (tahun 2021)', 'M. Hilmy Mubarak, S.Kom', '-', '-', '2021-12-22', '2021-12-27', NULL, '', 0, '2021-12-15 09:31:00', '2021-12-20 11:29:56'),
(157, 'Marketing dan Keuangan', 'Permintaan desiminasi', '- Jadwal desiminasi : 27 Desember 2021', 'Firda Dzulfahmiyanti Gandara S.K.M', '-', '-', '2021-12-22', '2021-12-27', NULL, '', 0, '2021-12-15 09:34:29', '2021-12-20 11:34:02'),
(158, 'Marketing dan Keuangan', 'Panduan Komplain', '- SPO sudah ada\r\n- Membuat panduan aturan penanganan pengaduan pasien', 'Firda Dzulfahmiyanti Gandara S.K.M', '-', '-', '2022-01-03', '2021-12-27', NULL, '', 0, '2021-12-15 09:36:17', '2021-12-20 11:40:04'),
(159, 'Marketing dan Keuangan', 'Pembuatan PBTR ISP internet', '- Sudah ACC PT\r\n- Proses bidding logistik', 'Tubagus Rizal Abdul Hamid, S.T', '-', '-', '2021-12-22', '2021-12-27', NULL, '', 0, '2021-12-15 10:20:51', '2021-12-20 11:31:52'),
(160, 'Medik Keperawatan', '', '', '', '', '', '0000-00-00', NULL, NULL, NULL, 0, '2021-12-15 10:52:12', NULL),
(161, 'Medik Keperawatan', 'DESIGN NURSE CONTER', 'Dibuatkan design nurse conter setiap unit (IGD, RANAP, RAJAL, ICU, PERINA)\r\n22 DESEMBER 2021  poli ditunda dulu untuk pembuatan design\r\nuntuk ranap sudah selesai', 'Depi Rismayanti', '-', '-', '2021-12-21', '2021-12-29', NULL, '', 0, '2021-12-15 15:13:49', '2021-12-22 16:55:08'),
(162, 'Medik Keperawatan', 'STERILISASI ALAT', 'Untuk pensterilan alat setiap unit diserahkan langsung ke ruang/petugas CSSD sehingga untuk setiap unit ruangan hanya sampai pre cleaning (dicuci dengan air mengalir)\r\n22 desember 2021 unit yang mengantar dan yang mengambil, pengajuan pengadaan container box untuk alat kotor dan bersih', 'Depi Rismayanti', 'Lia Susilawati, S.Kep., Ners', '-', '2021-12-21', '2021-12-29', NULL, '', 0, '2021-12-15 15:17:08', '2021-12-22 17:05:05'),
(164, 'Marketing dan Keuangan', 'Tarif pesaing', 'Pesaing :\r\n- Bethesda\r\n- RS Nurhayati, Annisa Queen, Medina\r\n\r\nJenis Tarif :\r\n- CT SCAN\r\n- USG\r\n- Panoramic\r\n- LAB\r\n- Rontgen', 'M. Hilmy Mubarak, S.Kom', '-', '-', '2021-12-27', NULL, NULL, NULL, 0, '2021-12-20 11:44:23', NULL),
(165, 'Komite dan SPI', 'pembelian oksigen', 'Cek pembelanjaan dan transaksi oksigen', 'Ami Amanda, SE', '-', '-', '2021-12-27', NULL, NULL, NULL, 0, '2021-12-20 15:08:47', NULL),
(166, 'SDM dan Umum', 'Sticker Saklar Lampu', '23 Desember 2021\r\n- Pendataan Saklar Lampu yg berada di RSIH\r\n- Design sudah ada \r\n- Penentuan petugasnya ', 'Ryan Saeful Ariansyah,A.Md', '-', '-', '2021-12-23', '2021-12-30', NULL, '', 0, '2021-12-20 16:17:34', '2021-12-23 10:00:26'),
(167, 'SDM dan Umum', 'Penyesuaian Tarif Ambulance', '-', 'Ryan Saeful Ariansyah,A.Md', 'Maya Anggraini, Spd', 'Wahyu Suprayogo, SE., MM', '2021-12-23', '2022-01-06', NULL, '', 0, '2021-12-20 16:22:32', '2021-12-23 10:03:22'),
(171, 'Medik Keperawatan', 'pedoman selesai, lanjut panduan dan SPO , spo asuhan dari divisi dan komite, spo diluar asuhan (teknis) bisa dikerjakan dari unit.penyusunan spo harus SPOK\r\nKebijakan SPO, Definisi sesuai dengan judul, ', 'pembuatan panduan dan SPO ', 'dr. Iva Tania', 'Depi Rismayanti', '-', '2021-12-29', NULL, NULL, NULL, 0, '2021-12-22 14:52:39', NULL),
(172, 'Medik Keperawatan', 'pengadaan container box untuk pensterilan alat', 'pengajuan dari tiap unit, buat meeting terpisah dengan unit terkait, simulasikan dan kerjakan', 'Depi Rismayanti', 'Lia Susilawati, S.Kep., Ners', '-', '2022-01-01', NULL, NULL, NULL, 0, '2021-12-22 17:07:32', NULL),
(173, 'Medik Keperawatan', 'tidak ada resep obat keluar dan copy resep', 'dibuatkan SPO', 'Dwi Ishmi Novanti, S.Farm.,Apt', 'dr. Iva Tania', '-', '2021-12-29', NULL, NULL, NULL, 0, '2021-12-22 17:11:25', NULL),
(174, 'Medik Keperawatan', 'alur pengantaran obat pasien masuk ranap dari igd atau poli', 'spo pengambilan obat', 'Dwi Ishmi Novanti, S.Farm.,Apt', 'Depi Rismayanti', '-', '2021-12-29', NULL, NULL, NULL, 0, '2021-12-22 17:16:42', NULL),
(175, 'SDM dan Umum', 'Pembuatan Perjanjian Jual Beli Panoramik', '-', 'Maya Anggraini, Spd', 'Yeni Nuryeni, SE', 'Rani Setia Utami, A.Md Keb', '2021-12-30', NULL, NULL, NULL, 0, '2021-12-23 10:10:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `nursingbylaw`
--

CREATE TABLE `nursingbylaw` (
  `id` int(11) NOT NULL,
  `unit` varchar(50) NOT NULL,
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
  `unit` varchar(255) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `files` varchar(160) NOT NULL,
  `tgl_upload` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `panduan`
--

INSERT INTO `panduan` (`id`, `unit`, `judul`, `deskripsi`, `files`, `tgl_upload`) VALUES
(1, 'KOMITE KEPERAWATAN', 'PANDUAN PEMBERIAN KEWENANGAN KLINIS TENAGA KEPERAWATAN', 'Peraturan Direktur Rumah Sakit Intan Husada Nomor 3780/A000/XII/2021 Tentang Panduan Pemberian Kewenangan Klinis Tenaga Keperawatan', '../../files/KOMITE KEPERAWATAN-PANDUAN PEMBERIAN KEWENANGAN KLINIS TENAGA KEPERAWATAN.pdf', '2021-12-01 15:21:15');

-- --------------------------------------------------------

--
-- Table structure for table `pedoman`
--

CREATE TABLE `pedoman` (
  `id` int(11) NOT NULL,
  `unit` varchar(255) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `files` varchar(160) NOT NULL,
  `tgl_upload` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pedoman`
--

INSERT INTO `pedoman` (`id`, `unit`, `judul`, `deskripsi`, `files`, `tgl_upload`) VALUES
(1, 'UNIT SDM', 'PEDOMAN PENGORGANISASIAN UNIT SDM DAN DIKLAT', 'PERATURAN DIREKTUR NOMOR 3573/A000/XI/2021 TENTANG PEDOMAN PENGORGANISASIAN UNIT SDM DAN DIKLAT', '../../files/UNIT SDM-PEDOMAN PENGORGANISASIAN UNIT SDM DAN DIKLAT.pdf', '2021-11-27 11:41:08'),
(3, 'UNIT GAWAT DARURAT', 'PEDOMAN PENGORGANISASIAN UNIT GAWAT DARURAT', 'Peraturan Direktur Rumah Sakit Intan Husada Nomor 3659/A000/XI/2021 Tentang Pedoman Pengorganisasian Unit Gawat Darurat', '../../files/UNIT GAWAT DARURAT-PEDOMAN PENGORGANISASIAN UNIT GAWAT DARURAT.pdf', '2021-12-02 10:11:01'),
(4, 'KOMITE SPI', 'PEDOMAN PENGORGANISASIAN SATUAN PEMERIKSA INTERNAL', 'Peraturan Direktur Rumah Sakit Intan Husada Nomor 3670/A000/XI/2021 Tentang Pedoman Pengorganisasian Satuan Pemeriksa Internal', '../../files/KOMITE SPI-PEDOMAN PENGORGANISASIAN SATUAN PEMERIKSA INTERNAL.pdf', '2021-12-02 10:12:55'),
(5, 'UNIT INTENSIF DEWASA', 'PEDOMAN PENGORGANISASIAN UNIT INTENSIF DEWASA', 'Peraturan DIrektur Rumah Sakit Intan Husada Nomor 3576/A000/XI/2021 Tentang Pedoman Pengirganisasian Unit Intensif Dewasa', '../../files/UNIT INTENSIF DEWASA-PEDOMAN PENGORGANISASIAN UNIT INTENSIF DEWASA.pdf', '2021-12-03 07:57:48'),
(6, 'UNIT RADIOLOGI', 'PEDOMAN PENGORGANISASIAN UNIT RADIOLOGI', 'Peraturan Direktur Rumah Sakit Intan Husada Nomor 3657/A000/XI/2021 Tentang Pedoman Pengorganisasian Unit Radiologi', '../../files/UNIT RADIOLOGI-PEDOMAN PENGORGANISASIAN UNIT RADIOLOGI.pdf', '2021-12-03 10:04:01'),
(7, 'UNIT LABORATORIUM', 'PEDOMAN PENGORGANISASIAN UNIT LABORATORIUM', 'Peraturan Direktur Rumah Sakit Intan Husada Nomor 3639/A000/XI/2021 Tentang Pedoman Pengorganisasian Unit Laboratorium ', '../../files/UNIT LABORATORIUM-PEDOMAN PENGORGANISASIAN UNIT LABORATORIUM.pdf', '2021-12-03 12:14:31'),
(8, 'UNIT BINATU', 'PEDOMAN PENGORGANISASIAN UNIT BINATU', 'Peraturan DIrektur Rumah Sakit Intan Husada Nomor 3675/A000/XI/2021 Tentang Pedoman Pengorganisasian Unit Binatu', '../../files/UNIT BINATU-PEDOMAN PENGORGANISASIAN UNIT BINATU.pdf', '2021-12-06 15:13:35'),
(9, 'UNIT GIZI', 'PEDOMAN PENGORGANISASIAN UNIT GIZI', 'Peraturan Direktur Rumah Sakit Nomor 3673/A000/XI/2021 Tentang Pedoman Pengorganisasian Unit Gizi', '../../files/UNIT GIZI-PEDOMAN PENGORGANISASIAN UNIT GIZI.pdf', '2021-12-08 10:23:10'),
(10, 'KOMITE PPI', 'PEDOMAN PENGORGANISASIAN KOMITE PPI', 'Peraturan Direktur Rumah Sakit Intan Husada Nomor 3660/A000/XI/2021 Tentang Pedoman Pengorganisasian Komite Pencegahan dan Pengendalian Infeksi', '../../files/KOMITE PPI-PEDOMAN PENGORGANISASIAN KOMITE PPI.pdf', '2021-12-08 15:02:40'),
(11, 'UNIT LOGISTIK', 'PEDOMAN PENGORGANISASIAN UNIT LOGISTIK', 'Peraturan Direktur Rumah Sakit Intan Husada Nomor 3671/A000/XI/2021 Tentang Pedoman Pengorganisasian Unit Logistik', '../../files/UNIT LOGISTIK-PEDOMAN PENGORGANISASIAN UNIT LOGISTIK.pdf', '2021-12-08 15:07:26'),
(12, 'UNIT RAWAT JALAN', 'PEDOMAN PENGORGANISASIAN UNIT RAWAT JALAN', 'Peraturan Direktur Rumah Sakit Intan Husada Nomor 3667/A000/XI/2021 Tentang Pedoman Pengorganisasian Unit Rawat Jalan', '../../files/UNIT RAWAT JALAN-PEDOMAN PENGORGANISASIAN UNIT RAWAT JALAN.pdf', '2021-12-09 14:51:10'),
(13, 'UNIT REKAM MEDIS', 'PEDOMAN PENGORGANISASIAN UNIT REKAM MEDIS', 'Peraturan Direktur Rumah Sakit Intan Husada \r\nNomor 3661/A000/XI/2021 Tentang Pedoman Pengorganisasian \r\nUnit Rekam Medis', '../../files/UNIT REKAM MEDIS-PEDOMAN PENGORGANISASIAN UNIT REKAM MEDIS.pdf', '2021-12-09 14:54:15'),
(14, 'KOMITE KEPERAWATAN', 'PEDOMAN PENGORGANISASIAN KOMITE KEPERAWATAN', 'Peraturan Direktur Rumah Sakit Intan Husada Nomor 3674/A000/XI/2021 Tentang Pedoman Pengorganisasian Komite Keperawatan', '../../files/KOMITE KEPERAWATAN-PEDOMAN PENGORGANISASIAN KOMITE KEPERAWATAN.pdf', '2021-12-13 09:01:19'),
(15, 'UNIT RAWAT INAP', 'PEDOMAN PENGORGANISASIAN UNIT RAWAT INAP', 'Peraturan Direktur Rumah Sakit Intan Husada Nomor 3638/A000/XI/2021 Tentang Pedoman Pengorganisasian Unit Rawat Inap', '../../files/UNIT RAWAT INAP-PEDOMAN PENGORGANISASIAN UNIT RAWAT INAP.pdf', '2021-12-13 09:03:11'),
(16, 'UNIT KESEKRETARIATAN', 'PEDOMAN PENGORGANISASIAN UNIT KESEKRETARIATAN', 'Peraturan Direktur Rumah Sakit Intan Husada Nomor 3581/A000/XI/2021 Tentang Pedoman Pengorganisasian Unit Kesekretariatan', '../../files/UNIT KESEKRETARIATAN-PEDOMAN PENGORGANISASIAN UNIT KESEKRETARIATAN.pdf', '2021-12-14 08:19:04'),
(17, 'UNIT AKUNTANSI', 'PEDOMAN PENGORGANISASIAN UNIT AKUNTANSI', 'Peraturan Direktur Rumah Sakit Intan Husada Nomor 3672/A000/XI/2021 Tentang Pedoman Pengorganisasian Unit Akuntansi ', '../../files/UNIT AKUNTANSI-PEDOMAN PENGORGANISASIAN UNIT AKUNTANSI.pdf', '2021-12-17 10:35:16');

-- --------------------------------------------------------

--
-- Table structure for table `sdrs`
--

CREATE TABLE `sdrs` (
  `id` int(11) NOT NULL,
  `unit` varchar(50) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `files` varchar(160) NOT NULL,
  `tgl_upload` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sdrs`
--

INSERT INTO `sdrs` (`id`, `unit`, `judul`, `deskripsi`, `files`, `tgl_upload`) VALUES
(1, 'KEBIJAKAN MANAJEMEN ', 'KEBIJAKAN STANDAR MANAJEMEN SUMBER DAYA RS', 'Peraturan Direktur Rumah Sakit Intan Husada Nomor 3530/A000/XI/2021 Tentang Standar Manajemen Sumber Daya Rumah Sakit', '../../files/KEBIJAKAN MANAJEMEN SDRS-KEBIJAKAN STANDAR MANAJEMEN SUMBER DAYA RS.pdf', '2021-11-26 09:20:34');

-- --------------------------------------------------------

--
-- Table structure for table `skdirektur`
--

CREATE TABLE `skdirektur` (
  `id` int(11) NOT NULL,
  `unit` varchar(50) NOT NULL,
  `judul` varchar(255) NOT NULL,
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
  `unit` varchar(50) NOT NULL,
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
-- Indexes for table `skdirektur`
--
ALTER TABLE `skdirektur`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kspbp`
--
ALTER TABLE `kspbp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `notulensi`
--
ALTER TABLE `notulensi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;

--
-- AUTO_INCREMENT for table `nursingbylaw`
--
ALTER TABLE `nursingbylaw`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `panduan`
--
ALTER TABLE `panduan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pedoman`
--
ALTER TABLE `pedoman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `sdrs`
--
ALTER TABLE `sdrs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `skdirektur`
--
ALTER TABLE `skdirektur`
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
