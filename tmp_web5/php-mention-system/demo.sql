-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2017 at 05:42 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `w3_post`
--

CREATE TABLE `w3_post` (
  `post_id` int(9) NOT NULL,
  `post_text` mediumtext NOT NULL,
  `post_user_id` int(9) NOT NULL,
  `post_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `w3_post`
--

INSERT INTO `w3_post` (`post_id`, `post_text`, `post_user_id`, `post_date`) VALUES
(1, '@[4] how are you?', 1, '2017-10-19 16:29:10'),
(2, '@[3] check this tutorial - https://w3lessons.info/2015/04/19/@[3]-oauth-login-without-page-refresh-using-jquery-php-mysql/', 1, '2017-10-19 16:36:51');

-- --------------------------------------------------------

--
-- Table structure for table `w3_user`
--

CREATE TABLE `w3_user` (
  `user_id` int(9) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `user_email` varchar(30) NOT NULL,
  `user_profile_url` varchar(200) NOT NULL,
  `user_status` smallint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `w3_user`
--

INSERT INTO `w3_user` (`user_id`, `user_name`, `user_email`, `user_profile_url`, `user_status`) VALUES
(1, 'w3lessons', 'karthi@w3lessons.info', 'https://w3lessons.info', 1),
(2, 'google', 'itzurkarthi@gmail.com', 'https://plus.google.com/+KarthikeyanK', 1),
(3, 'facebook', 'itzurkarthi@facebook.com', 'https://www.facebook.com/w3lessons.info/', 1),
(4, 'karthik', 'karthi@w3lessons.info', 'https://www.facebook.com/itzurkarthi', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `w3_post`
--
ALTER TABLE `w3_post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `w3_user`
--
ALTER TABLE `w3_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `w3_post`
--
ALTER TABLE `w3_post`
  MODIFY `post_id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `w3_user`
--
ALTER TABLE `w3_user`
  MODIFY `user_id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
