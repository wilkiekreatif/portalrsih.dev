-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Okt 2021 pada 08.01
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portalrsih`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `notulensi`
--

CREATE TABLE `notulensi` (
  `id` int(11) NOT NULL COMMENT 'format: 000/NE700/XII/2021',
  `unit` varchar(20) DEFAULT NULL,
  `masalah` varchar(50) DEFAULT NULL,
  `tindaklanjut` varchar(200) DEFAULT NULL,
  `pic1` varchar(20) DEFAULT NULL,
  `pic2` varchar(20) DEFAULT NULL,
  `pic3` varchar(20) DEFAULT NULL,
  `deadline` date DEFAULT NULL,
  `deadline_baru` date DEFAULT NULL,
  `tgl_selesai` date DEFAULT NULL,
  `hasil` varchar(200) DEFAULT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `notulensi`
--

INSERT INTO `notulensi` (`id`, `unit`, `masalah`, `tindaklanjut`, `pic1`, `pic2`, `pic3`, `deadline`, `deadline_baru`, `tgl_selesai`, `hasil`, `status`) VALUES
(1, 'IT', 'test', 'test', 'test', 'test', 'tset', '2021-10-21', NULL, NULL, 'test', 0),
(2, 'IT', 'test', 'test', 'test', 'test', 'tset', '2021-10-21', NULL, NULL, 'test', 1),
(3, 'IT', 'test', 'test', 'test', 'test', 'tset', '2021-10-21', NULL, NULL, 'test', 2),
(4, 'IT', 'SIMRS masih terdapat bug', 'Menunggu Update dari Vendor', 'Pak Wahyu', 'Pak TB', '', '2021-10-31', '0000-00-00', '0000-00-00', '', 0),
(5, 'IT', 'test 1', 'tes 1', 'tes ', 'tes', 'tes', '1992-12-07', '0000-00-00', '0000-00-00', '', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sk`
--

CREATE TABLE `sk` (
  `no_sk` varchar(20) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `bagian` varchar(255) DEFAULT NULL,
  `files` varchar(100) DEFAULT NULL,
  `tgl_input` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `sk`
--

INSERT INTO `sk` (`no_sk`, `nama`, `keterangan`, `bagian`, `files`, `tgl_input`) VALUES
('SK/000001/IT', 'SK PENETAPAN STAF IT', 'SK IT', 'IT', 'files/SK PENETAPAN STAF IT.pdf', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `username` varchar(8) NOT NULL,
  `password` varchar(32) NOT NULL,
  `nama_lengkap` varchar(30) NOT NULL,
  `tipe` int(1) NOT NULL,
  `jabatan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`username`, `password`, `nama_lengkap`, `tipe`, `jabatan`) VALUES
('ismet', '64db135147b3bdff27ee1f2d40543e01', 'dr. ISMET ALIMIN, MM.MARS', 2, 'Direktur'),
('ispan', 'af6b3aa8c3fcd651674359f500814679', 'ispan Fajrul Falakh', 0, 'Staff it'),
('resha', '0cc175b9c0f1b6a831c399e269772661', 'Muhammad Resha Mantik', 0, 'IT'),
('Rizal', 'af6b3aa8c3fcd651674359f500814679', 'Tubagus Rizal Abdul Hamid', 3, 'Kabag IT'),
('test', '098f6bcd4621d373cade4e832627b4f6', 'test', 1, 'test'),
('wildan', 'af6b3aa8c3fcd651674359f500814679', 'Wildan Auliana', 0, 'Staff IT');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `notulensi`
--
ALTER TABLE `notulensi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sk`
--
ALTER TABLE `sk`
  ADD PRIMARY KEY (`no_sk`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `notulensi`
--
ALTER TABLE `notulensi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'format: 000/NE700/XII/2021', AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
