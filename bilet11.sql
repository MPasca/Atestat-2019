-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 06 Mar 2019 la 12:45
-- Versiune server: 10.1.9-MariaDB
-- PHP Version: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bilet11`
--

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `caini`
--

CREATE TABLE `caini` (
  `ID_Caine` int(11) NOT NULL,
  `Nume` int(11) NOT NULL,
  `Premiu` int(11) NOT NULL,
  `Observatii` int(11) DEFAULT NULL,
  `CNP_Stapan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `stapani`
--

CREATE TABLE `stapani` (
  `CNP` varchar(11) NOT NULL,
  `Nume` text NOT NULL,
  `Adresa` text NOT NULL,
  `Telefon` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `caini`
--
ALTER TABLE `caini`
  ADD PRIMARY KEY (`ID_Caine`),
  ADD UNIQUE KEY `ID_Caine` (`ID_Caine`);

--
-- Indexes for table `stapani`
--
ALTER TABLE `stapani`
  ADD PRIMARY KEY (`CNP`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
