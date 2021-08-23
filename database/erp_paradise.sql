-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 22, 2021 at 10:17 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `erp_paradise`
--

-- --------------------------------------------------------

--
-- Table structure for table `acc_coa`
--

CREATE TABLE `acc_coa` (
  `HeadCode` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `HeadName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
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
('502040010', '0-ArmanUllah', 'Employee Ledger', 3, 1, 1, 0, 'L', 0, 0, NULL, NULL, '0.00', 'OpSoxJvBbbS8Rws', '2021-03-14 11:07:51', '', '0000-00-00 00:00:00'),
('502040010', '0-IrfanUllah', 'Employee Ledger', 3, 1, 1, 0, 'L', 0, 0, NULL, NULL, '0.00', 'OpSoxJvBbbS8Rws', '2021-03-14 09:53:49', '', '0000-00-00 00:00:00'),
('502040010', '0-Md Arman Ullah', 'Employee Ledger', 3, 1, 1, 0, 'L', 0, 0, NULL, NULL, '0.00', 'OpSoxJvBbbS8Rws', '2021-03-14 11:16:13', '', '0000-00-00 00:00:00'),
('102030000002', '0-Rifat', 'Customer Receivable', 4, 1, 1, 0, 'A', 0, 0, 0, NULL, '0.00', 'tF2YChLBH86gHfG', '2021-01-25 02:43:01', '', '0000-00-00 00:00:00'),
('102010210', '01836714343', 'Cash At Bkash', 4, 1, 1, 0, 'A', 0, 0, NULL, NULL, '0.00', 'OpSoxJvBbbS8Rws', '2021-02-01 07:27:22', '', '0000-00-00 00:00:00'),
('5020023', '1-Codeweavers', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 1, '0.00', 'OpSoxJvBbbS8Rws', '2021-04-03 09:08:30', '', '0000-00-00 00:00:00'),
('102030000001', '1-Walking Customer', 'Customer Receivable', 4, 1, 1, 0, 'A', 0, 0, 1, NULL, '0.00', '1', '2019-11-16 08:44:42', '', '0000-00-00 00:00:00'),
('502040009', '10-Engineering Khan', 'Employee Ledger', 3, 1, 1, 0, 'L', 0, 0, NULL, NULL, '0.00', 'OpSoxJvBbbS8Rws', '2021-03-14 06:48:50', '', '0000-00-00 00:00:00'),
('5020003', '10-Shenzhen Mindray Bio-Medical Electronics Co., Ltd', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 10, '0.00', 'OpSoxJvBbbS8Rws', '2021-01-28 01:27:48', '', '0000-00-00 00:00:00'),
('502040010', '11-MainulUllah', 'Employee Ledger', 3, 1, 1, 0, 'L', 0, 0, NULL, NULL, '0.00', 'OpSoxJvBbbS8Rws', '2021-03-14 06:52:27', '', '0000-00-00 00:00:00'),
('102030000003', '11-Rifat', 'Customer Receivable', 4, 1, 1, 0, 'A', 0, 0, 11, NULL, '0.00', 'tF2YChLBH86gHfG', '2021-01-25 02:54:26', '', '0000-00-00 00:00:00'),
('5020004', '11-TEKNOVA Medical Systems Limited', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 11, '0.00', 'OpSoxJvBbbS8Rws', '2021-01-28 01:27:48', '', '0000-00-00 00:00:00'),
('102030000004', '12-Customer Hasan', 'Customer Receivable', 4, 1, 1, 0, 'A', 0, 0, 12, NULL, '0.00', 'OpSoxJvBbbS8Rws', '2021-02-01 09:43:34', '', '0000-00-00 00:00:00'),
('502040010', '12-Engineering ihy', 'Employee Ledger', 3, 1, 1, 0, 'L', 0, 0, NULL, NULL, '0.00', 'OpSoxJvBbbS8Rws', '2021-03-14 06:55:12', '', '0000-00-00 00:00:00'),
('5020005', '12-Shenzhen Comen Medical Instruments Co., Ltd.', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 12, '0.00', 'OpSoxJvBbbS8Rws', '2021-01-28 01:27:48', '', '0000-00-00 00:00:00'),
('5020006', '13-Boditech Med Inc.', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 13, '0.00', 'OpSoxJvBbbS8Rws', '2021-01-28 01:27:48', '', '0000-00-00 00:00:00'),
('502040010', '13-DSUllah', 'Employee Ledger', 3, 1, 1, 0, 'L', 0, 0, NULL, NULL, '0.00', 'OpSoxJvBbbS8Rws', '2021-03-14 07:27:26', '', '0000-00-00 00:00:00'),
('102030000005', '13-Helen', 'Customer Receivable', 4, 1, 1, 0, 'A', 0, 0, 13, NULL, '0.00', 'OpSoxJvBbbS8Rws', '2021-02-08 06:57:01', '', '0000-00-00 00:00:00'),
('5020007', '14-BMC Medical Co., Ltd.', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 14, '0.00', 'OpSoxJvBbbS8Rws', '2021-01-28 01:27:48', '', '0000-00-00 00:00:00'),
('502040010', '14-RIfat Khan', 'Employee Ledger', 3, 1, 1, 0, 'L', 0, 0, NULL, NULL, '0.00', 'OpSoxJvBbbS8Rws', '2021-03-14 07:38:02', '', '0000-00-00 00:00:00'),
('102030000006', '14-Rishi', 'Customer Receivable', 4, 1, 1, 0, 'A', 0, 0, 14, NULL, '0.00', 'OpSoxJvBbbS8Rws', '2021-02-08 07:27:49', '', '0000-00-00 00:00:00'),
('502040010', '15-Engineering Solution', 'Employee Ledger', 3, 1, 1, 0, 'L', 0, 0, NULL, NULL, '0.00', 'OpSoxJvBbbS8Rws', '2021-03-14 07:46:41', '', '0000-00-00 00:00:00'),
('102030000007', '15-GMEBD', 'Customer Receivable', 4, 1, 1, 0, 'A', 0, 0, 15, NULL, '0.00', 'OpSoxJvBbbS8Rws', '2021-03-01 08:46:15', '', '0000-00-00 00:00:00'),
('5020008', '15-Hunan VentMed Medical Technology Co., Ltd.', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 15, '0.00', 'OpSoxJvBbbS8Rws', '2021-01-28 01:27:48', '', '0000-00-00 00:00:00'),
('502040010', '16-Engineering Solution', 'Employee Ledger', 3, 1, 1, 0, 'L', 0, 0, NULL, NULL, '0.00', 'OpSoxJvBbbS8Rws', '2021-03-14 07:47:33', '', '0000-00-00 00:00:00'),
('102030000008', '16-Mizbah', 'Customer Receivable', 4, 1, 1, 0, 'A', 0, 0, 16, NULL, '0.00', 'OpSoxJvBbbS8Rws', '2021-03-31 07:43:49', '', '0000-00-00 00:00:00'),
('5020009', '16-SHENZHEN EAST MEDICAL TECHNOLOGY  CO., LTD ', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 16, '0.00', 'OpSoxJvBbbS8Rws', '2021-01-28 01:27:48', '', '0000-00-00 00:00:00'),
('502040010', '17-Engineering Solution', 'Employee Ledger', 3, 1, 1, 0, 'L', 0, 0, NULL, NULL, '0.00', 'OpSoxJvBbbS8Rws', '2021-03-14 09:41:19', '', '0000-00-00 00:00:00'),
('5020010', '17-SHENZHEN EMPEROR ELECTRONIC TECHNOLOGY CO., LTD', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 17, '0.00', 'OpSoxJvBbbS8Rws', '2021-01-28 01:27:48', '', '0000-00-00 00:00:00'),
('502040010', '18-Engineering Solution', 'Employee Ledger', 3, 1, 1, 0, 'L', 0, 0, NULL, NULL, '0.00', 'OpSoxJvBbbS8Rws', '2021-03-14 09:41:25', '', '0000-00-00 00:00:00'),
('5020011', '18-WUHAN ZONCARE BIO-M EDICAL ELECTRONICS CO.,LTD', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 18, '0.00', 'OpSoxJvBbbS8Rws', '2021-01-28 01:27:48', '', '0000-00-00 00:00:00'),
('502040010', '19-Engineering Solution', 'Employee Ledger', 3, 1, 1, 0, 'L', 0, 0, NULL, NULL, '0.00', 'OpSoxJvBbbS8Rws', '2021-03-14 09:41:45', '', '0000-00-00 00:00:00'),
('5020012', '19-XIAN HAIYE MEDICAL EQUIPMENT., LTD', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 19, '0.00', 'OpSoxJvBbbS8Rws', '2021-01-28 01:27:48', '', '0000-00-00 00:00:00'),
('5020024', '2-Arman', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 2, '0.00', 'OpSoxJvBbbS8Rws', '2021-04-03 09:10:33', '', '0000-00-00 00:00:00'),
('502040001', '2-Md. IsahaqHossain', 'Employee Ledger', 3, 1, 1, 0, 'L', 0, 0, NULL, NULL, '0.00', 'tF2YChLBH86gHfG', '2021-01-28 07:32:03', 'OpSoxJvBbbS8Rws', '2021-03-09 09:48:22'),
('5020026', '2-Pran', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 2, '0.00', 'OpSoxJvBbbS8Rws', '2021-08-09 07:14:37', '', '0000-00-00 00:00:00'),
('502040010', '20-Engineering Solution', 'Employee Ledger', 3, 1, 1, 0, 'L', 0, 0, NULL, NULL, '0.00', 'OpSoxJvBbbS8Rws', '2021-03-14 09:41:58', '', '0000-00-00 00:00:00'),
('5020013', '20-Garnier Diagnostic GMbH', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 20, '0.00', 'OpSoxJvBbbS8Rws', '2021-01-28 01:27:48', '', '0000-00-00 00:00:00'),
('5020014', '21-CARETIUM MEDICAL INSTRUMENTS CO., LIMITED', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 21, '0.00', 'OpSoxJvBbbS8Rws', '2021-01-28 01:27:48', '', '0000-00-00 00:00:00'),
('502040010', '21-MdUllah', 'Employee Ledger', 3, 1, 1, 0, 'L', 0, 0, NULL, NULL, '0.00', 'OpSoxJvBbbS8Rws', '2021-03-14 10:00:45', '', '0000-00-00 00:00:00'),
('502040010', '22-MdUllah', 'Employee Ledger', 3, 1, 1, 0, 'L', 0, 0, NULL, NULL, '0.00', 'OpSoxJvBbbS8Rws', '2021-03-14 10:03:00', '', '0000-00-00 00:00:00'),
('5020015', '22-Shenzhen Prokan Electronics Inc.', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 22, '0.00', 'OpSoxJvBbbS8Rws', '2021-01-28 01:27:48', '', '0000-00-00 00:00:00'),
('5020016', '23-GENORAY CO., LTD.', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 23, '0.00', 'OpSoxJvBbbS8Rws', '2021-01-28 01:27:48', '', '0000-00-00 00:00:00'),
('502040010', '23-Md Arman Ullah', 'Employee Ledger', 3, 1, 1, 0, 'L', 0, 0, NULL, NULL, '0.00', 'OpSoxJvBbbS8Rws', '2021-03-14 10:12:17', '', '0000-00-00 00:00:00'),
('502040010', '24-Engineering Ullah', 'Employee Ledger', 3, 1, 1, 0, 'L', 0, 0, NULL, NULL, '0.00', 'OpSoxJvBbbS8Rws', '2021-03-14 10:45:01', '', '0000-00-00 00:00:00'),
('5020017', '24-Philosys Co. Ltd', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 24, '0.00', 'OpSoxJvBbbS8Rws', '2021-01-28 01:27:48', '', '0000-00-00 00:00:00'),
('502040010', '25-ArmanUllah', 'Employee Ledger', 3, 1, 1, 0, 'L', 0, 0, NULL, NULL, '0.00', 'OpSoxJvBbbS8Rws', '2021-03-14 11:20:46', 'OpSoxJvBbbS8Rws', '2021-03-15 08:12:45'),
('5020018', '25-BIOTEC UK LTD', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 25, '0.00', 'OpSoxJvBbbS8Rws', '2021-01-28 01:27:48', '', '0000-00-00 00:00:00'),
('5020019', '26-Greiner Diagnostic GmbH', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 26, '0.00', 'OpSoxJvBbbS8Rws', '2021-01-28 01:27:48', '', '0000-00-00 00:00:00'),
('5020020', '27-Shijiazhuang Hipro Biotechnology Co. Ltd', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 27, '0.00', 'OpSoxJvBbbS8Rws', '2021-01-28 01:27:48', '', '0000-00-00 00:00:00'),
('5020021', '28-Local Purchase', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 28, '0.00', 'OpSoxJvBbbS8Rws', '2021-01-28 01:27:48', '', '0000-00-00 00:00:00'),
('5020022', '29-3s', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 29, '0.00', 'OpSoxJvBbbS8Rws', '2021-02-25 12:27:43', '', '0000-00-00 00:00:00'),
('502040002', '3-Md ArmanUllah', 'Employee Ledger', 3, 1, 1, 0, 'L', 0, 0, NULL, NULL, '0.00', 'OpSoxJvBbbS8Rws', '2021-03-08 08:06:52', 'OpSoxJvBbbS8Rws', '2021-03-09 10:22:27'),
('5020027', '4-BCD', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 4, '0.00', 'OpSoxJvBbbS8Rws', '2021-08-09 11:52:29', '', '0000-00-00 00:00:00'),
('502040003', '4-Rifat Khan', 'Employee Ledger', 3, 1, 1, 0, 'L', 0, 0, NULL, NULL, '0.00', 'OpSoxJvBbbS8Rws', '2021-03-09 08:16:45', 'OpSoxJvBbbS8Rws', '2021-03-09 10:21:58'),
('502040004', '5-JohnHarrison', 'Employee Ledger', 3, 1, 1, 0, 'L', 0, 0, NULL, NULL, '0.00', 'OpSoxJvBbbS8Rws', '2021-03-13 07:15:23', '', '0000-00-00 00:00:00'),
('5020025', '6-ABCD', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 6, '0.00', 'OpSoxJvBbbS8Rws', '2021-08-09 07:07:27', '', '0000-00-00 00:00:00'),
('502040005', '6-ArmanUllah', 'Employee Ledger', 3, 1, 1, 0, 'L', 0, 0, NULL, NULL, '0.00', 'OpSoxJvBbbS8Rws', '2021-03-13 07:22:54', 'OpSoxJvBbbS8Rws', '2021-03-13 10:00:49'),
('50205000001', '7-Local Supplier', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 7, '0.00', 'OpSoxJvBbbS8Rws', '2021-01-24 06:47:00', '', '0000-00-00 00:00:00'),
('502040006', '7-MainulSolution', 'Employee Ledger', 3, 1, 1, 0, 'L', 0, 0, NULL, NULL, '0.00', 'OpSoxJvBbbS8Rws', '2021-03-14 06:29:34', '', '0000-00-00 00:00:00'),
('502040007', '8-ArmanSolution', 'Employee Ledger', 3, 1, 1, 0, 'L', 0, 0, NULL, NULL, '0.00', 'OpSoxJvBbbS8Rws', '2021-03-14 06:36:17', '', '0000-00-00 00:00:00'),
('5020001', '8-VINNO Technology (Suzhou) Co., Ltd', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 8, '0.00', 'OpSoxJvBbbS8Rws', '2021-01-28 01:27:48', '', '0000-00-00 00:00:00'),
('5020002', '9-GE-Biomedical', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 9, '0.00', 'OpSoxJvBbbS8Rws', '2021-01-28 01:27:48', '', '0000-00-00 00:00:00'),
('5020028', '9-KDAIT', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 9, '0.00', 'OpSoxJvBbbS8Rws', '2021-08-10 07:21:47', '', '0000-00-00 00:00:00'),
('502040008', '9-Md Arman solution', 'Employee Ledger', 3, 1, 1, 0, 'L', 0, 0, NULL, NULL, '0.00', 'OpSoxJvBbbS8Rws', '2021-03-14 06:41:24', '', '0000-00-00 00:00:00'),
('10106', 'ABC', 'XYZ', 2, 1, 0, 0, 'A', 0, 0, NULL, NULL, '0.00', 'OpSoxJvBbbS8Rws', '2021-02-23 10:27:19', '', '0000-00-00 00:00:00'),
('50202', 'Account Payable', 'Current Liabilities', 2, 1, 0, 1, 'L', 0, 0, NULL, NULL, '0.00', 'admin', '2015-10-15 19:50:43', '', '2019-09-05 00:00:00'),
('10203', 'Account Receivable', 'Current Asset', 2, 1, 0, 0, 'A', 0, 0, NULL, NULL, '0.00', '', '2019-09-05 00:00:00', 'admin', '2013-09-18 15:29:35'),
('10104', 'Airconditioner', 'XYZ', 2, 1, 1, 0, 'A', 0, 0, NULL, NULL, '0.00', 'OpSoxJvBbbS8Rws', '2021-01-28 01:36:34', '', '0000-00-00 00:00:00'),
('1', 'Assets', 'COA', 0, 1, 0, 0, 'A', 0, 0, NULL, NULL, '0.00', '', '2019-09-05 00:00:00', '', '2019-09-05 00:00:00'),
('102010208', 'Brac Bank Ltd.', 'Cash At Bank', 4, 1, 1, 0, 'A', 0, 0, NULL, NULL, '0.00', 'tF2YChLBH86gHfG', '2021-01-25 10:33:42', '', '0000-00-00 00:00:00'),
('10201', 'Cash & Cash Equivalent', 'Current Asset', 2, 1, 0, 1, 'A', 0, 0, NULL, NULL, '0.00', '1', '2019-06-25 13:47:29', 'admin', '2015-10-15 15:57:55'),
('1020102', 'Cash At Bank', 'Cash & Cash Equivalent', 3, 1, 0, 1, 'A', 0, 0, NULL, NULL, '0.00', '1', '2019-03-18 06:08:18', 'admin', '2015-10-15 15:32:42'),
('1020103', 'Cash At Bkash', 'Cash & Cash Equivalent', 3, 1, 0, 1, 'A', 0, 0, NULL, NULL, '0.00', 'OpSoxJvBbbS8Rws', '2021-02-01 07:23:09', '', '0000-00-00 00:00:00'),
('1020101', 'Cash In Hand', 'Cash & Cash Equivalent', 3, 1, 1, 0, 'A', 0, 0, NULL, NULL, '0.00', '1', '2019-01-26 07:38:48', 'admin', '2016-05-23 12:05:43'),
('10103', 'Computer & Accessories', 'XYZ', 2, 1, 1, 0, 'A', 0, 0, NULL, NULL, '0.00', 'OpSoxJvBbbS8Rws', '2021-01-28 01:37:25', '', '0000-00-00 00:00:00'),
('10105', 'Computers', 'XYZ', 2, 1, 0, 0, 'A', 0, 0, NULL, NULL, '0.00', 'OpSoxJvBbbS8Rws', '2021-02-23 10:27:01', '', '0000-00-00 00:00:00'),
('102', 'Current Asset', 'Assets', 1, 1, 0, 0, 'A', 0, 0, NULL, NULL, '0.00', '', '2019-09-05 00:00:00', 'admin', '2018-07-07 11:23:00'),
('502', 'Current Liabilities', 'Liabilities', 1, 1, 0, 0, 'L', 0, 0, NULL, NULL, '0.00', 'anwarul', '2014-08-30 13:18:20', 'admin', '2015-10-15 19:49:21'),
('1020301', 'Customer Receivable', 'Account Receivable', 3, 1, 0, 1, 'A', 0, 0, NULL, NULL, '0.00', '1', '2019-01-24 12:10:05', 'admin', '2018-07-07 12:31:42'),
('102010206', 'Eastern Bank Ltd.', 'Cash At Bank', 4, 1, 1, 0, 'A', 0, 0, NULL, NULL, '0.00', 'tF2YChLBH86gHfG', '2021-01-25 10:29:36', '', '0000-00-00 00:00:00'),
('50204', 'Employee Ledger', 'Current Liabilities', 2, 1, 0, 1, 'L', 0, 0, NULL, NULL, '0.00', '1', '2019-04-08 10:36:32', '', '2019-09-05 00:00:00'),
('403', 'Employee Salary', 'Expence', 1, 1, 1, 0, 'E', 0, 1, NULL, NULL, '1.00', '1', '2019-06-17 11:44:52', '', '2019-09-05 00:00:00'),
('2', 'Equity', 'COA', 0, 1, 0, 0, 'L', 0, 0, NULL, NULL, '0.00', '', '2019-09-05 00:00:00', '', '2019-09-05 00:00:00'),
('4', 'Expence', 'COA', 0, 1, 0, 0, 'E', 0, 0, NULL, NULL, '0.00', '', '2019-09-05 00:00:00', '', '2019-09-05 00:00:00'),
('102010202', 'First Security Islami Bank Ltd.', 'Cash At Bank', 4, 1, 1, 0, 'A', 0, 0, NULL, NULL, '0.00', 'tF2YChLBH86gHfG', '2021-01-25 10:21:13', '', '0000-00-00 00:00:00'),
('101', 'Fixed Assets', 'Assets', 1, 1, 0, 0, 'A', 0, 0, NULL, NULL, '0.00', 'OpSoxJvBbbS8Rws', '2021-03-01 06:10:31', 'admin', '2015-10-15 15:29:11'),
('3', 'Income', 'COA', 0, 1, 0, 0, 'I', 0, 0, NULL, NULL, '0.00', '', '2019-09-05 00:00:00', '', '2019-09-05 00:00:00'),
('40101', 'Internet Bill', 'Operating Expenses', 2, 1, 1, 0, 'E', 0, 0, NULL, NULL, '0.00', '2', '2020-09-05 08:01:07', '', '0000-00-00 00:00:00'),
('102010207', 'Islami Bank Bangladesh Ltd.', 'Cash At Bank', 4, 1, 1, 0, 'A', 0, 0, NULL, NULL, '0.00', 'tF2YChLBH86gHfG', '2021-01-25 10:31:10', '', '0000-00-00 00:00:00'),
('102010204', 'Janata Bank Ltd.', 'Cash At Bank', 4, 1, 1, 0, 'A', 0, 0, NULL, NULL, '0.00', 'tF2YChLBH86gHfG', '2021-01-25 10:27:45', '', '0000-00-00 00:00:00'),
('5', 'Liabilities', 'COA', 0, 1, 0, 0, 'L', 0, 0, NULL, NULL, '0.00', 'admin', '2013-07-04 12:32:07', 'admin', '2015-10-15 19:46:54'),
('1020302', 'Loan Receivable', 'Account Receivable', 3, 1, 0, 1, 'A', 0, 0, NULL, NULL, '0.00', '1', '2019-01-26 07:37:20', '', '2019-09-05 00:00:00'),
('102010203', 'Mercantile Bank Ltd.', 'Cash At Bank', 4, 1, 1, 0, 'A', 0, 0, NULL, NULL, '0.00', 'tF2YChLBH86gHfG', '2021-01-25 10:25:06', '', '0000-00-00 00:00:00'),
('501', 'Non Current Liabilities', 'Liabilities', 1, 1, 0, 0, 'L', 0, 0, NULL, NULL, '0.00', 'anwarul', '2014-08-30 13:18:20', 'admin', '2015-10-15 19:49:21'),
('10102', 'Office Furniture & Fittings', 'XYZ', 2, 1, 1, 0, 'A', 0, 0, NULL, NULL, '0.00', 'OpSoxJvBbbS8Rws', '2021-01-28 01:38:16', '', '0000-00-00 00:00:00'),
('40102', 'Office Rent', 'Operating Expenses', 2, 1, 1, 0, 'E', 0, 0, NULL, NULL, '0.00', '2', '2020-09-05 08:01:32', '', '0000-00-00 00:00:00'),
('401', 'Operating Expenses', 'Expence', 1, 1, 1, 0, 'E', 0, 1, NULL, NULL, '1.00', '2', '2020-09-05 08:00:43', '', '0000-00-00 00:00:00'),
('402', 'Product Purchase', 'Expence', 1, 1, 0, 0, 'E', 0, 0, NULL, NULL, '0.00', '2', '2018-07-07 14:00:16', 'admin', '2015-10-15 18:37:42'),
('303', 'Product Sale', 'Income', 1, 1, 1, 0, 'I', 0, 0, NULL, NULL, '0.00', '1', '2019-06-17 08:22:42', '', '2019-09-05 00:00:00'),
('304', 'Service Income', 'Income', 1, 1, 1, 0, 'I', 0, 0, NULL, NULL, '0.00', '1', '2019-06-17 11:31:11', '', '2019-09-05 00:00:00'),
('30401', 'Service Revenue', 'Service Income', 2, 1, 1, 0, 'I', 0, 0, NULL, NULL, '0.00', '2', '2020-10-26 16:03:41', '', '0000-00-00 00:00:00'),
('102010201', 'Standard Chartered Bank', 'Cash At Bank', 4, 1, 1, 0, 'A', 0, 0, NULL, NULL, '0.00', 'tF2YChLBH86gHfG', '2021-01-25 10:19:40', '', '0000-00-00 00:00:00'),
('102010209', 'The City Bank Ltd.', 'Cash At Bank', 4, 1, 1, 0, 'A', 0, 0, NULL, NULL, '0.00', 'tF2YChLBH86gHfG', '2021-01-25 10:36:40', '', '0000-00-00 00:00:00'),
('102010205', 'United Commercial Bank Ltd (UCBL)', 'Cash At Bank', 4, 1, 1, 0, 'A', 0, 0, NULL, NULL, '0.00', 'tF2YChLBH86gHfG', '2021-01-25 10:28:47', '', '0000-00-00 00:00:00'),
('10107', 'XYZ', 'XYZ', 2, 1, 0, 0, 'A', 0, 0, NULL, NULL, '0.00', 'OpSoxJvBbbS8Rws', '2021-02-23 10:27:34', '', '2019-09-05 00:00:00');

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
  `CreateBy` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreateDate` datetime DEFAULT NULL,
  `UpdateBy` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UpdateDate` datetime DEFAULT NULL,
  `IsAppove` char(10) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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

--
-- Dumping data for table `bank_add`
--

INSERT INTO `bank_add` (`id`, `bank_id`, `bank_name`, `ac_name`, `ac_number`, `branch`, `signature_pic`, `status`) VALUES
(3, 'L3FNC8O9AD', 'Standard Chartered Bank', 'Global Medical Engineering (Bd) Ltd.', '01-1321276-06', 'Santinagar', NULL, 1),
(4, '48HKF445U2', 'First Security Islami Bank Ltd.', 'Global Medical Engineering (Bd) Ltd.', '118-111-00003669', 'Topkhana Road, Dhaka', NULL, 1),
(5, 'ZLMBIJ613L', 'Mercantile Bank Ltd.', 'Global Medical Engineering (Bd) Ltd.', '113311110696107', 'Bijoynagar', NULL, 1),
(6, 'LA4Q1O8TKP', 'Janata Bank Ltd.', 'Global Medical Engineering (Bd) Ltd.', '0100018639852', 'Topkhana Road, Corporate Branch, Dhaka', NULL, 1),
(7, 'RE6KT2S6HX', 'United Commercial Bank Ltd (UCBL)', 'Global Medical Engineering (Bd) Ltd.', '0012101000002408', 'Principal Branch', NULL, 1),
(8, 'E8ARJCZJLO', 'Eastern Bank Ltd.', 'Global Medical Engineering (Bd) Ltd.', '1141350167398', 'Kakrail', NULL, 1),
(9, 'HVPJ55DBIA', 'Islami Bank Bangladesh Ltd.', 'G. Medical Engineering.', '20502260100182917', 'Rampura, Dhaka', NULL, 1),
(10, 'XSTZSOYM1W', 'Brac Bank Ltd.', 'Global Medical Engineering (Bd) Ltd.', '1513203777986001', 'Motijheel', NULL, 1),
(11, 'BZ4JQMVVGL', 'Brac Bank Ltd.', 'G. Medical Engineering.', '1520201881818001', 'Eskaton', NULL, 1),
(12, 'YNHXVVGFA4', 'Brac Bank Ltd.', 'Tarikul Islam', '1503101314261001', 'Maghbazar', NULL, 1),
(13, '7WNZ9K7UWR', 'The City Bank Ltd.', 'Global Medical Engineering (Bd) Ltd.', '1232753345001', 'B.B Avenue Branch', NULL, 1),
(14, 'Z2IOVDAGPP', 'The City Bank Ltd.', 'Tarikul Islam', '2401890308001', 'B B Avenue', NULL, 1);

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

--
-- Dumping data for table `bkash_add`
--

INSERT INTO `bkash_add` (`id`, `bkash_id`, `ac_name`, `bkash_no`, `bkash_type`, `status`) VALUES
(1, 'PWV6PD84BD', 'Arman', '01836281773', 'Personal', 1),
(2, 'LY7DO52OAJ', 'Md Arman', '01787281564', 'Agent', 1),
(3, 'XYBORW6VTS', 'Irfan', '01819113991', 'Merchant', 1),
(4, 'Z5OIN7JBGI', 'Arman Ullah', '01836714343', 'Personal', 1);

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

--
-- Dumping data for table `branch_name`
--

INSERT INTO `branch_name` (`id`, `branch_id`, `courier_id`, `branch_name`, `status`) VALUES
(2, 'PCCU315Q1UOURHK', 'PCCU315Q1UOURHK', 'Hathaazari', 1),
(3, 'WTUPWGTSKR54OHL', 'V1PDX12HZ8SY9LE', 'Muradpur', 1),
(4, '26GI7X6U36TVVA8', 'DVHTURXJF7BGEHT', 'East Nasirabad', 1),
(5, 'FD5IWX2BZ51GDCK', '{courier_id}', 'Outlet 1', 1);

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
('1', 'Global Medical Engineering (BD) Ltd', 'gmebd@gmail.com', 'gmebd2@gmail.com', '17/2, Topkhana Road (2nd Floor) Dhaka – 1000, Bangladesh.', '01822911624', '01467754378', 'https://gmebd.com', 1);

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

--
-- Dumping data for table `courier_name`
--

INSERT INTO `courier_name` (`id`, `courier_id`, `courier_name`, `status`) VALUES
(2, 'V1PDX12HZ8SY9LE', 'Sundarban Courier', 1),
(3, 'DVHTURXJF7BGEHT', 'S.A Paribahan', 1);

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
(2, 'BDT', 'Tk');

-- --------------------------------------------------------

--
-- Table structure for table `customer_information`
--

CREATE TABLE `customer_information` (
  `customer_id` bigint(20) NOT NULL,
  `customer_id_two` varchar(255) NOT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `customer_address` varchar(255) NOT NULL,
  `address2` text NOT NULL,
  `customer_mobile` varchar(100) NOT NULL,
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
  `status` int(2) NOT NULL COMMENT '1=paid,2=credit',
  `create_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `create_by` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer_information`
--

INSERT INTO `customer_information` (`customer_id`, `customer_id_two`, `customer_name`, `customer_address`, `address2`, `customer_mobile`, `customer_email`, `email_address`, `contact`, `contact_person`, `phone`, `fax`, `city`, `state`, `zip`, `country`, `discount_customer`, `website`, `status`, `create_date`, `create_by`) VALUES
(1, '', 'Walking Customer', ' dhaka ', 'baridhara', '01787281564', 'customer@gmebd.com', 'customer@gmebd.com', '0808090909', '', '0808090909', 'fax', 'Dhaka', 'Dhaka', '4000', 'Bangladesh', 0, NULL, 1, '2020-10-30 13:24:47', 'tF2YChLBH86gHfG'),
(11, 'GME002', 'Rifat', '', '', '01521484948', '', '', '', '', '', '', '', '', '', '', 0, NULL, 1, '2021-01-25 07:54:26', 'tF2YChLBH86gHfG'),
(2, 'GME003', 'Rifat', '', '', '0182628262465', '', '', '', '', '', '', '', '', '', '', 0, NULL, 1, '2021-01-25 07:54:26', 'tF2YChLBH86gHfG'),
(16, '1234', 'Mizbah', 'Hathazrai,chittgaong', 'Hathazari', '01787281564', 'engsol2020@gmail.com', 'engsol2020@gmail.com', '01521484948', 'Engineering Solution', '01521484948', '', 'Chittagong', '', '6543', 'Afghanistan', NULL, '', 1, '2021-03-31 05:43:49', 'OpSoxJvBbbS8Rws');

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

--
-- Dumping data for table `cus_cheque`
--

INSERT INTO `cus_cheque` (`id`, `invoice_id`, `cheque_id`, `cheque_type`, `cheque_no`, `cheque_date`, `amount`, `payment_date`, `status`) VALUES
(18, '5245743973', '6147693635', NULL, '32435466', '2021-03-25', 20, NULL, 2),
(19, '5245743973', '7163943165', NULL, '5454656545342', '2021-04-09', 40, NULL, 2),
(20, '5245743973', '1611384117', NULL, '5465', '2021-04-09', 20, NULL, 2),
(21, '5315366147', '9818879289', NULL, '', '', 0, NULL, 2),
(22, '5245743973', '5228995154', 'ABC', '56565656', '2021-03-26', 120, NULL, 2),
(23, '2292454546', '7393739353', 'XYZ', '343464', '2021-03-26', 5, NULL, 2),
(24, '7689278855', '8445491224', '', '', '', 0, NULL, 2),
(25, '9253615126', '5388912584', '', '', '', 0, NULL, 2),
(26, '2576347663', '6262771531', '', '', '', 0, NULL, 2),
(27, '5546344462', '4865778158', '', '', '', 0, NULL, 2),
(28, '5287194455', '8574112355', '', '', '', 0, NULL, 2),
(29, '2511261462', '3233562449', 'Installment', '123456', '2021-04-02', 1000, '', 2),
(30, '2511261462', '4496211666', 'Installment', '456789', '2021-04-03', 1000, '', 2);

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

--
-- Dumping data for table `designation`
--

INSERT INTO `designation` (`id`, `designation`, `details`) VALUES
(2, 'Assistant General Manager', '');

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
(51, 'GMEBD002', 'SSC', 'HPHS', 'Science', '2012', '5.00'),
(52, 'GMEBD002', 'HSC', 'CUC', 'ARTS', '2014', '5.00');

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
(3, 5, '2', '60000.00', '0', '0', 'paid', '2021-01-28', 'Global Medical', 'January 2021');

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
(5, '2', '2', '4', '50.00', '2021-01-28', NULL, '', 60000),
(6, '2', '2', '5', '25.00', '2021-01-28', NULL, '', 60000),
(7, '2', '2', '6', '25.00', '2021-01-28', NULL, '', 60000),
(8, '2', '2', '7', '0.00', '2021-01-28', NULL, '', 60000);

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
  `customer_id` bigint(20) NOT NULL,
  `customer_name_two` varchar(255) DEFAULT NULL,
  `customer_mobile_two` varchar(255) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `total_amount` decimal(18,2) NOT NULL DEFAULT 0.00,
  `paid_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `due_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `prevous_due` decimal(20,2) NOT NULL DEFAULT 0.00,
  `shipping_cost` decimal(10,2) NOT NULL DEFAULT 0.00,
  `invoice` bigint(20) NOT NULL,
  `invoice_discount` decimal(10,2) DEFAULT 0.00 COMMENT 'invoice discount',
  `total_discount` decimal(10,2) DEFAULT 0.00 COMMENT 'total invoice discount',
  `total_tax` decimal(10,2) DEFAULT 0.00,
  `sales_by` varchar(50) NOT NULL,
  `invoice_details` text NOT NULL,
  `status` int(2) NOT NULL,
  `bank_id` varchar(30) DEFAULT NULL,
  `bkash_id` varchar(255) DEFAULT NULL,
  `payment_type` int(11) NOT NULL,
  `delivery_type` int(11) NOT NULL,
  `courier_id` varchar(255) DEFAULT NULL,
  `branch_id` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`id`, `invoice_id`, `customer_id`, `customer_name_two`, `customer_mobile_two`, `date`, `total_amount`, `paid_amount`, `due_amount`, `prevous_due`, `shipping_cost`, `invoice`, `invoice_discount`, `total_discount`, `total_tax`, `sales_by`, `invoice_details`, `status`, `bank_id`, `bkash_id`, `payment_type`, `delivery_type`, `courier_id`, `branch_id`) VALUES
(217, 5937273793, 1, NULL, NULL, '2021-04-26', '9000.00', '9000.00', '0.00', '0.00', '0.00', 1002, '0.00', '0.00', '0.00', 'oHhdeY9SHRfOBJE', 'Thank you for shopping with us', 1, NULL, NULL, 1, 1, NULL, NULL),
(216, 9321516392, 1, NULL, NULL, '2021-04-22', '2000.00', '2000.00', '0.00', '0.00', '0.00', 1001, '0.00', '0.00', '0.00', 'BqEHuu0wLvpfiJo', 'Thank you for shopping with us', 1, NULL, NULL, 1, 1, NULL, NULL),
(215, 8698258484, 1, NULL, NULL, '2021-04-22', '2000.00', '2000.00', '0.00', '0.00', '0.00', 1000, '0.00', '0.00', '0.00', 'BqEHuu0wLvpfiJo', 'Thank you for shopping with us', 1, NULL, NULL, 1, 1, NULL, NULL);

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
  `status` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `invoice_details`
--

INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `product_id`, `sn`, `warehouse`, `description`, `quantity`, `warrenty_date`, `expiry_date`, `rate`, `supplier_rate`, `total_price`, `discount`, `discount_per`, `tax`, `paid_amount`, `due_amount`, `status`) VALUES
(18, '166773384456559', '5937273793', '74325422', NULL, NULL, NULL, '20.00', NULL, '2021-04-27', '200.00', 150, '4000.00', '0.00', '', NULL, '9000', '0.00', 2),
(17, '984122269737385', '5937273793', '53858917', NULL, NULL, NULL, '10.00', NULL, '2021-05-01', '500.00', 300, '5000.00', '0.00', '', NULL, '9000', '0.00', 2),
(16, '845678659668788', '9321516392', '74325422', NULL, NULL, NULL, '10.00', NULL, '2021-04-27', '200.00', 150, '2000.00', '0.00', '', NULL, '2000', '0.00', 2),
(15, '494759782695859', '8698258484', '74325422', NULL, NULL, NULL, '10.00', NULL, '2021-04-27', '200.00', 150, '2000.00', '0.00', '', NULL, '2000', '0.00', 2);

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
(29, 'paid_customer', 'Paid Organization ', NULL),
(30, 'manage_customer', 'Manage Organization ', NULL),
(31, 'add_customer', 'Add Organization ', NULL),
(32, 'customer', 'Organization', NULL),
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
(63, 'customer_name', 'Organization Name', NULL),
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
(126, 'customer_address', 'Organization Address', NULL),
(127, 'customer_mobile', 'Organization Mobile', NULL),
(128, 'customer_email', 'Organization Email', NULL),
(129, 'add_new_customer', 'Add new Organization', NULL),
(130, 'balance', 'Balance', NULL),
(131, 'mobile', 'Mobile', NULL),
(132, 'address', 'Address', NULL),
(133, 'manage_your_customer', 'Manage your Organization ', NULL),
(134, 'customer_edit', 'Organization Edit', NULL),
(135, 'paid_customer_list', 'Paid Organization List', NULL),
(136, 'ammount', 'Amount', NULL),
(137, 'customer_ledger', 'Organization Ledger', NULL),
(138, 'manage_customer_ledger', 'Manage Organization Ledger', NULL),
(139, 'customer_information', 'Organization Information', NULL),
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
(211, 'customer_or_supplier', 'Organization ,Supplier Or Others', NULL),
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
(322, 'old_customer', 'Old Organization ', NULL),
(323, 'new_customer', 'New Customer', NULL),
(324, 'new_supplier', 'New Supplier', NULL),
(325, 'old_supplier', 'Old Supplier', NULL),
(326, 'credit_customer', 'Credit Organization ', NULL),
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
(344, 'customer_details', 'Organization details', NULL),
(345, 'manage_customer_details', 'Manage Organization details.', NULL),
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
(356, 'manage_your_credit_customer', 'Manage your credit Organization ', NULL),
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
(544, 'customer_id', 'Organization ID', NULL),
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
(608, 'customer_receive', 'Organization Receive', NULL),
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
(621, 'customer_csv_upload', 'Organization Csv Upload', NULL),
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
(789, 'customer_wise_tax_report', 'Organization Wise  Tax Report', NULL),
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
(804, 'customer_advance', 'Organization Advance', NULL),
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
(823, 'return_to_customer', 'Return To Organization ', NULL),
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
(847, 'return_from_customer', 'Return From Organization', NULL),
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
(899, 'customer_return_list', 'Organization Return List', NULL),
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
(940, 'rqsn_list_outlet', 'Stock Transferred Report (Outlet)', NULL);

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

--
-- Dumping data for table `money_receipt`
--

INSERT INTO `money_receipt` (`id`, `VNo`, `COAID`, `customer_id`, `date`, `remark`, `pay_type`, `bank_name`, `cheque_type`, `cheque_no`, `cheque_date`, `other_name`) VALUES
(4, 'MR-2', '502040010', NULL, '2021-03-28', 'ADdsdd', '1', NULL, NULL, NULL, NULL, NULL),
(5, 'MR-3', '502040010', NULL, '2021-03-28', 'Lorem ipsum', '2', 'EBL bank', 'Installment', '1234567', '2021-03-28', NULL),
(6, 'MR-4', '502040010', NULL, '2021-03-28', '34566', '3', NULL, NULL, NULL, NULL, 'Bkash'),
(7, 'MR-5', '502040010', NULL, '2021-03-28', '', '1', NULL, NULL, NULL, NULL, NULL),
(8, 'MR-6', '502040010', NULL, '2021-03-28', '', '1', NULL, NULL, NULL, NULL, NULL),
(9, 'MR-7', '502040010', NULL, '2021-03-28', '', '1', NULL, NULL, NULL, NULL, NULL),
(10, 'MR-8', '502040010', NULL, '2021-03-28', '', '1', NULL, NULL, NULL, NULL, NULL),
(11, 'MR-9', '502040010', NULL, '2021-03-28', '', '1', NULL, NULL, NULL, NULL, NULL),
(12, 'MR-10', '502040010', NULL, '2021-03-28', '', '1', NULL, NULL, NULL, NULL, NULL),
(13, 'MR-11', '502040010', NULL, '2021-03-28', '', '1', NULL, NULL, NULL, NULL, NULL),
(14, 'MR-12', '502040010', NULL, '2021-03-28', '', '1', NULL, NULL, NULL, NULL, NULL),
(15, 'MR-13', '502040010', NULL, '2021-03-28', '', '1', NULL, NULL, NULL, NULL, NULL),
(16, 'MR-14', '502040010', NULL, '2021-03-28', '', '1', NULL, NULL, NULL, NULL, NULL),
(17, 'MR-15', '502040010', NULL, '2021-03-28', '', '1', NULL, NULL, NULL, NULL, NULL),
(18, 'MR-16', '102030000002', NULL, '2021-03-28', '', '1', NULL, NULL, NULL, NULL, NULL),
(19, 'MR-17', '502040010', NULL, '2021-03-28', '', '1', NULL, NULL, NULL, NULL, NULL),
(20, 'MR-18', '502040010', NULL, '2021-03-29', '', '1', NULL, NULL, NULL, NULL, NULL),
(21, 'MR-19', '502040010', NULL, '2021-03-29', '', '1', NULL, NULL, NULL, NULL, NULL),
(22, 'MR-20', '502040010', NULL, '2021-03-29', '', '1', NULL, NULL, NULL, NULL, NULL),
(23, 'MR-21', '102030000001', NULL, '2021-03-29', '', '1', NULL, NULL, NULL, NULL, NULL),
(24, 'MR-22', '102030000001', '1', '2021-03-29', '', '1', NULL, NULL, NULL, NULL, NULL),
(25, 'MR-23', '102030000001', '1', '2021-03-29', '', '1', NULL, NULL, NULL, NULL, NULL),
(26, 'MR-24', '502040010', '11', '2021-03-29', '', '1', NULL, NULL, NULL, NULL, NULL),
(27, 'MR-25', '102030000001', '1', '2021-03-29', 'ASD', '1', NULL, NULL, NULL, NULL, NULL),
(28, 'MR-26', '102030000001', '1', '2021-03-29', '', '1', NULL, NULL, NULL, NULL, NULL),
(29, 'MR-27', '102030000001', '1', '2021-03-29', 'AS', '1', NULL, NULL, NULL, NULL, NULL),
(30, 'MR-28', '102030000001', '1', '2021-03-29', '', '1', NULL, NULL, NULL, NULL, NULL),
(31, 'MR-29', '102030000001', '1', '2021-03-29', '', '1', NULL, NULL, NULL, NULL, NULL),
(32, 'MR-30', '502040010', '2', '2021-03-29', '', '1', NULL, NULL, NULL, NULL, NULL),
(33, 'MR-31', '102030000001', '1', '2021-03-29', '', '2', 'EBL bank', 'Installment', '123456777', '2021-03-09', NULL),
(34, 'MR-32', '102030000001', '1', '2021-03-29', '', '1', NULL, NULL, NULL, NULL, NULL),
(35, 'MR-33', '102030000001', '1', '2021-03-29', '', '1', NULL, NULL, NULL, NULL, NULL),
(36, 'MR-34', '102030000001', '1', '2021-03-29', '', '3', NULL, NULL, NULL, NULL, 'Bkash'),
(37, 'MR-35', '102030000001', '1', '2021-03-29', 'g', '2', 'EBL bank', '56', '765432456', '2021-03-08', NULL),
(38, 'MR-36', '102030000001', '1', '2021-03-29', '', '1', NULL, NULL, NULL, NULL, NULL),
(39, 'MR-37', '102030000001', '1', '2021-03-29', '', '3', NULL, NULL, NULL, NULL, 'Bkash'),
(40, 'MR-38', '102030000001', '1', '2021-03-29', 'rfd', '3', NULL, NULL, NULL, NULL, 'Bkash'),
(41, 'MR-39', '102030000001', '1', '2021-03-29', '', '1', NULL, NULL, NULL, NULL, NULL),
(42, 'MR-39', '102030000001', '1', '2021-03-29', '', '1', NULL, NULL, NULL, NULL, NULL),
(43, 'MR-40', '102030000001', '1', '2021-03-29', '', '1', NULL, NULL, NULL, NULL, NULL),
(44, 'MR-41', '502040010', '1', '2021-03-29', '', '1', NULL, NULL, NULL, NULL, NULL),
(45, 'MR-42', '102030000001', '1', '2021-03-30', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\\\'s standard dummy text ever since the 1500s,', '1', NULL, NULL, NULL, NULL, NULL);

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
(16, 'YOTMD1PWYG6YC1T', 'VINNO', 1),
(17, 'K56MPOCRJHDD2ZQ', 'GE-BioMed', 1),
(18, 'S3YKPWFIZPGYHCB', 'Comen', 1),
(19, 'MQ5ZPBM67AUUNDS', 'HAIYE', 1),
(20, 'LODW3REO519FPOC', 'Genoray', 1),
(21, '9CQNE9UJOWVZ6KN', 'KB', 1);

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
(31, 'VGIJYRWZF4AYB1Y', 'Imaging/Ultrasound', 1),
(32, 'SUX9Y9ZDBPKVJMJ', 'Cardiovascular system', 1),
(33, 'SBGUNTNUZ65JXG5', 'Respiratory', 1),
(34, 'I29MYPVTVMGABGM', 'Microbiology', 1),
(35, 'V5AKOGYV17Q1TUC', 'IVD/Laboratory Product', 1),
(36, 'R95NWQJAYTZXXYP', 'Others Equipments', 1),
(37, 'RF36QPWJD7ONTNG', 'OT Equipment', 1),
(38, 'DU3HETF9P97RVZ9', 'ICU/NICU/CCU Equipment', 1),
(39, 'EGZNN7GPWUWRKR7', 'Urology', 1),
(40, 'V4TIURZMPLMHEER', 'Imaging/CTG', 1),
(41, 'YEX7ZOK7MOS9BZ4', 'ENT Equipment', 1),
(42, '5WJ3JY55HNGABVF', 'Imaging/Radiology', 1),
(43, 'I2HGJY1OWTD8JQY', 'Wheel', 1);

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
  `country` varchar(255) NOT NULL,
  `parts` varchar(255) NOT NULL,
  `tag` varchar(255) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `ptype_id` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) NOT NULL,
  `price` float DEFAULT NULL,
  `re_order_level` int(255) NOT NULL,
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
(2, '6767876', NULL, 'VGIJYRWZF4AYB1Y', 'IMS25E1LH58XLQV', 'YOTMD1PWYG6YC1T', '', '', '', '', 'Local', 'Wallet', 800, 50, 'Pcs', 0, '764457', 'SUX9Y9ZDBPASDF', '', 'https://localhost/erp_mw/my-assets/image/product.png', 1),
(4, '74325422', '', 'SBGUNTNUZ65JXG5', NULL, 'YOTMD1PWYG6YC1T', '', '555555', '', '33333333', 'Local', 'Shampoo', 500, 50, 'Pcs', 0, '', 'SUX9Y9ZDBPASDF', '', 'https://localhost/erp_hms/my-assets/image/product.png', 1),
(7, '68354349', '', 'SUX9Y9ZDBPKVJMJ', NULL, 'YOTMD1PWYG6YC1T', 'Australia', '45555', 'Abc,DRF', 'BD12455', 'Import', 'Fan 2', 253, 0, 'Unit', 0, NULL, 'SUX9Y9ZDBPASDF', '', 'https://localhost/git/paradise/./my-assets/image/product/7c36e357036fe609ac932548bf35a925.jpg', 1),
(12, '81244656', '', 'I29MYPVTVMGABGM', NULL, 'MQ5ZPBM67AUUNDS', '', '456755', '', 'ABV-15', '0', 'Test Productoo', 999, 0, 'Kit', 0, NULL, 'SUX9Y9ZDBPASDF', '', 'https://localhost/git/paradise/my-assets/image/product.png', 1);

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
(1, 'SUX9Y9ZDBPASDF', 'A', 1),
(3, 'IS5187VO645ZEPT', 'B', 1);

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

INSERT INTO `product_purchase` (`id`, `purchase_id`, `purchase_order`, `supplier_id`, `grand_total_amount`, `paid_amount`, `due_amount`, `total_discount`, `purchase_date`, `purchase_details`, `status`, `bank_id`, `cheque_no`, `cheque_date`, `payment_type`) VALUES
(75, 20210814092647, 'PO1000', NULL, '8.00', '8.00', '0.00', '0.00', '2021-08-14', NULL, 2, NULL, NULL, NULL, 1),
(76, 20210814092918, 'PO1001', NULL, '1000.00', '1000.00', '0.00', '0.00', '2021-08-14', NULL, 2, NULL, NULL, NULL, 1),
(77, 20210814141515, 'PO1002', NULL, '83916.00', '83916.00', '0.00', '0.00', '2021-08-14', NULL, 2, NULL, NULL, NULL, 1),
(78, 20210818131239, 'PO1003', NULL, NULL, NULL, NULL, NULL, '2021-08-18', NULL, 2, NULL, NULL, NULL, NULL),
(79, 20210818131547, 'PO1004', 0, NULL, NULL, NULL, NULL, '2021-08-18', NULL, 2, NULL, NULL, NULL, NULL),
(80, 20210818131950, 'PO1005', NULL, NULL, NULL, NULL, NULL, '2021-08-18', NULL, 2, NULL, NULL, NULL, NULL),
(81, 20210818132248, 'PO1006', NULL, NULL, NULL, NULL, NULL, '2021-08-18', NULL, 2, NULL, NULL, NULL, NULL),
(82, 20210819072008, 'PO1007', NULL, NULL, NULL, NULL, NULL, '2021-08-19', NULL, 2, NULL, NULL, NULL, NULL),
(83, 20210821081505, 'PO1008', NULL, '83916.00', '83916.00', '0.00', '0.00', '2021-08-21', NULL, 2, NULL, NULL, NULL, 1),
(84, 20210821082803, 'PO1009', NULL, '33000.00', NULL, NULL, NULL, '2021-08-21', NULL, 2, NULL, NULL, NULL, NULL),
(87, 20210822070802, 'PO1010', NULL, NULL, NULL, NULL, NULL, '2021-08-22', NULL, 2, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_purchase_details`
--

CREATE TABLE `product_purchase_details` (
  `id` int(11) NOT NULL,
  `purchase_detail_id` varchar(100) DEFAULT NULL,
  `purchase_id` bigint(20) DEFAULT NULL,
  `invoice_no` varchar(255) DEFAULT NULL,
  `invoice_no_p` varchar(255) DEFAULT NULL,
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
  `supplier_invoice` varchar(255) DEFAULT NULL,
  `supplier_invoice_p` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `isAprv` int(11) DEFAULT NULL COMMENT '1=Payment Done,2=Pending,3=Approved'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_purchase_details`
--

INSERT INTO `product_purchase_details` (`id`, `purchase_detail_id`, `purchase_id`, `invoice_no`, `invoice_no_p`, `chalan_id`, `product_id`, `supplier_id`, `barcode`, `sn`, `quantity`, `qty`, `lot_number`, `origin`, `warehouse`, `warrenty_date`, `expired_date`, `rate`, `total_amount`, `discount`, `supplier_invoice`, `supplier_invoice_p`, `status`, `isAprv`) VALUES
(82, 'DIEqUneRlXtoRds', 20210818131547, NULL, NULL, NULL, '74325422', 2, NULL, NULL, '40.00', '1.00', NULL, '', NULL, '2021-09-07', NULL, '200.00', '1000.00', 0, NULL, NULL, 1, 3),
(81, 'TDFF3njTiOUKqU1', 20210818131239, '1234', NULL, NULL, '68354349', 1, NULL, NULL, '10.00', '13.00', NULL, '', NULL, '2021-08-30', NULL, '20.00', '8580.00', 0, 'https://localhost/git/paradise/./my-assets/image/product/dc6feaba7e42d8cd4225330725b8d60c.jpeg', NULL, 1, 3),
(80, 'qRFYXK5pietoeZt', 20210814141515, NULL, NULL, NULL, '81244656', 5, NULL, NULL, '21.00', '1.00', NULL, '', NULL, '2021-08-26', NULL, '999.00', '83916.00', 0, NULL, NULL, 1, 1),
(79, 'UXn0VDqISs7ZUbY', 20210814092918, NULL, NULL, NULL, '74325422', 2, NULL, NULL, '22.00', '1.00', NULL, '', NULL, '2021-08-31', NULL, '200.00', '1000.00', 0, NULL, NULL, 1, 1),
(77, 'mPqgV6I0dCom0YL', 20210814092647, NULL, NULL, NULL, '6767876', 2, NULL, NULL, '22.00', '1.00', NULL, '', NULL, '2021-08-31', NULL, '600.00', '1800.00', 0, NULL, NULL, 1, 1),
(78, 'mTiZMsvfqXldF1A', 20210814092647, NULL, NULL, NULL, '68354349', 1, NULL, NULL, '222.00', '1.00', NULL, '', NULL, '2021-08-31', NULL, '20.00', '8.00', 0, NULL, NULL, 1, 1),
(83, '3H6Hx4U2NaUDnab', 20210818131950, NULL, NULL, NULL, '68354349', 1, NULL, NULL, '50.00', '1.00', NULL, '', NULL, '2021-08-31', NULL, '40.00', '3360.00', 0, NULL, NULL, 1, 2),
(84, 'Rq94GyjNJjnNhoU', 20210818132248, NULL, NULL, NULL, '81244656', 5, NULL, NULL, '20.00', '1.00', NULL, '', NULL, '2021-09-20', NULL, '2000.00', '168000.00', 0, NULL, NULL, 1, 1),
(85, 'UHAeKP6DByy0y2d', 20210819072008, NULL, NULL, NULL, '74325422', 2, NULL, NULL, '50.00', '1.00', NULL, '', NULL, NULL, NULL, '500.00', '42500.00', 0, NULL, NULL, 1, 3),
(86, 'WR1ssnBJNjU6XPr', 20210819072008, NULL, NULL, NULL, '68354349', 1, NULL, NULL, '50.00', '1.00', NULL, '', NULL, NULL, NULL, '100.00', '2.00', 0, NULL, NULL, 1, 2),
(87, 'Dut6rEm4t164aEt', 20210821081505, NULL, '3455', NULL, '81244656', 5, NULL, NULL, '187.00', '1.00', NULL, '', NULL, NULL, NULL, '999.00', '83916.00', 0, NULL, 'https://localhost/git/paradise/./my-assets/image/product/cc796a706527c4d109afa8684ef1822b.png', 1, 1),
(88, 'qct1Ts6AuiLL1tl', 20210821081505, NULL, NULL, NULL, '68354349', 1, NULL, NULL, '358.00', '1.00', NULL, '', NULL, NULL, NULL, '20.00', '3.00', 0, NULL, NULL, 1, 2),
(89, 'egDx2ZBwLm8Xkuy', 20210821082803, NULL, NULL, NULL, '74325422', 2, NULL, NULL, '50.00', '1.00', NULL, '', NULL, NULL, NULL, '500.00', '33000.00', 0, NULL, NULL, 1, 3),
(90, 'PMxGME6FyRAR2UU', 20210822070802, NULL, NULL, NULL, '68354349', 1, NULL, NULL, '50.00', '1.00', NULL, '', NULL, '2021-08-17', NULL, '20.00', '1830.00', 5, NULL, NULL, 1, 2);

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

--
-- Dumping data for table `product_return`
--

INSERT INTO `product_return` (`return_id`, `product_id`, `invoice_id`, `purchase_id`, `date_purchase`, `date_return`, `byy_qty`, `ret_qty`, `customer_id`, `supplier_id`, `product_rate`, `deduction`, `total_deduct`, `total_tax`, `total_ret_amount`, `net_total_amount`, `reason`, `usablity`) VALUES
('546756714458138', '6533569276', '5945696599', NULL, '2021-01-28', '2021-01-28', 2, 1, '1', '', '15.00', 0, '0.00', '0.00', '15.00', '15.00', '', 1),
('335219345184217', '6533569276', '3888153211', NULL, '2021-01-28', '2021-01-28', 5, 3, '1', '', '200.00', 0, '0.00', '0.00', '600.00', '600.00', '', 1),
('258119441662175', '6533569276', '3888153211', NULL, '2021-01-28', '2021-01-28', 2, 1, '1', '', '200.00', 0, '0.00', '0.00', '200.00', '200.00', '', 3),
('488693364518565', '74325422', '', '20210420173249', '2021-04-20', '2021-04-21', 500, 10, '', '2', '150.00', 0, '0.00', '0.00', '1500.00', '1500.00', '', 2);

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

--
-- Dumping data for table `product_service`
--

INSERT INTO `product_service` (`service_id`, `service_name`, `description`, `charge`) VALUES
(3, 'ABC', 'aasd', '1000.00'),
(4, 'Xyz', 'tyu', '1000.00'),
(5, 'Apple', 'GHH', '1.00'),
(6, 'Remote', 'JHShGs', '1000.00'),
(7, 'TTT', 'ds', '2.00'),
(8, 'awe', 'ss', '100.00'),
(9, 'Bottle', '', '0.00'),
(10, 'Mouse', 's', '1000.00'),
(11, 'Fan', '', '0.00'),
(12, 'Mobile', '', '0.00'),
(13, 'Mobile', '', '0.00'),
(14, 'Wallet', '', '0.00'),
(15, 'Bags', '', '0.00'),
(16, 'Shampoo', '', '0.00'),
(17, 'tanha', '', '0.00'),
(18, 'Milk', '', '0.00'),
(19, 'Fan', '', '0.00'),
(20, 'Doll', '', '0.00'),
(21, 'Bag', '', '0.00'),
(22, 'Bags(Xiaomi)', '', '0.00'),
(23, ' iFOB(25T/Box)', '', '0.00'),
(24, 'Test Productoo', '', '0.00'),
(25, 'p', '', '0.00'),
(26, 'Cleaner', '', '0.00'),
(27, 'Sauce', '', '0.00');

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
(1, 'IMS25E1LH58XLQV', 'VGIJYRWZF4AYB1Y', 'ABCD', 1);

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

--
-- Dumping data for table `product_type`
--

INSERT INTO `product_type` (`id`, `ptype_id`, `ptype_name`, `status`) VALUES
(25, 'SQROXZJ5T1MQ8LH', '4D Color Doppler', 1),
(26, 'KDFEXMCOAQBA9U4', 'Electrocardiogram (ECG) ', 1),
(27, '2ZRQ5WUW3ICFQGY', 'ICU/NICU/CCU Equipment', 1),
(28, 'RURBN2D2P2SDZSQ', 'IVD/Laboratory Product', 1),
(29, '1GOQNI3RHAZTO1B', 'Others Equipments', 1),
(30, 'DUAEZKW1FZEJ1FE', 'Surgary', 1),
(31, 'WZ3L71OEYJX9FSG', 'Imaging/CTG', 1),
(32, '81U9XJO9IUPTMB1', 'ENT Equipment', 1),
(33, 'HQ3BIJNO3DYRTR8', 'OT Equipment', 1),
(34, 'BSLYU7FP4ZDV7MG', 'Car Wheel', 1);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order_cart`
--

CREATE TABLE `purchase_order_cart` (
  `id` int(255) NOT NULL,
  `product_id` varchar(255) DEFAULT NULL,
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
  `currency_value` varchar(255) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `additional_cost` varchar(255) DEFAULT NULL,
  `discount` bigint(50) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
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
(2190, 1, 1, 1, 1, 1, 1),
(2191, 2, 1, 1, 1, 1, 1),
(2192, 3, 1, 1, 1, 1, 1),
(2193, 114, 1, 1, 1, 1, 1),
(2194, 25, 1, 1, 1, 1, 1),
(2195, 26, 1, 1, 1, 1, 1),
(2196, 27, 1, 1, 1, 1, 1),
(2197, 28, 1, 1, 1, 1, 1),
(2198, 111, 1, 1, 1, 1, 1),
(2199, 113, 1, 1, 1, 1, 1),
(2200, 21, 1, 1, 1, 1, 1),
(2201, 22, 1, 1, 1, 1, 1),
(2202, 23, 1, 1, 1, 1, 1),
(2203, 24, 1, 1, 1, 1, 1),
(2204, 30, 1, 1, 1, 1, 1),
(2205, 31, 1, 1, 1, 1, 1),
(2206, 32, 1, 1, 1, 1, 1),
(2207, 33, 1, 1, 1, 1, 1),
(2208, 112, 1, 1, 1, 1, 1),
(2209, 35, 1, 1, 1, 1, 1),
(2210, 36, 1, 1, 1, 1, 1),
(2211, 43, 1, 1, 1, 1, 1),
(2212, 37, 1, 1, 1, 1, 1),
(2213, 38, 1, 1, 1, 1, 1),
(2214, 39, 1, 1, 1, 1, 1),
(2215, 40, 1, 1, 1, 1, 1),
(2216, 46, 1, 1, 1, 1, 1),
(2217, 47, 1, 1, 1, 1, 1),
(2218, 48, 1, 1, 1, 1, 1),
(2219, 49, 1, 1, 1, 1, 1),
(2220, 50, 1, 1, 1, 1, 1),
(2221, 51, 1, 1, 1, 1, 1),
(2222, 52, 1, 1, 1, 1, 1),
(2223, 53, 1, 1, 1, 1, 1),
(2224, 54, 1, 1, 1, 1, 1),
(2225, 55, 1, 1, 1, 1, 1),
(2226, 97, 1, 1, 1, 1, 1),
(2227, 98, 1, 1, 1, 1, 1),
(2228, 99, 1, 1, 1, 1, 1),
(2229, 100, 1, 1, 1, 1, 1),
(2230, 101, 1, 1, 1, 1, 1),
(2231, 102, 1, 1, 1, 1, 1),
(2232, 122, 1, 0, 0, 0, 0),
(2233, 4, 1, 1, 1, 1, 1),
(2234, 5, 1, 1, 1, 1, 1),
(2235, 6, 1, 1, 1, 1, 1),
(2236, 7, 1, 1, 1, 1, 1),
(2237, 8, 1, 1, 1, 1, 1),
(2238, 9, 1, 1, 1, 1, 1),
(2239, 10, 1, 1, 1, 1, 1),
(2240, 11, 1, 1, 1, 1, 1),
(2241, 12, 1, 1, 1, 1, 1),
(2242, 13, 1, 1, 1, 1, 1),
(2243, 14, 1, 1, 1, 1, 1),
(2244, 15, 1, 1, 1, 1, 1),
(2245, 16, 1, 1, 1, 1, 1),
(2246, 17, 1, 1, 1, 1, 1),
(2247, 18, 1, 1, 1, 1, 1),
(2248, 19, 1, 1, 1, 1, 1),
(2249, 56, 1, 1, 1, 1, 1),
(2250, 57, 1, 1, 1, 1, 1),
(2251, 58, 1, 1, 1, 1, 1),
(2252, 41, 1, 1, 1, 1, 1),
(2253, 103, 1, 1, 1, 1, 1),
(2254, 104, 1, 1, 1, 1, 1),
(2255, 109, 1, 1, 1, 1, 1),
(2256, 110, 1, 1, 1, 1, 1),
(2257, 60, 1, 1, 1, 1, 1),
(2258, 61, 1, 1, 1, 1, 1),
(2259, 62, 1, 1, 1, 1, 1),
(2260, 63, 1, 1, 1, 1, 1),
(2261, 64, 1, 1, 1, 1, 1),
(2262, 65, 1, 1, 1, 1, 1),
(2263, 66, 1, 1, 1, 1, 1),
(2264, 67, 1, 1, 1, 1, 1),
(2265, 68, 1, 1, 1, 1, 1),
(2266, 69, 1, 1, 1, 1, 1),
(2267, 70, 1, 1, 1, 1, 1),
(2268, 71, 1, 1, 1, 1, 1),
(2269, 72, 1, 1, 1, 1, 1),
(2270, 73, 1, 1, 1, 1, 1),
(2271, 74, 1, 1, 1, 1, 1),
(2272, 75, 1, 1, 1, 1, 1),
(2273, 76, 1, 1, 1, 1, 1),
(2274, 77, 1, 1, 1, 1, 1),
(2275, 78, 1, 1, 1, 1, 1),
(2276, 79, 1, 1, 1, 1, 1),
(2277, 80, 1, 1, 1, 1, 1),
(2278, 81, 1, 1, 1, 1, 1),
(2279, 82, 1, 1, 1, 1, 1),
(2280, 83, 1, 1, 1, 1, 1),
(2281, 84, 1, 1, 1, 1, 1),
(2282, 85, 1, 1, 1, 1, 1),
(2283, 86, 1, 1, 1, 1, 1),
(2284, 105, 1, 1, 1, 1, 1),
(2285, 106, 1, 1, 1, 1, 1),
(2286, 107, 1, 1, 1, 1, 1),
(2287, 108, 1, 1, 1, 1, 1),
(2288, 59, 1, 1, 1, 1, 1),
(2289, 87, 1, 1, 1, 1, 1),
(2290, 88, 1, 1, 1, 1, 1),
(2291, 89, 1, 1, 1, 1, 1),
(2292, 90, 1, 1, 1, 1, 1),
(2293, 91, 1, 1, 1, 1, 1),
(2294, 92, 1, 1, 1, 1, 1),
(2295, 93, 1, 1, 1, 1, 1),
(2296, 94, 1, 1, 1, 1, 1),
(2297, 95, 1, 1, 1, 1, 1),
(2298, 96, 1, 1, 1, 1, 1),
(2299, 115, 1, 1, 1, 1, 1),
(2300, 116, 1, 1, 1, 1, 1),
(2301, 117, 1, 1, 1, 1, 1),
(2302, 118, 1, 1, 1, 1, 1),
(2303, 119, 1, 1, 1, 1, 1),
(2304, 120, 1, 1, 1, 1, 1),
(2305, 121, 1, 1, 1, 1, 1),
(3582, 1, 5, 1, 1, 1, 1),
(3583, 2, 5, 1, 1, 1, 1),
(3584, 3, 5, 1, 1, 1, 1),
(3585, 114, 5, 1, 1, 1, 1),
(3586, 25, 5, 1, 1, 1, 1),
(3587, 26, 5, 1, 1, 1, 1),
(3588, 27, 5, 1, 1, 1, 1),
(3589, 28, 5, 1, 1, 1, 1),
(3590, 111, 5, 1, 1, 1, 1),
(3591, 113, 5, 1, 1, 1, 1),
(3592, 21, 5, 1, 1, 1, 1),
(3593, 22, 5, 1, 1, 1, 1),
(3594, 23, 5, 1, 1, 1, 1),
(3595, 24, 5, 1, 1, 1, 1),
(3596, 30, 5, 1, 1, 1, 1),
(3597, 31, 5, 0, 0, 0, 0),
(3598, 32, 5, 0, 0, 0, 0),
(3599, 33, 5, 0, 0, 0, 0),
(3600, 112, 5, 0, 0, 0, 0),
(3601, 35, 5, 1, 1, 1, 1),
(3602, 36, 5, 1, 1, 1, 1),
(3603, 43, 5, 1, 1, 1, 1),
(3604, 37, 5, 0, 0, 0, 0),
(3605, 38, 5, 0, 0, 0, 0),
(3606, 39, 5, 0, 0, 0, 0),
(3607, 40, 5, 0, 0, 0, 0),
(3608, 46, 5, 0, 0, 0, 0),
(3609, 47, 5, 0, 0, 0, 0),
(3610, 48, 5, 0, 0, 0, 0),
(3611, 49, 5, 0, 0, 0, 0),
(3612, 50, 5, 1, 1, 1, 1),
(3613, 51, 5, 0, 0, 0, 0),
(3614, 52, 5, 1, 1, 1, 1),
(3615, 53, 5, 1, 1, 1, 1),
(3616, 54, 5, 1, 1, 1, 1),
(3617, 55, 5, 1, 1, 1, 1),
(3618, 97, 5, 0, 0, 0, 0),
(3619, 98, 5, 1, 1, 1, 1),
(3620, 99, 5, 1, 1, 1, 1),
(3621, 100, 5, 0, 0, 0, 0),
(3622, 101, 5, 0, 0, 0, 0),
(3623, 102, 5, 0, 0, 0, 0),
(3624, 122, 5, 0, 0, 0, 0),
(3625, 4, 5, 1, 1, 1, 1),
(3626, 5, 5, 1, 1, 1, 1),
(3627, 6, 5, 1, 1, 1, 1),
(3628, 7, 5, 1, 1, 1, 1),
(3629, 8, 5, 1, 1, 1, 1),
(3630, 9, 5, 1, 1, 1, 1),
(3631, 10, 5, 1, 1, 1, 1),
(3632, 11, 5, 1, 1, 1, 1),
(3633, 12, 5, 1, 1, 1, 1),
(3634, 13, 5, 1, 1, 1, 1),
(3635, 14, 5, 1, 1, 1, 1),
(3636, 15, 5, 1, 1, 1, 1),
(3637, 16, 5, 1, 1, 1, 1),
(3638, 17, 5, 1, 1, 1, 1),
(3639, 18, 5, 1, 1, 1, 1),
(3640, 19, 5, 1, 1, 1, 1),
(3641, 56, 5, 0, 0, 0, 0),
(3642, 57, 5, 0, 0, 0, 0),
(3643, 58, 5, 0, 0, 0, 0),
(3644, 41, 5, 0, 0, 0, 0),
(3645, 103, 5, 0, 0, 0, 0),
(3646, 104, 5, 0, 0, 0, 0),
(3647, 109, 5, 0, 0, 0, 0),
(3648, 110, 5, 0, 0, 0, 0),
(3649, 60, 5, 0, 0, 0, 0),
(3650, 61, 5, 0, 0, 0, 0),
(3651, 62, 5, 0, 0, 0, 0),
(3652, 63, 5, 0, 0, 0, 0),
(3653, 64, 5, 0, 0, 0, 0),
(3654, 65, 5, 0, 0, 0, 0),
(3655, 66, 5, 0, 0, 0, 0),
(3656, 67, 5, 0, 0, 0, 0),
(3657, 68, 5, 0, 0, 0, 0),
(3658, 69, 5, 0, 0, 0, 0),
(3659, 70, 5, 0, 0, 0, 0),
(3660, 71, 5, 0, 0, 0, 0),
(3661, 72, 5, 0, 0, 0, 0),
(3662, 73, 5, 0, 0, 0, 0),
(3663, 74, 5, 0, 0, 0, 0),
(3664, 75, 5, 0, 0, 0, 0),
(3665, 76, 5, 0, 0, 0, 0),
(3666, 77, 5, 0, 0, 0, 0),
(3667, 78, 5, 0, 0, 0, 0),
(3668, 79, 5, 0, 0, 0, 0),
(3669, 80, 5, 0, 0, 0, 0),
(3670, 81, 5, 0, 0, 0, 0),
(3671, 82, 5, 0, 0, 0, 0),
(3672, 83, 5, 0, 0, 0, 0),
(3673, 84, 5, 0, 0, 0, 0),
(3674, 85, 5, 0, 0, 0, 0),
(3675, 86, 5, 0, 0, 0, 0),
(3676, 105, 5, 0, 0, 0, 0),
(3677, 106, 5, 0, 0, 0, 0),
(3678, 107, 5, 0, 0, 0, 0),
(3679, 108, 5, 0, 0, 0, 0),
(3680, 59, 5, 0, 0, 0, 0),
(3681, 87, 5, 0, 0, 0, 0),
(3682, 88, 5, 0, 0, 0, 0),
(3683, 89, 5, 0, 0, 0, 0),
(3684, 90, 5, 0, 0, 0, 0),
(3685, 91, 5, 0, 0, 0, 0),
(3686, 92, 5, 0, 0, 0, 0),
(3687, 93, 5, 0, 0, 0, 0),
(3688, 94, 5, 0, 0, 0, 0),
(3689, 95, 5, 0, 0, 0, 0),
(3690, 96, 5, 0, 0, 0, 0),
(3691, 115, 5, 0, 0, 0, 0),
(3692, 116, 5, 0, 0, 0, 0),
(3693, 117, 5, 0, 0, 0, 0),
(3694, 118, 5, 0, 0, 0, 0),
(3695, 119, 5, 0, 0, 0, 0),
(3696, 120, 5, 0, 0, 0, 0),
(3697, 121, 5, 0, 0, 0, 0),
(3698, 1, 2, 1, 1, 1, 1),
(3699, 2, 2, 1, 1, 1, 1),
(3700, 3, 2, 1, 1, 1, 1),
(3701, 114, 2, 1, 1, 1, 1),
(3702, 123, 2, 0, 0, 0, 0),
(3703, 25, 2, 1, 1, 1, 1),
(3704, 26, 2, 1, 1, 1, 1),
(3705, 27, 2, 1, 1, 1, 1),
(3706, 28, 2, 1, 1, 1, 1),
(3707, 111, 2, 1, 1, 1, 1),
(3708, 113, 2, 1, 1, 1, 1),
(3709, 21, 2, 1, 1, 1, 1),
(3710, 22, 2, 1, 1, 1, 1),
(3711, 23, 2, 1, 1, 1, 1),
(3712, 24, 2, 1, 1, 1, 1),
(3713, 30, 2, 1, 1, 1, 1),
(3714, 31, 2, 1, 1, 1, 1),
(3715, 32, 2, 1, 1, 1, 1),
(3716, 33, 2, 1, 1, 1, 1),
(3717, 112, 2, 1, 1, 1, 1),
(3718, 35, 2, 1, 1, 1, 1),
(3719, 36, 2, 1, 1, 1, 1),
(3720, 43, 2, 1, 1, 1, 1),
(3721, 37, 2, 1, 1, 1, 1),
(3722, 38, 2, 1, 1, 1, 1),
(3723, 39, 2, 1, 1, 1, 1),
(3724, 40, 2, 1, 1, 1, 1),
(3725, 46, 2, 1, 1, 1, 1),
(3726, 47, 2, 1, 1, 1, 1),
(3727, 48, 2, 1, 1, 1, 1),
(3728, 49, 2, 1, 1, 1, 1),
(3729, 50, 2, 1, 1, 1, 1),
(3730, 51, 2, 1, 1, 1, 1),
(3731, 52, 2, 1, 1, 1, 1),
(3732, 53, 2, 1, 1, 1, 1),
(3733, 54, 2, 1, 1, 1, 1),
(3734, 55, 2, 1, 1, 1, 1),
(3735, 97, 2, 1, 1, 1, 1),
(3736, 98, 2, 1, 1, 1, 1),
(3737, 99, 2, 1, 1, 1, 1),
(3738, 100, 2, 1, 1, 1, 1),
(3739, 101, 2, 0, 0, 0, 0),
(3740, 102, 2, 1, 1, 1, 1),
(3741, 122, 2, 0, 0, 0, 0),
(3742, 4, 2, 1, 1, 1, 1),
(3743, 5, 2, 1, 1, 1, 1),
(3744, 6, 2, 1, 1, 1, 1),
(3745, 7, 2, 1, 1, 1, 1),
(3746, 8, 2, 1, 1, 1, 1),
(3747, 9, 2, 1, 1, 1, 1),
(3748, 10, 2, 1, 1, 1, 1),
(3749, 11, 2, 1, 1, 1, 1),
(3750, 12, 2, 1, 1, 1, 1),
(3751, 13, 2, 1, 1, 1, 1),
(3752, 14, 2, 1, 1, 1, 1),
(3753, 15, 2, 1, 1, 1, 1),
(3754, 16, 2, 1, 1, 1, 1),
(3755, 17, 2, 1, 1, 1, 1),
(3756, 18, 2, 1, 1, 1, 1),
(3757, 19, 2, 1, 1, 1, 1),
(3758, 56, 2, 1, 1, 1, 1),
(3759, 57, 2, 1, 1, 1, 1),
(3760, 58, 2, 1, 1, 1, 1),
(3761, 41, 2, 0, 0, 0, 0),
(3762, 103, 2, 0, 0, 0, 0),
(3763, 104, 2, 0, 0, 0, 0),
(3764, 109, 2, 0, 0, 0, 0),
(3765, 110, 2, 0, 0, 0, 0),
(3766, 60, 2, 1, 1, 1, 1),
(3767, 61, 2, 1, 1, 1, 1),
(3768, 62, 2, 1, 1, 1, 1),
(3769, 63, 2, 1, 1, 1, 1),
(3770, 64, 2, 1, 1, 1, 1),
(3771, 65, 2, 1, 1, 1, 1),
(3772, 66, 2, 1, 1, 1, 1),
(3773, 67, 2, 1, 1, 1, 1),
(3774, 68, 2, 1, 1, 1, 1),
(3775, 69, 2, 1, 1, 1, 1),
(3776, 70, 2, 1, 1, 1, 1),
(3777, 71, 2, 1, 1, 1, 1),
(3778, 72, 2, 1, 1, 1, 1),
(3779, 73, 2, 1, 1, 1, 1),
(3780, 74, 2, 1, 1, 1, 1),
(3781, 75, 2, 1, 1, 1, 1),
(3782, 76, 2, 1, 1, 1, 1),
(3783, 77, 2, 1, 1, 1, 1),
(3784, 78, 2, 1, 1, 1, 1),
(3785, 79, 2, 1, 1, 1, 1),
(3786, 80, 2, 1, 1, 1, 1),
(3787, 81, 2, 1, 1, 1, 1),
(3788, 82, 2, 1, 1, 1, 1),
(3789, 83, 2, 1, 1, 1, 1),
(3790, 84, 2, 1, 1, 1, 1),
(3791, 85, 2, 1, 1, 1, 1),
(3792, 86, 2, 1, 1, 1, 1),
(3793, 105, 2, 1, 1, 1, 1),
(3794, 106, 2, 1, 1, 1, 1),
(3795, 107, 2, 1, 1, 1, 1),
(3796, 108, 2, 1, 1, 1, 1),
(3797, 59, 2, 1, 1, 1, 1),
(3798, 87, 2, 1, 1, 1, 1),
(3799, 88, 2, 1, 1, 1, 1),
(3800, 89, 2, 1, 1, 1, 1),
(3801, 90, 2, 0, 0, 0, 0),
(3802, 91, 2, 0, 0, 0, 0),
(3803, 92, 2, 1, 1, 1, 1),
(3804, 93, 2, 1, 1, 1, 1),
(3805, 94, 2, 1, 1, 1, 1),
(3806, 95, 2, 1, 1, 1, 1),
(3807, 96, 2, 1, 1, 1, 1),
(3808, 115, 2, 0, 0, 0, 0),
(3809, 116, 2, 0, 0, 0, 0),
(3810, 117, 2, 0, 0, 0, 0),
(3811, 118, 2, 0, 0, 0, 0),
(3812, 119, 2, 1, 1, 1, 1),
(3813, 120, 2, 1, 1, 1, 1),
(3814, 121, 2, 1, 1, 1, 1),
(4049, 1, 6, 1, 1, 1, 1),
(4050, 2, 6, 1, 1, 1, 1),
(4051, 3, 6, 1, 1, 1, 1),
(4052, 114, 6, 1, 1, 1, 1),
(4053, 123, 6, 1, 1, 1, 1),
(4054, 25, 6, 0, 0, 0, 0),
(4055, 26, 6, 0, 0, 0, 0),
(4056, 27, 6, 0, 0, 0, 0),
(4057, 28, 6, 0, 0, 0, 0),
(4058, 111, 6, 0, 0, 0, 0),
(4059, 113, 6, 0, 0, 0, 0),
(4060, 21, 6, 0, 0, 0, 0),
(4061, 22, 6, 0, 0, 0, 0),
(4062, 23, 6, 0, 0, 0, 0),
(4063, 24, 6, 0, 0, 0, 0),
(4064, 30, 6, 0, 0, 0, 0),
(4065, 31, 6, 0, 0, 0, 0),
(4066, 32, 6, 0, 0, 0, 0),
(4067, 33, 6, 0, 0, 0, 0),
(4068, 112, 6, 0, 0, 0, 0),
(4069, 35, 6, 1, 1, 1, 1),
(4070, 36, 6, 1, 1, 1, 1),
(4071, 124, 6, 1, 1, 1, 1),
(4072, 43, 6, 0, 0, 0, 0),
(4073, 37, 6, 0, 0, 0, 0),
(4074, 38, 6, 0, 0, 0, 0),
(4075, 39, 6, 0, 0, 0, 0),
(4076, 40, 6, 0, 0, 0, 0),
(4077, 46, 6, 0, 0, 0, 0),
(4078, 47, 6, 0, 0, 0, 0),
(4079, 48, 6, 0, 0, 0, 0),
(4080, 49, 6, 0, 0, 0, 0),
(4081, 50, 6, 0, 0, 0, 0),
(4082, 51, 6, 0, 0, 0, 0),
(4083, 52, 6, 0, 0, 0, 0),
(4084, 53, 6, 0, 0, 0, 0),
(4085, 54, 6, 0, 0, 0, 0),
(4086, 55, 6, 0, 0, 0, 0),
(4087, 97, 6, 0, 0, 0, 0),
(4088, 98, 6, 0, 0, 0, 0),
(4089, 99, 6, 0, 0, 0, 0),
(4090, 100, 6, 0, 0, 0, 0),
(4091, 101, 6, 0, 0, 0, 0),
(4092, 102, 6, 0, 0, 0, 0),
(4093, 122, 6, 0, 0, 0, 0),
(4094, 4, 6, 0, 0, 0, 0),
(4095, 5, 6, 0, 0, 0, 0),
(4096, 6, 6, 0, 0, 0, 0),
(4097, 7, 6, 0, 0, 0, 0),
(4098, 8, 6, 0, 0, 0, 0),
(4099, 9, 6, 0, 0, 0, 0),
(4100, 10, 6, 0, 0, 0, 0),
(4101, 11, 6, 0, 0, 0, 0),
(4102, 12, 6, 0, 0, 0, 0),
(4103, 13, 6, 0, 0, 0, 0),
(4104, 14, 6, 0, 0, 0, 0),
(4105, 15, 6, 0, 0, 0, 0),
(4106, 16, 6, 0, 0, 0, 0),
(4107, 17, 6, 0, 0, 0, 0),
(4108, 18, 6, 0, 0, 0, 0),
(4109, 19, 6, 0, 0, 0, 0),
(4110, 56, 6, 0, 0, 0, 0),
(4111, 57, 6, 0, 0, 0, 0),
(4112, 58, 6, 0, 0, 0, 0),
(4113, 41, 6, 0, 0, 0, 0),
(4114, 103, 6, 0, 0, 0, 0),
(4115, 104, 6, 0, 0, 0, 0),
(4116, 109, 6, 0, 0, 0, 0),
(4117, 110, 6, 0, 0, 0, 0),
(4118, 60, 6, 0, 0, 0, 0),
(4119, 61, 6, 0, 0, 0, 0),
(4120, 62, 6, 0, 0, 0, 0),
(4121, 63, 6, 0, 0, 0, 0),
(4122, 64, 6, 0, 0, 0, 0),
(4123, 65, 6, 0, 0, 0, 0),
(4124, 66, 6, 0, 0, 0, 0),
(4125, 67, 6, 0, 0, 0, 0),
(4126, 68, 6, 0, 0, 0, 0),
(4127, 69, 6, 0, 0, 0, 0),
(4128, 70, 6, 0, 0, 0, 0),
(4129, 71, 6, 0, 0, 0, 0),
(4130, 72, 6, 0, 0, 0, 0),
(4131, 73, 6, 0, 0, 0, 0),
(4132, 74, 6, 0, 0, 0, 0),
(4133, 75, 6, 0, 0, 0, 0),
(4134, 76, 6, 0, 0, 0, 0),
(4135, 77, 6, 0, 0, 0, 0),
(4136, 78, 6, 0, 0, 0, 0),
(4137, 79, 6, 0, 0, 0, 0),
(4138, 80, 6, 0, 0, 0, 0),
(4139, 81, 6, 0, 0, 0, 0),
(4140, 82, 6, 0, 0, 0, 0),
(4141, 83, 6, 0, 0, 0, 0),
(4142, 84, 6, 0, 0, 0, 0),
(4143, 85, 6, 0, 0, 0, 0),
(4144, 86, 6, 0, 0, 0, 0),
(4145, 105, 6, 0, 0, 0, 0),
(4146, 106, 6, 0, 0, 0, 0),
(4147, 107, 6, 0, 0, 0, 0),
(4148, 108, 6, 0, 0, 0, 0),
(4149, 59, 6, 0, 0, 0, 0),
(4150, 87, 6, 0, 0, 0, 0),
(4151, 88, 6, 0, 0, 0, 0),
(4152, 89, 6, 0, 0, 0, 0),
(4153, 90, 6, 0, 0, 0, 0),
(4154, 91, 6, 0, 0, 0, 0),
(4155, 92, 6, 0, 0, 0, 0),
(4156, 93, 6, 0, 0, 0, 0),
(4157, 94, 6, 0, 0, 0, 0),
(4158, 95, 6, 0, 0, 0, 0),
(4159, 96, 6, 0, 0, 0, 0),
(4160, 115, 6, 0, 0, 0, 0),
(4161, 116, 6, 0, 0, 0, 0),
(4162, 117, 6, 0, 0, 0, 0),
(4163, 118, 6, 0, 0, 0, 0),
(4164, 119, 6, 0, 0, 0, 0),
(4165, 120, 6, 0, 0, 0, 0),
(4166, 121, 6, 0, 0, 0, 0),
(10500, 1, 10, 1, 1, 1, 1),
(10501, 2, 10, 1, 1, 1, 1),
(10502, 3, 10, 0, 0, 0, 0),
(10503, 114, 10, 0, 0, 0, 0),
(10504, 123, 10, 1, 1, 1, 1),
(10505, 125, 10, 0, 0, 0, 0),
(10506, 25, 10, 1, 1, 1, 1),
(10507, 26, 10, 1, 1, 1, 1),
(10508, 27, 10, 1, 1, 1, 1),
(10509, 28, 10, 1, 1, 1, 1),
(10510, 111, 10, 1, 1, 1, 1),
(10511, 113, 10, 1, 1, 1, 1),
(10512, 21, 10, 1, 1, 1, 1),
(10513, 22, 10, 1, 1, 1, 1),
(10514, 23, 10, 1, 1, 1, 1),
(10515, 24, 10, 1, 1, 1, 1),
(10516, 30, 10, 1, 1, 1, 1),
(10517, 31, 10, 1, 1, 1, 1),
(10518, 32, 10, 1, 1, 1, 1),
(10519, 33, 10, 1, 1, 1, 1),
(10520, 112, 10, 1, 1, 1, 1),
(10521, 35, 10, 1, 1, 1, 1),
(10522, 36, 10, 1, 1, 1, 1),
(10523, 124, 10, 1, 1, 1, 1),
(10524, 135, 10, 1, 1, 1, 1),
(10525, 43, 10, 1, 1, 1, 1),
(10526, 37, 10, 1, 1, 1, 1),
(10527, 38, 10, 1, 1, 1, 1),
(10528, 39, 10, 1, 1, 1, 1),
(10529, 40, 10, 1, 1, 1, 1),
(10530, 139, 10, 1, 1, 1, 1),
(10531, 140, 10, 1, 1, 1, 1),
(10532, 46, 10, 1, 1, 1, 1),
(10533, 47, 10, 1, 1, 1, 1),
(10534, 48, 10, 1, 1, 1, 1),
(10535, 49, 10, 1, 1, 1, 1),
(10536, 50, 10, 1, 1, 1, 1),
(10537, 51, 10, 1, 1, 1, 1),
(10538, 52, 10, 1, 1, 1, 1),
(10539, 53, 10, 1, 1, 1, 1),
(10540, 54, 10, 1, 1, 1, 1),
(10541, 55, 10, 1, 1, 1, 1),
(10542, 97, 10, 1, 1, 1, 1),
(10543, 98, 10, 1, 1, 1, 1),
(10544, 99, 10, 1, 1, 1, 1),
(10545, 100, 10, 1, 1, 1, 1),
(10546, 101, 10, 0, 0, 0, 0),
(10547, 102, 10, 1, 1, 1, 1),
(10548, 122, 10, 1, 1, 1, 1),
(10549, 4, 10, 1, 1, 1, 1),
(10550, 5, 10, 1, 1, 1, 1),
(10551, 6, 10, 1, 1, 1, 1),
(10552, 7, 10, 1, 1, 1, 1),
(10553, 8, 10, 1, 1, 1, 1),
(10554, 9, 10, 1, 1, 1, 1),
(10555, 10, 10, 1, 1, 1, 1),
(10556, 11, 10, 1, 1, 1, 1),
(10557, 12, 10, 1, 1, 1, 1),
(10558, 13, 10, 1, 1, 1, 1),
(10559, 14, 10, 1, 1, 1, 1),
(10560, 15, 10, 1, 1, 1, 1),
(10561, 16, 10, 1, 1, 1, 1),
(10562, 17, 10, 1, 1, 1, 1),
(10563, 18, 10, 1, 1, 1, 1),
(10564, 19, 10, 1, 1, 1, 1),
(10565, 56, 10, 1, 1, 1, 1),
(10566, 57, 10, 1, 1, 1, 1),
(10567, 58, 10, 1, 1, 1, 1),
(10568, 41, 10, 0, 0, 0, 0),
(10569, 103, 10, 0, 0, 0, 0),
(10570, 104, 10, 0, 0, 0, 0),
(10571, 109, 10, 0, 0, 0, 0),
(10572, 110, 10, 0, 0, 0, 0),
(10573, 60, 10, 1, 1, 1, 1),
(10574, 61, 10, 1, 1, 1, 1),
(10575, 62, 10, 1, 1, 1, 1),
(10576, 63, 10, 1, 1, 1, 1),
(10577, 64, 10, 1, 1, 1, 1),
(10578, 65, 10, 1, 1, 1, 1),
(10579, 66, 10, 1, 1, 1, 1),
(10580, 67, 10, 1, 1, 1, 1),
(10581, 68, 10, 1, 1, 1, 1),
(10582, 69, 10, 1, 1, 1, 1),
(10583, 70, 10, 1, 1, 1, 1),
(10584, 71, 10, 1, 1, 1, 1),
(10585, 72, 10, 1, 1, 1, 1),
(10586, 73, 10, 1, 1, 1, 1),
(10587, 74, 10, 1, 1, 1, 1),
(10588, 75, 10, 1, 1, 1, 1),
(10589, 76, 10, 1, 1, 1, 1),
(10590, 77, 10, 1, 1, 1, 1),
(10591, 78, 10, 1, 1, 1, 1),
(10592, 79, 10, 1, 1, 1, 1),
(10593, 80, 10, 1, 1, 1, 1),
(10594, 81, 10, 1, 1, 1, 1),
(10595, 82, 10, 1, 1, 1, 1),
(10596, 83, 10, 1, 1, 1, 1),
(10597, 84, 10, 1, 1, 1, 1),
(10598, 85, 10, 1, 1, 1, 1),
(10599, 86, 10, 1, 1, 1, 1),
(10600, 105, 10, 1, 1, 1, 1),
(10601, 106, 10, 1, 1, 1, 1),
(10602, 107, 10, 1, 1, 1, 1),
(10603, 108, 10, 1, 1, 1, 1),
(10604, 59, 10, 0, 0, 0, 0),
(10605, 87, 10, 0, 0, 0, 0),
(10606, 88, 10, 0, 0, 0, 0),
(10607, 89, 10, 0, 0, 0, 0),
(10608, 90, 10, 0, 0, 0, 0),
(10609, 91, 10, 0, 0, 0, 0),
(10610, 92, 10, 0, 0, 0, 0),
(10611, 93, 10, 0, 0, 0, 0),
(10612, 94, 10, 0, 0, 0, 0),
(10613, 95, 10, 0, 0, 0, 0),
(10614, 96, 10, 0, 0, 0, 0),
(10615, 115, 10, 0, 0, 0, 0),
(10616, 116, 10, 0, 0, 0, 0),
(10617, 117, 10, 0, 0, 0, 0),
(10618, 118, 10, 0, 0, 0, 0),
(10619, 119, 10, 0, 0, 0, 0),
(10620, 120, 10, 0, 0, 0, 0),
(10621, 121, 10, 0, 0, 0, 0),
(10622, 126, 10, 1, 1, 1, 1),
(10623, 127, 10, 1, 1, 1, 1),
(10624, 128, 10, 0, 0, 0, 0),
(10625, 129, 10, 1, 1, 1, 1),
(10626, 138, 10, 1, 1, 1, 1),
(10627, 130, 10, 1, 1, 1, 1),
(10628, 131, 10, 0, 0, 0, 0),
(10629, 137, 10, 0, 0, 0, 0),
(10630, 132, 10, 0, 0, 0, 0),
(10631, 133, 10, 1, 1, 1, 1),
(10632, 136, 10, 0, 0, 0, 0),
(10633, 1, 7, 0, 0, 0, 0),
(10634, 2, 7, 0, 0, 0, 0),
(10635, 3, 7, 0, 0, 0, 0),
(10636, 114, 7, 0, 0, 0, 0),
(10637, 123, 7, 0, 0, 0, 0),
(10638, 125, 7, 1, 1, 1, 1),
(10639, 25, 7, 0, 0, 0, 0),
(10640, 26, 7, 0, 0, 0, 0),
(10641, 27, 7, 0, 0, 0, 0),
(10642, 28, 7, 0, 0, 0, 0),
(10643, 111, 7, 0, 0, 0, 0),
(10644, 113, 7, 0, 0, 0, 0),
(10645, 21, 7, 0, 0, 0, 0),
(10646, 22, 7, 0, 0, 0, 0),
(10647, 23, 7, 0, 0, 0, 0),
(10648, 24, 7, 0, 0, 0, 0),
(10649, 30, 7, 0, 0, 0, 0),
(10650, 31, 7, 0, 0, 0, 0),
(10651, 32, 7, 0, 0, 0, 0),
(10652, 33, 7, 0, 0, 0, 0),
(10653, 112, 7, 0, 0, 0, 0),
(10654, 35, 7, 0, 0, 0, 0),
(10655, 36, 7, 0, 0, 0, 0),
(10656, 124, 7, 0, 0, 0, 0),
(10657, 135, 7, 0, 0, 0, 0),
(10658, 43, 7, 0, 0, 0, 0),
(10659, 37, 7, 0, 0, 0, 0),
(10660, 38, 7, 0, 0, 0, 0),
(10661, 39, 7, 0, 0, 0, 0),
(10662, 40, 7, 0, 0, 0, 0),
(10663, 139, 7, 0, 0, 0, 0),
(10664, 140, 7, 0, 0, 0, 0),
(10665, 46, 7, 1, 1, 1, 1),
(10666, 47, 7, 1, 1, 1, 1),
(10667, 48, 7, 1, 1, 1, 1),
(10668, 49, 7, 1, 1, 1, 1),
(10669, 50, 7, 1, 1, 1, 1),
(10670, 51, 7, 1, 1, 1, 1),
(10671, 52, 7, 1, 1, 1, 1),
(10672, 53, 7, 1, 1, 1, 1),
(10673, 54, 7, 1, 1, 1, 1),
(10674, 55, 7, 1, 1, 1, 1),
(10675, 97, 7, 1, 1, 1, 1),
(10676, 98, 7, 1, 1, 1, 1),
(10677, 99, 7, 1, 1, 1, 1),
(10678, 100, 7, 1, 1, 1, 1),
(10679, 101, 7, 1, 1, 1, 1),
(10680, 102, 7, 1, 1, 1, 1),
(10681, 122, 7, 1, 1, 1, 1),
(10682, 4, 7, 0, 0, 0, 0),
(10683, 5, 7, 0, 0, 0, 0),
(10684, 6, 7, 0, 0, 0, 0),
(10685, 7, 7, 0, 0, 0, 0),
(10686, 8, 7, 0, 0, 0, 0),
(10687, 9, 7, 0, 0, 0, 0),
(10688, 10, 7, 0, 0, 0, 0),
(10689, 11, 7, 0, 0, 0, 0),
(10690, 12, 7, 0, 0, 0, 0),
(10691, 13, 7, 0, 0, 0, 0),
(10692, 14, 7, 0, 0, 0, 0),
(10693, 15, 7, 0, 0, 0, 0),
(10694, 16, 7, 0, 0, 0, 0),
(10695, 17, 7, 0, 0, 0, 0),
(10696, 18, 7, 0, 0, 0, 0),
(10697, 19, 7, 0, 0, 0, 0),
(10698, 56, 7, 0, 0, 0, 0),
(10699, 57, 7, 0, 0, 0, 0),
(10700, 58, 7, 0, 0, 0, 0),
(10701, 41, 7, 0, 0, 0, 0),
(10702, 103, 7, 0, 0, 0, 0),
(10703, 104, 7, 0, 0, 0, 0),
(10704, 109, 7, 0, 0, 0, 0),
(10705, 110, 7, 0, 0, 0, 0),
(10706, 60, 7, 0, 0, 0, 0),
(10707, 61, 7, 0, 0, 0, 0),
(10708, 62, 7, 0, 0, 0, 0),
(10709, 63, 7, 0, 0, 0, 0),
(10710, 64, 7, 0, 0, 0, 0),
(10711, 65, 7, 0, 0, 0, 0),
(10712, 66, 7, 0, 0, 0, 0),
(10713, 67, 7, 0, 0, 0, 0),
(10714, 68, 7, 0, 0, 0, 0),
(10715, 69, 7, 0, 0, 0, 0),
(10716, 70, 7, 0, 0, 0, 0),
(10717, 71, 7, 0, 0, 0, 0),
(10718, 72, 7, 0, 0, 0, 0),
(10719, 73, 7, 0, 0, 0, 0),
(10720, 74, 7, 0, 0, 0, 0),
(10721, 75, 7, 0, 0, 0, 0),
(10722, 76, 7, 0, 0, 0, 0),
(10723, 77, 7, 0, 0, 0, 0),
(10724, 78, 7, 0, 0, 0, 0),
(10725, 79, 7, 0, 0, 0, 0),
(10726, 80, 7, 0, 0, 0, 0),
(10727, 81, 7, 0, 0, 0, 0),
(10728, 82, 7, 0, 0, 0, 0),
(10729, 83, 7, 0, 0, 0, 0),
(10730, 84, 7, 0, 0, 0, 0),
(10731, 85, 7, 0, 0, 0, 0),
(10732, 86, 7, 0, 0, 0, 0),
(10733, 105, 7, 0, 0, 0, 0),
(10734, 106, 7, 0, 0, 0, 0),
(10735, 107, 7, 0, 0, 0, 0),
(10736, 108, 7, 0, 0, 0, 0),
(10737, 59, 7, 0, 0, 0, 0),
(10738, 87, 7, 0, 0, 0, 0),
(10739, 88, 7, 0, 0, 0, 0),
(10740, 89, 7, 0, 0, 0, 0),
(10741, 90, 7, 0, 0, 0, 0),
(10742, 91, 7, 0, 0, 0, 0),
(10743, 92, 7, 0, 0, 0, 0),
(10744, 93, 7, 0, 0, 0, 0),
(10745, 94, 7, 0, 0, 0, 0),
(10746, 95, 7, 0, 0, 0, 0),
(10747, 96, 7, 0, 0, 0, 0),
(10748, 115, 7, 0, 0, 0, 0),
(10749, 116, 7, 0, 0, 0, 0),
(10750, 117, 7, 0, 0, 0, 0),
(10751, 118, 7, 0, 0, 0, 0),
(10752, 119, 7, 0, 0, 0, 0),
(10753, 120, 7, 0, 0, 0, 0),
(10754, 121, 7, 0, 0, 0, 0),
(10755, 126, 7, 0, 0, 0, 0),
(10756, 127, 7, 0, 0, 0, 0),
(10757, 128, 7, 1, 1, 1, 1),
(10758, 129, 7, 0, 0, 0, 0),
(10759, 138, 7, 0, 0, 0, 0),
(10760, 141, 7, 1, 1, 1, 1),
(10761, 130, 7, 0, 0, 0, 0),
(10762, 131, 7, 0, 0, 0, 0),
(10763, 137, 7, 1, 1, 1, 1),
(10764, 132, 7, 1, 1, 1, 1),
(10765, 133, 7, 0, 0, 0, 0),
(10766, 136, 7, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `rqsn`
--

CREATE TABLE `rqsn` (
  `id` int(255) NOT NULL,
  `rqsn_id` varchar(255) CHARACTER SET utf8 NOT NULL,
  `rqsn_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rqsn_customer_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `from_id` varchar(255) CHARACTER SET utf8 NOT NULL,
  `to_id` varchar(255) CHARACTER SET utf8 NOT NULL,
  `date` varchar(255) CHARACTER SET utf8 NOT NULL,
  `details` text CHARACTER SET utf8 DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rqsn`
--

INSERT INTO `rqsn` (`id`, `rqsn_id`, `rqsn_no`, `rqsn_customer_name`, `from_id`, `to_id`, `date`, `details`, `status`) VALUES
(56, '1466658170', '1000', '', 'E99H3W5SLS51PV4', 'HK7TGDT69VFMXB7', '2021-08-11', 'Requisition', 2),
(57, '1093453886', '1001', '', 'E99H3W5SLS51PV4', 'HK7TGDT69VFMXB7', '2021-08-11', 'Requisition', 2),
(58, '1781224619', '1002', '', 'E99H3W5SLS51PV4', 'HK7TGDT69VFMXB7', '2021-08-12', 'Requisition', 3),
(59, '1300774183', '1003', '', 'E99H3W5SLS51PV4', 'HK7TGDT69VFMXB7', '2021-08-12', 'Requisition', 3),
(60, '1101212506', '1004', '', 'E99H3W5SLS51PV4', 'HK7TGDT69VFMXB7', '2021-08-14', 'Requisition', 3),
(61, '83777668', '1005', '', 'E99H3W5SLS51PV4', 'HK7TGDT69VFMXB7', '2021-08-14', 'Requisition', 3),
(62, '1868336728', '1006', '', 'E99H3W5SLS51PV4', 'HK7TGDT69VFMXB7', '2021-08-16', 'Requisition', 2),
(63, '275462325', NULL, '', 'E99H3W5SLS51PV4', 'HK7TGDT69VFMXB7', '2021-08-16', 'Requisition', 1),
(64, '972513092', NULL, '', 'E99H3W5SLS51PV4', 'HK7TGDT69VFMXB7', '2021-08-16', 'Requisition', 1),
(65, '1314334809', NULL, '', 'E99H3W5SLS51PV4', 'HK7TGDT69VFMXB7', '2021-08-16', 'Requisition', 1),
(66, '241434409', NULL, '', 'E99H3W5SLS51PV4', 'HK7TGDT69VFMXB7', '2021-08-16', 'Requisition', 1),
(67, '1071600192', NULL, '', 'E99H3W5SLS51PV4', 'HK7TGDT69VFMXB7', '2021-08-16', 'Requisition', 1),
(68, '1452235091', NULL, '', 'E99H3W5SLS51PV4', 'HK7TGDT69VFMXB7', '2021-08-16', 'Requisition', 1),
(69, '1231997685', NULL, '', 'E99H3W5SLS51PV4', 'HK7TGDT69VFMXB7', '2021-08-16', 'Requisition', 1),
(70, '1903371570', '1007', '', 'E99H3W5SLS51PV4', 'HK7TGDT69VFMXB7', '2021-08-16', 'Requisition', 3),
(71, '1566439646', '1008', '', 'E99H3W5SLS51PV4', 'HK7TGDT69VFMXB7', '2021-08-16', 'Requisition', 2),
(72, '220954212', '1009', '', 'E99H3W5SLS51PV4', 'HK7TGDT69VFMXB7', '2021-08-17', 'Requisition', 3),
(73, '2021711719', '1009', '', 'E99H3W5SLS51PV4', 'HK7TGDT69VFMXB7', '2021-08-17', 'Requisition', 3),
(74, '1872142986', '1010', '', 'E99H3W5SLS51PV4', 'HK7TGDT69VFMXB7', '2021-08-18', 'Requisition', 3),
(75, '1839752343', '1011', '', 'E99H3W5SLS51PV4', 'HK7TGDT69VFMXB7', '2021-08-18', 'Requisition', 2),
(76, '967479489', '1011', '', 'E99H3W5SLS51PV4', 'HK7TGDT69VFMXB7', '2021-08-18', 'Requisition', 3),
(77, '133266877', '1012', '', 'E99H3W5SLS51PV4', 'HK7TGDT69VFMXB7', '2021-08-18', 'Requisition', 3),
(78, '795471405', '1013', '', 'E99H3W5SLS51PV4', 'HK7TGDT69VFMXB7', '2021-08-19', 'Requisition', 3),
(79, '1985405674', '1014', '', 'E99H3W5SLS51PV4', 'HK7TGDT69VFMXB7', '2021-08-19', 'Requisition', 3),
(80, '1552401608', '1014', '', 'E99H3W5SLS51PV4', 'HK7TGDT69VFMXB7', '2021-08-19', 'Requisition', 3),
(81, '1013782005', '1015', '', 'E99H3W5SLS51PV4', 'HK7TGDT69VFMXB7', '2021-08-21', 'Requisition', 3),
(82, '1194990856', '1016', '', 'E99H3W5SLS51PV4', 'HK7TGDT69VFMXB7', '2021-08-22', 'Requisition', 3);

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

INSERT INTO `rqsn_details` (`id`, `rqsn_detail_id`, `rqsn_id`, `product_id`, `unit`, `quantity`, `a_qty`, `total`, `status`, `isaprv`, `isrcv`, `iscw`, `purchase_status`) VALUES
(93, '1294058361', '1466658170', '15589215', '', '5', NULL, NULL, 1, NULL, NULL, NULL, 2),
(94, '100776161', '1466658170', '74325422', '', '5', NULL, NULL, 1, NULL, NULL, NULL, 2),
(95, '1383627114', '1466658170', '81244656', '', '45', NULL, NULL, 1, NULL, NULL, NULL, 2),
(96, '746162705', '1093453886', '15589215', '', '8', NULL, NULL, 1, NULL, NULL, NULL, 2),
(97, '1968887280', '1093453886', '39347173', '', '8', NULL, NULL, 1, NULL, NULL, NULL, 2),
(98, '162083738', '1093453886', '53858917', '', '6', NULL, NULL, 1, NULL, NULL, NULL, 2),
(99, '993588343', '1781224619', '81244656', '', '60', NULL, NULL, 1, NULL, NULL, NULL, 2),
(100, '1723779167', '1300774183', '43546', '', '70', NULL, NULL, 1, NULL, NULL, NULL, 2),
(101, '85232800', '1300774183', '81244656', '', '70', NULL, NULL, 1, NULL, NULL, NULL, 2),
(102, '524125543', '1101212506', '6767876', '', '6', NULL, NULL, 1, NULL, NULL, NULL, 2),
(103, '1006924798', '1101212506', '68354349', '', '6', NULL, NULL, 1, NULL, NULL, NULL, 1),
(104, '1874590835', '1101212506', '74325422', '', '6', NULL, NULL, 1, NULL, NULL, NULL, 2),
(105, '1911962878', '1101212506', '81244656', '', '6', NULL, NULL, 1, NULL, NULL, NULL, 2),
(106, '1110780401', '83777668', '6767876', '', '22', NULL, NULL, 1, NULL, NULL, NULL, 2),
(107, '2114140347', '83777668', '68354349', '', '222', NULL, NULL, 1, NULL, NULL, NULL, 1),
(108, '2059834846', '83777668', '74325422', '', '22', NULL, NULL, 1, NULL, NULL, NULL, 2),
(109, '824646957', '83777668', '81244656', '', '21', NULL, NULL, 1, NULL, NULL, NULL, 2),
(110, '2043356645', '1868336728', '6543434', '', '', NULL, NULL, 1, NULL, NULL, NULL, 1),
(111, '485108449', '1868336728', '13557324', '', '', NULL, NULL, 1, NULL, NULL, NULL, 2),
(112, '118155080', '1868336728', '41181598', '', '', NULL, NULL, 1, NULL, NULL, NULL, 2),
(113, '1825505502', '275462325', '81244656', '', '6', NULL, NULL, 1, NULL, NULL, NULL, 2),
(114, '1473077719', '275462325', '13557324', '', '6', NULL, NULL, 1, NULL, NULL, NULL, 2),
(115, '1414211773', '275462325', '39347173', '', '6', NULL, NULL, 1, NULL, NULL, NULL, 1),
(116, '1974205013', '972513092', '', '', '6', NULL, NULL, 1, NULL, NULL, NULL, 1),
(117, '1572555655', '972513092', '13557324', '', '6', NULL, NULL, 1, NULL, NULL, NULL, 2),
(118, '831676927', '972513092', '39347173', '', '8', NULL, NULL, 1, NULL, NULL, NULL, 1),
(119, '1065445475', '1314334809', '53858917', '', '8', NULL, NULL, 1, NULL, NULL, NULL, 1),
(120, '750811951', '1314334809', '13557324', '', '8', NULL, NULL, 1, NULL, NULL, NULL, 2),
(121, '800335127', '241434409', '11111', '', '8', NULL, NULL, 1, NULL, NULL, NULL, 1),
(122, '1229790583', '241434409', '11111', '', '16', NULL, NULL, 1, NULL, NULL, NULL, 1),
(123, '1603747818', '241434409', '13557324', '', '6', NULL, NULL, 1, NULL, NULL, NULL, 2),
(124, '711946623', '1071600192', '', '', '16', NULL, NULL, 1, NULL, NULL, NULL, 1),
(125, '1377508816', '1071600192', '11111', '', '12', NULL, NULL, 1, NULL, NULL, NULL, 1),
(126, '1287144191', '1071600192', '13557324', '', '10', NULL, NULL, 1, NULL, NULL, NULL, 2),
(127, '1803547802', '1452235091', '13557324', '', '20', NULL, NULL, 1, NULL, NULL, NULL, 2),
(128, '262094224', '1452235091', '41181598', '', '10', NULL, NULL, 1, NULL, NULL, NULL, 2),
(129, '1144589335', '1452235091', '84562845', '', '5', NULL, NULL, 1, NULL, NULL, NULL, 1),
(130, '408939617', '1231997685', '13557324', '', '20', NULL, NULL, 1, NULL, NULL, NULL, 2),
(131, '597369667', '1231997685', '41181598', '', '10', NULL, NULL, 1, NULL, NULL, NULL, 2),
(132, '1402843444', '1231997685', '84562845', '', '8', NULL, NULL, 1, NULL, NULL, NULL, 1),
(133, '1712893608', '1903371570', '13557324', '', '10', NULL, NULL, 1, NULL, NULL, NULL, 1),
(134, '5838456', '1903371570', '53858917', '', '10', NULL, NULL, 1, NULL, NULL, NULL, 1),
(135, '861829789', '1566439646', '39347173', '', '10', NULL, 120000, 1, NULL, NULL, NULL, 1),
(136, '983969893', '220954212', '13557324', '', '10', NULL, 80, 1, NULL, NULL, NULL, 1),
(137, '968596311', '2021711719', '68354349', '', '10', NULL, 1200, 1, NULL, NULL, NULL, 1),
(138, '1635041922', '1872142986', '74325422', '', '40', NULL, 8000, 1, NULL, NULL, NULL, 2),
(139, '1084186037', '967479489', '68354349', '', '50', NULL, 1000, 1, NULL, NULL, NULL, 1),
(140, '175461269', '133266877', '81244656', '', '20', NULL, 19980, 1, NULL, NULL, NULL, 2),
(141, '695721769', '795471405', '68354349', '', '50', NULL, 1000, 1, NULL, NULL, NULL, 1),
(142, '2029580059', '795471405', '74325422', '', '50', NULL, 10000, 1, NULL, NULL, NULL, 2),
(143, '1544385476', '1985405674', '68354349', '', '20', NULL, 400, 1, NULL, NULL, NULL, 1),
(144, '1527250586', '1552401608', '81244656', '', '70', NULL, 69930, 1, NULL, NULL, NULL, 2),
(145, '621101361', '1013782005', '74325422', '', '50', NULL, 25000, 1, NULL, NULL, NULL, 2),
(146, '2043866852', '1194990856', '68354349', '', '50', NULL, 1000, 1, NULL, NULL, NULL, 1);

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
(2, 'Gmebd'),
(5, 'sales'),
(6, 'test'),
(7, 'outlet'),
(10, 'cw');

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
(15, 'iddZKdMU6PIVZMj', 10, 'OpSoxJvBbbS8Rws', '2021-04-17 08:29:31');

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

--
-- Dumping data for table `service_invoice`
--

INSERT INTO `service_invoice` (`id`, `voucher_no`, `date`, `employee_id`, `customer_id`, `total_amount`, `total_discount`, `invoice_discount`, `total_tax`, `paid_amount`, `due_amount`, `shipping_cost`, `previous`, `details`) VALUES
(1, 'serv-20210301074951', '2021-03-10', '2', '1', '1000.00', '0.00', '0.00', '0.00', '1002.00', '0.00', '0.00', '2.00', 'Service Invoice');

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

--
-- Dumping data for table `service_invoice_details`
--

INSERT INTO `service_invoice_details` (`id`, `service_id`, `service_inv_id`, `qty`, `charge`, `discount`, `discount_amount`, `total`) VALUES
(1, 1, 'serv-20200906092122', '1.00', '4500.00', '0.00', '0.00', '4500.00'),
(2, 6, 'serv-20210301074951', '1.00', '1000.00', '0.00', '0.00', '1000.00');

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
(141, 18, 'rqsn_list_outlet', NULL, NULL, 'rqsn_list_outlet', 1);

-- --------------------------------------------------------

--
-- Table structure for table `supplier_address`
--

CREATE TABLE `supplier_address` (
  `id` int(255) NOT NULL,
  `supplier_id` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `supplier_address`
--

INSERT INTO `supplier_address` (`id`, `supplier_id`, `address`) VALUES
(8, '5', 'Hathazrai,chittgaong'),
(9, '5', 'CFG'),
(10, '5', 'sdadsa'),
(12, '6', 'Chittagong');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_contact`
--

CREATE TABLE `supplier_contact` (
  `id` int(255) NOT NULL,
  `supplier_id` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `supplier_contact`
--

INSERT INTO `supplier_contact` (`id`, `supplier_id`, `contact`) VALUES
(7, '5', 'Arman'),
(8, '5', 'Md Arman Ullah'),
(10, '6', 'Mainul');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_email`
--

CREATE TABLE `supplier_email` (
  `id` int(255) NOT NULL,
  `supplier_id` varchar(255) DEFAULT NULL,
  `email_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `supplier_email`
--

INSERT INTO `supplier_email` (`id`, `supplier_id`, `email_id`) VALUES
(13, '5', 'irfamna@gmail.com'),
(14, '5', 'engsol2020@gmail.com'),
(15, '5', 'sad@gmail.com'),
(17, '6', 'mainul@gmail.com');

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
(1, 'Codeweavers', '2', '60', 'Hathazari', 'Chittgaong', '6543', 'Afghanistan', 'XYZ', 1),
(2, 'Arman', '1', '15', 'CTGT', 'Chittagong', '4330', 'Bangladesh', 'xyz', 1),
(3, 'ABCD', NULL, NULL, 'ABCS', 'Nowakhali', '4337', 'Afghanistan', 'Abcd', 1),
(4, 'Pran', NULL, NULL, 'IDIC', 'Nowakhali', '6543', 'Afghanistan', 'asdd', 1),
(5, 'BRAD', '2', NULL, 'ASSD', 'Nowakhali', '6543', 'Afghanistan', 'AS', 1),
(6, 'KDAIT', '3', NULL, 'd', 'Nowakhali', '6543', 'Afghanistan', 'd', 1);

-- --------------------------------------------------------

--
-- Table structure for table `supplier_mobile`
--

CREATE TABLE `supplier_mobile` (
  `id` int(255) NOT NULL,
  `supplier_id` varchar(255) DEFAULT NULL,
  `mobile_no` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `supplier_mobile`
--

INSERT INTO `supplier_mobile` (`id`, `supplier_id`, `mobile_no`) VALUES
(8, '5', '0182636383'),
(9, '5', '0173537487'),
(10, '5', '017574645'),
(12, '6', '0736347');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_phone`
--

CREATE TABLE `supplier_phone` (
  `id` int(255) NOT NULL,
  `supplier_id` varchar(255) DEFAULT NULL,
  `phone_no` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `supplier_phone`
--

INSERT INTO `supplier_phone` (`id`, `supplier_id`, `phone_no`) VALUES
(8, '5', '0182636383'),
(9, '5', '0736347'),
(10, '5', '91836843'),
(12, '6', '0736347'),
(13, '6', '8888888888');

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
(2, '123456', NULL, 'Apple', 29, NULL, '18000.00'),
(1259, '2843455156', NULL, 'VINNO X1', 8, NULL, '1.00'),
(1260, '5148948637', NULL, 'VINNO X2', 8, NULL, '1.00'),
(1261, '3938951913', NULL, 'VINNO E10', 8, NULL, '1.00'),
(1262, '5555351171', NULL, 'VINNO E20', 8, NULL, '1.00'),
(1263, '7438924265', NULL, 'VINNO E30', 8, NULL, '1.00'),
(1264, '4546547519', NULL, 'VINNO E35', 8, NULL, '1.00'),
(1265, '5195545178', NULL, 'VINNO G86', 8, NULL, '1.00'),
(1266, '4219525235', NULL, 'VINNO G55', 8, NULL, '1.00'),
(1267, '1972189594', NULL, 'VINNO G50', 8, NULL, '1.00'),
(1268, '2662697126', NULL, 'VINNO M86', 8, NULL, '1.00'),
(1269, '9731893189', NULL, 'VINNO A5', 8, NULL, '1.00'),
(1270, '3875773582', NULL, 'VINNO Q5-2P', 8, NULL, '1.00'),
(1271, '5149633487', NULL, 'VINNO Q5-3C', 8, NULL, '1.00'),
(1272, '9945127681', NULL, 'X2-6C', 8, NULL, '1.00'),
(1273, '9343989748', NULL, 'S1-8C', 8, NULL, '1.00'),
(1274, '9475139111', NULL, 'G2-5C', 8, NULL, '1.00'),
(1275, '7443813654', NULL, 'F2-5C', 8, NULL, '1.00'),
(1276, '1316262584', NULL, 'G3-10PX', 8, NULL, '1.00'),
(1277, '5929997531', NULL, 'S1-6P', 8, NULL, '1.00'),
(1278, '9886314157', NULL, 'G1-4P', 8, NULL, '1.00'),
(1279, '7987512769', NULL, 'X6-16L', 8, NULL, '1.00'),
(1280, '4936976335', NULL, 'F4-12L', 8, NULL, '1.00'),
(1281, '7529243325', NULL, 'X4-12L', 8, NULL, '1.00'),
(1282, '6375327469', NULL, 'F4-9E', 8, NULL, '1.00'),
(1283, '9686224336', NULL, 'D3-6C', 8, NULL, '1.00'),
(1284, '9852175535', NULL, 'X1', 8, NULL, '1.00'),
(1285, '7146199194', NULL, 'X2/E10/E20', 8, NULL, '1.00'),
(1286, '3369824413', NULL, 'E35/E30', 8, NULL, '1.00'),
(1287, '6864216257', NULL, 'X1', 8, NULL, '1.00'),
(1288, '5772864542', NULL, 'E30', 8, NULL, '1.00'),
(1289, '1935839834', NULL, 'E30', 8, NULL, '1.00'),
(1290, '9592695249', NULL, 'GE-75', 9, NULL, '1.00'),
(1291, '3521547382', NULL, 'GE-55', 9, NULL, '1.00'),
(1292, '2757363889', NULL, 'G-55 Power', 9, NULL, '1.00'),
(1293, '8336198396', NULL, 'GE-30', 9, NULL, '1.00'),
(1294, '6587576339', NULL, 'GE-75', 9, NULL, '1.00'),
(1295, '4327545645', NULL, 'GE-75', 9, NULL, '1.00'),
(1296, '4628199575', NULL, 'GE-30/55', 9, NULL, '1.00'),
(1297, '9729888287', NULL, 'GA12A', 9, NULL, '1.00'),
(1298, '4884397693', NULL, 'GE-B5L', 9, NULL, '1.00'),
(1299, '6674433346', NULL, 'GE-W5L', 9, NULL, '1.00'),
(1300, '8757523455', NULL, 'MSA99', 9, NULL, '1.00'),
(1301, '2257774628', NULL, 'GE-600E', 9, NULL, '1.00'),
(1302, '6782215817', NULL, 'GE-600F', 9, NULL, '1.00'),
(1303, '1573161142', NULL, 'GE-600K', 9, NULL, '1.00'),
(1304, '6668542599', NULL, 'GE-600H', 9, NULL, '1.00'),
(1305, '9777316782', NULL, 'BM50', 9, NULL, '1.00'),
(1306, '6288455251', NULL, 'BM80', 9, NULL, '1.00'),
(1307, '7456261964', NULL, 'BM100', 9, NULL, '1.00'),
(1308, '2396577658', NULL, 'C12', 9, NULL, '1.00'),
(1309, '7143696355', NULL, 'YE660E', 9, NULL, '1.00'),
(1310, '7285837625', NULL, 'Yuwell Mercury ', 9, NULL, '1.00'),
(1311, '3736218733', NULL, 'VD', 9, NULL, '1.00'),
(1312, '2954947986', NULL, 'DWS', 9, NULL, '1.00'),
(1313, '6672222391', NULL, 'MD-DOME-A2', 9, NULL, '1.00'),
(1314, '7356116167', NULL, 'MD-LED-A2', 9, NULL, '1.00'),
(1315, '9826917368', NULL, 'ZEUS-400P', 9, NULL, '1.00'),
(1316, '9377125474', NULL, 'Star-x1', 9, NULL, '1.00'),
(1317, '1215918771', NULL, 'UA-5', 9, NULL, '1.00'),
(1318, '1772782465', NULL, 'Combo12', 9, NULL, '1.00'),
(1319, '9471356172', NULL, 'Combo14', 9, NULL, '1.00'),
(1320, '1272116647', NULL, 'F10', 9, NULL, '1.00'),
(1321, '7726828562', NULL, 'RM-06', 9, NULL, '1.00'),
(1322, '5661328717', NULL, '2?-20?', 9, NULL, '1.00'),
(1323, '1758682233', NULL, '5?-50?', 9, NULL, '1.00'),
(1324, '4165569882', NULL, '10?-100?', 9, NULL, '1.00'),
(1325, '8538119366', NULL, '100?-1000?', 9, NULL, '1.00'),
(1326, '5752613625', NULL, 'GEW-1100', 9, NULL, '1.00'),
(1327, '5197163347', NULL, 'GEW-1100P', 9, NULL, '1.00'),
(1328, '5181975849', NULL, 'Holter', 9, NULL, '1.00'),
(1329, '2437184128', NULL, 'EEG32', 9, NULL, '1.00'),
(1330, '5581369278', NULL, 'RAU-760', 9, NULL, '1.00'),
(1331, '4518129762', NULL, '3*6*12', 9, NULL, '1.00'),
(1332, '5942767541', NULL, '3*6*12', 9, NULL, '1.00'),
(1333, '7853354164', NULL, '3*6*12', 9, NULL, '1.00'),
(1334, '1738149264', NULL, 'ZNC 961A', 9, NULL, '1.00'),
(1335, '9268243184', NULL, 'ES-20', 9, NULL, '1.00'),
(1336, '6694249826', NULL, 'DC-80', 10, NULL, '1.00'),
(1337, '3258766741', NULL, 'DC-40', 10, NULL, '1.00'),
(1338, '6775697698', NULL, 'DC-30', 10, NULL, '1.00'),
(1339, '6594565634', NULL, 'DP-5', 10, NULL, '1.00'),
(1340, '9897235318', NULL, 'DP-30', 10, NULL, '1.00'),
(1341, '9156237765', NULL, 'DP-30 Power', 10, NULL, '1.00'),
(1342, '8783292385', NULL, 'DP-20', 10, NULL, '1.00'),
(1343, '4918811552', NULL, 'DP-2200Plus', 10, NULL, '1.00'),
(1344, '6446751889', NULL, 'P4-2', 10, NULL, '1.00'),
(1345, '3317486227', NULL, '2P2P', 10, NULL, '1.00'),
(1346, '2356314763', NULL, '7L4A', 10, NULL, '1.00'),
(1347, '6495846295', NULL, '75L38P', 10, NULL, '1.00'),
(1348, '2313527547', NULL, '65C15EA', 10, NULL, '1.00'),
(1349, '2991457183', NULL, '75L38EA', 10, NULL, '1.00'),
(1350, '8533619747', NULL, '65EC10EA', 10, NULL, '1.00'),
(1351, '4629898217', NULL, 'DC-40', 10, NULL, '1.00'),
(1352, '5951731564', NULL, 'HD3', 10, NULL, '1.00'),
(1353, '3814491574', NULL, 'TH-5000', 11, NULL, '1.00'),
(1354, '3894416291', NULL, 'TH-5500', 11, NULL, '1.00'),
(1355, '8827256147', NULL, 'TH-280Pro', 11, NULL, '1.00'),
(1356, '2178518875', NULL, 'TH-280', 11, NULL, '1.00'),
(1357, '9445252919', NULL, 'TH-100', 11, NULL, '1.00'),
(1358, '3694378569', NULL, 'TH-80', 11, NULL, '1.00'),
(1359, '6293879451', NULL, 'TH-5500/TH-5000', 11, NULL, '1.00'),
(1360, '5838763117', NULL, 'TH-5500/TH-5000', 11, NULL, '1.00'),
(1361, '1667554119', NULL, 'TH-5500/TH-5000', 11, NULL, '1.00'),
(1362, '2245643832', NULL, 'TH-280/TH-280Pro', 11, NULL, '1.00'),
(1363, '6645641962', NULL, 'TH-280/TH-280Pro', 11, NULL, '1.00'),
(1364, '7474318313', NULL, 'TH-280/TH-280Pro', 11, NULL, '1.00'),
(1365, '6942288527', NULL, 'TH-280/TH-280Pro', 11, NULL, '1.00'),
(1366, '7629292724', NULL, 'TH-280/TH-280Pro', 11, NULL, '1.00'),
(1367, '2864725418', NULL, 'CM-300', 12, NULL, '1.00'),
(1368, '4135169698', NULL, 'H3', 12, NULL, '1.00'),
(1369, '4675833737', NULL, 'CM-600', 12, NULL, '1.00'),
(1370, '3116482865', NULL, 'CM-1200', 12, NULL, '1.00'),
(1371, '2899227697', NULL, 'CM-1200A', 12, NULL, '1.00'),
(1372, '9952281153', NULL, 'CM-1200B', 12, NULL, '1.00'),
(1373, '9275255232', NULL, 'NC3', 12, NULL, '1.00'),
(1374, '3755863594', NULL, 'STAR-80', 12, NULL, '1.00'),
(1375, '7964522476', NULL, 'STAR-800', 12, NULL, '1.00'),
(1376, '5842917997', NULL, 'STAR-8000', 12, NULL, '1.00'),
(1377, '8189848332', NULL, 'C80', 12, NULL, '1.00'),
(1378, '4813244596', NULL, 'M200A', 12, NULL, '1.00'),
(1379, '4484951513', NULL, 'ME600', 12, NULL, '1.00'),
(1380, '8288374373', NULL, 'C60', 12, NULL, '1.00'),
(1381, '8773975986', NULL, 'NV6', 12, NULL, '1.00'),
(1382, '2421247686', NULL, 'NV8', 12, NULL, '1.00'),
(1383, '8978119488', NULL, 'C-21', 12, NULL, '1.00'),
(1384, '3337121539', NULL, 'C-22', 12, NULL, '1.00'),
(1385, '9781949433', NULL, 'STAR-5000F', 12, NULL, '1.00'),
(1386, '8526371633', NULL, 'AX-700', 12, NULL, '1.00'),
(1387, '2862325668', NULL, 'AX-400', 12, NULL, '1.00'),
(1388, '3967372682', NULL, 'S8', 12, NULL, '1.00'),
(1389, '1377442837', NULL, 'B3', 12, NULL, '1.00'),
(1390, '8329223998', NULL, NULL, 12, NULL, '1.00'),
(1391, '1872347729', NULL, 'I-CHROMA 3', 13, NULL, '1.00'),
(1392, '5511931216', NULL, 'I-CHROMA II ', 13, NULL, '1.00'),
(1393, '3352973834', NULL, 'I-CHROMA I', 13, NULL, '1.00'),
(1394, '9511242719', NULL, 'I-CHROMA D', 13, NULL, '1.00'),
(1395, '1161491479', NULL, 'I-CHAMBER', 13, NULL, '1.00'),
(1396, '7615687119', NULL, 'Hemochroma Plus', 13, NULL, '1.00'),
(1397, '4895382719', NULL, 'Microcuvettes (4x50Test)', 13, NULL, '1.00'),
(1398, '7195121167', NULL, '25T/Box', 13, NULL, '1.00'),
(1399, '3216627413', NULL, '25T/Box', 13, NULL, '1.00'),
(1400, '7655173492', NULL, '25T/Box', 13, NULL, '1.00'),
(1401, '7764665445', NULL, '25T/Box', 13, NULL, '1.00'),
(1402, '1417918162', NULL, '25T/Box', 13, NULL, '1.00'),
(1403, '6423536839', NULL, '25T/Box', 13, NULL, '1.00'),
(1404, '6357473488', NULL, '25T/Box', 13, NULL, '1.00'),
(1405, '7454831891', NULL, '25T/Box', 13, NULL, '1.00'),
(1406, '8946745234', NULL, '25T/Box', 13, NULL, '1.00'),
(1407, '2498181191', NULL, '25T/Box', 13, NULL, '1.00'),
(1408, '6898792843', NULL, '25T/Box', 13, NULL, '1.00'),
(1409, '5554682713', NULL, '25T/Box', 13, NULL, '1.00'),
(1410, '1893136696', NULL, '25T/Box', 13, NULL, '1.00'),
(1411, '5298893112', NULL, '25T/Box', 13, NULL, '1.00'),
(1412, '2429149716', NULL, '25T/Box', 13, NULL, '1.00'),
(1413, '4546546581', NULL, '25T/Box', 13, NULL, '1.00'),
(1414, '6353784466', NULL, '25T/Box', 13, NULL, '1.00'),
(1415, '8752914136', NULL, '25T/Box', 13, NULL, '1.00'),
(1416, '8334185553', NULL, '25T/Box', 13, NULL, '1.00'),
(1417, '8773411725', NULL, '25T/Box', 13, NULL, '1.00'),
(1418, '2538456999', NULL, '25T/Box', 13, NULL, '1.00'),
(1419, '2499975675', NULL, '25T/Box', 13, NULL, '1.00'),
(1420, '2621382698', NULL, '25T/Box', 13, NULL, '1.00'),
(1421, '4256679267', NULL, '25T/Box', 13, NULL, '1.00'),
(1422, '6143512631', NULL, '25T/Box', 13, NULL, '1.00'),
(1423, '1148433558', NULL, '25T/Box', 13, NULL, '1.00'),
(1424, '2654463849', NULL, '25T/Box', 13, NULL, '1.00'),
(1425, '4135729952', NULL, '25T/Box', 13, NULL, '1.00'),
(1426, '6682728432', NULL, '25T/Box', 13, NULL, '1.00'),
(1427, '9495845845', NULL, '25T/Box', 13, NULL, '1.00'),
(1428, '2582876253', NULL, '25T/Box', 13, NULL, '1.00'),
(1429, '2248351141', NULL, '25T/Box', 13, NULL, '1.00'),
(1430, '8797842743', NULL, '25T/Box', 13, NULL, '1.00'),
(1431, '6426767679', NULL, '25T/Box', 13, NULL, '1.00'),
(1432, '8518955588', NULL, '25T/Box', 13, NULL, '1.00'),
(1433, '3642841697', NULL, '25T/Box', 13, NULL, '1.00'),
(1434, '4493976874', NULL, '25T/Box', 13, NULL, '1.00'),
(1435, '3384814842', NULL, '25T/Box', 13, NULL, '1.00'),
(1436, '6821969783', NULL, '25T/Box', 13, NULL, '1.00'),
(1437, '6251979411', NULL, '25T/Box', 13, NULL, '1.00'),
(1438, '5939893419', NULL, '25T/Box', 13, NULL, '1.00'),
(1439, '9324293269', NULL, '10T/Box', 13, NULL, '1.00'),
(1440, '7387988641', NULL, '10T/Box', 13, NULL, '1.00'),
(1441, '8739541485', NULL, '25T/Box', 13, NULL, '1.00'),
(1442, '1485871169', NULL, '25T/Box', 13, NULL, '1.00'),
(1443, '2137669984', NULL, '25T/Box', 13, NULL, '1.00'),
(1444, '3845379354', NULL, '25T/Box', 13, NULL, '1.00'),
(1445, '3918913383', NULL, '25T/Box', 13, NULL, '1.00'),
(1446, '8769215268', NULL, '25T/Box', 13, NULL, '1.00'),
(1447, '2572267786', NULL, '25T/Box', 13, NULL, '1.00'),
(1448, '1787166462', NULL, '25T/Box', 13, NULL, '1.00'),
(1449, '2868861482', NULL, '25T/Box', 13, NULL, '1.00'),
(1450, '7715392324', NULL, '25T/Box', 13, NULL, '1.00'),
(1451, '9697242388', NULL, '25T/Box', 13, NULL, '1.00'),
(1452, '2781229564', NULL, '25T/Box', 13, NULL, '1.00'),
(1453, '2565938858', NULL, '25T/Box', 13, NULL, '1.00'),
(1454, '1176677355', NULL, '25T/Box', 13, NULL, '1.00'),
(1455, '2975861677', NULL, '25T/Box', 13, NULL, '1.00'),
(1456, '1437658225', NULL, '25T/Box', 13, NULL, '1.00'),
(1457, '2339122142', NULL, '25T/Box', 13, NULL, '1.00'),
(1458, '9927771828', NULL, '25T/Box', 13, NULL, '1.00'),
(1459, '4855786715', NULL, '25T/Box', 13, NULL, '1.00'),
(1460, '1168471154', NULL, '25T/Box', 13, NULL, '1.00'),
(1461, '1575876721', NULL, '25T/Box', 13, NULL, '1.00'),
(1462, '5959328231', NULL, '25T/Box', 13, NULL, '1.00'),
(1463, '8146163666', NULL, '25T/Box', 13, NULL, '1.00'),
(1464, '5652764211', NULL, '25T/Box', 13, NULL, '1.00'),
(1465, '7768974535', NULL, '25T/Box', 13, NULL, '1.00'),
(1466, '4314145151', NULL, '1V/Box', 13, NULL, '1.00'),
(1467, '2321556517', NULL, '1V/Box', 13, NULL, '1.00'),
(1468, '2843783532', NULL, '1V/Box', 13, NULL, '1.00'),
(1469, '2519589534', NULL, '1V/Box', 13, NULL, '1.00'),
(1470, '3563683915', NULL, '1V/Box', 13, NULL, '1.00'),
(1471, '6865661967', NULL, '1V/Box', 13, NULL, '1.00'),
(1472, '2546741495', NULL, '1V/Box', 13, NULL, '1.00'),
(1473, '7995244274', NULL, '1V/Box', 13, NULL, '1.00'),
(1474, '1764337295', NULL, '1V/Box', 13, NULL, '1.00'),
(1475, '2642665859', NULL, '1V/Box', 13, NULL, '1.00'),
(1476, '2291793661', NULL, '1V/Box', 13, NULL, '1.00'),
(1477, '6622439423', NULL, '1V/Box', 13, NULL, '1.00'),
(1478, '7675594945', NULL, '1V/Box', 13, NULL, '1.00'),
(1479, '6726493952', NULL, '1V/Box', 13, NULL, '1.00'),
(1480, '4624914121', NULL, '1V/Box', 13, NULL, '1.00'),
(1481, '6715554299', NULL, '1V/Box', 13, NULL, '1.00'),
(1482, '6548249563', NULL, '1V/Box', 13, NULL, '1.00'),
(1483, '9346217726', NULL, '1V/Box', 13, NULL, '1.00'),
(1484, '5359235523', NULL, '1V/Box', 13, NULL, '1.00'),
(1485, '1832979644', NULL, '1V/Box', 13, NULL, '1.00'),
(1486, '1284429583', NULL, '1V/Box', 13, NULL, '1.00'),
(1487, '6949218551', NULL, '1V/Box', 13, NULL, '1.00'),
(1488, '4126881671', NULL, '1V/Box', 13, NULL, '1.00'),
(1489, '1929339648', NULL, '1V/Box', 13, NULL, '1.00'),
(1490, '8398617377', NULL, '1V/Box', 13, NULL, '1.00'),
(1491, '7659636316', NULL, '1V/Box', 13, NULL, '1.00'),
(1492, '9228497249', NULL, '1V/Box', 13, NULL, '1.00'),
(1493, '8582682244', NULL, '1V/Box', 13, NULL, '1.00'),
(1494, '5844496386', NULL, '1V/Box', 13, NULL, '1.00'),
(1495, '9479393469', NULL, '1V/Box', 13, NULL, '1.00'),
(1496, '4891977537', NULL, '1V/Box', 13, NULL, '1.00'),
(1497, '4951643178', NULL, '1V/Box', 13, NULL, '1.00'),
(1498, '7187275171', NULL, 'E-20A-H-0', 14, NULL, '1.00'),
(1499, '3799345234', NULL, 'T-20T', 14, NULL, '1.00'),
(1500, '5895999689', NULL, 'T-20A', 14, NULL, '1.00'),
(1501, '5637688944', NULL, 'T-25T', 14, NULL, '1.00'),
(1502, '2736882971', NULL, 'T-25A', 14, NULL, '1.00'),
(1503, '4938164876', NULL, 'DS6', 15, NULL, '1.00'),
(1504, '6916716397', NULL, 'DS7', 15, NULL, '1.00'),
(1505, '5671241182', NULL, 'DS8', 15, NULL, '1.00'),
(1506, '2936914712', NULL, 'C08', 16, NULL, '1.00'),
(1507, '4237799475', NULL, 'B18', 16, NULL, '1.00'),
(1508, '8921497628', NULL, 'BMC', 16, NULL, '1.00'),
(1509, '2324441249', NULL, 'BMC', 16, NULL, '1.00'),
(1510, '3839695256', NULL, 'EM600', 16, NULL, '1.00'),
(1511, '6713179231', NULL, 'EM20', 16, NULL, '1.00'),
(1512, '3446615115', NULL, 'EM30', 16, NULL, '1.00'),
(1513, '8936226836', NULL, 'EMC-6W', 16, NULL, '1.00'),
(1514, '4555327897', NULL, 'EMC-6W Plus', 16, NULL, '1.00'),
(1515, '5372982581', NULL, 'EMC-12W', 16, NULL, '1.00'),
(1516, '2859588513', NULL, 'MBM', 16, NULL, '1.00'),
(1517, '1686324392', NULL, 'SS10', 16, NULL, '1.00'),
(1518, '9176568815', NULL, 'WS-D ', 16, NULL, '1.00'),
(1519, '6358599257', NULL, 'WS-M ', 16, NULL, '1.00'),
(1520, '9986551495', NULL, 'TTI-20 ', 16, NULL, '1.00'),
(1521, '7219788628', NULL, NULL, 16, NULL, '1.00'),
(1522, '4737522819', NULL, NULL, 16, NULL, '1.00'),
(1523, '5762642827', NULL, 'EM-90', 16, NULL, '1.00'),
(1524, '5375468168', NULL, 'EM-88B', 16, NULL, '1.00'),
(1525, '8873712992', NULL, '1.6', 16, NULL, '1.00'),
(1526, '3962145892', NULL, '1.2', 16, NULL, '1.00'),
(1527, '6814121678', NULL, 'K2 - 2ml', 16, NULL, '1.00'),
(1528, '1678997171', NULL, 'K2 - 1ml', 16, NULL, '1.00'),
(1529, '1787848191', NULL, 'Glucose Tube', 16, NULL, '1.00'),
(1530, '6715763934', NULL, 'PT Tube', 16, NULL, '1.00'),
(1531, '8676288331', NULL, '4ml', 16, NULL, '1.00'),
(1532, '7942186628', NULL, '4ml', 16, NULL, '1.00'),
(1533, '8454399715', NULL, '23G', 16, NULL, '1.00'),
(1534, '3319616961', NULL, '22G', 16, NULL, '1.00'),
(1535, '3286725696', NULL, 'EMP-168', 17, NULL, '1.00'),
(1536, '7897816453', NULL, 'EMP-168 Plus', 17, NULL, '1.00'),
(1537, '2926127773', NULL, 'M201', 17, NULL, '1.00'),
(1538, '3562122915', NULL, 'ZQ-1206', 18, NULL, '1.00'),
(1539, '1716176948', NULL, 'HYHJ-KC', 19, NULL, '1.00'),
(1540, '7596111372', NULL, 'HYHJ-KC', 19, NULL, '1.00'),
(1541, '7331373379', NULL, 'HYHJ-KC', 19, NULL, '1.00'),
(1542, '8253462458', NULL, 'GA-400', 20, NULL, '1.00'),
(1543, '5369237952', NULL, 'G-3000', 20, NULL, '1.00'),
(1544, '4552722583', NULL, 'XC-A30', 21, NULL, '1.00'),
(1545, '2971169895', NULL, 'XC-A10', 21, NULL, '1.00'),
(1546, '4729448229', NULL, 'XI-921F', 21, NULL, '1.00'),
(1547, '1563668612', NULL, 'XI-921B', 21, NULL, '1.00'),
(1548, '4126963142', NULL, 'XI-921C', 21, NULL, '1.00'),
(1549, '9944671976', NULL, 'ABR', 21, NULL, '1.00'),
(1550, '8117891656', NULL, 'ABW', 21, NULL, '1.00'),
(1551, '5356318447', NULL, '1x100ml', 21, NULL, '1.00'),
(1552, '5846724774', NULL, '1x100ml', 21, NULL, '1.00'),
(1553, '4935195371', NULL, '1x100ml', 21, NULL, '1.00'),
(1554, '8455685974', NULL, '1x100ml', 21, NULL, '1.00'),
(1555, '5544212149', NULL, 'AB', 21, NULL, '1.00'),
(1556, '1867765211', NULL, 'K', 21, NULL, '1.00'),
(1557, '7253739751', NULL, 'Na', 21, NULL, '1.00'),
(1558, '5243217747', NULL, 'Cl', 21, NULL, '1.00'),
(1559, '4913779895', NULL, 'Ca', 21, NULL, '1.00'),
(1560, '9642465368', NULL, 'PH', 21, NULL, '1.00'),
(1561, '6773888811', NULL, 'Ref', 21, NULL, '1.00'),
(1562, '1147954734', NULL, 'KU-11B', 21, NULL, '1.00'),
(1563, '6247236746', NULL, 'Combo11', 21, NULL, '1.00'),
(1564, '8497479996', NULL, 'PE-6800 ', 22, NULL, '1.00'),
(1565, '8979593575', NULL, 'PE-6800 Plus', 22, NULL, '1.00'),
(1566, '5473485388', NULL, 'PE-6100', 22, NULL, '1.00'),
(1567, '8884478882', NULL, 'PE-6000', 22, NULL, '1.00'),
(1568, '2831635462', NULL, 'PE-D01', 22, NULL, '1.00'),
(1569, '8821893664', NULL, 'PE-C01', 22, NULL, '1.00'),
(1570, '3935557384', NULL, 'PE-L01', 22, NULL, '1.00'),
(1571, '6793366295', NULL, 'PE-C03', 22, NULL, '1.00'),
(1572, '6659251855', NULL, 'PE-C02', 22, NULL, '1.00'),
(1573, '7166558558', NULL, 'PE-7100', 22, NULL, '1.00'),
(1574, '2831635462', NULL, 'PE-D01', 22, NULL, '1.00'),
(1575, '4842251218', NULL, 'PE-L05 DIFF', 22, NULL, '1.00'),
(1576, '9586168847', NULL, 'PE-L05 LH', 22, NULL, '1.00'),
(1577, '2717758124', NULL, 'ZEN-7000', 23, NULL, '1.00'),
(1578, '4158351621', NULL, 'OSCAR Classic', 23, NULL, '1.00'),
(1579, '5746869762', NULL, 'PORT-X IV', 23, NULL, '1.00'),
(1580, '9228758242', NULL, 'GXI-1 (Size1)', 23, NULL, '1.00'),
(1581, '2588478183', NULL, 'GXI-1 (Size2)', 23, NULL, '1.00'),
(1582, '6396559635', NULL, 'PAPAYA', 23, NULL, '1.00'),
(1583, '2321969647', NULL, 'Gmate Voice', 24, NULL, '1.00'),
(1584, '8817756176', NULL, 'Gmate Smart', 24, NULL, '1.00'),
(1585, '3418456388', NULL, 'Gmate Origin', 24, NULL, '1.00'),
(1586, '2438838219', NULL, '1x25T', 24, NULL, '1.00'),
(1587, '2294835351', NULL, '2x50ml', 25, NULL, '1.00'),
(1588, '7116413444', NULL, '5x18ml', 25, NULL, '1.00'),
(1589, '3768121812', NULL, '5x5ml', 25, NULL, '1.00'),
(1590, '8536543756', NULL, '320ml', 25, NULL, '1.00'),
(1591, '9277734445', NULL, '2x50ml', 25, NULL, '1.00'),
(1592, '1388671424', NULL, '2x50ml', 25, NULL, '1.00'),
(1593, '4657627551', NULL, '2x50ml', 25, NULL, '1.00'),
(1594, '9271873415', NULL, '2x500ml', 25, NULL, '1.00'),
(1595, '6667539651', NULL, '1x500ml', 25, NULL, '1.00'),
(1596, '1989624282', NULL, '2x60ml', 25, NULL, '1.00'),
(1597, '4948525419', NULL, '2x60ml', 25, NULL, '1.00'),
(1598, '1456263546', NULL, '1x50ml', 25, NULL, '1.00'),
(1599, '1983317329', NULL, 'R1:30ml+R2:10ml', 25, NULL, '1.00'),
(1600, '6861179588', NULL, '2x50ml', 25, NULL, '1.00'),
(1601, '2256342295', NULL, '2x50ml', 25, NULL, '1.00'),
(1602, '4658245595', NULL, '3x50ml', 25, NULL, '1.00'),
(1603, '9863433837', NULL, '2x50ml', 25, NULL, '1.00'),
(1604, '7188685954', NULL, '2x20ml', 25, NULL, '1.00'),
(1605, '9253978826', NULL, 'R1:40ml+R2:10ml', 25, NULL, '1.00'),
(1606, '8631545735', NULL, '1x2.5ml', 25, NULL, '1.00'),
(1607, '2285355535', NULL, '1x4.5ml', 25, NULL, '1.00'),
(1608, '4428289715', NULL, '1x2.5ml', 25, NULL, '1.00'),
(1609, '9623957341', NULL, '1x4.5ml', 25, NULL, '1.00'),
(1610, '5592197738', NULL, '1x2.5ml', 25, NULL, '1.00'),
(1611, '8665143478', NULL, '1x4.5ml', 25, NULL, '1.00'),
(1612, '1226933891', NULL, '1 x 5ml', 25, NULL, '1.00'),
(1613, '9577921344', NULL, '3x10ml', 25, NULL, '1.00'),
(1614, '9173749488', NULL, '1 x 10ml', 25, NULL, '1.00'),
(1615, '4142539657', NULL, '4 x 5 ml', 25, NULL, '1.00'),
(1616, '5798357723', NULL, '1 x 5 ml', 25, NULL, '1.00'),
(1617, '9313141336', NULL, '1 x 5 ml', 25, NULL, '1.00'),
(1618, '9917978532', NULL, '1 x 5 ml', 25, NULL, '1.00'),
(1619, '3567576917', NULL, '1 x 5 ml', 25, NULL, '1.00'),
(1620, '3865186472', NULL, '1 x 5 ml', 25, NULL, '1.00'),
(1621, '1186784897', NULL, '1 x 5 ml', 25, NULL, '1.00'),
(1622, '6734967662', NULL, '1 x 5 ml', 25, NULL, '1.00'),
(1623, '5183744911', NULL, '96 Wells/kit', 25, NULL, '1.00'),
(1624, '2119624677', NULL, '96 Wells/kit', 25, NULL, '1.00'),
(1625, '8948414252', NULL, '96 Wells/kit', 25, NULL, '1.00'),
(1626, '9242575137', NULL, '96 Wells/kit', 25, NULL, '1.00'),
(1627, '8779895562', NULL, '96 Wells/kit', 25, NULL, '1.00'),
(1628, '2215956861', NULL, '96 Wells/kit', 25, NULL, '1.00'),
(1629, '8593152652', NULL, '96 Wells/kit', 25, NULL, '1.00'),
(1630, '1892337664', NULL, '96 Wells/kit', 25, NULL, '1.00'),
(1631, '7932117111', NULL, '96 Wells/kit', 25, NULL, '1.00'),
(1632, '1144172969', NULL, '96 Wells/kit', 25, NULL, '1.00'),
(1633, '2962887548', NULL, '96 Wells/kit', 25, NULL, '1.00'),
(1634, '6343267557', NULL, '96 Wells/kit', 25, NULL, '1.00'),
(1635, '4347897512', NULL, '96 Wells/kit', 25, NULL, '1.00'),
(1636, '8143864125', NULL, '1x100T', 25, NULL, '1.00'),
(1637, '5844693731', NULL, '1x100T', 25, NULL, '1.00'),
(1638, '9525126168', NULL, '4x100ml', 26, NULL, '1.00'),
(1639, '4348247759', NULL, '1x100ml', 26, NULL, '1.00'),
(1640, '7298869743', NULL, '2x50ml/1x20ml', 26, NULL, '1.00'),
(1641, '1264486972', NULL, '5x20ml/1x20ml', 26, NULL, '1.00'),
(1642, '3258545635', NULL, '2x50ml/2x50ml/2x100ml', 26, NULL, '1.00'),
(1643, '2714348718', NULL, '1x50ml/1x50ml/1x100ml', 26, NULL, '1.00'),
(1644, '4644154595', NULL, '2x50ml/1x5ml', 26, NULL, '1.00'),
(1645, '9277734445', NULL, '2x50ml', 26, NULL, '1.00'),
(1646, '1413684349', NULL, '1x50ml', 26, NULL, '1.00'),
(1647, '3273898723', NULL, '4x100ml', 26, NULL, '1.00'),
(1648, '5383217834', NULL, '1x100ml', 26, NULL, '1.00'),
(1649, '3584783529', NULL, '5x50ml/1x50ml', 26, NULL, '1.00'),
(1650, '9271873415', NULL, '2x500ml', 26, NULL, '1.00'),
(1651, '6667539651', NULL, '1x500ml', 26, NULL, '1.00'),
(1652, '4476946598', NULL, '2x50ml1x20ml', 26, NULL, '1.00'),
(1653, '7183868353', NULL, '2x50ml/1x20ml', 26, NULL, '1.00'),
(1654, '9541235365', NULL, '2x100ml', 26, NULL, '1.00'),
(1655, '4993216187', NULL, '1x100ml', 26, NULL, '1.00'),
(1656, '3417835385', NULL, '2x50ml', 26, NULL, '1.00'),
(1657, '8631592977', NULL, '1x50ml', 26, NULL, '1.00'),
(1658, '1125632858', NULL, '4x100ml', 26, NULL, '1.00'),
(1659, '8273837439', NULL, '1x100ml', 26, NULL, '1.00'),
(1660, '2337937131', NULL, '1x100ml/1x100ml', 26, NULL, '1.00'),
(1661, '5657889839', NULL, '4x25ml', 26, NULL, '1.00'),
(1662, '4129317591', NULL, '1x25ml', 26, NULL, '1.00'),
(1663, '1761795386', NULL, '4x100ml', 26, NULL, '1.00'),
(1664, '8235237728', NULL, '1x100ml', 26, NULL, '1.00'),
(1665, '8193818341', NULL, '2x20ml/1x20ml', 26, NULL, '1.00'),
(1666, '4176813719', NULL, '5x20ml/1x20ml', 26, NULL, '1.00'),
(1667, '6484116382', NULL, '5x20ml/1x20ml', 26, NULL, '1.00'),
(1668, '1869748356', NULL, '4x50ml/2x20ml', 26, NULL, '1.00'),
(1669, '6967295899', NULL, '2x50ml', 26, NULL, '1.00'),
(1670, '9131985537', NULL, '6x10ml/4x9ml', 26, NULL, '1.00'),
(1671, '6344827597', NULL, '2x50ml', 26, NULL, '1.00'),
(1672, '9777456475', NULL, '2x10ml/1x2ml/1x100ml', 26, NULL, '1.00'),
(1673, '4186944761', NULL, '2x50ml', 26, NULL, '1.00'),
(1674, '6771825426', NULL, '2x50ml', 26, NULL, '1.00'),
(1675, '8597134772', NULL, '1x50ml/1x50ml', 26, NULL, '1.00'),
(1676, '7795518719', NULL, '2x50ml', 26, NULL, '1.00'),
(1677, '4551329481', NULL, '6x10ml/2x10ml', 26, NULL, '1.00'),
(1678, '3319214269', NULL, '6x10ml/1x6ml/2x8ml', 26, NULL, '1.00'),
(1679, '3662146861', NULL, '2x50ml', 26, NULL, '1.00'),
(1680, '3532723533', NULL, '5x25ml/5x5ml', 26, NULL, '1.00'),
(1681, '9533999746', NULL, '7x10ml/2x7ml', 26, NULL, '1.00'),
(1682, '7629727862', NULL, '2x50ml', 26, NULL, '1.00'),
(1683, '9953877613', NULL, '1x20T/Box', 27, NULL, '1.00'),
(1684, '6946671654', NULL, 'TR-200B', 28, NULL, '1.00'),
(1685, '3418361985', NULL, 'YZ-200B', 28, NULL, '1.00'),
(1686, '8316832455', NULL, 'TRF100', 28, NULL, '1.00'),
(1687, '3989637186', NULL, 'BD2', 28, NULL, '1.00'),
(1688, '1183162814', NULL, 'BD4', 28, NULL, '1.00'),
(1689, '3925526482', NULL, 'ALPHA-250BL', 28, NULL, '1.00'),
(1690, '5452881291', NULL, 'ALPHA-250ML', 28, NULL, '1.00'),
(1691, '1261981573', NULL, 'KS12', 28, NULL, '1.00'),
(1692, '3816934786', NULL, 'KS9', 28, NULL, '1.00'),
(1693, '1143377923', NULL, 'KS5', 28, NULL, '1.00'),
(1694, '6565231634', NULL, '3008A', 28, NULL, '1.00'),
(1695, '6443997611', NULL, '3008', 28, NULL, '1.00'),
(1696, '4417731939', NULL, 'Baby', 28, NULL, '1.00'),
(1697, '8471558167', NULL, 'Adult', 28, NULL, '1.00'),
(1698, '3151295589', NULL, '12x15', 28, NULL, '1.00'),
(1699, '4611525699', NULL, '10x12', 28, NULL, '1.00'),
(1700, '5566899532', NULL, '9x9', 28, NULL, '1.00'),
(1701, '2856132812', NULL, '8x22', 28, NULL, '1.00'),
(1702, '5735389578', NULL, 'X-Ray', 28, NULL, '1.00'),
(1703, '4637223249', NULL, 'LRD-750', 28, NULL, '1.00'),
(1704, '5581599345', NULL, '30 Lit', 28, NULL, '1.00'),
(1705, '5821693564', NULL, '30 Lit', 28, NULL, '1.00'),
(1706, '9311884962', NULL, '12C', 28, NULL, '1.00'),
(1707, '1184685756', NULL, '6C', 28, NULL, '1.00'),
(1708, '9531997612', NULL, '3C', 28, NULL, '1.00'),
(1709, '1523292185', NULL, '1x20P', 28, NULL, '1.00'),
(1710, '5284825754', NULL, 'Bio', 28, NULL, '1.00'),
(1711, '4456528868', NULL, 'VINNO X1', 8, NULL, '1.00'),
(1712, '4696732938', NULL, 'VINNO X2', 8, NULL, '1.00'),
(1713, '7389724325', NULL, 'VINNO E10', 8, NULL, '1.00'),
(1714, '4765445279', NULL, 'VINNO E20', 8, NULL, '1.00'),
(1715, '2834359327', NULL, 'VINNO E30', 8, NULL, '1.00'),
(1716, '1929461153', NULL, 'VINNO E35', 8, NULL, '1.00'),
(1717, '3779353959', NULL, 'VINNO G86', 8, NULL, '1.00'),
(1718, '4783754532', NULL, 'VINNO G55', 8, NULL, '1.00'),
(1719, '8696259814', NULL, 'VINNO G50', 8, NULL, '1.00'),
(1720, '3283591785', NULL, 'VINNO M86', 8, NULL, '1.00'),
(1721, '5886672278', NULL, 'VINNO A5', 8, NULL, '1.00'),
(1722, '6566947571', NULL, 'VINNO Q5-2P', 8, NULL, '1.00'),
(1723, '8585589386', NULL, 'VINNO Q5-3C', 8, NULL, '1.00'),
(1724, '8152127891', NULL, 'X2-6C', 8, NULL, '1.00'),
(1725, '2796719876', NULL, 'S1-8C', 8, NULL, '1.00'),
(1726, '9636457652', NULL, 'G2-5C', 8, NULL, '1.00'),
(1727, '6599141487', NULL, 'F2-5C', 8, NULL, '1.00'),
(1728, '1872259259', NULL, 'G3-10PX', 8, NULL, '1.00'),
(1729, '2416581233', NULL, 'S1-6P', 8, NULL, '1.00'),
(1730, '4328726368', NULL, 'G1-4P', 8, NULL, '1.00'),
(1731, '6441139638', NULL, 'X6-16L', 8, NULL, '1.00'),
(1732, '7251277887', NULL, 'F4-12L', 8, NULL, '1.00'),
(1733, '1533299912', NULL, 'X4-12L', 8, NULL, '1.00'),
(1734, '1144478743', NULL, 'F4-9E', 8, NULL, '1.00'),
(1735, '5161789344', NULL, 'D3-6C', 8, NULL, '1.00'),
(1736, '9851694355', NULL, 'X1', 8, NULL, '1.00'),
(1737, '8383922839', NULL, 'X2/E10/E20', 8, NULL, '1.00'),
(1738, '5236425547', NULL, 'E35/E30', 8, NULL, '1.00'),
(1739, '1557674762', NULL, 'X1', 8, NULL, '1.00'),
(1740, '3773341427', NULL, 'E30', 8, NULL, '1.00'),
(1741, '1487613633', NULL, 'E30', 8, NULL, '1.00'),
(1742, '5941771868', NULL, 'GE-75', 9, NULL, '1.00'),
(1743, '9616611459', NULL, 'GE-55', 9, NULL, '1.00'),
(1744, '8717673197', NULL, 'G-55 Power', 9, NULL, '1.00'),
(1745, '9228593948', NULL, 'GE-30', 9, NULL, '1.00'),
(1746, '9726948453', NULL, 'GE-75', 9, NULL, '1.00'),
(1747, '5252267764', NULL, 'GE-75', 9, NULL, '1.00'),
(1748, '7262587346', NULL, 'GE-30/55', 9, NULL, '1.00'),
(1749, '6334627293', NULL, 'GA12A', 9, NULL, '1.00'),
(1750, '6611936926', NULL, 'GE-B5L', 9, NULL, '1.00'),
(1751, '6821332784', NULL, 'GE-W5L', 9, NULL, '1.00'),
(1752, '7513713834', NULL, 'MSA99', 9, NULL, '1.00'),
(1753, '9936751979', NULL, 'GE-600E', 9, NULL, '1.00'),
(1754, '2841894497', NULL, 'GE-600F', 9, NULL, '1.00'),
(1755, '6587113441', NULL, 'GE-600K', 9, NULL, '1.00'),
(1756, '7929183322', NULL, 'GE-600H', 9, NULL, '1.00'),
(1757, '8198661854', NULL, 'BM50', 9, NULL, '1.00'),
(1758, '4213262152', NULL, 'BM80', 9, NULL, '1.00'),
(1759, '1821869114', NULL, 'BM100', 9, NULL, '1.00'),
(1760, '4743336271', NULL, 'C12', 9, NULL, '1.00'),
(1761, '8897513969', NULL, 'YE660E', 9, NULL, '1.00'),
(1762, '1881921933', NULL, 'Yuwell Mercury ', 9, NULL, '1.00'),
(1763, '6893756244', NULL, 'VD', 9, NULL, '1.00'),
(1764, '3886734397', NULL, 'DWS', 9, NULL, '1.00'),
(1765, '7642528445', NULL, 'MD-DOME-A2', 9, NULL, '1.00'),
(1766, '5112799153', NULL, 'MD-LED-A2', 9, NULL, '1.00'),
(1767, '2836827672', NULL, 'ZEUS-400P', 9, NULL, '1.00'),
(1768, '4543929987', NULL, 'Star-x1', 9, NULL, '1.00'),
(1769, '7232251388', NULL, 'UA-5', 9, NULL, '1.00'),
(1770, '3928612488', NULL, 'Combo12', 9, NULL, '1.00'),
(1771, '6661977372', NULL, 'Combo14', 9, NULL, '1.00'),
(1772, '9761671751', NULL, 'F10', 9, NULL, '1.00'),
(1773, '3358587124', NULL, 'RM-06', 9, NULL, '1.00'),
(1774, '9238513172', NULL, '2?-20?', 9, NULL, '1.00'),
(1775, '1798412687', NULL, '5?-50?', 9, NULL, '1.00'),
(1776, '2535396335', NULL, '10?-100?', 9, NULL, '1.00'),
(1777, '5557184192', NULL, '100?-1000?', 9, NULL, '1.00'),
(1778, '1439398115', NULL, 'GEW-1100', 9, NULL, '1.00'),
(1779, '7586576347', NULL, 'GEW-1100P', 9, NULL, '1.00'),
(1780, '1998485279', NULL, 'Holter', 9, NULL, '1.00'),
(1781, '5662176248', NULL, 'EEG32', 9, NULL, '1.00'),
(1782, '6436468587', NULL, 'RAU-760', 9, NULL, '1.00'),
(1783, '6274319558', NULL, '3*6*12', 9, NULL, '1.00'),
(1784, '4199535253', NULL, '3*6*12', 9, NULL, '1.00'),
(1785, '4374214124', NULL, '3*6*12', 9, NULL, '1.00'),
(1786, '3247591212', NULL, 'ZNC 961A', 9, NULL, '1.00'),
(1787, '4775698881', NULL, 'ES-20', 9, NULL, '1.00'),
(1788, '5315359158', NULL, 'DC-80', 10, NULL, '1.00'),
(1789, '7778652939', NULL, 'DC-40', 10, NULL, '1.00'),
(1790, '9931274952', NULL, 'DC-30', 10, NULL, '1.00'),
(1791, '1446379269', NULL, 'DP-5', 10, NULL, '1.00'),
(1792, '6392551586', NULL, 'DP-30', 10, NULL, '1.00'),
(1793, '7184728861', NULL, 'DP-30 Power', 10, NULL, '1.00'),
(1794, '4213151234', NULL, 'DP-20', 10, NULL, '1.00'),
(1795, '2623194597', NULL, 'DP-2200Plus', 10, NULL, '1.00'),
(1796, '3194694582', NULL, 'P4-2', 10, NULL, '1.00'),
(1797, '4341921546', NULL, '2P2P', 10, NULL, '1.00'),
(1798, '2128947796', NULL, '7L4A', 10, NULL, '1.00'),
(1799, '2887397411', NULL, '75L38P', 10, NULL, '1.00'),
(1800, '5526138756', NULL, '65C15EA', 10, NULL, '1.00'),
(1801, '8514821994', NULL, '75L38EA', 10, NULL, '1.00'),
(1802, '5834525246', NULL, '65EC10EA', 10, NULL, '1.00'),
(1803, '6192115648', NULL, 'DC-40', 10, NULL, '1.00'),
(1804, '1849735638', NULL, 'HD3', 10, NULL, '1.00'),
(1805, '5796878152', NULL, 'TH-5000', 11, NULL, '1.00'),
(1806, '8751536782', NULL, 'TH-5500', 11, NULL, '1.00'),
(1807, '8349492925', NULL, 'TH-280Pro', 11, NULL, '1.00'),
(1808, '3586512567', NULL, 'TH-280', 11, NULL, '1.00'),
(1809, '9868369719', NULL, 'TH-100', 11, NULL, '1.00'),
(1810, '2389131292', NULL, 'TH-80', 11, NULL, '1.00'),
(1811, '9965231272', NULL, 'TH-5500/TH-5000', 11, NULL, '1.00'),
(1812, '7729984788', NULL, 'TH-5500/TH-5000', 11, NULL, '1.00'),
(1813, '5236725826', NULL, 'TH-5500/TH-5000', 11, NULL, '1.00'),
(1814, '4278848519', NULL, 'TH-280/TH-280Pro', 11, NULL, '1.00'),
(1815, '1172619675', NULL, 'TH-280/TH-280Pro', 11, NULL, '1.00'),
(1816, '9672718652', NULL, 'TH-280/TH-280Pro', 11, NULL, '1.00'),
(1817, '9587437833', NULL, 'TH-280/TH-280Pro', 11, NULL, '1.00'),
(1818, '9358882651', NULL, 'TH-280/TH-280Pro', 11, NULL, '1.00'),
(1819, '1242599921', NULL, 'CM-300', 12, NULL, '1.00'),
(1820, '1192819584', NULL, 'H3', 12, NULL, '1.00'),
(1821, '1855339733', NULL, 'CM-600', 12, NULL, '1.00'),
(1822, '1887527919', NULL, 'CM-1200', 12, NULL, '1.00'),
(1823, '9666415975', NULL, 'CM-1200A', 12, NULL, '1.00'),
(1824, '7563789947', NULL, 'CM-1200B', 12, NULL, '1.00'),
(1825, '1279611574', NULL, 'NC3', 12, NULL, '1.00'),
(1826, '3418372517', NULL, 'STAR-80', 12, NULL, '1.00'),
(1827, '9726285294', NULL, 'STAR-800', 12, NULL, '1.00'),
(1828, '4811589239', NULL, 'STAR-8000', 12, NULL, '1.00'),
(1829, '8371334143', NULL, 'C80', 12, NULL, '1.00'),
(1830, '6253958672', NULL, 'M200A', 12, NULL, '1.00'),
(1831, '4954162128', NULL, 'ME600', 12, NULL, '1.00'),
(1832, '1632746253', NULL, 'C60', 12, NULL, '1.00'),
(1833, '4246589622', NULL, 'NV6', 12, NULL, '1.00'),
(1834, '2231324238', NULL, 'NV8', 12, NULL, '1.00'),
(1835, '9666114841', NULL, 'C-21', 12, NULL, '1.00'),
(1836, '6568126326', NULL, 'C-22', 12, NULL, '1.00'),
(1837, '9135253755', NULL, 'STAR-5000F', 12, NULL, '1.00'),
(1838, '9518239599', NULL, 'AX-700', 12, NULL, '1.00'),
(1839, '6727514564', NULL, 'AX-400', 12, NULL, '1.00'),
(1840, '7894432256', NULL, 'S8', 12, NULL, '1.00'),
(1841, '5459397349', NULL, 'B3', 12, NULL, '1.00'),
(1842, '9645717684', NULL, NULL, 12, NULL, '1.00'),
(1843, '2679567975', NULL, 'I-CHROMA 3', 13, NULL, '1.00'),
(1844, '4214479668', NULL, 'I-CHROMA II ', 13, NULL, '1.00'),
(1845, '5614323342', NULL, 'I-CHROMA I', 13, NULL, '1.00'),
(1846, '7934346238', NULL, 'I-CHROMA D', 13, NULL, '1.00'),
(1847, '9496376696', NULL, 'I-CHAMBER', 13, NULL, '1.00'),
(1848, '1915253656', NULL, 'Hemochroma Plus', 13, NULL, '1.00'),
(1849, '7659468621', NULL, 'Microcuvettes (4x50Test)', 13, NULL, '1.00'),
(1850, '6664747866', NULL, '25T/Box', 13, NULL, '1.00'),
(1851, '3934349581', NULL, '25T/Box', 13, NULL, '1.00'),
(1852, '5454257198', NULL, '25T/Box', 13, NULL, '1.00'),
(1853, '6443539437', NULL, '25T/Box', 13, NULL, '1.00'),
(1854, '5397458958', NULL, '25T/Box', 13, NULL, '1.00'),
(1855, '7445423447', NULL, '25T/Box', 13, NULL, '1.00'),
(1856, '1689237236', NULL, '25T/Box', 13, NULL, '1.00'),
(1857, '2912845237', NULL, '25T/Box', 13, NULL, '1.00'),
(1858, '8187958386', NULL, '25T/Box', 13, NULL, '1.00'),
(1859, '4326619931', NULL, '25T/Box', 13, NULL, '1.00'),
(1860, '1918245589', NULL, '25T/Box', 13, NULL, '1.00'),
(1861, '6914147955', NULL, '25T/Box', 13, NULL, '1.00'),
(1862, '1149599467', NULL, '25T/Box', 13, NULL, '1.00'),
(1863, '5554997554', NULL, '25T/Box', 13, NULL, '1.00'),
(1864, '1451127364', NULL, '25T/Box', 13, NULL, '1.00'),
(1865, '7897347685', NULL, '25T/Box', 13, NULL, '1.00'),
(1866, '7385245673', NULL, '25T/Box', 13, NULL, '1.00'),
(1867, '1562715579', NULL, '25T/Box', 13, NULL, '1.00'),
(1868, '6788886465', NULL, '25T/Box', 13, NULL, '1.00'),
(1869, '9498432752', NULL, '25T/Box', 13, NULL, '1.00'),
(1870, '8981847349', NULL, '25T/Box', 13, NULL, '1.00'),
(1871, '6455475511', NULL, '25T/Box', 13, NULL, '1.00'),
(1872, '6544421341', NULL, '25T/Box', 13, NULL, '1.00'),
(1873, '9336217935', NULL, '25T/Box', 13, NULL, '1.00'),
(1874, '1467687252', NULL, '25T/Box', 13, NULL, '1.00'),
(1875, '9752447858', NULL, '25T/Box', 13, NULL, '1.00'),
(1876, '7455173111', NULL, '25T/Box', 13, NULL, '1.00'),
(1877, '8799527175', NULL, '25T/Box', 13, NULL, '1.00'),
(1878, '5434626969', NULL, '25T/Box', 13, NULL, '1.00'),
(1879, '5699284555', NULL, '25T/Box', 13, NULL, '1.00'),
(1880, '4145356416', NULL, '25T/Box', 13, NULL, '1.00'),
(1881, '8192149516', NULL, '25T/Box', 13, NULL, '1.00'),
(1882, '1242548991', NULL, '25T/Box', 13, NULL, '1.00'),
(1883, '4326953842', NULL, '25T/Box', 13, NULL, '1.00'),
(1884, '1136615636', NULL, '25T/Box', 13, NULL, '1.00'),
(1885, '4957871368', NULL, '25T/Box', 13, NULL, '1.00'),
(1886, '8584587336', NULL, '25T/Box', 13, NULL, '1.00'),
(1887, '6479471679', NULL, '25T/Box', 13, NULL, '1.00'),
(1888, '2226514633', NULL, '25T/Box', 13, NULL, '1.00'),
(1889, '4681218648', NULL, '25T/Box', 13, NULL, '1.00'),
(1890, '9499789534', NULL, '25T/Box', 13, NULL, '1.00'),
(1891, '3293261741', NULL, '10T/Box', 13, NULL, '1.00'),
(1892, '2249549912', NULL, '10T/Box', 13, NULL, '1.00'),
(1893, '5293234895', NULL, '25T/Box', 13, NULL, '1.00'),
(1894, '4739849259', NULL, '25T/Box', 13, NULL, '1.00'),
(1895, '8875348399', NULL, '25T/Box', 13, NULL, '1.00'),
(1896, '5534117998', NULL, '25T/Box', 13, NULL, '1.00'),
(1897, '7193966912', NULL, '25T/Box', 13, NULL, '1.00'),
(1898, '8983982792', NULL, '25T/Box', 13, NULL, '1.00'),
(1899, '6633932469', NULL, '25T/Box', 13, NULL, '1.00'),
(1900, '3811115855', NULL, '25T/Box', 13, NULL, '1.00'),
(1901, '1299747425', NULL, '25T/Box', 13, NULL, '1.00'),
(1902, '1833823775', NULL, '25T/Box', 13, NULL, '1.00'),
(1903, '6715134151', NULL, '25T/Box', 13, NULL, '1.00'),
(1904, '1845844432', NULL, '25T/Box', 13, NULL, '1.00'),
(1905, '4148284893', NULL, '25T/Box', 13, NULL, '1.00'),
(1906, '4558294165', NULL, '25T/Box', 13, NULL, '1.00'),
(1907, '7467298876', NULL, '25T/Box', 13, NULL, '1.00'),
(1908, '8368955149', NULL, '25T/Box', 13, NULL, '1.00'),
(1909, '2364757486', NULL, '25T/Box', 13, NULL, '1.00'),
(1910, '5614729443', NULL, '25T/Box', 13, NULL, '1.00'),
(1911, '9582729367', NULL, '25T/Box', 13, NULL, '1.00'),
(1912, '2263666538', NULL, '25T/Box', 13, NULL, '1.00'),
(1913, '8848184975', NULL, '25T/Box', 13, NULL, '1.00'),
(1914, '5337445831', NULL, '25T/Box', 13, NULL, '1.00'),
(1915, '1936817729', NULL, '25T/Box', 13, NULL, '1.00'),
(1916, '6444637394', NULL, '25T/Box', 13, NULL, '1.00'),
(1917, '8537638351', NULL, '25T/Box', 13, NULL, '1.00'),
(1918, '6795489535', NULL, '1V/Box', 13, NULL, '1.00'),
(1919, '4517682357', NULL, '1V/Box', 13, NULL, '1.00'),
(1920, '8435324392', NULL, '1V/Box', 13, NULL, '1.00'),
(1921, '8455747736', NULL, '1V/Box', 13, NULL, '1.00'),
(1922, '4388491582', NULL, '1V/Box', 13, NULL, '1.00'),
(1923, '5781737777', NULL, '1V/Box', 13, NULL, '1.00'),
(1924, '8145643587', NULL, '1V/Box', 13, NULL, '1.00'),
(1925, '3259143895', NULL, '1V/Box', 13, NULL, '1.00'),
(1926, '4841372988', NULL, '1V/Box', 13, NULL, '1.00'),
(1927, '9552296996', NULL, '1V/Box', 13, NULL, '1.00'),
(1928, '2969174943', NULL, '1V/Box', 13, NULL, '1.00'),
(1929, '3614228788', NULL, '1V/Box', 13, NULL, '1.00'),
(1930, '9272976929', NULL, '1V/Box', 13, NULL, '1.00'),
(1931, '1579985881', NULL, '1V/Box', 13, NULL, '1.00'),
(1932, '6915421684', NULL, '1V/Box', 13, NULL, '1.00'),
(1933, '4945328265', NULL, '1V/Box', 13, NULL, '1.00'),
(1934, '7366369941', NULL, '1V/Box', 13, NULL, '1.00'),
(1935, '1454461366', NULL, '1V/Box', 13, NULL, '1.00'),
(1936, '2868835341', NULL, '1V/Box', 13, NULL, '1.00'),
(1937, '8338318971', NULL, '1V/Box', 13, NULL, '1.00'),
(1938, '4928482455', NULL, '1V/Box', 13, NULL, '1.00'),
(1939, '1545655198', NULL, '1V/Box', 13, NULL, '1.00'),
(1940, '5583586216', NULL, '1V/Box', 13, NULL, '1.00'),
(1941, '8132698363', NULL, '1V/Box', 13, NULL, '1.00'),
(1942, '1169375364', NULL, '1V/Box', 13, NULL, '1.00'),
(1943, '4312239259', NULL, '1V/Box', 13, NULL, '1.00'),
(1944, '2583314438', NULL, '1V/Box', 13, NULL, '1.00'),
(1945, '8515935512', NULL, '1V/Box', 13, NULL, '1.00'),
(1946, '4842161265', NULL, '1V/Box', 13, NULL, '1.00'),
(1947, '1515999221', NULL, '1V/Box', 13, NULL, '1.00'),
(1948, '7222666157', NULL, '1V/Box', 13, NULL, '1.00'),
(1949, '9378719235', NULL, '1V/Box', 13, NULL, '1.00'),
(1950, '6583139562', NULL, 'E-20A-H-0', 14, NULL, '1.00'),
(1951, '3132635576', NULL, 'T-20T', 14, NULL, '1.00'),
(1952, '5197249763', NULL, 'T-20A', 14, NULL, '1.00'),
(1953, '9423856788', NULL, 'T-25T', 14, NULL, '1.00'),
(1954, '2857182255', NULL, 'T-25A', 14, NULL, '1.00'),
(1955, '5971886579', NULL, 'DS6', 15, NULL, '1.00'),
(1956, '4249331745', NULL, 'DS7', 15, NULL, '1.00'),
(1957, '2363197228', NULL, 'DS8', 15, NULL, '1.00'),
(1958, '1484681886', NULL, 'C08', 16, NULL, '1.00'),
(1959, '1744459356', NULL, 'B18', 16, NULL, '1.00'),
(1960, '5523415166', NULL, 'BMC', 16, NULL, '1.00'),
(1961, '7416557377', NULL, 'BMC', 16, NULL, '1.00'),
(1962, '5667667455', NULL, 'EM600', 16, NULL, '1.00'),
(1963, '1648325386', NULL, 'EM20', 16, NULL, '1.00'),
(1964, '1276551862', NULL, 'EM30', 16, NULL, '1.00'),
(1965, '6248341192', NULL, 'EMC-6W', 16, NULL, '1.00'),
(1966, '3331536617', NULL, 'EMC-6W Plus', 16, NULL, '1.00'),
(1967, '3919928954', NULL, 'EMC-12W', 16, NULL, '1.00'),
(1968, '9331617421', NULL, 'MBM', 16, NULL, '1.00'),
(1969, '2619891995', NULL, 'SS10', 16, NULL, '1.00'),
(1970, '6564136739', NULL, 'WS-D ', 16, NULL, '1.00'),
(1971, '8616611153', NULL, 'WS-M ', 16, NULL, '1.00'),
(1972, '8524946523', NULL, 'TTI-20 ', 16, NULL, '1.00'),
(1973, '2793228282', NULL, NULL, 16, NULL, '1.00'),
(1974, '5728358582', NULL, NULL, 16, NULL, '1.00'),
(1975, '6313944592', NULL, 'EM-90', 16, NULL, '1.00'),
(1976, '5231274259', NULL, 'EM-88B', 16, NULL, '1.00'),
(1977, '7158919383', NULL, '1.6', 16, NULL, '1.00'),
(1978, '1173844433', NULL, '1.2', 16, NULL, '1.00'),
(1979, '8953255711', NULL, 'K2 - 2ml', 16, NULL, '1.00'),
(1980, '1791149275', NULL, 'K2 - 1ml', 16, NULL, '1.00'),
(1981, '1244392495', NULL, 'Glucose Tube', 16, NULL, '1.00'),
(1982, '3922521449', NULL, 'PT Tube', 16, NULL, '1.00'),
(1983, '6927369915', NULL, '4ml', 16, NULL, '1.00'),
(1984, '7156163851', NULL, '4ml', 16, NULL, '1.00'),
(1985, '9892511224', NULL, '23G', 16, NULL, '1.00'),
(1986, '5634799729', NULL, '22G', 16, NULL, '1.00'),
(1987, '7329387965', NULL, 'EMP-168', 17, NULL, '1.00'),
(1988, '1885677457', NULL, 'EMP-168 Plus', 17, NULL, '1.00'),
(1989, '7397674837', NULL, 'M201', 17, NULL, '1.00'),
(1990, '1837566265', NULL, 'ZQ-1206', 18, NULL, '1.00'),
(1991, '6116471734', NULL, 'HYHJ-KC', 19, NULL, '1.00'),
(1992, '3275431893', NULL, 'HYHJ-KC', 19, NULL, '1.00'),
(1993, '2353923493', NULL, 'HYHJ-KC', 19, NULL, '1.00'),
(1994, '4656599649', NULL, 'GA-400', 20, NULL, '1.00'),
(1995, '3232143985', NULL, 'G-3000', 20, NULL, '1.00'),
(1996, '4981914364', NULL, 'XC-A30', 21, NULL, '1.00'),
(1997, '1256596414', NULL, 'XC-A10', 21, NULL, '1.00'),
(1998, '1345295453', NULL, 'XI-921F', 21, NULL, '1.00'),
(1999, '3963763657', NULL, 'XI-921B', 21, NULL, '1.00'),
(2000, '7954893239', NULL, 'XI-921C', 21, NULL, '1.00'),
(2001, '9523531759', NULL, 'ABR', 21, NULL, '1.00'),
(2002, '6253887984', NULL, 'ABW', 21, NULL, '1.00'),
(2003, '4426732318', NULL, '1x100ml', 21, NULL, '1.00'),
(2004, '6289215998', NULL, '1x100ml', 21, NULL, '1.00'),
(2005, '7346918772', NULL, '1x100ml', 21, NULL, '1.00'),
(2006, '3581276136', NULL, '1x100ml', 21, NULL, '1.00'),
(2007, '2153515247', NULL, 'AB', 21, NULL, '1.00'),
(2008, '1281429817', NULL, 'K', 21, NULL, '1.00'),
(2009, '8571356513', NULL, 'Na', 21, NULL, '1.00'),
(2010, '6549633275', NULL, 'Cl', 21, NULL, '1.00'),
(2011, '5579917955', NULL, 'Ca', 21, NULL, '1.00'),
(2012, '9997785478', NULL, 'PH', 21, NULL, '1.00'),
(2013, '9268515343', NULL, 'Ref', 21, NULL, '1.00'),
(2014, '9641375199', NULL, 'KU-11B', 21, NULL, '1.00'),
(2015, '6647698981', NULL, 'Combo11', 21, NULL, '1.00'),
(2016, '3399629528', NULL, 'PE-6800 ', 22, NULL, '1.00'),
(2017, '1277782583', NULL, 'PE-6800 Plus', 22, NULL, '1.00'),
(2018, '6743967222', NULL, 'PE-6100', 22, NULL, '1.00'),
(2019, '1619993515', NULL, 'PE-6000', 22, NULL, '1.00'),
(2020, '7931261892', NULL, 'PE-D01', 22, NULL, '1.00'),
(2021, '7113563411', NULL, 'PE-C01', 22, NULL, '1.00'),
(2022, '9755581379', NULL, 'PE-L01', 22, NULL, '1.00'),
(2023, '9871852837', NULL, 'PE-C03', 22, NULL, '1.00'),
(2024, '9216415178', NULL, 'PE-C02', 22, NULL, '1.00'),
(2025, '5689363999', NULL, 'PE-7100', 22, NULL, '1.00'),
(2026, '7931261892', NULL, 'PE-D01', 22, NULL, '1.00'),
(2027, '5825611453', NULL, 'PE-L05 DIFF', 22, NULL, '1.00'),
(2028, '3821899247', NULL, 'PE-L05 LH', 22, NULL, '1.00'),
(2029, '7793692534', NULL, 'ZEN-7000', 23, NULL, '1.00'),
(2030, '9314353487', NULL, 'OSCAR Classic', 23, NULL, '1.00'),
(2031, '1774255455', NULL, 'PORT-X IV', 23, NULL, '1.00'),
(2032, '6612651358', NULL, 'GXI-1 (Size1)', 23, NULL, '1.00'),
(2033, '2429235752', NULL, 'GXI-1 (Size2)', 23, NULL, '1.00'),
(2034, '4157134796', NULL, 'PAPAYA', 23, NULL, '1.00'),
(2035, '3464428342', NULL, 'Gmate Voice', 24, NULL, '1.00'),
(2036, '7867294951', NULL, 'Gmate Smart', 24, NULL, '1.00'),
(2037, '7173789696', NULL, 'Gmate Origin', 24, NULL, '1.00'),
(2038, '3639453956', NULL, '1x25T', 24, NULL, '1.00'),
(2039, '2637999115', NULL, '2x50ml', 25, NULL, '1.00'),
(2040, '4139866291', NULL, '5x18ml', 25, NULL, '1.00'),
(2041, '1822923573', NULL, '5x5ml', 25, NULL, '1.00'),
(2042, '4692729294', NULL, '320ml', 25, NULL, '1.00'),
(2043, '9372649962', NULL, '2x50ml', 25, NULL, '1.00'),
(2044, '7195421819', NULL, '2x50ml', 25, NULL, '1.00'),
(2045, '1991761544', NULL, '2x50ml', 25, NULL, '1.00'),
(2046, '9783299447', NULL, '2x500ml', 25, NULL, '1.00'),
(2047, '2878227578', NULL, '1x500ml', 25, NULL, '1.00'),
(2048, '7961767331', NULL, '2x60ml', 25, NULL, '1.00'),
(2049, '8918383781', NULL, '2x60ml', 25, NULL, '1.00'),
(2050, '9476418391', NULL, '1x50ml', 25, NULL, '1.00'),
(2051, '1776556876', NULL, 'R1:30ml+R2:10ml', 25, NULL, '1.00'),
(2052, '3388128524', NULL, '2x50ml', 25, NULL, '1.00'),
(2053, '5363594547', NULL, '2x50ml', 25, NULL, '1.00'),
(2054, '1636852454', NULL, '3x50ml', 25, NULL, '1.00'),
(2055, '5554969321', NULL, '2x50ml', 25, NULL, '1.00'),
(2056, '8366371148', NULL, '2x20ml', 25, NULL, '1.00'),
(2057, '8118762997', NULL, 'R1:40ml+R2:10ml', 25, NULL, '1.00'),
(2058, '1653279166', NULL, '1x2.5ml', 25, NULL, '1.00'),
(2059, '2488684363', NULL, '1x4.5ml', 25, NULL, '1.00'),
(2060, '3196269665', NULL, '1x2.5ml', 25, NULL, '1.00'),
(2061, '2268497759', NULL, '1x4.5ml', 25, NULL, '1.00'),
(2062, '7184574954', NULL, '1x2.5ml', 25, NULL, '1.00'),
(2063, '5768845667', NULL, '1x4.5ml', 25, NULL, '1.00'),
(2064, '4859956884', NULL, '1 x 5ml', 25, NULL, '1.00'),
(2065, '2338671556', NULL, '3x10ml', 25, NULL, '1.00'),
(2066, '7521432296', NULL, '1 x 10ml', 25, NULL, '1.00'),
(2067, '2599272916', NULL, '4 x 5 ml', 25, NULL, '1.00'),
(2068, '1418718231', NULL, '1 x 5 ml', 25, NULL, '1.00'),
(2069, '3356513148', NULL, '1 x 5 ml', 25, NULL, '1.00'),
(2070, '1734256644', NULL, '1 x 5 ml', 25, NULL, '1.00'),
(2071, '6163412469', NULL, '1 x 5 ml', 25, NULL, '1.00'),
(2072, '4279465742', NULL, '1 x 5 ml', 25, NULL, '1.00'),
(2073, '9441683765', NULL, '1 x 5 ml', 25, NULL, '1.00'),
(2074, '1987936938', NULL, '1 x 5 ml', 25, NULL, '1.00'),
(2075, '3839921722', NULL, '96 Wells/kit', 25, NULL, '1.00'),
(2076, '5986222194', NULL, '96 Wells/kit', 25, NULL, '1.00'),
(2077, '4646764747', NULL, '96 Wells/kit', 25, NULL, '1.00'),
(2078, '6622384791', NULL, '96 Wells/kit', 25, NULL, '1.00'),
(2079, '4787982115', NULL, '96 Wells/kit', 25, NULL, '1.00'),
(2080, '6992253282', NULL, '96 Wells/kit', 25, NULL, '1.00'),
(2081, '5235839413', NULL, '96 Wells/kit', 25, NULL, '1.00'),
(2082, '1451334141', NULL, '96 Wells/kit', 25, NULL, '1.00'),
(2083, '6971331912', NULL, '96 Wells/kit', 25, NULL, '1.00'),
(2084, '4727163157', NULL, '96 Wells/kit', 25, NULL, '1.00'),
(2085, '9299636177', NULL, '96 Wells/kit', 25, NULL, '1.00'),
(2086, '9492576413', NULL, '96 Wells/kit', 25, NULL, '1.00'),
(2087, '5836485845', NULL, '96 Wells/kit', 25, NULL, '1.00'),
(2088, '2684461981', NULL, '1x100T', 25, NULL, '1.00'),
(2089, '2519239947', NULL, '1x100T', 25, NULL, '1.00'),
(2090, '5522867467', NULL, '4x100ml', 26, NULL, '1.00'),
(2091, '1352918566', NULL, '1x100ml', 26, NULL, '1.00'),
(2092, '5581525118', NULL, '2x50ml/1x20ml', 26, NULL, '1.00'),
(2093, '7156195114', NULL, '5x20ml/1x20ml', 26, NULL, '1.00'),
(2094, '2197958815', NULL, '2x50ml/2x50ml/2x100ml', 26, NULL, '1.00'),
(2095, '6265825467', NULL, '1x50ml/1x50ml/1x100ml', 26, NULL, '1.00'),
(2096, '3219137432', NULL, '2x50ml/1x5ml', 26, NULL, '1.00'),
(2097, '9372649962', NULL, '2x50ml', 26, NULL, '1.00'),
(2098, '5231172889', NULL, '1x50ml', 26, NULL, '1.00'),
(2099, '2722912237', NULL, '4x100ml', 26, NULL, '1.00'),
(2100, '4526697712', NULL, '1x100ml', 26, NULL, '1.00'),
(2101, '9131533994', NULL, '5x50ml/1x50ml', 26, NULL, '1.00'),
(2102, '9783299447', NULL, '2x500ml', 26, NULL, '1.00'),
(2103, '2878227578', NULL, '1x500ml', 26, NULL, '1.00'),
(2104, '6141843663', NULL, '2x50ml1x20ml', 26, NULL, '1.00'),
(2105, '1717769589', NULL, '2x50ml/1x20ml', 26, NULL, '1.00'),
(2106, '8519919343', NULL, '2x100ml', 26, NULL, '1.00'),
(2107, '1973267621', NULL, '1x100ml', 26, NULL, '1.00'),
(2108, '6265324586', NULL, '2x50ml', 26, NULL, '1.00'),
(2109, '6984677972', NULL, '1x50ml', 26, NULL, '1.00'),
(2110, '7195569324', NULL, '4x100ml', 26, NULL, '1.00'),
(2111, '7284727779', NULL, '1x100ml', 26, NULL, '1.00'),
(2112, '4379912126', NULL, '1x100ml/1x100ml', 26, NULL, '1.00'),
(2113, '4628839177', NULL, '4x25ml', 26, NULL, '1.00'),
(2114, '8535529725', NULL, '1x25ml', 26, NULL, '1.00'),
(2115, '4122611361', NULL, '4x100ml', 26, NULL, '1.00'),
(2116, '3834343947', NULL, '1x100ml', 26, NULL, '1.00'),
(2117, '7361811566', NULL, '2x20ml/1x20ml', 26, NULL, '1.00'),
(2118, '9623295577', NULL, '5x20ml/1x20ml', 26, NULL, '1.00'),
(2119, '7948337159', NULL, '5x20ml/1x20ml', 26, NULL, '1.00'),
(2120, '2558639315', NULL, '4x50ml/2x20ml', 26, NULL, '1.00'),
(2121, '2862357398', NULL, '2x50ml', 26, NULL, '1.00'),
(2122, '9817133394', NULL, '6x10ml/4x9ml', 26, NULL, '1.00'),
(2123, '7395666256', NULL, '2x50ml', 26, NULL, '1.00'),
(2124, '1222771993', NULL, '2x10ml/1x2ml/1x100ml', 26, NULL, '1.00'),
(2125, '2596988168', NULL, '2x50ml', 26, NULL, '1.00'),
(2126, '9855519144', NULL, '2x50ml', 26, NULL, '1.00'),
(2127, '6229676775', NULL, '1x50ml/1x50ml', 26, NULL, '1.00'),
(2128, '3895653534', NULL, '2x50ml', 26, NULL, '1.00'),
(2129, '4178176636', NULL, '6x10ml/2x10ml', 26, NULL, '1.00'),
(2130, '6631552547', NULL, '6x10ml/1x6ml/2x8ml', 26, NULL, '1.00'),
(2131, '7849343635', NULL, '2x50ml', 26, NULL, '1.00'),
(2132, '6519946419', NULL, '5x25ml/5x5ml', 26, NULL, '1.00'),
(2133, '9525713816', NULL, '7x10ml/2x7ml', 26, NULL, '1.00'),
(2134, '6827538136', NULL, '2x50ml', 26, NULL, '1.00'),
(2135, '1242924829', NULL, '1x20T/Box', 27, NULL, '1.00'),
(2136, '2914458656', NULL, 'TR-200B', 28, NULL, '1.00'),
(2137, '9354862679', NULL, 'YZ-200B', 28, NULL, '1.00'),
(2138, '3975624485', NULL, 'TRF100', 28, NULL, '1.00'),
(2139, '5728214469', NULL, 'BD2', 28, NULL, '1.00'),
(2140, '6387675471', NULL, 'BD4', 28, NULL, '1.00'),
(2141, '3577549665', NULL, 'ALPHA-250BL', 28, NULL, '1.00'),
(2142, '5464237861', NULL, 'ALPHA-250ML', 28, NULL, '1.00'),
(2143, '4345318812', NULL, 'KS12', 28, NULL, '1.00'),
(2144, '6153681742', NULL, 'KS9', 28, NULL, '1.00'),
(2145, '8578154552', NULL, 'KS5', 28, NULL, '1.00'),
(2146, '1918128319', NULL, '3008A', 28, NULL, '1.00'),
(2147, '5624257672', NULL, '3008', 28, NULL, '1.00'),
(2148, '6868241943', NULL, 'Baby', 28, NULL, '1.00'),
(2149, '8866474555', NULL, 'Adult', 28, NULL, '1.00'),
(2150, '2992172168', NULL, '12x15', 28, NULL, '1.00'),
(2151, '3912387213', NULL, '10x12', 28, NULL, '1.00'),
(2152, '9429446382', NULL, '9x9', 28, NULL, '1.00'),
(2153, '7736255228', NULL, '8x22', 28, NULL, '1.00'),
(2154, '4943379145', NULL, 'X-Ray', 28, NULL, '1.00'),
(2155, '9537915311', NULL, 'LRD-750', 28, NULL, '1.00'),
(2156, '9147297194', NULL, '30 Lit', 28, NULL, '1.00'),
(2157, '1985532774', NULL, '30 Lit', 28, NULL, '1.00'),
(2158, '5746451529', NULL, '12C', 28, NULL, '1.00'),
(2159, '1681157715', NULL, '6C', 28, NULL, '1.00'),
(2160, '8292697989', NULL, '3C', 28, NULL, '1.00'),
(2161, '1914924872', NULL, '1x20P', 28, NULL, '1.00'),
(2162, '6533569276', NULL, 'Bio', 28, NULL, '1.00'),
(2164, '36115132', '', NULL, 28, NULL, '500.00'),
(2165, '73816743', NULL, 'a', 26, NULL, '1.00'),
(2166, '74449829', NULL, 'a', 27, NULL, '2.00');
INSERT INTO `supplier_product` (`supplier_pr_id`, `product_id`, `product_id_two`, `products_model`, `supplier_id`, `currency`, `supplier_price`) VALUES
(2167, '3842544848', '225754', 'AT223', 29, NULL, '5000.00'),
(2168, 'AB12', NULL, 'Apple', 29, NULL, '12000.00'),
(2170, '6767876', NULL, 'Apple', 2, NULL, '600.00'),
(2200, '74325422', '', NULL, 2, '', '500.00'),
(2201, '81244656', '', NULL, 5, 'Dollar', '999.00'),
(2202, '68354349', '', NULL, 1, 'Dollar', '20.00');

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
(14, '2', '6767876', '600.00', '2021-08-15', '09:27:40am', 1),
(15, '2', '74325422', '200.00', '2021-08-14', '09:30:53am', 1),
(16, '1', '68354349', '20.00', '2021-08-14', '04:39:15pm', 1),
(17, '5', '81244656', '999.00', '2021-08-14', '06:16:12pm', 1),
(18, '6', '84562845', '5', '2021-08-15', '12:33:10pm', 1),
(19, '2', '74325422', '200.00', '2021-08-16', '01:22:10pm', 1),
(20, '5', '13557324', '8.00', '2021-08-17', '02:26:09pm', 1),
(21, '5', '13557324', '8.00', '2021-08-17', '03:51:20pm', 1),
(22, '6', '13557324', '7.00', '2021-08-17', '03:51:20pm', 1),
(23, '1', '68354349', '20.00', '2021-08-17', '05:07:34pm', 1),
(24, '2', '74325422', '200.00', '2021-08-17', '05:08:01pm', 1),
(25, '5', '81244656', '999.00', '2021-08-17', '05:08:25pm', 1),
(26, '1', '68354349', '20.00', '2021-08-17', '05:26:22pm', 1),
(27, '2', '74325422', '500.00', '2021-08-19', '07:28:52am', 1),
(28, '5', '81244656', '2000.00', '2021-08-18', '02:58:39pm', 1),
(29, '5', '81244656', '999.00', '2021-08-21', '04:59:07pm', 1),
(30, '5', '81244656', '999.00', '2021-08-21', '05:01:42pm', 1),
(31, '5', '81244656', '999.00', '2021-08-21', '05:03:14pm', 1);

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

--
-- Dumping data for table `tax_collection`
--

INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`) VALUES
(1, '2020-09-05', '1', '9891822122'),
(2, '2020-09-06', '', 'serv-20200906092122'),
(3, '2020-09-08', '1', '2248277544'),
(4, '2020-09-22', '1', '3814847537'),
(5, '2020-10-12', '1', '6595645594'),
(6, '2020-10-30', '1', '1892196676'),
(7, '2020-10-28', '1', '2944371262'),
(8, '2020-10-30', '1', '8525297768'),
(9, '2020-10-12', '1', '7529493893'),
(10, '2020-10-12', '1', '6536474572'),
(11, '2020-10-12', '1', '2184135564'),
(12, '2020-10-12', '1', '9319946586'),
(13, '2020-10-13', '1', '4356889924'),
(14, '2020-10-17', '1', '6198778562'),
(15, '2020-10-19', '1', '7198272854'),
(16, '2020-10-20', '1', '1475927865'),
(17, '2020-10-27', '1', '6366994931'),
(18, '2020-10-27', '1', '9239324787'),
(19, '2020-10-30', '1', '6616531458'),
(20, '2020-10-30', '3', '7366818892'),
(21, '2020-11-02', '1', '3353167395'),
(22, '2020-11-02', '1', '3165459358'),
(23, '2020-11-02', '1', '8819813782'),
(24, '2021-01-24', '1', '3761386268'),
(25, '2021-01-24', '1', '5378578316'),
(26, '2021-01-24', '1', '3927513214'),
(27, '2021-01-24', '1', '8875457775'),
(28, '2021-01-24', '1', '3145293223'),
(29, '2021-01-24', '1', '5875785952'),
(30, '2021-01-24', '1', '9822694857'),
(31, '2021-01-24', '1', '9596518617'),
(32, '2021-01-24', '1', '5823834579'),
(33, '2021-01-24', '1', '7326886698'),
(34, '2021-01-25', '1', '3635883598'),
(35, '2021-01-25', '0', '5666849143'),
(36, '2021-01-25', '11', '1779861862'),
(37, '2021-01-28', '1', '5945696599'),
(38, '2021-01-28', '1', '3751111393'),
(39, '2021-01-28', '1', '3846414236'),
(40, '2021-01-28', '1', '8759362288'),
(41, '2021-01-28', '1', '3888153211'),
(42, '2021-01-28', '1', '1467522937'),
(43, '2021-01-28', '1', '7567438199'),
(44, '2021-01-28', '1', '5947833322'),
(45, '2021-01-28', '1', '9972259175'),
(46, '2021-01-28', '1', '2496581534'),
(47, '2021-01-28', '1', '9487585979'),
(48, '2021-01-31', '1', '2654819245'),
(49, '2021-01-31', '1', '7881639914'),
(50, '2021-01-31', '1', '7467816541'),
(51, '2021-02-01', '1', '6122252143'),
(52, '2021-02-01', '1', '2712277659'),
(53, '2021-02-01', '1', '9724499529'),
(54, '2021-02-01', '1', '6952367914'),
(55, '2021-02-01', '1', '2766356716'),
(56, '2021-02-01', '1', '9928433335'),
(57, '2021-02-01', '1', '6119185386'),
(58, '2021-02-01', '1', '6131758591'),
(59, '2021-02-01', '1', '5386234222'),
(60, '2021-02-01', '1', '8563748448'),
(61, '2021-02-01', '1', '6642919597'),
(62, '2021-02-01', '1', '7677116155'),
(63, '2021-02-01', '1', '8799942746'),
(64, '2021-02-01', '1', '3327923759'),
(65, '2021-02-01', '1', '9642683912'),
(66, '2021-02-01', '1', '3449991678'),
(67, '2021-02-01', '1', '1167493594'),
(68, '2021-02-04', '1', '3115956328'),
(69, '2021-02-04', '1', '5554934393'),
(70, '2021-02-04', '1', '2471638444'),
(71, '2021-02-04', '1', '5565914116'),
(72, '2021-02-04', '1', '7412862894'),
(73, '2021-02-04', '1', '9964843156'),
(74, '2021-02-04', '1', '1354721965'),
(75, '2021-02-04', '1', '2819135988'),
(76, '2021-02-04', '1', '9359586915'),
(77, '2021-02-04', '1', '3921748726'),
(78, '2021-02-04', '1', '9723111685'),
(79, '2021-02-04', '1', '4238435486'),
(80, '2021-02-04', '1', '9598596669'),
(81, '2021-02-04', '1', '9274443685'),
(82, '2021-02-04', '1', '4595194589'),
(83, '2021-02-04', '1', '5423232887'),
(84, '2021-02-04', '1', '3222942489'),
(85, '2021-02-04', '1', '3619372985'),
(86, '2021-02-04', '1', '7862456351'),
(87, '2021-02-04', '1', '5336177596'),
(88, '2021-02-04', '1', '5747688739'),
(89, '2021-02-04', '1', '5447156534'),
(90, '2021-02-04', '1', '7965669816'),
(91, '2021-02-04', '1', '1487749513'),
(92, '2021-02-04', '1', '8515949467'),
(93, '2021-02-06', '1', '2648948676'),
(94, '2021-02-06', '1', '4511146685'),
(95, '2021-02-07', '1', '8229568278'),
(96, '2021-02-07', '1', '1338258778'),
(97, '2021-02-07', '1', '5342481817'),
(98, '2021-02-07', '1', '3479365827'),
(99, '2021-02-08', '1', '9144825254'),
(100, '2021-02-08', '1', '2779515233'),
(101, '2021-02-08', '1', '3297232264'),
(102, '2021-03-01', '1', '3695956857'),
(103, '2021-03-01', '1', '6469676999'),
(104, '2021-03-01', '1', '2998893262'),
(105, '2021-03-01', '1', '9463765982'),
(106, '2021-03-01', '1', '4644448232'),
(107, '2021-03-01', '1', '1564378225'),
(108, '2021-03-01', '1', '1186269789'),
(109, '2021-03-01', '1', '3253412545'),
(110, '2021-03-10', '1', 'serv-20210301074951'),
(111, '2021-03-01', '1', '6153628196'),
(112, '2021-03-01', '15', '2855654735'),
(113, '2021-03-01', '1', '4995724328'),
(114, '2021-03-01', '1', '3768413676'),
(115, '2021-03-02', '1', '6882343251'),
(116, '2021-03-02', '1', '1671988247'),
(117, '2021-03-02', '1', '3299915762'),
(118, '2021-03-02', '1', '7917242716'),
(119, '2021-03-02', '1', '9915296799'),
(120, '2021-03-02', '1', '8718992952'),
(121, '2021-03-02', '1', '5212419716'),
(122, '2021-03-02', '1', '3614993649'),
(123, '2021-03-02', '1', '4272461894'),
(124, '2021-03-02', '1', '8375922933'),
(125, '2021-03-02', '1', '6741547767'),
(126, '2021-03-02', '1', '8422974295'),
(127, '2021-03-02', '1', '7617941253'),
(128, '2021-03-02', '1', '5812536262'),
(129, '2021-03-02', '1', '9882221923'),
(130, '2021-03-02', '1', '9415175675'),
(131, '2021-03-02', '1', '7988933414'),
(132, '2021-03-02', '1', '8182371456'),
(133, '2021-03-02', '1', '7339776484'),
(134, '2021-03-02', '1', '7174884429'),
(135, '2021-03-02', '1', '3657691246'),
(136, '2021-03-02', '1', '9561932928'),
(137, '2021-03-02', '1', '7822289426'),
(138, '2021-03-02', '1', '8314931186'),
(139, '2021-03-02', '1', '6619591538'),
(140, '2021-03-03', '1', '4279714337'),
(141, '2021-03-04', '1', '6793263511'),
(142, '2021-03-04', '1', '1527391816'),
(143, '2021-03-04', '1', '5999361338'),
(144, '2021-03-04', '1', '2318982799'),
(145, '2021-03-04', '1', '3453179452'),
(146, '2021-03-04', '1', '5182483594'),
(147, '2021-03-04', '1', '6632768457'),
(148, '2021-03-04', '1', '6411639788'),
(149, '2021-03-04', '1', '7543247116'),
(150, '2021-03-04', '1', '8584277543'),
(151, '2021-03-04', '1', '7766246411'),
(152, '2021-03-04', '1', '4736776865'),
(153, '2021-03-04', '1', '7323145782'),
(154, '2021-03-04', '1', '8274572647'),
(155, '2021-03-04', '1', '3544251322'),
(156, '2021-03-04', '1', '2563294489'),
(157, '2021-03-04', '1', '4384358963'),
(158, '2021-03-04', '1', '9435534399'),
(159, '2021-03-04', '1', '6226547416'),
(160, '2021-03-04', '1', '8553944939'),
(161, '2021-03-04', '1', '3645291488'),
(162, '2021-03-04', '1', '7935532758'),
(163, '2021-03-04', '1', '8145611732'),
(164, '2021-03-04', '1', '5973252646'),
(165, '2021-03-04', '1', '9794176598'),
(166, '2021-03-04', '1', '2781328582'),
(167, '2021-03-04', '1', '7798956728'),
(168, '2021-03-04', '1', '4718882966'),
(169, '2021-03-04', '1', '1118669998'),
(170, '2021-03-04', '1', '7878486797'),
(171, '2021-03-04', '1', '9582746687'),
(172, '2021-03-04', '1', '2116927238'),
(173, '2021-03-04', '1', '5146218447'),
(174, '2021-03-05', '1', '4614843555'),
(175, '2021-03-06', '1', '6348946546'),
(176, '2021-03-06', '1', '9519159211'),
(177, '2021-03-06', '1', '2411853819'),
(178, '2021-03-06', '1', '5776611765'),
(179, '2021-03-06', '1', '7782468998'),
(180, '2021-03-06', '1', '4337892772'),
(181, '2021-03-06', '1', '7534482791'),
(182, '2021-03-06', '1', '4658217254'),
(183, '2021-03-06', '1', '3437987338'),
(184, '2021-03-06', '1', '4528836614'),
(185, '2021-03-06', '1', '6494462635'),
(186, '2021-03-06', '1', '5245743973'),
(187, '2021-03-06', '1', '7798931156'),
(188, '2021-03-06', '1', '7228888322'),
(189, '2021-03-06', '1', '4686124774'),
(190, '2021-03-07', '1', '1412648554'),
(191, '2021-03-08', '1', '3165348613'),
(192, '2021-03-08', '1', '4814112346'),
(193, '2021-03-08', '1', '4999813441'),
(194, '2021-03-08', '1', '6965517836'),
(195, '2021-03-08', '1', '3139952278'),
(196, '2021-03-08', '1', '7725897894'),
(197, '2021-03-08', '1', '7536379844'),
(198, '2021-03-08', '1', '7511525643'),
(199, '2021-03-08', '1', '7732576846'),
(200, '2021-03-08', '1', '7918455576'),
(201, '2021-03-08', '1', '5266891887'),
(202, '2021-03-08', '1', '1113431119'),
(203, '2021-03-09', '1', '2253392211'),
(205, '2021-03-16', '1', '9352546281'),
(206, '2021-03-25', '1', '2264985222'),
(207, '2021-03-25', '1', '1164176679'),
(208, '2021-03-25', '1', '3973386179'),
(209, '2021-03-25', '1', '9969782594'),
(210, '2021-03-25', '1', '6114635735'),
(211, '2021-03-25', '1', '7138836886'),
(212, '2021-03-25', '1', '1888338823'),
(213, '2021-03-25', '1', '1218181367'),
(214, '2021-03-25', '1', '7332354786'),
(215, '2021-03-25', '1', '6375478262'),
(216, '2021-03-27', '1', '4926166185'),
(217, '2021-03-27', '1', '9448597927'),
(218, '2021-03-27', '1', '1232528626'),
(219, '2021-03-27', '1', '9159635392'),
(220, '2021-03-27', '1', '1323827998'),
(221, '2021-03-27', '1', '6814359999'),
(222, '2021-03-27', '1', '2552278371'),
(223, '2021-03-27', '1', '6432292849'),
(224, '2021-03-27', '1', '5263839321'),
(225, '2021-03-27', '1', '2629643926'),
(226, '2021-03-27', '1', '8252769232'),
(227, '2021-03-27', '1', '4271334591'),
(228, '2021-03-27', '1', '5886949939'),
(229, '2021-03-27', '1', '1379457846'),
(230, '2021-03-27', '1', '3396544515'),
(231, '2021-03-27', '1', '5315366147'),
(232, '2021-03-27', '1', '9983756362'),
(233, '2021-03-27', '1', '7696669871'),
(234, '2021-03-27', '1', '5127324531'),
(235, '2021-03-27', '1', '3286114535'),
(236, '2021-03-27', '1', '7582523617'),
(237, '2021-03-27', '1', '7152591695'),
(238, '2021-03-27', '1', '6251677767'),
(239, '2021-03-27', '1', '3997628225'),
(240, '2021-03-27', '1', '1918238786'),
(241, '2021-03-27', '1', '6294572419'),
(242, '2021-03-27', '1', '1275454887'),
(243, '2021-03-27', '1', '2292454546'),
(244, '2021-03-29', '1', '7689278855'),
(245, '2021-03-31', '1', '9253615126'),
(246, '2021-03-31', '1', '2576347663'),
(247, '2021-03-31', '1', '5546344462'),
(248, '2021-03-31', '1', '5287194455'),
(249, '2021-03-31', '16', '2511261462'),
(250, '2021-04-15', '1', '5174379788'),
(251, '2021-04-15', '1', '8318954593'),
(252, '2021-04-15', '1', '2516333953'),
(253, '2021-04-15', '1', '8333523484'),
(254, '2021-04-15', '1', '9138227182'),
(255, '2021-04-15', '1', '2552767438'),
(256, '2021-04-15', '1', '6763777792'),
(257, '2021-04-15', '1', '3682921559'),
(258, '2021-04-15', '1', '7257253589'),
(259, '2021-04-17', '1', '9329259931'),
(260, '2021-04-17', '1', '3232343428'),
(261, '2021-04-18', '1', '9276756433'),
(262, '2021-04-22', '1', '8698258484'),
(263, '2021-04-22', '1', '9321516392'),
(264, '2021-04-26', '1', '5937273793');

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
(4, '592GCM68ZUVT3RE', 'Unit', 1),
(5, 'WQMRK1KEYNR14WG', 'Box', 1),
(6, 'JRJ5KVGWXFKGMTF', 'Pcs', 1),
(7, 'JJ7OUCOT6LDBJLV', 'Set', 1),
(8, 'QYL1PBD64CM81L6', 'Pack', 1),
(9, 'BDEQQTJ62L1N7R6', 'Kit', 1),
(10, 'SESAU63KQHF282V', 'Vial', 1);

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

--
-- Dumping data for table `unit_cost_history`
--

INSERT INTO `unit_cost_history` (`id`, `supplier_id`, `product_id`, `update_unit_cost`, `date`, `time`, `status`) VALUES
(10, '1', '68354349', '253', '2021:08:22 07:08:02am', NULL, 2);

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
(7, 'V2DEJbIBFZq40dl', 'Test', 'Test', NULL, NULL, NULL, NULL, NULL, 'https://localhost/gmebd/gmebd/assets/dist/img/profile_picture/profile.jpg', 1),
(8, 'oHhdeY9SHRfOBJE', 'CTG', 'Chittagong', NULL, NULL, NULL, NULL, NULL, 'https://localhost/erp_hms/assets/dist/img/profile_picture/profile.jpg', 1),
(9, 'BqEHuu0wLvpfiJo', 'Outlet', 'Dhaka', NULL, NULL, NULL, NULL, NULL, 'https://localhost/erp_hms/assets/dist/img/profile_picture/profile.jpg', 1),
(10, 'iddZKdMU6PIVZMj', 'Warehouse', 'Central', NULL, NULL, NULL, NULL, NULL, 'https://localhost/erp_hms/assets/dist/img/profile_picture/profile.jpg', 1);

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
(9, 'V2DEJbIBFZq40dl', 'test@gmail.com', '41d99b369894eb1ec3f461135132d8bb', 2, NULL, 1),
(10, 'oHhdeY9SHRfOBJE', 'ctg@gmail.com', '5c9f45d10caa8504c488a5abb3cb02ee', 2, NULL, 1),
(11, 'BqEHuu0wLvpfiJo', 'dhaka@gmail.com', 'ec9ad1793e0fb033be89e42b020a595a', 2, NULL, 1),
(12, 'iddZKdMU6PIVZMj', 'cw@gmail.com', '04e80b52c69af326bc98c0ebec4e0c8d', 2, NULL, 1);

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

--
-- Dumping data for table `warrenty_return`
--

INSERT INTO `warrenty_return` (`return_id`, `product_id`, `invoice_id`, `invoice_details_id`, `purchase_id`, `date_purchase`, `date_return`, `byy_qty`, `ret_qty`, `was_qty`, `customer_id`, `supplier_id`, `product_rate`, `deduction`, `total_deduct`, `total_tax`, `service_charge`, `total_ret_amount`, `net_total_amount`, `reason`, `usablity`) VALUES
('169785726914412', '0909', '2944371262', '', '', '2020-10-28', '2020-10-29', 20, 2, 0, '1', '', '400.00', 0, '0.00', '0.00', '0.00', '800.00', '800.00', '', 2),
('193318379231355', '0909', '2944371262', '', '', '2020-10-28', '2020-10-29', 20, 0, 2, '1', '', '400.00', 0, '0.00', '0.00', '0.00', '800.00', '800.00', '', 3),
('223885923854389', '0909', '2944371262', '', '', '2020-10-28', '2020-10-29', 20, 1, 0, '1', '', '400.00', 0, '0.00', '0.00', '0.00', '400.00', '400.00', '', 4),
('236364795516345', '0909', '2944371262', '', '', '2020-10-28', '2020-10-29', 20, 0, 2, '1', '', '400.00', 0, '0.00', '0.00', '0.00', '800.00', '800.00', '', 3),
('344415564143587', '0909', '2944371262', '', '', '2020-10-28', '2020-10-29', 20, 0, 1, '1', '', '400.00', 0, '0.00', '0.00', '0.00', '400.00', '900.00', '', 3),
('392355567275216', '1234567', '2944371262', '', '', '2020-10-28', '2020-10-29', 20, 1, 0, '1', '', '400.00', 0, '0.00', '0.00', '200.00', '500.00', '500.00', '', 4),
('447156327772556', '0909', '2944371262', '', '', '2020-10-28', '2020-10-29', 20, 0, -2, '1', '', '400.00', 0, '0.00', '0.00', '0.00', '800.00', '800.00', '', 3),
('454833824193821', '0909', '2944371262', '', '', '2020-10-28', '2020-10-29', 20, 2, 0, '1', '', '400.00', 0, '0.00', '0.00', '0.00', '800.00', '800.00', '', 2),
('651795456654658', '0909', '2944371262', '', '', '2020-10-28', '2020-10-29', 20, 2, 0, '1', '', '400.00', 0, '0.00', '0.00', '200.00', '800.00', '800.00', '', 4),
('738766649757729', '0909', '2944371262', '', '', '2020-10-28', '2020-10-29', 20, 2, 0, '1', '', '400.00', 0, '0.00', '0.00', '0.00', '800.00', '800.00', '', 4),
('776387414412651', '0909', '2944371262', '', '', '2020-10-28', '2020-10-29', 20, 1, 0, '1', '', '400.00', 0, '0.00', '0.00', '0.00', '400.00', '400.00', '', 4),
('836858874456692', '1234567', '2944371262', '', '', '2020-10-28', '2020-10-29', 201, 0, 1, '1', '', '500.00', 0, '0.00', '0.00', '0.00', '500.00', '900.00', '', 3),
('967872356689966', '0909', '2944371262', '', '', '2020-10-28', '2020-10-29', 20, 0, 1, '1', '', '400.00', 0, '0.00', '0.00', '0.00', '400.00', '400.00', '', 3);

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
(1, 'https://erp.gmebdonline.com/./my-assets/image/logo/8e58af86bc24f2ebf5fae4c24bb7860d.png', 'http://erp.devenport.co/./my-assets/image/logo/df40f631bb64182d87895c1eaf2f01ea.png', 'http://erp.devenport.co/my-assets/image/logo/5e40b3bddb804d7e975dd522dd1af73f.png', 'Tk', 'Asia/Dhaka', '0', 'Copyright© 2020-GMELBD', 'english', '0', 1, '', '', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acc_coa`
--
ALTER TABLE `acc_coa`
  ADD PRIMARY KEY (`HeadName`),
  ADD KEY `HeadCode` (`HeadCode`),
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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `bkash_add`
--
ALTER TABLE `bkash_add`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `branch_name`
--
ALTER TABLE `branch_name`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `central_warehouse`
--
ALTER TABLE `central_warehouse`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `courier_name`
--
ALTER TABLE `courier_name`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `currency_tbl`
--
ALTER TABLE `currency_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customer_information`
--
ALTER TABLE `customer_information`
  MODIFY `customer_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `cus_cheque`
--
ALTER TABLE `cus_cheque`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `designation`
--
ALTER TABLE `designation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=218;

--
-- AUTO_INCREMENT for table `invoice_details`
--
ALTER TABLE `invoice_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=941;

--
-- AUTO_INCREMENT for table `module`
--
ALTER TABLE `module`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `money_receipt`
--
ALTER TABLE `money_receipt`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `product_information`
--
ALTER TABLE `product_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `product_model`
--
ALTER TABLE `product_model`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_purchase`
--
ALTER TABLE `product_purchase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `product_purchase_details`
--
ALTER TABLE `product_purchase_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `product_service`
--
ALTER TABLE `product_service`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `product_subcat`
--
ALTER TABLE `product_subcat`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_type`
--
ALTER TABLE `product_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `purchase_order_cart`
--
ALTER TABLE `purchase_order_cart`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10767;

--
-- AUTO_INCREMENT for table `rqsn`
--
ALTER TABLE `rqsn`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `rqsn_cart`
--
ALTER TABLE `rqsn_cart`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;

--
-- AUTO_INCREMENT for table `rqsn_details`
--
ALTER TABLE `rqsn_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sec_userrole`
--
ALTER TABLE `sec_userrole`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `sent_sms`
--
ALTER TABLE `sent_sms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `service_invoice`
--
ALTER TABLE `service_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `service_invoice_details`
--
ALTER TABLE `service_invoice_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sms_settings`
--
ALTER TABLE `sms_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sub_module`
--
ALTER TABLE `sub_module`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `supplier_address`
--
ALTER TABLE `supplier_address`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `supplier_contact`
--
ALTER TABLE `supplier_contact`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `supplier_email`
--
ALTER TABLE `supplier_email`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `supplier_information`
--
ALTER TABLE `supplier_information`
  MODIFY `supplier_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `supplier_mobile`
--
ALTER TABLE `supplier_mobile`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `supplier_phone`
--
ALTER TABLE `supplier_phone`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `supplier_product`
--
ALTER TABLE `supplier_product`
  MODIFY `supplier_pr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2203;

--
-- AUTO_INCREMENT for table `supplier_product_price`
--
ALTER TABLE `supplier_product_price`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tax_collection`
--
ALTER TABLE `tax_collection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=265;

--
-- AUTO_INCREMENT for table `tax_settings`
--
ALTER TABLE `tax_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `unit_cost_history`
--
ALTER TABLE `unit_cost_history`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user_login`
--
ALTER TABLE `user_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `web_setting`
--
ALTER TABLE `web_setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
