-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2020 at 05:52 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `store`
--

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `price`) VALUES
(1, 'Prada Bag', 600),
(2, 'Prada Bag', 800),
(3, 'Miu Miu Bag', 200),
(4, 'Balenciaga Bag', 1000),
(5, 'Miu Miu Bag', 400),
(6, 'Balenciaga Bag', 750),
(7, 'Prada Bag', 600),
(8, 'Prada Bag', 1020),
(9, 'Diesel Bag', 500),
(10, 'D&G Bag', 1500),
(11, 'Gucci Bag', 1500),
(12, 'Valentino Bag', 450);


-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `contact`, `city`, `address`) VALUES
(1, 'Irisa', 'inazari21@epoka.edu.al', '140a8b61862705773524ec3160d62608', '0691234567', 'Tirana', 'Tirana'),
(2, 'Diora', 'ddelvina21@epoka.edu.al', 'ed0acfe968db0609c522e47aa0f5ef6a', '0691234567', 'Durres', 'Durres'),
(3, 'Arlind', 'ahoxha21@epoka.edu.al', 'abcb781f825c50f74a7edf54f2af1c1e', '0691234567', 'Tirana', 'Tirana'),
(4, 'Glen', 'gteneqexhiu21@epoka.edu.al', '4bd072f7f362728d3783afef133d7cac', '0691234567', 'Tirana', 'Tirana'),
(5, 'Kevin', 'khyska21@epoka.edu.al', '0681c1d61884e833decaccffdb54c14d', '0691234567', 'Tirana', 'Tirana'),
(6, 'Ira', 'ihoxha21@epoka.edu.al', '48e41e8bd58ff75d518e03a1c0fc8d09', '0691234567', 'Tirana', 'Tirana');

-- --------------------------------------------------------

--
-- Table structure for table `user_item`
--

CREATE TABLE `user_item` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `status` enum('Added to cart','Confirmed','','') NOT NULL,
  `date_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_item`
--

INSERT INTO `user_item` (`id`, `user_id`, `item_id`, `status`, `date_time`) VALUES
(1, 1, 2, 'Confirmed', '2020-06-07 21:08:35'),
(2, 1, 10, 'Confirmed', '2020-06-07 21:08:38'),
(3, 3, 7, 'Confirmed', '2020-06-07 21:09:06'),
(4, 3, 12, 'Confirmed', '2020-06-07 21:09:10'),
(5, 5, 5, 'Confirmed', '2020-06-07 21:22:01'),
(6, 5, 1, 'Confirmed', '2020-06-07 21:22:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_item`
--
ALTER TABLE `user_item`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_item`
--
ALTER TABLE `user_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
