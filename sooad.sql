-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 26, 2014 at 06:49 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sooad`
--

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE IF NOT EXISTS `bank` (
  `bank_name` text NOT NULL,
  `account_id` varchar(15) NOT NULL,
  `account_pswd` text NOT NULL,
  `account_balance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`bank_name`, `account_id`, `account_pswd`, `account_balance`) VALUES
('sbi', '100', '123456', 15),
('hdfc', '101', '8080', 30),
('icici', '102', '4545', 130);

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE IF NOT EXISTS `movie` (
  `movie_id` int(5) NOT NULL AUTO_INCREMENT,
  `movie_name` varchar(50) NOT NULL,
  `producer` varchar(20) NOT NULL,
  `director` varchar(20) NOT NULL,
  `movie_price` int(11) NOT NULL,
  `movie_year` varchar(6) NOT NULL,
  `pic` text NOT NULL,
  PRIMARY KEY (`movie_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`movie_id`, `movie_name`, `producer`, `director`, `movie_price`, `movie_year`, `pic`) VALUES
(1, 'Happy New Year', 'SRK', 'Farah Khan', 10, '2007', 'hny.jpg'),
(2, 'Haider', 'Vishal Bharadwaj', 'UTV', 10, '2007', 'haider.jpg'),
(3, 'Don', 'Excel', 'Farhan Akhtar', 10, '2007', 'don.jpg'),
(4, 'Singham', 'UTV', 'Rohit Shetty', 10, '2007', 'singham.jpg'),
(5, 'don 2', 'Excel Entertainment', 'Farhan Akhtar', 5, '2010', ''),
(6, 'don 3', 'Excel ', 'Farhan Akhtar', 10, '2013', '');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `issue_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `return_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `issue_date`, `return_date`) VALUES
(1, 1, '2014-10-20 18:30:00', '2014-10-27 18:30:00'),
(2, 1, '2014-10-20 18:30:00', '2014-10-27 18:30:00'),
(3, 1, '2014-10-20 18:30:00', '2014-10-27 18:30:00'),
(4, 1, '2014-10-20 18:30:00', '2014-10-27 18:30:00'),
(5, 1, '2014-10-21 18:30:00', '2014-10-28 18:30:00'),
(6, 1, '2014-10-21 18:30:00', '2014-10-28 18:30:00'),
(7, 1, '2014-10-21 18:30:00', '2014-10-28 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `surname` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `name`, `surname`, `username`, `password`) VALUES
(1, 'shrey', 'zatakia', 'shrey', '123456'),
(2, 'ajay', 'zatakia', 'ajay', '123456'),
(3, 'Nishita', 'Nishita', 'Nishita', '123456'),
(4, 'pratik', 'pratik', 'pratik', '123456'),
(5, '', '', '', ''),
(6, 'amit sir', 'amit sir', 'amit sir', '123456');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
