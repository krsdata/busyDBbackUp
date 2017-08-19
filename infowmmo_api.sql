-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 19, 2017 at 10:05 PM
-- Server version: 5.6.35
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `infowmmo_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `darshan`
--

CREATE TABLE `darshan` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `darshan` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `no_of_people` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `id_proof` varchar(255) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `darshan`
--

INSERT INTO `darshan` (`id`, `email`, `darshan`, `type`, `time`, `no_of_people`, `amount`, `id_proof`, `created_date`) VALUES
(1, 'kroy.iips@gmail.com', 'darshan', 'darshan at 6:45 AM', '6:45AM', '2', '200', 'apoper54', '2016-05-30 11:36:00'),
(2, 'kroy.iips@gmail.com', 'darshan', 'darshan at 6:45 AM', '6:45AM', '2', '200', 'apoper54', '2016-05-30 11:36:19');

-- --------------------------------------------------------

--
-- Table structure for table `donation`
--

CREATE TABLE `donation` (
  `id` int(11) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `donation_category` varchar(255) NOT NULL,
  `donation_type` varchar(255) NOT NULL,
  `PAN` varchar(255) NOT NULL,
  `amount` float(10,2) NOT NULL,
  `remarks` text NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donation`
--

INSERT INTO `donation` (`id`, `user_email`, `donation_category`, `donation_type`, `PAN`, `amount`, `remarks`, `created_date`) VALUES
(1, 'kroy.iips@gmail.com', 'charity', 'direct', 'PAOPR4512H', 10000.00, 'thank you', '2016-05-30 14:24:42');

-- --------------------------------------------------------

--
-- Table structure for table `free_prasad`
--

CREATE TABLE `free_prasad` (
  `id` int(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `remark` text NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `free_prasad`
--

INSERT INTO `free_prasad` (`id`, `date`, `amount`, `remark`, `created_date`) VALUES
(1, '30-5-2016', '100', 'hii', '2016-05-30 14:15:00');

-- --------------------------------------------------------

--
-- Table structure for table `saileela_membership`
--

CREATE TABLE `saileela_membership` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `membership_amount` varchar(255) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `saileela_membership`
--

INSERT INTO `saileela_membership` (`id`, `name`, `phone`, `dob`, `gender`, `membership_amount`, `created_date`) VALUES
(1, 'kundan', '4567165', '25-12-1988', 'male', '500', '2016-05-30 14:18:23');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` text NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `phone`, `address`, `created_date`) VALUES
(10, 'kundan', 'kroy.iips2@gmail.com', '12345', '4854555', 'indore', '2016-05-30 10:46:12'),
(11, 'kundan', 'kroy.iips3@gmail.com', '12345', '4854555', 'indore', '2016-05-30 10:47:59'),
(12, 'kundan', 'kroy.iips@gmail.com', '12345', '8103194076', 'indore', '2016-05-30 18:53:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `darshan`
--
ALTER TABLE `darshan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donation`
--
ALTER TABLE `donation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `free_prasad`
--
ALTER TABLE `free_prasad`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `saileela_membership`
--
ALTER TABLE `saileela_membership`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `darshan`
--
ALTER TABLE `darshan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `donation`
--
ALTER TABLE `donation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `free_prasad`
--
ALTER TABLE `free_prasad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `saileela_membership`
--
ALTER TABLE `saileela_membership`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
