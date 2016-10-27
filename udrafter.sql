-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 27, 2016 at 11:27 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `udrafter`
--

-- --------------------------------------------------------

--
-- Table structure for table `blocklist`
--

CREATE TABLE IF NOT EXISTS `blocklist` (
  `blocklist_id` int(32) NOT NULL AUTO_INCREMENT,
  `user_id` int(32) NOT NULL,
  PRIMARY KEY (`blocklist_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE IF NOT EXISTS `complaint` (
  `complaint_id` int(32) NOT NULL AUTO_INCREMENT,
  `user_id` int(32) NOT NULL,
  `job_id` int(32) NOT NULL,
  `date` date NOT NULL,
  `postdate` date NOT NULL,
  PRIMARY KEY (`complaint_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `review_id` int(32) NOT NULL AUTO_INCREMENT,
  `comment` varchar(120) NOT NULL,
  `rating` int(10) NOT NULL,
  PRIMARY KEY (`review_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jobposters`
--

CREATE TABLE IF NOT EXISTS `jobposters` (
  `user_id` int(32) NOT NULL AUTO_INCREMENT,
  `user_type` text NOT NULL,
  `name` char(16) NOT NULL,
  `lastname` char(16) NOT NULL,
  `email` varchar(64) NOT NULL,
  `password` varchar(10) NOT NULL,
  `address` varchar(64) NOT NULL,
  `dob` date NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE IF NOT EXISTS `jobs` (
  `job_id` int(32) NOT NULL AUTO_INCREMENT,
  `position` varchar(32) NOT NULL,
  `payrate` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `duration` double NOT NULL,
  `description` varchar(200) NOT NULL,
  `location` varchar(64) NOT NULL,
  `postdate` date NOT NULL,
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `messenger`
--

CREATE TABLE IF NOT EXISTS `messenger` (
  `chat_id` int(32) NOT NULL AUTO_INCREMENT,
  `user_id` int(32) NOT NULL,
  `content` varchar(64) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`chat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `money`
--

CREATE TABLE IF NOT EXISTS `money` (
  `transaction_id` int(32) NOT NULL AUTO_INCREMENT,
  `type` varchar(16) NOT NULL,
  `job_id` int(32) NOT NULL,
  `amount` double NOT NULL,
  `date` date NOT NULL,
  `accountnumber` int(32) NOT NULL,
  `bankaddress` varchar(64) NOT NULL,
  `bankname` varchar(32) NOT NULL,
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE IF NOT EXISTS `profile` (
  `profile_id` int(32) NOT NULL AUTO_INCREMENT,
  `user_id` int(32) NOT NULL,
  `user_type` text NOT NULL,
  `profileimg` blob NOT NULL,
  `address` varchar(64) NOT NULL,
  `dob` date NOT NULL,
  `bio` varchar(500) NOT NULL,
  `university` varchar(64) NOT NULL,
  `work` varchar(64) NOT NULL,
  `workplace` varchar(64) NOT NULL,
  `position` varchar(32) NOT NULL,
  `visastatus` varchar(64) NOT NULL,
  `nationality` char(32) NOT NULL,
  `skills` varchar(160) NOT NULL,
  `completedjob_id` int(32) NOT NULL,
  `counter` int(32) NOT NULL,
  `review_id` int(32) NOT NULL,
  PRIMARY KEY (`profile_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE IF NOT EXISTS `register` (
  `user_id` int(32) NOT NULL AUTO_INCREMENT,
  `user_type` text NOT NULL,
  `name` char(32) NOT NULL,
  `lastname` char(32) NOT NULL,
  `email` varchar(64) NOT NULL,
  `mobile` int(10) NOT NULL,
  `password` varchar(16) NOT NULL,
  `dob` date NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email` (`email`,`mobile`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE IF NOT EXISTS `students` (
  `user_id` int(32) NOT NULL,
  `user_type` text NOT NULL,
  `name` text NOT NULL,
  `lastname` text NOT NULL,
  `email` varchar(64) NOT NULL,
  `password` varchar(32) NOT NULL,
  `dob` date NOT NULL,
  UNIQUE KEY `email` (`email`,`password`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
