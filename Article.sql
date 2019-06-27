-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 27, 2019 at 04:12 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Article`
--

-- --------------------------------------------------------

--
-- Table structure for table `Article`
--

CREATE TABLE `Article` (
  `ID_Article` int(11) NOT NULL,
  `ID_Users` int(11) DEFAULT NULL,
  `Title` varchar(25) DEFAULT NULL,
  `ID_Catagory` int(11) DEFAULT NULL,
  `ID_SubCatagory` int(11) DEFAULT NULL,
  `Article` text,
  `Attachment` varchar(100) DEFAULT NULL,
  `DateCreate` date DEFAULT NULL,
  `DateUpdated` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Article`
--

INSERT INTO `Article` (`ID_Article`, `ID_Users`, `Title`, `ID_Catagory`, `ID_SubCatagory`, `Article`, `Attachment`, `DateCreate`, `DateUpdated`) VALUES
(1, 2, 'Satu', 1, 1, 'Isi Article', '', '2019-06-19', ''),
(2, 3, 'Dua', 1, 1, 'Isi Article', '', '2019-06-19', ''),
(3, 4, 'Tiga', 1, 1, 'Isi Article', '', '2019-06-19', ''),
(4, 4, 'contoh', 2, 2, 'Isi Article', '', '2019-06-19', ''),
(5, 3, 'contoh', 2, 2, 'Isi Article', '', '2019-06-19', ''),
(6, 2, 'contoh', 2, 2, 'Isi Article', '', '2019-06-19', ''),
(7, 2, 'contoh', 3, 3, 'Isi Article', '', '2019-06-19', ''),
(8, 3, 'contoh', 3, 3, 'Isi Article', '', '2019-06-19', ''),
(9, 4, 'contoh', 3, 3, 'Isi Article', '', '2019-06-19', '');

-- --------------------------------------------------------

--
-- Table structure for table `Catagory`
--

CREATE TABLE `Catagory` (
  `ID_Catagory` int(11) NOT NULL,
  `ID_SubCatagory` int(11) DEFAULT NULL,
  `Catagory` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Catagory`
--

INSERT INTO `Catagory` (`ID_Catagory`, `ID_SubCatagory`, `Catagory`) VALUES
(1, 1, 'Charity Commission'),
(2, 2, 'Operational'),
(3, 3, 'admin module'),
(4, 4, 'belajar'),
(5, 5, 'Coding'),
(6, 6, 'programmer'),
(7, 7, 'Manager'),
(8, 8, 'Manager');

-- --------------------------------------------------------

--
-- Table structure for table `Comment`
--

CREATE TABLE `Comment` (
  `ID_Comment` int(11) NOT NULL,
  `ID_Users` int(11) DEFAULT NULL,
  `ID_Article` int(11) DEFAULT NULL,
  `Comment` varchar(100) DEFAULT NULL,
  `Question` varchar(10) DEFAULT NULL,
  `DateComment` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Comment`
--

INSERT INTO `Comment` (`ID_Comment`, `ID_Users`, `ID_Article`, `Comment`, `Question`, `DateComment`) VALUES
(1, 4, 1, 'Kerenn !!!', 'Yes', '2019-06-21'),
(2, 4, 1, 'Kerenn ', 'Yes', '2019-06-21'),
(3, 4, 1, 'Ntappsss !!', 'Somewhat', '2019-06-21'),
(4, 4, 9, 'Keren', 'Yes', '2019-06-21'),
(5, 4, 2, 'Ya Sudah Lah !!!', 'No', '2019-06-23');

-- --------------------------------------------------------

--
-- Table structure for table `SubCatagory`
--

CREATE TABLE `SubCatagory` (
  `ID_SubCatagory` int(11) NOT NULL,
  `SubCatagory` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `SubCatagory`
--

INSERT INTO `SubCatagory` (`ID_SubCatagory`, `SubCatagory`) VALUES
(1, 'Compliance Audit Checklist ( Master )'),
(2, 'Audit Checklist ( Results )'),
(3, 'sprint2'),
(4, 'belajar'),
(5, 'php web'),
(6, 'sub programmer'),
(7, 'Memo Internal'),
(8, 'Schedule');

-- --------------------------------------------------------

--
-- Table structure for table `Tanggal`
--

CREATE TABLE `Tanggal` (
  `Tanggal` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Tanggal`
--

INSERT INTO `Tanggal` (`Tanggal`) VALUES
('2019-06-21');

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `ID_Users` int(11) NOT NULL,
  `Name` varchar(35) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `GrantPrivilages` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`ID_Users`, `Name`, `Email`, `Password`, `GrantPrivilages`) VALUES
(2, 'ANDIKA KURNIAWAN', 'EDITOR@GMAIL.COM', '5f4dcc3b5aa765d61d8327deb882cf99', 'EDITOR'),
(3, 'EDI GUSTAWAN', 'AUTHOR@GMAIL.COM', '5f4dcc3b5aa765d61d8327deb882cf99', 'AUTHOR'),
(4, 'AFDAL DIAN PANGESTU', 'USER@GMAIL.COM', '5f4dcc3b5aa765d61d8327deb882cf99', 'USER');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Article`
--
ALTER TABLE `Article`
  ADD PRIMARY KEY (`ID_Article`),
  ADD KEY `FKc` (`ID_Catagory`),
  ADD KEY `FKd` (`ID_SubCatagory`),
  ADD KEY `FKi` (`ID_Users`);

--
-- Indexes for table `Catagory`
--
ALTER TABLE `Catagory`
  ADD PRIMARY KEY (`ID_Catagory`),
  ADD KEY `FKb` (`ID_SubCatagory`);

--
-- Indexes for table `Comment`
--
ALTER TABLE `Comment`
  ADD PRIMARY KEY (`ID_Comment`),
  ADD KEY `FKa` (`ID_Users`),
  ADD KEY `FKz` (`ID_Article`);

--
-- Indexes for table `SubCatagory`
--
ALTER TABLE `SubCatagory`
  ADD PRIMARY KEY (`ID_SubCatagory`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`ID_Users`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Article`
--
ALTER TABLE `Article`
  MODIFY `ID_Article` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `Catagory`
--
ALTER TABLE `Catagory`
  MODIFY `ID_Catagory` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `Comment`
--
ALTER TABLE `Comment`
  MODIFY `ID_Comment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `SubCatagory`
--
ALTER TABLE `SubCatagory`
  MODIFY `ID_SubCatagory` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
  MODIFY `ID_Users` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Article`
--
ALTER TABLE `Article`
  ADD CONSTRAINT `FKc` FOREIGN KEY (`ID_Catagory`) REFERENCES `Catagory` (`ID_Catagory`),
  ADD CONSTRAINT `FKd` FOREIGN KEY (`ID_SubCatagory`) REFERENCES `SubCatagory` (`ID_SubCatagory`),
  ADD CONSTRAINT `FKi` FOREIGN KEY (`ID_Users`) REFERENCES `Users` (`ID_Users`);

--
-- Constraints for table `Catagory`
--
ALTER TABLE `Catagory`
  ADD CONSTRAINT `FKb` FOREIGN KEY (`ID_SubCatagory`) REFERENCES `SubCatagory` (`ID_SubCatagory`);

--
-- Constraints for table `Comment`
--
ALTER TABLE `Comment`
  ADD CONSTRAINT `FKa` FOREIGN KEY (`ID_Users`) REFERENCES `Users` (`ID_Users`),
  ADD CONSTRAINT `FKz` FOREIGN KEY (`ID_Article`) REFERENCES `Article` (`ID_Article`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
