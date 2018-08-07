-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 07, 2018 at 05:22 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gasnet`
--

-- --------------------------------------------------------

--
-- Table structure for table `inventaris`
--

CREATE TABLE `inventaris` (
  `IDinventaris` int(11) NOT NULL,
  `kodeBarang` varchar(20) NOT NULL,
  `jenisAset` varchar(100) NOT NULL,
  `namaBarang` varchar(100) DEFAULT NULL,
  `noInventaris` varchar(20) DEFAULT NULL,
  `harga` int(30) NOT NULL DEFAULT '0',
  `merk` varchar(100) NOT NULL,
  `bahan` varchar(100) NOT NULL,
  `tahun` int(11) NOT NULL,
  `bulan` int(11) DEFAULT NULL,
  `lokasi` varchar(255) DEFAULT NULL,
  `noMesin` varchar(255) DEFAULT NULL,
  `fileImage` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventaris`
--

INSERT INTO `inventaris` (`IDinventaris`, `kodeBarang`, `jenisAset`, `namaBarang`, `noInventaris`, `harga`, `merk`, `bahan`, `tahun`, `bulan`, `lokasi`, `noMesin`, `fileImage`) VALUES
(1, '-', 'Peralatan Penunjang Operasi', 'Adapter ', '-/1/II/2016', 629000, 'VGA Adapter MAC ', 'Elektro', 2016, 2, '-', '-', ''),
(2, 'C02', 'Peralatan Penunjang Operasi', 'Projector', 'C02/001/XI/2016', 4100000, 'LG PV150G', 'Elektro', 2016, 11, NULL, '-', NULL),
(3, 'C02', 'Peralatan Penunjang Operasi', 'Projector', 'C02/002/XI/2016', 5200000, 'LG Minibeam PH300', 'Elektro', 2016, 11, NULL, '-', NULL),
(4, '-', 'Peralatan Penunjang Operasi', 'Adapter ', '-/4/II/2016', 250000, 'Converter HDMI ', 'Elektro', 2016, 2, '-', '-', ''),
(5, 'C10', 'Peralatan Penunjang Operasi', 'Router', 'C10/002/XI/2016', 17000000, 'Mikrobits Ainos ', 'Elektro', 2016, 11, NULL, '-', NULL),
(6, 'C10', 'Peralatan Penunjang Operasi', 'Router', 'C10/003/XI/2016', 17000000, 'Mikrobits Ainos ', 'Elektro', 2016, 11, NULL, '-', NULL),
(7, 'C10', 'Peralatan Penunjang Operasi', 'Router', 'C10/004/XI/2016', 17000000, 'Mikrobits Ainos ', 'Elektro', 2016, 11, NULL, '-', NULL),
(8, 'C10', 'Peralatan Penunjang Operasi', 'Router', 'C10/005/XI/2016', 17000000, 'Mikrobits Ainos ', 'Elektro', 2016, 11, NULL, '-', NULL),
(9, 'C10', 'Peralatan Penunjang Operasi', 'Router', 'C10/006/XI/2016', 17000000, 'Mikrobits Ainos ', 'Elektro', 2016, 11, NULL, '-', NULL),
(10, 'C12', 'Peralatan Penunjang Operasi', 'Akses Point ', 'C12/001/XI/2016', 2000000, 'Lynksys Wireless N300 With PoE', 'Elektro', 2016, 11, NULL, '-', NULL),
(11, 'C12', 'Peralatan Penunjang Operasi', 'Akses Point ', 'C12/002/XI/2016', 2000000, 'Lynksys Wireless N300 With PoE', 'Elektro', 2016, 11, NULL, '-', NULL),
(12, 'C12', 'Peralatan Penunjang Operasi', 'Akses Point ', 'C12/003/XI/2016', 2000000, 'Lynksys Wireless N300 With PoE', 'Elektro', 2016, 11, NULL, '-', NULL),
(13, 'C12', 'Peralatan Penunjang Operasi', 'Akses Point ', 'C12/004/XI/2016', 2000000, 'Lynksys Wireless N300 With PoE', 'Elektro', 2016, 11, NULL, '-', NULL),
(14, 'C12', 'Peralatan Penunjang Operasi', 'Wireless Router', 'C12/005/XI/2016', 950000, 'Lynksys E2500 N600 Dual Band ', 'Elektro', 2016, 11, NULL, '-', NULL),
(15, 'C12', 'Peralatan Penunjang Operasi', 'Wireless Router', 'C12/006/XI/2016', 950000, 'Lynksys E2500 N600 Dual Band ', 'Elektro', 2016, 11, NULL, '-', NULL),
(16, 'C12', 'Peralatan Penunjang Operasi', 'Wireless Router', 'C12/007/XI/2016', 950000, 'Lynksys E2500 N600 Dual Band ', 'Elektro', 2016, 11, NULL, '-', NULL),
(17, 'C12', 'Peralatan Penunjang Operasi', 'Wireless Router', 'C12/008/XI/2016', 950000, 'Lynksys E2500 N600 Dual Band ', 'Elektro', 2016, 11, NULL, '-', NULL),
(18, 'C12', 'Peralatan Penunjang Operasi', 'Wireless Router', 'C12/009/XI/2016', 950000, 'Lynksys E2500 N600 Dual Band ', 'Elektro', 2016, 11, NULL, '-', NULL),
(19, 'C12', 'Peralatan Penunjang Operasi', 'Wireless Router', 'C12/010/XI/2016', 950000, 'Lynksys E2500 N600 Dual Band ', 'Elektro', 2016, 11, NULL, '-', NULL),
(20, 'C12', 'Peralatan Penunjang Operasi', 'Akses Point ', 'C12/011/III/2017', 1080000, 'Lynksys E2500 N600 Dual Band ', 'Elektro', 2017, 3, NULL, '-', NULL),
(21, 'C12', 'Peralatan Penunjang Operasi', 'Akses Point ', 'C12/012/III/2017', 1080000, 'Lynksys E2500 N600 Dual Band ', 'Elektro', 2017, 3, NULL, '-', NULL),
(22, 'C12', 'Peralatan Penunjang Operasi', 'Akses Point ', 'C12/013/III/2017', 1080000, 'Lynksys E2500 N600 Dual Band ', 'Elektro', 2017, 3, NULL, '-', NULL),
(23, 'C12', 'Peralatan Penunjang Operasi', 'Akses Point ', 'C12/014/III/2017', 1080000, 'Lynksys E2500 N600 Dual Band ', 'Elektro', 2017, 3, NULL, '-', NULL),
(24, 'C12', 'Peralatan Penunjang Operasi', 'Akses Point ', 'C12/015/III/2017', 1080000, 'Lynksys E2500 N600 Dual Band ', 'Elektro', 2017, 3, NULL, '-', NULL),
(25, 'C16', 'Peralatan Penunjang Operasi', 'Wireless Router', 'C16/001/VII/2017', 650000, 'TP Link AC 750 Wireless Dual Band', 'Elektro', 2017, 7, NULL, 'SN:2172459003897', NULL),
(26, 'C16', 'Peralatan Penunjang Operasi', 'Wireless Router', 'C16/002/VII/2017', 650000, 'TP Link AC 750 Wireless Dual Band', 'Elektro', 2017, 7, NULL, 'SN:2171579009924', NULL),
(27, 'C16', 'Peralatan Penunjang Operasi', 'Wireless Router', 'C16/003/VII/2017', 650000, 'TP Link AC 750 Wireless Dual Band', 'Elektro', 2017, 7, NULL, 'SN:2172459003889', NULL),
(28, 'C16', 'Peralatan Penunjang Operasi', 'Wireless Router', 'C16/004/VII/2017', 650000, 'TP Link AC 750 Wireless Dual Band', 'Elektro', 2017, 7, NULL, 'SN:214C316000199', NULL),
(29, 'C16', 'Peralatan Penunjang Operasi', 'Wireless Router', 'C16/005/VII/2017', 650000, 'TP Link AC 750 Wireless Dual Band', 'Elektro', 2017, 7, NULL, 'SN:2172459003898', NULL),
(30, 'C17', 'Peralatan Penunjang Operasi', 'Switch', 'C17/001/VIII/2017', 6521900, 'HPE 1920 8G POE (180W) SWITCH ', 'Elektro', 2017, 8, NULL, 'SN : CN69GP20NJ', NULL),
(31, 'C10', 'Peralatan Penunjang Operasi', 'Router', 'C10/007/VIII/2017', 4366840, 'Mikrotik RB 1100', 'Elektro', 2017, 8, NULL, 'SN : 719606CE778A', NULL),
(32, 'C12', 'Peralatan Penunjang Operasi', 'Akses Point ', 'C12/016/IX/2017', 2299000, 'Ubiquiti Unifi AP AC PRO', 'Elektro', 2017, 9, NULL, 'SN : 1702KF09FC276023F', NULL),
(33, 'C12', 'Peralatan Penunjang Operasi', 'Akses Point ', 'C12/017/IX/2017', 2299000, 'Ubiquiti Unifi AP AC PRO', 'Elektro', 2017, 9, NULL, 'SN : 1702KF09FC2760768', NULL),
(34, 'C12', 'Peralatan Penunjang Operasi', 'Akses Point ', 'C12/018/IX/2017', 2299000, 'Ubiquiti Unifi AP AC PRO', 'Elektro', 2017, 9, NULL, 'SN : 1702KF09FC276122C', NULL),
(35, 'C17', 'Peralatan Penunjang Operasi', 'Switch', 'C17/002/IX/2017', 5413160, 'HP 1920-8G PoE Managable Switch', 'Elektro', 2017, 9, NULL, '', NULL),
(36, 'C17', 'Peralatan Penunjang Operasi', 'Switch', 'C17/003/IX/2017', 1990168, 'HP 1420-24G 24 Port Gigabit', 'Elektro', 2017, 9, NULL, '', NULL),
(37, 'C10', 'Peralatan Penunjang Operasi', 'Router', 'C10/008/IX/2017', 1524162, 'Mikrotik RB2011 UiAS', 'Elektro', 2017, 9, NULL, '', NULL),
(38, 'C12', 'Peralatan Penunjang Operasi', 'Akses Point ', 'C12/019/IX/2017', 1627041, 'AP Ubiquity AC LR ', 'Elektro', 2017, 9, NULL, '', NULL),
(39, 'C12', 'Peralatan Penunjang Operasi', 'Akses Point ', 'C12/020/IX/2017', 1627041, 'AP Ubiquity AC LR ', 'Elektro', 2017, 9, NULL, '', NULL),
(40, 'C12', 'Peralatan Penunjang Operasi', 'Akses Point ', 'C12/021/IX/2017', 1627041, 'AP Ubiquity AC LR ', 'Elektro', 2017, 9, NULL, '', NULL),
(41, 'C12', 'Peralatan Penunjang Operasi', 'Akses Point ', 'C12/022/IX/2017', 1627041, 'AP Ubiquity AC LR ', 'Elektro', 2017, 9, NULL, '', NULL),
(42, 'C12', 'Peralatan Penunjang Operasi', 'Akses Point ', 'C12/023/IX/2018', 1450000, 'Ubiquiti Unifi AC Mesh Uap-Ac-M', 'Elektro', 2017, 9, NULL, '', NULL),
(43, 'C12', 'Peralatan Penunjang Operasi', 'Akses Point ', 'C12/024/IX/2018', 1450000, 'Ubiquiti Unifi AC Mesh Uap-Ac-M', 'Elektro', 2017, 9, NULL, '', NULL),
(44, 'C12', 'Peralatan Penunjang Operasi', 'Akses Point ', 'C12/025/IX/2019', 1450000, 'Ubiquiti Unifi AC Mesh Uap-Ac-M', 'Elektro', 2017, 9, NULL, '', NULL),
(45, 'C10', 'Peralatan Penunjang Operasi', 'Router', 'C10/009/IX/2017', 1540000, 'Router Mikrotik RB450G', 'Elektro', 2017, 9, NULL, '', NULL),
(46, 'C10', 'Peralatan Penunjang Operasi', 'Router', 'C10/010/III/2018', 5520000, 'Mikrotik Router Board CCR100-7G-1C-PC', 'Elektro', 2018, 3, NULL, '', NULL),
(47, 'C10', 'Peralatan Penunjang Operasi', 'Router', 'C10/011/III/2018', 1650000, 'Mikrotik Router RB 2011 UiAS-2HnD-IN', 'Elektro', 2018, 3, NULL, '', NULL),
(48, 'C17', 'Peralatan Penunjang Operasi', 'Switch', 'C17/004/III/2018', 2250000, 'Mananged Switch HP 191024', 'Elektro', 2018, 3, NULL, '', NULL),
(49, 'C10', 'Peralatan Penunjang Operasi', 'Switch', 'C17/005/III/2018', 420000, 'Cisco SF 95D-08-AS', 'Elektro', 2018, 3, NULL, '', NULL),
(50, 'C10', 'Peralatan Penunjang Operasi', 'Switch', 'C17/006/III/2018', 420000, 'Cisco SF 95D-08-AS', 'Elektro', 2018, 3, NULL, '', NULL),
(51, 'C17', 'Peralatan Penunjang Operasi', 'Switch', 'C17/007/III/2018', 420000, 'Cisco SF 95D-08-AS', 'Elektro', 2018, 3, NULL, '', NULL),
(52, 'C17', 'Peralatan Penunjang Operasi', 'Switch', 'C17/008/III/2018', 420000, 'Cisco SF 95D-08-AS', 'Elektro', 2018, 3, NULL, '', NULL),
(53, 'C17', 'Peralatan Penunjang Operasi', 'Switch', 'C17/009/III/2018', 420000, 'Cisco SF 95D-08-AS', 'Elektro', 2018, 3, NULL, '', NULL),
(54, 'C17', 'Peralatan Penunjang Operasi', 'Switch', 'C17/010/III/2018', 420000, 'Cisco SF 95D-08-AS', 'Elektro', 2018, 3, NULL, '', NULL),
(55, 'C17', 'Peralatan Penunjang Operasi', 'Switch', 'C17/011/III/2018', 420000, 'Cisco SF 95D-08-AS', 'Elektro', 2018, 3, NULL, '', NULL),
(56, 'C17', 'Peralatan Penunjang Operasi', 'Switch', 'C17/012/III/2018', 420000, 'Cisco SF 95D-08-AS', 'Elektro', 2018, 3, NULL, '', NULL),
(57, 'C17', 'Peralatan Penunjang Operasi', 'Switch', 'C17/013/III/2018', 420000, 'Cisco SF 95D-08-AS', 'Elektro', 2018, 3, NULL, '', NULL),
(58, 'C12', 'Peralatan Penunjang Operasi', 'Akses Point ', 'C12/026/III/2018', 410000, 'AP TP Link WR 841 HP', 'Elektro', 2018, 3, NULL, '', NULL),
(59, 'C12', 'Peralatan Penunjang Operasi', 'Akses Point ', 'C12/027/III/2018', 410000, 'AP TP Link WR 841 HP', 'Elektro', 2018, 3, NULL, '', NULL),
(60, 'C12', 'Peralatan Penunjang Operasi', 'Akses Point ', 'C12/028/III/2018', 410000, 'AP TP Link WR 841 HP', 'Elektro', 2018, 3, NULL, '', NULL),
(61, 'C12', 'Peralatan Penunjang Operasi', 'Akses Point ', 'C12/029/III/2018', 410000, 'AP TP Link WR 841 HP', 'Elektro', 2018, 3, NULL, '', NULL),
(62, 'C17', 'Peralatan Penunjang Operasi', 'Switch', 'C17/014/III/2018', 420000, 'Cisco SF 95D-08-AS', 'Elektro', 2018, 3, NULL, '', NULL),
(63, 'C17', 'Peralatan Penunjang Operasi', 'Switch', 'C17/015/III/2018', 420000, 'Cisco SF 95D-08-AS', 'Elektro', 2018, 3, NULL, '', NULL),
(64, 'C17', 'Peralatan Penunjang Operasi', 'Switch', 'C17/016/III/2018', 420000, 'Cisco SF 95D-08-AS', 'Elektro', 2018, 3, NULL, '', NULL),
(65, 'C17', 'Peralatan Penunjang Operasi', 'Switch', 'C17/017/III/2018', 420000, 'Cisco SF 95D-08-AS', 'Elektro', 2018, 3, NULL, '', NULL),
(66, 'C12', 'Peralatan Penunjang Operasi', 'Akses Point ', 'C12/030/III/2018', 430000, 'AP TP Link WR 841 HP', 'Elektro', 2018, 3, NULL, '', NULL),
(67, 'C12', 'Peralatan Penunjang Operasi', 'Akses Point ', 'C12/031/III/2018', 430000, 'AP TP Link WR 841 HP', 'Elektro', 2018, 3, NULL, '', NULL),
(68, 'C12', 'Peralatan Penunjang Operasi', 'Akses Point ', 'C12/032/III/2018', 430000, 'AP TP Link WR 841 HP', 'Elektro', 2018, 3, NULL, '', NULL),
(69, 'C12', 'Peralatan Penunjang Operasi', 'Akses Point ', 'C12/033/III/2018', 430000, 'AP TP Link WR 841 HP', 'Elektro', 2018, 3, NULL, '', NULL),
(70, 'C12', 'Peralatan Penunjang Operasi', 'Akses Point ', 'C12/034/III/2018', 430000, 'AP TP Link WR 841 HP', 'Elektro', 2018, 3, NULL, '', NULL),
(71, 'C12', 'Peralatan Penunjang Operasi', 'Akses Point ', 'C12/035/III/2018', 430000, 'AP TP Link WR 841 HP', 'Elektro', 2018, 3, NULL, '', NULL),
(72, 'C12', 'Peralatan Penunjang Operasi', 'Akses Point ', 'C12/036/III/2018', 430000, 'AP TP Link WR 841 HP', 'Elektro', 2018, 3, NULL, '', NULL),
(73, 'C12', 'Peralatan Penunjang Operasi', 'Akses Point ', 'C12/037/III/2018', 430000, 'AP TP Link WR 841 HP', 'Elektro', 2018, 3, NULL, '', NULL),
(74, 'C12', 'Peralatan Penunjang Operasi', 'Akses Point ', 'C12/038/III/2018', 430000, 'AP TP Link WR 841 HP', 'Elektro', 2018, 3, NULL, '', NULL),
(75, 'C12', 'Peralatan Penunjang Operasi', 'Akses Point ', 'C12/039/IV/2018', 1770000, 'AP Ubiquity AC LR ', 'Elektro', 2018, 4, NULL, 'SN  : 788A20DC51D4', NULL),
(76, 'C12', 'Peralatan Penunjang Operasi', 'Akses Point ', 'C12/040/IV/2018', 860000, 'Linksys E 2500 N600', 'Elektro', 2018, 4, NULL, 'SN : 10A30C6C600094', NULL),
(77, 'C12', 'Peralatan Penunjang Operasi', 'Akses Point ', 'C12/041/IV/2018', 860000, 'Linksys E 2500 N600', 'Elektro', 2018, 4, NULL, 'SN : 10A30C6C600030', NULL),
(78, 'C12', 'Peralatan Penunjang Operasi', 'Akses Point ', 'C12/042/IV/2018', 860000, 'Linksys E 2500 N600', 'Elektro', 2018, 4, NULL, 'SN : 10A30C6C600112', NULL),
(79, 'C12', 'Peralatan Penunjang Operasi', 'Akses Point ', 'C12/043/IV/2018', 860000, 'Linksys E 2500 N600', 'Elektro', 2018, 4, NULL, 'SN : 10A30C6C600088', NULL),
(80, 'C12', 'Peralatan Penunjang Operasi', 'Akses Point ', 'C12/044/IV/2018', 860000, 'Linksys E 2500 N600', 'Elektro', 2018, 4, NULL, 'SN : 10A30C68509538', NULL),
(81, 'C12', 'Peralatan Penunjang Operasi', 'Akses Point ', 'C12/045/V/2018', 0, 'AP Ubiquity Nanostation m2', 'Elektro', 2018, 5, NULL, 'SN : 788A2068D8FF', NULL),
(82, 'C12', 'Peralatan Penunjang Operasi', 'Akses Point ', 'C12/046/V/2018', 0, 'AP Ubiquity Nanostation m2', 'Elektro', 2018, 5, NULL, 'SN : 788A2068CB0D', NULL),
(83, 'C12', 'Peralatan Penunjang Operasi', 'Akses Point ', 'C12/047/V/2018', 0, 'AP Ubiquity Nanostation m2', 'Elektro', 2018, 5, NULL, 'SN : 788A2068C854', NULL),
(84, 'C12', 'Peralatan Penunjang Operasi', 'Akses Point ', 'C12/048/V/2018', 0, 'AP Ubiquity Nanostation m2', 'Elektro', 2018, 5, NULL, 'SN : 788A2068D945', NULL),
(85, 'C12', 'Peralatan Penunjang Operasi', 'Akses Point ', 'C12/049/V/2018', 0, 'AP Ubiquity Nanostation m2', 'Elektro', 2018, 5, NULL, 'SN : 788A2068D650', NULL),
(86, 'C17', 'Peralatan Penunjang Operasi', 'Switch', 'C17/018/V/2018', 0, 'Switch Wireless Outdoor RB800', 'Elektro', 2018, 5, NULL, 'SN : 667F07EAB01A/724', NULL),
(87, 'C12', 'Peralatan Penunjang Operasi', 'Akses Point ', 'C12/050/IV/2018', 860000, 'Linksys E 2500 N600', 'Elektro', 2018, 4, NULL, 'SN : 10A30C6C600106', NULL),
(88, 'C17', 'Peralatan Penunjang Operasi', 'Switch', 'C17/019/V/2018', 0, 'Ubiquity Tough Switch PoE Pro ', 'Elektro', 2018, 5, NULL, 'SN : 788A200EB70F', NULL),
(89, 'C12', 'Peralatan Penunjang Operasi', 'Akses Point ', 'C12/051/V/2018', 860000, 'Ubiquity Unifi AC Mesh Pro', 'Elektro', 2018, 5, NULL, 'SN : 788A2023A84D', NULL),
(90, 'C12', 'Peralatan Penunjang Operasi', 'Akses Point ', 'C12/052/V/2018', 1507000, 'AP Ubiquity AC LR ', 'Elektro', 2018, 5, NULL, 'SN  : FCECDA190DA6', NULL),
(91, 'C12', 'Peralatan Penunjang Operasi', 'Akses Point ', 'C12/053/V/2018', 1507000, 'AP Ubiquity AC LR ', 'Elektro', 2018, 5, NULL, 'SN  : FCECDA190DAE', NULL),
(92, 'C12', 'Peralatan Penunjang Operasi', 'Akses Point ', 'C12/054/V/2018', 1507000, 'AP Ubiquity AC LR ', 'Elektro', 2018, 5, NULL, 'SN  : FCECDA190514', NULL),
(93, 'C12', 'Peralatan Penunjang Operasi', 'Akses Point ', 'C12/055/V/2018', 1507000, 'AP Ubiquity AC LR ', 'Elektro', 2018, 5, NULL, 'SN  : FCECDA190F97', NULL),
(94, 'C12', 'Peralatan Penunjang Operasi', 'Akses Point ', 'C12/056/V/2018', 1507000, 'AP Ubiquity AC LR ', 'Elektro', 2018, 5, NULL, 'SN  : FCECDA1905E3', NULL),
(95, 'C12', 'Peralatan Penunjang Operasi', 'Akses Point ', 'C12/057/V/2018', 1507000, 'AP Ubiquity AC LR ', 'Elektro', 2018, 5, NULL, 'SN  : FCECDA190483', NULL),
(96, 'C12', 'Peralatan Penunjang Operasi', 'Akses Point ', 'C12/058/V/2018', 1507000, 'AP Ubiquity AC LR ', 'Elektro', 2018, 5, NULL, 'SN  : FCECDA1905EF', NULL),
(97, 'C12', 'Peralatan Penunjang Operasi', 'Akses Point ', 'C12/059/V/2018', 1507000, 'AP Ubiquity AC LR ', 'Elektro', 2018, 5, NULL, 'SN  : FCECDA1CC6B3', NULL),
(98, 'C12', 'Peralatan Penunjang Operasi', 'Akses Point ', 'C12/060/V/2018', 1507000, 'AP Ubiquity AC LR ', 'Elektro', 2018, 5, NULL, 'SN  : FCECDA190519', NULL),
(99, 'C12', 'Peralatan Penunjang Operasi', 'Akses Point ', 'C12/061/V/2018', 1507000, 'AP Ubiquity AC LR ', 'Elektro', 2018, 5, NULL, 'SN  : FCECDA1905E1', NULL),
(100, 'C12', 'Peralatan Penunjang Operasi', 'Akses Point ', 'C12/062/V/2018', 1507000, 'AP Ubiquity AC LR ', 'Elektro', 2018, 5, NULL, 'SN  : FCECDA190EAE', NULL),
(101, 'C12', 'Peralatan Penunjang Operasi', 'Akses Point ', 'C12/063/V/2018', 1507000, 'AP Ubiquity AC LR ', 'Elektro', 2018, 5, NULL, 'SN  : FCECDA190439', NULL),
(102, 'C12', 'Peralatan Penunjang Operasi', 'Akses Point ', 'C12/064/V/2018', 1507000, 'AP Ubiquity AC LR ', 'Elektro', 2018, 5, NULL, 'SN  : FCECDA190613', NULL),
(103, 'C12', 'Peralatan Penunjang Operasi', 'Akses Point ', 'C12/065/V/2018', 1507000, 'AP Ubiquity AC LR ', 'Elektro', 2018, 5, NULL, 'SN  : FCECDA13F689', NULL),
(104, 'C12', 'Peralatan Penunjang Operasi', 'Akses Point ', 'C12/066/V/2018', 1507000, 'AP Ubiquity AC LR ', 'Elektro', 2018, 5, NULL, 'SN  : FCECDA19020C', NULL),
(105, 'C12', 'Peralatan Penunjang Operasi', 'Akses Point ', 'C12/067/VII/2018', 0, 'AP TP Link WR 841 HP', 'Elektro', 2018, 7, NULL, 'SN : 217863003120', NULL),
(106, 'C10', 'Peralatan Penunjang Operasi', 'Router', 'C10/012/VII/2018', 0, 'Router Mikrotik RB921UAGS-5SHPacD-NM', 'Elektro', 2018, 7, NULL, 'SN : 808D33FD1/809/r2', NULL),
(107, 'C10', 'Peralatan Penunjang Operasi', 'Router', 'C10/013/VII/2018', 0, 'Router Mikrotik RB921UAGS-5SHPacD-NM', 'Elektro', 2018, 7, NULL, 'SN : 8CE808E1D284/809/r2', NULL),
(108, 'C10', 'Peralatan Penunjang Operasi', 'Router', 'C10/014/VII/2018', 0, 'Cloud Router Switch CRS112-8G-4S-IN', 'Elektro', 2018, 7, NULL, 'SN ; 84C707084F9A/742/r2', NULL),
(109, 'C10', 'Peralatan Penunjang Operasi', 'Router', 'C10/015/VII/2018', 0, 'Router Mikrotik RB951G-2HnD', 'Elektro', 2018, 7, NULL, 'SN : 8451072FD17B/737/r2', NULL),
(110, 'C17', 'Peralatan Penunjang Operasi', 'Switch', 'C17/019/VII/2018', 1400000, 'Switch Managed NETGEAR Prosafe Gigabit Smart GS108T', 'Elektro', 2018, 7, NULL, 'SN : 29SF545B001FC', NULL),
(111, 'C10', 'Peralatan Penunjang Operasi', 'Router', 'C10/016/VII/2018', 285000, 'Mikrotik Router RB 941-2nD-TC', 'Elektro', 2018, 7, NULL, 'SN : 8CE508E2CB27/811/r2', NULL),
(112, 'C12', 'Peralatan Penunjang Operasi', 'Akses Point ', 'C12/066/V/2018', 1507000, 'AP Ubiquity AC LR ', 'Elektro', 2018, 5, NULL, 'SN  : FCECDA19020C', NULL),
(113, 'C10', 'Peralatan Penunjang Operasi', 'Router', 'C10/017/VII/2018', 315000, 'Mikrotik Router RB 941-2nD-TC', 'Elektro', 2018, 7, NULL, 'SN : 8B0E080288E9/810/r2', NULL),
(128, 'C08', 'Alat-alat Lainnya', 'Termos ', 'C08/128/XI/2016', 340000, 'Black Decker Kettle ', 'Elektro', 2016, 11, 'Kantor Pusat Gasnet', '-', ''),
(129, 'C05', 'Alat-alat Lainnya', 'Dispenser ', 'C05/001/XI/2016', 340000, 'Dispenser Hot & Cold ', 'Elektro', 2016, 11, 'Kantor Pusat Gasnet', '-', NULL),
(130, 'C05', 'Alat-alat Lainnya', 'Dispenser ', 'C05/002/XI/2016', 340000, 'Dispenser Hot & Cold ', 'Elektro', 2016, 11, 'Kantor Pusat Gasnet', '-', NULL),
(131, 'C03', 'Alat-alat Lainnya', 'Televisi ', 'C03/001/XI/2016', 340000, 'Panasonic TH-40DS500G', 'Elektro', 2016, 11, 'Kantor Pusat Gasnet', '-', NULL),
(132, 'C11 ', 'Alat-alat Lainnya', 'Mesin Pengancur Kertas ', 'C11/001/XI/2016', 340000, 'Tori TPR-210', 'Elektro ', 2017, 11, 'Kantor Pusat Gasnet', '-', NULL),
(133, 'C18', 'Alat-alat Lainnya', 'Kulkas', 'C18/001/II/GA/2018', 340000, 'Panasonic Fridge', 'Elektro ', 2018, 2, 'Kantor Pusat Gasnet', '-', NULL),
(134, 'C19', 'Alat-alat Lainnya', 'Microwave', 'C19/001/II/GA/2018', 340000, 'Microwave Sharp', 'Elektro ', 2018, 2, 'Kantor Pusat Gasnet', '-', NULL),
(135, 'C20', 'Alat-alat Lainnya', 'Kompor Listrik', 'C20/001/II/GA/2018', 340000, 'Kompor Listrik Induction Cooker', 'Elektro ', 2018, 2, 'Kantor Pusat Gasnet', '-', NULL),
(136, 'C16', 'Alat-alat Lainnya', 'Mesin Absensi + Access Door', 'C16/001/III/GA/2017', 340000, 'Mesin Absensi Solution', 'Elektro ', 2017, 3, 'Kantor Pusat Gasnet', '-', NULL),
(137, 'C16', 'Alat-alat Lainnya', 'Mesin Acces Door', 'C16/002/III/GA/2017', 340000, 'Mesin Access Door Solution', 'Elektro ', 2018, 3, 'Kantor Pusat Gasnet', '-', NULL),
(138, 'C04', 'Alat-alat Lainnya', 'Telepon', 'C04/001/XI/GA/2016', 340000, 'Panasonic Corded Phone (KX-TS505) Black ', 'Elektro', 2016, 11, 'Kantor Pusat Gasnet', '-', NULL),
(139, 'C04', 'Alat-alat Lainnya', 'Telepon', 'C04/002/XI/GA/2016', 340000, 'Panasonic Corded Phone (KX-TS505) Black ', 'Elektro', 2016, 11, 'Kantor Pusat Gasnet', '-', NULL),
(140, 'C04', 'Alat-alat Lainnya', 'Telepon', 'C04/002/XI/GA/2016', 340000, 'Panasonic Corded Phone (KX-TS505) Black ', 'Elektro', 2017, 11, 'Kantor Pusat Gasnet', '-', NULL),
(141, 'C21', 'Alat-alat Lainnya', 'Mesin Tik Elektrik ', 'C21/001/II/GA/2018', 340000, 'Brother GX-6750', 'Elektro', 2018, 2, 'Kantor Pusat Gasnet', '-', NULL),
(142, 'C22', 'Alat-alat Lainnya', 'Printer ', 'C22/001/II/GA/2018', 340000, 'Epson L360', 'Elektro', 2018, 2, 'Kantor Pusat Gasnet', '-', NULL),
(143, 'C23', 'Alat-alat Lainnya', 'Hard Disk', 'C23/001/VII/2018', 340000, 'Seagate Back Up Slim 1TB', 'Elektro', 2018, 7, 'Kantor Pusat Gasnet', '-', NULL),
(144, 'C23', 'Alat-alat Lainnya', 'Hard Disk', 'C23/002/VII/2018', 340000, 'Epson L360', 'Elektro', 2018, 7, 'Kantor Pusat Gasnet', '-', NULL),
(145, 'C23', 'Alat-alat Lainnya', 'Hard Disk', 'C23/003/VII/2018', 340000, 'Epson L360', 'Elektro', 2018, 7, 'Kantor Pusat Gasnet', '-', NULL),
(159, 'C01', 'Komputer', 'Laptop', 'C01/159//2016', 15000000, ' MAC ', 'Elektro', 2016, 11, 'Kantor Pusat Gasnet', '-', ''),
(160, 'C01', 'Komputer', 'Laptop', 'C01/005/XI/2016', 8325000, 'HP 14 -AC001TX Silver ', 'Elektro', 2016, 11, 'Kantor Pusat Gasnet', '-', NULL),
(161, 'C01', 'Komputer', 'Laptop', 'C01/014/XI/2016', 6150000, 'HP 14 -AC 181 TU ', 'Elektro', 2016, 11, 'Kantor Pusat Gasnet', '-', NULL),
(162, 'C01', 'Komputer', 'Laptop', 'C01/001/XI/2016', 6150000, 'HP 14 -AC 181 TU ', 'Elektro', 2016, 11, 'Kantor Pusat Gasnet', '-', NULL),
(163, 'C01', 'Komputer', 'Laptop', 'C01/026/XI/2016', 6150000, 'HP 14 -AC 181 TU ', 'Elektro', 2016, 11, 'Kantor Pusat Gasnet', '-', NULL),
(164, 'C01', 'Komputer', 'Laptop', 'C01/002/XI/2016', 5400000, 'HP 14 -AC 181 TU ', 'Elektro', 2016, 11, 'Kantor Pusat Gasnet', '-', NULL),
(165, 'C01', 'Komputer', 'Laptop', 'C01/003/XI/2016', 5400000, 'HP 14 -AC 181 TU ', 'Elektro', 2016, 11, 'Kantor Pusat Gasnet', '-', NULL),
(166, 'C01', 'Komputer', 'Laptop', 'C01/007/XI/2016', 5400000, 'HP 14 -AC 181 TU ', 'Elektro', 2016, 11, 'Kantor Pusat Gasnet', '-', NULL),
(167, 'C01', 'Komputer', 'Laptop', 'C01/010/XI/2016', 5400000, 'HP 14 -AC 181 TU ', 'Elektro', 2016, 11, 'Kantor Pusat Gasnet', '-', NULL),
(168, 'C01', 'Komputer', 'Laptop', 'C01/009/XI/2016', 3200000, '\"Lenovo IP 300 38 ID 11.6\"\"\"', 'Elektro', 2016, 11, 'Kantor Pusat Gasnet', '-', NULL),
(169, 'C01', 'Komputer', 'Laptop', 'C01/012/XI/2016', 3200000, '\"Lenovo IP 300 38 ID 11.6\"\"\"', 'Elektro', 2016, 11, 'Kantor Pusat Gasnet', '-', NULL),
(170, 'C01', 'Komputer', 'Laptop', 'C01/013/XI/2016', 3200000, '\"Lenovo IP 300 38 ID 11.6\"\"\"', 'Elektro', 2016, 11, 'Kantor Pusat Gasnet', '-', NULL),
(171, 'C01', 'Komputer', 'Laptop', 'C01/015/XI/2016', 3200000, '\"Lenovo IP 300 38 ID 11.6\"\"\"', 'Elektro', 2016, 11, 'Kantor Pusat Gasnet', '-', NULL),
(172, 'C01', 'Komputer', 'Laptop', 'C01/016/XI/2016', 3200000, '\"Lenovo IP 300 38 ID 11.6\"\"\"', 'Elektro', 2016, 11, 'Kantor Pusat Gasnet', '-', NULL),
(173, 'C01', 'Komputer', 'Laptop', 'C01/017/XI/2016', 3200000, '\"Lenovo IP 300 38 ID 11.6\"\"\"', 'Elektro', 2016, 11, 'Kantor Pusat Gasnet', '-', NULL),
(174, 'C01', 'Komputer', 'Laptop', 'C01/018/XI/2016', 3200000, '\"Lenovo IP 300 38 ID 11.6\"\"\"', 'Elektro', 2016, 11, 'Kantor Pusat Gasnet', '-', NULL),
(175, 'C01', 'Komputer', 'Laptop', 'C01/019/XI/2016', 3200000, '\"Lenovo IP 300 38 ID 11.6\"\"\"', 'Elektro', 2016, 11, 'Kantor Pusat Gasnet', '-', NULL),
(176, 'C01', 'Komputer', 'Laptop', 'C01/020/XI/2016', 3200000, '\"Lenovo IP 300 38 ID 11.6\"\"\"', 'Elektro', 2016, 11, 'Kantor Pusat Gasnet', '-', NULL),
(177, 'C01', 'Komputer', 'Laptop', 'C01/021/XI/2016', 3200000, '\"Lenovo IP 300 38 ID 11.6\"\"\"', 'Elektro', 2016, 11, 'Kantor Pusat Gasnet', '-', NULL),
(178, 'C01', 'Komputer', 'Laptop', 'C01/022/XI/2016', 3200000, '\"Lenovo IP 300 38 ID 11.6\"\"\"', 'Elektro', 2016, 11, 'Kantor Pusat Gasnet', '-', NULL),
(179, 'C01', 'Komputer', 'Laptop', 'C01/023/XI/2016', 3200000, '\"Lenovo IP 300 38 ID 11.6\"\"\"', 'Elektro', 2016, 11, 'Kantor Pusat Gasnet', '-', NULL),
(180, 'C01', 'Komputer', 'Laptop', 'C01/024/XI/2016', 3200000, '\"Lenovo IP 300 38 ID 11.6\"\"\"', 'Elektro', 2016, 11, 'Kantor Pusat Gasnet', '-', NULL),
(181, 'C01', 'Komputer', 'Laptop', 'C01/026/XI/2016', 3200000, '\"Lenovo IP 300 38 ID 11.6\"\"\"', 'Elektro', 2016, 11, 'Kantor Pusat Gasnet', '-', NULL),
(182, 'C01', 'Komputer', 'Laptop', 'C01/004/XI/2016', 5150000, '\"HP 240 G3 14\"\"\"', 'Elektro', 2016, 11, 'Kantor Pusat Gasnet', '-', NULL),
(183, 'C01', 'Komputer', 'Laptop', 'C01/183/II/2016', 5150000, 'HP 240 G3 14\"', 'Elektro', 2016, 2, 'Kantor Pusat Gasnet', '-', ''),
(184, 'C01', 'Komputer', 'Laptop', 'C01/008/XI/2016', 9850000, 'Dell Inspiron 14 7447 ', 'Elektro', 2016, 11, 'Kantor Pusat Gasnet', '-', NULL),
(185, 'C01', 'Komputer', 'Laptop', 'C01/011/XI/2016', 9850000, 'Dell Inspiron 14 7447 ', 'Elektro', 2016, 11, 'Kantor Pusat Gasnet', '-', NULL),
(186, 'C01', 'Komputer', 'Laptop', 'C01/186/V/2017', 6100000, 'HP 240 G3 14\"', 'Elektro', 2017, 5, '-', '-', ''),
(187, 'C01', 'Komputer', 'Laptop', 'C01/187/V/2017', 6100000, 'HP 240 G3 14\"', 'Elektro', 2017, 5, '-', '-', ''),
(188, 'C01', 'Komputer', 'Laptop', 'C01/030/III/2017', 9850000, 'Dell Inspiron 14 7447 ', 'Elektro', 2017, 3, '', '-', NULL),
(189, 'C01', 'Komputer', 'Laptop', 'C01/031/VII/2017', 8855000, '\"Dell Inspiron 5468 14\"\"\"', 'Elektro', 2017, 7, '', '-', NULL),
(190, 'C01', 'Komputer', 'Laptop', 'C01/190/XI/2017', 8855000, 'Dell Inspiron 5468 14\"', 'Elektro', 2017, 11, '-', '-', ''),
(191, 'C01', 'Komputer', 'Laptop', 'C01/191/XI/2017', 8855000, 'Dell Inspiron 5468 14\"', 'Elektro', 2017, 11, '-', '-', ''),
(192, 'C01', 'Komputer', 'Laptop', 'C01/192/IV/2017', 8855000, 'Dell Inspiron 5468 14\"', 'Elektro', 2017, 4, '-', '-', ''),
(193, 'C01', 'Komputer', 'Laptop', 'C01/193/II/2017', 8855000, 'Dell Inspiron 5468 14', 'Elektro', 2017, 2, '-', '-', ''),
(194, 'ï»¿B05', 'Meubel Bahan Logam', 'Kursi Tanpa Gagang ', 'B05/001/XII/GA/2016', 810000, 'Chairman', 'Besi ', 2016, 12, 'Gd B Lantai 3', '0352.PK/LG.01.01/GA/2016', NULL),
(195, 'B05', 'Meubel Bahan Logam', 'Kursi Tanpa Gagang ', 'B05/002/XII/GA/2016', 810000, 'Chairman', 'Besi ', 2016, 12, 'Gd B Lantai 3', '0352.PK/LG.01.01/GA/2016', NULL),
(196, 'B05', 'Meubel Bahan Logam', 'Kursi Tanpa Gagang ', 'B05/003/XII/GA/2016', 810000, 'Chairman', 'Besi ', 2016, 12, 'Gd B Lantai 3', '0352.PK/LG.01.01/GA/2016', NULL),
(197, 'B05', 'Meubel Bahan Logam', 'Kursi Tanpa Gagang ', 'B05/004/XII/GA/2016', 810000, 'Chairman', 'Besi ', 2016, 12, 'Gd B Lantai 3', '0352.PK/LG.01.01/GA/2016', NULL),
(198, 'B05', 'Meubel Bahan Logam', 'Kursi Tanpa Gagang ', 'B05/005/XII/GA/2016', 810000, 'Chairman', 'Besi ', 2016, 12, 'Gd B Lantai 3', '0352.PK/LG.01.01/GA/2016', NULL),
(199, 'B05', 'Meubel Bahan Logam', 'Kursi Tanpa Gagang ', 'B05/006/XII/GA/2016', 810000, 'Chairman', 'Besi ', 2016, 12, 'Gd B Lantai 3', '0352.PK/LG.01.01/GA/2016', NULL),
(200, 'B05', 'Meubel Bahan Logam', 'Kursi Tanpa Gagang ', 'B05/007/XII/GA/2016', 810000, 'Chairman', 'Besi ', 2016, 12, 'Gd B Lantai 3', '0352.PK/LG.01.01/GA/2016', NULL),
(201, 'B05', 'Meubel Bahan Logam', 'Kursi Tanpa Gagang ', 'B05/008/XII/GA/2016', 810000, 'Chairman', 'Besi ', 2016, 12, 'Gd B Lantai 3', '0352.PK/LG.01.01/GA/2016', NULL),
(202, 'B05', 'Meubel Bahan Logam', 'Kursi Tanpa Gagang ', 'B05/009/XII/GA/2016', 810000, 'Chairman', 'Besi ', 2016, 12, 'Gd B Lantai 3', '0352.PK/LG.01.01/GA/2016', NULL),
(203, 'B05', 'Meubel Bahan Logam', 'Kursi Tanpa Gagang ', 'B05/010/XII/GA/2016', 810000, 'Chairman', 'Besi ', 2016, 12, 'Gd B Lantai 3', '0352.PK/LG.01.01/GA/2016', NULL),
(204, 'B05', 'Meubel Bahan Logam', 'Kursi Tanpa Gagang ', 'B05/011/XII/GA/2016', 810000, 'Chairman', 'Besi ', 2016, 12, 'Gd B Lantai 3', '0352.PK/LG.01.01/GA/2016', NULL),
(205, 'B05', 'Meubel Bahan Logam', 'Kursi Tanpa Gagang ', 'B05/012/XII/GA/2016', 810000, 'Chairman', 'Besi ', 2016, 12, 'Gd B Lantai 3', '0352.PK/LG.01.01/GA/2016', NULL),
(206, 'B05', 'Meubel Bahan Logam', 'Kursi Tanpa Gagang ', 'B05/013/XII/GA/2016', 810000, 'Chairman', 'Besi ', 2016, 12, 'Gd B Lantai 3', '0352.PK/LG.01.01/GA/2016', NULL),
(207, 'B05', 'Meubel Bahan Logam', 'Kursi Tanpa Gagang ', 'B05/014/XII/GA/2016', 810000, 'Chairman', 'Besi ', 2016, 12, 'Gd B Lantai 3', '0352.PK/LG.01.01/GA/2016', NULL),
(208, 'B05', 'Meubel Bahan Logam', 'Kursi Tanpa Gagang ', 'B05/015/XII/GA/2016', 810000, 'Chairman', 'Besi ', 2016, 12, 'Gd B Lantai 3', '0352.PK/LG.01.01/GA/2016', NULL),
(209, 'B05', 'Meubel Bahan Logam', 'Kursi Tanpa Gagang ', 'B05/016/XII/GA/2016', 810000, 'Chairman', 'Besi ', 2016, 12, 'Gd B Lantai 3', '0352.PK/LG.01.01/GA/2016', NULL),
(210, 'B05', 'Meubel Bahan Logam', 'Kursi Tanpa Gagang ', 'B05/017/XII/GA/2016', 810000, 'Chairman', 'Besi ', 2016, 12, 'Gd B Lantai 3', '0352.PK/LG.01.01/GA/2016', NULL),
(211, 'B05', 'Meubel Bahan Logam', 'Kursi Tanpa Gagang ', 'B05/018/XII/GA/2016', 810000, 'Chairman', 'Besi ', 2016, 12, 'Gd B Lantai 3', '0352.PK/LG.01.01/GA/2016', NULL),
(212, 'B05', 'Meubel Bahan Logam', 'Kursi Tanpa Gagang ', 'B05/019/XII/GA/2016', 810000, 'Chairman', 'Besi ', 2016, 12, 'Gd B Lantai 3', '0352.PK/LG.01.01/GA/2016', NULL),
(213, 'B05', 'Meubel Bahan Logam', 'Kursi Tanpa Gagang ', 'B05/020/XII/GA/2016', 810000, 'Chairman', 'Besi ', 2016, 12, 'Gd B Lantai 3', '0352.PK/LG.01.01/GA/2016', NULL),
(214, 'B05', 'Meubel Bahan Logam', 'Kursi Tanpa Gagang ', 'B05/021/XII/GA/2016', 810000, 'Chairman', 'Besi ', 2016, 12, 'Gd B Lantai 3', '0352.PK/LG.01.01/GA/2016', NULL),
(215, 'B05', 'Meubel Bahan Logam', 'Kursi Tanpa Gagang ', 'B05/022/XII/GA/2016', 810000, 'Chairman', 'Besi ', 2016, 12, 'Gd B Lantai 3', '0352.PK/LG.01.01/GA/2016', NULL),
(216, 'B05', 'Meubel Bahan Logam', 'Kursi Tanpa Gagang ', 'B05/023/XII/GA/2016', 810000, 'Chairman', 'Besi ', 2016, 12, 'Gd B Lantai 3', '0352.PK/LG.01.01/GA/2016', NULL),
(217, 'B05', 'Meubel Bahan Logam', 'Kursi Tanpa Gagang ', 'B05/024/XII/GA/2016', 810000, 'Chairman', 'Besi ', 2016, 12, 'Gd B Lantai 3', '0352.PK/LG.01.01/GA/2016', NULL),
(218, 'B05', 'Meubel Bahan Logam', 'Kursi Tanpa Gagang ', 'B05/025/XII/GA/2016', 810000, 'Chairman', 'Besi ', 2016, 12, 'Gd B Lantai 3', '0352.PK/LG.01.01/GA/2016', NULL),
(219, 'B05', 'Meubel Bahan Logam', 'Kursi Tanpa Gagang ', 'B05/026/XII/GA/2016', 810000, 'Chairman', 'Besi ', 2016, 12, 'Gd B Lantai 3', '0352.PK/LG.01.01/GA/2016', NULL),
(220, 'B05', 'Meubel Bahan Logam', 'Kursi Tanpa Gagang ', 'B05/027/XII/GA/2016', 810000, 'Chairman', 'Besi ', 2016, 12, 'Gd B Lantai 3', '0352.PK/LG.01.01/GA/2016', NULL),
(221, 'B05', 'Meubel Bahan Logam', 'Kursi Tanpa Gagang ', 'B05/028/XII/GA/2016', 810000, 'Chairman', 'Besi ', 2016, 12, 'Gd B Lantai 3', '0352.PK/LG.01.01/GA/2016', NULL),
(222, 'B05', 'Meubel Bahan Logam', 'Kursi Tanpa Gagang ', 'B05/029/XII/GA/2016', 810000, 'Chairman', 'Besi ', 2016, 12, 'Gd B Lantai 3', '0352.PK/LG.01.01/GA/2016', NULL),
(223, 'B05', 'Meubel Bahan Logam', 'Kursi Tanpa Gagang ', 'B05/030/XII/GA/2016', 810000, 'Chairman', 'Besi ', 2016, 12, 'Gd B Lantai 3', '0352.PK/LG.01.01/GA/2016', NULL),
(224, 'B05', 'Meubel Bahan Logam', 'Kursi Tanpa Gagang ', 'B05/031/XII/GA/2016', 810000, 'Chairman', 'Besi ', 2016, 12, 'Gd B Lantai 3', '0352.PK/LG.01.01/GA/2016', NULL),
(225, 'B05', 'Meubel Bahan Logam', 'Kursi Tanpa Gagang ', 'B05/032/XII/GA/2016', 810000, 'Chairman', 'Besi ', 2016, 12, 'Gd B Lantai 3', '0352.PK/LG.01.01/GA/2016', NULL),
(226, 'B05', 'Meubel Bahan Logam', 'Kursi Tanpa Gagang ', 'B05/033/XII/GA/2016', 810000, 'Chairman', 'Besi ', 2016, 12, 'Gd B Lantai 3', '0352.PK/LG.01.01/GA/2016', NULL),
(227, 'B06', 'Meubel Bahan Logam', 'Kursi dengan Gagang (Staff)', 'B05/015/XII/GA/2016', 810000, 'Chairman', 'Besi ', 2016, 12, 'Gd B Lantai 3', '0352.PK/LG.01.01/GA/2016', NULL),
(228, 'B06', 'Meubel Bahan Logam', 'Kursi dengan Gagang (Staff)', 'B05/014/XII/GA/2016', 810000, 'Chairman', 'Besi ', 2016, 12, 'Gd B Lantai 3', '0352.PK/LG.01.01/GA/2016', NULL),
(229, 'B06', 'Meubel Bahan Logam', 'Kursi dengan Gagang (Staff)', 'B06/013/XII/GA/2016', 810000, 'Chairman', 'Besi ', 2016, 12, 'Gd B Lantai 3', '0352.PK/LG.01.01/GA/2016', NULL),
(230, 'B06', 'Meubel Bahan Logam', 'Kursi dengan Gagang (Staff)', 'B06/012/XII/GA/2016', 810000, 'Chairman', 'Besi ', 2016, 12, 'Gd B Lantai 3', '0352.PK/LG.01.01/GA/2016', NULL),
(231, 'B06', 'Meubel Bahan Logam', 'Kursi dengan Gagang (Staff)', 'B06/011/XII/GA/2016', 810000, 'Chairman', 'Besi ', 2016, 12, 'Gd B Lantai 3', '0352.PK/LG.01.01/GA/2016', NULL),
(232, 'B06', 'Meubel Bahan Logam', 'Kursi dengan Gagang (Staff)', 'B06/010/XII/GA/2016', 810000, 'Chairman', 'Besi ', 2016, 12, 'Gd B Lantai 3', '0352.PK/LG.01.01/GA/2016', NULL),
(233, 'B06', 'Meubel Bahan Logam', 'Kursi dengan Gagang (Staff)', 'B06/009/XII/GA/2016', 810000, 'Chairman', 'Besi ', 2016, 12, 'Gd B Lantai 3', '0352.PK/LG.01.01/GA/2016', NULL),
(234, 'B06', 'Meubel Bahan Logam', 'Kursi dengan Gagang (Staff)', 'B06/008/XII/GA/2016', 810000, 'Chairman', 'Besi ', 2016, 12, 'Gd B Lantai 3', '0352.PK/LG.01.01/GA/2016', NULL),
(235, 'B06', 'Meubel Bahan Logam', 'Kursi dengan Gagang (Staff)', 'B06/007/XII/GA/2016', 810000, 'Chairman', 'Besi ', 2016, 12, 'Gd B Lantai 3', '0352.PK/LG.01.01/GA/2016', NULL),
(236, 'B06', 'Meubel Bahan Logam', 'Kursi dengan Gagang (Staff)', 'B06/006/XII/GA/2016', 810000, 'Chairman', 'Besi ', 2016, 12, 'Gd B Lantai 3', '0352.PK/LG.01.01/GA/2016', NULL),
(237, 'B06', 'Meubel Bahan Logam', 'Kursi dengan Gagang (Staff)', 'B06/005/XII/GA/2016', 810000, 'Chairman', 'Besi ', 2016, 12, 'Gd B Lantai 3', '0352.PK/LG.01.01/GA/2016', NULL),
(238, 'B06', 'Meubel Bahan Logam', 'Kursi dengan Gagang (Staff)', 'B06/004/XII/GA/2016', 810000, 'Chairman', 'Besi ', 2016, 12, 'Gd B Lantai 3', '0352.PK/LG.01.01/GA/2016', NULL),
(239, 'B06', 'Meubel Bahan Logam', 'Kursi dengan Gagang (Head)', 'B06/003/XII/GA/2016', 810000, 'Chairman', 'Besi ', 2016, 12, 'Kantor Pusat Gasnet', '0352.PK/LG.01.01/GA/2016', NULL),
(240, 'B06', 'Meubel Bahan Logam', 'Kursi dengan Gagang (Head)', 'B06/002/XII/GA/2016', 810000, 'Chairman', 'Besi ', 2016, 12, 'Kantor Pusat Gasnet', '0352.PK/LG.01.01/GA/2016', NULL),
(241, 'B06', 'Meubel Bahan Logam', 'Kursi dengan Gagang (Head)', 'B06/001/XII/GA/2016', 810000, 'Chairman', 'Besi ', 2016, 12, 'Kantor Pusat Gasnet', '0352.PK/LG.01.01/GA/2016', NULL),
(242, 'B06', 'Meubel Bahan Logam', 'Kursi dengan Gagang (Komisaris)', 'B06/016/XII/GA/2017', 810000, 'Chairman', 'Besi ', 2016, 12, 'Kantor Pusat Gasnet', '0352.PK/LG.01.01/GA/2016', NULL),
(243, 'B11', 'Meubel Bahan Logam', 'Filling Kabinet ', 'B11/003/XII/GA/2016', 810000, 'Lion', 'Besi ', 2016, 12, 'Kantor Pusat Gasnet', '0352.PK/LG.01.01/GA/2016', NULL),
(244, 'B12', 'Meubel Bahan Logam', 'Tangga', 'B12/002/XII/GA/2016', 810000, 'Krisbow', 'Besi ', 2017, 12, 'Kantor Pusat Gasnet', '', NULL),
(245, 'B12', 'Meubel Bahan Logam', 'Tangga', 'B12/003/XII/GA/2016', 810000, 'Krisbow', 'Besi ', 2017, 12, 'Kantor Pusat Gasnet', '', NULL),
(246, 'B10', 'Meubel Bahan Logam', 'Brankas ', 'B10/001/XI/GA/2016', 810000, '', 'Besi ', 2016, 11, 'Kantor Pusat Gasnet', '', NULL),
(247, 'B16', 'Meubel Bahan Logam', 'Rak Besi Server', 'B16/001/XI/GA/2016', 810000, '', 'Besi ', 2016, 11, '-', '', NULL),
(248, 'B16', 'Meubel Bahan Logam', 'Rak Besi Server', 'B16/002/XI/GA/2016', 810000, '', 'Besi ', 2016, 11, '-', '', NULL),
(249, 'B16', 'Meubel Bahan Logam', 'Rak Besi Server', 'B16/003/XI/GA/2016', 810000, '', 'Besi ', 2016, 11, '-', '', NULL),
(250, 'B16', 'Meubel Bahan Logam', 'Rak Besi Server', 'B16/004/XI/GA/2016', 810000, '', 'Besi ', 2016, 11, '-', '', NULL),
(251, 'B16', 'Meubel Bahan Logam', 'Rak Besi Server', 'B16/005/XI/GA/2016', 810000, '', 'Besi ', 2016, 11, '-', '', NULL),
(252, 'B16', 'Meubel Bahan Logam', 'Rak Besi Server', 'B16/006/XI/GA/2016', 810000, '', 'Besi ', 2016, 11, '-', '', NULL),
(253, 'B10', 'Meubel Bahan Logam', 'Brankas Mini', 'B10/002/I/GA/2017', 810000, '', 'Besi ', 2017, 1, 'Kantor Pusat Gasnet', '', NULL),
(254, 'B06', 'Meubel Bahan Logam', 'Kursi dengan Gagang Staff', 'B06/017/XII/GS/2017', 810000, 'Informa', 'Besi ', 2017, 12, 'Kantor Pusat Gasnet', '', NULL),
(255, 'B06', 'Meubel Bahan Logam', 'Kursi dengan Gagang Staff', 'B06/018/XII/GS/2017', 810000, 'Informa', 'Besi ', 2017, 12, 'Kantor Pusat Gasnet', '', NULL),
(256, 'B06', 'Meubel Bahan Logam', 'Kursi dengan Gagang Staff', 'B06/019/XII/GS/2017', 810000, 'Informa', 'Besi ', 2017, 12, 'Kantor Pusat Gasnet', '', NULL),
(257, 'B06', 'Meubel Bahan Logam', 'Kursi dengan Gagang Staff', 'B06/020/XII/GS/2017', 810000, 'Informa', 'Besi ', 2017, 12, 'Kantor Pusat Gasnet', '', NULL),
(258, 'B06', 'Meubel Bahan Logam', 'Kursi dengan Gagang Staff', 'B06/021/XII/GS/2017', 810000, 'Informa', 'Besi ', 2017, 12, 'Kantor Pusat Gasnet', '', NULL),
(259, 'B06', 'Meubel Bahan Logam', 'Kursi dengan Gagang Staff', 'B05/022/XII/GS/2017', 810000, 'Informa', 'Besi ', 2017, 12, 'Kantor Pusat Gasnet', '', NULL),
(260, 'B06', 'Meubel Bahan Logam', 'Kursi dengan Gagang Staff', 'B05/023/XII/GS/2017', 810000, 'Informa', 'Besi ', 2017, 12, 'Kantor Pusat Gasnet', '', NULL),
(261, 'B06', 'Meubel Bahan Logam', 'Kursi dengan Gagang Staff', 'B05/024/XII/GS/2017', 810000, 'Informa', 'Besi ', 2017, 12, 'Kantor Pusat Gasnet', '', NULL),
(262, 'B06', 'Meubel Bahan Logam', 'Kursi dengan Gagang Staff', 'B05/025/XII/GS/2017', 810000, 'Informa', 'Besi ', 2017, 12, 'Kantor Pusat Gasnet', '', NULL),
(263, 'B06', 'Meubel Bahan Logam', 'Kursi dengan Gagang Staff', 'B05/026/XII/GS/2017', 810000, 'Informa', 'Besi ', 2017, 12, 'Kantor Pusat Gasnet', '', NULL),
(264, 'B06', 'Meubel Bahan Logam', 'Kursi dengan Gagang Staff', 'B05/027/XII/GS/2017', 810000, 'Informa', 'Besi ', 2017, 12, 'Kantor Pusat Gasnet', '', NULL),
(265, 'B06', 'Meubel Bahan Logam', 'Kursi dengan Gagang Staff', 'B05/028/XII/GS/2017', 810000, 'Informa', 'Besi ', 2017, 12, 'Kantor Pusat Gasnet', '', NULL),
(266, 'B06', 'Meubel Bahan Logam', 'Kursi dengan Gagang Staff', 'B05/029/XII/GS/2017', 810000, 'Informa', 'Besi ', 2017, 12, 'Kantor Pusat Gasnet', '', NULL),
(267, 'B06', 'Meubel Bahan Logam', 'Kursi dengan Gagang Staff', 'B05/030/XII/GS/2017', 810000, 'Informa', 'Besi ', 2017, 12, 'Kantor Pusat Gasnet', '', NULL),
(268, 'B06', 'Meubel Bahan Logam', 'Kursi dengan Gagang Staff', 'B05/031/XII/GS/2017', 810000, 'Informa', 'Besi ', 2017, 12, 'Kantor Pusat Gasnet', '', NULL),
(269, 'B06', 'Meubel Bahan Logam', 'Kursi dengan Gagang Staff', 'B05/032/XII/GS/2017', 810000, 'Informa', 'Besi ', 2017, 12, 'Kantor Pusat Gasnet', '', NULL),
(270, 'B06', 'Meubel Bahan Logam', 'Kursi dengan Gagang Staff', 'B05/033/XII/GS/2017', 810000, 'Informa', 'Besi ', 2017, 12, 'Kantor Pusat Gasnet', '', NULL),
(271, 'B06', 'Meubel Bahan Logam', 'Kursi dengan Gagang Staff', 'B05/034/XII/GS/2017', 810000, 'Informa', 'Besi ', 2017, 12, 'Kantor Pusat Gasnet', '', NULL),
(272, 'B06', 'Meubel Bahan Logam', 'Kursi dengan Gagang Staff', 'B05/035/XII/GS/2017', 810000, 'Informa', 'Besi ', 2017, 12, 'Kantor Pusat Gasnet', '', NULL),
(273, 'B06', 'Meubel Bahan Logam', 'Kursi dengan Gagang Staff', 'B05/036/XII/GS/2017', 810000, 'Informa', 'Besi ', 2017, 12, 'Kantor Pusat Gasnet', '', NULL),
(274, 'B06', 'Meubel Bahan Logam', 'Kursi dengan Gagang Staff', 'B05/037/XII/GS/2017', 810000, 'Informa', 'Besi ', 2017, 12, 'Kantor Pusat Gasnet', '', NULL),
(275, 'B06', 'Meubel Bahan Logam', 'Kursi dengan Gagang Staff', 'B05/038/XII/GS/2017', 810000, 'Informa', 'Besi ', 2017, 12, 'Kantor Pusat Gasnet', '', NULL),
(276, 'B06', 'Meubel Bahan Logam', 'Kursi dengan Gagang Staff', 'B05/039/XII/GS/2017', 810000, 'Informa', 'Besi ', 2017, 12, 'Kantor Pusat Gasnet', '', NULL),
(277, 'B06', 'Meubel Bahan Logam', 'Kursi dengan Gagang Staff', 'B05/040/XII/GS/2017', 810000, 'Informa', 'Besi ', 2017, 12, 'Kantor Pusat Gasnet', '', NULL),
(278, 'B06', 'Meubel Bahan Logam', 'Kursi dengan Gagang Staff', 'B05/041/XII/GS/2017', 810000, 'Informa', 'Besi ', 2017, 12, 'Kantor Pusat Gasnet', '', NULL),
(279, 'B06', 'Meubel Bahan Logam', 'Kursi dengan Gagang Staff', 'B05/042/XII/GS/2017', 810000, 'Informa', 'Besi ', 2017, 12, 'Kantor Pusat Gasnet', '', NULL),
(280, 'B06', 'Meubel Bahan Logam', 'Kursi dengan Gagang Staff', 'B05/043/XII/GS/2017', 810000, 'Informa', 'Besi ', 2017, 12, 'Kantor Pusat Gasnet', '', NULL),
(281, 'B06', 'Meubel Bahan Logam', 'Kursi dengan Gagang Staff', 'B05/044/XII/GS/2017', 810000, 'Informa', 'Besi ', 2017, 12, 'Kantor Pusat Gasnet', '', NULL),
(282, 'B06', 'Meubel Bahan Logam', 'Kursi dengan Gagang Staff', 'B05/045/XII/GS/2017', 810000, 'Informa', 'Besi ', 2017, 12, 'Kantor Pusat Gasnet', '', NULL),
(283, 'B06', 'Meubel Bahan Logam', 'Kursi dengan Gagang Staff', 'B05/046/XII/GS/2027', 810000, 'Informa', 'Besi ', 2017, 12, 'Kantor Pusat Gasnet', '', NULL),
(284, 'B06', 'Meubel Bahan Logam', 'Kursi dengan Gagang Staff', 'B05/047/XII/GS/2017', 810000, 'Informa', 'Besi ', 2017, 12, 'Kantor Pusat Gasnet', '', NULL),
(285, 'B06', 'Meubel Bahan Logam', 'Kursi dengan Gagang Staff', 'B05/048/XII/GS/2017', 810000, 'Informa', 'Besi ', 2017, 12, 'Kantor Pusat Gasnet', '', NULL),
(286, 'B06', 'Meubel Bahan Logam', 'Kursi dengan Gagang Staff', 'B05/049/XII/GS/2017', 810000, 'Informa', 'Besi ', 2017, 12, 'Kantor Pusat Gasnet', '', NULL),
(287, 'B06', 'Meubel Bahan Logam', 'Kursi Tamu Rangka Besi', 'B06/050/XII/GS/2017', 810000, 'Informa', 'Besi ', 2017, 12, 'Kantor Pusat Gasnet', '', NULL),
(288, 'B06', 'Meubel Bahan Logam', 'Kursi Tamu Rangka Besi', 'B06/051/XII/GS/2017', 810000, 'Informa', 'Besi ', 2017, 12, 'Kantor Pusat Gasnet', '', NULL),
(289, 'B06', 'Meubel Bahan Logam', 'Kursi Tamu Rangka Besi', 'B06/052/XII/GS/2017', 810000, 'Informa', 'Besi ', 2017, 12, 'Kantor Pusat Gasnet', '', NULL),
(290, 'B06', 'Meubel Bahan Logam', 'Kursi Tamu Rangka Besi', 'B06/053/XII/GS/2017', 810000, 'Informa', 'Besi ', 2017, 12, 'Kantor Pusat Gasnet', '', NULL),
(291, 'B06', 'Meubel Bahan Logam', 'Kursi Meeting Rangka Besi', 'B06/054/XII/GS/2017', 810000, 'Informa', 'Besi ', 2017, 12, 'Kantor Pusat Gasnet', '', NULL),
(292, 'B06', 'Meubel Bahan Logam', 'Kursi Meeting Rangka Besi', 'B06/055/XII/GS/2017', 810000, 'Informa', 'Besi ', 2017, 12, 'Kantor Pusat Gasnet', '', NULL),
(293, 'B06', 'Meubel Bahan Logam', 'Kursi Meeting Rangka Besi', 'B06/056/XII/GS/2017', 810000, 'Informa', 'Besi ', 2017, 12, 'Kantor Pusat Gasnet', '', NULL),
(294, 'B06', 'Meubel Bahan Logam', 'Kursi Meeting Rangka Besi', 'B06/057/XII/GS/2017', 810000, 'Informa', 'Besi ', 2017, 12, 'Kantor Pusat Gasnet', '', NULL),
(295, 'B06', 'Meubel Bahan Logam', 'Kursi Meeting Rangka Besi', 'B06/058/XII/GS/2017', 810000, 'Informa', 'Besi ', 2017, 12, 'Kantor Pusat Gasnet', '', NULL),
(296, 'B06', 'Meubel Bahan Logam', 'Kursi Meeting Rangka Besi', 'B06/059/XII/GS/2017', 810000, 'Informa', 'Besi ', 2017, 12, 'Kantor Pusat Gasnet', '', NULL),
(297, 'B06', 'Meubel Bahan Logam', 'Kursi Meeting Rangka Besi', 'B06/060/XII/GS/2017', 810000, 'Informa', 'Besi ', 2017, 12, 'Kantor Pusat Gasnet', '', NULL),
(298, 'B06', 'Meubel Bahan Logam', 'Kursi Meeting Rangka Besi', 'B06/061/XII/GS/2017', 810000, 'Informa', 'Besi ', 2017, 12, 'Kantor Pusat Gasnet', '', NULL),
(299, 'B06', 'Meubel Bahan Logam', 'Kursi Meeting Rangka Besi', 'B06/062/XII/GS/2017', 810000, 'Informa', 'Besi ', 2017, 12, 'Kantor Pusat Gasnet', '', NULL),
(300, 'B06', 'Meubel Bahan Logam', 'Kursi Meeting Rangka Besi', 'B06/063/XII/GS/2017', 810000, 'Informa', 'Besi ', 2017, 12, 'Kantor Pusat Gasnet', '', NULL),
(301, 'B06', 'Meubel Bahan Logam', 'Kursi dengan Gagang (Direktur)', 'B06/064/I/GS/2018', 810000, 'Informa', 'Besi ', 2018, 1, 'Kantor Pusat Gasnet', '', NULL),
(302, 'B06', 'Meubel Bahan Logam', 'Kursi dengan Gagang (Head)', 'B06/065/I/GS/2018', 810000, 'Informa', 'Besi ', 2018, 1, 'Kantor Pusat Gasnet', '', NULL),
(303, 'B17', 'Meubel Bahan Logam', 'Kursi cafÃ©', 'B06/065/I/GS/2018', 810000, 'Custom', 'Besi ', 2018, 1, 'Kantor Pusat Gasnet', '', NULL),
(304, 'B17', 'Meubel Bahan Logam', 'Kursi cafÃ©', 'B06/065/I/GS/2018', 810000, 'Custom', 'Besi ', 2018, 1, 'Kantor Pusat Gasnet', '', NULL),
(305, 'B17', 'Meubel Bahan Logam', 'Kursi cafÃ©', 'B06/065/I/GS/2018', 810000, 'Custom', 'Besi ', 2018, 1, 'Kantor Pusat Gasnet', '', NULL),
(306, 'B17', 'Meubel Bahan Logam', 'Kursi cafÃ©', 'B06/065/I/GS/2018', 810000, 'Custom', 'Besi ', 2018, 1, 'Kantor Pusat Gasnet', '', NULL),
(307, 'B17', 'Meubel Bahan Logam', 'Kursi cafÃ©', 'B06/065/I/GS/2018', 810000, 'Custom', 'Besi ', 2018, 1, 'Kantor Pusat Gasnet', '', NULL),
(308, 'B17', 'Meubel Bahan Logam', 'Kursi cafÃ©', 'B06/065/I/GS/2018', 810000, 'Custom', 'Besi ', 2018, 1, 'Kantor Pusat Gasnet', '', NULL),
(309, 'B17', 'Meubel Bahan Logam', 'Kursi cafÃ©', 'B06/065/I/GS/2018', 810000, 'Custom', 'Besi ', 2018, 1, 'Kantor Pusat Gasnet', '', NULL),
(310, 'B17', 'Meubel Bahan Logam', 'Kursi cafÃ©', 'B06/065/I/GS/2018', 810000, 'Custom', 'Besi ', 2018, 1, 'Kantor Pusat Gasnet', '', NULL),
(311, 'B16', 'Meubel Bahan Logam', 'Rak Besi Server', 'B16/007/IV/GS/2018', 810000, 'Indo Rack', 'Besi ', 2018, 4, 'SCG PP Serang', '', NULL),
(321, 'ï»¿B01', 'Meubel Bahan Kayu', 'Meja Pekerja ', 'B01/002/XII/GA/2016', 2900000, '100x60x75 lapis HPL', 'Kayu ', 2016, NULL, 'Gd B Lantai 3', '0352.PK/LG.01.01/GA/2016', NULL),
(322, 'B01', 'Meubel Bahan Kayu', 'Meja Pekerja ', 'B01/003/XII/GA/2016', 2900000, '100x60x75 lapis HPL', 'Kayu ', 2016, NULL, 'Gd B Lantai 3', '0352.PK/LG.01.01/GA/2016', NULL),
(323, 'B01', 'Meubel Bahan Kayu', 'Meja Pekerja ', 'B01/004/XII/GA/2016', 2900000, '100x60x75 lapis HPL', 'Kayu ', 2016, NULL, 'Gd B Lantai 3', '0352.PK/LG.01.01/GA/2016', NULL),
(324, 'B01', 'Meubel Bahan Kayu', 'Meja Pekerja ', 'B01/006/XII/GA/2016', 2900000, '100x60x75 lapis HPL', 'Kayu ', 2016, NULL, 'Gd B Lantai 3', '0352.PK/LG.01.01/GA/2016', NULL),
(325, 'B01', 'Meubel Bahan Kayu', 'Meja Pekerja ', 'B01/007/XII/GA/2016', 2900000, '100x60x75 lapis HPL', 'Kayu ', 2016, NULL, 'Gd B Lantai 3', '0352.PK/LG.01.01/GA/2016', NULL),
(326, 'B01', 'Meubel Bahan Kayu', 'Meja Pekerja ', 'B01/009/XII/GA/2016', 2900000, '100x60x75 lapis HPL', 'Kayu ', 2016, NULL, 'Gd B Lantai 3', '0352.PK/LG.01.01/GA/2016', NULL),
(327, 'B01', 'Meubel Bahan Kayu', 'Meja Pekerja ', 'B01/010/XII/GA/2016', 2900000, '100x60x75 lapis HPL', 'Kayu ', 2016, NULL, 'Gd B Lantai 3', '0352.PK/LG.01.01/GA/2016', NULL),
(328, 'B01', 'Meubel Bahan Kayu', 'Meja Pekerja ', 'B01/011/XII/GA/2016', 2900000, '100x60x75 lapis HPL', 'Kayu ', 2016, NULL, 'Gd B Lantai 3', '0352.PK/LG.01.01/GA/2016', NULL),
(329, 'B01', 'Meubel Bahan Kayu', 'Meja Pekerja ', 'B01/012/XII/GA/2017', 2900000, '100x60x75 lapis HPL', 'Kayu ', 2016, NULL, 'Gd B Lantai 3', '0352.PK/LG.01.01/GA/2016', NULL),
(330, 'B01', 'Meubel Bahan Kayu', 'Meja Pekerja ', 'B01/013/XII/GA/2017', 2900000, '100x60x75 lapis HPL', 'Kayu ', 2016, NULL, 'Gd B Lantai 3', '0352.PK/LG.01.01/GA/2016', NULL),
(331, 'B01', 'Meubel Bahan Kayu', 'Meja Pekerja ', 'B01/014/XII/GA/2017', 2900000, '100x60x75 lapis HPL', 'Kayu ', 2016, NULL, 'Gd B Lantai 3', '0352.PK/LG.01.01/GA/2016', NULL),
(332, 'B01', 'Meubel Bahan Kayu', 'Meja Pekerja ', 'B01/015/XII/GA/2017', 2900000, '100x60x75 lapis HPL', 'Kayu ', 2016, NULL, 'Gd B Lantai 3', '0352.PK/LG.01.01/GA/2016', NULL),
(333, 'B01', 'Meubel Bahan Kayu', 'Meja Pekerja ', 'B01/016/XII/GA/2017', 2900000, '100x60x75 lapis HPL', 'Kayu ', 2016, NULL, 'Gd B Lantai 3', '0352.PK/LG.01.01/GA/2016', NULL),
(334, 'B01', 'Meubel Bahan Kayu', 'Meja Pekerja ', 'B01/017/XII/GA/2017', 2900000, '100x60x75 lapis HPL', 'Kayu ', 2017, NULL, 'Gd B Lantai 3', '', NULL),
(335, 'B01', 'Meubel Bahan Kayu', 'Meja Pekerja ', 'B01/018/XII/GA/2017', 2900000, '100x60x75 lapis HPL', 'Kayu ', 2017, NULL, 'Gd B Lantai 3', '', NULL),
(336, 'B01', 'Meubel Bahan Kayu', 'Meja Pekerja ', 'B01/019/XII/GA/2017', 2900000, '100x60x75 lapis HPL', 'Kayu ', 2017, NULL, 'Gd B Lantai 3', '', NULL),
(337, 'B01', 'Meubel Bahan Kayu', 'Meja Pekerja ', 'B01/001/XII/GA/2016', 3000000, '140x60x75 lapis HPL', 'Kayu ', 2016, NULL, 'Gd B Lantai 3', '0352.PK/LG.01.01/GA/2016', NULL),
(338, 'B01', 'Meubel Bahan Kayu', 'Meja Pekerja ', 'B01/008/XII/GA/2016', 3000000, '140x60x75 lapis HPL', 'Kayu ', 2016, NULL, 'Gd B Lantai 3', '0352.PK/LG.01.01/GA/2016', NULL),
(339, 'B01', 'Meubel Bahan Kayu', 'Meja Pekerja ', 'B01/016/XII/GA/2016', 3000000, '140x60x75 lapis HPL', 'Kayu ', 2016, NULL, 'Gd B Lantai 3', '0352.PK/LG.01.01/GA/2016', NULL),
(340, 'B01', 'Meubel Bahan Kayu', 'Meja Direktur', 'B01/005/XII/GA/2016', 3500000, '180x60x75 lapis HPL', 'Kayu ', 2016, NULL, 'Gd B Lantai 3', '0352.PK/LG.01.01/GA/2016', NULL),
(341, 'B02', 'Meubel Bahan Kayu', 'Meja Sales/Meeting', 'B02/001/XII/GA/2016', 6700000, '300x90x75 HPL Fin Duco', 'Kayu ', 2016, NULL, 'Gd B Lantai 3', '0352.PK/LG.01.01/GA/2016', NULL),
(342, 'B02', 'Meubel Bahan Kayu', 'Meja Sales/Meeting', 'B02/002/XII/GA/2016', 6700000, '300x90x75 HPL Fin Duco', 'Kayu ', 2016, NULL, 'Gd B Lantai 3', '0352.PK/LG.01.01/GA/2016', NULL),
(343, 'B02', 'Meubel Bahan Kayu', 'Meja Sales/Meeting', 'B02/003/XII/GA/2016', 6700000, '300x90x75 HPL Fin Duco', 'Kayu ', 2016, NULL, 'Gd B Lantai 3', '0352.PK/LG.01.01/GA/2016', NULL),
(344, 'B04', 'Meubel Bahan Kayu', 'Meja Tlp', 'B04/001/XII/GA/2016', 700000, 'Custom', 'Kayu ', 2016, NULL, 'Kantor Pusat Gasnet', '0352.PK/LG.01.01/GA/2016', NULL),
(345, 'B04', 'Meubel Bahan Kayu', 'Meja Tlp', 'B04/002/XII/GA/2016', 700000, 'Custom', 'Kayu ', 2016, NULL, 'Kantor Pusat Gasnet', '0352.PK/LG.01.01/GA/2016', NULL),
(346, 'B04', 'Meubel Bahan Kayu', 'Meja Tlp', 'B04/003/XII/GA/2016', 700000, 'Custom', 'Kayu ', 2016, NULL, 'Gd B Lantai 3', '0352.PK/LG.01.01/GA/2016', NULL),
(347, 'B07', 'Meubel Bahan Kayu', 'Meja Resepsionis ', 'B07/001/XII/GA/2016', 3750000, 'Custom', 'Kayu', 2016, NULL, 'Gd B Lantai 3', '0352.PK/LG.01.01/GA/2016', NULL),
(348, 'B08', 'Meubel Bahan Kayu', 'Meja Cradenza ', 'B08/001/XII/GA/2016', 1750000, 'Custom', 'Kayu', 2016, NULL, 'Kantor Pusat Gasnet', '0352.PK/LG.01.01/GA/2016', NULL),
(349, 'B08', 'Meubel Bahan Kayu', 'Meja Cradenza ', 'B08/002/XII/GA/2016', 1750000, 'Custom', 'Kayu', 2016, NULL, 'Kantor Pusat Gasnet', '0352.PK/LG.01.01/GA/2016', NULL),
(350, 'B08', 'Meubel Bahan Kayu', 'Meja Cradenza ', 'B08/003/XII/GA/2016', 1750000, 'Custom', 'Kayu', 2016, NULL, 'Gd B Lantai 3', '0352.PK/LG.01.01/GA/2016', NULL),
(351, 'B08', 'Meubel Bahan Kayu', 'Meja Cradenza ', 'B08/004/XII/GA/2016', 1750000, 'Custom', 'Kayu', 2016, NULL, 'Gd B Lantai 3', '0352.PK/LG.01.01/GA/2016', NULL),
(352, 'B09', 'Meubel Bahan Kayu', 'Loker ', 'B09/001/XII/GA/2016', 10500000, 'Custom', 'Kayu', 2016, NULL, 'Kantor Pusat Gasnet', '0352.PK/LG.01.01/GA/2016', NULL),
(353, 'B09', 'Meubel Bahan Kayu', 'Loker ', 'B09/002/XII/GA/2016', 10500000, 'Custom', 'Kayu', 2016, NULL, 'Kantor Pusat Gasnet', '0352.PK/LG.01.01/GA/2016', NULL);
INSERT INTO `inventaris` (`IDinventaris`, `kodeBarang`, `jenisAset`, `namaBarang`, `noInventaris`, `harga`, `merk`, `bahan`, `tahun`, `bulan`, `lokasi`, `noMesin`, `fileImage`) VALUES
(354, 'B09', 'Meubel Bahan Kayu', 'Loker ', 'B09/003/XII/GA/2016', 10500000, 'Custom', 'Kayu', 2016, NULL, 'Kantor Pusat Gasnet', '0352.PK/LG.01.01/GA/2016', NULL),
(355, 'B03', 'Meubel Bahan Kayu', 'Meja Nakkas ', 'B03/001/XII/GA/2016', 700000, 'Custom', 'Kayu', 2016, NULL, 'Kantor Pusat Gasnet', '0352.PK/LG.01.01/GA/2016', NULL),
(356, 'B03', 'Meubel Bahan Kayu', 'Meja Nakkas ', 'B03/002/XII/GA/2016', 700000, 'Custom', 'Kayu', 2016, NULL, 'Kantor Pusat Gasnet', '0352.PK/LG.01.01/GA/2016', NULL),
(357, 'B07', 'Meubel Bahan Kayu', 'Meja Resepsionis ', 'B07/002/XII/GS/2017', 8850000, 'Custom', 'Kayu', 2017, NULL, 'Kantor Pusat Gasnet', '', NULL),
(358, 'B10', 'Meubel Bahan Kayu', 'Furniture Pantry', 'B10/001/XII/GS/2017', 5100000, '100x200 lapis HPL', 'Kayu', 2017, NULL, 'Kantor Pusat Gasnet', '', NULL),
(359, 'B01', 'Meubel Bahan Kayu', 'Meja Direktur + Cradenza', 'B01/046/XII/GS/2017', 5650000, '150x100x80 lapis HPL', 'Kayu', 2017, NULL, 'Kantor Pusat Gasnet', '', NULL),
(360, 'B01', 'Meubel Bahan Kayu', 'Meja Komisaris + Cradenza', 'B01/047/XII/GS/2017', 5650000, '150x100x80 lapis HPL', 'Kayu', 2017, NULL, 'Kantor Pusat Gasnet', '', NULL),
(361, 'B11', 'Meubel Bahan Kayu', 'Meja Bar Pantry', 'B11/002/XII/GS/2017', 5700000, '200x80 lapis HPL', 'Kayu', 2017, NULL, 'Kantor Pusat Gasnet', '', NULL),
(362, 'B12', 'Meubel Bahan Kayu', 'Sofa bahan Pabrik ', 'B12/001/XII/GS/2017', 4750000, 'Uk. 150x80 ', 'Kayu', 2017, NULL, 'Kantor Pusat Gasnet', '', NULL),
(363, 'B08', 'Meubel Bahan Kayu', 'Meja Cradenza ', 'B08/005/XII/GS/2017', 6500000, '260x60 Multipleks HPL', 'Kayu', 2017, NULL, 'Kantor Pusat Gasnet', '', NULL),
(364, 'B08', 'Meubel Bahan Kayu', 'Meja Cradenza ', 'B08/006/XII/GS/2017', 3750000, '150x60 Multipleks HPL', 'Kayu', 2017, NULL, 'Kantor Pusat Gasnet', '', NULL),
(365, 'B09', 'Meubel Bahan Kayu', 'Meja Cradenza ', 'B08/007/XII/GS/2017', 3750000, '150x60 Multipleks HPL', 'Kayu', 2017, NULL, 'Kantor Pusat Gasnet', '', NULL),
(366, 'B13', 'Meubel Bahan Kayu', 'Meja Bundar ', 'B13/001/XII/GS/2017', 2450000, 'Uk. Diameter120', 'Kayu', 2017, NULL, 'Kantor Pusat Gasnet', '', NULL),
(367, 'B01', 'Meubel Bahan Kayu', 'Meja Pekerja +Drawer', 'B01/020/XII/GS/2017', 4100000, '120x60x75 Multipleks lapis HPL', 'Kayu ', 2017, NULL, 'Kantor Pusat Gasnet', '', NULL),
(368, 'B01', 'Meubel Bahan Kayu', 'Meja Pekerja +Drawer', 'B01/021/XII/GS/2017', 4100000, '120x60x75 Multipleks lapis HPL', 'Kayu ', 2017, NULL, 'Kantor Pusat Gasnet', '', NULL),
(369, 'B01', 'Meubel Bahan Kayu', 'Meja Pekerja +Drawer', 'B01/022/XII/GS/2017', 4100000, '120x60x75 Multipleks lapis HPL', 'Kayu ', 2017, NULL, 'Kantor Pusat Gasnet', '', NULL),
(370, 'B01', 'Meubel Bahan Kayu', 'Meja Pekerja +Drawer', 'B01/023/XII/GS/2017', 4100000, '120x60x75 Multipleks lapis HPL', 'Kayu ', 2017, NULL, 'Kantor Pusat Gasnet', '', NULL),
(371, 'B01', 'Meubel Bahan Kayu', 'Meja Pekerja +Drawer', 'B01/024/XII/GS/2017', 4100000, '120x60x75 Multipleks lapis HPL', 'Kayu ', 2017, NULL, 'Kantor Pusat Gasnet', '', NULL),
(372, 'B01', 'Meubel Bahan Kayu', 'Meja Pekerja +Drawer', 'B01/025/XII/GS/2017', 4100000, '120x60x75 Multipleks lapis HPL', 'Kayu ', 2017, NULL, 'Kantor Pusat Gasnet', '', NULL),
(373, 'B01', 'Meubel Bahan Kayu', 'Meja Pekerja +Drawer', 'B01/026/XII/GS/2017', 4100000, '120x60x75 Multipleks lapis HPL', 'Kayu ', 2017, NULL, 'Kantor Pusat Gasnet', '', NULL),
(374, 'B01', 'Meubel Bahan Kayu', 'Meja Pekerja +Drawer', 'B01/027/XII/GS/2017', 4100000, '120x60x75 Multipleks lapis HPL', 'Kayu ', 2017, NULL, 'Kantor Pusat Gasnet', '', NULL),
(375, 'B01', 'Meubel Bahan Kayu', 'Meja Pekerja +Drawer', 'B01/028/XII/GS/2017', 4100000, '120x60x75 Multipleks lapis HPL', 'Kayu ', 2017, NULL, 'Kantor Pusat Gasnet', '', NULL),
(376, 'B01', 'Meubel Bahan Kayu', 'Meja Pekerja +Drawer', 'B01/029/XII/GS/2017', 4100000, '120x60x75 Multipleks lapis HPL', 'Kayu ', 2017, NULL, 'Kantor Pusat Gasnet', '', NULL),
(377, 'B01', 'Meubel Bahan Kayu', 'Meja Pekerja +Drawer', 'B01/030/XII/GS/2017', 4100000, '120x60x75 Multipleks lapis HPL', 'Kayu ', 2017, NULL, 'Kantor Pusat Gasnet', '', NULL),
(378, 'B01', 'Meubel Bahan Kayu', 'Meja Pekerja +Drawer', 'B01/031/XII/GS/2017', 4100000, '120x60x75 Multipleks lapis HPL', 'Kayu ', 2017, NULL, 'Kantor Pusat Gasnet', '', NULL),
(379, 'B01', 'Meubel Bahan Kayu', 'Meja Pekerja +Drawer', 'B01/032/XII/GS/2017', 4100000, '120x60x75 Multipleks lapis HPL', 'Kayu ', 2017, NULL, 'Kantor Pusat Gasnet', '', NULL),
(380, 'B01', 'Meubel Bahan Kayu', 'Meja Pekerja +Drawer', 'B01/033/XII/GS/2017', 4100000, '120x60x75 Multipleks lapis HPL', 'Kayu ', 2017, NULL, 'Kantor Pusat Gasnet', '', NULL),
(381, 'B01', 'Meubel Bahan Kayu', 'Meja Pekerja +Drawer', 'B01/034/XII/GS/2017', 4100000, '120x60x75 Multipleks lapis HPL', 'Kayu ', 2017, NULL, 'Kantor Pusat Gasnet', '', NULL),
(382, 'B01', 'Meubel Bahan Kayu', 'Meja Pekerja +Drawer', 'B01/035/XII/GS/2017', 4100000, '120x60x75 Multipleks lapis HPL', 'Kayu ', 2017, NULL, 'Kantor Pusat Gasnet', '', NULL),
(383, 'B01', 'Meubel Bahan Kayu', 'Meja Pekerja +Drawer', 'B01/036/XII/GS/2017', 4100000, '120x60x75 Multipleks lapis HPL', 'Kayu ', 2017, NULL, 'Kantor Pusat Gasnet', '', NULL),
(384, 'B01', 'Meubel Bahan Kayu', 'Meja Pekerja +Drawer', 'B01/037/XII/GS/2017', 4100000, '120x60x75 Multipleks lapis HPL', 'Kayu ', 2017, NULL, 'Kantor Pusat Gasnet', '', NULL),
(385, 'B01', 'Meubel Bahan Kayu', 'Meja Pekerja +Drawer', 'B01/038/XII/GS/2017', 4100000, '120x60x75 Multipleks lapis HPL', 'Kayu ', 2017, NULL, 'Kantor Pusat Gasnet', '', NULL),
(386, 'B01', 'Meubel Bahan Kayu', 'Meja Pekerja +Drawer', 'B01/039/XII/GS/2017', 4100000, '120x60x75 Multipleks lapis HPL', 'Kayu ', 2017, NULL, 'Kantor Pusat Gasnet', '', NULL),
(387, 'B01', 'Meubel Bahan Kayu', 'Meja Pekerja +Drawer', 'B01/040/XII/GS/2017', 4100000, '120x60x75 Multipleks lapis HPL', 'Kayu ', 2017, NULL, 'Kantor Pusat Gasnet', '', NULL),
(388, 'B01', 'Meubel Bahan Kayu', 'Meja Pekerja +Drawer', 'B01/041/XII/GS/2017', 4100000, '120x60x75 Multipleks lapis HPL', 'Kayu ', 2017, NULL, 'Kantor Pusat Gasnet', '', NULL),
(389, 'B01', 'Meubel Bahan Kayu', 'Meja Pekerja +Drawer', 'B01/042/XII/GS/2017', 4100000, '120x60x75 Multipleks lapis HPL', 'Kayu ', 2017, NULL, 'Kantor Pusat Gasnet', '', NULL),
(390, 'B01', 'Meubel Bahan Kayu', 'Meja Pekerja +Drawer', 'B01/043/XII/GS/2017', 4100000, '120x60x75 Multipleks lapis HPL', 'Kayu ', 2017, NULL, 'Kantor Pusat Gasnet', '', NULL),
(391, 'B01', 'Meubel Bahan Kayu', 'Meja Pekerja +Drawer', 'B01/044/XII/GS/2017', 4100000, '120x60x75 Multipleks lapis HPL', 'Kayu ', 2017, NULL, 'Kantor Pusat Gasnet', '', NULL),
(392, 'B01', 'Meubel Bahan Kayu', 'Meja Pekerja +Drawer', 'B01/045/XII/GS/2017', 4100000, '120x60x75 Multipleks lapis HPL', 'Kayu ', 2017, NULL, 'Kantor Pusat Gasnet', '', NULL),
(393, 'B01', 'Meubel Bahan Kayu', 'Meja Manajer + Cradenza', 'B01/048/XII/GS/2017', 5100000, '150x100x60 Multipleks lapis HPL', 'Kayu ', 2017, NULL, 'Kantor Pusat Gasnet', '', NULL),
(394, 'B01', 'Meubel Bahan Kayu', 'Meja Manajer + Cradenza', 'B01/049/XII/GS/2017', 5100000, '150x100x60 Multipleks lapis HPL', 'Kayu ', 2017, NULL, 'Kantor Pusat Gasnet', '', NULL),
(395, 'B01', 'Meubel Bahan Kayu', 'Meja Manajer + Cradenza', 'B01/050/XII/GS/2017', 5100000, '150x100x60 Multipleks lapis HPL', 'Kayu ', 2017, NULL, 'Kantor Pusat Gasnet', '', NULL),
(396, 'B01', 'Meubel Bahan Kayu', 'Meja Manajer + Cradenza', 'B01/051/XII/GS/2017', 5100000, '150x100x60 Multipleks lapis HPL', 'Kayu ', 2017, NULL, 'Kantor Pusat Gasnet', '', NULL),
(397, 'B18', 'Meubel Bahan Kayu', 'Meja CafÃ© ', 'B18/001/I/GS/2018', 2950000, '70x150 Bahan Kayu Jati Belanda ', 'Kayu ', 2018, NULL, 'Kantor Pusat Gasnet', '', NULL),
(398, 'B02', 'Meubel Bahan Kayu', 'Meja Meeting', 'B02/004/XII/GS/2017', 5500000, '120x300 cm multipleks HPL', 'Kayu ', 2017, NULL, 'Kantor Pusat Gasnet', '', NULL),
(399, 'B09', 'Meubel Bahan Kayu', 'Loker ', 'B09/004/I/GS/2018', 16850000, '260x240 Multipleks HPL', 'Kayu', 2018, NULL, 'Kantor Pusat Gasnet', '', NULL),
(400, 'B09', 'Meubel Bahan Kayu', 'Loker ', 'B09/005/I/GS/2018', 7155000, '110x240 Multipleks HPL', 'Kayu', 2018, NULL, 'Kantor Pusat Gasnet', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permohonan_kendaraan`
--

CREATE TABLE `permohonan_kendaraan` (
  `IDpermohonan` int(11) NOT NULL,
  `tanggalBerangkat` date NOT NULL,
  `namaPengguna` varchar(100) NOT NULL,
  `satuanKerja` varchar(100) NOT NULL,
  `tujuan` varchar(255) NOT NULL,
  `jamBerangkat` time NOT NULL,
  `jamKembali` time NOT NULL,
  `noPol` varchar(10) NOT NULL,
  `pengemudi` varchar(50) NOT NULL,
  `tanggalPermohonan` date NOT NULL,
  `kmAwal` int(11) DEFAULT NULL,
  `kmAkhir` int(11) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `approval` varchar(50) DEFAULT 'Belum ada persetujuan'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `permohonan_kendaraan`
--

INSERT INTO `permohonan_kendaraan` (`IDpermohonan`, `tanggalBerangkat`, `namaPengguna`, `satuanKerja`, `tujuan`, `jamBerangkat`, `jamKembali`, `noPol`, `pengemudi`, `tanggalPermohonan`, `kmAwal`, `kmAkhir`, `email`, `approval`) VALUES
(1, '2018-08-06', 'Erik Santiago', 'IT Developer', 'Jakarta Timur', '09:00:00', '12:00:00', 'B 1234 CD', 'Erik Santiago', '2018-08-03', NULL, NULL, 'erik@gmail.com', 'Disetujui Pusat'),
(2, '2018-08-06', 'Firly A Maulana', 'Marketing', 'Jakarta Utara', '13:00:00', '15:00:00', 'B 1234 CD', 'Firly A Maulana', '2018-08-03', NULL, NULL, 'firy@gmail.com', 'Belum ada persetujuan'),
(3, '2018-08-07', 'Firdaus', 'IT Developer', 'Jakarta Timur', '09:00:00', '12:00:00', 'B 1234 CD', 'Firdaus', '2018-08-06', NULL, NULL, 'erik@gmail.com', 'Tidak disetujui Pusat'),
(4, '2018-08-08', 'Firdaus', 'QA', 'UNJ', '14:00:00', '18:00:00', 'B 1 GSN', 'Firly A Maulana', '2018-08-06', NULL, NULL, 'firy@gmail.com', 'Belum ada persetujuan');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `posisi` varchar(100) DEFAULT NULL,
  `level` int(11) NOT NULL DEFAULT '1',
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`email`, `password`, `nama`, `posisi`, `level`, `status`) VALUES
('admin@gasnet.com', '$2y$10$6gPLGKysCVOqIdK0ngkvl.eaWoj2tgAfLF1GIEh0zQtCQ5D7LipuC', 'Rahmat', NULL, 0, 'aktif'),
('erik@gmail.com', '$2y$10$KqMno883QbEbZ/9VyJlqzeLIVlSg5wiV9k5MAI35RiLyjJDS9dl16', 'Erik Santiago', 'Supervisor IT', 2, 'aktif'),
('firy@gmail.com', '$2y$10$I3fp6H/Jkabs2UxXrgRGOOiV21BUej7rHbfqrEjqncrDg9x86PBs.', 'Firly A Maulana', 'IT', 1, 'aktif');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `inventaris`
--
ALTER TABLE `inventaris`
  ADD PRIMARY KEY (`IDinventaris`),
  ADD KEY `IDbarang_inventaris_barang` (`namaBarang`);

--
-- Indexes for table `permohonan_kendaraan`
--
ALTER TABLE `permohonan_kendaraan`
  ADD PRIMARY KEY (`IDpermohonan`),
  ADD KEY `email_permohonan_kendaraan_users` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `inventaris`
--
ALTER TABLE `inventaris`
  MODIFY `IDinventaris` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=448;

--
-- AUTO_INCREMENT for table `permohonan_kendaraan`
--
ALTER TABLE `permohonan_kendaraan`
  MODIFY `IDpermohonan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `permohonan_kendaraan`
--
ALTER TABLE `permohonan_kendaraan`
  ADD CONSTRAINT `email_permohonan_kendaraan_users` FOREIGN KEY (`email`) REFERENCES `users` (`email`) ON DELETE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
