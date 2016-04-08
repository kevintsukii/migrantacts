-- phpMyAdmin SQL Dump
-- version 4.2.5
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: May 04, 2015 at 06:26 AM
-- Server version: 5.5.38
-- PHP Version: 5.5.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `j555s2`
--

-- --------------------------------------------------------

--
-- Table structure for table `legalquiz_data`
--

CREATE TABLE `legalquiz_data` (
`option_id` int(11) NOT NULL,
  `vote_total` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `legalquiz_data`
--

INSERT INTO `legalquiz_data` (`option_id`, `vote_total`) VALUES
(1, 3),
(2, 7),
(3, 0),
(4, 0),
(5, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(11, 3),
(12, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `legalquiz_data`
--
ALTER TABLE `legalquiz_data`
 ADD PRIMARY KEY (`option_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `legalquiz_data`
--
ALTER TABLE `legalquiz_data`
MODIFY `option_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;