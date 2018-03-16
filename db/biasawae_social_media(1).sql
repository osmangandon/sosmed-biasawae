-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 16, 2018 at 05:36 AM
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
-- Table structure for table `adminx`
--

CREATE TABLE `adminx` (
  `kd` varchar(50) NOT NULL,
  `usernamex` varchar(15) DEFAULT NULL,
  `passwordx` varchar(50) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `m_hashtag`
--

CREATE TABLE `m_hashtag` (
  `kd` varchar(50) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `m_keahlian`
--

CREATE TABLE `m_keahlian` (
  `kd` varchar(50) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `m_minat`
--

CREATE TABLE `m_minat` (
  `kd` varchar(50) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `m_publik_user`
--

CREATE TABLE `m_publik_user` (
  `kd` varchar(50) NOT NULL,
  `usernamex` varchar(100) DEFAULT NULL,
  `passwordx` varchar(50) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `m_publik_user`
--

INSERT INTO `m_publik_user` (`kd`, `usernamex`, `passwordx`, `nama`, `postdate`, `email`) VALUES
('33f5c8a1e2aeb16d3059638de5d1d4af', '2', 'c81e728d9d4c2f636f067f89cc14862c', '2', '2018-01-07 03:46:55', '2'),
('463a8b35dcf6239d02e41dfafbf2cc69', '1', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2018-01-07 04:25:27', '1'),
('305c372acd4cdb57f8ed89b9fc36c07880', '9x', '41d60d32d9ec705b3d3409e5c37a47ed', '9x', '2018-03-16 03:59:26', '9x'),
('f10e55153817313d8ea2147f1e73056b182', '8', '35ceff6d0886aeb91b02882bb4e5f433', '8xstrix', '2018-03-16 04:44:16', '8xstrix'),
('93a157e4065fe179017f0c91b28f55d9481', 'a9', '3d1e97d18e692ca5484d1abfe617b6c1', 'a9', '2018-03-16 04:44:44', 'a9');

-- --------------------------------------------------------

--
-- Table structure for table `m_publik_user_minat`
--

CREATE TABLE `m_publik_user_minat` (
  `kd` varchar(50) NOT NULL,
  `kd_user` varchar(50) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `m_publik_user_profil`
--

CREATE TABLE `m_publik_user_profil` (
  `kd` varchar(50) NOT NULL,
  `kd_user` varchar(50) NOT NULL,
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `m_publik_user_status`
--

CREATE TABLE `m_publik_user_status` (
  `kd` varchar(50) NOT NULL,
  `kd_user` varchar(50) NOT NULL,
  `status` longtext,
  `postdate` datetime DEFAULT NULL,
  `filex` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_publik_user_status`
--

INSERT INTO `m_publik_user_status` (`kd`, `kd_user`, `status`, `postdate`, `filex`) VALUES
('abd25dfbc8f14345fb0fa5b7db1d8f6c', '305c372acd4cdb57f8ed89b9fc36c07880', 'ok', '2018-03-16 04:09:29', ''),
('0dd752739eede6e871be88e6adfb1b7c', '305c372acd4cdb57f8ed89b9fc36c07880', 'coba ya...', '2018-03-16 04:09:49', ''),
('2bc2e3ca1fa90e2758fba7d3a8c77024', '305c372acd4cdb57f8ed89b9fc36c07880', 'ddd', '2018-03-16 04:10:36', ''),
('66d0ebf2986f2b3eab241b20504b7a29', '305c372acd4cdb57f8ed89b9fc36c07880', 'dddd', '2018-03-16 04:12:39', ''),
('bea9f0a0a932454ead8c444a8af634b3', '305c372acd4cdb57f8ed89b9fc36c07880', 'ssddd', '2018-03-16 04:13:39', ''),
('f30de9983374143839c6512173e9efe2', '305c372acd4cdb57f8ed89b9fc36c07880', 'siapkan diri mu ya....', '2018-03-16 04:18:40', ''),
('f2a7d38600f8b8011e2fe7da6ff9174f', '305c372acd4cdb57f8ed89b9fc36c07880', 'ddsss', '2018-03-16 04:29:46', ''),
('8f9b3aef21ce601bc83dbaee05c523fc', '305c372acd4cdb57f8ed89b9fc36c07880', 'ddff', '2018-03-16 04:31:29', ''),
('3aefd093c950ef579f17c97a1d36531f', '305c372acd4cdb57f8ed89b9fc36c07880', 'dssss', '2018-03-16 04:32:34', ''),
('9d4ee6a0c0c5e6d2529224e8e46b7b96', '305c372acd4cdb57f8ed89b9fc36c07880', 'sssddd', '2018-03-16 04:33:42', ''),
('199dbaa5dba41fc0e28b4ac11986d4c9', '305c372acd4cdb57f8ed89b9fc36c07880', 'wwwwwwww', '2018-03-16 04:35:36', ''),
('20988f91206d2667cec45a191bfee2a6', '305c372acd4cdb57f8ed89b9fc36c07880', 'dddd', '2018-03-16 04:36:53', ''),
('fcdce98edcbfae1e4df29b571a669aba', '305c372acd4cdb57f8ed89b9fc36c07880', 'sssssss', '2018-03-16 04:38:06', ''),
('a6af77d2d9bc1ad78852353e29c62908', '305c372acd4cdb57f8ed89b9fc36c07880', 'siap.........', '2018-03-16 04:41:14', ''),
('dfed1631df980c8574167b8ecc2e599a', '305c372acd4cdb57f8ed89b9fc36c07880', 'saddd', '2018-03-16 04:41:53', ''),
('8556dfc2a0f08c3dc03832e463b343a6', '305c372acd4cdb57f8ed89b9fc36c07880', 'ssddddffffff', '2018-03-16 04:43:25', ''),
('531f36ade01598bc7f4bdce281c76176', '93a157e4065fe179017f0c91b28f55d9481', 'dsddd', '2018-03-16 04:49:45', ''),
('77c95f19aaa81c530257d9f4c78c5e4d', '93a157e4065fe179017f0c91b28f55d9481', 'dsssssssssssssss', '2018-03-16 04:52:53', ''),
('abe46db40e4f283708185993cc51cd74', '93a157e4065fe179017f0c91b28f55d9481', 'ok', '2018-03-16 04:53:26', ''),
('801cf3cd3d0615bfda014f2e03047867', '93a157e4065fe179017f0c91b28f55d9481', 'sddd', '2018-03-16 04:54:38', ''),
('92dccf2fb75992a177230a2b4aa5363d', '93a157e4065fe179017f0c91b28f55d9481', 'sudah ya...', '2018-03-16 04:54:51', ''),
('908aad2ed7cd3b425061780f7041eeec', '93a157e4065fe179017f0c91b28f55d9481', 'ok deh...', '2018-03-16 04:55:41', ''),
('87aa886f2f3495436a7315439265a933', '93a157e4065fe179017f0c91b28f55d9481', 'diam saja ya...', '2018-03-16 04:56:38', ''),
('f96826c08a8fd79e5745bc3194e690e5', '93a157e4065fe179017f0c91b28f55d9481', 'pokoknya coba saja ya....', '2018-03-16 04:56:52', ''),
('52bf3dee42469ed6a07a7b62cf49ec6a', '93a157e4065fe179017f0c91b28f55d9481', 'ok deh.', '2018-03-16 04:58:21', ''),
('9c179b431a20a4b84240cb3bc4c82efc', '93a157e4065fe179017f0c91b28f55d9481', 'diam itu emas... katanya.....', '2018-03-16 05:02:49', ''),
('3aa41eb02ec1bd08edc2b3d75ed92658', '93a157e4065fe179017f0c91b28f55d9481', 'siap...', '2018-03-16 05:34:33', '');

-- --------------------------------------------------------

--
-- Table structure for table `m_publik_user_status_like`
--

CREATE TABLE `m_publik_user_status_like` (
  `kd` varchar(50) NOT NULL,
  `kd_user_status` varchar(50) DEFAULT NULL,
  `dari` varchar(50) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `m_publik_user_status_msg`
--

CREATE TABLE `m_publik_user_status_msg` (
  `kd` varchar(50) NOT NULL,
  `kd_user_status` varchar(50) DEFAULT NULL,
  `dari` varchar(50) DEFAULT NULL,
  `msg` varchar(255) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_publik_user_status_msg`
--

INSERT INTO `m_publik_user_status_msg` (`kd`, `kd_user_status`, `dari`, `msg`, `postdate`) VALUES
('d39e3a769c3fd9ba7cb43a915aaa3308', 'bea9f0a0a932454ead8c444a8af634b3', '305c372acd4cdb57f8ed89b9fc36c07880', 'dd', '2018-03-16 04:15:06'),
('d39e3a769c3fd9ba7cb43a915aaa3308', 'bea9f0a0a932454ead8c444a8af634b3', '305c372acd4cdb57f8ed89b9fc36c07880', 'dd', '2018-03-16 04:15:06'),
('9528b29e0a172b16337a4078762aa5d0', 'bea9f0a0a932454ead8c444a8af634b3', '305c372acd4cdb57f8ed89b9fc36c07880', 'ssss', '2018-03-16 04:15:37'),
('1518100fb73e8a4dd7622bf2cd20da81', 'bea9f0a0a932454ead8c444a8af634b3', '305c372acd4cdb57f8ed89b9fc36c07880', 'AAA', '2018-03-16 04:16:01'),
('ef02d471c9e1ef01b7e6e8f08ab94007', 'bea9f0a0a932454ead8c444a8af634b3', '305c372acd4cdb57f8ed89b9fc36c07880', 'efefef', '2018-03-16 04:16:30'),
('7505746b2a91fa69720fd20ca0fadf2e', 'f30de9983374143839c6512173e9efe2', '305c372acd4cdb57f8ed89b9fc36c07880', 'aq yakin bisa...', '2018-03-16 04:18:46'),
('110365913c76e1e35e745770018544a7', 'f30de9983374143839c6512173e9efe2', '305c372acd4cdb57f8ed89b9fc36c07880', 'mau gimana lagi sih...', '2018-03-16 04:18:54'),
('8136c580b7519e35b243e5d297dbcd14', '52bf3dee42469ed6a07a7b62cf49ec6a', '93a157e4065fe179017f0c91b28f55d9481', 'setuju aja ya...', '2018-03-16 05:01:21'),
('ad88b5c9289e13b6c0f3e2a699f1da97', '52bf3dee42469ed6a07a7b62cf49ec6a', '93a157e4065fe179017f0c91b28f55d9481', 'yakin saja deh...', '2018-03-16 05:02:14'),
('2a591ee6ec9cd5880ee63f25642ed5d9', '9c179b431a20a4b84240cb3bc4c82efc', '93a157e4065fe179017f0c91b28f55d9481', 'ok deh...', '2018-03-16 05:03:03'),
('04709d6a1c7560c827104ef0430bf7ec', '9c179b431a20a4b84240cb3bc4c82efc', '93a157e4065fe179017f0c91b28f55d9481', 'ok ya...', '2018-03-16 05:34:45'),
('c3aa404af20217fe3ee21af31764d59a', '9c179b431a20a4b84240cb3bc4c82efc', '93a157e4065fe179017f0c91b28f55d9481', 'sip', '2018-03-16 05:35:22');

-- --------------------------------------------------------

--
-- Table structure for table `m_tag`
--

CREATE TABLE `m_tag` (
  `kd` varchar(50) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `kd` varchar(50) NOT NULL,
  `usernamex` varchar(100) DEFAULT NULL,
  `passwordx` varchar(50) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`kd`, `usernamex`, `passwordx`, `nama`, `postdate`, `email`) VALUES
('33f5c8a1e2aeb16d3059638de5d1d4af', '2', 'c81e728d9d4c2f636f067f89cc14862c', '2', '2018-01-07 03:46:55', '2'),
('463a8b35dcf6239d02e41dfafbf2cc69', '1', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2018-01-07 04:25:27', '1');

-- --------------------------------------------------------

--
-- Table structure for table `user06c62e2ee044b528e36db0d3d776f08a183`
--

CREATE TABLE `user06c62e2ee044b528e36db0d3d776f08a183` (
  `kd` varchar(50) NOT NULL,
  `usernamex` varchar(100) DEFAULT NULL,
  `passwordx` varchar(50) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user6ce3e2ac010dd8a5d2526761bbac141a611`
--

CREATE TABLE `user6ce3e2ac010dd8a5d2526761bbac141a611` (
  `kd` varchar(50) NOT NULL,
  `usernamex` varchar(100) DEFAULT NULL,
  `passwordx` varchar(50) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user6ce3e2ac010dd8a5d2526761bbac141a611`
--

INSERT INTO `user6ce3e2ac010dd8a5d2526761bbac141a611` (`kd`, `usernamex`, `passwordx`, `nama`, `postdate`, `email`) VALUES
('6ce3e2ac010dd8a5d2526761bbac141a611', '31', 'c16a5320fa475530d9583c34fd356ef5', '31', '2018-01-24 05:28:42', '31');

-- --------------------------------------------------------

--
-- Table structure for table `user6e42858c9c381f3f014da704ad82829b160`
--

CREATE TABLE `user6e42858c9c381f3f014da704ad82829b160` (
  `kd` varchar(50) NOT NULL,
  `usernamex` varchar(100) DEFAULT NULL,
  `passwordx` varchar(50) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user6e42858c9c381f3f014da704ad82829b160`
--

INSERT INTO `user6e42858c9c381f3f014da704ad82829b160` (`kd`, `usernamex`, `passwordx`, `nama`, `postdate`, `email`) VALUES
('6e42858c9c381f3f014da704ad82829b160', '30', '34173cb38f07f89ddbebc2ac9128303f', '30', '2018-01-24 05:23:14', '30');

-- --------------------------------------------------------

--
-- Table structure for table `user9bdd8b736adbb50c697d3b40556726e8926`
--

CREATE TABLE `user9bdd8b736adbb50c697d3b40556726e8926` (
  `kd` varchar(50) NOT NULL,
  `usernamex` varchar(100) DEFAULT NULL,
  `passwordx` varchar(50) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user93a157e4065fe179017f0c91b28f55d9481`
--

CREATE TABLE `user93a157e4065fe179017f0c91b28f55d9481` (
  `kd` varchar(50) NOT NULL,
  `usernamex` varchar(100) DEFAULT NULL,
  `passwordx` varchar(50) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user93a157e4065fe179017f0c91b28f55d9481`
--

INSERT INTO `user93a157e4065fe179017f0c91b28f55d9481` (`kd`, `usernamex`, `passwordx`, `nama`, `postdate`, `email`) VALUES
('93a157e4065fe179017f0c91b28f55d9481', 'a9', '3d1e97d18e692ca5484d1abfe617b6c1', 'a9', '2018-03-16 04:44:44', 'a9');

-- --------------------------------------------------------

--
-- Table structure for table `user305c372acd4cdb57f8ed89b9fc36c07880`
--

CREATE TABLE `user305c372acd4cdb57f8ed89b9fc36c07880` (
  `kd` varchar(50) NOT NULL,
  `usernamex` varchar(100) DEFAULT NULL,
  `passwordx` varchar(50) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user305c372acd4cdb57f8ed89b9fc36c07880`
--

INSERT INTO `user305c372acd4cdb57f8ed89b9fc36c07880` (`kd`, `usernamex`, `passwordx`, `nama`, `postdate`, `email`) VALUES
('305c372acd4cdb57f8ed89b9fc36c07880', '9x', '41d60d32d9ec705b3d3409e5c37a47ed', '9x', '2018-03-16 03:59:26', '9x');

-- --------------------------------------------------------

--
-- Table structure for table `user434cac91625a5c8752f63dcee13d8664178`
--

CREATE TABLE `user434cac91625a5c8752f63dcee13d8664178` (
  `kd` varchar(50) NOT NULL,
  `usernamex` varchar(100) DEFAULT NULL,
  `passwordx` varchar(50) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user5802d8707aa74c660f709fa82c0ba4a0315`
--

CREATE TABLE `user5802d8707aa74c660f709fa82c0ba4a0315` (
  `kd` varchar(50) NOT NULL,
  `usernamex` varchar(100) DEFAULT NULL,
  `passwordx` varchar(50) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user9360ae7c21d014da2d77e88c24a6ddf2291`
--

CREATE TABLE `user9360ae7c21d014da2d77e88c24a6ddf2291` (
  `kd` varchar(50) NOT NULL,
  `usernamex` varchar(100) DEFAULT NULL,
  `passwordx` varchar(50) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `usera280a1476afa79d4f67e5435de109a0a648`
--

CREATE TABLE `usera280a1476afa79d4f67e5435de109a0a648` (
  `kd` varchar(50) NOT NULL,
  `usernamex` varchar(100) DEFAULT NULL,
  `passwordx` varchar(50) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `userb19fda858159ea9d8fad417efdf554dd942`
--

CREATE TABLE `userb19fda858159ea9d8fad417efdf554dd942` (
  `kd` varchar(50) NOT NULL,
  `usernamex` varchar(100) DEFAULT NULL,
  `passwordx` varchar(50) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userb19fda858159ea9d8fad417efdf554dd942`
--

INSERT INTO `userb19fda858159ea9d8fad417efdf554dd942` (`kd`, `usernamex`, `passwordx`, `nama`, `postdate`, `email`) VALUES
('b19fda858159ea9d8fad417efdf554dd942', '91', '54229abfcfa5649e7003b83dd4755294', '91', '2018-01-28 03:13:22', '91');

-- --------------------------------------------------------

--
-- Table structure for table `usercf0628be7a02684290f1cfb8a16f89ea532`
--

CREATE TABLE `usercf0628be7a02684290f1cfb8a16f89ea532` (
  `kd` varchar(50) NOT NULL,
  `usernamex` varchar(100) DEFAULT NULL,
  `passwordx` varchar(50) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usercf0628be7a02684290f1cfb8a16f89ea532`
--

INSERT INTO `usercf0628be7a02684290f1cfb8a16f89ea532` (`kd`, `usernamex`, `passwordx`, `nama`, `postdate`, `email`) VALUES
('cf0628be7a02684290f1cfb8a16f89ea532', '24', '1ff1de774005f8da13f42943881c655f', '24', '2018-01-24 05:17:59', '24');

-- --------------------------------------------------------

--
-- Table structure for table `usere785b867a2aaf3d81b7ac953a2dd5fb9654`
--

CREATE TABLE `usere785b867a2aaf3d81b7ac953a2dd5fb9654` (
  `kd` varchar(50) NOT NULL,
  `usernamex` varchar(100) DEFAULT NULL,
  `passwordx` varchar(50) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `userf10e55153817313d8ea2147f1e73056b182`
--

CREATE TABLE `userf10e55153817313d8ea2147f1e73056b182` (
  `kd` varchar(50) NOT NULL,
  `usernamex` varchar(100) DEFAULT NULL,
  `passwordx` varchar(50) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userf10e55153817313d8ea2147f1e73056b182`
--

INSERT INTO `userf10e55153817313d8ea2147f1e73056b182` (`kd`, `usernamex`, `passwordx`, `nama`, `postdate`, `email`) VALUES
('f10e55153817313d8ea2147f1e73056b182', '8', '35ceff6d0886aeb91b02882bb4e5f433', '8xstrix', '2018-03-16 04:44:16', '8xstrix');

-- --------------------------------------------------------

--
-- Table structure for table `user_chat`
--

CREATE TABLE `user_chat` (
  `kd` varchar(50) NOT NULL,
  `untuk` varchar(50) DEFAULT NULL,
  `isi` longtext,
  `postdate` datetime DEFAULT NULL,
  `dibaca` enum('true','false') DEFAULT 'false'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `user_chat06c62e2ee044b528e36db0d3d776f08a183`
--

CREATE TABLE `user_chat06c62e2ee044b528e36db0d3d776f08a183` (
  `kd` varchar(50) NOT NULL,
  `untuk` varchar(50) DEFAULT NULL,
  `isi` longtext,
  `postdate` datetime DEFAULT NULL,
  `dibaca` enum('true','false') DEFAULT 'false'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_chat6ce3e2ac010dd8a5d2526761bbac141a611`
--

CREATE TABLE `user_chat6ce3e2ac010dd8a5d2526761bbac141a611` (
  `kd` varchar(50) NOT NULL,
  `untuk` varchar(50) DEFAULT NULL,
  `isi` longtext,
  `postdate` datetime DEFAULT NULL,
  `dibaca` enum('true','false') DEFAULT 'false'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_chat6e42858c9c381f3f014da704ad82829b160`
--

CREATE TABLE `user_chat6e42858c9c381f3f014da704ad82829b160` (
  `kd` varchar(50) NOT NULL,
  `untuk` varchar(50) DEFAULT NULL,
  `isi` longtext,
  `postdate` datetime DEFAULT NULL,
  `dibaca` enum('true','false') DEFAULT 'false'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_chat93a157e4065fe179017f0c91b28f55d9481`
--

CREATE TABLE `user_chat93a157e4065fe179017f0c91b28f55d9481` (
  `kd` varchar(50) NOT NULL,
  `untuk` varchar(50) DEFAULT NULL,
  `isi` longtext,
  `postdate` datetime DEFAULT NULL,
  `dibaca` enum('true','false') DEFAULT 'false'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_chat305c372acd4cdb57f8ed89b9fc36c07880`
--

CREATE TABLE `user_chat305c372acd4cdb57f8ed89b9fc36c07880` (
  `kd` varchar(50) NOT NULL,
  `untuk` varchar(50) DEFAULT NULL,
  `isi` longtext,
  `postdate` datetime DEFAULT NULL,
  `dibaca` enum('true','false') DEFAULT 'false'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_chat434cac91625a5c8752f63dcee13d8664178`
--

CREATE TABLE `user_chat434cac91625a5c8752f63dcee13d8664178` (
  `kd` varchar(50) NOT NULL,
  `untuk` varchar(50) DEFAULT NULL,
  `isi` longtext,
  `postdate` datetime DEFAULT NULL,
  `dibaca` enum('true','false') DEFAULT 'false'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_chat5802d8707aa74c660f709fa82c0ba4a0315`
--

CREATE TABLE `user_chat5802d8707aa74c660f709fa82c0ba4a0315` (
  `kd` varchar(50) NOT NULL,
  `untuk` varchar(50) DEFAULT NULL,
  `isi` longtext,
  `postdate` datetime DEFAULT NULL,
  `dibaca` enum('true','false') DEFAULT 'false'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_chat9360ae7c21d014da2d77e88c24a6ddf2291`
--

CREATE TABLE `user_chat9360ae7c21d014da2d77e88c24a6ddf2291` (
  `kd` varchar(50) NOT NULL,
  `untuk` varchar(50) DEFAULT NULL,
  `isi` longtext,
  `postdate` datetime DEFAULT NULL,
  `dibaca` enum('true','false') DEFAULT 'false'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_chata280a1476afa79d4f67e5435de109a0a648`
--

CREATE TABLE `user_chata280a1476afa79d4f67e5435de109a0a648` (
  `kd` varchar(50) NOT NULL,
  `untuk` varchar(50) DEFAULT NULL,
  `isi` longtext,
  `postdate` datetime DEFAULT NULL,
  `dibaca` enum('true','false') DEFAULT 'false'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_chatb19fda858159ea9d8fad417efdf554dd942`
--

CREATE TABLE `user_chatb19fda858159ea9d8fad417efdf554dd942` (
  `kd` varchar(50) NOT NULL,
  `untuk` varchar(50) DEFAULT NULL,
  `isi` longtext,
  `postdate` datetime DEFAULT NULL,
  `dibaca` enum('true','false') DEFAULT 'false'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_chatcf0628be7a02684290f1cfb8a16f89ea532`
--

CREATE TABLE `user_chatcf0628be7a02684290f1cfb8a16f89ea532` (
  `kd` varchar(50) NOT NULL,
  `untuk` varchar(50) DEFAULT NULL,
  `isi` longtext,
  `postdate` datetime DEFAULT NULL,
  `dibaca` enum('true','false') DEFAULT 'false'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_chate785b867a2aaf3d81b7ac953a2dd5fb9654`
--

CREATE TABLE `user_chate785b867a2aaf3d81b7ac953a2dd5fb9654` (
  `kd` varchar(50) NOT NULL,
  `untuk` varchar(50) DEFAULT NULL,
  `isi` longtext,
  `postdate` datetime DEFAULT NULL,
  `dibaca` enum('true','false') DEFAULT 'false'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_chatf10e55153817313d8ea2147f1e73056b182`
--

CREATE TABLE `user_chatf10e55153817313d8ea2147f1e73056b182` (
  `kd` varchar(50) NOT NULL,
  `untuk` varchar(50) DEFAULT NULL,
  `isi` longtext,
  `postdate` datetime DEFAULT NULL,
  `dibaca` enum('true','false') DEFAULT 'false'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_event`
--

CREATE TABLE `user_event` (
  `kd` varchar(50) NOT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `tgl_mulai` datetime DEFAULT NULL,
  `tgl_selesai` datetime DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_event6ce3e2ac010dd8a5d2526761bbac141a611`
--

CREATE TABLE `user_event6ce3e2ac010dd8a5d2526761bbac141a611` (
  `kd` varchar(50) NOT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `tgl_mulai` datetime DEFAULT NULL,
  `tgl_selesai` datetime DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_event6e42858c9c381f3f014da704ad82829b160`
--

CREATE TABLE `user_event6e42858c9c381f3f014da704ad82829b160` (
  `kd` varchar(50) NOT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `tgl_mulai` datetime DEFAULT NULL,
  `tgl_selesai` datetime DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_event93a157e4065fe179017f0c91b28f55d9481`
--

CREATE TABLE `user_event93a157e4065fe179017f0c91b28f55d9481` (
  `kd` varchar(50) NOT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `tgl_mulai` datetime DEFAULT NULL,
  `tgl_selesai` datetime DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_event305c372acd4cdb57f8ed89b9fc36c07880`
--

CREATE TABLE `user_event305c372acd4cdb57f8ed89b9fc36c07880` (
  `kd` varchar(50) NOT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `tgl_mulai` datetime DEFAULT NULL,
  `tgl_selesai` datetime DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_event434cac91625a5c8752f63dcee13d8664178`
--

CREATE TABLE `user_event434cac91625a5c8752f63dcee13d8664178` (
  `kd` varchar(50) NOT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `tgl_mulai` datetime DEFAULT NULL,
  `tgl_selesai` datetime DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_event5802d8707aa74c660f709fa82c0ba4a0315`
--

CREATE TABLE `user_event5802d8707aa74c660f709fa82c0ba4a0315` (
  `kd` varchar(50) NOT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `tgl_mulai` datetime DEFAULT NULL,
  `tgl_selesai` datetime DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_event9360ae7c21d014da2d77e88c24a6ddf2291`
--

CREATE TABLE `user_event9360ae7c21d014da2d77e88c24a6ddf2291` (
  `kd` varchar(50) NOT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `tgl_mulai` datetime DEFAULT NULL,
  `tgl_selesai` datetime DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_eventa280a1476afa79d4f67e5435de109a0a648`
--

CREATE TABLE `user_eventa280a1476afa79d4f67e5435de109a0a648` (
  `kd` varchar(50) NOT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `tgl_mulai` datetime DEFAULT NULL,
  `tgl_selesai` datetime DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_eventb19fda858159ea9d8fad417efdf554dd942`
--

CREATE TABLE `user_eventb19fda858159ea9d8fad417efdf554dd942` (
  `kd` varchar(50) NOT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `tgl_mulai` datetime DEFAULT NULL,
  `tgl_selesai` datetime DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_eventcf0628be7a02684290f1cfb8a16f89ea532`
--

CREATE TABLE `user_eventcf0628be7a02684290f1cfb8a16f89ea532` (
  `kd` varchar(50) NOT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `tgl_mulai` datetime DEFAULT NULL,
  `tgl_selesai` datetime DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_evente785b867a2aaf3d81b7ac953a2dd5fb9654`
--

CREATE TABLE `user_evente785b867a2aaf3d81b7ac953a2dd5fb9654` (
  `kd` varchar(50) NOT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `tgl_mulai` datetime DEFAULT NULL,
  `tgl_selesai` datetime DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_eventf10e55153817313d8ea2147f1e73056b182`
--

CREATE TABLE `user_eventf10e55153817313d8ea2147f1e73056b182` (
  `kd` varchar(50) NOT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `tgl_mulai` datetime DEFAULT NULL,
  `tgl_selesai` datetime DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_event_like`
--

CREATE TABLE `user_event_like` (
  `kd` varchar(50) NOT NULL,
  `kd_user_event` varchar(50) DEFAULT NULL,
  `dari` varchar(50) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `user_event_like6ce3e2ac010dd8a5d2526761bbac141a611`
--

CREATE TABLE `user_event_like6ce3e2ac010dd8a5d2526761bbac141a611` (
  `kd` varchar(50) NOT NULL,
  `kd_user_event` varchar(50) DEFAULT NULL,
  `dari` varchar(50) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_event_like6e42858c9c381f3f014da704ad82829b160`
--

CREATE TABLE `user_event_like6e42858c9c381f3f014da704ad82829b160` (
  `kd` varchar(50) NOT NULL,
  `kd_user_event` varchar(50) DEFAULT NULL,
  `dari` varchar(50) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_event_like93a157e4065fe179017f0c91b28f55d9481`
--

CREATE TABLE `user_event_like93a157e4065fe179017f0c91b28f55d9481` (
  `kd` varchar(50) NOT NULL,
  `kd_user_event` varchar(50) DEFAULT NULL,
  `dari` varchar(50) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_event_like305c372acd4cdb57f8ed89b9fc36c07880`
--

CREATE TABLE `user_event_like305c372acd4cdb57f8ed89b9fc36c07880` (
  `kd` varchar(50) NOT NULL,
  `kd_user_event` varchar(50) DEFAULT NULL,
  `dari` varchar(50) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_event_like434cac91625a5c8752f63dcee13d8664178`
--

CREATE TABLE `user_event_like434cac91625a5c8752f63dcee13d8664178` (
  `kd` varchar(50) NOT NULL,
  `kd_user_event` varchar(50) DEFAULT NULL,
  `dari` varchar(50) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_event_like5802d8707aa74c660f709fa82c0ba4a0315`
--

CREATE TABLE `user_event_like5802d8707aa74c660f709fa82c0ba4a0315` (
  `kd` varchar(50) NOT NULL,
  `kd_user_event` varchar(50) DEFAULT NULL,
  `dari` varchar(50) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_event_likea280a1476afa79d4f67e5435de109a0a648`
--

CREATE TABLE `user_event_likea280a1476afa79d4f67e5435de109a0a648` (
  `kd` varchar(50) NOT NULL,
  `kd_user_event` varchar(50) DEFAULT NULL,
  `dari` varchar(50) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_event_likeb19fda858159ea9d8fad417efdf554dd942`
--

CREATE TABLE `user_event_likeb19fda858159ea9d8fad417efdf554dd942` (
  `kd` varchar(50) NOT NULL,
  `kd_user_event` varchar(50) DEFAULT NULL,
  `dari` varchar(50) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_event_likecf0628be7a02684290f1cfb8a16f89ea532`
--

CREATE TABLE `user_event_likecf0628be7a02684290f1cfb8a16f89ea532` (
  `kd` varchar(50) NOT NULL,
  `kd_user_event` varchar(50) DEFAULT NULL,
  `dari` varchar(50) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_event_likee785b867a2aaf3d81b7ac953a2dd5fb9654`
--

CREATE TABLE `user_event_likee785b867a2aaf3d81b7ac953a2dd5fb9654` (
  `kd` varchar(50) NOT NULL,
  `kd_user_event` varchar(50) DEFAULT NULL,
  `dari` varchar(50) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_event_likef10e55153817313d8ea2147f1e73056b182`
--

CREATE TABLE `user_event_likef10e55153817313d8ea2147f1e73056b182` (
  `kd` varchar(50) NOT NULL,
  `kd_user_event` varchar(50) DEFAULT NULL,
  `dari` varchar(50) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_event_msg`
--

CREATE TABLE `user_event_msg` (
  `kd` varchar(50) NOT NULL,
  `kd_user_event` varchar(50) DEFAULT NULL,
  `dari` varchar(50) DEFAULT NULL,
  `msg` varchar(255) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `user_event_msg6ce3e2ac010dd8a5d2526761bbac141a611`
--

CREATE TABLE `user_event_msg6ce3e2ac010dd8a5d2526761bbac141a611` (
  `kd` varchar(50) NOT NULL,
  `kd_user_event` varchar(50) DEFAULT NULL,
  `dari` varchar(50) DEFAULT NULL,
  `msg` varchar(255) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_event_msg6e42858c9c381f3f014da704ad82829b160`
--

CREATE TABLE `user_event_msg6e42858c9c381f3f014da704ad82829b160` (
  `kd` varchar(50) NOT NULL,
  `kd_user_event` varchar(50) DEFAULT NULL,
  `dari` varchar(50) DEFAULT NULL,
  `msg` varchar(255) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_event_msg93a157e4065fe179017f0c91b28f55d9481`
--

CREATE TABLE `user_event_msg93a157e4065fe179017f0c91b28f55d9481` (
  `kd` varchar(50) NOT NULL,
  `kd_user_event` varchar(50) DEFAULT NULL,
  `dari` varchar(50) DEFAULT NULL,
  `msg` varchar(255) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_event_msg305c372acd4cdb57f8ed89b9fc36c07880`
--

CREATE TABLE `user_event_msg305c372acd4cdb57f8ed89b9fc36c07880` (
  `kd` varchar(50) NOT NULL,
  `kd_user_event` varchar(50) DEFAULT NULL,
  `dari` varchar(50) DEFAULT NULL,
  `msg` varchar(255) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_event_msg434cac91625a5c8752f63dcee13d8664178`
--

CREATE TABLE `user_event_msg434cac91625a5c8752f63dcee13d8664178` (
  `kd` varchar(50) NOT NULL,
  `kd_user_event` varchar(50) DEFAULT NULL,
  `dari` varchar(50) DEFAULT NULL,
  `msg` varchar(255) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_event_msg5802d8707aa74c660f709fa82c0ba4a0315`
--

CREATE TABLE `user_event_msg5802d8707aa74c660f709fa82c0ba4a0315` (
  `kd` varchar(50) NOT NULL,
  `kd_user_event` varchar(50) DEFAULT NULL,
  `dari` varchar(50) DEFAULT NULL,
  `msg` varchar(255) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_event_msga280a1476afa79d4f67e5435de109a0a648`
--

CREATE TABLE `user_event_msga280a1476afa79d4f67e5435de109a0a648` (
  `kd` varchar(50) NOT NULL,
  `kd_user_event` varchar(50) DEFAULT NULL,
  `dari` varchar(50) DEFAULT NULL,
  `msg` varchar(255) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_event_msgb19fda858159ea9d8fad417efdf554dd942`
--

CREATE TABLE `user_event_msgb19fda858159ea9d8fad417efdf554dd942` (
  `kd` varchar(50) NOT NULL,
  `kd_user_event` varchar(50) DEFAULT NULL,
  `dari` varchar(50) DEFAULT NULL,
  `msg` varchar(255) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_event_msgcf0628be7a02684290f1cfb8a16f89ea532`
--

CREATE TABLE `user_event_msgcf0628be7a02684290f1cfb8a16f89ea532` (
  `kd` varchar(50) NOT NULL,
  `kd_user_event` varchar(50) DEFAULT NULL,
  `dari` varchar(50) DEFAULT NULL,
  `msg` varchar(255) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_event_msge785b867a2aaf3d81b7ac953a2dd5fb9654`
--

CREATE TABLE `user_event_msge785b867a2aaf3d81b7ac953a2dd5fb9654` (
  `kd` varchar(50) NOT NULL,
  `kd_user_event` varchar(50) DEFAULT NULL,
  `dari` varchar(50) DEFAULT NULL,
  `msg` varchar(255) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_event_msgf10e55153817313d8ea2147f1e73056b182`
--

CREATE TABLE `user_event_msgf10e55153817313d8ea2147f1e73056b182` (
  `kd` varchar(50) NOT NULL,
  `kd_user_event` varchar(50) DEFAULT NULL,
  `dari` varchar(50) DEFAULT NULL,
  `msg` varchar(255) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_keahlian`
--

CREATE TABLE `user_keahlian` (
  `kd` varchar(50) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_keahlian6ce3e2ac010dd8a5d2526761bbac141a611`
--

CREATE TABLE `user_keahlian6ce3e2ac010dd8a5d2526761bbac141a611` (
  `kd` varchar(50) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_keahlian6e42858c9c381f3f014da704ad82829b160`
--

CREATE TABLE `user_keahlian6e42858c9c381f3f014da704ad82829b160` (
  `kd` varchar(50) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_keahlian93a157e4065fe179017f0c91b28f55d9481`
--

CREATE TABLE `user_keahlian93a157e4065fe179017f0c91b28f55d9481` (
  `kd` varchar(50) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_keahlian305c372acd4cdb57f8ed89b9fc36c07880`
--

CREATE TABLE `user_keahlian305c372acd4cdb57f8ed89b9fc36c07880` (
  `kd` varchar(50) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_keahlian434cac91625a5c8752f63dcee13d8664178`
--

CREATE TABLE `user_keahlian434cac91625a5c8752f63dcee13d8664178` (
  `kd` varchar(50) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_keahlian5802d8707aa74c660f709fa82c0ba4a0315`
--

CREATE TABLE `user_keahlian5802d8707aa74c660f709fa82c0ba4a0315` (
  `kd` varchar(50) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_keahliana280a1476afa79d4f67e5435de109a0a648`
--

CREATE TABLE `user_keahliana280a1476afa79d4f67e5435de109a0a648` (
  `kd` varchar(50) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_keahlianb19fda858159ea9d8fad417efdf554dd942`
--

CREATE TABLE `user_keahlianb19fda858159ea9d8fad417efdf554dd942` (
  `kd` varchar(50) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_keahliancf0628be7a02684290f1cfb8a16f89ea532`
--

CREATE TABLE `user_keahliancf0628be7a02684290f1cfb8a16f89ea532` (
  `kd` varchar(50) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_keahliane785b867a2aaf3d81b7ac953a2dd5fb9654`
--

CREATE TABLE `user_keahliane785b867a2aaf3d81b7ac953a2dd5fb9654` (
  `kd` varchar(50) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_keahlianf10e55153817313d8ea2147f1e73056b182`
--

CREATE TABLE `user_keahlianf10e55153817313d8ea2147f1e73056b182` (
  `kd` varchar(50) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_minat`
--

CREATE TABLE `user_minat` (
  `kd` varchar(50) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `user_minat6ce3e2ac010dd8a5d2526761bbac141a611`
--

CREATE TABLE `user_minat6ce3e2ac010dd8a5d2526761bbac141a611` (
  `kd` varchar(50) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_minat6e42858c9c381f3f014da704ad82829b160`
--

CREATE TABLE `user_minat6e42858c9c381f3f014da704ad82829b160` (
  `kd` varchar(50) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_minat93a157e4065fe179017f0c91b28f55d9481`
--

CREATE TABLE `user_minat93a157e4065fe179017f0c91b28f55d9481` (
  `kd` varchar(50) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_minat305c372acd4cdb57f8ed89b9fc36c07880`
--

CREATE TABLE `user_minat305c372acd4cdb57f8ed89b9fc36c07880` (
  `kd` varchar(50) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_minat434cac91625a5c8752f63dcee13d8664178`
--

CREATE TABLE `user_minat434cac91625a5c8752f63dcee13d8664178` (
  `kd` varchar(50) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_minat5802d8707aa74c660f709fa82c0ba4a0315`
--

CREATE TABLE `user_minat5802d8707aa74c660f709fa82c0ba4a0315` (
  `kd` varchar(50) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_minata280a1476afa79d4f67e5435de109a0a648`
--

CREATE TABLE `user_minata280a1476afa79d4f67e5435de109a0a648` (
  `kd` varchar(50) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_minatb19fda858159ea9d8fad417efdf554dd942`
--

CREATE TABLE `user_minatb19fda858159ea9d8fad417efdf554dd942` (
  `kd` varchar(50) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_minatcf0628be7a02684290f1cfb8a16f89ea532`
--

CREATE TABLE `user_minatcf0628be7a02684290f1cfb8a16f89ea532` (
  `kd` varchar(50) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_minate785b867a2aaf3d81b7ac953a2dd5fb9654`
--

CREATE TABLE `user_minate785b867a2aaf3d81b7ac953a2dd5fb9654` (
  `kd` varchar(50) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_minatf10e55153817313d8ea2147f1e73056b182`
--

CREATE TABLE `user_minatf10e55153817313d8ea2147f1e73056b182` (
  `kd` varchar(50) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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

-- --------------------------------------------------------

--
-- Table structure for table `user_profil6ce3e2ac010dd8a5d2526761bbac141a611`
--

CREATE TABLE `user_profil6ce3e2ac010dd8a5d2526761bbac141a611` (
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_profil6e42858c9c381f3f014da704ad82829b160`
--

CREATE TABLE `user_profil6e42858c9c381f3f014da704ad82829b160` (
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_profil93a157e4065fe179017f0c91b28f55d9481`
--

CREATE TABLE `user_profil93a157e4065fe179017f0c91b28f55d9481` (
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_profil305c372acd4cdb57f8ed89b9fc36c07880`
--

CREATE TABLE `user_profil305c372acd4cdb57f8ed89b9fc36c07880` (
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_profil434cac91625a5c8752f63dcee13d8664178`
--

CREATE TABLE `user_profil434cac91625a5c8752f63dcee13d8664178` (
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_profil5802d8707aa74c660f709fa82c0ba4a0315`
--

CREATE TABLE `user_profil5802d8707aa74c660f709fa82c0ba4a0315` (
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_profila280a1476afa79d4f67e5435de109a0a648`
--

CREATE TABLE `user_profila280a1476afa79d4f67e5435de109a0a648` (
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_profilb19fda858159ea9d8fad417efdf554dd942`
--

CREATE TABLE `user_profilb19fda858159ea9d8fad417efdf554dd942` (
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_profilcf0628be7a02684290f1cfb8a16f89ea532`
--

CREATE TABLE `user_profilcf0628be7a02684290f1cfb8a16f89ea532` (
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_profile785b867a2aaf3d81b7ac953a2dd5fb9654`
--

CREATE TABLE `user_profile785b867a2aaf3d81b7ac953a2dd5fb9654` (
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_profilf10e55153817313d8ea2147f1e73056b182`
--

CREATE TABLE `user_profilf10e55153817313d8ea2147f1e73056b182` (
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_publik_status93a157e4065fe179017f0c91b28f55d9481`
--

CREATE TABLE `user_publik_status93a157e4065fe179017f0c91b28f55d9481` (
  `kd` varchar(50) NOT NULL,
  `kd_status` longtext,
  `postdate` datetime DEFAULT NULL,
  `konek` enum('true','false') NOT NULL DEFAULT 'false'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_publik_status305c372acd4cdb57f8ed89b9fc36c07880`
--

CREATE TABLE `user_publik_status305c372acd4cdb57f8ed89b9fc36c07880` (
  `kd` varchar(50) NOT NULL,
  `kd_status` longtext,
  `postdate` datetime DEFAULT NULL,
  `konek` enum('true','false') NOT NULL DEFAULT 'false'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_publik_statusf10e55153817313d8ea2147f1e73056b182`
--

CREATE TABLE `user_publik_statusf10e55153817313d8ea2147f1e73056b182` (
  `kd` varchar(50) NOT NULL,
  `kd_status` longtext,
  `postdate` datetime DEFAULT NULL,
  `konek` enum('true','false') NOT NULL DEFAULT 'false'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_status`
--

CREATE TABLE `user_status` (
  `kd` varchar(50) NOT NULL,
  `status` longtext,
  `postdate` datetime DEFAULT NULL,
  `filex` longtext NOT NULL,
  `kd_user` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `user_status`
--

INSERT INTO `user_status` (`kd`, `status`, `postdate`, `filex`, `kd_user`) VALUES
('df066c8bc6864f637cef8c41b986ee0d', 'sswwwww', '2018-03-16 04:48:51', '', '93a157e4065fe179017f0c91b28f55d9481'),
('bf07c72bc13876f6174a6596f27ad6a3', 'sddddeeeeeeee', '2018-03-16 04:48:33', '', '93a157e4065fe179017f0c91b28f55d9481'),
('42beb7677d313e577d94c70004b9db5f', 'dddsss', '2018-03-16 04:47:25', '', '93a157e4065fe179017f0c91b28f55d9481'),
('eabf0a04e4d21d43f14f0f3146323138', 'ae', '2018-03-16 04:45:35', '', '93a157e4065fe179017f0c91b28f55d9481'),
('89fa2e25a3adceb4aaca5d037506d942', 'dffff', '2018-03-16 04:07:20', '', '305c372acd4cdb57f8ed89b9fc36c07880');

-- --------------------------------------------------------

--
-- Table structure for table `user_status6ce3e2ac010dd8a5d2526761bbac141a611`
--

CREATE TABLE `user_status6ce3e2ac010dd8a5d2526761bbac141a611` (
  `kd` varchar(50) NOT NULL,
  `status` longtext,
  `postdate` datetime DEFAULT NULL,
  `filex` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_status6e42858c9c381f3f014da704ad82829b160`
--

CREATE TABLE `user_status6e42858c9c381f3f014da704ad82829b160` (
  `kd` varchar(50) NOT NULL,
  `status` longtext,
  `postdate` datetime DEFAULT NULL,
  `filex` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_status93a157e4065fe179017f0c91b28f55d9481`
--

CREATE TABLE `user_status93a157e4065fe179017f0c91b28f55d9481` (
  `kd` varchar(50) NOT NULL,
  `status` longtext,
  `postdate` datetime DEFAULT NULL,
  `filex` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_status93a157e4065fe179017f0c91b28f55d9481`
--

INSERT INTO `user_status93a157e4065fe179017f0c91b28f55d9481` (`kd`, `status`, `postdate`, `filex`) VALUES
('531f36ade01598bc7f4bdce281c76176', 'dsddd', '2018-03-16 04:49:45', ''),
('77c95f19aaa81c530257d9f4c78c5e4d', 'dsssssssssssssss', '2018-03-16 04:52:53', ''),
('abe46db40e4f283708185993cc51cd74', 'ok', '2018-03-16 04:53:26', ''),
('801cf3cd3d0615bfda014f2e03047867', 'sddd', '2018-03-16 04:54:38', ''),
('92dccf2fb75992a177230a2b4aa5363d', 'sudah ya...', '2018-03-16 04:54:51', ''),
('908aad2ed7cd3b425061780f7041eeec', 'ok deh...', '2018-03-16 04:55:41', ''),
('87aa886f2f3495436a7315439265a933', 'diam saja ya...', '2018-03-16 04:56:38', ''),
('f96826c08a8fd79e5745bc3194e690e5', 'pokoknya coba saja ya....', '2018-03-16 04:56:52', ''),
('52bf3dee42469ed6a07a7b62cf49ec6a', 'ok deh.', '2018-03-16 04:58:21', ''),
('9c179b431a20a4b84240cb3bc4c82efc', 'diam itu emas... katanya.....', '2018-03-16 05:02:49', ''),
('3aa41eb02ec1bd08edc2b3d75ed92658', 'siap...', '2018-03-16 05:34:33', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_status305c372acd4cdb57f8ed89b9fc36c07880`
--

CREATE TABLE `user_status305c372acd4cdb57f8ed89b9fc36c07880` (
  `kd` varchar(50) NOT NULL,
  `status` longtext,
  `postdate` datetime DEFAULT NULL,
  `filex` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_status305c372acd4cdb57f8ed89b9fc36c07880`
--

INSERT INTO `user_status305c372acd4cdb57f8ed89b9fc36c07880` (`kd`, `status`, `postdate`, `filex`) VALUES
('bea9f0a0a932454ead8c444a8af634b3', 'ssddd', '2018-03-16 04:13:39', ''),
('f30de9983374143839c6512173e9efe2', 'siapkan diri mu ya....', '2018-03-16 04:18:40', ''),
('f2a7d38600f8b8011e2fe7da6ff9174f', 'ddsss', '2018-03-16 04:29:46', ''),
('8f9b3aef21ce601bc83dbaee05c523fc', 'ddff', '2018-03-16 04:31:29', ''),
('3aefd093c950ef579f17c97a1d36531f', 'dssss', '2018-03-16 04:32:34', ''),
('9d4ee6a0c0c5e6d2529224e8e46b7b96', 'sssddd', '2018-03-16 04:33:42', ''),
('199dbaa5dba41fc0e28b4ac11986d4c9', 'wwwwwwww', '2018-03-16 04:35:36', ''),
('20988f91206d2667cec45a191bfee2a6', 'dddd', '2018-03-16 04:36:53', ''),
('fcdce98edcbfae1e4df29b571a669aba', 'sssssss', '2018-03-16 04:38:06', ''),
('a6af77d2d9bc1ad78852353e29c62908', 'siap.........', '2018-03-16 04:41:14', ''),
('dfed1631df980c8574167b8ecc2e599a', 'saddd', '2018-03-16 04:41:53', ''),
('8556dfc2a0f08c3dc03832e463b343a6', 'ssddddffffff', '2018-03-16 04:43:25', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_status434cac91625a5c8752f63dcee13d8664178`
--

CREATE TABLE `user_status434cac91625a5c8752f63dcee13d8664178` (
  `kd` varchar(50) NOT NULL,
  `status` longtext,
  `postdate` datetime DEFAULT NULL,
  `filex` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_status5802d8707aa74c660f709fa82c0ba4a0315`
--

CREATE TABLE `user_status5802d8707aa74c660f709fa82c0ba4a0315` (
  `kd` varchar(50) NOT NULL,
  `status` longtext,
  `postdate` datetime DEFAULT NULL,
  `filex` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_statusa280a1476afa79d4f67e5435de109a0a648`
--

CREATE TABLE `user_statusa280a1476afa79d4f67e5435de109a0a648` (
  `kd` varchar(50) NOT NULL,
  `status` longtext,
  `postdate` datetime DEFAULT NULL,
  `filex` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_statusb19fda858159ea9d8fad417efdf554dd942`
--

CREATE TABLE `user_statusb19fda858159ea9d8fad417efdf554dd942` (
  `kd` varchar(50) NOT NULL,
  `status` longtext,
  `postdate` datetime DEFAULT NULL,
  `filex` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_statuscf0628be7a02684290f1cfb8a16f89ea532`
--

CREATE TABLE `user_statuscf0628be7a02684290f1cfb8a16f89ea532` (
  `kd` varchar(50) NOT NULL,
  `status` longtext,
  `postdate` datetime DEFAULT NULL,
  `filex` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_statuse785b867a2aaf3d81b7ac953a2dd5fb9654`
--

CREATE TABLE `user_statuse785b867a2aaf3d81b7ac953a2dd5fb9654` (
  `kd` varchar(50) NOT NULL,
  `status` longtext,
  `postdate` datetime DEFAULT NULL,
  `filex` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_statusf10e55153817313d8ea2147f1e73056b182`
--

CREATE TABLE `user_statusf10e55153817313d8ea2147f1e73056b182` (
  `kd` varchar(50) NOT NULL,
  `status` longtext,
  `postdate` datetime DEFAULT NULL,
  `filex` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_status_like`
--

CREATE TABLE `user_status_like` (
  `kd` varchar(50) NOT NULL,
  `kd_user_status` varchar(50) DEFAULT NULL,
  `dari` varchar(50) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `user_status_like6ce3e2ac010dd8a5d2526761bbac141a611`
--

CREATE TABLE `user_status_like6ce3e2ac010dd8a5d2526761bbac141a611` (
  `kd` varchar(50) NOT NULL,
  `kd_user_status` varchar(50) DEFAULT NULL,
  `dari` varchar(50) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_status_like6e42858c9c381f3f014da704ad82829b160`
--

CREATE TABLE `user_status_like6e42858c9c381f3f014da704ad82829b160` (
  `kd` varchar(50) NOT NULL,
  `kd_user_status` varchar(50) DEFAULT NULL,
  `dari` varchar(50) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_status_like93a157e4065fe179017f0c91b28f55d9481`
--

CREATE TABLE `user_status_like93a157e4065fe179017f0c91b28f55d9481` (
  `kd` varchar(50) NOT NULL,
  `kd_user_status` varchar(50) DEFAULT NULL,
  `dari` varchar(50) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_status_like305c372acd4cdb57f8ed89b9fc36c07880`
--

CREATE TABLE `user_status_like305c372acd4cdb57f8ed89b9fc36c07880` (
  `kd` varchar(50) NOT NULL,
  `kd_user_status` varchar(50) DEFAULT NULL,
  `dari` varchar(50) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_status_like434cac91625a5c8752f63dcee13d8664178`
--

CREATE TABLE `user_status_like434cac91625a5c8752f63dcee13d8664178` (
  `kd` varchar(50) NOT NULL,
  `kd_user_status` varchar(50) DEFAULT NULL,
  `dari` varchar(50) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_status_like5802d8707aa74c660f709fa82c0ba4a0315`
--

CREATE TABLE `user_status_like5802d8707aa74c660f709fa82c0ba4a0315` (
  `kd` varchar(50) NOT NULL,
  `kd_user_status` varchar(50) DEFAULT NULL,
  `dari` varchar(50) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_status_likea280a1476afa79d4f67e5435de109a0a648`
--

CREATE TABLE `user_status_likea280a1476afa79d4f67e5435de109a0a648` (
  `kd` varchar(50) NOT NULL,
  `kd_user_status` varchar(50) DEFAULT NULL,
  `dari` varchar(50) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_status_likeb19fda858159ea9d8fad417efdf554dd942`
--

CREATE TABLE `user_status_likeb19fda858159ea9d8fad417efdf554dd942` (
  `kd` varchar(50) NOT NULL,
  `kd_user_status` varchar(50) DEFAULT NULL,
  `dari` varchar(50) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_status_likecf0628be7a02684290f1cfb8a16f89ea532`
--

CREATE TABLE `user_status_likecf0628be7a02684290f1cfb8a16f89ea532` (
  `kd` varchar(50) NOT NULL,
  `kd_user_status` varchar(50) DEFAULT NULL,
  `dari` varchar(50) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_status_likee785b867a2aaf3d81b7ac953a2dd5fb9654`
--

CREATE TABLE `user_status_likee785b867a2aaf3d81b7ac953a2dd5fb9654` (
  `kd` varchar(50) NOT NULL,
  `kd_user_status` varchar(50) DEFAULT NULL,
  `dari` varchar(50) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_status_likef10e55153817313d8ea2147f1e73056b182`
--

CREATE TABLE `user_status_likef10e55153817313d8ea2147f1e73056b182` (
  `kd` varchar(50) NOT NULL,
  `kd_user_status` varchar(50) DEFAULT NULL,
  `dari` varchar(50) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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

-- --------------------------------------------------------

--
-- Table structure for table `user_status_msg6ce3e2ac010dd8a5d2526761bbac141a611`
--

CREATE TABLE `user_status_msg6ce3e2ac010dd8a5d2526761bbac141a611` (
  `kd` varchar(50) NOT NULL,
  `kd_user_status` varchar(50) DEFAULT NULL,
  `dari` varchar(50) DEFAULT NULL,
  `msg` varchar(255) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_status_msg6e42858c9c381f3f014da704ad82829b160`
--

CREATE TABLE `user_status_msg6e42858c9c381f3f014da704ad82829b160` (
  `kd` varchar(50) NOT NULL,
  `kd_user_status` varchar(50) DEFAULT NULL,
  `dari` varchar(50) DEFAULT NULL,
  `msg` varchar(255) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_status_msg93a157e4065fe179017f0c91b28f55d9481`
--

CREATE TABLE `user_status_msg93a157e4065fe179017f0c91b28f55d9481` (
  `kd` varchar(50) NOT NULL,
  `kd_user_status` varchar(50) DEFAULT NULL,
  `dari` varchar(50) DEFAULT NULL,
  `msg` varchar(255) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_status_msg93a157e4065fe179017f0c91b28f55d9481`
--

INSERT INTO `user_status_msg93a157e4065fe179017f0c91b28f55d9481` (`kd`, `kd_user_status`, `dari`, `msg`, `postdate`) VALUES
('8136c580b7519e35b243e5d297dbcd14', '52bf3dee42469ed6a07a7b62cf49ec6a', '93a157e4065fe179017f0c91b28f55d9481', 'setuju aja ya...', '2018-03-16 05:01:21'),
('ad88b5c9289e13b6c0f3e2a699f1da97', '52bf3dee42469ed6a07a7b62cf49ec6a', '93a157e4065fe179017f0c91b28f55d9481', 'yakin saja deh...', '2018-03-16 05:02:14'),
('2a591ee6ec9cd5880ee63f25642ed5d9', '9c179b431a20a4b84240cb3bc4c82efc', '93a157e4065fe179017f0c91b28f55d9481', 'ok deh...', '2018-03-16 05:03:03'),
('04709d6a1c7560c827104ef0430bf7ec', '9c179b431a20a4b84240cb3bc4c82efc', '93a157e4065fe179017f0c91b28f55d9481', 'ok ya...', '2018-03-16 05:34:45'),
('c3aa404af20217fe3ee21af31764d59a', '9c179b431a20a4b84240cb3bc4c82efc', '93a157e4065fe179017f0c91b28f55d9481', 'sip', '2018-03-16 05:35:22');

-- --------------------------------------------------------

--
-- Table structure for table `user_status_msg305c372acd4cdb57f8ed89b9fc36c07880`
--

CREATE TABLE `user_status_msg305c372acd4cdb57f8ed89b9fc36c07880` (
  `kd` varchar(50) NOT NULL,
  `kd_user_status` varchar(50) DEFAULT NULL,
  `dari` varchar(50) DEFAULT NULL,
  `msg` varchar(255) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_status_msg305c372acd4cdb57f8ed89b9fc36c07880`
--

INSERT INTO `user_status_msg305c372acd4cdb57f8ed89b9fc36c07880` (`kd`, `kd_user_status`, `dari`, `msg`, `postdate`) VALUES
('9528b29e0a172b16337a4078762aa5d0', 'bea9f0a0a932454ead8c444a8af634b3', '305c372acd4cdb57f8ed89b9fc36c07880', 'ssss', '2018-03-16 04:15:37'),
('1518100fb73e8a4dd7622bf2cd20da81', 'bea9f0a0a932454ead8c444a8af634b3', '305c372acd4cdb57f8ed89b9fc36c07880', 'AAA', '2018-03-16 04:16:01'),
('ef02d471c9e1ef01b7e6e8f08ab94007', 'bea9f0a0a932454ead8c444a8af634b3', '305c372acd4cdb57f8ed89b9fc36c07880', 'efefef', '2018-03-16 04:16:30'),
('7505746b2a91fa69720fd20ca0fadf2e', 'f30de9983374143839c6512173e9efe2', '305c372acd4cdb57f8ed89b9fc36c07880', 'aq yakin bisa...', '2018-03-16 04:18:46'),
('110365913c76e1e35e745770018544a7', 'f30de9983374143839c6512173e9efe2', '305c372acd4cdb57f8ed89b9fc36c07880', 'mau gimana lagi sih...', '2018-03-16 04:18:54');

-- --------------------------------------------------------

--
-- Table structure for table `user_status_msg434cac91625a5c8752f63dcee13d8664178`
--

CREATE TABLE `user_status_msg434cac91625a5c8752f63dcee13d8664178` (
  `kd` varchar(50) NOT NULL,
  `kd_user_status` varchar(50) DEFAULT NULL,
  `dari` varchar(50) DEFAULT NULL,
  `msg` varchar(255) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_status_msg5802d8707aa74c660f709fa82c0ba4a0315`
--

CREATE TABLE `user_status_msg5802d8707aa74c660f709fa82c0ba4a0315` (
  `kd` varchar(50) NOT NULL,
  `kd_user_status` varchar(50) DEFAULT NULL,
  `dari` varchar(50) DEFAULT NULL,
  `msg` varchar(255) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_status_msga280a1476afa79d4f67e5435de109a0a648`
--

CREATE TABLE `user_status_msga280a1476afa79d4f67e5435de109a0a648` (
  `kd` varchar(50) NOT NULL,
  `kd_user_status` varchar(50) DEFAULT NULL,
  `dari` varchar(50) DEFAULT NULL,
  `msg` varchar(255) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_status_msgb19fda858159ea9d8fad417efdf554dd942`
--

CREATE TABLE `user_status_msgb19fda858159ea9d8fad417efdf554dd942` (
  `kd` varchar(50) NOT NULL,
  `kd_user_status` varchar(50) DEFAULT NULL,
  `dari` varchar(50) DEFAULT NULL,
  `msg` varchar(255) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_status_msgcf0628be7a02684290f1cfb8a16f89ea532`
--

CREATE TABLE `user_status_msgcf0628be7a02684290f1cfb8a16f89ea532` (
  `kd` varchar(50) NOT NULL,
  `kd_user_status` varchar(50) DEFAULT NULL,
  `dari` varchar(50) DEFAULT NULL,
  `msg` varchar(255) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_status_msge785b867a2aaf3d81b7ac953a2dd5fb9654`
--

CREATE TABLE `user_status_msge785b867a2aaf3d81b7ac953a2dd5fb9654` (
  `kd` varchar(50) NOT NULL,
  `kd_user_status` varchar(50) DEFAULT NULL,
  `dari` varchar(50) DEFAULT NULL,
  `msg` varchar(255) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_status_msgf10e55153817313d8ea2147f1e73056b182`
--

CREATE TABLE `user_status_msgf10e55153817313d8ea2147f1e73056b182` (
  `kd` varchar(50) NOT NULL,
  `kd_user_status` varchar(50) DEFAULT NULL,
  `dari` varchar(50) DEFAULT NULL,
  `msg` varchar(255) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_status_msg_dibaca`
--

CREATE TABLE `user_status_msg_dibaca` (
  `kd` varchar(50) NOT NULL,
  `kd_msg` varchar(50) DEFAULT NULL,
  `dibaca` enum('true','false') NOT NULL DEFAULT 'false',
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `user_status_msg_dibaca6ce3e2ac010dd8a5d2526761bbac141a611`
--

CREATE TABLE `user_status_msg_dibaca6ce3e2ac010dd8a5d2526761bbac141a611` (
  `kd` varchar(50) NOT NULL,
  `kd_msg` varchar(50) DEFAULT NULL,
  `dibaca` enum('true','false') NOT NULL DEFAULT 'false',
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_status_msg_dibaca6e42858c9c381f3f014da704ad82829b160`
--

CREATE TABLE `user_status_msg_dibaca6e42858c9c381f3f014da704ad82829b160` (
  `kd` varchar(50) NOT NULL,
  `kd_msg` varchar(50) DEFAULT NULL,
  `dibaca` enum('true','false') NOT NULL DEFAULT 'false',
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_status_msg_dibaca93a157e4065fe179017f0c91b28f55d9481`
--

CREATE TABLE `user_status_msg_dibaca93a157e4065fe179017f0c91b28f55d9481` (
  `kd` varchar(50) NOT NULL,
  `kd_msg` varchar(50) DEFAULT NULL,
  `dibaca` enum('true','false') NOT NULL DEFAULT 'false',
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_status_msg_dibaca305c372acd4cdb57f8ed89b9fc36c07880`
--

CREATE TABLE `user_status_msg_dibaca305c372acd4cdb57f8ed89b9fc36c07880` (
  `kd` varchar(50) NOT NULL,
  `kd_msg` varchar(50) DEFAULT NULL,
  `dibaca` enum('true','false') NOT NULL DEFAULT 'false',
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_status_msg_dibaca434cac91625a5c8752f63dcee13d8664178`
--

CREATE TABLE `user_status_msg_dibaca434cac91625a5c8752f63dcee13d8664178` (
  `kd` varchar(50) NOT NULL,
  `kd_msg` varchar(50) DEFAULT NULL,
  `dibaca` enum('true','false') NOT NULL DEFAULT 'false',
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_status_msg_dibaca5802d8707aa74c660f709fa82c0ba4a0315`
--

CREATE TABLE `user_status_msg_dibaca5802d8707aa74c660f709fa82c0ba4a0315` (
  `kd` varchar(50) NOT NULL,
  `kd_msg` varchar(50) DEFAULT NULL,
  `dibaca` enum('true','false') NOT NULL DEFAULT 'false',
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_status_msg_dibacaa280a1476afa79d4f67e5435de109a0a648`
--

CREATE TABLE `user_status_msg_dibacaa280a1476afa79d4f67e5435de109a0a648` (
  `kd` varchar(50) NOT NULL,
  `kd_msg` varchar(50) DEFAULT NULL,
  `dibaca` enum('true','false') NOT NULL DEFAULT 'false',
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_status_msg_dibacab19fda858159ea9d8fad417efdf554dd942`
--

CREATE TABLE `user_status_msg_dibacab19fda858159ea9d8fad417efdf554dd942` (
  `kd` varchar(50) NOT NULL,
  `kd_msg` varchar(50) DEFAULT NULL,
  `dibaca` enum('true','false') NOT NULL DEFAULT 'false',
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_status_msg_dibacacf0628be7a02684290f1cfb8a16f89ea532`
--

CREATE TABLE `user_status_msg_dibacacf0628be7a02684290f1cfb8a16f89ea532` (
  `kd` varchar(50) NOT NULL,
  `kd_msg` varchar(50) DEFAULT NULL,
  `dibaca` enum('true','false') NOT NULL DEFAULT 'false',
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_status_msg_dibacae785b867a2aaf3d81b7ac953a2dd5fb9654`
--

CREATE TABLE `user_status_msg_dibacae785b867a2aaf3d81b7ac953a2dd5fb9654` (
  `kd` varchar(50) NOT NULL,
  `kd_msg` varchar(50) DEFAULT NULL,
  `dibaca` enum('true','false') NOT NULL DEFAULT 'false',
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_status_msg_dibacaf10e55153817313d8ea2147f1e73056b182`
--

CREATE TABLE `user_status_msg_dibacaf10e55153817313d8ea2147f1e73056b182` (
  `kd` varchar(50) NOT NULL,
  `kd_msg` varchar(50) DEFAULT NULL,
  `dibaca` enum('true','false') NOT NULL DEFAULT 'false',
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_teman`
--

CREATE TABLE `user_teman` (
  `kd` varchar(50) NOT NULL,
  `kd_user_teman` varchar(50) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL,
  `konek` enum('true','false') NOT NULL DEFAULT 'false'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `user_teman6ce3e2ac010dd8a5d2526761bbac141a611`
--

CREATE TABLE `user_teman6ce3e2ac010dd8a5d2526761bbac141a611` (
  `kd` varchar(50) NOT NULL,
  `kd_user_teman` varchar(50) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL,
  `konek` enum('true','false') NOT NULL DEFAULT 'false'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_teman6e42858c9c381f3f014da704ad82829b160`
--

CREATE TABLE `user_teman6e42858c9c381f3f014da704ad82829b160` (
  `kd` varchar(50) NOT NULL,
  `kd_user_teman` varchar(50) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL,
  `konek` enum('true','false') NOT NULL DEFAULT 'false'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_teman93a157e4065fe179017f0c91b28f55d9481`
--

CREATE TABLE `user_teman93a157e4065fe179017f0c91b28f55d9481` (
  `kd` varchar(50) NOT NULL,
  `kd_user_teman` varchar(50) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL,
  `konek` enum('true','false') NOT NULL DEFAULT 'false'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_teman305c372acd4cdb57f8ed89b9fc36c07880`
--

CREATE TABLE `user_teman305c372acd4cdb57f8ed89b9fc36c07880` (
  `kd` varchar(50) NOT NULL,
  `kd_user_teman` varchar(50) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL,
  `konek` enum('true','false') NOT NULL DEFAULT 'false'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_teman434cac91625a5c8752f63dcee13d8664178`
--

CREATE TABLE `user_teman434cac91625a5c8752f63dcee13d8664178` (
  `kd` varchar(50) NOT NULL,
  `kd_user_teman` varchar(50) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL,
  `konek` enum('true','false') NOT NULL DEFAULT 'false'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_teman5802d8707aa74c660f709fa82c0ba4a0315`
--

CREATE TABLE `user_teman5802d8707aa74c660f709fa82c0ba4a0315` (
  `kd` varchar(50) NOT NULL,
  `kd_user_teman` varchar(50) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL,
  `konek` enum('true','false') NOT NULL DEFAULT 'false'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_temana280a1476afa79d4f67e5435de109a0a648`
--

CREATE TABLE `user_temana280a1476afa79d4f67e5435de109a0a648` (
  `kd` varchar(50) NOT NULL,
  `kd_user_teman` varchar(50) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL,
  `konek` enum('true','false') NOT NULL DEFAULT 'false'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_temanb19fda858159ea9d8fad417efdf554dd942`
--

CREATE TABLE `user_temanb19fda858159ea9d8fad417efdf554dd942` (
  `kd` varchar(50) NOT NULL,
  `kd_user_teman` varchar(50) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL,
  `konek` enum('true','false') NOT NULL DEFAULT 'false'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_temancf0628be7a02684290f1cfb8a16f89ea532`
--

CREATE TABLE `user_temancf0628be7a02684290f1cfb8a16f89ea532` (
  `kd` varchar(50) NOT NULL,
  `kd_user_teman` varchar(50) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL,
  `konek` enum('true','false') NOT NULL DEFAULT 'false'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_temane785b867a2aaf3d81b7ac953a2dd5fb9654`
--

CREATE TABLE `user_temane785b867a2aaf3d81b7ac953a2dd5fb9654` (
  `kd` varchar(50) NOT NULL,
  `kd_user_teman` varchar(50) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL,
  `konek` enum('true','false') NOT NULL DEFAULT 'false'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_temanf10e55153817313d8ea2147f1e73056b182`
--

CREATE TABLE `user_temanf10e55153817313d8ea2147f1e73056b182` (
  `kd` varchar(50) NOT NULL,
  `kd_user_teman` varchar(50) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL,
  `konek` enum('true','false') NOT NULL DEFAULT 'false'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `_news_feed`
--

CREATE TABLE `_news_feed` (
  `news_id` int(10) NOT NULL,
  `news_title` text NOT NULL,
  `news_description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `_news_feed`
--

INSERT INTO `_news_feed` (`news_id`, `news_title`, `news_description`) VALUES
(1, 'News Title 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer rhoncus tincidunt risus, at ullamcorper orci lobortis et. Duis dignissim augue tellus, nec suscipit enim vestibulum eget. Vivamus vehicula arcu non purus placerat, ac congue leo condimentum.'),
(2, 'News Title 2', 'Cras tempus tempus enim vel bibendum. Sed dignissim, est ut varius posuere, nunc purus tincidunt mauris, ac vulputate mauris turpis consectetur dolor. Phasellus non volutpat libero. Maecenas nec ipsum eget sem porttitor congue at at orci. Nunc id accumsan tortor. '),
(3, 'News Title 3', 'Vivamus placerat placerat sapien, quis congue libero ornare vel. Sed consectetur mi sit amet augue porta, sed eleifend velit eleifend. Vivamus at mauris faucibus, aliquet tortor suscipit, facilisis orci. Duis consectetur ac turpis a blandit. In hac habitasse platea dictumst. Morbi et metus arcu.'),
(4, 'News Title 4', 'Maecenas a erat et purus luctus sagittis. In pretium mauris diam, eget condimentum mauris consectetur sagittis. Aliquam sagittis lectus eget bibendum tempor. '),
(5, 'News Title 5', 'Vivamus placerat placerat sapien, quis congue libero ornare vel. Sed consectetur mi sit amet augue porta, sed eleifend velit eleifend. Vivamus at mauris faucibus, aliquet tortor suscipit, facilisis orci. Duis consectetur ac turpis a blandit. In hac habitasse platea dictumst. Morbi et metus arcu.'),
(6, 'News Title 6', 'Maecenas a erat et purus luctus sagittis. In pretium mauris diam, eget condimentum mauris consectetur sagittis. Aliquam sagittis lectus eget bibendum tempor. '),
(7, 'News Title 7', 'Cras mattis lacus eu erat tempus porta quis quis augue. Aenean eget elementum turpis. Vivamus vel mollis elit, pharetra viverra nunc. Praesent sit amet auctor risus, at aliquam dui. Praesent in sem eu odio cursus lobortis eu tempor ipsum. '),
(8, 'News Title 8', 'Nullam luctus in urna non ultrices. Nam vel tristique justo, nec volutpat justo. Suspendisse egestas, sapien ut porttitor elementum, velit risus auctor ante, nec tincidunt libero arcu in urna. Aliquam varius fringilla orci nec rutrum.'),
(9, 'News Title 9', 'Morbi ut mattis nibh, quis egestas nisl. Donec at arcu ut urna vehicula gravida et eget nibh. Nam bibendum libero non nibh imperdiet, sit amet sodales sem suscipit. '),
(10, 'News Title 10', 'Nullam cursus sit amet erat quis sodales. Morbi porta nulla velit, placerat adipiscing leo convallis nec. Aenean porta porttitor nisl, sed congue justo hendrerit vel.'),
(11, 'News Title 11', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer rhoncus tincidunt risus, at ullamcorper orci lobortis et. Duis dignissim augue tellus, nec suscipit enim vestibulum eget. Vivamus vehicula arcu non purus placerat, ac congue leo condimentum.'),
(12, 'News Title 12', 'Cras tempus tempus enim vel bibendum. Sed dignissim, est ut varius posuere, nunc purus tincidunt mauris, ac vulputate mauris turpis consectetur dolor. Phasellus non volutpat libero. Maecenas nec ipsum eget sem porttitor congue at at orci. Nunc id accumsan tortor. '),
(13, 'News Title 13', 'Vivamus placerat placerat sapien, quis congue libero ornare vel. Sed consectetur mi sit amet augue porta, sed eleifend velit eleifend. Vivamus at mauris faucibus, aliquet tortor suscipit, facilisis orci. Duis consectetur ac turpis a blandit. In hac habitasse platea dictumst. Morbi et metus arcu.'),
(14, 'News Title 14', 'Maecenas a erat et purus luctus sagittis. In pretium mauris diam, eget condimentum mauris consectetur sagittis. Aliquam sagittis lectus eget bibendum tempor. '),
(15, 'News Title 15', 'Vivamus placerat placerat sapien, quis congue libero ornare vel. Sed consectetur mi sit amet augue porta, sed eleifend velit eleifend. Vivamus at mauris faucibus, aliquet tortor suscipit, facilisis orci. Duis consectetur ac turpis a blandit. In hac habitasse platea dictumst. Morbi et metus arcu.'),
(16, 'News Title 16', 'Maecenas a erat et purus luctus sagittis. In pretium mauris diam, eget condimentum mauris consectetur sagittis. Aliquam sagittis lectus eget bibendum tempor. '),
(17, 'News Title 17', 'Cras mattis lacus eu erat tempus porta quis quis augue. Aenean eget elementum turpis. Vivamus vel mollis elit, pharetra viverra nunc. Praesent sit amet auctor risus, at aliquam dui. Praesent in sem eu odio cursus lobortis eu tempor ipsum. '),
(18, 'News Title 18', 'Nullam luctus in urna non ultrices. Nam vel tristique justo, nec volutpat justo. Suspendisse egestas, sapien ut porttitor elementum, velit risus auctor ante, nec tincidunt libero arcu in urna. Aliquam varius fringilla orci nec rutrum.'),
(19, 'News Title 19', 'Morbi ut mattis nibh, quis egestas nisl. Donec at arcu ut urna vehicula gravida et eget nibh. Nam bibendum libero non nibh imperdiet, sit amet sodales sem suscipit. '),
(20, 'News Title 20', 'Nullam cursus sit amet erat quis sodales. Morbi porta nulla velit, placerat adipiscing leo convallis nec. Aenean porta porttitor nisl, sed congue justo hendrerit vel.');

-- --------------------------------------------------------

--
-- Table structure for table `_tmp_status`
--

CREATE TABLE `_tmp_status` (
  `kd` varchar(50) NOT NULL,
  `statusku` varchar(255) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `_tmp_status`
--

INSERT INTO `_tmp_status` (`kd`, `statusku`, `postdate`) VALUES
('4254976418b03ee73230d161fe6962a2', 'ok...', '2018-01-04 14:49:21'),
('706fd6d1f25b3149ddda3416186f2a6e', 'wq', '2018-01-04 14:55:13'),
('8c27a84e8115fe7fac58a79bb52f2d24', 'sabtu...', '2018-01-04 14:54:41'),
('884408c2969cbd6073b479bbb0ff363f', 'qwww', '2018-01-04 14:59:10'),
('0daa7efc67d9eac1497c6c6730a0d623', 'gimana ya...', '2018-01-04 15:16:41'),
('e43c5f95a4ff30efd99e9f313700f9c2', 'gimana ya...', '2018-01-04 15:16:42'),
('ea023279794895cfcfc1dc7b5993d68e', 'gimana ya...', '2018-01-04 15:16:43'),
('44eac927b463562f0a246e0df78f3fb1', 'gimana ya...', '2018-01-04 15:16:44'),
('58267746282184f4237938b01fd67b9a', 'gimana ya...', '2018-01-04 15:16:46'),
('ed661188eb6cb56be71f1977eaa157bd', 'gimana ya...', '2018-01-04 15:16:47'),
('8f499e21da39429a4a53e77b5f47e86b', 'belajar aja...', '2018-01-04 15:33:08'),
('45da2e7110dfc3fd28eef4b4000d5850', 'ati xstrix ati ya...', '2018-01-04 15:33:23'),
('1404ef4265160fb2b889961754f3643b', 'pastinya begitu sih...', '2018-01-04 15:33:45'),
('5670bb6d99759ca993056cb6548c1a70', 'sudahkah kamu sholat...?', '2018-01-04 15:42:45'),
('da0560cc6775b4c3b3a5eb0212ba9767', 'petingkah itu perlu ya...', '2018-01-04 15:45:44'),
('80b648abee20446f2d11a8eb8a1ee072', 'sddd', '2018-01-04 15:48:13'),
('cc44e9b4e9fdd44c18d2d2acdda3aba0', 'jangan begitu lagi ya...', '2018-01-04 15:48:23'),
('b4d498b81f5b057384247b800c880c35', 'sempatkan saja ya...', '2018-01-04 15:49:36'),
('a642082ad4a4744cbaf9f28eeba6c902', 'yakin saja deh...', '2018-01-04 15:53:57'),
('ae1a62dfba0d73d843fcd2d7358d6426', '#hggg', '2018-01-04 15:57:21'),
('b331966cfe120aae8fa6d12bdbeb89de', 'wewe', '2018-01-07 03:54:32'),
('bdc571ec23d4ac59aa3b2c97d33dd35e', 'yakin kan saja dia...', '2018-01-07 03:58:04');

-- --------------------------------------------------------

--
-- Table structure for table `_tmp_status_comment`
--

CREATE TABLE `_tmp_status_comment` (
  `kd` varchar(50) NOT NULL,
  `kd_status` varchar(50) DEFAULT NULL,
  `komentar` varchar(255) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `_tmp_status_comment`
--

INSERT INTO `_tmp_status_comment` (`kd`, `kd_status`, `komentar`, `postdate`) VALUES
('721f99cbcd7b9082a786d4f6e09d7aee', '1404ef4265160fb2b889961754f3643b', 'siap aku...', '2018-01-04 15:37:10'),
('28cdc29be81c9f9015db4a489146e516', '1404ef4265160fb2b889961754f3643b', 'serba tahu yang pasti...', '2018-01-04 15:34:49'),
('5490701cbc2da770b95a54c9d6a95167', '1404ef4265160fb2b889961754f3643b', 'sip...', '2018-01-04 15:34:29'),
('f2c6dcbabdfd94d7dfda7f0c3f24821b', '1404ef4265160fb2b889961754f3643b', 'pokoknya gitu...', '2018-01-04 15:34:39'),
('1561417dfd1a5d77c3844a595ed7d518', '44eac927b463562f0a246e0df78f3fb1', 'ok', '2018-01-04 15:29:56'),
('11018377164d84f55675ef9025ceddfe', '44eac927b463562f0a246e0df78f3fb1', 'maunya gimana ya...', '2018-01-04 15:30:11'),
('82370e99e891ba8f6edc2238f580e8b1', '44eac927b463562f0a246e0df78f3fb1', 'sip', '2018-01-04 15:30:45'),
('3101950e72c7ff399ee2bab56f36c7b3', 'ea023279794895cfcfc1dc7b5993d68e', 'ok deh', '2018-01-04 15:30:56'),
('0a6ec281185345d265a1b018e9420bf6', 'ea023279794895cfcfc1dc7b5993d68e', 'dilanjut ya...', '2018-01-04 15:31:05'),
('8c6e599408ce4ba11016e70bd21ec55a', '45da2e7110dfc3fd28eef4b4000d5850', 'ok...', '2018-01-04 15:38:15'),
('9d832d1f8236181a705bac7874e2a5c4', '45da2e7110dfc3fd28eef4b4000d5850', 'sate kere...', '2018-01-04 15:38:27'),
('2936a5ca902e0d88a4f859e9663e0786', '45da2e7110dfc3fd28eef4b4000d5850', 'martabak bakar...', '2018-01-04 15:38:40'),
('e47461782acc806313abafd0e2fbfd4c', 'ea023279794895cfcfc1dc7b5993d68e', 'aq kangen...', '2018-01-04 15:39:01'),
('c74f87ab19632e2e502910b776390221', '5670bb6d99759ca993056cb6548c1a70', 'saya sakin sudah', '2018-01-04 15:42:56'),
('fb99d79e98dd8c322b586192745c58ea', '5670bb6d99759ca993056cb6548c1a70', 'kalau belum, coba lagi deh...', '2018-01-04 15:43:16'),
('41e93b4dda668fd8b7d219fdfbf7fc5b', '5670bb6d99759ca993056cb6548c1a70', 'setuju aja ya...', '2018-01-04 15:44:21'),
('7c6537046a31768a2cc88d427e9a6fab', 'da0560cc6775b4c3b3a5eb0212ba9767', 'jangan dilarang pokoknya ya...', '2018-01-04 15:45:58'),
('df259aa344be637408b9b5b2545d3b18', 'da0560cc6775b4c3b3a5eb0212ba9767', 'aq setuju juga deh...', '2018-01-04 15:46:09'),
('1bcfcbe3a7ff6f49c4837e3e3d3c7caa', 'b4d498b81f5b057384247b800c880c35', 'maunya begitu...', '2018-01-04 15:49:48'),
('5b766a467073ce933a1bb7bd471eee3f', 'b4d498b81f5b057384247b800c880c35', 'jangan terlalu sakit deh...', '2018-01-04 15:50:33'),
('692661202c947b64509aca98483e1ead', 'b4d498b81f5b057384247b800c880c35', 'makan nasi saja deh...', '2018-01-04 15:50:47'),
('26ae829383922e0fb8a25b53c717392b', 'b4d498b81f5b057384247b800c880c35', 'kadang nasih terasa enak lho..', '2018-01-04 15:51:05'),
('a86acf547255872cf010711378d6f840', 'a642082ad4a4744cbaf9f28eeba6c902', 'benar ya...', '2018-01-04 15:54:27'),
('061420f32439d3cb75926baea0874f14', 'a642082ad4a4744cbaf9f28eeba6c902', 'kalau salah, ya udah... ngelu lagi...', '2018-01-04 15:54:49'),
('7cc63a47c96bce4f2b568d4961c0d24a', 'a642082ad4a4744cbaf9f28eeba6c902', 'okkk', '2018-01-04 15:55:41'),
('ce98826bb179720d6e661268d06cc00d', 'a642082ad4a4744cbaf9f28eeba6c902', 'uyyu', '2018-01-04 15:55:51'),
('398a63ad18322fd0266e0c9fd2f1a3b4', '58267746282184f4237938b01fd67b9a', 'sedap deh...', '2018-01-04 15:56:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminx`
--
ALTER TABLE `adminx`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `m_hashtag`
--
ALTER TABLE `m_hashtag`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `m_keahlian`
--
ALTER TABLE `m_keahlian`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `m_minat`
--
ALTER TABLE `m_minat`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `m_publik_user`
--
ALTER TABLE `m_publik_user`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `m_tag`
--
ALTER TABLE `m_tag`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user06c62e2ee044b528e36db0d3d776f08a183`
--
ALTER TABLE `user06c62e2ee044b528e36db0d3d776f08a183`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user6ce3e2ac010dd8a5d2526761bbac141a611`
--
ALTER TABLE `user6ce3e2ac010dd8a5d2526761bbac141a611`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user6e42858c9c381f3f014da704ad82829b160`
--
ALTER TABLE `user6e42858c9c381f3f014da704ad82829b160`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user9bdd8b736adbb50c697d3b40556726e8926`
--
ALTER TABLE `user9bdd8b736adbb50c697d3b40556726e8926`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user93a157e4065fe179017f0c91b28f55d9481`
--
ALTER TABLE `user93a157e4065fe179017f0c91b28f55d9481`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user305c372acd4cdb57f8ed89b9fc36c07880`
--
ALTER TABLE `user305c372acd4cdb57f8ed89b9fc36c07880`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user434cac91625a5c8752f63dcee13d8664178`
--
ALTER TABLE `user434cac91625a5c8752f63dcee13d8664178`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user5802d8707aa74c660f709fa82c0ba4a0315`
--
ALTER TABLE `user5802d8707aa74c660f709fa82c0ba4a0315`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user9360ae7c21d014da2d77e88c24a6ddf2291`
--
ALTER TABLE `user9360ae7c21d014da2d77e88c24a6ddf2291`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `usera280a1476afa79d4f67e5435de109a0a648`
--
ALTER TABLE `usera280a1476afa79d4f67e5435de109a0a648`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `userb19fda858159ea9d8fad417efdf554dd942`
--
ALTER TABLE `userb19fda858159ea9d8fad417efdf554dd942`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `usercf0628be7a02684290f1cfb8a16f89ea532`
--
ALTER TABLE `usercf0628be7a02684290f1cfb8a16f89ea532`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `usere785b867a2aaf3d81b7ac953a2dd5fb9654`
--
ALTER TABLE `usere785b867a2aaf3d81b7ac953a2dd5fb9654`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `userf10e55153817313d8ea2147f1e73056b182`
--
ALTER TABLE `userf10e55153817313d8ea2147f1e73056b182`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_chat`
--
ALTER TABLE `user_chat`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_chat06c62e2ee044b528e36db0d3d776f08a183`
--
ALTER TABLE `user_chat06c62e2ee044b528e36db0d3d776f08a183`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_chat6ce3e2ac010dd8a5d2526761bbac141a611`
--
ALTER TABLE `user_chat6ce3e2ac010dd8a5d2526761bbac141a611`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_chat6e42858c9c381f3f014da704ad82829b160`
--
ALTER TABLE `user_chat6e42858c9c381f3f014da704ad82829b160`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_chat93a157e4065fe179017f0c91b28f55d9481`
--
ALTER TABLE `user_chat93a157e4065fe179017f0c91b28f55d9481`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_chat305c372acd4cdb57f8ed89b9fc36c07880`
--
ALTER TABLE `user_chat305c372acd4cdb57f8ed89b9fc36c07880`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_chat434cac91625a5c8752f63dcee13d8664178`
--
ALTER TABLE `user_chat434cac91625a5c8752f63dcee13d8664178`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_chat5802d8707aa74c660f709fa82c0ba4a0315`
--
ALTER TABLE `user_chat5802d8707aa74c660f709fa82c0ba4a0315`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_chat9360ae7c21d014da2d77e88c24a6ddf2291`
--
ALTER TABLE `user_chat9360ae7c21d014da2d77e88c24a6ddf2291`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_chata280a1476afa79d4f67e5435de109a0a648`
--
ALTER TABLE `user_chata280a1476afa79d4f67e5435de109a0a648`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_chatb19fda858159ea9d8fad417efdf554dd942`
--
ALTER TABLE `user_chatb19fda858159ea9d8fad417efdf554dd942`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_chatcf0628be7a02684290f1cfb8a16f89ea532`
--
ALTER TABLE `user_chatcf0628be7a02684290f1cfb8a16f89ea532`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_chate785b867a2aaf3d81b7ac953a2dd5fb9654`
--
ALTER TABLE `user_chate785b867a2aaf3d81b7ac953a2dd5fb9654`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_chatf10e55153817313d8ea2147f1e73056b182`
--
ALTER TABLE `user_chatf10e55153817313d8ea2147f1e73056b182`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_event`
--
ALTER TABLE `user_event`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_event6ce3e2ac010dd8a5d2526761bbac141a611`
--
ALTER TABLE `user_event6ce3e2ac010dd8a5d2526761bbac141a611`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_event6e42858c9c381f3f014da704ad82829b160`
--
ALTER TABLE `user_event6e42858c9c381f3f014da704ad82829b160`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_event93a157e4065fe179017f0c91b28f55d9481`
--
ALTER TABLE `user_event93a157e4065fe179017f0c91b28f55d9481`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_event305c372acd4cdb57f8ed89b9fc36c07880`
--
ALTER TABLE `user_event305c372acd4cdb57f8ed89b9fc36c07880`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_event434cac91625a5c8752f63dcee13d8664178`
--
ALTER TABLE `user_event434cac91625a5c8752f63dcee13d8664178`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_event5802d8707aa74c660f709fa82c0ba4a0315`
--
ALTER TABLE `user_event5802d8707aa74c660f709fa82c0ba4a0315`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_event9360ae7c21d014da2d77e88c24a6ddf2291`
--
ALTER TABLE `user_event9360ae7c21d014da2d77e88c24a6ddf2291`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_eventa280a1476afa79d4f67e5435de109a0a648`
--
ALTER TABLE `user_eventa280a1476afa79d4f67e5435de109a0a648`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_eventb19fda858159ea9d8fad417efdf554dd942`
--
ALTER TABLE `user_eventb19fda858159ea9d8fad417efdf554dd942`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_eventcf0628be7a02684290f1cfb8a16f89ea532`
--
ALTER TABLE `user_eventcf0628be7a02684290f1cfb8a16f89ea532`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_evente785b867a2aaf3d81b7ac953a2dd5fb9654`
--
ALTER TABLE `user_evente785b867a2aaf3d81b7ac953a2dd5fb9654`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_eventf10e55153817313d8ea2147f1e73056b182`
--
ALTER TABLE `user_eventf10e55153817313d8ea2147f1e73056b182`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_event_like`
--
ALTER TABLE `user_event_like`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_event_like6ce3e2ac010dd8a5d2526761bbac141a611`
--
ALTER TABLE `user_event_like6ce3e2ac010dd8a5d2526761bbac141a611`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_event_like6e42858c9c381f3f014da704ad82829b160`
--
ALTER TABLE `user_event_like6e42858c9c381f3f014da704ad82829b160`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_event_like93a157e4065fe179017f0c91b28f55d9481`
--
ALTER TABLE `user_event_like93a157e4065fe179017f0c91b28f55d9481`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_event_like305c372acd4cdb57f8ed89b9fc36c07880`
--
ALTER TABLE `user_event_like305c372acd4cdb57f8ed89b9fc36c07880`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_event_like434cac91625a5c8752f63dcee13d8664178`
--
ALTER TABLE `user_event_like434cac91625a5c8752f63dcee13d8664178`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_event_like5802d8707aa74c660f709fa82c0ba4a0315`
--
ALTER TABLE `user_event_like5802d8707aa74c660f709fa82c0ba4a0315`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_event_likea280a1476afa79d4f67e5435de109a0a648`
--
ALTER TABLE `user_event_likea280a1476afa79d4f67e5435de109a0a648`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_event_likeb19fda858159ea9d8fad417efdf554dd942`
--
ALTER TABLE `user_event_likeb19fda858159ea9d8fad417efdf554dd942`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_event_likecf0628be7a02684290f1cfb8a16f89ea532`
--
ALTER TABLE `user_event_likecf0628be7a02684290f1cfb8a16f89ea532`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_event_likee785b867a2aaf3d81b7ac953a2dd5fb9654`
--
ALTER TABLE `user_event_likee785b867a2aaf3d81b7ac953a2dd5fb9654`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_event_likef10e55153817313d8ea2147f1e73056b182`
--
ALTER TABLE `user_event_likef10e55153817313d8ea2147f1e73056b182`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_event_msg`
--
ALTER TABLE `user_event_msg`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_event_msg6ce3e2ac010dd8a5d2526761bbac141a611`
--
ALTER TABLE `user_event_msg6ce3e2ac010dd8a5d2526761bbac141a611`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_event_msg6e42858c9c381f3f014da704ad82829b160`
--
ALTER TABLE `user_event_msg6e42858c9c381f3f014da704ad82829b160`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_event_msg93a157e4065fe179017f0c91b28f55d9481`
--
ALTER TABLE `user_event_msg93a157e4065fe179017f0c91b28f55d9481`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_event_msg305c372acd4cdb57f8ed89b9fc36c07880`
--
ALTER TABLE `user_event_msg305c372acd4cdb57f8ed89b9fc36c07880`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_event_msg434cac91625a5c8752f63dcee13d8664178`
--
ALTER TABLE `user_event_msg434cac91625a5c8752f63dcee13d8664178`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_event_msg5802d8707aa74c660f709fa82c0ba4a0315`
--
ALTER TABLE `user_event_msg5802d8707aa74c660f709fa82c0ba4a0315`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_event_msga280a1476afa79d4f67e5435de109a0a648`
--
ALTER TABLE `user_event_msga280a1476afa79d4f67e5435de109a0a648`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_event_msgb19fda858159ea9d8fad417efdf554dd942`
--
ALTER TABLE `user_event_msgb19fda858159ea9d8fad417efdf554dd942`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_event_msgcf0628be7a02684290f1cfb8a16f89ea532`
--
ALTER TABLE `user_event_msgcf0628be7a02684290f1cfb8a16f89ea532`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_event_msge785b867a2aaf3d81b7ac953a2dd5fb9654`
--
ALTER TABLE `user_event_msge785b867a2aaf3d81b7ac953a2dd5fb9654`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_event_msgf10e55153817313d8ea2147f1e73056b182`
--
ALTER TABLE `user_event_msgf10e55153817313d8ea2147f1e73056b182`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_keahlian`
--
ALTER TABLE `user_keahlian`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_keahlian6ce3e2ac010dd8a5d2526761bbac141a611`
--
ALTER TABLE `user_keahlian6ce3e2ac010dd8a5d2526761bbac141a611`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_keahlian6e42858c9c381f3f014da704ad82829b160`
--
ALTER TABLE `user_keahlian6e42858c9c381f3f014da704ad82829b160`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_keahlian93a157e4065fe179017f0c91b28f55d9481`
--
ALTER TABLE `user_keahlian93a157e4065fe179017f0c91b28f55d9481`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_keahlian305c372acd4cdb57f8ed89b9fc36c07880`
--
ALTER TABLE `user_keahlian305c372acd4cdb57f8ed89b9fc36c07880`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_keahlian434cac91625a5c8752f63dcee13d8664178`
--
ALTER TABLE `user_keahlian434cac91625a5c8752f63dcee13d8664178`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_keahlian5802d8707aa74c660f709fa82c0ba4a0315`
--
ALTER TABLE `user_keahlian5802d8707aa74c660f709fa82c0ba4a0315`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_keahliana280a1476afa79d4f67e5435de109a0a648`
--
ALTER TABLE `user_keahliana280a1476afa79d4f67e5435de109a0a648`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_keahlianb19fda858159ea9d8fad417efdf554dd942`
--
ALTER TABLE `user_keahlianb19fda858159ea9d8fad417efdf554dd942`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_keahliancf0628be7a02684290f1cfb8a16f89ea532`
--
ALTER TABLE `user_keahliancf0628be7a02684290f1cfb8a16f89ea532`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_keahliane785b867a2aaf3d81b7ac953a2dd5fb9654`
--
ALTER TABLE `user_keahliane785b867a2aaf3d81b7ac953a2dd5fb9654`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_keahlianf10e55153817313d8ea2147f1e73056b182`
--
ALTER TABLE `user_keahlianf10e55153817313d8ea2147f1e73056b182`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_minat`
--
ALTER TABLE `user_minat`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_minat6ce3e2ac010dd8a5d2526761bbac141a611`
--
ALTER TABLE `user_minat6ce3e2ac010dd8a5d2526761bbac141a611`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_minat6e42858c9c381f3f014da704ad82829b160`
--
ALTER TABLE `user_minat6e42858c9c381f3f014da704ad82829b160`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_minat93a157e4065fe179017f0c91b28f55d9481`
--
ALTER TABLE `user_minat93a157e4065fe179017f0c91b28f55d9481`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_minat305c372acd4cdb57f8ed89b9fc36c07880`
--
ALTER TABLE `user_minat305c372acd4cdb57f8ed89b9fc36c07880`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_minat434cac91625a5c8752f63dcee13d8664178`
--
ALTER TABLE `user_minat434cac91625a5c8752f63dcee13d8664178`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_minat5802d8707aa74c660f709fa82c0ba4a0315`
--
ALTER TABLE `user_minat5802d8707aa74c660f709fa82c0ba4a0315`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_minata280a1476afa79d4f67e5435de109a0a648`
--
ALTER TABLE `user_minata280a1476afa79d4f67e5435de109a0a648`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_minatb19fda858159ea9d8fad417efdf554dd942`
--
ALTER TABLE `user_minatb19fda858159ea9d8fad417efdf554dd942`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_minatcf0628be7a02684290f1cfb8a16f89ea532`
--
ALTER TABLE `user_minatcf0628be7a02684290f1cfb8a16f89ea532`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_minate785b867a2aaf3d81b7ac953a2dd5fb9654`
--
ALTER TABLE `user_minate785b867a2aaf3d81b7ac953a2dd5fb9654`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_minatf10e55153817313d8ea2147f1e73056b182`
--
ALTER TABLE `user_minatf10e55153817313d8ea2147f1e73056b182`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_profil`
--
ALTER TABLE `user_profil`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_profil6ce3e2ac010dd8a5d2526761bbac141a611`
--
ALTER TABLE `user_profil6ce3e2ac010dd8a5d2526761bbac141a611`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_profil6e42858c9c381f3f014da704ad82829b160`
--
ALTER TABLE `user_profil6e42858c9c381f3f014da704ad82829b160`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_profil93a157e4065fe179017f0c91b28f55d9481`
--
ALTER TABLE `user_profil93a157e4065fe179017f0c91b28f55d9481`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_profil305c372acd4cdb57f8ed89b9fc36c07880`
--
ALTER TABLE `user_profil305c372acd4cdb57f8ed89b9fc36c07880`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_profil434cac91625a5c8752f63dcee13d8664178`
--
ALTER TABLE `user_profil434cac91625a5c8752f63dcee13d8664178`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_profil5802d8707aa74c660f709fa82c0ba4a0315`
--
ALTER TABLE `user_profil5802d8707aa74c660f709fa82c0ba4a0315`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_profila280a1476afa79d4f67e5435de109a0a648`
--
ALTER TABLE `user_profila280a1476afa79d4f67e5435de109a0a648`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_profilb19fda858159ea9d8fad417efdf554dd942`
--
ALTER TABLE `user_profilb19fda858159ea9d8fad417efdf554dd942`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_profilcf0628be7a02684290f1cfb8a16f89ea532`
--
ALTER TABLE `user_profilcf0628be7a02684290f1cfb8a16f89ea532`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_profile785b867a2aaf3d81b7ac953a2dd5fb9654`
--
ALTER TABLE `user_profile785b867a2aaf3d81b7ac953a2dd5fb9654`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_profilf10e55153817313d8ea2147f1e73056b182`
--
ALTER TABLE `user_profilf10e55153817313d8ea2147f1e73056b182`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_publik_status93a157e4065fe179017f0c91b28f55d9481`
--
ALTER TABLE `user_publik_status93a157e4065fe179017f0c91b28f55d9481`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_publik_status305c372acd4cdb57f8ed89b9fc36c07880`
--
ALTER TABLE `user_publik_status305c372acd4cdb57f8ed89b9fc36c07880`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_publik_statusf10e55153817313d8ea2147f1e73056b182`
--
ALTER TABLE `user_publik_statusf10e55153817313d8ea2147f1e73056b182`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_status`
--
ALTER TABLE `user_status`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_status6ce3e2ac010dd8a5d2526761bbac141a611`
--
ALTER TABLE `user_status6ce3e2ac010dd8a5d2526761bbac141a611`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_status6e42858c9c381f3f014da704ad82829b160`
--
ALTER TABLE `user_status6e42858c9c381f3f014da704ad82829b160`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_status93a157e4065fe179017f0c91b28f55d9481`
--
ALTER TABLE `user_status93a157e4065fe179017f0c91b28f55d9481`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_status305c372acd4cdb57f8ed89b9fc36c07880`
--
ALTER TABLE `user_status305c372acd4cdb57f8ed89b9fc36c07880`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_status434cac91625a5c8752f63dcee13d8664178`
--
ALTER TABLE `user_status434cac91625a5c8752f63dcee13d8664178`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_status5802d8707aa74c660f709fa82c0ba4a0315`
--
ALTER TABLE `user_status5802d8707aa74c660f709fa82c0ba4a0315`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_statusa280a1476afa79d4f67e5435de109a0a648`
--
ALTER TABLE `user_statusa280a1476afa79d4f67e5435de109a0a648`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_statusb19fda858159ea9d8fad417efdf554dd942`
--
ALTER TABLE `user_statusb19fda858159ea9d8fad417efdf554dd942`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_statuscf0628be7a02684290f1cfb8a16f89ea532`
--
ALTER TABLE `user_statuscf0628be7a02684290f1cfb8a16f89ea532`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_statuse785b867a2aaf3d81b7ac953a2dd5fb9654`
--
ALTER TABLE `user_statuse785b867a2aaf3d81b7ac953a2dd5fb9654`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_statusf10e55153817313d8ea2147f1e73056b182`
--
ALTER TABLE `user_statusf10e55153817313d8ea2147f1e73056b182`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_status_like`
--
ALTER TABLE `user_status_like`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_status_like6ce3e2ac010dd8a5d2526761bbac141a611`
--
ALTER TABLE `user_status_like6ce3e2ac010dd8a5d2526761bbac141a611`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_status_like6e42858c9c381f3f014da704ad82829b160`
--
ALTER TABLE `user_status_like6e42858c9c381f3f014da704ad82829b160`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_status_like93a157e4065fe179017f0c91b28f55d9481`
--
ALTER TABLE `user_status_like93a157e4065fe179017f0c91b28f55d9481`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_status_like305c372acd4cdb57f8ed89b9fc36c07880`
--
ALTER TABLE `user_status_like305c372acd4cdb57f8ed89b9fc36c07880`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_status_like434cac91625a5c8752f63dcee13d8664178`
--
ALTER TABLE `user_status_like434cac91625a5c8752f63dcee13d8664178`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_status_like5802d8707aa74c660f709fa82c0ba4a0315`
--
ALTER TABLE `user_status_like5802d8707aa74c660f709fa82c0ba4a0315`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_status_likea280a1476afa79d4f67e5435de109a0a648`
--
ALTER TABLE `user_status_likea280a1476afa79d4f67e5435de109a0a648`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_status_likeb19fda858159ea9d8fad417efdf554dd942`
--
ALTER TABLE `user_status_likeb19fda858159ea9d8fad417efdf554dd942`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_status_likecf0628be7a02684290f1cfb8a16f89ea532`
--
ALTER TABLE `user_status_likecf0628be7a02684290f1cfb8a16f89ea532`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_status_likee785b867a2aaf3d81b7ac953a2dd5fb9654`
--
ALTER TABLE `user_status_likee785b867a2aaf3d81b7ac953a2dd5fb9654`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_status_likef10e55153817313d8ea2147f1e73056b182`
--
ALTER TABLE `user_status_likef10e55153817313d8ea2147f1e73056b182`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_status_msg`
--
ALTER TABLE `user_status_msg`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_status_msg6ce3e2ac010dd8a5d2526761bbac141a611`
--
ALTER TABLE `user_status_msg6ce3e2ac010dd8a5d2526761bbac141a611`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_status_msg6e42858c9c381f3f014da704ad82829b160`
--
ALTER TABLE `user_status_msg6e42858c9c381f3f014da704ad82829b160`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_status_msg93a157e4065fe179017f0c91b28f55d9481`
--
ALTER TABLE `user_status_msg93a157e4065fe179017f0c91b28f55d9481`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_status_msg305c372acd4cdb57f8ed89b9fc36c07880`
--
ALTER TABLE `user_status_msg305c372acd4cdb57f8ed89b9fc36c07880`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_status_msg434cac91625a5c8752f63dcee13d8664178`
--
ALTER TABLE `user_status_msg434cac91625a5c8752f63dcee13d8664178`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_status_msg5802d8707aa74c660f709fa82c0ba4a0315`
--
ALTER TABLE `user_status_msg5802d8707aa74c660f709fa82c0ba4a0315`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_status_msga280a1476afa79d4f67e5435de109a0a648`
--
ALTER TABLE `user_status_msga280a1476afa79d4f67e5435de109a0a648`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_status_msgb19fda858159ea9d8fad417efdf554dd942`
--
ALTER TABLE `user_status_msgb19fda858159ea9d8fad417efdf554dd942`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_status_msgcf0628be7a02684290f1cfb8a16f89ea532`
--
ALTER TABLE `user_status_msgcf0628be7a02684290f1cfb8a16f89ea532`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_status_msge785b867a2aaf3d81b7ac953a2dd5fb9654`
--
ALTER TABLE `user_status_msge785b867a2aaf3d81b7ac953a2dd5fb9654`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_status_msgf10e55153817313d8ea2147f1e73056b182`
--
ALTER TABLE `user_status_msgf10e55153817313d8ea2147f1e73056b182`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_status_msg_dibaca`
--
ALTER TABLE `user_status_msg_dibaca`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_status_msg_dibaca6ce3e2ac010dd8a5d2526761bbac141a611`
--
ALTER TABLE `user_status_msg_dibaca6ce3e2ac010dd8a5d2526761bbac141a611`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_status_msg_dibaca6e42858c9c381f3f014da704ad82829b160`
--
ALTER TABLE `user_status_msg_dibaca6e42858c9c381f3f014da704ad82829b160`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_status_msg_dibaca93a157e4065fe179017f0c91b28f55d9481`
--
ALTER TABLE `user_status_msg_dibaca93a157e4065fe179017f0c91b28f55d9481`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_status_msg_dibaca305c372acd4cdb57f8ed89b9fc36c07880`
--
ALTER TABLE `user_status_msg_dibaca305c372acd4cdb57f8ed89b9fc36c07880`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_status_msg_dibaca434cac91625a5c8752f63dcee13d8664178`
--
ALTER TABLE `user_status_msg_dibaca434cac91625a5c8752f63dcee13d8664178`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_status_msg_dibaca5802d8707aa74c660f709fa82c0ba4a0315`
--
ALTER TABLE `user_status_msg_dibaca5802d8707aa74c660f709fa82c0ba4a0315`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_status_msg_dibacaa280a1476afa79d4f67e5435de109a0a648`
--
ALTER TABLE `user_status_msg_dibacaa280a1476afa79d4f67e5435de109a0a648`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_status_msg_dibacab19fda858159ea9d8fad417efdf554dd942`
--
ALTER TABLE `user_status_msg_dibacab19fda858159ea9d8fad417efdf554dd942`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_status_msg_dibacacf0628be7a02684290f1cfb8a16f89ea532`
--
ALTER TABLE `user_status_msg_dibacacf0628be7a02684290f1cfb8a16f89ea532`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_status_msg_dibacae785b867a2aaf3d81b7ac953a2dd5fb9654`
--
ALTER TABLE `user_status_msg_dibacae785b867a2aaf3d81b7ac953a2dd5fb9654`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_status_msg_dibacaf10e55153817313d8ea2147f1e73056b182`
--
ALTER TABLE `user_status_msg_dibacaf10e55153817313d8ea2147f1e73056b182`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_teman`
--
ALTER TABLE `user_teman`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_teman6ce3e2ac010dd8a5d2526761bbac141a611`
--
ALTER TABLE `user_teman6ce3e2ac010dd8a5d2526761bbac141a611`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_teman6e42858c9c381f3f014da704ad82829b160`
--
ALTER TABLE `user_teman6e42858c9c381f3f014da704ad82829b160`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_teman93a157e4065fe179017f0c91b28f55d9481`
--
ALTER TABLE `user_teman93a157e4065fe179017f0c91b28f55d9481`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_teman305c372acd4cdb57f8ed89b9fc36c07880`
--
ALTER TABLE `user_teman305c372acd4cdb57f8ed89b9fc36c07880`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_teman434cac91625a5c8752f63dcee13d8664178`
--
ALTER TABLE `user_teman434cac91625a5c8752f63dcee13d8664178`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_teman5802d8707aa74c660f709fa82c0ba4a0315`
--
ALTER TABLE `user_teman5802d8707aa74c660f709fa82c0ba4a0315`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_temana280a1476afa79d4f67e5435de109a0a648`
--
ALTER TABLE `user_temana280a1476afa79d4f67e5435de109a0a648`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_temanb19fda858159ea9d8fad417efdf554dd942`
--
ALTER TABLE `user_temanb19fda858159ea9d8fad417efdf554dd942`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_temancf0628be7a02684290f1cfb8a16f89ea532`
--
ALTER TABLE `user_temancf0628be7a02684290f1cfb8a16f89ea532`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_temane785b867a2aaf3d81b7ac953a2dd5fb9654`
--
ALTER TABLE `user_temane785b867a2aaf3d81b7ac953a2dd5fb9654`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_temanf10e55153817313d8ea2147f1e73056b182`
--
ALTER TABLE `user_temanf10e55153817313d8ea2147f1e73056b182`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `_news_feed`
--
ALTER TABLE `_news_feed`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `_tmp_status`
--
ALTER TABLE `_tmp_status`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `_tmp_status_comment`
--
ALTER TABLE `_tmp_status_comment`
  ADD PRIMARY KEY (`kd`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `_news_feed`
--
ALTER TABLE `_news_feed`
  MODIFY `news_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
