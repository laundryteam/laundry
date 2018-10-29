-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2018 at 06:50 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `loundry_sepatu`
--

-- --------------------------------------------------------

--
-- Table structure for table `jenis_sepatu`
--

CREATE TABLE `jenis_sepatu` (
  `kd_sepatu` varchar(10) CHARACTER SET latin1 NOT NULL,
  `jenis_sepatu` varchar(30) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `konsumen`
--

CREATE TABLE `konsumen` (
  `kd_konsumen` varchar(50) CHARACTER SET latin1 NOT NULL,
  `nama_konsumen` varchar(50) CHARACTER SET latin1 NOT NULL,
  `jenis_kelamin` varchar(15) CHARACTER SET latin1 NOT NULL,
  `alamat` varchar(100) CHARACTER SET latin1 NOT NULL,
  `no_hp` char(12) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `paket_jasa`
--

CREATE TABLE `paket_jasa` (
  `kd_paket` varchar(12) CHARACTER SET latin1 NOT NULL,
  `jenis_jasa` varchar(30) CHARACTER SET latin1 NOT NULL,
  `satuan` varchar(20) CHARACTER SET latin1 NOT NULL,
  `harga` varchar(15) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `pengembalian_cucian`
--

CREATE TABLE `pengembalian_cucian` (
  `tgl_ambil` datetime NOT NULL,
  `konsumen` varchar(50) CHARACTER SET latin1 NOT NULL,
  `jenis_jasa` varchar(30) CHARACTER SET latin1 NOT NULL,
  `berat_cucian` decimal(4,2) NOT NULL,
  `jumlah_sepatu` int(5) NOT NULL,
  `jenis_sepatu` varchar(30) CHARACTER SET latin1 NOT NULL,
  `harga` int(11) NOT NULL,
  `total_bayar` int(11) NOT NULL,
  `sisa` int(11) NOT NULL,
  `keterangan` varchar(100) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `penyerahan_cucian`
--

CREATE TABLE `penyerahan_cucian` (
  `tgl_serah` datetime NOT NULL,
  `konsumen` varchar(50) CHARACTER SET latin1 NOT NULL,
  `jenis_jasa` varchar(30) CHARACTER SET latin1 NOT NULL,
  `berat_cucian` decimal(4,2) NOT NULL,
  `jumlah_sepatu` int(11) NOT NULL,
  `jenis_sepatu` varchar(30) CHARACTER SET latin1 NOT NULL,
  `harga` int(11) NOT NULL,
  `total_bayar` int(11) NOT NULL,
  `sisa` int(11) NOT NULL,
  `keterangan` varchar(100) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `satuan`
--

CREATE TABLE `satuan` (
  `kd_satuan` varchar(12) CHARACTER SET latin1 NOT NULL,
  `nama_satuan` varchar(20) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(20) CHARACTER SET latin1 NOT NULL,
  `nama` varchar(50) CHARACTER SET latin1 NOT NULL,
  `password` varchar(20) CHARACTER SET latin1 NOT NULL,
  `jenis_user` varchar(50) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jenis_sepatu`
--
ALTER TABLE `jenis_sepatu`
  ADD PRIMARY KEY (`kd_sepatu`);

--
-- Indexes for table `konsumen`
--
ALTER TABLE `konsumen`
  ADD PRIMARY KEY (`kd_konsumen`);

--
-- Indexes for table `paket_jasa`
--
ALTER TABLE `paket_jasa`
  ADD PRIMARY KEY (`kd_paket`);

--
-- Indexes for table `pengembalian_cucian`
--
ALTER TABLE `pengembalian_cucian`
  ADD PRIMARY KEY (`tgl_ambil`);

--
-- Indexes for table `penyerahan_cucian`
--
ALTER TABLE `penyerahan_cucian`
  ADD PRIMARY KEY (`tgl_serah`);

--
-- Indexes for table `satuan`
--
ALTER TABLE `satuan`
  ADD PRIMARY KEY (`kd_satuan`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
