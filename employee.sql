-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2017 at 05:13 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employee`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee_desn`
--

CREATE TABLE `employee_desn` (
  `desn_id` int(11) NOT NULL,
  `desn_name` varchar(48) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_desn`
--

INSERT INTO `employee_desn` (`desn_id`, `desn_name`) VALUES
(1, 'Web Designer'),
(2, 'Web Developer'),
(3, 'App Developer'),
(4, 'Project Manager');

-- --------------------------------------------------------

--
-- Table structure for table `employee_dist`
--

CREATE TABLE `employee_dist` (
  `dist_id` int(11) NOT NULL,
  `dist_name` varchar(48) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_dist`
--

INSERT INTO `employee_dist` (`dist_id`, `dist_name`) VALUES
(1, 'Kishoreganj'),
(2, 'Dhaka');

-- --------------------------------------------------------

--
-- Table structure for table `employee_edu`
--

CREATE TABLE `employee_edu` (
  `edu_id` int(11) NOT NULL,
  `edu_name` varchar(48) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_edu`
--

INSERT INTO `employee_edu` (`edu_id`, `edu_name`) VALUES
(1, 'Diploma'),
(2, 'BSC');

-- --------------------------------------------------------

--
-- Table structure for table `employee_info`
--

CREATE TABLE `employee_info` (
  `id` int(11) NOT NULL,
  `name` varchar(48) NOT NULL,
  `phone` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `desn_id` int(15) NOT NULL,
  `dist_id` int(15) NOT NULL,
  `edu_id` int(15) NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_info`
--

INSERT INTO `employee_info` (`id`, `name`, `phone`, `email`, `desn_id`, `dist_id`, `edu_id`, `photo`) VALUES
(1, 'Shahriar Hosen', '01710835653', 'shahriarmurolcse@gmail.com', 2, 1, 1, 'Stuent-1490161674-62476.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee_desn`
--
ALTER TABLE `employee_desn`
  ADD PRIMARY KEY (`desn_id`);

--
-- Indexes for table `employee_dist`
--
ALTER TABLE `employee_dist`
  ADD PRIMARY KEY (`dist_id`);

--
-- Indexes for table `employee_edu`
--
ALTER TABLE `employee_edu`
  ADD PRIMARY KEY (`edu_id`);

--
-- Indexes for table `employee_info`
--
ALTER TABLE `employee_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `desn_id` (`desn_id`),
  ADD KEY `dist_id` (`dist_id`),
  ADD KEY `edu_id` (`edu_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee_desn`
--
ALTER TABLE `employee_desn`
  MODIFY `desn_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `employee_dist`
--
ALTER TABLE `employee_dist`
  MODIFY `dist_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `employee_edu`
--
ALTER TABLE `employee_edu`
  MODIFY `edu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `employee_info`
--
ALTER TABLE `employee_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee_info`
--
ALTER TABLE `employee_info`
  ADD CONSTRAINT `employee_info_ibfk_1` FOREIGN KEY (`desn_id`) REFERENCES `employee_desn` (`desn_id`),
  ADD CONSTRAINT `employee_info_ibfk_2` FOREIGN KEY (`dist_id`) REFERENCES `employee_dist` (`dist_id`),
  ADD CONSTRAINT `employee_info_ibfk_3` FOREIGN KEY (`edu_id`) REFERENCES `employee_edu` (`edu_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
