-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 02, 2020 at 03:42 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `music_player`
--

-- --------------------------------------------------------

--
-- Table structure for table `artist`
--

CREATE TABLE `artist` (
  `id` int(11) NOT NULL,
  `image` varchar(15) NOT NULL,
  `name` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `artist`
--

INSERT INTO `artist` (`id`, `image`, `name`) VALUES
(1, 'shibayan0.jpg', 'Shibayan0'),
(2, 'shibayan1.jpg', 'Shibayan1'),
(3, 'shibayan2.jpg', 'Shibayan2'),
(4, 'shibayan3.jpg', 'Shibayan3'),
(5, 'shibayan4.jpg', 'Shibayan4'),
(6, 'shibayan5.jpg', 'Shibayan5'),
(7, 'shibayan6.jpg', 'Shibayan6'),
(8, 'shibayan7.jpg', 'Shibayan7'),
(9, 'shibayan8.jpg', 'Shibayan8'),
(10, 'shibayan9.jpg', 'Shibayan9');

-- --------------------------------------------------------

--
-- Table structure for table `music`
--

CREATE TABLE `music` (
  `id` int(11) NOT NULL,
  `thumbnail` varchar(20) NOT NULL,
  `name` varchar(15) NOT NULL,
  `artist` varchar(50) NOT NULL,
  `category` varchar(10) NOT NULL,
  `release_date` date NOT NULL,
  `duration` varchar(5) NOT NULL,
  `likes` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `music`
--

INSERT INTO `music` (`id`, `thumbnail`, `name`, `artist`, `category`, `release_date`, `duration`, `likes`) VALUES
(1, 'Fall In Dark0.jpg', 'Fall In Dark0', 'Shibayan0', 'catergory0', '2020-09-02', '3:00', 30),
(2, 'Fall In Dark0.jpg', 'Fall In Dark1', 'Shibayan1', 'catergory0', '2020-09-18', '3:00', 29),
(3, 'Fall In Dark0.jpg', 'Fall In Dark2', 'Shibayan2', 'catergory0', '2020-09-14', '3:00', 26),
(4, 'Fall In Dark0.jpg', 'Fall In Dark3', 'Shibayan3', 'catergory1', '2020-08-27', '3:00', 24),
(5, 'Fall In Dark0.jpg', 'Fall In Dark4', 'Shibayan4', 'catergory1', '2020-08-12', '3:00', 22),
(6, 'Fall In Dark0.jpg', 'Fall In Dark5', 'Shibayan5', 'catergory1', '2020-08-14', '3:00', 20),
(7, 'Fall In Dark0.jpg', 'Fall In Dark6', 'Shibayan6', 'catergory2', '2020-08-31', '3:00', 18),
(8, 'Fall In Dark0.jpg', 'Fall In Dark7', 'Shibayan7', 'catergory2', '2020-08-10', '3:00', 16),
(9, 'Fall In Dark0.jpg', 'Fall In Dark8', 'Shibayan8', 'catergory3', '2020-07-14', '3:00', 14),
(10, 'Fall In Dark0.jpg', 'Fall In Dark9', 'Shibayan9', 'catergory3', '2021-07-31', '3:00', 14);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `Username` varchar(10) NOT NULL,
  `email` varchar(20) NOT NULL,
  `contact` int(10) NOT NULL,
  `Pass` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `Username`, `email`, `contact`, `Pass`) VALUES
(4, 'Shubham', 'shubham.mohapess@gma', 12345, '12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artist`
--
ALTER TABLE `artist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `music`
--
ALTER TABLE `music`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artist`
--
ALTER TABLE `artist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `music`
--
ALTER TABLE `music`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
