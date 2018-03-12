-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 24, 2018 at 03:48 AM
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
-- Table structure for table `user_status_msg`
--

CREATE TABLE `user_status_msg` (
  `kd` varchar(50) NOT NULL,
  `kd_user_status` varchar(50) DEFAULT NULL,
  `dari` varchar(50) DEFAULT NULL,
  `msg` varchar(255) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `user_status_msg`
--

INSERT INTO `user_status_msg` (`kd`, `kd_user_status`, `dari`, `msg`, `postdate`) VALUES
('ce41a5f0068cecc8f6a4b03f107440c1', 'e58fc83f62c3762e91d0a17677b5f4db', '33f5c8a1e2aeb16d3059638de5d1d4af', 'okk', '2018-01-07 04:17:24'),
('df82708c3b35def8c56e2253a451900c', 'e58fc83f62c3762e91d0a17677b5f4db', '33f5c8a1e2aeb16d3059638de5d1d4af', 'iiipppp', '2018-01-07 04:17:31'),
('947364d4096e2780cdb2569c5d3fdc46', 'e58fc83f62c3762e91d0a17677b5f4db', '463a8b35dcf6239d02e41dfafbf2cc69', 'trus piye...', '2018-01-07 04:35:32'),
('ada83461c9753f98a1454015c6b84a05', 'e58fc83f62c3762e91d0a17677b5f4db', '463a8b35dcf6239d02e41dfafbf2cc69', 'lanjutkan...', '2018-01-07 04:36:38'),
('da6283b3ec8bfbcf053ec0f3cdc94167', 'e58fc83f62c3762e91d0a17677b5f4db', '463a8b35dcf6239d02e41dfafbf2cc69', 'sapi ya', '2018-01-07 04:37:47'),
('b00f75fbf4d8dd8210b37f425238e9e8', '50796c0fd47ed5a3230e802940d661ef', '463a8b35dcf6239d02e41dfafbf2cc69', 'oh...', '2018-01-07 04:38:02'),
('3b30e1fdeddb61f56f9ccf212ba44722', '50796c0fd47ed5a3230e802940d661ef', '463a8b35dcf6239d02e41dfafbf2cc69', 'bisa kok, dilanjutkan saja...', '2018-01-07 04:38:20'),
('142fe776dbc9bebd0119fb42d48582c6', '50796c0fd47ed5a3230e802940d661ef', '463a8b35dcf6239d02e41dfafbf2cc69', 'ok.', '2018-01-07 04:50:44'),
('327aec52a2ae989054ed6b51ca4e1587', '5df3263fbe5d028b80f985c0fbbae417', '463a8b35dcf6239d02e41dfafbf2cc69', 'siapa saja ya', '2018-01-16 14:14:56'),
('5b51a96a53f69a3c0eccca046e5eea5a', '5df3263fbe5d028b80f985c0fbbae417', '463a8b35dcf6239d02e41dfafbf2cc69', 'ok deh... aq ikut ya..', '2018-01-16 14:15:08'),
('6a7f4ba30ebf2fe13b51e0be9f8978f3', 'e58fc83f62c3762e91d0a17677b5f4db', '463a8b35dcf6239d02e41dfafbf2cc69', 'sdd', '2018-01-16 15:21:27'),
('e193b2217d3c7e588c647bf3528905a0', 'e58fc83f62c3762e91d0a17677b5f4db', '463a8b35dcf6239d02e41dfafbf2cc69', 'siapa saja...', '2018-01-16 15:21:38'),
('94560b5759bfda573c424e65151f3f60', 'd6bf121c2c9c3467bd7a0d6f1f0a9a86', '463a8b35dcf6239d02e41dfafbf2cc69', 'so', '2018-01-16 15:26:27'),
('c3051a77b7fdf820219ed42d1b98f648', 'd6bf121c2c9c3467bd7a0d6f1f0a9a86', '463a8b35dcf6239d02e41dfafbf2cc69', 'diam itu indah', '2018-01-16 15:26:39'),
('2d055886d94361c18fa9c54d1fbc4028', 'd6bf121c2c9c3467bd7a0d6f1f0a9a86', '463a8b35dcf6239d02e41dfafbf2cc69', 'f saf asf asf as sa fsa', '2018-01-16 15:32:10'),
('6b11601660038a7dd299516eb940dc15', 'a151040f6ff1952dc2d19447f31198a7', '463a8b35dcf6239d02e41dfafbf2cc69', 'apa', '2018-01-16 15:35:34'),
('84eaf6f7b69d7bb80fbc40b2c1474251', 'e58fc83f62c3762e91d0a17677b5f4db', '463a8b35dcf6239d02e41dfafbf2cc69', 'cukup', '2018-01-16 15:38:07'),
('a79a8630d8e948b491f3d6731a2f067f', 'a151040f6ff1952dc2d19447f31198a7', '463a8b35dcf6239d02e41dfafbf2cc69', 'sddd', '2018-01-16 15:39:38'),
('8d1189ed824e66c812c2fe1f738ac4c2', 'a151040f6ff1952dc2d19447f31198a7', '463a8b35dcf6239d02e41dfafbf2cc69', 'baiklah...', '2018-01-16 15:39:48'),
('c607731a0ebd5411ab9af5e545a795ad', 'f6ae93a17013533a18b2d9430606a5bd', '463a8b35dcf6239d02e41dfafbf2cc69', 'urai saja', '2018-01-16 15:42:00'),
('155aaa9de05b6f91c2f186b487ecc764', 'd6bf121c2c9c3467bd7a0d6f1f0a9a86', '463a8b35dcf6239d02e41dfafbf2cc69', 'dss', '2018-01-19 15:14:29'),
('89f9d2d39db53826d3021c617ae8548f', 'd6bf121c2c9c3467bd7a0d6f1f0a9a86', '463a8b35dcf6239d02e41dfafbf2cc69', '1234555', '2018-01-19 15:14:39'),
('42f8f5fab6cbde99ece8deb03c0b04b0', 'a151040f6ff1952dc2d19447f31198a7', '463a8b35dcf6239d02e41dfafbf2cc69', 'sswee', '2018-01-19 15:14:59'),
('55ed71d834e379d32ce2fc0ad758cbaf', '5df3263fbe5d028b80f985c0fbbae417', '463a8b35dcf6239d02e41dfafbf2cc69', 'saaa', '2018-01-19 15:15:10'),
('afc5841012eeec2b5b847764263c344c', 'e58fc83f62c3762e91d0a17677b5f4db', '463a8b35dcf6239d02e41dfafbf2cc69', 'asswww', '2018-01-19 15:15:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user_status_msg`
--
ALTER TABLE `user_status_msg`
  ADD PRIMARY KEY (`kd`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
