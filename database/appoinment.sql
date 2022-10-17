-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2018 at 10:44 AM
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
-- Table structure for table `bloodgroup`
--

CREATE TABLE IF NOT EXISTS `bloodgroup` (
  `bg_id` int(11) NOT NULL AUTO_INCREMENT,
  `bg_name` varchar(12) NOT NULL,
  PRIMARY KEY (`bg_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `bloodgroup`
--

INSERT INTO `bloodgroup` (`bg_id`, `bg_name`) VALUES
(1, 'O+'),
(2, 'O-'),
(3, 'AB+'),
(4, 'AB-'),
(5, 'A+'),
(6, 'A-'),
(7, 'B+'),
(8, 'B-');

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
  `pcontact` varchar(22) NOT NULL,
  `email` varchar(111) NOT NULL,
  `address` varchar(22) NOT NULL,
  `dates` date NOT NULL,
  `tyme` varchar(22) NOT NULL,
  `payment` varchar(22) NOT NULL,
  PRIMARY KEY (`booking_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`booking_id`, `dname`, `userid`, `dcontact`, `expertise`, `fee`, `pname`, `pcontact`, `email`, `address`, `dates`, `tyme`, `payment`) VALUES
(13, 'Md. vinita Chaudhri', 1007, '0123456789', 'Cardiologist', '800', 'azad', '01521470368', 'azad.ece13@gmail.com', 'Dhaka', '2018-07-27', '11.00am', 'bKask'),
(14, 'Dr. Majedul Islam', 1008, '0123456789', 'Medicine', '800', 'patient', 'contact', 'mamun@gmail.com', 'Dinajpur', '2018-07-28', '03.00pm', 'bKask'),
(15, 'Md. Azharul Islam', 1009, '0123456789', 'Cardiologist', '800', 'mamun', '01521470368', 'mamun@gmail.com', 'Rangpur', '2018-07-26', '11.00am', 'Rocket'),
(16, 'Dr. Badol Miah', 1004, '0123456789', 'Kedney', '700', 'mamun', '01521470368', 'mamun@gmail.com', 'Dinajpur', '2018-07-20', '11.00am', 'bKask'),
(17, 'Dr. Azharul Islam', 1002, '0123456789', 'Medicine', '500', 'azad', '01521470368', 'azad.ece13@gmail.com', 'Rangpur', '2018-07-26', '03.00pm', 'bKask'),
(18, 'Dr. Badol Miah', 1004, '0123456789', 'Kedney', '700', 'dezazad', 'dezazad', 'devloperazad.hstu@gmai', 'Dinajpur', '2018-07-07', '11.00am', 'Rocket'),
(19, 'Dr. Rashid', 1003, '0123456789', 'Medicine', '600', '', '', 'developerazad.hstu@gmail.com', '', '2018-07-15', '11.00am', 'bKask');

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
  `comment` varchar(111) NOT NULL,
  PRIMARY KEY (`contact_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contact_id`, `firstname`, `lastname`, `email`, `comment`) VALUES
(1, 'Nainesh', 'Iche', 'nainesh.iche24@gmail.com', 'My comment is getting successful.'),
(2, 'Rushikesh', 'Shende', 'rushishende54@gmail.com', 'good job');

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
  `pic` varchar(111) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  PRIMARY KEY (`doc_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`doc_id`, `doctor_id`, `name`, `address`, `contact`, `email`, `expertise`, `id`, `fee`, `userid`, `password`, `pic`) VALUES
(1, '2', 'Dr. Devi Prasad Shetty', 'New Delhi', '0123456789', 'deviprasad123@gmail.com', 'Heart', 2, '1000', '1001', '123', 'doctor1.jpg'),
(2, '1', 'Dr. Sanjay Sachdeva', 'New Delhi', '0123456789', 'sanjaydev43@gmail.com', 'Medicine', 1, '700', '1002', '123', 'doctor5.jpg'),
(3, '1', 'Dr. Surbhi Anand', 'New Delhi', '0123456789', 'surbhi@gmail.com', 'Medicine', 1, '600', '1003', '123', 'doctor1.jpg'),
(4, '4', 'Dr. Ashish Sabharwal', 'New Delhi', '0123456789', 'ashish@gmail.com', 'Kedney', 4, '2000', '1004', '123', 'doctor5.jpg'),
(5, '5', 'Dr. Aditya Gupta', 'Gurgaon', '0123456789', 'aditya@gmail.com', 'Cardiologist', 5, '1500', '1005', '123', 'itsme.jpg'),
(6, '1', 'Dr. Majedul Islam', 'Dhaka', '0123456789', 'majedul@gmail.com', 'Medicine', 1, '800', '650', '123', 'itzme.jpg'),
(7, '8', 'Dr. Sandeep Batra', 'New Delhi', '0123456789', 'sandeep@gmail.com', 'Neurologist', 8, '2000', '1007', '123', 'doctor5.jpg'),
(8, '3', 'Dr. Sajedul Islam', 'New Delhi', '0123456789', 'sajedul@gmail.com', 'Bone', 3, '700', '4000', '123', 'doctor1.jpg'),
(9, '6', 'Dr. Gagan Gautam', 'New Delhi', '0123456789', 'gagan@gmail.com', 'Plastic Surgeon', 6, '8000', '1009', '123', 'doctor5.jpg'),
(11, '11', 'Dr. Bipin S. Walia', 'New Delhi', '0123456789', 'bipin@gmail.com', 'Neurologist', 0, '3500', '1012', '123', 'doctor1.jpg'),
(12, '11', 'Dr. Suresh H. Advani', 'Mumbai', '0123456789', 'suresh@gmail.com', 'Heart', 0, '2000', '1011', '123', 'doctor5.jpg'),
(14, '', 'Dr. S. Rajasundaram', 'Chennai', '0123456789', 'srajasundaram@gmail.com', 'Bone', 0, '4000', '1016', '123', 'itsme.jpg'),
(16, '', 'Dr. Sanjiv Sharma', 'Bangalore', '0123456789', 'sanjiv@gmail.com', 'General Physician', 0, '1000', '1013', '123', ''),
(17, '', 'Md. Poonam Patil', 'Bangalore', '0123456789', 'poonam@gmail.com', 'Neurologist', 0, '3000', '1015', '123', 'header3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `donation`
--

CREATE TABLE IF NOT EXISTS `donation` (
  `donation_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `unit` varchar(2) NOT NULL,
  `dates` date NOT NULL,
  `email` varchar(222) NOT NULL,
  PRIMARY KEY (`donation_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `donation`
--

INSERT INTO `donation` (`donation_id`, `name`, `address`, `unit`, `dates`, `email`) VALUES
(1, 'Akash Jalkote', 'Solapur', '1', '2017-11-07', 'akashj@gmail.com'),
(2, 'Agit Gole', 'pune', '2', '2017-11-11', 'agitg@gmail.com'),
(3, 'Aniruddha Dhandar', 'Amravti', '2', '2017-01-21', 'anoruddhad@gmail.com'),
(4, 'Kunal Yeole', 'pune', '1', '2017-11-15', 'kunaly@gmail.com'),
(5, 'Sneha Chatake', 'pune', '1', '2017-12-05', 'snehac@gmail.com'),
(6, 'Atharva Kashikar', 'Akola', '2', '2017-12-29', 'atharvak@gmail.com'),
(7, 'Reyash Umare', 'Jalgaon', '2', '2018-05-12', 'reyanshu@gmail.com'),
(8, 'Atesh Gaikwad', 'Pune', '1', '2018-05-10', 'ateshg@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(22) NOT NULL,
  `feedback` varchar(22) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `email`, `feedback`) VALUES
(1, 'azad.tee@gmail.com', 'easy way'),
(2, 'azad.ece13@gmail.com', 'nice getting you');

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
(1, 'Md. Azharul Islam', '21', '01746314882', 'Dinajpur', 'O+', 'azad.ece13@gmail.com', '1234'),
(2, 'Al-Mamun', '22', '01746314882', 'Saidpur,Rangpur', 'AB+', 'mamun@gmail.com', '123'),
(3, 'test name', '22', '01765674567', 'Dinajpur', 'A-', 'test@gmail.com', '123'),
(5, 'developerazad', '21', '01764761919', 'Dhaka', 'O+', 'developerazad.hstu@gmail.com', 'developerazad'),
(6, 'developerazad', '22', '01521470368', 'Dhaka', 'AB+', 'developerazad.hstu@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE IF NOT EXISTS `registration` (
  `donar_id` int(100) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `age` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `type` varchar(22) NOT NULL,
  `city` varchar(221) NOT NULL,
  `address` varchar(100) NOT NULL,
  `bgroup` varchar(100) NOT NULL,
  `dates` date NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` int(100) NOT NULL,
  `pic` varchar(1000) NOT NULL,
  PRIMARY KEY (`donar_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=123 ;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`donar_id`, `username`, `gender`, `age`, `contact`, `type`, `city`, `address`, `bgroup`, `dates`, `email`, `password`, `pic`) VALUES
(86, 'Syeda Musharrat', 'female', '21', '01712292009', 'Blood Donor', 'Dinajpur', 'Ghashipara', 'O+', '0000-00-00', 'musharratnashrum.mn@gmail.com', 123, ''),
(87, 'Hussain Al Mortuza', 'male', '21', '01706742647', 'Blood Donor', 'Rangpur', 'Dhap', 'B+', '0000-00-00', 'mortuza1202089@gmail.com', 123, ''),
(88, 'Rumana Akter Ela', 'female', '21', '01734301217', 'Blood Donor', 'Dinajpur', 'Ramnagar', 'O+', '0000-00-00', 'elahstu@gmail.com', 123, ''),
(89, 'Miftahul Jannat', 'female', '22', '01734472278', 'Blood Seeker', 'Panchagarh', 'Panchagarh', 'O+', '0000-00-00', 'mj.nure@gmail.com', 123, ''),
(90, 'Farjana Lina', 'female', '21', '01773438430', 'Blood Seeker', 'Dinajpur', 'Basherhat', 'O+', '0000-00-00', 'lina73farjana@gmail.com', 123, ''),
(91, 'Dristy Das', 'female', '21', '01795660520', 'Blood Donor', 'Dinajpur', 'Kalitola', 'B+', '0000-00-00', 'dristydas.hstu@gmail.com', 123, ''),
(92, 'Hamidul Islam', 'male', '21', '01751318963', 'Blood Seeker', 'Kurigram', 'Razarhat', 'O+', '0000-00-00', 'imdhamidul13@gmail.com', 123, ''),
(93, 'Sirazum Monira', 'female', '22', '01757950876', 'Blood Donor', 'Dinajpur', 'Doshmail', 'O+', '0000-00-00', 'sirazum79@gmail.com', 123, ''),
(94, 'Atiya Sanjida Etu', 'female', '20', '01836022493', 'Blood Seeker', 'Dinajpur', 'Nimtola', 'B+', '0000-00-00', 'atiyasanjida42@gmail.com', 123, ''),
(95, 'Sazzad Hossain', 'male', '21', '017738783899', 'Blood Donor', 'Dinajpur', 'Birol', 'O+', '0000-00-00', 'sazzad1002@gmail.com', 123, ''),
(96, 'S.M. Janardan Roy', 'male', '21', '01738082848', 'Blood Donor', 'Thakurgaon', 'Setabgonj', 'A+', '0000-00-00', 'janardanroyhstu2013@gmail.com', 123, ''),
(97, 'Shafiqul Islam ', 'male', '21', '01722710298', 'Blood Donor', 'Panchagarh', 'Debigonj', 'O+', '0000-00-00', 'sujon.hstu.tee013@gmail.com', 123, ''),
(98, 'Uswatun Hasana ', 'female', '22', '01747125554', 'Blood Donor', 'Dinajpur', 'Paharpur', 'A+', '0000-00-00', 'uswatun.h5554@gmail.com', 123, ''),
(99, 'Keshob Ray', 'male', '21', '01761023408', 'Blood Donor', 'Rangpur', 'Keranir hat', 'B+', '0000-00-00', 'keshobrayhstu91@gmail.com', 123, ''),
(100, 'Md. Elias Hossain', 'male', '21', '01751119073', 'Blood Donor', 'Dinajpur', 'Kosba,Pulhat', 'B+', '0000-00-00', 'md.eliashossain13@gmail.com', 123, ''),
(101, 'Md. Azharul Islam', 'male', '21', '01764761919', 'Blood Donor', 'Nilphamari', 'saidpur', 'O+', '0000-00-00', 'azad.ece13@gmail.com', 123, ''),
(102, 'Maruf Hasan Piko', 'male', '21', '01737366366', 'Blood Donor', 'Rangpur', 'Dhap Kakolilane', 'O+', '0000-00-00', 'pikohasan73@gmail.com', 123, ''),
(103, 'Fatema Farin', 'female', '21', '01714442319', 'Blood Seeker', 'Jessore', 'West Barandipara', 'O+', '0000-00-00', 'fatema.farin13@gmail.com', 123, ''),
(104, 'Fahim Ahmed ', 'male', '21', '01765676686', 'Blood Seeker', 'Kushtia', 'Bheramara', 'O-', '0000-00-00', 'fahimahmed100@gmail.com', 123, ''),
(105, 'Mokarram Hossain', 'male', '22', '01723155254', 'Blood Donor', 'Nilphamari', 'Saidpur', 'A+', '0000-00-00', 'connect.with.me254@gmail.com', 123, ''),
(106, 'Arabi Mohammad ', 'male', '21', '01742827093', 'Blood Donor', 'Kurigram', 'Kurigram', 'B+', '0000-00-00', 'didar247@gmail.com', 123, ''),
(107, 'Ajmary Jahan Riny', 'female', '21', '01772974973', 'Blood Donor', 'Dinajpur', 'Uttor Faridpur', 'O+', '0000-00-00', 'ajmaryjahan@gmail.com', 123, ''),
(108, 'Resmi Rashid', 'female', '21', '01762946949', 'Blood Donor', 'Lalmonirhat', 'Mission more', 'B+', '0000-00-00', 'resmi.tee13@gmail.com', 123, ''),
(109, 'Sazia Haider', 'female', '21', '01705808656', 'Blood Donor', 'Dinajpur', 'Newtown 3', 'B+', '0000-00-00', 'saziahaidersizu@gmail.com', 123, ''),
(110, 'Shohel Rana', 'male', '21', '01761273269', 'Blood Donor', 'Thakurgaon', 'Pirgonj', 'A+', '0000-00-00', 'shohelhstu117@gmail.com', 123, ''),
(111, 'Al-Mamun', 'male', '22', '01746314882', 'Blood Donor', 'Nilphamari', 'Saidpur', 'AB+', '0000-00-00', 'mamunhstu13@gmail.com', 123, ''),
(112, 'Babul Hossain', 'male', '21', '01738421785', 'Blood Donor', 'Chapainawabganj', 'Shibgonj', 'B+', '0000-00-00', 'babul.hstu@gmail.com', 123, ''),
(113, 'Aysha Siddika Shova', 'female', '21', '01793965152', 'Blood Seeker', 'Dinajpur', 'Munshipara', 'B+', '0000-00-00', 'siddika.shova5152@gmail.com', 123, ''),
(114, 'Kanak Borman', 'male', '21', '01758964988', 'Blood Donor', 'Bogra', 'Adamdighi', 'A+', '0000-00-00', 'kanakborman@gmail.com', 123, ''),
(115, 'Mukesh Chaudhary', 'male', '21', '01794953611', 'Blood Donor', 'Dinajpur', 'HSTU', 'B+', '0000-00-00', 'mukesh101mak@gmail.com', 123, ''),
(116, 'username', 'female', '21', '3', 'Blood Seeker', 'Chapainawabganj', 'hstu', 'O-', '2017-11-29', 'azad.ece13@gmail.com', 123, ''),
(117, 'developerazad', 'male', '21', '01521470368', 'Blood Donor', 'Dinajpur', 'Dhaka', 'O-', '0000-00-00', 'developerazad.hstu@gmail.com', 111, ''),
(121, 'admin', '', '', '01764761919', '', 'Dinajpur', '', 'O+', '0000-00-00', 'admin@gmail.com', 123, ''),
(122, 'admin', '', '', '', '', '', '', '', '0000-00-00', '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `requestes`
--

CREATE TABLE IF NOT EXISTS `requestes` (
  `reg_id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `age` int(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `bgroup` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `reqdate` date NOT NULL,
  `detail` varchar(100) NOT NULL,
  PRIMARY KEY (`reg_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `requestes`
--

INSERT INTO `requestes` (`reg_id`, `name`, `gender`, `age`, `mobile`, `bgroup`, `email`, `reqdate`, `detail`) VALUES
(3, 'admin', 'male', 33, '01764761919', '', 'g@gmail.com', '2022-01-19', 'save life'),
(4, 'admin', 'male', 33, '01764761919', '', 'g@gmail.com', '2022-01-19', 'save life'),
(5, 'sanaaa', 'female', 21, '017777777', 'A-', 'g@gmail.com', '2017-12-01', 'save life'),
(6, 'sanaaa', 'female', 21, '017777777', 'A-', 'g@gmail.com', '2017-12-01', 'save life'),
(7, 'sanaaa', 'female', 21, '017777777', 'A-', 'g@gmail.com', '2017-12-01', 'save life'),
(8, 'sanaaa', 'female', 21, '017777777', 'A-', 'g@gmail.com', '2017-12-01', 'save life'),
(9, 'mamun', 'male', 22, '01777777', 'AB+', 'mamun@gmail.com', '0000-00-00', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`, `type`) VALUES
('admin', 'admin', 'admin'),
('adnim', '13020944', 'admin');

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
('adnim', '13020944', 'admin');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
