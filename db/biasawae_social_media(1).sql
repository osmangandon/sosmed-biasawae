-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 21, 2018 at 04:53 AM
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
('1bc448f71bc4b4b59406253f85c2c4b5843', '1', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2018-03-21 03:21:06', '1xtkeongxgmail.com'),
('4d39795222091957786e930436822049355', 'biasawae', 'e9b690b66c32ca3237bb283e718f342a', 'biasawae', '2018-03-21 03:22:53', 'biasawaextkeongxgmail.com');

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
  `filex` longtext NOT NULL,
  `urlnya` longtext NOT NULL,
  `urlnya_judul` longtext NOT NULL,
  `urlnya_image` longtext NOT NULL,
  `urlnya_deskripsi` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_publik_user_status`
--

INSERT INTO `m_publik_user_status` (`kd`, `kd_user`, `status`, `postdate`, `filex`, `urlnya`, `urlnya_judul`, `urlnya_image`, `urlnya_deskripsi`) VALUES
('4db9801215db65c05d8753554cd367b3', '1bc448f71bc4b4b59406253f85c2c4b5843', 'testing...', '2018-03-21 03:21:33', '', 'httptesting...', '', '', ''),
('bf98bb9466edf97f6ac80b1c7caaff11', '1bc448f71bc4b4b59406253f85c2c4b5843', 'satu... dua... tiga...', '2018-03-21 03:21:44', '', 'httpsatu...', '', '', ''),
('f33e4944fc899fe593a43ed03d737c92', '1bc448f71bc4b4b59406253f85c2c4b5843', 'satu itu saya', '2018-03-21 03:22:02', '', 'httpsatu', '', '', ''),
('d4536841854071ee6f68442fd55e6b03', '4d39795222091957786e930436822049355', 'http:xgmringxxgmringxgithub.comxgmringxhajirodeon', '2018-03-21 03:23:24', '', 'http://github.com/hajirodeon', 'hajirodeon (agus muhajir) Â· GitHub', 'https://avatars3.githubusercontent.com/u/16890701?s=400&v=4', 'hajirodeon has 79 repositories available. Follow their code on GitHub.'),
('8097c9b11381bde96298e063d14fbda2', '4d39795222091957786e930436822049355', 'Orang NORMAL, pake SOSMED umum ya.. Kalau Orang KELAINAN, bikin SOSMED sendiri. Bangun komunitas sendiri. dengan CMS BIASAWAExstrixSOCIALxstrixMEDIA', '2018-03-21 03:26:17', '', 'httpOrang', '', '', ''),
('fd320d3b813eb3e40ab25b8a483ce636', '4d39795222091957786e930436822049355', 'Bangun Sendiri SOSMED Kamu Sendiri', '2018-03-21 03:26:39', '', 'httpBangun', '', '', ''),
('c3f1de8da124e6ef199be6f754fd5d7a', '4d39795222091957786e930436822049355', 'Free Kelas GITHUB. Belajar manajemen dan pengembangan aplikasi.\r\n\r\nhttp:xgmringxxgmringxt.mexgmringxfreekelasgithub', '2018-03-21 03:27:10', '', 'httpFree', '', '', ''),
('a22be76ea2620592192949c4704a0c37', '4d39795222091957786e930436822049355', 'Free Kelas phonegap Cordova. Group khusus untuk belajar membuat aplikasi android basis web, dengan phonegap cordova.\r\n\r\nhttp:xgmringxxgmringxt.mexgmringxfreekelasphonegapcordova', '2018-03-21 03:27:31', '', 'httpFree', '', '', ''),
('2bd3994aa4c5aa963add56370b99ec94', '4d39795222091957786e930436822049355', 'Ayo&hellipxkommax Bikin web dengan gratis&hellipxkommax Hanya pakai simudah.com', '2018-03-21 03:27:51', '', 'httpAyo&hellip;', '', '', ''),
('8f822e3fa3641d1d32575038496bf2f7', '4d39795222091957786e930436822049355', 'http:xgmringxxgmringxkompas.com', '2018-03-21 03:28:03', '', 'http://kompas.com', 'Berita Terkini Hari Ini, Kabar Akurat Tepercaya - Kompas.com', 'https://asset.kompas.com/data/2017/wp/images/og_facebook.jpg', 'Kompas.com - Berita Indonesia dan Dunia Terkini Hari Ini, Kabar Harian Terbaru Tepercaya Terlengkap Seputar Politik, Ekonomi, Travel, Teknologi, Otomotif, Bola'),
('a6315da5646a53ecab69d5e0c5d57bb7', '4d39795222091957786e930436822049355', 'Ayo bikin sendiri web kamu&hellipxkommax yang mudah itu hanya di simudah.com beberapa klik saja, kamu sudah bisa memiliki web sendiri.', '2018-03-21 03:28:48', '', 'httpAyo', '', '', ''),
('5db77bf1379517cbdcc7ba102878eddc', '4d39795222091957786e930436822049355', 'http:xgmringxxgmringxwalanja.co.idxgmringx Booking hotel hemat penuh diskon untuk wilayah kota Bandung', '2018-03-21 03:29:23', '', 'http://walanja.co.id/', 'Booking Hotel Murah Di Bandung | Payment Walanja', '', ''),
('e34485949ece92369ab9f512e9cb29fb', '4d39795222091957786e930436822049355', 's', '2018-03-21 03:37:50', '', 'https', '', '', ''),
('e503ab4c56a7b933d4770c9a39263229', '4d39795222091957786e930436822049355', 'ssddd', '2018-03-21 03:39:10', '', 'httpssddd', '', '', ''),
('6d7fd7e6e1edc32b0aa7ab16f3d3b969', '4d39795222091957786e930436822049355', 'sadari aja ya...', '2018-03-21 03:41:07', '', 'httpsadari', '', '', ''),
('33b8fed145f1eeaacb68ef2e49e6bd41', '4d39795222091957786e930436822049355', 'coba ya..', '2018-03-21 04:44:34', '', 'httpcoba', '', '', ''),
('245e1c09de7baabc09d5cc2bfc9a4d0f', '4d39795222091957786e930436822049355', 'siap saja deh', '2018-03-21 04:44:44', '', 'httpsiap', '', '', ''),
('25f2c08393fe37240396bf30fee364cb', '4d39795222091957786e930436822049355', '&ampxkommaxltxkommaxa href=xpsijix..xgmringx1xpsijix&ampxkommaxgtxkommax1&ampxkommaxltxkommaxxgmringxa&ampxkommaxgtxkommax coba...', '2018-03-21 04:51:29', '', 'http<a', '', '', '');

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
('11b827647382a8102180032e60d0901d', 'f33e4944fc899fe593a43ed03d737c92', '1bc448f71bc4b4b59406253f85c2c4b5843', 'ok... satu saja ya', '2018-03-21 03:22:12'),
('3173da6ecd6fe2ec1cd1d0d26e3eb365', 'bf98bb9466edf97f6ac80b1c7caaff11', '1bc448f71bc4b4b59406253f85c2c4b5843', 'boleh... satu ya', '2018-03-21 03:22:19'),
('a06f69ed5ffb4e8246369dd5a7b8b3ad', 'bf98bb9466edf97f6ac80b1c7caaff11', '1bc448f71bc4b4b59406253f85c2c4b5843', 'saya yakin, itu satu', '2018-03-21 03:22:28'),
('82b3f426a4332af3f1bd2dbfa6ba1421', 'd4536841854071ee6f68442fd55e6b03', '4d39795222091957786e930436822049355', 'berbagai karya opensource dari Agus Muhajir, bisa unduh ya', '2018-03-21 03:23:48'),
('8f33e1951c1a7f0baca3f9447e4b51be', 'e503ab4c56a7b933d4770c9a39263229', '4d39795222091957786e930436822049355', 'coba...', '2018-03-21 03:40:29'),
('1a9f762a560d34256e73cb1060a0cde3', 'e34485949ece92369ab9f512e9cb29fb', '4d39795222091957786e930436822049355', 'kesempatan saya nih..', '2018-03-21 03:40:41'),
('a84f5deadbc22b7ad138c8751b042d72', '33b8fed145f1eeaacb68ef2e49e6bd41', '4d39795222091957786e930436822049355', 'sip...', '2018-03-21 04:44:54'),
('5e20e9b986ffbe5299e5e982d38fc5f0', '25f2c08393fe37240396bf30fee364cb', '4d39795222091957786e930436822049355', 'tes', '2018-03-21 04:51:37'),
('f49e0ab3ce0e15a45bc6847dba19ddec', '245e1c09de7baabc09d5cc2bfc9a4d0f', '4d39795222091957786e930436822049355', 'yakin bisa...', '2018-03-21 04:51:43');

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
-- Table structure for table `rss`
--

CREATE TABLE `rss` (
  `id` int(50) NOT NULL,
  `link_url` varchar(255) NOT NULL,
  `kategori` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `rss`
--

INSERT INTO `rss` (`id`, `link_url`, `kategori`) VALUES
(1, 'http://rss.detik.com/index.php/detikcom', 'UMUM'),
(2, 'http://rss.detik.com/index.php/hot', 'HOT'),
(3, 'http://rss.detik.com/index.php/finance', 'KEUANGAN'),
(4, 'http://rss.detik.com/index.php/sport', 'OLAH RAGA'),
(5, 'http://rss.detik.com/index.php/otomotif', 'OTOMOTIF'),
(6, 'http://rss.detik.com/index.php/food', 'MAKANAN'),
(7, 'http://rss.detik.com/index.php/detiknews', 'UMUM'),
(8, 'http://rss.detik.com/index.php/detikcom_nasional', 'NASIONAL'),
(9, 'http://rss.detik.com/index.php/hot_musik', 'MUSIK'),
(10, 'http://rss.detik.com/index.php/hot_movetv', 'HOT'),
(11, 'http://rss.detik.com/index.php/inet_cyberlife', 'GAYA HIDUP'),
(12, 'http://rss.detik.com/index.php/inet_bisnis', 'BISNIS'),
(13, 'http://rss.detik.com/index.php/sepakbola', 'SEPAK BOLA'),
(14, 'http://rss.detik.com/index.php/sport_motorgp', 'MOTOR GP'),
(15, 'http://rss.detik.com/index.php/food_kuliner', 'KULINER'),
(16, 'http://rss.detik.com/index.php/food_tempatmakan', 'TEMPAT MAKAN'),
(17, 'http://rss.detik.com/index.php/health_berita-sehat', 'KESEHATAN'),
(18, 'http://rss.detik.com/index.php/health_berita-konsultasi', 'KESEHATAN'),
(19, 'http://rss.detik.com/index.php/travel_news', 'TRAVEL'),
(20, 'http://rss.detik.com/index.php/travel_destination', 'TRAVEL'),
(21, 'http://rss.vivanews.com/get/all', 'UMUM'),
(22, 'http://rss.vivanews.com/get/politik', 'POLITIK'),
(23, 'http://rss.vivanews.com/get/bisnis', 'BISNIS'),
(24, 'http://rss.vivanews.com/get/nasional', 'NASIONAL'),
(25, 'http://rss.vivanews.com/get/metro', 'UMUM'),
(26, 'http://rss.vivanews.com/get/dunia', 'INTERNASIONAL'),
(27, 'http://rss.vivanews.com/get/teknologi', 'TEKNOLOGI'),
(28, 'http://rss.vivanews.com/get/sport', 'OLAH RAGA'),
(29, 'http://rss.vivanews.com/get/showbiz', 'HIBURAN'),
(30, 'http://rss.vivanews.com/get/kosmo', 'UMUM'),
(31, 'http://rss.vivanews.com/get/otomotif', 'OTOMOTIF'),
(32, 'http://rss.vivanews.com/get/sorot', 'UMUM'),
(33, 'http://sindikasi.okezone.com/index.php/okezone/RSS2.0', 'UMUM'),
(34, 'http://sindikasi.okezone.com/index.php/news/RSS2.0', 'UMUM'),
(35, 'http://sindikasi.okezone.com/index.php/international/RSS2.0', 'INTERNASIONAL'),
(36, 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', 'GAYA HIDUP'),
(37, 'http://sindikasi.okezone.com/index.php/celebrity/RSS2.0', 'SELEBRITI'),
(38, 'http://sindikasi.okezone.com/index.php/sports/RSS2.0', 'OLAH RAGA'),
(39, 'http://sindikasi.okezone.com/index.php/bola/RSS2.0', 'SEPAK BOLA'),
(40, 'http://sindikasi.okezone.com/index.php/autos/RSS2.0', 'OTOMOTIF'),
(41, 'http://sindikasi.okezone.com/index.php/techno/RSS2.0', 'TEKNOLOGI'),
(42, 'http://suaramerdeka.com/rsssm/index.php/news', 'UMUM'),
(43, 'http://suaramerdeka.com/rsssm/index.php/entertainmen', 'HIBURAN'),
(44, 'http://suaramerdeka.com/rsssm/index.php/gaya', 'GAYA HIDUP'),
(45, 'http://suaramerdeka.com/rsssm/index.php/layar', 'LAYAR'),
(46, 'http://suaramerdeka.com/rsssm/index.php/lelaki', 'PRIA'),
(47, 'http://suaramerdeka.com/rsssm/index.php/sehat', 'KESEHATAN'),
(48, 'http://suaramerdeka.com/rsssm/index.php/sport', 'OLAH RAGA'),
(49, 'http://suaramerdeka.com/rsssm/index.php/wanita', 'WANITA'),
(50, 'http://www.antara.co.id/rss/news.xml', 'UMUM'),
(51, 'http://rss.tempointeraktif.com/index.xml', 'UMUM'),
(52, 'http://www.liputan6.com/feed/rss2', 'UMUM'),
(54, 'http://selular.id/feed/', 'TEKNOLOGI'),
(55, 'http://www.tabloidpcplus.com/feed/', 'KOMPUTER'),
(56, 'http://www.inilah.com/rss/feed/teknologi/', 'TEKNOLOGI'),
(57, 'http://www.inilah.com/rss/feed/terkini/', 'UMUM'),
(58, 'http://www.inilah.com/rss/feed/terpopuler/', 'UMUM'),
(59, 'http://www.inilah.com/rss/feed/ekonomi/', 'EKONOMI'),
(60, 'http://www.inilah.com/rss/feed/nasional/', 'NASIONAL'),
(61, 'http://www.inilah.com/rss/feed/metropolitan/', 'UMUM'),
(62, 'http://www.inilah.com/rss/feed/hiburan/', 'HIBURAN'),
(63, 'http://www.inilah.com/rss/feed/mozaik/', 'UMUM'),
(64, 'http://www.inilah.com/rss/feed/bola/', 'SEPAK BOLA'),
(65, 'http://www.inilah.com/rss/feed/olahraga/', 'OLAH RAGA'),
(66, 'http://www.inilah.com/rss/feed/teknologi/', 'TEKNOLOGI'),
(67, 'http://www.inilah.com/rss/feed/gayahidup/', 'GAYA HIDUP'),
(68, 'http://www.inilah.com/rss/feed/duniahariini/', 'UMUM'),
(69, 'http://www.inilah.com/rss/feed/sehat/', 'KESEHATAN'),
(70, 'http://omahbiasawae.com/keluargapedia/rss.php ', 'KELUARGA'),
(71, 'http://www.suara.com/rss', 'UMUM'),
(72, 'http://www.suara.com/rss/news', 'UMUM'),
(73, 'http://www.suara.com/rss/health', 'KESEHATAN'),
(74, 'http://www.suara.com/rss/mostpopular', 'UMUM'),
(75, 'http://www.suara.com/rss/entertainment', 'HIBURAN'),
(76, 'http://www.suara.com/rss/tekno', 'TEKNOLOGI'),
(77, 'http://www.suara.com/rss/otomotif', 'OTOMOTIF'),
(78, 'http://www.suara.com/rss/pressrelease', 'UMUM'),
(79, 'http://www.suara.com/rss/topstory', 'UMUM'),
(80, 'http://www.suara.com/rss/lifestyle', 'GAYA HIDUP'),
(81, 'http://www.suara.com/rss/bola', 'SEPAK BOLA'),
(82, 'http://www.suara.com/rss/bisnis', 'BISNIS'),
(83, 'http://www.vemale.com/feed/', 'UMUM'),
(84, 'http://www.metrotvnews.com/feed/', 'UMUM'),
(85, 'http://www.antara.co.id/rss/nas.xml', 'NASIONAL'),
(86, 'http://www.bbc.co.uk/indonesian/index.xml', 'UMUM'),
(87, 'http://rss.tempointeraktif.com/index.xml', 'UMUM'),
(88, 'http://rss.tempointeraktif.com/nasional.xml', 'NASIONAL'),
(89, 'http://rss.tempointeraktif.com/bisnis.xml', 'BISNIS'),
(90, 'http://rss.tempointeraktif.com/otomotif.xml', 'OTOMOTIF'),
(91, 'http://rss.tempointeraktif.com/selebritas.xml', 'SELEBRITI'),
(92, 'http://rss.tempointeraktif.com/gayahidup.xml', 'GAYA HIDUP'),
(93, 'http://rss.tempointeraktif.com/teknologi.xml', 'TEKNOLOGI'),
(94, 'http://rss.tempointeraktif.com/olahraga.xml', 'OLAH RAGA'),
(95, 'http://rss.tempointeraktif.com/internasional.xml', 'INTERNASIONAL'),
(96, 'http://www.voaindonesia.com/api/zmgqoe$moi', 'UMUM'),
(97, 'http://www.voaindonesia.com/api/zmgo_e$miy', 'UMUM'),
(98, 'http://www.voaindonesia.com/api/z-jqtevyoq', 'UMUM'),
(99, 'http://www.voaindonesia.com/api/zvjqieoyop', 'UMUM'),
(100, 'http://www.voaindonesia.com/api/ztgq_ei_ov', 'UMUM'),
(101, 'http://www.voaindonesia.com/api/zggqre__oq', 'UMUM'),
(102, 'http://www.tabloidbintang.com/feeds/rss/all', 'UMUM'),
(103, 'http://rss.viva.co.id/get/all', 'UMUM'),
(104, 'http://poskotanews.com/feed/', 'UMUM'),
(105, 'http://www.antara.co.id/rss/news.xml', 'UMUM'),
(106, 'http://www.tabloidpcplus.com/feed/', 'KOMPUTER'),
(107, 'http://www.eramuslim.com/berita/rss', 'ISLAM'),
(108, 'http://www.eramuslim.com/konsultasi/konspirasi/feed', 'ISLAM'),
(109, 'http://www.eramuslim.com/akhwat/muslimah/feed', 'ISLAM'),
(110, 'http://www.eramuslim.com/hikmah/feed', 'ISLAM'),
(111, 'http://www.republika.co.id/rss', 'UMUM'),
(112, 'http://www.republika.co.id/rss/nasional/', 'NASIONAL'),
(113, 'http://www.republika.co.id/rss/nasional/umum', 'UMUM'),
(114, 'http://www.republika.co.id/rss/internasional/', 'INTERNASIONAL'),
(115, 'http://www.republika.co.id/rss/dunia-islam/', 'ISLAM'),
(116, 'http://www.republika.co.id/rss/dunia-islam/hikmah', 'ISLAM'),
(117, ' http://www.republika.co.id/rss/dunia-islam/khazanah', 'ISLAM'),
(118, 'http://www.republika.co.id/rss/ekonomi/', 'EKONOMI'),
(119, 'http://www.republika.co.id/rss/ekonomi/keuangan', 'KEUANGAN'),
(120, 'http://www.republika.co.id/rss/ekonomi/bisnis', 'BISNIS'),
(121, 'http://www.republika.co.id/rss/metropolis/trend', 'UMUM'),
(122, 'http://www.republika.co.id/rss/metropolis/kuliner', 'KULINER'),
(123, 'http://www.republika.co.id/rss/metropolis/info-sehat', 'KESEHATAN'),
(124, 'http://www.republika.co.id/rss/metropolis/parenting', 'KELUARGA'),
(125, ' http://www.republika.co.id/rss/metropolis/pustaka-populer', 'UMUM'),
(126, 'http://www.republika.co.id/rss/pendidikan/', 'UMUM'),
(127, 'http://www.eramuslim.com//ustadz-menjawab/rss', 'ISLAM'),
(128, 'http://jabar.tribunnews.com/rss', 'UMUM'),
(129, 'http://surabaya.tribunnews.com/rss', 'UMUM'),
(130, 'http://jogja.tribunnews.com/rss', 'UMUM'),
(131, 'http://jateng.tribunnews.com/rss', 'UMUM'),
(132, 'http://aceh.tribunnews.com/rss', 'UMUM'),
(133, 'http://medan.tribunnews.com/rss', 'UMUM'),
(134, 'http://pekanbaru.tribunnews.com/rss', 'UMUM'),
(135, 'http://jambi.tribunnews.com/rss', 'UMUM'),
(136, 'http://palembang.tribunnews.com/rss', 'UMUM'),
(137, 'http://sumsel.tribunnews.com/rss', 'UMUM'),
(138, 'http://lampung.tribunnews.com/rss', 'UMUM'),
(139, 'http://batam.tribunnews.com/rss', 'UMUM'),
(140, 'http://bangka.tribunnews.com/rss', 'UMUM'),
(141, 'http://manado.tribunnews.com/rss', 'UMUM'),
(142, 'http://kaltim.tribunnews.com/rss', 'UMUM'),
(143, 'http://banjarmasin.tribunnews.com/rss', 'UMUM'),
(144, 'http://pontianak.tribunnews.com/rss', 'UMUM'),
(145, 'http://kalteng.tribunnews.com/rss', 'UMUM'),
(146, 'http://kupang.tribunnews.com/rss', 'UMUM'),
(147, 'http://indopos.co.id/feed/', 'UMUM'),
(148, 'http://balipost.com/feed', 'UMUM'),
(149, 'http://sp.beritasatu.com/rss', 'UMUM'),
(150, 'http://waspada.co.id/feed/', 'UMUM'),
(151, 'http://www.bisnis.com/rss', 'BISNIS'),
(152, 'http://www.poskota.co.id/feed/', 'UMUM'),
(153, 'http://surabaya.tribunnews.com/rss', 'UMUM'),
(154, 'http://bangka.tribunnews.com/rss', 'UMUM'),
(155, 'http://www.infokomputer.com/feed/', 'KOMPUTER'),
(156, 'http://www.bintang.com/rss', 'UMUM'),
(157, 'http://www.hidayatullah.com/feed/', 'ISLAM'),
(158, 'https://news.google.co.id/news?ned=id&output=rss', 'UMUM'),
(159, 'http://www.republika.co.id/rss', 'UMUM'),
(160, 'https://news.google.co.id/news?ned=id&topic=nasional&output=rss', 'NASIONAL'),
(161, 'http://palingseru.com/feed', 'UMUM'),
(162, 'http://www.aktualpost.com/feed/', 'UMUM'),
(163, 'http://uniqpost.com/feed/', 'UMUM'),
(164, 'http://www.jitunews.com/rss', 'UMUM'),
(165, 'http://www.indosport.com/rss.php', 'OLAH RAGA'),
(166, 'http://sidomi.com/feed/', 'UMUM'),
(167, 'http://kriminalitas.com/feed/', 'UMUM'),
(168, 'http://fajar.co.id/feed/', 'UMUM'),
(169, 'http://gilabola.com/feed/', 'SEPAK BOLA'),
(170, 'http://www.sindonews.com/feed', 'UMUM'),
(171, 'http://intisari-online.com/feed/rss', 'UMUM'),
(172, 'http://www.jpnn.com/index.php?mib=rss&id=215', 'UMUM'),
(173, 'http://www.jpnn.com/index.php?mib=rss&id=213', 'OLAH RAGA'),
(174, 'http://www.jpnn.com/index.php?mib=rss&id=247', 'TEKNOLOGI'),
(175, 'http://www.jpnn.com/index.php?mib=rss&id=216', 'EKONOMI'),
(176, 'http://www.jpnn.com/index.php?mib=rss&id=275', 'KESEHATAN'),
(177, 'http://www.jpnn.com/index.php?mib=rss&id=210', 'UMUM'),
(178, 'http://www.jpnn.com/index.php?mib=rss&id=214', 'HIBURAN'),
(179, 'http://www.jpnn.com/index.php?mib=rss&id=276', 'UMUM'),
(180, 'http://www.jpnn.com/index.php?mib=rss&id=278', 'UMUM'),
(181, 'http://www.jpnn.com/index.php?mib=rss&video=1', 'UMUM'),
(182, 'http://rimanews.com/rss', 'UMUM'),
(183, 'http://setkab.go.id/feed/', 'UMUM'),
(184, 'http://gosulsel.com/feed/', 'UMUM'),
(185, 'http://rakyatku.com/feed', 'UMUM'),
(186, 'http://www.aktual.com/feed/', 'UMUM'),
(187, 'http://www.tigapilarnews.com/feed/', 'UMUM'),
(188, 'http://kabarjambi.net/feed/', 'UMUM'),
(189, 'https://beritagar.id/rss', 'UMUM'),
(190, 'http://batampos.co.id/feed/', 'UMUM'),
(191, 'http://poskotanews.com/feed/', 'UMUM'),
(192, 'https://www.islampos.com/feed/', 'ISLAM'),
(193, 'http://www.timlo.net/feed/', 'UMUM'),
(194, 'http://kabarselebes.com/feed/', 'UMUM'),
(195, 'http://www.pikiran-rakyat.com/rss.xml', 'UMUM'),
(196, 'http://www.juara.net/feed', 'UMUM'),
(197, 'http://netralnews.com/rss', 'UMUM'),
(198, 'http://www.bacakabar.com/feed', 'UMUM'),
(199, 'http://www.suarasurabaya.net/rss/', 'UMUM'),
(200, 'http://www.suarasurabaya.net/rss/', 'UMUM'),
(201, 'http://www.galamedianews.com/rss.xml', 'UMUM'),
(202, 'http://batamnews.co.id/rss.xml', 'UMUM'),
(203, 'http://www.rmolsumsel.com/rss.php', 'UMUM'),
(204, 'http://jadiberita.com/feed', 'UMUM'),
(205, 'http://www.saibumi.com/rss.xml', 'UMUM'),
(206, 'http://www.deliknews.com/feed/', 'UMUM'),
(207, 'http://radarlampung.co.id/read/feed/', 'UMUM'),
(208, 'http://www.gosumbar.com/rss/berita/', 'UMUM'),
(209, 'http://www.gosumbar.com/rss/artikel/', 'UMUM'),
(210, 'http://www.kapanlagi.com/feed/', 'SELEBRITI'),
(211, 'http://www.kaskus.co.id/rss', 'UMUM'),
(212, 'http://doktersehat.com/feed/', 'KESEHATAN'),
(213, 'http://www.izwie.com/feeds/posts/default', 'UMUM'),
(214, 'http://www.pintarnulis.com/feed/', 'UMUM'),
(215, 'https://keluarga.com/rss', 'KELUARGA'),
(216, 'http://www.hipwee.com/feed/', 'UMUM'),
(217, 'http://www.artikelkeluarga.com/feed', 'KELUARGA'),
(218, 'http://doktersehat.com/feed/', 'KESEHATAN'),
(219, 'https://www.cermati.com/rss', 'UMUM'),
(220, 'http://www.duniatips.com/feed', 'UMUM'),
(221, 'http://askthephotographer.com/feed/', 'GAYA HIDUP'),
(222, 'http://www.oretoret.com/feed/', 'UMUM'),
(223, 'https://www.maxmanroe.com/feed', 'UMUM'),
(224, 'http://www.rosediana.net/feed/', 'UMUM'),
(225, 'http://artikelduniawanita.com/feed', 'UMUM'),
(226, 'http://feeds.feedburner.com/artikel-menarik/ydyX?format=xml', 'UMUM'),
(227, 'https://beritagar.id/rss', 'UMUM'),
(228, 'http://www.motherandbaby.co.id/rssfeed/latest/', 'KELUARGA'),
(229, 'http://www.kumpulanresepmasakanindonesia.com/feed/', 'MASAKAN'),
(230, 'http://majalahkuliner.info/feed/', 'MASAKAN'),
(231, 'http://resepmasakanhalal.blogspot.co.id/feeds/posts/default', 'MASAKAN'),
(232, 'http://resepjuna.blogspot.com/feeds/posts/default', 'MASAKAN'),
(233, 'http://www.resep.web.id/feed', 'KELUARGA'),
(234, 'http://omediapc.com/feed/', 'UMUM'),
(235, 'http://m.harianindo.com/feed/', 'UMUM'),
(236, 'http://autotekno.sindonews.com/rss', 'UMUM'),
(237, 'https://ngonoo.com/feed', 'UMUM'),
(238, 'http://www.beritasatu.com/rss/beritasatu.xml', 'UMUM');

-- --------------------------------------------------------

--
-- Table structure for table `rssnews`
--

CREATE TABLE `rssnews` (
  `item_id` varchar(32) NOT NULL,
  `feed_url` varchar(512) NOT NULL,
  `item_content` longtext,
  `item_title` varchar(255) NOT NULL,
  `item_date` date NOT NULL,
  `item_url` varchar(512) NOT NULL,
  `item_status` char(2) NOT NULL,
  `item_category_id` int(11) DEFAULT NULL,
  `fetch_date` date NOT NULL,
  `img_url` varchar(255) NOT NULL,
  `kategori` varchar(100) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `prety_url` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `rssnews`
--

INSERT INTO `rssnews` (`item_id`, `feed_url`, `item_content`, `item_title`, `item_date`, `item_url`, `item_status`, `item_category_id`, `fetch_date`, `img_url`, `kategori`, `thumbnail`, `prety_url`) VALUES
('3ec9a8a539bfdd4d574c698d70f616a4', 'http://www.voaindonesia.com/api/zmgo_e$miy', NULL, 'Surat Viral, Jokowi Kirim Kursi Roda untuk Bulan ', '2018-03-20', 'https://www.voaindonesia.com/a/surat-viral-jokowi-kirim-kursi-roda-untuk-bulan-/4307692.html', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('3ec9a8a539bfdd4d574c698d70f616a4', 'http://www.voaindonesia.com/api/zmgo_e$miy', NULL, 'VOA Trending Topic: Kolaborasi Cheveryly dan Dela Dewi dalam Film, Fashion dan Musik', '2018-03-20', 'https://www.voaindonesia.com/a/voa-trending-topic-kolaborasi-cheverly-dan-dela-dewi-dalam-film-fashion-dan-music/4307569.html', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('3ec9a8a539bfdd4d574c698d70f616a4', 'http://www.voaindonesia.com/api/zmgo_e$miy', NULL, 'Sejumlah Mantan Petinggi Militer dan Polisi akan Bersaing di Pilkada', '2018-03-20', 'https://www.voaindonesia.com/a/sejumlah-mantan-petinggi-militer-dan-polisi-akan-bersaing-di-pilkada/4306755.html', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('3ec9a8a539bfdd4d574c698d70f616a4', 'http://www.voaindonesia.com/api/zmgo_e$miy', NULL, 'Kemlu RI: Arab Saudi Sedianya Beri Notifikasi Eksekusi Zaini', '2018-03-20', 'https://www.voaindonesia.com/a/kemlu-ri-arab-saudi-sedianya-beri-notifikasi-eksekusi-zaini/4306615.html', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('3ec9a8a539bfdd4d574c698d70f616a4', 'http://www.voaindonesia.com/api/zmgo_e$miy', NULL, 'Kapal Mewah yang Ditahan Indonesia di Bali Belum Diserahkan ke AS', '2018-03-19', 'https://www.voaindonesia.com/a/kapal-mewah-yang-ditahan-di-bali-belum-diserahkan-ke-as-/4305344.html', '', NULL, '2018-03-19', '', 'UMUM', '', ''),
('3ec9a8a539bfdd4d574c698d70f616a4', 'http://www.voaindonesia.com/api/zmgo_e$miy', NULL, 'Indonesia Teruskan Subsidi BBM', '2018-03-19', 'https://www.voaindonesia.com/a/indonesia-teruskan-subsidi-migas/4305137.html', '', NULL, '2018-03-19', '', 'UMUM', '', ''),
('3ec9a8a539bfdd4d574c698d70f616a4', 'http://www.voaindonesia.com/api/zmgo_e$miy', NULL, 'Indonesia Tawarkan Beragam Investasi Sektor Infrastruktur Kepada India', '2018-03-19', 'https://www.voaindonesia.com/a/indonesia-tawarkan-beragam-investasi-sektor-infrastruktur-kepada-india/4304979.html', '', NULL, '2018-03-19', '', 'UMUM', '', ''),
('3ec9a8a539bfdd4d574c698d70f616a4', 'http://www.voaindonesia.com/api/zmgo_e$miy', NULL, 'TKI Dipancung di Arab Saudi, Migrant Care Desak Jokowi Batalkan Lawatan', '2018-03-19', 'https://www.voaindonesia.com/a/tki-dipancung-di-arab-saudi-migrant-care-desak-jokowi-batalkan-lawatan-/4304616.html', '', NULL, '2018-03-19', '', 'UMUM', '', ''),
('3ec9a8a539bfdd4d574c698d70f616a4', 'http://www.voaindonesia.com/api/zmgo_e$miy', NULL, 'Migrant Care: Vonis Rendah Majikan Suyantik Lukai Rasa Keadilan Korban', '2018-03-19', 'https://www.voaindonesia.com/a/migrant-care-vonis-rendah-majikan-suyantik-lukai-rasa-keadilan-korban/4304081.html', '', NULL, '2018-03-19', '', 'UMUM', '', ''),
('3ec9a8a539bfdd4d574c698d70f616a4', 'http://www.voaindonesia.com/api/zmgo_e$miy', NULL, 'Sebelas Anak Komodo Jadi Penghuni Baru Kebun Binatang Surabaya', '2018-03-19', 'https://www.voaindonesia.com/a/sebelas-bayi-komodi-jadi-penghuni-baru-kebun-binatang-surabaya/4304080.html', '', NULL, '2018-03-19', '', 'UMUM', '', ''),
('3ec9a8a539bfdd4d574c698d70f616a4', 'http://www.voaindonesia.com/api/zmgo_e$miy', NULL, 'Atap Ruang Rumah Sakit Roboh Menimpa 8 Pasien yang Sedang Dirawat', '2018-03-18', 'https://www.voaindonesia.com/a/atap-ruang-rumah-sakit-roboh-menimpa-8-pasien-yang-sedang-dirawat/4304086.html', '', NULL, '2018-03-18', '', 'UMUM', '', ''),
('3ec9a8a539bfdd4d574c698d70f616a4', 'http://www.voaindonesia.com/api/zmgo_e$miy', NULL, 'Jokowi Ingin Pemuda Indonesia dan Australia Perluas Toleransi', '2018-03-18', 'https://www.voaindonesia.com/a/jokowi-ingin-pemuda-indonesia-dan-australia-perluar-toleransi/4303587.html', '', NULL, '2018-03-18', '', 'UMUM', '', ''),
('3ec9a8a539bfdd4d574c698d70f616a4', 'http://www.voaindonesia.com/api/zmgo_e$miy', NULL, 'Majikan yang Siksa TKI Tak Dipenjara, Jaksa Ajukan Banding', '2018-03-17', 'https://www.voaindonesia.com/a/majikan-yang-siksa-tki-tak-dipenjara-jaksa-banding-/4302789.html', '', NULL, '2018-03-17', '', 'UMUM', '', ''),
('3ec9a8a539bfdd4d574c698d70f616a4', 'http://www.voaindonesia.com/api/zmgo_e$miy', NULL, 'Demostran Tuntut Pembubaran YPKP 1965', '2018-03-16', 'https://www.voaindonesia.com/a/demonstran-tuntut-pembubaran-ypkp-/4302459.html', '', NULL, '2018-03-16', '', 'UMUM', '', ''),
('3ec9a8a539bfdd4d574c698d70f616a4', 'http://www.voaindonesia.com/api/zmgo_e$miy', NULL, 'Film \"Sigek Cokelat\" Menyorot Industri Kelapa Sawit Indonesia Di Festival Internasional ', '2018-03-16', 'https://www.voaindonesia.com/a/film-sigek-cokelat-menyorot-industri-kelapa-sawit-indonesia-di-festival-internasional/4301911.html', '', NULL, '2018-03-16', '', 'UMUM', '', ''),
('3ec9a8a539bfdd4d574c698d70f616a4', 'http://www.voaindonesia.com/api/zmgo_e$miy', NULL, 'Lime Tree: Restoran Milik Diaspora Indonesia di San Fransisco', '2018-03-16', 'https://www.voaindonesia.com/a/lime-tree-restoran-milik-diaspora-indonesia-di-san-francisco/4301929.html', '', NULL, '2018-03-16', '', 'UMUM', '', ''),
('3ec9a8a539bfdd4d574c698d70f616a4', 'http://www.voaindonesia.com/api/zmgo_e$miy', NULL, 'Kiprah Startup Indonesia di SXSW', '2018-03-16', 'https://www.voaindonesia.com/a/kiprah-startup-indonesia-di-sxsw/4301507.html', '', NULL, '2018-03-16', '', 'UMUM', '', ''),
('3ec9a8a539bfdd4d574c698d70f616a4', 'http://www.voaindonesia.com/api/zmgo_e$miy', NULL, 'Buku di Indonesia, Masihkah Dibaca?', '2018-03-16', 'https://www.voaindonesia.com/a/buku-di-indonesia-masihkah-dibaca-/4301275.html', '', NULL, '2018-03-16', '', 'UMUM', '', ''),
('3ec9a8a539bfdd4d574c698d70f616a4', 'http://www.voaindonesia.com/api/zmgo_e$miy', NULL, 'Ketua DPR Pastikan Pengkritik DPR Tak akan Dikriminalisasi', '2018-03-15', 'https://www.voaindonesia.com/a/ketua-dpr-pastikan-pengkritik-dpr-tak-akan-dikriminalisasi-/4300691.html', '', NULL, '2018-03-15', '', 'UMUM', '', ''),
('3ec9a8a539bfdd4d574c698d70f616a4', 'http://www.voaindonesia.com/api/zmgo_e$miy', NULL, 'Konjen RI di LA: WNI Jangan Sembarangan Beli Senjata di AS', '2018-03-15', 'https://www.voaindonesia.com/a/konjen-ri-di-la-wni-jangan-sembarangan-beli-di-as/4300703.html', '', NULL, '2018-03-15', '', 'UMUM', '', ''),
('5cf72727c33a2536ced611da8b61c83d', 'http://rss.detik.com/index.php/detikcom', NULL, 'Duh! Bocah-bocah Perempuan Rohingya Dijual Untuk Prostitusi', '2018-03-21', 'http://news.detik.com/read/2018/03/21/102626/3928187/934/duh-bocah-bocah-perempuan-rohingya-dijual-untuk-prostitusi', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('5cf72727c33a2536ced611da8b61c83d', 'http://rss.detik.com/index.php/detikcom', NULL, 'Ingat! Hari Tanpa Bayangan Terjadi Siang Ini', '2018-03-21', 'http://inet.detik.com/read/2018/03/21/092122/3928093/511/ingat-hari-tanpa-bayangan-terjadi-siang-ini', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('5cf72727c33a2536ced611da8b61c83d', 'http://rss.detik.com/index.php/detikcom', NULL, 'Supersemar Bayar Rp 241 M, Pintu Gelar Pahlawan Soeharto Tertutup', '2018-03-21', 'http://news.detik.com/read/2018/03/21/093751/3928095/10/supersemar-bayar-rp-241-m-pintu-gelar-pahlawan-soeharto-tertutup', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('5cf72727c33a2536ced611da8b61c83d', 'http://rss.detik.com/index.php/detikcom', NULL, 'Bos Keamanan Tinggalkan Facebook, Ada Apa?', '2018-03-21', 'http://inet.detik.com/read/2018/03/21/103157/3928199/398/bos-keamanan-tinggalkan-facebook-ada-apa', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('5cf72727c33a2536ced611da8b61c83d', 'http://rss.detik.com/index.php/detikcom', NULL, 'Banjir Bandang di Bandung, Mobil Hanyut Sejauh 10 Kilometer', '2018-03-21', 'http://news.detik.com/read/2018/03/21/102330/3928197/486/banjir-bandang-di-bandung-mobil-hanyut-sejauh-10-kilometer', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('5cf72727c33a2536ced611da8b61c83d', 'http://rss.detik.com/index.php/detikcom', NULL, 'Lagi Cari Kerja? Cepat Datang ke Istora Senayan!', '2018-03-21', 'http://finance.detik.com/read/2018/03/21/103001/3928195/1780/lagi-cari-kerja-cepat-datang-ke-istora-senayan', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('5cf72727c33a2536ced611da8b61c83d', 'http://rss.detik.com/index.php/detikcom', NULL, 'Ikut Ramaikan Hari Tanpa Bayangan? Dokter Sarankan Pakai Pelindung Kulit', '2018-03-21', 'http://health.detik.com/read/2018/03/21/102417/3928190/763/ikut-ramaikan-hari-tanpa-bayangan-dokter-sarankan-pakai-pelindung-kulit', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('5cf72727c33a2536ced611da8b61c83d', 'http://rss.detik.com/index.php/detikcom', NULL, 'Lagi di Eropa, Syahrini Tak Hadir di Sidang Bos First Travel', '2018-03-21', 'http://news.detik.com/read/2018/03/21/102832/3928196/10/lagi-di-eropa-syahrini-tak-hadir-di-sidang-bos-first-travel', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('5cf72727c33a2536ced611da8b61c83d', 'http://rss.detik.com/index.php/detikcom', NULL, 'Daftar Pemilih Pilgub Sulsel Berpotensi Berkurang', '2018-03-21', 'http://news.detik.com/read/2018/03/21/103050/3928198/10/daftar-pemilih-pilgub-sulsel-berpotensi-berkurang', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('5cf72727c33a2536ced611da8b61c83d', 'http://rss.detik.com/index.php/detikcom', NULL, 'Kisah Tukang Becak Asal RI yang Kini Sukses di New York ', '2018-03-21', 'http://finance.detik.com/read/2018/03/21/101708/3928186/4/kisah-tukang-becak-asal-ri-yang-kini-sukses-di-new-york', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('564eb623465d8998d6073b56e24c45aa', 'http://www.suara.com/rss/topstory', NULL, 'Mobil Swakemudi Uber Tabrak Pejalan Kaki Hingga Tewas', '2018-03-20', 'https://www.suara.com/otomotif/2018/03/20/175719/mobil-swakemudi-uber-tabrak-pejalan-kaki-hingga-tewas', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('564eb623465d8998d6073b56e24c45aa', 'http://www.suara.com/rss/topstory', NULL, 'Komeng Akhirnya Lulus Kuliah, Ini Judul Skripsinya', '2018-03-20', 'https://www.suara.com/tekno/2018/03/20/063000/komeng-akhirnya-lulus-kuliah-ini-judul-skripsinya', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('564eb623465d8998d6073b56e24c45aa', 'http://www.suara.com/rss/topstory', NULL, 'Tak Kunjung Menua, Pembawa Acara Cuaca di Cina Jadi Pujaan', '2018-03-19', 'https://www.suara.com/tekno/2018/03/19/223140/tak-kunjung-menua-pembawa-acara-cuaca-di-cina-jadi-pujaan', '', NULL, '2018-03-19', '', 'UMUM', '', ''),
('564eb623465d8998d6073b56e24c45aa', 'http://www.suara.com/rss/topstory', NULL, 'Vivo V9 Mendarat di Jakarta, Siap Diluncurkan', '2018-03-19', 'https://www.suara.com/tekno/2018/03/19/173741/vivo-v9-mendarat-di-jakarta-siap-diluncurkan', '', NULL, '2018-03-19', '', 'UMUM', '', ''),
('564eb623465d8998d6073b56e24c45aa', 'http://www.suara.com/rss/topstory', NULL, 'Uber Tawarkan Teknologi Swakemudi ke Toyota', '2018-03-18', 'https://www.suara.com/otomotif/2018/03/18/215536/uber-tawarkan-teknologi-swakemudi-ke-toyota', '', NULL, '2018-03-18', '', 'UMUM', '', ''),
('564eb623465d8998d6073b56e24c45aa', 'http://www.suara.com/rss/topstory', NULL, 'All England: Hafiz / Gloria Ingin Jadi Penerus Tontowi / Liliyana', '2018-03-17', 'https://www.suara.com/sport/2018/03/17/060600/all-england-hafiz-gloria-ingin-jadi-penerus-tontowi-liliyana', '', NULL, '2018-03-17', '', 'UMUM', '', ''),
('564eb623465d8998d6073b56e24c45aa', 'http://www.suara.com/rss/topstory', NULL, 'Mandi dengan Anak Disebut Menjijikan, Ini Kata Nana Mirdad', '2018-03-16', 'https://www.suara.com/entertainment/2018/03/16/192712/mandi-dengan-anak-disebut-menjijikan-ini-kata-nana-mirdad', '', NULL, '2018-03-16', '', 'UMUM', '', ''),
('564eb623465d8998d6073b56e24c45aa', 'http://www.suara.com/rss/topstory', NULL, 'Polisi Tangkap Staf Khusus Kepresidenan Gadungan', '2018-03-15', 'https://www.suara.com/foto/2018/03/15/172605/polisi-tangkap-staf-khusus-kepresidenan-gadungan', '', NULL, '2018-03-15', '', 'UMUM', '', ''),
('564eb623465d8998d6073b56e24c45aa', 'http://www.suara.com/rss/topstory', NULL, 'Tahu Jalan Pikiran Tuhan, 1 dari 3 Ide Kontroversial Hawking', '2018-03-14', 'https://www.suara.com/tekno/2018/03/14/200938/tahu-jalan-pikiran-tuhan-1-dari-3-ide-kontroversial-hawking', '', NULL, '2018-03-14', '', 'UMUM', '', ''),
('564eb623465d8998d6073b56e24c45aa', 'http://www.suara.com/rss/topstory', NULL, 'PBB: Facebook Dorong Pembantaian Etnis Rohingya di Myanmar', '2018-03-13', 'https://www.suara.com/tekno/2018/03/13/141703/pbb-facebook-dorong-pembantaian-etnis-rohingya-di-myanmar', '', NULL, '2018-03-13', '', 'UMUM', '', ''),
('564eb623465d8998d6073b56e24c45aa', 'http://www.suara.com/rss/topstory', NULL, 'Rahasia Kehidupan 1200 Tahun Silam terungkap di Hutan Bangladesh', '2018-03-13', 'https://www.suara.com/tekno/2018/03/13/085721/rahasia-kehidupan-1200-tahun-silam-terungkap-di-hutan-bangladesh', '', NULL, '2018-03-13', '', 'UMUM', '', ''),
('564eb623465d8998d6073b56e24c45aa', 'http://www.suara.com/rss/topstory', NULL, 'Rutin Berlari Bisa Cegah Gagal Jantung, Lho!', '2018-03-12', 'https://www.suara.com/health/2018/03/12/210000/rutin-berlari-bisa-cegah-gagal-jantung-lho', '', NULL, '2018-03-12', '', 'UMUM', '', ''),
('564eb623465d8998d6073b56e24c45aa', 'http://www.suara.com/rss/topstory', NULL, 'Kecelakaan, Dua Perempuan Bercadar Tolak Ditolong Lelaki', '2018-03-10', 'https://www.suara.com/tekno/2018/03/10/193302/kecelakaan-dua-perempuan-bercadar-tolak-ditolong-lelaki', '', NULL, '2018-03-10', '', 'UMUM', '', ''),
('564eb623465d8998d6073b56e24c45aa', 'http://www.suara.com/rss/topstory', NULL, 'Tuduh Dede Sunandar Selingkuh, Istri Akhirnya Minta Maaf', '2018-03-10', 'https://www.suara.com/entertainment/2018/03/10/143640/tuduh-dede-sunandar-selingkuh-istri-akhirnya-minta-maaf', '', NULL, '2018-03-10', '', 'UMUM', '', ''),
('564eb623465d8998d6073b56e24c45aa', 'http://www.suara.com/rss/topstory', NULL, 'Nonton TV Lebih Dari 4 Jam Sehari Berisiko Kena Kanker Usus Besar', '2018-03-10', 'https://www.suara.com/health/2018/03/10/093000/nonton-tv-lebih-dari-4-jam-sehari-berisiko-kena-kanker-usus-besar', '', NULL, '2018-03-10', '', 'UMUM', '', ''),
('564eb623465d8998d6073b56e24c45aa', 'http://www.suara.com/rss/topstory', NULL, 'Survei: 8 dari 10 Orang Indonesia Jual Barang Pemberian Mantan', '2018-03-09', 'https://www.suara.com/lifestyle/2018/03/09/203717/survei-8-dari-10-orang-indonesia-jual-barang-pemberian-mantan', '', NULL, '2018-03-09', '', 'UMUM', '', ''),
('564eb623465d8998d6073b56e24c45aa', 'http://www.suara.com/rss/topstory', NULL, 'Ponakan Setya Novanto Ditahan KPK', '2018-03-09', 'https://www.suara.com/foto/2018/03/09/194052/ponakan-setya-novanto-ditahan-kpk', '', NULL, '2018-03-09', '', 'UMUM', '', ''),
('564eb623465d8998d6073b56e24c45aa', 'http://www.suara.com/rss/topstory', NULL, 'Gelar Barang Bukti OTT Kendari', '2018-03-09', 'https://www.suara.com/foto/2018/03/09/191945/gelar-barang-bukti-ott-kendari', '', NULL, '2018-03-09', '', 'UMUM', '', ''),
('564eb623465d8998d6073b56e24c45aa', 'http://www.suara.com/rss/topstory', NULL, 'Bikin Kaget, Asisten Pintar Alexa Tiba-Tiba Tertawa', '2018-03-09', 'https://www.suara.com/tekno/2018/03/09/101947/bikin-kaget-asisten-pintar-alexa-tiba-tiba-tertawa', '', NULL, '2018-03-09', '', 'UMUM', '', ''),
('564eb623465d8998d6073b56e24c45aa', 'http://www.suara.com/rss/topstory', NULL, 'Alasan Kominfo Blokir Tumblr Bikin Warganet Geram', '2018-03-06', 'https://www.suara.com/tekno/2018/03/06/204955/alasan-kominfo-blokir-tumblr-bikin-warganet-geram', '', NULL, '2018-03-06', '', 'UMUM', '', ''),
('1fb12e2a27962fccc07931840723c4c0', 'http://www.motherandbaby.co.id/rssfeed/latest/', NULL, 'Mau Cepat Hamil? Jalani Diet Fertilitas Saja (II-Habis)', '2018-03-21', 'http://www.motherandbaby.co.id/article/2018/3/21/9560/Mau-Cepat-Hamil-Jalani-Diet-Fertilitas-Saja-II-Habis', '', NULL, '2018-03-21', '', 'KELUARGA', '', ''),
('1fb12e2a27962fccc07931840723c4c0', 'http://www.motherandbaby.co.id/rssfeed/latest/', NULL, 'Mau Cepat Hamil? Jalani Diet Fertilitas Saja (I)', '2018-03-20', 'http://www.motherandbaby.co.id/article/2018/3/20/9559/Mau-Cepat-Hamil-Jalani-Diet-Fertilitas-Saja-I', '', NULL, '2018-03-20', '', 'KELUARGA', '', ''),
('1fb12e2a27962fccc07931840723c4c0', 'http://www.motherandbaby.co.id/rssfeed/latest/', NULL, '5 Posisi Seks yang Bikin Kulit Cerah, Buktikan Yuk Moms', '2018-03-20', 'http://www.motherandbaby.co.id/article/2018/3/20/9550/5-Posisi-Seks-yang-Bikin-Kulit-Cerah-Buktikan-Yuk-Moms', '', NULL, '2018-03-20', '', 'KELUARGA', '', ''),
('1fb12e2a27962fccc07931840723c4c0', 'http://www.motherandbaby.co.id/rssfeed/latest/', NULL, 'Ini Jenis Facial yang Bikin Sandra Bullock Awet Muda', '2018-03-20', 'http://www.motherandbaby.co.id/article/2018/3/20/9548/Ini-Jenis-Facial-yang-Bikin-Sandra-Bullock-Awet-Muda', '', NULL, '2018-03-20', '', 'KELUARGA', '', ''),
('1fb12e2a27962fccc07931840723c4c0', 'http://www.motherandbaby.co.id/rssfeed/latest/', NULL, 'Cara Ampuh Atasi Ambeien dengan Cepat & Tanpa Sakit!', '2018-03-20', 'http://www.motherandbaby.co.id/article/2018/3/20/9549/Cara-Ampuh-Atasi-Ambeien-dengan-Cepat-Tanpa-Sakit', '', NULL, '2018-03-20', '', 'KELUARGA', '', ''),
('1fb12e2a27962fccc07931840723c4c0', 'http://www.motherandbaby.co.id/rssfeed/latest/', NULL, 'Pergi Jauh saat Hamil? Ikuti Saran dari Para Ahli Ini', '2018-03-20', 'http://www.motherandbaby.co.id/article/2018/3/20/9540/Pergi-Jauh-saat-Hamil-Ikuti-Saran-dari-Para-Ahli-Ini', '', NULL, '2018-03-20', '', 'KELUARGA', '', ''),
('1fb12e2a27962fccc07931840723c4c0', 'http://www.motherandbaby.co.id/rssfeed/latest/', NULL, '9 Fakta Menarik dan Unik tentang Tidur', '2018-03-20', 'http://www.motherandbaby.co.id/article/2018/3/20/9542/9-Fakta-Menarik-dan-Unik-tentang-Tidur', '', NULL, '2018-03-20', '', 'KELUARGA', '', ''),
('1fb12e2a27962fccc07931840723c4c0', 'http://www.motherandbaby.co.id/rssfeed/latest/', NULL, 'Makan 5 Menu Ini, Dijamin Kualitas Seks Anda Meningkat', '2018-03-19', 'http://www.motherandbaby.co.id/article/2018/3/19/9537/Makan-5-Menu-Ini-Dijamin-Kualitas-Seks-Anda-Meningkat', '', NULL, '2018-03-19', '', 'KELUARGA', '', ''),
('1fb12e2a27962fccc07931840723c4c0', 'http://www.motherandbaby.co.id/rssfeed/latest/', NULL, 'Setelah Tertimpa Pohon, Akhirnya Bocah Itu Berpulang', '2018-03-19', 'http://www.motherandbaby.co.id/article/2018/3/19/9541/Setelah-Tertimpa-Pohon-Akhirnya-Bocah-Itu-Berpulang', '', NULL, '2018-03-19', '', 'KELUARGA', '', ''),
('1fb12e2a27962fccc07931840723c4c0', 'http://www.motherandbaby.co.id/rssfeed/latest/', NULL, 'Viral Anak Berselisih dengan Guru, Siapa yang Salah?', '2018-03-19', 'http://www.motherandbaby.co.id/article/2018/3/19/9543/Viral-Anak-Berselisih-dengan-Guru-Siapa-yang-Salah', '', NULL, '2018-03-19', '', 'KELUARGA', '', ''),
('5eac48a92cd5f5fc492f60183905bcd0', 'http://kabarselebes.com/feed/', NULL, 'Warga Tolitoli Dibekuk Polisi SaatÂ Sedang Transaksi Sabu-Sabu', '2018-03-20', 'http://www.kabarselebes.id/2018/03/warga-tolitoli-dibekuk-polisi-saat-sedang-transaksi-sabu-sabu/', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('5eac48a92cd5f5fc492f60183905bcd0', 'http://kabarselebes.com/feed/', NULL, 'Penataran Wasit Juri di Palu Terbesar Kedua', '2018-03-20', 'http://www.kabarselebes.id/2018/03/penataran-wasit-juri-di-palu-terbesar-kedua/', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('5eac48a92cd5f5fc492f60183905bcd0', 'http://kabarselebes.com/feed/', NULL, 'Dirjen: Bantuan Alsintan Tergantung Permintaan Daerah', '2018-03-20', 'http://www.kabarselebes.id/2018/03/dirjen-bantuan-alsintan-tergantung-permintaan-daerah/', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('5eac48a92cd5f5fc492f60183905bcd0', 'http://kabarselebes.com/feed/', NULL, 'Realisasi Lambat,  Dirjen Ancam Geser Anggaran Pajala', '2018-03-20', 'http://www.kabarselebes.id/2018/03/realisasi-lambat-dirjen-ancam-geser-anggaran-pajala/', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('5eac48a92cd5f5fc492f60183905bcd0', 'http://kabarselebes.com/feed/', NULL, 'Pengacara dan Dosen Ikut Ditangkap Aparat pada Bentrokan di Tanjung Sari Luwuk', '2018-03-19', 'http://www.kabarselebes.id/2018/03/pengacara-dan-dosen-ikut-ditangkap-aparat-pada-bentrokan-di-tanjung-sari-luwuk/', '', NULL, '2018-03-19', '', 'UMUM', '', ''),
('5eac48a92cd5f5fc492f60183905bcd0', 'http://kabarselebes.com/feed/', NULL, 'Simak, Keberanian Puluhan Ibu-ibu Bermukena di Luwuk Menghadang Ribuan Brimob', '2018-03-19', 'http://www.kabarselebes.id/2018/03/simak-keberanian-puluhan-ibu-ibu-bermukena-di-luwuk-menghadang-ribuan-brimob/', '', NULL, '2018-03-19', '', 'UMUM', '', ''),
('5eac48a92cd5f5fc492f60183905bcd0', 'http://kabarselebes.com/feed/', NULL, 'Pasca Bentrok Luwuk, Polisi Amankan 9 Warga', '2018-03-19', 'http://www.kabarselebes.id/2018/03/pasca-bentrok-luwuk-polisi-amankan-9-warga/', '', NULL, '2018-03-19', '', 'UMUM', '', ''),
('5eac48a92cd5f5fc492f60183905bcd0', 'http://kabarselebes.com/feed/', NULL, 'Ngeri, Warga Luwuk Hadang Polisi dengan Tabung Elpiji, Bom Molotov dan Bambu Runcing', '2018-03-19', 'http://www.kabarselebes.id/2018/03/ngeri-warga-luwuk-hadang-polisi-dengan-tabung-elpiji-bom-molotov-dan-bambu-runcing/', '', NULL, '2018-03-19', '', 'UMUM', '', ''),
('5eac48a92cd5f5fc492f60183905bcd0', 'http://kabarselebes.com/feed/', NULL, 'Menegangkan, Simak Video Detik-detik Polisi Bubarkan Massa Penghadang Eksekusi Lahan di Luwuk', '2018-03-19', 'http://www.kabarselebes.id/2018/03/menegangkan-simak-video-detik-detik-polisi-bubarkan-massa-penghadang-eksekusi-lahan-di-luwuk/', '', NULL, '2018-03-19', '', 'UMUM', '', ''),
('5eac48a92cd5f5fc492f60183905bcd0', 'http://kabarselebes.com/feed/', NULL, 'IAIN : Pemikiran Politik Islam Solusi Perbaikan Demokrasi', '2018-03-19', 'http://www.kabarselebes.id/2018/03/iain-pemikiran-politik-islam-solusi-perbaikan-demokrasi/', '', NULL, '2018-03-19', '', 'UMUM', '', ''),
('28c21d26bf916e38bd9bb8139371390f', 'http://banjarmasin.tribunnews.com/rss', NULL, 'Pemenang Juara Indonesian Idol Bocor? Armand Samakan Suara Maria dan BCL, Keren Parah!', '2018-03-21', 'http://banjarmasin.tribunnews.com/2018/03/21/pemenang-juara-indonesian-idol-bocor-armand-samakan-suara-maria-dan-bcl-keren-parah', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('28c21d26bf916e38bd9bb8139371390f', 'http://banjarmasin.tribunnews.com/rss', NULL, 'Tanpa Stiker, Jangan Harap Driver Online Bisa Gunakan Aplikasi', '2018-03-21', 'http://banjarmasin.tribunnews.com/2018/03/21/tanpa-stiker-jangan-harap-driver-online-bisa-gunakan-aplikasi', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('28c21d26bf916e38bd9bb8139371390f', 'http://banjarmasin.tribunnews.com/rss', NULL, 'Total Kuota Taksi Online di Kalsel 980, yang Mengurus Izin Baru 200, Awas, Mulai April Ada Tindakan', '2018-03-21', 'http://banjarmasin.tribunnews.com/2018/03/21/total-kuota-taksi-online-di-kalsel-980-yang-mengurus-izin-baru-200-awas-mulai-april-ada-tindakan', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('28c21d26bf916e38bd9bb8139371390f', 'http://banjarmasin.tribunnews.com/rss', NULL, 'Ingin Anak Multi Talenta, Buruan Ikuti Ini, Tapi Ada Syaratnya Lho', '2018-03-21', 'http://banjarmasin.tribunnews.com/2018/03/21/ingin-anak-multi-talenta-buruan-ikuti-ini-tapi-ada-syaratnya-lho', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('28c21d26bf916e38bd9bb8139371390f', 'http://banjarmasin.tribunnews.com/rss', NULL, 'Kondisi Bangunan SDN Melayu 5 Memprihatinkan, Ajukan Perbaikan, Sekolah Terganjal Masalah Ini', '2018-03-21', 'http://banjarmasin.tribunnews.com/2018/03/21/kondisi-bangunan-sdn-melayu-5-memprihatinkan-ajukan-perbaikan-sekolah-terganjal-masalah-ini', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('28c21d26bf916e38bd9bb8139371390f', 'http://banjarmasin.tribunnews.com/rss', NULL, 'Hari Tanpa Bayangan 2018, Siap-siap Siang ini Matahari Terik Sekali, Apa yang Harus Dilakukan?', '2018-03-21', 'http://banjarmasin.tribunnews.com/2018/03/21/hari-tanpa-bayangan-2018-siap-siap-siang-ini-matahari-terik-sekali-apa-yang-harus-dilakukan', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('28c21d26bf916e38bd9bb8139371390f', 'http://banjarmasin.tribunnews.com/rss', NULL, 'Merasa Dirugikan sebagai Konsumen? Anda Punya Hak Mengadu ke YLKI, Gratis!', '2018-03-21', 'http://banjarmasin.tribunnews.com/2018/03/21/merasa-dirugikan-sebagai-konsumen-anda-punya-hak-mengadu-ke-ylki-gratis', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('28c21d26bf916e38bd9bb8139371390f', 'http://banjarmasin.tribunnews.com/rss', NULL, 'Di Depan Tentara, Satlantas Polres Tapin Bilang Akibat Kecelakaan Lalu Lintas Terjadi Pemiskinan', '2018-03-21', 'http://banjarmasin.tribunnews.com/2018/03/21/di-depan-tentara-satlantas-polres-tapin-bilang-akibat-kecelakaan-lalu-lintas-terjadi-pemiskinan', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('28c21d26bf916e38bd9bb8139371390f', 'http://banjarmasin.tribunnews.com/rss', NULL, 'Apa Kabar Proses Penyertaan Modal PDAM Bandarmasih? Anggota Dewan Pertanyakan Kelanjutannya', '2018-03-21', 'http://banjarmasin.tribunnews.com/2018/03/21/apa-kabar-proses-penyertaan-modal-pdam-bandarmasih-anggota-dewan-pertanyakan-kelanjutannya', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('28c21d26bf916e38bd9bb8139371390f', 'http://banjarmasin.tribunnews.com/rss', NULL, 'Diajak Manggung Usai Tersisih di Liga Dangdut, Rina Pilih Pulang karena Kangen Tak Tertahankan', '2018-03-21', 'http://banjarmasin.tribunnews.com/2018/03/21/diajak-manggung-usai-tersisih-di-liga-dangdut-rina-pilih-pulang-karena-kangen-tak-tertahankan', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('28c21d26bf916e38bd9bb8139371390f', 'http://banjarmasin.tribunnews.com/rss', NULL, 'Musrenbang Sebagai Wadah Evaluasi Permasalahan Pembangunan Daerah', '2018-03-21', 'http://banjarmasin.tribunnews.com/2018/03/21/musrenbang-sebagai-wadah-evaluasi-permasalahan-pembangunan-daerah', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('28c21d26bf916e38bd9bb8139371390f', 'http://banjarmasin.tribunnews.com/rss', NULL, 'Jika Tak Segera Dimakan Buah Langka Ini akan Terasa Pahit dan Keras', '2018-03-21', 'http://banjarmasin.tribunnews.com/2018/03/21/jika-tak-segera-dimakan-buah-langka-ini-akan-terasa-pahit-dan-keras', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('28c21d26bf916e38bd9bb8139371390f', 'http://banjarmasin.tribunnews.com/rss', NULL, 'Aiptu H Rahimin Bantu Warga Dirikan Posko Haul Guru Sekumpul', '2018-03-21', 'http://banjarmasin.tribunnews.com/2018/03/21/aiptu-h-rahimin-bantu-warga-dirikan-posko-haul-guru-sekumpul', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('28c21d26bf916e38bd9bb8139371390f', 'http://banjarmasin.tribunnews.com/rss', NULL, 'Hai Bunda! Ayo Sempatkan Membaca Buku untuk Anak-anak', '2018-03-21', 'http://banjarmasin.tribunnews.com/2018/03/21/hai-bunda-ayo-sempatkan-membaca-buku-untuk-anak-anak', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('28c21d26bf916e38bd9bb8139371390f', 'http://banjarmasin.tribunnews.com/rss', NULL, 'Jadwal Siaran Langsung RCTI Timnas U-23 - Singapura vs Timnas U-23 Indonesia Hari Ini: Ezra Siap!', '2018-03-21', 'http://banjarmasin.tribunnews.com/2018/03/21/jadwal-siaran-langsung-rcti-timnas-u-23-singapura-vs-timnas-u-23-indonesia-hari-ini-ezra-siap', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('28c21d26bf916e38bd9bb8139371390f', 'http://banjarmasin.tribunnews.com/rss', NULL, 'NEWS ANALYSIS: Bagaimana Menciptakan Orang Menjadi Taat Hukum.', '2018-03-21', 'http://banjarmasin.tribunnews.com/2018/03/21/news-analysis-bagaimana-menciptakan-orang-menjadi-taat-hukum', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('28c21d26bf916e38bd9bb8139371390f', 'http://banjarmasin.tribunnews.com/rss', NULL, 'Semakin Ketat Penjagaan, Bandar Narkoba Semakin Pintar Mencari Celah Selundupkan Sabu', '2018-03-21', 'http://banjarmasin.tribunnews.com/2018/03/21/semakin-ketat-penjagaan-bandar-narkoba-semakin-pintar-mencari-celah-selundupkan-sabu', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('28c21d26bf916e38bd9bb8139371390f', 'http://banjarmasin.tribunnews.com/rss', NULL, 'Addib Masuk Final Lomba Mendongeng Sekolah Dasar Tingkat Nasional 2018', '2018-03-21', 'http://banjarmasin.tribunnews.com/2018/03/21/addib-masuk-final-lomba-mendongeng-sekolah-dasar-tingkat-nasional-2018', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('28c21d26bf916e38bd9bb8139371390f', 'http://banjarmasin.tribunnews.com/rss', NULL, 'Ngeri, Lapas Karang Intan Menampung 1.174 Napi, Inilah Tempatnya Para Bandar Sabu di Kalsel', '2018-03-21', 'http://banjarmasin.tribunnews.com/2018/03/21/ngeri-lapas-karang-intan-menampung-1174-napi-inilah-tempatnya-para-bandar-sabu-di-kalsel', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('1bdddd6cb7fd928788985318c02a844c', 'https://www.cermati.com/rss', NULL, 'Kenapa Bicarakan soal Keuangan pada Orangtua itu Penting?', '2018-03-21', 'https://www.cermati.com/artikel/kenapa-bicarakan-soal-keuangan-pada-orangtua-itu-penting', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('1bdddd6cb7fd928788985318c02a844c', 'https://www.cermati.com/rss', NULL, 'Waktu yang Tepat Minta Bunga Cicilan KPR Turun', '2018-03-21', 'https://www.cermati.com/artikel/waktu-yang-tepat-minta-bunga-cicilan-kpr-turun', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('1bdddd6cb7fd928788985318c02a844c', 'https://www.cermati.com/rss', NULL, 'Cara Mendapatkan Uang di Internet yang Lagi Hits Buat Kerja Sampingan', '2018-03-20', 'https://www.cermati.com/artikel/cara-mendapatkan-uang-di-internet-yang-lagi-hits-buat-kerja-sampingan', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('1bdddd6cb7fd928788985318c02a844c', 'https://www.cermati.com/rss', NULL, 'Inilah Rahasia Hui Ka Yan, Pengusaha Sukses dan Terkaya se-Asia', '2018-03-20', 'https://www.cermati.com/artikel/inilah-rahasia-hui-ka-yan-pengusaha-sukses-dan-terkaya-se-asia', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('1bdddd6cb7fd928788985318c02a844c', 'https://www.cermati.com/rss', NULL, 'Waspada Jebakan Tawaran Bunga Deposito Tinggi', '2018-03-20', 'https://www.cermati.com/artikel/waspada-jebakan-tawaran-bunga-deposito-tinggi', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('1bdddd6cb7fd928788985318c02a844c', 'https://www.cermati.com/rss', NULL, 'Waspadai Uang Hilang di ATM, Lakukan Ini Hindari Penipuan Skimming ', '2018-03-20', 'https://www.cermati.com/artikel/waspadai-uang-hilang-di-atm-lakukan-ini-hindari-penipuan-skimming', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('1bdddd6cb7fd928788985318c02a844c', 'https://www.cermati.com/rss', NULL, '7 Perusahaan Startup Lokal yang Terkenal di Dunia', '2018-03-19', 'https://www.cermati.com/artikel/7-perusahaan-startup-lokal-yang-terkenal-di-dunia', '', NULL, '2018-03-19', '', 'UMUM', '', ''),
('1bdddd6cb7fd928788985318c02a844c', 'https://www.cermati.com/rss', NULL, 'Alasan Kuno Seseorang Ragu Gunakan Kartu Kredit, Ini Cara Mengatasinya', '2018-03-19', 'https://www.cermati.com/artikel/alasan-kuno-seseorang-ragu-gunakan-kartu-kredit-ini-cara-mengatasinya', '', NULL, '2018-03-19', '', 'UMUM', '', ''),
('1bdddd6cb7fd928788985318c02a844c', 'https://www.cermati.com/rss', NULL, 'Cara Memilih KTA yang Bagus, Pilih KTA Online', '2018-03-19', 'https://www.cermati.com/artikel/cara-memilih-kta-yang-bagus-pilih-kta-online', '', NULL, '2018-03-19', '', 'UMUM', '', ''),
('1bdddd6cb7fd928788985318c02a844c', 'https://www.cermati.com/rss', NULL, 'Deretan Pasar Malam Ini Paling Terkenal di Seluruh Dunia', '2018-03-18', 'https://www.cermati.com/artikel/deretan-pasar-malam-ini-paling-terkenal-di-seluruh-dunia', '', NULL, '2018-03-18', '', 'UMUM', '', ''),
('891f029d9100d0d12b436cd7f942c145', 'http://www.tabloidpcplus.com/feed/', NULL, 'Tawarkan Harga Murah, Haier G51 Bidik Segmen Entry Level', '2018-02-24', 'https://www.pcplus.co.id/2018/02/berita-teknologi/tawarkan-harga-murah-haier-g51-bidik-segmen-entry-level/', '', NULL, '2018-02-24', '', 'KOMPUTER', '', ''),
('891f029d9100d0d12b436cd7f942c145', 'http://www.tabloidpcplus.com/feed/', NULL, 'Powerbank Asus Kini Semakin Ringkas', '2018-02-05', 'https://www.pcplus.co.id/2018/02/berita-teknologi/powerbank-asus-kini-semakin-ringkas/', '', NULL, '2018-02-05', '', 'KOMPUTER', '', ''),
('891f029d9100d0d12b436cd7f942c145', 'http://www.tabloidpcplus.com/feed/', NULL, 'Awali Tahun 2018, Asus Luncurkan Tiga Notebook Gaming Terbaru', '2018-02-05', 'https://www.pcplus.co.id/2018/02/berita-teknologi/mengawali-tahun-2018-asus-luncurkan-tiga-notebook-gaming-terbaru/', '', NULL, '2018-02-05', '', 'KOMPUTER', '', ''),
('891f029d9100d0d12b436cd7f942c145', 'http://www.tabloidpcplus.com/feed/', NULL, 'RRQ Team Kini Wakili Asus ROG', '2018-02-02', 'https://www.pcplus.co.id/2018/02/berita-teknologi/rrq-team-kini-wakili-asus-rog/', '', NULL, '2018-02-02', '', 'KOMPUTER', '', ''),
('891f029d9100d0d12b436cd7f942c145', 'http://www.tabloidpcplus.com/feed/', NULL, 'Tiga Tipe Pembeli Online Shop di Indonesia Menurut Shopee', '2018-02-01', 'https://www.pcplus.co.id/2018/02/fitur/ini-dia-tiga-tipe-pembeli-online-shop-di-indonesia-menurut-shopee/', '', NULL, '2018-02-01', '', 'KOMPUTER', '', ''),
('891f029d9100d0d12b436cd7f942c145', 'http://www.tabloidpcplus.com/feed/', NULL, 'UCNews Hadirkan Kuis Miliarder Berhadiah Uang Tunai', '2018-01-31', 'https://www.pcplus.co.id/2018/01/baru-terbit/ucnews-hadirkan-kuis-miliarder-dengan-hadiah-uang-tunai/', '', NULL, '2018-01-31', '', 'KOMPUTER', '', ''),
('891f029d9100d0d12b436cd7f942c145', 'http://www.tabloidpcplus.com/feed/', NULL, 'Opera Hadirkan Proteksi Penambangan Bitcoin di Peramban versi Mobile', '2018-01-31', 'https://www.pcplus.co.id/2018/01/sekuriti/opera-hadirkan-fitur-perlindungan-terhadap-penambangan-bitcoin-di-peramban-versi-mobile/', '', NULL, '2018-01-31', '', 'KOMPUTER', '', ''),
('891f029d9100d0d12b436cd7f942c145', 'http://www.tabloidpcplus.com/feed/', NULL, 'Helios Gandeng Microsoft Luncurkan Layanan Cloud', '2018-01-31', 'https://www.pcplus.co.id/2018/01/baru-terbit/helios-gandeng-microsoft-luncurkan-layanan-cloud/', '', NULL, '2018-01-31', '', 'KOMPUTER', '', ''),
('891f029d9100d0d12b436cd7f942c145', 'http://www.tabloidpcplus.com/feed/', NULL, 'Iflix Tayangkan Serial Stand-up Komedi, Oi! Jaga Lambe', '2018-01-31', 'https://www.pcplus.co.id/2018/01/baru-terbit/iflix-tayangkan-serial-stand-up-komedi-oi-jaga-lambe/', '', NULL, '2018-01-31', '', 'KOMPUTER', '', ''),
('891f029d9100d0d12b436cd7f942c145', 'http://www.tabloidpcplus.com/feed/', NULL, 'Corsair Selenggarakan Kompetisi Case Mod Berhadiah Terbesar di Indonesia', '2018-01-31', 'https://www.pcplus.co.id/2018/01/event/corsair-selenggarakan-kompetisi-case-mod-berhadiah-terbesar-di-indonesia/', '', NULL, '2018-01-31', '', 'KOMPUTER', '', ''),
('891f029d9100d0d12b436cd7f942c145', 'http://www.tabloidpcplus.com/feed/', NULL, 'Moto C Plus Kini Tersedia Secara Eksklusif di JD.ID', '2018-01-31', 'https://www.pcplus.co.id/2018/01/berita-teknologi/moto-c-plus-kini-tersedia-secara-eksklusif-di-jd-id/', '', NULL, '2018-01-31', '', 'KOMPUTER', '', ''),
('891f029d9100d0d12b436cd7f942c145', 'http://www.tabloidpcplus.com/feed/', NULL, 'Ingin Cetak dan Copy dari Smartphone? Canon PIXMA TS307 Tawarkan Solusi Mudah', '2018-01-31', 'https://www.pcplus.co.id/2018/01/berita-teknologi/ingin-cetak-dan-copy-dari-smartphone-canon-pixma-ts307-tawarkan-solusi-mudah/', '', NULL, '2018-01-31', '', 'KOMPUTER', '', ''),
('891f029d9100d0d12b436cd7f942c145', 'http://www.tabloidpcplus.com/feed/', NULL, 'Acer Predator Triton 700 Hadir di Indonesia Dengan Harga 50 Jutaan', '2018-01-31', 'https://www.pcplus.co.id/2018/01/berita-teknologi/acer-predator-triton-700-hadir-di-indonesia-dengan-harga-50-jutaan/', '', NULL, '2018-01-31', '', 'KOMPUTER', '', ''),
('891f029d9100d0d12b436cd7f942c145', 'http://www.tabloidpcplus.com/feed/', NULL, 'Sistem Operasi yang Jarang Diketahui Orang', '2018-01-31', 'https://www.pcplus.co.id/2018/01/fitur/sistem-operasi-yang-jarang-diketahui-orang/', '', NULL, '2018-01-31', '', 'KOMPUTER', '', ''),
('891f029d9100d0d12b436cd7f942c145', 'http://www.tabloidpcplus.com/feed/', NULL, 'Vivo Perkenalkan X20 Plus UD, Smartphone Pertama dengan Pemindai Sidik Jari di Bawah Layar', '2018-01-30', 'https://www.pcplus.co.id/2018/01/berita-teknologi/vivo-perkenalkan-x20-plus-ud-smartphone-pertama-dengan-pemindai-sidik-jari-di-bawah-layar/', '', NULL, '2018-01-30', '', 'KOMPUTER', '', ''),
('891f029d9100d0d12b436cd7f942c145', 'http://www.tabloidpcplus.com/feed/', NULL, 'ShopBack Optimis Pertumbuhan di Tahun Ketiga Akan Makin Meningkat', '2018-01-30', 'https://www.pcplus.co.id/2018/01/baru-terbit/shopback-optimis-pertumbuhan-di-tahun-ketiga-akan-makin-meningkat/', '', NULL, '2018-01-30', '', 'KOMPUTER', '', ''),
('891f029d9100d0d12b436cd7f942c145', 'http://www.tabloidpcplus.com/feed/', NULL, 'Bose Luncurkan Speaker Nirkabel SoundLink Revolve dan Revolve+', '2018-01-29', 'https://www.pcplus.co.id/2018/01/berita-teknologi/bose-luncurkan-speaker-nirkabel-soundlink-revolve-dan-revolve/', '', NULL, '2018-01-29', '', 'KOMPUTER', '', ''),
('891f029d9100d0d12b436cd7f942c145', 'http://www.tabloidpcplus.com/feed/', NULL, 'NetApp Gandeng Binus International Hadirkan Mata Kuliah Cloud', '2018-01-29', 'https://www.pcplus.co.id/2018/01/berita-teknologi/netapp-gandeng-binus-international-hadirkan-mata-kuliah-cloud/', '', NULL, '2018-01-29', '', 'KOMPUTER', '', ''),
('891f029d9100d0d12b436cd7f942c145', 'http://www.tabloidpcplus.com/feed/', NULL, 'ViewSonic Luncurkan XG3240C, Monitor Gaming dengan Desain Curved dan Dukungan FreeSync', '2018-01-29', 'https://www.pcplus.co.id/2018/01/berita-teknologi/viewsonic-luncurkan-xg3240c-monitor-gaming-dengan-desain-curved-dan-dukungan-freesync/', '', NULL, '2018-01-29', '', 'KOMPUTER', '', ''),
('891f029d9100d0d12b436cd7f942c145', 'http://www.tabloidpcplus.com/feed/', NULL, 'TP-Link Luncurkan Rangkaian Produk Terbaru untuk 2018', '2018-01-29', 'https://www.pcplus.co.id/2018/01/berita-teknologi/tp-link-luncurkan-rangkaian-produk-terbaru-untuk-2018/', '', NULL, '2018-01-29', '', 'KOMPUTER', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'DPPPA Sulsel Tekankan Pentinya Daerah Tingkatkan Layanan Utama', '2018-03-21', 'http://news.rakyatku.com/read/93104/2018/03/21/dpppa-sulsel-tekankan-pentinya-daerah-tingkatkan-layanan-utama', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'Mantan Wawali Parepare Pegang Bukti Reservasi Hotel Istri Mudanya dengan Selingkuhan', '2018-03-21', 'http://news.rakyatku.com/read/93105/2018/03/21/mantan-wawali-parepare-pegang-bukti-reservasi-hotel-istri-mudanya-dengan-selingkuhan', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'Pengembang Rumah Subsidi Dapat Bantuan Bangun Sarana dan Prasarana', '2018-03-21', 'http://properti.rakyatku.com/read/93103/2018/03/21/pengembang-rumah-subsidi-dapat-bantuan-bangun-sarana-dan-prasarana', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'VIDEO: Messi Tiba di Markas Manchester City', '2018-03-21', 'http://bola.rakyatku.com/read/93102/2018/03/21/video-messi-tiba-di-markas-manchester-city', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'KPK Bertemu Kepala OPD dan Anggota Dewan Bantaeng, Rapatnya Tertutup', '2018-03-21', 'http://news.rakyatku.com/read/93101/2018/03/21/kpk-bertemu-kepala-opd-dan-anggota-dewan-bantaeng-rapatnya-tertutup', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'Menelepon Sambil Mengecas, Gadis India Tewas saat Ponselnya Meledak', '2018-03-21', 'http://news.rakyatku.com/read/93100/2018/03/21/menelepon-sambil-mengecas-gadis-india-tewas-saat-ponselnya-meledak', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'Kekayaan Bos Facebook Mark Zuckerberg Anjlok Dalam 2 Hari', '2018-03-21', 'http://tekno.rakyatku.com/read/93099/2018/03/21/kekayaan-bos-facebook-mark-zuckerberg-anjlok-dalam-2-hari', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'Putusan Pengadilan Akhiri Misteri Dugaan Transgender Lucinta Luna?', '2018-03-21', 'http://hiburan.rakyatku.com/read/93098/2018/03/21/putusan-pengadilan-akhiri-misteri-dugaan-transgender-lucinta-luna-', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'Lewat Micin Generasi, FABT Kenalkan Budaya Lokal ke Anak-anak', '2018-03-21', 'http://news.rakyatku.com/read/93097/2018/03/21/lewat-micin-generasi-fabt-kenalkan-budaya-lokal-ke-anak-anak', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'Lie Detector Tak Berbunyi Saat Stormy Sebut Dirinya Bercinta dengan Trump Tanpa Kondom', '2018-03-21', 'http://news.rakyatku.com/read/93096/2018/03/21/lie-detector-tak-berbunyi-saat-stormy-sebut-dirinya-bercinta-dengan-trump-tanpa-kondom', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'Trump Akhirnya Telepon Putin, Ucapkan Selamat', '2018-03-21', 'http://news.rakyatku.com/read/93095/2018/03/21/trump-akhirnya-telepon-putin-ucapkan-selamat', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'Google News Initiative, Produk Baru Senilai Rp300 Juta Buat Lawan Hoax', '2018-03-21', 'http://tekno.rakyatku.com/read/93093/2018/03/21/google-news-initiative-produk-baru-senilai-rp300-juta-buat-lawan-hoax', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'Ancam Korban Pakai Pisau Dapur, Tiga Pelaku Curas Diciduk Polisi', '2018-03-21', 'http://news.rakyatku.com/read/93094/2018/03/21/ancam-korban-pakai-pisau-dapur-tiga-pelaku-curas-diciduk-polisi', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'Di Gugatan, Mantan Wawali Parepare Sebut Istri Mudanya Sering Berdua dengan Pria Lain', '2018-03-21', 'http://news.rakyatku.com/read/93092/2018/03/21/di-gugatan-mantan-wawali-parepare-sebut-istri-mudanya-sering-berdua-dengan-pria-lain', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'Mahasiswa FKM UMI Siapkan Diri Sebelum Turun ke Posyandu', '2018-03-21', 'http://edukasi.rakyatku.com/read/93091/2018/03/21/mahasiswa-fkm-umi-siapkan-diri-sebelum-turun-ke-posyandu', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'Ikrar Warga Kecamatan Tempe Antarkan PAMMASE Pimpin Wajo', '2018-03-21', 'http://pilkada.rakyatku.com/read/93089/2018/03/21/ikrar-warga-kecamatan-tempe-antarkan-pammase-pimpin-wajo', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'Ini Penampakan Bench Pemain di Stadion Andi Matalatta Mattoanging', '2018-03-21', 'http://bola.rakyatku.com/read/93090/2018/03/21/ini-penampakan-bench-pemain-di-stadion-andi-matalatta-mattoanging', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'Ners FKM UMI Siapkan Alumninya Lulus Uji Kompetensi', '2018-03-21', 'http://edukasi.rakyatku.com/read/93088/2018/03/21/ners-fkm-umi-siapkan-alumninya-lulus-uji-kompetensi', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'Dekan FKM UMI Tak Mau Hanya Ciptakan Ilmuwan, Tapi Juga Pemimpin', '2018-03-21', 'http://edukasi.rakyatku.com/read/93086/2018/03/21/dekan-fkm-umi-tak-mau-hanya-ciptakan-ilmuwan-tapi-juga-pemimpin', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'Hari Ini, Sidang Terakhir Kasus Cerai Ahok-Veronica', '2018-03-21', 'http://news.rakyatku.com/read/93087/2018/03/21/hari-ini-sidang-terakhir-kasus-cerai-ahok-veronica', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'Wanita Inggris Ini Sempat Malu Punya Ibu Orang Indonesia', '2018-03-21', 'http://news.rakyatku.com/read/93085/2018/03/21/wanita-inggris-ini-sempat-malu-punya-ibu-orang-indonesia', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'Gara-gara Brewok, Pernikahan Pasangan Ini Terancam Gagal', '2018-03-21', 'http://news.rakyatku.com/read/93084/2018/03/21/gara-gara-brewok-pernikahan-pasangan-ini-terancam-gagal', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'Diminta Jadi Capres 2019, Begini Jawaban AHY', '2018-03-21', 'http://news.rakyatku.com/read/93083/2018/03/21/diminta-jadi-capres-2019-begini-jawaban-ahy', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'Lima Kali Cabuli Anak Tiri, ZU Dibekuk Warga', '2018-03-21', 'http://news.rakyatku.com/read/93082/2018/03/21/lima-kali-cabuli-anak-tiri-zu-dibekuk-warga', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'Sanksi Menanti ASN Jeneponto yang Terlibat Politik Praktis', '2018-03-21', 'http://pilkada.rakyatku.com/read/93081/2018/03/21/sanksi-menanti-asn-jeneponto-yang-terlibat-politik-praktis', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'Telanjangi Dua Sejoli, Ketua RT Dituntut Bui 7 Tahun', '2018-03-21', 'http://news.rakyatku.com/read/93080/2018/03/21/telanjangi-dua-sejoli-ketua-rt-dituntut-bui-7-tahun', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'Jika Tak Hadiri Sidang First Travel, Syahrini Terancam Pidana', '2018-03-21', 'http://hiburan.rakyatku.com/read/93029/2018/03/21/jika-tak-hadiri-sidang-first-travel-syahrini-terancam-pidana', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'Akhirnya Ada Jalur Khusus Motor di Google Maps', '2018-03-21', 'http://tekno.rakyatku.com/read/93015/2018/03/21/akhirnya-ada-jalur-khusus-motor-di-google-maps', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'Bulan Depan, 676.000 Garam Impor Masuk Indonesia', '2018-03-21', 'http://bisnis.rakyatku.com/read/93026/2018/03/21/bulan-depan-676-000-garam-impor-masuk-indonesia', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, '5 Aturan Ketat Bila Jadi Istri Kim Jong-Un', '2018-03-20', 'http://news.rakyatku.com/read/93041/2018/03/21/5-aturan-ketat-bila-jadi-istri-kim-jong-un', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'Psikolog Soroti Perekam Bocah Nonton Video Porno di Hp', '2018-03-20', 'http://news.rakyatku.com/read/93025/2018/03/21/psikolog-soroti-perekam-bocah-nonton-video-porno-di-hp', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'Marion Jola Pilih Bergabung Manajemen Ayu Ting Ting', '2018-03-20', 'http://hiburan.rakyatku.com/read/93057/2018/03/21/marion-jola-pilih-bergabung-manajemen-ayu-ting-ting', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'Boneka Ini Terkenal Karena Aura Mistisnya, Jangan Lihat Matanya', '2018-03-20', 'http://news.rakyatku.com/read/93037/2018/03/21/boneka-ini-terkenal-karena-aura-mistisnya-jangan-lihat-matanya', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, '4 Jenis Bentuk Payudara Wanita, Ini Perbedaannya', '2018-03-20', 'http://health.rakyatku.com/read/93024/2018/03/21/4-jenis-bentuk-payudara-wanita-ini-perbedaannya', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, '8 Kebiasaan Ini Berdampak Buruk bagi Penis', '2018-03-20', 'http://health.rakyatku.com/read/93077/2018/03/21/8-kebiasaan-ini-berdampak-buruk-bagi-penis', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'Besok Ada Fenomena Alam Langka, Tak Ada Bayangan Sama Sekali', '2018-03-20', 'http://news.rakyatku.com/read/93033/2018/03/21/besok-ada-fenomena-alam-langka-tak-ada-bayangan-sama-sekali', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'Bir Bisa Tingkatkan Performa Seks di Ranjang', '2018-03-20', 'http://health.rakyatku.com/read/93076/2018/03/21/bir-bisa-tingkatkan-performa-seks-di-ranjang', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'Ducati Belum Mau Perpanjang Kontrak Dovizioso dan Lorenzo', '2018-03-20', 'http://sports.rakyatku.com/read/93030/2018/03/21/ducati-belum-mau-perpanjang-kontrak-dovizioso-dan-lorenzo', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'Sahabuddin Blusukan, Serap Aspirasi Masyarakat di Tiga Desa', '2018-03-20', 'http://pilkada.rakyatku.com/read/93079/2018/03/21/sahabuddin-blusukan-serap-aspirasi-masyarakat-di-tiga-desa', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'Tabrakan Motor di Sidrap, Satu Tewas', '2018-03-20', 'http://news.rakyatku.com/read/93078/2018/03/21/tabrakan-motor-di-sidrap-satu-tewas', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'Segudang Manfaat Berpelukan Saat Tidur Bersama Pasangan', '2018-03-20', 'http://health.rakyatku.com/read/93014/2018/03/21/segudang-manfaat-berpelukan-saat-tidur-bersama-pasangan', '', NULL, '2018-03-20', '', 'UMUM', '', '');
INSERT INTO `rssnews` (`item_id`, `feed_url`, `item_content`, `item_title`, `item_date`, `item_url`, `item_status`, `item_category_id`, `fetch_date`, `img_url`, `kategori`, `thumbnail`, `prety_url`) VALUES
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, '34,2 Juta Nomor Prabayar Diblokir Operator', '2018-03-20', 'http://tekno.rakyatku.com/read/93018/2018/03/21/34-2-juta-nomor-prabayar-diblokir-operator', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'Saat Asyik Berenang, Wanita Ini Melahirkan di Laut', '2018-03-20', 'http://news.rakyatku.com/read/93022/2018/03/21/saat-asyik-berenang-wanita-ini-melahirkan-di-laut', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'Facebook Luncurkan Aplikasi Wifi, Ini Manfaatnya', '2018-03-20', 'http://tekno.rakyatku.com/read/93008/2018/03/21/facebook-luncurkan-aplikasi-wifi-ini-manfaatnya', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'Ketua PBB Sidrap Ajak Warga Bulucenrana Menangkan FATMA', '2018-03-20', 'http://pilkada.rakyatku.com/read/93075/2018/03/21/ketua-pbb-sidrap-ajak-warga-bulucenrana-menangkan-fatma', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'Hanya 17 TV Kabel di Soppeng yang Kantongi Izin', '2018-03-20', 'http://news.rakyatku.com/read/93074/2018/03/21/hanya-17-tv-kabel-di-soppeng-yang-kantongi-izin', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'Lulusan Terbaik Unhas Diraih Mantan Putri Muslimah Indonesia 2016', '2018-03-20', 'http://edukasi.rakyatku.com/read/93073/2018/03/20/lulusan-terbaik-unhas-diraih-mantan-putri-muslimah-indonesia-2016', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'Pemilik Pistol di Sidrap Terancam Hukuman Mati', '2018-03-20', 'http://news.rakyatku.com/read/93072/2018/03/20/pemilik-pistol-di-sidrap-terancam-hukuman-mati', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'Peran Pemuda di Mata Deng Ical', '2018-03-20', 'http://news.rakyatku.com/read/93071/2018/03/20/peran-pemuda-di-mata-deng-ical', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'Selfi Dapat Dukungan dari SYL di Liga Dangdut Indonesia', '2018-03-20', 'http://news.rakyatku.com/read/93070/2018/03/20/selfi-dapat-dukungan-dari-syl-di-liga-dangdut-indonesia', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, '20 Dosen FKIP Unismuh Bakal Presentasikan Makalahnya di UMJ', '2018-03-20', 'http://edukasi.rakyatku.com/read/93069/2018/03/20/20-dosen-fkip-unismuh-bakal-presentasikan-makalahnya-di-umj', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'Jelang UNBK, Plt Kadisdik Makassar Kumpulkan Seluruh UPTDÂ ', '2018-03-20', 'http://news.rakyatku.com/read/93068/2018/03/20/jelang-unbk-plt-kadisdik-makassar-kumpulkan-seluruh-uptd-', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'Ini Alasan Pelaku Bunuh Rentenir di Bulukumba', '2018-03-20', 'http://news.rakyatku.com/read/93067/2018/03/20/ini-alasan-pelaku-bunuh-rentenir-di-bulukumba', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'Dugaan Korupsi Kadis Kominfo Jeneponto Rugikan Negara Rp377 Juta', '2018-03-20', 'http://news.rakyatku.com/read/93066/2018/03/20/dugaan-korupsi-kadis-kominfo-jeneponto-rugikan-negara-rp377-juta', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'Pelaku Penikam Teman Sekolah di Pinrang Terancam 5 Tahun Penjara', '2018-03-20', 'http://news.rakyatku.com/read/93065/2018/03/20/pelaku-penikam-teman-sekolah-di-pinrang-terancam-5-tahun-penjara', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'SYL Targetkan Angka Kemiskinan Sulsel Turun 2 Persen', '2018-03-20', 'http://news.rakyatku.com/read/93064/2018/03/20/syl-targetkan-angka-kemiskinan-sulsel-turun-2-persen', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'Bila Lelang Jabatan Terbukti Politis, ARA: Kami Tak Akan Tinggal Diam', '2018-03-20', 'http://news.rakyatku.com/read/93063/2018/03/20/bila-lelang-jabatan-terbukti-politis-ara-kami-tak-akan-tinggal-diam', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'Diberi Nama Syahrul Ramadhan, Masjid Mungil Ini Jadi Favorit di Kelara Jeneponto', '2018-03-20', 'http://news.rakyatku.com/read/93062/2018/03/20/diberi-nama-syahrul-ramadhan-masjid-mungil-ini-jadi-favorit-di-kelara-jeneponto', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'Kejati Sulsel Tahan Kadis Kominfo Jeneponto', '2018-03-20', 'http://news.rakyatku.com/read/93061/2018/03/20/kejati-sulsel-tahan-kadis-kominfo-jeneponto', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'Lumpuh Usai Jatuh, Gadis Cantik di Pangkep Ini Butuh Uluran Tangan', '2018-03-20', 'http://news.rakyatku.com/read/93060/2018/03/20/lumpuh-usai-jatuh-gadis-cantik-di-pangkep-ini-butuh-uluran-tangan', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'Masjid Hubbuddin, Rumah Ibadah yang Mirip Kandang di Tengah Kota Makassar', '2018-03-20', 'http://news.rakyatku.com/read/93059/2018/03/20/masjid-hubbuddin-rumah-ibadah-yang-mirip-kandang-di-tengah-kota-makassar', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'Dugaan Pencabulan di Takalar, Pelaku Masukkan Jari Lalu Kelamin', '2018-03-20', 'http://news.rakyatku.com/read/93058/2018/03/20/dugaan-pencabulan-di-takalar-pelaku-masukkan-jari-lalu-kelamin', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'Sakit Hati, Alasan WA Tikam Leher Teman Sekolah di Pinrang', '2018-03-20', 'http://news.rakyatku.com/read/93056/2018/03/20/sakit-hati-alasan-wa-tikam-leher-teman-sekolah-di-pinrang', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'Pengguna Sabu di Sidrap Dapatkan Pistol Revolver dari Poso', '2018-03-20', 'http://news.rakyatku.com/read/93055/2018/03/20/pengguna-sabu-di-sidrap-dapatkan-pistol-revolver-dari-poso', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'Tokoh Masyarakat Manggala Tolak Politik Uang', '2018-03-20', 'http://pilkada.rakyatku.com/read/93053/2018/03/20/tokoh-masyarakat-manggala-tolak-politik-uang', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, '91,80 Persen Hoax dan SARA Berasal dari Informasi Sosial Politik', '2018-03-20', 'http://news.rakyatku.com/read/93052/2018/03/20/91-80-persen-hoax-dan-sara-berasal-dari-informasi-sosial-politik', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'Kadis Sosial Sulsel Lepas Syahrul Yasin Limpo dengan Puisi yang Mengharukan', '2018-03-20', 'http://news.rakyatku.com/read/93051/2018/03/20/kadis-sosial-sulsel-lepas-syahrul-yasin-limpo-dengan-puisi-yang-mengharukan', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'KPU Jeneponto Gelar Rakor Pemutakhiran Badan Adhoc Pemilu 2019', '2018-03-20', 'http://news.rakyatku.com/read/93050/2018/03/20/kpu-jeneponto-gelar-rakor-pemutakhiran-badan-adhoc-pemilu-2019', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'Pasangan Takbir Mulai Buka Stiker Branding Mobil', '2018-03-20', 'http://pilkada.rakyatku.com/read/93049/2018/03/20/pasangan-takbir-mulai-buka-stiker-branding-mobil', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'Bruce Djite Tinggalkan Makassar, Ada Apa?', '2018-03-20', 'http://bola.rakyatku.com/read/93048/2018/03/20/bruce-djite-tinggalkan-makassar-ada-apa-', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'Tujuh Titik Jalan Longsor di Barru Segera Diperbaiki', '2018-03-20', 'http://news.rakyatku.com/read/93047/2018/03/20/tujuh-titik-jalan-longsor-di-barru-segera-diperbaiki', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'Ditangkap Kodam, Oknum Tentara Gadungan Dilepas Polisi dengan Alasan Begini', '2018-03-20', 'http://news.rakyatku.com/read/93045/2018/03/20/ditangkap-kodam-oknum-tentara-gadungan-dilepas-polisi-dengan-alasan-begini', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'Ketakutan Robert Soal Kemungkinan Ferdinand ke PSM', '2018-03-20', 'http://bola.rakyatku.com/read/93044/2018/03/20/ketakutan-robert-soal-kemungkinan-ferdinand-ke-psm', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'Ini Calon Komisioner KPU yang Lolos Seleksi Administrasi Zona I', '2018-03-20', 'http://news.rakyatku.com/read/93043/2018/03/20/ini-calon-komisioner-kpu-yang-lolos-seleksi-administrasi-zona-i', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'Kewenangan Bawaslu Bertambah, Ketua KPU Soppeng Ikut Melamar', '2018-03-20', 'http://news.rakyatku.com/read/93042/2018/03/20/kewenangan-bawaslu-bertambah-ketua-kpu-soppeng-ikut-melamar', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'Dispora Sulsel Tegaskan Tak Putus Kontrak dengan Kontraktor Stadion Barombong', '2018-03-20', 'http://news.rakyatku.com/read/93054/2018/03/20/dispora-sulsel-tegaskan-tak-putus-kontrak-dengan-kontraktor-stadion-barombong', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'Diskop dan UKM Sulsel Ikuti Penguatan Kapasitas Kementerian', '2018-03-20', 'http://news.rakyatku.com/read/93040/2018/03/20/diskop-dan-ukm-sulsel-ikuti-penguatan-kapasitas-kementerian', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'Amankan Tiga Pemuda, Polres Luwu Kejar Pengedar Sabu-sabu', '2018-03-20', 'http://news.rakyatku.com/read/93038/2018/03/20/amankan-tiga-pemuda-polres-luwu-kejar-pengedar-sabu-sabu', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'Produk Khas Sulsel Hadir Lengkap di SMESCO Indonesia', '2018-03-20', 'http://travel.rakyatku.com/read/93039/2018/03/20/produk-khas-sulsel-hadir-lengkap-di-smesco-indonesia', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'Gaji Perawat di Bawah UMP, DPRD Panggil Kepala RS se Sulsel', '2018-03-20', 'http://news.rakyatku.com/read/93036/2018/03/20/gaji-perawat-di-bawah-ump-dprd-panggil-kepala-rs-se-sulsel', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'PSG Relakan Neymar Jr ke Real Madrid', '2018-03-20', 'http://bola.rakyatku.com/read/93035/2018/03/20/psg-relakan-neymar-jr-ke-real-madrid', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'Lebih Aman Mana, Minum Air Mineral Kemasan atau Rebusan?', '2018-03-20', 'http://health.rakyatku.com/read/93034/2018/03/20/lebih-aman-mana-minum-air-mineral-kemasan-atau-rebusan-', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'Asisten I Ingatkan PPK di Sinjai Hati-hati Gunakan Anggaran', '2018-03-20', 'http://pilkada.rakyatku.com/read/93031/2018/03/20/asisten-i-ingatkan-ppk-di-sinjai-hati-hati-gunakan-anggaran', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'Robert-Appi Sudah Oke, Kini Bergantung Ferdinand', '2018-03-20', 'http://bola.rakyatku.com/read/93032/2018/03/20/robert-appi-sudah-oke-kini-bergantung-ferdinand', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'Deng Ical, Rudianto, dan Herman Ajak Pemuda Berani Berwirausaha', '2018-03-20', 'http://news.rakyatku.com/read/93028/2018/03/20/deng-ical-rudianto-dan-herman-ajak-pemuda-berani-berwirausaha', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'Baru Enam Hari Menikah, Suami Ini Rela Nikahkan Istri dengan Pria Selingkuhannya', '2018-03-20', 'http://news.rakyatku.com/read/93027/2018/03/20/baru-enam-hari-menikah-suami-ini-rela-nikahkan-istri-dengan-pria-selingkuhannya', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'Atlet Cantik Parepare Wakili Indonesia di Asian Games', '2018-03-20', 'http://sports.rakyatku.com/read/93023/2018/03/20/atlet-cantik-parepare-wakili-indonesia-di-asian-games', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'SM Akhirnya Menangkan Kasus Kontrak Tao eks EXO', '2018-03-20', 'http://hiburan.rakyatku.com/read/93021/2018/03/20/sm-akhirnya-menangkan-kasus-kontrak-tao-eks-exo', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'Menghitung Gelimang Uang Kevin/Marcus Usai Juara All England', '2018-03-20', 'http://sports.rakyatku.com/read/93020/2018/03/20/menghitung-gelimang-uang-kevin-marcus-usai-juara-all-england', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'Real Madrid Obral Bale, MU-Spurs Siaga', '2018-03-20', 'http://bola.rakyatku.com/read/93019/2018/03/20/real-madrid-obral-bale-mu-spurs-siaga', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'Legislator Appi-Cicu Diadukan ke Panwaslu dan BK DPRD Makassar', '2018-03-20', 'http://pilkada.rakyatku.com/read/93016/2018/03/20/legislator-appi-cicu-diadukan-ke-panwaslu-dan-bk-dprd-makassar', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'Perkuat Tenaga Pengajar, UT Majene Gelar Pelatihan Tutor Pendas', '2018-03-20', 'http://edukasi.rakyatku.com/read/93017/2018/03/20/perkuat-tenaga-pengajar-ut-majene-gelar-pelatihan-tutor-pendas', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'Buka Lahan Mina Padi di Gowa, Thita: Pendapatan Petani Naik Tiga Kali Lipat', '2018-03-20', 'http://news.rakyatku.com/read/93013/2018/03/20/buka-lahan-mina-padi-di-gowa-thita-pendapatan-petani-naik-tiga-kali-lipat', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'UT Majene Gelar Pelatihan Tutor Pendas', '2018-03-20', 'http://foto.rakyatku.com/read/93012/2018/03/20/ut-majene-gelar-pelatihan-tutor-pendas', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'NA, Danny, dan Pangdam Kompak Hadiri Simakrama Nyepi', '2018-03-20', 'http://news.rakyatku.com/read/93011/2018/03/20/na-danny-dan-pangdam-kompak-hadiri-simakrama-nyepi', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'DPKP2 Sulsel Bangun Bank Sampah di 20 SMA', '2018-03-20', 'http://news.rakyatku.com/read/93010/2018/03/20/dpkp2-sulsel-bangun-bank-sampah-di-20-sma', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'Mayweather Jr Jajal MMA, Buka Peluang Tantang Â McGregor', '2018-03-20', 'http://sports.rakyatku.com/read/93009/2018/03/20/mayweather-jr-jajal-mma-buka-peluang-tantang-mcgregor', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'Baperlitbangda Gelar Forum SKPD Gabungan, Bupati Lutim Berpesan Begini', '2018-03-20', 'http://news.rakyatku.com/read/93007/2018/03/20/baperlitbangda-gelar-forum-skpd-gabungan-bupati-lutim-berpesan-begini', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'Besok, Datsun Cross Diluncurkan di Makassar', '2018-03-20', 'http://otomotif.rakyatku.com/read/93006/2018/03/20/besok-datsun-cross-diluncurkan-di-makassar', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('ba12a78cb7d93311cdf2a563d3780094', 'http://rakyatku.com/feed', NULL, 'Paul Pogba Jadi Dragon Ball di Timnas Prancis', '2018-03-20', 'http://bola.rakyatku.com/read/93005/2018/03/20/paul-pogba-jadi-dragon-ball-di-timnas-prancis', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('bbb19747343024608ccd0285095c1be0', 'http://askthephotographer.com/feed/', NULL, 'Fotografi rumah : cahaya ala professional', '2017-10-22', 'http://askthephotographer.com/2017/10/fotografi-rumah-cahaya-ala-professional/', '', NULL, '2017-10-22', '', 'GAYA HIDUP', '', ''),
('bbb19747343024608ccd0285095c1be0', 'http://askthephotographer.com/feed/', NULL, 'Cara mendapatkan gambar rumah yang cantik', '2017-10-13', 'http://askthephotographer.com/2017/10/cara-mendapatkan-gambar-rumah-yang-cantik/', '', NULL, '2017-10-13', '', 'GAYA HIDUP', '', ''),
('bbb19747343024608ccd0285095c1be0', 'http://askthephotographer.com/feed/', NULL, 'Mengenal ansel adams', '2017-08-27', 'http://askthephotographer.com/2017/08/mengenal-ansel-adams/', '', NULL, '2017-08-27', '', 'GAYA HIDUP', '', ''),
('bbb19747343024608ccd0285095c1be0', 'http://askthephotographer.com/feed/', NULL, 'Mengapa gambar hitam putih nampak begitu indah', '2017-08-23', 'http://askthephotographer.com/2017/08/mengapa-gambar-hitam-putih-nampak-begitu-indah/', '', NULL, '2017-08-23', '', 'GAYA HIDUP', '', ''),
('bbb19747343024608ccd0285095c1be0', 'http://askthephotographer.com/feed/', NULL, 'Fitur juara kamera samsung galaxy S8 dan S8 Plus', '2017-08-20', 'http://askthephotographer.com/2017/08/fitur-juara-kamera-samsung-galaxy-s8-dan-s8-plus/', '', NULL, '2017-08-20', '', 'GAYA HIDUP', '', ''),
('bbb19747343024608ccd0285095c1be0', 'http://askthephotographer.com/feed/', NULL, '6 jurus estetis fotografi hitam putih', '2017-08-13', 'http://askthephotographer.com/2017/08/6-jurus-estetis-fotografi-hitam-putih/', '', NULL, '2017-08-13', '', 'GAYA HIDUP', '', ''),
('bbb19747343024608ccd0285095c1be0', 'http://askthephotographer.com/feed/', NULL, '5 Kesalahan penggunaan lensa wide angle', '2017-07-16', 'http://askthephotographer.com/2017/07/5-kesalahan-penggunaan-lensa-wide-angle/', '', NULL, '2017-07-16', '', 'GAYA HIDUP', '', ''),
('bbb19747343024608ccd0285095c1be0', 'http://askthephotographer.com/feed/', NULL, 'Kunci utama dalam membeli kamera Digital SLR', '2017-07-02', 'http://askthephotographer.com/2017/07/kunci-utama-dalam-membeli-kamera-digital-slr/', '', NULL, '2017-07-02', '', 'GAYA HIDUP', '', ''),
('bbb19747343024608ccd0285095c1be0', 'http://askthephotographer.com/feed/', NULL, 'Kiat Laris manis jual gambar stock photo', '2017-07-02', 'http://askthephotographer.com/2017/07/kiat-laris-manis-jual-gambar-stock-photo/', '', NULL, '2017-07-02', '', 'GAYA HIDUP', '', ''),
('bbb19747343024608ccd0285095c1be0', 'http://askthephotographer.com/feed/', NULL, '10 hal yang wajib diketahui saat memulai fotografi', '2017-06-27', 'http://askthephotographer.com/2017/06/10-hal-yang-wajib-diketahui-saat-memulai-fotografi/', '', NULL, '2017-06-27', '', 'GAYA HIDUP', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'Golkar tak Sepakat Parpol Baru Dibatasi Kampanyekan Capres', '2018-03-21', 'http://news.metrotvnews.com/politik/aNrVlwzN-golkar-tak-sepakat-parpol-baru-dibatasi-kampanyekan-capres', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'Aramco Sepakat Investasi USD7 Miliar di Proyek Petronas', '2018-03-21', 'http://ekonomi.metrotvnews.com/energi/JKRl6y8b-aramco-sepakat-investasi-usd7-miliar-di-proyek-petronas', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'Bus Terjun ke Jurang, 19 Warga Filipina Tewas', '2018-03-21', 'http://internasional.metrotvnews.com/asia/VNx3jQaK-bus-terjun-ke-jurang-19-warga-filipina-tewas', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'Skype Sekarang Terhubung Langsung dengan TripAdvisor', '2018-03-21', 'http://teknologi.metrotvnews.com/news-teknologi/9K5RZj3N-skype-sekarang-terhubung-langsung-dengan-tripadvisor', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'Karya Musikal Lazarus Milik David Bowie Diangkat ke Layar Lebar', '2018-03-21', 'http://hiburan.metrotvnews.com/musik/4KZOyEJN-karya-musikal-lazarus-milik-david-bowie-diangkat-ke-layar-lebar', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'Kendaraan Milik Bupati Abdul Latif Dititipkan di Rupbasan', '2018-03-21', 'http://foto.metrotvnews.com/view/2018/03/21/848343/kendaraan-milik-bupati-abdul-latif-dititipkan-di-rupbasan', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'BNP2TKI Klaim Sudah Maksimal Melindungi Zaini', '2018-03-21', 'http://news.metrotvnews.com/peristiwa/yKXV08Zb-bnp2tki-klaim-sudah-maksimal-melindungi-zaini', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'IHSG Dibuka Menguat 0,27%', '2018-03-21', 'http://video.metrotvnews.com//play/2018/03/21/848341/ihsg-dibuka-menguat-0-27', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'Studi: Otak Lebih Mudah Menyerap Kosakata Baru saat Tidur', '2018-03-21', 'http://rona.metrotvnews.com/kesehatan/xkEGOrDN-studi-otak-lebih-mudah-menyerap-kosakata-baru-saat-tidur', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'Ini Kelebihan Kartu ATM dengan Teknologi Chip', '2018-03-21', 'http://video.metrotvnews.com//play/2018/03/21/848339/ini-kelebihan-kartu-atm-dengan-teknologi-chip', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'Membaca Potensi Penyelewengan APBDes', '2018-03-21', 'http://jatim.metrotvnews.com/peristiwa/ybJMnemN-membaca-potensi-penyelewengan-apbdes', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'Gerak Emas Antam Melemah ke Rp649 Ribu/Gram', '2018-03-21', 'http://ekonomi.metrotvnews.com/mikro/1bV476XK-gerak-emas-antam-melemah-ke-rp649-ribu-gram', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'Sejumlah Pejabat Polda Metro Resmi Dirotasi', '2018-03-21', 'http://news.metrotvnews.com/hukum/8KyvVGzN-sejumlah-pejabat-polda-metro-resmi-dirotasi', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'Perempuan, Kunci Keuangan Keluarga', '2018-03-21', 'http://video.metrotvnews.com/play/2018/03/21/848336/perempuan-kunci-keuangan-keluarga', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, '1,49 juta Penduduk Jember Telah Terdaftar JKN-KIS', '2018-03-21', 'http://jatim.metrotvnews.com/peristiwa/8N08yewN-1-49-juta-penduduk-jember-telah-terdaftar-jkn-kis', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'Terkena Sindrom Fowler, Mantan Model Tak Bisa Buang Air Kecil', '2018-03-21', 'http://rona.metrotvnews.com/kesehatan/GKdQrgpN-terkena-sindrom-fowler-mantan-model-tak-bisa-buang-air-kecil', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'Masyarakat Diminta Waspada Bertransaksi di ATM', '2018-03-21', 'http://news.metrotvnews.com/hukum/MkMMgjVk-masyarakat-diminta-waspada-bertransaksi-di-atm', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'Lippo Group Teken Kerja Sama dengan Sembilan Perusahaan Global', '2018-03-21', 'http://video.metrotvnews.com//play/2018/03/21/848331/lippo-group-teken-kerja-sama-dengan-sembilan-perusahaan-global', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'Menilik Penetapan Harga Batu Bara untuk Pembangkit Listrik', '2018-03-21', 'http://video.metrotvnews.com//play/2018/03/21/848330/menilik-penetapan-harga-batu-bara-untuk-pembangkit-listrik', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'Sampah Sisa Banjir Bandang di Bandung Tutupi Badan Jalan', '2018-03-21', 'http://video.metrotvnews.com/play/2018/03/21/848329/sampah-sisa-banjir-bandang-di-bandung-tutupi-badan-jalan', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'Indeks Acuan Inggris Berakhir Naik 0,26%', '2018-03-21', 'http://ekonomi.metrotvnews.com/globals/8KyvVdON-indeks-acuan-inggris-berakhir-naik-0-26', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'Dragon Ball Legends, Game Adaptasi untuk iOS dan Android', '2018-03-21', 'http://teknologi.metrotvnews.com/game/VNx3jJaK-dragon-ball-legends-game-adaptasi-untuk-ios-dan-android', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'Darmin: Utang Digunakan untuk Pembangunan Infrastruktur', '2018-03-21', 'http://ekonomi.metrotvnews.com/makro/Rb1ZJOlk-darmin-utang-digunakan-untuk-pembangunan-infrastruktur', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'Upaya Cegah Penularan TBC (3)', '2018-03-21', 'http://video.metrotvnews.com/play/2018/03/21/848325/upaya-cegah-penularan-tbc-3', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'Upaya Cegah Penularan TBC (2)', '2018-03-21', 'http://video.metrotvnews.com/play/2018/03/21/848324/upaya-cegah-penularan-tbc-2', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'Upaya Cegah Penularan TBC (1)', '2018-03-21', 'http://video.metrotvnews.com/play/2018/03/21/848322/upaya-cegah-penularan-tbc-1', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'Perdana, Girlband Korsel Gelar Konser di Korut', '2018-03-21', 'http://internasional.metrotvnews.com/asia/4ba7Az0K-perdana-girlband-korsel-gelar-konser-di-korut', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'Harga Emas Dunia Berakhir Melemah', '2018-03-21', 'http://ekonomi.metrotvnews.com/globals/GNGMoylk-harga-emas-dunia-berakhir-melemah', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'Legislator Nilai Industri Tembakau Perlu Dikembangkan', '2018-03-21', 'http://ekonomi.metrotvnews.com/mikro/VNnJB6jN-legislator-nilai-industri-tembakau-perlu-dikembangkan', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'Diterpa Gelombang Tinggi, Anies Batal  Buka Musrembang di Pulau Seribu', '2018-03-21', 'http://news.metrotvnews.com/metro/0Kv3aG4N-diterpa-gelombang-tinggi-anies-batal-buka-musrembang-di-pulau-seribu', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'Mantan Presiden Prancis Ditahan Terkait Kasus Dana Kampanye', '2018-03-21', 'http://video.metrotvnews.com/play/2018/03/21/848317/mantan-presiden-prancis-ditahan-terkait-kasus-dana-kampanye', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'Erdogan Minta AS Kerja Sama dengan NATO', '2018-03-21', 'http://video.metrotvnews.com/play/2018/03/21/848316/erdogan-minta-as-kerja-sama-dengan-nato', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'LAPAN Minta Masyarakat Waspadai Serpihan Stasiun Antariksa Tiongkok', '2018-03-21', 'http://video.metrotvnews.com/play/2018/03/21/848315/lapan-minta-masyarakat-waspadai-serpihan-stasiun-antariksa-tiongkok', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'Stasiun Antariksa Tiongkok Diprediksi akan Jatuh ke Indonesia', '2018-03-21', 'http://video.metrotvnews.com/play/2018/03/21/848314/stasiun-antariksa-tiongkok-diprediksi-akan-jatuh-ke-indonesia', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'Bank Mandiri Telah Kembalikan Seluruh Dana Nasabah', '2018-03-21', 'http://ekonomi.metrotvnews.com/bursa/GNlJ3G5k-bank-mandiri-telah-kembalikan-seluruh-dana-nasabah', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'Film Dynasty Warriors Hadir Tahun Depan', '2018-03-21', 'http://teknologi.metrotvnews.com/poptech/0kpnYOnN-film-dynasty-warriors-hadir-tahun-depan', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'Pesawat Latih Jatuh, Pilot Tewas', '2018-03-21', 'http://foto.metrotvnews.com/view/2018/03/21/848311/pesawat-latih-jatuh-pilot-tewas', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'IHSG Pagi Dibuka Berbaris di Zona Hijau', '2018-03-21', 'http://ekonomi.metrotvnews.com/bursa/ob3AE7YK-ihsg-pagi-dibuka-berbaris-di-zona-hijau', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'Indonesia Raih Penghargaan Teknologi Informasi dari PBB', '2018-03-21', 'http://internasional.metrotvnews.com/eropa/Obzv1B7b-indonesia-raih-penghargaan-teknologi-informasi-dari-pbb', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'Polisi: Raibnya Dana Nasabah BRI di Kediri tak Terkait Skimming', '2018-03-21', 'http://news.metrotvnews.com/hukum/nbw3gexb-polisi-raibnya-dana-nasabah-bri-di-kediri-tak-terkait-skimming', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'Ribuan Mobil Klasik Dipamerkan di Los Angeles', '2018-03-21', 'http://video.metrotvnews.com//play/2018/03/21/848308/ribuan-mobil-klasik-dipamerkan-di-los-angeles', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'Mohamed Salah akan Sulit Tolak Tawaran Madrid', '2018-03-21', 'http://bola.metrotvnews.com/dunia/yNLQjy9b-mohamed-salah-akan-sulit-tolak-tawaran-madrid', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'Delapan Negara Kebagian Tombol Belanja Instagram', '2018-03-21', 'http://teknologi.metrotvnews.com/news-teknologi/aNrVlJxN-delapan-negara-kebagian-tombol-belanja-instagram', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'Prediksi Singapura vs Indonesia: Panggung Egy Maulana Vikri', '2018-03-21', 'http://bola.metrotvnews.com/dunia/5b2547nN-prediksi-singapura-vs-indonesia-panggung-egy-maulana-vikri', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'Penuhi Panggilan Bawaslu, Ketum Perindo tak Banyak Komentar', '2018-03-21', 'http://news.metrotvnews.com/politik/aNrVlJzN-penuhi-panggilan-bawaslu-ketum-perindo-tak-banyak-komentar', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'IHSG Cenderung Sideways', '2018-03-21', 'http://ekonomi.metrotvnews.com/bursa/ZkeQ2Wqk-ihsg-cenderung-sideways', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'Mahyudin Bantah Membangkang soal Pergantian Pimpinan MPR', '2018-03-21', 'http://video.metrotvnews.com//play/2018/03/21/848301/mahyudin-bantah-membangkang-soal-pergantian-pimpinan-mpr', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'TGUPP Berikan Saran Pada Anies-Sandi', '2018-03-21', 'http://news.metrotvnews.com/metro/zNA7eG6k-tgupp-berikan-saran-pada-anies-sandi', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'Fatamorgana Kinerja DPR', '2018-03-21', 'http://news.metrotvnews.com/editorial-media-indonesia/4KZOyVJN-fatamorgana-kinerja-dpr', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'Skandal Facebook, CEO Cambridge Analytica Dinonaktifkan Sementara', '2018-03-21', 'http://internasional.metrotvnews.com/eropa/GbmJQ39k-skandal-facebook-ceo-cambridge-analytica-dinonaktifkan-sementara', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'Pesona Alam dan Budaya Sumatera Barat Lewat Mata Fujifilm X-H1', '2018-03-21', 'http://teknologi.metrotvnews.com/news-teknologi/JKRl6R3b-pesona-alam-dan-budaya-sumatera-barat-lewat-mata-fujifilm-x-h1', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'Rupiah Perdagangan Pagi Dibuka Melemah ke Rp13.760/USD', '2018-03-21', 'http://ekonomi.metrotvnews.com/bursa/5b2547rN-rupiah-perdagangan-pagi-dibuka-melemah-ke-rp13-760-usd', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'Masyarakat Diminta Pahami Hukuman Fisik di Setiap Negara', '2018-03-21', 'http://news.metrotvnews.com/hukum/ybDMBejk-masyarakat-diminta-pahami-hukuman-fisik-di-setiap-negara', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'MU Ungguli Manchester City di Media Sosial', '2018-03-21', 'http://bola.metrotvnews.com/inggris/9K5RZ70N-mu-ungguli-manchester-city-di-media-sosial', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'Pekan Depan, Ombudsman akan Beri Saran Terkait Penutupan Jatibaru', '2018-03-21', 'http://video.metrotvnews.com//play/2018/03/21/848288/pekan-depan-ombudsman-akan-beri-saran-terkait-penutupan-jatibaru', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'Sandiaga: Green Building Tidak Gunakan Air Tanah', '2018-03-21', 'http://news.metrotvnews.com/metro/RkjjmQRk-sandiaga-green-building-tidak-gunakan-air-tanah', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'Gerak USD Menguat Ketika Pertemuan Fed Dimulai', '2018-03-21', 'http://ekonomi.metrotvnews.com/globals/8N08yYEN-gerak-usd-menguat-ketika-pertemuan-fed-dimulai', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'Ledakan Kembali Terjadi di Texas, Satu Terluka', '2018-03-21', 'http://internasional.metrotvnews.com/amerika/yKXV0w9b-ledakan-kembali-terjadi-di-texas-satu-terluka', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'Autovision Autolightup Tantang Modifikator di 16 kota', '2018-03-21', 'http://otomotif.metrotvnews.com/mobil/nN9DRojK-autovision-autolightup-tantang-modifikator-di-16-kota', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'BNI Bidik Akuisisi Bank Lain di 2018', '2018-03-21', 'http://ekonomi.metrotvnews.com/mikro/GKdQr34N-bni-bidik-akuisisi-bank-lain-di-2018', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'UU Narkotika Perlu Direvisi', '2018-03-21', 'http://news.metrotvnews.com/politik/xkEGOvrN-uu-narkotika-perlu-direvisi', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'KPAI: Tren Kekerasan Terhadap Anak di Institusi Pendidikan Meningkat', '2018-03-21', 'http://video.metrotvnews.com//play/2018/03/21/848283/kpai-tren-kekerasan-terhadap-anak-di-institusi-pendidikan-meningkat', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'Jadwal Siaran Langsung Timnas Indonesia vs Singapura', '2018-03-21', 'http://bola.metrotvnews.com/dunia/ybJMny8N-jadwal-siaran-langsung-timnas-indonesia-vs-singapura', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'Minyak Dunia Naik Dipicu Ketegangan Timur Tengah', '2018-03-21', 'http://ekonomi.metrotvnews.com/globals/Dkq3oJpN-minyak-dunia-naik-dipicu-ketegangan-timur-tengah', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'WNA Pelaku Skimming Rekrut WNI untuk Lakukan Pemetaan', '2018-03-21', 'http://news.metrotvnews.com/hukum/Wb72A7WN-wna-pelaku-skimming-rekrut-wni-untuk-lakukan-pemetaan', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'Pelatih Tantang Marcus/Kevin Raih Hattrick Juara All England', '2018-03-21', 'http://olahraga.metrotvnews.com/bulutangkis/MkMMgyEk-pelatih-tantang-marcus-kevin-raih-hattrick-juara-all-england', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'Penembakan di AS, Dua Terluka dan Pelaku Tewas', '2018-03-21', 'http://internasional.metrotvnews.com/amerika/zNPv1oPk-penembakan-di-as-dua-terluka-dan-pelaku-tewas', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'Polisi Tembak Pria Bersenjata di Sekitar Universitas Princeton', '2018-03-21', 'http://internasional.metrotvnews.com/amerika/dN6r5OqN-polisi-tembak-pria-bersenjata-di-sekitar-universitas-princeton', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'BRI Bidik Penyaluran Kredit Kendaraan Tumbuh 20%', '2018-03-21', 'http://ekonomi.metrotvnews.com/mikro/Rb1ZJ7dk-bri-bidik-penyaluran-kredit-kendaraan-tumbuh-20', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'PKB Tuntut Berikan Sanksi Pada Arab Saudi', '2018-03-21', 'http://news.metrotvnews.com/politik/4ba7AXBK-pkb-tuntut-berikan-sanksi-pada-arab-saudi', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'Barcelona akan Perpanjang Kontrak Vermaelen', '2018-03-21', 'http://bola.metrotvnews.com/spanyol/GNlJ3jyk-barcelona-akan-perpanjang-kontrak-vermaelen', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'Pemerintah Diminta Lindungi Industri Baja Nasional', '2018-03-21', 'http://ekonomi.metrotvnews.com/mikro/1bV47XnK-pemerintah-diminta-lindungi-industri-baja-nasional', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'Mantan Kasat Narkoba Polres Bintan Divonis 10 Tahun Penjara', '2018-03-21', 'http://video.metrotvnews.com//play/2018/03/21/848261/mantan-kasat-narkoba-polres-bintan-divonis-10-tahun-penjara', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'Truk Tangki BBM Terbakar di Tol Merak-Tangerang', '2018-03-21', 'http://video.metrotvnews.com/play/2018/03/21/848260/truk-tangki-bbm-terbakar-di-tol-merak-tangerang', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'Usai Digeledah KPK, Rumah Wali Kota Malang Nonaktif Sepi', '2018-03-21', 'http://video.metrotvnews.com//play/2018/03/21/848259/usai-digeledah-kpk-rumah-wali-kota-malang-nonaktif-sepi', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, '2018, Krakatau Steel Alokasikan Belanja Modal USD560 Juta', '2018-03-21', 'http://ekonomi.metrotvnews.com/bursa/0k8Lx8Wk-2018-krakatau-steel-alokasikan-belanja-modal-usd560-juta', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'KPK Beri Penjelasan Terkait Kehadiran Zumi Zola di Acara Pencegahan Korupsi', '2018-03-21', 'http://news.metrotvnews.com/hukum/ob3AEpmK-kpk-beri-penjelasan-terkait-kehadiran-zumi-zola-di-acara-pencegahan-korupsi', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'APK Pilkada Subulussalam Banyak yang Dirusak', '2018-03-21', 'http://video.metrotvnews.com//play/2018/03/21/848256/apk-pilkada-subulussalam-banyak-yang-dirusak', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'Lihat Insiden Camila Cabello Didorong Orang Tak Dikenal di Atas Panggung', '2018-03-21', 'http://hiburan.metrotvnews.com/musik/nbw3gJ3b-lihat-insiden-camila-cabello-didorong-orang-tak-dikenal-di-atas-panggung', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'Wall Street Ditutup Menguat saat Pertemuan Fed Dimulai', '2018-03-21', 'http://ekonomi.metrotvnews.com/globals/PNgJDO9K-wall-street-ditutup-menguat-saat-pertemuan-fed-dimulai', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'Bekerja jadi Pembalap? Tak Harus ke Level Dunia', '2018-03-21', 'http://otomotif.metrotvnews.com/mobil/akWydZMN-bekerja-jadi-pembalap-tak-harus-ke-level-dunia', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'Warga Temukan Karung Berisi Kartu Indonesia Pintar di Surabaya', '2018-03-21', 'http://video.metrotvnews.com//play/2018/03/21/848255/warga-temukan-karung-berisi-kartu-indonesia-pintar-di-surabaya', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'Penunjukkan Pengurus TGUPP tak Terkait Timses Anies-Sandi', '2018-03-21', 'http://news.metrotvnews.com/metro/nbw3gd5b-penunjukkan-pengurus-tgupp-tak-terkait-timses-anies-sandi', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, '20 TKI Terancam Hukuman Mati di Arab Saudi', '2018-03-21', 'http://video.metrotvnews.com//play/2018/03/21/848252/20-tki-terancam-hukuman-mati-di-arab-saudi', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'Polres Salatiga Ringkus Pelaku Curanmor Lintas Kota', '2018-03-21', 'http://video.metrotvnews.com/play/2018/03/21/848251/polres-salatiga-ringkus-pelaku-curanmor-lintas-kota', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'Rumah Ambruk Terbawa Arus Sungai di Bandung', '2018-03-21', 'http://video.metrotvnews.com//play/2018/03/21/848250/rumah-ambruk-terbawa-arus-sungai-di-bandung', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'Pemerintah Layangkan 40 Nota Diplomatik Hindari Eksekusi Misrin', '2018-03-21', 'http://news.metrotvnews.com/politik/Obzv19eb-pemerintah-layangkan-40-nota-diplomatik-hindari-eksekusi-misrin', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'Wasekjen PKB: Indonesia Sering Kecolongan Eksekusi TKI', '2018-03-21', 'http://news.metrotvnews.com/politik/aNrVlLxN-wasekjen-pkb-indonesia-sering-kecolongan-eksekusi-tki', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'Pemerintah Telah Lakukan Upaya Ekstra pada Kasus Zaini Misrin', '2018-03-21', 'http://news.metrotvnews.com/politik/JKRl643b-pemerintah-telah-lakukan-upaya-ekstra-pada-kasus-zaini-misrin', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'Syiar Sirah Nabawiyah: Primordialisme yang Menghancurkan (3)', '2018-03-21', 'http://video.metrotvnews.com/play/2018/03/21/848247/syiar-sirah-nabawiyah-primordialisme-yang-menghancurkan-3', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'Syiar Sirah Nabawiyah: Primordialisme yang Menghancurkan (2)', '2018-03-21', 'http://video.metrotvnews.com/play/2018/03/21/848246/syiar-sirah-nabawiyah-primordialisme-yang-menghancurkan-2', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'Syiar Sirah Nabawiyah: Primordialisme yang Menghancurkan (1)', '2018-03-21', 'http://video.metrotvnews.com/play/2018/03/21/848245/syiar-sirah-nabawiyah-primordialisme-yang-menghancurkan-1', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'Lawan Singapura, Timnas U-23 Tanpa Evan Dimas', '2018-03-21', 'http://bola.metrotvnews.com/dunia/nN9DRGRK-lawan-singapura-timnas-u-23-tanpa-evan-dimas', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, '20 TKI di Saudi Terancam Eksekusi Mati', '2018-03-21', 'http://news.metrotvnews.com/peristiwa/4KZOyX6N-20-tki-di-saudi-terancam-eksekusi-mati', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'OJK dan BI DIY Terima Laporan Kasus Skimming ATM', '2018-03-21', 'http://ekonomi.metrotvnews.com/mikro/8N08yqEN-ojk-dan-bi-diy-terima-laporan-kasus-skimming-atm', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'Tudingan Israel Sebabkan Saham Twitter Anjlok', '2018-03-20', 'http://internasional.metrotvnews.com/dunia/RkjjmyRk-tudingan-israel-sebabkan-saham-twitter-anjlok', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'Jakarta Berpotensi Diguyur Hujan Disertai Petir dan Angin Kencang', '2018-03-20', 'http://news.metrotvnews.com/metro/yKXV049b-jakarta-berpotensi-diguyur-hujan-disertai-petir-dan-angin-kencang', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('588210f7323fe1a9c2367fb2a32e79d2', 'http://www.metrotvnews.com/feed/', NULL, 'Pemerintah Dorong Petani Bisa Produksi Garam Spa', '2018-03-20', 'http://ekonomi.metrotvnews.com/mikro/GNGMoXlk-pemerintah-dorong-petani-bisa-produksi-garam-spa', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Yang Harus Dilakukan untuk Jadi Suami Siaga Jelang Kelahiran', '2018-03-21', 'http://health.okezone.com/read/2018/03/21/481/1875759/yang-harus-dilakukan-untuk-jadi-suami-siaga-jelang-kelahiran', '', NULL, '2018-03-21', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, '14 Fakta Kematian yang Jarang Manusia Tahu', '2018-03-21', 'http://lifestyle.okezone.com/read/2018/03/21/196/1875738/14-fakta-kematian-yang-jarang-manusia-tahu', '', NULL, '2018-03-21', '', 'GAYA HIDUP', '', '');
INSERT INTO `rssnews` (`item_id`, `feed_url`, `item_content`, `item_title`, `item_date`, `item_url`, `item_status`, `item_category_id`, `fetch_date`, `img_url`, `kategori`, `thumbnail`, `prety_url`) VALUES
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Pesan Tersirat Artis Bunuh Diri, Isyaratkan Depresi Mendalam', '2018-03-21', 'http://lifestyle.okezone.com/read/2018/03/21/196/1875731/pesan-tersirat-artis-bunuh-diri-isyaratkan-depresi-mendalam', '', NULL, '2018-03-21', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Mainan Ini Bikin Generasi 90-an di Arab Rindu Berat Kenangan Masa Kecil, Mana Paling Fenomenal?   ', '2018-03-21', 'http://lifestyle.okezone.com/read/2018/03/21/196/1875726/mainan-ini-bikin-generasi-90-an-di-arab-rindu-berat-kenangan-masa-kecil-mana-paling-fenomenal', '', NULL, '2018-03-21', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Bukan karena Hamil Kulit Kate Middleton Jadi Glowing, Ternyata Produk-Produk Inilah Rahasianya', '2018-03-21', 'http://lifestyle.okezone.com/read/2018/03/21/194/1875721/bukan-karena-hamil-kulit-kate-middleton-jadi-glowing-ternyata-produk-produk-inilah-rahasianya', '', NULL, '2018-03-21', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Ditolak dan Diejek, Wanita Disabilitas Ini Punya Cara Balas Dendam Tak Biasa', '2018-03-21', 'http://health.okezone.com/read/2018/03/21/481/1875720/ditolak-dan-diejek-wanita-disabilitas-ini-punya-cara-balas-dendam-tak-biasa', '', NULL, '2018-03-21', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Melihat Keindahan Musim Semi di China', '2018-03-21', 'http://travel.okezone.com/read/2018/03/20/406/1875614/melihat-keindahan-musim-semi-di-china', '', NULL, '2018-03-21', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Rumah Tradisional Jadi Daya Tarik Kampung Adat Praijing Sumba', '2018-03-21', 'http://travel.okezone.com/read/2018/03/20/406/1875508/rumah-tradisional-jadi-daya-tarik-kampung-adat-praijing-sumba', '', NULL, '2018-03-21', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Mendengarkan Musik Bantu Menjaga Kesehatan Mental, Ini Buktinya!', '2018-03-21', 'http://health.okezone.com/read/2018/03/20/481/1875618/mendengarkan-musik-bantu-menjaga-kesehatan-mental-ini-buktinya', '', NULL, '2018-03-21', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Hangatnya Krim Sup untuk Menu Sarapan', '2018-03-20', 'http://www.okefood.com/read/2018/03/20/298/1875504/hangatnya-krim-sup-untuk-menu-sarapan', '', NULL, '2018-03-20', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Tantangan Coban Wolu, Menuntut Traveler Siapkan Fisik Tahan Banting', '2018-03-20', 'http://travel.okezone.com/read/2018/03/20/406/1875581/tantangan-coban-wolu-menuntut-traveler-siapkan-fisik-tahan-banting', '', NULL, '2018-03-20', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, '8 Hal Menyenangkan di Waktu Luang untuk si Introvert', '2018-03-20', 'http://lifestyle.okezone.com/read/2018/03/20/196/1875495/8-hal-menyenangkan-di-waktu-luang-untuk-si-introvert', '', NULL, '2018-03-20', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Ternyata Nanas Bisa Bantu Mengurangi Berat Badan Loh!', '2018-03-20', 'http://health.okezone.com/read/2018/03/20/481/1875450/ternyata-nanas-bisa-bantu-mengurangi-berat-badan-loh', '', NULL, '2018-03-20', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Ini Akibatnya Jika Nekat Gunakan Minyak Kelapa sebagai Pelumas saat Bersenggama', '2018-03-20', 'http://health.okezone.com/read/2018/03/20/481/1875610/ini-akibatnya-jika-nekat-gunakan-minyak-kelapa-sebagai-pelumas-saat-bersenggama', '', NULL, '2018-03-20', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Terapi Pijat Miss V Bisa Kurangi Nyeri saat Berhubungan Seks', '2018-03-20', 'http://health.okezone.com/read/2018/03/20/481/1875485/terapi-pijat-miss-v-bisa-kurangi-nyeri-saat-berhubungan-seks', '', NULL, '2018-03-20', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Jangan Anggap Remeh Benjolan yang Ada di Bawah Kulit Mr P', '2018-03-20', 'http://health.okezone.com/read/2018/03/20/481/1875638/jangan-anggap-remeh-benjolan-yang-ada-di-bawah-kulit-mr-p', '', NULL, '2018-03-20', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Konsumsi Viagra Turunkan Risiko Kanker Usus Besar?', '2018-03-20', 'http://health.okezone.com/read/2018/03/20/481/1875554/konsumsi-viagra-turunkan-risiko-kanker-usus-besar', '', NULL, '2018-03-20', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Menu di Restoran Ini Pakai Nama Grup Vokal K-Pop', '2018-03-20', 'http://www.okefood.com/read/2018/03/20/298/1875588/menu-di-restoran-ini-pakai-nama-grup-vokal-k-pop', '', NULL, '2018-03-20', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Ratu Elizabeth Punya Apartemen di New York, Intip Kemewahan Desain Interiornya!', '2018-03-20', 'http://lifestyle.okezone.com/read/2018/03/20/196/1875634/ratu-elizabeth-punya-apartemen-di-new-york-intip-kemewahan-desain-interiornya', '', NULL, '2018-03-20', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Ini Alasan Kenapa Tidak Disarankan Mandi Setelah Olahraga', '2018-03-20', 'http://health.okezone.com/read/2018/03/20/481/1875649/ini-alasan-kenapa-tidak-disarankan-mandi-setelah-olahraga', '', NULL, '2018-03-20', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Pakai Gaun Pengantin untuk Pesta, Jadi Cara Wanita Mesir Ini Rayakan Perceraian ', '2018-03-20', 'http://lifestyle.okezone.com/read/2018/03/20/196/1875583/pakai-gaun-pengantin-untuk-pesta-jadi-cara-wanita-mesir-ini-rayakan-perceraian', '', NULL, '2018-03-20', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Bukan Sekadar Pelengkap, Sambal Merupakan Potret Toleransi Bangsa Indonesia', '2018-03-20', 'http://www.okefood.com/read/2018/03/20/298/1875627/bukan-sekadar-pelengkap-sambal-merupakan-potret-toleransi-bangsa-indonesia', '', NULL, '2018-03-20', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Ini Dia! Kaus Kaki Keren yang Dipakai Para Member Boygroup Korea Selatan', '2018-03-20', 'http://lifestyle.okezone.com/read/2018/03/20/194/1875607/ini-dia-kaus-kaki-keren-yang-dipakai-para-member-boygroup-korea-selatan', '', NULL, '2018-03-20', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Melihat Keindahan Air Terjun Evu yang Bermuara Langsung ke Laut', '2018-03-20', 'http://travel.okezone.com/read/2018/03/20/406/1875556/melihat-keindahan-air-terjun-evu-yang-bermuara-langsung-ke-laut', '', NULL, '2018-03-20', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Menikmati Indahnya 3 Pulau Kosong di Kepulauan Kei Maluku', '2018-03-20', 'http://travel.okezone.com/read/2018/03/20/406/1875599/menikmati-indahnya-3-pulau-kosong-di-kepulauan-kei-maluku', '', NULL, '2018-03-20', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Anak-Anak Mudah Mengalami Karies Gigi dan Ini Tips Mencegahnya!', '2018-03-20', 'http://health.okezone.com/read/2018/03/20/481/1875456/anak-anak-mudah-mengalami-karies-gigi-dan-ini-tips-mencegahnya', '', NULL, '2018-03-20', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Sarankan Istri Mencium Ketiak Suami, Psikolog Asal Kuwait Ini Tuai Protes', '2018-03-20', 'http://lifestyle.okezone.com/read/2018/03/20/196/1875528/sarankan-istri-mencium-ketiak-suami-psikolog-asal-kuwait-ini-tuai-protes', '', NULL, '2018-03-20', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Jangan Malu, Yuk Edukasi Diri Sebelum Mendidik Anak', '2018-03-20', 'http://lifestyle.okezone.com/read/2018/03/20/196/1875563/jangan-malu-yuk-edukasi-diri-sebelum-mendidik-anak', '', NULL, '2018-03-20', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Pulang Kantor Segarkan dengan Minum Es Jeruk Soda, Ini Resepnya', '2018-03-20', 'http://www.okefood.com/read/2018/03/20/298/1875538/pulang-kantor-segarkan-dengan-minum-es-jeruk-soda-ini-resepnya', '', NULL, '2018-03-20', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Wali Kota Liverpool Berburu Foto Wisata Mangrove di Surabaya', '2018-03-20', 'http://travel.okezone.com/read/2018/03/20/406/1875557/wali-kota-liverpool-berburu-foto-wisata-mangrove-di-surabaya', '', NULL, '2018-03-20', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Edukasi Dini Terbukti Ampuh Turunkan Angka Kematian Akibat Kanker', '2018-03-20', 'http://health.okezone.com/read/2018/03/20/481/1875549/edukasi-dini-terbukti-ampuh-turunkan-angka-kematian-akibat-kanker', '', NULL, '2018-03-20', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Seribuan Payung Warna-Warni dan Robot Kuntilanak Sambut Hari Tanpa Bayangan', '2018-03-20', 'http://travel.okezone.com/read/2018/03/20/406/1875534/seribuan-payung-warna-warni-dan-robot-kuntilanak-sambut-hari-tanpa-bayangan', '', NULL, '2018-03-20', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Driver Ojol Ketiduran Tunggu Pesanan, Netizen: \"Inilah Jihad yang Sesungguhnya\"', '2018-03-20', 'http://lifestyle.okezone.com/read/2018/03/20/196/1875521/driver-ojol-ketiduran-tunggu-pesanan-netizen-inilah-jihad-yang-sesungguhnya', '', NULL, '2018-03-20', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Diet Vegan, Tak Perlu Khawatir Kurang Gizi, Ini Fakta-Faktanya', '2018-03-20', 'http://www.okefood.com/read/2018/03/20/298/1875524/diet-vegan-tak-perlu-khawatir-kurang-gizi-ini-fakta-faktanya', '', NULL, '2018-03-20', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Diabetes Bisa Dipicu karena Peradangan Rongga Mulut, Ini Faktanya!', '2018-03-20', 'http://health.okezone.com/read/2018/03/20/481/1875473/diabetes-bisa-dipicu-karena-peradangan-rongga-mulut-ini-faktanya', '', NULL, '2018-03-20', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Boneka Ini Jadi Viral karena Aura Mistisnya, Jangan Lihat Matanya!', '2018-03-20', 'http://lifestyle.okezone.com/read/2018/03/20/196/1875513/boneka-ini-jadi-viral-karena-aura-mistisnya-jangan-lihat-matanya', '', NULL, '2018-03-20', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Waspada, Ikan Kaleng Mackerel Positif Mengandung Cacing', '2018-03-20', 'http://www.okefood.com/read/2018/03/20/298/1875498/waspada-ikan-kaleng-mackerel-positif-mengandung-cacing', '', NULL, '2018-03-20', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, '5 Kebiasaan yang Bikin Anda Bahagia Sepanjang Hari!', '2018-03-20', 'http://health.okezone.com/read/2018/03/20/481/1875494/5-kebiasaan-yang-bikin-anda-bahagia-sepanjang-hari', '', NULL, '2018-03-20', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Viral! Putihkan Gigi dengan Kutek, Bahayanya Bikin Cepat Retak & Patah', '2018-03-20', 'http://health.okezone.com/read/2018/03/20/481/1875490/viral-putihkan-gigi-dengan-kutek-bahayanya-bikin-cepat-retak-patah', '', NULL, '2018-03-20', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Lucu, Jersey Tim Sepakbola Ini Berwarna Pink dengan Gambar Hello Kitty', '2018-03-20', 'http://lifestyle.okezone.com/read/2018/03/20/194/1875479/lucu-jersey-tim-sepakbola-ini-berwarna-pink-dengan-gambar-hello-kitty', '', NULL, '2018-03-20', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Mengobati Bipolar dengan Cara Alternatif, Baik atau Buruk?', '2018-03-20', 'http://health.okezone.com/read/2018/03/20/481/1875412/mengobati-bipolar-dengan-cara-alternatif-baik-atau-buruk', '', NULL, '2018-03-20', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Sorabi Hijau Khas Karawang, Makanan Rakyat Citarasanya Mendunia ', '2018-03-20', 'http://www.okefood.com/read/2018/03/20/298/1875464/sorabi-hijau-khas-karawang-makanan-rakyat-citarasanya-mendunia', '', NULL, '2018-03-20', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Inikah Alasan Dibalik Penolakan Pangeran Harry Melakukan Perjanjian Pra-nikah dengan Meghan Markle?', '2018-03-20', 'http://lifestyle.okezone.com/read/2018/03/20/194/1875461/inikah-alasan-dibalik-penolakan-pangeran-harry-melakukan-perjanjian-pra-nikah-dengan-meghan-markle', '', NULL, '2018-03-20', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Heboh Kasus Makanan Kedaluarsa, 2 Anak Zaskia Adya Mecca Pernah Keracunan', '2018-03-20', 'http://lifestyle.okezone.com/read/2018/03/20/196/1875443/heboh-kasus-makanan-kedaluarsa-2-anak-zaskia-adya-mecca-pernah-keracunan', '', NULL, '2018-03-20', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Kulit Kinclong dengan Facial Oxygeneo Bebas Rasa Sakit', '2018-03-20', 'http://lifestyle.okezone.com/read/2018/03/20/194/1875414/kulit-kinclong-dengan-facial-oxygeneo-bebas-rasa-sakit', '', NULL, '2018-03-20', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Pertolongan Pertama untuk Korban yang Keracunan Makanan Kedaluwarsa', '2018-03-20', 'http://health.okezone.com/read/2018/03/20/481/1875371/pertolongan-pertama-untuk-korban-yang-keracunan-makanan-kedaluwarsa', '', NULL, '2018-03-20', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Dari Gorengan hingga Kopi, Makanan yang Harus Dihindari Setelah Keracunan Makanan', '2018-03-20', 'http://health.okezone.com/read/2018/03/20/481/1875409/dari-gorengan-hingga-kopi-makanan-yang-harus-dihindari-setelah-keracunan-makanan', '', NULL, '2018-03-20', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, '5 Hal yang Anda Tidak Ketahui Tentang Bahagia', '2018-03-20', 'http://lifestyle.okezone.com/read/2018/03/20/196/1875404/5-hal-yang-anda-tidak-ketahui-tentang-bahagia', '', NULL, '2018-03-20', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Awas! Keinginan Bunuh Diri Bisa Memperkuat Faktor Penyebab Mati Konyol', '2018-03-20', 'http://health.okezone.com/read/2018/03/20/481/1875381/awas-keinginan-bunuh-diri-bisa-memperkuat-faktor-penyebab-mati-konyol', '', NULL, '2018-03-20', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Makan Satu Kali dalam Sehari karena Diet, Perhatikan Dulu Hal Ini', '2018-03-20', 'http://health.okezone.com/read/2018/03/20/481/1875382/makan-satu-kali-dalam-sehari-karena-diet-perhatikan-dulu-hal-ini', '', NULL, '2018-03-20', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Selain Tanggal Kedaluwarsa, Begini Cara Mengetahui Makanan Sudah Tidak Layak Dikonsumsi', '2018-03-20', 'http://health.okezone.com/read/2018/03/20/481/1875372/selain-tanggal-kedaluwarsa-begini-cara-mengetahui-makanan-sudah-tidak-layak-dikonsumsi', '', NULL, '2018-03-20', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Pasien Bipolar Punya Kreativitas Tinggi, Ini Penjelasan Para Ahli', '2018-03-20', 'http://health.okezone.com/read/2018/03/20/481/1875357/pasien-bipolar-punya-kreativitas-tinggi-ini-penjelasan-para-ahli', '', NULL, '2018-03-20', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Generasi Millenial Kian Melek Akan Indahnya Alam Indonesia', '2018-03-20', 'http://travel.okezone.com/read/2018/03/20/406/1875354/generasi-millenial-kian-melek-akan-indahnya-alam-indonesia', '', NULL, '2018-03-20', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Ingin Liburan di Jepang karena Bunga Sakuranya? Lihat Dulu Jadwal Merekahnya', '2018-03-20', 'http://travel.okezone.com/read/2018/03/20/406/1875345/ingin-liburan-di-jepang-karena-bunga-sakuranya-lihat-dulu-jadwal-merekahnya', '', NULL, '2018-03-20', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Abrakadabra! Tersihir dengan Minuman Bitterbeer Kafe Harry Potter di Vietnam', '2018-03-20', 'http://www.okefood.com/read/2018/03/20/298/1875342/abrakadabra-tersihir-dengan-minuman-bitterbeer-kafe-harry-potter-di-vietnam', '', NULL, '2018-03-20', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Tindakan Badan POM Soal Maraknya Makanan Kedaluwarsa Terkait Penggerebekan Gudang Makanan di Tambora', '2018-03-20', 'http://health.okezone.com/read/2018/03/20/481/1875328/tindakan-badan-pom-soal-maraknya-makanan-kedaluwarsa-terkait-penggerebekan-gudang-makanan-di-tambora', '', NULL, '2018-03-20', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Malam Ini Enaknya Santap Patin Panggang Saus Jamur atau Patin Asam Pedas', '2018-03-20', 'http://www.okefood.com/read/2018/03/20/298/1875306/malam-ini-enaknya-santap-patin-panggang-saus-jamur-atau-patin-asam-pedas', '', NULL, '2018-03-20', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Menikmati Indahnya Senja Keemasan di Kota Miri', '2018-03-20', 'http://travel.okezone.com/read/2018/03/20/406/1875318/menikmati-indahnya-senja-keemasan-di-kota-miri', '', NULL, '2018-03-20', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Periodontitis Salah Satu Penyakit Gigi yang Banyak Dialami Orang Indonesia', '2018-03-20', 'http://health.okezone.com/read/2018/03/20/481/1875311/periodontitis-salah-satu-penyakit-gigi-yang-banyak-dialami-orang-indonesia', '', NULL, '2018-03-20', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Hari Kebahagiaan Internasional, Ini 7 Hal Penentu Kebahagiaan di Seluruh Dunia', '2018-03-20', 'http://lifestyle.okezone.com/read/2018/03/20/196/1875299/hari-kebahagiaan-internasional-ini-7-hal-penentu-kebahagiaan-di-seluruh-dunia', '', NULL, '2018-03-20', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, '5 Moment Seksi Mia Khalifa Bersama Makanan, Intip Foto-fotonya', '2018-03-20', 'http://www.okefood.com/read/2018/03/20/298/1875303/5-moment-seksi-mia-khalifa-bersama-makanan-intip-foto-fotonya', '', NULL, '2018-03-20', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Hari Kebahagiaan Internasional, Ini Definisi Bahagia Menurut Michelle Obama', '2018-03-20', 'http://lifestyle.okezone.com/read/2018/03/20/196/1875297/hari-kebahagiaan-internasional-ini-definisi-bahagia-menurut-michelle-obama', '', NULL, '2018-03-20', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Hari Kebahagiaan Internasional, Peringkat Kebahagiaan Indonesia Turun dari 81 Menjadi ke-96 di Dunia', '2018-03-20', 'http://travel.okezone.com/read/2018/03/20/406/1875286/hari-kebahagiaan-internasional-peringkat-kebahagiaan-indonesia-turun-dari-81-menjadi-ke-96-di-dunia', '', NULL, '2018-03-20', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Efek Merokok 2 Kali Lipat Lebih Berbahaya bagi Penderita HIV/Aids', '2018-03-20', 'http://health.okezone.com/read/2018/03/20/481/1875291/efek-merokok-2-kali-lipat-lebih-berbahaya-bagi-penderita-hiv-aids', '', NULL, '2018-03-20', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Lagi Ngehits Ayam Goreng Saus Telur Asin, Bikin Sendiri Yuk', '2018-03-20', 'http://www.okefood.com/read/2018/03/20/298/1875278/lagi-ngehits-ayam-goreng-saus-telur-asin-bikin-sendiri-yuk', '', NULL, '2018-03-20', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Makan Roti Berlebihan Ancam Kesehatan Pecernaan dan Bikin Berat Badan Naik', '2018-03-20', 'http://health.okezone.com/read/2018/03/20/481/1875281/makan-roti-berlebihan-ancam-kesehatan-pecernaan-dan-bikin-berat-badan-naik', '', NULL, '2018-03-20', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Unik! Jepang Luncurkan 8 Jenis Camilan Lezat Terinspirasi dari Bunga Sakura', '2018-03-20', 'http://www.okefood.com/read/2018/03/20/298/1875273/unik-jepang-luncurkan-8-jenis-camilan-lezat-terinspirasi-dari-bunga-sakura', '', NULL, '2018-03-20', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Para Dokter Pun Berjuang untuk Menyusui', '2018-03-20', 'http://health.okezone.com/read/2018/03/20/481/1875268/para-dokter-pun-berjuang-untuk-menyusui', '', NULL, '2018-03-20', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Lakukan 8 Hal Ini Agar Tidak Pusing Setelah Tidur Siang', '2018-03-20', 'http://health.okezone.com/read/2018/03/20/481/1875258/lakukan-8-hal-ini-agar-tidak-pusing-setelah-tidur-siang', '', NULL, '2018-03-20', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Efek Makanan Kedaluwarsa Bagi Tubuh dan Beberapa Gejalanya', '2018-03-20', 'http://health.okezone.com/read/2018/03/20/481/1875243/efek-makanan-kedaluwarsa-bagi-tubuh-dan-beberapa-gejalanya', '', NULL, '2018-03-20', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Macam-Macam Penyebab Serangan Jantung di Usia Muda', '2018-03-20', 'http://health.okezone.com/read/2018/03/20/481/1875241/macam-macam-penyebab-serangan-jantung-di-usia-muda', '', NULL, '2018-03-20', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Usaha Bikin Perut Rata Gagal Melulu, Apa Sih Sebabnya?', '2018-03-20', 'http://health.okezone.com/read/2018/03/20/481/1875232/usaha-bikin-perut-rata-gagal-melulu-apa-sih-sebabnya', '', NULL, '2018-03-20', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Produk Alternatif Tembakau Diklaim Jadi Solusi Atasi Kanker', '2018-03-20', 'http://health.okezone.com/read/2018/03/20/481/1875219/produk-alternatif-tembakau-diklaim-jadi-solusi-atasi-kanker', '', NULL, '2018-03-20', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Mengenal Facial Mr P yang Dipakai Sandra Bullock dan Cate Blanchett ', '2018-03-20', 'http://health.okezone.com/read/2018/03/20/481/1875212/mengenal-facial-mr-p-yang-dipakai-sandra-bullock-dan-cate-blanchett', '', NULL, '2018-03-20', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, '5 Mitos Tentang Menstruasi yang Harus Anda Ketahui', '2018-03-20', 'http://health.okezone.com/read/2018/03/20/481/1875210/5-mitos-tentang-menstruasi-yang-harus-anda-ketahui', '', NULL, '2018-03-20', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Ternyata Faktor Genetik Bisa Bikin Susah Bangun Pagi', '2018-03-20', 'http://health.okezone.com/read/2018/03/20/481/1875209/ternyata-faktor-genetik-bisa-bikin-susah-bangun-pagi', '', NULL, '2018-03-20', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Daun Stevia, Solusi Pemanis Alami untuk Penderita Diabetes', '2018-03-20', 'http://health.okezone.com/read/2018/03/20/481/1875205/daun-stevia-solusi-pemanis-alami-untuk-penderita-diabetes', '', NULL, '2018-03-20', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Fakta-Fakta di Balik Peringatan Hari Kebahagiaan Internasional', '2018-03-20', 'http://lifestyle.okezone.com/read/2018/03/20/196/1875204/fakta-fakta-di-balik-peringatan-hari-kebahagiaan-internasional', '', NULL, '2018-03-20', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Menikmati Lezatnya Sego Sambel Iwak Pe Khas Surabaya di Tangerang', '2018-03-20', 'http://www.okefood.com/read/2018/03/20/298/1875201/menikmati-lezatnya-sego-sambel-iwak-pe-khas-surabaya-di-tangerang', '', NULL, '2018-03-20', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, '4 Aksi Pertolongan Pertama di Adegan Film yang Ternyata Keliru ', '2018-03-20', 'http://health.okezone.com/read/2018/03/20/481/1875197/4-aksi-pertolongan-pertama-di-adegan-film-yang-ternyata-keliru', '', NULL, '2018-03-20', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Laki-Laki dengan Jumlah Sperma Sedikit Rentan Terkena Penyakit', '2018-03-20', 'http://health.okezone.com/read/2018/03/20/481/1875190/laki-laki-dengan-jumlah-sperma-sedikit-rentan-terkena-penyakit', '', NULL, '2018-03-20', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Demi Tampil Awet Muda, Perempuan Cantik Ini Bugil dan Mandi di Air Super Dingin!', '2018-03-20', 'http://lifestyle.okezone.com/read/2018/03/20/194/1875185/demi-tampil-awet-muda-perempuan-cantik-ini-bugil-dan-mandi-di-air-super-dingin', '', NULL, '2018-03-20', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Yang Lain Minta Sepeda, Cewek Cantik Ini Malah Minta Jodoh ke Jokowi, Kriterianya Simpel Kok!', '2018-03-20', 'http://lifestyle.okezone.com/read/2018/03/20/196/1875182/yang-lain-minta-sepeda-cewek-cantik-ini-malah-minta-jodoh-ke-jokowi-kriterianya-simpel-kok', '', NULL, '2018-03-20', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Dulu Tampil Terbuka, Sekarang 5 Artis Ini Mantap Bercadar', '2018-03-20', 'http://lifestyle.okezone.com/read/2018/03/20/194/1875178/dulu-tampil-terbuka-sekarang-5-artis-ini-mantap-bercadar', '', NULL, '2018-03-20', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Makan Ayam Sambil Minum Susu Berdampak Buruk pada Kesehatan, Benarkah?', '2018-03-20', 'http://health.okezone.com/read/2018/03/19/481/1875032/makan-ayam-sambil-minum-susu-berdampak-buruk-pada-kesehatan-benarkah', '', NULL, '2018-03-20', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Aturan Sarapan Tepat Khusus Pasien Obesitas dan Diebetes', '2018-03-20', 'http://health.okezone.com/read/2018/03/19/481/1875028/aturan-sarapan-tepat-khusus-pasien-obesitas-dan-diebetes', '', NULL, '2018-03-20', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Tak Harus Lakukan Styling, 6 Artis Ini Memiliki Rambut Keriting Alami Nan Indah', '2018-03-20', 'http://lifestyle.okezone.com/read/2018/03/19/194/1874993/tak-harus-lakukan-styling-6-artis-ini-memiliki-rambut-keriting-alami-nan-indah', '', NULL, '2018-03-20', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Kombinasi Jus Enak yang Bisa Tingkatkan Sistem Kekebalan Tubuh', '2018-03-20', 'http://health.okezone.com/read/2018/03/19/481/1875024/kombinasi-jus-enak-yang-bisa-tingkatkan-sistem-kekebalan-tubuh', '', NULL, '2018-03-20', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, '7 Destinasi yang Wajib Dikunjungi Ketika Di Jepang', '2018-03-19', 'http://travel.okezone.com/read/2018/03/19/406/1874983/7-destinasi-yang-wajib-dikunjungi-ketika-di-jepang', '', NULL, '2018-03-19', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Mi Goreng Mata Sapi Dipadu Oncom Kemangi, Lezatnya Luar Biasa ', '2018-03-19', 'http://www.okefood.com/read/2018/03/19/298/1874926/mi-goreng-mata-sapi-dipadu-oncom-kemangi-lezatnya-luar-biasa', '', NULL, '2018-03-19', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, '4 Manfaat Masker Apel Tuntaskan Masalah Kulit, Begini Cara Membuatnya Di Rumah', '2018-03-19', 'http://lifestyle.okezone.com/read/2018/03/19/194/1874964/4-manfaat-masker-apel-tuntaskan-masalah-kulit-begini-cara-membuatnya-di-rumah', '', NULL, '2018-03-19', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Catat! Ini Waktu & Kota Selain Pontianak yang Alami Hari Tanpa Bayangan', '2018-03-19', 'http://travel.okezone.com/read/2018/03/19/406/1874917/catat-ini-waktu-kota-selain-pontianak-yang-alami-hari-tanpa-bayangan', '', NULL, '2018-03-19', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Terungkap Wanita Berambut Panjang Lebih Menggairahkan di Ranjang', '2018-03-19', 'http://health.okezone.com/read/2018/03/19/481/1874913/terungkap-wanita-berambut-panjang-lebih-menggairahkan-di-ranjang', '', NULL, '2018-03-19', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Menaklukkan Gunung Aseupan Banten, Ini Sederet Tantangannya', '2018-03-19', 'http://travel.okezone.com/read/2018/03/19/406/1874987/menaklukkan-gunung-aseupan-banten-ini-sederet-tantangannya', '', NULL, '2018-03-19', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Tak Cuma Baju Koko, Kini Outer Jadi Tren Busana Muslim untuk Pria', '2018-03-19', 'http://lifestyle.okezone.com/read/2018/03/19/194/1874990/tak-cuma-baju-koko-kini-outer-jadi-tren-busana-muslim-untuk-pria', '', NULL, '2018-03-19', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Gurihnya Cheese Stick untuk Camilan Keluarga Tercinta ', '2018-03-19', 'http://www.okefood.com/read/2018/03/19/298/1875010/gurihnya-cheese-stick-untuk-camilan-keluarga-tercinta', '', NULL, '2018-03-19', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Bikin Roti Sering Gosong dan Bantat? Mungkin Ini Penyebabnya!', '2018-03-19', 'http://www.okefood.com/read/2018/03/19/298/1875037/bikin-roti-sering-gosong-dan-bantat-mungkin-ini-penyebabnya', '', NULL, '2018-03-19', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Sudah Teruji, 7 Bahan Alami Ini Ampuh Hilangkan Mata Panda', '2018-03-19', 'http://lifestyle.okezone.com/read/2018/03/19/194/1874901/sudah-teruji-7-bahan-alami-ini-ampuh-hilangkan-mata-panda', '', NULL, '2018-03-19', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Hanya 4 Persen Ibu yang Mengajarkan Kejujuran, Menteri Yohana: Nilai Moral Itu Lebih Penting', '2018-03-19', 'http://lifestyle.okezone.com/read/2018/03/19/196/1875057/hanya-4-persen-ibu-yang-mengajarkan-kejujuran-menteri-yohana-nilai-moral-itu-lebih-penting', '', NULL, '2018-03-19', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Malam Ini Enaknya Lahap Belut Masak Kecap atau Belut Goreng Tepung Panir', '2018-03-19', 'http://www.okefood.com/read/2018/03/19/298/1874999/malam-ini-enaknya-lahap-belut-masak-kecap-atau-belut-goreng-tepung-panir', '', NULL, '2018-03-19', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Paska Longsor, Pengunjung Tempat Wisata Puncak-Cipanas Masih Sedikit', '2018-03-19', 'http://travel.okezone.com/read/2018/03/19/406/1875034/paska-longsor-pengunjung-tempat-wisata-puncak-cipanas-masih-sedikit', '', NULL, '2018-03-19', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Dianggap Bulan Mulia, Ini 8 Nama Lain dari Bulan Rajab dan Artinya', '2018-03-19', 'http://lifestyle.okezone.com/read/2018/03/19/196/1874950/dianggap-bulan-mulia-ini-8-nama-lain-dari-bulan-rajab-dan-artinya', '', NULL, '2018-03-19', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Yuk, Lihat Pesawat Tanpa Awak Membelah Langit Khatulistiwa Saat Kulminasi Matahari', '2018-03-19', 'http://travel.okezone.com/read/2018/03/19/406/1875025/yuk-lihat-pesawat-tanpa-awak-membelah-langit-khatulistiwa-saat-kulminasi-matahari', '', NULL, '2018-03-19', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Citilink Perluas Penerbangan dengan Awak Kabin Berhijab', '2018-03-19', 'http://travel.okezone.com/read/2018/03/19/406/1875017/citilink-perluas-penerbangan-dengan-awak-kabin-berhijab', '', NULL, '2018-03-19', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Dari Casting Bareng hingga Jadi Teman Dekat, Inilah Sosok Chef Harada di Mata Chef Muto', '2018-03-19', 'http://www.okefood.com/read/2018/03/19/298/1874997/dari-casting-bareng-hingga-jadi-teman-dekat-inilah-sosok-chef-harada-di-mata-chef-muto', '', NULL, '2018-03-19', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Menemukan Air Terjun Banyumala yang Tersembunyi di Buleleng Bali', '2018-03-19', 'http://travel.okezone.com/read/2018/03/19/406/1874892/menemukan-air-terjun-banyumala-yang-tersembunyi-di-buleleng-bali', '', NULL, '2018-03-19', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Tahun 2018 Jumlah Peminum Kopi AS Jadi yang Tertinggi dalam 6 Tahun', '2018-03-19', 'http://www.okefood.com/read/2018/03/19/298/1874953/tahun-2018-jumlah-peminum-kopi-as-jadi-yang-tertinggi-dalam-6-tahun', '', NULL, '2018-03-19', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Ingin Bikin Pasangan Tersenyum Setiap Pagi? Simak 5 Tipsnya!', '2018-03-19', 'http://lifestyle.okezone.com/read/2018/03/19/196/1874931/ingin-bikin-pasangan-tersenyum-setiap-pagi-simak-5-tipsnya', '', NULL, '2018-03-19', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Terungkap! Belanja Online Bisa Bantu Atasi Stres ', '2018-03-19', 'http://lifestyle.okezone.com/read/2018/03/19/194/1874942/terungkap-belanja-online-bisa-bantu-atasi-stres', '', NULL, '2018-03-19', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Cara Aktor Ario Bayu Menjaga Kebugaran Tubuh', '2018-03-19', 'http://health.okezone.com/read/2018/03/19/481/1874812/cara-aktor-ario-bayu-menjaga-kebugaran-tubuh', '', NULL, '2018-03-19', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Intip Rancangan Busana Muslim yang Terinspirasi dari Jalan Braga, Bandung', '2018-03-19', 'http://lifestyle.okezone.com/read/2018/03/19/194/1874979/intip-rancangan-busana-muslim-yang-terinspirasi-dari-jalan-braga-bandung', '', NULL, '2018-03-19', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Begini Liburan Mewah Maia Estianty di Prancis, Outfit Fashion-nya Capai Ratusan Juta!', '2018-03-19', 'http://lifestyle.okezone.com/read/2018/03/19/194/1874975/begini-liburan-mewah-maia-estianty-di-prancis-outfit-fashion-nya-capai-ratusan-juta', '', NULL, '2018-03-19', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Anjing Ini Jadi Viral di Medsos karena Wajahnya Mirip Manusia!', '2018-03-19', 'http://lifestyle.okezone.com/read/2018/03/19/196/1874972/anjing-ini-jadi-viral-di-medsos-karena-wajahnya-mirip-manusia', '', NULL, '2018-03-19', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Ingin Berwisata Kuliner di Jepang? Ini 5 Tipsnya!', '2018-03-19', 'http://www.okefood.com/read/2018/03/19/298/1874825/ingin-berwisata-kuliner-di-jepang-ini-5-tipsnya', '', NULL, '2018-03-19', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, '5 Peristiwa Luar Biasa Terjadi pada Bulan Rajab', '2018-03-19', 'http://lifestyle.okezone.com/read/2018/03/19/196/1874938/5-peristiwa-luar-biasa-terjadi-pada-bulan-rajab', '', NULL, '2018-03-19', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Chef Muto Ungkapkan Kesedihan Ditinggal Sosok Chef Harada', '2018-03-19', 'http://www.okefood.com/read/2018/03/19/298/1874940/chef-muto-ungkapkan-kesedihan-ditinggal-sosok-chef-harada', '', NULL, '2018-03-19', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Admin Medsos Masuk Islam Setelah Pemain Bola Favoritnya Cetak 4 Gol', '2018-03-19', 'http://lifestyle.okezone.com/read/2018/03/19/196/1874933/admin-medsos-masuk-islam-setelah-pemain-bola-favoritnya-cetak-4-gol', '', NULL, '2018-03-19', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Keunikan Pulau Tasipi, Mulai Penduduk hingga Bentang Alamnya', '2018-03-19', 'http://travel.okezone.com/read/2018/03/19/406/1874801/keunikan-pulau-tasipi-mulai-penduduk-hingga-bentang-alamnya', '', NULL, '2018-03-19', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'The 99! Komik Tentang Pahlawan Super Muslim', '2018-03-19', 'http://lifestyle.okezone.com/read/2018/03/19/196/1874887/the-99-komik-tentang-pahlawan-super-muslim', '', NULL, '2018-03-19', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, '5 Makanan yang Ampuh Mencegah Gangguan Otot Lambung seperti yang Diderita Chef Harada', '2018-03-19', 'http://health.okezone.com/read/2018/03/19/481/1874895/5-makanan-yang-ampuh-mencegah-gangguan-otot-lambung-seperti-yang-diderita-chef-harada', '', NULL, '2018-03-19', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Pemilihan Miss KidZania 2018 Tingkatkan Kepedulian Terhadap Komunitas', '2018-03-19', '/read/2018/03/19/557/1874890/pemilihan-miss-kidzania-2018-tingkatkan-kepedulian-terhadap-komunitas', '', NULL, '2018-03-19', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Wali Kota Liverpool Mlaku-Mlaku Nang Tunjungan', '2018-03-19', 'http://travel.okezone.com/read/2018/03/19/406/1874875/wali-kota-liverpool-mlaku-mlaku-nang-tunjungan', '', NULL, '2018-03-19', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Dari Mualaf hingga Senyum Khasnya, Ini 5 Fakta Menarik Chef Harada', '2018-03-19', 'http://www.okefood.com/read/2018/03/19/298/1874871/dari-mualaf-hingga-senyum-khasnya-ini-5-fakta-menarik-chef-harada', '', NULL, '2018-03-19', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Cara Mudah agar Kamar Hotel Tetap Menyala Tanpa Kunci Kartu', '2018-03-19', 'http://travel.okezone.com/read/2018/03/19/406/1874793/cara-mudah-agar-kamar-hotel-tetap-menyala-tanpa-kunci-kartu', '', NULL, '2018-03-19', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Hutan Lindung Boven Lais, Surga Pecinta Bunga Langka', '2018-03-19', 'http://travel.okezone.com/read/2018/03/19/406/1874850/hutan-lindung-boven-lais-surga-pecinta-bunga-langka', '', NULL, '2018-03-19', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Hot Chocolate Seenak di Kafe? Ikuti Cara Ini', '2018-03-19', 'http://www.okefood.com/read/2018/03/19/298/1874842/hot-chocolate-seenak-di-kafe-ikuti-cara-ini', '', NULL, '2018-03-19', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Warisan Majapahit di Kedung Bocok Bakal Dijadikan Destinasi Wisata', '2018-03-19', 'http://travel.okezone.com/read/2018/03/19/406/1874838/warisan-majapahit-di-kedung-bocok-bakal-dijadikan-destinasi-wisata', '', NULL, '2018-03-19', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Perkenalkan Organ Vital ke Anak dengan Sebutan Lain, Apa Dampaknya?', '2018-03-19', 'http://lifestyle.okezone.com/read/2018/03/19/196/1874827/perkenalkan-organ-vital-ke-anak-dengan-sebutan-lain-apa-dampaknya', '', NULL, '2018-03-19', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, '7 Trik Seputar Memasak yang Wajib Anda Tahu, Mengupas Bawang Praktis Salah Satunya', '2018-03-19', 'http://www.okefood.com/read/2018/03/19/298/1874759/7-trik-seputar-memasak-yang-wajib-anda-tahu-mengupas-bawang-praktis-salah-satunya', '', NULL, '2018-03-19', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, '4 Penyebab Utama Kematian Ibu Usai Melahirkan, Mulai dari Infeksi hingga Pendarahan', '2018-03-19', 'http://health.okezone.com/read/2018/03/19/481/1874823/4-penyebab-utama-kematian-ibu-usai-melahirkan-mulai-dari-infeksi-hingga-pendarahan', '', NULL, '2018-03-19', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Kenali Penyakit Gangguan Otot Lambung yang Diderita Chef Harada Sebelum Tutup Usia', '2018-03-19', 'http://health.okezone.com/read/2018/03/19/481/1874817/kenali-penyakit-gangguan-otot-lambung-yang-diderita-chef-harada-sebelum-tutup-usia', '', NULL, '2018-03-19', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Bunda, Cegah Nyamuk DBD Bersarang dengan Sering Menata Ulang Ruangan', '2018-03-19', 'http://health.okezone.com/read/2018/03/19/481/1874816/bunda-cegah-nyamuk-dbd-bersarang-dengan-sering-menata-ulang-ruangan', '', NULL, '2018-03-19', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Chef Harada Tutup Usia, Intip Lagi Kreasi Masakannya yang Bikin Ngiler & Menggemaskan', '2018-03-19', 'http://www.okefood.com/read/2018/03/19/298/1874807/chef-harada-tutup-usia-intip-lagi-kreasi-masakannya-yang-bikin-ngiler-menggemaskan', '', NULL, '2018-03-19', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Istri Opick Meninggal Dunia Pasca-Keguguran, Menkes Nila Jelaskan Angka Kematian Ibu di Indonesia', '2018-03-19', 'http://health.okezone.com/read/2018/03/19/481/1874805/istri-opick-meninggal-dunia-pasca-keguguran-menkes-nila-jelaskan-angka-kematian-ibu-di-indonesia', '', NULL, '2018-03-19', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Fakta dan Sejarah Mengapa Bulan Rajab Begitu Istimewa', '2018-03-19', 'http://lifestyle.okezone.com/read/2018/03/19/196/1874788/fakta-dan-sejarah-mengapa-bulan-rajab-begitu-istimewa', '', NULL, '2018-03-19', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Perbanyak Event Berstandar Global, Cara Ampuh Tarik Minat Wisatawan ke Indonesia', '2018-03-19', 'http://travel.okezone.com/read/2018/03/19/406/1874768/perbanyak-event-berstandar-global-cara-ampuh-tarik-minat-wisatawan-ke-indonesia', '', NULL, '2018-03-19', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, '5 Hotel yang Ternyata Dimiliki Selebriti Hollywood, Salah Satunya Bikin Club Malam!', '2018-03-19', 'http://travel.okezone.com/read/2018/03/19/406/1874761/5-hotel-yang-ternyata-dimiliki-selebriti-hollywood-salah-satunya-bikin-club-malam', '', NULL, '2018-03-19', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Rahasia di Balik Kecantikan dan Penampilan Alicia Vikander', '2018-03-19', 'http://lifestyle.okezone.com/read/2018/03/19/194/1874749/rahasia-di-balik-kecantikan-dan-penampilan-alicia-vikander', '', NULL, '2018-03-19', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Air Minum Aqua dan Nestle Mengandung Mikroplastik, Ini Komentar Menkes Nila ', '2018-03-19', 'http://health.okezone.com/read/2018/03/19/481/1874748/air-minum-aqua-dan-nestle-mengandung-mikroplastik-ini-komentar-menkes-nila', '', NULL, '2018-03-19', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, '5 Kebiasaan yang Ampuh Membakar Lemak Perut dengan Cepat', '2018-03-19', 'http://health.okezone.com/read/2018/03/19/481/1874734/5-kebiasaan-yang-ampuh-membakar-lemak-perut-dengan-cepat', '', NULL, '2018-03-19', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Kafe Jembatan Harapan Maerakaca, Wisata Kuliner dengan Pemandangan yang Menyejukkan Mata', '2018-03-19', '/read/2018/03/19/557/1874712/kafe-jembatan-harapan-maerakaca-wisata-kuliner-dengan-pemandangan-yang-menyejukkan-mata', '', NULL, '2018-03-19', '', 'GAYA HIDUP', '', '');
INSERT INTO `rssnews` (`item_id`, `feed_url`, `item_content`, `item_title`, `item_date`, `item_url`, `item_status`, `item_category_id`, `fetch_date`, `img_url`, `kategori`, `thumbnail`, `prety_url`) VALUES
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Sering Nyeri saat Haid, Waspadai 7 Gejala Gangguan Kesehatan Mulai Tumor hingga Infeksi Rahim', '2018-03-19', 'http://health.okezone.com/read/2018/03/19/481/1874708/sering-nyeri-saat-haid-waspadai-7-gejala-gangguan-kesehatan-mulai-tumor-hingga-infeksi-rahim', '', NULL, '2018-03-19', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'MATTA Fair 2018 Momentum Paling Potensial Gaet Wisman dari Malaysia', '2018-03-19', 'http://travel.okezone.com/read/2018/03/19/406/1874707/matta-fair-2018-momentum-paling-potensial-gaet-wisman-dari-malaysia', '', NULL, '2018-03-19', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Begini Cara Maluku Tenggara Atasi Sampah di Obyek Wisata', '2018-03-19', 'http://travel.okezone.com/read/2018/03/19/406/1874696/begini-cara-maluku-tenggara-atasi-sampah-di-obyek-wisata', '', NULL, '2018-03-19', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Tidur saat Lampu Menyala Dapat Menyebabkan Obesitas dan Risiko Kanker Payudara', '2018-03-19', 'http://health.okezone.com/read/2018/03/19/481/1874690/tidur-saat-lampu-menyala-dapat-menyebabkan-obesitas-dan-risiko-kanker-payudara', '', NULL, '2018-03-19', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Berpegangan Tangan dengan Orang Terkasih Bisa Redakan Nyeri', '2018-03-19', 'http://health.okezone.com/read/2018/03/19/481/1874688/berpegangan-tangan-dengan-orang-terkasih-bisa-redakan-nyeri', '', NULL, '2018-03-19', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Jangan Diabaikan, Ini 9 Fakta Tentang Flu!', '2018-03-19', 'http://health.okezone.com/read/2018/03/19/481/1874680/jangan-diabaikan-ini-9-fakta-tentang-flu', '', NULL, '2018-03-19', '', 'GAYA HIDUP', '', ''),
('0d192a4a3c232251c7fafa247deaaa2c', 'http://sindikasi.okezone.com/index.php/lifestyle/RSS2.0', NULL, 'Terima Kasih Mama: Penyesalan Anak yang Menyembunyikan Asal Usul Indonesianya', '2018-03-19', 'http://lifestyle.okezone.com/read/2018/03/19/196/1874676/terima-kasih-mama-penyesalan-anak-yang-menyembunyikan-asal-usul-indonesianya', '', NULL, '2018-03-19', '', 'GAYA HIDUP', '', ''),
('a2ffa81018199e99baea52273e343eec', 'http://www.jitunews.com/rss', NULL, 'BAB dengan Cara Jongkok, Itu Lebih Sehat lho...', '2018-03-21', 'http://www.jitunews.com/read/76721/bab-dengan-cara-jongkok-itu-lebih-sehat-lho', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('a2ffa81018199e99baea52273e343eec', 'http://www.jitunews.com/rss', NULL, '&amp;quot;Nggak Ada Kamus Politisi Sekelas Amien Rais Meminta Maaf&amp;quot;', '2018-03-21', 'http://www.jitunews.com/read/76720/quot-nggak-ada-kamus-politisi-sekelas-amien-rais-meminta-maaf-quot', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('a2ffa81018199e99baea52273e343eec', 'http://www.jitunews.com/rss', NULL, 'PAN Beberkan Maksud Ucapan Amien Rais yang Menyebut Jokowi Ngibul', '2018-03-21', 'http://www.jitunews.com/read/76719/pan-beberkan-maksud-ucapan-amien-rais-yang-menyebut-jokowi-ngibul', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('a2ffa81018199e99baea52273e343eec', 'http://www.jitunews.com/rss', NULL, 'Tak Mau Didesak Soal TGUPP, Anies: Santai Saja Dulu', '2018-03-21', 'http://www.jitunews.com/read/76718/tak-mau-didesak-soal-tgupp-anies-santai-saja-dulu', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('a2ffa81018199e99baea52273e343eec', 'http://www.jitunews.com/rss', NULL, 'TGUPP Disebut Tim Sukses Anies-Sandi, Ketua: Nggaklah', '2018-03-21', 'http://www.jitunews.com/read/76717/tgupp-disebut-tim-sukses-anies-sandi-ketua-nggaklah', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('a2ffa81018199e99baea52273e343eec', 'http://www.jitunews.com/rss', NULL, 'OASE Gelar Sosialisasi Anti Narkoba', '2018-03-21', 'http://www.jitunews.com/read/76716/oase-gelar-sosialisasi-anti-narkoba', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('a2ffa81018199e99baea52273e343eec', 'http://www.jitunews.com/rss', NULL, 'Ketegangan Arab Saudi-Iran, Pernyataan Pangeran MBS Mengerikan Soal Nuklir', '2018-03-20', 'http://www.jitunews.com/read/76715/ketegangan-arab-saudi-iran-pernyataan-pangeran-mbs-mengerikan-soal-nuklir', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('a2ffa81018199e99baea52273e343eec', 'http://www.jitunews.com/rss', NULL, '&amp;quot;Wajar Jika Luhut Tersulut Emosi karena Kritikan Amien Rais&amp;quot;', '2018-03-20', 'http://www.jitunews.com/read/76714/quot-wajar-jika-luhut-tersulut-emosi-karena-kritikan-amien-rais-quot', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('a2ffa81018199e99baea52273e343eec', 'http://www.jitunews.com/rss', NULL, 'Anies Bungkam Soal Temuan Ombudsman Terkait Jalan Jatibaru', '2018-03-20', 'http://www.jitunews.com/read/76713/anies-bungkam-soal-temuan-ombudsman-terkait-jalan-jatibaru', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('a2ffa81018199e99baea52273e343eec', 'http://www.jitunews.com/rss', NULL, 'Relawan Jokowi Kecewa, Gerindra: Mereka Sadar Salah Dukung Jokowi', '2018-03-20', 'http://www.jitunews.com/read/76712/relawan-jokowi-kecewa-gerindra-mereka-sadar-salah-dukung-jokowi', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('a2ffa81018199e99baea52273e343eec', 'http://www.jitunews.com/rss', NULL, 'Fahri Hamzah Bela Amien Rais Begini Soal Kritik Jokowi', '2018-03-20', 'http://www.jitunews.com/read/76709/fahri-hamzah-bela-amien-rais-begini-soal-kritik-jokowi', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('a2ffa81018199e99baea52273e343eec', 'http://www.jitunews.com/rss', NULL, 'Jusuf Kalla Bicara Soal Cawapres Jokowi', '2018-03-20', 'http://www.jitunews.com/read/76708/jusuf-kalla-bicara-soal-cawapres-jokowi', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('a2ffa81018199e99baea52273e343eec', 'http://www.jitunews.com/rss', NULL, 'Bupati Sragen Sampaikan 10 Usulan Prioritas Pembangunan di Musrenbangwil', '2018-03-20', 'http://www.jitunews.com/read/76711/bupati-sragen-sampaikan-10-usulan-prioritas-pembangunan-di-musrenbangwil', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('a2ffa81018199e99baea52273e343eec', 'http://www.jitunews.com/rss', NULL, 'Waketum Partai Republik: Komisioner KPU dan Bawaslu Adalah Penjahat Demokrasi', '2018-03-20', 'http://www.jitunews.com/read/76710/waketum-partai-republik-komisioner-kpu-dan-bawaslu-adalah-penjahat-demokrasi', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('a2ffa81018199e99baea52273e343eec', 'http://www.jitunews.com/rss', NULL, 'Paus Fransiskus Tegaskan Prostitusi sebagai Bentuk Penyiksaan pada Wanita', '2018-03-20', 'http://www.jitunews.com/read/76707/paus-fransiskus-tegaskan-prostitusi-sebagai-bentuk-penyiksaan-pada-wanita', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('a2ffa81018199e99baea52273e343eec', 'http://www.jitunews.com/rss', NULL, 'Kasus Pelaporan Pengacara Novanto, SBY Diperiksa sebagai Saksi di Cikeas', '2018-03-20', 'http://www.jitunews.com/read/76706/kasus-pelaporan-pengacara-novanto-sby-diperiksa-sebagai-saksi-di-cikeas', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('a2ffa81018199e99baea52273e343eec', 'http://www.jitunews.com/rss', NULL, 'Acara KPK di Jambi Dibuka Zumi Zola, ICW: Sulit Dipahami Akal Sehat', '2018-03-20', 'http://www.jitunews.com/read/76705/acara-kpk-di-jambi-dibuka-zumi-zola-icw-sulit-dipahami-akal-sehat', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('a2ffa81018199e99baea52273e343eec', 'http://www.jitunews.com/rss', NULL, 'Amien Rais Kritik Jokowi dan Singgung PKI, Panglima TNI: PKI sudah Bubar', '2018-03-20', 'http://www.jitunews.com/read/76704/amien-rais-kritik-jokowi-dan-singgung-pki-panglima-tni-pki-sudah-bubar', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('a2ffa81018199e99baea52273e343eec', 'http://www.jitunews.com/rss', NULL, 'Luhut Akan Bongkar Dosa Amien Rais, PAN: Bapak Reformasi Kok Diancam', '2018-03-20', 'http://www.jitunews.com/read/76703/luhut-akan-bongkar-dosa-amien-rais-pan-bapak-reformasi-kok-diancam', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('a2ffa81018199e99baea52273e343eec', 'http://www.jitunews.com/rss', NULL, 'Bertemu Diaspora Indonesia di Selandia Baru, Jokowi Paparkan Upaya Pemerintah Bangun Papua', '2018-03-20', 'http://www.jitunews.com/read/76702/bertemu-diaspora-indonesia-di-selandia-baru-jokowi-paparkan-upaya-pemerintah-bangun-papua', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Paramitha Rusady dan Ridwan Kamil Mengenang 23 Tahun Wafatnya Nike Ardilla', '2018-03-21', 'https://www.bintang.com/celeb/read/3391225/paramitha-rusady-dan-ridwan-kamil-mengenang-23-tahun-wafatnya-nike-ardilla', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Ungkap Kepribadian dari Cara Kamu Melipat Tangan', '2018-03-21', 'https://www.bintang.com/unique/read/3392781/ungkap-kepribadian-dari-cara-kamu-melipat-tangan', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Alasan Opick Tak Ceraikan Wulan Mayasari hingga Akhir Hayat', '2018-03-21', 'https://www.bintang.com/celeb/read/3391868/alasan-opick-tak-ceraikan-wulan-mayasari-hingga-akhir-hayat', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Tips unik, Ini Rahasia Tetap Cantik Saat Mengendarai Motor', '2018-03-21', 'https://www.bintang.com/beauty/read/3392884/tips-unik-ini-rahasia-tetap-cantik-saat-mengendarai-motor', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Biasa Tampil Sederhana, Dian Sastro Tampil Glamor saat Ultah ke 36', '2018-03-21', 'https://www.bintang.com/celeb/read/3391707/biasa-tampil-sederhana-dian-sastro-tampil-glamor-saat-ultah-ke-36', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Prilly Latuconsina Akui Beberapa Adegan Akting Sulit di Danur 2', '2018-03-21', 'https://www.bintang.com/celeb/read/3392033/prilly-latuconsina-akui-beberapa-adegan-akting-sulit-di-danur-2', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Aura Kasih Jadi Takut Nikah Karena Arini', '2018-03-21', 'https://www.bintang.com/celeb/read/3391745/aura-kasih-jadi-takut-nikah-karena-arini', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Reaksi Lyra Virna saat Ditetapkan Menjadi Tersangka', '2018-03-21', 'http://celeb.liputan6.com/read/3393017/reaksi-lyra-virna-saat-ditetapkan-menjadi-tersangka', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Mommy Kece Zaman Now, Intip Potret Sabai Morscheck Dulu dan Sekarang', '2018-03-21', 'http://beauty.liputan6.com/read/3393226/mommy-kece-zaman-now-intip-potret-sabai-morscheck-dulu-dan-sekarang', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Tak Kalah Tampan, Intip 5 Potret Pesona Anak Shahrukh Khan', '2018-03-21', 'https://www.bintang.com/celeb/read/3393000/tak-kalah-tampan-intip-5-potret-pesona-anak-shahrukh-khan', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Tunjukkan Body Goals, Intip Gaya Edgy Raisa dengan Outfit Monokrom di Negeri Sakura', '2018-03-21', 'http://style.liputan6.com/read/3393015/tunjukkan-body-goals-intip-gaya-edgy-raisa-dengan-outfit-monokrom-di-negeri-sakura', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Ada Typo! Ini Penampakan Surat Lamaran Kerja Steve Jobs yang Terjual Rp 2,3 Miliar', '2018-03-21', 'http://lifestyle.liputan6.com/read/3393130/ada-typo-ini-penampakan-surat-lamaran-kerja-steve-jobs-yang-terjual-rp-23-miliar', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Lirik Lagu Wanna One, Boomerang', '2018-03-21', 'http://celeb.liputan6.com/read/3393293/lirik-lagu-wanna-one-boomerang', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Soal Masalah Cadar dan Diskriminasi di Bandara, Begini Klarifikasi Kartika Putri', '2018-03-21', 'http://celeb.liputan6.com/read/3391629/soal-masalah-cadar-dan-diskriminasi-di-bandara-begini-klarifikasi-kartika-putri', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Bikin Pangling, Ini 18 Foto Jadul Artis Indonesia', '2018-03-21', 'http://celeb.liputan6.com/read/3391660/bikin-pangling-ini-18-foto-jadul-artis-indonesia', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, '5 Fakta Film Terbaru Chelsea Islan dan Pevita Pearce', '2018-03-21', 'https://www.bintang.com/celeb/read/3391891/5-fakta-film-terbaru-chelsea-islan-dan-pevita-pearce', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Lyra Virna Tersangka, Pengacara Duga Ada Kejanggalan', '2018-03-21', 'http://celeb.liputan6.com/read/3391421/lyra-virna-tersangka-pengacara-duga-ada-kejanggalan', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Personel BigBang Wajib Militer, Seungri Malah Bahagia', '2018-03-21', 'https://www.bintang.com/celeb/read/3392264/personel-bigbang-wajib-militer-seungri-malah-bahagia', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Nagita Slavina, Ayu Dewi, Chacha Frederica dan Nindy Pose Bersama, Apakah Bentuk Geng Baru?', '2018-03-21', 'http://style.liputan6.com/read/3391806/nagita-slavina-ayu-dewi-chacha-frederica-dan-nindy-pose-bersama-apakah-bentuk-geng-baru', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Berbadan Kekar dan Berwajah Ganteng, Pria Ini Malah Hobi Banget Pakai Dress dan High Heels', '2018-03-21', 'http://lifestyle.liputan6.com/read/3393020/berbadan-kekar-dan-berwajah-ganteng-pria-ini-malah-hobi-banget-pakai-dress-dan-high-heels', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Hari Tanpa Bayangan, Ini Hal yang Perlu Diwaspadai', '2018-03-21', 'http://lifestyle.liputan6.com/read/3393106/hari-tanpa-bayangan-ini-hal-yang-perlu-diwaspadai', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Janji Seolhyun Pasca Foto Editan Bugilnya Tersebar', '2018-03-21', 'https://www.bintang.com/celeb/read/3392996/janji-seolhyun-pasca-foto-editan-bugilnya-tersebar', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Siapa Guillermo Haro yang Muncul di Google Doodle Hari ini?', '2018-03-21', 'http://lifestyle.liputan6.com/read/3393007/siapa-guillermo-haro-yang-muncul-di-google-doodle-hari-ini', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Kedapatan Merokok, Dian Sastro Angkat Bicara', '2018-03-21', 'https://www.bintang.com/celeb/read/3391619/kedapatan-merokok-dian-sastro-angkat-bicara', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Ulang Tahun Hari Ini: Rani Mukerji dan 2 Publik Figur Lainnya', '2018-03-21', 'http://unique.liputan6.com/read/3390643/ulang-tahun-hari-ini-rani-mukerji-dan-2-publik-figur-lainnya', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Eksklusif, Kematangan Cinta Refleksi 21 Tahun The Groove', '2018-03-21', 'http://celeb.liputan6.com/read/3392346/eksklusif-kematangan-cinta-refleksi-21-tahun-the-groove', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Ivan Gunawan akan Melamar Ayu Ting Ting Akhir Maret Ini?', '2018-03-21', 'https://www.bintang.com/celeb/read/3391742/ivan-gunawan-akan-melamar-ayu-ting-ting-akhir-maret-ini', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Sarwendah Alami Kejadian Mistis Main Film Horor Perdana', '2018-03-21', 'https://www.bintang.com/celeb/read/3391897/sarwendah-alami-kejadian-mistis-main-film-horor-perdana', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Lewat Film Darah dan Doa, Usmar Ismail Jadi Bapak Perfilman Nasional', '2018-03-21', 'https://www.bintang.com/celeb/read/3391708/lewat-film-darah-dan-doa-usmar-ismail-jadi-bapak-perfilman-nasional', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Dijodohkan Penggemar dengan Rizky Nazar, Cut Syifa Tersipu', '2018-03-21', 'https://www.bintang.com/celeb/read/3391276/dijodohkan-penggemar-dengan-rizky-nazar-cut-syifa-tersipu', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Nafa Urbach Main Film Horor Setelah Lima Tahun Selalu Menolak', '2018-03-21', 'https://www.bintang.com/celeb/read/3391759/nafa-urbach-main-film-horor-setelah-lima-tahun-selalu-menolak', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Zodiak Hari Ini: Simak Peruntungan Kamu di 21 Maret 2018', '2018-03-21', 'http://unique.liputan6.com/read/3390904/zodiak-hari-ini-simak-peruntungan-kamu-di-21-maret-2018', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Potret Kece Maia Estianty Liburan di Perancis', '2018-03-21', 'https://www.bintang.com/celeb/read/3391088/potret-kece-maia-estianty-liburan-di-perancis', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Sederet Fakta Usai Istri Kedua Opick Meninggal Dunia', '2018-03-21', 'https://www.bintang.com/celeb/read/3390672/sederet-fakta-usai-istri-kedua-opick-meninggal-dunia', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Tatapan dan Ucapan Vanno, Buat Asmirandah Berlinang Air Mata', '2018-03-21', 'https://www.bintang.com/celeb/read/3391201/tatapan-dan-ucapan-vanno-buat-asmirandah-berlinang-air-mata', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Jahat, Ini Alasan Kenapa Harus Stop Makan Roti Putih', '2018-03-21', 'http://sex-health.liputan6.com/read/3392787/jahat-ini-alasan-kenapa-harus-stop-makan-roti-putih', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, '5 Perjalanan Fifth Harmony, Raih Sukses hingga Memilih Vakum', '2018-03-21', 'https://www.bintang.com/celeb/read/3391561/5-perjalanan-fifth-harmony-raih-sukses-hingga-memilih-vakum', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Goyangan Erotis Ayu Ting Ting di Depan Raffi Ahmad', '2018-03-21', 'https://www.bintang.com/celeb/read/3391616/goyangan-erotis-ayu-ting-ting-di-depan-raffi-ahmad', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Tampannya Lee Min Hoo Dalam Balutan Seragam Militer', '2018-03-21', 'https://www.bintang.com/celeb/read/3392163/tampannya-lee-min-hoo-dalam-balutan-seragam-militer', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Nobar Film Guru Ngaji dengan Anak Yatim Donny Damara Antusias', '2018-03-21', 'https://www.bintang.com/celeb/read/3391576/nobar-film-guru-ngaji-dengan-anak-yatim-donny-damara-antusias', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, '8 Idol K-pop yang Dianggap Pelit oleh Grupnya', '2018-03-21', 'https://www.bintang.com/celeb/read/3391317/8-idol-k-pop-yang-dianggap-pelit-oleh-grupnya', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Tessa Kaunang dan Sandy Tumiwa Batal Berdamai', '2018-03-21', 'https://www.bintang.com/celeb/read/3390402/tessa-kaunang-dan-sandy-tumiwa-batal-berdamai', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Ashanty Curhat Soal Anang Hermansyah', '2018-03-21', 'https://www.bintang.com/celeb/read/3391046/ashanty-curhat-soal-anang-hermansyah', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Kompak, Ini 8 Foto Keluarga Ryan Delon yang Jauh dari Gosip', '2018-03-21', 'https://www.bintang.com/celeb/read/3391417/kompak-ini-8-foto-keluarga-ryan-delon-yang-jauh-dari-gosip', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Duo Bijaksana Jatuh Kepada Zodiak ...', '2018-03-21', 'http://unique.liputan6.com/read/3392256/duo-bijaksana-jatuh-kepada-zodiak', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Makin Nyetrik, Ini Gaya Terbaru Agnez Mo dengan Rambut Pendek', '2018-03-21', 'https://www.bintang.com/celeb/read/3391607/makin-nyetrik-ini-gaya-terbaru-agnez-mo-dengan-rambut-pendek', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Hilangkan Bekas Jerawat dalam 1 Hari dengan 7 Cara Ini', '2018-03-21', 'http://beauty.liputan6.com/read/3392870/hilangkan-bekas-jerawat-dalam-1-hari-dengan-7-cara-ini', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Anak Keempat Zaskia Adya Mecca Bayi Laki-Laki?', '2018-03-21', 'https://www.bintang.com/celeb/read/3390899/anak-keempat-zaskia-adya-mecca-bayi-laki-laki', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Selain Menyanyi, 8 Idol K-pop Ini Jago Bela Diri', '2018-03-21', 'https://www.bintang.com/celeb/read/3391172/selain-menyanyi-8-idol-k-pop-ini-jago-bela-diri', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Krisdayanti dan Raul Lemos Hadir di Perayaan Ulang Tahun Anang Hermansyah', '2018-03-20', 'https://www.bintang.com/celeb/read/3390911/krisdayanti-dan-raul-lemos-hadir-di-perayaan-ulang-tahun-anang-hermansyah', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, '4 Zodiak Ini Laganya Udah Kayak Bos, Padahal Bukan', '2018-03-20', 'http://unique.liputan6.com/read/3392251/4-zodiak-ini-laganya-udah-kayak-bos-padahal-bukan', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Mengharukan Saat Opick Bicara Soal Istri Kedua, Wulan Mayasari', '2018-03-20', 'https://www.bintang.com/celeb/read/3390915/mengharukan-saat-opick-bicara-soal-istri-kedua-wulan-mayasari', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Bisa Dijadikan Masker Wajah, 8 Bahan Makanan Ini Patut Dicoba', '2018-03-20', 'http://beauty.liputan6.com/read/3392783/bisa-dijadikan-masker-wajah-8-bahan-makanan-ini-patut-dicoba', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Potret Kekompakan Zaskia dan Shireen Sungkar di Pernikahan Adik Bungsu', '2018-03-20', 'https://www.bintang.com/celeb/read/3390901/potret-kekompakan-zaskia-dan-shireen-sungkar-di-pernikahan-adik-bungsu', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Pasca Liburan, Stuart Collin Pamer Kemesraan Lagi Bersama Wanita Ini', '2018-03-20', 'https://www.bintang.com/celeb/read/3388459/pasca-liburan-stuart-collin-pamer-kemesraan-lagi-bersama-wanita-ini', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Diet Pisang, Jurus Ampuh yang Bikin Langsing dan Cantik', '2018-03-20', 'http://sex-health.liputan6.com/read/3392777/diet-pisang-jurus-ampuh-yang-bikin-langsing-dan-cantik', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Kerap Tampil Menggemaskan, Ini Deretan Anak Artis Paling Fotogenik', '2018-03-20', 'https://www.bintang.com/celeb/read/3390872/kerap-tampil-menggemaskan-ini-deretan-anak-artis-paling-fotogenik', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Kenapa KK Pakai Istilah Kartu dan SIM Disebut Surat? Ini Alasannya', '2018-03-20', 'http://lifestyle.liputan6.com/read/3391382/kenapa-kk-pakai-istilah-kartu-dan-sim-disebut-surat-ini-alasannya', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Nikita Mirzani Liburan Bareng Dipo Latief di Maldives', '2018-03-20', 'https://www.bintang.com/celeb/read/3391739/nikita-mirzani-liburan-bareng-dipo-latief-di-maldives', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Jelang Pemilu, Istri Amitabh Bachchan Lapor Kekayaan hingga Rp 2 Triliun', '2018-03-20', 'https://www.bintang.com/celeb/read/3390683/jelang-pemilu-istri-amitabh-bachchan-lapor-kekayaan-hingga-rp-2-triliun', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Tidak Hanya Peduli Akan Penampilan, Ternyata Shandy Aulia Sangat Merawat Pakaiannya', '2018-03-20', 'http://style.liputan6.com/read/3391715/tidak-hanya-peduli-akan-penampilan-ternyata-shandy-aulia-sangat-merawat-pakaiannya', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Mengintip Penampakan Undangan Pernikahan Poppy Sovia yang Unik', '2018-03-20', 'https://www.bintang.com/celeb/read/3390822/mengintip-penampakan-undangan-pernikahan-poppy-sovia-yang-unik', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Aneh, Facial Penis Kini Marak di Kalangan Artis', '2018-03-20', 'http://sex-health.liputan6.com/read/3392776/aneh-facial-penis-kini-marak-di-kalangan-artis', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Cewek Ini Bikin Ayahnya Dipecat Gara-gara Unboxing iPhone X di Youtube', '2018-03-20', 'http://lifestyle.liputan6.com/read/3391267/cewek-ini-bikin-ayahnya-dipecat-gara-gara-unboxing-iphone-x-di-youtube', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Kylie Jenner Bantu Rob Kardashian Turunkan Berat Badan', '2018-03-20', 'https://www.bintang.com/celeb/read/3390895/kylie-jenner-bantu-rob-kardashian-turunkan-berat-badan', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Penilaian Opick, Wulan Mayasari Manusia Mulia dan Ahli Sorga', '2018-03-20', 'https://www.bintang.com/celeb/read/3390727/penilaian-opick-wulan-mayasari-manusia-mulia-dan-ahli-sorga', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Usai Lepas Hijab, Rina Nose Tampil Edgy dengan Gaya Rambut Cornrows', '2018-03-20', 'http://beauty.liputan6.com/read/3392143/usai-lepas-hijab-rina-nose-tampil-edgy-dengan-gaya-rambut-cornrows', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Jangan Salah, Ini Waktu yang Tepat Untuk Membeli Sepatu', '2018-03-20', 'http://style.liputan6.com/read/3391608/jangan-salah-ini-waktu-yang-tepat-untuk-membeli-sepatu', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Bukan Alergi, Ini Alasannya Kenapa Kamu Sering Pilek', '2018-03-20', 'http://sex-health.liputan6.com/read/3392774/bukan-alergi-ini-alasannya-kenapa-kamu-sering-pilek', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Berangkat Umrah, Nikita Mirzani Bakal Menikah di Tanah Suci?', '2018-03-20', 'https://www.bintang.com/celeb/read/3390712/berangkat-umrah-nikita-mirzani-bakal-menikah-di-tanah-suci', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Bukti Cinta Sampai Mati, Kakek Ini Cari dan Bawakan Kue untuk Istri yang Telah Tiada', '2018-03-20', 'http://lifestyle.liputan6.com/read/3391234/bukti-cinta-sampai-mati-kakek-ini-cari-dan-bawakan-kue-untuk-istri-yang-telah-tiada', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Kalah Lawan SM Entertainment, Nasib Tao Terombang-ambing', '2018-03-20', 'https://www.bintang.com/celeb/read/3391881/kalah-lawan-sm-entertainment-nasib-tao-terombang-ambing', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Zaskia Sungkar Suka Malu Pamer Kemesraan dengan Suami di Media Sosial', '2018-03-20', 'https://www.bintang.com/celeb/read/3386815/zaskia-sungkar-suka-malu-pamer-kemesraan-dengan-suami-di-media-sosial', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, '6 Seleb Cantik ini Dijuluki Punya Kaki Jenjang Impian, Ada Idolamu?', '2018-03-20', 'https://www.bintang.com/celeb/read/3391603/6-seleb-cantik-ini-dijuluki-punya-kaki-jenjang-impian-ada-idolamu', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Siap-siap Jadi Bridesmaid Hijab yang Super Stunning dengan Inspirasi Gaya Busana Duo Sungkar Ini', '2018-03-20', 'http://style.liputan6.com/read/3392130/siap-siap-jadi-bridesmaid-hijab-yang-super-stunning-dengan-inspirasi-gaya-busana-duo-sungkar-ini', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Karena Peduli Lingkungan Brand Ini Rencananya Pakai Bahan Plastik Daur Ulang di Tahun 2024', '2018-03-20', 'http://style.liputan6.com/read/3391585/karena-peduli-lingkungan-brand-ini-rencananya-pakai-bahan-plastik-daur-ulang-di-tahun-2024', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Selain Lupa Hapus Makeup, Ini 4 Kebiasaan yang Hancurkan Kulit Wajah', '2018-03-20', 'http://sex-health.liputan6.com/read/3392007/selain-lupa-hapus-makeup-ini-4-kebiasaan-yang-hancurkan-kulit-wajah', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Kenalkan Shahira Yusuf, Model Hijaber Pertama yang Berhasil Tembus Eropa', '2018-03-20', 'http://lifestyle.liputan6.com/read/3391085/kenalkan-shahira-yusuf-model-hijaber-pertama-yang-berhasil-tembus-eropa', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Lyra Virna Resmi Tersangka Kasus Dugaan Pencemaran Nama Baik', '2018-03-20', 'https://www.bintang.com/celeb/read/3391556/lyra-virna-resmi-tersangka-kasus-dugaan-pencemaran-nama-baik', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Ghea Gabung Manajemen Ayu Ting Ting Usai Tereliminasi?', '2018-03-20', 'https://www.bintang.com/celeb/read/3391432/ghea-gabung-manajemen-ayu-ting-ting-usai-tereliminasi', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Gading Marten dan Della Dartyan Beradegan Mesra, Gisel Cemburu?', '2018-03-20', 'https://www.bintang.com/celeb/read/3390179/gading-marten-dan-della-dartyan-beradegan-mesra-gisel-cemburu', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Seperti Pangeran Arab, Gaya Desainer Ivan Gunawan Buat Cewek Jatuh Hati', '2018-03-20', 'http://style.liputan6.com/read/3392040/seperti-pangeran-arab-gaya-desainer-ivan-gunawan-buat-cewek-jatuh-hati', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Penampilan Profesional di Tahun 2018, Pakai Blazer Model Terbaru', '2018-03-20', 'http://style.liputan6.com/read/3391566/penampilan-profesional-di-tahun-2018-pakai-blazer-model-terbaru', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Danur Jadi Satu-Satunya Film Horor Prilly Latuconsina', '2018-03-20', 'https://www.bintang.com/celeb/read/3392161/danur-jadi-satu-satunya-film-horor-prilly-latuconsina', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Hambat Pertumbuhan Sperma, Ini Pil KB Baru Buat Suami', '2018-03-20', 'http://sex-health.liputan6.com/read/3391873/hambat-pertumbuhan-sperma-ini-pil-kb-baru-buat-suami', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Berjuang Sendiri! Selama 30 Tahun Pria Ini Hijaukan Afrika Barat', '2018-03-20', 'https://www.bintang.com/lifestyle/read/3391071/berjuang-sendiri-selama-30-tahun-pria-ini-hijaukan-afrika-barat', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Penampilan Ghea Sebelum Tinggalkan Panggung Indonesian Idol', '2018-03-20', 'https://www.bintang.com/celeb/read/3391246/penampilan-ghea-sebelum-tinggalkan-panggung-indonesian-idol', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Miliki Wajah Glowing Alami dengan Buah-buahan', '2018-03-20', 'http://beauty.liputan6.com/read/3391770/miliki-wajah-glowing-alami-dengan-buah-buahan', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, '8 Idol K-pop yang Kerap Jadi Korban Kejahilan', '2018-03-20', 'https://www.bintang.com/celeb/read/3390902/8-idol-k-pop-yang-kerap-jadi-korban-kejahilan', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Mirip Aslinya, Foto Telanjang Seolhyun AOA Ternyata Editan', '2018-03-20', 'https://www.bintang.com/celeb/read/3391755/mirip-aslinya-foto-telanjang-seolhyun-aoa-ternyata-editan', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Gading Marten Beradegan Mesra, Bagaimana dengan Gisel?', '2018-03-20', 'https://www.bintang.com/celeb/read/3390893/gading-marten-beradegan-mesra-bagaimana-dengan-gisel', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Istri Opick Meninggal, Begini Kronologi Versi Derry Sulaiman', '2018-03-20', 'https://www.bintang.com/celeb/read/3390892/istri-opick-meninggal-begini-kronologi-versi-derry-sulaiman', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Kreatif dan Unik, Undangan Pernikahan Poppy Sovia Anti Mainstream', '2018-03-20', 'https://www.bintang.com/celeb/read/3391767/kreatif-dan-unik-undangan-pernikahan-poppy-sovia-anti-mainstream', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, '5 Fakta Seputar Vakumnya Fifth Harmony', '2018-03-20', 'https://www.bintang.com/celeb/read/3391226/5-fakta-seputar-vakumnya-fifth-harmony', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Zaskia Adya Mecca untuk Pertama Kalinya Dapat Kejutan Baby Shower', '2018-03-20', 'https://www.bintang.com/celeb/read/3391019/zaskia-adya-mecca-untuk-pertama-kalinya-dapat-kejutan-baby-shower', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Inspirasi Mengenakan Kaos yang Kekinian dari Gigi Hadid Hingga Kendall Jenner', '2018-03-20', 'https://www.bintang.com/style/read/3391425/inspirasi-mengenakan-kaos-yang-kekinian-dari-gigi-hadid-hingga-kendall-jenner', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Walau Lagi Nggak Banget, 4 Zodiak Selalu Tampak Menawan', '2018-03-20', 'http://unique.liputan6.com/read/3391410/walau-lagi-nggak-banget-4-zodiak-selalu-tampak-menawan', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Mantap Berhijab, ini Unggahan Pertama Dian Ayu Lestari', '2018-03-20', 'https://www.bintang.com/celeb/read/3390384/mantap-berhijab-ini-unggahan-pertama-dian-ayu-lestari', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Pengin Putus Tapi Ogah Bilang Duluan, Cowok Pilih Lakukan 7 Hal Ini', '2018-03-20', 'http://relationship.liputan6.com/read/3391275/pengin-putus-tapi-ogah-bilang-duluan-cowok-pilih-lakukan-7-hal-ini', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('7c3bf897e5b7205abd0704466d4af5a6', 'http://www.bintang.com/rss', NULL, 'Langkah Ghea Indrawari Terhenti di 5 Besar Indonesian Idol', '2018-03-20', 'https://www.bintang.com/celeb/read/3390670/langkah-ghea-indrawari-terhenti-di-5-besar-indonesian-idol', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('3587edbfb6b0e25d7b0d58e7b0ddefb8', 'http://www.metrotvnews.com/feed/', NULL, 'Mensos Jamin Dana Bansos Tak akan Disalahgunakan untuk Kepentingan Politik', '2018-03-21', 'http://video.metrotvnews.com/play/2018/03/21/848354/mensos-jamin-dana-bansos-tak-akan-disalahgunakan-untuk-kepentingan-politik', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('3587edbfb6b0e25d7b0d58e7b0ddefb8', 'http://www.metrotvnews.com/feed/', NULL, 'Analis Rilis Prediksi iPhone X di Dua Kuartal Tahun Ini', '2018-03-21', 'http://teknologi.metrotvnews.com/news-teknologi/zNA7ej6k-analis-rilis-prediksi-iphone-x-di-dua-kuartal-tahun-ini', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('3587edbfb6b0e25d7b0d58e7b0ddefb8', 'http://www.metrotvnews.com/feed/', NULL, 'Dorong Cashless Society, SMA di Surabaya Terapkan e-Kantin', '2018-03-21', 'http://video.metrotvnews.com//play/2018/03/21/848356/dorong-cashless-society-sma-di-surabaya-terapkan-e-kantin', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('3587edbfb6b0e25d7b0d58e7b0ddefb8', 'http://www.metrotvnews.com/feed/', NULL, 'Para Penderita Down Syndrome yang Berprestasi di Dunia', '2018-03-21', 'http://video.metrotvnews.com/play/2018/03/21/848353/para-penderita-down-syndrome-yang-berprestasi-di-dunia', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('3587edbfb6b0e25d7b0d58e7b0ddefb8', 'http://www.metrotvnews.com/feed/', NULL, 'Jokowi Kabulkan Permintaan Kursi Roda dari Siswi Penyandang Disabilitas', '2018-03-21', 'http://video.metrotvnews.com/play/2018/03/21/848352/jokowi-kabulkan-permintaan-kursi-roda-dari-siswi-penyandang-disabilitas', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('3587edbfb6b0e25d7b0d58e7b0ddefb8', 'http://www.metrotvnews.com/feed/', NULL, 'Hari Down Syndrome Sedunia Diperingati Hari Ini', '2018-03-21', 'http://video.metrotvnews.com/play/2018/03/21/848351/hari-down-syndrome-sedunia-diperingati-hari-ini', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('3587edbfb6b0e25d7b0d58e7b0ddefb8', 'http://www.metrotvnews.com/feed/', NULL, 'Depresi Membuat Ingatan Menurun', '2018-03-21', 'http://rona.metrotvnews.com/kesehatan/GbmJQ61k-depresi-membuat-ingatan-menurun', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('3587edbfb6b0e25d7b0d58e7b0ddefb8', 'http://www.metrotvnews.com/feed/', NULL, 'Pemerintah Rusia Minta Kunci Enkripsi Telegram', '2018-03-21', 'http://teknologi.metrotvnews.com/news-teknologi/8koJOXOb-pemerintah-rusia-minta-kunci-enkripsi-telegram', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('3587edbfb6b0e25d7b0d58e7b0ddefb8', 'http://www.metrotvnews.com/feed/', NULL, 'Pentingnya Menjaga Kesehatan Gigi dan Mulut', '2018-03-21', 'http://rona.metrotvnews.com/kesehatan/5b254jnN-pentingnya-menjaga-kesehatan-gigi-dan-mulut', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('3587edbfb6b0e25d7b0d58e7b0ddefb8', 'http://www.metrotvnews.com/feed/', NULL, 'Karburator vs Injeksi, Sistem Penyemprot BBM di Ruang Bakar', '2018-03-21', 'http://otomotif.metrotvnews.com/mobil/0Kv3aVlN-karburator-vs-injeksi-sistem-penyemprot-bbm-di-ruang-bakar', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('40b02f4a2d770d574f2876239a7e4b74', 'http://kabarjambi.net/feed/', NULL, 'Ustadz Ghufron, Jago PKS ke DPR RI', '2018-03-19', 'http://kabarjambi.net/ustadz-ghufron-jago-pks-ke-dpr-ri/', '', NULL, '2018-03-19', '', 'UMUM', '', ''),
('40b02f4a2d770d574f2876239a7e4b74', 'http://kabarjambi.net/feed/', NULL, 'Salah Tak Ciut Hadapi Manchester City', '2018-03-19', 'http://kabarjambi.net/salah-tak-ciut-hadapi-manchester-city/', '', NULL, '2018-03-19', '', 'UMUM', '', ''),
('40b02f4a2d770d574f2876239a7e4b74', 'http://kabarjambi.net/feed/', NULL, 'Fauzi: Beri Perempuan Porsi Peran Lebih Besar', '2018-03-19', 'http://kabarjambi.net/fauzi-beri-perempuan-porsi-peran-lebih-besar/', '', NULL, '2018-03-19', '', 'UMUM', '', ''),
('40b02f4a2d770d574f2876239a7e4b74', 'http://kabarjambi.net/feed/', NULL, 'Juwanda, Santri yang Siap Berkompetisi', '2018-03-19', 'http://kabarjambi.net/juwanda-santri-yang-siap-berkompetisi/', '', NULL, '2018-03-19', '', 'UMUM', '', ''),
('40b02f4a2d770d574f2876239a7e4b74', 'http://kabarjambi.net/feed/', NULL, 'Pjs Bupati: Jangan Mainkan Isu SARA', '2018-03-19', 'http://kabarjambi.net/pjs-bupati-jangan-mainkan-isu-sara/', '', NULL, '2018-03-19', '', 'UMUM', '', ''),
('40b02f4a2d770d574f2876239a7e4b74', 'http://kabarjambi.net/feed/', NULL, 'Juwanda: Tiada Hari Tanpa Kaderisasi', '2018-03-19', 'http://kabarjambi.net/juwanda-tiada-hari-tanpa-kaderisasi/', '', NULL, '2018-03-19', '', 'UMUM', '', ''),
('40b02f4a2d770d574f2876239a7e4b74', 'http://kabarjambi.net/feed/', NULL, 'MotoGP Qatar: Andrea Dovizioso Juara, Marquez Asapi Rossi', '2018-03-19', 'http://kabarjambi.net/motogp-qatar-andrea-dovizioso-juara-marquez-asapi-rossi/', '', NULL, '2018-03-19', '', 'UMUM', '', ''),
('40b02f4a2d770d574f2876239a7e4b74', 'http://kabarjambi.net/feed/', NULL, 'Lionel Messi Mulai Ubah Gaya Bermain di Barcelona', '2018-03-17', 'http://kabarjambi.net/lionel-messi-mulai-ubah-gaya-bermain-di-barcelona/', '', NULL, '2018-03-17', '', 'UMUM', '', ''),
('40b02f4a2d770d574f2876239a7e4b74', 'http://kabarjambi.net/feed/', NULL, 'Real Madrid Kepincut Bek Chelsea', '2018-03-17', 'http://kabarjambi.net/real-madrid-kepincut-bek-chelsea/', '', NULL, '2018-03-17', '', 'UMUM', '', ''),
('40b02f4a2d770d574f2876239a7e4b74', 'http://kabarjambi.net/feed/', NULL, '4 Tim Kandidat Juara Liga Champions Pilihan Conte', '2018-03-17', 'http://kabarjambi.net/4-tim-kandidat-juara-liga-champions-pilihan-conte/', '', NULL, '2018-03-17', '', 'UMUM', '', ''),
('814dd0954b6be8e0a9bd0f1a0af13e58', 'http://www.deliknews.com/feed/', NULL, 'Liga Champions, Barca Diminta turunkan harga tiket', '2018-03-21', 'https://www.deliknews.com/2018/03/21/liga-champions-barca-diminta-turunkan-harga-tiket/', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('814dd0954b6be8e0a9bd0f1a0af13e58', 'http://www.deliknews.com/feed/', NULL, 'Menpar Undang Artis Promosi Wisata', '2018-03-21', 'https://www.deliknews.com/2018/03/21/menpar-undang-artis-promosi-wisata/', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('814dd0954b6be8e0a9bd0f1a0af13e58', 'http://www.deliknews.com/feed/', NULL, 'Industri Migas Diminta Waspada Kondisi Pasar', '2018-03-21', 'https://www.deliknews.com/2018/03/21/industri-migas-diminta-waspada-kondisi-pasar/', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('814dd0954b6be8e0a9bd0f1a0af13e58', 'http://www.deliknews.com/feed/', NULL, 'Rupiah Rabu Pagi menguat tipis Jadi Rp13.749/USD', '2018-03-21', 'https://www.deliknews.com/2018/03/21/rupiah-rabu-pagi-menguat-tipis-jadi-rp13-749-usd/', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('814dd0954b6be8e0a9bd0f1a0af13e58', 'http://www.deliknews.com/feed/', NULL, 'Spanduk liar Paslon Jatim Dicopot', '2018-03-21', 'https://www.deliknews.com/2018/03/21/spanduk-liar-paslon-jatim-dicopot/', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('814dd0954b6be8e0a9bd0f1a0af13e58', 'http://www.deliknews.com/feed/', NULL, 'Polda Jatim Bongkar kolam Tuyul, bobol Kartu Kredit Hingga Ratusan Juta', '2018-03-20', 'https://www.deliknews.com/2018/03/20/polda-jatim-bongkar-kolam-tuyul-bobol-kartu-kredit-hingga-ratusan-juta/', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('814dd0954b6be8e0a9bd0f1a0af13e58', 'http://www.deliknews.com/feed/', NULL, 'Habiskan Anggaran Miliaran, Pasar Baru Babang Dibiarkan Mubajir', '2018-03-20', 'https://www.deliknews.com/2018/03/20/habiskan-anggaran-miliaran-pasar-baru-babang-dibiarkan-mubajir/', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('814dd0954b6be8e0a9bd0f1a0af13e58', 'http://www.deliknews.com/feed/', NULL, 'Inilah Upaya Polres Karawang Tekan Kejahatan Malam Hari', '2018-03-20', 'https://www.deliknews.com/2018/03/20/inilah-upaya-polres-karawang-tekan-kejahatan-malam-hari/', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('814dd0954b6be8e0a9bd0f1a0af13e58', 'http://www.deliknews.com/feed/', NULL, 'Astaga, di Malut belum ada Perda Pendidikan, Ini Usulan PGRI', '2018-03-20', 'https://www.deliknews.com/2018/03/20/astaga-di-malut-belum-ada-perda-pendidikan-ini-usulan-pgri/', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('814dd0954b6be8e0a9bd0f1a0af13e58', 'http://www.deliknews.com/feed/', NULL, 'Putin tak Ingin Perlombaan Senjata', '2018-03-20', 'https://www.deliknews.com/2018/03/20/putin-tak-ingin-perlombaan-senjata/', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('814dd0954b6be8e0a9bd0f1a0af13e58', 'http://www.deliknews.com/feed/', NULL, 'Pagi Ini, Rupiah Menguat tipis Banget', '2018-03-20', 'https://www.deliknews.com/2018/03/20/pagi-ini-rupiah-menguat-tipis-banget/', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('814dd0954b6be8e0a9bd0f1a0af13e58', 'http://www.deliknews.com/feed/', NULL, 'Sowan Emil Dardak ke Situbondo, Ini Doa Kiai Sepuh', '2018-03-20', 'https://www.deliknews.com/2018/03/20/sowan-emil-dardak-ke-situbondo-ini-doa-kiai-sepuh/', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('814dd0954b6be8e0a9bd0f1a0af13e58', 'http://www.deliknews.com/feed/', NULL, 'Inalillahi, TKI Asal Bangkalan Dieksekusi Mati di Arab Saudi', '2018-03-20', 'https://www.deliknews.com/2018/03/20/inalillahi-tki-asal-bangkalan-dieksekusi-mati-di-arab-saudi/', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('814dd0954b6be8e0a9bd0f1a0af13e58', 'http://www.deliknews.com/feed/', NULL, 'Mata Uang China menguat atas dolar', '2018-03-20', 'https://www.deliknews.com/2018/03/20/mata-uang-china-menguat-atas-dolar/', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('814dd0954b6be8e0a9bd0f1a0af13e58', 'http://www.deliknews.com/feed/', NULL, 'Waketum Asprov PSSI DKI Jakarta, Bertekad munculkan bibit baru', '2018-03-20', 'https://www.deliknews.com/2018/03/20/waketum-asprov-pssi-dki-jakarta-bertekad-munculkan-bibit-baru/', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('814dd0954b6be8e0a9bd0f1a0af13e58', 'http://www.deliknews.com/feed/', NULL, 'Survei Kalah, Begini Kata Gus Ipul', '2018-03-20', 'https://www.deliknews.com/2018/03/20/survei-kalah-begini-kata-gus-ipul/', '', NULL, '2018-03-20', '', 'UMUM', '', ''),
('814dd0954b6be8e0a9bd0f1a0af13e58', 'http://www.deliknews.com/feed/', NULL, 'TKI Asal Blitar Ini Mengadu ke BRI Uangnya dibobol, Eh Ternyata diambil Istri', '2018-03-19', 'https://www.deliknews.com/2018/03/19/tki-asal-blitar-ini-mengadu-ke-bri-uangnya-dibobol-eh-ternyata-diambil-istri/', '', NULL, '2018-03-19', '', 'UMUM', '', ''),
('814dd0954b6be8e0a9bd0f1a0af13e58', 'http://www.deliknews.com/feed/', NULL, 'Enam Anggota Berprestasi Raih Penghargaan Kapolres Karawang', '2018-03-19', 'https://www.deliknews.com/2018/03/19/enam-anggota-berprestasi-raih-penghargaan-kapolres-karawang/', '', NULL, '2018-03-19', '', 'UMUM', '', ''),
('814dd0954b6be8e0a9bd0f1a0af13e58', 'http://www.deliknews.com/feed/', NULL, 'Belum Registrasi, Telkomsel Blokir 13 juta Nomor Seluler', '2018-03-19', 'https://www.deliknews.com/2018/03/19/belum-registrasi-telkomsel-blokir-13-juta-nomor-seluler/', '', NULL, '2018-03-19', '', 'UMUM', '', ''),
('814dd0954b6be8e0a9bd0f1a0af13e58', 'http://www.deliknews.com/feed/', NULL, 'Fahri Hamzah Yakin Presiden PKS Tersangka', '2018-03-19', 'https://www.deliknews.com/2018/03/19/fahri-hamzah-yakin-presiden-pks-tersangka/', '', NULL, '2018-03-19', '', 'UMUM', '', ''),
('814dd0954b6be8e0a9bd0f1a0af13e58', 'http://www.deliknews.com/feed/', NULL, 'Catatan Dahlan Iskan : Akhir Era Gengster Hongkong', '2018-03-19', 'https://www.deliknews.com/2018/03/19/catatan-dahlan-iskan-akhir-era-gengster-hongkong/', '', NULL, '2018-03-19', '', 'UMUM', '', '');
INSERT INTO `rssnews` (`item_id`, `feed_url`, `item_content`, `item_title`, `item_date`, `item_url`, `item_status`, `item_category_id`, `fetch_date`, `img_url`, `kategori`, `thumbnail`, `prety_url`) VALUES
('814dd0954b6be8e0a9bd0f1a0af13e58', 'http://www.deliknews.com/feed/', NULL, 'Awas! Rupiah Makin menurun Jadi Rp13.758/USD', '2018-03-19', 'https://www.deliknews.com/2018/03/19/awas-rupiah-makin-menurun-jadi-rp13-758-usd/', '', NULL, '2018-03-19', '', 'UMUM', '', ''),
('814dd0954b6be8e0a9bd0f1a0af13e58', 'http://www.deliknews.com/feed/', NULL, 'Ini target Suara Khofifah-Emil di Banyuwangi', '2018-03-19', 'https://www.deliknews.com/2018/03/19/ini-target-suara-khofifah-emil-di-banyuwangi/', '', NULL, '2018-03-19', '', 'UMUM', '', ''),
('814dd0954b6be8e0a9bd0f1a0af13e58', 'http://www.deliknews.com/feed/', NULL, 'Pemain favorit cetak gol, Admin twitter Liverpool Masuk Islam', '2018-03-19', 'https://www.deliknews.com/2018/03/19/pemain-favorit-cetak-gol-admin-twitter-liverpool-masuk-islam/', '', NULL, '2018-03-19', '', 'UMUM', '', ''),
('814dd0954b6be8e0a9bd0f1a0af13e58', 'http://www.deliknews.com/feed/', NULL, 'Rumdis Walikota Ternate Dijual', '2018-03-19', 'https://www.deliknews.com/2018/03/19/rumdis-walikota-ternate-dijual/', '', NULL, '2018-03-19', '', 'UMUM', '', ''),
('814dd0954b6be8e0a9bd0f1a0af13e58', 'http://www.deliknews.com/feed/', NULL, 'Suara Perempuan Untuk Khofifah, Emil Representasi Milenial', '2018-03-19', 'https://www.deliknews.com/2018/03/19/suara-perempuan-untuk-khofifah-emil-representasi-milenial/', '', NULL, '2018-03-19', '', 'UMUM', '', ''),
('814dd0954b6be8e0a9bd0f1a0af13e58', 'http://www.deliknews.com/feed/', NULL, 'Rupiah Melemah diposisi Rp13.762/USD', '2018-03-19', 'https://www.deliknews.com/2018/03/19/rupiah-melemah-diposisi-rp13-762-usd/', '', NULL, '2018-03-19', '', 'UMUM', '', ''),
('814dd0954b6be8e0a9bd0f1a0af13e58', 'http://www.deliknews.com/feed/', NULL, 'Taklukkan Athletic Bilbao, Barca Melaju ke Final Liga Spanyol', '2018-03-19', 'https://www.deliknews.com/2018/03/19/taklukkan-athletic-bilbao-barca-melaju-ke-final-liga-spanyol/', '', NULL, '2018-03-19', '', 'UMUM', '', ''),
('814dd0954b6be8e0a9bd0f1a0af13e58', 'http://www.deliknews.com/feed/', NULL, 'Ini Alasan Suami Senang Sentuh Payudara Istri Saat Bercinta', '2018-03-19', 'https://www.deliknews.com/2018/03/19/ini-alasan-suami-senang-sentuh-payudara-istri-saat-bercinta/', '', NULL, '2018-03-19', '', 'UMUM', '', ''),
('814dd0954b6be8e0a9bd0f1a0af13e58', 'http://www.deliknews.com/feed/', NULL, 'Pilpres Rusia, Putin Unggul Jauh', '2018-03-19', 'https://www.deliknews.com/2018/03/19/pilpres-rusia-putin-unggul-jauh/', '', NULL, '2018-03-19', '', 'UMUM', '', ''),
('814dd0954b6be8e0a9bd0f1a0af13e58', 'http://www.deliknews.com/feed/', NULL, 'Walikota Liverpool Jalan-jalan ke Tunjungan', '2018-03-19', 'https://www.deliknews.com/2018/03/19/walikota-liverpool-jalan-jalan-ke-tunjungan/', '', NULL, '2018-03-19', '', 'UMUM', '', ''),
('814dd0954b6be8e0a9bd0f1a0af13e58', 'http://www.deliknews.com/feed/', NULL, 'Awal pekan, IHSG menguat 10,38 persen', '2018-03-19', 'https://www.deliknews.com/2018/03/19/awal-pekan-ihsg-menguat-1038-persen/', '', NULL, '2018-03-19', '', 'UMUM', '', ''),
('814dd0954b6be8e0a9bd0f1a0af13e58', 'http://www.deliknews.com/feed/', NULL, 'Deklarasi Anti Hoax, Kapolda Jabar Ajak Masyarakat Kuningan Tabayun', '2018-03-18', 'https://www.deliknews.com/2018/03/18/deklarasi-anti-hoax-kapolda-jabar-ajak-masyarakat-kuningan-tabayun/', '', NULL, '2018-03-18', '', 'UMUM', '', ''),
('814dd0954b6be8e0a9bd0f1a0af13e58', 'http://www.deliknews.com/feed/', NULL, 'Wujud Sinergitas, Polres Karawang-Kodim 0604 Lakukan Ini', '2018-03-18', 'https://www.deliknews.com/2018/03/18/1550/', '', NULL, '2018-03-18', '', 'UMUM', '', ''),
('814dd0954b6be8e0a9bd0f1a0af13e58', 'http://www.deliknews.com/feed/', NULL, 'DPRD Surabaya Apresiasi Penanganan Korban Atap Ambruk RSAL', '2018-03-18', 'https://www.deliknews.com/2018/03/18/dprd-surabaya-apresiasi-penanganan-korban-atao-ambruk-rsal/', '', NULL, '2018-03-18', '', 'UMUM', '', ''),
('814dd0954b6be8e0a9bd0f1a0af13e58', 'http://www.deliknews.com/feed/', NULL, 'Wow, Ambon Segera Jadi Kota Musik Dunia', '2018-03-18', 'https://www.deliknews.com/2018/03/18/wow-ambon-segera-jadi-kota-musik-dunia/', '', NULL, '2018-03-18', '', 'UMUM', '', ''),
('814dd0954b6be8e0a9bd0f1a0af13e58', 'http://www.deliknews.com/feed/', NULL, 'Saldo Nasabah Hilang, BRI migrasi Chip Kartu Debit', '2018-03-18', 'https://www.deliknews.com/2018/03/18/saldo-nasabah-hilang-bri-migrasi-chip-kartu-debit/', '', NULL, '2018-03-18', '', 'UMUM', '', ''),
('814dd0954b6be8e0a9bd0f1a0af13e58', 'http://www.deliknews.com/feed/', NULL, 'Cidera, Evan Dimas tetap ke Singapore', '2018-03-18', 'https://www.deliknews.com/2018/03/18/cidera-evan-dimas-tetap-ke-singapore/', '', NULL, '2018-03-18', '', 'UMUM', '', ''),
('814dd0954b6be8e0a9bd0f1a0af13e58', 'http://www.deliknews.com/feed/', NULL, 'Pemilih Surabaya Terbesar, Mojokerto Terkecil', '2018-03-18', 'https://www.deliknews.com/2018/03/18/pemilih-surabaya-terbesar-mojokerto-terkecil/', '', NULL, '2018-03-18', '', 'UMUM', '', ''),
('814dd0954b6be8e0a9bd0f1a0af13e58', 'http://www.deliknews.com/feed/', NULL, 'Waduh, Atap RSAL Ambruk Pasien Terluka', '2018-03-18', 'https://www.deliknews.com/2018/03/18/waduh-atap-rsal-ambruk-pasien-terluka/', '', NULL, '2018-03-18', '', 'UMUM', '', ''),
('8a157d6e85a82bacccef17de5d6c6b77', 'http://www.suara.com/rss/entertainment', NULL, 'Sebelum Black Champagne, Mitha dan Citra Bikin Rajungan Bohay', '2018-03-21', 'https://www.suara.com/entertainment/2018/03/21/103442/sebelum-black-champagne-mitha-dan-citra-bikin-rajungan-bohay', '', NULL, '2018-03-21', '', 'HIBURAN', '', ''),
('8a157d6e85a82bacccef17de5d6c6b77', 'http://www.suara.com/rss/entertainment', NULL, 'Besok, Polisi Periksa Artis Lyra Virna Sebagai Tersangka', '2018-03-21', 'https://www.suara.com/entertainment/2018/03/21/101000/besok-polisi-periksa-artis-lyra-virna-sebagai-tersangka', '', NULL, '2018-03-21', '', 'HIBURAN', '', ''),
('8a157d6e85a82bacccef17de5d6c6b77', 'http://www.suara.com/rss/entertainment', NULL, 'Soal Cincin di Alpukat, Begini Jawaban Syahrini', '2018-03-21', 'https://www.suara.com/entertainment/2018/03/21/100515/soal-cincin-di-alpukat-begini-jawaban-syahrini', '', NULL, '2018-03-21', '', 'HIBURAN', '', ''),
('8a157d6e85a82bacccef17de5d6c6b77', 'http://www.suara.com/rss/entertainment', NULL, 'Manajer Benarkan Video Lucinta Luna yang Diunggah Elly Sugigi', '2018-03-21', 'https://www.suara.com/entertainment/2018/03/21/084208/manajer-benarkan-video-lucinta-luna-yang-diunggah-elly-sugigi', '', NULL, '2018-03-21', '', 'HIBURAN', '', ''),
('8a157d6e85a82bacccef17de5d6c6b77', 'http://www.suara.com/rss/entertainment', NULL, 'Chelsea Olivia - Glen Alinskie Jual Camilan Tanpa Micin', '2018-03-21', 'https://www.suara.com/entertainment/2018/03/21/074859/chelsea-olivia-glen-alinskie-jual-camilan-tanpa-micin', '', NULL, '2018-03-21', '', 'HIBURAN', '', ''),
('8a157d6e85a82bacccef17de5d6c6b77', 'http://www.suara.com/rss/entertainment', NULL, 'Mike Lewis Kembali Beri Klarifikasi soal Lucinta Luna', '2018-03-21', 'https://www.suara.com/entertainment/2018/03/21/071217/mike-lewis-kembali-beri-klarifikasi-soal-lucinta-luna', '', NULL, '2018-03-21', '', 'HIBURAN', '', ''),
('8a157d6e85a82bacccef17de5d6c6b77', 'http://www.suara.com/rss/entertainment', NULL, 'Rilis Lagu Religi, Ratu Meta Tanggalkan Imej Seksi', '2018-03-21', 'https://www.suara.com/entertainment/2018/03/21/065843/rilis-lagu-religi-ratu-meta-tanggalkan-imej-seksi', '', NULL, '2018-03-21', '', 'HIBURAN', '', ''),
('8a157d6e85a82bacccef17de5d6c6b77', 'http://www.suara.com/rss/entertainment', NULL, 'Nafa Urbach Tertantang Main Film Horor Kembang Kantil', '2018-03-20', 'https://www.suara.com/entertainment/2018/03/20/211702/nafa-urbach-tertantang-main-film-horor-kembang-kantil', '', NULL, '2018-03-20', '', 'HIBURAN', '', ''),
('8a157d6e85a82bacccef17de5d6c6b77', 'http://www.suara.com/rss/entertainment', NULL, 'Pengalaman Seru Alika Liburan di Italia', '2018-03-20', 'https://www.suara.com/entertainment/2018/03/20/205800/pengalaman-seru-alika-liburan-di-italia', '', NULL, '2018-03-20', '', 'HIBURAN', '', ''),
('8a157d6e85a82bacccef17de5d6c6b77', 'http://www.suara.com/rss/entertainment', NULL, 'Nafa Urbach: Saya Sudah Move On', '2018-03-20', 'https://www.suara.com/entertainment/2018/03/20/204259/nafa-urbach-saya-sudah-move-on', '', NULL, '2018-03-20', '', 'HIBURAN', '', ''),
('8a157d6e85a82bacccef17de5d6c6b77', 'http://www.suara.com/rss/entertainment', NULL, 'Cidera Kaki Bikin Irsyadillah Terjun ke Dunia Akting', '2018-03-20', 'https://www.suara.com/entertainment/2018/03/20/202134/cidera-kaki-bikin-irsyadillah-terjun-ke-dunia-akting', '', NULL, '2018-03-20', '', 'HIBURAN', '', ''),
('8a157d6e85a82bacccef17de5d6c6b77', 'http://www.suara.com/rss/entertainment', NULL, 'Heboh Video Operasi Ganti Kelamin, Ini Kata Manajer Lucinta Luna', '2018-03-20', 'https://www.suara.com/entertainment/2018/03/20/200849/heboh-video-operasi-ganti-kelamin-ini-kata-manajer-lucinta-luna', '', NULL, '2018-03-20', '', 'HIBURAN', '', ''),
('8a157d6e85a82bacccef17de5d6c6b77', 'http://www.suara.com/rss/entertainment', NULL, 'Rilis Album Baru, Alika Sisipkan Lagu EDM', '2018-03-20', 'https://www.suara.com/entertainment/2018/03/20/190348/rilis-album-baru-alika-sisipkan-lagu-edm', '', NULL, '2018-03-20', '', 'HIBURAN', '', ''),
('8a157d6e85a82bacccef17de5d6c6b77', 'http://www.suara.com/rss/entertainment', NULL, 'Benarkah Opick Punya 3 Istri?', '2018-03-20', 'https://www.suara.com/entertainment/2018/03/20/183758/benarkah-opick-punya-3-istri', '', NULL, '2018-03-20', '', 'HIBURAN', '', ''),
('8a157d6e85a82bacccef17de5d6c6b77', 'http://www.suara.com/rss/entertainment', NULL, 'Heboh Video Operasi Ganti Kelamin, Kemana Lucinta Luna?', '2018-03-20', 'https://www.suara.com/entertainment/2018/03/20/182339/heboh-video-operasi-ganti-kelamin-kemana-lucinta-luna', '', NULL, '2018-03-20', '', 'HIBURAN', '', ''),
('8a157d6e85a82bacccef17de5d6c6b77', 'http://www.suara.com/rss/entertainment', NULL, 'Jadi Tersangka, Lyra Virna Minta Keadilan', '2018-03-20', 'https://www.suara.com/entertainment/2018/03/20/154906/jadi-tersangka-lyra-virna-minta-keadilan', '', NULL, '2018-03-20', '', 'HIBURAN', '', ''),
('8a157d6e85a82bacccef17de5d6c6b77', 'http://www.suara.com/rss/entertainment', NULL, 'Lewat Malaikat Cinta, Radja Comeback Sapa Penggemar', '2018-03-20', 'https://www.suara.com/entertainment/2018/03/20/151846/lewat-malaikat-cinta-radja-comeback-sapa-penggemar', '', NULL, '2018-03-20', '', 'HIBURAN', '', ''),
('8a157d6e85a82bacccef17de5d6c6b77', 'http://www.suara.com/rss/entertainment', NULL, 'Sutradara Ungkap Chemistry Adipati Dolken dan Vanesha Prescilla', '2018-03-20', 'https://www.suara.com/entertainment/2018/03/20/145454/sutradara-ungkap-chemistry-adipati-dolken-dan-vanesha-prescilla', '', NULL, '2018-03-20', '', 'HIBURAN', '', ''),
('8a157d6e85a82bacccef17de5d6c6b77', 'http://www.suara.com/rss/entertainment', NULL, 'Syahrini Dijadwalkan Diperiksa di Sidang First Travel Besok', '2018-03-20', 'https://www.suara.com/entertainment/2018/03/20/144912/syahrini-dijadwalkan-diperiksa-di-sidang-first-travel-besok', '', NULL, '2018-03-20', '', 'HIBURAN', '', ''),
('8a157d6e85a82bacccef17de5d6c6b77', 'http://www.suara.com/rss/entertainment', NULL, 'Lyra Virna Jadi Tersangka, Pelapor: Alhamdulillah', '2018-03-20', 'https://www.suara.com/entertainment/2018/03/20/141416/lyra-virna-jadi-tersangka-pelapor-alhamdulillah', '', NULL, '2018-03-20', '', 'HIBURAN', '', ''),
('c91e128a50f1d28d161c1df17cda8b09', 'http://poskotanews.com/feed/', NULL, 'Merasa Gugatan Sudah Kuat,  Kuasa Hukum Ahok Tak Lagi Hadirkan Saksi', '2018-03-21', 'http://poskotanews.com/2018/03/21/merasa-gugatan-sudah-kuat-kuasa-hukum-ahok-tak-lagi-hadirkan-saksi/', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('c91e128a50f1d28d161c1df17cda8b09', 'http://poskotanews.com/feed/', NULL, 'Samsat Ciledug- Polres Razia Kendaraan Tunggak Pajak', '2018-03-21', 'http://poskotanews.com/2018/03/21/samsat-ciledug-polres-razia-kendaraan-tunggak-pajak/', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('c91e128a50f1d28d161c1df17cda8b09', 'http://poskotanews.com/feed/', NULL, 'Hanif Sebut Ada 20 TKI  di Arab Saudi yang Terancam Dieksekusi', '2018-03-21', 'http://poskotanews.com/2018/03/21/hanif-sebut-ada-20-tki-di-arab-saudi-yang-terancam-dieksekusi/', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('c91e128a50f1d28d161c1df17cda8b09', 'http://poskotanews.com/feed/', NULL, 'Subhanallah, Hari Ini Tanpa Bayangan', '2018-03-21', 'http://poskotanews.com/2018/03/21/subhanallah-hari-ini-tanpa-bayangan/', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('c91e128a50f1d28d161c1df17cda8b09', 'http://poskotanews.com/feed/', NULL, 'Hidayat Nur Wahid: Saat Ini Kedaulatan Ada di Tangan Rakyat', '2018-03-21', 'http://poskotanews.com/2018/03/21/hidayat-nur-wahid-saat-ini-kedaulatan-ada-di-tangan-rakyat/', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('c91e128a50f1d28d161c1df17cda8b09', 'http://poskotanews.com/feed/', NULL, 'Luis Milla Janjikan Kejutan Dalam Uji Coba Timnas U23 Lawan Singapura', '2018-03-21', 'http://poskotanews.com/2018/03/21/luis-milla-janjikan-kejutan-dalam-uji-coba-timnas-u23-lawan-singapura/', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('c91e128a50f1d28d161c1df17cda8b09', 'http://poskotanews.com/feed/', NULL, 'Dihadang Gelombang Laut Dua Meter, Anies Batal ke Pulau Seribu', '2018-03-21', 'http://poskotanews.com/2018/03/21/dihadang-gelombang-laut-dua-meter-anies-batal-ke-pulau-seribu/', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('c91e128a50f1d28d161c1df17cda8b09', 'http://poskotanews.com/feed/', NULL, 'Ezra Walian Ingin Bikin Gol Untuk Timnas U-23 Saat Lawan Singapura', '2018-03-21', 'http://poskotanews.com/2018/03/21/ezra-walian-ingin-bikin-gol-untuk-timnas-u-23-saat-lawan-singapura/', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('c91e128a50f1d28d161c1df17cda8b09', 'http://poskotanews.com/feed/', NULL, 'Lagi Pereteli Motor Curian, Pelaku Curanmor Disergap', '2018-03-21', 'http://poskotanews.com/2018/03/21/lagi-pereteli-motor-curian-pelaku-curanmor-disergap/', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('c91e128a50f1d28d161c1df17cda8b09', 'http://poskotanews.com/feed/', NULL, 'Cynthia Nixon, Bintang Serial â€˜Sex and the Cityâ€™ Calonkan Diri Jadi Gubernur New York', '2018-03-21', 'http://poskotanews.com/2018/03/21/cynthia-nixon-bintang-serial-sex-and-the-city-calonkan-diri-jadi-gubernur-new-york/', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('c91e128a50f1d28d161c1df17cda8b09', 'http://poskotanews.com/feed/', NULL, 'Soal ERP, Dishub DKI Anggap Tak Wajib Jalankan Rekomemdasi KPPU', '2018-03-21', 'http://poskotanews.com/2018/03/21/soal-erp-dishub-dki-anggap-tak-wajib-jalankan-rekomemdasi-kppu/', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('c91e128a50f1d28d161c1df17cda8b09', 'http://poskotanews.com/feed/', NULL, 'Angkot Terbakar, Penumpang Berhamburan', '2018-03-21', 'http://poskotanews.com/2018/03/21/angkot-terbakar-penumpang-berhamburan/', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('c91e128a50f1d28d161c1df17cda8b09', 'http://poskotanews.com/feed/', NULL, 'Pemberontak Milisi Turki  Jarah Kota Afrin', '2018-03-21', 'http://poskotanews.com/2018/03/21/pemberontak-milisi-turki-jarah-kota-afrin/', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('c91e128a50f1d28d161c1df17cda8b09', 'http://poskotanews.com/feed/', NULL, 'Pjs Gubernur Pimpin Upacara HUT Lampung', '2018-03-21', 'http://poskotanews.com/2018/03/21/pjs-gubernur-pimpin-upacara-hut-lampung/', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('c91e128a50f1d28d161c1df17cda8b09', 'http://poskotanews.com/feed/', NULL, 'Kapolres Tangsel Serahkan Kunci Bedah Rumah Warga Miskin', '2018-03-21', 'http://poskotanews.com/2018/03/21/kapolres-tangsel-serahkan-kunci-bedah-rumah-warga-miskin/', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('c91e128a50f1d28d161c1df17cda8b09', 'http://poskotanews.com/feed/', NULL, 'Tarif Turun Jadi Rp10 Ribu, Penumpang Bus Transjabodetabek Premium Masih Sepi', '2018-03-21', 'http://poskotanews.com/2018/03/21/tarif-turun-jadi-rp10-ribu-penumpang-bus-transjabodetabek-premium-masih-sepi/', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('c91e128a50f1d28d161c1df17cda8b09', 'http://poskotanews.com/feed/', NULL, 'Rony Dozer Terapkan Pola Hidup dan Makan Sehat', '2018-03-21', 'http://poskotanews.com/2018/03/21/rony-dozer-terapkan-pola-hidup-dan-makan-sehat/', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('c91e128a50f1d28d161c1df17cda8b09', 'http://poskotanews.com/feed/', NULL, 'Dekot dan LMK Jakbar Sepakat Rapat Rutin 3 Bulan Sekali', '2018-03-21', 'http://poskotanews.com/2018/03/21/dekot-dan-lmk-jakbar-sepakat-rapat-rutin-3-bulan-sekali/', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('c91e128a50f1d28d161c1df17cda8b09', 'http://poskotanews.com/feed/', NULL, 'Walikota Depok Dukung Bayar Pajak Kendaraan', '2018-03-21', 'http://poskotanews.com/2018/03/21/walikota-depok-dukung-bayar-pajak-kendaraan/', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('c91e128a50f1d28d161c1df17cda8b09', 'http://poskotanews.com/feed/', NULL, 'Mitha The Virgin Kompak dengan DJ Citra di â€˜Black Champagneâ€™', '2018-03-21', 'http://poskotanews.com/2018/03/21/mitha-the-virgin-kompak-dengan-dj-citra-di-black-champagne/', '', NULL, '2018-03-21', '', 'UMUM', '', ''),
('9b486cf504e26b60ec566ee4c0953f25', 'http://batamnews.co.id/rss.xml', NULL, 'Mengenang Sosok Bos Utama Group A Lam, Pengusaha Terkaya Batam, yang Meninggal Dunia', '1970-01-01', 'http://batamnews.co.id/berita-30261-mengenang-sosok-bos-utama-group-a-lam-pengusaha-terkaya-batam-yang-meninggal-dunia.html', '', NULL, '1970-01-01', '', 'UMUM', '', ''),
('9b486cf504e26b60ec566ee4c0953f25', 'http://batamnews.co.id/rss.xml', NULL, 'Ada Cacing Pita, Dinkes Larang Sarden Merek Mackerel Farmerjack Dilarang Dijual', '1970-01-01', 'http://batamnews.co.id/berita-30260-ada-cacing-pita-dinkes-larang-sarden-merek-mackerel-farmerjack-dilarang-dijual.html', '', NULL, '1970-01-01', '', 'UMUM', '', ''),
('9b486cf504e26b60ec566ee4c0953f25', 'http://batamnews.co.id/rss.xml', NULL, 'Sempat Lolos, Begini Kronologi Penangkapan Empat Kapal Ikan', '1970-01-01', 'http://batamnews.co.id/berita-30259-sempat-lolos-begini-kronologi-penangkapan-empat-kapal-ikan.html', '', NULL, '1970-01-01', '', 'UMUM', '', ''),
('9b486cf504e26b60ec566ee4c0953f25', 'http://batamnews.co.id/rss.xml', NULL, 'Ubah Konstruksi Kapal, Pihak Asetanian Bantah Rabrov T4 Kapal Curian', '1970-01-01', 'http://batamnews.co.id/berita-30258-ubah-konstruksi-kapal-pihak-asetanian-bantah-rabrov-t4-kapal-curian.html', '', NULL, '1970-01-01', '', 'UMUM', '', ''),
('9b486cf504e26b60ec566ee4c0953f25', 'http://batamnews.co.id/rss.xml', NULL, 'AKBP Ucok Lasdin Jabat Kapolres Tanjungpinang', '1970-01-01', 'http://batamnews.co.id/berita-30257-akbp-ucok-lasdin-jabat-kapolres-tanjungpinang.html', '', NULL, '1970-01-01', '', 'UMUM', '', ''),
('4ae6c1ec16426778446dbdbdabade08e', 'http://www.eramuslim.com/konsultasi/konspirasi/feed', NULL, 'Kemal Attaturk, Yahudi Yang Menyamar Sebagai Muslim', '2018-03-03', 'https://www.eramuslim.com/konsultasi/konspirasi/siapa-sebenarnya-mustafa-kemal-attaturk.htm', '', NULL, '2018-03-03', '', 'ISLAM', '', ''),
('4ae6c1ec16426778446dbdbdabade08e', 'http://www.eramuslim.com/konsultasi/konspirasi/feed', NULL, 'Benda keramat peninggalan Nabi Sulaiman AS', '2017-12-18', 'https://www.eramuslim.com/konsultasi/konspirasi/benda-keramat-peninggalan-nabi-sulaiman-as.htm', '', NULL, '2017-12-18', '', 'ISLAM', '', ''),
('4ae6c1ec16426778446dbdbdabade08e', 'http://www.eramuslim.com/konsultasi/konspirasi/feed', NULL, 'Mana Versi Yang Benar Dalam Tempat Turunnya Dajjal?', '2017-11-24', 'https://www.eramuslim.com/konsultasi/konspirasi/dajjal-akan-muncul-dari-mana.htm', '', NULL, '2017-11-24', '', 'ISLAM', '', ''),
('4ae6c1ec16426778446dbdbdabade08e', 'http://www.eramuslim.com/konsultasi/konspirasi/feed', NULL, 'Program Freemasonry â€“ Illuminati : Depopulation Program', '2017-09-03', 'https://www.eramuslim.com/konsultasi/konspirasi/program-freemasonry-illuminati-depopulation-program.htm', '', NULL, '2017-09-03', '', 'ISLAM', '', ''),
('4ae6c1ec16426778446dbdbdabade08e', 'http://www.eramuslim.com/konsultasi/konspirasi/feed', NULL, 'Benarkah Tabut (the Ark Of Covenant) Masih Ada Sekarang ?', '2017-08-03', 'https://www.eramuslim.com/konsultasi/konspirasi/benarkah-tabut-the-ark-of-covenant-masih-ada-sekarang.htm', '', NULL, '2017-08-03', '', 'ISLAM', '', ''),
('4ae6c1ec16426778446dbdbdabade08e', 'http://www.eramuslim.com/konsultasi/konspirasi/feed', NULL, 'Indian Sudah Memeluk Islam', '2017-04-14', 'https://www.eramuslim.com/konsultasi/konspirasi/indian-sudah-memeluk-islam.htm', '', NULL, '2017-04-14', '', 'ISLAM', '', ''),
('4ae6c1ec16426778446dbdbdabade08e', 'http://www.eramuslim.com/konsultasi/konspirasi/feed', NULL, 'Lucifer, Dari Bangsa Jin Atau Malaikat?', '2017-02-15', 'https://www.eramuslim.com/konsultasi/konspirasi/lucifer-dari-bangsa-jin-atau-malaikat.htm', '', NULL, '2017-02-15', '', 'ISLAM', '', ''),
('4ae6c1ec16426778446dbdbdabade08e', 'http://www.eramuslim.com/konsultasi/konspirasi/feed', NULL, 'Kenapa Kristen Saat Ini Mendukung Yahudi?', '2016-09-06', 'https://www.eramuslim.com/konsultasi/konspirasi/kenapa-kristen-saat-ini-mendukung-yahudi.htm', '', NULL, '2016-09-06', '', 'ISLAM', '', ''),
('4ae6c1ec16426778446dbdbdabade08e', 'http://www.eramuslim.com/konsultasi/konspirasi/feed', NULL, 'Awal Mula Agama Kristen', '2016-08-27', 'https://www.eramuslim.com/konsultasi/konspirasi/awal-mula-agama-kristen-2.htm', '', NULL, '2016-08-27', '', 'ISLAM', '', ''),
('4ae6c1ec16426778446dbdbdabade08e', 'http://www.eramuslim.com/konsultasi/konspirasi/feed', NULL, 'Bagaimana Harusnya Pemuda Hadapi Dunia Penuh Zina ?', '2016-08-11', 'https://www.eramuslim.com/konsultasi/konspirasi/bagaimana-harusnya-kita.htm', '', NULL, '2016-08-11', '', 'ISLAM', '', ''),
('8b8cf5ccdfbfa15df4863e4817570256', 'http://doktersehat.com/feed/', NULL, 'Bahaya Minuman Soda Bagi Anak', '2018-03-21', 'http://doktersehat.com/bahaya-minuman-soda-bagi-anak/', '', NULL, '2018-03-21', '', 'KESEHATAN', '', ''),
('8b8cf5ccdfbfa15df4863e4817570256', 'http://doktersehat.com/feed/', NULL, 'Ingin Pipis Saat Berhubungan Intim, Kenapa Ya?', '2018-03-21', 'http://doktersehat.com/saat-bercinta-kenapa-wanita-sering-kebelet-pipis-simak-penjelasannya/', '', NULL, '2018-03-21', '', 'KESEHATAN', '', ''),
('8b8cf5ccdfbfa15df4863e4817570256', 'http://doktersehat.com/feed/', NULL, 'Mengatasi Jerawat dengan 5 Masker Alami', '2018-03-21', 'http://doktersehat.com/mengatasi-jerawat-dengan-5-masker-alami/', '', NULL, '2018-03-21', '', 'KESEHATAN', '', ''),
('8b8cf5ccdfbfa15df4863e4817570256', 'http://doktersehat.com/feed/', NULL, 'Aduh Kasihan! Bayi Ini Terlahir Dengan Tiga Kaki', '2018-03-21', 'http://doktersehat.com/bayi-ini-terlahir-dengan-tiga-kaki/', '', NULL, '2018-03-21', '', 'KESEHATAN', '', ''),
('8b8cf5ccdfbfa15df4863e4817570256', 'http://doktersehat.com/feed/', NULL, '7 Pertanyaan Seputar Operasi Caesar', '2018-03-21', 'http://doktersehat.com/7-pertanyaan-seputar-operasi-caesar/', '', NULL, '2018-03-21', '', 'KESEHATAN', '', ''),
('8b8cf5ccdfbfa15df4863e4817570256', 'http://doktersehat.com/feed/', NULL, 'Urutan Terbaik Menggunakan Skincare di Malam Hari', '2018-03-21', 'http://doktersehat.com/urutan-terbaik-menggunakan-skincare-di-malam-hari/', '', NULL, '2018-03-21', '', 'KESEHATAN', '', ''),
('8b8cf5ccdfbfa15df4863e4817570256', 'http://doktersehat.com/feed/', NULL, 'Makan Terlalu Cepat Bisa Memperpendek Usia', '2018-03-21', 'http://doktersehat.com/makan-terlalu-cepat-bisa-memperpendek-usia/', '', NULL, '2018-03-21', '', 'KESEHATAN', '', ''),
('8b8cf5ccdfbfa15df4863e4817570256', 'http://doktersehat.com/feed/', NULL, '5 Tips Agar Rambut Anak Tumbuh Sehat dan Kuat', '2018-03-21', 'http://doktersehat.com/5-tips-agar-rambut-anak-tumbuh-sehat-dan-kuat/', '', NULL, '2018-03-21', '', 'KESEHATAN', '', ''),
('8b8cf5ccdfbfa15df4863e4817570256', 'http://doktersehat.com/feed/', NULL, 'Hati-Hati, Konsumsi Cokelat Bisa Memengaruhi Kepadatan Tulang', '2018-03-21', 'http://doktersehat.com/hati-hati-konsumsi-cokelat-bisa-memengaruhi-kepadatan-tulang/', '', NULL, '2018-03-21', '', 'KESEHATAN', '', ''),
('8b8cf5ccdfbfa15df4863e4817570256', 'http://doktersehat.com/feed/', NULL, 'Tak Ingin Perut Sakit? Konsumsi Makanan Ini Saat Perut Kosong', '2018-03-21', 'http://doktersehat.com/tak-ingin-perut-sakit-konsumsi-makanan-ini-saat-perut-kosong/', '', NULL, '2018-03-21', '', 'KESEHATAN', '', ''),
('12193e7641dbf5c1587978c2bdab6cc0', 'http://www.inilah.com/rss/feed/nasional/', NULL, ' Video Viral Jokowi Bercanda Soal Netflix ', '2018-03-21', 'https://nasional.inilah.com/read/detail/2444498/video-viral-jokowi-bercanda-soal-netflix', '', NULL, '2018-03-21', '', 'NASIONAL', '', ''),
('12193e7641dbf5c1587978c2bdab6cc0', 'http://www.inilah.com/rss/feed/nasional/', NULL, ' Kasus Garuda, KPK Periksa Direktur Citilink ', '2018-03-21', 'https://nasional.inilah.com/read/detail/2444497/kasus-garuda-kpk-periksa-direktur-citilink', '', NULL, '2018-03-21', '', 'NASIONAL', '', ''),
('12193e7641dbf5c1587978c2bdab6cc0', 'http://www.inilah.com/rss/feed/nasional/', NULL, ' Kotak Amal Makam Gus Dur Hasilkan Rp150 Juta ', '2018-03-21', 'https://nasional.inilah.com/read/detail/2444494/kotak-amal-makam-gus-dur-hasilkan-rp150-juta', '', NULL, '2018-03-21', '', 'NASIONAL', '', ''),
('12193e7641dbf5c1587978c2bdab6cc0', 'http://www.inilah.com/rss/feed/nasional/', NULL, ' PAN: Kritik Amien Rais Tidak Perlu Dikhawatirkan ', '2018-03-21', 'https://nasional.inilah.com/read/detail/2444493/pan-kritik-amien-rais-tidak-perlu-dikhawatirkan', '', NULL, '2018-03-21', '', 'NASIONAL', '', ''),
('12193e7641dbf5c1587978c2bdab6cc0', 'http://www.inilah.com/rss/feed/nasional/', NULL, ' Bikin Acara dengan Tersangka, Ini Alasan KPK ', '2018-03-21', 'https://nasional.inilah.com/read/detail/2444492/bikin-acara-dengan-tersangka-ini-alasan-kpk', '', NULL, '2018-03-21', '', 'NASIONAL', '', ''),
('12193e7641dbf5c1587978c2bdab6cc0', 'http://www.inilah.com/rss/feed/nasional/', NULL, ' PDIP Akui CT Potensi Jadi Cawapres Jokowi di 2019 ', '2018-03-21', 'https://nasional.inilah.com/read/detail/2444426/pdip-akui-ct-potensi-jadi-cawapres-jokowi-di-2019', '', NULL, '2018-03-21', '', 'NASIONAL', '', ''),
('12193e7641dbf5c1587978c2bdab6cc0', 'http://www.inilah.com/rss/feed/nasional/', NULL, ' Kekuatan Media CT Bisa Dongkrak Kinerja Jokowi ', '2018-03-21', 'https://nasional.inilah.com/read/detail/2444434/kekuatan-media-ct-bisa-dongkrak-kinerja-jokowi', '', NULL, '2018-03-21', '', 'NASIONAL', '', ''),
('12193e7641dbf5c1587978c2bdab6cc0', 'http://www.inilah.com/rss/feed/nasional/', NULL, ' CT Diharapkan Tambah Kekuatan Jokowi ', '2018-03-21', 'https://nasional.inilah.com/read/detail/2444433/ct-diharapkan-tambah-kekuatan-jokowi', '', NULL, '2018-03-21', '', 'NASIONAL', '', ''),
('12193e7641dbf5c1587978c2bdab6cc0', 'http://www.inilah.com/rss/feed/nasional/', NULL, ' Masuk Radar Cawapres Jokowi PDIP : CT Aset ', '2018-03-20', 'https://nasional.inilah.com/read/detail/2444422/masuk-radar-cawapres-jokowi-pdip-ct-aset', '', NULL, '2018-03-20', '', 'NASIONAL', '', ''),
('12193e7641dbf5c1587978c2bdab6cc0', 'http://www.inilah.com/rss/feed/nasional/', NULL, ' PDIP Mesti Uji Elektabilitas CT ', '2018-03-20', 'https://nasional.inilah.com/read/detail/2444440/pdip-mesti-uji-elektabilitas-ct', '', NULL, '2018-03-20', '', 'NASIONAL', '', ''),
('609eb82337232e1ee668f23848624029', 'http://www.inilah.com/rss/feed/sehat/', NULL, ' Ini Cara Mendeteksi Penyakit Ginjal pada Anak ', '2018-03-19', 'https://gayahidup.inilah.com/read/detail/2444009/ini-cara-mendeteksi-penyakit-ginjal-pada-anak', '', NULL, '2018-03-19', '', 'KESEHATAN', '', ''),
('609eb82337232e1ee668f23848624029', 'http://www.inilah.com/rss/feed/sehat/', NULL, ' Kerusakan Saraf Tepi Terjadi pada Pasien Diabetes ', '2018-03-18', 'https://gayahidup.inilah.com/read/detail/2443959/kerusakan-saraf-tepi-terjadi-pada-pasien-diabetes', '', NULL, '2018-03-18', '', 'KESEHATAN', '', ''),
('609eb82337232e1ee668f23848624029', 'http://www.inilah.com/rss/feed/sehat/', NULL, ' Ini Cara Baru Hilangkan rasa Kebas dan Kesemutan ', '2018-03-18', 'https://gayahidup.inilah.com/read/detail/2443958/ini-cara-baru-hilangkan-rasa-kebas-dan-kesemutan', '', NULL, '2018-03-18', '', 'KESEHATAN', '', ''),
('609eb82337232e1ee668f23848624029', 'http://www.inilah.com/rss/feed/sehat/', NULL, ' Ini Sebab Penyakit Ginjal pada Anak ', '2018-03-18', 'https://gayahidup.inilah.com/read/detail/2443955/ini-sebab-penyakit-ginjal-pada-anak', '', NULL, '2018-03-18', '', 'KESEHATAN', '', ''),
('609eb82337232e1ee668f23848624029', 'http://www.inilah.com/rss/feed/sehat/', NULL, ' Ini Rahasia Kulit Agar Awet Muda ', '2018-03-16', 'https://gayahidup.inilah.com/read/detail/2443675/ini-rahasia-kulit-agar-awet-muda', '', NULL, '2018-03-16', '', 'KESEHATAN', '', ''),
('609eb82337232e1ee668f23848624029', 'http://www.inilah.com/rss/feed/sehat/', NULL, ' Ini Alasan Banyak Orang Kurang Tidur ', '2018-03-16', 'https://gayahidup.inilah.com/read/detail/2443651/ini-alasan-banyak-orang-kurang-tidur', '', NULL, '2018-03-16', '', 'KESEHATAN', '', ''),
('609eb82337232e1ee668f23848624029', 'http://www.inilah.com/rss/feed/sehat/', NULL, ' Tiga Alasan Penting Latihan Beban ', '2018-03-16', 'https://gayahidup.inilah.com/read/detail/2443536/tiga-alasan-penting-latihan-beban', '', NULL, '2018-03-16', '', 'KESEHATAN', '', ''),
('609eb82337232e1ee668f23848624029', 'http://www.inilah.com/rss/feed/sehat/', NULL, ' Pendidikan Gizi di Sekolah Berawal dari Guru ', '2018-03-15', 'https://gayahidup.inilah.com/read/detail/2443330/pendidikan-gizi-di-sekolah-berawal-dari-guru', '', NULL, '2018-03-15', '', 'KESEHATAN', '', ''),
('609eb82337232e1ee668f23848624029', 'http://www.inilah.com/rss/feed/sehat/', NULL, ' Enam Fakta dan Mitos Tentang Menstruasi ', '2018-03-15', 'https://gayahidup.inilah.com/read/detail/2443236/enam-fakta-dan-mitos-tentang-menstruasi', '', NULL, '2018-03-15', '', 'KESEHATAN', '', ''),
('609eb82337232e1ee668f23848624029', 'http://www.inilah.com/rss/feed/sehat/', NULL, ' Bersih Saat Menstruasi, Penting untuk Organ Intim ', '2018-03-15', 'https://gayahidup.inilah.com/read/detail/2443235/bersih-saat-menstruasi-penting-untuk-organ-intim', '', NULL, '2018-03-15', '', 'KESEHATAN', '', ''),
('609eb82337232e1ee668f23848624029', 'http://www.inilah.com/rss/feed/sehat/', NULL, ' Tips Hilangkan Cemas Hitung Siklus Menstruasi ', '2018-03-14', 'https://gayahidup.inilah.com/read/detail/2443158/tips-hilangkan-cemas-hitung-siklus-menstruasi', '', NULL, '2018-03-14', '', 'KESEHATAN', '', ''),
('609eb82337232e1ee668f23848624029', 'http://www.inilah.com/rss/feed/sehat/', NULL, ' Tujuh Fakta Tentang Menstruasi ', '2018-03-14', 'https://gayahidup.inilah.com/read/detail/2443153/tujuh-fakta-tentang-menstruasi', '', NULL, '2018-03-14', '', 'KESEHATAN', '', ''),
('609eb82337232e1ee668f23848624029', 'http://www.inilah.com/rss/feed/sehat/', NULL, ' Ketahui Lebih Dalam, Empat Fase Menstruasi ', '2018-03-14', 'https://gayahidup.inilah.com/read/detail/2443147/ketahui-lebih-dalam-empat-fase-menstruasi', '', NULL, '2018-03-14', '', 'KESEHATAN', '', ''),
('609eb82337232e1ee668f23848624029', 'http://www.inilah.com/rss/feed/sehat/', NULL, ' Penting Tahu Sistem reproduksi Sebelum Menstruasi ', '2018-03-14', 'https://gayahidup.inilah.com/read/detail/2443118/penting-tahu-sistem-reproduksi-sebelum-menstruasi', '', NULL, '2018-03-14', '', 'KESEHATAN', '', ''),
('609eb82337232e1ee668f23848624029', 'http://www.inilah.com/rss/feed/sehat/', NULL, ' Atasi Masalah Tidur dengan Makanan Sehat ', '2018-03-13', 'https://gayahidup.inilah.com/read/detail/2442771/atasi-masalah-tidur-dengan-makanan-sehat', '', NULL, '2018-03-13', '', 'KESEHATAN', '', ''),
('609eb82337232e1ee668f23848624029', 'http://www.inilah.com/rss/feed/sehat/', NULL, ' Orang Usia Lanjut Kehilangan Massa Otot Kaki? ', '2018-03-13', 'https://gayahidup.inilah.com/read/detail/2442765/orang-usia-lanjut-kehilangan-massa-otot-kaki', '', NULL, '2018-03-13', '', 'KESEHATAN', '', ''),
('609eb82337232e1ee668f23848624029', 'http://www.inilah.com/rss/feed/sehat/', NULL, ' Lima Makanan Membantu Turunkan Kolesterol ', '2018-03-12', 'https://gayahidup.inilah.com/read/detail/2442612/lima-makanan-membantu-turunkan-kolesterol', '', NULL, '2018-03-12', '', 'KESEHATAN', '', ''),
('609eb82337232e1ee668f23848624029', 'http://www.inilah.com/rss/feed/sehat/', NULL, ' Anyo Charity Run 2018 untuk Anak Penyitas Kanker ', '2018-03-12', 'https://gayahidup.inilah.com/read/detail/2442555/anyo-charity-run-2018-untuk-anak-penyitas-kanker', '', NULL, '2018-03-12', '', 'KESEHATAN', '', ''),
('609eb82337232e1ee668f23848624029', 'http://www.inilah.com/rss/feed/sehat/', NULL, ' Stroller dan Car Seat Edisi Liverpool Dilelang ', '2018-03-11', 'https://gayahidup.inilah.com/read/detail/2442339/stroller-dan-car-seat-edisi-liverpool-dilelang', '', NULL, '2018-03-11', '', 'KESEHATAN', '', ''),
('609eb82337232e1ee668f23848624029', 'http://www.inilah.com/rss/feed/sehat/', NULL, ' Penting Ajak Anak Bermain di Luar Ruangan ', '2018-03-11', 'https://gayahidup.inilah.com/read/detail/2442332/penting-ajak-anak-bermain-di-luar-ruangan', '', NULL, '2018-03-11', '', 'KESEHATAN', '', ''),
('dc48a737ad88ebb6f293ce106a8cd85e', 'http://www.republika.co.id/rss/metropolis/info-sehat', NULL, 'Pakar Ungkap Rahasia Awet Muda', '2018-03-21', 'http://gayahidup.republika.co.id/berita/gaya-hidup/info-sehat/18/03/21/p5wxhj328-pakar-ungkap-rahasia-awet-muda', '', NULL, '2018-03-21', '', 'KESEHATAN', '', ''),
('dc48a737ad88ebb6f293ce106a8cd85e', 'http://www.republika.co.id/rss/metropolis/info-sehat', NULL, 'Kemenkes: Hanya 2,3 Persen Orang Menyikat Gigi dengan Benar', '2018-03-21', 'http://gayahidup.republika.co.id/berita/gaya-hidup/info-sehat/18/03/21/p5wv1g328-kemenkes-hanya-23-persen-orang-menyikat-gigi-dengan-benar', '', NULL, '2018-03-21', '', 'KESEHATAN', '', ''),
('dc48a737ad88ebb6f293ce106a8cd85e', 'http://www.republika.co.id/rss/metropolis/info-sehat', NULL, 'Depresi Sebabkan Gangguan pada Memori', '2018-03-20', 'http://gayahidup.republika.co.id/berita/gaya-hidup/info-sehat/18/03/21/p5wq5k284-depresi-sebabkan-gangguan-pada-memori', '', NULL, '2018-03-20', '', 'KESEHATAN', '', ''),
('dc48a737ad88ebb6f293ce106a8cd85e', 'http://www.republika.co.id/rss/metropolis/info-sehat', NULL, 'Susu Platipus Ternyata Bermanfat Perangi Bakteri', '2018-03-20', 'http://gayahidup.republika.co.id/berita/gaya-hidup/info-sehat/18/03/20/p5w3xu328-susu-platipus-ternyata-bermanfat-perangi-bakteri', '', NULL, '2018-03-20', '', 'KESEHATAN', '', ''),
('dc48a737ad88ebb6f293ce106a8cd85e', 'http://www.republika.co.id/rss/metropolis/info-sehat', NULL, 'Benarkah Minyak Atsiri Aman Digunakan?', '2018-03-20', 'http://gayahidup.republika.co.id/berita/gaya-hidup/info-sehat/18/03/20/p5w0zx328-benarkah-minyak-atsiri-aman-digunakan', '', NULL, '2018-03-20', '', 'KESEHATAN', '', ''),
('dc48a737ad88ebb6f293ce106a8cd85e', 'http://www.republika.co.id/rss/metropolis/info-sehat', NULL, 'Ternyata Pergerakan Bayi dalam Rahim Ada Maknanya, Apa Itu?', '2018-03-20', 'http://gayahidup.republika.co.id/berita/gaya-hidup/info-sehat/18/03/20/p5vr2s328-ternyata-pergerakan-bayi-dalam-rahim-ada-maknanya-apa-itu', '', NULL, '2018-03-20', '', 'KESEHATAN', '', ''),
('dc48a737ad88ebb6f293ce106a8cd85e', 'http://www.republika.co.id/rss/metropolis/info-sehat', NULL, 'Pelacak Kebugaran Ini Ingatkan Anak Aktif Bergerak', '2018-03-19', 'http://gayahidup.republika.co.id/berita/gaya-hidup/info-sehat/18/03/20/p5uzql359-pelacak-kebugaran-ini-ingatkan-anak-aktif-bergerak', '', NULL, '2018-03-19', '', 'KESEHATAN', '', ''),
('dc48a737ad88ebb6f293ce106a8cd85e', 'http://www.republika.co.id/rss/metropolis/info-sehat', NULL, 'Pil KB untuk Pria Selangkah Makin Maju', '2018-03-19', 'http://gayahidup.republika.co.id/berita/gaya-hidup/info-sehat/18/03/19/p5u1vg328-pil-kb-untuk-pria-selangkah-makin-maju', '', NULL, '2018-03-19', '', 'KESEHATAN', '', ''),
('dc48a737ad88ebb6f293ce106a8cd85e', 'http://www.republika.co.id/rss/metropolis/info-sehat', NULL, 'Studi: Ibu Gemuk dan Sesar Pengaruhi Obesitas Anak', '2018-03-19', 'http://gayahidup.republika.co.id/berita/gaya-hidup/info-sehat/18/03/19/p5tgky284-studi-ibu-gemuk-dan-sesar-pengaruhi-obesitas-anak', '', NULL, '2018-03-19', '', 'KESEHATAN', '', ''),
('dc48a737ad88ebb6f293ce106a8cd85e', 'http://www.republika.co.id/rss/metropolis/info-sehat', NULL, 'Hindari Gagal Jantung dengan Cara Ini', '2018-03-18', 'http://gayahidup.republika.co.id/berita/gaya-hidup/info-sehat/18/03/18/p5s3xv368-hindari-gagal-jantung-dengan-cara-ini', '', NULL, '2018-03-18', '', 'KESEHATAN', '', ''),
('dc48a737ad88ebb6f293ce106a8cd85e', 'http://www.republika.co.id/rss/metropolis/info-sehat', NULL, 'Terapi Sel Punca Menjanjikan Atasi Defisiensi Imun', '2018-03-18', 'http://gayahidup.republika.co.id/berita/gaya-hidup/info-sehat/18/03/18/p5rlyy415-terapi-sel-punca-menjanjikan-atasi-defisiensi-imun', '', NULL, '2018-03-18', '', 'KESEHATAN', '', ''),
('dc48a737ad88ebb6f293ce106a8cd85e', 'http://www.republika.co.id/rss/metropolis/info-sehat', NULL, 'Kebiasaan Tidur Berpengaruh pada Kesehatan', '2018-03-18', 'http://gayahidup.republika.co.id/berita/gaya-hidup/info-sehat/18/03/18/p5rkt4415-kebiasaan-tidur-berpengaruh-pada-kesehatan', '', NULL, '2018-03-18', '', 'KESEHATAN', '', ''),
('dc48a737ad88ebb6f293ce106a8cd85e', 'http://www.republika.co.id/rss/metropolis/info-sehat', NULL, 'Awas, Dua Minyak Ini Bisa Buat Payudara Remaja Pria Membesar', '2018-03-17', 'http://gayahidup.republika.co.id/berita/gaya-hidup/info-sehat/18/03/18/p5r3wx348-awas-dua-minyak-ini-bisa-buat-payudara-remaja-pria-membesar', '', NULL, '2018-03-17', '', 'KESEHATAN', '', ''),
('dc48a737ad88ebb6f293ce106a8cd85e', 'http://www.republika.co.id/rss/metropolis/info-sehat', NULL, 'Obat Steroid Jangka Panjang Bisa Memicu Glaukoma ', '2018-03-17', 'http://gayahidup.republika.co.id/berita/gaya-hidup/info-sehat/18/03/18/p5qydk284-obat-steroid-jangka-panjang-bisa-memicu-glaukoma', '', NULL, '2018-03-17', '', 'KESEHATAN', '', ''),
('dc48a737ad88ebb6f293ce106a8cd85e', 'http://www.republika.co.id/rss/metropolis/info-sehat', NULL, 'Rajin Olahraga Saat Hamil Permudah Proses Melahirkan', '2018-03-17', 'http://gayahidup.republika.co.id/berita/gaya-hidup/info-sehat/18/03/17/p5q3l4284-rajin-olahraga-saat-hamil-permudah-proses-melahirkan', '', NULL, '2018-03-17', '', 'KESEHATAN', '', '');

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

-- --------------------------------------------------------

--
-- Table structure for table `user1bc448f71bc4b4b59406253f85c2c4b5843`
--

CREATE TABLE `user1bc448f71bc4b4b59406253f85c2c4b5843` (
  `kd` varchar(50) NOT NULL,
  `usernamex` varchar(100) DEFAULT NULL,
  `passwordx` varchar(50) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user1bc448f71bc4b4b59406253f85c2c4b5843`
--

INSERT INTO `user1bc448f71bc4b4b59406253f85c2c4b5843` (`kd`, `usernamex`, `passwordx`, `nama`, `postdate`, `email`) VALUES
('1bc448f71bc4b4b59406253f85c2c4b5843', '1', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2018-03-21 03:21:06', '1xtkeongxgmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `user4d39795222091957786e930436822049355`
--

CREATE TABLE `user4d39795222091957786e930436822049355` (
  `kd` varchar(50) NOT NULL,
  `usernamex` varchar(100) DEFAULT NULL,
  `passwordx` varchar(50) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user4d39795222091957786e930436822049355`
--

INSERT INTO `user4d39795222091957786e930436822049355` (`kd`, `usernamex`, `passwordx`, `nama`, `postdate`, `email`) VALUES
('4d39795222091957786e930436822049355', 'biasawae', 'e9b690b66c32ca3237bb283e718f342a', 'biasawae', '2018-03-21 03:22:53', 'biasawaextkeongxgmail.com');

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
-- Table structure for table `user_chat1bc448f71bc4b4b59406253f85c2c4b5843`
--

CREATE TABLE `user_chat1bc448f71bc4b4b59406253f85c2c4b5843` (
  `kd` varchar(50) NOT NULL,
  `untuk` varchar(50) DEFAULT NULL,
  `isi` longtext,
  `postdate` datetime DEFAULT NULL,
  `dibaca` enum('true','false') DEFAULT 'false'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_chat4d39795222091957786e930436822049355`
--

CREATE TABLE `user_chat4d39795222091957786e930436822049355` (
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
-- Table structure for table `user_event1bc448f71bc4b4b59406253f85c2c4b5843`
--

CREATE TABLE `user_event1bc448f71bc4b4b59406253f85c2c4b5843` (
  `kd` varchar(50) NOT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `tgl_mulai` datetime DEFAULT NULL,
  `tgl_selesai` datetime DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_event4d39795222091957786e930436822049355`
--

CREATE TABLE `user_event4d39795222091957786e930436822049355` (
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
-- Table structure for table `user_event_like1bc448f71bc4b4b59406253f85c2c4b5843`
--

CREATE TABLE `user_event_like1bc448f71bc4b4b59406253f85c2c4b5843` (
  `kd` varchar(50) NOT NULL,
  `kd_user_event` varchar(50) DEFAULT NULL,
  `dari` varchar(50) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_event_like4d39795222091957786e930436822049355`
--

CREATE TABLE `user_event_like4d39795222091957786e930436822049355` (
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
-- Table structure for table `user_event_msg1bc448f71bc4b4b59406253f85c2c4b5843`
--

CREATE TABLE `user_event_msg1bc448f71bc4b4b59406253f85c2c4b5843` (
  `kd` varchar(50) NOT NULL,
  `kd_user_event` varchar(50) DEFAULT NULL,
  `dari` varchar(50) DEFAULT NULL,
  `msg` varchar(255) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_event_msg4d39795222091957786e930436822049355`
--

CREATE TABLE `user_event_msg4d39795222091957786e930436822049355` (
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
-- Table structure for table `user_keahlian1bc448f71bc4b4b59406253f85c2c4b5843`
--

CREATE TABLE `user_keahlian1bc448f71bc4b4b59406253f85c2c4b5843` (
  `kd` varchar(50) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_keahlian4d39795222091957786e930436822049355`
--

CREATE TABLE `user_keahlian4d39795222091957786e930436822049355` (
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
-- Table structure for table `user_minat1bc448f71bc4b4b59406253f85c2c4b5843`
--

CREATE TABLE `user_minat1bc448f71bc4b4b59406253f85c2c4b5843` (
  `kd` varchar(50) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_minat4d39795222091957786e930436822049355`
--

CREATE TABLE `user_minat4d39795222091957786e930436822049355` (
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
-- Table structure for table `user_profil1bc448f71bc4b4b59406253f85c2c4b5843`
--

CREATE TABLE `user_profil1bc448f71bc4b4b59406253f85c2c4b5843` (
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
-- Table structure for table `user_profil4d39795222091957786e930436822049355`
--

CREATE TABLE `user_profil4d39795222091957786e930436822049355` (
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
-- Table structure for table `user_publik_status1bc448f71bc4b4b59406253f85c2c4b5843`
--

CREATE TABLE `user_publik_status1bc448f71bc4b4b59406253f85c2c4b5843` (
  `kd` varchar(50) NOT NULL,
  `kd_status` longtext,
  `postdate` datetime DEFAULT NULL,
  `konek` enum('true','false') NOT NULL DEFAULT 'false'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_publik_status4d39795222091957786e930436822049355`
--

CREATE TABLE `user_publik_status4d39795222091957786e930436822049355` (
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

-- --------------------------------------------------------

--
-- Table structure for table `user_status1bc448f71bc4b4b59406253f85c2c4b5843`
--

CREATE TABLE `user_status1bc448f71bc4b4b59406253f85c2c4b5843` (
  `kd` varchar(50) NOT NULL,
  `status` longtext,
  `urlnya` longtext,
  `urlnya_judul` longtext,
  `urlnya_image` longtext,
  `urlnya_deskripsi` longtext,
  `postdate` datetime DEFAULT NULL,
  `filex` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_status1bc448f71bc4b4b59406253f85c2c4b5843`
--

INSERT INTO `user_status1bc448f71bc4b4b59406253f85c2c4b5843` (`kd`, `status`, `urlnya`, `urlnya_judul`, `urlnya_image`, `urlnya_deskripsi`, `postdate`, `filex`) VALUES
('4db9801215db65c05d8753554cd367b3', 'testing...', 'httptesting...', '', '', '', '2018-03-21 03:21:33', ''),
('bf98bb9466edf97f6ac80b1c7caaff11', 'satu... dua... tiga...', 'httpsatu...', '', '', '', '2018-03-21 03:21:44', ''),
('f33e4944fc899fe593a43ed03d737c92', 'satu itu saya', 'httpsatu', '', '', '', '2018-03-21 03:22:02', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_status4d39795222091957786e930436822049355`
--

CREATE TABLE `user_status4d39795222091957786e930436822049355` (
  `kd` varchar(50) NOT NULL,
  `status` longtext,
  `urlnya` longtext,
  `urlnya_judul` longtext,
  `urlnya_image` longtext,
  `urlnya_deskripsi` longtext,
  `postdate` datetime DEFAULT NULL,
  `filex` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_status4d39795222091957786e930436822049355`
--

INSERT INTO `user_status4d39795222091957786e930436822049355` (`kd`, `status`, `urlnya`, `urlnya_judul`, `urlnya_image`, `urlnya_deskripsi`, `postdate`, `filex`) VALUES
('d4536841854071ee6f68442fd55e6b03', 'http:xgmringxxgmringxgithub.comxgmringxhajirodeon', 'http://github.com/hajirodeon', 'hajirodeon (agus muhajir) Â· GitHub', 'https://avatars3.githubusercontent.com/u/16890701?s=400&v=4', 'hajirodeon has 79 repositories available. Follow their code on GitHub.', '2018-03-21 03:23:24', ''),
('8097c9b11381bde96298e063d14fbda2', 'Orang NORMAL, pake SOSMED umum ya.. Kalau Orang KELAINAN, bikin SOSMED sendiri. Bangun komunitas sendiri. dengan CMS BIASAWAExstrixSOCIALxstrixMEDIA', 'httpOrang', '', '', '', '2018-03-21 03:26:17', ''),
('fd320d3b813eb3e40ab25b8a483ce636', 'Bangun Sendiri SOSMED Kamu Sendiri', 'httpBangun', '', '', '', '2018-03-21 03:26:39', ''),
('c3f1de8da124e6ef199be6f754fd5d7a', 'Free Kelas GITHUB. Belajar manajemen dan pengembangan aplikasi.\r\n\r\nhttp:xgmringxxgmringxt.mexgmringxfreekelasgithub', 'httpFree', '', '', '', '2018-03-21 03:27:10', ''),
('a22be76ea2620592192949c4704a0c37', 'Free Kelas phonegap Cordova. Group khusus untuk belajar membuat aplikasi android basis web, dengan phonegap cordova.\r\n\r\nhttp:xgmringxxgmringxt.mexgmringxfreekelasphonegapcordova', 'httpFree', '', '', '', '2018-03-21 03:27:31', ''),
('2bd3994aa4c5aa963add56370b99ec94', 'Ayo&hellipxkommax Bikin web dengan gratis&hellipxkommax Hanya pakai simudah.com', 'httpAyo&hellip;', '', '', '', '2018-03-21 03:27:51', ''),
('8f822e3fa3641d1d32575038496bf2f7', 'http:xgmringxxgmringxkompas.com', 'http://kompas.com', 'Berita Terkini Hari Ini, Kabar Akurat Tepercaya - Kompas.com', 'https://asset.kompas.com/data/2017/wp/images/og_facebook.jpg', 'Kompas.com - Berita Indonesia dan Dunia Terkini Hari Ini, Kabar Harian Terbaru Tepercaya Terlengkap Seputar Politik, Ekonomi, Travel, Teknologi, Otomotif, Bola', '2018-03-21 03:28:03', ''),
('a6315da5646a53ecab69d5e0c5d57bb7', 'Ayo bikin sendiri web kamu&hellipxkommax yang mudah itu hanya di simudah.com beberapa klik saja, kamu sudah bisa memiliki web sendiri.', 'httpAyo', '', '', '', '2018-03-21 03:28:48', ''),
('5db77bf1379517cbdcc7ba102878eddc', 'http:xgmringxxgmringxwalanja.co.idxgmringx Booking hotel hemat penuh diskon untuk wilayah kota Bandung', 'http://walanja.co.id/', 'Booking Hotel Murah Di Bandung | Payment Walanja', '', '', '2018-03-21 03:29:23', ''),
('e34485949ece92369ab9f512e9cb29fb', 's', 'https', '', '', '', '2018-03-21 03:37:50', ''),
('e503ab4c56a7b933d4770c9a39263229', 'ssddd', 'httpssddd', '', '', '', '2018-03-21 03:39:10', ''),
('6d7fd7e6e1edc32b0aa7ab16f3d3b969', 'sadari aja ya...', 'httpsadari', '', '', '', '2018-03-21 03:41:07', ''),
('33b8fed145f1eeaacb68ef2e49e6bd41', 'coba ya..', 'httpcoba', '', '', '', '2018-03-21 04:44:34', ''),
('245e1c09de7baabc09d5cc2bfc9a4d0f', 'siap saja deh', 'httpsiap', '', '', '', '2018-03-21 04:44:44', ''),
('25f2c08393fe37240396bf30fee364cb', '&ampxkommaxltxkommaxa href=xpsijix..xgmringx1xpsijix&ampxkommaxgtxkommax1&ampxkommaxltxkommaxxgmringxa&ampxkommaxgtxkommax coba...', 'http<a', '', '', '', '2018-03-21 04:51:29', '');

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
-- Table structure for table `user_status_like1bc448f71bc4b4b59406253f85c2c4b5843`
--

CREATE TABLE `user_status_like1bc448f71bc4b4b59406253f85c2c4b5843` (
  `kd` varchar(50) NOT NULL,
  `kd_user_status` varchar(50) DEFAULT NULL,
  `dari` varchar(50) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_status_like4d39795222091957786e930436822049355`
--

CREATE TABLE `user_status_like4d39795222091957786e930436822049355` (
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

-- --------------------------------------------------------

--
-- Table structure for table `user_status_msg1bc448f71bc4b4b59406253f85c2c4b5843`
--

CREATE TABLE `user_status_msg1bc448f71bc4b4b59406253f85c2c4b5843` (
  `kd` varchar(50) NOT NULL,
  `kd_user_status` varchar(50) DEFAULT NULL,
  `dari` varchar(50) DEFAULT NULL,
  `msg` varchar(255) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_status_msg1bc448f71bc4b4b59406253f85c2c4b5843`
--

INSERT INTO `user_status_msg1bc448f71bc4b4b59406253f85c2c4b5843` (`kd`, `kd_user_status`, `dari`, `msg`, `postdate`) VALUES
('11b827647382a8102180032e60d0901d', 'f33e4944fc899fe593a43ed03d737c92', '1bc448f71bc4b4b59406253f85c2c4b5843', 'ok... satu saja ya', '2018-03-21 03:22:12'),
('3173da6ecd6fe2ec1cd1d0d26e3eb365', 'bf98bb9466edf97f6ac80b1c7caaff11', '1bc448f71bc4b4b59406253f85c2c4b5843', 'boleh... satu ya', '2018-03-21 03:22:19'),
('a06f69ed5ffb4e8246369dd5a7b8b3ad', 'bf98bb9466edf97f6ac80b1c7caaff11', '1bc448f71bc4b4b59406253f85c2c4b5843', 'saya yakin, itu satu', '2018-03-21 03:22:28');

-- --------------------------------------------------------

--
-- Table structure for table `user_status_msg4d39795222091957786e930436822049355`
--

CREATE TABLE `user_status_msg4d39795222091957786e930436822049355` (
  `kd` varchar(50) NOT NULL,
  `kd_user_status` varchar(50) DEFAULT NULL,
  `dari` varchar(50) DEFAULT NULL,
  `msg` varchar(255) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_status_msg4d39795222091957786e930436822049355`
--

INSERT INTO `user_status_msg4d39795222091957786e930436822049355` (`kd`, `kd_user_status`, `dari`, `msg`, `postdate`) VALUES
('82b3f426a4332af3f1bd2dbfa6ba1421', 'd4536841854071ee6f68442fd55e6b03', '4d39795222091957786e930436822049355', 'berbagai karya opensource dari Agus Muhajir, bisa unduh ya', '2018-03-21 03:23:48'),
('8f33e1951c1a7f0baca3f9447e4b51be', 'e503ab4c56a7b933d4770c9a39263229', '4d39795222091957786e930436822049355', 'coba...', '2018-03-21 03:40:29'),
('1a9f762a560d34256e73cb1060a0cde3', 'e34485949ece92369ab9f512e9cb29fb', '4d39795222091957786e930436822049355', 'kesempatan saya nih..', '2018-03-21 03:40:41'),
('a84f5deadbc22b7ad138c8751b042d72', '33b8fed145f1eeaacb68ef2e49e6bd41', '4d39795222091957786e930436822049355', 'sip...', '2018-03-21 04:44:54'),
('5e20e9b986ffbe5299e5e982d38fc5f0', '25f2c08393fe37240396bf30fee364cb', '4d39795222091957786e930436822049355', 'tes', '2018-03-21 04:51:37'),
('f49e0ab3ce0e15a45bc6847dba19ddec', '245e1c09de7baabc09d5cc2bfc9a4d0f', '4d39795222091957786e930436822049355', 'yakin bisa...', '2018-03-21 04:51:43');

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
-- Table structure for table `user_status_msg_dibaca1bc448f71bc4b4b59406253f85c2c4b5843`
--

CREATE TABLE `user_status_msg_dibaca1bc448f71bc4b4b59406253f85c2c4b5843` (
  `kd` varchar(50) NOT NULL,
  `kd_msg` varchar(50) DEFAULT NULL,
  `dibaca` enum('true','false') NOT NULL DEFAULT 'false',
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_status_msg_dibaca4d39795222091957786e930436822049355`
--

CREATE TABLE `user_status_msg_dibaca4d39795222091957786e930436822049355` (
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
-- Table structure for table `user_teman1bc448f71bc4b4b59406253f85c2c4b5843`
--

CREATE TABLE `user_teman1bc448f71bc4b4b59406253f85c2c4b5843` (
  `kd` varchar(50) NOT NULL,
  `kd_user_teman` varchar(50) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL,
  `konek` enum('true','false') NOT NULL DEFAULT 'false'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_teman4d39795222091957786e930436822049355`
--

CREATE TABLE `user_teman4d39795222091957786e930436822049355` (
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
-- Table structure for table `_tmp_coba`
--

CREATE TABLE `_tmp_coba` (
  `kd` varchar(50) NOT NULL,
  `cobaya` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_tmp_coba`
--

INSERT INTO `_tmp_coba` (`kd`, `cobaya`) VALUES
('@[9x] @[113]', '1'),
('@[9x] @[113] oke deh... saya belajar  @@[9x]', '1'),
('diam itu indah... betulkan... @[113]   apalagi cob', '1');

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
-- Indexes for table `m_publik_user_status`
--
ALTER TABLE `m_publik_user_status`
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
-- Indexes for table `user1bc448f71bc4b4b59406253f85c2c4b5843`
--
ALTER TABLE `user1bc448f71bc4b4b59406253f85c2c4b5843`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user4d39795222091957786e930436822049355`
--
ALTER TABLE `user4d39795222091957786e930436822049355`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_chat`
--
ALTER TABLE `user_chat`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_chat1bc448f71bc4b4b59406253f85c2c4b5843`
--
ALTER TABLE `user_chat1bc448f71bc4b4b59406253f85c2c4b5843`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_chat4d39795222091957786e930436822049355`
--
ALTER TABLE `user_chat4d39795222091957786e930436822049355`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_event`
--
ALTER TABLE `user_event`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_event1bc448f71bc4b4b59406253f85c2c4b5843`
--
ALTER TABLE `user_event1bc448f71bc4b4b59406253f85c2c4b5843`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_event4d39795222091957786e930436822049355`
--
ALTER TABLE `user_event4d39795222091957786e930436822049355`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_event_like`
--
ALTER TABLE `user_event_like`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_event_like1bc448f71bc4b4b59406253f85c2c4b5843`
--
ALTER TABLE `user_event_like1bc448f71bc4b4b59406253f85c2c4b5843`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_event_like4d39795222091957786e930436822049355`
--
ALTER TABLE `user_event_like4d39795222091957786e930436822049355`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_event_msg`
--
ALTER TABLE `user_event_msg`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_event_msg1bc448f71bc4b4b59406253f85c2c4b5843`
--
ALTER TABLE `user_event_msg1bc448f71bc4b4b59406253f85c2c4b5843`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_event_msg4d39795222091957786e930436822049355`
--
ALTER TABLE `user_event_msg4d39795222091957786e930436822049355`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_keahlian`
--
ALTER TABLE `user_keahlian`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_keahlian1bc448f71bc4b4b59406253f85c2c4b5843`
--
ALTER TABLE `user_keahlian1bc448f71bc4b4b59406253f85c2c4b5843`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_keahlian4d39795222091957786e930436822049355`
--
ALTER TABLE `user_keahlian4d39795222091957786e930436822049355`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_minat`
--
ALTER TABLE `user_minat`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_minat1bc448f71bc4b4b59406253f85c2c4b5843`
--
ALTER TABLE `user_minat1bc448f71bc4b4b59406253f85c2c4b5843`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_minat4d39795222091957786e930436822049355`
--
ALTER TABLE `user_minat4d39795222091957786e930436822049355`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_profil`
--
ALTER TABLE `user_profil`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_profil1bc448f71bc4b4b59406253f85c2c4b5843`
--
ALTER TABLE `user_profil1bc448f71bc4b4b59406253f85c2c4b5843`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_profil4d39795222091957786e930436822049355`
--
ALTER TABLE `user_profil4d39795222091957786e930436822049355`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_publik_status1bc448f71bc4b4b59406253f85c2c4b5843`
--
ALTER TABLE `user_publik_status1bc448f71bc4b4b59406253f85c2c4b5843`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_publik_status4d39795222091957786e930436822049355`
--
ALTER TABLE `user_publik_status4d39795222091957786e930436822049355`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_status`
--
ALTER TABLE `user_status`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_status1bc448f71bc4b4b59406253f85c2c4b5843`
--
ALTER TABLE `user_status1bc448f71bc4b4b59406253f85c2c4b5843`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_status4d39795222091957786e930436822049355`
--
ALTER TABLE `user_status4d39795222091957786e930436822049355`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_status_like`
--
ALTER TABLE `user_status_like`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_status_like1bc448f71bc4b4b59406253f85c2c4b5843`
--
ALTER TABLE `user_status_like1bc448f71bc4b4b59406253f85c2c4b5843`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_status_like4d39795222091957786e930436822049355`
--
ALTER TABLE `user_status_like4d39795222091957786e930436822049355`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_status_msg`
--
ALTER TABLE `user_status_msg`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_status_msg1bc448f71bc4b4b59406253f85c2c4b5843`
--
ALTER TABLE `user_status_msg1bc448f71bc4b4b59406253f85c2c4b5843`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_status_msg4d39795222091957786e930436822049355`
--
ALTER TABLE `user_status_msg4d39795222091957786e930436822049355`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_status_msg_dibaca`
--
ALTER TABLE `user_status_msg_dibaca`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_status_msg_dibaca1bc448f71bc4b4b59406253f85c2c4b5843`
--
ALTER TABLE `user_status_msg_dibaca1bc448f71bc4b4b59406253f85c2c4b5843`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_status_msg_dibaca4d39795222091957786e930436822049355`
--
ALTER TABLE `user_status_msg_dibaca4d39795222091957786e930436822049355`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_teman`
--
ALTER TABLE `user_teman`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_teman1bc448f71bc4b4b59406253f85c2c4b5843`
--
ALTER TABLE `user_teman1bc448f71bc4b4b59406253f85c2c4b5843`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_teman4d39795222091957786e930436822049355`
--
ALTER TABLE `user_teman4d39795222091957786e930436822049355`
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
