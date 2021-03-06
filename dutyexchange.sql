-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2022 at 01:49 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dutyexchange`
--
CREATE DATABASE IF NOT EXISTS `dutyexchange` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dutyexchange`;

-- --------------------------------------------------------

--
-- Table structure for table `duty`
--

CREATE TABLE `duty` (
  `eid` int(11) NOT NULL,
  `dutyid` int(11) NOT NULL,
  `Date` date NOT NULL,
  `meta` varchar(30) DEFAULT NULL,
  `exchanged` varchar(15) NOT NULL DEFAULT 'notexchanged'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `duty`
--

INSERT INTO `duty` VALUES
(1032, 1, '2022-04-01', NULL, 'notexchanged'),
(1035, 2, '2022-05-17', NULL, 'notexchanged'),
(1035, 3, '2022-05-18', NULL, 'notexchanged'),
(1035, 4, '2022-05-19', NULL, 'notexchanged'),
(1035, 5, '2022-05-20', NULL, 'notexchanged'),
(1037, 6, '2022-04-22', NULL, 'notexchanged'),
(1038, 7, '2022-04-22', NULL, 'notexchanged'),
(1039, 8, '2022-04-22', NULL, 'notexchanged'),
(1040, 9, '2022-05-18', NULL, 'notexchanged'),
(1040, 10, '2022-05-19', NULL, 'notexchanged'),
(1040, 11, '2022-05-20', NULL, 'notexchanged'),
(1040, 12, '2022-05-21', NULL, 'notexchanged'),
(1041, 13, '2022-04-22', NULL, 'notexchanged'),
(1042, 14, '2022-05-17', NULL, 'notexchanged'),
(1042, 15, '2022-05-19', NULL, 'notexchanged'),
(1042, 16, '2022-05-23', NULL, 'notexchanged'),
(1042, 17, '2022-05-24', NULL, 'notexchanged'),
(1044, 18, '2022-05-23', NULL, 'notexchanged'),
(1044, 19, '2022-05-24', NULL, 'notexchanged'),
(1043, 20, '2022-04-22', NULL, 'notexchanged'),
(1045, 21, '2022-04-22', NULL, 'notexchanged'),
(1046, 22, '2022-04-22', NULL, 'notexchanged'),
(1032, 23, '2022-04-27', NULL, 'notexchanged'),
(1032, 24, '2022-04-28', NULL, 'notexchanged'),
(1032, 25, '2022-05-02', NULL, 'notexchanged'),
(1032, 26, '2022-05-03', NULL, 'notexchanged'),
(1033, 27, '2022-04-27', NULL, 'notexchanged'),
(1033, 28, '2022-04-29', NULL, 'notexchanged'),
(1033, 29, '2022-05-01', NULL, 'notexchanged'),
(1033, 30, '2022-05-02', NULL, 'notexchanged'),
(1033, 31, '2022-05-03', NULL, 'notexchanged'),
(1034, 32, '2022-04-28', NULL, 'notexchanged'),
(1034, 33, '2022-04-29', NULL, 'notexchanged'),
(1034, 34, '2022-04-30', NULL, 'notexchanged'),
(1034, 35, '2022-05-02', NULL, 'notexchanged'),
(1034, 36, '2022-05-03', NULL, 'notexchanged'),
(1036, 37, '2022-04-27', NULL, 'notexchanged'),
(1036, 38, '2022-04-28', NULL, 'notexchanged'),
(1036, 39, '2022-04-29', NULL, 'notexchanged'),
(1036, 40, '2022-04-30', NULL, 'notexchanged'),
(1036, 41, '2022-05-03', NULL, 'notexchanged');
-- --------------------------------------------------------

--
-- Table structure for table `exchange`
--

CREATE TABLE `exchange` (
  `dutyid1` int(11) NOT NULL,
  `dutyid2` int(11) NOT NULL,
  `requestor` int(11) NOT NULL,
  `approver` int(11) NOT NULL,
  `Status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `exchange`
--

INSERT INTO `exchange` VALUES
(1, 8, 1035, 1040, 'Approved'),
(7, 13, 1040, 1044, 'requested'),
(4, 13, 1035, 1044, 'requested'),
(4, 13, 1035, 1044, 'requested');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `eid` int(11) NOT NULL,
  `name` varchar(24) NOT NULL,
  `Department` varchar(10) NOT NULL,
  `Affiliation` varchar(19) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` VALUES
(1032, 'Ms Nikita Pagar', 'Computer', 'Assistant Professor'),
(1033, 'Archana kadam', 'Computer', 'Assistant Professor'),
(1034, 'Sarika Jadhav', 'Computer', 'Assistant Professor'),
(1035, 'Mrs.Prachi Soniminde', 'Computer', 'Assistant Professor'),
(1036, 'Amit Marwadi', 'Computer', 'Assistant Professor'),
(1037, 'Dr.RIcha Purohit', 'Computer', 'Assistant Professor'),
(1038, 'Nabarun Prajna', 'Mechanical', 'Assistant Professor'),
(1039, 'Shridhar Sur Vishnuraman', 'Mechanical', 'Assistant Professor'),
(1040, 'Habib Shahid', 'Mechanical', 'Assistant Professor'),
(1041, 'Yogendra Ramamohan', 'Mechanical', 'Assistant Professor'),
(1042, 'Sundar Maitreya', 'Mechanical', 'Assistant Professor'),
(1043, 'Krishnala Nachiketa', 'Mechanical', 'Assistant Professor'),
(1044, 'Kashiprasad Raza', 'Civil', 'Assistant Professor'),
(1045, 'Sukrit Subbaratnam', 'Civil', 'Assistant Professor'),
(1046, 'Abhyagni Hynala', 'Civil', 'Associate Professor'),
(1047, 'Phanindra Subramanyan', 'Civil', 'Associate Professor'),
(1048, 'Narsimha Sapthotharan', 'Civil', 'Associate Professor'),
(1049, 'Chandrashekhar Yamini', 'Computer', 'Associate Professor'),
(1050, 'Upagupta Sekhar', 'Computer', 'Associate Professor'),
(1051, 'Vikramajit Kadamuddi', 'Computer', 'Associate Professor');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `eid` int(11) NOT NULL,
  `name` varchar(24) NOT NULL,
  `Department` varchar(10) NOT NULL,
  `Affiliation` varchar(19) NOT NULL,
  `Email` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` VALUES
(1032, 'Ms Nikita Pagar', 'Computer', 'Assistant Professor', '1032@gmail.com', '067958390d18bfa69c9ceaed05b3b41d'),
(1033, 'Archana kadam', 'Computer', 'Assistant Professor', '1033@gmail.com', '3d150969bad275f3fef4de7e492f3f79'),
(1034, 'Sarika Jadhav', 'Computer', 'Assistant Professor', '1034@gmail.com', '7e97ad5e20c585105b8df15666f24a62'),
(1035, 'Mrs.Prachi Soniminde', 'Computer', 'Assistant Professor', '1035@gmail.com', '86380ca415244c066c49a6a002c30236'),
(1036, 'Amit Marwadi', 'Computer', 'Assistant Professor', '1036@gmail.com', '1b52103c0d6631a6a988260cfde498ad'),
(1037, 'Dr.RIcha Purohit', 'Computer', 'Assistant Professor', '1037@gmail.com', '633f3dc3d9b001db959c1ebc2dd98788'),
(1038, 'Nabarun Prajna', 'Mechanical', 'Assistant Professor', '1038@gmail.com', '98373817a65abebf26d5389de54720a0'),
(1039, 'Shridhar Sur Vishnuraman', 'Mechanical', 'Assistant Professor', '1039@gmail.com', 'ab3455874f6f89544a96474018456dd7'),
(1040, 'Habib Shahid', 'Mechanical', 'Assistant Professor', '1040@gmail.com', '3aa3dc1662d91e7d72620b25a5dbafd2'),
(1041, 'Yogendra Ramamohan', 'Mechanical', 'Assistant Professor', '1041@gmail.com', 'ae75a192e0f83fd9ba207888eaa0ffbf'),
(1042, 'Sundar Maitreya', 'Mechanical', 'Assistant Professor', '1042@gmail.com', 'e8b36a463b3373a1ab3485852c673680'),
(1043, 'Krishnala Nachiketa', 'Mechanical', 'Assistant Professor', '1043@gmail.com', 'ed5e70d714729e6ebf68f15da875bbf7'),
(1044, 'Kashiprasad Raza', 'Civil', 'Assistant Professor', '1044@gmail.com', 'bba679d14d4bc1ba185cc75a3f248b06'),
(1045, 'Sukrit Subbaratnam', 'Civil', 'Assistant Professor', '1045@gmail.com', 'df66b18ee0bf5a64a87429f60158abc6'),
(1046, 'Abhyagni Hynala', 'Civil', 'Associate Professor', '1046@gmail.com', 'ce6c7261bc8dfd6732a640df5cceefd7'),
(1047, 'Phanindra Subramanyan', 'Civil', 'Associate Professor', '1047@gmail.com', 'f6e0cfdb1469c3b7e42884c85c35cbf2'),
(1048, 'Narsimha Sapthotharan', 'Civil', 'Associate Professor', '1048@gmail.com', 'deff76d23577839307381fd1dc6ab993'),
(1049, 'Chandrashekhar Yamini', 'Computer', 'Associate Professor', '1049@gmail.com', '0a13582cce7e8add8bbb10bea18ae16b'),
(1050, 'Upagupta Sekhar', 'Computer', 'Associate Professor', '1050@gmail.com', '2667ad71ccf66096237376a648b47e08'),
(1051, 'Vikramajit Kadamuddi', 'Computer', 'Associate Professor', '1051@gmail.com', 'b96dc39838ea96b196482c544576b91d');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `duty`
--
ALTER TABLE `duty`
  ADD PRIMARY KEY (`dutyid`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`eid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
