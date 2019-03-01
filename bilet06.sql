-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 01 Mar 2019 la 09:37
-- Versiune server: 10.1.9-MariaDB
-- PHP Version: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bilet06`
--

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `apartamente`
--

CREATE TABLE `apartamente` (
  `ida` int(11) NOT NULL,
  `numar` int(11) NOT NULL,
  `numar_camere` int(11) NOT NULL,
  `suma_restanta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `locatari`
--

CREATE TABLE `locatari` (
  `idl` int(11) NOT NULL,
  `nume` text NOT NULL,
  `prenume` text NOT NULL,
  `loc_de_munca` text NOT NULL,
  `ida` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apartamente`
--
ALTER TABLE `apartamente`
  ADD PRIMARY KEY (`ida`);

--
-- Indexes for table `locatari`
--
ALTER TABLE `locatari`
  ADD PRIMARY KEY (`idl`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `apartamente`
--
ALTER TABLE `apartamente`
  MODIFY `ida` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `locatari`
--
ALTER TABLE `locatari`
  MODIFY `idl` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
