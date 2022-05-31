-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2022 at 06:04 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spcc_club`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `fullname` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(250) DEFAULT NULL,
  `picture` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `fullname`, `email`, `password`, `picture`) VALUES
(14, 'Charlotte Mateo', 'Mateo_Charlotte@spcc.edu.ph', '0192023a7bbd73250516f069df18b500', '1653304350cha.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `club`
--

CREATE TABLE `club` (
  `id` int(11) NOT NULL,
  `clubname` varchar(45) DEFAULT NULL,
  `gmeetlink` varchar(250) DEFAULT NULL,
  `banner` varchar(250) DEFAULT NULL,
  `teacherid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `club`
--

INSERT INTO `club` (`id`, `clubname`, `gmeetlink`, `banner`, `teacherid`) VALUES
(19, 'Programming Club', 'https://meet.google.com/bem-wxqj-wrz', '1653713927_programming-club.png', 19),
(20, 'Art Club', 'https://meet.google.com/exa-eahc-ucr', '1653713943_arts-club.png', 12),
(23, 'Sports Club', 'https://meet.google.com/vyy-bqrn-ujd', '1653713985sports-club.png', 12),
(24, 'Animation Club', 'https://meet.google.com/dse-phtv-xdx', '1653714132animation-club.png', 20),
(25, 'Multimedia Club', 'https://meet.google.com/qga-dfrt-iev', '1653714175multimedia-club.png', 18),
(26, 'Networking Club', 'https://meet.google.com/cra-mumz-nqr', '1653714207networking-and-computer-hardware-club.png', 13),
(27, 'Essay & Debate Club', 'https://meet.google.com/kuq-cscf-hga', '1653714254essay-and-debate-club.png', 17),
(28, 'Dance Club', 'https://meet.google.com/qny-eqqd-etd ', '1653714285dance-club.png', 14),
(29, 'Math Club', 'https://meet.google.com/eye-jvyz-psa', '1653714318math-club.png', 16);

-- --------------------------------------------------------

--
-- Table structure for table `clubfile`
--

