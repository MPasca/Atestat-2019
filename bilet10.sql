-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 06 Mar 2019 la 12:41
-- Versiune server: 10.1.9-MariaDB
-- PHP Version: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bilet10`
--

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `intrebari`
--

CREATE TABLE `intrebari` (
  `idi` int(11) NOT NULL,
  `Enunt` text NOT NULL,
  `Domeniu` text NOT NULL,
  `GradDeDificultate` int(11) NOT NULL,
  `ids` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `seturi`
--

CREATE TABLE `seturi` (
  `ids` int(11) NOT NULL,
  `Nr` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `intrebari`
--
ALTER TABLE `intrebari`
  ADD PRIMARY KEY (`idi`);

--
-- Indexes for table `seturi`
--
ALTER TABLE `seturi`
  ADD PRIMARY KEY (`ids`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `intrebari`
--
ALTER TABLE `intrebari`
  MODIFY `idi` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `seturi`
--
ALTER TABLE `seturi`
  MODIFY `ids` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
