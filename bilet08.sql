-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 06 Mar 2019 la 12:37
-- Versiune server: 10.1.9-MariaDB
-- PHP Version: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bilet08`
--

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `curse`
--

CREATE TABLE `curse` (
  `idc` int(11) NOT NULL,
  `Destinatie` text NOT NULL,
  `DataPlecarii` date NOT NULL,
  `OraPlecarii` time NOT NULL,
  `DataIntoarcerii` date NOT NULL,
  `OraIntoarcerii` time NOT NULL,
  `idm` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `masini`
--

CREATE TABLE `masini` (
  `idm` int(11) NOT NULL,
  `Marca` text NOT NULL,
  `Nr_locuri` int(11) NOT NULL,
  `Nr_inmatriculare` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `curse`
--
ALTER TABLE `curse`
  ADD PRIMARY KEY (`idc`);

--
-- Indexes for table `masini`
--
ALTER TABLE `masini`
  ADD PRIMARY KEY (`idm`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `curse`
--
ALTER TABLE `curse`
  MODIFY `idc` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `masini`
--
ALTER TABLE `masini`
  MODIFY `idm` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