CREATE TABLE `clubfile` (
  `id` int(11) NOT NULL,
  `filename` varchar(250) DEFAULT NULL,
  `clubworksid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clubfile`
--

INSERT INTO `clubfile` (`id`, `filename`, `clubworksid`) VALUES
(1, 'video.mp4', 10),
(11, '16536642652022-04-21-13-04-37.mp4', NULL),
(12, '16536647262022-04-21-13-04-37.mp4', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `clubworks`
--

CREATE TABLE `clubworks` (
  `id` int(11) NOT NULL,
  `title` varchar(45) DEFAULT NULL,
  `detail` varchar(250) DEFAULT NULL,
  `filename` varchar(45) DEFAULT NULL,
  `dateposted` date DEFAULT NULL,
  `teacherid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clubworks`
--

INSERT INTO `clubworks` (`id`, `title`, `detail`, `filename`, `dateposted`, `teacherid`) VALUES
(21, 'erer', ' erer', '16536997152022-04-21-13-04-37.mp4', '2022-05-28', 10),
(22, 'dfbd', ' dfbdfbsvdwesdvcsz', '1653918856_video-1653717612.mp4', '2022-05-28', 16),
(23, 'math samples', ' dfbdfbvdfvdfx', '1653726623video-1653717612.mp4', '2022-05-28', 16),
(24, 'tgbrdv', ' dsfvdsfv', '1653899705video-1653717612.mp4', '2022-05-30', 16),
(25, 'wfvcs', ' aqcasc', '1653907022video-1653717612.mp4', '2022-05-30', 16);

-- --------------------------------------------------------

--
-- Table structure for table `student_info`
--

CREATE TABLE `student_info` (
  `id` int(11) NOT NULL,
  `studentNo` int(11) NOT NULL,
  `fullname` varchar(45) NOT NULL,
  `picture` varchar(250) DEFAULT NULL,
  `password` varchar(250) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `age` int(11) NOT NULL,
  `email` varchar(250) NOT NULL,
  `teacherid` int(11) DEFAULT NULL,
  `clubid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_info`
--

INSERT INTO `student_info` (`id`, `studentNo`, `fullname`, `picture`, `password`, `gender`, `age`, `email`, `teacherid`, `clubid`) VALUES
(125, 26781920, 'christian tablo', '1653716567tablo.jpg', 'ad6a280417a0f533d8b670c61667e1a0', 'Male', 21, 'tablo_markchristian@spcc.edu.ph', 14, 28),
(126, 45672345, 'charlotte mateo', '16537190458R_CSCP_ICT_1_5.jpg', 'ad6a280417a0f533d8b670c61667e1a0', 'Female', 19, 'mateo_charlotte@spcc.edu.ph', 16, 29),
(127, 47589210, 'achie', '16537192548R_CSCP_ICT_1_5.jpg', 'ad6a280417a0f533d8b670c61667e1a0', 'Female', 21, 'aguilar_hazhel@spcc.edu.ph', NULL, NULL),
(128, 18293046, 'brian salvacion', '1653726348tablo.jpg', 'ad6a280417a0f533d8b670c61667e1a0', 'Male', 21, 'salvacion_brian@spcc.edu.ph', 19, 19),
(129, 45781920, 'student1', '1653726675dean.jpg', 'ad6a280417a0f533d8b670c61667e1a0', 'Male', 21, 'student1@spcc.edu.ph', 16, 29);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_info`
--

CREATE TABLE `teacher_info` (
  `id` int(11) NOT NULL,
  `teacherNo` int(11) NOT NULL,
  `fullname` varchar(50) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `password` varchar(250) DEFAULT NULL,
  `picture` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher_info`
--

INSERT INTO `teacher_info` (`id`, `teacherNo`, `fullname`, `email`, `password`, `picture`) VALUES
(12, 12893612, 'Angelica Perioles', 'perioles_angelica@spcc.edu.ph', 'a426dcf72ba25d046591f81a5495eab7', '1653713044mam-angelica.jpeg'),
(13, 17829036, 'Dexter Antigua', 'antigua_dexter@spcc.edu.ph', 'a426dcf72ba25d046591f81a5495eab7', '1653713083sir-dexter.jpg'),
(14, 10948029, 'William Jas', 'jas_william@spcc.edu.ph', 'a426dcf72ba25d046591f81a5495eab7', '1653713125sir-jas.jpg'),
(15, 10984027, 'Rechelle Teves ', 'teves_rechelle@spcc.edu.ph', 'a426dcf72ba25d046591f81a5495eab7', '1653713195mam-teves.jpg'),
(16, 12345678, 'Reymond Duenas', 'duenas_reymond@spcc.edu.ph', 'a426dcf72ba25d046591f81a5495eab7', '1653713232sir-mhon.jpg'),
(17, 17839049, 'Jhensen Foronda', 'foronda_jhensen@spcc.edu.ph', 'a426dcf72ba25d046591f81a5495eab7', '1653713290sir-jhensen.jpg'),
(18, 18290367, 'Mike Hulip', 'hulip_mike@spcc.edu.ph', 'a426dcf72ba25d046591f81a5495eab7', '1653713325sir-mike.jpg'),
(19, 90273625, 'Verdel Manzano', 'manzano_verdel@spcc.edu.ph', 'a426dcf72ba25d046591f81a5495eab7', '1653713360sir-verdel.jpg'),
(20, 67589342, 'Kenneth Odtuhan', 'odtuhan_kenneth@spcc.edu.ph', 'a426dcf72ba25d046591f81a5495eab7', '1653713428sir-odtuhan.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `club`
--
ALTER TABLE `club`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clubfile`
--
ALTER TABLE `clubfile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clubworks`
--
ALTER TABLE `clubworks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_info`
--
ALTER TABLE `student_info`
  ADD PRIMARY KEY (`id`,`studentNo`);

--
-- Indexes for table `teacher_info`
--
ALTER TABLE `teacher_info`
  ADD PRIMARY KEY (`id`,`teacherNo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `club`
--
ALTER TABLE `club`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `clubfile`
--
ALTER TABLE `clubfile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `clubworks`
--
ALTER TABLE `clubworks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `student_info`
--
ALTER TABLE `student_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT for table `teacher_info`
--
ALTER TABLE `teacher_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
