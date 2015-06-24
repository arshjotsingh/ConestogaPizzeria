-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2015 at 09:16 PM
-- Server version: 5.5.43-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pizzeria_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `Crust`
--

CREATE TABLE IF NOT EXISTS `Crust` (
  `CrustId` int(50) NOT NULL AUTO_INCREMENT,
  `CrustType` varchar(255) NOT NULL,
  PRIMARY KEY (`CrustId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `Crust`
--

INSERT INTO `Crust` (`CrustId`, `CrustType`) VALUES
(1, 'Hand-tossed '),
(2, 'Pan '),
(3, 'Stuffed crust'),
(4, 'Thin crust');

-- --------------------------------------------------------

--
-- Table structure for table `Order`
--

CREATE TABLE IF NOT EXISTS `Order` (
  `OrderId` int(50) NOT NULL AUTO_INCREMENT,
  `UserId` int(50) NOT NULL,
  `CrustId` int(50) NOT NULL,
  `SizeId` int(50) NOT NULL,
  `OrderToppingId` int(50) NOT NULL,
  `Cost` varchar(100) NOT NULL,
  `DateOrdered` datetime NOT NULL,
  `NumberOfPizzas` int(50) NOT NULL,
  `IsOrderCompleted` tinyint(1) NOT NULL,
  `TaxId` int(50) NOT NULL,
  PRIMARY KEY (`OrderId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `OrderTopping`
--

CREATE TABLE IF NOT EXISTS `OrderTopping` (
  `OrderToppingId` int(50) NOT NULL AUTO_INCREMENT,
  `OrderId` int(50) NOT NULL,
  `ToppingId` int(50) NOT NULL,
  PRIMARY KEY (`OrderToppingId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `PersonalInfo`
--

CREATE TABLE IF NOT EXISTS `PersonalInfo` (
  `UserId` int(10) NOT NULL AUTO_INCREMENT,
  `DateCreated` datetime NOT NULL,
  `FirstName` varchar(255) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `City` varchar(50) NOT NULL,
  `ProvinceId` int(10) NOT NULL,
  `PostalCode` varchar(10) NOT NULL,
  `Telephone` varchar(20) NOT NULL,
  `EmailId` varchar(100) NOT NULL,
  PRIMARY KEY (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Province`
--

CREATE TABLE IF NOT EXISTS `Province` (
  `ProvinceId` int(50) NOT NULL AUTO_INCREMENT,
  `ProvinceName` varchar(255) NOT NULL,
  PRIMARY KEY (`ProvinceId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `Province`
--

INSERT INTO `Province` (`ProvinceId`, `ProvinceName`) VALUES
(1, 'Ontario'),
(2, 'Manitoba'),
(3, 'Saskatchewan'),
(4, 'Quebec');

-- --------------------------------------------------------

--
-- Table structure for table `Size`
--

CREATE TABLE IF NOT EXISTS `Size` (
  `SizeId` int(255) NOT NULL AUTO_INCREMENT,
  `SizeType` varchar(255) NOT NULL,
  PRIMARY KEY (`SizeId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `Size`
--

INSERT INTO `Size` (`SizeId`, `SizeType`) VALUES
(1, 'Small'),
(2, 'Medium'),
(3, 'Large'),
(4, 'Extra Large');

-- --------------------------------------------------------

--
-- Table structure for table `Tax`
--

CREATE TABLE IF NOT EXISTS `Tax` (
  `TaxId` int(50) NOT NULL AUTO_INCREMENT,
  `ProvinceId` int(50) NOT NULL,
  `Tax` varchar(100) NOT NULL,
  PRIMARY KEY (`TaxId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `Tax`
--

INSERT INTO `Tax` (`TaxId`, `ProvinceId`, `Tax`) VALUES
(1, 1, '13'),
(2, 2, '13'),
(3, 3, '10'),
(4, 4, '14.97');

-- --------------------------------------------------------

--
-- Table structure for table `Topping`
--

CREATE TABLE IF NOT EXISTS `Topping` (
  `ToppingId` int(50) NOT NULL AUTO_INCREMENT,
  `ToppingName` varchar(255) NOT NULL,
  PRIMARY KEY (`ToppingId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `Topping`
--

INSERT INTO `Topping` (`ToppingId`, `ToppingName`) VALUES
(1, 'Sausage'),
(2, 'Pepperoni'),
(3, 'Beef'),
(4, 'Bacon'),
(5, 'Chicken'),
(6, 'Ham'),
(7, 'Olive'),
(8, 'Pepper'),
(9, 'Tomato'),
(10, 'Mushroom'),
(11, 'Pineapple');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
