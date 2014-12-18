-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2014 at 06:42 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `population`
--

-- --------------------------------------------------------

--
-- Table structure for table `people`
--

CREATE TABLE IF NOT EXISTS `people` (
  `people_id` int(255) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `parent_id` varchar(45) NOT NULL,
  `date_of_birth` varchar(45) NOT NULL,
  `mobile_no` varchar(45) DEFAULT NULL,
  `blood_group` varchar(45) DEFAULT NULL,
  `country` varchar(145) NOT NULL,
  `district` varchar(45) DEFAULT NULL,
  `thana` varchar(45) DEFAULT NULL,
  `village` varchar(45) DEFAULT NULL,
  `edu_status` varchar(45) DEFAULT NULL,
  `marital_status` varchar(45) DEFAULT NULL,
  `occupation` varchar(45) DEFAULT NULL,
  `sex` varchar(45) DEFAULT NULL,
  `religion` varchar(45) DEFAULT NULL,
  `email` varchar(145) DEFAULT NULL,
  `image_path` varchar(255) NOT NULL,
  PRIMARY KEY (`people_id`),
  UNIQUE KEY `people_id_UNIQUE` (`people_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `people`
--

INSERT INTO `people` (`people_id`, `first_name`, `last_name`, `parent_id`, `date_of_birth`, `mobile_no`, `blood_group`, `country`, `district`, `thana`, `village`, `edu_status`, `marital_status`, `occupation`, `sex`, `religion`, `email`, `image_path`) VALUES
(18, 'imran', 'al fahad', '7895', '15-6-1990', '012365', 'A+', 'Bangladesh', 'Dhaka', 'jessore', 'kotowali', 'msc', 'Single', 'Student', 'Male', 'Islam', 'imran@gmail.com', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(255) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(45) NOT NULL,
  `password` varchar(145) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_id_UNIQUE` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `password`) VALUES
(1, 'admin', '123');

-- --------------------------------------------------------

--
-- Table structure for table `user_record`
--

CREATE TABLE IF NOT EXISTS `user_record` (
  `user_id` int(255) NOT NULL,
  `people_id` int(255) NOT NULL,
  `operation` varchar(45) DEFAULT NULL,
  KEY `user_id_idx` (`user_id`),
  KEY `people_id_idx` (`people_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_record`
--

INSERT INTO `user_record` (`user_id`, `people_id`, `operation`) VALUES
(1, 18, 'Insert Data');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user_record`
--
ALTER TABLE `user_record`
  ADD CONSTRAINT `people_id` FOREIGN KEY (`people_id`) REFERENCES `people` (`people_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
