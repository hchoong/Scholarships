-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 17, 2012 at 04:48 PM
-- Server version: 5.5.24-log
-- PHP Version: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `scholarships_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE IF NOT EXISTS `applications` (
  `applications_id` int(10) NOT NULL AUTO_INCREMENT,
  `scholarships_id` int(10) NOT NULL,
  `students_id` int(10) NOT NULL,
  `statement` text,
  `recommendation` text,
  `resume` text,
  `date_applied` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`applications_id`),
  UNIQUE KEY `scholarships_id_2` (`scholarships_id`,`students_id`),
  KEY `scholarships_id` (`scholarships_id`),
  KEY `students_id` (`students_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `applications`
--

INSERT INTO `applications` (`applications_id`, `scholarships_id`, `students_id`, `statement`, `recommendation`, `resume`, `date_applied`, `status`) VALUES
(6, 1, 14, NULL, NULL, NULL, '2012-12-17 15:56:52', 'Pending Review'),
(7, 2, 14, NULL, NULL, NULL, '2012-12-17 16:00:04', 'Pending Review'),
(9, 1, 15, NULL, NULL, NULL, '2012-12-17 16:42:40', 'Pending Review'),
(10, 7, 16, NULL, NULL, NULL, '2012-12-17 16:47:12', 'Pending Review');

-- --------------------------------------------------------

--
-- Table structure for table `criteria`
--

CREATE TABLE IF NOT EXISTS `criteria` (
  `criteria_id` int(10) NOT NULL AUTO_INCREMENT,
  `scholarships_id` int(10) NOT NULL,
  `gpa` int(2) DEFAULT NULL,
  `major` varchar(255) DEFAULT NULL,
  `ethnicity` varchar(255) DEFAULT NULL,
  `statement` varchar(255) DEFAULT NULL,
  `recommendation` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`criteria_id`),
  KEY `scholarships_id` (`scholarships_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `scholarships`
--

CREATE TABLE IF NOT EXISTS `scholarships` (
  `scholarships_id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `descriptions` varchar(255) NOT NULL,
  `qualifications` varchar(255) NOT NULL,
  `amount` int(10) NOT NULL,
  `quantity` int(2) NOT NULL,
  `academic_year` varchar(255) NOT NULL,
  `deadline` date NOT NULL,
  PRIMARY KEY (`scholarships_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `scholarships`
--

INSERT INTO `scholarships` (`scholarships_id`, `name`, `descriptions`, `qualifications`, `amount`, `quantity`, `academic_year`, `deadline`) VALUES
(1, 'Aeroflex Laboratories, Inc. Scholarship', '', '', 2500, 1, '', '2012-12-16'),
(2, 'Arkwin Industries, Inc.', 'The College of Engineering and Applied Sciences is pleased to announce an engineering scholarship provided by Arkwin Industries, Inc. of Westbury, N.Y.  Four continuing Mechanical Engineering students and one incoming freshman will be awarded a $5,000 sch', 'A.	Be enrolled as a full time undergraduate student in the College of Engineering and applied Sciences for the full academic year (Both the fall and the spring semesters); B.	Have a minimum cumulative grade point average of 2.8; C.	Reside on Long Island; ', 5000, 5, '2013-2014', '2012-12-14'),
(7, 'adfa', 'fafa', 'adfadf', 1000, 1, '2012-2014', '2012-12-04'),
(9, 'adfa1', 'fafa', 'adfadf', 1000, 1, '2012-2014', '2012-12-04'),
(11, 'Citi', 'citi scholar', 'must be an engineering student', 1000, 2, '2012-2014', '2012-12-26');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE IF NOT EXISTS `students` (
  `user_id` int(10) NOT NULL,
  `student_id` int(10) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) NOT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `state` varchar(255) DEFAULT NULL,
  `zipcode` varchar(255) NOT NULL,
  `major` varchar(255) DEFAULT NULL,
  `gpa` varchar(255) NOT NULL,
  `minor` varchar(255) DEFAULT NULL,
  `sex` varchar(20) NOT NULL,
  `ethnicity` varchar(255) DEFAULT NULL,
  `graduation_year` year(4) DEFAULT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `middlename` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`student_id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `FK6FD1C598EA6F7837` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`user_id`, `student_id`, `address`, `address2`, `city`, `country`, `state`, `zipcode`, `major`, `gpa`, `minor`, `sex`, `ethnicity`, `graduation_year`, `firstname`, `lastname`, `middlename`) VALUES
(12, 14, 'circle rd', '', 'stony brook', 'United States', 'NY', '11790', NULL, '3.5', NULL, 'male', 'asian', NULL, 'hl', 'ceo', ''),
(27, 15, 'circle rd', '', 'stony brook', 'United States', 'NY', '11790', NULL, '3.5', NULL, 'male', 'asian', NULL, 'hl', 'ceo', ''),
(26, 16, 'circle rd', '', 'stony brook', 'United States', 'NY', '11790', NULL, '3.5', NULL, 'female', 'asian', NULL, 'hl', 'ceo', '');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE IF NOT EXISTS `test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`id`, `name`) VALUES
(1, 'user1'),
(2, 'test2');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `type` int(1) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_id` (`user_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `email`, `type`) VALUES
(1, 'admin', 'admin', 'admin@cse.com', 1),
(12, 'test1', '123', 'sc@g', 4),
(13, 's1', '123', 'abc@cse', 4),
(14, 'reviewer', '123', 'sc@g', 2),
(26, 'student', '123', 'sc@g', 4),
(27, 'test', '123', 'sc@g', 4),
(28, 'test2', '123', 'sc@g', 4),
(29, 'student1', '123', 'dream_sky7@hotmail.com', 4),
(30, 'student2', '123', 'sc@g', 4);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `applications`
--
ALTER TABLE `applications`
  ADD CONSTRAINT `applications_ibfk_1` FOREIGN KEY (`scholarships_id`) REFERENCES `scholarships` (`scholarships_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `applications_ibfk_2` FOREIGN KEY (`students_id`) REFERENCES `students` (`student_id`) ON DELETE CASCADE;

--
-- Constraints for table `criteria`
--
ALTER TABLE `criteria`
  ADD CONSTRAINT `criteria_ibfk_1` FOREIGN KEY (`scholarships_id`) REFERENCES `scholarships` (`scholarships_id`) ON DELETE CASCADE;

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `FK6FD1C598EA6F7837` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `students_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
