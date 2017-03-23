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
-- Database: `student`
--

-- --------------------------------------------------------

--
-- Table structure for table `std_dept`
--

CREATE TABLE `std_dept` (
  `dept_id` int(11) NOT NULL,
  `dept_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `std_dept`
--

INSERT INTO `std_dept` (`dept_id`, `dept_name`) VALUES
(1, 'CSE'),
(2, 'EEE');

-- --------------------------------------------------------

--
-- Table structure for table `std_info`
--

CREATE TABLE `std_info` (
  `id` int(11) NOT NULL,
  `name` varchar(48) NOT NULL,
  `roll` int(8) NOT NULL,
  `email` varchar(50) NOT NULL,
  `cell` varchar(30) NOT NULL,
  `dept_id` int(12) NOT NULL,
  `session` varchar(8) NOT NULL,
  `picture` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `std_info`
--

INSERT INTO `std_info` (`id`, `name`, `roll`, `email`, `cell`, `dept_id`, `session`, `picture`) VALUES
(2, 'salpin khan', 302567, 's@gmail.com', '01710835653', 2, '2007-200', 'Stuent-1489816114-48838.jpg'),
(3, 'salpin murol', 302567, 's@gmail.com', '01937927627', 1, '2007-200', 'Stuent-1489814816-58657.jpg'),
(4, 'nc', 302567, 'nc@gmail.com', '01937927627', 2, '2007-200', 'Stuent-1489816516-46331.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `std_dept`
--
ALTER TABLE `std_dept`
  ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `std_info`
--
ALTER TABLE `std_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dept_id` (`dept_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `std_dept`
--
ALTER TABLE `std_dept`
  MODIFY `dept_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `std_info`
--
ALTER TABLE `std_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `std_info`
--
ALTER TABLE `std_info`
  ADD CONSTRAINT `std_info_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `std_dept` (`dept_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
