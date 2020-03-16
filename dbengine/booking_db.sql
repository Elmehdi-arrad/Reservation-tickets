-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2018 at 07:08 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `booking_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `fullname` int(11) NOT NULL,
  `id` varchar(40) DEFAULT NULL,
  `contact` varchar(30) DEFAULT NULL,
  `email` varchar(140) DEFAULT NULL,
  `username` varchar(70) DEFAULT NULL,
  `password` varchar(130) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`fullname`, `id`, `contact`, `email`, `username`, `password`) VALUES
(1, '1', '03002344291', 'umar@gmail.com', 'umar', '1234'),
(2, '1', '03002344291', 'umar@gmail.com', 'umar', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `available_class`
--

CREATE TABLE `available_class` (
  `class_id` varchar(120) NOT NULL,
  `class_name` varchar(80) NOT NULL,
  `class_capacity` smallint(6) NOT NULL DEFAULT '0',
  `class_price` double NOT NULL DEFAULT '10',
  `description` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `available_class`
--

INSERT INTO `available_class` (`class_id`, `class_name`, `class_capacity`, `class_price`, `description`) VALUES
('1', 'High Class Travel', 30, 3000, 'A/c Room'),
('2', 'MIddle Class', 40, 2000, 'A/c Class'),
('3', 'lower Class', 50, 1500, 'Economy Class');

-- --------------------------------------------------------

--
-- Table structure for table `booking_details`
--

CREATE TABLE `booking_details` (
  `order_ref` varchar(255) NOT NULL,
  `fullname` varchar(120) NOT NULL,
  `contact` varchar(40) DEFAULT NULL,
  `gender` varchar(40) DEFAULT NULL,
  `class_reserved` varchar(255) NOT NULL,
  `destination` varchar(180) NOT NULL,
  `seats_reserved` varchar(50) NOT NULL DEFAULT '1',
  `date_reserved` varchar(50) DEFAULT NULL,
  `transaction_id` varchar(190) NOT NULL,
  `account` varchar(130) NOT NULL,
  `amount` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `booking_details`
--

INSERT INTO `booking_details` (`order_ref`, `fullname`, `contact`, `gender`, `class_reserved`, `destination`, `seats_reserved`, `date_reserved`, `transaction_id`, `account`, `amount`) VALUES
('AB93T45C25S', 'umar daraz', '3403902597', 'MALE', 'High Class Travel', 'MOMBASA to NAKURU', '2', 'December 04, 2018', '112255', 'KCD_BANK', '52.03');

-- --------------------------------------------------------

--
-- Table structure for table `tickets_generated`
--

CREATE TABLE `tickets_generated` (
  `ticket_ref` varchar(120) NOT NULL,
  `order_ref` varchar(120) NOT NULL,
  `travel_class` varchar(255) NOT NULL,
  `date_processed` datetime DEFAULT NULL,
  `destination` varchar(120) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `amount` double DEFAULT '0',
  `payment_via` varchar(180) DEFAULT NULL,
  `transaction_id` varchar(210) NOT NULL,
  `status` varchar(80) DEFAULT 'unused'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`amount`, `payment_via`, `transaction_id`, `status`) VALUES
(7500, 'MPESA', 'LORSO93045KWE', 'used');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`fullname`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `available_class`
--
ALTER TABLE `available_class`
  ADD PRIMARY KEY (`class_id`,`class_name`),
  ADD UNIQUE KEY `class_name` (`class_name`);

--
-- Indexes for table `booking_details`
--
ALTER TABLE `booking_details`
  ADD PRIMARY KEY (`order_ref`),
  ADD KEY `available_classbooking_details` (`class_reserved`),
  ADD KEY `transaction_id` (`transaction_id`);

--
-- Indexes for table `tickets_generated`
--
ALTER TABLE `tickets_generated`
  ADD PRIMARY KEY (`ticket_ref`),
  ADD KEY `available_classtickets_generated` (`travel_class`),
  ADD KEY `booking_detailstickets_generated` (`order_ref`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`transaction_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `fullname` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2018 at 07:08 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `booking_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `fullname` int(11) NOT NULL,
  `id` varchar(40) DEFAULT NULL,
  `contact` varchar(30) DEFAULT NULL,
  `email` varchar(140) DEFAULT NULL,
  `username` varchar(70) DEFAULT NULL,
  `password` varchar(130) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`fullname`, `id`, `contact`, `email`, `username`, `password`) VALUES
(1, '1', '03002344291', 'umar@gmail.com', 'umar', '1234'),
(2, '1', '03002344291', 'umar@gmail.com', 'umar', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `available_class`
--

CREATE TABLE `available_class` (
  `class_id` varchar(120) NOT NULL,
  `class_name` varchar(80) NOT NULL,
  `class_capacity` smallint(6) NOT NULL DEFAULT '0',
  `class_price` double NOT NULL DEFAULT '10',
  `description` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `available_class`
--

INSERT INTO `available_class` (`class_id`, `class_name`, `class_capacity`, `class_price`, `description`) VALUES
('1', 'High Class Travel', 30, 3000, 'A/c Room'),
('2', 'MIddle Class', 40, 2000, 'A/c Class'),
('3', 'lower Class', 50, 1500, 'Economy Class');

-- --------------------------------------------------------

--
-- Table structure for table `booking_details`
--

CREATE TABLE `booking_details` (
  `order_ref` varchar(255) NOT NULL,
  `fullname` varchar(120) NOT NULL,
  `contact` varchar(40) DEFAULT NULL,
  `gender` varchar(40) DEFAULT NULL,
  `class_reserved` varchar(255) NOT NULL,
  `destination` varchar(180) NOT NULL,
  `seats_reserved` varchar(50) NOT NULL DEFAULT '1',
  `date_reserved` varchar(50) DEFAULT NULL,
  `transaction_id` varchar(190) NOT NULL,
  `account` varchar(130) NOT NULL,
  `amount` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `booking_details`
--

INSERT INTO `booking_details` (`order_ref`, `fullname`, `contact`, `gender`, `class_reserved`, `destination`, `seats_reserved`, `date_reserved`, `transaction_id`, `account`, `amount`) VALUES
('AB93T45C25S', 'umar daraz', '3403902597', 'MALE', 'High Class Travel', 'MOMBASA to NAKURU', '2', 'December 04, 2018', '112255', 'KCD_BANK', '52.03');

-- --------------------------------------------------------

--
-- Table structure for table `tickets_generated`
--

CREATE TABLE `tickets_generated` (
  `ticket_ref` varchar(120) NOT NULL,
  `order_ref` varchar(120) NOT NULL,
  `travel_class` varchar(255) NOT NULL,
  `date_processed` datetime DEFAULT NULL,
  `destination` varchar(120) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `amount` double DEFAULT '0',
  `payment_via` varchar(180) DEFAULT NULL,
  `transaction_id` varchar(210) NOT NULL,
  `status` varchar(80) DEFAULT 'unused'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`amount`, `payment_via`, `transaction_id`, `status`) VALUES
(7500, 'MPESA', 'LORSO93045KWE', 'used');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`fullname`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `available_class`
--
ALTER TABLE `available_class`
  ADD PRIMARY KEY (`class_id`,`class_name`),
  ADD UNIQUE KEY `class_name` (`class_name`);

--
-- Indexes for table `booking_details`
--
ALTER TABLE `booking_details`
  ADD PRIMARY KEY (`order_ref`),
  ADD KEY `available_classbooking_details` (`class_reserved`),
  ADD KEY `transaction_id` (`transaction_id`);

--
-- Indexes for table `tickets_generated`
--
ALTER TABLE `tickets_generated`
  ADD PRIMARY KEY (`ticket_ref`),
  ADD KEY `available_classtickets_generated` (`travel_class`),
  ADD KEY `booking_detailstickets_generated` (`order_ref`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`transaction_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `fullname` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
