-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 11, 2024 at 07:49 AM
-- Server version: 10.11.9-MariaDB-cll-lve
-- PHP Version: 8.3.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `macjak_hms`
--
CREATE DATABASE IF NOT EXISTS `macjak_hms` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `macjak_hms`;

-- --------------------------------------------------------

--
-- Table structure for table `accesslog`
--

CREATE TABLE `accesslog` (
  `sl_no` bigint(20) NOT NULL,
  `action_page` varchar(50) DEFAULT NULL,
  `action_done` text DEFAULT NULL,
  `remarks` text NOT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `entry_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `acc_account`
--

CREATE TABLE `acc_account` (
  `account_id` int(11) NOT NULL,
  `sector_name` varchar(255) NOT NULL,
  `sector_type` varchar(120) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date` date DEFAULT '1970-01-02'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `acc_account_name`
--

CREATE TABLE `acc_account_name` (
  `account_id` int(11) UNSIGNED NOT NULL,
  `account_name` varchar(255) NOT NULL,
  `account_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `acc_account_name`
--

INSERT INTO `acc_account_name` (`account_id`, `account_name`, `account_type`) VALUES
(1, 'Employee Salary', 0),
(3, 'Example', 1),
(4, 'Loan Expense', 0),
(5, 'Loan Income', 1);

-- --------------------------------------------------------

--
-- Table structure for table `acc_bank`
--

CREATE TABLE `acc_bank` (
  `bank_id` int(11) NOT NULL,
  `bank_name` varchar(200) NOT NULL,
  `branch_name` varchar(255) NOT NULL,
  `account_number` varchar(50) NOT NULL,
  `opening_credit` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `acc_bank`
--

INSERT INTO `acc_bank` (`bank_id`, `bank_name`, `branch_name`, `account_number`, `opening_credit`, `status`, `date`) VALUES
(1, 'DBBL', 'GUlshan', '110.101.3243', 934875987, 1, '2018-06-14'),
(2, 'CITY bANK', 'Motijheel', '120324234', 3452324, 1, '2018-06-14'),
(3, 'Family Bank', 'sonalux', '23456', 0, 1, '2018-08-16');

-- --------------------------------------------------------

--
-- Table structure for table `acc_coa`
--

CREATE TABLE `acc_coa` (
  `HeadCode` varchar(50) NOT NULL,
  `HeadName` varchar(100) NOT NULL,
  `PHeadName` varchar(50) NOT NULL,
  `HeadLevel` int(11) NOT NULL,
  `IsActive` tinyint(1) NOT NULL,
  `IsTransaction` tinyint(1) NOT NULL,
  `IsGL` tinyint(1) NOT NULL,
  `HeadType` char(1) NOT NULL,
  `IsBudget` tinyint(1) NOT NULL,
  `IsDepreciation` tinyint(1) NOT NULL,
  `DepreciationRate` decimal(18,2) NOT NULL,
  `CreateBy` varchar(50) NOT NULL,
  `CreateDate` datetime NOT NULL,
  `UpdateBy` varchar(50) NOT NULL,
  `UpdateDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `acc_coa`
--

INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES
('4021403', 'AC', 'Repair and Maintenance', 3, 1, 1, 0, 'E', 0, 0, 0.00, 'admin', '2015-10-15 19:33:55', '', '0000-00-00 00:00:00'),
('50202', 'Account Payable', 'Current Liabilities', 2, 1, 0, 1, 'L', 0, 0, 0.00, 'admin', '2015-10-15 19:50:43', '', '0000-00-00 00:00:00'),
('10203', 'Account Receivable', 'Current Asset', 2, 1, 0, 0, 'A', 0, 0, 0.00, '', '0000-00-00 00:00:00', 'admin', '2013-09-18 15:29:35'),
('1020201', 'Advance', 'Advance, Deposit And Pre-payments', 3, 1, 0, 1, 'A', 0, 0, 0.00, 'Zoherul', '2015-05-31 13:29:12', 'admin', '2015-12-31 16:46:32'),
('102020103', 'Advance House Rent', 'Advance', 4, 1, 1, 0, 'A', 0, 0, 0.00, 'admin', '2016-10-02 16:55:38', 'admin', '2016-10-02 16:57:32'),
('10202', 'Advance, Deposit And Pre-payments', 'Current Asset', 2, 1, 0, 1, 'A', 0, 0, 0.00, '1', '2021-10-02 18:18:36', 'admin', '2015-12-31 16:46:24'),
('4020602', 'Advertisement and Publicity', 'Promonational Expence', 3, 1, 1, 0, 'E', 0, 0, 0.00, 'admin', '2015-10-15 18:51:44', '', '0000-00-00 00:00:00'),
('102010206', 'AIBL', 'Cash At Bank', 4, 1, 1, 0, 'A', 0, 0, 0.00, '1', '2021-10-06 09:16:58', '', '0000-00-00 00:00:00'),
('1010410', 'Air Cooler', 'Others Assets', 3, 1, 1, 0, 'A', 0, 0, 0.00, 'admin', '2016-05-23 12:13:55', '', '0000-00-00 00:00:00'),
('4020603', 'AIT Against Advertisement', 'Promonational Expence', 3, 1, 1, 0, 'E', 0, 0, 0.00, 'admin', '2015-10-15 18:52:09', '', '0000-00-00 00:00:00'),
('1', 'Assets', 'COA', 0, 1, 0, 0, 'A', 0, 0, 0.00, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
('1010204', 'Attendance Machine', 'Office Equipment', 3, 1, 1, 0, 'A', 0, 0, 0.00, 'admin', '2015-10-15 15:49:31', '', '0000-00-00 00:00:00'),
('40216', 'Audit Fee', 'Other Expenses', 2, 1, 1, 1, 'E', 0, 0, 0.00, 'admin', '2017-07-18 12:54:30', '', '0000-00-00 00:00:00'),
('102010202', 'Bank AlFalah', 'Cash At Bank', 4, 1, 1, 0, 'A', 0, 0, 0.00, 'admin', '2015-10-15 15:32:37', 'admin', '2015-10-15 15:32:52'),
('4021002', 'Bank Charge', 'Financial Expenses', 3, 1, 1, 0, 'E', 0, 0, 0.00, 'admin', '2015-10-15 19:21:03', '', '0000-00-00 00:00:00'),
('30203', 'Bank Interest', 'Other Income', 2, 1, 1, 1, 'I', 0, 0, 0.00, 'Obaidul', '2015-01-03 14:49:54', 'admin', '2016-09-25 11:04:19'),
('1010104', 'Book Shelf', 'Furniture & Fixturers', 3, 1, 1, 0, 'A', 0, 0, 0.00, 'admin', '2015-10-15 15:46:11', '', '0000-00-00 00:00:00'),
('1010407', 'Books and Journal', 'Others Assets', 3, 1, 1, 0, 'A', 0, 0, 0.00, 'admin', '2016-03-27 10:45:37', '', '0000-00-00 00:00:00'),
('4020604', 'Business Development Expenses', 'Promonational Expence', 3, 1, 1, 0, 'E', 0, 0, 0.00, 'admin', '2015-10-15 18:52:29', '', '0000-00-00 00:00:00'),
('4020606', 'Campaign Expenses', 'Promonational Expence', 3, 1, 1, 0, 'E', 0, 0, 0.00, 'admin', '2015-10-15 18:52:57', 'admin', '2016-09-19 14:52:48'),
('4020502', 'Campus Rent', 'House Rent', 3, 1, 1, 0, 'E', 0, 0, 0.00, 'admin', '2015-10-15 18:46:53', 'admin', '2017-04-27 17:02:39'),
('40212', 'Car Running Expenses', 'Other Expenses', 2, 1, 0, 1, 'E', 0, 0, 0.00, 'admin', '2015-10-15 19:28:43', '', '0000-00-00 00:00:00'),
('102010304', 'Card Payment', 'Online Payment', 4, 1, 1, 0, 'A', 0, 0, 0.00, '1', '2021-09-27 11:56:27', '', '0000-00-00 00:00:00'),
('10201', 'Cash & Cash Equivalent', 'Current Asset', 2, 1, 0, 1, 'A', 0, 0, 0.00, '1', '2021-10-02 18:20:00', 'admin', '2015-10-15 15:57:55'),
('1020102', 'Cash At Bank', 'Cash & Cash Equivalent', 3, 1, 0, 1, 'A', 0, 0, 0.00, '1', '2021-10-02 18:19:42', 'admin', '2015-10-15 15:32:42'),
('1020101', 'Cash In Hand', 'Cash & Cash Equivalent', 3, 1, 1, 0, 'A', 0, 0, 0.00, '1', '2021-10-02 16:18:59', 'admin', '2016-05-23 12:05:43'),
('30101', 'Cash Sale', 'Store Income', 1, 1, 1, 1, 'I', 0, 0, 0.00, '2', '2018-07-08 07:51:26', '', '0000-00-00 00:00:00'),
('1010207', 'CCTV', 'Office Equipment', 3, 1, 1, 0, 'A', 0, 0, 0.00, 'admin', '2015-10-15 15:51:24', '', '0000-00-00 00:00:00'),
('102020102', 'CEO Current A/C', 'Advance', 4, 1, 1, 0, 'A', 0, 0, 0.00, 'admin', '2016-09-25 11:54:54', '', '0000-00-00 00:00:00'),
('1010101', 'Class Room Chair', 'Furniture & Fixturers', 3, 1, 1, 0, 'A', 0, 0, 0.00, 'admin', '2015-10-15 15:45:29', '', '0000-00-00 00:00:00'),
('4021407', 'Close Circuit Cemera', 'Repair and Maintenance', 3, 1, 1, 0, 'E', 0, 0, 0.00, 'admin', '2015-10-15 19:35:35', '', '0000-00-00 00:00:00'),
('4020601', 'Commision on Admission', 'Promonational Expence', 3, 1, 1, 0, 'E', 0, 0, 0.00, 'admin', '2015-10-15 18:51:21', 'admin', '2016-09-19 14:42:54'),
('1010206', 'Computer', 'Office Equipment', 3, 1, 1, 0, 'A', 0, 0, 0.00, 'admin', '2015-10-15 15:51:09', '', '0000-00-00 00:00:00'),
('4021410', 'Computer (R)', 'Repair and Maintenance', 3, 1, 1, 0, 'E', 0, 0, 0.00, 'Zoherul', '2016-03-24 12:38:52', 'Zoherul', '2016-03-24 12:41:40'),
('1010102', 'Computer Table', 'Furniture & Fixturers', 3, 1, 0, 0, 'A', 0, 0, 0.00, '1', '2021-10-24 15:49:49', '', '0000-00-00 00:00:00'),
('301020401', 'Continuing Registration fee - UoL (Income)', 'Registration Fee (UOL) Income', 4, 1, 1, 0, 'I', 0, 0, 0.00, 'admin', '2015-10-15 17:40:40', '', '0000-00-00 00:00:00'),
('4020904', 'Contratuall Staff Salary', 'Salary & Allowances', 3, 1, 1, 0, 'E', 0, 0, 0.00, 'admin', '2015-10-15 19:12:34', '', '0000-00-00 00:00:00'),
('403', 'Cost of Sale', 'Expense', 0, 1, 1, 0, 'E', 0, 0, 0.00, '2', '2018-07-08 10:37:16', '', '0000-00-00 00:00:00'),
('30102', 'Credit Sale', 'Store Income', 1, 1, 1, 1, 'I', 0, 0, 0.00, '2', '2018-07-08 07:51:34', '', '0000-00-00 00:00:00'),
('4020709', 'Cultural Expense', 'Miscellaneous Expenses', 3, 1, 1, 0, 'E', 0, 0, 0.00, 'nasmud', '2017-04-29 12:45:10', '', '0000-00-00 00:00:00'),
('102', 'Current Asset', 'Assets', 1, 1, 0, 0, 'A', 0, 0, 0.00, '1', '2021-11-09 15:53:24', 'admin', '2018-07-07 11:23:00'),
('502', 'Current Liabilities', 'Liabilities', 1, 1, 0, 0, 'L', 0, 0, 0.00, 'anwarul', '2014-08-30 13:18:20', 'admin', '2015-10-15 19:49:21'),
('1020301', 'Customer Receivable', 'Account Receivable', 3, 1, 0, 1, 'A', 0, 0, 0.00, '2', '2019-01-08 09:15:08', 'admin', '2018-07-07 12:31:42'),
('40100002', 'cw-Chichawatni', 'Store Expenses', 2, 1, 1, 0, 'E', 0, 0, 0.00, '2', '2018-08-02 16:30:41', '', '0000-00-00 00:00:00'),
('102010205', 'DBBL', 'Cash At Bank', 4, 1, 1, 0, 'A', 0, 0, 0.00, '1', '2021-01-14 07:16:29', '', '0000-00-00 00:00:00'),
('1020202', 'Deposit', 'Advance, Deposit And Pre-payments', 3, 1, 0, 0, 'A', 0, 0, 0.00, 'admin', '2015-10-15 15:40:42', '', '0000-00-00 00:00:00'),
('4020605', 'Design & Printing Expense', 'Promonational Expence', 3, 1, 1, 0, 'E', 0, 0, 0.00, 'admin', '2015-10-15 18:55:00', '', '0000-00-00 00:00:00'),
('102010201', 'Dhaka Bank', 'Cash At Bank', 4, 1, 1, 0, 'A', 0, 0, 0.00, '1', '2021-01-14 07:02:53', '', '0000-00-00 00:00:00'),
('4020404', 'Dish Bill', 'Utility Expenses', 3, 1, 1, 0, 'E', 0, 0, 0.00, 'admin', '2015-10-15 18:58:21', '', '0000-00-00 00:00:00'),
('40215', 'Dividend', 'Other Expenses', 2, 1, 1, 1, 'E', 0, 0, 0.00, 'admin', '2016-09-25 14:07:55', '', '0000-00-00 00:00:00'),
('4020403', 'Drinking Water Bill', 'Utility Expenses', 3, 1, 1, 0, 'E', 0, 0, 0.00, 'admin', '2015-10-15 18:58:10', '', '0000-00-00 00:00:00'),
('1010211', 'DSLR Camera', 'Office Equipment', 3, 1, 1, 0, 'A', 0, 0, 0.00, 'admin', '2015-10-15 15:53:17', 'admin', '2016-01-02 16:23:25'),
('4020908', 'Earned Leave', 'Salary & Allowances', 3, 1, 1, 0, 'E', 0, 0, 0.00, 'admin', '2015-10-15 19:13:38', '', '0000-00-00 00:00:00'),
('4020607', 'Education Fair Expenses', 'Promonational Expence', 3, 1, 1, 0, 'E', 0, 0, 0.00, 'admin', '2015-10-15 18:53:42', '', '0000-00-00 00:00:00'),
('1010602', 'Electric Equipment', 'Electrical Equipment', 3, 1, 1, 0, 'A', 0, 0, 0.00, 'admin', '2016-03-27 10:44:51', '', '0000-00-00 00:00:00'),
('1010203', 'Electric Kettle', 'Office Equipment', 3, 1, 1, 0, 'A', 0, 0, 0.00, 'admin', '2015-10-15 15:49:07', '', '0000-00-00 00:00:00'),
('10106', 'Electrical Equipment', 'Non Current Assets', 2, 1, 0, 1, 'A', 0, 0, 0.00, 'admin', '2016-03-27 10:43:44', '', '0000-00-00 00:00:00'),
('4020407', 'Electricity Bill', 'Utility Expenses', 3, 1, 1, 0, 'E', 0, 0, 0.00, 'admin', '2015-10-15 18:59:31', '', '0000-00-00 00:00:00'),
('40201', 'Entertainment', 'Other Expenses', 2, 1, 1, 1, 'E', 0, 0, 0.00, 'admin', '2013-07-08 16:21:26', 'anwarul', '2013-07-17 14:21:47'),
('2', 'Equity', 'COA', 0, 1, 0, 0, 'L', 0, 0, 0.00, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
('4', 'Expense', 'COA', 0, 1, 0, 0, 'E', 0, 0, 0.00, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
('4020903', 'Faculty,Staff Salary & Allowances', 'Salary & Allowances', 3, 1, 1, 0, 'E', 0, 0, 0.00, 'admin', '2015-10-15 19:12:21', '', '0000-00-00 00:00:00'),
('4021404', 'Fax Machine', 'Repair and Maintenance', 3, 1, 1, 0, 'E', 0, 0, 0.00, 'admin', '2015-10-15 19:34:15', '', '0000-00-00 00:00:00'),
('4020905', 'Festival & Incentive Bonus', 'Salary & Allowances', 3, 1, 1, 0, 'E', 0, 0, 0.00, 'admin', '2015-10-15 19:12:48', '', '0000-00-00 00:00:00'),
('1010103', 'File Cabinet', 'Furniture & Fixturers', 3, 1, 1, 0, 'A', 0, 0, 0.00, 'admin', '2015-10-15 15:46:02', '', '0000-00-00 00:00:00'),
('40210', 'Financial Expenses', 'Other Expenses', 2, 1, 0, 1, 'E', 0, 0, 0.00, 'anwarul', '2013-08-20 12:24:31', 'admin', '2015-10-15 19:20:36'),
('1010403', 'Fire Extingushier', 'Others Assets', 3, 1, 1, 0, 'A', 0, 0, 0.00, 'admin', '2016-03-27 10:39:32', '', '0000-00-00 00:00:00'),
('4021408', 'Furniture', 'Repair and Maintenance', 3, 1, 1, 0, 'E', 0, 0, 0.00, 'admin', '2015-10-15 19:35:47', '', '0000-00-00 00:00:00'),
('10101', 'Furniture & Fixturers', 'Non Current Assets', 2, 1, 0, 1, 'A', 0, 0, 0.00, 'anwarul', '2013-08-20 16:18:15', 'anwarul', '2013-08-21 13:35:40'),
('4020406', 'Gas Bill', 'Utility Expenses', 3, 1, 1, 0, 'E', 0, 0, 0.00, 'admin', '2015-10-15 18:59:20', '', '0000-00-00 00:00:00'),
('20201', 'General Reserve', 'Reserve & Surplus', 2, 1, 1, 0, 'L', 0, 0, 0.00, 'admin', '2016-09-25 14:07:12', 'admin', '2016-10-02 17:48:49'),
('10105', 'Generator', 'Non Current Assets', 2, 1, 1, 1, 'A', 0, 0, 0.00, 'Zoherul', '2016-02-27 16:02:35', 'admin', '2016-05-23 12:05:18'),
('4021414', 'Generator Repair', 'Repair and Maintenance', 3, 1, 1, 0, 'E', 0, 0, 0.00, 'Zoherul', '2016-06-16 10:21:05', '', '0000-00-00 00:00:00'),
('40213', 'Generator Running Expenses', 'Other Expenses', 2, 1, 0, 1, 'E', 0, 0, 0.00, 'admin', '2015-10-15 19:29:29', '', '0000-00-00 00:00:00'),
('10103', 'Groceries and Cutleries', 'Non Current Assets', 2, 1, 1, 1, 'A', 0, 0, 0.00, '2', '2018-07-12 10:02:55', '', '0000-00-00 00:00:00'),
('1010408', 'Gym Equipment', 'Others Assets', 3, 1, 1, 0, 'A', 0, 0, 0.00, 'admin', '2016-03-27 10:46:03', '', '0000-00-00 00:00:00'),
('30305', 'Hall Room Service', 'Service', 2, 1, 1, 0, 'I', 0, 0, 0.00, '1', '2021-12-19 18:52:31', '', '0000-00-00 00:00:00'),
('4020907', 'Honorarium', 'Salary & Allowances', 3, 1, 1, 0, 'E', 0, 0, 0.00, 'admin', '2015-10-15 19:13:26', '', '0000-00-00 00:00:00'),
('30301', 'Hotel Room Booking', 'Service', 2, 1, 1, 0, 'I', 0, 0, 0.00, '1', '2021-10-02 16:52:00', '', '0000-00-00 00:00:00'),
('40205', 'House Rent', 'Other Expenses', 2, 1, 0, 1, 'E', 0, 0, 0.00, 'anwarul', '2013-08-24 10:26:56', '', '0000-00-00 00:00:00'),
('40100001', 'HP-Hasilpur', 'Academic Expenses', 2, 1, 1, 0, 'E', 0, 0, 0.00, '2', '2018-07-29 03:44:23', '', '0000-00-00 00:00:00'),
('4020702', 'HR Recruitment Expenses', 'Miscellaneous Expenses', 3, 1, 1, 0, 'E', 0, 0, 0.00, 'admin', '2016-09-25 12:55:49', '', '0000-00-00 00:00:00'),
('4020703', 'Incentive on Admission', 'Miscellaneous Expenses', 3, 1, 1, 0, 'E', 0, 0, 0.00, 'admin', '2016-09-25 12:56:09', '', '0000-00-00 00:00:00'),
('3', 'Income', 'COA', 0, 1, 0, 0, 'I', 0, 0, 0.00, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
('30204', 'Income from Photocopy & Printing', 'Other Income', 2, 1, 1, 1, 'I', 0, 0, 0.00, 'Zoherul', '2015-07-14 10:29:54', 'admin', '2016-09-25 11:04:28'),
('5020302', 'Income Tax Payable', 'Liabilities for Expenses', 3, 1, 0, 1, 'L', 0, 0, 0.00, 'admin', '2016-09-19 11:18:17', 'admin', '2016-09-28 13:18:35'),
('102020302', 'Insurance Premium', 'Prepayment', 4, 1, 1, 0, 'A', 0, 0, 0.00, 'admin', '2016-09-19 13:10:57', '', '0000-00-00 00:00:00'),
('4021001', 'Interest on Loan', 'Financial Expenses', 3, 1, 1, 0, 'E', 0, 0, 0.00, 'admin', '2015-10-15 19:20:53', 'admin', '2016-09-19 14:53:34'),
('4020401', 'Internet Bill', 'Utility Expenses', 3, 1, 1, 0, 'E', 0, 0, 0.00, 'admin', '2015-10-15 18:56:55', 'admin', '2015-10-15 18:57:32'),
('10107', 'Inventory', 'Non Current Assets', 1, 1, 1, 0, 'A', 0, 0, 0.00, '1', '2021-10-02 16:45:42', '', '0000-00-00 00:00:00'),
('4020409', 'Laundry Bill', 'Utility Expenses', 3, 1, 1, 0, 'E', 0, 0, 0.00, '1', '2021-10-02 16:49:56', '', '0000-00-00 00:00:00'),
('1010210', 'LCD TV', 'Office Equipment', 3, 1, 1, 0, 'A', 0, 0, 0.00, 'admin', '2015-10-15 15:52:27', '', '0000-00-00 00:00:00'),
('30103', 'Lease Sale', 'Store Income', 1, 1, 1, 1, 'I', 0, 0, 0.00, '2', '2018-07-08 07:51:52', '', '0000-00-00 00:00:00'),
('5', 'Liabilities', 'COA', 0, 1, 0, 0, 'L', 0, 0, 0.00, 'admin', '2013-07-04 12:32:07', 'admin', '2015-10-15 19:46:54'),
('50203', 'Liabilities for Expenses', 'Current Liabilities', 2, 1, 0, 1, 'L', 0, 0, 0.00, '1', '2021-10-02 17:02:33', '', '0000-00-00 00:00:00'),
('4020707', 'Library Expenses', 'Miscellaneous Expenses', 3, 1, 1, 0, 'E', 0, 0, 0.00, 'admin', '2017-01-10 15:34:54', '', '0000-00-00 00:00:00'),
('4021409', 'Lift', 'Repair and Maintenance', 3, 1, 1, 0, 'E', 0, 0, 0.00, 'admin', '2015-10-15 19:36:12', '', '0000-00-00 00:00:00'),
('50101', 'Long Term Borrowing', 'Non Current Liabilities', 2, 1, 0, 1, 'L', 0, 0, 0.00, 'admin', '2013-07-04 12:32:26', 'admin', '2015-10-15 19:47:40'),
('4020608', 'Marketing & Promotion Exp.', 'Promonational Expence', 3, 1, 1, 0, 'E', 0, 0, 0.00, 'admin', '2015-10-15 18:53:59', '', '0000-00-00 00:00:00'),
('4020901', 'Medical Allowance', 'Salary & Allowances', 3, 1, 1, 0, 'E', 0, 0, 0.00, 'admin', '2015-10-15 19:11:33', '', '0000-00-00 00:00:00'),
('1010411', 'Metal Ditector', 'Others Assets', 3, 1, 1, 0, 'A', 0, 0, 0.00, 'Zoherul', '2016-08-22 10:55:22', '', '0000-00-00 00:00:00'),
('4021413', 'Micro Oven', 'Repair and Maintenance', 3, 1, 1, 0, 'E', 0, 0, 0.00, 'Zoherul', '2016-05-12 14:53:51', '', '0000-00-00 00:00:00'),
('30202', 'Miscellaneous (Income)', 'Other Income', 2, 1, 1, 1, 'I', 0, 0, 0.00, 'anwarul', '2014-02-06 15:26:31', 'admin', '2016-09-25 11:04:35'),
('4020909', 'Miscellaneous Benifit', 'Salary & Allowances', 3, 1, 1, 0, 'E', 0, 0, 0.00, 'admin', '2015-10-15 19:13:53', '', '0000-00-00 00:00:00'),
('4020701', 'Miscellaneous Exp', 'Miscellaneous Expenses', 3, 1, 1, 0, 'E', 0, 0, 0.00, 'admin', '2016-09-25 12:54:39', '', '0000-00-00 00:00:00'),
('40207', 'Miscellaneous Expenses', 'Other Expenses', 2, 1, 0, 1, 'E', 0, 0, 0.00, 'anwarul', '2014-04-26 16:49:56', 'admin', '2016-09-25 12:54:19'),
('1010401', 'Mobile Phone', 'Others Assets', 3, 1, 1, 0, 'A', 0, 0, 0.00, 'admin', '2016-01-29 10:43:30', '', '0000-00-00 00:00:00'),
('102020101', 'Mr Ashiqur Rahman', 'Advance', 4, 1, 1, 0, 'A', 0, 0, 0.00, 'admin', '2015-12-31 16:47:23', 'admin', '2016-09-25 11:55:13'),
('1010212', 'Network Accessories', 'Office Equipment', 3, 1, 1, 0, 'A', 0, 0, 0.00, 'admin', '2016-01-02 16:23:32', '', '0000-00-00 00:00:00'),
('4020408', 'News Paper Bill', 'Utility Expenses', 3, 1, 1, 0, 'E', 0, 0, 0.00, 'admin', '2016-01-02 15:55:57', '', '0000-00-00 00:00:00'),
('101', 'Non Current Assets', 'Assets', 1, 1, 0, 1, 'A', 0, 0, 0.00, '1', '2021-10-03 18:21:23', 'admin', '2015-10-15 15:29:11'),
('501', 'Non Current Liabilities', 'Liabilities', 1, 1, 0, 0, 'L', 0, 0, 0.00, 'anwarul', '2014-08-30 13:18:20', 'admin', '2015-10-15 19:49:21'),
('1010404', 'Office Decoration', 'Others Assets', 3, 1, 1, 0, 'A', 0, 0, 0.00, 'admin', '2016-03-27 10:40:02', '', '0000-00-00 00:00:00'),
('10102', 'Office Equipment', 'Non Current Assets', 2, 1, 0, 1, 'A', 0, 0, 0.00, 'anwarul', '2013-12-06 18:08:00', 'admin', '2015-10-15 15:48:21'),
('4021401', 'Office Repair & Maintenance', 'Repair and Maintenance', 3, 1, 1, 0, 'E', 0, 0, 0.00, 'admin', '2015-10-15 19:33:15', '', '0000-00-00 00:00:00'),
('30201', 'Office Stationary (Income)', 'Other Income', 2, 1, 1, 1, 'I', 0, 0, 0.00, 'anwarul', '2013-07-17 15:21:06', 'admin', '2016-09-25 11:04:50'),
('1020103', 'Online Payment', 'Cash & Cash Equivalent', 3, 1, 0, 1, 'A', 0, 0, 0.00, '1', '2021-10-02 18:20:18', '', '0000-00-00 00:00:00'),
('402', 'Other Expenses', 'Expense', 1, 1, 0, 1, 'E', 0, 0, 0.00, '1', '2021-10-27 17:56:45', 'admin', '2015-10-15 18:37:42'),
('302', 'Other Income', 'Income', 1, 1, 0, 0, 'I', 0, 0, 0.00, '2', '2018-07-07 13:40:57', 'admin', '2016-09-25 11:04:09'),
('40211', 'Others (Non Academic Expenses)', 'Other Expenses', 2, 1, 0, 1, 'E', 0, 0, 0.00, 'Obaidul', '2014-12-03 16:05:42', 'admin', '2015-10-15 19:22:09'),
('30205', 'Others (Non-Academic Income)', 'Other Income', 2, 1, 0, 1, 'I', 0, 0, 0.00, 'admin', '2015-10-15 17:23:49', 'admin', '2015-10-15 17:57:52'),
('10104', 'Others Assets', 'Non Current Assets', 2, 1, 0, 1, 'A', 0, 0, 0.00, 'admin', '2016-01-29 10:43:16', '', '0000-00-00 00:00:00'),
('4020910', 'Outstanding Salary', 'Salary & Allowances', 3, 1, 1, 0, 'E', 0, 0, 0.00, 'Zoherul', '2016-04-24 11:56:50', '', '0000-00-00 00:00:00'),
('4021405', 'Oven', 'Repair and Maintenance', 3, 1, 1, 0, 'E', 0, 0, 0.00, 'admin', '2015-10-15 19:34:31', '', '0000-00-00 00:00:00'),
('4021412', 'PABX-Repair', 'Repair and Maintenance', 3, 1, 1, 0, 'E', 0, 0, 0.00, 'Zoherul', '2016-04-24 14:40:18', '', '0000-00-00 00:00:00'),
('4020902', 'Part-time Staff Salary', 'Salary & Allowances', 3, 1, 1, 0, 'E', 0, 0, 0.00, 'admin', '2015-10-15 19:12:06', '', '0000-00-00 00:00:00'),
('102010301', 'Paypal', 'Online Payment', 4, 1, 1, 0, 'A', 0, 0, 0.00, '1', '2021-01-13 10:02:51', '', '0000-00-00 00:00:00'),
('1010202', 'Photocopy & Fax Machine', 'Office Equipment', 3, 1, 1, 0, 'A', 0, 0, 0.00, 'admin', '2015-10-15 15:47:27', 'admin', '2016-05-23 12:14:40'),
('4021411', 'Photocopy Machine Repair', 'Repair and Maintenance', 3, 1, 1, 0, 'E', 0, 0, 0.00, 'Zoherul', '2016-04-24 12:40:02', 'admin', '2017-04-27 17:03:17'),
('3020503', 'Practical Fee', 'Others (Non-Academic Income)', 3, 1, 1, 1, 'I', 0, 0, 0.00, 'admin', '2017-07-22 18:00:37', '', '0000-00-00 00:00:00'),
('1020203', 'Prepayment', 'Advance, Deposit And Pre-payments', 3, 1, 0, 1, 'A', 0, 0, 0.00, 'admin', '2015-10-15 15:40:51', 'admin', '2015-12-31 16:49:58'),
('1010201', 'Printer', 'Office Equipment', 3, 1, 1, 0, 'A', 0, 0, 0.00, 'admin', '2015-10-15 15:47:15', '', '0000-00-00 00:00:00'),
('40202', 'Printing and Stationary', 'Other Expenses', 2, 1, 1, 1, 'E', 0, 0, 0.00, 'admin', '2013-07-08 16:21:45', 'admin', '2016-09-19 14:39:32'),
('3020502', 'Professional Training Course(Oracal-1)', 'Others (Non-Academic Income)', 3, 1, 1, 0, 'I', 0, 0, 0.00, 'nasim', '2017-06-22 13:28:05', '', '0000-00-00 00:00:00'),
('30207', 'Professional Training Course(Oracal)', 'Other Income', 2, 1, 0, 1, 'I', 0, 0, 0.00, 'nasim', '2017-06-22 13:24:16', 'nasim', '2017-06-22 13:25:56'),
('1010208', 'Projector', 'Office Equipment', 3, 1, 1, 0, 'A', 0, 0, 0.00, 'admin', '2015-10-15 15:51:44', '', '0000-00-00 00:00:00'),
('40206', 'Promonational Expence', 'Other Expenses', 2, 1, 0, 1, 'E', 0, 0, 0.00, 'anwarul', '2013-07-11 13:48:57', 'anwarul', '2013-07-17 14:23:03'),
('102010306', 'Razorpay', 'Online Payment', 4, 1, 1, 0, 'A', 0, 0, 0.00, '1', '2022-01-19 10:02:51', '', '0000-00-00 00:00:00'),
('40214', 'Repair and Maintenance', 'Other Expenses', 2, 1, 0, 1, 'E', 0, 0, 0.00, 'admin', '2015-10-15 19:32:46', '', '0000-00-00 00:00:00'),
('202', 'Reserve & Surplus', 'Equity', 1, 1, 0, 1, 'L', 0, 0, 0.00, 'admin', '2016-09-25 14:06:34', 'admin', '2016-10-02 17:48:57'),
('30303', 'Restaurant Food', 'Service', 2, 1, 1, 0, 'I', 0, 0, 0.00, '1', '2021-10-02 16:52:31', '', '0000-00-00 00:00:00'),
('20102', 'Retained Earnings', 'Share Holders Equity', 2, 1, 1, 1, 'L', 0, 0, 0.00, 'admin', '2016-05-23 11:20:40', 'admin', '2016-09-25 14:05:06'),
('4020708', 'River Cruse', 'Miscellaneous Expenses', 3, 1, 1, 0, 'E', 0, 0, 0.00, 'admin', '2017-04-24 15:35:25', '', '0000-00-00 00:00:00'),
('102020105', 'Salary', 'Advance', 4, 1, 0, 1, 'A', 0, 0, 0.00, '1', '2021-10-02 16:20:05', '', '0000-00-00 00:00:00'),
('40209', 'Salary & Allowances', 'Other Expenses', 2, 1, 0, 1, 'E', 0, 0, 0.00, 'anwarul', '2013-12-12 11:22:58', '', '0000-00-00 00:00:00'),
('404', 'Sale Discount', 'Expense', 1, 1, 1, 0, 'E', 0, 0, 0.00, '2', '2018-07-19 10:15:11', '', '0000-00-00 00:00:00'),
('1010406', 'Security Equipment', 'Others Assets', 3, 1, 1, 0, 'A', 0, 0, 0.00, 'admin', '2016-03-27 10:41:30', '', '0000-00-00 00:00:00'),
('303', 'Service', 'Income', 1, 1, 0, 1, 'I', 0, 0, 0.00, '1', '2021-09-27 11:37:54', '', '0000-00-00 00:00:00'),
('30304', 'Service Charge', 'Service', 2, 1, 1, 0, 'I', 0, 0, 0.00, '1', '2021-10-05 09:42:19', '', '0000-00-00 00:00:00'),
('20101', 'Share Capital', 'Share Holders Equity', 2, 1, 0, 1, 'L', 0, 0, 0.00, 'anwarul', '2013-12-08 19:37:32', 'admin', '2015-10-15 19:45:35'),
('201', 'Share Holders Equity', 'Equity', 1, 1, 0, 0, 'L', 0, 0, 0.00, '', '0000-00-00 00:00:00', 'admin', '2015-10-15 19:43:51'),
('50201', 'Short Term Borrowing', 'Current Liabilities', 2, 1, 0, 1, 'L', 0, 0, 0.00, 'admin', '2015-10-15 19:50:30', '', '0000-00-00 00:00:00'),
('40208', 'Software Development Expenses', 'Other Expenses', 2, 1, 0, 1, 'E', 0, 0, 0.00, 'anwarul', '2013-11-21 14:13:01', 'admin', '2015-10-15 19:02:51'),
('4020906', 'Special Allowances', 'Salary & Allowances', 3, 1, 1, 0, 'E', 0, 0, 0.00, 'admin', '2015-10-15 19:13:13', '', '0000-00-00 00:00:00'),
('50102', 'Sponsors Loan', 'Non Current Liabilities', 2, 1, 0, 1, 'L', 0, 0, 0.00, 'admin', '2015-10-15 19:48:02', '', '0000-00-00 00:00:00'),
('4020706', 'Sports Expense', 'Miscellaneous Expenses', 3, 1, 1, 0, 'E', 0, 0, 0.00, 'nasmud', '2016-11-09 13:16:53', '', '0000-00-00 00:00:00'),
('102010302', 'SSLCOMMERZ', 'Online Payment', 4, 1, 1, 0, 'A', 0, 0, 0.00, '1', '2021-01-13 10:04:24', '', '0000-00-00 00:00:00'),
('102010203', 'Standard Bank', 'Cash At Bank', 4, 1, 1, 0, 'A', 0, 0, 0.00, 'admin', '2015-10-15 15:33:33', 'admin', '2015-10-15 15:33:48'),
('102010204', 'State Bank', 'Cash At Bank', 4, 1, 1, 0, 'A', 0, 0, 0.00, '1', '2021-01-14 07:22:24', '', '0000-00-00 00:00:00'),
('401', 'Store Expenses', 'Expense', 1, 1, 0, 0, 'E', 0, 0, 0.00, '2', '2018-07-07 13:38:59', 'admin', '2015-10-15 17:58:46'),
('301', 'Store Income', 'Income', 1, 1, 0, 0, 'I', 0, 0, 0.00, '2', '2018-07-07 13:40:37', 'admin', '2015-09-17 17:00:02'),
('102010305', 'Stripe', 'Online Payment', 4, 1, 1, 0, 'A', 0, 0, 0.00, '1', '2021-12-06 10:02:51', '', '0000-00-00 00:00:00'),
('3020501', 'Students Info. Correction Fee', 'Others (Non-Academic Income)', 3, 1, 1, 0, 'I', 0, 0, 0.00, 'admin', '2015-10-15 17:24:45', '', '0000-00-00 00:00:00'),
('1010601', 'Sub Station', 'Electrical Equipment', 3, 1, 1, 0, 'A', 0, 0, 0.00, 'admin', '2016-03-27 10:44:11', '', '0000-00-00 00:00:00'),
('5020205', 'Suppliers', 'Account Payable', 3, 1, 0, 1, 'L', 0, 0, 0.00, '2', '2018-12-15 06:50:12', '', '0000-00-00 00:00:00'),
('5020303', 'TAX Payable', 'Liabilities for Expenses', 3, 1, 1, 0, 'L', 0, 0, 0.00, '1', '2021-10-02 17:03:25', '', '0000-00-00 00:00:00'),
('1020204', 'TAX Receivable', 'Advance, Deposit And Pre-payments', 3, 0, 1, 0, 'A', 0, 0, 0.00, '1', '2021-10-04 12:29:26', '', '0000-00-00 00:00:00'),
('4020704', 'TB Care Expenses', 'Miscellaneous Expenses', 3, 1, 1, 0, 'E', 0, 0, 0.00, 'admin', '2016-10-08 13:03:04', '', '0000-00-00 00:00:00'),
('30206', 'TB Care Income', 'Other Income', 2, 1, 1, 1, 'I', 0, 0, 0.00, 'admin', '2016-10-08 13:00:56', '', '0000-00-00 00:00:00'),
('4020501', 'TDS on House Rent', 'House Rent', 3, 1, 1, 0, 'E', 0, 0, 0.00, 'admin', '2015-10-15 18:44:07', 'admin', '2016-09-19 14:40:16'),
('502030201', 'TDS Payable House Rent', 'Income Tax Payable', 4, 1, 1, 0, 'L', 0, 0, 0.00, 'admin', '2016-09-19 11:19:42', 'admin', '2016-09-28 13:19:37'),
('502030203', 'TDS Payable on Advertisement Bill', 'Income Tax Payable', 4, 1, 1, 0, 'L', 0, 0, 0.00, 'admin', '2016-09-28 13:20:51', '', '0000-00-00 00:00:00'),
('502030202', 'TDS Payable on Salary', 'Income Tax Payable', 4, 1, 1, 0, 'L', 0, 0, 0.00, 'admin', '2016-09-28 13:20:17', '', '0000-00-00 00:00:00'),
('4021402', 'Tea Kettle', 'Repair and Maintenance', 3, 1, 1, 0, 'E', 0, 0, 0.00, 'admin', '2015-10-15 19:33:45', '', '0000-00-00 00:00:00'),
('4020402', 'Telephone Bill', 'Utility Expenses', 3, 1, 1, 0, 'E', 0, 0, 0.00, 'admin', '2015-10-15 18:57:59', '', '0000-00-00 00:00:00'),
('1010209', 'Telephone Set & PABX', 'Office Equipment', 3, 1, 1, 0, 'A', 0, 0, 0.00, 'admin', '2015-10-15 15:51:57', 'admin', '2016-10-02 17:10:40'),
('40203', 'Travelling & Conveyance', 'Other Expenses', 2, 1, 1, 1, 'E', 0, 0, 0.00, 'admin', '2013-07-08 16:22:06', 'admin', '2015-10-15 18:45:13'),
('4021406', 'TV', 'Repair and Maintenance', 3, 1, 1, 0, 'E', 0, 0, 0.00, 'admin', '2015-10-15 19:35:07', '', '0000-00-00 00:00:00'),
('1010205', 'UPS', 'Office Equipment', 3, 1, 1, 0, 'A', 0, 0, 0.00, 'admin', '2015-10-15 15:50:38', '', '0000-00-00 00:00:00'),
('40204', 'Utility Expenses', 'Other Expenses', 2, 1, 0, 1, 'E', 0, 0, 0.00, 'anwarul', '2013-07-11 16:20:24', 'admin', '2016-01-02 15:55:22'),
('4020503', 'VAT on House Rent Exp', 'House Rent', 3, 1, 1, 0, 'E', 0, 0, 0.00, 'admin', '2015-10-15 18:49:22', 'admin', '2016-09-25 14:00:52'),
('5020301', 'VAT Payable', 'Liabilities for Expenses', 3, 0, 1, 0, 'L', 0, 0, 0.00, '1', '2021-10-28 09:56:55', 'admin', '2016-09-28 13:23:53'),
('1010409', 'Vehicle A/C', 'Others Assets', 3, 1, 1, 0, 'A', 0, 0, 0.00, 'Zoherul', '2016-05-12 12:13:21', '', '0000-00-00 00:00:00'),
('1010405', 'Voltage Stablizer', 'Others Assets', 3, 1, 1, 0, 'A', 0, 0, 0.00, 'admin', '2016-03-27 10:40:59', '', '0000-00-00 00:00:00'),
('1010105', 'Waiting Sofa - Steel', 'Furniture & Fixturers', 3, 1, 1, 0, 'A', 0, 0, 0.00, 'admin', '2015-10-15 15:46:29', '', '0000-00-00 00:00:00'),
('102030101', 'Walk in Customer', 'Customer Receivable', 4, 1, 1, 0, 'A', 0, 0, 0.00, '1', '2021-10-02 16:44:50', '', '0000-00-00 00:00:00'),
('4020405', 'WASA Bill', 'Utility Expenses', 3, 1, 1, 0, 'E', 0, 0, 0.00, 'admin', '2015-10-15 18:58:51', '', '0000-00-00 00:00:00'),
('1010402', 'Water Purifier', 'Others Assets', 3, 1, 1, 0, 'A', 0, 0, 0.00, 'admin', '2016-01-29 11:14:11', '', '0000-00-00 00:00:00'),
('4020705', 'Website Development Expenses', 'Miscellaneous Expenses', 3, 1, 1, 0, 'E', 0, 0, 0.00, 'admin', '2016-10-15 12:42:47', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `acc_customer_income`
--

CREATE TABLE `acc_customer_income` (
  `ID` int(11) NOT NULL,
  `Customer_Id` varchar(50) NOT NULL,
  `VNo` varchar(50) NOT NULL,
  `Date` date NOT NULL,
  `Amount` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `acc_glsummarybalance`
--

CREATE TABLE `acc_glsummarybalance` (
  `ID` int(11) NOT NULL,
  `COAID` varchar(50) DEFAULT NULL,
  `Debit` decimal(18,2) DEFAULT NULL,
  `Credit` decimal(18,2) DEFAULT NULL,
  `FYear` int(11) DEFAULT NULL,
  `CreateBy` varchar(50) DEFAULT NULL,
  `CreateDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `acc_income_expence`
--

CREATE TABLE `acc_income_expence` (
  `ID` int(11) NOT NULL,
  `VNo` varchar(50) NOT NULL,
  `Vtype` varchar(50) DEFAULT NULL,
  `Date` date NOT NULL,
  `Paymode` varchar(50) NOT NULL,
  `Perpose` varchar(50) DEFAULT NULL,
  `Narration` text DEFAULT NULL,
  `StoreID` int(11) NOT NULL,
  `COAID` varchar(50) NOT NULL,
  `Amount` decimal(10,2) NOT NULL,
  `IsApprove` tinyint(4) NOT NULL,
  `CreateBy` varchar(50) NOT NULL,
  `CreateDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `acc_temp`
--

CREATE TABLE `acc_temp` (
  `COAID` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Debit` decimal(18,2) NOT NULL,
  `Credit` decimal(18,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `acc_transaction`
--

CREATE TABLE `acc_transaction` (
  `ID` int(11) NOT NULL,
  `VNo` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Vtype` varchar(50) DEFAULT NULL,
  `VDate` date DEFAULT NULL,
  `COAID` varchar(50) NOT NULL,
  `Narration` text DEFAULT NULL,
  `Debit` decimal(18,2) DEFAULT NULL,
  `Credit` decimal(18,2) DEFAULT NULL,
  `StoreID` int(11) NOT NULL,
  `IsPosted` char(10) DEFAULT NULL,
  `CreateBy` varchar(50) DEFAULT NULL,
  `CreateDate` datetime DEFAULT NULL,
  `UpdateBy` varchar(50) DEFAULT NULL,
  `UpdateDate` datetime DEFAULT NULL,
  `IsAppove` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `acc_transaction`
--

INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES
(1, '000001', 'CIV', '2022-10-07', '30301', 'Hotel credited for room advance rent Invoice# 000001', 0.00, 184000.00, 0, '1', '3', '2022-10-07 09:22:42', NULL, NULL, '1'),
(2, '000001', 'CIV', '2022-10-07', '102030101', 'Hotel customer debited for advance room booking Invoice# 000001', 184000.00, 0.00, 0, '1', '3', '2022-10-07 09:22:42', NULL, NULL, '1'),
(3, '000001', 'CIV', '2022-10-07', '102030101', 'Hotel customer credited for advance room booking Invoice# 000001', 0.00, 184000.00, 0, '1', '3', '2022-10-07 09:22:42', NULL, NULL, '1'),
(4, '000002', 'CIV', '2022-10-07', '1020101', 'Cash in Hand Debited For Invoice#000002', 184000.00, 0.00, 0, '1', '1', '2022-10-07 13:35:50', NULL, NULL, '1'),
(5, '000002', 'CIV', '2022-10-07', '102030101', 'Customer debit for Rent Invoice# 000002', 184000.00, 0.00, 0, '1', '1', '2022-10-07 13:35:50', NULL, NULL, '1'),
(6, '000002', 'CIV', '2022-10-07', '30301', 'Hotel Credited for Hotel Rent Invoice# 000002', 0.00, 184000.00, 0, '1', '1', '2022-10-07 13:35:50', NULL, NULL, '1'),
(7, '000002', 'CIV', '2022-10-07', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000002', 0.00, 0.00, 0, '1', '1', '2022-10-07 13:35:50', NULL, NULL, '1'),
(8, '000002', 'CIV', '2022-10-07', '102030101', 'Customer Credit for Rent Invoice# 000002', 0.00, 184000.00, 0, '1', '1', '2022-10-07 13:35:50', NULL, NULL, '1'),
(9, '000002', 'CIV', '2022-10-07', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000002', 0.00, 0.00, 0, '1', '1', '2022-10-07 13:35:50', NULL, NULL, '1'),
(10, '000002', 'CIV', '2022-10-07', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000002', 0.00, 0.00, 0, '1', '1', '2022-10-07 13:35:50', NULL, NULL, '1'),
(11, '000001', 'CIV', '2022-10-08', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000001', 0.00, 0.00, 0, '1', '3', '2022-10-08 12:39:59', NULL, NULL, '1'),
(12, '000001', 'CIV', '2022-10-08', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000001', 0.00, 0.00, 0, '1', '3', '2022-10-08 12:39:59', NULL, NULL, '1'),
(13, '000001', 'CIV', '2022-10-08', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000001', 0.00, 0.00, 0, '1', '3', '2022-10-08 12:39:59', NULL, NULL, '1'),
(14, '000003', 'CIV', '2022-10-08', '1020101', 'Cash in Hand Debited For Invoice#000003', 230000.00, 0.00, 0, '1', '3', '2022-10-08 12:44:35', NULL, NULL, '1'),
(15, '000003', 'CIV', '2022-10-08', '102030101', 'Customer debit for Rent Invoice# 000003', 230000.00, 0.00, 0, '1', '3', '2022-10-08 12:44:35', NULL, NULL, '1'),
(16, '000003', 'CIV', '2022-10-08', '30301', 'Hotel Credited for Hotel Rent Invoice# 000003', 0.00, 230000.00, 0, '1', '3', '2022-10-08 12:44:35', NULL, NULL, '1'),
(17, '000003', 'CIV', '2022-10-08', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000003', 0.00, 0.00, 0, '1', '3', '2022-10-08 12:44:35', NULL, NULL, '1'),
(18, '000003', 'CIV', '2022-10-08', '102030101', 'Customer Credit for Rent Invoice# 000003', 0.00, 230000.00, 0, '1', '3', '2022-10-08 12:44:35', NULL, NULL, '1'),
(19, '000003', 'CIV', '2022-10-08', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000003', 0.00, 0.00, 0, '1', '3', '2022-10-08 12:44:35', NULL, NULL, '1'),
(20, '000003', 'CIV', '2022-10-08', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000003', 0.00, 0.00, 0, '1', '3', '2022-10-08 12:44:35', NULL, NULL, '1'),
(21, '000004', 'CIV', '2022-10-08', '1020101', 'Cash in Hand Debited For Invoice#000004', 260000.00, 0.00, 0, '1', '3', '2022-10-08 12:58:35', NULL, NULL, '1'),
(22, '000004', 'CIV', '2022-10-08', '102030101', 'Customer debit for Rent Invoice# 000004', 260000.00, 0.00, 0, '1', '3', '2022-10-08 12:58:35', NULL, NULL, '1'),
(23, '000004', 'CIV', '2022-10-08', '30301', 'Hotel Credited for Hotel Rent Invoice# 000004', 0.00, 260000.00, 0, '1', '3', '2022-10-08 12:58:35', NULL, NULL, '1'),
(24, '000004', 'CIV', '2022-10-08', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000004', 0.00, 0.00, 0, '1', '3', '2022-10-08 12:58:35', NULL, NULL, '1'),
(25, '000004', 'CIV', '2022-10-08', '102030101', 'Customer Credit for Rent Invoice# 000004', 0.00, 260000.00, 0, '1', '3', '2022-10-08 12:58:35', NULL, NULL, '1'),
(26, '000004', 'CIV', '2022-10-08', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000004', 0.00, 0.00, 0, '1', '3', '2022-10-08 12:58:35', NULL, NULL, '1'),
(27, '000004', 'CIV', '2022-10-08', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000004', 0.00, 0.00, 0, '1', '3', '2022-10-08 12:58:35', NULL, NULL, '1'),
(28, '000005', 'CIV', '2022-10-08', '102010304', 'Cash in Card Debited For Invoice#000005', 240000.00, 0.00, 0, '1', '3', '2022-10-08 12:59:58', NULL, NULL, '1'),
(29, '000005', 'CIV', '2022-10-08', '102030101', 'Customer debit for Rent Invoice# 000005', 240000.00, 0.00, 0, '1', '3', '2022-10-08 12:59:58', NULL, NULL, '1'),
(30, '000005', 'CIV', '2022-10-08', '30301', 'Hotel Credited for Hotel Rent Invoice# 000005', 0.00, 240000.00, 0, '1', '3', '2022-10-08 12:59:58', NULL, NULL, '1'),
(31, '000005', 'CIV', '2022-10-08', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000005', 0.00, 0.00, 0, '1', '3', '2022-10-08 12:59:58', NULL, NULL, '1'),
(32, '000005', 'CIV', '2022-10-08', '102030101', 'Customer Credit for Rent Invoice# 000005', 0.00, 240000.00, 0, '1', '3', '2022-10-08 12:59:58', NULL, NULL, '1'),
(33, '000005', 'CIV', '2022-10-08', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000005', 0.00, 0.00, 0, '1', '3', '2022-10-08 12:59:58', NULL, NULL, '1'),
(34, '000005', 'CIV', '2022-10-08', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000005', 0.00, 0.00, 0, '1', '3', '2022-10-08 12:59:58', NULL, NULL, '1'),
(35, '000006', 'CIV', '2022-10-08', '1020101', 'Cash in Hand Debited For Invoice#000006', 149500.00, 0.00, 0, '1', '3', '2022-10-08 13:06:39', NULL, NULL, '1'),
(36, '000006', 'CIV', '2022-10-08', '102030101', 'Customer debit for Rent Invoice# 000006', 149500.00, 0.00, 0, '1', '3', '2022-10-08 13:06:39', NULL, NULL, '1'),
(37, '000006', 'CIV', '2022-10-08', '30301', 'Hotel Credited for Hotel Rent Invoice# 000006', 0.00, 149500.00, 0, '1', '3', '2022-10-08 13:06:39', NULL, NULL, '1'),
(38, '000006', 'CIV', '2022-10-08', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000006', 0.00, 0.00, 0, '1', '3', '2022-10-08 13:06:39', NULL, NULL, '1'),
(39, '000006', 'CIV', '2022-10-08', '102030101', 'Customer Credit for Rent Invoice# 000006', 0.00, 149500.00, 0, '1', '3', '2022-10-08 13:06:39', NULL, NULL, '1'),
(40, '000006', 'CIV', '2022-10-08', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000006', 0.00, 0.00, 0, '1', '3', '2022-10-08 13:06:39', NULL, NULL, '1'),
(41, '000006', 'CIV', '2022-10-08', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000006', 0.00, 0.00, 0, '1', '3', '2022-10-08 13:06:39', NULL, NULL, '1'),
(42, '000007', 'CIV', '2022-10-08', '102010304', 'Cash in Card Debited For Invoice#000007', 100000.00, 0.00, 0, '1', '3', '2022-10-08 13:07:43', NULL, NULL, '1'),
(43, '000007', 'CIV', '2022-10-08', '102030101', 'Customer debit for Rent Invoice# 000007', 100000.00, 0.00, 0, '1', '3', '2022-10-08 13:07:43', NULL, NULL, '1'),
(44, '000007', 'CIV', '2022-10-08', '30301', 'Hotel Credited for Hotel Rent Invoice# 000007', 0.00, 100000.00, 0, '1', '3', '2022-10-08 13:07:43', NULL, NULL, '1'),
(45, '000007', 'CIV', '2022-10-08', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000007', 0.00, 0.00, 0, '1', '3', '2022-10-08 13:07:43', NULL, NULL, '1'),
(46, '000007', 'CIV', '2022-10-08', '102030101', 'Customer Credit for Rent Invoice# 000007', 0.00, 100000.00, 0, '1', '3', '2022-10-08 13:07:43', NULL, NULL, '1'),
(47, '000007', 'CIV', '2022-10-08', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000007', 0.00, 0.00, 0, '1', '3', '2022-10-08 13:07:43', NULL, NULL, '1'),
(48, '000007', 'CIV', '2022-10-08', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000007', 0.00, 0.00, 0, '1', '3', '2022-10-08 13:07:43', NULL, NULL, '1'),
(49, '000008', 'CIV', '2022-10-08', '1020101', 'Cash in Hand Debited For Invoice#000008', 149500.00, 0.00, 0, '1', '3', '2022-10-08 13:13:41', NULL, NULL, '1'),
(50, '000008', 'CIV', '2022-10-08', '102030101', 'Customer debit for Rent Invoice# 000008', 149500.00, 0.00, 0, '1', '3', '2022-10-08 13:13:41', NULL, NULL, '1'),
(51, '000008', 'CIV', '2022-10-08', '30301', 'Hotel Credited for Hotel Rent Invoice# 000008', 0.00, 149500.00, 0, '1', '3', '2022-10-08 13:13:41', NULL, NULL, '1'),
(52, '000008', 'CIV', '2022-10-08', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000008', 0.00, 0.00, 0, '1', '3', '2022-10-08 13:13:41', NULL, NULL, '1'),
(53, '000008', 'CIV', '2022-10-08', '102030101', 'Customer Credit for Rent Invoice# 000008', 0.00, 149500.00, 0, '1', '3', '2022-10-08 13:13:41', NULL, NULL, '1'),
(54, '000008', 'CIV', '2022-10-08', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000008', 0.00, 0.00, 0, '1', '3', '2022-10-08 13:13:41', NULL, NULL, '1'),
(55, '000008', 'CIV', '2022-10-08', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000008', 0.00, 0.00, 0, '1', '3', '2022-10-08 13:13:41', NULL, NULL, '1'),
(56, '000009', 'CIV', '2022-10-09', '1020101', 'Cash in Hand Debited For Invoice#000009', 331200.00, 0.00, 0, '1', '3', '2022-10-09 11:51:42', NULL, NULL, '1'),
(57, '000009', 'CIV', '2022-10-09', '102030101', 'Customer debit for Rent Invoice# 000009', 331200.00, 0.00, 0, '1', '3', '2022-10-09 11:51:42', NULL, NULL, '1'),
(58, '000009', 'CIV', '2022-10-09', '30301', 'Hotel Credited for Hotel Rent Invoice# 000009', 0.00, 331200.00, 0, '1', '3', '2022-10-09 11:51:42', NULL, NULL, '1'),
(59, '000009', 'CIV', '2022-10-09', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000009', 0.00, 0.00, 0, '1', '3', '2022-10-09 11:51:42', NULL, NULL, '1'),
(60, '000009', 'CIV', '2022-10-09', '102030101', 'Customer Credit for Rent Invoice# 000009', 0.00, 331200.00, 0, '1', '3', '2022-10-09 11:51:42', NULL, NULL, '1'),
(61, '000009', 'CIV', '2022-10-09', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000009', 0.00, 0.00, 0, '1', '3', '2022-10-09 11:51:42', NULL, NULL, '1'),
(62, '000009', 'CIV', '2022-10-09', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000009', 0.00, 0.00, 0, '1', '3', '2022-10-09 11:51:42', NULL, NULL, '1'),
(63, '000010', 'CIV', '2022-10-09', '102010304', 'Cash in Card Debited For Invoice#000010', 230000.00, 0.00, 0, '1', '3', '2022-10-09 11:52:53', NULL, NULL, '1'),
(64, '000010', 'CIV', '2022-10-09', '102030101', 'Customer debit for Rent Invoice# 000010', 230000.00, 0.00, 0, '1', '3', '2022-10-09 11:52:53', NULL, NULL, '1'),
(65, '000010', 'CIV', '2022-10-09', '30301', 'Hotel Credited for Hotel Rent Invoice# 000010', 0.00, 230000.00, 0, '1', '3', '2022-10-09 11:52:53', NULL, NULL, '1'),
(66, '000010', 'CIV', '2022-10-09', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000010', 0.00, 0.00, 0, '1', '3', '2022-10-09 11:52:53', NULL, NULL, '1'),
(67, '000010', 'CIV', '2022-10-09', '102030101', 'Customer Credit for Rent Invoice# 000010', 0.00, 230000.00, 0, '1', '3', '2022-10-09 11:52:53', NULL, NULL, '1'),
(68, '000010', 'CIV', '2022-10-09', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000010', 0.00, 0.00, 0, '1', '3', '2022-10-09 11:52:53', NULL, NULL, '1'),
(69, '000010', 'CIV', '2022-10-09', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000010', 0.00, 0.00, 0, '1', '3', '2022-10-09 11:52:53', NULL, NULL, '1'),
(70, '000011', 'CIV', '2022-10-09', '102010304', 'Cash in Card Debited For Invoice#000011', 150000.00, 0.00, 0, '1', '3', '2022-10-09 12:00:38', NULL, NULL, '1'),
(71, '000011', 'CIV', '2022-10-09', '102030101', 'Customer debit for Rent Invoice# 000011', 150000.00, 0.00, 0, '1', '3', '2022-10-09 12:00:38', NULL, NULL, '1'),
(72, '000011', 'CIV', '2022-10-09', '30301', 'Hotel Credited for Hotel Rent Invoice# 000011', 0.00, 150000.00, 0, '1', '3', '2022-10-09 12:00:38', NULL, NULL, '1'),
(73, '000011', 'CIV', '2022-10-09', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000011', 0.00, 0.00, 0, '1', '3', '2022-10-09 12:00:38', NULL, NULL, '1'),
(74, '000011', 'CIV', '2022-10-09', '102030101', 'Customer Credit for Rent Invoice# 000011', 0.00, 150000.00, 0, '1', '3', '2022-10-09 12:00:38', NULL, NULL, '1'),
(75, '000011', 'CIV', '2022-10-09', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000011', 0.00, 0.00, 0, '1', '3', '2022-10-09 12:00:38', NULL, NULL, '1'),
(76, '000011', 'CIV', '2022-10-09', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000011', 0.00, 0.00, 0, '1', '3', '2022-10-09 12:00:38', NULL, NULL, '1'),
(77, '000012', 'CIV', '2022-10-09', '1020101', 'Cash in Hand Debited For Invoice#000012', 331200.00, 0.00, 0, '1', '3', '2022-10-09 12:24:39', NULL, NULL, '1'),
(78, '000012', 'CIV', '2022-10-09', '102030101', 'Customer debit for Rent Invoice# 000012', 331200.00, 0.00, 0, '1', '3', '2022-10-09 12:24:39', NULL, NULL, '1'),
(79, '000012', 'CIV', '2022-10-09', '30301', 'Hotel Credited for Hotel Rent Invoice# 000012', 0.00, 331200.00, 0, '1', '3', '2022-10-09 12:24:39', NULL, NULL, '1'),
(80, '000012', 'CIV', '2022-10-09', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000012', 0.00, 0.00, 0, '1', '3', '2022-10-09 12:24:39', NULL, NULL, '1'),
(81, '000012', 'CIV', '2022-10-09', '102030101', 'Customer Credit for Rent Invoice# 000012', 0.00, 331200.00, 0, '1', '3', '2022-10-09 12:24:39', NULL, NULL, '1'),
(82, '000012', 'CIV', '2022-10-09', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000012', 0.00, 0.00, 0, '1', '3', '2022-10-09 12:24:39', NULL, NULL, '1'),
(83, '000012', 'CIV', '2022-10-09', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000012', 0.00, 0.00, 0, '1', '3', '2022-10-09 12:24:39', NULL, NULL, '1'),
(84, '000013', 'CIV', '2022-10-09', '1020101', 'Cash in Hand Debited For Invoice#000013', 100000.00, 0.00, 0, '1', '3', '2022-10-09 12:31:47', NULL, NULL, '1'),
(85, '000013', 'CIV', '2022-10-09', '102030101', 'Customer debit for Rent Invoice# 000013', 100000.00, 0.00, 0, '1', '3', '2022-10-09 12:31:47', NULL, NULL, '1'),
(86, '000013', 'CIV', '2022-10-09', '30301', 'Hotel Credited for Hotel Rent Invoice# 000013', 0.00, 100000.00, 0, '1', '3', '2022-10-09 12:31:47', NULL, NULL, '1'),
(87, '000013', 'CIV', '2022-10-09', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000013', 0.00, 0.00, 0, '1', '3', '2022-10-09 12:31:47', NULL, NULL, '1'),
(88, '000013', 'CIV', '2022-10-09', '102030101', 'Customer Credit for Rent Invoice# 000013', 0.00, 100000.00, 0, '1', '3', '2022-10-09 12:31:47', NULL, NULL, '1'),
(89, '000013', 'CIV', '2022-10-09', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000013', 0.00, 0.00, 0, '1', '3', '2022-10-09 12:31:47', NULL, NULL, '1'),
(90, '000013', 'CIV', '2022-10-09', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000013', 0.00, 0.00, 0, '1', '3', '2022-10-09 12:31:47', NULL, NULL, '1'),
(91, '000014', 'CIV', '2022-10-09', '1020101', 'Cash in Hand Debited For Invoice#000014', 120000.00, 0.00, 0, '1', '3', '2022-10-09 12:32:50', NULL, NULL, '1'),
(92, '000014', 'CIV', '2022-10-09', '102030101', 'Customer debit for Rent Invoice# 000014', 120000.00, 0.00, 0, '1', '3', '2022-10-09 12:32:50', NULL, NULL, '1'),
(93, '000014', 'CIV', '2022-10-09', '30301', 'Hotel Credited for Hotel Rent Invoice# 000014', 0.00, 120000.00, 0, '1', '3', '2022-10-09 12:32:50', NULL, NULL, '1'),
(94, '000014', 'CIV', '2022-10-09', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000014', 0.00, 0.00, 0, '1', '3', '2022-10-09 12:32:50', NULL, NULL, '1'),
(95, '000014', 'CIV', '2022-10-09', '102030101', 'Customer Credit for Rent Invoice# 000014', 0.00, 120000.00, 0, '1', '3', '2022-10-09 12:32:50', NULL, NULL, '1'),
(96, '000014', 'CIV', '2022-10-09', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000014', 0.00, 0.00, 0, '1', '3', '2022-10-09 12:32:50', NULL, NULL, '1'),
(97, '000014', 'CIV', '2022-10-09', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000014', 0.00, 0.00, 0, '1', '3', '2022-10-09 12:32:50', NULL, NULL, '1'),
(98, '000015', 'CIV', '2022-10-09', '1020101', 'Cash in Hand Debited For Invoice#000015', 100000.00, 0.00, 0, '1', '3', '2022-10-09 12:36:12', NULL, NULL, '1'),
(99, '000015', 'CIV', '2022-10-09', '102030101', 'Customer debit for Rent Invoice# 000015', 100000.00, 0.00, 0, '1', '3', '2022-10-09 12:36:12', NULL, NULL, '1'),
(100, '000015', 'CIV', '2022-10-09', '30301', 'Hotel Credited for Hotel Rent Invoice# 000015', 0.00, 100000.00, 0, '1', '3', '2022-10-09 12:36:12', NULL, NULL, '1'),
(101, '000015', 'CIV', '2022-10-09', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000015', 0.00, 0.00, 0, '1', '3', '2022-10-09 12:36:12', NULL, NULL, '1'),
(102, '000015', 'CIV', '2022-10-09', '102030101', 'Customer Credit for Rent Invoice# 000015', 0.00, 100000.00, 0, '1', '3', '2022-10-09 12:36:12', NULL, NULL, '1'),
(103, '000015', 'CIV', '2022-10-09', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000015', 0.00, 0.00, 0, '1', '3', '2022-10-09 12:36:12', NULL, NULL, '1'),
(104, '000015', 'CIV', '2022-10-09', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000015', 0.00, 0.00, 0, '1', '3', '2022-10-09 12:36:12', NULL, NULL, '1'),
(105, '000016', 'CIV', '2022-10-09', '102010304', 'Cash in Card Debited For Invoice#000016', 210000.00, 0.00, 0, '1', '3', '2022-10-09 12:36:53', NULL, NULL, '1'),
(106, '000016', 'CIV', '2022-10-09', '102030101', 'Customer debit for Rent Invoice# 000016', 210000.00, 0.00, 0, '1', '3', '2022-10-09 12:36:53', NULL, NULL, '1'),
(107, '000016', 'CIV', '2022-10-09', '30301', 'Hotel Credited for Hotel Rent Invoice# 000016', 0.00, 210000.00, 0, '1', '3', '2022-10-09 12:36:53', NULL, NULL, '1'),
(108, '000016', 'CIV', '2022-10-09', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000016', 0.00, 0.00, 0, '1', '3', '2022-10-09 12:36:53', NULL, NULL, '1'),
(109, '000016', 'CIV', '2022-10-09', '102030101', 'Customer Credit for Rent Invoice# 000016', 0.00, 210000.00, 0, '1', '3', '2022-10-09 12:36:53', NULL, NULL, '1'),
(110, '000016', 'CIV', '2022-10-09', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000016', 0.00, 0.00, 0, '1', '3', '2022-10-09 12:36:53', NULL, NULL, '1'),
(111, '000016', 'CIV', '2022-10-09', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000016', 0.00, 0.00, 0, '1', '3', '2022-10-09 12:36:53', NULL, NULL, '1'),
(112, '000017', 'CIV', '2022-10-09', '102010304', 'Cash in Card Debited For Invoice#000017', 100000.00, 0.00, 0, '1', '3', '2022-10-09 12:37:33', NULL, NULL, '1'),
(113, '000017', 'CIV', '2022-10-09', '102030101', 'Customer debit for Rent Invoice# 000017', 100000.00, 0.00, 0, '1', '3', '2022-10-09 12:37:33', NULL, NULL, '1'),
(114, '000017', 'CIV', '2022-10-09', '30301', 'Hotel Credited for Hotel Rent Invoice# 000017', 0.00, 100000.00, 0, '1', '3', '2022-10-09 12:37:33', NULL, NULL, '1'),
(115, '000017', 'CIV', '2022-10-09', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000017', 0.00, 0.00, 0, '1', '3', '2022-10-09 12:37:33', NULL, NULL, '1'),
(116, '000017', 'CIV', '2022-10-09', '102030101', 'Customer Credit for Rent Invoice# 000017', 0.00, 100000.00, 0, '1', '3', '2022-10-09 12:37:33', NULL, NULL, '1'),
(117, '000017', 'CIV', '2022-10-09', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000017', 0.00, 0.00, 0, '1', '3', '2022-10-09 12:37:33', NULL, NULL, '1'),
(118, '000017', 'CIV', '2022-10-09', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000017', 0.00, 0.00, 0, '1', '3', '2022-10-09 12:37:33', NULL, NULL, '1'),
(119, '000018', 'CIV', '2022-10-09', '1020101', 'Cash in Hand Debited For Invoice#000018', 80000.00, 0.00, 0, '1', '3', '2022-10-09 12:38:10', NULL, NULL, '1'),
(120, '000018', 'CIV', '2022-10-09', '102030101', 'Customer debit for Rent Invoice# 000018', 80000.00, 0.00, 0, '1', '3', '2022-10-09 12:38:10', NULL, NULL, '1'),
(121, '000018', 'CIV', '2022-10-09', '30301', 'Hotel Credited for Hotel Rent Invoice# 000018', 0.00, 80000.00, 0, '1', '3', '2022-10-09 12:38:10', NULL, NULL, '1'),
(122, '000018', 'CIV', '2022-10-09', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000018', 0.00, 0.00, 0, '1', '3', '2022-10-09 12:38:10', NULL, NULL, '1'),
(123, '000018', 'CIV', '2022-10-09', '102030101', 'Customer Credit for Rent Invoice# 000018', 0.00, 80000.00, 0, '1', '3', '2022-10-09 12:38:10', NULL, NULL, '1'),
(124, '000018', 'CIV', '2022-10-09', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000018', 0.00, 0.00, 0, '1', '3', '2022-10-09 12:38:10', NULL, NULL, '1'),
(125, '000018', 'CIV', '2022-10-09', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000018', 0.00, 0.00, 0, '1', '3', '2022-10-09 12:38:10', NULL, NULL, '1'),
(126, '000019', 'CIV', '2022-10-09', '102010304', 'Cash in Card Debited For Invoice#000019', 100000.00, 0.00, 0, '1', '3', '2022-10-09 12:42:58', NULL, NULL, '1'),
(127, '000019', 'CIV', '2022-10-09', '102030101', 'Customer debit for Rent Invoice# 000019', 100000.00, 0.00, 0, '1', '3', '2022-10-09 12:42:58', NULL, NULL, '1'),
(128, '000019', 'CIV', '2022-10-09', '30301', 'Hotel Credited for Hotel Rent Invoice# 000019', 0.00, 100000.00, 0, '1', '3', '2022-10-09 12:42:58', NULL, NULL, '1'),
(129, '000019', 'CIV', '2022-10-09', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000019', 0.00, 0.00, 0, '1', '3', '2022-10-09 12:42:58', NULL, NULL, '1'),
(130, '000019', 'CIV', '2022-10-09', '102030101', 'Customer Credit for Rent Invoice# 000019', 0.00, 100000.00, 0, '1', '3', '2022-10-09 12:42:58', NULL, NULL, '1'),
(131, '000019', 'CIV', '2022-10-09', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000019', 0.00, 0.00, 0, '1', '3', '2022-10-09 12:42:58', NULL, NULL, '1'),
(132, '000019', 'CIV', '2022-10-09', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000019', 0.00, 0.00, 0, '1', '3', '2022-10-09 12:42:58', NULL, NULL, '1'),
(133, '000020', 'CIV', '2022-10-09', '102010304', 'Cash in Card Debited For Invoice#000020', 80000.00, 0.00, 0, '1', '3', '2022-10-09 12:43:25', NULL, NULL, '1'),
(134, '000020', 'CIV', '2022-10-09', '102030101', 'Customer debit for Rent Invoice# 000020', 80000.00, 0.00, 0, '1', '3', '2022-10-09 12:43:25', NULL, NULL, '1'),
(135, '000020', 'CIV', '2022-10-09', '30301', 'Hotel Credited for Hotel Rent Invoice# 000020', 0.00, 80000.00, 0, '1', '3', '2022-10-09 12:43:25', NULL, NULL, '1'),
(136, '000020', 'CIV', '2022-10-09', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000020', 0.00, 0.00, 0, '1', '3', '2022-10-09 12:43:25', NULL, NULL, '1'),
(137, '000020', 'CIV', '2022-10-09', '102030101', 'Customer Credit for Rent Invoice# 000020', 0.00, 80000.00, 0, '1', '3', '2022-10-09 12:43:25', NULL, NULL, '1'),
(138, '000020', 'CIV', '2022-10-09', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000020', 0.00, 0.00, 0, '1', '3', '2022-10-09 12:43:25', NULL, NULL, '1'),
(139, '000020', 'CIV', '2022-10-09', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000020', 0.00, 0.00, 0, '1', '3', '2022-10-09 12:43:25', NULL, NULL, '1'),
(140, '000021', 'CIV', '2022-10-10', '1020101', 'Cash in Hand Debited For Invoice#000021', 150000.00, 0.00, 0, '1', '2', '2022-10-10 12:19:09', NULL, NULL, '1'),
(141, '000021', 'CIV', '2022-10-10', '102030101', 'Customer debit for Rent Invoice# 000021', 150000.00, 0.00, 0, '1', '2', '2022-10-10 12:19:09', NULL, NULL, '1'),
(142, '000021', 'CIV', '2022-10-10', '30301', 'Hotel Credited for Hotel Rent Invoice# 000021', 0.00, 150000.00, 0, '1', '2', '2022-10-10 12:19:09', NULL, NULL, '1'),
(143, '000021', 'CIV', '2022-10-10', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000021', 0.00, 0.00, 0, '1', '2', '2022-10-10 12:19:09', NULL, NULL, '1'),
(144, '000021', 'CIV', '2022-10-10', '102030101', 'Customer Credit for Rent Invoice# 000021', 0.00, 150000.00, 0, '1', '2', '2022-10-10 12:19:09', NULL, NULL, '1'),
(145, '000021', 'CIV', '2022-10-10', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000021', 0.00, 0.00, 0, '1', '2', '2022-10-10 12:19:09', NULL, NULL, '1'),
(146, '000021', 'CIV', '2022-10-10', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000021', 0.00, 0.00, 0, '1', '2', '2022-10-10 12:19:09', NULL, NULL, '1'),
(147, '000022', 'CIV', '2022-10-10', '1020101', 'Cash in Hand Debited For Invoice#000022', 150000.00, 0.00, 0, '1', '2', '2022-10-10 12:19:45', NULL, NULL, '1'),
(148, '000022', 'CIV', '2022-10-10', '102030101', 'Customer debit for Rent Invoice# 000022', 150000.00, 0.00, 0, '1', '2', '2022-10-10 12:19:45', NULL, NULL, '1'),
(149, '000022', 'CIV', '2022-10-10', '30301', 'Hotel Credited for Hotel Rent Invoice# 000022', 0.00, 150000.00, 0, '1', '2', '2022-10-10 12:19:45', NULL, NULL, '1'),
(150, '000022', 'CIV', '2022-10-10', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000022', 0.00, 0.00, 0, '1', '2', '2022-10-10 12:19:45', NULL, NULL, '1'),
(151, '000022', 'CIV', '2022-10-10', '102030101', 'Customer Credit for Rent Invoice# 000022', 0.00, 150000.00, 0, '1', '2', '2022-10-10 12:19:45', NULL, NULL, '1'),
(152, '000022', 'CIV', '2022-10-10', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000022', 0.00, 0.00, 0, '1', '2', '2022-10-10 12:19:45', NULL, NULL, '1'),
(153, '000022', 'CIV', '2022-10-10', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000022', 0.00, 0.00, 0, '1', '2', '2022-10-10 12:19:45', NULL, NULL, '1'),
(154, '000023', 'CIV', '2022-10-10', '1020101', 'Cash in Hand Debited For Invoice#000023', 300000.00, 0.00, 0, '1', '2', '2022-10-10 12:20:30', NULL, NULL, '1'),
(155, '000023', 'CIV', '2022-10-10', '102030101', 'Customer debit for Rent Invoice# 000023', 300000.00, 0.00, 0, '1', '2', '2022-10-10 12:20:30', NULL, NULL, '1'),
(156, '000023', 'CIV', '2022-10-10', '30301', 'Hotel Credited for Hotel Rent Invoice# 000023', 0.00, 300000.00, 0, '1', '2', '2022-10-10 12:20:30', NULL, NULL, '1'),
(157, '000023', 'CIV', '2022-10-10', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000023', 0.00, 0.00, 0, '1', '2', '2022-10-10 12:20:30', NULL, NULL, '1'),
(158, '000023', 'CIV', '2022-10-10', '102030101', 'Customer Credit for Rent Invoice# 000023', 0.00, 300000.00, 0, '1', '2', '2022-10-10 12:20:30', NULL, NULL, '1'),
(159, '000023', 'CIV', '2022-10-10', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000023', 0.00, 0.00, 0, '1', '2', '2022-10-10 12:20:30', NULL, NULL, '1'),
(160, '000023', 'CIV', '2022-10-10', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000023', 0.00, 0.00, 0, '1', '2', '2022-10-10 12:20:30', NULL, NULL, '1'),
(161, '000024', 'CIV', '2022-10-10', '1020101', 'Cash in Hand Debited For Invoice#000024', 130000.00, 0.00, 0, '1', '2', '2022-10-10 12:20:59', NULL, NULL, '1'),
(162, '000024', 'CIV', '2022-10-10', '102030101', 'Customer debit for Rent Invoice# 000024', 130000.00, 0.00, 0, '1', '2', '2022-10-10 12:20:59', NULL, NULL, '1'),
(163, '000024', 'CIV', '2022-10-10', '30301', 'Hotel Credited for Hotel Rent Invoice# 000024', 0.00, 130000.00, 0, '1', '2', '2022-10-10 12:20:59', NULL, NULL, '1'),
(164, '000024', 'CIV', '2022-10-10', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000024', 0.00, 0.00, 0, '1', '2', '2022-10-10 12:20:59', NULL, NULL, '1'),
(165, '000024', 'CIV', '2022-10-10', '102030101', 'Customer Credit for Rent Invoice# 000024', 0.00, 130000.00, 0, '1', '2', '2022-10-10 12:20:59', NULL, NULL, '1'),
(166, '000024', 'CIV', '2022-10-10', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000024', 0.00, 0.00, 0, '1', '2', '2022-10-10 12:20:59', NULL, NULL, '1'),
(167, '000024', 'CIV', '2022-10-10', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000024', 0.00, 0.00, 0, '1', '2', '2022-10-10 12:20:59', NULL, NULL, '1'),
(168, '000025', 'CIV', '2022-10-10', '1020101', 'Cash in Hand Debited For Invoice#000025', 100000.00, 0.00, 0, '1', '2', '2022-10-10 12:21:30', NULL, NULL, '1'),
(169, '000025', 'CIV', '2022-10-10', '102030101', 'Customer debit for Rent Invoice# 000025', 100000.00, 0.00, 0, '1', '2', '2022-10-10 12:21:30', NULL, NULL, '1'),
(170, '000025', 'CIV', '2022-10-10', '30301', 'Hotel Credited for Hotel Rent Invoice# 000025', 0.00, 100000.00, 0, '1', '2', '2022-10-10 12:21:30', NULL, NULL, '1'),
(171, '000025', 'CIV', '2022-10-10', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000025', 0.00, 0.00, 0, '1', '2', '2022-10-10 12:21:30', NULL, NULL, '1'),
(172, '000025', 'CIV', '2022-10-10', '102030101', 'Customer Credit for Rent Invoice# 000025', 0.00, 100000.00, 0, '1', '2', '2022-10-10 12:21:30', NULL, NULL, '1'),
(173, '000025', 'CIV', '2022-10-10', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000025', 0.00, 0.00, 0, '1', '2', '2022-10-10 12:21:30', NULL, NULL, '1'),
(174, '000025', 'CIV', '2022-10-10', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000025', 0.00, 0.00, 0, '1', '2', '2022-10-10 12:21:30', NULL, NULL, '1'),
(175, '000026', 'CIV', '2022-10-10', '1020101', 'Cash in Hand Debited For Invoice#000026', 160000.00, 0.00, 0, '1', '2', '2022-10-10 12:21:48', NULL, NULL, '1'),
(176, '000026', 'CIV', '2022-10-10', '102030101', 'Customer debit for Rent Invoice# 000026', 160000.00, 0.00, 0, '1', '2', '2022-10-10 12:21:48', NULL, NULL, '1'),
(177, '000026', 'CIV', '2022-10-10', '30301', 'Hotel Credited for Hotel Rent Invoice# 000026', 0.00, 160000.00, 0, '1', '2', '2022-10-10 12:21:48', NULL, NULL, '1'),
(178, '000026', 'CIV', '2022-10-10', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000026', 0.00, 0.00, 0, '1', '2', '2022-10-10 12:21:48', NULL, NULL, '1'),
(179, '000026', 'CIV', '2022-10-10', '102030101', 'Customer Credit for Rent Invoice# 000026', 0.00, 160000.00, 0, '1', '2', '2022-10-10 12:21:48', NULL, NULL, '1'),
(180, '000026', 'CIV', '2022-10-10', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000026', 0.00, 0.00, 0, '1', '2', '2022-10-10 12:21:48', NULL, NULL, '1'),
(181, '000026', 'CIV', '2022-10-10', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000026', 0.00, 0.00, 0, '1', '2', '2022-10-10 12:21:48', NULL, NULL, '1'),
(182, '000027', 'CIV', '2022-10-10', '102010304', 'Cash in Card Debited For Invoice#000027', 70000.00, 0.00, 0, '1', '2', '2022-10-10 12:22:33', NULL, NULL, '1'),
(183, '000027', 'CIV', '2022-10-10', '102030101', 'Customer debit for Rent Invoice# 000027', 70000.00, 0.00, 0, '1', '2', '2022-10-10 12:22:33', NULL, NULL, '1'),
(184, '000027', 'CIV', '2022-10-10', '30301', 'Hotel Credited for Hotel Rent Invoice# 000027', 0.00, 70000.00, 0, '1', '2', '2022-10-10 12:22:33', NULL, NULL, '1'),
(185, '000027', 'CIV', '2022-10-10', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000027', 0.00, 0.00, 0, '1', '2', '2022-10-10 12:22:33', NULL, NULL, '1'),
(186, '000027', 'CIV', '2022-10-10', '102030101', 'Customer Credit for Rent Invoice# 000027', 0.00, 70000.00, 0, '1', '2', '2022-10-10 12:22:33', NULL, NULL, '1'),
(187, '000027', 'CIV', '2022-10-10', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000027', 0.00, 0.00, 0, '1', '2', '2022-10-10 12:22:33', NULL, NULL, '1'),
(188, '000027', 'CIV', '2022-10-10', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000027', 0.00, 0.00, 0, '1', '2', '2022-10-10 12:22:33', NULL, NULL, '1'),
(189, '000028', 'CIV', '2022-10-11', '1020101', 'Cash in Hand Debited For Invoice#000028', 100000.00, 0.00, 0, '1', '2', '2022-10-11 09:49:02', NULL, NULL, '1'),
(190, '000028', 'CIV', '2022-10-11', '102030101', 'Customer debit for Rent Invoice# 000028', 100000.00, 0.00, 0, '1', '2', '2022-10-11 09:49:02', NULL, NULL, '1'),
(191, '000028', 'CIV', '2022-10-11', '30301', 'Hotel Credited for Hotel Rent Invoice# 000028', 0.00, 100000.00, 0, '1', '2', '2022-10-11 09:49:02', NULL, NULL, '1'),
(192, '000028', 'CIV', '2022-10-11', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000028', 0.00, 0.00, 0, '1', '2', '2022-10-11 09:49:02', NULL, NULL, '1'),
(193, '000028', 'CIV', '2022-10-11', '102030101', 'Customer Credit for Rent Invoice# 000028', 0.00, 100000.00, 0, '1', '2', '2022-10-11 09:49:02', NULL, NULL, '1'),
(194, '000028', 'CIV', '2022-10-11', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000028', 0.00, 0.00, 0, '1', '2', '2022-10-11 09:49:02', NULL, NULL, '1'),
(195, '000028', 'CIV', '2022-10-11', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000028', 0.00, 0.00, 0, '1', '2', '2022-10-11 09:49:02', NULL, NULL, '1'),
(196, '000029', 'CIV', '2022-10-11', '102030101', 'Customer debit for Rent Invoice# 000029', 260000.00, 0.00, 0, '1', '2', '2022-10-11 11:32:15', NULL, NULL, '1'),
(197, '000029', 'CIV', '2022-10-11', '30301', 'Hotel Credited for Hotel Rent Invoice# 000029', 0.00, 260000.00, 0, '1', '2', '2022-10-11 11:32:15', NULL, NULL, '1'),
(198, '000029', 'CIV', '2022-10-11', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000029', 0.00, 0.00, 0, '1', '2', '2022-10-11 11:32:15', NULL, NULL, '1'),
(199, '000029', 'CIV', '2022-10-11', '102030101', 'Customer Credit for Rent Invoice# 000029', 0.00, 260000.00, 0, '1', '2', '2022-10-11 11:32:15', NULL, NULL, '1'),
(200, '000029', 'CIV', '2022-10-11', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000029', 0.00, 0.00, 0, '1', '2', '2022-10-11 11:32:15', NULL, NULL, '1'),
(201, '000029', 'CIV', '2022-10-11', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000029', 0.00, 0.00, 0, '1', '2', '2022-10-11 11:32:15', NULL, NULL, '1'),
(202, '000030', 'CIV', '2022-10-11', '1020101', 'Cash in Hand Debited For Invoice#000030', 150000.00, 0.00, 0, '1', '3', '2022-10-11 11:54:52', NULL, NULL, '1'),
(203, '000030', 'CIV', '2022-10-11', '102030101', 'Customer debit for Rent Invoice# 000030', 150000.00, 0.00, 0, '1', '3', '2022-10-11 11:54:52', NULL, NULL, '1'),
(204, '000030', 'CIV', '2022-10-11', '30301', 'Hotel Credited for Hotel Rent Invoice# 000030', 0.00, 150000.00, 0, '1', '3', '2022-10-11 11:54:52', NULL, NULL, '1'),
(205, '000030', 'CIV', '2022-10-11', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000030', 0.00, 0.00, 0, '1', '3', '2022-10-11 11:54:52', NULL, NULL, '1'),
(206, '000030', 'CIV', '2022-10-11', '102030101', 'Customer Credit for Rent Invoice# 000030', 0.00, 150000.00, 0, '1', '3', '2022-10-11 11:54:52', NULL, NULL, '1'),
(207, '000030', 'CIV', '2022-10-11', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000030', 0.00, 0.00, 0, '1', '3', '2022-10-11 11:54:52', NULL, NULL, '1'),
(208, '000030', 'CIV', '2022-10-11', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000030', 0.00, 0.00, 0, '1', '3', '2022-10-11 11:54:52', NULL, NULL, '1'),
(209, '000031', 'CIV', '2022-10-11', '1020101', 'Cash in Hand Debited For Invoice#000031', 150000.00, 0.00, 0, '1', '3', '2022-10-11 12:06:11', NULL, NULL, '1'),
(210, '000031', 'CIV', '2022-10-11', '102030101', 'Customer debit for Rent Invoice# 000031', 150000.00, 0.00, 0, '1', '3', '2022-10-11 12:06:11', NULL, NULL, '1'),
(211, '000031', 'CIV', '2022-10-11', '30301', 'Hotel Credited for Hotel Rent Invoice# 000031', 0.00, 150000.00, 0, '1', '3', '2022-10-11 12:06:11', NULL, NULL, '1'),
(212, '000031', 'CIV', '2022-10-11', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000031', 0.00, 0.00, 0, '1', '3', '2022-10-11 12:06:11', NULL, NULL, '1'),
(213, '000031', 'CIV', '2022-10-11', '102030101', 'Customer Credit for Rent Invoice# 000031', 0.00, 150000.00, 0, '1', '3', '2022-10-11 12:06:11', NULL, NULL, '1'),
(214, '000031', 'CIV', '2022-10-11', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000031', 0.00, 0.00, 0, '1', '3', '2022-10-11 12:06:11', NULL, NULL, '1'),
(215, '000031', 'CIV', '2022-10-11', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000031', 0.00, 0.00, 0, '1', '3', '2022-10-11 12:06:11', NULL, NULL, '1'),
(216, '000032', 'CIV', '2022-10-11', '1020101', 'Cash in Hand Debited For Invoice#000032', 120000.00, 0.00, 0, '1', '3', '2022-10-11 12:08:12', NULL, NULL, '1'),
(217, '000032', 'CIV', '2022-10-11', '102030101', 'Customer debit for Rent Invoice# 000032', 120000.00, 0.00, 0, '1', '3', '2022-10-11 12:08:12', NULL, NULL, '1'),
(218, '000032', 'CIV', '2022-10-11', '30301', 'Hotel Credited for Hotel Rent Invoice# 000032', 0.00, 120000.00, 0, '1', '3', '2022-10-11 12:08:12', NULL, NULL, '1'),
(219, '000032', 'CIV', '2022-10-11', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000032', 0.00, 0.00, 0, '1', '3', '2022-10-11 12:08:12', NULL, NULL, '1'),
(220, '000032', 'CIV', '2022-10-11', '102030101', 'Customer Credit for Rent Invoice# 000032', 0.00, 120000.00, 0, '1', '3', '2022-10-11 12:08:12', NULL, NULL, '1'),
(221, '000032', 'CIV', '2022-10-11', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000032', 0.00, 0.00, 0, '1', '3', '2022-10-11 12:08:12', NULL, NULL, '1'),
(222, '000032', 'CIV', '2022-10-11', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000032', 0.00, 0.00, 0, '1', '3', '2022-10-11 12:08:12', NULL, NULL, '1'),
(223, '000033', 'CIV', '2022-10-11', '1020101', 'Cash in Hand Debited For Invoice#000033', 184000.00, 0.00, 0, '1', '3', '2022-10-11 12:12:24', NULL, NULL, '1'),
(224, '000033', 'CIV', '2022-10-11', '102030101', 'Customer debit for Rent Invoice# 000033', 184000.00, 0.00, 0, '1', '3', '2022-10-11 12:12:24', NULL, NULL, '1'),
(225, '000033', 'CIV', '2022-10-11', '30301', 'Hotel Credited for Hotel Rent Invoice# 000033', 0.00, 184000.00, 0, '1', '3', '2022-10-11 12:12:24', NULL, NULL, '1'),
(226, '000033', 'CIV', '2022-10-11', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000033', 0.00, 0.00, 0, '1', '3', '2022-10-11 12:12:24', NULL, NULL, '1'),
(227, '000033', 'CIV', '2022-10-11', '102030101', 'Customer Credit for Rent Invoice# 000033', 0.00, 184000.00, 0, '1', '3', '2022-10-11 12:12:24', NULL, NULL, '1'),
(228, '000033', 'CIV', '2022-10-11', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000033', 0.00, 0.00, 0, '1', '3', '2022-10-11 12:12:24', NULL, NULL, '1'),
(229, '000033', 'CIV', '2022-10-11', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000033', 0.00, 0.00, 0, '1', '3', '2022-10-11 12:12:24', NULL, NULL, '1'),
(230, '000034', 'CIV', '2022-10-11', '102010304', 'Cash in Card Debited For Invoice#000034', 496800.00, 0.00, 0, '1', '3', '2022-10-11 12:13:15', NULL, NULL, '1'),
(231, '000034', 'CIV', '2022-10-11', '102030101', 'Customer debit for Rent Invoice# 000034', 496800.00, 0.00, 0, '1', '3', '2022-10-11 12:13:15', NULL, NULL, '1'),
(232, '000034', 'CIV', '2022-10-11', '30301', 'Hotel Credited for Hotel Rent Invoice# 000034', 0.00, 496800.00, 0, '1', '3', '2022-10-11 12:13:15', NULL, NULL, '1'),
(233, '000034', 'CIV', '2022-10-11', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000034', 0.00, 0.00, 0, '1', '3', '2022-10-11 12:13:15', NULL, NULL, '1'),
(234, '000034', 'CIV', '2022-10-11', '102030101', 'Customer Credit for Rent Invoice# 000034', 0.00, 496800.00, 0, '1', '3', '2022-10-11 12:13:15', NULL, NULL, '1'),
(235, '000034', 'CIV', '2022-10-11', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000034', 0.00, 0.00, 0, '1', '3', '2022-10-11 12:13:15', NULL, NULL, '1'),
(236, '000034', 'CIV', '2022-10-11', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000034', 0.00, 0.00, 0, '1', '3', '2022-10-11 12:13:15', NULL, NULL, '1'),
(237, '000035', 'CIV', '2022-10-11', '102030101', 'Customer debit for Rent Invoice# 000035', 100000.00, 0.00, 0, '1', '3', '2022-10-11 12:25:19', NULL, NULL, '1'),
(238, '000035', 'CIV', '2022-10-11', '30301', 'Hotel Credited for Hotel Rent Invoice# 000035', 0.00, 100000.00, 0, '1', '3', '2022-10-11 12:25:19', NULL, NULL, '1'),
(239, '000035', 'CIV', '2022-10-11', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000035', 0.00, 0.00, 0, '1', '3', '2022-10-11 12:25:19', NULL, NULL, '1'),
(240, '000035', 'CIV', '2022-10-11', '102030101', 'Customer Credit for Rent Invoice# 000035', 0.00, 100000.00, 0, '1', '3', '2022-10-11 12:25:19', NULL, NULL, '1'),
(241, '000035', 'CIV', '2022-10-11', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000035', 0.00, 0.00, 0, '1', '3', '2022-10-11 12:25:19', NULL, NULL, '1'),
(242, '000035', 'CIV', '2022-10-11', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000035', 0.00, 0.00, 0, '1', '3', '2022-10-11 12:25:19', NULL, NULL, '1'),
(243, '000036', 'CIV', '2022-10-11', '102030101', 'Customer debit for Rent Invoice# 000036', 100000.00, 0.00, 0, '1', '3', '2022-10-11 12:25:21', NULL, NULL, '1'),
(244, '000036', 'CIV', '2022-10-11', '30301', 'Hotel Credited for Hotel Rent Invoice# 000036', 0.00, 100000.00, 0, '1', '3', '2022-10-11 12:25:21', NULL, NULL, '1'),
(245, '000036', 'CIV', '2022-10-11', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000036', 0.00, 0.00, 0, '1', '3', '2022-10-11 12:25:21', NULL, NULL, '1'),
(246, '000036', 'CIV', '2022-10-11', '102030101', 'Customer Credit for Rent Invoice# 000036', 0.00, 100000.00, 0, '1', '3', '2022-10-11 12:25:21', NULL, NULL, '1'),
(247, '000036', 'CIV', '2022-10-11', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000036', 0.00, 0.00, 0, '1', '3', '2022-10-11 12:25:21', NULL, NULL, '1'),
(248, '000036', 'CIV', '2022-10-11', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000036', 0.00, 0.00, 0, '1', '3', '2022-10-11 12:25:21', NULL, NULL, '1'),
(249, '000037', 'CIV', '2022-10-11', '102030101', 'Customer debit for Rent Invoice# 000037', 331200.00, 0.00, 0, '1', '3', '2022-10-11 13:08:58', NULL, NULL, '1'),
(250, '000037', 'CIV', '2022-10-11', '30301', 'Hotel Credited for Hotel Rent Invoice# 000037', 0.00, 331200.00, 0, '1', '3', '2022-10-11 13:08:58', NULL, NULL, '1'),
(251, '000037', 'CIV', '2022-10-11', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000037', 0.00, 0.00, 0, '1', '3', '2022-10-11 13:08:58', NULL, NULL, '1'),
(252, '000037', 'CIV', '2022-10-11', '102030101', 'Customer Credit for Rent Invoice# 000037', 0.00, 331200.00, 0, '1', '3', '2022-10-11 13:08:58', NULL, NULL, '1'),
(253, '000037', 'CIV', '2022-10-11', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000037', 0.00, 0.00, 0, '1', '3', '2022-10-11 13:08:58', NULL, NULL, '1'),
(254, '000037', 'CIV', '2022-10-11', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000037', 0.00, 0.00, 0, '1', '3', '2022-10-11 13:08:58', NULL, NULL, '1'),
(255, '000038', 'CIV', '2022-10-12', '1020101', 'Cash in Hand Debited For Invoice#000038', 230000.00, 0.00, 0, '1', '1', '2022-10-12 20:30:37', NULL, NULL, '1'),
(256, '000038', 'CIV', '2022-10-12', '102030101', 'Customer debit for Rent Invoice# 000038', 230000.00, 0.00, 0, '1', '1', '2022-10-12 20:30:37', NULL, NULL, '1'),
(257, '000038', 'CIV', '2022-10-12', '30301', 'Hotel Credited for Hotel Rent Invoice# 000038', 0.00, 230000.00, 0, '1', '1', '2022-10-12 20:30:37', NULL, NULL, '1'),
(258, '000038', 'CIV', '2022-10-12', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000038', 0.00, 0.00, 0, '1', '1', '2022-10-12 20:30:37', NULL, NULL, '1'),
(259, '000038', 'CIV', '2022-10-12', '102030101', 'Customer Credit for Rent Invoice# 000038', 0.00, 230000.00, 0, '1', '1', '2022-10-12 20:30:37', NULL, NULL, '1'),
(260, '000038', 'CIV', '2022-10-12', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000038', 0.00, 0.00, 0, '1', '1', '2022-10-12 20:30:37', NULL, NULL, '1'),
(261, '000038', 'CIV', '2022-10-12', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000038', 0.00, 0.00, 0, '1', '1', '2022-10-12 20:30:37', NULL, NULL, '1'),
(262, '000039', 'CIV', '2022-10-12', '102010304', 'Cash in Card Debited For Invoice#000039', 1300000.00, 0.00, 0, '1', '1', '2022-10-12 20:32:14', NULL, NULL, '1'),
(263, '000039', 'CIV', '2022-10-12', '102030101', 'Customer debit for Rent Invoice# 000039', 1300000.00, 0.00, 0, '1', '1', '2022-10-12 20:32:14', NULL, NULL, '1'),
(264, '000039', 'CIV', '2022-10-12', '30301', 'Hotel Credited for Hotel Rent Invoice# 000039', 0.00, 1300000.00, 0, '1', '1', '2022-10-12 20:32:14', NULL, NULL, '1'),
(265, '000039', 'CIV', '2022-10-12', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000039', 0.00, 0.00, 0, '1', '1', '2022-10-12 20:32:14', NULL, NULL, '1'),
(266, '000039', 'CIV', '2022-10-12', '102030101', 'Customer Credit for Rent Invoice# 000039', 0.00, 1300000.00, 0, '1', '1', '2022-10-12 20:32:14', NULL, NULL, '1'),
(267, '000039', 'CIV', '2022-10-12', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000039', 0.00, 0.00, 0, '1', '1', '2022-10-12 20:32:14', NULL, NULL, '1'),
(268, '000039', 'CIV', '2022-10-12', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000039', 0.00, 0.00, 0, '1', '1', '2022-10-12 20:32:14', NULL, NULL, '1'),
(269, '000040', 'CIV', '2022-10-12', '1020101', 'Cash in Hand Debited For Invoice#000040', 130000.00, 0.00, 0, '1', '2', '2022-10-12 20:33:33', NULL, NULL, '1'),
(270, '000040', 'CIV', '2022-10-12', '102030101', 'Customer debit for Rent Invoice# 000040', 130000.00, 0.00, 0, '1', '2', '2022-10-12 20:33:33', NULL, NULL, '1'),
(271, '000040', 'CIV', '2022-10-12', '30301', 'Hotel Credited for Hotel Rent Invoice# 000040', 0.00, 130000.00, 0, '1', '2', '2022-10-12 20:33:33', NULL, NULL, '1'),
(272, '000040', 'CIV', '2022-10-12', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000040', 0.00, 0.00, 0, '1', '2', '2022-10-12 20:33:33', NULL, NULL, '1'),
(273, '000040', 'CIV', '2022-10-12', '102030101', 'Customer Credit for Rent Invoice# 000040', 0.00, 130000.00, 0, '1', '2', '2022-10-12 20:33:33', NULL, NULL, '1'),
(274, '000040', 'CIV', '2022-10-12', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000040', 0.00, 0.00, 0, '1', '2', '2022-10-12 20:33:33', NULL, NULL, '1'),
(275, '000040', 'CIV', '2022-10-12', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000040', 0.00, 0.00, 0, '1', '2', '2022-10-12 20:33:33', NULL, NULL, '1'),
(276, '000041', 'CIV', '2022-10-12', '1020101', 'Cash in Hand Debited For Invoice#000041', 836800.00, 0.00, 0, '1', '2', '2022-10-12 20:34:46', NULL, NULL, '1'),
(277, '000041', 'CIV', '2022-10-12', '102030101', 'Customer debit for Rent Invoice# 000041', 836800.00, 0.00, 0, '1', '2', '2022-10-12 20:34:46', NULL, NULL, '1'),
(278, '000041', 'CIV', '2022-10-12', '30301', 'Hotel Credited for Hotel Rent Invoice# 000041', 0.00, 836800.00, 0, '1', '2', '2022-10-12 20:34:46', NULL, NULL, '1'),
(279, '000041', 'CIV', '2022-10-12', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000041', 0.00, 0.00, 0, '1', '2', '2022-10-12 20:34:46', NULL, NULL, '1'),
(280, '000041', 'CIV', '2022-10-12', '102030101', 'Customer Credit for Rent Invoice# 000041', 0.00, 836800.00, 0, '1', '2', '2022-10-12 20:34:46', NULL, NULL, '1'),
(281, '000041', 'CIV', '2022-10-12', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000041', 0.00, 0.00, 0, '1', '2', '2022-10-12 20:34:46', NULL, NULL, '1'),
(282, '000041', 'CIV', '2022-10-12', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000041', 0.00, 0.00, 0, '1', '2', '2022-10-12 20:34:46', NULL, NULL, '1'),
(283, '000042', 'CIV', '2022-10-12', '1020101', 'Cash in Hand Debited For Invoice#000042', 90000.00, 0.00, 0, '1', '1', '2022-10-12 20:38:39', NULL, NULL, '1'),
(284, '000042', 'CIV', '2022-10-12', '102030101', 'Customer debit for Rent Invoice# 000042', 90000.00, 0.00, 0, '1', '1', '2022-10-12 20:38:39', NULL, NULL, '1'),
(285, '000042', 'CIV', '2022-10-12', '30301', 'Hotel Credited for Hotel Rent Invoice# 000042', 0.00, 90000.00, 0, '1', '1', '2022-10-12 20:38:39', NULL, NULL, '1'),
(286, '000042', 'CIV', '2022-10-12', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000042', 0.00, 0.00, 0, '1', '1', '2022-10-12 20:38:39', NULL, NULL, '1'),
(287, '000042', 'CIV', '2022-10-12', '102030101', 'Customer Credit for Rent Invoice# 000042', 0.00, 90000.00, 0, '1', '1', '2022-10-12 20:38:39', NULL, NULL, '1'),
(288, '000042', 'CIV', '2022-10-12', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000042', 0.00, 0.00, 0, '1', '1', '2022-10-12 20:38:39', NULL, NULL, '1'),
(289, '000042', 'CIV', '2022-10-12', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000042', 0.00, 0.00, 0, '1', '1', '2022-10-12 20:38:39', NULL, NULL, '1'),
(290, '000043', 'CIV', '2022-10-12', '1020101', 'Cash in Hand Debited For Invoice#000043', 80000.00, 0.00, 0, '1', '1', '2022-10-12 20:43:33', NULL, NULL, '1'),
(291, '000043', 'CIV', '2022-10-12', '102030101', 'Customer debit for Rent Invoice# 000043', 80000.00, 0.00, 0, '1', '1', '2022-10-12 20:43:33', NULL, NULL, '1'),
(292, '000043', 'CIV', '2022-10-12', '30301', 'Hotel Credited for Hotel Rent Invoice# 000043', 0.00, 80000.00, 0, '1', '1', '2022-10-12 20:43:33', NULL, NULL, '1'),
(293, '000043', 'CIV', '2022-10-12', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000043', 0.00, 0.00, 0, '1', '1', '2022-10-12 20:43:33', NULL, NULL, '1'),
(294, '000043', 'CIV', '2022-10-12', '102030101', 'Customer Credit for Rent Invoice# 000043', 0.00, 80000.00, 0, '1', '1', '2022-10-12 20:43:33', NULL, NULL, '1'),
(295, '000043', 'CIV', '2022-10-12', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000043', 0.00, 0.00, 0, '1', '1', '2022-10-12 20:43:33', NULL, NULL, '1'),
(296, '000043', 'CIV', '2022-10-12', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000043', 0.00, 0.00, 0, '1', '1', '2022-10-12 20:43:33', NULL, NULL, '1'),
(297, '000044', 'CIV', '2022-10-13', '102010304', 'Cash in Card Debited For Invoice#000044', 165600.00, 0.00, 0, '1', '2', '2022-10-13 10:13:06', NULL, NULL, '1'),
(298, '000044', 'CIV', '2022-10-13', '102030101', 'Customer debit for Rent Invoice# 000044', 165600.00, 0.00, 0, '1', '2', '2022-10-13 10:13:06', NULL, NULL, '1'),
(299, '000044', 'CIV', '2022-10-13', '30301', 'Hotel Credited for Hotel Rent Invoice# 000044', 0.00, 165600.00, 0, '1', '2', '2022-10-13 10:13:06', NULL, NULL, '1'),
(300, '000044', 'CIV', '2022-10-13', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000044', 0.00, 0.00, 0, '1', '2', '2022-10-13 10:13:06', NULL, NULL, '1'),
(301, '000044', 'CIV', '2022-10-13', '102030101', 'Customer Credit for Rent Invoice# 000044', 0.00, 165600.00, 0, '1', '2', '2022-10-13 10:13:06', NULL, NULL, '1'),
(302, '000044', 'CIV', '2022-10-13', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000044', 0.00, 0.00, 0, '1', '2', '2022-10-13 10:13:06', NULL, NULL, '1'),
(303, '000044', 'CIV', '2022-10-13', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000044', 0.00, 0.00, 0, '1', '2', '2022-10-13 10:13:06', NULL, NULL, '1'),
(304, '000045', 'CIV', '2022-10-13', '102010304', 'Cash in Card Debited For Invoice#000045', 165600.00, 0.00, 0, '1', '2', '2022-10-13 10:13:07', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES
(305, '000045', 'CIV', '2022-10-13', '102030101', 'Customer debit for Rent Invoice# 000045', 165600.00, 0.00, 0, '1', '2', '2022-10-13 10:13:07', NULL, NULL, '1'),
(306, '000045', 'CIV', '2022-10-13', '30301', 'Hotel Credited for Hotel Rent Invoice# 000045', 0.00, 165600.00, 0, '1', '2', '2022-10-13 10:13:07', NULL, NULL, '1'),
(307, '000045', 'CIV', '2022-10-13', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000045', 0.00, 0.00, 0, '1', '2', '2022-10-13 10:13:07', NULL, NULL, '1'),
(308, '000045', 'CIV', '2022-10-13', '102030101', 'Customer Credit for Rent Invoice# 000045', 0.00, 165600.00, 0, '1', '2', '2022-10-13 10:13:07', NULL, NULL, '1'),
(309, '000045', 'CIV', '2022-10-13', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000045', 0.00, 0.00, 0, '1', '2', '2022-10-13 10:13:07', NULL, NULL, '1'),
(310, '000045', 'CIV', '2022-10-13', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000045', 0.00, 0.00, 0, '1', '2', '2022-10-13 10:13:07', NULL, NULL, '1'),
(311, '000046', 'CIV', '2022-10-13', '102010304', 'Cash in Card Debited For Invoice#000046', 390000.00, 0.00, 0, '1', '2', '2022-10-13 10:14:25', NULL, NULL, '1'),
(312, '000046', 'CIV', '2022-10-13', '102030101', 'Customer debit for Rent Invoice# 000046', 390000.00, 0.00, 0, '1', '2', '2022-10-13 10:14:25', NULL, NULL, '1'),
(313, '000046', 'CIV', '2022-10-13', '30301', 'Hotel Credited for Hotel Rent Invoice# 000046', 0.00, 390000.00, 0, '1', '2', '2022-10-13 10:14:25', NULL, NULL, '1'),
(314, '000046', 'CIV', '2022-10-13', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000046', 0.00, 0.00, 0, '1', '2', '2022-10-13 10:14:25', NULL, NULL, '1'),
(315, '000046', 'CIV', '2022-10-13', '102030101', 'Customer Credit for Rent Invoice# 000046', 0.00, 390000.00, 0, '1', '2', '2022-10-13 10:14:25', NULL, NULL, '1'),
(316, '000046', 'CIV', '2022-10-13', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000046', 0.00, 0.00, 0, '1', '2', '2022-10-13 10:14:25', NULL, NULL, '1'),
(317, '000046', 'CIV', '2022-10-13', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000046', 0.00, 0.00, 0, '1', '2', '2022-10-13 10:14:25', NULL, NULL, '1'),
(318, '000047', 'CIV', '2022-10-13', '1020101', 'Cash in Hand Debited For Invoice#000047', 240000.00, 0.00, 0, '1', '2', '2022-10-13 10:15:18', NULL, NULL, '1'),
(319, '000047', 'CIV', '2022-10-13', '102030101', 'Customer debit for Rent Invoice# 000047', 240000.00, 0.00, 0, '1', '2', '2022-10-13 10:15:18', NULL, NULL, '1'),
(320, '000047', 'CIV', '2022-10-13', '30301', 'Hotel Credited for Hotel Rent Invoice# 000047', 0.00, 240000.00, 0, '1', '2', '2022-10-13 10:15:18', NULL, NULL, '1'),
(321, '000047', 'CIV', '2022-10-13', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000047', 0.00, 0.00, 0, '1', '2', '2022-10-13 10:15:18', NULL, NULL, '1'),
(322, '000047', 'CIV', '2022-10-13', '102030101', 'Customer Credit for Rent Invoice# 000047', 0.00, 240000.00, 0, '1', '2', '2022-10-13 10:15:18', NULL, NULL, '1'),
(323, '000047', 'CIV', '2022-10-13', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000047', 0.00, 0.00, 0, '1', '2', '2022-10-13 10:15:18', NULL, NULL, '1'),
(324, '000047', 'CIV', '2022-10-13', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000047', 0.00, 0.00, 0, '1', '2', '2022-10-13 10:15:18', NULL, NULL, '1'),
(325, '000048', 'CIV', '2022-10-13', '102010304', 'Cash in Card Debited For Invoice#000048', 360000.00, 0.00, 0, '1', '2', '2022-10-13 10:16:17', NULL, NULL, '1'),
(326, '000048', 'CIV', '2022-10-13', '102030101', 'Customer debit for Rent Invoice# 000048', 360000.00, 0.00, 0, '1', '2', '2022-10-13 10:16:17', NULL, NULL, '1'),
(327, '000048', 'CIV', '2022-10-13', '30301', 'Hotel Credited for Hotel Rent Invoice# 000048', 0.00, 360000.00, 0, '1', '2', '2022-10-13 10:16:17', NULL, NULL, '1'),
(328, '000048', 'CIV', '2022-10-13', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000048', 0.00, 0.00, 0, '1', '2', '2022-10-13 10:16:17', NULL, NULL, '1'),
(329, '000048', 'CIV', '2022-10-13', '102030101', 'Customer Credit for Rent Invoice# 000048', 0.00, 360000.00, 0, '1', '2', '2022-10-13 10:16:17', NULL, NULL, '1'),
(330, '000048', 'CIV', '2022-10-13', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000048', 0.00, 0.00, 0, '1', '2', '2022-10-13 10:16:17', NULL, NULL, '1'),
(331, '000048', 'CIV', '2022-10-13', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000048', 0.00, 0.00, 0, '1', '2', '2022-10-13 10:16:17', NULL, NULL, '1'),
(332, '000049', 'CIV', '2022-10-13', '1020101', 'Cash in Hand Debited For Invoice#000049', 240000.00, 0.00, 0, '1', '2', '2022-10-13 10:16:57', NULL, NULL, '1'),
(333, '000049', 'CIV', '2022-10-13', '102030101', 'Customer debit for Rent Invoice# 000049', 240000.00, 0.00, 0, '1', '2', '2022-10-13 10:16:57', NULL, NULL, '1'),
(334, '000049', 'CIV', '2022-10-13', '30301', 'Hotel Credited for Hotel Rent Invoice# 000049', 0.00, 240000.00, 0, '1', '2', '2022-10-13 10:16:57', NULL, NULL, '1'),
(335, '000049', 'CIV', '2022-10-13', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000049', 0.00, 0.00, 0, '1', '2', '2022-10-13 10:16:57', NULL, NULL, '1'),
(336, '000049', 'CIV', '2022-10-13', '102030101', 'Customer Credit for Rent Invoice# 000049', 0.00, 240000.00, 0, '1', '2', '2022-10-13 10:16:57', NULL, NULL, '1'),
(337, '000049', 'CIV', '2022-10-13', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000049', 0.00, 0.00, 0, '1', '2', '2022-10-13 10:16:57', NULL, NULL, '1'),
(338, '000049', 'CIV', '2022-10-13', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000049', 0.00, 0.00, 0, '1', '2', '2022-10-13 10:16:57', NULL, NULL, '1'),
(339, '000050', 'CIV', '2022-10-13', '1020101', 'Cash in Hand Debited For Invoice#000050', 80000.00, 0.00, 0, '1', '2', '2022-10-13 14:42:10', NULL, NULL, '1'),
(340, '000050', 'CIV', '2022-10-13', '102030101', 'Customer debit for Rent Invoice# 000050', 80000.00, 0.00, 0, '1', '2', '2022-10-13 14:42:10', NULL, NULL, '1'),
(341, '000050', 'CIV', '2022-10-13', '30301', 'Hotel Credited for Hotel Rent Invoice# 000050', 0.00, 80000.00, 0, '1', '2', '2022-10-13 14:42:10', NULL, NULL, '1'),
(342, '000050', 'CIV', '2022-10-13', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000050', 0.00, 0.00, 0, '1', '2', '2022-10-13 14:42:10', NULL, NULL, '1'),
(343, '000050', 'CIV', '2022-10-13', '102030101', 'Customer Credit for Rent Invoice# 000050', 0.00, 80000.00, 0, '1', '2', '2022-10-13 14:42:10', NULL, NULL, '1'),
(344, '000050', 'CIV', '2022-10-13', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000050', 0.00, 0.00, 0, '1', '2', '2022-10-13 14:42:10', NULL, NULL, '1'),
(345, '000050', 'CIV', '2022-10-13', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000050', 0.00, 0.00, 0, '1', '2', '2022-10-13 14:42:10', NULL, NULL, '1'),
(346, '000051', 'CIV', '2022-10-14', '102010304', 'Cash in Card Debited For Invoice#000051', 300000.00, 0.00, 0, '1', '3', '2022-10-14 16:32:01', NULL, NULL, '1'),
(347, '000051', 'CIV', '2022-10-14', '102030101', 'Customer debit for Rent Invoice# 000051', 300000.00, 0.00, 0, '1', '3', '2022-10-14 16:32:01', NULL, NULL, '1'),
(348, '000051', 'CIV', '2022-10-14', '30301', 'Hotel Credited for Hotel Rent Invoice# 000051', 0.00, 300000.00, 0, '1', '3', '2022-10-14 16:32:01', NULL, NULL, '1'),
(349, '000051', 'CIV', '2022-10-14', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000051', 0.00, 0.00, 0, '1', '3', '2022-10-14 16:32:01', NULL, NULL, '1'),
(350, '000051', 'CIV', '2022-10-14', '102030101', 'Customer Credit for Rent Invoice# 000051', 0.00, 300000.00, 0, '1', '3', '2022-10-14 16:32:01', NULL, NULL, '1'),
(351, '000051', 'CIV', '2022-10-14', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000051', 0.00, 0.00, 0, '1', '3', '2022-10-14 16:32:01', NULL, NULL, '1'),
(352, '000051', 'CIV', '2022-10-14', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000051', 0.00, 0.00, 0, '1', '3', '2022-10-14 16:32:01', NULL, NULL, '1'),
(353, '000052', 'CIV', '2022-10-14', '1020101', 'Cash in Hand Debited For Invoice#000052', 150000.00, 0.00, 0, '1', '3', '2022-10-14 16:35:04', NULL, NULL, '1'),
(354, '000052', 'CIV', '2022-10-14', '102030101', 'Customer debit for Rent Invoice# 000052', 150000.00, 0.00, 0, '1', '3', '2022-10-14 16:35:04', NULL, NULL, '1'),
(355, '000052', 'CIV', '2022-10-14', '30301', 'Hotel Credited for Hotel Rent Invoice# 000052', 0.00, 150000.00, 0, '1', '3', '2022-10-14 16:35:04', NULL, NULL, '1'),
(356, '000052', 'CIV', '2022-10-14', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000052', 0.00, 0.00, 0, '1', '3', '2022-10-14 16:35:04', NULL, NULL, '1'),
(357, '000052', 'CIV', '2022-10-14', '102030101', 'Customer Credit for Rent Invoice# 000052', 0.00, 150000.00, 0, '1', '3', '2022-10-14 16:35:04', NULL, NULL, '1'),
(358, '000052', 'CIV', '2022-10-14', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000052', 0.00, 0.00, 0, '1', '3', '2022-10-14 16:35:04', NULL, NULL, '1'),
(359, '000052', 'CIV', '2022-10-14', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000052', 0.00, 0.00, 0, '1', '3', '2022-10-14 16:35:04', NULL, NULL, '1'),
(360, '000053', 'CIV', '2022-10-14', '1020101', 'Cash in Hand Debited For Invoice#000053', 150000.00, 0.00, 0, '1', '3', '2022-10-14 16:35:06', NULL, NULL, '1'),
(361, '000053', 'CIV', '2022-10-14', '102030101', 'Customer debit for Rent Invoice# 000053', 150000.00, 0.00, 0, '1', '3', '2022-10-14 16:35:06', NULL, NULL, '1'),
(362, '000053', 'CIV', '2022-10-14', '30301', 'Hotel Credited for Hotel Rent Invoice# 000053', 0.00, 150000.00, 0, '1', '3', '2022-10-14 16:35:06', NULL, NULL, '1'),
(363, '000053', 'CIV', '2022-10-14', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000053', 0.00, 0.00, 0, '1', '3', '2022-10-14 16:35:06', NULL, NULL, '1'),
(364, '000053', 'CIV', '2022-10-14', '102030101', 'Customer Credit for Rent Invoice# 000053', 0.00, 150000.00, 0, '1', '3', '2022-10-14 16:35:06', NULL, NULL, '1'),
(365, '000053', 'CIV', '2022-10-14', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000053', 0.00, 0.00, 0, '1', '3', '2022-10-14 16:35:06', NULL, NULL, '1'),
(366, '000053', 'CIV', '2022-10-14', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000053', 0.00, 0.00, 0, '1', '3', '2022-10-14 16:35:06', NULL, NULL, '1'),
(367, '000054', 'CIV', '2022-10-14', '1020101', 'Cash in Hand Debited For Invoice#000054', 390000.00, 0.00, 0, '1', '3', '2022-10-14 16:45:15', NULL, NULL, '1'),
(368, '000054', 'CIV', '2022-10-14', '102030101', 'Customer debit for Rent Invoice# 000054', 390000.00, 0.00, 0, '1', '3', '2022-10-14 16:45:15', NULL, NULL, '1'),
(369, '000054', 'CIV', '2022-10-14', '30301', 'Hotel Credited for Hotel Rent Invoice# 000054', 0.00, 390000.00, 0, '1', '3', '2022-10-14 16:45:15', NULL, NULL, '1'),
(370, '000054', 'CIV', '2022-10-14', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000054', 0.00, 0.00, 0, '1', '3', '2022-10-14 16:45:15', NULL, NULL, '1'),
(371, '000054', 'CIV', '2022-10-14', '102030101', 'Customer Credit for Rent Invoice# 000054', 0.00, 390000.00, 0, '1', '3', '2022-10-14 16:45:15', NULL, NULL, '1'),
(372, '000054', 'CIV', '2022-10-14', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000054', 0.00, 0.00, 0, '1', '3', '2022-10-14 16:45:15', NULL, NULL, '1'),
(373, '000054', 'CIV', '2022-10-14', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000054', 0.00, 0.00, 0, '1', '3', '2022-10-14 16:45:15', NULL, NULL, '1'),
(374, '000055', 'CIV', '2022-10-14', '1020101', 'Cash in Hand Debited For Invoice#000055', 165600.00, 0.00, 0, '1', '3', '2022-10-14 16:47:44', NULL, NULL, '1'),
(375, '000055', 'CIV', '2022-10-14', '102030101', 'Customer debit for Rent Invoice# 000055', 165600.00, 0.00, 0, '1', '3', '2022-10-14 16:47:44', NULL, NULL, '1'),
(376, '000055', 'CIV', '2022-10-14', '30301', 'Hotel Credited for Hotel Rent Invoice# 000055', 0.00, 165600.00, 0, '1', '3', '2022-10-14 16:47:44', NULL, NULL, '1'),
(377, '000055', 'CIV', '2022-10-14', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000055', 0.00, 0.00, 0, '1', '3', '2022-10-14 16:47:44', NULL, NULL, '1'),
(378, '000055', 'CIV', '2022-10-14', '102030101', 'Customer Credit for Rent Invoice# 000055', 0.00, 165600.00, 0, '1', '3', '2022-10-14 16:47:44', NULL, NULL, '1'),
(379, '000055', 'CIV', '2022-10-14', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000055', 0.00, 0.00, 0, '1', '3', '2022-10-14 16:47:44', NULL, NULL, '1'),
(380, '000055', 'CIV', '2022-10-14', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000055', 0.00, 0.00, 0, '1', '3', '2022-10-14 16:47:44', NULL, NULL, '1'),
(381, '000056', 'CIV', '2022-10-14', '1020101', 'Cash in Hand Debited For Invoice#000056', 200000.00, 0.00, 0, '1', '3', '2022-10-14 16:50:08', NULL, NULL, '1'),
(382, '000056', 'CIV', '2022-10-14', '102030101', 'Customer debit for Rent Invoice# 000056', 200000.00, 0.00, 0, '1', '3', '2022-10-14 16:50:08', NULL, NULL, '1'),
(383, '000056', 'CIV', '2022-10-14', '30301', 'Hotel Credited for Hotel Rent Invoice# 000056', 0.00, 200000.00, 0, '1', '3', '2022-10-14 16:50:08', NULL, NULL, '1'),
(384, '000056', 'CIV', '2022-10-14', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000056', 0.00, 0.00, 0, '1', '3', '2022-10-14 16:50:08', NULL, NULL, '1'),
(385, '000056', 'CIV', '2022-10-14', '102030101', 'Customer Credit for Rent Invoice# 000056', 0.00, 200000.00, 0, '1', '3', '2022-10-14 16:50:08', NULL, NULL, '1'),
(386, '000056', 'CIV', '2022-10-14', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000056', 0.00, 0.00, 0, '1', '3', '2022-10-14 16:50:08', NULL, NULL, '1'),
(387, '000056', 'CIV', '2022-10-14', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000056', 0.00, 0.00, 0, '1', '3', '2022-10-14 16:50:08', NULL, NULL, '1'),
(388, '000057', 'CIV', '2022-10-14', '1020101', 'Cash in Hand Debited For Invoice#000057', 120000.00, 0.00, 0, '1', '3', '2022-10-14 16:50:57', NULL, NULL, '1'),
(389, '000057', 'CIV', '2022-10-14', '102030101', 'Customer debit for Rent Invoice# 000057', 120000.00, 0.00, 0, '1', '3', '2022-10-14 16:50:57', NULL, NULL, '1'),
(390, '000057', 'CIV', '2022-10-14', '30301', 'Hotel Credited for Hotel Rent Invoice# 000057', 0.00, 120000.00, 0, '1', '3', '2022-10-14 16:50:57', NULL, NULL, '1'),
(391, '000057', 'CIV', '2022-10-14', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000057', 0.00, 0.00, 0, '1', '3', '2022-10-14 16:50:57', NULL, NULL, '1'),
(392, '000057', 'CIV', '2022-10-14', '102030101', 'Customer Credit for Rent Invoice# 000057', 0.00, 120000.00, 0, '1', '3', '2022-10-14 16:50:57', NULL, NULL, '1'),
(393, '000057', 'CIV', '2022-10-14', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000057', 0.00, 0.00, 0, '1', '3', '2022-10-14 16:50:57', NULL, NULL, '1'),
(394, '000057', 'CIV', '2022-10-14', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000057', 0.00, 0.00, 0, '1', '3', '2022-10-14 16:50:57', NULL, NULL, '1'),
(395, '000058', 'CIV', '2022-10-14', '1020101', 'Cash in Hand Debited For Invoice#000058', 120000.00, 0.00, 0, '1', '3', '2022-10-14 16:51:31', NULL, NULL, '1'),
(396, '000058', 'CIV', '2022-10-14', '102030101', 'Customer debit for Rent Invoice# 000058', 120000.00, 0.00, 0, '1', '3', '2022-10-14 16:51:31', NULL, NULL, '1'),
(397, '000058', 'CIV', '2022-10-14', '30301', 'Hotel Credited for Hotel Rent Invoice# 000058', 0.00, 120000.00, 0, '1', '3', '2022-10-14 16:51:31', NULL, NULL, '1'),
(398, '000058', 'CIV', '2022-10-14', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000058', 0.00, 0.00, 0, '1', '3', '2022-10-14 16:51:31', NULL, NULL, '1'),
(399, '000058', 'CIV', '2022-10-14', '102030101', 'Customer Credit for Rent Invoice# 000058', 0.00, 120000.00, 0, '1', '3', '2022-10-14 16:51:31', NULL, NULL, '1'),
(400, '000058', 'CIV', '2022-10-14', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000058', 0.00, 0.00, 0, '1', '3', '2022-10-14 16:51:31', NULL, NULL, '1'),
(401, '000058', 'CIV', '2022-10-14', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000058', 0.00, 0.00, 0, '1', '3', '2022-10-14 16:51:31', NULL, NULL, '1'),
(402, '000059', 'CIV', '2022-10-14', '1020101', 'Cash in Hand Debited For Invoice#000059', 80000.00, 0.00, 0, '1', '3', '2022-10-14 16:56:09', NULL, NULL, '1'),
(403, '000059', 'CIV', '2022-10-14', '102030101', 'Customer debit for Rent Invoice# 000059', 80000.00, 0.00, 0, '1', '3', '2022-10-14 16:56:09', NULL, NULL, '1'),
(404, '000059', 'CIV', '2022-10-14', '30301', 'Hotel Credited for Hotel Rent Invoice# 000059', 0.00, 80000.00, 0, '1', '3', '2022-10-14 16:56:09', NULL, NULL, '1'),
(405, '000059', 'CIV', '2022-10-14', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000059', 0.00, 0.00, 0, '1', '3', '2022-10-14 16:56:09', NULL, NULL, '1'),
(406, '000059', 'CIV', '2022-10-14', '102030101', 'Customer Credit for Rent Invoice# 000059', 0.00, 80000.00, 0, '1', '3', '2022-10-14 16:56:09', NULL, NULL, '1'),
(407, '000059', 'CIV', '2022-10-14', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000059', 0.00, 0.00, 0, '1', '3', '2022-10-14 16:56:09', NULL, NULL, '1'),
(408, '000059', 'CIV', '2022-10-14', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000059', 0.00, 0.00, 0, '1', '3', '2022-10-14 16:56:09', NULL, NULL, '1'),
(409, '000060', 'CIV', '2022-10-14', '1020101', 'Cash in Hand Debited For Invoice#000060', 320000.00, 0.00, 0, '1', '3', '2022-10-14 16:58:09', NULL, NULL, '1'),
(410, '000060', 'CIV', '2022-10-14', '102030101', 'Customer debit for Rent Invoice# 000060', 320000.00, 0.00, 0, '1', '3', '2022-10-14 16:58:09', NULL, NULL, '1'),
(411, '000060', 'CIV', '2022-10-14', '30301', 'Hotel Credited for Hotel Rent Invoice# 000060', 0.00, 320000.00, 0, '1', '3', '2022-10-14 16:58:09', NULL, NULL, '1'),
(412, '000060', 'CIV', '2022-10-14', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000060', 0.00, 0.00, 0, '1', '3', '2022-10-14 16:58:09', NULL, NULL, '1'),
(413, '000060', 'CIV', '2022-10-14', '102030101', 'Customer Credit for Rent Invoice# 000060', 0.00, 320000.00, 0, '1', '3', '2022-10-14 16:58:09', NULL, NULL, '1'),
(414, '000060', 'CIV', '2022-10-14', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000060', 0.00, 0.00, 0, '1', '3', '2022-10-14 16:58:09', NULL, NULL, '1'),
(415, '000060', 'CIV', '2022-10-14', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000060', 0.00, 0.00, 0, '1', '3', '2022-10-14 16:58:09', NULL, NULL, '1'),
(416, '000061', 'CIV', '2022-10-14', '1020101', 'Cash in Hand Debited For Invoice#000061', 450000.00, 0.00, 0, '1', '2', '2022-10-14 21:10:43', NULL, NULL, '1'),
(417, '000061', 'CIV', '2022-10-14', '102030101', 'Customer debit for Rent Invoice# 000061', 450000.00, 0.00, 0, '1', '2', '2022-10-14 21:10:43', NULL, NULL, '1'),
(418, '000061', 'CIV', '2022-10-14', '30301', 'Hotel Credited for Hotel Rent Invoice# 000061', 0.00, 450000.00, 0, '1', '2', '2022-10-14 21:10:43', NULL, NULL, '1'),
(419, '000061', 'CIV', '2022-10-14', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000061', 0.00, 0.00, 0, '1', '2', '2022-10-14 21:10:43', NULL, NULL, '1'),
(420, '000061', 'CIV', '2022-10-14', '102030101', 'Customer Credit for Rent Invoice# 000061', 0.00, 450000.00, 0, '1', '2', '2022-10-14 21:10:43', NULL, NULL, '1'),
(421, '000061', 'CIV', '2022-10-14', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000061', 0.00, 0.00, 0, '1', '2', '2022-10-14 21:10:43', NULL, NULL, '1'),
(422, '000061', 'CIV', '2022-10-14', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000061', 0.00, 0.00, 0, '1', '2', '2022-10-14 21:10:43', NULL, NULL, '1'),
(423, '000062', 'CIV', '2022-10-15', '102010304', 'Cash in Card Debited For Invoice#000062', 90000.00, 0.00, 0, '1', '3', '2022-10-15 11:56:59', NULL, NULL, '1'),
(424, '000062', 'CIV', '2022-10-15', '102030101', 'Customer debit for Rent Invoice# 000062', 90000.00, 0.00, 0, '1', '3', '2022-10-15 11:56:59', NULL, NULL, '1'),
(425, '000062', 'CIV', '2022-10-15', '30301', 'Hotel Credited for Hotel Rent Invoice# 000062', 0.00, 90000.00, 0, '1', '3', '2022-10-15 11:56:59', NULL, NULL, '1'),
(426, '000062', 'CIV', '2022-10-15', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000062', 0.00, 0.00, 0, '1', '3', '2022-10-15 11:56:59', NULL, NULL, '1'),
(427, '000062', 'CIV', '2022-10-15', '102030101', 'Customer Credit for Rent Invoice# 000062', 0.00, 90000.00, 0, '1', '3', '2022-10-15 11:56:59', NULL, NULL, '1'),
(428, '000062', 'CIV', '2022-10-15', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000062', 0.00, 0.00, 0, '1', '3', '2022-10-15 11:56:59', NULL, NULL, '1'),
(429, '000062', 'CIV', '2022-10-15', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000062', 0.00, 0.00, 0, '1', '3', '2022-10-15 11:56:59', NULL, NULL, '1'),
(430, '000063', 'CIV', '2022-10-15', '102010304', 'Cash in Card Debited For Invoice#000063', 280000.00, 0.00, 0, '1', '3', '2022-10-15 11:58:18', NULL, NULL, '1'),
(431, '000063', 'CIV', '2022-10-15', '102030101', 'Customer debit for Rent Invoice# 000063', 280000.00, 0.00, 0, '1', '3', '2022-10-15 11:58:18', NULL, NULL, '1'),
(432, '000063', 'CIV', '2022-10-15', '30301', 'Hotel Credited for Hotel Rent Invoice# 000063', 0.00, 280000.00, 0, '1', '3', '2022-10-15 11:58:18', NULL, NULL, '1'),
(433, '000063', 'CIV', '2022-10-15', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000063', 0.00, 0.00, 0, '1', '3', '2022-10-15 11:58:18', NULL, NULL, '1'),
(434, '000063', 'CIV', '2022-10-15', '102030101', 'Customer Credit for Rent Invoice# 000063', 0.00, 280000.00, 0, '1', '3', '2022-10-15 11:58:18', NULL, NULL, '1'),
(435, '000063', 'CIV', '2022-10-15', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000063', 0.00, 0.00, 0, '1', '3', '2022-10-15 11:58:18', NULL, NULL, '1'),
(436, '000063', 'CIV', '2022-10-15', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000063', 0.00, 0.00, 0, '1', '3', '2022-10-15 11:58:18', NULL, NULL, '1'),
(437, '000064', 'CIV', '2022-10-15', '1020101', 'Cash in Hand Debited For Invoice#000064', 150000.00, 0.00, 0, '1', '3', '2022-10-15 12:40:46', NULL, NULL, '1'),
(438, '000064', 'CIV', '2022-10-15', '102030101', 'Customer debit for Rent Invoice# 000064', 150000.00, 0.00, 0, '1', '3', '2022-10-15 12:40:46', NULL, NULL, '1'),
(439, '000064', 'CIV', '2022-10-15', '30301', 'Hotel Credited for Hotel Rent Invoice# 000064', 0.00, 150000.00, 0, '1', '3', '2022-10-15 12:40:46', NULL, NULL, '1'),
(440, '000064', 'CIV', '2022-10-15', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000064', 0.00, 0.00, 0, '1', '3', '2022-10-15 12:40:46', NULL, NULL, '1'),
(441, '000064', 'CIV', '2022-10-15', '102030101', 'Customer Credit for Rent Invoice# 000064', 0.00, 150000.00, 0, '1', '3', '2022-10-15 12:40:46', NULL, NULL, '1'),
(442, '000064', 'CIV', '2022-10-15', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000064', 0.00, 0.00, 0, '1', '3', '2022-10-15 12:40:46', NULL, NULL, '1'),
(443, '000064', 'CIV', '2022-10-15', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000064', 0.00, 0.00, 0, '1', '3', '2022-10-15 12:40:46', NULL, NULL, '1'),
(444, '000065', 'CIV', '2022-10-15', '1020101', 'Cash in Hand Debited For Invoice#000065', 130000.00, 0.00, 0, '1', '3', '2022-10-15 12:46:00', NULL, NULL, '1'),
(445, '000065', 'CIV', '2022-10-15', '102030101', 'Customer debit for Rent Invoice# 000065', 130000.00, 0.00, 0, '1', '3', '2022-10-15 12:46:00', NULL, NULL, '1'),
(446, '000065', 'CIV', '2022-10-15', '30301', 'Hotel Credited for Hotel Rent Invoice# 000065', 0.00, 130000.00, 0, '1', '3', '2022-10-15 12:46:00', NULL, NULL, '1'),
(447, '000065', 'CIV', '2022-10-15', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000065', 0.00, 0.00, 0, '1', '3', '2022-10-15 12:46:00', NULL, NULL, '1'),
(448, '000065', 'CIV', '2022-10-15', '102030101', 'Customer Credit for Rent Invoice# 000065', 0.00, 130000.00, 0, '1', '3', '2022-10-15 12:46:00', NULL, NULL, '1'),
(449, '000065', 'CIV', '2022-10-15', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000065', 0.00, 0.00, 0, '1', '3', '2022-10-15 12:46:00', NULL, NULL, '1'),
(450, '000065', 'CIV', '2022-10-15', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000065', 0.00, 0.00, 0, '1', '3', '2022-10-15 12:46:00', NULL, NULL, '1'),
(451, '000066', 'CIV', '2022-10-15', '1020101', 'Cash in Hand Debited For Invoice#000066', 130000.00, 0.00, 0, '1', '3', '2022-10-15 12:46:30', NULL, NULL, '1'),
(452, '000066', 'CIV', '2022-10-15', '102030101', 'Customer debit for Rent Invoice# 000066', 130000.00, 0.00, 0, '1', '3', '2022-10-15 12:46:30', NULL, NULL, '1'),
(453, '000066', 'CIV', '2022-10-15', '30301', 'Hotel Credited for Hotel Rent Invoice# 000066', 0.00, 130000.00, 0, '1', '3', '2022-10-15 12:46:30', NULL, NULL, '1'),
(454, '000066', 'CIV', '2022-10-15', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000066', 0.00, 0.00, 0, '1', '3', '2022-10-15 12:46:30', NULL, NULL, '1'),
(455, '000066', 'CIV', '2022-10-15', '102030101', 'Customer Credit for Rent Invoice# 000066', 0.00, 130000.00, 0, '1', '3', '2022-10-15 12:46:30', NULL, NULL, '1'),
(456, '000066', 'CIV', '2022-10-15', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000066', 0.00, 0.00, 0, '1', '3', '2022-10-15 12:46:30', NULL, NULL, '1'),
(457, '000066', 'CIV', '2022-10-15', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000066', 0.00, 0.00, 0, '1', '3', '2022-10-15 12:46:30', NULL, NULL, '1'),
(458, '000067', 'CIV', '2022-10-15', '102030101', 'Customer debit for Rent Invoice# 000067', 100000.00, 0.00, 0, '1', '3', '2022-10-15 12:50:12', NULL, NULL, '1'),
(459, '000067', 'CIV', '2022-10-15', '30301', 'Hotel Credited for Hotel Rent Invoice# 000067', 0.00, 100000.00, 0, '1', '3', '2022-10-15 12:50:12', NULL, NULL, '1'),
(460, '000067', 'CIV', '2022-10-15', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000067', 0.00, 0.00, 0, '1', '3', '2022-10-15 12:50:12', NULL, NULL, '1'),
(461, '000067', 'CIV', '2022-10-15', '102030101', 'Customer Credit for Rent Invoice# 000067', 0.00, 100000.00, 0, '1', '3', '2022-10-15 12:50:12', NULL, NULL, '1'),
(462, '000067', 'CIV', '2022-10-15', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000067', 0.00, 0.00, 0, '1', '3', '2022-10-15 12:50:12', NULL, NULL, '1'),
(463, '000067', 'CIV', '2022-10-15', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000067', 0.00, 0.00, 0, '1', '3', '2022-10-15 12:50:12', NULL, NULL, '1'),
(464, '000068', 'CIV', '2022-10-15', '1020101', 'Cash in Hand Debited For Invoice#000068', 120000.00, 0.00, 0, '1', '3', '2022-10-15 12:51:31', NULL, NULL, '1'),
(465, '000068', 'CIV', '2022-10-15', '102030101', 'Customer debit for Rent Invoice# 000068', 120000.00, 0.00, 0, '1', '3', '2022-10-15 12:51:31', NULL, NULL, '1'),
(466, '000068', 'CIV', '2022-10-15', '30301', 'Hotel Credited for Hotel Rent Invoice# 000068', 0.00, 120000.00, 0, '1', '3', '2022-10-15 12:51:31', NULL, NULL, '1'),
(467, '000068', 'CIV', '2022-10-15', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000068', 0.00, 0.00, 0, '1', '3', '2022-10-15 12:51:31', NULL, NULL, '1'),
(468, '000068', 'CIV', '2022-10-15', '102030101', 'Customer Credit for Rent Invoice# 000068', 0.00, 120000.00, 0, '1', '3', '2022-10-15 12:51:31', NULL, NULL, '1'),
(469, '000068', 'CIV', '2022-10-15', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000068', 0.00, 0.00, 0, '1', '3', '2022-10-15 12:51:31', NULL, NULL, '1'),
(470, '000068', 'CIV', '2022-10-15', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000068', 0.00, 0.00, 0, '1', '3', '2022-10-15 12:51:31', NULL, NULL, '1'),
(471, '000069', 'CIV', '2022-10-15', '1020101', 'Cash in Hand Debited For Invoice#000069', 120000.00, 0.00, 0, '1', '3', '2022-10-15 12:52:08', NULL, NULL, '1'),
(472, '000069', 'CIV', '2022-10-15', '102030101', 'Customer debit for Rent Invoice# 000069', 120000.00, 0.00, 0, '1', '3', '2022-10-15 12:52:08', NULL, NULL, '1'),
(473, '000069', 'CIV', '2022-10-15', '30301', 'Hotel Credited for Hotel Rent Invoice# 000069', 0.00, 120000.00, 0, '1', '3', '2022-10-15 12:52:08', NULL, NULL, '1'),
(474, '000069', 'CIV', '2022-10-15', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000069', 0.00, 0.00, 0, '1', '3', '2022-10-15 12:52:08', NULL, NULL, '1'),
(475, '000069', 'CIV', '2022-10-15', '102030101', 'Customer Credit for Rent Invoice# 000069', 0.00, 120000.00, 0, '1', '3', '2022-10-15 12:52:08', NULL, NULL, '1'),
(476, '000069', 'CIV', '2022-10-15', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000069', 0.00, 0.00, 0, '1', '3', '2022-10-15 12:52:08', NULL, NULL, '1'),
(477, '000069', 'CIV', '2022-10-15', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000069', 0.00, 0.00, 0, '1', '3', '2022-10-15 12:52:08', NULL, NULL, '1'),
(478, '000070', 'CIV', '2022-10-15', '1020101', 'Cash in Hand Debited For Invoice#000070', 240000.00, 0.00, 0, '1', '3', '2022-10-15 12:52:49', NULL, NULL, '1'),
(479, '000070', 'CIV', '2022-10-15', '102030101', 'Customer debit for Rent Invoice# 000070', 240000.00, 0.00, 0, '1', '3', '2022-10-15 12:52:49', NULL, NULL, '1'),
(480, '000070', 'CIV', '2022-10-15', '30301', 'Hotel Credited for Hotel Rent Invoice# 000070', 0.00, 240000.00, 0, '1', '3', '2022-10-15 12:52:49', NULL, NULL, '1'),
(481, '000070', 'CIV', '2022-10-15', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000070', 0.00, 0.00, 0, '1', '3', '2022-10-15 12:52:49', NULL, NULL, '1'),
(482, '000070', 'CIV', '2022-10-15', '102030101', 'Customer Credit for Rent Invoice# 000070', 0.00, 240000.00, 0, '1', '3', '2022-10-15 12:52:49', NULL, NULL, '1'),
(483, '000070', 'CIV', '2022-10-15', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000070', 0.00, 0.00, 0, '1', '3', '2022-10-15 12:52:49', NULL, NULL, '1'),
(484, '000070', 'CIV', '2022-10-15', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000070', 0.00, 0.00, 0, '1', '3', '2022-10-15 12:52:49', NULL, NULL, '1'),
(485, '000071', 'CIV', '2022-10-15', '102010304', 'Cash in Card Debited For Invoice#000071', 80000.00, 0.00, 0, '1', '3', '2022-10-15 12:54:51', NULL, NULL, '1'),
(486, '000071', 'CIV', '2022-10-15', '102030101', 'Customer debit for Rent Invoice# 000071', 80000.00, 0.00, 0, '1', '3', '2022-10-15 12:54:51', NULL, NULL, '1'),
(487, '000071', 'CIV', '2022-10-15', '30301', 'Hotel Credited for Hotel Rent Invoice# 000071', 0.00, 80000.00, 0, '1', '3', '2022-10-15 12:54:51', NULL, NULL, '1'),
(488, '000071', 'CIV', '2022-10-15', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000071', 0.00, 0.00, 0, '1', '3', '2022-10-15 12:54:51', NULL, NULL, '1'),
(489, '000071', 'CIV', '2022-10-15', '102030101', 'Customer Credit for Rent Invoice# 000071', 0.00, 80000.00, 0, '1', '3', '2022-10-15 12:54:51', NULL, NULL, '1'),
(490, '000071', 'CIV', '2022-10-15', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000071', 0.00, 0.00, 0, '1', '3', '2022-10-15 12:54:51', NULL, NULL, '1'),
(491, '000071', 'CIV', '2022-10-15', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000071', 0.00, 0.00, 0, '1', '3', '2022-10-15 12:54:51', NULL, NULL, '1'),
(492, '000072', 'CIV', '2022-10-15', '1020101', 'Cash in Hand Debited For advance payment Invoice# 000072', 60000.00, 0.00, 0, '1', '3', '2022-10-15 13:21:52', NULL, NULL, '1'),
(493, '000072', 'CIV', '2022-10-15', '30301', 'Hotel credited for room advance rent Invoice# 000072', 0.00, 60000.00, 0, '1', '3', '2022-10-15 13:21:52', NULL, NULL, '1'),
(494, '000072', 'CIV', '2022-10-15', '102030101', 'Hotel customer debited for advance room booking Invoice# 000072', 60000.00, 0.00, 0, '1', '3', '2022-10-15 13:21:52', NULL, NULL, '1'),
(495, '000072', 'CIV', '2022-10-15', '102030101', 'Hotel customer credited for advance room booking Invoice# 000072', 0.00, 60000.00, 0, '1', '3', '2022-10-15 13:21:52', NULL, NULL, '1'),
(496, '000073', 'CIV', '2022-10-15', '1020101', 'Cash in Hand Debited For advance payment Invoice# 000073', 100000.00, 0.00, 0, '1', '3', '2022-10-15 13:25:27', NULL, NULL, '1'),
(497, '000073', 'CIV', '2022-10-15', '30301', 'Hotel credited for room advance rent Invoice# 000073', 0.00, 100000.00, 0, '1', '3', '2022-10-15 13:25:27', NULL, NULL, '1'),
(498, '000073', 'CIV', '2022-10-15', '102030101', 'Hotel customer debited for advance room booking Invoice# 000073', 100000.00, 0.00, 0, '1', '3', '2022-10-15 13:25:27', NULL, NULL, '1'),
(499, '000073', 'CIV', '2022-10-15', '102030101', 'Hotel customer credited for advance room booking Invoice# 000073', 0.00, 100000.00, 0, '1', '3', '2022-10-15 13:25:27', NULL, NULL, '1'),
(500, '000074', 'CIV', '2022-10-16', '1020101', 'Cash in Hand Debited For Invoice#000074', 130000.00, 0.00, 0, '1', '2', '2022-10-16 11:25:11', NULL, NULL, '1'),
(501, '000074', 'CIV', '2022-10-16', '102030101', 'Customer debit for Rent Invoice# 000074', 130000.00, 0.00, 0, '1', '2', '2022-10-16 11:25:11', NULL, NULL, '1'),
(502, '000074', 'CIV', '2022-10-16', '30301', 'Hotel Credited for Hotel Rent Invoice# 000074', 0.00, 130000.00, 0, '1', '2', '2022-10-16 11:25:11', NULL, NULL, '1'),
(503, '000074', 'CIV', '2022-10-16', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000074', 0.00, 0.00, 0, '1', '2', '2022-10-16 11:25:11', NULL, NULL, '1'),
(504, '000074', 'CIV', '2022-10-16', '102030101', 'Customer Credit for Rent Invoice# 000074', 0.00, 130000.00, 0, '1', '2', '2022-10-16 11:25:11', NULL, NULL, '1'),
(505, '000074', 'CIV', '2022-10-16', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000074', 0.00, 0.00, 0, '1', '2', '2022-10-16 11:25:11', NULL, NULL, '1'),
(506, '000074', 'CIV', '2022-10-16', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000074', 0.00, 0.00, 0, '1', '2', '2022-10-16 11:25:11', NULL, NULL, '1'),
(507, '000075', 'CIV', '2022-10-16', '1020101', 'Cash in Hand Debited For Invoice#000075', 120000.00, 0.00, 0, '1', '2', '2022-10-16 11:31:27', NULL, NULL, '1'),
(508, '000075', 'CIV', '2022-10-16', '102030101', 'Customer debit for Rent Invoice# 000075', 120000.00, 0.00, 0, '1', '2', '2022-10-16 11:31:27', NULL, NULL, '1'),
(509, '000075', 'CIV', '2022-10-16', '30301', 'Hotel Credited for Hotel Rent Invoice# 000075', 0.00, 120000.00, 0, '1', '2', '2022-10-16 11:31:27', NULL, NULL, '1'),
(510, '000075', 'CIV', '2022-10-16', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000075', 0.00, 0.00, 0, '1', '2', '2022-10-16 11:31:27', NULL, NULL, '1'),
(511, '000075', 'CIV', '2022-10-16', '102030101', 'Customer Credit for Rent Invoice# 000075', 0.00, 120000.00, 0, '1', '2', '2022-10-16 11:31:27', NULL, NULL, '1'),
(512, '000075', 'CIV', '2022-10-16', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000075', 0.00, 0.00, 0, '1', '2', '2022-10-16 11:31:27', NULL, NULL, '1'),
(513, '000075', 'CIV', '2022-10-16', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000075', 0.00, 0.00, 0, '1', '2', '2022-10-16 11:31:27', NULL, NULL, '1'),
(514, '000076', 'CIV', '2022-10-16', '1020101', 'Cash in Hand Debited For Invoice#000076', 120000.00, 0.00, 0, '1', '2', '2022-10-16 11:32:04', NULL, NULL, '1'),
(515, '000076', 'CIV', '2022-10-16', '102030101', 'Customer debit for Rent Invoice# 000076', 120000.00, 0.00, 0, '1', '2', '2022-10-16 11:32:04', NULL, NULL, '1'),
(516, '000076', 'CIV', '2022-10-16', '30301', 'Hotel Credited for Hotel Rent Invoice# 000076', 0.00, 120000.00, 0, '1', '2', '2022-10-16 11:32:04', NULL, NULL, '1'),
(517, '000076', 'CIV', '2022-10-16', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000076', 0.00, 0.00, 0, '1', '2', '2022-10-16 11:32:04', NULL, NULL, '1'),
(518, '000076', 'CIV', '2022-10-16', '102030101', 'Customer Credit for Rent Invoice# 000076', 0.00, 120000.00, 0, '1', '2', '2022-10-16 11:32:04', NULL, NULL, '1'),
(519, '000076', 'CIV', '2022-10-16', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000076', 0.00, 0.00, 0, '1', '2', '2022-10-16 11:32:04', NULL, NULL, '1'),
(520, '000076', 'CIV', '2022-10-16', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000076', 0.00, 0.00, 0, '1', '2', '2022-10-16 11:32:04', NULL, NULL, '1'),
(521, '000077', 'CIV', '2022-10-16', '1020101', 'Cash in Hand Debited For Invoice#000077', 80000.00, 0.00, 0, '1', '2', '2022-10-16 11:34:03', NULL, NULL, '1'),
(522, '000077', 'CIV', '2022-10-16', '102030101', 'Customer debit for Rent Invoice# 000077', 80000.00, 0.00, 0, '1', '2', '2022-10-16 11:34:03', NULL, NULL, '1'),
(523, '000077', 'CIV', '2022-10-16', '30301', 'Hotel Credited for Hotel Rent Invoice# 000077', 0.00, 80000.00, 0, '1', '2', '2022-10-16 11:34:03', NULL, NULL, '1'),
(524, '000077', 'CIV', '2022-10-16', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000077', 0.00, 0.00, 0, '1', '2', '2022-10-16 11:34:03', NULL, NULL, '1'),
(525, '000077', 'CIV', '2022-10-16', '102030101', 'Customer Credit for Rent Invoice# 000077', 0.00, 80000.00, 0, '1', '2', '2022-10-16 11:34:03', NULL, NULL, '1'),
(526, '000077', 'CIV', '2022-10-16', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000077', 0.00, 0.00, 0, '1', '2', '2022-10-16 11:34:03', NULL, NULL, '1'),
(527, '000077', 'CIV', '2022-10-16', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000077', 0.00, 0.00, 0, '1', '2', '2022-10-16 11:34:03', NULL, NULL, '1'),
(528, '000078', 'CIV', '2022-10-16', '1020101', 'Cash in Hand Debited For Invoice#000078', 80000.00, 0.00, 0, '1', '2', '2022-10-16 11:34:48', NULL, NULL, '1'),
(529, '000078', 'CIV', '2022-10-16', '102030101', 'Customer debit for Rent Invoice# 000078', 80000.00, 0.00, 0, '1', '2', '2022-10-16 11:34:48', NULL, NULL, '1'),
(530, '000078', 'CIV', '2022-10-16', '30301', 'Hotel Credited for Hotel Rent Invoice# 000078', 0.00, 80000.00, 0, '1', '2', '2022-10-16 11:34:48', NULL, NULL, '1'),
(531, '000078', 'CIV', '2022-10-16', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000078', 0.00, 0.00, 0, '1', '2', '2022-10-16 11:34:48', NULL, NULL, '1'),
(532, '000078', 'CIV', '2022-10-16', '102030101', 'Customer Credit for Rent Invoice# 000078', 0.00, 80000.00, 0, '1', '2', '2022-10-16 11:34:48', NULL, NULL, '1'),
(533, '000078', 'CIV', '2022-10-16', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000078', 0.00, 0.00, 0, '1', '2', '2022-10-16 11:34:48', NULL, NULL, '1'),
(534, '000078', 'CIV', '2022-10-16', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000078', 0.00, 0.00, 0, '1', '2', '2022-10-16 11:34:48', NULL, NULL, '1'),
(535, '000079', 'CIV', '2022-10-16', '102010304', 'Cash in Card Debited For Invoice#000079', 260000.00, 0.00, 0, '1', '2', '2022-10-16 11:36:31', NULL, NULL, '1'),
(536, '000079', 'CIV', '2022-10-16', '102030101', 'Customer debit for Rent Invoice# 000079', 260000.00, 0.00, 0, '1', '2', '2022-10-16 11:36:31', NULL, NULL, '1'),
(537, '000079', 'CIV', '2022-10-16', '30301', 'Hotel Credited for Hotel Rent Invoice# 000079', 0.00, 260000.00, 0, '1', '2', '2022-10-16 11:36:31', NULL, NULL, '1'),
(538, '000079', 'CIV', '2022-10-16', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000079', 0.00, 0.00, 0, '1', '2', '2022-10-16 11:36:31', NULL, NULL, '1'),
(539, '000079', 'CIV', '2022-10-16', '102030101', 'Customer Credit for Rent Invoice# 000079', 0.00, 260000.00, 0, '1', '2', '2022-10-16 11:36:31', NULL, NULL, '1'),
(540, '000079', 'CIV', '2022-10-16', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000079', 0.00, 0.00, 0, '1', '2', '2022-10-16 11:36:31', NULL, NULL, '1'),
(541, '000079', 'CIV', '2022-10-16', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000079', 0.00, 0.00, 0, '1', '2', '2022-10-16 11:36:31', NULL, NULL, '1'),
(542, '000080', 'CIV', '2022-10-16', '102010301', 'Cash in Paypal Debited For Invoice#000080', 100000.00, 0.00, 0, '1', '2', '2022-10-16 11:37:37', NULL, NULL, '1'),
(543, '000080', 'CIV', '2022-10-16', '102030101', 'Customer debit for Rent Invoice# 000080', 100000.00, 0.00, 0, '1', '2', '2022-10-16 11:37:37', NULL, NULL, '1'),
(544, '000080', 'CIV', '2022-10-16', '30301', 'Hotel Credited for Hotel Rent Invoice# 000080', 0.00, 100000.00, 0, '1', '2', '2022-10-16 11:37:37', NULL, NULL, '1'),
(545, '000080', 'CIV', '2022-10-16', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000080', 0.00, 0.00, 0, '1', '2', '2022-10-16 11:37:37', NULL, NULL, '1'),
(546, '000080', 'CIV', '2022-10-16', '102030101', 'Customer Credit for Rent Invoice# 000080', 0.00, 100000.00, 0, '1', '2', '2022-10-16 11:37:37', NULL, NULL, '1'),
(547, '000080', 'CIV', '2022-10-16', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000080', 0.00, 0.00, 0, '1', '2', '2022-10-16 11:37:37', NULL, NULL, '1'),
(548, '000080', 'CIV', '2022-10-16', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000080', 0.00, 0.00, 0, '1', '2', '2022-10-16 11:37:37', NULL, NULL, '1'),
(549, '000081', 'CIV', '2022-10-16', '1020101', 'Cash in Hand Debited For advance payment Invoice# 000081', 130000.00, 0.00, 0, '1', '2', '2022-10-16 19:09:31', NULL, NULL, '1'),
(550, '000081', 'CIV', '2022-10-16', '30301', 'Hotel credited for room advance rent Invoice# 000081', 0.00, 130000.00, 0, '1', '2', '2022-10-16 19:09:31', NULL, NULL, '1'),
(551, '000081', 'CIV', '2022-10-16', '102030101', 'Hotel customer debited for advance room booking Invoice# 000081', 130000.00, 0.00, 0, '1', '2', '2022-10-16 19:09:31', NULL, NULL, '1'),
(552, '000081', 'CIV', '2022-10-16', '102030101', 'Hotel customer credited for advance room booking Invoice# 000081', 0.00, 130000.00, 0, '1', '2', '2022-10-16 19:09:31', NULL, NULL, '1'),
(553, '000082', 'CIV', '2022-10-16', '1020101', 'Cash in Hand Debited For advance payment Invoice# 000082', 120000.00, 0.00, 0, '1', '2', '2022-10-16 19:33:41', NULL, NULL, '1'),
(554, '000082', 'CIV', '2022-10-16', '30301', 'Hotel credited for room advance rent Invoice# 000082', 0.00, 120000.00, 0, '1', '2', '2022-10-16 19:33:41', NULL, NULL, '1'),
(555, '000082', 'CIV', '2022-10-16', '102030101', 'Hotel customer debited for advance room booking Invoice# 000082', 120000.00, 0.00, 0, '1', '2', '2022-10-16 19:33:41', NULL, NULL, '1'),
(556, '000082', 'CIV', '2022-10-16', '102030101', 'Hotel customer credited for advance room booking Invoice# 000082', 0.00, 120000.00, 0, '1', '2', '2022-10-16 19:33:41', NULL, NULL, '1'),
(557, '000083', 'CIV', '2022-10-16', '1020101', 'Cash in Hand Debited For advance payment Invoice# 000083', 130000.00, 0.00, 0, '1', '2', '2022-10-16 20:14:13', NULL, NULL, '1'),
(558, '000083', 'CIV', '2022-10-16', '30301', 'Hotel credited for room advance rent Invoice# 000083', 0.00, 130000.00, 0, '1', '2', '2022-10-16 20:14:13', NULL, NULL, '1'),
(559, '000083', 'CIV', '2022-10-16', '102030101', 'Hotel customer debited for advance room booking Invoice# 000083', 130000.00, 0.00, 0, '1', '2', '2022-10-16 20:14:13', NULL, NULL, '1'),
(560, '000083', 'CIV', '2022-10-16', '102030101', 'Hotel customer credited for advance room booking Invoice# 000083', 0.00, 130000.00, 0, '1', '2', '2022-10-16 20:14:13', NULL, NULL, '1'),
(561, '000084', 'CIV', '2022-10-16', '1020101', 'Cash in Hand Debited For advance payment Invoice# 000084', 70000.00, 0.00, 0, '1', '2', '2022-10-16 20:18:46', NULL, NULL, '1'),
(562, '000084', 'CIV', '2022-10-16', '30301', 'Hotel credited for room advance rent Invoice# 000084', 0.00, 70000.00, 0, '1', '2', '2022-10-16 20:18:46', NULL, NULL, '1'),
(563, '000084', 'CIV', '2022-10-16', '102030101', 'Hotel customer debited for advance room booking Invoice# 000084', 70000.00, 0.00, 0, '1', '2', '2022-10-16 20:18:46', NULL, NULL, '1'),
(564, '000084', 'CIV', '2022-10-16', '102030101', 'Hotel customer credited for advance room booking Invoice# 000084', 0.00, 70000.00, 0, '1', '2', '2022-10-16 20:18:46', NULL, NULL, '1'),
(565, '000083', 'CIV', '2022-10-17', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000083', 0.00, 0.00, 0, '1', '3', '2022-10-17 07:23:05', NULL, NULL, '1'),
(566, '000083', 'CIV', '2022-10-17', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000083', 0.00, 0.00, 0, '1', '3', '2022-10-17 07:23:05', NULL, NULL, '1'),
(567, '000083', 'CIV', '2022-10-17', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000083', 0.00, 0.00, 0, '1', '3', '2022-10-17 07:23:05', NULL, NULL, '1'),
(568, '000085', 'CIV', '2022-10-17', '1020101', 'Cash in Hand Debited For Invoice#000085', 100000.00, 0.00, 0, '1', '3', '2022-10-17 07:45:02', NULL, NULL, '1'),
(569, '000085', 'CIV', '2022-10-17', '102030101', 'Customer debit for Rent Invoice# 000085', 100000.00, 0.00, 0, '1', '3', '2022-10-17 07:45:02', NULL, NULL, '1'),
(570, '000085', 'CIV', '2022-10-17', '30301', 'Hotel Credited for Hotel Rent Invoice# 000085', 0.00, 100000.00, 0, '1', '3', '2022-10-17 07:45:02', NULL, NULL, '1'),
(571, '000085', 'CIV', '2022-10-17', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000085', 0.00, 0.00, 0, '1', '3', '2022-10-17 07:45:02', NULL, NULL, '1'),
(572, '000085', 'CIV', '2022-10-17', '102030101', 'Customer Credit for Rent Invoice# 000085', 0.00, 100000.00, 0, '1', '3', '2022-10-17 07:45:02', NULL, NULL, '1'),
(573, '000085', 'CIV', '2022-10-17', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000085', 0.00, 0.00, 0, '1', '3', '2022-10-17 07:45:02', NULL, NULL, '1'),
(574, '000085', 'CIV', '2022-10-17', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000085', 0.00, 0.00, 0, '1', '3', '2022-10-17 07:45:02', NULL, NULL, '1'),
(575, '000086', 'CIV', '2022-10-17', '102030101', 'Customer debit for Rent Invoice# 000086', 200000.00, 0.00, 0, '1', '3', '2022-10-17 07:46:33', NULL, NULL, '1'),
(576, '000086', 'CIV', '2022-10-17', '30301', 'Hotel Credited for Hotel Rent Invoice# 000086', 0.00, 200000.00, 0, '1', '3', '2022-10-17 07:46:33', NULL, NULL, '1'),
(577, '000086', 'CIV', '2022-10-17', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000086', 0.00, 0.00, 0, '1', '3', '2022-10-17 07:46:33', NULL, NULL, '1'),
(578, '000086', 'CIV', '2022-10-17', '102030101', 'Customer Credit for Rent Invoice# 000086', 0.00, 200000.00, 0, '1', '3', '2022-10-17 07:46:33', NULL, NULL, '1'),
(579, '000086', 'CIV', '2022-10-17', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000086', 0.00, 0.00, 0, '1', '3', '2022-10-17 07:46:33', NULL, NULL, '1'),
(580, '000086', 'CIV', '2022-10-17', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000086', 0.00, 0.00, 0, '1', '3', '2022-10-17 07:46:33', NULL, NULL, '1'),
(581, '000087', 'CIV', '2022-10-17', '1020101', 'Cash in Hand Debited For Invoice#000087', 147000.00, 0.00, 0, '1', '3', '2022-10-17 07:53:26', NULL, NULL, '1'),
(582, '000087', 'CIV', '2022-10-17', '102030101', 'Customer debit for Rent Invoice# 000087', 147000.00, 0.00, 0, '1', '3', '2022-10-17 07:53:26', NULL, NULL, '1'),
(583, '000087', 'CIV', '2022-10-17', '30301', 'Hotel Credited for Hotel Rent Invoice# 000087', 0.00, 147000.00, 0, '1', '3', '2022-10-17 07:53:26', NULL, NULL, '1'),
(584, '000087', 'CIV', '2022-10-17', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000087', 0.00, 0.00, 0, '1', '3', '2022-10-17 07:53:26', NULL, NULL, '1'),
(585, '000087', 'CIV', '2022-10-17', '102030101', 'Customer Credit for Rent Invoice# 000087', 0.00, 147000.00, 0, '1', '3', '2022-10-17 07:53:26', NULL, NULL, '1'),
(586, '000087', 'CIV', '2022-10-17', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000087', 0.00, 0.00, 0, '1', '3', '2022-10-17 07:53:26', NULL, NULL, '1'),
(587, '000087', 'CIV', '2022-10-17', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000087', 0.00, 0.00, 0, '1', '3', '2022-10-17 07:53:26', NULL, NULL, '1'),
(588, '000088', 'CIV', '2022-10-17', '1020101', 'Cash in Hand Debited For Invoice#000088', 80000.00, 0.00, 0, '1', '3', '2022-10-17 08:52:58', NULL, NULL, '1'),
(589, '000088', 'CIV', '2022-10-17', '102030101', 'Customer debit for Rent Invoice# 000088', 80000.00, 0.00, 0, '1', '3', '2022-10-17 08:52:58', NULL, NULL, '1'),
(590, '000088', 'CIV', '2022-10-17', '30301', 'Hotel Credited for Hotel Rent Invoice# 000088', 0.00, 80000.00, 0, '1', '3', '2022-10-17 08:52:58', NULL, NULL, '1'),
(591, '000088', 'CIV', '2022-10-17', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000088', 0.00, 0.00, 0, '1', '3', '2022-10-17 08:52:58', NULL, NULL, '1'),
(592, '000088', 'CIV', '2022-10-17', '102030101', 'Customer Credit for Rent Invoice# 000088', 0.00, 80000.00, 0, '1', '3', '2022-10-17 08:52:58', NULL, NULL, '1'),
(593, '000088', 'CIV', '2022-10-17', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000088', 0.00, 0.00, 0, '1', '3', '2022-10-17 08:52:58', NULL, NULL, '1'),
(594, '000088', 'CIV', '2022-10-17', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000088', 0.00, 0.00, 0, '1', '3', '2022-10-17 08:52:58', NULL, NULL, '1'),
(595, '000089', 'CIV', '2022-10-17', '1020101', 'Cash in Hand Debited For Invoice#000089', 200000.00, 0.00, 0, '1', '3', '2022-10-17 08:56:41', NULL, NULL, '1'),
(596, '000089', 'CIV', '2022-10-17', '102030101', 'Customer debit for Rent Invoice# 000089', 200000.00, 0.00, 0, '1', '3', '2022-10-17 08:56:41', NULL, NULL, '1'),
(597, '000089', 'CIV', '2022-10-17', '30301', 'Hotel Credited for Hotel Rent Invoice# 000089', 0.00, 200000.00, 0, '1', '3', '2022-10-17 08:56:41', NULL, NULL, '1'),
(598, '000089', 'CIV', '2022-10-17', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000089', 0.00, 0.00, 0, '1', '3', '2022-10-17 08:56:41', NULL, NULL, '1'),
(599, '000089', 'CIV', '2022-10-17', '102030101', 'Customer Credit for Rent Invoice# 000089', 0.00, 200000.00, 0, '1', '3', '2022-10-17 08:56:41', NULL, NULL, '1'),
(600, '000089', 'CIV', '2022-10-17', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000089', 0.00, 0.00, 0, '1', '3', '2022-10-17 08:56:41', NULL, NULL, '1'),
(601, '000089', 'CIV', '2022-10-17', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000089', 0.00, 0.00, 0, '1', '3', '2022-10-17 08:56:41', NULL, NULL, '1'),
(602, '000090', 'CIV', '2022-10-17', '1020101', 'Cash in Hand Debited For Invoice#000090', 80000.00, 0.00, 0, '1', '3', '2022-10-17 08:57:15', NULL, NULL, '1'),
(603, '000090', 'CIV', '2022-10-17', '102030101', 'Customer debit for Rent Invoice# 000090', 80000.00, 0.00, 0, '1', '3', '2022-10-17 08:57:15', NULL, NULL, '1'),
(604, '000090', 'CIV', '2022-10-17', '30301', 'Hotel Credited for Hotel Rent Invoice# 000090', 0.00, 80000.00, 0, '1', '3', '2022-10-17 08:57:15', NULL, NULL, '1'),
(605, '000090', 'CIV', '2022-10-17', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000090', 0.00, 0.00, 0, '1', '3', '2022-10-17 08:57:15', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES
(606, '000090', 'CIV', '2022-10-17', '102030101', 'Customer Credit for Rent Invoice# 000090', 0.00, 80000.00, 0, '1', '3', '2022-10-17 08:57:15', NULL, NULL, '1'),
(607, '000090', 'CIV', '2022-10-17', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000090', 0.00, 0.00, 0, '1', '3', '2022-10-17 08:57:15', NULL, NULL, '1'),
(608, '000090', 'CIV', '2022-10-17', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000090', 0.00, 0.00, 0, '1', '3', '2022-10-17 08:57:15', NULL, NULL, '1'),
(609, '000091', 'CIV', '2022-10-17', '102010304', 'Cash in Card Debited For Invoice#000091', 230000.00, 0.00, 0, '1', '3', '2022-10-17 09:00:36', NULL, NULL, '1'),
(610, '000091', 'CIV', '2022-10-17', '102030101', 'Customer debit for Rent Invoice# 000091', 230000.00, 0.00, 0, '1', '3', '2022-10-17 09:00:36', NULL, NULL, '1'),
(611, '000091', 'CIV', '2022-10-17', '30301', 'Hotel Credited for Hotel Rent Invoice# 000091', 0.00, 230000.00, 0, '1', '3', '2022-10-17 09:00:36', NULL, NULL, '1'),
(612, '000091', 'CIV', '2022-10-17', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000091', 0.00, 0.00, 0, '1', '3', '2022-10-17 09:00:36', NULL, NULL, '1'),
(613, '000091', 'CIV', '2022-10-17', '102030101', 'Customer Credit for Rent Invoice# 000091', 0.00, 230000.00, 0, '1', '3', '2022-10-17 09:00:36', NULL, NULL, '1'),
(614, '000091', 'CIV', '2022-10-17', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000091', 0.00, 0.00, 0, '1', '3', '2022-10-17 09:00:36', NULL, NULL, '1'),
(615, '000091', 'CIV', '2022-10-17', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000091', 0.00, 0.00, 0, '1', '3', '2022-10-17 09:00:36', NULL, NULL, '1'),
(616, '000092', 'CIV', '2022-10-17', '102010304', 'Cash in Card Debited For Invoice#000092', 184000.00, 0.00, 0, '1', '3', '2022-10-17 09:01:40', NULL, NULL, '1'),
(617, '000092', 'CIV', '2022-10-17', '102030101', 'Customer debit for Rent Invoice# 000092', 184000.00, 0.00, 0, '1', '3', '2022-10-17 09:01:40', NULL, NULL, '1'),
(618, '000092', 'CIV', '2022-10-17', '30301', 'Hotel Credited for Hotel Rent Invoice# 000092', 0.00, 184000.00, 0, '1', '3', '2022-10-17 09:01:40', NULL, NULL, '1'),
(619, '000092', 'CIV', '2022-10-17', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000092', 0.00, 0.00, 0, '1', '3', '2022-10-17 09:01:40', NULL, NULL, '1'),
(620, '000092', 'CIV', '2022-10-17', '102030101', 'Customer Credit for Rent Invoice# 000092', 0.00, 184000.00, 0, '1', '3', '2022-10-17 09:01:40', NULL, NULL, '1'),
(621, '000092', 'CIV', '2022-10-17', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000092', 0.00, 0.00, 0, '1', '3', '2022-10-17 09:01:40', NULL, NULL, '1'),
(622, '000092', 'CIV', '2022-10-17', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000092', 0.00, 0.00, 0, '1', '3', '2022-10-17 09:01:40', NULL, NULL, '1'),
(623, '000093', 'CIV', '2022-10-17', '1020101', 'Cash in Hand Debited For Invoice#000093', 230000.00, 0.00, 0, '1', '3', '2022-10-17 09:02:25', NULL, NULL, '1'),
(624, '000093', 'CIV', '2022-10-17', '102030101', 'Customer debit for Rent Invoice# 000093', 230000.00, 0.00, 0, '1', '3', '2022-10-17 09:02:25', NULL, NULL, '1'),
(625, '000093', 'CIV', '2022-10-17', '30301', 'Hotel Credited for Hotel Rent Invoice# 000093', 0.00, 230000.00, 0, '1', '3', '2022-10-17 09:02:25', NULL, NULL, '1'),
(626, '000093', 'CIV', '2022-10-17', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000093', 0.00, 0.00, 0, '1', '3', '2022-10-17 09:02:25', NULL, NULL, '1'),
(627, '000093', 'CIV', '2022-10-17', '102030101', 'Customer Credit for Rent Invoice# 000093', 0.00, 230000.00, 0, '1', '3', '2022-10-17 09:02:25', NULL, NULL, '1'),
(628, '000093', 'CIV', '2022-10-17', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000093', 0.00, 0.00, 0, '1', '3', '2022-10-17 09:02:25', NULL, NULL, '1'),
(629, '000093', 'CIV', '2022-10-17', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000093', 0.00, 0.00, 0, '1', '3', '2022-10-17 09:02:25', NULL, NULL, '1'),
(630, '000094', 'CIV', '2022-10-17', '102010304', 'Cash in Card Debited For Invoice#000094', 230000.00, 0.00, 0, '1', '3', '2022-10-17 09:03:10', NULL, NULL, '1'),
(631, '000094', 'CIV', '2022-10-17', '102030101', 'Customer debit for Rent Invoice# 000094', 230000.00, 0.00, 0, '1', '3', '2022-10-17 09:03:10', NULL, NULL, '1'),
(632, '000094', 'CIV', '2022-10-17', '30301', 'Hotel Credited for Hotel Rent Invoice# 000094', 0.00, 230000.00, 0, '1', '3', '2022-10-17 09:03:10', NULL, NULL, '1'),
(633, '000094', 'CIV', '2022-10-17', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000094', 0.00, 0.00, 0, '1', '3', '2022-10-17 09:03:10', NULL, NULL, '1'),
(634, '000094', 'CIV', '2022-10-17', '102030101', 'Customer Credit for Rent Invoice# 000094', 0.00, 230000.00, 0, '1', '3', '2022-10-17 09:03:10', NULL, NULL, '1'),
(635, '000094', 'CIV', '2022-10-17', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000094', 0.00, 0.00, 0, '1', '3', '2022-10-17 09:03:10', NULL, NULL, '1'),
(636, '000094', 'CIV', '2022-10-17', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000094', 0.00, 0.00, 0, '1', '3', '2022-10-17 09:03:10', NULL, NULL, '1'),
(637, '000095', 'CIV', '2022-10-17', '102010304', 'Cash in Card Debited For Invoice#000095', 260000.00, 0.00, 0, '1', '3', '2022-10-17 09:04:33', NULL, NULL, '1'),
(638, '000095', 'CIV', '2022-10-17', '102030101', 'Customer debit for Rent Invoice# 000095', 260000.00, 0.00, 0, '1', '3', '2022-10-17 09:04:33', NULL, NULL, '1'),
(639, '000095', 'CIV', '2022-10-17', '30301', 'Hotel Credited for Hotel Rent Invoice# 000095', 0.00, 260000.00, 0, '1', '3', '2022-10-17 09:04:33', NULL, NULL, '1'),
(640, '000095', 'CIV', '2022-10-17', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000095', 0.00, 0.00, 0, '1', '3', '2022-10-17 09:04:33', NULL, NULL, '1'),
(641, '000095', 'CIV', '2022-10-17', '102030101', 'Customer Credit for Rent Invoice# 000095', 0.00, 260000.00, 0, '1', '3', '2022-10-17 09:04:33', NULL, NULL, '1'),
(642, '000095', 'CIV', '2022-10-17', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000095', 0.00, 0.00, 0, '1', '3', '2022-10-17 09:04:33', NULL, NULL, '1'),
(643, '000095', 'CIV', '2022-10-17', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000095', 0.00, 0.00, 0, '1', '3', '2022-10-17 09:04:33', NULL, NULL, '1'),
(644, '000081', 'CIV', '2022-10-17', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000081', 0.00, 0.00, 0, '1', '3', '2022-10-17 09:06:46', NULL, NULL, '1'),
(645, '000081', 'CIV', '2022-10-17', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000081', 0.00, 0.00, 0, '1', '3', '2022-10-17 09:06:46', NULL, NULL, '1'),
(646, '000081', 'CIV', '2022-10-17', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000081', 0.00, 0.00, 0, '1', '3', '2022-10-17 09:06:46', NULL, NULL, '1'),
(647, '000096', 'CIV', '2022-10-17', '1020101', 'Cash in Hand Debited For Invoice#000096', 130000.00, 0.00, 0, '1', '3', '2022-10-17 09:07:56', NULL, NULL, '1'),
(648, '000096', 'CIV', '2022-10-17', '102030101', 'Customer debit for Rent Invoice# 000096', 130000.00, 0.00, 0, '1', '3', '2022-10-17 09:07:56', NULL, NULL, '1'),
(649, '000096', 'CIV', '2022-10-17', '30301', 'Hotel Credited for Hotel Rent Invoice# 000096', 0.00, 130000.00, 0, '1', '3', '2022-10-17 09:07:56', NULL, NULL, '1'),
(650, '000096', 'CIV', '2022-10-17', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000096', 0.00, 0.00, 0, '1', '3', '2022-10-17 09:07:56', NULL, NULL, '1'),
(651, '000096', 'CIV', '2022-10-17', '102030101', 'Customer Credit for Rent Invoice# 000096', 0.00, 130000.00, 0, '1', '3', '2022-10-17 09:07:56', NULL, NULL, '1'),
(652, '000096', 'CIV', '2022-10-17', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000096', 0.00, 0.00, 0, '1', '3', '2022-10-17 09:07:56', NULL, NULL, '1'),
(653, '000096', 'CIV', '2022-10-17', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000096', 0.00, 0.00, 0, '1', '3', '2022-10-17 09:07:56', NULL, NULL, '1'),
(654, '000082', 'CIV', '2022-10-17', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000082', 0.00, 0.00, 0, '1', '3', '2022-10-17 09:08:19', NULL, NULL, '1'),
(655, '000082', 'CIV', '2022-10-17', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000082', 0.00, 0.00, 0, '1', '3', '2022-10-17 09:08:19', NULL, NULL, '1'),
(656, '000082', 'CIV', '2022-10-17', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000082', 0.00, 0.00, 0, '1', '3', '2022-10-17 09:08:19', NULL, NULL, '1'),
(657, '000097', 'CIV', '2022-10-17', '1020101', 'Cash in Hand Debited For Invoice#000097', 156400.00, 0.00, 0, '1', '3', '2022-10-17 09:09:02', NULL, NULL, '1'),
(658, '000097', 'CIV', '2022-10-17', '102030101', 'Customer debit for Rent Invoice# 000097', 156400.00, 0.00, 0, '1', '3', '2022-10-17 09:09:02', NULL, NULL, '1'),
(659, '000097', 'CIV', '2022-10-17', '30301', 'Hotel Credited for Hotel Rent Invoice# 000097', 0.00, 156400.00, 0, '1', '3', '2022-10-17 09:09:02', NULL, NULL, '1'),
(660, '000097', 'CIV', '2022-10-17', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000097', 0.00, 0.00, 0, '1', '3', '2022-10-17 09:09:02', NULL, NULL, '1'),
(661, '000097', 'CIV', '2022-10-17', '102030101', 'Customer Credit for Rent Invoice# 000097', 0.00, 156400.00, 0, '1', '3', '2022-10-17 09:09:02', NULL, NULL, '1'),
(662, '000097', 'CIV', '2022-10-17', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000097', 0.00, 0.00, 0, '1', '3', '2022-10-17 09:09:02', NULL, NULL, '1'),
(663, '000097', 'CIV', '2022-10-17', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000097', 0.00, 0.00, 0, '1', '3', '2022-10-17 09:09:02', NULL, NULL, '1'),
(664, '000084', 'CIV', '2022-10-17', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000084', 0.00, 0.00, 0, '1', '3', '2022-10-17 09:09:48', NULL, NULL, '1'),
(665, '000084', 'CIV', '2022-10-17', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000084', 0.00, 0.00, 0, '1', '3', '2022-10-17 09:09:48', NULL, NULL, '1'),
(666, '000084', 'CIV', '2022-10-17', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000084', 0.00, 0.00, 0, '1', '3', '2022-10-17 09:09:48', NULL, NULL, '1'),
(667, '000098', 'CIV', '2022-10-18', '1020101', 'Cash in Hand Debited For advance payment Invoice# 000098', 75000.00, 0.00, 0, '1', '1', '2022-10-18 18:56:24', NULL, NULL, '1'),
(668, '000098', 'CIV', '2022-10-18', '30301', 'Hotel credited for room advance rent Invoice# 000098', 0.00, 75000.00, 0, '1', '1', '2022-10-18 18:56:24', NULL, NULL, '1'),
(669, '000098', 'CIV', '2022-10-18', '102030101', 'Hotel customer debited for advance room booking Invoice# 000098', 75000.00, 0.00, 0, '1', '1', '2022-10-18 18:56:24', NULL, NULL, '1'),
(670, '000098', 'CIV', '2022-10-18', '102030101', 'Hotel customer credited for advance room booking Invoice# 000098', 0.00, 75000.00, 0, '1', '1', '2022-10-18 18:56:24', NULL, NULL, '1'),
(671, '000099', 'CIV', '2022-10-19', '1020101', 'Cash in Hand Debited For Invoice#000099', 150000.00, 0.00, 0, '1', '3', '2022-10-19 11:36:29', NULL, NULL, '1'),
(672, '000099', 'CIV', '2022-10-19', '102030101', 'Customer debit for Rent Invoice# 000099', 150000.00, 0.00, 0, '1', '3', '2022-10-19 11:36:29', NULL, NULL, '1'),
(673, '000099', 'CIV', '2022-10-19', '30301', 'Hotel Credited for Hotel Rent Invoice# 000099', 0.00, 150000.00, 0, '1', '3', '2022-10-19 11:36:29', NULL, NULL, '1'),
(674, '000099', 'CIV', '2022-10-19', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000099', 0.00, 0.00, 0, '1', '3', '2022-10-19 11:36:29', NULL, NULL, '1'),
(675, '000099', 'CIV', '2022-10-19', '102030101', 'Customer Credit for Rent Invoice# 000099', 0.00, 150000.00, 0, '1', '3', '2022-10-19 11:36:29', NULL, NULL, '1'),
(676, '000099', 'CIV', '2022-10-19', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000099', 0.00, 0.00, 0, '1', '3', '2022-10-19 11:36:29', NULL, NULL, '1'),
(677, '000099', 'CIV', '2022-10-19', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000099', 0.00, 0.00, 0, '1', '3', '2022-10-19 11:36:29', NULL, NULL, '1'),
(678, '000100', 'CIV', '2022-10-19', '1020101', 'Cash in Hand Debited For Invoice#000100', 150000.00, 0.00, 0, '1', '3', '2022-10-19 11:36:29', NULL, NULL, '1'),
(679, '000100', 'CIV', '2022-10-19', '102030101', 'Customer debit for Rent Invoice# 000100', 150000.00, 0.00, 0, '1', '3', '2022-10-19 11:36:29', NULL, NULL, '1'),
(680, '000100', 'CIV', '2022-10-19', '30301', 'Hotel Credited for Hotel Rent Invoice# 000100', 0.00, 150000.00, 0, '1', '3', '2022-10-19 11:36:29', NULL, NULL, '1'),
(681, '000100', 'CIV', '2022-10-19', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000100', 0.00, 0.00, 0, '1', '3', '2022-10-19 11:36:29', NULL, NULL, '1'),
(682, '000100', 'CIV', '2022-10-19', '102030101', 'Customer Credit for Rent Invoice# 000100', 0.00, 150000.00, 0, '1', '3', '2022-10-19 11:36:29', NULL, NULL, '1'),
(683, '000100', 'CIV', '2022-10-19', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000100', 0.00, 0.00, 0, '1', '3', '2022-10-19 11:36:29', NULL, NULL, '1'),
(684, '000100', 'CIV', '2022-10-19', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000100', 0.00, 0.00, 0, '1', '3', '2022-10-19 11:36:29', NULL, NULL, '1'),
(685, '000101', 'CIV', '2022-10-19', '1020101', 'Cash in Hand Debited For Invoice#000101', 150000.00, 0.00, 0, '1', '3', '2022-10-19 11:36:30', NULL, NULL, '1'),
(686, '000101', 'CIV', '2022-10-19', '102030101', 'Customer debit for Rent Invoice# 000101', 150000.00, 0.00, 0, '1', '3', '2022-10-19 11:36:30', NULL, NULL, '1'),
(687, '000101', 'CIV', '2022-10-19', '30301', 'Hotel Credited for Hotel Rent Invoice# 000101', 0.00, 150000.00, 0, '1', '3', '2022-10-19 11:36:30', NULL, NULL, '1'),
(688, '000101', 'CIV', '2022-10-19', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000101', 0.00, 0.00, 0, '1', '3', '2022-10-19 11:36:30', NULL, NULL, '1'),
(689, '000101', 'CIV', '2022-10-19', '102030101', 'Customer Credit for Rent Invoice# 000101', 0.00, 150000.00, 0, '1', '3', '2022-10-19 11:36:30', NULL, NULL, '1'),
(690, '000101', 'CIV', '2022-10-19', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000101', 0.00, 0.00, 0, '1', '3', '2022-10-19 11:36:30', NULL, NULL, '1'),
(691, '000101', 'CIV', '2022-10-19', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000101', 0.00, 0.00, 0, '1', '3', '2022-10-19 11:36:30', NULL, NULL, '1'),
(692, '000102', 'CIV', '2022-10-19', '1020101', 'Cash in Hand Debited For Invoice#000102', 150000.00, 0.00, 0, '1', '3', '2022-10-19 11:36:31', NULL, NULL, '1'),
(693, '000102', 'CIV', '2022-10-19', '102030101', 'Customer debit for Rent Invoice# 000102', 150000.00, 0.00, 0, '1', '3', '2022-10-19 11:36:31', NULL, NULL, '1'),
(694, '000102', 'CIV', '2022-10-19', '30301', 'Hotel Credited for Hotel Rent Invoice# 000102', 0.00, 150000.00, 0, '1', '3', '2022-10-19 11:36:31', NULL, NULL, '1'),
(695, '000102', 'CIV', '2022-10-19', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000102', 0.00, 0.00, 0, '1', '3', '2022-10-19 11:36:31', NULL, NULL, '1'),
(696, '000102', 'CIV', '2022-10-19', '102030101', 'Customer Credit for Rent Invoice# 000102', 0.00, 150000.00, 0, '1', '3', '2022-10-19 11:36:31', NULL, NULL, '1'),
(697, '000102', 'CIV', '2022-10-19', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000102', 0.00, 0.00, 0, '1', '3', '2022-10-19 11:36:31', NULL, NULL, '1'),
(698, '000102', 'CIV', '2022-10-19', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000102', 0.00, 0.00, 0, '1', '3', '2022-10-19 11:36:31', NULL, NULL, '1'),
(699, '000103', 'CIV', '2022-10-19', '1020101', 'Cash in Hand Debited For Invoice#000103', 150000.00, 0.00, 0, '1', '3', '2022-10-19 11:36:31', NULL, NULL, '1'),
(700, '000103', 'CIV', '2022-10-19', '102030101', 'Customer debit for Rent Invoice# 000103', 150000.00, 0.00, 0, '1', '3', '2022-10-19 11:36:31', NULL, NULL, '1'),
(701, '000103', 'CIV', '2022-10-19', '30301', 'Hotel Credited for Hotel Rent Invoice# 000103', 0.00, 150000.00, 0, '1', '3', '2022-10-19 11:36:31', NULL, NULL, '1'),
(702, '000103', 'CIV', '2022-10-19', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000103', 0.00, 0.00, 0, '1', '3', '2022-10-19 11:36:31', NULL, NULL, '1'),
(703, '000103', 'CIV', '2022-10-19', '102030101', 'Customer Credit for Rent Invoice# 000103', 0.00, 150000.00, 0, '1', '3', '2022-10-19 11:36:31', NULL, NULL, '1'),
(704, '000103', 'CIV', '2022-10-19', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000103', 0.00, 0.00, 0, '1', '3', '2022-10-19 11:36:31', NULL, NULL, '1'),
(705, '000103', 'CIV', '2022-10-19', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000103', 0.00, 0.00, 0, '1', '3', '2022-10-19 11:36:31', NULL, NULL, '1'),
(706, '000104', 'CIV', '2022-10-19', '1020101', 'Cash in Hand Debited For Invoice#000104', 150000.00, 0.00, 0, '1', '3', '2022-10-19 11:36:33', NULL, NULL, '1'),
(707, '000104', 'CIV', '2022-10-19', '102030101', 'Customer debit for Rent Invoice# 000104', 150000.00, 0.00, 0, '1', '3', '2022-10-19 11:36:33', NULL, NULL, '1'),
(708, '000104', 'CIV', '2022-10-19', '30301', 'Hotel Credited for Hotel Rent Invoice# 000104', 0.00, 150000.00, 0, '1', '3', '2022-10-19 11:36:33', NULL, NULL, '1'),
(709, '000104', 'CIV', '2022-10-19', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000104', 0.00, 0.00, 0, '1', '3', '2022-10-19 11:36:33', NULL, NULL, '1'),
(710, '000104', 'CIV', '2022-10-19', '102030101', 'Customer Credit for Rent Invoice# 000104', 0.00, 150000.00, 0, '1', '3', '2022-10-19 11:36:33', NULL, NULL, '1'),
(711, '000104', 'CIV', '2022-10-19', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000104', 0.00, 0.00, 0, '1', '3', '2022-10-19 11:36:33', NULL, NULL, '1'),
(712, '000104', 'CIV', '2022-10-19', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000104', 0.00, 0.00, 0, '1', '3', '2022-10-19 11:36:33', NULL, NULL, '1'),
(713, '000105', 'CIV', '2022-10-19', '1020101', 'Cash in Hand Debited For Invoice#000105', 150000.00, 0.00, 0, '1', '3', '2022-10-19 11:36:41', NULL, NULL, '1'),
(714, '000105', 'CIV', '2022-10-19', '102030101', 'Customer debit for Rent Invoice# 000105', 150000.00, 0.00, 0, '1', '3', '2022-10-19 11:36:41', NULL, NULL, '1'),
(715, '000105', 'CIV', '2022-10-19', '30301', 'Hotel Credited for Hotel Rent Invoice# 000105', 0.00, 150000.00, 0, '1', '3', '2022-10-19 11:36:41', NULL, NULL, '1'),
(716, '000105', 'CIV', '2022-10-19', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000105', 0.00, 0.00, 0, '1', '3', '2022-10-19 11:36:41', NULL, NULL, '1'),
(717, '000105', 'CIV', '2022-10-19', '102030101', 'Customer Credit for Rent Invoice# 000105', 0.00, 150000.00, 0, '1', '3', '2022-10-19 11:36:41', NULL, NULL, '1'),
(718, '000105', 'CIV', '2022-10-19', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000105', 0.00, 0.00, 0, '1', '3', '2022-10-19 11:36:41', NULL, NULL, '1'),
(719, '000105', 'CIV', '2022-10-19', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000105', 0.00, 0.00, 0, '1', '3', '2022-10-19 11:36:41', NULL, NULL, '1'),
(720, '000106', 'CIV', '2022-10-19', '1020101', 'Cash in Hand Debited For Invoice#000106', 150000.00, 0.00, 0, '1', '3', '2022-10-19 11:37:38', NULL, NULL, '1'),
(721, '000106', 'CIV', '2022-10-19', '102030101', 'Customer debit for Rent Invoice# 000106', 150000.00, 0.00, 0, '1', '3', '2022-10-19 11:37:38', NULL, NULL, '1'),
(722, '000106', 'CIV', '2022-10-19', '30301', 'Hotel Credited for Hotel Rent Invoice# 000106', 0.00, 150000.00, 0, '1', '3', '2022-10-19 11:37:38', NULL, NULL, '1'),
(723, '000106', 'CIV', '2022-10-19', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000106', 0.00, 0.00, 0, '1', '3', '2022-10-19 11:37:38', NULL, NULL, '1'),
(724, '000106', 'CIV', '2022-10-19', '102030101', 'Customer Credit for Rent Invoice# 000106', 0.00, 150000.00, 0, '1', '3', '2022-10-19 11:37:38', NULL, NULL, '1'),
(725, '000106', 'CIV', '2022-10-19', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000106', 0.00, 0.00, 0, '1', '3', '2022-10-19 11:37:38', NULL, NULL, '1'),
(726, '000106', 'CIV', '2022-10-19', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000106', 0.00, 0.00, 0, '1', '3', '2022-10-19 11:37:38', NULL, NULL, '1'),
(727, '000107', 'CIV', '2022-10-19', '1020101', 'Cash in Hand Debited For Invoice#000107', 150000.00, 0.00, 0, '1', '3', '2022-10-19 11:37:49', NULL, NULL, '1'),
(728, '000107', 'CIV', '2022-10-19', '102030101', 'Customer debit for Rent Invoice# 000107', 150000.00, 0.00, 0, '1', '3', '2022-10-19 11:37:49', NULL, NULL, '1'),
(729, '000107', 'CIV', '2022-10-19', '30301', 'Hotel Credited for Hotel Rent Invoice# 000107', 0.00, 150000.00, 0, '1', '3', '2022-10-19 11:37:49', NULL, NULL, '1'),
(730, '000107', 'CIV', '2022-10-19', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000107', 0.00, 0.00, 0, '1', '3', '2022-10-19 11:37:49', NULL, NULL, '1'),
(731, '000107', 'CIV', '2022-10-19', '102030101', 'Customer Credit for Rent Invoice# 000107', 0.00, 150000.00, 0, '1', '3', '2022-10-19 11:37:49', NULL, NULL, '1'),
(732, '000107', 'CIV', '2022-10-19', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000107', 0.00, 0.00, 0, '1', '3', '2022-10-19 11:37:49', NULL, NULL, '1'),
(733, '000107', 'CIV', '2022-10-19', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000107', 0.00, 0.00, 0, '1', '3', '2022-10-19 11:37:49', NULL, NULL, '1'),
(734, '000108', 'CIV', '2022-10-19', '1020101', 'Cash in Hand Debited For Invoice#000108', 150000.00, 0.00, 0, '1', '3', '2022-10-19 11:40:43', NULL, NULL, '1'),
(735, '000108', 'CIV', '2022-10-19', '102030101', 'Customer debit for Rent Invoice# 000108', 150000.00, 0.00, 0, '1', '3', '2022-10-19 11:40:43', NULL, NULL, '1'),
(736, '000108', 'CIV', '2022-10-19', '30301', 'Hotel Credited for Hotel Rent Invoice# 000108', 0.00, 150000.00, 0, '1', '3', '2022-10-19 11:40:43', NULL, NULL, '1'),
(737, '000108', 'CIV', '2022-10-19', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000108', 0.00, 0.00, 0, '1', '3', '2022-10-19 11:40:43', NULL, NULL, '1'),
(738, '000108', 'CIV', '2022-10-19', '102030101', 'Customer Credit for Rent Invoice# 000108', 0.00, 150000.00, 0, '1', '3', '2022-10-19 11:40:43', NULL, NULL, '1'),
(739, '000108', 'CIV', '2022-10-19', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000108', 0.00, 0.00, 0, '1', '3', '2022-10-19 11:40:43', NULL, NULL, '1'),
(740, '000108', 'CIV', '2022-10-19', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000108', 0.00, 0.00, 0, '1', '3', '2022-10-19 11:40:43', NULL, NULL, '1'),
(741, '000109', 'CIV', '2022-10-19', '1020101', 'Cash in Hand Debited For Invoice#000109', 150000.00, 0.00, 0, '1', '3', '2022-10-19 14:07:04', NULL, NULL, '1'),
(742, '000109', 'CIV', '2022-10-19', '102030101', 'Customer debit for Rent Invoice# 000109', 150000.00, 0.00, 0, '1', '3', '2022-10-19 14:07:04', NULL, NULL, '1'),
(743, '000109', 'CIV', '2022-10-19', '30301', 'Hotel Credited for Hotel Rent Invoice# 000109', 0.00, 150000.00, 0, '1', '3', '2022-10-19 14:07:04', NULL, NULL, '1'),
(744, '000109', 'CIV', '2022-10-19', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000109', 0.00, 0.00, 0, '1', '3', '2022-10-19 14:07:04', NULL, NULL, '1'),
(745, '000109', 'CIV', '2022-10-19', '102030101', 'Customer Credit for Rent Invoice# 000109', 0.00, 150000.00, 0, '1', '3', '2022-10-19 14:07:04', NULL, NULL, '1'),
(746, '000109', 'CIV', '2022-10-19', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000109', 0.00, 0.00, 0, '1', '3', '2022-10-19 14:07:04', NULL, NULL, '1'),
(747, '000109', 'CIV', '2022-10-19', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000109', 0.00, 0.00, 0, '1', '3', '2022-10-19 14:07:04', NULL, NULL, '1'),
(748, '000110', 'CIV', '2022-10-19', '1020101', 'Cash in Hand Debited For Invoice#000110', 150000.00, 0.00, 0, '1', '3', '2022-10-19 14:07:05', NULL, NULL, '1'),
(749, '000110', 'CIV', '2022-10-19', '102030101', 'Customer debit for Rent Invoice# 000110', 150000.00, 0.00, 0, '1', '3', '2022-10-19 14:07:05', NULL, NULL, '1'),
(750, '000110', 'CIV', '2022-10-19', '30301', 'Hotel Credited for Hotel Rent Invoice# 000110', 0.00, 150000.00, 0, '1', '3', '2022-10-19 14:07:05', NULL, NULL, '1'),
(751, '000110', 'CIV', '2022-10-19', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000110', 0.00, 0.00, 0, '1', '3', '2022-10-19 14:07:05', NULL, NULL, '1'),
(752, '000110', 'CIV', '2022-10-19', '102030101', 'Customer Credit for Rent Invoice# 000110', 0.00, 150000.00, 0, '1', '3', '2022-10-19 14:07:05', NULL, NULL, '1'),
(753, '000110', 'CIV', '2022-10-19', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000110', 0.00, 0.00, 0, '1', '3', '2022-10-19 14:07:05', NULL, NULL, '1'),
(754, '000110', 'CIV', '2022-10-19', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000110', 0.00, 0.00, 0, '1', '3', '2022-10-19 14:07:05', NULL, NULL, '1'),
(755, '000111', 'CIV', '2022-10-19', '102010304', 'Cash in Card Debited For Invoice#000111', 780000.00, 0.00, 0, '1', '3', '2022-10-19 14:07:41', NULL, NULL, '1'),
(756, '000111', 'CIV', '2022-10-19', '102030101', 'Customer debit for Rent Invoice# 000111', 780000.00, 0.00, 0, '1', '3', '2022-10-19 14:07:41', NULL, NULL, '1'),
(757, '000111', 'CIV', '2022-10-19', '30301', 'Hotel Credited for Hotel Rent Invoice# 000111', 0.00, 780000.00, 0, '1', '3', '2022-10-19 14:07:41', NULL, NULL, '1'),
(758, '000111', 'CIV', '2022-10-19', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000111', 0.00, 0.00, 0, '1', '3', '2022-10-19 14:07:41', NULL, NULL, '1'),
(759, '000111', 'CIV', '2022-10-19', '102030101', 'Customer Credit for Rent Invoice# 000111', 0.00, 780000.00, 0, '1', '3', '2022-10-19 14:07:41', NULL, NULL, '1'),
(760, '000111', 'CIV', '2022-10-19', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000111', 0.00, 0.00, 0, '1', '3', '2022-10-19 14:07:41', NULL, NULL, '1'),
(761, '000111', 'CIV', '2022-10-19', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000111', 0.00, 0.00, 0, '1', '3', '2022-10-19 14:07:41', NULL, NULL, '1'),
(762, '000112', 'CIV', '2022-10-19', '102010304', 'Cash in Card Debited For Invoice#000112', 200000.00, 0.00, 0, '1', '3', '2022-10-19 14:08:07', NULL, NULL, '1'),
(763, '000112', 'CIV', '2022-10-19', '102030101', 'Customer debit for Rent Invoice# 000112', 200000.00, 0.00, 0, '1', '3', '2022-10-19 14:08:07', NULL, NULL, '1'),
(764, '000112', 'CIV', '2022-10-19', '30301', 'Hotel Credited for Hotel Rent Invoice# 000112', 0.00, 200000.00, 0, '1', '3', '2022-10-19 14:08:07', NULL, NULL, '1'),
(765, '000112', 'CIV', '2022-10-19', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000112', 0.00, 0.00, 0, '1', '3', '2022-10-19 14:08:07', NULL, NULL, '1'),
(766, '000112', 'CIV', '2022-10-19', '102030101', 'Customer Credit for Rent Invoice# 000112', 0.00, 200000.00, 0, '1', '3', '2022-10-19 14:08:07', NULL, NULL, '1'),
(767, '000112', 'CIV', '2022-10-19', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000112', 0.00, 0.00, 0, '1', '3', '2022-10-19 14:08:07', NULL, NULL, '1'),
(768, '000112', 'CIV', '2022-10-19', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000112', 0.00, 0.00, 0, '1', '3', '2022-10-19 14:08:07', NULL, NULL, '1'),
(769, '000098', 'CIV', '2022-10-19', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000098', 0.00, 0.00, 0, '1', '3', '2022-10-19 14:09:32', NULL, NULL, '1'),
(770, '000098', 'CIV', '2022-10-19', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000098', 0.00, 0.00, 0, '1', '3', '2022-10-19 14:09:32', NULL, NULL, '1'),
(771, '000098', 'CIV', '2022-10-19', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000098', 0.00, 0.00, 0, '1', '3', '2022-10-19 14:09:32', NULL, NULL, '1'),
(772, '000098', 'CIV', '2022-10-19', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000098', 0.00, 0.00, 0, '1', '3', '2022-10-19 14:09:35', NULL, NULL, '1'),
(773, '000098', 'CIV', '2022-10-19', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000098', 0.00, 0.00, 0, '1', '3', '2022-10-19 14:09:35', NULL, NULL, '1'),
(774, '000098', 'CIV', '2022-10-19', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000098', 0.00, 0.00, 0, '1', '3', '2022-10-19 14:09:35', NULL, NULL, '1'),
(775, '000098', 'CIV', '2022-10-19', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000098', 0.00, 0.00, 0, '1', '3', '2022-10-19 14:09:36', NULL, NULL, '1'),
(776, '000098', 'CIV', '2022-10-19', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000098', 0.00, 0.00, 0, '1', '3', '2022-10-19 14:09:36', NULL, NULL, '1'),
(777, '000098', 'CIV', '2022-10-19', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000098', 0.00, 0.00, 0, '1', '3', '2022-10-19 14:09:36', NULL, NULL, '1'),
(778, '000098', 'CIV', '2022-10-19', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000098', 0.00, 0.00, 0, '1', '3', '2022-10-19 14:09:37', NULL, NULL, '1'),
(779, '000098', 'CIV', '2022-10-19', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000098', 0.00, 0.00, 0, '1', '3', '2022-10-19 14:09:37', NULL, NULL, '1'),
(780, '000098', 'CIV', '2022-10-19', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000098', 0.00, 0.00, 0, '1', '3', '2022-10-19 14:09:37', NULL, NULL, '1'),
(781, '000113', 'CIV', '2022-10-20', '1020101', 'Cash in Hand Debited For Invoice#000113', 480000.00, 0.00, 0, '1', '3', '2022-10-20 12:03:20', NULL, NULL, '1'),
(782, '000113', 'CIV', '2022-10-20', '102030101', 'Customer debit for Rent Invoice# 000113', 480000.00, 0.00, 0, '1', '3', '2022-10-20 12:03:20', NULL, NULL, '1'),
(783, '000113', 'CIV', '2022-10-20', '30301', 'Hotel Credited for Hotel Rent Invoice# 000113', 0.00, 480000.00, 0, '1', '3', '2022-10-20 12:03:20', NULL, NULL, '1'),
(784, '000113', 'CIV', '2022-10-20', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000113', 0.00, 0.00, 0, '1', '3', '2022-10-20 12:03:20', NULL, NULL, '1'),
(785, '000113', 'CIV', '2022-10-20', '102030101', 'Customer Credit for Rent Invoice# 000113', 0.00, 480000.00, 0, '1', '3', '2022-10-20 12:03:20', NULL, NULL, '1'),
(786, '000113', 'CIV', '2022-10-20', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000113', 0.00, 0.00, 0, '1', '3', '2022-10-20 12:03:20', NULL, NULL, '1'),
(787, '000113', 'CIV', '2022-10-20', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000113', 0.00, 0.00, 0, '1', '3', '2022-10-20 12:03:20', NULL, NULL, '1'),
(788, '000114', 'CIV', '2022-10-20', '1020101', 'Cash in Hand Debited For Invoice#000114', 120000.00, 0.00, 0, '1', '3', '2022-10-20 12:04:05', NULL, NULL, '1'),
(789, '000114', 'CIV', '2022-10-20', '102030101', 'Customer debit for Rent Invoice# 000114', 120000.00, 0.00, 0, '1', '3', '2022-10-20 12:04:05', NULL, NULL, '1'),
(790, '000114', 'CIV', '2022-10-20', '30301', 'Hotel Credited for Hotel Rent Invoice# 000114', 0.00, 120000.00, 0, '1', '3', '2022-10-20 12:04:05', NULL, NULL, '1'),
(791, '000114', 'CIV', '2022-10-20', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000114', 0.00, 0.00, 0, '1', '3', '2022-10-20 12:04:05', NULL, NULL, '1'),
(792, '000114', 'CIV', '2022-10-20', '102030101', 'Customer Credit for Rent Invoice# 000114', 0.00, 120000.00, 0, '1', '3', '2022-10-20 12:04:05', NULL, NULL, '1'),
(793, '000114', 'CIV', '2022-10-20', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000114', 0.00, 0.00, 0, '1', '3', '2022-10-20 12:04:05', NULL, NULL, '1'),
(794, '000114', 'CIV', '2022-10-20', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000114', 0.00, 0.00, 0, '1', '3', '2022-10-20 12:04:05', NULL, NULL, '1'),
(795, '000115', 'CIV', '2022-10-20', '1020101', 'Cash in Hand Debited For Invoice#000115', 80000.00, 0.00, 0, '1', '3', '2022-10-20 12:04:29', NULL, NULL, '1'),
(796, '000115', 'CIV', '2022-10-20', '102030101', 'Customer debit for Rent Invoice# 000115', 80000.00, 0.00, 0, '1', '3', '2022-10-20 12:04:29', NULL, NULL, '1'),
(797, '000115', 'CIV', '2022-10-20', '30301', 'Hotel Credited for Hotel Rent Invoice# 000115', 0.00, 80000.00, 0, '1', '3', '2022-10-20 12:04:29', NULL, NULL, '1'),
(798, '000115', 'CIV', '2022-10-20', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000115', 0.00, 0.00, 0, '1', '3', '2022-10-20 12:04:29', NULL, NULL, '1'),
(799, '000115', 'CIV', '2022-10-20', '102030101', 'Customer Credit for Rent Invoice# 000115', 0.00, 80000.00, 0, '1', '3', '2022-10-20 12:04:29', NULL, NULL, '1'),
(800, '000115', 'CIV', '2022-10-20', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000115', 0.00, 0.00, 0, '1', '3', '2022-10-20 12:04:29', NULL, NULL, '1'),
(801, '000115', 'CIV', '2022-10-20', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000115', 0.00, 0.00, 0, '1', '3', '2022-10-20 12:04:29', NULL, NULL, '1'),
(802, '000116', 'CIV', '2022-10-20', '1020101', 'Cash in Hand Debited For Invoice#000116', 100000.00, 0.00, 0, '1', '3', '2022-10-20 12:04:47', NULL, NULL, '1'),
(803, '000116', 'CIV', '2022-10-20', '102030101', 'Customer debit for Rent Invoice# 000116', 100000.00, 0.00, 0, '1', '3', '2022-10-20 12:04:47', NULL, NULL, '1'),
(804, '000116', 'CIV', '2022-10-20', '30301', 'Hotel Credited for Hotel Rent Invoice# 000116', 0.00, 100000.00, 0, '1', '3', '2022-10-20 12:04:47', NULL, NULL, '1'),
(805, '000116', 'CIV', '2022-10-20', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000116', 0.00, 0.00, 0, '1', '3', '2022-10-20 12:04:47', NULL, NULL, '1'),
(806, '000116', 'CIV', '2022-10-20', '102030101', 'Customer Credit for Rent Invoice# 000116', 0.00, 100000.00, 0, '1', '3', '2022-10-20 12:04:47', NULL, NULL, '1'),
(807, '000116', 'CIV', '2022-10-20', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000116', 0.00, 0.00, 0, '1', '3', '2022-10-20 12:04:47', NULL, NULL, '1'),
(808, '000116', 'CIV', '2022-10-20', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000116', 0.00, 0.00, 0, '1', '3', '2022-10-20 12:04:47', NULL, NULL, '1'),
(809, '000117', 'CIV', '2022-10-20', '102010301', 'Cash in Paypal Debited For Invoice#000117', 100000.00, 0.00, 0, '1', '3', '2022-10-20 12:05:34', NULL, NULL, '1'),
(810, '000117', 'CIV', '2022-10-20', '102030101', 'Customer debit for Rent Invoice# 000117', 100000.00, 0.00, 0, '1', '3', '2022-10-20 12:05:34', NULL, NULL, '1'),
(811, '000117', 'CIV', '2022-10-20', '30301', 'Hotel Credited for Hotel Rent Invoice# 000117', 0.00, 100000.00, 0, '1', '3', '2022-10-20 12:05:34', NULL, NULL, '1'),
(812, '000117', 'CIV', '2022-10-20', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000117', 0.00, 0.00, 0, '1', '3', '2022-10-20 12:05:34', NULL, NULL, '1'),
(813, '000117', 'CIV', '2022-10-20', '102030101', 'Customer Credit for Rent Invoice# 000117', 0.00, 100000.00, 0, '1', '3', '2022-10-20 12:05:34', NULL, NULL, '1'),
(814, '000117', 'CIV', '2022-10-20', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000117', 0.00, 0.00, 0, '1', '3', '2022-10-20 12:05:34', NULL, NULL, '1'),
(815, '000117', 'CIV', '2022-10-20', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000117', 0.00, 0.00, 0, '1', '3', '2022-10-20 12:05:34', NULL, NULL, '1'),
(816, '000118', 'CIV', '2022-10-20', '1020101', 'Cash in Hand Debited For Invoice#000118', 80000.00, 0.00, 0, '1', '3', '2022-10-20 12:38:26', NULL, NULL, '1'),
(817, '000118', 'CIV', '2022-10-20', '102030101', 'Customer debit for Rent Invoice# 000118', 80000.00, 0.00, 0, '1', '3', '2022-10-20 12:38:26', NULL, NULL, '1'),
(818, '000118', 'CIV', '2022-10-20', '30301', 'Hotel Credited for Hotel Rent Invoice# 000118', 0.00, 80000.00, 0, '1', '3', '2022-10-20 12:38:26', NULL, NULL, '1'),
(819, '000118', 'CIV', '2022-10-20', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000118', 0.00, 0.00, 0, '1', '3', '2022-10-20 12:38:26', NULL, NULL, '1'),
(820, '000118', 'CIV', '2022-10-20', '102030101', 'Customer Credit for Rent Invoice# 000118', 0.00, 80000.00, 0, '1', '3', '2022-10-20 12:38:26', NULL, NULL, '1'),
(821, '000118', 'CIV', '2022-10-20', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000118', 0.00, 0.00, 0, '1', '3', '2022-10-20 12:38:26', NULL, NULL, '1'),
(822, '000118', 'CIV', '2022-10-20', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000118', 0.00, 0.00, 0, '1', '3', '2022-10-20 12:38:26', NULL, NULL, '1'),
(823, '000119', 'CIV', '2022-10-21', '102010304', 'Cash in Card Debited For Invoice#000119', 150000.00, 0.00, 0, '1', '3', '2022-10-21 10:06:52', NULL, NULL, '1'),
(824, '000119', 'CIV', '2022-10-21', '102030101', 'Customer debit for Rent Invoice# 000119', 150000.00, 0.00, 0, '1', '3', '2022-10-21 10:06:52', NULL, NULL, '1'),
(825, '000119', 'CIV', '2022-10-21', '30301', 'Hotel Credited for Hotel Rent Invoice# 000119', 0.00, 150000.00, 0, '1', '3', '2022-10-21 10:06:52', NULL, NULL, '1'),
(826, '000119', 'CIV', '2022-10-21', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000119', 0.00, 0.00, 0, '1', '3', '2022-10-21 10:06:52', NULL, NULL, '1'),
(827, '000119', 'CIV', '2022-10-21', '102030101', 'Customer Credit for Rent Invoice# 000119', 0.00, 150000.00, 0, '1', '3', '2022-10-21 10:06:52', NULL, NULL, '1'),
(828, '000119', 'CIV', '2022-10-21', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000119', 0.00, 0.00, 0, '1', '3', '2022-10-21 10:06:52', NULL, NULL, '1'),
(829, '000119', 'CIV', '2022-10-21', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000119', 0.00, 0.00, 0, '1', '3', '2022-10-21 10:06:52', NULL, NULL, '1'),
(830, '000120', 'CIV', '2022-10-21', '1020101', 'Cash in Hand Debited For Invoice#000120', 300000.00, 0.00, 0, '1', '3', '2022-10-21 10:11:12', NULL, NULL, '1'),
(831, '000120', 'CIV', '2022-10-21', '102030101', 'Customer debit for Rent Invoice# 000120', 300000.00, 0.00, 0, '1', '3', '2022-10-21 10:11:12', NULL, NULL, '1'),
(832, '000120', 'CIV', '2022-10-21', '30301', 'Hotel Credited for Hotel Rent Invoice# 000120', 0.00, 300000.00, 0, '1', '3', '2022-10-21 10:11:12', NULL, NULL, '1'),
(833, '000120', 'CIV', '2022-10-21', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000120', 0.00, 0.00, 0, '1', '3', '2022-10-21 10:11:12', NULL, NULL, '1'),
(834, '000120', 'CIV', '2022-10-21', '102030101', 'Customer Credit for Rent Invoice# 000120', 0.00, 300000.00, 0, '1', '3', '2022-10-21 10:11:12', NULL, NULL, '1'),
(835, '000120', 'CIV', '2022-10-21', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000120', 0.00, 0.00, 0, '1', '3', '2022-10-21 10:11:12', NULL, NULL, '1'),
(836, '000120', 'CIV', '2022-10-21', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000120', 0.00, 0.00, 0, '1', '3', '2022-10-21 10:11:12', NULL, NULL, '1'),
(837, '000121', 'CIV', '2022-10-21', '1020101', 'Cash in Hand Debited For Invoice#000121', 240000.00, 0.00, 0, '1', '3', '2022-10-21 10:12:27', NULL, NULL, '1'),
(838, '000121', 'CIV', '2022-10-21', '102030101', 'Customer debit for Rent Invoice# 000121', 240000.00, 0.00, 0, '1', '3', '2022-10-21 10:12:27', NULL, NULL, '1'),
(839, '000121', 'CIV', '2022-10-21', '30301', 'Hotel Credited for Hotel Rent Invoice# 000121', 0.00, 240000.00, 0, '1', '3', '2022-10-21 10:12:27', NULL, NULL, '1'),
(840, '000121', 'CIV', '2022-10-21', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000121', 0.00, 0.00, 0, '1', '3', '2022-10-21 10:12:27', NULL, NULL, '1'),
(841, '000121', 'CIV', '2022-10-21', '102030101', 'Customer Credit for Rent Invoice# 000121', 0.00, 240000.00, 0, '1', '3', '2022-10-21 10:12:27', NULL, NULL, '1'),
(842, '000121', 'CIV', '2022-10-21', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000121', 0.00, 0.00, 0, '1', '3', '2022-10-21 10:12:27', NULL, NULL, '1'),
(843, '000121', 'CIV', '2022-10-21', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000121', 0.00, 0.00, 0, '1', '3', '2022-10-21 10:12:27', NULL, NULL, '1'),
(844, '000122', 'CIV', '2022-10-21', '1020101', 'Cash in Hand Debited For Invoice#000122', 240000.00, 0.00, 0, '1', '3', '2022-10-21 10:20:20', NULL, NULL, '1'),
(845, '000122', 'CIV', '2022-10-21', '102030101', 'Customer debit for Rent Invoice# 000122', 240000.00, 0.00, 0, '1', '3', '2022-10-21 10:20:20', NULL, NULL, '1'),
(846, '000122', 'CIV', '2022-10-21', '30301', 'Hotel Credited for Hotel Rent Invoice# 000122', 0.00, 240000.00, 0, '1', '3', '2022-10-21 10:20:20', NULL, NULL, '1'),
(847, '000122', 'CIV', '2022-10-21', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000122', 0.00, 0.00, 0, '1', '3', '2022-10-21 10:20:20', NULL, NULL, '1'),
(848, '000122', 'CIV', '2022-10-21', '102030101', 'Customer Credit for Rent Invoice# 000122', 0.00, 240000.00, 0, '1', '3', '2022-10-21 10:20:20', NULL, NULL, '1'),
(849, '000122', 'CIV', '2022-10-21', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000122', 0.00, 0.00, 0, '1', '3', '2022-10-21 10:20:20', NULL, NULL, '1'),
(850, '000122', 'CIV', '2022-10-21', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000122', 0.00, 0.00, 0, '1', '3', '2022-10-21 10:20:20', NULL, NULL, '1'),
(851, '000123', 'CIV', '2022-10-22', '102010304', 'Cash in Card Debited For Invoice#000123', 450000.00, 0.00, 0, '1', '2', '2022-10-22 09:59:02', NULL, NULL, '1'),
(852, '000123', 'CIV', '2022-10-22', '102030101', 'Customer debit for Rent Invoice# 000123', 450000.00, 0.00, 0, '1', '2', '2022-10-22 09:59:02', NULL, NULL, '1'),
(853, '000123', 'CIV', '2022-10-22', '30301', 'Hotel Credited for Hotel Rent Invoice# 000123', 0.00, 450000.00, 0, '1', '2', '2022-10-22 09:59:02', NULL, NULL, '1'),
(854, '000123', 'CIV', '2022-10-22', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000123', 0.00, 0.00, 0, '1', '2', '2022-10-22 09:59:02', NULL, NULL, '1'),
(855, '000123', 'CIV', '2022-10-22', '102030101', 'Customer Credit for Rent Invoice# 000123', 0.00, 450000.00, 0, '1', '2', '2022-10-22 09:59:02', NULL, NULL, '1'),
(856, '000123', 'CIV', '2022-10-22', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000123', 0.00, 0.00, 0, '1', '2', '2022-10-22 09:59:02', NULL, NULL, '1'),
(857, '000123', 'CIV', '2022-10-22', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000123', 0.00, 0.00, 0, '1', '2', '2022-10-22 09:59:02', NULL, NULL, '1'),
(858, '000124', 'CIV', '2022-10-22', '1020101', 'Cash in Hand Debited For Invoice#000124', 450000.00, 0.00, 0, '1', '2', '2022-10-22 10:05:31', NULL, NULL, '1'),
(859, '000124', 'CIV', '2022-10-22', '102030101', 'Customer debit for Rent Invoice# 000124', 450000.00, 0.00, 0, '1', '2', '2022-10-22 10:05:31', NULL, NULL, '1'),
(860, '000124', 'CIV', '2022-10-22', '30301', 'Hotel Credited for Hotel Rent Invoice# 000124', 0.00, 450000.00, 0, '1', '2', '2022-10-22 10:05:31', NULL, NULL, '1'),
(861, '000124', 'CIV', '2022-10-22', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000124', 0.00, 0.00, 0, '1', '2', '2022-10-22 10:05:31', NULL, NULL, '1'),
(862, '000124', 'CIV', '2022-10-22', '102030101', 'Customer Credit for Rent Invoice# 000124', 0.00, 450000.00, 0, '1', '2', '2022-10-22 10:05:31', NULL, NULL, '1'),
(863, '000124', 'CIV', '2022-10-22', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000124', 0.00, 0.00, 0, '1', '2', '2022-10-22 10:05:31', NULL, NULL, '1'),
(864, '000124', 'CIV', '2022-10-22', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000124', 0.00, 0.00, 0, '1', '2', '2022-10-22 10:05:31', NULL, NULL, '1'),
(865, '000125', 'CIV', '2022-10-22', '1020101', 'Cash in Hand Debited For Invoice#000125', 130000.00, 0.00, 0, '1', '2', '2022-10-22 10:06:33', NULL, NULL, '1'),
(866, '000125', 'CIV', '2022-10-22', '102030101', 'Customer debit for Rent Invoice# 000125', 130000.00, 0.00, 0, '1', '2', '2022-10-22 10:06:33', NULL, NULL, '1'),
(867, '000125', 'CIV', '2022-10-22', '30301', 'Hotel Credited for Hotel Rent Invoice# 000125', 0.00, 130000.00, 0, '1', '2', '2022-10-22 10:06:33', NULL, NULL, '1'),
(868, '000125', 'CIV', '2022-10-22', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000125', 0.00, 0.00, 0, '1', '2', '2022-10-22 10:06:33', NULL, NULL, '1'),
(869, '000125', 'CIV', '2022-10-22', '102030101', 'Customer Credit for Rent Invoice# 000125', 0.00, 130000.00, 0, '1', '2', '2022-10-22 10:06:33', NULL, NULL, '1'),
(870, '000125', 'CIV', '2022-10-22', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000125', 0.00, 0.00, 0, '1', '2', '2022-10-22 10:06:33', NULL, NULL, '1'),
(871, '000125', 'CIV', '2022-10-22', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000125', 0.00, 0.00, 0, '1', '2', '2022-10-22 10:06:33', NULL, NULL, '1'),
(872, '000126', 'CIV', '2022-10-22', '102010304', 'Cash in Card Debited For Invoice#000126', 130000.00, 0.00, 0, '1', '2', '2022-10-22 10:07:03', NULL, NULL, '1'),
(873, '000126', 'CIV', '2022-10-22', '102030101', 'Customer debit for Rent Invoice# 000126', 130000.00, 0.00, 0, '1', '2', '2022-10-22 10:07:03', NULL, NULL, '1'),
(874, '000126', 'CIV', '2022-10-22', '30301', 'Hotel Credited for Hotel Rent Invoice# 000126', 0.00, 130000.00, 0, '1', '2', '2022-10-22 10:07:03', NULL, NULL, '1'),
(875, '000126', 'CIV', '2022-10-22', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000126', 0.00, 0.00, 0, '1', '2', '2022-10-22 10:07:03', NULL, NULL, '1'),
(876, '000126', 'CIV', '2022-10-22', '102030101', 'Customer Credit for Rent Invoice# 000126', 0.00, 130000.00, 0, '1', '2', '2022-10-22 10:07:03', NULL, NULL, '1'),
(877, '000126', 'CIV', '2022-10-22', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000126', 0.00, 0.00, 0, '1', '2', '2022-10-22 10:07:03', NULL, NULL, '1'),
(878, '000126', 'CIV', '2022-10-22', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000126', 0.00, 0.00, 0, '1', '2', '2022-10-22 10:07:03', NULL, NULL, '1'),
(879, '000127', 'CIV', '2022-10-22', '1020101', 'Cash in Hand Debited For Invoice#000127', 100000.00, 0.00, 0, '1', '2', '2022-10-22 10:10:28', NULL, NULL, '1'),
(880, '000127', 'CIV', '2022-10-22', '102030101', 'Customer debit for Rent Invoice# 000127', 100000.00, 0.00, 0, '1', '2', '2022-10-22 10:10:28', NULL, NULL, '1'),
(881, '000127', 'CIV', '2022-10-22', '30301', 'Hotel Credited for Hotel Rent Invoice# 000127', 0.00, 100000.00, 0, '1', '2', '2022-10-22 10:10:28', NULL, NULL, '1'),
(882, '000127', 'CIV', '2022-10-22', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000127', 0.00, 0.00, 0, '1', '2', '2022-10-22 10:10:28', NULL, NULL, '1'),
(883, '000127', 'CIV', '2022-10-22', '102030101', 'Customer Credit for Rent Invoice# 000127', 0.00, 100000.00, 0, '1', '2', '2022-10-22 10:10:28', NULL, NULL, '1'),
(884, '000127', 'CIV', '2022-10-22', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000127', 0.00, 0.00, 0, '1', '2', '2022-10-22 10:10:28', NULL, NULL, '1'),
(885, '000127', 'CIV', '2022-10-22', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000127', 0.00, 0.00, 0, '1', '2', '2022-10-22 10:10:28', NULL, NULL, '1'),
(886, '000128', 'CIV', '2022-10-22', '102010304', 'Cash in Card Debited For Invoice#000128', 360000.00, 0.00, 0, '1', '2', '2022-10-22 10:23:39', NULL, NULL, '1'),
(887, '000128', 'CIV', '2022-10-22', '102030101', 'Customer debit for Rent Invoice# 000128', 360000.00, 0.00, 0, '1', '2', '2022-10-22 10:23:39', NULL, NULL, '1'),
(888, '000128', 'CIV', '2022-10-22', '30301', 'Hotel Credited for Hotel Rent Invoice# 000128', 0.00, 360000.00, 0, '1', '2', '2022-10-22 10:23:39', NULL, NULL, '1'),
(889, '000128', 'CIV', '2022-10-22', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000128', 0.00, 0.00, 0, '1', '2', '2022-10-22 10:23:39', NULL, NULL, '1'),
(890, '000128', 'CIV', '2022-10-22', '102030101', 'Customer Credit for Rent Invoice# 000128', 0.00, 360000.00, 0, '1', '2', '2022-10-22 10:23:39', NULL, NULL, '1'),
(891, '000128', 'CIV', '2022-10-22', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000128', 0.00, 0.00, 0, '1', '2', '2022-10-22 10:23:39', NULL, NULL, '1'),
(892, '000128', 'CIV', '2022-10-22', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000128', 0.00, 0.00, 0, '1', '2', '2022-10-22 10:23:39', NULL, NULL, '1'),
(893, '000129', 'CIV', '2022-10-22', '1020101', 'Cash in Hand Debited For Invoice#000129', 120000.00, 0.00, 0, '1', '2', '2022-10-22 10:24:30', NULL, NULL, '1'),
(894, '000129', 'CIV', '2022-10-22', '102030101', 'Customer debit for Rent Invoice# 000129', 120000.00, 0.00, 0, '1', '2', '2022-10-22 10:24:30', NULL, NULL, '1'),
(895, '000129', 'CIV', '2022-10-22', '30301', 'Hotel Credited for Hotel Rent Invoice# 000129', 0.00, 120000.00, 0, '1', '2', '2022-10-22 10:24:30', NULL, NULL, '1'),
(896, '000129', 'CIV', '2022-10-22', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000129', 0.00, 0.00, 0, '1', '2', '2022-10-22 10:24:30', NULL, NULL, '1'),
(897, '000129', 'CIV', '2022-10-22', '102030101', 'Customer Credit for Rent Invoice# 000129', 0.00, 120000.00, 0, '1', '2', '2022-10-22 10:24:30', NULL, NULL, '1'),
(898, '000129', 'CIV', '2022-10-22', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000129', 0.00, 0.00, 0, '1', '2', '2022-10-22 10:24:30', NULL, NULL, '1'),
(899, '000129', 'CIV', '2022-10-22', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000129', 0.00, 0.00, 0, '1', '2', '2022-10-22 10:24:30', NULL, NULL, '1'),
(900, '000130', 'CIV', '2022-10-22', '1020101', 'Cash in Hand Debited For Invoice#000130', 100000.00, 0.00, 0, '1', '2', '2022-10-22 10:25:20', NULL, NULL, '1'),
(901, '000130', 'CIV', '2022-10-22', '102030101', 'Customer debit for Rent Invoice# 000130', 100000.00, 0.00, 0, '1', '2', '2022-10-22 10:25:20', NULL, NULL, '1'),
(902, '000130', 'CIV', '2022-10-22', '30301', 'Hotel Credited for Hotel Rent Invoice# 000130', 0.00, 100000.00, 0, '1', '2', '2022-10-22 10:25:20', NULL, NULL, '1'),
(903, '000130', 'CIV', '2022-10-22', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000130', 0.00, 0.00, 0, '1', '2', '2022-10-22 10:25:20', NULL, NULL, '1'),
(904, '000130', 'CIV', '2022-10-22', '102030101', 'Customer Credit for Rent Invoice# 000130', 0.00, 100000.00, 0, '1', '2', '2022-10-22 10:25:20', NULL, NULL, '1'),
(905, '000130', 'CIV', '2022-10-22', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000130', 0.00, 0.00, 0, '1', '2', '2022-10-22 10:25:20', NULL, NULL, '1'),
(906, '000130', 'CIV', '2022-10-22', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000130', 0.00, 0.00, 0, '1', '2', '2022-10-22 10:25:20', NULL, NULL, '1'),
(907, '000131', 'CIV', '2022-10-22', '1020101', 'Cash in Hand Debited For Invoice#000131', 298000.00, 0.00, 0, '1', '2', '2022-10-22 10:25:59', NULL, NULL, '1'),
(908, '000131', 'CIV', '2022-10-22', '102030101', 'Customer debit for Rent Invoice# 000131', 298000.00, 0.00, 0, '1', '2', '2022-10-22 10:25:59', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES
(909, '000131', 'CIV', '2022-10-22', '30301', 'Hotel Credited for Hotel Rent Invoice# 000131', 0.00, 298000.00, 0, '1', '2', '2022-10-22 10:25:59', NULL, NULL, '1'),
(910, '000131', 'CIV', '2022-10-22', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000131', 0.00, 0.00, 0, '1', '2', '2022-10-22 10:25:59', NULL, NULL, '1'),
(911, '000131', 'CIV', '2022-10-22', '102030101', 'Customer Credit for Rent Invoice# 000131', 0.00, 298000.00, 0, '1', '2', '2022-10-22 10:25:59', NULL, NULL, '1'),
(912, '000131', 'CIV', '2022-10-22', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000131', 0.00, 0.00, 0, '1', '2', '2022-10-22 10:25:59', NULL, NULL, '1'),
(913, '000131', 'CIV', '2022-10-22', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000131', 0.00, 0.00, 0, '1', '2', '2022-10-22 10:25:59', NULL, NULL, '1'),
(914, '000132', 'CIV', '2022-10-22', '1020101', 'Cash in Hand Debited For Invoice#000132', 299000.00, 0.00, 0, '1', '2', '2022-10-22 10:26:39', NULL, NULL, '1'),
(915, '000132', 'CIV', '2022-10-22', '102030101', 'Customer debit for Rent Invoice# 000132', 299000.00, 0.00, 0, '1', '2', '2022-10-22 10:26:39', NULL, NULL, '1'),
(916, '000132', 'CIV', '2022-10-22', '30301', 'Hotel Credited for Hotel Rent Invoice# 000132', 0.00, 299000.00, 0, '1', '2', '2022-10-22 10:26:39', NULL, NULL, '1'),
(917, '000132', 'CIV', '2022-10-22', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000132', 0.00, 0.00, 0, '1', '2', '2022-10-22 10:26:39', NULL, NULL, '1'),
(918, '000132', 'CIV', '2022-10-22', '102030101', 'Customer Credit for Rent Invoice# 000132', 0.00, 299000.00, 0, '1', '2', '2022-10-22 10:26:39', NULL, NULL, '1'),
(919, '000132', 'CIV', '2022-10-22', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000132', 0.00, 0.00, 0, '1', '2', '2022-10-22 10:26:39', NULL, NULL, '1'),
(920, '000132', 'CIV', '2022-10-22', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000132', 0.00, 0.00, 0, '1', '2', '2022-10-22 10:26:39', NULL, NULL, '1'),
(921, '000133', 'CIV', '2022-10-22', '1020101', 'Cash in Hand Debited For Invoice#000133', 200000.00, 0.00, 0, '1', '2', '2022-10-22 10:27:23', NULL, NULL, '1'),
(922, '000133', 'CIV', '2022-10-22', '102030101', 'Customer debit for Rent Invoice# 000133', 200000.00, 0.00, 0, '1', '2', '2022-10-22 10:27:23', NULL, NULL, '1'),
(923, '000133', 'CIV', '2022-10-22', '30301', 'Hotel Credited for Hotel Rent Invoice# 000133', 0.00, 200000.00, 0, '1', '2', '2022-10-22 10:27:23', NULL, NULL, '1'),
(924, '000133', 'CIV', '2022-10-22', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000133', 0.00, 0.00, 0, '1', '2', '2022-10-22 10:27:23', NULL, NULL, '1'),
(925, '000133', 'CIV', '2022-10-22', '102030101', 'Customer Credit for Rent Invoice# 000133', 0.00, 200000.00, 0, '1', '2', '2022-10-22 10:27:23', NULL, NULL, '1'),
(926, '000133', 'CIV', '2022-10-22', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000133', 0.00, 0.00, 0, '1', '2', '2022-10-22 10:27:23', NULL, NULL, '1'),
(927, '000133', 'CIV', '2022-10-22', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000133', 0.00, 0.00, 0, '1', '2', '2022-10-22 10:27:23', NULL, NULL, '1'),
(928, '000134', 'CIV', '2022-10-22', '102010304', 'Cash in Card Debited For Invoice#000134', 100000.00, 0.00, 0, '1', '2', '2022-10-22 10:28:01', NULL, NULL, '1'),
(929, '000134', 'CIV', '2022-10-22', '102030101', 'Customer debit for Rent Invoice# 000134', 100000.00, 0.00, 0, '1', '2', '2022-10-22 10:28:01', NULL, NULL, '1'),
(930, '000134', 'CIV', '2022-10-22', '30301', 'Hotel Credited for Hotel Rent Invoice# 000134', 0.00, 100000.00, 0, '1', '2', '2022-10-22 10:28:01', NULL, NULL, '1'),
(931, '000134', 'CIV', '2022-10-22', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000134', 0.00, 0.00, 0, '1', '2', '2022-10-22 10:28:01', NULL, NULL, '1'),
(932, '000134', 'CIV', '2022-10-22', '102030101', 'Customer Credit for Rent Invoice# 000134', 0.00, 100000.00, 0, '1', '2', '2022-10-22 10:28:01', NULL, NULL, '1'),
(933, '000134', 'CIV', '2022-10-22', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000134', 0.00, 0.00, 0, '1', '2', '2022-10-22 10:28:01', NULL, NULL, '1'),
(934, '000134', 'CIV', '2022-10-22', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000134', 0.00, 0.00, 0, '1', '2', '2022-10-22 10:28:01', NULL, NULL, '1'),
(935, '000135', 'CIV', '2022-10-22', '102010301', 'Cash in Paypal Debited For Invoice#000135', 80000.00, 0.00, 0, '1', '2', '2022-10-22 10:34:55', NULL, NULL, '1'),
(936, '000135', 'CIV', '2022-10-22', '102030101', 'Customer debit for Rent Invoice# 000135', 80000.00, 0.00, 0, '1', '2', '2022-10-22 10:34:55', NULL, NULL, '1'),
(937, '000135', 'CIV', '2022-10-22', '30301', 'Hotel Credited for Hotel Rent Invoice# 000135', 0.00, 80000.00, 0, '1', '2', '2022-10-22 10:34:55', NULL, NULL, '1'),
(938, '000135', 'CIV', '2022-10-22', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000135', 0.00, 0.00, 0, '1', '2', '2022-10-22 10:34:55', NULL, NULL, '1'),
(939, '000135', 'CIV', '2022-10-22', '102030101', 'Customer Credit for Rent Invoice# 000135', 0.00, 80000.00, 0, '1', '2', '2022-10-22 10:34:55', NULL, NULL, '1'),
(940, '000135', 'CIV', '2022-10-22', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000135', 0.00, 0.00, 0, '1', '2', '2022-10-22 10:34:55', NULL, NULL, '1'),
(941, '000135', 'CIV', '2022-10-22', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000135', 0.00, 0.00, 0, '1', '2', '2022-10-22 10:34:55', NULL, NULL, '1'),
(942, '000136', 'CIV', '2022-10-23', '1020101', 'Cash in Hand Debited For Invoice#000136', 80000.00, 0.00, 0, '1', '3', '2022-10-23 11:51:46', NULL, NULL, '1'),
(943, '000136', 'CIV', '2022-10-23', '102030101', 'Customer debit for Rent Invoice# 000136', 80000.00, 0.00, 0, '1', '3', '2022-10-23 11:51:46', NULL, NULL, '1'),
(944, '000136', 'CIV', '2022-10-23', '30301', 'Hotel Credited for Hotel Rent Invoice# 000136', 0.00, 80000.00, 0, '1', '3', '2022-10-23 11:51:46', NULL, NULL, '1'),
(945, '000136', 'CIV', '2022-10-23', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000136', 0.00, 0.00, 0, '1', '3', '2022-10-23 11:51:46', NULL, NULL, '1'),
(946, '000136', 'CIV', '2022-10-23', '102030101', 'Customer Credit for Rent Invoice# 000136', 0.00, 80000.00, 0, '1', '3', '2022-10-23 11:51:46', NULL, NULL, '1'),
(947, '000136', 'CIV', '2022-10-23', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000136', 0.00, 0.00, 0, '1', '3', '2022-10-23 11:51:46', NULL, NULL, '1'),
(948, '000136', 'CIV', '2022-10-23', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000136', 0.00, 0.00, 0, '1', '3', '2022-10-23 11:51:46', NULL, NULL, '1'),
(949, '000137', 'CIV', '2022-10-23', '102010304', 'Cash in Card Debited For Invoice#000137', 150000.00, 0.00, 0, '1', '3', '2022-10-23 11:53:47', NULL, NULL, '1'),
(950, '000137', 'CIV', '2022-10-23', '102030101', 'Customer debit for Rent Invoice# 000137', 150000.00, 0.00, 0, '1', '3', '2022-10-23 11:53:47', NULL, NULL, '1'),
(951, '000137', 'CIV', '2022-10-23', '30301', 'Hotel Credited for Hotel Rent Invoice# 000137', 0.00, 150000.00, 0, '1', '3', '2022-10-23 11:53:47', NULL, NULL, '1'),
(952, '000137', 'CIV', '2022-10-23', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000137', 0.00, 0.00, 0, '1', '3', '2022-10-23 11:53:47', NULL, NULL, '1'),
(953, '000137', 'CIV', '2022-10-23', '102030101', 'Customer Credit for Rent Invoice# 000137', 0.00, 150000.00, 0, '1', '3', '2022-10-23 11:53:47', NULL, NULL, '1'),
(954, '000137', 'CIV', '2022-10-23', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000137', 0.00, 0.00, 0, '1', '3', '2022-10-23 11:53:47', NULL, NULL, '1'),
(955, '000137', 'CIV', '2022-10-23', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000137', 0.00, 0.00, 0, '1', '3', '2022-10-23 11:53:47', NULL, NULL, '1'),
(956, '000138', 'CIV', '2022-10-23', '102010304', 'Cash in Card Debited For Invoice#000138', 150000.00, 0.00, 0, '1', '3', '2022-10-23 11:54:16', NULL, NULL, '1'),
(957, '000138', 'CIV', '2022-10-23', '102030101', 'Customer debit for Rent Invoice# 000138', 150000.00, 0.00, 0, '1', '3', '2022-10-23 11:54:16', NULL, NULL, '1'),
(958, '000138', 'CIV', '2022-10-23', '30301', 'Hotel Credited for Hotel Rent Invoice# 000138', 0.00, 150000.00, 0, '1', '3', '2022-10-23 11:54:16', NULL, NULL, '1'),
(959, '000138', 'CIV', '2022-10-23', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000138', 0.00, 0.00, 0, '1', '3', '2022-10-23 11:54:16', NULL, NULL, '1'),
(960, '000138', 'CIV', '2022-10-23', '102030101', 'Customer Credit for Rent Invoice# 000138', 0.00, 150000.00, 0, '1', '3', '2022-10-23 11:54:16', NULL, NULL, '1'),
(961, '000138', 'CIV', '2022-10-23', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000138', 0.00, 0.00, 0, '1', '3', '2022-10-23 11:54:16', NULL, NULL, '1'),
(962, '000138', 'CIV', '2022-10-23', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000138', 0.00, 0.00, 0, '1', '3', '2022-10-23 11:54:16', NULL, NULL, '1'),
(963, '000139', 'CIV', '2022-10-23', '102010304', 'Cash in Card Debited For Invoice#000139', 120000.00, 0.00, 0, '1', '3', '2022-10-23 11:54:49', NULL, NULL, '1'),
(964, '000139', 'CIV', '2022-10-23', '102030101', 'Customer debit for Rent Invoice# 000139', 120000.00, 0.00, 0, '1', '3', '2022-10-23 11:54:49', NULL, NULL, '1'),
(965, '000139', 'CIV', '2022-10-23', '30301', 'Hotel Credited for Hotel Rent Invoice# 000139', 0.00, 120000.00, 0, '1', '3', '2022-10-23 11:54:49', NULL, NULL, '1'),
(966, '000139', 'CIV', '2022-10-23', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000139', 0.00, 0.00, 0, '1', '3', '2022-10-23 11:54:49', NULL, NULL, '1'),
(967, '000139', 'CIV', '2022-10-23', '102030101', 'Customer Credit for Rent Invoice# 000139', 0.00, 120000.00, 0, '1', '3', '2022-10-23 11:54:49', NULL, NULL, '1'),
(968, '000139', 'CIV', '2022-10-23', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000139', 0.00, 0.00, 0, '1', '3', '2022-10-23 11:54:49', NULL, NULL, '1'),
(969, '000139', 'CIV', '2022-10-23', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000139', 0.00, 0.00, 0, '1', '3', '2022-10-23 11:54:49', NULL, NULL, '1'),
(970, '000140', 'CIV', '2022-10-23', '102010304', 'Cash in Card Debited For Invoice#000140', 120000.00, 0.00, 0, '1', '3', '2022-10-23 11:55:21', NULL, NULL, '1'),
(971, '000140', 'CIV', '2022-10-23', '102030101', 'Customer debit for Rent Invoice# 000140', 120000.00, 0.00, 0, '1', '3', '2022-10-23 11:55:21', NULL, NULL, '1'),
(972, '000140', 'CIV', '2022-10-23', '30301', 'Hotel Credited for Hotel Rent Invoice# 000140', 0.00, 120000.00, 0, '1', '3', '2022-10-23 11:55:21', NULL, NULL, '1'),
(973, '000140', 'CIV', '2022-10-23', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000140', 0.00, 0.00, 0, '1', '3', '2022-10-23 11:55:21', NULL, NULL, '1'),
(974, '000140', 'CIV', '2022-10-23', '102030101', 'Customer Credit for Rent Invoice# 000140', 0.00, 120000.00, 0, '1', '3', '2022-10-23 11:55:21', NULL, NULL, '1'),
(975, '000140', 'CIV', '2022-10-23', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000140', 0.00, 0.00, 0, '1', '3', '2022-10-23 11:55:21', NULL, NULL, '1'),
(976, '000140', 'CIV', '2022-10-23', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000140', 0.00, 0.00, 0, '1', '3', '2022-10-23 11:55:21', NULL, NULL, '1'),
(977, '000141', 'CIV', '2022-10-23', '1020101', 'Cash in Hand Debited For advance payment Invoice# 000141', 120000.00, 0.00, 0, '1', '3', '2022-10-23 21:42:56', NULL, NULL, '1'),
(978, '000141', 'CIV', '2022-10-23', '30301', 'Hotel credited for room advance rent Invoice# 000141', 0.00, 120000.00, 0, '1', '3', '2022-10-23 21:42:56', NULL, NULL, '1'),
(979, '000141', 'CIV', '2022-10-23', '102030101', 'Hotel customer debited for advance room booking Invoice# 000141', 120000.00, 0.00, 0, '1', '3', '2022-10-23 21:42:56', NULL, NULL, '1'),
(980, '000141', 'CIV', '2022-10-23', '102030101', 'Hotel customer credited for advance room booking Invoice# 000141', 0.00, 120000.00, 0, '1', '3', '2022-10-23 21:42:56', NULL, NULL, '1'),
(981, '000142', 'CIV', '2022-10-24', '102010304', 'Cash in Card Debited For Invoice#000142', 165600.00, 0.00, 0, '1', '3', '2022-10-24 12:55:58', NULL, NULL, '1'),
(982, '000142', 'CIV', '2022-10-24', '102030101', 'Customer debit for Rent Invoice# 000142', 165600.00, 0.00, 0, '1', '3', '2022-10-24 12:55:58', NULL, NULL, '1'),
(983, '000142', 'CIV', '2022-10-24', '30301', 'Hotel Credited for Hotel Rent Invoice# 000142', 0.00, 165600.00, 0, '1', '3', '2022-10-24 12:55:58', NULL, NULL, '1'),
(984, '000142', 'CIV', '2022-10-24', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000142', 0.00, 0.00, 0, '1', '3', '2022-10-24 12:55:58', NULL, NULL, '1'),
(985, '000142', 'CIV', '2022-10-24', '102030101', 'Customer Credit for Rent Invoice# 000142', 0.00, 165600.00, 0, '1', '3', '2022-10-24 12:55:58', NULL, NULL, '1'),
(986, '000142', 'CIV', '2022-10-24', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000142', 0.00, 0.00, 0, '1', '3', '2022-10-24 12:55:58', NULL, NULL, '1'),
(987, '000142', 'CIV', '2022-10-24', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000142', 0.00, 0.00, 0, '1', '3', '2022-10-24 12:55:58', NULL, NULL, '1'),
(988, '000143', 'CIV', '2022-10-24', '102010304', 'Cash in Card Debited For Invoice#000143', 165600.00, 0.00, 0, '1', '3', '2022-10-24 12:56:55', NULL, NULL, '1'),
(989, '000143', 'CIV', '2022-10-24', '102030101', 'Customer debit for Rent Invoice# 000143', 165600.00, 0.00, 0, '1', '3', '2022-10-24 12:56:55', NULL, NULL, '1'),
(990, '000143', 'CIV', '2022-10-24', '30301', 'Hotel Credited for Hotel Rent Invoice# 000143', 0.00, 165600.00, 0, '1', '3', '2022-10-24 12:56:55', NULL, NULL, '1'),
(991, '000143', 'CIV', '2022-10-24', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000143', 0.00, 0.00, 0, '1', '3', '2022-10-24 12:56:55', NULL, NULL, '1'),
(992, '000143', 'CIV', '2022-10-24', '102030101', 'Customer Credit for Rent Invoice# 000143', 0.00, 165600.00, 0, '1', '3', '2022-10-24 12:56:55', NULL, NULL, '1'),
(993, '000143', 'CIV', '2022-10-24', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000143', 0.00, 0.00, 0, '1', '3', '2022-10-24 12:56:55', NULL, NULL, '1'),
(994, '000143', 'CIV', '2022-10-24', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000143', 0.00, 0.00, 0, '1', '3', '2022-10-24 12:56:55', NULL, NULL, '1'),
(995, '000144', 'CIV', '2022-10-24', '1020101', 'Cash in Hand Debited For Invoice#000144', 115000.00, 0.00, 0, '1', '3', '2022-10-24 12:57:20', NULL, NULL, '1'),
(996, '000144', 'CIV', '2022-10-24', '102030101', 'Customer debit for Rent Invoice# 000144', 115000.00, 0.00, 0, '1', '3', '2022-10-24 12:57:20', NULL, NULL, '1'),
(997, '000144', 'CIV', '2022-10-24', '30301', 'Hotel Credited for Hotel Rent Invoice# 000144', 0.00, 115000.00, 0, '1', '3', '2022-10-24 12:57:20', NULL, NULL, '1'),
(998, '000144', 'CIV', '2022-10-24', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000144', 0.00, 0.00, 0, '1', '3', '2022-10-24 12:57:20', NULL, NULL, '1'),
(999, '000144', 'CIV', '2022-10-24', '102030101', 'Customer Credit for Rent Invoice# 000144', 0.00, 115000.00, 0, '1', '3', '2022-10-24 12:57:20', NULL, NULL, '1'),
(1000, '000144', 'CIV', '2022-10-24', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000144', 0.00, 0.00, 0, '1', '3', '2022-10-24 12:57:20', NULL, NULL, '1'),
(1001, '000144', 'CIV', '2022-10-24', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000144', 0.00, 0.00, 0, '1', '3', '2022-10-24 12:57:20', NULL, NULL, '1'),
(1002, '000145', 'CIV', '2022-10-24', '102010304', 'Cash in Card Debited For Invoice#000145', 165600.00, 0.00, 0, '1', '3', '2022-10-24 12:57:36', NULL, NULL, '1'),
(1003, '000145', 'CIV', '2022-10-24', '102030101', 'Customer debit for Rent Invoice# 000145', 165600.00, 0.00, 0, '1', '3', '2022-10-24 12:57:36', NULL, NULL, '1'),
(1004, '000145', 'CIV', '2022-10-24', '30301', 'Hotel Credited for Hotel Rent Invoice# 000145', 0.00, 165600.00, 0, '1', '3', '2022-10-24 12:57:36', NULL, NULL, '1'),
(1005, '000145', 'CIV', '2022-10-24', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000145', 0.00, 0.00, 0, '1', '3', '2022-10-24 12:57:36', NULL, NULL, '1'),
(1006, '000145', 'CIV', '2022-10-24', '102030101', 'Customer Credit for Rent Invoice# 000145', 0.00, 165600.00, 0, '1', '3', '2022-10-24 12:57:36', NULL, NULL, '1'),
(1007, '000145', 'CIV', '2022-10-24', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000145', 0.00, 0.00, 0, '1', '3', '2022-10-24 12:57:36', NULL, NULL, '1'),
(1008, '000145', 'CIV', '2022-10-24', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000145', 0.00, 0.00, 0, '1', '3', '2022-10-24 12:57:36', NULL, NULL, '1'),
(1009, '000146', 'CIV', '2022-10-24', '102010304', 'Cash in Card Debited For Invoice#000146', 165600.00, 0.00, 0, '1', '3', '2022-10-24 12:58:50', NULL, NULL, '1'),
(1010, '000146', 'CIV', '2022-10-24', '102030101', 'Customer debit for Rent Invoice# 000146', 165600.00, 0.00, 0, '1', '3', '2022-10-24 12:58:50', NULL, NULL, '1'),
(1011, '000146', 'CIV', '2022-10-24', '30301', 'Hotel Credited for Hotel Rent Invoice# 000146', 0.00, 165600.00, 0, '1', '3', '2022-10-24 12:58:50', NULL, NULL, '1'),
(1012, '000146', 'CIV', '2022-10-24', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000146', 0.00, 0.00, 0, '1', '3', '2022-10-24 12:58:50', NULL, NULL, '1'),
(1013, '000146', 'CIV', '2022-10-24', '102030101', 'Customer Credit for Rent Invoice# 000146', 0.00, 165600.00, 0, '1', '3', '2022-10-24 12:58:50', NULL, NULL, '1'),
(1014, '000146', 'CIV', '2022-10-24', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000146', 0.00, 0.00, 0, '1', '3', '2022-10-24 12:58:50', NULL, NULL, '1'),
(1015, '000146', 'CIV', '2022-10-24', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000146', 0.00, 0.00, 0, '1', '3', '2022-10-24 12:58:50', NULL, NULL, '1'),
(1016, '000147', 'CIV', '2022-10-24', '1020101', 'Cash in Hand Debited For Invoice#000147', 240000.00, 0.00, 0, '1', '3', '2022-10-24 12:59:41', NULL, NULL, '1'),
(1017, '000147', 'CIV', '2022-10-24', '102030101', 'Customer debit for Rent Invoice# 000147', 240000.00, 0.00, 0, '1', '3', '2022-10-24 12:59:41', NULL, NULL, '1'),
(1018, '000147', 'CIV', '2022-10-24', '30301', 'Hotel Credited for Hotel Rent Invoice# 000147', 0.00, 240000.00, 0, '1', '3', '2022-10-24 12:59:41', NULL, NULL, '1'),
(1019, '000147', 'CIV', '2022-10-24', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000147', 0.00, 0.00, 0, '1', '3', '2022-10-24 12:59:41', NULL, NULL, '1'),
(1020, '000147', 'CIV', '2022-10-24', '102030101', 'Customer Credit for Rent Invoice# 000147', 0.00, 240000.00, 0, '1', '3', '2022-10-24 12:59:41', NULL, NULL, '1'),
(1021, '000147', 'CIV', '2022-10-24', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000147', 0.00, 0.00, 0, '1', '3', '2022-10-24 12:59:41', NULL, NULL, '1'),
(1022, '000147', 'CIV', '2022-10-24', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000147', 0.00, 0.00, 0, '1', '3', '2022-10-24 12:59:41', NULL, NULL, '1'),
(1023, '000148', 'CIV', '2022-10-24', '1020101', 'Cash in Hand Debited For Invoice#000148', 240000.00, 0.00, 0, '1', '3', '2022-10-24 13:00:12', NULL, NULL, '1'),
(1024, '000148', 'CIV', '2022-10-24', '102030101', 'Customer debit for Rent Invoice# 000148', 240000.00, 0.00, 0, '1', '3', '2022-10-24 13:00:12', NULL, NULL, '1'),
(1025, '000148', 'CIV', '2022-10-24', '30301', 'Hotel Credited for Hotel Rent Invoice# 000148', 0.00, 240000.00, 0, '1', '3', '2022-10-24 13:00:12', NULL, NULL, '1'),
(1026, '000148', 'CIV', '2022-10-24', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000148', 0.00, 0.00, 0, '1', '3', '2022-10-24 13:00:12', NULL, NULL, '1'),
(1027, '000148', 'CIV', '2022-10-24', '102030101', 'Customer Credit for Rent Invoice# 000148', 0.00, 240000.00, 0, '1', '3', '2022-10-24 13:00:12', NULL, NULL, '1'),
(1028, '000148', 'CIV', '2022-10-24', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000148', 0.00, 0.00, 0, '1', '3', '2022-10-24 13:00:12', NULL, NULL, '1'),
(1029, '000148', 'CIV', '2022-10-24', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000148', 0.00, 0.00, 0, '1', '3', '2022-10-24 13:00:12', NULL, NULL, '1'),
(1030, '000149', 'CIV', '2022-10-24', '102010301', 'Cash in Paypal Debited For Invoice#000149', 200000.00, 0.00, 0, '1', '3', '2022-10-24 13:31:17', NULL, NULL, '1'),
(1031, '000149', 'CIV', '2022-10-24', '102030101', 'Customer debit for Rent Invoice# 000149', 200000.00, 0.00, 0, '1', '3', '2022-10-24 13:31:17', NULL, NULL, '1'),
(1032, '000149', 'CIV', '2022-10-24', '30301', 'Hotel Credited for Hotel Rent Invoice# 000149', 0.00, 200000.00, 0, '1', '3', '2022-10-24 13:31:17', NULL, NULL, '1'),
(1033, '000149', 'CIV', '2022-10-24', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000149', 0.00, 0.00, 0, '1', '3', '2022-10-24 13:31:17', NULL, NULL, '1'),
(1034, '000149', 'CIV', '2022-10-24', '102030101', 'Customer Credit for Rent Invoice# 000149', 0.00, 200000.00, 0, '1', '3', '2022-10-24 13:31:17', NULL, NULL, '1'),
(1035, '000149', 'CIV', '2022-10-24', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000149', 0.00, 0.00, 0, '1', '3', '2022-10-24 13:31:17', NULL, NULL, '1'),
(1036, '000149', 'CIV', '2022-10-24', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000149', 0.00, 0.00, 0, '1', '3', '2022-10-24 13:31:17', NULL, NULL, '1'),
(1037, '000150', 'CIV', '2022-10-24', '1020101', 'Cash in Hand Debited For Invoice#000150', 80000.00, 0.00, 0, '1', '3', '2022-10-24 13:31:37', NULL, NULL, '1'),
(1038, '000150', 'CIV', '2022-10-24', '102030101', 'Customer debit for Rent Invoice# 000150', 80000.00, 0.00, 0, '1', '3', '2022-10-24 13:31:37', NULL, NULL, '1'),
(1039, '000150', 'CIV', '2022-10-24', '30301', 'Hotel Credited for Hotel Rent Invoice# 000150', 0.00, 80000.00, 0, '1', '3', '2022-10-24 13:31:37', NULL, NULL, '1'),
(1040, '000150', 'CIV', '2022-10-24', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000150', 0.00, 0.00, 0, '1', '3', '2022-10-24 13:31:37', NULL, NULL, '1'),
(1041, '000150', 'CIV', '2022-10-24', '102030101', 'Customer Credit for Rent Invoice# 000150', 0.00, 80000.00, 0, '1', '3', '2022-10-24 13:31:37', NULL, NULL, '1'),
(1042, '000150', 'CIV', '2022-10-24', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000150', 0.00, 0.00, 0, '1', '3', '2022-10-24 13:31:37', NULL, NULL, '1'),
(1043, '000150', 'CIV', '2022-10-24', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000150', 0.00, 0.00, 0, '1', '3', '2022-10-24 13:31:37', NULL, NULL, '1'),
(1044, '000151', 'CIV', '2022-10-24', '102010304', 'Cash in Card Debited For Invoice#000151', 100000.00, 0.00, 0, '1', '3', '2022-10-24 13:32:08', NULL, NULL, '1'),
(1045, '000151', 'CIV', '2022-10-24', '102030101', 'Customer debit for Rent Invoice# 000151', 100000.00, 0.00, 0, '1', '3', '2022-10-24 13:32:08', NULL, NULL, '1'),
(1046, '000151', 'CIV', '2022-10-24', '30301', 'Hotel Credited for Hotel Rent Invoice# 000151', 0.00, 100000.00, 0, '1', '3', '2022-10-24 13:32:08', NULL, NULL, '1'),
(1047, '000151', 'CIV', '2022-10-24', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000151', 0.00, 0.00, 0, '1', '3', '2022-10-24 13:32:08', NULL, NULL, '1'),
(1048, '000151', 'CIV', '2022-10-24', '102030101', 'Customer Credit for Rent Invoice# 000151', 0.00, 100000.00, 0, '1', '3', '2022-10-24 13:32:08', NULL, NULL, '1'),
(1049, '000151', 'CIV', '2022-10-24', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000151', 0.00, 0.00, 0, '1', '3', '2022-10-24 13:32:08', NULL, NULL, '1'),
(1050, '000151', 'CIV', '2022-10-24', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000151', 0.00, 0.00, 0, '1', '3', '2022-10-24 13:32:08', NULL, NULL, '1'),
(1051, '000152', 'CIV', '2022-10-25', '102010304', 'Cash in Card Debited For Invoice#000152', 150000.00, 0.00, 0, '1', '3', '2022-10-25 09:03:32', NULL, NULL, '1'),
(1052, '000152', 'CIV', '2022-10-25', '102030101', 'Customer debit for Rent Invoice# 000152', 150000.00, 0.00, 0, '1', '3', '2022-10-25 09:03:32', NULL, NULL, '1'),
(1053, '000152', 'CIV', '2022-10-25', '30301', 'Hotel Credited for Hotel Rent Invoice# 000152', 0.00, 150000.00, 0, '1', '3', '2022-10-25 09:03:32', NULL, NULL, '1'),
(1054, '000152', 'CIV', '2022-10-25', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000152', 0.00, 0.00, 0, '1', '3', '2022-10-25 09:03:32', NULL, NULL, '1'),
(1055, '000152', 'CIV', '2022-10-25', '102030101', 'Customer Credit for Rent Invoice# 000152', 0.00, 150000.00, 0, '1', '3', '2022-10-25 09:03:32', NULL, NULL, '1'),
(1056, '000152', 'CIV', '2022-10-25', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000152', 0.00, 0.00, 0, '1', '3', '2022-10-25 09:03:32', NULL, NULL, '1'),
(1057, '000152', 'CIV', '2022-10-25', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000152', 0.00, 0.00, 0, '1', '3', '2022-10-25 09:03:32', NULL, NULL, '1'),
(1058, '000153', 'CIV', '2022-10-25', '102010304', 'Cash in Card Debited For Invoice#000153', 150000.00, 0.00, 0, '1', '3', '2022-10-25 09:04:49', NULL, NULL, '1'),
(1059, '000153', 'CIV', '2022-10-25', '102030101', 'Customer debit for Rent Invoice# 000153', 150000.00, 0.00, 0, '1', '3', '2022-10-25 09:04:49', NULL, NULL, '1'),
(1060, '000153', 'CIV', '2022-10-25', '30301', 'Hotel Credited for Hotel Rent Invoice# 000153', 0.00, 150000.00, 0, '1', '3', '2022-10-25 09:04:49', NULL, NULL, '1'),
(1061, '000153', 'CIV', '2022-10-25', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000153', 0.00, 0.00, 0, '1', '3', '2022-10-25 09:04:49', NULL, NULL, '1'),
(1062, '000153', 'CIV', '2022-10-25', '102030101', 'Customer Credit for Rent Invoice# 000153', 0.00, 150000.00, 0, '1', '3', '2022-10-25 09:04:49', NULL, NULL, '1'),
(1063, '000153', 'CIV', '2022-10-25', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000153', 0.00, 0.00, 0, '1', '3', '2022-10-25 09:04:49', NULL, NULL, '1'),
(1064, '000153', 'CIV', '2022-10-25', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000153', 0.00, 0.00, 0, '1', '3', '2022-10-25 09:04:49', NULL, NULL, '1'),
(1065, '000154', 'CIV', '2022-10-25', '102010304', 'Cash in Card Debited For Invoice#000154', 150000.00, 0.00, 0, '1', '3', '2022-10-25 09:06:06', NULL, NULL, '1'),
(1066, '000154', 'CIV', '2022-10-25', '102030101', 'Customer debit for Rent Invoice# 000154', 150000.00, 0.00, 0, '1', '3', '2022-10-25 09:06:06', NULL, NULL, '1'),
(1067, '000154', 'CIV', '2022-10-25', '30301', 'Hotel Credited for Hotel Rent Invoice# 000154', 0.00, 150000.00, 0, '1', '3', '2022-10-25 09:06:06', NULL, NULL, '1'),
(1068, '000154', 'CIV', '2022-10-25', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000154', 0.00, 0.00, 0, '1', '3', '2022-10-25 09:06:06', NULL, NULL, '1'),
(1069, '000154', 'CIV', '2022-10-25', '102030101', 'Customer Credit for Rent Invoice# 000154', 0.00, 150000.00, 0, '1', '3', '2022-10-25 09:06:06', NULL, NULL, '1'),
(1070, '000154', 'CIV', '2022-10-25', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000154', 0.00, 0.00, 0, '1', '3', '2022-10-25 09:06:06', NULL, NULL, '1'),
(1071, '000154', 'CIV', '2022-10-25', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000154', 0.00, 0.00, 0, '1', '3', '2022-10-25 09:06:06', NULL, NULL, '1'),
(1072, '000155', 'CIV', '2022-10-25', '102010301', 'Cash in Paypal Debited For Invoice#000155', 130000.00, 0.00, 0, '1', '3', '2022-10-25 09:06:44', NULL, NULL, '1'),
(1073, '000155', 'CIV', '2022-10-25', '102030101', 'Customer debit for Rent Invoice# 000155', 130000.00, 0.00, 0, '1', '3', '2022-10-25 09:06:44', NULL, NULL, '1'),
(1074, '000155', 'CIV', '2022-10-25', '30301', 'Hotel Credited for Hotel Rent Invoice# 000155', 0.00, 130000.00, 0, '1', '3', '2022-10-25 09:06:44', NULL, NULL, '1'),
(1075, '000155', 'CIV', '2022-10-25', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000155', 0.00, 0.00, 0, '1', '3', '2022-10-25 09:06:44', NULL, NULL, '1'),
(1076, '000155', 'CIV', '2022-10-25', '102030101', 'Customer Credit for Rent Invoice# 000155', 0.00, 130000.00, 0, '1', '3', '2022-10-25 09:06:44', NULL, NULL, '1'),
(1077, '000155', 'CIV', '2022-10-25', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000155', 0.00, 0.00, 0, '1', '3', '2022-10-25 09:06:44', NULL, NULL, '1'),
(1078, '000155', 'CIV', '2022-10-25', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000155', 0.00, 0.00, 0, '1', '3', '2022-10-25 09:06:44', NULL, NULL, '1'),
(1079, '000156', 'CIV', '2022-10-25', '1020101', 'Cash in Hand Debited For Invoice#000156', 130000.00, 0.00, 0, '1', '3', '2022-10-25 09:07:11', NULL, NULL, '1'),
(1080, '000156', 'CIV', '2022-10-25', '102030101', 'Customer debit for Rent Invoice# 000156', 130000.00, 0.00, 0, '1', '3', '2022-10-25 09:07:11', NULL, NULL, '1'),
(1081, '000156', 'CIV', '2022-10-25', '30301', 'Hotel Credited for Hotel Rent Invoice# 000156', 0.00, 130000.00, 0, '1', '3', '2022-10-25 09:07:11', NULL, NULL, '1'),
(1082, '000156', 'CIV', '2022-10-25', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000156', 0.00, 0.00, 0, '1', '3', '2022-10-25 09:07:11', NULL, NULL, '1'),
(1083, '000156', 'CIV', '2022-10-25', '102030101', 'Customer Credit for Rent Invoice# 000156', 0.00, 130000.00, 0, '1', '3', '2022-10-25 09:07:11', NULL, NULL, '1'),
(1084, '000156', 'CIV', '2022-10-25', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000156', 0.00, 0.00, 0, '1', '3', '2022-10-25 09:07:11', NULL, NULL, '1'),
(1085, '000156', 'CIV', '2022-10-25', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000156', 0.00, 0.00, 0, '1', '3', '2022-10-25 09:07:11', NULL, NULL, '1'),
(1086, '000157', 'CIV', '2022-10-25', '102010304', 'Cash in Card Debited For Invoice#000157', 120000.00, 0.00, 0, '1', '3', '2022-10-25 09:08:21', NULL, NULL, '1'),
(1087, '000157', 'CIV', '2022-10-25', '102030101', 'Customer debit for Rent Invoice# 000157', 120000.00, 0.00, 0, '1', '3', '2022-10-25 09:08:21', NULL, NULL, '1'),
(1088, '000157', 'CIV', '2022-10-25', '30301', 'Hotel Credited for Hotel Rent Invoice# 000157', 0.00, 120000.00, 0, '1', '3', '2022-10-25 09:08:21', NULL, NULL, '1'),
(1089, '000157', 'CIV', '2022-10-25', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000157', 0.00, 0.00, 0, '1', '3', '2022-10-25 09:08:21', NULL, NULL, '1'),
(1090, '000157', 'CIV', '2022-10-25', '102030101', 'Customer Credit for Rent Invoice# 000157', 0.00, 120000.00, 0, '1', '3', '2022-10-25 09:08:21', NULL, NULL, '1'),
(1091, '000157', 'CIV', '2022-10-25', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000157', 0.00, 0.00, 0, '1', '3', '2022-10-25 09:08:21', NULL, NULL, '1'),
(1092, '000157', 'CIV', '2022-10-25', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000157', 0.00, 0.00, 0, '1', '3', '2022-10-25 09:08:21', NULL, NULL, '1'),
(1093, '000158', 'CIV', '2022-10-25', '102010304', 'Cash in Card Debited For Invoice#000158', 120000.00, 0.00, 0, '1', '3', '2022-10-25 09:08:47', NULL, NULL, '1'),
(1094, '000158', 'CIV', '2022-10-25', '102030101', 'Customer debit for Rent Invoice# 000158', 120000.00, 0.00, 0, '1', '3', '2022-10-25 09:08:47', NULL, NULL, '1'),
(1095, '000158', 'CIV', '2022-10-25', '30301', 'Hotel Credited for Hotel Rent Invoice# 000158', 0.00, 120000.00, 0, '1', '3', '2022-10-25 09:08:47', NULL, NULL, '1'),
(1096, '000158', 'CIV', '2022-10-25', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000158', 0.00, 0.00, 0, '1', '3', '2022-10-25 09:08:47', NULL, NULL, '1'),
(1097, '000158', 'CIV', '2022-10-25', '102030101', 'Customer Credit for Rent Invoice# 000158', 0.00, 120000.00, 0, '1', '3', '2022-10-25 09:08:47', NULL, NULL, '1'),
(1098, '000158', 'CIV', '2022-10-25', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000158', 0.00, 0.00, 0, '1', '3', '2022-10-25 09:08:47', NULL, NULL, '1'),
(1099, '000158', 'CIV', '2022-10-25', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000158', 0.00, 0.00, 0, '1', '3', '2022-10-25 09:08:47', NULL, NULL, '1'),
(1100, '000159', 'CIV', '2022-10-25', '1020101', 'Cash in Hand Debited For Invoice#000159', 120000.00, 0.00, 0, '1', '3', '2022-10-25 09:09:16', NULL, NULL, '1'),
(1101, '000159', 'CIV', '2022-10-25', '102030101', 'Customer debit for Rent Invoice# 000159', 120000.00, 0.00, 0, '1', '3', '2022-10-25 09:09:16', NULL, NULL, '1'),
(1102, '000159', 'CIV', '2022-10-25', '30301', 'Hotel Credited for Hotel Rent Invoice# 000159', 0.00, 120000.00, 0, '1', '3', '2022-10-25 09:09:16', NULL, NULL, '1'),
(1103, '000159', 'CIV', '2022-10-25', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000159', 0.00, 0.00, 0, '1', '3', '2022-10-25 09:09:16', NULL, NULL, '1'),
(1104, '000159', 'CIV', '2022-10-25', '102030101', 'Customer Credit for Rent Invoice# 000159', 0.00, 120000.00, 0, '1', '3', '2022-10-25 09:09:16', NULL, NULL, '1'),
(1105, '000159', 'CIV', '2022-10-25', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000159', 0.00, 0.00, 0, '1', '3', '2022-10-25 09:09:16', NULL, NULL, '1'),
(1106, '000159', 'CIV', '2022-10-25', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000159', 0.00, 0.00, 0, '1', '3', '2022-10-25 09:09:16', NULL, NULL, '1'),
(1107, '000160', 'CIV', '2022-10-25', '102010304', 'Cash in Card Debited For Invoice#000160', 100000.00, 0.00, 0, '1', '3', '2022-10-25 09:09:42', NULL, NULL, '1'),
(1108, '000160', 'CIV', '2022-10-25', '102030101', 'Customer debit for Rent Invoice# 000160', 100000.00, 0.00, 0, '1', '3', '2022-10-25 09:09:42', NULL, NULL, '1'),
(1109, '000160', 'CIV', '2022-10-25', '30301', 'Hotel Credited for Hotel Rent Invoice# 000160', 0.00, 100000.00, 0, '1', '3', '2022-10-25 09:09:42', NULL, NULL, '1'),
(1110, '000160', 'CIV', '2022-10-25', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000160', 0.00, 0.00, 0, '1', '3', '2022-10-25 09:09:42', NULL, NULL, '1'),
(1111, '000160', 'CIV', '2022-10-25', '102030101', 'Customer Credit for Rent Invoice# 000160', 0.00, 100000.00, 0, '1', '3', '2022-10-25 09:09:42', NULL, NULL, '1'),
(1112, '000160', 'CIV', '2022-10-25', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000160', 0.00, 0.00, 0, '1', '3', '2022-10-25 09:09:42', NULL, NULL, '1'),
(1113, '000160', 'CIV', '2022-10-25', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000160', 0.00, 0.00, 0, '1', '3', '2022-10-25 09:09:42', NULL, NULL, '1'),
(1114, '000161', 'CIV', '2022-10-25', '1020101', 'Cash in Hand Debited For Invoice#000161', 80000.00, 0.00, 0, '1', '3', '2022-10-25 09:10:13', NULL, NULL, '1'),
(1115, '000161', 'CIV', '2022-10-25', '102030101', 'Customer debit for Rent Invoice# 000161', 80000.00, 0.00, 0, '1', '3', '2022-10-25 09:10:13', NULL, NULL, '1'),
(1116, '000161', 'CIV', '2022-10-25', '30301', 'Hotel Credited for Hotel Rent Invoice# 000161', 0.00, 80000.00, 0, '1', '3', '2022-10-25 09:10:13', NULL, NULL, '1'),
(1117, '000161', 'CIV', '2022-10-25', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000161', 0.00, 0.00, 0, '1', '3', '2022-10-25 09:10:13', NULL, NULL, '1'),
(1118, '000161', 'CIV', '2022-10-25', '102030101', 'Customer Credit for Rent Invoice# 000161', 0.00, 80000.00, 0, '1', '3', '2022-10-25 09:10:13', NULL, NULL, '1'),
(1119, '000161', 'CIV', '2022-10-25', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000161', 0.00, 0.00, 0, '1', '3', '2022-10-25 09:10:13', NULL, NULL, '1'),
(1120, '000161', 'CIV', '2022-10-25', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000161', 0.00, 0.00, 0, '1', '3', '2022-10-25 09:10:13', NULL, NULL, '1'),
(1121, '000162', 'CIV', '2022-10-26', '1020101', 'Cash in Hand Debited For Invoice#000162', 3270000.00, 0.00, 0, '1', '2', '2022-10-26 20:14:31', NULL, NULL, '1'),
(1122, '000162', 'CIV', '2022-10-26', '102030101', 'Customer debit for Rent Invoice# 000162', 3270000.00, 0.00, 0, '1', '2', '2022-10-26 20:14:31', NULL, NULL, '1'),
(1123, '000162', 'CIV', '2022-10-26', '30301', 'Hotel Credited for Hotel Rent Invoice# 000162', 0.00, 3270000.00, 0, '1', '2', '2022-10-26 20:14:31', NULL, NULL, '1'),
(1124, '000162', 'CIV', '2022-10-26', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000162', 0.00, 0.00, 0, '1', '2', '2022-10-26 20:14:31', NULL, NULL, '1'),
(1125, '000162', 'CIV', '2022-10-26', '102030101', 'Customer Credit for Rent Invoice# 000162', 0.00, 3270000.00, 0, '1', '2', '2022-10-26 20:14:31', NULL, NULL, '1'),
(1126, '000162', 'CIV', '2022-10-26', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000162', 0.00, 0.00, 0, '1', '2', '2022-10-26 20:14:31', NULL, NULL, '1'),
(1127, '000162', 'CIV', '2022-10-26', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000162', 0.00, 0.00, 0, '1', '2', '2022-10-26 20:14:31', NULL, NULL, '1'),
(1128, '000163', 'CIV', '2022-10-26', '1020101', 'Cash in Hand Debited For Invoice#000163', 410000.00, 0.00, 0, '1', '2', '2022-10-26 20:15:23', NULL, NULL, '1'),
(1129, '000163', 'CIV', '2022-10-26', '102030101', 'Customer debit for Rent Invoice# 000163', 410000.00, 0.00, 0, '1', '2', '2022-10-26 20:15:23', NULL, NULL, '1'),
(1130, '000163', 'CIV', '2022-10-26', '30301', 'Hotel Credited for Hotel Rent Invoice# 000163', 0.00, 410000.00, 0, '1', '2', '2022-10-26 20:15:23', NULL, NULL, '1'),
(1131, '000163', 'CIV', '2022-10-26', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000163', 0.00, 0.00, 0, '1', '2', '2022-10-26 20:15:23', NULL, NULL, '1'),
(1132, '000163', 'CIV', '2022-10-26', '102030101', 'Customer Credit for Rent Invoice# 000163', 0.00, 410000.00, 0, '1', '2', '2022-10-26 20:15:23', NULL, NULL, '1'),
(1133, '000163', 'CIV', '2022-10-26', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000163', 0.00, 0.00, 0, '1', '2', '2022-10-26 20:15:23', NULL, NULL, '1'),
(1134, '000163', 'CIV', '2022-10-26', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000163', 0.00, 0.00, 0, '1', '2', '2022-10-26 20:15:23', NULL, NULL, '1'),
(1135, '000164', 'CIV', '2022-10-27', '1020101', 'Cash in Hand Debited For Invoice#000164', 108000.00, 0.00, 0, '1', '2', '2022-10-27 08:12:12', NULL, NULL, '1'),
(1136, '000164', 'CIV', '2022-10-27', '102030101', 'Customer debit for Rent Invoice# 000164', 108000.00, 0.00, 0, '1', '2', '2022-10-27 08:12:12', NULL, NULL, '1'),
(1137, '000164', 'CIV', '2022-10-27', '30301', 'Hotel Credited for Hotel Rent Invoice# 000164', 0.00, 108000.00, 0, '1', '2', '2022-10-27 08:12:12', NULL, NULL, '1'),
(1138, '000164', 'CIV', '2022-10-27', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000164', 0.00, 0.00, 0, '1', '2', '2022-10-27 08:12:12', NULL, NULL, '1'),
(1139, '000164', 'CIV', '2022-10-27', '102030101', 'Customer Credit for Rent Invoice# 000164', 0.00, 108000.00, 0, '1', '2', '2022-10-27 08:12:12', NULL, NULL, '1'),
(1140, '000164', 'CIV', '2022-10-27', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000164', 0.00, 0.00, 0, '1', '2', '2022-10-27 08:12:12', NULL, NULL, '1'),
(1141, '000164', 'CIV', '2022-10-27', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000164', 0.00, 0.00, 0, '1', '2', '2022-10-27 08:12:12', NULL, NULL, '1'),
(1142, '000165', 'CIV', '2022-10-27', '1020101', 'Cash in Hand Debited For Invoice#000165', 108000.00, 0.00, 0, '1', '2', '2022-10-27 08:16:02', NULL, NULL, '1'),
(1143, '000165', 'CIV', '2022-10-27', '102030101', 'Customer debit for Rent Invoice# 000165', 108000.00, 0.00, 0, '1', '2', '2022-10-27 08:16:02', NULL, NULL, '1'),
(1144, '000165', 'CIV', '2022-10-27', '30301', 'Hotel Credited for Hotel Rent Invoice# 000165', 0.00, 108000.00, 0, '1', '2', '2022-10-27 08:16:02', NULL, NULL, '1'),
(1145, '000165', 'CIV', '2022-10-27', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000165', 0.00, 0.00, 0, '1', '2', '2022-10-27 08:16:02', NULL, NULL, '1'),
(1146, '000165', 'CIV', '2022-10-27', '102030101', 'Customer Credit for Rent Invoice# 000165', 0.00, 108000.00, 0, '1', '2', '2022-10-27 08:16:02', NULL, NULL, '1'),
(1147, '000165', 'CIV', '2022-10-27', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000165', 0.00, 0.00, 0, '1', '2', '2022-10-27 08:16:02', NULL, NULL, '1'),
(1148, '000165', 'CIV', '2022-10-27', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000165', 0.00, 0.00, 0, '1', '2', '2022-10-27 08:16:02', NULL, NULL, '1'),
(1149, '000166', 'CIV', '2022-10-27', '1020101', 'Cash in Hand Debited For Invoice#000166', 80000.00, 0.00, 0, '1', '2', '2022-10-27 08:41:48', NULL, NULL, '1'),
(1150, '000166', 'CIV', '2022-10-27', '102030101', 'Customer debit for Rent Invoice# 000166', 80000.00, 0.00, 0, '1', '2', '2022-10-27 08:41:48', NULL, NULL, '1'),
(1151, '000166', 'CIV', '2022-10-27', '30301', 'Hotel Credited for Hotel Rent Invoice# 000166', 0.00, 80000.00, 0, '1', '2', '2022-10-27 08:41:48', NULL, NULL, '1'),
(1152, '000166', 'CIV', '2022-10-27', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000166', 0.00, 0.00, 0, '1', '2', '2022-10-27 08:41:48', NULL, NULL, '1'),
(1153, '000166', 'CIV', '2022-10-27', '102030101', 'Customer Credit for Rent Invoice# 000166', 0.00, 80000.00, 0, '1', '2', '2022-10-27 08:41:48', NULL, NULL, '1'),
(1154, '000166', 'CIV', '2022-10-27', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000166', 0.00, 0.00, 0, '1', '2', '2022-10-27 08:41:48', NULL, NULL, '1'),
(1155, '000166', 'CIV', '2022-10-27', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000166', 0.00, 0.00, 0, '1', '2', '2022-10-27 08:41:48', NULL, NULL, '1'),
(1156, '000167', 'CIV', '2022-10-27', '1020101', 'Cash in Hand Debited For Invoice#000167', 260000.00, 0.00, 0, '1', '2', '2022-10-27 08:42:48', NULL, NULL, '1'),
(1157, '000167', 'CIV', '2022-10-27', '102030101', 'Customer debit for Rent Invoice# 000167', 260000.00, 0.00, 0, '1', '2', '2022-10-27 08:42:48', NULL, NULL, '1'),
(1158, '000167', 'CIV', '2022-10-27', '30301', 'Hotel Credited for Hotel Rent Invoice# 000167', 0.00, 260000.00, 0, '1', '2', '2022-10-27 08:42:48', NULL, NULL, '1'),
(1159, '000167', 'CIV', '2022-10-27', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000167', 0.00, 0.00, 0, '1', '2', '2022-10-27 08:42:48', NULL, NULL, '1'),
(1160, '000167', 'CIV', '2022-10-27', '102030101', 'Customer Credit for Rent Invoice# 000167', 0.00, 260000.00, 0, '1', '2', '2022-10-27 08:42:48', NULL, NULL, '1'),
(1161, '000167', 'CIV', '2022-10-27', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000167', 0.00, 0.00, 0, '1', '2', '2022-10-27 08:42:48', NULL, NULL, '1'),
(1162, '000167', 'CIV', '2022-10-27', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000167', 0.00, 0.00, 0, '1', '2', '2022-10-27 08:42:48', NULL, NULL, '1'),
(1163, '000168', 'CIV', '2022-10-27', '1020101', 'Cash in Hand Debited For advance payment Invoice# 000168', 360000.00, 0.00, 0, '1', '2', '2022-10-27 16:43:55', NULL, NULL, '1'),
(1164, '000168', 'CIV', '2022-10-27', '30301', 'Hotel credited for room advance rent Invoice# 000168', 0.00, 360000.00, 0, '1', '2', '2022-10-27 16:43:55', NULL, NULL, '1'),
(1165, '000168', 'CIV', '2022-10-27', '102030101', 'Hotel customer debited for advance room booking Invoice# 000168', 360000.00, 0.00, 0, '1', '2', '2022-10-27 16:43:55', NULL, NULL, '1'),
(1166, '000168', 'CIV', '2022-10-27', '102030101', 'Hotel customer credited for advance room booking Invoice# 000168', 0.00, 360000.00, 0, '1', '2', '2022-10-27 16:43:55', NULL, NULL, '1'),
(1167, '000169', 'CIV', '2022-10-27', '1020101', 'Cash in Hand Debited For advance payment Invoice# 000169', 80000.00, 0.00, 0, '1', '2', '2022-10-27 16:51:51', NULL, NULL, '1'),
(1168, '000169', 'CIV', '2022-10-27', '30301', 'Hotel credited for room advance rent Invoice# 000169', 0.00, 80000.00, 0, '1', '2', '2022-10-27 16:51:51', NULL, NULL, '1'),
(1169, '000169', 'CIV', '2022-10-27', '102030101', 'Hotel customer debited for advance room booking Invoice# 000169', 80000.00, 0.00, 0, '1', '2', '2022-10-27 16:51:51', NULL, NULL, '1'),
(1170, '000169', 'CIV', '2022-10-27', '102030101', 'Hotel customer credited for advance room booking Invoice# 000169', 0.00, 80000.00, 0, '1', '2', '2022-10-27 16:51:51', NULL, NULL, '1'),
(1171, '000170', 'CIV', '2022-10-27', '1020101', 'Cash in Hand Debited For Invoice#000170', 240000.00, 0.00, 0, '1', '2', '2022-10-27 16:55:57', NULL, NULL, '1'),
(1172, '000170', 'CIV', '2022-10-27', '102030101', 'Customer debit for Rent Invoice# 000170', 240000.00, 0.00, 0, '1', '2', '2022-10-27 16:55:57', NULL, NULL, '1'),
(1173, '000170', 'CIV', '2022-10-27', '30301', 'Hotel Credited for Hotel Rent Invoice# 000170', 0.00, 240000.00, 0, '1', '2', '2022-10-27 16:55:57', NULL, NULL, '1'),
(1174, '000170', 'CIV', '2022-10-27', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000170', 0.00, 0.00, 0, '1', '2', '2022-10-27 16:55:57', NULL, NULL, '1'),
(1175, '000170', 'CIV', '2022-10-27', '102030101', 'Customer Credit for Rent Invoice# 000170', 0.00, 240000.00, 0, '1', '2', '2022-10-27 16:55:57', NULL, NULL, '1'),
(1176, '000170', 'CIV', '2022-10-27', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000170', 0.00, 0.00, 0, '1', '2', '2022-10-27 16:55:57', NULL, NULL, '1'),
(1177, '000170', 'CIV', '2022-10-27', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000170', 0.00, 0.00, 0, '1', '2', '2022-10-27 16:55:57', NULL, NULL, '1'),
(1178, '000171', 'CIV', '2022-10-28', '1020101', 'Cash in Hand Debited For Invoice#000171', 0.00, 0.00, 0, '1', '2', '2022-10-28 09:11:26', NULL, NULL, '1'),
(1179, '000171', 'CIV', '2022-10-28', '102030101', 'Customer debit for Rent Invoice# 000171', 0.00, 0.00, 0, '1', '2', '2022-10-28 09:11:26', NULL, NULL, '1'),
(1180, '000171', 'CIV', '2022-10-28', '102030101', 'Customer Credit for Rent Invoice# 000171', 0.00, 0.00, 0, '1', '2', '2022-10-28 09:11:26', NULL, NULL, '1'),
(1181, '000171', 'CIV', '2022-10-28', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000171', 0.00, 0.00, 0, '1', '2', '2022-10-28 09:11:26', NULL, NULL, '1'),
(1182, '000171', 'CIV', '2022-10-28', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000171', 0.00, 0.00, 0, '1', '2', '2022-10-28 09:11:26', NULL, NULL, '1'),
(1183, '000172', 'CIV', '2022-10-28', '1020101', 'Cash in Hand Debited For Invoice#000172', 0.00, 0.00, 0, '1', '2', '2022-10-28 09:11:36', NULL, NULL, '1'),
(1184, '000172', 'CIV', '2022-10-28', '102030101', 'Customer debit for Rent Invoice# 000172', 0.00, 0.00, 0, '1', '2', '2022-10-28 09:11:36', NULL, NULL, '1'),
(1185, '000172', 'CIV', '2022-10-28', '102030101', 'Customer Credit for Rent Invoice# 000172', 0.00, 0.00, 0, '1', '2', '2022-10-28 09:11:36', NULL, NULL, '1'),
(1186, '000172', 'CIV', '2022-10-28', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000172', 0.00, 0.00, 0, '1', '2', '2022-10-28 09:11:36', NULL, NULL, '1'),
(1187, '000172', 'CIV', '2022-10-28', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000172', 0.00, 0.00, 0, '1', '2', '2022-10-28 09:11:36', NULL, NULL, '1'),
(1188, '000173', 'CIV', '2022-10-28', '1020101', 'Cash in Hand Debited For Invoice#000173', 80000.00, 0.00, 0, '1', '2', '2022-10-28 09:12:52', NULL, NULL, '1'),
(1189, '000173', 'CIV', '2022-10-28', '102030101', 'Customer debit for Rent Invoice# 000173', 80000.00, 0.00, 0, '1', '2', '2022-10-28 09:12:52', NULL, NULL, '1'),
(1190, '000173', 'CIV', '2022-10-28', '30301', 'Hotel Credited for Hotel Rent Invoice# 000173', 0.00, 80000.00, 0, '1', '2', '2022-10-28 09:12:52', NULL, NULL, '1'),
(1191, '000173', 'CIV', '2022-10-28', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000173', 0.00, 0.00, 0, '1', '2', '2022-10-28 09:12:52', NULL, NULL, '1'),
(1192, '000173', 'CIV', '2022-10-28', '102030101', 'Customer Credit for Rent Invoice# 000173', 0.00, 80000.00, 0, '1', '2', '2022-10-28 09:12:52', NULL, NULL, '1'),
(1193, '000173', 'CIV', '2022-10-28', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000173', 0.00, 0.00, 0, '1', '2', '2022-10-28 09:12:52', NULL, NULL, '1'),
(1194, '000173', 'CIV', '2022-10-28', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000173', 0.00, 0.00, 0, '1', '2', '2022-10-28 09:12:52', NULL, NULL, '1'),
(1195, '000174', 'CIV', '2022-10-30', '1020101', 'Cash in Hand Debited For advance payment Invoice# 000174', 360000.00, 0.00, 0, '1', '3', '2022-10-30 16:48:39', NULL, NULL, '1'),
(1196, '000174', 'CIV', '2022-10-30', '30301', 'Hotel credited for room advance rent Invoice# 000174', 0.00, 360000.00, 0, '1', '3', '2022-10-30 16:48:39', NULL, NULL, '1'),
(1197, '000174', 'CIV', '2022-10-30', '102030101', 'Hotel customer debited for advance room booking Invoice# 000174', 360000.00, 0.00, 0, '1', '3', '2022-10-30 16:48:39', NULL, NULL, '1'),
(1198, '000174', 'CIV', '2022-10-30', '102030101', 'Hotel customer credited for advance room booking Invoice# 000174', 0.00, 360000.00, 0, '1', '3', '2022-10-30 16:48:39', NULL, NULL, '1'),
(1199, '000175', 'CIV', '2022-10-30', '1020101', 'Cash in Hand Debited For advance payment Invoice# 000175', 360000.00, 0.00, 0, '1', '3', '2022-10-30 17:51:02', NULL, NULL, '1'),
(1200, '000175', 'CIV', '2022-10-30', '30301', 'Hotel credited for room advance rent Invoice# 000175', 0.00, 360000.00, 0, '1', '3', '2022-10-30 17:51:02', NULL, NULL, '1'),
(1201, '000175', 'CIV', '2022-10-30', '102030101', 'Hotel customer debited for advance room booking Invoice# 000175', 360000.00, 0.00, 0, '1', '3', '2022-10-30 17:51:02', NULL, NULL, '1'),
(1202, '000175', 'CIV', '2022-10-30', '102030101', 'Hotel customer credited for advance room booking Invoice# 000175', 0.00, 360000.00, 0, '1', '3', '2022-10-30 17:51:02', NULL, NULL, '1'),
(1203, '000176', 'CIV', '2022-10-30', '1020101', 'Cash in Hand Debited For advance payment Invoice# 000176', 80000.00, 0.00, 0, '1', '3', '2022-10-30 17:53:21', NULL, NULL, '1'),
(1204, '000176', 'CIV', '2022-10-30', '30301', 'Hotel credited for room advance rent Invoice# 000176', 0.00, 80000.00, 0, '1', '3', '2022-10-30 17:53:21', NULL, NULL, '1'),
(1205, '000176', 'CIV', '2022-10-30', '102030101', 'Hotel customer debited for advance room booking Invoice# 000176', 80000.00, 0.00, 0, '1', '3', '2022-10-30 17:53:21', NULL, NULL, '1'),
(1206, '000176', 'CIV', '2022-10-30', '102030101', 'Hotel customer credited for advance room booking Invoice# 000176', 0.00, 80000.00, 0, '1', '3', '2022-10-30 17:53:21', NULL, NULL, '1'),
(1207, '000177', 'CIV', '2022-10-30', '1020101', 'Cash in Hand Debited For Invoice#000177', 600000.00, 0.00, 0, '1', '3', '2022-10-30 18:10:27', NULL, NULL, '1'),
(1208, '000177', 'CIV', '2022-10-30', '102030101', 'Customer debit for Rent Invoice# 000177', 600000.00, 0.00, 0, '1', '3', '2022-10-30 18:10:27', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES
(1209, '000177', 'CIV', '2022-10-30', '30301', 'Hotel Credited for Hotel Rent Invoice# 000177', 0.00, 600000.00, 0, '1', '3', '2022-10-30 18:10:27', NULL, NULL, '1'),
(1210, '000177', 'CIV', '2022-10-30', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000177', 0.00, 0.00, 0, '1', '3', '2022-10-30 18:10:27', NULL, NULL, '1'),
(1211, '000177', 'CIV', '2022-10-30', '102030101', 'Customer Credit for Rent Invoice# 000177', 0.00, 600000.00, 0, '1', '3', '2022-10-30 18:10:27', NULL, NULL, '1'),
(1212, '000177', 'CIV', '2022-10-30', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000177', 0.00, 0.00, 0, '1', '3', '2022-10-30 18:10:27', NULL, NULL, '1'),
(1213, '000177', 'CIV', '2022-10-30', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000177', 0.00, 0.00, 0, '1', '3', '2022-10-30 18:10:27', NULL, NULL, '1'),
(1214, '000178', 'CIV', '2022-10-30', '1020101', 'Cash in Hand Debited For Invoice#000178', 600000.00, 0.00, 0, '1', '3', '2022-10-30 18:11:34', NULL, NULL, '1'),
(1215, '000178', 'CIV', '2022-10-30', '102030101', 'Customer debit for Rent Invoice# 000178', 600000.00, 0.00, 0, '1', '3', '2022-10-30 18:11:34', NULL, NULL, '1'),
(1216, '000178', 'CIV', '2022-10-30', '30301', 'Hotel Credited for Hotel Rent Invoice# 000178', 0.00, 600000.00, 0, '1', '3', '2022-10-30 18:11:34', NULL, NULL, '1'),
(1217, '000178', 'CIV', '2022-10-30', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000178', 0.00, 0.00, 0, '1', '3', '2022-10-30 18:11:34', NULL, NULL, '1'),
(1218, '000178', 'CIV', '2022-10-30', '102030101', 'Customer Credit for Rent Invoice# 000178', 0.00, 600000.00, 0, '1', '3', '2022-10-30 18:11:34', NULL, NULL, '1'),
(1219, '000178', 'CIV', '2022-10-30', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000178', 0.00, 0.00, 0, '1', '3', '2022-10-30 18:11:34', NULL, NULL, '1'),
(1220, '000178', 'CIV', '2022-10-30', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000178', 0.00, 0.00, 0, '1', '3', '2022-10-30 18:11:34', NULL, NULL, '1'),
(1221, '000179', 'CIV', '2022-10-30', '1020101', 'Cash in Hand Debited For Invoice#000179', 120000.00, 0.00, 0, '1', '3', '2022-10-30 18:12:02', NULL, NULL, '1'),
(1222, '000179', 'CIV', '2022-10-30', '102030101', 'Customer debit for Rent Invoice# 000179', 120000.00, 0.00, 0, '1', '3', '2022-10-30 18:12:02', NULL, NULL, '1'),
(1223, '000179', 'CIV', '2022-10-30', '30301', 'Hotel Credited for Hotel Rent Invoice# 000179', 0.00, 120000.00, 0, '1', '3', '2022-10-30 18:12:02', NULL, NULL, '1'),
(1224, '000179', 'CIV', '2022-10-30', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000179', 0.00, 0.00, 0, '1', '3', '2022-10-30 18:12:02', NULL, NULL, '1'),
(1225, '000179', 'CIV', '2022-10-30', '102030101', 'Customer Credit for Rent Invoice# 000179', 0.00, 120000.00, 0, '1', '3', '2022-10-30 18:12:02', NULL, NULL, '1'),
(1226, '000179', 'CIV', '2022-10-30', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000179', 0.00, 0.00, 0, '1', '3', '2022-10-30 18:12:02', NULL, NULL, '1'),
(1227, '000179', 'CIV', '2022-10-30', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000179', 0.00, 0.00, 0, '1', '3', '2022-10-30 18:12:02', NULL, NULL, '1'),
(1228, '000180', 'CIV', '2022-10-30', '1020101', 'Cash in Hand Debited For Invoice#000180', 400000.00, 0.00, 0, '1', '3', '2022-10-30 18:12:20', NULL, NULL, '1'),
(1229, '000180', 'CIV', '2022-10-30', '102030101', 'Customer debit for Rent Invoice# 000180', 400000.00, 0.00, 0, '1', '3', '2022-10-30 18:12:20', NULL, NULL, '1'),
(1230, '000180', 'CIV', '2022-10-30', '30301', 'Hotel Credited for Hotel Rent Invoice# 000180', 0.00, 400000.00, 0, '1', '3', '2022-10-30 18:12:20', NULL, NULL, '1'),
(1231, '000180', 'CIV', '2022-10-30', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000180', 0.00, 0.00, 0, '1', '3', '2022-10-30 18:12:20', NULL, NULL, '1'),
(1232, '000180', 'CIV', '2022-10-30', '102030101', 'Customer Credit for Rent Invoice# 000180', 0.00, 400000.00, 0, '1', '3', '2022-10-30 18:12:20', NULL, NULL, '1'),
(1233, '000180', 'CIV', '2022-10-30', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000180', 0.00, 0.00, 0, '1', '3', '2022-10-30 18:12:20', NULL, NULL, '1'),
(1234, '000180', 'CIV', '2022-10-30', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000180', 0.00, 0.00, 0, '1', '3', '2022-10-30 18:12:20', NULL, NULL, '1'),
(1235, '000181', 'CIV', '2022-10-30', '1020101', 'Cash in Hand Debited For Invoice#000181', 400000.00, 0.00, 0, '1', '3', '2022-10-30 18:14:26', NULL, NULL, '1'),
(1236, '000181', 'CIV', '2022-10-30', '102030101', 'Customer debit for Rent Invoice# 000181', 400000.00, 0.00, 0, '1', '3', '2022-10-30 18:14:26', NULL, NULL, '1'),
(1237, '000181', 'CIV', '2022-10-30', '30301', 'Hotel Credited for Hotel Rent Invoice# 000181', 0.00, 400000.00, 0, '1', '3', '2022-10-30 18:14:26', NULL, NULL, '1'),
(1238, '000181', 'CIV', '2022-10-30', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000181', 0.00, 0.00, 0, '1', '3', '2022-10-30 18:14:26', NULL, NULL, '1'),
(1239, '000181', 'CIV', '2022-10-30', '102030101', 'Customer Credit for Rent Invoice# 000181', 0.00, 400000.00, 0, '1', '3', '2022-10-30 18:14:26', NULL, NULL, '1'),
(1240, '000181', 'CIV', '2022-10-30', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000181', 0.00, 0.00, 0, '1', '3', '2022-10-30 18:14:26', NULL, NULL, '1'),
(1241, '000181', 'CIV', '2022-10-30', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000181', 0.00, 0.00, 0, '1', '3', '2022-10-30 18:14:26', NULL, NULL, '1'),
(1242, '000182', 'CIV', '2022-10-30', '1020101', 'Cash in Hand Debited For Invoice#000182', 500000.00, 0.00, 0, '1', '3', '2022-10-30 18:15:10', NULL, NULL, '1'),
(1243, '000182', 'CIV', '2022-10-30', '102030101', 'Customer debit for Rent Invoice# 000182', 500000.00, 0.00, 0, '1', '3', '2022-10-30 18:15:10', NULL, NULL, '1'),
(1244, '000182', 'CIV', '2022-10-30', '30301', 'Hotel Credited for Hotel Rent Invoice# 000182', 0.00, 500000.00, 0, '1', '3', '2022-10-30 18:15:10', NULL, NULL, '1'),
(1245, '000182', 'CIV', '2022-10-30', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000182', 0.00, 0.00, 0, '1', '3', '2022-10-30 18:15:10', NULL, NULL, '1'),
(1246, '000182', 'CIV', '2022-10-30', '102030101', 'Customer Credit for Rent Invoice# 000182', 0.00, 500000.00, 0, '1', '3', '2022-10-30 18:15:10', NULL, NULL, '1'),
(1247, '000182', 'CIV', '2022-10-30', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000182', 0.00, 0.00, 0, '1', '3', '2022-10-30 18:15:10', NULL, NULL, '1'),
(1248, '000182', 'CIV', '2022-10-30', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000182', 0.00, 0.00, 0, '1', '3', '2022-10-30 18:15:10', NULL, NULL, '1'),
(1249, '000183', 'CIV', '2022-10-30', '1020101', 'Cash in Hand Debited For Invoice#000183', 100000.00, 0.00, 0, '1', '3', '2022-10-30 18:15:33', NULL, NULL, '1'),
(1250, '000183', 'CIV', '2022-10-30', '102030101', 'Customer debit for Rent Invoice# 000183', 100000.00, 0.00, 0, '1', '3', '2022-10-30 18:15:33', NULL, NULL, '1'),
(1251, '000183', 'CIV', '2022-10-30', '30301', 'Hotel Credited for Hotel Rent Invoice# 000183', 0.00, 100000.00, 0, '1', '3', '2022-10-30 18:15:33', NULL, NULL, '1'),
(1252, '000183', 'CIV', '2022-10-30', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000183', 0.00, 0.00, 0, '1', '3', '2022-10-30 18:15:33', NULL, NULL, '1'),
(1253, '000183', 'CIV', '2022-10-30', '102030101', 'Customer Credit for Rent Invoice# 000183', 0.00, 100000.00, 0, '1', '3', '2022-10-30 18:15:33', NULL, NULL, '1'),
(1254, '000183', 'CIV', '2022-10-30', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000183', 0.00, 0.00, 0, '1', '3', '2022-10-30 18:15:33', NULL, NULL, '1'),
(1255, '000183', 'CIV', '2022-10-30', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000183', 0.00, 0.00, 0, '1', '3', '2022-10-30 18:15:33', NULL, NULL, '1'),
(1256, '000184', 'CIV', '2022-10-30', '1020101', 'Cash in Hand Debited For Invoice#000184', 160000.00, 0.00, 0, '1', '3', '2022-10-30 18:16:01', NULL, NULL, '1'),
(1257, '000184', 'CIV', '2022-10-30', '102030101', 'Customer debit for Rent Invoice# 000184', 160000.00, 0.00, 0, '1', '3', '2022-10-30 18:16:01', NULL, NULL, '1'),
(1258, '000184', 'CIV', '2022-10-30', '30301', 'Hotel Credited for Hotel Rent Invoice# 000184', 0.00, 160000.00, 0, '1', '3', '2022-10-30 18:16:01', NULL, NULL, '1'),
(1259, '000184', 'CIV', '2022-10-30', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000184', 0.00, 0.00, 0, '1', '3', '2022-10-30 18:16:01', NULL, NULL, '1'),
(1260, '000184', 'CIV', '2022-10-30', '102030101', 'Customer Credit for Rent Invoice# 000184', 0.00, 160000.00, 0, '1', '3', '2022-10-30 18:16:01', NULL, NULL, '1'),
(1261, '000184', 'CIV', '2022-10-30', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000184', 0.00, 0.00, 0, '1', '3', '2022-10-30 18:16:01', NULL, NULL, '1'),
(1262, '000184', 'CIV', '2022-10-30', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000184', 0.00, 0.00, 0, '1', '3', '2022-10-30 18:16:01', NULL, NULL, '1'),
(1263, '000185', 'CIV', '2022-10-30', '1020101', 'Cash in Hand Debited For Invoice#000185', 80000.00, 0.00, 0, '1', '3', '2022-10-30 18:16:22', NULL, NULL, '1'),
(1264, '000185', 'CIV', '2022-10-30', '102030101', 'Customer debit for Rent Invoice# 000185', 80000.00, 0.00, 0, '1', '3', '2022-10-30 18:16:22', NULL, NULL, '1'),
(1265, '000185', 'CIV', '2022-10-30', '30301', 'Hotel Credited for Hotel Rent Invoice# 000185', 0.00, 80000.00, 0, '1', '3', '2022-10-30 18:16:22', NULL, NULL, '1'),
(1266, '000185', 'CIV', '2022-10-30', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000185', 0.00, 0.00, 0, '1', '3', '2022-10-30 18:16:22', NULL, NULL, '1'),
(1267, '000185', 'CIV', '2022-10-30', '102030101', 'Customer Credit for Rent Invoice# 000185', 0.00, 80000.00, 0, '1', '3', '2022-10-30 18:16:22', NULL, NULL, '1'),
(1268, '000185', 'CIV', '2022-10-30', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000185', 0.00, 0.00, 0, '1', '3', '2022-10-30 18:16:22', NULL, NULL, '1'),
(1269, '000185', 'CIV', '2022-10-30', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000185', 0.00, 0.00, 0, '1', '3', '2022-10-30 18:16:22', NULL, NULL, '1'),
(1270, '000186', 'CIV', '2022-10-30', '1020101', 'Cash in Hand Debited For Invoice#000186', 80000.00, 0.00, 0, '1', '3', '2022-10-30 18:21:33', NULL, NULL, '1'),
(1271, '000186', 'CIV', '2022-10-30', '102030101', 'Customer debit for Rent Invoice# 000186', 80000.00, 0.00, 0, '1', '3', '2022-10-30 18:21:33', NULL, NULL, '1'),
(1272, '000186', 'CIV', '2022-10-30', '30301', 'Hotel Credited for Hotel Rent Invoice# 000186', 0.00, 80000.00, 0, '1', '3', '2022-10-30 18:21:33', NULL, NULL, '1'),
(1273, '000186', 'CIV', '2022-10-30', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000186', 0.00, 0.00, 0, '1', '3', '2022-10-30 18:21:33', NULL, NULL, '1'),
(1274, '000186', 'CIV', '2022-10-30', '102030101', 'Customer Credit for Rent Invoice# 000186', 0.00, 80000.00, 0, '1', '3', '2022-10-30 18:21:33', NULL, NULL, '1'),
(1275, '000186', 'CIV', '2022-10-30', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000186', 0.00, 0.00, 0, '1', '3', '2022-10-30 18:21:33', NULL, NULL, '1'),
(1276, '000186', 'CIV', '2022-10-30', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000186', 0.00, 0.00, 0, '1', '3', '2022-10-30 18:21:33', NULL, NULL, '1'),
(1277, '000187', 'CIV', '2022-10-30', '1020101', 'Cash in Hand Debited For Invoice#000187', 120000.00, 0.00, 0, '1', '3', '2022-10-30 18:22:44', NULL, NULL, '1'),
(1278, '000187', 'CIV', '2022-10-30', '102030101', 'Customer debit for Rent Invoice# 000187', 120000.00, 0.00, 0, '1', '3', '2022-10-30 18:22:44', NULL, NULL, '1'),
(1279, '000187', 'CIV', '2022-10-30', '30301', 'Hotel Credited for Hotel Rent Invoice# 000187', 0.00, 120000.00, 0, '1', '3', '2022-10-30 18:22:44', NULL, NULL, '1'),
(1280, '000187', 'CIV', '2022-10-30', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000187', 0.00, 0.00, 0, '1', '3', '2022-10-30 18:22:44', NULL, NULL, '1'),
(1281, '000187', 'CIV', '2022-10-30', '102030101', 'Customer Credit for Rent Invoice# 000187', 0.00, 120000.00, 0, '1', '3', '2022-10-30 18:22:44', NULL, NULL, '1'),
(1282, '000187', 'CIV', '2022-10-30', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000187', 0.00, 0.00, 0, '1', '3', '2022-10-30 18:22:44', NULL, NULL, '1'),
(1283, '000187', 'CIV', '2022-10-30', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000187', 0.00, 0.00, 0, '1', '3', '2022-10-30 18:22:44', NULL, NULL, '1'),
(1284, '000188', 'CIV', '2022-10-30', '1020101', 'Cash in Hand Debited For Invoice#000188', 130000.00, 0.00, 0, '1', '3', '2022-10-30 18:33:13', NULL, NULL, '1'),
(1285, '000188', 'CIV', '2022-10-30', '102030101', 'Customer debit for Rent Invoice# 000188', 130000.00, 0.00, 0, '1', '3', '2022-10-30 18:33:13', NULL, NULL, '1'),
(1286, '000188', 'CIV', '2022-10-30', '30301', 'Hotel Credited for Hotel Rent Invoice# 000188', 0.00, 130000.00, 0, '1', '3', '2022-10-30 18:33:13', NULL, NULL, '1'),
(1287, '000188', 'CIV', '2022-10-30', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000188', 0.00, 0.00, 0, '1', '3', '2022-10-30 18:33:13', NULL, NULL, '1'),
(1288, '000188', 'CIV', '2022-10-30', '102030101', 'Customer Credit for Rent Invoice# 000188', 0.00, 130000.00, 0, '1', '3', '2022-10-30 18:33:13', NULL, NULL, '1'),
(1289, '000188', 'CIV', '2022-10-30', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000188', 0.00, 0.00, 0, '1', '3', '2022-10-30 18:33:13', NULL, NULL, '1'),
(1290, '000188', 'CIV', '2022-10-30', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000188', 0.00, 0.00, 0, '1', '3', '2022-10-30 18:33:13', NULL, NULL, '1'),
(1291, '000189', 'CIV', '2022-10-30', '1020101', 'Cash in Hand Debited For Invoice#000189', 300000.00, 0.00, 0, '1', '3', '2022-10-30 18:35:30', NULL, NULL, '1'),
(1292, '000189', 'CIV', '2022-10-30', '102030101', 'Customer debit for Rent Invoice# 000189', 300000.00, 0.00, 0, '1', '3', '2022-10-30 18:35:30', NULL, NULL, '1'),
(1293, '000189', 'CIV', '2022-10-30', '30301', 'Hotel Credited for Hotel Rent Invoice# 000189', 0.00, 300000.00, 0, '1', '3', '2022-10-30 18:35:30', NULL, NULL, '1'),
(1294, '000189', 'CIV', '2022-10-30', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000189', 0.00, 0.00, 0, '1', '3', '2022-10-30 18:35:30', NULL, NULL, '1'),
(1295, '000189', 'CIV', '2022-10-30', '102030101', 'Customer Credit for Rent Invoice# 000189', 0.00, 300000.00, 0, '1', '3', '2022-10-30 18:35:30', NULL, NULL, '1'),
(1296, '000189', 'CIV', '2022-10-30', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000189', 0.00, 0.00, 0, '1', '3', '2022-10-30 18:35:30', NULL, NULL, '1'),
(1297, '000189', 'CIV', '2022-10-30', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000189', 0.00, 0.00, 0, '1', '3', '2022-10-30 18:35:30', NULL, NULL, '1'),
(1298, '000190', 'CIV', '2022-10-30', '1020101', 'Cash in Hand Debited For Invoice#000190', 400000.00, 0.00, 0, '1', '3', '2022-10-30 18:36:40', NULL, NULL, '1'),
(1299, '000190', 'CIV', '2022-10-30', '102030101', 'Customer debit for Rent Invoice# 000190', 400000.00, 0.00, 0, '1', '3', '2022-10-30 18:36:40', NULL, NULL, '1'),
(1300, '000190', 'CIV', '2022-10-30', '30301', 'Hotel Credited for Hotel Rent Invoice# 000190', 0.00, 400000.00, 0, '1', '3', '2022-10-30 18:36:40', NULL, NULL, '1'),
(1301, '000190', 'CIV', '2022-10-30', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000190', 0.00, 0.00, 0, '1', '3', '2022-10-30 18:36:40', NULL, NULL, '1'),
(1302, '000190', 'CIV', '2022-10-30', '102030101', 'Customer Credit for Rent Invoice# 000190', 0.00, 400000.00, 0, '1', '3', '2022-10-30 18:36:40', NULL, NULL, '1'),
(1303, '000190', 'CIV', '2022-10-30', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000190', 0.00, 0.00, 0, '1', '3', '2022-10-30 18:36:40', NULL, NULL, '1'),
(1304, '000190', 'CIV', '2022-10-30', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000190', 0.00, 0.00, 0, '1', '3', '2022-10-30 18:36:40', NULL, NULL, '1'),
(1305, '000191', 'CIV', '2022-10-30', '1020101', 'Cash in Hand Debited For advance payment Invoice# 000191', 360000.00, 0.00, 0, '1', '3', '2022-10-30 19:09:30', NULL, NULL, '1'),
(1306, '000191', 'CIV', '2022-10-30', '30301', 'Hotel credited for room advance rent Invoice# 000191', 0.00, 360000.00, 0, '1', '3', '2022-10-30 19:09:30', NULL, NULL, '1'),
(1307, '000191', 'CIV', '2022-10-30', '102030101', 'Hotel customer debited for advance room booking Invoice# 000191', 360000.00, 0.00, 0, '1', '3', '2022-10-30 19:09:30', NULL, NULL, '1'),
(1308, '000191', 'CIV', '2022-10-30', '102030101', 'Hotel customer credited for advance room booking Invoice# 000191', 0.00, 360000.00, 0, '1', '3', '2022-10-30 19:09:30', NULL, NULL, '1'),
(1309, '000192', 'CIV', '2022-10-31', '1020101', 'Cash in Hand Debited For Invoice#000192', 0.00, 0.00, 0, '1', '3', '2022-10-31 08:14:13', NULL, NULL, '1'),
(1310, '000192', 'CIV', '2022-10-31', '102030101', 'Customer debit for Rent Invoice# 000192', 0.00, 0.00, 0, '1', '3', '2022-10-31 08:14:13', NULL, NULL, '1'),
(1311, '000192', 'CIV', '2022-10-31', '102030101', 'Customer Credit for Rent Invoice# 000192', 0.00, 0.00, 0, '1', '3', '2022-10-31 08:14:13', NULL, NULL, '1'),
(1312, '000192', 'CIV', '2022-10-31', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000192', 0.00, 0.00, 0, '1', '3', '2022-10-31 08:14:13', NULL, NULL, '1'),
(1313, '000192', 'CIV', '2022-10-31', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000192', 0.00, 0.00, 0, '1', '3', '2022-10-31 08:14:13', NULL, NULL, '1'),
(1314, '000193', 'CIV', '2022-10-31', '102030101', 'Customer debit for Rent Invoice# 000193', 130000.00, 0.00, 0, '1', '3', '2022-10-31 09:37:00', NULL, NULL, '1'),
(1315, '000193', 'CIV', '2022-10-31', '30301', 'Hotel Credited for Hotel Rent Invoice# 000193', 0.00, 130000.00, 0, '1', '3', '2022-10-31 09:37:00', NULL, NULL, '1'),
(1316, '000193', 'CIV', '2022-10-31', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000193', 0.00, 0.00, 0, '1', '3', '2022-10-31 09:37:00', NULL, NULL, '1'),
(1317, '000193', 'CIV', '2022-10-31', '102030101', 'Customer Credit for Rent Invoice# 000193', 0.00, 130000.00, 0, '1', '3', '2022-10-31 09:37:00', NULL, NULL, '1'),
(1318, '000193', 'CIV', '2022-10-31', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000193', 0.00, 0.00, 0, '1', '3', '2022-10-31 09:37:00', NULL, NULL, '1'),
(1319, '000193', 'CIV', '2022-10-31', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000193', 0.00, 0.00, 0, '1', '3', '2022-10-31 09:37:00', NULL, NULL, '1'),
(1320, '000194', 'CIV', '2022-10-31', '102030101', 'Customer debit for Rent Invoice# 000194', 100000.00, 0.00, 0, '1', '3', '2022-10-31 09:38:14', NULL, NULL, '1'),
(1321, '000194', 'CIV', '2022-10-31', '30301', 'Hotel Credited for Hotel Rent Invoice# 000194', 0.00, 100000.00, 0, '1', '3', '2022-10-31 09:38:14', NULL, NULL, '1'),
(1322, '000194', 'CIV', '2022-10-31', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000194', 0.00, 0.00, 0, '1', '3', '2022-10-31 09:38:14', NULL, NULL, '1'),
(1323, '000194', 'CIV', '2022-10-31', '102030101', 'Customer Credit for Rent Invoice# 000194', 0.00, 100000.00, 0, '1', '3', '2022-10-31 09:38:14', NULL, NULL, '1'),
(1324, '000194', 'CIV', '2022-10-31', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000194', 0.00, 0.00, 0, '1', '3', '2022-10-31 09:38:14', NULL, NULL, '1'),
(1325, '000194', 'CIV', '2022-10-31', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000194', 0.00, 0.00, 0, '1', '3', '2022-10-31 09:38:14', NULL, NULL, '1'),
(1326, '000195', 'CIV', '2022-10-31', '102030101', 'Customer debit for Rent Invoice# 000195', 120000.00, 0.00, 0, '1', '3', '2022-10-31 09:38:36', NULL, NULL, '1'),
(1327, '000195', 'CIV', '2022-10-31', '30301', 'Hotel Credited for Hotel Rent Invoice# 000195', 0.00, 120000.00, 0, '1', '3', '2022-10-31 09:38:36', NULL, NULL, '1'),
(1328, '000195', 'CIV', '2022-10-31', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000195', 0.00, 0.00, 0, '1', '3', '2022-10-31 09:38:36', NULL, NULL, '1'),
(1329, '000195', 'CIV', '2022-10-31', '102030101', 'Customer Credit for Rent Invoice# 000195', 0.00, 120000.00, 0, '1', '3', '2022-10-31 09:38:36', NULL, NULL, '1'),
(1330, '000195', 'CIV', '2022-10-31', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000195', 0.00, 0.00, 0, '1', '3', '2022-10-31 09:38:36', NULL, NULL, '1'),
(1331, '000195', 'CIV', '2022-10-31', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000195', 0.00, 0.00, 0, '1', '3', '2022-10-31 09:38:36', NULL, NULL, '1'),
(1332, '000196', 'CIV', '2022-10-31', '1020101', 'Cash in Hand Debited For Invoice#000196', 240000.00, 0.00, 0, '1', '2', '2022-10-31 20:18:33', NULL, NULL, '1'),
(1333, '000196', 'CIV', '2022-10-31', '102030101', 'Customer debit for Rent Invoice# 000196', 240000.00, 0.00, 0, '1', '2', '2022-10-31 20:18:33', NULL, NULL, '1'),
(1334, '000196', 'CIV', '2022-10-31', '30301', 'Hotel Credited for Hotel Rent Invoice# 000196', 0.00, 240000.00, 0, '1', '2', '2022-10-31 20:18:33', NULL, NULL, '1'),
(1335, '000196', 'CIV', '2022-10-31', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000196', 0.00, 0.00, 0, '1', '2', '2022-10-31 20:18:33', NULL, NULL, '1'),
(1336, '000196', 'CIV', '2022-10-31', '102030101', 'Customer Credit for Rent Invoice# 000196', 0.00, 240000.00, 0, '1', '2', '2022-10-31 20:18:33', NULL, NULL, '1'),
(1337, '000196', 'CIV', '2022-10-31', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000196', 0.00, 0.00, 0, '1', '2', '2022-10-31 20:18:33', NULL, NULL, '1'),
(1338, '000196', 'CIV', '2022-10-31', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000196', 0.00, 0.00, 0, '1', '2', '2022-10-31 20:18:33', NULL, NULL, '1'),
(1339, '000197', 'CIV', '2022-11-01', '1020101', 'Cash in Hand Debited For Invoice#000197', 120000.00, 0.00, 0, '1', '1', '2022-11-01 14:34:39', NULL, NULL, '1'),
(1340, '000197', 'CIV', '2022-11-01', '102030101', 'Customer debit for Rent Invoice# 000197', 120000.00, 0.00, 0, '1', '1', '2022-11-01 14:34:39', NULL, NULL, '1'),
(1341, '000197', 'CIV', '2022-11-01', '30301', 'Hotel Credited for Hotel Rent Invoice# 000197', 0.00, 120000.00, 0, '1', '1', '2022-11-01 14:34:39', NULL, NULL, '1'),
(1342, '000197', 'CIV', '2022-11-01', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000197', 0.00, 0.00, 0, '1', '1', '2022-11-01 14:34:39', NULL, NULL, '1'),
(1343, '000197', 'CIV', '2022-11-01', '102030101', 'Customer Credit for Rent Invoice# 000197', 0.00, 120000.00, 0, '1', '1', '2022-11-01 14:34:39', NULL, NULL, '1'),
(1344, '000197', 'CIV', '2022-11-01', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000197', 0.00, 0.00, 0, '1', '1', '2022-11-01 14:34:39', NULL, NULL, '1'),
(1345, '000197', 'CIV', '2022-11-01', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000197', 0.00, 0.00, 0, '1', '1', '2022-11-01 14:34:39', NULL, NULL, '1'),
(1346, '000198', 'CIV', '2022-11-01', '1020101', 'Cash in Hand Debited For Invoice#000198', 70000.00, 0.00, 0, '1', '1', '2022-11-01 14:36:01', NULL, NULL, '1'),
(1347, '000198', 'CIV', '2022-11-01', '102030101', 'Customer debit for Rent Invoice# 000198', 70000.00, 0.00, 0, '1', '1', '2022-11-01 14:36:01', NULL, NULL, '1'),
(1348, '000198', 'CIV', '2022-11-01', '30301', 'Hotel Credited for Hotel Rent Invoice# 000198', 0.00, 70000.00, 0, '1', '1', '2022-11-01 14:36:01', NULL, NULL, '1'),
(1349, '000198', 'CIV', '2022-11-01', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000198', 0.00, 0.00, 0, '1', '1', '2022-11-01 14:36:01', NULL, NULL, '1'),
(1350, '000198', 'CIV', '2022-11-01', '102030101', 'Customer Credit for Rent Invoice# 000198', 0.00, 70000.00, 0, '1', '1', '2022-11-01 14:36:01', NULL, NULL, '1'),
(1351, '000198', 'CIV', '2022-11-01', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000198', 0.00, 0.00, 0, '1', '1', '2022-11-01 14:36:01', NULL, NULL, '1'),
(1352, '000198', 'CIV', '2022-11-01', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000198', 0.00, 0.00, 0, '1', '1', '2022-11-01 14:36:01', NULL, NULL, '1'),
(1353, '000199', 'CIV', '2022-11-01', '1020101', 'Cash in Hand Debited For Invoice#000199', 150000.00, 0.00, 0, '1', '1', '2022-11-01 14:36:28', NULL, NULL, '1'),
(1354, '000199', 'CIV', '2022-11-01', '102030101', 'Customer debit for Rent Invoice# 000199', 150000.00, 0.00, 0, '1', '1', '2022-11-01 14:36:28', NULL, NULL, '1'),
(1355, '000199', 'CIV', '2022-11-01', '30301', 'Hotel Credited for Hotel Rent Invoice# 000199', 0.00, 150000.00, 0, '1', '1', '2022-11-01 14:36:28', NULL, NULL, '1'),
(1356, '000199', 'CIV', '2022-11-01', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000199', 0.00, 0.00, 0, '1', '1', '2022-11-01 14:36:28', NULL, NULL, '1'),
(1357, '000199', 'CIV', '2022-11-01', '102030101', 'Customer Credit for Rent Invoice# 000199', 0.00, 150000.00, 0, '1', '1', '2022-11-01 14:36:28', NULL, NULL, '1'),
(1358, '000199', 'CIV', '2022-11-01', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000199', 0.00, 0.00, 0, '1', '1', '2022-11-01 14:36:28', NULL, NULL, '1'),
(1359, '000199', 'CIV', '2022-11-01', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000199', 0.00, 0.00, 0, '1', '1', '2022-11-01 14:36:28', NULL, NULL, '1'),
(1360, '000200', 'CIV', '2022-11-01', '1020101', 'Cash in Hand Debited For Invoice#000200', 299000.00, 0.00, 0, '1', '1', '2022-11-01 14:37:08', NULL, NULL, '1'),
(1361, '000200', 'CIV', '2022-11-01', '102030101', 'Customer debit for Rent Invoice# 000200', 299000.00, 0.00, 0, '1', '1', '2022-11-01 14:37:08', NULL, NULL, '1'),
(1362, '000200', 'CIV', '2022-11-01', '30301', 'Hotel Credited for Hotel Rent Invoice# 000200', 0.00, 299000.00, 0, '1', '1', '2022-11-01 14:37:08', NULL, NULL, '1'),
(1363, '000200', 'CIV', '2022-11-01', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000200', 0.00, 0.00, 0, '1', '1', '2022-11-01 14:37:08', NULL, NULL, '1'),
(1364, '000200', 'CIV', '2022-11-01', '102030101', 'Customer Credit for Rent Invoice# 000200', 0.00, 299000.00, 0, '1', '1', '2022-11-01 14:37:08', NULL, NULL, '1'),
(1365, '000200', 'CIV', '2022-11-01', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000200', 0.00, 0.00, 0, '1', '1', '2022-11-01 14:37:08', NULL, NULL, '1'),
(1366, '000200', 'CIV', '2022-11-01', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000200', 0.00, 0.00, 0, '1', '1', '2022-11-01 14:37:08', NULL, NULL, '1'),
(1367, '000201', 'CIV', '2022-11-01', '1020101', 'Cash in Hand Debited For Invoice#000201', 165600.00, 0.00, 0, '1', '1', '2022-11-01 14:38:09', NULL, NULL, '1'),
(1368, '000201', 'CIV', '2022-11-01', '102030101', 'Customer debit for Rent Invoice# 000201', 165600.00, 0.00, 0, '1', '1', '2022-11-01 14:38:09', NULL, NULL, '1'),
(1369, '000201', 'CIV', '2022-11-01', '30301', 'Hotel Credited for Hotel Rent Invoice# 000201', 0.00, 165600.00, 0, '1', '1', '2022-11-01 14:38:09', NULL, NULL, '1'),
(1370, '000201', 'CIV', '2022-11-01', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000201', 0.00, 0.00, 0, '1', '1', '2022-11-01 14:38:09', NULL, NULL, '1'),
(1371, '000201', 'CIV', '2022-11-01', '102030101', 'Customer Credit for Rent Invoice# 000201', 0.00, 165600.00, 0, '1', '1', '2022-11-01 14:38:09', NULL, NULL, '1'),
(1372, '000201', 'CIV', '2022-11-01', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000201', 0.00, 0.00, 0, '1', '1', '2022-11-01 14:38:09', NULL, NULL, '1'),
(1373, '000201', 'CIV', '2022-11-01', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000201', 0.00, 0.00, 0, '1', '1', '2022-11-01 14:38:09', NULL, NULL, '1'),
(1374, '000168', 'CIV', '2022-11-02', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000168', 0.00, 0.00, 0, '1', '3', '2022-11-02 08:23:20', NULL, NULL, '1'),
(1375, '000168', 'CIV', '2022-11-02', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000168', 0.00, 0.00, 0, '1', '3', '2022-11-02 08:23:20', NULL, NULL, '1'),
(1376, '000168', 'CIV', '2022-11-02', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000168', 0.00, 0.00, 0, '1', '3', '2022-11-02 08:23:20', NULL, NULL, '1'),
(1377, '000202', 'CIV', '2022-11-02', '1020101', 'Cash in Hand Debited For advance payment Invoice# 000202', 80000.00, 0.00, 0, '1', '2', '2022-11-02 20:12:39', NULL, NULL, '1'),
(1378, '000202', 'CIV', '2022-11-02', '30301', 'Hotel credited for room advance rent Invoice# 000202', 0.00, 80000.00, 0, '1', '2', '2022-11-02 20:12:39', NULL, NULL, '1'),
(1379, '000202', 'CIV', '2022-11-02', '102030101', 'Hotel customer debited for advance room booking Invoice# 000202', 80000.00, 0.00, 0, '1', '2', '2022-11-02 20:12:39', NULL, NULL, '1'),
(1380, '000202', 'CIV', '2022-11-02', '102030101', 'Hotel customer credited for advance room booking Invoice# 000202', 0.00, 80000.00, 0, '1', '2', '2022-11-02 20:12:39', NULL, NULL, '1'),
(1381, '000202', 'CIV', '2022-11-03', '1020204', 'Hotel Debited For Hotel Room TAX Invoice# 000202', 0.00, 0.00, 0, '1', '2', '2022-11-03 09:10:50', NULL, NULL, '1'),
(1382, '000202', 'CIV', '2022-11-03', '5020303', 'Hotel Credited For Hotel Room TAX Invoice# 000202', 0.00, 0.00, 0, '1', '2', '2022-11-03 09:10:50', NULL, NULL, '1'),
(1383, '000202', 'CIV', '2022-11-03', '30304', 'Hotel Credited for Hotel Service Charge Invoice# 000202', 0.00, 0.00, 0, '1', '2', '2022-11-03 09:10:50', NULL, NULL, '1'),
(1384, '000203', 'CIV', '2024-10-22', '102030101', 'Customer debit for webiste advance payment Rent Invoice#000203', 130.00, 0.00, 0, '1', '1', '2024-10-22 00:00:00', NULL, NULL, '1'),
(1385, '000204', 'CIV', '2024-10-22', '102030101', 'Customer debit for webiste advance payment Rent Invoice#000204', 130.00, 0.00, 0, '1', '1', '2024-10-22 00:00:00', NULL, NULL, '1'),
(1386, '000205', 'CIV', '2024-10-22', '102030101', 'Customer debit for webiste advance payment Rent Invoice#000205', 130.00, 0.00, 0, '1', '1', '2024-10-22 00:00:00', NULL, NULL, '1'),
(1387, '000206', 'CIV', '2024-10-22', '102030101', 'Customer debit for webiste advance payment Rent Invoice#000206', 130.00, 0.00, 0, '1', '1', '2024-10-22 00:00:00', NULL, NULL, '1'),
(1388, '000206', 'CIV', '2024-10-22', '30301', 'Hotel Credit for webiste advance payment Rent Invoice#000206', 0.00, 130.00, 0, '1', '1', '2024-10-22 00:00:00', NULL, NULL, '1'),
(1389, '000206', 'CIV', '2024-10-22', '102030101', 'Customer Credit for webiste advance payment Rent Invoice000206', 0.00, 130.00, 0, '1', '1', '2024-10-22 00:00:00', NULL, NULL, '1');

-- --------------------------------------------------------

--
-- Table structure for table `add_ons`
--

CREATE TABLE `add_ons` (
  `add_on_id` int(11) NOT NULL,
  `add_on_name` varchar(200) NOT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `is_active` tinyint(4) NOT NULL,
  `tax0` text DEFAULT NULL,
  `tax1` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `award`
--

CREATE TABLE `award` (
  `award_id` int(11) NOT NULL,
  `award_name` varchar(50) NOT NULL,
  `aw_description` varchar(200) NOT NULL,
  `awr_gift_item` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `employee_id` varchar(30) NOT NULL,
  `awarded_by` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bedstype`
--

CREATE TABLE `bedstype` (
  `Bedstypeid` int(11) NOT NULL,
  `bedstypetitle` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `bedstype`
--

INSERT INTO `bedstype` (`Bedstypeid`, `bedstypetitle`) VALUES
(12, 'Electric bed'),
(13, 'Standard Double'),
(14, 'Queen Bed'),
(15, 'Olympic Queen'),
(16, 'King Bed');

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `bill_id` bigint(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `total_amount` float NOT NULL,
  `discount` float NOT NULL,
  `service_charge` float NOT NULL,
  `shipping_type` int(11) DEFAULT NULL COMMENT '1=home,2=pickup,3=none',
  `delivarydate` datetime DEFAULT NULL,
  `VAT` float NOT NULL,
  `bill_amount` float NOT NULL,
  `bill_date` date NOT NULL,
  `bill_time` time NOT NULL,
  `create_at` datetime DEFAULT '1970-01-01 01:01:01',
  `bill_status` tinyint(1) NOT NULL COMMENT '0=unpaid, 1=paid',
  `payment_method_id` tinyint(4) NOT NULL,
  `create_by` int(11) NOT NULL,
  `create_date` date NOT NULL,
  `update_by` int(11) NOT NULL,
  `update_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bill_card_payment`
--

CREATE TABLE `bill_card_payment` (
  `row_id` bigint(20) NOT NULL,
  `bill_id` bigint(20) NOT NULL,
  `multipay_id` int(11) DEFAULT NULL,
  `card_no` varchar(200) DEFAULT NULL,
  `terminal_name` int(11) NOT NULL,
  `bank_name` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `booked_details`
--

CREATE TABLE `booked_details` (
  `book_detailsid` int(11) NOT NULL,
  `bookedid` int(11) NOT NULL,
  `booking_type` varchar(100) DEFAULT NULL,
  `booking_source` varchar(100) DEFAULT NULL,
  `booking_source_no` varchar(100) DEFAULT NULL,
  `extracheckin` text DEFAULT NULL,
  `extracheckout` text DEFAULT NULL,
  `arival_from` varchar(100) DEFAULT NULL,
  `purpose` varchar(100) DEFAULT NULL,
  `extra_facility_days` text DEFAULT NULL,
  `extrabed` text DEFAULT NULL,
  `extraperson` text DEFAULT NULL,
  `extrachild` text DEFAULT NULL,
  `complementary` text DEFAULT NULL,
  `complementaryprice` text DEFAULT NULL,
  `discountreason` text DEFAULT NULL,
  `discountamount` decimal(10,0) DEFAULT NULL,
  `commissionpersent` int(11) DEFAULT NULL,
  `commissionamount` decimal(10,0) DEFAULT NULL,
  `payment_method` varchar(100) DEFAULT NULL,
  `advance_amount` decimal(10,2) DEFAULT NULL,
  `advance_remarks` varchar(100) DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `booked_from` int(11) DEFAULT 0 COMMENT '0=admin,1=user'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `booked_details`
--

INSERT INTO `booked_details` (`book_detailsid`, `bookedid`, `booking_type`, `booking_source`, `booking_source_no`, `extracheckin`, `extracheckout`, `arival_from`, `purpose`, `extra_facility_days`, `extrabed`, `extraperson`, `extrachild`, `complementary`, `complementaryprice`, `discountreason`, `discountamount`, `commissionpersent`, `commissionamount`, `payment_method`, `advance_amount`, `advance_remarks`, `remarks`, `booked_from`) VALUES
(1, 1, '', '', '', '2022-10-05 12:00', '2022-10-08 10:00', '', '', '3', '0', '0', '0', 'Choose Complementary', '0', '', 0, 0, 0, 'Cash Payment', 0.00, '', '', 0),
(2, 2, '', '', '', '2022-10-05 12:00', '2022-10-07 10:00', '', '', '2', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, 'Cash Payment', 0.00, '', '', 0),
(3, 3, '', '', '', '2022-10-05 13:00', '2022-10-07 10:00', '', '', '2', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(4, 4, '', '', '', '2022-10-05 13:00', '2022-10-07 10:00', '', '', '2', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(5, 5, '', '', '', '2022-10-05 15:00', '2022-10-07 10:00', '', '', '2', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(6, 6, '', '', '', '2022-10-05 15:00', '2022-10-07 10:00', '', '', '2', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(7, 7, '', '', '', '2022-10-05 16:00', '2022-10-06 22:00', 'DSM', '', '2', '0', '1', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(8, 8, '', '', '', '2022-10-05 17:00', '2022-10-08 17:00', 'DSM', '', '3', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(9, 9, '', '', '', '2022-10-05 17:00', '2022-10-06 17:00', 'DSM', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(10, 10, '', '', '', '2022-10-05 17:00', '2022-10-06 17:00', 'DSM', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(11, 11, '', '', '', '2022-10-05 17:00', '2022-10-07 17:00', 'Njombe', '', '2', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(12, 12, '', '', '', '2022-10-05 17:00', '2022-10-06 17:00', 'DSM', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(13, 13, '', '', '', '2022-10-05 19:00', '2022-10-09 19:00', '', '', '4', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(14, 14, '', '', '', '2022-10-05 21:00', '2022-10-07 21:00', 'Dodoma', '', '2', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(15, 15, '', '', '', '2022-10-05 21:00', '2022-10-08 21:00', '', '', '3', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(16, 16, '', '', '', '2022-10-05 21:00', '2022-10-09 21:00', 'DSM', '', '4', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(17, 17, '', '', '', '2022-10-05 21:00', '2022-10-09 21:00', 'DSM', '', '4', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(18, 18, '', '', '', '2022-10-05 21:00', '2022-10-09 21:00', 'DSM', '', '4', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(19, 19, '', '', '', '2022-10-06 10:00', '2022-10-07 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(20, 20, '', '', '', '2022-10-06 10:00', '2022-10-07 10:00', 'Mbeya', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(21, 21, '', '', '', '2022-10-06 10:00', '2022-10-08 10:00', 'Dodoma', '', '2', '0', '0', '0', 'Choose Complementary', '0', '', 0, 0, 0, 'Cash Payment', 0.00, '', '', 0),
(22, 22, '4', '', '', '2022-10-06 19:00', '2022-10-06 10:00', 'GERMANY', '', '-0', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(23, 23, '4', '', '', '2022-10-06 19:00', '2022-10-06 22:00', 'GERMANY', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(24, 24, '4', '', '', '2022-10-06 19:00', '2022-10-06 10:00', '', '', '-0', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(25, 25, '4', '', '', '2022-10-06 19:00', '2022-10-06 10:00', '', '', '-0', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(26, 26, '4', '', '', '2022-10-06 19:00', '2022-10-06 10:00', '', '', '-0', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(27, 27, '4', '', '', '2022-10-06 12:00:00', '2022-10-7 10:00:00 ', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(28, 28, '4', '', '', '2022-10-06 19:00', '2022-10-06 10:00', '', '', '-0', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(29, 29, '4', '', '', '2022-10-06 20:00', '2022-10-07 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(30, 30, '', '', '', '2022-10-06 20:00', '2022-10-07 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(31, 31, '', '', '', '2022-10-06 20:00', '2022-10-08 10:00', '', '', '2', '0', '0', '0', 'ChooseComplementary', '0', 'Offer', 0, 0, 0, '', 0.00, '', '', 0),
(32, 32, '', '', '', '2022-10-06 21:00:00', '2022-10-08 10:00', '', '', '2', '0', '0', '0', 'Choose Complementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(33, 33, '', '', '', '2022-10-06 21:00', '2022-10-08 10:00', '', '', '2', '0', '0', '0', 'Choose Complementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(34, 34, '5', '', '', '2022-10-06 21:00', '2022-10-07 10:00', '', '', '1', '0', '0', '0', 'Choose Complementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(35, 35, '5', '', '', '2022-10-07 08:00', '2022-10-07 10:00', 'Dar es Salaam', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 184000.00, '', '', 0),
(36, 36, '4', '', '', '2022-10-07 09:00', '2022-10-07 10:00', 'Dodoma', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(37, 37, '', '', '', '2022-10-07 12:00:00', '2022-10-8 10:00:00 ', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(38, 38, '4', '', '', '2022-10-07 17:00', '2022-10-08 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(39, 39, '4', '', '', '2022-10-07 17:00', '2022-10-08 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(40, 40, '', '', '', '2022-10-07 17:00', '2022-10-09 10:00', '', '', '2', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(41, 41, '4', '', '', '2022-10-07 17:00', '2022-10-09 10:00', '', '', '2', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(42, 42, '', '', '', '2022-10-07 18:00', '2022-10-08 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(43, 43, '4', '', '', '2022-10-07 18:00', '2022-10-08 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(44, 44, '4', '', '', '2022-10-07 20:00', '2022-10-08 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(45, 45, '4', '', '', '2022-10-07 20:00', '2022-10-08 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(46, 46, '4', '', '', '2022-10-07 20:00', '2022-10-08 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(47, 47, '4', '', '', '2022-10-07 20:00', '2022-10-08 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(48, 48, '4', '', '', '2022-10-07 20:00', '2022-10-08 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', 'Offer', 0, 0, 0, '', 0.00, '', '', 0),
(49, 49, '4', '', '', '2022-10-08 13:00', '2022-10-09 13:00', 'Dar es Salaam', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(50, 50, '4', '', '', '2022-10-08 14:00', '2022-10-09 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(51, 51, '4', '', '', '2022-10-08 15:00', '2022-10-09 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(52, 52, '4', '', '', '2022-10-08 15:00', '2022-10-09 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(53, 53, '1', '', '', '2022-10-08 15:00', '2022-10-11 10:00', '', '', '3', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(54, 54, '1', '', '', '2022-10-08 15:00', '2022-10-11 10:00', '', '', '3', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(55, 55, '4', '', '', '2022-10-08 15:00', '2022-10-09 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(56, 56, '4', '', '', '2022-10-08 15:00', '2022-10-09 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(57, 57, '4', '', '', '2022-10-08 18:00', '2022-10-10 10:00', '', '', '2', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(58, 58, '4', '', '', '2022-10-08 18:00', '2022-10-09 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(59, 59, '4', '', '', '2022-10-08 19:00', '2022-10-10 10:00', '', '', '2', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(60, 60, '4', '', '', '2022-10-08 19:00', '2022-10-09 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(61, 61, '4', '', '', '2022-10-08 20:00', '2022-10-09 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(62, 62, '4', '', '', '2022-10-09 12:00:00', '2022-10-10 10:00:00 ', 'Dodoma', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(63, 63, '1', '', '', '2022-10-09 18:00', '2022-10-11 10:00', 'mbeya', '', '2', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(64, 64, '4', '', '', '2022-10-09 19:00', '2022-10-11 10:00', 'mbeya', '', '2', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(65, 65, '2', '', '', '2022-10-09 12:00:00', '2022-10-10 10:00:00 ', 'Dar es Salaam', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(66, 66, '4', '', '', '2022-10-09 12:00:00', '2022-10-10 10:00:00 ', 'Dodoma', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(67, 67, '1', '', '', '2022-10-09 21:00', '2022-10-13 10:00', 'Dar es Salaam', '', '4', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(68, 68, '3', '', '', '2022-10-09 21:00', '2022-10-10 10:00', 'Dar es Salaam', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(69, 69, '3', '', '', '2022-10-09 12:00:00', '2022-10-10 10:00:00 ', 'Dar es Salaam', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(70, 70, '4', '', '', '2022-10-09 21:00', '2022-10-10 10:00', 'IFUNDA', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(71, 71, '', '', '', '2022-10-09 21:00', '2022-10-10 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(72, 72, '4', '', '', '2022-10-18 00:00', '2022-10-19 10:00', '', '', '2', '0', '0', '0', 'Choose Complementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(73, 73, '', '', '', '2022-10-18 12:00', '2022-10-19 10:00', '', '', '1', '0', '0', '0', 'Choose Complementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(74, 74, '', '', '', '2022-10-11 14:00', '2022-10-13 10:00', '', '', '2', '0', '0', '0', 'Choose Complementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(75, 75, '', '', '', '2022-10-10 20:00', '2022-10-11 10:00', '', '', '1', '0', '0', '0', 'Choose Complementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(76, 76, '', '', '', '2022-10-10 20:00', '2022-10-12 10:00', '', '', '2', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(77, 77, '', '', '', '2022-10-10 21:00', '2022-10-11 10:00', 'DSM', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(78, 78, '', '', '', '2022-10-10 21:00', '2022-10-13 10:00', 'DSM', '', '3', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(79, 79, '', '', '', '2022-10-10 21:00', '2022-10-13 10:00', '', '', '3', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(80, 80, '', '', '', '2022-10-10 21:00', '2022-10-11 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(81, 81, '', '', '', '2022-10-10 21:00', '2022-10-17 10:00', 'MBEYA', '', '7', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(82, 82, '', '', '', '2022-10-10 21:00', '2022-10-14 10:00', 'DSM', '', '4', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(83, 83, '', '', '', '2022-10-10 21:00', '2022-10-11 10:00', 'DSM', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(84, 84, '', '', '', '2022-10-10 21:00', '2022-10-14 10:00', '', '', '4', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(85, 85, '', '', '', '2022-10-11 18:00', '2022-10-12 10:00', 'Dodoma', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(86, 86, '', '', '', '2022-10-11 20:00', '2022-10-12 10:00', 'Dodoma', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(87, 87, '', '', '', '2022-10-11 20:00:00', '2022-10-14 10:00', 'Dsm', '', '3', '0', '0', '0', 'Choose Complementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(88, 88, '', '', '', '2022-10-12 12:00', '2022-10-13 10:00', '', '', '1', '0', '0', '0', 'Choose Complementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(89, 89, '', '', '', '2022-10-11 21:00', '2022-10-13 10:00', 'DSM', '', '2', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(90, 90, '', '', '', '2022-10-11 21:00', '2022-10-13 10:00', '', '', '2', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(91, 91, '', '', '', '2022-10-11 21:00', '2022-10-21 10:00', '', '', '10', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(92, 92, '', '', '', '2022-10-11 22:00', '2022-10-12 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(93, 93, '4', '', '', '2022-10-12 20:00', '2022-10-15 10:00', '', '', '3', '0', '0', '0', 'ChooseComplementary', '0', 'Offer', 0, 0, 0, '', 0.00, '', '', 0),
(94, 94, '4', '', '', '2022-10-12 20:00', '2022-10-14 10:00', '', '', '2', '0', '0', '0', 'ChooseComplementary', '0', 'contract rate', 0, 0, 0, '', 0.00, '', '', 0),
(95, 95, '4', '', '', '2022-10-12 20:00', '2022-10-15 10:00', '', '', '3', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(96, 96, '4', '', '', '2022-10-12 21:00', '2022-10-15 10:00', '', '', '3', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(97, 97, '4', '', '', '2022-10-12 21:00', '2022-10-15 10:00', '', '', '3', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(98, 98, '', '', '', '2022-10-12 21:00', '2022-10-13 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(99, 99, '', '', '', '2022-10-12 21:00', '2022-10-13 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(100, 100, '', '', '', '2022-10-13 09:00', '2022-10-14 10:00', '', '', '2', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(101, 101, '', '', '', '2022-10-13 14:00', '2022-10-21 10:00', '', '', '8', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, 'Cash Payment', 0.00, '', '', 0),
(102, 102, '4', '', '', '2022-10-13 14:00', '2022-10-14 10:00', 'Iringa', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(103, 103, '4', '', '', '2022-10-13 15:00', '2022-10-14 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(104, 104, '4', '', '', '2022-10-13 15:00', '2022-10-14 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(105, 105, '', '', '', '2022-10-13 15:00', '2022-10-16 10:00', '', '', '3', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(106, 106, '', '', '', '2022-10-13 15:00', '2022-10-15 10:00', '', '', '2', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(107, 107, '1', '', '', '2022-10-13 16:00', '2022-10-14 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(108, 108, '4', '', '', '2022-10-13 16:00', '2022-10-15 10:00', '', '', '2', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, 'Cash Payment', 0.00, '', '', 0),
(109, 109, '4', '', '', '2022-10-13 17:00', '2022-10-15 10:00', '', '', '2', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(110, 110, '', '', '', '2022-10-13 17:00', '2022-10-16 09:00', '', '', '3', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(111, 111, '', '', '', '2022-10-13 17:00', '2022-10-14 09:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, 'Cash Payment', 0.00, '', '', 0),
(112, 112, '4', '', '', '2022-10-13 21:00', '2022-10-14 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(113, 113, '4', '', '', '2022-10-13 21:00', '2022-10-14 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(114, 114, '4', '', '', '2022-10-13 21:00', '2022-10-14 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(115, 115, '4', '', '', '2022-10-14 21:00', '2022-10-15 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(116, 116, '4', '', '', '2022-10-14 21:00', '2022-10-15 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(117, 117, '4', '', '', '2022-10-14 21:00', '2022-10-15 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(118, 118, '4', '', '', '2022-10-14 21:00', '2022-10-16 10:00', '', '', '2', '0', '0', '0', 'ChooseComplementary', '0', 'Offer', 0, 0, 0, '', 0.00, '', '', 0),
(119, 119, '4', '', '', '2022-10-14 21:00', '2022-10-15 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(120, 120, '4', '', '', '2022-10-14 21:00', '2022-10-15 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(121, 121, '4', '', '', '2022-10-14 21:00', '2022-10-15 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(122, 122, '4', '', '', '2022-10-14 21:00', '2022-10-15 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(123, 123, '4', '', '', '2022-10-14 21:00', '2022-10-16 10:00', '', '', '2', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(124, 124, '4', '', '', '2022-10-14 21:00', '2022-10-15 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', 'Offer', 0, 0, 0, '', 0.00, '', '', 0),
(125, 125, '4', '', '', '2022-10-14 21:00', '2022-10-15 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(126, 126, '', '', '', '2022-10-14 21:00', '2022-10-15 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(127, 127, '', '', '', '2022-10-15 13:00', '2022-10-17 10:00', '', '', '2', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(128, 128, '', '', '', '2022-10-15 12:00:00', '2022-10-16 10:00:00 ', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, 'Cash Payment', 60000.00, '', '', 0),
(129, 129, '', '', '', '2022-10-15 13:00', '2022-10-18 10:00', '', '', '3', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, 'Cash Payment', 100000.00, '', '', 0),
(130, 130, '4', '', '', '2022-10-15 16:00', '2022-10-16 10:00', 'Morogoro', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(131, 131, '4', '', '', '2022-10-15 16:00', '2022-10-16 10:00', 'Iringa', '', '1', '0', '0', '0', 'ChooseComplementary', '0', 'Offer', 0, 0, 0, 'Cash Payment', 0.00, '', '', 0),
(132, 132, '4', '', '', '2022-10-15 16:00', '2022-10-16 10:00', 'Morogoro', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(133, 133, '4', '', '', '2022-10-15 20:00', '2022-10-16 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(134, 134, '5', '', '', '2022-10-15 20:00', '2022-10-16 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(135, 135, '4', '', '', '2022-10-15 20:00', '2022-10-16 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(136, 136, '', '', '', '2022-10-15 21:00', '2022-10-16 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(137, 137, '4', '', '', '2022-10-16 15:00', '2022-10-17 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(138, 138, '4', '', '', '2022-10-16 15:00', '2022-10-17 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(139, 139, '4', '', '', '2022-10-16 15:00', '2022-10-17 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(140, 140, '4', '', '', '2022-10-16 15:00', '2022-10-17 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(141, 141, '', '', '', '2022-10-16 16:00', '2022-10-17 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(142, 142, '', '', '', '2022-10-16 16:00', '2022-10-17 09:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(143, 143, '', '', '', '2022-10-16 16:00', '2022-10-17 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(144, 144, '4', '', '', '2022-10-16 17:00', '2022-10-17 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(145, 145, '4', '', '', '2022-10-16 17:00', '2022-10-18 10:00', '', '', '2', '0', '0', '0', 'ChooseComplementary', '0', 'contract rate', 0, 0, 0, 'Cash Payment', 0.00, '', '', 0),
(146, 146, '4', '', '', '2022-10-16 18:00', '2022-10-22 10:00', '', '', '6', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, 'Cash Payment', 0.00, '', '', 0),
(147, 147, '', '', '', '2022-10-16 19:00', '2022-10-17 10:00', 'mbeya', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, 'Cash Payment', 130000.00, '', '', 0),
(148, 148, '2', '', '', '2022-10-16 19:00', '2022-10-17 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(149, 149, '4', '', '', '2022-10-16 19:00', '2022-10-17 10:00', 'mbeya', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, 'Cash Payment', 120000.00, '', '', 0),
(150, 150, '4', '', '', '2022-10-16 20:00', '2022-10-21 10:00', '', '', '5', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, 'Cash Payment', 0.00, '', '', 0),
(151, 151, '4', '', '', '2022-10-16 20:00', '2022-10-17 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, 'Cash Payment', 130000.00, '', '', 0),
(152, 152, '4', '', '', '2022-10-16 20:00', '2022-10-17 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, 'Cash Payment', 70000.00, '', '', 0),
(153, 153, '4', '', '', '2022-10-16 20:00', '2022-10-18 10:00', '', '', '2', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, 'Cash Payment', 0.00, '', '', 0),
(154, 154, '2', '', '', '2022-10-16 20:00', '2022-10-17 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(155, 155, '', '', '', '2022-10-17 15:00', '2022-10-19 10:00', '', '', '2', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(156, 156, '', '', '', '2022-10-17 15:00', '2022-10-19 10:00', '', '', '2', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(157, 157, '7', '', '', '2022-10-17 20:00', '2022-10-21 10:00', '', '', '4', '0', '0', '0', 'ChooseComplementary', '0', 'Room availabilty', 0, 0, 0, '', 0.00, '', '', 0),
(158, 158, '', '', '', '2022-10-18 15:00', '2022-10-21 10:00', '', '', '3', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(159, 159, '', '', '', '2022-10-18 15:00', '2022-10-21 10:00', '', '', '3', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(160, 160, '', '', '', '2022-10-18 15:00', '2022-10-24 10:00', '', '', '6', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(161, 161, '', '', '', '2022-10-18 18:00', '2022-10-19 10:00', 'mafinga', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, 'Cash Payment', 75000.00, '', '', 0),
(162, 162, '', '', '', '2022-10-18 23:00', '2022-10-19 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(163, 163, '', '', '', '2022-10-18 23:00', '2022-10-19 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(164, 164, '', '', '', '2022-10-18 23:00', '2022-10-19 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(165, 165, '', '', '', '2022-10-18 23:00', '2022-10-19 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(166, 166, '', '', '', '2022-10-18 23:00', '2022-10-19 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(167, 167, '', '', '', '2022-10-19 14:00', '2022-10-21 10:00', '', '', '2', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(168, 168, '', '', '', '2022-10-19 14:00', '2022-10-22 10:00', '', '', '3', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(169, 169, '', '', '', '2022-10-19 15:00', '2022-10-20 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(170, 170, '', '', '', '2022-10-19 15:00', '2022-10-20 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(171, 171, '', '', '', '2022-10-19 16:00', '2022-10-20 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(172, 172, '', '', '', '2022-10-19 16:00', '2022-10-22 10:00', '', '', '3', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(173, 173, '', '', '', '2022-10-19 16:00', '2022-10-22 10:00', '', '', '3', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(174, 174, '3', '', '', '2022-10-19 20:00', '2022-10-20 10:00', 'DSM', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(175, 175, '3', '', '', '2022-10-19 21:00', '2022-10-21 10:00', 'Morogoro', '', '2', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(176, 176, '', '', '', '2022-10-19 21:00', '2022-10-21 10:00', '', '', '2', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(177, 177, '', '', '', '2022-10-19 21:00', '2022-10-20 10:00', 'DSM', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, 'Card Payment', 0.00, '', '', 0),
(178, 178, '', '', '', '2022-10-20 12:00', '2022-10-21 12:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(179, 179, '', '', '', '2022-10-20 13:00', '2022-10-21 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(180, 180, '', '', '', '2022-10-20 13:00', '2022-10-21 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(181, 181, '', '', '', '2022-10-20 15:00', '2022-10-21 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(182, 182, '', '', '', '2022-10-21 20:00', '2022-10-22 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(183, 183, '', '', '', '2022-10-21 20:00', '2022-10-22 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(184, 184, '4', '', '', '2022-10-21 20:00', '2022-10-24 10:00', '', '', '3', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(185, 185, '', '', '', '2022-10-21 20:00', '2022-10-22 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(186, 186, '', '', '', '2022-10-21 20:00', '2022-10-22 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(187, 187, '', '', '', '2022-10-21 21:00', '2022-10-24 10:00', '', '', '3', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(188, 188, '', '', '', '2022-10-21 21:00', '2022-10-22 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(189, 189, '4', '', '', '2022-10-21 21:00', '2022-10-22 10:00', 'Morogoro', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(190, 190, '', '', '', '2022-10-21 21:00', '2022-10-22 10:00', 'Morogoro', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(191, 191, '', '', '', '2022-10-21 21:00', '2022-10-22 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(192, 192, '', '', '', '2022-10-22 12:00', '2022-10-23 12:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(193, 193, '', '', '', '2022-10-22 13:00', '2022-10-23 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(194, 194, '', '', '', '2022-10-22 13:00', '2022-10-23 10:00', '', '', '1', '0', '0', '0', 'Choose Complementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(195, 195, '', '', '', '2022-10-22 16:00', '2022-10-23 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(196, 196, '', '', '', '2022-10-22 16:00', '2022-10-23 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(197, 197, '', '', '', '2022-10-22 16:00', '2022-10-23 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(198, 198, '', '', '', '2022-10-22 16:00', '2022-10-22 16:00', '', '', '0', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(199, 199, '', '', '', '2022-10-22 21:00', '2022-10-24 10:00', 'Dodoma', '', '2', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(200, 200, '', '', '', '2022-10-22 21:00', '2022-10-24 10:00', 'Dodoma', '', '2', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(201, 201, '', '', '', '2022-10-22 21:00', '2022-10-24 10:00', 'Dar es Salaam', '', '2', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(202, 202, '2', '', '', '2022-10-23 17:00', '2022-10-29 10:00', '', '', '6', '0', '0', '0', 'ChooseComplementary', '0', 'contract rate', 0, 0, 0, '', 0.00, '', '', 0),
(203, 203, '4', '', '', '2022-10-23 17:00', '2022-10-29 10:00', '', '', '6', '0', '0', '0', 'ChooseComplementary', '0', 'contract rate', 0, 0, 0, '', 0.00, '', '', 0),
(204, 204, '4', '', '', '2022-10-23 18:00', '2022-10-29 10:00', '', '', '6', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(205, 205, '4', '', '', '2022-10-23 18:00', '2022-10-24 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(206, 206, '4', '', '', '2022-10-23 18:00', '2022-10-24 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', 'Offer', 0, 0, 0, '', 0.00, '', '', 0),
(207, 207, '', '', '', '2022-10-23 21:00', '2022-10-24 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(208, 208, '', '', '', '2022-10-23 21:00', '2022-10-24 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(209, 209, '', '', '', '2022-10-23 21:00', '2022-10-24 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(210, 210, '', '', '', '2022-10-23 21:00', '2022-10-24 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(211, 211, '', '', '', '2022-10-23 21:00', '2022-10-24 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, 'Cash Payment', 120000.00, '', '', 0),
(212, 212, '', '', '', '2022-11-27 12:00', '2022-12-09 10:00', '', '', '12', '0', '0', '0', 'Choose Complementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(213, 213, '', '', '', '2022-10-24 13:00', '2022-10-26 13:00', '', '', '2', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(214, 214, '', '', '', '2022-10-24 13:00', '2022-10-26 13:00', '', '', '2', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(215, 215, '', '', '', '2022-10-24 13:00', '2022-10-26 10:00', '', '', '2', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(216, 216, '', '', '', '2022-10-24 16:00', '2022-10-25 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(217, 217, '', '', '', '2022-10-24 16:00', '2022-10-25 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(218, 218, '', '', '', '2022-10-24 16:00', '2022-10-25 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(219, 219, '', '', '', '2022-10-24 16:00', '2022-10-25 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(220, 220, '', '', '', '2022-10-24 16:00', '2022-10-25 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(221, 221, '', '', '', '2022-10-24 16:00', '2022-10-25 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(222, 222, '', '', '', '2022-10-24 16:00', '2022-10-25 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(223, 223, '', '', '', '2022-10-24 16:00', '2022-10-25 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(224, 224, '', '', '', '2022-10-24 16:00', '2022-10-25 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(225, 225, '', '', '', '2022-10-24 16:00', '2022-10-26 10:00', '', '', '2', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(226, 226, '', '', '', '2022-10-24 16:00', '2022-10-25 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(227, 227, '2', '', '', '2022-10-24 20:00', '2022-10-28 10:00', '', '', '4', '0', '0', '0', 'ChooseComplementary', '0', 'contract rate', 0, 0, 0, '', 0.00, '', '', 0),
(228, 228, '4', '', '', '2022-10-24 20:00', '2022-10-25 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(229, 229, '4', '', '', '2022-10-24 20:00', '2022-10-25 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(230, 230, '', '', '', '2022-10-25 16:00', '2022-10-26 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(231, 231, '', '', '', '2022-10-25 16:00', '2022-10-26 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(232, 232, '4', '', '', '2022-10-25 19:00', '2022-10-26 10:00', 'Morogoro', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(233, 233, '2', '', '', '2022-10-25 19:00', '2022-10-29 10:00', '', '', '4', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(234, 234, '2', '', '', '2022-10-25 20:00', '2022-10-29 10:00', '', '', '4', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(235, 235, '2', '', '', '2022-10-25 20:00', '2022-10-30 10:00', '', '', '5', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(236, 236, '4', '', '', '2022-10-25 21:00', '2022-10-26 10:00', 'Dodoma', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(237, 237, '4', '', '', '2022-10-25 21:00', '2022-10-26 10:00', 'Dodoma', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(238, 238, '4', '', '', '2022-10-25 21:00', '2022-10-26 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(239, 239, '4', '', '', '2022-10-26 07:00', '2022-10-27 10:00', 'Dar es Salaam', '', '2', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(240, 240, '4', '', '', '2022-10-26 07:00', '2022-10-26 10:00', 'Dar es Salaam', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(241, 241, '4', '', '', '2022-10-26 20:00', '2022-10-27 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(242, 242, '2', '', '', '2022-10-26 20:00', '2022-10-27 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', 'contract rate', 0, 0, 0, '', 0.00, '', '', 0),
(243, 243, '4', '', '', '2022-10-26 20:00', '2022-10-27 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', 'contract rate', 0, 0, 0, '', 0.00, '', '', 0),
(244, 244, '', '', '', '2022-10-26 20:00', '2022-10-27 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', 'COMPLIMENTARY', 0, 0, 0, '', 0.00, '', '', 0),
(245, 245, '', '', '', '2022-10-26 20:00', '2022-10-27 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(246, 246, '', '', '', '2022-10-26 20:00', '2022-10-27 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(247, 247, '4', '', '', '2022-10-27 16:00', '2022-10-28 10:00', 'Ruaha', '', '1', '0', '0', '0', 'Choose Complementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(248, 248, '4', '', '', '2022-10-27 16:00', '2022-10-29 10:00', '', '', '2', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, 'Cash Payment', 360000.00, '', '', 0),
(249, 249, '4', '', '', '2022-10-27 16:00', '2022-10-28 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, 'Cash Payment', 80000.00, '', '', 0),
(250, 250, '4', '', '', '2022-10-27 18:00', '2022-10-29 10:00', 'Dar es Salaam', '', '2', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(251, 251, '', '', '', '2022-10-27 20:00', '2022-10-28 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(252, 252, '', '', '', '2022-10-27 12:00:00', '2022-10-28 10:00:00 ', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(253, 253, '', '', '', '2022-10-27 22:00', '2022-10-30 10:00', '', '', '3', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(254, 254, '', '', '', '2022-10-27 22:00', '2022-10-29 10:00', '', '', '2', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(255, 255, '', '', '', '2022-10-27 22:00', '2022-10-28 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(256, 256, '', '', '', '2022-10-27 22:00', '2022-10-28 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(257, 257, '', '', '', '2022-10-27 22:00', '2022-10-29 10:00', '', '', '2', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(258, 258, '', '', '', '2022-10-27 22:00', '2022-10-28 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(259, 259, '4', '', '', '2022-10-28 09:00', '2022-10-30 10:00', 'Dar es Salaam', '', '3', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(260, 260, '4', '', '', '2022-10-30 16:00', '2022-11-02 10:00', 'Dar es Salaam', '', '3', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, 'Cash Payment', 360000.00, '', '', 0),
(261, 261, '2', '', '', '2022-10-30 17:00', '2022-11-04 10:00', 'Dar es Salaam', '', '5', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(262, 262, '4', '', '', '2022-10-30 17:00', '2022-11-02 10:00', 'Dar es Salaam', '', '3', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, 'Cash Payment', 360000.00, '', '', 0),
(263, 263, '4', '', '', '2022-10-30 17:00', '2022-10-31 10:00', 'Dar es Salaam', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, 'Cash Payment', 80000.00, '', '', 0),
(264, 264, '4', '', '', '2022-10-30 12:00:00', '2022-10-31 10:00:00 ', 'mbeya', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(265, 265, '4', '', '', '2022-10-30 18:00', '2022-10-31 10:00', 'mbeya', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(266, 266, '4', '', '', '2022-10-30 18:00', '2022-10-31 10:00', 'mbeya', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(267, 267, '4', '', '', '2022-10-30 19:00', '2022-11-02 10:00', 'Dar es Salaam', '', '3', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, 'Cash Payment', 360000.00, '', '', 0),
(268, 268, '2', '', '', '2022-10-30 19:00', '2022-11-05 10:00', 'BURUNDI', '', '6', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(269, 269, '2', '', '', '2022-10-30 19:00', '2022-10-31 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(270, 270, '2', '', '', '2022-10-30 19:00', '2022-11-02 10:00', 'Dodoma', '', '3', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(271, 271, '4', '', '', '2022-10-31 20:00', '2022-11-02 10:00', '', '', '2', '0', '0', '0', 'ChooseComplementary', '0', 'NON RESIDENT', 0, 0, 0, '', 0.00, '', '', 0),
(272, 272, '4', '', '', '2022-10-31 20:00', '2022-11-04 10:00', '', '', '4', '0', '0', '0', 'ChooseComplementary', '0', 'Offer', 0, 0, 0, '', 0.00, '', '', 0),
(273, 273, '4', '', '', '2022-10-31 20:00', '2022-11-04 10:00', '', '', '4', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(274, 274, '1', '', '', '2022-10-31 20:00', '2022-11-01 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', 'NON RESIDENT', 0, 0, 0, '', 0.00, '', '', 0),
(275, 275, '4', '', '', '2022-10-31 20:00', '2022-11-01 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', 'Offer', 0, 0, 0, '', 0.00, '', '', 0),
(276, 276, '4', '', '', '2022-10-31 20:00', '2022-11-01 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', 'Offer', 0, 0, 0, '', 0.00, '', '', 0),
(277, 277, '', '', '', '2022-10-31 20:00', '2022-11-06 11:00', '', '', '6', '0', '0', '0', 'ChooseComplementary', '0', 'Offer', 0, 0, 0, '', 0.00, '', '', 0),
(278, 278, '', '', '', '2022-10-31 20:00', '2022-11-06 10:00', '', '', '6', '0', '0', '0', 'ChooseComplementary', '0', 'Offer', 0, 0, 0, '', 0.00, '', '', 0),
(279, 279, '', '', '', '2022-10-31 20:00', '2022-11-01 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(280, 280, '', '', '', '2022-11-01 12:00', '2022-11-04 10:00', '', '', '3', '0', '0', '0', 'Choose Complementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(281, 281, '', '', '', '2022-11-01 12:00', '2022-11-02 10:00', 'Njombe', '', '1', '0', '0', '0', 'Choose Complementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(282, 282, '', '', '', '2022-11-01 14:00', '2022-11-02 10:00', 'Njombe', '', '1', '0', '0', '0', 'Choose Complementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(283, 283, '', '', '', '2022-11-01 15:00', '2022-11-02 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(284, 284, '', '', '', '2022-11-01 18:00', '2022-11-02 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(285, 285, '', '', '', '2022-11-01 18:00', '2022-11-02 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(286, 286, '4', '', '', '2022-11-01 18:00', '2022-11-02 10:00', 'Dodoma', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(287, 287, '2', '', '', '2022-11-01 20:00', '2022-11-05 10:00', 'Dar es Salaam', '', '4', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(288, 288, '4', '', '', '2022-11-01 20:00', '2022-11-02 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(289, 289, '', '', '', '2022-11-02 14:00', '2022-11-06 10:00', '', '', '4', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(290, 290, '', '', '', '2022-11-02 14:00', '2022-11-06 10:00', '', '', '4', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(291, 291, '', '', '', '2022-11-02 15:00', '2022-11-04 10:00', '', '', '2', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(292, 292, '', '', '', '2022-11-02 15:00', '2022-11-04 10:00', '', '', '2', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(293, 293, '', '', '', '2022-11-02 15:00', '2022-11-10 10:00', '', '', '8', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(294, 294, '', '', '', '2022-11-02 16:00', '2022-11-04 10:00', '', '', '2', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(295, 295, '', '', '', '2022-11-02 16:00', '2022-11-04 10:00', '', '', '2', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(296, 296, '', '', '', '2022-11-02 16:00', '2022-11-04 10:00', '', '', '2', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(297, 297, '', '', '', '2022-11-02 16:00', '2022-11-04 10:00', '', '', '2', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(298, 298, '', '', '', '2022-11-02 17:00', '2022-11-04 10:00', '', '', '2', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(299, 299, '', '', '', '2022-11-02 17:00', '2022-11-03 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(300, 300, '', '', '', '2022-11-02 19:00', '2022-11-03 10:00', '', '', '1', '0', '0', '0', 'Choose Complementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(301, 301, '', '', '', '2022-11-02 20:00', '2022-11-03 10:00', '', '', '1', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, 'Cash Payment', 80000.00, '', '', 0),
(302, 302, '', '', '', '2022-11-03 16:00', '2022-11-05 10:00', '', '', '2', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(303, 303, '', '', '', '2022-11-03 16:00', '2022-11-05 10:00', '', '', '2', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(304, 304, '', '', '', '2022-11-03 17:00', '2022-11-05 10:00', '', '', '2', '0', '0', '0', 'ChooseComplementary', '0', '', 0, 0, 0, '', 0.00, '', '', 0),
(305, 305, '', '', '', '2024-10-16', '2024-10-16', '', '', '0', '0', '0', '0', 'no', '0', '', 0, 0, 0, '', 0.00, '', '', 1),
(306, 306, '', '', '', '2024-10-17', '2024-10-17', '', '', '0', '0', '0', '0', 'no', '0', '', 0, 0, 0, '', 0.00, '', '', 1),
(307, 307, '', '', '', '2024-10-17', '2024-10-17', '', '', '0', '0', '0', '0', 'no', '0', '', 0, 0, 0, '', 0.00, '', '', 1),
(308, 308, '', '', '', '2024-10-17', '2024-10-17', '', '', '0', '0', '0', '0', 'no', '0', '', 0, 0, 0, '', 0.00, '', '', 1),
(309, 309, '', '', '', '2024-10-17', '2024-10-17', '', '', '0', '0', '0', '0', 'no', '0', '', 0, 0, 0, '', 0.00, '', '', 1),
(310, 310, '', '', '', '2024-10-17', '2024-10-17', '', '', '0', '0', '0', '0', 'no', '0', '', 0, 0, 0, '', 0.00, '', '', 1),
(311, 311, '', '', '', '2024-10-17', '2024-10-17', '', '', '0', '0', '0', '0', 'no', '0', '', 0, 0, 0, '', 0.00, '', '', 1),
(312, 312, '', '', '', '2024-10-17', '2024-10-17', '', '', '0', '0', '0', '0', 'no', '0', '', 0, 0, 0, '', 0.00, '', '', 1),
(313, 313, '', '', '', '2024-10-17', '2024-10-17', '', '', '0', '0', '0', '0', 'no', '0', '', 0, 0, 0, '', 0.00, '', '', 1),
(314, 314, '', '', '', '2024-10-17', '2024-10-17', '', '', '0', '0', '0', '0', 'no', '0', '', 0, 0, 0, '', 0.00, '', '', 1),
(315, 315, '', '', '', '2024-10-17', '2024-10-17', '', '', '0', '0', '0', '0', 'no', '0', '', 0, 0, 0, '', 0.00, '', '', 1),
(316, 316, '', '', '', '2024-10-17', '2024-10-17', '', '', '0', '0', '0', '0', 'no', '0', '', 0, 0, 0, '', 0.00, '', '', 1),
(317, 317, '', '', '', '2024-10-17', '2024-10-17', '', '', '0', '0', '0', '0', 'no', '0', '', 0, 0, 0, '', 0.00, '', '', 1),
(318, 318, '', '', '', '2024-10-17', '2024-10-17', '', '', '0', '0', '0', '0', 'no', '0', '', 0, 0, 0, '', 0.00, '', '', 1),
(319, 319, '', '', '', '2024-10-17', '2024-10-17', '', '', '0', '0', '0', '0', 'no', '0', '', 0, 0, 0, '', 0.00, '', '', 1),
(320, 320, '', '', '', '2024-10-17', '2024-10-17', '', '', '0', '0', '0', '0', 'no', '0', '', 0, 0, 0, '', 0.00, '', '', 1),
(321, 321, '', '', '', '2024-10-20', '2024-10-20', '', '', '0', '0', '0', '0', 'no', '0', '', 0, 0, 0, '', 0.00, '', '', 1),
(322, 322, '', '', '', '2024-10-21', '2024-10-21', '', '', '0', '0', '0', '0', 'no', '0', '', 0, 0, 0, '', 0.00, '', '', 1);
INSERT INTO `booked_details` (`book_detailsid`, `bookedid`, `booking_type`, `booking_source`, `booking_source_no`, `extracheckin`, `extracheckout`, `arival_from`, `purpose`, `extra_facility_days`, `extrabed`, `extraperson`, `extrachild`, `complementary`, `complementaryprice`, `discountreason`, `discountamount`, `commissionpersent`, `commissionamount`, `payment_method`, `advance_amount`, `advance_remarks`, `remarks`, `booked_from`) VALUES
(323, 323, '', '', '', '2024-10-21', '2024-10-21', '', '', '0', '0', '0', '0', 'no', '0', '', 0, 0, 0, '', 0.00, '', '', 1),
(324, 324, '', '', '', '2024-10-21', '2024-10-21', '', '', '0', '0', '0', '0', 'no', '0', '', 0, 0, 0, '', 0.00, '', '', 1),
(325, 325, '', '', '', '2024-10-22', '2024-10-22', '', '', '0', '0', '0', '0', 'no', '0', '', 0, 0, 0, '', 0.00, '', '', 1),
(326, 326, '', '', '', '2024-10-22,2024-10-22', '2024-10-22,2024-10-22', '', '', '0,0', '0,0', '0,0', '0,0', 'no', '0,0', '', 0, 0, 0, '', 0.00, '', '', 1),
(327, 327, '', '', '', '2024-10-22', '2024-10-22', '', '', '0', '0', '0', '0', 'no', '0', '', 0, 0, 0, '', 0.00, '', '', 1),
(328, 328, '', '', '', '2024-10-22', '2024-10-22', '', '', '0', '0', '0', '0', 'no', '0', '', 0, 0, 0, '', 0.00, '', '', 1),
(329, 329, '', '', '', '2024-10-22 00:00', '2024-10-22 00:00', '', '', '0', '0', '0', '0', 'Choose Complementary', '0', '', 0, 0, 0, 'Direct Pay(DPO)', 130.00, '', '', 1),
(330, 330, '', '', '', '2024-10-22', '2024-10-22', '', '', '0', '0', '0', '0', 'no', '0', '', 0, 0, 0, '', 0.00, '', '', 1),
(331, 331, '', '', '', '2024-11-06,2024-11-06', '2024-11-06,2024-11-06', '', '', '0,0', '0,0', '0,0', '0,0', 'no', '0,0', '', 0, 0, 0, '', 0.00, '', '', 1),
(332, 332, '', '', '', '2024-11-06,2024-11-06', '2024-11-06,2024-11-06', '', '', '0,0', '0,0', '0,0', '0,0', 'no', '0,0', '', 0, 0, 0, '', 0.00, '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `booked_info`
--

CREATE TABLE `booked_info` (
  `bookedid` int(11) NOT NULL,
  `booking_number` varchar(100) NOT NULL,
  `date_time` datetime NOT NULL,
  `roomid` text NOT NULL,
  `nuofpeople` varchar(100) DEFAULT '0',
  `children` text DEFAULT NULL,
  `total_room` int(11) NOT NULL DEFAULT 0,
  `room_no` varchar(45) NOT NULL,
  `roomrate` text DEFAULT NULL,
  `promocode` text DEFAULT NULL,
  `total_price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `paid_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `offer_discount` varchar(100) NOT NULL DEFAULT '0.00',
  `full_guest_name` text DEFAULT NULL,
  `special_request` text DEFAULT NULL,
  `coments` text DEFAULT NULL,
  `checkindate` datetime NOT NULL,
  `checkoutdate` datetime NOT NULL,
  `cutomerid` int(11) NOT NULL,
  `bookingstatus` varchar(255) NOT NULL COMMENT '0=pending,1=cancel,2=success,3=finish,4=checkin,5=checkout',
  `isSeen` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `booked_info`
--

INSERT INTO `booked_info` (`bookedid`, `booking_number`, `date_time`, `roomid`, `nuofpeople`, `children`, `total_room`, `room_no`, `roomrate`, `promocode`, `total_price`, `paid_amount`, `offer_discount`, `full_guest_name`, `special_request`, `coments`, `checkindate`, `checkoutdate`, `cutomerid`, `bookingstatus`, `isSeen`) VALUES
(1, '00000001', '2022-10-05 11:35:14', '5', '2', '0', 1, '101', '150000', NULL, 150000.00, 0.00, '0', 'EDWIN SANDE', NULL, 'cancelled', '2022-10-05 12:00:00', '2022-10-08 10:00:00', 1, '1', 1),
(2, '00000002', '2022-10-05 12:30:42', '3', '1', '0', 1, '106', '120000', NULL, 120000.00, 0.00, '0', 'Engineer KOHI', NULL, 'correction', '2022-10-05 12:00:00', '2022-10-07 10:00:00', 2, '1', 1),
(3, '00000003', '2022-10-05 13:09:34', '3', '2', '0', 1, '106', '165600', NULL, 195408.00, 0.00, '0', 'Engineer KOHI Vecht', NULL, ' Tax Error', '2022-10-05 12:00:00', '2022-10-07 10:00:00', 2, '1', 1),
(4, '00000004', '2022-10-05 13:14:25', '3', '1', '0', 1, '119', '165600', NULL, 195408.00, 0.00, '0', 'Mr IAN', NULL, 'Error', '2022-10-05 12:00:00', '2022-10-07 10:00:00', 3, '1', 1),
(5, '00000005', '2022-10-05 15:48:53', '3', '2', '0', 1, '106', '165600', NULL, 165600.00, 0.00, '0', 'Engineer KOHI Vecht', NULL, 'Wrong name', '2022-10-05 12:00:00', '2022-10-07 10:00:00', 2, '1', 1),
(6, '00000006', '2022-10-05 15:50:04', '3', '2', '0', 1, '119', '165600', NULL, 165600.00, 331200.00, '0', 'Mr IAN IAN', NULL, 'Booking from admin', '2022-10-05 12:00:00', '2022-10-07 10:00:00', 3, '5', 1),
(7, '00000007', '2022-10-05 17:10:06', '5', '1', '0', 1, '104', '50000', NULL, 50000.00, 0.00, '0', 'Mr Olive luena', NULL, 'Wrong room number ', '2022-10-05 16:00:00', '2022-10-06 22:00:00', 5, '1', 1),
(8, '00000008', '2022-10-05 17:20:27', '1', '1', '0', 1, '113', '80000', NULL, 80000.00, 240000.00, '0', 'Mr George Kiwango', NULL, 'Booking from admin', '2022-10-05 17:00:00', '2022-10-08 17:00:00', 6, '5', 1),
(9, '00000009', '2022-10-05 17:33:23', '5', '2', '0', 1, '102', '50000', NULL, 50000.00, 100000.00, '0', 'Mr Olive luena luena', NULL, 'Booking from admin', '2022-10-05 12:00:00', '2022-10-06 17:00:00', 5, '5', 1),
(10, '00000010', '2022-10-05 17:38:14', '5', '1', '0', 1, '132', '50000', NULL, 50000.00, 100000.00, '0', 'Mr Samweli Kilua', NULL, 'Booking from admin', '2022-10-05 12:00:00', '2022-10-06 17:00:00', 7, '5', 1),
(11, '00000011', '2022-10-05 17:44:18', '4', '1', '0', 1, '123', '100000', NULL, 100000.00, 200000.00, '0', 'Mr Mikidad Waziri', NULL, 'Booking from admin', '2022-10-05 17:00:00', '2022-10-07 17:00:00', 8, '5', 1),
(12, '00000012', '2022-10-05 17:50:13', '5', '1', '0', 1, '103', '100000', NULL, 100000.00, 100000.00, '0', 'Mr Shukrani Chilewa', NULL, 'Booking from admin', '2022-10-05 17:00:00', '2022-10-06 17:00:00', 9, '5', 1),
(13, '00000013', '2022-10-05 19:12:19', '1', '1', '0', 1, '114', '80000', NULL, 80000.00, 320000.00, '0', 'Mr Doctor Malatjie', NULL, 'Booking from admin', '2022-10-05 19:00:00', '2022-10-09 19:00:00', 10, '5', 1),
(14, '00000014', '2022-10-05 21:27:30', '1', '1', '0', 1, '112', '80000', NULL, 80000.00, 160000.00, '0', 'Mr Christian Kannonyele', NULL, 'Booking from admin', '2022-10-05 21:00:00', '2022-10-07 21:00:00', 11, '5', 1),
(15, '00000015', '2022-10-05 21:31:09', '5', '1', '0', 1, '104', '100000', NULL, 100000.00, 300000.00, '0', 'Mr Neema Mosha', NULL, 'Booking from admin', '2022-10-05 21:00:00', '2022-10-08 21:00:00', 12, '5', 1),
(16, '00000016', '2022-10-05 21:37:43', '4', '1', '3', 1, '305', '130000', NULL, 130000.00, 0.00, '0', 'Mr George Gandye,Mr George Gandye', NULL, 'Error', '2022-10-05 21:00:00', '2022-10-09 21:00:00', 13, '1', 1),
(17, '00000017', '2022-10-05 21:44:42', '4', '1', '03', 1, '308', '130000', NULL, 130000.00, 520000.00, '0', 'Mr George Gandye Gandye', NULL, 'Booking from admin', '2022-10-05 21:00:00', '2022-10-09 21:00:00', 13, '5', 1),
(18, '00000018', '2022-10-05 21:45:57', '5', '1', '0', 1, '117', '150000', NULL, 150000.00, 600000.00, '0', 'Mr George Gandye Gandye', NULL, 'Booking from admin', '2022-10-05 21:00:00', '2022-10-09 21:00:00', 13, '5', 1),
(19, '00000019', '2022-10-06 10:38:07', '3', '1', '0', 1, '118', '331200', NULL, 331200.00, 331200.00, '0', 'Engineer KOHI Vecht', NULL, 'Booking from admin', '2022-10-06 10:00:00', '2022-10-07 10:00:00', 2, '5', 1),
(20, '00000020', '2022-10-06 10:56:45', '4', '1', '0', 1, '124', '130000', NULL, 130000.00, 130000.00, '0', 'Mr Shishir Kacker,Mr Shishir Kacker', NULL, 'Booking from admin', '2022-10-06 10:00:00', '2022-10-07 10:00:00', 14, '5', 1),
(21, '00000021', '2022-10-06 11:04:22', '4', '2', '0', 1, '122', '130000', NULL, 130000.00, 0.00, '0', 'Ms Ericka Kafwimi', NULL, 'WRONG', '2022-10-06 10:00:00', '2022-10-08 10:00:00', 16, '1', 1),
(22, '00000022', '2022-10-06 19:23:17', '5', '1', '0', 1, '103', '184000', NULL, 184000.00, 184000.00, '0', 'Mr KLANS POEHLS', NULL, 'Booking from admin', '2022-10-06 00:00:00', '2022-10-06 10:00:00', 17, '5', 1),
(23, '00000023', '2022-10-06 19:30:18', '5', '2', '0', 1, '102', '230000', NULL, 230000.00, 230000.00, '0', 'Mr LUCINS EMMA', NULL, 'Booking from admin', '2022-10-06 17:00:00', '2022-10-06 22:00:00', 18, '5', 1),
(24, '00000024', '2022-10-06 19:33:12', '5', '2', '0', 1, '307', '230000', NULL, 230000.00, 230000.00, '0', 'Mr JAANA  LUCIUS', NULL, 'Booking from admin', '2022-10-06 00:00:00', '2022-10-06 10:00:00', 19, '5', 1),
(25, '00000025', '2022-10-06 19:37:23', '5', '1', '0', 1, '132', '230000', NULL, 230000.00, 230000.00, '0', 'Mr ROLF REHER', NULL, 'Booking from admin', '2022-10-06 00:00:00', '2022-10-06 10:00:00', 20, '5', 1),
(26, '00000026', '2022-10-06 19:43:18', '2', '1', '0', 1, '111', '100000', NULL, 100000.00, 100000.00, '0', 'Mr JUMAA MGUNGA', NULL, 'Booking from admin', '2022-10-06 00:00:00', '2022-10-06 10:00:00', 22, '5', 1),
(27, '00000027', '2022-10-06 19:51:39', '2', '1', '0', 1, '131', '100000', NULL, 100000.00, 100000.00, '0', 'Mr ISSA RASHID', NULL, 'Booking from admin', '2022-10-06 12:00:00', '2022-10-07 10:00:00', 23, '5', 1),
(28, '00000028', '2022-10-06 19:54:14', '1', '1', '0', 1, '116', '80000', NULL, 80000.00, 0.00, '0', 'Mr GEORGE SHAYO', NULL, 'wrong check out date', '2022-10-06 00:00:00', '2022-10-06 10:00:00', 24, '1', 1),
(29, '00000029', '2022-10-06 20:42:00', '1', '1', '0', 1, '116', '80000', NULL, 80000.00, 160000.00, '0', 'Mr GEORGE  SHAYO', NULL, 'Booking from admin', '2022-10-06 00:00:00', '2022-10-07 10:00:00', 25, '5', 1),
(30, '00000030', '2022-10-06 20:45:31', '1', '1', '0', 1, '115', '80000', NULL, 80000.00, 160000.00, '0', 'Mr YOHANA MGANGA', NULL, 'Booking from admin', '2022-10-06 00:00:00', '2022-10-07 10:00:00', 26, '5', 1),
(31, '00000031', '2022-10-06 20:54:05', '2', '2', '0', 1, '109', '70000', NULL, 70000.00, 210000.00, '0', 'Ms CAROLINE VINCENT', NULL, 'Booking from admin', '2022-10-06 00:00:00', '2022-10-08 10:00:00', 27, '5', 1),
(32, '00000032', '2022-10-06 21:15:49', '4', '2', '0', 1, '122', '130000', NULL, 130000.00, 260000.00, '0', 'Mr CHRISTIAN KANNONYELE', NULL, 'Booking from admin', '2022-10-06 21:00:00', '2022-10-08 10:00:00', 28, '5', 1),
(33, '00000033', '2022-10-06 21:21:18', '5', '2', '0', 1, '101', '150000', NULL, 150000.00, 300000.00, '0', 'Mr NICO NGALAWA', NULL, 'Booking from admin', '2022-10-06 21:00:00', '2022-10-08 10:00:00', 29, '5', 1),
(34, '00000034', '2022-10-06 21:32:07', '5', '2', '0', 1, '307', '150000', NULL, 150000.00, 0.00, '0', 'Mr FLORA MWAKASITU', NULL, 'ERROR', '2022-10-06 21:00:00', '2022-10-07 10:00:00', 30, '1', 1),
(35, '00000035', '2022-10-07 09:22:42', '5', '1', '0', 1, '103', '184000', NULL, 184000.00, 184000.00, '0', 'Mr KLANS', NULL, 'Booking from admin', '2022-10-07 08:00:00', '2022-10-07 10:00:00', 31, '5', 1),
(36, '00000036', '2022-10-07 09:48:47', '2', '1', '0', 1, '108', '100000', NULL, 100000.00, 100000.00, '0', 'Mr BEBI KAPENYA', NULL, 'Booking from admin', '2022-10-07 09:00:00', '2022-10-07 10:00:00', 33, '5', 1),
(37, '00000037', '2022-10-07 13:50:31', '5', '2', '0', 1, '103', '100000', NULL, 100000.00, 100000.00, '0', 'Ms Ericka Kafwimi Kafwimi', NULL, 'Booking from admin', '2022-10-07 12:00:00', '2022-10-08 10:00:00', 16, '5', 1),
(38, '00000038', '2022-10-07 17:34:01', '2', '1', '0', 1, '111', '74750', NULL, 74750.00, 149500.00, '0', 'Ms BARB WOLFE', NULL, 'Booking from admin', '2022-10-07 00:00:00', '2022-10-08 10:00:00', 35, '5', 1),
(39, '00000039', '2022-10-07 17:38:01', '2', '1', '0', 1, '131', '149500', NULL, 149500.00, 149500.00, '0', 'Mr GOVANNI  BORSARI', NULL, 'Booking from admin', '2022-10-07 17:00:00', '2022-10-08 10:00:00', 36, '5', 1),
(40, '00000040', '2022-10-07 17:45:53', '4', '2', '0', 1, '305', '130000', NULL, 130000.00, 260000.00, '0', 'Mr GEORGE GANDYE', NULL, 'Booking from admin', '2022-10-07 13:00:00', '2022-10-09 10:00:00', 37, '5', 1),
(41, '00000041', '2022-10-07 17:53:29', '5', '1', '0', 1, '307', '165600', NULL, 165600.00, 331200.00, '0', 'Mr IAN IAN', NULL, 'Booking from admin', '2022-10-07 12:00:00', '2022-10-09 10:00:00', 3, '5', 1),
(42, '00000042', '2022-10-07 18:07:21', '1', '1', '0', 1, '115', '80000', NULL, 80000.00, 160000.00, '0', 'Mr YOHANA MGANGA', NULL, 'Booking from admin', '2022-10-07 18:00:00', '2022-10-08 10:00:00', 38, '5', 1),
(43, '00000043', '2022-10-07 18:09:51', '1', '1', '0', 1, '116', '80000', NULL, 80000.00, 80000.00, '0', 'Mr GEORGE SHAYO', NULL, 'Booking from admin', '2022-10-07 12:00:00', '2022-10-08 10:00:00', 39, '5', 1),
(44, '00000044', '2022-10-07 20:31:21', '5', '1', '0', 1, '102', '150000', NULL, 150000.00, 150000.00, '0', 'Ms NALOZI DENIS', NULL, 'Booking from admin', '2022-10-07 12:00:00', '2022-10-08 10:00:00', 40, '5', 1),
(45, '00000045', '2022-10-07 20:32:57', '5', '1', '0', 1, '132', '150000', NULL, 150000.00, 150000.00, '0', 'Ms LETICIA MAPUNDA', NULL, 'Booking from admin', '2022-10-07 12:00:00', '2022-10-08 10:00:00', 41, '5', 1),
(46, '00000046', '2022-10-07 20:34:49', '4', '1', '0', 1, '123', '130000', NULL, 130000.00, 130000.00, '0', 'Mr ABISAI LOMAYANI', NULL, 'Booking from admin', '2022-10-07 12:00:00', '2022-10-08 10:00:00', 42, '5', 1),
(47, '00000047', '2022-10-07 20:36:36', '1', '1', '0', 1, '112', '80000', NULL, 80000.00, 80000.00, '0', 'Mr HELTAN MBILINYI', NULL, 'Booking from admin', '2022-10-07 12:00:00', '2022-10-08 10:00:00', 43, '5', 1),
(48, '00000048', '2022-10-07 20:38:49', '3', '2', '0', 1, '106', '100000', NULL, 100000.00, 100000.00, '0', 'Mr ANDREA BIANCHI', NULL, 'Booking from admin', '2022-10-07 12:00:00', '2022-10-08 10:00:00', 44, '5', 1),
(49, '00000049', '2022-10-08 14:49:10', '2', '2', '0', 1, '131', '100000', NULL, 100000.00, 100000.00, '0', 'Mr MOHAMED', NULL, 'Booking from admin', '2022-10-08 13:00:00', '2022-10-09 13:00:00', 45, '5', 1),
(50, '00000050', '2022-10-08 15:00:32', '1', '1', '0', 1, '115', '80000', NULL, 80000.00, 80000.00, '0', 'Mr MORICE CHALAMILA', NULL, 'Booking from admin', '2022-10-08 12:00:00', '2022-10-09 10:00:00', 46, '5', 1),
(51, '00000051', '2022-10-08 15:02:45', '2', '2', '0', 1, '108', '100000', NULL, 100000.00, 100000.00, '0', 'Mr ALEX MWANYANJE', NULL, 'Booking from admin', '2022-10-08 12:00:00', '2022-10-09 10:00:00', 47, '5', 1),
(52, '00000052', '2022-10-08 15:04:36', '3', '1', '0', 1, '120', '120000', NULL, 120000.00, 120000.00, '0', 'Mr HARUNA RAMADHANI', NULL, 'Booking from admin', '2022-10-08 12:00:00', '2022-10-09 10:00:00', 48, '5', 1),
(53, '00000053', '2022-10-08 15:11:40', '4', '1', '0', 1, '123', '165600', NULL, 165600.00, 165600.00, '0', 'Mr INGEBRIGT MOLLAN', NULL, 'Booking from admin', '2022-10-08 12:00:00', '2022-10-11 10:00:00', 49, '5', 1),
(54, '00000054', '2022-10-08 15:33:26', '4', '2', '0', 1, '122', '165600', NULL, 165600.00, 496800.00, '0', 'Mr BJORN MYHRE', NULL, 'Booking from admin', '2022-10-08 12:00:00', '2022-10-11 10:00:00', 50, '5', 1),
(55, '00000055', '2022-10-08 15:36:05', '2', '2', '0', 1, '121', '100000', NULL, 100000.00, 100000.00, '0', 'Mr IBRAHIM RASHIDY', NULL, 'Booking from admin', '2022-10-08 12:00:00', '2022-10-09 10:00:00', 51, '5', 1),
(56, '00000056', '2022-10-08 15:40:32', '5', '1', '0', 1, '132', '150000', NULL, 150000.00, 150000.00, '0', 'Mr MANUEL JUAN SOTO GARCIA', NULL, 'Booking from admin', '2022-10-08 12:00:00', '2022-10-09 10:00:00', 52, '5', 1),
(57, '00000057', '2022-10-08 18:47:40', '1', '2', '0', 1, '112', '80000', NULL, 80000.00, 160000.00, '0', 'Ms QUEEN JOHN', NULL, 'Booking from admin', '2022-10-08 12:00:00', '2022-10-10 10:00:00', 53, '5', 1),
(58, '00000058', '2022-10-08 19:37:12', '2', '2', '0', 1, '111', '100000', NULL, 100000.00, 100000.00, '0', 'Mr VICTOR HAULE', NULL, 'Booking from admin', '2022-10-08 12:00:00', '2022-10-09 10:00:00', 54, '5', 1),
(59, '00000059', '2022-10-08 19:54:06', '5', '2', '0', 1, '102', '150000', NULL, 150000.00, 300000.00, '0', 'Ms HAPPY OGARE', NULL, 'Booking from admin', '2022-10-08 12:00:00', '2022-10-10 10:00:00', 55, '5', 1),
(60, '00000060', '2022-10-08 20:03:24', '1', '1', '0', 1, '116', '80000', NULL, 80000.00, 80000.00, '0', 'Mr ZUBERI LISSU', NULL, 'Booking from admin', '2022-10-08 12:00:00', '2022-10-09 10:00:00', 56, '5', 1),
(61, '00000061', '2022-10-08 20:05:34', '1', '2', '0', 1, '113', '80000', NULL, 80000.00, 80000.00, '0', 'Ms FORTUNATA MDEMU', NULL, 'Booking from admin', '2022-10-08 12:00:00', '2022-10-09 10:00:00', 57, '5', 1),
(62, '00000062', '2022-10-09 17:06:38', '3', '1', '0', 1, '119', '100000', NULL, 100000.00, 100000.00, '0', 'Mr EMMANUEL MAIGA', NULL, 'Booking from admin', '2022-10-09 12:00:00', '2022-10-10 10:00:00', 58, '5', 1),
(63, '00000063', '2022-10-09 19:24:19', '5', '2', '0', 1, '103', '92000', NULL, 92000.00, 184000.00, '0', 'Ms PATRICIA', NULL, 'Booking from admin', '2022-10-09 12:00:00', '2022-10-11 10:00:00', 59, '5', 1),
(64, '00000064', '2022-10-09 19:32:56', '2', '1', '0', 1, '121', '45000', NULL, 45000.00, 90000.00, '0', 'Ms MAGRETH MAMBAI', NULL, 'Booking from admin', '2022-10-09 12:00:00', '2022-10-11 10:00:00', 60, '5', 1),
(65, '00000065', '2022-10-09 20:43:16', '1', '1', '0', 1, '114', '80000', NULL, 80000.00, 80000.00, '0', 'Ms ADELAIDE KISINDA', NULL, 'Booking from admin', '2022-10-09 12:00:00', '2022-10-10 10:00:00', 61, '5', 1),
(66, '00000066', '2022-10-09 21:11:33', '1', '1', '0', 1, '113', '70000', NULL, 70000.00, 70000.00, '0', 'Mr FRANK KINKUTTA', NULL, 'Booking from admin', '2022-10-09 12:00:00', '2022-10-10 10:00:00', 62, '5', 1),
(67, '00000067', '2022-10-09 21:20:52', '4', '2', '0', 1, '305', '41400', NULL, 41400.00, 165600.00, '0', 'Mr IAN', NULL, 'Booking from admin', '2022-10-09 12:00:00', '2022-10-13 10:00:00', 63, '5', 1),
(68, '00000068', '2022-10-09 21:27:13', '5', '1', '0', 1, '132', '150000', NULL, 150000.00, 150000.00, '0', 'Mr TAKONDWA KALINDA', NULL, 'Booking from admin', '2022-10-09 12:00:00', '2022-10-10 10:00:00', 64, '5', 1),
(69, '00000069', '2022-10-09 21:37:21', '5', '1', '0', 1, '307', '150000', NULL, 150000.00, 150000.00, '0', 'Mr EDDIE CHILWANA', NULL, 'Booking from admin', '2022-10-09 12:00:00', '2022-10-10 10:00:00', 65, '5', 1),
(70, '00000070', '2022-10-09 21:42:22', '2', '2', '0', 1, '111', '100000', NULL, 100000.00, 100000.00, '0', 'Ms AMANDA MOSHI', NULL, 'Booking from admin', '2022-10-09 12:00:00', '2022-10-10 10:00:00', 66, '5', 1),
(71, '00000071', '2022-10-09 21:45:52', '1', '1', '0', 1, '115', '80000', NULL, 80000.00, 80000.00, '0', 'Mr MONICA', NULL, 'Booking from admin', '2022-10-09 12:00:00', '2022-10-10 10:00:00', 67, '5', 1),
(72, '00000072', '2022-10-10 12:16:51', '2', '1', '0', 1, '121', '149500', NULL, 149500.00, 0.00, '0', 'Mr ANDREW PHILBROOK', NULL, 'WRONG DATE', '2022-10-18 00:00:00', '2022-10-19 10:00:00', 68, '1', 1),
(73, '00000073', '2022-10-10 12:25:53', '2', '1', '0', 1, '121', '299000', NULL, 299000.00, 0.00, '0', 'Mr ANDREW PHILBROOK PHILBROOK', NULL, 'Booking from admin', '2022-10-18 12:00:00', '2022-10-19 10:00:00', 68, '0', 1),
(74, '00000074', '2022-10-10 12:37:57', '5', '1', '0', 1, '103', '120000', NULL, 120000.00, 0.00, '0', 'Mr JOSEPH LUPEMBE', NULL, 'Booking from admin', '2022-10-11 14:00:00', '2022-10-13 10:00:00', 69, '0', 1),
(75, '00000075', '2022-10-10 20:39:55', '5', '2', '0', 1, '132', '150000', NULL, 150000.00, 150000.00, '0', 'Mr QIAN CHEN', NULL, 'Booking from admin', '2022-10-10 20:00:00', '2022-10-11 10:00:00', 70, '5', 1),
(76, '00000076', '2022-10-10 20:54:19', '2', '1', '0', 1, '109', '45000', NULL, 45000.00, 90000.00, '0', 'Mr SAMWEL MLOLE', NULL, 'Booking from admin', '2022-10-10 20:00:00', '2022-10-12 10:00:00', 71, '5', 1),
(77, '00000077', '2022-10-10 21:04:50', '5', '1', '0', 1, '307', '150000', NULL, 150000.00, 150000.00, '0', 'Mr FENG  WANG', NULL, 'Booking from admin', '2022-10-10 21:00:00', '2022-10-11 10:00:00', 72, '5', 1),
(78, '00000078', '2022-10-10 21:12:01', '4', '1', '0', 1, '308', '130000', NULL, 130000.00, 390000.00, '0', 'Mr RALUCA DOMITRESCO', NULL, 'Booking from admin', '2022-10-10 21:00:00', '2022-10-13 10:00:00', 73, '5', 1),
(79, '00000079', '2022-10-10 21:17:57', '3', '1', '0', 1, '120', '120000', NULL, 120000.00, 360000.00, '0', 'Mr SISTY BASIL', NULL, 'Booking from admin', '2022-10-10 21:00:00', '2022-10-13 10:00:00', 74, '5', 1),
(80, '00000080', '2022-10-10 21:21:23', '2', '1', '0', 1, '131', '100000', NULL, 100000.00, 100000.00, '0', 'Mr MOSES LAITAYOCK', NULL, 'Booking from admin', '2022-10-10 21:00:00', '2022-10-11 10:00:00', 75, '5', 1),
(81, '00000081', '2022-10-10 21:26:10', '1', '1', '0', 1, '112', '11428.57142857143', NULL, 11428.57, 79999.99, '0', 'Mr LUSAJO BENSON', NULL, 'Booking from admin', '2022-10-10 21:00:00', '2022-10-17 10:00:00', 76, '5', 1),
(82, '00000082', '2022-10-10 21:31:50', '1', '1', '0', 1, '114', '70000', NULL, 70000.00, 280000.00, '0', 'Ms PATRICIA MKUDE', NULL, 'Booking from admin', '2022-10-10 12:00:00', '2022-10-14 10:00:00', 77, '5', 1),
(83, '00000083', '2022-10-10 21:40:19', '5', '2', '0', 1, '102', '120000', NULL, 120000.00, 120000.00, '0', 'Mr CARTER COLEMAN', NULL, 'Booking from admin', '2022-10-10 12:00:00', '2022-10-11 10:00:00', 78, '5', 1),
(84, '00000084', '2022-10-10 21:45:13', '1', '1', '0', 1, '115', '80000', NULL, 80000.00, 320000.00, '0', 'Mr IBRAHIM KYARUZI', NULL, 'Booking from admin', '2022-10-10 12:00:00', '2022-10-14 10:00:00', 79, '5', 1),
(85, '00000085', '2022-10-11 20:33:00', '5', '2', '0', 1, '132', '150000', NULL, 150000.00, 150000.00, '0', 'Mr Fredrick Shoo', NULL, 'Booking from admin', '2022-10-11 18:00:00', '2022-10-12 10:00:00', 80, '5', 1),
(86, '00000086', '2022-10-11 20:40:12', '5', '1', '0', 1, '307', '150000', NULL, 150000.00, 150000.00, '0', 'Mr Fredrick Shoo', NULL, 'Booking from admin', '2022-10-11 20:00:00', '2022-10-12 10:00:00', 81, '5', 1),
(87, '00000087', '2022-10-11 20:55:58', '4', '2', '0', 1, '305', '130000', NULL, 130000.00, 390000.00, '0', 'Mr Joanna Pinneu', NULL, 'Booking from admin', '2022-10-11 20:00:00', '2022-10-14 10:00:00', 82, '5', 1),
(88, '00000088', '2022-10-11 21:00:59', '2', '2', '0', 1, '109', '100000', NULL, 100000.00, 100000.00, '0', 'Mr Abdallah Hemed', NULL, 'Booking from admin', '2022-10-12 12:00:00', '2022-10-13 10:00:00', 83, '5', 1),
(89, '00000089', '2022-10-11 21:41:11', '3', '2', '0', 1, '106', '120000', NULL, 120000.00, 240000.00, '0', 'Mr NILESH LIMBANI', NULL, 'Booking from admin', '2022-10-11 19:00:00', '2022-10-13 10:00:00', 84, '5', 1),
(90, '00000090', '2022-10-11 21:49:20', '3', '2', '0', 1, '105', '120000', NULL, 120000.00, 240000.00, '0', 'Mr NILESH LMBANI', NULL, 'Booking from admin', '2022-10-11 18:00:00', '2022-10-13 10:00:00', 85, '5', 1),
(91, '00000091', '2022-10-11 22:00:12', '4', '1', '0', 1, '122', '130000', NULL, 130000.00, 1300000.00, '0', 'Mr Jean Ganza', NULL, 'Booking from admin', '2022-10-11 18:00:00', '2022-10-21 10:00:00', 86, '5', 1),
(92, '00000092', '2022-10-11 22:04:21', '4', '1', '0', 1, '123', '130000', NULL, 130000.00, 130000.00, '0', 'Mr Lucy Kuria', NULL, 'Booking from admin', '2022-10-11 21:00:00', '2022-10-12 10:00:00', 87, '5', 1),
(93, '00000093', '2022-10-12 20:39:26', '5', '1', '0', 1, '136', '120000', NULL, 120000.00, 360000.00, '0', 'Mr ADAM MOSHI', NULL, 'Booking from admin', '2022-10-12 12:00:00', '2022-10-15 10:00:00', 88, '5', 1),
(94, '00000094', '2022-10-12 20:53:31', '4', '1', '0', 1, '123', '100000', NULL, 100000.00, 200000.00, '0', 'Mr Samwel Kilua', NULL, 'Booking from admin', '2022-10-12 12:00:00', '2022-10-14 10:00:00', 89, '5', 1),
(95, '00000095', '2022-10-12 21:02:50', '5', '1', '0', 1, '104', '120000', NULL, 120000.00, 360000.00, '0', 'Mr AHMED  SALEH', NULL, 'Booking from admin', '2022-10-12 12:00:00', '2022-10-15 10:00:00', 90, '5', 1),
(96, '00000096', '2022-10-12 21:05:58', '5', '1', '0', 1, '102', '120000', NULL, 120000.00, 360000.00, '0', 'Mr ADAM SALIM', NULL, 'Booking from admin', '2022-10-12 12:00:00', '2022-10-15 10:00:00', 91, '5', 1),
(97, '00000097', '2022-10-12 21:08:05', '4', '1', '0', 1, '122', '120000', NULL, 120000.00, 360000.00, '0', 'Mr ABUBAKARI RAJABU', NULL, 'Booking from admin', '2022-10-12 12:00:00', '2022-10-15 10:00:00', 92, '5', 1),
(98, '00000098', '2022-10-12 21:53:05', '2', '1', '0', 1, '121', '100000', NULL, 100000.00, 100000.00, '0', 'Ms MAGRETH MAMBAI MAMBAI', NULL, 'Booking from admin', '2022-10-12 12:00:00', '2022-10-13 10:00:00', 60, '5', 1),
(99, '00000099', '2022-10-12 21:54:42', '4', '1', '0', 1, '124', '130000', NULL, 130000.00, 130000.00, '0', 'Mr MONICA', NULL, 'Booking from admin', '2022-10-12 21:00:00', '2022-10-13 10:00:00', 67, '5', 1),
(100, '00000100', '2022-10-13 09:57:36', '5', '1', '0', 1, '307', '150000', NULL, 150000.00, 300000.00, '0', 'Mr RASMUS', NULL, 'Booking from admin', '2022-10-13 09:00:00', '2022-10-14 10:00:00', 93, '5', 1),
(101, '00000101', '2022-10-13 15:00:23', '1', '1', '0', 1, '112', '80000', NULL, 80000.00, 0.00, '0', 'Mr tejTEJASWINT JAG', NULL, 'WRONG', '2022-10-13 14:00:00', '2022-10-21 10:00:00', 94, '1', 1),
(102, '00000102', '2022-10-13 15:05:00', '4', '1', '0', 1, '124', '120000', NULL, 120000.00, 0.00, '0', 'Ms Chery Anton', NULL, 'wrong room ', '2022-10-13 14:00:00', '2022-10-14 10:00:00', 95, '1', 1),
(103, '00000103', '2022-10-13 15:13:24', '2', '1', '0', 1, '108', '80000', NULL, 80000.00, 80000.00, '0', 'Ms Chery Anton Anton', NULL, 'Booking from admin', '2022-10-13 12:00:00', '2022-10-14 10:00:00', 95, '5', 1),
(104, '00000104', '2022-10-13 15:17:18', '4', '2', '0', 1, '124', '120000', NULL, 120000.00, 120000.00, '0', 'Mr Georgia  Anton', NULL, 'Booking from admin', '2022-10-13 15:00:00', '2022-10-14 10:00:00', 96, '5', 1),
(105, '00000105', '2022-10-13 15:25:21', '5', '1', '0', 1, '140', '150000', NULL, 150000.00, 450000.00, '0', 'Mr William Macha', NULL, 'Booking from admin', '2022-10-13 15:00:00', '2022-10-16 10:00:00', 97, '5', 1),
(106, '00000106', '2022-10-13 16:04:44', '5', '1', '0', 1, '101', '100000', NULL, 100000.00, 200000.00, '0', 'Mr Ezekiel Nungwi,', NULL, 'Booking from admin', '2022-10-13 15:00:00', '2022-10-15 10:00:00', 98, '5', 1),
(107, '00000107', '2022-10-13 16:21:16', '4', '2', '0', 1, '308', '165600', NULL, 165600.00, 165600.00, '0', 'Ms VIVIANE HASSLEMANN', NULL, 'Booking from admin', '2022-10-13 16:00:00', '2022-10-14 10:00:00', 99, '5', 1),
(108, '00000108', '2022-10-13 16:31:08', '3', '1', '0', 1, '119', '120000', NULL, 120000.00, 0.00, '0', 'Mr PAULO KILENGA', NULL, 'WRONG', '2022-10-13 12:00:00', '2022-10-15 10:00:00', 100, '1', 1),
(109, '00000109', '2022-10-13 17:36:20', '3', '1', '0', 1, '130', '120000', NULL, 120000.00, 240000.00, '0', 'Mr BENOIT WILHELMI', NULL, 'Booking from admin', '2022-10-13 12:00:00', '2022-10-15 10:00:00', 101, '5', 1),
(110, '00000110', '2022-10-13 17:51:07', '5', '1', '0', 1, '145', '150000', NULL, 150000.00, 450000.00, '0', 'Mr WALEED SALEHE', NULL, 'Booking from admin', '2022-10-13 12:00:00', '2022-10-16 09:00:00', 102, '5', 1),
(111, '00000111', '2022-10-13 18:01:00', '1', '1', '0', 1, '113', '80000', NULL, 80000.00, 0.00, '0', 'Mr GIDEON MAKARA', NULL, 'WRONG', '2022-10-13 12:00:00', '2022-10-14 09:00:00', 103, '1', 1),
(112, '00000112', '2022-10-13 21:18:37', '5', '1', '0', 1, '117', '150000', NULL, 150000.00, 150000.00, '0', 'Mr ADOLPH  NDUGULU', NULL, 'Booking from admin', '2022-10-13 12:00:00', '2022-10-14 10:00:00', 105, '5', 1),
(113, '00000113', '2022-10-13 21:20:11', '3', '2', '0', 1, '120', '120000', NULL, 120000.00, 120000.00, '0', 'Mr FARID MBARAK', NULL, 'Booking from admin', '2022-10-13 12:00:00', '2022-10-14 10:00:00', 106, '5', 1),
(114, '00000114', '2022-10-13 21:22:23', '5', '2', '0', 1, '132', '150000', NULL, 150000.00, 150000.00, '0', 'Mr AREF MBARAK', NULL, 'Booking from admin', '2022-10-13 12:00:00', '2022-10-14 10:00:00', 107, '5', 1),
(115, '00000115', '2022-10-14 21:12:34', '5', '1', '0', 1, '145', '150000', NULL, 150000.00, 150000.00, '0', 'Mr ABDALLAH HUWEL', NULL, 'Booking from admin', '2022-10-14 12:00:00', '2022-10-15 10:00:00', 108, '5', 1),
(116, '00000116', '2022-10-14 21:14:48', '3', '2', '0', 1, '105', '120000', NULL, 120000.00, 120000.00, '0', 'Mr MICHAEL MBILINYI', NULL, 'Booking from admin', '2022-10-14 12:00:00', '2022-10-15 10:00:00', 109, '5', 1),
(117, '00000117', '2022-10-14 21:17:09', '1', '1', '0', 1, '113', '80000', NULL, 80000.00, 80000.00, '0', 'Mr MATTEO PAVANA', NULL, 'Booking from admin', '2022-10-14 12:00:00', '2022-10-15 10:00:00', 110, '5', 1),
(118, '00000118', '2022-10-14 21:19:27', '5', '2', '0', 1, '307', '130000', NULL, 130000.00, 260000.00, '0', 'Ms JESSICA SWAI', NULL, 'Booking from admin', '2022-10-14 12:00:00', '2022-10-16 10:00:00', 111, '5', 1),
(119, '00000119', '2022-10-14 21:22:28', '3', '2', '0', 1, '120', '120000', NULL, 120000.00, 120000.00, '0', 'Mr ALI AHMED', NULL, 'Booking from admin', '2022-10-14 12:00:00', '2022-10-15 10:00:00', 112, '5', 1),
(120, '00000120', '2022-10-14 21:26:55', '4', '1', '0', 1, '305', '130000', NULL, 130000.00, 130000.00, '0', 'Mr MBARICK NASSOR', NULL, 'Booking from admin', '2022-10-14 12:00:00', '2022-10-15 10:00:00', 113, '5', 1),
(121, '00000121', '2022-10-14 21:28:40', '2', '2', '0', 1, '108', '100000', NULL, 100000.00, 100000.00, '0', 'Mr ANDREA BIANCHI', NULL, 'Booking from admin', '2022-10-14 12:00:00', '2022-10-15 10:00:00', 114, '5', 1),
(122, '00000122', '2022-10-14 21:30:03', '1', '1', '0', 1, '116', '80000', NULL, 80000.00, 80000.00, '0', 'Mr ZUBERI LISSU', NULL, 'Booking from admin', '2022-10-14 12:00:00', '2022-10-15 10:00:00', 115, '5', 1),
(123, '00000123', '2022-10-14 21:32:16', '2', '2', '0', 1, '109', '100000', NULL, 100000.00, 200000.00, '0', 'Ms SALAMA BAMVUA', NULL, 'Booking from admin', '2022-10-14 12:00:00', '2022-10-16 10:00:00', 116, '5', 1),
(124, '00000124', '2022-10-14 21:34:27', '4', '1', '0', 1, '124', '100000', NULL, 100000.00, 100000.00, '0', 'Ms MARYAM LUSHINO', NULL, 'Booking from admin', '2022-10-14 12:00:00', '2022-10-15 10:00:00', 117, '5', 1),
(125, '00000125', '2022-10-14 21:35:53', '1', '2', '0', 1, '115', '80000', NULL, 80000.00, 80000.00, '0', 'Ms LUCY BRUNO', NULL, 'Booking from admin', '2022-10-14 12:00:00', '2022-10-15 10:00:00', 118, '5', 1),
(126, '00000126', '2022-10-14 21:54:15', '4', '1', '0', 1, '308', '130000', NULL, 130000.00, 130000.00, '0', 'Mr Salim Bin kleb', NULL, 'Booking from admin', '2022-10-14 21:00:00', '2022-10-15 10:00:00', 119, '5', 1),
(127, '00000127', '2022-10-15 13:07:14', '4', '2', '0', 1, '122', '130000', NULL, 130000.00, 260000.00, '0', 'Mr DAVID PERRY', NULL, 'Booking from admin', '2022-10-15 12:00:00', '2022-10-17 10:00:00', 121, '5', 1),
(128, '00000128', '2022-10-15 13:21:52', '1', '2', '0', 1, '113', 'NaN', NULL, 0.00, 0.00, '0', 'Mr MOHAMED', NULL, 'wrong room', '2022-10-15 12:00:00', '2022-10-16 10:00:00', 45, '1', 1),
(129, '00000129', '2022-10-15 13:25:27', '1', '2', '0', 1, '113', '80000', NULL, 80000.00, 0.00, '0', 'Mr MOHAMED', NULL, 'wrong room', '2022-10-15 12:00:00', '2022-10-18 10:00:00', 45, '1', 1),
(130, '00000130', '2022-10-15 16:27:26', '3', '1', '0', 1, '105', '120000', NULL, 120000.00, 120000.00, '0', 'Mr Nizio Faller', NULL, 'Booking from admin', '2022-10-15 12:00:00', '2022-10-16 10:00:00', 122, '5', 1),
(131, '00000131', '2022-10-15 16:31:09', '5', '2', '0', 1, '103', '150000', NULL, 150000.00, 0.00, '0', 'Mr Mohamed Moyo', NULL, 'WRONG', '2022-10-15 12:00:00', '2022-10-16 10:00:00', 123, '1', 1),
(132, '00000132', '2022-10-15 16:41:05', '3', '1', '0', 1, '120', '120000', NULL, 120000.00, 120000.00, '0', 'Mr Nicholas Kanyamala', NULL, 'Booking from admin', '2022-10-15 12:00:00', '2022-10-16 10:00:00', 124, '5', 1),
(133, '00000133', '2022-10-15 20:54:57', '4', '2', '0', 1, '123', '130000', NULL, 130000.00, 130000.00, '0', 'Mr HAMIS SALUM', NULL, 'Booking from admin', '2022-10-15 12:00:00', '2022-10-16 10:00:00', 125, '5', 1),
(134, '00000134', '2022-10-15 20:58:20', '2', '2', '0', 1, '108', '156400', NULL, 156400.00, 156400.00, '0', 'Ms URTE SCHLUTER', NULL, 'Booking from admin', '2022-10-15 12:00:00', '2022-10-16 10:00:00', 126, '5', 1),
(135, '00000135', '2022-10-15 21:00:26', '1', '1', '0', 1, '116', '80000', NULL, 80000.00, 80000.00, '0', 'Mr PAULO FISCHER', NULL, 'Booking from admin', '2022-10-15 12:00:00', '2022-10-16 10:00:00', 127, '5', 1),
(136, '00000136', '2022-10-15 21:03:10', '5', '1', '0', 1, '101', '100000', NULL, 100000.00, 100000.00, '0', 'Mr EZEKIEL NUNGWI', NULL, 'Booking from admin', '2022-10-15 12:00:00', '2022-10-16 10:00:00', 128, '5', 1),
(137, '00000137', '2022-10-16 15:34:46', '5', '1', '0', 1, '132', '184000', NULL, 184000.00, 184000.00, '0', 'Mr KLANS POEHLS', NULL, 'Booking from admin', '2022-10-16 12:00:00', '2022-10-17 10:00:00', 129, '5', 1),
(138, '00000138', '2022-10-16 15:38:02', '5', '2', '0', 1, '102', '230000', NULL, 230000.00, 230000.00, '0', 'Ms LUCINS EMMA', NULL, 'Booking from admin', '2022-10-16 12:00:00', '2022-10-17 10:00:00', 130, '5', 1),
(139, '00000139', '2022-10-16 15:53:17', '5', '2', '0', 1, '307', '230000', NULL, 230000.00, 230000.00, '0', 'Ms JAANA LUCIUS', NULL, 'Booking from admin', '2022-10-16 12:00:00', '2022-10-17 10:00:00', 131, '5', 1),
(140, '00000140', '2022-10-16 16:01:25', '5', '1', '0', 1, '101', '230000', NULL, 230000.00, 230000.00, '0', 'Mr ROLF REHER', NULL, 'Booking from admin', '2022-10-16 12:00:00', '2022-10-17 10:00:00', 132, '5', 1),
(141, '00000141', '2022-10-16 16:06:38', '2', '2', '1', 1, '108', '100000', NULL, 100000.00, 100000.00, '0', 'Mr NKANDA JEREMIAH', NULL, 'Booking from admin', '2022-10-16 16:00:00', '2022-10-17 10:00:00', 133, '5', 1),
(142, '00000142', '2022-10-16 16:11:31', '2', '2', '0', 1, '109', '100000', NULL, 100000.00, 100000.00, '0', 'Mr ESNATH  ALPHONCE', NULL, 'Booking from admin', '2022-10-16 12:00:00', '2022-10-17 09:00:00', 134, '5', 1),
(143, '00000143', '2022-10-16 16:16:25', '2', '1', '0', 1, '111', '100000', NULL, 100000.00, 100000.00, '0', 'Mr ROSE NJAVIKE', NULL, 'Booking from admin', '2022-10-16 12:00:00', '2022-10-17 10:00:00', 135, '5', 1),
(144, '00000144', '2022-10-16 17:33:07', '4', '1', '0', 1, '305', '130000', NULL, 130000.00, 130000.00, '0', 'Mr BERNARD SEHABIAGUE', NULL, 'Booking from admin', '2022-10-16 12:00:00', '2022-10-17 10:00:00', 136, '5', 1),
(145, '00000145', '2022-10-16 17:51:14', '3', '2', '0', 1, '105', '108000', NULL, 108000.00, 0.00, '0', 'Mr JONAS BALENGAYABO', NULL, 'WRONG', '2022-10-16 12:00:00', '2022-10-18 10:00:00', 137, '1', 1),
(146, '00000146', '2022-10-16 18:05:58', '5', '3', '0', 1, '103', '150000', NULL, 150000.00, 0.00, '0', 'Mr AMAR HAMAD', NULL, 'WRONG', '2022-10-16 12:00:00', '2022-10-22 10:00:00', 138, '1', 1),
(147, '00000147', '2022-10-16 19:09:31', '4', '2', '0', 1, '123', '130000', NULL, 130000.00, 130000.00, '0', 'Mr ALPHONCE MAGANGA', NULL, 'Booking from admin', '2022-10-16 12:00:00', '2022-10-17 10:00:00', 139, '5', 1),
(148, '00000148', '2022-10-16 19:25:39', '3', '1', '0', 1, '130', '100000', NULL, 100000.00, 100000.00, '0', 'Ms Olive Luena', NULL, 'Booking from admin', '2022-10-16 12:00:00', '2022-10-17 10:00:00', 140, '5', 1),
(149, '00000149', '2022-10-16 19:33:41', '3', '1', '0', 1, '118', '120000', NULL, 120000.00, 120000.00, '0', 'Mr Charles Wilson', NULL, 'Booking from admin', '2022-10-16 12:00:00', '2022-10-17 10:00:00', 141, '5', 1),
(150, '00000150', '2022-10-16 20:06:58', '1', '1', '0', 1, '113', '80000', NULL, 80000.00, 0.00, '0', 'Mr Abdallah Hemed', NULL, 'WRONG', '2022-10-16 12:00:00', '2022-10-21 10:00:00', 142, '1', 1),
(151, '00000151', '2022-10-16 20:14:13', '4', '2', '0', 1, '308', '130000', NULL, 130000.00, 130000.00, '0', 'Mr Hamis Salum', NULL, 'Booking from admin', '2022-10-16 12:00:00', '2022-10-17 10:00:00', 143, '5', 1),
(152, '00000152', '2022-10-16 20:18:46', '1', '1', '0', 1, '115', '70000', NULL, 70000.00, 70000.00, '0', 'Mr Fredy Haule', NULL, 'Booking from admin', '2022-10-16 12:00:00', '2022-10-17 10:00:00', 144, '5', 1),
(153, '00000153', '2022-10-16 20:23:03', '1', '1', '0', 1, '116', '80000', NULL, 80000.00, 0.00, '0', 'Mr Emmanuel Mhimbila', NULL, 'WRONG', '2022-10-16 12:00:00', '2022-10-18 10:00:00', 145, '1', 1),
(154, '00000154', '2022-10-16 20:58:08', '4', '2', '0', 1, '124', '108000', NULL, 108000.00, 108000.00, '0', 'Mr Valerian Kiyanga', NULL, 'Booking from admin', '2022-10-16 12:00:00', '2022-10-17 10:00:00', 146, '5', 1),
(155, '00000155', '2022-10-17 15:56:44', '2', '2', '0', 1, '124', '100000', NULL, 100000.00, 200000.00, '0', 'Mr LONEBRUUN RASMOSSEN', NULL, 'Booking from admin', '2022-10-17 12:00:00', '2022-10-19 10:00:00', 147, '5', 1),
(156, '00000156', '2022-10-17 16:01:10', '2', '2', '0', 1, '123', '100000', NULL, 100000.00, 200000.00, '0', 'Mr BENTHOUMAA JQRGENSEN', NULL, 'Booking from admin', '2022-10-17 12:00:00', '2022-10-19 10:00:00', 148, '5', 1),
(157, '00000157', '2022-10-17 20:29:44', '4', '1', '0', 1, '113', '120000', NULL, 120000.00, 480000.00, '0', 'Mr MARK WAGECHE', NULL, 'Booking from admin', '2022-10-17 12:00:00', '2022-10-21 10:00:00', 149, '5', 1),
(158, '00000158', '2022-10-18 15:18:19', '1', '1', '0', 1, '130', '80000', NULL, 80000.00, 240000.00, '0', 'Mr TEJASWINT JOG', NULL, 'Booking from admin', '2022-10-18 12:00:00', '2022-10-21 10:00:00', 150, '5', 1),
(159, '00000159', '2022-10-18 15:25:44', '1', '1', '0', 1, '131', '80000', NULL, 80000.00, 240000.00, '0', 'Mr Abdallah Hemed Hemed', NULL, 'Booking from admin', '2022-10-18 15:00:00', '2022-10-21 10:00:00', 83, '5', 1),
(160, '00000160', '2022-10-18 15:36:35', '4', '1', '0', 1, '114', '130000', NULL, 130000.00, 780000.00, '0', 'Mr ANDWEN PLIBROOK', NULL, 'Booking from admin', '2022-10-18 12:00:00', '2022-10-24 10:00:00', 151, '5', 1),
(161, '00000161', '2022-10-18 18:56:24', '1', '1', '0', 1, '127', '75000', NULL, 75000.00, 75000.00, '0', 'Mr William Ritte', NULL, 'Booking from admin', '2022-10-18 18:00:00', '2022-10-19 10:00:00', 152, '5', 1),
(162, '00000162', '2022-10-18 23:06:04', '5', '1', '0', 1, '109', '150000', NULL, 150000.00, 150000.00, '0', 'Mr MOHAMED  FARAJ', NULL, 'Booking from admin', '2022-10-18 21:00:00', '2022-10-19 10:00:00', 153, '5', 1),
(163, '00000163', '2022-10-18 23:11:26', '5', '1', '0', 1, '101', '150000', NULL, 150000.00, 150000.00, '0', 'Mr LAURA KIMWENE', NULL, 'Booking from admin', '2022-10-18 21:00:00', '2022-10-19 10:00:00', 154, '5', 1),
(164, '00000164', '2022-10-18 23:19:13', '5', '1', '0', 1, '102', '150000', NULL, 150000.00, 150000.00, '0', 'Mr SAMANTHA OPERE', NULL, 'Booking from admin', '2022-10-18 21:00:00', '2022-10-19 10:00:00', 155, '5', 1),
(165, '00000165', '2022-10-18 23:25:50', '5', '1', '0', 1, '103', '150000', NULL, 150000.00, 150000.00, '0', 'Mr PAUL MNANAGAT', NULL, 'Booking from admin', '2022-10-18 21:00:00', '2022-10-19 10:00:00', 156, '5', 1),
(166, '00000166', '2022-10-18 23:32:32', '4', '2', '0', 1, '115', '100000', NULL, 100000.00, 100000.00, '0', 'Mr EUNICE MOSHA', NULL, 'Booking from admin', '2022-10-18 22:00:00', '2022-10-19 10:00:00', 157, '5', 1),
(167, '00000167', '2022-10-19 14:36:02', '3', '2', '0', 1, '120', '120000', NULL, 120000.00, 240000.00, '0', 'Mr Remijius Hayoyo', NULL, 'Booking from admin', '2022-10-19 14:00:00', '2022-10-21 10:00:00', 158, '5', 1),
(168, '00000168', '2022-10-19 14:52:42', '3', '2', '0', 1, '119', '120000', NULL, 120000.00, 360000.00, '0', 'Mr Ashraf Farah', NULL, 'Booking from admin', '2022-10-19 12:00:00', '2022-10-22 10:00:00', 159, '5', 1),
(169, '00000169', '2022-10-19 15:05:20', '3', '2', '0', 1, '118', '120000', NULL, 120000.00, 120000.00, '0', 'Mr IVAN SAMUEL', NULL, 'Booking from admin', '2022-10-19 12:00:00', '2022-10-20 10:00:00', 163, '5', 1),
(170, '00000170', '2022-10-19 15:10:41', '2', '1', '0', 1, '122', '100000', NULL, 100000.00, 100000.00, '0', 'Mr GODFREY TEMBA', NULL, 'Booking from admin', '2022-10-19 12:00:00', '2022-10-20 10:00:00', 164, '5', 1),
(171, '00000171', '2022-10-19 16:48:17', '2', '1', '0', 1, '126', '100000', NULL, 100000.00, 100000.00, '0', 'Mr CHIPEGWA', NULL, 'Booking from admin', '2022-10-19 12:00:00', '2022-10-20 10:00:00', 165, '5', 1),
(172, '00000172', '2022-10-19 16:54:22', '5', '2', '0', 1, '109', '150000', NULL, 150000.00, 450000.00, '0', 'Mr FAN LI', NULL, 'Booking from admin', '2022-10-19 12:00:00', '2022-10-22 10:00:00', 166, '5', 1),
(173, '00000173', '2022-10-19 17:00:23', '5', '1', '0', 1, '107', '150000', NULL, 150000.00, 450000.00, '0', 'Mr WEZAN HE', NULL, 'Booking from admin', '2022-10-19 12:00:00', '2022-10-22 10:00:00', 167, '5', 1),
(174, '00000174', '2022-10-19 21:00:42', '1', '1', '0', 1, '128', '80000', NULL, 80000.00, 80000.00, '0', 'Mr Gosbert Kahatano', NULL, 'Booking from admin', '2022-10-19 20:00:00', '2022-10-20 10:00:00', 168, '5', 1),
(175, '00000175', '2022-10-19 21:09:12', '2', '2', '0', 1, '123', '100000', NULL, 100000.00, 300000.00, '0', 'Mr Jan Broodryk', NULL, 'Booking from admin', '2022-10-19 12:00:00', '2022-10-21 10:00:00', 169, '5', 1),
(176, '00000176', '2022-10-19 21:17:29', '2', '1', '0', 1, '124', '149500', NULL, 149500.00, 299000.00, '0', 'Mr Dheshan Naidoo', NULL, 'Booking from admin', '2022-10-19 12:00:00', '2022-10-21 10:00:00', 170, '5', 1),
(177, '00000177', '2022-10-19 21:23:26', '1', '1', '0', 1, '127', '80000', NULL, 80000.00, 80000.00, '0', 'Mr Denis Magezi', NULL, 'Booking from admin', '2022-10-19 12:00:00', '2022-10-20 10:00:00', 171, '5', 1),
(178, '00000178', '2022-10-20 12:56:31', '5', '1', '0', 1, '110', '150000', NULL, 150000.00, 150000.00, '0', 'Mr LOTFI BENNANI', NULL, 'Booking from admin', '2022-10-20 12:00:00', '2022-10-21 12:00:00', 172, '5', 1),
(179, '00000179', '2022-10-20 13:08:27', '5', '1', '0', 1, '101', '150000', NULL, 150000.00, 450000.00, '0', 'Mr LAZARO KAPELLE', NULL, 'Booking from admin', '2022-10-20 12:00:00', '2022-10-21 10:00:00', 173, '5', 1),
(180, '00000180', '2022-10-20 13:27:28', '4', '1', '0', 1, '111', '130000', NULL, 130000.00, 130000.00, '0', 'Mr RYAN OUTRAM', NULL, 'Booking from admin', '2022-10-20 12:00:00', '2022-10-21 10:00:00', 174, '5', 1),
(181, '00000181', '2022-10-20 15:53:02', '2', '2', '0', 1, '122', '100000', NULL, 100000.00, 100000.00, '0', 'Mr AZIZI MRISHO', NULL, 'Booking from admin', '2022-10-20 12:00:00', '2022-10-21 10:00:00', 175, '5', 1),
(182, '00000182', '2022-10-21 20:32:01', '3', '1', '0', 1, '120', '120000', NULL, 120000.00, 120000.00, '0', 'Mr Henry Okelio', NULL, 'Booking from admin', '2022-10-21 20:00:00', '2022-10-22 10:00:00', 176, '5', 1),
(183, '00000183', '2022-10-21 20:39:48', '2', '1', '0', 1, '123', '100000', NULL, 100000.00, 100000.00, '0', 'Mr Alexandra Kulmalahti', NULL, 'Booking from admin', '2022-10-21 20:00:00', '2022-10-22 10:00:00', 177, '5', 1),
(184, '00000184', '2022-10-21 20:51:24', '2', '1', '0', 1, '124', '99333.33333333333', NULL, 99333.33, 297999.99, '0', 'Ms Neema Pasanen', NULL, 'Booking from admin', '2022-10-21 12:00:00', '2022-10-24 10:00:00', 178, '5', 1),
(185, '00000185', '2022-10-21 20:55:05', '5', '2', '0', 1, '101', '150000', NULL, 150000.00, 450000.00, '0', 'Mr Roman seifert', NULL, 'Booking from admin', '2022-10-21 12:00:00', '2022-10-22 10:00:00', 179, '5', 1),
(186, '00000186', '2022-10-21 21:03:22', '2', '1', '0', 1, '122', '80000', NULL, 80000.00, 80000.00, '0', 'Mr Carter Coleman', NULL, 'Booking from admin', '2022-10-21 12:00:00', '2022-10-22 10:00:00', 181, '5', 1),
(187, '00000187', '2022-10-21 21:08:49', '3', '1', '0', 1, '118', '108000', NULL, 108000.00, 324000.00, '0', 'Ms Valerian Sanga', NULL, 'Booking from admin', '2022-10-21 12:00:00', '2022-10-24 10:00:00', 182, '5', 1),
(188, '00000188', '2022-10-21 21:23:39', '4', '1', '0', 1, '112', '115000', NULL, 115000.00, 115000.00, '0', 'Mr Rauch Johannes', NULL, 'Booking from admin', '2022-10-21 12:00:00', '2022-10-22 10:00:00', 193, '5', 1),
(189, '00000189', '2022-10-21 21:28:06', '2', '1', '0', 1, '126', '100000', NULL, 100000.00, 100000.00, '0', 'Ms Wangu Munyua', NULL, 'Booking from admin', '2022-10-21 12:00:00', '2022-10-22 10:00:00', 194, '5', 1),
(190, '00000190', '2022-10-21 21:35:13', '1', '1', '0', 1, '130', '80000', NULL, 80000.00, 80000.00, '0', 'Ms Elizabeth Kimaro', NULL, 'Booking from admin', '2022-10-21 21:00:00', '2022-10-22 10:00:00', 195, '5', 1),
(191, '00000191', '2022-10-21 21:50:11', '4', '1', '0', 1, '111', '130000', NULL, 130000.00, 130000.00, '0', 'Ms Leticia', NULL, 'Booking from admin', '2022-10-21 12:00:00', '2022-10-22 10:00:00', 196, '5', 1),
(192, '00000192', '2022-10-22 12:58:21', '5', '2', '0', 1, '102', '150000', NULL, 150000.00, 150000.00, '0', 'Mr NASHON KAMNYUNGU', NULL, 'Booking from admin', '2022-10-22 12:00:00', '2022-10-23 12:00:00', 198, '5', 1),
(193, '00000193', '2022-10-22 13:40:36', '5', '2', '0', 1, '103', '150000', NULL, 150000.00, 0.00, '0', 'Mr LULU GEOGRGE', NULL, 'WRONG NAME', '2022-10-22 12:00:00', '2022-10-23 10:00:00', 199, '1', 1),
(194, '00000194', '2022-10-22 13:47:43', '1', '1', '0', 1, '131', '80000', NULL, 80000.00, 0.00, '0', 'Mr ASHA GEMBE,Mr ASHA GEMBE', NULL, 'WRONG NAME', '2022-10-22 12:00:00', '2022-10-23 10:00:00', 200, '1', 1),
(195, '00000195', '2022-10-22 16:13:47', '3', '1', '0', 1, '121', '120000', NULL, 120000.00, 120000.00, '0', 'Mr JOHN RABIE', NULL, 'Booking from admin', '2022-10-22 12:00:00', '2022-10-23 10:00:00', 201, '5', 1),
(196, '00000196', '2022-10-22 16:19:19', '3', '2', '0', 1, '119', '120000', NULL, 120000.00, 120000.00, '0', 'Mr SIMON ADARMON', NULL, 'Booking from admin', '2022-10-22 12:00:00', '2022-10-23 10:00:00', 202, '5', 1),
(197, '00000197', '2022-10-22 16:23:57', '5', '2', '0', 1, '103', '150000', NULL, 150000.00, 150000.00, '0', 'Mr LULU GEORGE', NULL, 'Booking from admin', '2022-10-22 12:00:00', '2022-10-23 10:00:00', 203, '5', 1),
(198, '00000198', '2022-10-22 16:28:20', '1', '1', '0', 1, '131', '80000', NULL, 80000.00, 80000.00, '0', 'Ms ASHA GEMBE', NULL, 'Booking from admin', '2022-10-22 12:00:00', '2022-10-22 16:00:00', 204, '5', 1),
(199, '00000199', '2022-10-22 21:41:51', '3', '1', '0', 1, '116', '120000', NULL, 120000.00, 240000.00, '0', 'Mr Josephat Luyala', NULL, 'Booking from admin', '2022-10-22 21:00:00', '2022-10-24 10:00:00', 205, '5', 1),
(200, '00000200', '2022-10-22 21:50:01', '3', '2', '0', 1, '117', '120000', NULL, 120000.00, 240000.00, '0', 'Mr Josephat Luyara', NULL, 'Booking from admin', '2022-10-22 12:00:00', '2022-10-24 10:00:00', 206, '5', 1),
(201, '00000201', '2022-10-22 22:05:08', '2', '2', '0', 1, '122', '100000', NULL, 100000.00, 200000.00, '0', 'Ms Meray Nyamageni', NULL, 'Booking from admin', '2022-10-22 12:00:00', '2022-10-24 10:00:00', 207, '5', 1),
(202, '00000202', '2022-10-23 17:59:08', '3', '1', '0', 1, '121', '100000', NULL, 100000.00, 300000.00, '0', 'Mr LEONARDUS VAN DER MADEA', NULL, 'Booking from admin', '2022-10-23 12:00:00', '2022-10-29 10:00:00', 208, '5', 1),
(203, '00000203', '2022-10-23 18:03:08', '3', '1', '0', 1, '120', '100000', NULL, 100000.00, 600000.00, '0', 'Mr DONATUS  MWENDA', NULL, 'Booking from admin', '2022-10-23 12:00:00', '2022-10-29 10:00:00', 209, '5', 1),
(204, '00000204', '2022-10-23 18:05:47', '4', '1', '0', 1, '115', '100000', NULL, 100000.00, 600000.00, '0', 'Mr MIKIDAD WAZIRI', NULL, 'Booking from admin', '2022-10-23 12:00:00', '2022-10-29 10:00:00', 210, '5', 1),
(205, '00000205', '2022-10-23 18:07:47', '5', '2', '0', 1, '101', '150000', NULL, 150000.00, 450000.00, '0', 'Mr LUCAS SIGALLAH', NULL, 'Booking from admin', '2022-10-23 18:00:00', '2022-10-24 10:00:00', 211, '5', 1),
(206, '00000206', '2022-10-23 18:09:19', '5', '1', '0', 1, '110', '120000', NULL, 120000.00, 120000.00, '0', 'Mr CELESTE MUGANGA', NULL, 'Booking from admin', '2022-10-23 12:00:00', '2022-10-24 10:00:00', 212, '5', 1),
(207, '00000207', '2022-10-23 21:16:46', '4', '2', '0', 1, '114', '165600', NULL, 165600.00, 165600.00, '0', 'Mrs MINNA KAVERI', NULL, 'Booking from admin', '2022-10-23 21:00:00', '2022-10-24 10:00:00', 213, '5', 1),
(208, '00000208', '2022-10-23 21:21:36', '4', '2', '0', 1, '113', '165600', NULL, 165600.00, 165600.00, '0', 'Mr LEA  PESONEN', NULL, 'Booking from admin', '2022-10-23 21:00:00', '2022-10-24 10:00:00', 214, '5', 1),
(209, '00000209', '2022-10-23 21:30:16', '4', '2', '0', 1, '112', '165600', NULL, 165600.00, 165600.00, '0', 'Ms ANU FEDOTOFF', NULL, 'Booking from admin', '2022-10-23 21:00:00', '2022-10-24 10:00:00', 215, '5', 1),
(210, '00000210', '2022-10-23 21:34:20', '4', '2', '0', 1, '111', '165600', NULL, 165600.00, 165600.00, '0', 'Mr SARI MERILLAINEN', NULL, 'Booking from admin', '2022-10-23 21:00:00', '2022-10-24 10:00:00', 216, '5', 1),
(211, '00000211', '2022-10-23 21:42:56', '3', '2', '0', 1, '119', '120000', NULL, 120000.00, 360000.00, '0', 'Mr THOMAS MBAGA', NULL, 'Booking from admin', '2022-10-23 21:00:00', '2022-10-24 10:00:00', 218, '5', 1),
(212, '00000212', '2022-10-24 10:23:33', '5', '1', '0', 1, '101', '150000', NULL, 150000.00, 0.00, '0', 'Ms ANNA FREDRIKSSSON', NULL, 'Booking from admin', '2022-11-27 12:00:00', '2022-12-09 10:00:00', 219, '0', 1),
(213, '00000213', '2022-10-24 13:40:20', '2', '1', '0', 1, '126', '100000', NULL, 100000.00, 300000.00, '0', 'Ms JOYCE MFINANGA', NULL, 'Booking from admin', '2022-10-24 12:00:00', '2022-10-26 13:00:00', 220, '5', 1),
(214, '00000214', '2022-10-24 13:50:40', '1', '1', '0', 1, '130', '80000', NULL, 80000.00, 240000.00, '0', 'Mr VICTOR MFINANGA', NULL, 'Booking from admin', '2022-10-24 12:00:00', '2022-10-26 13:00:00', 221, '5', 1),
(215, '00000215', '2022-10-24 14:04:18', '1', '1', '0', 1, '129', '80000', NULL, 80000.00, 240000.00, '0', 'Mr ELIBARIKI MSUYA', NULL, 'Booking from admin', '2022-10-24 12:00:00', '2022-10-26 10:00:00', 222, '5', 1),
(216, '00000216', '2022-10-24 16:06:02', '5', '1', '0', 1, '101', '150000', NULL, 150000.00, 150000.00, '0', 'Ms ZAIDA MSANGI', NULL, 'Booking from admin', '2022-10-24 12:00:00', '2022-10-25 10:00:00', 223, '5', 1),
(217, '00000217', '2022-10-24 16:14:53', '2', '1', '0', 1, '122', '100000', NULL, 100000.00, 100000.00, '0', 'Mr DICKSON HYERA', NULL, 'Booking from admin', '2022-10-24 12:00:00', '2022-10-25 10:00:00', 224, '5', 1),
(218, '00000218', '2022-10-24 16:33:42', '5', '1', '0', 1, '103', '150000', NULL, 150000.00, 150000.00, '0', 'Ms SAFIA MBAMBA', NULL, 'Booking from admin', '2022-10-24 12:00:00', '2022-10-25 10:00:00', 225, '5', 1),
(219, '00000219', '2022-10-24 16:37:06', '4', '1', '0', 1, '113', '130000', NULL, 130000.00, 130000.00, '0', 'Mr BRAISON MSUGU', NULL, 'Booking from admin', '2022-10-24 12:00:00', '2022-10-25 10:00:00', 226, '5', 1),
(220, '00000220', '2022-10-24 16:40:18', '5', '1', '0', 1, '102', '150000', NULL, 150000.00, 150000.00, '0', 'Mr ANIE SWEDEN', NULL, 'Booking from admin', '2022-10-24 12:00:00', '2022-10-25 10:00:00', 227, '5', 1),
(221, '00000221', '2022-10-24 16:43:05', '4', '1', '0', 1, '114', '130000', NULL, 130000.00, 130000.00, '0', 'Mr CLEMENCE CHANG`A', NULL, 'Booking from admin', '2022-10-24 12:00:00', '2022-10-25 10:00:00', 228, '5', 1),
(222, '00000222', '2022-10-24 16:47:37', '5', '1', '0', 1, '108', '150000', NULL, 150000.00, 150000.00, '0', 'Mr DEODATUS SUNGA', NULL, 'Booking from admin', '2022-10-24 12:00:00', '2022-10-25 10:00:00', 229, '5', 1),
(223, '00000223', '2022-10-24 16:51:15', '3', '1', '0', 1, '116', '120000', NULL, 120000.00, 120000.00, '0', 'Mr JULIUS MBWAMBO', NULL, 'Booking from admin', '2022-10-24 12:00:00', '2022-10-25 10:00:00', 230, '5', 1),
(224, '00000224', '2022-10-24 16:54:46', '3', '1', '0', 1, '117', '120000', NULL, 120000.00, 120000.00, '0', 'Ms JEMA NGWALE', NULL, 'Booking from admin', '2022-10-24 12:00:00', '2022-10-25 10:00:00', 231, '5', 1),
(225, '00000225', '2022-10-24 16:57:35', '2', '2', '0', 1, '125', '100000', NULL, 100000.00, 300000.00, '0', 'Mr NATE MSUYA', NULL, 'Booking from admin', '2022-10-24 12:00:00', '2022-10-26 10:00:00', 232, '5', 1),
(226, '00000226', '2022-10-24 17:01:40', '3', '2', '0', 1, '119', '120000', NULL, 120000.00, 120000.00, '0', 'Mr THOMAS MBAGA', NULL, 'Booking from admin', '2022-10-24 12:00:00', '2022-10-25 10:00:00', 233, '5', 1),
(227, '00000227', '2022-10-24 20:10:42', '5', '1', '0', 1, '109', '100000', NULL, 100000.00, 400000.00, '0', 'Mr JIMMY MWANGANGI', NULL, 'Booking from admin', '2022-10-24 12:00:00', '2022-10-28 10:00:00', 234, '5', 1),
(228, '00000228', '2022-10-24 20:12:14', '1', '2', '0', 1, '127', '80000', NULL, 80000.00, 80000.00, '0', 'Mr ANDREA  BIANCHI', NULL, 'Booking from admin', '2022-10-24 12:00:00', '2022-10-25 10:00:00', 235, '5', 1),
(229, '00000229', '2022-10-24 20:36:08', '1', '1', '0', 1, '128', '80000', NULL, 80000.00, 240000.00, '0', 'Mr EMMANUEL MHIMBILA', NULL, 'Booking from admin', '2022-10-24 12:00:00', '2022-10-25 10:00:00', 236, '5', 1),
(230, '00000230', '2022-10-25 16:32:46', '5', '1', '0', 1, '101', '150000', NULL, 150000.00, 450000.00, '0', 'Mr REYMOND SCKWARZ', NULL, 'Booking from admin', '2022-10-25 12:00:00', '2022-10-26 10:00:00', 237, '5', 1),
(231, '00000231', '2022-10-25 16:37:02', '4', '1', '0', 1, '113', '130000', NULL, 130000.00, 130000.00, '0', 'Mr SALVATORE FEKRAWTE', NULL, 'Booking from admin', '2022-10-25 12:00:00', '2022-10-26 10:00:00', 238, '5', 1),
(232, '00000232', '2022-10-25 19:53:42', '1', '1', '0', 1, '128', '80000', NULL, 80000.00, 240000.00, '0', 'Mr FRANCIS SANGIWA', NULL, 'Booking from admin', '2022-10-25 12:00:00', '2022-10-26 10:00:00', 239, '5', 1),
(233, '00000233', '2022-10-25 19:58:58', '3', '1', '0', 1, '117', '100000', NULL, 100000.00, 400000.00, '0', 'Ms TULLA MLOGE', NULL, 'Booking from admin', '2022-10-25 19:00:00', '2022-10-29 10:00:00', 240, '5', 1);
INSERT INTO `booked_info` (`bookedid`, `booking_number`, `date_time`, `roomid`, `nuofpeople`, `children`, `total_room`, `room_no`, `roomrate`, `promocode`, `total_price`, `paid_amount`, `offer_discount`, `full_guest_name`, `special_request`, `coments`, `checkindate`, `checkoutdate`, `cutomerid`, `bookingstatus`, `isSeen`) VALUES
(234, '00000234', '2022-10-25 20:04:50', '5', '1', '0', 1, '107', '100000', NULL, 100000.00, 400000.00, '0', 'Ms GORETH MFUSE', NULL, 'Booking from admin', '2022-10-25 12:00:00', '2022-10-29 10:00:00', 241, '5', 1),
(235, '00000235', '2022-10-25 20:10:21', '5', '1', '0', 1, '108', '100000', NULL, 100000.00, 500000.00, '0', 'Ms NEEMA MOSHA', NULL, 'Booking from admin', '2022-10-25 12:00:00', '2022-10-30 10:00:00', 242, '5', 1),
(236, '00000236', '2022-10-25 21:06:05', '4', '1', '0', 1, '111', '100000', NULL, 100000.00, 100000.00, '0', 'Mr MBAZILA KANAMWANGI', NULL, 'Booking from admin', '2022-10-25 12:00:00', '2022-10-26 10:00:00', 243, '5', 1),
(237, '00000237', '2022-10-25 21:09:00', '4', '1', '0', 1, '112', '100000', NULL, 100000.00, 100000.00, '0', 'Mr DAVID KIGWILE', NULL, 'Booking from admin', '2022-10-25 12:00:00', '2022-10-26 10:00:00', 244, '5', 1),
(238, '00000238', '2022-10-25 21:11:42', '1', '1', '0', 1, '127', '80000', NULL, 80000.00, 80000.00, '0', 'Mr LUCAS THABITA', NULL, 'Booking from admin', '2022-10-25 12:00:00', '2022-10-26 10:00:00', 245, '5', 1),
(239, '00000239', '2022-10-26 07:28:15', '4', '2', '0', 1, '114', '130000', NULL, 130000.00, 260000.00, '0', 'Mr CHRIS KONGA', NULL, 'Booking from admin', '2022-10-26 06:00:00', '2022-10-27 10:00:00', 246, '5', 1),
(240, '00000240', '2022-10-26 07:42:30', '3', '1', '0', 1, '116', '240000', NULL, 240000.00, 240000.00, '0', 'Mr JOHN SICILIMA', NULL, 'Booking from admin', '2022-10-26 06:00:00', '2022-10-26 10:00:00', 247, '5', 1),
(241, '00000241', '2022-10-26 20:18:01', '1', '1', '0', 1, '131', '80000', NULL, 80000.00, 80000.00, '0', 'Mr WENG RONG', NULL, 'Booking from admin', '2022-10-26 12:00:00', '2022-10-27 10:00:00', 248, '5', 1),
(242, '00000242', '2022-10-26 20:21:12', '3', '1', '0', 1, '118', '108000', NULL, 108000.00, 108000.00, '0', 'Mr BAKARI MCHILA', NULL, 'Booking from admin', '2022-10-26 12:00:00', '2022-10-27 10:00:00', 249, '5', 1),
(243, '00000243', '2022-10-26 20:23:30', '3', '1', '0', 1, '119', '108000', NULL, 108000.00, 108000.00, '0', 'Mr JONAS BALENGAYABO', NULL, 'Booking from admin', '2022-10-26 12:00:00', '2022-10-27 10:00:00', 250, '5', 1),
(244, '00000244', '2022-10-26 20:27:27', '5', '2', '0', 1, '103', 'NaN', NULL, 0.00, 0.00, '0', 'Mr MIROSLAV HOMZA', NULL, 'Booking from admin', '2022-10-26 12:00:00', '2022-10-27 10:00:00', 251, '5', 1),
(245, '00000245', '2022-10-26 20:29:52', '4', '1', '0', 1, '111', 'NaN', NULL, 0.00, 0.00, '0', 'Mr JOHN ELIAS', NULL, 'Booking from admin', '2022-10-26 12:00:00', '2022-10-27 10:00:00', 252, '5', 1),
(246, '00000246', '2022-10-26 20:35:21', '4', '1', '0', 1, '112', 'NaN', NULL, 0.00, 0.00, '0', 'Mr PAVEL ZUREK', NULL, 'Booking from admin', '2022-10-26 12:00:00', '2022-10-27 10:00:00', 253, '5', 1),
(247, '00000247', '2022-10-27 16:40:22', '2', '2', '0', 1, '125', '100000', NULL, 100000.00, 100000.00, '0', 'Ms CATHERINE LYIMO', NULL, 'Booking from admin', '2022-10-27 12:00:00', '2022-10-28 10:00:00', 254, '5', 1),
(248, '00000248', '2022-10-27 16:43:55', '5', '2', '0', 1, '105', '180000', NULL, 180000.00, 360000.00, '0', 'Mr ANDERSON CHARLES', NULL, 'Booking from admin', '2022-10-27 12:00:00', '2022-10-29 10:00:00', 255, '5', 1),
(249, '00000249', '2022-10-27 16:51:51', '1', '1', '0', 1, '129', '80000', NULL, 80000.00, 80000.00, '0', 'Mr Fredy Haule Haule', NULL, 'Booking from admin', '2022-10-27 12:00:00', '2022-10-28 10:00:00', 144, '5', 1),
(250, '00000250', '2022-10-27 18:26:56', '1', '1', '0', 1, '128', '80000', NULL, 80000.00, 160000.00, '0', 'Ms FRANSIA MUSHI', NULL, 'Booking from admin', '2022-10-27 12:00:00', '2022-10-29 10:00:00', 256, '5', 1),
(251, '00000251', '2022-10-27 21:54:25', '1', '1', '0', 1, '131', '80000', NULL, 80000.00, 80000.00, '0', 'Mr SAMWEL SANGA', NULL, 'Booking from admin', '2022-10-27 20:00:00', '2022-10-28 10:00:00', 257, '5', 1),
(252, '00000252', '2022-10-27 21:58:40', '2', '2', '0', 1, '126', '80000', NULL, 80000.00, 80000.00, '0', 'Mr SAANYA  Aemea', NULL, 'Booking from admin', '2022-10-27 12:00:00', '2022-10-28 10:00:00', 258, '5', 1),
(253, '00000253', '2022-10-27 22:05:02', '3', '2', '0', 1, '116', '120000', NULL, 120000.00, 0.00, '0', 'Mr ESTHER JOASH', NULL, 'Wrong name', '2022-10-27 21:00:00', '2022-10-30 10:00:00', 259, '1', 1),
(254, '00000254', '2022-10-27 22:12:30', '4', '2', '0', 1, '114', '130000', NULL, 130000.00, 0.00, '0', 'Ms XUE LEI', NULL, 'Booking from admin', '2022-10-27 22:00:00', '2022-10-29 10:00:00', 260, '4', 1),
(255, '00000255', '2022-10-27 22:15:04', '2', '1', '0', 1, '123', '80000', NULL, 80000.00, 80000.00, '0', 'Mr WERNER WASSERMANA', NULL, 'Booking from admin', '2022-10-27 22:00:00', '2022-10-28 10:00:00', 261, '5', 1),
(256, '00000256', '2022-10-27 22:18:47', '3', '2', '0', 1, '119', '120000', NULL, 120000.00, 120000.00, '0', 'Mr MARGARETH HERETH', NULL, 'Booking from admin', '2022-10-27 22:00:00', '2022-10-28 10:00:00', 262, '5', 1),
(257, '00000257', '2022-10-27 22:24:43', '3', '2', '0', 1, '116', '120000', NULL, 120000.00, 240000.00, '0', 'Mr ESTHER JOASH', NULL, 'Booking from admin', '2022-10-27 22:00:00', '2022-10-29 10:00:00', 263, '5', 1),
(258, '00000258', '2022-10-27 22:27:15', '4', '2', '0', 1, '111', '130000', NULL, 130000.00, 130000.00, '0', 'Mr ABDUL AZIZ', NULL, 'Booking from admin', '2022-10-27 22:00:00', '2022-10-28 10:00:00', 264, '5', 1),
(259, '00000259', '2022-10-28 09:10:32', '5', '2', '0', 1, '106', '100000', NULL, 100000.00, 300000.00, '0', 'Mr VITUS MFUGALE', NULL, 'Booking from admin', '2022-10-28 00:00:00', '2022-10-30 10:00:00', 265, '5', 1),
(260, '00000260', '2022-10-30 16:48:39', '3', '1', '0', 1, '120', '120000', NULL, 120000.00, 360000.00, '0', 'Ms LIINA TARVAINEN', NULL, 'Booking from admin', '2022-10-30 16:00:00', '2022-11-02 10:00:00', 267, '4', 1),
(261, '00000261', '2022-10-30 17:47:51', '3', '1', '0', 1, '121', '80000', NULL, 80000.00, 0.00, '0', 'Mr JOSHUA MWAKALIKAMO', NULL, 'Booking from admin', '2022-10-30 16:00:00', '2022-11-04 10:00:00', 268, '4', 1),
(262, '00000262', '2022-10-30 17:51:02', '3', '1', '0', 1, '118', '120000', NULL, 120000.00, 360000.00, '0', 'Mr ANDERSON KASIGA', NULL, 'Booking from admin', '2022-10-30 12:00:00', '2022-11-02 10:00:00', 269, '4', 1),
(263, '00000263', '2022-10-30 17:53:21', '1', '1', '0', 1, '131', '80000', NULL, 80000.00, 80000.00, '0', 'Mr YUNUS HAMAD', NULL, 'Booking from admin', '2022-10-30 12:00:00', '2022-10-31 10:00:00', 270, '5', 1),
(264, '00000264', '2022-10-30 18:01:06', '4', '1', '0', 1, '115', '100000', NULL, 100000.00, 100000.00, '0', 'Mr ELISA KIKOTA', NULL, 'Booking from admin', '2022-10-30 12:00:00', '2022-10-31 10:00:00', 271, '5', 1),
(265, '00000265', '2022-10-30 18:04:32', '5', '2', '1', 1, '101', '130000', NULL, 130000.00, 130000.00, '0', 'Mr JACKSON KIKOTA', NULL, 'Booking from admin', '2022-10-30 12:00:00', '2022-10-31 10:00:00', 272, '5', 1),
(266, '00000266', '2022-10-30 18:09:16', '4', '2', '0', 1, '113', '120000', NULL, 120000.00, 120000.00, '0', 'Ms ABIGAEL', NULL, 'Booking from admin', '2022-10-30 12:00:00', '2022-10-31 10:00:00', 273, '5', 1),
(267, '00000267', '2022-10-30 19:09:30', '3', '1', '0', 1, '117', '120000', NULL, 120000.00, 360000.00, '0', 'Mr WILLIAM NAMBIZA', NULL, 'Booking from admin', '2022-10-30 12:00:00', '2022-11-02 10:00:00', 274, '4', 1),
(268, '00000268', '2022-10-30 19:39:28', '3', '1', '0', 1, '119', '133333.33333333334', NULL, 133333.33, 0.00, '0', 'Ms JULIA DARCEY', NULL, 'Booking from admin', '2022-10-30 12:00:00', '2022-11-05 10:00:00', 275, '4', 1),
(269, '00000269', '2022-10-30 19:57:26', '5', '2', '0', 1, '104', '324000', NULL, 324000.00, 324000.00, '0', 'Mr Valerian Kiyanga Kiyanga', NULL, 'Booking from admin', '2022-10-30 12:00:00', '2022-10-31 10:00:00', 146, '5', 1),
(270, '00000270', '2022-10-30 20:02:01', '5', '1', '0', 1, '110', '100000', NULL, 100000.00, 0.00, '0', 'Mr JIMMY MWANGANGI', NULL, 'Booking from admin', '2022-10-30 12:00:00', '2022-11-02 10:00:00', 276, '4', 1),
(271, '00000271', '2022-10-31 20:23:07', '2', '2', '0', 1, '123', '149500', NULL, 149500.00, 299000.00, '0', 'Ms JOAN CULLEN', NULL, 'Booking from admin', '2022-10-31 12:00:00', '2022-11-02 10:00:00', 277, '5', 1),
(272, '00000272', '2022-10-31 20:33:46', '1', '1', '0', 1, '129', '70000', NULL, 70000.00, 0.00, '0', 'Mr ORGENES ERNES', NULL, 'Booking from admin', '2022-10-31 12:00:00', '2022-11-04 10:00:00', 278, '4', 1),
(273, '00000273', '2022-10-31 20:36:22', '1', '2', '0', 1, '127', '90000', NULL, 90000.00, 0.00, '0', 'Mr ROGATH ADOLPH', NULL, 'Booking from admin', '2022-10-31 12:00:00', '2022-11-04 10:00:00', 279, '4', 1),
(274, '00000274', '2022-10-31 20:47:03', '5', '2', '0', 1, '102', '165600', NULL, 165600.00, 165600.00, '0', 'Mr NEIL MATHERS', NULL, 'Booking from admin', '2022-10-31 12:00:00', '2022-11-01 10:00:00', 280, '5', 1),
(275, '00000275', '2022-10-31 20:48:38', '1', '1', '0', 1, '128', '70000', NULL, 70000.00, 70000.00, '0', 'Mr FRANCIS SANGIWA', NULL, 'Booking from admin', '2022-10-31 12:00:00', '2022-11-01 10:00:00', 281, '5', 1),
(276, '00000276', '2022-10-31 20:51:29', '4', '1', '0', 1, '111', '120000', NULL, 120000.00, 120000.00, '0', 'Mr JOOP JOHANNES', NULL, 'Booking from admin', '2022-10-31 12:00:00', '2022-11-01 10:00:00', 282, '5', 1),
(277, '00000277', '2022-10-31 20:55:44', '2', '1', '0', 1, '125', '80000', NULL, 80000.00, 0.00, '0', 'Mr BERNARD VESTER', NULL, 'Booking from admin', '2022-10-31 12:00:00', '2022-11-06 11:00:00', 283, '4', 1),
(278, '00000278', '2022-10-31 20:58:28', '2', '1', '0', 1, '126', '80000', NULL, 80000.00, 0.00, '0', 'Mr STEPHEN MAKINYA', NULL, 'Booking from admin', '2022-10-31 12:00:00', '2022-11-06 10:00:00', 284, '4', 1),
(279, '00000279', '2022-10-31 21:00:31', '5', '2', '0', 1, '107', '150000', NULL, 150000.00, 150000.00, '0', 'Mr ISMAIL DIWANI', NULL, 'Booking from admin', '2022-10-31 12:00:00', '2022-11-01 10:00:00', 285, '5', 1),
(280, '00000280', '2022-11-01 12:41:41', '5', '1', '0', 1, '109', '150000', NULL, 150000.00, 0.00, '0', 'Mr Amar Hamad', NULL, 'Booking from admin', '2022-11-01 12:00:00', '2022-11-04 10:00:00', 286, '0', 1),
(281, '00000281', '2022-11-01 12:49:12', '5', '1', '0', 1, '101', '175000', NULL, 175000.00, 0.00, '0', 'Mr Tajmohammed Abas', NULL, 'Booking from admin', '2022-11-01 12:00:00', '2022-11-02 10:00:00', 287, '0', 1),
(282, '00000282', '2022-11-01 14:09:40', '5', '2', '0', 1, '108', '175000', NULL, 175000.00, 0.00, '0', 'Mr Tajmohammed Abas Abas', NULL, 'Booking from admin', '2022-11-01 12:00:00', '2022-11-02 10:00:00', 287, '0', 1),
(283, '00000283', '2022-11-01 15:20:58', '2', '2', '0', 1, '122', '149500', NULL, 149500.00, 0.00, '0', 'Mr OLIVER SCHULZE', NULL, 'Booking from admin', '2022-11-01 12:00:00', '2022-11-02 10:00:00', 288, '4', 1),
(284, '00000284', '2022-11-01 18:39:52', '2', '1', '0', 1, '124', '100000', NULL, 100000.00, 0.00, '0', 'Mr JAFARI', NULL, 'Booking from admin', '2022-11-01 12:00:00', '2022-11-02 10:00:00', 289, '4', 1),
(285, '00000285', '2022-11-01 18:41:41', '1', '1', '0', 1, '131', '80000', NULL, 80000.00, 0.00, '0', 'Mr NASIBU KANDURU', NULL, 'Booking from admin', '2022-11-01 12:00:00', '2022-11-02 10:00:00', 290, '4', 1),
(286, '00000286', '2022-11-01 18:44:58', '1', '1', '0', 1, '130', '80000', NULL, 80000.00, 0.00, '0', 'Mr KIIZA', NULL, 'Booking from admin', '2022-11-01 12:00:00', '2022-11-02 10:00:00', 291, '4', 1),
(287, '00000287', '2022-11-01 20:07:46', '5', '1', '0', 1, '107', '100000', NULL, 100000.00, 0.00, '0', 'Ms NEEMA MOSHA MOSHA', NULL, 'Booking from admin', '2022-11-01 12:00:00', '2022-11-05 10:00:00', 242, '4', 1),
(288, '00000288', '2022-11-01 20:16:55', '3', '2', '0', 1, '116', '100000', NULL, 100000.00, 0.00, '0', 'Mr FELIX', NULL, 'Booking from admin', '2022-11-01 12:00:00', '2022-11-02 10:00:00', 292, '4', 1),
(289, '00000289', '2022-11-02 14:57:29', '1', '1', '0', 1, '131', '80000', NULL, 80000.00, 0.00, '0', 'Mr ADAM OWANGE', NULL, 'Booking from admin', '2022-11-02 12:00:00', '2022-11-06 10:00:00', 293, '4', 1),
(290, '00000290', '2022-11-02 15:01:09', '1', '2', '0', 1, '130', '80000', NULL, 80000.00, 0.00, '0', 'Mr ERICK KAGORO', NULL, 'Booking from admin', '2022-11-02 12:00:00', '2022-11-06 10:00:00', 294, '4', 1),
(291, '00000291', '2022-11-02 15:05:58', '5', '1', '0', 1, '110', '150000', NULL, 150000.00, 0.00, '0', 'Mr SAMWELI KILUA', NULL, 'Booking from admin', '2022-11-02 12:00:00', '2022-11-04 10:00:00', 295, '4', 1),
(292, '00000292', '2022-11-02 15:16:16', '3', '2', '0', 1, '120', '120000', NULL, 120000.00, 0.00, '0', 'Ms OLIVE LUENA', NULL, 'Booking from admin', '2022-11-02 12:00:00', '2022-11-04 10:00:00', 296, '4', 1),
(293, '00000293', '2022-11-02 15:19:08', '2', '1', '0', 1, '122', '100000', NULL, 100000.00, 0.00, '0', 'Mr TINO SCHAEFER', NULL, 'Booking from admin', '2022-11-02 12:00:00', '2022-11-10 10:00:00', 297, '4', 1),
(294, '00000294', '2022-11-02 16:50:27', '5', '2', '0', 1, '102', '150000', NULL, 150000.00, 0.00, '0', 'Mr KYLE', NULL, 'Booking from admin', '2022-11-02 12:00:00', '2022-11-04 10:00:00', 298, '4', 1),
(295, '00000295', '2022-11-02 16:54:04', '5', '2', '0', 1, '104', '150000', NULL, 150000.00, 0.00, '0', 'Mr STEPHANIE HRKAI', NULL, 'Booking from admin', '2022-11-02 12:00:00', '2022-11-04 10:00:00', 299, '4', 1),
(296, '00000296', '2022-11-02 16:56:55', '5', '2', '0', 1, '106', '150000', NULL, 150000.00, 0.00, '0', 'Mr METTHEW REED', NULL, 'Booking from admin', '2022-11-02 12:00:00', '2022-11-04 10:00:00', 300, '4', 1),
(297, '00000297', '2022-11-02 17:01:23', '4', '2', '0', 1, '112', '130000', NULL, 130000.00, 0.00, '0', 'Mr LEVI SPANGRAD', NULL, 'Booking from admin', '2022-11-02 12:00:00', '2022-11-04 10:00:00', 301, '4', 1),
(298, '00000298', '2022-11-02 17:07:19', '5', '2', '0', 1, '105', '150000', NULL, 150000.00, 0.00, '0', 'Mr STEVEN MAXWEL', NULL, 'Booking from admin', '2022-11-02 12:00:00', '2022-11-04 10:00:00', 302, '4', 1),
(299, '00000299', '2022-11-02 17:36:01', '5', '2', '0', 1, '103', '150000', NULL, 150000.00, 0.00, '0', 'Mr MIKIDADI ,Mr AL HAJI MIKIDADI', NULL, 'Booking from admin', '2022-11-02 12:00:00', '2022-11-03 10:00:00', 303, '4', 1),
(300, '00000300', '2022-11-02 20:01:17', '4', '2', '01', 1, '113', '120000', NULL, 120000.00, 0.00, '0', 'Mr Jamal Sadik,Mr ,Mr Jamal Sadik', NULL, 'Booking from admin', '2022-11-02 12:00:00', '2022-11-03 10:00:00', 304, '4', 1),
(301, '00000301', '2022-11-02 20:12:39', '1', '1', '0', 1, '128', '80000', NULL, 80000.00, 80000.00, '0', 'Mr Kedrick  Malila', NULL, 'Booking from admin', '2022-11-02 12:00:00', '2022-11-03 10:00:00', 305, '5', 1),
(302, '00000302', '2022-11-03 16:53:12', '5', '2', '0', 1, '101', '150000', NULL, 150000.00, 0.00, '0', 'Ms TRACY DOLAN', NULL, 'Booking from admin', '2022-11-03 12:00:00', '2022-11-05 10:00:00', 306, '4', 1),
(303, '00000303', '2022-11-03 16:59:24', '2', '1', '0', 1, '123', '100000', NULL, 100000.00, 0.00, '0', 'Ms WHITNEY BOCCO', NULL, 'Booking from admin', '2022-11-03 12:00:00', '2022-11-05 10:00:00', 307, '4', 1),
(304, '00000304', '2022-11-03 17:11:41', '3', '2', '0', 1, '116', '120000', NULL, 120000.00, 0.00, '0', 'Mr OLIVER SCHULZE SCHULZE', NULL, 'Booking from admin', '2022-11-03 12:00:00', '2022-11-05 10:00:00', 288, '4', 1),
(305, '00000305', '2024-10-16 23:46:55', '1', '2', '0', 1, '127', '80000.00', NULL, 80000.00, 0.00, '0', 'Frank Galos', '', NULL, '2024-10-16 00:00:00', '2024-10-17 00:00:00', 319, '0', 1),
(306, '00000306', '2024-10-17 00:09:50', '1', '2', '0', 1, '127', '80000.00', NULL, 80000.00, 0.00, '0', '', '', NULL, '2024-10-17 00:00:00', '2024-10-18 00:00:00', 319, '0', 1),
(307, '00000307', '2024-10-17 00:31:21', '1', '2', '0', 1, '128', '80000.00', NULL, 80000.00, 0.00, '0', '', '', NULL, '2024-10-17 00:00:00', '2024-10-18 00:00:00', 319, '0', 1),
(308, '00000308', '2024-10-17 01:41:58', '1', '2', '0', 1, '129', '80000.00', NULL, 80000.00, 0.00, '0', '', '', NULL, '2024-10-17 00:00:00', '2024-10-18 00:00:00', 319, '0', 1),
(309, '00000309', '2024-10-17 02:14:54', '1', '2', '0', 1, '130', '80000.00', NULL, 80000.00, 0.00, '0', '', '', NULL, '2024-10-17 00:00:00', '2024-10-18 00:00:00', 319, '0', 1),
(310, '00000310', '2024-10-17 02:30:12', '1', '2', '0', 1, '131', '80000.00', NULL, 80000.00, 0.00, '0', '', '', NULL, '2024-10-17 00:00:00', '2024-10-18 00:00:00', 319, '0', 1),
(311, '00000311', '2024-10-17 02:31:45', '2', '2', '0', 1, '122', '100000.00', NULL, 100000.00, 0.00, '0', '', '', NULL, '2024-10-17 00:00:00', '2024-10-18 00:00:00', 319, '0', 1),
(312, '00000312', '2024-10-17 02:40:37', '2', '2', '0', 1, '123', '100000.00', NULL, 100000.00, 0.00, '0', '', '', NULL, '2024-10-17 00:00:00', '2024-10-18 00:00:00', 319, '0', 1),
(313, '00000313', '2024-10-17 02:43:42', '2', '2', '0', 1, '124', '100000.00', NULL, 100000.00, 0.00, '0', '', '', NULL, '2024-10-17 00:00:00', '2024-10-18 00:00:00', 319, '0', 1),
(314, '00000314', '2024-10-17 02:44:16', '2', '2', '0', 1, '125', '100000.00', NULL, 100000.00, 0.00, '0', '', '', NULL, '2024-10-17 00:00:00', '2024-10-18 00:00:00', 319, '0', 1),
(315, '00000315', '2024-10-17 02:45:45', '2', '2', '0', 1, '126', '100000.00', NULL, 100000.00, 0.00, '0', '', '', NULL, '2024-10-17 00:00:00', '2024-10-18 00:00:00', 319, '0', 1),
(316, '00000316', '2024-10-17 02:50:24', '3', '2', '0', 1, '116', '120000.00', NULL, 120000.00, 0.00, '0', '', '', NULL, '2024-10-17 00:00:00', '2024-10-18 00:00:00', 319, '0', 1),
(317, '00000317', '2024-10-17 03:05:14', '3', '2', '0', 1, '117', '120000.00', NULL, 120000.00, 0.00, '0', '', '', NULL, '2024-10-17 00:00:00', '2024-10-18 00:00:00', 319, '0', 1),
(318, '00000318', '2024-10-17 09:39:01', '3', '2', '0', 1, '118', '120000.00', NULL, 120000.00, 0.00, '0', '', '', NULL, '2024-10-17 00:00:00', '2024-10-18 00:00:00', 320, '0', 1),
(319, '00000319', '2024-10-17 11:40:00', '3', '2', '0', 1, '119', '120000.00', NULL, 120000.00, 0.00, '0', '', '', NULL, '2024-10-17 00:00:00', '2024-10-18 00:00:00', 321, '0', 1),
(320, '00000320', '2024-10-17 13:03:23', '3', '2', '0', 1, '120', '120000.00', NULL, 120000.00, 0.00, '0', '', '', NULL, '2024-10-17 00:00:00', '2024-10-18 00:00:00', 321, '0', 1),
(321, '00000321', '2024-10-20 18:25:59', '1', '2', '0', 1, '127', '90.00', NULL, 90.00, 0.00, '0', '', '', NULL, '2024-10-20 00:00:00', '2024-10-21 00:00:00', 322, '0', 1),
(322, '00000322', '2024-10-21 13:32:56', '3', '1', '0', 1, '116', '120.00', NULL, 120.00, 0.00, '0', '', '', NULL, '2024-10-21 00:00:00', '2024-10-22 00:00:00', 324, '0', 1),
(323, '00000323', '2024-10-21 13:56:42', '1', '1', '0', 1, '127', '90.00', NULL, 90.00, 0.00, '0', '', '', NULL, '2024-10-21 00:00:00', '2024-10-22 00:00:00', 324, '0', 1),
(324, '00000324', '2024-10-21 14:12:37', '5', '1', '0', 1, '101', '130.00', NULL, 130.00, 0.00, '0', '', '', NULL, '2024-10-21 00:00:00', '2024-10-22 00:00:00', 324, '0', 1),
(325, '00000325', '2024-10-22 01:59:45', '1', '2', '0', 1, '127', '90.00', NULL, 90.00, 0.00, '0', 'Prisca Mark', '', NULL, '2024-10-22 00:00:00', '2024-10-23 00:00:00', 326, '0', 1),
(326, '00000326', '2024-10-22 02:09:20', '3,3', '1,1', '0,0', 2, '116,117', '120.00,120.00', NULL, 240.00, 0.00, '0,0', 'Prisca Mark', 'Pick me at the Airport', NULL, '2024-10-22 00:00:00', '2024-10-23 00:00:00', 326, '0', 1),
(327, '00000327', '2024-10-22 11:51:02', '3', '1', '0', 1, '118', '120.00', NULL, 120.00, 0.00, '0', '', '', NULL, '2024-10-22 00:00:00', '2024-10-23 00:00:00', 327, '0', 1),
(328, '00000328', '2024-10-22 11:53:27', '3', '1', '0', 1, '119', '120.00', NULL, 120.00, 0.00, '0', '', '', NULL, '2024-10-22 00:00:00', '2024-10-23 00:00:00', 327, '0', 1),
(329, '00000329', '2024-10-22 12:23:17', '5', '1', '0', 1, '101', '130', NULL, 130.00, 130.00, '0', '', '', 'Booking from admin', '2024-10-22 00:00:00', '2024-10-23 00:00:00', 327, '4', 1),
(330, '00000330', '2024-10-22 14:05:21', '5', '1', '0', 1, '102', '130.00', NULL, 130.00, 0.00, '0', '', '', NULL, '2024-10-22 00:00:00', '2024-10-23 00:00:00', 328, '0', 1),
(331, '00000331', '2024-11-02 15:05:16', '5,5', '1,1', '0,0', 2, '101,102', '130.00,130.00', NULL, 260.00, 0.00, '0,0', '', '', NULL, '2024-11-06 00:00:00', '2024-11-07 00:00:00', 329, '0', 0),
(332, '00000332', '2024-11-06 11:12:55', '5,5', '1,1', '0,0', 2, '103,104', '130.00,130.00', NULL, 260.00, 0.00, '0,0', '', '', NULL, '2024-11-06 00:00:00', '2024-11-07 00:00:00', 330, '0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `bookingtype`
--

CREATE TABLE `bookingtype` (
  `booktypeid` int(11) NOT NULL,
  `booktypetitle` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `bookingtype`
--

INSERT INTO `bookingtype` (`booktypeid`, `booktypetitle`) VALUES
(1, 'Online (Booking.com)'),
(2, 'Coorparate'),
(3, 'Rack '),
(4, 'Offline'),
(5, 'Tour operators'),
(6, 'Government'),
(7, 'Expedia'),
(8, 'Complementary');

-- --------------------------------------------------------

--
-- Table structure for table `candidate_basic_info`
--

CREATE TABLE `candidate_basic_info` (
  `can_id` varchar(20) NOT NULL,
  `first_name` varchar(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `last_name` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `phone` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `alter_phone` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `present_address` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `parmanent_address` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `picture` text DEFAULT NULL,
  `ssn` varchar(50) NOT NULL,
  `state` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `zip` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `candidate_education_info`
--

CREATE TABLE `candidate_education_info` (
  `can_edu_id` int(11) NOT NULL,
  `can_id` varchar(30) NOT NULL,
  `degree_name` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `university_name` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `cgp` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `comments` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `sequencee` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `candidate_interview`
--

CREATE TABLE `candidate_interview` (
  `can_int_id` int(11) NOT NULL,
  `can_id` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `job_adv_id` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `interview_date` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `interviewer_id` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `interview_marks` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `written_total_marks` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `mcq_total_marks` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `total_marks` varchar(30) NOT NULL,
  `recommandation` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `selection` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `details` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `candidate_selection`
--

CREATE TABLE `candidate_selection` (
  `can_sel_id` int(11) NOT NULL,
  `can_id` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `employee_id` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pos_id` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `selection_terms` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `candidate_shortlist`
--

CREATE TABLE `candidate_shortlist` (
  `can_short_id` int(11) NOT NULL,
  `can_id` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `job_adv_id` int(11) NOT NULL,
  `date_of_shortlist` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `interview_date` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `candidate_workexperience`
--

CREATE TABLE `candidate_workexperience` (
  `can_workexp_id` int(11) NOT NULL,
  `can_id` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `company_name` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `working_period` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `duties` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `supervisor` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `sequencee` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `check_addones`
--

CREATE TABLE `check_addones` (
  `id` int(11) NOT NULL,
  `order_menuid` int(11) NOT NULL,
  `sub_order_id` int(11) NOT NULL,
  `status` tinyint(4) DEFAULT NULL COMMENT '1=insert, 0=notinserted'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `common_setting`
--

CREATE TABLE `common_setting` (
  `id` int(11) NOT NULL,
  `address` text DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `logo` varchar(50) DEFAULT NULL,
  `login_logo` varchar(50) DEFAULT NULL,
  `footer_logo` varchar(50) DEFAULT NULL,
  `invoice_logo` varchar(50) DEFAULT NULL,
  `powerbytxt` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `common_setting`
--

INSERT INTO `common_setting` (`id`, `address`, `email`, `phone`, `logo`, `login_logo`, `footer_logo`, `invoice_logo`, `powerbytxt`) VALUES
(1, NULL, 'info@macjak.co.tz', '255624059005', 'assets/img/2024-10-01/M.png', 'assets/img/2024-10-01/M1.png', 'assets/img/2024-10-01/M2.png', 'assets/img/2024-10-01/M3.png', 'Powered by MATHEOS TECHS');

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `currencyid` int(11) NOT NULL,
  `currencyname` varchar(50) NOT NULL,
  `curr_icon` varchar(50) NOT NULL,
  `position` int(11) NOT NULL DEFAULT 1 COMMENT '1=left.2=right',
  `curr_rate` decimal(10,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`currencyid`, `currencyname`, `curr_icon`, `position`, `curr_rate`) VALUES
(2, 'USD', '$', 1, 1.00);

-- --------------------------------------------------------

--
-- Table structure for table `customerinfo`
--

CREATE TABLE `customerinfo` (
  `customerid` int(11) NOT NULL,
  `customernumber` varchar(100) DEFAULT NULL,
  `membership_type` int(11) DEFAULT NULL COMMENT '1=bronze,2=silver,3=gold,4=platinum,5=vip',
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `fathername` text DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `profession` varchar(100) DEFAULT NULL,
  `isnationality` varchar(100) DEFAULT NULL,
  `pid` text DEFAULT NULL,
  `pitype` text DEFAULT NULL,
  `imgfront` varchar(100) DEFAULT NULL,
  `imgback` varchar(100) DEFAULT NULL,
  `imgguest` varchar(100) DEFAULT NULL,
  `contacttype` text DEFAULT NULL,
  `zipcode` varchar(100) DEFAULT NULL,
  `nationality` varchar(100) DEFAULT NULL,
  `passport` varchar(120) DEFAULT NULL,
  `visano` varchar(80) DEFAULT NULL,
  `purpose` varchar(80) DEFAULT NULL,
  `profileimage` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `anniversary` text DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `cust_phone` text DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `balance` decimal(10,2) NOT NULL DEFAULT 0.00,
  `active` int(255) DEFAULT NULL,
  `password_reset_token` text DEFAULT NULL,
  `signupdate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `customerinfo`
--

INSERT INTO `customerinfo` (`customerid`, `customernumber`, `membership_type`, `firstname`, `lastname`, `fathername`, `email`, `address`, `profession`, `isnationality`, `pid`, `pitype`, `imgfront`, `imgback`, `imgguest`, `contacttype`, `zipcode`, `nationality`, `passport`, `visano`, `purpose`, `profileimage`, `city`, `gender`, `dob`, `anniversary`, `country`, `username`, `cust_phone`, `pass`, `balance`, `active`, `password_reset_token`, `signupdate`) VALUES
(1, '0002', NULL, 'EDWIN', 'SANDE', NULL, 'edwinsande54@gmail.com', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, 'Invalid date', NULL, NULL, NULL, '255759531929', NULL, 0.00, NULL, NULL, '2022-10-05'),
(2, '0002', NULL, 'Engineer KOHI', 'Vecht', 'Vertch', 'kohi@gmail.com', '', '', NULL, NULL, 'PASSPORT', '', '', '', '', '', '', '', NULL, NULL, NULL, '', 'male', '', '', '', NULL, '972522669292', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-05'),
(3, '0003', NULL, 'Mr IAN', 'IAN', 'KEDEM', 'ian@gmail.com', '', '', NULL, NULL, 'PASSPORT', '', '', '', '', '', '', '', NULL, NULL, NULL, '', 'male', '', '', '', NULL, '98438484444', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-05'),
(5, '0004', NULL, 'Mr Olive luena', 'luena', '', 'Sadanda@hotmail.com', '', '', NULL, NULL, 'NIDA', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, 'Iringa', '', '', '', '', NULL, '+2550784781129', 'e10adc3949ba59abbe56e057f20f883e', -100000.00, NULL, NULL, '2022-10-05'),
(6, '0006', NULL, 'Mr George Kiwango', 'Kiwango', '', 'georgekiwango@gmail.com', '', '', NULL, NULL, 'Driving licence', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, 'DSM', 'male', '', '', 'DSM', NULL, '+2550692463567', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-05'),
(7, '0007', NULL, 'Mr Samweli Kilua', 'Kilua', '', 'samwelokilua@gatbyafrica.tz', '', '', NULL, NULL, 'NIDA', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', 'Iringa', NULL, '+2550754649411', 'e10adc3949ba59abbe56e057f20f883e', -100000.00, NULL, NULL, '2022-10-05'),
(8, '0008', NULL, 'Mr Mikidad Waziri', 'Waziri', '', '', '', '', NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+2550786802999', 'e10adc3949ba59abbe56e057f20f883e', -200000.00, NULL, NULL, '2022-10-05'),
(9, '0009', NULL, 'Mr Shukrani Chilewa', 'Chilewa', '', 'shukranichilewa@care.org', '', '', NULL, NULL, 'NIDA', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', NULL, '+2550712228157', 'e10adc3949ba59abbe56e057f20f883e', -100000.00, NULL, NULL, '2022-10-05'),
(10, '0010', NULL, 'Mr Doctor Malatjie', 'Malatjie', '', '', '', '', NULL, NULL, 'Passport', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+2550756532475', 'e10adc3949ba59abbe56e057f20f883e', -320000.00, NULL, NULL, '2022-10-05'),
(11, '0011', NULL, 'Mr Christian Kannonyele', 'Kannonyele', '', '', '', '', NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, 'Tanzania0713405000', 'e10adc3949ba59abbe56e057f20f883e', -4640000.00, NULL, NULL, '2022-10-05'),
(12, '0012', NULL, 'Mr Neema Mosha', 'Mosha', '', '', '', '', NULL, NULL, 'Driving Licence', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'female', '', '', '', NULL, '+2550754202635', 'e10adc3949ba59abbe56e057f20f883e', -300000.00, NULL, NULL, '2022-10-05'),
(13, '0013', NULL, 'Mr George Gandye', 'Gandye', '', '', '', '', NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+2550713072704', 'e10adc3949ba59abbe56e057f20f883e', -1120000.00, NULL, NULL, '2022-10-05'),
(14, '0014', NULL, 'Mr Shishir Kacker', 'Kacker', '', '', '', '', NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', NULL, '0754667755', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-06'),
(15, '0015', NULL, 'Mr Shishir Kacker', 'Kacker', '', '', '', '', NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', NULL, '0754667755', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-06'),
(16, '0016', NULL, 'Ms Ericka Kafwimi', 'Kafwimi', '', 'ericka@gmail.com', '', '', NULL, NULL, '', '', '', '', '', '', '', '', NULL, NULL, NULL, '', 'female', '', '', '', NULL, '255755271001', 'e10adc3949ba59abbe56e057f20f883e', -100000.00, NULL, NULL, '2022-10-07'),
(17, '0017', NULL, 'Mr KLANS POEHLS', 'POEHLS', '', '', '', '', NULL, NULL, 'PASSPORT', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '494086625025', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-06'),
(18, '0018', NULL, 'Mr LUCINS EMMA', 'EMMA', '', '', '', '', NULL, NULL, 'PASSPORT', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'female', '', '', '', NULL, '+49491778788583', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-06'),
(19, '0019', NULL, 'Mr JAANA  LUCIUS', 'LUCIUS', '', '', '', '', NULL, NULL, 'PASSPORT', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'female', '', '', '', NULL, '+49491778788583', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-06'),
(20, '0020', NULL, 'Mr ROLF REHER', 'REHER', '', '', '', '', NULL, NULL, 'PASSPORT', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+49491722855039', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-06'),
(21, '0021', NULL, 'Mr ROLF REHER', 'REHER', '', '', '', '', NULL, NULL, 'PASSPORT', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+49491722855039', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-06'),
(22, '0022', NULL, 'Mr JUMAA MGUNGA', 'MGUNGA', '', '', '', '', NULL, NULL, 'DL', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, 'Tanzania0765833314', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-06'),
(23, '0023', NULL, 'Mr ISSA RASHID', 'RASHID', '', '', '', '', NULL, NULL, 'NIDA', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, 'Tanzania0764774779', 'e10adc3949ba59abbe56e057f20f883e', -100000.00, NULL, NULL, '2022-10-06'),
(24, '0024', NULL, 'Mr GEORGE SHAYO', 'SHAYO', 'AMBROSE', '', '', '', NULL, NULL, 'NIDA', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, 'Tanzania0713667387', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-06'),
(25, '0025', NULL, 'Mr GEORGE  SHAYO', 'SHAYO', '', '', '', '', NULL, NULL, 'NIDA', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, 'Tanzania0713667387', 'e10adc3949ba59abbe56e057f20f883e', -160000.00, NULL, NULL, '2022-10-06'),
(26, '0026', NULL, 'Mr YOHANA MGANGA', 'MGANGA', '', '', '', '', NULL, NULL, 'DL', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, 'Tanzania0713610300', 'e10adc3949ba59abbe56e057f20f883e', -240000.00, NULL, NULL, '2022-10-06'),
(27, '0027', NULL, 'Ms CAROLINE VINCENT', '', '', '', '', '', NULL, NULL, 'ID', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'female', '', '', '', NULL, '+27610250312', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-06'),
(28, '0028', NULL, 'Mr CHRISTIAN KANNONYELE', 'KANNONYELE', '', '', '', '', NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, 'Tanzania0713405000', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-06'),
(29, '0029', NULL, 'Mr NICO NGALAWA', 'NGALAWA', '', '', '', '', NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, 'Tanzania0754469394', 'e10adc3949ba59abbe56e057f20f883e', -300000.00, NULL, NULL, '2022-10-06'),
(30, '0030', NULL, 'Mr FLORA MWAKASITU', 'MWAKASITU', '', '', 'DarEsSalaam', '', NULL, NULL, '', '', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, 'DarEsSalaam', 'female', '', '', '', NULL, 'Tanzania0713858515', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-06'),
(31, '0031', NULL, 'Mr KLANS', '', 'POEHLS', 'klans.poehls@blankenese.de', '', '', NULL, NULL, 'Passport', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '494586625025', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-07'),
(32, '0032', NULL, 'Mr KLANS', '', 'POEHLS', 'klans.poehls@blankenese.de', '', '', NULL, NULL, 'Passport', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '494586625025', 'e10adc3949ba59abbe56e057f20f883e', 184000.00, NULL, NULL, '2022-10-07'),
(33, '0033', NULL, 'Mr BEBI KAPENYA', 'KAPENYA', '', '', 'DarEsSalaam', '', NULL, NULL, 'NIDA', '', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, 'DarEsSalaam', 'female', '', '', '', NULL, '0688033457', 'e10adc3949ba59abbe56e057f20f883e', -100000.00, NULL, NULL, '2022-10-07'),
(34, '0034', NULL, 'Mr BEBI KAPENYA', 'KAPENYA', '', '', 'DarEsSalaam', '', NULL, NULL, 'NIDA', '', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, 'DarEsSalaam', 'female', '', '', '', NULL, '0688033457', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-07'),
(35, '0035', NULL, 'Ms BARB WOLFE', 'WOLFE', '', '', '', '', NULL, NULL, 'PASSPORT', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'female', '', '', '', NULL, '17406074509', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-07'),
(36, '0036', NULL, 'Mr GOVANNI  BORSARI', 'BORSARI', '', '', '', '', NULL, NULL, 'PASSPORT', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+15078581034', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-07'),
(37, '0037', NULL, 'Mr GEORGE GANDYE', 'GANDYE', '', '', '', '', NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+255713072704', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-07'),
(38, '0038', NULL, 'Mr YOHANA MGANGA', 'MGANGA', '', '', '', '', NULL, NULL, 'DL', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+2550713610300', 'e10adc3949ba59abbe56e057f20f883e', -240000.00, NULL, NULL, '2022-10-07'),
(39, '0039', NULL, 'Mr GEORGE SHAYO', 'SHAYO', 'AMBROSE', '', '', '', NULL, NULL, 'NIDA', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+255713667387', 'e10adc3949ba59abbe56e057f20f883e', -80000.00, NULL, NULL, '2022-10-07'),
(40, '0040', NULL, 'Ms NALOZI DENIS', 'DENIS', 'CHIPETA', '', '', '', NULL, NULL, 'NIDA', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'female', '', '', '', NULL, '+255752548798', 'e10adc3949ba59abbe56e057f20f883e', -150000.00, NULL, NULL, '2022-10-07'),
(41, '0041', NULL, 'Ms LETICIA MAPUNDA', 'MAPUNDA', '', '', '', '', NULL, NULL, 'NIDA', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'female', '', '', '', NULL, '+255755698901', 'e10adc3949ba59abbe56e057f20f883e', -150000.00, NULL, NULL, '2022-10-07'),
(42, '0042', NULL, 'Mr ABISAI LOMAYANI', 'LOMAYANI', 'EMMANUEL', '', '', '', NULL, NULL, 'NIDA', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+255759060795', 'e10adc3949ba59abbe56e057f20f883e', -130000.00, NULL, NULL, '2022-10-07'),
(43, '0043', NULL, 'Mr HELTAN MBILINYI', 'MBILINYI', '', '', '', '', NULL, NULL, 'NIDA', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+255652207180', 'e10adc3949ba59abbe56e057f20f883e', -80000.00, NULL, NULL, '2022-10-07'),
(44, '0044', NULL, 'Mr ANDREA BIANCHI', 'BIANCHI', '', '', '', '', NULL, NULL, 'PASSPORT', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+255758959653', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-07'),
(45, '0045', NULL, 'Mr MOHAMED', '', 'ALLY', 'mohamedmally94@gmail.com', 'DarEsSalaam', '', NULL, NULL, 'PASSPORT', '', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, 'DarEsSalaam', 'male', '', '', '', NULL, '0766306996', 'e10adc3949ba59abbe56e057f20f883e', 160000.00, NULL, NULL, '2022-10-08'),
(46, '0046', NULL, 'Mr MORICE CHALAMILA', 'CHALAMILA', '', '', '', '', NULL, NULL, 'NIDA', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '0914609996', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-08'),
(47, '0047', NULL, 'Mr ALEX MWANYANJE', 'MWANYANJE', '', '', '', '', NULL, NULL, 'VOTERS', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '0744381689', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-08'),
(48, '0048', NULL, 'Mr HARUNA RAMADHANI', 'RAMADHANI', '', '', '', '', NULL, NULL, 'DL', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+255743147663', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-08'),
(49, '0049', NULL, 'Mr INGEBRIGT MOLLAN', 'MOLLAN', '', 'ingebrigtmollan@gmail.com', '', '', NULL, NULL, 'PASSPORT', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+4790203290', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-08'),
(50, '0050', NULL, 'Mr BJORN MYHRE', 'MYHRE', '', '', '', '', NULL, NULL, 'PASSPORT', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+47902032990', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-08'),
(51, '0051', NULL, 'Mr IBRAHIM RASHIDY', 'RASHIDY', '', '', '', '', NULL, NULL, 'DL', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+255678728403', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-08'),
(52, '0052', NULL, 'Mr MANUEL JUAN SOTO GARCIA', 'SOTO GARCIA', '', 'manueljuan.soto@gmail.com', '', '', NULL, NULL, 'R PERMITT', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+34686468536', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-08'),
(53, '0053', NULL, 'Ms QUEEN JOHN', 'JOHN', '', '', '', '', NULL, NULL, 'NIDA', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'female', '', '', '', NULL, '+255768599408', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-08'),
(54, '0054', NULL, 'Mr VICTOR HAULE', 'HAULE', '', '', '', '', NULL, NULL, 'NIDA', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+255743667002', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-08'),
(55, '0055', NULL, 'Ms HAPPY OGARE', 'OGARE', '', '', '', '', NULL, NULL, 'NIDA', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'female', '', '', '', NULL, '+255768423561', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-08'),
(56, '0056', NULL, 'Mr ZUBERI LISSU', 'LISSU', '', '', '', '', NULL, NULL, 'NIDA', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+255756349571', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-08'),
(57, '0057', NULL, 'Ms FORTUNATA MDEMU', 'MDEMU', '', '', '', '', NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'female', '', '', '', NULL, '+255758151573', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-08'),
(58, '0058', NULL, 'Mr EMMANUEL MAIGA', 'MAIGA', 'MAIGA', '', 'DarEsSalaam', '', NULL, NULL, '', '', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, 'DarEsSalaam', 'male', '', '', '', NULL, '0754352723', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-09'),
(59, '0059', NULL, 'Ms PATRICIA', '', 'RIETBERGEN', 'p.belinder@hotmail.com', '', '', NULL, NULL, 'PASSPORT', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'female', '', '', '', NULL, '31612323707', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-09'),
(60, '0060', NULL, 'Ms MAGRETH MAMBAI', 'MAMBAI', 'LAWRENCE', 'lawrencepeggy2222gmail.com', 'DarEsSalaam', '', NULL, NULL, '', '', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, 'DarEsSalaam', 'female', '', '', '', NULL, '07547711288', 'e10adc3949ba59abbe56e057f20f883e', -100000.00, NULL, NULL, '2022-10-09'),
(61, '0061', NULL, 'Ms ADELAIDE KISINDA', 'KISINDA', '', 'aki@noras.dk', '', '', NULL, NULL, 'DRIVING LIECENCE', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'female', '', '', '', NULL, '0782169190', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-09'),
(62, '0062', NULL, 'Mr FRANK KINKUTTA', 'KINKUTTA', '', 'fkinkutta@gmail.com', 'DarEsSalaam', '', NULL, NULL, '', '', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, 'DarEsSalaam', 'male', '', '', '', NULL, '0784285118', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-09'),
(63, '0063', NULL, 'Mr IAN', '', 'HUTCHESON', '', '', '', NULL, NULL, 'PASSPORT', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '353878389958', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-09'),
(64, '0064', NULL, 'Mr TAKONDWA KALINDA', 'KALINDA', '', '', '', '', NULL, NULL, 'PASSPORT', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '260977890930', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-09'),
(65, '0065', NULL, 'Mr EDDIE CHILWANA', 'CHILWANA', '', '', '', '', NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '260979437181', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-09'),
(66, '0066', NULL, 'Ms AMANDA MOSHI', 'MOSHI', 'BEN', '', '', '', NULL, NULL, 'PASSPORT', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'female', '', '', '', NULL, '0762991883', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-09'),
(67, '0067', NULL, 'Mr MONICA', '', 'RAMADHANI', 'morm@niras.com', 'DarEsSalaam', '', NULL, NULL, 'NIDA', '', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, 'DarEsSalaam', 'male', '', '', '', NULL, '0716797542', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-09'),
(68, '0068', NULL, 'Mr ANDREW PHILBROOK', 'PHILBROOK', '', 'dphilbrook@globalvolunteers.org', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+2550768380547', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-10'),
(69, '0069', NULL, 'Mr JOSEPH LUPEMBE', 'LUPEMBE', '', '', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+2550657893866', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-10'),
(70, '0070', NULL, 'Mr QIAN CHEN', 'CHEN', '', '', '', '', NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+2550655587688', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-10'),
(71, '0071', NULL, 'Mr SAMWEL MLOLE', 'MLOLE', '', '0754711473', '', '', NULL, NULL, 'DRIVING LICENCE', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+2550754711473', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-10'),
(72, '0072', NULL, 'Mr FENG  WANG', 'WANG', '', 'RPQB00269822A00', '', '', NULL, NULL, 'e- PERMIT ', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+2550655587688', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-10'),
(73, '0073', NULL, 'Mr RALUCA DOMITRESCO', 'DOMITRESCO', '', 'ralucadomitrescu@microenergy.consult.com', '', '', NULL, NULL, 'PASSPORT', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '255055721488', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-10'),
(74, '0074', NULL, 'Mr SISTY BASIL', 'BASIL', '', 'sistybasil@elicofoundation.org', '', '', NULL, NULL, 'DRIVING LICENCE', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+255787252585', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-10'),
(75, '0075', NULL, 'Mr MOSES LAITAYOCK', 'LAITAYOCK', '', '0766523320', '', '', NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+2550766523320', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-10'),
(76, '0076', NULL, 'Mr LUSAJO BENSON', 'BENSON', '', 'lusajobenson@gmail.com', '', '', NULL, NULL, 'DRIVING LICENCE', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+2550763654865', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-10'),
(77, '0077', NULL, 'Ms PATRICIA MKUDE', 'MKUDE', '', 'pplacid@tcdctz.org', '', '', NULL, NULL, 'NIDA', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+2550688043939', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-10'),
(78, '0078', NULL, 'Mr CARTER COLEMAN', 'COLEMAN', '', '12', '', '', NULL, NULL, 'PASSPORT', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+25512', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-10'),
(79, '0079', NULL, 'Mr IBRAHIM KYARUZI', 'KYARUZI', '', 'ibrahimkyaruzi@earthfrontiers', '', '', NULL, NULL, 'driving licence', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+2550768222000', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-10'),
(80, '0080', NULL, 'Mr Fredrick Shoo', 'Shoo', '', '0754836511', '', '', NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'female', '', '', '', NULL, '+2550754836511', 'e10adc3949ba59abbe56e057f20f883e', -150000.00, NULL, NULL, '2022-10-11'),
(81, '0081', NULL, 'Mr Fredrick Shoo', 'Shoo', '', '0754836511', '', '', NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '2550754836511', 'e10adc3949ba59abbe56e057f20f883e', -150000.00, NULL, NULL, '2022-10-11'),
(82, '0082', NULL, 'Mr Joanna  Pinneu', 'Pinneu', '', 'joanna@solahsister.org', '', '', NULL, NULL, 'Passport', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+1-3037091569', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-11'),
(83, '0083', NULL, 'Mr Abdallah Hemed', 'Hemed', '', 'samiz-abdallah@gmail,com', '', '', NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+2550754711148', 'e10adc3949ba59abbe56e057f20f883e', -100000.00, NULL, NULL, '2022-10-11'),
(84, '0084', NULL, 'Mr NILESH LIMBANI', 'LIMBANI', '', 'limbaniaayush@gmail.com', '', '', NULL, NULL, 'NIDA', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+2550713233034', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-11'),
(85, '0085', NULL, 'Mr NILESH LMBANI', 'LMBANI', '', 'limbaniaayush@gmail.com', '', '', NULL, NULL, 'NIDA', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+2550713233034', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-11'),
(86, '0086', NULL, 'Mr Jean Ganza', 'Ganza', 'Clause', 'jcganzi@davisworld wide.nc', '', '', NULL, NULL, 'Passport', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+31623197079', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-11'),
(87, '0087', NULL, 'Mr Lucy Kuria', 'Kuria', 'Njeri', 'wagashagia@gmail.com', '', '', NULL, NULL, 'Passport', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', NULL, '+254723416457', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-11'),
(88, '0088', NULL, 'Mr ADAM MOSHI', 'MOSHI', '', '', '', '', NULL, NULL, 'NIDA', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+255719695510', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-12'),
(89, '0089', NULL, 'Mr Samwel Kilua', 'Kilua', '', 'samweli.kilua@gatsbyoffice.or.tz', '', '', NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+255754649411', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-12'),
(90, '0090', NULL, 'Mr AHMED  SALEH', 'SALEH', '', '', '', '', NULL, NULL, 'NIDA', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+255742898989', 'e10adc3949ba59abbe56e057f20f883e', -360000.00, NULL, NULL, '2022-10-12'),
(91, '0091', NULL, 'Mr ADAM SALIM', 'SALIM', '', '', '', '', NULL, NULL, 'NIDA', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+255762138436', 'e10adc3949ba59abbe56e057f20f883e', -360000.00, NULL, NULL, '2022-10-12'),
(92, '0092', NULL, 'Mr ABUBAKARI RAJABU', 'RAJABU', '', '', '', '', NULL, NULL, 'NIDA', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+255655402299', 'e10adc3949ba59abbe56e057f20f883e', -360000.00, NULL, NULL, '2022-10-12'),
(93, '0093', NULL, 'Mr RASMUS', '', 'PEDERSEN', '', '', '', NULL, NULL, 'PASSPORT', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '0753149876', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-13'),
(94, '0094', NULL, 'Mr tejTEJASWINT JAG', 'JAG', 'MANDAR', 'tejswino.jog@gmail,com', '', '', NULL, NULL, 'PASSPORT', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'female', '', '', '', NULL, '919689729846', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-13'),
(95, '0095', NULL, 'Ms Chery Anton', 'Anton', '', '0742904007', '', '', NULL, NULL, 'Driving licence', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'female', '', '', '', NULL, '+2550742904007', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-13'),
(96, '0096', NULL, 'Mr Georgia  Anton', 'Anton', '', '0742904007', '', '', NULL, NULL, 'Passport', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'female', '', '', '', NULL, '+2550742904007', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-13'),
(97, '0097', NULL, 'Mr William Macha', 'Macha', '', 'willian@buyer.com', '', '', NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+2550712007050', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-13'),
(98, '0098', NULL, 'Mr Ezekiel Nungwi', 'Nungwi,', '', '0754711213,', '', '', NULL, NULL, ',', ',', ',', ',', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male,', '', '', '', NULL, '0754711213,0754711', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-13'),
(99, '0099', NULL, 'Ms VIVIANE HASSLEMANN', 'HASSLEMANN', '', '', '', '', NULL, NULL, 'PASSPORT', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'female', '', '', '', NULL, '+255768624936', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-13'),
(100, '0100', NULL, 'Mr PAULO KILENGA', 'KILENGA', '', '', '', '', NULL, NULL, 'PASSPORT', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+255658690025', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-13'),
(101, '0101', NULL, 'Mr BENOIT WILHELMI', 'WILHELMI', '', 'cavebeb_w@hotmail.com', '', '', NULL, NULL, 'DL', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+255684331187', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-13'),
(102, '0102', NULL, 'Mr WALEED SALEHE', 'SALEHE', '', '0782484444', '', '', NULL, NULL, 'DL', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+255782484444', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-13'),
(103, '0103', NULL, 'Mr GIDEON MAKARA', 'MAKARA', '', 'demakara@gmail.com', '', '', NULL, NULL, 'DL', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+255784481787', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-13'),
(104, '0104', NULL, 'Mr GIDEON MAKARA', 'MAKARA', '', 'demakara@gmail.com', '', '', NULL, NULL, 'DL', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+255784481787', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-13'),
(105, '0105', NULL, 'Mr ADOLPH  NDUGULU', 'NDUGULU', '', '', '', '', NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+255756275778', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-13'),
(106, '0106', NULL, 'Mr FARID MBARAK', 'MBARAK', '', '', '', '', NULL, NULL, 'PASSPORT', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+255713332222', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-13'),
(107, '0107', NULL, 'Mr AREF MBARAK', 'MBARAK', '', '', '', '', NULL, NULL, 'NIDA', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+255715474484', 'e10adc3949ba59abbe56e057f20f883e', -150000.00, NULL, NULL, '2022-10-13'),
(108, '0108', NULL, 'Mr ABDALLAH HUWEL', 'HUWEL', '', '', '', '', NULL, NULL, 'PASSPORT', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+255742300300', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-14'),
(109, '0109', NULL, 'Mr MICHAEL MBILINYI', 'MBILINYI', '', 'michael_mbilinyi@yahoo.com', '', '', NULL, NULL, 'DL', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+255716049277', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-14'),
(110, '0110', NULL, 'Mr MATTEO PAVANA', 'PAVANA', '', 'matteo.pavana@gmail.com', '', '', NULL, NULL, 'PASSPORT', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+393472464327', 'e10adc3949ba59abbe56e057f20f883e', -80000.00, NULL, NULL, '2022-10-14'),
(111, '0111', NULL, 'Ms JESSICA SWAI', 'SWAI', '', 'jesekevon@gmail.com', '', '', NULL, NULL, 'NIDA', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'female', '', '', '', NULL, '+255754213136', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-14'),
(112, '0112', NULL, 'Mr ALI AHMED', 'AHMED', '', '', '', '', NULL, NULL, 'DL', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+255746777700', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-14'),
(113, '0113', NULL, 'Mr MBARICK NASSOR', 'NASSOR', 'SALIM', '', '', '', NULL, NULL, 'NIDA', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+255714198982', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-14'),
(114, '0114', NULL, 'Mr ANDREA BIANCHI', 'BIANCHI', '', '', '', '', NULL, NULL, 'PASSPORT', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+255758959653', 'e10adc3949ba59abbe56e057f20f883e', -100000.00, NULL, NULL, '2022-10-14'),
(115, '0115', NULL, 'Mr ZUBERI LISSU', 'LISSU', '', '', '', '', NULL, NULL, 'NIDA', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+255756349571', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-14'),
(116, '0116', NULL, 'Ms SALAMA BAMVUA', 'BAMVUA', 'MFUNDO', 'salamamfundo12@gmail.com', '', '', NULL, NULL, 'NIDA', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'female', '', '', '', NULL, '+255766727437', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-14'),
(117, '0117', NULL, 'Ms MARYAM LUSHINO', 'LUSHINO', '', 'maryam.lushino@gmail.com', '', '', NULL, NULL, 'DL', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'female', '', '', '', NULL, '+2556522192412', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-14'),
(118, '0118', NULL, 'Ms LUCY BRUNO', 'BRUNO', '', '', '', '', NULL, NULL, 'NIDA', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'female', '', '', '', NULL, '+255766908435', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-14'),
(119, '0119', NULL, 'Mr Salim Bin kleb', 'Bin kleb', 'Mbarak', '071555780', '', '', NULL, NULL, 'DL', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+255071555780', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-14'),
(120, '0120', NULL, 'Mr Salim Bin kleb', 'Bin kleb', 'Mbarak', '071555780', '', '', NULL, NULL, 'DL', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+255071555780', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-14'),
(121, '0121', NULL, 'Mr DAVID PERRY', 'PERRY', '', 'dperry@GETIDEAL.COM', '', '', NULL, NULL, 'PASSPORT', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+255757820926', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-15'),
(122, '0122', NULL, 'Mr Nizio Faller', 'Faller', '', '0676647045', '', '', NULL, NULL, 'Resident permit', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '0676647045', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-15'),
(123, '0123', NULL, 'Mr Mohamed Moyo', 'Moyo', '', '', 'DarEsSalaam', '', NULL, NULL, '', '', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, 'DarEsSalaam', 'male', '', '', '', NULL, '0658328697', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-15'),
(124, '0124', NULL, 'Mr Nicholas Kanyamala', 'Kanyamala', '', 'nkanyamala@mkwawatanz.com', 'DarEsSalaam', '', NULL, NULL, 'NIDA', '', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, 'DarEsSalaam', 'male', '', '', '', NULL, '0768035675', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-15'),
(125, '0125', NULL, 'Mr HAMIS SALUM', 'SALUM', '', '', '', '', NULL, NULL, 'DL', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+255714969798', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-15'),
(126, '0126', NULL, 'Ms URTE SCHLUTER', 'SCHLUTER', '', '', '', '', NULL, NULL, 'PASSPORT', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'female', '', '', '', NULL, '+255767133261', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-15'),
(127, '0127', NULL, 'Mr PAULO FISCHER', 'FISCHER', 'RICARDO', '', '', '', NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+255763100239', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-15'),
(128, '0128', NULL, 'Mr EZEKIEL NUNGWI', 'NUNGWI', '', '', '', '', NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+255754711213', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-15'),
(129, '0129', NULL, 'Mr KLANS POEHLS', 'POEHLS', '', '', '', '', NULL, NULL, 'PASSOPRT', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+49 4086625025', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-16'),
(130, '0130', NULL, 'Ms LUCINS EMMA', 'EMMA', '', '', '', '', NULL, NULL, 'PASSPORT', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'female', '', '', '', NULL, '+491778788583', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-16'),
(131, '0131', NULL, 'Ms JAANA LUCIUS', 'LUCIUS', '', '', '', '', NULL, NULL, 'PASSPORT', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'female', '', '', '', NULL, '+491778788583', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-16'),
(132, '0132', NULL, 'Mr ROLF REHER', 'REHER', '', '', '', '', NULL, NULL, 'PASSPORT', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+491722855039', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-16'),
(133, '0133', NULL, 'Mr NKANDA JEREMIAH', 'JEREMIAH', '', 'nkanda2005@yahoo.com', '', '', NULL, NULL, 'DL', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+2550754613974', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-16'),
(134, '0134', NULL, 'Mr ESNATH  ALPHONCE', 'ALPHONCE', '', 'nkanda2005@yahoo.com', '', '', NULL, NULL, 'DL', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'female', '', '', '', NULL, '+2550754613974', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-16'),
(135, '0135', NULL, 'Mr ROSE NJAVIKE', 'NJAVIKE', '', 'rosenjavike2017@gmail\\.com', '', '', NULL, NULL, 'NIDA', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'female', '', '', '', NULL, '+2550743665901', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-16'),
(136, '0136', NULL, 'Mr BERNARD SEHABIAGUE', 'SEHABIAGUE', '', '', '', '', NULL, NULL, 'PASSPORT', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+33613740331', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-16'),
(137, '0137', NULL, 'Mr JONAS BALENGAYABO', 'BALENGAYABO', 'GERVAS', 'jonasgervas@gmail.com', '', '', NULL, NULL, 'DL', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+255763891776', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-16'),
(138, '0138', NULL, 'Mr AMAR HAMAD', 'HAMAD', '', '', '', '', NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+255752676824', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-16'),
(139, '0139', NULL, 'Mr ALPHONCE MAGANGA', 'MAGANGA', '', '', 'DarEsSalaam', '', NULL, NULL, 'NIDA', '', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, 'DarEsSalaam', 'male', '', '', '', NULL, '0622142732', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-16'),
(140, '0140', NULL, 'Ms Olive Luena', 'Luena', '', '', 'DarEsSalaam', '', NULL, NULL, '', '', '', '', 'FDT', '00000', NULL, NULL, NULL, NULL, NULL, 'DarEsSalaam', 'female', '', '', '', NULL, '0784781129', 'e10adc3949ba59abbe56e057f20f883e', -118000.00, NULL, NULL, '2022-10-16'),
(141, '0141', NULL, 'Mr Charles Wilson', 'Wilson', '', '', 'DarEsSalaam', '', NULL, NULL, 'Voter\'s card', '', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, 'DarEsSalaam', 'male', '', '', '', NULL, '0758130285', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-16'),
(142, '0142', NULL, 'Mr Abdallah Hemed', 'Hemed', '', 'samizi.abdallah@gmail.com', 'DarEsSalaam', '', NULL, NULL, 'NIDA', '', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, 'DarEsSalaam', 'male', '', '', '', NULL, '0754711148', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-16'),
(143, '0143', NULL, 'Mr Hamis Salum', 'Salum', '', '', 'DarEsSalaam', '', NULL, NULL, 'Driving licence', '', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, 'DarEsSalaam', 'male', '', '', '', NULL, '0714969798', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-16'),
(144, '0144', NULL, 'Mr Fredy Haule', 'Haule', '', '', 'DarEsSalaam', '', NULL, NULL, '', '', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, 'DarEsSalaam', 'male', '', '', '', NULL, '0758258605', 'e10adc3949ba59abbe56e057f20f883e', -80000.00, NULL, NULL, '2022-10-16'),
(145, '0145', NULL, 'Mr Emmanuel Mhimbila', 'Mhimbila', '', '', 'DarEsSalaam', '', NULL, NULL, '', '', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, 'DarEsSalaam', 'male', '', '', '', NULL, '0752243928', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-16'),
(146, '0146', NULL, 'Mr Valerian Kiyanga', 'Kiyanga', '', '', 'DarEsSalaam', '', NULL, NULL, '', '', '', '', 'ARD', '00000', NULL, NULL, NULL, NULL, NULL, 'DarEsSalaam', 'male', '', '', '', NULL, '0767857786', 'e10adc3949ba59abbe56e057f20f883e', -432000.00, NULL, NULL, '2022-10-16'),
(147, '0147', NULL, 'Mr LONEBRUUN RASMOSSEN', 'RASMOSSEN', '', 'lonebr@mail.dk', '', '', NULL, NULL, 'PASSPORT', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+4526206466', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-17'),
(148, '0148', NULL, 'Mr BENTHOUMAA JQRGENSEN', 'JQRGENSEN', '', 'BENTHOUMAA@GMAIL.COM', '', '', NULL, NULL, 'PASSPORT', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+255787731983', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-17'),
(149, '0149', NULL, 'Mr MARK WAGECHE', 'WAGECHE', '', '', '', '', NULL, NULL, 'PASSPORT', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+255758983410', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-17'),
(150, '0150', NULL, 'Mr TEJASWINT JOG', 'JOG', '', 'tejaswini.joy@gmail.com', '', '', NULL, NULL, 'passport', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'female', '', '', '', NULL, '+919689729848', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-18'),
(151, '0151', NULL, 'Mr ANDWEN PLIBROOK', 'PLIBROOK', '', 'phileQzidvandn', '', '', NULL, NULL, 'Passport', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+16514152692', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-18'),
(152, '0152', NULL, 'Mr William Ritte', 'Ritte', '', '0763210190', '', '', NULL, NULL, 'NIDA', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+2550763210190', 'e10adc3949ba59abbe56e057f20f883e', -225000.00, NULL, NULL, '2022-10-18'),
(153, '0153', NULL, 'Mr MOHAMED  FARAJ', 'FARAJ', '', 'mohamedfaraj2@gmail.com', '', '', NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, 'NAIROBI', 'male', '01/03/1989', '', 'KENYAN', NULL, '+255719329415', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-18'),
(154, '0154', NULL, 'Mr LAURA KIMWENE', 'KIMWENE ', '', 'laubrooke.orgrakimwene@', '', '', NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, 'nairobi', 'female', '', '', '', NULL, '+255719329415', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-18'),
(155, '0155', NULL, 'Mr SAMANTHA OPERE', 'OPERE', '', 'samantha.opere@thebrookeeastafrica.org', '', '', NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, 'NAIROBI', 'female', '', '', '', NULL, '+255719329415', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-18'),
(156, '0156', NULL, 'Mr PAUL MNANAGAT', 'MNANAGAT', '', 'paulmnangat@yahoo.com', '', '', NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, 'NAIROBI', 'male', '', '', '', NULL, '+255725143153', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-18'),
(157, '0157', NULL, 'Mr EUNICE MOSHA', 'MOSHA', '', 'eunice.mosha@gmail.com', '', '', NULL, NULL, 'VOTE', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, 'DAR ES  SALAAM', 'female', '', '', '', NULL, '+255715206832', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-18'),
(158, '0158', NULL, 'Mr Remijius Hayoyo', 'Hayoyo', '', '0721441269', '', '', NULL, NULL, 'passport', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+255721441269', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-19'),
(159, '0159', NULL, 'Mr Ashraf Farah', 'Farah', '', 'ashraffarah@nutreco.com', '', '', NULL, NULL, 'passport', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+255000000000', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-19'),
(160, '0160', NULL, 'Mr Ashraf Farah', 'Farah', '', 'ashraffarah@nutreco.com', '', '', NULL, NULL, 'passport', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+255000000000', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-19'),
(161, '0161', NULL, 'Mr Ashraf Farah', 'Farah', '', 'ashraffarah@nutreco.com', '', '', NULL, NULL, 'passport', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+255000000000', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-19'),
(162, '0162', NULL, 'Mr Ashraf Farah', 'Farah', '', 'ashraffarah@nutreco.com', '', '', NULL, NULL, 'passport', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+255000000000', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-19'),
(163, '0163', NULL, 'Mr IVAN SAMUEL', 'SAMUEL', '', 'isamwel@riridium.co.tz', '', '', NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+2550785653106', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-19'),
(164, '0164', NULL, 'Mr GODFREY TEMBA', 'TEMBA', '', 'gtemba@ark.co.tz', '', '', NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+2550767810979', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-19'),
(165, '0165', NULL, 'Mr CHIPEGWA', '', '', '0759080186', '', '', NULL, NULL, 'NIDA', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+2550759080186', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-19'),
(166, '0166', NULL, 'Mr FAN LI', 'LI', '', '1041357680@qq.com', '', '', NULL, NULL, 'passport', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'female', '', '', '', NULL, '+2550779747709', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-19'),
(167, '0167', NULL, 'Mr WEZAN HE', 'HE', '', '1041351080@qq.com', '', '', NULL, NULL, 'PASPPORT', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+2550779747709', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-19'),
(168, '0168', NULL, 'Mr Gosbert Kahatano', 'Kahatano', '', 'gosbert.kahatano@smec.com', '', '', NULL, NULL, 'PTE', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+2550762963741', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-19'),
(169, '0169', NULL, 'Mr Jan Broodryk', 'Broodryk', '', 'jan.broodryk', '', '', NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '0699764575', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-19'),
(170, '0170', NULL, 'Mr Dheshan Naidoo', 'Naidoo', '', 'deshonnadoo@cnhind.com', '', '', NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+27716781733', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-19'),
(171, '0171', NULL, 'Mr Denis Magezi', 'Magezi', 'Damiano', 'denis.damiano', '', '', NULL, NULL, 'PASSPORT', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+255075894407', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-19'),
(172, '0172', NULL, 'Mr LOTFI BENNANI', 'BENNANI', '', 'lotfibennani@cera.com', '', '', NULL, NULL, 'passport', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+21626442222', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-20'),
(173, '0173', NULL, 'Mr LAZARO KAPELLE', 'KAPELLE', '', 'Kaplazaro@gmail.com', '', '', NULL, NULL, 'passport', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+2550769845744', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-20'),
(174, '0174', NULL, 'Mr RYAN OUTRAM', 'OUTRAM', '', 'ryan@theoutrams.com', '', '', NULL, NULL, 'passport', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+254725633577', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-20'),
(175, '0175', NULL, 'Mr AZIZI MRISHO', 'MRISHO', 'MINDO', '0754615323', '', '', NULL, NULL, 'DL', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+2550754615323', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-20'),
(176, '0176', NULL, 'Mr Henry Okelio', 'Okelio', '', 'henri2020@rm.me', '', '', NULL, NULL, 'NIDA', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+2550757478449', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-21'),
(177, '0177', NULL, 'Mr Alexandra Kulmalahti', 'Kulmalahti', '', 'alexandrekulmalahti@gmail.com', '', '', NULL, NULL, 'Pasport', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+358407042395', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-21'),
(178, '0178', NULL, 'Ms Neema Pasanen', 'Pasanen', '', 'neema49inkeni@gmail.com', '', '', NULL, NULL, 'passport', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'female', '', '', '', NULL, '+2550764931222', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-21'),
(179, '0179', NULL, 'Mr Roman seifert', 'seifert', '', 'roman.seifert@outlook.com', '', '', NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+436649224009', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-21'),
(180, '0180', NULL, 'Mr Roman seifert', 'seifert', '', 'roman.seifert@outlook.com', '', '', NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+436649224009', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-21'),
(181, '0181', NULL, 'Mr Carter Coleman', 'Coleman', '', '07528579045', '', '', NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', NULL, '07528579045', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-21'),
(182, '0182', NULL, 'Ms Valerian Sanga', 'Sanga', '', '0767857785', '', '', NULL, NULL, 'DL', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+2550767857785', 'e10adc3949ba59abbe56e057f20f883e', -324000.00, NULL, NULL, '2022-10-21'),
(183, '0183', NULL, 'Ms Valerian Sanga', 'Sanga', '', '0767857785', '', '', NULL, NULL, 'DL', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+2550767857785', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-21'),
(184, '0184', NULL, 'Ms Valerian Sanga', 'Sanga', '', '0767857785', '', '', NULL, NULL, 'DL', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+2550767857785', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-21'),
(185, '0185', NULL, 'Ms Valerian Sanga', 'Sanga', '', '0767857785', '', '', NULL, NULL, 'DL', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+2550767857785', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-21'),
(186, '0186', NULL, 'Ms Valerian Sanga', 'Sanga', '', '0767857785', '', '', NULL, NULL, 'DL', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+2550767857785', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-21'),
(187, '0187', NULL, 'Ms Valerian Sanga', 'Sanga', '', '0767857785', '', '', NULL, NULL, 'DL', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+2550767857785', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-21');
INSERT INTO `customerinfo` (`customerid`, `customernumber`, `membership_type`, `firstname`, `lastname`, `fathername`, `email`, `address`, `profession`, `isnationality`, `pid`, `pitype`, `imgfront`, `imgback`, `imgguest`, `contacttype`, `zipcode`, `nationality`, `passport`, `visano`, `purpose`, `profileimage`, `city`, `gender`, `dob`, `anniversary`, `country`, `username`, `cust_phone`, `pass`, `balance`, `active`, `password_reset_token`, `signupdate`) VALUES
(188, '0188', NULL, 'Ms Valerian Sanga', 'Sanga', '', '0767857785', '', '', NULL, NULL, 'DL', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+2550767857785', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-21'),
(189, '0189', NULL, 'Ms Valerian Sanga', 'Sanga', '', '0767857785', '', '', NULL, NULL, 'DL', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+2550767857785', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-21'),
(190, '0190', NULL, 'Ms Valerian Sanga', 'Sanga', '', '0767857785', '', '', NULL, NULL, 'DL', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+2550767857785', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-21'),
(191, '0191', NULL, 'Ms Valerian Sanga', 'Sanga', '', '0767857785', '', '', NULL, NULL, 'DL', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+2550767857785', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-21'),
(192, '0192', NULL, 'Ms Valerian Sanga', 'Sanga', '', '0767857785', '', '', NULL, NULL, 'DL', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+2550767857785', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-21'),
(193, '0193', NULL, 'Mr Rauch Johannes', 'Johannes', '', 'johannes.rauch1@gnx.at', '', '', NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+436646255582', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-21'),
(194, '0194', NULL, 'Ms Wangu Munyua', 'Munyua', '', 'munyuawangu@gmail.com', '', '', NULL, NULL, 'Passport', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'female', '', '', '', NULL, '746796024', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-21'),
(195, '0195', NULL, 'Ms Elizabeth Kimaro', 'Kimaro', '', 'elizabeth42@gmail.com', '', '', NULL, NULL, 'VOTER CARD', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'female', '', '', '', NULL, '+255764143217', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-21'),
(196, '0196', NULL, 'Ms Leticia', '', '', 'mapundaletty@yahoom', '', '', NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'female', '', '', '', NULL, '+255755698901', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-21'),
(197, '0197', NULL, 'Ms Leticia', '', '', 'mapundaletty@yahoom', '', '', NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'female', '', '', '', NULL, '+255755698901', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-21'),
(198, '0198', NULL, 'Mr NASHON KAMNYUNGU', 'KAMNYUNGU', '', 'nashon.andrew@gmail.com', '', '', NULL, NULL, 'NIDA', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+2550758914211', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-22'),
(199, '0199', NULL, 'Mr LULU GEOGRGE', 'GEOGRGE', '', '0758914211', '', '', NULL, NULL, 'nida', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'female', '', '', '', NULL, '+2550758914211', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-22'),
(200, '0200', NULL, 'Mr ASHA GEMBE', 'GEMBE', '', '0767622978', '', '', NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'female', '', '', '', NULL, '+2550767622978', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-22'),
(201, '0201', NULL, 'Mr JOHN RABIE', 'RABIE', '', 'John.Rabie@greensarces.no', '', '', NULL, NULL, 'passport', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+255719737554', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-22'),
(202, '0202', NULL, 'Mr SIMON ADARMON', 'ADARMON', '', 'Simon3718@gmail.com', '', '', NULL, NULL, 'ID', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+00000000000', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-22'),
(203, '0203', NULL, 'Mr LULU GEORGE', 'GEORGE', '', '0758914211', '', '', NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'female', '', '', '', NULL, '+2550758914211', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-22'),
(204, '0204', NULL, 'Ms ASHA GEMBE', 'GEMBE', '', '0767622978', '', '', NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', NULL, '+255767622978', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-22'),
(205, '0205', NULL, 'Mr Josephat Luyala', 'Luyala', '', '0786376600', '', '', NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+2550786376600', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-22'),
(206, '0206', NULL, 'Mr Josephat Luyara', 'Luyara', '', '0786376600', '', '', NULL, NULL, 'NIDA', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '0786376600', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-22'),
(207, '0207', NULL, 'Ms Meray Nyamageni', 'Nyamageni', '', '0789860638', '', '', NULL, NULL, 'DL', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'female', '', '', '', NULL, '+255789860638', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-22'),
(208, '0208', NULL, 'Mr LEONARDUS VAN DER MADEA', 'VAN DER MADEA', '', 'R.vanernadeu@gmail.com', '', '', NULL, NULL, 'PASSPORT', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+316291060606', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-23'),
(209, '0209', NULL, 'Mr DONATUS  MWENDA', 'MWENDA', '', 'mwenda@agriterra.org', '', '', NULL, NULL, 'VOTERS', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+255754979023', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-23'),
(210, '0210', NULL, 'Mr MIKIDAD WAZIRI', 'WAZIRI', '', '', '', '', NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+255786802999', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-23'),
(211, '0211', NULL, 'Mr LUCAS SIGALLAH', 'SIGALLAH', 'NICHOLOUS', '', '', '', NULL, NULL, 'NIDA', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+255758261222', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-23'),
(212, '0212', NULL, 'Mr CELESTE MUGANGA', 'MUGANGA', '', '', '', '', NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+255713239393', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-23'),
(213, '0213', NULL, 'Mrs MINNA KAVERI', 'KAVERI', '', 'must71lard@gmail.com', '', '', NULL, NULL, 'PASSPORT', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'female', '', '', '', NULL, '+255743359971', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-23'),
(214, '0214', NULL, 'Mr LEA  PESONEN', 'PESONEN', '', 'lea.pesonen@eduoouka.fi', '', '', NULL, NULL, 'PASSPORT', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'female', '', '', '', NULL, '+358407419323', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-23'),
(215, '0215', NULL, 'Ms ANU FEDOTOFF', 'FEDOTOFF', '', 'ann.fedoftoff@eve.fi', '', '', NULL, NULL, 'PASSPORT', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'female', '', '', '', NULL, '+358509172099', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-23'),
(216, '0216', NULL, 'Mr SARI MERILLAINEN', 'MERILLAINEN', '', 'sari.merilsinen@evl.fi', '', '', NULL, NULL, 'PASSPORT', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'female', '', '', '', NULL, '+358504616529', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-23'),
(217, '0217', NULL, 'Mr SARI MERILLAINEN', 'MERILLAINEN', '', 'sari.merilsinen@evl.fi', '', '', NULL, NULL, 'PASSPORT', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'female', '', '', '', NULL, '+358504616529', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-23'),
(218, '0218', NULL, 'Mr THOMAS MBAGA', 'MBAGA', '', 'thomaschor21@gmail..com', '', '', NULL, NULL, 'PASSPORT', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+255782172799', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-23'),
(219, '0219', NULL, 'Ms ANNA FREDRIKSSSON', 'FREDRIKSSSON', '', 'anna-lena.fredriksson@sprtak.gu.se', '', '', NULL, '073359971', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'female', '', '', '', NULL, '+46708816369', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-24'),
(220, '0220', NULL, 'Ms JOYCE MFINANGA', 'MFINANGA', '', '0655838820', '', '', NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'female', '', '', '', NULL, '+255655838820', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-24'),
(221, '0221', NULL, 'Mr VICTOR MFINANGA', 'MFINANGA', '', '0715887277', '', '', NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+255715887277', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-24'),
(222, '0222', NULL, 'Mr ELIBARIKI MSUYA', 'MSUYA', '', '0655254417', '', '', NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+255655254417', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-24'),
(223, '0223', NULL, 'Ms ZAIDA MSANGI', 'MSANGI', '', '0673557928', '', '', NULL, NULL, 'NIDA', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+255673557028', 'e10adc3949ba59abbe56e057f20f883e', -150000.00, NULL, NULL, '2022-10-24'),
(224, '0224', NULL, 'Mr DICKSON HYERA', 'HYERA', '', '0754265544', '', '', NULL, NULL, 'NIDA', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+255754265544', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-24'),
(225, '0225', NULL, 'Ms SAFIA MBAMBA', 'MBAMBA', '', 'safia.mbamba@pass.or.tz', '', '', NULL, NULL, 'DL', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+255762601051', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-24'),
(226, '0226', NULL, 'Mr BRAISON MSUGU', 'MSUGU', '', '0768014924', '', '', NULL, NULL, 'DL', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+255768014924', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-24'),
(227, '0227', NULL, 'Mr ANIE SWEDEN', 'SWEDEN', '', '0767906879', '', '', NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', NULL, '+255767906879', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-24'),
(228, '0228', NULL, 'Mr CLEMENCE CHANG`A', 'CHANG`A', '', 'clemencejohn@hotmail.com', '', '', NULL, NULL, 'DL', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', NULL, '+255752181707', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-24'),
(229, '0229', NULL, 'Mr DEODATUS SUNGA', 'SUNGA', '', 'deonga@um.dk', '', '', NULL, NULL, 'NIDA', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+255786432002', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-24'),
(230, '0230', NULL, 'Mr JULIUS MBWAMBO', 'MBWAMBO', '', 'julmbw@um.dk', '', '', NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+255716304282', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-24'),
(231, '0231', NULL, 'Ms JEMA NGWALE', 'NGWALE', '', 'Jemngwe@um.dk', '', '', NULL, NULL, 'vc', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'female', '', '', '', NULL, '+255767248453', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-24'),
(232, '0232', NULL, 'Mr NATE MSUYA', 'MSUYA', '', '0713104181', '', '', NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+255713164181', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-24'),
(233, '0233', NULL, 'Mr THOMAS MBAGA', 'MBAGA', '', 'thomaschor21@gmail .com', '', '', NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+255782172799', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-24'),
(234, '0234', NULL, 'Mr JIMMY MWANGANGI', 'MWANGANGI', '', 'JIMMY.MWANGANGI@ONEACREFUND.ORG', '', '', NULL, NULL, 'PASSPORT', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+254723533760', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-24'),
(235, '0235', NULL, 'Mr ANDREA  BIANCHI', 'BIANCHI', '', '', '', '', NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+255759581454', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-24'),
(236, '0236', NULL, 'Mr EMMANUEL MHIMBILA', 'MHIMBILA', '', '', '', '', NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+255752243928', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-24'),
(237, '0237', NULL, 'Mr REYMOND SCKWARZ', 'SCKWARZ', '', '0786075570', '', '', NULL, NULL, 'PASSPORT', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+255786075570', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-25'),
(238, '0238', NULL, 'Mr SALVATORE FEKRAWTE', 'FEKRAWTE', '', 'salvatore ferrant@hotmaid.com', '', '', NULL, NULL, 'passort', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+255000000000', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-25'),
(239, '0239', NULL, 'Mr FRANCIS SANGIWA', 'SANGIWA', '', '', 'DarEsSalaam', '', NULL, NULL, '', '', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, 'DarEsSalaam', 'male', '', '', '', NULL, '0712598599', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-25'),
(240, '0240', NULL, 'Ms TULLA MLOGE', 'MLOGE', '', '', '', '', NULL, NULL, '', '', '', '', 'SAGOT', '', NULL, NULL, NULL, NULL, NULL, '', 'female', '', '', '', NULL, '0755962765', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-25'),
(241, '0241', NULL, 'Ms GORETH MFUSE', 'MFUSE', '', '', 'DarEsSalaam', '', NULL, NULL, '', '', '', '', 'SAGOT', '00000', NULL, NULL, NULL, NULL, NULL, 'DarEsSalaam', 'female', '', '', '', NULL, '0755156477', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-25'),
(242, '0242', NULL, 'Ms NEEMA MOSHA', 'MOSHA', '', '', 'DarEsSalaam', '', NULL, NULL, '', '', '', '', 'GATSBY', '00000', NULL, NULL, NULL, NULL, NULL, 'DarEsSalaam', 'female', '', '', '', NULL, '0754202635', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-25'),
(243, '0243', NULL, 'Mr MBAZILA KANAMWANGI', 'KANAMWANGI', '', '', 'DarEsSalaam', '', NULL, NULL, 'NIDA', '', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, 'DarEsSalaam', 'male', '', '', '', NULL, '0767640753', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-25'),
(244, '0244', NULL, 'Mr DAVID KIGWILE', 'KIGWILE', '', '', 'DarEsSalaam', '', NULL, NULL, 'DL', '', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, 'DarEsSalaam', 'male', '', '', '', NULL, '0745000001', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-25'),
(245, '0245', NULL, 'Mr LUCAS THABITA', 'THABITA', '', '', 'DarEsSalaam', '', NULL, NULL, '', '', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, 'DarEsSalaam', 'male', '', '', '', NULL, '0784486595', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-25'),
(246, '0246', NULL, 'Mr CHRIS KONGA', 'KONGA', '', 'ckupovoto2022@gmail.com', 'DarEsSalaam', '', NULL, NULL, '', '', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, 'DarEsSalaam', 'male', '', '', '', NULL, '0789319788', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-26'),
(247, '0247', NULL, 'Mr JOHN SICILIMA', 'SICILIMA', '', '', '', '', NULL, NULL, 'DL', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '0713123984', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-26'),
(248, '0248', NULL, 'Mr WENG RONG', 'RONG', '', '', '', '', NULL, NULL, 'PERMIT', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+255779018888', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-26'),
(249, '0249', NULL, 'Mr BAKARI MCHILA', 'MCHILA', '', '', '', '', NULL, NULL, 'NIDA', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+255717153002', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-26'),
(250, '0250', NULL, 'Mr JONAS BALENGAYABO', 'BALENGAYABO', 'GERVAS', 'jonasgervas@gmail.com', '', '', NULL, NULL, 'LICENCE', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+255763891776', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-26'),
(251, '0251', NULL, 'Mr MIROSLAV HOMZA', 'HOMZA', '', '', '', '', NULL, NULL, 'PASSPORT', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '0754469854', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-26'),
(252, '0252', NULL, 'Mr JOHN ELIAS', 'ELIAS', '', '', '', '', NULL, NULL, 'PASSPORT', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '0743359971', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-26'),
(253, '0253', NULL, 'Mr PAVEL ZUREK', 'ZUREK', '', '', '', '', NULL, NULL, 'PASSPORT', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '0744257810', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-26'),
(254, '0254', NULL, 'Ms CATHERINE LYIMO', 'LYIMO', '', 'kattsolomoni@gmail.com', 'DarEsSalaam', '', NULL, NULL, '', '', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, 'DarEsSalaam', 'female', '', '', '', NULL, '0784245828', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-27'),
(255, '0255', NULL, 'Mr ANDERSON CHARLES', 'CHARLES', '', '', 'DarEsSalaam', '', NULL, NULL, '', '', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, 'DarEsSalaam', 'male', '', '', '', NULL, '0710903696', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-27'),
(256, '0256', NULL, 'Ms FRANSIA MUSHI', 'MUSHI', '', '', 'DarEsSalaam', '', NULL, NULL, 'VOTER\'S ID', '', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, 'DarEsSalaam', 'female', '', '', '', NULL, '0717684110', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-27'),
(257, '0257', NULL, 'Mr SAMWEL SANGA', 'SANGA', '', 'iringasunset@gmail.com', '', '', NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+2550754068331', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-27'),
(258, '0258', NULL, 'Mr SAANYA  Aemea', 'Aemea', '', 'iringasunset@gmail.com', '', '', NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+255784177688', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-27'),
(259, '0259', NULL, 'Mr ESTHER JOASH', 'JOASH', '', 'estherjoe88@gmail.com', '', '', NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'female', '', '', '', NULL, '+255769946259', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-27'),
(260, '0260', NULL, 'Ms XUE LEI', 'LEI', '', '@GMAIL.COM', '', '', NULL, NULL, 'PASSPORT', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'female', '', '', '', NULL, 'Tanzania0624507036', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-27'),
(261, '0261', NULL, 'Mr WERNER WASSERMANA', 'WASSERMANA', '', 'werner.wassermann@web.de', '', '', NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+4907859441645', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-27'),
(262, '0262', NULL, 'Mr MARGARETH HERETH', 'HERETH', '', '@GMAIL.COM', '', '', NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', NULL, '+4925736626725', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-27'),
(263, '0263', NULL, 'Mr ESTHER JOASH', 'JOASH', '', 'esterjoe88@gmail.com', '', '', NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'female', '', '', '', NULL, '+2550769946259', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-27'),
(264, '0264', NULL, 'Mr ABDUL AZIZ', 'AZIZ', '', '@GMAIL.COM', '', '', NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'female', '', '', '', NULL, 'Tanzania713405000', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-27'),
(265, '0265', NULL, 'Mr VITUS MFUGALE', 'MFUGALE', 'JOSEPH', '', '', '', NULL, NULL, 'PASSPORT', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '0767666653', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-28'),
(266, '0266', NULL, 'Mr VITUS MFUGALE', 'MFUGALE', 'JOSEPH', '', '', '', NULL, NULL, 'PASSPORT', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '0767666653', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-28'),
(267, '0267', NULL, 'Ms LIINA TARVAINEN', 'TARVAINEN', '', 'liina.tarvanen@formin.fi', '', '', NULL, NULL, 'PASSPORT', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'female', '', '', '', NULL, '0766423529', 'e10adc3949ba59abbe56e057f20f883e', 360000.00, NULL, NULL, '2022-10-30'),
(268, '0268', NULL, 'Mr JOSHUA MWAKALIKAMO', 'MWAKALIKAMO', '', 'joshua.mwakalikamo@gmail.com', 'DarEsSalaam', '', NULL, NULL, 'NIDA', '', '', '', 'ONE ACRE FUND', '00000', NULL, NULL, NULL, NULL, NULL, 'DarEsSalaam', 'male', '', '', '', NULL, '0716368040', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-30'),
(269, '0269', NULL, 'Mr ANDERSON KASIGA', 'KASIGA', '', '', '', '', NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '0754581532', 'e10adc3949ba59abbe56e057f20f883e', 360000.00, NULL, NULL, '2022-10-30'),
(270, '0270', NULL, 'Mr YUNUS HAMAD', 'HAMAD', '', 'yunus@gmail.com', '', '', NULL, NULL, '', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', NULL, '0620308527', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-11-01'),
(271, '0271', NULL, 'Mr ELISA KIKOTA', 'KIKOTA', '', '', '', '', NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '0658978732', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-30'),
(272, '0272', NULL, 'Mr JACKSON KIKOTA', 'KIKOTA', '', '', 'DarEsSalaam', '', NULL, NULL, '', '', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, 'DarEsSalaam', 'male', '', '', '', NULL, '0742202623', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-30'),
(273, '0273', NULL, 'Ms ABIGAEL', '', '', '', 'DarEsSalaam', '', NULL, NULL, '', '', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, 'DarEsSalaam', 'female', '', '', '', NULL, '0715347221', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-30'),
(274, '0274', NULL, 'Mr WILLIAM NAMBIZA', 'NAMBIZA', '', '', 'DarEsSalaam', '', NULL, NULL, '', '', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, 'DarEsSalaam', 'male', '', '', '', NULL, '0767919916', 'e10adc3949ba59abbe56e057f20f883e', 360000.00, NULL, NULL, '2022-10-30'),
(275, '0275', NULL, 'Ms JULIA DARCEY', 'DARCEY', '', 'julia.darcey@gmail.com', '', '', NULL, NULL, 'passport', '', '', '', 'ONE ACRE FUND', '', NULL, NULL, NULL, NULL, NULL, '', 'female', '', '', '', NULL, '0742367200', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-30'),
(276, '0276', NULL, 'Mr JIMMY MWANGANGI', 'MWANGANGI', '', '', '', '', NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '254723533760', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-30'),
(277, '0277', NULL, 'Ms JOAN CULLEN', 'CULLEN', '', 'joancullen53@gmail.com', '', '', NULL, NULL, 'PASSPORT', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'female', '', '', '', NULL, '+5976931817', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-31'),
(278, '0278', NULL, 'Mr ORGENES ERNES', 'ERNES', 'GEORGE', 'orgenes2013@gmail.com', '', '', NULL, NULL, 'NIDA', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+255655909000', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-31'),
(279, '0279', NULL, 'Mr ROGATH ADOLPH', 'ADOLPH', '', '', '', '', NULL, NULL, 'LICENCE', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', NULL, '+255621591342', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-31'),
(280, '0280', NULL, 'Mr NEIL MATHERS', 'MATHERS', '', 'neilmathers@hotmail.com', '', '', NULL, NULL, 'passport', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '0679240552', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-31'),
(281, '0281', NULL, 'Mr FRANCIS SANGIWA', 'SANGIWA', '', '', '', '', NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+255712598599', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-31'),
(282, '0282', NULL, 'Mr JOOP JOHANNES', 'JOHANNES', '', '', '', '', NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+255692603460', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-31'),
(283, '0283', NULL, 'Mr BERNARD VESTER', 'VESTER', '', '', '', '', NULL, NULL, 'PASSPORT', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+491716545417', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-31'),
(284, '0284', NULL, 'Mr STEPHEN MAKINYA', 'MAKINYA', '', 's.makinya@gmx.de', '', '', NULL, NULL, 'passport', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+491725288410', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-31'),
(285, '0285', NULL, 'Mr ISMAIL DIWANI', 'DIWANI', '', 'ismail@PRNGMINERALSLTD', '', '', NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+255655619616', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-10-31'),
(286, '0286', NULL, 'Mr Amar Hamad', 'Hamad', '', '', '', '', NULL, '0752676824', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+2550752676824', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-11-01'),
(287, '0287', NULL, 'Mr Tajmohammed Abas', 'Abas', '', 'a.taj@iera.org', '', '', NULL, '19891006141140000122', 'NIDA', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+2550688555666', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-11-01'),
(288, '0288', NULL, 'Mr OLIVER SCHULZE', 'SCHULZE', '', 'oliverc.schulze@web.de', '', '', NULL, NULL, 'passport', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '491723172468', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-11-01'),
(289, '0289', NULL, 'Mr JAFARI', '', '', '', 'DarEsSalaam', '', NULL, NULL, '', '', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, 'DarEsSalaam', 'male', '', '', '', NULL, '0658338844', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-11-01'),
(290, '0290', NULL, 'Mr NASIBU KANDURU', 'KANDURU', '', '', 'DarEsSalaam', '', NULL, NULL, '', '', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, 'DarEsSalaam', 'male', '', '', '', NULL, '0755666684', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-11-01'),
(291, '0291', NULL, 'Mr KIIZA', '', '', '', 'DarEsSalaam', '', NULL, NULL, '', '', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, 'DarEsSalaam', 'male', '', '', '', NULL, '0675820155', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-11-01'),
(292, '0292', NULL, 'Mr FELIX', '', 'IBRAHIM', 'felixibrahim02@gmai.com', 'DarEsSalaam', '', NULL, NULL, '', '', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, 'DarEsSalaam', 'male', '', '', '', NULL, '0753241403', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-11-01'),
(293, '0293', NULL, 'Mr ADAM OWANGE', 'OWANGE', '', '0718636740', '', '', NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+255718636740', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-11-02'),
(294, '0294', NULL, 'Mr ERICK KAGORO', 'KAGORO', '', 'erickag@gmail', '', '', NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', NULL, '+255626092016', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-11-02'),
(295, '0295', NULL, 'Mr SAMWELI KILUA', 'KILUA', '', 'samwelkilua@gatsbyafricatz', '', '', NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+255754649411', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-11-02'),
(296, '0296', NULL, 'Ms OLIVE LUENA', 'LUENA', '', 'sadanda@hotmail.com', '', '', NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'female', '', '', '', NULL, '+255000000000', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-11-02'),
(297, '0297', NULL, 'Mr TINO SCHAEFER', 'SCHAEFER', '', '', '', '', NULL, NULL, 'PASSPOT', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', NULL, '+491733460470', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-11-02'),
(298, '0298', NULL, 'Mr KYLE', '', '', 'kyle@riveroflfeaf.org', '', '', NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+3202671607', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-11-02'),
(299, '0299', NULL, 'Mr STEPHANIE HRKAI', 'HRKAI', '', 'stephanirhrkai@gmail.com', '', '', NULL, NULL, 'PASSPORT', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+7432403484', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-11-02'),
(300, '0300', NULL, 'Mr METTHEW REED', 'REED', '', 'METTETHIRTYSTORY.COM', '', '', NULL, NULL, 'PASSPORT', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+6512787936', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-11-02'),
(301, '0301', NULL, 'Mr LEVI SPANGRAD', 'SPANGRAD', '', '9526079058', '', '', NULL, NULL, 'PASSPORT', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', NULL, '+9526079058', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-11-02'),
(302, '0302', NULL, 'Mr STEVEN MAXWEL', 'MAXWEL', '', 'steven@homestendcc.org', '', '', NULL, NULL, 'passport', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', NULL, '+6127232226', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-11-02'),
(303, '0303', NULL, 'Mr MIKIDADI ', '', '', '0629046568', '', '', NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+255629046568', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-11-02'),
(304, '0304', NULL, 'Mr Jamal Sadik', 'Sadik', '', '', '', '', NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+2550754260135', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-11-02'),
(305, '0305', NULL, 'Mr Kedrick  Malila', 'Malila', '', 'kedrickmalila@gmail.com', '', '', NULL, NULL, 'NIDA', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'male', '', '', '', NULL, '+2550762709874', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-11-02'),
(306, '0306', NULL, 'Ms TRACY DOLAN', 'DOLAN', '', 'tracy3d@yahoo.com', '', '', NULL, NULL, 'passport', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', NULL, '+358503056338', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-11-03'),
(307, '0307', NULL, 'Ms WHITNEY BOCCO', 'BOCCO', '', '0745927401', '', '', NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', 'female', '', '', '', NULL, '+25573459227401', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2022-11-03'),
(308, '0308', NULL, 'Halima', 'Osman', NULL, 'theobaldbbm@matheostechs.com', 'House No.14 JWTZ Drive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0757040453', 'd41d8cd98f00b204e9800998ecf8427e', 0.00, NULL, NULL, '2024-07-23'),
(309, '0309', NULL, 'THEOBALD', 'BONAVENTURE', NULL, 'theobaldbbm@gmail.com', 'House No.14 JWTZ Drive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0757040453', 'd41d8cd98f00b204e9800998ecf8427e', 0.00, NULL, NULL, '2024-09-22'),
(310, '0310', NULL, 'THEOBALD', 'BONAVENTURE', NULL, 'theobaldbbm@matheostechs.com', 'House No.14 JWTZ Drive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0757040453', 'd41d8cd98f00b204e9800998ecf8427e', 0.00, NULL, NULL, '2024-09-22'),
(311, '0311', NULL, 'THEOBALD', 'BONAVENTURE', NULL, 'theobaldbbm@matheostechs.com', 'House No.14 JWTZ Drive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0757040453', 'd41d8cd98f00b204e9800998ecf8427e', 0.00, NULL, NULL, '2024-09-25'),
(312, '0312', NULL, 'THEOBALD', 'BONAVENTURE', NULL, 'theobaldbbm@matheostechs.com', 'House No.14 JWTZ Drive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0757040453', 'd41d8cd98f00b204e9800998ecf8427e', 0.00, NULL, NULL, '2024-09-25'),
(313, '0313', NULL, 'erick', 'trtrrttr', NULL, 'erett@GRBF.GG', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '435554666', 'd41d8cd98f00b204e9800998ecf8427e', 0.00, NULL, NULL, '2024-10-01'),
(314, '0314', NULL, 'THEOBALD', 'BONAVENTURE', NULL, 'theobaldbbm@matheostechs.com', 'House No.14 JWTZ Drive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0757040453', 'd41d8cd98f00b204e9800998ecf8427e', 0.00, NULL, NULL, '2024-10-01'),
(315, '0315', NULL, 'THEOBALD', 'BONAVENTURE', NULL, 'theobaldbbm@matheostechs.com', 'House No.14 JWTZ Drive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0757040453', 'd41d8cd98f00b204e9800998ecf8427e', 0.00, NULL, NULL, '2024-10-06'),
(316, '0316', NULL, 'THEOBALD', 'MALYA', NULL, 'theobaldbbm@matheostechs.com', 'House No.14 JWTZ Drive - Mwenge, Dar Es Salaam.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0757040453', 'd41d8cd98f00b204e9800998ecf8427e', 0.00, NULL, NULL, '2024-10-12'),
(317, '0317', NULL, 'THEOBALD', 'BONAVENTURE', NULL, 'theobaldbbm@matheostechs.com', 'House No.14 JWTZ Drive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0757040453', 'd41d8cd98f00b204e9800998ecf8427e', 0.00, NULL, NULL, '2024-10-14'),
(318, '0318', NULL, 'Frank', 'Galos', NULL, 'frankslayer1@gmail.com', 'Dar es salaam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0783993434', 'd41d8cd98f00b204e9800998ecf8427e', 0.00, NULL, NULL, '2024-10-14'),
(319, '0319', NULL, 'Frank', 'Galos', NULL, 'frankslayer1@gmail.com', 'Dar es salaam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0783993434', 'e10adc3949ba59abbe56e057f20f883e', 0.00, NULL, NULL, '2024-10-16'),
(320, '0320', NULL, 'Frank', 'Galos', NULL, 'frankslayer1@gmail.com', 'Dar es salaam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0783993434', 'd41d8cd98f00b204e9800998ecf8427e', 0.00, NULL, NULL, '2024-10-17'),
(321, '0321', NULL, 'Frank', 'Galos', NULL, 'frankslayer1@gmail.com', 'Dar es salaam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0783993434', 'd41d8cd98f00b204e9800998ecf8427e', 0.00, NULL, NULL, '2024-10-17'),
(322, '0322', NULL, 'Frank', 'Galos', NULL, 'frankslayer1@gmail.com', 'Dar es salaam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0783993434', 'd41d8cd98f00b204e9800998ecf8427e', 0.00, NULL, NULL, '2024-10-20'),
(323, '0323', NULL, 'Prisca', 'Mark', NULL, 'prisca@matheostechs.com', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '255624059005', 'fab695ea9f99df5a85c410a79edfa14a', 0.00, NULL, NULL, '2024-10-21'),
(324, '0324', NULL, 'Frank', 'Galos', NULL, 'frankslayer1@gmail.com', 'Dar es salaam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0783993434', 'd41d8cd98f00b204e9800998ecf8427e', 0.00, NULL, NULL, '2024-10-21'),
(325, '0325', NULL, 'Frank', 'Galos', NULL, 'frankslayer1@gmail.com', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '255743500123', 'd41d8cd98f00b204e9800998ecf8427e', 0.00, NULL, NULL, '2024-10-21'),
(326, '0326', NULL, 'Prisca', 'Mark', NULL, 'prisca@matheostechs.com', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '255624059005', 'e64b78fc3bc91bcbc7dc232ba8ec59e0', 0.00, NULL, NULL, '2024-10-22'),
(327, '0327', NULL, 'Frank', 'Galos', NULL, 'frankslayer1@gmail.com', 'Dar es salaam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '255783993434', 'd41d8cd98f00b204e9800998ecf8427e', 520.00, NULL, NULL, '2024-10-22'),
(328, '0328', NULL, 'uy09yf08y', 'ygpiyvp8i', NULL, 'jgoyg80@gtviyt.com', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '234567890789', 'd41d8cd98f00b204e9800998ecf8427e', 0.00, NULL, NULL, '2024-10-22'),
(329, '0329', NULL, 'MOHAMED', 'AYUBU', NULL, 'mohamed_chamshama@hotmail.com', 'Mapinga, Bagamoyo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0712494720', 'd41d8cd98f00b204e9800998ecf8427e', 0.00, NULL, NULL, '2024-11-02'),
(330, '0330', NULL, 'lonyori', 'maida', NULL, 'loonmaeda@gmail.com', 'Zanzibar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0677083532', 'd41d8cd98f00b204e9800998ecf8427e', 0.00, NULL, NULL, '2024-11-06'),
(331, '0331', NULL, 'THEOBALD', 'BONAVENTURE', NULL, 'theobaldbbm@matheostechs.com', 'House No.14 JWTZ Drive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0757040453', 'd41d8cd98f00b204e9800998ecf8427e', 0.00, NULL, NULL, '2024-11-06');

-- --------------------------------------------------------

--
-- Table structure for table `customer_order`
--

CREATE TABLE `customer_order` (
  `order_id` bigint(20) NOT NULL,
  `saleinvoice` varchar(100) NOT NULL,
  `marge_order_id` varchar(30) DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `cutomertype` int(11) NOT NULL,
  `isthirdparty` int(11) NOT NULL DEFAULT 0 COMMENT '0=normal,1>all Third Party',
  `thirdpartyinvoiceid` int(11) DEFAULT NULL,
  `waiter_id` int(11) DEFAULT NULL,
  `kitchen` int(11) DEFAULT NULL,
  `order_date` date NOT NULL,
  `order_time` time NOT NULL,
  `cookedtime` time NOT NULL DEFAULT '00:15:00',
  `table_no` int(11) DEFAULT NULL,
  `tokenno` varchar(30) DEFAULT NULL,
  `totalamount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `customerpaid` decimal(10,2) DEFAULT 0.00,
  `customer_note` text DEFAULT NULL,
  `anyreason` text DEFAULT NULL,
  `order_status` tinyint(1) NOT NULL COMMENT '1=Pending, 2=Processing, 3=Ready, 4=Served,5=Cancel',
  `nofification` int(11) NOT NULL DEFAULT 0 COMMENT '0=unseen,1=seen',
  `orderacceptreject` int(11) DEFAULT NULL,
  `splitpay_status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=no split,1=split',
  `isupdate` int(11) DEFAULT NULL,
  `shipping_date` datetime DEFAULT '1790-01-01 01:01:01',
  `tokenprint` int(11) NOT NULL DEFAULT 0 COMMENT '1=print done,0=not done'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_type`
--

CREATE TABLE `customer_type` (
  `customer_type_id` int(11) NOT NULL,
  `customer_type` varchar(100) NOT NULL,
  `ordering` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `customer_type`
--

INSERT INTO `customer_type` (`customer_type_id`, `customer_type`, `ordering`) VALUES
(1, 'Walk In Customer', 1),
(2, 'Online Customer', 1),
(3, 'Third Party', 0),
(4, 'Take Way', 0),
(5, 'QR Customer', 0),
(6, 'Hotel Customer', 1);

-- --------------------------------------------------------

--
-- Table structure for table `custom_table`
--

CREATE TABLE `custom_table` (
  `custom_id` int(11) NOT NULL,
  `custom_field` varchar(100) NOT NULL,
  `custom_data_type` int(11) NOT NULL,
  `custom_data` text NOT NULL,
  `employee_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `custom_table`
--

INSERT INTO `custom_table` (`custom_id`, `custom_field`, `custom_data_type`, `custom_data`, `employee_id`) VALUES
(9, 'Teacher Name', 2, 'Abdul Halim', 'EF6MQRAX'),
(12, 'Primary School', 1, 'Test Primary School', 'E4ZNFBIC'),
(13, 'High School Name', 2, 'Taker Hat High school', 'E4ZNFBIC'),
(14, 'Versity Name', 3, 'Nu', 'E4ZNFBIC'),
(15, 'Company Name', 1, 'Bdtask', 'ER6RJAY8'),
(16, 'House Name', 3, 'Shikder Bari', 'ER6RJAY8'),
(17, 'Person name', 2, 'Tuhin', 'ER6RJAY8'),
(21, 'customfield1', 1, 'custom value1', 'E0LHJ447'),
(22, 'dsfsdf', 1, 'sdfdsf', 'E0LHJ447'),
(23, 'dsfsd', 1, 'fdsfsdf', 'E0LHJ447'),
(24, '', 1, '', 'E0LHJ447'),
(25, '', 1, '', 'E0LHJ447'),
(34, 'isahadf', 1, '23424', 'ELPGMMRL'),
(35, 'dfsdf', 1, 'dfgdfg', 'ELPGMMRL'),
(36, 'hhh', 1, 'sdfsdf', 'ELPGMMRL'),
(37, 'fdfgdfg', 1, 'dfg', 'ELPGMMRL'),
(38, 'dfgdfg', 1, '', 'ELPGMMRL'),
(39, 'First isahaq', 1, 'sdfsdf', 'E4K0I0DA'),
(40, 'sdfsadf', 1, 'sdfsdf', 'EYOBEEFQ'),
(41, 'fsdfsadf', 1, '234234324', 'EHBEEFQQ'),
(43, 'My Mother', 1, 'Ma', 'E4Y9T7CJ'),
(44, 'rrrr', 2, '07-08-2018', 'E78PIKVA'),
(57, 'Chinese Cuisine', 1, 'coffee roastery located on a busy corner site in Farringdon\'s Exmouth Market. With glazed frontage on two sides ', 'EU3APTYY'),
(58, 'French Suicine', 1, 'coffee roastery located on a busy corner site in Farringdon\'s Exmouth Market. With glazed frontage on two sides ', 'EXL9WSCL'),
(59, 'Chinese Cuisine', 1, 'coffee roastery located on a busy corner site in Farringdon\'s Exmouth Market. With glazed frontage on two sides ', 'E3Y1WJMB'),
(60, 'Kitchen Lead', 1, 'coffee roastery located on a busy corner site in Farringdon\'s Exmouth Market. With glazed frontage on two sides ', 'EBK2UPRA');

-- --------------------------------------------------------

--
-- Table structure for table `dbt_blocklist`
--

CREATE TABLE `dbt_blocklist` (
  `id` bigint(20) NOT NULL,
  `ip_mail` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dbt_security`
--

CREATE TABLE `dbt_security` (
  `id` int(11) NOT NULL,
  `keyword` varchar(20) NOT NULL,
  `data` text NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `dept_id` int(11) NOT NULL,
  `department_name` varchar(100) NOT NULL,
  `parent_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dept_id`, `department_name`, `parent_id`) VALUES
(1, 'FRONT OFFICE', 0),
(2, 'FOOD AND BEVERAGE', 0),
(4, 'HOUSE KEEPING', 0),
(5, 'PROPERTY MANAGEMENT', 0),
(6, 'SECURITY', 0),
(7, 'HUMAN RESOURCE', 0),
(17, 'Maintainance', 5),
(18, 'WELLNESS', 0),
(19, 'SALES & MARKETING', 0),
(20, 'INVENTORY', 0),
(21, 'IT', 0),
(22, 'FINANCE', 0),
(23, 'PROCUREMENT', 0),
(26, 'Kitchen', 2),
(27, 'Service', 2),
(29, 'Beverage', 2),
(32, 'GYM/POOL', 18),
(33, 'SPA', 18),
(34, 'Gardening', 5),
(35, 'BOARD', 0),
(36, 'BUSINESS DEVELOPMENT', 0),
(37, 'GENERAL MANAGEMENT', 0),
(38, 'Store', 20);

-- --------------------------------------------------------

--
-- Table structure for table `duty_type`
--

CREATE TABLE `duty_type` (
  `id` int(11) NOT NULL,
  `type_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `duty_type`
--

INSERT INTO `duty_type` (`id`, `type_name`) VALUES
(1, 'Full Time'),
(2, 'Part Time'),
(3, 'Contructual'),
(4, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `email_config`
--

CREATE TABLE `email_config` (
  `email_config_id` int(11) NOT NULL,
  `smtp_host` varchar(200) DEFAULT NULL,
  `secure_image` varchar(50) DEFAULT NULL,
  `smtp_port` varchar(200) DEFAULT NULL,
  `smtp_password` varchar(200) DEFAULT NULL,
  `protocol` text NOT NULL,
  `mailpath` text NOT NULL,
  `mailtype` text NOT NULL,
  `sender` text NOT NULL,
  `api_key` varchar(250) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `email_config`
--

INSERT INTO `email_config` (`email_config_id`, `smtp_host`, `secure_image`, `smtp_port`, `smtp_password`, `protocol`, `mailpath`, `mailtype`, `sender`, `api_key`, `status`) VALUES
(1, 'ssl://smtp.googlemail.com', 'assets/img/2021-01-31/l1.png', '465 ', 'bdtask123', 'ssmtp', '/usr/sbin/sendmail', 'html', 'demo@gmail.com ', '22c4c92a-e5a8-4293-b64c-befc9248521e', 1);

-- --------------------------------------------------------

--
-- Table structure for table `employee_benifit`
--

CREATE TABLE `employee_benifit` (
  `id` int(11) NOT NULL,
  `bnf_cl_code` varchar(100) NOT NULL,
  `bnf_cl_code_des` varchar(250) NOT NULL,
  `bnff_acural_date` date NOT NULL,
  `bnf_status` tinyint(4) NOT NULL,
  `employee_id` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employee_history`
--

CREATE TABLE `employee_history` (
  `emp_his_id` int(11) NOT NULL,
  `employee_id` varchar(30) NOT NULL,
  `pos_id` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `middle_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(32) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `alter_phone` varchar(30) NOT NULL,
  `present_address` varchar(100) DEFAULT NULL,
  `parmanent_address` varchar(100) DEFAULT NULL,
  `picture` text DEFAULT NULL,
  `degree_name` varchar(30) DEFAULT NULL,
  `university_name` varchar(50) DEFAULT NULL,
  `cgp` varchar(30) DEFAULT NULL,
  `passing_year` varchar(30) DEFAULT NULL,
  `company_name` varchar(30) DEFAULT NULL,
  `working_period` varchar(30) DEFAULT NULL,
  `duties` varchar(30) DEFAULT NULL,
  `supervisor` varchar(30) DEFAULT NULL,
  `signature` text DEFAULT NULL,
  `is_admin` int(2) NOT NULL DEFAULT 0,
  `dept_id` int(11) DEFAULT NULL,
  `division_id` int(11) NOT NULL,
  `maiden_name` varchar(50) NOT NULL,
  `state` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `zip` int(11) NOT NULL,
  `citizenship` int(11) NOT NULL,
  `duty_type` int(11) NOT NULL,
  `hire_date` date NOT NULL,
  `original_hire_date` date NOT NULL,
  `termination_date` date NOT NULL,
  `termination_reason` text NOT NULL,
  `voluntary_termination` int(11) NOT NULL,
  `rehire_date` date NOT NULL,
  `rate_type` int(11) NOT NULL,
  `rate` float NOT NULL,
  `pay_frequency` int(11) NOT NULL,
  `pay_frequency_txt` varchar(50) NOT NULL,
  `hourly_rate2` float NOT NULL,
  `hourly_rate3` float NOT NULL,
  `home_department` varchar(100) NOT NULL,
  `department_text` varchar(100) NOT NULL,
  `class_code` varchar(50) NOT NULL,
  `class_code_desc` varchar(100) NOT NULL,
  `class_acc_date` date NOT NULL,
  `class_status` tinyint(4) NOT NULL,
  `is_super_visor` int(11) DEFAULT NULL,
  `super_visor_id` varchar(30) NOT NULL,
  `supervisor_report` text NOT NULL,
  `dob` date NOT NULL,
  `gender` int(11) NOT NULL,
  `country` varchar(120) DEFAULT NULL,
  `marital_status` int(11) NOT NULL,
  `ethnic_group` varchar(100) NOT NULL,
  `eeo_class_gp` varchar(100) NOT NULL,
  `ssn` varchar(50) NOT NULL,
  `work_in_state` int(11) NOT NULL,
  `live_in_state` int(11) NOT NULL,
  `home_email` varchar(50) NOT NULL,
  `business_email` varchar(50) NOT NULL,
  `home_phone` varchar(30) NOT NULL,
  `business_phone` varchar(30) NOT NULL,
  `cell_phone` varchar(30) NOT NULL,
  `emerg_contct` varchar(30) NOT NULL,
  `emrg_h_phone` varchar(30) NOT NULL,
  `emrg_w_phone` varchar(30) NOT NULL,
  `emgr_contct_relation` varchar(50) NOT NULL,
  `alt_em_contct` varchar(30) NOT NULL,
  `alt_emg_h_phone` varchar(30) NOT NULL,
  `alt_emg_w_phone` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employee_performance`
--

CREATE TABLE `employee_performance` (
  `emp_per_id` int(10) UNSIGNED NOT NULL,
  `employee_id` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `note` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `date` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `note_by` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `number_of_star` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `status` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `updated_by` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employee_salary_payment`
--

CREATE TABLE `employee_salary_payment` (
  `emp_sal_pay_id` int(10) UNSIGNED NOT NULL,
  `employee_id` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `total_salary` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `total_working_minutes` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `working_period` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `payment_due` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `payment_date` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `paid_by` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employee_salary_setup`
--

CREATE TABLE `employee_salary_setup` (
  `e_s_s_id` int(11) UNSIGNED NOT NULL,
  `employee_id` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `sal_type` varchar(30) NOT NULL,
  `salary_type_id` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `amount` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `create_date` date DEFAULT NULL,
  `update_date` datetime(6) DEFAULT NULL,
  `update_id` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `gross_salary` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employee_sal_pay_type`
--

CREATE TABLE `employee_sal_pay_type` (
  `emp_sal_pay_type_id` int(11) UNSIGNED NOT NULL,
  `payment_period` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emp_attendance`
--

CREATE TABLE `emp_attendance` (
  `att_id` int(10) UNSIGNED NOT NULL,
  `employee_id` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `date` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `sign_in` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `sign_out` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `staytime` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `foodvariable`
--

CREATE TABLE `foodvariable` (
  `availableID` int(11) NOT NULL,
  `foodid` int(11) NOT NULL,
  `availtime` varchar(50) NOT NULL,
  `availday` varchar(30) NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gender`
--

CREATE TABLE `gender` (
  `id` int(11) NOT NULL,
  `gender_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `gender`
--

INSERT INTO `gender` (`id`, `gender_name`) VALUES
(1, 'Male'),
(2, 'Female'),
(3, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `grand_loan`
--

CREATE TABLE `grand_loan` (
  `loan_id` int(11) NOT NULL,
  `employee_id` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `permission_by` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `loan_details` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `amount` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `interest_rate` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `installment` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `installment_period` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `repayment_amount` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `date_of_approve` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `repayment_start_date` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `created_by` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `updated_by` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `loan_status` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `item_category`
--

CREATE TABLE `item_category` (
  `CategoryID` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `CategoryImage` varchar(255) DEFAULT NULL,
  `Position` int(11) DEFAULT NULL,
  `CategoryIsActive` int(11) DEFAULT NULL,
  `offerstartdate` date DEFAULT '0000-00-00',
  `offerendate` date NOT NULL DEFAULT '0000-00-00',
  `isoffer` int(11) DEFAULT 0,
  `parentid` int(11) DEFAULT 0,
  `UserIDInserted` int(11) NOT NULL DEFAULT 0,
  `UserIDUpdated` int(11) NOT NULL DEFAULT 0,
  `UserIDLocked` int(11) NOT NULL DEFAULT 0,
  `DateInserted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DateUpdated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DateLocked` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `item_foods`
--

CREATE TABLE `item_foods` (
  `ProductsID` int(11) NOT NULL,
  `CategoryID` int(11) NOT NULL,
  `ProductName` varchar(255) DEFAULT NULL,
  `ProductImage` varchar(200) DEFAULT NULL,
  `bigthumb` varchar(255) NOT NULL,
  `medium_thumb` varchar(255) NOT NULL,
  `small_thumb` varchar(255) NOT NULL,
  `component` text DEFAULT NULL,
  `descrip` text DEFAULT NULL,
  `itemnotes` varchar(255) DEFAULT NULL,
  `menutype` varchar(25) DEFAULT NULL,
  `productvat` int(11) DEFAULT 0,
  `special` int(11) NOT NULL DEFAULT 0,
  `OffersRate` int(11) NOT NULL DEFAULT 0 COMMENT '1=offer rate',
  `offerIsavailable` int(11) NOT NULL DEFAULT 0 COMMENT '1=offer available,0=No Offer',
  `offerstartdate` date DEFAULT '0000-00-00',
  `offerendate` date DEFAULT '0000-00-00',
  `Position` int(11) DEFAULT NULL,
  `kitchenid` int(11) NOT NULL,
  `isgroup` int(11) DEFAULT NULL,
  `is_customqty` int(11) DEFAULT 0,
  `cookedtime` time NOT NULL DEFAULT '00:00:00',
  `ProductsIsActive` int(11) DEFAULT NULL,
  `UserIDInserted` int(11) NOT NULL DEFAULT 0,
  `UserIDUpdated` int(11) NOT NULL DEFAULT 0,
  `UserIDLocked` int(11) NOT NULL DEFAULT 0,
  `DateInserted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DateUpdated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DateLocked` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tax0` text DEFAULT NULL,
  `tax1` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_advertisement`
--

CREATE TABLE `job_advertisement` (
  `job_adv_id` int(10) UNSIGNED NOT NULL,
  `pos_id` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `adv_circular_date` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `circular_dadeline` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `adv_file` tinytext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `adv_details` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `id` int(11) NOT NULL,
  `phrase` varchar(100) NOT NULL,
  `english` varchar(255) NOT NULL,
  `malay` text DEFAULT NULL,
  `french` text DEFAULT NULL,
  `german` text DEFAULT NULL,
  `spanish` text DEFAULT NULL,
  `turkish` text DEFAULT NULL,
  `hindi` text DEFAULT NULL,
  `swahili` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`id`, `phrase`, `english`, `malay`, `french`, `german`, `spanish`, `turkish`, `hindi`, `swahili`) VALUES
(1, 'email', 'Email', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'password', 'Password', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'login', 'Log In', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'logout', 'Logout', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'setting', 'Setting', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'profile', 'My Profile', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'dashboard', 'Dashboard', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'role_permission', 'Role Permission', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'permission_setup', 'Permission Setup', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'add_role', 'Assign Role To User', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'role_list', 'Role List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'user_access_role', 'User Access Role List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'add_module_permission', 'Add Module Permission', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'module_permission_list', 'Module Permission List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'language', 'Language', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'application_setting', 'Application Setting', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'message', 'Message', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'new', 'New', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'inbox', 'inbox', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'sent', 'Sent', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'user', 'User', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'add_user', 'Add User', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'user_list', 'User List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'reset', 'Reset', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'save', 'Save', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'status', 'Status', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'lastname', 'Last Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 'firstname', 'First Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'about', 'MAC & JAK GETAWAY', NULL, NULL, NULL, 'Sobre', NULL, NULL, NULL),
(30, 'save_successfully', 'Save Successfully', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 'please_try_again', 'Please Try Again Later!!!', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 'update_successfully', 'Successfully Updated', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 'admin', 'Admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 'are_you_sure', 'Are you sure ?', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 'sl_no', 'SL', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 'image', 'Image', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 'username', 'Username', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 'last_login', 'Last Login', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 'last_logout', 'Last Logout', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 'ip_address', 'Ip Address', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 'action', 'Action', NULL, NULL, NULL, '', NULL, NULL, NULL),
(42, 'menu_item_list', ' Menu Item List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 'ins_menu_for_application', 'Ins Menu For Application', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 'menu_title', ' Menu Title', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 'page_url', 'Page Url', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 'module', ' Module', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 'parent_menu', 'Parent Menu', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 'role_name', 'Role Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 'description', 'Description', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 'role', 'Role', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, 'add', 'Address', NULL, NULL, NULL, '', NULL, NULL, NULL),
(52, 'update', 'Update', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, 'application_title', 'Application Title', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, 'address', 'Address', NULL, NULL, NULL, '', NULL, NULL, NULL),
(55, 'phone', 'Phone', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, 'favicon', 'Favicon', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 'logo', 'Logo', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, 'site_align', 'Application Alignment', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, 'footer_text', 'Footer Text', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, 'left_to_right', 'Left To Right', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, 'right_to_left', 'Right To Left', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, 'room_facilities', 'Room Facilities', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, 'faciliti_list', 'Facility List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, 'faciliti_details_list', 'Facility Details List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, 'roomsize_list', 'Room Size List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, 'add_facility_type', 'Add Facility Type', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, 'add_facility_details', 'Add Facility Details', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(69, 'facility_name', 'Facility Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, 'facility_details_name', 'Facility Details Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, 'roomsize_name', 'Room Size Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, 'ad', 'Add', NULL, NULL, NULL, '', NULL, NULL, NULL),
(73, 'add_new', 'Add New', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(74, 'delete_successfully', 'Delete successfully completed', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(75, 'room_size', 'Room Size', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(76, 'room_setting', 'Room Setting', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, 'bed_list', 'Bed List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(78, 'starclass_list', 'Star Class List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(79, 'room_list', 'Room List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(80, 'addnew_bed', 'Add New Bed', NULL, NULL, NULL, '', NULL, NULL, NULL),
(81, 'bed_name', 'Bed Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(82, 'add_class', 'Add Class', NULL, NULL, NULL, '', NULL, NULL, NULL),
(83, 'class_name', 'Class Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(84, 'bookingtype_list', 'Booking Type List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(85, 'booking_type', 'Booking Type', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(86, 'rateplan_list', 'Rate Plan List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(87, 'rateplan_name', 'Rate Plan Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(88, 'capacity', 'Capacity', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(89, 'defaultrate', 'Rate', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(90, 'special_rate', 'Special Rate', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(91, 'discount', 'Discount', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(92, 'bookingtype', 'Booking Type', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(93, 'breakfast', 'Breakfast', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(94, 'roomtype', 'Room Type', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(95, 'roomsize', 'Room Size', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(96, 'size_unit', 'Size Unit', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(97, 'bedsno', 'Bed No.', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(98, 'bedstype', 'Bed Type', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(99, 'roomdescription', 'Room Drescription', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(100, 'room_name', 'Room Type', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(101, 'room_image', 'Room Images', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(102, 'room_booking', 'Room Booking', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(103, 'booking_list', 'Booking List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(104, 'room_reservation', 'Room Reservation', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(105, 'accounts', 'Account', NULL, NULL, NULL, 'Contas', NULL, NULL, NULL),
(106, 'c_o_a', 'Chart of Account', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(107, 'debit_voucher', 'Debit Voucher', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(108, 'credit_voucher', 'Credit Voucher', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(109, 'contra_voucher', 'Contra Voucher', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(110, 'journal_voucher', 'Journal Voucher', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(111, 'voucher_approval', 'Voucher Approval', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(112, 'account_report', 'Account Report', NULL, NULL, NULL, '', NULL, NULL, NULL),
(113, 'voucher_report', 'Voucher Report', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(114, 'cash_book', 'Cash Book', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(115, 'bank_book', 'Bank Book', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(116, 'general_ledger', 'General Ledger', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(117, 'trial_balance', 'Trial Balance', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(118, 'profit_loss', 'Profit Loss', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(119, 'cash_flow', 'Cash Flow', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(120, 'coa_print', 'Coa Print', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(121, 'in_quantity', 'In Qnty', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(122, 'out_quantity', 'Out Qnty', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(123, 'stock', 'Stock', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(124, 'find', 'Find', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(125, 'from_date', 'From Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(126, 'to_date', 'To Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(127, 'approved', 'Approved', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(128, 'voucher_no', 'Voucher No', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(129, 'remark', 'Remark', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(130, 'code', 'Code', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(131, 'debit', 'Debit', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(132, 'credit', 'Credit', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(133, 'from', 'From', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(134, 'opening_cash_and_equivalent', 'Opening Cash && Equivalent', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(135, 'amount_in_Dollar', 'Amount In Dollar', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(136, 'pre_balance', 'Pre Balance', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(137, 'current_balance', 'Current Balance', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(138, 'with_details', 'With Details', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(139, 'credit_account_head', 'Credit Account Head', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(140, 'gl_head', 'GL Head', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(141, 'transaction_head', 'Transaction Head', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(142, 'confirm', 'Confirm', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(143, 's_rate', 'Rate', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(144, 'save', 'Save', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(145, 'add_more', 'Add More', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(146, 'total', 'Total', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(147, 'create', 'Create', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(148, 'read', 'Read', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(149, 'update', 'Update', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(150, 'delete', 'Delete', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(151, 'date', 'Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(152, 'notice_by', 'Notice By', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(153, 'notice_attachment', 'Attachment', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(154, 'account_name', 'Account Name', NULL, NULL, NULL, 'Nome da Conta', NULL, NULL, NULL),
(155, 'account_type', 'Account Type', NULL, NULL, NULL, '', NULL, NULL, NULL),
(156, 'account_id', 'Account Name', NULL, NULL, NULL, 'Id da Conta', NULL, NULL, NULL),
(157, 'amount', 'Total Amount', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(158, 'debit_account_head', 'Debit Account Head', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(159, 'booking_number', 'Booking Number', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(160, 'check_in', 'Check In', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(161, 'check_out', 'Check Out', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(162, 'booking_date', 'Booking Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(163, 'booking_status', 'Booking Status', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(164, 'adults', 'Adults', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(165, 'kids', 'Kids', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(166, 'guest', 'Guest Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(167, 'no_of_people', 'No of People', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(168, 'grant', 'Grant', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(169, 'hrm', 'Human Resource', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(170, 'departmentfrm', 'Add Department', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(180, 'benefits', 'Benefits', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(181, 'class', 'Class', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(182, 'biographical_info', 'Biographical Info', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(183, 'additional_address', 'Additional Address', NULL, NULL, NULL, '', NULL, NULL, NULL),
(184, 'custom', 'Custom', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(185, 'employee_reports', 'Employee Reports', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(186, 'demographic_report', 'Demographic Report', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(187, 'posting_report', 'Positional Report', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(188, 'custom_report', 'Custom Report', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(189, 'benifit_report', 'Benifit Report', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(190, 'demographic_info', 'Demographical Information', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(191, 'positional_info', 'Positional Info', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(192, 'assets_info', 'Assets Information', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(193, 'custom_field', 'Custom Field', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(194, 'custom_value', 'Custom Data', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(195, 'adhoc_report', 'Adhoc Report', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(196, 'asset_assignment', 'Asset Assignment', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(197, 'assign_asset', 'Assign Assets', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(198, 'assign_list', 'Assign List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(199, 'update_assign', 'Update Assign', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(200, 'citizenship', 'Citizenship', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(201, 'class_sta', 'Class status', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(202, 'class_acc_date', 'Class Accrual date', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(203, 'class_descript', 'Class Description', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(204, 'class_code', 'Class Code', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(205, 'return_asset', 'Return Assets', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(206, 'dept_id', 'Department ID', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(207, 'parent_id', 'Parent ID', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(208, 'equipment_id', 'Equipment ID', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(209, 'issue_date', 'Issue Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(210, 'damarage_desc', 'Damarage Description', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(211, 'return_date', 'Return Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(212, 'is_assign', 'Is Assign', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(213, 'emp_his_id', 'Employee History ID', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(214, 'damarage_descript', 'Damage Description', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(215, 'award', 'Award', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(216, 'new_award', 'New Award', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(217, 'award_name', 'Award Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(218, 'aw_description', 'Award Description', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(219, 'awr_gift_item', 'Gift Item', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(220, 'awarded_by', 'Award By', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(221, 'employee_name', 'Employee Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(222, 'employee_list', 'Atn List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(223, 'department', 'Department', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(224, 'department_name', 'Department Name ', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(225, 'clockout', 'ClockOut', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(226, 'se_account_id', 'Select Account Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(227, 'division', 'Division', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(228, 'add_division', 'Add Division', NULL, NULL, NULL, '', NULL, NULL, NULL),
(229, 'update_division', 'Update Division', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(230, 'division_name', 'Division Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(231, 'division_list', 'Manage Division ', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(232, 'designation_list', 'Position List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(233, 'manage_designation', 'Manage Position', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(234, 'add_designation', 'Add Positionn', NULL, NULL, NULL, '', NULL, NULL, NULL),
(235, 'select_division', 'Select Division', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(236, 'select_designation', 'Select Position', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(237, 'asset', 'Asset', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(238, 'asset_type', 'Asset Type', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(239, 'add_type', 'Add Type', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(240, 'type_list', 'Type List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(242, 'select_type', 'Select Type', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(243, 'equipment_name', 'Equipment Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(244, 'model', 'Model', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(245, 'serial_no', 'Serial No', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(246, 'equipment', 'Equipment', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(247, 'add_equipment', 'Add Equipment', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(248, 'equipment_list', 'Equipment List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(249, 'type', 'Type', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(250, 'equipment_maping', 'Equipment Mapping', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(251, 'add_maping', 'Add Mapping', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(252, 'maping_list', 'Mapping List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(253, 'update_equipment', 'Update Equipment', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(254, 'select_employee', 'Select Employee', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(255, 'select_equipment', 'Select Equipment', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(256, 'basic_info', 'Basic Information', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(257, 'middle_name', 'Middle Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(258, 'state', 'State', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(259, 'city', 'City', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(260, 'zip_code', 'Zip Code', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(261, 'maiden_name', 'Maiden Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(262, 'add_employee', 'Add Employee', NULL, NULL, NULL, '', NULL, NULL, NULL),
(263, 'manage_employee', 'Manage Employee', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(264, 'employee_update_form', 'Employee Update', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(265, 'what_you_search', 'Search Employee', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(266, 'search', 'Search', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(267, 'duty_type', 'Duty Type', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(268, 'hire_date', 'Hire Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(269, 'original_h_date', 'Original Hire Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(270, 'voluntary_termination', 'Voluntary Termination', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(271, 'termination_reason', 'Termination Reason', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(272, 'termination_date', 'Termination Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(273, 're_hire_date', 'Re Hire Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(274, 'rate_type', 'Rate Type', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(275, 'pay_frequency', 'Pay Frequency', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(276, 'pay_frequency_txt', 'Pay Frequency Text', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(277, 'hourly_rate2', 'Hourly rate2', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(278, 'hourly_rate3', 'Hourly Rate3', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(279, 'home_department', 'Home Department', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(280, 'department_text', 'Department Text', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(281, 'benifit_class_code', 'Benifite Class code', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(282, 'benifit_desc', 'Benifit Description', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(283, 'benifit_acc_date', 'Benifit Accrual Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(284, 'benifit_sta', 'Benifite Status', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(285, 'super_visor_name', 'Supervisor Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(286, 'is_super_visor', 'Is Supervisor', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(287, 'supervisor_report', 'Supervisor Report', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(288, 'dob', 'Date of Birth', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(289, 'gender', 'Gender', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(290, 'marital_stats', 'Marital Status', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(291, 'ethnic_group', 'Ethnic Group', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(292, 'eeo_class_gp', 'EEO Class', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(293, 'ssn', 'SSN', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(294, 'work_in_state', 'Work in State', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(295, 'live_in_state', 'Live in State', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(296, 'home_email', 'Home Email', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(297, 'business_email', 'Business Email', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(298, 'home_phone', 'Home Phone', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(299, 'business_phone', 'Business Phone', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(300, 'cell_phone', 'Cell Phone', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(301, 'emerg_contct', 'Emergency Contact', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(302, 'emerg_home_phone', 'Emergency Home Phone', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(304, 'emrg_w_phone', 'Emergency Work Phone', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(305, 'emer_con_rela', 'Emergency Contact Relation', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(306, 'alt_em_contct', 'Alter Emergency Contact', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(307, 'alt_emg_h_phone', 'Alt Emergency Home Phone', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(308, 'alt_emg_w_phone', 'Alt Emergency  Work Phone', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(309, 'reports', 'Reports', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(310, 'view_atn', 'Attendance', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(311, 'mang', 'Employemanagement', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(312, 'designation', 'Position', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(313, 'practice', 'Practice', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(314, 'branch_name', 'Branch Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(315, 'chairman_name', 'Chairman', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(316, 'b_photo', 'Photo', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(317, 'b_address', 'Address', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(318, 'position', 'Position', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(319, 'advertisement', 'Advertisement', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(320, 'position_name', 'Position', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(321, 'position_details', 'Details', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(322, 'circularprocess', 'Recruitment', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(323, 'pos_id', 'Position', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(324, 'adv_circular_date', 'Publish Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(325, 'circular_dadeline', 'Dadeline', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(326, 'adv_file', 'Documents', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(327, 'adv_details', 'Details', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(328, 'attendance', 'Attendance', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(329, 'employee', 'Employee', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(330, 'emp_id', 'Employee Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(332, 'sign_out', 'Sign Out', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(333, 'staytime', 'Stay Time', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(334, 'abc', '1', NULL, NULL, NULL, '', NULL, NULL, NULL),
(335, 'first_name', 'First Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(336, 'last_name', 'Last Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(337, 'alter_phone', 'Alternative Phone', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(338, 'present_address', 'Present Address', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(339, 'parmanent_address', 'Permanent Address', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(340, 'candidateinfo', 'Candidate Info', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(341, 'add_advertisement', 'Add Advertisement', NULL, NULL, NULL, '', NULL, NULL, NULL),
(342, 'advertisement_list', 'Manage Advertisement ', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(343, 'candidate_basic_info', 'Candidate Information', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(344, 'can_basicinfo_list', 'Manage Candidate', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(345, 'add_canbasic_info', 'New Candidate', NULL, NULL, NULL, '', NULL, NULL, NULL),
(346, 'candidate_education_info', 'Candidate Educational Info', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(347, 'can_educationinfo_list', 'Candidate Edu Info list', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(348, 'add_edu_info', 'Add Educational Info', NULL, NULL, NULL, '', NULL, NULL, NULL),
(349, 'can_id', 'Candidate Id', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(350, 'degree_name', 'Obtained Degree', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(351, 'university_name', 'University', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(352, 'cgp', 'CGPA', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(353, 'comments', 'Comments', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(354, 'signature', 'Signature', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(355, 'candidate_workexperience', 'Candidate Work Experience', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(356, 'can_workexperience_list', 'Work Experience list', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(357, 'add_can_experience', 'Add Work Experience', NULL, NULL, NULL, '', NULL, NULL, NULL),
(358, 'company_name', 'Company Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(359, 'working_period', 'Working Period', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(360, 'duties', 'Duties', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(361, 'supervisor', 'Supervisor', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(362, 'candidate_workexpe', 'Candidate Work Experience', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(363, 'candidate_shortlist', 'Candidate Shortlist', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(364, 'shortlist_view', 'Manage Shortlist', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(365, 'add_shortlist', 'Add Shortlist', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(366, 'date_of_shortlist', 'Shortlist Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(367, 'interview_date', 'Interview Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(368, 'submit', 'Submit', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(369, 'candidate_id', 'Your ID', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(370, 'job_adv_id', 'Job Position', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(371, 'sequence', 'Sequence', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(372, 'candidate_interview', 'Interview', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(373, 'interview_list', 'Interview list', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(374, 'add_interview', 'Add Interview', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(375, 'interviewer_id', 'Interviewer', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(376, 'interview_marks', 'Viva Marks', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(377, 'written_total_marks', 'Written Total Marks', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(378, 'mcq_total_marks', 'MCQ Total Marks', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(379, 'recommandation', 'Recommandation', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(380, 'selection', 'Selection', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(381, 'details', 'Details', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(382, 'candidate_selection', 'Candidate Selection', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(383, 'selection_list', 'Selection List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(384, 'add_selection', 'Add Selection', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(385, 'employee_id', 'Employee Id', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(386, 'position_id', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(387, 'selection_terms', 'Selection Terms', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(388, 'total_marks', 'Total Marks', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(389, 'photo', 'Picture', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(390, 'your_id', 'Your ID', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(391, 'change_image', 'Change Photo', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(392, 'picture', 'Photograph', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(393, 'ad', 'Add', NULL, NULL, NULL, '', NULL, NULL, NULL),
(394, 'write_y_p_info', 'Write Your Persoanal Information', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(395, 'emp_position', 'Employee Position', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(396, 'add_pos', 'Add Position', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(397, 'list_pos', 'List of Position', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(398, 'emp_salary_stup', 'Employee Salary SetUp', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(399, 'add_salary_stup', 'Add Salary Setup', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(400, 'list_salarystup', 'List of Salary Setup', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(401, 'employee', 'Employee', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(402, 'emp_sal_name', 'Salary Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(403, 'emp_sal_type', 'Salary Type', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(404, 'emp_performance', 'Employee Performance', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(405, 'add_performance', 'Add Performance', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(406, 'list_performance', 'List of Performance', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(407, 'note', 'Note', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(408, 'note_by', 'Note By', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(409, 'number_of_star', 'Number of Star', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(410, 'updated_by', 'Updated By', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(411, 'emp_sal_payment', 'Manage Employee Salary', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(412, 'add_payment', 'Add Payment', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(413, 'list_payment', 'List of payment', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(414, 'total_salary', 'Total Salary', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(415, 'total_working_minutes', 'Working Hour', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(416, 'payment_due', 'Payment Type', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(417, 'payment_date', 'Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(418, 'paid_by', 'Paid By', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(419, 'view_employee_payment', 'Employee Payment List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(420, 'sal_payment_type', 'Salary Payment Type', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(421, 'add_payment_type', 'Add Payment Type', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(422, 'list_payment_type', 'List of Payment Type', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(423, 'payment_period', 'Payment Period', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(424, 'payment_type', 'Payment Type', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(425, 'time', 'Punch Time', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(426, 'shift', 'Shift', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(427, 'location', 'Location', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(428, 'logtype', 'Log Type', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(429, 'branch', 'Location', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(430, 'student', 'Students', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(432, 'save_successfull', 'Your Data Save Successfully', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(433, 'successfully_updated', 'Your Data Successfully Updated', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(434, 'atn_form', 'Attendance', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(435, 'atn_report', 'Attendance Reports', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(436, 'end_date', 'To', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(437, 'start_date', 'From', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(438, 'done', 'Done', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(439, 'employee_id_se', 'Write Employee Id or name here ', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(440, 'attendance_repor', 'Attendance Report', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(441, 'e_time', 'End Time', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(442, 's_time', 'Start Time', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(443, 'atn_datewiserer', 'Date Wise Report', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(444, 'atn_report_id', 'Date And Id base Report', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(445, 'atn_report_time', 'Date And Time report', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(446, 'payroll', 'Payroll', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(447, 'loan', 'Loan', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(448, 'loan_grand', 'Grant Loan', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(449, 'add_loan', 'Add Loan', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(450, 'loan_list', 'List of Loan', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(451, 'loan_details', 'Loan Details', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(452, 'amount', 'Total Amount', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(453, 'interest_rate', 'Interest Percentage', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(454, 'installment_period', 'Installment Period', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(455, 'repayment_amount', 'Repayment Total', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(456, 'date_of_approve', 'Approve Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(457, 'repayment_start_date', 'Repayment From', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(458, 'permission_by', 'Permitted By', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(459, 'grand', 'Grand', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(460, 'installment', 'Installment', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(461, 'loan_status', 'Status', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(462, 'installment_period_m', 'Installment Period in Month', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(463, 'successfully_inserted', 'Your loan Successfully Granted', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(464, 'loan_installment', 'Loan Installment', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(465, 'add_installment', 'Add Installment', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(466, 'installment_list', 'List of Installment', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(467, 'loan_id', 'Loan No', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(468, 'installment_amount', 'Installment Amount', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(469, 'payment', 'Payment', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(470, 'received_by', 'Receiver', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(471, 'installment_no', 'Install No', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(472, 'notes', 'Notes', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(473, 'paid', 'Paid', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(474, 'loan_report', 'Loan Report', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(475, 'e_r_id', 'Enter Your Employee ID', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(476, 'leave', 'Leave', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(477, 'add_leave', 'Add Leave', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(478, 'list_leave', 'List of Leave', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(479, 'dayname', 'Weekly Leave Day', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(480, 'holiday', 'Holiday', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(481, 'list_holiday', 'List of Holidays', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(482, 'no_of_days', 'Number of Days', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(483, 'holiday_name', 'Holiday Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(484, 'set', 'SET', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(485, 'tax', 'Tax', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(486, 'tax_setup', 'Tax Setup', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(487, 'add_tax_setup', 'Add Tax Setup', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(488, 'list_tax_setup', 'List of Tax setup', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(489, 'tax_collection', 'Tax collection', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(490, 'start_amount', 'Start Amount', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(491, 'end_amount', 'End Amount', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(492, 'rate', 'Tax Rate', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(493, 'date_start', 'Date Start', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(494, 'amount_tax', 'Tax Amount', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(495, 'collection_by', 'Collection By', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(496, 'date_end', 'Date End', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(497, 'income_net_period', 'Income  Net period', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(498, 'default_amount', 'Default Amount', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(499, 'add_sal_type', 'Add Salary Type', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(500, 'list_sal_type', 'Salary Type List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(501, 'salary_type_setup', 'Salary Type Setup', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(502, 'salary_setup', 'Salary SetUp', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(503, 'add_sal_setup', 'Add Salary Setup', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(504, 'list_sal_setup', 'Salary Setup List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(505, 'salary_type_id', 'Salary Type', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(506, 'salary_generate', 'Salary Generate', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(507, 'add_sal_generate', 'Generate Now', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(508, 'list_sal_generate', 'Generated Salary List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(509, 'gdate', 'Generate Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(510, 'start_dates', 'Start Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(511, 'generate', 'Generate ', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(512, 'successfully_saved_saletup', ' Set up Successfull', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(513, 's_date', 'Start Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(514, 'e_date', 'End Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(515, 'salary_payable', 'Payable Salary', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(516, 'tax_manager', 'Tax', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(517, 'generate_by', 'Generate By', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(518, 'successfully_paid', 'Successfully Paid', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(519, 'direct_empl', ' Employee', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(520, 'add_emp_info', 'Add New Employee', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(521, 'new_empl_pos', 'Add New Employee Position', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(522, 'manage', 'Manage Position', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(523, 'ad_advertisement', 'ADD POSITION', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(524, 'moduless', 'Modules', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(525, 'next', 'Next', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(526, 'finish', 'Finish', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(527, 'request', 'Request', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(528, 'successfully_saved', 'Your Data Successfully Saved', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(529, 'sal_type', 'Salary Type', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(530, 'sal_name', 'Salary Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(531, 'leave_application', 'Leave Application', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(532, 'apply_strt_date', 'Application Start Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(533, 'apply_end_date', 'Application End date', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(534, 'leave_aprv_strt_date', 'Approve Start Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(535, 'leave_aprv_end_date', 'Approved End Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(536, 'num_aprv_day', 'Aproved Day', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(537, 'reason', 'Reason', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(538, 'approve_date', 'Approved Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(539, 'leave_type', 'Leave Type', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(540, 'apply_hard_copy', 'Application Hard Copy', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(541, 'approved_by', 'Approved By', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(542, 'notice', 'Notice Board', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(543, 'noticeboard', 'Notice Board', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(544, 'notice_descriptiion', 'Description', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(545, 'notice_date', 'Notice Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(546, 'notice_type', 'Notice Type', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(547, 'notice_by', 'Notice By', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(548, 'notice_attachment', 'Attachment', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(549, 'attendance_list', 'Attendance List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(550, 'checkin', 'Check In', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(551, 'checkout', 'Check Out', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(552, 'stay', 'Stay', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(553, 'sl', 'SL', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(554, 'name', 'Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(556, 'id', 'ID', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(557, 'single_checkin', 'Single Check In', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(558, 'bulk_checkin', 'Bulk Check In', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(559, 'manage_attendance', 'Manage Attendance', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(560, 'update_attendance', 'Attendnece Update', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(561, 'add_attendance', 'Add Attendance', NULL, NULL, NULL, '', NULL, NULL, NULL),
(562, 'report_view', 'Report', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(563, 'attendance_report', 'Attendance Report', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(564, 'manage_award', 'Manage Award', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(565, 'add_new_award', 'Add New Award', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(566, 'educational_information', 'Educational Information', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(567, 'past_experience', 'Past Experience', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(568, 'basic_information', 'Basic Information', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(569, 'manage_shortlist', 'Manage Short List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(570, 'manage_selection', 'Manage Selection', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(571, 'manage_interview', 'Manage Interview', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(572, 'add_new_dept', 'Add New Department', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(573, 'manage_dept', 'Manage Department', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(574, 'weekly_holiday', 'Weekly Holiday', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(575, 'manage_holiday', 'Manage Holiday', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(576, 'add_more_holiday', 'Add More Holiday', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(577, 'add_leave_type', 'Add Leave Type', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(578, 'others_leave_application', 'Add Leave', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(579, 'add_leave_type', 'Add Leave Type', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(580, 'others_leave', 'Apply Leave', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(581, 'manage_application', 'Manage Application', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(582, 'manage_granted_loan', 'Manage Granted Loan', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(583, 'grant_loan', 'Grant Loan', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(584, 'add_salary_setup', 'Add Salary Setup', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(585, 'manage_salary_setup', 'Manage Salary Setup', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(586, 'add_salary_type', 'Add Salary Type', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(587, 'manage_salary_type', 'Manage Salary Type', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(588, 'manage_tax_setup', 'Manage Tax Setup', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(589, 'setup_tax', 'Setup Tax', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(590, 'salary_type', 'Salary Type', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(591, 'manage_salary_generate', 'Manage Salary Generate', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(592, 'generate_now', 'Generate Now', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(593, 'benefit_type', 'Benifit', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(594, 'customer', 'Customer', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(595, 'customer_list', 'Customer List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(596, 'floorplan_list', 'Floor Plan List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(597, 'floor_name', 'Floor Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(598, 'num_of_room', 'No of Room', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(599, 'room_no', 'Room No.', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(600, 'add_floor', 'Add Floor', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(601, 'assign_floor', 'Assign Floor', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(602, 'floor_list', 'Floor List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(603, 'start_roomno', 'Start Room No', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(604, 'assign_room', 'Assign Room', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(605, 'assign_facilities', 'Assign Room Facilities', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(606, 'assign_rate', 'Assign Room Rate', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(607, 'first_room_assign', 'Room is not select. Please Select Room First', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(608, 'nationality', 'Nationality', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(609, 'native', 'Native', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(610, 'foreigner', 'Foreigner', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(611, 'profession', 'Profession', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(612, 'national_id', 'National ID', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(613, 'passport_no', 'Passport No', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(614, 'visa_reg_no', 'Visa/Reg. No', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(615, 'purpose', 'Purpose', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(616, 'tourist', 'Tourist', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(617, 'business', 'Business', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(618, 'official', 'Official', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(619, 'customer_edit', 'Update Customer', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(620, 'book_now', 'Book Now', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(621, 'payment_list', 'Payment List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(622, 'payment_form', 'Payment Form', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(623, 'invoice_no', 'Invoice No', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(624, 'invoice', 'Invoice', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(625, 'pay_date', 'Pay Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(626, 'payment_method', 'Payment Method', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(627, 'payment_setting', 'Payment Setting', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(628, 'paymentmethod_list', 'Payment Method List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(629, 'paymentmethod_setup', 'Payment Setup', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(630, 'payment_add', 'Add Payment Method', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(631, 'payment_name', 'Payment Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(632, 'marchantid', 'Marchant ID', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(633, 'supplier_add', 'Add Supplier', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(634, 'supplier_edit', 'Update Supplier', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(635, 'purchase_item', 'Purchase Item', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(636, 'purchase', 'Purchase Manage', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(637, 'purchase_list', 'Purchase List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(638, 'purchase_add', 'Add Purchase', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(639, 'purchase_edit', 'Update Purchase', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(640, 'quantity', 'Quantity', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(641, 'supplier_information', 'Supplier Information', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(642, 'supplier_manage', 'Supplier Manage', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(643, 'supplier_name', 'Supplier Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(644, 'supplier_list', 'Supplier List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(645, 'purchase_return', 'Purchase Return', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(646, 'purchase_qty', 'Purchase Qty', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(647, 'return_qty', 'Return Qty', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(648, 'return_invoice', 'Return Invoice', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(649, 'units', 'Unit and Products', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `malay`, `french`, `german`, `spanish`, `turkish`, `hindi`, `swahili`) VALUES
(650, 'manage_unitmeasurement', 'Unit Measurement', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(651, 'unit_list', 'Unit Measurement List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(652, 'unit_add', 'Add Unit', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(653, 'unit_update', 'Unit Update', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(654, 'unit_name', 'Unit Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(655, 'manage_ingradient', 'Manage Product', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(656, 'ingradient_list', 'Products List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(657, 'add_ingredient', 'Add Product', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(658, 'ingredient_name', 'Product Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(659, 'unit_short_name', 'Short Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(660, 'update_ingredient', 'Update Product', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(661, 'mobile', 'Mobile', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(662, 'return', 'Return', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(663, 'booking_report', 'Booking Report', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(664, 'guest_info', 'Guest Information', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(665, 'purchase_report', 'Purchase Report', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(666, 'web_setting', 'Web Setting', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(667, 'banner_setting', 'Banner Setting', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(668, 'menu_setting', 'Menu Setting', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(669, 'widget_setting', 'Widget Setting', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(670, 'add_banner', 'Add Banner', NULL, NULL, NULL, '', NULL, NULL, NULL),
(671, 'bannertype', 'Add Banner Type', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(672, 'banner_list', 'Banner List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(673, 'title', 'Title', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(674, 'subtitle', 'Sub Title', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(675, 'banner_type', 'Banner Type', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(676, 'link_url', 'Link URL', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(677, 'banner_edit', 'Banner Update', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(678, 'menu_name', 'Menu Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(679, 'menu_url', 'Menu Slug', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(680, 'sub_menu', 'Sub Menu', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(681, 'add_menu', 'Add Menu', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(682, 'parent_menu', 'Parent Menu', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(683, 'widget_name', 'Widget Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(684, 'widget_title', 'Widget Title', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(685, 'widget_desc', 'Description', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(686, 'add_widget', 'Add New', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(687, 'common_setting', 'Common Setting', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(688, 'bannersize', 'Banner Size', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(689, 'width', 'Width', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(690, 'height', 'Height', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(691, 'email_setting', 'Email Setting', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(692, 'assign_roomoffer', 'Assign Room Offer', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(693, 'offer_year_month', 'Select Month/Year', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(694, 'current_rate', 'Orginal Rate', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(695, 'offer_rate', 'Offer Discount', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(696, 'roominfo', 'Room information', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(697, 'reserve_condition', 'Reserve Condition', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(698, 'subscribelist', 'Subscribe List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(699, 'offer_title', 'Offer Title', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(700, 'offer_text', 'Offer Text', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(701, 'customer_add', 'Add Customer', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(702, 'report', 'Report', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(703, 'set_default', 'Default', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(704, 'template_name', 'Template Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(705, 'sms_template', 'SMS Template', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(706, 'sms_template_warning', 'Please Use \"{Id}\" Format Without Quotation To Set Dynamic Value Inside Template', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(707, 'order_successfully', 'Your booking has been completed thank you.', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(708, 'order_fail', 'Booking Failed', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(709, 'invalid_splash', 'Splash image not uploaded.', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(710, 'splash', 'Splash image', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(711, 'product_list', 'Product List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(712, 'amount', 'Total Amount', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(713, 'return_qty', 'Return Qty', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(714, 'price', 'Price', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(715, 'stock_report', 'Stock Report', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(716, 'purchase_list', 'Purchase List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(717, 'paymentmethod', 'Payment Setting', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(718, 'candidate_name', 'Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(719, 'apply_day', 'Apply Day', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(720, 'number_of_leave_days', 'Number of Leave Days', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(721, 'manage_installment', 'Manage Installment', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(722, 'filter', 'Search', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(723, 'salary_benefits_type', 'Benefit Type', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(724, 'basic', 'Basic', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(725, 'gross_salary', 'Gross Salary ', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(726, 'currency_list', 'Currency List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(727, 'currency_name', 'Currency Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(728, 'currency_add', 'Add Currency', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(729, 'currency_edit', 'Update Currency', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(730, 'currency_icon', 'Currency Icon', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(731, 'currency_rate', 'Conversation Rate', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(732, 'currency', 'Currency Setting', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(733, 'education', 'Education', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(734, 'institute_name', 'Institute Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(735, 'result', 'Result', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(736, 'grand_total', 'Grand Total', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(737, 'common_setting', 'Common Setting', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(738, 'sms_configuration', 'Sms Configuration', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(739, 'sms_template', 'Sms Template', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(740, 'template_list', 'Template List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(741, 'sunscribe_list', 'Subscribe List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(742, 'role_listassign', 'Assign Role List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(743, 'total_amount', 'Total Amount', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(744, 'total_loan', 'Total Loan', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(745, 'unit_measurement_list', 'Unit Measurement List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(747, 'welcome_back', 'Welcome Back', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(748, 'security_setting', 'Security Setting', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(749, 'security_modules', 'Security Module', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(750, 'try_duration', 'Duration', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(751, 'wrong_try', 'Wrong Try', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(752, 'ip_block', 'Ip block', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(753, 'site_key', 'Site key', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(754, 'secret_key', 'Secret key', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(755, 'balance', 'Balance', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(756, 'account_code', 'Account Code', NULL, NULL, NULL, 'Código da Conta', NULL, NULL, NULL),
(757, 'loan_no', 'Loan No.', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(758, 'bank_book', 'Bank Book', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(759, 'trial_balance', 'Trial Balance', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(760, 'manage_award', 'Manage Award', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(761, 'award_list', 'Award List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(762, 'already_exists', 'Already Exists This Name.', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(763, 'can_name', 'Candidate Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(764, 'turkish', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(765, 'store_name', 'Store Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(766, 'update_role_assign', 'Update Role Assign', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(767, 'facility_details', 'Facility Details Name Already Exists', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(768, 'pay_exact_amount', 'Please pay the exact amount', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(769, 'search_report', 'Search Report', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(770, 'payment_status', 'Payment Status', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(771, 'previous', 'Previous', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(772, 'check_availability', 'Check Availability', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(773, 'need_help', 'Need Help:', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(775, 'children', 'Children', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(776, 'captcha_registration_link', 'Captcha Registration Link', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(777, 'cookie_secure', 'Cookie Secure', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(778, 'captcha', 'Captcha', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(779, 'csrf_token', 'CSRF Token', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(780, 'xss_filter', 'XSS filter', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(781, 'cookie_http', 'Cookie http', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(782, 'can_create', 'Can Create', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(783, 'can_read', 'Can read', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(784, 'can_edit', 'Can Edit', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(785, 'can_delete', 'Can Delete', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(786, 'amount_vs_booking', 'Total Booking Amount vs Total Number of Booking', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(787, 'equalizer', 'Equalizer', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(788, 'today_booking', 'Today Booking', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(789, 'attach_money', 'Attach Money', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(790, 'group_add', 'Group Add', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(791, 'total_customer', 'Total Customer', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(792, 'total_booking', 'Total Booking', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(793, 'poll', 'Poll', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(794, 'today_booking_list', 'Today Booking List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(795, 'next_day_booking', 'Next Day Booking', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(796, 'add_new_customer', 'Add New Customer', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(797, 'latest_version', 'Latest version', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(798, 'current_version', 'Current version', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(799, 'no_update_available', 'No Update available', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(800, 'active', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(801, 'inactive', 'InActive', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(802, 'select_option', 'Select Option', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(803, 'left', 'Left', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(804, 'right', 'Right', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(805, 'is_live_or_test', 'Is Live or Test', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(806, 'live', 'Live', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(807, 'test_mode', 'Test Mode', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(808, 'paid_amount', 'Paid Amount', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(809, 'due_amount', 'Due Amount', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(810, 'preview', 'Preview', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(811, 'booking_confirm_message', 'We\'ll send your booking confirmation to this email address.', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(812, 'create_an_account', 'Create an account?', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(813, 'create_account_password', 'Create account password', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(814, 'language_list', 'Language List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(815, 'phrase_name', 'Phrase Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(816, 'label', 'Label', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(817, 'unpaid', 'Unpaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(818, 'select_payment_type', 'Select payment Type', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(819, 'add_phrase', 'Add Phrase', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(820, 'phrase', 'Phrase', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(821, 'upload', 'Upload', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(822, 'notifications', 'Notifications', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(823, 'you_have', 'You have', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(824, 'unseen_notification', ' unseen notification', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(825, 'view_all_notification', 'View All Notifications', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(826, 'full_time', 'Full Time', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(827, 'part_time', 'Part Time', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(828, 'contructual', 'Contructual', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(829, 'other', 'Other', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(830, 'yes', 'Yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(831, 'no', 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(832, 'hourly', 'Hourly', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(833, 'salary', 'Salary', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(834, 'select_frequency', 'Select Frequency', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(835, 'weekly', 'Weekly', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(836, 'biweekly', 'Biweekly', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(837, 'annual', 'Annual', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(838, 'male', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(839, 'female', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(840, 'single', 'Single', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(841, 'married', 'Married', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(842, 'divorced', 'Divorced', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(843, 'widowed', 'Widowed', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(844, 'citizen', 'Citizen', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(845, 'non_citizen', 'Non-ctizen', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(846, 'text', 'Text', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(847, 'text_area', 'Text Area', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(848, 'all_report', 'All Report', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(849, 'no_result_found', 'No Result Found!!!!!', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(850, 'select_breakfast', 'Select Breakfast', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(851, 'selected', 'Selected', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(852, 'select_bed_no', 'Select Bed No', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(853, 'nights_booking_from', 'Nights Booking From', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(854, 'number_of_rooms', 'Number Of Rooms', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(855, 'number_of_person', 'Number Of Person', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(856, 'select_room_no', 'Select Room No', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(857, 'nights', 'Nights', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(858, 'available_room', 'Available Room', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(859, 'max_people', 'Max People', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(860, 'price_per_night', 'Price Per Night', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(861, 'offer_discount', 'Offer Discount', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(862, 'sub_total', 'Sub Total', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(863, 'service_charge', 'Service Charge', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(864, 'no_room_found', 'No Room Found from this date!!!!', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(865, 'hotel_information', 'Hotel Information', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(866, 'offer_date', 'Offer Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(867, 'taxes_and_service_charge', 'Taxes and Service Charge', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(868, 'total_price', 'Total Price', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(869, 'pending', 'Pending', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(870, 'complete', 'Complete', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(871, 'select_staus', 'Select Status', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(872, 'cancel', 'Cancel', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(873, 'room_facility_details_list', 'Room Facilities Details List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(874, 'room_facilities_list', 'Room Facilities List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(875, 'room', 'Room', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(876, 'guest_signature', 'Guest Signature', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(877, 'font_desk_office_signature', 'Font Desk Office Signature', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(879, 'checkin_date', 'Check In Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(880, 'checkout_date', 'Check Out Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(881, 'checkin_time', 'Check InTime', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(882, 'checkout_time', 'Check Out Time', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(883, 'visaregno', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(884, 'for_foreign_guest', 'For Foreign Guest', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(885, 'name_of_the_guest', 'Name Of the Guest', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(886, 'guest_registration_card', 'Guest Registration Card', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(887, 'unit_price', 'Unit Price', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(888, 'purchase_date', 'Purchase Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(889, 'expiry_date', 'Expiry Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(890, 'item_information', 'Item Information', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(891, 'stockqnt', 'Stock/Qnt', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(892, 'there_are_currently_no_addresses', 'There are currently No Addresses', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(893, 'checked_out', 'Checked Out', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(894, 'remember_password', 'Remember password', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(895, 'your_email', 'Your email', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(896, 'sign_in_using_your_email_address', 'Sign in Using Your Email Address', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(897, 'foreign', 'Foreign', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(898, 'noon', 'Noon', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(899, 'print_date', 'Print Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(900, 'production_date', 'Production Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(901, 'production_quantity', 'Production Quaantity', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(902, 'position_list_detail', 'Position List Details', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(903, 'add_return', 'Ad Return', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(904, 'live_mode', 'Live mode', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(905, 'application_list', 'Application List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(906, 'application_form', 'Application', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(907, 'leave_application_form', 'Leave Application', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(908, 'report_by_id', 'Report By Id', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(909, 'send', 'Send', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(910, 'award_form', 'Award', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(911, 'manage_performance', 'Manage Performance', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(912, 'employee_payment', 'Employee Payment', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(913, 'setup_date', 'Setup Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(914, 'select_date_format', 'Select Date Format', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(915, 'date_format', 'Date Format', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(916, 'ddmmyyyy', 'dd/mm/yyyy', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(917, 'yyyymmdd', 'yyyy/mm/dd', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(918, 'mmddyyyy', 'mm/dd/yyyy', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(919, 'ddmyyyy', 'dd M,yyyy', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(920, 'dmy', 'dd-mm-yyyy', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(921, 'ymd', 'yyyy-mm-dd', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(922, 'mdy', 'mm/dd/yyyy', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(923, 'update_candidate', 'Update Candidate', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(924, 'working_experience', 'Working Experience', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(925, 'candidate_view', 'Candidate', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(926, 'department_form', 'Department', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(927, 'all_division', 'Division List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(928, 'add_employee_performance', 'Add Employee Performance', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(929, 'update_employee_performance', 'Update Employee Performance', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(930, 'deduct', 'Deduct', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(931, 'addition', 'Addition', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(932, 'manage_tax', 'Tax Manager', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(933, 'update_salary_setup', 'Update Salary setup', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(934, 'deduction', 'Deduction', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(935, 'salary_setup_view', 'Salary Setup', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(936, 'granted', 'Granted', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(937, 'deny', 'Deny', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(938, 'update_grant_loan', 'Update Grant Loan', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(939, 'holiday_view', 'Holiday', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(940, 'inventory', 'Inventory', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(941, 'loan_installment_list', 'Loan Installment List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(942, 'interview_form', 'INTERVIEW', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(943, 'deselected', 'Deselected', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(944, 'selection_type', 'Selection type', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(945, 'total_leave_days', 'Total Leave Days', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(946, 'add_leave_type_form', 'Add Leave Type', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(947, 'update_leave_type', 'Update Leave Type', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(948, 'loan_view_list', 'Loan List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(949, 'benifit_class_code_description', 'Benifit Class Code Description', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(950, 'benefit_accrual_date', 'Benefit Accrual Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(951, 'create_candidate_selection', 'CREATE CANDIDATE SELECTION', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(952, 'select', 'Select', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(953, 'update_application', 'Update Application', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(954, 'installment_update', 'Installment Update', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955, 'update_position', 'Update Position', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(956, 'short_list', 'Short List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(957, 'select_weekly_leave_day', 'Select Weekly Leave Day', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(958, 'friday', 'Friday', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(959, 'saturday', 'Saturday', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(960, 'sunday', 'Sunday', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(961, 'weekly_leave', 'Weekly Leave', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(962, 'add_weekly_leave', 'Add Weekly Leave', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(963, 'check', 'check', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(964, 'checked', 'Checked', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(965, 'monthly', 'Monthly', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(966, 'cash_in_hand', 'Cash in hand', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(967, 'department_list', 'Department List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(968, 'today', 'today', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(969, 'attach_money_icon', 'attach_money', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(970, 'account_circle_icon', 'account_circle', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(971, 'date_range_icon', 'date_range', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(972, 'userid', 'User Id', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(973, 'contact_send', 'Message Sent Successfully', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(974, 'check_details', 'Check Your Details', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(975, 'payment_details', 'Payments Details', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(976, 'message_us', 'MESSAGE US', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(977, 'start_chat', 'Start a chat!', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(978, 'send_message', 'Send message', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(979, 'awsome_choice', 'Awesome choice! You\'re getting a great deal with your rate.', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(980, 'until', 'Until', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(981, 'enter_details', 'Enter Your Details', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(982, 'your_stay_includes', 'Your Stay Includes:', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(983, 'booking_conditions', 'Booking Conditions', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(984, 'full_guest_name', 'Full Guest Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(985, 'special_request', 'Special Requests', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(986, 'next_final_details', 'Next: Final details', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(987, 'write_request', 'Please write requests in English or the property\'s language', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(988, 'is_not_available', 'is not available for', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(989, 'is_not_available_on_this_date', 'is not available on this date', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(990, 'people', 'People', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(991, 'gallery', 'Gallery', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(992, 'show_all', 'Show All', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(993, 'subscribe', 'Subscribe', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(994, 'instagram', 'Instagram', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(995, 'twitter', 'Twitter', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(996, 'dribbble', 'Dribbble', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(997, 'facebook', 'Facebook', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(998, 'privacy', 'Privacy', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(999, 'terms_conditions', 'Terms & Conditions', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1000, 'signup_account', 'Sign up for your account!', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1001, 'enter_your_valid_email', 'Enter your valid email', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1002, 'by_signing_up_you_agree', 'By signing up, you agree to the', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1003, 'terms_of_service', 'terms of service', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1004, 'sign_up', 'Sign Up', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1005, 'terms_of_use', 'terms of use', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1006, 'by_signing_up_youagree_to_our', 'By signing up, you agree to our', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1007, 'signin_to_your_account', 'Sign into your account!', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1008, 'nice_to_see_you', 'Nice to see you! Please log in with your account.', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1009, 'review', 'Review', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1010, 'night', 'Night', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1011, 'free_cancellation', 'Free cancellation', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1012, 'included_services', 'Included services', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1013, 'monthly_booking_status', 'Monthly Booking Status', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1014, 'refresh', 'Refresh', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1015, 'total_booking_history', 'Total Booking History', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1016, 'total_reservation', 'Total Reservation', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1017, 'child_limit', 'Child Limit', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1018, 'book_by', 'Book By', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1019, 'learn_more', 'Book Now', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1020, 'please_wait', 'Please wait...', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1021, 'gateway', 'Gateway', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1022, 'subtotal', 'Sub - Total Amount', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1023, 'invoice_return_list', 'Invoice Return List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1024, 'no_product_found', 'No Product Found', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1025, 'language_name', 'Language Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1026, 'customer_information', 'Customer Information', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1027, 'room_rate', 'Room Rate', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1028, 'booking_information', 'Booking Information', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1029, 'login_logo', 'Login Logo', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1030, 'link1', 'Link1', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1031, 'link2', 'Link2', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1032, 'link3', 'Link3', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1033, 'header_logo', 'Header Logo', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1034, 'footer_logo', 'Footer Logo', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1035, 'invalid_credentials', 'Invalid Credentials', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1036, 'home', 'Home', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1037, 'please_logout', 'Please Logout First', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1038, 'invoice_logo', 'Invoice Logo', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1039, 'cash_book_report_on', 'Cash Book Report On', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1040, 'cash_book_voucher', 'Cash Book Voucher', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1041, 'bank_book_voucher', 'Bank Book Voucher', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1042, 'bank_book_report_of', 'Bank Book Report Of', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1043, 'general_ledger_of', 'General Ledger Of', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1044, 'transaction_date', 'Transaction date', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1045, 'voucher_type', 'Voucher Type', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1046, 'particulars', 'Particulars', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1047, 'head_of_account', 'Head of Account', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1048, 'no_report', 'No Report', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1049, 'trial_balance_with_opening_as_on', 'Trial Balance With Opening as On', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1050, 'prepared_by', 'Prepared By', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1051, 'account_official', 'Account Official', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1052, 'general_ledger_report', 'General Ledger Report', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1053, 'edit_profile', 'Edit Profile', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1054, 'phone_message', 'Note : Add prefix without + sign Example: (88)01840997***', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1055, 'assign_role', 'Assign Role', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1056, 'incorrect_email_or_password', 'Incorrect Email or Password', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1057, 'remarks', 'Remarks', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1058, 'website', 'Website', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1059, 'sorry_your_account_is_deactivated', 'Sorry Your account is Deactivated', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1060, 'settings', 'Settings', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1061, 'checkin_list', 'Check In List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1062, 'checkout_list', 'Check Out List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1063, 'direct_checkin', 'Direct Checkin', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1064, 'booking_detail', 'Booking Detail', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1065, 'room_detail', 'Room Details', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1066, 'occupant_info', 'Customer Info', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1067, 'rent_info', 'Rent Info', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1068, 'view_checkin', 'View Check In', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1069, 'payment_details', 'Payment Details', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1070, 'time_format', 'Time Format', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1071, 'booking_source', 'Booking Soruce', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1072, 'booking_source_no', 'Source No', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1073, 'arrival_from', 'Arival From', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1074, 'purpose_of_visit', 'Purpose of Visit', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1075, 'b_ty_details', 'Booking Type Details', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1076, 'b_ty_details_edit', 'Booking Type Details Update', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1077, 'booking_sourse', 'Booking Source', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1078, 'b_ty_d_list', 'Booking Type Details List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1079, 'please_select_one', 'Please Select One', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1080, 'house_keeping', 'House Keeping', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1081, 'room_cleaning', 'Room Cleaning', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1082, 'assign_room_cleaning', 'Assign Room Cleaning', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1083, 'house_keeper', 'House Keeper', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1089, 'b_ty_details', 'Booking Type Details', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1090, 'b_ty_details_edit', 'Booking Type Details Update', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1091, 'booking_sourse', 'Booking Source', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1092, 'b_ty_d_list', 'Booking Type Details List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1093, 'please_select_one', 'Please Select One', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1094, 'wakeup_call_list', 'Wake Up Call List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1095, 'wakeup_time', 'Wake Up Time', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1096, 'wacall_add', 'Add Wake Up Call', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1097, 'cust_name', 'Customer Name\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1098, 'wacall_edit', 'Wake Up Call Update', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1099, 'categorylist', 'Category List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1100, 'category_name', 'Category Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1101, 'add_category', 'Add Category', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1103, 'available', 'Available', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1104, 'used', 'Used', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1106, 'pool_type', 'Pool Type', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1107, 'pool_type_list', 'Pool Type List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1110, 'swimming_pool', 'Swimming Pool', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1111, 'swimming_pool_list', 'Swimming Pool List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1114, 'pool_img', 'Pool Image', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1115, 'pool_img_list', 'Pool Image List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1116, 'pool_package', 'Pool Package', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1117, 'pool_package_list', 'Pool Package List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1118, 'date_from', 'Date From', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1121, 'pool_package_add', 'Add Pool Package', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1126, 'select_customer', 'In House Guest', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1128, 'shift_mgt', 'Shift Management', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1129, 'shift_assign', 'Roster Assign', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1140, 'shift_assign_list', 'Roster Assign List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1142, 'select_shift', 'Select Shift', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1143, 'select_emp', 'Select Employee', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1157, 'attendance_dashboard', 'Attendance Dashboard', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1158, 'complementary', 'Complementary', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1169, 'attendance_dashboard', 'Attendance Dashboard', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1170, 'itemmanage', 'Food Management', NULL, NULL, NULL, 'GestiÃƒÆ’Ã‚Â³n de ArtÃƒÆ’Ã‚Â­culos', 'MenÃƒÆ’Ã‚Â¼ YÃƒÆ’Ã‚Â¶netimi', NULL, NULL),
(1205, 'guest_list', 'Guest List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1207, 'tax_management', 'Tax Management', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1208, 'tax_list', 'Tax List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1209, 'reuse_list', 'Laundry Product List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1210, 'destroyed_list', 'Destroyed List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1233, 'dashboard', 'Dashboard', NULL, NULL, NULL, 'Tablero', 'GÃƒÆ’Ã‚Â¶sterge Paneli', NULL, NULL),
(1295, 'qr-order', 'QR Order', NULL, NULL, NULL, 'Orden QR', 'QR Kod SipariÃƒâ€¦Ã…Â¸leri', NULL, NULL),
(1366, 'due_marge', 'Due Merge', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1377, 'card_terminal_name', 'Card Terminal Name', NULL, NULL, NULL, 'Nombre del Terminal de la Tarjeta', 'Kart Terminal AdÃƒâ€žÃ‚Â±', NULL, NULL),
(1381, 'card_terminal_name', 'Card Terminal Name', NULL, NULL, NULL, 'Nombre del Terminal de la Tarjeta', 'Kart Terminal AdÃƒâ€žÃ‚Â±', NULL, NULL),
(1386, 'select_dept', 'Select Department', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1387, 'choose_file', 'Choose File', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1388, 'balance_sheet', 'Balance Sheet', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1389, 'financial_year', 'Financial Year', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1390, 'financial_year_end', 'Financial Year Ending', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1391, 'opening_balance', 'Opening Balance', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1392, 'download', 'Download', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1393, 'purchase_key', 'Purchase Key', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1394, 'add_module', 'Add  Module', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1395, 'overwrite', 'Overwrite', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1396, 'buy_now', 'Buy Now', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1397, 'install', 'Install', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1398, 'uninstall', 'Uninstall', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1399, 'room_status', 'Room Status', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1400, 'room_status', 'Room Status', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1401, 'room_status', 'Room Status', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1438, 'promocode', 'Promocode', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1439, 'promocode_list', 'Promocode List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1440, 'addnew_promocode', 'New Promocode', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1442, 'per_price', 'Per Price', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1448, 'view', 'View', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1451, 'attend', 'Attend', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1452, 'absent', 'Absent', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1453, 'roster_empatn', 'Employee Attendance', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1454, 'today_crnt_shift', 'Today Current Shift', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1455, 'change_shift_dashboard', 'change shift', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1456, 'sv_changes', 'Save changes', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1457, 'assigned_empl_list', 'Assigned Employee List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1458, 'extra_bpc', 'Extra Bed/Person/Child', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1459, 'additional_charges', 'Additional Charges', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1460, 'special_discount', 'Special Discount', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1461, 'restaurant', 'Restaurant', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1462, 'card_number', 'Card Number', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1463, 'cancel_charge', 'Cancel Charge', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1464, 'cancels_reservation', 'Cancel Reservation', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1465, 'total_extra_price', 'Total Extra Price', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1466, 'total_complementary_price', 'Total Complementary Price', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1467, 'reservation_details', 'Reservation Details', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1468, 'booking_reference', 'Booking Reference', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1469, 'booking_reference_no', 'Booking Reference No', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1470, 'room_info', 'Room Info', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1471, 'new_customer', 'New Customer', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1472, 'old_customer', 'Old Customer', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1473, 'mobile_no', 'Mobile No', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1474, 'rent', 'Rent', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1475, 'discount_reason', 'Discount Reason', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1476, 'discount_max', 'Discount (Max-100%)', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1477, 'commission', 'Commission (%)', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1478, 'commission_amt', 'Commission Amount', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1479, 'advance_details', 'Advance Details', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1480, 'payment_mode', 'Payment Mode', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1481, 'account_number', 'Account Number', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1482, 'advance_remarks', 'Advance Remarks', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1483, 'advance_amount', 'Advance Amount', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1484, 'occupant_details', 'Customer Details', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1485, 'guest_details', 'Guest Details', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1486, 'country_code', 'Country Code', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1487, 'father_name', 'Father Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1488, 'occupation', 'Occupation', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1489, 'dob', 'DOB', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1490, 'anniversary', 'Anniversary', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1491, 'vip', 'VIP', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1492, 'contact_details', 'Contact Details', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1493, 'contact_type', 'Contact Type', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1494, 'country', 'Country', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1495, 'zipcode', 'Zipcode', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1496, 'photo_id_details', 'Identity Details', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1497, 'photo_id_type', 'Identity Type', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1498, 'photo_id', 'ID', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1499, 'photo_id_upload', 'Identity Upload', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1500, 'guest_image', 'Guest Image', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1501, 'front_side', 'Front Side', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1502, 'drag_and_drop', 'Drag and Drop', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1503, 'supports_image', 'Supports JPG, JPEG, PNG, SVG', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1504, 'back_side', 'Back Side', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1505, 'occupant_image', 'Customer Image', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1506, 'bed', 'Bed', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1507, 'child', 'Child', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1508, 'amnt', 'Amount', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1509, 'check_in_details', 'Check In Details', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1510, 'go', 'Go', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1511, 'customer_details', 'Customer Details', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1512, 'booking_no', 'Booking No', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1513, 'email_id', 'Email ID', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1514, 'set_default_customer', 'Set Default Customer', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1515, 'room_rent_details', 'Room Rent Details', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1516, 'nod', 'NoD', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1517, 'rent_day', 'Rent/ Day', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1518, 'dis_day', 'Dis./ Day', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1519, 'amt_aft_dis', 'Amt. Aft Dis.', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1520, 'tot_rent', 'Tot. Rent', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1521, 'tot_amt', 'Tot. Amt', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1522, 'billing_details', 'Billing Details', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1523, 'room_rent_amt', 'Room Rent Amt', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1524, 'or', 'or', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1525, 'discount_amt', 'Discount Amt', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1526, 'service_charge_amt', 'Service Charge Amt', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1527, 'total_room_rent_amt', 'Total Room Rent Amt', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1528, 'total_room_rent_amt_with_tax', 'Total Room Rent Amt. With Tax', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1529, 'complementary_amt', 'Complementary Amt', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1530, 'extra_bpc_amt', 'Ex. Bed /Per. /Ch. Amt', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1531, 'advance_amt', 'Advance Amt', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1532, 'payable_rent_amt', 'Payable Rent Amt', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1533, 'additional_charge_comments', 'Additional Charge Comments', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1534, 'net_payable_amt', 'Net Payable Amt', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1535, 'credit_amt', 'Credit Amt', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1536, 'special_discount_amt', 'Special Discount Amt', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1537, 'payable_amt', 'Payable Amt', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1538, 'room_posted_bill', 'Room Posted Bill', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1539, 'bill_type', 'Bill Type', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1540, 'bill_settlement', 'Bill Settlement', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1541, 'cash', 'Cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1542, 'card', 'Card', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1543, 'cheque', 'Cheque', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1544, 'online', 'Online', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1545, 'balance_details', 'Balance Details', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1546, 'remain_amt', 'Remain Amt', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1547, 'collected_amt', 'Collected Amt', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1548, 'change_amt', 'Change Amt', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1549, 'invoiced_from', 'INVOICED FROM', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1550, 'invoiced_to', 'INVOICED TO', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1551, 'details_of_the_guest', 'Details of the Guest', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1552, 'guests_name', 'Guests Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1553, 'aft_dis', 'Aft. Dis', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1554, 'sub_total', 'Subtotal', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1555, 'grand_total_inctax', 'Grand Total (Incl.Tax)', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1556, 'authorized_signature', 'Authorized Signature', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1557, 'net_profit', 'Net Profit', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1558, 'net_loss', 'Net Loss', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1559, 'liability', 'Liability', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1560, 'cash_at_bank', 'Cash At Bank', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1561, 'refund_charge', 'Refund Charge', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1562, 'home_section_4', 'Home Section 4', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1563, 'image_size', 'Image Size', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1564, 'brand_logo', 'Brand Logo', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `malay`, `french`, `german`, `spanish`, `turkish`, `hindi`, `swahili`) VALUES
(1565, 'contact_information', 'Contact Information', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1566, 'terms_and_privacy', 'Terms and Privacy', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1567, 'social_link', 'Social Link', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1568, 'pages_title', 'Pages Title', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1569, 'about_us', 'About Us', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1570, 'contact_us', 'Contact Us', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1571, 'team_members', 'Team Members', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1572, 'counter', 'Counter', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1573, 'team_gallery', 'Team Gallery', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1574, 'slider', 'Slider', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1575, 'home_section_1', 'Home Section 1', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1576, 'home_section_2', 'Home Section 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1577, 'home_section_3', 'Home Section 3', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1578, 'room_feature', 'Room Feature', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1579, 'footer', 'Footer', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1580, 'map_key', 'Map Key', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1581, 'latitude', 'Latitude', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1582, 'longitude', 'Longitude', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1583, 'price_text', 'Price Text', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1584, 'powered_by_text', 'Powered By Text', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1585, 'phrase_update', 'Phrase Update', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1586, 'phrase_list', 'Phrase List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1587, 'image_text', 'Image Text', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1588, 'instragram', 'Instragram', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1589, 'edit_user', 'Edit User', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1590, 'number', 'Number', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1591, 'increment', 'Increment', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1592, 'visitors_count', 'Visitors Count', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1593, 'invoice_information', 'Invoice Information', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1594, 'add_production', 'Add Production', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1595, 'returned_list', 'Returned List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1596, 'promocode_discount', 'Promocode Discount', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1597, 'extra', 'Extra', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1598, 'refund_days', 'Refund days', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1599, 'refund_amount', 'Refund Amount', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1600, 'commission_rate', 'Commission Rate', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1601, 'total_balance', 'Total Balance', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1602, 'expired', 'Expired', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1603, 'extra_capability', 'Extra Capability', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1604, 'bed_charge', 'Bed Charge', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1605, 'person_charge', 'Person Charge', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1606, 'extra_capacity', 'Extra Capacity', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1607, 'reg_no', 'Reg No', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1608, 'is_active', 'Is Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1609, 'tax_name', 'Tax Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1610, 'product_queue', 'Product Queue', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1611, 'laundry_item', 'Laundry Item', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1612, 'destroyed_product_list', 'Destroyed Product List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1613, 'destroyed', 'Destroyed', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1614, 'supplier_payment', 'Supplier Payment', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1615, 'balance_sheet_statement', 'Balance Sheet Statement', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1616, 'cash_flow_statement', 'Cash Flow Statement', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1617, 'statement_of_comprehensive_income', 'Statement of Comprehensive Income', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1618, 'as_on', 'As On', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1619, 'apply_code', 'Apply Code', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1798, 'timezone', 'Time Zone', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1799, 'select_cust_type', 'Select Customer Type', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1800, 'new_cust', 'New Customer', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1801, 'old_cust', 'Old Customer', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1802, 'phone_must_unique', 'Phone Number Must Be Unique', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1803, 'from_time', 'From Time', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1804, 'to_time', 'To Time', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1805, 'category', 'Category', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1806, 'offer_end_date', 'Offer End Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1807, 'varient', 'Varient', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1808, 'remove', 'Remove', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1809, 'payment_info', 'Payment Information', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1810, 'card_holder_name', 'Card Holder Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1811, 'monday', 'Monday', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1812, 'tuesday', 'Tuesday', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1813, 'wednesday', 'Wednesday', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1814, 'thursday', 'Thursday', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1815, 'view_order', 'View Order', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1816, 'payable_amnt', 'Payable amount', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1817, 'change_amnt', 'Change Amount', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1818, 'avg_qty', 'Ava. Qnty', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1819, 'unitres', 'Unit', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1820, 'dis_pcs', 'Dis/ Pcs', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1821, 'select_num_order', 'Select number of order', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1822, 'table_icon', 'Table Icon', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1823, 'show', 'Show', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1824, 'print', 'Print', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1825, 'close', 'Close', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1826, 'customer_name', 'Customer Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1827, 'forgot_password', 'Forgot Password', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1828, 'receover_password', 'Recover Password', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1829, 'enter_code', 'Enter Code', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1830, 'new_pass', 'New Password', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1831, 'y_mail', 'Your Email', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1832, 'lic_pur_key', 'License/Purchase key', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1833, 'autoupdate', 'Autoupdate', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1834, 'list', 'List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1835, 'user_profile', 'User Profile', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1836, 'booking_details', 'Booking Details', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1837, 'update_profile', 'Update Profile', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1838, 'profile_details', 'Profile Details', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1839, 'do_not_have_an_account', 'Do not have an account', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1840, 'person', 'Person', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1841, 'booked', 'Booked', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1842, 'parking_status', 'Parking Status', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1843, 'rating', 'Rating', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1844, 'problem_list', 'Problem List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1845, 'solved', 'Solved', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1873, 'ordermanage', 'Restaurent', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1874, 'manage_category', 'Manage Category', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1875, 'category_list', 'Category List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1876, 'manage_food', 'Manage Food', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1877, 'add_food', 'Add Food', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1878, 'food_list', 'Food List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1879, 'food_varient', 'Food Variant', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1880, 'food_availablity', 'Food Availability', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1881, 'add_varient', 'Add Variant', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1882, 'varient_name', 'Variant Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1883, 'variant_list', 'Variant List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1884, 'variant_edit', 'Update Variant', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1885, 'food_availablelist', 'Food Available List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1886, 'add_availablity', 'Add Available Day & Time', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1887, 'edit_availablity', 'Update Available Day & Time', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1888, 'available_day', 'Available Day', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1889, 'available_time', 'Available Time', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1890, 'manage_addons', 'Manage Add-ons', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1891, 'add_adons', 'Add Add-ons', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1892, 'menu_addons', 'Add-ons Menu', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1893, 'addons_list', 'Add-ons List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1894, 'assign_adons', 'Add-ons Assign', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1895, 'assign_adons_list', 'Add-ons Assign List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1896, 'update_adons', 'Update Add-ons', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1897, 'add_group_item', 'Add Group Item', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1898, 'menu_type', 'Menu Type', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1899, 'parent_cat', 'Parent Category', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1900, 'is_offer', 'Offer', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1901, 'offerdate', 'Offer Start Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1902, 'offerenddate', 'Select Kitchen', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1903, 'select_kitchen', 'Update', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1904, 'kitchen_name', 'Kitchen Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1905, 'is_special', 'Special', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1906, 'is_custome_quantity', 'Custom Quantity', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1907, 'cookedtime', 'Cooking Time', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1908, 'item_name', 'Food Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1909, 'component', 'Components', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1910, 'vat_tax', 'Vat', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1911, 'add_menu_type', 'Add Menu Type', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1912, 'menu_type_list', 'Menu Type List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1913, 'menu_type_name', 'Menu Type', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1914, 'icon', 'Icon', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1915, 'menutype_edit', 'Menu Type Edit', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1916, 'addons_name', 'Add-ons Name ', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1917, 'pos_invoice', 'POS Invoice', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1918, 'order_list', 'Order List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1919, 'pending_order', 'Pending Order', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1920, 'complete_order', 'Complete Order', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1921, 'cancel_order', 'Cancel Order', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1922, 'kitchen_dashboard', 'Kitchen Dashboard', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1923, 'counter_dashboard', 'Counter Dashboard', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1924, 'counter_list', 'Counter List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1925, 'pos_setting', 'POS Setting', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1926, 'sound_setting', 'Sound Setting', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1927, 'upload_notify', 'Upload Notification Sound', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1928, 'placr_setting', 'Place order Setting', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1929, 'waiter', 'Waiter', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1930, 'table', 'Table Map', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1931, 'table_map', 'Table Map', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1932, 'is_sound', 'Is Sound Enable', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1933, 'quick_ord', 'Quick Order Setting', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1934, 'counter_no', 'Counter Number', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1935, 'add_counter', 'Add Counter', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1936, 'tabltno', 'Table No', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1937, 'ord_num', 'Order Number', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1938, 'ordtime', 'Order Time', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1939, 'remtime', 'Remaining Time', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1940, 'ordtcoun', 'Order Time Countdown Board', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1941, 'orderid', 'Order ID', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1942, 'customer_type', 'Customer Type', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1943, 'ordate', 'Order Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1944, 'service_chrg', 'Service Charge', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1945, 'customer_paid_amount', 'Customer Paid Amount', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1946, 'change_due', 'Change Due', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1947, 'total_due', 'Total Due', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1948, 'totalpayment', 'Total payment', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1949, 'billing_to', 'Billing To', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1950, 'bill_by', 'Bill By', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1951, 'orderno', 'Order No.', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1952, 'thanks_you', 'Thank you very much', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1953, 'powerbybdtask', 'Powered  By: BDTASK, www.bdtask.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1954, 'item', 'Item', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1955, 'billing_from', 'Billing From', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1956, 'order_status', 'Order Status', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1957, 'billing_date', 'Billing Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1958, 'cancel_reason', 'Cancel Reason', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1959, 'customer_order', 'Customer Notes', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1960, 'customerpicktime', 'Customer Pick-up Date and time', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1961, 'size', 'Size', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1962, 'qty', 'Quantity', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1963, 'foodnote', 'Food Note', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1964, 'addnotesi', 'Add Note', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1965, 'sl_payment', 'Select Your Payment Method', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1966, 'paymd', 'Payment Method', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1967, 'crd_terminal', 'Card Terminal', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1968, 'sl_bank', 'Select Bank', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1969, 'lstdigit', 'Last 4 Digit', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1970, 'cuspayment', 'Customer Payment', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1971, 'cng_amount', 'Changes Amount', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1972, 'pay_print', 'Pay Now & Print Invoice', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1973, 'payn', 'Pay Now', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1974, 'ordid', 'Order ID', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1975, 'can_reason', 'Cancel Reason', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1976, 'can_ord', 'Cancel Order', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1977, 'add_customer', 'Add Customer', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1978, 'fav_addesrr', 'Favorite Address', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1979, 'nw_order', 'New Order', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1980, 'ongoingorder', 'On Going Order', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1981, 'tdayorder', 'Today Order', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1982, 'onlineord', 'Online Order', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1983, 'kitchen_status', 'Kitchen Status', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1984, 'all', 'All', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1985, 'del_company', 'Delivery Company', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1986, 'thirdparty_orderid', 'Third-party Order ID', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1987, 'vat_tax1', 'Vat/Tax', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1988, 'quickorder', 'Quick Order', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1989, 'placeorder', 'Place Order', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1990, 'update_group_item', 'pdate Group Item', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1991, 'addons_qty', 'Add-ons Qty', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1992, 'add_to_cart', 'Add To cart', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1993, 'add_to_cart_more', 'Add Multiple Variant', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1994, 'select_this_table', 'Select This Table', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1995, 'seat', 'Seat', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1996, 'ord', 'Order', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1997, 'seat_time', 'Time', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1998, 'no_customer', 'No Customer', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1999, 'mergeord', 'Merge Order', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000, 'before_time', 'Running Time', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2001, 'cmplt', 'Complete', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2002, 'split', 'Split', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2003, 'no_order_run', 'No Order Running', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2004, 'sl_product', 'Search Product', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2005, 'ord_places', 'Order Placed Successfully', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2006, 'do_print_in', 'Do you Want to Print Invoice???', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2007, 'ord_complte', 'Order Completed', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2008, 'ord_com_sucs', 'Order Completed Successfully', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2009, 'token_no', 'Token NO', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2010, 'ord_failed', 'Order Failed!!!', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2011, 'failed_msg', 'Order not placed due to some reason. Please Try Again!!!. Thank You !!!', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2012, 'ord_succ', 'Order Placed Successfully!!!', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2013, 'succ_smg', 'Are you Sure to Print This Invoice????', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2014, 'sl_option', 'Select Option', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2015, 'req_failed', 'Request Failed, Please check your code and try again!', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2016, 'person', 'Person', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2017, 'ord_number', 'Order No.', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2018, 'add_new_payment_type', 'Add New Payment Method', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2019, 'discount_type', 'Discount Type', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2020, 'type_slorder', 'Type and Select Order', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2021, 'type_table', 'Type and Select Table', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2022, 'Processingod', 'Processing...', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2023, 'sLengthMenu', 'Display _MENU_ records per page', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2024, 'sInfo', 'Showing _START_ to _END_ of _TOTAL_ entries', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2025, 'sInfoEmpty', 'Showing 0 to 0 of 0 entries', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2026, 'sInfoFiltered', '(Filtered from _MAX_ Total Records)', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2027, 'sLoadingRecords', 'Loading...', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2028, 'sZeroRecords', 'Nothing found - sorry', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2029, 'sEmptyTable', 'No Data Available in Table', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2030, 'sFirst', 'First', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2031, 'sLast', 'Last', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2032, 'sPrevious', 'Previous', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2033, 'sNext', 'Next', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2034, 'sSortAscending', 'Activate to sort column ascending', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2035, 'sSortDescending', 'Activate to Sort Column Descending', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2036, '_sign', 'Show %d Rows', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2037, '_0sign', 'No Row Selected', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2038, '_1sign', '1 Line Selected', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2039, 'copy', 'Copy', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2040, 'excel', 'Excel', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2041, 'pdf', 'Pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2042, 'colvis', 'Colvis', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2043, 'csv', 'CSV', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2044, 'tok', 'Token', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2045, 'clear', 'Clear', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2046, 'shipping_name', 'Shipping Method Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2047, 'shippingtime', 'Shipping Date & Time', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2048, 'select_doc_type', 'Select Doc Type', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2049, 'update_fooditem', 'Update Food Item', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2050, 'split_order', 'Split Order', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2051, 'table_manage', 'Manage Table', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2052, 'table_list', 'Table List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2053, 'table_setting', 'Table Setting', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2054, 'add_new_table', 'Add Table', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2055, 'table_name', 'Table Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2056, 'floor_select', 'Floor Select', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2057, 'table_edit', 'Update Table', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2058, 'res_table_setup', 'Restaurant Table Setup', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2059, 'customertype_list', 'Customer Type List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2060, 'list_of_card_terminal', 'Card Terminal List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2061, 'add_new_terminal', 'Add New Terminal', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2062, 'update_terminal', 'Update Terminal', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2063, 'list_of_bank', 'Bank List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2064, 'add_bank', 'Add New Bank', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2065, 'update_bank', 'Update Bank', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2066, 'bank_name', 'Bank Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2067, 'day_closing', 'Day Closing', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2068, 'add_closing_balance', 'Add closing balance', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2069, 'closing_balance', 'Closing balance', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2070, 'recieved', 'Recieved', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2071, 'expense', 'Expense', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2072, 'start_cash_register', 'Start Cash Register', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2073, 'dccounter_no', 'Counter No', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2074, 'dcadd_counter', 'Add Counter', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2075, 'counterlist', 'Counter List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2076, 'day_close', 'Day Close', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2077, 'create_roster', 'Create Roster', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2078, 'duty_roster', 'Duty Roster', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2079, 'shift_name', 'Shift Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2080, 'roster_start_date', 'Roster Start Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2081, 'roster_end_date', 'Roster End Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2082, 'roster_days', 'Roster days', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2083, 'shift_update', 'Update Shift', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2084, 'roster_list', 'Roster List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2085, 'shift_assign_add', 'Roster Assign', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2086, 'select_roster', 'Select Roster', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2087, 'shift_assign_update', 'Shift Assign Update', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2088, 'assign_employee', 'Assign Employee', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2089, 'shift_start', 'Shift Start', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2090, 'shift_end', 'Shift End', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2091, 'shift_time', 'Shift Hour', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2092, 'shift_add', 'Add Shift', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2093, 'shift_list', 'Shift List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2094, 'shift_hour', 'Shift Hour', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2095, 'shift_start_date', 'Shift Start Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2096, 'assigned_roster_list', 'Assigned Roster List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2097, 'roster_edit', 'Update Roster', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2098, 'shift_end_date', 'Shift End Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2099, 'assigned_emp', 'Assigned Employee', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2100, 'assignto', 'Assign To', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2101, 'underprocess', 'Under Process', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2102, 'addnew_checklist', 'New Checklist', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2103, 'task_name', 'Task Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2104, 'checklist', 'Cheklist', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2105, 'in_use', 'In Use', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2106, 'in_laundry', 'In Laundry', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2107, 'ready', 'Ready', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2108, 'cleaning_report', 'Cleaning Report', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2109, 'searched_records', 'Searched Records', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2110, 'assign_by', 'Assign By', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2111, 'completed', 'Completed', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2112, 'searched_report', 'Searched Report', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2113, 'manage_item', 'Manage Item', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2114, 'litem_name', 'Item Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2115, 'item_list', 'Item List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2116, 'recieve', 'Recieve', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2117, 'operate_by', 'Operate By', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2118, 'total_cost', 'Total Cost', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2119, 'laundry_payment', 'Laundry Payment', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2120, 'all_records', 'All Records', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2121, 'room_cleaning_details', 'Room Cleaning Details', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2122, 'roomqr_list', 'Room Qr List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2123, 'records', 'Records', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2124, 'laundry', 'Laundry', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2125, 'laundry_list', 'Laundry List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2126, 'item_cost', 'Item Cost', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2134, 'vehicle_type', 'Vehicle Type', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2135, 'zone_type', 'Zone Type', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2136, 'select_time', 'Select Time', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2137, 'parking_note', 'Parking Note', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2138, 'please_select_slot', 'Please Select a Slot', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2139, 'bill_summary', 'Bill Summary', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2140, 'slot', 'Slot', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2141, 'hour', 'Hour', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2142, 'slot_type', 'Slot Type', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2143, 'zone', 'Zone', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2144, 'ttime', 'Time', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2145, 'slot_no', 'Slot No', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2146, 'whatsapp', 'Whatsapp', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2147, 'whatsapp_chat', 'Whatsapp Chat', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2148, 'whatsapp_phone_numer_internation_standard', 'Whatsapp phone Numer International Standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2149, 'whatsapp_phone_numer', 'Whatsapp Phone Numer', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2150, 'whatsapp_setting', 'Whatsapp Setting', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2151, 'hello,_how_can_we_help_you?', 'Hello, How can we help you?', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2152, 'ischatenable', 'Chat Enable', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2153, 'wporder_enable', 'WhatsApp Booking Enable', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2154, 'whatsorderplace', 'Do you want to Chat on WhatsApp??', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2155, 'hall', 'Hall', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2156, 'hall_room', 'Hall Room', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2157, 'hallroom_booking', 'Hall Room Booking', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2158, 'hallroom_type', 'Hall Room Type', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2159, 'hallroom_assign', 'Hall Room Assign', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2160, 'hallroom_facility', 'Hall Room Facility', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2161, 'hallroom_status', 'Hall Room Status', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2162, 'seatplan', 'Seatplan', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2163, 'event_name', 'Event Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2164, 'event_type', 'Event Type', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2165, 'plan_name', 'Plan Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2166, 'hours', 'Hours', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2167, 'booked', 'Booked', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2168, 'refunded', 'Refunded', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2169, 'transport_facility', 'Transport Facility', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2170, 'flight_details_list', 'Flight Details List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2171, 'fl_details_add', 'Flight Details Add', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2172, 'flight_num', 'Flight Number', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2173, 'airlience_name', 'Airlience Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2174, 'departure', 'Departure', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2175, 'arrival', 'Arrival', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2176, 'fly_from', 'Fly From', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2177, 'fly_to', 'Fly To', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2178, 'fl_details_update', 'Flight Details Update', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2179, 'vehicle_details_list', 'Vehicle Details List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2180, 'vehicle_details_add', 'Vehicle Details Add', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2181, 'vehicle_details_edit', 'Vehicle Details Update', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2182, 'vehicle_number', 'Vehicle Number', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2183, 'vehicle_type', 'Vehicle Type', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2184, 'fuel_type', 'Fuel Type', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2185, 'seat_capacity', 'Seat Capacity', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2186, 'driver', 'Driver', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2187, 'vehicle_booking_report', 'Vehicle Booking Report', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2188, 'vehicle_booking_list', 'Vehicle Booking List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2189, 'vehicle_booking_add', 'Vehicle Booking Add', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2190, 'vehicle_booking_edit', 'Vehicle Booking Update', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2191, 'transportation_type', 'Transportation Type', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2192, 'assigned_driver', 'Assigned Driver', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2193, 'pick_up', 'Pick Up', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2194, 'drop_off', 'Drop Off', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2195, 'transportation_time', 'Transportation Time', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `leave_apply`
--

CREATE TABLE `leave_apply` (
  `leave_appl_id` int(11) NOT NULL,
  `employee_id` varchar(20) NOT NULL,
  `leave_type_id` int(2) NOT NULL,
  `apply_strt_date` varchar(20) NOT NULL,
  `apply_end_date` varchar(20) NOT NULL,
  `apply_day` int(11) NOT NULL,
  `leave_aprv_strt_date` varchar(20) NOT NULL,
  `leave_aprv_end_date` varchar(20) NOT NULL,
  `num_aprv_day` varchar(15) NOT NULL,
  `reason` varchar(100) NOT NULL,
  `apply_hard_copy` text DEFAULT NULL,
  `apply_date` varchar(20) NOT NULL,
  `approve_date` varchar(20) NOT NULL,
  `approved_by` varchar(30) NOT NULL,
  `leave_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leave_type`
--

CREATE TABLE `leave_type` (
  `leave_type_id` int(2) NOT NULL,
  `leave_type` varchar(50) NOT NULL,
  `leave_days` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `leave_type`
--

INSERT INTO `leave_type` (`leave_type_id`, `leave_type`, `leave_days`) VALUES
(3, 'Annual leave', 28),
(4, 'Sick leave ', 126),
(5, 'Maternity leave ', 84),
(6, 'Unpaid Leave', 0),
(7, 'Compassionate leave ', 4);

-- --------------------------------------------------------

--
-- Table structure for table `loan_installment`
--

CREATE TABLE `loan_installment` (
  `loan_inst_id` int(11) NOT NULL,
  `employee_id` varchar(21) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `loan_id` varchar(21) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `installment_amount` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `payment` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `date` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `received_by` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `installment_no` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '1',
  `notes` varchar(80) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `marital_info`
--

CREATE TABLE `marital_info` (
  `id` int(11) NOT NULL,
  `marital_sta` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `membership`
--

CREATE TABLE `membership` (
  `id` int(11) NOT NULL,
  `membership_name` varchar(250) NOT NULL,
  `discount` float NOT NULL,
  `other_facilities` varchar(255) NOT NULL,
  `create_by` int(11) NOT NULL,
  `create_date` date NOT NULL,
  `update_by` int(11) NOT NULL,
  `update_date` date NOT NULL,
  `startpoint` int(11) NOT NULL,
  `endpoint` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menu_add_on`
--

CREATE TABLE `menu_add_on` (
  `row_id` bigint(20) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `add_on_id` int(11) NOT NULL,
  `is_active` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `datetime` datetime NOT NULL,
  `sender_status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=unseen, 1=seen, 2=delete',
  `receiver_status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=unseen, 1=seen, 2=delete'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

CREATE TABLE `module` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `directory` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `module`
--

INSERT INTO `module` (`id`, `name`, `description`, `image`, `directory`, `status`) VALUES
(2, 'Restaurent Module', 'This is a POS system. Using this module you can manage a restaurent and order food for In house customer, outside customer and old customer.', 'application/modules/ordermanage/assets/images/thumbnail.jpg', 'ordermanage', 1),
(3, 'Day Closing', 'Close specific users cash based on their counter', 'application/modules/day_closing/assets/images/thumbnail.jpg', 'day_closing', 1),
(4, 'Duty Roster', 'Manage your hotel employee\'s shift time which are assigned in different position and different time and get employee list which are assigned in current roster', 'application/modules/duty_roster/assets/images/thumbnail.jpg', 'duty_roster', 1),
(5, 'Stripe', 'Stripe payment gateway', 'application/modules/stripe/assets/images/thumbnail.jpg', 'stripe', 1),
(6, 'House Keeping', 'House keeping module provides room service, laundry service and it also has house keeping android app for managing room cleanig with QR code ', 'application/modules/house_keeping/assets/images/thumbnail.jpg', 'house_keeping', 1),
(8, 'WhatsApp', 'WhatsApp Chat & Booking', 'application/modules/whatsapp/assets/images/thumbnail.jpg', 'whatsapp', 1),
(9, 'Hall room', 'Hall room reservation', 'application/modules/hall_room/assets/images/thumbnail.jpg', 'hall_room', 1),
(10, 'Razorpay', 'Razorpay payment gateway', 'application/modules/razorpay/assets/images/thumbnail.jpg', 'razorpay', 1),
(11, 'Transport Facility', 'Pick up and drop off Customer From airport To hotel or hotel to airport based on customer openion.', 'application/modules/transport_facility/assets/images/thumbnail.jpg', 'transport_facility', 1);

-- --------------------------------------------------------

--
-- Table structure for table `module_permission`
--

CREATE TABLE `module_permission` (
  `id` int(11) NOT NULL,
  `fk_module_id` int(11) NOT NULL,
  `fk_user_id` int(11) NOT NULL,
  `create` tinyint(1) DEFAULT NULL,
  `read` tinyint(1) DEFAULT NULL,
  `update` tinyint(1) DEFAULT NULL,
  `delete` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `multipay_bill`
--

CREATE TABLE `multipay_bill` (
  `multipay_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `multipayid` varchar(30) DEFAULT NULL,
  `payment_type_id` int(11) NOT NULL,
  `payment_acc_number` varchar(100) DEFAULT NULL,
  `amount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notice_board`
--

CREATE TABLE `notice_board` (
  `notice_id` int(11) NOT NULL,
  `notice_descriptiion` text NOT NULL,
  `notice_date` date NOT NULL,
  `notice_type` varchar(50) NOT NULL,
  `notice_by` varchar(50) NOT NULL,
  `notice_attachment` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_menu`
--

CREATE TABLE `order_menu` (
  `row_id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `price` decimal(19,3) DEFAULT 0.000,
  `groupmid` int(11) DEFAULT 0,
  `notes` varchar(255) DEFAULT NULL,
  `menuqty` float NOT NULL,
  `add_on_id` varchar(100) NOT NULL,
  `addonsqty` varchar(100) NOT NULL,
  `varientid` int(11) NOT NULL,
  `groupvarient` int(11) DEFAULT NULL,
  `addonsuid` int(11) DEFAULT NULL,
  `qroupqty` int(11) DEFAULT NULL,
  `isgroup` int(11) DEFAULT 0,
  `food_status` int(11) DEFAULT 0,
  `allfoodready` int(11) DEFAULT NULL,
  `isupdate` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `page_title`
--

CREATE TABLE `page_title` (
  `pageid` int(11) NOT NULL,
  `home` text NOT NULL,
  `aboutus` text NOT NULL,
  `contactus` text NOT NULL,
  `gallery` text NOT NULL,
  `roomlist` text NOT NULL,
  `roomdetails` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `page_title`
--

INSERT INTO `page_title` (`pageid`, `home`, `aboutus`, `contactus`, `gallery`, `roomlist`, `roomdetails`) VALUES
(1, 'Welcome to MAC&JAK RESORT', 'About MAC&JAK RESORT', 'Contact MAC&JAK RESORT', 'MAC&JAK Gallerys', 'Rooms MAC&JAK RESORT', 'Rooms MAC&JAK RESORT');

-- --------------------------------------------------------

--
-- Table structure for table `paymentsetup`
--

CREATE TABLE `paymentsetup` (
  `setupid` int(11) NOT NULL,
  `paymentid` int(11) NOT NULL,
  `marchantid` varchar(255) DEFAULT NULL,
  `service_type` text NOT NULL,
  `endpoint` text NOT NULL,
  `payment_url` text NOT NULL,
  `password` varchar(120) NOT NULL,
  `email` varchar(100) NOT NULL,
  `currency` varchar(20) NOT NULL,
  `Islive` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `paymentsetup`
--

INSERT INTO `paymentsetup` (`setupid`, `paymentid`, `marchantid`, `service_type`, `endpoint`, `payment_url`, `password`, `email`, `currency`, `Islive`, `status`) VALUES
(6, 1, '256275E8-08B6-4CA4-8688-D0E86FFEA25D', '93954', 'https://secure.3gdirectpay.com/API/v6/', 'https://secure.3gdirectpay.com/payv3.php?ID=', '', '', 'USD', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `payment_method`
--

CREATE TABLE `payment_method` (
  `payment_method_id` tinyint(4) NOT NULL,
  `payment_method` varchar(100) NOT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `payment_method`
--

INSERT INTO `payment_method` (`payment_method_id`, `payment_method`, `is_active`) VALUES
(1, 'Direct Pay(DPO)', 1);

-- --------------------------------------------------------

--
-- Table structure for table `payroll_holiday`
--

CREATE TABLE `payroll_holiday` (
  `payrl_holi_id` int(11) UNSIGNED NOT NULL,
  `holiday_name` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `start_date` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `end_date` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `no_of_days` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `created_by` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `updated_by` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `payroll_holiday`
--

INSERT INTO `payroll_holiday` (`payrl_holi_id`, `holiday_name`, `start_date`, `end_date`, `no_of_days`, `created_by`, `updated_by`) VALUES
(4, 'Dussehra', '2021-09-15', '', '1', '', ''),
(5, 'Vijayadashami', '2021-10-15', '2021-10-15', '1', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `payroll_tax_setup`
--

CREATE TABLE `payroll_tax_setup` (
  `tax_setup_id` int(11) UNSIGNED NOT NULL,
  `start_amount` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `end_amount` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `rate` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `status` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pay_frequency`
--

CREATE TABLE `pay_frequency` (
  `id` int(11) NOT NULL,
  `frequency_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE `position` (
  `pos_id` int(10) UNSIGNED NOT NULL,
  `position_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `position_details` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`pos_id`, `position_name`, `position_details`) VALUES
(1, 'Chef', 'Menu Design, Food Preparation, Inventory Control'),
(2, 'HR Specialist', 'HR Management'),
(3, 'HSEQ Specialist', 'HSEQ'),
(6, 'House Keeping Attendant', 'House Keeping'),
(7, 'Accountant', 'Accountanting'),
(9, 'Kitchen Assistant', 'Kitchen Assistant'),
(13, 'Security Specialist', 'Security'),
(14, 'General Manager', 'General Manager'),
(17, 'Driver', 'Driving Duties'),
(18, 'Assistant Chef', 'Assistant Chef'),
(19, 'Kitchen Assistant', 'Kitchen Assistant'),
(20, 'Service Attendant', 'Service Attendant'),
(21, 'Bar MAN', 'Bar MAN'),
(22, 'Wellness Supervisor', 'Wellness Supervisor'),
(23, 'Gym/Pool Technician', 'Gym/Pool Technician'),
(24, 'SPA Therapist', 'SPA Therapist'),
(25, 'Gardener', 'Gardener'),
(26, 'F&B Supervisor', 'F&B Supervisor'),
(27, 'Director of Business Development', 'Director of Business Development'),
(28, 'Procurement Officer', 'Procurement'),
(29, 'IT Specialist', 'IT'),
(30, 'Marketing Specialist', 'Marketing'),
(31, 'Technician', 'Maintenance, Service & Repair'),
(32, 'Inventory Officer', 'Inventory Control');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_name` varchar(250) NOT NULL,
  `category_id` int(11) NOT NULL DEFAULT 1,
  `uom_id` int(11) NOT NULL,
  `stock` int(100) DEFAULT 0,
  `used` int(100) DEFAULT 0,
  `destroyed` int(11) NOT NULL DEFAULT 0,
  `reuseable` int(3) NOT NULL DEFAULT 0 COMMENT '0=No,1=Yes',
  `is_active` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `promocode`
--

CREATE TABLE `promocode` (
  `promocodeid` int(11) NOT NULL,
  `roomid` int(11) NOT NULL,
  `startdate` date NOT NULL,
  `enddate` date NOT NULL,
  `promocode` text NOT NULL,
  `discount` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchaseitem`
--

CREATE TABLE `purchaseitem` (
  `purID` int(11) NOT NULL,
  `invoiceid` varchar(50) DEFAULT NULL,
  `suplierID` int(11) NOT NULL,
  `total_price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `details` text DEFAULT NULL,
  `purchasedate` date NOT NULL,
  `purchaseexpiredate` date NOT NULL,
  `savedby` int(11) NOT NULL,
  `status` varchar(3) DEFAULT '0' COMMENT '0=unpaid,1=paid'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_details`
--

CREATE TABLE `purchase_details` (
  `detailsid` int(11) NOT NULL,
  `purchaseid` int(11) NOT NULL,
  `proid` int(11) NOT NULL,
  `quantity` decimal(10,2) NOT NULL DEFAULT 0.00,
  `unitname` varchar(80) NOT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `totalprice` decimal(10,2) NOT NULL DEFAULT 0.00,
  `purchaseby` int(11) NOT NULL,
  `purchasedate` date NOT NULL,
  `purchaseexpiredate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_return`
--

CREATE TABLE `purchase_return` (
  `preturn_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `po_no` varchar(120) NOT NULL,
  `return_date` date NOT NULL,
  `totalamount` float NOT NULL,
  `totaldiscount` float NOT NULL,
  `return_reason` varchar(250) NOT NULL,
  `createby` int(11) NOT NULL,
  `createdate` datetime NOT NULL,
  `updateby` int(11) NOT NULL,
  `updatedate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_return_details`
--

CREATE TABLE `purchase_return_details` (
  `preturn_id` int(11) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `qty` int(11) NOT NULL,
  `product_rate` float NOT NULL,
  `store_id` int(11) NOT NULL,
  `discount` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rate_type`
--

CREATE TABLE `rate_type` (
  `id` int(11) NOT NULL,
  `r_type_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rest_table`
--

CREATE TABLE `rest_table` (
  `tableid` int(11) NOT NULL,
  `tablename` varchar(50) NOT NULL,
  `person_capicity` int(11) NOT NULL,
  `table_icon` varchar(255) NOT NULL,
  `floor` int(11) DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '1=booked,0=free'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roomdetails`
--

CREATE TABLE `roomdetails` (
  `roomid` int(11) NOT NULL,
  `roomtype` varchar(255) NOT NULL,
  `roomsize` int(11) NOT NULL,
  `roomsizemesurement` varchar(255) NOT NULL,
  `roomactive` int(11) NOT NULL,
  `bedsno` int(11) NOT NULL,
  `bedstype` int(255) NOT NULL,
  `number_of_star` int(10) DEFAULT 4,
  `roomdescription` varchar(255) NOT NULL,
  `reservecondition` text DEFAULT NULL,
  `roomstatus` int(11) NOT NULL DEFAULT 0,
  `capacity` int(11) NOT NULL,
  `exbedcapability` int(11) NOT NULL DEFAULT 1,
  `child_limit` int(11) DEFAULT 0,
  `rate` decimal(10,2) NOT NULL DEFAULT 0.00,
  `bedcharge` decimal(10,0) NOT NULL,
  `personcharge` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `roomdetails`
--

INSERT INTO `roomdetails` (`roomid`, `roomtype`, `roomsize`, `roomsizemesurement`, `roomactive`, `bedsno`, `bedstype`, `number_of_star`, `roomdescription`, `reservecondition`, `roomstatus`, `capacity`, `exbedcapability`, `child_limit`, `rate`, `bedcharge`, `personcharge`) VALUES
(1, 'Economic Room', 300, '16', 1, 1, 13, 3, 'Our Economic Rooms offer a King-size bed combining comfort and functionality.', 'ECONOMIC ROOM', 0, 2, 1, NULL, 90.00, 90, 90),
(3, 'Deluxe Room', 400, '10', 1, 1, 13, 4, 'Our Delux Rooms offer a King-size bed combining comfort and functionality.', '', 0, 1, 0, NULL, 120.00, 60, 60),
(5, 'Executive Room', 400, '14', 1, 1, 16, 5, 'Our Executive Rooms offer a King-size bed combining comfort and functionality.', '', 0, 1, 1, NULL, 130.00, 65, 65),
(6, 'Standard Room', 400, '14', 1, 1, 16, 5, 'Our Standard Rooms offer a King-size bed combining comfort and functionality.', '', 0, 1, 0, NULL, 112.00, 56, 56),
(7, 'Twin Rooms', 400, '10', 1, 1, 13, 4, 'Our Twin Rooms offer two bedrooms, each featuring a single bed, combining comfort and functionality.', '', 0, 1, 0, NULL, 112.00, 112, 56),
(8, 'One Bedroom Apartment', 400, '14', 1, 1, 16, 5, 'Our Standard Rooms offer a King-size bed or two single beds, combining comfort and functionality.', '', 0, 2, 1, NULL, 175.00, 86, 86),
(9, 'Two Bedroom Apartment', 400, '10', 1, 1, 13, 5, 'Our Two Bedroom Rooms offer two single  king size beds, combining comfort and functionality.', '', 0, 2, 1, NULL, 185.00, 93, 93);

-- --------------------------------------------------------

--
-- Table structure for table `roomfacilitydetails`
--

CREATE TABLE `roomfacilitydetails` (
  `facilityid` int(11) NOT NULL,
  `facilitytypeid` int(11) NOT NULL,
  `facilitytitle` varchar(255) NOT NULL,
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `roomfacilitydetails`
--

INSERT INTO `roomfacilitydetails` (`facilityid`, `facilitytypeid`, `facilitytitle`, `image`) VALUES
(1, 1, 'asbnbhjvhcsvd', 'application/modules/room_facilities/assets/images/2024-10-03/R.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `roomfacilitytype`
--

CREATE TABLE `roomfacilitytype` (
  `facilitytypeid` int(11) NOT NULL,
  `facilitytypetitle` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `roomfacilitytype`
--

INSERT INTO `roomfacilitytype` (`facilitytypeid`, `facilitytypetitle`) VALUES
(1, 'GYM');

-- --------------------------------------------------------

--
-- Table structure for table `roomfaility_ref_accomodation`
--

CREATE TABLE `roomfaility_ref_accomodation` (
  `accomodationid` int(11) NOT NULL,
  `facilititypeid` int(11) NOT NULL,
  `facilityid` int(11) NOT NULL,
  `room_id` int(11) DEFAULT NULL,
  `hallid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `roomfaility_ref_accomodation`
--

INSERT INTO `roomfaility_ref_accomodation` (`accomodationid`, `facilititypeid`, `facilityid`, `room_id`, `hallid`) VALUES
(1, 1, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roomsizemesurement`
--

CREATE TABLE `roomsizemesurement` (
  `mesurementid` int(11) NOT NULL,
  `roommesurementitle` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `roomsizemesurement`
--

INSERT INTO `roomsizemesurement` (`mesurementid`, `roommesurementitle`) VALUES
(10, 'Double'),
(11, 'Triple'),
(12, 'Quad'),
(13, 'Queen'),
(14, 'King'),
(15, 'Twin'),
(16, 'Double-Double'),
(17, 'Executive Suite');

-- --------------------------------------------------------

--
-- Table structure for table `room_amenities`
--

CREATE TABLE `room_amenities` (
  `id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `amenity` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `room_amenities`
--

INSERT INTO `room_amenities` (`id`, `room_id`, `amenity`, `created_at`) VALUES
(8, 9, '24-hour room service', '2024-10-20 13:08:54'),
(12, 9, 'Flat-screen TV with satellite channels', '2024-10-20 13:10:08'),
(13, 1, 'Free Wi-Fi', '2024-10-20 13:10:23'),
(15, 9, 'Detoxification treatment', '2024-10-20 13:11:43'),
(21, 9, 'Kitchen', '2024-10-20 23:35:15'),
(22, 9, 'Minibar', '2024-10-20 23:35:29'),
(24, 9, 'Air conditioning', '2024-10-20 23:36:44'),
(25, 9, 'Bathrobe & Slippers', '2024-10-20 23:38:58'),
(26, 1, ' Room service', '2024-10-20 23:49:45'),
(27, 9, 'Free WiFi', '2024-10-20 23:51:38'),
(28, 1, 'Air condition', '2024-10-20 23:52:06'),
(29, 1, 'TV with satellite channels', '2024-10-20 23:52:43'),
(30, 1, 'Bathrobe ', '2024-10-20 23:53:08'),
(31, 1, 'Slippers', '2024-10-20 23:53:18'),
(32, 1, 'Complimentary Detoxification treatment', '2024-10-20 23:53:59'),
(33, 3, 'Flat-screen TV ', '2024-10-20 23:56:07'),
(34, 3, 'Air Conditioning.', '2024-10-20 23:57:14'),
(35, 3, '24-hours room service', '2024-10-20 23:57:42'),
(36, 3, 'Detoxification treatment.', '2024-10-20 23:58:25'),
(37, 3, 'Bathrobe & Slippers.', '2024-10-20 23:58:59'),
(38, 5, 'Air condition.', '2024-10-20 23:59:52'),
(39, 5, 'Flat screen TV', '2024-10-21 00:00:35'),
(40, 5, 'Free  Internet', '2024-10-21 00:01:14'),
(41, 5, 'Bathrobes & Slippers', '2024-10-21 00:01:37'),
(42, 7, 'Air-conditioning', '2024-10-21 00:02:51'),
(43, 7, 'Complimentary wireless Internet', '2024-10-21 00:03:18'),
(44, 7, 'Bathrobes', '2024-10-21 00:03:57'),
(45, 7, 'Slippers.', '2024-10-21 00:04:21'),
(46, 7, 'Room services', '2024-10-21 00:04:48'),
(48, 7, 'Free-Wifi', '2024-10-21 08:31:26'),
(49, 8, '24-hours room service', '2024-10-21 11:29:59'),
(50, 8, 'Air conditioning', '2024-10-21 11:30:24'),
(51, 8, 'Detoxification treatment.', '2024-10-21 11:30:46'),
(52, 8, 'Flat-screen TV', '2024-10-21 11:31:13'),
(53, 8, 'Kitchen', '2024-10-21 11:31:47'),
(54, 8, 'Minibar', '2024-10-21 11:32:05'),
(55, 8, 'Free W-iFi', '2024-10-21 11:32:24'),
(56, 6, '24-hour room service', '2024-10-21 11:39:58'),
(57, 6, 'Flat-screen TV with satellite channels', '2024-10-21 11:40:13'),
(58, 6, 'Detoxification treatment', '2024-10-21 11:40:26'),
(59, 6, 'Free WiFi', '2024-10-21 11:40:39'),
(60, 6, 'Bathrobe & Slippers', '2024-10-21 11:40:52'),
(61, 6, 'Air conditioning', '2024-10-21 11:41:04');

-- --------------------------------------------------------

--
-- Table structure for table `room_image`
--

CREATE TABLE `room_image` (
  `room_img_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `room_imagename` varchar(255) NOT NULL,
  `room_gallery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `room_image`
--

INSERT INTO `room_image` (`room_img_id`, `room_id`, `room_imagename`, `room_gallery`) VALUES
(2, 8, 'application/modules/room_setting/assets/images/2024-10-25/21.jpg', 'application/modules/room_setting/assets/images/668ad46730faa2ac0db70e0288fa8aa5.jpg,application/modules/room_setting/assets/images/0b2c812cbf59ed563ec914523d1c0151.jpg,application/modules/room_setting/assets/images/93f010c491320ccebc4ec85ec6328df0.jpg,application/modules/room_setting/assets/images/3bef3580e7f76fb3f72b473fca9d2d9f.jpg,application/modules/room_setting/assets/images/b5e21f7fe0b433c365a25dbc4fc8e3a5.jpg'),
(3, 3, 'application/modules/room_setting/assets/images/2024-10-25/25.jpg', 'application/modules/room_setting/assets/images/0b2c812cbf59ed563ec914523d1c0151.jpg,application/modules/room_setting/assets/images/93f010c491320ccebc4ec85ec6328df0.jpg,application/modules/room_setting/assets/images/b5e21f7fe0b433c365a25dbc4fc8e3a5.jpg'),
(5, 5, 'application/modules/room_setting/assets/images/2024-10-25/24.jpg', 'application/modules/room_setting/assets/images/668ad46730faa2ac0db70e0288fa8aa5.jpg,application/modules/room_setting/assets/images/e4e84060731e0edcf0e1116aa0661e03.jpg,application/modules/room_setting/assets/images/ec7843437861c79cd1da930f10d3e460.jpg'),
(14, 6, 'application/modules/room_setting/assets/images/2024-10-25/23.jpg', 'application/modules/room_setting/assets/images/d052b8ea71a54cc497c2a82599d2007d.jpg,application/modules/room_setting/assets/images/e4e84060731e0edcf0e1116aa0661e03.jpg,application/modules/room_setting/assets/images/0b2c812cbf59ed563ec914523d1c0151.jpg,application/modules/room_setting/assets/images/93f010c491320ccebc4ec85ec6328df0.jpg'),
(15, 9, 'application/modules/room_setting/assets/images/2024-10-25/2.jpg', 'application/modules/room_setting/assets/images/d052b8ea71a54cc497c2a82599d2007d.jpg,application/modules/room_setting/assets/images/668ad46730faa2ac0db70e0288fa8aa5.jpg,application/modules/room_setting/assets/images/e4e84060731e0edcf0e1116aa0661e03.jpg,application/modules/room_setting/assets/images/9a0caf4891273f3677a7ef6117be47f5.jpg'),
(18, 1, 'application/modules/room_setting/assets/images/2024-10-25/26.jpg', 'application/modules/room_setting/assets/images/62bf1edb36141f114521ec4bb4175579.jpg,application/modules/room_setting/assets/images/8df7b73a7820f4aef47864f2a6c5fccf.jpg,application/modules/room_setting/assets/images/4ed21586451bfacc146963bc1d1e40bc.jpg'),
(19, 7, 'application/modules/room_setting/assets/images/2024-10-25/22.jpg', 'application/modules/room_setting/assets/images/668ad46730faa2ac0db70e0288fa8aa5.jpg,application/modules/room_setting/assets/images/9a0caf4891273f3677a7ef6117be47f5.jpg,application/modules/room_setting/assets/images/93f010c491320ccebc4ec85ec6328df0.jpg,application/modules/room_setting/assets/images/ec7843437861c79cd1da930f10d3e460.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `salary_setup_header`
--

CREATE TABLE `salary_setup_header` (
  `s_s_h_id` int(11) UNSIGNED NOT NULL,
  `employee_id` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `salary_payable` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `absent_deduct` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tax_manager` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `status` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `salary_sheet_generate`
--

CREATE TABLE `salary_sheet_generate` (
  `ssg_id` int(11) UNSIGNED NOT NULL,
  `employee_id` varchar(20) NOT NULL,
  `name` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `gdate` varchar(20) DEFAULT NULL,
  `start_date` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `end_date` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `generate_by` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `salary_type`
--

CREATE TABLE `salary_type` (
  `salary_type_id` int(10) UNSIGNED NOT NULL,
  `sal_name` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `emp_sal_type` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `default_amount` varchar(30) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `salary_type`
--

INSERT INTO `salary_type` (`salary_type_id`, `sal_name`, `emp_sal_type`, `default_amount`, `status`) VALUES
(1, 'Basic Salary', '1', '', ''),
(2, 'Payee', '0', '', ''),
(3, 'NSSF', '0', '', ''),
(4, 'Leave Compensation', '1', '', ''),
(6, 'NHIF', '0', '', ''),
(7, 'Overtime', '1', '', ''),
(8, 'Phone Allowance', '1', '', ''),
(9, 'House Allowance', '1', '', ''),
(10, 'Transport Allowance', '1', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `sampledata`
--

CREATE TABLE `sampledata` (
  `brand` varchar(30) NOT NULL,
  `dealer_name` varchar(30) NOT NULL,
  `authorized` varchar(30) NOT NULL,
  `address` varchar(30) NOT NULL,
  `contact_no` varchar(30) NOT NULL,
  `mobile_no` varchar(30) NOT NULL,
  `fax` varchar(30) NOT NULL,
  `email_id` varchar(30) NOT NULL,
  `website_addr` varchar(30) NOT NULL,
  `state` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `schdule_purchse_info`
--

CREATE TABLE `schdule_purchse_info` (
  `id` int(11) NOT NULL,
  `purchase_key` varchar(100) DEFAULT NULL,
  `domain` varchar(200) DEFAULT NULL,
  `ip_address` varchar(100) DEFAULT NULL,
  `port` varchar(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sec_menu_item`
--

CREATE TABLE `sec_menu_item` (
  `menu_id` int(11) NOT NULL,
  `menu_title` varchar(200) DEFAULT NULL,
  `page_url` varchar(250) DEFAULT NULL,
  `module` varchar(200) DEFAULT NULL,
  `parent_menu` int(11) DEFAULT NULL,
  `is_report` tinyint(1) DEFAULT NULL,
  `createby` int(11) NOT NULL,
  `createdate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `sec_menu_item`
--

INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES
(1, 'c_o_a', 'treeview', 'accounts', 0, 0, 1, '2019-06-12 00:00:00'),
(2, 'debit_voucher', 'debit_voucher', 'accounts', 0, 0, 1, '2019-06-12 00:00:00'),
(3, 'credit_voucher', 'credit_voucher', 'accounts', 0, 0, 1, '2019-06-12 00:00:00'),
(4, 'contra_voucher', 'contra_voucher', 'accounts', 0, 0, 1, '2019-06-12 00:00:00'),
(5, 'journal_voucher', 'journal_voucher', 'accounts', 0, 0, 1, '2019-06-12 00:00:00'),
(6, 'voucher_approval', 'voucher_approval', 'accounts', 0, 0, 1, '2019-06-12 00:00:00'),
(7, 'account_report', '', 'accounts', 0, 0, 1, '2019-06-12 00:00:00'),
(8, 'voucher_report', 'coa', 'accounts', 7, 0, 1, '2019-06-12 00:00:00'),
(9, 'cash_book', 'cash_book', 'accounts', 7, 0, 1, '2019-06-12 00:00:00'),
(10, 'bank_book', 'bank_book', 'accounts', 7, 0, 1, '2019-06-16 00:00:00'),
(11, 'general_ledger', 'general_ledger', 'accounts', 7, 0, 1, '2019-06-16 00:00:00'),
(12, 'trial_balance', 'trial_balance', 'accounts', 7, 0, 1, '2019-06-16 00:00:00'),
(13, 'profit_loss', 'profit_loss_report', 'accounts', 7, 0, 1, '2019-06-16 00:00:00'),
(14, 'cash_flow', 'cash_flow_report', 'accounts', 7, 0, 1, '2019-06-16 00:00:00'),
(15, 'coa_print', 'coa_print', 'accounts', 7, 0, 1, '2019-06-16 00:00:00'),
(16, 'hrm', '', 'hrm', 0, 0, 1, '2019-06-16 00:00:00'),
(17, 'attendance', 'Home', 'hrm', 0, 0, 1, '2019-06-16 00:00:00'),
(18, 'atn_form', 'atnview', 'hrm', 17, 0, 1, '2019-06-16 00:00:00'),
(19, 'atn_report', 'attendance_list', 'hrm', 17, 0, 1, '2019-06-16 00:00:00'),
(20, 'award', 'Award_controller', 'hrm', 0, 0, 1, '2019-06-16 00:00:00'),
(21, 'new_award', 'create_award', 'hrm', 20, 0, 1, '2019-06-16 00:00:00'),
(22, 'circularprocess', 'Candidate', 'hrm', 0, 0, 1, '2019-06-16 00:00:00'),
(23, 'add_canbasic_info', 'caninfo_create', 'hrm', 22, 0, 1, '2019-06-16 00:00:00'),
(24, 'can_basicinfo_list', 'canInfoview', 'hrm', 22, 0, 1, '2019-06-16 00:00:00'),
(25, 'candidate_basic_info', 'Candidate_select', 'hrm', 0, 0, 1, '2019-06-16 00:00:00'),
(26, 'candidate_shortlist', 'shortlist_form', 'hrm', 25, 0, 1, '2019-06-16 00:00:00'),
(27, 'candidate_interview', 'interview_form', 'hrm', 25, 0, 1, '2019-06-16 00:00:00'),
(28, 'candidate_selection', 'selection_form', 'hrm', 25, 0, 1, '2019-06-16 00:00:00'),
(29, 'department', 'Department_controller', 'hrm', 0, 0, 1, '2019-06-16 00:00:00'),
(30, 'departmentfrm', 'create_dept', 'hrm', 29, 0, 1, '2019-06-16 00:00:00'),
(31, 'division', 'Division_controller', 'hrm', 0, 0, 1, '2019-06-16 00:00:00'),
(32, 'add_division', 'division_form', 'hrm', 31, 0, 1, '2019-06-16 00:00:00'),
(33, 'division_list', '', 'hrm', 0, 0, 1, '2019-06-16 00:00:00'),
(34, 'position', 'position_form', 'hrm', 0, 0, 1, '2019-06-16 00:00:00'),
(35, 'employee', '', 'hrm', 0, 0, 1, '2019-06-16 00:00:00'),
(36, 'add_employee', 'employ_form', 'hrm', 35, 0, 1, '2019-06-16 00:00:00'),
(37, 'manage_employee', 'employee_view', 'hrm', 35, 0, 1, '2019-06-16 00:00:00'),
(38, 'emp_performance', 'emp_performance_form', 'hrm', 35, 0, 1, '2019-06-16 00:00:00'),
(39, 'emp_sal_payment', 'paymentview', 'hrm', 35, 0, 1, '2019-06-16 00:00:00'),
(40, 'leave', 'leave', 'hrm', 0, 0, 1, '2019-06-16 00:00:00'),
(41, 'weekly_holiday', 'weeklyform', 'hrm', 40, 0, 1, '2019-06-16 00:00:00'),
(42, 'holiday', 'holiday_form', 'hrm', 40, 0, 1, '2019-06-16 00:00:00'),
(43, 'others_leave_application', 'others_leave', 'hrm', 40, 0, 1, '2019-06-16 00:00:00'),
(44, 'add_leave_type', 'leave_type_form', 'hrm', 40, 0, 1, '2019-06-16 00:00:00'),
(45, 'leave_application', 'others_leave', 'hrm', 40, 0, 1, '2019-06-16 00:00:00'),
(46, 'loan', 'loan', 'hrm', 0, 0, 1, '2019-06-16 00:00:00'),
(47, 'loan_grand', 'create_grandloan', 'hrm', 46, 0, 1, '2019-06-16 00:00:00'),
(48, 'loan_installment', 'create_installment', 'hrm', 46, 0, 1, '2019-06-16 00:00:00'),
(49, 'manage_installment', 'installmentView', 'hrm', 46, 0, 1, '2019-06-16 00:00:00'),
(50, 'manage_granted_loan', 'loan_view', 'hrm', 46, 0, 1, '2019-06-16 00:00:00'),
(51, 'loan_report', 'loan_report', 'hrm', 46, 0, 1, '2019-06-16 00:00:00'),
(52, 'payroll', 'payroll', 'hrm', 0, 0, 1, '2019-06-16 00:00:00'),
(53, 'salary_type_setup', 'create_salary_setup', 'hrm', 52, 0, 1, '2019-06-16 00:00:00'),
(54, 'manage_salary_setup', 'emp_salary_setup_view', 'hrm', 52, 0, 1, '2019-06-16 00:00:00'),
(55, 'salary_setup', 'create_s_setup', 'hrm', 52, 0, 1, '2019-06-16 00:00:00'),
(56, 'manage_salary_type', 'salary_setup_view', 'hrm', 52, 0, 1, '2019-06-16 00:00:00'),
(57, 'salary_generate', 'create_salary_generate', 'hrm', 52, 0, 1, '2019-06-16 00:00:00'),
(58, 'manage_salary_generate', 'salary_generate_view', 'hrm', 52, 0, 1, '2019-06-16 00:00:00'),
(59, 'purchase_item', 'index', 'purchase', 0, 0, 1, '2019-06-16 00:00:00'),
(60, 'purchase_add', 'create', 'purchase', 59, 0, 1, '2019-06-16 00:00:00'),
(61, 'purchase_return', 'return_form', 'purchase', 59, 0, 1, '2019-06-16 00:00:00'),
(62, 'return_invoice', 'return_invoice', 'purchase', 59, 0, 1, '2019-06-16 00:00:00'),
(63, 'report', 'report', 'reports', NULL, 0, 1, '2019-06-16 00:00:00'),
(64, 'purchase_report', 'index', 'reports', 63, 0, 1, '2019-06-16 00:00:00'),
(65, 'paymentmethod', '', 'payment_setting', 0, 0, 1, '2019-06-16 00:00:00'),
(66, 'paymentmethod_list', 'index', 'payment_setting', 65, 0, 1, '2019-06-16 00:00:00'),
(67, 'payment_add', 'create', 'payment_setting', 66, 0, 1, '2019-06-16 00:00:00'),
(68, 'customer', 'customer_info', 'customer', 0, 0, 1, '2019-06-16 00:00:00'),
(69, 'customer_add', 'create', 'customer', 68, 0, 1, '2019-06-16 00:00:00'),
(70, 'booking_report', 'index', 'reports', 63, 0, 1, '2019-06-16 00:00:00'),
(71, 'paymentmethod_setup', 'paymentsetup', 'payment_setting', 65, 0, 1, '2019-06-16 00:00:00'),
(72, 'room_facilities', 'index', 'room_facilities', 0, 0, 1, '2019-06-16 00:00:00'),
(73, 'faciliti_details_list', 'room_facilitidetails', 'room_facilities', 72, 0, 1, '2019-06-16 00:00:00'),
(74, 'roomsize_list', 'room_size', 'room_facilities', 72, 0, 1, '2019-06-16 00:00:00'),
(75, 'room_reservation', 'room_reservation', 'room_reservation', 0, 0, 0, '0000-00-00 00:00:00'),
(76, 'bed_list', 'index', 'room_setting', 0, 0, 1, '2019-06-16 00:00:00'),
(77, 'starclass_list', 'starclass', 'room_setting', 0, 0, 1, '2019-06-16 00:00:00'),
(78, 'bookingtype_list', 'booking_type', 'room_setting', 0, 0, 1, '2019-06-16 00:00:00'),
(79, 'floorplan_list', 'floorplan', 'room_setting', 0, 0, 1, '2019-06-16 00:00:00'),
(80, 'room_list', 'room_details', 'room_setting', 0, 0, 1, '2019-06-16 00:00:00'),
(81, 'room_image', 'room_images', 'room_setting', 0, 0, 1, '2019-06-16 00:00:00'),
(82, 'stock_report', 'stockreport', 'reports', 63, 0, 1, '2019-07-04 00:00:00'),
(83, 'customer_list', 'index', 'customer', 68, 0, 0, '0000-00-00 00:00:00'),
(84, 'units', NULL, 'units', 0, 0, 0, '0000-00-00 00:00:00'),
(85, 'unit_list', 'index', 'units', 84, 0, 0, '0000-00-00 00:00:00'),
(86, 'ingradient_list', 'index', 'units', 84, 0, 0, '0000-00-00 00:00:00'),
(87, 'supplier_list', 'index', 'units', 84, 0, 0, '0000-00-00 00:00:00'),
(88, 'booking_list', 'index', 'room_reservation', 75, 0, 1, '2019-06-16 00:00:00'),
(89, 'faciliti_list', NULL, 'room_facilities', 72, 0, 0, '0000-00-00 00:00:00'),
(91, 'booking_source', 'b_ty_details', 'room_setting', 0, 0, 1, '2021-06-06 00:00:00'),
(92, 'house_keeping', 'house-keeping', 'house_keeping', 0, 0, 1, '0000-00-00 00:00:00'),
(96, 'wakeup_call_list', 'wakeup_call_list', 'customer', 68, 0, 1, '2021-06-06 00:00:00'),
(97, 'categorylist', 'categorylist', 'units', 84, 0, 0, '2021-06-14 00:00:00'),
(110, 'complementary', 'complementary', 'room_setting', 0, 0, 1, '2021-07-14 00:00:00'),
(113, 'guest_list', 'guestlist', 'customer', 68, 0, 0, '0000-00-00 00:00:00'),
(116, 'tax_management', 'tax-management', 'tax_management', 0, 0, 1, '2021-08-21 00:00:00'),
(117, 'tax_list', 'tax-list', 'tax_management', 116, 0, 1, '2021-08-21 00:00:00'),
(119, 'destroyed_list', 'Destroyed-list', 'units', 84, 0, 1, '2021-08-23 00:00:00'),
(120, 'laundry', 'laundry', 'house_keeping', 92, 0, 1, '2021-08-24 00:00:00'),
(155, 'balance_sheet', 'balance-sheet', 'accounts', 7, 0, 1, '2021-10-04 00:00:00'),
(156, 'financial_year', 'financial-year', 'accounts', 7, 0, 1, '2021-10-11 00:00:00'),
(157, 'financial_year_end', 'financial-year-end', 'accounts', 7, 0, 1, '2021-10-12 00:00:00'),
(158, 'opening_balance', 'opening-balance', 'accounts', 7, 0, 1, '2021-10-13 00:00:00'),
(160, 'room_status', 'room-status', 'room_reservation', 75, 0, 1, '2021-10-25 00:00:00'),
(165, 'promocode', 'promocode', 'room_setting', 0, 0, 1, '2021-11-07 00:00:00'),
(202, 'checkin', 'checkin', 'room_reservation', 75, 0, 1, '2021-10-25 00:00:00'),
(203, 'checkout', 'checkout', 'room_reservation', 75, 0, 1, '2021-10-25 00:00:00'),
(214, 'ordermanage', '', 'ordermanage', 0, 0, 1, '2021-09-06 00:00:00'),
(215, 'pos_invoice', 'pos-invoice', 'ordermanage', 214, 0, 1, '2021-09-06 00:00:00'),
(216, 'order_list', 'order-list', 'ordermanage', 214, 0, 1, '2021-09-06 00:00:00'),
(217, 'pending_order', 'pending-order', 'ordermanage', 214, 0, 1, '2021-09-06 00:00:00'),
(218, 'complete_order', 'complete-list', 'ordermanage', 214, 0, 1, '2021-09-06 00:00:00'),
(219, 'cancel_order', 'cancel-list', 'ordermanage', 214, 0, 1, '2021-09-06 00:00:00'),
(220, 'kitchen_dashboard', 'kitchen', 'ordermanage', 214, 0, 1, '2021-09-06 00:00:00'),
(221, 'counter_dashboard', 'counter-board', 'ordermanage', 214, 0, 1, '2021-09-06 00:00:00'),
(222, 'counter_list', 'counter-list', 'ordermanage', 214, 0, 1, '2021-09-06 00:00:00'),
(223, 'pos_setting', 'pos-setting', 'ordermanage', 214, 0, 1, '2021-09-06 00:00:00'),
(224, 'sound_setting', 'sound-setting', 'ordermanage', 214, 0, 1, '2021-09-06 00:00:00'),
(225, 'table_manage', 'restauranttable', 'ordermanage', 0, 0, 1, '2021-09-06 00:00:00'),
(226, 'table_list', 'table-list', 'ordermanage', 225, 0, 1, '2021-09-06 00:00:00'),
(227, 'table_setting', 'table-setting', 'ordermanage', 225, 0, 1, '2021-09-06 00:00:00'),
(228, 'customer_type', 'customertype', 'ordermanage', 0, 0, 1, '2021-09-06 00:00:00'),
(229, 'customertype_list', 'customer-type', 'ordermanage', 228, 0, 1, '2021-09-06 00:00:00'),
(230, 'list_of_card_terminal', 'card-terminal', 'ordermanage', 228, 0, 1, '2021-09-06 00:00:00'),
(231, 'manage_category', 'item_category', 'ordermanage', 0, 0, 1, '2021-09-06 00:00:00'),
(232, 'add_category', 'category-create', 'ordermanage', 231, 0, 1, '2021-09-06 00:00:00'),
(233, 'category_list', 'category-list', 'ordermanage', 231, 0, 1, '2021-09-06 00:00:00'),
(234, 'manage_food', 'item_food', 'ordermanage', 0, 0, 1, '2021-09-06 00:00:00'),
(235, 'add_food', 'food-create', 'ordermanage', 234, 0, 1, '2021-09-06 00:00:00'),
(236, 'food_list', 'food-list', 'ordermanage', 234, 0, 1, '2021-09-06 00:00:00'),
(237, 'add_group_item', 'food-groop-create', 'ordermanage', 234, 0, 1, '2021-09-06 00:00:00'),
(238, 'food_varient', 'food-varient-list', 'ordermanage', 234, 0, 1, '2021-09-06 00:00:00'),
(239, 'food_availablity', 'food-available-list', 'ordermanage', 234, 0, 1, '2021-09-06 00:00:00'),
(240, 'menu_type', 'today-menu-type', 'ordermanage', 234, 0, 1, '2021-09-06 00:00:00'),
(241, 'manage_addons', 'menu_addons', 'ordermanage', 0, 0, 1, '2021-09-06 00:00:00'),
(242, 'add_adons', 'menu-addons-create', 'ordermanage', 241, 0, 1, '2021-09-06 00:00:00'),
(243, 'addons_list', 'menu-addons-list', 'ordermanage', 241, 0, 1, '2021-09-06 00:00:00'),
(244, 'assign_adons_list', 'assign-menu-addons', 'ordermanage', 241, 0, 1, '2021-09-06 00:00:00'),
(245, 'day_closing', 'day-closing', 'day_closing', 0, 0, 1, '2021-12-05 00:00:00'),
(246, 'counterlist', 'counter-list', 'day_closing', 245, 0, 1, '2021-12-03 00:00:00'),
(247, 'report', 'counter-list', 'day_closing', 245, 0, 1, '2021-12-03 00:00:00'),
(248, 'shift_mgt', 'Shift_management', 'duty_roster', 0, 0, 1, '2021-07-04 00:00:00'),
(249, 'shift_list', 'shift_list', 'duty_roster', 248, 0, 1, '2021-07-04 00:00:00'),
(250, 'shift_assign', 'shift_assign_list', 'duty_roster', 248, 0, 1, '2021-07-04 00:00:00'),
(251, 'roster_list', 'roster_list', 'duty_roster', 248, 0, 1, '2021-07-04 00:00:00'),
(252, 'attendance_dashboard', 'attendance_dashboard', 'duty_roster', 248, 0, 1, '2021-07-04 00:00:00'),
(253, 'room_cleaning', 'room-cleaning', 'house_keeping', 92, 0, 1, '2021-11-10 00:00:00'),
(254, 'assign_room_cleaning', 'house-keeping', 'house_keeping', 92, 0, 1, '2021-11-10 00:00:00'),
(255, 'payment', 'payment', 'house_keeping', 120, 0, 1, '2021-11-10 00:00:00'),
(256, 'records', 'records', 'house_keeping', 92, 0, 1, '2021-11-10 00:00:00'),
(257, 'checklist', 'checklist', 'house_keeping', 92, 0, 1, '2021-11-10 00:00:00'),
(258, 'roomqr_list', 'roomqr_list', 'house_keeping', 92, 0, 1, '2021-11-22 00:00:00'),
(259, 'reports', 'reports', 'house_keeping', 92, 0, 1, '2021-08-19 00:00:00'),
(260, 'laundry_list', 'laundry-list', 'house_keeping', 120, 0, 1, '2021-08-28 00:00:00'),
(261, 'reuse_list', 'reuse-list', 'house_keeping', 120, 0, 1, '2021-08-26 00:00:00'),
(262, 'item_cost', 'item-cost', 'house_keeping', 120, 0, 1, '2021-08-26 00:00:00'),
(270, 'add_whatsapp', 'whatsappback', 'whatsapp', 0, 0, 3, '2020-12-03 00:00:00'),
(271, 'whatsapp_api', 'showsetting', 'whatsapp', 270, 0, 3, '2020-12-03 00:00:00'),
(272, 'hall_room', 'hall-room', 'hall_room', 0, 0, 1, '2021-12-19 00:00:00'),
(273, 'hallroom_booking', 'hallroom-booking', 'hall_room', 272, 0, 1, '2021-12-19 00:00:00'),
(274, 'hallroom_status', 'hallroom-status', 'hall_room', 272, 0, 1, '2021-12-19 00:00:00'),
(275, 'hallroom_type', 'hallroom-type', 'hall_room', 272, 0, 1, '2021-12-19 00:00:00'),
(276, 'hallroom_assign', 'hallroom-assign', 'hall_room', 272, 0, 1, '2021-12-19 00:00:00'),
(277, 'hallroom_facility', 'hallroom-facility', 'hall_room', 272, 0, 1, '2021-12-19 00:00:00'),
(278, 'seatplan', 'seatplan', 'hall_room', 272, 0, 1, '2021-12-19 00:00:00'),
(279, 'report', 'report', 'hall_room', 272, 0, 1, '2021-12-19 00:00:00'),
(280, 'transport_facility', 'transport_facility', 'transport_facility', 0, 0, 1, '2021-10-20 00:00:00'),
(281, 'flight_details_list', 'flight-list', 'transport_facility', 280, 0, 1, '2021-10-20 00:00:00'),
(282, 'vehicle_details_list', 'vehicle-list', 'transport_facility', 280, 0, 1, '2021-06-06 00:00:00'),
(283, 'vehicle_booking_list', 'vehicle-booking-list', 'transport_facility', 280, 0, 1, '2021-06-06 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `sec_role_permission`
--

CREATE TABLE `sec_role_permission` (
  `id` bigint(20) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `can_access` tinyint(1) NOT NULL,
  `can_create` tinyint(1) NOT NULL,
  `can_edit` tinyint(1) NOT NULL,
  `can_delete` tinyint(1) NOT NULL,
  `createby` int(11) NOT NULL,
  `createdate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `sec_role_permission`
--

INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES
(493, 7, 1, 1, 1, 1, 1, 1, '2020-12-21 07:01:16'),
(494, 7, 2, 1, 1, 1, 1, 1, '2020-12-21 07:01:16'),
(495, 7, 3, 1, 1, 1, 1, 1, '2020-12-21 07:01:16'),
(496, 7, 4, 1, 1, 1, 1, 1, '2020-12-21 07:01:16'),
(497, 7, 5, 1, 1, 1, 1, 1, '2020-12-21 07:01:16'),
(498, 7, 6, 1, 1, 1, 1, 1, '2020-12-21 07:01:16'),
(499, 7, 7, 1, 1, 1, 1, 1, '2020-12-21 07:01:16'),
(500, 7, 8, 1, 1, 1, 1, 1, '2020-12-21 07:01:16'),
(501, 7, 9, 1, 1, 1, 1, 1, '2020-12-21 07:01:16'),
(502, 7, 10, 1, 1, 1, 1, 1, '2020-12-21 07:01:16'),
(503, 7, 11, 1, 1, 1, 1, 1, '2020-12-21 07:01:16'),
(504, 7, 12, 1, 1, 1, 1, 1, '2020-12-21 07:01:16'),
(505, 7, 13, 1, 1, 1, 1, 1, '2020-12-21 07:01:16'),
(506, 7, 14, 1, 1, 1, 1, 1, '2020-12-21 07:01:16'),
(507, 7, 15, 1, 1, 1, 1, 1, '2020-12-21 07:01:16'),
(508, 7, 68, 1, 1, 1, 1, 1, '2020-12-21 07:01:16'),
(509, 7, 69, 1, 1, 1, 1, 1, '2020-12-21 07:01:16'),
(510, 7, 16, 0, 0, 0, 0, 1, '2020-12-21 07:01:16'),
(511, 7, 17, 0, 0, 0, 0, 1, '2020-12-21 07:01:16'),
(512, 7, 18, 0, 0, 0, 0, 1, '2020-12-21 07:01:16'),
(513, 7, 19, 0, 0, 0, 0, 1, '2020-12-21 07:01:16'),
(514, 7, 20, 0, 0, 0, 0, 1, '2020-12-21 07:01:16'),
(515, 7, 21, 0, 0, 0, 0, 1, '2020-12-21 07:01:16'),
(516, 7, 22, 0, 0, 0, 0, 1, '2020-12-21 07:01:16'),
(517, 7, 23, 0, 0, 0, 0, 1, '2020-12-21 07:01:16'),
(518, 7, 24, 0, 0, 0, 0, 1, '2020-12-21 07:01:16'),
(519, 7, 25, 0, 0, 0, 0, 1, '2020-12-21 07:01:16'),
(520, 7, 26, 0, 0, 0, 0, 1, '2020-12-21 07:01:16'),
(521, 7, 27, 0, 0, 0, 0, 1, '2020-12-21 07:01:16'),
(522, 7, 28, 0, 0, 0, 0, 1, '2020-12-21 07:01:16'),
(523, 7, 29, 0, 0, 0, 0, 1, '2020-12-21 07:01:16'),
(524, 7, 30, 0, 0, 0, 0, 1, '2020-12-21 07:01:16'),
(525, 7, 31, 0, 0, 0, 0, 1, '2020-12-21 07:01:16'),
(526, 7, 32, 0, 0, 0, 0, 1, '2020-12-21 07:01:16'),
(527, 7, 33, 0, 0, 0, 0, 1, '2020-12-21 07:01:16'),
(528, 7, 34, 0, 0, 0, 0, 1, '2020-12-21 07:01:16'),
(529, 7, 35, 0, 0, 0, 0, 1, '2020-12-21 07:01:16'),
(530, 7, 36, 0, 0, 0, 0, 1, '2020-12-21 07:01:16'),
(531, 7, 37, 0, 0, 0, 0, 1, '2020-12-21 07:01:16'),
(532, 7, 38, 0, 0, 0, 0, 1, '2020-12-21 07:01:16'),
(533, 7, 39, 0, 0, 0, 0, 1, '2020-12-21 07:01:16'),
(534, 7, 40, 0, 0, 0, 0, 1, '2020-12-21 07:01:16'),
(535, 7, 41, 0, 0, 0, 0, 1, '2020-12-21 07:01:16'),
(536, 7, 42, 0, 0, 0, 0, 1, '2020-12-21 07:01:16'),
(537, 7, 43, 0, 0, 0, 0, 1, '2020-12-21 07:01:16'),
(538, 7, 44, 0, 0, 0, 0, 1, '2020-12-21 07:01:16'),
(539, 7, 45, 0, 0, 0, 0, 1, '2020-12-21 07:01:16'),
(540, 7, 46, 0, 0, 0, 0, 1, '2020-12-21 07:01:16'),
(541, 7, 47, 0, 0, 0, 0, 1, '2020-12-21 07:01:16'),
(542, 7, 48, 0, 0, 0, 0, 1, '2020-12-21 07:01:16'),
(543, 7, 49, 0, 0, 0, 0, 1, '2020-12-21 07:01:16'),
(544, 7, 50, 0, 0, 0, 0, 1, '2020-12-21 07:01:16'),
(545, 7, 51, 0, 0, 0, 0, 1, '2020-12-21 07:01:16'),
(546, 7, 52, 0, 0, 0, 0, 1, '2020-12-21 07:01:16'),
(547, 7, 53, 0, 0, 0, 0, 1, '2020-12-21 07:01:16'),
(548, 7, 54, 0, 0, 0, 0, 1, '2020-12-21 07:01:16'),
(549, 7, 55, 0, 0, 0, 0, 1, '2020-12-21 07:01:16'),
(550, 7, 56, 0, 0, 0, 0, 1, '2020-12-21 07:01:16'),
(551, 7, 57, 0, 0, 0, 0, 1, '2020-12-21 07:01:16'),
(552, 7, 58, 0, 0, 0, 0, 1, '2020-12-21 07:01:16'),
(553, 7, 65, 1, 1, 1, 1, 1, '2020-12-21 07:01:16'),
(554, 7, 66, 1, 1, 1, 1, 1, '2020-12-21 07:01:16'),
(555, 7, 67, 1, 1, 1, 1, 1, '2020-12-21 07:01:16'),
(556, 7, 71, 1, 1, 1, 1, 1, '2020-12-21 07:01:16'),
(557, 7, 59, 1, 1, 1, 1, 1, '2020-12-21 07:01:16'),
(558, 7, 60, 1, 1, 1, 1, 1, '2020-12-21 07:01:16'),
(559, 7, 61, 1, 1, 1, 1, 1, '2020-12-21 07:01:16'),
(560, 7, 62, 1, 1, 1, 1, 1, '2020-12-21 07:01:16'),
(561, 7, 63, 1, 1, 1, 1, 1, '2020-12-21 07:01:16'),
(562, 7, 64, 1, 1, 1, 1, 1, '2020-12-21 07:01:16'),
(563, 7, 70, 1, 1, 1, 1, 1, '2020-12-21 07:01:16'),
(564, 7, 82, 1, 1, 1, 1, 1, '2020-12-21 07:01:16'),
(565, 7, 72, 1, 1, 1, 1, 1, '2020-12-21 07:01:16'),
(566, 7, 73, 1, 1, 1, 1, 1, '2020-12-21 07:01:16'),
(567, 7, 74, 1, 1, 1, 1, 1, '2020-12-21 07:01:16'),
(568, 7, 75, 1, 1, 1, 1, 1, '2020-12-21 07:01:16'),
(569, 7, 76, 1, 1, 1, 1, 1, '2020-12-21 07:01:16'),
(570, 7, 77, 1, 1, 1, 1, 1, '2020-12-21 07:01:16'),
(571, 7, 78, 1, 1, 1, 1, 1, '2020-12-21 07:01:16'),
(572, 7, 79, 1, 1, 1, 1, 1, '2020-12-21 07:01:16'),
(573, 7, 80, 1, 1, 1, 1, 1, '2020-12-21 07:01:16'),
(574, 7, 81, 1, 1, 1, 1, 1, '2020-12-21 07:01:16'),
(2458, 15, 1, 0, 0, 0, 0, 1, '2021-02-08 05:06:37'),
(2459, 15, 2, 0, 0, 0, 0, 1, '2021-02-08 05:06:37'),
(2460, 15, 3, 0, 0, 0, 0, 1, '2021-02-08 05:06:37'),
(2461, 15, 4, 0, 0, 0, 0, 1, '2021-02-08 05:06:37'),
(2462, 15, 5, 0, 0, 0, 0, 1, '2021-02-08 05:06:37'),
(2463, 15, 6, 0, 0, 0, 0, 1, '2021-02-08 05:06:37'),
(2464, 15, 7, 0, 0, 0, 0, 1, '2021-02-08 05:06:37'),
(2465, 15, 8, 0, 0, 0, 0, 1, '2021-02-08 05:06:37'),
(2466, 15, 9, 0, 0, 0, 0, 1, '2021-02-08 05:06:37'),
(2467, 15, 10, 0, 0, 0, 0, 1, '2021-02-08 05:06:37'),
(2468, 15, 11, 0, 0, 0, 0, 1, '2021-02-08 05:06:37'),
(2469, 15, 12, 0, 0, 0, 0, 1, '2021-02-08 05:06:37'),
(2470, 15, 13, 0, 0, 0, 0, 1, '2021-02-08 05:06:37'),
(2471, 15, 14, 0, 0, 0, 0, 1, '2021-02-08 05:06:37'),
(2472, 15, 15, 0, 0, 0, 0, 1, '2021-02-08 05:06:37'),
(2473, 15, 68, 0, 0, 0, 0, 1, '2021-02-08 05:06:37'),
(2474, 15, 69, 0, 0, 0, 0, 1, '2021-02-08 05:06:37'),
(2475, 15, 83, 0, 0, 0, 0, 1, '2021-02-08 05:06:37'),
(2476, 15, 16, 0, 0, 0, 0, 1, '2021-02-08 05:06:37'),
(2477, 15, 17, 0, 0, 0, 0, 1, '2021-02-08 05:06:37'),
(2478, 15, 18, 0, 0, 0, 0, 1, '2021-02-08 05:06:37'),
(2479, 15, 19, 0, 0, 0, 0, 1, '2021-02-08 05:06:37'),
(2480, 15, 20, 0, 0, 0, 0, 1, '2021-02-08 05:06:37'),
(2481, 15, 21, 0, 0, 0, 0, 1, '2021-02-08 05:06:37'),
(2482, 15, 22, 0, 0, 0, 0, 1, '2021-02-08 05:06:37'),
(2483, 15, 23, 0, 0, 0, 0, 1, '2021-02-08 05:06:37'),
(2484, 15, 24, 0, 0, 0, 0, 1, '2021-02-08 05:06:37'),
(2485, 15, 25, 0, 0, 0, 0, 1, '2021-02-08 05:06:37'),
(2486, 15, 26, 0, 0, 0, 0, 1, '2021-02-08 05:06:37'),
(2487, 15, 27, 0, 0, 0, 0, 1, '2021-02-08 05:06:37'),
(2488, 15, 28, 0, 0, 0, 0, 1, '2021-02-08 05:06:37'),
(2489, 15, 29, 0, 0, 0, 0, 1, '2021-02-08 05:06:37'),
(2490, 15, 30, 0, 0, 0, 0, 1, '2021-02-08 05:06:37'),
(2491, 15, 31, 0, 0, 0, 0, 1, '2021-02-08 05:06:37'),
(2492, 15, 32, 0, 0, 0, 0, 1, '2021-02-08 05:06:37'),
(2493, 15, 33, 0, 0, 0, 0, 1, '2021-02-08 05:06:37'),
(2494, 15, 34, 0, 0, 0, 0, 1, '2021-02-08 05:06:37'),
(2495, 15, 35, 0, 0, 0, 0, 1, '2021-02-08 05:06:37'),
(2496, 15, 36, 0, 0, 0, 0, 1, '2021-02-08 05:06:37'),
(2497, 15, 37, 0, 0, 0, 0, 1, '2021-02-08 05:06:37'),
(2498, 15, 38, 0, 0, 0, 0, 1, '2021-02-08 05:06:37'),
(2499, 15, 39, 0, 0, 0, 0, 1, '2021-02-08 05:06:37'),
(2500, 15, 40, 0, 0, 0, 0, 1, '2021-02-08 05:06:37'),
(2501, 15, 41, 0, 0, 0, 0, 1, '2021-02-08 05:06:37'),
(2502, 15, 42, 0, 0, 0, 0, 1, '2021-02-08 05:06:37'),
(2503, 15, 43, 0, 0, 0, 0, 1, '2021-02-08 05:06:37'),
(2504, 15, 44, 0, 0, 0, 0, 1, '2021-02-08 05:06:37'),
(2505, 15, 45, 0, 0, 0, 0, 1, '2021-02-08 05:06:37'),
(2506, 15, 46, 0, 0, 0, 0, 1, '2021-02-08 05:06:37'),
(2507, 15, 47, 0, 0, 0, 0, 1, '2021-02-08 05:06:37'),
(2508, 15, 48, 0, 0, 0, 0, 1, '2021-02-08 05:06:37'),
(2509, 15, 49, 0, 0, 0, 0, 1, '2021-02-08 05:06:37'),
(2510, 15, 50, 0, 0, 0, 0, 1, '2021-02-08 05:06:37'),
(2511, 15, 51, 0, 0, 0, 0, 1, '2021-02-08 05:06:37'),
(2512, 15, 52, 0, 0, 0, 0, 1, '2021-02-08 05:06:37'),
(2513, 15, 53, 0, 0, 0, 0, 1, '2021-02-08 05:06:37'),
(2514, 15, 54, 0, 0, 0, 0, 1, '2021-02-08 05:06:37'),
(2515, 15, 55, 0, 0, 0, 0, 1, '2021-02-08 05:06:37'),
(2516, 15, 56, 0, 0, 0, 0, 1, '2021-02-08 05:06:37'),
(2517, 15, 57, 0, 0, 0, 0, 1, '2021-02-08 05:06:37'),
(2518, 15, 58, 0, 0, 0, 0, 1, '2021-02-08 05:06:37'),
(2519, 15, 65, 0, 0, 0, 0, 1, '2021-02-08 05:06:37'),
(2520, 15, 66, 0, 0, 0, 0, 1, '2021-02-08 05:06:37'),
(2521, 15, 67, 0, 0, 0, 0, 1, '2021-02-08 05:06:37'),
(2522, 15, 71, 0, 0, 0, 0, 1, '2021-02-08 05:06:37'),
(2523, 15, 59, 0, 0, 0, 0, 1, '2021-02-08 05:06:37'),
(2524, 15, 60, 0, 0, 0, 0, 1, '2021-02-08 05:06:37'),
(2525, 15, 61, 0, 0, 0, 0, 1, '2021-02-08 05:06:37'),
(2526, 15, 62, 0, 0, 0, 0, 1, '2021-02-08 05:06:37'),
(2527, 15, 63, 0, 0, 0, 0, 1, '2021-02-08 05:06:37'),
(2528, 15, 64, 0, 0, 0, 0, 1, '2021-02-08 05:06:37'),
(2529, 15, 70, 0, 0, 0, 0, 1, '2021-02-08 05:06:37'),
(2530, 15, 82, 0, 0, 0, 0, 1, '2021-02-08 05:06:37'),
(2531, 15, 72, 0, 0, 0, 0, 1, '2021-02-08 05:06:37'),
(2532, 15, 73, 0, 0, 0, 0, 1, '2021-02-08 05:06:37'),
(2533, 15, 74, 0, 0, 0, 0, 1, '2021-02-08 05:06:37'),
(2534, 15, 89, 0, 0, 0, 0, 1, '2021-02-08 05:06:37'),
(2535, 15, 75, 1, 1, 1, 0, 1, '2021-02-08 05:06:37'),
(2536, 15, 88, 1, 1, 1, 0, 1, '2021-02-08 05:06:37'),
(2537, 15, 76, 0, 0, 0, 0, 1, '2021-02-08 05:06:37'),
(2538, 15, 77, 0, 0, 0, 0, 1, '2021-02-08 05:06:37'),
(2539, 15, 78, 0, 0, 0, 0, 1, '2021-02-08 05:06:37'),
(2540, 15, 79, 0, 0, 0, 0, 1, '2021-02-08 05:06:37'),
(2541, 15, 80, 0, 0, 0, 0, 1, '2021-02-08 05:06:37'),
(2542, 15, 81, 0, 0, 0, 0, 1, '2021-02-08 05:06:37'),
(2543, 15, 84, 0, 0, 0, 0, 1, '2021-02-08 05:06:37'),
(2544, 15, 85, 0, 0, 0, 0, 1, '2021-02-08 05:06:37'),
(2545, 15, 86, 0, 0, 0, 0, 1, '2021-02-08 05:06:37'),
(2546, 15, 87, 0, 0, 0, 0, 1, '2021-02-08 05:06:37'),
(2547, 14, 1, 0, 0, 0, 0, 1, '2021-02-08 05:13:35'),
(2548, 14, 2, 0, 0, 0, 0, 1, '2021-02-08 05:13:35'),
(2549, 14, 3, 0, 0, 0, 0, 1, '2021-02-08 05:13:35'),
(2550, 14, 4, 0, 0, 0, 0, 1, '2021-02-08 05:13:35'),
(2551, 14, 5, 0, 0, 0, 0, 1, '2021-02-08 05:13:35'),
(2552, 14, 6, 0, 0, 0, 0, 1, '2021-02-08 05:13:35'),
(2553, 14, 7, 0, 0, 0, 0, 1, '2021-02-08 05:13:35'),
(2554, 14, 8, 0, 0, 0, 0, 1, '2021-02-08 05:13:35'),
(2555, 14, 9, 0, 0, 0, 0, 1, '2021-02-08 05:13:35'),
(2556, 14, 10, 0, 0, 0, 0, 1, '2021-02-08 05:13:35'),
(2557, 14, 11, 0, 0, 0, 0, 1, '2021-02-08 05:13:35'),
(2558, 14, 12, 0, 0, 0, 0, 1, '2021-02-08 05:13:35'),
(2559, 14, 13, 0, 0, 0, 0, 1, '2021-02-08 05:13:35'),
(2560, 14, 14, 0, 0, 0, 0, 1, '2021-02-08 05:13:35'),
(2561, 14, 15, 0, 0, 0, 0, 1, '2021-02-08 05:13:35'),
(2562, 14, 68, 1, 1, 0, 0, 1, '2021-02-08 05:13:35'),
(2563, 14, 69, 1, 1, 0, 0, 1, '2021-02-08 05:13:35'),
(2564, 14, 83, 1, 1, 0, 0, 1, '2021-02-08 05:13:35'),
(2565, 14, 16, 1, 1, 1, 0, 1, '2021-02-08 05:13:35'),
(2566, 14, 17, 1, 1, 1, 0, 1, '2021-02-08 05:13:35'),
(2567, 14, 18, 1, 1, 1, 0, 1, '2021-02-08 05:13:35'),
(2568, 14, 19, 1, 1, 1, 0, 1, '2021-02-08 05:13:35'),
(2569, 14, 20, 0, 0, 0, 0, 1, '2021-02-08 05:13:35'),
(2570, 14, 21, 0, 0, 0, 0, 1, '2021-02-08 05:13:35'),
(2571, 14, 22, 0, 0, 0, 0, 1, '2021-02-08 05:13:35'),
(2572, 14, 23, 0, 0, 0, 0, 1, '2021-02-08 05:13:35'),
(2573, 14, 24, 0, 0, 0, 0, 1, '2021-02-08 05:13:35'),
(2574, 14, 25, 0, 0, 0, 0, 1, '2021-02-08 05:13:35'),
(2575, 14, 26, 0, 0, 0, 0, 1, '2021-02-08 05:13:35'),
(2576, 14, 27, 0, 0, 0, 0, 1, '2021-02-08 05:13:35'),
(2577, 14, 28, 0, 0, 0, 0, 1, '2021-02-08 05:13:35'),
(2578, 14, 29, 0, 0, 0, 0, 1, '2021-02-08 05:13:35'),
(2579, 14, 30, 0, 0, 0, 0, 1, '2021-02-08 05:13:35'),
(2580, 14, 31, 0, 0, 0, 0, 1, '2021-02-08 05:13:35'),
(2581, 14, 32, 0, 0, 0, 0, 1, '2021-02-08 05:13:35'),
(2582, 14, 33, 0, 0, 0, 0, 1, '2021-02-08 05:13:35'),
(2583, 14, 34, 0, 0, 0, 0, 1, '2021-02-08 05:13:35'),
(2584, 14, 35, 0, 0, 0, 0, 1, '2021-02-08 05:13:35'),
(2585, 14, 36, 0, 0, 0, 0, 1, '2021-02-08 05:13:35'),
(2586, 14, 37, 0, 0, 0, 0, 1, '2021-02-08 05:13:35'),
(2587, 14, 38, 0, 0, 0, 0, 1, '2021-02-08 05:13:35'),
(2588, 14, 39, 0, 0, 0, 0, 1, '2021-02-08 05:13:35'),
(2589, 14, 40, 0, 0, 0, 0, 1, '2021-02-08 05:13:35'),
(2590, 14, 41, 0, 0, 0, 0, 1, '2021-02-08 05:13:35'),
(2591, 14, 42, 0, 0, 0, 0, 1, '2021-02-08 05:13:35'),
(2592, 14, 43, 0, 0, 0, 0, 1, '2021-02-08 05:13:35'),
(2593, 14, 44, 0, 0, 0, 0, 1, '2021-02-08 05:13:35'),
(2594, 14, 45, 0, 0, 0, 0, 1, '2021-02-08 05:13:35'),
(2595, 14, 46, 0, 0, 0, 0, 1, '2021-02-08 05:13:35'),
(2596, 14, 47, 0, 0, 0, 0, 1, '2021-02-08 05:13:35'),
(2597, 14, 48, 0, 0, 0, 0, 1, '2021-02-08 05:13:35'),
(2598, 14, 49, 0, 0, 0, 0, 1, '2021-02-08 05:13:35'),
(2599, 14, 50, 0, 0, 0, 0, 1, '2021-02-08 05:13:35'),
(2600, 14, 51, 0, 0, 0, 0, 1, '2021-02-08 05:13:35'),
(2601, 14, 52, 0, 0, 0, 0, 1, '2021-02-08 05:13:35'),
(2602, 14, 53, 0, 0, 0, 0, 1, '2021-02-08 05:13:35'),
(2603, 14, 54, 0, 0, 0, 0, 1, '2021-02-08 05:13:35'),
(2604, 14, 55, 0, 0, 0, 0, 1, '2021-02-08 05:13:35'),
(2605, 14, 56, 0, 0, 0, 0, 1, '2021-02-08 05:13:35'),
(2606, 14, 57, 0, 0, 0, 0, 1, '2021-02-08 05:13:35'),
(2607, 14, 58, 0, 0, 0, 0, 1, '2021-02-08 05:13:35'),
(2608, 14, 65, 0, 0, 0, 0, 1, '2021-02-08 05:13:35'),
(2609, 14, 66, 0, 0, 0, 0, 1, '2021-02-08 05:13:35'),
(2610, 14, 67, 0, 0, 0, 0, 1, '2021-02-08 05:13:35'),
(2611, 14, 71, 0, 0, 0, 0, 1, '2021-02-08 05:13:35'),
(2612, 14, 59, 0, 0, 0, 0, 1, '2021-02-08 05:13:35'),
(2613, 14, 60, 0, 0, 0, 0, 1, '2021-02-08 05:13:35'),
(2614, 14, 61, 0, 0, 0, 0, 1, '2021-02-08 05:13:35'),
(2615, 14, 62, 0, 0, 0, 0, 1, '2021-02-08 05:13:35'),
(2616, 14, 63, 1, 1, 1, 0, 1, '2021-02-08 05:13:35'),
(2617, 14, 64, 1, 1, 1, 0, 1, '2021-02-08 05:13:35'),
(2618, 14, 70, 1, 1, 1, 0, 1, '2021-02-08 05:13:35'),
(2619, 14, 82, 1, 1, 1, 0, 1, '2021-02-08 05:13:35'),
(2620, 14, 72, 1, 1, 1, 0, 1, '2021-02-08 05:13:35'),
(2621, 14, 73, 1, 1, 1, 0, 1, '2021-02-08 05:13:35'),
(2622, 14, 74, 1, 1, 1, 0, 1, '2021-02-08 05:13:35'),
(2623, 14, 89, 1, 1, 1, 0, 1, '2021-02-08 05:13:35'),
(2624, 14, 75, 1, 1, 1, 0, 1, '2021-02-08 05:13:35'),
(2625, 14, 88, 1, 1, 1, 0, 1, '2021-02-08 05:13:35'),
(2626, 14, 76, 0, 0, 0, 0, 1, '2021-02-08 05:13:35'),
(2627, 14, 77, 0, 0, 0, 0, 1, '2021-02-08 05:13:35'),
(2628, 14, 78, 0, 0, 0, 0, 1, '2021-02-08 05:13:35'),
(2629, 14, 79, 0, 0, 0, 0, 1, '2021-02-08 05:13:35'),
(2630, 14, 80, 0, 0, 0, 0, 1, '2021-02-08 05:13:35'),
(2631, 14, 81, 0, 0, 0, 0, 1, '2021-02-08 05:13:35'),
(2632, 14, 84, 1, 1, 1, 0, 1, '2021-02-08 05:13:35'),
(2633, 14, 85, 1, 1, 1, 0, 1, '2021-02-08 05:13:35'),
(2634, 14, 86, 1, 1, 1, 0, 1, '2021-02-08 05:13:35'),
(2635, 14, 87, 1, 1, 1, 0, 1, '2021-02-08 05:13:35'),
(2636, 16, 1, 0, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2637, 16, 2, 0, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2638, 16, 3, 0, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2639, 16, 4, 0, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2640, 16, 5, 0, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2641, 16, 6, 0, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2642, 16, 7, 0, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2643, 16, 8, 0, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2644, 16, 9, 0, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2645, 16, 10, 0, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2646, 16, 11, 0, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2647, 16, 12, 0, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2648, 16, 13, 0, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2649, 16, 14, 0, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2650, 16, 15, 0, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2651, 16, 68, 1, 1, 0, 0, 1, '2021-09-13 02:19:50'),
(2652, 16, 69, 1, 1, 0, 0, 1, '2021-09-13 02:19:50'),
(2653, 16, 83, 1, 1, 0, 0, 1, '2021-09-13 02:19:50'),
(2654, 16, 96, 1, 1, 0, 0, 1, '2021-09-13 02:19:50'),
(2655, 16, 113, 1, 1, 0, 0, 1, '2021-09-13 02:19:50'),
(2656, 16, 119, 1, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2657, 16, 108, 1, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2658, 16, 109, 1, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2659, 16, 111, 1, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2660, 16, 112, 1, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2661, 16, 92, 1, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2662, 16, 93, 1, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2663, 16, 94, 1, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2664, 16, 95, 1, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2665, 16, 114, 1, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2666, 16, 115, 1, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2667, 16, 118, 1, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2668, 16, 120, 1, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2669, 16, 121, 1, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2670, 16, 122, 1, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2671, 16, 16, 1, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2672, 16, 17, 1, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2673, 16, 18, 1, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2674, 16, 19, 1, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2675, 16, 20, 1, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2676, 16, 21, 1, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2677, 16, 22, 1, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2678, 16, 23, 1, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2679, 16, 24, 1, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2680, 16, 25, 1, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2681, 16, 26, 1, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2682, 16, 27, 1, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2683, 16, 28, 1, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2684, 16, 29, 1, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2685, 16, 30, 1, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2686, 16, 31, 1, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2687, 16, 32, 1, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2688, 16, 33, 1, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2689, 16, 34, 1, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2690, 16, 35, 1, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2691, 16, 36, 1, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2692, 16, 37, 1, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2693, 16, 38, 1, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2694, 16, 39, 1, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2695, 16, 40, 1, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2696, 16, 41, 1, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2697, 16, 42, 1, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2698, 16, 43, 1, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2699, 16, 44, 1, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2700, 16, 45, 1, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2701, 16, 46, 1, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2702, 16, 47, 1, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2703, 16, 48, 1, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2704, 16, 49, 1, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2705, 16, 50, 1, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2706, 16, 51, 1, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2707, 16, 52, 1, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2708, 16, 53, 1, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2709, 16, 54, 1, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2710, 16, 55, 1, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2711, 16, 56, 1, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2712, 16, 57, 1, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2713, 16, 58, 1, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2714, 16, 105, 1, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2715, 16, 106, 1, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2716, 16, 107, 1, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2717, 16, 140, 1, 1, 1, 1, 1, '2021-09-13 02:19:50'),
(2718, 16, 141, 1, 1, 1, 1, 1, '2021-09-13 02:19:50'),
(2719, 16, 142, 1, 1, 1, 1, 1, '2021-09-13 02:19:50'),
(2720, 16, 143, 1, 1, 1, 1, 1, '2021-09-13 02:19:50'),
(2721, 16, 144, 1, 1, 1, 1, 1, '2021-09-13 02:19:50'),
(2722, 16, 145, 1, 1, 1, 1, 1, '2021-09-13 02:19:50'),
(2723, 16, 146, 1, 1, 1, 1, 1, '2021-09-13 02:19:50'),
(2724, 16, 147, 1, 1, 1, 1, 1, '2021-09-13 02:19:50'),
(2725, 16, 148, 1, 1, 1, 1, 1, '2021-09-13 02:19:50'),
(2726, 16, 149, 1, 1, 1, 1, 1, '2021-09-13 02:19:50'),
(2727, 16, 150, 1, 1, 1, 1, 1, '2021-09-13 02:19:50'),
(2728, 16, 151, 1, 1, 1, 1, 1, '2021-09-13 02:19:50'),
(2729, 16, 152, 1, 1, 1, 1, 1, '2021-09-13 02:19:50'),
(2730, 16, 153, 1, 1, 1, 1, 1, '2021-09-13 02:19:50'),
(2731, 16, 154, 1, 1, 1, 1, 1, '2021-09-13 02:19:50'),
(2732, 16, 123, 1, 0, 1, 0, 1, '2021-09-13 02:19:50'),
(2733, 16, 124, 1, 0, 1, 0, 1, '2021-09-13 02:19:50'),
(2734, 16, 125, 1, 0, 1, 0, 1, '2021-09-13 02:19:50'),
(2735, 16, 126, 1, 0, 1, 0, 1, '2021-09-13 02:19:50'),
(2736, 16, 127, 1, 0, 1, 0, 1, '2021-09-13 02:19:50'),
(2737, 16, 128, 1, 0, 1, 0, 1, '2021-09-13 02:19:50'),
(2738, 16, 129, 1, 0, 1, 0, 1, '2021-09-13 02:19:50'),
(2739, 16, 130, 1, 0, 1, 0, 1, '2021-09-13 02:19:50'),
(2740, 16, 131, 1, 0, 1, 0, 1, '2021-09-13 02:19:50'),
(2741, 16, 132, 1, 0, 1, 0, 1, '2021-09-13 02:19:50'),
(2742, 16, 133, 1, 0, 1, 0, 1, '2021-09-13 02:19:50'),
(2743, 16, 134, 1, 0, 1, 0, 1, '2021-09-13 02:19:50'),
(2744, 16, 135, 1, 0, 1, 0, 1, '2021-09-13 02:19:50'),
(2745, 16, 136, 1, 0, 1, 0, 1, '2021-09-13 02:19:50'),
(2746, 16, 137, 1, 0, 1, 0, 1, '2021-09-13 02:19:50'),
(2747, 16, 138, 1, 0, 1, 0, 1, '2021-09-13 02:19:50'),
(2748, 16, 139, 1, 0, 1, 0, 1, '2021-09-13 02:19:50'),
(2749, 16, 65, 0, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2750, 16, 66, 0, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2751, 16, 67, 0, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2752, 16, 71, 0, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2753, 16, 98, 1, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2754, 16, 99, 1, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2755, 16, 100, 1, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2756, 16, 101, 1, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2757, 16, 102, 1, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2758, 16, 104, 1, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2759, 16, 59, 1, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2760, 16, 60, 1, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2761, 16, 61, 1, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2762, 16, 62, 1, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2763, 16, 63, 1, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2764, 16, 64, 1, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2765, 16, 70, 1, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2766, 16, 82, 1, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2767, 16, 72, 1, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2768, 16, 73, 1, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2769, 16, 74, 1, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2770, 16, 89, 1, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2771, 16, 75, 1, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2772, 16, 88, 1, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2773, 16, 76, 0, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2774, 16, 77, 0, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2775, 16, 78, 0, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2776, 16, 79, 0, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2777, 16, 80, 0, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2778, 16, 81, 0, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2779, 16, 91, 0, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2780, 16, 103, 0, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2781, 16, 110, 0, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2782, 16, 117, 1, 1, 1, 0, 1, '2021-09-13 02:19:50'),
(2783, 16, 116, 1, 1, 1, 0, 1, '2021-09-13 02:19:50'),
(2784, 16, 84, 1, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2785, 16, 85, 1, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2786, 16, 86, 1, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2787, 16, 87, 1, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2788, 16, 97, 1, 0, 0, 0, 1, '2021-09-13 02:19:50'),
(2945, 12, 1, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(2946, 12, 2, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(2947, 12, 3, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(2948, 12, 4, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(2949, 12, 5, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(2950, 12, 6, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(2951, 12, 7, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(2952, 12, 8, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(2953, 12, 9, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(2954, 12, 10, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(2955, 12, 11, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(2956, 12, 12, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(2957, 12, 13, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(2958, 12, 14, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(2959, 12, 15, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(2960, 12, 155, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(2961, 12, 156, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(2962, 12, 157, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(2963, 12, 158, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(2964, 12, 68, 1, 1, 1, 0, 1, '2022-10-05 12:45:31'),
(2965, 12, 69, 1, 1, 1, 0, 1, '2022-10-05 12:45:31'),
(2966, 12, 83, 1, 1, 1, 0, 1, '2022-10-05 12:45:31'),
(2967, 12, 96, 1, 1, 1, 0, 1, '2022-10-05 12:45:31'),
(2968, 12, 113, 1, 1, 1, 0, 1, '2022-10-05 12:45:31'),
(2969, 12, 245, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(2970, 12, 246, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(2971, 12, 247, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(2972, 12, 248, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(2973, 12, 249, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(2974, 12, 250, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(2975, 12, 251, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(2976, 12, 252, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(2977, 12, 92, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(2978, 12, 120, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(2979, 12, 253, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(2980, 12, 254, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(2981, 12, 255, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(2982, 12, 256, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(2983, 12, 257, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(2984, 12, 258, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(2985, 12, 259, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(2986, 12, 260, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(2987, 12, 261, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(2988, 12, 262, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(2989, 12, 16, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(2990, 12, 17, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(2991, 12, 18, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(2992, 12, 19, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(2993, 12, 20, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(2994, 12, 21, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(2995, 12, 22, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(2996, 12, 23, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(2997, 12, 24, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(2998, 12, 25, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(2999, 12, 26, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3000, 12, 27, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3001, 12, 28, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3002, 12, 29, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3003, 12, 30, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3004, 12, 31, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3005, 12, 32, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3006, 12, 33, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3007, 12, 34, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3008, 12, 35, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3009, 12, 36, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3010, 12, 37, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3011, 12, 38, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3012, 12, 39, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3013, 12, 40, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3014, 12, 41, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3015, 12, 42, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3016, 12, 43, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3017, 12, 44, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3018, 12, 45, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3019, 12, 46, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3020, 12, 47, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3021, 12, 48, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3022, 12, 49, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3023, 12, 50, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3024, 12, 51, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3025, 12, 52, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3026, 12, 53, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3027, 12, 54, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3028, 12, 55, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3029, 12, 56, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3030, 12, 57, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3031, 12, 58, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3032, 12, 214, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3033, 12, 215, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3034, 12, 216, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3035, 12, 217, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3036, 12, 218, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3037, 12, 219, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3038, 12, 220, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3039, 12, 221, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3040, 12, 222, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3041, 12, 223, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3042, 12, 224, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3043, 12, 225, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3044, 12, 226, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3045, 12, 227, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3046, 12, 228, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3047, 12, 229, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3048, 12, 230, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3049, 12, 231, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3050, 12, 232, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3051, 12, 233, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3052, 12, 234, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3053, 12, 235, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3054, 12, 236, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3055, 12, 237, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3056, 12, 238, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3057, 12, 239, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3058, 12, 240, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3059, 12, 241, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3060, 12, 242, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3061, 12, 243, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3062, 12, 244, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3063, 12, 65, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3064, 12, 66, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3065, 12, 67, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3066, 12, 71, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3067, 12, 59, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3068, 12, 60, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3069, 12, 61, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3070, 12, 62, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3071, 12, 63, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3072, 12, 64, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3073, 12, 70, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3074, 12, 82, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3075, 12, 72, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3076, 12, 73, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3077, 12, 74, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3078, 12, 89, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3079, 12, 75, 1, 1, 1, 0, 1, '2022-10-05 12:45:31'),
(3080, 12, 88, 1, 1, 1, 0, 1, '2022-10-05 12:45:31'),
(3081, 12, 160, 1, 1, 1, 0, 1, '2022-10-05 12:45:31'),
(3082, 12, 202, 1, 1, 1, 0, 1, '2022-10-05 12:45:31'),
(3083, 12, 203, 1, 1, 1, 0, 1, '2022-10-05 12:45:31'),
(3084, 12, 76, 1, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3085, 12, 77, 1, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3086, 12, 78, 1, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3087, 12, 79, 1, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3088, 12, 80, 1, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3089, 12, 81, 1, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3090, 12, 91, 1, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3091, 12, 110, 1, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3092, 12, 165, 1, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3093, 12, 116, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3094, 12, 117, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3095, 12, 84, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3096, 12, 85, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3097, 12, 86, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3098, 12, 87, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3099, 12, 97, 0, 0, 0, 0, 1, '2022-10-05 12:45:31'),
(3100, 12, 119, 0, 0, 0, 0, 1, '2022-10-05 12:45:31');

-- --------------------------------------------------------

--
-- Table structure for table `sec_role_tbl`
--

CREATE TABLE `sec_role_tbl` (
  `role_id` int(11) NOT NULL,
  `role_name` text NOT NULL,
  `role_description` text NOT NULL,
  `create_by` int(11) DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `role_status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `sec_role_tbl`
--

INSERT INTO `sec_role_tbl` (`role_id`, `role_name`, `role_description`, `create_by`, `date_time`, `role_status`) VALUES
(7, 'Manager ', 'Manager Role list.', 1, '2019-11-17 11:46:11', 1),
(12, 'Cashier', 'Cashier', 1, '2020-11-29 01:12:42', 1),
(14, 'Moderator', 'New Role Permission', 1, '2021-01-10 06:31:46', 1),
(15, 'Booking', 'Hotel booking', 1, '2021-01-10 09:23:15', 1),
(16, 'Manager In-Charge', 'Should get access to all operation', 1, '2021-09-13 02:19:50', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sec_user_access_tbl`
--

CREATE TABLE `sec_user_access_tbl` (
  `role_acc_id` int(11) NOT NULL,
  `fk_role_id` int(11) NOT NULL,
  `fk_user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `sec_user_access_tbl`
--

INSERT INTO `sec_user_access_tbl` (`role_acc_id`, `fk_role_id`, `fk_user_id`) VALUES
(7, 7, 4),
(9, 1, 177),
(19, 7, 180),
(24, 14, 193),
(28, 15, 194),
(32, 15, 197),
(33, 16, 19),
(34, 12, 2),
(35, 15, 2),
(37, 12, 3),
(38, 15, 3);

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `storename` varchar(100) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `logo` varchar(50) DEFAULT NULL,
  `splash_logo` varchar(255) NOT NULL,
  `favicon` varchar(100) DEFAULT NULL,
  `vat` int(11) NOT NULL DEFAULT 0,
  `isvatnumshow` int(11) DEFAULT 0,
  `vattinno` varchar(30) DEFAULT NULL,
  `servicecharge` int(11) NOT NULL DEFAULT 0,
  `discount_type` int(11) NOT NULL DEFAULT 0 COMMENT '0=amount,1=percent',
  `service_chargeType` int(11) NOT NULL DEFAULT 0 COMMENT '0=amount,1=percent',
  `discountrate` decimal(19,3) NOT NULL DEFAULT 0.000,
  `country` varchar(100) DEFAULT NULL,
  `map_key` varchar(255) DEFAULT NULL,
  `latitude` double(10,4) DEFAULT NULL,
  `longitude` double(10,4) DEFAULT NULL,
  `currency` int(11) DEFAULT 0,
  `language` varchar(100) DEFAULT NULL,
  `timezone` varchar(150) NOT NULL,
  `checkintime` time NOT NULL,
  `checkouttime` time NOT NULL,
  `dateformat` text NOT NULL,
  `site_align` varchar(50) DEFAULT NULL,
  `pricetxt` text DEFAULT NULL,
  `powerbytxt` text DEFAULT NULL,
  `footer_text` varchar(255) DEFAULT NULL,
  `whatsapp_number` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `title`, `storename`, `address`, `email`, `phone`, `logo`, `splash_logo`, `favicon`, `vat`, `isvatnumshow`, `vattinno`, `servicecharge`, `discount_type`, `service_chargeType`, `discountrate`, `country`, `map_key`, `latitude`, `longitude`, `currency`, `language`, `timezone`, `checkintime`, `checkouttime`, `dateformat`, `site_align`, `pricetxt`, `powerbytxt`, `footer_text`, `whatsapp_number`) VALUES
(2, 'MAC&JAK RESORT', 'MAC & JAK Getaway: A Luxurious Retreat in Bagamoyo, Tanzania', 'Kerege-Bagamoyo,Tanzania', 'info@macjak.co.tz', '255624059005', 'assets/img/icons/2024-11-01/o.png', 'assets/img/icons/2024-07-23/S.jpg', 'assets/img/icons/2024-10-25/F.png', 18, 1, NULL, 0, 1, 1, 0.000, 'TANZANIA', 'AIzaSyB-EEPxbay_aFpp3jcFXpjyPQcVQUJ2pp0', -6.5824, 39.0681, 2, 'english', 'Africa/Dar_es_Salaam', '12:00:00', '10:00:00', '', 'LTR', 'The crossed-out prices you see are based on prices currently being quoted by the property for a 30-day window around your check-in date. To ', 'Powered By: MATHEOS TECHS', '2024©Copyright', '+255768364583');

-- --------------------------------------------------------

--
-- Table structure for table `sms_configuration`
--

CREATE TABLE `sms_configuration` (
  `id` int(11) NOT NULL,
  `link` text NOT NULL,
  `gateway` varchar(200) NOT NULL,
  `user_name` varchar(200) NOT NULL,
  `password` varchar(255) NOT NULL,
  `sms_from` varchar(200) NOT NULL,
  `userid` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `sms_configuration`
--

INSERT INTO `sms_configuration` (`id`, `link`, `gateway`, `user_name`, `password`, `sms_from`, `userid`, `status`) VALUES
(3, 'https://www.budgetsms.net/', 'budgetsms', 'user1', '1e753da74', 'budgetsms', '21547', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sms_template`
--

CREATE TABLE `sms_template` (
  `id` int(11) NOT NULL,
  `template_name` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `default_status` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `sms_template`
--

INSERT INTO `sms_template` (`id`, `template_name`, `message`, `type`, `status`, `default_status`, `created_at`, `updated_at`) VALUES
(1, 'one', 'your Order {id} is cancel for some reason.', 'Cancel', 0, 0, '2021-10-24 14:57:48', '0000-00-00 00:00:00'),
(2, 'two', 'your order {id} is completed', 'CompleteOrder', 0, 1, '2019-01-02 18:58:19', '0000-00-00 00:00:00'),
(3, 'three', 'your order {id} is processing', 'Processing', 0, 1, '2020-03-08 00:48:29', '0000-00-00 00:00:00'),
(8, 'four', 'Your Order Has been Placed Successfully.', 'Neworder', 1, 1, '2020-03-08 00:48:33', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `starclass`
--

CREATE TABLE `starclass` (
  `starcalssid` int(11) NOT NULL,
  `starclassname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscribe_emaillist`
--

CREATE TABLE `subscribe_emaillist` (
  `emailid` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `dateinsert` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_order`
--

CREATE TABLE `sub_order` (
  `sub_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `vat` float DEFAULT NULL,
  `discount` decimal(10,2) DEFAULT 0.00,
  `s_charge` float DEFAULT NULL,
  `total_price` float DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0=unpaid,1=paid',
  `order_menu_id` text DEFAULT NULL,
  `adons_id` varchar(20) DEFAULT NULL,
  `adons_qty` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `supid` int(11) NOT NULL,
  `suplier_code` varchar(255) NOT NULL,
  `supName` varchar(100) NOT NULL,
  `supEmail` varchar(100) NOT NULL,
  `supMobile` varchar(50) NOT NULL,
  `supAddress` text NOT NULL,
  `total_amount` decimal(15,2) DEFAULT 0.00,
  `paid_amount` decimal(15,2) DEFAULT 0.00,
  `due_amount` decimal(15,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `table_details`
--

CREATE TABLE `table_details` (
  `id` int(11) NOT NULL,
  `table_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `order_id` int(11) NOT NULL,
  `time_enter` time NOT NULL,
  `total_people` int(11) NOT NULL,
  `delete_at` int(11) NOT NULL DEFAULT 0,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `table_setting`
--

CREATE TABLE `table_setting` (
  `settingid` int(11) NOT NULL,
  `tableid` int(11) NOT NULL,
  `iconpos` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_assign_kitchen`
--

CREATE TABLE `tbl_assign_kitchen` (
  `assignid` int(11) NOT NULL,
  `kitchen_id` int(11) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bank`
--

CREATE TABLE `tbl_bank` (
  `bankid` int(11) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `ac_name` varchar(200) DEFAULT NULL,
  `ac_number` varchar(200) DEFAULT NULL,
  `branch` varchar(200) DEFAULT NULL,
  `signature_pic` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_bank`
--

INSERT INTO `tbl_bank` (`bankid`, `bank_name`, `ac_name`, `ac_number`, `branch`, `signature_pic`) VALUES
(2, 'City Bank', 'Kamal Hassan', '3869583', 'Uttara', './application/modules/hrm/assets/images/2020-01-18/e.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_booking_type_info`
--

CREATE TABLE `tbl_booking_type_info` (
  `btypeinfoid` int(11) NOT NULL,
  `booking_type` varchar(200) NOT NULL,
  `booking_sourse` varchar(200) NOT NULL,
  `commissionrate` decimal(10,0) NOT NULL DEFAULT 2,
  `balance` float NOT NULL DEFAULT 0,
  `paid_amount` decimal(10,0) NOT NULL DEFAULT 0,
  `due_amount` decimal(10,0) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cancelitem`
--

CREATE TABLE `tbl_cancelitem` (
  `cancelid` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `foodid` int(11) NOT NULL,
  `varientid` int(11) NOT NULL,
  `quantity` decimal(19,3) NOT NULL DEFAULT 0.000
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_card_terminal`
--

CREATE TABLE `tbl_card_terminal` (
  `card_terminalid` int(11) NOT NULL,
  `terminal_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_card_terminal`
--

INSERT INTO `tbl_card_terminal` (`card_terminalid`, `terminal_name`) VALUES
(1, 'Nexus Terminal');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cashcounter`
--

CREATE TABLE `tbl_cashcounter` (
  `ccid` int(11) NOT NULL,
  `counterno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_cashcounter`
--

INSERT INTO `tbl_cashcounter` (`ccid`, `counterno`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cashregister`
--

CREATE TABLE `tbl_cashregister` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `counter_no` int(11) NOT NULL,
  `opening_balance` decimal(19,3) NOT NULL DEFAULT 0.000,
  `closing_balance` decimal(19,3) NOT NULL DEFAULT 0.000,
  `openclosedate` date NOT NULL,
  `opendate` datetime DEFAULT NULL,
  `closedate` datetime DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `openingnote` text DEFAULT NULL,
  `closing_note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_cashregister`
--

INSERT INTO `tbl_cashregister` (`id`, `userid`, `counter_no`, `opening_balance`, `closing_balance`, `openclosedate`, `opendate`, `closedate`, `status`, `openingnote`, `closing_note`) VALUES
(1, 1, 1, 0.000, 0.000, '2022-10-05', '2022-10-05 11:30:20', '2022-10-05 12:44:22', 1, '', ''),
(2, 2, 1, 0.000, 0.000, '2022-10-05', '2022-10-05 12:23:26', '1970-01-01 00:00:00', 0, '', ''),
(3, 1, 1, 0.000, 0.000, '2022-10-05', '2022-10-05 12:49:29', '1970-01-01 00:00:00', 0, '', ''),
(4, 3, 1, 0.000, 0.000, '2022-10-07', '2022-10-07 08:10:43', '1970-01-01 00:00:00', 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(11) NOT NULL,
  `categoryname` text DEFAULT NULL,
  `status` int(3) DEFAULT NULL COMMENT '0=inactive,1=active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `categoryname`, `status`) VALUES
(1, 'Spa Items', 1),
(3, 'Glass Items', 1),
(4, 'Tasty Items', 1),
(501, 'Houekeeping products', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_checklist`
--

CREATE TABLE `tbl_checklist` (
  `checklist_id` int(11) NOT NULL,
  `taskname` text DEFAULT NULL,
  `type` int(3) NOT NULL DEFAULT 1 COMMENT '1=housekeepr,2=laundry',
  `status` int(3) NOT NULL DEFAULT 1 COMMENT '0=inactive,1=active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_complementary`
--

CREATE TABLE `tbl_complementary` (
  `complementary_id` int(11) NOT NULL,
  `roomtype` text DEFAULT NULL,
  `complementaryname` text DEFAULT NULL,
  `rate` decimal(10,2) DEFAULT NULL,
  `status` int(3) NOT NULL COMMENT '0=inactive,1=active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_country`
--

CREATE TABLE `tbl_country` (
  `countryid` int(11) NOT NULL,
  `countryname` varchar(70) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_country`
--

INSERT INTO `tbl_country` (`countryid`, `countryname`, `status`) VALUES
(1, 'Afghanistan', 1),
(2, 'Aland Islands', 1),
(3, 'Albania', 1),
(4, 'Algeria', 1),
(5, 'American Samoa', 1),
(6, 'Andorra', 1),
(7, 'Angola', 1),
(8, 'Anguilla', 1),
(9, 'Antarctica', 1),
(10, 'Antigua and Barbuda', 1),
(11, 'Argentina', 1),
(12, 'Armenia', 1),
(13, 'Aruba', 1),
(14, 'Australia', 1),
(15, 'Austria', 1),
(16, 'Azerbaijan', 1),
(17, 'Bahamas', 1),
(18, 'Bahrain', 1),
(19, 'Bangladesh', 1),
(20, 'Barbados', 1),
(21, 'Belarus', 1),
(22, 'Belgium', 1),
(23, 'Belize', 1),
(24, 'Benin', 1),
(25, 'Bermuda', 1),
(26, 'Bhutan', 1),
(27, 'Bolivia', 1),
(28, 'Bonaire, Sint Eustatius and Saba', 1),
(29, 'Bosnia and Herzegovina', 1),
(30, 'Botswana', 1),
(31, 'Bouvet Island', 1),
(32, 'Brazil', 1),
(33, 'British Indian Ocean Territory', 1),
(34, 'Brunei Darussalam', 1),
(35, 'Bulgaria', 1),
(36, 'Burkina Faso', 1),
(37, 'Burundi', 1),
(38, 'Cambodia', 1),
(39, 'Cameroon', 1),
(40, 'Canada', 1),
(41, 'Cape Verde', 1),
(42, 'Cayman Islands', 1),
(43, 'Central African Republic', 1),
(44, 'Chad', 1),
(45, 'Chile', 1),
(46, 'China', 1),
(47, 'Christmas Island', 1),
(48, 'Cocos (Keeling) Islands', 1),
(49, 'Colombia', 1),
(50, 'Comoros', 1),
(51, 'Congo', 1),
(52, 'Congo, Democratic Republic of the Congo', 1),
(53, 'Cook Islands', 1),
(54, 'Costa Rica', 1),
(55, 'Cote D\'Ivoire', 1),
(56, 'Croatia', 1),
(57, 'Cuba', 1),
(58, 'Curacao', 1),
(59, 'Cyprus', 1),
(60, 'Czech Republic', 1),
(61, 'Denmark', 1),
(62, 'Djibouti', 1),
(63, 'Dominica', 1),
(64, 'Dominican Republic', 1),
(65, 'Ecuador', 1),
(66, 'Egypt', 1),
(67, 'El Salvador', 1),
(68, 'Equatorial Guinea', 1),
(69, 'Eritrea', 1),
(70, 'Estonia', 1),
(71, 'Ethiopia', 1),
(72, 'Falkland Islands (Malvinas)', 1),
(73, 'Faroe Islands', 1),
(74, 'Fiji', 1),
(75, 'Finland', 1),
(76, 'France', 1),
(77, 'French Guiana', 1),
(78, 'French Polynesia', 1),
(79, 'French Southern Territories', 1),
(80, 'Gabon', 1),
(81, 'Gambia', 1),
(82, 'Georgia', 1),
(83, 'Germany', 1),
(84, 'Ghana', 1),
(85, 'Gibraltar', 1),
(86, 'Greece', 1),
(87, 'Greenland', 1),
(88, 'Grenada', 1),
(89, 'Guadeloupe', 1),
(90, 'Guam', 1),
(91, 'Guatemala', 1),
(92, 'Guernsey', 1),
(93, 'Guinea', 1),
(94, 'Guinea-Bissau', 1),
(95, 'Guyana', 1),
(96, 'Haiti', 1),
(97, 'Heard Island and Mcdonald Islands', 1),
(98, 'Holy See (Vatican City State)', 1),
(99, 'Honduras', 1),
(100, 'Hong Kong', 1),
(101, 'Hungary', 1),
(102, 'Iceland', 1),
(103, 'India', 1),
(104, 'Indonesia', 1),
(105, 'Iran, Islamic Republic of', 1),
(106, 'Iraq', 1),
(107, 'Ireland', 1),
(108, 'Isle of Man', 1),
(109, 'Israel', 1),
(110, 'Italy', 1),
(111, 'Jamaica', 1),
(112, 'Japan', 1),
(113, 'Jersey', 1),
(114, 'Jordan', 1),
(115, 'Kazakhstan', 1),
(116, 'Kenya', 1),
(117, 'Kiribati', 1),
(118, 'Korea, Democratic People\'s Republic of', 1),
(119, 'Korea, Republic of', 1),
(120, 'Kosovo', 1),
(121, 'Kuwait', 1),
(122, 'Kyrgyzstan', 1),
(123, 'Lao People\'s Democratic Republic', 1),
(124, 'Latvia', 1),
(125, 'Lebanon', 1),
(126, 'Lesotho', 1),
(127, 'Liberia', 1),
(128, 'Libyan Arab Jamahiriya', 1),
(129, 'Liechtenstein', 1),
(130, 'Lithuania', 1),
(131, 'Luxembourg', 1),
(132, 'Macao', 1),
(133, 'Macedonia, the Former Yugoslav Republic of', 1),
(134, 'Madagascar', 1),
(135, 'Malawi', 1),
(136, 'Malaysia', 1),
(137, 'Maldives', 1),
(138, 'Mali', 1),
(139, 'Malta', 1),
(140, 'Marshall Islands', 1),
(141, 'Martinique', 1),
(142, 'Mauritania', 1),
(143, 'Mauritius', 1),
(144, 'Mayotte', 1),
(145, 'Mexico', 1),
(146, 'Micronesia, Federated States of', 1),
(147, 'Moldova, Republic of', 1),
(148, 'Monaco', 1),
(149, 'Mongolia', 1),
(150, 'Montenegro', 1),
(151, 'Montserrat', 1),
(152, 'Morocco', 1),
(153, 'Mozambique', 1),
(154, 'Myanmar', 1),
(155, 'Namibia', 1),
(156, 'Nauru', 1),
(157, 'Nepal', 1),
(158, 'Netherlands', 1),
(159, 'Netherlands Antilles', 1),
(160, 'New Caledonia', 1),
(161, 'New Zealand', 1),
(162, 'Nicaragua', 1),
(163, 'Niger', 1),
(164, 'Nigeria', 1),
(165, 'Niue', 1),
(166, 'Norfolk Island', 1),
(167, 'Northern Mariana Islands', 1),
(168, 'Norway', 1),
(169, 'Oman', 1),
(170, 'Pakistan', 1),
(171, 'Palau', 1),
(172, 'Palestinian Territory, Occupied', 1),
(173, 'Panama', 1),
(174, 'Papua New Guinea', 1),
(175, 'Paraguay', 1),
(176, 'Peru', 1),
(177, 'Philippines', 1),
(178, 'Pitcairn', 1),
(179, 'Poland', 1),
(180, 'Portugal', 1),
(181, 'Puerto Rico', 1),
(182, 'Qatar', 1),
(183, 'Reunion', 1),
(184, 'Romania', 1),
(185, 'Russian Federation', 1),
(186, 'Rwanda', 1),
(187, 'Saint Barthelemy', 1),
(188, 'Saint Helena', 1),
(189, 'Saint Kitts and Nevis', 1),
(190, 'Saint Lucia', 1),
(191, 'Saint Martin', 1),
(192, 'Saint Pierre and Miquelon', 1),
(193, 'Saint Vincent and the Grenadines', 1),
(194, 'Samoa', 1),
(195, 'San Marino', 1),
(196, 'Sao Tome and Principe', 1),
(197, 'Saudi Arabia', 1),
(198, 'Senegal', 1),
(199, 'Serbia', 1),
(200, 'Serbia and Montenegro', 1),
(201, 'Seychelles', 1),
(202, 'Sierra Leone', 1),
(203, 'Singapore', 1),
(204, 'Sint Maarten', 1),
(205, 'Slovakia', 1),
(206, 'Slovenia', 1),
(207, 'Solomon Islands', 1),
(208, 'Somalia', 1),
(209, 'South Africa', 1),
(210, 'South Georgia and the South Sandwich Islands', 1),
(211, 'South Sudan', 1),
(212, 'Spain', 1),
(213, 'Sri Lanka', 1),
(214, 'Sudan', 1),
(215, 'Suriname', 1),
(216, 'Svalbard and Jan Mayen', 1),
(217, 'Swaziland', 1),
(218, 'Sweden', 1),
(219, 'Switzerland', 1),
(220, 'Syrian Arab Republic', 1),
(221, 'Taiwan, Province of China', 1),
(222, 'Tajikistan', 1),
(223, 'Tanzania, United Republic of', 1),
(224, 'Thailand', 1),
(225, 'Timor-Leste', 1),
(226, 'Togo', 1),
(227, 'Tokelau', 1),
(228, 'Tonga', 1),
(229, 'Trinidad and Tobago', 1),
(230, 'Tunisia', 1),
(231, 'Turkey', 1),
(232, 'Turkmenistan', 1),
(233, 'Turks and Caicos Islands', 1),
(234, 'Tuvalu', 1),
(235, 'Uganda', 1),
(236, 'Ukraine', 1),
(237, 'United Arab Emirates', 1),
(238, 'United Kingdom', 1),
(239, 'United States', 1),
(240, 'United States Minor Outlying Islands', 1),
(241, 'Uruguay', 1),
(242, 'Uzbekistan', 1),
(243, 'Vanuatu', 1),
(244, 'Venezuela', 1),
(245, 'Viet Nam', 1),
(246, 'Virgin Islands, British', 1),
(247, 'Virgin Islands, U.s.', 1),
(248, 'Wallis and Futuna', 1),
(249, 'Western Sahara', 1),
(250, 'Yemen', 1),
(251, 'Zambia', 1),
(252, 'Zimbabwe', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_destroyedproduct`
--

CREATE TABLE `tbl_destroyedproduct` (
  `destroy_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT 0,
  `rec_date` datetime DEFAULT NULL,
  `comment` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_duty_roster`
--

CREATE TABLE `tbl_duty_roster` (
  `roster_id` int(11) NOT NULL,
  `rostentry_id` text NOT NULL,
  `shift_id` int(11) NOT NULL,
  `roster_start` varchar(100) NOT NULL,
  `roster_end` varchar(100) NOT NULL,
  `roster_dsys` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_email_permission`
--

CREATE TABLE `tbl_email_permission` (
  `permission_id` int(11) NOT NULL,
  `permission` text DEFAULT NULL,
  `status` int(3) DEFAULT 0 COMMENT '0=no,1=yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_email_permission`
--

INSERT INTO `tbl_email_permission` (`permission_id`, `permission`, `status`) VALUES
(1, 'booking', 1),
(2, 'checkin', 1),
(3, 'checkout', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_emproster_assign`
--

CREATE TABLE `tbl_emproster_assign` (
  `sftasnid` int(11) NOT NULL,
  `roster_id` varchar(100) NOT NULL,
  `emp_id` varchar(100) NOT NULL,
  `emp_startroster_date` text NOT NULL,
  `emp_endroster_date` text NOT NULL,
  `emp_startroster_time` text NOT NULL,
  `emp_endroster_time` text NOT NULL,
  `is_complete` int(11) NOT NULL DEFAULT 0 COMMENT '1 = attend, 2 = leave, 3=absent',
  `is_edited` int(11) DEFAULT 0 COMMENT '1 = Edited 0 = not edited',
  `remarks` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_empwork_shift`
--

CREATE TABLE `tbl_empwork_shift` (
  `shiftid` int(11) NOT NULL,
  `shift_name` varchar(255) NOT NULL,
  `shift_start` text NOT NULL,
  `shift_end` text NOT NULL,
  `shift_duration` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_financialyear`
--

CREATE TABLE `tbl_financialyear` (
  `fiyear_id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `is_active` varchar(3) DEFAULT NULL COMMENT '1=ended,0=inactive,2=active',
  `create_by` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_financialyear`
--

INSERT INTO `tbl_financialyear` (`fiyear_id`, `title`, `start_date`, `end_date`, `date_time`, `is_active`, `create_by`) VALUES
(1, '2022-2023', '2022-10-05', '2023-01-31', '2022-10-05 11:34:22', '2', '1'),
(2, '2024-2024', '2024-09-11', '2024-09-30', '2024-09-24 18:10:29', '2', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_flight_details`
--

CREATE TABLE `tbl_flight_details` (
  `flyid` int(11) NOT NULL,
  `flight_num` varchar(100) NOT NULL,
  `airlience_name` varchar(100) DEFAULT NULL,
  `departure` datetime NOT NULL,
  `arrival` datetime NOT NULL,
  `fly_from` varchar(100) DEFAULT NULL,
  `fly_to` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_floor`
--

CREATE TABLE `tbl_floor` (
  `floorid` int(11) NOT NULL,
  `floorname` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_floor`
--

INSERT INTO `tbl_floor` (`floorid`, `floorname`, `status`) VALUES
(2, 'Main Building', 1),
(4, 'Villa Single ', 1),
(5, 'Villa Double ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_floorplan`
--

CREATE TABLE `tbl_floorplan` (
  `floorplanid` int(11) NOT NULL,
  `floorName` int(11) NOT NULL,
  `noofroom` int(11) NOT NULL,
  `startno` varchar(255) NOT NULL,
  `roomno` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_floorplan`
--

INSERT INTO `tbl_floorplan` (`floorplanid`, `floorName`, `noofroom`, `startno`, `roomno`) VALUES
(89, 2, 8, '101', '101'),
(90, 2, 8, '101', '102'),
(91, 2, 8, '101', '103'),
(92, 2, 8, '101', '104'),
(93, 5, 2, '109', '109'),
(94, 5, 2, '109', '110'),
(95, 4, 1, '111', '111');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_groupitems`
--

CREATE TABLE `tbl_groupitems` (
  `groupid` int(11) NOT NULL,
  `gitemid` int(11) NOT NULL,
  `items` int(11) NOT NULL,
  `item_qty` decimal(10,2) NOT NULL DEFAULT 0.00,
  `varientid` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_guestpayments`
--

CREATE TABLE `tbl_guestpayments` (
  `payid` int(11) NOT NULL,
  `bookedid` varchar(255) NOT NULL,
  `invoice` varchar(255) NOT NULL,
  `paydate` datetime NOT NULL,
  `paymenttype` varchar(100) NOT NULL,
  `paymentamount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `details` varchar(100) DEFAULT NULL,
  `book_type` int(3) DEFAULT 0 COMMENT '0=room, 1=hall room'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_guestpayments`
--

INSERT INTO `tbl_guestpayments` (`payid`, `bookedid`, `invoice`, `paydate`, `paymenttype`, `paymentamount`, `details`, `book_type`) VALUES
(1, '35', '000001', '2022-10-07 09:22:42', '', 184000.00, 'Advance in Card/Account No:  Bank Name: ', 0),
(2, '22', '000002', '2022-10-07 13:35:50', 'Cash Payment', 184000.00, 'Card/Account No:  Bank Name: ', 0),
(3, '23', '000003', '2022-10-08 12:44:35', 'Cash Payment', 230000.00, 'Card/Account No:  Bank Name: ', 0),
(4, '32', '000004', '2022-10-08 12:58:35', 'Cash Payment', 260000.00, 'Card/Account No:  Bank Name: ', 0),
(5, '8', '000005', '2022-10-08 12:59:58', 'Card Payment', 240000.00, 'Card/Account No:  Bank Name: ', 0),
(6, '38', '000006', '2022-10-08 13:06:39', 'Cash Payment', 149500.00, 'Card/Account No:  Bank Name: ', 0),
(7, '26', '000007', '2022-10-08 13:07:43', 'Card Payment', 100000.00, 'Card/Account No:  Bank Name: ', 0),
(8, '39', '000008', '2022-10-08 13:13:41', 'Cash Payment', 149500.00, 'Card/Account No:  Bank Name: ', 0),
(9, '41', '000009', '2022-10-09 11:51:42', 'Cash Payment', 331200.00, 'Card/Account No:  Bank Name: ', 0),
(10, '24', '000010', '2022-10-09 11:52:53', 'Card Payment', 230000.00, 'Card/Account No:  Bank Name: ', 0),
(11, '56', '000011', '2022-10-09 12:00:38', 'Card Payment', 150000.00, 'Card/Account No:  Bank Name: ', 0),
(12, '19', '000012', '2022-10-09 12:24:39', 'Cash Payment', 331200.00, 'Card/Account No:  Bank Name: ', 0),
(13, '55', '000013', '2022-10-09 12:31:47', 'Cash Payment', 100000.00, 'Card/Account No:  Bank Name: ', 0),
(14, '52', '000014', '2022-10-09 12:32:50', 'Cash Payment', 120000.00, 'Card/Account No:  Bank Name: ', 0),
(15, '51', '000015', '2022-10-09 12:36:12', 'Cash Payment', 100000.00, 'Card/Account No:  Bank Name: ', 0),
(16, '31', '000016', '2022-10-09 12:36:53', 'Card Payment', 210000.00, 'Card/Account No:  Bank Name: ', 0),
(17, '58', '000017', '2022-10-09 12:37:33', 'Card Payment', 100000.00, 'Card/Account No:  Bank Name: ', 0),
(18, '60', '000018', '2022-10-09 12:38:10', 'Cash Payment', 80000.00, 'Card/Account No:  Bank Name: ', 0),
(19, '49', '000019', '2022-10-09 12:42:58', 'Card Payment', 100000.00, 'Card/Account No:  Bank Name: ', 0),
(20, '50', '000020', '2022-10-09 12:43:25', 'Card Payment', 80000.00, 'Card/Account No:  Bank Name: ', 0),
(21, '69', '000021', '2022-10-10 12:19:09', 'Cash Payment', 150000.00, 'Card/Account No:  Bank Name: ', 0),
(22, '68', '000022', '2022-10-10 12:19:45', 'Cash Payment', 150000.00, 'Card/Account No:  Bank Name: ', 0),
(23, '59', '000023', '2022-10-10 12:20:30', 'Cash Payment', 300000.00, 'Card/Account No:  Bank Name: ', 0),
(24, '20', '000024', '2022-10-10 12:20:59', 'Cash Payment', 130000.00, 'Card/Account No:  Bank Name: ', 0),
(25, '70', '000025', '2022-10-10 12:21:30', 'Cash Payment', 100000.00, 'Card/Account No:  Bank Name: ', 0),
(26, '57', '000026', '2022-10-10 12:21:48', 'Cash Payment', 160000.00, 'Card/Account No:  Bank Name: ', 0),
(27, '66', '000027', '2022-10-10 12:22:33', 'Card Payment', 70000.00, 'Card/Account No:  Bank Name: ', 0),
(28, '80', '000028', '2022-10-11 09:49:02', 'Cash Payment', 100000.00, 'Card/Account No:  Bank Name: ', 0),
(29, '40', '000029', '2022-10-11 11:32:15', 'Masterpass', 260000.00, 'Card/Account No:  Bank Name: ', 0),
(30, '77', '000030', '2022-10-11 11:54:52', 'Cash Payment', 150000.00, 'Card/Account No:  Bank Name: ', 0),
(31, '75', '000031', '2022-10-11 12:06:11', 'Cash Payment', 150000.00, 'Card/Account No:  Bank Name: ', 0),
(32, '83', '000032', '2022-10-11 12:08:12', 'Cash Payment', 120000.00, 'Card/Account No:  Bank Name: ', 0),
(33, '63', '000033', '2022-10-11 12:12:24', 'Cash Payment', 184000.00, 'Card/Account No:  Bank Name: ', 0),
(34, '54', '000034', '2022-10-11 12:13:15', 'Card Payment', 496800.00, 'Card/Account No:  Bank Name: ', 0),
(35, '62', '000035', '2022-10-11 12:25:19', 'Masterpass', 100000.00, 'Card/Account No:  Bank Name: ', 0),
(36, '62', '000036', '2022-10-11 12:25:21', 'Masterpass', 100000.00, 'Card/Account No:  Bank Name: ', 0),
(37, '6', '000037', '2022-10-11 13:08:58', 'Masterpass', 331200.00, 'Card/Account No:  Bank Name: ', 0),
(38, '25', '000038', '2022-10-12 20:30:37', 'Cash Payment', 230000.00, 'Card/Account No:  Bank Name: ', 0),
(39, '91', '000039', '2022-10-12 20:32:14', 'Card Payment', 1300000.00, 'Card/Account No:  Bank Name: ', 0),
(40, '92', '000040', '2022-10-12 20:33:33', 'Cash Payment', 130000.00, 'Card/Account No:  Bank Name: ', 0),
(41, '48', '000041', '2022-10-12 20:34:46', 'Cash Payment', 836800.00, 'Card/Account No:  Bank Name: ', 0),
(42, '76', '000042', '2022-10-12 20:38:39', 'Cash Payment', 90000.00, 'Card/Account No:  Bank Name: ', 0),
(43, '61', '000043', '2022-10-12 20:43:33', 'Cash Payment', 80000.00, 'Card/Account No:  Bank Name: ', 0),
(44, '67', '000044', '2022-10-13 10:13:06', 'Card Payment', 165600.00, 'Card/Account No:  Bank Name: ', 0),
(45, '67', '000045', '2022-10-13 10:13:07', 'Card Payment', 165600.00, 'Card/Account No:  Bank Name: ', 0),
(46, '78', '000046', '2022-10-13 10:14:25', 'Card Payment', 390000.00, 'Card/Account No:  Bank Name: ', 0),
(47, '89', '000047', '2022-10-13 10:15:18', 'Cash Payment', 240000.00, 'Card/Account No:  Bank Name: ', 0),
(48, '79', '000048', '2022-10-13 10:16:17', 'Card Payment', 360000.00, 'Card/Account No:  Bank Name: ', 0),
(49, '90', '000049', '2022-10-13 10:16:57', 'Cash Payment', 240000.00, 'Card/Account No:  Bank Name: ', 0),
(50, '81', '000050', '2022-10-13 14:42:10', 'Cash Payment', 80000.00, 'Card/Account No:  Bank Name: ', 0),
(51, '100', '000051', '2022-10-14 16:32:01', 'Card Payment', 300000.00, 'Card/Account No:  Bank Name: ', 0),
(52, '112', '000052', '2022-10-14 16:35:04', 'Cash Payment', 150000.00, 'Card/Account No:  Bank Name: ', 0),
(53, '112', '000053', '2022-10-14 16:35:06', 'Cash Payment', 150000.00, 'Card/Account No:  Bank Name: ', 0),
(54, '87', '000054', '2022-10-14 16:45:15', 'Cash Payment', 390000.00, 'Card/Account No:  Bank Name: ', 0),
(55, '107', '000055', '2022-10-14 16:47:44', 'Cash Payment', 165600.00, 'Card/Account No:  Bank Name: ', 0),
(56, '94', '000056', '2022-10-14 16:50:08', 'Cash Payment', 200000.00, 'Card/Account No:  Bank Name: ', 0),
(57, '104', '000057', '2022-10-14 16:50:57', 'Cash Payment', 120000.00, 'Card/Account No:  Bank Name: ', 0),
(58, '113', '000058', '2022-10-14 16:51:31', 'Cash Payment', 120000.00, 'Card/Account No:  Bank Name: ', 0),
(59, '103', '000059', '2022-10-14 16:56:09', 'Cash Payment', 80000.00, 'Card/Account No:  Bank Name: ', 0),
(60, '84', '000060', '2022-10-14 16:58:09', 'Cash Payment', 320000.00, 'Card/Account No:  Bank Name: ', 0),
(61, '110', '000061', '2022-10-14 21:10:43', 'Cash Payment', 450000.00, 'Card/Account No:  Bank Name: ', 0),
(62, '64', '000062', '2022-10-15 11:56:59', 'Card Payment', 90000.00, 'Card/Account No:  Bank Name: ', 0),
(63, '82', '000063', '2022-10-15 11:58:18', 'Card Payment', 280000.00, 'Card/Account No:  Bank Name: ', 0),
(64, '115', '000064', '2022-10-15 12:40:46', 'Cash Payment', 150000.00, 'Card/Account No:  Bank Name: ', 0),
(65, '120', '000065', '2022-10-15 12:46:00', 'Cash Payment', 130000.00, 'Card/Account No:  Bank Name: ', 0),
(66, '126', '000066', '2022-10-15 12:46:30', 'Cash Payment', 130000.00, 'Card/Account No:  Bank Name: ', 0),
(67, '124', '000067', '2022-10-15 12:50:12', 'Masterpass', 100000.00, 'Card/Account No:  Bank Name: ', 0),
(68, '119', '000068', '2022-10-15 12:51:31', 'Cash Payment', 120000.00, 'Card/Account No:  Bank Name: ', 0),
(69, '116', '000069', '2022-10-15 12:52:08', 'Cash Payment', 120000.00, 'Card/Account No:  Bank Name: ', 0),
(70, '109', '000070', '2022-10-15 12:52:49', 'Cash Payment', 240000.00, 'Card/Account No:  Bank Name: ', 0),
(71, '125', '000071', '2022-10-15 12:54:51', 'Card Payment', 80000.00, 'Card/Account No:  Bank Name: ', 0),
(72, '128', '000072', '2022-10-15 13:21:52', 'Cash Payment', 60000.00, 'Advance in Card/Account No:  Bank Name: ', 0),
(73, '129', '000073', '2022-10-15 13:25:27', 'Cash Payment', 100000.00, 'Advance in Card/Account No:  Bank Name: ', 0),
(74, '133', '000074', '2022-10-16 11:25:11', 'Cash Payment', 130000.00, 'Card/Account No:  Bank Name: ', 0),
(75, '130', '000075', '2022-10-16 11:31:27', 'Cash Payment', 120000.00, 'Card/Account No:  Bank Name: ', 0),
(76, '132', '000076', '2022-10-16 11:32:04', 'Cash Payment', 120000.00, 'Card/Account No:  Bank Name: ', 0),
(77, '135', '000077', '2022-10-16 11:34:03', 'Cash Payment', 80000.00, 'Card/Account No:  Bank Name: ', 0),
(78, '122', '000078', '2022-10-16 11:34:48', 'Cash Payment', 80000.00, 'Card/Account No:  Bank Name: ', 0),
(79, '118', '000079', '2022-10-16 11:36:31', 'Card Payment', 260000.00, 'Card/Account No:  Bank Name: ', 0),
(80, '136', '000080', '2022-10-16 11:37:37', 'Paypal', 100000.00, 'Card/Account No:  Bank Name: ', 0),
(81, '147', '000081', '2022-10-16 19:09:31', 'Cash Payment', 130000.00, 'Advance in Card/Account No:  Bank Name: ', 0),
(82, '149', '000082', '2022-10-16 19:33:41', 'Cash Payment', 120000.00, 'Advance in Card/Account No:  Bank Name: ', 0),
(83, '151', '000083', '2022-10-16 20:14:13', 'Cash Payment', 130000.00, 'Advance in Card/Account No:  Bank Name: ', 0),
(84, '152', '000084', '2022-10-16 20:18:46', 'Cash Payment', 70000.00, 'Advance in Card/Account No:  Bank Name: ', 0),
(85, '143', '000085', '2022-10-17 07:45:02', 'Cash Payment', 100000.00, 'Card/Account No:  Bank Name: ', 0),
(86, '106', '000086', '2022-10-17 07:46:33', 'Masterpass', 200000.00, 'Card/Account No:  Bank Name: ', 0),
(87, '144', '000087', '2022-10-17 07:53:26', 'Cash Payment', 147000.00, 'Card/Account No:  Bank Name: ', 0),
(88, '142', '000088', '2022-10-17 08:52:58', 'Cash Payment', 80000.00, 'Card/Account No:  Bank Name: ', 0),
(89, '123', '000089', '2022-10-17 08:56:41', 'Cash Payment', 200000.00, 'Card/Account No:  Bank Name: ', 0),
(90, '141', '000090', '2022-10-17 08:57:15', 'Cash Payment', 80000.00, 'Card/Account No:  Bank Name: ', 0),
(91, '139', '000091', '2022-10-17 09:00:36', 'Card Payment', 230000.00, 'Card/Account No:  Bank Name: ', 0),
(92, '137', '000092', '2022-10-17 09:01:40', 'Card Payment', 184000.00, 'Card/Account No:  Bank Name: ', 0),
(93, '138', '000093', '2022-10-17 09:02:25', 'Cash Payment', 230000.00, 'Card/Account No:  Bank Name: ', 0),
(94, '140', '000094', '2022-10-17 09:03:10', 'Card Payment', 230000.00, 'Card/Account No:  Bank Name: ', 0),
(95, '127', '000095', '2022-10-17 09:04:33', 'Card Payment', 260000.00, 'Card/Account No:  Bank Name: ', 0),
(96, '99', '000096', '2022-10-17 09:07:56', 'Cash Payment', 130000.00, 'Card/Account No:  Bank Name: ', 0),
(97, '134', '000097', '2022-10-17 09:09:02', 'Cash Payment', 156400.00, 'Card/Account No:  Bank Name: ', 0),
(98, '161', '000098', '2022-10-18 18:56:24', 'Cash Payment', 75000.00, 'Advance in Card/Account No:  Bank Name: ', 0),
(99, '164', '000099', '2022-10-19 11:36:29', 'Cash Payment', 150000.00, 'Card/Account No:  Bank Name: ', 0),
(100, '164', '000100', '2022-10-19 11:36:29', 'Cash Payment', 150000.00, 'Card/Account No:  Bank Name: ', 0),
(101, '164', '000101', '2022-10-19 11:36:30', 'Cash Payment', 150000.00, 'Card/Account No:  Bank Name: ', 0),
(102, '164', '000102', '2022-10-19 11:36:31', 'Cash Payment', 150000.00, 'Card/Account No:  Bank Name: ', 0),
(103, '164', '000103', '2022-10-19 11:36:31', 'Cash Payment', 150000.00, 'Card/Account No:  Bank Name: ', 0),
(104, '164', '000104', '2022-10-19 11:36:33', 'Cash Payment', 150000.00, 'Card/Account No:  Bank Name: ', 0),
(105, '164', '000105', '2022-10-19 11:36:41', 'Cash Payment', 150000.00, 'Card/Account No:  Bank Name: ', 0),
(106, '165', '000106', '2022-10-19 11:37:38', 'Cash Payment', 150000.00, 'Card/Account No:  Bank Name: ', 0),
(107, '165', '000107', '2022-10-19 11:37:49', 'Cash Payment', 150000.00, 'Card/Account No:  Bank Name: ', 0),
(108, '162', '000108', '2022-10-19 11:40:43', 'Cash Payment', 150000.00, 'Card/Account No:  Bank Name: ', 0),
(109, '163', '000109', '2022-10-19 14:07:04', 'Cash Payment', 150000.00, 'Card/Account No:  Bank Name: ', 0),
(110, '163', '000110', '2022-10-19 14:07:05', 'Cash Payment', 150000.00, 'Card/Account No:  Bank Name: ', 0),
(111, '160', '000111', '2022-10-19 14:07:41', 'Card Payment', 780000.00, 'Card/Account No:  Bank Name: ', 0),
(112, '156', '000112', '2022-10-19 14:08:07', 'Card Payment', 200000.00, 'Card/Account No:  Bank Name: ', 0),
(113, '157', '000113', '2022-10-20 12:03:20', 'Cash Payment', 480000.00, 'Card/Account No:  Bank Name: ', 0),
(114, '169', '000114', '2022-10-20 12:04:05', 'Cash Payment', 120000.00, 'Card/Account No:  Bank Name: ', 0),
(115, '174', '000115', '2022-10-20 12:04:29', 'Cash Payment', 80000.00, 'Card/Account No:  Bank Name: ', 0),
(116, '170', '000116', '2022-10-20 12:04:47', 'Cash Payment', 100000.00, 'Card/Account No:  Bank Name: ', 0),
(117, '171', '000117', '2022-10-20 12:05:34', 'Paypal', 100000.00, 'Card/Account No:  Bank Name: ', 0),
(118, '177', '000118', '2022-10-20 12:38:26', 'Cash Payment', 80000.00, 'Card/Account No:  Bank Name: ', 0),
(119, '178', '000119', '2022-10-21 10:06:52', 'Card Payment', 150000.00, 'Card/Account No:  Bank Name: ', 0),
(120, '159', '000120', '2022-10-21 10:11:12', 'Cash Payment', 300000.00, 'Card/Account No:  Bank Name: ', 0),
(121, '158', '000121', '2022-10-21 10:12:27', 'Cash Payment', 240000.00, 'Card/Account No:  Bank Name: ', 0),
(122, '167', '000122', '2022-10-21 10:20:20', 'Cash Payment', 240000.00, 'Card/Account No:  Bank Name: ', 0),
(123, '172', '000123', '2022-10-22 09:59:02', 'Card Payment', 450000.00, 'Card/Account No:  Bank Name: ', 0),
(124, '173', '000124', '2022-10-22 10:05:31', 'Cash Payment', 450000.00, 'Card/Account No:  Bank Name: ', 0),
(125, '191', '000125', '2022-10-22 10:06:33', 'Cash Payment', 130000.00, 'Card/Account No:  Bank Name: ', 0),
(126, '180', '000126', '2022-10-22 10:07:03', 'Card Payment', 130000.00, 'Card/Account No:  Bank Name: ', 0),
(127, '166', '000127', '2022-10-22 10:10:28', 'Cash Payment', 100000.00, 'Card/Account No:  Bank Name: ', 0),
(128, '168', '000128', '2022-10-22 10:23:39', 'Card Payment', 360000.00, 'Card/Account No:  Bank Name: ', 0),
(129, '182', '000129', '2022-10-22 10:24:30', 'Cash Payment', 120000.00, 'Card/Account No:  Bank Name: ', 0),
(130, '183', '000130', '2022-10-22 10:25:20', 'Cash Payment', 100000.00, 'Card/Account No:  Bank Name: ', 0),
(131, '184', '000131', '2022-10-22 10:25:59', 'Cash Payment', 298000.00, 'Card/Account No:  Bank Name: ', 0),
(132, '176', '000132', '2022-10-22 10:26:39', 'Cash Payment', 299000.00, 'Card/Account No:  Bank Name: ', 0),
(133, '155', '000133', '2022-10-22 10:27:23', 'Cash Payment', 200000.00, 'Card/Account No:  Bank Name: ', 0),
(134, '189', '000134', '2022-10-22 10:28:01', 'Card Payment', 100000.00, 'Card/Account No:  Bank Name: ', 0),
(135, '190', '000135', '2022-10-22 10:34:55', 'Paypal', 80000.00, 'Card/Account No:  Bank Name: ', 0),
(136, '198', '000136', '2022-10-23 11:51:46', 'Cash Payment', 80000.00, 'Card/Account No:  Bank Name: ', 0),
(137, '197', '000137', '2022-10-23 11:53:47', 'Card Payment', 150000.00, 'Card/Account No:  Bank Name: ', 0),
(138, '192', '000138', '2022-10-23 11:54:16', 'Card Payment', 150000.00, 'Card/Account No:  Bank Name: ', 0),
(139, '196', '000139', '2022-10-23 11:54:49', 'Card Payment', 120000.00, 'Card/Account No:  Bank Name: ', 0),
(140, '195', '000140', '2022-10-23 11:55:21', 'Card Payment', 120000.00, 'Card/Account No:  Bank Name: ', 0),
(141, '211', '000141', '2022-10-23 21:42:56', 'Cash Payment', 120000.00, 'Advance in Card/Account No:  Bank Name: ', 0),
(142, '210', '000142', '2022-10-24 12:55:58', 'Card Payment', 165600.00, 'Card/Account No:  Bank Name: ', 0),
(143, '209', '000143', '2022-10-24 12:56:55', 'Card Payment', 165600.00, 'Card/Account No:  Bank Name: ', 0),
(144, '188', '000144', '2022-10-24 12:57:20', 'Cash Payment', 115000.00, 'Card/Account No:  Bank Name: ', 0),
(145, '208', '000145', '2022-10-24 12:57:36', 'Card Payment', 165600.00, 'Card/Account No:  Bank Name: ', 0),
(146, '207', '000146', '2022-10-24 12:58:50', 'Card Payment', 165600.00, 'Card/Account No:  Bank Name: ', 0),
(147, '199', '000147', '2022-10-24 12:59:41', 'Cash Payment', 240000.00, 'Card/Account No:  Bank Name: ', 0),
(148, '200', '000148', '2022-10-24 13:00:12', 'Cash Payment', 240000.00, 'Card/Account No:  Bank Name: ', 0),
(149, '201', '000149', '2022-10-24 13:31:17', 'Paypal', 200000.00, 'Card/Account No:  Bank Name: ', 0),
(150, '186', '000150', '2022-10-24 13:31:37', 'Cash Payment', 80000.00, 'Card/Account No:  Bank Name: ', 0),
(151, '181', '000151', '2022-10-24 13:32:08', 'Card Payment', 100000.00, 'Card/Account No:  Bank Name: ', 0),
(152, '218', '000152', '2022-10-25 09:03:32', 'Card Payment', 150000.00, 'Card/Account No:  Bank Name: ', 0),
(153, '220', '000153', '2022-10-25 09:04:49', 'Card Payment', 150000.00, 'Card/Account No:  Bank Name: ', 0),
(154, '222', '000154', '2022-10-25 09:06:06', 'Card Payment', 150000.00, 'Card/Account No:  Bank Name: ', 0),
(155, '219', '000155', '2022-10-25 09:06:44', 'Paypal', 130000.00, 'Card/Account No:  Bank Name: ', 0),
(156, '221', '000156', '2022-10-25 09:07:11', 'Cash Payment', 130000.00, 'Card/Account No:  Bank Name: ', 0),
(157, '223', '000157', '2022-10-25 09:08:21', 'Card Payment', 120000.00, 'Card/Account No:  Bank Name: ', 0),
(158, '224', '000158', '2022-10-25 09:08:47', 'Card Payment', 120000.00, 'Card/Account No:  Bank Name: ', 0),
(159, '226', '000159', '2022-10-25 09:09:16', 'Cash Payment', 120000.00, 'Card/Account No:  Bank Name: ', 0),
(160, '217', '000160', '2022-10-25 09:09:42', 'Card Payment', 100000.00, 'Card/Account No:  Bank Name: ', 0),
(161, '228', '000161', '2022-10-25 09:10:13', 'Cash Payment', 80000.00, 'Card/Account No:  Bank Name: ', 0),
(162, '93', '000162', '2022-10-26 20:14:31', 'Cash Payment', 3270000.00, 'Card/Account No:  Bank Name: ', 0),
(163, '231', '000163', '2022-10-26 20:15:23', 'Cash Payment', 410000.00, 'Card/Account No:  Bank Name: ', 0),
(164, '243', '000164', '2022-10-27 08:12:12', 'Cash Payment', 108000.00, 'Card/Account No:  Bank Name: ', 0),
(165, '242', '000165', '2022-10-27 08:16:02', 'Cash Payment', 108000.00, 'Card/Account No:  Bank Name: ', 0),
(166, '241', '000166', '2022-10-27 08:41:48', 'Cash Payment', 80000.00, 'Card/Account No:  Bank Name: ', 0),
(167, '239', '000167', '2022-10-27 08:42:48', 'Cash Payment', 260000.00, 'Card/Account No:  Bank Name: ', 0),
(168, '248', '000168', '2022-10-27 16:43:55', 'Cash Payment', 360000.00, 'Advance in Card/Account No:  Bank Name: ', 0),
(169, '249', '000169', '2022-10-27 16:51:51', 'Cash Payment', 80000.00, 'Advance in Card/Account No:  Bank Name: ', 0),
(170, '240', '000170', '2022-10-27 16:55:57', 'Cash Payment', 240000.00, 'Card/Account No:  Bank Name: ', 0),
(171, '249', '000171', '2022-10-28 09:11:26', 'Cash Payment', 0.00, 'Card/Account No:  Bank Name: ', 0),
(172, '249', '000172', '2022-10-28 09:11:36', 'Cash Payment', 0.00, 'Card/Account No:  Bank Name: ', 0),
(173, '252', '000173', '2022-10-28 09:12:52', 'Cash Payment', 80000.00, 'Card/Account No:  Bank Name: ', 0),
(174, '260', '000174', '2022-10-30 16:48:39', 'Cash Payment', 360000.00, 'Advance in Card/Account No:  Bank Name: ', 0),
(175, '262', '000175', '2022-10-30 17:51:02', 'Cash Payment', 360000.00, 'Advance in Card/Account No:  Bank Name: ', 0),
(176, '263', '000176', '2022-10-30 17:53:21', 'Cash Payment', 80000.00, 'Advance in Card/Account No:  Bank Name: ', 0),
(177, '203', '000177', '2022-10-30 18:10:27', 'Cash Payment', 600000.00, 'Card/Account No:  Bank Name: ', 0),
(178, '204', '000178', '2022-10-30 18:11:34', 'Cash Payment', 600000.00, 'Card/Account No:  Bank Name: ', 0),
(179, '206', '000179', '2022-10-30 18:12:02', 'Cash Payment', 120000.00, 'Card/Account No:  Bank Name: ', 0),
(180, '233', '000180', '2022-10-30 18:12:20', 'Cash Payment', 400000.00, 'Card/Account No:  Bank Name: ', 0),
(181, '234', '000181', '2022-10-30 18:14:26', 'Cash Payment', 400000.00, 'Card/Account No:  Bank Name: ', 0),
(182, '235', '000182', '2022-10-30 18:15:10', 'Cash Payment', 500000.00, 'Card/Account No:  Bank Name: ', 0),
(183, '247', '000183', '2022-10-30 18:15:33', 'Cash Payment', 100000.00, 'Card/Account No:  Bank Name: ', 0),
(184, '250', '000184', '2022-10-30 18:16:01', 'Cash Payment', 160000.00, 'Card/Account No:  Bank Name: ', 0),
(185, '251', '000185', '2022-10-30 18:16:22', 'Cash Payment', 80000.00, 'Card/Account No:  Bank Name: ', 0),
(186, '255', '000186', '2022-10-30 18:21:33', 'Cash Payment', 80000.00, 'Card/Account No:  Bank Name: ', 0),
(187, '256', '000187', '2022-10-30 18:22:44', 'Cash Payment', 120000.00, 'Card/Account No:  Bank Name: ', 0),
(188, '258', '000188', '2022-10-30 18:33:13', 'Cash Payment', 130000.00, 'Card/Account No:  Bank Name: ', 0),
(189, '259', '000189', '2022-10-30 18:35:30', 'Cash Payment', 300000.00, 'Card/Account No:  Bank Name: ', 0),
(190, '227', '000190', '2022-10-30 18:36:40', 'Cash Payment', 400000.00, 'Card/Account No:  Bank Name: ', 0),
(191, '267', '000191', '2022-10-30 19:09:30', 'Cash Payment', 360000.00, 'Advance in Card/Account No:  Bank Name: ', 0),
(192, '263', '000192', '2022-10-31 08:14:13', 'Cash Payment', 0.00, 'Card/Account No:  Bank Name: ', 0),
(193, '265', '000193', '2022-10-31 09:37:00', 'Masterpass', 130000.00, 'Card/Account No:  Bank Name: ', 0),
(194, '264', '000194', '2022-10-31 09:38:14', 'Masterpass', 100000.00, 'Card/Account No:  Bank Name: ', 0),
(195, '266', '000195', '2022-10-31 09:38:36', 'Masterpass', 120000.00, 'Card/Account No:  Bank Name: ', 0),
(196, '257', '000196', '2022-10-31 20:18:33', 'Cash Payment', 240000.00, 'Card/Account No:  Bank Name: ', 0),
(197, '276', '000197', '2022-11-01 14:34:39', 'Cash Payment', 120000.00, 'Card/Account No:  Bank Name: ', 0),
(198, '275', '000198', '2022-11-01 14:36:01', 'Cash Payment', 70000.00, 'Card/Account No:  Bank Name: ', 0),
(199, '279', '000199', '2022-11-01 14:36:28', 'Cash Payment', 150000.00, 'Card/Account No:  Bank Name: ', 0),
(200, '271', '000200', '2022-11-01 14:37:08', 'Cash Payment', 299000.00, 'Card/Account No:  Bank Name: ', 0),
(201, '274', '000201', '2022-11-01 14:38:09', 'Cash Payment', 165600.00, 'Card/Account No:  Bank Name: ', 0),
(202, '301', '000202', '2022-11-02 20:12:39', 'Cash Payment', 80000.00, 'Advance in Card/Account No:  Bank Name: ', 0),
(203, '329', '000203', '2024-10-22 00:00:00', 'Direct Pay(DPO)', 130.00, NULL, 0),
(204, '329', '000204', '2024-10-22 00:00:00', 'Direct Pay(DPO)', 130.00, NULL, 0),
(205, '329', '000205', '2024-10-22 00:00:00', 'Direct Pay(DPO)', 130.00, NULL, 0),
(206, '329', '000206', '2024-10-22 00:00:00', 'Direct Pay(DPO)', 130.00, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hallroom_booking`
--

CREATE TABLE `tbl_hallroom_booking` (
  `hbid` int(11) NOT NULL,
  `customerid` int(11) NOT NULL,
  `invoice_no` varchar(100) DEFAULT NULL,
  `booked_id` varchar(100) DEFAULT NULL,
  `event_name` varchar(100) DEFAULT NULL,
  `event_type` varchar(100) DEFAULT NULL,
  `hall_type` varchar(100) DEFAULT NULL,
  `hall_no` varchar(100) DEFAULT NULL,
  `total_room` int(11) DEFAULT 1,
  `rent` varchar(100) DEFAULT NULL,
  `totalamount` decimal(10,2) DEFAULT 0.00,
  `paid_amount` decimal(10,2) DEFAULT 0.00,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `people` varchar(100) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1=booked, 2=completed, 3=cancelled',
  `payment_status` int(11) NOT NULL DEFAULT 0 COMMENT '1=paid, 2=partialy paid, 0=unpaid, 3=refunded',
  `seatplan` varchar(100) DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `advance_remarks` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hallroom_info`
--

CREATE TABLE `tbl_hallroom_info` (
  `hid` int(11) NOT NULL,
  `hall_type` varchar(100) DEFAULT NULL,
  `person_limit` int(11) DEFAULT NULL,
  `rate` decimal(10,2) DEFAULT 0.00,
  `size` varchar(100) DEFAULT NULL,
  `mesurement` varchar(100) DEFAULT NULL,
  `seatplan` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hallroom_postbill`
--

CREATE TABLE `tbl_hallroom_postbill` (
  `hpbid` int(11) NOT NULL,
  `hrbooking` int(11) NOT NULL,
  `taxname` varchar(100) DEFAULT NULL,
  `taxrate` varchar(100) DEFAULT NULL,
  `scharge` varchar(100) DEFAULT NULL,
  `refund_charge` varchar(100) DEFAULT NULL,
  `remarks` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hallroom_seatplan`
--

CREATE TABLE `tbl_hallroom_seatplan` (
  `hsid` int(11) NOT NULL,
  `plan_name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hkitem`
--

CREATE TABLE `tbl_hkitem` (
  `item_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `checklist` text DEFAULT NULL,
  `price` decimal(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_housekeepingrecord`
--

CREATE TABLE `tbl_housekeepingrecord` (
  `hkeeper_id` int(11) NOT NULL,
  `assignby` varchar(100) NOT NULL DEFAULT '1',
  `employee_id` text NOT NULL,
  `roomno` int(11) NOT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `createDate` datetime NOT NULL,
  `all_checklist` text DEFAULT NULL,
  `all_productlist` varchar(100) DEFAULT NULL,
  `allproductqty` varchar(100) DEFAULT NULL,
  `status` int(3) NOT NULL COMMENT '0=pending,1=completed,2=under process'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_itemaccepted`
--

CREATE TABLE `tbl_itemaccepted` (
  `acid` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `menuid` int(11) NOT NULL,
  `varient` int(11) NOT NULL,
  `accepttime` datetime NOT NULL DEFAULT '1970-01-01 01:01:01'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kitchen`
--

CREATE TABLE `tbl_kitchen` (
  `kitchenid` int(11) NOT NULL,
  `kitchen_name` varchar(100) NOT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `port` varchar(10) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kitchen_order`
--

CREATE TABLE `tbl_kitchen_order` (
  `ktid` int(11) NOT NULL,
  `kitchenid` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `itemid` int(11) NOT NULL,
  `varient` int(11) DEFAULT NULL,
  `addonsuid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_laundry`
--

CREATE TABLE `tbl_laundry` (
  `laundry_id` int(11) NOT NULL,
  `invoice_no` text DEFAULT NULL,
  `product_id` varchar(100) NOT NULL,
  `type` text DEFAULT NULL,
  `checklist` text DEFAULT NULL,
  `operate_by` text DEFAULT NULL,
  `quantity` varchar(100) DEFAULT '0',
  `item_cost` varchar(100) DEFAULT NULL,
  `total_cost` decimal(10,0) NOT NULL DEFAULT 0,
  `rec_date` datetime DEFAULT NULL,
  `document` text DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `status` varchar(3) DEFAULT '0' COMMENT '1=paid,0=unpaid'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_laundry_payment`
--

CREATE TABLE `tbl_laundry_payment` (
  `landry_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `total_amount` decimal(10,2) DEFAULT NULL,
  `paid_amount` decimal(10,2) DEFAULT NULL,
  `due_amount` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_laundry_payment`
--

INSERT INTO `tbl_laundry_payment` (`landry_id`, `name`, `total_amount`, `paid_amount`, `due_amount`) VALUES
(1, 'Laundry', 0.00, 0.00, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menutype`
--

CREATE TABLE `tbl_menutype` (
  `menutypeid` int(11) NOT NULL,
  `menutype` varchar(120) NOT NULL,
  `menu_icon` varchar(150) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_module_purchasekey`
--

CREATE TABLE `tbl_module_purchasekey` (
  `mpid` int(11) NOT NULL,
  `module` varchar(25) DEFAULT NULL,
  `purchasekey` varchar(55) DEFAULT NULL,
  `downloaddate` datetime NOT NULL DEFAULT '1970-01-01 01:01:01',
  `updatedate` datetime NOT NULL DEFAULT '1970-01-01 01:01:01'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_note`
--

CREATE TABLE `tbl_note` (
  `note_id` int(11) NOT NULL,
  `note` text DEFAULT NULL,
  `roomno` text DEFAULT NULL,
  `bookedid` text DEFAULT NULL,
  `status` int(3) DEFAULT 0 COMMENT '0=pending,1=solved'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_openingbalance`
--

CREATE TABLE `tbl_openingbalance` (
  `opbalance_id` int(11) NOT NULL,
  `fiyear_id` int(11) DEFAULT NULL,
  `headcode` text DEFAULT NULL,
  `opening_balance` decimal(10,2) DEFAULT NULL,
  `current_balance` decimal(10,2) DEFAULT NULL,
  `remark` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_openingbalance`
--

INSERT INTO `tbl_openingbalance` (`opbalance_id`, `fiyear_id`, `headcode`, `opening_balance`, `current_balance`, `remark`) VALUES
(1, 1, '30301', 0.00, -41212400.00, 'Auto inserted while transaction'),
(2, 1, '102030101', 0.00, 0.00, 'Auto inserted while transaction'),
(3, 1, '1020101', 0.00, 28642800.00, 'Auto inserted while transaction'),
(4, 1, '30304', 0.00, 0.00, 'Auto inserted while transaction'),
(5, 1, '1020204', 0.00, 0.00, 'Auto inserted while transaction'),
(6, 1, '5020303', 0.00, 0.00, 'Auto inserted while transaction'),
(7, 1, '102010304', 0.00, 10334400.00, 'Auto inserted while transaction'),
(8, 1, '102010301', 0.00, 610000.00, 'Auto inserted while transaction'),
(9, NULL, '102030101', 0.00, 0.00, 'Auto inserted while transaction'),
(10, NULL, '30301', 0.00, -130.00, 'Auto inserted while transaction');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_orderprepare`
--

CREATE TABLE `tbl_orderprepare` (
  `opid` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `menuid` int(11) NOT NULL,
  `varient` int(11) NOT NULL,
  `preparetime` datetime NOT NULL DEFAULT '1970-01-01 01:01:01'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_otherguest`
--

CREATE TABLE `tbl_otherguest` (
  `otherguest_id` int(11) NOT NULL,
  `bookedid` text DEFAULT NULL,
  `customerid` int(11) DEFAULT NULL,
  `guestname` text DEFAULT NULL,
  `gender` text DEFAULT NULL,
  `mobile` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `photo_id_type` text DEFAULT NULL,
  `photo_id` text DEFAULT NULL,
  `front_image` varchar(100) DEFAULT NULL,
  `back_image` varchar(100) DEFAULT NULL,
  `occupant_image` varchar(100) DEFAULT NULL,
  `type` int(3) DEFAULT 0 COMMENT '0=room, 1=hall room'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_otherguest`
--

INSERT INTO `tbl_otherguest` (`otherguest_id`, `bookedid`, `customerid`, `guestname`, `gender`, `mobile`, `email`, `photo_id_type`, `photo_id`, `front_image`, `back_image`, `occupant_image`, `type`) VALUES
(1, '16', NULL, 'Mr George Gandye', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(2, '20', NULL, 'Mr Shishir Kacker', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(3, '106', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(4, '194', NULL, 'Ms ASHA GEMBE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(5, '299', NULL, 'Mr AL HAJI MIKIDADI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(6, '300', NULL, 'Mr ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(7, '300', NULL, 'Mr Jamal Sadik', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_posetting`
--

CREATE TABLE `tbl_posetting` (
  `possettingid` int(11) NOT NULL,
  `waiter` int(11) NOT NULL DEFAULT 0 COMMENT '1=show,0=hide',
  `tableid` int(11) NOT NULL DEFAULT 0 COMMENT '1=show,0=hide',
  `cooktime` int(11) NOT NULL DEFAULT 0 COMMENT '1=enable,0=disable',
  `productionsetting` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=manual,1=auto',
  `tablemaping` int(11) NOT NULL DEFAULT 0 COMMENT '1=enable,0=disable',
  `soundenable` int(11) DEFAULT NULL COMMENT '1=enable,0=disable'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_posetting`
--

INSERT INTO `tbl_posetting` (`possettingid`, `waiter`, `tableid`, `cooktime`, `productionsetting`, `tablemaping`, `soundenable`) VALUES
(1, 1, 1, 1, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_postedbills`
--

CREATE TABLE `tbl_postedbills` (
  `bill_id` int(11) NOT NULL,
  `bookedid` int(11) NOT NULL,
  `taskname` text DEFAULT NULL,
  `rate` text DEFAULT NULL,
  `scharge` varchar(100) DEFAULT NULL,
  `complementary` decimal(10,2) DEFAULT 0.00,
  `credit` decimal(8,2) DEFAULT NULL,
  `additional_charges` decimal(10,2) DEFAULT 0.00,
  `extrabpc` decimal(10,2) DEFAULT 0.00,
  `ex_discount` decimal(10,2) DEFAULT 0.00,
  `swimming_pool` decimal(10,2) DEFAULT 0.00,
  `restaurant` decimal(10,2) NOT NULL DEFAULT 0.00,
  `hallroom` decimal(10,2) NOT NULL DEFAULT 0.00,
  `car_parking` decimal(10,2) NOT NULL DEFAULT 0.00,
  `special_discount` decimal(10,2) DEFAULT 0.00,
  `checkoutdate` datetime DEFAULT NULL,
  `days` int(11) DEFAULT NULL,
  `amount` decimal(11,0) DEFAULT NULL,
  `charge` decimal(10,2) DEFAULT NULL,
  `remarks` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_postedbills`
--

INSERT INTO `tbl_postedbills` (`bill_id`, `bookedid`, `taskname`, `rate`, `scharge`, `complementary`, `credit`, `additional_charges`, `extrabpc`, `ex_discount`, `swimming_pool`, `restaurant`, `hallroom`, `car_parking`, `special_discount`, `checkoutdate`, `days`, `amount`, `charge`, `remarks`) VALUES
(1, 9, '', '', '0', 0.00, 100000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-06 11:17:28', NULL, NULL, NULL, NULL),
(2, 12, '', '', '0', 0.00, 100000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-06 14:08:21', NULL, NULL, NULL, NULL),
(3, 10, '', '', '0', 0.00, 100000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-06 15:16:30', NULL, NULL, NULL, NULL),
(4, 14, '', '', '0', 0.00, 160000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-06 21:02:02', NULL, NULL, NULL, NULL),
(5, 14, '', '', '0', 0.00, 160000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-06 21:03:03', NULL, NULL, NULL, NULL),
(6, 14, '', '', '0', 0.00, 160000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-06 21:03:03', NULL, NULL, NULL, NULL),
(7, 14, '', '', '0', 0.00, 160000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-06 21:03:03', NULL, NULL, NULL, NULL),
(8, 14, '', '', '0', 0.00, 160000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-06 21:03:03', NULL, NULL, NULL, NULL),
(9, 14, '', '', '0', 0.00, 160000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-06 21:03:04', NULL, NULL, NULL, NULL),
(10, 14, '', '', '0', 0.00, 160000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-06 21:03:04', NULL, NULL, NULL, NULL),
(11, 14, '', '', '0', 0.00, 160000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-06 21:03:04', NULL, NULL, NULL, NULL),
(12, 14, '', '', '0', 0.00, 160000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-06 21:03:04', NULL, NULL, NULL, NULL),
(13, 14, '', '', '0', 0.00, 160000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-06 21:03:04', NULL, NULL, NULL, NULL),
(14, 14, '', '', '0', 0.00, 160000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-06 21:03:04', NULL, NULL, NULL, NULL),
(15, 14, '', '', '0', 0.00, 160000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-06 21:03:05', NULL, NULL, NULL, NULL),
(16, 14, '', '', '0', 0.00, 160000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-06 21:03:05', NULL, NULL, NULL, NULL),
(17, 14, '', '', '0', 0.00, 160000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-06 21:03:05', NULL, NULL, NULL, NULL),
(18, 14, '', '', '0', 0.00, 160000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-06 21:03:05', NULL, NULL, NULL, NULL),
(19, 14, '', '', '0', 0.00, 160000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-06 21:03:05', NULL, NULL, NULL, NULL),
(20, 14, '', '', '0', 0.00, 160000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-06 21:03:05', NULL, NULL, NULL, NULL),
(21, 14, '', '', '0', 0.00, 160000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-06 21:03:05', NULL, NULL, NULL, NULL),
(22, 14, '', '', '0', 0.00, 160000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-06 21:03:06', NULL, NULL, NULL, NULL),
(23, 14, '', '', '0', 0.00, 160000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-06 21:03:06', NULL, NULL, NULL, NULL),
(24, 14, '', '', '0', 0.00, 160000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-06 21:03:06', NULL, NULL, NULL, NULL),
(25, 14, '', '', '0', 0.00, 160000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-06 21:03:06', NULL, NULL, NULL, NULL),
(26, 14, '', '', '0', 0.00, 160000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-06 21:03:06', NULL, NULL, NULL, NULL),
(27, 14, '', '', '0', 0.00, 160000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-06 21:03:06', NULL, NULL, NULL, NULL),
(28, 14, '', '', '0', 0.00, 160000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-06 21:03:06', NULL, NULL, NULL, NULL),
(29, 14, '', '', '0', 0.00, 160000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-06 21:03:07', NULL, NULL, NULL, NULL),
(30, 14, '', '', '0', 0.00, 160000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-06 21:03:07', NULL, NULL, NULL, NULL),
(31, 14, '', '', '0', 0.00, 160000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-06 21:03:07', NULL, NULL, NULL, NULL),
(32, 14, '', '', '0', 0.00, 160000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-06 21:03:07', NULL, NULL, NULL, NULL),
(33, 11, '', '', '0', 0.00, 200000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-07 12:10:32', NULL, NULL, NULL, NULL),
(34, 22, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-07 13:35:50', NULL, NULL, NULL, NULL),
(35, 18, '', '', '0', 0.00, 600000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-07 17:57:00', NULL, NULL, NULL, NULL),
(36, 47, '', '', '0', 0.00, 80000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-08 12:28:10', NULL, NULL, NULL, NULL),
(37, 46, '', '', '0', 0.00, 130000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-08 12:30:30', NULL, NULL, NULL, NULL),
(38, 33, '', '', '0', 0.00, 300000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-08 12:34:27', NULL, NULL, NULL, NULL),
(39, 44, '', '', '0', 0.00, 150000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-08 12:36:25', NULL, NULL, NULL, NULL),
(40, 37, '', '', '0', 0.00, 100000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-08 12:38:04', NULL, NULL, NULL, NULL),
(41, 35, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-08 12:39:59', NULL, NULL, NULL, NULL),
(42, 23, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-08 12:44:35', NULL, NULL, NULL, NULL),
(43, 15, '', '', '0', 0.00, 300000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-08 12:48:34', NULL, NULL, NULL, NULL),
(44, 45, '', '', '0', 0.00, 150000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-08 12:54:01', NULL, NULL, NULL, NULL),
(45, 43, '', '', '0', 0.00, 80000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-08 12:55:57', NULL, NULL, NULL, NULL),
(46, 32, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-08 12:58:35', NULL, NULL, NULL, NULL),
(47, 8, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-08 12:59:58', NULL, NULL, NULL, NULL),
(48, 30, '', '', '0', 0.00, 240000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-08 13:01:46', NULL, NULL, NULL, NULL),
(49, 42, '', '', '0', 0.00, 240000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-08 13:01:46', NULL, NULL, NULL, NULL),
(50, 29, '', '', '0', 0.00, 160000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-08 13:02:41', NULL, NULL, NULL, NULL),
(51, 36, '', '', '0', 0.00, 100000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-08 13:04:56', NULL, NULL, NULL, NULL),
(52, 38, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-08 13:06:39', NULL, NULL, NULL, NULL),
(53, 26, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-08 13:07:43', NULL, NULL, NULL, NULL),
(54, 27, '', '', '0', 0.00, 100000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-08 13:12:32', NULL, NULL, NULL, NULL),
(55, 39, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-08 13:13:41', NULL, NULL, NULL, NULL),
(56, 41, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-09 11:51:42', NULL, NULL, NULL, NULL),
(57, 24, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-09 11:52:53', NULL, NULL, NULL, NULL),
(58, 56, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-09 12:00:38', NULL, NULL, NULL, NULL),
(59, 19, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-09 12:24:39', NULL, NULL, NULL, NULL),
(60, 55, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-09 12:31:47', NULL, NULL, NULL, NULL),
(61, 52, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-09 12:32:50', NULL, NULL, NULL, NULL),
(62, 51, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-09 12:36:12', NULL, NULL, NULL, NULL),
(63, 31, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-09 12:36:53', NULL, NULL, NULL, NULL),
(64, 58, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-09 12:37:33', NULL, NULL, NULL, NULL),
(65, 60, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-09 12:38:10', NULL, NULL, NULL, NULL),
(66, 13, '', '', '0', 0.00, 320000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-09 12:41:56', NULL, NULL, NULL, NULL),
(67, 49, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-09 12:42:58', NULL, NULL, NULL, NULL),
(68, 50, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-09 12:43:25', NULL, NULL, NULL, NULL),
(69, 69, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-10 12:19:09', NULL, NULL, NULL, NULL),
(70, 68, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-10 12:19:45', NULL, NULL, NULL, NULL),
(71, 59, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-10 12:20:30', NULL, NULL, NULL, NULL),
(72, 20, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-10 12:20:59', NULL, NULL, NULL, NULL),
(73, 70, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-10 12:21:30', NULL, NULL, NULL, NULL),
(74, 57, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-10 12:21:48', NULL, NULL, NULL, NULL),
(75, 66, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-10 12:22:33', NULL, NULL, NULL, NULL),
(76, 17, '', '', '0', 0.00, 520000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-10 12:23:17', NULL, NULL, NULL, NULL),
(77, 80, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-11 09:49:02', NULL, NULL, NULL, NULL),
(78, 40, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-11 11:32:15', NULL, NULL, NULL, NULL),
(79, 77, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-11 11:54:52', NULL, NULL, NULL, NULL),
(80, 75, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-11 12:06:11', NULL, NULL, NULL, NULL),
(81, 83, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-11 12:08:12', NULL, NULL, NULL, NULL),
(82, 63, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-11 12:12:24', NULL, NULL, NULL, NULL),
(83, 54, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-11 12:13:15', NULL, NULL, NULL, NULL),
(84, 62, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-11 12:25:19', NULL, NULL, NULL, NULL),
(85, 62, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-11 12:25:21', NULL, NULL, NULL, NULL),
(86, 6, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-11 13:08:58', NULL, NULL, NULL, NULL),
(87, 86, '', '', '0', 0.00, 150000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-12 20:28:19', NULL, NULL, NULL, NULL),
(88, 85, '', '', '0', 0.00, 150000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-12 20:29:06', NULL, NULL, NULL, NULL),
(89, 25, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-12 20:30:37', NULL, NULL, NULL, NULL),
(90, 91, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-12 20:32:14', NULL, NULL, NULL, NULL),
(91, 92, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-12 20:33:33', NULL, NULL, NULL, NULL),
(92, 48, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-12 20:34:46', NULL, NULL, NULL, NULL),
(93, 53, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-12 20:34:46', NULL, NULL, NULL, NULL),
(94, 61, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-12 20:34:46', NULL, NULL, NULL, NULL),
(95, 65, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-12 20:34:46', NULL, NULL, NULL, NULL),
(96, 71, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-12 20:34:46', NULL, NULL, NULL, NULL),
(97, 76, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-12 20:38:39', NULL, NULL, NULL, NULL),
(98, 61, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-12 20:43:33', NULL, NULL, NULL, NULL),
(99, 67, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-13 10:13:06', NULL, NULL, NULL, NULL),
(100, 67, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-13 10:13:07', NULL, NULL, NULL, NULL),
(101, 78, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-13 10:14:25', NULL, NULL, NULL, NULL),
(102, 89, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-13 10:15:17', NULL, NULL, NULL, NULL),
(103, 79, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-13 10:16:17', NULL, NULL, NULL, NULL),
(104, 90, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-13 10:16:57', NULL, NULL, NULL, NULL),
(105, 81, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-13 14:42:10', NULL, NULL, NULL, NULL),
(106, 100, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-14 16:32:01', NULL, NULL, NULL, NULL),
(107, 112, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-14 16:35:04', NULL, NULL, NULL, NULL),
(108, 112, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-14 16:35:06', NULL, NULL, NULL, NULL),
(109, 87, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-14 16:45:15', NULL, NULL, NULL, NULL),
(110, 107, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-14 16:47:44', NULL, NULL, NULL, NULL),
(111, 94, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-14 16:50:08', NULL, NULL, NULL, NULL),
(112, 104, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-14 16:50:57', NULL, NULL, NULL, NULL),
(113, 113, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-14 16:51:31', NULL, NULL, NULL, NULL),
(114, 103, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-14 16:56:09', NULL, NULL, NULL, NULL),
(115, 84, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-14 16:58:09', NULL, NULL, NULL, NULL),
(116, 110, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-14 21:10:43', NULL, NULL, NULL, NULL),
(117, 64, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-15 11:56:59', NULL, NULL, NULL, NULL),
(118, 82, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-15 11:58:18', NULL, NULL, NULL, NULL),
(119, 98, '', '', '0', 0.00, 100000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-15 12:03:21', NULL, NULL, NULL, NULL),
(120, 114, '', '', '0', 0.00, 150000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-15 12:39:30', NULL, NULL, NULL, NULL),
(121, 115, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-15 12:40:46', NULL, NULL, NULL, NULL),
(122, 96, '', '', '0', 0.00, 360000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-15 12:43:08', NULL, NULL, NULL, NULL),
(123, 95, '', '', '0', 0.00, 360000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-15 12:44:01', NULL, NULL, NULL, NULL),
(124, 120, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-15 12:46:00', NULL, NULL, NULL, NULL),
(125, 126, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-15 12:46:30', NULL, NULL, NULL, NULL),
(126, 97, '', '', '0', 0.00, 360000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-15 12:47:49', NULL, NULL, NULL, NULL),
(127, 124, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-15 12:50:12', NULL, NULL, NULL, NULL),
(128, 119, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-15 12:51:31', NULL, NULL, NULL, NULL),
(129, 116, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-15 12:52:08', NULL, NULL, NULL, NULL),
(130, 109, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-15 12:52:49', NULL, NULL, NULL, NULL),
(131, 121, '', '', '0', 0.00, 100000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-15 12:53:51', NULL, NULL, NULL, NULL),
(132, 125, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-15 12:54:51', NULL, NULL, NULL, NULL),
(133, 117, '', '', '0', 0.00, 80000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-15 12:56:09', NULL, NULL, NULL, NULL),
(134, 133, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-16 11:25:11', NULL, NULL, NULL, NULL),
(135, 130, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-16 11:31:27', NULL, NULL, NULL, NULL),
(136, 132, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-16 11:32:04', NULL, NULL, NULL, NULL),
(137, 135, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-16 11:34:03', NULL, NULL, NULL, NULL),
(138, 122, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-16 11:34:48', NULL, NULL, NULL, NULL),
(139, 118, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-16 11:36:31', NULL, NULL, NULL, NULL),
(140, 136, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-16 11:37:37', NULL, NULL, NULL, NULL),
(141, 151, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-17 07:23:05', NULL, NULL, NULL, NULL),
(142, 143, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-17 07:45:02', NULL, NULL, NULL, NULL),
(143, 106, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-17 07:46:33', NULL, NULL, NULL, NULL),
(144, 144, '', '', '0', 0.00, 0.00, 17000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-17 07:53:26', NULL, NULL, NULL, NULL),
(145, 148, '', '', '0', 0.00, 118000.00, 18000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-17 08:46:50', NULL, NULL, NULL, NULL),
(146, 142, '', '', '0', 0.00, 0.00, 0.00, 0.00, 20000.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-17 08:52:58', NULL, NULL, NULL, NULL),
(147, 88, '', '', '0', 0.00, 100000.00, 0.00, 0.00, 20000.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-17 08:55:20', NULL, NULL, NULL, NULL),
(148, 123, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-17 08:56:41', NULL, NULL, NULL, NULL),
(149, 141, '', '', '0', 0.00, 0.00, 0.00, 0.00, 20000.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-17 08:57:15', NULL, NULL, NULL, NULL),
(150, 139, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-17 09:00:36', NULL, NULL, NULL, NULL),
(151, 137, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-17 09:01:40', NULL, NULL, NULL, NULL),
(152, 138, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-17 09:02:25', NULL, NULL, NULL, NULL),
(153, 140, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-17 09:03:10', NULL, NULL, NULL, NULL),
(154, 127, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-17 09:04:33', NULL, NULL, NULL, NULL),
(155, 147, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-17 09:06:46', NULL, NULL, NULL, NULL),
(156, 154, '', '', '0', 0.00, 108000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-17 09:07:34', NULL, NULL, NULL, NULL),
(157, 99, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-17 09:07:56', NULL, NULL, NULL, NULL),
(158, 149, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-17 09:08:19', NULL, NULL, NULL, NULL),
(159, 134, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-17 09:09:02', NULL, NULL, NULL, NULL),
(160, 152, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-17 09:09:48', NULL, NULL, NULL, NULL),
(161, 164, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-19 11:36:29', NULL, NULL, NULL, NULL),
(162, 164, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-19 11:36:29', NULL, NULL, NULL, NULL),
(163, 164, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-19 11:36:30', NULL, NULL, NULL, NULL),
(164, 164, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-19 11:36:31', NULL, NULL, NULL, NULL),
(165, 164, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-19 11:36:31', NULL, NULL, NULL, NULL),
(166, 164, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-19 11:36:33', NULL, NULL, NULL, NULL),
(167, 164, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-19 11:36:41', NULL, NULL, NULL, NULL),
(168, 165, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-19 11:37:38', NULL, NULL, NULL, NULL),
(169, 165, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-19 11:37:49', NULL, NULL, NULL, NULL),
(170, 162, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-19 11:40:43', NULL, NULL, NULL, NULL),
(171, 163, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-19 14:07:04', NULL, NULL, NULL, NULL),
(172, 163, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-19 14:07:05', NULL, NULL, NULL, NULL),
(173, 160, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-19 14:07:41', NULL, NULL, NULL, NULL),
(174, 156, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-19 14:08:07', NULL, NULL, NULL, NULL),
(175, 161, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-19 14:09:32', NULL, NULL, NULL, NULL),
(176, 161, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-19 14:09:35', NULL, NULL, NULL, NULL),
(177, 161, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-19 14:09:36', NULL, NULL, NULL, NULL),
(178, 161, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-19 14:09:37', NULL, NULL, NULL, NULL),
(179, 157, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-20 12:03:20', NULL, NULL, NULL, NULL),
(180, 169, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-20 12:04:05', NULL, NULL, NULL, NULL),
(181, 174, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-20 12:04:29', NULL, NULL, NULL, NULL),
(182, 170, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-20 12:04:47', NULL, NULL, NULL, NULL),
(183, 171, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-20 12:05:34', NULL, NULL, NULL, NULL),
(184, 177, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-20 12:38:26', NULL, NULL, NULL, NULL),
(185, 178, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-21 10:06:52', NULL, NULL, NULL, NULL),
(186, 159, '', '', '0', 0.00, 0.00, 60000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-21 10:11:12', NULL, NULL, NULL, NULL),
(187, 158, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-21 10:12:27', NULL, NULL, NULL, NULL),
(188, 167, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-21 10:20:20', NULL, NULL, NULL, NULL),
(189, 172, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-22 09:59:02', NULL, NULL, NULL, NULL),
(190, 173, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-22 10:05:31', NULL, NULL, NULL, NULL),
(191, 191, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-22 10:06:33', NULL, NULL, NULL, NULL),
(192, 180, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-22 10:07:03', NULL, NULL, NULL, NULL),
(193, 166, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-22 10:10:28', NULL, NULL, NULL, NULL),
(194, 168, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-22 10:23:39', NULL, NULL, NULL, NULL),
(195, 182, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-22 10:24:30', NULL, NULL, NULL, NULL),
(196, 183, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-22 10:25:20', NULL, NULL, NULL, NULL),
(197, 184, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-22 10:25:59', NULL, NULL, NULL, NULL),
(198, 176, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-22 10:26:39', NULL, NULL, NULL, NULL),
(199, 155, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-22 10:27:23', NULL, NULL, NULL, NULL),
(200, 189, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-22 10:28:01', NULL, NULL, NULL, NULL),
(201, 190, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-22 10:34:55', NULL, NULL, NULL, NULL),
(202, 198, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-23 11:51:46', NULL, NULL, NULL, NULL),
(203, 197, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-23 11:53:47', NULL, NULL, NULL, NULL),
(204, 192, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-23 11:54:16', NULL, NULL, NULL, NULL),
(205, 196, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-23 11:54:49', NULL, NULL, NULL, NULL),
(206, 195, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-23 11:55:21', NULL, NULL, NULL, NULL),
(207, 210, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-24 12:55:58', NULL, NULL, NULL, NULL),
(208, 209, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-24 12:56:55', NULL, NULL, NULL, NULL),
(209, 188, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-24 12:57:20', NULL, NULL, NULL, NULL),
(210, 208, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-24 12:57:36', NULL, NULL, NULL, NULL),
(211, 207, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-24 12:58:50', NULL, NULL, NULL, NULL),
(212, 199, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-24 12:59:41', NULL, NULL, NULL, NULL),
(213, 200, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-24 13:00:12', NULL, NULL, NULL, NULL),
(214, 187, '', '', '0', 0.00, 324000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-24 13:30:43', NULL, NULL, NULL, NULL),
(215, 201, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-24 13:31:17', NULL, NULL, NULL, NULL),
(216, 186, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-24 13:31:37', NULL, NULL, NULL, NULL),
(217, 181, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-24 13:32:08', NULL, NULL, NULL, NULL),
(218, 218, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-25 09:03:32', NULL, NULL, NULL, NULL),
(219, 220, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-25 09:04:49', NULL, NULL, NULL, NULL),
(220, 222, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-25 09:06:06', NULL, NULL, NULL, NULL),
(221, 219, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-25 09:06:44', NULL, NULL, NULL, NULL),
(222, 221, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-25 09:07:11', NULL, NULL, NULL, NULL),
(223, 223, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-25 09:08:21', NULL, NULL, NULL, NULL),
(224, 224, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-25 09:08:47', NULL, NULL, NULL, NULL),
(225, 226, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-25 09:09:16', NULL, NULL, NULL, NULL),
(226, 217, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-25 09:09:42', NULL, NULL, NULL, NULL),
(227, 228, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-25 09:10:13', NULL, NULL, NULL, NULL),
(228, 216, '', '', '0', 0.00, 150000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-25 13:06:36', NULL, NULL, NULL, NULL),
(229, 93, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-26 20:14:31', NULL, NULL, NULL, NULL),
(230, 105, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-26 20:14:31', NULL, NULL, NULL, NULL),
(231, 175, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-26 20:14:31', NULL, NULL, NULL, NULL),
(232, 179, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-26 20:14:31', NULL, NULL, NULL, NULL),
(233, 185, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-26 20:14:31', NULL, NULL, NULL, NULL),
(234, 202, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-26 20:14:31', NULL, NULL, NULL, NULL),
(235, 205, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-26 20:14:31', NULL, NULL, NULL, NULL),
(236, 211, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-26 20:14:31', NULL, NULL, NULL, NULL),
(237, 213, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-26 20:14:31', NULL, NULL, NULL, NULL),
(238, 214, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-26 20:14:31', NULL, NULL, NULL, NULL),
(239, 215, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-26 20:14:31', NULL, NULL, NULL, NULL),
(240, 225, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-26 20:14:31', NULL, NULL, NULL, NULL),
(241, 229, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-26 20:14:31', NULL, NULL, NULL, NULL),
(242, 230, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-26 20:14:31', NULL, NULL, NULL, NULL),
(243, 232, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-26 20:14:31', NULL, NULL, NULL, NULL),
(244, 231, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-26 20:15:23', NULL, NULL, NULL, NULL),
(245, 236, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-26 20:15:23', NULL, NULL, NULL, NULL),
(246, 237, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-26 20:15:23', NULL, NULL, NULL, NULL),
(247, 238, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-26 20:15:23', NULL, NULL, NULL, NULL),
(248, 243, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-27 08:12:12', NULL, NULL, NULL, NULL),
(249, 242, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-27 08:16:02', NULL, NULL, NULL, NULL),
(250, 241, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-27 08:41:48', NULL, NULL, NULL, NULL),
(251, 239, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-27 08:42:48', NULL, NULL, NULL, NULL),
(252, 246, '', '', 'NAN', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-27 16:54:16', NULL, NULL, NULL, NULL),
(253, 245, '', '', 'NAN', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-27 16:54:34', NULL, NULL, NULL, NULL),
(254, 244, '', '', 'NAN', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-27 16:55:06', NULL, NULL, NULL, NULL),
(255, 240, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-27 16:55:57', NULL, NULL, NULL, NULL),
(256, 249, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-28 09:11:26', NULL, NULL, NULL, NULL),
(257, 249, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-28 09:11:36', NULL, NULL, NULL, NULL),
(258, 252, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-28 09:12:52', NULL, NULL, NULL, NULL),
(259, 203, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-30 18:10:27', NULL, NULL, NULL, NULL),
(260, 204, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-30 18:11:34', NULL, NULL, NULL, NULL),
(261, 206, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-30 18:12:02', NULL, NULL, NULL, NULL),
(262, 233, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-30 18:12:20', NULL, NULL, NULL, NULL),
(263, 234, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-30 18:14:26', NULL, NULL, NULL, NULL),
(264, 235, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-30 18:15:10', NULL, NULL, NULL, NULL),
(265, 247, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-30 18:15:33', NULL, NULL, NULL, NULL),
(266, 250, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-30 18:16:01', NULL, NULL, NULL, NULL),
(267, 251, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-30 18:16:22', NULL, NULL, NULL, NULL),
(268, 255, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-30 18:21:33', NULL, NULL, NULL, NULL),
(269, 256, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-30 18:22:44', NULL, NULL, NULL, NULL),
(270, 258, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-30 18:33:13', NULL, NULL, NULL, NULL),
(271, 259, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-30 18:35:30', NULL, NULL, NULL, NULL),
(272, 227, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-30 18:36:40', NULL, NULL, NULL, NULL),
(273, 263, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-31 08:14:13', NULL, NULL, NULL, NULL),
(274, 265, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-31 09:37:00', NULL, NULL, NULL, NULL),
(275, 264, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-31 09:38:14', NULL, NULL, NULL, NULL),
(276, 266, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-31 09:38:36', NULL, NULL, NULL, NULL),
(277, 257, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-10-31 20:18:33', NULL, NULL, NULL, NULL),
(278, 276, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-11-01 14:34:39', NULL, NULL, NULL, NULL),
(279, 275, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-11-01 14:36:01', NULL, NULL, NULL, NULL),
(280, 279, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-11-01 14:36:28', NULL, NULL, NULL, NULL),
(281, 271, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-11-01 14:37:08', NULL, NULL, NULL, NULL),
(282, 274, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-11-01 14:38:09', NULL, NULL, NULL, NULL),
(283, 269, '', '', '0', 0.00, 324000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-11-01 14:41:26', NULL, NULL, NULL, NULL),
(284, 248, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-11-02 08:23:20', NULL, NULL, NULL, NULL),
(285, 301, '', '', '0', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-11-03 09:10:50', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_quickordersetting`
--

CREATE TABLE `tbl_quickordersetting` (
  `quickordid` int(11) NOT NULL,
  `waiter` int(11) NOT NULL DEFAULT 1 COMMENT '1=show,0=hide',
  `tableid` int(11) NOT NULL DEFAULT 1 COMMENT '1=show,0=hide',
  `cooktime` int(11) NOT NULL DEFAULT 1 COMMENT '1=show,0=hide',
  `soundenable` int(11) NOT NULL DEFAULT 1 COMMENT '1=enable,0=disable',
  `tablemaping` int(11) NOT NULL DEFAULT 1 COMMENT '1=enable,0=disable'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_quickordersetting`
--

INSERT INTO `tbl_quickordersetting` (`quickordid`, `waiter`, `tableid`, `cooktime`, `soundenable`, `tablemaping`) VALUES
(1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_razorpay`
--

CREATE TABLE `tbl_razorpay` (
  `id` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reuseableproduct`
--

CREATE TABLE `tbl_reuseableproduct` (
  `reuse_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `in_use` int(11) DEFAULT 0,
  `in_laundry` int(11) DEFAULT 0,
  `ready` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_roomnofloorassign`
--

CREATE TABLE `tbl_roomnofloorassign` (
  `roomassignid` int(11) NOT NULL,
  `roomid` int(11) DEFAULT NULL,
  `hallid` int(11) DEFAULT NULL,
  `floorid` int(11) NOT NULL,
  `roomno` int(11) NOT NULL,
  `status` int(3) DEFAULT 1 COMMENT '1=ready,2=booked,3=assigned to clean,4=booked and assigned to clean, 5=under maintenance,6=dirty,7=blocked,8=do not reserve',
  `room_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_roomnofloorassign`
--

INSERT INTO `tbl_roomnofloorassign` (`roomassignid`, `roomid`, `hallid`, `floorid`, `roomno`, `status`, `room_name`) VALUES
(114, 5, NULL, 2, 101, 1, '101'),
(115, 5, NULL, 2, 102, 1, '102'),
(116, 5, NULL, 2, 103, 1, '103'),
(117, 5, NULL, 2, 104, 1, '104'),
(118, 5, NULL, 2, 105, 1, '105'),
(119, 5, NULL, 2, 106, 1, '106'),
(120, 5, NULL, 2, 107, 1, '107'),
(121, 5, NULL, 2, 108, 1, '108'),
(122, 5, NULL, 2, 109, 1, '109'),
(123, 5, NULL, 2, 110, 1, '110'),
(124, 4, NULL, 2, 111, 1, '111'),
(125, 4, NULL, 2, 112, 1, '112');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_room_offer`
--

CREATE TABLE `tbl_room_offer` (
  `offerid` int(11) NOT NULL,
  `roomid` int(11) NOT NULL,
  `offer` int(11) NOT NULL,
  `offertitle` varchar(255) DEFAULT NULL,
  `offertext` text DEFAULT NULL,
  `offer_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shippingaddress`
--

CREATE TABLE `tbl_shippingaddress` (
  `shipaddressid` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `companyname` varchar(100) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `city` varchar(70) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `country` varchar(150) DEFAULT NULL,
  `zip` varchar(50) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `address2` text DEFAULT NULL,
  `DateInserted` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `slid` int(11) NOT NULL,
  `Sltypeid` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `link1` text DEFAULT NULL,
  `link2` text DEFAULT NULL,
  `link3` text DEFAULT NULL,
  `slink` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `delation_status` int(11) NOT NULL DEFAULT 0,
  `width` int(11) NOT NULL DEFAULT 0,
  `height` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`slid`, `Sltypeid`, `title`, `subtitle`, `image`, `link1`, `link2`, `link3`, `slink`, `status`, `delation_status`, `width`, `height`) VALUES
(4, 2, 'home About', 'test', 'assets/img/banner/2024-10-18/.jpeg', NULL, NULL, NULL, '#', 1, 0, 445, 408),
(6, 3, 'DELUXE - $ 120 /Night', '', 'assets/img/banner/2024-10-08/21.jpg', NULL, NULL, NULL, 'https://macjak.co.tz/user/roomlist', 1, 0, 800, 533),
(7, 3, 'EXECUTIVE - $ 130 /Night', '', 'assets/img/banner/2024-10-08/23.jpg', NULL, NULL, NULL, 'https://macjak.co.tz/user/roomlist', 1, 0, 800, 533),
(8, 3, 'ECONOMIC - $ 90 /Night', '', 'assets/img/banner/2024-10-08/24.jpg', NULL, NULL, NULL, 'https://macjak.co.tz/user/roomlist', 1, 0, 800, 533),
(9, 3, '1 BEDROOM APARTMENT - $ 175 /Night', '', 'assets/img/banner/2024-10-08/25.jpg', NULL, NULL, NULL, 'https://macjak.co.tz/user/roomlist', 1, 0, 800, 533),
(10, 3, 'TWIN ROOMS - $ 112 /Night', '', 'assets/img/banner/2024-10-08/26.jpg', NULL, NULL, NULL, '#', 1, 0, 800, 533),
(11, 3, '2 BEDROOM APARTMENT - $ 185 /Night', '', 'assets/img/banner/2024-10-08/27.jpg', NULL, NULL, NULL, 'https://macjak.co.tz/user/roomlist', 1, 0, 800, 533),
(12, 4, 'Explore Bagamoyo', 'Bagamoyo', 'assets/img/banner/2024-10-03/B1.jpg', NULL, NULL, NULL, '#', 1, 0, 700, 525),
(13, 4, 'Snorkeling', 'eyueythjer', 'assets/img/banner/2024-10-03/s5.jpg', NULL, NULL, NULL, '#', 1, 0, 700, 525),
(14, 4, 'Sunset Cruise', '--', 'assets/img/banner/2024-10-03/3.jpg', NULL, NULL, NULL, '#', 1, 0, 700, 525),
(15, 4, 'Beach Walking', '--', 'assets/img/banner/2024-10-03/b4.jpg', NULL, NULL, NULL, '#', 1, 0, 700, 525),
(16, 5, 'Sixbert Bonaventure', 'General Manager', 'assets/img/banner/2024-10-21/c.png', 'https://www.facebook.com', 'https://www.facebook.com', 'https://www.facebook.com', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 1, 0, 400, 490),
(17, 5, 'Mbilinyi Geofrey', 'Food and Beverage', 'assets/img/banner/2024-10-21/c1.png', 'https://www.facebook.com', 'https://www.facebook.com', 'https://www.facebook.com', 'Our Food and Beverage Manager ensures exceptional dining, bringing passion and quality to every meal.', 1, 0, 400, 490),
(18, 5, 'Hellen Kimario', 'Front Office Manager', 'assets/img/banner/2024-10-21/c2.png', 'https://www.facebook.com', 'https://www.facebook.com', 'https://www.facebook.com', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from', 1, 0, 400, 490),
(19, 5, 'Euphrasia Levery', 'House Keeping', 'assets/img/banner/2024-10-21/c3.png', 'https://www.facebook.com', 'https://www.facebook.com', 'https://www.facebook.com', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from', 1, 0, 400, 490),
(20, 6, 'About tio', '', 'assets/img/banner/2024-10-14/p.jpg', NULL, NULL, NULL, '#', 1, 0, 800, 573),
(21, 6, 'about', '', 'assets/img/banner/2024-10-14/r1.jpg', NULL, NULL, NULL, '#', 1, 0, 800, 533),
(22, 6, 'about', '', 'assets/img/banner/2024-10-23/2.jpg', NULL, NULL, NULL, '#', 1, 0, 1060, 706),
(23, 6, 'about', '', 'assets/img/banner/2024-10-23/D3.jpg', NULL, NULL, NULL, '#', 1, 0, 800, 533),
(24, 6, 'about', '', 'assets/img/banner/2024-10-15/K5.jpg', NULL, NULL, NULL, '#', 1, 0, 800, 650),
(25, 6, 'about', '', 'assets/img/banner/2024-10-14/b3.jpg', NULL, NULL, NULL, '#', 1, 0, 800, 533),
(38, 4, 'Kite Surfing', '---', 'assets/img/banner/2024-10-03/1.jpg', NULL, NULL, NULL, '#', 1, 0, 700, 525),
(41, 9, 'Alphabet logo', '', 'assets/img/banner/2024-10-03/l.png', NULL, NULL, NULL, '#', 1, 0, 301, 52),
(42, 9, 'Amazon', '', 'assets/img/banner/2024-10-03/h.png', NULL, NULL, NULL, '#', 1, 0, 285, 127),
(43, 9, 'Fitbit', '', 'assets/img/banner/2024-10-03/t4.png', NULL, NULL, NULL, '#', 1, 0, 360, 168),
(44, 9, 'Google', '', 'assets/img/banner/2024-10-03/t2.png', NULL, NULL, NULL, '#', 1, 0, 327, 154),
(45, 9, 'Paypal', '', 'assets/img/banner/2024-10-21/B1.png', NULL, NULL, NULL, '#', 1, 0, 327, 154),
(46, 9, 'Samsung', '', 'assets/img/banner/2024-10-21/t.png', NULL, NULL, NULL, '#', 1, 0, 800, 300),
(47, 9, 'Shopify', '', 'assets/img/banner/2024-10-03/t1.jpg', NULL, NULL, NULL, '#', 1, 0, 300, 150),
(48, 9, 'Slack', '', 'assets/img/banner/2024-10-21/O.png', NULL, NULL, NULL, '#', 1, 0, 327, 154),
(49, 9, 'Stripe', '', 'assets/img/banner/2024-10-03/t2.jpg', NULL, NULL, NULL, '', 1, 0, 330, 150),
(50, 10, 'It\'s almost yours', 'We just need a few more details to confirm your booking at The Radisson Hotel.', '', NULL, NULL, NULL, '#', 1, 0, 50, 50),
(51, 10, 'No surprises', 'Pay the price you see – no booking fees!', '', NULL, NULL, NULL, '#', 1, 0, 50, 50),
(52, 10, 'Your booking is secure', 'Your details are protected by a secure connection.', '', NULL, NULL, NULL, '#', 1, 0, 50, 50),
(53, 11, 'Bed', '', '', NULL, NULL, NULL, '#', 1, 0, 22, 22),
(54, 11, 'Free WiFi', '', '', NULL, NULL, NULL, '#', 1, 0, 22, 25),
(55, 11, 'Balcony, City / Landmark / Garden view', '', '', NULL, NULL, NULL, '#', 1, 0, 22, 25),
(56, 11, 'Flat-screen TV', '', '', NULL, NULL, NULL, '#', 1, 0, 22, 25),
(57, 11, 'Facilities for guests with disabilities', '', '', NULL, NULL, NULL, '#', 1, 0, 22, 25),
(58, 12, 'Save up to 10%', '', 'assets/img/banner/2024-10-08/1.png', NULL, NULL, NULL, '#', 1, 0, 500, 500),
(59, 12, 'Best Rate Guarantee', '', 'assets/img/banner/2024-07-23/p1.png', NULL, NULL, NULL, '#', 1, 0, 500, 500),
(60, 12, 'Free Wi-Fi', '', 'assets/img/banner/2024-10-08/W.png', NULL, NULL, NULL, '#', 1, 0, 500, 500),
(61, 12, 'Enjoy Free Nights', '', 'assets/img/banner/2024-10-12/o1.png', NULL, NULL, NULL, '#', 1, 0, 500, 500),
(62, 3, 'STANDARD - $ 112 /Night', '', 'assets/img/banner/2024-10-08/28.jpg', NULL, NULL, NULL, 'https://macjak.co.tz/user/roomlist', 1, 0, 800, 533),
(63, 3, 'Executive $250/Night', '', 'assets/img/banner/2024-10-08/29.jpg', NULL, NULL, NULL, 'https://macjak.co.tz/user/roomlist', 1, 0, 800, 533),
(68, 13, '86', 'Honeymoon Destination', '', '10', NULL, NULL, NULL, 1, 0, 0, 0),
(69, 13, '305', 'Short Stay', '', '50', NULL, NULL, NULL, 1, 0, 0, 0),
(70, 13, '120', 'Family Retreat', '', '10', NULL, NULL, NULL, 1, 0, 0, 0),
(71, 13, '104', 'Remarkable Events', '', '10', NULL, NULL, NULL, 1, 0, 0, 0),
(72, 14, 'Address', 'Kerege, Bagamoyo, Tanzania', '', NULL, NULL, NULL, NULL, 1, 0, 0, 0),
(73, 14, 'Phone & WhatsApp Number', '+255 768 364 583', '', NULL, NULL, NULL, NULL, 1, 0, 0, 0),
(74, 14, 'Email', 'info@macjak.co.tz', '', NULL, NULL, NULL, NULL, 1, 0, 0, 0),
(75, 14, 'Tel', '+255 768 364 583', '', NULL, NULL, NULL, NULL, 1, 0, 0, 0),
(81, 15, 'Instragram', NULL, '', 'https://www.instagram.com/macjak_getaway', NULL, NULL, NULL, 1, 0, 0, 0),
(82, 15, 'Twitter', NULL, '', 'https://x.com/macandjak02', NULL, NULL, NULL, 1, 0, 0, 0),
(83, 15, 'Dribble', NULL, '', 'https://www.tiktok.com/@mac.jak', NULL, NULL, NULL, 1, 0, 0, 0),
(84, 15, 'Facebook', NULL, '', 'https://www.facebook.com/profile.php?id=61566581723481&mibextid=LQQJ4d', NULL, NULL, NULL, 1, 0, 0, 0),
(100, 8, 'Lounge', NULL, 'assets/img/banner/2024-09-22/W6.jpg', NULL, NULL, NULL, NULL, 1, 0, 800, 400),
(101, 8, 'Bar', NULL, 'assets/img/banner/2024-10-23/D2.jpg', NULL, NULL, NULL, NULL, 1, 0, 800, 400),
(107, 1, NULL, NULL, 'assets/img/banner/2024-10-19/21.jpg', NULL, NULL, NULL, NULL, 1, 0, 1920, 875),
(108, 1, NULL, NULL, 'assets/img/banner/2024-10-19/22.jpg', NULL, NULL, NULL, NULL, 1, 0, 1920, 1022);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider_type`
--

CREATE TABLE `tbl_slider_type` (
  `stype_id` int(11) NOT NULL,
  `STypeName` varchar(255) DEFAULT NULL,
  `delation_status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_slider_type`
--

INSERT INTO `tbl_slider_type` (`stype_id`, `STypeName`, `delation_status`) VALUES
(1, 'Home Slider', 0),
(2, 'Home Middle', 0),
(3, 'Top Offers', 0),
(4, 'Explore Destination', 0),
(5, 'About Team', 0),
(6, 'About Top', 0),
(7, 'About Brand', 0),
(8, 'gallery', 0),
(9, 'Company', 0),
(10, 'Booking Conditions', 0),
(11, 'Facility', 0),
(12, 'Home below slider', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_soundsetting`
--

CREATE TABLE `tbl_soundsetting` (
  `soundid` int(11) NOT NULL,
  `nofitysound` text DEFAULT NULL,
  `addtocartsound` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_soundsetting`
--

INSERT INTO `tbl_soundsetting` (`soundid`, `nofitysound`, `addtocartsound`) VALUES
(1, 'assets/2021-03-21/b1.mp3', 'h');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_state`
--

CREATE TABLE `tbl_state` (
  `stateid` int(11) NOT NULL,
  `countryid` int(11) NOT NULL,
  `statename` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_stripe`
--

CREATE TABLE `tbl_stripe` (
  `id` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tablefloor`
--

CREATE TABLE `tbl_tablefloor` (
  `tbfloorid` int(11) NOT NULL,
  `floorName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tax`
--

CREATE TABLE `tbl_tax` (
  `taxsettings` int(11) NOT NULL,
  `tax` int(11) NOT NULL DEFAULT 0 COMMENT '1=show,0=hide'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_tax`
--

INSERT INTO `tbl_tax` (`taxsettings`, `tax`) VALUES
(1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_taxmgt`
--

CREATE TABLE `tbl_taxmgt` (
  `tax_id` int(11) NOT NULL,
  `taxname` text DEFAULT NULL,
  `rate` decimal(8,2) DEFAULT 2.00,
  `reg_no` text DEFAULT NULL,
  `isactive` int(3) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_taxmgt`
--

INSERT INTO `tbl_taxmgt` (`tax_id`, `taxname`, `rate`, `reg_no`, `isactive`) VALUES
(1, 'VAT', 18.00, '23323', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_thirdparty_customer`
--

CREATE TABLE `tbl_thirdparty_customer` (
  `companyId` int(11) NOT NULL,
  `company_name` varchar(150) NOT NULL,
  `address` text DEFAULT NULL,
  `commision` decimal(10,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_updateitems`
--

CREATE TABLE `tbl_updateitems` (
  `updateid` int(11) NOT NULL,
  `ordid` int(11) NOT NULL,
  `menuid` int(11) NOT NULL,
  `qty` decimal(10,3) NOT NULL DEFAULT 0.000,
  `adonsqty` varchar(50) DEFAULT NULL,
  `addonsid` varchar(50) DEFAULT NULL,
  `varientid` int(11) NOT NULL,
  `addonsuid` int(11) DEFAULT NULL,
  `isupdate` varchar(5) DEFAULT NULL,
  `insertdate` date DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vehicle_booking`
--

CREATE TABLE `tbl_vehicle_booking` (
  `vbkid` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `vehicle_id` int(11) NOT NULL,
  `flight_id` int(11) NOT NULL,
  `transportation_type` varchar(50) NOT NULL,
  `transportation_time` datetime NOT NULL,
  `driver_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vehicle_details`
--

CREATE TABLE `tbl_vehicle_details` (
  `vdsid` int(11) NOT NULL,
  `vehicle_number` varchar(100) NOT NULL,
  `vehicle_type` varchar(100) NOT NULL,
  `fuel_type` varchar(50) DEFAULT NULL,
  `seat_capacity` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_version_checker`
--

CREATE TABLE `tbl_version_checker` (
  `vid` int(11) NOT NULL,
  `version` varchar(10) DEFAULT NULL,
  `disable` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_version_checker`
--

INSERT INTO `tbl_version_checker` (`vid`, `version`, `disable`) VALUES
(1, '2.5', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wakeup_call`
--

CREATE TABLE `tbl_wakeup_call` (
  `wapupid` int(11) NOT NULL,
  `custid` int(11) NOT NULL,
  `wakeupcall_time` varchar(100) NOT NULL,
  `insert_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `remarks` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_wakeup_call`
--

INSERT INTO `tbl_wakeup_call` (`wapupid`, `custid`, `wakeupcall_time`, `insert_time`, `remarks`) VALUES
(1, 308, '2024-07-23 11:52', '2024-07-23 08:48:09', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_widget`
--

CREATE TABLE `tbl_widget` (
  `widgetid` int(11) NOT NULL,
  `widget_name` varchar(100) NOT NULL,
  `widget_title` varchar(150) DEFAULT NULL,
  `widget_desc` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_widget`
--

INSERT INTO `tbl_widget` (`widgetid`, `widget_name`, `widget_title`, `widget_desc`) VALUES
(1, 'Arrive And Revive!', 'Enjoy Your Stay With Us', 'Enjoy a revitalizing gateway that refreshes your senses and leaves you feeling truly rejuvenated.'),
(2, 'Booking Conditions', 'Booking Conditions', '<h6 class=\"font-weight-bold\">Cancellation Policy</h6>\r\n<p>You\'ll be charged the total price if you cancel your booking.</p>\r\n<h6 class=\"font-weight-bold\">Prepayment policy</h6>\r\n<p>No prepayment is needed.</p>\r\n<h6 class=\"font-weight-bold\">Meal plan</h6>\r\n<p class=\"mb-0\">Continental breakfast costs BDT 502 per person per night.</p>\r\n<p class=\"mb-0\">Lunch costs BDT 1,180 per person per night.</p>\r\n<p>Dinner costs BDT 1,180 per person per night.</p>'),
(3, '', 'Your Sophisticated Escape from Town.', 'MAC & JAK Getaway, a luxurious retreat in Bagamoyo, Tanzania, redefines hospitality. We blend nomadic traditions with modern comfort, offering sincere welcomes, exquisite feasts, and story-rich experiences. Our boutique hotel stands out with personalized attention and innovative solutions, ensuring each guest finds a home away from home in unparalleled comfort.'),
(4, 'Top Offer', 'ACCOMMODATIONS', 'Experience accommodations that redefine hospitality. Checkout our rooms below:'),
(5, 'Destination', 'EXPERIENCE', 'Whether you want to get out of town, relax and slow down or be active and explore the amazing scenery, Bagamoyo culture or exotic cuisine, a wide range of activities are available for you throughout the resort.'),
(7, '', 'Save up to 10%', ''),
(8, '', 'Best Rate Guarantee', ''),
(9, '', 'Free Wi-Fi', ''),
(10, '', 'Airport Transfers', ''),
(11, 'ourteam', 'Our Team', 'Meet the people who make awesome stuffs\n'),
(12, 'small team', 'MAC AND JAK EXPRESSIONS', 'Experience accommodations that redefine hospitality.'),
(13, 'about Middle', 'Trusted by thousands of companies', 'Join the ranks of satisfied clients who trust us for their travel needs.'),
(14, 'call number', 'CALL ANYTIME', '0741236589'),
(15, 'contact Email', 'EMAIL US', '<div class=\"wrapper\"><footer class=\"dark\">\r\n<div class=\"subfooter\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-md-6\">\r\n<div class=\"social-media\">reservation@xainhotel.com   </div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</footer></div>'),
(16, 'address', 'Address', '<p>Plot-7, Road-02, Hotel Motel Zone, Francisco Road, United States</p>\r\n<p>info@hotelthecoxtoday.com</p>'),
(17, 'phone', 'Phone & WhatsApp Number', '0892 555 98 449'),
(18, 'Email', 'Email', '<p>info@hotelthecoxtoday.com</p>'),
(19, 'let us', 'Let us hear from you directly!', 'Our guests always travel the world in style. Mention @macjak on Instagram for a chance to be featured!'),
(20, 'Privacy', 'Privacy At a glance ', 'Last updated: 12th September 2024<br><br>\r\n\r\n<p>Welcome to MAC & JAK GETAWAY. We are committed to protecting your personal information and your right to privacy. This Privacy Policy explains how we collect, use, disclose, and safeguard your information when you visit our website, use our services, or stay at our hotel located in Kerege, Mapinga, Bagamoyo, Tanzania.</p>\r\n\r\n<h3>1. Information We Collect</h3>\r\n<p>We may collect personal information that you provide to us, including but not limited to:</p>\r\n<ul>\r\n    <li>Name, email address, phone number, and postal address</li>\r\n    <li>Payment information, including payment card details</li>\r\n    <li>Dates of stay and room preferences</li>\r\n    <li>Special requests or requirements</li>\r\n    <li>Feedback and survey responses</li>\r\n    <li>Information provided when using our services (e.g., spa, restaurant, fitness center)</li>\r\n</ul>\r\n\r\n<h3>2. How We Use Your Information</h3>\r\n<p>We use your personal information for various purposes, including:</p>\r\n<ul>\r\n    <li>To process reservations and payments</li>\r\n    <li>To provide and improve our services</li>\r\n    <li>To communicate with you about your stay or inquiries</li>\r\n    <li>To send promotional offers and updates (with your consent)</li>\r\n    <li>To comply with legal obligations</li>\r\n    <li>To manage booking cancellations and refunds</li>\r\n</ul>\r\n\r\n<h3>3. Information Sharing and Disclosure</h3>\r\n<p>We may share your information with:</p>\r\n<ul>\r\n    <li>Service providers who assist in our operations.</li>\r\n    <li>Legal and regulatory authorities, when required by law of the United Republic of Tanzania.</li>\r\n    <li>Business partners, but with your prior consent.</li>\r\n</ul>\r\n<p>We do not sell your personal information to third parties.</p>\r\n\r\n<h3>4. Data Security</h3>\r\n<p>We implement appropriate technical and organizational measures to protect your personal information against unauthorized access, alteration, disclosure, or destruction.</p>\r\n\r\n<h3>5. Your Rights</h3>\r\n<p>You have the right to:</p>\r\n<ul>\r\n    <li>Access your personal information.</li>\r\n    <li>Correct inaccurate or incomplete information.</li>\r\n    <li>Request deletion of your information.</li>\r\n    <li>Object to or restrict processing of your information.</li>\r\n    <li>Data portability.</li>\r\n</ul>\r\n\r\n<h3>7. Cookies and Tracking Technologies</h3>\r\n<p>Our website uses cookies and similar tracking technologies to enhance your browsing experience and analyze website traffic. You can manage your cookie preferences through your browser settings.</p>\r\n\r\n<h3>8. Children\'s Privacy</h3>\r\n<p>Our services are not intended for individuals under the age of 18. We do not knowingly collect personal information from children.</p>\r\n\r\n<h3>9. Booking Cancellation Policy</h3>\r\n<p>Our booking cancellation policy is closely tied to our privacy practices:</p>\r\n<ul>\r\n    <li>If you cancel a reservation, we retain your personal information for a limited time to process the cancellation and any applicable refunds.</li>\r\n    <li>We may use your contact information to communicate about the cancellation and related matters.</li>\r\n    <li>Cancellation records are kept for audit and business analysis purposes, but are anonymized after a certain period.</li>\r\n</ul>\r\n<p>For detailed information about cancellation fees and deadlines, please refer to our separate cancellation policy document or the terms provided during the booking process.</p>\r\n\r\n<h3>10. Payment Card Information</h3>\r\n<p>We take extra precautions to protect your payment card information:</p>\r\n<ul>\r\n    <li>We use industry-standard encryption to protect your payment card details during transmission.</li>\r\n    <li>We do not store complete payment card numbers on our servers. Instead, we use tokenization methods to process payments securely.</li>\r\n    <li>Only authorized personnel have access to payment processing systems, and this access is logged and monitored.</li>\r\n    <li>We comply with Payment Card Industry Data Security Standard (PCI DSS) requirements to ensure the secure handling of your payment information.</li>\r\n    <li>If you choose to save your payment information for future bookings, it is stored securely and in compliance with applicable regulations.</li>\r\n</ul>\r\n\r\n<h3>11. Changes to This Privacy Policy</h3>\r\n<p>We may update this privacy policy from time to time. We will notify you of any changes by posting the new privacy policy on this page and updating the \"Last updated\" date.</p>\r\n\r\n<h3>12. Contact Us</h3>\r\n<p>If you have any questions about this privacy policy, please contact us at:</p>\r\n<p>MAC & JAK GETAWAY<br>\r\nKerege, Mapinga, Bagamoyo,<br>\r\nPwani, Tanzania.<br>\r\nTel: +255 624 059005<br>\r\nEmail: info@macjak.co.tz</p>\r\n'),
(21, 'Terms', 'Terms & Conditions', '<p><strong>Terms of Use for MAC & JAK GETAWAY</strong></p>\r\n<p><em>Last updated: 12th September 2024</em></p>\r\n\r\n<p>Welcome to MAC & JAK GETAWAY. These Terms of Use govern your use of our services and your stay at our hotel located in Kerege, Mapinga, Bagamoyo, Tanzania. By making a reservation or using our services, you agree to comply with these terms.</p>\r\n\r\n<p><strong>1. Definitions</strong></p>\r\n<p>\"Hotel\" refers to MAC & JAK GETAWAY<br>\r\n\"Guest\" refers to any individual who makes a reservation or stays at the Hotel.<br>\r\n\"Agreement\" refers to these Terms of Use</p>\r\n\r\n<p><strong>2. Reservations and Cancellations</strong></p>\r\n<p>Reservations can be made through our website, by phone, or through authorized third-party booking platforms.<br>\r\nA valid credit card is required to secure a reservation.<br>\r\nCancellation policies may vary depending on the rate or dates of your reservation. Please refer to your reservation confirmation for specific cancellation terms.<br>\r\nIn general, cancellations made at least 48 hours prior to the check-in date will receive a full refund. Cancellations made within 48 hours of the check-in date may be subject to a cancellation fee equivalent to one night\'s stay.<br>\r\nNo-shows will be charged the full amount of the reservation.</p>\r\n\r\n<p><strong>3. Security of Credit Card Payment</strong></p>\r\n<p>The Hotel uses industry-standard encryption to protect your payment card details during transmission.<br>\r\nWe comply with Payment Card Industry Data Security Standard (PCI DSS) requirements to ensure the secure handling of your payment information.<br>\r\nThe Hotel does not store complete payment card numbers on its servers. Tokenization methods are used for secure payment processing.</p>\r\n\r\n<p><strong>4. Guest Conduct and Restrictions</strong></p>\r\n<p>Guests are expected to conduct themselves in a respectful manner that does not disturb other guests or staff.<br>\r\nSmoking is prohibited in all indoor areas of the Hotel. Designated smoking areas are provided outdoors.<br>\r\nPets are not allowed unless explicitly stated otherwise for specific pet-friendly rooms.<br>\r\nGuests are liable for any damage caused to Hotel property during their stay.<br>\r\nThe use of illegal substances on Hotel premises is strictly prohibited and may result in immediate termination of stay and reporting to local authorities.<br>\r\nGuests must comply with the maximum occupancy limits for their chosen room type.</p>\r\n\r\n<p><strong>5. Housekeeping</strong></p>\r\n<p>Standard housekeeping services are provided daily unless the guest opts out.<br>\r\nFor stays longer than seven days, a deep cleaning service will be scheduled at the Hotel\'s discretion.<br>\r\nGuests are required to allow housekeeping staff to enter the room for cleaning and maintenance purposes unless the \"Do Not Disturb\" sign is displayed.</p>\r\n\r\n<p><strong>6. The Guest\'s Right to Terminate the Accommodation Agreement</strong></p>\r\n<p>Guests may terminate their stay at any time. However, early departure may still be subject to the full charges of the original reservation.<br>\r\nIn case of early termination due to exceptional circumstances beyond the guest\'s control, the Hotel may, at its discretion, offer a partial refund or credit for a future stay.</p>\r\n\r\n<p><strong>7. The Hotel\'s Right to Terminate the Accommodation Agreement</strong></p>\r\n<p>The Hotel reserves the right to terminate a guest\'s stay without refund for the following reasons:<br>\r\n   - Violation of these Terms of Use<br>\r\n   - Disruptive or dangerous behavior<br>\r\n   - Failure to pay for services<br>\r\n   - Violation of local laws<br>\r\nIn case of termination, the guest must vacate the premises immediately.</p>\r\n\r\n<p><strong>8. Compliance with Hotel Rules and Regulations</strong></p>\r\n<p>Guests agree to comply with all rules and regulations of the Hotel, including but not limited to:<br>\r\n   - Check-in and check-out times<br>\r\n   - Noise restrictions<br>\r\n   - Use of facilities and amenities<br>\r\n   - Safety and security procedures<br>\r\nFailure to comply with hotel rules may result in termination of stay without refund.</p>\r\n\r\n<p><strong>9. Penalties for Hotel</strong></p>\r\n<p>If the hotel is unable to provide the reserved accommodation due to unforeseen circumstances or overbooking, it will:<br>\r\n   - Arrange comparable accommodation at another property at no extra cost to the guest.<br>\r\n   - Provide transportation to the alternative accommodation.<br>\r\n   - Compensate the guest with a credit for a future stay equivalent to one night\'s accommodation.</p>\r\n\r\n<p><strong>10. Limitation of Liability</strong></p>\r\n<p>The Hotel\'s liability for any loss or damage suffered by a guest is limited to the total amount paid for the reservation, except in cases of gross negligence or willful misconduct.<br>\r\nThe Hotel is not liable for any indirect, consequential, or incidental damages.</p>\r\n\r\n<p><strong>11. Governing Law and Court of Jurisdiction</strong></p>\r\n<p>These Terms of Use shall be governed by and construed in accordance with the laws of Tanzania.<br>\r\nAny dispute arising out of or in connection with these Terms of Use shall be subject to the exclusive jurisdiction of the courts of Tanzania.</p>\r\n\r\n<p><strong>12. Changes to Terms of Use</strong></p>\r\n<p>The Hotel reserves the right to modify these Terms of Use at any time. Changes will be effective immediately upon posting on our website.<br>\r\nGuests are encouraged to review these terms periodically.</p>\r\n\r\n<p><strong>13. Contact Information</strong></p>\r\n<p>For any questions regarding these Terms of Use, please contact us at:<br>\r\nMAC & JAK GETAWAY.<br>\r\nKerege, Mapinga, Bagamoyo,<br>\r\nPwani, Tanzania.<br>\r\nTel: +255 624 059005.<br>\r\nEmail: info@macjak.co.tz</p>\r\n'),
(22, 'footer', 'footer left', '<p>Plot-7, Road-02, Hotel Motel Zone, Francisco Road, United States</p>\r\n<p>info@hotelthecoxtoday.com</p>'),
(23, 'Footer first', 'Pages', '<ul class=\"footer-link list-unstyled menu mb-0\">\r\n<li class=\"mb-2\"><a class=\"link d-block font-weight-500\" href=\"hotel\">Home</a></li>\r\n<li class=\"mb-2\"><a class=\"link d-block font-weight-500\" href=\"about\">About</a></li>\r\n<li class=\"mb-2\"><a class=\"link d-block font-weight-500\" href=\"contact\">Contact Us</a></li>\r\n<li class=\"mb-2\"><a class=\"link d-block font-weight-500\" href=\"gallery\">Gallery</a></li>\r\n</ul>'),
(24, 'footer second', 'Social Links', '<ul class=\"list-unstyled social-icon\">\r\n<li><a href=\"https://instragram.com/\" target=\"_blank\" rel=\"noopener noreferrer\"> <i class=\"fab fa-instagram icon-wrap\"></i> <span>Instagram </span> </a></li>\r\n<li><a href=\"https://twitter.com/\" target=\"_blank\" rel=\"noopener noreferrer\"> <i class=\"fab fa-twitter icon-wrap\"></i> <span>Twitter</span> </a></li>\r\n<li><a href=\"https://facebook.com/\" target=\"_blank\" rel=\"noopener noreferrer\"> <i class=\"fab fa-facebook-f icon-wrap\"></i> <span>Facebook</span> </a></li>\r\n</ul>'),
(25, 'footer 3rd', 'About spacial', '<ul class=\"footer-link list-unstyled menu mb-0\">\r\n<li class=\"mb-2\"><a class=\"link d-block font-weight-500\" href=\"#\">Home Pages</a></li>\r\n<li class=\"mb-2\"><a class=\"link d-block font-weight-500\" href=\"#\">Theme Features</a></li>\r\n<li class=\"mb-2\"><a class=\"link d-block font-weight-500\" href=\"#\">Services</a></li>\r\n<li class=\"mb-2\"><a class=\"link d-block font-weight-500\" href=\"#\">StoreFront</a></li>\r\n<li class=\"mb-2\"><a class=\"link d-block font-weight-500\" href=\"#\">Portfolio</a></li>\r\n</ul>'),
(26, 'widget four', 'Company Policy', '<ul class=\"footer-link list-unstyled menu mb-0\">\r\n<li class=\"mb-2\"><a class=\"link d-block font-weight-500\" href=\"privacy\">Privacy</a></li>\r\n<li class=\"mb-2\"><a class=\"link d-block font-weight-500\" href=\"terms\">Terms & Conditions</a></li>\r\n</ul>'),
(27, 'Overview', '', '<div class=\"col-6 mb-3 col-lg-3 mb-lg-0\"><span class=\"numscroller display-4 text-primary d-block\" data-min=\"1\" data-max=\"52147\" data-delay=\"5\" data-increment=\"100\">52147</span> <span class=\"h6\">Monthly Active Users</span></div>\r\n<div class=\"col-6 mb-3 col-lg-3 mb-lg-0\"><span class=\"numscroller display-4 text-primary d-block\" data-min=\"1\" data-max=\"130\" data-delay=\"5\" data-increment=\"10\">130</span> <span class=\"h6\">Team Members</span></div>\r\n<div class=\"col-6 mb-3 col-lg-3 mb-lg-0\"><span class=\"numscroller display-4 text-primary d-block\" data-min=\"1\" data-max=\"1235\" data-delay=\"5\" data-increment=\"10\">1235</span> <span class=\"h6\">User Projects Published</span></div>\r\n<div class=\"col-6 mb-3 col-lg-3 mb-lg-0\"><span class=\"numscroller display-4 text-primary d-block\" data-min=\"1\" data-max=\"4591\" data-delay=\"5\" data-increment=\"10\">4591</span> <span class=\"h6\">Server Uptime</span></div>'),
(28, 'Social Icons', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Recusandae asperiores.', ''),
(29, 'Get updates & exclusive offers', 'Sign up to our newsletter to be the first to hear about', '.'),
(30, '', 'Free cancellation', NULL),
(31, '', NULL, 'www.facebook.com'),
(32, '', NULL, 'www.facebook.com'),
(33, '', NULL, 'www.facebook.com'),
(34, '', NULL, 'www.facebook.com'),
(35, '', 'Cancellation Policy', 'You\'ll be charged the total price if you cancel your booking.'),
(36, '', 'Prepayment policy', 'No prepayment is needed.'),
(37, '', 'Meal plan', 'Continental breakfast costs BDT 502 per person per night.Lunch costs BDT 1,180 per person per night.Dinner costs BDT 1,180 per person per night.');

-- --------------------------------------------------------

--
-- Table structure for table `timezone`
--

CREATE TABLE `timezone` (
  `id` int(11) NOT NULL,
  `convention` varchar(100) DEFAULT NULL,
  `zone` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `timezone`
--

INSERT INTO `timezone` (`id`, `convention`, `zone`) VALUES
(1, 'AD', 'Europe/Andorra'),
(2, 'AE', 'Asia/Dubai'),
(3, 'AF', 'Asia/Kabul'),
(4, 'AG', 'America/Antigua'),
(5, 'AI', 'America/Anguilla'),
(6, 'AL', 'Europe/Tirane'),
(7, 'AM', 'Asia/Yerevan'),
(8, 'AO', 'Africa/Luanda'),
(9, 'AQ', 'Antarctica/McMurdo'),
(10, 'AQ', 'Antarctica/Casey'),
(11, 'AQ', 'Antarctica/Davis'),
(12, 'AQ', 'Antarctica/DumontDUrville'),
(13, 'AQ', 'Antarctica/Mawson'),
(14, 'AQ', 'Antarctica/Palmer'),
(15, 'AQ', 'Antarctica/Rothera'),
(16, 'AQ', 'Antarctica/Syowa'),
(17, 'AQ', 'Antarctica/Troll'),
(18, 'AQ', 'Antarctica/Vostok'),
(19, 'AR', 'America/Argentina/Buenos_Aires'),
(20, 'AR', 'America/Argentina/Cordoba'),
(21, 'AR', 'America/Argentina/Salta'),
(22, 'AR', 'America/Argentina/Jujuy'),
(23, 'AR', 'America/Argentina/Tucuman'),
(24, 'AR', 'America/Argentina/Catamarca'),
(25, 'AR', 'America/Argentina/La_Rioja'),
(26, 'AR', 'America/Argentina/San_Juan'),
(27, 'AR', 'America/Argentina/Mendoza'),
(28, 'AR', 'America/Argentina/San_Luis'),
(29, 'AR', 'America/Argentina/Rio_Gallegos'),
(30, 'AR', 'America/Argentina/Ushuaia'),
(31, 'AS', 'Pacific/Pago_Pago'),
(32, 'AT', 'Europe/Vienna'),
(33, 'AU', 'Australia/Lord_Howe'),
(34, 'AU', 'Antarctica/Macquarie'),
(35, 'AU', 'Australia/Hobart'),
(36, 'AU', 'Australia/Melbourne'),
(37, 'AU', 'Australia/Sydney'),
(38, 'AU', 'Australia/Broken_Hill'),
(39, 'AU', 'Australia/Brisbane'),
(40, 'AU', 'Australia/Lindeman'),
(41, 'AU', 'Australia/Adelaide'),
(42, 'AU', 'Australia/Darwin'),
(43, 'AU', 'Australia/Perth'),
(44, 'AU', 'Australia/Eucla'),
(45, 'AW', 'America/Aruba'),
(46, 'AX', 'Europe/Mariehamn'),
(47, 'AZ', 'Asia/Baku'),
(48, 'BA', 'Europe/Sarajevo'),
(49, 'BB', 'America/Barbados'),
(50, 'BD', 'Asia/Dhaka'),
(51, 'BE', 'Europe/Brussels'),
(52, 'BF', 'Africa/Ouagadougou'),
(53, 'BG', 'Europe/Sofia'),
(54, 'BH', 'Asia/Bahrain'),
(55, 'BI', 'Africa/Bujumbura'),
(56, 'BJ', 'Africa/Porto-Novo'),
(57, 'BL', 'America/St_Barthelemy'),
(58, 'BM', 'Atlantic/Bermuda'),
(59, 'BN', 'Asia/Brunei'),
(60, 'BO', 'America/La_Paz'),
(61, 'BQ', 'America/Kralendijk'),
(62, 'BR', 'America/Noronha'),
(63, 'BR', 'America/Belem'),
(64, 'BR', 'America/Fortaleza'),
(65, 'BR', 'America/Recife'),
(66, 'BR', 'America/Araguaina'),
(67, 'BR', 'America/Maceio'),
(68, 'BR', 'America/Bahia'),
(69, 'BR', 'America/Sao_Paulo'),
(70, 'BR', 'America/Campo_Grande'),
(71, 'BR', 'America/Cuiaba'),
(72, 'BR', 'America/Santarem'),
(73, 'BR', 'America/Porto_Velho'),
(74, 'BR', 'America/Boa_Vista'),
(75, 'BR', 'America/Manaus'),
(76, 'BR', 'America/Eirunepe'),
(77, 'BR', 'America/Rio_Branco'),
(78, 'BS', 'America/Nassau'),
(79, 'BT', 'Asia/Thimphu'),
(80, 'BW', 'Africa/Gaborone'),
(81, 'BY', 'Europe/Minsk'),
(82, 'BZ', 'America/Belize'),
(83, 'CA', 'America/St_Johns'),
(84, 'CA', 'America/Halifax'),
(85, 'CA', 'America/Glace_Bay'),
(86, 'CA', 'America/Moncton'),
(87, 'CA', 'America/Goose_Bay'),
(88, 'CA', 'America/Blanc-Sablon'),
(89, 'CA', 'America/Toronto'),
(90, 'CA', 'America/Nipigon'),
(91, 'CA', 'America/Thunder_Bay'),
(92, 'CA', 'America/Iqaluit'),
(93, 'CA', 'America/Pangnirtung'),
(94, 'CA', 'America/Atikokan'),
(95, 'CA', 'America/Winnipeg'),
(96, 'CA', 'America/Rainy_River'),
(97, 'CA', 'America/Resolute'),
(98, 'CA', 'America/Rankin_Inlet'),
(99, 'CA', 'America/Regina'),
(100, 'CA', 'America/Swift_Current'),
(101, 'CA', 'America/Edmonton'),
(102, 'CA', 'America/Cambridge_Bay'),
(103, 'CA', 'America/Yellowknife'),
(104, 'CA', 'America/Inuvik'),
(105, 'CA', 'America/Creston'),
(106, 'CA', 'America/Dawson_Creek'),
(107, 'CA', 'America/Fort_Nelson'),
(108, 'CA', 'America/Whitehorse'),
(109, 'CA', 'America/Dawson'),
(110, 'CA', 'America/Vancouver'),
(111, 'CC', 'Indian/Cocos'),
(112, 'CD', 'Africa/Kinshasa'),
(113, 'CD', 'Africa/Lubumbashi'),
(114, 'CF', 'Africa/Bangui'),
(115, 'CG', 'Africa/Brazzaville'),
(116, 'CH', 'Europe/Zurich'),
(117, 'CI', 'Africa/Abidjan'),
(118, 'CK', 'Pacific/Rarotonga'),
(119, 'CL', 'America/Santiago'),
(120, 'CL', 'America/Punta_Arenas'),
(121, 'CL', 'Pacific/Easter'),
(122, 'CM', 'Africa/Douala'),
(123, 'CN', 'Asia/Shanghai'),
(124, 'CN', 'Asia/Urumqi'),
(125, 'CO', 'America/Bogota'),
(126, 'CR', 'America/Costa_Rica'),
(127, 'CU', 'America/Havana'),
(128, 'CV', 'Atlantic/Cape_Verde'),
(129, 'CW', 'America/Curacao'),
(130, 'CX', 'Indian/Christmas'),
(131, 'CY', 'Asia/Nicosia'),
(132, 'CY', 'Asia/Famagusta'),
(133, 'CZ', 'Europe/Prague'),
(134, 'DE', 'Europe/Berlin'),
(135, 'DE', 'Europe/Busingen'),
(136, 'DJ', 'Africa/Djibouti'),
(137, 'DK', 'Europe/Copenhagen'),
(138, 'DM', 'America/Dominica'),
(139, 'DO', 'America/Santo_Domingo'),
(140, 'DZ', 'Africa/Algiers'),
(141, 'EC', 'America/Guayaquil'),
(142, 'EC', 'Pacific/Galapagos'),
(143, 'EE', 'Europe/Tallinn'),
(144, 'EG', 'Africa/Cairo'),
(145, 'EH', 'Africa/El_Aaiun'),
(146, 'ER', 'Africa/Asmara'),
(147, 'ES', 'Europe/Madrid'),
(148, 'ES', 'Africa/Ceuta'),
(149, 'ES', 'Atlantic/Canary'),
(150, 'ET', 'Africa/Addis_Ababa'),
(151, 'FI', 'Europe/Helsinki'),
(152, 'FJ', 'Pacific/Fiji'),
(153, 'FK', 'Atlantic/Stanley'),
(154, 'FM', 'Pacific/Chuuk'),
(155, 'FM', 'Pacific/Pohnpei'),
(156, 'FM', 'Pacific/Kosrae'),
(157, 'FO', 'Atlantic/Faroe'),
(158, 'FR', 'Europe/Paris'),
(159, 'GA', 'Africa/Libreville'),
(160, 'GB', 'Europe/London'),
(161, 'GD', 'America/Grenada'),
(162, 'GE', 'Asia/Tbilisi'),
(163, 'GF', 'America/Cayenne'),
(164, 'GG', 'Europe/Guernsey'),
(165, 'GH', 'Africa/Accra'),
(166, 'GI', 'Europe/Gibraltar'),
(167, 'GL', 'America/Nuuk'),
(168, 'GL', 'America/Danmarkshavn'),
(169, 'GL', 'America/Scoresbysund'),
(170, 'GL', 'America/Thule'),
(171, 'GM', 'Africa/Banjul'),
(172, 'GN', 'Africa/Conakry'),
(173, 'GP', 'America/Guadeloupe'),
(174, 'GQ', 'Africa/Malabo'),
(175, 'GR', 'Europe/Athens'),
(176, 'GS', 'Atlantic/South_Georgia'),
(177, 'GT', 'America/Guatemala'),
(178, 'GU', 'Pacific/Guam'),
(179, 'GW', 'Africa/Bissau'),
(180, 'GY', 'America/Guyana'),
(181, 'HK', 'Asia/Hong_Kong'),
(182, 'HN', 'America/Tegucigalpa'),
(183, 'HR', 'Europe/Zagreb'),
(184, 'HT', 'America/Port-au-Prince'),
(185, 'HU', 'Europe/Budapest'),
(186, 'ID', 'Asia/Jakarta'),
(187, 'ID', 'Asia/Pontianak'),
(188, 'ID', 'Asia/Makassar'),
(189, 'ID', 'Asia/Jayapura'),
(190, 'IE', 'Europe/Dublin'),
(191, 'IL', 'Asia/Jerusalem'),
(192, 'IM', 'Europe/Isle_of_Man'),
(193, 'IN', 'Asia/Kolkata'),
(194, 'IO', 'Indian/Chagos'),
(195, 'IQ', 'Asia/Baghdad'),
(196, 'IR', 'Asia/Tehran'),
(197, 'IS', 'Atlantic/Reykjavik'),
(198, 'IT', 'Europe/Rome'),
(199, 'JE', 'Europe/Jersey'),
(200, 'JM', 'America/Jamaica'),
(201, 'JO', 'Asia/Amman'),
(202, 'JP', 'Asia/Tokyo'),
(203, 'KE', 'Africa/Nairobi'),
(204, 'KG', 'Asia/Bishkek'),
(205, 'KH', 'Asia/Phnom_Penh'),
(206, 'KI', 'Pacific/Tarawa'),
(207, 'KI', 'Pacific/Kanton'),
(208, 'KI', 'Pacific/Kiritimati'),
(209, 'KM', 'Indian/Comoro'),
(210, 'KN', 'America/St_Kitts'),
(211, 'KP', 'Asia/Pyongyang'),
(212, 'KR', 'Asia/Seoul'),
(213, 'KW', 'Asia/Kuwait'),
(214, 'KY', 'America/Cayman'),
(215, 'KZ', 'Asia/Almaty'),
(216, 'KZ', 'Asia/Qyzylorda'),
(217, 'KZ', 'Asia/Qostanay'),
(218, 'KZ', 'Asia/Aqtobe'),
(219, 'KZ', 'Asia/Aqtau'),
(220, 'KZ', 'Asia/Atyrau'),
(221, 'KZ', 'Asia/Oral'),
(222, 'LA', 'Asia/Vientiane'),
(223, 'LB', 'Asia/Beirut'),
(224, 'LC', 'America/St_Lucia'),
(225, 'LI', 'Europe/Vaduz'),
(226, 'LK', 'Asia/Colombo'),
(227, 'LR', 'Africa/Monrovia'),
(228, 'LS', 'Africa/Maseru'),
(229, 'LT', 'Europe/Vilnius'),
(230, 'LU', 'Europe/Luxembourg'),
(231, 'LV', 'Europe/Riga'),
(232, 'LY', 'Africa/Tripoli'),
(233, 'MA', 'Africa/Casablanca'),
(234, 'MC', 'Europe/Monaco'),
(235, 'MD', 'Europe/Chisinau'),
(236, 'ME', 'Europe/Podgorica'),
(237, 'MF', 'America/Marigot'),
(238, 'MG', 'Indian/Antananarivo'),
(239, 'MH', 'Pacific/Majuro'),
(240, 'MH', 'Pacific/Kwajalein'),
(241, 'MK', 'Europe/Skopje'),
(242, 'ML', 'Africa/Bamako'),
(243, 'MM', 'Asia/Yangon'),
(244, 'MN', 'Asia/Ulaanbaatar'),
(245, 'MN', 'Asia/Hovd'),
(246, 'MN', 'Asia/Choibalsan'),
(247, 'MO', 'Asia/Macau'),
(248, 'MP', 'Pacific/Saipan'),
(249, 'MQ', 'America/Martinique'),
(250, 'MR', 'Africa/Nouakchott'),
(251, 'MS', 'America/Montserrat'),
(252, 'MT', 'Europe/Malta'),
(253, 'MU', 'Indian/Mauritius'),
(254, 'MV', 'Indian/Maldives'),
(255, 'MW', 'Africa/Blantyre'),
(256, 'MX', 'America/Mexico_City'),
(257, 'MX', 'America/Cancun'),
(258, 'MX', 'America/Merida'),
(259, 'MX', 'America/Monterrey'),
(260, 'MX', 'America/Matamoros'),
(261, 'MX', 'America/Mazatlan'),
(262, 'MX', 'America/Chihuahua'),
(263, 'MX', 'America/Ojinaga'),
(264, 'MX', 'America/Hermosillo'),
(265, 'MX', 'America/Tijuana'),
(266, 'MX', 'America/Bahia_Banderas'),
(267, 'MY', 'Asia/Kuala_Lumpur'),
(268, 'MY', 'Asia/Kuching'),
(269, 'MZ', 'Africa/Maputo'),
(270, 'NA', 'Africa/Windhoek'),
(271, 'NC', 'Pacific/Noumea'),
(272, 'NE', 'Africa/Niamey'),
(273, 'NF', 'Pacific/Norfolk'),
(274, 'NG', 'Africa/Lagos'),
(275, 'NI', 'America/Managua'),
(276, 'NL', 'Europe/Amsterdam'),
(277, 'NO', 'Europe/Oslo'),
(278, 'NP', 'Asia/Kathmandu'),
(279, 'NR', 'Pacific/Nauru'),
(280, 'NU', 'Pacific/Niue'),
(281, 'NZ', 'Pacific/Auckland'),
(282, 'NZ', 'Pacific/Chatham'),
(283, 'OM', 'Asia/Muscat'),
(284, 'PA', 'America/Panama'),
(285, 'PE', 'America/Lima'),
(286, 'PF', 'Pacific/Tahiti'),
(287, 'PF', 'Pacific/Marquesas'),
(288, 'PF', 'Pacific/Gambier'),
(289, 'PG', 'Pacific/Port_Moresby'),
(290, 'PG', 'Pacific/Bougainville'),
(291, 'PH', 'Asia/Manila'),
(292, 'PK', 'Asia/Karachi'),
(293, 'PL', 'Europe/Warsaw'),
(294, 'PM', 'America/Miquelon'),
(295, 'PN', 'Pacific/Pitcairn'),
(296, 'PR', 'America/Puerto_Rico'),
(297, 'PS', 'Asia/Gaza'),
(298, 'PS', 'Asia/Hebron'),
(299, 'PT', 'Europe/Lisbon'),
(300, 'PT', 'Atlantic/Madeira'),
(301, 'PT', 'Atlantic/Azores'),
(302, 'PW', 'Pacific/Palau'),
(303, 'PY', 'America/Asuncion'),
(304, 'QA', 'Asia/Qatar'),
(305, 'RE', 'Indian/Reunion'),
(306, 'RO', 'Europe/Bucharest'),
(307, 'RS', 'Europe/Belgrade'),
(308, 'RU', 'Europe/Kaliningrad'),
(309, 'RU', 'Europe/Moscow'),
(310, 'UA', 'Europe/Simferopol'),
(311, 'RU', 'Europe/Kirov'),
(312, 'RU', 'Europe/Volgograd'),
(313, 'RU', 'Europe/Astrakhan'),
(314, 'RU', 'Europe/Saratov'),
(315, 'RU', 'Europe/Ulyanovsk'),
(316, 'RU', 'Europe/Samara'),
(317, 'RU', 'Asia/Yekaterinburg'),
(318, 'RU', 'Asia/Omsk'),
(319, 'RU', 'Asia/Novosibirsk'),
(320, 'RU', 'Asia/Barnaul'),
(321, 'RU', 'Asia/Tomsk'),
(322, 'RU', 'Asia/Novokuznetsk'),
(323, 'RU', 'Asia/Krasnoyarsk'),
(324, 'RU', 'Asia/Irkutsk'),
(325, 'RU', 'Asia/Chita'),
(326, 'RU', 'Asia/Yakutsk'),
(327, 'RU', 'Asia/Khandyga'),
(328, 'RU', 'Asia/Vladivostok'),
(329, 'RU', 'Asia/Ust-Nera'),
(330, 'RU', 'Asia/Magadan'),
(331, 'RU', 'Asia/Sakhalin'),
(332, 'RU', 'Asia/Srednekolymsk'),
(333, 'RU', 'Asia/Kamchatka'),
(334, 'RU', 'Asia/Anadyr'),
(335, 'RW', 'Africa/Kigali'),
(336, 'SA', 'Asia/Riyadh'),
(337, 'SB', 'Pacific/Guadalcanal'),
(338, 'SC', 'Indian/Mahe'),
(339, 'SD', 'Africa/Khartoum'),
(340, 'SE', 'Europe/Stockholm'),
(341, 'SG', 'Asia/Singapore'),
(342, 'SH', 'Atlantic/St_Helena'),
(343, 'SI', 'Europe/Ljubljana'),
(344, 'SJ', 'Arctic/Longyearbyen'),
(345, 'SK', 'Europe/Bratislava'),
(346, 'SL', 'Africa/Freetown'),
(347, 'SM', 'Europe/San_Marino'),
(348, 'SN', 'Africa/Dakar'),
(349, 'SO', 'Africa/Mogadishu'),
(350, 'SR', 'America/Paramaribo'),
(351, 'SS', 'Africa/Juba'),
(352, 'ST', 'Africa/Sao_Tome'),
(353, 'SV', 'America/El_Salvador'),
(354, 'SX', 'America/Lower_Princes'),
(355, 'SY', 'Asia/Damascus'),
(356, 'SZ', 'Africa/Mbabane'),
(357, 'TC', 'America/Grand_Turk'),
(358, 'TD', 'Africa/Ndjamena'),
(359, 'TF', 'Indian/Kerguelen'),
(360, 'TG', 'Africa/Lome'),
(361, 'TH', 'Asia/Bangkok'),
(362, 'TJ', 'Asia/Dushanbe'),
(363, 'TK', 'Pacific/Fakaofo'),
(364, 'TL', 'Asia/Dili'),
(365, 'TM', 'Asia/Ashgabat'),
(366, 'TN', 'Africa/Tunis'),
(367, 'TO', 'Pacific/Tongatapu'),
(368, 'TR', 'Europe/Istanbul'),
(369, 'TT', 'America/Port_of_Spain'),
(370, 'TV', 'Pacific/Funafuti'),
(371, 'TW', 'Asia/Taipei'),
(372, 'TZ', 'Africa/Dar_es_Salaam'),
(373, 'UA', 'Europe/Kiev'),
(374, 'UA', 'Europe/Uzhgorod'),
(375, 'UA', 'Europe/Zaporozhye'),
(376, 'UG', 'Africa/Kampala'),
(377, 'UM', 'Pacific/Midway'),
(378, 'UM', 'Pacific/Wake'),
(379, 'US', 'America/New_York'),
(380, 'US', 'America/Detroit'),
(381, 'US', 'America/Kentucky/Louisville'),
(382, 'US', 'America/Kentucky/Monticello'),
(383, 'US', 'America/Indiana/Indianapolis'),
(384, 'US', 'America/Indiana/Vincennes'),
(385, 'US', 'America/Indiana/Winamac'),
(386, 'US', 'America/Indiana/Marengo'),
(387, 'US', 'America/Indiana/Petersburg'),
(388, 'US', 'America/Indiana/Vevay'),
(389, 'US', 'America/Chicago'),
(390, 'US', 'America/Indiana/Tell_City'),
(391, 'US', 'America/Indiana/Knox'),
(392, 'US', 'America/Menominee'),
(393, 'US', 'America/North_Dakota/Center'),
(394, 'US', 'America/North_Dakota/New_Salem'),
(395, 'US', 'America/North_Dakota/Beulah'),
(396, 'US', 'America/Denver'),
(397, 'US', 'America/Boise'),
(398, 'US', 'America/Phoenix'),
(399, 'US', 'America/Los_Angeles'),
(400, 'US', 'America/Anchorage'),
(401, 'US', 'America/Juneau'),
(402, 'US', 'America/Sitka'),
(403, 'US', 'America/Metlakatla'),
(404, 'US', 'America/Yakutat'),
(405, 'US', 'America/Nome'),
(406, 'US', 'America/Adak'),
(407, 'US', 'Pacific/Honolulu'),
(408, 'UY', 'America/Montevideo'),
(409, 'UZ', 'Asia/Samarkand'),
(410, 'UZ', 'Asia/Tashkent'),
(411, 'VA', 'Europe/Vatican'),
(412, 'VC', 'America/St_Vincent'),
(413, 'VE', 'America/Caracas'),
(414, 'VG', 'America/Tortola'),
(415, 'VI', 'America/St_Thomas'),
(416, 'VN', 'Asia/Ho_Chi_Minh'),
(417, 'VU', 'Pacific/Efate'),
(418, 'WF', 'Pacific/Wallis'),
(419, 'WS', 'Pacific/Apia'),
(420, 'YE', 'Asia/Aden'),
(421, 'YT', 'Indian/Mayotte'),
(422, 'ZA', 'Africa/Johannesburg'),
(423, 'ZM', 'Africa/Lusaka'),
(424, 'ZW', 'Africa/Harare');

-- --------------------------------------------------------

--
-- Table structure for table `top_menu`
--

CREATE TABLE `top_menu` (
  `menuid` int(11) NOT NULL,
  `menu_name` text NOT NULL,
  `menu_slug` varchar(70) NOT NULL,
  `parentid` int(11) NOT NULL,
  `entrydate` date NOT NULL,
  `isactive` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `top_menu`
--

INSERT INTO `top_menu` (`menuid`, `menu_name`, `menu_slug`, `parentid`, `entrydate`, `isactive`) VALUES
(1, 'HOME', 'hotel', 0, '2024-09-21', 1),
(2, 'ABOUT US', 'about', 0, '2024-09-21', 1),
(3, 'CONTACT US', 'contact', 0, '2024-09-21', 1),
(4, 'GALLERY', 'gallery', 0, '2024-11-06', 1),
(5, 'GUESTS LOGIN', 'my-profile', 0, '2024-11-06', 1);

-- --------------------------------------------------------

--
-- Table structure for table `unit_of_measurement`
--

CREATE TABLE `unit_of_measurement` (
  `id` int(11) NOT NULL,
  `uom_name` varchar(200) NOT NULL,
  `uom_short_code` varchar(10) NOT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `unit_of_measurement`
--

INSERT INTO `unit_of_measurement` (`id`, `uom_name`, `uom_short_code`, `is_active`) VALUES
(1, 'Kilogram', 'kg.', 1),
(2, 'Liter', 'ltr.', 1),
(3, 'Gram', 'grm.', 1),
(4, 'tonne', 'tn.', 1),
(5, 'milligram', 'mg.', 1),
(6, 'carat', 'carat', 1),
(7, 'Per Pieces', 'pcs', 1),
(8, 'Per Cup', 'cup', 1),
(9, 'Pound', 'pnd.', 1),
(10, 'Bottle', 'BOT', 1),
(11, 'Shot', 'Shot', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `about` text DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `device_token` text DEFAULT NULL,
  `password` varchar(32) NOT NULL,
  `password_reset_token` varchar(20) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_logout` datetime DEFAULT NULL,
  `ip_address` varchar(14) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `usertype` int(11) NOT NULL DEFAULT 1 COMMENT '1=user,2=employee',
  `is_admin` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `firstname`, `lastname`, `about`, `email`, `device_token`, `password`, `password_reset_token`, `image`, `last_login`, `last_logout`, `ip_address`, `status`, `usertype`, `is_admin`) VALUES
(1, 'Theo', 'BN', '', 'theobaldbbm@matheostechs.com', NULL, 'e40725243fd85a2ce2cef4d9b64833c4', NULL, './assets/img/user/Theo2.jpg', '2024-11-10 22:43:35', '2024-11-10 22:58:43', '197.250.51.151', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `variant`
--

CREATE TABLE `variant` (
  `variantid` int(11) NOT NULL,
  `menuid` int(11) NOT NULL,
  `variantName` varchar(120) NOT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `weekly_holiday`
--

CREATE TABLE `weekly_holiday` (
  `wk_id` int(11) NOT NULL,
  `dayname` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `weekly_holiday`
--

INSERT INTO `weekly_holiday` (`wk_id`, `dayname`) VALUES
(22, 'Friday');

-- --------------------------------------------------------

--
-- Table structure for table `whatsapp_settings`
--

CREATE TABLE `whatsapp_settings` (
  `id` int(11) NOT NULL,
  `whatsapp_number` varchar(100) DEFAULT NULL,
  `chatenable` int(11) DEFAULT 0,
  `orderenable` int(11) DEFAULT 0,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `whatsapp_settings`
--

INSERT INTO `whatsapp_settings` (`id`, `whatsapp_number`, `chatenable`, `orderenable`, `status`) VALUES
(1, '+255768364583', 1, 1, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accesslog`
--
ALTER TABLE `accesslog`
  ADD PRIMARY KEY (`sl_no`);

--
-- Indexes for table `acc_account`
--
ALTER TABLE `acc_account`
  ADD PRIMARY KEY (`account_id`);

--
-- Indexes for table `acc_account_name`
--
ALTER TABLE `acc_account_name`
  ADD PRIMARY KEY (`account_id`);

--
-- Indexes for table `acc_bank`
--
ALTER TABLE `acc_bank`
  ADD PRIMARY KEY (`bank_id`);

--
-- Indexes for table `acc_coa`
--
ALTER TABLE `acc_coa`
  ADD PRIMARY KEY (`HeadName`),
  ADD KEY `HeadCode` (`HeadCode`);

--
-- Indexes for table `acc_customer_income`
--
ALTER TABLE `acc_customer_income`
  ADD UNIQUE KEY `ID` (`ID`);

--
-- Indexes for table `acc_glsummarybalance`
--
ALTER TABLE `acc_glsummarybalance`
  ADD UNIQUE KEY `ID` (`ID`);

--
-- Indexes for table `acc_income_expence`
--
ALTER TABLE `acc_income_expence`
  ADD UNIQUE KEY `ID` (`ID`),
  ADD KEY `VNo` (`VNo`,`IsApprove`);

--
-- Indexes for table `acc_transaction`
--
ALTER TABLE `acc_transaction`
  ADD UNIQUE KEY `ID` (`ID`),
  ADD KEY `COAID` (`COAID`);

--
-- Indexes for table `add_ons`
--
ALTER TABLE `add_ons`
  ADD PRIMARY KEY (`add_on_id`);

--
-- Indexes for table `award`
--
ALTER TABLE `award`
  ADD PRIMARY KEY (`award_id`);

--
-- Indexes for table `bedstype`
--
ALTER TABLE `bedstype`
  ADD PRIMARY KEY (`Bedstypeid`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`bill_id`);

--
-- Indexes for table `bill_card_payment`
--
ALTER TABLE `bill_card_payment`
  ADD PRIMARY KEY (`row_id`);

--
-- Indexes for table `booked_details`
--
ALTER TABLE `booked_details`
  ADD PRIMARY KEY (`book_detailsid`),
  ADD KEY `bookedid` (`bookedid`);

--
-- Indexes for table `booked_info`
--
ALTER TABLE `booked_info`
  ADD PRIMARY KEY (`bookedid`),
  ADD KEY `cutomerid` (`cutomerid`,`bookingstatus`);

--
-- Indexes for table `bookingtype`
--
ALTER TABLE `bookingtype`
  ADD PRIMARY KEY (`booktypeid`);

--
-- Indexes for table `candidate_basic_info`
--
ALTER TABLE `candidate_basic_info`
  ADD PRIMARY KEY (`can_id`);

--
-- Indexes for table `candidate_education_info`
--
ALTER TABLE `candidate_education_info`
  ADD PRIMARY KEY (`can_edu_id`);

--
-- Indexes for table `candidate_interview`
--
ALTER TABLE `candidate_interview`
  ADD PRIMARY KEY (`can_int_id`);

--
-- Indexes for table `candidate_selection`
--
ALTER TABLE `candidate_selection`
  ADD PRIMARY KEY (`can_sel_id`);

--
-- Indexes for table `candidate_shortlist`
--
ALTER TABLE `candidate_shortlist`
  ADD PRIMARY KEY (`can_short_id`);

--
-- Indexes for table `candidate_workexperience`
--
ALTER TABLE `candidate_workexperience`
  ADD PRIMARY KEY (`can_workexp_id`);

--
-- Indexes for table `check_addones`
--
ALTER TABLE `check_addones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `common_setting`
--
ALTER TABLE `common_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`currencyid`);

--
-- Indexes for table `customerinfo`
--
ALTER TABLE `customerinfo`
  ADD PRIMARY KEY (`customerid`);

--
-- Indexes for table `customer_order`
--
ALTER TABLE `customer_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `customer_type`
--
ALTER TABLE `customer_type`
  ADD PRIMARY KEY (`customer_type_id`);

--
-- Indexes for table `custom_table`
--
ALTER TABLE `custom_table`
  ADD PRIMARY KEY (`custom_id`);

--
-- Indexes for table `dbt_blocklist`
--
ALTER TABLE `dbt_blocklist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dbt_security`
--
ALTER TABLE `dbt_security`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `duty_type`
--
ALTER TABLE `duty_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_config`
--
ALTER TABLE `email_config`
  ADD PRIMARY KEY (`email_config_id`);

--
-- Indexes for table `employee_benifit`
--
ALTER TABLE `employee_benifit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_history`
--
ALTER TABLE `employee_history`
  ADD PRIMARY KEY (`emp_his_id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `employee_performance`
--
ALTER TABLE `employee_performance`
  ADD PRIMARY KEY (`emp_per_id`);

--
-- Indexes for table `employee_salary_payment`
--
ALTER TABLE `employee_salary_payment`
  ADD PRIMARY KEY (`emp_sal_pay_id`);

--
-- Indexes for table `employee_salary_setup`
--
ALTER TABLE `employee_salary_setup`
  ADD PRIMARY KEY (`e_s_s_id`);

--
-- Indexes for table `emp_attendance`
--
ALTER TABLE `emp_attendance`
  ADD PRIMARY KEY (`att_id`);

--
-- Indexes for table `foodvariable`
--
ALTER TABLE `foodvariable`
  ADD PRIMARY KEY (`availableID`);

--
-- Indexes for table `gender`
--
ALTER TABLE `gender`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grand_loan`
--
ALTER TABLE `grand_loan`
  ADD PRIMARY KEY (`loan_id`);

--
-- Indexes for table `item_category`
--
ALTER TABLE `item_category`
  ADD PRIMARY KEY (`CategoryID`);

--
-- Indexes for table `item_foods`
--
ALTER TABLE `item_foods`
  ADD PRIMARY KEY (`ProductsID`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_apply`
--
ALTER TABLE `leave_apply`
  ADD PRIMARY KEY (`leave_appl_id`);

--
-- Indexes for table `leave_type`
--
ALTER TABLE `leave_type`
  ADD PRIMARY KEY (`leave_type_id`);

--
-- Indexes for table `loan_installment`
--
ALTER TABLE `loan_installment`
  ADD PRIMARY KEY (`loan_inst_id`);

--
-- Indexes for table `marital_info`
--
ALTER TABLE `marital_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `membership`
--
ALTER TABLE `membership`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_add_on`
--
ALTER TABLE `menu_add_on`
  ADD PRIMARY KEY (`row_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module_permission`
--
ALTER TABLE `module_permission`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_module_id` (`fk_module_id`),
  ADD KEY `fk_user_id` (`fk_user_id`);

--
-- Indexes for table `multipay_bill`
--
ALTER TABLE `multipay_bill`
  ADD PRIMARY KEY (`multipay_id`);

--
-- Indexes for table `notice_board`
--
ALTER TABLE `notice_board`
  ADD PRIMARY KEY (`notice_id`);

--
-- Indexes for table `order_menu`
--
ALTER TABLE `order_menu`
  ADD PRIMARY KEY (`row_id`);

--
-- Indexes for table `page_title`
--
ALTER TABLE `page_title`
  ADD PRIMARY KEY (`pageid`);

--
-- Indexes for table `paymentsetup`
--
ALTER TABLE `paymentsetup`
  ADD PRIMARY KEY (`setupid`);

--
-- Indexes for table `payment_method`
--
ALTER TABLE `payment_method`
  ADD PRIMARY KEY (`payment_method_id`);

--
-- Indexes for table `payroll_holiday`
--
ALTER TABLE `payroll_holiday`
  ADD PRIMARY KEY (`payrl_holi_id`);

--
-- Indexes for table `payroll_tax_setup`
--
ALTER TABLE `payroll_tax_setup`
  ADD PRIMARY KEY (`tax_setup_id`);

--
-- Indexes for table `pay_frequency`
--
ALTER TABLE `pay_frequency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`pos_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`,`is_active`);

--
-- Indexes for table `promocode`
--
ALTER TABLE `promocode`
  ADD PRIMARY KEY (`promocodeid`);

--
-- Indexes for table `purchaseitem`
--
ALTER TABLE `purchaseitem`
  ADD PRIMARY KEY (`purID`),
  ADD KEY `invoiceid` (`invoiceid`,`suplierID`,`status`);

--
-- Indexes for table `purchase_details`
--
ALTER TABLE `purchase_details`
  ADD PRIMARY KEY (`detailsid`),
  ADD KEY `purchaseid` (`purchaseid`,`proid`);

--
-- Indexes for table `purchase_return`
--
ALTER TABLE `purchase_return`
  ADD PRIMARY KEY (`preturn_id`);

--
-- Indexes for table `rate_type`
--
ALTER TABLE `rate_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rest_table`
--
ALTER TABLE `rest_table`
  ADD PRIMARY KEY (`tableid`);

--
-- Indexes for table `roomdetails`
--
ALTER TABLE `roomdetails`
  ADD PRIMARY KEY (`roomid`),
  ADD KEY `roomtype` (`roomtype`);

--
-- Indexes for table `roomfacilitydetails`
--
ALTER TABLE `roomfacilitydetails`
  ADD PRIMARY KEY (`facilityid`),
  ADD KEY `facilitytypeid` (`facilitytypeid`),
  ADD KEY `facilitytypeid_2` (`facilitytypeid`);

--
-- Indexes for table `roomfacilitytype`
--
ALTER TABLE `roomfacilitytype`
  ADD PRIMARY KEY (`facilitytypeid`);

--
-- Indexes for table `roomfaility_ref_accomodation`
--
ALTER TABLE `roomfaility_ref_accomodation`
  ADD PRIMARY KEY (`accomodationid`);

--
-- Indexes for table `roomsizemesurement`
--
ALTER TABLE `roomsizemesurement`
  ADD PRIMARY KEY (`mesurementid`);

--
-- Indexes for table `room_amenities`
--
ALTER TABLE `room_amenities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_amenities_ibfk_1` (`room_id`);

--
-- Indexes for table `room_image`
--
ALTER TABLE `room_image`
  ADD PRIMARY KEY (`room_img_id`);

--
-- Indexes for table `salary_setup_header`
--
ALTER TABLE `salary_setup_header`
  ADD PRIMARY KEY (`s_s_h_id`);

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
-- Indexes for table `schdule_purchse_info`
--
ALTER TABLE `schdule_purchse_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sec_menu_item`
--
ALTER TABLE `sec_menu_item`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `sec_role_permission`
--
ALTER TABLE `sec_role_permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sec_role_tbl`
--
ALTER TABLE `sec_role_tbl`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `sec_user_access_tbl`
--
ALTER TABLE `sec_user_access_tbl`
  ADD PRIMARY KEY (`role_acc_id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_configuration`
--
ALTER TABLE `sms_configuration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_template`
--
ALTER TABLE `sms_template`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `starclass`
--
ALTER TABLE `starclass`
  ADD PRIMARY KEY (`starcalssid`);

--
-- Indexes for table `subscribe_emaillist`
--
ALTER TABLE `subscribe_emaillist`
  ADD PRIMARY KEY (`emailid`);

--
-- Indexes for table `sub_order`
--
ALTER TABLE `sub_order`
  ADD PRIMARY KEY (`sub_id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supid`),
  ADD KEY `suplier_code` (`suplier_code`);

--
-- Indexes for table `synchronizer_setting`
--
ALTER TABLE `synchronizer_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_details`
--
ALTER TABLE `table_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_setting`
--
ALTER TABLE `table_setting`
  ADD PRIMARY KEY (`settingid`);

--
-- Indexes for table `tax_settings`
--
ALTER TABLE `tax_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_assign_kitchen`
--
ALTER TABLE `tbl_assign_kitchen`
  ADD PRIMARY KEY (`assignid`);

--
-- Indexes for table `tbl_bank`
--
ALTER TABLE `tbl_bank`
  ADD PRIMARY KEY (`bankid`);

--
-- Indexes for table `tbl_booking_type_info`
--
ALTER TABLE `tbl_booking_type_info`
  ADD PRIMARY KEY (`btypeinfoid`),
  ADD KEY `booking_type` (`booking_type`);

--
-- Indexes for table `tbl_cancelitem`
--
ALTER TABLE `tbl_cancelitem`
  ADD PRIMARY KEY (`cancelid`);

--
-- Indexes for table `tbl_card_terminal`
--
ALTER TABLE `tbl_card_terminal`
  ADD PRIMARY KEY (`card_terminalid`);

--
-- Indexes for table `tbl_cashcounter`
--
ALTER TABLE `tbl_cashcounter`
  ADD PRIMARY KEY (`ccid`);

--
-- Indexes for table `tbl_cashregister`
--
ALTER TABLE `tbl_cashregister`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_checklist`
--
ALTER TABLE `tbl_checklist`
  ADD PRIMARY KEY (`checklist_id`);

--
-- Indexes for table `tbl_complementary`
--
ALTER TABLE `tbl_complementary`
  ADD PRIMARY KEY (`complementary_id`);

--
-- Indexes for table `tbl_country`
--
ALTER TABLE `tbl_country`
  ADD PRIMARY KEY (`countryid`);

--
-- Indexes for table `tbl_destroyedproduct`
--
ALTER TABLE `tbl_destroyedproduct`
  ADD PRIMARY KEY (`destroy_id`);

--
-- Indexes for table `tbl_duty_roster`
--
ALTER TABLE `tbl_duty_roster`
  ADD PRIMARY KEY (`roster_id`);

--
-- Indexes for table `tbl_email_permission`
--
ALTER TABLE `tbl_email_permission`
  ADD PRIMARY KEY (`permission_id`);

--
-- Indexes for table `tbl_emproster_assign`
--
ALTER TABLE `tbl_emproster_assign`
  ADD PRIMARY KEY (`sftasnid`);

--
-- Indexes for table `tbl_empwork_shift`
--
ALTER TABLE `tbl_empwork_shift`
  ADD PRIMARY KEY (`shiftid`);

--
-- Indexes for table `tbl_financialyear`
--
ALTER TABLE `tbl_financialyear`
  ADD PRIMARY KEY (`fiyear_id`);

--
-- Indexes for table `tbl_flight_details`
--
ALTER TABLE `tbl_flight_details`
  ADD PRIMARY KEY (`flyid`);

--
-- Indexes for table `tbl_floor`
--
ALTER TABLE `tbl_floor`
  ADD PRIMARY KEY (`floorid`);

--
-- Indexes for table `tbl_floorplan`
--
ALTER TABLE `tbl_floorplan`
  ADD PRIMARY KEY (`floorplanid`),
  ADD KEY `floorName` (`floorName`);

--
-- Indexes for table `tbl_groupitems`
--
ALTER TABLE `tbl_groupitems`
  ADD PRIMARY KEY (`groupid`);

--
-- Indexes for table `tbl_guestpayments`
--
ALTER TABLE `tbl_guestpayments`
  ADD PRIMARY KEY (`payid`),
  ADD KEY `bookedid` (`bookedid`,`invoice`);

--
-- Indexes for table `tbl_hallroom_booking`
--
ALTER TABLE `tbl_hallroom_booking`
  ADD PRIMARY KEY (`hbid`),
  ADD KEY `customerid` (`customerid`);

--
-- Indexes for table `tbl_hallroom_info`
--
ALTER TABLE `tbl_hallroom_info`
  ADD PRIMARY KEY (`hid`);

--
-- Indexes for table `tbl_hallroom_postbill`
--
ALTER TABLE `tbl_hallroom_postbill`
  ADD PRIMARY KEY (`hpbid`);

--
-- Indexes for table `tbl_hallroom_seatplan`
--
ALTER TABLE `tbl_hallroom_seatplan`
  ADD PRIMARY KEY (`hsid`);

--
-- Indexes for table `tbl_hkitem`
--
ALTER TABLE `tbl_hkitem`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `tbl_housekeepingrecord`
--
ALTER TABLE `tbl_housekeepingrecord`
  ADD PRIMARY KEY (`hkeeper_id`);

--
-- Indexes for table `tbl_itemaccepted`
--
ALTER TABLE `tbl_itemaccepted`
  ADD PRIMARY KEY (`acid`);

--
-- Indexes for table `tbl_kitchen`
--
ALTER TABLE `tbl_kitchen`
  ADD PRIMARY KEY (`kitchenid`);

--
-- Indexes for table `tbl_kitchen_order`
--
ALTER TABLE `tbl_kitchen_order`
  ADD PRIMARY KEY (`ktid`);

--
-- Indexes for table `tbl_laundry`
--
ALTER TABLE `tbl_laundry`
  ADD PRIMARY KEY (`laundry_id`);

--
-- Indexes for table `tbl_laundry_payment`
--
ALTER TABLE `tbl_laundry_payment`
  ADD PRIMARY KEY (`landry_id`);

--
-- Indexes for table `tbl_menutype`
--
ALTER TABLE `tbl_menutype`
  ADD PRIMARY KEY (`menutypeid`);

--
-- Indexes for table `tbl_module_purchasekey`
--
ALTER TABLE `tbl_module_purchasekey`
  ADD PRIMARY KEY (`mpid`);

--
-- Indexes for table `tbl_note`
--
ALTER TABLE `tbl_note`
  ADD PRIMARY KEY (`note_id`);

--
-- Indexes for table `tbl_openingbalance`
--
ALTER TABLE `tbl_openingbalance`
  ADD PRIMARY KEY (`opbalance_id`),
  ADD KEY `fiyear_id` (`fiyear_id`);

--
-- Indexes for table `tbl_orderprepare`
--
ALTER TABLE `tbl_orderprepare`
  ADD PRIMARY KEY (`opid`);

--
-- Indexes for table `tbl_otherguest`
--
ALTER TABLE `tbl_otherguest`
  ADD PRIMARY KEY (`otherguest_id`),
  ADD KEY `customerid` (`customerid`);

--
-- Indexes for table `tbl_posetting`
--
ALTER TABLE `tbl_posetting`
  ADD PRIMARY KEY (`possettingid`);

--
-- Indexes for table `tbl_postedbills`
--
ALTER TABLE `tbl_postedbills`
  ADD PRIMARY KEY (`bill_id`);

--
-- Indexes for table `tbl_quickordersetting`
--
ALTER TABLE `tbl_quickordersetting`
  ADD PRIMARY KEY (`quickordid`);

--
-- Indexes for table `tbl_razorpay`
--
ALTER TABLE `tbl_razorpay`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_reuseableproduct`
--
ALTER TABLE `tbl_reuseableproduct`
  ADD PRIMARY KEY (`reuse_id`);

--
-- Indexes for table `tbl_roomnofloorassign`
--
ALTER TABLE `tbl_roomnofloorassign`
  ADD PRIMARY KEY (`roomassignid`);

--
-- Indexes for table `tbl_room_offer`
--
ALTER TABLE `tbl_room_offer`
  ADD PRIMARY KEY (`offerid`);

--
-- Indexes for table `tbl_shippingaddress`
--
ALTER TABLE `tbl_shippingaddress`
  ADD PRIMARY KEY (`shipaddressid`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`slid`);

--
-- Indexes for table `tbl_slider_type`
--
ALTER TABLE `tbl_slider_type`
  ADD PRIMARY KEY (`stype_id`);

--
-- Indexes for table `tbl_soundsetting`
--
ALTER TABLE `tbl_soundsetting`
  ADD PRIMARY KEY (`soundid`);

--
-- Indexes for table `tbl_state`
--
ALTER TABLE `tbl_state`
  ADD PRIMARY KEY (`stateid`);

--
-- Indexes for table `tbl_stripe`
--
ALTER TABLE `tbl_stripe`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_tablefloor`
--
ALTER TABLE `tbl_tablefloor`
  ADD PRIMARY KEY (`tbfloorid`);

--
-- Indexes for table `tbl_tax`
--
ALTER TABLE `tbl_tax`
  ADD PRIMARY KEY (`taxsettings`);

--
-- Indexes for table `tbl_taxmgt`
--
ALTER TABLE `tbl_taxmgt`
  ADD PRIMARY KEY (`tax_id`);

--
-- Indexes for table `tbl_thirdparty_customer`
--
ALTER TABLE `tbl_thirdparty_customer`
  ADD PRIMARY KEY (`companyId`);

--
-- Indexes for table `tbl_updateitems`
--
ALTER TABLE `tbl_updateitems`
  ADD PRIMARY KEY (`updateid`);

--
-- Indexes for table `tbl_vehicle_booking`
--
ALTER TABLE `tbl_vehicle_booking`
  ADD PRIMARY KEY (`vbkid`);

--
-- Indexes for table `tbl_vehicle_details`
--
ALTER TABLE `tbl_vehicle_details`
  ADD PRIMARY KEY (`vdsid`);

--
-- Indexes for table `tbl_version_checker`
--
ALTER TABLE `tbl_version_checker`
  ADD PRIMARY KEY (`vid`);

--
-- Indexes for table `tbl_wakeup_call`
--
ALTER TABLE `tbl_wakeup_call`
  ADD PRIMARY KEY (`wapupid`);

--
-- Indexes for table `tbl_widget`
--
ALTER TABLE `tbl_widget`
  ADD PRIMARY KEY (`widgetid`);

--
-- Indexes for table `timezone`
--
ALTER TABLE `timezone`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `top_menu`
--
ALTER TABLE `top_menu`
  ADD PRIMARY KEY (`menuid`);

--
-- Indexes for table `unit_of_measurement`
--
ALTER TABLE `unit_of_measurement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `variant`
--
ALTER TABLE `variant`
  ADD PRIMARY KEY (`variantid`);

--
-- Indexes for table `weekly_holiday`
--
ALTER TABLE `weekly_holiday`
  ADD PRIMARY KEY (`wk_id`);

--
-- Indexes for table `whatsapp_settings`
--
ALTER TABLE `whatsapp_settings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accesslog`
--
ALTER TABLE `accesslog`
  MODIFY `sl_no` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `acc_account`
--
ALTER TABLE `acc_account`
  MODIFY `account_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `acc_account_name`
--
ALTER TABLE `acc_account_name`
  MODIFY `account_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `acc_bank`
--
ALTER TABLE `acc_bank`
  MODIFY `bank_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `acc_customer_income`
--
ALTER TABLE `acc_customer_income`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `acc_glsummarybalance`
--
ALTER TABLE `acc_glsummarybalance`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `acc_income_expence`
--
ALTER TABLE `acc_income_expence`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `acc_transaction`
--
ALTER TABLE `acc_transaction`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1390;

--
-- AUTO_INCREMENT for table `add_ons`
--
ALTER TABLE `add_ons`
  MODIFY `add_on_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `award`
--
ALTER TABLE `award`
  MODIFY `award_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bedstype`
--
ALTER TABLE `bedstype`
  MODIFY `Bedstypeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `bill_id` bigint(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bill_card_payment`
--
ALTER TABLE `bill_card_payment`
  MODIFY `row_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `booked_details`
--
ALTER TABLE `booked_details`
  MODIFY `book_detailsid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=333;

--
-- AUTO_INCREMENT for table `booked_info`
--
ALTER TABLE `booked_info`
  MODIFY `bookedid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=333;

--
-- AUTO_INCREMENT for table `bookingtype`
--
ALTER TABLE `bookingtype`
  MODIFY `booktypeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `candidate_education_info`
--
ALTER TABLE `candidate_education_info`
  MODIFY `can_edu_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `candidate_interview`
--
ALTER TABLE `candidate_interview`
  MODIFY `can_int_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `candidate_selection`
--
ALTER TABLE `candidate_selection`
  MODIFY `can_sel_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `candidate_shortlist`
--
ALTER TABLE `candidate_shortlist`
  MODIFY `can_short_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `candidate_workexperience`
--
ALTER TABLE `candidate_workexperience`
  MODIFY `can_workexp_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `check_addones`
--
ALTER TABLE `check_addones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `common_setting`
--
ALTER TABLE `common_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `currencyid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customerinfo`
--
ALTER TABLE `customerinfo`
  MODIFY `customerid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=332;

--
-- AUTO_INCREMENT for table `customer_order`
--
ALTER TABLE `customer_order`
  MODIFY `order_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_type`
--
ALTER TABLE `customer_type`
  MODIFY `customer_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `custom_table`
--
ALTER TABLE `custom_table`
  MODIFY `custom_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `dbt_blocklist`
--
ALTER TABLE `dbt_blocklist`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dbt_security`
--
ALTER TABLE `dbt_security`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `dept_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `duty_type`
--
ALTER TABLE `duty_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `email_config`
--
ALTER TABLE `email_config`
  MODIFY `email_config_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employee_benifit`
--
ALTER TABLE `employee_benifit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee_history`
--
ALTER TABLE `employee_history`
  MODIFY `emp_his_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee_performance`
--
ALTER TABLE `employee_performance`
  MODIFY `emp_per_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee_salary_payment`
--
ALTER TABLE `employee_salary_payment`
  MODIFY `emp_sal_pay_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee_salary_setup`
--
ALTER TABLE `employee_salary_setup`
  MODIFY `e_s_s_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emp_attendance`
--
ALTER TABLE `emp_attendance`
  MODIFY `att_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `foodvariable`
--
ALTER TABLE `foodvariable`
  MODIFY `availableID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gender`
--
ALTER TABLE `gender`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `grand_loan`
--
ALTER TABLE `grand_loan`
  MODIFY `loan_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item_category`
--
ALTER TABLE `item_category`
  MODIFY `CategoryID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item_foods`
--
ALTER TABLE `item_foods`
  MODIFY `ProductsID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2196;

--
-- AUTO_INCREMENT for table `leave_apply`
--
ALTER TABLE `leave_apply`
  MODIFY `leave_appl_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leave_type`
--
ALTER TABLE `leave_type`
  MODIFY `leave_type_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `loan_installment`
--
ALTER TABLE `loan_installment`
  MODIFY `loan_inst_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marital_info`
--
ALTER TABLE `marital_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `membership`
--
ALTER TABLE `membership`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menu_add_on`
--
ALTER TABLE `menu_add_on`
  MODIFY `row_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `module`
--
ALTER TABLE `module`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `module_permission`
--
ALTER TABLE `module_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `multipay_bill`
--
ALTER TABLE `multipay_bill`
  MODIFY `multipay_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `notice_board`
--
ALTER TABLE `notice_board`
  MODIFY `notice_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_menu`
--
ALTER TABLE `order_menu`
  MODIFY `row_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `page_title`
--
ALTER TABLE `page_title`
  MODIFY `pageid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `paymentsetup`
--
ALTER TABLE `paymentsetup`
  MODIFY `setupid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `payment_method`
--
ALTER TABLE `payment_method`
  MODIFY `payment_method_id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payroll_holiday`
--
ALTER TABLE `payroll_holiday`
  MODIFY `payrl_holi_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payroll_tax_setup`
--
ALTER TABLE `payroll_tax_setup`
  MODIFY `tax_setup_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pay_frequency`
--
ALTER TABLE `pay_frequency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `position`
--
ALTER TABLE `position`
  MODIFY `pos_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `promocode`
--
ALTER TABLE `promocode`
  MODIFY `promocodeid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchaseitem`
--
ALTER TABLE `purchaseitem`
  MODIFY `purID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_details`
--
ALTER TABLE `purchase_details`
  MODIFY `detailsid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_return`
--
ALTER TABLE `purchase_return`
  MODIFY `preturn_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rate_type`
--
ALTER TABLE `rate_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rest_table`
--
ALTER TABLE `rest_table`
  MODIFY `tableid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roomdetails`
--
ALTER TABLE `roomdetails`
  MODIFY `roomid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `roomfacilitydetails`
--
ALTER TABLE `roomfacilitydetails`
  MODIFY `facilityid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roomfacilitytype`
--
ALTER TABLE `roomfacilitytype`
  MODIFY `facilitytypeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roomfaility_ref_accomodation`
--
ALTER TABLE `roomfaility_ref_accomodation`
  MODIFY `accomodationid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roomsizemesurement`
--
ALTER TABLE `roomsizemesurement`
  MODIFY `mesurementid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `room_amenities`
--
ALTER TABLE `room_amenities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `room_image`
--
ALTER TABLE `room_image`
  MODIFY `room_img_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `salary_setup_header`
--
ALTER TABLE `salary_setup_header`
  MODIFY `s_s_h_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `salary_sheet_generate`
--
ALTER TABLE `salary_sheet_generate`
  MODIFY `ssg_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `salary_type`
--
ALTER TABLE `salary_type`
  MODIFY `salary_type_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `schdule_purchse_info`
--
ALTER TABLE `schdule_purchse_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sec_menu_item`
--
ALTER TABLE `sec_menu_item`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=284;

--
-- AUTO_INCREMENT for table `sec_role_permission`
--
ALTER TABLE `sec_role_permission`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3101;

--
-- AUTO_INCREMENT for table `sec_role_tbl`
--
ALTER TABLE `sec_role_tbl`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `sec_user_access_tbl`
--
ALTER TABLE `sec_user_access_tbl`
  MODIFY `role_acc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sms_configuration`
--
ALTER TABLE `sms_configuration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sms_template`
--
ALTER TABLE `sms_template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `starclass`
--
ALTER TABLE `starclass`
  MODIFY `starcalssid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscribe_emaillist`
--
ALTER TABLE `subscribe_emaillist`
  MODIFY `emailid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_order`
--
ALTER TABLE `sub_order`
  MODIFY `sub_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `supid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `synchronizer_setting`
--
ALTER TABLE `synchronizer_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `table_details`
--
ALTER TABLE `table_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `table_setting`
--
ALTER TABLE `table_setting`
  MODIFY `settingid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tax_settings`
--
ALTER TABLE `tax_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_assign_kitchen`
--
ALTER TABLE `tbl_assign_kitchen`
  MODIFY `assignid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_bank`
--
ALTER TABLE `tbl_bank`
  MODIFY `bankid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_booking_type_info`
--
ALTER TABLE `tbl_booking_type_info`
  MODIFY `btypeinfoid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_cancelitem`
--
ALTER TABLE `tbl_cancelitem`
  MODIFY `cancelid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_card_terminal`
--
ALTER TABLE `tbl_card_terminal`
  MODIFY `card_terminalid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_cashcounter`
--
ALTER TABLE `tbl_cashcounter`
  MODIFY `ccid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_cashregister`
--
ALTER TABLE `tbl_cashregister`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=502;

--
-- AUTO_INCREMENT for table `tbl_checklist`
--
ALTER TABLE `tbl_checklist`
  MODIFY `checklist_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_complementary`
--
ALTER TABLE `tbl_complementary`
  MODIFY `complementary_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_country`
--
ALTER TABLE `tbl_country`
  MODIFY `countryid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

--
-- AUTO_INCREMENT for table `tbl_destroyedproduct`
--
ALTER TABLE `tbl_destroyedproduct`
  MODIFY `destroy_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_duty_roster`
--
ALTER TABLE `tbl_duty_roster`
  MODIFY `roster_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_email_permission`
--
ALTER TABLE `tbl_email_permission`
  MODIFY `permission_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_emproster_assign`
--
ALTER TABLE `tbl_emproster_assign`
  MODIFY `sftasnid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_empwork_shift`
--
ALTER TABLE `tbl_empwork_shift`
  MODIFY `shiftid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_financialyear`
--
ALTER TABLE `tbl_financialyear`
  MODIFY `fiyear_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_flight_details`
--
ALTER TABLE `tbl_flight_details`
  MODIFY `flyid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_floor`
--
ALTER TABLE `tbl_floor`
  MODIFY `floorid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_floorplan`
--
ALTER TABLE `tbl_floorplan`
  MODIFY `floorplanid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `tbl_groupitems`
--
ALTER TABLE `tbl_groupitems`
  MODIFY `groupid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_guestpayments`
--
ALTER TABLE `tbl_guestpayments`
  MODIFY `payid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=207;

--
-- AUTO_INCREMENT for table `tbl_hallroom_booking`
--
ALTER TABLE `tbl_hallroom_booking`
  MODIFY `hbid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_hallroom_info`
--
ALTER TABLE `tbl_hallroom_info`
  MODIFY `hid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_hallroom_postbill`
--
ALTER TABLE `tbl_hallroom_postbill`
  MODIFY `hpbid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_hallroom_seatplan`
--
ALTER TABLE `tbl_hallroom_seatplan`
  MODIFY `hsid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_hkitem`
--
ALTER TABLE `tbl_hkitem`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_housekeepingrecord`
--
ALTER TABLE `tbl_housekeepingrecord`
  MODIFY `hkeeper_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_itemaccepted`
--
ALTER TABLE `tbl_itemaccepted`
  MODIFY `acid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_kitchen`
--
ALTER TABLE `tbl_kitchen`
  MODIFY `kitchenid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_kitchen_order`
--
ALTER TABLE `tbl_kitchen_order`
  MODIFY `ktid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_laundry`
--
ALTER TABLE `tbl_laundry`
  MODIFY `laundry_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_laundry_payment`
--
ALTER TABLE `tbl_laundry_payment`
  MODIFY `landry_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_menutype`
--
ALTER TABLE `tbl_menutype`
  MODIFY `menutypeid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_module_purchasekey`
--
ALTER TABLE `tbl_module_purchasekey`
  MODIFY `mpid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_note`
--
ALTER TABLE `tbl_note`
  MODIFY `note_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_openingbalance`
--
ALTER TABLE `tbl_openingbalance`
  MODIFY `opbalance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_orderprepare`
--
ALTER TABLE `tbl_orderprepare`
  MODIFY `opid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_otherguest`
--
ALTER TABLE `tbl_otherguest`
  MODIFY `otherguest_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_posetting`
--
ALTER TABLE `tbl_posetting`
  MODIFY `possettingid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_postedbills`
--
ALTER TABLE `tbl_postedbills`
  MODIFY `bill_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=286;

--
-- AUTO_INCREMENT for table `tbl_quickordersetting`
--
ALTER TABLE `tbl_quickordersetting`
  MODIFY `quickordid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_razorpay`
--
ALTER TABLE `tbl_razorpay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_reuseableproduct`
--
ALTER TABLE `tbl_reuseableproduct`
  MODIFY `reuse_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_roomnofloorassign`
--
ALTER TABLE `tbl_roomnofloorassign`
  MODIFY `roomassignid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `tbl_room_offer`
--
ALTER TABLE `tbl_room_offer`
  MODIFY `offerid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_shippingaddress`
--
ALTER TABLE `tbl_shippingaddress`
  MODIFY `shipaddressid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `slid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `tbl_slider_type`
--
ALTER TABLE `tbl_slider_type`
  MODIFY `stype_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_soundsetting`
--
ALTER TABLE `tbl_soundsetting`
  MODIFY `soundid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_state`
--
ALTER TABLE `tbl_state`
  MODIFY `stateid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_stripe`
--
ALTER TABLE `tbl_stripe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_tablefloor`
--
ALTER TABLE `tbl_tablefloor`
  MODIFY `tbfloorid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_tax`
--
ALTER TABLE `tbl_tax`
  MODIFY `taxsettings` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_taxmgt`
--
ALTER TABLE `tbl_taxmgt`
  MODIFY `tax_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_thirdparty_customer`
--
ALTER TABLE `tbl_thirdparty_customer`
  MODIFY `companyId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_updateitems`
--
ALTER TABLE `tbl_updateitems`
  MODIFY `updateid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_vehicle_booking`
--
ALTER TABLE `tbl_vehicle_booking`
  MODIFY `vbkid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_vehicle_details`
--
ALTER TABLE `tbl_vehicle_details`
  MODIFY `vdsid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_version_checker`
--
ALTER TABLE `tbl_version_checker`
  MODIFY `vid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_wakeup_call`
--
ALTER TABLE `tbl_wakeup_call`
  MODIFY `wapupid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_widget`
--
ALTER TABLE `tbl_widget`
  MODIFY `widgetid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `timezone`
--
ALTER TABLE `timezone`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=425;

--
-- AUTO_INCREMENT for table `top_menu`
--
ALTER TABLE `top_menu`
  MODIFY `menuid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `unit_of_measurement`
--
ALTER TABLE `unit_of_measurement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `variant`
--
ALTER TABLE `variant`
  MODIFY `variantid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `weekly_holiday`
--
ALTER TABLE `weekly_holiday`
  MODIFY `wk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `whatsapp_settings`
--
ALTER TABLE `whatsapp_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `room_amenities`
--
ALTER TABLE `room_amenities`
  ADD CONSTRAINT `room_amenities_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `roomdetails` (`roomid`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
