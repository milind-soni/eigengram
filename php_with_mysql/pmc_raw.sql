-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 27, 2024 at 04:10 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pmc_raw`
--

-- --------------------------------------------------------

--
-- Table structure for table `pmc_dump_raw`
--

CREATE TABLE `pmc_dump_raw` (
  `id` int(11) NOT NULL,
  `pmc_id` int(11) NOT NULL,
  `literature_text_pmc` longtext CHARACTER SET utf8 NOT NULL,
  `updated_pmc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pmc_list`
--

CREATE TABLE `pmc_list` (
  `id` int(11) NOT NULL,
  `pmc_id` text NOT NULL,
  `null_status` int(11) NOT NULL,
  `updated` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pmc_list`
--

INSERT INTO `pmc_list` (`id`, `pmc_id`, `null_status`, `updated`) VALUES
(1, '8304619', 0, 1),
(2, '8304618', 0, 1),
(3, '8304617', 0, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pmc_dump_raw`
--
ALTER TABLE `pmc_dump_raw`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pmc_list`
--
ALTER TABLE `pmc_list`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pmc_dump_raw`
--
ALTER TABLE `pmc_dump_raw`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pmc_list`
--
ALTER TABLE `pmc_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
