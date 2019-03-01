-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 01 Mar 2019 la 09:14
-- Versiune server: 10.1.9-MariaDB
-- PHP Version: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bilet05`
--

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `colaboratori`
--

CREATE TABLE `colaboratori` (
  `id` int(11) NOT NULL,
  `nume` text NOT NULL,
  `prenume` text NOT NULL,
  `data_semnarii_contractului` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `cursuri`
--

CREATE TABLE `cursuri` (
  `idc` int(11) NOT NULL,
  `denumire` text NOT NULL,
  `nr_locuri` int(11) NOT NULL,
  `durata` time NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `colaboratori`
--
ALTER TABLE `colaboratori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cursuri`
--
ALTER TABLE `cursuri`
  ADD PRIMARY KEY (`idc`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `colaboratori`
--
ALTER TABLE `colaboratori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cursuri`
--
ALTER TABLE `cursuri`
  MODIFY `idc` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
