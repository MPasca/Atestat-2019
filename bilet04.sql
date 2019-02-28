-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 28 Feb 2019 la 11:59
-- Versiune server: 10.1.9-MariaDB
-- PHP Version: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bilet04`
--

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `pictori`
--

CREATE TABLE `pictori` (
  `cod_pictor` int(11) NOT NULL,
  `nume` text NOT NULL,
  `prenume` text NOT NULL,
  `data_nastere` date NOT NULL,
  `descriere_activitate` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `tablouri`
--

CREATE TABLE `tablouri` (
  `cod_tablou` int(11) NOT NULL,
  `denumire` text NOT NULL,
  `anul_realizarii` year(4) NOT NULL,
  `lungime` int(11) NOT NULL,
  `latime` int(11) NOT NULL,
  `pret` int(11) DEFAULT NULL,
  `cod_pictor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pictori`
--
ALTER TABLE `pictori`
  ADD PRIMARY KEY (`cod_pictor`);

--
-- Indexes for table `tablouri`
--
ALTER TABLE `tablouri`
  ADD PRIMARY KEY (`cod_tablou`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pictori`
--
ALTER TABLE `pictori`
  MODIFY `cod_pictor` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tablouri`
--
ALTER TABLE `tablouri`
  MODIFY `cod_tablou` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
