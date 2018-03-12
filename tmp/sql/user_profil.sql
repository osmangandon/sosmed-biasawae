-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 24, 2018 at 03:47 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `biasawae_social_media`
--

-- --------------------------------------------------------

--
-- Table structure for table `user_profil`
--

CREATE TABLE `user_profil` (
  `kd` varchar(50) NOT NULL,
  `filex_foto` varchar(255) DEFAULT NULL,
  `tmp_lahir` varchar(100) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `situs` varchar(255) DEFAULT NULL,
  `telp` varchar(100) DEFAULT NULL,
  `agama` varchar(30) DEFAULT NULL,
  `hobi` varchar(100) DEFAULT NULL,
  `aktivitas` varchar(100) DEFAULT NULL,
  `makanan` varchar(100) DEFAULT NULL,
  `minuman` varchar(100) DEFAULT NULL,
  `musik` varchar(100) DEFAULT NULL,
  `film` varchar(100) DEFAULT NULL,
  `buku` varchar(100) DEFAULT NULL,
  `idola` varchar(100) DEFAULT NULL,
  `pend_akhir` varchar(100) DEFAULT NULL,
  `pend_thnlulus` varchar(4) DEFAULT NULL,
  `moto` varchar(255) DEFAULT NULL,
  `kata_mutiara` varchar(255) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user_profil`
--
ALTER TABLE `user_profil`
  ADD PRIMARY KEY (`kd`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
