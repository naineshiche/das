-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2021 at 10:44 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `projectmms`
--

-- --------------------------------------------------------
--
-- Table structure for table `booking`
--

CREATE TABLE IF NOT EXISTS `booking` (
  `booking_id` int(22) NOT NULL AUTO_INCREMENT,
  `dname` varchar(22) NOT NULL,
  `userid` int(22) NOT NULL,
  `dcontact` varchar(22) NOT NULL,
  `expertise` varchar(22) NOT NULL,
  `fee` varchar(22) NOT NULL,
  `pname` varchar(22) NOT NULL,
  `pcontact` int(22) NOT NULL,
  `email` varchar(111) NOT NULL,
  `address` varchar(22) NOT NULL,
  `dates` date NOT NULL,
  `time` varchar(22) NOT NULL,
  PRIMARY KEY (`booking_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`booking_id`, `dname`, `userid`, `dcontact`, `expertise`, `fee`, `pname`, `pcontact`, `email`, `address`, `dates`, `time`) VALUES
(13, 'Dr. Savani Kulkarni ', 1001, '7383938382', 'Cardiologist', '8000', 'Akash Jalkote', '', 'akashl123@gmail.com', 'pune', '2021-09-27', '11.00am'),
(14, 'Dr. Sameer Rane', 1002, '8493847572', 'Medicine', '1000', 'Reyansh umare', 'contact', 'reyansh123@gmail.com', 'pune', '2021-09-28', '03.00pm')

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(22) NOT NULL AUTO_INCREMENT,
  `cat` varchar(22) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `cat`) VALUES
(1, 'Medicine'),
(2, 'Heart'),
(3, 'Bone'),
(4, 'Kedney'),
(5, 'Cardiologist'),
(6, 'Plastic Surgeon'),
(7, 'General Physician'),
(8, 'Neurologist');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `contact_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(10) NOT NULL,
  `lastname` varchar(10) NOT NULL,
  `email` varchar(15) NOT NULL,
  PRIMARY KEY (`contact_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contact_id`, `firstname`, `lastname`, `email`) VALUES
(1, 'Nainesh', 'Iche', 'nainesh.iche24@gmail.com')

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE IF NOT EXISTS `doctor` (
  `doc_id` int(22) NOT NULL AUTO_INCREMENT,
  `doctor_id` varchar(22) NOT NULL,
  `name` varchar(22) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact` varchar(14) NOT NULL,
  `email` varchar(22) NOT NULL,
  `expertise` varchar(22) NOT NULL,
  `id` int(11) NOT NULL,
  `fee` varchar(111) NOT NULL,
  `userid` varchar(22) NOT NULL,
  `password` varchar(22) NOT NULL,
  PRIMARY KEY (`doc_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`doc_id`, `doctor_id`, `name`, `address`, `contact`, `email`, `expertise`, `id`, `fee`, `userid`, `password`) VALUES
(1, '123', 'Dr. Dhanashree Thorat', 'pune', '8976947392', 'dhanashree123@gmail.com', 'Heart', 2, '1000', '1001', '123'),
(2, '234', 'Dr. R. Anisha', 'pune', '9483956382', 'anisha43@gmail.com', 'Medicine', 1, '700', '1002', '123'),
(3, '345', 'Dr. Mayur Uchale', 'pune', '9380355748', 'mayur23@gmail.com', 'Medicine', 1, '600', '1003', '123'),
(4, '456', 'Dr. Rajanish Patil', 'pune', '9048493758', 'rajnish43@gmail.com', 'Kedney', 4, '2000', '1004', '123'),
(5, '567', 'Dr. Valid Pathan', 'pune', '0123456789', 'valid34@gmail.com', 'Cardiologist', 5, '1500', '1005', '123'),
(6, '678', 'Dr. Savani Kulkarni', 'pune', '7383938382', 'savnik34@gmail.com', 'Medicine', 1, '800', '650', '123'),
(7, '789', 'Dr. Samir Rane', 'pune', '8493847572', 'samir76@gmail.com', 'Neurologist', 8, '2000', '1007', '123'),
(8, '890', 'Dr. Ajit Gode', 'pune', '7945217418', 'ajit@gmail.com', 'Bone', 3, '700', '4000', '123'),
(9, '124', 'Dr. Vishal Kumavat', 'pune', '9029418019', 'vishal@gmail.com', 'Plastic Surgeon', 6, '8000', '1009', '123'),
(11, '245', 'Dr. Vishram Unde', 'pune', '9024847592', 'vishram@gmail.com', 'Neurologist', 0, '3500', '1012', '123'),
(12, '356', 'Dr. Kunala Yewale', 'pune', '8020489589', 'kunal@gmail.com', 'Heart', 0, '2000', '1011', '123'),
(14, '467', 'Dr. Himanshu Patil', 'pune', '8033853225', 'himanshu4@gmail.com', 'Bone', 0, '4000', '1016', '123'),
(16, '578', 'Dr. Shubham Hathekar', 'pune', '9054443234', 'shubham424@gmail.com', 'General Physician', 0, '1000', '1013', '123'),
(17, '689', 'Dr. Rohini Khairnar', 'pune', '80537654656', 'rohini421@gmail.com', 'Neurologist', 0, '3000', '1015', '123');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE IF NOT EXISTS `patient` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(22) NOT NULL,
  `age` varchar(22) NOT NULL,
  `contact` varchar(22) NOT NULL,
  `address` varchar(22) NOT NULL,
  `bgroup` varchar(22) NOT NULL,
  `email` varchar(111) NOT NULL,
  `password` varchar(22) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `name`, `age`, `contact`, `address`, `bgroup`, `email`, `password`) VALUES
(1, 'Dhirajkumar Sirsat', '21', '0123456789', 'Pune', 'O+', 'dhirajkumar@gmail.com', '1234'),
(2, 'Pranav Karpe', '22', '0123456789', 'Pune', 'AB+', 'pranav@gmail.com', '123'),
(3, 'Vinit Upre', '22', '0123456789', 'Pune', 'A-', 'vinit@gmail.com', '123'),
(5, 'Sanket Modhe', '21', '0123456789', 'Pune', 'O+', 'sanket@gmail.com', '123'),
(6, 'Bhushan Agwane', '22', '0123456789', 'Pune', 'AB+', 'bhushan@gmail.com', '123'),
(7, 'Akash Jalkote', '21', '0123456789', 'Pune', 'O+', 'akash@gmail.com', '123'),
(5, 'Reyansh Umare', '21', '0123456789', 'Pune', 'O-', 'reyansh@gmail.com', '123');


-- --------------------------------------------------------


--
-- Table structure for table `Admin`
--

CREATE TABLE IF NOT EXISTS `Admin` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Admin`
--

INSERT INTO `Admin` (`username`, `password`, `type`) VALUES
('admin', 'admin', 'admin'),
('naineshiche', '12345', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `type`) VALUES
('naineshiche', '12345', 'admin');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
