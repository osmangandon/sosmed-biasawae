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
-- Table structure for table `user_status`
--

CREATE TABLE `user_status` (
  `kd` varchar(50) NOT NULL,
  `status` longtext,
  `postdate` datetime DEFAULT NULL,
  `filex` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `user_status`
--

INSERT INTO `user_status` (`kd`, `status`, `postdate`, `filex`) VALUES
('50796c0fd47ed5a3230e802940d661ef', 'sadar', '2018-01-07 04:10:51', ''),
('e58fc83f62c3762e91d0a17677b5f4db', 'okkk', '2018-01-07 04:11:20', ''),
('5df3263fbe5d028b80f985c0fbbae417', 'adem ayem', '2018-01-16 14:14:43', ''),
('43fa8a84dd8fbf566b811e4230eb50b7', 'ok...', '2018-01-16 15:20:05', ''),
('d6bf121c2c9c3467bd7a0d6f1f0a9a86', 'coba lagi, kalau bisa... wkwkwkwkkkk', '2018-01-16 15:25:23', ''),
('a151040f6ff1952dc2d19447f31198a7', 'siap deh...', '2018-01-16 15:35:26', ''),
('f6ae93a17013533a18b2d9430606a5bd', 'sepertinya mudah ya', '2018-01-16 15:41:46', ''),
('bdbd18ed9fae03d83438c9b036576572', 'v', '2018-01-18 16:12:03', ''),
('895c2ccbccd66cbe1b192692c277f663', 'awws', '2018-01-18 16:55:50', ''),
('9a40790e8f79c1fdac9be1aac40ec95b', 'aqqww', '2018-01-18 16:56:03', ''),
('0ca974fde4ef704d595d8001be8eb2c7', 'weeeee', '2018-01-18 16:56:17', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user_status`
--
ALTER TABLE `user_status`
  ADD PRIMARY KEY (`kd`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
