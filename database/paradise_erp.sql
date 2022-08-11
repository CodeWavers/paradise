-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 11, 2022 at 01:18 PM
-- Server version: 10.5.16-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `paradise_erp`
--

-- --------------------------------------------------------

--
-- Table structure for table `acc_coa`
--

CREATE TABLE `acc_coa` (
  `HeadCode` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `HeadName` varchar(100) CHARACTER SET utf8 NOT NULL,
  `PHeadName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `HeadLevel` int(11) NOT NULL,
  `IsActive` tinyint(1) NOT NULL,
  `IsTransaction` tinyint(1) NOT NULL,
  `IsGL` tinyint(1) NOT NULL,
  `HeadType` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `IsBudget` tinyint(1) NOT NULL,
  `IsDepreciation` tinyint(1) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `DepreciationRate` decimal(18,2) NOT NULL,
  `CreateBy` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CreateDate` datetime NOT NULL,
  `UpdateBy` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `UpdateDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `acc_coa`
--

INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES
('102030000001', '1-Marine Explorers Ltd.', 'Customer Receivable', 4, 1, 1, 0, 'A', 0, 0, 1, NULL, 0.00, 'BVv5Axt7rgo5CWU', '2022-08-10 10:23:34', '', '0000-00-00 00:00:00'),
('50205000001', '1-Mohanagar Traders', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 1, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:19', '', '0000-00-00 00:00:00'),
('50205000001', '10-Mahanagar Tools Center', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 10, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:19', '', '0000-00-00 00:00:00'),
('50205000001', '100-M/S Mohammadia Engineering Works', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 100, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:25', '', '0000-00-00 00:00:00'),
('50205000001', '101-Janani Electronics', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 101, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:25', '', '0000-00-00 00:00:00'),
('50205000001', '102-Bangla Trac Group', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 102, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:25', '', '0000-00-00 00:00:00'),
('50205000001', '103-Hamida Pipe House', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 103, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:25', '', '0000-00-00 00:00:00'),
('50205000001', '104-New IT Power', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 104, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:25', '', '0000-00-00 00:00:00'),
('50205000001', '105-Master Computer Service', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 105, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:25', '', '0000-00-00 00:00:00'),
('50205000001', '106-Smart Computer', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 106, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:25', '', '0000-00-00 00:00:00'),
('50205000001', '107-Nadim Hardware', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 107, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:25', '', '0000-00-00 00:00:00'),
('50205000001', '108-Azmir Hydraulic Spares', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 108, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:25', '', '0000-00-00 00:00:00'),
('50205000001', '109-Balaka Tools Traders', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 109, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:25', '', '0000-00-00 00:00:00'),
('50205000001', '11-M/S Parvez Enterprise', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 11, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:19', '', '0000-00-00 00:00:00'),
('50205000001', '110-R.K. Electric Service', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 110, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:25', '', '0000-00-00 00:00:00'),
('50205000001', '111-M/S New Shah Jabbaria Enterprise', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 111, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:26', '', '0000-00-00 00:00:00'),
('50205000001', '112-Cabitaj Online Working', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 112, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:26', '', '0000-00-00 00:00:00'),
('50205000001', '113-Dip Medico', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 113, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:26', '', '0000-00-00 00:00:00'),
('50205000001', '114-3P-Technology', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 114, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:26', '', '0000-00-00 00:00:00'),
('50205000001', '115-M/S S.A. Enterprise', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 115, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:26', '', '0000-00-00 00:00:00'),
('50205000001', '116-Sagor Digital Studio', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 116, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:26', '', '0000-00-00 00:00:00'),
('50205000001', '117-Jamuna Oil Suppliers', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 117, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:26', '', '0000-00-00 00:00:00'),
('50205000001', '118-M/S Morium Enterprise', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 118, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:26', '', '0000-00-00 00:00:00'),
('50205000001', '119-Abrar Bedding Store', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 119, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:26', '', '0000-00-00 00:00:00'),
('50205000001', '12-Rupalika Electrical & Engineering Works', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 12, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:19', '', '0000-00-00 00:00:00'),
('50205000001', '120-Alauddin Electronics', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 120, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:26', '', '0000-00-00 00:00:00'),
('50205000001', '121-Madina Machinery', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 121, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:27', '', '0000-00-00 00:00:00'),
('50205000001', '122-M/S Islam Gift Center', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 122, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:27', '', '0000-00-00 00:00:00'),
('50205000001', '123-M/S Humayun Electronics', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 123, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:27', '', '0000-00-00 00:00:00'),
('50205000001', '124-Moinuddin Trading Corporation', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 124, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:27', '', '0000-00-00 00:00:00'),
('50205000001', '125-M/S Abu Hanif & Brothers', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 125, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:27', '', '0000-00-00 00:00:00'),
('50205000001', '126-S.H. Enterprise', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 126, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:27', '', '0000-00-00 00:00:00'),
('50205000001', '127-M.M. Metal Works', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 127, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:27', '', '0000-00-00 00:00:00'),
('50205000001', '128-N.N. Enterprise', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 128, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:27', '', '0000-00-00 00:00:00'),
('50205000001', '129-Mohiuddin & Brothers', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 129, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:27', '', '0000-00-00 00:00:00'),
('50205000001', '13-Marine Electronics Service', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 13, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:20', '', '0000-00-00 00:00:00'),
('50205000001', '130-Seba Chemist & Druggist', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 130, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:27', '', '0000-00-00 00:00:00'),
('50205000001', '131-Bangladesh Fisheries Development Corporation', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 131, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:28', '', '0000-00-00 00:00:00'),
('50205000001', '132-Padma Oil Company Ltd.', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 132, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:28', '', '0000-00-00 00:00:00'),
('50205000001', '133-International Oil Agency', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 133, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:28', '', '0000-00-00 00:00:00'),
('50205000001', '134-Discovery Departmental Store', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 134, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:28', '', '0000-00-00 00:00:00'),
('50205000001', '135-M/S Sharmin Enterprise', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 135, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:28', '', '0000-00-00 00:00:00'),
('50205000001', '136-Rana Marine Stores', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 136, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:28', '', '0000-00-00 00:00:00'),
('50205000001', '137-Micron Technologies', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 137, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:28', '', '0000-00-00 00:00:00'),
('50205000001', '138-Al-Madina Machinery & Rubber Store', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 138, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:28', '', '0000-00-00 00:00:00'),
('50205000001', '139-M/S Hridoy Enterprise', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 139, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:28', '', '0000-00-00 00:00:00'),
('50205000001', '14-S.S. Hardware', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 14, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:20', '', '0000-00-00 00:00:00'),
('50205000001', '140-M/S Brothers Prokaushli Workshop', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 140, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:28', '', '0000-00-00 00:00:00'),
('50205000001', '141-Rahmania Marine Engineering Works', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 141, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:28', '', '0000-00-00 00:00:00'),
('50205000001', '142-M/S Momtaz Enterprise', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 142, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:28', '', '0000-00-00 00:00:00'),
('50205000001', '143-M/S Bismillah Trading', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 143, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:28', '', '0000-00-00 00:00:00'),
('50205000001', '144-Four Star International', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 144, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:28', '', '0000-00-00 00:00:00'),
('50205000001', '145-M/S Miraj Al Mehrab Photostat Centre', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 145, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:28', '', '0000-00-00 00:00:00'),
('50205000001', '146-Favourite Tools Centre', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 146, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:29', '', '0000-00-00 00:00:00'),
('50205000001', '147-Magnet Tools Centre', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 147, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:29', '', '0000-00-00 00:00:00'),
('50205000001', '148-Islam Crockeries', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 148, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:29', '', '0000-00-00 00:00:00'),
('50205000001', '149-M/S Nadim Enterprise', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 149, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:29', '', '0000-00-00 00:00:00'),
('50205000001', '15-M/S Joyotu Pharmacy', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 15, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:20', '', '0000-00-00 00:00:00'),
('50205000001', '150-HNJ Traders', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 150, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:29', '', '0000-00-00 00:00:00'),
('50205000001', '151-Paradise Ice & Fish Processing Plant', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 151, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:29', '', '0000-00-00 00:00:00'),
('50205000001', '152-Allahar Dan Packaging', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 152, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:29', '', '0000-00-00 00:00:00'),
('50205000001', '153-Al Baraka Store', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 153, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:29', '', '0000-00-00 00:00:00'),
('50205000001', '154-Al-Baraka Store', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 154, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:29', '', '0000-00-00 00:00:00'),
('50205000001', '155-Strong Variety Store', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 155, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:29', '', '0000-00-00 00:00:00'),
('50205000001', '156-Khwaja Traders', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 156, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:29', '', '0000-00-00 00:00:00'),
('50205000001', '157-M/S Azim Hardware Store', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 157, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:29', '', '0000-00-00 00:00:00'),
('50205000001', '158-Nadia Electronics', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 158, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:29', '', '0000-00-00 00:00:00'),
('50205000001', '159-Jamuna Rexin House', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 159, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:29', '', '0000-00-00 00:00:00'),
('50205000001', '16-PMT Store', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 16, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:20', '', '0000-00-00 00:00:00'),
('50205000001', '160-Shovon Machinery', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 160, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:30', '', '0000-00-00 00:00:00'),
('50205000001', '161-M/S Moktar Traders', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 161, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:30', '', '0000-00-00 00:00:00'),
('50205000001', '162-Islam Pipe House', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 162, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:30', '', '0000-00-00 00:00:00'),
('50205000001', '163-S. Ali Machinery Trading', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 163, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:30', '', '0000-00-00 00:00:00'),
('50205000001', '164-M/S Shanta Refrigeration', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 164, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:30', '', '0000-00-00 00:00:00'),
('50205000001', '165-Allah Maliksha Traders', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 165, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:30', '', '0000-00-00 00:00:00'),
('50205000001', '166-M/S Amzad & Brothers', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 166, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:31', '', '0000-00-00 00:00:00'),
('50205000001', '167-Emco Mill Store', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 167, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:31', '', '0000-00-00 00:00:00'),
('50205000001', '168-J.C. Marine Enterprise', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 168, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:31', '', '0000-00-00 00:00:00'),
('50205000001', '169-M/S Monir Tarpaulin Traders', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 169, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:32', '', '0000-00-00 00:00:00'),
('50205000001', '17-The Amanat Shahjalal Eng. Works', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 17, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:20', '', '0000-00-00 00:00:00'),
('50205000001', '170-BBS Printers', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 170, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:32', '', '0000-00-00 00:00:00'),
('50205000001', '171-Friends Telecom, Stationary, Photocopy & Gift Corner', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 171, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:32', '', '0000-00-00 00:00:00'),
('50205000001', '172-M/S Bismillah Electric & Cables', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 172, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:33', '', '0000-00-00 00:00:00'),
('50205000001', '173-M/S Protim & Brothers', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 173, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:33', '', '0000-00-00 00:00:00'),
('50205000001', '174-Popular Trading Agency', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 174, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:33', '', '0000-00-00 00:00:00'),
('50205000001', '175-M.R. Telecom', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 175, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:33', '', '0000-00-00 00:00:00'),
('50205000001', '176-Ruma Electronics', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 176, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:33', '', '0000-00-00 00:00:00'),
('50205000001', '177-Chattola Traders', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 177, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:33', '', '0000-00-00 00:00:00'),
('50205000001', '178-Active Water Technology', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 178, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:33', '', '0000-00-00 00:00:00'),
('50205000001', '179-Khawja Machinery', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 179, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:33', '', '0000-00-00 00:00:00'),
('50205000001', '18-S.S. Enterprise', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 18, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:20', '', '0000-00-00 00:00:00'),
('50205000001', '180-M/S Younos & Sons', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 180, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:33', '', '0000-00-00 00:00:00'),
('50205000001', '181-Anas Gents Collection', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 181, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:33', '', '0000-00-00 00:00:00'),
('50205000001', '182-Jubilee Trading Company', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 182, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:33', '', '0000-00-00 00:00:00'),
('50205000001', '19-A.D. Sons Marine Tech', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 19, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:20', '', '0000-00-00 00:00:00'),
('50205000001', '2-Bedford Service', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 2, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:19', '', '0000-00-00 00:00:00'),
('50205000001', '20-Dhaka Machinery', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 20, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:20', '', '0000-00-00 00:00:00'),
('50205000001', '21-Dhaka Boiler & Marine Store', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 21, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:20', '', '0000-00-00 00:00:00'),
('50205000001', '22-Bangladesh Medical Hall', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 22, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:20', '', '0000-00-00 00:00:00'),
('50205000001', '23-M/S Halima Iron Mart', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 23, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:20', '', '0000-00-00 00:00:00'),
('50205000001', '24-M/S Krisi Vandar', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 24, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:20', '', '0000-00-00 00:00:00'),
('50205000001', '25-M/S Rubel Enterprise', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 25, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:20', '', '0000-00-00 00:00:00'),
('50205000001', '26-Salamat Enterprise', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 26, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:20', '', '0000-00-00 00:00:00'),
('50205000001', '27-M/S Latif Stationery', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 27, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:20', '', '0000-00-00 00:00:00'),
('50205000001', '28-M/S National Stationery', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 28, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:20', '', '0000-00-00 00:00:00'),
('50205000001', '29-M/S S.K. Electric Engineering Service', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 29, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:20', '', '0000-00-00 00:00:00'),
('50205000001', '3-Shely Engineering Workshop', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 3, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:19', '', '0000-00-00 00:00:00'),
('50205000001', '30-Meera Enterprise', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 30, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:20', '', '0000-00-00 00:00:00'),
('50205000001', '31-M/S Amanat Battery Co.', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 31, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:20', '', '0000-00-00 00:00:00'),
('50205000001', '32-Arefa Electronics & Battery', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 32, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:20', '', '0000-00-00 00:00:00'),
('50205000001', '33-M/S Mahin & Brothers', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 33, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:20', '', '0000-00-00 00:00:00'),
('50205000001', '34-Quality Powertec', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 34, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:20', '', '0000-00-00 00:00:00'),
('50205000001', '35-Akhter Store', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 35, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:20', '', '0000-00-00 00:00:00'),
('50205000001', '36-Madina Mattress House', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 36, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:20', '', '0000-00-00 00:00:00'),
('50205000001', '37-Momena Marine Store', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 37, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:21', '', '0000-00-00 00:00:00'),
('50205000001', '38-Shah Amanat Hardware & Electric', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 38, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:21', '', '0000-00-00 00:00:00'),
('50205000001', '39-Memory Collection', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 39, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:21', '', '0000-00-00 00:00:00'),
('50205000001', '4-Chittagong Suppliers', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 4, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:19', '', '0000-00-00 00:00:00'),
('50205000001', '40-Icon Traders', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 40, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:21', '', '0000-00-00 00:00:00'),
('50205000001', '41-B.M. Traders', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 41, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:21', '', '0000-00-00 00:00:00'),
('50205000001', '42-Robiul Modern Trawl Suppliers', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 42, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:21', '', '0000-00-00 00:00:00'),
('50205000001', '43-M/S Arif & Brothers', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 43, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:21', '', '0000-00-00 00:00:00'),
('50205000001', '44-Star Marine', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 44, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:21', '', '0000-00-00 00:00:00'),
('50205000001', '45-M/S Sabitri Pharmacy', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 45, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:21', '', '0000-00-00 00:00:00'),
('50205000001', '46-M/S Bashir & Brothers', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 46, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:21', '', '0000-00-00 00:00:00'),
('50205000001', '47-Ali Store', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 47, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:21', '', '0000-00-00 00:00:00'),
('50205000001', '48-Paradise Marine Traders', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 48, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:21', '', '0000-00-00 00:00:00'),
('50205000001', '49-Kul Computers', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 49, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:21', '', '0000-00-00 00:00:00'),
('50205000001', '5-Jahangir Electric & Automation', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 5, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:19', '', '0000-00-00 00:00:00'),
('50205000001', '50-M/S Rony Enterprise', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 50, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:22', '', '0000-00-00 00:00:00'),
('50205000001', '51-Nurjahan Machinery & Hardware Tools', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 51, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:22', '', '0000-00-00 00:00:00'),
('50205000001', '52-Rashid Electric & Engineering', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 52, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:22', '', '0000-00-00 00:00:00'),
('50205000001', '53-Sirichai Perfect Fishing Gear Company', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 53, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:22', '', '0000-00-00 00:00:00'),
('50205000001', '54-Marine Safety Equipment Services', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 54, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:22', '', '0000-00-00 00:00:00'),
('50205000001', '55-New Matin Brothers', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 55, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:22', '', '0000-00-00 00:00:00'),
('50205000001', '56-M/S Super Electric', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 56, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:22', '', '0000-00-00 00:00:00'),
('50205000001', '57-New Minar Engineering Workshop', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 57, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:22', '', '0000-00-00 00:00:00'),
('50205000001', '58-City Computer & Photostat', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 58, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:22', '', '0000-00-00 00:00:00'),
('50205000001', '59-Anik Boiler & Pneumatic House', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 59, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:22', '', '0000-00-00 00:00:00'),
('50205000001', '6-J.B. Enterprise', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 6, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:19', '', '0000-00-00 00:00:00'),
('50205000001', '60-Mohammadia Pipe House', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 60, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:22', '', '0000-00-00 00:00:00'),
('50205000001', '61-Shah Saumia Hardware & Electric Service', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 61, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:22', '', '0000-00-00 00:00:00'),
('50205000001', '62-M/S Abodan Cycles', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 62, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:22', '', '0000-00-00 00:00:00'),
('50205000001', '63-Pelagic Marine', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 63, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:22', '', '0000-00-00 00:00:00'),
('50205000001', '64-M/S Jamal & Brothers', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 64, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:22', '', '0000-00-00 00:00:00'),
('50205000001', '65-M/S Liton Hardware Store', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 65, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:23', '', '0000-00-00 00:00:00'),
('50205000001', '66-M/S Arobindo Pharmacy', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 66, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:23', '', '0000-00-00 00:00:00'),
('50205000001', '67-Jarif Digital Machinery', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 67, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:23', '', '0000-00-00 00:00:00'),
('50205000001', '68-General Machinery Stores', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 68, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:23', '', '0000-00-00 00:00:00'),
('50205000001', '69-Kamal & Javed Electric', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 69, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:23', '', '0000-00-00 00:00:00'),
('50205000001', '7-Al Helal Electric Co.', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 7, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:19', '', '0000-00-00 00:00:00'),
('50205000001', '70-Ahmed Tools & Machinery', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 70, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:23', '', '0000-00-00 00:00:00'),
('50205000001', '71-M/S Karim & Brothers', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 71, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:23', '', '0000-00-00 00:00:00'),
('50205000001', '72-RFL Best Buy', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 72, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:23', '', '0000-00-00 00:00:00'),
('50205000001', '73-Nomeya Jannat Crockeries', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 73, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:23', '', '0000-00-00 00:00:00'),
('50205000001', '74-M/S Parts Bitan', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 74, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:23', '', '0000-00-00 00:00:00'),
('50205000001', '75-M/S Ali Mill Store', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 75, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:24', '', '0000-00-00 00:00:00'),
('50205000001', '76-Nahar Trading', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 76, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:24', '', '0000-00-00 00:00:00'),
('50205000001', '77-S.N. Traders', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 77, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:24', '', '0000-00-00 00:00:00'),
('50205000001', '78-M/S N.A. Enterprise', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 78, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:24', '', '0000-00-00 00:00:00'),
('50205000001', '79-New Modina Porda Bitan', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 79, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:24', '', '0000-00-00 00:00:00'),
('50205000001', '8-Umme Salma Electric Service & Hardware', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 8, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:19', '', '0000-00-00 00:00:00'),
('50205000001', '80-Shahid Traders', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 80, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:24', '', '0000-00-00 00:00:00'),
('50205000001', '81-Anchor Refrigeration', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 81, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:24', '', '0000-00-00 00:00:00'),
('50205000001', '82-Tayub Marine Service', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 82, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:24', '', '0000-00-00 00:00:00'),
('50205000001', '83-Jamuna Machinery', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 83, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:24', '', '0000-00-00 00:00:00'),
('50205000001', '84-Azad Engineering Workshop', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 84, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:24', '', '0000-00-00 00:00:00'),
('50205000001', '85-M/S Ayon Enterprise', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 85, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:24', '', '0000-00-00 00:00:00'),
('50205000001', '86-Mahbub Trade & Engineering', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 86, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:24', '', '0000-00-00 00:00:00'),
('50205000001', '87-Shadia Motors', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 87, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:24', '', '0000-00-00 00:00:00'),
('50205000001', '88-Neyamat Shah Enterprise', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 88, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:24', '', '0000-00-00 00:00:00'),
('50205000001', '89-Bengal Motors', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 89, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:24', '', '0000-00-00 00:00:00'),
('50205000001', '9-Nabi Electric Store', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 9, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:19', '', '0000-00-00 00:00:00'),
('50205000001', '90-M.K. Trading & Co.', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 90, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:24', '', '0000-00-00 00:00:00'),
('50205000001', '91-Chula Ghor', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 91, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:24', '', '0000-00-00 00:00:00'),
('50205000001', '92-Suma Fabrics', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 92, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:24', '', '0000-00-00 00:00:00'),
('50205000001', '93-Jakir Hossain Iron Mart', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 93, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:24', '', '0000-00-00 00:00:00'),
('50205000001', '94-P.S. Hardware', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 94, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:24', '', '0000-00-00 00:00:00'),
('50205000001', '95-M/S Bengal Trading Agency', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 95, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:24', '', '0000-00-00 00:00:00'),
('50205000001', '96-Bengal Trading Agency', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 96, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:24', '', '0000-00-00 00:00:00'),
('50205000001', '97-Madina Marine Tools Center', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 97, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:25', '', '0000-00-00 00:00:00'),
('50205000001', '98-BD Trade International', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 98, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:25', '', '0000-00-00 00:00:00'),
('50205000001', '99-M/S A.B. Hydraulic System', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 99, 0.00, 'ByIUOew8UWnm8dD', '2022-08-10 09:48:25', '', '0000-00-00 00:00:00'),
('50202', 'Account Payable', 'Current Liabilities', 2, 1, 0, 1, 'L', 0, 0, NULL, NULL, 0.00, 'OpSoxJvBbbS8Rws', '2021-09-29 06:38:15', '', '2019-09-05 00:00:00'),
('10203', 'Account Receivable', 'Current Asset', 2, 1, 0, 1, 'A', 0, 0, NULL, NULL, 0.00, 'OpSoxJvBbbS8Rws', '2022-03-30 09:05:26', '', '0000-00-00 00:00:00'),
('40301', 'Administrative Expenses', 'Operating Expenses', 2, 1, 0, 1, 'E', 0, 0, NULL, NULL, 0.00, 'ByIUOew8UWnm8dD', '2022-03-30 09:57:48', '', '0000-00-00 00:00:00'),
('1020501', 'Advance Salary', 'Other Current Assets', 3, 1, 1, 1, 'A', 0, 0, NULL, NULL, 0.00, 'ByIUOew8UWnm8dD', '2022-03-30 10:20:39', '', '0000-00-00 00:00:00'),
('1030101', 'Air Condition & Refrigerator', 'Furniture & Equipment', 3, 1, 1, 1, 'A', 0, 0, NULL, NULL, 0.00, 'ByIUOew8UWnm8dD', '2022-03-30 10:24:13', '', '0000-00-00 00:00:00'),
('40302', 'Allowance and Benefits', 'Operating Expenses', 2, 1, 0, 1, 'E', 0, 0, NULL, NULL, 0.00, 'ByIUOew8UWnm8dD', '2022-03-30 10:07:44', '', '0000-00-00 00:00:00'),
('1', 'Assets', 'COA', 0, 1, 0, 1, 'A', 0, 0, NULL, NULL, 0.00, 'OpSoxJvBbbS8Rws', '2021-06-08 13:04:33', '', '2019-09-05 00:00:00'),
('4030701', 'Auto Maintenance', 'Repairs & Maintenance', 3, 1, 1, 1, 'E', 0, 0, NULL, NULL, 0.00, 'ByIUOew8UWnm8dD', '2022-03-30 10:13:30', '', '0000-00-00 00:00:00'),
('40303', 'Bank Fees and Charges', 'Operating Expenses', 2, 1, 1, 1, 'E', 0, 0, NULL, NULL, 0.00, 'ByIUOew8UWnm8dD', '2022-03-30 10:09:08', '', '0000-00-00 00:00:00'),
('40304', 'Bank Installment', 'Operating Expenses', 2, 1, 1, 1, 'E', 0, 0, NULL, NULL, 0.00, 'ByIUOew8UWnm8dD', '2022-03-30 10:09:36', '', '0000-00-00 00:00:00'),
('50101', 'Bank Installment Payable', 'Other Liabilities', 2, 1, 1, 1, 'L', 0, 0, NULL, NULL, 0.00, 'ByIUOew8UWnm8dD', '2022-03-30 10:33:18', '', '0000-00-00 00:00:00'),
('50102', 'Bank Interest Payable', 'Other Liabilities', 2, 1, 1, 1, 'L', 0, 0, NULL, NULL, 0.00, 'ByIUOew8UWnm8dD', '2022-03-30 10:33:47', '', '0000-00-00 00:00:00'),
('50701', 'Bank Loan', 'Long Term LIabilities', 2, 1, 0, 1, 'L', 0, 0, NULL, NULL, 0.00, 'ByIUOew8UWnm8dD', '2022-03-30 10:31:02', '', '0000-00-00 00:00:00'),
('1030102', 'Billboard', 'Furniture & Equipment', 3, 1, 1, 1, 'A', 0, 0, NULL, NULL, 0.00, 'ByIUOew8UWnm8dD', '2022-03-30 10:24:28', '', '0000-00-00 00:00:00'),
('4030901', 'Carrying', 'Transportation', 3, 1, 0, 1, 'E', 0, 0, NULL, NULL, 0.00, 'ByIUOew8UWnm8dD', '2022-03-30 10:14:40', '', '0000-00-00 00:00:00'),
('10201', 'Cash & Cash Equivalent', 'Current Asset', 2, 1, 0, 1, 'A', 0, 0, NULL, NULL, 0.00, 'OpSoxJvBbbS8Rws', '2022-03-30 07:52:23', '', '0000-00-00 00:00:00'),
('1020102', 'Cash At Bank', 'Cash & Cash Equivalent', 3, 1, 1, 0, 'A', 0, 0, NULL, NULL, 0.00, 'OpSoxJvBbbS8Rws', '2022-03-30 07:54:24', '', '0000-00-00 00:00:00'),
('1020103', 'Cash At Bkash', 'Cash & Cash Equivalent', 3, 1, 1, 0, 'A', 0, 0, NULL, NULL, 0.00, 'OpSoxJvBbbS8Rws', '2022-03-30 07:55:05', '', '0000-00-00 00:00:00'),
('1020104', 'Cash At Nagad', 'Cash & Cash Equivalent', 3, 1, 1, 0, 'A', 0, 0, NULL, NULL, 0.00, 'OpSoxJvBbbS8Rws', '2022-03-30 07:55:35', '', '0000-00-00 00:00:00'),
('1020101', 'Cash In Hand', 'Cash & Cash Equivalent', 3, 1, 1, 0, 'A', 0, 0, NULL, NULL, 0.00, 'OpSoxJvBbbS8Rws', '2022-03-30 07:55:17', '', '0000-00-00 00:00:00'),
('4030501', 'Charity', 'Charity & Donation', 3, 1, 1, 1, 'E', 0, 0, NULL, NULL, 0.00, 'ByIUOew8UWnm8dD', '2022-03-30 10:10:16', '', '0000-00-00 00:00:00'),
('40305', 'Charity & Donation', 'Operating Expenses', 2, 1, 0, 1, 'E', 0, 0, NULL, NULL, 0.00, 'ByIUOew8UWnm8dD', '2022-03-30 10:09:58', '', '0000-00-00 00:00:00'),
('4030601', 'Cleaning Expenses', 'Indirect Expenses', 3, 1, 1, 1, 'E', 0, 0, NULL, NULL, 0.00, 'ByIUOew8UWnm8dD', '2022-03-30 10:11:51', '', '0000-00-00 00:00:00'),
('10206', 'Closing Inventory', 'Current Asset', 2, 0, 0, 0, 'A', 0, 0, NULL, NULL, 0.00, 'ByIUOew8UWnm8dD', '2022-04-13 09:42:58', '', '0000-00-00 00:00:00'),
('1030103', 'Computer & CC Camera', 'Furniture & Equipment', 3, 1, 1, 1, 'A', 0, 0, NULL, NULL, 0.00, 'ByIUOew8UWnm8dD', '2022-03-30 10:26:41', '', '0000-00-00 00:00:00'),
('102', 'Current Asset', 'Assets', 1, 1, 0, 1, 'A', 0, 0, NULL, NULL, 0.00, 'OpSoxJvBbbS8Rws', '2022-03-30 07:51:05', '', '0000-00-00 00:00:00'),
('502', 'Current Liabilities', 'Liabilities', 1, 1, 0, 1, 'L', 0, 0, NULL, NULL, 0.00, 'KNmrMhXdbnd0erU', '2021-12-12 10:28:53', 'admin', '2015-10-15 19:49:21'),
('1020301', 'Customer Receivable', 'Account Receivable', 3, 1, 0, 1, 'A', 0, 0, NULL, NULL, 0.00, 'OpSoxJvBbbS8Rws', '2022-03-30 09:05:46', '', '0000-00-00 00:00:00'),
('40401', 'Depreciation', 'Non Operating Expneses', 2, 1, 1, 1, 'E', 0, 0, NULL, NULL, 0.00, 'ByIUOew8UWnm8dD', '2022-03-30 10:17:37', '', '0000-00-00 00:00:00'),
('401', 'Direct Expenses', 'Expense', 1, 1, 0, 1, 'E', 0, 0, NULL, NULL, 0.00, 'ByIUOew8UWnm8dD', '2022-03-30 05:11:32', '', '0000-00-00 00:00:00'),
('4030502', 'Donation', 'Charity & Donation', 3, 1, 1, 1, 'E', 0, 0, NULL, NULL, 0.00, 'ByIUOew8UWnm8dD', '2022-03-30 10:10:28', '', '0000-00-00 00:00:00'),
('405', 'Drawings', 'Expense', 1, 1, 1, 1, 'E', 0, 0, NULL, NULL, 0.00, 'ByIUOew8UWnm8dD', '2022-03-30 10:34:31', '', '0000-00-00 00:00:00'),
('102010201', 'EBL', 'Cash At Bank', 4, 1, 1, 0, 'A', 0, 0, NULL, NULL, 0.00, 'ByIUOew8UWnm8dD', '2022-04-06 08:51:17', '', '0000-00-00 00:00:00'),
('4031001', 'Electric Bill', 'Utility Expenses', 3, 1, 1, 1, 'E', 0, 0, NULL, NULL, 0.00, 'ByIUOew8UWnm8dD', '2022-03-30 10:15:29', '', '0000-00-00 00:00:00'),
('2', 'Equity', 'COA', 0, 1, 0, 1, 'L', 0, 0, NULL, NULL, 0.00, 'OpSoxJvBbbS8Rws', '2021-05-31 04:28:04', '', '2019-09-05 00:00:00'),
('4', 'Expense', 'COA', 0, 1, 0, 1, 'E', 0, 0, NULL, NULL, 0.00, 'OpSoxJvBbbS8Rws', '2021-06-08 13:11:04', '', '2019-09-05 00:00:00'),
('103', 'Fixed Assets', 'Assets', 1, 1, 0, 1, 'A', 0, 0, NULL, NULL, 0.00, 'OpSoxJvBbbS8Rws', '2022-03-30 07:51:17', '', '0000-00-00 00:00:00'),
('4030902', 'Flyover Toll', 'Transportation', 3, 1, 1, 1, 'E', 0, 0, NULL, NULL, 0.00, 'ByIUOew8UWnm8dD', '2022-03-30 10:14:56', '', '0000-00-00 00:00:00'),
('10301', 'Furniture & Equipment', 'Fixed Assets', 2, 1, 0, 1, 'A', 0, 0, NULL, NULL, 0.00, 'ByIUOew8UWnm8dD', '2022-03-30 10:23:50', '', '0000-00-00 00:00:00'),
('4031002', 'Generator Expenses', 'Utility Expenses', 3, 1, 1, 1, 'E', 0, 0, NULL, NULL, 0.00, 'ByIUOew8UWnm8dD', '2022-03-30 10:15:43', '', '0000-00-00 00:00:00'),
('301', 'I', 'Income', 1, 0, 0, 1, 'I', 0, 0, NULL, NULL, 0.00, 'ByIUOew8UWnm8dD', '2022-03-30 10:24:07', '', '0000-00-00 00:00:00'),
('302', 'ii', 'Income', 1, 0, 0, 1, 'I', 0, 0, NULL, NULL, 0.00, 'ByIUOew8UWnm8dD', '2022-03-30 10:24:23', '', '0000-00-00 00:00:00'),
('3', 'Income', 'COA', 0, 1, 0, 1, 'I', 0, 0, NULL, NULL, 0.00, 'OpSoxJvBbbS8Rws', '2021-06-12 08:27:13', '', '2019-09-05 00:00:00'),
('40306', 'Indirect Expenses', 'Operating Expenses', 2, 1, 0, 1, 'E', 0, 0, NULL, NULL, 0.00, 'ByIUOew8UWnm8dD', '2022-03-30 10:11:00', '', '0000-00-00 00:00:00'),
('4031003', 'Internet Bill', 'Utility Expenses', 3, 1, 1, 1, 'E', 0, 0, NULL, NULL, 0.00, 'ByIUOew8UWnm8dD', '2022-03-30 10:16:01', '', '0000-00-00 00:00:00'),
('10207', 'Inventory', 'Current Asset', 2, 1, 0, 1, 'A', 0, 0, NULL, NULL, 0.00, 'ByIUOew8UWnm8dD', '2022-04-04 04:06:41', '', '0000-00-00 00:00:00'),
('504', 'l', 'Liabilities', 1, 0, 0, 1, 'L', 0, 0, NULL, NULL, 0.00, 'ByIUOew8UWnm8dD', '2022-03-30 10:25:14', '', '0000-00-00 00:00:00'),
('10302', 'Land & Building', 'Fixed Assets', 2, 1, 0, 1, 'A', 0, 0, NULL, NULL, 0.00, 'ByIUOew8UWnm8dD', '2022-03-30 10:27:52', '', '0000-00-00 00:00:00'),
('1030201', 'Land Development', 'Land & Building', 3, 1, 0, 1, 'A', 0, 0, NULL, NULL, 0.00, 'ByIUOew8UWnm8dD', '2022-03-30 10:28:24', '', '0000-00-00 00:00:00'),
('503', 'LC Liabilities', 'Liabilities', 1, 1, 0, 1, 'L', 0, 0, NULL, NULL, 0.00, 'OpSoxJvBbbS8Rws', '2021-10-16 11:30:28', '', '0000-00-00 00:00:00'),
('5', 'Liabilities', 'COA', 0, 1, 0, 1, 'L', 0, 0, NULL, NULL, 0.00, 'OpSoxJvBbbS8Rws', '2021-06-08 13:11:30', 'admin', '2015-10-15 19:46:54'),
('505', 'll', 'Liabilities', 1, 0, 0, 1, 'L', 0, 0, NULL, NULL, 0.00, 'ByIUOew8UWnm8dD', '2022-03-30 10:25:46', '', '0000-00-00 00:00:00'),
('10202', 'LLL', 'Current Asset', 2, 0, 0, 1, 'A', 0, 0, NULL, NULL, 0.00, 'OpSoxJvBbbS8Rws', '2022-03-30 09:34:44', '', '0000-00-00 00:00:00'),
('506', 'lllll', 'Liabilities', 1, 0, 0, 1, 'L', 0, 0, NULL, NULL, 0.00, 'ByIUOew8UWnm8dD', '2022-03-30 10:25:46', '', '0000-00-00 00:00:00'),
('1020502', 'Loan to Associates', 'Other Current Assets', 3, 1, 0, 1, 'A', 0, 0, NULL, NULL, 0.00, 'ByIUOew8UWnm8dD', '2022-03-30 10:22:24', '', '0000-00-00 00:00:00'),
('507', 'Long Term LIabilities', 'Liabilities', 1, 1, 0, 1, 'L', 0, 0, NULL, NULL, 0.00, 'ByIUOew8UWnm8dD', '2022-03-30 10:30:42', '', '0000-00-00 00:00:00'),
('1030104', 'LPG Plant', 'Furniture & Equipment', 3, 1, 1, 1, 'A', 0, 0, NULL, NULL, 0.00, 'ByIUOew8UWnm8dD', '2022-03-30 10:26:57', '', '0000-00-00 00:00:00'),
('102050201', 'Marine Explorers Ltd. (C.L.)', 'Loan to Associates', 4, 1, 1, 1, 'A', 0, 0, NULL, NULL, 0.00, 'ByIUOew8UWnm8dD', '2022-03-30 10:22:57', '', '0000-00-00 00:00:00'),
('4030602', 'Meals & Entertainment', 'Indirect Expenses', 3, 1, 1, 1, 'E', 0, 0, NULL, NULL, 0.00, 'ByIUOew8UWnm8dD', '2022-03-30 10:12:11', '', '0000-00-00 00:00:00'),
('4030201', 'Medical Fund', 'Allowance and Benefits', 3, 1, 1, 1, 'E', 0, 0, NULL, NULL, 0.00, 'ByIUOew8UWnm8dD', '2022-03-30 10:08:37', '', '0000-00-00 00:00:00'),
('30401', 'Misc. Income', 'Non Operating Incomes', 2, 1, 1, 1, 'I', 0, 0, NULL, NULL, 0.00, 'ByIUOew8UWnm8dD', '2022-03-30 10:19:17', '', '0000-00-00 00:00:00'),
('4030603', 'Newspaper & Magazine', 'Indirect Expenses', 3, 1, 1, 1, 'E', 0, 0, NULL, NULL, 0.00, 'ByIUOew8UWnm8dD', '2022-03-30 10:12:29', '', '0000-00-00 00:00:00'),
('404', 'Non Operating Expneses', 'Expense', 1, 1, 0, 1, 'E', 0, 0, NULL, NULL, 0.00, 'ByIUOew8UWnm8dD', '2022-03-30 10:17:07', '', '0000-00-00 00:00:00'),
('304', 'Non Operating Incomes', 'Income', 1, 1, 0, 1, 'I', 0, 0, NULL, NULL, 0.00, 'ByIUOew8UWnm8dD', '2022-03-30 10:18:58', '', '2019-09-05 00:00:00'),
('5070101', 'OD AL-Mahmud 9748', 'Bank Loan', 3, 1, 1, 1, 'L', 0, 0, NULL, NULL, 0.00, 'ByIUOew8UWnm8dD', '2022-03-30 10:31:28', '', '0000-00-00 00:00:00'),
('4030702', 'Office Maintenance', 'Repairs & Maintenance', 3, 1, 1, 1, 'E', 0, 0, NULL, NULL, 0.00, 'ByIUOew8UWnm8dD', '2022-03-30 10:13:44', '', '0000-00-00 00:00:00'),
('1030105', 'Oil Machine', 'Furniture & Equipment', 3, 1, 1, 1, 'A', 0, 0, NULL, NULL, 0.00, 'ByIUOew8UWnm8dD', '2022-03-30 10:27:10', '', '0000-00-00 00:00:00'),
('10208', 'Opening Inventory', 'Current Asset', 2, 0, 0, 1, 'A', 0, 0, NULL, NULL, 0.00, 'ByIUOew8UWnm8dD', '2022-04-13 09:42:51', '', '0000-00-00 00:00:00'),
('403', 'Operating Expenses', 'Expense', 1, 1, 0, 1, 'E', 0, 0, NULL, NULL, 0.00, 'ByIUOew8UWnm8dD', '2022-03-30 09:57:35', '', '0000-00-00 00:00:00'),
('10205', 'Other Current Assets', 'Current Asset', 2, 1, 0, 1, 'A', 0, 0, NULL, NULL, 0.00, 'ByIUOew8UWnm8dD', '2022-03-30 10:20:11', '', '0000-00-00 00:00:00'),
('501', 'Other Liabilities', 'Liabilities', 1, 1, 0, 1, 'L', 0, 0, NULL, NULL, 0.00, 'ByIUOew8UWnm8dD', '2022-03-30 10:32:09', 'admin', '2015-10-15 19:49:21'),
('4030202', 'Overtime', 'Allowance and Benefits', 3, 1, 1, 1, 'E', 0, 0, NULL, NULL, 0.00, 'ByIUOew8UWnm8dD', '2022-03-30 10:08:52', '', '0000-00-00 00:00:00'),
('201', 'Owner\'s Equity', 'Equity', 1, 1, 1, 1, 'L', 0, 0, NULL, NULL, 0.00, 'ByIUOew8UWnm8dD', '2022-03-30 10:35:48', '', '0000-00-00 00:00:00'),
('102050202', 'Paradise Autos (C.L.)', 'Loan to Associates', 4, 1, 1, 1, 'A', 0, 0, NULL, NULL, 0.00, 'ByIUOew8UWnm8dD', '2022-03-30 10:23:28', '', '0000-00-00 00:00:00'),
('4030101', 'Printing & Stationary', 'Administrative Expenses', 3, 1, 1, 1, 'E', 0, 0, NULL, NULL, 0.00, 'ByIUOew8UWnm8dD', '2022-03-30 09:58:05', '', '0000-00-00 00:00:00'),
('402', 'Product Purchase', 'Expense', 1, 1, 0, 1, 'E', 0, 0, NULL, NULL, 0.00, 'ByIUOew8UWnm8dD', '2022-03-30 05:11:50', '', '0000-00-00 00:00:00'),
('303', 'Product Sale', 'Income', 1, 1, 1, 1, 'I', 0, 0, NULL, NULL, 0.00, 'OpSoxJvBbbS8Rws', '2021-09-25 10:36:00', '', '2019-09-05 00:00:00'),
('40307', 'Repairs & Maintenance', 'Operating Expenses', 2, 1, 0, 1, 'E', 0, 0, NULL, NULL, 0.00, 'ByIUOew8UWnm8dD', '2022-03-30 10:13:18', '', '0000-00-00 00:00:00'),
('202', 'Retained Earnings', 'Equity', 1, 1, 1, 1, 'L', 0, 0, NULL, NULL, 0.00, 'ByIUOew8UWnm8dD', '2022-03-30 10:36:07', '', '0000-00-00 00:00:00'),
('40308', 'Salaries & Employee Wages', 'Operating Expenses', 2, 1, 1, 1, 'E', 0, 0, NULL, NULL, 0.00, 'ByIUOew8UWnm8dD', '2022-03-30 10:14:01', '', '0000-00-00 00:00:00'),
('50702', 'Security Money Received', 'Long Term LIabilities', 2, 1, 1, 1, 'L', 0, 0, NULL, NULL, 0.00, 'ByIUOew8UWnm8dD', '2022-03-30 10:31:49', '', '0000-00-00 00:00:00'),
('101', 'T Asset', 'Assets', 1, 0, 0, 1, 'A', 0, 0, NULL, NULL, 0.00, 'OpSoxJvBbbS8Rws', '2022-03-30 09:15:27', '', '0000-00-00 00:00:00'),
('4031004', 'Telephone and Mobile Bill', 'Utility Expenses', 3, 1, 1, 1, 'E', 0, 0, NULL, NULL, 0.00, 'ByIUOew8UWnm8dD', '2022-03-30 10:16:17', '', '0000-00-00 00:00:00'),
('10204', 'Test Head', 'Current Asset', 2, 0, 0, 1, 'A', 0, 0, NULL, NULL, 0.00, 'OpSoxJvBbbS8Rws', '2022-03-30 09:23:24', '', '0000-00-00 00:00:00'),
('4031005', 'Tracking Bill', 'Utility Expenses', 3, 1, 1, 1, 'E', 0, 0, NULL, NULL, 0.00, 'ByIUOew8UWnm8dD', '2022-03-30 10:16:35', '', '0000-00-00 00:00:00'),
('40309', 'Transportation', 'Operating Expenses', 2, 1, 0, 1, 'E', 0, 0, NULL, NULL, 0.00, 'ByIUOew8UWnm8dD', '2022-03-30 10:14:14', '', '0000-00-00 00:00:00'),
('4030604', 'Uniform', 'Indirect Expenses', 3, 1, 1, 1, 'E', 0, 0, NULL, NULL, 0.00, 'ByIUOew8UWnm8dD', '2022-03-30 10:12:47', '', '0000-00-00 00:00:00'),
('40310', 'Utility Expenses', 'Operating Expenses', 2, 1, 0, 1, 'E', 0, 0, NULL, NULL, 0.00, 'ByIUOew8UWnm8dD', '2022-03-30 10:15:14', '', '0000-00-00 00:00:00'),
('4031006', 'Wasa Bill', 'Utility Expenses', 3, 1, 0, 1, 'E', 0, 0, NULL, NULL, 0.00, 'ByIUOew8UWnm8dD', '2022-03-30 10:16:49', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `acc_transaction`
--

CREATE TABLE `acc_transaction` (
  `ID` int(11) NOT NULL,
  `VNo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cheque_id` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Vtype` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VDate` date DEFAULT NULL,
  `COAID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Narration` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `Debit` decimal(18,2) DEFAULT NULL,
  `Credit` decimal(18,2) DEFAULT NULL,
  `IsPosted` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreateBy` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `CreateDate` datetime DEFAULT NULL,
  `UpdateBy` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UpdateDate` datetime DEFAULT NULL,
  `IsAppove` char(10) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `acc_transaction`
--

INSERT INTO `acc_transaction` (`ID`, `VNo`, `cheque_id`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES
(1, '1234', NULL, 'Purchase', '2022-08-10', '10107', 'Inventory Debit For Supplier S.S. Enterprise', 800.00, 0.00, '1', 'BVv5Axt7rgo5CWU', '2022-08-10 10:52:43', NULL, NULL, '1'),
(2, '1234', NULL, 'Purchase', '2022-08-10', '50205000001', 'Supplier -S.S. Enterprise', 0.00, 800.00, '1', 'BVv5Axt7rgo5CWU', '2022-08-10 00:00:00', NULL, NULL, '1'),
(3, '1234', NULL, 'Purchase', '2022-08-10', '402', 'Company Debit For SupplierS.S. Enterprise', 800.00, 0.00, '1', 'BVv5Axt7rgo5CWU', '2022-08-10 10:52:43', NULL, NULL, '1'),
(4, '', NULL, 'Purchase', '2022-08-10', '10107', 'Inventory Debit For Supplier S.S. Hardware', 216.00, 0.00, '1', 'BVv5Axt7rgo5CWU', '2022-08-10 10:52:43', NULL, NULL, '1'),
(5, '', NULL, 'Purchase', '2022-08-10', '50205000001', 'Supplier -S.S. Hardware', 0.00, 216.00, '1', 'BVv5Axt7rgo5CWU', '2022-08-10 00:00:00', NULL, NULL, '1'),
(6, '', NULL, 'Purchase', '2022-08-10', '402', 'Company Debit For SupplierS.S. Hardware', 216.00, 0.00, '1', 'BVv5Axt7rgo5CWU', '2022-08-10 10:52:43', NULL, NULL, '1'),
(7, '', NULL, 'Purchase', '2022-08-10', '10107', 'Inventory Debit For Supplier M/S Halima Iron Mart', 156.00, 0.00, '1', 'BVv5Axt7rgo5CWU', '2022-08-10 10:52:43', NULL, NULL, '1'),
(8, '', NULL, 'Purchase', '2022-08-10', '50205000001', 'Supplier -M/S Halima Iron Mart', 0.00, 156.00, '1', 'BVv5Axt7rgo5CWU', '2022-08-10 00:00:00', NULL, NULL, '1'),
(9, '', NULL, 'Purchase', '2022-08-10', '402', 'Company Debit For SupplierM/S Halima Iron Mart', 156.00, 0.00, '1', 'BVv5Axt7rgo5CWU', '2022-08-10 10:52:43', NULL, NULL, '1'),
(10, '', NULL, 'Purchase', '2022-08-10', '10107', 'Inventory Debit For Supplier Mohanagar Traders', 85.00, 0.00, '1', 'BVv5Axt7rgo5CWU', '2022-08-10 10:52:43', NULL, NULL, '1'),
(11, '', NULL, 'Purchase', '2022-08-10', '50205000001', 'Supplier -Mohanagar Traders', 0.00, 85.00, '1', 'BVv5Axt7rgo5CWU', '2022-08-10 00:00:00', NULL, NULL, '1'),
(12, '', NULL, 'Purchase', '2022-08-10', '402', 'Company Debit For SupplierMohanagar Traders', 85.00, 0.00, '1', 'BVv5Axt7rgo5CWU', '2022-08-10 10:52:43', NULL, NULL, '1'),
(13, '', NULL, 'Purchase', '2022-08-10', '10107', 'Inventory Debit For Supplier S.S. Hardware', 312.00, 0.00, '1', 'BVv5Axt7rgo5CWU', '2022-08-10 10:52:43', NULL, NULL, '1'),
(14, '', NULL, 'Purchase', '2022-08-10', '50205000001', 'Supplier -S.S. Hardware', 0.00, 312.00, '1', 'BVv5Axt7rgo5CWU', '2022-08-10 00:00:00', NULL, NULL, '1'),
(15, '', NULL, 'Purchase', '2022-08-10', '402', 'Company Debit For SupplierS.S. Hardware', 312.00, 0.00, '1', 'BVv5Axt7rgo5CWU', '2022-08-10 10:52:43', NULL, NULL, '1'),
(16, '', NULL, 'Purchase', '2022-08-10', '10107', 'Inventory Debit For Supplier Dhaka Machinery', 1450.00, 0.00, '1', 'BVv5Axt7rgo5CWU', '2022-08-10 10:52:43', NULL, NULL, '1'),
(17, '', NULL, 'Purchase', '2022-08-10', '50205000001', 'Supplier -Dhaka Machinery', 0.00, 1450.00, '1', 'BVv5Axt7rgo5CWU', '2022-08-10 00:00:00', NULL, NULL, '1'),
(18, '', NULL, 'Purchase', '2022-08-10', '402', 'Company Debit For SupplierDhaka Machinery', 1450.00, 0.00, '1', 'BVv5Axt7rgo5CWU', '2022-08-10 10:52:43', NULL, NULL, '1'),
(19, '', NULL, 'Purchase', '2022-08-10', '10107', 'Inventory Debit For Supplier Mohanagar Traders', 200.00, 0.00, '1', 'BVv5Axt7rgo5CWU', '2022-08-10 10:52:43', NULL, NULL, '1'),
(20, '', NULL, 'Purchase', '2022-08-10', '50205000001', 'Supplier -Mohanagar Traders', 0.00, 200.00, '1', 'BVv5Axt7rgo5CWU', '2022-08-10 00:00:00', NULL, NULL, '1'),
(21, '', NULL, 'Purchase', '2022-08-10', '402', 'Company Debit For SupplierMohanagar Traders', 200.00, 0.00, '1', 'BVv5Axt7rgo5CWU', '2022-08-10 10:52:43', NULL, NULL, '1'),
(22, '', NULL, 'Purchase', '2022-08-10', '10107', 'Inventory Debit For Supplier M/S Rubel Enterprise', 2220.00, 0.00, '1', 'BVv5Axt7rgo5CWU', '2022-08-10 10:52:43', NULL, NULL, '1'),
(23, '', NULL, 'Purchase', '2022-08-10', '50205000001', 'Supplier -M/S Rubel Enterprise', 0.00, 2220.00, '1', 'BVv5Axt7rgo5CWU', '2022-08-10 00:00:00', NULL, NULL, '1'),
(24, '', NULL, 'Purchase', '2022-08-10', '402', 'Company Debit For SupplierM/S Rubel Enterprise', 2220.00, 0.00, '1', 'BVv5Axt7rgo5CWU', '2022-08-10 10:52:43', NULL, NULL, '1'),
(25, '', NULL, 'Purchase', '2022-08-10', '10107', 'Inventory Debit For Supplier Mohanagar Traders', 360.00, 0.00, '1', 'BVv5Axt7rgo5CWU', '2022-08-10 10:52:43', NULL, NULL, '1'),
(26, '', NULL, 'Purchase', '2022-08-10', '50205000001', 'Supplier -Mohanagar Traders', 0.00, 360.00, '1', 'BVv5Axt7rgo5CWU', '2022-08-10 00:00:00', NULL, NULL, '1'),
(27, '', NULL, 'Purchase', '2022-08-10', '402', 'Company Debit For SupplierMohanagar Traders', 360.00, 0.00, '1', 'BVv5Axt7rgo5CWU', '2022-08-10 10:52:43', NULL, NULL, '1'),
(28, '202208101109', NULL, 'INV', '2022-08-10', '10206', 'Closing Inventory Value', 0.00, 0.00, '1', 'BVv5Axt7rgo5CWU', '2022-08-10 11:12:09', NULL, NULL, '1');

-- --------------------------------------------------------

--
-- Table structure for table `app_setting`
--

CREATE TABLE `app_setting` (
  `id` int(11) NOT NULL,
  `localhserver` varchar(250) DEFAULT NULL,
  `onlineserver` varchar(250) DEFAULT NULL,
  `hotspot` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `app_setting`
--

INSERT INTO `app_setting` (`id`, `localhserver`, `onlineserver`, `hotspot`) VALUES
(1, 'https://www.devenport.co/erp', 'https://www.devenport.co/erp', 'https://192.168.1.167/saleserp');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `att_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `sign_in` varchar(30) NOT NULL,
  `sign_out` varchar(30) NOT NULL,
  `staytime` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`att_id`, `employee_id`, `date`, `sign_in`, `sign_out`, `staytime`) VALUES
(1, 1, '2020-09-06', '02:49 AM', '', ''),
(3, 2, '2021-01-30', '12:54 PM', '12:57 PM', '00:03');

-- --------------------------------------------------------

--
-- Table structure for table `bank_add`
--

CREATE TABLE `bank_add` (
  `id` int(11) NOT NULL,
  `bank_id` varchar(255) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `ac_name` varchar(250) DEFAULT NULL,
  `ac_number` varchar(250) DEFAULT NULL,
  `branch` varchar(250) DEFAULT NULL,
  `signature_pic` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `barcode_print`
--

CREATE TABLE `barcode_print` (
  `id` int(255) NOT NULL,
  `barcode_id` varchar(255) DEFAULT NULL,
  `stock_in_date` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `barcode_print_details`
--

CREATE TABLE `barcode_print_details` (
  `id` int(255) NOT NULL,
  `barcode_id` varchar(255) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `aisle_no` varchar(255) DEFAULT NULL,
  `shelf_no` varchar(255) DEFAULT NULL,
  `bin_no` varchar(255) DEFAULT NULL,
  `barcode_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bill_details`
--

CREATE TABLE `bill_details` (
  `id` int(255) NOT NULL,
  `po_order` varchar(255) DEFAULT NULL,
  `bill_no` varchar(255) DEFAULT NULL,
  `bill_image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bkash_add`
--

CREATE TABLE `bkash_add` (
  `id` int(255) NOT NULL,
  `bkash_id` varchar(255) NOT NULL,
  `ac_name` varchar(255) NOT NULL,
  `bkash_no` varchar(255) NOT NULL,
  `bkash_type` varchar(255) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `branch_name`
--

CREATE TABLE `branch_name` (
  `id` int(255) NOT NULL,
  `branch_id` varchar(255) NOT NULL,
  `courier_id` varchar(255) NOT NULL,
  `branch_name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `central_warehouse`
--

CREATE TABLE `central_warehouse` (
  `id` int(255) NOT NULL,
  `warehouse_id` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `central_warehouse` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `status` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `central_warehouse`
--

INSERT INTO `central_warehouse` (`id`, `warehouse_id`, `central_warehouse`, `status`) VALUES
(1, 'HK7TGDT69VFMXB7', 'Central Warehouse', 1);

-- --------------------------------------------------------

--
-- Table structure for table `company_information`
--

CREATE TABLE `company_information` (
  `company_id` varchar(250) NOT NULL,
  `company_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `email2` varchar(1000) DEFAULT NULL,
  `address` text NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `phone` varchar(1000) DEFAULT NULL,
  `website` varchar(50) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `company_information`
--

INSERT INTO `company_information` (`company_id`, `company_name`, `email`, `email2`, `address`, `mobile`, `phone`, `website`, `status`) VALUES
('1', 'Paradise Marine Traders', 'paradise@gmail.com', 'paradise@gmail.com', '17/2, Topkhana Road (2nd Floor) Dhaka – 1000, Bangladesh.', '01822911624', '01467754378', 'https://www.paradisemarine.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `courier_name`
--

CREATE TABLE `courier_name` (
  `id` int(255) NOT NULL,
  `courier_id` varchar(255) NOT NULL,
  `courier_name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `currency_tbl`
--

CREATE TABLE `currency_tbl` (
  `id` int(11) NOT NULL,
  `currency_name` varchar(50) NOT NULL,
  `icon` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `currency_tbl`
--

INSERT INTO `currency_tbl` (`id`, `currency_name`, `icon`) VALUES
(1, 'Dollar', '$'),
(2, 'BDT', 'Tk'),
(3, 'EURO', 'EURO'),
(4, 'SGD', 'SGD'),
(5, 'THB', 'THB'),
(6, 'INR', 'INR'),
(7, 'CNY', 'CNY');

-- --------------------------------------------------------

--
-- Table structure for table `customer_information`
--

CREATE TABLE `customer_information` (
  `customer_id` bigint(20) NOT NULL,
  `customer_id_two` varchar(255) DEFAULT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `customer_address` varchar(255) DEFAULT NULL,
  `address2` text DEFAULT NULL,
  `customer_mobile` varchar(100) DEFAULT NULL,
  `customer_email` varchar(100) DEFAULT NULL,
  `email_address` varchar(200) DEFAULT NULL,
  `contact` varchar(100) DEFAULT NULL,
  `contact_person` varchar(1000) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `fax` varchar(100) DEFAULT NULL,
  `city` text DEFAULT NULL,
  `state` text DEFAULT NULL,
  `zip` varchar(50) DEFAULT NULL,
  `country` varchar(250) DEFAULT NULL,
  `discount_customer` int(255) DEFAULT NULL,
  `website` varchar(1000) DEFAULT NULL,
  `status` int(2) DEFAULT NULL COMMENT '1=paid,2=credit',
  `create_date` timestamp NULL DEFAULT current_timestamp(),
  `create_by` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer_information`
--

INSERT INTO `customer_information` (`customer_id`, `customer_id_two`, `customer_name`, `customer_address`, `address2`, `customer_mobile`, `customer_email`, `email_address`, `contact`, `contact_person`, `phone`, `fax`, `city`, `state`, `zip`, `country`, `discount_customer`, `website`, `status`, `create_date`, `create_by`) VALUES
(1, NULL, 'Marine Explorers Ltd.', '', NULL, NULL, 'mahmudgroup@gmail.com', NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2022-08-10 10:23:34', 'BVv5Axt7rgo5CWU');

-- --------------------------------------------------------

--
-- Table structure for table `customer_vessel`
--

CREATE TABLE `customer_vessel` (
  `id` int(255) NOT NULL,
  `customer_id` varchar(255) DEFAULT NULL,
  `vessel_full_name` varchar(255) DEFAULT NULL,
  `vessel_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer_vessel`
--

INSERT INTO `customer_vessel` (`id`, `customer_id`, `vessel_full_name`, `vessel_name`) VALUES
(1, '1', 'Maritime 1', 'MT1'),
(2, '1', 'Maritime 2', 'MT2'),
(3, '1', 'Maritime 5', 'MT5'),
(4, '1', 'Sungthon', 'ST');

-- --------------------------------------------------------

--
-- Table structure for table `cus_cheque`
--

CREATE TABLE `cus_cheque` (
  `id` int(11) NOT NULL,
  `invoice_id` varchar(255) DEFAULT NULL,
  `cheque_id` varchar(1000) DEFAULT NULL,
  `cheque_type` varchar(255) DEFAULT NULL,
  `cheque_no` varchar(255) DEFAULT NULL,
  `cheque_date` varchar(255) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `payment_date` varchar(1000) DEFAULT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `daily_banking_add`
--

CREATE TABLE `daily_banking_add` (
  `banking_id` varchar(255) NOT NULL,
  `date` datetime DEFAULT NULL,
  `bank_id` varchar(100) DEFAULT NULL,
  `deposit_type` varchar(255) DEFAULT NULL,
  `transaction_type` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `status` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `daily_closing`
--

CREATE TABLE `daily_closing` (
  `closing_id` varchar(255) NOT NULL,
  `last_day_closing` float NOT NULL,
  `cash_in` float NOT NULL,
  `cash_out` float NOT NULL,
  `date` varchar(250) NOT NULL,
  `amount` float NOT NULL,
  `adjustment` float DEFAULT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `designation`
--

CREATE TABLE `designation` (
  `id` int(11) NOT NULL,
  `designation` varchar(150) NOT NULL,
  `details` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `email_config`
--

CREATE TABLE `email_config` (
  `id` int(11) NOT NULL,
  `protocol` text NOT NULL,
  `smtp_host` text NOT NULL,
  `smtp_port` text NOT NULL,
  `smtp_user` varchar(35) NOT NULL,
  `smtp_pass` varchar(35) NOT NULL,
  `mailtype` varchar(30) DEFAULT NULL,
  `isinvoice` tinyint(4) NOT NULL,
  `isservice` tinyint(4) NOT NULL,
  `isquotation` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_config`
--

INSERT INTO `email_config` (`id`, `protocol`, `smtp_host`, `smtp_port`, `smtp_user`, `smtp_pass`, `mailtype`, `isinvoice`, `isservice`, `isquotation`) VALUES
(1, 'smtp', 'smtp.gmail.com', '25', 'devenportbd@gmail.com', '5million$', 'html', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `employee_academic`
--

CREATE TABLE `employee_academic` (
  `ac_id` int(255) NOT NULL,
  `employee_id` varchar(255) DEFAULT NULL,
  `degree` varchar(255) DEFAULT NULL,
  `institution` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `passing_year` varchar(255) DEFAULT NULL,
  `result` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee_academic`
--

INSERT INTO `employee_academic` (`ac_id`, `employee_id`, `degree`, `institution`, `subject`, `passing_year`, `result`) VALUES
(51, 'GMEBD002', 'SSC', 'HPHS', 'Science', '2012', 5.00),
(52, 'GMEBD002', 'HSC', 'CUC', 'ARTS', '2014', 5.00);

-- --------------------------------------------------------

--
-- Table structure for table `employee_ex`
--

CREATE TABLE `employee_ex` (
  `ex_id` int(255) NOT NULL,
  `employee_id` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `des` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee_ex`
--

INSERT INTO `employee_ex` (`ex_id`, `employee_id`, `company`, `des`, `duration`) VALUES
(34, 'GMEBD002', '3S', 'Software Engineer', '3 years'),
(35, 'GMEBD002', 'KDAIT', 'Software Engineer', '3 years');

-- --------------------------------------------------------

--
-- Table structure for table `employee_history`
--

CREATE TABLE `employee_history` (
  `id` int(11) NOT NULL,
  `employee_id` varchar(255) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `designation` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `rate_type` int(11) DEFAULT NULL,
  `hrate` float DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `blood_group` varchar(10) DEFAULT NULL,
  `address_line_1` text DEFAULT NULL,
  `address_line_2` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `zip` varchar(50) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `age` varchar(255) DEFAULT NULL,
  `training` varchar(1000) DEFAULT NULL,
  `father_name` varchar(255) DEFAULT NULL,
  `mother_name` varchar(255) DEFAULT NULL,
  `nid_number` varchar(1000) DEFAULT NULL,
  `nominee_name` varchar(255) DEFAULT NULL,
  `nominee_nid` varchar(1000) DEFAULT NULL,
  `nominee_image` varchar(1000) DEFAULT NULL,
  `nominee_phone` varchar(255) DEFAULT NULL,
  `gua_name` varchar(255) DEFAULT NULL,
  `gua_nid` varchar(1000) DEFAULT NULL,
  `gua_profession` varchar(255) DEFAULT NULL,
  `gua_image` varchar(1000) DEFAULT NULL,
  `gua_phone` varchar(1000) DEFAULT NULL,
  `fam_name` varchar(255) DEFAULT NULL,
  `fam_nid` varchar(255) DEFAULT NULL,
  `fam_profession` varchar(255) DEFAULT NULL,
  `fam_relation` varchar(255) DEFAULT NULL,
  `fam_image` varchar(255) DEFAULT NULL,
  `fam_phone` varchar(255) DEFAULT NULL,
  `dar` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee_history`
--

INSERT INTO `employee_history` (`id`, `employee_id`, `first_name`, `last_name`, `designation`, `phone`, `dob`, `rate_type`, `hrate`, `email`, `blood_group`, `address_line_1`, `address_line_2`, `image`, `country`, `city`, `zip`, `department`, `age`, `training`, `father_name`, `mother_name`, `nid_number`, `nominee_name`, `nominee_nid`, `nominee_image`, `nominee_phone`, `gua_name`, `gua_nid`, `gua_profession`, `gua_image`, `gua_phone`, `fam_name`, `fam_nid`, `fam_profession`, `fam_relation`, `fam_image`, `fam_phone`, `dar`) VALUES
(25, 'GMEBD002', 'Arman', 'Ullah', '2', '88', '2021-03-23', 1, 44, 'sunny@gmail.com', 'A+', 're', 'df', 'https://localhost/gmebd/gmebd/my-assets/image/employee/40fce6f084164ab9c85f163dc70768eb.jpeg', 'Australia', 'Chittagong', '4330', 'CSE', '34', 'PHP', 'Jainal Abedin', 'SHahjin', '7766889', 'Uthas', '979774553', NULL, '56', 'ADDDD', '4657657657', 'AA', 'https://localhost/gmebd/gmebd/my-assets/image/employee/3460eda292c4289cecb674e816353009.jpeg', '5435435', 'Ahasan', '456789', 'Software Developer', 'Brother', 'https://localhost/gmebd/gmebd/my-assets/image/employee/77f2e57e1e0b5ed3ffaf842f8bbfe6df.png', '543543501787291675', 'gfhgfhfg');

-- --------------------------------------------------------

--
-- Table structure for table `employee_salary_payment`
--

CREATE TABLE `employee_salary_payment` (
  `emp_sal_pay_id` int(11) NOT NULL,
  `generate_id` int(11) NOT NULL,
  `employee_id` varchar(50) CHARACTER SET latin1 NOT NULL,
  `total_salary` decimal(18,2) NOT NULL DEFAULT 0.00,
  `total_working_minutes` varchar(50) CHARACTER SET latin1 NOT NULL,
  `working_period` varchar(50) CHARACTER SET latin1 NOT NULL,
  `payment_due` varchar(50) CHARACTER SET latin1 NOT NULL,
  `payment_date` varchar(50) CHARACTER SET latin1 NOT NULL,
  `paid_by` varchar(50) CHARACTER SET latin1 NOT NULL,
  `salary_month` varchar(70) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee_salary_payment`
--

INSERT INTO `employee_salary_payment` (`emp_sal_pay_id`, `generate_id`, `employee_id`, `total_salary`, `total_working_minutes`, `working_period`, `payment_due`, `payment_date`, `paid_by`, `salary_month`) VALUES
(3, 5, '2', 60000.00, '0', '0', 'paid', '2021-01-28', 'Global Medical', 'January 2021');

-- --------------------------------------------------------

--
-- Table structure for table `employee_salary_setup`
--

CREATE TABLE `employee_salary_setup` (
  `e_s_s_id` int(11) UNSIGNED NOT NULL,
  `employee_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `sal_type` varchar(30) NOT NULL,
  `salary_type_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `amount` decimal(12,2) NOT NULL DEFAULT 0.00,
  `create_date` date DEFAULT NULL,
  `update_date` datetime(6) DEFAULT NULL,
  `update_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `gross_salary` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee_salary_setup`
--

INSERT INTO `employee_salary_setup` (`e_s_s_id`, `employee_id`, `sal_type`, `salary_type_id`, `amount`, `create_date`, `update_date`, `update_id`, `gross_salary`) VALUES
(5, '2', '2', '4', 50.00, '2021-01-28', NULL, '', 60000),
(6, '2', '2', '5', 25.00, '2021-01-28', NULL, '', 60000),
(7, '2', '2', '6', 25.00, '2021-01-28', NULL, '', 60000),
(8, '2', '2', '7', 0.00, '2021-01-28', NULL, '', 60000);

-- --------------------------------------------------------

--
-- Table structure for table `employee_tr`
--

CREATE TABLE `employee_tr` (
  `tr_id` int(255) NOT NULL,
  `employee_id` varchar(255) DEFAULT NULL,
  `tr_centre` varchar(255) DEFAULT NULL,
  `tr_name` varchar(255) DEFAULT NULL,
  `tr_duration` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee_tr`
--

INSERT INTO `employee_tr` (`tr_id`, `employee_id`, `tr_centre`, `tr_name`, `tr_duration`) VALUES
(32, 'GMEBD002', 'BITM', 'Laravel,React', '3 month'),
(33, 'GMEBD002', 'BITM', 'PHP', '3 month');

-- --------------------------------------------------------

--
-- Table structure for table `erp_entry_details`
--

CREATE TABLE `erp_entry_details` (
  `entry_id` int(255) NOT NULL,
  `po_order` varchar(255) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `unit_price` varchar(255) DEFAULT NULL,
  `supplier_id` varchar(255) DEFAULT NULL,
  `received_status` varchar(255) DEFAULT NULL,
  `return_qty` varchar(255) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `bill_no` varchar(255) DEFAULT NULL,
  `bill_image` varchar(255) DEFAULT NULL,
  `aisle_no` varchar(255) DEFAULT NULL,
  `shelf_no` varchar(255) DEFAULT NULL,
  `bin_no` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `isAprv` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `erp_entry_details`
--

INSERT INTO `erp_entry_details` (`entry_id`, `po_order`, `product_id`, `quantity`, `unit_price`, `supplier_id`, `received_status`, `return_qty`, `remarks`, `bill_no`, `bill_image`, `aisle_no`, `shelf_no`, `bin_no`, `date`, `isAprv`) VALUES
(1, '20220405045331', '81778739', '25', '750.00', '70', 'Received', '', '', '78952', NULL, '', '', '', '2022-04-05', 1),
(2, '20220405045331', '28594387', '25', '40.00', '49', 'Received', '', '', '25987', NULL, '', '', '', '2022-04-05', 1),
(3, '20220522102129', '88982932', '2', '900.00', '18', 'Received', '', '', '1122', NULL, '', '', '', '2022-05-22', 1),
(4, '20220522102129', '23233633', '10', '250.00', '70', 'Received', '', '', '1112', NULL, '', '', '', '2022-05-22', 1),
(5, '20220522102129', '18123355', '10', '10.00', '40', 'Received', '', '', '1111', NULL, '', '', '', '2022-05-22', 1),
(6, '20220525084815', '94716333', '1', '210.00', '40', 'Received', '', '', '11121', NULL, '', '', '', '2022-05-25', 1),
(7, '20220526123724', '94853342', '100', '15.00', '40', 'Received', '', '', '1212', NULL, '', '', '', '2022-05-26', 1);

-- --------------------------------------------------------

--
-- Table structure for table `expense`
--

CREATE TABLE `expense` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `type` varchar(100) NOT NULL,
  `voucher_no` varchar(50) NOT NULL,
  `amount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `expense_item`
--

CREATE TABLE `expense_item` (
  `id` int(11) NOT NULL,
  `expense_item_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `id` int(30) NOT NULL,
  `invoice_id` bigint(20) NOT NULL,
  `customer_id` varchar(255) NOT NULL,
  `vessel_name` varchar(255) DEFAULT NULL,
  `customer_name_two` varchar(255) DEFAULT NULL,
  `customer_mobile_two` varchar(255) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `chalan_date` varchar(255) DEFAULT NULL,
  `total_amount` decimal(18,2) NOT NULL DEFAULT 0.00,
  `paid_amount` decimal(18,2) NOT NULL DEFAULT 0.00,
  `due_amount` decimal(18,2) NOT NULL DEFAULT 0.00,
  `prevous_due` decimal(20,2) NOT NULL DEFAULT 0.00,
  `shipping_cost` decimal(10,2) NOT NULL DEFAULT 0.00,
  `invoice` varchar(255) DEFAULT NULL,
  `invoice_no` varchar(255) DEFAULT NULL,
  `dc_no` varchar(255) DEFAULT NULL,
  `rqsn_id` varchar(255) DEFAULT NULL,
  `contact_person` varchar(255) DEFAULT NULL,
  `contact_no` varchar(255) DEFAULT NULL,
  `invoice_discount` decimal(10,2) DEFAULT 0.00 COMMENT 'invoice discount',
  `total_discount` decimal(10,2) DEFAULT 0.00 COMMENT 'total invoice discount',
  `total_tax` decimal(10,2) DEFAULT 0.00,
  `other_charges` decimal(10,2) DEFAULT NULL,
  `sub_total` decimal(10,2) DEFAULT NULL,
  `sales_by` varchar(50) NOT NULL,
  `invoice_details` text NOT NULL,
  `status` int(2) NOT NULL,
  `is_so_sold` int(11) DEFAULT NULL,
  `is_dc_pending` int(11) DEFAULT NULL,
  `is_so_pending` int(11) DEFAULT NULL,
  `bank_id` varchar(30) DEFAULT NULL,
  `bkash_id` varchar(255) DEFAULT NULL,
  `payment_type` int(11) NOT NULL,
  `delivery_type` int(11) NOT NULL,
  `courier_id` varchar(255) DEFAULT NULL,
  `branch_id` varchar(255) DEFAULT NULL,
  `received_by` varchar(255) DEFAULT NULL,
  `delivered_by` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`id`, `invoice_id`, `customer_id`, `vessel_name`, `customer_name_two`, `customer_mobile_two`, `date`, `chalan_date`, `total_amount`, `paid_amount`, `due_amount`, `prevous_due`, `shipping_cost`, `invoice`, `invoice_no`, `dc_no`, `rqsn_id`, `contact_person`, `contact_no`, `invoice_discount`, `total_discount`, `total_tax`, `other_charges`, `sub_total`, `sales_by`, `invoice_details`, `status`, `is_so_sold`, `is_dc_pending`, `is_so_pending`, `bank_id`, `bkash_id`, `payment_type`, `delivery_type`, `courier_id`, `branch_id`, `received_by`, `delivered_by`) VALUES
(1, 9794411957, '6', 'MT2', NULL, NULL, '2022-05-22', '2022-05-22', 4770.00, 4770.00, 0.00, 0.00, 0.00, 'MT213-SV1', 'MT213-SO1', 'MT213-DC1', '769646055', '', '', 0.00, 150.00, 0.00, 100.00, 4820.00, '', '', 4, 1, 0, 1, NULL, NULL, 1, 0, NULL, NULL, 'Azmir Hossain', 'Rony'),
(2, 8474729927, '6', 'MT1', NULL, NULL, '2022-05-25', '2022-05-25', 240.00, 240.00, 0.00, 0.00, 0.00, 'MT14-SV1', 'MT14-SO2', 'MT14-DC2', '52396871', '', '', 0.00, 0.00, 0.00, 0.00, 240.00, '', '', 4, 1, NULL, 1, NULL, NULL, 0, 0, NULL, NULL, '', ''),
(3, 5393173924, '6', 'MT1', NULL, NULL, '2022-05-26', '2022-05-26', 1785.00, 1785.00, 0.00, 0.00, 0.00, 'MT14-SV1', 'MT1SO-4', 'MT1DC-4', '353649996', '', '', 0.00, 15.00, 0.00, 0.00, 1800.00, '', '', 4, 1, NULL, 1, NULL, NULL, 0, 0, NULL, NULL, '', ''),
(4, 8961589291, '6', 'MT1', NULL, NULL, '2022-05-27', NULL, 4000.00, 0.00, 4000.00, 0.00, 0.00, 'MT11-SV1', 'MT1SO-V1', NULL, '1579480209', NULL, '', 0.00, 0.00, 0.00, 0.00, 4000.00, '', '', 1, 1, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL),
(5, 7662892733, '6', 'MT2', NULL, NULL, '2022-05-27', NULL, 2000.00, 0.00, 2000.00, 0.00, 0.00, NULL, 'MT2SO-V45', NULL, '1542039686', NULL, NULL, 0.00, 0.00, 0.00, 0.00, 2000.00, '', '', 2, 0, NULL, 1, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_details`
--

CREATE TABLE `invoice_details` (
  `id` int(11) NOT NULL,
  `invoice_details_id` varchar(100) NOT NULL,
  `invoice_id` varchar(100) NOT NULL,
  `product_id` varchar(30) NOT NULL,
  `sn` varchar(1000) DEFAULT NULL,
  `warehouse` varchar(255) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `quantity` decimal(10,2) DEFAULT NULL,
  `order_qty` varchar(255) DEFAULT NULL,
  `dc_qty` varchar(255) DEFAULT NULL,
  `warrenty_date` varchar(50) DEFAULT NULL,
  `expiry_date` varchar(255) DEFAULT NULL,
  `rate` decimal(10,2) DEFAULT NULL,
  `supplier_rate` float DEFAULT NULL,
  `total_price` decimal(12,2) DEFAULT NULL,
  `discount` decimal(10,2) DEFAULT NULL,
  `discount_per` varchar(15) DEFAULT NULL,
  `tax` decimal(10,2) DEFAULT NULL,
  `paid_amount` decimal(12,0) DEFAULT NULL,
  `due_amount` decimal(10,2) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `status` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `invoice_details`
--

INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `product_id`, `sn`, `warehouse`, `description`, `quantity`, `order_qty`, `dc_qty`, `warrenty_date`, `expiry_date`, `rate`, `supplier_rate`, `total_price`, `discount`, `discount_per`, `tax`, `paid_amount`, `due_amount`, `remarks`, `status`) VALUES
(1, '914895175979628', '9794411957', '18123355', NULL, NULL, NULL, 10.00, '10.00', '10', NULL, NULL, 12.00, NULL, 120.00, NULL, NULL, NULL, NULL, NULL, '', 1),
(2, '231818959836351', '9794411957', '23233633', NULL, NULL, NULL, 10.00, '10.00', '10', NULL, NULL, 270.00, NULL, 2700.00, NULL, NULL, NULL, NULL, NULL, '', 1),
(3, '759124326384889', '9794411957', '88982932', NULL, NULL, NULL, 2.00, '2.00', '2', NULL, NULL, 1000.00, NULL, 2000.00, NULL, NULL, NULL, NULL, NULL, '', 1),
(4, '619166891577388', '8474729927', '94716333', NULL, NULL, NULL, 1.00, '1.00', '1', NULL, NULL, 240.00, NULL, 240.00, NULL, NULL, NULL, NULL, NULL, '', 1),
(5, '455416816998362', '5393173924', '94853342', NULL, NULL, NULL, 100.00, '100.00', '100', NULL, NULL, 18.00, NULL, 1800.00, NULL, NULL, NULL, NULL, NULL, '', 1),
(6, '833974889269614', '8961589291', '43227462', NULL, NULL, NULL, 20.00, '20.00', NULL, NULL, NULL, 200.00, NULL, 4000.00, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(7, '893738454254948', '7662892733', '31866922', NULL, NULL, NULL, 20.00, '90', NULL, NULL, NULL, 100.00, NULL, 2000.00, NULL, NULL, NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `id` int(11) UNSIGNED NOT NULL,
  `phrase` text NOT NULL,
  `english` text DEFAULT NULL,
  `bangla` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES
(1, 'user_profile', 'User Profile', NULL),
(2, 'setting', 'Setting', NULL),
(3, 'language', 'Language', NULL),
(4, 'manage_users', 'Manage Users', NULL),
(5, 'add_user', 'Add User', NULL),
(6, 'manage_company', 'Manage Company', NULL),
(7, 'web_settings', 'Software Settings', NULL),
(8, 'manage_accounts', 'Manage Accounts', NULL),
(9, 'create_accounts', 'Create Account', NULL),
(10, 'manage_bank', 'Manage Bank', NULL),
(11, 'add_new_bank', 'Add New Bank', NULL),
(12, 'settings', 'Settings', NULL),
(13, 'closing_report', 'Closing Report', NULL),
(14, 'closing', 'Closing', NULL),
(15, 'cheque_manager', 'Cheque Manager', NULL),
(16, 'accounts_summary', 'Accounts Summary', NULL),
(17, 'expense', 'Expense', NULL),
(18, 'income', 'Income', NULL),
(19, 'accounts', 'Accounts', NULL),
(20, 'stock_report', 'Stock Report', NULL),
(21, 'stock', 'Stock', NULL),
(22, 'pos_invoice', 'POS Sale', NULL),
(23, 'manage_invoice', 'Manage Sale', NULL),
(24, 'new_invoice', 'New Sale', NULL),
(25, 'invoice', 'Sale', NULL),
(26, 'manage_purchase', 'Manage Purchase', NULL),
(27, 'add_purchase', 'Add Purchase', NULL),
(28, 'purchase', 'Purchase', NULL),
(29, 'paid_customer', 'Paid Customer ', NULL),
(30, 'manage_customer', 'Manage Customer', NULL),
(31, 'add_customer', 'Add Customer', NULL),
(32, 'customer', 'Customer ', NULL),
(33, 'supplier_payment_actual', 'Supplier Payment Ledger', NULL),
(34, 'supplier_sales_summary', 'Supplier Sales Summary', NULL),
(35, 'supplier_sales_details', 'Supplier Sales Details', NULL),
(36, 'supplier_ledger', 'Supplier Ledger', NULL),
(37, 'manage_supplier', 'Manage Supplier', NULL),
(38, 'add_supplier', 'Add Supplier', NULL),
(39, 'supplier', 'Supplier', NULL),
(40, 'product_statement', 'Product Statement', NULL),
(41, 'manage_product', 'Manage Product', NULL),
(42, 'add_product', 'Add Product', NULL),
(43, 'product', 'Product', NULL),
(44, 'manage_category', 'Manage Category', NULL),
(45, 'add_category', 'Add Category', NULL),
(46, 'category', 'Category', NULL),
(47, 'sales_report_product_wise', 'Sales Report (Product Wise)', NULL),
(48, 'purchase_report', 'Purchase Report', NULL),
(49, 'sales_report', 'Sales Report', NULL),
(50, 'todays_report', 'Todays Report', NULL),
(51, 'report', 'Report', NULL),
(52, 'dashboard', 'Dashboard', NULL),
(53, 'online', 'Online', NULL),
(54, 'logout', 'Logout', NULL),
(55, 'change_password', 'Change Password', NULL),
(56, 'total_purchase', 'Total Purchase', NULL),
(57, 'total_amount', 'Total Amount', NULL),
(58, 'supplier_name', 'Supplier Name', NULL),
(59, 'invoice_no', 'Invoice No', NULL),
(60, 'purchase_date', 'Purchase Date', NULL),
(61, 'todays_purchase_report', 'Todays Purchase Report', NULL),
(62, 'total_sales', 'Total Sales', NULL),
(63, 'customer_name', 'Customer Name', NULL),
(64, 'sales_date', 'Sales Date', NULL),
(65, 'todays_sales_report', 'Todays Sales Report', NULL),
(66, 'home', 'Home', NULL),
(67, 'todays_sales_and_purchase_report', 'Todays sales and purchase report', NULL),
(68, 'total_ammount', 'Total Amount', NULL),
(69, 'rate', 'Rate', NULL),
(70, 'product_model', 'Product Model', NULL),
(71, 'product_name', 'Product Name', NULL),
(72, 'search', 'Search', NULL),
(73, 'end_date', 'End Date', NULL),
(74, 'start_date', 'Start Date', NULL),
(75, 'total_purchase_report', 'Total Purchase Report', NULL),
(76, 'total_sales_report', 'Total Sales Report', NULL),
(77, 'total_seles', 'Total Sales', NULL),
(78, 'all_stock_report', 'All Stock Report', NULL),
(79, 'search_by_product', 'Search By Product', NULL),
(80, 'date', 'Date', NULL),
(81, 'print', 'Print', NULL),
(82, 'stock_date', 'Stock Date', NULL),
(83, 'print_date', 'Print Date', NULL),
(84, 'sales', 'Sales', NULL),
(85, 'price', 'Price', NULL),
(86, 'sl', 'SL.', NULL),
(87, 'add_new_category', 'Add new category', NULL),
(88, 'category_name', 'Category Name', NULL),
(89, 'save', 'Save', NULL),
(90, 'delete', 'Delete', NULL),
(91, 'update', 'Update', NULL),
(92, 'action', 'Action', NULL),
(93, 'manage_your_category', 'Manage your category ', NULL),
(94, 'category_edit', 'Category Edit', NULL),
(95, 'status', 'Status', NULL),
(96, 'active', 'Active', NULL),
(97, 'inactive', 'Inactive', NULL),
(98, 'save_changes', 'Save Changes', NULL),
(99, 'save_and_add_another', 'Save And Add Another', NULL),
(100, 'model', 'Model', NULL),
(101, 'supplier_price', 'Supplier Price', NULL),
(102, 'sell_price', 'Sale Price', NULL),
(103, 'image', 'Image', NULL),
(104, 'select_one', 'Select One', NULL),
(105, 'details', 'Details', NULL),
(106, 'new_product', 'New Product', NULL),
(107, 'add_new_product', 'Add new product', NULL),
(108, 'barcode', 'Barcode', NULL),
(109, 'qr_code', 'Qr-Code', NULL),
(110, 'product_details', 'Product Details', NULL),
(111, 'manage_your_product', 'Manage your product', NULL),
(112, 'product_edit', 'Product Edit', NULL),
(113, 'edit_your_product', 'Edit your product', NULL),
(114, 'cancel', 'Cancel', NULL),
(115, 'incl_vat', 'Incl. Vat', NULL),
(116, 'money', 'TK', NULL),
(117, 'grand_total', 'Grand Total', NULL),
(118, 'quantity', 'Qnty', NULL),
(119, 'product_report', 'Product Report', NULL),
(120, 'product_sales_and_purchase_report', 'Product sales and purchase report', NULL),
(121, 'previous_stock', 'Previous Stock', NULL),
(122, 'out', 'Out', NULL),
(123, 'in', 'In', NULL),
(124, 'to', 'To', NULL),
(125, 'previous_balance', 'Previous Credit Balance', NULL),
(126, 'customer_address', 'Customer Address', NULL),
(127, 'customer_mobile', 'Customer Mobile', NULL),
(128, 'customer_email', 'Customer Email', NULL),
(129, 'add_new_customer', 'Add new Customer ', NULL),
(130, 'balance', 'Balance', NULL),
(131, 'mobile', 'Mobile', NULL),
(132, 'address', 'Address', NULL),
(133, 'manage_your_customer', 'Manage your Customer ', NULL),
(134, 'customer_edit', 'Customer Edit', NULL),
(135, 'paid_customer_list', 'Paid Customer List', NULL),
(136, 'ammount', 'Amount', NULL),
(137, 'customer_ledger', 'Customer Ledger', NULL),
(138, 'manage_customer_ledger', 'Manage Customer Ledger', NULL),
(139, 'customer_information', 'Customer Information', NULL),
(140, 'debit_ammount', 'Debit Amount', NULL),
(141, 'credit_ammount', 'Credit Amount', NULL),
(142, 'balance_ammount', 'Balance Amount', NULL),
(143, 'receipt_no', 'Receipt NO', NULL),
(144, 'description', 'Description', NULL),
(145, 'debit', 'Debit', NULL),
(146, 'credit', 'Credit', NULL),
(147, 'item_information', 'Item Information', NULL),
(148, 'total', 'Total', NULL),
(149, 'please_select_supplier', 'Please Select Supplier', NULL),
(150, 'submit', 'Submit', NULL),
(151, 'submit_and_add_another', 'Submit And Add Another One', NULL),
(152, 'add_new_item', 'Add New Item', NULL),
(153, 'manage_your_purchase', 'Manage your purchase', NULL),
(154, 'purchase_edit', 'Purchase Edit', NULL),
(155, 'purchase_ledger', 'Purchase Ledger', NULL),
(156, 'invoice_information', 'Sale Information', NULL),
(157, 'paid_ammount', 'Paid Amount', NULL),
(158, 'discount', 'Dis./Pcs.', NULL),
(159, 'save_and_paid', 'Save And Paid', NULL),
(160, 'payee_name', 'Payee Name', NULL),
(161, 'manage_your_invoice', 'Manage your Sale', NULL),
(162, 'invoice_edit', 'Sale Edit', NULL),
(163, 'new_pos_invoice', 'New POS Sale', NULL),
(164, 'add_new_pos_invoice', 'Add new pos Sale', NULL),
(165, 'product_id', 'Product ID', NULL),
(166, 'paid_amount', 'Paid Amount', NULL),
(167, 'authorised_by', 'Authorised By', NULL),
(168, 'checked_by', 'Checked By', NULL),
(169, 'received_by', 'Received By', NULL),
(170, 'prepared_by', 'Prepared By', NULL),
(171, 'memo_no', 'Memo No', NULL),
(172, 'website', 'Website', NULL),
(173, 'email', 'Email', NULL),
(174, 'invoice_details', 'Sale Details', NULL),
(175, 'reset', 'Reset', NULL),
(176, 'payment_account', 'Payment Account', NULL),
(177, 'bank_name', 'Bank Name', NULL),
(178, 'cheque_or_pay_order_no', 'Cheque/Pay Order No', NULL),
(179, 'payment_type', 'Payment Type', NULL),
(180, 'payment_from', 'Payment From', NULL),
(181, 'payment_date', 'Payment Date', NULL),
(182, 'add_income', 'Add Income', NULL),
(183, 'cash', 'Cash', NULL),
(184, 'cheque', 'Cheque', NULL),
(185, 'pay_order', 'Pay Order', NULL),
(186, 'payment_to', 'Payment To', NULL),
(187, 'total_outflow_ammount', 'Total Expense Amount', NULL),
(188, 'transections', 'Transections', NULL),
(189, 'accounts_name', 'Accounts Name', NULL),
(190, 'outflow_report', 'Expense Report', NULL),
(191, 'inflow_report', 'Income Report', NULL),
(192, 'all', 'All', NULL),
(193, 'account', 'Account', NULL),
(194, 'from', 'From', NULL),
(195, 'account_summary_report', 'Account Summary Report', NULL),
(196, 'search_by_date', 'Search By Date', NULL),
(197, 'cheque_no', 'Cheque No', NULL),
(198, 'name', 'Name', NULL),
(199, 'closing_account', 'Closing Account', NULL),
(200, 'close_your_account', 'Close your account', NULL),
(201, 'last_day_closing', 'Last Day Closing', NULL),
(202, 'cash_in', 'Cash In', NULL),
(203, 'cash_out', 'Cash Out', NULL),
(204, 'cash_in_hand', 'Cash In Hand', NULL),
(205, 'add_new_bank', 'Add New Bank', NULL),
(206, 'day_closing', 'Day Closing', NULL),
(207, 'account_closing_report', 'Account Closing Report', NULL),
(208, 'last_day_ammount', 'Last Day Amount', NULL),
(209, 'adjustment', 'Adjustment', NULL),
(210, 'pay_type', 'Pay Type', NULL),
(211, 'customer_or_supplier', 'Customer ,Supplier Or Others', NULL),
(212, 'transection_id', 'Transections ID', NULL),
(213, 'accounts_summary_report', 'Accounts Summary Report', NULL),
(214, 'bank_list', 'Bank List', NULL),
(215, 'bank_edit', 'Bank Edit', NULL),
(216, 'debit_plus', 'Debit (+)', NULL),
(217, 'credit_minus', 'Credit (-)', NULL),
(218, 'account_name', 'Account Name', NULL),
(219, 'account_type', 'Account Type', NULL),
(220, 'account_real_name', 'Account Real Name', NULL),
(221, 'manage_account', 'Manage Account', NULL),
(222, 'company_name', 'Niha International', NULL),
(223, 'edit_your_company_information', 'Edit your company information', NULL),
(224, 'company_edit', 'Company Edit', NULL),
(225, 'admin', 'Admin', NULL),
(226, 'user', 'User', NULL),
(227, 'password', 'Password', NULL),
(228, 'last_name', 'Last Name', NULL),
(229, 'first_name', 'First Name', NULL),
(230, 'add_new_user_information', 'Add new user information', NULL),
(231, 'user_type', 'User Type', NULL),
(232, 'user_edit', 'User Edit', NULL),
(233, 'rtr', 'RTR', NULL),
(234, 'ltr', 'LTR', NULL),
(235, 'ltr_or_rtr', 'LTR/RTR', NULL),
(236, 'footer_text', 'Footer Text', NULL),
(237, 'favicon', 'Favicon', NULL),
(238, 'logo', 'Logo', NULL),
(239, 'update_setting', 'Update Setting', NULL),
(240, 'update_your_web_setting', 'Update your web setting', NULL),
(241, 'login', 'Login', NULL),
(242, 'your_strong_password', 'Your strong password', NULL),
(243, 'your_unique_email', 'Your unique email', NULL),
(244, 'please_enter_your_login_information', 'Please enter your login information.', NULL),
(245, 'update_profile', 'Update Profile', NULL),
(246, 'your_profile', 'Your Profile', NULL),
(247, 're_type_password', 'Re-Type Password', NULL),
(248, 'new_password', 'New Password', NULL),
(249, 'old_password', 'Old Password', NULL),
(250, 'new_information', 'New Information', NULL),
(251, 'old_information', 'Old Information', NULL),
(252, 'change_your_information', 'Change your information', NULL),
(253, 'change_your_profile', 'Change your profile', NULL),
(254, 'profile', 'Profile', NULL),
(255, 'wrong_username_or_password', 'Wrong User Name Or Password !', NULL),
(256, 'successfully_updated', 'Successfully Updated.', NULL),
(257, 'blank_field_does_not_accept', 'Blank Field Does Not Accept !', NULL),
(258, 'successfully_changed_password', 'Successfully changed password.', NULL),
(259, 'you_are_not_authorised_person', 'You are not authorised person !', NULL),
(260, 'password_and_repassword_does_not_match', 'Passwor and re-password does not match !', NULL),
(261, 'new_password_at_least_six_character', 'New Password At Least 6 Character.', NULL),
(262, 'you_put_wrong_email_address', 'You put wrong email address !', NULL),
(263, 'cheque_ammount_asjusted', 'Cheque amount adjusted.', NULL),
(264, 'successfully_payment_paid', 'Successfully Payment Paid.', NULL),
(265, 'successfully_added', 'Successfully Added.', NULL),
(266, 'successfully_updated_2_closing_ammount_not_changeale', 'Successfully Updated -2. Note: Closing Amount Not Changeable.', NULL),
(267, 'successfully_payment_received', 'Successfully Payment Received.', NULL),
(268, 'already_inserted', 'Already Inserted !', NULL),
(269, 'successfully_delete', 'Successfully Delete.', NULL),
(270, 'successfully_created', 'Successfully Created.', NULL),
(271, 'logo_not_uploaded', 'Logo not uploaded !', NULL),
(272, 'favicon_not_uploaded', 'Favicon not uploaded !', NULL),
(273, 'supplier_mobile', 'Supplier Mobile', NULL),
(274, 'supplier_address', 'Supplier Address', NULL),
(275, 'supplier_details', 'Supplier Details', NULL),
(276, 'add_new_supplier', 'Add New Supplier', NULL),
(277, 'manage_suppiler', 'Manage Supplier', NULL),
(278, 'manage_your_supplier', 'Manage your supplier', NULL),
(279, 'manage_supplier_ledger', 'Manage supplier ledger', NULL),
(280, 'invoice_id', 'Invoice ID', NULL),
(281, 'deposite_id', 'Deposite ID', NULL),
(282, 'supplier_actual_ledger', 'Supplier Payment Ledger', NULL),
(283, 'supplier_information', 'Supplier Information', NULL),
(284, 'event', 'Event', NULL),
(285, 'add_new_income', 'Add New Income', NULL),
(286, 'add_expese', 'Add Expense', NULL),
(287, 'add_new_expense', 'Add New Expense', NULL),
(288, 'total_inflow_ammount', 'Total Income Amount', NULL),
(289, 'create_new_invoice', 'Create New Sale', NULL),
(290, 'create_pos_invoice', 'Create POS Sale', NULL),
(291, 'total_profit', 'Total Profit', NULL),
(292, 'monthly_progress_report', 'Monthly Progress Report', NULL),
(293, 'total_invoice', 'Total Sale', NULL),
(294, 'account_summary', 'Account Summary', NULL),
(295, 'total_supplier', 'Total Supplier', NULL),
(296, 'total_product', 'Total Product', NULL),
(297, 'total_customer', 'Total Customer', NULL),
(298, 'supplier_edit', 'Supplier Edit', NULL),
(299, 'add_new_invoice', 'Add New Sale', NULL),
(300, 'add_new_purchase', 'Add new purchase', NULL),
(301, 'currency', 'Currency', NULL),
(302, 'currency_position', 'Currency Position', NULL),
(303, 'left', 'Left', NULL),
(304, 'right', 'Right', NULL),
(305, 'add_tax', 'Add Tax', NULL),
(306, 'manage_tax', 'Manage Tax', NULL),
(307, 'add_new_tax', 'Add new tax', NULL),
(308, 'enter_tax', 'Enter Tax', NULL),
(309, 'already_exists', 'Already Exists !', NULL),
(310, 'successfully_inserted', 'Successfully Inserted.', NULL),
(311, 'tax', 'Tax', NULL),
(312, 'tax_edit', 'Tax Edit', NULL),
(313, 'product_not_added', 'Product not added !', NULL),
(314, 'total_tax', 'Total Tax', NULL),
(315, 'manage_your_supplier_details', 'Manage your supplier details.', NULL),
(316, 'invoice_description', 'Lorem Ipsum is sim ply dummy Lorem Ipsum is simply dummy Lorem Ipsum is simply dummy Lorem Ipsum is simply dummy Lorem Ipsum is simply dummy Lorem Ipsum is sim ply dummy Lorem Ipsum is simply dummy Lorem Ipsum is simply dummy Lorem Ipsum is simply dummy Lorem Ipsum is simply dummy', NULL),
(317, 'thank_you_for_choosing_us', 'Thank you very much for choosing us.', NULL),
(318, 'billing_date', 'Billing Date', NULL),
(319, 'billing_to', 'Billing To', NULL),
(320, 'billing_from', 'Billing From', NULL),
(321, 'you_cant_delete_this_product', 'Sorry !!  You can\'t delete this product.This product already used in calculation system!', NULL),
(322, 'old_customer', 'Old Customer ', NULL),
(323, 'new_customer', 'New Customer', NULL),
(324, 'new_supplier', 'New Supplier', NULL),
(325, 'old_supplier', 'Old Supplier', NULL),
(326, 'credit_customer', 'Credit Customer ', NULL),
(327, 'account_already_exists', 'This Account Already Exists !', NULL),
(328, 'edit_income', 'Edit Income', NULL),
(329, 'you_are_not_access_this_part', 'You are not authorised person !', NULL),
(330, 'account_edit', 'Account Edit', NULL),
(331, 'due', 'Due', NULL),
(332, 'expense_edit', 'Expense Edit', NULL),
(333, 'please_select_customer', 'Please select customer !', NULL),
(334, 'profit_report', 'Profit Report (Sale Wise)', NULL),
(335, 'total_profit_report', 'Total profit report', NULL),
(336, 'please_enter_valid_captcha', 'Please enter valid captcha.', NULL),
(337, 'category_not_selected', 'Category not selected.', NULL),
(338, 'supplier_not_selected', 'Supplier not selected.', NULL),
(339, 'please_select_product', 'Please select product.', NULL),
(340, 'product_model_already_exist', 'Product model already exist !', NULL),
(341, 'invoice_logo', 'Sale Logo', NULL),
(342, 'available_qnty', 'Av. Qnty.', NULL),
(343, 'you_can_not_buy_greater_than_available_cartoon', 'You can not select grater than available cartoon !', NULL),
(344, 'customer_details', 'Customer details', NULL),
(345, 'manage_customer_details', 'Manage Customer details.', NULL),
(346, 'site_key', 'Captcha Site Key', NULL),
(347, 'secret_key', 'Captcha Secret Key', NULL),
(348, 'captcha', 'Captcha', NULL),
(349, 'cartoon_quantity', 'Cartoon Quantity', NULL),
(350, 'total_cartoon', 'Total Cartoon', NULL),
(351, 'cartoon', 'Cartoon', NULL),
(352, 'item_cartoon', 'Item/Cartoon', NULL),
(353, 'product_and_supplier_did_not_match', 'Product and supplier did not match !', NULL),
(354, 'if_you_update_purchase_first_select_supplier_then_product_and_then_quantity', 'If you update purchase,first select supplier then product and then update qnty.', NULL),
(355, 'item', 'Item', NULL),
(356, 'manage_your_credit_customer', 'Manage your credit Customer ', NULL),
(357, 'total_quantity', 'Total Quantity', NULL),
(358, 'quantity_per_cartoon', 'Quantity per cartoon', NULL),
(359, 'barcode_qrcode_scan_here', 'Barcode or QR-code scan here', NULL),
(360, 'synchronizer_setting', 'Synchronizer Setting', NULL),
(361, 'data_synchronizer', 'Data Synchronizer', NULL),
(362, 'hostname', 'Host name', NULL),
(363, 'username', 'User Name', NULL),
(364, 'ftp_port', 'FTP Port', NULL),
(365, 'ftp_debug', 'FTP Debug', NULL),
(366, 'project_root', 'Project Root', NULL),
(367, 'please_try_again', 'Please try again', NULL),
(368, 'save_successfully', 'Save successfully', NULL),
(369, 'synchronize', 'Synchronize', NULL),
(370, 'internet_connection', 'Internet Connection', NULL),
(371, 'outgoing_file', 'Outgoing File', NULL),
(372, 'incoming_file', 'Incoming File', NULL),
(373, 'ok', 'Ok', NULL),
(374, 'not_available', 'Not Available', NULL),
(375, 'available', 'Available', NULL),
(376, 'download_data_from_server', 'Download data from server', NULL),
(377, 'data_import_to_database', 'Data import to database', NULL),
(378, 'data_upload_to_server', 'Data uplod to server', NULL),
(379, 'please_wait', 'Please Wait', NULL),
(380, 'ooops_something_went_wrong', 'Oooops Something went wrong !', NULL),
(381, 'upload_successfully', 'Upload successfully', NULL),
(382, 'unable_to_upload_file_please_check_configuration', 'Unable to upload file please check configuration', NULL),
(383, 'please_configure_synchronizer_settings', 'Please configure synchronizer settings', NULL),
(384, 'download_successfully', 'Download successfully', NULL),
(385, 'unable_to_download_file_please_check_configuration', 'Unable to download file please check configuration', NULL),
(386, 'data_import_first', 'Data import past', NULL),
(387, 'data_import_successfully', 'Data import successfully', NULL),
(388, 'unable_to_import_data_please_check_config_or_sql_file', 'Unable to import data please check config or sql file', NULL),
(389, 'total_sale_ctn', 'Total Sale Ctn', NULL),
(390, 'in_qnty', 'In Qnty.', NULL),
(391, 'out_qnty', 'Out Qnty.', NULL),
(392, 'stock_report_supplier_wise', 'Stock Report (Supplier Wise)', NULL),
(393, 'all_stock_report_supplier_wise', 'Stock Report (Suppler Wise)', NULL),
(394, 'select_supplier', 'Select Supplier', NULL),
(395, 'stock_report_product_wise', 'Stock Report (Product Wise)', NULL),
(396, 'phone', 'Phone', NULL),
(397, 'select_product', 'Select Product', NULL),
(398, 'in_quantity', 'In Qnty.', NULL),
(399, 'out_quantity', 'Out Qnty.', NULL),
(400, 'in_taka', 'In TK.', NULL),
(401, 'out_taka', 'Out TK.', NULL),
(402, 'commission', 'Commission', NULL),
(403, 'generate_commission', 'Generate Commssion', NULL),
(404, 'commission_rate', 'Commission Rate', NULL),
(405, 'total_ctn', 'Total Ctn.', NULL),
(406, 'per_pcs_commission', 'Per PCS Commission', NULL),
(407, 'total_commission', 'Total Commission', NULL),
(408, 'enter', 'Enter', NULL),
(409, 'please_add_walking_customer_for_default_customer', 'Please add \'Walking Customer\' for default customer.', NULL),
(410, 'supplier_ammount', 'Supplier Amount', NULL),
(411, 'my_sale_ammount', 'My Sale Amount', NULL),
(412, 'signature_pic', 'Signature Picture', NULL),
(413, 'branch', 'Branch', NULL),
(414, 'ac_no', 'A/C Number', NULL),
(415, 'ac_name', 'A/C Name', NULL),
(416, 'bank_transaction', 'Bank Transaction', NULL),
(417, 'bank', 'Bank', NULL),
(418, 'withdraw_deposite_id', 'Withdraw / Deposite ID', NULL),
(419, 'bank_ledger', 'Bank Ledger', NULL),
(420, 'note_name', 'Note Name', NULL),
(421, 'pcs', 'Pcs.', NULL),
(422, '1', '1', NULL),
(423, '2', '2', NULL),
(424, '5', '5', NULL),
(425, '10', '10', NULL),
(426, '20', '20', NULL),
(427, '50', '50', NULL),
(428, '100', '100', NULL),
(429, '500', '500', NULL),
(430, '1000', '1000', NULL),
(431, 'total_discount', 'Total Discount', NULL),
(432, 'product_not_found', 'Product not found !', NULL),
(433, 'this_is_not_credit_customer', 'This is not credit customer !', NULL),
(434, 'personal_loan', 'Personal Loan', NULL),
(435, 'add_person', 'Add Person', NULL),
(436, 'add_loan', 'Add Loan', NULL),
(437, 'add_payment', 'Add Payment', NULL),
(438, 'manage_person', 'Manage Person', NULL),
(439, 'personal_edit', 'Person Edit', NULL),
(440, 'person_ledger', 'Person Ledger', NULL),
(441, 'backup_restore', 'Backup ', NULL),
(442, 'database_backup', 'Database backup', NULL),
(443, 'file_information', 'File information', NULL),
(444, 'filename', 'Filename', NULL),
(445, 'size', 'Size', NULL),
(446, 'backup_date', 'Backup date', NULL),
(447, 'backup_now', 'Backup now', NULL),
(448, 'restore_now', 'Restore now', NULL),
(449, 'are_you_sure', 'Are you sure ?', NULL),
(450, 'download', 'Download', NULL),
(451, 'backup_and_restore', 'Backup', NULL),
(452, 'backup_successfully', 'Backup successfully', NULL),
(453, 'delete_successfully', 'Delete successfully', NULL),
(454, 'stock_ctn', 'Stock/Qnt', NULL),
(455, 'unit', 'Unit', NULL),
(456, 'meter_m', 'Meter (M)', NULL),
(457, 'piece_pc', 'Piece (Pc)', NULL),
(458, 'kilogram_kg', 'Kilogram (Kg)', NULL),
(459, 'stock_cartoon', 'Stock Cartoon', NULL),
(460, 'add_product_csv', 'Add Product (CSV)', NULL),
(461, 'import_product_csv', 'Import product (CSV)', NULL),
(462, 'close', 'Close', NULL),
(463, 'download_example_file', 'Download example file.', NULL),
(464, 'upload_csv_file', 'Upload CSV File', NULL),
(465, 'csv_file_informaion', 'CSV File Information', NULL),
(466, 'out_of_stock', 'Out Of Stock', NULL),
(467, 'others', 'Others', NULL),
(468, 'full_paid', 'Full Paid', NULL),
(469, 'successfully_saved', 'Your Data Successfully Saved', NULL),
(470, 'manage_loan', 'Manage Loan', NULL),
(471, 'receipt', 'Receipt', NULL),
(472, 'payment', 'Payment', NULL),
(473, 'cashflow', 'Daily Cash Flow', NULL),
(474, 'signature', 'Signature', NULL),
(475, 'supplier_reports', 'Supplier Reports', NULL),
(476, 'generate', 'Generate', NULL),
(477, 'todays_overview', 'Todays Overview', NULL),
(478, 'last_sales', 'Last Sales', NULL),
(479, 'manage_transaction', 'Manage Transaction', NULL),
(480, 'daily_summary', 'Daily Summary', NULL),
(481, 'daily_cash_flow', 'Daily Cash Flow', NULL),
(482, 'custom_report', 'Custom Report', NULL),
(483, 'transaction', 'Transaction', NULL),
(484, 'receipt_amount', 'Receipt Amount', NULL),
(485, 'transaction_details_datewise', 'Transaction Details Datewise', NULL),
(486, 'cash_closing', 'Cash Closing', NULL),
(487, 'you_can_not_buy_greater_than_available_qnty', 'You can not buy greater than available qnty.', NULL),
(488, 'supplier_id', 'Supplier ID', NULL),
(489, 'category_id', 'Category ID', NULL),
(490, 'select_report', 'Select Report', NULL),
(491, 'supplier_summary', 'Supplier summary', NULL),
(492, 'sales_payment_actual', 'Sales payment actual', NULL),
(493, 'today_already_closed', 'Today already closed.', NULL),
(494, 'root_account', 'Root Account', NULL),
(495, 'office', 'Office', NULL),
(496, 'loan', 'Loan', NULL),
(497, 'transaction_mood', 'Transaction Mood', NULL),
(498, 'select_account', 'Select Account', NULL),
(499, 'add_receipt', 'Add Receipt', NULL),
(500, 'update_transaction', 'Update Transaction', NULL),
(501, 'no_stock_found', 'No Stock Found !', NULL),
(502, 'admin_login_area', 'Admin Login Area', NULL),
(503, 'print_qr_code', 'Print QR Code', NULL),
(504, 'discount_type', 'Discount Type', NULL),
(505, 'discount_percentage', 'Discount', NULL),
(506, 'fixed_dis', 'Fixed Dis.', NULL),
(507, 'return', 'Return', NULL),
(508, 'stock_return_list', 'Stock Return List', NULL),
(509, 'wastage_return_list', 'Wastage Return List', NULL),
(510, 'return_invoice', 'Sale Return', NULL),
(511, 'sold_qty', 'Sold Qty', NULL),
(512, 'ret_quantity', 'Return Qty', NULL),
(513, 'deduction', 'Deduction', NULL),
(514, 'check_return', 'Check Return', NULL),
(515, 'reason', 'Reason', NULL),
(516, 'usablilties', 'Usability', NULL),
(517, 'adjs_with_stck', 'Adjust With Stock', NULL),
(518, 'return_to_supplier', 'Return To Supplier', NULL),
(519, 'wastage', 'Wastage', NULL),
(520, 'to_deduction', 'Total Deduction ', NULL),
(521, 'nt_return', 'Net Return Amount', NULL),
(522, 'return_list', 'Return List', NULL),
(523, 'add_return', 'Add Return', NULL),
(524, 'per_qty', 'Purchase Qty', NULL),
(525, 'return_supplier', 'Supplier Return', NULL),
(526, 'stock_purchase', 'Stock Purchase Price', NULL),
(527, 'stock_sale', 'Stock Sale Price', NULL),
(528, 'supplier_return', 'Supplier Return', NULL),
(529, 'purchase_id', 'Purchase ID', NULL),
(530, 'return_id', 'Return ID', NULL),
(531, 'supplier_return_list', 'Supplier Return List', NULL),
(532, 'c_r_slist', 'Stock Return Stock', NULL),
(533, 'wastage_list', 'Wastage List', NULL),
(534, 'please_input_correct_invoice_id', 'Please Input a Correct Sale ID', NULL),
(535, 'please_input_correct_purchase_id', 'Please Input Your Correct  Purchase ID', NULL),
(536, 'add_more', 'Add More', NULL),
(537, 'prouct_details', 'Product Details', NULL),
(538, 'prouct_detail', 'Product Details', NULL),
(539, 'stock_return', 'Stock Return', NULL),
(540, 'choose_transaction', 'Select Transaction', NULL),
(541, 'transection_category', 'Select  Category', NULL),
(542, 'transaction_categry', 'Select Category', NULL),
(543, 'search_supplier', 'Search Supplier', NULL),
(544, 'customer_id', 'Customer ID', NULL),
(545, 'search_customer', 'Search Customer Invoice', NULL),
(546, 'serial_no', 'SN', NULL),
(547, 'item_discount', 'Item Discount', NULL),
(548, 'invoice_discount', 'Sale Discount', NULL),
(549, 'add_unit', 'Add Unit', NULL),
(550, 'manage_unit', 'Manage Unit', NULL),
(551, 'add_new_unit', 'Add New Unit', NULL),
(552, 'unit_name', 'Unit Name', NULL),
(553, 'payment_amount', 'Payment Amount', NULL),
(554, 'manage_your_unit', 'Manage Your Unit', NULL),
(555, 'unit_id', 'Unit ID', NULL),
(556, 'unit_edit', 'Unit Edit', NULL),
(557, 'vat', 'Vat', NULL),
(558, 'sales_report_category_wise', 'Sales Report (Category wise)', NULL),
(559, 'purchase_report_category_wise', 'Purchase Report (Category wise)', NULL),
(560, 'category_wise_purchase_report', 'Category wise purchase report', NULL),
(561, 'category_wise_sales_report', 'Category wise sales report', NULL),
(562, 'best_sale_product', 'Best Sale Product', NULL),
(563, 'all_best_sales_product', 'All Best Sales Products', NULL),
(564, 'todays_customer_receipt', 'Todays Customer Receipt', NULL),
(565, 'not_found', 'Record not found', NULL),
(566, 'collection', 'Collection', NULL),
(567, 'increment', 'Increment', NULL),
(568, 'accounts_tree_view', 'Accounts Tree View', NULL),
(569, 'debit_voucher', 'Debit Voucher', NULL),
(570, 'voucher_no', 'Voucher No', NULL),
(571, 'credit_account_head', 'Credit Account Head', NULL),
(572, 'remark', 'Remark', NULL),
(573, 'code', 'Code', NULL),
(574, 'amount', 'Amount', NULL),
(575, 'approved', 'Approved', NULL),
(576, 'debit_account_head', 'Debit Account Head', NULL),
(577, 'credit_voucher', 'Credit Voucher', NULL),
(578, 'find', 'Find', NULL),
(579, 'transaction_date', 'Transaction Date', NULL),
(580, 'voucher_type', 'Voucher Type', NULL),
(581, 'particulars', 'Particulars', NULL),
(582, 'with_details', 'With Details', NULL),
(583, 'general_ledger', 'General Ledger', NULL),
(584, 'general_ledger_of', 'General ledger of', NULL),
(585, 'pre_balance', 'Pre Balance', NULL),
(586, 'current_balance', 'Current Balance', NULL),
(587, 'to_date', 'To Date', NULL),
(588, 'from_date', 'From Date', NULL),
(589, 'trial_balance', 'Trial Balance', NULL),
(590, 'authorized_signature', 'Authorized Signature', NULL),
(591, 'chairman', 'Chairman', NULL),
(592, 'total_income', 'Total Income', NULL),
(593, 'statement_of_comprehensive_income', 'Statement of Comprehensive Income', NULL),
(594, 'profit_loss', 'Profit Loss', NULL),
(595, 'cash_flow_report', 'Cash Flow Report', NULL),
(596, 'cash_flow_statement', 'Cash Flow Statement', NULL),
(597, 'amount_in_dollar', 'Amount In Dollar', NULL),
(598, 'opening_cash_and_equivalent', 'Opening Cash and Equivalent', NULL),
(599, 'coa_print', 'Coa Print', NULL),
(600, 'cash_flow', 'Cash Flow', NULL),
(601, 'cash_book', 'Cash Book', NULL),
(602, 'bank_book', 'Bank Book', NULL),
(603, 'c_o_a', 'Chart of Account', NULL),
(604, 'journal_voucher', 'Journal Voucher', NULL),
(605, 'contra_voucher', 'Contra Voucher', NULL),
(606, 'voucher_approval', 'Vouchar Approval', NULL),
(607, 'supplier_payment', 'Supplier Payment', NULL),
(608, 'customer_receive', 'Customer Receive', NULL),
(609, 'gl_head', 'General Head', NULL),
(610, 'account_code', 'Account Head', NULL),
(611, 'opening_balance', 'Opening Balance', NULL),
(612, 'head_of_account', 'Head of Account', NULL),
(613, 'inventory_ledger', 'Inventory Ledger', NULL),
(614, 'newpassword', 'New Password', NULL),
(615, 'password_recovery', 'Password Recovery', NULL),
(616, 'forgot_password', 'Forgot Password ??', NULL),
(617, 'send', 'Send', NULL),
(618, 'due_report', 'Due Report', NULL),
(619, 'due_amount', 'Due Amount', NULL),
(620, 'download_sample_file', 'Download Sample File', NULL),
(621, 'customer_csv_upload', 'Customer Csv Upload', NULL),
(622, 'csv_supplier', 'Csv Upload Supplier', NULL),
(623, 'csv_upload_supplier', 'Csv Upload Supplier', NULL),
(624, 'previous', 'Previous', NULL),
(625, 'net_total', 'Net Total', NULL),
(626, 'currency_list', 'Currency List', NULL),
(627, 'currency_name', 'Currency Name', NULL),
(628, 'currency_icon', 'Currency Symbol', NULL),
(629, 'add_currency', 'Add Currency', NULL),
(630, 'role_permission', 'Role Permission', NULL),
(631, 'role_list', 'Role List', NULL),
(632, 'user_assign_role', 'User Assign Role', NULL),
(633, 'permission', 'Permission', NULL),
(634, 'add_role', 'Add Role', NULL),
(635, 'add_module', 'Add Module', NULL),
(636, 'module_name', 'Module Name', NULL),
(637, 'office_loan', 'Office Loan', NULL),
(638, 'add_menu', 'Add Menu', NULL),
(639, 'menu_name', 'Menu Name', NULL),
(640, 'sl_no', 'Sl No', NULL),
(641, 'create', 'Create', NULL),
(642, 'read', 'Read', NULL),
(643, 'role_name', 'Role Name', NULL),
(644, 'qty', 'Quantity', NULL),
(645, 'max_rate', 'Max Rate', NULL),
(646, 'min_rate', 'Min Rate', NULL),
(647, 'avg_rate', 'Average Rate', NULL),
(648, 'role_permission_added_successfully', 'Role Permission Successfully Added', NULL),
(649, 'update_successfully', 'Successfully Updated', NULL),
(650, 'role_permission_updated_successfully', 'Role Permission Successfully Updated ', NULL),
(651, 'shipping_cost', 'Shipping Cost', NULL),
(652, 'in_word', 'In Word ', NULL),
(653, 'shipping_cost_report', 'Shipping Cost Report', NULL),
(654, 'cash_book_report', 'Cash Book Report', NULL),
(655, 'inventory_ledger_report', 'Inventory Ledger Report', NULL),
(656, 'trial_balance_with_opening_as_on', 'Trial Balance With Opening As On', NULL),
(657, 'type', 'Type', NULL),
(658, 'taka_only', 'Taka Only', NULL),
(659, 'item_description', 'Desc', NULL),
(660, 'sold_by', 'Sold By', NULL),
(661, 'user_wise_sales_report', 'User Wise Sales Report', NULL),
(662, 'user_name', 'User Name', NULL),
(663, 'total_sold', 'Total Sold', NULL),
(664, 'user_wise_sale_report', 'User Wise Sales Report', NULL),
(665, 'barcode_or_qrcode', 'Barcode/QR-code', NULL),
(666, 'category_csv_upload', 'Category Csv  Upload', NULL),
(667, 'unit_csv_upload', 'Unit Csv Upload', NULL),
(668, 'invoice_return_list', 'Sales Return list', NULL),
(669, 'invoice_return', 'Sales Return', NULL),
(670, 'tax_report', 'Tax Report', NULL),
(671, 'select_tax', 'Select Tax', NULL),
(672, 'hrm', 'HRM', NULL),
(673, 'employee', 'Employee', NULL),
(674, 'add_employee', 'Add Employee', NULL),
(675, 'manage_employee', 'Manage Employee', NULL),
(676, 'attendance', 'Attendance', NULL),
(677, 'add_attendance', 'Attendance', NULL),
(678, 'manage_attendance', 'Manage Attendance', NULL),
(679, 'payroll', 'Payroll', NULL),
(680, 'add_payroll', 'Payroll', NULL),
(681, 'manage_payroll', 'Manage Payroll', NULL),
(682, 'employee_type', 'Employee Type', NULL),
(683, 'employee_designation', 'Employee Designation', NULL),
(684, 'designation', 'Designation', NULL),
(685, 'add_designation', 'Add Designation', NULL),
(686, 'manage_designation', 'Manage Designation', NULL),
(687, 'designation_update_form', 'Designation Update form', NULL),
(688, 'picture', 'Picture', NULL),
(689, 'country', 'Country', NULL),
(690, 'blood_group', 'Blood Group', NULL),
(691, 'address_line_1', 'Address Line 1', NULL),
(692, 'address_line_2', 'Address Line 2', NULL),
(693, 'zip', 'Zip code', NULL),
(694, 'city', 'City', NULL),
(695, 'hour_rate_or_salary', 'Houre Rate/Salary', NULL),
(696, 'rate_type', 'Rate Type', NULL),
(697, 'hourly', 'Hourly', NULL),
(698, 'salary', 'Salary', NULL),
(699, 'employee_update', 'Employee Update', NULL),
(700, 'checkin', 'Check In', NULL),
(701, 'employee_name', 'Employee Name', NULL),
(702, 'checkout', 'Check Out', NULL),
(703, 'confirm_clock', 'Confirm Clock', NULL),
(704, 'stay', 'Stay Time', NULL),
(705, 'sign_in', 'Sign In', NULL),
(706, 'check_in', 'Check In', NULL),
(707, 'single_checkin', 'Single Check In', NULL),
(708, 'bulk_checkin', 'Bulk Check In', NULL),
(709, 'successfully_checkout', 'Successfully Checkout', NULL),
(710, 'attendance_report', 'Attendance Report', NULL),
(711, 'datewise_report', 'Date Wise Report', NULL),
(712, 'employee_wise_report', 'Employee Wise Report', NULL),
(713, 'date_in_time_report', 'Date In Time Report', NULL),
(714, 'request', 'Request', NULL),
(715, 'sign_out', 'Sign Out', NULL),
(716, 'work_hour', 'Work Hours', NULL),
(717, 's_time', 'Start Time', NULL),
(718, 'e_time', 'In Time', NULL),
(719, 'salary_benefits_type', 'Benefits Type', NULL),
(720, 'salary_benefits', 'Salary Benefits', NULL),
(721, 'beneficial_list', 'Benefit List', NULL),
(722, 'add_beneficial', 'Add Benefits', NULL),
(723, 'add_benefits', 'Add Benefits', NULL),
(724, 'benefits_list', 'Benefit List', NULL),
(725, 'benefit_type', 'Benefit Type', NULL),
(726, 'benefits', 'Benefit', NULL),
(727, 'manage_benefits', 'Manage Benefits', NULL),
(728, 'deduct', 'Deduct', NULL),
(729, 'add', 'Add', NULL),
(730, 'add_salary_setup', 'Add Salary Setup', NULL),
(731, 'manage_salary_setup', 'Manage Salary Setup', NULL),
(732, 'basic', 'Basic', NULL),
(733, 'salary_type', 'Salary Type', NULL),
(734, 'addition', 'Addition', NULL),
(735, 'gross_salary', 'Gross Salary', NULL),
(736, 'set', 'Set', NULL),
(737, 'salary_generate', 'Salary Generate', NULL),
(738, 'manage_salary_generate', 'Manage Salary Generate', NULL),
(739, 'sal_name', 'Salary Name', NULL),
(740, 'gdate', 'Generated Date', NULL),
(741, 'generate_by', 'Generated By', NULL),
(742, 'the_salary_of', 'The Salary of ', NULL),
(743, 'already_generated', ' Already Generated', NULL),
(744, 'salary_month', 'Salary Month', NULL),
(745, 'successfully_generated', 'Successfully Generated', NULL),
(746, 'salary_payment', 'Salary Payment', NULL),
(747, 'employee_salary_payment', 'Employee Salary Payment', NULL),
(748, 'total_salary', 'Total Salary', NULL),
(749, 'total_working_minutes', 'Total Working Hours', NULL),
(750, 'working_period', 'Working Period', NULL),
(751, 'paid_by', 'Paid By', NULL),
(752, 'pay_now', 'Pay Now ', NULL),
(753, 'confirm', 'Confirm', NULL),
(754, 'successfully_paid', 'Successfully Paid', NULL),
(755, 'add_incometax', 'Add Income Tax', NULL),
(756, 'setup_tax', 'Setup Tax', NULL),
(757, 'start_amount', 'Start Amount', NULL),
(758, 'end_amount', 'End Amount', NULL),
(759, 'tax_rate', 'Tax Rate', NULL),
(760, 'setup', 'Setup', NULL),
(761, 'manage_income_tax', 'Manage Income Tax', NULL),
(762, 'income_tax_updateform', 'Income tax Update form', NULL),
(763, 'positional_information', 'Positional Information', NULL),
(764, 'personal_information', 'Personal Information', NULL),
(765, 'timezone', 'Time Zone', NULL),
(766, 'sms', 'SMS', NULL),
(767, 'sms_configure', 'SMS Configure', NULL),
(768, 'url', 'URL', NULL),
(769, 'sender_id', 'Sender ID', NULL),
(770, 'api_key', 'Api Key', NULL),
(771, 'gui_pos', 'GUI POS', NULL),
(772, 'manage_service', 'Manage Service', NULL),
(773, 'service', 'Service', NULL),
(774, 'add_service', 'Add Service', NULL),
(775, 'service_edit', 'Service Edit', NULL),
(776, 'service_csv_upload', 'Service CSV Upload', NULL),
(777, 'service_name', 'Service Name', NULL),
(778, 'charge', 'Charge', NULL),
(779, 'service_invoice', 'Service Invoice', NULL),
(780, 'service_discount', 'Service Discount', NULL),
(781, 'hanging_over', 'ETD', NULL),
(782, 'service_details', 'Service Details', NULL),
(783, 'tax_settings', 'Tax Settings', NULL),
(784, 'default_value', 'Default Value', NULL),
(785, 'number_of_tax', 'Number of Tax', NULL),
(786, 'please_select_employee', 'Please Select Employee', NULL),
(787, 'manage_service_invoice', 'Manage Service Invoice', NULL),
(788, 'update_service_invoice', 'Update Service Invoice', NULL),
(789, 'customer_wise_tax_report', 'Customer Wise  Tax Report', NULL),
(790, 'service_id', 'Service Id', NULL),
(791, 'invoice_wise_tax_report', 'Invoice Wise Tax Report', NULL),
(792, 'reg_no', 'Reg No', NULL),
(793, 'update_now', 'Update Now', NULL),
(794, 'import', 'Import', NULL),
(795, 'add_expense_item', 'Add Expense Item', NULL),
(796, 'manage_expense_item', 'Manage Expense Item', NULL),
(797, 'add_expense', 'Add Expense', NULL),
(798, 'manage_expense', 'Manage Expense', NULL),
(799, 'expense_statement', 'Expense Statement', NULL),
(800, 'expense_type', 'Expense Type', NULL),
(801, 'expense_item_name', 'Expense Item Name', NULL),
(802, 'stock_purchase_price', 'Stock Purchase Price', NULL),
(803, 'purchase_price', 'Purchase Price', NULL),
(804, 'customer_advance', 'Customer Advance', NULL),
(805, 'advance_type', 'Advance Type', NULL),
(806, 'restore', 'Restore', NULL),
(807, 'supplier_advance', 'Supplier Advance', NULL),
(808, 'please_input_correct_invoice_no', 'Please Input Correct Invoice NO', NULL),
(809, 'backup', 'Back Up', NULL),
(810, 'app_setting', 'App Settings', NULL),
(811, 'local_server_url', 'Local Server Url', NULL),
(812, 'online_server_url', 'Online Server Url', NULL),
(813, 'connet_url', 'Connected Hotspot Ip/url', NULL),
(814, 'update_your_app_setting', 'Update Your App Setting', NULL),
(815, 'select_category', 'Select Category', NULL),
(816, 'mini_invoice', 'Mini Invoice', NULL),
(817, 'purchase_details', 'Purchase Details', NULL),
(818, 'disc', 'Dis %', NULL),
(819, 'serial', 'Serial', NULL),
(820, 'transaction_head', 'Transaction Head', NULL),
(821, 'transaction_type', 'Transaction Type', NULL),
(822, 'return_details', 'Return Details', NULL),
(823, 'return_to_customer', 'Return To Customer ', NULL),
(824, 'sales_and_purchase_report_summary', 'Sales And Purchase Report Summary', NULL),
(825, 'add_person_officeloan', 'Add Person (Office Loan)', NULL),
(826, 'add_loan_officeloan', 'Add Loan (Office Loan)', NULL),
(827, 'add_payment_officeloan', 'Add Payment (Office Loan)', NULL),
(828, 'manage_loan_officeloan', 'Manage Loan (Office Loan)', NULL),
(829, 'add_person_personalloan', 'Add Person (Personal Loan)', NULL),
(830, 'add_loan_personalloan', 'Add Loan (Personal Loan)', NULL),
(831, 'add_payment_personalloan', 'Add Payment (Personal Loan)', NULL),
(832, 'manage_loan_personalloan', 'Manage Loan (Personal)', NULL),
(833, 'hrm_management', 'Human Resource', NULL),
(834, 'cash_adjustment', 'Cash Adjustment', NULL),
(835, 'adjustment_type', 'Adjustment Type', NULL),
(836, 'change', 'Change', NULL),
(837, 'sale_by', 'Sale By', NULL),
(838, 'salary_date', 'Salary Date', NULL),
(839, 'earnings', 'Earnings', NULL),
(840, 'total_addition', 'Total Addition', NULL),
(841, 'total_deduction', 'Total Deduction', NULL),
(842, 'net_salary', 'Net Salary', NULL),
(843, 'ref_number', 'Reference Number', NULL),
(844, 'name_of_bank', 'Name Of Bank', NULL),
(845, 'salary_slip', 'Salary Slip', NULL),
(846, 'basic_salary', 'Basic Salary', NULL),
(847, 'return_from_customer', 'Return From Customer ', NULL),
(848, 'quotation', 'Quotation', NULL),
(849, 'add_quotation', 'Add Quotation', NULL),
(850, 'manage_quotation', 'Manage Quotation', NULL),
(851, 'terms', 'Terms', NULL),
(852, 'send_to_customer', 'Sent To Customer', NULL),
(853, 'quotation_no', 'Quotation No', NULL),
(854, 'quotation_date', 'Quotation Date', NULL),
(855, 'total_service_tax', 'Total Service Tax', NULL),
(856, 'totalservicedicount', 'Total Service Discount', NULL),
(857, 'item_total', 'Item Total', NULL),
(858, 'service_total', 'Service Total', NULL),
(859, 'quot_description', 'Quotation Description', NULL),
(860, 'sub_total', 'Sub Total', NULL),
(861, 'mail_setting', 'Mail Setting', NULL),
(862, 'mail_configuration', 'Mail Configuration', NULL),
(863, 'mail', 'Mail', NULL),
(864, 'protocol', 'Protocol', NULL),
(865, 'smtp_host', 'SMTP Host', NULL),
(866, 'smtp_port', 'SMTP Port', NULL),
(867, 'sender_mail', 'Sender Mail', NULL),
(868, 'mail_type', 'Mail Type', NULL),
(869, 'html', 'HTML', NULL),
(870, 'text', 'TEXT', NULL),
(871, 'expiry_date', 'Expiry Date', NULL),
(872, 'api_secret', 'Api Secret', NULL),
(873, 'please_config_your_mail_setting', NULL, NULL),
(874, 'quotation_successfully_added', 'Quotation Successfully Added', NULL),
(875, 'add_to_invoice', 'Add To Invoice', NULL),
(876, 'added_to_invoice', 'Added To Invoice', NULL),
(877, 'closing_balance', 'Closing Balance', NULL),
(878, 'contact', 'Contact', NULL),
(879, 'fax', 'Fax', NULL),
(880, 'state', 'State', NULL),
(881, 'discounts', 'Discount', NULL),
(882, 'address1', 'Address1', NULL),
(883, 'address2', 'Address2', NULL),
(884, 'receive', 'Receive', NULL),
(885, 'purchase_history', 'Purchase History', NULL),
(886, 'cash_payment', 'Cash Payment', NULL),
(887, 'bank_payment', 'Bank Payment', NULL),
(888, 'do_you_want_to_print', 'Do You Want to Print', NULL),
(889, 'yes', 'Yes', NULL),
(890, 'no', 'No', NULL),
(891, 'todays_sale', 'Today\'s Sales', NULL),
(892, 'or', 'OR', NULL),
(893, 'no_result_found', 'No Result Found', NULL),
(894, 'add_service_quotation', 'Add Service Quotation', NULL),
(895, 'add_to_invoice', 'Add To Invoice', NULL),
(896, 'item_quotation', 'Item Quotation', NULL),
(897, 'service_quotation', 'Service Quotation', NULL),
(898, 'return_from', 'Return Form', NULL),
(899, 'customer_return_list', 'Customer Return List', NULL),
(900, 'pdf', 'Pdf', NULL),
(901, 'note', 'Note', NULL),
(902, 'update_debit_voucher', 'Update Debit Voucher', NULL),
(903, 'update_credit_voucher', 'Update Credit voucher', NULL),
(904, 'on', 'On', NULL),
(905, '', '', NULL),
(906, 'total_expenses', 'Total Expense', NULL),
(907, 'already_exist', 'Already Exist', NULL),
(908, 'checked_out', 'Checked Out', NULL),
(909, 'update_salary_setup', 'Update Salary Setup', NULL),
(910, 'employee_signature', 'Employee Signature', NULL),
(911, 'payslip', 'Payslip', NULL),
(912, 'exsisting_role', 'Existing Role', NULL),
(913, 'filter', 'Filter', NULL),
(914, 'testinput', NULL, NULL),
(915, 'update_quotation', 'Update Quotation', NULL),
(916, 'quotation_successfully_updated', 'Quotation Successfully Updated', NULL),
(917, 'successfully_approved', 'Successfully Approved', NULL),
(918, 'expiry', 'Expiry', NULL),
(919, 'purchase_report_shelf_wise', 'Warehouse Wise Report', NULL),
(920, 'sales_cheque_report', 'Manage Cheque', NULL),
(921, 'purchase_cheque_report', 'Manage Cheque', NULL),
(922, 'dispatch_outlet', 'Dispatch Sale', NULL),
(923, 'reacquisition', 'Reacquisition', NULL),
(924, 'warehouse', 'Warehouse', NULL),
(925, 'outlet', 'Outlet Warehouse', NULL),
(926, 'rqsn_form', 'Reacquisition Form', NULL),
(927, 'cw_purchase', 'CW to Purchase', NULL),
(928, 'approval', 'Approval', NULL),
(929, 'aprove_rqsn', ' Approve Reacquisition', NULL),
(930, 'aprove_rqsn_purchase', 'Purchase Reacquisition Approve', NULL),
(931, 'product_recieve', 'Product Receive', NULL),
(932, 'outlet_approve', 'Oultlet Recieve', NULL),
(933, 'aprove_chalan', 'Product Recieve', NULL),
(934, 'outlet_stock', 'Outlet Stock Report', NULL),
(935, 'purchase_order', 'Purchase PO', NULL),
(936, 'aprove_rqsn_outlet', 'Approve Reacquisition Outlet', NULL),
(937, 'rqsn_list', 'Stock Transferred Report (CW)', NULL),
(938, 'outlet_return_list', 'Outlet Return List', NULL),
(939, 'wastage_outlet_return_list', 'Wastage List From Outlet', NULL),
(940, 'rqsn_list_outlet', 'Stock Transferred Report (Outlet)', NULL),
(941, 'sales_order', 'Sales Order', NULL),
(942, 'manage_sales_order', 'Manage Sales Order', NULL),
(943, 'sales_order_report', 'Approved Sales Order', NULL),
(944, 'delivery_chalan', 'Delivery Chalan', NULL),
(945, 'add_new_sales', 'Add Sales', NULL),
(946, 'check_report', 'Order Check Report', NULL),
(947, 'pending_dc', 'Pending Sales Order', NULL),
(948, 'catalogue', 'Catalogue', NULL),
(949, 'draft_rqsn', 'Draft Requisition', NULL),
(950, 'aprove_rqsn_edit', 'Requisition List', NULL),
(951, 'aprove_rqsn_edit_price', 'Requisition List With Estimation', NULL),
(952, 'store_qty', 'Store Qty', NULL),
(953, 'purchase_list', 'Purchase List', NULL),
(954, 'purchase_order', 'Purchase Order', NULL),
(955, 'purchase_order_approve', 'Supplier PAyment', NULL),
(956, 'approval_report', 'Approval Report', NULL),
(957, 'product_receive_form', 'Product Receive Form', NULL),
(958, 'product_receive_form_two', 'Print Barcode Sticker', NULL),
(959, 'product_receive_form_three', 'ERP Entry', NULL),
(960, 'wastage_dec', 'Wastage Declaration', NULL),
(961, 'dead_dec', 'Dead Declaration', NULL),
(962, 'item_ledger', 'Stock Item Ledger', NULL),
(963, 'valuation_report', 'Stock Valuation Report', NULL),
(964, 'product_price', 'Product Price Ledger', NULL),
(965, 'approve_price', 'Approve Price', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

CREATE TABLE `module` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `directory` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `module`
--

INSERT INTO `module` (`id`, `name`, `description`, `image`, `directory`, `status`) VALUES
(1, 'invoice', NULL, NULL, NULL, 1),
(2, 'customer', NULL, NULL, NULL, 1),
(3, 'product', NULL, NULL, NULL, 1),
(4, 'supplier', NULL, NULL, NULL, 1),
(5, 'purchase', NULL, NULL, NULL, 1),
(6, 'stock', NULL, NULL, NULL, 1),
(7, 'return', NULL, NULL, NULL, 1),
(8, 'report', NULL, NULL, NULL, 1),
(9, 'accounts', NULL, NULL, NULL, 1),
(10, 'bank', NULL, NULL, NULL, 1),
(11, 'tax', NULL, NULL, NULL, 1),
(12, 'hrm_management', NULL, NULL, NULL, 1),
(13, 'service', NULL, NULL, NULL, 1),
(14, 'commission', NULL, NULL, NULL, 1),
(15, 'setting', NULL, NULL, NULL, 1),
(16, 'quotation', NULL, NULL, NULL, 1),
(17, 'warehouse ', NULL, NULL, NULL, 1),
(18, 'reacquisition', NULL, NULL, NULL, 1),
(19, 'approval', NULL, NULL, NULL, 1),
(20, 'product_recieve', NULL, NULL, NULL, 1),
(21, 'outlet_stock', NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `money_receipt`
--

CREATE TABLE `money_receipt` (
  `id` int(255) NOT NULL,
  `VNo` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `COAID` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_id` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `remark` text DEFAULT NULL,
  `pay_type` varchar(255) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `cheque_type` varchar(255) DEFAULT NULL,
  `cheque_no` varchar(255) DEFAULT NULL,
  `cheque_date` varchar(255) DEFAULT NULL,
  `other_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `outlet_warehouse`
--

CREATE TABLE `outlet_warehouse` (
  `id` int(255) NOT NULL,
  `outlet_id` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `warehouse_id` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `user_id` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `customer_id` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `outlet_name` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `outlet_warehouse`
--

INSERT INTO `outlet_warehouse` (`id`, `outlet_id`, `warehouse_id`, `user_id`, `customer_id`, `outlet_name`, `status`) VALUES
(7, 'BPXIJHDW17Y4Q4D', 'HK7TGDT69VFMXB7', 'oHhdeY9SHRfOBJE', '', 'Chittagong', 1),
(8, 'IOJCOTGTT1ZTOCM', 'HK7TGDT69VFMXB7', 'BqEHuu0wLvpfiJo', '', 'Dhaka', 1),
(9, 'E99H3W5SLS51PV4', 'HK7TGDT69VFMXB7', NULL, '16', 'MT1', 1),
(10, 'NKZN4G21YFTBXR9', 'HK7TGDT69VFMXB7', '1', '1', 'Walking Customer', 1);

-- --------------------------------------------------------

--
-- Table structure for table `payroll_tax_setup`
--

CREATE TABLE `payroll_tax_setup` (
  `tax_setup_id` int(11) UNSIGNED NOT NULL,
  `start_amount` decimal(12,2) NOT NULL DEFAULT 0.00,
  `end_amount` decimal(12,2) NOT NULL DEFAULT 0.00,
  `rate` decimal(12,2) NOT NULL DEFAULT 0.00,
  `status` varchar(30) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `personal_loan`
--

CREATE TABLE `personal_loan` (
  `per_loan_id` int(11) NOT NULL,
  `transaction_id` varchar(30) NOT NULL,
  `person_id` varchar(30) NOT NULL,
  `debit` decimal(12,2) DEFAULT 0.00,
  `credit` decimal(12,2) NOT NULL DEFAULT 0.00,
  `date` varchar(30) NOT NULL,
  `details` varchar(100) NOT NULL,
  `status` int(11) NOT NULL COMMENT '1=no paid,2=paid'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `person_information`
--

CREATE TABLE `person_information` (
  `id` int(11) NOT NULL,
  `person_id` varchar(50) NOT NULL,
  `person_name` varchar(50) NOT NULL,
  `person_phone` varchar(50) NOT NULL,
  `person_address` text NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `person_ledger`
--

CREATE TABLE `person_ledger` (
  `id` int(11) NOT NULL,
  `transaction_id` varchar(50) NOT NULL,
  `person_id` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  `debit` decimal(12,2) NOT NULL DEFAULT 0.00,
  `credit` decimal(12,2) NOT NULL DEFAULT 0.00,
  `details` text NOT NULL,
  `status` int(11) NOT NULL COMMENT '1=no paid,2=paid'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pesonal_loan_information`
--

CREATE TABLE `pesonal_loan_information` (
  `id` int(11) NOT NULL,
  `person_id` varchar(50) NOT NULL,
  `person_name` varchar(50) NOT NULL,
  `person_phone` varchar(30) NOT NULL,
  `person_address` text NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `product_brand`
--

CREATE TABLE `product_brand` (
  `id` int(11) NOT NULL,
  `brand_id` varchar(255) NOT NULL,
  `brand_name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_brand`
--

INSERT INTO `product_brand` (`id`, `brand_id`, `brand_name`, `status`) VALUES
(1, 'OEM1OKBV38Q3MW1', 'Test Brand', 1),
(2, 'B4LLBO7UJ4RT16A', 'My Brand', 1),
(3, 'SQRMNIIELZSC35R', 'RFL', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `id` int(11) NOT NULL,
  `category_id` varchar(255) DEFAULT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`id`, `category_id`, `category_name`, `status`) VALUES
(1, 'V3C1GMHCYYC5KMG', 'General Goods', 1),
(2, 'Y2KK6KNJQIWD23Z', 'Services', 1),
(3, '2PURPOP1ACPKINM', 'Mechanical Parts', 1),
(4, '1DFJOUKTOQ28QOI', 'Electrical Items', 1),
(5, 'EB886WD44XASJTL', 'Utensils, Accessories & Stationaries', 1),
(6, 'PQ2TFH7QEDQKZNJ', 'Working & Repairing Accessories', 1),
(7, 'B2TJM7K3VWDP8OL', 'Medicines', 1),
(8, '32GAZCG9EGXK5S5', 'Refrigeration', 1),
(9, 'PQ4XVDW96CL7QQZ', 'Raw Parts & Materials', 1),
(10, '4TQXLMLBLJPAQP1', 'Fishing & Net Gear', 1),
(11, 'WPHNEVLXT34GIFJ', 'Engine', 1),
(12, 'D3ITGWOF4UE1XH5', 'Lubricants', 1),
(13, 'MH35OWBFMR35ILN', 'Paints', 1),
(14, 'TJT23BXZLWIDR58', 'Clothing & Wearables', 1),
(15, '2AAUOPF6HLC6PFD', 'Winch & Winch Parts', 1),
(16, '6M9BK6G65DPKHS4', 'Fuels', 1),
(17, '4DD8A8Z82MDXR12', 'Communication', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_information`
--

CREATE TABLE `product_information` (
  `id` int(11) NOT NULL,
  `product_id` varchar(100) NOT NULL,
  `product_id_two` varchar(100) DEFAULT NULL,
  `category_id` varchar(255) DEFAULT NULL,
  `sub_cat_id` varchar(255) DEFAULT NULL,
  `brand_id` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `parts` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `ptype_id` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) NOT NULL,
  `price` float DEFAULT NULL,
  `re_order_level` int(255) DEFAULT NULL,
  `unit` varchar(50) DEFAULT NULL,
  `tax` float DEFAULT NULL COMMENT 'Tax in %',
  `serial_no` varchar(200) DEFAULT NULL,
  `product_model` varchar(100) DEFAULT NULL,
  `product_details` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` int(2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_information`
--

INSERT INTO `product_information` (`id`, `product_id`, `product_id_two`, `category_id`, `sub_cat_id`, `brand_id`, `country`, `parts`, `tag`, `sku`, `ptype_id`, `product_name`, `price`, `re_order_level`, `unit`, `tax`, `serial_no`, `product_model`, `product_details`, `image`, `status`) VALUES
(1, '5485952669', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'SQRMNIIELZSC35R', NULL, NULL, NULL, 'Egofh9drNQ8', 'Local', '20L Bucket (RFL)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(2, '9361578161', NULL, 'Y2KK6KNJQIWD23Z', 'WLR1LOHS5JONLTJ', 'K818CNQR7YVXJL4', NULL, NULL, NULL, 'x7cj4EXSypz', 'Local', '4 Cylinder Fuel Pump Servicing', NULL, NULL, NULL, 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(3, '1215826772', NULL, '2PURPOP1ACPKINM', 'HLE72FWD8USNC5Y', 'NUT1QCF6RCOQHTW', NULL, NULL, NULL, 'ZYsfRtPXkoj', 'Local', '8 Shackle', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(4, '6598713859', NULL, '2PURPOP1ACPKINM', 'HLE72FWD8USNC5Y', 'VG796M9FA257YKW', NULL, NULL, NULL, 'zeb9pu5BcN0', 'Local', '8 Shackle w/ G-Hook', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(5, '3267678234', NULL, '2PURPOP1ACPKINM', 'HLE72FWD8USNC5Y', '4ZEKXRYD76STNMC', NULL, NULL, NULL, 'oRTK97rX4Ie', 'Local', '8 Shackle w/ Swivel', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(6, '6818796896', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'NADLONERZL7H9OC', NULL, NULL, NULL, 'WLaItxhdmf7', 'Local', 'A/C Capacitor', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(7, '2622353141', NULL, 'EB886WD44XASJTL', 'B29KZMCXGOPBJG3', 'EL8FM6MION46GE9', NULL, NULL, NULL, 'jsQZ1mPAp5w', 'Local', 'A4 Paper', NULL, NULL, 'Ream', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(8, '2339253121', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'AZHYXQ3DFI5JDJW', NULL, NULL, NULL, 'HmLMFkwGfgd', 'Local', 'ABC Dry Powder 20kg', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(9, '5613326532', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', '2QR9M2DAIE8Q1CU', NULL, NULL, NULL, 'ilvw0P4FMLr', 'Local', 'ABC Dry Powder 5kg', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(10, '1898882868', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', '3X26P3EHXZIZVD1', NULL, NULL, NULL, 'LfoAawhNug0', 'Local', 'ABC Dry Powder 6kg', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(11, '3712612953', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'MFEFL3QM53SKJIR', NULL, NULL, NULL, 'gO5XTpZl9mu', 'Local', 'AC Bulb 100W 220V', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(12, '9274588466', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'GTZTV1YS4GM45GM', NULL, NULL, NULL, 'lEb571UcLZn', 'Local', 'AC Bulb 100W 220V', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(13, '4837765786', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'BK1COZH135798Z1', NULL, NULL, NULL, '98DO4wMVzhF', 'Local', 'AC Bulb 100W 220V', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(14, '3516481466', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'Z1B1GGIVCSOU1VZ', NULL, NULL, NULL, 'm70iBTcjAWX', 'Local', 'AC Bulb 60W 220V', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(15, '3863397719', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', '4A6BZPZP767XJNE', NULL, NULL, NULL, 'cuw9yG8qE1S', 'Local', 'AC Bulb 60W 220V', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(16, '2713813668', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'P9T318Y3PSDF3JU', NULL, NULL, NULL, 'EJyz5kQMIb1', 'Local', 'AC Bulb 60W 220V', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(17, '8851454712', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'NHPXNCP2DEZF28C', NULL, NULL, NULL, 'l1sq9tR6Ziz', 'Local', 'AC Bulb 60W 220V', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(18, '5258159611', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', '4FSU352JK5LSC1M', NULL, NULL, NULL, 'vcdyA7xnKGk', 'Local', 'AC Bulb 60W 220V', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(19, '9879829362', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'BYBKFI8CZLHAAKM', NULL, NULL, NULL, '3EklKd6TRn9', 'Local', 'AC Cable 220V (Two Core)', NULL, NULL, 'Mtr', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(20, '9682973388', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'AZQ4MB8U5NSLT8O', NULL, NULL, NULL, 'RFgCtWxilHT', 'Local', 'AC Capacitor', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(21, '6914972721', NULL, 'Y2KK6KNJQIWD23Z', 'WLR1LOHS5JONLTJ', 'X7BPPCIQMTMV5RD', NULL, NULL, NULL, 'zW2cDydiGNg', 'Local', 'AC Circuit Repairing', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(22, '8428347257', NULL, 'Y2KK6KNJQIWD23Z', 'WLR1LOHS5JONLTJ', 'NN42DV4AX19F93Q', NULL, NULL, NULL, 'OjQikTt8zWE', 'Local', 'AC Fitting', NULL, NULL, NULL, 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(23, '4639716784', NULL, 'Y2KK6KNJQIWD23Z', 'WLR1LOHS5JONLTJ', '8EHMQ2PF2839ELF', NULL, NULL, NULL, 'VonWr0OpLza', 'Local', 'AC New Blower', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(24, '7467141616', NULL, 'Y2KK6KNJQIWD23Z', 'WLR1LOHS5JONLTJ', 'N4PXL7WGHNI5HM5', NULL, NULL, NULL, 'QsI7GwAhlex', 'Local', 'AC Service Cable', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(25, '8259348874', NULL, 'Y2KK6KNJQIWD23Z', 'WLR1LOHS5JONLTJ', 'TTW4K2Q2E9F1AQN', NULL, NULL, NULL, 'Qu0oeWDNG5R', 'Local', 'AC Service Charge', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(26, '4216181281', NULL, 'Y2KK6KNJQIWD23Z', 'WLR1LOHS5JONLTJ', '5TBZFILH2GACDXJ', NULL, NULL, NULL, 'R1B0tsOcAMP', 'Local', 'AC Servicing', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(27, '4391676622', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'CW1ABIKLE7E8XM6', NULL, NULL, NULL, 'WVPZbrilxqA', 'Local', 'AC/DC Power Supply 30 AMP (Sailor)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(28, '8432298588', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', '362EWS5XDYKDUMJ', NULL, NULL, NULL, 'YWnkj8sMvby', 'Local', 'ACI Aerosol', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(29, '8643711287', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'NQVELJFHUL5JT6U', NULL, NULL, NULL, 'xiR7uKZ8Q4P', 'Local', 'Adapter 0.5\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(30, '7576297923', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'QAYU7H7LAQPBW1E', NULL, NULL, NULL, 'dOs1gPyRkmo', 'Local', 'Adapter 0.75\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(31, '7976973772', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'HSMCNJ2WYK4PPK9', NULL, NULL, NULL, 'xr6qYDao0p7', 'Local', 'Adjustable Fly Wrench 10\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(32, '4443222983', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', '8B4WN5E4DJWUO5Y', NULL, NULL, NULL, 'xEra8MCHYjn', 'Local', 'Adjustable Fly Wrench 12\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(33, '1672261329', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'DQIWKKVB7CK7X4J', NULL, NULL, NULL, 'N4ZDC208bRG', 'Local', 'Adjustable Wrench 12\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(34, '2761551179', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'WTOYDMB67TXQKNL', NULL, NULL, NULL, 'rNvb9RWlh3F', 'Local', 'Adjustable Wrench 6\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(35, '9344481533', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'X52THLZKU44OOD6', NULL, NULL, NULL, '2VQtSo78uML', 'Local', 'Adjustable Wrench 8\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(36, '2948792854', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'Q2RKHN9BNK8FVNK', NULL, NULL, NULL, 'rbh1o2ZaRnx', 'Local', 'Adovas Syrup', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(37, '6333273465', NULL, '2PURPOP1ACPKINM', 'US9B6OUBZYA62E8', 'JOH5DO49VV8OPUJ', NULL, '1R-0749', NULL, '1R-0749', 'Import', 'Advanced Fuel Filter F16 1R-0749 (CAT)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(38, '1874631782', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'OCFZZZYEXZM7QXA', NULL, NULL, NULL, 'XCdYwUEAVxb', 'Local', 'Afrin Nasal Drop', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(39, '7976983855', NULL, '32GAZCG9EGXK5S5', '3XUMP7QWQ7BTCTO', '2S4W77YUHUABUGJ', NULL, NULL, NULL, 'bBkoaD04SQ2', 'Local', 'Air Compressor Cylinder', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(40, '7429764897', NULL, '2PURPOP1ACPKINM', 'US9B6OUBZYA62E8', 'NRSZ7VJ4BCI55L8', NULL, NULL, NULL, '0TjdbCxH6QK', 'Local', 'Air Filter', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(41, '8459269871', NULL, '2PURPOP1ACPKINM', 'US9B6OUBZYA62E8', '2K2JGLOFYQSM8T7', NULL, '4N0015', NULL, '4N0015', 'Local', 'Air Filter 4N0015 (CAT)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(42, '3599444226', NULL, '2PURPOP1ACPKINM', 'US9B6OUBZYA62E8', 'V5QKHQRJBPCZC1J', NULL, '4N0015', NULL, '4N0015', 'Local', 'Air Filter 4N0015 (CAT)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(43, '8447476213', NULL, '2PURPOP1ACPKINM', 'US9B6OUBZYA62E8', '16D2Q2PXCH1O351', NULL, '4N0015', NULL, '4N0015', 'Local', 'Air Filter 4N0015 (CAT)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(44, '7387186939', NULL, '2PURPOP1ACPKINM', 'US9B6OUBZYA62E8', 'EA64IU1OVN4KF1U', NULL, NULL, NULL, 'ZqDYSW34MjG', 'Local', 'Air Filter Foam', NULL, NULL, 'Ft', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(45, '1792253781', NULL, '2PURPOP1ACPKINM', 'US9B6OUBZYA62E8', 'XUXZSISULWNB4L8', NULL, NULL, NULL, 'Wn5iMtcTyvz', 'Local', 'Air Filter Foam', NULL, NULL, 'Sqft', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(46, '7696383839', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'R56X6BIKEPL7O21', NULL, NULL, NULL, 'GjyCnaVcv9p', 'Local', 'Air Freshener', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(47, '8299351941', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'W25CDW1C84TXNW7', NULL, NULL, NULL, '98vFuOTxAtb', 'Local', 'Alatrol 10mg', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(48, '6297596327', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', '8N4SMCEWM3CSUR7', NULL, NULL, NULL, '8HwEkpqNUTO', 'Local', 'Alatrol 10mg', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(49, '7222431361', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'S7TC62KJKETZ7IQ', NULL, NULL, NULL, 'xlqyI2DAW48', 'Local', 'Algicid', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(50, '8241717311', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'BU1LUCH4FLIFFU4', NULL, NULL, NULL, 'jsXV4hOFZAo', 'Local', 'Allen Key Bolt', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(51, '3482331338', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'HHA8P7WKMYRJW6H', NULL, NULL, NULL, 'UGoMIeOrw7t', 'Local', 'Allen Key Bolt (D-10mm, L-4mm)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(52, '9659376826', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'MEU1XZ5RCFY8TPR', NULL, NULL, NULL, '1QGLH92pYro', 'Local', 'Allen Key Bolt (T-3/8\", L-1.75\")', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(53, '3975566412', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'EYXZGPWQJSBUG1B', NULL, NULL, NULL, 'qrtxzFgJGsc', 'Local', 'Allen Key Bolt (T-3/8\", L-2\")', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(54, '6764933223', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'XNDQ5EPVFE91XC2', NULL, NULL, NULL, 'AG8bns9zIim', 'Local', 'Allen Key Set', NULL, NULL, 'Set', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(55, '8367872918', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', '96EEQ7TRX1E8GW3', NULL, NULL, NULL, 'bGBmLnyToid', 'Local', 'Alset', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(56, '6658386928', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'UIRNCO7L4TQWX9B', NULL, NULL, NULL, 'BfYwbx7gGqd', 'Local', 'Aluminium Cover', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(57, '2665262363', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'QXQRCQY29NMP32U', NULL, NULL, NULL, '2XAf0nNPImM', 'Local', 'Aluminium Kettle', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(58, '9656274393', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', '7X66NQ9B3JK291X', NULL, NULL, NULL, 'nb3EVGQip1q', 'Local', 'Aluminium Mug', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(59, '2423867392', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'ZLDOBVV4S6WKZHQ', NULL, NULL, NULL, 'EfvdgGQ6Dto', 'Local', 'Aluminium Net Bowl', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(60, '9464783364', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', '38T7YKFTI7UPZWY', NULL, NULL, NULL, 'pEmTsPlyUKr', 'Local', 'Aluminium Net Bowl (Medium)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(61, '9814446119', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', '5KQ3Q5I6ML8HATJ', NULL, NULL, NULL, '5jGvVuyBlKU', 'Local', 'Aluminium Strainer', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(62, '7275377631', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'DK4X6AZWRXIWOG5', NULL, NULL, NULL, 'WOeLGymjfM6', 'Local', 'Ambrox Syrup', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(63, '8845176822', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'HM94JXCEQ6TGYOD', NULL, NULL, NULL, '4e6vabGl7A9', 'Local', 'Ammonium Phosphate', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(64, '3546576131', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', '7BSWJTCHLIURCTR', NULL, NULL, NULL, '1PYq8xNOdkF', 'Local', 'Ammonium Phosphate', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(65, '1388755465', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'ZDZFZG59EEBU87Z', NULL, NULL, NULL, 'zjA5mrsifpa', 'Local', 'Amodis 400mg', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(66, '3698517538', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'ORGQGQXXTMPALLQ', NULL, NULL, NULL, 'QdX0GJV4il2', 'Local', 'Amodis 400mg', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(67, '5968911663', NULL, '1DFJOUKTOQ28QOI', '8SM6ZUETPZKZHVB', 'FMSC6DJK5E9V3KJ', NULL, NULL, NULL, 'wGECHzBysu2', 'Local', 'Ampere Meter (0-50A)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(68, '8469774941', NULL, '1DFJOUKTOQ28QOI', '8SM6ZUETPZKZHVB', '6AR788QL6BPA2BA', NULL, NULL, NULL, 'SQsH2FBRU9G', 'Local', 'Ampere Multimeter', NULL, NULL, 'Set', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(69, '6997669928', NULL, 'PQ4XVDW96CL7QQZ', 'PZNECLLN1S7KLAT', '51Q4PPX7LOW5FAU', NULL, NULL, NULL, 'U1W4eqw23PZ', 'Local', 'Angle (2\" x 2\") (2.5\" x 2.5\")', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(70, '6975763365', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'OQO33QCWGD81CBU', NULL, NULL, NULL, '0eYnaOPIMbJ', 'Local', 'Araldite Gum', NULL, NULL, 'Set', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(71, '7236488129', NULL, 'EB886WD44XASJTL', 'B29KZMCXGOPBJG3', '3QKSIWZGEPRG1HL', NULL, NULL, NULL, 'T6BdlA2DPNn', 'Local', 'Art Paper (0.5mm)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(72, '8791582398', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', '51C44OX46CYABXR', NULL, NULL, NULL, 'exEfXpZJQ3k', 'Local', 'Asbestos Cloth', NULL, NULL, 'Lbs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(73, '7549745327', NULL, 'EB886WD44XASJTL', 'B29KZMCXGOPBJG3', 'NZILC1LB8RPSM94', NULL, NULL, NULL, 'ms826KEi9gO', 'Local', 'Asbestos Tape 4\"', NULL, NULL, 'Lbs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(74, '3658892491', NULL, 'EB886WD44XASJTL', 'B29KZMCXGOPBJG3', 'NTDBT2Q4U8RBCGB', NULL, NULL, NULL, 'pw930NtXvcr', 'Local', 'Attendance Book', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(75, '9636253879', NULL, 'EB886WD44XASJTL', 'B29KZMCXGOPBJG3', 'IPL8T559EIEW3GY', NULL, NULL, NULL, 'qWo1S2GUB4H', 'Local', 'Attendance Book', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(76, '3545174274', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'LV88H3O2FSGHN13', NULL, NULL, NULL, 'lkvhcDzPux0', 'Local', 'Auto Boil Water Kettle', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(77, '1245287134', NULL, '32GAZCG9EGXK5S5', 'TDZYAAE2449JJPO', 'TCWMR9DFF8UJYJX', NULL, NULL, NULL, 'Q5wWGBncAEM', 'Local', 'Auto Regulator (Danfoss)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(78, '8127745317', NULL, '32GAZCG9EGXK5S5', 'TDZYAAE2449JJPO', 'GCJKQAB9A5TJDKQ', NULL, '202C', NULL, '202C', 'Local', 'Auto Temp. Controller w/ Sensor (Model 202C) (Danfoss)', NULL, NULL, 'Pcs', 0, NULL, '1RJTXYSB7DKP69Q', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(79, '1695717983', NULL, '32GAZCG9EGXK5S5', 'TDZYAAE2449JJPO', 'V7AB66AYU5E13ZR', NULL, '202C', NULL, '202C', 'Local', 'Auto Temp. Controller w/ Sensor (Model 202C) (Danfoss)', NULL, NULL, 'Pcs', 0, NULL, '1RJTXYSB7DKP69Q', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(80, '8978645455', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'ILF7CIBUTNWPMGJ', NULL, 'ME90207', NULL, 'ME90207', 'Local', 'Auto Voltage Regulator (Model No. ME90207) (Singapore)', NULL, NULL, 'Pcs', 0, NULL, 'LWCUI8UEOQGSOOR', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(81, '5586753784', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'U6GAP7C4CZ1DAJ9', NULL, NULL, NULL, '6u0J9thpaoK', 'Local', 'Avil', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(82, '2317437962', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', '1VG73HAHJFBDLHO', NULL, NULL, NULL, '0JG4lAuErkO', 'Local', 'Avil', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(83, '2852372436', NULL, '1DFJOUKTOQ28QOI', '8SM6ZUETPZKZHVB', '43KFCPEH3XER32Y', NULL, NULL, NULL, 'RzouKI9fAMk', 'Local', 'AVOmeter', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(84, '7628573895', NULL, '4TQXLMLBLJPAQP1', 'AP7VRUIXZF1AZ3Q', 'NKRF7J4EIGB51NS', NULL, NULL, NULL, 'NhiSGsOC41D', 'Local', 'Ayla Rope 32mm', NULL, NULL, 'Mtr', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(85, '6233264335', NULL, '4TQXLMLBLJPAQP1', 'AP7VRUIXZF1AZ3Q', 'B1U1TV7LFDBF9VS', NULL, NULL, NULL, 'MUg3bYwTem0', 'Local', 'Ayla Rope 32mm (Thai)', NULL, NULL, 'Ft', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(86, '2959353118', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'TA278RSQUFKTDPI', NULL, NULL, NULL, 'b12zIkMySto', 'Local', 'Bactamox', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(87, '6244253643', NULL, '4TQXLMLBLJPAQP1', '96NEXH7VXOGZEEV', '14UJA1P16WLTXN3', NULL, NULL, NULL, 'KDa4SU27xdQ', 'Import', 'Bag Cover PE Net 120mm (Danish)', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(88, '3174924195', NULL, '4TQXLMLBLJPAQP1', '96NEXH7VXOGZEEV', 'UZNPL3BLXGIPCJ3', NULL, NULL, NULL, '4EyC0qeYsfr', 'Local', 'Bag Cover PE Net 4.0mm x 120mm (Single)', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(89, '8363552957', NULL, '4TQXLMLBLJPAQP1', '3DAABSCEK5CQYBM', 'AXZIPBPHVMUBUWX', NULL, NULL, NULL, 'RpNFvlKDcBm', 'Import', 'Bag Repairing Twine', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(90, '6936845716', NULL, '4TQXLMLBLJPAQP1', '3DAABSCEK5CQYBM', 'AER7O6994TUMEDP', NULL, NULL, NULL, 'BpIwEfgAVe5', 'Local', 'Bag Repairing Twine', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(91, '3791814962', NULL, '4TQXLMLBLJPAQP1', '3DAABSCEK5CQYBM', 'DOX3H66315CXD5O', NULL, NULL, NULL, 'wQSPjkbXzys', 'Local', 'Bag Repairing Twine (Thai)', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(92, '4291736394', NULL, '4TQXLMLBLJPAQP1', '3DAABSCEK5CQYBM', 'YI262NSUFW3VUR5', NULL, NULL, NULL, 'LhEA2F7IeqY', 'Local', 'Bag Repairing Twine 2.5mm (Green) (PP)', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(93, '6172367944', NULL, '2PURPOP1ACPKINM', '2LRMZF78F9TMQLN', '11YI7SCQKY48UXY', NULL, '6008ZZ', NULL, '6008ZZ', 'Local', 'Ball Bearing 6008ZZ', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(94, '3596296168', NULL, '2PURPOP1ACPKINM', '2LRMZF78F9TMQLN', 'WOZEWDJ9LXZB7E3', NULL, '6204ZZ', NULL, '6204ZZ', 'Local', 'Ball Bearing 6204ZZ', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(95, '3689476548', NULL, '2PURPOP1ACPKINM', '2LRMZF78F9TMQLN', '1K4ODPB2Q7WWS63', NULL, '6205ZZ SKF', NULL, '6205ZZ SKF', 'Local', 'Ball Bearing 6205ZZ SKF', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(96, '5848118244', NULL, '2PURPOP1ACPKINM', '2LRMZF78F9TMQLN', 'EV68KC3RH2KY3WG', NULL, '6208', NULL, '6208', 'Import', 'Ball Bearing 6208', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(97, '6229664914', NULL, '2PURPOP1ACPKINM', '2LRMZF78F9TMQLN', '7F55YXQVKAVB8DH', NULL, '6208ZZ SKF', NULL, '6208ZZ SKF', 'Local', 'Ball Bearing 6208ZZ SKF', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(98, '4988424682', NULL, '2PURPOP1ACPKINM', '2LRMZF78F9TMQLN', 'ZCOEAV1GH6AOS1I', NULL, '6304ZZ SKF', NULL, '6304ZZ SKF', 'Local', 'Ball Bearing 6304ZZ SKF', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(99, '2234411473', NULL, '2PURPOP1ACPKINM', '2LRMZF78F9TMQLN', 'LX6V8PKZESP86JQ', NULL, '6305ZZ', NULL, '6305ZZ', 'Local', 'Ball Bearing 6305ZZ', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(100, '8386174915', NULL, '2PURPOP1ACPKINM', '2LRMZF78F9TMQLN', 'U82Z4AK9JBPE6QF', NULL, '6305ZZ SKF', NULL, '6305ZZ SKF', 'Local', 'Ball Bearing 6305ZZ SKF', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(101, '9137986616', NULL, '2PURPOP1ACPKINM', '2LRMZF78F9TMQLN', 'BH5BX2GSGNBDKNT', NULL, '6306ZZ', NULL, '6306ZZ', 'Local', 'Ball Bearing 6306ZZ', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(102, '8367661821', NULL, '2PURPOP1ACPKINM', '2LRMZF78F9TMQLN', 'FVITYCZ31ZH3RZP', NULL, '6308ZZ', NULL, '6308ZZ', 'Local', 'Ball Bearing 6308ZZ', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(103, '1249454971', NULL, '2PURPOP1ACPKINM', '2LRMZF78F9TMQLN', 'SM3GTBZG8I8CZ8N', NULL, '6312ZZ', NULL, '6312ZZ', 'Local', 'Ball Bearing 6312ZZ', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(104, '3681999897', NULL, '2PURPOP1ACPKINM', '2LRMZF78F9TMQLN', 'NVQGRY3IFQC2T5O', NULL, '6312ZZ', NULL, '6312ZZ', 'Import', 'Ball Bearing 6312ZZ', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(105, '6847733657', NULL, '2PURPOP1ACPKINM', '2LRMZF78F9TMQLN', 'XM6D4F87KADDMFU', NULL, '6312ZZ SKF', NULL, '6312ZZ SKF', 'Local', 'Ball Bearing 6312ZZ SKF', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(106, '8916157376', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'RQWO95PM9E2J25R', NULL, NULL, NULL, 'KoGVn6LShrx', 'Local', 'Ball Hammer', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(107, '3395427748', NULL, 'EB886WD44XASJTL', 'B29KZMCXGOPBJG3', 'FLKPZLVXLGF8P1G', NULL, NULL, NULL, 'Oo5Wyrc6sPZ', 'Local', 'Ball Pen', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(108, '7251146751', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', '77UP9YTNT357DSV', NULL, NULL, NULL, 'OgR7IQY0doh', 'Local', 'Ball Soap', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(109, '4898938949', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'TX7C7MTKEEIKMST', NULL, NULL, NULL, '7c2grdLXqMQ', 'Local', 'Ballon', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(110, '5625585851', NULL, 'PQ4XVDW96CL7QQZ', 'D7LDHD3U9FA9HXD', 'Z332MJSTH46HWSA', NULL, NULL, NULL, 'E9DBTXJr5tW', 'Local', 'Bamboo Pipe (OD-73mm, T-8mm)', NULL, NULL, 'Ft', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(111, '2328186296', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'XGOPN1LO1W15PBA', NULL, NULL, NULL, 'Ddi2oEXalwv', 'Local', 'Basok Syrup', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(112, '9573678424', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'DRI58MILLT78KEO', NULL, NULL, NULL, 'lhFwebvsgEi', 'Local', 'Basok Syrup', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(113, '2779979277', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'HIZA2JDUH3IGQAD', NULL, NULL, NULL, '2ZxCywsOr0I', 'Local', 'Battery 12V 29 Plate (Hamko)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(114, '9392288881', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'NDYFSCCGL7FOKXW', NULL, NULL, NULL, 'lFzkdGMi0rU', 'Local', 'Battery 12V 29 Plate (Hamko)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(115, '1184111687', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'T55J1P7X77K4UC1', NULL, NULL, NULL, 'V5MWtkuN6yI', 'Local', 'Battery 12V 29 Plate (Hamko)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(116, '7121982544', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'BV812B7IG9E6TNL', NULL, NULL, NULL, 'TZB6H3Paowh', 'Local', 'Battery 40V 29 Plate (Hamko)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(117, '4553871231', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'Y3KAS6HM5WLMQBV', NULL, NULL, NULL, 'JmN7whRg46z', 'Local', 'Battery 9V', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(118, '1846558132', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'G9W1AHDEIX14S6X', NULL, NULL, NULL, 'ed0swq3f2p6', 'Local', 'Battery 9V', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(119, '8665742546', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', '9ITBWPMI2YY22T1', NULL, NULL, NULL, '7nP9MmhVtDO', 'Local', 'Battery Charger', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(120, '6829921713', NULL, '1DFJOUKTOQ28QOI', '8SM6ZUETPZKZHVB', 'TX1Y7KMOI99RDCU', NULL, NULL, NULL, 'MPjNuwAfm9y', 'Local', 'Battery Hydrometer', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(121, '3149931935', NULL, 'WPHNEVLXT34GIFJ', 'OQDFA9V8X4P86QI', 'HH7REH26GIAO3IC', NULL, '214950', NULL, '214950', 'Local', 'Bearing Connecting Rod (Standard) (NT855) (214950)', NULL, NULL, 'Pair', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(122, '9441687647', NULL, 'WPHNEVLXT34GIFJ', 'OQDFA9V8X4P86QI', 'W9MVGB4W3E4M3F1', NULL, '214950', NULL, '214950', 'Local', 'Bearing Connecting Rod (Standard) (NT855) (214950)', NULL, NULL, 'Pair', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(123, '7929836736', NULL, 'WPHNEVLXT34GIFJ', 'OQDFA9V8X4P86QI', 'GE7K16HP6Z1TFZK', NULL, '214950', NULL, '214950', 'Local', 'Bearing Connecting Rod Set (Standard) (NT855) (214950)', NULL, NULL, 'Set', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(124, '5566924718', NULL, 'D3ITGWOF4UE1XH5', 'WXIC3HA35CQKBDW', 'QHK2DRBQ23F7RW2', NULL, NULL, NULL, 'f5zJGHkxNAo', 'Local', 'Bearing Grease (Red USA)', NULL, NULL, 'Tin', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(125, '5833994461', NULL, '2PURPOP1ACPKINM', '2LRMZF78F9TMQLN', 'Z6BXGWGUTF5FQB4', NULL, '1215K', NULL, '1215K', 'Local', 'Bearing Socket 1215K', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(126, '9396491253', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'JQ4B6EUUDRKMH2C', NULL, NULL, NULL, 'WBFxaguIjOT', 'Local', 'Bed (Grade 1)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(127, '2227958933', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'PC4CZWWXX2ZIBXN', NULL, NULL, NULL, 'aJStd3BCZoA', 'Local', 'Bed (Grade 2)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(128, '6999779931', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'P6TBWLJW28KKVZX', NULL, NULL, NULL, 'mMAf4P5rs3o', 'Local', 'Bed Mattress', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(129, '8364588317', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'NMXF5TI91WL25BA', NULL, NULL, NULL, 'ozkx3fDvcb5', 'Local', 'Bed Sheet (4.5\' x 7\')', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(130, '5616262895', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'WY8ELUDTV9FUKYM', NULL, NULL, NULL, 'Uj0ldkyGmDQ', 'Local', 'Bed Sheet (Grade 1)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(131, '9351227179', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', '776LBV9ZI237OQ5', NULL, NULL, NULL, 'eywWm3Gdq0o', 'Local', 'Bed Sheet (Grade 1)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(132, '1832729446', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', '2LR7JLRB8O8TQ9A', NULL, NULL, NULL, 'metDOVNGY64', 'Local', 'Bed Sheet (Grade 2)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(133, '4421624417', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'P2D7A57VBYF2SMD', NULL, NULL, NULL, 'IhDW1ygLlBJ', 'Local', 'Bed Sheet w/ Cover', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(134, '4872674352', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', '92PRGQW885QBYIT', NULL, NULL, NULL, '5DdPlOnTxCp', 'Local', 'Belcha', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(135, '7929465227', NULL, 'PQ4XVDW96CL7QQZ', 'PZNECLLN1S7KLAT', 'PKVGJODFFWN91QY', NULL, NULL, NULL, 'HeagJSZA8oN', 'Local', 'Bend 1.5\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(136, '1673931733', NULL, 'PQ4XVDW96CL7QQZ', 'PZNECLLN1S7KLAT', '4NL7CLWI2GIS3UO', NULL, NULL, NULL, 'PKyIEv0MiO6', 'Local', 'Bend 2\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(137, '5429485445', NULL, 'PQ4XVDW96CL7QQZ', 'PZNECLLN1S7KLAT', 'XSN4KYE6C15WL3U', NULL, NULL, NULL, 'px2KQ9tzRFT', 'Local', 'Bend 2.5\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(138, '9156279626', NULL, 'PQ4XVDW96CL7QQZ', 'PZNECLLN1S7KLAT', 'IFMYV4481ZVHONM', NULL, NULL, NULL, 'uElSMnDxX7N', 'Local', 'Bend 3\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(139, '3878223881', NULL, '4TQXLMLBLJPAQP1', 'AP7VRUIXZF1AZ3Q', 'NQK3JRHNCSU8MOI', NULL, NULL, NULL, 'sp8lgWrtfaR', 'Local', 'Beni Rope (Danish) (1 Coil = 205 mtr)', NULL, NULL, 'Mtr', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(140, '4848853457', NULL, '4TQXLMLBLJPAQP1', 'AP7VRUIXZF1AZ3Q', 'YE2IKWKJKMBJHOG', NULL, NULL, NULL, '4QH8WK5eTld', 'Local', 'Beni Rope 24mm (Danish)', NULL, NULL, 'Mtr', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(141, '5484713575', NULL, '4TQXLMLBLJPAQP1', 'AP7VRUIXZF1AZ3Q', 'RY4MXDCACIYKK3P', NULL, NULL, NULL, 'StC37de8bL4', 'Local', 'Beni Rope 28mm (Danish)', NULL, NULL, 'Ft', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(142, '3489476523', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'KJTGXSDD7EXAGOW', NULL, NULL, NULL, 'n8wvIDceHKL', 'Local', 'Big Bucket', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(143, '7821726198', NULL, 'EB886WD44XASJTL', 'B29KZMCXGOPBJG3', 'UAVOAH4R4HD3Y21', NULL, NULL, NULL, '7JnSt1ZMArs', 'Local', 'Big Spoon', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(144, '2266956623', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'ODKUKKO9BLUQLBS', NULL, NULL, NULL, 'y9bsl1QSjCe', 'Local', 'Binoculars', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(145, '2262479938', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'W6NJ9BHZBC3VNWI', NULL, NULL, NULL, 'LJAV3mbUf2I', 'Local', 'Black Glass (For Welding Helmet)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(146, '4511645653', NULL, 'MH35OWBFMR35ILN', 'XMAG1UXN247Z1FF', '7LQB5ZWQUR6ZFQ1', NULL, NULL, NULL, 'vtVBlPcTzkF', 'Local', 'Black Paint', NULL, NULL, 'Tin', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(147, '2267884342', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'S6VKVDSLWWBNGX4', NULL, NULL, NULL, '0guWZkPpemj', 'Local', 'Blanket (Grade 1)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(148, '5216844543', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'Q28NL9VF5ROAP6F', NULL, NULL, NULL, 'Zuqxt1CXeHo', 'Local', 'Blanket (Grade 1)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(149, '5312148958', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'M99BMU8566ELIXZ', NULL, NULL, NULL, 'QNyInpCRe7L', 'Local', 'Blanket (Grade 2)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(150, '2546832836', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'D531TQQZJ6XAEGH', NULL, NULL, NULL, 'cRoqYzwGlat', 'Local', 'Bleaching Powder', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(151, '5977861718', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', '1AJQYTTS12TY43K', NULL, NULL, NULL, 'aD3N2Kf1k4o', 'Local', 'Blender Machine', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(152, '1279117841', NULL, 'MH35OWBFMR35ILN', 'XMAG1UXN247Z1FF', '4A4TNIBB6MIEK74', NULL, NULL, NULL, 'VW9GgzJfNPa', 'Local', 'Blue Enamel Paint', NULL, NULL, 'Gallon', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(153, '7652996238', NULL, 'MH35OWBFMR35ILN', 'XMAG1UXN247Z1FF', '9HGRZD6JBZJHWVD', NULL, NULL, NULL, 'SUJOj49IEsL', 'Local', 'Blue Paint', NULL, NULL, 'Gallon', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(154, '5463224754', NULL, '32GAZCG9EGXK5S5', '3XUMP7QWQ7BTCTO', 'AK3DMH35MRP3LGL', NULL, '08179', NULL, '08179', 'Local', 'Bock F-16 Front Bearing Bush (08179)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(155, '9593544219', NULL, '32GAZCG9EGXK5S5', '3XUMP7QWQ7BTCTO', 'D247XTQTJ18I66R', NULL, '08493', NULL, '08493', 'Local', 'Bock F-16 Gasket Kit Set (08493)', NULL, NULL, 'Set', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(156, '3838313168', NULL, '32GAZCG9EGXK5S5', '3XUMP7QWQ7BTCTO', 'ORGKP5XQNBGG3HM', NULL, '08491', NULL, '08491', 'Local', 'Bock F-16 Oil Pump Set', NULL, NULL, 'Set', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(157, '3692667138', NULL, '32GAZCG9EGXK5S5', '3XUMP7QWQ7BTCTO', 'VH743COSHXUWWXA', NULL, NULL, NULL, '6bOkYFhjD1g', 'Local', 'Bock F-16 Piston Connecting Assembly Set (08491)', NULL, NULL, 'Set', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(158, '6218218774', NULL, '32GAZCG9EGXK5S5', '3XUMP7QWQ7BTCTO', 'C5JSO6D8IYTC87N', NULL, '08465', NULL, '08465', 'Local', 'Bock F-16 Rear Bearing Bush (08465)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(159, '8682645155', NULL, '32GAZCG9EGXK5S5', '3XUMP7QWQ7BTCTO', 'WCTF3D9DGKIFYDM', NULL, '08012', NULL, '08012', 'Local', 'Bock F-16 Shaft Seal Assembly Set (08012)', NULL, NULL, 'Set', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(160, '5284517548', NULL, '32GAZCG9EGXK5S5', '3XUMP7QWQ7BTCTO', '834T56YVIQICKG7', NULL, NULL, NULL, 'zb1HgiZ6LDy', 'Local', 'Bock F-16 Shaft Seal Set w/ Flange', NULL, NULL, 'Set', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(161, '4765561944', NULL, '32GAZCG9EGXK5S5', '3XUMP7QWQ7BTCTO', 'UII5QYIKIT16P1A', NULL, NULL, NULL, '9ZPhDlrVUyW', 'Local', 'Bock F-16 Valve Plate', NULL, NULL, 'Set', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(162, '4988296211', NULL, '32GAZCG9EGXK5S5', '3XUMP7QWQ7BTCTO', 'KOT73HEBB8DYZ7B', NULL, '08498', NULL, '08498', 'Import', 'Bock F-16 Valve Plate Assembly Set (08498)', NULL, NULL, 'Set', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(163, '7483326434', NULL, '32GAZCG9EGXK5S5', '3XUMP7QWQ7BTCTO', '6I2B46I8NEV7RPZ', NULL, '08498', NULL, '08498', 'Local', 'Bock F-16 Valve Plate Assembly Set (08498)', NULL, NULL, 'Set', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(164, '5183365617', NULL, '32GAZCG9EGXK5S5', '3XUMP7QWQ7BTCTO', '8CYYJ1SLHKQFXMA', NULL, NULL, NULL, '39rkWpOaYEC', 'Local', 'Bock F-5 Compressor Head Cover', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(165, '5297255865', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', '5ZTHJCL6DHZ7B8A', NULL, NULL, NULL, 'rZ1ziEyHNTg', 'Local', 'Boric Acid', NULL, NULL, 'Box', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(166, '1323964194', NULL, 'EB886WD44XASJTL', 'B29KZMCXGOPBJG3', 'WBJ2G2L1AA9LZ2O', NULL, NULL, NULL, '3soRDJcI8e4', 'Local', 'Boti', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(167, '5849412868', NULL, '4TQXLMLBLJPAQP1', '96NEXH7VXOGZEEV', 'T7M7WOW6KYFIYOI', NULL, NULL, NULL, 'LlKam9YwgSt', 'Local', 'Braided PE Net 1.6mm x 60mm (Danish)', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(168, '9159617936', NULL, '4TQXLMLBLJPAQP1', '96NEXH7VXOGZEEV', 'UWXSHTJPF9UMIVX', NULL, NULL, NULL, 'VTnsMYrvkZo', 'Local', 'Braided PE Net 1.7mm x 100mm (Danish)', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(169, '2175742456', NULL, '4TQXLMLBLJPAQP1', '96NEXH7VXOGZEEV', '1CKDGAHXFCBH3Z9', NULL, NULL, NULL, 'qXF3Ecy716N', 'Local', 'Braided PE Net 1.7mm x 100mm (Sapphire)', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(170, '5346658399', NULL, '4TQXLMLBLJPAQP1', '96NEXH7VXOGZEEV', '3ZL6ZCI1QL1GPMX', NULL, NULL, NULL, 'Wqi5ExZlJkv', 'Local', 'Braided PE Net 1.8mm x 100mm (Danish)', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(171, '5649638159', NULL, '4TQXLMLBLJPAQP1', '96NEXH7VXOGZEEV', 'XRR4LDJKDZ4AIVZ', NULL, NULL, NULL, '0pDl9jBdOEi', 'Local', 'Braided PE Net 1.8mm x 100mm (Danish)', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(172, '6917385594', NULL, '4TQXLMLBLJPAQP1', '96NEXH7VXOGZEEV', '834J2IUP8NIP2SQ', NULL, NULL, NULL, 'XsogIhyTEA2', 'Local', 'Braided PE Net 1.8mm x 100mm (Single) (Danish)', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(173, '6578426213', NULL, '4TQXLMLBLJPAQP1', '96NEXH7VXOGZEEV', 'KQAQXQ7YHZAFU6Z', NULL, NULL, NULL, 'fX8CBptDZKg', 'Local', 'Braided PE Net 1.8mm x 60mm', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(174, '7757475372', NULL, '4TQXLMLBLJPAQP1', '96NEXH7VXOGZEEV', 'BOJ47JJMFT81ICL', NULL, NULL, NULL, 'CsgTuV3bK2I', 'Local', 'Braided PE Net 1.8mm x 60mm', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(175, '2985638634', NULL, '4TQXLMLBLJPAQP1', '96NEXH7VXOGZEEV', '8M5DX2HAAI5OYO7', NULL, NULL, NULL, 'w9gIPnyxFrk', 'Local', 'Braided PE Net 1.8mm x 60mm (Danish)', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(176, '8291397353', NULL, '4TQXLMLBLJPAQP1', '96NEXH7VXOGZEEV', 'BJR7L99EQITNUSV', NULL, NULL, NULL, '8I3ft0bkLEp', 'Local', 'Braided PE Net 1.8mm x 60mm (Single) (Danish)', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(177, '8268579622', NULL, '4TQXLMLBLJPAQP1', '96NEXH7VXOGZEEV', '9V585GLL4B1A87L', NULL, NULL, NULL, 'pvJQEjBWr3u', 'Local', 'Braided PE Net 100mm (Danish)', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(178, '3333722254', NULL, '4TQXLMLBLJPAQP1', '96NEXH7VXOGZEEV', 'P81EYC1K9HIUALC', NULL, NULL, NULL, 'SrYsX9ECtAv', 'Local', 'Braided PE Net 2.0mm x 100mm (Danish)', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(179, '5477221889', NULL, '4TQXLMLBLJPAQP1', '96NEXH7VXOGZEEV', 'QEPON94YI9YBMTR', NULL, NULL, NULL, 'wMfV9vl8R3o', 'Local', 'Braided PE Net 2.5mm x 200mm (Danish)', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1);
INSERT INTO `product_information` (`id`, `product_id`, `product_id_two`, `category_id`, `sub_cat_id`, `brand_id`, `country`, `parts`, `tag`, `sku`, `ptype_id`, `product_name`, `price`, `re_order_level`, `unit`, `tax`, `serial_no`, `product_model`, `product_details`, `image`, `status`) VALUES
(180, '7669794323', NULL, '4TQXLMLBLJPAQP1', '96NEXH7VXOGZEEV', 'H9D8T3SJXMJRQI7', NULL, NULL, NULL, 'ZFsCO2UrGwi', 'Local', 'Braided PE Net 200mm (Danish)', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(181, '4321529391', NULL, '4TQXLMLBLJPAQP1', '96NEXH7VXOGZEEV', 'AX7DJ82LAHF2TNW', NULL, NULL, NULL, 'mUxbAwvQhVP', 'Local', 'Braided PE Net 200mm (Double) (Danish)', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(182, '7528653868', NULL, '4TQXLMLBLJPAQP1', '96NEXH7VXOGZEEV', '14RVP2K11HM9VQR', NULL, NULL, NULL, '52cxeDyn34J', 'Import', 'Braided PE Net 200mm (Double) (Danish)', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(183, '5768166759', NULL, '4TQXLMLBLJPAQP1', '96NEXH7VXOGZEEV', '3TH45W8LS8BFGHE', NULL, NULL, NULL, 'uyUQTPJOGnc', 'Local', 'Braided PE Net 20mm (Danish)', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(184, '2461284315', NULL, '4TQXLMLBLJPAQP1', '96NEXH7VXOGZEEV', 'GYX2GNWC2LTSGLH', NULL, NULL, NULL, 'qgecXpnyWxJ', 'Local', 'Braided PE Net 3.0mm x 200mm (Danish)', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(185, '1132162285', NULL, '4TQXLMLBLJPAQP1', '96NEXH7VXOGZEEV', 'P4JUUGHKUUMT1O4', NULL, NULL, NULL, '8W0nuDspHKg', 'Local', 'Braided PE Net 3.0mm x 200mm (Single) (Danish)', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(186, '7238458897', NULL, '4TQXLMLBLJPAQP1', '96NEXH7VXOGZEEV', 'EDZ3LMNYY8Y9IX8', NULL, NULL, NULL, 'jLf0uwCaNtq', 'Local', 'Braided PE Net 3.5mm x 200mm (Danish)', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(187, '4547497542', NULL, '4TQXLMLBLJPAQP1', '96NEXH7VXOGZEEV', 'XTF48OQE28TUY4J', NULL, NULL, NULL, 'caIQg1jGPvt', 'Local', 'Braided PE Net 3.8mm x 400mm (Danish)', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(188, '3584639548', NULL, '4TQXLMLBLJPAQP1', '96NEXH7VXOGZEEV', '2V7WFF7RTMLEA3B', NULL, NULL, NULL, '18CN3ToRBbc', 'Local', 'Braided PE Net 3.8mm x 400mm (Danish)', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(189, '4144155118', NULL, '4TQXLMLBLJPAQP1', '96NEXH7VXOGZEEV', 'UH7FN7GXBRDK4QC', NULL, NULL, NULL, 'Zj4BaxGtcpv', 'Local', 'Braided PE Net 30mm (Single) (Petticoat Net)', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(190, '8795629452', NULL, '4TQXLMLBLJPAQP1', '96NEXH7VXOGZEEV', 'THB5W2UPJAQY6X4', NULL, NULL, NULL, 'uBCGlOwKc9x', 'Local', 'Braided PE Net 4.0mm x 200mm (Double) (Danish)', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(191, '2368563751', NULL, '4TQXLMLBLJPAQP1', '96NEXH7VXOGZEEV', 'EH7NY35E3UMUXOR', NULL, NULL, NULL, 'VlvJAI4bkQ3', 'Local', 'Braided PE Net 400mm (Danish)', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(192, '7931621414', NULL, '4TQXLMLBLJPAQP1', '96NEXH7VXOGZEEV', 'NCVQM7M4TK6LE24', NULL, NULL, NULL, 'AJIckn80mMZ', 'Local', 'Braided PE Net 60mm (Danish)', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(193, '7693276422', NULL, '4TQXLMLBLJPAQP1', '3DAABSCEK5CQYBM', 'CJ12VRXWZ89ZG4S', NULL, NULL, NULL, 'UMVt7yEbwpP', 'Local', 'Braided PE Repairing Twine', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(194, '3484751945', NULL, '4TQXLMLBLJPAQP1', '3DAABSCEK5CQYBM', '2CD5UGF7K7A8CT1', NULL, NULL, NULL, '7PQWETVh0gm', 'Local', 'Braided PE Twine 1.7mm (Danish)', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(195, '9958892635', NULL, '4TQXLMLBLJPAQP1', '3DAABSCEK5CQYBM', 'WXLJO6MLGU2NH8M', NULL, NULL, NULL, 'WPdLeXiTBSv', 'Local', 'Braided PE Twine 1.8mm (Danish)', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(196, '8563623998', NULL, '4TQXLMLBLJPAQP1', '3DAABSCEK5CQYBM', '53BWJEI1NVQRAHN', NULL, NULL, NULL, 'TpIJ7AtZeQf', 'Local', 'Braided PE Twine 1.8mm (Green) (Danish)', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(197, '5672756869', NULL, '4TQXLMLBLJPAQP1', '3DAABSCEK5CQYBM', '3751RR93HPBJKKM', NULL, NULL, NULL, 's4TSPhEIt3w', 'Local', 'Braided PE Twine 1.8mm (Sapphire/Aquamarine) (Danish)', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(198, '5518866394', NULL, '4TQXLMLBLJPAQP1', '3DAABSCEK5CQYBM', 'EOFOH8Y7TMENJZP', NULL, NULL, NULL, 'FudCBUhHA0v', 'Local', 'Braided PE Twine 2.0mm (Danish)', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(199, '3193921842', NULL, '4TQXLMLBLJPAQP1', '3DAABSCEK5CQYBM', 'HWO3WSVBTJ5NWCH', NULL, NULL, NULL, 'G8wOILoZPUE', 'Local', 'Braided PE Twine 2.0mm (Green) (Danish)', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(200, '8342662739', NULL, '4TQXLMLBLJPAQP1', '3DAABSCEK5CQYBM', 'LMFURJZH3XPKSNF', NULL, NULL, NULL, 'qlL0uNp5Ors', 'Local', 'Braided PE Twine 2.0mm (Red) (Danish)', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(201, '8771419933', NULL, '4TQXLMLBLJPAQP1', '3DAABSCEK5CQYBM', 'KHGYDM4OPFC6IQB', NULL, NULL, NULL, 'dfo68SuZgiB', 'Local', 'Braided PE Twine 2.0mm (Sapphire/Aquamarine) (Danish)', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(202, '2567113126', NULL, '4TQXLMLBLJPAQP1', '3DAABSCEK5CQYBM', 'OW9SQBO32E7YXV7', NULL, NULL, NULL, 'pb45EqMwUf0', 'Local', 'Braided PE Twine 2.0mm (White) (Danish)', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(203, '6489714147', NULL, '4TQXLMLBLJPAQP1', '3DAABSCEK5CQYBM', 'U3OTBIXNBO5N9E8', NULL, NULL, NULL, 'akFE8R3ft4c', 'Local', 'Braided PE Twine 2.1mm (Sapphire/Aquamarine) (Danish)', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(204, '7455725775', NULL, '4TQXLMLBLJPAQP1', '3DAABSCEK5CQYBM', 'NKCGDYPPZYHW2C9', NULL, NULL, NULL, '3zV7jh6bCiR', 'Local', 'Braided PE Twine 2.5mm (Sapphire/Aquamarine) (Danish)', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(205, '3116785418', NULL, '4TQXLMLBLJPAQP1', '3DAABSCEK5CQYBM', 'N81CE8WFBDLG4D4', NULL, NULL, NULL, 'cAWFV0xgMUy', 'Local', 'Braided PE Twine 2.8mm (Sapphire/Aquamarine) (Danish)', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(206, '1129125464', NULL, '4TQXLMLBLJPAQP1', '3DAABSCEK5CQYBM', '8LDJD8KFB33GPJ6', NULL, NULL, NULL, 'JuPs908FXnx', 'Local', 'Braided PE Twine 3.0mm (Danish)', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(207, '9298525728', NULL, '4TQXLMLBLJPAQP1', '3DAABSCEK5CQYBM', '7ZTE3CL4W6VM24U', NULL, NULL, NULL, 'kLVHyCeNzrv', 'Local', 'Braided PE Twine 3.0mm (Red) (Danish)', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(208, '3195476271', NULL, '4TQXLMLBLJPAQP1', '3DAABSCEK5CQYBM', '3CI74YC2T8A9FZT', NULL, NULL, NULL, 'jGR6YMexAUQ', 'Local', 'Braided PE Twine 3.0mm (Sapphire/Aquamarine) (Danish)', NULL, NULL, 'Coil', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(209, '7357999221', NULL, '4TQXLMLBLJPAQP1', '3DAABSCEK5CQYBM', '19P8NTTAJAWZ6YF', NULL, NULL, NULL, 'pizsZ2LHaGU', 'Local', 'Braided PE Twine 4.0mm (Danish)', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(210, '1927415842', NULL, '4TQXLMLBLJPAQP1', '3DAABSCEK5CQYBM', 'D43NY19DU2ELXV5', NULL, NULL, NULL, 'rSVd0I6qRxJ', 'Local', 'Braided PE Twine 4.0mm (Green) (Danish)', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(211, '4635461846', NULL, '4TQXLMLBLJPAQP1', '3DAABSCEK5CQYBM', 'UXQZFIVUIHYCGAR', NULL, NULL, NULL, 'S2CgNFpVIld', 'Local', 'Braided PE Twine 4.0mm (Red) (Danish)', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(212, '7991251656', NULL, '4TQXLMLBLJPAQP1', '3DAABSCEK5CQYBM', '5Y6K39AVHAQRQWG', NULL, NULL, NULL, 'gl31HsFv0aB', 'Local', 'Braided PE Twine 4.0mm (Red) (Danish)', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(213, '1445851948', NULL, '4TQXLMLBLJPAQP1', '3DAABSCEK5CQYBM', '61G4NIOHBB2NGTY', NULL, NULL, NULL, 'S13LqXFuKdy', 'Local', 'Braided PE Twine 4.0mm (Silver) (Danish)', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(214, '6323849226', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'KTTEAEAK5KG19PY', NULL, NULL, NULL, '8SMy5wcnVe1', 'Local', 'Brass Brazing Rod', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(215, '9281213189', NULL, '2PURPOP1ACPKINM', 'DVB9GGYBU2TQYKH', 'I9IFB4BQ1PHTVOE', NULL, NULL, NULL, 'MqSYba3JRUj', 'Local', 'Brass Nipple', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(216, '4395182744', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', '4LVH775MNZCIFI5', NULL, NULL, NULL, 'WabXFhoOGip', 'Local', 'Brass Solid Bar', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(217, '6596234544', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'ANEK3QZUAKR93HQ', NULL, NULL, NULL, 'QtJxHP7Un1g', 'Local', 'Brazing Rod', NULL, NULL, 'Lbs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(218, '6281362517', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'KH76APCHR6OE298', NULL, NULL, NULL, 'y63dKlxkwRg', 'Local', 'Brazing Rod', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(219, '4385129363', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'MAIWXX64ZVU2JZI', NULL, NULL, NULL, 'RJg94hAopSr', 'Local', 'Brazing Rod (Flat)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(220, '4442445376', NULL, 'Y2KK6KNJQIWD23Z', 'WLR1LOHS5JONLTJ', 'ZRIKF77O9KS63II', NULL, NULL, NULL, 'OKXH06y8Eqf', 'Local', 'Bridge Room A/C Check & Repair', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(221, '9275525546', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'QYNWE6R76EAKDKT', NULL, NULL, NULL, '7JTbIqMRsPe', 'Local', 'Broom Stick', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(222, '2795942287', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'Z7MNY149HOCSOMB', NULL, NULL, NULL, 'lL5ihSRmpGq', 'Local', 'Bulb 25W 24V', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(223, '8428634176', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'Y6LDS863LZYYHJP', NULL, NULL, NULL, 'FwmxbEeWc9v', 'Local', 'Burna Cream', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(224, '5294213513', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'R1XG6D235988NXX', NULL, NULL, NULL, 'DX3m8kLWvqE', 'Local', 'Burna Cream', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(225, '3671886195', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'VT9YLQHGZ3872UV', NULL, NULL, NULL, 'Pd1xqBQrkAC', 'Local', 'Burna Cream', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(226, '1945395352', NULL, 'EB886WD44XASJTL', 'B29KZMCXGOPBJG3', 'DOOS6SSCU8ZXO1M', NULL, NULL, NULL, 'dj9f15TxgKB', 'Local', 'Button File', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(227, '4459862762', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'ELBMZZ59Z8R9KZZ', NULL, NULL, NULL, 'L1ZbQYUzyO3', 'Local', 'Cable Flax', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(228, '8812121161', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', '4QGOU9CAGX31N5L', NULL, NULL, NULL, 'HcWhXgBfq9t', 'Local', 'Cable Socket', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(229, '4962418811', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', '53UU1BE2KC6UZT4', NULL, NULL, NULL, 'yEGS2ZuhoQD', 'Local', 'Cable Socket Battery', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(230, '6153171179', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'IZHCU3TRPTE4RJT', NULL, NULL, NULL, '5cmi6bBU4ZL', 'Local', 'Cable Tie 150mm', NULL, NULL, 'Pkt', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(231, '3834343435', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'QIDXJ44I7Q4CNXX', NULL, NULL, NULL, 'VhsXoeMb6Iu', 'Local', 'Cable Tie 150mm', NULL, NULL, 'Pkt', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(232, '9545474432', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'IG4FTBS2828B2BW', NULL, NULL, NULL, 'WFoDcEetz0g', 'Local', 'Cable Tie 200mm', NULL, NULL, 'Pkt', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(233, '3368742373', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'GXGB5V9C6OA79XH', NULL, NULL, NULL, 'EeYvtHayT4G', 'Local', 'Cable Tie 250mm', NULL, NULL, 'Pkt', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(234, '2687673645', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'DQAFUHROL8IDVDM', NULL, NULL, NULL, '5IiEXMN2gTL', 'Local', 'Cable Tie 300mm', NULL, NULL, 'Pkt', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(235, '4923227212', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'H99ABP4SXNYCBLD', NULL, NULL, NULL, '8XrTudE2ALl', 'Local', 'Cable Tie 300mm', NULL, NULL, 'Pkt', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(236, '8474558611', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'OD1E1EWSXKQCGA7', NULL, NULL, NULL, 'M5QiSuc3YdN', 'Local', 'Cable Tie 350mm', NULL, NULL, 'Pkt', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(237, '2494645456', NULL, 'EB886WD44XASJTL', 'B29KZMCXGOPBJG3', 'AU9QSIH72FG6MAU', NULL, NULL, NULL, 'PhQy1FJ7XsG', 'Local', 'Calendar 2022', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(238, '8595646262', NULL, 'TJT23BXZLWIDR58', 'DTCTAOMKJZ2SI9X', 'UNL6OKLDTOBORDO', NULL, NULL, NULL, 'RTP6m2ZFaEi', 'Local', 'Canvas Hand Gloves', NULL, NULL, 'Dzn', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(239, '4725667184', NULL, 'TJT23BXZLWIDR58', 'DTCTAOMKJZ2SI9X', '942K6BFG95JYBHM', NULL, NULL, NULL, '6JIMjHiymqu', 'Local', 'Canvas Hand Gloves', NULL, NULL, 'Dzn', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(240, '3355795116', NULL, '2PURPOP1ACPKINM', 'DVB9GGYBU2TQYKH', 'WZPK9W7IAXYSD1H', NULL, NULL, NULL, 'Udf58ieRm6W', 'Local', 'Cap Nut', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(241, '8899758439', NULL, '2PURPOP1ACPKINM', 'DVB9GGYBU2TQYKH', 'KRH37KGAE2ORFOL', NULL, NULL, NULL, 'CpAZk9gisyw', 'Local', 'Cap Nut 1/4', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(242, '1173263698', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', '13L4LIVFRAPSD6S', NULL, NULL, NULL, 'GTuEwnKFsYX', 'Local', 'Capacitor', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(243, '7735856196', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', '6VO4HLB3UIIR2FU', NULL, NULL, NULL, 'rJigBHaxPQe', 'Local', 'Capacitor (2.0 UF)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(244, '9271674328', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'Y53VKCSO9HCPSSD', NULL, NULL, NULL, 'TVdIMcXur7s', 'Local', 'Capacitor (2.5 UF)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(245, '1553961476', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', '9AVYWIXE7FPBC3K', NULL, NULL, NULL, 'jZw92diOYDv', 'Local', 'Capacitor (45 UF)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(246, '7552978579', NULL, 'Y2KK6KNJQIWD23Z', 'WLR1LOHS5JONLTJ', 'PYGYDJJGSWSAMGS', NULL, NULL, NULL, 'hE84BNQHVqc', 'Local', 'Captain Cabin AC Repair Charge', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(247, '6989314638', NULL, 'EB886WD44XASJTL', 'B29KZMCXGOPBJG3', 'VRVI8EGNBGVY4RT', NULL, NULL, NULL, 'SofGT1x3Q4K', 'Local', 'Carbon Paper', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(248, '5752442392', NULL, '2AAUOPF6HLC6PFD', 'JCJAXRURKLP2RTX', 'C91A3RX5I7RU1XW', NULL, NULL, NULL, 'v7zPFpyxCnS', 'Local', 'Cargo Block (Single)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(249, '8946169582', NULL, 'Y2KK6KNJQIWD23Z', 'WLR1LOHS5JONLTJ', 'VXF97ZG7MGXCQBF', NULL, NULL, NULL, '0ZaB3vFWDLf', 'Local', 'Caulking Bill', NULL, NULL, 'Person', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(250, '9899978992', NULL, 'Y2KK6KNJQIWD23Z', 'WLR1LOHS5JONLTJ', '8Y7WBCHWSEVX5BX', NULL, NULL, NULL, 'wogbFpeDSiN', 'Local', 'Caulking Mistry', NULL, NULL, NULL, 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(251, '3123159522', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'C322BVPSJAFDOV8', NULL, NULL, NULL, 'vAMYI9PGLny', 'Local', 'CC Light Set w/ Cover', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(252, '7185477298', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', '8V9O9P86GV79R2B', NULL, NULL, NULL, 'ZIA2M0Ls8ib', 'Local', 'CCTV Cable', NULL, NULL, 'Mtr', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(253, '2646341167', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'Q88Q13NJ7NIZFIL', NULL, NULL, NULL, '58WRbCNJr7c', 'Local', 'Cef-3 200mg', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(254, '8885465635', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'W51FCO5PYC2AGG3', NULL, NULL, NULL, 'CTyED79WYz6', 'Local', 'Ceramic Bowl', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(255, '2423922142', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'EJORHLTXWOHN1OB', NULL, NULL, NULL, 'j6gciRzM4V9', 'Local', 'Ceramic Bulb Holder', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(256, '5653797628', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'GDIOEONPASMBW5L', NULL, NULL, NULL, 'gI9K7UO1del', 'Local', 'Ceramic Bulb Holder', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(257, '9931717377', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'Z6RZ4QOR3I3A4IJ', NULL, NULL, NULL, 'Y9qGRCp2o5M', 'Local', 'Ceramic Cup', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(258, '1566488833', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', '2PXJDQQKO2RESB9', NULL, NULL, NULL, 'cfBRHo2bOIZ', 'Local', 'Ceramic Plate', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(259, '2619188885', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'C9ZQ2F4KAKYNXT3', NULL, NULL, NULL, 'h2RLSG1o5Fi', 'Local', 'Cevit', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(260, '9627619446', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'LWOSYIVV3N7T85M', NULL, NULL, NULL, 'B4XjcSFxM5o', 'Local', 'Cevit', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(261, '8175747964', NULL, '4TQXLMLBLJPAQP1', 'PID8OPNPVESJDI3', 'GNUUI62MXTQO19V', NULL, NULL, NULL, '0s8x2NhoTjQ', 'Local', 'Chain 13mm (Original Galvanized)', NULL, NULL, 'Mtr', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(262, '8392388928', NULL, '4TQXLMLBLJPAQP1', '3DAABSCEK5CQYBM', 'CZKHU68AAGCO8H7', NULL, NULL, NULL, 'hyUoAC3JRQ0', 'Local', 'Chain Binding Twine', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(263, '4796549994', NULL, 'EB886WD44XASJTL', 'B29KZMCXGOPBJG3', 'CO5JQQ8SYFXBM3I', NULL, NULL, NULL, 'pJ64CjgfQc5', 'Local', 'Chalk', NULL, NULL, 'Box', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(264, '5398489181', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', '16PSWP9VRRNNBRP', NULL, NULL, NULL, 'Gle1k7FrCcp', 'Local', 'Chalk Powder', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(265, '9156421973', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', '9YJNZ2RGW75V633', NULL, NULL, NULL, 'giE5nAC3fht', 'Local', 'Chalk Powder', NULL, NULL, 'Bag', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(266, '3354753481', NULL, 'Y2KK6KNJQIWD23Z', 'WLR1LOHS5JONLTJ', 'IZ1LSYEFJOYOFNQ', NULL, NULL, NULL, 'gcEHWBVxItb', 'Local', 'Chalking Labour Charge', NULL, NULL, NULL, 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(267, '8663889153', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', '2D2G4O2Z5LPKHN2', NULL, NULL, NULL, 'UQlXYO4iMko', 'Local', 'Change Over Switch', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(268, '9781167256', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'DYYCKI6VGPQ4MHP', NULL, NULL, NULL, 'revJ76m4cHZ', 'Local', 'Change Over Switch 60W', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(269, '1513394947', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'QIC3HZ1IAUY8QOS', NULL, NULL, NULL, 'NKOPJ3c2zdt', 'Local', 'Chisel (OD-1\", L-8\")', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(270, '3266927812', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'MCJAF3216LEJK5M', NULL, NULL, NULL, 'WgDN6yOTUh9', 'Local', 'Ciplox Drop', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(271, '6732175422', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'NY27XY3DBRZ7TVU', NULL, NULL, NULL, 'H7oJQSOd4Fx', 'Local', 'Ciprocin 0.3% (Eye Drop)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(272, '6758293319', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', '2Q197ULL2VR4DZH', NULL, NULL, NULL, '2rcmWTKFeE5', 'Local', 'Ciprocin 0.3% (Eye Drop)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(273, '2189254257', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'BKBXSV7KAER7XWT', NULL, NULL, NULL, 'Q5WpA6DB17g', 'Local', 'Ciprocin 500mg', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(274, '1249145994', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'JOKY2V7IJBTH7II', NULL, NULL, NULL, 'RnIgacym7sV', 'Local', 'Ciprocin 500mg', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(275, '7131354815', NULL, '2PURPOP1ACPKINM', 'DVB9GGYBU2TQYKH', 'RLB4A1RBLKJFQL1', NULL, NULL, NULL, 'sORGUz06tld', 'Local', 'Circlip 75mm', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(276, '5768898982', NULL, '2PURPOP1ACPKINM', 'DVB9GGYBU2TQYKH', 'F8LL6MJEE4WYRN8', NULL, NULL, NULL, 'OpQwDEU0XqG', 'Local', 'Circlip Opener', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(277, '5442211176', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'TFSF4EYNOFAA1WH', NULL, NULL, NULL, '912grL7TPRK', 'Local', 'Circuit Breaker', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(278, '6982633829', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'TCKK6R6IQQVUHMP', NULL, NULL, NULL, 'FzwM8Lak54c', 'Local', 'Circuit Breaker 100A 3 Phase (On Coil)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(279, '2668175819', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'KCZ8E334ICLJ365', NULL, NULL, NULL, '3zIAYSfUoRu', 'Local', 'Circuit Breaker 20A 2 Phase', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(280, '7493248522', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', '45N33TNJ6AZE92K', NULL, NULL, NULL, 'kmjuHgAhFzE', 'Local', 'Circuit Breaker 30A', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(281, '3734662977', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', '8U5H6BOCZQOX3GM', NULL, NULL, NULL, 'tQcUe5AgHPB', 'Local', 'Circuit Breaker 32A 3 Phase', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(282, '6575354469', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'IEFMGRWP52SDEX9', NULL, NULL, NULL, 'aD2QpZd0JfI', 'Local', 'Circuit Breaker C-10', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(283, '3471656636', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'W8GFFXWU4RC4TBO', NULL, NULL, NULL, '6mliGeksFoC', 'Local', 'Circuit Breaker C-6', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(284, '9941148849', NULL, 'Y2KK6KNJQIWD23Z', 'WLR1LOHS5JONLTJ', 'NNUG7GOCB27AQAP', NULL, NULL, NULL, '1xAcuFsyimt', 'Local', 'Circuit Fitting', NULL, NULL, NULL, 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(285, '5445663969', NULL, 'EB886WD44XASJTL', 'B29KZMCXGOPBJG3', '7NSGCJZ2OFTOAGE', NULL, NULL, NULL, '2FoCDgKSldU', 'Local', 'Clip Board', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(286, '7922891146', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'ENHVNB62K62T5ST', NULL, NULL, NULL, 'PhcA8FKjGQx', 'Local', 'Clock', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(287, '6734939532', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', '4USSU8IBH4VIIJY', NULL, NULL, NULL, 'jaZDKFd5QxI', 'Local', 'Clofenac 50mg', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(288, '6525592555', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', '4JVROSYQQX46QLK', NULL, NULL, NULL, 'r7zPfSABVZW', 'Local', 'Clofenac SR 100mg', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(289, '1683328727', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'CKX5RPI159F7ZQI', NULL, NULL, NULL, 'jR6Zb2nWfLv', 'Local', 'Clofenac SR 100mg', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(290, '8443133967', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'GZ5I82AFGXG2B4P', NULL, NULL, NULL, 'XYWdrTag49A', 'Local', 'Cloth Strainer 4\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(291, '4378212965', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'CW9OSLPGBDDFGKF', NULL, NULL, NULL, 'XfpZmHkCr5V', 'Local', 'Cloth Strainer 6\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(292, '9772643899', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'BEG847SDX5FPIGH', NULL, NULL, NULL, 'lBVr6t0KfDp', 'Local', 'CO2 Gas', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(293, '8457435339', NULL, '2PURPOP1ACPKINM', 'HLE72FWD8USNC5Y', 'NDDPIKGYOTUUCAQ', NULL, NULL, NULL, 'RbD8i3ZCGSK', 'Local', 'Cobza Shackle 16mm (16/8)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(294, '2795584636', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'P433VOYZOI1XZO6', NULL, NULL, NULL, 'ZMR94SrJjYh', 'Local', 'Combination Ring Wrench 13mm (USA)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(295, '4537341438', NULL, '4TQXLMLBLJPAQP1', 'AP7VRUIXZF1AZ3Q', 'DY2Y1GH5X9V44NU', NULL, NULL, NULL, 'blRosU27CVP', 'Local', 'Combination Wire Rope 18mm', NULL, NULL, 'Ft', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(296, '7323937743', NULL, '4TQXLMLBLJPAQP1', 'AP7VRUIXZF1AZ3Q', 'O4A4E8D2893994C', NULL, NULL, NULL, '7Be2PthqsaZ', 'Import', 'Combination Wire Rope 18mm', NULL, NULL, 'Mtr', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(297, '6776848654', NULL, '4TQXLMLBLJPAQP1', 'AP7VRUIXZF1AZ3Q', 'X13A6ZD58W2SPLT', NULL, NULL, NULL, 'BXow4nyqM7W', 'Local', 'Combination Wire Rope 20mm', NULL, NULL, 'Ft', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(298, '4134312771', NULL, '4TQXLMLBLJPAQP1', 'AP7VRUIXZF1AZ3Q', 'H1UN17FI3ZRGVPP', NULL, NULL, NULL, 'UMsqOSPNL2e', 'Import', 'Combination Wire Rope 20mm', NULL, NULL, 'Mtr', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(299, '1934317358', NULL, '4TQXLMLBLJPAQP1', 'AP7VRUIXZF1AZ3Q', '66NS9PHJEAZB6KA', NULL, NULL, NULL, 'tXkbi5mTY9I', 'Import', 'Combination Wire Rope 20mm', NULL, NULL, 'Coil', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(300, '5681249868', NULL, '4TQXLMLBLJPAQP1', 'AP7VRUIXZF1AZ3Q', 'EZ2K7B7R3M2EP2G', NULL, NULL, NULL, '2LQmtDnolZr', 'Import', 'Combination Wire Rope 22mm', NULL, NULL, 'Mtr', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(301, '8821751953', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'U3OKV1TMGJCKEEU', NULL, NULL, NULL, 'Wd2tDeXrhHI', 'Local', 'Combination Wrench 14mm (Dali USA)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(302, '9656381667', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'RYP7MZ9SFR8S6UU', NULL, NULL, NULL, 'DtoRde9VX3h', 'Local', 'Combination Wrench 16mm (Dali USA)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(303, '4811963841', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'SZN6ZQJYGAKKJYR', NULL, NULL, NULL, 'Bgl6jMxQ3yS', 'Local', 'Combination Wrench 17mm', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(304, '1691988865', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'CJJHVJ8WXUHHR8L', NULL, NULL, NULL, 'Hx0N7CgBMeP', 'Local', 'Combination Wrench 19mm', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(305, '1879251569', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'LMD8ZBB6FF2UTV6', NULL, NULL, NULL, 'sYLCKFvWfpn', 'Local', 'Combination Wrench 3/8', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(306, '9756773428', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'YFEW61ADXFC9XCT', NULL, NULL, NULL, 'Pgf83MTkNUr', 'Local', 'Combination Wrench 7mm', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(307, '6317824544', NULL, '4TQXLMLBLJPAQP1', '3DAABSCEK5CQYBM', '2IU4AJZ59WEMYYY', NULL, NULL, NULL, 'ZMXESy2O4Pa', 'Local', 'Comilla Rope Twine (Dressing)', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(308, '6117519317', NULL, 'Y2KK6KNJQIWD23Z', 'WLR1LOHS5JONLTJ', '2415MMP7VPJO6AV', NULL, NULL, NULL, 'XeWIYCT8xkZ', 'Local', 'Compass Check & Repair', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(309, '7492863289', NULL, '32GAZCG9EGXK5S5', 'TDZYAAE2449JJPO', 'GZUF16OZCXYZLHE', NULL, NULL, NULL, '5eXZTx0JMWA', 'Local', 'Compressor', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(310, '7247687177', NULL, '2PURPOP1ACPKINM', 'US9B6OUBZYA62E8', 'XC7PT5F2E6ORFZO', NULL, 'D48', NULL, 'D48', 'Local', 'Compressor Drier Core Filter D48 (Danfoss)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(311, '7376663171', NULL, '2PURPOP1ACPKINM', 'US9B6OUBZYA62E8', 'OAQ88QWUC4ZXO8Q', NULL, 'D48', NULL, 'D48', 'Local', 'Compressor Drier Core Filter D48 (Danfoss)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(312, '5278432438', NULL, '2PURPOP1ACPKINM', 'US9B6OUBZYA62E8', 'HHZRX4ZMJ5YOKJB', NULL, 'D48', NULL, 'D48', 'Local', 'Compressor Drier Core Filter D48 (Danfoss)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(313, '9222874896', NULL, '2PURPOP1ACPKINM', 'US9B6OUBZYA62E8', '3ZDAU7C8ZLH6SK8', NULL, 'D48', NULL, 'D48', 'Local', 'Compressor Drier Core Filter D48 (Danfoss)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(314, '5779849368', NULL, '2PURPOP1ACPKINM', 'US9B6OUBZYA62E8', 'DK5KIACFWPTVL3H', NULL, NULL, NULL, 'mzF8DOUIsKp', 'Local', 'Compressor Gas Charging Pipe (5\' Long Teflon Type)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(315, '2397222248', NULL, '32GAZCG9EGXK5S5', '3XUMP7QWQ7BTCTO', 'OGZTM9B1OOO7KAT', NULL, 'KR-200', NULL, 'KR-200', 'Local', 'Compressor Rubber Coupling KR-200', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(316, '8752454189', NULL, '32GAZCG9EGXK5S5', '3XUMP7QWQ7BTCTO', 'JQ3G82THIJKZ4QV', NULL, NULL, NULL, '1Ec9zG2ZphO', 'Local', 'Compressor Vibrator Pipe', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(317, '8311128412', NULL, '32GAZCG9EGXK5S5', '3XUMP7QWQ7BTCTO', 'WXEZF5VKT93U2H8', NULL, '8435', NULL, '8435', 'Import', 'Connecting Rod Set F-16 (8435)', NULL, NULL, 'Set', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(318, '1257178475', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'MD11ZRIHO17Q3XI', NULL, NULL, NULL, 'x0fRiWP3S82', 'Local', 'Contact Cleaner', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(319, '1913451594', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'YUXCYHLPY4QDFQC', NULL, NULL, NULL, 'Zrd2sO1xNoq', 'Local', 'Contact Cleaner', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(320, '1762226548', NULL, '2PURPOP1ACPKINM', 'JUKRRNVHG6LOEUR', 'S9AI2EGMKWB5RY2', NULL, NULL, NULL, 'JDmYgQ6nzUC', 'Local', 'Control Room AC Copper Pipe', NULL, NULL, 'Ft', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(321, '4214679253', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'ZMUED428W91APN3', NULL, NULL, NULL, 'Go0nE7IvD8a', 'Local', 'Control Room Capacitor', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(322, '8174948271', NULL, 'EB886WD44XASJTL', 'B29KZMCXGOPBJG3', 'BUCUCAEGEIN45FY', NULL, NULL, NULL, 'MUpt6DarE7i', 'Local', 'Cooking Knife', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(323, '4962184622', NULL, '2PURPOP1ACPKINM', 'EBZFU3KQHCL2IS6', 'HNCXDA4S9C9NVAK', NULL, NULL, NULL, 'kGN6bYjIyOz', 'Local', 'Cooling Nozzle O\'Ring (NTA855)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(324, '8234474254', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'XQSNI6Z94UO1WIS', NULL, NULL, NULL, 'rWE7Go0y8Vt', 'Local', 'Copper Brazing Rod', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(325, '4465674528', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'SHACGPE21HJLJLD', NULL, NULL, NULL, 'UxIfCSKP6BG', 'Local', 'Copper Cup Brush', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(326, '9892663136', NULL, 'PQ4XVDW96CL7QQZ', 'PZNECLLN1S7KLAT', 'BI2B7SQRP7GA7FN', NULL, NULL, NULL, 'Pj6xlwCZ2U9', 'Local', 'Copper Elbow 1\'8\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(327, '7735363599', NULL, '2PURPOP1ACPKINM', 'JUKRRNVHG6LOEUR', 'DB383C5KRRW2LZQ', NULL, NULL, NULL, 'PAlvxaEUpsF', 'Local', 'Copper Pipe (1 x 0.125\")', NULL, NULL, 'Ft', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(328, '2196673856', NULL, 'PQ4XVDW96CL7QQZ', 'PZNECLLN1S7KLAT', 'OQENWJU1QFTRO4N', NULL, NULL, NULL, 'lcaThBs4f2D', 'Local', 'Copper Rod', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(329, '1349628531', NULL, 'PQ4XVDW96CL7QQZ', 'PZNECLLN1S7KLAT', 'HCY3PFPLQ6ID88X', NULL, NULL, NULL, 'B7DTg2AyWcJ', 'Local', 'Copper Rod (Flat)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(330, '2228541268', NULL, 'PQ4XVDW96CL7QQZ', 'PZNECLLN1S7KLAT', 'CRKCWEOR6XLCO8H', NULL, NULL, NULL, 'ZKM0oQ8nETl', 'Local', 'Copper Socket 2\'8\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(331, '7698753517', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'TTIINFFAL4ODZQM', NULL, NULL, NULL, 'bq7ys2cNTJF', 'Local', 'Cordobond Gum', NULL, NULL, 'Set', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(332, '8797797183', NULL, 'EB886WD44XASJTL', 'B29KZMCXGOPBJG3', 'T8OD1K2Q1IYFF22', NULL, NULL, NULL, '39af4gwdA0F', 'Local', 'Correction Pen', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(333, '5596179621', NULL, '4TQXLMLBLJPAQP1', 'PID8OPNPVESJDI3', 'I6UBA3IQFWY8OIS', NULL, NULL, NULL, 'uVME408rDLZ', 'Local', 'Cosmos Chain 13mm', NULL, NULL, 'Ft', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(334, '8529761514', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'B89LCWWK97W99DX', NULL, NULL, NULL, 'CjUSIOXuMQ2', 'Local', 'Cotton', NULL, NULL, 'Roll', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(335, '9257877179', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'Y43WEDNGGWY3Q9N', NULL, NULL, NULL, 't0X596fYaWG', 'Local', 'Cotton Bandage', NULL, NULL, 'Box', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(336, '3471818585', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', '9GTPB5GUAOQPGSV', NULL, NULL, NULL, 'cC1LdTQRjGO', 'Local', 'Cotton Filter for Sailor', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(337, '3451932652', NULL, 'TJT23BXZLWIDR58', 'DTCTAOMKJZ2SI9X', '61INOFTI4X81TV3', NULL, NULL, NULL, 'eSVYrOIa8pg', 'Local', 'Cotton Hand Gloves', NULL, NULL, 'Dzn', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(338, '3782572413', NULL, 'TJT23BXZLWIDR58', 'DTCTAOMKJZ2SI9X', '5AB7HHZ37LCPPZJ', NULL, NULL, NULL, '9Ghvw2MlJ5k', 'Local', 'Cotton Hand Gloves', NULL, NULL, 'Dzn', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(339, '9984833797', NULL, 'TJT23BXZLWIDR58', 'DTCTAOMKJZ2SI9X', '69W12C7ISISTEU5', NULL, NULL, NULL, 'lTXiLgzPNej', 'Local', 'Cotton Hand Gloves', NULL, NULL, 'Dzn', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(340, '6584471455', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'QYZGLVZFDY2UJZP', NULL, NULL, NULL, 'ItKZ6LMrBuQ', 'Local', 'Cotton Jute', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(341, '8264749714', NULL, 'EB886WD44XASJTL', 'B29KZMCXGOPBJG3', 'BCE2R6B5YBTYEI9', NULL, NULL, NULL, 'YQiKMC6U5me', 'Local', 'Cotton Measurement Tape', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(342, '7837351635', NULL, 'EB886WD44XASJTL', 'B29KZMCXGOPBJG3', '4IWZ23SXXN7ZR1Y', NULL, NULL, NULL, 'uhwHZYDq1tp', 'Local', 'Cotton Tape 1\" (Big)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(343, '2877492168', NULL, '2PURPOP1ACPKINM', 'DVB9GGYBU2TQYKH', 'CLUKU8FHURYRK33', NULL, NULL, NULL, 'S7xN9bLIBns', 'Local', 'Coupling Bolt', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(344, '8362667848', NULL, 'WPHNEVLXT34GIFJ', 'TNXPU7SP8EHWZ62', 'DNL9JUBBN63C283', NULL, NULL, NULL, '3xdYGe20pWV', 'Local', 'Crank Shaft Sleeve w/ Polishing', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(345, '6329777119', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'YAIIWKDVG5PEA22', NULL, NULL, NULL, 'NEXcDBOQC3p', 'Local', 'Crew List', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(346, '9864788724', NULL, '2PURPOP1ACPKINM', 'DVB9GGYBU2TQYKH', 'QOVJGL5BCGJNNTT', NULL, NULL, NULL, 'QoWKjxfatyC', 'Local', 'CS Bolt w/ Washer', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(347, '2775933149', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'VYWAS9X2BD5AEGM', NULL, NULL, NULL, 'qV8QF7RYdCN', 'Local', 'Cup Brush 4\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(348, '2613458227', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', '1A6XL25LO5AUWYX', NULL, NULL, NULL, 'o1sfnMPJ0D4', 'Local', 'Cup Brush 4\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(349, '4545671757', NULL, 'EB886WD44XASJTL', 'B29KZMCXGOPBJG3', 'MV6LMG2UAS58H8D', NULL, NULL, NULL, 'XEePZABpLNt', 'Local', 'Curry Spoon', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(350, '2279248428', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'LWJMB4CJOAIECWO', NULL, NULL, NULL, 'WNFmQXOIpLR', 'Local', 'Cutter Hose Pipe Set (2 in 1) Line', NULL, NULL, 'Ft', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(351, '8765532465', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', '6EE3R1DXMWUTCYR', NULL, NULL, NULL, 'Ee0BnArNJKZ', 'Local', 'Cutting Disk 14\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(352, '2281434375', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'DM25YJ69QJW3FGF', NULL, NULL, NULL, '0OpGzExNo9R', 'Local', 'Cutting Disk 4\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(353, '9112624182', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'RZF8WYMYJYC6LOB', NULL, NULL, NULL, 'huYRr38QM56', 'Local', 'Cutting Disk 4\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(354, '8236377427', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'V5FFPHQ22WQCABY', NULL, NULL, NULL, 'C7lp8MtJ1kS', 'Local', 'Cutting Disk 4\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(355, '1185432552', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', '442ZJB8AI4MWBI3', NULL, NULL, NULL, 'eWiyMrYv2UE', 'Local', 'Cutting Nozzle 1/16', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(356, '6821699736', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'BQ2SE8SL11MKWSJ', NULL, NULL, NULL, '4KCl0jibrh7', 'Local', 'Cutting Nozzle 1/8', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(357, '8675694259', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'G9S9ZTSKRBTK9W3', NULL, NULL, NULL, 'E87QlHUGzCg', 'Local', 'Cycle Tube', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1);
INSERT INTO `product_information` (`id`, `product_id`, `product_id_two`, `category_id`, `sub_cat_id`, `brand_id`, `country`, `parts`, `tag`, `sku`, `ptype_id`, `product_name`, `price`, `re_order_level`, `unit`, `tax`, `serial_no`, `product_model`, `product_details`, `image`, `status`) VALUES
(358, '4847623187', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'QFYIT4VKLALXVYU', NULL, NULL, NULL, 'zNJ2UeMxErg', 'Local', 'Cycle Tube', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(359, '5874849344', NULL, 'WPHNEVLXT34GIFJ', 'TNXPU7SP8EHWZ62', '4CB4WS9PHQ5XAB4', NULL, NULL, NULL, 'a4nqx1w7Wdr', 'Local', 'Cylinder Head Gasket', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(360, '8291688219', NULL, 'WPHNEVLXT34GIFJ', 'TNXPU7SP8EHWZ62', '1SRVL6B2PB3E6V4', NULL, '40249450/3801330', NULL, '40249450/3801330', 'Local', 'Cylinder Head Gasket Set (40249450/3801330)', NULL, NULL, 'Set', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(361, '5138129333', NULL, 'WPHNEVLXT34GIFJ', 'TNXPU7SP8EHWZ62', 'M6JYCRU4XHFLPVI', NULL, NULL, NULL, 'qcuDZWfM0vA', 'Local', 'Cylinder Liner', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(362, '5753172724', NULL, 'WPHNEVLXT34GIFJ', 'TNXPU7SP8EHWZ62', 'NV34F2HQDM7TJPB', NULL, NULL, NULL, 'MNjJOPD32p4', 'Local', 'Cylinder Lock', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(363, '3576234544', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'XXLTRATH2CYT73L', NULL, NULL, NULL, 'hj2xFZRlSke', 'Local', 'Daily Fishing Log Book', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(364, '3367615339', NULL, '4TQXLMLBLJPAQP1', 'AP7VRUIXZF1AZ3Q', 'ZQUX6LK5SB4BSDO', NULL, NULL, NULL, 'jthye54NTfw', 'Import', 'Danish Disco Rope 10mm', NULL, NULL, 'Coil', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(365, '3923158915', NULL, '4TQXLMLBLJPAQP1', 'AP7VRUIXZF1AZ3Q', '5WGO4KFHQEAVDGF', NULL, NULL, NULL, 'oIz902iARlp', 'Import', 'Danish Disco Rope 8mm', NULL, NULL, 'Coil', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(366, '7534989548', NULL, '4TQXLMLBLJPAQP1', 'AP7VRUIXZF1AZ3Q', 'TJEC3887TX2B37P', NULL, NULL, NULL, '09XVr7vwsWG', 'Local', 'Danish Rope 10mm', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(367, '4495323829', NULL, '4TQXLMLBLJPAQP1', 'AP7VRUIXZF1AZ3Q', 'Z4YVB4YYHM9MZCB', NULL, NULL, NULL, 'HAgDOsnYSje', 'Local', 'Danish Rope 10mm (Comilla)', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(368, '2191366865', NULL, '4TQXLMLBLJPAQP1', 'AP7VRUIXZF1AZ3Q', 'AGW8DCG93WF77C5', NULL, NULL, NULL, 'EHRnUQJsLD6', 'Local', 'Danish Rope 16mm', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(369, '7555541662', NULL, '4TQXLMLBLJPAQP1', 'AP7VRUIXZF1AZ3Q', '62N4ZM4YFZMU4X8', NULL, NULL, NULL, 'HJpaQxUcLl8', 'Local', 'Danish Rope 18mm', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(370, '3283479682', NULL, '4TQXLMLBLJPAQP1', 'AP7VRUIXZF1AZ3Q', '3LND7RRABP4284D', NULL, NULL, NULL, '9Yp1z3ZbfNa', 'Local', 'Danish Rope 4mm', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(371, '7411654458', NULL, '4TQXLMLBLJPAQP1', 'AP7VRUIXZF1AZ3Q', 'N1ET96YQBAD2ZCA', NULL, NULL, NULL, 'f8ebudVgYyQ', 'Local', 'Danish Rope 6mm', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(372, '1862583278', NULL, '4TQXLMLBLJPAQP1', 'AP7VRUIXZF1AZ3Q', '4NFKS1V15XAEPLI', NULL, NULL, NULL, '4uIY2r3WN07', 'Local', 'Danish Rope 8mm', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(373, '5525427626', NULL, '4TQXLMLBLJPAQP1', 'PID8OPNPVESJDI3', 'T8ZV7UDCGWOPIT1', NULL, NULL, NULL, 'PXheiOBHvbL', 'Local', 'Danish Thimble 18mm', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(374, '2248687422', NULL, '4TQXLMLBLJPAQP1', 'PID8OPNPVESJDI3', 'NXTR5GRISZGOMO4', NULL, NULL, NULL, 'gpE51odSmQ2', 'Local', 'Danish Thimble 20mm', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(375, '7577264659', NULL, '4TQXLMLBLJPAQP1', 'AP7VRUIXZF1AZ3Q', 'IDA1RQOWYWH2Y2R', NULL, NULL, NULL, '3Xq5uQ7p9we', 'Local', 'Danline Rope 18mm', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(376, '1912885974', NULL, '4TQXLMLBLJPAQP1', 'AP7VRUIXZF1AZ3Q', '9MEV8OBO5PD61N5', NULL, NULL, NULL, 'NjFMfVkKzEx', 'Local', 'Danline Rope 6mm (Thai)', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(377, '6117593995', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', '5O64C2ZLXBM22EJ', NULL, NULL, NULL, 'Vzj1ZxgrMRB', 'Local', 'DC Bulb 40W 24V', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(378, '2978499522', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', '6DZ351HM5CAEFEE', NULL, NULL, NULL, 'qKDrH9NCe4Y', 'Local', 'DC Bulb 40W 24V', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(379, '9642491257', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', '8PTVXGXB6D95C89', NULL, NULL, NULL, 'zhvG69DuKq8', 'Local', 'DC Horn 24V', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(380, '2561168251', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'KLSGI8XN5COV9G5', NULL, NULL, NULL, 'mPk0Wr6XO1l', 'Local', 'DC/DC Power Supply (Sailor)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(381, '9936893969', NULL, 'EB886WD44XASJTL', 'B29KZMCXGOPBJG3', 'KCJJY61352UISC1', NULL, NULL, NULL, 'XgBeHyp4Tn3', 'Local', 'Denso Tape 2\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(382, '2264426317', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'ZFY2RAXB4WXKS2I', NULL, NULL, NULL, 'etX9MEFlwim', 'Local', 'Dermasol Ointment', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(383, '8662299272', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', '7N4X73DIXBBRJFS', NULL, NULL, NULL, '5gwb1oWUk4v', 'Local', 'Deslor', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(384, '8185786656', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'CR39I91REFEUMRN', NULL, NULL, NULL, 'kfMFsHCGN7t', 'Local', 'Dettol Soap', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(385, '1611576537', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'E1Q2CDBK8K27AWV', NULL, NULL, NULL, '6HEZkshcQWf', 'Local', 'Dettol Suta', NULL, NULL, 'Gm', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(386, '7414999594', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', '8TM3F1DWMM86X2O', NULL, NULL, NULL, 'Pi0A2FuVrZs', 'Local', 'Devas Syrup', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(387, '1275757125', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'EH2OKY1MOB8XAPL', NULL, NULL, NULL, 'FgkGfRUnD8J', 'Local', 'Devas Syrup', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(388, '1618143391', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'P9CZGYTMGNRLYKH', NULL, NULL, NULL, 'vQAWqZknawf', 'Local', 'DFL High Speed Fan', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(389, '9976863821', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'JZ4A5OCT7KTQE74', NULL, NULL, NULL, '1RamUv4HJjC', 'Local', 'Dhup Powder', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(390, '1732959714', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', '7Z3IC6M1MUJ8XRK', NULL, NULL, NULL, '7OWaCYdXxV8', 'Local', 'Dhup Powder', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(391, '2277212728', NULL, 'EB886WD44XASJTL', 'B29KZMCXGOPBJG3', '8RSBD1HHOS6CBUQ', NULL, NULL, NULL, '69DwfhSnMCt', 'Local', 'Diary 2022', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(392, '5556956339', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', '26MISRT8KHSEOYA', NULL, NULL, NULL, 'w5YWiqTSxBo', 'Local', 'Diclofen 50mg', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(393, '1141553963', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', '97GHNWGHMKD3HGD', NULL, NULL, NULL, 'Mj1h7kDXuWS', 'Local', 'Diclofen 75mg', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(394, '9921823667', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'F6X9VT2LFSST9E7', NULL, NULL, NULL, '9tlSuxUv45z', 'Local', 'Diclofen 75mg', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(395, '3352141127', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'O54QMREXSOPU52Z', NULL, NULL, NULL, 'xJtk2opQYR5', 'Local', 'Diclofen 75mg', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(396, '8473735875', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'IZDFSNTR6A16KUD', NULL, NULL, NULL, 'v7laC2zAQSs', 'Local', 'Diclofen SR 100mg', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(397, '1877898656', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', '6FYBT516YL18HG4', NULL, NULL, NULL, 'y4KUlOXIvoG', 'Local', 'Diclofen SR 100mg', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(398, '8211853981', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'KL2DILTK9ZLG3MB', NULL, NULL, NULL, 'NTUAXFpasqw', 'Local', 'Diclofen SR 100mg', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(399, '7727915287', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'YQNBXO34A6F3N1P', NULL, NULL, NULL, 'ZRtCdGpQ9v8', 'Local', 'Diclofen SR 100mg', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(400, '3225899189', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'NGHXR1N33K2FWFQ', NULL, NULL, NULL, 'FQEACfLRlab', 'Local', 'Diclofen SR 50mg', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(401, '4786383935', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'DEO4UGS62KD3CLB', NULL, NULL, NULL, 'HeiSLygW5ob', 'Local', 'Diesel Finding Paste (1 + 1 each)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(402, '1956917465', NULL, '1DFJOUKTOQ28QOI', '8SM6ZUETPZKZHVB', 'L4J9MZ2GRULQG5G', NULL, 'M65901', NULL, 'M65901', 'Local', 'Digital Ampere Meter (0-100A) (Input 220V-240V) (M65901)', NULL, NULL, 'Pcs', 0, NULL, 'NPW47ACX37F2ZOO', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(403, '1658284545', NULL, '1DFJOUKTOQ28QOI', '8SM6ZUETPZKZHVB', '9CYOU5X2UF1J15T', NULL, NULL, NULL, 'Cc3zRAYyM9E', 'Local', 'Digital Multi Meter', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(404, '5864632298', NULL, '1DFJOUKTOQ28QOI', '8SM6ZUETPZKZHVB', '864ACFNFQP8HTQ8', NULL, NULL, NULL, '6wPVHUfzajW', 'Local', 'Digital Pressure Machine', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(405, '7675711485', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'SRE37IN9WA5K3TK', NULL, NULL, NULL, 'EPa4XpUnQTV', 'Local', 'Digital Vernier (Caliper)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(406, '5595424248', NULL, '4TQXLMLBLJPAQP1', 'PID8OPNPVESJDI3', 'C86LJFCK21WX7W8', NULL, NULL, NULL, 'feLs4HnS25z', 'Local', 'Digital Weight Scale (300Kg)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(407, '9341941248', NULL, '4TQXLMLBLJPAQP1', 'PID8OPNPVESJDI3', '6HYNAAGGK1K8LK8', NULL, NULL, NULL, 'nBEfo2GXZmy', 'Local', 'Digital Weight Scale (300kg)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(408, '6591269777', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', '4XNUSQQF38TVMOX', NULL, NULL, NULL, 'nkPzav0RgEj', 'Local', 'Diode (+) (-)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(409, '1393189199', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'WU78TRK4RSD66IM', NULL, NULL, NULL, '9dFhQG0z8tl', 'Local', 'Distilled Water', NULL, NULL, 'Ltr', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(410, '8481816961', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'WQVGZDTMPXD1JV1', NULL, NULL, NULL, 'Jwyo2KNZg9t', 'Local', 'Distilled Water', NULL, NULL, 'Ltr', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(411, '8364653977', NULL, 'TJT23BXZLWIDR58', 'DTCTAOMKJZ2SI9X', 'DQEPV6RLRKOIMRH', NULL, NULL, NULL, 'DT13pcWxwJ4', 'Local', 'Diving Mask', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(412, '9623418719', NULL, 'TJT23BXZLWIDR58', 'DTCTAOMKJZ2SI9X', 'DAXW4JPZLEF3NHU', NULL, NULL, NULL, 'f4nzToI38k1', 'Local', 'Diving Mask w/ Adapter', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(413, '8666216794', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'NEP3ZGVL8PSUCL5', NULL, NULL, NULL, 'RlkOyoLuWha', 'Local', 'Door Mat', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(414, '2349524388', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'NLM3T7C3KDLJU4A', NULL, NULL, NULL, 'rHL1J7Qmgjn', 'Local', 'Dosta Korai 16\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(415, '2969684513', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'V8N781E3VGWSU7P', NULL, NULL, NULL, 'CpNTfhEtJug', 'Local', 'Doxicap 100mg', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(416, '5877995479', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'LJUCWYYUJFZDLDK', NULL, NULL, NULL, '5nMrjydtHoV', 'Local', 'Doxicap 200mg', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(417, '4429248216', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', '3F1SL1TNQXNKGVL', NULL, NULL, NULL, 'vWGe3IpsA0d', 'Local', 'Drill Machine Jamming Nut 13mm', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(418, '9725223492', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'BGD1241F2SXCIFZ', NULL, NULL, NULL, 'eZrKH7oCp0F', 'Local', 'Dry Cell Battery', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(419, '5188313956', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'PMGH5IOTVLSFRZ5', NULL, NULL, NULL, 'bM3VHGBifZg', 'Local', 'Dry Cell Battery', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(420, '6791587499', NULL, '2PURPOP1ACPKINM', 'HLE72FWD8USNC5Y', 'ILVMQ6B8IW6NOLY', NULL, NULL, NULL, 'ySIcULpo5zY', 'Local', 'D-Type Shackle 16mm', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(421, '4559113783', NULL, '2PURPOP1ACPKINM', 'HLE72FWD8USNC5Y', 'J4G7X6F9GXCVWQD', NULL, NULL, NULL, 'LEPXaq5d8NT', 'Local', 'D-Type Shackle 18mm', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(422, '5259876621', NULL, '2PURPOP1ACPKINM', 'HLE72FWD8USNC5Y', 'LI52GWDFFS8LLE1', NULL, NULL, NULL, 'kHjzpfdC24s', 'Local', 'D-Type Shackle 20mm', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(423, '7723862448', NULL, '2PURPOP1ACPKINM', 'HLE72FWD8USNC5Y', 'QKZQCVDZ45J846Y', NULL, NULL, NULL, 'tSYgzDxPnad', 'Local', 'D-Type Shackle 20mm', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(424, '5931117753', NULL, '2PURPOP1ACPKINM', 'HLE72FWD8USNC5Y', 'RUVK4N4DREGZONQ', NULL, NULL, NULL, 'EzvUkSh6nJG', 'Local', 'D-Type Shackle 20mm', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(425, '6695264849', NULL, '2PURPOP1ACPKINM', 'HLE72FWD8USNC5Y', 'ELP6JE4ZYLYCP6R', NULL, NULL, NULL, 'eWpw4RGXinM', 'Local', 'D-Type Shackle 22mm', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(426, '7721266944', NULL, '2PURPOP1ACPKINM', 'HLE72FWD8USNC5Y', 'XX1FGDMKDVMSC6R', NULL, NULL, NULL, 'WVCd2erf0aL', 'Local', 'D-Type Shackle 24mm', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(427, '1725196372', NULL, '2PURPOP1ACPKINM', 'HLE72FWD8USNC5Y', '1OICP78T8AUNSYI', NULL, NULL, NULL, 'AguHfPIkJO1', 'Local', 'D-Type Shackle 26mm', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(428, '3685374597', NULL, 'EB886WD44XASJTL', 'B29KZMCXGOPBJG3', 'E7PAXTST35CQDLZ', NULL, NULL, NULL, 'sUzGTBPq3rS', 'Local', 'Duct Tape', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(429, '5128944663', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', '4IQ5KIRF23GW3TR', NULL, NULL, NULL, 'qy7TePrVDc2', 'Local', 'Duralax', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(430, '8996796298', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'JNLJ9UN8DIC2IXC', NULL, NULL, NULL, 'QuhzjIn6irm', 'Local', 'Duster', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(431, '8563198694', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', '6EJQ5RIB2866DLP', NULL, NULL, NULL, 'zYs4eAp5b6a', 'Local', 'Electric Board', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(432, '7926994498', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'FP7Y3ZMFTU5ZOP5', NULL, NULL, NULL, 'XN8FQ2p4v7c', 'Local', 'Electric Bulb 200W', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(433, '3146196391', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', '237ZP4WK1RAOECX', NULL, NULL, NULL, 'uZhxM5Nsgqe', 'Local', 'Electric Cable 3.029mm (Two Phase)', NULL, NULL, 'Ft', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(434, '8223813969', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'AABDPW6CREA9M4N', NULL, NULL, NULL, 'xlhWB5CHZG7', 'Local', 'Electric Cable 3.029mm (Two Phase)', NULL, NULL, 'Ft', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(435, '1978152714', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'NF4HEUESGM97XSR', NULL, NULL, NULL, 'uB7XznxMIf9', 'Local', 'Electric Cable 3.029mm (Two Phase)', NULL, NULL, 'Ft', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(436, '6857274825', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'LHDKBVCK16MS8K8', NULL, NULL, NULL, 'NBt7iakg1Cf', 'Local', 'Electric Fuse', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(437, '7355251234', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'B1W6OI95XBCRY6R', NULL, NULL, NULL, 'IRTp4KOwBYE', 'Local', 'Electric Kettle', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(438, '4926149219', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', '2J4JWGAUXYS3XBY', NULL, NULL, NULL, 'RHICc3xft9D', 'Local', 'Electric Kettle', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(439, '9734131469', NULL, 'EB886WD44XASJTL', 'B29KZMCXGOPBJG3', '1P2EL6C6XOL6GSX', NULL, NULL, NULL, 'fvyQYUX8Pz1', 'Local', 'Electric Tape', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(440, '5559212836', NULL, 'EB886WD44XASJTL', 'B29KZMCXGOPBJG3', 'CAYWHOYSD6DOYTQ', NULL, NULL, NULL, 'zOkWKTgrf0N', 'Local', 'Electric Tape', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(441, '1827149884', NULL, 'EB886WD44XASJTL', 'B29KZMCXGOPBJG3', 'TJP5D5CZPIGNOOS', NULL, NULL, NULL, 'Pf7HYM82kNr', 'Local', 'Electric Tape', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(442, '4271498968', NULL, 'EB886WD44XASJTL', 'B29KZMCXGOPBJG3', 'NKE3BYFVW4AXHP1', NULL, NULL, NULL, 'qT41jGf8WpE', 'Local', 'Electric Tape', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(443, '6446924278', NULL, 'EB886WD44XASJTL', 'B29KZMCXGOPBJG3', 'PGZ3R1LMMJNDANZ', NULL, NULL, NULL, 'snJilAgEIOT', 'Local', 'Electric Tape', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(444, '8653562751', NULL, 'EB886WD44XASJTL', 'B29KZMCXGOPBJG3', 'P3B9IGIGPSXTWVH', NULL, NULL, NULL, 'IyMqh82os9K', 'Local', 'Electric Tape', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(445, '6489279937', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'OLTB7V29GPUH2RN', NULL, NULL, NULL, 'xObY4f8lpFg', 'Local', 'Electric Tester', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(446, '5894328864', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'PXXYFIF4BHY3HLD', NULL, NULL, NULL, 'NmKp4U2sHnL', 'Local', 'Electric Torch', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(447, '6963727431', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'MSU7CYOUGNBB9SH', NULL, NULL, NULL, 'OukYbL7UwXQ', 'Local', 'Emery Cloth 120', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(448, '2722138138', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'YPG3TGUVY46PYB2', NULL, NULL, NULL, 'JvKkLQzE4Uc', 'Local', 'Emery Cloth 320', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(449, '3236966155', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'PODRHVG4TKFF154', NULL, NULL, NULL, 'rIPvTwcW14f', 'Local', 'Emery Paper 200', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(450, '9862191142', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'ZB4LMTY1GXRB1FD', NULL, NULL, NULL, 'LE0KuIiV3S5', 'Local', 'Emery Paper 240', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(451, '3625459286', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'CJWEQKWOC74YU8F', NULL, NULL, NULL, 'SfChBnyieFr', 'Local', 'Emery Paper 320', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(452, '2234469114', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'B5UNZMGSIVKDUYC', NULL, NULL, NULL, 'EbM709OrwDf', 'Local', 'Emery Paper 600', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(453, '6431111336', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'IXUON2HLQG9AFOL', NULL, NULL, NULL, '4mGFqH0xjhB', 'Local', 'Emery Paper 800', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(454, '3141761843', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', '3X3HC85ZLF3OVZ8', NULL, NULL, NULL, 'yo4sWlIzDVj', 'Local', 'Energy Bulb', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(455, '3686627758', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'UB4HMAO9ROSSCIH', NULL, NULL, NULL, 'CTsMXODn6GY', 'Local', 'Energy Bulb 14W', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(456, '3934518461', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'PK7XQOFPLTANPSI', NULL, NULL, NULL, '3KRYDUpZ045', 'Local', 'Energy Bulb 24W', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(457, '3164469995', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'L3KKN8MZTX9N83S', NULL, NULL, NULL, 'H4h90YiuqoI', 'Local', 'Energy Bulb 25W', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(458, '5996994123', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'BCJVGF8ZAD8MNBE', NULL, NULL, NULL, 'vINh1stR2xH', 'Local', 'Energy Bulb 26W', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(459, '5999748677', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'M71SXWAID6ZSVJN', NULL, NULL, NULL, 'ftxgeLdRuIA', 'Local', 'Energy Bulb 26W', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(460, '8284594963', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', '5D9ZCD57B62D1KS', NULL, NULL, NULL, 'vam68ZdXEuL', 'Local', 'Energy Bulb 30W', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(461, '6567438525', NULL, '2PURPOP1ACPKINM', 'US9B6OUBZYA62E8', '3W56R3X6VWKM9EU', NULL, '8N-6309', NULL, '8N-6309', 'Import', 'Engine Air Filter 8N-6309 (CAT)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(462, '1739116349', NULL, '32GAZCG9EGXK5S5', 'S8FDR2PZE6VWCLV', 'RRUVF68699QND2F', NULL, 'DCA4', NULL, 'DCA4', 'Local', 'Engine Coolant DCA4', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(463, '8294621148', NULL, '32GAZCG9EGXK5S5', 'S8FDR2PZE6VWCLV', 'G7PIFW8PYPQY1LT', NULL, 'DCA4', NULL, 'DCA4', 'Local', 'Engine Coolant DCA4', NULL, NULL, 'Ltr', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(464, '3181759215', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'FYLGI7D5LL797PZ', NULL, NULL, NULL, 'ZjIAuXc5mOi', 'Local', 'Entacyd Plus', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(465, '8542544142', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'OY93YEQI668U3VJ', NULL, NULL, NULL, 'l7vmjof6RTW', 'Local', 'Entacyd Plus', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(466, '8274873493', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'LP4M6ZWUKLMFH5Y', NULL, NULL, NULL, 'QWs2fh701gu', 'Local', 'Entacyd Plus (Syrup)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(467, '5582843498', NULL, 'EB886WD44XASJTL', 'B29KZMCXGOPBJG3', '33N1TWP5ORHTBPO', NULL, NULL, NULL, 'UZBM98OaeSH', 'Local', 'Envelope', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(468, '6727214556', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'LQCJPYHGEKFJPET', NULL, NULL, NULL, '6xIDvNnjlgG', 'Local', 'Epoxy Putty', NULL, NULL, 'Set', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(469, '6689853252', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'W8IWDTMHRRXP5X7', NULL, NULL, NULL, '3Z2RiUFfWrS', 'Import', 'Epoxy Putty (A & B)', NULL, NULL, 'Box', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(470, '2224169423', NULL, 'EB886WD44XASJTL', 'B29KZMCXGOPBJG3', 'TPQ7LVK5GL8SY2C', NULL, NULL, NULL, 'hRz7ICx62Lu', 'Local', 'Eraser', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(471, '5336661521', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'R1FY7QQ5QW81TFT', NULL, NULL, NULL, '1Ipo0JiXZVH', 'Local', 'Esigerd', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(472, '6733785277', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', '5B96T4GL58XDD2M', NULL, NULL, NULL, 'cuJ2GAdpejT', 'Local', 'Etorix 120mg', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(473, '3747247749', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'WDWE7W1HFQ1TVWY', NULL, NULL, NULL, 'iGEa5rpyzVu', 'Local', 'Etorix 120mg', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(474, '8968728493', NULL, 'WPHNEVLXT34GIFJ', 'TNXPU7SP8EHWZ62', 'AI25STV2521S4TJ', NULL, NULL, NULL, 'JT3BzPvfhkm', 'Local', 'Exhaust Bellows (APS)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(475, '8536755757', NULL, 'WPHNEVLXT34GIFJ', 'TNXPU7SP8EHWZ62', 'FMQ1LCR92CZVJSJ', NULL, NULL, NULL, 'a5rYTKJkQli', 'Local', 'Exhaust Bellows 5\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(476, '1266597796', NULL, 'WPHNEVLXT34GIFJ', 'TNXPU7SP8EHWZ62', 'CYHJPMQSX99USWJ', NULL, NULL, NULL, 'qs9gfjhVCGE', 'Local', 'Exhaust Engine Valve', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(477, '3526324813', NULL, 'WPHNEVLXT34GIFJ', 'OQDFA9V8X4P86QI', 'N7BMA2BH7RRDC1S', NULL, NULL, NULL, 'ufC2ycqNILl', 'Local', 'Exhaust Manifold (NTA855)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(478, '3646852964', NULL, '2PURPOP1ACPKINM', 'EBZFU3KQHCL2IS6', '9C6FQ25GTCWWUWC', NULL, '178937', NULL, '178937', 'Local', 'Exhaust Manifold O\'Ring Seal (178937)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(479, '9735661216', NULL, 'WPHNEVLXT34GIFJ', 'TNXPU7SP8EHWZ62', 'GJV33PDCOWBDWE9', NULL, '3803519', NULL, '3803519', 'Local', 'Exhaust Valve (3803519)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(480, '1497538623', NULL, 'WPHNEVLXT34GIFJ', 'TNXPU7SP8EHWZ62', 'VSTJAMVGMMIMDXV', NULL, NULL, NULL, '8siSme9dFwK', 'Local', 'Expansion Bellows (6\" x 12\")', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(481, '8579568156', NULL, 'PQ4XVDW96CL7QQZ', 'PZNECLLN1S7KLAT', '51OMRXUYQ4GHI6U', NULL, NULL, NULL, 'nh4uGD8qyEf', 'Local', 'Expansion Joint For G/E (LT-12\"X11\")', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(482, '3484564774', NULL, '32GAZCG9EGXK5S5', '3XUMP7QWQ7BTCTO', '7RMCUA6F4DFGGBF', NULL, NULL, NULL, 'qFX61G5cRdt', 'Local', 'Expansion Valve w/ Orifice No. 7 (TE-12, R-22) (Danfoss)', NULL, NULL, 'Set', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(483, '2779623464', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'ZAFX2JD6KXMHFAR', NULL, NULL, NULL, 'NdBRVwCY2ZH', 'Local', 'Eye Drop', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(484, '7933935375', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'XR94J2YWYU4FH3M', NULL, NULL, NULL, 'SP0K4GwkOaN', 'Local', 'Famotack 20mg', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(485, '7231296843', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'VO57IK3FKS2CZQU', NULL, NULL, NULL, 's1QleEHD42T', 'Local', 'Fan for Blower', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(486, '6413697145', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'JC3M7T3UESFO4EH', NULL, NULL, NULL, '3LNRkBCEMWe', 'Local', 'Fan for Blower', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(487, '8356391741', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'WOVZUGMB8SU9CUM', NULL, NULL, NULL, '0qOYFGdSvgH', 'Local', 'Fan for Officer', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(488, '4523271122', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'SJEHX946W7DM5A6', NULL, NULL, NULL, '736GZ9PsHrq', 'Local', 'Fexo 120mg', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(489, '2234857553', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'N5GCF4H7DQ3GBSN', NULL, NULL, NULL, 'nM1YDFBjkVC', 'Local', 'Fexo 120mg', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(490, '9258457752', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'G2W3HBHBHMXJYAT', NULL, NULL, NULL, 'eVbpwsNkQUv', 'Local', 'Ficlox 500mg', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(491, '7884128168', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'HZPCY7XRPLQ4WH5', NULL, NULL, NULL, 'H1D5ujRyke6', 'Local', 'Filmet 400mg', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(492, '6427124394', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'BW3TQJWYC3CXSRF', NULL, NULL, NULL, '6lqznMGjV0A', 'Local', 'Filmet 400mg', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(493, '2784533137', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'VBDBC5OBIFBYBFD', NULL, NULL, NULL, 'yqwIhDR6Tz7', 'Local', 'Fimoxyl 250mg', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(494, '4785985189', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'QJIE5M25BILOJY1', NULL, NULL, NULL, '91i0bmpJU7j', 'Local', 'Fimoxyl 500mg', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(495, '7883184749', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'W8SCDLHNFT5CVUH', NULL, NULL, NULL, 'o9E3uMtW8gQ', 'Local', 'Fire Bucket', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(496, '4428641621', NULL, 'PQ4XVDW96CL7QQZ', 'PZNECLLN1S7KLAT', 'O9V42G5WT3BEOCT', NULL, NULL, NULL, 'BdDIn4V8k6g', 'Local', 'Fire Globe Valve 2\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(497, '5314147389', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'ZFCOYQGTAV6INO3', NULL, NULL, NULL, 'j67WdfpwyKF', 'Local', 'First Aid Box', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(498, '7636256444', NULL, '4TQXLMLBLJPAQP1', 'MV7C1KBSEUBJHHD', 'B3OZSDFX5RGI3A9', NULL, NULL, NULL, 'sBn4IuSyGgF', 'Local', 'Fish Bag', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(499, '2976856261', NULL, '4TQXLMLBLJPAQP1', 'MV7C1KBSEUBJHHD', 'E88NOGDT92WKD4H', NULL, NULL, NULL, 'PdZGhuJKQlE', 'Local', 'Fish Bag', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(500, '9786648429', NULL, '4TQXLMLBLJPAQP1', 'MV7C1KBSEUBJHHD', 'R732H6AWY2SVEED', NULL, NULL, NULL, 'U3Hms45S9R6', 'Local', 'Fish Basket (Small)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(501, '4766721352', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'PEVDCDVVUEYO3XN', NULL, NULL, NULL, 'oJMhXeIHLFi', 'Local', 'Fish Hold Light Shield', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(502, '1964234579', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'LH6DBFHP3OFUPFS', NULL, NULL, NULL, 'oKvAYETl9Rm', 'Local', 'Fish Hold Lock', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(503, '6148363576', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', '37H2CTCDI3PWR3Y', NULL, NULL, NULL, '6nFfAtTJRqQ', 'Local', 'Fish Hold Lock & Key', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(504, '5795245994', NULL, '4TQXLMLBLJPAQP1', 'PID8OPNPVESJDI3', 'OZYEW2D97XWS4RS', NULL, NULL, NULL, 'oGLITdgnlKV', 'Import', 'Fishing Needle (M & S) (6 + 6)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(505, '9431223718', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', '1W2XFLH214V9CQL', NULL, NULL, NULL, 'NTkhymClpGs', 'Local', 'Flag', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(506, '3537295291', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'TWWCXY1QU3IBU3P', NULL, NULL, NULL, 'YUOg4m8kXfZ', 'Local', 'Flagyl 400mg', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(507, '1524482138', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'OO6792EFDNMKC9P', NULL, NULL, NULL, '2cgxFmBRuzy', 'Local', 'Flagyl 400mg', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(508, '5617812724', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'PAHZB5CVZNMDB7W', NULL, NULL, NULL, 'WI0Bc2MkVTd', 'Local', 'Flagyl 400mg', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(509, '9554673526', NULL, 'PQ4XVDW96CL7QQZ', 'PZNECLLN1S7KLAT', 'QYC3KNNPYNI5GBE', NULL, NULL, NULL, 'NyRFhvixulG', 'Local', 'Flat Bar (L-17\', 9mm, 1.5\")', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(510, '5527912613', NULL, '4TQXLMLBLJPAQP1', '1IPW5PLH4NWCZKG', 'JC76CZ3TEA7N9F6', NULL, NULL, NULL, 'VOPMJ2nZaz7', 'Import', 'Float 10\" (Big)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(511, '8518687259', NULL, '4TQXLMLBLJPAQP1', '1IPW5PLH4NWCZKG', 'GOQNYD7K4HG9SEC', NULL, NULL, NULL, 'PjXDrdLxhmp', 'Import', 'Float 10\" (Big)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(512, '7941552953', NULL, '4TQXLMLBLJPAQP1', '1IPW5PLH4NWCZKG', '9GD6K6AV21UK5TK', NULL, NULL, NULL, 'Pob2XjRag5N', 'Import', 'Float 8\" (Small)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(513, '8512931973', NULL, '4TQXLMLBLJPAQP1', '1IPW5PLH4NWCZKG', 'VSXEKVLTFAXSRWP', NULL, NULL, NULL, 'Rq8p9Awks7U', 'Local', 'Float 8\" (Small)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(514, '7766768211', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'RUUGYGUQY4TLKKU', NULL, NULL, NULL, 'BzhfqGXr0Zg', 'Local', 'Flood Light Bulb 100W', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(515, '5271945969', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', '7Q4AB4LJZWL53P4', NULL, NULL, NULL, 'TFwiNWy8a3r', 'Local', 'Flood Light Set 100W (Mercury Bulb Set)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(516, '3467693864', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', '22CDCO3OGNOCRI9', NULL, NULL, NULL, 'qfb9ovHmPIS', 'Local', 'Fluclox 500mg', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(517, '4252278141', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', '7S7OH5E64QFZJQK', NULL, NULL, NULL, 'Jj6yoxkciU9', 'Local', 'Fluclox 500mg', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(518, '4782757635', NULL, '2PURPOP1ACPKINM', 'EBZFU3KQHCL2IS6', '7431B9CNIYWVGUN', NULL, '3016495', NULL, '3016495', 'Local', 'Flywheel Seal (3016495)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(519, '2314291867', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'SPM4CXUUTTVLXXW', NULL, NULL, NULL, 'PVt21GA6Tzx', 'Local', 'Foam', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(520, '4565162427', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', '8195VXNJ41BIGBM', NULL, NULL, NULL, '3bm6cHCzlLD', 'Local', 'Foam (22 x 22 x 4\")', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(521, '7358959285', NULL, '2PURPOP1ACPKINM', 'US9B6OUBZYA62E8', 'QV19OF4ALLP6R9Y', NULL, NULL, NULL, 'mXYCNiaAuy4', 'Local', 'Foam for Air Filter', NULL, NULL, 'Ft', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(522, '7666272179', NULL, '2PURPOP1ACPKINM', 'US9B6OUBZYA62E8', 'QCCT4S3XGEFCAY2', NULL, NULL, NULL, '9fdenK7SMyI', 'Local', 'Foam for Air Filter', NULL, NULL, 'Sqft', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(523, '4498331557', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', '1UL53CUGCBYDKJZ', NULL, NULL, NULL, 'rqnp02zVt4U', 'Local', 'Foam Type Fire Extinguisher (4ltr)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(524, '9887821157', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'L1XWBPA3TH1A3RN', NULL, NULL, NULL, '6S3u78ArWN2', 'Local', 'Foam Type Fire Extinguisher (9ltr)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(525, '6224969524', NULL, 'EB886WD44XASJTL', 'B29KZMCXGOPBJG3', 'UXP4RCDAKBJJTD2', NULL, NULL, NULL, 'wfVmtrs1iMO', 'Local', 'Fork & Spoon', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(526, '9671984753', NULL, '32GAZCG9EGXK5S5', 'S8FDR2PZE6VWCLV', 'G1I98G6JGF4QHXL', NULL, NULL, NULL, 'J4I2TufEO17', 'Local', 'Freon Gas R22', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(527, '7114853373', NULL, '32GAZCG9EGXK5S5', 'S8FDR2PZE6VWCLV', 'FXSI5U6JUGZIH8H', NULL, NULL, NULL, 'isg3UmZz97B', 'Local', 'Freon Gas R22', NULL, NULL, 'Cyl', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(528, '1832854557', NULL, '32GAZCG9EGXK5S5', 'TDZYAAE2449JJPO', 'IBQP5P9E21TJVHN', NULL, NULL, NULL, 'xsdc6JVzItH', 'Local', 'Fresh Water Cooler Tube', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(529, '1137181648', NULL, '2PURPOP1ACPKINM', '87G3NU8TY4J2W25', 'OOL47WDR9IMY5DU', NULL, NULL, NULL, 'EsN1tdlFXDm', 'Local', 'Fresh Water Pump (220V 1HP)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(530, '2625293479', NULL, '1DFJOUKTOQ28QOI', '8SM6ZUETPZKZHVB', '4CZHFUT5DK5UCVV', NULL, NULL, NULL, 'ilME1IJZL85', 'Local', 'Fresh Water Temp. Meter', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(531, '5953483327', NULL, 'WPHNEVLXT34GIFJ', 'TNXPU7SP8EHWZ62', 'GZXD2HGMF6AGOYO', NULL, NULL, NULL, 'E5Kn6iGN1RT', 'Local', 'Front Clutch Coupling', NULL, NULL, 'Set', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(532, '6646985755', NULL, 'D3ITGWOF4UE1XH5', 'WXIC3HA35CQKBDW', 'XXHUY35ZNYIOVYR', NULL, NULL, NULL, 'CGEflu6yocv', 'Local', 'Fuchs Grease (FN-3)', NULL, NULL, 'Drum', 0, NULL, 'HH6A44ZGM3ZU488', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(533, '7756165925', NULL, '2PURPOP1ACPKINM', 'EBZFU3KQHCL2IS6', 'X4YAV2R722ETI9V', NULL, NULL, NULL, 'dV9YkWpneSQ', 'Local', 'Fuel Channel O\'Ring', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(534, '4127471696', NULL, '2PURPOP1ACPKINM', 'EBZFU3KQHCL2IS6', 'WELHRKAA6YZB2WP', NULL, NULL, NULL, 'PiCZ7QrNjIg', 'Local', 'Fuel Channel O\'Ring', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(535, '8689166926', NULL, '2PURPOP1ACPKINM', 'US9B6OUBZYA62E8', 'BOLXG1MC1IQOWKF', NULL, '1R-0756', NULL, '1R-0756', 'Local', 'Fuel Filter 1R-0756 (CAT)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(536, '3923675787', NULL, '2PURPOP1ACPKINM', 'US9B6OUBZYA62E8', 'DBITVC6GXRRM6HM', NULL, '1R-0756', NULL, '1R-0756', 'Local', 'Fuel Filter 1R-0756 (CAT)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(537, '1432317317', NULL, '2PURPOP1ACPKINM', 'US9B6OUBZYA62E8', 'YIHG6CGG896YLUA', NULL, 'BF-143', NULL, 'BF-143', 'Local', 'Fuel Filter BF-143', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1);
INSERT INTO `product_information` (`id`, `product_id`, `product_id_two`, `category_id`, `sub_cat_id`, `brand_id`, `country`, `parts`, `tag`, `sku`, `ptype_id`, `product_name`, `price`, `re_order_level`, `unit`, `tax`, `serial_no`, `product_model`, `product_details`, `image`, `status`) VALUES
(538, '9732449782', NULL, '2PURPOP1ACPKINM', 'US9B6OUBZYA62E8', '1JO2NV7U3KQSNM9', NULL, 'FF105D', NULL, 'FF105D', 'Local', 'Fuel Filter FF105D (Fleetguard)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(539, '6818258115', NULL, '2PURPOP1ACPKINM', 'US9B6OUBZYA62E8', '1PQ35WMGZRPADXV', NULL, 'FF105D', NULL, 'FF105D', 'Local', 'Fuel Filter FF105D (Fleetguard)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(540, '4713317566', NULL, '2PURPOP1ACPKINM', 'US9B6OUBZYA62E8', 'R3LE3HOMWU345E2', NULL, 'FF105D', NULL, 'FF105D', 'Local', 'Fuel Filter FF105D (Fleetguard)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(541, '4877491853', NULL, '2PURPOP1ACPKINM', 'US9B6OUBZYA62E8', '3SNMZOWZK68EKNJ', NULL, 'FF105D', NULL, 'FF105D', 'Local', 'Fuel Filter FF105D (Fleetguard)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(542, '2389424959', NULL, '2PURPOP1ACPKINM', 'US9B6OUBZYA62E8', '9EWBPRHORMGFEGM', NULL, 'FF202', NULL, 'FF202', 'Local', 'Fuel Filter FF202 (Fleetguard)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(543, '1783118164', NULL, '2PURPOP1ACPKINM', 'US9B6OUBZYA62E8', '5T5BA97XAI7UW5K', NULL, 'FF202', NULL, 'FF202', 'Import', 'Fuel Filter FF202 (Fleetguard)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(544, '9334381834', NULL, '2PURPOP1ACPKINM', 'US9B6OUBZYA62E8', 'EP218J1XR6LQNWS', NULL, 'O-1304', NULL, 'O-1304', 'Local', 'Fuel Filter O-1304 (Sakura)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(545, '6151811183', NULL, 'WPHNEVLXT34GIFJ', 'TNXPU7SP8EHWZ62', 'EQE65VGI3VGB2R3', NULL, '3023556', NULL, '3023556', 'Local', 'Fuel Injector Cup (3023556) (USA)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(546, '7183399253', NULL, 'WPHNEVLXT34GIFJ', 'TNXPU7SP8EHWZ62', '1T8B9IF7X4GINWV', NULL, '3023556', NULL, '3023556', 'Local', 'Fuel Injector Cup Set (3023556) (USA)', NULL, NULL, 'Set', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(547, '6895325892', NULL, 'Y2KK6KNJQIWD23Z', 'WLR1LOHS5JONLTJ', 'V97NKU75V7UR1RZ', NULL, NULL, NULL, '73fMmdeol2A', 'Local', 'Fuel Injector Servicing', NULL, NULL, NULL, 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(548, '7123231462', NULL, '2PURPOP1ACPKINM', 'US9B6OUBZYA62E8', 'YLBHRQLGOZCI6FI', NULL, 'FF108', NULL, 'FF108', 'Local', 'Fuel Oil Separator Filter FF108 (Fleetguard)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(549, '8575613529', NULL, '2PURPOP1ACPKINM', 'US9B6OUBZYA62E8', 'DZUPGFR1D6XZKL9', NULL, 'FF108', NULL, 'FF108', 'Local', 'Fuel Oil Separator Filter FF108 (Fleetguard)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(550, '9649179193', NULL, '2PURPOP1ACPKINM', 'US9B6OUBZYA62E8', 'UUD2RR97LB675GH', NULL, 'FF108', NULL, 'FF108', 'Import', 'Fuel Oil Separator Filter FF108 (Fleetguard)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(551, '7363157322', NULL, '2PURPOP1ACPKINM', 'US9B6OUBZYA62E8', '474C6C9BKM5PQ4L', NULL, 'K108', NULL, 'K108', 'Local', 'Fuel Oil Separator Filter K108 (Cummins)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(552, '7414927193', NULL, '2PURPOP1ACPKINM', 'US9B6OUBZYA62E8', '8LNHMBTB7NVHW2A', NULL, 'K108', NULL, 'K108', 'Local', 'Fuel Oil Separator Filter K108 (Cummins)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(553, '5685199245', NULL, '2PURPOP1ACPKINM', 'US9B6OUBZYA62E8', 'XL2FBQLQH8JOSGS', NULL, 'K108', NULL, 'K108', 'Local', 'Fuel Oil Separator Filter K108 (Cummins)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(554, '9221364523', NULL, '2PURPOP1ACPKINM', 'US9B6OUBZYA62E8', 'ZJJK3OMQTPRSQNX', NULL, 'O-5502', NULL, 'O-5502', 'Local', 'Fuel Oil Separator Filter O-5502', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(555, '2546665571', NULL, '2PURPOP1ACPKINM', '87G3NU8TY4J2W25', 'YSMC14EKSDPGGDA', NULL, NULL, NULL, 'OYvHafrEl8Z', 'Local', 'Fuel Pump (For Isuzu C2-40)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(556, '9394544275', NULL, '2PURPOP1ACPKINM', 'US9B6OUBZYA62E8', 'CZJMNIKCPSDQTIM', NULL, NULL, NULL, 'yoWiTcFKbLa', 'Local', 'Fuel Separator Filter F5701 (Sakura)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(557, '4486535266', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', '58TW7UBM5RE69KC', NULL, 'F5701', NULL, 'F5701', 'Local', 'Fuse 2A', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(558, '6639252691', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'VHEKZ3OYKR116YG', NULL, '5X440', NULL, '5X440', 'Local', 'Fuse AVR (Model No. 5X440)', NULL, NULL, 'Pcs', 0, NULL, 'BHV36CCHGJ89NWE', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(559, '3267828957', NULL, 'WPHNEVLXT34GIFJ', 'OQDFA9V8X4P86QI', 'WQBE4Z2R445VHQP', NULL, NULL, NULL, '38XZYHm4xp7', 'Local', 'G/E Head Gasket Kit', NULL, NULL, 'Set', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(560, '5245191155', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'EHO6WPDC1FTCHQK', NULL, NULL, NULL, 'RsTr1wbkLoQ', 'Local', 'Gas Burner', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(561, '6675577195', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'YU1RK3D9QXR9AI2', NULL, NULL, NULL, 'j5rf0ZSubGW', 'Local', 'Gas Charging Pipe', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(562, '6215565247', NULL, '2PURPOP1ACPKINM', '8VY7CDXPW6EC6MJ', '3F286RXO9RXI2WR', NULL, NULL, NULL, 'wZrGWOnNSyC', 'Local', 'Gas Regulator 22mm', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(563, '7415694995', NULL, '2PURPOP1ACPKINM', '8VY7CDXPW6EC6MJ', 'OWNVRRV2CH8F4QL', NULL, NULL, NULL, 'DumECb8P0Kt', 'Local', 'Gas Regulator 22mm', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(564, '5311378751', NULL, '2PURPOP1ACPKINM', '8VY7CDXPW6EC6MJ', '2PGQRCMXVESJVTL', NULL, NULL, NULL, 'ANrSv49hWHg', 'Local', 'Gas Regulator 22mm', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(565, '7916424563', NULL, '2PURPOP1ACPKINM', 'EBZFU3KQHCL2IS6', 'H6DIZBCHE25DBRI', NULL, NULL, NULL, 'WBYbHma3ENu', 'Local', 'Gasket for PT Pump', NULL, NULL, 'Box', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(566, '2294741844', NULL, 'PQ4XVDW96CL7QQZ', 'PZNECLLN1S7KLAT', 'VKBPLJRV62IKK6X', NULL, NULL, NULL, '2IGAjSR4Xlp', 'Local', 'Gate Valve 0.5\" (Brass)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(567, '5111981339', NULL, 'PQ4XVDW96CL7QQZ', 'PZNECLLN1S7KLAT', '835CUJFH43QV4P4', NULL, NULL, NULL, 'f4JTNwmBYre', 'Local', 'Gate Valve 2\" (Brass)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(568, '6589857699', NULL, 'PQ4XVDW96CL7QQZ', 'PZNECLLN1S7KLAT', 'CPENPUE223UQTM4', NULL, NULL, NULL, '2163rG4SzVn', 'Local', 'Gate Valve 3\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(569, '5735979898', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'MCD8IMBUSXULK6T', NULL, NULL, NULL, 'd7GRuqEXTZx', 'Local', 'Gauze Roll', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(570, '9893672359', NULL, '1DFJOUKTOQ28QOI', '8SM6ZUETPZKZHVB', '56T8A3S37V5NZ2C', NULL, NULL, NULL, '19UNovCqROF', 'Local', 'Gear Oil Meter', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(571, '4733418689', NULL, '1DFJOUKTOQ28QOI', '8SM6ZUETPZKZHVB', '7AQBQ9AWIILMJEE', NULL, NULL, NULL, 'EFlwyu1Z7bx', 'Local', 'Generator Engine Amp. Meter 400-5', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(572, '1644821131', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'BA4XQTGHT3TSW8X', NULL, NULL, NULL, '6ZoN2szTAkb', 'Local', 'Georgette Cloth (2\' x 10\')', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(573, '4942236522', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'WWRQMVAUEFOJYY1', NULL, NULL, NULL, 'c6QSVOUM7xh', 'Local', 'G-Hook', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(574, '5451379163', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', '7LGMO6QYVDRKNYI', NULL, NULL, NULL, 'Shpr0lR7KTZ', 'Local', 'G-Hook 36mm', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(575, '5878242328', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', '1DMR34MUNDNFD4X', NULL, NULL, NULL, 'FqmtTd4Mbca', 'Local', 'GI Bucket', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(576, '7137723486', NULL, 'PQ4XVDW96CL7QQZ', 'PZNECLLN1S7KLAT', 'EEGNPUA8S1GK8AA', NULL, NULL, NULL, 'ALoNp4XkJZm', 'Local', 'GI Elbow (ID-2\", T-6mm)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(577, '3867993424', NULL, 'PQ4XVDW96CL7QQZ', 'PZNECLLN1S7KLAT', 'N4TYJAB7OMIHI4T', NULL, NULL, NULL, 'fVKWRwDgpbs', 'Local', 'GI Elbow Bend 3\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(578, '9899259821', NULL, '2PURPOP1ACPKINM', 'JUKRRNVHG6LOEUR', '4TV3JLLYMXH91KA', NULL, NULL, NULL, 'dxRnp7K3okc', 'Local', 'GI Pipe (ID-1\", T-4mm)', NULL, NULL, 'Ft', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(579, '7492432571', NULL, '2PURPOP1ACPKINM', 'JUKRRNVHG6LOEUR', 'KW8STNBVUPFXG31', NULL, NULL, NULL, 'XV0EpjNhHnM', 'Local', 'GI Pipe (OD-1\")', NULL, NULL, 'Ft', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(580, '3167345122', NULL, '2PURPOP1ACPKINM', 'JUKRRNVHG6LOEUR', 'FKPX9GKKOVGF223', NULL, NULL, NULL, 'EkgSG3725l6', 'Local', 'GI Pipe 3\"', NULL, NULL, 'Ft', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(581, '5334569512', NULL, 'PQ4XVDW96CL7QQZ', 'PZNECLLN1S7KLAT', '3SDP9NZFU2OTODB', NULL, NULL, NULL, 'WjCpqmGVBXQ', 'Local', 'GI Wire', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(582, '7416983627', NULL, 'PQ4XVDW96CL7QQZ', 'PZNECLLN1S7KLAT', 'AV97E6MTJ9DYW77', NULL, NULL, NULL, 'lRDWTUPAFV9', 'Local', 'GI Wire (No. 18)', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(583, '3888348869', NULL, 'PQ4XVDW96CL7QQZ', 'PZNECLLN1S7KLAT', 'Z6KHOPIZ6YFAPUP', NULL, NULL, NULL, '5MzrW6OPieL', 'Local', 'GI Wire 1mm', NULL, NULL, 'Lbs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(584, '5369424241', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'X74CJ85KMI3PH65', NULL, NULL, NULL, '4oJIslRw20v', 'Local', 'Glass Cleaner', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(585, '3943714276', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'PQQXQG57CEMC2FR', NULL, NULL, NULL, 'GMvmIBz2AuZ', 'Local', 'Glass Stand', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(586, '9813826764', NULL, 'EB886WD44XASJTL', 'B29KZMCXGOPBJG3', 'ZWRQFKDSCR9QXC7', NULL, NULL, NULL, 'l0RTBgUZvQS', 'Local', 'Glass Tape 2\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(587, '9976123754', NULL, 'MH35OWBFMR35ILN', 'XMAG1UXN247Z1FF', '32PP5CATJBXSQNR', NULL, NULL, NULL, 'rB4dvKptCDJ', 'Local', 'Gorgeous Green Paint', NULL, NULL, 'Gallon', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(588, '4464276456', NULL, 'MH35OWBFMR35ILN', 'XMAG1UXN247Z1FF', 'JLVVM36VI2QVN9U', NULL, NULL, NULL, 'us2DaycWYZ0', 'Local', 'Gray Deck Paint', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(589, '8917673124', NULL, 'MH35OWBFMR35ILN', 'XMAG1UXN247Z1FF', '3NAPSDNPIFJPIHW', NULL, NULL, NULL, '3X9rElFvsGw', 'Local', 'Gray Paint', NULL, NULL, 'Gallon', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(590, '9239776523', NULL, 'D3ITGWOF4UE1XH5', 'WXIC3HA35CQKBDW', 'VDOB1IVRYT78KPU', NULL, NULL, NULL, 'whDAJPKuks5', 'Local', 'Grease (CMP) (For Engine)', NULL, NULL, 'Tin', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(591, '1415766159', NULL, 'D3ITGWOF4UE1XH5', 'WXIC3HA35CQKBDW', 'V8MI5PBPYBLA6JF', NULL, NULL, NULL, 'mW3COBdz5ia', 'Local', 'Grease (CMP) (For Wire)', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(592, '8733566682', NULL, 'D3ITGWOF4UE1XH5', 'WXIC3HA35CQKBDW', 'D5S3OHQQDWX8Y91', NULL, NULL, NULL, 'NQieSxvlgCJ', 'Local', 'Grease (CMP) (For Wire)', NULL, NULL, 'Tin', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(593, '5718826849', NULL, 'D3ITGWOF4UE1XH5', 'WXIC3HA35CQKBDW', 'EFGQNG2PJID9HIL', NULL, NULL, NULL, 'CwiEXuA5Wl4', 'Local', 'Grease (CMP) (For Wire)', NULL, NULL, 'Tin', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(594, '3447777794', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'UMKMLZ2E7FUTR8D', NULL, NULL, NULL, 'uly0G2jQ79W', 'Local', 'Grease Gun', NULL, NULL, 'Set', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(595, '4155113934', NULL, 'MH35OWBFMR35ILN', 'XMAG1UXN247Z1FF', '8HL6O7764FC7HR7', NULL, NULL, NULL, 'BvZ4wsU2YDC', 'Local', 'Green Paint', NULL, NULL, 'Tin', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(596, '7479627126', NULL, '4TQXLMLBLJPAQP1', 'AP7VRUIXZF1AZ3Q', 'B1N1ELABQJIRXNU', NULL, NULL, NULL, '6insFjReYdq', 'Local', 'Green Rope 12mm', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(597, '2421438958', NULL, '4TQXLMLBLJPAQP1', 'AP7VRUIXZF1AZ3Q', 'VU36LZRJ9Q2O7A3', NULL, NULL, NULL, 'MGBWy50HfLE', 'Local', 'Green Rope 2mm', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(598, '3455766412', NULL, '4TQXLMLBLJPAQP1', 'AP7VRUIXZF1AZ3Q', 'V5YOTTG6NG1HUMD', NULL, NULL, NULL, 'AByjGMgcosv', 'Local', 'Green Rope 6mm', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(599, '6796948933', NULL, '4TQXLMLBLJPAQP1', 'AP7VRUIXZF1AZ3Q', '4S9YJ9KBUO8PTZP', NULL, NULL, NULL, 'stUCSqLGo6A', 'Local', 'Green Rope 8mm', NULL, NULL, 'Coil', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(600, '2855778439', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', '7O3L3POUESTECU4', NULL, NULL, NULL, 'hjVymEu3cBQ', 'Local', 'Grinding Disk 4\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(601, '2522677126', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'K3KJRUAIR6SZB5D', NULL, NULL, NULL, 'wHBApW0Irf4', 'Local', 'Grinding Machine', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(602, '7893241263', NULL, 'WPHNEVLXT34GIFJ', 'TNXPU7SP8EHWZ62', 'OKVWQVVQNUN1BVR', NULL, NULL, NULL, 'wy18YGVRoCv', 'Local', 'Guide Valve Stem', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(603, '1127718529', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', '8WVE6WH1MOH7O2S', NULL, NULL, NULL, '7biXN2GEdTI', 'Local', 'Guty Socket', NULL, NULL, 'Box', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(604, '1275827439', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', '7UNNCJS4SR8Q8MY', NULL, NULL, NULL, 'JQnl1ziwSbr', 'Local', 'Hacksaw Blade', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(605, '8735491125', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'KYSOHPZCCH68CKX', NULL, NULL, NULL, 'kofnbsyKSxO', 'Local', 'Half Plate', NULL, NULL, 'Dzn', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(606, '4949948694', NULL, '2PURPOP1ACPKINM', 'EBZFU3KQHCL2IS6', 'B3BQJ9AGAQSRYLA', NULL, NULL, NULL, 'wBXI6lniSRh', 'Local', 'Halite Gasket', NULL, NULL, 'Lbs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(607, '5494276563', NULL, '2PURPOP1ACPKINM', 'EBZFU3KQHCL2IS6', 'SYNI1SETE4QEU1T', NULL, NULL, NULL, 'UtIYvDbck2n', 'Local', 'Halite Gasket', NULL, NULL, 'Sheet', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(608, '3716842433', NULL, '2PURPOP1ACPKINM', 'EBZFU3KQHCL2IS6', 'CGBLFIBXWD7BESL', NULL, NULL, NULL, 'MTwZYNu5ybR', 'Local', 'Halite Gasket Sheet (2\' x 3\')', NULL, NULL, 'Lbs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(609, '9144365198', NULL, '2PURPOP1ACPKINM', 'EBZFU3KQHCL2IS6', 'OZJ3XT57YDTI23Q', NULL, NULL, NULL, 'FU072w8TCzI', 'Local', 'Halite Sheet 1.5mm', NULL, NULL, 'Lbs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(610, '8273778873', NULL, '2PURPOP1ACPKINM', 'EBZFU3KQHCL2IS6', 'IRWVKS3AWO1RA3E', NULL, NULL, NULL, 'qKQ2vDN51bI', 'Local', 'Halite Sheet 1.5mm (4\' x 5\')', NULL, NULL, 'Lbs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(611, '2237838178', NULL, '2PURPOP1ACPKINM', 'EBZFU3KQHCL2IS6', 'XVYFT5QT2TX4CS8', NULL, NULL, NULL, 'cVAEH4a9S6t', 'Local', 'Halite Sheet 1.5mm (England)', NULL, NULL, 'Lbs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(612, '7145537733', NULL, '2PURPOP1ACPKINM', 'EBZFU3KQHCL2IS6', '2BW1MISVNTUP2TE', NULL, NULL, NULL, 'KiVYkh1j9Sf', 'Local', 'Halite Sheet 1mm', NULL, NULL, 'Lbs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(613, '1944336847', NULL, '2PURPOP1ACPKINM', 'EBZFU3KQHCL2IS6', '9WSGWCW74CT3ML4', NULL, NULL, NULL, 'Klwrdk7Uhy1', 'Local', 'Halite Sheet 1mm (England)', NULL, NULL, 'Sqft', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(614, '1465297789', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', '29GLIYCPN6A2MEV', NULL, NULL, NULL, 'W6XCGhu18pT', 'Local', 'Hammering Screw Driver', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(615, '4888743775', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'IGE346DIFUHL8DW', NULL, NULL, NULL, 'hODKJYp6Ibg', 'Local', 'Hammering Screw Driver 10\" (-)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(616, '9343339128', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', '2PD9X8AVYJ6VR2Q', NULL, NULL, NULL, 'IlkQBORZtaS', 'Local', 'Hammering Screw Driver 10\" (+) (-)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(617, '3773646562', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'EWCHQ9W9RMRKH8U', NULL, NULL, NULL, 'wQ8EHoO2nt7', 'Local', 'Hammering Screw Driver 8\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(618, '5832863114', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'WEP84253VHKO6C7', NULL, NULL, NULL, 'e2B7Dw6XFio', 'Local', 'Hand Brush 1\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(619, '7814761988', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'O8WFGVQRSD1BJTK', NULL, NULL, NULL, 'UOf1gdWerPM', 'Local', 'Hand Brush 2\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(620, '6896842184', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'H145BC3IRVV695B', NULL, NULL, NULL, 'jriD6Y28Pod', 'Local', 'Hand Drill Machine', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(621, '4668246941', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'H442FWZ3I5AT91G', NULL, NULL, NULL, 'u4gHqGVXahs', 'Local', 'Hand Flare', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(622, '4976413226', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'Q1UTISFGAGHQA2W', NULL, NULL, NULL, '2KIUhaCLkX4', 'Local', 'Handwash Fixed Box', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(623, '9754282544', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'NISNDFMB83WJO78', NULL, NULL, NULL, 'NibCjz58Z61', 'Local', 'Harpic', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(624, '2415583275', NULL, 'WPHNEVLXT34GIFJ', 'TNXPU7SP8EHWZ62', 'IY9NASQ7L7SUWC8', NULL, NULL, NULL, 'uebfBSVi2XI', 'Local', 'Head Gasket', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(625, '8374675847', NULL, 'WPHNEVLXT34GIFJ', 'TNXPU7SP8EHWZ62', 'C3ZOTOMYKSZV83N', NULL, NULL, NULL, 'OUom3vKqCs0', 'Local', 'Head Gasket (W/E Hino EK-100)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(626, '5137645331', NULL, 'WPHNEVLXT34GIFJ', 'TNXPU7SP8EHWZ62', 'VQUSSCTO7TAPIBO', NULL, NULL, NULL, 'qk8aWioVCvf', 'Local', 'Head Gasket (W/E Hino EK-100)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(627, '4685213757', NULL, 'WPHNEVLXT34GIFJ', 'TNXPU7SP8EHWZ62', 'R3CDTI2UTIJO85W', NULL, NULL, NULL, 'OiMLJKz4Vdg', 'Local', 'Head Gasket Kit (G/E Isuzu C240)', NULL, NULL, 'Set', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(628, '6481526714', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'BRZYNLXLIUX1Y2V', NULL, NULL, NULL, 'i6SNhAeXVWp', 'Local', 'Heat Proof Nomex Paper 2mm', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(629, '4346117643', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'O3H94GYBTYCO7FO', NULL, NULL, NULL, 'ZYchxRN0U2S', 'Local', 'Heat Proof Nomex Paper 7mm', NULL, NULL, 'Yrd', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(630, '4746137511', NULL, '2PURPOP1ACPKINM', 'DVB9GGYBU2TQYKH', '74A5YIWX4Q937X9', NULL, NULL, NULL, 'HWlPIwG3Jj5', 'Local', 'Hexagonal Screw', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(631, '6384483477', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'QOPNT6N7RN8JE8H', NULL, NULL, NULL, 'Dt48lH0xTqS', 'Local', 'Hexisol 200ml', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(632, '1278299757', NULL, '2PURPOP1ACPKINM', 'JUKRRNVHG6LOEUR', 'LA8S83HCY1A31Y3', NULL, NULL, NULL, '4pMwSEBtUZ2', 'Local', 'High Pressure Pipe (3/8 x 20L)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(633, '3662497162', NULL, '2PURPOP1ACPKINM', 'JUKRRNVHG6LOEUR', 'WXPZ1SJVSP1GWIA', NULL, NULL, NULL, 'oiWwk2LBRG0', 'Local', 'High Pressure Pipe 4\'', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(634, '1634596419', NULL, '2PURPOP1ACPKINM', 'JUKRRNVHG6LOEUR', 'TRNTHAARSTZYS7O', NULL, NULL, NULL, 'QWbqYyDguhO', 'Local', 'High Pressure Vibrator Pipe (APS)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(635, '2587287334', NULL, '1DFJOUKTOQ28QOI', '8SM6ZUETPZKZHVB', 'GS5QJ5A2EE7EKEU', NULL, NULL, NULL, 'lJhmM2TpKOg', 'Local', 'High Pressure/Low Pressure Gauge', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(636, '1848258422', NULL, '2PURPOP1ACPKINM', 'US9B6OUBZYA62E8', 'EXZX9NDUWS34T1I', NULL, NULL, NULL, '93wQZbrAlJP', 'Local', 'Hino Filter BF-143', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(637, '9637241134', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'F6KNWVG34UAFCWM', NULL, NULL, NULL, 'uKCqwWDj7hc', 'Local', 'Histacin', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(638, '3131538868', NULL, 'EB886WD44XASJTL', 'B29KZMCXGOPBJG3', 'RV93YRCM3XDTWJ3', NULL, NULL, NULL, 'WkL6zjudHO1', 'Local', 'Hole Punch (Big)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(639, '3877665288', NULL, 'EB886WD44XASJTL', 'B29KZMCXGOPBJG3', 'A8WOXNDVHWEIR1B', NULL, NULL, NULL, 'Zx6eCRrQG5m', 'Local', 'Hole Punch 17mm', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(640, '6231494665', NULL, 'EB886WD44XASJTL', 'B29KZMCXGOPBJG3', 'LSACP9DHM5MKSJA', NULL, NULL, NULL, 'pXEte5niPVK', 'Local', 'Hole Punch Set (Big)', NULL, NULL, 'Set', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(641, '6875551165', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', '4VZ9A2VF6JKVO5U', NULL, NULL, NULL, 'dZKP3oscHXV', 'Local', 'Horn', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(642, '9494157162', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'CHEH9QSZFXI8QTQ', NULL, NULL, NULL, 'czh8UXHKM2Z', 'Local', 'Horn 24V', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(643, '9919535513', NULL, 'WPHNEVLXT34GIFJ', 'TNXPU7SP8EHWZ62', 'D6U66JBRPZVHEDW', NULL, '144-0367', NULL, '144-0367', 'Local', 'Hose Clamp (144-0367)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(644, '4985297673', NULL, 'WPHNEVLXT34GIFJ', 'TNXPU7SP8EHWZ62', 'H6UKB8DSATH2E18', NULL, '8T-4984', NULL, '8T-4984', 'Local', 'Hose Clamp (8T-4984)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(645, '3198229755', NULL, '2PURPOP1ACPKINM', 'JUKRRNVHG6LOEUR', 'WSJESQJ5FQETN9U', NULL, NULL, NULL, 'MpdVDkYZ1cw', 'Local', 'Hose Pipe', NULL, NULL, 'Ft', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(646, '3873497143', NULL, '2PURPOP1ACPKINM', 'JUKRRNVHG6LOEUR', 'UG2FKSNHP6LI97Z', NULL, NULL, NULL, 'u8rbWIH4Fgd', 'Local', 'Hose Pipe (ID-0.75\")', NULL, NULL, 'Ft', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(647, '1528753689', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', '7VMJRWEI1ULBZ8N', NULL, NULL, NULL, '1DE2Al0wYba', 'Local', 'Hot Water Bag', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(648, '4627861943', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'MUQXXEUJ82DHVYW', NULL, NULL, NULL, 'dI76CsRpLXF', 'Local', 'Hotpot (Medium)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(649, '1589954253', NULL, 'EB886WD44XASJTL', 'B29KZMCXGOPBJG3', 'TXLRXBXRYG7PDVD', NULL, NULL, NULL, 'f7w8Lrb1O9Z', 'Local', 'HP 63 Printer Cartridge (Black)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(650, '9633326814', NULL, 'EB886WD44XASJTL', 'B29KZMCXGOPBJG3', 'MFIZ9E1BZVUVM2J', NULL, NULL, NULL, 'XCKBLW8j2HZ', 'Local', 'HP 63 Printer Cartridge (Black)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(651, '8637841437', NULL, 'EB886WD44XASJTL', 'B29KZMCXGOPBJG3', 'AV7CVNTYKCAN9B9', NULL, NULL, NULL, '6TWsMR9FQNP', 'Local', 'HP 63 Printer Cartridge (Black)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(652, '4419443475', NULL, 'EB886WD44XASJTL', 'B29KZMCXGOPBJG3', 'FLLWQFH7XIQHVYA', NULL, NULL, NULL, 'QGfPqBhV9Ne', 'Local', 'HP 65 Printer Cartridge (Black)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(653, '7596578815', NULL, 'EB886WD44XASJTL', 'B29KZMCXGOPBJG3', 'FJPE5PFM4Q1F7CB', NULL, NULL, NULL, 'dZMl7wORihP', 'Local', 'HP 65 Printer Cartridge (Black)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(654, '1494279977', NULL, 'EB886WD44XASJTL', 'B29KZMCXGOPBJG3', 'LRMAEWR5ZZXUTLA', NULL, NULL, NULL, '2XPHxwYj36e', 'Local', 'HP 65 Printer Cartridge (Black)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(655, '5686517543', NULL, 'PQ4XVDW96CL7QQZ', 'PZNECLLN1S7KLAT', 'RSSNR6UYZGYTPOZ', NULL, NULL, NULL, 'dYCfaRMZST0', 'Local', 'Hydraulic Band (ID-1.5\", OD-2\")', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(656, '2234258799', NULL, '2PURPOP1ACPKINM', 'US9B6OUBZYA62E8', 'ZZTUIXYL5LHTSWN', NULL, 'HF35222', NULL, 'HF35222', 'Local', 'Hydraulic Filter HF35222 (Fleetguard)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(657, '9152642857', NULL, '2PURPOP1ACPKINM', 'US9B6OUBZYA62E8', '3RCZU2EOTDQ28WK', NULL, 'HF35222', NULL, 'HF35222', 'Local', 'Hydraulic Filter HF35222 (Fleetguard)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(658, '9692374625', NULL, '2PURPOP1ACPKINM', 'JUKRRNVHG6LOEUR', 'QAS1C2X3FHA13QV', NULL, NULL, NULL, 'pnbysCwMWUd', 'Local', 'Hydraulic Pipe', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(659, '1121383965', NULL, '2PURPOP1ACPKINM', 'JUKRRNVHG6LOEUR', 'LE9KBQ9PL5TDHDF', NULL, NULL, NULL, '8rVO09b3Wc2', 'Local', 'Hydraulic Pipe', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(660, '1524592962', NULL, '2PURPOP1ACPKINM', 'JUKRRNVHG6LOEUR', '5QHTFX9KL47OI19', NULL, NULL, NULL, 'uy98OXTN74U', 'Local', 'Hydraulic Pipe (0.25\" x 6\')', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(661, '7243584653', NULL, '2PURPOP1ACPKINM', 'JUKRRNVHG6LOEUR', 'SYNPFDLBWX9SE41', NULL, NULL, NULL, 'HJpolmczL89', 'Local', 'Hydraulic Pipe (0.5\") & Hydraulic Pipe (0.75\")', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(662, '1564577353', NULL, '2PURPOP1ACPKINM', 'JUKRRNVHG6LOEUR', 'D2IYIZI3ADOC583', NULL, NULL, NULL, 'v8XaKolAeVy', 'Local', 'Hydraulic Pipe (APS)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(663, '5548986927', NULL, '2PURPOP1ACPKINM', 'JUKRRNVHG6LOEUR', '7K8UHLWWNGBSRE8', NULL, NULL, NULL, 'euo60ROtL7J', 'Local', 'Hydraulic Pipe (L-4\') (APS)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(664, '5825313255', NULL, '2PURPOP1ACPKINM', 'JUKRRNVHG6LOEUR', 'T76TQBSLAINLCAR', NULL, NULL, NULL, '87XSOzUhPp6', 'Local', 'Hydraulic Pipe (Steel Wire Hose Pipe)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(665, '6888399424', NULL, '2PURPOP1ACPKINM', 'JUKRRNVHG6LOEUR', 'SUUOL4V6O9C43CR', NULL, NULL, NULL, 'oHfiVO79d4B', 'Local', 'Hydraulic Pipe 0.25\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(666, '5866735785', NULL, '2PURPOP1ACPKINM', 'JUKRRNVHG6LOEUR', 'H6BKRSFBMKQGK84', NULL, NULL, NULL, 'k4Tx9JbiFEU', 'Local', 'Hydraulic Pipe 0.375 x 12\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(667, '8585329177', NULL, '2PURPOP1ACPKINM', 'JUKRRNVHG6LOEUR', 'XYC3DN5PHFDZJTJ', NULL, NULL, NULL, 'TWSMeIEnAo8', 'Local', 'Hydraulic Pipe 0.5 x 32\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(668, '5272227226', NULL, '2PURPOP1ACPKINM', 'JUKRRNVHG6LOEUR', 'MNQJDH375GQ9WNS', NULL, NULL, NULL, 'HmqiW7uOJDU', 'Local', 'Hydraulic Pipe 0.5 x 42\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(669, '2338671224', NULL, '2PURPOP1ACPKINM', 'JUKRRNVHG6LOEUR', 'HI7UUFAJZPSUTS4', NULL, NULL, NULL, 'C7tHcdERKNf', 'Local', 'Hydraulic Pipe 0.5\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(670, '3522393316', NULL, '2PURPOP1ACPKINM', 'JUKRRNVHG6LOEUR', 'QPD4C38PBW91NYN', NULL, NULL, NULL, 'AkFmGpZxcOw', 'Local', 'Hydraulic Pipe 1\"', NULL, NULL, 'Ft', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(671, '4275366232', NULL, '2PURPOP1ACPKINM', '87G3NU8TY4J2W25', 'C3YKCXOQ3CZ3JE5', NULL, NULL, NULL, 'DU2o4PFYG01', 'Local', 'Hydraulic Ram', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(672, '7315456796', NULL, '2PURPOP1ACPKINM', 'US9B6OUBZYA62E8', 'ZIUTYDWSK2S6RAE', NULL, 'HF6243', NULL, 'HF6243', 'Import', 'Hydraulic Return Filter HF6243 (Fleetguard)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(673, '8245954439', NULL, '2PURPOP1ACPKINM', 'US9B6OUBZYA62E8', 'MRC3BP7Z5SI3M96', NULL, 'HF65222', NULL, 'HF65222', 'Local', 'Hydraulic Return Filter HF65222', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(674, '7285334624', NULL, 'PQ4XVDW96CL7QQZ', 'PZNECLLN1S7KLAT', 'WHKS4A3O8UED3YX', NULL, NULL, NULL, 'fwFWPJaE6s5', 'Local', 'Hydraulic Socket (27 x 35mm)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(675, '4528367589', NULL, 'PQ4XVDW96CL7QQZ', 'PZNECLLN1S7KLAT', 'DZSBCJ6UVSRKGIV', NULL, NULL, NULL, 'MuKRW7Gzbyj', 'Local', 'Hydraulic Socket (30 x 42 x 56mm)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(676, '9162153825', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'MIPRFYKNZT62SF4', NULL, NULL, NULL, 'b4ErSAoZdQc', 'Local', 'Hydrogen Peroxide (100ml)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(677, '7437899388', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', '5F72GDNBIZREJC6', NULL, NULL, NULL, 'P3RXQcM2uqG', 'Local', 'Hydrogen Peroxide (100ml)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(678, '4142397918', NULL, '1DFJOUKTOQ28QOI', '8SM6ZUETPZKZHVB', '6U1VTTNKWQFRLW4', NULL, NULL, NULL, 'hA0SzgfUN8k', 'Local', 'Hydrometer', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(679, '4465617832', NULL, '1DFJOUKTOQ28QOI', '8SM6ZUETPZKZHVB', 'YKHQB3IGVVAKDZG', NULL, NULL, NULL, '6OJjBdN3v8y', 'Local', 'Hydrometer', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(680, '7112458135', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'EM7V4UOJN5HA4SC', NULL, NULL, NULL, 'J6oEMQTB8xu', 'Local', 'Imotil', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(681, '3946228353', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'IWRN1BIX2E15W7G', NULL, NULL, NULL, 'sNHE1dGUy3S', 'Local', 'Imotil', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(682, '2772692733', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', '38KRKS6LGXD3511', NULL, NULL, NULL, 'PfZHW5D43db', 'Local', 'Induction Blower Motor 1 HP RPM 1450 Voltage 230', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(683, '3488979575', NULL, 'WPHNEVLXT34GIFJ', 'TNXPU7SP8EHWZ62', 'RCE8UI243BU8D28', NULL, '3047963', NULL, '3047963', 'Local', 'Injector Barrel & Plunger (3047963)', NULL, NULL, 'Set', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(684, '1585478531', NULL, '2PURPOP1ACPKINM', 'EBZFU3KQHCL2IS6', 'LAIVLF23IRRXGIX', NULL, NULL, NULL, 'kedVA4ra5oQ', 'Local', 'Injector O\'Ring Seal', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(685, '8935286891', NULL, '2PURPOP1ACPKINM', 'EBZFU3KQHCL2IS6', 'NYY4NSFD7SYUNR8', NULL, NULL, NULL, 'dUA9CMkFQ2v', 'Local', 'Injector O\'Ring Seal', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(686, '3674249573', NULL, '2PURPOP1ACPKINM', 'EBZFU3KQHCL2IS6', '3YERSSL65OOF3X3', NULL, '193736', NULL, '193736', 'Local', 'Injector O\'Ring Seal (193736)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(687, '4956636962', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'JL9ZOIBEOPSMUZU', NULL, NULL, NULL, 'TgeXqtDxvM3', 'Local', 'Ink Refill', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(688, '9748892881', NULL, 'WPHNEVLXT34GIFJ', 'TNXPU7SP8EHWZ62', 'BJ6TE1IM5CD55JO', NULL, NULL, NULL, 'Md1vq2cR8Ds', 'Local', 'Inlet Engine Valve', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(689, '2156338566', NULL, 'PQ4XVDW96CL7QQZ', 'B4IT4AZ9VY5PBXP', '7DD56XLJLACGMXR', NULL, NULL, NULL, 'NLkeZnMtmD9', 'Local', 'Insulation Rubber', NULL, NULL, 'Lbs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(690, '6489397811', NULL, 'PQ4XVDW96CL7QQZ', 'B4IT4AZ9VY5PBXP', '1Q8NWPBOQ48T8NS', NULL, NULL, NULL, 'cn3UsVIheG2', 'Local', 'Insulation Rubber (3mm x 3.5\' x 5\')', NULL, NULL, 'Lbs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(691, '5993428932', NULL, 'PQ4XVDW96CL7QQZ', 'B4IT4AZ9VY5PBXP', 'BLJANZ8XBGQMM1W', NULL, NULL, NULL, 'YQ6q09EfPLw', 'Local', 'Insulation Rubber Sheet (3.5\' x 4\')', NULL, NULL, 'Lbs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(692, '3953519978', NULL, 'PQ4XVDW96CL7QQZ', 'B4IT4AZ9VY5PBXP', '9DDKDGU97Q5YIGA', NULL, NULL, NULL, 'lO4HFkvPDnr', 'Local', 'Insulation Rubber Sheet 3mm', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(693, '2311941376', NULL, 'WPHNEVLXT34GIFJ', 'TNXPU7SP8EHWZ62', 'TWTTLJONYQHU68R', NULL, '3803512', NULL, '3803512', 'Local', 'Intake Valve Exhaust (3803512)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(694, '3851615986', NULL, 'WPHNEVLXT34GIFJ', 'TNXPU7SP8EHWZ62', '8LRIT8SUA69V3WT', NULL, '200354', NULL, '200354', 'Local', 'Intake Valve Insert (200354)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(695, '2671143295', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', '6K33AM26OJK975M', NULL, NULL, NULL, 'dSCk71s4KJy', 'Local', 'Iron Cement', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(696, '7575756541', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'GMHMAPIBIMIAJIC', NULL, NULL, NULL, 'XuOm7rgjkN4', 'Local', 'IV Saline (Cholera 1000ml)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(697, '2482318584', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', '6RLXQN49C72XNGE', NULL, NULL, NULL, 'lP8f4xWDrQk', 'Local', 'Jelly 500g', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(698, '5866725828', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'BZVDKR5NUUWR2JU', NULL, NULL, NULL, 'Ys3xWulECBU', 'Local', 'Jet Powder', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(699, '2985983741', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', '5EDZQH31DY5679Q', NULL, NULL, NULL, 'NeuE7rGtpoC', 'Local', 'Joytrip', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(700, '2628961121', NULL, '2PURPOP1ACPKINM', 'AA3R7TZFOKO3ZQD', 'N26BO64OHT1SMN5', NULL, NULL, NULL, 'xyFPhJ8EcuG', 'Local', 'Jumbo Clamp (86-91) (Heavy Duty)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(701, '4746329668', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'ZP42LIAXR44LFE8', NULL, NULL, NULL, 'VBYOfJbk6Pw', 'Local', 'Jute Bag', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(702, '9365585427', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'DMT8BNUH69NOFGY', NULL, NULL, NULL, 'E1l9HPWw6mB', 'Local', 'Jute Bag', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(703, '7391598117', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'DAEMU1LL4QBTJ7H', NULL, NULL, NULL, '5bZ9KGSz14C', 'Local', 'Jute String', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(704, '6479746228', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'CS1ALNBTB6UI3FY', NULL, NULL, NULL, 'G7dsxo5mIFh', 'Local', 'Jute Towel', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(705, '3274294923', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'RKSR2BGESF862T8', NULL, NULL, NULL, 'iF2boIje9NW', 'Local', 'Jute Twine (Shutly)', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(706, '8135862541', NULL, 'WPHNEVLXT34GIFJ', 'TNXPU7SP8EHWZ62', 'UN7ZFQ6M9GRO3WO', NULL, NULL, NULL, '1HqGldh6jNf', 'Local', 'Kit Cylinder Liner', NULL, NULL, 'Set', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(707, '6168652755', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', '29ZMEWGPNO3B9ZC', NULL, NULL, NULL, '07W9gCSPzlJ', 'Local', 'Kitchen Room Blower 12\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(708, '4692785895', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', '6C59TCI5JDI1EPL', NULL, NULL, NULL, 'NTDznXYLSjt', 'Local', 'Kokin Suta', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(709, '6225122878', NULL, '2PURPOP1ACPKINM', 'HLE72FWD8USNC5Y', '1HLMXSBI7VZR9F4', NULL, NULL, NULL, 'iIbJDVFvukr', 'Local', 'Kolshi Shackle 20mm', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(710, '7815459339', NULL, '2PURPOP1ACPKINM', 'HLE72FWD8USNC5Y', 'M9HOOGV26T3O9W2', NULL, NULL, NULL, 'OxsDV8N9Zbi', 'Local', 'Kolshi Shackle 22mm', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(711, '7636958416', NULL, '2PURPOP1ACPKINM', 'HLE72FWD8USNC5Y', 'L4MZAQY43F829F3', NULL, NULL, NULL, 'oZn47jhvY1d', 'Local', 'Kolshi Shackle 28mm', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(712, '3382898187', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'WLAPZ2KRCGS5P1B', NULL, NULL, NULL, 'nsSgGIx5a8C', 'Local', 'Korai (Big)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(713, '1712674472', NULL, 'WPHNEVLXT34GIFJ', 'TNXPU7SP8EHWZ62', 'E9UX5YHP4H7OQVG', NULL, '3179664', NULL, '3179664', 'Local', 'KTA-380 Piston Cooling Nozzle (3179664)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(714, '4929876115', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', '5KS9OHD22RBPXT1', NULL, NULL, NULL, 'sEVFvwtDSBI', 'Local', 'Lalib Powder', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(715, '6725785463', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'N2I42VP9XSMIJCZ', NULL, NULL, NULL, 'inhxvTkIz2E', 'Local', 'Laser Light Battery', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1);
INSERT INTO `product_information` (`id`, `product_id`, `product_id_two`, `category_id`, `sub_cat_id`, `brand_id`, `country`, `parts`, `tag`, `sku`, `ptype_id`, `product_name`, `price`, `re_order_level`, `unit`, `tax`, `serial_no`, `product_model`, `product_details`, `image`, `status`) VALUES
(716, '9692565416', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'VK4O7WS66WKUKZJ', NULL, NULL, NULL, 'TYHQ5SpPKcC', 'Local', 'Leave Form', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(717, '5754522498', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'XZFBWENXHHSSDIF', NULL, NULL, NULL, 'frcyqgm3VhX', 'Local', 'Leave Form', NULL, NULL, 'Pg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(718, '7343612986', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'Q8EWS9OWB333A9J', NULL, NULL, NULL, 'iw5Oj8lg04J', 'Local', 'LED Bulb 150W', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(719, '7564667133', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'E3ROYFPA5VU3MGH', NULL, NULL, NULL, 'lVePLB6GDhH', 'Local', 'LED Bulb 15W', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(720, '9317547257', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'BPSBI4Q96KT69IA', NULL, NULL, NULL, 'oHdFqcDGZm1', 'Local', 'LED Bulb 15W', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(721, '1578125783', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'HB27WGCWQVP5F11', NULL, NULL, NULL, 'weoxLWvzp74', 'Local', 'LED Bulb 18W', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(722, '7542114347', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', '9PNIFMODQ524Q8D', NULL, NULL, NULL, 'H59rta8ycVk', 'Local', 'LED Bulb 18W', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(723, '8389694842', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'L1NW7DW51V6X9W9', NULL, NULL, NULL, 'VoP8lfZwNqj', 'Local', 'LED Bulb 18W', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(724, '6889874877', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'S6DQW3N53WBN18Z', NULL, NULL, NULL, '0WNsrPgaB5L', 'Local', 'LED Bulb 20W', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(725, '7181189481', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'QA5K79W1WJGEBEG', NULL, NULL, NULL, 'uzKhW6SmEvX', 'Local', 'LED Bulb 20W', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(726, '6336595673', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', '7FNGQQG2AIV8DTO', NULL, NULL, NULL, 'p5bAn3TisMJ', 'Local', 'LED Bulb 25W', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(727, '3386467236', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'YM8J6WQ9MO1Q2PW', NULL, NULL, NULL, 'F3HtrDaN2GU', 'Local', 'LED Bulb 30W', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(728, '6562277175', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'CLVZN366RR4C1NJ', NULL, NULL, NULL, 'SgdrwF5N62M', 'Local', 'LED Bulb 32W', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(729, '6266622855', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'CYL95G9ZVYXHRYP', NULL, NULL, NULL, '1OZobS7Rmgj', 'Local', 'LED Bulb 5W (Red)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(730, '3597833222', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', '5O1ISRYXGBM9BUY', NULL, NULL, NULL, 'Jhve40FIwls', 'Local', 'LED Bulb 7W 24V', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(731, '2332357914', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', '3EJPDD3XCP5SKXW', NULL, NULL, NULL, 'GHBMObijXUx', 'Local', 'LED Bulb 7W 24V', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(732, '1942292637', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'ARA6QRY7IR74J4H', NULL, NULL, NULL, 'jgDe1uxM0Ia', 'Local', 'LED Bulb 8W', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(733, '1546313136', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'CZYZ2FSVZ97TW6V', NULL, NULL, NULL, 'xbwfdUrS20j', 'Local', 'LED Bulb 9W', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(734, '8322752781', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'OEINE2FCRSYBQRF', NULL, NULL, NULL, 'oYHLlicZTp5', 'Local', 'LED Energy Bulb 12W', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(735, '4533688943', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'CGVTY4C71EHMOI7', NULL, NULL, NULL, '3GvfXIYbecu', 'Local', 'LED Energy Bulb 12W', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(736, '1726655277', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', '9ELEJ48M1WCQ82C', NULL, NULL, NULL, 'Bj3XPqzxWyN', 'Local', 'LED Energy Bulb 14W', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(737, '8919218946', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', '7LXJX4OAKEF11PE', NULL, NULL, NULL, 'KBaq5hV7Pn8', 'Local', 'LED Flood Light 100W', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(738, '1163348521', NULL, 'Y2KK6KNJQIWD23Z', 'WLR1LOHS5JONLTJ', 'NY8W1VGEU6NXIN3', NULL, NULL, NULL, 'lDjZWLP8dCo', 'Local', 'Life Buoy Repairing, Painting, & Vessel Name', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(739, '8267938887', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'AWQHTUGJZO6NK1W', NULL, NULL, NULL, 'RJa45LXnCIS', 'Local', 'Life Raft', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(740, '5366736167', NULL, 'Y2KK6KNJQIWD23Z', 'WLR1LOHS5JONLTJ', 'RU1A2ATDEBBSOHH', NULL, NULL, NULL, 'eAFEofMXw62', 'Local', 'Life Raft Servicing', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(741, '1815518684', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', '5HYAEHIA8SZ6YON', NULL, NULL, NULL, 'Krn4oOXwUvi', 'Local', 'Lifebuoy Handwash Refill', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(742, '9192935414', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'V9W28IT685646OY', NULL, NULL, NULL, '4EMotJaKOFv', 'Local', 'Lifebuoy Soap', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(743, '4463562789', NULL, 'MH35OWBFMR35ILN', 'XMAG1UXN247Z1FF', 'DGSMSSTACR2J355', NULL, NULL, NULL, '8LEuptflXSV', 'Local', 'Light Gray Paint', NULL, NULL, 'Gallon', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(744, '1693772534', NULL, 'WPHNEVLXT34GIFJ', 'TNXPU7SP8EHWZ62', 'W2PDK666PYRRXX1', NULL, '3801826', NULL, '3801826', 'Local', 'Liner Kit (NT855) (3801826)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(745, '2382637632', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'Z1SS41BKITLIGEL', NULL, NULL, NULL, 'p1iGMa0DYnI', 'Local', 'Liquid Saline Bag', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(746, '9234994793', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', '4NARBAOW7KJKX7S', NULL, NULL, NULL, 'WtDv1qHOQfU', 'Local', 'Liquid Saline Set', NULL, NULL, 'Set', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(747, '9533121224', NULL, 'EB886WD44XASJTL', 'B29KZMCXGOPBJG3', '78ME8WAMK3FN9S9', NULL, NULL, NULL, 'zdu1OhVb6xr', 'Local', 'Lock & Key', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(748, '7793945594', NULL, 'EB886WD44XASJTL', 'B29KZMCXGOPBJG3', 'ZXZEBH57RORLSHW', NULL, NULL, NULL, '8QxwBdPi9so', 'Local', 'Lock (Big)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(749, '5916333846', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', '1GTTO3TMNDPTIZ6', NULL, NULL, NULL, 'altup7dKMRI', 'Local', 'Lock Tite Gum', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(750, '7438936534', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', '7XZFFXVSFCOG5WF', NULL, NULL, NULL, 'yo1el8b4LGE', 'Local', 'Log Book Photocopy', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(751, '4116464313', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'SJI1EYMSF5RV3AI', NULL, NULL, NULL, 'wHpXs2Kv4oy', 'Local', 'Long Handle Brush', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(752, '6417342419', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', '1C1ZOBJVQOJYPT4', NULL, NULL, NULL, '8AnEuoqrXLl', 'Local', 'Long Handle Brush', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(753, '3375728198', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'NJ136L7J3R8IIAJ', NULL, NULL, NULL, '39K2JFtvIdw', 'Local', 'Long Reset Handle', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(754, '1437418731', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'SCP2ZQ41LVHJERW', NULL, NULL, NULL, 'yVHZzqWE3l1', 'Local', 'Low Pressure Cut Out', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(755, '1989789512', NULL, '2PURPOP1ACPKINM', 'US9B6OUBZYA62E8', '3P8Y97QCQTSON8O', NULL, NULL, NULL, 'gOVfncLC3NX', 'Local', 'Lub. Oil Filter (Local) (8\"? 5.5\" ? 10\")', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(756, '5541923828', NULL, '2PURPOP1ACPKINM', 'US9B6OUBZYA62E8', '4PU9N24AHZYSXZ6', NULL, '1R-0756', NULL, '1R-0756', 'Local', 'Lub. Oil Filter 1R-0756 (CAT)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(757, '9911336855', NULL, '2PURPOP1ACPKINM', 'US9B6OUBZYA62E8', 'NX6KWOPKRY4BIXQ', NULL, '1R-1808', NULL, '1R-1808', 'Local', 'Lub. Oil Filter 1R-1808 (CAT)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(758, '3133298417', NULL, '2PURPOP1ACPKINM', 'US9B6OUBZYA62E8', 'NDVEJV2OHNSF7VF', NULL, '1R-1808', NULL, '1R-1808', 'Local', 'Lub. Oil Filter 1R-1808 (CAT)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(759, '7752425877', NULL, '2PURPOP1ACPKINM', 'US9B6OUBZYA62E8', 'Y8GL4UN7MCTWEEP', NULL, 'BM425', NULL, 'BM425', 'Local', 'Lub. Oil Filter BM425', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(760, '8591357219', NULL, '2PURPOP1ACPKINM', 'US9B6OUBZYA62E8', '9X4TFNAC55A9WRG', NULL, 'BM425', NULL, 'BM425', 'Local', 'Lub. Oil Filter BM425', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(761, '2948612558', NULL, '2PURPOP1ACPKINM', 'US9B6OUBZYA62E8', 'IKFYSSC3ANPIAJC', NULL, 'LF425', NULL, 'LF425', 'Local', 'Lub. Oil Filter LF425 (Hastings)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(762, '2559753893', NULL, '2PURPOP1ACPKINM', 'US9B6OUBZYA62E8', 'IB26SHEPBC5CCBO', NULL, 'LF670', NULL, 'LF670', 'Local', 'Lub. Oil Filter LF670 (Fleetguard)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(763, '5671174279', NULL, '2PURPOP1ACPKINM', 'US9B6OUBZYA62E8', 'F72AWZI8CT6JMN8', NULL, 'LF670', NULL, 'LF670', 'Local', 'Lub. Oil Filter LF670 (Fleetguard)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(764, '1118648774', NULL, '2PURPOP1ACPKINM', 'US9B6OUBZYA62E8', '8RJ8BTZGLANM1R9', NULL, 'LF670', NULL, 'LF670', 'Local', 'Lub. Oil Filter LF670 (Fleetguard)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(765, '7426681672', NULL, '2PURPOP1ACPKINM', 'US9B6OUBZYA62E8', 'AKACDJCXDHEJ5RE', NULL, 'LF670', NULL, 'LF670', 'Local', 'Lub. Oil Filter LF670 (Fleetguard)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(766, '5697118689', NULL, '2PURPOP1ACPKINM', 'US9B6OUBZYA62E8', 'VWOYAU2AK7QMNLV', NULL, 'LF670', NULL, 'LF670', 'Local', 'Lub. Oil Filter LF670 (Fleetguard)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(767, '8611294547', NULL, '2PURPOP1ACPKINM', 'US9B6OUBZYA62E8', 'PXX7KQEI5DY8BRS', NULL, 'LF670', NULL, 'LF670', 'Local', 'Lub. Oil Filter LF670 (Fleetguard)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(768, '9453676256', NULL, '2PURPOP1ACPKINM', 'US9B6OUBZYA62E8', 'S7UNGJSDH2KZ9T8', NULL, 'LF670', NULL, 'LF670', 'Local', 'Lub. Oil Filter LF670 (Fleetguard)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(769, '4715182921', NULL, '2PURPOP1ACPKINM', 'US9B6OUBZYA62E8', 'VNU63NIWCPGI8P6', NULL, 'LF777', NULL, 'LF777', 'Local', 'Lub. Oil Filter LF777 (Fleetguard)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(770, '6536136285', NULL, '2PURPOP1ACPKINM', 'US9B6OUBZYA62E8', '8IPIGIUDX8YG9AJ', NULL, 'LF777', NULL, 'LF777', 'Local', 'Lub. Oil Filter LF777 (Fleetguard)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(771, '6548976241', NULL, '2PURPOP1ACPKINM', 'US9B6OUBZYA62E8', 'KU64BGJX4JKDWVT', NULL, 'LF777', NULL, 'LF777', 'Local', 'Lub. Oil Filter LF777 (Fleetguard)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(772, '3858154391', NULL, '2PURPOP1ACPKINM', 'US9B6OUBZYA62E8', 'Y1EJNSDSS5PWZ34', NULL, 'LF777', NULL, 'LF777', 'Local', 'Lub. Oil Filter LF777 (Fleetguard)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(773, '1938718119', NULL, '2PURPOP1ACPKINM', 'US9B6OUBZYA62E8', 'TAWLD7V8FFXVBB1', NULL, 'LF777', NULL, 'LF777', 'Local', 'Lub. Oil Filter LF777 (Fleetguard)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(774, '5866387683', NULL, '2PURPOP1ACPKINM', 'US9B6OUBZYA62E8', '9F3W3VYHO7IXP5A', NULL, 'O-1301', NULL, 'O-1301', 'Local', 'Lub. Oil Filter O-1301 (Sakura)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(775, '6762975686', NULL, '2PURPOP1ACPKINM', 'US9B6OUBZYA62E8', 'OVUK4LGUHA2R1U3', NULL, 'O-1305', NULL, 'O-1305', 'Local', 'Lub. Oil Filter O-1305 (Sakura)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(776, '9838442219', NULL, '2PURPOP1ACPKINM', 'US9B6OUBZYA62E8', '3NQHP7BRKS9UT9L', NULL, 'O-1305', NULL, 'O-1305', 'Local', 'Lub. Oil Filter O-1305 (Sakura)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(777, '6394816781', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', '6ICXUVK1RWD9DXN', NULL, NULL, NULL, 'rfbjNVLgwZn', 'Local', 'Lub. Oil Gun', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(778, '4259782779', NULL, '2PURPOP1ACPKINM', 'EBZFU3KQHCL2IS6', 'C4ZTNCWXPNJN52M', NULL, NULL, NULL, 'pf697xgKnBJ', 'Local', 'Lub. Oil Header O\'Ring Seal', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(779, '1149437911', NULL, '1DFJOUKTOQ28QOI', '8SM6ZUETPZKZHVB', 'J7IUI3Y9SX92A8I', NULL, NULL, NULL, 'L4i36e5w09l', 'Local', 'Lub. Oil Pressure Gauge (Meter)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(780, '3155868996', NULL, '1DFJOUKTOQ28QOI', '8SM6ZUETPZKZHVB', 'OXJ1SRVTHQWCGHW', NULL, NULL, NULL, 'KNQm1uhotip', 'Local', 'Lub. Oil Pressure Meter w/ Nipple', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(781, '8552642734', NULL, '1DFJOUKTOQ28QOI', '8SM6ZUETPZKZHVB', 'LMQMDP49NNQK2A2', NULL, NULL, NULL, 'zQohcuZONIE', 'Import', 'Lub. Oil Pressure Meter w/ Sensor', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(782, '8615925125', NULL, '2PURPOP1ACPKINM', 'JUKRRNVHG6LOEUR', 'XQ7Z7XGDOUTZVNU', NULL, NULL, NULL, 'TQf8A2WnecL', 'Local', 'Lub. Oil Pressure Pipe (0.25\" x 42\")', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(783, '1776442251', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', '5CNRCXX6EDIRSIJ', NULL, NULL, NULL, '5O8ZlIGFd3C', 'Local', 'Lux Soap', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(784, '4124467628', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'L32UUCKAXHTTR5M', NULL, NULL, NULL, 'C2lPHDU461n', 'Local', 'Lux-100', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(785, '6778327255', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'K6GYFKV1D3O2Q8L', NULL, NULL, NULL, 'uROlzxTN5sZ', 'Local', 'M/E Log Book Photocopy', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(786, '9389181368', NULL, 'Y2KK6KNJQIWD23Z', 'WLR1LOHS5JONLTJ', 'FYKKGC7VXDNRMQQ', NULL, NULL, NULL, 'rokOD8UX6Ah', 'Local', 'M/E Lub. Oil Pressure Meter Line Pipe Repair', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(787, '1959239749', NULL, 'D3ITGWOF4UE1XH5', 'WXIC3HA35CQKBDW', 'EHTTQFXOZD9J97A', NULL, NULL, NULL, 'UiXhRNtyIOm', 'Local', 'Machine Grease (HTC Heat Proof)', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(788, '5685717192', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'UEYGLHVWEDEOU93', NULL, 'SN-12', NULL, 'SN-12', 'Local', 'Magnetic Contactor SN-12', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(789, '7981331688', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'JN6BBC6YLSAIGNP', NULL, 'SN-35', NULL, 'SN-35', 'Local', 'Magnetic Contactor SN-35', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(790, '3754539398', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'SC7IGK3TZUADBJ3', NULL, NULL, NULL, 'azLObsN2CKG', 'Local', 'Magnifying Glass', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(791, '1294427617', NULL, 'WPHNEVLXT34GIFJ', 'TNXPU7SP8EHWZ62', 'BL9ZLKR61MRFXQC', NULL, '4073162', NULL, '4073162', 'Local', 'Main Bearing Set (Standard) (NT855) (4073162)', NULL, NULL, 'Pair', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(792, '7615645887', NULL, '2AAUOPF6HLC6PFD', 'JCJAXRURKLP2RTX', 'TG6HNB6BNFU8CRI', NULL, NULL, NULL, 'XnM23TyHohf', 'Local', 'Main Block U-Bolt', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(793, '3345796488', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'LRTP4C2PH5U43VU', NULL, NULL, NULL, 'y7UsBzkXSqP', 'Local', 'Main Engine Log Book Copy', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(794, '8432772882', NULL, '2PURPOP1ACPKINM', 'HLE72FWD8USNC5Y', 'OE6V4OVU9RTU671', NULL, NULL, NULL, 'wzikdN6Ea21', 'Local', 'Main Swivel 38mm', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(795, '7645583916', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', '3O2KQDG76SKDRZJ', NULL, NULL, NULL, 'vVmThCdbW5f', 'Local', 'Marine Binoculars', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(796, '4541424686', NULL, '4TQXLMLBLJPAQP1', '3DAABSCEK5CQYBM', 'JED5RUNQZB6ELHA', NULL, NULL, NULL, 'YgtyU9xzXpO', 'Local', 'Marking Twine (Thai)', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(797, '9426424282', NULL, '4TQXLMLBLJPAQP1', '3DAABSCEK5CQYBM', 'SJI9OGWYCR8965R', NULL, NULL, NULL, 'MZ2bA7w9n8R', 'Local', 'Marking Twine 2.0mm (Green) (PP)', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(798, '6929151739', NULL, '4TQXLMLBLJPAQP1', '3DAABSCEK5CQYBM', 'OVNTSMMMG6N6HZ6', NULL, NULL, NULL, 'XAyfEzhskub', 'Import', 'Marking Twine 2.0mm (Green) (PP)', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(799, '3854249283', NULL, '4TQXLMLBLJPAQP1', '3DAABSCEK5CQYBM', 'VB6TRL9V9AVKC4N', NULL, NULL, NULL, 'JRfTF9Y10o6', 'Local', 'Marking Twine 2.0mm (Green) (PP)', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(800, '5612857957', NULL, '4TQXLMLBLJPAQP1', '3DAABSCEK5CQYBM', 'N8F14GOEXIHDO57', NULL, NULL, NULL, 'OkNgTJvt5RB', 'Import', 'Marking Twine 2.0mm (PP)', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(801, '7832381599', NULL, '4TQXLMLBLJPAQP1', '3DAABSCEK5CQYBM', 'ZBFBBYQ6M66FNZN', NULL, NULL, NULL, 'zMSNLgAfHDu', 'Import', 'Marking Twine 2.0mm (Red) (PP)', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(802, '1583217487', NULL, '4TQXLMLBLJPAQP1', '3DAABSCEK5CQYBM', 'Q1OU4NSP29MHCNO', NULL, NULL, NULL, 'eTP2qZHwzJ9', 'Local', 'Marking Twine 2.0mm (Red) (PP)', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(803, '1133234677', NULL, '4TQXLMLBLJPAQP1', '3DAABSCEK5CQYBM', 'L8IJ1ECTO4DEWPW', NULL, NULL, NULL, 'PRBD36ISa0F', 'Import', 'Marking Twine 2.5mm', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(804, '1793124253', NULL, '4TQXLMLBLJPAQP1', '3DAABSCEK5CQYBM', 'ZHHQAQM8C9Z14DY', NULL, NULL, NULL, 'U3JpTt1j0FN', 'Local', 'Marking Twine 3.0mm (Green) (PP)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(805, '9651439983', NULL, 'EB886WD44XASJTL', 'B29KZMCXGOPBJG3', 'XDQWYJUI8PPLC99', NULL, NULL, NULL, 'bUflKG0PjB5', 'Local', 'Masking Tape', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(806, '2584925981', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', '21D79NBWIPYTZIZ', NULL, NULL, NULL, 'xHltbzqvkPU', 'Local', 'Mast Light Set DC', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(807, '9313618746', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', '4FHLMJD91HVK5LG', NULL, NULL, NULL, 'bTds9Gu0ENy', 'Local', 'Mattress (36 x 77)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(808, '2529326616', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'R2GHJXRK71A7XBH', NULL, NULL, NULL, 'Akz4RdSBOm1', 'Local', 'Mattress (6.5\' x 6\')', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(809, '8415855643', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'JDL3HWAVFTSEWAD', NULL, NULL, NULL, 'TQxolk0vSyZ', 'Local', 'Maxpro 20mg', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(810, '9912856425', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'TOJHPI982O3HS1N', NULL, NULL, NULL, 'klEIAfNMFoJ', 'Local', 'Maxpro 20mg', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(811, '2655479748', NULL, 'EB886WD44XASJTL', 'B29KZMCXGOPBJG3', '3QMZ2DQ63Y258NY', NULL, NULL, NULL, 'RreKEi9puZ3', 'Local', 'Measurement Tape', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(812, '4481867833', NULL, 'EB886WD44XASJTL', 'B29KZMCXGOPBJG3', 'OC3RBO53EHMU2JO', NULL, NULL, NULL, 'xXiAPd5jNSB', 'Local', 'Measurement Tape', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(813, '8724449739', NULL, 'EB886WD44XASJTL', 'B29KZMCXGOPBJG3', 'ROXTD6L9ZH9RC2F', NULL, NULL, NULL, 'yVJ1DdjGT60', 'Local', 'Measurement Tape (30m)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(814, '5447878874', NULL, 'EB886WD44XASJTL', 'B29KZMCXGOPBJG3', '3AF8W94F578XRZ9', NULL, NULL, NULL, 'hrIESBJybMU', 'Local', 'Measurement Tape (5m)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(815, '4793483788', NULL, 'D3ITGWOF4UE1XH5', 'WXIC3HA35CQKBDW', 'FYRZQGK7PECIGDO', NULL, NULL, NULL, 'zxCWlTbgwsj', 'Local', 'Mechanical Grease', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(816, '3189534648', NULL, 'D3ITGWOF4UE1XH5', 'WXIC3HA35CQKBDW', 'JMQZ4PDK7RDZ6FG', NULL, NULL, NULL, 'sPcEWSxyZIn', 'Local', 'Mechanical Grease', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(817, '2382922995', NULL, '2PURPOP1ACPKINM', 'EBZFU3KQHCL2IS6', 'CLX1UIVCKCWJV8D', NULL, NULL, NULL, '1DgEh0y2McY', 'Local', 'Mechanical Seal', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(818, '7945917423', NULL, '2PURPOP1ACPKINM', 'EBZFU3KQHCL2IS6', 'JDPS5QTEAJS5D9O', NULL, NULL, NULL, 'APZJaoWhkKg', 'Local', 'Mechanical Seal 1\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(819, '5645423293', NULL, '2PURPOP1ACPKINM', 'EBZFU3KQHCL2IS6', 'CZBQMQMPUOR2SEG', NULL, NULL, NULL, '0ISpJA2MZot', 'Local', 'Mechanical Seal 16mm', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(820, '3743585512', NULL, '2PURPOP1ACPKINM', 'EBZFU3KQHCL2IS6', 'NPXL6RUWCTCT5AN', NULL, NULL, NULL, 'xJPFVUQMwCZ', 'Local', 'Mechanical Seal 25mm', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(821, '9173215493', NULL, '2PURPOP1ACPKINM', 'EBZFU3KQHCL2IS6', 'JJS149A38IN4M8E', NULL, NULL, NULL, 'J4RkjdvrGCZ', 'Local', 'Mechanical Seal 25mm', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(822, '1839743372', NULL, '2PURPOP1ACPKINM', 'EBZFU3KQHCL2IS6', 'NCZOA4IFRRCUL37', NULL, NULL, NULL, 'FfBQWXpGTYN', 'Local', 'Mechanical Seal 25mm BM', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(823, '6698339234', NULL, '2PURPOP1ACPKINM', 'EBZFU3KQHCL2IS6', 'D6MYXB8848K3PZO', NULL, NULL, NULL, 'eDacVSGrms8', 'Local', 'Mechanical Seal for M/E', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(824, '4195446881', NULL, '2PURPOP1ACPKINM', 'EBZFU3KQHCL2IS6', 'PBQHQFM8MA2M4X9', NULL, NULL, NULL, 'Mun0bDcCLW4', 'Local', 'Mechanical Water Seal 15mm (Japan)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(825, '6826533677', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'MK5W443ZI2NOVEH', NULL, NULL, NULL, 'bLCWv4BNRAa', 'Local', 'Melamine Bowl', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(826, '6821943793', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', '4V1U1G52SWEM64E', NULL, NULL, NULL, 'q7uPhQd3bfR', 'Local', 'Melamine Bowl', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(827, '4763755152', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', '5M5ST6F3NQ815A8', NULL, NULL, NULL, 'R0SraVX7mNt', 'Local', 'Melamine Half Plate', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(828, '8229666411', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', '7XA9H8FG9IPTZT3', NULL, NULL, NULL, 'OPyvhtnx9S5', 'Local', 'Melamine Plate', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(829, '4381467842', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', '1LJEAZSAGYACXVZ', NULL, NULL, NULL, 'ToVGWXFS2Qb', 'Local', 'Melamine Rice Platter', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(830, '6163319945', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'M2TWUZNYX4Q2JBF', NULL, NULL, NULL, 'HAkxwyteLjv', 'Local', 'Menthol', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(831, '7797354996', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'KOHIB1U97KHS88Y', NULL, NULL, NULL, 'Z94lVSWRmn7', 'Local', 'Mercury Ballast 400W', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(832, '3451775441', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'LERAGD4V2GK4PVB', NULL, NULL, NULL, 'Ho7RQ3s2zXI', 'Local', 'Mercury Bulb 400W', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(833, '5314436697', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'OQ598HAKTOCC7OK', NULL, NULL, NULL, 'ISOtL5Dkw2X', 'Local', 'Mercury Bulb 400W (Phillips)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(834, '8718432368', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'M4UIP6JHDJ9IU9O', NULL, NULL, NULL, '2hULvnDKVPc', 'Local', 'Mercury Bulb Holder', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(835, '8451189467', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'SXPT56MKQGO2PLM', NULL, NULL, NULL, '8P2jpWwtbkN', 'Local', 'Microphone', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(836, '5794472975', NULL, 'Y2KK6KNJQIWD23Z', 'WLR1LOHS5JONLTJ', 'JLNO2P6K6FTAHV2', NULL, NULL, NULL, 'KgExJG248ZX', 'Local', 'Milad Mahfil & Quran Khatam', NULL, NULL, NULL, 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(837, '8771258166', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'Z7GFUKRQTAKWWN2', NULL, NULL, NULL, 'pUG2hPyQIoB', 'Local', 'Milk of Magnesia', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(838, '5271491153', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'XT5KTBGZ4C8KINH', NULL, NULL, NULL, 'TXwVIA8D6h0', 'Local', 'Milk of Magnesia', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(839, '2639143886', NULL, '4TQXLMLBLJPAQP1', 'AP7VRUIXZF1AZ3Q', 'U6ZP63AIMYGDTCW', NULL, NULL, NULL, 'XUz507Hi93S', 'Import', 'Mixed Rope 34mm (PP & PE)', NULL, NULL, 'Mtr', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(840, '5725238613', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', '9BOBV12IUHDX1GY', NULL, NULL, NULL, 'suLJCHkFc6I', 'Local', 'Molykote', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(841, '8959887289', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'TMALJJJUT58JY9V', NULL, NULL, NULL, 'F8OC4rBpEnt', 'Local', 'Monas 10mg', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(842, '6843187385', NULL, 'TJT23BXZLWIDR58', 'DTCTAOMKJZ2SI9X', 'DKAISJBL23M6WGE', NULL, NULL, NULL, '3DeI5QqVojP', 'Local', 'Monkey Cap', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(843, '2878934467', NULL, '4TQXLMLBLJPAQP1', 'AP7VRUIXZF1AZ3Q', 'U634GGUGD2MIA46', NULL, NULL, NULL, 'e40tMDQnpEs', 'Import', 'Mooring Rope 34mm', NULL, NULL, 'Mtr', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(844, '7855716566', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'OVW3G4Z48FETYUV', NULL, NULL, NULL, 'tBCKaWvXsLj', 'Local', 'Moov Cream', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(845, '5753889216', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'GTWZ627A6G3WPUA', NULL, NULL, NULL, 'diyCRFJM710', 'Local', 'Moov Cream', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(846, '1418783288', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', '2NV1RQK3LGTSRZY', NULL, NULL, NULL, 'IR6jr0Tu8MW', 'Local', 'Moov Spray', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(847, '8525697373', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', '7PL5MVV2LE2CPNP', NULL, NULL, NULL, 'MJCf6iOHAWh', 'Local', 'Moov Spray', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(848, '9372165217', NULL, 'PQ4XVDW96CL7QQZ', 'D7LDHD3U9FA9HXD', 'RIGNPT5R8EX7XON', NULL, NULL, NULL, 'AtuMZg6I8YV', 'Local', 'MS Bamboo Pipe (OD-78mm, L-6\', T-9mm)', NULL, NULL, 'Ft', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(849, '5468813398', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'YXDDMLMFXT1XFQH', NULL, NULL, NULL, 'oThBcCJeNUZ', 'Local', 'MS Belcha', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(850, '5711484695', NULL, '4TQXLMLBLJPAQP1', '1IPW5PLH4NWCZKG', '8JJ66A56GIV1OPP', NULL, NULL, NULL, 'ke7S5zgmN8Y', 'Local', 'MS Bobbin', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(851, '5858216687', NULL, '4TQXLMLBLJPAQP1', 'PID8OPNPVESJDI3', 'VYSN5QGXQS2MW4N', NULL, NULL, NULL, 'EfnyozikJtL', 'Local', 'MS Chain 24mm', NULL, NULL, 'Ft', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(852, '3685344523', NULL, '4TQXLMLBLJPAQP1', 'PID8OPNPVESJDI3', '68UCDHFMH5OCQNM', NULL, NULL, NULL, 'ynHUgbEMwld', 'Local', 'MS Chain 9mm', NULL, NULL, 'Box', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(853, '7526518639', NULL, '4TQXLMLBLJPAQP1', 'PID8OPNPVESJDI3', '7N6V1SL3H9YZK45', NULL, NULL, NULL, 'IQR5ofOCuE8', 'Local', 'MS Chain 9mm', NULL, NULL, 'Box', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(854, '3824344725', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'YF3I1SZQNASAW88', NULL, NULL, NULL, '1EMIV2QOiZv', 'Local', 'MS Dhama (Big)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(855, '4526566594', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', '4SGC4QDM9EYO8D3', NULL, NULL, NULL, 'o04OCPXESfw', 'Local', 'MS Drill Bit Set', NULL, NULL, 'Set', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(856, '5946543231', NULL, 'PQ4XVDW96CL7QQZ', 'PZNECLLN1S7KLAT', 'C4JXZ34P9OLLLSS', NULL, NULL, NULL, 'P952wOtdLJY', 'Local', 'MS Flange 1\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(857, '7371757546', NULL, 'PQ4XVDW96CL7QQZ', 'PZNECLLN1S7KLAT', 'HWN4A898S72MO6M', NULL, NULL, NULL, 'Sah6cy9VgMP', 'Local', 'MS Flange 2\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(858, '3261675164', NULL, 'PQ4XVDW96CL7QQZ', 'PZNECLLN1S7KLAT', '2SCNAN14JSSS6MR', NULL, NULL, NULL, 'wk4xsb7ETPd', 'Local', 'MS Flange 3\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(859, '3139684177', NULL, 'PQ4XVDW96CL7QQZ', 'PZNECLLN1S7KLAT', 'GZOYCSE69RHOZQN', NULL, NULL, NULL, '6Sz2FQdljI4', 'Local', 'MS Flange 5\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(860, '9388876342', NULL, 'PQ4XVDW96CL7QQZ', 'PZNECLLN1S7KLAT', 'Z4BIQDFIGZEZ75B', NULL, NULL, NULL, 'AP801qaKOEj', 'Local', 'MS Foot Plate (4.5\' x 2.5\' x 8mm)', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(861, '8611717996', NULL, 'PQ4XVDW96CL7QQZ', 'PZNECLLN1S7KLAT', 'LPNVJKSRK8U5N2L', NULL, NULL, NULL, 'lLUBHomOST6', 'Local', 'MS Hook 1\'', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(862, '6293578688', NULL, 'PQ4XVDW96CL7QQZ', 'PZNECLLN1S7KLAT', 'ZRKNYFPD3T7QOSU', NULL, NULL, NULL, 'oIkYwh1E8bT', 'Local', 'MS Hydraulic Band', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(863, '7365253933', NULL, '2PURPOP1ACPKINM', 'JUKRRNVHG6LOEUR', 'FQL5G1A5D98I5RO', NULL, NULL, NULL, 'LdIR853z6lQ', 'Local', 'MS Hydraulic Pipe (ID-1.25\") (80 Schedule)', NULL, NULL, 'Ft', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(864, '5761938668', NULL, '2PURPOP1ACPKINM', 'JUKRRNVHG6LOEUR', 'VM3QPK8P68BZB21', NULL, NULL, NULL, 'YF0GN7gTr4q', 'Local', 'MS Hydraulic Pipe (ID-1.5\") (80 Schedule)', NULL, NULL, 'Ft', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(865, '3336933566', NULL, '2PURPOP1ACPKINM', 'JUKRRNVHG6LOEUR', 'RW53OF52BOB39I2', NULL, NULL, NULL, 'sClYnZSd1yi', 'Local', 'MS Hydraulic Pipe (ID-15mm, OD-1\")', NULL, NULL, 'Ft', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(866, '1799315849', NULL, 'PQ4XVDW96CL7QQZ', 'PZNECLLN1S7KLAT', 'UOPTD2MD4INJ3AD', NULL, NULL, NULL, 's2QYM5k70id', 'Local', 'MS Hydraulic Socket (ID-0.75\", OD-1\")', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(867, '9967679526', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'GYGUYW3YM3SOYIB', NULL, NULL, NULL, 'te3HhWvK0Mm', 'Local', 'MS Jali Bucket', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(868, '8935234222', NULL, '2PURPOP1ACPKINM', 'JUKRRNVHG6LOEUR', 'YAKCPCA1AMTXNTI', NULL, NULL, NULL, 'vAdDrSzIcRH', 'Local', 'MS Pipe (3\" x 2.5\")', NULL, NULL, 'Ft', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(869, '4694788974', NULL, '2PURPOP1ACPKINM', 'JUKRRNVHG6LOEUR', 'TPBXRFRE5X2NAT2', NULL, NULL, NULL, 'rgtyYx9jPiJ', 'Local', 'MS Pipe (ID-1.25\", 5mm)', NULL, NULL, 'Ft', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(870, '9542779427', NULL, '2PURPOP1ACPKINM', 'JUKRRNVHG6LOEUR', 'BG74U9C1212ZDEW', NULL, NULL, NULL, 'HG6noVyvY0O', 'Local', 'MS Pipe (ID-1.5\", 5mm)', NULL, NULL, 'Ft', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(871, '2347867643', NULL, '2PURPOP1ACPKINM', 'JUKRRNVHG6LOEUR', '56M9S8M7STVP5IU', NULL, NULL, NULL, 'pJ38KignMBo', 'Local', 'MS Pipe (ID-25mm, OD-33mm, L-70\")', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(872, '9936214783', NULL, '2PURPOP1ACPKINM', 'JUKRRNVHG6LOEUR', 'EPQFKTBXW9D4BZ4', NULL, NULL, NULL, 'dIlkyMYmOuL', 'Local', 'MS Pipe (ID-32mm, OD-42mm)', NULL, NULL, 'Ft', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(873, '4266126426', NULL, '2PURPOP1ACPKINM', 'JUKRRNVHG6LOEUR', 'V3AB44FCMLYKOD7', NULL, NULL, NULL, 'esnWbXjI5mE', 'Local', 'MS Pipe (ID-4\", OD-4.5\", L-10\")', NULL, NULL, 'Ft', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(874, '6279949851', NULL, '2PURPOP1ACPKINM', 'JUKRRNVHG6LOEUR', 'M4EEJIPC76WX7Q7', NULL, NULL, NULL, '1n24buWMczI', 'Local', 'MS Pipe (OD-2\")', NULL, NULL, 'Ft', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(875, '3116144718', NULL, '2PURPOP1ACPKINM', 'JUKRRNVHG6LOEUR', 'XEGBKC9S79LN5GR', NULL, NULL, NULL, 'JTO0MswEpFP', 'Local', 'MS Pipe (OD-4\")', NULL, NULL, 'Ft', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(876, '7968599928', NULL, '2PURPOP1ACPKINM', 'JUKRRNVHG6LOEUR', '6V97TKH641BOB7V', NULL, NULL, NULL, 'MqbLi71lEa0', 'Local', 'MS Pipe 2\"', NULL, NULL, 'Ft', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(877, '4668933119', NULL, '2PURPOP1ACPKINM', 'JUKRRNVHG6LOEUR', 'LOJCP898RXVX92X', NULL, NULL, NULL, 'V0Zm25lJajW', 'Local', 'MS Pipe 3\"', NULL, NULL, 'Ft', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(878, '2745882894', NULL, '2PURPOP1ACPKINM', 'JUKRRNVHG6LOEUR', 'F1JL54MRFPI9PMW', NULL, NULL, NULL, 'vK67GY08EIa', 'Local', 'MS Pipe 4\" x 4.5\"', NULL, NULL, 'Ft', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(879, '5711497317', NULL, '2PURPOP1ACPKINM', 'JUKRRNVHG6LOEUR', 'G6A9I6TNKGCK2GJ', NULL, NULL, NULL, '1cmSjZRig0Q', 'Local', 'MS Pipe 6.5\"', NULL, NULL, 'Ft', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(880, '6343993918', NULL, '2PURPOP1ACPKINM', 'JUKRRNVHG6LOEUR', '55LM8LOQCBO67FB', NULL, NULL, NULL, 'V3s0f8jvDqe', 'Local', 'MS Pipe Nipple 0.75\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(881, '9596432555', NULL, '2PURPOP1ACPKINM', 'JUKRRNVHG6LOEUR', 'L7STYFAL1HN4T65', NULL, NULL, NULL, 'bBdMhQ6KUYn', 'Local', 'MS Pipe Nipple 2\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(882, '9338578396', NULL, 'PQ4XVDW96CL7QQZ', 'PZNECLLN1S7KLAT', 'WF4DMZVK2S74SC8', NULL, NULL, NULL, 'sGFiArcNZH4', 'Local', 'MS Plate (6mm x 8\" x 4\")', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(883, '2339472985', NULL, 'PQ4XVDW96CL7QQZ', 'PZNECLLN1S7KLAT', '7GUTGM5R21XA6H9', NULL, NULL, NULL, 'aJY56x8lRTN', 'Local', 'MS Plate 6mm', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(884, '6357636186', NULL, 'PQ4XVDW96CL7QQZ', 'PZNECLLN1S7KLAT', 'RO6JCFLB6JBNPYE', NULL, NULL, NULL, 'CNGES4j2WkI', 'Local', 'MS Plate Bar (L-66ft, 12mm, 3\")', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(885, '2981192565', NULL, 'PQ4XVDW96CL7QQZ', 'PZNECLLN1S7KLAT', '479X42M33K2WPOI', NULL, NULL, NULL, 'lrUhge6DABS', 'Local', 'MS Ring', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(886, '8258716993', NULL, 'PQ4XVDW96CL7QQZ', 'PZNECLLN1S7KLAT', 'Z67QLL2D5SLGR7B', NULL, NULL, NULL, 'dWLiIa9FsY2', 'Local', 'MS Rod', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(887, '3595332644', NULL, 'PQ4XVDW96CL7QQZ', 'PZNECLLN1S7KLAT', 'FF2PAQUFWI86WJU', NULL, NULL, NULL, 'wYQe7qn9hEF', 'Local', 'MS Rod 19mm', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(888, '4538861819', NULL, '2PURPOP1ACPKINM', 'HLE72FWD8USNC5Y', 'YVUBPR49IX4RXYS', NULL, NULL, NULL, 'GJhYaouB2HA', 'Local', 'MS Shackle 18mm', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(889, '7833458612', NULL, '2PURPOP1ACPKINM', 'HLE72FWD8USNC5Y', 'W8TQVP376VHVDW4', NULL, NULL, NULL, 'UcAuhKmSqCi', 'Local', 'MS Shackle 20mm', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(890, '9449759868', NULL, 'PQ4XVDW96CL7QQZ', 'PZNECLLN1S7KLAT', 'R2EO8IRTB3Y29RS', NULL, NULL, NULL, 'r14tji8kK7m', 'Local', 'MS Shaft 30mm', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(891, '3495698857', NULL, 'PQ4XVDW96CL7QQZ', 'PZNECLLN1S7KLAT', 'HOKIVPVEJFFW92E', NULL, NULL, NULL, 'FMXs0vjEJ8G', 'Local', 'MS Socket (ID-1.5\", OD-1.25\")', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(892, '1421862224', NULL, 'PQ4XVDW96CL7QQZ', 'PZNECLLN1S7KLAT', 'WNS2FZ7D3DY4F8Z', NULL, NULL, NULL, 'uOV6x8XAlSp', 'Local', 'MS Socket (ID-1.5\", OD-2\")', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(893, '7719159371', NULL, '2PURPOP1ACPKINM', 'HLE72FWD8USNC5Y', 'A8O1QROU1EE9EWK', NULL, NULL, NULL, 'tifwnEpqRke', 'Local', 'MS Swivel 28mm', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(894, '8934414586', NULL, '2PURPOP1ACPKINM', 'HLE72FWD8USNC5Y', 'TLACAU7SNE36TAT', NULL, NULL, NULL, 'V0o8p3RFhy9', 'Local', 'MS Swivel 32mm', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1);
INSERT INTO `product_information` (`id`, `product_id`, `product_id_two`, `category_id`, `sub_cat_id`, `brand_id`, `country`, `parts`, `tag`, `sku`, `ptype_id`, `product_name`, `price`, `re_order_level`, `unit`, `tax`, `serial_no`, `product_model`, `product_details`, `image`, `status`) VALUES
(895, '4272288456', NULL, '2PURPOP1ACPKINM', 'HLE72FWD8USNC5Y', 'X7RRZUXXWJRAR6Z', NULL, NULL, NULL, 'UzWVaqsygtA', 'Import', 'MS Swivel 40mm', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(896, '4264164758', NULL, '2PURPOP1ACPKINM', 'DVB9GGYBU2TQYKH', 'OZI6XN68RS2CT7O', NULL, NULL, NULL, 'p87jy3dAgFw', 'Local', 'MS Washer', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(897, '2871318491', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', '6VTTIKL5GPEAWDM', NULL, NULL, NULL, 'v0PdzpkM5VK', 'Local', 'MS Welding Rod 3.2mm (No. 10)', NULL, NULL, 'Pkt', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(898, '4469212338', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'PK5VHG5O5AHYKLR', NULL, NULL, NULL, 'KIW3VwDR7XO', 'Local', 'MS Welding Rod 3.2mm (No. 10)', NULL, NULL, 'Pkt', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(899, '4318386158', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'AGQHDSTWVSBER97', NULL, NULL, NULL, 'QTNgUClocEI', 'Local', 'MS Welding Rod 3.2mm (No. 10)', NULL, NULL, 'Box', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(900, '3377449572', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'AQXLGJBKMZPAGUK', NULL, NULL, NULL, 'Q7jKTqvYV2y', 'Local', 'MS Welding Rod 3.2mm (No. 10)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(901, '3119178612', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', '1MXJWJ9JVWP9XDI', NULL, NULL, NULL, 'AVW3sGdPEu5', 'Local', 'MS Welding Rod 3.2mm (No. 10)', NULL, NULL, 'Pkt', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(902, '2622326898', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'PY34MCKC42UST51', NULL, NULL, NULL, 'L0Om3dhT75p', 'Local', 'Mucolyt Syrup', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(903, '4848196333', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'SQJ77MY8KLPA9GF', NULL, NULL, NULL, 'sk3JeTpfqiG', 'Local', 'Mug (RFL)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(904, '6785438455', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'I39VBPL5FOM28T8', NULL, NULL, NULL, 'Ue9HrqMx5s8', 'Local', 'Multi Plug', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(905, '7362288723', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', '3OZ5LTIXPS6OQ7P', NULL, NULL, NULL, 'MlGk9AdOKUH', 'Local', 'Napa', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(906, '7194513498', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'FBX2MUQNEOO2BCX', NULL, NULL, NULL, 'CJ39h6gEPiW', 'Local', 'Napa', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(907, '9476992122', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'WJM3KRLQRU961PF', NULL, NULL, NULL, 'TEzYIxAyNJO', 'Local', 'Napa Extend', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(908, '8785142358', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'BI9YL68PBWGPHBY', NULL, NULL, NULL, 'GosZrceilSE', 'Local', 'Napa Extend', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(909, '9987558525', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', '5I43GRGNR9XMR9B', NULL, NULL, NULL, 'mh6T9BfMI7U', 'Local', 'Napa Extend', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(910, '6331487889', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'AY4YD65QIJN42V5', NULL, NULL, NULL, 'NTM4wKQL8zl', 'Local', 'Napa Extend', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(911, '5921691247', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', '5YVKIPZP2I7NGEJ', NULL, NULL, NULL, 'NalvwdRgIis', 'Local', 'Napa Extend', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(912, '8131567321', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'GIWP6RUARRFPPUQ', NULL, NULL, NULL, 'ABuDUdc9Nfn', 'Local', 'Napa Extend', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(913, '7324564289', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'LQ93QU6XEQTGPFP', NULL, NULL, NULL, 'zlKPyRIV8fC', 'Local', 'Napa Extra', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(914, '4479257966', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'QS4O2HFAXA82VJR', NULL, NULL, NULL, 'Z69xcYngf5A', 'Local', 'Napa Extra', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(915, '5816621184', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'J8Q3Y58D6IXEYRT', NULL, NULL, NULL, 'blyXfspRmaS', 'Local', 'Napa Rapid 500mg', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(916, '7186774253', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'EMFZIWI2LFCS27Y', NULL, NULL, NULL, 'jKxYqvwGnQe', 'Local', 'Napa Rapid 500mg', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(917, '1633188389', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'VFD78DRXIZIJU6H', NULL, NULL, NULL, 'zxQ3lBckKTA', 'Local', 'Napa Suppository 500mg', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(918, '2858668957', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'GROKYKRDOZUMBX3', NULL, NULL, NULL, '6ESlB9LoIij', 'Local', 'Napkin (Gamcha)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(919, '5889888337', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'ANYSN2ATPADZ1EH', NULL, NULL, NULL, 'LGEBv3YV50e', 'Local', 'Napkin (Gamcha)', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(920, '8243378399', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'FEB8M8G5JGEI8I5', NULL, NULL, NULL, 'VH7kW0Ev9C6', 'Local', 'Napkin (Gamcha)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(921, '5563952891', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'PQOIQ8GRV1RKMXD', NULL, NULL, NULL, 'MzyXYnSqxtD', 'Local', 'Napkin (Gamcha)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(922, '2739221262', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'RRB4MAUEHUTL2PQ', NULL, NULL, NULL, 'fuHYnpPR1Gg', 'Local', 'Napkin Tissue Paper', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(923, '8821477231', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', '8RMKPDK24ZPTD9P', NULL, NULL, NULL, 'K8eGY5ZBcJD', 'Local', 'Naproxen 500mg', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(924, '8976772718', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'YQD5IDW2AXSNV8P', NULL, NULL, NULL, 'WPVtjbxlACO', 'Local', 'Napsec 500mg', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(925, '5399823766', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'MNVZVVFS152XS7L', NULL, NULL, NULL, 'R8mt23MXGIj', 'Local', 'Navigation Lamp 24V', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(926, '8652363918', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'WGFCDUFRSVXUF2I', NULL, NULL, NULL, 'r8yAoP7F5Dz', 'Local', 'Navigation Light', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(927, '4291511417', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'DD2GD18R4Z5VST2', NULL, NULL, NULL, 'M6LfxJWdPSa', 'Local', 'Navigation Light Shade (Red)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(928, '3925665842', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', '2HQY1P5XHHZTXPW', NULL, NULL, NULL, 'vMXA4DGHbyi', 'Local', 'Nebanol Ointment', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(929, '2963629819', NULL, '4TQXLMLBLJPAQP1', 'PID8OPNPVESJDI3', 'TX878DWRI5VWCJ8', NULL, NULL, NULL, '1Pr29Ojoqwy', 'Import', 'Needle', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(930, '5388565964', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'NEIGHMNFHEGOL58', NULL, NULL, NULL, 'pOTNwEaYPRK', 'Local', 'Needle (Cutgut 1)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(931, '7982518694', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'O4C857WQTVDPM2J', NULL, NULL, NULL, 'sSn8AerUXxB', 'Local', 'Neobacin Ointment', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(932, '3882252243', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'Y2T56VCEOJ798JS', NULL, NULL, NULL, 'ObD2vBNAakw', 'Local', 'Neostrip', NULL, NULL, 'Box', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(933, '1154667313', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'PX5UPNY6NIKP2DQ', NULL, NULL, NULL, 'UqNli4sVyvJ', 'Local', 'Neotack', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(934, '4277987252', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'DJKBID6FOW4Y6UM', NULL, NULL, NULL, 'HbovXk3VLf1', 'Local', 'Neprobin Plus', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(935, '3636566422', NULL, 'EB886WD44XASJTL', 'B29KZMCXGOPBJG3', '6EMN6A7VSR469PS', NULL, NULL, NULL, '8ZO9CBDafVb', 'Local', 'Net Cutting Knife', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(936, '5688841176', NULL, 'Y2KK6KNJQIWD23Z', 'WLR1LOHS5JONLTJ', '4LADPCORNQRCU8X', NULL, NULL, NULL, 'H8kVQKvbndx', 'Local', 'Net Repairing Service Charge', NULL, NULL, 'Days', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(937, '8638145748', NULL, '4TQXLMLBLJPAQP1', '3DAABSCEK5CQYBM', 'BR5QTBHLMN8NBW7', NULL, NULL, NULL, 'ilfFzDEw5SP', 'Import', 'Net Repairing Twine', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(938, '4656639422', NULL, '4TQXLMLBLJPAQP1', '3DAABSCEK5CQYBM', '4DMHHVRJC3PV4RN', NULL, NULL, NULL, 'V1QrjyevdKt', 'Local', 'Net Repairing Twine', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(939, '1711571231', NULL, '4TQXLMLBLJPAQP1', '3DAABSCEK5CQYBM', 'TLGP3GUNR5TLG66', NULL, NULL, NULL, 'CQbL7NMfzlK', 'Local', 'Net Repairing Twine 1.8mm (PP)', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(940, '5361723676', NULL, '2PURPOP1ACPKINM', 'DVB9GGYBU2TQYKH', 'YZDCYHE6UEXDHH3', NULL, NULL, NULL, '4KCWYQ2S5so', 'Local', 'Nipple', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(941, '3184334528', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'EUES9CL2UKI62Q5', NULL, NULL, NULL, 'wgkWnBcqfA4', 'Local', 'Nitton Varnish', NULL, NULL, 'Ltr', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(942, '5738962252', NULL, '2PURPOP1ACPKINM', '87G3NU8TY4J2W25', 'FZYNW2OQKRVQFBV', NULL, NULL, NULL, 'JcDR3osvfy8', 'Local', 'Non Return Valve 3\" (APS)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(943, '9864281467', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', '96CJWIKKY3NYV26', NULL, NULL, NULL, 'nhAHSmPxvLe', 'Local', 'Norvis 50mg', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(944, '4421784458', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'EWA3H5X99WORK7R', NULL, NULL, NULL, 'dYUr0LozGXQ', 'Local', 'Nospa', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(945, '7652994811', NULL, 'EB886WD44XASJTL', 'B29KZMCXGOPBJG3', '85K8FLMMX87ZJTJ', NULL, NULL, NULL, 'pE3hDOBi0TC', 'Local', 'Notebook', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(946, '2364851588', NULL, '6M9BK6G65DPKHS4', '4QQ92B6QKZAKKS9', 'A5TFFQDCMEIY8JQ', NULL, NULL, NULL, '2jHgpz4hXM8', 'Local', 'Octane', NULL, NULL, 'Ltr', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(947, '7271581692', NULL, '6M9BK6G65DPKHS4', '4QQ92B6QKZAKKS9', 'ROQNZ1JXGT4ENTR', NULL, NULL, NULL, 'yF5e2nhsC3Z', 'Local', 'Octane', NULL, NULL, 'Ltr', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(948, '2773423826', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'GRDUSMNNCE78ZF3', NULL, NULL, NULL, 'khEewrlfU49', 'Local', 'Odonil', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(949, '1116569536', NULL, 'MH35OWBFMR35ILN', 'XMAG1UXN247Z1FF', 'QM7TCI9UT7QUBCE', NULL, NULL, NULL, 'g9RUW6XZfu3', 'Local', 'Off White Paint', NULL, NULL, 'Gallon', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(950, '7972949164', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'AWTRTYH64A5QL63', NULL, NULL, NULL, 'jQpz4yI82na', 'Local', 'Office Catch Report', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(951, '1525564481', NULL, 'Y2KK6KNJQIWD23Z', 'WLR1LOHS5JONLTJ', 'WHUWZU22425V3LI', NULL, NULL, NULL, 'oCQEx89auIl', 'Local', 'Officer Cabin AC Pipe Brazing & Gas Charge', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(952, '4779842192', NULL, 'Y2KK6KNJQIWD23Z', 'WLR1LOHS5JONLTJ', 'N7X1SX32E4BLS9G', NULL, NULL, NULL, 'c3zh5Sk9XER', 'Local', 'Officer Cabin AC Servicing', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(953, '6612653131', NULL, 'Y2KK6KNJQIWD23Z', 'WLR1LOHS5JONLTJ', '6IU8I1FVANUVT4R', NULL, NULL, NULL, 'rScuAl46mOP', 'Local', 'Officer Cabin New AC Circuit', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(954, '6646244944', NULL, 'Y2KK6KNJQIWD23Z', 'WLR1LOHS5JONLTJ', 'OBHCMDZCFMXDYTV', NULL, NULL, NULL, 'RgYpMC0K28A', 'Local', 'Officer Kitchen Refrigerator Overload Relay Servicing', NULL, NULL, 'Set', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(955, '7684219391', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'KE3GMDYPXM4IUKI', NULL, NULL, NULL, 'NHh891M02zq', 'Local', 'Ofkof (Syrup)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(956, '8799624441', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'S6OAGJSHDU63NUH', NULL, NULL, NULL, 'L3Oj91dXH2u', 'Local', 'Ofkof (Syrup)', NULL, NULL, 'Box', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(957, '2286439655', NULL, '2PURPOP1ACPKINM', 'US9B6OUBZYA62E8', '515WQ5TK93SMPF6', NULL, '1R-0726', NULL, '1R-0726', 'Import', 'Oil Element Filter 1R-0726 (CAT)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(958, '3999814899', NULL, '2PURPOP1ACPKINM', 'US9B6OUBZYA62E8', 'IOJJBSU68IP6DQN', NULL, 'O-1308', NULL, 'O-1308', 'Local', 'Oil Filter O-1308 (Sakura)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(959, '8426834612', NULL, '2PURPOP1ACPKINM', 'US9B6OUBZYA62E8', '141ZPJVPPSNP3ZI', NULL, 'O-1308', NULL, 'O-1308', 'Local', 'Oil Filter O-1308 (Sakura)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(960, '4952557618', NULL, '2PURPOP1ACPKINM', 'US9B6OUBZYA62E8', 'G5QKS3GXQOKJRJ3', NULL, 'WE040', NULL, 'WE040', 'Local', 'Oil Filter WE040', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(961, '2329977148', NULL, '1DFJOUKTOQ28QOI', '8SM6ZUETPZKZHVB', 'DBP7KE12EWWRBRQ', NULL, NULL, NULL, '0r54dGXlnAh', 'Local', 'Oil Flow Meter', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(962, '4752216253', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'USIJO4AJK9ECP3K', NULL, NULL, NULL, 'Bo6ThLQtENZ', 'Local', 'Oil Pressure Switch (Danfoss)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(963, '7837169792', NULL, '2PURPOP1ACPKINM', 'EBZFU3KQHCL2IS6', 'W3B86ZF3HR3JZUZ', NULL, '3630681', NULL, '3630681', 'Import', 'Oil Rear Seal 3630681', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(964, '6511376111', NULL, '2PURPOP1ACPKINM', 'EBZFU3KQHCL2IS6', 'PUFOYXRLZ7XMM11', NULL, NULL, NULL, 'MWqSRi7NjcK', 'Local', 'Oil Seal', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(965, '2811985143', NULL, '2PURPOP1ACPKINM', 'EBZFU3KQHCL2IS6', 'SL4DKLQ59IBGMUW', NULL, NULL, NULL, 'uIAwip8sxUY', 'Local', 'Oil Seal', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(966, '4786294989', NULL, '2PURPOP1ACPKINM', 'EBZFU3KQHCL2IS6', '858HJIU57B6U4QR', NULL, NULL, NULL, 'Ty6IOx3gNWQ', 'Local', 'Oil Seal (18mm x 35m x 7mm)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(967, '1645689656', NULL, '2PURPOP1ACPKINM', 'EBZFU3KQHCL2IS6', '4KWYMU4RNAWYSDL', NULL, NULL, NULL, 'uQIdJUVSP5M', 'Local', 'Oil Seal (25mm x 44m x 7mm)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(968, '7311866729', NULL, '2PURPOP1ACPKINM', 'EBZFU3KQHCL2IS6', 'XDU2OTDIC4RBNLF', NULL, NULL, NULL, '7K4gJuzYnGa', 'Local', 'Oil Seal (90 x 60 x 10mm)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(969, '7136374543', NULL, '2PURPOP1ACPKINM', 'EBZFU3KQHCL2IS6', 'ZF28ZN914DVVRKG', NULL, NULL, NULL, 'yGfw83nek7K', 'Local', 'Oil Seal (APS)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(970, '9383633641', NULL, '2PURPOP1ACPKINM', 'EBZFU3KQHCL2IS6', 'XA3IVZSHC47DGDH', NULL, NULL, NULL, 'MaVs0twmoR1', 'Local', 'Oil Seal for M/E', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(971, '3132442543', NULL, '2PURPOP1ACPKINM', 'US9B6OUBZYA62E8', '1U1ACROFRSALPZL', NULL, 'O-5502', NULL, 'O-5502', 'Local', 'Oil Separator Filter O-5502 (Sakura)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(972, '9536466739', NULL, '2PURPOP1ACPKINM', 'US9B6OUBZYA62E8', 'CIEKGCUQYTU1EEP', NULL, 'O-5502', NULL, 'O-5502', 'Local', 'Oil Separator Filter O-5502 (Sakura)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(973, '8485918874', NULL, '2PURPOP1ACPKINM', 'US9B6OUBZYA62E8', 'A4E3O6PI8SF3897', NULL, 'O-5502', NULL, 'O-5502', 'Local', 'Oil Separator Filter O-5502 (Sakura)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(974, '4144285924', NULL, '2PURPOP1ACPKINM', 'HLE72FWD8USNC5Y', '53XOPYCXQKERPAT', NULL, NULL, NULL, 'miFJhI0uLno', 'Local', 'Omega Shackle', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(975, '6597446313', NULL, '2PURPOP1ACPKINM', 'HLE72FWD8USNC5Y', '9IXHSB3CKS4IODZ', NULL, NULL, NULL, '1iAJjhHaegc', 'Local', 'Omega Shackle 21mm', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(976, '9385194795', NULL, '2PURPOP1ACPKINM', 'HLE72FWD8USNC5Y', '2AL139JXZTXI38W', NULL, NULL, NULL, 'OBKdknlQ3Vf', 'Local', 'Omega Shackle 24mm', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(977, '9827712147', NULL, '2PURPOP1ACPKINM', 'HLE72FWD8USNC5Y', 'ZP8LIYMSAXOAHA3', NULL, NULL, NULL, 'Cxj8u4aVtU1', 'Local', 'Omega Shackle 26mm', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(978, '5575732917', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'ZOCT9HHGM7BLQPK', NULL, NULL, NULL, 'YqxSlU8drDI', 'Local', 'Omidon 10mg', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(979, '2238638611', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'VMN7IAC95VNAZIS', NULL, NULL, NULL, 'wHhI6jpsWt8', 'Local', 'Omidon 10mg', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(980, '2338231121', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', '9J9Q7II84P6UFXE', NULL, NULL, NULL, 'kG8lbq59uXn', 'Local', 'Omidon 10mg', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(981, '2754331435', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'WGJXBCJHUZR4HQB', NULL, NULL, NULL, 'A7tO8yjIvRu', 'Local', 'On/Off Push Switch', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(982, '7862424863', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'RE67PXWDOD5LZ78', NULL, NULL, NULL, 'ev2kEa6TPXw', 'Local', 'One Time Bandage', NULL, NULL, 'Box', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(983, '4548412764', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', '5H879KYXLVGUBBB', NULL, NULL, NULL, 'kNevU4oT2y3', 'Local', 'One Time Bandage', NULL, NULL, 'Box', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(984, '4588429723', NULL, 'Y2KK6KNJQIWD23Z', 'WLR1LOHS5JONLTJ', 'DHZ1DD2YHZ7YND5', NULL, NULL, NULL, 'rfPV9onGzFY', 'Local', 'Online UPS Repair (Control Card (1pcs), PFC Card (1pcs), DC/DC Driver (1pcs), MOSFET (4pcs), IGBT (2pcs), SMF Battery 12V 7.5 Amp (8pcs))', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(985, '8381611745', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'T4JO9FWIAMR6F6X', NULL, NULL, NULL, '8qNn7w5b49m', 'Local', 'Operating Valve for CO2 Extinguisher', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(986, '1952839775', NULL, '2PURPOP1ACPKINM', 'EBZFU3KQHCL2IS6', 'KXGA64A85TCMAK2', NULL, NULL, NULL, 'PqHMObXukwc', 'Local', 'O\'Ring Seal', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(987, '3716223879', NULL, '2PURPOP1ACPKINM', 'EBZFU3KQHCL2IS6', '2CQXL6PG8TBIA5Y', NULL, NULL, NULL, 'Z0nCF3N6how', 'Local', 'O\'Ring Seal (8.15\" x 8.6\" x 8mm)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(988, '9933983411', NULL, '2PURPOP1ACPKINM', 'EBZFU3KQHCL2IS6', 'UBYIZU97Y5NGWYF', NULL, NULL, NULL, 'lx7mwCTnG0N', 'Local', 'O\'Ring Seal (APS)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(989, '3462374313', NULL, '2PURPOP1ACPKINM', 'EBZFU3KQHCL2IS6', 'Y2ICL1UV3B1P9Y5', NULL, NULL, NULL, 'QLDpVzIBqgi', 'Local', 'O\'Ring Seal 0.5\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(990, '9313527551', NULL, '2PURPOP1ACPKINM', 'EBZFU3KQHCL2IS6', '46J7R94GKEICCSJ', NULL, NULL, NULL, 'Z6x7VTNwYzl', 'Local', 'O\'Ring Seal 1.5\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(991, '7895971519', NULL, '2PURPOP1ACPKINM', 'EBZFU3KQHCL2IS6', 'OCQD2QHGWA7AUTK', NULL, NULL, NULL, 'HmnsNO6SJ4w', 'Local', 'O\'Ring Seal for M/E', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(992, '6268967774', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', '1D7DVHH4GD6OUZP', NULL, NULL, NULL, 'NG9bE8pTJLH', 'Local', 'Orsaline', NULL, NULL, 'Box', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(993, '4659451853', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', '7ZX712KO8UUR99F', NULL, NULL, NULL, 'tfgBN9RqCjD', 'Local', 'Orsaline', NULL, NULL, 'Box', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(994, '3845717319', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'OJI157JNZIZAOW6', NULL, NULL, NULL, 'DxgnVp5EYBa', 'Local', 'Orsaline', NULL, NULL, 'Box', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(995, '8351448894', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', '9OMBB5RDHMAWRJR', NULL, NULL, NULL, 'gNT18HmeGtz', 'Local', 'Oval Hand Brush', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(996, '1922579172', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'NUITTX3IPLA12GQ', NULL, NULL, NULL, 'sbxvlgtaTkr', 'Local', 'Overload Relay', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(997, '9372325647', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', '8I3SHF1HZUNQDGD', NULL, NULL, NULL, 'Y7ODxbnyRX6', 'Local', 'Oxygen (Refill)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(998, '8921934836', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'OFY74VZ9OOTB3L9', NULL, NULL, NULL, 'aLcBGEATVJv', 'Local', 'Oxygen Cylinder', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(999, '8329487322', NULL, 'Y2KK6KNJQIWD23Z', 'WLR1LOHS5JONLTJ', 'NFMP39IMCVLS87O', NULL, NULL, NULL, 'kR6ScB1yGYQ', 'Local', 'Oxygen Cylinder Daily Rent', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1000, '6358619769', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'E16CLE47FG9B1YF', NULL, NULL, NULL, 'GAjF73gTLIp', 'Local', 'Oxygen Gas (6.8)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1001, '7632964253', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'P6PC17DV18QNKKS', NULL, NULL, NULL, 'TUmt0JVo4Aj', 'Local', 'Oxygen Gas (9.8)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1002, '6874479322', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', '4W7UEGUJA6P8Y58', NULL, NULL, NULL, '5bKTycs8OIj', 'Local', 'Oxygen Gas (9.8)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1003, '4511382632', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'GFYIRHSMISTCTR3', NULL, NULL, NULL, 'AnHkswe8IE5', 'Local', 'Oxygen Gas (9.8)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1004, '7838139965', NULL, '1DFJOUKTOQ28QOI', '8SM6ZUETPZKZHVB', 'QW4XAE533U124WD', NULL, NULL, NULL, 'pxMs5dKf4wg', 'Local', 'Oxygen Meter', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1005, '4565251414', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', '2H9WXJNSQ2SZ5WW', NULL, NULL, NULL, 'cj1mzOXiHle', 'Local', 'Pad Lock', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1006, '7581396334', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'XIM4MU6W8T5X3DT', NULL, NULL, NULL, '3iGrn9HDuSN', 'Local', 'Paint Brush', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1007, '5571987952', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'YWU3T9HROCOQUF1', NULL, NULL, NULL, 'WBSn0LIsMfy', 'Local', 'Paint Brush 0.5\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1008, '1346253574', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'RN58QY4928P26S4', NULL, NULL, NULL, 'luPyLdrq4fb', 'Local', 'Pantonix 20mg', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1009, '9191764595', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'WBQYC2MXFR7GIG5', NULL, NULL, NULL, 'eHIboBNJ3VL', 'Local', 'Pantonix 20mg', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1010, '3887281871', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'BNFBGE8NQRLBYZO', NULL, NULL, NULL, 'q0tgOznfKD5', 'Local', 'Pantonix 20mg', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1011, '9857112318', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'FE5EIQXF5EMM51S', NULL, NULL, NULL, 'j3VUJQk90aR', 'Local', 'Pantonix 20mg', NULL, NULL, 'Box', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1012, '9544674581', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'ZVGSSDVBP3RTM2Q', NULL, NULL, NULL, 'PU0qZsNem4L', 'Local', 'Paper Disk', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1013, '1269869435', NULL, 'EB886WD44XASJTL', 'B29KZMCXGOPBJG3', 'QBSGN25RJJCWK5M', NULL, NULL, NULL, 'cI9vyFEGMYJ', 'Local', 'Pencil', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1014, '1815757533', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', '9V6BOYQVMTKHOLK', NULL, NULL, NULL, 'WBwIAMlV1sy', 'Local', 'Pencil Battery', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1015, '3149639679', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', '1I9WOHBQ6L6J6YW', NULL, NULL, NULL, 'eJEM34UpqDv', 'Local', 'Pencil Battery', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1016, '3755456162', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'P4N7I95H9LKDKQD', NULL, NULL, NULL, 'ZJwUATY5Kkz', 'Local', 'Pencil Battery', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1017, '8166644626', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'COC9TXIDDRV6OIX', NULL, NULL, NULL, 'jdrEqGKzuCT', 'Local', 'Pencil Roller Brush (Foam) (Refill)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1018, '5711473195', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', '6R99GQ7AXRH8D56', NULL, NULL, NULL, 'VXmN54FGHUQ', 'Local', 'Pencil Roller Brush (Foam) (Refill)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1019, '9152654835', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'SMINV8VBUYWOT98', NULL, NULL, NULL, 'tmjPiQ4yKW7', 'Local', 'Pencil Roller Brush 1\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1020, '1496623818', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'Y4RBRPRMQX8MD1N', NULL, NULL, NULL, '2aEQxqF7uVp', 'Local', 'Pencil Roller Brush 2\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1021, '4467963162', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'VS6FA4IDHAZY28V', NULL, NULL, NULL, 'Z1Aj57l20Ci', 'Local', 'Pencil Roller Brush 4\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1022, '4983444448', NULL, 'EB886WD44XASJTL', 'B29KZMCXGOPBJG3', 'BRDXIJSADLQRP6H', NULL, NULL, NULL, 'oPh5xMm1Y4b', 'Local', 'Permanent Marker', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1023, '9516116546', NULL, 'EB886WD44XASJTL', 'B29KZMCXGOPBJG3', 'MJGVACQBOWTCUBS', NULL, NULL, NULL, 'KqFoVnpkI4H', 'Local', 'Permanent Marker Ink', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1024, '1981449279', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'CXL2U9DC9MO2FV4', NULL, NULL, NULL, 'wrgLxIS57Bj', 'Local', 'Pevisone Cream', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1025, '8634942974', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'NT1HERPFRKV8TI1', NULL, NULL, NULL, '8KRAQcT3zmB', 'Local', 'Pevisone Cream', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1026, '1762349985', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'SRHRTSIOEVXBEBN', NULL, NULL, NULL, 'dLwRc4uTYZk', 'Local', 'Pevisone Cream', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1027, '5869727561', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'SUQ6JBQWAE8NRIX', NULL, NULL, NULL, 'SQg4koYEeTJ', 'Local', 'Pevitin Cream', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1028, '6477777753', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'URDHLHNCJYN4RFH', NULL, NULL, NULL, 'V9p1IPvKC5J', 'Local', 'Photocopy', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1029, '1257377151', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'CM4FPPC1MZ5CEMR', NULL, NULL, NULL, 'ecMVXYPWNJO', 'Local', 'Photocopy', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1030, '8135763115', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'FABMYKGYKLQJAW8', NULL, NULL, NULL, 'WRIO2vBtYcL', 'Local', 'Photocopy Bill (VR 10 Pcs) (Fuel Report 5 Pcs) (Challan 1 Pcs)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1031, '4342886239', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'V8Q7VAKQJK4Q3KB', NULL, NULL, NULL, 'Hm6XfjPcr4R', 'Local', 'Pillow', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1032, '1735454214', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'EW7JU4GBRND3CG4', NULL, NULL, NULL, '3j4VwReUdh8', 'Local', 'Pillow Cover', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1033, '7473489885', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'XHD2PINMXCOU8OT', NULL, NULL, NULL, 'u4Fv6XqxW8n', 'Local', 'Pillow Cover', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1034, '4595633526', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', '9WLGY4P3Q53EWF1', NULL, NULL, NULL, '0eq73ZaHsLA', 'Local', 'Pillow w/ Cover', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1035, '6698641191', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'QUAW9W3MPH9TE26', NULL, NULL, NULL, 'EYfCpiqoSAe', 'Local', 'Pipe Belcha', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1036, '8843331844', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'FOEQBEDL1FJVE6E', NULL, NULL, NULL, 'Yir3CjudH6b', 'Local', 'Pipe Wrench 8\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1037, '1495684454', NULL, '2PURPOP1ACPKINM', 'EBZFU3KQHCL2IS6', '9MXJ7CUVFLJ1OYK', NULL, NULL, NULL, '96e4kqBsyC7', 'Local', 'Piston Cooling Nozzle O\'Ring Seal', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1038, '8117395321', NULL, '32GAZCG9EGXK5S5', '3XUMP7QWQ7BTCTO', 'ZFKWCZH6PJ586D9', NULL, NULL, NULL, 'AOMadLW4bPt', 'Local', 'Piston Ring', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1039, '8967472594', NULL, '32GAZCG9EGXK5S5', '3XUMP7QWQ7BTCTO', '9OB9MUWSOQSTLDJ', NULL, NULL, NULL, 'rVPsZIDjq8H', 'Local', 'Piston Ring', NULL, NULL, 'Set', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1040, '8821821455', NULL, '32GAZCG9EGXK5S5', '3XUMP7QWQ7BTCTO', 'FBA4CSUZHNJCRAA', NULL, '4089811', NULL, '4089811', 'Local', 'Piston Ring Set (4089811)', NULL, NULL, 'Set', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1041, '6889878126', NULL, '32GAZCG9EGXK5S5', '3XUMP7QWQ7BTCTO', 'V7TBSSUN5OX67R8', NULL, '80106', NULL, '80106', 'Import', 'Piston Set F-16 (80106)', NULL, NULL, 'Set', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1042, '6643397261', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'F2CZ61YGZSET2LB', NULL, NULL, NULL, 'A1pBNcCJyYS', 'Local', 'Plastic Basket', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1043, '5176245133', NULL, '4TQXLMLBLJPAQP1', 'MV7C1KBSEUBJHHD', 'BPPMK46ZVXTI2Z1', NULL, NULL, NULL, 'Hpnixk0gfvo', 'Import', 'Plastic Basket', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1044, '8185116855', NULL, '4TQXLMLBLJPAQP1', 'MV7C1KBSEUBJHHD', 'WILXNZ1AL71IIBH', NULL, NULL, NULL, 'klOMTHmSGew', 'Import', 'Plastic Basket (Big)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1045, '9458455952', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'AQBDQOCNNOT3A12', NULL, NULL, NULL, 'TBytEls9jZN', 'Local', 'Plastic Belcha', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1046, '6416229131', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'UNBM7QPP8HRBPBF', NULL, NULL, NULL, 'CZhoPGHtyL5', 'Local', 'Plastic Belcha', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1047, '6449954213', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'IG69XJO88M3ADZD', NULL, NULL, NULL, 'ihJ8dM53kYR', 'Local', 'Plastic Belcha', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1048, '7979596287', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', '79547VH3MYCY9FZ', NULL, NULL, NULL, '3tuNUIx6XlC', 'Local', 'Plastic Bodna', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1049, '3322549922', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'HRYGUHR2KG1TIHD', NULL, NULL, NULL, 'V0zpBxFL6I9', 'Local', 'Plastic Bodna', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1050, '5699695686', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'ZCAR1PC8NGR3MTW', NULL, NULL, NULL, 'HQF4o6Lj3wz', 'Local', 'Plastic Bowl (RFL)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1051, '1573935448', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', '85U5YI3D13I59TK', NULL, NULL, NULL, 'rp1WAJBNQTn', 'Local', 'Plastic Clip', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1052, '9946941176', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', '12T3JACUSRZ3DW9', NULL, NULL, NULL, 'Bhr5iDYWpgy', 'Local', 'Plastic Clip', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1053, '5559353918', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'MY7Y3S8QCG8QB52', NULL, NULL, NULL, 'yvP1SUiNmT2', 'Local', 'Plastic Drum (Big w/ Cover)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1054, '3595659482', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'ZP8B6VYE9OIGRZM', NULL, NULL, NULL, '9D1y3rcsFgE', 'Local', 'Plastic Drum (Small)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1055, '2399799817', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'BS8TRJ5BJC8EHMQ', NULL, NULL, NULL, 'B3aFqP9U4Cn', 'Local', 'Plastic Dust Bin', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1056, '7652989194', NULL, 'EB886WD44XASJTL', 'B29KZMCXGOPBJG3', 'V6OPWLZJ1SWN6A5', NULL, NULL, NULL, '4Sa3G2MfxwK', 'Local', 'Plastic File', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1057, '9442515298', NULL, '2PURPOP1ACPKINM', '87G3NU8TY4J2W25', '33QQP18QP7LEFSL', NULL, NULL, NULL, 'VL1AD2zZxUG', 'Local', 'Plastic Impeller 28mm', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1058, '7523532792', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'H8DJ7FJC46QZ81N', NULL, NULL, NULL, 'HtTcrYsQA1V', 'Local', 'Plastic Jug', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1059, '9541223282', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'D8AKAFFYO8WNOWC', NULL, NULL, NULL, '4MXmhL9RCdn', 'Local', 'Plastic Mug', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1060, '5358819461', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'PROAZSJNX4EMKJ4', NULL, NULL, NULL, 'wVlYKSpWr2N', 'Local', 'Plastic Net Bowl (RFL)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1061, '1895844729', NULL, '2PURPOP1ACPKINM', 'JUKRRNVHG6LOEUR', '4D6S1WBINQA5I9V', NULL, NULL, NULL, '7BGPnuUvZy4', 'Local', 'Plastic Pipe', NULL, NULL, 'Ft', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1062, '4891529748', NULL, '2PURPOP1ACPKINM', 'JUKRRNVHG6LOEUR', 'YEL9XWP8MQNJMCJ', NULL, NULL, NULL, 'kH4TQqL7XjD', 'Local', 'Plastic Pipe 0.25\"', NULL, NULL, 'Ft', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1063, '8686254866', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'PEH942PE3HJYWCD', NULL, NULL, NULL, 'rRYnU8pmGaE', 'Local', 'Plastic Pot', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1064, '5132215914', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', '9PADJDM3PTWM8RE', NULL, NULL, NULL, 'CLikDPVfXvN', 'Local', 'Plastic Scale (Big)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1065, '3313211822', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'QPT9RH17TVJBJVE', NULL, NULL, NULL, 'PtgdkBaq74x', 'Local', 'Plastic Toilet Brush', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1066, '9424846326', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', '7LK9AD4D5BQ1SC7', NULL, NULL, NULL, 'F914pH5wDrN', 'Local', 'Plastic Tools (Medium)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1067, '3354255647', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'R7QEMUA65MIZMFJ', NULL, NULL, NULL, 'R2OCXnEKNeW', 'Local', 'Plastic Writing Board', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1068, '4648621398', NULL, '4TQXLMLBLJPAQP1', 'MV7C1KBSEUBJHHD', '2V6ILOLCOELT8LI', NULL, NULL, NULL, 'Szipnxb1gVH', 'Local', 'Poly Bag (16 x 26)', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1069, '5541312487', NULL, '4TQXLMLBLJPAQP1', 'MV7C1KBSEUBJHHD', 'IBHIEY9N74TG7FF', NULL, NULL, NULL, 'QpkAW7PzZ8c', 'Local', 'Poly Bag (16 x 26)', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1070, '7376444756', NULL, '4TQXLMLBLJPAQP1', 'MV7C1KBSEUBJHHD', 'KUB8L9OP7U8W63N', NULL, NULL, NULL, 'cPLViyQ8YrF', 'Local', 'Poly Bag (21 x 31)', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1071, '2156662456', NULL, '4TQXLMLBLJPAQP1', 'MV7C1KBSEUBJHHD', 'EG6HT9HA1X4TNCM', NULL, NULL, NULL, 'WPFkBAG3iEe', 'Local', 'Poly Bag (21 x 31)', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1072, '7855596578', NULL, '4TQXLMLBLJPAQP1', 'MV7C1KBSEUBJHHD', '9K4B6SDVIGDPY46', NULL, NULL, NULL, 'qYoRFumvn0i', 'Local', 'Poly Bag (21 x 32)', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1073, '1487471413', NULL, '4TQXLMLBLJPAQP1', 'MV7C1KBSEUBJHHD', 'BKCIWER8SAPXLZG', NULL, NULL, NULL, 'eq5aMdgrfby', 'Local', 'Poly Bag (For Lobster)', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1074, '1653694647', NULL, '4TQXLMLBLJPAQP1', 'MV7C1KBSEUBJHHD', '9FQ5ZWL5Z912PSH', NULL, NULL, NULL, 'N4r7ozhZwEH', 'Local', 'Poly Bag (For Lobster)', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1);
INSERT INTO `product_information` (`id`, `product_id`, `product_id_two`, `category_id`, `sub_cat_id`, `brand_id`, `country`, `parts`, `tag`, `sku`, `ptype_id`, `product_name`, `price`, `re_order_level`, `unit`, `tax`, `serial_no`, `product_model`, `product_details`, `image`, `status`) VALUES
(1075, '9953171138', NULL, '4TQXLMLBLJPAQP1', 'MV7C1KBSEUBJHHD', 'PJNYTECX18ORXND', NULL, NULL, NULL, 'rnBizG7LEdC', 'Import', 'Poly Bag (For Lobster)', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1076, '7566182345', NULL, '4TQXLMLBLJPAQP1', 'MV7C1KBSEUBJHHD', 'DGU32CGV7FCYPBB', NULL, NULL, NULL, 'MKIWqzpPZnD', 'Local', 'Poly Bag (For Lobster)', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1077, '6237645744', NULL, '4TQXLMLBLJPAQP1', 'AP7VRUIXZF1AZ3Q', 'GHX75IJ3PDV1X2U', NULL, NULL, NULL, 'bmKLFOAnSaT', 'Local', 'Poly Rope', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1078, '2945588669', NULL, '4TQXLMLBLJPAQP1', 'AP7VRUIXZF1AZ3Q', 'DSCJTCPKV95PH8G', NULL, NULL, NULL, 'fY9gWmkAH7R', 'Local', 'Poly Rope', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1079, '9495138564', NULL, '4TQXLMLBLJPAQP1', 'AP7VRUIXZF1AZ3Q', 'NCP6UX7G92R33UH', NULL, NULL, NULL, 'Hc68tGZsdbf', 'Local', 'Poly Rope', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1080, '3242254857', NULL, '4TQXLMLBLJPAQP1', 'AP7VRUIXZF1AZ3Q', 'LAQF1GKVWW43SAY', NULL, NULL, NULL, 'pSHsWDAfLYC', 'Local', 'Poly Rope 8mm', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1081, '6215142411', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'ANCPS7BCFXO96A8', NULL, NULL, NULL, 'W2UmFuL8DrY', 'Local', 'Poly Tie', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1082, '4336192951', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'MPZ6F6G9WVVJCMR', NULL, NULL, NULL, 'wpQXCoE8G5t', 'Local', 'Pot (Big)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1083, '2173515426', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'BZBNJ9XTCROJZD4', NULL, NULL, NULL, 'XxqyYWON3sM', 'Local', 'Potato Cutter', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1084, '2136779217', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'O5G6KYUUWY8K4DQ', NULL, NULL, NULL, 'JoTrDVK3vXS', 'Local', 'Potato Cutter', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1085, '8823671896', NULL, '4TQXLMLBLJPAQP1', '3DAABSCEK5CQYBM', 'NR2SNDBD4IQB1ZK', NULL, NULL, NULL, '3VNSB9RfF0s', 'Import', 'PP Bag Repairing Twine 2.5mm', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1086, '5518553716', NULL, '4TQXLMLBLJPAQP1', '3DAABSCEK5CQYBM', 'MEYI1IW9NLB1TSY', NULL, NULL, NULL, 'hY6LdT9Jjqe', 'Import', 'PP Bag Repairing Twine 2.5mm (Yellow)', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1087, '8118196428', NULL, '4TQXLMLBLJPAQP1', '96NEXH7VXOGZEEV', '8DIKFC7UWKX8RCL', NULL, NULL, NULL, 'Z7FdVNLwAgt', 'Local', 'PP Net 2.4mm x 200mm (Double) (Thai)', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1088, '1415262944', NULL, '4TQXLMLBLJPAQP1', '96NEXH7VXOGZEEV', 'V2WDAEPRK1BX1KX', NULL, NULL, NULL, 'Vuv2gG7jJwS', 'Import', 'PP Net 240mm (Thai)', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1089, '5723127847', NULL, '4TQXLMLBLJPAQP1', '96NEXH7VXOGZEEV', 'WFFHERD1ISVT49J', NULL, NULL, NULL, 'Utw5EBYCVjy', 'Local', 'PP Net 30mm (Thai)', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1090, '4733947911', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'DYOUE166HURELR6', NULL, NULL, NULL, 'Z6uVWxnv4gC', 'Local', 'Prayer Mat (Big)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1091, '7886517743', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'LEIT1HZ4329Y5W6', NULL, NULL, NULL, 'tHdnfQiROLJ', 'Local', 'Prayer Mat (Small)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1092, '1822764847', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'YYAS9QQ5GGRDM94', NULL, NULL, NULL, 'kyLrTea0fwF', 'Local', 'Pregabalin 25mg', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1093, '8349888453', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'ZD7JN6TFTTYTC4X', NULL, NULL, NULL, 'B8hVe2PEXOG', 'Local', 'Pregabalin 75mg', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1094, '6282795683', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'WCMORNNUKNA7VZ8', NULL, NULL, NULL, 'fzXKw3JGNAj', 'Local', 'Pressure Cutout', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1095, '6579181122', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'TC5XAX6Y9UU1KCM', NULL, NULL, NULL, '34fzDh6OwYB', 'Local', 'Pressure Cutout Switch', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1096, '3422445435', NULL, '4TQXLMLBLJPAQP1', 'AP7VRUIXZF1AZ3Q', 'A1DEHQEALKBICMX', NULL, NULL, NULL, 'j5hZsla1GPC', 'Local', 'Propeller Net Cutting Knife', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1097, '6461779147', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'CL9LEDWWAL24VE9', NULL, NULL, NULL, 'XV1nNI3Ziyj', 'Local', 'Provitor 20mg', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1098, '6449255985', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'N7SGDTLQ6756MPP', NULL, NULL, NULL, 'G21Y3Svl6Ri', 'Local', 'Provitor 20mg', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1099, '4652444569', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', '6IB4TFQ58CQW7YW', NULL, NULL, NULL, '0rFxHKWCcUl', 'Local', 'Pureit Kit (1500 Ltrs)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1100, '2486649221', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'MC4D3741DTFR5MQ', NULL, NULL, NULL, 'sWIX2v86r1O', 'Local', 'Pureit Kit (3000 Ltrs)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1101, '7229192994', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'GYQJW9OKURJTBDO', NULL, NULL, NULL, 'XqKDbIeycon', 'Local', 'Pureit Strainer', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1102, '3734234468', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'MIZULRHUW22X5K1', NULL, NULL, NULL, 'iXySgbzRlap', 'Local', 'Push Switch (Bell)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1103, '9137892198', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', '3ZMIGXEBZDH3T8S', NULL, NULL, NULL, 'j5ArmpXa4fU', 'Local', 'Push Switch 6A', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1104, '3112853157', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'HTNAKJAEFUO77UR', NULL, NULL, NULL, 'a9gRQsqnFV3', 'Local', 'Putting', NULL, NULL, 'Set', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1105, '8657277166', NULL, '2PURPOP1ACPKINM', 'AA3R7TZFOKO3ZQD', 'T5MV5YK5OOPAYOD', NULL, NULL, NULL, 'HRwagtl6erc', 'Local', 'PVC Pipe Clamp 27mm', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1106, '2618213182', NULL, 'EB886WD44XASJTL', 'B29KZMCXGOPBJG3', 'HOKHILXHLBZZA64', NULL, NULL, NULL, 'VjEtK9H68n5', 'Local', 'PVC Tape', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1107, '5911265629', NULL, '1DFJOUKTOQ28QOI', '8SM6ZUETPZKZHVB', 'OMFNH13RVMTUDRV', NULL, NULL, NULL, '7vqsTmhWUoS', 'Local', 'Pyrometer (650C)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1108, '8257164429', NULL, 'Y2KK6KNJQIWD23Z', 'WLR1LOHS5JONLTJ', '34DHWLPLU5VLT2R', NULL, NULL, NULL, '80uSA3L1YUz', 'Local', 'Quran Khatam', NULL, NULL, NULL, 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1109, '3984343648', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', '5RKNRPVY2CT1HSS', NULL, NULL, NULL, 'X2s1MJpPjAa', 'Local', 'Rabe 20mg', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1110, '7723464964', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'UDJ4GPVVH9DY2GV', NULL, NULL, NULL, 'EqpsOuim9Zh', 'Local', 'Rabe 30mg', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1111, '5474135792', NULL, 'Y2KK6KNJQIWD23Z', 'WLR1LOHS5JONLTJ', 'SMPF52XPK7VTM8K', NULL, NULL, NULL, 'fhmM9bQyoJH', 'Local', 'Radar Magnetron Repair (Furuno)', NULL, NULL, NULL, 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1112, '8914486165', NULL, 'TJT23BXZLWIDR58', 'DTCTAOMKJZ2SI9X', 'YXFIHDBQ8C1NV5J', NULL, NULL, NULL, 'oqxVr5ELPJG', 'Local', 'Rain Coat', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1113, '1119357258', NULL, 'TJT23BXZLWIDR58', 'DTCTAOMKJZ2SI9X', '3L1P6XMPEM6NCVH', NULL, NULL, NULL, 'olX1n8MctDu', 'Local', 'Rain Coat', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1114, '3237661222', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'AXFG65IIVYMCW9K', NULL, NULL, NULL, '92AVeSKnCTU', 'Local', 'Ratchet Wrench 10\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1115, '6587599492', NULL, 'PQ4XVDW96CL7QQZ', 'PZNECLLN1S7KLAT', 'WO9PXYQ8FX7QO86', NULL, NULL, NULL, 'Z5bOqdUkCjL', 'Local', 'Receiver Valve w/ Capnut (1/4 x 3/8)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1116, '3293943184', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', '4VPAAN6E6FKXR6N', NULL, NULL, NULL, 'BqxEYrThimG', 'Local', 'Red Hit', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1117, '5583456741', NULL, 'MH35OWBFMR35ILN', 'XMAG1UXN247Z1FF', 'IVX5I65BI3NQBCR', NULL, NULL, NULL, 'neotJMT8IlW', 'Local', 'Red Lead Paint', NULL, NULL, 'Tin', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1118, '5878485511', NULL, 'MH35OWBFMR35ILN', 'XMAG1UXN247Z1FF', '8G4FJV6UECAN6X2', NULL, NULL, NULL, 'XSYljDuRZrP', 'Local', 'Red Oxide Paint', NULL, NULL, 'Gallon', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1119, '7338567568', NULL, 'MH35OWBFMR35ILN', 'XMAG1UXN247Z1FF', '9WKKAIX1DBXHKM1', NULL, NULL, NULL, 'yEMkS3DqATV', 'Local', 'Red Oxide Paint', NULL, NULL, 'Gallon', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1120, '1713386839', NULL, '32GAZCG9EGXK5S5', 'TDZYAAE2449JJPO', '7SDVM2NCPUIOJAH', NULL, NULL, NULL, 'FP0f9TdkAMR', 'Import', 'Ref. Compressor High Pressure Gauges', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1121, '3636354748', NULL, '32GAZCG9EGXK5S5', 'TDZYAAE2449JJPO', '5POMLHMZW6LZDZA', NULL, NULL, NULL, 'VQTGN3CD0S4', 'Local', 'Ref. Compressor Indicator Switch', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1122, '2152885566', NULL, '32GAZCG9EGXK5S5', 'TDZYAAE2449JJPO', 'P9BWQNCRRI3UMJ7', NULL, NULL, NULL, 'FquOVATnXRz', 'Import', 'Ref. Compressor Low Pressure Gauges', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1123, '7543653336', NULL, '32GAZCG9EGXK5S5', 'TDZYAAE2449JJPO', 'ZFKAKFYB3AQB6BF', NULL, NULL, NULL, 'BFPzDnEZ27O', 'Local', 'Ref. Compressor Reducer (ID-42>28Mm)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1124, '3874335576', NULL, 'EB886WD44XASJTL', 'B29KZMCXGOPBJG3', 'CSU6MMYQU6UMQ8K', NULL, NULL, NULL, 'h6HW9AJc7Mx', 'Local', 'Register Book', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1125, '8977236166', NULL, 'EB886WD44XASJTL', 'B29KZMCXGOPBJG3', 'OMBJQDJGSFYSOX2', NULL, NULL, NULL, 'Eqlw4WX8rnt', 'Local', 'Register Book', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1126, '9429699348', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'PBPZ47OFZEUDB4Y', NULL, NULL, NULL, 'Q7bGZFeTYa8', 'Local', 'Requisition Paper', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1127, '7918312367', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'G5UIJFF7ZRXDSYH', NULL, NULL, NULL, '0pBoLktReAm', 'Local', 'Requisition Paper', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1128, '1318626672', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'FK4EVUT358TIJ3X', NULL, NULL, NULL, 'vfdOIlVTQhK', 'Local', 'Reset Handle 0.5\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1129, '3266446571', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', '451LVOUNRJJOQGA', NULL, NULL, NULL, 'B8LGhoEH1OZ', 'Local', 'Rexin', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1130, '8359224732', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'XWN3NUWN91XCPC3', NULL, NULL, NULL, 'E1kIamJlDpf', 'Local', 'Rexin (5\' x 3\')', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1131, '8459669158', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', '5AGIT4U5CGSQDRQ', NULL, NULL, NULL, '1FE0zoRiQHO', 'Local', 'Rexin (6 x 7 x 1.5\')', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1132, '1269764797', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', '7N5LV46639SQ67X', NULL, NULL, NULL, '52lK4IWpcFk', 'Local', 'Riboson', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1133, '2585199188', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'RH61MU21IRPW9C5', NULL, NULL, NULL, '3DWM9iKCFXu', 'Local', 'Rice Bowl (Big)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1134, '3256141162', NULL, 'EB886WD44XASJTL', 'B29KZMCXGOPBJG3', 'YCLLOHZZXQ17COB', NULL, NULL, NULL, '8OHnJf9NGFg', 'Local', 'Ring File', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1135, '7173219979', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'MFE1FGHZ24JI8Z8', NULL, NULL, NULL, 'tVsunWba6kj', 'Local', 'Ring Wrench (No. 11, 12, 13, 14)', NULL, NULL, 'Set', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1136, '8357927368', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'KMVB4QEG4OVI4YR', NULL, NULL, NULL, '3FgwuXJM2kU', 'Local', 'Ring Wrench (No. 16, 17)', NULL, NULL, 'Set', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1137, '7761463987', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', '4R3NUY1OX4ECQH2', NULL, NULL, NULL, 'nhK7Pe0jDA3', 'Local', 'Ring Wrench (No. 18, 19)', NULL, NULL, 'Set', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1138, '5846484924', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'UN8YXBC6M6ZD35U', NULL, NULL, NULL, 'UfIhNoWestx', 'Local', 'Rocipro 500mg', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1139, '9523968148', NULL, '2PURPOP1ACPKINM', 'EBZFU3KQHCL2IS6', '1XEDUZUCEMDAEIP', NULL, NULL, NULL, 'uSGTyeH8Pok', 'Local', 'Rocker Arm Housing Gasket', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1140, '1649937267', NULL, '2PURPOP1ACPKINM', 'EBZFU3KQHCL2IS6', 'T3Z84KWEL28A714', NULL, NULL, NULL, 'XlktG5xEdK6', 'Local', 'Rocker Cover Gasket', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1141, '8772431656', NULL, '2PURPOP1ACPKINM', 'EBZFU3KQHCL2IS6', '4THLF8DQ29MSUVA', NULL, NULL, NULL, 'WGQnSwH5CmR', 'Local', 'Rocker Gasket', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1142, '3967828658', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', '58PNRQAEHO3JLXJ', NULL, NULL, NULL, 'ct01qUMQ2VN', 'Local', 'Rocket Parachute', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1143, '3765318381', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'UYQL8FQVFJVQIEW', NULL, NULL, NULL, 'pnvaG3RWQTY', 'Local', 'Rolac 10mg', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1144, '5675892614', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'NTK8WBKDW2YA9NT', NULL, NULL, NULL, 'JrV407pRFzH', 'Local', 'Rolac 10mg', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1145, '6595153193', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', '133ONZFK6VKCMBP', NULL, NULL, NULL, 'WmhLVzCFKxG', 'Local', 'Roll Bandage', NULL, NULL, 'Box', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1146, '4638759155', NULL, '2PURPOP1ACPKINM', '2LRMZF78F9TMQLN', '8I4L4NB38WLWKL5', NULL, '22216E', NULL, '22216E', 'Local', 'Roller Bearing 22216E', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1147, '4737714354', NULL, '2PURPOP1ACPKINM', '2LRMZF78F9TMQLN', '22DS7AZ62H3YCAC', NULL, '22311E SKF', NULL, '22311E SKF', 'Local', 'Roller Bearing 22311E SKF', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1148, '8635287198', NULL, '4TQXLMLBLJPAQP1', 'AP7VRUIXZF1AZ3Q', 'A46W1NTHAAT8FS1', NULL, NULL, NULL, '4Y3dvf6hzeg', 'Import', 'Rope 22mm', NULL, NULL, 'Mtr', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1149, '3641994214', NULL, '4TQXLMLBLJPAQP1', 'AP7VRUIXZF1AZ3Q', '5L17GIBWR2R96ZJ', NULL, NULL, NULL, '6ae3NGJsxH9', 'Local', 'Rope 3mm', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1150, '5842536269', NULL, 'EB886WD44XASJTL', 'B29KZMCXGOPBJG3', 'AS5IYV25NFDUPOK', NULL, NULL, NULL, 'fI20VDXxdsY', 'Local', 'Rough Pad', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1151, '3235288679', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'D8M87NERRA6LM5W', NULL, NULL, NULL, 'KovtaGflqzI', 'Local', 'Round Glass (Light Shade OD 3\")', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1152, '8325799269', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'O9Q7YSQ53OPDAMN', NULL, NULL, NULL, '4QIo32zkWKP', 'Local', 'Round Glass OD 3\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1153, '1914192341', NULL, '2PURPOP1ACPKINM', 'DVB9GGYBU2TQYKH', 'P9LXKCHWKKPMLPB', NULL, NULL, NULL, 'pPXckDz3Bel', 'Local', 'Royal Plug Screw 2\"', NULL, NULL, 'Box', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1154, '5979118775', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'TKRSQIN3PZX2E4D', NULL, NULL, NULL, 'eUSnu0wEOkt', 'Local', 'RPM Cable', NULL, NULL, 'Mtr', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1155, '2737826557', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'CA9JZO12HIYWZP5', NULL, NULL, NULL, 'Le8M4HrP2wm', 'Local', 'RPM Cable', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1156, '6125682881', NULL, '1DFJOUKTOQ28QOI', '8SM6ZUETPZKZHVB', 'OC19ER51NCAM8CU', NULL, NULL, NULL, 'YHqiJdSKt7s', 'Local', 'RPM Meter', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1157, '6879819335', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'YR1I35G4DDRKQI4', NULL, NULL, NULL, 'UGwClaO4cgn', 'Local', 'RTV Silicon (Red)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1158, '7581393134', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'R86AK13XGTUKZ2R', NULL, NULL, NULL, 'z6cho58iYJr', 'Local', 'RTV Silicon (Red)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1159, '6394289116', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'UQM2GRQQGC6DOI1', NULL, NULL, NULL, 'a9RrLwHkMhs', 'Local', 'RTV Silicon (Red)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1160, '6373492476', NULL, 'EB886WD44XASJTL', 'B29KZMCXGOPBJG3', 'EBDVRIR2YZP54QA', NULL, NULL, NULL, '5iB20AElJYc', 'Local', 'Rubber', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1161, '8228529965', NULL, 'PQ4XVDW96CL7QQZ', 'B4IT4AZ9VY5PBXP', '7TNILGVZ12V1FRJ', NULL, NULL, NULL, 'iYvCxDR40wq', 'Local', 'Rubber', NULL, NULL, 'Gm', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1162, '7414417815', NULL, 'PQ4XVDW96CL7QQZ', 'B4IT4AZ9VY5PBXP', 'XZLMOPJTWC9RWP8', NULL, NULL, NULL, 'eAbsfVjMOGP', 'Local', 'Rubber Bush', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1163, '1343882374', NULL, 'PQ4XVDW96CL7QQZ', 'B4IT4AZ9VY5PBXP', '47BRZMWOE61NPZT', NULL, NULL, NULL, 'kd73rZKVOAy', 'Local', 'Rubber Coupling', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1164, '3348693665', NULL, 'PQ4XVDW96CL7QQZ', 'B4IT4AZ9VY5PBXP', 'U9JAO24YJ3EVJKQ', NULL, NULL, NULL, 'rcEfRlPI5Nn', 'Local', 'Rubber Coupling Pad', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1165, '9384734729', NULL, 'PQ4XVDW96CL7QQZ', 'B4IT4AZ9VY5PBXP', 'RRABSPPZAZ66EKR', NULL, 'AR-200', NULL, 'AR-200', 'Local', 'Rubber Coupling Pad AR-200', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1166, '8691163386', NULL, 'PQ4XVDW96CL7QQZ', 'B4IT4AZ9VY5PBXP', 'JWQMAFYIFRPHRDX', NULL, 'KR-200', NULL, 'KR-200', 'Local', 'Rubber Coupling Pad KR-200', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1167, '5319264649', NULL, 'PQ4XVDW96CL7QQZ', 'B4IT4AZ9VY5PBXP', 'T9GUV94KGPT6KN9', NULL, NULL, NULL, 'WfTDeI5FdXp', 'Local', 'Rubber for Fish Hold Cover (4\' x 4\')', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1168, '3953324516', NULL, '2PURPOP1ACPKINM', 'EBZFU3KQHCL2IS6', 'X7TSSORP5XEH4DV', NULL, NULL, NULL, 'YMzC9cRXNaV', 'Local', 'Rubber Gasket (3mm x 6\' x 4\')', NULL, NULL, 'Lbs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1169, '5696426352', NULL, '2PURPOP1ACPKINM', 'JUKRRNVHG6LOEUR', 'OMT41PU8HARH8CQ', NULL, NULL, NULL, 'puEdK1tcJm5', 'Local', 'Rubber Hose Pipe', NULL, NULL, 'Ft', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1170, '3849925999', NULL, '2PURPOP1ACPKINM', 'JUKRRNVHG6LOEUR', 'QCFGNKJE15NC3RS', NULL, NULL, NULL, 'h236KZ0dcJa', 'Local', 'Rubber Hose Pipe 0.75\"', NULL, NULL, 'Ft', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1171, '7989184867', NULL, '2PURPOP1ACPKINM', 'JUKRRNVHG6LOEUR', 'WY737U3NS3CW5BK', NULL, NULL, NULL, '8Zfu5XnezU6', 'Local', 'Rubber Hose Pipe 1.5\"', NULL, NULL, 'Ft', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1172, '4851663549', NULL, '2PURPOP1ACPKINM', 'JUKRRNVHG6LOEUR', '3UNVDGMMRYFOHEJ', NULL, NULL, NULL, 'CLJnsUuB7bM', 'Local', 'Rubber Hose Pipe 2\"', NULL, NULL, 'Ft', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1173, '6195839148', NULL, '2PURPOP1ACPKINM', 'JUKRRNVHG6LOEUR', 'WBB4VU6UICAX372', NULL, NULL, NULL, 'bYlFeCc9aN4', 'Local', 'Rubber Hose Pipe 3\"', NULL, NULL, 'Ft', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1174, '6473295862', NULL, '2PURPOP1ACPKINM', 'JUKRRNVHG6LOEUR', 'L2JNQR9U8YUSVGE', NULL, NULL, NULL, 'nhcDHMTZj2v', 'Local', 'Rubber Hose Pipe 4\"', NULL, NULL, 'Ft', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1175, '2834669183', NULL, '2PURPOP1ACPKINM', 'EBZFU3KQHCL2IS6', '66JTLB3GSNKM5IX', NULL, NULL, NULL, 'GD73SIZdxbo', 'Local', 'Rubber O\'Ring Seal', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1176, '5976911351', NULL, '2PURPOP1ACPKINM', 'JUKRRNVHG6LOEUR', 'NK5WTL8ZIYE36PH', NULL, NULL, NULL, 'rf5HR6jevih', 'Local', 'Rubber Pipe LP Gas', NULL, NULL, 'Mtr', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1177, '4319674329', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'W7S616JWD6X3BVF', NULL, NULL, NULL, 'c1bWDO7egKl', 'Local', 'Rubber Silicon Tube', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1178, '6118647513', NULL, '2PURPOP1ACPKINM', 'DVB9GGYBU2TQYKH', 'FYO2JRPYZ4XZ4ON', NULL, NULL, NULL, 'XLiv2Pd7uEm', 'Local', 'Rubber Washer', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1179, '5825853369', NULL, '2PURPOP1ACPKINM', 'DVB9GGYBU2TQYKH', 'MCCNOSIG9RUTD4Z', NULL, NULL, NULL, '7dDnCithoIK', 'Local', 'Rubber Washer (Big)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1180, '3767269578', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'SXATXNSZCC5EZOL', NULL, NULL, NULL, 'n8sHvokW0ZG', 'Local', 'Rupenta', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1181, '1261722878', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'J85ZZFQ5ZBT16BX', NULL, NULL, NULL, 'qLEcANzQkyI', 'Local', 'Rupenta', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1182, '4113925916', NULL, 'TJT23BXZLWIDR58', 'DTCTAOMKJZ2SI9X', 'LF9KIP2HOF7APNE', NULL, NULL, NULL, 'dhkZ2q5wnbV', 'Local', 'Safety Goggles', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1183, '3569185547', NULL, 'TJT23BXZLWIDR58', 'DTCTAOMKJZ2SI9X', 'NKEVAQJROHCMYR7', NULL, NULL, NULL, 'JwSqYPlUB5i', 'Local', 'Safety Helmet', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1184, '9629569984', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'ZW8199LZDDLKRO1', NULL, NULL, NULL, 'HoyN0jPdsWm', 'Local', 'Safety Lock', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1185, '1122383611', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'A5TTYEI68XMHBQO', NULL, NULL, NULL, 'EBCqt6bmgyZ', 'Local', 'Safety Lock for Fish Hold', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1186, '6768551771', NULL, 'TJT23BXZLWIDR58', 'DTCTAOMKJZ2SI9X', 'JNCSM9BWRGJLMEH', NULL, NULL, NULL, 'ANbkw3fxTqa', 'Local', 'Safety Shoe', NULL, NULL, 'Pair', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1187, '9884138434', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'I579981HIB23WDA', NULL, NULL, NULL, 'PxKkDbdJ92Z', 'Local', 'Saline Set', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1188, '2627392263', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'MC1GSWLTS5P9D42', NULL, NULL, NULL, 'zOF6mnbvRcl', 'Local', 'Sangel', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1189, '2735881271', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', '254EKPZ4V7SIAWD', NULL, NULL, NULL, 'F7hjHBs3piz', 'Local', 'Saucepan', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1190, '7677266362', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'GG9KVAQJIT972Q7', NULL, NULL, NULL, 'dH17b8DGyQW', 'Local', 'Saucepan (Medium)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1191, '6861574525', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', '91RP1GTFMAKM14B', NULL, NULL, NULL, '7UzVWuoaPdL', 'Local', 'Saucepan (Small)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1192, '6526859425', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'DR1RCH5O9BMV85A', NULL, NULL, NULL, 'hGmiuQ8T9Pf', 'Local', 'Saucepan 19\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1193, '4153854124', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'K8HOUPGVKP3QP2S', NULL, NULL, NULL, 'mUVpGEuQWh5', 'Local', 'Saucepan w/ Cover 21\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1194, '7832478677', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'YG5I2PSIMAOBWMP', NULL, NULL, NULL, 'ICjHV1A0DRX', 'Local', 'Savlon (1 Ltr)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1195, '2249993767', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'B98UNVRECWFDQV6', NULL, NULL, NULL, 'RqSjdODxrb1', 'Local', 'Savlon (1 Ltr)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1196, '2439243751', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'Q7A5O361N6H2568', NULL, NULL, NULL, 'UKtMpi4j5ao', 'Local', 'Savlon (500ml)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1197, '2891351321', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'S1FIRBQJ9VA37L8', NULL, NULL, NULL, 'pqldmtywiHj', 'Local', 'Savlon (500ml)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1198, '9754469426', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'ADWNYOCTH478ZU7', NULL, NULL, NULL, 'qUoxp4DGeH5', 'Local', 'Savlon Antiseptic Cream (100g)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1199, '3223915881', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'L78ZUGFNFKQRK7N', NULL, NULL, NULL, 'EBOxybaYAH9', 'Local', 'Savlon Antiseptic Cream (100g)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1200, '8385193439', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', '4J8PIJ59XD22DOM', NULL, NULL, NULL, 'OtIfBVa2GNC', 'Local', 'Savlon Soap', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1201, '1776622573', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'A34H4S78A5B16K7', NULL, NULL, NULL, '3k6dJxHzjKU', 'Local', 'Scale (5kg)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1202, '8692287695', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'LDZ37RGOXUS465J', NULL, NULL, NULL, 'aIKeGHY7guQ', 'Local', 'Scissors', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1203, '8984335545', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'V69HB4ZIJGRQFN9', NULL, NULL, NULL, 'TWhkSxpPU0u', 'Local', 'Screw Driver 10\" (-)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1204, '3216327815', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'QH1FPI4JUSS3KTG', NULL, NULL, NULL, 'ZR0ILTOMjwD', 'Local', 'Screw Driver 12\" (-)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1205, '6442118587', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'Z5UG8XZJQE5HBV3', NULL, NULL, NULL, 'ViCT9nGeNd7', 'Local', 'Screw Driver 12\" (+)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1206, '2223957488', NULL, '32GAZCG9EGXK5S5', 'TDZYAAE2449JJPO', '2S61O54VUAN9PCJ', NULL, '8976', NULL, '8976', 'Import', 'Sea Water Cylinder Head Cover Set F-16 8976', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1207, '6565464587', NULL, '32GAZCG9EGXK5S5', 'TDZYAAE2449JJPO', '5KGVEOA7JOHS2SZ', NULL, '8976/88', NULL, '8976/88', 'Import', 'Sea Water Cylinder Head Cover Set F-16 8976/88', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1208, '4995316142', NULL, '2PURPOP1ACPKINM', '87G3NU8TY4J2W25', 'TCOE2737C68UXDJ', NULL, NULL, NULL, 'pSO4x6AGdUE', 'Local', 'Sea Water Pump Bolt', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1209, '1353733124', NULL, 'EB886WD44XASJTL', 'B29KZMCXGOPBJG3', 'BQIL5YTPT3YB7MU', NULL, NULL, NULL, 'nTsWMqz6hOQ', 'Local', 'Seal Tape', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1210, '7623762728', NULL, 'EB886WD44XASJTL', 'B29KZMCXGOPBJG3', 'ABDRHQ7CSM5S7R9', NULL, NULL, NULL, 'tHnQ1TYAXFd', 'Local', 'Seal Tape', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1211, '5444914627', NULL, 'EB886WD44XASJTL', 'B29KZMCXGOPBJG3', 'CN7H3UAMUQL7D15', NULL, NULL, NULL, 'fSvUgL5el4T', 'Local', 'Seal Tape', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1212, '7936137153', NULL, 'EB886WD44XASJTL', 'B29KZMCXGOPBJG3', 'O7T16S3QJJKJ4G2', NULL, NULL, NULL, 'ws8fzZhUtTg', 'Local', 'Seal Tape', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1213, '5286197878', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'Z362SQKPTO18BG4', NULL, NULL, NULL, '8pwINYCOVhn', 'Local', 'Search Light Bulb 1000W', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1214, '7833722834', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'OYCULAU58HANLC1', NULL, NULL, NULL, 'fc2pU4AFnPv', 'Local', 'Search Light Bulb 1000W (APS) (Pin Type)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1215, '8632191651', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'QZPOB8J6PHLYQO3', NULL, NULL, NULL, 'MRVh2XZYN3n', 'Local', 'Search Light Holder', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1216, '1356129348', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'AQ63Q9WHS9BXCER', NULL, NULL, NULL, 'TkiVr9fuUDX', 'Local', 'Seclo 20mg', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1217, '2234335972', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'V8H4KVMM6JTQUH1', NULL, NULL, NULL, 'Mrs8mk4ij9N', 'Local', 'Secnid DS', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1218, '7853898924', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'LLVCS11P2M78UEX', NULL, NULL, NULL, 'syOZle3rPwV', 'Local', 'Selector Switch', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1219, '3863236774', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'CHLXYCJBONHHROO', NULL, NULL, NULL, '9hDgE2GyoJr', 'Local', 'Self Igniting Light', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1220, '3346167818', NULL, '2PURPOP1ACPKINM', 'US9B6OUBZYA62E8', 'FWP5DCU71ONQK7E', NULL, '1912-02', NULL, '1912-02', 'Local', 'Separator Filter 1912-02 (Sakura)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1221, '2961645526', NULL, '2PURPOP1ACPKINM', 'US9B6OUBZYA62E8', '121629W8AV3DNLE', NULL, '1912-SM2020', NULL, '1912-SM2020', 'Local', 'Separator Filter 1912-SM2020 (Sakura)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1222, '6673734475', NULL, '2PURPOP1ACPKINM', 'US9B6OUBZYA62E8', 'ZOE9198X9X4ZVLN', NULL, '1912-SM2020', NULL, '1912-SM2020', 'Local', 'Separator Filter 1912-SM2020 (Sakura)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1223, '2147336134', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'AUIFKYL3YALZZOH', NULL, NULL, NULL, 'wBPOM2c3s41', 'Local', 'Sergel 20mg', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1224, '3789966682', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'MKSLFTOUQGPIDTV', NULL, NULL, NULL, 'e7MWBpY9Fqg', 'Local', 'Sergel 20mg', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1225, '8741258996', NULL, 'WPHNEVLXT34GIFJ', 'TNXPU7SP8EHWZ62', 'SA67HXVXUAYLYE8', NULL, '4089811', NULL, '4089811', 'Local', 'Set Ring Piston 4089811', NULL, NULL, 'Set', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1226, '1757979781', NULL, '2PURPOP1ACPKINM', 'EBZFU3KQHCL2IS6', 'T7EXAHZVAFH73T8', NULL, NULL, NULL, 'awBYmASscUL', 'Local', 'Shaft Seal Bock F-16 for Compressor', NULL, NULL, 'Set', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1227, '7623592941', NULL, '2PURPOP1ACPKINM', 'EBZFU3KQHCL2IS6', 'CK6YOQ1UX197I14', NULL, '8012', NULL, '8012', 'Import', 'Shaft Seal Set F-16 (8012)', NULL, NULL, 'Set', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1228, '4394856483', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'QXVOP797A4QCU71', NULL, NULL, NULL, 'jeyPmELMNh3', 'Local', 'Shampoo 180ml', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1229, '5738841256', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'TBS8G3NO6RR9MGA', NULL, NULL, NULL, 'RK7YjmC8Wrv', 'Local', 'Shampoo 200ml', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1230, '1595689241', NULL, 'EB886WD44XASJTL', 'B29KZMCXGOPBJG3', 'HR4UWFN7QEZDLHG', NULL, NULL, NULL, 'cmbNg1S3PHi', 'Local', 'Sharpener', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1231, '8527343497', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'FZMOZ6CNPJPQCRU', NULL, NULL, NULL, 'K6C9Ypu7Pxv', 'Local', 'Sharpening Stone', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1232, '6967943765', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'OK1Z9K9I6T5ELG8', NULL, NULL, NULL, '2480KF5MaOs', 'Local', 'Sharpening Stone', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1233, '6644825411', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'LQYQKJH5ZQGIHUR', NULL, NULL, NULL, 'xkvfq8o2IAS', 'Local', 'Silicon Tube', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1234, '4783852825', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'HVLYJMI7PTHGSAO', NULL, NULL, NULL, '4bsWQv9RjNF', 'Local', 'Silver Jug', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1235, '5741883944', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', '8K2R33WA9NTHG6E', NULL, NULL, NULL, 'R8iZEywuvDU', 'Local', 'Smoke Signal', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1236, '3294927829', NULL, '2AAUOPF6HLC6PFD', 'JCJAXRURKLP2RTX', 'KTFN23L4WVJ8TB2', NULL, NULL, NULL, 'LlyoYp04UMg', 'Local', 'Snatch Block (4-4 Tons Capacity)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1237, '4974353434', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'H6Y2M13CZTB3TDY', NULL, NULL, NULL, 'clY7hHR9kK4', 'Local', 'Socket Wrench', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1238, '3868237218', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', '39GL2GFJ7B6EQ43', NULL, NULL, NULL, 'cA5Tujpv7HC', 'Local', 'Socket Wrench 1/2', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1239, '3884782261', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'Q35KAKKCURSSA19', NULL, NULL, NULL, '0FV2cAJ1avY', 'Local', 'Socket Wrench 11/16', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1240, '7329218396', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'UP1I6NUVK12NPJT', NULL, NULL, NULL, 'lncqiQeVbS0', 'Local', 'Socket Wrench 11mm', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1241, '3542975472', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', '1EPR1OAHS7TMVM1', NULL, NULL, NULL, '0cUGh9XkIsn', 'Local', 'Socket Wrench 12mm', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1242, '2135362471', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'FKNGD6I4492NPGW', NULL, NULL, NULL, 'jyZrC7nhMHg', 'Local', 'Socket Wrench 14mm (12 Point)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1243, '5946969355', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'CMXM33CJ42LZRIW', NULL, NULL, NULL, 'jry3UVwIlto', 'Local', 'Socket Wrench 17mm (12 Point)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1244, '2644713525', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'YNHHCZG4J1KSRJQ', NULL, NULL, NULL, 'C2hYNf7M41w', 'Local', 'Socket Wrench 19mm', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1245, '1282983895', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', '1UQ95CJABTHQWAH', NULL, NULL, NULL, 'v570OXJDQnm', 'Local', 'Socket Wrench 22mm (6 Point)', NULL, NULL, 'Ltr', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1246, '5369794345', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', '9R4CSM5PTRNTDSE', NULL, NULL, NULL, 'FEnC72uYXfK', 'Local', 'Socket Wrench 23mm (6 Point)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1247, '8119915122', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'WEVIUO5ECFOSJ93', NULL, NULL, NULL, 'ChAYLyxXGH0', 'Local', 'Socket Wrench 3/8', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1248, '8397629795', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'IQBHAV2E2VV76XO', NULL, NULL, NULL, 'GCpqXSErlwV', 'Local', 'Soda', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1249, '1697333683', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'CF4DCGSJ6U5EBC8', NULL, NULL, NULL, 'Lkdislu495r', 'Local', 'Soldering Iron', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1250, '4126955695', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'FM7HRXMJNIOV2S6', NULL, NULL, NULL, 'y1HIzRAca7Z', 'Local', 'Soldering Iron Cutter 300W', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1251, '8869688179', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'HSU7LKI1K7F2KON', NULL, NULL, NULL, 'Lfdg1WjsXoN', 'Local', 'Soldering Lead', NULL, NULL, 'Coil', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1252, '7433366324', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', '418Q2FU3CP74F6D', NULL, NULL, NULL, 'vNgMSr6poFW', 'Local', 'Soldering Lid', NULL, NULL, 'Yrd', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1253, '6765634475', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'XPYX2OSPQZVP4ZT', NULL, NULL, NULL, '8Z6AzcCdyRG', 'Local', 'Soldering Light', NULL, NULL, 'Roll', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1254, '2715752129', NULL, '32GAZCG9EGXK5S5', 'TDZYAAE2449JJPO', 'V8YO1QNUJLMA2MX', NULL, NULL, NULL, 'zeShpmATPCj', 'Local', 'Solenoid Coil 10W 220V (Danfoss)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1);
INSERT INTO `product_information` (`id`, `product_id`, `product_id_two`, `category_id`, `sub_cat_id`, `brand_id`, `country`, `parts`, `tag`, `sku`, `ptype_id`, `product_name`, `price`, `re_order_level`, `unit`, `tax`, `serial_no`, `product_model`, `product_details`, `image`, `status`) VALUES
(1255, '5754787974', NULL, '32GAZCG9EGXK5S5', 'TDZYAAE2449JJPO', 'EM8RO3ZV2XW99MM', NULL, NULL, NULL, 'bPnC2NTyxGw', 'Local', 'Solenoid Coil 10W 220V (Danfoss)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1256, '4133692283', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'MSLSQW1FUE4HFWR', NULL, NULL, NULL, 'Gg69cFjSMNu', 'Local', 'Solenoid Contactor / 8 Pin Rally', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1257, '6485511872', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', '4HW74HHP4C3BT8J', NULL, NULL, NULL, 'aEWekcZOKSI', 'Local', 'Solenoid Relay 220V (Omron)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1258, '5637539437', NULL, '32GAZCG9EGXK5S5', '3XUMP7QWQ7BTCTO', 'XFY7V6HFJUVHECQ', NULL, NULL, NULL, 'qi0NOQ17nyJ', 'Local', 'Solenoid Valve (1 x 1\"/8\" EVR 20) (Danfoss)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1259, '4611111466', NULL, '2PURPOP1ACPKINM', 'JUKRRNVHG6LOEUR', '5PME6GTP854U4BL', NULL, NULL, NULL, '7y95kP2UWOs', 'Local', 'Sounding Pipe 0.75\"', NULL, NULL, 'Ft', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1260, '2987952177', NULL, '2PURPOP1ACPKINM', 'JUKRRNVHG6LOEUR', 'G8EP9VYI4B2R6FQ', NULL, NULL, NULL, 'aJqTLWGmo2S', 'Local', 'Sounding Pipe 0.75\"', NULL, NULL, 'Ft', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1261, '2599742473', NULL, 'EB886WD44XASJTL', 'B29KZMCXGOPBJG3', 'AFLWBFCGQ691LHF', NULL, NULL, NULL, 'i48aICO9x7p', 'Local', 'Sounding Tape', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1262, '1892534888', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'JL8ND2TO3XIOYNK', NULL, NULL, NULL, 'gOGvtFMZmyk', 'Local', 'Span', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1263, '8217186613', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'M3H443UZF8K4MVF', NULL, NULL, NULL, 'JaLsHRBY8tM', 'Local', 'Spray Varnish', NULL, NULL, 'Lbs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1264, '4961443838', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'FBHV6MW9SAJYKK7', NULL, NULL, NULL, 'xGyBMtZdmpK', 'Local', 'Spray Varnish', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1265, '5947765593', NULL, 'EB886WD44XASJTL', 'B29KZMCXGOPBJG3', 'HY85C3B7WIAUMEO', NULL, NULL, NULL, 'mYVHhPtA8Da', 'Local', 'Spring File', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1266, '5583522145', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'BTZW451XCWKB6FX', NULL, NULL, NULL, 'fGrU1sqhkB0', 'Local', 'SQ Mycetin', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1267, '7497423234', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'DKT1WVDLQRAIQPP', NULL, NULL, NULL, 'nRNmiFrBI8f', 'Local', 'SQ Mycetin', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1268, '7882944118', NULL, '2PURPOP1ACPKINM', 'DVB9GGYBU2TQYKH', 'FFDA8UX7KUSL9Q1', NULL, NULL, NULL, 'wTD5jQasP6m', 'Local', 'SS Allen Key Bolt', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1269, '2482793533', NULL, '2PURPOP1ACPKINM', 'DVB9GGYBU2TQYKH', 'JRQQIWKMH4JPH19', NULL, NULL, NULL, 'U9crhqvnJig', 'Local', 'SS Allen Key Bolt (APS)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1270, '6451672846', NULL, 'PQ4XVDW96CL7QQZ', 'PZNECLLN1S7KLAT', '2CT56ROI7FR1AUC', NULL, NULL, NULL, '5aQE63dF2KY', 'Local', 'SS Angle (1.25\" x 1/25\")', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1271, '7185956488', NULL, 'PQ4XVDW96CL7QQZ', 'PZNECLLN1S7KLAT', '5RREMTYRMTBF5CS', NULL, NULL, NULL, 'IUsWAMPt4Xw', 'Local', 'SS Ball Valve 0.25\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1272, '5994334189', NULL, 'PQ4XVDW96CL7QQZ', 'PZNECLLN1S7KLAT', 'MY2WO39DDRD3DSH', NULL, NULL, NULL, 'gVPL4lhJFSD', 'Local', 'SS Ball Valve 0.5\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1273, '3783763594', NULL, 'PQ4XVDW96CL7QQZ', 'PZNECLLN1S7KLAT', 'EBDUGVRPV16STOU', NULL, NULL, NULL, 'pHE0oa4N9Td', 'Local', 'SS Ball Valve 0.5\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1274, '7428514883', NULL, 'PQ4XVDW96CL7QQZ', 'PZNECLLN1S7KLAT', '7BBPI1KT3UFWYGX', NULL, NULL, NULL, 'qgPSIFEbfe4', 'Local', 'SS Ball Valve 0.75\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1275, '3767626885', NULL, 'PQ4XVDW96CL7QQZ', 'PZNECLLN1S7KLAT', 'O938AI6H8YEMDWO', NULL, NULL, NULL, '1gXGu09EQFm', 'Local', 'SS Ball Valve 0.75\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1276, '5452219937', NULL, 'PQ4XVDW96CL7QQZ', 'PZNECLLN1S7KLAT', 'S7IOFUELCJJLPL2', NULL, NULL, NULL, 'mhX7Y9kLNvH', 'Local', 'SS Ball Valve 1\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1277, '9527483956', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'FERA3RXWTNO1WWW', NULL, NULL, NULL, 'befYatKJGc9', 'Local', 'SS Belcha', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1278, '5561168418', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', '5JLJT7ZYTTG6Y6N', NULL, NULL, NULL, 'cRFA8b5XxtI', 'Local', 'SS Bowl', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1279, '8391333419', NULL, '2PURPOP1ACPKINM', 'JUKRRNVHG6LOEUR', '4BKXHOYFHIPZ4WU', NULL, NULL, NULL, 's6AhXSb13ue', 'Local', 'SS Bush Pipe (2-1/4 x 1-3/4 x 20\")', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1280, '2865342325', NULL, '4TQXLMLBLJPAQP1', 'PID8OPNPVESJDI3', 'TWPLL7VM5EXRCGP', NULL, NULL, NULL, 'HRu5v6iWkF1', 'Local', 'SS Chain', NULL, NULL, 'Mtr', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1281, '5798412647', NULL, '2PURPOP1ACPKINM', 'AA3R7TZFOKO3ZQD', 'FL539HS1S1HXGJY', NULL, NULL, NULL, 'j2hvuDLlq4d', 'Local', 'SS Clamp 0.75\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1282, '6184133422', NULL, 'PQ4XVDW96CL7QQZ', 'PZNECLLN1S7KLAT', 'O2129AS15F4LB93', NULL, NULL, NULL, 'I95FkMre4ig', 'Local', 'SS Cross T-Socket 2\" (4 Line)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1283, '7671128148', NULL, '2PURPOP1ACPKINM', 'DVB9GGYBU2TQYKH', '6RXYRJXB6EF7F65', NULL, NULL, NULL, 'QXNqrS9FpKO', 'Local', 'SS Double Nut Bolt (D-8mm, L-1.5\")', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1284, '6582452241', NULL, 'PQ4XVDW96CL7QQZ', 'PZNECLLN1S7KLAT', 'GN1VEY391MPTIN5', NULL, NULL, NULL, '2K8h54GXILS', 'Local', 'SS Elbow 0.75\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1285, '8637447869', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'E2DF1WAFT18H1JT', NULL, NULL, NULL, 'Hn0Xp8kE9KN', 'Local', 'SS Glass', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1286, '3178862644', NULL, '2PURPOP1ACPKINM', 'DVB9GGYBU2TQYKH', '928Z2DY9C8RT9FV', NULL, NULL, NULL, 'GDJVuB1rN96', 'Local', 'SS H. Nipple 0.5\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1287, '5245637425', NULL, '2PURPOP1ACPKINM', 'DVB9GGYBU2TQYKH', 'XJD1T2TAH7BNE11', NULL, NULL, NULL, 'tJhWGFe8Ir7', 'Local', 'SS H. Nipple 0.75\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1288, '4973273311', NULL, '2PURPOP1ACPKINM', 'DVB9GGYBU2TQYKH', '2CYN6SYJT8GHDM7', NULL, NULL, NULL, '9PBY8O5lRWN', 'Local', 'SS H. Nipple 2\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1289, '8751712418', NULL, '2PURPOP1ACPKINM', 'AA3R7TZFOKO3ZQD', '4KVJ59ZYJRUC8Z1', NULL, NULL, NULL, 'JbgXvkACjqV', 'Local', 'SS Heavy Duty Clamp (68 x 73 x 80 x 88)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1290, '2968793685', NULL, 'PQ4XVDW96CL7QQZ', 'PZNECLLN1S7KLAT', 'XNH6QF85D3WN3W7', NULL, NULL, NULL, 'fKWSOGvjNls', 'Local', 'SS Hole Net 4\' x 5\'', NULL, NULL, 'Sqft', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1291, '5477699475', NULL, 'PQ4XVDW96CL7QQZ', 'PZNECLLN1S7KLAT', 'ZT9NZL1O4TWMNV1', NULL, NULL, NULL, '1rUOxQ0y5dq', 'Local', 'SS Hole Net Sheet (8\' x 3\')', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1292, '2485619485', NULL, '2PURPOP1ACPKINM', 'AA3R7TZFOKO3ZQD', '2BQXO1ZNI4SOIDA', NULL, NULL, NULL, 'h8HWGCbUQ6w', 'Local', 'SS Hose Clamp 2.5\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1293, '5277679458', NULL, '2PURPOP1ACPKINM', 'AA3R7TZFOKO3ZQD', '4WG15ZBBFV1DOHQ', NULL, NULL, NULL, 't10lyBCrNsg', 'Local', 'SS Hose Clamp 3\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1294, '9277239916', NULL, '2PURPOP1ACPKINM', 'AA3R7TZFOKO3ZQD', 'QLD5P3KOB8J66FV', NULL, NULL, NULL, '89S7td0CjzU', 'Local', 'SS Hose Clamp 3.5\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1295, '7642475259', NULL, '2PURPOP1ACPKINM', 'AA3R7TZFOKO3ZQD', '4BEYWD4RAPBHXKR', NULL, NULL, NULL, '4mMkVw25IOA', 'Local', 'SS Hose Clamp 4\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1296, '7731332133', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'NUN1D7KQD5X2EUH', NULL, NULL, NULL, 'BHrzwhfuqST', 'Local', 'SS Jali', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1297, '7949552675', NULL, '2PURPOP1ACPKINM', 'AA3R7TZFOKO3ZQD', '6P2T4MLKL8C7U2K', NULL, NULL, NULL, 'VygxvP1lEoC', 'Local', 'SS Jubilee Clamp', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1298, '5518187774', NULL, '2PURPOP1ACPKINM', 'AA3R7TZFOKO3ZQD', 'AUHP8PZVTR6SR6P', NULL, NULL, NULL, 'ZRpa6uvTyK3', 'Local', 'SS Jubilee Clamp 0.25\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1299, '7775577523', NULL, '2PURPOP1ACPKINM', 'AA3R7TZFOKO3ZQD', '694MQQN4376GKT4', NULL, NULL, NULL, 'c6Sp9DovMJs', 'Local', 'SS Jubilee Clamp 0.5\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1300, '9133245662', NULL, '2PURPOP1ACPKINM', 'AA3R7TZFOKO3ZQD', 'RSSZR39WUNSW58F', NULL, NULL, NULL, '3TmbMFjz5GC', 'Local', 'SS Jubilee Clamp 0.5\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1301, '7875911159', NULL, '2PURPOP1ACPKINM', 'AA3R7TZFOKO3ZQD', '9IOEHYZ4I26MY4R', NULL, NULL, NULL, 'ayhk1BF4iEq', 'Local', 'SS Jubilee Clamp 0.75\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1302, '4236822968', NULL, '2PURPOP1ACPKINM', 'AA3R7TZFOKO3ZQD', 'DMZU9VELA4ONXPW', NULL, NULL, NULL, 'LOz1xY5sr8o', 'Local', 'SS Jubilee Clamp 1\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1303, '7396144745', NULL, '2PURPOP1ACPKINM', 'AA3R7TZFOKO3ZQD', 'VGQ3PGO3N31OC6R', NULL, NULL, NULL, 'Da965hoT4Uz', 'Local', 'SS Jubilee Clamp 1\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1304, '9186736396', NULL, '2PURPOP1ACPKINM', 'AA3R7TZFOKO3ZQD', 'NVUDGGDVQZ9XV3H', NULL, NULL, NULL, 'FWB5skz8ZVS', 'Local', 'SS Jubilee Clamp 1.5\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1305, '5527414196', NULL, '2PURPOP1ACPKINM', 'AA3R7TZFOKO3ZQD', 'OUL6BLI6EAJNDDQ', NULL, NULL, NULL, 'lUjKGn3vcHw', 'Local', 'SS Jubilee Clamp 2\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1306, '7889482466', NULL, '2PURPOP1ACPKINM', 'AA3R7TZFOKO3ZQD', 'PZEGI3T4GOZQPSP', NULL, NULL, NULL, 'MXw8oxyQ45v', 'Local', 'SS Jubilee Clamp 2\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1307, '6986126135', NULL, '2PURPOP1ACPKINM', 'AA3R7TZFOKO3ZQD', 'GIUJ6HYJJV8Y2XX', NULL, NULL, NULL, 'bksfoHatwZU', 'Local', 'SS Jubilee Clamp 2.5\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1308, '6313885651', NULL, '2PURPOP1ACPKINM', 'AA3R7TZFOKO3ZQD', 'IC9FNB1MVQLEBBH', NULL, NULL, NULL, 'TBlfwCFEKis', 'Local', 'SS Jubilee Clamp 3\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1309, '7416849792', NULL, '2PURPOP1ACPKINM', 'AA3R7TZFOKO3ZQD', 'E52LPB1GP3QDPSV', NULL, NULL, NULL, 'eyA1j5fYnTG', 'Local', 'SS Jubilee Clamp 3\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1310, '8767242144', NULL, '2PURPOP1ACPKINM', 'AA3R7TZFOKO3ZQD', 'OYLR6MLO9MJY8FM', NULL, NULL, NULL, 'tSNVhoGFfke', 'Local', 'SS Jubilee Clamp 4\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1311, '2799644135', NULL, '2PURPOP1ACPKINM', 'AA3R7TZFOKO3ZQD', 'LBFEW9H3X8VWXR2', NULL, NULL, NULL, 'efHm2QBxwJA', 'Local', 'SS Jubilee Clamp 6\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1312, '8237745792', NULL, '2PURPOP1ACPKINM', 'AA3R7TZFOKO3ZQD', 'YXQ8PN36772JH5Y', NULL, NULL, NULL, 'oUAnyCz79ji', 'Local', 'SS Jubilee Clip', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1313, '2792547419', NULL, '2PURPOP1ACPKINM', 'AA3R7TZFOKO3ZQD', 'U78R845F4386VGP', NULL, NULL, NULL, 'opX8HiPOW2Q', 'Local', 'SS Jumbo Clamp (86-90)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1314, '1186137851', NULL, '2PURPOP1ACPKINM', 'AA3R7TZFOKO3ZQD', '184JW6GS2BAHXMI', NULL, NULL, NULL, 'zA9YkdtniMX', 'Local', 'SS Jumbo Clamp (90-105)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1315, '8625829223', NULL, '2PURPOP1ACPKINM', 'HLE72FWD8USNC5Y', 'OLXCQLMPICUZHWV', NULL, NULL, NULL, 'r0hpYGixjeO', 'Local', 'SS Kata Shackle 13mm', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1316, '7375257997', NULL, '2PURPOP1ACPKINM', 'HLE72FWD8USNC5Y', 'G3Z5PNN7ER6FOP2', NULL, NULL, NULL, 'wA31VWmZjKc', 'Local', 'SS Kata Shackle 16mm', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1317, '8384518691', NULL, '2PURPOP1ACPKINM', 'HLE72FWD8USNC5Y', '7ULELOOVW2V17OF', NULL, NULL, NULL, '2lT3JXIoPCn', 'Import', 'SS Kata Shackle 18mm', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1318, '4885125716', NULL, '2PURPOP1ACPKINM', 'HLE72FWD8USNC5Y', 'K982YLUNJ6T8YLN', NULL, NULL, NULL, 'SBdKJTZYjRg', 'Local', 'SS Kata Shackle 18mm', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1319, '6959989358', NULL, '2PURPOP1ACPKINM', 'HLE72FWD8USNC5Y', 'F9T5VJPI6AIPIA2', NULL, NULL, NULL, 'TH9IcblGQW6', 'Local', 'SS Kata Shackle 20mm', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1320, '4546453464', NULL, '2PURPOP1ACPKINM', 'HLE72FWD8USNC5Y', 'XU58EKQ738821W1', NULL, NULL, NULL, 'mDtcNupn6CR', 'Local', 'SS Kata Shackle 22mm', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1321, '7144995532', NULL, '2PURPOP1ACPKINM', 'HLE72FWD8USNC5Y', 'HJ2EJWYOXS8REI9', NULL, NULL, NULL, 'ulTNK7WE3zb', 'Local', 'SS Kata Shackle 24mm', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1322, '8755394914', NULL, '2PURPOP1ACPKINM', 'HLE72FWD8USNC5Y', 'HP3WYQBKTMX8XPE', NULL, NULL, NULL, 'ariceUQYbpt', 'Local', 'SS Kata Shackle 38mm (APS)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1323, '1483286746', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'ZPH9O43YZC5PSPV', NULL, NULL, NULL, '8rOxMbVc7e2', 'Local', 'SS Lock & Key', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1324, '6996286612', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'XFAXVLQVESJKMNR', NULL, NULL, NULL, 'Y5v8RjmK2Su', 'Local', 'SS Mug', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1325, '8162233745', NULL, '2PURPOP1ACPKINM', 'DVB9GGYBU2TQYKH', 'BIOMXQV3F86YWXD', NULL, NULL, NULL, 'd7PpVeotFjg', 'Local', 'SS Nipple 0.75\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1326, '9216676566', NULL, '2PURPOP1ACPKINM', 'DVB9GGYBU2TQYKH', 'CM9MAHB256GGXRH', NULL, NULL, NULL, 'jdsQWYtlMB7', 'Local', 'SS Nut (D-18mm) (BSF Thread)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1327, '8289188429', NULL, '2PURPOP1ACPKINM', 'DVB9GGYBU2TQYKH', 'IWEBGPZNIRIXM1K', NULL, NULL, NULL, 'Szbanc5KWHJ', 'Local', 'SS Nut Bolt (2.5 Shuta)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1328, '4788276267', NULL, '2PURPOP1ACPKINM', 'DVB9GGYBU2TQYKH', 'BMR6PL7HUH589ZI', NULL, NULL, NULL, 'wd3X68QNCnm', 'Local', 'SS Nut Bolt (3 Shuta x 1.5\")', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1329, '3267676965', NULL, '2PURPOP1ACPKINM', 'DVB9GGYBU2TQYKH', 'S3SJO52D8T3LGK2', NULL, NULL, NULL, 'KFy4DYScE85', 'Local', 'SS Nut Bolt (D-10mm, L-50mm) (BSF Full Thread)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1330, '9657286842', NULL, '2PURPOP1ACPKINM', 'DVB9GGYBU2TQYKH', 'K9VUIX55DTFS8OC', NULL, NULL, NULL, 'ygEWHQ3TZAm', 'Local', 'SS Nut Bolt (D-12mm, L-2\")', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1331, '6722511693', NULL, '2PURPOP1ACPKINM', 'DVB9GGYBU2TQYKH', '9XKGSFH4PUUZS9W', NULL, NULL, NULL, 'smZTIE4g271', 'Local', 'SS Nut Bolt (D-12mm, L-50mm) (BSW)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1332, '5441785485', NULL, '2PURPOP1ACPKINM', 'DVB9GGYBU2TQYKH', 'FK7H93DAQ42KWO2', NULL, NULL, NULL, 'gkLbyJFIQAX', 'Local', 'SS Nut Bolt (D-14mm, L-2\")', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1333, '3213314422', NULL, '2PURPOP1ACPKINM', 'DVB9GGYBU2TQYKH', 'GY5KEOBSPKRY9Q3', NULL, NULL, NULL, 'uZKlbY6a4ke', 'Local', 'SS Nut Bolt (D-14mm, L-50mm) (BSW Half Thread)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1334, '6692261953', NULL, '2PURPOP1ACPKINM', 'DVB9GGYBU2TQYKH', 'KMBS3EZCXHLQUZP', NULL, NULL, NULL, 'eVwyNB130Ci', 'Local', 'SS Nut Bolt (D-17mm, L-2\")', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1335, '9843182846', NULL, '2PURPOP1ACPKINM', 'DVB9GGYBU2TQYKH', 'CQBADNAUSGJM331', NULL, NULL, NULL, 'rB5ANUDmxn3', 'Local', 'SS Nut Bolt (D-19mm, L-2\")', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1336, '6656582567', NULL, '2PURPOP1ACPKINM', 'DVB9GGYBU2TQYKH', '1J1J5E3SWCFVVVN', NULL, NULL, NULL, '6W5gLATMbma', 'Local', 'SS Nut Bolt w/ Washer', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1337, '2466878424', NULL, '2PURPOP1ACPKINM', 'DVB9GGYBU2TQYKH', 'PCBQSY766RDLC6K', NULL, NULL, NULL, '7DwL65cAjvq', 'Local', 'SS Nut Bolt w/ Washer (D-10mm)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1338, '3424748947', NULL, '2PURPOP1ACPKINM', 'DVB9GGYBU2TQYKH', 'ZA5FFEVZJ1EXZEO', NULL, NULL, NULL, 'QHcxnu82dTW', 'Local', 'SS Nut Bolt w/ Washer (D-17mm)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1339, '1439288884', NULL, '2PURPOP1ACPKINM', 'DVB9GGYBU2TQYKH', 'ASN9HZNXW8KWF4P', NULL, NULL, NULL, 'cmhp6VJqax5', 'Local', 'SS Nut Bolt w/ Washer (D-19mm)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1340, '8357384998', NULL, '2PURPOP1ACPKINM', 'DVB9GGYBU2TQYKH', 'XFL98WMC42KEEWG', NULL, NULL, NULL, 'IrV1RbWPQmy', 'Local', 'SS Nut Bolt w/ Washer (D-6mm)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1341, '5172521584', NULL, '1DFJOUKTOQ28QOI', '8SM6ZUETPZKZHVB', 'XKAES4EBVKQX5GM', NULL, NULL, NULL, 'Oi5AmehBNZQ', 'Local', 'SS Oil Pressure Gauge (400kg)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1342, '5957928489', NULL, '2PURPOP1ACPKINM', 'JUKRRNVHG6LOEUR', '3UTSC1QRR9TJO94', NULL, NULL, NULL, '6UnzX8MYp02', 'Local', 'SS Pipe (1.25\" x 11\')', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1343, '1552872176', NULL, '2PURPOP1ACPKINM', 'JUKRRNVHG6LOEUR', '6P86S3AMM2FVOIA', NULL, NULL, NULL, '60MYlHoCf5e', 'Local', 'SS Pipe (2.5\" x 2\" x 36\")', NULL, NULL, 'Ft', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1344, '8827781355', NULL, '2PURPOP1ACPKINM', 'JUKRRNVHG6LOEUR', 'MIAR7P9AENS9XII', NULL, NULL, NULL, 'uZmWG4alSFx', 'Local', 'SS Pipe (2.5\" x 2\" x 40\")', NULL, NULL, 'Ft', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1345, '9775813546', NULL, '2PURPOP1ACPKINM', 'DVB9GGYBU2TQYKH', 'LM9UOHF79B5HEVC', NULL, NULL, NULL, 'hENlRXtAU3b', 'Local', 'SS Ring (For Fish Bag)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1346, '9384111413', NULL, 'EB886WD44XASJTL', 'B29KZMCXGOPBJG3', 'DSOHDWDTH1XELV4', NULL, NULL, NULL, 'wtqNoJbC56l', 'Local', 'SS Ruler Scale', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1347, '2818713654', NULL, 'EB886WD44XASJTL', 'B29KZMCXGOPBJG3', 'F3MHYAA61WHA97U', NULL, NULL, NULL, '0v5REolPzc9', 'Local', 'SS Scissor 10\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1348, '7449693282', NULL, 'EB886WD44XASJTL', 'B29KZMCXGOPBJG3', 'JPN6YKPXOCADDZT', NULL, NULL, NULL, 'ihUS9PJVypW', 'Local', 'SS Scissor 8\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1349, '5953623675', NULL, '2PURPOP1ACPKINM', 'DVB9GGYBU2TQYKH', 'SQ1J52OFWYT82XR', NULL, NULL, NULL, 'KobJD3AzSwj', 'Local', 'SS Screw 0.5\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1350, '4919413831', NULL, '2PURPOP1ACPKINM', 'DVB9GGYBU2TQYKH', 'PCA1LEWALZDM9C7', NULL, NULL, NULL, '7Dek5GL1oEc', 'Local', 'SS Screw 1\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1351, '2899457416', NULL, '2PURPOP1ACPKINM', 'DVB9GGYBU2TQYKH', 'PII3UQIFA38KEMK', NULL, NULL, NULL, 'opX28lANnI6', 'Local', 'SS Screw 2\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1352, '7998796671', NULL, '2PURPOP1ACPKINM', 'DVB9GGYBU2TQYKH', '8YBEPIN4HNWWY7N', NULL, NULL, NULL, 'O725RFrVgQt', 'Local', 'SS Socket Nut 0.75\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1353, '9474492267', NULL, 'PQ4XVDW96CL7QQZ', 'PZNECLLN1S7KLAT', 'U2JVX91RA6J515D', NULL, NULL, NULL, 'lNX2rnmPHCh', 'Local', 'SS Spike', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1354, '9979926793', NULL, '2PURPOP1ACPKINM', 'DVB9GGYBU2TQYKH', 'RVM3G8G5ZWWKKTC', NULL, NULL, NULL, 'jhJZPFe7b1f', 'Local', 'SS Spring Washer (14mm x 17mm x 19mm Head)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1355, '6838238649', NULL, 'PQ4XVDW96CL7QQZ', 'PZNECLLN1S7KLAT', 'EMJHI2QWMBPEH8B', NULL, NULL, NULL, 'wnWAaZiEc2P', 'Local', 'SS T-Socket', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1356, '2621559744', NULL, '2PURPOP1ACPKINM', 'DVB9GGYBU2TQYKH', 'MDH53WWEP1LAPYX', NULL, NULL, NULL, 'mY5zrNTuJgi', 'Local', 'SS Washer', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1357, '5726895888', NULL, '2PURPOP1ACPKINM', 'DVB9GGYBU2TQYKH', '5Y8LUAO49MA6R19', NULL, NULL, NULL, 'kOX6PLpKifU', 'Local', 'SS Washer', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1358, '9942115729', NULL, 'EB886WD44XASJTL', 'B29KZMCXGOPBJG3', 'ZPGG4L6S4QSZ7PG', NULL, NULL, NULL, 'Q3Rt7y9A2oe', 'Local', 'SS Water Tape', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1359, '8559748444', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'N1AMHRJDV88CXQ1', NULL, NULL, NULL, 'VD4ERvear6k', 'Local', 'SS Welding Rod 3.2mm (No. 12)', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1360, '1447577233', NULL, '4DD8A8Z82MDXR12', 'A5I9Z6XUP2DBV5M', 'GLTIVT4IGI34JPF', NULL, NULL, NULL, 'IzPWCseHtqj', 'Local', 'SSB ICOM-M-718 (w/ Tuner & Antenna)', NULL, NULL, 'Set', 0, NULL, '8BGXM4PLRTPJ62I', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1361, '5162793492', NULL, 'Y2KK6KNJQIWD23Z', 'WLR1LOHS5JONLTJ', 'FOPH9CEOEZAJUAT', NULL, NULL, NULL, 'H8PNiJC5YqA', 'Local', 'SSB Service Charge', NULL, NULL, NULL, 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1362, '4942244414', NULL, 'EB886WD44XASJTL', 'B29KZMCXGOPBJG3', '95KEJ4N5NZ8VURA', NULL, NULL, NULL, 'UD7qL6mxleu', 'Local', 'Stamp Pad', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1363, '4369316296', NULL, 'EB886WD44XASJTL', 'B29KZMCXGOPBJG3', '9SPI2MX2HYX3A4W', NULL, NULL, NULL, 'A6rboRVXsjl', 'Local', 'Stapler', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1364, '1656685524', NULL, 'EB886WD44XASJTL', 'B29KZMCXGOPBJG3', 'LMCL4TEXGIG5MHY', NULL, NULL, NULL, 'PKLTrbE2BlQ', 'Local', 'Stapler Pin', NULL, NULL, 'Box', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1365, '9473535759', NULL, '2PURPOP1ACPKINM', 'DVB9GGYBU2TQYKH', 'NKIA2M5P213VOTS', NULL, NULL, NULL, 'DTa1ygp54R3', 'Local', 'Star Screw', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1366, '4171472526', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'BI88R3LW87XJXQL', NULL, NULL, NULL, 'JDQoIEBVX3H', 'Local', 'Starting Switch', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1367, '2594593117', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', '9GXHYD3Y2NHAQ9O', NULL, NULL, NULL, 'Zo5Pr4efj1s', 'Local', 'Starting Switch', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1368, '2156496484', NULL, '2PURPOP1ACPKINM', 'EBZFU3KQHCL2IS6', 'WK1RYDAD2JZFL71', NULL, NULL, NULL, 'S3h5tAWUoOx', 'Local', 'Steam Gasket (5\' x 5\')', NULL, NULL, 'Lbs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1369, '2474313843', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'G4LUN5HDGPM7ETX', NULL, NULL, NULL, 'p7zjSRngru1', 'Local', 'Steel Cup Brush', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1370, '5728164373', NULL, 'EB886WD44XASJTL', 'B29KZMCXGOPBJG3', 'BZH27LJFE98J1L6', NULL, NULL, NULL, 'qk1cZbUBKal', 'Local', 'Steel Measuring Tape', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1371, '2776142363', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', '3K6KXLKZ1P4J2ZY', NULL, NULL, NULL, 'Lusn1965icT', 'Local', 'Steel Pipe Belcha', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1372, '8483772654', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'V7CA3OC8NSQVUDF', NULL, NULL, NULL, 'uLbAoP7XTqQ', 'Local', 'Steel Tiffin Box', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1373, '6448574926', NULL, '2PURPOP1ACPKINM', 'DVB9GGYBU2TQYKH', '7O6Q3KBJBFSK3P2', NULL, NULL, NULL, 'hWANL40UdHi', 'Local', 'Steel Washer', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1374, '6638136619', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'PSHZ24VN6QTXQKK', NULL, NULL, NULL, 'JAZyUmp4S3k', 'Local', 'Steel Wheel Brush', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1375, '7367299153', NULL, '4TQXLMLBLJPAQP1', 'AP7VRUIXZF1AZ3Q', 'JPJF5E7Y6I13HSL', NULL, NULL, NULL, 'B2H5OSWNMt7', 'Local', 'Steel Wire Rope 12mm', NULL, NULL, 'Mtr', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1376, '7738122659', NULL, '4TQXLMLBLJPAQP1', 'AP7VRUIXZF1AZ3Q', 'QE6SQVX8H9PM4T5', NULL, NULL, NULL, 'AvpHSMaer0U', 'Local', 'Steel Wire Rope 14mm', NULL, NULL, 'Ft', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1377, '8577497512', NULL, '4TQXLMLBLJPAQP1', 'AP7VRUIXZF1AZ3Q', 'G16W9WJRZ8SO733', NULL, NULL, NULL, 'hfqsPxwlerm', 'Import', 'Steel Wire Rope 14mm', NULL, NULL, 'Mtr', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1378, '7198988553', NULL, '4TQXLMLBLJPAQP1', 'AP7VRUIXZF1AZ3Q', '2BR13VAID29FC92', NULL, NULL, NULL, 'cyvNoBDXJgp', 'Import', 'Steel Wire Rope 14mm', NULL, NULL, 'Coil', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1379, '1873139211', NULL, '4TQXLMLBLJPAQP1', 'AP7VRUIXZF1AZ3Q', '2SHIOXCDJIDOR2N', NULL, NULL, NULL, 'fS0tzAuNmkP', 'Local', 'Steel Wire Rope 16mm', NULL, NULL, 'Ft', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1380, '9896812594', NULL, '4TQXLMLBLJPAQP1', 'AP7VRUIXZF1AZ3Q', '9O8W33RGOAWCOF9', NULL, NULL, NULL, 'z3oH1Fnjyvd', 'Import', 'Steel Wire Rope 16mm', NULL, NULL, 'Coil', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1381, '6955154879', NULL, '4TQXLMLBLJPAQP1', 'AP7VRUIXZF1AZ3Q', 'NO4ZQTJ2HH8L462', NULL, NULL, NULL, 'YMrqpLvVc2J', 'Import', 'Steel Wire Rope 18mm', NULL, NULL, 'Mtr', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1382, '6616115834', NULL, '4TQXLMLBLJPAQP1', 'AP7VRUIXZF1AZ3Q', 'WVQWMQNHV47TTAU', NULL, NULL, NULL, 'ehkGw4ruPy9', 'Import', 'Steel Wire Rope 200mm', NULL, NULL, 'Mtr', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1383, '3233887655', NULL, '4TQXLMLBLJPAQP1', 'AP7VRUIXZF1AZ3Q', 'DE1131BG9LLPIQX', NULL, NULL, NULL, 'B27JUnwWLK9', 'Local', 'Steel Wire Rope 20mm', NULL, NULL, 'Ft', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1384, '1356876328', NULL, '4TQXLMLBLJPAQP1', 'AP7VRUIXZF1AZ3Q', 'XMKIEOS9Q91TV1L', NULL, NULL, NULL, 'Dd517RPEBJF', 'Import', 'Steel Wire Rope 20mm', NULL, NULL, 'Coil', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1385, '4432643853', NULL, '4TQXLMLBLJPAQP1', 'AP7VRUIXZF1AZ3Q', 'P5845VJSOOJ3GQ6', NULL, NULL, NULL, 'uX6B9ptRk5Y', 'Import', 'Steel Wire Rope 22mm', NULL, NULL, 'Coil', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1386, '8317888289', NULL, 'Y2KK6KNJQIWD23Z', 'WLR1LOHS5JONLTJ', '1LPBO55HFTJPQJG', NULL, NULL, NULL, 'ENcXoutIneK', 'Local', 'Steel Wire Rope Binding 14mm (Rog Pata Binding) (Service)', NULL, NULL, NULL, 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1387, '7216479599', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'TWT8DX8SW6LUPTJ', NULL, NULL, NULL, 'LXs0qTKGrzC', 'Local', 'Stick Broom', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1388, '4255585746', NULL, '2PURPOP1ACPKINM', '87G3NU8TY4J2W25', 'RUYRAVLQWZUMPAM', NULL, NULL, NULL, 'IasoHG0kr2Z', 'Local', 'Submersible Pump (1.5HP)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1389, '9226271269', NULL, '2PURPOP1ACPKINM', 'US9B6OUBZYA62E8', 'HFEXSAVJQDXTVWN', NULL, NULL, NULL, 'zeCX1USk4v0', 'Local', 'Suction Filter', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1390, '2826916517', NULL, '2PURPOP1ACPKINM', 'US9B6OUBZYA62E8', '21W88WJ6BUSF9VP', NULL, 'SF-48', NULL, 'SF-48', 'Local', 'Suction Filter SF-48', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1391, '7814731538', NULL, '1DFJOUKTOQ28QOI', '8SM6ZUETPZKZHVB', '1AUURDDXC56VCOG', NULL, NULL, NULL, 'sejdK2nIY1q', 'Local', 'Suction Meter (APS)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1392, '8354992411', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'P49K2AXN4C9DK27', NULL, NULL, NULL, 'j0B94qUXlzu', 'Local', 'Suhaga Powder', NULL, NULL, 'Gm', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1393, '2436624248', NULL, 'PQ4XVDW96CL7QQZ', 'PZNECLLN1S7KLAT', 'S3X3MIX67P3KRO1', NULL, NULL, NULL, '6AQFGDqXHWx', 'Local', 'Super Enameled Copper Wire No. 20', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1394, '4655437382', NULL, 'PQ4XVDW96CL7QQZ', 'PZNECLLN1S7KLAT', 'FK5DA8XC11IFITK', NULL, NULL, NULL, 'gctYyEOFPxo', 'Local', 'Super Enameled Copper Wire No. 26', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1395, '8226663567', NULL, 'EB886WD44XASJTL', 'B29KZMCXGOPBJG3', 'OID8QIF62FRBPJN', NULL, NULL, NULL, 'N7RY0rLXotO', 'Local', 'Super Glue', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1396, '6421357642', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'QAFQARGXLKHGEYK', NULL, NULL, NULL, 'UxcD6n5lGPs', 'Local', 'Switch Piano', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1397, '1816622392', NULL, '2PURPOP1ACPKINM', 'HLE72FWD8USNC5Y', 'OFQNU8PV1VNEI8W', NULL, NULL, NULL, 'qlMjCmJnSN7', 'Local', 'Swivel 18mm', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1398, '4841544445', NULL, '2PURPOP1ACPKINM', 'HLE72FWD8USNC5Y', 'DIPXGJNLFSPYJOJ', NULL, NULL, NULL, 'BVIx4MRFyfn', 'Import', 'Swivel 20mm', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1399, '4815329938', NULL, 'MH35OWBFMR35ILN', 'XMAG1UXN247Z1FF', '2SLCE5G9G4RPOPF', NULL, NULL, NULL, '0EtDCImuBOd', 'Local', 'T6 Thinner', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1400, '7816984152', NULL, '1DFJOUKTOQ28QOI', '8SM6ZUETPZKZHVB', 'IVJTO578SGJVRKL', NULL, NULL, NULL, 'th9Yu3azCRT', 'Import', 'Tacho Generator (w/ Sensor) / RPM Meter', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1401, '6424281962', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'R7W7OSAVWZP3HZN', NULL, NULL, NULL, 'PWLuVfgCOza', 'Local', 'Tali Board', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1402, '8384525575', NULL, 'PQ4XVDW96CL7QQZ', 'CEGSXLCPRE3E6FK', 'DEMXP4ROISJSV4S', NULL, NULL, NULL, 'aBCTHeWNFkq', 'Local', 'Tarpaulin (18\' x 4.6\')', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1403, '2992315311', NULL, 'PQ4XVDW96CL7QQZ', 'CEGSXLCPRE3E6FK', '481HAQCPKIJKX75', NULL, NULL, NULL, 'JndKo9uqs43', 'Local', 'Tarpaulin (33\' x 12\')', NULL, NULL, 'Ft', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1404, '3237938581', NULL, 'PQ4XVDW96CL7QQZ', 'CEGSXLCPRE3E6FK', 'VVQL37BBRCV67M8', NULL, NULL, NULL, 'WI7EXtgGO0k', 'Local', 'Tarpaulin (4\' x 6\')', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1405, '6455155633', NULL, 'PQ4XVDW96CL7QQZ', 'CEGSXLCPRE3E6FK', 'XDICGGEWWXJHUAL', NULL, NULL, NULL, 'jkrdfzTCARO', 'Local', 'Tarpaulin (6\' x 19\')', NULL, NULL, 'Ft', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1406, '2329149421', NULL, 'PQ4XVDW96CL7QQZ', 'CEGSXLCPRE3E6FK', 'GM4SHU1VW3VOYU7', NULL, NULL, NULL, 'RvA97dpszbM', 'Local', 'Tarpaulin (9\' x 12\')', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1407, '3893863784', NULL, 'PQ4XVDW96CL7QQZ', 'CEGSXLCPRE3E6FK', 'WFI3SDW5CYXQ3KB', NULL, NULL, NULL, 'qFkIQlTt21A', 'Local', 'Tarpaulin (9\' x 3.5\')', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1408, '7994735875', NULL, 'Y2KK6KNJQIWD23Z', 'WLR1LOHS5JONLTJ', 'CAB1KAYPYY9LTH8', NULL, NULL, NULL, 'qoRBl5TrCP4', 'Local', 'Tarpaulin Sewing and Binding', NULL, NULL, NULL, 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1409, '9994115961', NULL, '32GAZCG9EGXK5S5', '3XUMP7QWQ7BTCTO', 'Q3A7JOLS8EFWPCX', NULL, NULL, NULL, 'd5hi4FH8UmN', 'Local', 'TE-12 Orifice No. 5 (Danfoss)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1410, '6258182391', NULL, '32GAZCG9EGXK5S5', '3XUMP7QWQ7BTCTO', 'YW4CPJVOXSDFCVS', NULL, NULL, NULL, 'xT2ALilMUph', 'Local', 'TE-12 Orifice No. 7 (Danfoss)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1411, '4571352279', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'WSIEKNPBNK9SWG1', NULL, NULL, NULL, 'TcUo8wOs4Di', 'Local', 'Tea Cup (Ceramic)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1412, '1632317673', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'FSDZ1MXWV6SGTHS', NULL, NULL, NULL, 'hfLIy9kcuAt', 'Local', 'Tea Cup (Melamine)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1413, '7163367726', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', '8ZL7ZLMO9UMWL48', NULL, NULL, NULL, 'tERI5OrkGKa', 'Local', 'Tea Flask', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1414, '2663555627', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'NKR1B34NZSDB1G5', NULL, NULL, NULL, '2agxApjlwL6', 'Local', 'Tea Spoon', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1415, '7452515263', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'ZDZM64HKLO4HG4V', NULL, NULL, NULL, 'Wn4FSds36UI', 'Local', 'Tea Strainer', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1416, '6417614734', NULL, 'PQ4XVDW96CL7QQZ', 'CEGSXLCPRE3E6FK', '6X7DZR96IK5JYFA', NULL, NULL, NULL, 'C6rl3SNgAeP', 'Local', 'Teflon Packing', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1417, '3571783636', NULL, 'PQ4XVDW96CL7QQZ', 'CEGSXLCPRE3E6FK', '5EAOYV6FI3COTMS', NULL, NULL, NULL, 'Qh3BUkV9tP1', 'Local', 'Teflon Shaft (72mm x 9\")', NULL, NULL, 'Lbs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1418, '2367362589', NULL, '2PURPOP1ACPKINM', 'DVB9GGYBU2TQYKH', 'TDWL499KQIQHOYN', NULL, NULL, NULL, '0bHSaftRv9s', 'Local', 'Telescope Bolt', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1419, '9537459991', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'JTOAEM81XBWMFPU', NULL, NULL, NULL, 'zWiUZ6Ckru0', 'Local', 'Tester', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1420, '3723321316', NULL, '4TQXLMLBLJPAQP1', 'AP7VRUIXZF1AZ3Q', 'P6D8EF1GQEWGJHU', NULL, NULL, NULL, 'X6hnbU1OK40', 'Local', 'Thai Floating Rope 10mm', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1421, '5757911138', NULL, '4TQXLMLBLJPAQP1', 'AP7VRUIXZF1AZ3Q', '1SZV4391G6RP419', NULL, NULL, NULL, '5kWzdGtcPHS', 'Local', 'Thai Floating Rope 16mm', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1422, '8786647627', NULL, '4TQXLMLBLJPAQP1', 'AP7VRUIXZF1AZ3Q', 'HDYNGTO6Q8XDE53', NULL, NULL, NULL, 'f4Xxizg3LVc', 'Local', 'Thai Floating Rope 18mm', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1423, '8231132539', NULL, '4TQXLMLBLJPAQP1', 'AP7VRUIXZF1AZ3Q', 'XY1N7KOV96QIVIN', NULL, NULL, NULL, 'Ns3AyIqvxWk', 'Local', 'Thai Floating Rope 4mm', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1424, '2938326141', NULL, '4TQXLMLBLJPAQP1', 'AP7VRUIXZF1AZ3Q', 'OF1AECWPI36VMK3', NULL, NULL, NULL, 'C9hQenaI6ms', 'Local', 'Thai Floating Rope 6mm', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1425, '6971399953', NULL, '4TQXLMLBLJPAQP1', 'AP7VRUIXZF1AZ3Q', '3DCJ5OMU65CLSCF', NULL, NULL, NULL, 'EzjkcYWInHA', 'Local', 'Thai Floating Rope 8mm', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1426, '4245481911', NULL, 'TJT23BXZLWIDR58', 'DTCTAOMKJZ2SI9X', 'Q37VSB8S32WHVRM', NULL, NULL, NULL, 'o9Ok3KhzGax', 'Local', 'Thai Gumboot No. 12', NULL, NULL, 'Pair', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1427, '3226298338', NULL, 'TJT23BXZLWIDR58', 'DTCTAOMKJZ2SI9X', 'X3RIUB66CGIYTOS', NULL, NULL, NULL, 'LKaUgXQfnbO', 'Local', 'Thai Gumboot No. 13', NULL, NULL, 'Pair', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1428, '8998637233', NULL, '4TQXLMLBLJPAQP1', 'PID8OPNPVESJDI3', 'BEU9T84WRZ9QPSG', NULL, NULL, NULL, 'Vo0pSfNu5kt', 'Local', 'Thai Needle (Size 0)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1429, '5756854469', NULL, '4TQXLMLBLJPAQP1', 'PID8OPNPVESJDI3', '1Y4MC1S11J3STFG', NULL, NULL, NULL, 'mw6Q9kJF507', 'Local', 'Thai Needle (Size 1)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1430, '7657326941', NULL, '32GAZCG9EGXK5S5', '3XUMP7QWQ7BTCTO', 'CMIVY5JZZE14JUO', NULL, NULL, NULL, 'GagzpijFQsn', 'Local', 'Thermostat Valve (TE-12, R-22) (Danfoss)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1431, '1852915193', NULL, '4TQXLMLBLJPAQP1', 'PID8OPNPVESJDI3', 'P9N9PT9FCDAOZP6', NULL, NULL, NULL, 'bPkFiT4N5Sn', 'Local', 'Thimble', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1432, '3542684158', NULL, '4TQXLMLBLJPAQP1', 'PID8OPNPVESJDI3', 'QB6JONLFXQW3IJH', NULL, NULL, NULL, 'YsATWEpm53k', 'Local', 'Thimble 20mm', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1);
INSERT INTO `product_information` (`id`, `product_id`, `product_id_two`, `category_id`, `sub_cat_id`, `brand_id`, `country`, `parts`, `tag`, `sku`, `ptype_id`, `product_name`, `price`, `re_order_level`, `unit`, `tax`, `serial_no`, `product_model`, `product_details`, `image`, `status`) VALUES
(1433, '4534989198', NULL, 'EB886WD44XASJTL', 'B29KZMCXGOPBJG3', 'WKR4J3X4ZVRLXLR', NULL, NULL, NULL, 'gykZMzTfhte', 'Local', 'Thread Tape', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1434, '9263268231', NULL, '2PURPOP1ACPKINM', '2LRMZF78F9TMQLN', '2ACCPGI37ASWLFU', NULL, '51118', NULL, '51118', 'Import', 'Thrust Bearing (51118)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1435, '4747666885', NULL, '2PURPOP1ACPKINM', '2LRMZF78F9TMQLN', 'N2A89FZGA9KEV8I', NULL, '51120', NULL, '51120', 'Import', 'Thrust Bearing (51120)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1436, '7111657946', NULL, '2PURPOP1ACPKINM', '2LRMZF78F9TMQLN', 'IGNAVEDA9V1AS7Y', NULL, '51124', NULL, '51124', 'Import', 'Thrust Bearing (51124)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1437, '5773196875', NULL, '2PURPOP1ACPKINM', '2LRMZF78F9TMQLN', 'RTR8WOIVP24Z8R9', NULL, NULL, NULL, 'yVzcwpInbCi', 'Local', 'Thrust Bearing for Crank Shaft', NULL, NULL, 'Pair', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1438, '7839895333', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'Z6ZIHWUF25KJUHY', NULL, NULL, NULL, 'fETXG95HxyI', 'Local', 'Tide Tables Book (2022)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1439, '5882567578', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', '21197T8CKE9HHTK', NULL, NULL, NULL, 'sNHxJtZ4upO', 'Local', 'Tide Tables Book (2022) w/ Service Charge', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1440, '7745419613', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'PLI2QC12OG8YJPA', NULL, NULL, NULL, 'nKPiua8GFzv', 'Local', 'Timer (30 Second)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1441, '9543464932', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'XIHT97RH1N5G6JK', NULL, NULL, NULL, 'e5uArimtHBz', 'Local', 'Timer (Omron)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1442, '3753487353', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'CQJTA81E1FSBIW4', NULL, NULL, NULL, '1auJyRwPAhk', 'Local', 'Timer 8 Pin', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1443, '5778272225', NULL, '2PURPOP1ACPKINM', 'EBZFU3KQHCL2IS6', '228QVOHC4X5NK9E', NULL, NULL, NULL, 'faIrAouc7Gb', 'Local', 'Timing Cover Seal', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1444, '5466483626', NULL, '2PURPOP1ACPKINM', 'EBZFU3KQHCL2IS6', 'M6ZH69F8RVIAJK3', NULL, '3004316', NULL, '3004316', 'Local', 'Timing Pulley Seal (3004316)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1445, '5748259249', NULL, '2PURPOP1ACPKINM', 'EBZFU3KQHCL2IS6', '5EU53NBZNCV8O7C', NULL, '3038998', NULL, '3038998', 'Local', 'Timing Pulley Seal (3038998)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1446, '4632571487', NULL, '2PURPOP1ACPKINM', 'EBZFU3KQHCL2IS6', 'PZO2VQRJ782NS52', NULL, NULL, NULL, '0kduA1vHQLq', 'Local', 'Timing Pulley Shaft Oil Seal', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1447, '5355914161', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'JW3CQKJVN5MMV6T', NULL, NULL, NULL, 'kBuIpCxS39U', 'Local', 'Tixol', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1448, '2517393618', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', '5GCK46IZ18XUQXX', NULL, NULL, NULL, 'MaJLvB2kxVo', 'Local', 'Toilet Tissue Paper', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1449, '9876211252', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'YCBAGUJ1HSUKVQB', NULL, NULL, NULL, 'PuqVbhBiXnv', 'Local', 'Top Sheet', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1450, '9194545335', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'YTCX3P4O3TYP3YH', NULL, NULL, NULL, 'yqN9SkAzcpQ', 'Local', 'Top Sheet', NULL, NULL, 'Pg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1451, '1688841324', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', '7JGMD962SPQCBTG', NULL, NULL, NULL, 'iADl2aKB7NR', 'Local', 'Torch Light', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1452, '1766935138', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'G772ZGOOKDY5Q9S', NULL, NULL, NULL, 'JQFCZIo7OgH', 'Local', 'Torch Light', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1453, '9726275259', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'G2DSVBG971TTJ9X', NULL, NULL, NULL, '1FNBfdzKijW', 'Local', 'Torch Light', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1454, '4777612432', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', '4BARYGHIPO2OPVN', NULL, NULL, NULL, 'v3tDSIxHn2k', 'Local', 'Tory 90mg', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1455, '5759377124', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', '6FQSA6XAM3V1UFG', NULL, NULL, NULL, 'D1xv7bP4wIg', 'Local', 'Towel', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1456, '3153731277', NULL, '4TQXLMLBLJPAQP1', 'PID8OPNPVESJDI3', 'Q956DG62LZDGL6E', NULL, NULL, NULL, 'P2QTXcOR793', 'Local', 'Trawl Door Chain 14mm', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1457, '6267972827', NULL, '4TQXLMLBLJPAQP1', 'PID8OPNPVESJDI3', 'ZBHTT1ZUWNXEC6O', NULL, NULL, NULL, 'hpVNZqteC0x', 'Local', 'Trawl Door Chain 16mm', NULL, NULL, 'Link', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1458, '1523551287', NULL, '4TQXLMLBLJPAQP1', 'PID8OPNPVESJDI3', '5F9XG73G2JK615Z', NULL, NULL, NULL, 'DG8gWJjknxf', 'Local', 'Trawl Door Chain 18mm', NULL, NULL, 'Link', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1459, '1123918768', NULL, '2PURPOP1ACPKINM', 'HLE72FWD8USNC5Y', 'CUHODPNDLJO4HI7', NULL, NULL, NULL, '5nOXQvolKTu', 'Local', 'Trawldoor Adjustment Shackle', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1460, '1943186592', NULL, '4TQXLMLBLJPAQP1', 'A4EV4ZSA1IH61O2', 'MQ7S3NSVX91HG5B', NULL, NULL, NULL, 'QeXtTyPNHFf', 'Import', 'Trawldoor USP 100S', NULL, NULL, 'Set', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1461, '6227335553', NULL, '4TQXLMLBLJPAQP1', 'A4EV4ZSA1IH61O2', 'OJPV61IYC3KSEEQ', NULL, NULL, NULL, 'bmip65qou3E', 'Import', 'Trawldoor USP 88S', NULL, NULL, 'Set', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1462, '3428658814', NULL, '4TQXLMLBLJPAQP1', 'A4EV4ZSA1IH61O2', 'JX695IUK3RPPMA6', NULL, NULL, NULL, 'LC0rPby9EFe', 'Import', 'Trawldoor USP 96S', NULL, NULL, 'Set', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1463, '5392346524', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'T32OJ9GI588XM4M', NULL, NULL, NULL, 'hSV6iwkoZcg', 'Local', 'Trix 500gm', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1464, '5495447628', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'XYVFPXI3UPMGQ1L', NULL, NULL, NULL, 'bqTulGBXz9H', 'Local', 'Tube Light 1\'', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1465, '2113293817', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'R6GBKSOFH2SBF7L', NULL, NULL, NULL, 'M62lvHVo9Bh', 'Local', 'Tube Light 2\'', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1466, '6629645967', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'VEI5YAYCGV1IZVY', NULL, NULL, NULL, 'yQKnhsuL4qA', 'Local', 'Tube Light 20W', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1467, '7671463976', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'W3BHBXDFWS78OOV', NULL, NULL, NULL, 'd9lNfHAuCwq', 'Local', 'Tube Light 4\'', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1468, '5978792171', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'WJVLQL5MZO5MSIK', NULL, NULL, NULL, 'FbAQY1kpdvL', 'Local', 'Tube Light 4\'', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1469, '8341834173', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'YUVXBHADLBDZZLT', NULL, NULL, NULL, 'kBiM4dUJRY6', 'Local', 'Tube Light 40W', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1470, '3789111856', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', '47IOOH3SNY97QB5', NULL, NULL, NULL, 'TWbVPk5L4hR', 'Local', 'Tube Light Ballast 18W', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1471, '9153488479', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'J6KFTAYOIG7FZEY', NULL, NULL, NULL, 'oOvrWCNZ2qE', 'Local', 'Tube Light Ballast 18W', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1472, '2241267575', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', '546678QFHDZVH8G', NULL, NULL, NULL, 'SCuRPKI4UOd', 'Local', 'Tube Light Ballast 20W', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1473, '1146132242', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'DBVSGOI3OBB8FRW', NULL, NULL, NULL, 'wU7vKBVYHMT', 'Local', 'Tube Light Ballast 40W', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1474, '1889987881', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', '2JSF5SCG8FPCZHX', NULL, NULL, NULL, 'MmGRTZcEeXQ', 'Local', 'Tube Light Ballast 40W', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1475, '8438915832', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', '1M5KBH8CX2R9TIS', NULL, NULL, NULL, 'gAUT4GYp3Zu', 'Local', 'Tube Light Ballast 40W', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1476, '7686466587', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'N2XNICOJO9MU3XR', NULL, NULL, NULL, '8qDoSfG9M6y', 'Local', 'Tube Light Ballast 65W', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1477, '5266747195', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'HZOTIJ2XKNN7N3L', NULL, NULL, NULL, '0ZxKO7ED9Su', 'Local', 'Tube Light Ballast 65W', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1478, '8728674426', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', '8QM8HIMZCX3GC24', NULL, NULL, NULL, '2dZvfVgnmpK', 'Local', 'Tube Light Ballast 65W', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1479, '5178295564', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'PTHXP8WVMIUSPUJ', NULL, NULL, NULL, '0Hpa9nxcDuJ', 'Local', 'Tube Light Holder', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1480, '7482989533', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', '3VQ2REZWE5B3KEC', NULL, NULL, NULL, 'LvDi4Map30m', 'Local', 'Tube Light Set 2\'', NULL, NULL, 'Set', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1481, '7317695261', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'FRQYMV8PEA5OY5D', NULL, NULL, NULL, 'PKivuMSxWwa', 'Local', 'Tube Light Set 4\'', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1482, '9372647339', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'MT5DKJHTWRDIS5U', NULL, NULL, NULL, '8XiGUdhEraf', 'Local', 'Tube Light Set 4\'', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1483, '6752386239', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'PL7TZ94PSDUI53G', NULL, NULL, NULL, 'sNndlLuV9O1', 'Local', 'Tube Light Set 4\'', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1484, '6329918941', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'NC1AR6Q7H6VUF1F', NULL, NULL, NULL, 'n06JY7WkNLZ', 'Local', 'Tube Light Starter', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1485, '9922655572', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'MX51QDP2JZQRWBK', NULL, NULL, NULL, 'r53NROEazQD', 'Local', 'Tube Light Starter 20W', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1486, '5969132569', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'NDMIVWGAX1EIV1D', NULL, NULL, NULL, 'vzQ1nKeOALd', 'Local', 'Tube Light Starter 22W', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1487, '8866488335', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'Q4B3BDI18HW7VAK', NULL, NULL, NULL, 'o6kctCdqpRx', 'Local', 'Tufnil', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1488, '1155162345', NULL, 'WPHNEVLXT34GIFJ', 'TNXPU7SP8EHWZ62', 'JEUKG7B2HI8ZTR2', NULL, '3545669', NULL, '3545669', 'Local', 'Turbo Repair Kit (NT855) (3545669)', NULL, NULL, 'Set', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1489, '6387389667', NULL, 'WPHNEVLXT34GIFJ', 'TNXPU7SP8EHWZ62', '9J4PDQPI6KYHBMB', NULL, '3545669', NULL, '3545669', 'Local', 'Turbo Repair Kit (NT855) (3545669)', NULL, NULL, 'Set', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1490, '6662391686', NULL, '4TQXLMLBLJPAQP1', 'PID8OPNPVESJDI3', 'RSS3R7H64XNMIN8', NULL, NULL, NULL, 'FDN67bArvgJ', 'Local', 'Turnbuckle', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1491, '7875729522', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', '7ZIJLZR6SA4CHLR', NULL, NULL, NULL, '6cWpGzrZFPv', 'Local', 'Two Core Cable', NULL, NULL, 'Ft', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1492, '4847374817', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', '9Q8MRIHI8ODFTBS', NULL, NULL, NULL, 'xbty9Yv5pSu', 'Local', 'Two Core Cable', NULL, NULL, 'Mtr', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1493, '6648942533', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', '2KCTEECBHP2SL3V', NULL, NULL, NULL, 'tujoSYQV7b9', 'Local', 'Two Core Cable', NULL, NULL, 'Mtr', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1494, '1733956332', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', '52TQ1ZVQE7838QB', NULL, NULL, NULL, 'ljs6gLqW5b2', 'Local', 'Two Pin Piano Socket', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1495, '3596466577', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'IKNUAA4XQ5M6BP7', NULL, NULL, NULL, 'AJwGcplgZoa', 'Local', 'Two Pin Piano Socket', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1496, '8488781934', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'HE1EUYMEMPUFV4M', NULL, NULL, NULL, 'kPHmQxEetCB', 'Local', 'Two Pin Plug', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1497, '2285573694', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'OV3T5X8ILBY2A7W', NULL, NULL, NULL, 'KjzbuAPt5D6', 'Local', 'Two Pin Plug', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1498, '2255973788', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'TH8NPPKA696P7XX', NULL, NULL, NULL, '1T5MsZ64toB', 'Local', 'Two Pin Socket', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1499, '5687739115', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'JR7PT2I3HI2PBCD', NULL, NULL, NULL, '1m8tBfWGCh3', 'Local', 'Two Pin Socket', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1500, '3269729322', NULL, '2PURPOP1ACPKINM', 'AA3R7TZFOKO3ZQD', 'EKY9H48PLQYZ7WQ', NULL, NULL, NULL, '2BvUzbY5OcI', 'Local', 'U-Clamp 1.25\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1501, '5288648872', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'I8M1Y9A9ADM7O3O', NULL, NULL, NULL, 'cNrmb2BMYOi', 'Local', 'UPS Power Guard 650VA', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1502, '3982266721', NULL, 'WPHNEVLXT34GIFJ', 'TNXPU7SP8EHWZ62', 'UNSTGVCF2RQCMKN', NULL, NULL, NULL, '4z1AR7vZBgq', 'Local', 'Valve Guide (8 Pcs)', NULL, NULL, 'Set', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1503, '9215112311', NULL, 'WPHNEVLXT34GIFJ', 'TNXPU7SP8EHWZ62', '5KWAUJAK1M954AF', NULL, NULL, NULL, 'SPQmBaVfGre', 'Local', 'Valve Plate Assembly', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1504, '1844284384', NULL, 'WPHNEVLXT34GIFJ', 'TNXPU7SP8EHWZ62', 'CUMRD5X97Y3T9RA', NULL, '3006456', NULL, '3006456', 'Local', 'Valve Stem Guide (3006456)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1505, '3969533375', NULL, 'WPHNEVLXT34GIFJ', 'TNXPU7SP8EHWZ62', 'JC34YF6AVHWI8OP', NULL, 'B57', NULL, 'B57', 'Local', 'V-Belt B57', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1506, '7618262146', NULL, 'WPHNEVLXT34GIFJ', 'TNXPU7SP8EHWZ62', 'R18MOYXNY1DH7AI', NULL, 'B57', NULL, 'B57', 'Local', 'V-Belt B57 (Korean)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1507, '2853965139', NULL, 'WPHNEVLXT34GIFJ', 'TNXPU7SP8EHWZ62', '2XIYWB48BDT43II', NULL, 'B67', NULL, 'B67', 'Local', 'V-Belt B67', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1508, '3735263443', NULL, 'WPHNEVLXT34GIFJ', 'TNXPU7SP8EHWZ62', 'GWWKTYZTBVD62O8', NULL, 'B80', NULL, 'B80', 'Local', 'V-Belt B80', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1509, '9922514514', NULL, 'WPHNEVLXT34GIFJ', 'TNXPU7SP8EHWZ62', 'D49KBHGO1MGKEVV', NULL, 'B87', NULL, 'B87', 'Local', 'V-Belt B87', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1510, '6315636593', NULL, 'WPHNEVLXT34GIFJ', 'TNXPU7SP8EHWZ62', '964CKZZW8NWS24D', NULL, NULL, NULL, 'evkoSQJmuf7', 'Local', 'V-Belt for Air Compressor', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1511, '8582471718', NULL, 'WPHNEVLXT34GIFJ', 'TNXPU7SP8EHWZ62', 'PIZUHA4LD1POLDD', NULL, 'V36', NULL, 'V36', 'Local', 'V-Belt V36', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1512, '3249714671', NULL, 'WPHNEVLXT34GIFJ', 'TNXPU7SP8EHWZ62', 'HIU4V6Z33ZUYZCX', NULL, 'V67', NULL, 'V67', 'Local', 'V-Belt V67', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1513, '5471761769', NULL, 'WPHNEVLXT34GIFJ', 'TNXPU7SP8EHWZ62', 'V6H716V79DYIUEG', NULL, 'V80', NULL, 'V80', 'Local', 'V-Belt V80', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1514, '4949294835', NULL, '4DD8A8Z82MDXR12', 'A5I9Z6XUP2DBV5M', 'VOTRQQHJ8B6WBQL', NULL, NULL, NULL, 'ykf0zPjFDrg', 'Local', 'VHF Furuno Hand Set', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1515, '8492725227', NULL, '4DD8A8Z82MDXR12', 'A5I9Z6XUP2DBV5M', 'GV3JBQH8BWXY1RC', NULL, NULL, NULL, 'L47IW9bFiht', 'Local', 'VHF Yaesu 2900 New (FM Transceiver IC-2300H)', NULL, NULL, 'Pcs', 0, NULL, 'SAGNNAFTK75X7S9', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1516, '9172511452', NULL, '32GAZCG9EGXK5S5', 'TDZYAAE2449JJPO', 'KAJKC8XH77BG9LY', NULL, NULL, NULL, 'wa25eXnisH4', 'Local', 'Vibration Observer (Size 1.125\") (Copper)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1517, '6995626858', NULL, '32GAZCG9EGXK5S5', 'TDZYAAE2449JJPO', 'HCDQKTTIGAQ7HY7', NULL, NULL, NULL, '6hNgu7KCqdi', 'Local', 'Vibrator 1.125\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1518, '3213932266', NULL, '32GAZCG9EGXK5S5', 'TDZYAAE2449JJPO', 'QWUPX31GY83CEK9', NULL, NULL, NULL, 'LPjOwmkT0Ji', 'Local', 'Vibrator 2.125\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1519, '9896782597', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'N3WDW3RJRHLLKDB', NULL, NULL, NULL, 'lray6wgMeED', 'Local', 'Video Ballon', NULL, NULL, 'Set', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1520, '5989619738', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'MNTKAM7OFNTBDSI', NULL, NULL, NULL, 'NGEcqWgbZw6', 'Local', 'Vim Powder', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1521, '7672654629', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', '73VXG49SN29S3QR', NULL, NULL, NULL, 'fKr0IsiUR9Q', 'Local', 'Viodin 10%', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1522, '8393828975', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', '138T5FP6IV69T7K', NULL, NULL, NULL, 'wcCeYRfJMD8', 'Local', 'Viodin 10%', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1523, '1242694638', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'BXXWMCLD4N9DGXA', NULL, NULL, NULL, '4tVwHuERkL3', 'Local', 'Viodin Ointment', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1524, '2246369751', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'SZXM26XNMOXY9AL', NULL, NULL, NULL, 'Suepib0HCIE', 'Local', 'Viodin Ointment', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1525, '5847632139', NULL, '1DFJOUKTOQ28QOI', 'FVAPRB2V3ITADUE', 'Q1BEM4JE46M2D8H', NULL, NULL, NULL, 'UuytoRGCEjA', 'Local', 'Voltage Tester', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1526, '3558497179', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'BE3WKBRW2HTUQXV', NULL, NULL, NULL, 'd8zvp3PRJnm', 'Local', 'Voltalin D', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1527, '1837154223', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', '25XNMKEV7RAEBQN', NULL, NULL, NULL, 'VwCA8Pgqi6X', 'Local', 'Voltalin SR (100mg)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1528, '3598841494', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', '6XHZNUA61LF4RVC', NULL, NULL, NULL, 'wmue9p4BTXr', 'Local', 'Voltalin SR (100mg)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1529, '8589871322', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'VJAIOJBAZ8SXDML', NULL, NULL, NULL, 'x4MPBf2E9VG', 'Local', 'Voltalin SR (75mg)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1530, '4668345999', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', '8V3F9BKO19PA42C', NULL, NULL, NULL, 'UJW3Bto5HFl', 'Local', 'Voltalin SR (75mg)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1531, '1945214378', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'KLNJ2J26S1EYM4Y', NULL, NULL, NULL, 'IMZLSt6k9fG', 'Local', 'Voltalin SR (75mg)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1532, '1363287766', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'ZOL2PV6JQXQM8LX', NULL, NULL, NULL, 'yeGcjhfxSPT', 'Local', 'Voyage Report Paper', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1533, '2798914246', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'ZPNSZX437ZN6JDA', NULL, NULL, NULL, 'VXpjfwe3AWD', 'Local', 'Voyage Report Paper', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1534, '8998475636', NULL, 'WPHNEVLXT34GIFJ', 'TNXPU7SP8EHWZ62', 'DXOFM3WTH3I6NJI', NULL, '217638', NULL, '217638', 'Import', 'V-Ribbed Belt (NT855) (217638)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1535, '3977186327', NULL, 'WPHNEVLXT34GIFJ', 'TNXPU7SP8EHWZ62', '8AV2GHR7PTN3MV3', NULL, 'RE113412/3411', NULL, 'RE113412/3411', 'Import', 'Vulastik Electric Rubber Coupling RE113412/3411', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1536, '8551717339', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'YP7OQCW4RM9FZEK', NULL, NULL, NULL, 'EL2d9AHKDRe', 'Local', 'Wall Clock', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1537, '3841519254', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'MS48MWQVVZBY189', NULL, NULL, NULL, 'VBlht6Ck9dH', 'Local', 'Wall Clock (Ajanta)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1538, '2772854845', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'N6F4J7BHRZ1WCH8', NULL, NULL, NULL, 'fyOqLk3Ba0j', 'Local', 'Wall Fan (Jony Brand)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1539, '9295881394', NULL, 'TJT23BXZLWIDR58', 'DTCTAOMKJZ2SI9X', 'C7XOLNZ9EYEZKK7', NULL, NULL, NULL, 'o0ORL68sw5A', 'Local', 'Warm Gumboot', NULL, NULL, 'Pair', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1540, '7974631793', NULL, 'TJT23BXZLWIDR58', 'DTCTAOMKJZ2SI9X', '6EGFHPLHZMN9LVQ', NULL, NULL, NULL, 'uWizQNAbVU0', 'Local', 'Warm Gumboot', NULL, NULL, 'Pair', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1541, '7377695996', NULL, 'TJT23BXZLWIDR58', 'DTCTAOMKJZ2SI9X', 'WZSAJYE6PA7CLIB', NULL, NULL, NULL, 'iInrkA7RTPM', 'Local', 'Warm Socks', NULL, NULL, 'Dzn', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1542, '9988219377', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'EBD846K7QBONVRJ', NULL, NULL, NULL, 'RQ0x9yqCAt7', 'Local', 'Water Abrasive Paper 120', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1543, '8356289752', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', '7I9MDUP4JOS7MBD', NULL, NULL, NULL, 'ClEXUHAt1rB', 'Local', 'Water Abrasive Paper 180', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1544, '4376532972', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'QSQIFYXRR7OVIPT', NULL, NULL, NULL, 'c9qZwAkfM4G', 'Local', 'Water Abrasive Paper 220', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1545, '8471835813', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', '5I94FF68M1F23X5', NULL, NULL, NULL, '580xYIEKS2g', 'Local', 'Water Abrasive Paper 320', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1546, '4382281964', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'Q8OC516UTHHEDSU', NULL, NULL, NULL, 'toDyrWX7M0C', 'Local', 'Water Abrasive Paper 400', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1547, '4312831557', NULL, 'MH35OWBFMR35ILN', 'XMAG1UXN247Z1FF', '1NAKEV6ZHZOD5SP', NULL, NULL, NULL, 'mRVUS7Cbfp2', 'Local', 'Water Fall Paint', NULL, NULL, 'Gallon', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1548, '9536152248', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'XCIEU11ATRFP6R1', NULL, NULL, NULL, '629b04yAOfj', 'Local', 'Water Filter Candle', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1549, '2457996425', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'CI32G1NNSS4WNKU', NULL, NULL, NULL, 'yQetJvLUWAa', 'Local', 'Water Filter Housing', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1550, '4362661363', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'U6PPTCBYNTTEUP2', NULL, NULL, NULL, 'aMbCBKTkH2L', 'Local', 'Water Filter Jug', NULL, NULL, 'Set', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1551, '1821268443', NULL, '2PURPOP1ACPKINM', 'US9B6OUBZYA62E8', 'G8YZAG747ARBZ6R', NULL, 'WF-2073', NULL, 'WF-2073', 'Local', 'Water Filter WF-2073 (Fleetguard)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1552, '4353142917', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'JND4K68IQGJNXK8', NULL, NULL, NULL, 'dp3wfNl6ZUF', 'Local', 'Water Finding Paste', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1553, '6214714259', NULL, '2PURPOP1ACPKINM', 'EBZFU3KQHCL2IS6', 'Q8GWW1N7S4R24RW', NULL, NULL, NULL, 'mptYqKWvlPd', 'Local', 'Water Line O\'Ring', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1554, '8981493587', NULL, '2PURPOP1ACPKINM', 'EBZFU3KQHCL2IS6', 'NNDRIPSZ4FQCN4S', NULL, NULL, NULL, 'x0Ew2j8QJez', 'Local', 'Water Line O\'Ring', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1555, '2644745796', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', '2IDMSKQCFNSFIWV', NULL, NULL, NULL, 'vO45WgFudw9', 'Local', 'Water Mug (RFL)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1556, '6352286691', NULL, '2PURPOP1ACPKINM', 'EBZFU3KQHCL2IS6', 'Z3OSRR8KCRF4CAU', NULL, NULL, NULL, 'NMDIxA3qe8V', 'Local', 'Water Seal', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1557, '5967113396', NULL, '2PURPOP1ACPKINM', 'EBZFU3KQHCL2IS6', 'A9QXODY1B9PXH26', NULL, NULL, NULL, 'PSHmUGZ93NY', 'Local', 'Water Seal', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1558, '7278466591', NULL, 'EB886WD44XASJTL', 'B29KZMCXGOPBJG3', 'QEKF3J2XDCZ25IP', NULL, NULL, NULL, 'zZgqJCS1hTU', 'Local', 'Water Tape', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1559, '4888939647', NULL, 'PQ4XVDW96CL7QQZ', 'PZNECLLN1S7KLAT', 'KFYHYQ5TMF6GFXT', NULL, NULL, NULL, 'i5yGDITYCfn', 'Local', 'Water Valve 0.5\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1560, '2467838297', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'NGD5S5WP1YURPMR', NULL, NULL, NULL, 'FnZS4Lylt7f', 'Local', 'WD-40', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1561, '8739225434', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'M3E9G22C8M11N5C', NULL, NULL, NULL, 'h6HL1GAju0T', 'Local', 'WD-40', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1562, '5333916187', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'LANZXD4NP1DFWDX', NULL, NULL, NULL, 'IFsdENi1t3H', 'Local', 'Weight Scale 5kg', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1563, '2392261131', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'MZ4KQ84HT1955HQ', NULL, NULL, NULL, 'Wt0ku4R67pH', 'Local', 'Welding Blue Glass', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1564, '9395629949', NULL, 'TJT23BXZLWIDR58', 'DTCTAOMKJZ2SI9X', 'TFRHZ4L3QD7EHOL', NULL, NULL, NULL, 'R0oqMOuYtkL', 'Local', 'Welding Boiler Suit', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1565, '2351333612', NULL, 'TJT23BXZLWIDR58', 'DTCTAOMKJZ2SI9X', '19MP5MLOYVPNU3J', NULL, NULL, NULL, 'kmSEo6tNdUx', 'Local', 'Welding Hand Gloves', NULL, NULL, 'Pair', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1566, '7168966717', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'Q38SVC1ONSRLMAB', NULL, NULL, NULL, '35sJCPdVY2g', 'Local', 'Welding Holder', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1567, '7448867172', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'LTV9EE679LLXVY3', NULL, NULL, NULL, '0X8iz6VJhNv', 'Local', 'Welding Holder (500A)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1568, '7883799855', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'E99UZKLE6O1ZRW4', NULL, NULL, NULL, 'pEV4Ycj97or', 'Local', 'Wheel Soap', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1569, '9298237293', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'QUAT7SJUWBCNNUO', NULL, NULL, NULL, 'kX1FhKpvGWQ', 'Local', 'Whistle', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1570, '4215611951', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'TCCWS4PJ8H3PHW5', NULL, NULL, NULL, 'qFlzk58fUKR', 'Local', 'White Board Duster', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1571, '5117113591', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'GQ7DWUTNUW95TZ7', NULL, NULL, NULL, 'mUxyNHQCKw2', 'Local', 'White Cement', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1572, '7227751582', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'ZTX8E85IFMJ7W5O', NULL, NULL, NULL, 'OD7HN8Ulf1y', 'Local', 'White Glass (for Welding Helmet)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1573, '7814585583', NULL, 'TJT23BXZLWIDR58', 'DTCTAOMKJZ2SI9X', '92TX4BB5SFF9A49', NULL, NULL, NULL, '2jhpkvzdLgf', 'Local', 'White Gumboot (For Deck)', NULL, NULL, 'Pair', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1574, '2941435243', NULL, 'MH35OWBFMR35ILN', 'XMAG1UXN247Z1FF', 'K97H1ACDMRLWCMO', NULL, NULL, NULL, 'CvJx1GP53NK', 'Local', 'White Paint', NULL, NULL, 'Tin', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1575, '3915738944', NULL, '4TQXLMLBLJPAQP1', 'AP7VRUIXZF1AZ3Q', '7R2ERNI1J1RYMQR', NULL, NULL, NULL, 'y3G18750W4l', 'Local', 'White Rope 10mm', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1576, '6594599616', NULL, '4TQXLMLBLJPAQP1', 'AP7VRUIXZF1AZ3Q', 'ROUGIFSY4MR8OB4', NULL, NULL, NULL, '7AtW4b8IohH', 'Local', 'White Rope 3.75mm', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1577, '4399657111', NULL, '4TQXLMLBLJPAQP1', 'AP7VRUIXZF1AZ3Q', 'CHCFGIZMXHPZ43M', NULL, NULL, NULL, '3d9bIVyX0zr', 'Local', 'White Rope 3mm (Bangla)', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1578, '4936226661', NULL, '4TQXLMLBLJPAQP1', 'AP7VRUIXZF1AZ3Q', 'VH1PB6FTO158TIT', NULL, NULL, NULL, 'M1fZmOawHC4', 'Local', 'White Rope 4mm (Bangla)', NULL, NULL, 'Kg', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1579, '4374872634', NULL, 'PQ4XVDW96CL7QQZ', 'PZNECLLN1S7KLAT', 'SPRY1I2YNHWHDI5', NULL, NULL, NULL, 'L9ja7qZx3wd', 'Local', 'White Valve 0.5\"', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1580, '4577693189', NULL, 'TJT23BXZLWIDR58', 'DTCTAOMKJZ2SI9X', 'THZBG2DDAWDXOCQ', NULL, NULL, NULL, '2HBlLMUbRmu', 'Local', 'Winter Jacket (Grade 1)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1581, '8577713155', NULL, 'TJT23BXZLWIDR58', 'DTCTAOMKJZ2SI9X', 'NFKJTY4MH7QCGN1', NULL, NULL, NULL, 'zHmpCXZWixP', 'Local', 'Winter Jacket (Grade 1)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1582, '7392677839', NULL, 'TJT23BXZLWIDR58', 'DTCTAOMKJZ2SI9X', 'ZHNLPGP1UZO9J1C', NULL, NULL, NULL, '4hZBtgy1QWK', 'Local', 'Winter Jacket (Grade 2)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1583, '9922257662', NULL, 'TJT23BXZLWIDR58', 'DTCTAOMKJZ2SI9X', '3A43XQ8IKDKTGHF', NULL, NULL, NULL, 's9fQHZXEuDR', 'Local', 'Winter Jacket (Grade 2)', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1584, '8227475595', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'TENAWAKGSDX62Y5', NULL, NULL, NULL, 'SxMvAs9qZHK', 'Local', 'Wire Brush', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1585, '2588565163', NULL, 'PQ2TFH7QEDQKZNJ', '76GZ38L2XMDGYKG', 'KPF7UNJ2M9J3R5V', NULL, NULL, NULL, 'kC6Yvx42AL8', 'Local', 'Wire Brush', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1586, '4137586818', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'NYZGR9YBFDM7KO7', NULL, NULL, NULL, 'SdIYsp715C0', 'Local', 'Wire Clip', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1587, '7326929553', NULL, 'V3C1GMHCYYC5KMG', '8NMKQ7AHV87O2NL', 'UH2MQ1U4A3QEGEB', NULL, NULL, NULL, 'GAUJjv2WVQT', 'Local', 'Wire Clip 26mm', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1588, '8736354384', NULL, 'TJT23BXZLWIDR58', 'DTCTAOMKJZ2SI9X', 'KKIBM63JBBY27GW', NULL, NULL, NULL, 'oYUJTVxh1IR', 'Local', 'Woolen Cap', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1589, '4447485244', NULL, 'TJT23BXZLWIDR58', 'DTCTAOMKJZ2SI9X', 'KPWSKQJBXPTCJ6R', NULL, NULL, NULL, 'QNShRF3ngUi', 'Local', 'Woolen Hand Gloves', NULL, NULL, 'Dzn', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1590, '5265543942', NULL, 'TJT23BXZLWIDR58', 'DTCTAOMKJZ2SI9X', 'ILIU6BC8BMGT9UA', NULL, NULL, NULL, 'C8PmslKWZ9t', 'Local', 'Woolen Hand Gloves', NULL, NULL, 'Dzn', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1591, '7877117731', NULL, 'TJT23BXZLWIDR58', 'DTCTAOMKJZ2SI9X', 'YQDJB935AV68QSE', NULL, NULL, NULL, 'uGsJx7hL38Y', 'Local', 'Woolen Hand Gloves', NULL, NULL, 'Dzn', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1592, '4892263154', NULL, 'TJT23BXZLWIDR58', 'DTCTAOMKJZ2SI9X', '736XTPW2MRFTAGM', NULL, NULL, NULL, 'a7dZXeKpEF5', 'Local', 'Woolen Hand Gloves', NULL, NULL, 'Dzn', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1593, '2187425948', NULL, 'TJT23BXZLWIDR58', 'DTCTAOMKJZ2SI9X', '3E4MCCB78UR7FSH', NULL, NULL, NULL, '2N0cDX8eHLC', 'Local', 'Woolen Hand Gloves', NULL, NULL, 'Dzn', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1594, '1471352636', NULL, 'TJT23BXZLWIDR58', 'DTCTAOMKJZ2SI9X', 'TSV529Y7PUZ6HKF', NULL, NULL, NULL, 'I2xaAkXtlJV', 'Local', 'Woolen Jacket', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1595, '3443889283', NULL, 'TJT23BXZLWIDR58', 'DTCTAOMKJZ2SI9X', 'WP8V2Z7R3LZMIV1', NULL, NULL, NULL, 'iTj0DCaBHOy', 'Local', 'Woolen Socks', NULL, NULL, 'Dzn', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1596, '5235339932', NULL, 'TJT23BXZLWIDR58', 'DTCTAOMKJZ2SI9X', 'YOEOI2XCV4S5PB8', NULL, NULL, NULL, 'SPD8GyE7oqO', 'Local', 'Woolen Socks', NULL, NULL, 'Dzn', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1597, '3455915824', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', '39VQ6WKMGAIC8J8', NULL, NULL, NULL, 'GZoSU8crn6t', 'Local', 'Xeldrin 10mg', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1598, '8521632785', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'Y72L183KKHHEHMS', NULL, NULL, NULL, '1cyfBSElNpz', 'Local', 'Xeldrin 20mg', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1599, '1579194119', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', '9IU7JDQVQAGSWQH', NULL, NULL, NULL, 'o8U4h9VzavC', 'Local', 'Xeldrin 20mg', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1600, '1729114339', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'FSPZGFC2QEX59QF', NULL, NULL, NULL, 'nI80BLrzyop', 'Local', 'Xeldrin 20mg', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1601, '3613785349', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', '384RTB41BERPI7W', NULL, NULL, NULL, 'kANldF4zpQt', 'Local', 'Xeldrin 20mg', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1602, '2165961367', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'EDB5FTKM439P42V', NULL, NULL, NULL, 'Fk4v2tPdMJS', 'Local', 'Xorel 20mg', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1603, '4555768479', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', '5D2TUD2JL73N8ZX', NULL, NULL, NULL, 'HStX2810A7m', 'Local', 'Xorel 20mg', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1604, '3442925226', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'QXAEKH6GN467DV5', NULL, NULL, NULL, 'ES4TIX6afPn', 'Local', 'Xorel 20mg', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1605, '1618193364', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', '5U6INQR77EEU5XX', NULL, NULL, NULL, 'rRHKxS5aptN', 'Local', 'Xorel 20mg', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1606, '2838365941', NULL, 'MH35OWBFMR35ILN', 'XMAG1UXN247Z1FF', 'A3CLWZC5XF14X74', NULL, NULL, NULL, 'u5kBwi0WvZX', 'Local', 'Yellow Paint', NULL, NULL, 'Gallon', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1607, '5892828159', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', '8M4MAQS67Z2R4V2', NULL, NULL, NULL, '5FYj12aE6cG', 'Local', 'Zimax 250mg', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1608, '5146925628', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', '3YC22EDJR9P36MG', NULL, NULL, NULL, 'wcUfPkzZFlY', 'Local', 'Zimax 500mg', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1609, '9269852121', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'DGQIRYQ4IFRSCIK', NULL, NULL, NULL, 'IcNzkKHZDu5', 'Local', 'Zimax 500mg', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1),
(1610, '7284734441', NULL, 'B2TJM7K3VWDP8OL', '5EUL9K9GKTPUM71', 'F1VX7R1OBHKIQFB', NULL, NULL, NULL, 'KHpXv7smykI', 'Local', 'Zox', NULL, NULL, 'Pcs', 0, NULL, 'MOYWV6DDJDJ5RWQ', 'Csv Product', 'https://paradisemarinebd.com/erp/my-assets/image/product.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_model`
--

CREATE TABLE `product_model` (
  `id` int(11) NOT NULL,
  `model_id` varchar(255) DEFAULT NULL,
  `model_name` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_model`
--

INSERT INTO `product_model` (`id`, `model_id`, `model_name`, `status`) VALUES
(1, 'MOYWV6DDJDJ5RWQ', NULL, 1),
(2, '1RJTXYSB7DKP69Q', '202C', 1),
(3, 'LWCUI8UEOQGSOOR', 'ME90207', 1),
(4, 'NPW47ACX37F2ZOO', 'M65901', 1),
(5, 'HH6A44ZGM3ZU488', 'FN-3', 1),
(6, 'BHV36CCHGJ89NWE', '5X440', 1),
(7, '8BGXM4PLRTPJ62I', 'IC-718', 1),
(8, 'SAGNNAFTK75X7S9', 'IC-2300H', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_purchase`
--

CREATE TABLE `product_purchase` (
  `id` int(11) NOT NULL,
  `purchase_id` bigint(20) NOT NULL,
  `purchase_order` varchar(255) DEFAULT NULL,
  `supplier_id` bigint(20) DEFAULT NULL,
  `grand_total_amount` decimal(12,2) DEFAULT 0.00,
  `paid_amount` decimal(10,2) DEFAULT 0.00,
  `due_amount` decimal(10,2) DEFAULT 0.00,
  `total_discount` decimal(10,2) DEFAULT NULL,
  `purchase_date` varchar(50) DEFAULT NULL,
  `purchase_order_date` varchar(255) DEFAULT NULL,
  `purchase_details` text DEFAULT NULL,
  `status` int(2) DEFAULT NULL,
  `bank_id` varchar(30) DEFAULT NULL,
  `cheque_no` varchar(255) DEFAULT NULL,
  `cheque_date` varchar(255) DEFAULT NULL,
  `payment_type` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_purchase`
--

INSERT INTO `product_purchase` (`id`, `purchase_id`, `purchase_order`, `supplier_id`, `grand_total_amount`, `paid_amount`, `due_amount`, `total_discount`, `purchase_date`, `purchase_order_date`, `purchase_details`, `status`, `bank_id`, `cheque_no`, `cheque_date`, `payment_type`) VALUES
(1, 20220810104945, 'PO1-22-23', NULL, 5799.00, NULL, NULL, NULL, '2022-08-10', '2022-08-10', NULL, 2, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_purchase_details`
--

CREATE TABLE `product_purchase_details` (
  `id` int(11) NOT NULL,
  `purchase_detail_id` varchar(100) DEFAULT NULL,
  `purchase_id` bigint(20) DEFAULT NULL,
  `rqsn_no` varchar(255) DEFAULT NULL,
  `invoice_no` varchar(255) NOT NULL,
  `invoice_no_p` varchar(255) NOT NULL,
  `chalan_id` varchar(30) DEFAULT NULL,
  `product_id` varchar(30) DEFAULT NULL,
  `supplier_id` bigint(255) DEFAULT NULL,
  `barcode` varchar(100) DEFAULT NULL,
  `sn` varchar(1000) DEFAULT NULL,
  `quantity` decimal(10,2) DEFAULT NULL,
  `qty` decimal(10,2) DEFAULT NULL,
  `lot_number` bigint(255) DEFAULT NULL,
  `origin` varchar(100) DEFAULT NULL,
  `warehouse` varchar(255) DEFAULT NULL,
  `warrenty_date` varchar(50) DEFAULT NULL,
  `expired_date` varchar(50) DEFAULT NULL,
  `rate` decimal(10,2) DEFAULT NULL,
  `total_amount` decimal(10,2) DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `additional_cost` varchar(255) DEFAULT NULL,
  `chalan_img` varchar(255) DEFAULT NULL,
  `supplier_invoice` varchar(255) DEFAULT NULL,
  `supplier_invoice_p` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `isAprv` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_purchase_details`
--

INSERT INTO `product_purchase_details` (`id`, `purchase_detail_id`, `purchase_id`, `rqsn_no`, `invoice_no`, `invoice_no_p`, `chalan_id`, `product_id`, `supplier_id`, `barcode`, `sn`, `quantity`, `qty`, `lot_number`, `origin`, `warehouse`, `warrenty_date`, `expired_date`, `rate`, `total_amount`, `discount`, `additional_cost`, `chalan_img`, `supplier_invoice`, `supplier_invoice_p`, `status`, `isAprv`) VALUES
(1, 'vrPQZsDD6BhCDVg', 20220810104945, 'STVR2', '', '', '1234', '9642491257', 18, NULL, NULL, 2.00, 2.00, NULL, '', NULL, '', NULL, 400.00, 800.00, 0, '', NULL, NULL, NULL, 1, 1),
(2, 'ASrYghLEkS3BS59', 20220810104945, 'STVR2', '', '', '', '9186736396', 14, NULL, NULL, 12.00, 12.00, NULL, '', NULL, '', NULL, 18.00, 216.00, 0, '', NULL, NULL, NULL, 1, 1),
(3, 'kF40LuQoD5jr6FT', 20220810104945, 'STVR2', '', '', '', '7775577523', 23, NULL, NULL, 12.00, 12.00, NULL, '', NULL, '', NULL, 13.00, 156.00, 0, '', NULL, NULL, NULL, 1, 1),
(4, 'kBsdRuTkp33nmxC', 20220810104945, 'STVR2', '', '', '', '7251146751', 1, NULL, NULL, 1.00, 1.00, NULL, '', NULL, '', NULL, 85.00, 85.00, 0, '', NULL, NULL, NULL, 1, 1),
(5, 'ET4kovXEO8AGHzq', 20220810104945, 'STVR2', '', '', '', '6986126135', 14, NULL, NULL, 12.00, 12.00, NULL, '', NULL, '', NULL, 26.00, 312.00, 0, '', NULL, NULL, NULL, 1, 1),
(6, 'EuYFWngE0oYXERD', 20220810104945, 'STVR2', '', '', '', '6762975686', 20, NULL, NULL, 1.00, 1.00, NULL, '', NULL, '', NULL, 1450.00, 1450.00, 0, '', NULL, NULL, NULL, 1, 1),
(7, 'HuFIXQsaE3Y2doi', 20220810104945, 'STVR2', '', '', '', '5866725828', 1, NULL, NULL, 2.00, 2.00, NULL, '', NULL, '', NULL, 100.00, 200.00, 0, '', NULL, NULL, NULL, 1, 1),
(8, 'G6qzjBecVdNWgK', 20220810104945, 'STVR2', '', '', '', '4888939647', 25, NULL, NULL, 6.00, 6.00, NULL, '', NULL, '', NULL, 370.00, 2220.00, 0, '', NULL, NULL, NULL, 1, 1),
(9, 'MG377hO7Np2FQwv', 20220810104945, 'STVR2', '', '', '', '1393189199', 1, NULL, NULL, 30.00, 30.00, NULL, '', NULL, '', NULL, 12.00, 360.00, 0, '', NULL, NULL, NULL, 1, 1),
(10, 'e7stIDSevETWal5', NULL, NULL, '', '', NULL, '1215826772', NULL, NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3);

-- --------------------------------------------------------

--
-- Table structure for table `product_return`
--

CREATE TABLE `product_return` (
  `return_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `product_id` varchar(20) CHARACTER SET latin1 NOT NULL,
  `invoice_id` varchar(20) CHARACTER SET latin1 NOT NULL,
  `purchase_id` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `date_purchase` varchar(20) CHARACTER SET latin1 NOT NULL,
  `date_return` varchar(30) CHARACTER SET latin1 NOT NULL,
  `byy_qty` float NOT NULL,
  `ret_qty` float NOT NULL,
  `customer_id` varchar(20) CHARACTER SET latin1 NOT NULL,
  `supplier_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `product_rate` decimal(10,2) NOT NULL DEFAULT 0.00,
  `deduction` float NOT NULL,
  `total_deduct` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total_tax` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total_ret_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `net_total_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `reason` text CHARACTER SET latin1 NOT NULL,
  `usablity` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `product_service`
--

CREATE TABLE `product_service` (
  `service_id` int(11) NOT NULL,
  `service_name` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `charge` decimal(10,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `product_subcat`
--

CREATE TABLE `product_subcat` (
  `id` int(255) NOT NULL,
  `sub_cat_id` varchar(255) DEFAULT NULL,
  `category_id` varchar(255) DEFAULT NULL,
  `subcat_name` varchar(255) DEFAULT NULL,
  `status` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_subcat`
--

INSERT INTO `product_subcat` (`id`, `sub_cat_id`, `category_id`, `subcat_name`, `status`) VALUES
(1, '8NMKQ7AHV87O2NL', 'V3C1GMHCYYC5KMG', NULL, 1),
(2, 'WLR1LOHS5JONLTJ', 'Y2KK6KNJQIWD23Z', NULL, 1),
(3, 'HLE72FWD8USNC5Y', '2PURPOP1ACPKINM', 'Shackles', 1),
(4, 'FVAPRB2V3ITADUE', '1DFJOUKTOQ28QOI', 'Electrical Accessories', 1),
(5, 'B29KZMCXGOPBJG3', 'EB886WD44XASJTL', NULL, 1),
(6, '76GZ38L2XMDGYKG', 'PQ2TFH7QEDQKZNJ', NULL, 1),
(7, '5EUL9K9GKTPUM71', 'B2TJM7K3VWDP8OL', NULL, 1),
(8, 'US9B6OUBZYA62E8', '2PURPOP1ACPKINM', 'Filters', 1),
(9, '3XUMP7QWQ7BTCTO', '32GAZCG9EGXK5S5', 'Compressors & Parts', 1),
(10, '8SM6ZUETPZKZHVB', '1DFJOUKTOQ28QOI', 'Meters', 1),
(11, 'PZNECLLN1S7KLAT', 'PQ4XVDW96CL7QQZ', 'Metal Materials', 1),
(12, 'TDZYAAE2449JJPO', '32GAZCG9EGXK5S5', 'Refrigeration System Accessories', 1),
(13, 'AP7VRUIXZF1AZ3Q', '4TQXLMLBLJPAQP1', 'Wires & Ropes', 1),
(14, '96NEXH7VXOGZEEV', '4TQXLMLBLJPAQP1', 'Fishing Nets', 1),
(15, '3DAABSCEK5CQYBM', '4TQXLMLBLJPAQP1', 'Twines', 1),
(16, '2LRMZF78F9TMQLN', '2PURPOP1ACPKINM', 'Bearings', 1),
(17, 'D7LDHD3U9FA9HXD', 'PQ4XVDW96CL7QQZ', 'Wood Materials', 1),
(18, 'OQDFA9V8X4P86QI', 'WPHNEVLXT34GIFJ', 'Generator Engine', 1),
(19, 'WXIC3HA35CQKBDW', 'D3ITGWOF4UE1XH5', NULL, 1),
(20, 'XMAG1UXN247Z1FF', 'MH35OWBFMR35ILN', NULL, 1),
(21, 'DVB9GGYBU2TQYKH', '2PURPOP1ACPKINM', 'Fastenings', 1),
(22, 'DTCTAOMKJZ2SI9X', 'TJT23BXZLWIDR58', NULL, 1),
(23, 'JCJAXRURKLP2RTX', '2AAUOPF6HLC6PFD', 'Winch Accessories', 1),
(24, 'PID8OPNPVESJDI3', '4TQXLMLBLJPAQP1', 'Fishing Accessories', 1),
(25, 'JUKRRNVHG6LOEUR', '2PURPOP1ACPKINM', 'Pipes', 1),
(26, 'EBZFU3KQHCL2IS6', '2PURPOP1ACPKINM', 'Seals', 1),
(27, 'TNXPU7SP8EHWZ62', 'WPHNEVLXT34GIFJ', 'Engine Accessories', 1),
(28, 'S8FDR2PZE6VWCLV', '32GAZCG9EGXK5S5', 'Coolant', 1),
(29, 'MV7C1KBSEUBJHHD', '4TQXLMLBLJPAQP1', 'Plastic & Poly Materials', 1),
(30, '1IPW5PLH4NWCZKG', '4TQXLMLBLJPAQP1', 'Floats & Bobbins', 1),
(31, '87G3NU8TY4J2W25', '2PURPOP1ACPKINM', 'Pumps', 1),
(32, '8VY7CDXPW6EC6MJ', '2PURPOP1ACPKINM', 'Regulators', 1),
(33, 'B4IT4AZ9VY5PBXP', 'PQ4XVDW96CL7QQZ', 'Rubber Materials', 1),
(34, 'AA3R7TZFOKO3ZQD', '2PURPOP1ACPKINM', 'Clamps', 1),
(35, '4QQ92B6QKZAKKS9', '6M9BK6G65DPKHS4', NULL, 1),
(36, 'A5I9Z6XUP2DBV5M', '4DD8A8Z82MDXR12', 'Communication Sets', 1),
(37, 'CEGSXLCPRE3E6FK', 'PQ4XVDW96CL7QQZ', 'Plastic Materials', 1),
(38, 'A4EV4ZSA1IH61O2', '4TQXLMLBLJPAQP1', 'Trawl Doors & Parts', 1),
(39, 'M5F9GPZF3GQOES7', 'WPHNEVLXT34GIFJ', 'Main Engine', 1),
(40, 'CIM3CJZT8R5D4NL', 'WPHNEVLXT34GIFJ', 'Auxiliary Engine', 1),
(41, '9EGFJJ7MFK8O4KC', '32GAZCG9EGXK5S5', 'Condenser & Parts', 1),
(42, '7JMYV7DMEGJFHZD', '4TQXLMLBLJPAQP1', 'Sonar & Parts', 1),
(43, '1O75ZAJPO39HLZ9', '4TQXLMLBLJPAQP1', 'Radar & Parts', 1),
(44, 'MLAQCUR86MVCMO2', '2PURPOP1ACPKINM', 'Gears', 1),
(45, 'WA8H4ZXX91TGRVY', '2PURPOP1ACPKINM', 'Propellers & Parts', 1),
(46, 'F9WO6X492JVRSY1', '2AAUOPF6HLC6PFD', 'Winch Engine & Parts', 1),
(47, 'GCQOD141Y87YWPJ', '4DD8A8Z82MDXR12', 'Communication Accessories', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_type`
--

CREATE TABLE `product_type` (
  `id` int(11) NOT NULL,
  `ptype_id` varchar(255) NOT NULL,
  `ptype_name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order_cart`
--

CREATE TABLE `purchase_order_cart` (
  `id` int(255) NOT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `rqsn_no` varchar(255) DEFAULT NULL,
  `rqsn_detail_id` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `subcat` varchar(255) DEFAULT NULL,
  `parts` varchar(255) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `qty` varchar(255) DEFAULT NULL,
  `order_qty` varchar(255) DEFAULT NULL,
  `supplier_id` bigint(50) DEFAULT NULL,
  `warrenty_date` date DEFAULT NULL,
  `rate` bigint(50) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `currency_value` varchar(255) DEFAULT NULL,
  `discount` bigint(50) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  `additional_cost` varchar(255) DEFAULT NULL,
  `is_modified` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `quotation`
--

CREATE TABLE `quotation` (
  `id` int(20) NOT NULL,
  `quotation_id` varchar(30) NOT NULL,
  `quot_description` text NOT NULL,
  `customer_id` varchar(30) NOT NULL,
  `quotdate` date NOT NULL,
  `expire_date` date DEFAULT NULL,
  `item_total_amount` decimal(12,2) NOT NULL,
  `item_total_dicount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `item_total_tax` decimal(10,2) NOT NULL DEFAULT 0.00,
  `service_total_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `service_total_discount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `service_total_tax` decimal(10,2) NOT NULL DEFAULT 0.00,
  `quot_dis_item` decimal(10,2) NOT NULL DEFAULT 0.00,
  `quot_dis_service` decimal(10,2) NOT NULL DEFAULT 0.00,
  `quot_no` varchar(50) NOT NULL,
  `create_by` varchar(30) NOT NULL,
  `create_date` date NOT NULL,
  `update_by` varchar(30) DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `cust_show` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `quotation_service_used`
--

CREATE TABLE `quotation_service_used` (
  `id` int(11) NOT NULL,
  `quot_id` varchar(20) NOT NULL,
  `service_id` int(11) NOT NULL,
  `qty` decimal(10,2) NOT NULL DEFAULT 0.00,
  `charge` decimal(10,2) NOT NULL DEFAULT 0.00,
  `discount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `discount_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `tax` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total` decimal(10,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `quotation_taxinfo`
--

CREATE TABLE `quotation_taxinfo` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `customer_id` int(11) NOT NULL,
  `relation_id` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quotation_taxinfo`
--

INSERT INTO `quotation_taxinfo` (`id`, `date`, `customer_id`, `relation_id`) VALUES
(1, '2020-09-05', 1, 'item1000'),
(2, '2020-09-05', 1, 'serv1000');

-- --------------------------------------------------------

--
-- Table structure for table `quot_products_used`
--

CREATE TABLE `quot_products_used` (
  `id` int(11) NOT NULL,
  `quot_id` varchar(100) NOT NULL,
  `product_id` varchar(100) NOT NULL,
  `serial_no` varchar(30) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `used_qty` decimal(10,2) DEFAULT NULL,
  `rate` decimal(10,2) DEFAULT NULL,
  `supplier_rate` float DEFAULT NULL,
  `total_price` decimal(12,2) DEFAULT NULL,
  `discount` decimal(10,2) DEFAULT NULL,
  `discount_per` varchar(15) DEFAULT NULL,
  `tax` decimal(10,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `role_permission`
--

CREATE TABLE `role_permission` (
  `id` int(11) NOT NULL,
  `fk_module_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `create` tinyint(1) DEFAULT NULL,
  `read` tinyint(1) DEFAULT NULL,
  `update` tinyint(1) DEFAULT NULL,
  `delete` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `role_permission`
--

INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES
(13604, 1, 14, 0, 0, 1, 0),
(13605, 2, 14, 0, 0, 1, 0),
(13606, 3, 14, 0, 0, 1, 0),
(13607, 114, 14, 0, 0, 1, 0),
(13608, 123, 14, 0, 0, 1, 0),
(13609, 125, 14, 0, 0, 1, 0),
(13610, 142, 14, 0, 0, 1, 0),
(13611, 143, 14, 0, 0, 1, 0),
(13612, 144, 14, 0, 1, 1, 0),
(13613, 145, 14, 0, 1, 1, 0),
(13614, 146, 14, 0, 1, 1, 0),
(13615, 147, 14, 0, 1, 1, 0),
(13616, 148, 14, 0, 1, 1, 0),
(13617, 25, 14, 1, 1, 1, 0),
(13618, 26, 14, 1, 1, 1, 0),
(13619, 27, 14, 1, 1, 1, 0),
(13620, 28, 14, 1, 1, 1, 0),
(13621, 111, 14, 1, 1, 1, 0),
(13622, 113, 14, 1, 1, 1, 0),
(13623, 21, 14, 1, 1, 1, 0),
(13624, 22, 14, 1, 1, 1, 0),
(13625, 23, 14, 1, 1, 1, 0),
(13626, 24, 14, 1, 1, 1, 0),
(13627, 30, 14, 1, 1, 1, 0),
(13628, 149, 14, 1, 1, 1, 0),
(13629, 167, 14, 1, 1, 1, 0),
(13630, 31, 14, 1, 1, 1, 0),
(13631, 32, 14, 1, 1, 1, 0),
(13632, 33, 14, 1, 1, 1, 0),
(13633, 112, 14, 1, 1, 1, 0),
(13634, 35, 14, 1, 1, 1, 0),
(13635, 36, 14, 1, 1, 1, 0),
(13636, 124, 14, 1, 1, 1, 0),
(13637, 135, 14, 1, 1, 1, 0),
(13638, 155, 14, 1, 1, 1, 0),
(13639, 156, 14, 1, 1, 1, 0),
(13640, 157, 14, 1, 1, 1, 0),
(13641, 158, 14, 1, 1, 1, 0),
(13642, 43, 14, 0, 1, 0, 0),
(13643, 162, 14, 0, 1, 0, 0),
(13644, 163, 14, 0, 1, 0, 0),
(13645, 164, 14, 0, 1, 0, 0),
(13646, 165, 14, 0, 1, 0, 0),
(13647, 37, 14, 0, 0, 0, 0),
(13648, 38, 14, 0, 0, 0, 0),
(13649, 39, 14, 0, 0, 0, 0),
(13650, 40, 14, 0, 0, 0, 0),
(13651, 139, 14, 0, 0, 0, 0),
(13652, 140, 14, 0, 0, 0, 0),
(13653, 46, 14, 0, 1, 0, 0),
(13654, 47, 14, 0, 1, 0, 0),
(13655, 48, 14, 0, 1, 0, 0),
(13656, 49, 14, 0, 1, 0, 0),
(13657, 50, 14, 0, 1, 0, 0),
(13658, 51, 14, 0, 1, 0, 0),
(13659, 52, 14, 0, 1, 0, 0),
(13660, 53, 14, 0, 1, 0, 0),
(13661, 54, 14, 0, 1, 0, 0),
(13662, 55, 14, 0, 1, 0, 0),
(13663, 97, 14, 0, 1, 0, 0),
(13664, 98, 14, 0, 1, 0, 0),
(13665, 99, 14, 0, 1, 0, 0),
(13666, 100, 14, 0, 1, 0, 0),
(13667, 101, 14, 0, 1, 0, 0),
(13668, 102, 14, 0, 1, 0, 0),
(13669, 122, 14, 0, 1, 0, 0),
(13670, 166, 14, 0, 1, 0, 0),
(13671, 4, 14, 0, 1, 0, 0),
(13672, 5, 14, 0, 1, 0, 0),
(13673, 6, 14, 0, 1, 0, 0),
(13674, 7, 14, 0, 1, 0, 0),
(13675, 8, 14, 0, 1, 0, 0),
(13676, 9, 14, 0, 1, 0, 0),
(13677, 10, 14, 0, 1, 0, 0),
(13678, 11, 14, 0, 1, 0, 0),
(13679, 12, 14, 0, 1, 0, 0),
(13680, 13, 14, 0, 1, 0, 0),
(13681, 14, 14, 0, 1, 0, 0),
(13682, 15, 14, 0, 1, 0, 0),
(13683, 16, 14, 0, 1, 0, 0),
(13684, 17, 14, 0, 1, 0, 0),
(13685, 18, 14, 0, 1, 0, 0),
(13686, 19, 14, 0, 1, 0, 0),
(13687, 56, 14, 1, 1, 0, 0),
(13688, 57, 14, 1, 1, 0, 0),
(13689, 58, 14, 1, 1, 0, 0),
(13690, 41, 14, 0, 0, 0, 0),
(13691, 103, 14, 0, 0, 0, 0),
(13692, 104, 14, 0, 0, 0, 0),
(13693, 109, 14, 0, 0, 0, 0),
(13694, 110, 14, 0, 0, 0, 0),
(13695, 60, 14, 0, 0, 0, 0),
(13696, 61, 14, 0, 0, 0, 0),
(13697, 62, 14, 0, 0, 0, 0),
(13698, 63, 14, 0, 0, 0, 0),
(13699, 64, 14, 0, 0, 0, 0),
(13700, 65, 14, 0, 0, 0, 0),
(13701, 66, 14, 0, 0, 0, 0),
(13702, 67, 14, 0, 0, 0, 0),
(13703, 68, 14, 0, 0, 0, 0),
(13704, 69, 14, 0, 0, 0, 0),
(13705, 70, 14, 0, 0, 0, 0),
(13706, 71, 14, 0, 0, 0, 0),
(13707, 72, 14, 0, 0, 0, 0),
(13708, 73, 14, 0, 0, 0, 0),
(13709, 74, 14, 0, 0, 0, 0),
(13710, 75, 14, 0, 0, 0, 0),
(13711, 76, 14, 0, 0, 0, 0),
(13712, 77, 14, 0, 0, 0, 0),
(13713, 78, 14, 0, 0, 0, 0),
(13714, 79, 14, 0, 0, 0, 0),
(13715, 80, 14, 0, 0, 0, 0),
(13716, 81, 14, 0, 0, 0, 0),
(13717, 82, 14, 0, 0, 0, 0),
(13718, 83, 14, 0, 0, 0, 0),
(13719, 84, 14, 0, 0, 0, 0),
(13720, 85, 14, 0, 0, 0, 0),
(13721, 86, 14, 0, 0, 0, 0),
(13722, 105, 14, 0, 0, 0, 0),
(13723, 106, 14, 0, 0, 0, 0),
(13724, 107, 14, 0, 0, 0, 0),
(13725, 108, 14, 0, 0, 0, 0),
(13726, 59, 14, 0, 0, 0, 0),
(13727, 87, 14, 0, 0, 0, 0),
(13728, 88, 14, 0, 0, 0, 0),
(13729, 89, 14, 0, 0, 0, 0),
(13730, 90, 14, 0, 0, 0, 0),
(13731, 91, 14, 0, 0, 0, 0),
(13732, 92, 14, 0, 0, 0, 0),
(13733, 93, 14, 0, 0, 0, 0),
(13734, 94, 14, 0, 0, 0, 0),
(13735, 95, 14, 0, 0, 0, 0),
(13736, 96, 14, 0, 0, 0, 0),
(13737, 115, 14, 0, 0, 0, 0),
(13738, 116, 14, 0, 0, 0, 0),
(13739, 117, 14, 0, 0, 0, 0),
(13740, 118, 14, 0, 0, 0, 0),
(13741, 119, 14, 1, 1, 1, 1),
(13742, 120, 14, 1, 1, 1, 1),
(13743, 121, 14, 1, 1, 1, 1),
(13744, 126, 14, 0, 0, 0, 0),
(13745, 127, 14, 0, 0, 0, 0),
(13746, 128, 14, 1, 1, 1, 0),
(13747, 129, 14, 1, 1, 1, 0),
(13748, 138, 14, 1, 1, 1, 0),
(13749, 141, 14, 1, 1, 1, 0),
(13750, 150, 14, 1, 1, 1, 0),
(13751, 151, 14, 1, 1, 1, 0),
(13752, 152, 14, 1, 1, 1, 0),
(13753, 153, 14, 1, 1, 1, 0),
(13754, 130, 14, 0, 0, 0, 0),
(13755, 131, 14, 0, 0, 0, 0),
(13756, 137, 14, 0, 0, 0, 0),
(13757, 132, 14, 1, 1, 1, 0),
(13758, 133, 14, 1, 1, 1, 0),
(13759, 159, 14, 1, 1, 1, 0),
(13760, 160, 14, 1, 1, 1, 0),
(13761, 161, 14, 1, 1, 1, 0),
(13762, 136, 14, 0, 0, 0, 0),
(13763, 1, 1, 1, 1, 1, 1),
(13764, 2, 1, 1, 1, 1, 1),
(13765, 3, 1, 1, 1, 1, 1),
(13766, 114, 1, 1, 1, 1, 1),
(13767, 123, 1, 1, 1, 1, 1),
(13768, 125, 1, 1, 1, 1, 1),
(13769, 142, 1, 1, 1, 1, 1),
(13770, 143, 1, 1, 1, 1, 1),
(13771, 144, 1, 1, 1, 1, 1),
(13772, 145, 1, 1, 1, 1, 1),
(13773, 146, 1, 1, 1, 1, 1),
(13774, 147, 1, 1, 1, 1, 1),
(13775, 148, 1, 1, 1, 1, 1),
(13776, 25, 1, 1, 1, 1, 1),
(13777, 26, 1, 1, 1, 1, 1),
(13778, 27, 1, 1, 1, 1, 1),
(13779, 28, 1, 1, 1, 1, 1),
(13780, 111, 1, 1, 1, 1, 1),
(13781, 113, 1, 1, 1, 1, 1),
(13782, 21, 1, 1, 1, 1, 1),
(13783, 22, 1, 1, 1, 1, 1),
(13784, 23, 1, 1, 1, 1, 1),
(13785, 24, 1, 1, 1, 1, 1),
(13786, 30, 1, 1, 1, 1, 1),
(13787, 149, 1, 0, 0, 0, 0),
(13788, 167, 1, 0, 0, 0, 0),
(13789, 31, 1, 1, 1, 1, 1),
(13790, 32, 1, 1, 1, 1, 1),
(13791, 33, 1, 1, 1, 1, 1),
(13792, 112, 1, 1, 1, 1, 1),
(13793, 35, 1, 1, 1, 1, 1),
(13794, 36, 1, 1, 1, 1, 1),
(13795, 124, 1, 1, 1, 1, 1),
(13796, 135, 1, 1, 1, 1, 1),
(13797, 155, 1, 1, 1, 1, 1),
(13798, 156, 1, 1, 1, 1, 1),
(13799, 157, 1, 1, 1, 1, 1),
(13800, 158, 1, 1, 1, 1, 1),
(13801, 43, 1, 1, 1, 1, 1),
(13802, 162, 1, 1, 1, 1, 1),
(13803, 163, 1, 1, 1, 1, 1),
(13804, 164, 1, 1, 1, 1, 1),
(13805, 165, 1, 1, 1, 1, 1),
(13806, 37, 1, 1, 1, 1, 1),
(13807, 38, 1, 1, 1, 1, 1),
(13808, 39, 1, 1, 1, 1, 1),
(13809, 40, 1, 1, 1, 1, 1),
(13810, 139, 1, 1, 1, 1, 1),
(13811, 140, 1, 1, 1, 1, 1),
(13812, 46, 1, 1, 1, 1, 1),
(13813, 47, 1, 1, 1, 1, 1),
(13814, 48, 1, 1, 1, 1, 1),
(13815, 49, 1, 1, 1, 1, 1),
(13816, 50, 1, 1, 1, 1, 1),
(13817, 51, 1, 1, 1, 1, 1),
(13818, 52, 1, 1, 1, 1, 1),
(13819, 53, 1, 1, 1, 1, 1),
(13820, 54, 1, 1, 1, 1, 1),
(13821, 55, 1, 1, 1, 1, 1),
(13822, 97, 1, 1, 1, 1, 1),
(13823, 98, 1, 1, 1, 1, 1),
(13824, 99, 1, 1, 1, 1, 1),
(13825, 100, 1, 1, 1, 1, 1),
(13826, 101, 1, 1, 1, 1, 1),
(13827, 102, 1, 1, 1, 1, 1),
(13828, 122, 1, 1, 1, 1, 1),
(13829, 166, 1, 1, 1, 1, 1),
(13830, 4, 1, 1, 1, 1, 1),
(13831, 5, 1, 1, 1, 1, 1),
(13832, 6, 1, 1, 1, 1, 1),
(13833, 7, 1, 1, 1, 1, 1),
(13834, 8, 1, 1, 1, 1, 1),
(13835, 9, 1, 1, 1, 1, 1),
(13836, 10, 1, 1, 1, 1, 1),
(13837, 11, 1, 1, 1, 1, 1),
(13838, 12, 1, 1, 1, 1, 1),
(13839, 13, 1, 1, 1, 1, 1),
(13840, 14, 1, 1, 1, 1, 1),
(13841, 15, 1, 1, 1, 1, 1),
(13842, 16, 1, 1, 1, 1, 1),
(13843, 17, 1, 1, 1, 1, 1),
(13844, 18, 1, 1, 1, 1, 1),
(13845, 19, 1, 1, 1, 1, 1),
(13846, 56, 1, 1, 1, 1, 1),
(13847, 57, 1, 1, 1, 1, 1),
(13848, 58, 1, 1, 1, 1, 1),
(13849, 41, 1, 1, 1, 1, 1),
(13850, 103, 1, 1, 1, 1, 1),
(13851, 104, 1, 1, 1, 1, 1),
(13852, 109, 1, 1, 1, 1, 1),
(13853, 110, 1, 1, 1, 1, 1),
(13854, 60, 1, 1, 1, 1, 1),
(13855, 61, 1, 1, 1, 1, 1),
(13856, 62, 1, 1, 1, 1, 1),
(13857, 63, 1, 1, 1, 1, 1),
(13858, 64, 1, 1, 1, 1, 1),
(13859, 65, 1, 1, 1, 1, 1),
(13860, 66, 1, 1, 1, 1, 1),
(13861, 67, 1, 1, 1, 1, 1),
(13862, 68, 1, 1, 1, 1, 1),
(13863, 69, 1, 1, 1, 1, 1),
(13864, 70, 1, 1, 1, 1, 1),
(13865, 71, 1, 1, 1, 1, 1),
(13866, 72, 1, 1, 1, 1, 1),
(13867, 73, 1, 1, 1, 1, 1),
(13868, 74, 1, 1, 1, 1, 1),
(13869, 75, 1, 1, 1, 1, 1),
(13870, 76, 1, 1, 1, 1, 1),
(13871, 77, 1, 1, 1, 1, 1),
(13872, 78, 1, 1, 1, 1, 1),
(13873, 79, 1, 1, 1, 1, 1),
(13874, 80, 1, 1, 1, 1, 1),
(13875, 81, 1, 1, 1, 1, 1),
(13876, 82, 1, 1, 1, 1, 1),
(13877, 83, 1, 1, 1, 1, 1),
(13878, 84, 1, 1, 1, 1, 1),
(13879, 85, 1, 1, 1, 1, 1),
(13880, 86, 1, 1, 1, 1, 1),
(13881, 105, 1, 1, 1, 1, 1),
(13882, 106, 1, 1, 1, 1, 1),
(13883, 107, 1, 1, 1, 1, 1),
(13884, 108, 1, 1, 1, 1, 1),
(13885, 59, 1, 1, 1, 1, 1),
(13886, 87, 1, 1, 1, 1, 1),
(13887, 88, 1, 1, 1, 1, 1),
(13888, 89, 1, 1, 1, 1, 1),
(13889, 90, 1, 1, 1, 1, 1),
(13890, 91, 1, 1, 1, 1, 1),
(13891, 92, 1, 1, 1, 1, 1),
(13892, 93, 1, 1, 1, 1, 1),
(13893, 94, 1, 1, 1, 1, 1),
(13894, 95, 1, 1, 1, 1, 1),
(13895, 96, 1, 1, 1, 1, 1),
(13896, 115, 1, 1, 1, 1, 1),
(13897, 116, 1, 1, 1, 1, 1),
(13898, 117, 1, 1, 1, 1, 1),
(13899, 118, 1, 1, 1, 1, 1),
(13900, 119, 1, 1, 1, 1, 1),
(13901, 120, 1, 1, 1, 1, 1),
(13902, 121, 1, 1, 1, 1, 1),
(13903, 126, 1, 1, 1, 1, 1),
(13904, 127, 1, 1, 1, 1, 1),
(13905, 128, 1, 1, 1, 1, 1),
(13906, 129, 1, 1, 1, 1, 1),
(13907, 138, 1, 1, 1, 1, 1),
(13908, 141, 1, 1, 1, 1, 1),
(13909, 150, 1, 1, 1, 1, 1),
(13910, 151, 1, 1, 1, 1, 1),
(13911, 152, 1, 1, 1, 1, 1),
(13912, 153, 1, 1, 1, 1, 1),
(13913, 130, 1, 1, 1, 1, 1),
(13914, 131, 1, 1, 1, 1, 1),
(13915, 137, 1, 1, 1, 1, 1),
(13916, 132, 1, 1, 1, 1, 1),
(13917, 133, 1, 1, 1, 1, 1),
(13918, 159, 1, 1, 1, 1, 1),
(13919, 160, 1, 1, 1, 1, 1),
(13920, 161, 1, 1, 1, 1, 1),
(13921, 136, 1, 1, 1, 1, 1),
(14081, 1, 13, 1, 1, 1, 0),
(14082, 2, 13, 1, 1, 1, 0),
(14083, 3, 13, 1, 1, 1, 0),
(14084, 114, 13, 1, 1, 1, 0),
(14085, 123, 13, 1, 1, 1, 0),
(14086, 125, 13, 1, 1, 1, 0),
(14087, 142, 13, 1, 1, 1, 0),
(14088, 143, 13, 1, 1, 1, 0),
(14089, 144, 13, 1, 1, 1, 0),
(14090, 145, 13, 1, 1, 1, 0),
(14091, 146, 13, 1, 1, 1, 0),
(14092, 147, 13, 1, 1, 1, 0),
(14093, 148, 13, 1, 1, 1, 0),
(14094, 25, 13, 1, 1, 1, 0),
(14095, 26, 13, 1, 1, 1, 0),
(14096, 27, 13, 1, 1, 1, 0),
(14097, 28, 13, 1, 1, 1, 0),
(14098, 111, 13, 1, 1, 1, 0),
(14099, 113, 13, 1, 1, 1, 0),
(14100, 21, 13, 1, 1, 1, 1),
(14101, 22, 13, 1, 1, 1, 1),
(14102, 23, 13, 1, 1, 1, 1),
(14103, 24, 13, 1, 1, 1, 1),
(14104, 30, 13, 1, 1, 1, 1),
(14105, 149, 13, 1, 1, 1, 1),
(14106, 167, 13, 0, 0, 0, 0),
(14107, 31, 13, 1, 1, 0, 0),
(14108, 32, 13, 1, 1, 0, 0),
(14109, 33, 13, 1, 1, 0, 0),
(14110, 112, 13, 1, 1, 0, 0),
(14111, 35, 13, 1, 1, 1, 0),
(14112, 36, 13, 1, 1, 1, 0),
(14113, 124, 13, 1, 1, 1, 0),
(14114, 135, 13, 1, 1, 1, 0),
(14115, 155, 13, 1, 1, 1, 0),
(14116, 156, 13, 1, 1, 1, 0),
(14117, 157, 13, 1, 1, 1, 0),
(14118, 158, 13, 1, 1, 1, 0),
(14119, 43, 13, 0, 0, 0, 0),
(14120, 162, 13, 0, 0, 0, 0),
(14121, 163, 13, 0, 0, 0, 0),
(14122, 164, 13, 0, 0, 0, 0),
(14123, 165, 13, 0, 0, 0, 0),
(14124, 37, 13, 0, 0, 0, 0),
(14125, 38, 13, 0, 0, 0, 0),
(14126, 39, 13, 0, 0, 0, 0),
(14127, 40, 13, 0, 0, 0, 0),
(14128, 139, 13, 0, 0, 0, 0),
(14129, 140, 13, 0, 0, 0, 0),
(14130, 46, 13, 0, 0, 0, 0),
(14131, 47, 13, 0, 0, 0, 0),
(14132, 48, 13, 0, 0, 0, 0),
(14133, 49, 13, 0, 0, 0, 0),
(14134, 50, 13, 0, 0, 0, 0),
(14135, 51, 13, 0, 0, 0, 0),
(14136, 52, 13, 0, 0, 0, 0),
(14137, 53, 13, 0, 0, 0, 0),
(14138, 54, 13, 0, 0, 0, 0),
(14139, 55, 13, 0, 0, 0, 0),
(14140, 97, 13, 0, 0, 0, 0),
(14141, 98, 13, 0, 0, 0, 0),
(14142, 99, 13, 0, 0, 0, 0),
(14143, 100, 13, 0, 0, 0, 0),
(14144, 101, 13, 0, 0, 0, 0),
(14145, 102, 13, 0, 0, 0, 0),
(14146, 122, 13, 0, 0, 0, 0),
(14147, 166, 13, 0, 0, 0, 0),
(14148, 4, 13, 0, 0, 0, 0),
(14149, 5, 13, 0, 0, 0, 0),
(14150, 6, 13, 0, 0, 0, 0),
(14151, 7, 13, 0, 0, 0, 0),
(14152, 8, 13, 0, 0, 0, 0),
(14153, 9, 13, 0, 0, 0, 0),
(14154, 10, 13, 0, 0, 0, 0),
(14155, 11, 13, 0, 0, 0, 0),
(14156, 12, 13, 0, 0, 0, 0),
(14157, 13, 13, 0, 0, 0, 0),
(14158, 14, 13, 0, 0, 0, 0),
(14159, 15, 13, 0, 0, 0, 0),
(14160, 16, 13, 0, 0, 0, 0),
(14161, 17, 13, 0, 0, 0, 0),
(14162, 18, 13, 0, 0, 0, 0),
(14163, 19, 13, 0, 0, 0, 0),
(14164, 56, 13, 0, 0, 0, 0),
(14165, 57, 13, 0, 0, 0, 0),
(14166, 58, 13, 0, 0, 0, 0),
(14167, 41, 13, 0, 0, 0, 0),
(14168, 103, 13, 0, 0, 0, 0),
(14169, 104, 13, 0, 0, 0, 0),
(14170, 109, 13, 0, 0, 0, 0),
(14171, 110, 13, 0, 0, 0, 0),
(14172, 60, 13, 0, 0, 0, 0),
(14173, 61, 13, 0, 0, 0, 0),
(14174, 62, 13, 0, 0, 0, 0),
(14175, 63, 13, 0, 0, 0, 0),
(14176, 64, 13, 0, 0, 0, 0),
(14177, 65, 13, 0, 0, 0, 0),
(14178, 66, 13, 0, 0, 0, 0),
(14179, 67, 13, 0, 0, 0, 0),
(14180, 68, 13, 0, 0, 0, 0),
(14181, 69, 13, 0, 0, 0, 0),
(14182, 70, 13, 0, 0, 0, 0),
(14183, 71, 13, 0, 0, 0, 0),
(14184, 72, 13, 0, 0, 0, 0),
(14185, 73, 13, 0, 0, 0, 0),
(14186, 74, 13, 0, 0, 0, 0),
(14187, 75, 13, 0, 0, 0, 0),
(14188, 76, 13, 0, 0, 0, 0),
(14189, 77, 13, 0, 0, 0, 0),
(14190, 78, 13, 0, 0, 0, 0),
(14191, 79, 13, 0, 0, 0, 0),
(14192, 80, 13, 0, 0, 0, 0),
(14193, 81, 13, 0, 0, 0, 0),
(14194, 82, 13, 0, 0, 0, 0),
(14195, 83, 13, 0, 0, 0, 0),
(14196, 84, 13, 0, 0, 0, 0),
(14197, 85, 13, 0, 0, 0, 0),
(14198, 86, 13, 0, 0, 0, 0),
(14199, 105, 13, 0, 0, 0, 0),
(14200, 106, 13, 0, 0, 0, 0),
(14201, 107, 13, 0, 0, 0, 0),
(14202, 108, 13, 0, 0, 0, 0),
(14203, 59, 13, 0, 0, 0, 0),
(14204, 87, 13, 0, 0, 0, 0),
(14205, 88, 13, 0, 0, 0, 0),
(14206, 89, 13, 0, 0, 0, 0),
(14207, 90, 13, 0, 0, 0, 0),
(14208, 91, 13, 0, 0, 0, 0),
(14209, 92, 13, 0, 0, 0, 0),
(14210, 93, 13, 0, 0, 0, 0),
(14211, 94, 13, 0, 0, 0, 0),
(14212, 95, 13, 0, 0, 0, 0),
(14213, 96, 13, 0, 0, 0, 0),
(14214, 115, 13, 0, 0, 0, 0),
(14215, 116, 13, 0, 0, 0, 0),
(14216, 117, 13, 0, 0, 0, 0),
(14217, 118, 13, 0, 0, 0, 0),
(14218, 119, 13, 0, 0, 0, 0),
(14219, 120, 13, 0, 0, 0, 0),
(14220, 121, 13, 0, 0, 0, 0),
(14221, 126, 13, 0, 0, 0, 0),
(14222, 127, 13, 0, 0, 0, 0),
(14223, 128, 13, 1, 1, 1, 0),
(14224, 129, 13, 1, 1, 1, 0),
(14225, 138, 13, 1, 1, 1, 0),
(14226, 141, 13, 1, 1, 1, 0),
(14227, 150, 13, 1, 1, 1, 0),
(14228, 151, 13, 1, 1, 1, 0),
(14229, 152, 13, 1, 1, 1, 0),
(14230, 153, 13, 1, 1, 1, 0),
(14231, 130, 13, 0, 0, 0, 0),
(14232, 131, 13, 0, 0, 0, 0),
(14233, 137, 13, 0, 0, 0, 0),
(14234, 132, 13, 1, 1, 1, 0),
(14235, 133, 13, 1, 1, 1, 0),
(14236, 159, 13, 1, 1, 1, 0),
(14237, 160, 13, 1, 1, 1, 0),
(14238, 161, 13, 1, 1, 1, 0),
(14239, 136, 13, 0, 0, 0, 0),
(14240, 1, 5, 1, 1, 1, 0),
(14241, 2, 5, 1, 1, 1, 0),
(14242, 3, 5, 1, 1, 1, 0),
(14243, 114, 5, 1, 1, 1, 0),
(14244, 123, 5, 1, 1, 1, 0),
(14245, 125, 5, 1, 1, 1, 0),
(14246, 142, 5, 1, 1, 1, 0),
(14247, 143, 5, 1, 1, 1, 0),
(14248, 144, 5, 1, 1, 1, 0),
(14249, 145, 5, 1, 1, 1, 0),
(14250, 146, 5, 1, 1, 1, 0),
(14251, 147, 5, 1, 1, 1, 0),
(14252, 148, 5, 1, 1, 1, 0),
(14253, 25, 5, 1, 1, 1, 0),
(14254, 26, 5, 1, 1, 1, 0),
(14255, 27, 5, 1, 1, 1, 0),
(14256, 28, 5, 1, 1, 1, 0),
(14257, 111, 5, 0, 0, 0, 0),
(14258, 113, 5, 0, 0, 0, 0),
(14259, 21, 5, 0, 0, 0, 0),
(14260, 22, 5, 0, 0, 0, 0),
(14261, 23, 5, 0, 0, 0, 0),
(14262, 24, 5, 0, 0, 0, 0),
(14263, 30, 5, 0, 0, 0, 0),
(14264, 149, 5, 0, 0, 0, 0),
(14265, 167, 5, 0, 0, 0, 0),
(14266, 31, 5, 0, 0, 0, 0),
(14267, 32, 5, 0, 0, 0, 0),
(14268, 33, 5, 0, 0, 0, 0),
(14269, 112, 5, 0, 0, 0, 0),
(14270, 35, 5, 0, 0, 0, 0),
(14271, 36, 5, 0, 0, 0, 0),
(14272, 124, 5, 0, 0, 0, 0),
(14273, 135, 5, 0, 0, 0, 0),
(14274, 155, 5, 0, 0, 0, 0),
(14275, 156, 5, 0, 0, 0, 0),
(14276, 157, 5, 0, 0, 0, 0),
(14277, 158, 5, 0, 0, 0, 0),
(14278, 43, 5, 0, 0, 0, 0),
(14279, 162, 5, 0, 0, 0, 0),
(14280, 163, 5, 0, 0, 0, 0),
(14281, 164, 5, 0, 0, 0, 0),
(14282, 165, 5, 0, 0, 0, 0),
(14283, 37, 5, 0, 0, 0, 0),
(14284, 38, 5, 0, 0, 0, 0),
(14285, 39, 5, 0, 0, 0, 0),
(14286, 40, 5, 0, 0, 0, 0),
(14287, 139, 5, 0, 0, 0, 0),
(14288, 140, 5, 0, 0, 0, 0),
(14289, 46, 5, 0, 0, 0, 0),
(14290, 47, 5, 0, 0, 0, 0),
(14291, 48, 5, 0, 0, 0, 0),
(14292, 49, 5, 0, 0, 0, 0),
(14293, 50, 5, 0, 0, 0, 0),
(14294, 51, 5, 0, 0, 0, 0),
(14295, 52, 5, 0, 0, 0, 0),
(14296, 53, 5, 0, 0, 0, 0),
(14297, 54, 5, 0, 0, 0, 0),
(14298, 55, 5, 0, 0, 0, 0),
(14299, 97, 5, 0, 0, 0, 0),
(14300, 98, 5, 0, 0, 0, 0),
(14301, 99, 5, 0, 0, 0, 0),
(14302, 100, 5, 0, 0, 0, 0),
(14303, 101, 5, 0, 0, 0, 0),
(14304, 102, 5, 0, 0, 0, 0),
(14305, 122, 5, 0, 0, 0, 0),
(14306, 166, 5, 0, 0, 0, 0),
(14307, 4, 5, 0, 0, 0, 0),
(14308, 5, 5, 0, 0, 0, 0),
(14309, 6, 5, 0, 0, 0, 0),
(14310, 7, 5, 0, 0, 0, 0),
(14311, 8, 5, 0, 0, 0, 0),
(14312, 9, 5, 0, 0, 0, 0),
(14313, 10, 5, 0, 0, 0, 0),
(14314, 11, 5, 0, 0, 0, 0),
(14315, 12, 5, 0, 0, 0, 0),
(14316, 13, 5, 0, 0, 0, 0),
(14317, 14, 5, 0, 0, 0, 0),
(14318, 15, 5, 0, 0, 0, 0),
(14319, 16, 5, 0, 0, 0, 0),
(14320, 17, 5, 0, 0, 0, 0),
(14321, 18, 5, 0, 0, 0, 0),
(14322, 19, 5, 0, 0, 0, 0),
(14323, 56, 5, 0, 0, 0, 0),
(14324, 57, 5, 0, 0, 0, 0),
(14325, 58, 5, 0, 0, 0, 0),
(14326, 41, 5, 0, 0, 0, 0),
(14327, 103, 5, 0, 0, 0, 0),
(14328, 104, 5, 0, 0, 0, 0),
(14329, 109, 5, 0, 0, 0, 0),
(14330, 110, 5, 0, 0, 0, 0),
(14331, 60, 5, 0, 0, 0, 0),
(14332, 61, 5, 0, 0, 0, 0),
(14333, 62, 5, 0, 0, 0, 0),
(14334, 63, 5, 0, 0, 0, 0),
(14335, 64, 5, 0, 0, 0, 0),
(14336, 65, 5, 0, 0, 0, 0),
(14337, 66, 5, 0, 0, 0, 0),
(14338, 67, 5, 0, 0, 0, 0),
(14339, 68, 5, 0, 0, 0, 0),
(14340, 69, 5, 0, 0, 0, 0),
(14341, 70, 5, 0, 0, 0, 0),
(14342, 71, 5, 0, 0, 0, 0),
(14343, 72, 5, 0, 0, 0, 0),
(14344, 73, 5, 0, 0, 0, 0),
(14345, 74, 5, 0, 0, 0, 0),
(14346, 75, 5, 0, 0, 0, 0),
(14347, 76, 5, 0, 0, 0, 0),
(14348, 77, 5, 0, 0, 0, 0),
(14349, 78, 5, 0, 0, 0, 0),
(14350, 79, 5, 0, 0, 0, 0),
(14351, 80, 5, 0, 0, 0, 0),
(14352, 81, 5, 0, 0, 0, 0),
(14353, 82, 5, 0, 0, 0, 0),
(14354, 83, 5, 0, 0, 0, 0),
(14355, 84, 5, 0, 0, 0, 0),
(14356, 85, 5, 0, 0, 0, 0),
(14357, 86, 5, 0, 0, 0, 0),
(14358, 105, 5, 0, 0, 0, 0),
(14359, 106, 5, 0, 0, 0, 0),
(14360, 107, 5, 0, 0, 0, 0),
(14361, 108, 5, 0, 0, 0, 0),
(14362, 59, 5, 0, 0, 0, 0),
(14363, 87, 5, 0, 0, 0, 0),
(14364, 88, 5, 0, 0, 0, 0),
(14365, 89, 5, 0, 0, 0, 0),
(14366, 90, 5, 0, 0, 0, 0),
(14367, 91, 5, 0, 0, 0, 0),
(14368, 92, 5, 0, 0, 0, 0),
(14369, 93, 5, 0, 0, 0, 0),
(14370, 94, 5, 0, 0, 0, 0),
(14371, 95, 5, 0, 0, 0, 0),
(14372, 96, 5, 0, 0, 0, 0),
(14373, 115, 5, 0, 0, 0, 0),
(14374, 116, 5, 0, 0, 0, 0),
(14375, 117, 5, 0, 0, 0, 0),
(14376, 118, 5, 0, 0, 0, 0),
(14377, 119, 5, 1, 1, 1, 0),
(14378, 120, 5, 1, 1, 1, 0),
(14379, 121, 5, 1, 1, 1, 0),
(14380, 126, 5, 0, 0, 0, 0),
(14381, 127, 5, 0, 0, 0, 0),
(14382, 128, 5, 0, 0, 0, 0),
(14383, 129, 5, 0, 0, 0, 0),
(14384, 138, 5, 0, 0, 0, 0),
(14385, 141, 5, 0, 0, 0, 0),
(14386, 150, 5, 0, 0, 0, 0),
(14387, 151, 5, 0, 0, 0, 0),
(14388, 152, 5, 0, 0, 0, 0),
(14389, 153, 5, 0, 0, 0, 0),
(14390, 130, 5, 0, 0, 0, 0),
(14391, 131, 5, 0, 0, 0, 0),
(14392, 137, 5, 0, 0, 0, 0),
(14393, 132, 5, 0, 0, 0, 0),
(14394, 133, 5, 0, 0, 0, 0),
(14395, 159, 5, 0, 0, 0, 0),
(14396, 160, 5, 0, 0, 0, 0),
(14397, 161, 5, 0, 0, 0, 0),
(14398, 136, 5, 0, 0, 0, 0),
(14558, 1, 11, 1, 1, 1, 0),
(14559, 2, 11, 1, 1, 1, 0),
(14560, 3, 11, 1, 1, 1, 0),
(14561, 114, 11, 1, 1, 1, 0),
(14562, 123, 11, 1, 1, 1, 0),
(14563, 125, 11, 1, 1, 1, 0),
(14564, 142, 11, 1, 1, 1, 0),
(14565, 143, 11, 1, 1, 1, 0),
(14566, 144, 11, 1, 1, 1, 0),
(14567, 145, 11, 1, 1, 1, 0),
(14568, 146, 11, 1, 1, 1, 0),
(14569, 147, 11, 1, 1, 1, 0),
(14570, 148, 11, 1, 1, 1, 0),
(14571, 25, 11, 1, 1, 1, 0),
(14572, 26, 11, 1, 1, 1, 0),
(14573, 27, 11, 1, 1, 1, 0),
(14574, 28, 11, 1, 1, 1, 0),
(14575, 111, 11, 1, 1, 1, 0),
(14576, 113, 11, 1, 1, 0, 0),
(14577, 21, 11, 1, 1, 1, 0),
(14578, 22, 11, 1, 1, 1, 0),
(14579, 23, 11, 1, 1, 1, 0),
(14580, 24, 11, 1, 1, 1, 0),
(14581, 30, 11, 1, 1, 1, 0),
(14582, 149, 11, 1, 1, 1, 0),
(14583, 167, 11, 1, 1, 1, 0),
(14584, 31, 11, 1, 1, 1, 0),
(14585, 32, 11, 1, 1, 1, 0),
(14586, 33, 11, 1, 1, 1, 0),
(14587, 112, 11, 1, 1, 1, 0),
(14588, 35, 11, 1, 1, 1, 0),
(14589, 36, 11, 1, 1, 1, 0),
(14590, 124, 11, 1, 1, 1, 0),
(14591, 135, 11, 1, 1, 1, 0),
(14592, 155, 11, 1, 1, 1, 0),
(14593, 156, 11, 1, 1, 1, 0),
(14594, 157, 11, 1, 1, 1, 0),
(14595, 158, 11, 1, 1, 1, 0),
(14596, 43, 11, 1, 1, 1, 0),
(14597, 162, 11, 1, 1, 1, 0),
(14598, 163, 11, 1, 1, 1, 0),
(14599, 164, 11, 1, 1, 1, 0),
(14600, 165, 11, 1, 1, 1, 0),
(14601, 37, 11, 1, 1, 1, 0),
(14602, 38, 11, 1, 1, 1, 0),
(14603, 39, 11, 1, 1, 1, 0),
(14604, 40, 11, 1, 1, 1, 0),
(14605, 139, 11, 1, 1, 1, 0),
(14606, 140, 11, 1, 1, 1, 0),
(14607, 46, 11, 1, 1, 1, 0),
(14608, 47, 11, 1, 1, 1, 0),
(14609, 48, 11, 1, 1, 1, 0),
(14610, 49, 11, 1, 1, 1, 0),
(14611, 50, 11, 1, 1, 1, 0),
(14612, 51, 11, 1, 1, 1, 0),
(14613, 52, 11, 1, 1, 1, 0),
(14614, 53, 11, 1, 1, 1, 0),
(14615, 54, 11, 1, 1, 1, 0),
(14616, 55, 11, 1, 1, 1, 0),
(14617, 97, 11, 1, 1, 1, 0),
(14618, 98, 11, 1, 1, 1, 0),
(14619, 99, 11, 1, 1, 1, 0),
(14620, 100, 11, 1, 1, 1, 0),
(14621, 101, 11, 1, 1, 1, 0),
(14622, 102, 11, 1, 1, 1, 0),
(14623, 122, 11, 1, 1, 1, 0),
(14624, 166, 11, 1, 1, 1, 0),
(14625, 4, 11, 1, 1, 1, 0),
(14626, 5, 11, 1, 1, 1, 0),
(14627, 6, 11, 1, 1, 1, 0),
(14628, 7, 11, 1, 1, 1, 0),
(14629, 8, 11, 1, 1, 1, 0),
(14630, 9, 11, 1, 1, 1, 0),
(14631, 10, 11, 1, 1, 1, 0),
(14632, 11, 11, 1, 1, 1, 0),
(14633, 12, 11, 1, 1, 1, 0),
(14634, 13, 11, 1, 1, 1, 0),
(14635, 14, 11, 1, 1, 1, 0),
(14636, 15, 11, 1, 1, 1, 0),
(14637, 16, 11, 1, 1, 1, 0),
(14638, 17, 11, 1, 1, 1, 0),
(14639, 18, 11, 1, 1, 1, 0),
(14640, 19, 11, 1, 1, 1, 0),
(14641, 56, 11, 1, 1, 1, 0),
(14642, 57, 11, 1, 1, 1, 0),
(14643, 58, 11, 1, 1, 1, 0),
(14644, 41, 11, 1, 1, 1, 0),
(14645, 103, 11, 1, 1, 1, 0),
(14646, 104, 11, 1, 1, 1, 0),
(14647, 109, 11, 1, 1, 1, 0),
(14648, 110, 11, 1, 1, 1, 0),
(14649, 60, 11, 1, 1, 1, 0),
(14650, 61, 11, 1, 1, 1, 0),
(14651, 62, 11, 1, 1, 1, 0),
(14652, 63, 11, 1, 1, 1, 0),
(14653, 64, 11, 1, 1, 1, 0),
(14654, 65, 11, 1, 1, 1, 0),
(14655, 66, 11, 1, 1, 1, 0),
(14656, 67, 11, 1, 1, 1, 0),
(14657, 68, 11, 1, 1, 1, 0),
(14658, 69, 11, 1, 1, 1, 0),
(14659, 70, 11, 1, 1, 1, 0),
(14660, 71, 11, 1, 1, 1, 0),
(14661, 72, 11, 1, 1, 1, 0),
(14662, 73, 11, 1, 1, 1, 0),
(14663, 74, 11, 1, 1, 1, 0),
(14664, 75, 11, 1, 1, 1, 0),
(14665, 76, 11, 1, 1, 1, 0),
(14666, 77, 11, 1, 1, 1, 0),
(14667, 78, 11, 1, 1, 1, 0),
(14668, 79, 11, 1, 1, 1, 0),
(14669, 80, 11, 1, 1, 1, 0),
(14670, 81, 11, 1, 1, 1, 0),
(14671, 82, 11, 1, 1, 1, 0),
(14672, 83, 11, 1, 1, 1, 0),
(14673, 84, 11, 1, 1, 1, 0),
(14674, 85, 11, 1, 1, 1, 0),
(14675, 86, 11, 1, 1, 1, 0),
(14676, 105, 11, 1, 1, 1, 0),
(14677, 106, 11, 1, 1, 1, 0),
(14678, 107, 11, 1, 1, 1, 0),
(14679, 108, 11, 1, 1, 1, 0),
(14680, 59, 11, 1, 1, 1, 0),
(14681, 87, 11, 1, 1, 1, 0),
(14682, 88, 11, 1, 1, 1, 0),
(14683, 89, 11, 1, 1, 1, 0),
(14684, 90, 11, 1, 1, 1, 0),
(14685, 91, 11, 1, 1, 1, 0),
(14686, 92, 11, 1, 1, 1, 0),
(14687, 93, 11, 1, 1, 1, 0),
(14688, 94, 11, 1, 1, 1, 0),
(14689, 95, 11, 1, 1, 1, 0),
(14690, 96, 11, 1, 1, 1, 0),
(14691, 115, 11, 1, 1, 1, 0),
(14692, 116, 11, 1, 1, 1, 0),
(14693, 117, 11, 1, 1, 1, 0),
(14694, 118, 11, 1, 1, 1, 0),
(14695, 119, 11, 1, 1, 1, 0),
(14696, 120, 11, 1, 1, 1, 0),
(14697, 121, 11, 1, 1, 1, 0),
(14698, 126, 11, 1, 1, 1, 0),
(14699, 127, 11, 1, 1, 1, 0),
(14700, 128, 11, 1, 1, 1, 0),
(14701, 129, 11, 1, 1, 1, 0),
(14702, 138, 11, 1, 1, 1, 0),
(14703, 141, 11, 1, 1, 1, 0),
(14704, 150, 11, 1, 1, 1, 0),
(14705, 151, 11, 1, 1, 1, 0),
(14706, 152, 11, 1, 1, 1, 0),
(14707, 153, 11, 1, 1, 1, 0),
(14708, 130, 11, 1, 1, 1, 0),
(14709, 131, 11, 1, 1, 1, 0),
(14710, 137, 11, 1, 1, 1, 0),
(14711, 132, 11, 1, 1, 1, 0),
(14712, 133, 11, 1, 1, 1, 0),
(14713, 159, 11, 1, 1, 1, 0),
(14714, 160, 11, 1, 1, 1, 0),
(14715, 161, 11, 1, 1, 1, 0),
(14716, 136, 11, 1, 1, 1, 0),
(14717, 1, 12, 0, 0, 0, 0),
(14718, 2, 12, 0, 0, 0, 0),
(14719, 3, 12, 0, 0, 0, 0),
(14720, 114, 12, 0, 0, 0, 0),
(14721, 123, 12, 0, 0, 0, 0),
(14722, 125, 12, 0, 0, 0, 0),
(14723, 142, 12, 0, 0, 0, 0),
(14724, 143, 12, 0, 0, 0, 0),
(14725, 144, 12, 0, 0, 0, 0),
(14726, 145, 12, 0, 0, 0, 0),
(14727, 146, 12, 0, 0, 0, 0),
(14728, 147, 12, 0, 0, 0, 0),
(14729, 148, 12, 0, 0, 0, 0),
(14730, 25, 12, 1, 1, 1, 1),
(14731, 26, 12, 1, 1, 1, 1),
(14732, 27, 12, 1, 1, 1, 1),
(14733, 28, 12, 1, 1, 1, 1),
(14734, 111, 12, 1, 1, 1, 1),
(14735, 113, 12, 1, 1, 1, 1),
(14736, 21, 12, 1, 1, 1, 1),
(14737, 22, 12, 1, 1, 1, 1),
(14738, 23, 12, 1, 1, 1, 1),
(14739, 24, 12, 1, 1, 1, 1),
(14740, 30, 12, 1, 1, 1, 1),
(14741, 149, 12, 1, 1, 1, 1),
(14742, 167, 12, 1, 1, 1, 1),
(14743, 31, 12, 0, 0, 0, 0),
(14744, 32, 12, 0, 0, 0, 0),
(14745, 33, 12, 0, 0, 0, 0),
(14746, 112, 12, 0, 0, 0, 0),
(14747, 35, 12, 1, 1, 1, 1),
(14748, 36, 12, 1, 1, 1, 1),
(14749, 124, 12, 1, 1, 1, 1),
(14750, 135, 12, 1, 1, 1, 1),
(14751, 155, 12, 1, 1, 1, 1),
(14752, 156, 12, 1, 1, 1, 1),
(14753, 157, 12, 1, 1, 1, 1),
(14754, 158, 12, 1, 1, 1, 1),
(14755, 43, 12, 0, 0, 0, 0),
(14756, 162, 12, 0, 0, 0, 0),
(14757, 163, 12, 0, 0, 0, 0),
(14758, 164, 12, 0, 0, 0, 0),
(14759, 165, 12, 0, 0, 0, 0),
(14760, 37, 12, 0, 0, 0, 0),
(14761, 38, 12, 0, 0, 0, 0),
(14762, 39, 12, 0, 0, 0, 0),
(14763, 40, 12, 0, 0, 0, 0),
(14764, 139, 12, 0, 0, 0, 0),
(14765, 140, 12, 0, 0, 0, 0),
(14766, 46, 12, 0, 0, 0, 0),
(14767, 47, 12, 0, 0, 0, 0),
(14768, 48, 12, 0, 0, 0, 0),
(14769, 49, 12, 0, 0, 0, 0),
(14770, 50, 12, 0, 0, 0, 0),
(14771, 51, 12, 0, 0, 0, 0),
(14772, 52, 12, 0, 0, 0, 0),
(14773, 53, 12, 0, 0, 0, 0),
(14774, 54, 12, 0, 0, 0, 0),
(14775, 55, 12, 0, 0, 0, 0),
(14776, 97, 12, 0, 0, 0, 0),
(14777, 98, 12, 0, 0, 0, 0),
(14778, 99, 12, 0, 0, 0, 0),
(14779, 100, 12, 0, 0, 0, 0),
(14780, 101, 12, 0, 0, 0, 0),
(14781, 102, 12, 0, 0, 0, 0),
(14782, 122, 12, 0, 0, 0, 0),
(14783, 166, 12, 0, 0, 0, 0),
(14784, 4, 12, 0, 0, 0, 0),
(14785, 5, 12, 0, 0, 0, 0),
(14786, 6, 12, 0, 0, 0, 0),
(14787, 7, 12, 0, 0, 0, 0),
(14788, 8, 12, 0, 0, 0, 0),
(14789, 9, 12, 0, 0, 0, 0),
(14790, 10, 12, 0, 0, 0, 0),
(14791, 11, 12, 0, 0, 0, 0),
(14792, 12, 12, 0, 0, 0, 0),
(14793, 13, 12, 0, 0, 0, 0),
(14794, 14, 12, 0, 0, 0, 0),
(14795, 15, 12, 0, 0, 0, 0),
(14796, 16, 12, 0, 0, 0, 0),
(14797, 17, 12, 0, 0, 0, 0),
(14798, 18, 12, 0, 0, 0, 0),
(14799, 19, 12, 0, 0, 0, 0),
(14800, 56, 12, 0, 0, 0, 0),
(14801, 57, 12, 0, 0, 0, 0),
(14802, 58, 12, 0, 0, 0, 0),
(14803, 41, 12, 0, 0, 0, 0),
(14804, 103, 12, 0, 0, 0, 0),
(14805, 104, 12, 0, 0, 0, 0),
(14806, 109, 12, 0, 0, 0, 0),
(14807, 110, 12, 0, 0, 0, 0),
(14808, 60, 12, 0, 0, 0, 0),
(14809, 61, 12, 0, 0, 0, 0),
(14810, 62, 12, 0, 0, 0, 0),
(14811, 63, 12, 0, 0, 0, 0),
(14812, 64, 12, 0, 0, 0, 0),
(14813, 65, 12, 0, 0, 0, 0),
(14814, 66, 12, 0, 0, 0, 0),
(14815, 67, 12, 0, 0, 0, 0),
(14816, 68, 12, 0, 0, 0, 0),
(14817, 69, 12, 0, 0, 0, 0),
(14818, 70, 12, 0, 0, 0, 0),
(14819, 71, 12, 0, 0, 0, 0),
(14820, 72, 12, 0, 0, 0, 0),
(14821, 73, 12, 0, 0, 0, 0),
(14822, 74, 12, 0, 0, 0, 0),
(14823, 75, 12, 0, 0, 0, 0),
(14824, 76, 12, 0, 0, 0, 0),
(14825, 77, 12, 0, 0, 0, 0),
(14826, 78, 12, 0, 0, 0, 0),
(14827, 79, 12, 0, 0, 0, 0),
(14828, 80, 12, 0, 0, 0, 0),
(14829, 81, 12, 0, 0, 0, 0),
(14830, 82, 12, 0, 0, 0, 0),
(14831, 83, 12, 0, 0, 0, 0),
(14832, 84, 12, 0, 0, 0, 0),
(14833, 85, 12, 0, 0, 0, 0),
(14834, 86, 12, 0, 0, 0, 0),
(14835, 105, 12, 0, 0, 0, 0),
(14836, 106, 12, 0, 0, 0, 0),
(14837, 107, 12, 0, 0, 0, 0),
(14838, 108, 12, 0, 0, 0, 0),
(14839, 59, 12, 0, 0, 0, 0),
(14840, 87, 12, 0, 0, 0, 0),
(14841, 88, 12, 0, 0, 0, 0),
(14842, 89, 12, 0, 0, 0, 0),
(14843, 90, 12, 0, 0, 0, 0),
(14844, 91, 12, 0, 0, 0, 0),
(14845, 92, 12, 0, 0, 0, 0),
(14846, 93, 12, 0, 0, 0, 0),
(14847, 94, 12, 0, 0, 0, 0),
(14848, 95, 12, 0, 0, 0, 0),
(14849, 96, 12, 0, 0, 0, 0),
(14850, 115, 12, 0, 0, 0, 0),
(14851, 116, 12, 0, 0, 0, 0),
(14852, 117, 12, 0, 0, 0, 0),
(14853, 118, 12, 0, 0, 0, 0),
(14854, 119, 12, 1, 1, 1, 0),
(14855, 120, 12, 1, 1, 1, 0),
(14856, 121, 12, 1, 1, 1, 0),
(14857, 126, 12, 0, 0, 0, 0),
(14858, 127, 12, 0, 0, 0, 0),
(14859, 128, 12, 1, 1, 1, 0),
(14860, 129, 12, 1, 1, 1, 0),
(14861, 138, 12, 1, 1, 1, 0),
(14862, 141, 12, 1, 1, 1, 0),
(14863, 150, 12, 1, 1, 1, 0),
(14864, 151, 12, 1, 1, 1, 0),
(14865, 152, 12, 1, 1, 1, 0),
(14866, 153, 12, 1, 1, 1, 0),
(14867, 130, 12, 1, 1, 1, 0),
(14868, 131, 12, 1, 1, 1, 0),
(14869, 137, 12, 1, 1, 1, 0),
(14870, 132, 12, 1, 1, 1, 0),
(14871, 133, 12, 1, 1, 1, 0),
(14872, 159, 12, 1, 1, 1, 0),
(14873, 160, 12, 1, 1, 1, 0),
(14874, 161, 12, 1, 1, 1, 0),
(14875, 136, 12, 0, 0, 0, 0),
(14876, 1, 15, 0, 0, 0, 0),
(14877, 2, 15, 0, 0, 0, 0),
(14878, 3, 15, 0, 0, 0, 0),
(14879, 114, 15, 0, 0, 0, 0),
(14880, 123, 15, 0, 0, 0, 0),
(14881, 125, 15, 0, 0, 0, 0),
(14882, 142, 15, 0, 0, 0, 0),
(14883, 143, 15, 0, 0, 0, 0),
(14884, 144, 15, 0, 0, 0, 0),
(14885, 145, 15, 0, 0, 0, 0),
(14886, 146, 15, 0, 0, 0, 0),
(14887, 147, 15, 0, 0, 0, 0),
(14888, 148, 15, 0, 0, 0, 0),
(14889, 25, 15, 0, 0, 0, 0),
(14890, 26, 15, 0, 0, 0, 0),
(14891, 27, 15, 0, 0, 0, 0),
(14892, 28, 15, 0, 0, 0, 0),
(14893, 111, 15, 0, 0, 0, 0),
(14894, 113, 15, 0, 0, 0, 0),
(14895, 21, 15, 0, 0, 0, 0),
(14896, 22, 15, 0, 0, 0, 0),
(14897, 23, 15, 0, 0, 0, 0),
(14898, 24, 15, 0, 0, 0, 0),
(14899, 30, 15, 0, 0, 0, 0),
(14900, 149, 15, 0, 0, 0, 0),
(14901, 167, 15, 0, 0, 0, 0),
(14902, 31, 15, 0, 0, 0, 0),
(14903, 32, 15, 0, 0, 0, 0),
(14904, 33, 15, 0, 0, 0, 0),
(14905, 112, 15, 0, 0, 0, 0),
(14906, 35, 15, 0, 0, 0, 0),
(14907, 36, 15, 0, 0, 0, 0),
(14908, 124, 15, 0, 0, 0, 0),
(14909, 135, 15, 0, 0, 0, 0),
(14910, 155, 15, 0, 0, 0, 0),
(14911, 156, 15, 0, 0, 0, 0),
(14912, 157, 15, 0, 0, 0, 0),
(14913, 158, 15, 0, 0, 0, 0),
(14914, 43, 15, 1, 1, 1, 0),
(14915, 162, 15, 1, 1, 1, 0),
(14916, 163, 15, 1, 1, 1, 0),
(14917, 164, 15, 1, 1, 1, 0),
(14918, 165, 15, 1, 1, 1, 0),
(14919, 37, 15, 1, 1, 1, 0),
(14920, 38, 15, 1, 1, 1, 0),
(14921, 39, 15, 1, 1, 1, 0),
(14922, 40, 15, 1, 1, 1, 0),
(14923, 139, 15, 1, 1, 1, 0),
(14924, 140, 15, 1, 1, 1, 0),
(14925, 46, 15, 0, 0, 0, 0),
(14926, 47, 15, 0, 0, 0, 0),
(14927, 48, 15, 0, 0, 0, 0),
(14928, 49, 15, 0, 0, 0, 0),
(14929, 50, 15, 0, 0, 0, 0),
(14930, 51, 15, 0, 0, 0, 0),
(14931, 52, 15, 0, 0, 0, 0),
(14932, 53, 15, 0, 0, 0, 0),
(14933, 54, 15, 0, 0, 0, 0),
(14934, 55, 15, 0, 0, 0, 0),
(14935, 97, 15, 0, 0, 0, 0),
(14936, 98, 15, 0, 0, 0, 0),
(14937, 99, 15, 0, 0, 0, 0),
(14938, 100, 15, 0, 0, 0, 0),
(14939, 101, 15, 0, 0, 0, 0),
(14940, 102, 15, 0, 0, 0, 0),
(14941, 122, 15, 0, 0, 0, 0),
(14942, 166, 15, 0, 0, 0, 0),
(14943, 4, 15, 0, 0, 0, 0),
(14944, 5, 15, 0, 0, 0, 0),
(14945, 6, 15, 0, 0, 0, 0),
(14946, 7, 15, 0, 0, 0, 0),
(14947, 8, 15, 0, 0, 0, 0),
(14948, 9, 15, 0, 0, 0, 0),
(14949, 10, 15, 0, 0, 0, 0),
(14950, 11, 15, 0, 0, 0, 0),
(14951, 12, 15, 0, 0, 0, 0),
(14952, 13, 15, 0, 0, 0, 0),
(14953, 14, 15, 0, 0, 0, 0),
(14954, 15, 15, 0, 0, 0, 0),
(14955, 16, 15, 0, 0, 0, 0),
(14956, 17, 15, 0, 0, 0, 0),
(14957, 18, 15, 0, 0, 0, 0),
(14958, 19, 15, 0, 0, 0, 0),
(14959, 56, 15, 0, 0, 0, 0),
(14960, 57, 15, 0, 0, 0, 0),
(14961, 58, 15, 0, 0, 0, 0),
(14962, 41, 15, 0, 0, 0, 0),
(14963, 103, 15, 0, 0, 0, 0),
(14964, 104, 15, 0, 0, 0, 0),
(14965, 109, 15, 0, 0, 0, 0),
(14966, 110, 15, 0, 0, 0, 0),
(14967, 60, 15, 0, 0, 0, 0),
(14968, 61, 15, 0, 0, 0, 0),
(14969, 62, 15, 0, 0, 0, 0),
(14970, 63, 15, 0, 0, 0, 0),
(14971, 64, 15, 0, 0, 0, 0),
(14972, 65, 15, 0, 0, 0, 0),
(14973, 66, 15, 0, 0, 0, 0),
(14974, 67, 15, 0, 0, 0, 0),
(14975, 68, 15, 0, 0, 0, 0),
(14976, 69, 15, 0, 0, 0, 0),
(14977, 70, 15, 0, 0, 0, 0),
(14978, 71, 15, 0, 0, 0, 0),
(14979, 72, 15, 0, 0, 0, 0),
(14980, 73, 15, 0, 0, 0, 0),
(14981, 74, 15, 0, 0, 0, 0),
(14982, 75, 15, 0, 0, 0, 0),
(14983, 76, 15, 0, 0, 0, 0),
(14984, 77, 15, 0, 0, 0, 0),
(14985, 78, 15, 0, 0, 0, 0),
(14986, 79, 15, 0, 0, 0, 0),
(14987, 80, 15, 0, 0, 0, 0),
(14988, 81, 15, 0, 0, 0, 0),
(14989, 82, 15, 0, 0, 0, 0),
(14990, 83, 15, 0, 0, 0, 0),
(14991, 84, 15, 0, 0, 0, 0),
(14992, 85, 15, 0, 0, 0, 0),
(14993, 86, 15, 0, 0, 0, 0),
(14994, 105, 15, 0, 0, 0, 0),
(14995, 106, 15, 0, 0, 0, 0),
(14996, 107, 15, 0, 0, 0, 0),
(14997, 108, 15, 0, 0, 0, 0),
(14998, 59, 15, 0, 0, 0, 0),
(14999, 87, 15, 0, 0, 0, 0),
(15000, 88, 15, 0, 0, 0, 0),
(15001, 89, 15, 0, 0, 0, 0),
(15002, 90, 15, 0, 0, 0, 0),
(15003, 91, 15, 0, 0, 0, 0),
(15004, 92, 15, 0, 0, 0, 0),
(15005, 93, 15, 0, 0, 0, 0),
(15006, 94, 15, 0, 0, 0, 0),
(15007, 95, 15, 0, 0, 0, 0),
(15008, 96, 15, 0, 0, 0, 0),
(15009, 115, 15, 0, 0, 0, 0),
(15010, 116, 15, 0, 0, 0, 0),
(15011, 117, 15, 0, 0, 0, 0),
(15012, 118, 15, 0, 0, 0, 0),
(15013, 119, 15, 0, 0, 0, 0),
(15014, 120, 15, 0, 0, 0, 0),
(15015, 121, 15, 0, 0, 0, 0),
(15016, 126, 15, 1, 1, 1, 0),
(15017, 127, 15, 1, 1, 1, 0),
(15018, 128, 15, 1, 1, 1, 0),
(15019, 129, 15, 1, 1, 1, 0),
(15020, 138, 15, 1, 1, 1, 0),
(15021, 141, 15, 1, 1, 1, 0),
(15022, 150, 15, 1, 1, 1, 0),
(15023, 151, 15, 1, 1, 1, 0),
(15024, 152, 15, 1, 1, 1, 0),
(15025, 153, 15, 1, 1, 1, 0),
(15026, 130, 15, 0, 0, 0, 0),
(15027, 131, 15, 0, 0, 0, 0),
(15028, 137, 15, 0, 0, 0, 0),
(15029, 132, 15, 1, 1, 1, 0),
(15030, 133, 15, 1, 1, 1, 0),
(15031, 159, 15, 1, 1, 1, 0),
(15032, 160, 15, 1, 1, 1, 0),
(15033, 161, 15, 1, 1, 1, 0),
(15034, 136, 15, 1, 1, 1, 0),
(15194, 1, 16, 0, 0, 0, 0),
(15195, 2, 16, 0, 0, 0, 0),
(15196, 3, 16, 0, 0, 0, 0),
(15197, 114, 16, 0, 0, 0, 0),
(15198, 123, 16, 0, 0, 0, 0),
(15199, 125, 16, 0, 0, 0, 0),
(15200, 142, 16, 0, 0, 0, 0),
(15201, 143, 16, 0, 0, 0, 0),
(15202, 144, 16, 0, 0, 0, 0),
(15203, 145, 16, 0, 0, 0, 0),
(15204, 146, 16, 0, 0, 0, 0),
(15205, 147, 16, 0, 0, 0, 0),
(15206, 148, 16, 0, 0, 0, 0),
(15207, 25, 16, 0, 0, 0, 0),
(15208, 26, 16, 0, 0, 0, 0),
(15209, 27, 16, 0, 0, 0, 0),
(15210, 28, 16, 0, 0, 0, 0),
(15211, 111, 16, 0, 0, 0, 0),
(15212, 113, 16, 0, 0, 0, 0),
(15213, 21, 16, 0, 0, 0, 0),
(15214, 22, 16, 0, 0, 0, 0),
(15215, 23, 16, 0, 0, 0, 0),
(15216, 24, 16, 0, 0, 0, 0),
(15217, 30, 16, 0, 0, 0, 0),
(15218, 149, 16, 0, 0, 0, 0),
(15219, 167, 16, 0, 0, 0, 0),
(15220, 31, 16, 0, 0, 0, 0),
(15221, 32, 16, 0, 0, 0, 0),
(15222, 33, 16, 0, 0, 0, 0),
(15223, 112, 16, 0, 0, 0, 0),
(15224, 35, 16, 0, 0, 0, 0),
(15225, 36, 16, 0, 0, 0, 0),
(15226, 124, 16, 0, 0, 0, 0),
(15227, 135, 16, 0, 0, 0, 0),
(15228, 155, 16, 0, 0, 0, 0),
(15229, 156, 16, 0, 0, 0, 0),
(15230, 157, 16, 0, 0, 0, 0),
(15231, 158, 16, 0, 0, 0, 0),
(15232, 43, 16, 0, 0, 0, 0),
(15233, 162, 16, 0, 0, 0, 0),
(15234, 163, 16, 0, 0, 0, 0),
(15235, 164, 16, 0, 0, 0, 0),
(15236, 165, 16, 0, 0, 0, 0),
(15237, 37, 16, 0, 0, 0, 0),
(15238, 38, 16, 0, 0, 0, 0),
(15239, 39, 16, 0, 0, 0, 0),
(15240, 40, 16, 0, 0, 0, 0),
(15241, 139, 16, 0, 0, 0, 0),
(15242, 140, 16, 0, 0, 0, 0),
(15243, 46, 16, 0, 0, 0, 0),
(15244, 47, 16, 0, 0, 0, 0),
(15245, 48, 16, 0, 0, 0, 0),
(15246, 49, 16, 0, 0, 0, 0),
(15247, 50, 16, 0, 0, 0, 0),
(15248, 51, 16, 0, 0, 0, 0),
(15249, 52, 16, 0, 0, 0, 0),
(15250, 53, 16, 0, 0, 0, 0),
(15251, 54, 16, 0, 0, 0, 0),
(15252, 55, 16, 0, 0, 0, 0),
(15253, 97, 16, 0, 0, 0, 0),
(15254, 98, 16, 0, 0, 0, 0),
(15255, 99, 16, 0, 0, 0, 0),
(15256, 100, 16, 0, 0, 0, 0),
(15257, 101, 16, 0, 0, 0, 0),
(15258, 102, 16, 0, 0, 0, 0),
(15259, 122, 16, 0, 0, 0, 0),
(15260, 166, 16, 0, 0, 0, 0),
(15261, 4, 16, 0, 0, 0, 0),
(15262, 5, 16, 0, 0, 0, 0),
(15263, 6, 16, 0, 0, 0, 0),
(15264, 7, 16, 0, 0, 0, 0),
(15265, 8, 16, 0, 0, 0, 0),
(15266, 9, 16, 0, 0, 0, 0),
(15267, 10, 16, 0, 0, 0, 0),
(15268, 11, 16, 0, 0, 0, 0),
(15269, 12, 16, 0, 0, 0, 0),
(15270, 13, 16, 0, 0, 0, 0),
(15271, 14, 16, 0, 0, 0, 0),
(15272, 15, 16, 0, 0, 0, 0),
(15273, 16, 16, 0, 0, 0, 0),
(15274, 17, 16, 0, 0, 0, 0),
(15275, 18, 16, 0, 0, 0, 0),
(15276, 19, 16, 0, 0, 0, 0),
(15277, 56, 16, 0, 0, 0, 0),
(15278, 57, 16, 0, 0, 0, 0),
(15279, 58, 16, 0, 0, 0, 0),
(15280, 41, 16, 0, 0, 0, 0),
(15281, 103, 16, 0, 0, 0, 0),
(15282, 104, 16, 0, 0, 0, 0),
(15283, 109, 16, 0, 0, 0, 0),
(15284, 110, 16, 0, 0, 0, 0),
(15285, 60, 16, 0, 0, 0, 0),
(15286, 61, 16, 0, 0, 0, 0),
(15287, 62, 16, 0, 0, 0, 0),
(15288, 63, 16, 0, 0, 0, 0),
(15289, 64, 16, 0, 0, 0, 0),
(15290, 65, 16, 0, 0, 0, 0),
(15291, 66, 16, 0, 0, 0, 0),
(15292, 67, 16, 0, 0, 0, 0),
(15293, 68, 16, 0, 0, 0, 0),
(15294, 69, 16, 0, 0, 0, 0),
(15295, 70, 16, 0, 0, 0, 0),
(15296, 71, 16, 0, 0, 0, 0),
(15297, 72, 16, 0, 0, 0, 0),
(15298, 73, 16, 0, 0, 0, 0),
(15299, 74, 16, 0, 0, 0, 0),
(15300, 75, 16, 0, 0, 0, 0),
(15301, 76, 16, 0, 0, 0, 0),
(15302, 77, 16, 0, 0, 0, 0),
(15303, 78, 16, 0, 0, 0, 0),
(15304, 79, 16, 0, 0, 0, 0),
(15305, 80, 16, 0, 0, 0, 0),
(15306, 81, 16, 0, 0, 0, 0),
(15307, 82, 16, 0, 0, 0, 0),
(15308, 83, 16, 0, 0, 0, 0),
(15309, 84, 16, 0, 0, 0, 0),
(15310, 85, 16, 0, 0, 0, 0),
(15311, 86, 16, 0, 0, 0, 0),
(15312, 105, 16, 0, 0, 0, 0),
(15313, 106, 16, 0, 0, 0, 0),
(15314, 107, 16, 0, 0, 0, 0),
(15315, 108, 16, 0, 0, 0, 0),
(15316, 59, 16, 0, 0, 0, 0),
(15317, 87, 16, 0, 0, 0, 0),
(15318, 88, 16, 0, 0, 0, 0),
(15319, 89, 16, 0, 0, 0, 0),
(15320, 90, 16, 0, 0, 0, 0),
(15321, 91, 16, 0, 0, 0, 0),
(15322, 92, 16, 0, 0, 0, 0),
(15323, 93, 16, 0, 0, 0, 0),
(15324, 94, 16, 0, 0, 0, 0),
(15325, 95, 16, 0, 0, 0, 0),
(15326, 96, 16, 0, 0, 0, 0),
(15327, 115, 16, 0, 0, 0, 0),
(15328, 116, 16, 0, 0, 0, 0),
(15329, 117, 16, 0, 0, 0, 0),
(15330, 118, 16, 0, 0, 0, 0),
(15331, 119, 16, 1, 1, 1, 1),
(15332, 120, 16, 1, 1, 1, 1),
(15333, 121, 16, 1, 1, 1, 1),
(15334, 126, 16, 0, 0, 0, 0),
(15335, 127, 16, 0, 0, 0, 0),
(15336, 128, 16, 1, 1, 1, 1),
(15337, 129, 16, 1, 1, 1, 1),
(15338, 138, 16, 1, 1, 1, 1),
(15339, 141, 16, 1, 1, 1, 1),
(15340, 150, 16, 1, 1, 1, 1),
(15341, 151, 16, 1, 1, 1, 1),
(15342, 152, 16, 1, 1, 1, 1),
(15343, 153, 16, 1, 1, 1, 1),
(15344, 130, 16, 0, 0, 0, 0),
(15345, 131, 16, 0, 0, 0, 0),
(15346, 137, 16, 0, 0, 0, 0),
(15347, 132, 16, 0, 0, 0, 0),
(15348, 133, 16, 0, 0, 0, 0),
(15349, 159, 16, 0, 0, 0, 0),
(15350, 160, 16, 0, 0, 0, 0),
(15351, 161, 16, 0, 0, 0, 0),
(15352, 136, 16, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `rqsn`
--

CREATE TABLE `rqsn` (
  `id` int(255) NOT NULL,
  `rqsn_id` varchar(255) CHARACTER SET utf8 NOT NULL,
  `rqsn_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `voyage_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rqsn_customer_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `from_id` varchar(255) CHARACTER SET utf8 NOT NULL,
  `to_id` varchar(255) CHARACTER SET utf8 NOT NULL,
  `date` varchar(255) CHARACTER SET utf8 NOT NULL,
  `details` text CHARACTER SET utf8 DEFAULT NULL,
  `is_sold` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL COMMENT 'Approve=3'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rqsn`
--

INSERT INTO `rqsn` (`id`, `rqsn_id`, `rqsn_no`, `voyage_no`, `rqsn_customer_name`, `from_id`, `to_id`, `date`, `details`, `is_sold`, `status`) VALUES
(1, '1990764652', 'MT11-VR1', '1', '6', 'MT1', 'HK7TGDT69VFMXB7', '2022-04-21', 'Requisition', NULL, 2),
(2, '769646055', 'MT213-VR2', '13', '6', 'MT2', 'HK7TGDT69VFMXB7', '2022-05-22', 'Requisition', '1', 3),
(3, '52396871', 'MT14-VR3', '4', '6', 'MT1', 'HK7TGDT69VFMXB7', '2022-05-25', 'Requisition', '1', 3),
(4, '353649996', 'MT1VR4', '4', '6', 'MT1', 'HK7TGDT69VFMXB7', '2022-05-26', 'Requisition', '1', 3),
(5, '1579480209', 'MT1VR1', '1', '6', 'MT1', 'HK7TGDT69VFMXB7', '2022-05-27', 'Requisition', '1', 3),
(6, '1542039686', 'MT2VR45', '45', '6', 'MT2', 'HK7TGDT69VFMXB7', '2022-05-27', 'Requisition', '1', 3),
(7, '2024423942', 'STVR2', '2', '1', 'ST', 'HK7TGDT69VFMXB7', '2022-08-10', 'Requisition', '0', 3);

-- --------------------------------------------------------

--
-- Table structure for table `rqsn_cart`
--

CREATE TABLE `rqsn_cart` (
  `id` int(255) NOT NULL,
  `outlet_id` varchar(255) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `subcat` varchar(255) DEFAULT NULL,
  `parts` varchar(255) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `qty` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rqsn_details`
--

CREATE TABLE `rqsn_details` (
  `id` int(11) NOT NULL,
  `rqsn_detail_id` varchar(255) CHARACTER SET utf8 NOT NULL,
  `rqsn_id` varchar(255) CHARACTER SET utf8 NOT NULL,
  `product_id` varchar(255) CHARACTER SET utf8 NOT NULL,
  `unit` varchar(255) CHARACTER SET utf8 NOT NULL,
  `quantity` varchar(255) CHARACTER SET utf8 NOT NULL,
  `a_qty` int(255) DEFAULT NULL,
  `purchase_qty` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `store_qty` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit_rate` float DEFAULT NULL,
  `total` float DEFAULT NULL,
  `status` int(11) NOT NULL,
  `isaprv` int(11) DEFAULT NULL,
  `isrcv` int(11) DEFAULT NULL,
  `iscw` int(10) DEFAULT NULL,
  `purchase_status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rqsn_details`
--

INSERT INTO `rqsn_details` (`id`, `rqsn_detail_id`, `rqsn_id`, `product_id`, `unit`, `quantity`, `a_qty`, `purchase_qty`, `store_qty`, `unit_rate`, `total`, `status`, `isaprv`, `isrcv`, `iscw`, `purchase_status`) VALUES
(1, '78162912', '1990764652', '31866922', '', '1', NULL, NULL, NULL, 45, 45, 1, NULL, NULL, NULL, 1),
(2, '1813150810', '769646055', '18123355', '', '10', 10, '10', '0', 10, 100, 1, NULL, NULL, NULL, 2),
(3, '1379305696', '769646055', '23233633', '', '10', 10, '10', '0', 250, 2500, 1, NULL, NULL, NULL, 2),
(4, '822125739', '769646055', '88982932', '', '2', 2, '2', '0', 900, 1800, 1, NULL, NULL, NULL, 2),
(5, '1497391187', '52396871', '94716333', '', '1', 1, '1', '0', 210, 210, 1, NULL, NULL, NULL, 2),
(6, '1750458856', '353649996', '94853342', '', '100', 100, '100', '0', 15, 1500, 1, NULL, NULL, NULL, 2),
(7, '383900827', '1579480209', '43227462', '', '90', 90, '90', '0', 450, 40500, 1, NULL, NULL, NULL, 1),
(8, '1683843417', '1542039686', '31866922', '', '90', 90, '90', '0', 45, 4050, 1, NULL, NULL, NULL, 1),
(9, '844243934', '2024423942', '1393189199', '', '30', 30, '30', '', 12, 360, 1, NULL, NULL, NULL, 2),
(10, '545132578', '2024423942', '4888939647', '', '6', 6, '6', '0', 370, 2220, 1, NULL, NULL, NULL, 2),
(11, '767486208', '2024423942', '5866725828', '', '2', 2, '2', '0', 100, 200, 1, NULL, NULL, NULL, 2),
(12, '12298510', '2024423942', '6762975686', '', '1', 1, '1', '0', 900, 900, 1, NULL, NULL, NULL, 2),
(13, '709347487', '2024423942', '6986126135', '', '12', 12, '12', '0', 26, 312, 1, NULL, NULL, NULL, 2),
(14, '1369204467', '2024423942', '7251146751', '', '0', 1, '1', '0', 85, 85, 1, NULL, NULL, NULL, 2),
(15, '637117509', '2024423942', '7775577523', '', '12', 12, '12', '0', 13, 156, 1, NULL, NULL, NULL, 2),
(16, '1378798828', '2024423942', '9186736396', '', '12', 12, '12', '0', 18, 216, 1, NULL, NULL, NULL, 2),
(17, '1163455846', '2024423942', '9642491257', '', '2', 2, '2', '0', 400, 800, 1, NULL, NULL, NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `rqsn_return`
--

CREATE TABLE `rqsn_return` (
  `id` int(255) NOT NULL,
  `return_id` varchar(255) DEFAULT NULL,
  `rqsn_id` varchar(255) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `from_id` varchar(255) DEFAULT NULL,
  `to_id` varchar(255) DEFAULT NULL,
  `ret_qty` varchar(155) DEFAULT NULL,
  `tr_qty` varchar(255) DEFAULT NULL,
  `date_rqsn` varchar(50) DEFAULT NULL,
  `date_return` varchar(50) DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `usablity` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `salary_sheet_generate`
--

CREATE TABLE `salary_sheet_generate` (
  `ssg_id` int(11) UNSIGNED NOT NULL,
  `name` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `gdate` varchar(30) DEFAULT NULL,
  `start_date` varchar(30) CHARACTER SET latin1 NOT NULL,
  `end_date` varchar(30) CHARACTER SET latin1 NOT NULL,
  `generate_by` varchar(30) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `salary_sheet_generate`
--

INSERT INTO `salary_sheet_generate` (`ssg_id`, `name`, `gdate`, `start_date`, `end_date`, `generate_by`) VALUES
(5, '', 'January 2021', '2021-1-1', '2021-1-31', 'Global Medical');

-- --------------------------------------------------------

--
-- Table structure for table `salary_type`
--

CREATE TABLE `salary_type` (
  `salary_type_id` int(11) NOT NULL,
  `sal_name` varchar(100) NOT NULL,
  `salary_type` varchar(50) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `salary_type`
--

INSERT INTO `salary_type` (`salary_type_id`, `sal_name`, `salary_type`, `status`) VALUES
(4, 'House Rent', '1', '1'),
(5, 'Medical Allowance', '1', '1'),
(6, 'Transport Allowance', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `sec_role`
--

CREATE TABLE `sec_role` (
  `id` int(11) NOT NULL,
  `type` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sec_role`
--

INSERT INTO `sec_role` (`id`, `type`) VALUES
(1, 'Super Admin'),
(5, 'Sales'),
(11, 'Mid Management'),
(12, 'Executive'),
(13, 'Data Entry'),
(14, 'Accounts'),
(15, 'Store Management'),
(16, 'Customer');

-- --------------------------------------------------------

--
-- Table structure for table `sec_userrole`
--

CREATE TABLE `sec_userrole` (
  `id` int(11) NOT NULL,
  `user_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `roleid` int(11) NOT NULL,
  `createby` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `createdate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sec_userrole`
--

INSERT INTO `sec_userrole` (`id`, `user_id`, `roleid`, `createby`, `createdate`) VALUES
(1, '2', 1, '2', '2020-10-30 08:52:32'),
(2, '2', 2, '2', '2020-10-30 12:33:52'),
(3, '2', 2, 'OpSoxJvBbbS8Rws', '2020-10-30 12:38:49'),
(4, 'tF2YChLBH86gHfG', 2, 'OpSoxJvBbbS8Rws', '2020-10-30 12:41:34'),
(5, 'lhnKdCdtVDMGqNr', 2, 'OpSoxJvBbbS8Rws', '2021-01-24 07:00:46'),
(6, 'lhnKdCdtVDMGqNr', 4, 'OpSoxJvBbbS8Rws', '2021-01-24 07:08:02'),
(7, 'ijpPELEg1KWywCs', 4, 'OpSoxJvBbbS8Rws', '2021-01-24 07:09:51'),
(8, 'ijpPELEg1KWywCs', 5, 'tF2YChLBH86gHfG', '2021-01-24 07:15:29'),
(9, 'tF2YChLBH86gHfG', 2, 'OpSoxJvBbbS8Rws', '2021-01-26 05:39:28'),
(10, 'tF2YChLBH86gHfG', 2, 'OpSoxJvBbbS8Rws', '2021-01-28 04:15:05'),
(11, 'ijpPELEg1KWywCs', 6, 'OpSoxJvBbbS8Rws', '2021-02-09 07:25:58'),
(12, 'V2DEJbIBFZq40dl', 6, 'OpSoxJvBbbS8Rws', '2021-02-09 07:27:25'),
(13, 'oHhdeY9SHRfOBJE', 7, 'OpSoxJvBbbS8Rws', '2021-04-13 09:53:38'),
(14, 'BqEHuu0wLvpfiJo', 7, 'OpSoxJvBbbS8Rws', '2021-04-15 10:07:06'),
(15, 'iddZKdMU6PIVZMj', 10, 'OpSoxJvBbbS8Rws', '2021-04-17 08:29:31'),
(16, 'ByIUOew8UWnm8dD', 11, 'OpSoxJvBbbS8Rws', '2021-07-18 09:03:54'),
(17, 'Qm87ejly4fxo4Il', 5, 'OpSoxJvBbbS8Rws', '2021-11-27 06:44:50'),
(18, 'BVv5Axt7rgo5CWU', 12, 'ByIUOew8UWnm8dD', '2021-11-28 10:21:35'),
(19, 'ByIUOew8UWnm8dD', 11, 'ByIUOew8UWnm8dD', '2021-12-09 08:44:36'),
(20, 'ByIUOew8UWnm8dD', 11, 'ByIUOew8UWnm8dD', '2021-12-09 08:46:10'),
(21, 'ByIUOew8UWnm8dD', 11, 'ByIUOew8UWnm8dD', '2021-12-09 08:50:16'),
(22, 'OpSoxJvBbbS8Rws', 1, 'OpSoxJvBbbS8Rws', '2022-02-28 05:02:16'),
(23, 'ZtMYLcz3Uq5wWRa', 14, 'ByIUOew8UWnm8dD', '2022-08-10 05:51:37'),
(24, 'IM7O2QrS5m0nQtM', 14, 'ByIUOew8UWnm8dD', '2022-08-10 06:21:46'),
(25, 'BVv5Axt7rgo5CWU', 1, 'ByIUOew8UWnm8dD', '2022-08-10 06:48:53'),
(26, 'JTjFT272Tp35CKn', 5, 'ByIUOew8UWnm8dD', '2022-08-10 06:49:03'),
(27, 'xzqBIxlaeZ468PG', 5, 'ByIUOew8UWnm8dD', '2022-08-10 06:49:09'),
(28, 'p00TiZ6UE16DZNp', 15, 'ByIUOew8UWnm8dD', '2022-08-10 06:50:57'),
(29, 'SP2V7b91OSQ96f2', 16, 'BVv5Axt7rgo5CWU', '2022-08-10 10:31:58');

-- --------------------------------------------------------

--
-- Table structure for table `sent_sms`
--

CREATE TABLE `sent_sms` (
  `id` int(11) NOT NULL,
  `from` varchar(255) DEFAULT NULL,
  `to` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sent_sms`
--

INSERT INTO `sent_sms` (`id`, `from`, `to`, `message`) VALUES
(1, '8809601000500', '01787281564', 'Sarwar Tester ...');

-- --------------------------------------------------------

--
-- Table structure for table `service_invoice`
--

CREATE TABLE `service_invoice` (
  `id` int(11) NOT NULL,
  `voucher_no` varchar(30) NOT NULL,
  `date` date NOT NULL,
  `employee_id` varchar(100) DEFAULT NULL,
  `customer_id` varchar(30) NOT NULL,
  `total_amount` decimal(20,2) NOT NULL DEFAULT 0.00,
  `total_discount` decimal(20,2) NOT NULL DEFAULT 0.00,
  `invoice_discount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total_tax` decimal(10,2) NOT NULL DEFAULT 0.00,
  `paid_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `due_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `shipping_cost` decimal(10,2) NOT NULL DEFAULT 0.00,
  `previous` decimal(10,2) NOT NULL DEFAULT 0.00,
  `details` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `service_invoice_details`
--

CREATE TABLE `service_invoice_details` (
  `id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `service_inv_id` varchar(30) NOT NULL,
  `qty` decimal(10,2) NOT NULL DEFAULT 0.00,
  `charge` decimal(10,2) NOT NULL DEFAULT 0.00,
  `discount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `discount_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total` decimal(10,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sms_settings`
--

CREATE TABLE `sms_settings` (
  `id` int(11) NOT NULL,
  `api_key` varchar(100) DEFAULT NULL,
  `api_secret` varchar(100) DEFAULT NULL,
  `from` varchar(100) DEFAULT NULL,
  `isinvoice` int(11) NOT NULL DEFAULT 0,
  `isservice` int(11) NOT NULL DEFAULT 0,
  `isreceive` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sms_settings`
--

INSERT INTO `sms_settings` (`id`, `api_key`, `api_secret`, `from`, `isinvoice`, `isservice`, `isreceive`) VALUES
(1, 'C20047385da5a06aec2c21.99251389', '', '8809601000500', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sub_module`
--

CREATE TABLE `sub_module` (
  `id` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 DEFAULT NULL,
  `image` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `directory` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_module`
--

INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES
(1, 1, 'new_invoice', NULL, NULL, 'new_invoice', 1),
(2, 1, 'manage_invoice', NULL, NULL, 'manage_invoice', 1),
(3, 1, 'pos_invoice', NULL, NULL, 'pos_invoice', 1),
(4, 9, 'c_o_a', NULL, NULL, 'show_tree', 1),
(5, 9, 'supplier_payment', NULL, NULL, 'supplier_payment', 1),
(6, 9, 'customer_receive', NULL, NULL, 'customer_receive', 1),
(7, 9, 'debit_voucher', NULL, NULL, 'debit_voucher', 1),
(8, 9, 'credit_voucher', NULL, NULL, 'credit_voucher', 1),
(9, 9, 'voucher_approval', NULL, NULL, 'aprove_v', 1),
(10, 9, 'contra_voucher', NULL, NULL, 'contra_voucher', 1),
(11, 9, 'journal_voucher', NULL, NULL, 'journal_voucher', 1),
(12, 9, 'report', NULL, NULL, 'ac_report', 1),
(13, 9, 'cash_book', NULL, NULL, 'cash_book', 1),
(14, 9, 'Inventory_ledger', NULL, NULL, 'inventory_ledger', 1),
(15, 9, 'bank_book', NULL, NULL, 'bank_book', 1),
(16, 9, 'general_ledger', NULL, NULL, 'general_ledger', 1),
(17, 9, 'trial_balance', NULL, NULL, 'trial_balance', 1),
(18, 9, 'cash_flow', NULL, NULL, 'cash_flow_report', 1),
(19, 9, 'coa_print', NULL, NULL, 'coa_print', 1),
(21, 3, 'category', NULL, NULL, 'manage_category', 1),
(22, 3, 'add_product', NULL, NULL, 'create_product', 1),
(23, 3, 'import_product_csv', NULL, NULL, 'add_product_csv', 1),
(24, 3, 'manage_product', NULL, NULL, 'manage_product', 1),
(25, 2, 'add_customer', NULL, NULL, 'add_customer', 1),
(26, 2, 'manage_customer', NULL, NULL, 'manage_customer', 1),
(27, 2, 'credit_customer', NULL, NULL, 'credit_customer', 1),
(28, 2, 'paid_customer', NULL, NULL, 'paid_customer', 1),
(30, 3, 'unit', NULL, NULL, 'manage_unit', 1),
(31, 4, 'add_supplier', NULL, NULL, 'add_supplier', 1),
(32, 4, 'manage_supplier', NULL, NULL, 'manage_supplier', 1),
(33, 4, 'supplier_ledger', NULL, NULL, 'supplier_ledger_report', 1),
(35, 5, 'add_purchase', NULL, NULL, 'add_purchase', 1),
(36, 5, 'manage_purchase', NULL, NULL, 'manage_purchase', 1),
(37, 7, 'return', NULL, NULL, 'add_return', 1),
(38, 7, 'stock_return_list', NULL, NULL, 'return_list', 1),
(39, 7, 'supplier_return_list', NULL, NULL, 'supplier_return_list', 1),
(40, 7, 'wastage_return_list', NULL, NULL, 'wastage_return_list', 1),
(41, 11, 'tax_settings', NULL, NULL, 'tax_settings', 1),
(43, 6, 'stock_report', NULL, NULL, 'stock_report', 1),
(46, 8, 'closing', NULL, NULL, 'add_closing', 1),
(47, 8, 'closing_report', NULL, NULL, 'closing_report', 1),
(48, 8, 'todays_report', NULL, NULL, 'all_report', 1),
(49, 8, 'todays_customer_receipt', NULL, NULL, 'todays_customer_receipt', 1),
(50, 8, 'sales_report', NULL, NULL, 'todays_sales_report', 1),
(51, 8, 'due_report', NULL, NULL, 'retrieve_dateWise_DueReports', 1),
(52, 8, 'purchase_report', NULL, NULL, 'todays_purchase_report', 1),
(53, 8, 'purchase_report_category_wise', NULL, NULL, 'purchase_report_category_wise', 1),
(54, 8, 'sales_report_product_wise', NULL, NULL, 'product_sales_reports_date_wise', 1),
(55, 8, 'sales_report_category_wise', NULL, NULL, 'sales_report_category_wise', 1),
(56, 10, 'add_new_bank', NULL, NULL, 'add_bank', 1),
(57, 10, 'bank_transaction', NULL, NULL, 'bank_transaction', 1),
(58, 10, 'manage_bank', NULL, NULL, 'bank_list', 1),
(59, 14, 'generate_commission', NULL, NULL, 'commission', 1),
(60, 12, 'add_designation', NULL, NULL, 'add_designation', 1),
(61, 12, 'manage_designation', NULL, NULL, 'manage_designation', 1),
(62, 12, 'add_employee', NULL, NULL, 'add_employee', 1),
(63, 12, 'manage_employee', NULL, NULL, 'manage_employee', 1),
(64, 12, 'add_attendance', NULL, NULL, 'add_attendance', 1),
(65, 12, 'manage_attendance', NULL, NULL, 'manage_attendance', 1),
(66, 12, 'attendance_report', NULL, NULL, 'attendance_report', 1),
(67, 12, 'add_benefits', NULL, NULL, 'add_benefits', 1),
(68, 12, 'manage_benefits', NULL, NULL, 'manage_benefits', 1),
(69, 12, 'add_salary_setup', NULL, NULL, 'add_salary_setup', 1),
(70, 12, 'manage_salary_setup', NULL, NULL, 'manage_salary_setup', 1),
(71, 12, 'salary_generate', NULL, NULL, 'salary_generate', 1),
(72, 12, 'manage_salary_generate', NULL, NULL, 'manage_salary_generate', 1),
(73, 12, 'salary_payment', NULL, NULL, 'salary_payment', 1),
(74, 12, 'add_expense_item', NULL, NULL, 'add_expense_item', 1),
(75, 12, 'manage_expense_item', NULL, NULL, 'manage_expense_item', 1),
(76, 12, 'add_expense', NULL, NULL, 'add_expense', 1),
(77, 12, 'manage_expense', NULL, NULL, 'manage_expense', 1),
(78, 12, 'expense_statement', NULL, NULL, 'expense_statement', 1),
(79, 12, 'add_person_officeloan', NULL, NULL, 'add1_person', 1),
(80, 12, 'add_loan_officeloan', NULL, NULL, 'add_office_loan', 1),
(81, 12, 'add_payment_officeloan', NULL, NULL, 'add_loan_payment', 1),
(82, 12, 'manage_loan_officeloan', NULL, NULL, 'manage1_person', 1),
(83, 12, 'add_person_personalloan', NULL, NULL, 'add_person', 1),
(84, 12, 'add_loan_personalloan', NULL, NULL, 'add_loan', 1),
(85, 12, 'add_payment_personalloan', NULL, NULL, 'add_payment', 1),
(86, 12, 'manage_loan_personalloan', NULL, NULL, 'manage_person', 1),
(87, 15, 'manage_company', NULL, NULL, 'manage_company', 1),
(88, 15, 'add_user', NULL, NULL, 'add_user', 1),
(89, 15, 'manage_users', NULL, NULL, 'manage_user', 1),
(90, 15, 'language', NULL, NULL, 'add_language', 1),
(91, 15, 'currency', NULL, NULL, 'add_currency', 1),
(92, 15, 'setting', NULL, NULL, 'soft_setting', 1),
(93, 15, 'add_role', NULL, NULL, 'add_role', 1),
(94, 15, 'role_list', NULL, NULL, 'role_list', 1),
(95, 15, 'user_assign_role', NULL, NULL, 'user_assign', 1),
(96, 15, 'Permission', NULL, NULL, NULL, 1),
(97, 8, 'shipping_cost_report', NULL, NULL, 'shipping_cost_report', 1),
(98, 8, 'user_wise_sales_report', NULL, NULL, 'user_wise_sales_report', 1),
(99, 8, 'invoice_return', NULL, NULL, 'invoice_return', 1),
(100, 8, 'supplier_return', NULL, NULL, 'supplier_return', 1),
(101, 8, 'tax_report', NULL, NULL, 'tax_report', 1),
(102, 8, 'profit_report', NULL, NULL, 'profit_report', 1),
(103, 11, 'add_incometax', NULL, NULL, 'add_incometax', 1),
(104, 11, 'manage_income_tax', NULL, NULL, 'manage_income_tax', 1),
(105, 13, 'add_service', NULL, NULL, 'create_service', 1),
(106, 13, 'manage_service', NULL, NULL, 'manage_service', 1),
(107, 13, 'service_invoice', NULL, NULL, 'service_invoice', 1),
(108, 13, 'manage_service_invoice', NULL, NULL, 'manage_service_invoice', 1),
(109, 11, 'tax_report', NULL, NULL, 'tax_report', 1),
(110, 11, 'invoice_wise_tax_report', NULL, NULL, 'invoice_wise_tax_report', 1),
(111, 2, 'customer_advance', NULL, NULL, 'customer_advance', 1),
(112, 4, 'supplier_advance', NULL, NULL, 'supplier_advance', 1),
(113, 2, 'customer_ledger', NULL, NULL, 'customer_ledger', 1),
(114, 1, 'gui_pos', NULL, NULL, 'gui_pos', 1),
(115, 15, 'sms_configure', NULL, NULL, 'sms_configure', 1),
(116, 15, 'backup_restore', NULL, NULL, 'back_up', 1),
(117, 15, 'import', NULL, NULL, 'sql_import', 1),
(118, 15, 'restore', NULL, NULL, 'restore', 1),
(119, 16, 'add_quotation', NULL, NULL, 'add_quotation', 1),
(120, 16, 'manage_quotation', NULL, NULL, 'manage_quotation', 1),
(121, 16, 'add_to_invoice', NULL, NULL, 'add_to_invoice', 1),
(122, 8, 'purchase_report_shelf_wise', NULL, NULL, 'purchase_report_shelf_wise', 1),
(123, 1, 'sales_cheque_report', NULL, NULL, 'sales_cheque_report', 1),
(124, 5, 'purchase_cheque_report', NULL, NULL, 'purchase_cheque_report', 1),
(125, 1, 'dispatch_outlet', NULL, NULL, 'dispatch_outlet', 1),
(126, 17, 'warehouse', NULL, NULL, 'warehouse', 1),
(127, 17, 'outlet', NULL, NULL, 'outlet', 1),
(128, 18, 'rqsn_form', NULL, NULL, 'rqsn_form', 1),
(129, 18, 'cw_purchase', NULL, NULL, 'cw_purchase', 1),
(130, 19, 'aprove_rqsn', NULL, NULL, 'aprove_rqsn', 1),
(131, 19, 'aprove_rqsn_purchase', NULL, NULL, 'aprove_rqsn_purchase', 1),
(132, 20, 'outlet_approve', NULL, NULL, 'outlet_approve', 1),
(133, 20, 'aprove_chalan', NULL, NULL, 'aprove_chalan', 1),
(135, 5, 'purchase_order', NULL, NULL, 'purchase_order', 1),
(136, 21, 'outlet_stock', NULL, NULL, 'outlet_stock', 1),
(137, 19, 'aprove_rqsn_outlet', NULL, NULL, 'aprove_rqsn_outlet', 1),
(138, 18, 'rqsn_list', NULL, NULL, 'rqsn_list', 1),
(139, 7, 'outlet_return_list', NULL, NULL, 'outlet_return_list', 1),
(140, 7, 'wastage_outlet_return_list', NULL, NULL, 'wastage_outlet_return_list', 1),
(141, 18, 'rqsn_list_outlet', NULL, NULL, 'rqsn_list_outlet', 1),
(142, 1, 'sales_order', NULL, NULL, 'sales_order', 1),
(143, 1, 'manage_sales_order', NULL, NULL, 'manage_sales_order', 1),
(144, 1, 'sales_order_report', NULL, NULL, 'sales_order_report', 1),
(145, 1, 'delivery_chalan', NULL, NULL, 'delivery_chalan', 1),
(146, 1, 'add_new_sales', NULL, NULL, 'add_new_sales', 1),
(147, 1, 'check_report', NULL, NULL, 'check_report', 1),
(148, 1, 'pending_dc', NULL, NULL, 'pending_dc', 1),
(149, 3, 'catalogue', NULL, NULL, 'catalogue', 1),
(150, 18, 'store_qty', NULL, NULL, 'store_qty', 1),
(151, 18, 'draft_rqsn', NULL, NULL, 'draft_rqsn', 1),
(152, 18, 'aprove_rqsn_edit', NULL, NULL, 'aprove_rqsn_edit', 1),
(153, 18, 'aprove_rqsn_edit_price', NULL, NULL, 'aprove_rqsn_edit_price', 1),
(155, 5, 'purchase_list', NULL, NULL, 'purchase_list', 1),
(156, 5, 'purchase_order', NULL, NULL, 'purchase_order', 1),
(157, 5, 'purchase_order_approve', NULL, NULL, 'purchase_order_approve', 1),
(158, 5, 'approval_report', NULL, NULL, 'approval_report', 1),
(159, 20, 'product_receive_form', NULL, NULL, 'product_receive_form', 1),
(160, 20, 'product_receive_form_two', NULL, NULL, 'product_receive_form_two', 1),
(161, 20, 'product_receive_form_three', NULL, NULL, 'product_receive_form_three', 1),
(162, 6, 'wastage_dec', NULL, NULL, 'wastage_dec', 1),
(163, 6, 'dead_dec', NULL, NULL, 'dead_dec', 1),
(164, 6, 'item_ledger', NULL, NULL, 'item_ledger', 1),
(165, 6, 'valuation_report', NULL, NULL, 'valuation_report', 1),
(166, 8, 'product_price', NULL, NULL, 'product_price', 1),
(167, 3, 'approve_price', NULL, NULL, 'approve_price', 1);

-- --------------------------------------------------------

--
-- Table structure for table `supplier_address`
--

CREATE TABLE `supplier_address` (
  `id` int(255) NOT NULL,
  `supplier_id` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `supplier_contact`
--

CREATE TABLE `supplier_contact` (
  `id` int(255) NOT NULL,
  `supplier_id` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `supplier_email`
--

CREATE TABLE `supplier_email` (
  `id` int(255) NOT NULL,
  `supplier_id` varchar(255) DEFAULT NULL,
  `email_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `supplier_information`
--

CREATE TABLE `supplier_information` (
  `supplier_id` bigint(20) NOT NULL,
  `supplier_name` varchar(255) NOT NULL,
  `supplier_type` varchar(255) DEFAULT NULL,
  `credit_interval` varchar(255) DEFAULT NULL,
  `bank_details` text DEFAULT NULL,
  `state` text DEFAULT NULL,
  `zip` varchar(50) DEFAULT NULL,
  `country` varchar(250) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL,
  `status` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `supplier_information`
--

INSERT INTO `supplier_information` (`supplier_id`, `supplier_name`, `supplier_type`, `credit_interval`, `bank_details`, `state`, `zip`, `country`, `details`, `status`) VALUES
(1, 'Mohanagar Traders', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(2, 'Bedford Service', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(3, 'Shely Engineering Workshop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(4, 'Chittagong Suppliers', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(5, 'Jahangir Electric & Automation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(6, 'J.B. Enterprise', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(7, 'Al Helal Electric Co.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(8, 'Umme Salma Electric Service & Hardware', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(9, 'Nabi Electric Store', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(10, 'Mahanagar Tools Center', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(11, 'M/S Parvez Enterprise', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(12, 'Rupalika Electrical & Engineering Works', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(13, 'Marine Electronics Service', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(14, 'S.S. Hardware', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(15, 'M/S Joyotu Pharmacy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(16, 'PMT Store', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(17, 'The Amanat Shahjalal Eng. Works', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(18, 'S.S. Enterprise', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(19, 'A.D. Sons Marine Tech', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(20, 'Dhaka Machinery', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(21, 'Dhaka Boiler & Marine Store', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(22, 'Bangladesh Medical Hall', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(23, 'M/S Halima Iron Mart', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(24, 'M/S Krisi Vandar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(25, 'M/S Rubel Enterprise', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(26, 'Salamat Enterprise', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(27, 'M/S Latif Stationery', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(28, 'M/S National Stationery', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(29, 'M/S S.K. Electric Engineering Service', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(30, 'Meera Enterprise', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(31, 'M/S Amanat Battery Co.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(32, 'Arefa Electronics & Battery', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(33, 'M/S Mahin & Brothers', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(34, 'Quality Powertec', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(35, 'Akhter Store', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(36, 'Madina Mattress House', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(37, 'Momena Marine Store', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(38, 'Shah Amanat Hardware & Electric', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(39, 'Memory Collection', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(40, 'Icon Traders', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(41, 'B.M. Traders', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(42, 'Robiul Modern Trawl Suppliers', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(43, 'M/S Arif & Brothers', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(44, 'Star Marine', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(45, 'M/S Sabitri Pharmacy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(46, 'M/S Bashir & Brothers', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(47, 'Ali Store', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(48, 'Paradise Marine Traders', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(49, 'Kul Computers', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(50, 'M/S Rony Enterprise', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(51, 'Nurjahan Machinery & Hardware Tools', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(52, 'Rashid Electric & Engineering', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(53, 'Sirichai Perfect Fishing Gear Company', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(54, 'Marine Safety Equipment Services', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(55, 'New Matin Brothers', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(56, 'M/S Super Electric', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(57, 'New Minar Engineering Workshop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(58, 'City Computer & Photostat', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(59, 'Anik Boiler & Pneumatic House', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(60, 'Mohammadia Pipe House', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(61, 'Shah Saumia Hardware & Electric Service', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(62, 'M/S Abodan Cycles', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(63, 'Pelagic Marine', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(64, 'M/S Jamal & Brothers', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(65, 'M/S Liton Hardware Store', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(66, 'M/S Arobindo Pharmacy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(67, 'Jarif Digital Machinery', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(68, 'General Machinery Stores', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(69, 'Kamal & Javed Electric', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(70, 'Ahmed Tools & Machinery', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(71, 'M/S Karim & Brothers', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(72, 'RFL Best Buy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(73, 'Nomeya Jannat Crockeries', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(74, 'M/S Parts Bitan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(75, 'M/S Ali Mill Store', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(76, 'Nahar Trading', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(77, 'S.N. Traders', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(78, 'M/S N.A. Enterprise', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(79, 'New Modina Porda Bitan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(80, 'Shahid Traders', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(81, 'Anchor Refrigeration', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(82, 'Tayub Marine Service', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(83, 'Jamuna Machinery', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(84, 'Azad Engineering Workshop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(85, 'M/S Ayon Enterprise', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(86, 'Mahbub Trade & Engineering', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(87, 'Shadia Motors', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(88, 'Neyamat Shah Enterprise', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(89, 'Bengal Motors', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(90, 'M.K. Trading & Co.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(91, 'Chula Ghor', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(92, 'Suma Fabrics', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(93, 'Jakir Hossain Iron Mart', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(94, 'P.S. Hardware', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(95, 'M/S Bengal Trading Agency', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(96, 'Bengal Trading Agency', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(97, 'Madina Marine Tools Center', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(98, 'BD Trade International', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(99, 'M/S A.B. Hydraulic System', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(100, 'M/S Mohammadia Engineering Works', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(101, 'Janani Electronics', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(102, 'Bangla Trac Group', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(103, 'Hamida Pipe House', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(104, 'New IT Power', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(105, 'Master Computer Service', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(106, 'Smart Computer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(107, 'Nadim Hardware', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(108, 'Azmir Hydraulic Spares', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(109, 'Balaka Tools Traders', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(110, 'R.K. Electric Service', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(111, 'M/S New Shah Jabbaria Enterprise', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(112, 'Cabitaj Online Working', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(113, 'Dip Medico', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(114, '3P-Technology', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(115, 'M/S S.A. Enterprise', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(116, 'Sagor Digital Studio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(117, 'Jamuna Oil Suppliers', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(118, 'M/S Morium Enterprise', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(119, 'Abrar Bedding Store', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(120, 'Alauddin Electronics', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(121, 'Madina Machinery', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(122, 'M/S Islam Gift Center', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(123, 'M/S Humayun Electronics', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(124, 'Moinuddin Trading Corporation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(125, 'M/S Abu Hanif & Brothers', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(126, 'S.H. Enterprise', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(127, 'M.M. Metal Works', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(128, 'N.N. Enterprise', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(129, 'Mohiuddin & Brothers', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(130, 'Seba Chemist & Druggist', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(131, 'Bangladesh Fisheries Development Corporation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(132, 'Padma Oil Company Ltd.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(133, 'International Oil Agency', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(134, 'Discovery Departmental Store', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(135, 'M/S Sharmin Enterprise', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(136, 'Rana Marine Stores', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(137, 'Micron Technologies', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(138, 'Al-Madina Machinery & Rubber Store', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(139, 'M/S Hridoy Enterprise', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(140, 'M/S Brothers Prokaushli Workshop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(141, 'Rahmania Marine Engineering Works', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(142, 'M/S Momtaz Enterprise', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(143, 'M/S Bismillah Trading', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(144, 'Four Star International', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(145, 'M/S Miraj Al Mehrab Photostat Centre', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(146, 'Favourite Tools Centre', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(147, 'Magnet Tools Centre', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(148, 'Islam Crockeries', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(149, 'M/S Nadim Enterprise', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(150, 'HNJ Traders', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(151, 'Paradise Ice & Fish Processing Plant', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(152, 'Allahar Dan Packaging', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(153, 'Al Baraka Store', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(154, 'Al-Baraka Store', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(155, 'Strong Variety Store', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(156, 'Khwaja Traders', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(157, 'M/S Azim Hardware Store', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(158, 'Nadia Electronics', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(159, 'Jamuna Rexin House', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(160, 'Shovon Machinery', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(161, 'M/S Moktar Traders', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(162, 'Islam Pipe House', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(163, 'S. Ali Machinery Trading', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(164, 'M/S Shanta Refrigeration', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(165, 'Allah Maliksha Traders', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(166, 'M/S Amzad & Brothers', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(167, 'Emco Mill Store', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(168, 'J.C. Marine Enterprise', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(169, 'M/S Monir Tarpaulin Traders', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(170, 'BBS Printers', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(171, 'Friends Telecom, Stationary, Photocopy & Gift Corner', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(172, 'M/S Bismillah Electric & Cables', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(173, 'M/S Protim & Brothers', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(174, 'Popular Trading Agency', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(175, 'M.R. Telecom', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(176, 'Ruma Electronics', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(177, 'Chattola Traders', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(178, 'Active Water Technology', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(179, 'Khawja Machinery', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(180, 'M/S Younos & Sons', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(181, 'Anas Gents Collection', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(182, 'Jubilee Trading Company', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `supplier_mobile`
--

CREATE TABLE `supplier_mobile` (
  `id` int(255) NOT NULL,
  `supplier_id` varchar(255) DEFAULT NULL,
  `mobile_no` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `supplier_payment`
--

CREATE TABLE `supplier_payment` (
  `id` int(255) NOT NULL,
  `supplier_id` varchar(255) DEFAULT NULL,
  `payment_date` varchar(255) DEFAULT NULL,
  `bill_no` varchar(255) DEFAULT NULL,
  `total_amount` varchar(255) DEFAULT NULL,
  `total_discount` varchar(255) DEFAULT NULL,
  `other_charge` varchar(255) DEFAULT NULL,
  `grand_total` varchar(255) DEFAULT NULL,
  `paid_amount` varchar(255) DEFAULT NULL,
  `due_amount` varchar(255) DEFAULT NULL,
  `pay_type` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `supplier_phone`
--

CREATE TABLE `supplier_phone` (
  `id` int(255) NOT NULL,
  `supplier_id` varchar(255) DEFAULT NULL,
  `phone_no` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `supplier_product`
--

CREATE TABLE `supplier_product` (
  `supplier_pr_id` int(11) NOT NULL,
  `product_id` varchar(30) CHARACTER SET utf8 NOT NULL,
  `product_id_two` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `products_model` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `supplier_id` bigint(20) NOT NULL,
  `currency` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `supplier_price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `supplier_product`
--

INSERT INTO `supplier_product` (`supplier_pr_id`, `product_id`, `product_id_two`, `products_model`, `supplier_id`, `currency`, `supplier_price`) VALUES
(1, '5485952669', NULL, NULL, 1, NULL, 210.00),
(2, '9361578161', NULL, NULL, 2, NULL, 2500.00),
(3, '1215826772', NULL, NULL, 3, NULL, 550.00),
(4, '6598713859', NULL, NULL, 4, NULL, 1800.00),
(5, '3267678234', NULL, NULL, 4, NULL, 1800.00),
(6, '6818796896', NULL, NULL, 5, NULL, 70.00),
(7, '2622353141', NULL, NULL, 1, NULL, 290.00),
(8, '2339253121', NULL, NULL, 6, NULL, 1600.00),
(9, '5613326532', NULL, NULL, 6, NULL, 400.00),
(10, '1898882868', NULL, NULL, 6, NULL, 1450.00),
(11, '3712612953', NULL, NULL, 5, NULL, 25.00),
(12, '9274588466', NULL, NULL, 7, NULL, 30.00),
(13, '4837765786', NULL, NULL, 8, NULL, 35.00),
(14, '3516481466', NULL, NULL, 5, NULL, 25.00),
(15, '3863397719', NULL, NULL, 9, NULL, 25.00),
(16, '2713813668', NULL, NULL, 7, NULL, 30.00),
(17, '8851454712', NULL, NULL, 1, NULL, 45.00),
(18, '5258159611', NULL, NULL, 10, NULL, 60.00),
(19, '9879829362', NULL, NULL, 11, NULL, 90.00),
(20, '9682973388', NULL, NULL, 12, NULL, 450.00),
(21, '6914972721', NULL, NULL, 12, NULL, 2000.00),
(22, '8428347257', NULL, NULL, 12, NULL, 1500.00),
(23, '4639716784', NULL, NULL, 12, NULL, 3500.00),
(24, '7467141616', NULL, NULL, 12, NULL, 40.00),
(25, '8259348874', NULL, NULL, 12, NULL, 700.00),
(26, '4216181281', NULL, NULL, 12, NULL, 1000.00),
(27, '4391676622', NULL, NULL, 13, NULL, 11000.00),
(28, '8432298588', NULL, NULL, 1, NULL, 270.00),
(29, '8643711287', NULL, NULL, 14, NULL, 550.00),
(30, '7576297923', NULL, NULL, 14, NULL, 550.00),
(31, '7976973772', NULL, NULL, 14, NULL, 280.00),
(32, '4443222983', NULL, NULL, 14, NULL, 450.00),
(33, '1672261329', NULL, NULL, 14, NULL, 350.00),
(34, '2761551179', NULL, NULL, 14, NULL, 180.00),
(35, '9344481533', NULL, NULL, 14, NULL, 250.00),
(36, '2948792854', NULL, NULL, 15, NULL, 60.00),
(37, '6333273465', NULL, NULL, 16, NULL, 1649.00),
(38, '1874631782', NULL, NULL, 15, NULL, 40.00),
(39, '7976983855', NULL, NULL, 17, NULL, 6040.00),
(40, '7429764897', NULL, NULL, 1, NULL, 200.00),
(41, '8459269871', NULL, NULL, 18, NULL, 5000.00),
(42, '3599444226', NULL, NULL, 19, NULL, 6000.00),
(43, '8447476213', NULL, NULL, 20, NULL, 6000.00),
(44, '7387186939', NULL, NULL, 21, NULL, 22.00),
(45, '1792253781', NULL, NULL, 14, NULL, 30.00),
(46, '7696383839', NULL, NULL, 1, NULL, 190.00),
(47, '8299351941', NULL, NULL, 15, NULL, 2.70),
(48, '6297596327', NULL, NULL, 22, NULL, 2.80),
(49, '7222431361', NULL, NULL, 15, NULL, 3.20),
(50, '8241717311', NULL, NULL, 23, NULL, 35.00),
(51, '3482331338', NULL, NULL, 23, NULL, 45.00),
(52, '9659376826', NULL, NULL, 23, NULL, 55.00),
(53, '3975566412', NULL, NULL, 23, NULL, 60.00),
(54, '6764933223', NULL, NULL, 14, NULL, 350.00),
(55, '8367872918', NULL, NULL, 22, NULL, 4.20),
(56, '6658386928', NULL, NULL, 1, NULL, 690.00),
(57, '2665262363', NULL, NULL, 1, NULL, 890.00),
(58, '9656274393', NULL, NULL, 1, NULL, 160.00),
(59, '2423867392', NULL, NULL, 1, NULL, 550.00),
(60, '9464783364', NULL, NULL, 1, NULL, 880.00),
(61, '9814446119', NULL, NULL, 1, NULL, 120.00),
(62, '7275377631', NULL, NULL, 15, NULL, 45.00),
(63, '8845176822', NULL, NULL, 24, NULL, 50.00),
(64, '3546576131', NULL, NULL, 1, NULL, 150.00),
(65, '1388755465', NULL, NULL, 22, NULL, 1.40),
(66, '3698517538', NULL, NULL, 15, NULL, 1.50),
(67, '5968911663', NULL, NULL, 5, NULL, 300.00),
(68, '8469774941', NULL, NULL, 5, NULL, 900.00),
(69, '6997669928', NULL, NULL, 25, NULL, 85.00),
(70, '6975763365', NULL, NULL, 14, NULL, 300.00),
(71, '7236488129', NULL, NULL, 14, NULL, 30.00),
(72, '8791582398', NULL, NULL, 14, NULL, 115.00),
(73, '7549745327', NULL, NULL, 26, NULL, 150.00),
(74, '3658892491', NULL, NULL, 27, NULL, 90.00),
(75, '9636253879', NULL, NULL, 28, NULL, 120.00),
(76, '3545174274', NULL, NULL, 5, NULL, 2000.00),
(77, '1245287134', NULL, NULL, 29, NULL, 4500.00),
(78, '8127745317', NULL, NULL, 29, NULL, 19500.00),
(79, '1695717983', NULL, NULL, 4, NULL, 22000.00),
(80, '8978645455', NULL, NULL, 4, NULL, 13000.00),
(81, '5586753784', NULL, NULL, 15, NULL, 1.33),
(82, '2317437962', NULL, NULL, 22, NULL, 1.67),
(83, '2852372436', NULL, NULL, 5, NULL, 1000.00),
(84, '7628573895', NULL, NULL, 4, NULL, 140.00),
(85, '6233264335', NULL, NULL, 4, NULL, 120.00),
(86, '2959353118', NULL, NULL, 22, NULL, 5.70),
(87, '6244253643', NULL, NULL, 16, NULL, 671.00),
(88, '3174924195', NULL, NULL, 4, NULL, 1000.00),
(89, '8363552957', NULL, NULL, 16, NULL, 332.00),
(90, '6936845716', NULL, NULL, 4, NULL, 480.00),
(91, '3791814962', NULL, NULL, 4, NULL, 480.00),
(92, '4291736394', NULL, NULL, 4, NULL, 350.00),
(93, '6172367944', NULL, NULL, 30, NULL, 600.00),
(94, '3596296168', NULL, NULL, 30, NULL, 180.00),
(95, '3689476548', NULL, NULL, 30, NULL, 250.00),
(96, '5848118244', NULL, NULL, 16, NULL, 751.00),
(97, '6229664914', NULL, NULL, 30, NULL, 550.00),
(98, '4988424682', NULL, NULL, 30, NULL, 250.00),
(99, '2234411473', NULL, NULL, 30, NULL, 350.00),
(100, '8386174915', NULL, NULL, 30, NULL, 450.00),
(101, '9137986616', NULL, NULL, 30, NULL, 450.00),
(102, '8367661821', NULL, NULL, 30, NULL, 600.00),
(103, '1249454971', NULL, NULL, 30, NULL, 2100.00),
(104, '3681999897', NULL, NULL, 16, NULL, 2657.00),
(105, '6847733657', NULL, NULL, 30, NULL, 1800.00),
(106, '8916157376', NULL, NULL, 14, NULL, 240.00),
(107, '3395427748', NULL, NULL, 1, NULL, 4.00),
(108, '7251146751', NULL, NULL, 1, NULL, 85.00),
(109, '4898938949', NULL, NULL, 1, NULL, 70.00),
(110, '5625585851', NULL, NULL, 25, NULL, 400.00),
(111, '2328186296', NULL, NULL, 22, NULL, 60.00),
(112, '9573678424', NULL, NULL, 15, NULL, 60.00),
(113, '2779979277', NULL, NULL, 1, NULL, 13300.00),
(114, '9392288881', NULL, NULL, 31, NULL, 13500.00),
(115, '1184111687', NULL, NULL, 32, NULL, 13700.00),
(116, '7121982544', NULL, NULL, 31, NULL, 13500.00),
(117, '4553871231', NULL, NULL, 33, NULL, 30.00),
(118, '1846558132', NULL, NULL, 1, NULL, 35.00),
(119, '8665742546', NULL, NULL, 32, NULL, 16000.00),
(120, '6829921713', NULL, NULL, 14, NULL, 180.00),
(121, '3149931935', NULL, NULL, 34, NULL, 2500.00),
(122, '9441687647', NULL, NULL, 19, NULL, 5500.00),
(123, '7929836736', NULL, NULL, 34, NULL, 15000.00),
(124, '5566924718', NULL, NULL, 14, NULL, 380.00),
(125, '5833994461', NULL, NULL, 30, NULL, 550.00),
(126, '9396491253', NULL, NULL, 35, NULL, 500.00),
(127, '2227958933', NULL, NULL, 35, NULL, 850.00),
(128, '6999779931', NULL, NULL, 1, NULL, 650.00),
(129, '8364588317', NULL, NULL, 1, NULL, 180.00),
(130, '5616262895', NULL, NULL, 36, NULL, 280.00),
(131, '9351227179', NULL, NULL, 1, NULL, 310.00),
(132, '1832729446', NULL, NULL, 1, NULL, 180.00),
(133, '4421624417', NULL, NULL, 1, NULL, 260.00),
(134, '4872674352', NULL, NULL, 4, NULL, 250.00),
(135, '7929465227', NULL, NULL, 25, NULL, 150.00),
(136, '1673931733', NULL, NULL, 25, NULL, 200.00),
(137, '5429485445', NULL, NULL, 25, NULL, 300.00),
(138, '9156279626', NULL, NULL, 25, NULL, 400.00),
(139, '3878223881', NULL, NULL, 4, NULL, 160.98),
(140, '4848853457', NULL, NULL, 4, NULL, 34.00),
(141, '5484713575', NULL, NULL, 4, NULL, 45.00),
(142, '3489476523', NULL, NULL, 1, NULL, 300.00),
(143, '7821726198', NULL, NULL, 1, NULL, 120.00),
(144, '2266956623', NULL, NULL, 37, NULL, 2500.00),
(145, '2262479938', NULL, NULL, 10, NULL, 15.00),
(146, '4511645653', NULL, NULL, 38, NULL, 940.00),
(147, '2267884342', NULL, NULL, 39, NULL, 450.00),
(148, '5216844543', NULL, NULL, 1, NULL, 780.00),
(149, '5312148958', NULL, NULL, 1, NULL, 345.00),
(150, '2546832836', NULL, NULL, 1, NULL, 90.00),
(151, '5977861718', NULL, NULL, 1, NULL, 3200.00),
(152, '1279117841', NULL, NULL, 38, NULL, 940.00),
(153, '7652996238', NULL, NULL, 38, NULL, 1020.00),
(154, '5463224754', NULL, NULL, 40, NULL, 36000.00),
(155, '9593544219', NULL, NULL, 40, NULL, 19000.00),
(156, '3838313168', NULL, NULL, 40, NULL, 44000.00),
(157, '3692667138', NULL, NULL, 40, NULL, 36500.00),
(158, '6218218774', NULL, NULL, 40, NULL, 30000.00),
(159, '8682645155', NULL, NULL, 40, NULL, 45000.00),
(160, '5284517548', NULL, NULL, 40, NULL, 12000.00),
(161, '4765561944', NULL, NULL, 40, NULL, 36000.00),
(162, '4988296211', NULL, NULL, 16, NULL, 32501.00),
(163, '7483326434', NULL, NULL, 40, NULL, 35500.00),
(164, '5183365617', NULL, NULL, 40, NULL, 12000.00),
(165, '5297255865', NULL, NULL, 22, NULL, 40.00),
(166, '1323964194', NULL, NULL, 1, NULL, 650.00),
(167, '5849412868', NULL, NULL, 4, NULL, 1000.00),
(168, '9159617936', NULL, NULL, 4, NULL, 1000.00),
(169, '2175742456', NULL, NULL, 4, NULL, 1450.00),
(170, '5346658399', NULL, NULL, 41, NULL, 1080.00),
(171, '5649638159', NULL, NULL, 4, NULL, 1100.00),
(172, '6917385594', NULL, NULL, 4, NULL, 1100.00),
(173, '6578426213', NULL, NULL, 42, NULL, 1050.00),
(174, '7757475372', NULL, NULL, 4, NULL, 1100.00),
(175, '2985638634', NULL, NULL, 4, NULL, 1100.00),
(176, '8291397353', NULL, NULL, 4, NULL, 1050.00),
(177, '8268579622', NULL, NULL, 4, NULL, 1000.00),
(178, '3333722254', NULL, NULL, 42, NULL, 1050.00),
(179, '5477221889', NULL, NULL, 4, NULL, 1000.00),
(180, '7669794323', NULL, NULL, 4, NULL, 1000.00),
(181, '4321529391', NULL, NULL, 4, NULL, 1000.00),
(182, '7528653868', NULL, NULL, 16, NULL, 1196.00),
(183, '5768166759', NULL, NULL, 4, NULL, 1050.00),
(184, '2461284315', NULL, NULL, 4, NULL, 1000.00),
(185, '1132162285', NULL, NULL, 4, NULL, 1100.00),
(186, '7238458897', NULL, NULL, 4, NULL, 1050.00),
(187, '4547497542', NULL, NULL, 42, NULL, 1050.00),
(188, '3584639548', NULL, NULL, 4, NULL, 1100.00),
(189, '4144155118', NULL, NULL, 4, NULL, 1400.00),
(190, '8795629452', NULL, NULL, 4, NULL, 1000.00),
(191, '2368563751', NULL, NULL, 4, NULL, 1050.00),
(192, '7931621414', NULL, NULL, 4, NULL, 1050.00),
(193, '7693276422', NULL, NULL, 43, NULL, 1000.00),
(194, '3484751945', NULL, NULL, 4, NULL, 1000.00),
(195, '9958892635', NULL, NULL, 4, NULL, 1000.00),
(196, '8563623998', NULL, NULL, 4, NULL, 1000.00),
(197, '5672756869', NULL, NULL, 4, NULL, 1400.00),
(198, '5518866394', NULL, NULL, 4, NULL, 1000.00),
(199, '3193921842', NULL, NULL, 4, NULL, 1100.00),
(200, '8342662739', NULL, NULL, 4, NULL, 1100.00),
(201, '8771419933', NULL, NULL, 4, NULL, 1400.00),
(202, '2567113126', NULL, NULL, 43, NULL, 1200.00),
(203, '6489714147', NULL, NULL, 4, NULL, 1400.00),
(204, '7455725775', NULL, NULL, 4, NULL, 1000.00),
(205, '3116785418', NULL, NULL, 4, NULL, 1100.00),
(206, '1129125464', NULL, NULL, 4, NULL, 1000.00),
(207, '9298525728', NULL, NULL, 43, NULL, 1000.00),
(208, '3195476271', NULL, NULL, 4, NULL, 1400.00),
(209, '7357999221', NULL, NULL, 4, NULL, 1000.00),
(210, '1927415842', NULL, NULL, 4, NULL, 1000.00),
(211, '4635461846', NULL, NULL, 4, NULL, 1000.00),
(212, '7991251656', NULL, NULL, 43, NULL, 1000.00),
(213, '1445851948', NULL, NULL, 4, NULL, 1100.00),
(214, '6323849226', NULL, NULL, 14, NULL, 25.00),
(215, '9281213189', NULL, NULL, 44, NULL, 50.00),
(216, '4395182744', NULL, NULL, 14, NULL, 1300.00),
(217, '6596234544', NULL, NULL, 14, NULL, 850.00),
(218, '6281362517', NULL, NULL, 10, NULL, 2200.00),
(219, '4385129363', NULL, NULL, 14, NULL, 40.00),
(220, '4442445376', NULL, NULL, 12, NULL, 1000.00),
(221, '9275525546', NULL, NULL, 38, NULL, 35.00),
(222, '2795942287', NULL, NULL, 5, NULL, 30.00),
(223, '8428634176', NULL, NULL, 22, NULL, 45.00),
(224, '5294213513', NULL, NULL, 45, NULL, 53.00),
(225, '3671886195', NULL, NULL, 15, NULL, 55.00),
(226, '1945395352', NULL, NULL, 1, NULL, 40.00),
(227, '4459862762', NULL, NULL, 5, NULL, 5.00),
(228, '8812121161', NULL, NULL, 5, NULL, 48.00),
(229, '4962418811', NULL, NULL, 5, NULL, 70.00),
(230, '6153171179', NULL, NULL, 7, NULL, 35.00),
(231, '3834343435', NULL, NULL, 5, NULL, 40.00),
(232, '9545474432', NULL, NULL, 5, NULL, 80.00),
(233, '3368742373', NULL, NULL, 5, NULL, 90.00),
(234, '2687673645', NULL, NULL, 7, NULL, 90.00),
(235, '4923227212', NULL, NULL, 5, NULL, 100.00),
(236, '8474558611', NULL, NULL, 5, NULL, 150.00),
(237, '2494645456', NULL, NULL, 1, NULL, 80.00),
(238, '8595646262', NULL, NULL, 43, NULL, 130.00),
(239, '4725667184', NULL, NULL, 4, NULL, 150.00),
(240, '3355795116', NULL, NULL, 40, NULL, 40.00),
(241, '8899758439', NULL, NULL, 40, NULL, 50.00),
(242, '1173263698', NULL, NULL, 5, NULL, 80.00),
(243, '7735856196', NULL, NULL, 5, NULL, 140.00),
(244, '9271674328', NULL, NULL, 5, NULL, 50.00),
(245, '1553961476', NULL, NULL, 5, NULL, 250.00),
(246, '7552978579', NULL, NULL, 12, NULL, 2000.00),
(247, '6989314638', NULL, NULL, 1, NULL, 4.00),
(248, '5752442392', NULL, NULL, 46, NULL, 5000.00),
(249, '8946169582', NULL, NULL, 47, NULL, 800.00),
(250, '9899978992', NULL, NULL, 48, NULL, 2400.00),
(251, '3123159522', NULL, NULL, 5, NULL, 700.00),
(252, '7185477298', NULL, NULL, 49, NULL, 20.00),
(253, '2646341167', NULL, NULL, 15, NULL, 31.00),
(254, '8885465635', NULL, NULL, 1, NULL, 120.00),
(255, '2423922142', NULL, NULL, 5, NULL, 35.00),
(256, '5653797628', NULL, NULL, 4, NULL, 100.00),
(257, '9931717377', NULL, NULL, 1, NULL, 68.00),
(258, '1566488833', NULL, NULL, 1, NULL, 160.00),
(259, '2619188885', NULL, NULL, 22, NULL, 1.80),
(260, '9627619446', NULL, NULL, 15, NULL, 1.80),
(261, '8175747964', NULL, NULL, 42, NULL, 850.00),
(262, '8392388928', NULL, NULL, 4, NULL, 250.00),
(263, '4796549994', NULL, NULL, 1, NULL, 20.00),
(264, '5398489181', NULL, NULL, 47, NULL, 35.00),
(265, '9156421973', NULL, NULL, 38, NULL, 650.00),
(266, '3354753481', NULL, NULL, 50, NULL, 800.00),
(267, '8663889153', NULL, NULL, 5, NULL, 1300.00),
(268, '9781167256', NULL, NULL, 5, NULL, 600.00),
(269, '1513394947', NULL, NULL, 14, NULL, 350.00),
(270, '3266927812', NULL, NULL, 15, NULL, 45.00),
(271, '6732175422', NULL, NULL, 15, NULL, 45.00),
(272, '6758293319', NULL, NULL, 22, NULL, 48.00),
(273, '2189254257', NULL, NULL, 15, NULL, 13.20),
(274, '1249145994', NULL, NULL, 22, NULL, 14.00),
(275, '7131354815', NULL, NULL, 51, NULL, 75.00),
(276, '5768898982', NULL, NULL, 14, NULL, 180.00),
(277, '5442211176', NULL, NULL, 5, NULL, 6000.00),
(278, '6982633829', NULL, NULL, 52, NULL, 4500.00),
(279, '2668175819', NULL, NULL, 5, NULL, 300.00),
(280, '7493248522', NULL, NULL, 5, NULL, 300.00),
(281, '3734662977', NULL, NULL, 5, NULL, 900.00),
(282, '6575354469', NULL, NULL, 5, NULL, 250.00),
(283, '3471656636', NULL, NULL, 5, NULL, 250.00),
(284, '9941148849', NULL, NULL, 12, NULL, 500.00),
(285, '5445663969', NULL, NULL, 1, NULL, 100.00),
(286, '7922891146', NULL, NULL, 1, NULL, 480.00),
(287, '6734939532', NULL, NULL, 22, NULL, 1.50),
(288, '6525592555', NULL, NULL, 22, NULL, 3.60),
(289, '1683328727', NULL, NULL, 15, NULL, 3.60),
(290, '8443133967', NULL, NULL, 14, NULL, 50.00),
(291, '4378212965', NULL, NULL, 14, NULL, 80.00),
(292, '9772643899', NULL, NULL, 6, NULL, 400.00),
(293, '8457435339', NULL, NULL, 4, NULL, 600.00),
(294, '2795584636', NULL, NULL, 14, NULL, 140.00),
(295, '4537341438', NULL, NULL, 4, NULL, 100.00),
(296, '7323937743', NULL, NULL, 16, NULL, 220.87),
(297, '6776848654', NULL, NULL, 4, NULL, 102.00),
(298, '4134312771', NULL, NULL, 16, NULL, 272.00),
(299, '1934317358', NULL, NULL, 53, NULL, 131693.70),
(300, '5681249868', NULL, NULL, 16, NULL, 323.00),
(301, '8821751953', NULL, NULL, 14, NULL, 140.00),
(302, '9656381667', NULL, NULL, 14, NULL, 160.00),
(303, '4811963841', NULL, NULL, 14, NULL, 170.00),
(304, '1691988865', NULL, NULL, 14, NULL, 180.00),
(305, '1879251569', NULL, NULL, 14, NULL, 180.00),
(306, '9756773428', NULL, NULL, 14, NULL, 100.00),
(307, '6317824544', NULL, NULL, 4, NULL, 370.00),
(308, '6117519317', NULL, NULL, 54, NULL, 2000.00),
(309, '7492863289', NULL, NULL, 14, NULL, 1600.00),
(310, '7247687177', NULL, NULL, 20, NULL, 1000.00),
(311, '7376663171', NULL, NULL, 40, NULL, 1000.00),
(312, '5278432438', NULL, NULL, 18, NULL, 1100.00),
(313, '9222874896', NULL, NULL, 19, NULL, 1450.00),
(314, '5779849368', NULL, NULL, 40, NULL, 700.00),
(315, '2397222248', NULL, NULL, 40, NULL, 1600.00),
(316, '8752454189', NULL, NULL, 55, NULL, 7000.00),
(317, '8311128412', NULL, NULL, 16, NULL, 20434.00),
(318, '1257178475', NULL, NULL, 14, NULL, 210.00),
(319, '1913451594', NULL, NULL, 5, NULL, 350.00),
(320, '1762226548', NULL, NULL, 12, NULL, 130.00),
(321, '4214679253', NULL, NULL, 12, NULL, 450.00),
(322, '8174948271', NULL, NULL, 1, NULL, 220.00),
(323, '4962184622', NULL, NULL, 19, NULL, 60.00),
(324, '8234474254', NULL, NULL, 14, NULL, 40.00),
(325, '4465674528', NULL, NULL, 14, NULL, 110.00),
(326, '9892663136', NULL, NULL, 40, NULL, 170.00),
(327, '7735363599', NULL, NULL, 40, NULL, 400.00),
(328, '2196673856', NULL, NULL, 14, NULL, 1900.00),
(329, '1349628531', NULL, NULL, 14, NULL, 32.00),
(330, '2228541268', NULL, NULL, 40, NULL, 450.00),
(331, '7698753517', NULL, NULL, 14, NULL, 1450.00),
(332, '8797797183', NULL, NULL, 1, NULL, 45.00),
(333, '5596179621', NULL, NULL, 4, NULL, 250.00),
(334, '8529761514', NULL, NULL, 15, NULL, 60.00),
(335, '9257877179', NULL, NULL, 22, NULL, 80.00),
(336, '3471818585', NULL, NULL, 1, NULL, 120.00),
(337, '3451932652', NULL, NULL, 4, NULL, 180.00),
(338, '3782572413', NULL, NULL, 43, NULL, 180.00),
(339, '9984833797', NULL, NULL, 14, NULL, 180.00),
(340, '6584471455', NULL, NULL, 1, NULL, 40.00),
(341, '8264749714', NULL, NULL, 10, NULL, 650.00),
(342, '7837351635', NULL, NULL, 56, NULL, 50.00),
(343, '2877492168', NULL, NULL, 23, NULL, 340.00),
(344, '8362667848', NULL, NULL, 57, NULL, 25000.00),
(345, '6329777119', NULL, NULL, 58, NULL, 1.88),
(346, '9864788724', NULL, NULL, 23, NULL, 250.00),
(347, '2775933149', NULL, NULL, 59, NULL, 110.00),
(348, '2613458227', NULL, NULL, 38, NULL, 110.00),
(349, '4545671757', NULL, NULL, 1, NULL, 45.00),
(350, '2279248428', NULL, NULL, 60, NULL, 42.00),
(351, '8765532465', NULL, NULL, 14, NULL, 190.00),
(352, '2281434375', NULL, NULL, 14, NULL, 15.00),
(353, '9112624182', NULL, NULL, 1, NULL, 16.00),
(354, '8236377427', NULL, NULL, 61, NULL, 18.00),
(355, '1185432552', NULL, NULL, 14, NULL, 120.00),
(356, '6821699736', NULL, NULL, 14, NULL, 160.00),
(357, '8675694259', NULL, NULL, 14, NULL, 120.00),
(358, '4847623187', NULL, NULL, 62, NULL, 130.00),
(359, '5874849344', NULL, NULL, 19, NULL, 1550.00),
(360, '8291688219', NULL, NULL, 34, NULL, 20000.00),
(361, '5138129333', NULL, NULL, 63, NULL, 17500.00),
(362, '5753172724', NULL, NULL, 10, NULL, 20.00),
(363, '3576234544', NULL, NULL, 48, NULL, 1.50),
(364, '3367615339', NULL, NULL, 16, NULL, 6046.00),
(365, '3923158915', NULL, NULL, 16, NULL, 4269.00),
(366, '7534989548', NULL, NULL, 4, NULL, 420.00),
(367, '4495323829', NULL, NULL, 64, NULL, 285.00),
(368, '2191366865', NULL, NULL, 4, NULL, 450.00),
(369, '7555541662', NULL, NULL, 4, NULL, 450.00),
(370, '3283479682', NULL, NULL, 4, NULL, 420.00),
(371, '7411654458', NULL, NULL, 4, NULL, 450.00),
(372, '1862583278', NULL, NULL, 4, NULL, 480.00),
(373, '5525427626', NULL, NULL, 4, NULL, 1000.00),
(374, '2248687422', NULL, NULL, 4, NULL, 1100.00),
(375, '7577264659', NULL, NULL, 4, NULL, 420.00),
(376, '1912885974', NULL, NULL, 4, NULL, 450.00),
(377, '6117593995', NULL, NULL, 5, NULL, 16.00),
(378, '2978499522', NULL, NULL, 7, NULL, 30.00),
(379, '9642491257', NULL, NULL, 18, NULL, 400.00),
(380, '2561168251', NULL, NULL, 13, NULL, 11000.00),
(381, '9936893969', NULL, NULL, 14, NULL, 250.00),
(382, '2264426317', NULL, NULL, 22, NULL, 70.00),
(383, '8662299272', NULL, NULL, 15, NULL, 3.50),
(384, '8185786656', NULL, NULL, 1, NULL, 52.00),
(385, '1611576537', NULL, NULL, 47, NULL, 0.70),
(386, '7414999594', NULL, NULL, 15, NULL, 60.00),
(387, '1275757125', NULL, NULL, 22, NULL, 65.00),
(388, '1618143391', NULL, NULL, 8, NULL, 900.00),
(389, '9976863821', NULL, NULL, 65, NULL, 120.00),
(390, '1732959714', NULL, NULL, 47, NULL, 130.00),
(391, '2277212728', NULL, NULL, 1, NULL, 220.00),
(392, '5556956339', NULL, NULL, 15, NULL, 0.80),
(393, '1141553963', NULL, NULL, 4, NULL, 2.70),
(394, '9921823667', NULL, NULL, 15, NULL, 2.70),
(395, '3352141127', NULL, NULL, 1, NULL, 2.70),
(396, '8473735875', NULL, NULL, 66, NULL, 1.50),
(397, '1877898656', NULL, NULL, 15, NULL, 1.50),
(398, '8211853981', NULL, NULL, 15, NULL, 2.70),
(399, '7727915287', NULL, NULL, 22, NULL, 3.00),
(400, '3225899189', NULL, NULL, 22, NULL, 1.00),
(401, '4786383935', NULL, NULL, 14, NULL, 450.00),
(402, '1956917465', NULL, NULL, 52, NULL, 450.00),
(403, '1658284545', NULL, NULL, 5, NULL, 2800.00),
(404, '5864632298', NULL, NULL, 67, NULL, 2500.00),
(405, '7675711485', NULL, NULL, 10, NULL, 2000.00),
(406, '5595424248', NULL, NULL, 18, NULL, 6000.00),
(407, '9341941248', NULL, NULL, 68, NULL, 7500.00),
(408, '6591269777', NULL, NULL, 69, NULL, 200.00),
(409, '1393189199', NULL, NULL, 1, NULL, 12.00),
(410, '8481816961', NULL, NULL, 8, NULL, 14.00),
(411, '8364653977', NULL, NULL, 44, NULL, 3500.00),
(412, '9623418719', NULL, NULL, 6, NULL, 2000.00),
(413, '8666216794', NULL, NULL, 1, NULL, 180.00),
(414, '2349524388', NULL, NULL, 1, NULL, 980.00),
(415, '2969684513', NULL, NULL, 15, NULL, 2.00),
(416, '5877995479', NULL, NULL, 22, NULL, 2.00),
(417, '4429248216', NULL, NULL, 70, NULL, 300.00),
(418, '9725223492', NULL, NULL, 4, NULL, 35.00),
(419, '5188313956', NULL, NULL, 6, NULL, 40.00),
(420, '6791587499', NULL, NULL, 4, NULL, 150.00),
(421, '4559113783', NULL, NULL, 4, NULL, 170.00),
(422, '5259876621', NULL, NULL, 4, NULL, 180.00),
(423, '7723862448', NULL, NULL, 43, NULL, 200.00),
(424, '5931117753', NULL, NULL, 71, NULL, 250.00),
(425, '6695264849', NULL, NULL, 4, NULL, 270.00),
(426, '7721266944', NULL, NULL, 4, NULL, 350.00),
(427, '1725196372', NULL, NULL, 4, NULL, 380.00),
(428, '3685374597', NULL, NULL, 5, NULL, 16.00),
(429, '5128944663', NULL, NULL, 22, NULL, 0.75),
(430, '8996796298', NULL, NULL, 1, NULL, 20.00),
(431, '8563198694', NULL, NULL, 7, NULL, 80.00),
(432, '7926994498', NULL, NULL, 5, NULL, 48.00),
(433, '3146196391', NULL, NULL, 8, NULL, 17.00),
(434, '8223813969', NULL, NULL, 7, NULL, 18.00),
(435, '1978152714', NULL, NULL, 11, NULL, 25.00),
(436, '6857274825', NULL, NULL, 5, NULL, 50.00),
(437, '7355251234', NULL, NULL, 1, NULL, 880.00),
(438, '4926149219', NULL, NULL, 72, NULL, 950.00),
(439, '9734131469', NULL, NULL, 1, NULL, 15.00),
(440, '5559212836', NULL, NULL, 73, NULL, 15.00),
(441, '1827149884', NULL, NULL, 5, NULL, 16.00),
(442, '4271498968', NULL, NULL, 4, NULL, 17.00),
(443, '6446924278', NULL, NULL, 7, NULL, 18.00),
(444, '8653562751', NULL, NULL, 8, NULL, 20.00),
(445, '6489279937', NULL, NULL, 5, NULL, 25.00),
(446, '5894328864', NULL, NULL, 5, NULL, 400.00),
(447, '6963727431', NULL, NULL, 10, NULL, 20.00),
(448, '2722138138', NULL, NULL, 10, NULL, 25.00),
(449, '3236966155', NULL, NULL, 14, NULL, 16.00),
(450, '9862191142', NULL, NULL, 10, NULL, 20.00),
(451, '3625459286', NULL, NULL, 10, NULL, 20.00),
(452, '2234469114', NULL, NULL, 14, NULL, 20.00),
(453, '6431111336', NULL, NULL, 14, NULL, 23.00),
(454, '3141761843', NULL, NULL, 5, NULL, 220.00),
(455, '3686627758', NULL, NULL, 5, NULL, 85.00),
(456, '3934518461', NULL, NULL, 5, NULL, 200.00),
(457, '3164469995', NULL, NULL, 5, NULL, 210.00),
(458, '5996994123', NULL, NULL, 7, NULL, 160.00),
(459, '5999748677', NULL, NULL, 5, NULL, 200.00),
(460, '8284594963', NULL, NULL, 7, NULL, 185.00),
(461, '6567438525', NULL, NULL, 16, NULL, 12133.00),
(462, '1739116349', NULL, NULL, 18, NULL, 800.00),
(463, '8294621148', NULL, NULL, 19, NULL, 950.00),
(464, '3181759215', NULL, NULL, 15, NULL, 1.80),
(465, '8542544142', NULL, NULL, 22, NULL, 2.00),
(466, '8274873493', NULL, NULL, 15, NULL, 70.00),
(467, '5582843498', NULL, NULL, 1, NULL, 1.50),
(468, '6727214556', NULL, NULL, 38, NULL, 7800.00),
(469, '6689853252', NULL, NULL, 53, NULL, 5692.57),
(470, '2224169423', NULL, NULL, 1, NULL, 10.00),
(471, '5336661521', NULL, NULL, 15, NULL, 75.00),
(472, '6733785277', NULL, NULL, 22, NULL, 11.00),
(473, '3747247749', NULL, NULL, 15, NULL, 12.50),
(474, '8968728493', NULL, NULL, 25, NULL, 8000.00),
(475, '8536755757', NULL, NULL, 25, NULL, 7500.00),
(476, '1266597796', NULL, NULL, 74, NULL, 300.00),
(477, '3526324813', NULL, NULL, 19, NULL, 125000.00),
(478, '3646852964', NULL, NULL, 19, NULL, 65.00),
(479, '9735661216', NULL, NULL, 34, NULL, 2500.00),
(480, '1497538623', NULL, NULL, 25, NULL, 8000.00),
(481, '8579568156', NULL, NULL, 25, NULL, 6500.00),
(482, '3484564774', NULL, NULL, 40, NULL, 16000.00),
(483, '2779623464', NULL, NULL, 15, NULL, 32.00),
(484, '7933935375', NULL, NULL, 15, NULL, 1.80),
(485, '7231296843', NULL, NULL, 7, NULL, 750.00),
(486, '6413697145', NULL, NULL, 75, NULL, 750.00),
(487, '8356391741', NULL, NULL, 5, NULL, 1500.00),
(488, '4523271122', NULL, NULL, 15, NULL, 7.00),
(489, '2234857553', NULL, NULL, 22, NULL, 8.00),
(490, '9258457752', NULL, NULL, 22, NULL, 6.00),
(491, '7884128168', NULL, NULL, 15, NULL, 1.40),
(492, '6427124394', NULL, NULL, 22, NULL, 1.50),
(493, '2784533137', NULL, NULL, 15, NULL, 3.00),
(494, '4785985189', NULL, NULL, 15, NULL, 6.00),
(495, '7883184749', NULL, NULL, 6, NULL, 200.00),
(496, '4428641621', NULL, NULL, 25, NULL, 3000.00),
(497, '5314147389', NULL, NULL, 76, NULL, 400.00),
(498, '7636256444', NULL, NULL, 77, NULL, 11.00),
(499, '2976856261', NULL, NULL, 1, NULL, 11.50),
(500, '9786648429', NULL, NULL, 4, NULL, 550.00),
(501, '4766721352', NULL, NULL, 5, NULL, 1000.00),
(502, '1964234579', NULL, NULL, 14, NULL, 12.00),
(503, '6148363576', NULL, NULL, 1, NULL, 380.00),
(504, '5795245994', NULL, NULL, 16, NULL, 19.00),
(505, '9431223718', NULL, NULL, 1, NULL, 80.00),
(506, '3537295291', NULL, NULL, 15, NULL, 1.50),
(507, '1524482138', NULL, NULL, 45, NULL, 1.50),
(508, '5617812724', NULL, NULL, 22, NULL, 1.80),
(509, '9554673526', NULL, NULL, 78, NULL, 75.00),
(510, '5527912613', NULL, NULL, 16, NULL, 837.00),
(511, '8518687259', NULL, NULL, 53, NULL, 966.76),
(512, '7941552953', NULL, NULL, 16, NULL, 351.00),
(513, '8512931973', NULL, NULL, 4, NULL, 480.00),
(514, '7766768211', NULL, NULL, 5, NULL, 1000.00),
(515, '5271945969', NULL, NULL, 5, NULL, 3200.00),
(516, '3467693864', NULL, NULL, 15, NULL, 9.00),
(517, '4252278141', NULL, NULL, 22, NULL, 9.50),
(518, '4782757635', NULL, NULL, 34, NULL, 2500.00),
(519, '2314291867', NULL, NULL, 14, NULL, 30.00),
(520, '4565162427', NULL, NULL, 79, NULL, 350.00),
(521, '7358959285', NULL, NULL, 21, NULL, 22.00),
(522, '7666272179', NULL, NULL, 80, NULL, 25.00),
(523, '4498331557', NULL, NULL, 6, NULL, 400.00),
(524, '9887821157', NULL, NULL, 6, NULL, 1800.00),
(525, '6224969524', NULL, NULL, 1, NULL, 20.00),
(526, '9671984753', NULL, NULL, 81, NULL, 10000.00),
(527, '7114853373', NULL, NULL, 40, NULL, 10000.00),
(528, '1832854557', NULL, NULL, 82, NULL, 130000.00),
(529, '1137181648', NULL, NULL, 83, NULL, 6500.00),
(530, '2625293479', NULL, NULL, 20, NULL, 18000.00),
(531, '5953483327', NULL, NULL, 84, NULL, 18000.00),
(532, '6646985755', NULL, NULL, 85, NULL, 4200.00),
(533, '7756165925', NULL, NULL, 19, NULL, 35.00),
(534, '4127471696', NULL, NULL, 63, NULL, 80.00),
(535, '8689166926', NULL, NULL, 18, NULL, 1500.00),
(536, '3923675787', NULL, NULL, 19, NULL, 1700.00),
(537, '1432317317', NULL, NULL, 20, NULL, 700.00),
(538, '9732449782', NULL, NULL, 86, NULL, 500.00),
(539, '6818258115', NULL, NULL, 19, NULL, 600.00),
(540, '4713317566', NULL, NULL, 1, NULL, 600.00),
(541, '4877491853', NULL, NULL, 18, NULL, 650.00),
(542, '2389424959', NULL, NULL, 19, NULL, 1200.00),
(543, '1783118164', NULL, NULL, 16, NULL, 1463.00),
(544, '9334381834', NULL, NULL, 19, NULL, 450.00),
(545, '6151811183', NULL, NULL, 34, NULL, 3000.00),
(546, '7183399253', NULL, NULL, 34, NULL, 18000.00),
(547, '6895325892', NULL, NULL, 2, NULL, 100.00),
(548, '7123231462', NULL, NULL, 19, NULL, 1000.00),
(549, '8575613529', NULL, NULL, 18, NULL, 1000.00),
(550, '9649179193', NULL, NULL, 16, NULL, 1298.00),
(551, '7363157322', NULL, NULL, 18, NULL, 650.00),
(552, '7414927193', NULL, NULL, 19, NULL, 750.00),
(553, '5685199245', NULL, NULL, 20, NULL, 800.00),
(554, '9221364523', NULL, NULL, 18, NULL, 850.00),
(555, '2546665571', NULL, NULL, 87, NULL, 15000.00),
(556, '9394544275', NULL, NULL, 19, NULL, 1150.00),
(557, '4486535266', NULL, NULL, 5, NULL, 20.00),
(558, '6639252691', NULL, NULL, 88, NULL, 50.00),
(559, '3267828957', NULL, NULL, 89, NULL, 1700.00),
(560, '5245191155', NULL, NULL, 90, NULL, 1850.00),
(561, '6675577195', NULL, NULL, 14, NULL, 800.00),
(562, '6215565247', NULL, NULL, 90, NULL, 350.00),
(563, '7415694995', NULL, NULL, 14, NULL, 450.00),
(564, '5311378751', NULL, NULL, 91, NULL, 600.00),
(565, '7916424563', NULL, NULL, 34, NULL, 2000.00),
(566, '2294741844', NULL, NULL, 25, NULL, 350.00),
(567, '5111981339', NULL, NULL, 25, NULL, 1700.00),
(568, '6589857699', NULL, NULL, 25, NULL, 4500.00),
(569, '5735979898', NULL, NULL, 15, NULL, 12.00),
(570, '9893672359', NULL, NULL, 14, NULL, 650.00),
(571, '4733418689', NULL, NULL, 52, NULL, 650.00),
(572, '1644821131', NULL, NULL, 92, NULL, 262.50),
(573, '4942236522', NULL, NULL, 93, NULL, 400.00),
(574, '5451379163', NULL, NULL, 93, NULL, 700.00),
(575, '5878242328', NULL, NULL, 1, NULL, 160.00),
(576, '7137723486', NULL, NULL, 25, NULL, 220.00),
(577, '3867993424', NULL, NULL, 25, NULL, 420.00),
(578, '9899259821', NULL, NULL, 25, NULL, 120.00),
(579, '7492432571', NULL, NULL, 25, NULL, 85.00),
(580, '3167345122', NULL, NULL, 25, NULL, 600.00),
(581, '5334569512', NULL, NULL, 94, NULL, 130.00),
(582, '7416983627', NULL, NULL, 14, NULL, 130.00),
(583, '3888348869', NULL, NULL, 14, NULL, 70.00),
(584, '5369424241', NULL, NULL, 1, NULL, 120.00),
(585, '3943714276', NULL, NULL, 1, NULL, 100.00),
(586, '9813826764', NULL, NULL, 14, NULL, 320.00),
(587, '9976123754', NULL, NULL, 38, NULL, 940.00),
(588, '4464276456', NULL, NULL, 38, NULL, 1020.00),
(589, '8917673124', NULL, NULL, 38, NULL, 1475.00),
(590, '9239776523', NULL, NULL, 95, NULL, 70.00),
(591, '1415766159', NULL, NULL, 96, NULL, 230.00),
(592, '8733566682', NULL, NULL, 4, NULL, 1600.00),
(593, '5718826849', NULL, NULL, 95, NULL, 1795.00),
(594, '3447777794', NULL, NULL, 97, NULL, 550.00),
(595, '4155113934', NULL, NULL, 38, NULL, 1555.00),
(596, '7479627126', NULL, NULL, 43, NULL, 280.00),
(597, '2421438958', NULL, NULL, 4, NULL, 480.00),
(598, '3455766412', NULL, NULL, 4, NULL, 310.00),
(599, '6796948933', NULL, NULL, 4, NULL, 290.00),
(600, '2855778439', NULL, NULL, 14, NULL, 30.00),
(601, '2522677126', NULL, NULL, 14, NULL, 1950.00),
(602, '7893241263', NULL, NULL, 34, NULL, 400.00),
(603, '1127718529', NULL, NULL, 14, NULL, 4400.00),
(604, '1275827439', NULL, NULL, 14, NULL, 10.00),
(605, '8735491125', NULL, NULL, 1, NULL, 65.00),
(606, '4949948694', NULL, NULL, 59, NULL, 100.00),
(607, '5494276563', NULL, NULL, 14, NULL, 1400.00),
(608, '3716842433', NULL, NULL, 14, NULL, 100.00),
(609, '9144365198', NULL, NULL, 14, NULL, 160.00),
(610, '8273778873', NULL, NULL, 14, NULL, 100.00),
(611, '2237838178', NULL, NULL, 14, NULL, 250.00),
(612, '7145537733', NULL, NULL, 14, NULL, 160.00),
(613, '1944336847', NULL, NULL, 14, NULL, 120.00),
(614, '1465297789', NULL, NULL, 14, NULL, 260.00),
(615, '4888743775', NULL, NULL, 14, NULL, 220.00),
(616, '9343339128', NULL, NULL, 14, NULL, 200.00),
(617, '3773646562', NULL, NULL, 14, NULL, 200.00),
(618, '5832863114', NULL, NULL, 38, NULL, 30.00),
(619, '7814761988', NULL, NULL, 38, NULL, 70.00),
(620, '6896842184', NULL, NULL, 14, NULL, 2400.00),
(621, '4668246941', NULL, NULL, 6, NULL, 340.00),
(622, '4976413226', NULL, NULL, 98, NULL, 300.00),
(623, '9754282544', NULL, NULL, 1, NULL, 95.00),
(624, '2415583275', NULL, NULL, 63, NULL, 1500.00),
(625, '8374675847', NULL, NULL, 89, NULL, 1350.00),
(626, '5137645331', NULL, NULL, 19, NULL, 1500.00),
(627, '4685213757', NULL, NULL, 89, NULL, 1550.00),
(628, '6481526714', NULL, NULL, 56, NULL, 3.00),
(629, '4346117643', NULL, NULL, 56, NULL, 700.00),
(630, '4746137511', NULL, NULL, 23, NULL, 70.00),
(631, '6384483477', NULL, NULL, 22, NULL, 110.00),
(632, '1278299757', NULL, NULL, 99, NULL, 500.00),
(633, '3662497162', NULL, NULL, 100, NULL, 1000.00),
(634, '1634596419', NULL, NULL, 40, NULL, 13000.00),
(635, '2587287334', NULL, NULL, 40, NULL, 1500.00),
(636, '1848258422', NULL, NULL, 18, NULL, 650.00),
(637, '9637241134', NULL, NULL, 15, NULL, 0.50),
(638, '3131538868', NULL, NULL, 14, NULL, 260.00),
(639, '3877665288', NULL, NULL, 14, NULL, 150.00),
(640, '6231494665', NULL, NULL, 14, NULL, 1950.00),
(641, '6875551165', NULL, NULL, 101, NULL, 350.00),
(642, '9494157162', NULL, NULL, 5, NULL, 500.00),
(643, '9919535513', NULL, NULL, 102, NULL, 2982.00),
(644, '4985297673', NULL, NULL, 102, NULL, 2908.00),
(645, '3198229755', NULL, NULL, 103, NULL, 300.00),
(646, '3873497143', NULL, NULL, 103, NULL, 30.00),
(647, '1528753689', NULL, NULL, 15, NULL, 170.00),
(648, '4627861943', NULL, NULL, 1, NULL, 450.00),
(649, '1589954253', NULL, NULL, 104, NULL, 600.00),
(650, '9633326814', NULL, NULL, 49, NULL, 2050.00),
(651, '8637841437', NULL, NULL, 105, NULL, 2150.00),
(652, '4419443475', NULL, NULL, 106, NULL, 1200.00),
(653, '7596578815', NULL, NULL, 104, NULL, 1700.00),
(654, '1494279977', NULL, NULL, 105, NULL, 2150.00),
(655, '5686517543', NULL, NULL, 25, NULL, 450.00),
(656, '2234258799', NULL, NULL, 18, NULL, 1500.00),
(657, '9152642857', NULL, NULL, 19, NULL, 2500.00),
(658, '9692374625', NULL, NULL, 14, NULL, 350.00),
(659, '1121383965', NULL, NULL, 99, NULL, 450.00),
(660, '1524592962', NULL, NULL, 100, NULL, 800.00),
(661, '7243584653', NULL, NULL, 100, NULL, 680.00),
(662, '1564577353', NULL, NULL, 14, NULL, 1350.00),
(663, '5548986927', NULL, NULL, 99, NULL, 650.00),
(664, '5825313255', NULL, NULL, 107, NULL, 500.00),
(665, '6888399424', NULL, NULL, 107, NULL, 500.00),
(666, '5866735785', NULL, NULL, 99, NULL, 400.00),
(667, '8585329177', NULL, NULL, 99, NULL, 700.00),
(668, '5272227226', NULL, NULL, 99, NULL, 800.00),
(669, '2338671224', NULL, NULL, 107, NULL, 800.00),
(670, '3522393316', NULL, NULL, 25, NULL, 110.00),
(671, '4275366232', NULL, NULL, 108, NULL, 70000.00),
(672, '7315456796', NULL, NULL, 16, NULL, 1648.00),
(673, '8245954439', NULL, NULL, 18, NULL, 1800.00),
(674, '7285334624', NULL, NULL, 25, NULL, 90.00),
(675, '4528367589', NULL, NULL, 25, NULL, 280.00),
(676, '9162153825', NULL, NULL, 22, NULL, 30.00),
(677, '7437899388', NULL, NULL, 15, NULL, 30.00),
(678, '4142397918', NULL, NULL, 5, NULL, 150.00),
(679, '4465617832', NULL, NULL, 109, NULL, 250.00),
(680, '7112458135', NULL, NULL, 22, NULL, 1.00),
(681, '3946228353', NULL, NULL, 15, NULL, 1.00),
(682, '2772692733', NULL, NULL, 110, NULL, 5500.00),
(683, '3488979575', NULL, NULL, 34, NULL, 8500.00),
(684, '1585478531', NULL, NULL, 19, NULL, 100.00),
(685, '8935286891', NULL, NULL, 63, NULL, 100.00),
(686, '3674249573', NULL, NULL, 34, NULL, 100.00),
(687, '4956636962', NULL, NULL, 49, NULL, 800.00),
(688, '9748892881', NULL, NULL, 74, NULL, 300.00),
(689, '2156338566', NULL, NULL, 14, NULL, 60.00),
(690, '6489397811', NULL, NULL, 14, NULL, 60.00),
(691, '5993428932', NULL, NULL, 14, NULL, 60.00),
(692, '3953519978', NULL, NULL, 14, NULL, 2340.00),
(693, '2311941376', NULL, NULL, 34, NULL, 2000.00),
(694, '3851615986', NULL, NULL, 34, NULL, 1800.00),
(695, '2671143295', NULL, NULL, 14, NULL, 180.00),
(696, '7575756541', NULL, NULL, 22, NULL, 90.00),
(697, '2482318584', NULL, NULL, 14, NULL, 300.00),
(698, '5866725828', NULL, NULL, 1, NULL, 100.00),
(699, '2985983741', NULL, NULL, 15, NULL, 9.00),
(700, '2628961121', NULL, NULL, 14, NULL, 260.00),
(701, '4746329668', NULL, NULL, 4, NULL, 30.00),
(702, '9365585427', NULL, NULL, 1, NULL, 40.00),
(703, '7391598117', NULL, NULL, 65, NULL, 97.20),
(704, '6479746228', NULL, NULL, 1, NULL, 60.00),
(705, '3274294923', NULL, NULL, 4, NULL, 120.00),
(706, '8135862541', NULL, NULL, 19, NULL, 16500.00),
(707, '6168652755', NULL, NULL, 111, NULL, 5500.00),
(708, '4692785895', NULL, NULL, 47, NULL, 130.00),
(709, '6225122878', NULL, NULL, 43, NULL, 450.00),
(710, '7815459339', NULL, NULL, 4, NULL, 800.00),
(711, '7636958416', NULL, NULL, 4, NULL, 1100.00),
(712, '3382898187', NULL, NULL, 1, NULL, 1280.00),
(713, '1712674472', NULL, NULL, 18, NULL, 14000.00),
(714, '4929876115', NULL, NULL, 47, NULL, 300.00),
(715, '6725785463', NULL, NULL, 5, NULL, 100.00),
(716, '9692565416', NULL, NULL, 48, NULL, 2.00),
(717, '5754522498', NULL, NULL, 112, NULL, 2.00),
(718, '7343612986', NULL, NULL, 5, NULL, 4000.00),
(719, '7564667133', NULL, NULL, 5, NULL, 190.00),
(720, '9317547257', NULL, NULL, 8, NULL, 250.00),
(721, '1578125783', NULL, NULL, 7, NULL, 200.00),
(722, '7542114347', NULL, NULL, 5, NULL, 210.00),
(723, '8389694842', NULL, NULL, 8, NULL, 300.00),
(724, '6889874877', NULL, NULL, 7, NULL, 200.00),
(725, '7181189481', NULL, NULL, 5, NULL, 230.00),
(726, '6336595673', NULL, NULL, 5, NULL, 350.00),
(727, '3386467236', NULL, NULL, 5, NULL, 480.00),
(728, '6562277175', NULL, NULL, 5, NULL, 170.00),
(729, '6266622855', NULL, NULL, 5, NULL, 50.00),
(730, '3597833222', NULL, NULL, 5, NULL, 120.00),
(731, '2332357914', NULL, NULL, 7, NULL, 150.00),
(732, '1942292637', NULL, NULL, 5, NULL, 250.00),
(733, '1546313136', NULL, NULL, 5, NULL, 160.00),
(734, '8322752781', NULL, NULL, 5, NULL, 170.00),
(735, '4533688943', NULL, NULL, 1, NULL, 170.00),
(736, '1726655277', NULL, NULL, 5, NULL, 170.00),
(737, '8919218946', NULL, NULL, 5, NULL, 2800.00),
(738, '1163348521', NULL, NULL, 6, NULL, 400.00),
(739, '8267938887', NULL, NULL, 6, NULL, 12000.00),
(740, '5366736167', NULL, NULL, 6, NULL, 10000.00),
(741, '1815518684', NULL, NULL, 1, NULL, 55.00),
(742, '9192935414', NULL, NULL, 1, NULL, 30.00),
(743, '4463562789', NULL, NULL, 38, NULL, 940.00),
(744, '1693772534', NULL, NULL, 34, NULL, 7500.00),
(745, '2382637632', NULL, NULL, 113, NULL, 70.00),
(746, '9234994793', NULL, NULL, 113, NULL, 35.00),
(747, '9533121224', NULL, NULL, 1, NULL, 140.00),
(748, '7793945594', NULL, NULL, 1, NULL, 220.00),
(749, '5916333846', NULL, NULL, 14, NULL, 600.00),
(750, '7438936534', NULL, NULL, 114, NULL, 1.80),
(751, '4116464313', NULL, NULL, 4, NULL, 70.00),
(752, '6417342419', NULL, NULL, 1, NULL, 75.00),
(753, '3375728198', NULL, NULL, 14, NULL, 1050.00),
(754, '1437418731', NULL, NULL, 5, NULL, 2000.00),
(755, '1989789512', NULL, NULL, 20, NULL, 750.00),
(756, '5541923828', NULL, NULL, 19, NULL, 1700.00),
(757, '9911336855', NULL, NULL, 18, NULL, 2200.00),
(758, '3133298417', NULL, NULL, 19, NULL, 2500.00),
(759, '7752425877', NULL, NULL, 19, NULL, 250.00),
(760, '8591357219', NULL, NULL, 18, NULL, 250.00),
(761, '2948612558', NULL, NULL, 18, NULL, 250.00),
(762, '2559753893', NULL, NULL, 74, NULL, 700.00),
(763, '5671174279', NULL, NULL, 20, NULL, 750.00),
(764, '1118648774', NULL, NULL, 115, NULL, 800.00),
(765, '7426681672', NULL, NULL, 86, NULL, 950.00),
(766, '5697118689', NULL, NULL, 19, NULL, 1000.00),
(767, '8611294547', NULL, NULL, 1, NULL, 1000.00),
(768, '9453676256', NULL, NULL, 18, NULL, 1000.00),
(769, '4715182921', NULL, NULL, 20, NULL, 800.00),
(770, '6536136285', NULL, NULL, 86, NULL, 950.00),
(771, '6548976241', NULL, NULL, 18, NULL, 1000.00),
(772, '3858154391', NULL, NULL, 19, NULL, 1100.00),
(773, '1938718119', NULL, NULL, 1, NULL, 1100.00),
(774, '5866387683', NULL, NULL, 20, NULL, 650.00),
(775, '6762975686', NULL, NULL, 20, NULL, 900.00),
(776, '9838442219', NULL, NULL, 18, NULL, 1050.00),
(777, '6394816781', NULL, NULL, 14, NULL, 150.00),
(778, '4259782779', NULL, NULL, 18, NULL, 350.00),
(779, '1149437911', NULL, NULL, 19, NULL, 12000.00),
(780, '3155868996', NULL, NULL, 109, NULL, 700.00),
(781, '8552642734', NULL, NULL, 16, NULL, 7351.00),
(782, '8615925125', NULL, NULL, 99, NULL, 550.00),
(783, '1776442251', NULL, NULL, 1, NULL, 35.00),
(784, '4124467628', NULL, NULL, 1, NULL, 35.00),
(785, '6778327255', NULL, NULL, 116, NULL, 2.00),
(786, '9389181368', NULL, NULL, 107, NULL, 500.00),
(787, '1959239749', NULL, NULL, 117, NULL, 900.00),
(788, '5685717192', NULL, NULL, 5, NULL, 900.00),
(789, '7981331688', NULL, NULL, 5, NULL, 2500.00),
(790, '3754539398', NULL, NULL, 10, NULL, 290.00),
(791, '1294427617', NULL, NULL, 34, NULL, 2857.00),
(792, '7615645887', NULL, NULL, 23, NULL, 1800.00),
(793, '3345796488', NULL, NULL, 112, NULL, 2.00),
(794, '8432772882', NULL, NULL, 4, NULL, 2500.00),
(795, '7645583916', NULL, NULL, 118, NULL, 3000.00),
(796, '4541424686', NULL, NULL, 4, NULL, 480.00),
(797, '9426424282', NULL, NULL, 43, NULL, 350.00),
(798, '6929151739', NULL, NULL, 16, NULL, 352.00),
(799, '3854249283', NULL, NULL, 4, NULL, 370.00),
(800, '5612857957', NULL, NULL, 16, NULL, 340.00),
(801, '7832381599', NULL, NULL, 16, NULL, 352.00),
(802, '1583217487', NULL, NULL, 4, NULL, 480.00),
(803, '1133234677', NULL, NULL, 16, NULL, 335.00),
(804, '1793124253', NULL, NULL, 4, NULL, 350.00),
(805, '9651439983', NULL, NULL, 56, NULL, 50.00),
(806, '2584925981', NULL, NULL, 5, NULL, 2800.00),
(807, '9313618746', NULL, NULL, 36, NULL, 1900.00),
(808, '2529326616', NULL, NULL, 119, NULL, 1400.00),
(809, '8415855643', NULL, NULL, 15, NULL, 6.00),
(810, '9912856425', NULL, NULL, 22, NULL, 6.50),
(811, '2655479748', NULL, NULL, 120, NULL, 120.00),
(812, '4481867833', NULL, NULL, 8, NULL, 160.00),
(813, '8724449739', NULL, NULL, 1, NULL, 180.00),
(814, '5447878874', NULL, NULL, 14, NULL, 120.00),
(815, '4793483788', NULL, NULL, 95, NULL, 230.00),
(816, '3189534648', NULL, NULL, 96, NULL, 240.00),
(817, '2382922995', NULL, NULL, 51, NULL, 180.00),
(818, '7945917423', NULL, NULL, 51, NULL, 550.00),
(819, '5645423293', NULL, NULL, 18, NULL, 550.00),
(820, '3743585512', NULL, NULL, 4, NULL, 1000.00),
(821, '9173215493', NULL, NULL, 18, NULL, 1200.00),
(822, '1839743372', NULL, NULL, 18, NULL, 1200.00),
(823, '6698339234', NULL, NULL, 121, NULL, 1200.00),
(824, '4195446881', NULL, NULL, 18, NULL, 650.00),
(825, '6826533677', NULL, NULL, 1, NULL, 140.00),
(826, '6821943793', NULL, NULL, 122, NULL, 380.00),
(827, '4763755152', NULL, NULL, 1, NULL, 62.00),
(828, '8229666411', NULL, NULL, 1, NULL, 100.00),
(829, '4381467842', NULL, NULL, 1, NULL, 95.00),
(830, '6163319945', NULL, NULL, 22, NULL, 20.00),
(831, '7797354996', NULL, NULL, 5, NULL, 1000.00),
(832, '3451775441', NULL, NULL, 5, NULL, 800.00),
(833, '5314436697', NULL, NULL, 5, NULL, 700.00),
(834, '8718432368', NULL, NULL, 5, NULL, 130.00),
(835, '8451189467', NULL, NULL, 123, NULL, 800.00),
(836, '5794472975', NULL, NULL, 48, NULL, 4000.00),
(837, '8771258166', NULL, NULL, 15, NULL, 53.00),
(838, '5271491153', NULL, NULL, 22, NULL, 55.00),
(839, '2639143886', NULL, NULL, 16, NULL, 197.00),
(840, '5725238613', NULL, NULL, 14, NULL, 1450.00),
(841, '8959887289', NULL, NULL, 15, NULL, 14.00),
(842, '6843187385', NULL, NULL, 4, NULL, 50.00),
(843, '2878934467', NULL, NULL, 16, NULL, 291.00),
(844, '7855716566', NULL, NULL, 22, NULL, 90.00),
(845, '5753889216', NULL, NULL, 15, NULL, 90.00),
(846, '1418783288', NULL, NULL, 15, NULL, 185.00),
(847, '8525697373', NULL, NULL, 22, NULL, 190.00),
(848, '9372165217', NULL, NULL, 25, NULL, 750.00),
(849, '5468813398', NULL, NULL, 4, NULL, 250.00),
(850, '5711484695', NULL, NULL, 4, NULL, 600.00),
(851, '5858216687', NULL, NULL, 4, NULL, 500.00),
(852, '3685344523', NULL, NULL, 4, NULL, 8800.00),
(853, '7526518639', NULL, NULL, 43, NULL, 8800.00),
(854, '3824344725', NULL, NULL, 1, NULL, 650.00),
(855, '4526566594', NULL, NULL, 14, NULL, 820.00),
(856, '5946543231', NULL, NULL, 25, NULL, 110.00),
(857, '7371757546', NULL, NULL, 25, NULL, 220.00),
(858, '3261675164', NULL, NULL, 25, NULL, 250.00),
(859, '3139684177', NULL, NULL, 25, NULL, 200.00),
(860, '9388876342', NULL, NULL, 93, NULL, 115.00),
(861, '8611717996', NULL, NULL, 4, NULL, 150.00),
(862, '6293578688', NULL, NULL, 25, NULL, 300.00),
(863, '7365253933', NULL, NULL, 25, NULL, 230.00),
(864, '5761938668', NULL, NULL, 25, NULL, 280.00),
(865, '3336933566', NULL, NULL, 25, NULL, 200.00),
(866, '1799315849', NULL, NULL, 25, NULL, 150.00),
(867, '9967679526', NULL, NULL, 1, NULL, 190.00),
(868, '8935234222', NULL, NULL, 25, NULL, 400.00),
(869, '4694788974', NULL, NULL, 25, NULL, 230.00),
(870, '9542779427', NULL, NULL, 25, NULL, 280.00),
(871, '2347867643', NULL, NULL, 25, NULL, 641.63),
(872, '9936214783', NULL, NULL, 25, NULL, 220.00),
(873, '4266126426', NULL, NULL, 25, NULL, 650.00),
(874, '6279949851', NULL, NULL, 25, NULL, 220.00),
(875, '3116144718', NULL, NULL, 25, NULL, 600.00),
(876, '7968599928', NULL, NULL, 25, NULL, 280.00),
(877, '4668933119', NULL, NULL, 25, NULL, 450.00),
(878, '2745882894', NULL, NULL, 25, NULL, 650.00),
(879, '5711497317', NULL, NULL, 25, NULL, 1100.00),
(880, '6343993918', NULL, NULL, 25, NULL, 50.00),
(881, '9596432555', NULL, NULL, 25, NULL, 150.00),
(882, '9338578396', NULL, NULL, 93, NULL, 80.00),
(883, '2339472985', NULL, NULL, 124, NULL, 100.00),
(884, '6357636186', NULL, NULL, 125, NULL, 80.00),
(885, '2981192565', NULL, NULL, 4, NULL, 28.00),
(886, '8258716993', NULL, NULL, 126, NULL, 90.00),
(887, '3595332644', NULL, NULL, 25, NULL, 95.00),
(888, '4538861819', NULL, NULL, 4, NULL, 180.00),
(889, '7833458612', NULL, NULL, 4, NULL, 210.00),
(890, '9449759868', NULL, NULL, 127, NULL, 380.00),
(891, '3495698857', NULL, NULL, 25, NULL, 180.00),
(892, '1421862224', NULL, NULL, 25, NULL, 330.00),
(893, '7719159371', NULL, NULL, 4, NULL, 1400.00),
(894, '8934414586', NULL, NULL, 4, NULL, 1600.00),
(895, '4272288456', NULL, NULL, 16, NULL, 2521.00),
(896, '4264164758', NULL, NULL, 4, NULL, 100.00),
(897, '2871318491', NULL, NULL, 14, NULL, 840.00),
(898, '4469212338', NULL, NULL, 59, NULL, 845.00),
(899, '4318386158', NULL, NULL, 38, NULL, 850.00),
(900, '3377449572', NULL, NULL, 128, NULL, 880.00),
(901, '3119178612', NULL, NULL, 10, NULL, 890.00),
(902, '2622326898', NULL, NULL, 15, NULL, 38.00),
(903, '4848196333', NULL, NULL, 1, NULL, 55.00),
(904, '6785438455', NULL, NULL, 129, NULL, 450.00),
(905, '7362288723', NULL, NULL, 22, NULL, 1.00),
(906, '7194513498', NULL, NULL, 15, NULL, 1.00),
(907, '9476992122', NULL, NULL, 66, NULL, 1.50),
(908, '8785142358', NULL, NULL, 15, NULL, 2.00),
(909, '9987558525', NULL, NULL, 22, NULL, 2.50),
(910, '6331487889', NULL, NULL, 45, NULL, 2.50),
(911, '5921691247', NULL, NULL, 1, NULL, 100.00),
(912, '8131567321', NULL, NULL, 4, NULL, 170.00),
(913, '7324564289', NULL, NULL, 130, NULL, 2.33),
(914, '4479257966', NULL, NULL, 22, NULL, 2.50),
(915, '5816621184', NULL, NULL, 15, NULL, 0.80),
(916, '7186774253', NULL, NULL, 22, NULL, 1.40),
(917, '1633188389', NULL, NULL, 22, NULL, 10.00),
(918, '2858668957', NULL, NULL, 14, NULL, 12.00),
(919, '5889888337', NULL, NULL, 1, NULL, 85.00),
(920, '8243378399', NULL, NULL, 18, NULL, 350.00),
(921, '5563952891', NULL, NULL, 4, NULL, 500.00),
(922, '2739221262', NULL, NULL, 1, NULL, 45.00),
(923, '8821477231', NULL, NULL, 15, NULL, 9.80),
(924, '8976772718', NULL, NULL, 15, NULL, 9.00),
(925, '5399823766', NULL, NULL, 5, NULL, 40.00),
(926, '8652363918', NULL, NULL, 5, NULL, 40.00),
(927, '4291511417', NULL, NULL, 5, NULL, 2800.00),
(928, '3925665842', NULL, NULL, 15, NULL, 40.00),
(929, '2963629819', NULL, NULL, 16, NULL, 19.00),
(930, '5388565964', NULL, NULL, 15, NULL, 120.00),
(931, '7982518694', NULL, NULL, 15, NULL, 18.00),
(932, '3882252243', NULL, NULL, 15, NULL, 80.00),
(933, '1154667313', NULL, NULL, 15, NULL, 1.50),
(934, '4277987252', NULL, NULL, 15, NULL, 8.00),
(935, '3636566422', NULL, NULL, 1, NULL, 15.00),
(936, '5688841176', NULL, NULL, 131, NULL, 450.00),
(937, '8638145748', NULL, NULL, 16, NULL, 332.00),
(938, '4656639422', NULL, NULL, 4, NULL, 480.00),
(939, '1711571231', NULL, NULL, 4, NULL, 1000.00),
(940, '5361723676', NULL, NULL, 44, NULL, 50.00),
(941, '3184334528', NULL, NULL, 56, NULL, 220.00),
(942, '5738962252', NULL, NULL, 25, NULL, 4200.00),
(943, '9864281467', NULL, NULL, 15, NULL, 6.20),
(944, '4421784458', NULL, NULL, 22, NULL, 2.50),
(945, '7652994811', NULL, NULL, 1, NULL, 220.00),
(946, '2364851588', NULL, NULL, 132, NULL, 89.00),
(947, '7271581692', NULL, NULL, 133, NULL, 92.00),
(948, '2773423826', NULL, NULL, 1, NULL, 35.00),
(949, '1116569536', NULL, NULL, 38, NULL, 1475.00),
(950, '7972949164', NULL, NULL, 134, NULL, 2.00),
(951, '1525564481', NULL, NULL, 12, NULL, 1000.00),
(952, '4779842192', NULL, NULL, 12, NULL, 2500.00),
(953, '6612653131', NULL, NULL, 12, NULL, 1500.00),
(954, '6646244944', NULL, NULL, 12, NULL, 900.00),
(955, '7684219391', NULL, NULL, 15, NULL, 88.00),
(956, '8799624441', NULL, NULL, 130, NULL, 90.00),
(957, '2286439655', NULL, NULL, 16, NULL, 3514.00),
(958, '3999814899', NULL, NULL, 19, NULL, 650.00),
(959, '8426834612', NULL, NULL, 20, NULL, 650.00),
(960, '4952557618', NULL, NULL, 19, NULL, 1000.00),
(961, '2329977148', NULL, NULL, 135, NULL, 15000.00),
(962, '4752216253', NULL, NULL, 5, NULL, 4000.00),
(963, '7837169792', NULL, NULL, 16, NULL, 3948.00),
(964, '6511376111', NULL, NULL, 51, NULL, 90.00),
(965, '2811985143', NULL, NULL, 121, NULL, 800.00),
(966, '4786294989', NULL, NULL, 136, NULL, 100.00),
(967, '1645689656', NULL, NULL, 136, NULL, 120.00),
(968, '7311866729', NULL, NULL, 18, NULL, 200.00),
(969, '7136374543', NULL, NULL, 136, NULL, 70.00),
(970, '9383633641', NULL, NULL, 121, NULL, 200.00),
(971, '3132442543', NULL, NULL, 18, NULL, 900.00),
(972, '9536466739', NULL, NULL, 20, NULL, 1150.00),
(973, '8485918874', NULL, NULL, 19, NULL, 1250.00),
(974, '4144285924', NULL, NULL, 4, NULL, 900.00),
(975, '6597446313', NULL, NULL, 4, NULL, 800.00),
(976, '9385194795', NULL, NULL, 4, NULL, 1050.00),
(977, '9827712147', NULL, NULL, 4, NULL, 900.00),
(978, '5575732917', NULL, NULL, 45, NULL, 2.70),
(979, '2238638611', NULL, NULL, 15, NULL, 2.73),
(980, '2338231121', NULL, NULL, 22, NULL, 2.80),
(981, '2754331435', NULL, NULL, 5, NULL, 120.00),
(982, '7862424863', NULL, NULL, 22, NULL, 60.00),
(983, '4548412764', NULL, NULL, 15, NULL, 100.00),
(984, '4588429723', NULL, NULL, 137, NULL, 30000.00),
(985, '8381611745', NULL, NULL, 6, NULL, 550.00),
(986, '1952839775', NULL, NULL, 138, NULL, 40.00),
(987, '3716223879', NULL, NULL, 51, NULL, 250.00),
(988, '9933983411', NULL, NULL, 138, NULL, 100.00),
(989, '3462374313', NULL, NULL, 139, NULL, 10.00),
(990, '9313527551', NULL, NULL, 139, NULL, 30.00),
(991, '7895971519', NULL, NULL, 138, NULL, 30.00),
(992, '6268967774', NULL, NULL, 15, NULL, 88.00),
(993, '4659451853', NULL, NULL, 22, NULL, 90.00),
(994, '3845717319', NULL, NULL, 130, NULL, 90.00),
(995, '8351448894', NULL, NULL, 38, NULL, 40.00),
(996, '1922579172', NULL, NULL, 5, NULL, 700.00),
(997, '9372325647', NULL, NULL, 140, NULL, 500.00),
(998, '8921934836', NULL, NULL, 61, NULL, 150.00),
(999, '8329487322', NULL, NULL, 141, NULL, 500.00),
(1000, '6358619769', NULL, NULL, 140, NULL, 350.00),
(1001, '7632964253', NULL, NULL, 140, NULL, 500.00),
(1002, '6874479322', NULL, NULL, 142, NULL, 500.00),
(1003, '4511382632', NULL, NULL, 143, NULL, 600.00),
(1004, '7838139965', NULL, NULL, 14, NULL, 850.00),
(1005, '4565251414', NULL, NULL, 14, NULL, 230.00),
(1006, '7581396334', NULL, NULL, 14, NULL, 25.00),
(1007, '5571987952', NULL, NULL, 14, NULL, 20.00),
(1008, '1346253574', NULL, NULL, 15, NULL, 5.87),
(1009, '9191764595', NULL, NULL, 45, NULL, 6.00),
(1010, '3887281871', NULL, NULL, 22, NULL, 6.50),
(1011, '9857112318', NULL, NULL, 130, NULL, 60.00),
(1012, '9544674581', NULL, NULL, 59, NULL, 36.00),
(1013, '1269869435', NULL, NULL, 1, NULL, 8.00),
(1014, '1815757533', NULL, NULL, 1, NULL, 12.00),
(1015, '3149639679', NULL, NULL, 5, NULL, 15.00),
(1016, '3755456162', NULL, NULL, 14, NULL, 15.00),
(1017, '8166644626', NULL, NULL, 14, NULL, 15.00),
(1018, '5711473195', NULL, NULL, 38, NULL, 15.00),
(1019, '9152654835', NULL, NULL, 38, NULL, 30.00),
(1020, '1496623818', NULL, NULL, 38, NULL, 60.00),
(1021, '4467963162', NULL, NULL, 38, NULL, 80.00),
(1022, '4983444448', NULL, NULL, 1, NULL, 42.00),
(1023, '9516116546', NULL, NULL, 1, NULL, 60.00),
(1024, '1981449279', NULL, NULL, 15, NULL, 50.00),
(1025, '8634942974', NULL, NULL, 45, NULL, 50.00),
(1026, '1762349985', NULL, NULL, 22, NULL, 55.00);
INSERT INTO `supplier_product` (`supplier_pr_id`, `product_id`, `product_id_two`, `products_model`, `supplier_id`, `currency`, `supplier_price`) VALUES
(1027, '5869727561', NULL, NULL, 15, NULL, 60.00),
(1028, '6477777753', NULL, NULL, 134, NULL, 2.00),
(1029, '1257377151', NULL, NULL, 144, NULL, 2.00),
(1030, '8135763115', NULL, NULL, 145, NULL, 2.00),
(1031, '4342886239', NULL, NULL, 1, NULL, 120.00),
(1032, '1735454214', NULL, NULL, 36, NULL, 85.00),
(1033, '7473489885', NULL, NULL, 1, NULL, 90.00),
(1034, '4595633526', NULL, NULL, 1, NULL, 350.00),
(1035, '6698641191', NULL, NULL, 4, NULL, 450.00),
(1036, '8843331844', NULL, NULL, 14, NULL, 250.00),
(1037, '1495684454', NULL, NULL, 19, NULL, 60.00),
(1038, '8117395321', NULL, NULL, 63, NULL, 6000.00),
(1039, '8967472594', NULL, NULL, 19, NULL, 6500.00),
(1040, '8821821455', NULL, NULL, 34, NULL, 4000.00),
(1041, '6889878126', NULL, NULL, 16, NULL, 13016.00),
(1042, '6643397261', NULL, NULL, 1, NULL, 230.00),
(1043, '5176245133', NULL, NULL, 16, NULL, 387.00),
(1044, '8185116855', NULL, NULL, 16, NULL, 628.00),
(1045, '9458455952', NULL, NULL, 146, NULL, 290.00),
(1046, '6416229131', NULL, NULL, 65, NULL, 1600.00),
(1047, '6449954213', NULL, NULL, 147, NULL, 2500.00),
(1048, '7979596287', NULL, NULL, 1, NULL, 60.00),
(1049, '3322549922', NULL, NULL, 73, NULL, 80.00),
(1050, '5699695686', NULL, NULL, 1, NULL, 220.00),
(1051, '1573935448', NULL, NULL, 1, NULL, 3.00),
(1052, '9946941176', NULL, NULL, 14, NULL, 10.00),
(1053, '5559353918', NULL, NULL, 1, NULL, 1950.00),
(1054, '3595659482', NULL, NULL, 1, NULL, 750.00),
(1055, '2399799817', NULL, NULL, 1, NULL, 550.00),
(1056, '7652989194', NULL, NULL, 1, NULL, 40.00),
(1057, '9442515298', NULL, NULL, 83, NULL, 170.00),
(1058, '7523532792', NULL, NULL, 1, NULL, 120.00),
(1059, '9541223282', NULL, NULL, 1, NULL, 50.00),
(1060, '5358819461', NULL, NULL, 1, NULL, 190.00),
(1061, '1895844729', NULL, NULL, 60, NULL, 150.00),
(1062, '4891529748', NULL, NULL, 25, NULL, 25.00),
(1063, '8686254866', NULL, NULL, 148, NULL, 30.00),
(1064, '5132215914', NULL, NULL, 14, NULL, 12.00),
(1065, '3313211822', NULL, NULL, 1, NULL, 60.00),
(1066, '9424846326', NULL, NULL, 1, NULL, 290.00),
(1067, '3354255647', NULL, NULL, 27, NULL, 70.00),
(1068, '4648621398', NULL, NULL, 149, NULL, 178.00),
(1069, '5541312487', NULL, NULL, 150, NULL, 185.00),
(1070, '7376444756', NULL, NULL, 149, NULL, 178.00),
(1071, '2156662456', NULL, NULL, 150, NULL, 183.00),
(1072, '7855596578', NULL, NULL, 151, NULL, 180.00),
(1073, '1487471413', NULL, NULL, 152, NULL, 180.00),
(1074, '1653694647', NULL, NULL, 153, NULL, 198.00),
(1075, '9953171138', NULL, NULL, 16, NULL, 200.00),
(1076, '7566182345', NULL, NULL, 154, NULL, 200.00),
(1077, '6237645744', NULL, NULL, 152, NULL, 260.00),
(1078, '2945588669', NULL, NULL, 4, NULL, 280.00),
(1079, '9495138564', NULL, NULL, 155, NULL, 280.54),
(1080, '3242254857', NULL, NULL, 4, NULL, 280.00),
(1081, '6215142411', NULL, NULL, 4, NULL, 280.00),
(1082, '4336192951', NULL, NULL, 1, NULL, 170.00),
(1083, '2173515426', NULL, NULL, 4, NULL, 60.00),
(1084, '2136779217', NULL, NULL, 1, NULL, 60.00),
(1085, '8823671896', NULL, NULL, 16, NULL, 335.00),
(1086, '5518553716', NULL, NULL, 16, NULL, 335.00),
(1087, '8118196428', NULL, NULL, 4, NULL, 750.00),
(1088, '1415262944', NULL, NULL, 16, NULL, 387.00),
(1089, '5723127847', NULL, NULL, 156, NULL, 1000.00),
(1090, '4733947911', NULL, NULL, 1, NULL, 280.00),
(1091, '7886517743', NULL, NULL, 1, NULL, 160.00),
(1092, '1822764847', NULL, NULL, 15, NULL, 8.80),
(1093, '8349888453', NULL, NULL, 15, NULL, 16.00),
(1094, '6282795683', NULL, NULL, 5, NULL, 3500.00),
(1095, '6579181122', NULL, NULL, 83, NULL, 2200.00),
(1096, '3422445435', NULL, NULL, 157, NULL, 350.00),
(1097, '6461779147', NULL, NULL, 15, NULL, 6.20),
(1098, '6449255985', NULL, NULL, 22, NULL, 6.50),
(1099, '4652444569', NULL, NULL, 1, NULL, 680.00),
(1100, '2486649221', NULL, NULL, 1, NULL, 1180.00),
(1101, '7229192994', NULL, NULL, 1, NULL, 250.00),
(1102, '3734234468', NULL, NULL, 5, NULL, 400.00),
(1103, '9137892198', NULL, NULL, 5, NULL, 150.00),
(1104, '3112853157', NULL, NULL, 47, NULL, 2900.00),
(1105, '8657277166', NULL, NULL, 14, NULL, 190.00),
(1106, '2618213182', NULL, NULL, 5, NULL, 18.00),
(1107, '5911265629', NULL, NULL, 109, NULL, 1200.00),
(1108, '8257164429', NULL, NULL, 48, NULL, 4000.00),
(1109, '3984343648', NULL, NULL, 15, NULL, 5.75),
(1110, '7723464964', NULL, NULL, 15, NULL, 5.75),
(1111, '5474135792', NULL, NULL, 158, NULL, 25000.00),
(1112, '8914486165', NULL, NULL, 1, NULL, 400.00),
(1113, '1119357258', NULL, NULL, 4, NULL, 550.00),
(1114, '3237661222', NULL, NULL, 14, NULL, 650.00),
(1115, '6587599492', NULL, NULL, 40, NULL, 740.00),
(1116, '3293943184', NULL, NULL, 1, NULL, 280.00),
(1117, '5583456741', NULL, NULL, 38, NULL, 1465.00),
(1118, '5878485511', NULL, NULL, 38, NULL, 875.00),
(1119, '7338567568', NULL, NULL, 128, NULL, 1035.00),
(1120, '1713386839', NULL, NULL, 16, NULL, 1755.00),
(1121, '3636354748', NULL, NULL, 52, NULL, 200.00),
(1122, '2152885566', NULL, NULL, 16, NULL, 1915.00),
(1123, '7543653336', NULL, NULL, 40, NULL, 450.00),
(1124, '3874335576', NULL, NULL, 27, NULL, 30.00),
(1125, '8977236166', NULL, NULL, 1, NULL, 75.00),
(1126, '9429699348', NULL, NULL, 58, NULL, 1.88),
(1127, '7918312367', NULL, NULL, 48, NULL, 2.00),
(1128, '1318626672', NULL, NULL, 14, NULL, 650.00),
(1129, '3266446571', NULL, NULL, 159, NULL, 750.00),
(1130, '8359224732', NULL, NULL, 159, NULL, 350.00),
(1131, '8459669158', NULL, NULL, 159, NULL, 900.00),
(1132, '1269764797', NULL, NULL, 15, NULL, 0.50),
(1133, '2585199188', NULL, NULL, 1, NULL, 240.00),
(1134, '3256141162', NULL, NULL, 1, NULL, 90.00),
(1135, '7173219979', NULL, NULL, 14, NULL, 620.00),
(1136, '8357927368', NULL, NULL, 14, NULL, 250.00),
(1137, '7761463987', NULL, NULL, 14, NULL, 280.00),
(1138, '5846484924', NULL, NULL, 15, NULL, 13.00),
(1139, '9523968148', NULL, NULL, 19, NULL, 1250.00),
(1140, '1649937267', NULL, NULL, 19, NULL, 850.00),
(1141, '8772431656', NULL, NULL, 63, NULL, 1000.00),
(1142, '3967828658', NULL, NULL, 6, NULL, 450.00),
(1143, '3765318381', NULL, NULL, 15, NULL, 10.50),
(1144, '5675892614', NULL, NULL, 22, NULL, 11.00),
(1145, '6595153193', NULL, NULL, 15, NULL, 80.00),
(1146, '4638759155', NULL, NULL, 30, NULL, 5000.00),
(1147, '4737714354', NULL, NULL, 30, NULL, 3000.00),
(1148, '8635287198', NULL, NULL, 16, NULL, 80.00),
(1149, '3641994214', NULL, NULL, 4, NULL, 310.00),
(1150, '5842536269', NULL, NULL, 1, NULL, 20.00),
(1151, '3235288679', NULL, NULL, 5, NULL, 150.00),
(1152, '8325799269', NULL, NULL, 9, NULL, 116.76),
(1153, '1914192341', NULL, NULL, 5, NULL, 20.00),
(1154, '5979118775', NULL, NULL, 19, NULL, 800.00),
(1155, '2737826557', NULL, NULL, 160, NULL, 2500.00),
(1156, '6125682881', NULL, NULL, 160, NULL, 5000.00),
(1157, '6879819335', NULL, NULL, 59, NULL, 95.00),
(1158, '7581393134', NULL, NULL, 14, NULL, 110.00),
(1159, '6394289116', NULL, NULL, 89, NULL, 150.00),
(1160, '6373492476', NULL, NULL, 1, NULL, 10.00),
(1161, '8228529965', NULL, NULL, 153, NULL, 90.00),
(1162, '7414417815', NULL, NULL, 51, NULL, 45.00),
(1163, '1343882374', NULL, NULL, 14, NULL, 1450.00),
(1164, '3348693665', NULL, NULL, 51, NULL, 500.00),
(1165, '9384734729', NULL, NULL, 14, NULL, 1350.00),
(1166, '8691163386', NULL, NULL, 40, NULL, 1500.00),
(1167, '5319264649', NULL, NULL, 161, NULL, 8000.00),
(1168, '3953324516', NULL, NULL, 14, NULL, 58.00),
(1169, '5696426352', NULL, NULL, 162, NULL, 170.00),
(1170, '3849925999', NULL, NULL, 162, NULL, 25.00),
(1171, '7989184867', NULL, NULL, 23, NULL, 65.00),
(1172, '4851663549', NULL, NULL, 103, NULL, 250.00),
(1173, '6195839148', NULL, NULL, 103, NULL, 290.00),
(1174, '6473295862', NULL, NULL, 103, NULL, 290.00),
(1175, '2834669183', NULL, NULL, 18, NULL, 50.00),
(1176, '5976911351', NULL, NULL, 103, NULL, 145.00),
(1177, '4319674329', NULL, NULL, 14, NULL, 150.00),
(1178, '6118647513', NULL, NULL, 4, NULL, 5.00),
(1179, '5825853369', NULL, NULL, 4, NULL, 50.00),
(1180, '3767269578', NULL, NULL, 15, NULL, 8.80),
(1181, '1261722878', NULL, NULL, 22, NULL, 11.00),
(1182, '4113925916', NULL, NULL, 14, NULL, 35.00),
(1183, '3569185547', NULL, NULL, 14, NULL, 300.00),
(1184, '9629569984', NULL, NULL, 14, NULL, 12.00),
(1185, '1122383611', NULL, NULL, 14, NULL, 180.00),
(1186, '6768551771', NULL, NULL, 14, NULL, 1250.00),
(1187, '9884138434', NULL, NULL, 22, NULL, 30.00),
(1188, '2627392263', NULL, NULL, 14, NULL, 120.00),
(1189, '2735881271', NULL, NULL, 1, NULL, 1250.00),
(1190, '7677266362', NULL, NULL, 1, NULL, 950.00),
(1191, '6861574525', NULL, NULL, 1, NULL, 450.00),
(1192, '6526859425', NULL, NULL, 1, NULL, 1180.00),
(1193, '4153854124', NULL, NULL, 1, NULL, 1680.00),
(1194, '7832478677', NULL, NULL, 15, NULL, 210.00),
(1195, '2249993767', NULL, NULL, 1, NULL, 210.00),
(1196, '2439243751', NULL, NULL, 22, NULL, 120.00),
(1197, '2891351321', NULL, NULL, 1, NULL, 125.00),
(1198, '9754469426', NULL, NULL, 15, NULL, 30.00),
(1199, '3223915881', NULL, NULL, 22, NULL, 33.00),
(1200, '8385193439', NULL, NULL, 1, NULL, 45.00),
(1201, '1776622573', NULL, NULL, 163, NULL, 750.00),
(1202, '8692287695', NULL, NULL, 15, NULL, 110.00),
(1203, '8984335545', NULL, NULL, 14, NULL, 220.00),
(1204, '3216327815', NULL, NULL, 14, NULL, 220.00),
(1205, '6442118587', NULL, NULL, 14, NULL, 220.00),
(1206, '2223957488', NULL, NULL, 16, NULL, 21944.00),
(1207, '6565464587', NULL, NULL, 16, NULL, 21944.00),
(1208, '4995316142', NULL, NULL, 23, NULL, 180.00),
(1209, '1353733124', NULL, NULL, 10, NULL, 15.83),
(1210, '7623762728', NULL, NULL, 5, NULL, 18.00),
(1211, '5444914627', NULL, NULL, 14, NULL, 18.00),
(1212, '7936137153', NULL, NULL, 1, NULL, 20.00),
(1213, '5286197878', NULL, NULL, 5, NULL, 1500.00),
(1214, '7833722834', NULL, NULL, 5, NULL, 1300.00),
(1215, '8632191651', NULL, NULL, 5, NULL, 1000.00),
(1216, '1356129348', NULL, NULL, 22, NULL, 5.50),
(1217, '2234335972', NULL, NULL, 15, NULL, 17.50),
(1218, '7853898924', NULL, NULL, 5, NULL, 250.00),
(1219, '3863236774', NULL, NULL, 6, NULL, 1200.00),
(1220, '3346167818', NULL, NULL, 18, NULL, 850.00),
(1221, '2961645526', NULL, NULL, 18, NULL, 850.00),
(1222, '6673734475', NULL, NULL, 19, NULL, 1450.00),
(1223, '2147336134', NULL, NULL, 15, NULL, 6.20),
(1224, '3789966682', NULL, NULL, 45, NULL, 6.20),
(1225, '8741258996', NULL, NULL, 34, NULL, 4000.00),
(1226, '1757979781', NULL, NULL, 164, NULL, 13500.00),
(1227, '7623592941', NULL, NULL, 16, NULL, 31816.00),
(1228, '4394856483', NULL, NULL, 1, NULL, 150.00),
(1229, '5738841256', NULL, NULL, 1, NULL, 210.00),
(1230, '1595689241', NULL, NULL, 1, NULL, 5.00),
(1231, '8527343497', NULL, NULL, 1, NULL, 240.00),
(1232, '6967943765', NULL, NULL, 14, NULL, 250.00),
(1233, '6644825411', NULL, NULL, 14, NULL, 140.00),
(1234, '4783852825', NULL, NULL, 1, NULL, 260.00),
(1235, '5741883944', NULL, NULL, 6, NULL, 500.00),
(1236, '3294927829', NULL, NULL, 165, NULL, 5500.00),
(1237, '4974353434', NULL, NULL, 10, NULL, 232.50),
(1238, '3868237218', NULL, NULL, 14, NULL, 250.00),
(1239, '3884782261', NULL, NULL, 14, NULL, 380.00),
(1240, '7329218396', NULL, NULL, 14, NULL, 90.00),
(1241, '3542975472', NULL, NULL, 14, NULL, 90.00),
(1242, '2135362471', NULL, NULL, 14, NULL, 90.00),
(1243, '5946969355', NULL, NULL, 14, NULL, 120.00),
(1244, '2644713525', NULL, NULL, 14, NULL, 180.00),
(1245, '1282983895', NULL, NULL, 14, NULL, 150.00),
(1246, '5369794345', NULL, NULL, 14, NULL, 160.00),
(1247, '8119915122', NULL, NULL, 14, NULL, 380.00),
(1248, '8397629795', NULL, NULL, 1, NULL, 80.00),
(1249, '1697333683', NULL, NULL, 5, NULL, 150.00),
(1250, '4126955695', NULL, NULL, 5, NULL, 1200.00),
(1251, '8869688179', NULL, NULL, 14, NULL, 250.00),
(1252, '7433366324', NULL, NULL, 56, NULL, 40.00),
(1253, '6765634475', NULL, NULL, 14, NULL, 250.00),
(1254, '2715752129', NULL, NULL, 40, NULL, 1300.00),
(1255, '5754787974', NULL, NULL, 5, NULL, 1400.00),
(1256, '4133692283', NULL, NULL, 5, NULL, 200.00),
(1257, '6485511872', NULL, NULL, 5, NULL, 150.00),
(1258, '5637539437', NULL, NULL, 40, NULL, 14500.00),
(1259, '4611111466', NULL, NULL, 23, NULL, 25.00),
(1260, '2987952177', NULL, NULL, 103, NULL, 30.00),
(1261, '2599742473', NULL, NULL, 14, NULL, 3200.00),
(1262, '1892534888', NULL, NULL, 15, NULL, 1.70),
(1263, '8217186613', NULL, NULL, 56, NULL, 400.00),
(1264, '4961443838', NULL, NULL, 52, NULL, 850.00),
(1265, '5947765593', NULL, NULL, 1, NULL, 90.00),
(1266, '5583522145', NULL, NULL, 15, NULL, 30.00),
(1267, '7497423234', NULL, NULL, 22, NULL, 33.00),
(1268, '7882944118', NULL, NULL, 23, NULL, 40.00),
(1269, '2482793533', NULL, NULL, 23, NULL, 45.00),
(1270, '6451672846', NULL, NULL, 166, NULL, 250.00),
(1271, '7185956488', NULL, NULL, 25, NULL, 180.00),
(1272, '5994334189', NULL, NULL, 23, NULL, 250.00),
(1273, '3783763594', NULL, NULL, 25, NULL, 250.00),
(1274, '7428514883', NULL, NULL, 23, NULL, 380.00),
(1275, '3767626885', NULL, NULL, 25, NULL, 480.00),
(1276, '5452219937', NULL, NULL, 25, NULL, 650.00),
(1277, '9527483956', NULL, NULL, 4, NULL, 1000.00),
(1278, '5561168418', NULL, NULL, 1, NULL, 58.00),
(1279, '8391333419', NULL, NULL, 127, NULL, 380.00),
(1280, '2865342325', NULL, NULL, 23, NULL, 325.00),
(1281, '5798412647', NULL, NULL, 10, NULL, 10.00),
(1282, '6184133422', NULL, NULL, 25, NULL, 2000.00),
(1283, '7671128148', NULL, NULL, 23, NULL, 40.00),
(1284, '6582452241', NULL, NULL, 25, NULL, 250.00),
(1285, '8637447869', NULL, NULL, 1, NULL, 58.00),
(1286, '3178862644', NULL, NULL, 25, NULL, 90.00),
(1287, '5245637425', NULL, NULL, 25, NULL, 150.00),
(1288, '4973273311', NULL, NULL, 25, NULL, 450.00),
(1289, '8751712418', NULL, NULL, 26, NULL, 250.00),
(1290, '2968793685', NULL, NULL, 14, NULL, 250.00),
(1291, '5477699475', NULL, NULL, 167, NULL, 3500.00),
(1292, '2485619485', NULL, NULL, 14, NULL, 23.00),
(1293, '5277679458', NULL, NULL, 14, NULL, 30.00),
(1294, '9277239916', NULL, NULL, 14, NULL, 35.00),
(1295, '7642475259', NULL, NULL, 14, NULL, 40.00),
(1296, '7731332133', NULL, NULL, 1, NULL, 12.00),
(1297, '7949552675', NULL, NULL, 44, NULL, 20.00),
(1298, '5518187774', NULL, NULL, 14, NULL, 8.00),
(1299, '7775577523', NULL, NULL, 23, NULL, 13.00),
(1300, '9133245662', NULL, NULL, 14, NULL, 13.00),
(1301, '7875911159', NULL, NULL, 23, NULL, 14.00),
(1302, '4236822968', NULL, NULL, 14, NULL, 15.00),
(1303, '7396144745', NULL, NULL, 23, NULL, 26.00),
(1304, '9186736396', NULL, NULL, 14, NULL, 18.00),
(1305, '5527414196', NULL, NULL, 14, NULL, 22.00),
(1306, '7889482466', NULL, NULL, 23, NULL, 30.00),
(1307, '6986126135', NULL, NULL, 14, NULL, 26.00),
(1308, '6313885651', NULL, NULL, 14, NULL, 35.00),
(1309, '7416849792', NULL, NULL, 23, NULL, 40.00),
(1310, '8767242144', NULL, NULL, 14, NULL, 45.00),
(1311, '2799644135', NULL, NULL, 14, NULL, 70.00),
(1312, '8237745792', NULL, NULL, 44, NULL, 20.00),
(1313, '2792547419', NULL, NULL, 14, NULL, 400.00),
(1314, '1186137851', NULL, NULL, 14, NULL, 450.00),
(1315, '8625829223', NULL, NULL, 4, NULL, 180.00),
(1316, '7375257997', NULL, NULL, 4, NULL, 200.00),
(1317, '8384518691', NULL, NULL, 16, NULL, 96.00),
(1318, '4885125716', NULL, NULL, 4, NULL, 300.00),
(1319, '6959989358', NULL, NULL, 4, NULL, 320.00),
(1320, '4546453464', NULL, NULL, 4, NULL, 400.00),
(1321, '7144995532', NULL, NULL, 4, NULL, 530.00),
(1322, '8755394914', NULL, NULL, 4, NULL, 950.00),
(1323, '1483286746', NULL, NULL, 1, NULL, 280.00),
(1324, '6996286612', NULL, NULL, 1, NULL, 160.00),
(1325, '8162233745', NULL, NULL, 25, NULL, 150.00),
(1326, '9216676566', NULL, NULL, 23, NULL, 45.00),
(1327, '8289188429', NULL, NULL, 168, NULL, 12.00),
(1328, '4788276267', NULL, NULL, 168, NULL, 25.00),
(1329, '3267676965', NULL, NULL, 23, NULL, 40.00),
(1330, '9657286842', NULL, NULL, 23, NULL, 40.00),
(1331, '6722511693', NULL, NULL, 23, NULL, 48.00),
(1332, '5441785485', NULL, NULL, 23, NULL, 55.00),
(1333, '3213314422', NULL, NULL, 23, NULL, 60.00),
(1334, '6692261953', NULL, NULL, 23, NULL, 47.00),
(1335, '9843182846', NULL, NULL, 23, NULL, 55.00),
(1336, '6656582567', NULL, NULL, 23, NULL, 55.00),
(1337, '2466878424', NULL, NULL, 23, NULL, 45.00),
(1338, '3424748947', NULL, NULL, 23, NULL, 47.00),
(1339, '1439288884', NULL, NULL, 23, NULL, 55.00),
(1340, '8357384998', NULL, NULL, 23, NULL, 20.00),
(1341, '5172521584', NULL, NULL, 14, NULL, 850.00),
(1342, '5957928489', NULL, NULL, 25, NULL, 95.00),
(1343, '1552872176', NULL, NULL, 25, NULL, 900.00),
(1344, '8827781355', NULL, NULL, 25, NULL, 900.00),
(1345, '9775813546', NULL, NULL, 4, NULL, 45.00),
(1346, '9384111413', NULL, NULL, 1, NULL, 20.00),
(1347, '2818713654', NULL, NULL, 10, NULL, 150.00),
(1348, '7449693282', NULL, NULL, 10, NULL, 100.00),
(1349, '5953623675', NULL, NULL, 23, NULL, 2.00),
(1350, '4919413831', NULL, NULL, 23, NULL, 2.50),
(1351, '2899457416', NULL, NULL, 23, NULL, 4.00),
(1352, '7998796671', NULL, NULL, 25, NULL, 250.00),
(1353, '9474492267', NULL, NULL, 4, NULL, 700.00),
(1354, '9979926793', NULL, NULL, 23, NULL, 6.00),
(1355, '6838238649', NULL, NULL, 23, NULL, 250.00),
(1356, '2621559744', NULL, NULL, 168, NULL, 2.00),
(1357, '5726895888', NULL, NULL, 23, NULL, 20.00),
(1358, '9942115729', NULL, NULL, 14, NULL, 400.00),
(1359, '8559748444', NULL, NULL, 14, NULL, 650.00),
(1360, '1447577233', NULL, NULL, 158, NULL, 150000.00),
(1361, '5162793492', NULL, NULL, 158, NULL, 5000.00),
(1362, '4942244414', NULL, NULL, 1, NULL, 80.00),
(1363, '4369316296', NULL, NULL, 1, NULL, 130.00),
(1364, '1656685524', NULL, NULL, 1, NULL, 20.00),
(1365, '9473535759', NULL, NULL, 23, NULL, 10.00),
(1366, '4171472526', NULL, NULL, 18, NULL, 250.00),
(1367, '2594593117', NULL, NULL, 19, NULL, 650.00),
(1368, '2156496484', NULL, NULL, 115, NULL, 110.00),
(1369, '2474313843', NULL, NULL, 14, NULL, 95.00),
(1370, '5728164373', NULL, NULL, 14, NULL, 120.00),
(1371, '2776142363', NULL, NULL, 4, NULL, 350.00),
(1372, '8483772654', NULL, NULL, 1, NULL, 780.00),
(1373, '6448574926', NULL, NULL, 4, NULL, 200.00),
(1374, '6638136619', NULL, NULL, 1, NULL, 12.00),
(1375, '7367299153', NULL, NULL, 4, NULL, 121.31),
(1376, '7738122659', NULL, NULL, 4, NULL, 45.00),
(1377, '8577497512', NULL, NULL, 16, NULL, 145.00),
(1378, '7198988553', NULL, NULL, 53, NULL, 47585.90),
(1379, '1873139211', NULL, NULL, 4, NULL, 85.00),
(1380, '9896812594', NULL, NULL, 53, NULL, 63376.25),
(1381, '6955154879', NULL, NULL, 16, NULL, 267.00),
(1382, '6616115834', NULL, NULL, 16, NULL, 306.00),
(1383, '3233887655', NULL, NULL, 4, NULL, 170.00),
(1384, '1356876328', NULL, NULL, 53, NULL, 170256.53),
(1385, '4432643853', NULL, NULL, 53, NULL, 203126.25),
(1386, '8317888289', NULL, NULL, 4, NULL, 6000.00),
(1387, '7216479599', NULL, NULL, 1, NULL, 30.00),
(1388, '4255585746', NULL, NULL, 83, NULL, 11400.00),
(1389, '9226271269', NULL, NULL, 20, NULL, 1000.00),
(1390, '2826916517', NULL, NULL, 40, NULL, 900.00),
(1391, '7814731538', NULL, NULL, 40, NULL, 1500.00),
(1392, '8354992411', NULL, NULL, 14, NULL, 0.20),
(1393, '2436624248', NULL, NULL, 56, NULL, 1500.00),
(1394, '4655437382', NULL, NULL, 56, NULL, 1550.00),
(1395, '8226663567', NULL, NULL, 1, NULL, 20.00),
(1396, '6421357642', NULL, NULL, 7, NULL, 20.00),
(1397, '1816622392', NULL, NULL, 4, NULL, 750.00),
(1398, '4841544445', NULL, NULL, 16, NULL, 96.00),
(1399, '4815329938', NULL, NULL, 38, NULL, 195.00),
(1400, '7816984152', NULL, NULL, 16, NULL, 50540.00),
(1401, '6424281962', NULL, NULL, 1, NULL, 80.00),
(1402, '8384525575', NULL, NULL, 169, NULL, 3500.00),
(1403, '2992315311', NULL, NULL, 169, NULL, 35.00),
(1404, '3237938581', NULL, NULL, 169, NULL, 840.00),
(1405, '6455155633', NULL, NULL, 169, NULL, 35.00),
(1406, '2329149421', NULL, NULL, 169, NULL, 108.00),
(1407, '3893863784', NULL, NULL, 169, NULL, 34.00),
(1408, '7994735875', NULL, NULL, 169, NULL, 300.00),
(1409, '9994115961', NULL, NULL, 40, NULL, 5000.00),
(1410, '6258182391', NULL, NULL, 40, NULL, 5000.00),
(1411, '4571352279', NULL, NULL, 1, NULL, 135.00),
(1412, '1632317673', NULL, NULL, 1, NULL, 50.00),
(1413, '7163367726', NULL, NULL, 1, NULL, 1120.00),
(1414, '2663555627', NULL, NULL, 1, NULL, 28.00),
(1415, '7452515263', NULL, NULL, 1, NULL, 60.00),
(1416, '6417614734', NULL, NULL, 14, NULL, 1000.00),
(1417, '3571783636', NULL, NULL, 26, NULL, 500.00),
(1418, '2367362589', NULL, NULL, 23, NULL, 75.00),
(1419, '9537459991', NULL, NULL, 7, NULL, 20.00),
(1420, '3723321316', NULL, NULL, 4, NULL, 420.00),
(1421, '5757911138', NULL, NULL, 4, NULL, 420.00),
(1422, '8786647627', NULL, NULL, 4, NULL, 420.00),
(1423, '8231132539', NULL, NULL, 4, NULL, 420.00),
(1424, '2938326141', NULL, NULL, 4, NULL, 420.00),
(1425, '6971399953', NULL, NULL, 4, NULL, 420.00),
(1426, '4245481911', NULL, NULL, 4, NULL, 480.00),
(1427, '3226298338', NULL, NULL, 4, NULL, 500.00),
(1428, '8998637233', NULL, NULL, 4, NULL, 200.00),
(1429, '5756854469', NULL, NULL, 4, NULL, 170.00),
(1430, '7657326941', NULL, NULL, 40, NULL, 11500.00),
(1431, '1852915193', NULL, NULL, 4, NULL, 1200.00),
(1432, '3542684158', NULL, NULL, 4, NULL, 200.00),
(1433, '4534989198', NULL, NULL, 5, NULL, 18.00),
(1434, '9263268231', NULL, NULL, 16, NULL, 2052.00),
(1435, '4747666885', NULL, NULL, 16, NULL, 2126.00),
(1436, '7111657946', NULL, NULL, 16, NULL, 4271.00),
(1437, '5773196875', NULL, NULL, 34, NULL, 1250.00),
(1438, '7839895333', NULL, NULL, 170, NULL, 700.00),
(1439, '5882567578', NULL, NULL, 170, NULL, 750.00),
(1440, '7745419613', NULL, NULL, 5, NULL, 500.00),
(1441, '9543464932', NULL, NULL, 9, NULL, 750.00),
(1442, '3753487353', NULL, NULL, 5, NULL, 1000.00),
(1443, '5778272225', NULL, NULL, 34, NULL, 2000.00),
(1444, '5466483626', NULL, NULL, 34, NULL, 2500.00),
(1445, '5748259249', NULL, NULL, 34, NULL, 2500.00),
(1446, '4632571487', NULL, NULL, 20, NULL, 1500.00),
(1447, '5355914161', NULL, NULL, 1, NULL, 70.00),
(1448, '2517393618', NULL, NULL, 1, NULL, 60.00),
(1449, '9876211252', NULL, NULL, 171, NULL, 1.50),
(1450, '9194545335', NULL, NULL, 112, NULL, 2.00),
(1451, '1688841324', NULL, NULL, 5, NULL, 160.00),
(1452, '1766935138', NULL, NULL, 7, NULL, 250.00),
(1453, '9726275259', NULL, NULL, 1, NULL, 270.00),
(1454, '4777612432', NULL, NULL, 15, NULL, 10.60),
(1455, '5759377124', NULL, NULL, 1, NULL, 270.00),
(1456, '3153731277', NULL, NULL, 4, NULL, 380.00),
(1457, '6267972827', NULL, NULL, 4, NULL, 250.00),
(1458, '1523551287', NULL, NULL, 4, NULL, 250.00),
(1459, '1123918768', NULL, NULL, 4, NULL, 920.00),
(1460, '1943186592', NULL, NULL, 53, NULL, 1101028.06),
(1461, '6227335553', NULL, NULL, 53, NULL, 885118.39),
(1462, '3428658814', NULL, NULL, 53, NULL, 1004352.43),
(1463, '5392346524', NULL, NULL, 1, NULL, 95.00),
(1464, '5495447628', NULL, NULL, 5, NULL, 50.00),
(1465, '2113293817', NULL, NULL, 5, NULL, 70.00),
(1466, '6629645967', NULL, NULL, 5, NULL, 70.00),
(1467, '7671463976', NULL, NULL, 5, NULL, 80.00),
(1468, '5978792171', NULL, NULL, 7, NULL, 85.00),
(1469, '8341834173', NULL, NULL, 5, NULL, 80.00),
(1470, '3789111856', NULL, NULL, 5, NULL, 180.00),
(1471, '9153488479', NULL, NULL, 7, NULL, 240.00),
(1472, '2241267575', NULL, NULL, 5, NULL, 160.00),
(1473, '1146132242', NULL, NULL, 5, NULL, 10.00),
(1474, '1889987881', NULL, NULL, 10, NULL, 10.00),
(1475, '8438915832', NULL, NULL, 1, NULL, 10.00),
(1476, '7686466587', NULL, NULL, 5, NULL, 10.00),
(1477, '5266747195', NULL, NULL, 10, NULL, 10.00),
(1478, '8728674426', NULL, NULL, 1, NULL, 10.00),
(1479, '5178295564', NULL, NULL, 5, NULL, 30.00),
(1480, '7482989533', NULL, NULL, 5, NULL, 1000.00),
(1481, '7317695261', NULL, NULL, 5, NULL, 1000.00),
(1482, '9372647339', NULL, NULL, 10, NULL, 1000.00),
(1483, '6752386239', NULL, NULL, 1, NULL, 1000.00),
(1484, '6329918941', NULL, NULL, 5, NULL, 10.00),
(1485, '9922655572', NULL, NULL, 5, NULL, 10.00),
(1486, '5969132569', NULL, NULL, 5, NULL, 10.00),
(1487, '8866488335', NULL, NULL, 15, NULL, 8.80),
(1488, '1155162345', NULL, NULL, 20, NULL, 15000.00),
(1489, '6387389667', NULL, NULL, 34, NULL, 15000.00),
(1490, '6662391686', NULL, NULL, 14, NULL, 250.00),
(1491, '7875729522', NULL, NULL, 7, NULL, 20.00),
(1492, '4847374817', NULL, NULL, 5, NULL, 65.00),
(1493, '6648942533', NULL, NULL, 172, NULL, 480.00),
(1494, '1733956332', NULL, NULL, 7, NULL, 20.00),
(1495, '3596466577', NULL, NULL, 5, NULL, 30.00),
(1496, '8488781934', NULL, NULL, 7, NULL, 25.00),
(1497, '2285573694', NULL, NULL, 5, NULL, 25.00),
(1498, '2255973788', NULL, NULL, 7, NULL, 80.00),
(1499, '5687739115', NULL, NULL, 5, NULL, 80.00),
(1500, '3269729322', NULL, NULL, 23, NULL, 35.00),
(1501, '5288648872', NULL, NULL, 104, NULL, 2750.00),
(1502, '3982266721', NULL, NULL, 74, NULL, 1100.00),
(1503, '9215112311', NULL, NULL, 40, NULL, 35500.00),
(1504, '1844284384', NULL, NULL, 34, NULL, 400.00),
(1505, '3969533375', NULL, NULL, 162, NULL, 171.00),
(1506, '7618262146', NULL, NULL, 14, NULL, 220.00),
(1507, '2853965139', NULL, NULL, 173, NULL, 180.50),
(1508, '3735263443', NULL, NULL, 14, NULL, 256.00),
(1509, '9922514514', NULL, NULL, 14, NULL, 270.00),
(1510, '6315636593', NULL, NULL, 174, NULL, 150.00),
(1511, '8582471718', NULL, NULL, 14, NULL, 140.00),
(1512, '3249714671', NULL, NULL, 14, NULL, 260.00),
(1513, '5471761769', NULL, NULL, 14, NULL, 330.00),
(1514, '4949294835', NULL, NULL, 158, NULL, 15000.00),
(1515, '8492725227', NULL, NULL, 158, NULL, 50000.00),
(1516, '9172511452', NULL, NULL, 40, NULL, 6500.00),
(1517, '6995626858', NULL, NULL, 20, NULL, 6000.00),
(1518, '3213932266', NULL, NULL, 40, NULL, 6000.00),
(1519, '9896782597', NULL, NULL, 49, NULL, 250.00),
(1520, '5989619738', NULL, NULL, 1, NULL, 34.00),
(1521, '7672654629', NULL, NULL, 15, NULL, 88.00),
(1522, '8393828975', NULL, NULL, 22, NULL, 90.00),
(1523, '1242694638', NULL, NULL, 15, NULL, 45.00),
(1524, '2246369751', NULL, NULL, 22, NULL, 48.00),
(1525, '5847632139', NULL, NULL, 7, NULL, 190.00),
(1526, '3558497179', NULL, NULL, 15, NULL, 7.20),
(1527, '1837154223', NULL, NULL, 22, NULL, 17.00),
(1528, '3598841494', NULL, NULL, 15, NULL, 17.00),
(1529, '8589871322', NULL, NULL, 4, NULL, 9.80),
(1530, '4668345999', NULL, NULL, 15, NULL, 9.80),
(1531, '1945214378', NULL, NULL, 1, NULL, 9.80),
(1532, '1363287766', NULL, NULL, 175, NULL, 1.33),
(1533, '2798914246', NULL, NULL, 48, NULL, 2.00),
(1534, '8998475636', NULL, NULL, 16, NULL, 4974.00),
(1535, '3977186327', NULL, NULL, 16, NULL, 300077.00),
(1536, '8551717339', NULL, NULL, 1, NULL, 380.00),
(1537, '3841519254', NULL, NULL, 176, NULL, 700.00),
(1538, '2772854845', NULL, NULL, 5, NULL, 800.00),
(1539, '9295881394', NULL, NULL, 4, NULL, 1500.00),
(1540, '7974631793', NULL, NULL, 177, NULL, 1600.00),
(1541, '7377695996', NULL, NULL, 4, NULL, 300.00),
(1542, '9988219377', NULL, NULL, 14, NULL, 15.00),
(1543, '8356289752', NULL, NULL, 14, NULL, 18.00),
(1544, '4376532972', NULL, NULL, 14, NULL, 18.00),
(1545, '8471835813', NULL, NULL, 14, NULL, 20.00),
(1546, '4382281964', NULL, NULL, 14, NULL, 18.00),
(1547, '4312831557', NULL, NULL, 38, NULL, 1335.00),
(1548, '9536152248', NULL, NULL, 1, NULL, 140.00),
(1549, '2457996425', NULL, NULL, 178, NULL, 1200.00),
(1550, '4362661363', NULL, NULL, 178, NULL, 1120.00),
(1551, '1821268443', NULL, NULL, 18, NULL, 1300.00),
(1552, '4353142917', NULL, NULL, 14, NULL, 350.00),
(1553, '6214714259', NULL, NULL, 63, NULL, 200.00),
(1554, '8981493587', NULL, NULL, 19, NULL, 350.00),
(1555, '2644745796', NULL, NULL, 1, NULL, 60.00),
(1556, '6352286691', NULL, NULL, 136, NULL, 200.00),
(1557, '5967113396', NULL, NULL, 18, NULL, 550.00),
(1558, '7278466591', NULL, NULL, 14, NULL, 70.00),
(1559, '4888939647', NULL, NULL, 25, NULL, 370.00),
(1560, '2467838297', NULL, NULL, 14, NULL, 285.00),
(1561, '8739225434', NULL, NULL, 10, NULL, 290.00),
(1562, '5333916187', NULL, NULL, 179, NULL, 1200.00),
(1563, '2392261131', NULL, NULL, 14, NULL, 12.00),
(1564, '9395629949', NULL, NULL, 14, NULL, 850.00),
(1565, '2351333612', NULL, NULL, 14, NULL, 100.00),
(1566, '7168966717', NULL, NULL, 14, NULL, 450.00),
(1567, '7448867172', NULL, NULL, 5, NULL, 50.00),
(1568, '7883799855', NULL, NULL, 1, NULL, 18.00),
(1569, '9298237293', NULL, NULL, 1, NULL, 55.00),
(1570, '4215611951', NULL, NULL, 1, NULL, 20.00),
(1571, '5117113591', NULL, NULL, 38, NULL, 40.00),
(1572, '7227751582', NULL, NULL, 10, NULL, 5.00),
(1573, '7814585583', NULL, NULL, 4, NULL, 550.00),
(1574, '2941435243', NULL, NULL, 38, NULL, 940.00),
(1575, '3915738944', NULL, NULL, 4, NULL, 280.00),
(1576, '6594599616', NULL, NULL, 4, NULL, 290.00),
(1577, '4399657111', NULL, NULL, 4, NULL, 285.00),
(1578, '4936226661', NULL, NULL, 4, NULL, 290.00),
(1579, '4374872634', NULL, NULL, 25, NULL, 320.00),
(1580, '4577693189', NULL, NULL, 4, NULL, 480.00),
(1581, '8577713155', NULL, NULL, 180, NULL, 500.00),
(1582, '7392677839', NULL, NULL, 181, NULL, 400.00),
(1583, '9922257662', NULL, NULL, 180, NULL, 400.00),
(1584, '8227475595', NULL, NULL, 59, NULL, 30.00),
(1585, '2588565163', NULL, NULL, 14, NULL, 35.00),
(1586, '4137586818', NULL, NULL, 4, NULL, 150.00),
(1587, '7326929553', NULL, NULL, 4, NULL, 120.00),
(1588, '8736354384', NULL, NULL, 4, NULL, 55.00),
(1589, '4447485244', NULL, NULL, 76, NULL, 220.00),
(1590, '5265543942', NULL, NULL, 182, NULL, 250.00),
(1591, '7877117731', NULL, NULL, 64, NULL, 260.00),
(1592, '4892263154', NULL, NULL, 41, NULL, 280.00),
(1593, '2187425948', NULL, NULL, 4, NULL, 300.00),
(1594, '1471352636', NULL, NULL, 4, NULL, 500.00),
(1595, '3443889283', NULL, NULL, 4, NULL, 300.00),
(1596, '5235339932', NULL, NULL, 182, NULL, 330.00),
(1597, '3455915824', NULL, NULL, 15, NULL, 4.40),
(1598, '8521632785', NULL, NULL, 15, NULL, 4.40),
(1599, '1579194119', NULL, NULL, 1, NULL, 4.40),
(1600, '1729114339', NULL, NULL, 4, NULL, 4.40),
(1601, '3613785349', NULL, NULL, 22, NULL, 4.50),
(1602, '2165961367', NULL, NULL, 130, NULL, 2.50),
(1603, '4555768479', NULL, NULL, 15, NULL, 2.53),
(1604, '3442925226', NULL, NULL, 45, NULL, 2.60),
(1605, '1618193364', NULL, NULL, 22, NULL, 2.80),
(1606, '2838365941', NULL, NULL, 38, NULL, 940.00),
(1607, '5892828159', NULL, NULL, 15, NULL, 23.00),
(1608, '5146925628', NULL, NULL, 15, NULL, 31.00),
(1609, '9269852121', NULL, NULL, 22, NULL, 32.00),
(1610, '7284734441', NULL, NULL, 15, NULL, 8.83);

-- --------------------------------------------------------

--
-- Table structure for table `supplier_product_price`
--

CREATE TABLE `supplier_product_price` (
  `id` int(255) NOT NULL,
  `supplier_id` varchar(255) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `update_price` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `status` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `supplier_product_price`
--

INSERT INTO `supplier_product_price` (`id`, `supplier_id`, `product_id`, `update_price`, `date`, `time`, `status`) VALUES
(1, '18', '9642491257', '400.00', '2022-08-10', '10:52:43am', 1),
(2, '14', '9186736396', '18.00', '2022-08-10', '10:52:43am', 1),
(3, '23', '7775577523', '13.00', '2022-08-10', '10:52:43am', 1),
(4, '1', '7251146751', '85.00', '2022-08-10', '10:52:43am', 1),
(5, '14', '6986126135', '26.00', '2022-08-10', '10:52:43am', 1),
(6, '20', '6762975686', '1450.00', '2022-08-10', '10:52:43am', 1),
(7, '1', '5866725828', '100.00', '2022-08-10', '10:52:43am', 1),
(8, '25', '4888939647', '370.00', '2022-08-10', '10:52:43am', 1),
(9, '1', '1393189199', '12.00', '2022-08-10', '10:52:43am', 1);

-- --------------------------------------------------------

--
-- Table structure for table `synchronizer_setting`
--

CREATE TABLE `synchronizer_setting` (
  `id` int(11) NOT NULL,
  `hostname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `port` varchar(10) NOT NULL,
  `debug` varchar(10) NOT NULL,
  `project_root` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tax_collection`
--

CREATE TABLE `tax_collection` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `customer_id` varchar(30) NOT NULL,
  `relation_id` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tax_settings`
--

CREATE TABLE `tax_settings` (
  `id` int(11) NOT NULL,
  `default_value` float NOT NULL,
  `tax_name` varchar(250) NOT NULL,
  `nt` int(11) NOT NULL,
  `reg_no` varchar(100) NOT NULL,
  `is_show` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` int(11) NOT NULL,
  `unit_id` varchar(255) CHARACTER SET latin1 NOT NULL,
  `unit_name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `unit_id`, `unit_name`, `status`) VALUES
(1, 'ER7GXLBJB54LZDQ', 'Bag', 1),
(2, 'I5D3PQFEGF2VRP3', 'Box', 1),
(3, '4SPCGA5L8HUVW5N', 'Coil', 1),
(4, 'TNG9TEPRJ3HQQRJ', 'Cyl', 1),
(5, '8U8GTHGAIOFG8M7', 'Days', 1),
(6, 'PBS7OOTGGGMKRLH', 'Drum', 1),
(7, 'H8OCQED7JUDXX5V', 'Dzn', 1),
(8, 'IQG6NUOWGDIADPI', 'Ft', 1),
(9, 'UX71R4CWI38J999', 'Gallon', 1),
(10, '48X6BXJVVVNLN2A', 'Gm', 1),
(11, '7M9S8SKYLC8Q5W4', 'Kg', 1),
(12, '81ORVKK4E5M24LP', 'Lbs', 1),
(13, 'YXN5MMEU8Q2M47B', 'Link', 1),
(14, 'NSLTWVSGR1BE4H9', 'Ltr', 1),
(15, 'RXQ49SK54WBHFK1', 'Mtr', 1),
(16, 'CL17BV9VUWD9VGJ', 'Pair', 1),
(17, 'JHHJURDOJXDMSZO', 'Pcs', 1),
(18, 'ZARXF1PKCP9JR7L', 'Person', 1),
(19, 'A1MBQ4SPK66VOBA', 'Pg', 1),
(20, 'M5TQHVJDRY3B795', 'Pkt', 1),
(21, 'SHJYC6M15SVSSX6', 'Ream', 1),
(22, 'NZU6WIUG83UPGTA', 'Roll', 1),
(23, '3HXP7HMSWVAM5N9', 'Set', 1),
(24, 'QW1TZHXVFYJVTQL', 'Sheet', 1),
(25, '5BFVUVKMJ23ILHK', 'Sqft', 1),
(26, 'H88TRYUERJKARYL', 'Tin', 1),
(27, 'CO2T3238XBT83UC', 'Yrd', 1);

-- --------------------------------------------------------

--
-- Table structure for table `unit_cost_history`
--

CREATE TABLE `unit_cost_history` (
  `id` int(255) NOT NULL,
  `supplier_id` varchar(255) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `update_unit_cost` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `status` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_id` varchar(15) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `company_name` varchar(250) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `gender` int(2) DEFAULT NULL,
  `date_of_birth` varchar(255) DEFAULT NULL,
  `logo` varchar(250) DEFAULT NULL,
  `status` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_id`, `last_name`, `first_name`, `company_name`, `address`, `phone`, `gender`, `date_of_birth`, `logo`, `status`) VALUES
(1, '2', 'Engineering', 'Global Medical', NULL, NULL, NULL, NULL, NULL, 'http://erp.devenport.co/assets/dist/img/profile_picture/b4d9b0776d8f1b9d214c9005be86a5cb.png', 0),
(2, '1', 'User', 'Admin', NULL, NULL, NULL, NULL, NULL, 'http://knight-rider.co/assets/dist/img/profile_picture/profile.jpg', 1),
(3, 'OpSoxJvBbbS8Rws', 'Alam', 'Touhid', NULL, NULL, NULL, NULL, NULL, 'http://erp.devenport.co/assets/dist/img/profile_picture/profile.jpg', 1),
(13, 'BVv5Axt7rgo5CWU', 'Mahmud', 'Muhtadi', NULL, NULL, NULL, NULL, NULL, 'https://paradisemarinebd.com/erp/assets/dist/img/profile_picture/profile.jpg', 1),
(11, 'ByIUOew8UWnm8dD', 'Marine', 'Paradise', NULL, NULL, NULL, NULL, NULL, 'https://paradisemarinebd.com/erp/assets/dist/img/profile_picture/profile.jpg', 1),
(19, 'SP2V7b91OSQ96f2', 'MC', 'Marine Explorers Ltd.', NULL, NULL, NULL, NULL, NULL, 'https://paradisemarinebd.com/erp/assets/dist/img/profile_picture/profile.jpg', 1),
(14, 'ZtMYLcz3Uq5wWRa', 'Huq Noyon', 'Obydul', NULL, NULL, NULL, NULL, NULL, 'https://paradisemarinebd.com/erp/assets/dist/img/profile_picture/profile.jpg', 1),
(15, 'IM7O2QrS5m0nQtM', 'Newaj Riyad', 'Enayet', NULL, NULL, NULL, NULL, NULL, 'https://paradisemarinebd.com/erp/assets/dist/img/profile_picture/profile.jpg', 1),
(16, 'JTjFT272Tp35CKn', 'Haque', 'SM Ariful', NULL, NULL, NULL, NULL, NULL, 'https://paradisemarinebd.com/erp/assets/dist/img/profile_picture/profile.jpg', 1),
(17, 'xzqBIxlaeZ468PG', 'Rony', 'Emdad Hossain', NULL, NULL, NULL, NULL, NULL, 'https://paradisemarinebd.com/erp/assets/dist/img/profile_picture/profile.jpg', 1),
(18, 'p00TiZ6UE16DZNp', 'Huda', 'Nurul', NULL, NULL, NULL, NULL, NULL, 'https://paradisemarinebd.com/erp/assets/dist/img/profile_picture/profile.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE `user_login` (
  `id` int(11) NOT NULL,
  `user_id` varchar(15) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `user_type` int(2) DEFAULT NULL,
  `security_code` varchar(255) DEFAULT NULL,
  `status` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`id`, `user_id`, `username`, `password`, `user_type`, `security_code`, `status`) VALUES
(1, '2', 'gmebd@yahoo.com', '08e7d644d6334b55ba924f343e3b824d', 1, NULL, 0),
(2, '1', 'sonicictbd@gmail.com', '41d99b369894eb1ec3f461135132d8bb', 1, '200904082142', 1),
(3, '1', 'sonicictbd@gmail.com', '41d99b369894eb1ec3f461135132d8bb', 1, '200904082142', 1),
(4, '2', 'gmebd@yahoo.com', '08e7d644d6334b55ba924f343e3b824d', 1, '200905071406', 0),
(5, 'OpSoxJvBbbS8Rws', 'touhidalm82@gmail.com', '04c5a7b79f55a5df65f2610f436d5c47', 1, '201030122448', 1),
(15, 'BVv5Axt7rgo5CWU', 'muhtadi@mahmudcon.com', 'b829f54b49f6f4459ffde517fca823f8', 2, NULL, 1),
(13, 'ByIUOew8UWnm8dD', 'paradise@gmail.com', '41d99b369894eb1ec3f461135132d8bb', 2, NULL, 1),
(21, 'SP2V7b91OSQ96f2', 'mahmudgroupctg@gmail.com', '4dedbbfe577b43b0cf423a49c346736b', 2, NULL, 1),
(16, 'ZtMYLcz3Uq5wWRa', 'obydulhn@gmail.com', '962c52a977895254a6324fea2124dc6e', 2, NULL, 1),
(17, 'IM7O2QrS5m0nQtM', 'enayetnewajr@gmail.com', '606152ef39ff685af8e002453e5feaca', 2, NULL, 1),
(18, 'JTjFT272Tp35CKn', 'ariful.haque.pmt@gmail.com', 'dae66a510030556a8a4b89e85334c5ea', 2, NULL, 1),
(19, 'xzqBIxlaeZ468PG', 'emdadhrony@gmail.com', 'dce424c28a3c31ebda77163edd433092', 2, NULL, 1),
(20, 'p00TiZ6UE16DZNp', 'nurul.hudapmt2022@gmail.com', '077942558014ed1bfd4c63ac26359312', 2, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `warrenty_return`
--

CREATE TABLE `warrenty_return` (
  `return_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `product_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `invoice_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `invoice_details_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `purchase_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `date_purchase` varchar(30) CHARACTER SET latin1 NOT NULL,
  `date_return` varchar(30) CHARACTER SET latin1 NOT NULL,
  `byy_qty` float NOT NULL,
  `ret_qty` float NOT NULL,
  `was_qty` float NOT NULL,
  `customer_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `supplier_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `product_rate` decimal(10,2) DEFAULT NULL,
  `deduction` float DEFAULT NULL,
  `total_deduct` decimal(10,2) DEFAULT NULL,
  `total_tax` decimal(10,2) DEFAULT NULL,
  `service_charge` decimal(10,2) NOT NULL,
  `total_ret_amount` decimal(10,2) DEFAULT NULL,
  `net_total_amount` decimal(10,2) DEFAULT NULL,
  `reason` text CHARACTER SET latin1 NOT NULL,
  `usablity` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wastage_dec`
--

CREATE TABLE `wastage_dec` (
  `id` int(11) NOT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `wastage_quantity` varchar(255) DEFAULT NULL,
  `dead_quantity` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `web_setting`
--

CREATE TABLE `web_setting` (
  `setting_id` int(11) NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `invoice_logo` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `currency` varchar(10) DEFAULT NULL,
  `timezone` varchar(150) NOT NULL,
  `currency_position` varchar(10) DEFAULT NULL,
  `footer_text` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `rtr` varchar(255) DEFAULT NULL,
  `captcha` int(11) DEFAULT 1 COMMENT '0=active,1=inactive',
  `site_key` varchar(250) DEFAULT NULL,
  `secret_key` varchar(250) DEFAULT NULL,
  `discount_type` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_setting`
--

INSERT INTO `web_setting` (`setting_id`, `logo`, `invoice_logo`, `favicon`, `currency`, `timezone`, `currency_position`, `footer_text`, `language`, `rtr`, `captcha`, `site_key`, `secret_key`, `discount_type`) VALUES
(1, 'https://paradisemarinebd.com/erp/./my-assets/image/logo/6692fe04428461a7789f9fe715905b73.png', 'https://paradisemarinebd.com/erp/./my-assets/image/logo/2f0d5a9460fcec433cad4700e46e0e06.png', 'https://paradisemarinebd.com/erp/my-assets/image/logo/c0d3bab4c7b1b28fa8e60f43755d6cf3.png', 'Tk', 'Asia/Dhaka', '0', 'Copyright© 2021-2022 ParadiseMine', 'english', '0', 1, '', '', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acc_coa`
--
ALTER TABLE `acc_coa`
  ADD PRIMARY KEY (`HeadName`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indexes for table `acc_transaction`
--
ALTER TABLE `acc_transaction`
  ADD UNIQUE KEY `ID` (`ID`),
  ADD KEY `COAID` (`COAID`);

--
-- Indexes for table `app_setting`
--
ALTER TABLE `app_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`att_id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `bank_add`
--
ALTER TABLE `bank_add`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `barcode_print`
--
ALTER TABLE `barcode_print`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `barcode_print_details`
--
ALTER TABLE `barcode_print_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bill_details`
--
ALTER TABLE `bill_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bkash_add`
--
ALTER TABLE `bkash_add`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branch_name`
--
ALTER TABLE `branch_name`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `courier_id` (`courier_id`);

--
-- Indexes for table `central_warehouse`
--
ALTER TABLE `central_warehouse`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courier_name`
--
ALTER TABLE `courier_name`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currency_tbl`
--
ALTER TABLE `currency_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_information`
--
ALTER TABLE `customer_information`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `customer_id_two` (`customer_id_two`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `customer_vessel`
--
ALTER TABLE `customer_vessel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cus_cheque`
--
ALTER TABLE `cus_cheque`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designation`
--
ALTER TABLE `designation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_config`
--
ALTER TABLE `email_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_academic`
--
ALTER TABLE `employee_academic`
  ADD PRIMARY KEY (`ac_id`);

--
-- Indexes for table `employee_ex`
--
ALTER TABLE `employee_ex`
  ADD PRIMARY KEY (`ex_id`);

--
-- Indexes for table `employee_history`
--
ALTER TABLE `employee_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_salary_payment`
--
ALTER TABLE `employee_salary_payment`
  ADD PRIMARY KEY (`emp_sal_pay_id`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `generate_id` (`generate_id`);

--
-- Indexes for table `employee_salary_setup`
--
ALTER TABLE `employee_salary_setup`
  ADD PRIMARY KEY (`e_s_s_id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `employee_tr`
--
ALTER TABLE `employee_tr`
  ADD PRIMARY KEY (`tr_id`);

--
-- Indexes for table `erp_entry_details`
--
ALTER TABLE `erp_entry_details`
  ADD PRIMARY KEY (`entry_id`);

--
-- Indexes for table `expense`
--
ALTER TABLE `expense`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense_item`
--
ALTER TABLE `expense_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `invoice_id` (`invoice_id`);

--
-- Indexes for table `invoice_details`
--
ALTER TABLE `invoice_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_id` (`invoice_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `money_receipt`
--
ALTER TABLE `money_receipt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `outlet_warehouse`
--
ALTER TABLE `outlet_warehouse`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payroll_tax_setup`
--
ALTER TABLE `payroll_tax_setup`
  ADD PRIMARY KEY (`tax_setup_id`);

--
-- Indexes for table `personal_loan`
--
ALTER TABLE `personal_loan`
  ADD PRIMARY KEY (`per_loan_id`);

--
-- Indexes for table `person_information`
--
ALTER TABLE `person_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `person_ledger`
--
ALTER TABLE `person_ledger`
  ADD PRIMARY KEY (`id`),
  ADD KEY `person_id` (`person_id`);

--
-- Indexes for table `pesonal_loan_information`
--
ALTER TABLE `pesonal_loan_information`
  ADD PRIMARY KEY (`id`),
  ADD KEY `person_id` (`person_id`);

--
-- Indexes for table `product_brand`
--
ALTER TABLE `product_brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_information`
--
ALTER TABLE `product_information`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `brand_id` (`brand_id`) USING BTREE,
  ADD KEY `ptype_ID` (`ptype_id`),
  ADD KEY `product_id_two` (`product_id_two`);

--
-- Indexes for table `product_model`
--
ALTER TABLE `product_model`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_purchase`
--
ALTER TABLE `product_purchase`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_id` (`purchase_id`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indexes for table `product_purchase_details`
--
ALTER TABLE `product_purchase_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_id` (`purchase_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `product_return`
--
ALTER TABLE `product_return`
  ADD KEY `product_id` (`product_id`),
  ADD KEY `invoice_id` (`invoice_id`),
  ADD KEY `purchase_id` (`purchase_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indexes for table `product_service`
--
ALTER TABLE `product_service`
  ADD PRIMARY KEY (`service_id`);

--
-- Indexes for table `product_subcat`
--
ALTER TABLE `product_subcat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_type`
--
ALTER TABLE `product_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_order_cart`
--
ALTER TABLE `purchase_order_cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quotation`
--
ALTER TABLE `quotation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `quot_no` (`quot_no`),
  ADD KEY `quotation_id` (`quotation_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `quotation_service_used`
--
ALTER TABLE `quotation_service_used`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quot_id` (`quot_id`),
  ADD KEY `service_id` (`service_id`);

--
-- Indexes for table `quotation_taxinfo`
--
ALTER TABLE `quotation_taxinfo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `quot_products_used`
--
ALTER TABLE `quot_products_used`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `quot_id` (`quot_id`);

--
-- Indexes for table `role_permission`
--
ALTER TABLE `role_permission`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_module_id` (`fk_module_id`),
  ADD KEY `fk_user_id` (`role_id`);

--
-- Indexes for table `rqsn`
--
ALTER TABLE `rqsn`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rqsn_cart`
--
ALTER TABLE `rqsn_cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rqsn_details`
--
ALTER TABLE `rqsn_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rqsn_return`
--
ALTER TABLE `rqsn_return`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salary_sheet_generate`
--
ALTER TABLE `salary_sheet_generate`
  ADD PRIMARY KEY (`ssg_id`);

--
-- Indexes for table `salary_type`
--
ALTER TABLE `salary_type`
  ADD PRIMARY KEY (`salary_type_id`);

--
-- Indexes for table `sec_role`
--
ALTER TABLE `sec_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sec_userrole`
--
ALTER TABLE `sec_userrole`
  ADD UNIQUE KEY `ID` (`id`);

--
-- Indexes for table `sent_sms`
--
ALTER TABLE `sent_sms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_invoice`
--
ALTER TABLE `service_invoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `service_invoice_details`
--
ALTER TABLE `service_invoice_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_id` (`service_id`);

--
-- Indexes for table `sms_settings`
--
ALTER TABLE `sms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_module`
--
ALTER TABLE `sub_module`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier_address`
--
ALTER TABLE `supplier_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier_contact`
--
ALTER TABLE `supplier_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier_email`
--
ALTER TABLE `supplier_email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier_information`
--
ALTER TABLE `supplier_information`
  ADD PRIMARY KEY (`supplier_id`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indexes for table `supplier_mobile`
--
ALTER TABLE `supplier_mobile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier_payment`
--
ALTER TABLE `supplier_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier_phone`
--
ALTER TABLE `supplier_phone`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier_product`
--
ALTER TABLE `supplier_product`
  ADD PRIMARY KEY (`supplier_pr_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `supplier_id` (`supplier_id`),
  ADD KEY `product_id_two` (`product_id_two`);

--
-- Indexes for table `supplier_product_price`
--
ALTER TABLE `supplier_product_price`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tax_collection`
--
ALTER TABLE `tax_collection`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `tax_settings`
--
ALTER TABLE `tax_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unit_cost_history`
--
ALTER TABLE `unit_cost_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_login`
--
ALTER TABLE `user_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `warrenty_return`
--
ALTER TABLE `warrenty_return`
  ADD PRIMARY KEY (`return_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `invoice_id` (`invoice_id`),
  ADD KEY `purchase_id` (`purchase_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indexes for table `wastage_dec`
--
ALTER TABLE `wastage_dec`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_setting`
--
ALTER TABLE `web_setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acc_transaction`
--
ALTER TABLE `acc_transaction`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `app_setting`
--
ALTER TABLE `app_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `att_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bank_add`
--
ALTER TABLE `bank_add`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `barcode_print`
--
ALTER TABLE `barcode_print`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `barcode_print_details`
--
ALTER TABLE `barcode_print_details`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bill_details`
--
ALTER TABLE `bill_details`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bkash_add`
--
ALTER TABLE `bkash_add`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `branch_name`
--
ALTER TABLE `branch_name`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `central_warehouse`
--
ALTER TABLE `central_warehouse`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `courier_name`
--
ALTER TABLE `courier_name`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currency_tbl`
--
ALTER TABLE `currency_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `customer_information`
--
ALTER TABLE `customer_information`
  MODIFY `customer_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customer_vessel`
--
ALTER TABLE `customer_vessel`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cus_cheque`
--
ALTER TABLE `cus_cheque`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `designation`
--
ALTER TABLE `designation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_config`
--
ALTER TABLE `email_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employee_academic`
--
ALTER TABLE `employee_academic`
  MODIFY `ac_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `employee_ex`
--
ALTER TABLE `employee_ex`
  MODIFY `ex_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `employee_history`
--
ALTER TABLE `employee_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `employee_salary_payment`
--
ALTER TABLE `employee_salary_payment`
  MODIFY `emp_sal_pay_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employee_salary_setup`
--
ALTER TABLE `employee_salary_setup`
  MODIFY `e_s_s_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `employee_tr`
--
ALTER TABLE `employee_tr`
  MODIFY `tr_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `erp_entry_details`
--
ALTER TABLE `erp_entry_details`
  MODIFY `entry_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `expense`
--
ALTER TABLE `expense`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expense_item`
--
ALTER TABLE `expense_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `invoice_details`
--
ALTER TABLE `invoice_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=966;

--
-- AUTO_INCREMENT for table `module`
--
ALTER TABLE `module`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `money_receipt`
--
ALTER TABLE `money_receipt`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `outlet_warehouse`
--
ALTER TABLE `outlet_warehouse`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `payroll_tax_setup`
--
ALTER TABLE `payroll_tax_setup`
  MODIFY `tax_setup_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_loan`
--
ALTER TABLE `personal_loan`
  MODIFY `per_loan_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `person_information`
--
ALTER TABLE `person_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `person_ledger`
--
ALTER TABLE `person_ledger`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pesonal_loan_information`
--
ALTER TABLE `pesonal_loan_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_brand`
--
ALTER TABLE `product_brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `product_information`
--
ALTER TABLE `product_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1611;

--
-- AUTO_INCREMENT for table `product_model`
--
ALTER TABLE `product_model`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product_purchase`
--
ALTER TABLE `product_purchase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_purchase_details`
--
ALTER TABLE `product_purchase_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product_service`
--
ALTER TABLE `product_service`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_subcat`
--
ALTER TABLE `product_subcat`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `product_type`
--
ALTER TABLE `product_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_order_cart`
--
ALTER TABLE `purchase_order_cart`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `quotation`
--
ALTER TABLE `quotation`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quotation_service_used`
--
ALTER TABLE `quotation_service_used`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quotation_taxinfo`
--
ALTER TABLE `quotation_taxinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `quot_products_used`
--
ALTER TABLE `quot_products_used`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `role_permission`
--
ALTER TABLE `role_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15353;

--
-- AUTO_INCREMENT for table `rqsn`
--
ALTER TABLE `rqsn`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `rqsn_cart`
--
ALTER TABLE `rqsn_cart`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `rqsn_details`
--
ALTER TABLE `rqsn_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `rqsn_return`
--
ALTER TABLE `rqsn_return`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `salary_sheet_generate`
--
ALTER TABLE `salary_sheet_generate`
  MODIFY `ssg_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `salary_type`
--
ALTER TABLE `salary_type`
  MODIFY `salary_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sec_role`
--
ALTER TABLE `sec_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `sec_userrole`
--
ALTER TABLE `sec_userrole`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `sent_sms`
--
ALTER TABLE `sent_sms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `service_invoice`
--
ALTER TABLE `service_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service_invoice_details`
--
ALTER TABLE `service_invoice_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sms_settings`
--
ALTER TABLE `sms_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sub_module`
--
ALTER TABLE `sub_module`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;

--
-- AUTO_INCREMENT for table `supplier_address`
--
ALTER TABLE `supplier_address`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supplier_contact`
--
ALTER TABLE `supplier_contact`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supplier_email`
--
ALTER TABLE `supplier_email`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supplier_information`
--
ALTER TABLE `supplier_information`
  MODIFY `supplier_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;

--
-- AUTO_INCREMENT for table `supplier_mobile`
--
ALTER TABLE `supplier_mobile`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supplier_payment`
--
ALTER TABLE `supplier_payment`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supplier_phone`
--
ALTER TABLE `supplier_phone`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supplier_product`
--
ALTER TABLE `supplier_product`
  MODIFY `supplier_pr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1611;

--
-- AUTO_INCREMENT for table `supplier_product_price`
--
ALTER TABLE `supplier_product_price`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tax_collection`
--
ALTER TABLE `tax_collection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tax_settings`
--
ALTER TABLE `tax_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `unit_cost_history`
--
ALTER TABLE `unit_cost_history`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `user_login`
--
ALTER TABLE `user_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `wastage_dec`
--
ALTER TABLE `wastage_dec`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_setting`
--
ALTER TABLE `web_setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
