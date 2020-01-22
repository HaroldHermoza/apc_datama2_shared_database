-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 22, 2020 at 06:16 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `diosmama`
--

-- --------------------------------------------------------

--
-- Table structure for table `agent`
--

CREATE TABLE `agent` (
  `id` int(45) NOT NULL,
  `agent_fname` varchar(45) NOT NULL,
  `agent_lname` varchar(45) NOT NULL,
  `agent_cnum` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agent`
--

INSERT INTO `agent` (`id`, `agent_fname`, `agent_lname`, `agent_cnum`) VALUES
(45, 'Garen', 'Crownguards', '0917938796'),
(50, 'Luxanna', 'Crownguard', '09173985754');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(45) NOT NULL,
  `cus_fname` varchar(45) NOT NULL,
  `cus_lname` varchar(45) NOT NULL,
  `cus_cnum` varchar(45) NOT NULL,
  `cus_count` varchar(45) NOT NULL,
  `cus_type` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `cus_fname`, `cus_lname`, `cus_cnum`, `cus_count`, `cus_type`) VALUES
(45, 'Harold', 'Hermoza', '090909090', '12', 'Walk in'),
(50, 'Ethan', 'Deprezon', '6969696969', '12', 'Walk in');

-- --------------------------------------------------------

--
-- Table structure for table `photographer`
--

CREATE TABLE `photographer` (
  `id` int(45) UNSIGNED NOT NULL,
  `photo_fname` varchar(45) NOT NULL,
  `photo_lname` varchar(45) NOT NULL,
  `photo_num` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `photographer`
--

INSERT INTO `photographer` (`id`, `photo_fname`, `photo_lname`, `photo_num`) VALUES
(1, 'Benio', 'Sama', '091793101010'),
(2, 'Rebecca', 'Ababao', '091793101015');

-- --------------------------------------------------------

--
-- Stand-in structure for view `photographer_customer`
-- (See below for the actual view)
--
CREATE TABLE `photographer_customer` (
`photo_fname` varchar(45)
,`photo_lname` varchar(45)
,`photo_num` varchar(45)
,`cus_fname` varchar(45)
,`cus_lname` varchar(45)
,`cus_cnum` varchar(45)
,`cus_count` varchar(45)
,`cus_type` varchar(45)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `project`
-- (See below for the actual view)
--
CREATE TABLE `project` (
`id` int(45)
,`cus_fname` varchar(45)
,`cus_lname` varchar(45)
,`cus_cnum` varchar(45)
,`cus_count` varchar(45)
,`cus_type` varchar(45)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `project2`
-- (See below for the actual view)
--
CREATE TABLE `project2` (
`id` int(45)
,`agent_fname` varchar(45)
,`agent_lname` varchar(45)
,`agent_cnum` varchar(45)
);

-- --------------------------------------------------------

--
-- Structure for view `photographer_customer`
--
DROP TABLE IF EXISTS `photographer_customer`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `photographer_customer`  AS  select `photographer`.`photo_fname` AS `photo_fname`,`photographer`.`photo_lname` AS `photo_lname`,`photographer`.`photo_num` AS `photo_num`,`customer`.`cus_fname` AS `cus_fname`,`customer`.`cus_lname` AS `cus_lname`,`customer`.`cus_cnum` AS `cus_cnum`,`customer`.`cus_count` AS `cus_count`,`customer`.`cus_type` AS `cus_type` from (`customer` join `photographer`) ;

-- --------------------------------------------------------

--
-- Structure for view `project`
--
DROP TABLE IF EXISTS `project`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `project`  AS  select `customer`.`id` AS `id`,`customer`.`cus_fname` AS `cus_fname`,`customer`.`cus_lname` AS `cus_lname`,`customer`.`cus_cnum` AS `cus_cnum`,`customer`.`cus_count` AS `cus_count`,`customer`.`cus_type` AS `cus_type` from `customer` ;

-- --------------------------------------------------------

--
-- Structure for view `project2`
--
DROP TABLE IF EXISTS `project2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `project2`  AS  select `agent`.`id` AS `id`,`agent`.`agent_fname` AS `agent_fname`,`agent`.`agent_lname` AS `agent_lname`,`agent`.`agent_cnum` AS `agent_cnum` from `agent` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agent`
--
ALTER TABLE `agent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photographer`
--
ALTER TABLE `photographer`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(45) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `photographer`
--
ALTER TABLE `photographer`
  MODIFY `id` int(45) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `agent`
--
ALTER TABLE `agent`
  ADD CONSTRAINT `agent_ibfk_1` FOREIGN KEY (`id`) REFERENCES `customer` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
