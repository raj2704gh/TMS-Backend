-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2024 at 07:04 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tms`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_comment`
--

CREATE TABLE `add_comment` (
  `id` int(11) NOT NULL,
  `tender_Ref_No` varchar(255) NOT NULL,
  `comment_From` varchar(255) NOT NULL,
  `comment_By` varchar(255) NOT NULL,
  `commented_D` varchar(255) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `created_By` varchar(255) NOT NULL,
  `company_Id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `add_comment`
--

INSERT INTO `add_comment` (`id`, `tender_Ref_No`, `comment_From`, `comment_By`, `commented_D`, `comment`, `created_By`, `company_Id`) VALUES
(61, 'J1', 'Intrested Tender', 'Aashir', '6/18/2024', 'Today tender on 18/06/2024', '141', 'Aashire&company123'),
(62, 'A2', 'Rejected Reason', 'Aashir', '6/20/2024', 'rejected2', '141', 'Aashire&company123'),
(63, 'A2', 'Rejected Reason', 'Aashir', '6/20/2024', 'aashir rejected this tender', '141', 'Aashire&company123'),
(64, 'A2', 'Rejected Reason', 'Aashir', '6/20/2024', 'rejected', '141', 'Aashire&company123'),
(65, 'A2', 'Rejected Reason', 'Aashir', '6/20/2024', 'rej', '141', 'Aashire&company123'),
(66, '2023_nhai_179097_1', 'Rejected Reason', 'Aashir', '6/24/2024', 'Not int', '141', 'Aashire&company123'),
(67, '2023_nhai_179097_1', 'Rejected Reason', 'Aashir', '6/24/2024', 'Not intrested', '141', 'Aashire&company123'),
(68, '2023_nhai_179097_1', 'Rejected Reason', 'Aashir', '6/24/2024', 'Nt intrested', '141', 'Aashire&company123'),
(69, 'A2', 'Rejected Reason', 'Aashir', '6/24/2024', 'Ntint', '141', 'Aashire&company123'),
(70, 'A1', 'Rejected Reason', 'Aashir', '6/26/2024', '', '141', 'Aashire&company123'),
(71, 'A1', 'Rejected Reason', 'Aashir', '6/26/2024', '', '141', 'Aashire&company123'),
(72, 'A1', 'Rejected Reason', 'Aashir', '6/26/2024', '', '141', 'Aashire&company123'),
(73, 'A1', 'Rejected Reason', 'Aashir', '6/26/2024', '', '141', 'Aashire&company123'),
(74, 'A1', 'Rejected Reason', 'Aashir', '6/26/2024', 'uiyuiu', '141', 'Aashire&company123'),
(75, 'A1', 'Rejected Reason', 'Aashir', '6/26/2024', 'ewzsfgckj\n', '141', 'Aashire&company123'),
(76, 'A1', 'Rejected Reason', 'Aashir', '6/26/2024', 'fdgchj', '141', 'Aashire&company123'),
(77, 'A2', 'Rejected Reason', 'Aashir', '6/28/2024', 'sds', '141', 'Aashire&company123'),
(78, 'A2', 'Rejected Reason', 'Aashir', '6/29/2024', '', '141', 'Aashire&company123');

-- --------------------------------------------------------

--
-- Table structure for table `add_role`
--

CREATE TABLE `add_role` (
  `id` int(11) NOT NULL,
  `role` varchar(255) NOT NULL,
  `created_By` int(11) NOT NULL,
  `company_Id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `apo_po`
--

CREATE TABLE `apo_po` (
  `id` int(11) NOT NULL,
  `tender_Ref_No` varchar(255) NOT NULL,
  `select_Apo_Po` varchar(255) NOT NULL,
  `po_Apo_D` varchar(20) NOT NULL,
  `contract_Value` varchar(255) NOT NULL,
  `upload_Document` varchar(255) DEFAULT NULL,
  `comment` varchar(255) NOT NULL,
  `user_Name` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `date_Time` varchar(20) NOT NULL,
  `created_By` varchar(255) NOT NULL,
  `upload_Po_Apo` varchar(255) DEFAULT NULL,
  `company_Id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `apo_po`
--

INSERT INTO `apo_po` (`id`, `tender_Ref_No`, `select_Apo_Po`, `po_Apo_D`, `contract_Value`, `upload_Document`, `comment`, `user_Name`, `status`, `date_Time`, `created_By`, `upload_Po_Apo`, `company_Id`) VALUES
(58, 'J1', '', '0000-00-00', '', NULL, '', '', 'pending', '0000-00-00 00:00:00', '140', NULL, NULL),
(59, 'J1', 'APO', '2024-06-16', '98', 'public\\uploads\\Next-23.JPG', 'bn', 'harsh', 'pending', '2024-06-23 00:00:00', '140', NULL, 'jay&company123'),
(60, 'J1', 'PO', '2024-05-26', '60', 'public\\uploads\\Next-2.JPG', 'lk', 'lk', 'pending', '2024-06-14 00:00:00', '140', NULL, 'jay&company123'),
(61, 'J1', '', '0000-00-00', '', NULL, '', '', 'pending', '0000-00-00 00:00:00', '141', NULL, NULL),
(62, '2023_nhai_178838_1', '', '', '', NULL, '', '', 'pending', '', '141', NULL, NULL),
(63, '2023_nhai_178838_1', 'APO', '2024-06-18 00:00:00', '98989851123', 'public\\uploads\\Next-Screenshot (318).png', 'DSDAS', 'WAS', 'pending', '2024-07-03', '141', NULL, 'Aashire&company123'),
(64, '2023_nhai_178838_1', 'PO', '2024-06-17 18:30:00', '98989851123', 'public\\uploads\\Next-Screenshot (320).png', 'DSDAS', 'WAS', 'pending', '2024-07-03', '141', NULL, 'Aashire&company123'),
(65, 'A2', '', '', '', NULL, '', '', 'pending', '', '141', NULL, NULL),
(66, 'A2', 'APO', 'Invalid date', 'sdsd', 'public\\uploads\\Next-Screenshot (318).png,public\\uploads\\Next-Screenshot (319).png,public\\uploads\\Next-Screenshot (320) - Copy.png', 'das', 'sdsad', 'pending', '2024-07-30', '141', NULL, 'Aashire&company123'),
(67, 'A2', 'null', 'Invalid date', 'dsds', 'public\\uploads\\Next-Screenshot (317).png', 'dsdsa', 'sdsad', 'pending', '2024-07-24', '141', NULL, 'Aashire&company123'),
(68, 'A2', 'PO', 'Invalid date', 'sdsd', 'public\\uploads\\Next-Screenshot (316).png,public\\uploads\\Next-Screenshot (319).png', 'das', 'sdsad', 'pending', '2024-07-30', '141', NULL, 'Aashire&company123');

-- --------------------------------------------------------

--
-- Table structure for table `bid_envelop`
--

CREATE TABLE `bid_envelop` (
  `id` int(11) NOT NULL,
  `tender_Ref_NO` varchar(255) DEFAULT NULL,
  `envelope_Type` varchar(255) DEFAULT NULL,
  `annexure_Name` varchar(11) DEFAULT NULL,
  `upload_Annexure` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `select_Mapped_User_Id` int(255) DEFAULT NULL,
  `comment` varchar(255) NOT NULL,
  `annexure_Submittion_DT` varchar(20) DEFAULT NULL,
  `created_By` varchar(255) NOT NULL,
  `fill_Comment` varchar(255) NOT NULL,
  `fill_Date_Time_Upload` varchar(255) NOT NULL DEFAULT current_timestamp(),
  `fill_Upload_Annexure` varchar(255) DEFAULT NULL,
  `company_Id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bid_envelop`
--

INSERT INTO `bid_envelop` (`id`, `tender_Ref_NO`, `envelope_Type`, `annexure_Name`, `upload_Annexure`, `department`, `select_Mapped_User_Id`, `comment`, `annexure_Submittion_DT`, `created_By`, `fill_Comment`, `fill_Date_Time_Upload`, `fill_Upload_Annexure`, `company_Id`) VALUES
(194, 'A2', 'Technical', 'Testing 1', 'public\\uploads\\Next-Screenshot (324).png', '', 0, 'gulam', '2024-07-02', '141', 'completed', '2024-06-27 16:06:07', 'public\\uploads\\Next-Screenshot (321).png', 'Aashire&company123'),
(195, 'A2', 'Financial', '2232', 'public\\uploads\\Next-Screenshot (320).png', '', 0, 'zuber sir', '2024-07-03', '141', '', '2024-06-27 19:44:42', NULL, 'Aashire&company123'),
(196, 'A2', 'Financial', 'Aashir', 'public\\uploads\\Next-Screenshot (317).png', '', 0, 'gulam to zuber ', '2024-07-03', '141', '', '2024-06-27 19:52:16', NULL, 'Aashire&company123'),
(197, 'A2', 'Technical', '23232323213', 'public\\uploads\\Next-Screenshot (321).png', '', 145, 'adsadsd', '2024-07-03', '141', 'sdsds', '2024-06-27 19:58:27', 'public\\uploads\\Next-Screenshot (319).png', 'Aashire&company123'),
(198, 'A2', 'Financial', 'sjd', 'public\\uploads\\Next-Screenshot (319).png', '', 145, 'kjsdkjsd', '2024-06-10', '141', '', '2024-06-28 17:04:25', NULL, 'Aashire&company123'),
(199, 'A2', 'Technical', 'testing', 'public\\uploads\\Next-Screenshot (319).png', '', 145, 'assign to zuber sir', '2024-06-27', '141', 'completed by zuber', '2024-06-29 15:16:52', 'public\\uploads\\Next-Screenshot (319).png', 'Aashire&company123'),
(200, 'A2', 'Technical', 'assds', 'public\\uploads\\Next-Screenshot (316).png', '', 145, 'assads', '2024-07-03', '141', '', '2024-06-29 17:25:06', NULL, 'Aashire&company123'),
(201, 'A2', 'Technical', 'sdsd', '', '', 145, 'sdsa', '2024-07-03', '141', '', '2024-06-29 17:25:40', NULL, 'Aashire&company123'),
(202, 'A2', 'Financial', 'sdsad', 'public\\uploads\\Next-Screenshot (320) - Copy.png', '', 145, 'sdsad', '2024-06-19', '141', '', '2024-06-29 17:26:25', NULL, 'Aashire&company123'),
(203, 'A2', 'Financial', 'sdsad', 'public\\uploads\\Next-Screenshot (316).png', '', 144, 'sdsa', '2024-06-25', '141', '', '2024-06-29 17:26:37', NULL, 'Aashire&company123'),
(204, 'A2', 'Financial', 'sdsad', '', '', 145, 'sdsa', '2024-07-01', '141', '', '2024-06-29 17:26:56', NULL, 'Aashire&company123'),
(205, 'A2', 'Financial', 'sdws', 'public\\uploads\\Next-Screenshot (316).png', '', 144, 'dslk', '2024-07-15', '141', '', '2024-07-01 10:17:51', NULL, 'Aashire&company123'),
(206, 'A2', 'Financial', 'sdsd', 'public\\uploads\\Next-Screenshot (316).png', '', 145, 'sdsad', '2024-07-30', '141', '', '2024-07-01 10:21:45', NULL, 'Aashire&company123'),
(207, 'A2', 'Financial', 'sdsd', 'public\\uploads\\Next-Screenshot (316).png', '', 145, 'dsdsa', '2024-07-30', '141', '', '2024-07-01 10:22:02', NULL, 'Aashire&company123'),
(208, 'A2', 'Technical', 'dsdas', '', '', 145, 'sdasd', '2024-07-31', '141', '', '2024-07-01 10:22:17', NULL, 'Aashire&company123'),
(209, 'A2', 'Financial', 'sdsss', 'public\\uploads\\Next-Screenshot (316).png,public\\uploads\\Next-Screenshot (317).png,public\\uploads\\Next-Screenshot (318) - Copy.png,public\\uploads\\Next-Screenshot (318).png,public\\uploads\\Next-Screenshot (319).png,public\\uploads\\Next-Screenshot (320) - Copy', '', 144, 'sdlsadk', '2024-07-24', '141', '', '2024-07-01 10:31:15', NULL, 'Aashire&company123'),
(210, 'A2', 'Technical', 'fddv', 'public\\uploads\\Next-Screenshot 2024-05-02 103620.png', '', 144, 'gfgtgf', '2024-07-31', '141', '', '2024-07-03 14:36:58', NULL, 'Aashire&company123'),
(211, 'A2', 'Annexure', '', '', '', 0, 'dsd', '', '141', '', '2024-07-03 17:12:03', NULL, 'Aashire&company123'),
(212, 'A2', 'Technical', 'sdsadsa', 'public\\uploads\\Next-Screenshot (318).png', '', 0, 'sdsds', '2024-07-24', '141', '', '2024-07-03 17:19:43', NULL, 'Aashire&company123'),
(213, 'A2', 'null', '', '', '', 0, '', '', '141', '', '2024-07-03 17:20:21', NULL, 'Aashire&company123'),
(214, 'A2', 'Financial', 'sdsad', 'public\\uploads\\Next-Screenshot (319).png', '', 0, 'sdsads', '2024-07-31', '141', '', '2024-07-03 17:20:44', NULL, 'Aashire&company123'),
(215, 'A2', 'Financial', 'sdsdsa', 'public\\uploads\\Next-Screenshot (319).png', '', 0, 'sdasds', '2024-07-30', '141', '', '2024-07-03 17:21:01', NULL, 'Aashire&company123'),
(216, 'A2', 'Technical', 'sdsadsa', 'public\\uploads\\Next-Screenshot (319).png', '', 0, 'dsad', '2024-07-23', '141', '', '2024-07-03 17:21:17', NULL, 'Aashire&company123'),
(217, 'A2', 'Technical', 'sdsad', 'public\\uploads\\Next-Screenshot (319).png', '', 145, 'sdsad', '2024-07-30', '141', '', '2024-07-03 17:23:23', NULL, 'Aashire&company123'),
(218, 'A2', 'Financial', 'ddsds', 'public\\uploads\\Next-Screenshot (319).png', '', 144, 'sdsad', '2024-07-23', '141', '', '2024-07-03 17:23:55', NULL, 'Aashire&company123'),
(219, 'A2', 'Financial', 'sdsd', 'public\\uploads\\Next-Screenshot (319).png', '', 144, 'sdsad', '2024-07-30', '141', '', '2024-07-03 17:24:15', NULL, 'Aashire&company123'),
(220, 'A2', 'Technical', 'ssd', 'public\\uploads\\Next-Screenshot (319).png', '', 145, 'dasd', '2024-07-31', '141', '', '2024-07-03 17:32:26', NULL, 'Aashire&company123'),
(221, 'A2', 'null', '', '', '', 144, '', '', '141', '', '2024-07-03 17:32:33', NULL, 'Aashire&company123'),
(222, 'A2', 'Technical', 'sdsa', 'public\\uploads\\Next-Screenshot (319).png', '', 145, 'dssdsa', '2024-07-17', '141', '', '2024-07-03 17:32:51', NULL, 'Aashire&company123'),
(223, 'A2', 'null', '', '', '', 145, '', '', '141', '', '2024-07-03 17:35:43', NULL, 'Aashire&company123'),
(224, 'A2', 'Financial', 'd', 'public\\uploads\\Next-Screenshot (319).png', '', 144, 'sd', '2024-07-03', '141', '', '2024-07-03 17:58:51', NULL, 'Aashire&company123'),
(225, 'A2', 'Technical', 'sdsds', 'public\\uploads\\Next-Screenshot (319).png', '', 0, 'ds', '2024-07-31', '141', '', '2024-07-03 18:02:09', NULL, 'Aashire&company123'),
(226, 'A2', 'Technical', '', '', '', 78, 'jhkjh', '', '141', '', '2024-07-03 18:32:13', NULL, 'Aashire&company123'),
(227, 'A2', 'null', '', '', '', 78, '', '', '141', '', '2024-07-03 18:32:24', NULL, 'Aashire&company123'),
(228, 'A2', 'null', '', '', '', 78, '', '', '141', '', '2024-07-03 18:32:32', NULL, 'Aashire&company123'),
(229, 'A2', 'null', '', '', '', 78, '', '', '141', '', '2024-07-03 18:32:53', NULL, 'Aashire&company123'),
(230, 'A2', 'null', '', '', '', 78, '', '', '141', '', '2024-07-03 18:33:25', NULL, 'Aashire&company123'),
(231, 'A2', 'null', '', '', '', 78, '', '', '141', '', '2024-07-03 18:34:26', NULL, 'Aashire&company123'),
(232, 'A2', 'null', '', '', '', 78, '', '', '141', '', '2024-07-03 18:37:57', NULL, 'Aashire&company123'),
(233, 'A2', 'null', '', '', '', 78, '', '', '141', '', '2024-07-03 18:38:36', NULL, 'Aashire&company123'),
(234, 'A2', 'null', '', '', '', 78, '', '', '141', '', '2024-07-03 18:44:22', NULL, 'Aashire&company123'),
(235, 'A2', 'null', '', '', '', 78, '', '', '141', '', '2024-07-03 18:46:40', NULL, 'Aashire&company123'),
(236, 'A2', 'null', '', '', '', 78, '', '', '141', '', '2024-07-03 18:47:06', NULL, 'Aashire&company123');

-- --------------------------------------------------------

--
-- Table structure for table `blacklisted_tokens`
--

CREATE TABLE `blacklisted_tokens` (
  `token` varchar(255) NOT NULL,
  `invalidated_at` varchar(20) NOT NULL DEFAULT current_timestamp(),
  `company_Id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blacklisted_tokens`
--

INSERT INTO `blacklisted_tokens` (`token`, `invalidated_at`, `company_Id`) VALUES
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MCwiZW1haWwiOiJqYXlAZ21haWwuY29tIiwiY29tcGFueV9JZCI6ImpheSZjb21wYW55MTIzIiwiaWF0IjoxNzE4MzY2NDA0LCJleHAiOjE3MTg0NTI4MDR9.o_2BAgZWxaiDHCJgFRNMRyXyVQua1m-ZsYUL53NWP0c', '2024-06-14 18:27:54', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MCwiZW1haWwiOiJqYXlAZ21haWwuY29tIiwiY29tcGFueV9JZCI6ImpheSZjb21wYW55MTIzIiwiaWF0IjoxNzE4MzY4NTg1LCJleHAiOjE3MTg0NTQ5ODV9.L0sqho5U3SPDyGadrgIhDEhOnsq1MoYQL94A9io7b48', '2024-06-14 18:36:54', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MCwiZW1haWwiOiJqYXlAZ21haWwuY29tIiwiY29tcGFueV9JZCI6ImpheSZjb21wYW55MTIzIiwiaWF0IjoxNzE4MzY5OTMzLCJleHAiOjE3MTg0NTYzMzN9.YwbapjlXKjLfMPAcYrzpjYpVjiuKByscOZx-LcxfR68', '2024-06-14 18:36:07', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MCwiZW1haWwiOiJqYXlAZ21haWwuY29tIiwiY29tcGFueV9JZCI6ImpheSZjb21wYW55MTIzIiwiaWF0IjoxNzE4MzYzNTc3LCJleHAiOjE3MTg0NDk5Nzd9.V9HJ8Vwdonzl8LOluyyZuZARDRgwiLd2Ih7ccPBJr3Y', '2024-06-14 16:50:24', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MCwiZW1haWwiOiJqYXlAZ21haWwuY29tIiwiY29tcGFueV9JZCI6ImpheSZjb21wYW55MTIzIiwiaWF0IjoxNzE4MzYzNzAzLCJleHAiOjE3MTg0NTAxMDN9.UZ6asFiBp59Y4LuCbC1oMT-vCoWHcaWQLdeBVugDuqY', '2024-06-14 17:02:25', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MCwiZW1haWwiOiJqYXlAZ21haWwuY29tIiwiY29tcGFueV9JZCI6ImpheSZjb21wYW55MTIzIiwiaWF0IjoxNzE4OTc0NzEwLCJleHAiOjE3MTkwNjExMTB9.ANSsSUs7gcK8Ov1oRuEpa9ZQ-WLdmEv7lLv_Dtk7jnI', '2024-06-21 18:29:00', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MCwiZW1haWwiOiJqYXlAZ21haWwuY29tIiwiY29tcGFueV9JZCI6ImpheSZjb21wYW55MTIzIiwiaWF0IjoxNzE4OTc0ODE5LCJleHAiOjE3MTkwNjEyMTl9.eBh3vV3gYFftmztC1lh53Xs1QxUmZ6t16DiyjqNx8u8', '2024-06-21 18:41:50', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MCwiZW1haWwiOiJqYXlAZ21haWwuY29tIiwiY29tcGFueV9JZCI6ImpheSZjb21wYW55MTIzIiwiaWF0IjoxNzE5MzA3NDExLCJleHAiOjE3MTkzOTM4MTF9.oTVx43vJUmSRyhrGSi_HsLPdYSg-LweqRtNfHjnwoOA', '2024-06-25 15:15:27', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MCwiZW1haWwiOiJqYXlAZ21haWwuY29tIiwiY29tcGFueV9JZCI6ImpheSZjb21wYW55MTIzIiwiaWF0IjoxNzE5MzA5MDA1LCJleHAiOjE3MTkzOTU0MDV9.JfSmxmpLyudvuT_pZTQB0pAZUwp97UIQFD1x-NxsUFg', '2024-06-25 15:21:32', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MCwiZW1haWwiOiJqYXlAZ21haWwuY29tIiwiY29tcGFueV9JZCI6ImpheSZjb21wYW55MTIzIiwiY29tcGFueV9uYW1lIjoiamF5JmNvbXBhbnkiLCJpYXQiOjE3MTk4MjA0MjksImV4cCI6MTcxOTkwNjgyOX0.y7bY4JMcnT9JJFszCm1c7ZKE3QUsVU4HWc3', '2024-07-01 14:20:28', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MiwiZW1haWwiOiJyYWpAZ21haWwuY29tIiwiY29tcGFueV9JZCI6IlJhaiZjb21wYW55MTIzIiwiaWF0IjoxNzE4MzY0MDExLCJleHAiOjE3MTg0NTA0MTF9.QKOe3gj4iV1dEmwcrAoVV_EIziK9zKnKc0e5pZnK6Ho', '2024-06-14 17:06:33', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MiwiZW1haWwiOiJyYWpAZ21haWwuY29tIiwiY29tcGFueV9JZCI6IlJhaiZjb21wYW55MTIzIiwiaWF0IjoxNzE4MzY0MjE0LCJleHAiOjE3MTg0NTA2MTR9.koT3PnE29fLG6C9NuObw1oN6geII4CvaX4lGsNTVQ8s', '2024-06-14 16:53:51', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MiwiZW1haWwiOiJyYWpAZ21haWwuY29tIiwiY29tcGFueV9JZCI6IlJhaiZjb21wYW55MTIzIiwiaWF0IjoxNzE4MzY1MDA5LCJleHAiOjE3MTg0NTE0MDl9.ziTbfnWkXaH_XpPrYW6WeQ128ogtzDbWCVo0f_ztZbE', '2024-06-14 18:01:11', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MiwiZW1haWwiOiJyYWpAZ21haWwuY29tIiwiY29tcGFueV9JZCI6IlJhaiZjb21wYW55MTIzIiwiaWF0IjoxNzE4MzY4NTI4LCJleHAiOjE3MTg0NTQ5Mjh9.kJZHeeDiBAUwHs1oN6Or5POZ1cT-vKUGI0NpsAWPQo0', '2024-06-14 18:06:02', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MiwiZW1haWwiOiJyYWpAZ21haWwuY29tIiwiY29tcGFueV9JZCI6IlJhaiZjb21wYW55MTIzIiwiaWF0IjoxNzE4NzA5MjY3LCJleHAiOjE3MTg3OTU2Njd9.l5wmAPYC25y83BTrkxk49mVRuv2LFbz2p_uU6kx0cfQ', '2024-06-18 16:44:38', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MiwiZW1haWwiOiJyYWpAZ21haWwuY29tIiwiY29tcGFueV9JZCI6IlJhaiZjb21wYW55MTIzIiwiaWF0IjoxNzE4NzA5MTMwLCJleHAiOjE3MTg3OTU1MzB9.RcsMIdOlPzyd2l0woWlC-uhMqFSTQHvEeSWZhTDF1Io', '2024-06-18 16:42:28', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MiwiZW1haWwiOiJyYWpAZ21haWwuY29tIiwiY29tcGFueV9JZCI6IlJhaiZjb21wYW55MTIzIiwiaWF0IjoxNzE4OTc0NzUyLCJleHAiOjE3MTkwNjExNTJ9.yjWb9G7Yy_yvRJzijpKxL4YUyfG2P3p0DrPKwK4DYqc', '2024-06-21 18:30:06', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MiwiZW1haWwiOiJyYWpAZ21haWwuY29tIiwiY29tcGFueV9JZCI6IlJhaiZjb21wYW55MTIzIiwiaWF0IjoxNzE4OTcxMzk3LCJleHAiOjE3MTkwNTc3OTd9.wYkC00dg150WWZ-8RGl71hEQM9PSDOLD9LjkWPNfrAs', '2024-06-21 18:27:58', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MiwiZW1haWwiOiJyYWpAZ21haWwuY29tIiwiY29tcGFueV9JZCI6IlJhaiZjb21wYW55MTIzIiwiaWF0IjoxNzE5MjkxODAxLCJleHAiOjE3MTkzNzgyMDF9.B6xfosrh0jARoT3FQpkels3aSJ2-6pPL26Im9UwN8S0', '2024-06-25 13:08:22', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MiwiZW1haWwiOiJyYWpAZ21haWwuY29tIiwiY29tcGFueV9JZCI6IlJhaiZjb21wYW55MTIzIiwiY29tcGFueV9uYW1lIjoiUmFqJmNvbXBhbnkiLCJpYXQiOjE3MTk4MTkzMDksImV4cCI6MTcxOTkwNTcwOX0.bWUwdo8RWnzpEkQsmaG3_qxWMcNDYT65UkJ', '2024-07-01 13:23:23', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MSwiZW1haWwiOiJBYXNoaXJAZ21haWwuY29tIiwiY29tcGFueV9JZCI6IkFhc2hpcmUmY29tcGFueTEyMyIsImlhdCI6MTcxODM2NDE4MywiZXhwIjoxNzE4NDUwNTgzfQ.YE_xcpZrZHKtzChKKvEdPndpEyIf8kCNqI0yLytyfA8', '2024-06-14 16:53:16', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MSwiZW1haWwiOiJhYXNoaXJAZ21haWwuY29tIiwiY29tcGFueV9JZCI6IkFhc2hpcmUmY29tcGFueTEyMyIsImlhdCI6MTcxODc3MTM3MiwiZXhwIjoxNzE4ODU3NzcyfQ.8YcN1O-bv9SJ4LkYF-OwSrkhNvVrCSbNAYbg2GtkfFs', '2024-06-19 10:49:06', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MSwiZW1haWwiOiJhYXNoaXJAZ21haWwuY29tIiwiY29tcGFueV9JZCI6IkFhc2hpcmUmY29tcGFueTEyMyIsImlhdCI6MTcxODc3NjAyNCwiZXhwIjoxNzE4ODYyNDI0fQ.uTuykeLYqYQeNkt0x-hR1EO5Ea0X5kinFAEFbPBUY9Q', '2024-06-19 12:53:58', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MSwiZW1haWwiOiJhYXNoaXJAZ21haWwuY29tIiwiY29tcGFueV9JZCI6IkFhc2hpcmUmY29tcGFueTEyMyIsImlhdCI6MTcxODc4MjQwNiwiZXhwIjoxNzE4ODY4ODA2fQ.ld53sHCEh2UTTDAOh4qmmUnOOTb0iupWXlMemaMTNJ4', '2024-06-19 14:52:54', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MSwiZW1haWwiOiJhYXNoaXJAZ21haWwuY29tIiwiY29tcGFueV9JZCI6IkFhc2hpcmUmY29tcGFueTEyMyIsImlhdCI6MTcxODc4MTkyNywiZXhwIjoxNzE4ODY4MzI3fQ.B48F-wL6Vw1TYeTK96Bgx-T-uuK0fQ6POvkopGg2FI4', '2024-06-19 12:55:31', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MSwiZW1haWwiOiJhYXNoaXJAZ21haWwuY29tIiwiY29tcGFueV9JZCI6IkFhc2hpcmUmY29tcGFueTEyMyIsImlhdCI6MTcxODc5MTQ1NiwiZXhwIjoxNzE4ODc3ODU2fQ.FYrrRh_P-kGTezc1uMGVs45ZsOfnWM_a0wX2nQxo6SE', '2024-06-19 17:53:18', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MSwiZW1haWwiOiJhYXNoaXJAZ21haWwuY29tIiwiY29tcGFueV9JZCI6IkFhc2hpcmUmY29tcGFueTEyMyIsImlhdCI6MTcxODc5OTgxMiwiZXhwIjoxNzE4ODg2MjEyfQ.6WZBpfBPboMIyjthMjOXPjq5jFeUSqDn-eeBMOTqpq8', '2024-06-19 17:56:27', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MSwiZW1haWwiOiJhYXNoaXJAZ21haWwuY29tIiwiY29tcGFueV9JZCI6IkFhc2hpcmUmY29tcGFueTEyMyIsImlhdCI6MTcxODcwODI5NCwiZXhwIjoxNzE4Nzk0Njk0fQ.hz_i2HJOQUbiHWxs6dvWP6JLY9a4Tqs9odvvbKD82C8', '2024-06-18 16:42:49', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MSwiZW1haWwiOiJhYXNoaXJAZ21haWwuY29tIiwiY29tcGFueV9JZCI6IkFhc2hpcmUmY29tcGFueTEyMyIsImlhdCI6MTcxODcwOTE4MiwiZXhwIjoxNzE4Nzk1NTgyfQ.1Bm24r0ZCVcCdd7OX8zNtDkdc2KxT-GwvKl9fFkaPlQ', '2024-06-18 16:43:03', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MSwiZW1haWwiOiJhYXNoaXJAZ21haWwuY29tIiwiY29tcGFueV9JZCI6IkFhc2hpcmUmY29tcGFueTEyMyIsImlhdCI6MTcxODcwOTIxNCwiZXhwIjoxNzE4Nzk1NjE0fQ.c8wdkj5totZZMuzq4qXd9-p9CeMFfePGWjX0OX5TxDU', '2024-06-18 19:09:48', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MSwiZW1haWwiOiJhYXNoaXJAZ21haWwuY29tIiwiY29tcGFueV9JZCI6IkFhc2hpcmUmY29tcGFueTEyMyIsImlhdCI6MTcxODg1OTIzOSwiZXhwIjoxNzE4OTQ1NjM5fQ.gWuEsSV6hDr8jnAsRViq6TvKaU47GIMXjfMVl3hlBPQ', '2024-06-20 16:34:46', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MSwiZW1haWwiOiJhYXNoaXJAZ21haWwuY29tIiwiY29tcGFueV9JZCI6IkFhc2hpcmUmY29tcGFueTEyMyIsImlhdCI6MTcxODg4MjA5NywiZXhwIjoxNzE4OTY4NDk3fQ.3tntttRqwvB6DNRzd4VV30MfGH8-rhXCZLNhmezOEyE', '2024-06-20 17:03:23', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MSwiZW1haWwiOiJhYXNoaXJAZ21haWwuY29tIiwiY29tcGFueV9JZCI6IkFhc2hpcmUmY29tcGFueTEyMyIsImlhdCI6MTcxODg4MTgwMiwiZXhwIjoxNzE4OTY4MjAyfQ.3BNG-A58Ob9PjeIOVvAJZoIf2FWF5xzxE85hnvS1qoQ', '2024-06-20 16:42:51', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MSwiZW1haWwiOiJhYXNoaXJAZ21haWwuY29tIiwiY29tcGFueV9JZCI6IkFhc2hpcmUmY29tcGFueTEyMyIsImlhdCI6MTcxODg4MTUxNSwiZXhwIjoxNzE4OTY3OTE1fQ.cbE6tljTmlx9Frd4WeYAXIMe7Gn8fgMlVs4DJBJcNXw', '2024-06-20 16:36:34', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MSwiZW1haWwiOiJhYXNoaXJAZ21haWwuY29tIiwiY29tcGFueV9JZCI6IkFhc2hpcmUmY29tcGFueTEyMyIsImlhdCI6MTcxODgwMDA2OCwiZXhwIjoxNzE4ODg2NDY4fQ.YnPApaGv2OIsl_4UsejvEwM7dNV41QB_MidUl7wek70', '2024-06-19 18:35:05', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MSwiZW1haWwiOiJhYXNoaXJAZ21haWwuY29tIiwiY29tcGFueV9JZCI6IkFhc2hpcmUmY29tcGFueTEyMyIsImlhdCI6MTcxODgwMDAwNSwiZXhwIjoxNzE4ODg2NDA1fQ.oox44nHtkR8B59Tn9bxCNho6ztjNYNOeevVJ4F2dTP4', '2024-06-19 17:57:38', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MSwiZW1haWwiOiJhYXNoaXJAZ21haWwuY29tIiwiY29tcGFueV9JZCI6IkFhc2hpcmUmY29tcGFueTEyMyIsImlhdCI6MTcxODgwMjMxNCwiZXhwIjoxNzE4ODg4NzE0fQ.Yma15ueOYkVacJrITv9EPw5Kt4x9SUS7GBAZH6yV8jQ', '2024-06-19 18:40:22', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MSwiZW1haWwiOiJhYXNoaXJAZ21haWwuY29tIiwiY29tcGFueV9JZCI6IkFhc2hpcmUmY29tcGFueTEyMyIsImlhdCI6MTcxODgwMjYzMCwiZXhwIjoxNzE4ODg5MDMwfQ.Ld4OtK8X2NHyJRhOIQ0dM6B97CmiYg-TTb9dKXQUI64', '2024-06-19 19:02:32', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MSwiZW1haWwiOiJhYXNoaXJAZ21haWwuY29tIiwiY29tcGFueV9JZCI6IkFhc2hpcmUmY29tcGFueTEyMyIsImlhdCI6MTcxODgwMzk1OSwiZXhwIjoxNzE4ODkwMzU5fQ.xYapPslPEbImfa36tki6jLYqivhBpCk6ZllcESJXnq4', '2024-06-19 19:04:03', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MSwiZW1haWwiOiJhYXNoaXJAZ21haWwuY29tIiwiY29tcGFueV9JZCI6IkFhc2hpcmUmY29tcGFueTEyMyIsImlhdCI6MTcxODgwNDA1MywiZXhwIjoxNzE4ODkwNDUzfQ.Gw7D36IKySs4j-ZzuNeJS7b0gaKsTiIT6oBkkmqaPRM', '2024-06-19 19:05:19', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MSwiZW1haWwiOiJhYXNoaXJAZ21haWwuY29tIiwiY29tcGFueV9JZCI6IkFhc2hpcmUmY29tcGFueTEyMyIsImlhdCI6MTcxODM2NDcyOCwiZXhwIjoxNzE4NDUxMTI4fQ.PJ00hQpcKnSCmUXCqQj8fNuMDlKztTFLXhJFdDBVJRA', '2024-06-14 17:29:32', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MSwiZW1haWwiOiJhYXNoaXJAZ21haWwuY29tIiwiY29tcGFueV9JZCI6IkFhc2hpcmUmY29tcGFueTEyMyIsImlhdCI6MTcxODM2NDE0NiwiZXhwIjoxNzE4NDUwNTQ2fQ.hRsXRx_OHeVscsrbrSGNI6x1SvBD7mxHLFYh9y83b9w', '2024-06-14 16:52:30', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MSwiZW1haWwiOiJhYXNoaXJAZ21haWwuY29tIiwiY29tcGFueV9JZCI6IkFhc2hpcmUmY29tcGFueTEyMyIsImlhdCI6MTcxODM2NDI4NCwiZXhwIjoxNzE4NDUwNjg0fQ.X_BXouloI0X32_vPFWUfOxsQOOUBabto7WlEzqVI_bY', '2024-06-14 16:54:51', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MSwiZW1haWwiOiJhYXNoaXJAZ21haWwuY29tIiwiY29tcGFueV9JZCI6IkFhc2hpcmUmY29tcGFueTEyMyIsImlhdCI6MTcxODM2NDIwMywiZXhwIjoxNzE4NDUwNjAzfQ.GafrmOEaIJix1m7yJd8hhN7PxM5tBxawejq3VMgcz6Y', '2024-06-14 16:53:47', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MSwiZW1haWwiOiJhYXNoaXJAZ21haWwuY29tIiwiY29tcGFueV9JZCI6IkFhc2hpcmUmY29tcGFueTEyMyIsImlhdCI6MTcxODQzMjExNiwiZXhwIjoxNzE4NTE4NTE2fQ.YgYOKZRsOvKwE7GS7diZ2FpcWB1ckxHxdSU2a78g_VE', '2024-06-15 11:45:25', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MSwiZW1haWwiOiJhYXNoaXJAZ21haWwuY29tIiwiY29tcGFueV9JZCI6IkFhc2hpcmUmY29tcGFueTEyMyIsImlhdCI6MTcxODQzMjQzNCwiZXhwIjoxNzE4NTE4ODM0fQ.ikPXx2GjEY_BLCb0ut2hIXXExW0IERpZ3rgdzx38inI', '2024-06-15 12:26:55', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MSwiZW1haWwiOiJhYXNoaXJAZ21haWwuY29tIiwiY29tcGFueV9JZCI6IkFhc2hpcmUmY29tcGFueTEyMyIsImlhdCI6MTcxODQzNDYyMywiZXhwIjoxNzE4NTIxMDIzfQ._nhspZdIEKPjXIXlj2eThjeXD6xecGY_j9VO89CYrCc', '2024-06-15 12:34:55', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MSwiZW1haWwiOiJhYXNoaXJAZ21haWwuY29tIiwiY29tcGFueV9JZCI6IkFhc2hpcmUmY29tcGFueTEyMyIsImlhdCI6MTcxODQzNjAzMSwiZXhwIjoxNzE4NTIyNDMxfQ.KxxuXLle3zEdF-pAUNyrftCFdsDaGQnSyk5ljovwmIs', '2024-06-15 13:10:20', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MSwiZW1haWwiOiJhYXNoaXJAZ21haWwuY29tIiwiY29tcGFueV9JZCI6IkFhc2hpcmUmY29tcGFueTEyMyIsImlhdCI6MTcxODQzNTE0NSwiZXhwIjoxNzE4NTIxNTQ1fQ.CKqTtFP32vwO5KO7JUuzanb6dTm4wWND3BdM7GN9nog', '2024-06-15 12:39:50', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MSwiZW1haWwiOiJhYXNoaXJAZ21haWwuY29tIiwiY29tcGFueV9JZCI6IkFhc2hpcmUmY29tcGFueTEyMyIsImlhdCI6MTcxODQzNTk4NCwiZXhwIjoxNzE4NTIyMzg0fQ.QVJMyrjJal8IT7LjVCgWoi9IRgf5cqOOl5Ui3deCoP8', '2024-06-15 12:50:21', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MSwiZW1haWwiOiJhYXNoaXJAZ21haWwuY29tIiwiY29tcGFueV9JZCI6IkFhc2hpcmUmY29tcGFueTEyMyIsImlhdCI6MTcxODQzNTU0MywiZXhwIjoxNzE4NTIxOTQzfQ.qlYFS1GhJ1axk2Z6z0_RT-lmqhV1i2d4hS9-oNuonNw', '2024-06-15 12:44:30', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MSwiZW1haWwiOiJhYXNoaXJAZ21haWwuY29tIiwiY29tcGFueV9JZCI6IkFhc2hpcmUmY29tcGFueTEyMyIsImlhdCI6MTcxODQzNTY4OSwiZXhwIjoxNzE4NTIyMDg5fQ.xgNIf6xGK7aJHyxxRxl7wMxjFeuW6hA8PnPq7w5boHY', '2024-06-15 12:49:33', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MSwiZW1haWwiOiJhYXNoaXJAZ21haWwuY29tIiwiY29tcGFueV9JZCI6IkFhc2hpcmUmY29tcGFueTEyMyIsImlhdCI6MTcxODQzNzg2MSwiZXhwIjoxNzE4NTI0MjYxfQ.7RJO_cgDVYNm-ljIf0GHt2fKpe8rcv_H6YERjYp6VM4', '2024-06-15 13:30:02', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MSwiZW1haWwiOiJhYXNoaXJAZ21haWwuY29tIiwiY29tcGFueV9JZCI6IkFhc2hpcmUmY29tcGFueTEyMyIsImlhdCI6MTcxODQzNzgwNywiZXhwIjoxNzE4NTI0MjA3fQ.nfwQbJfIu38iy05U4NRZ3YDPclp6MO3cnstyhfeUi2Q', '2024-06-15 13:20:46', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MSwiZW1haWwiOiJhYXNoaXJAZ21haWwuY29tIiwiY29tcGFueV9JZCI6IkFhc2hpcmUmY29tcGFueTEyMyIsImlhdCI6MTcxODQzNzI0MSwiZXhwIjoxNzE4NTIzNjQxfQ.xDgBxV3T2GCqTt2mKu_LhgBqUfVs8YJOJjT6jvhaf1A', '2024-06-15 13:15:31', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MSwiZW1haWwiOiJhYXNoaXJAZ21haWwuY29tIiwiY29tcGFueV9JZCI6IkFhc2hpcmUmY29tcGFueTEyMyIsImlhdCI6MTcxODQzNzU1OSwiZXhwIjoxNzE4NTIzOTU5fQ.XRV8eIer8xqdcqE0a7OPPRST3UpAtI1N401IBmuCXIg', '2024-06-15 13:19:44', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MSwiZW1haWwiOiJhYXNoaXJAZ21haWwuY29tIiwiY29tcGFueV9JZCI6IkFhc2hpcmUmY29tcGFueTEyMyIsImlhdCI6MTcxODQzODQyNywiZXhwIjoxNzE4NTI0ODI3fQ.C22u79QlmQBlaZojkJPzC_bDUp2BfV4QQg01OgirPx8', '2024-06-15 16:49:35', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MSwiZW1haWwiOiJhYXNoaXJAZ21haWwuY29tIiwiY29tcGFueV9JZCI6IkFhc2hpcmUmY29tcGFueTEyMyIsImlhdCI6MTcxOTI5MjEyMiwiZXhwIjoxNzE5Mzc4NTIyfQ.ew6dhwbNacTXCmNkvUSBQnVDpEddQ_sbCP-4SJJCdAI', '2024-06-25 10:38:49', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MSwiZW1haWwiOiJhYXNoaXJAZ21haWwuY29tIiwiY29tcGFueV9JZCI6IkFhc2hpcmUmY29tcGFueTEyMyIsImlhdCI6MTcxOTI5MTczOSwiZXhwIjoxNzE5Mzc4MTM5fQ.d7qkDWi1OJQSDjuvQnV85WzZXCw3NFs0bd_2ejqHrGU', '2024-06-25 10:38:34', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MSwiZW1haWwiOiJhYXNoaXJAZ21haWwuY29tIiwiY29tcGFueV9JZCI6IkFhc2hpcmUmY29tcGFueTEyMyIsImlhdCI6MTcxOTI5Njg4MywiZXhwIjoxNzE5MzgzMjgzfQ.dkikua3ERgY04b6JQfh0YXY5PcCLw40o52TpSkTcGOE', '2024-06-25 13:08:09', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MSwiZW1haWwiOiJhYXNoaXJAZ21haWwuY29tIiwiY29tcGFueV9JZCI6IkFhc2hpcmUmY29tcGFueTEyMyIsImlhdCI6MTcxOTIwMzM4OSwiZXhwIjoxNzE5Mjg5Nzg5fQ.cLRulrvjavNuZiRZmy0qwN3zd0zWcMi5az_lbyVC5CM', '2024-06-24 14:01:31', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MSwiZW1haWwiOiJhYXNoaXJAZ21haWwuY29tIiwiY29tcGFueV9JZCI6IkFhc2hpcmUmY29tcGFueTEyMyIsImlhdCI6MTcxOTIyMjc0OCwiZXhwIjoxNzE5MzA5MTQ4fQ.mYHaIgsV0yh-xMUfgCSwXn-ZlGng2TKwBYi-HzlBQqc', '2024-06-24 16:30:53', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MSwiZW1haWwiOiJhYXNoaXJAZ21haWwuY29tIiwiY29tcGFueV9JZCI6IkFhc2hpcmUmY29tcGFueTEyMyIsImlhdCI6MTcxOTIyMjMyNSwiZXhwIjoxNzE5MzA4NzI1fQ.xzinjg2r1fNG6jpW4ESqKVIld_UL_EHSGnnbs2KUDco', '2024-06-24 15:16:58', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MSwiZW1haWwiOiJhYXNoaXJAZ21haWwuY29tIiwiY29tcGFueV9JZCI6IkFhc2hpcmUmY29tcGFueTEyMyIsImlhdCI6MTcxOTIyMjQyNCwiZXhwIjoxNzE5MzA4ODI0fQ.ltiHD_Ls9PAIjHxwHhqpDEpC9bqyyDZ3eKUepDNoCPE', '2024-06-24 15:21:37', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MSwiZW1haWwiOiJhYXNoaXJAZ21haWwuY29tIiwiY29tcGFueV9JZCI6IkFhc2hpcmUmY29tcGFueTEyMyIsImlhdCI6MTcxOTIyNjg2MSwiZXhwIjoxNzE5MzEzMjYxfQ.zCRlJq92Oi-gFIYejcdWFAJQ7WeywiuK-ie8M-anQfA', '2024-06-24 16:42:01', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MSwiZW1haWwiOiJhYXNoaXJAZ21haWwuY29tIiwiY29tcGFueV9JZCI6IkFhc2hpcmUmY29tcGFueTEyMyIsImlhdCI6MTcxOTIyNzc0NiwiZXhwIjoxNzE5MzE0MTQ2fQ.18jjIW71EREmbPzFkBA10KMt5ev4ijnq5sOVO1t12JI', '2024-06-24 16:45:54', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MSwiZW1haWwiOiJhYXNoaXJAZ21haWwuY29tIiwiY29tcGFueV9JZCI6IkFhc2hpcmUmY29tcGFueTEyMyIsImlhdCI6MTcxOTIyNzU0OSwiZXhwIjoxNzE5MzEzOTQ5fQ.FeQeHi3G-xl4-wf0qKffG5NvlOTpinjosRAd1O0tbeU', '2024-06-24 16:42:39', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MSwiZW1haWwiOiJhYXNoaXJAZ21haWwuY29tIiwiY29tcGFueV9JZCI6IkFhc2hpcmUmY29tcGFueTEyMyIsImlhdCI6MTcxOTIyNzU2OCwiZXhwIjoxNzE5MzEzOTY4fQ.ccxOLCsjy1fMqBcfRTpNgd-XUkZxTcN44HsIyp_3Kp8', '2024-06-24 16:42:51', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MSwiZW1haWwiOiJhYXNoaXJAZ21haWwuY29tIiwiY29tcGFueV9JZCI6IkFhc2hpcmUmY29tcGFueTEyMyIsImlhdCI6MTcxOTIyNzY2MSwiZXhwIjoxNzE5MzE0MDYxfQ.d_HQB1A90Xhqi52CT3Ndkj_JOV8k_MLgWSyyOLbuiDM', '2024-06-24 16:44:29', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MSwiZW1haWwiOiJhYXNoaXJAZ21haWwuY29tIiwiY29tcGFueV9JZCI6IkFhc2hpcmUmY29tcGFueTEyMyIsImlhdCI6MTcxOTIyNzYwNSwiZXhwIjoxNzE5MzE0MDA1fQ.zn-O6Y8Q3UnIGzXxBV4QkCo8nxuYEQgTRRj9d9ohOq8', '2024-06-24 16:43:28', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MSwiZW1haWwiOiJhYXNoaXJAZ21haWwuY29tIiwiY29tcGFueV9JZCI6IkFhc2hpcmUmY29tcGFueTEyMyIsImlhdCI6MTcxOTIyNzYzNywiZXhwIjoxNzE5MzE0MDM3fQ.XIxhcoMc2Kp6u2NlheJwm3--3gmgntcoBouxGie7iSk', '2024-06-24 16:44:00', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MSwiZW1haWwiOiJhYXNoaXJAZ21haWwuY29tIiwiY29tcGFueV9JZCI6IkFhc2hpcmUmY29tcGFueTEyMyIsImlhdCI6MTcxOTM5MjI2OCwiZXhwIjoxNzE5NDc4NjY4fQ.tSCoqopgHI_awu0GDCW0xcFKGZ2Hjo-r4nwWwin3rQE', '2024-06-26 14:41:40', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MSwiZW1haWwiOiJhYXNoaXJAZ21haWwuY29tIiwiY29tcGFueV9JZCI6IkFhc2hpcmUmY29tcGFueTEyMyIsImlhdCI6MTcxOTMwMjAxMCwiZXhwIjoxNzE5Mzg4NDEwfQ.UIPZzCugAmYsciBbD26QTxnvuvBMHtUuxkXjPT5-aQU', '2024-06-25 13:24:28', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MSwiZW1haWwiOiJhYXNoaXJAZ21haWwuY29tIiwiY29tcGFueV9JZCI6IkFhc2hpcmUmY29tcGFueTEyMyIsImlhdCI6MTcxOTMwMjQ1NywiZXhwIjoxNzE5Mzg4ODU3fQ.p9cipT2kbTno6mVmquug0c-zX3fSY1RZCaCAUuxxz8Y', '2024-06-25 17:30:54', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MSwiZW1haWwiOiJhYXNoaXJAZ21haWwuY29tIiwiY29tcGFueV9JZCI6IkFhc2hpcmUmY29tcGFueTEyMyIsImlhdCI6MTcxOTMxNjg2NSwiZXhwIjoxNzE5NDAzMjY1fQ.ZVjrYSF-Z5uxOvJNrLAArqg8PsEeCnyrBHSH2EhAo8U', '2024-06-25 18:23:43', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MSwiZW1haWwiOiJhYXNoaXJAZ21haWwuY29tIiwiY29tcGFueV9JZCI6IkFhc2hpcmUmY29tcGFueTEyMyIsImlhdCI6MTcxOTMyMDAzMywiZXhwIjoxNzE5NDA2NDMzfQ.l1QE5yKT84PzVt0zOQZHl-I1z3qyn2l2UTPDrZuEIAU', '2024-06-25 18:41:23', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MSwiZW1haWwiOiJhYXNoaXJAZ21haWwuY29tIiwiY29tcGFueV9JZCI6IkFhc2hpcmUmY29tcGFueTEyMyIsImlhdCI6MTcxOTQ2NDM4NCwiZXhwIjoxNzE5NTUwNzg0fQ.I-ZZIXoOp7QfEohSdU4-1MiYCX4nofbCj6MJeXCmSW8', '2024-06-27 15:48:41', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MSwiZW1haWwiOiJhYXNoaXJAZ21haWwuY29tIiwiY29tcGFueV9JZCI6IkFhc2hpcmUmY29tcGFueTEyMyIsImlhdCI6MTcxOTQ4NDUxMiwiZXhwIjoxNzE5NTcwOTEyfQ.LARvwsNl24Hwo2QgvaVpYsOmAYYnSDeWPTFoipl7cUo', '2024-06-27 16:06:18', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MSwiZW1haWwiOiJhYXNoaXJAZ21haWwuY29tIiwiY29tcGFueV9JZCI6IkFhc2hpcmUmY29tcGFueTEyMyIsImlhdCI6MTcxOTQ5NTU3MSwiZXhwIjoxNzE5NTgxOTcxfQ.-oyRYu2aS5S6guuB8LaPq2KuZSof-9osMA8wZFzzzG4', '2024-06-27 19:44:57', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MSwiZW1haWwiOiJhYXNoaXJAZ21haWwuY29tIiwiY29tcGFueV9JZCI6IkFhc2hpcmUmY29tcGFueTEyMyIsImlhdCI6MTcxOTQ5ODA1MiwiZXhwIjoxNzE5NTg0NDUyfQ.W9uJtgUAILXUQz-MFcCsJ8U1LiMJGH3KcjE0wlr-UWQ', '2024-06-27 19:52:41', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MSwiZW1haWwiOiJhYXNoaXJAZ21haWwuY29tIiwiY29tcGFueV9JZCI6IkFhc2hpcmUmY29tcGFueTEyMyIsImlhdCI6MTcxOTQ5ODQ3MCwiZXhwIjoxNzE5NTg0ODcwfQ.7bvNuENtD-JnHwJD1G9S91bv5Ss0IOQfcJT_piWTI9A', '2024-06-27 19:58:49', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MSwiZW1haWwiOiJhYXNoaXJAZ21haWwuY29tIiwiY29tcGFueV9JZCI6IkFhc2hpcmUmY29tcGFueTEyMyIsImlhdCI6MTcxOTU0OTM3OCwiZXhwIjoxNzE5NjM1Nzc4fQ.cQfyk0ujOlY6069QC24yGE_pOdmM24QwX2PCOt3gxKI', '2024-06-28 10:44:41', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MSwiZW1haWwiOiJhYXNoaXJAZ21haWwuY29tIiwiY29tcGFueV9JZCI6IkFhc2hpcmUmY29tcGFueTEyMyIsImlhdCI6MTcxOTU1MTY5MiwiZXhwIjoxNzE5NjM4MDkyfQ.3UuPjqMdj-YVQqrI918RBwDlhMNzbq7umJN_EKptBRI', '2024-06-28 12:51:36', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MSwiZW1haWwiOiJhYXNoaXJAZ21haWwuY29tIiwiY29tcGFueV9JZCI6IkFhc2hpcmUmY29tcGFueTEyMyIsImlhdCI6MTcxOTU1OTMzMCwiZXhwIjoxNzE5NjQ1NzMwfQ.jDynGQj1ToUxmwLEzOO05xHZmz46rpB64dj3wmk8AfA', '2024-06-28 14:40:41', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MSwiZW1haWwiOiJhYXNoaXJAZ21haWwuY29tIiwiY29tcGFueV9JZCI6IkFhc2hpcmUmY29tcGFueTEyMyIsImlhdCI6MTcxOTU2NTg1NCwiZXhwIjoxNzE5NjUyMjU0fQ.3BNuaYKadS3Pl1kQe1VciC0T1a66upNYzkhn-lfgaHc', '2024-06-28 17:07:06', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MSwiZW1haWwiOiJhYXNoaXJAZ21haWwuY29tIiwiY29tcGFueV9JZCI6IkFhc2hpcmUmY29tcGFueTEyMyIsImlhdCI6MTcxOTY0NzQ1MCwiZXhwIjoxNzE5NzMzODUwfQ.pFKe15Y_mBAGFnYVu0co5zOoVBNWWDvYW-tkonCieqE', '2024-06-29 15:17:12', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MSwiZW1haWwiOiJhYXNoaXJAZ21haWwuY29tIiwiY29tcGFueV9JZCI6IkFhc2hpcmUmY29tcGFueTEyMyIsImNvbXBhbnlfbmFtZSI6IkFhc2hpcmUmY29tcGFueSIsImlhdCI6MTcxOTk4ODk5MSwiZXhwIjoxNzIwMDc1MzkxfQ.Up_LHfEhiKJfiCN0ymfX', '2024-07-03 12:14:49', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MSwiZW1haWwiOiJhYXNoaXJAZ21haWwuY29tIiwiY29tcGFueV9JZCI6IkFhc2hpcmUmY29tcGFueTEyMyIsImNvbXBhbnlfbmFtZSI6IkFhc2hpcmUmY29tcGFueSIsImlhdCI6MTcxOTk5MDkwMCwiZXhwIjoxNzIwMDc3MzAwfQ.CwS3FgorzLYH5V-TtNgC', '2024-07-03 14:37:01', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0NCwiZW1haWwiOiJndWxhbUBnbWFpbC5jb20iLCJjb21wYW55X0lkIjoiQWFzaGlyZSZjb21wYW55MTIzIiwiaWF0IjoxNzE4ODgzMjU0LCJleHAiOjE3MTg5Njk2NTR9.4fKbnenc36GS36lcHqbiGDUZ0cZeBTAz67kovWKKBsU', '2024-06-20 17:07:43', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0NCwiZW1haWwiOiJndWxhbUBnbWFpbC5jb20iLCJjb21wYW55X0lkIjoiQWFzaGlyZSZjb21wYW55MTIzIiwiaWF0IjoxNzE5NDg0NjAxLCJleHAiOjE3MTk1NzEwMDF9.-ljWnqyONWe1nNVrYAstqBOg-56-FulM7ibbEXezjeQ', '2024-06-27 16:07:16', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0NCwiZW1haWwiOiJndWxhbUBnbWFpbC5jb20iLCJjb21wYW55X0lkIjoiQWFzaGlyZSZjb21wYW55MTIzIiwiaWF0IjoxNzE5NDg0NjY3LCJleHAiOjE3MTk1NzEwNjd9.NnYpnUcriS-4z-88OYKXJ3L5dmakDAhDKG-jGwh4rmE', '2024-06-27 16:14:55', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0NCwiZW1haWwiOiJndWxhbUBnbWFpbC5jb20iLCJjb21wYW55X0lkIjoiQWFzaGlyZSZjb21wYW55MTIzIiwiaWF0IjoxNzE5NDg1MjMwLCJleHAiOjE3MTk1NzE2MzB9.7cSlqAEKi2dNcY0PZcRYwfkI4nuPZmy1TIk9zf4HJYA', '2024-06-27 16:42:03', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0NCwiZW1haWwiOiJndWxhbUBnbWFpbC5jb20iLCJjb21wYW55X0lkIjoiQWFzaGlyZSZjb21wYW55MTIzIiwiaWF0IjoxNzE5NDgzNTMxLCJleHAiOjE3MTk1Njk5MzF9.irIbknIRr1FZUQpGrNzpMkGovxRHlTumW6h9gBOkUnk', '2024-06-27 16:05:05', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0NCwiZW1haWwiOiJndWxhbUBnbWFpbC5jb20iLCJjb21wYW55X0lkIjoiQWFzaGlyZSZjb21wYW55MTIzIiwiaWF0IjoxNzE5NDk3ODIwLCJleHAiOjE3MTk1ODQyMjB9.hGo9wPB-Pd_HY2Jobx3ncsIa3gj0g49c_kdKGpSV0xI', '2024-06-27 19:47:56', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0NCwiZW1haWwiOiJndWxhbUBnbWFpbC5jb20iLCJjb21wYW55X0lkIjoiQWFzaGlyZSZjb21wYW55MTIzIiwiaWF0IjoxNzE5NDk3OTY3LCJleHAiOjE3MTk1ODQzNjd9.C72DfD2goiodrtNs2EE69vir2yZGVA-o7GUbpPDefhM', '2024-06-27 19:50:45', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0NCwiZW1haWwiOiJndWxhbUBnbWFpbC5jb20iLCJjb21wYW55X0lkIjoiQWFzaGlyZSZjb21wYW55MTIzIiwiaWF0IjoxNzE5NDk4MTY5LCJleHAiOjE3MTk1ODQ1Njl9.s5bWChtFXmjeXikUu3L2O3nwPPNGOjjIN5g5ZHZjY5I', '2024-06-27 19:57:39', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0NCwiZW1haWwiOiJndWxhbUBnbWFpbC5jb20iLCJjb21wYW55X0lkIjoiQWFzaGlyZSZjb21wYW55MTIzIiwiaWF0IjoxNzE5NDk4NTM3LCJleHAiOjE3MTk1ODQ5Mzd9.l-2U-7JRXGMB9DwIwwp9oFrWOhXkiPP8-VRPmnppV8Q', '2024-06-27 20:01:32', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0NCwiZW1haWwiOiJndWxhbUBnbWFpbC5jb20iLCJjb21wYW55X0lkIjoiQWFzaGlyZSZjb21wYW55MTIzIiwiaWF0IjoxNzE5NjU0NDQ5LCJleHAiOjE3MTk3NDA4NDl9.PUajFflE4DrwI-giLZPmyGrIFPj5zuCuCmNHCxyZFBE', '2024-06-29 15:17:52', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0NCwiZW1haWwiOiJndWxhbUBnbWFpbC5jb20iLCJjb21wYW55X0lkIjoiQWFzaGlyZSZjb21wYW55MTIzIiwiY29tcGFueV9uYW1lIjoiQWFzaGlyZSZjb21wYW55IiwiaWF0IjoxNzE5OTk3NjU3LCJleHAiOjE3MjAwODQwNTd9.BCnZ3RTWz1k3fm1HifScvs', '2024-07-03 14:39:48', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0NSwiZW1haWwiOiJ6dWJlckBnbWFpbC5jb20iLCJjb21wYW55X0lkIjoiQWFzaGlyZSZjb21wYW55MTIzIiwiaWF0IjoxNzE5NDg0NjQ1LCJleHAiOjE3MTk1NzEwNDV9.qfrvyzMEsRwjqP9C4p75YFb8K8wpigFK4nOJeFjTdS8', '2024-06-27 16:07:37', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0NSwiZW1haWwiOiJ6dWJlckBnbWFpbC5jb20iLCJjb21wYW55X0lkIjoiQWFzaGlyZSZjb21wYW55MTIzIiwiaWF0IjoxNzE5NDg1MTA1LCJleHAiOjE3MTk1NzE1MDV9.n0lYJe9eUEquguaWvPMoeBTsy1bC-HXm5FKnWLG5RuY', '2024-06-27 16:16:54', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0NSwiZW1haWwiOiJ6dWJlckBnbWFpbC5jb20iLCJjb21wYW55X0lkIjoiQWFzaGlyZSZjb21wYW55MTIzIiwiaWF0IjoxNzE5NDk3NzA5LCJleHAiOjE3MTk1ODQxMDl9.YHQaPV5NuHkRM5pKbX2l0rOLfVgHgX1DrblQtLKIq2s', '2024-06-27 19:46:42', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0NSwiZW1haWwiOiJ6dWJlckBnbWFpbC5jb20iLCJjb21wYW55X0lkIjoiQWFzaGlyZSZjb21wYW55MTIzIiwiaWF0IjoxNzE5NDk3OTA0LCJleHAiOjE3MTk1ODQzMDR9.PQs99XxlJXDDkpf04rl98z05PubgYXDS8lywe8oiqrc', '2024-06-27 19:49:20', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0NSwiZW1haWwiOiJ6dWJlckBnbWFpbC5jb20iLCJjb21wYW55X0lkIjoiQWFzaGlyZSZjb21wYW55MTIzIiwiaWF0IjoxNzE5NjU0NDgyLCJleHAiOjE3MTk3NDA4ODJ9.aBVhdFLtGdeseNzIyIhprxkiMRwp_z6FQlClNCGrJFg', '2024-06-29 15:18:44', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0NywiZW1haWwiOiJkZXZAZ21haWwuY29tIiwiY29tcGFueV9JZCI6IlJhaiZjb21wYW55MTIzIiwiaWF0IjoxNzE4MzY4Mjg0LCJleHAiOjE3MTg0NTQ2ODR9.O_kl4UDmy1dvYOKxtVRLwkmg9HozORgjWqDfp49VIOY', '2024-06-14 18:05:08', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0OSwiZW1haWwiOiJzaGFzaGlAcHJvY3VyZXRpZ2VyLmNvbSIsImNvbXBhbnlfSWQiOiJBYXNoaXJlJmNvbXBhbnkxMjMiLCJpYXQiOjE3MTg4ODE2MDEsImV4cCI6MTcxODk2ODAwMX0.Ng8Jj3SA6vubPZW8H_N1hb7lGjjTY2AkW2qiQIj32t8', '2024-06-20 16:37:10', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0OSwiZW1haWwiOiJzaGFzaGlAcHJvY3VyZXRpZ2VyLmNvbSIsImNvbXBhbnlfSWQiOiJFUFRMIiwiaWF0IjoxNzE4ODgxNzIwLCJleHAiOjE3MTg5NjgxMjB9.Rv9VjGI4U-sSavcu1QW3l8WFpYUGltr71DjeUNQtUtQ', '2024-06-20 16:39:52', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0OSwiZW1haWwiOiJzaGFzaGlAcHJvY3VyZXRpZ2VyLmNvbSIsImNvbXBhbnlfSWQiOiJFUFRMIiwiaWF0IjoxNzE4ODgxOTc4LCJleHAiOjE3MTg5NjgzNzh9.w4ROGhdYphopJOeRw1HiURjo97ZokMRnpGHkcI6wHxI', '2024-06-20 16:44:18', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0OSwiZW1haWwiOiJzaGFzaGlAcHJvY3VyZXRpZ2VyLmNvbSIsImNvbXBhbnlfSWQiOiJFUFRMIiwiaWF0IjoxNzE4ODgyMDY0LCJleHAiOjE3MTg5Njg0NjR9.1Fa1CLuuIg_KqhBdZcimJdg_DNnkKJYw3Gy_cjckDeE', '2024-06-20 16:44:48', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjUyLCJlbWFpbCI6InZpcmF0MTIzQGdtYWlsLmNvbSIsImNvbXBhbnlfSWQiOiJwYXJsZTEyMyIsImlhdCI6MTcxODM2MDI0OCwiZXhwIjoxNzE4NDQ2NjQ4fQ.0kE-01g9d8kqKW9DPWrjFaQNle1Heg78sv57jpY_uBI', '2024-06-14 16:48:50', NULL),
('Bearer null', '2024-06-24 15:21:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms`
--

CREATE TABLE `cms` (
  `id` int(11) NOT NULL,
  `tender_Ref_No` varchar(255) NOT NULL,
  `select_Milestone` varchar(255) NOT NULL,
  `add_Milestone` varchar(255) NOT NULL,
  `add_Milestone_Desc` varchar(255) NOT NULL,
  `attach_Document` varchar(255) DEFAULT NULL,
  `add_Completion_DT` varchar(20) DEFAULT NULL,
  `created_By` int(11) NOT NULL,
  `company_Id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cms`
--

INSERT INTO `cms` (`id`, `tender_Ref_No`, `select_Milestone`, `add_Milestone`, `add_Milestone_Desc`, `attach_Document`, `add_Completion_DT`, `created_By`, `company_Id`) VALUES
(121, 'J1', 'work', 'sdufhsdjkffhkjsdfsdfhkfdksjfjsdfh', 'nmnmnmn', '', '2024-06-14 00:00:00', 140, 'jay&company123'),
(122, 'J1', 'pay', 'qawsedrfg', 'qwsedrftgyh', '', '2024-06-14 00:00:00', 140, 'jay&company123'),
(123, 'J1', 'work', 'TESTNG ', 'TESTING', '', '2024-06-19 00:00:00', 141, 'Aashire&company123'),
(124, 'J1', 'pay', 'THIS IS TESTING PAY', 'THIS IS TESTING PAY', '', '2024-06-28 00:00:00', 141, 'Aashire&company123'),
(125, 'A1', 'work', 'dfcgvh', 'x gvhb', '', '2024-06-18', 141, 'Aashire&company123'),
(126, 'A2', 'work', 'sdsd', 'dsdsa', '', '2024-07-29', 141, 'Aashire&company123'),
(127, 'A2', 'work', 'dsds', 'dsad', '', '2024-07-30', 141, 'Aashire&company123'),
(128, 'A2', 'work', 'sdsd', 'dsad', '', '2024-07-23', 141, 'Aashire&company123');

-- --------------------------------------------------------

--
-- Table structure for table `company_registration`
--

CREATE TABLE `company_registration` (
  `id` int(11) NOT NULL,
  `company_Id` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `no_of_user` int(11) DEFAULT NULL,
  `expiry_date` varchar(20) DEFAULT NULL,
  `subscription_date` varchar(20) DEFAULT NULL,
  `subscription_plan` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `company_registration`
--

INSERT INTO `company_registration` (`id`, `company_Id`, `company_name`, `address`, `no_of_user`, `expiry_date`, `subscription_date`, `subscription_plan`) VALUES
(7, 'jay&company123', 'jay&company', 'Bapunagar', 95, NULL, NULL, NULL),
(8, 'Aashire&company123', 'Aashire&company', 'Bopal', 76, NULL, NULL, NULL),
(9, 'Raj&company123', 'Raj&company', 'Junagadh', 100, NULL, NULL, NULL),
(10, 'EPTL', 'EPTL', 'wallstreet 2', 500, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `financial_limit`
--

CREATE TABLE `financial_limit` (
  `id` int(11) NOT NULL,
  `max_Limit` int(11) NOT NULL,
  `min_Limit` int(11) NOT NULL,
  `created_By` varchar(255) NOT NULL,
  `company_Id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `financial_qualified`
--

CREATE TABLE `financial_qualified` (
  `id` int(11) NOT NULL,
  `tender_Ref_No` varchar(255) NOT NULL,
  `select_Bidder` varchar(255) NOT NULL,
  `self` varchar(255) NOT NULL,
  `financial_Qualified` varchar(255) NOT NULL,
  `add_comment` varchar(255) NOT NULL,
  `company_Id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `library_of_document`
--

CREATE TABLE `library_of_document` (
  `id` int(11) NOT NULL,
  `file_Name` varchar(255) DEFAULT NULL,
  `category` varchar(255) NOT NULL,
  `uploaded_Date` varchar(20) DEFAULT current_timestamp(),
  `file_Path` varchar(500) NOT NULL,
  `user_Id` int(11) NOT NULL,
  `company_Id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `library_of_document`
--

INSERT INTO `library_of_document` (`id`, `file_Name`, `category`, `uploaded_Date`, `file_Path`, `user_Id`, `company_Id`) VALUES
(16, 'Create Tender', 'Create Tender', '2024-06-28 11:13:26', 'public\\uploads\\Next-Screenshot (316).png', 141, NULL),
(17, 'Create Tender', 'Create Tender', '2024-06-28 11:13:35', 'public\\uploads\\Next-Screenshot (316).png', 141, NULL),
(18, 'PQ', 'PQ', '2024-06-28 11:13:57', 'public\\uploads\\Next-Screenshot (316).png,public\\uploads\\Next-Screenshot (317).png,public\\uploads\\Next-Screenshot (318) - Copy.png,public\\uploads\\Next-Screenshot (318).png,public\\uploads\\Next-Screenshot (319).png,public\\uploads\\Next-Screenshot (320) - Copy.png', 141, NULL),
(19, 'PQ', 'PQ', '2024-07-03 09:04:28', 'public\\uploads\\Next-Screenshot 2024-05-09 145336.png,public\\uploads\\Next-Screenshot 2024-05-09 145511.png,public\\uploads\\Next-Screenshot 2024-05-10 114747.png,public\\uploads\\Next-Screenshot 2024-05-10 124616.png', 141, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `make_payment`
--

CREATE TABLE `make_payment` (
  `id` int(11) NOT NULL,
  `remainning_for_SD` int(11) DEFAULT NULL,
  `add_Bank` enum('SBI','BOI','Axis') DEFAULT NULL,
  `transaction_Number` int(11) DEFAULT NULL,
  `transaction_Date` text DEFAULT NULL,
  `Date` date DEFAULT current_timestamp(),
  `comment` text DEFAULT NULL,
  `c_Id` int(11) NOT NULL,
  `created_By` int(255) DEFAULT NULL,
  `upload_document` varchar(255) DEFAULT NULL,
  `company_Id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `make_payment`
--

INSERT INTO `make_payment` (`id`, `remainning_for_SD`, `add_Bank`, `transaction_Number`, `transaction_Date`, `Date`, `comment`, `c_Id`, `created_By`, `upload_document`, `company_Id`) VALUES
(181, 0, '', 558558, '2024-06-26', '2024-06-14', 'cvbn', 221, 140, 'public\\uploads\\Next-2.JPG', 'jay&company123'),
(182, 20000, '', 56466464, '2024-05-29', '2024-06-14', '', 222, 140, NULL, 'jay&company123'),
(183, 0, '', 558558, '2024-06-03', '2024-06-14', 'm', 220, 140, 'public\\uploads\\Next-2.JPG', 'jay&company123'),
(184, 0, '', 1, '2024-06-13', '2024-06-18', 'Configure_payment', 220, 141, 'public\\uploads\\Next-Screenshot (320).png', 'Aashire&company123'),
(185, 0, '', 2, '2024-06-27', '2024-06-18', 'Configure_payment', 220, 141, 'public\\uploads\\Next-Screenshot (321).png', 'Aashire&company123'),
(186, 0, '', 1, '2024-06-26', '2024-06-18', 'This is testing emd compelted', 221, 141, 'public\\uploads\\Next-Screenshot (321).png', 'Aashire&company123'),
(187, 10000, '', 29, '2024-07-04', '2024-06-18', '', 222, 141, NULL, 'Aashire&company123'),
(188, 0, '', 1, '2024-06-26', '2024-06-18', 'TestingTender', 220, 141, 'public\\uploads\\Next-Screenshot (324).png', 'Aashire&company123'),
(189, 0, '', 2, '2024-06-26', '2024-06-18', 'TestingTender', 221, 141, 'public\\uploads\\Next-Screenshot (321).png', 'Aashire&company123'),
(190, NULL, '', 64576476, '2024-06-26', '2024-06-19', '', 234, 141, NULL, 'Aashire&company123'),
(191, 0, '', 64576476, '2024-06-20', '2024-06-19', 'TT', 235, 141, 'public\\uploads\\Next-Screenshot (323).png', 'Aashire&company123'),
(192, 0, '', 64576476, '2024-07-24', '2024-07-01', 'dsds', 236, 141, 'public\\uploads\\Next-Screenshot (316).png', 'Aashire&company123'),
(193, 0, '', 1, '2024-07-24', '2024-07-01', 'sdsad', 236, 141, 'public\\uploads\\Next-Screenshot (316).png', 'Aashire&company123'),
(194, 0, 'Axis', 64576476, '2024-07-31', '2024-07-01', 'sddsadsdas', 236, 141, NULL, 'Aashire&company123');

-- --------------------------------------------------------

--
-- Table structure for table `negotiation`
--

CREATE TABLE `negotiation` (
  `id` int(11) NOT NULL,
  `tender_Ref_No` varchar(255) NOT NULL,
  `select_Envelop` varchar(255) NOT NULL,
  `post_Question` varchar(255) NOT NULL,
  `reply_Deadline` varchar(20) DEFAULT NULL,
  `attach_Query_Document` varchar(255) DEFAULT NULL,
  `current_DT` date NOT NULL DEFAULT current_timestamp(),
  `created_By` varchar(255) NOT NULL,
  `r_comment` varchar(255) NOT NULL,
  `r_Attachment_Query_Document` varchar(255) DEFAULT NULL,
  `company_Id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `negotiation`
--

INSERT INTO `negotiation` (`id`, `tender_Ref_No`, `select_Envelop`, `post_Question`, `reply_Deadline`, `attach_Query_Document`, `current_DT`, `created_By`, `r_comment`, `r_Attachment_Query_Document`, `company_Id`) VALUES
(117, 'J1', 'Financial', 'how are you', '2024-06-17 00:00:00', 'public\\uploads\\Next-2.JPG', '2024-06-10', '140', 'KL', NULL, 'jay&company123'),
(118, 'J1', 'Technical', 'hello', '2024-06-14 00:00:00', 'public\\uploads\\Next-2.JPG', '2024-06-14', '140', 'VK', NULL, 'jay&company123'),
(119, 'J1', 'Financial', 'THIS IS TESTING', '2024-06-26 00:00:00', 'public\\uploads\\Next-Screenshot (320).png', '2024-06-13', '141', 'THIS IS TESTING', NULL, 'Aashire&company123'),
(120, 'J1', 'Technical', 'THIS IS TESTING TECHNICAL', '2024-06-20 00:00:00', 'public\\uploads\\Next-Screenshot (324).png', '2024-06-26', '141', 'YES', NULL, 'Aashire&company123'),
(121, '2024_kmda_691485_1', 'Financial', 'Neg 1', '2024-06-19 00:00:00', 'public\\uploads\\Next-Screenshot (323).png', '2024-06-19', '141', 'Reply 1', NULL, 'Aashire&company123'),
(122, '2024_kmda_691485_1', 'Technical', 'Neg 2', '2024-06-19 00:00:00', 'public\\uploads\\Next-Screenshot (324).png', '2024-06-19', '141', 'Reply 2', NULL, 'Aashire&company123'),
(123, 'R1', 'Financial', 'q 1', '2024-05-28', 'public\\uploads\\Next-Screenshot (2).png', '2024-05-27', '142', 'byyy', NULL, 'Raj&company123'),
(124, 'R1', 'Financial', 'q12', '2024-05-27', 'public\\uploads\\Next-Screenshot (3).png', '2024-05-27', '142', 'byyy', NULL, 'Raj&company123'),
(125, 'A2', 'Technical', 'sdsd', '2024-07-03', 'public\\uploads\\Next-Screenshot (316).png', '2024-07-09', '141', 'sdsdsas', NULL, 'Aashire&company123'),
(126, 'A2', 'Technical', 'sdsd', '2024-07-16', 'public\\uploads\\Next-Screenshot (316).png', '2024-07-07', '141', 'dsdsdsdsa', NULL, 'Aashire&company123'),
(127, 'A2', 'Technical', 'sdsd', '2024-07-16', 'public\\uploads\\Next-Screenshot (316).png,public\\uploads\\Next-Screenshot (317).png,public\\uploads\\Next-Screenshot (318) - Copy.png', '2024-07-16', '141', '', NULL, 'Aashire&company123'),
(128, 'A2', 'Financial', 'ssds', '2024-07-08', 'public\\uploads\\Next-Screenshot (316).png', '2024-07-16', '141', 'answer', NULL, 'Aashire&company123'),
(129, 'A2', 'Financial', 'sdsd', '2024-06-30', 'public\\uploads\\Next-Screenshot (316).png', '2024-06-30', '141', 'answer', NULL, 'Aashire&company123'),
(130, 'A2', 'Financial', 'dsdsa', '2024-07-16', 'public\\uploads\\Next-Screenshot (318).png,public\\uploads\\Next-Screenshot (319).png,public\\uploads\\Next-Screenshot (320) - Copy.png', '2024-07-15', '141', 'answer', NULL, 'Aashire&company123'),
(131, 'A2', 'Financial', 'sdsa', '2024-07-08', '', '2024-07-16', '141', 'answer', NULL, 'Aashire&company123');

-- --------------------------------------------------------

--
-- Table structure for table `payment_configurations`
--

CREATE TABLE `payment_configurations` (
  `id` int(11) NOT NULL,
  `tender_Ref_No` varchar(255) NOT NULL,
  `select_type` varchar(255) NOT NULL,
  `payment_Type` varchar(255) NOT NULL,
  `payment_Mode` varchar(255) DEFAULT NULL,
  `currency` enum('INR','USD') DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `online_Option` enum('UPI','oNLINE BANK TEANSFER') DEFAULT NULL,
  `add_Detail` text DEFAULT NULL,
  `required_Before` varchar(20) DEFAULT NULL,
  `upload_Document` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `status` varchar(255) DEFAULT 'pending',
  `created_By` int(11) DEFAULT NULL,
  `refund_Date` varchar(255) DEFAULT NULL,
  `company_Id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment_configurations`
--

INSERT INTO `payment_configurations` (`id`, `tender_Ref_No`, `select_type`, `payment_Type`, `payment_Mode`, `currency`, `amount`, `online_Option`, `add_Detail`, `required_Before`, `upload_Document`, `comment`, `status`, `created_By`, `refund_Date`, `company_Id`) VALUES
(220, 'J1', 'document', 'free', '', '', 0.00, '', '', '0000-00-00 00:00:00', 'public\\uploads\\Next-2.JPG', 'gg', 'Done', 140, NULL, 'jay&company123'),
(221, 'J1', 'emd', 'paid', 'online', 'USD', 30000.00, '', 'hj', '2024-06-17 00:00:00', 'public\\uploads\\Next-23.JPG', 'nmnmn', 'Done', 140, NULL, 'jay&company123'),
(222, 'J1', 'sd', 'paid', 'offline', 'USD', 50000.00, '', '', '2024-06-23 00:00:00', 'public\\uploads\\Next-2.JPG', 'dxfgcvbn', 'Done', 140, NULL, 'jay&company123'),
(223, 'J1', 'document', 'free', '', '', 0.00, '', '', '0000-00-00 00:00:00', 'public\\uploads\\Next-2.JPG', 'sdcdcdd', 'pending', 140, NULL, 'jay&company123'),
(224, 'A1', 'emd', 'paid', 'online', '', 20000.00, '', 'BOB', '2024-06-28 00:00:00', 'public\\uploads\\Next-Screenshot (321).png', 'sdmks', 'pending', 141, NULL, 'Aashire&company123'),
(225, 'J1', 'emd', 'paid', 'offline', 'USD', 534543.00, '', '', '2024-05-27 00:00:00', 'public\\uploads\\Next-tms d-15-6-24.sql', '34543r', 'pending', 142, NULL, 'Raj&company123'),
(226, 'J1', 'document', 'free', '', '', 0.00, '', '', '0000-00-00 00:00:00', 'public\\uploads\\Next-Screenshot (317).png', 'This is testing', 'pending', 141, NULL, 'Aashire&company123'),
(227, 'J1', 'document', 'paid', 'online', '', 200000.00, '', 'This is testing', '2024-06-27 00:00:00', 'public\\uploads\\Next-Screenshot (318).png', 'This is testing', 'pending', 141, NULL, 'Aashire&company123'),
(228, 'J1', 'document', 'paid', 'offline', 'USD', 2000.00, '', '', '2024-06-18 00:00:00', 'public\\uploads\\Next-Screenshot (321).png', 'This is testing', 'pending', 141, NULL, 'Aashire&company123'),
(229, 'J1', 'document', 'free', '', '', 0.00, '', '', '0000-00-00 00:00:00', 'public\\uploads\\Next-Screenshot (318).png', 'This is testing free', 'pending', 141, NULL, 'Aashire&company123'),
(230, 'J1', 'document', 'free', '', '', 0.00, '', '', '2024-06-26 00:00:00', 'public\\uploads\\Next-Screenshot (317).png', 'This is testing free', 'pending', 141, NULL, 'Aashire&company123'),
(231, 'J1', 'emd', 'paid', 'online', 'USD', 30000.00, '', 'This is testing emd 1', '2024-06-25 00:00:00', 'public\\uploads\\Next-Screenshot (320).png', 'This is testing1', 'pending', 141, NULL, 'Aashire&company123'),
(232, 'J1', 'sd', 'paid', '', '', 40000.00, '', '', '2024-07-04 00:00:00', 'public\\uploads\\Next-Screenshot (324).png', 'This is testing sd ', 'pending', 141, NULL, 'Aashire&company123'),
(233, '2024_kmda_691485_1', 'document', 'paid', 'online', '', 1000.00, '', 'BOB', '2024-06-19 00:00:00', 'public\\uploads\\Next-Screenshot (323).png', 'description', 'pending', 141, NULL, 'Aashire&company123'),
(234, '2024_kmda_691485_1', 'sd', 'paid', 'online', '', 6000.00, '', 'BOB', '2024-06-19 00:00:00', 'public\\uploads\\Next-Screenshot (323).png', 'Tesd', 'Done', 141, NULL, 'Aashire&company123'),
(235, '2024_kmda_691485_1', 'emd', 'paid', 'online', '', 1500.00, '', 'TT', '2024-06-19 00:00:00', 'public\\uploads\\Next-Screenshot (323).png', 'TT', 'Done', 141, NULL, 'Aashire&company123'),
(236, 'A2', 'document', 'fExemptionree', '', '', 0.00, '', '', '2024-06-27 00:00:00', 'public\\uploads\\Next-Screenshot (321).png', 'sds', 'Done', 141, NULL, 'Aashire&company123'),
(237, 'A2', 'document', 'paid', 'online', '', 300000.00, '', 'sdsd', '2024-07-04 00:00:00', 'public\\uploads\\Next-Screenshot (320).png', 'sds', 'pending', 141, NULL, 'Aashire&company123'),
(238, 'A2', 'emd', 'paid', 'online', '', 4000000.00, 'UPI', 'ww', '2024-07-03 00:00:00', 'public\\uploads\\Next-Screenshot (321).png', 'dsd', 'pending', 141, NULL, 'Aashire&company123'),
(239, 'A2', 'document', 'free', '', '', 300000.00, '', 'undefined', '2024-07-10', 'public\\uploads\\Next-Screenshot (319).png', 'sdsadsa', 'pending', 141, NULL, 'Aashire&company123'),
(240, 'A2', 'document', 'free', '', '', 300000.00, '', 'undefined', '2024-07-03', 'public\\uploads\\Next-Screenshot (316).png', 'sadsadsa', 'pending', 141, NULL, 'Aashire&company123'),
(241, 'A2', 'document', 'free', '', '', 0.00, '', '', '2024-07-23', 'public\\uploads\\Next-Screenshot (316).png', 'dsadsa', 'pending', 141, NULL, 'Aashire&company123'),
(242, 'A2', 'document', 'free', '', '', 0.00, '', '', '2024-07-02', 'public\\uploads\\Next-Screenshot (316).png', 'dsjkdsadjsa', 'pending', 141, NULL, 'Aashire&company123'),
(243, 'A2', 'document', 'free', '', '', 0.00, '', '', '2024-07-18', 'public\\uploads\\Next-Screenshot (316).png', 'skdsalkdsa', 'pending', 141, NULL, 'Aashire&company123'),
(244, 'A2', 'emd', 'free', '', '', 4000000.00, '', 'undefined', '2024-07-31', NULL, 'lkdsalkd', 'pending', 141, NULL, 'Aashire&company123'),
(245, 'A2', 'emd', 'free', '', '', 0.00, '', '', '2024-07-30', 'public\\uploads\\Next-Screenshot (316).png', 'dlkslk', 'pending', 141, NULL, 'Aashire&company123'),
(246, 'A2', 'emd', 'free', '', '', 0.00, '', '', '2024-07-09', 'public\\uploads\\Next-Screenshot (316).png', 'dfdfd', 'pending', 141, NULL, 'Aashire&company123'),
(247, 'A2', 'document', 'free', '', '', 300000.00, '', 'undefined', '2024-07-30', ',,,,,', 'asdsd', 'pending', 141, NULL, 'Aashire&company123');

-- --------------------------------------------------------

--
-- Table structure for table `payment_qualified`
--

CREATE TABLE `payment_qualified` (
  `id` int(11) NOT NULL,
  `tender_Ref_No` varchar(255) NOT NULL,
  `select_Bidder` varchar(255) NOT NULL,
  `self` varchar(255) NOT NULL,
  `payment_Qualified` varchar(255) NOT NULL,
  `add_comment` varchar(255) NOT NULL,
  `company_Id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pq_sub_comment`
--

CREATE TABLE `pq_sub_comment` (
  `id` int(11) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `pq_Id` int(11) NOT NULL,
  `company_Id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `source`
--

CREATE TABLE `source` (
  `id` int(11) NOT NULL,
  `login_Url` varchar(400) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `user_Name` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT current_timestamp(),
  `company_Id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `source`
--

INSERT INTO `source` (`id`, `login_Url`, `password`, `user_Name`, `date`, `company_Id`) VALUES
(14, 'https://registration.tendertiger.co.in/', 'w7bCq9', 'rakadi7782@buzblox.com', '2024-06-19 06:11:39', NULL),
(15, 'http://localhost:5173/#/admin/MyAccount', 'ndkjfdn', 'djkfnd', '2024-06-28 05:19:26', NULL),
(16, 'jfdsnfnfdnfk', 'jnkjnfn', 'njknsdfj', '2024-06-28 05:19:33', NULL),
(17, 'dnfdnfjdN', 'NFDNNDFNSDF', 'NFDNFK', '2024-06-28 05:19:42', NULL),
(18, 'lkndsfnf', 'nflnl', 'kdn', '2024-06-28 05:19:49', NULL),
(19, 'ndkdndsn', 'kjnkdn', 'jdnfd', '2024-06-28 05:19:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sub_coment`
--

CREATE TABLE `sub_coment` (
  `id` int(11) NOT NULL,
  `q_Id` int(11) NOT NULL,
  `s_comment` varchar(255) NOT NULL,
  `date_Time` date NOT NULL DEFAULT current_timestamp(),
  `document` varchar(255) NOT NULL,
  `s_Comment_By` varchar(255) NOT NULL,
  `company_Id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sub_coment`
--

INSERT INTO `sub_coment` (`id`, `q_Id`, `s_comment`, `date_Time`, `document`, `s_Comment_By`, `company_Id`) VALUES
(79, 168, 'hii', '2024-06-14', '', 'jay', 'jay&company123'),
(80, 168, 'This is testing', '2024-06-18', 'public\\uploads\\Next-Screenshot (321).png', 'Aashir', 'Aashire&company123'),
(81, 169, 'This is testing2', '2024-06-18', 'public\\uploads\\Next-Screenshot (318).png', 'Aashir', 'Aashire&company123'),
(82, 169, 'This is testing 3', '2024-06-18', 'public\\uploads\\Next-Screenshot (318).png', 'Aashir', 'Aashire&company123'),
(83, 170, 'THis is testing3', '2024-06-18', '', 'Aashir', 'Aashire&company123'),
(84, 171, 'complied', '2024-06-19', '', 'Aashir', 'Aashire&company123'),
(85, 172, 'testing', '2024-06-24', '', 'Aashir', 'Aashire&company123'),
(86, 174, 'dsfdf', '2024-06-24', 'public\\uploads\\Next-Screenshot (321).png', 'Aashir', 'Aashire&company123'),
(119, 196, 'Testing 7', '2024-06-26', '', 'Aashir', 'Aashire&company123'),
(120, 196, 'Testing 77', '2024-06-26', '', 'Aashir', 'Aashire&company123'),
(121, 195, 'Testing 6', '2024-06-26', 'public\\uploads\\Next-Screenshot (321).png', 'Aashir', 'Aashire&company123'),
(122, 195, 'testingg66', '2024-06-26', '', 'Aashir', 'Aashire&company123'),
(123, 195, 'testingg666', '2024-06-26', '', 'Aashir', 'Aashire&company123'),
(124, 194, 'testingg5', '2024-06-26', 'public\\uploads\\Next-Screenshot (321).png', 'Aashir', 'Aashire&company123'),
(125, 191, 'testing2', '2024-06-26', 'public\\uploads\\Next-Screenshot (321).png', 'Aashir', 'Aashire&company123'),
(126, 190, 'hii', '2024-06-26', 'public\\uploads\\Next-Screenshot (321).png', 'Aashir', 'Aashire&company123'),
(127, 198, 'no comment', '2024-06-27', '', 'Raj', 'Raj&company123'),
(128, 198, 'one comment', '2024-06-27', '', 'Raj', 'Raj&company123'),
(129, 198, 'two comment', '2024-06-27', 'public\\uploads\\Next-Screenshot (2).png', 'Raj', 'Raj&company123'),
(130, 198, 'three cooment', '2024-06-27', '', 'Raj', 'Raj&company123'),
(131, 198, 'hii', '2024-06-27', '', 'Raj', 'Raj&company123'),
(132, 197, 'hiii', '2024-06-27', '', 'Raj', 'Raj&company123'),
(133, 197, '', '2024-06-27', '', 'Raj', 'Raj&company123'),
(134, 198, 'hiipoi', '2024-06-27', '', 'Raj', 'Raj&company123'),
(135, 174, '', '2024-06-29', 'public\\uploads\\Next-Screenshot (320) - Copy.png', 'Aashir', 'Aashire&company123'),
(136, 174, 'fsfsdsdsasad', '2024-06-29', '', 'Aashir', 'Aashire&company123'),
(137, 174, '', '2024-06-29', 'public\\uploads\\Next-Screenshot (319).png', 'Aashir', 'Aashire&company123'),
(138, 174, '', '2024-06-29', 'public\\uploads\\Next-Screenshot (318).png,public\\uploads\\Next-Screenshot (319).png,public\\uploads\\Next-Screenshot (320) - Copy.png', 'Aashir', 'Aashire&company123'),
(139, 174, 'skjdskjd', '2024-06-29', 'public\\uploads\\Next-Screenshot (316).png,public\\uploads\\Next-Screenshot (317).png', 'Aashir', 'Aashire&company123'),
(140, 174, 'sdsds', '2024-06-29', 'public\\uploads\\Next-Screenshot (316).png', 'Aashir', 'Aashire&company123');

-- --------------------------------------------------------

--
-- Table structure for table `tblbidders`
--

CREATE TABLE `tblbidders` (
  `id` int(11) NOT NULL,
  `tender_Id` varchar(255) NOT NULL,
  `bidder_name` varchar(255) NOT NULL,
  `tender_ref_no` varchar(255) NOT NULL,
  `is_payment_quilified` tinyint(1) DEFAULT 0,
  `is_financial_qualified` tinyint(1) DEFAULT 0,
  `is_technical_qualified` tinyint(1) DEFAULT 0,
  `company_Id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblbidders`
--

INSERT INTO `tblbidders` (`id`, `tender_Id`, `bidder_name`, `tender_ref_no`, `is_payment_quilified`, `is_financial_qualified`, `is_technical_qualified`, `company_Id`) VALUES
(72, '453454334', 'Raj&company', '332', 1, 1, 1, 'Raj&company123'),
(73, '453454334', 'dev', '332', 1, 1, 1, 'Raj&company123'),
(74, '453454334', 'jatin', '332', 1, 1, 1, 'Raj&company123'),
(75, '453454334', 'new dev', '332', 1, NULL, 1, 'jay&company123'),
(76, '453454334', 'jay&company', '332', 0, 0, 0, 'jay&company123');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_of_documents`
--

CREATE TABLE `tbl_of_documents` (
  `id` int(11) NOT NULL,
  `tender_Ref_No` varchar(255) NOT NULL,
  `menu` varchar(255) NOT NULL,
  `file_Paths` varchar(255) DEFAULT NULL,
  `all_id` int(11) DEFAULT NULL,
  `user_Id` int(11) DEFAULT NULL,
  `company_Id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `technical_qualified`
--

CREATE TABLE `technical_qualified` (
  `id` int(11) NOT NULL,
  `tender_Ref_No` varchar(255) NOT NULL,
  `select_Bidder` varchar(255) NOT NULL,
  `self` varchar(255) NOT NULL,
  `technical_Qualified` varchar(255) NOT NULL,
  `add_comment` varchar(255) NOT NULL,
  `company_Id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tender_actions`
--

CREATE TABLE `tender_actions` (
  `id` int(11) NOT NULL,
  `tender_Ref_No` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `reason` text DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `likes` tinyint(1) DEFAULT NULL,
  `i_want` varchar(255) DEFAULT NULL,
  `favorite` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  `company_Id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tender_actions`
--

INSERT INTO `tender_actions` (`id`, `tender_Ref_No`, `user_id`, `reason`, `comment`, `likes`, `i_want`, `favorite`, `created_at`, `company_Id`) VALUES
(142, '2023_nhai_178838_1', 142, NULL, NULL, NULL, NULL, 0, '2024-06-27 13:44:01', 'Raj&company123'),
(143, '2023_nhai_178838_1', 141, NULL, NULL, NULL, NULL, 1, '2024-06-27 13:48:30', 'Aashire&company123'),
(144, '2023_nhai_178850_1', 141, NULL, NULL, NULL, NULL, 1, '2024-06-27 13:48:33', 'Aashire&company123'),
(145, 'A2', 141, NULL, NULL, 1, NULL, 0, '2024-06-27 19:44:11', 'Aashire&company123'),
(146, '2024_mmrda_1036226_1', 141, NULL, NULL, 1, NULL, 0, '2024-06-28 10:00:31', 'Aashire&company123'),
(147, 'J2', 142, NULL, NULL, NULL, NULL, 1, '2024-06-28 04:39:14', 'Raj&company123'),
(148, 'J2', 142, NULL, NULL, 1, NULL, 0, '2024-06-28 10:10:21', 'Raj&company123'),
(149, 'J2', 141, NULL, NULL, NULL, NULL, 1, '2024-06-28 04:51:52', 'Aashire&company123'),
(150, 'A1', 142, NULL, NULL, NULL, NULL, 0, '2024-06-28 04:54:25', 'Raj&company123'),
(151, 'R1', 142, NULL, NULL, 1, NULL, 0, '2024-07-01 10:25:37', 'Raj&company123'),
(152, '332', 142, NULL, NULL, 1, NULL, 0, '2024-07-01 13:07:13', 'Raj&company123'),
(153, '332', 140, NULL, NULL, 1, NULL, 0, '2024-07-01 13:24:06', 'jay&company123'),
(154, 'sdsd', 144, NULL, NULL, 1, NULL, 0, '2024-07-03 14:39:40', 'Aashire&company123');

-- --------------------------------------------------------

--
-- Table structure for table `tender_corrigendum`
--

CREATE TABLE `tender_corrigendum` (
  `id` int(11) NOT NULL,
  `corrigendum_text` text DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  `documents` varchar(255) DEFAULT NULL,
  `new_submission_date` varchar(20) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `create_date_time` date DEFAULT current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `update_date_time` varchar(20) DEFAULT NULL,
  `tender_Ref_No` varchar(255) DEFAULT NULL,
  `company_Id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tender_corrigendum`
--

INSERT INTO `tender_corrigendum` (`id`, `corrigendum_text`, `date`, `documents`, `new_submission_date`, `created_by`, `create_date_time`, `updated_by`, `update_date_time`, `tender_Ref_No`, `company_Id`) VALUES
(147, 'KK', '2024-06-14', 'public\\uploads\\Next-2.JPG', '2024-06-14', 140, '2024-06-14', NULL, NULL, 'J1', 'jay&company123'),
(148, ' jnm', '2024-07-01', 'public\\uploads\\Next-23.JPG', '2024-06-16', 140, '2024-06-14', NULL, NULL, 'J1', 'jay&company123'),
(149, 'This is testing', '2024-05-19', 'public\\uploads\\Next-Screenshot (317).png', '2024-05-12', 141, '2024-06-18', NULL, NULL, 'J1', 'Aashire&company123'),
(150, 'This is testing18', '2024-06-23', 'public\\uploads\\Next-Screenshot (321).png', '2024-06-22', 141, '2024-06-18', NULL, NULL, 'J1', 'Aashire&company123'),
(152, 'sdsd', '2024-06-17', 'public\\uploads\\Next-Screenshot (318).png', '2024-06-24', 141, '2024-06-29', NULL, NULL, 'A2', 'Aashire&company123'),
(153, 'jkjklk', '2024-06-20', 'public\\uploads\\Next-Screenshot (321).png', '2024-06-26', 141, '2024-06-29', NULL, NULL, 'A2', 'Aashire&company123'),
(154, 'sddsjk', '2024-07-03', 'public\\uploads\\Next-Screenshot (321).png', '2024-06-27', 141, '2024-06-29', NULL, NULL, 'A2', 'Aashire&company123'),
(155, 'sdslkmdskl', '2024-07-03', 'public\\uploads\\Next-Screenshot (317).png', '2024-07-03', 141, '2024-06-29', NULL, NULL, 'A2', 'Aashire&company123'),
(156, 'ksddkj', '2024-07-02', 'public\\uploads\\Next-Screenshot (317).png', '2024-06-27', 141, '2024-06-29', NULL, NULL, 'A2', 'Aashire&company123'),
(157, 'sdlkmsk', '2024-07-01', 'public\\uploads\\Next-Screenshot (318).png,public\\uploads\\Next-Screenshot (319).png,public\\uploads\\Next-Screenshot (320) - Copy.png', '2024-06-12', 141, '2024-06-29', NULL, NULL, 'A2', 'Aashire&company123'),
(158, 'dsds', '2024-05-28', 'public\\uploads\\Next-Screenshot (318).png', '', 141, '2024-07-01', NULL, NULL, 'A2', 'Aashire&company123'),
(159, 'dsadl', '2024-07-01', 'public\\uploads\\Next-Screenshot (316).png', '2024-07-01', 141, '2024-07-01', NULL, NULL, 'A2', 'Aashire&company123'),
(160, 'dksal', '2024-07-24', 'public\\uploads\\Next-Screenshot (316).png', '2024-07-24', 141, '2024-07-01', NULL, NULL, 'A2', 'Aashire&company123'),
(161, 'sdsd', '2024-07-31', '', '2024-07-28', 141, '2024-07-01', NULL, NULL, 'A2', 'Aashire&company123');

-- --------------------------------------------------------

--
-- Table structure for table `tender_mapped_users`
--

CREATE TABLE `tender_mapped_users` (
  `id` int(11) NOT NULL,
  `tender_Ref_No` varchar(255) DEFAULT NULL,
  `m_user_id` int(11) DEFAULT NULL,
  `company_Id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tender_mapped_users`
--

INSERT INTO `tender_mapped_users` (`id`, `tender_Ref_No`, `m_user_id`, `company_Id`) VALUES
(543, 'J1', 143, 'jay&company123'),
(544, 'J2', 143, 'jay&company123'),
(548, 'A1', 146, 'Raj&company123'),
(550, 'R1', 143, 'jay&company123'),
(551, 'J1', 146, 'Raj&company123'),
(553, 'J1', 144, 'Aashire&company123'),
(554, 'J1', 145, 'Aashire&company123'),
(555, 'J2', 146, 'Raj&company123'),
(557, 'A2', 146, 'Raj&company123'),
(567, 'A1', 144, 'Aashire&company123'),
(569, 'R1', 146, 'Raj&company123'),
(570, 'A2', 145, 'Aashire&company123'),
(571, 'A2', 144, 'Aashire&company123');

-- --------------------------------------------------------

--
-- Table structure for table `tender_master`
--

CREATE TABLE `tender_master` (
  `tender_Ref_No` varchar(255) NOT NULL,
  `tender_ID` int(255) NOT NULL,
  `org_Name` varchar(255) DEFAULT NULL,
  `tender_Details` text DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `product_category` varchar(255) DEFAULT NULL,
  `product` varchar(255) DEFAULT NULL,
  `procurement_type` varchar(100) DEFAULT NULL,
  `doc_fees` decimal(10,2) DEFAULT NULL,
  `EMD_Fees` decimal(10,2) DEFAULT NULL,
  `tender_estimated_cost` decimal(15,2) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `contact_Person` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `email_id` varchar(255) DEFAULT NULL,
  `phone_no` varchar(20) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `publication_date` varchar(20) DEFAULT NULL,
  `submission_date` varchar(20) DEFAULT NULL,
  `pre_bid_submission_date` varchar(20) DEFAULT NULL,
  `pre_bid_meeting_date` varchar(20) DEFAULT NULL,
  `opening_date` varchar(255) DEFAULT NULL,
  `project_end_date` varchar(255) DEFAULT NULL,
  `bid_validity_days` int(11) DEFAULT NULL,
  `project_period_months` int(11) DEFAULT NULL,
  `upload_documents` varchar(255) DEFAULT NULL,
  `stage` varchar(100) DEFAULT 'Initial',
  `comments` text DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` date NOT NULL DEFAULT current_timestamp(),
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_date` varchar(20) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `f_For_Data` tinyint(1) NOT NULL DEFAULT 0,
  `isPq` tinyint(1) NOT NULL DEFAULT 0,
  `isBoq` tinyint(1) NOT NULL DEFAULT 0,
  `isFreetender` tinyint(1) NOT NULL DEFAULT 0,
  `userDetailUserId` int(11) NOT NULL,
  `isCorrigendum` tinyint(1) NOT NULL DEFAULT 0,
  `company_Id` varchar(255) DEFAULT NULL,
  `refund_Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tender_master`
--

INSERT INTO `tender_master` (`tender_Ref_No`, `tender_ID`, `org_Name`, `tender_Details`, `city`, `state`, `country`, `product_category`, `product`, `procurement_type`, `doc_fees`, `EMD_Fees`, `tender_estimated_cost`, `quantity`, `contact_Person`, `designation`, `email_id`, `phone_no`, `address`, `source`, `tags`, `publication_date`, `submission_date`, `pre_bid_submission_date`, `pre_bid_meeting_date`, `opening_date`, `project_end_date`, `bid_validity_days`, `project_period_months`, `upload_documents`, `stage`, `comments`, `created_by`, `created_date`, `updated_by`, `updated_date`, `user_id`, `f_For_Data`, `isPq`, `isBoq`, `isFreetender`, `userDetailUserId`, `isCorrigendum`, `company_Id`, `refund_Date`) VALUES
('J1', 111112, 'pen', 'pencil', 'Georgetown', 'Demerara-Mahaica', 'Guyana', 'HM', 'Good', 'Buy', 1000.00, 10000.00, 1000.00, 500, 'raj', 'HM', 'raj1@gmail.com', '7418529633', 'Ahmedabad', 'dm', '#hj #fg #hm', '2024-06-17', '2024-05-27', '2024-05-28', '2024-05-27', '2024-06-04', '2024-08-03', 30, 1, NULL, 'Initial', NULL, NULL, '2024-06-14', NULL, '2024-06-15 15:41:04', 140, 1, 0, 0, 0, 0, 0, 'jay&company123', '2027-08-25'),
('J2', 111113, 'cello', 'cello box', 'Adrogué', 'Buenos Aires', 'Argentina', 'cg vhbjk', 'Service', 'Rent/Lease', 3000.00, 30000.00, 1500.00, 500, 'harsh', 'jh', 'harsh@gmail.com', '7894561233', 'Rajkot', 'gcf', '#po #op #ju', '2024-06-25', '2024-07-22', '2024-06-05', '2024-07-17', '2024-06-04', '2024-10-02', 60, 2, NULL, 'Initial', NULL, NULL, '2024-06-14', NULL, '2024-06-14 17:05:11', 140, 1, 0, 0, 0, 0, 0, 'jay&company123', '0000-00-00'),
('A1', 111114, 'Aashir Company', 'This is the Aashir Company', 'Canberra', 'Australian Capital Territory', 'Australia', '#pc', 'Works', 'Maintenance', 20000000.00, 99999999.99, 200000000.00, 20000000, 'Aashir', 'CEO', 'aashirmansuri@gmail.com', '9898989123', 'Navrangpura Muslim Soc', 'Website', '#PC #monbile', '2024-06-05', '2024-06-03', '2024-06-04', '2024-06-12', '2025-06-12', '2025-07-13', 1, 1, NULL, 'Initial', NULL, NULL, '2024-06-14', NULL, '2024-06-25 10:54:42', 141, 1, 0, 0, 0, 0, 0, 'Aashire&company123', '0000-00-00'),
('R1', 111115, 'Raj&company', 'TV tender', 'Dar el Beïda', 'Alger', 'Algeria', 'dsfdf', 'Good', 'Buy', 15500.00, 100.00, 122.00, 23, 'fdssd', 'werwer', 'r1@gmail.com', '234234', 'Bopal', 'ew', 'wer', '2024-06-03', '2024-05-28', '2024-05-28', '2024-06-04', '2024-05-27', '2028-05-03', 87, 45, NULL, 'Initial', NULL, NULL, '2024-06-14', NULL, '2024-06-14 17:10:52', 142, 1, 0, 0, 0, 0, 0, 'Raj&company123', '0000-00-00'),
('A2', 111116, 'Aashir AND Company', 'This is aashir company', 'Ahmedabad', 'Gujarat', 'India', '#MOBILE', 'Good', 'Buy', 300000.00, 4000000.00, 20000.00, 20, 'aashir', 'CEO', 'aashir@gmail.com', '2384489', '301 nasir app', 'website', '#mobil', '2024-06-10', '2024-06-02', '2024-06-11', '2024-05-26', '2024-06-12', '2024-08-12', 1, 2, NULL, 'Initial', NULL, NULL, '2024-06-14', NULL, '2024-06-20 18:40:39', 141, 1, 0, 0, 0, 0, 0, 'Aashire&company123', '0000-00-00'),
('sdsd', 111117, 'dasdk', 'kjkjdskj', 'Astara', 'Astara', 'Azerbaijan', 'dsdmsm', 'Good', 'Buy', 232329.00, 98283298.00, 98298398.00, 982983, 'skjdskj', 'skjdskj', 'kskjdkj', '2323', 'nsadkjasj', 'kjskjdkj', 'jksdkjs', '2024-06-10', '2024-06-02', '2024-06-04', '2024-06-04', '2024-06-18', '2024-07-19 00:00:00', 1, 1, NULL, 'Initial', NULL, NULL, '2024-06-28', NULL, '', 141, 1, 0, 0, 0, 0, 0, 'Aashire&company123', '2024-05-05'),
('smdjij', 111118, 'kjskjdkj', 'kjskjskjd', 'Fayzabad', 'Badakhshan', 'Afghanistan', 'sndkj', 'Good', 'Sell', 2323.00, 2323.00, 23232.00, 233, 'dmdsaf', 'sjkd', 'kjskjd', '2323', 'slkskjd', 'kjskjdk', 'kjsdj', '2024-06-25', '2024-06-11', '2024-06-09', '2024-06-17', '2024-06-20', '2024-09-09 00:00:00', 21, 2, NULL, 'Initial', NULL, NULL, '2024-06-28', NULL, '', 141, 1, 0, 0, 0, 0, 0, 'Aashire&company123', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `tender_pq`
--

CREATE TABLE `tender_pq` (
  `id` int(11) NOT NULL,
  `pq_condition` varchar(255) DEFAULT NULL,
  `pq_status` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `upload_doc` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `create_date_time` date DEFAULT current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `update_date_time` varchar(20) DEFAULT NULL,
  `tender_Ref_No` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `company_Id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tender_pq`
--

INSERT INTO `tender_pq` (`id`, `pq_condition`, `pq_status`, `comment`, `upload_doc`, `created_by`, `create_date_time`, `updated_by`, `update_date_time`, `tender_Ref_No`, `user_id`, `company_Id`) VALUES
(167, 'JH', 'Non Compliance', 'JK ', 'public\\uploads\\Next-2.JPG', 140, '2024-06-14', NULL, NULL, 'Test1', 140, 'jay&company123'),
(168, 'BGMI', 'Non Compliance', 'JK', 'public\\uploads\\Next-2.JPG', 140, '2024-06-14', NULL, NULL, 'J1', 140, 'jay&company123'),
(169, 'PQ', 'Compliance', 'This is testing', 'public\\uploads\\Next-Screenshot (316).png', 141, '2024-06-18', NULL, NULL, 'J1', 141, 'Aashire&company123'),
(170, 'This is testing', 'Non Compliance', 'This is testing2', 'public\\uploads\\Next-Screenshot (317).png', 141, '2024-06-18', NULL, NULL, 'J1', 141, 'Aashire&company123'),
(171, 'company length 200', 'Compliance', 'complied', 'public\\uploads\\Next-Screenshot (323).png', 141, '2024-06-19', NULL, NULL, '2024_kmda_691485_1', 141, 'Aashire&company123'),
(172, 'Add pq', 'Compliance', 'aad pr', 'public\\uploads\\Next-Screenshot (320).png', 141, '2024-06-24', NULL, NULL, '2023_nhai_179097_1', 141, 'Aashire&company123'),
(173, 'Aashir', 'Noncompliance', 'Aashir', 'public\\uploads\\Next-Screenshot (320).png', 141, '2024-06-24', NULL, NULL, '2023_nhai_179097_1', 141, 'Aashire&company123'),
(174, 'sdsd', 'Compliance', 'ds', 'public\\uploads\\Next-Screenshot (320).png', 141, '2024-06-24', NULL, NULL, 'A2', 141, 'Aashire&company123'),
(175, 'ds', 'Compliance', 'ffsd', 'public\\uploads\\Next-Screenshot (320).png', 141, '2024-06-25', NULL, NULL, 'J1', 141, 'Aashire&company123'),
(190, 'Testing1', 'Compliance', 'Testing1', 'public\\uploads\\Next-Screenshot (316).png', 141, '2024-06-26', NULL, NULL, 'A1', 141, 'Aashire&company123'),
(191, 'Testing2', 'Non Compliance', 'Testing2', 'public\\uploads\\Next-Screenshot (317).png', 141, '2024-06-26', NULL, NULL, 'A1', 141, 'Aashire&company123'),
(192, 'Testing3', 'Non Compliance', 'Testing1', 'public\\uploads\\Next-Screenshot (318).png', 141, '2024-06-26', NULL, NULL, 'A1', 141, 'Aashire&company123'),
(193, 'Testing4', 'Compliance', 'Testing4', 'public\\uploads\\Next-Screenshot (322).png', 141, '2024-06-26', NULL, NULL, 'A1', 141, 'Aashire&company123'),
(194, 'Testing5', 'Non Compliance', 'Testing5', 'public\\uploads\\Next-Screenshot (323).png', 141, '2024-06-26', NULL, NULL, 'A1', 141, 'Aashire&company123'),
(195, 'Testing6', 'Non Compliance', 'Testing6', 'public\\uploads\\Next-Screenshot (357).png', 141, '2024-06-26', NULL, NULL, 'A1', 141, 'Aashire&company123'),
(196, 'Testing7', 'Non Compliance', 'Testing7', 'public\\uploads\\Next-Screenshot (318).png', 141, '2024-06-26', NULL, NULL, 'A1', 141, 'Aashire&company123'),
(197, 'Nothing', 'Noncompliance', 'R! first', 'public\\uploads\\Next-Screenshot (3).png', 142, '2024-06-27', NULL, NULL, 'R1', 142, 'Raj&company123'),
(198, 'r1 pq', 'Compliance', 'PQ description', 'public\\uploads\\Next-Screenshot (1).png', 142, '2024-06-27', NULL, NULL, 'R1', 142, 'Raj&company123'),
(199, 'testing diffrenttender', 'Non Compliance', 'testing diffrenttender', 'public\\uploads\\Next-Screenshot (321).png', 141, '2024-06-27', NULL, NULL, 'A2', 141, 'Aashire&company123'),
(200, 'fdfs', 'Non Compliance', 'adsads', 'public\\uploads\\Next-Screenshot (316).png', 141, '2024-06-28', NULL, NULL, 'A2', 141, 'Aashire&company123'),
(201, 'sds', 'Compliance', 'dsads', 'public\\uploads\\Next-Screenshot (316).png', 141, '2024-06-28', NULL, NULL, 'A2', 141, 'Aashire&company123'),
(202, 'dsds', 'Compliance', 'sdsd', 'public\\uploads\\Next-Screenshot (319).png', 141, '2024-06-28', NULL, NULL, 'A2', 141, 'Aashire&company123'),
(203, 'dsadsa', 'Compliance', 'sadsad', 'public\\uploads\\Next-Screenshot (317).png', 141, '2024-06-28', NULL, NULL, 'A2', 141, 'Aashire&company123'),
(204, 'sdsd', 'Compliance', 'ddsas', 'public\\uploads\\Next-Screenshot (317).png', 141, '2024-06-28', NULL, NULL, 'A2', 141, 'Aashire&company123'),
(205, 'adsadas', 'Non Compliance', 'sdasds', 'public\\uploads\\Next-Screenshot (317).png', 141, '2024-06-28', NULL, NULL, 'A2', 141, 'Aashire&company123'),
(206, 'sdasdsd', 'Non Compliance', 'adsadsad', '', 141, '2024-06-28', NULL, NULL, 'A2', 141, 'Aashire&company123'),
(207, 'ssadsd', 'Non Compliance', 'sdsads', '', 141, '2024-06-28', NULL, NULL, 'J2', 141, 'Aashire&company123'),
(208, 'sdsadsa', 'Non Compliance', 'dsdsadsadsadasds', 'public\\uploads\\Next-Screenshot (316).png', 141, '2024-06-28', NULL, NULL, 'J2', 141, 'Aashire&company123'),
(209, 'dssdsdsadsadsadsa', 'Non Compliance', 'sdsadsads', 'public\\uploads\\Next-Screenshot (316).png', 141, '2024-06-28', NULL, NULL, 'J2', 141, 'Aashire&company123'),
(210, 'dsdsadsdsa', 'Non Compliance', 'sddsadsad', 'public\\uploads\\Next-Screenshot (316).png', 141, '2024-06-28', NULL, NULL, 'J2', 141, 'Aashire&company123'),
(211, 'sdsds', 'Compliance', 'sdsdas', '', 141, '2024-06-28', NULL, NULL, 'J2', 141, 'Aashire&company123'),
(212, 'wsdasd', 'Non Compliance', 'dshsdadjs', 'public\\uploads\\Next-Screenshot (320).png', 141, '2024-06-28', NULL, NULL, 'J2', 141, 'Aashire&company123'),
(213, 'dsdasd', 'Non Compliance', 'skjdkjalsdkj', 'public\\uploads\\Next-Screenshot (320).png', 141, '2024-06-28', NULL, NULL, 'J2', 141, 'Aashire&company123'),
(214, 'ekjfdkjdskjfkj', 'Non Compliance', 'sdkjasdkjsjk', 'public\\uploads\\Next-Screenshot (316).png', 141, '2024-06-28', NULL, NULL, 'J2', 141, 'Aashire&company123'),
(215, 'slkjdskjds', 'Non Compliance', 'slkjdjkskj', 'public\\uploads\\Next-Screenshot (319).png', 141, '2024-06-28', NULL, NULL, 'J2', 141, 'Aashire&company123'),
(216, 'sdsdsa', '', '', '', 141, '2024-06-28', NULL, NULL, 'J2', 141, 'Aashire&company123'),
(217, 'sdsdas', 'Non Compliance', '', '', 141, '2024-06-28', NULL, NULL, 'J2', 141, 'Aashire&company123'),
(218, 'xcxcxz', 'Compliance', 'axczkjc', 'public\\uploads\\Next-Screenshot (316).png', 141, '2024-06-28', NULL, NULL, 'J2', 141, 'Aashire&company123'),
(219, 'slksdlksd', 'Non Compliance', 'lkjsdskjd', 'public\\uploads\\Next-Screenshot (316).png', 141, '2024-06-28', NULL, NULL, 'J2', 141, 'Aashire&company123'),
(220, 'sadlsakdlks', 'Non Compliance', 'sdkljskjskakj', 'public\\uploads\\Next-Screenshot (321).png', 141, '2024-06-28', NULL, NULL, 'J2', 141, 'Aashire&company123'),
(221, 'sdsdas', 'Non Compliance', 'sdsldsl', '', 141, '2024-06-28', NULL, NULL, 'A2', 141, 'Aashire&company123'),
(222, 'sdsdsa', 'Non Compliance', 'sdsadsad', 'public\\uploads\\Next-Screenshot (316).png,public\\uploads\\Next-Screenshot (317).png,public\\uploads\\Next-Screenshot (318).png,public\\uploads\\Next-Screenshot (316).png', 141, '2024-06-28', NULL, NULL, 'A2', 141, 'Aashire&company123'),
(223, 'aashir', 'Non Compliance', '\r\nskjdsjdjk', 'public\\uploads\\Next-Screenshot (316).png', 141, '2024-06-29', NULL, NULL, 'A2', 141, 'Aashire&company123'),
(224, 'aashir', 'Non Compliance', 'skjsjdk', 'public\\uploads\\Next-Screenshot (316).png', 141, '2024-06-29', NULL, NULL, 'A2', 141, 'Aashire&company123'),
(225, 'adsa', 'Non Compliance', '\r\ndsdhj', 'public\\uploads\\Next-Screenshot (316).png', 141, '2024-06-29', NULL, NULL, 'A2', 141, 'Aashire&company123'),
(226, 'sdjsj', 'Non Compliance', 'skjdkj', 'public\\uploads\\Next-Screenshot (317).png,public\\uploads\\Next-Screenshot (318).png', 141, '2024-06-29', NULL, NULL, 'A2', 141, 'Aashire&company123'),
(227, 'sdds', 'Non Compliance', 'sdas', 'public\\uploads\\Next-Screenshot (319).png', 141, '2024-06-29', NULL, NULL, 'A2', 141, 'Aashire&company123'),
(228, 'iuhui', 'Compliance', 'iuhuhii', '', 141, '2024-07-01', NULL, NULL, 'A2', 141, 'Aashire&company123'),
(229, 'dsdsa', 'Non Compliance', 'adsd', 'public\\uploads\\Next-Screenshot (316).png', 141, '2024-07-01', NULL, NULL, 'A2', 141, 'Aashire&company123'),
(230, '', '', '', '', 141, '2024-07-03', NULL, NULL, 'A2', 141, 'Aashire&company123');

-- --------------------------------------------------------

--
-- Table structure for table `tender_pre_bid`
--

CREATE TABLE `tender_pre_bid` (
  `id` int(11) NOT NULL,
  `date_and_time` varchar(20) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `page_number` int(11) DEFAULT NULL,
  `paragraph_number` int(11) DEFAULT NULL,
  `paragraph_content` text DEFAULT NULL,
  `question` text DEFAULT NULL,
  `documents` text DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `revise_content` text DEFAULT NULL,
  `govt_reply` text DEFAULT NULL,
  `is_doc_paid` tinyint(1) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `create_date_time` date DEFAULT current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `update_date_time` varchar(20) DEFAULT NULL,
  `tender_Ref_No` varchar(255) DEFAULT NULL,
  `by_company` varchar(255) DEFAULT NULL,
  `p_user` varchar(255) NOT NULL,
  `company_Id` varchar(255) DEFAULT NULL,
  `checkquery` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tender_pre_bid`
--

INSERT INTO `tender_pre_bid` (`id`, `date_and_time`, `company_name`, `page_number`, `paragraph_number`, `paragraph_content`, `question`, `documents`, `status`, `revise_content`, `govt_reply`, `is_doc_paid`, `created_by`, `create_date_time`, `updated_by`, `update_date_time`, `tender_Ref_No`, `by_company`, `p_user`, `company_Id`, `checkquery`) VALUES
(210, NULL, 'self', 5, 2, 'Information Technology', 'what is your name', 'public\\uploads\\Next-2.JPG', 'Rejected', NULL, 'Completed now', NULL, 140, '2024-06-14', 141, '2024-06-18 17:10:19', 'J1', NULL, 'jay', 'jay&company123', NULL),
(211, NULL, 'self', 10, 210, '20392', 'This is testing', 'public\\uploads\\Next-Screenshot (320).png', 'Rejected', NULL, 'Completed', NULL, 141, '2024-06-18', 141, '2024-06-18 17:09:13', 'J1', NULL, 'Aashir', 'Aashire&company123', NULL),
(212, NULL, 'self', 40, 30, 'This is testing', 'This is testing', 'public\\uploads\\Next-Screenshot (321).png', 'Approved', NULL, 'completed', NULL, 141, '2024-06-18', 141, '2024-06-18 17:07:10', 'J1', NULL, 'Aashir', 'Aashire&company123', NULL),
(213, NULL, 'TestingCOmpoany', 2, 209, 'This is testing Company', 'This is testing', 'public\\uploads\\Next-Screenshot (321).png', 'Approved', NULL, NULL, NULL, 141, '2024-06-18', NULL, NULL, 'J1', NULL, 'Aashir', 'Aashire&company123', NULL),
(214, NULL, 'self', 5, 2, 'Second para', 'Question 1 ', 'public\\uploads\\Next-Screenshot (323).png', 'completed', NULL, 'Reply 1', NULL, 141, '2024-06-19', 141, '2024-06-19 13:40:44', '2024_kmda_691485_1', NULL, 'Aashir', 'Aashire&company123', NULL),
(215, NULL, 'self', 3, 8, 'Third para', 'Question 2', 'public\\uploads\\Next-Screenshot (322).png', 'Rejected', NULL, NULL, NULL, 141, '2024-06-19', NULL, NULL, '2024_kmda_691485_1', NULL, 'Aashir', 'Aashire&company123', NULL),
(216, NULL, 'self', 10, 210, 'Testing', 'testing', 'public\\uploads\\Next-Screenshot (316).png', 'completed', NULL, 'sdsds', NULL, 141, '2024-06-20', 141, '2024-06-29 16:45:38.', 'A2', NULL, 'Aashir', 'Aashire&company123', NULL),
(217, NULL, 'self', 10, 20, 'Testing', 'Tesitng', 'public\\uploads\\Next-Screenshot (320).png', 'completed', NULL, 'completed', NULL, 141, '2024-06-24', 141, '2024-06-24 15:40:02', '2023_nhai_179097_1', NULL, 'Aashir', 'Aashire&company123', NULL),
(218, NULL, 'self', 20, 20, 'Testing2', 'Testing2', 'public\\uploads\\Next-Screenshot (321).png', 'Rejected', NULL, NULL, NULL, 141, '2024-06-24', NULL, NULL, '2023_nhai_179097_1', NULL, 'Aashir', 'Aashire&company123', NULL),
(219, NULL, 'Testing', 20, 20, '20', 'testing4', 'public\\uploads\\Next-Screenshot (320).png', 'Rejected', NULL, NULL, NULL, 141, '2024-06-24', NULL, NULL, '2023_nhai_179097_1', NULL, 'Aashir', 'Aashire&company123', NULL),
(220, NULL, 'aashir', 29, 29, 'Testing3', 'Tesing 2', 'public\\uploads\\Next-Screenshot (316).png', 'completed', NULL, 'sdsd', NULL, 141, '2024-06-24', 141, '2024-06-29 16:46:13.', 'A2', NULL, 'Aashir', 'Aashire&company123', NULL),
(221, NULL, 'Testing3', 10, 20, 'Testintg', 'testing', 'public\\uploads\\Next-Screenshot (321).png', 'Rejected', NULL, NULL, NULL, 141, '2024-06-24', NULL, NULL, 'A2', NULL, 'Aashir', 'Aashire&company123', NULL),
(222, NULL, 'self', 23, 32, 'ssdksk', 'kjkj', 'public\\uploads\\Next-Screenshot (317).png', 'Rejected', NULL, NULL, NULL, 141, '2024-06-26', NULL, NULL, 'A1', NULL, 'Aashir', 'Aashire&company123', NULL),
(223, NULL, 'self', 23, 23, '232', 'sds', 'public\\uploads\\Next-Screenshot (320).png', '', NULL, NULL, NULL, 141, '2024-06-26', NULL, NULL, 'A1', NULL, 'Aashir', 'Aashire&company123', NULL),
(224, NULL, 'self', 323, 3232, 'skjsd', 'kjsdkjs', 'public\\uploads\\Next-Screenshot (320).png', '', NULL, NULL, NULL, 141, '2024-06-26', NULL, NULL, 'A1', NULL, 'Aashir', 'Aashire&company123', NULL),
(225, NULL, 'self', 323, 232, 'dksjkjd', 'jskjdkjds', 'public\\uploads\\Next-Screenshot (316).png', '', NULL, NULL, NULL, 141, '2024-06-26', NULL, NULL, 'A1', NULL, 'Aashir', 'Aashire&company123', NULL),
(226, NULL, 'self', 2323, 23231, 'sdsd', 'aesdsd', 'public\\uploads\\Next-Screenshot (320).png', 'Approved', NULL, NULL, NULL, 141, '2024-06-26', NULL, NULL, 'A1', NULL, 'Aashir', 'Aashire&company123', NULL),
(227, NULL, 'self', 432434, 34343, 'kxjxkjcj', 'skjkjsdkj', 'public\\uploads\\Next-Screenshot (321).png', 'Rejected', NULL, NULL, NULL, 141, '2024-06-26', NULL, NULL, 'A1', NULL, 'Aashir', 'Aashire&company123', NULL),
(228, NULL, 'self', 741, 741, 'ewrt', 'werty', 'public\\uploads\\Next-Rectangle 4.png', 'Rejected', NULL, NULL, NULL, 141, '2024-06-26', NULL, NULL, 'A1', NULL, 'Aashir', 'Aashire&company123', NULL),
(229, NULL, 'self', 87, 897, 'txfcygvhub', 'drtfgyu', 'public\\uploads\\Next-Desktop - 2.png', 'Rejected', NULL, NULL, NULL, 141, '2024-06-26', NULL, NULL, 'A1', NULL, 'Aashir', 'Aashire&company123', NULL),
(230, NULL, 'self', 233, 22332, 'sdadas', 'sdsadsdsa', 'public\\uploads\\Next-Screenshot (321).png', '', NULL, NULL, NULL, 141, '2024-06-26', NULL, NULL, 'A1', NULL, 'Aashir', 'Aashire&company123', NULL),
(231, NULL, 'self', 0, 0, 'sds', 'dsdsa', 'public\\uploads\\Next-Screenshot (322).png', '', NULL, NULL, NULL, 141, '2024-06-26', NULL, NULL, 'A1', NULL, 'Aashir', 'Aashire&company123', NULL),
(232, NULL, 'self', 0, 0, '223', 'dsadsa', 'public\\uploads\\Next-Screenshot (318).png', '', NULL, NULL, NULL, 141, '2024-06-26', NULL, NULL, 'A1', NULL, 'Aashir', 'Aashire&company123', NULL),
(233, NULL, 'self', 0, 0, 'ewe', 'xzcxczx', 'public\\uploads\\Next-Screenshot (321).png', '', NULL, NULL, NULL, 141, '2024-06-26', NULL, NULL, 'A1', NULL, 'Aashir', 'Aashire&company123', '0'),
(234, NULL, 'self', 232, 3232, 'dssa', 'sdsadas', 'public\\uploads\\Next-Screenshot (322).png', '', NULL, NULL, NULL, 141, '2024-06-26', NULL, NULL, 'A1', NULL, 'Aashir', 'Aashire&company123', '0'),
(235, NULL, 'self', 343, 434, 'dfxv', 'dsdfdf', 'public\\uploads\\Next-Screenshot (324).png', '', NULL, NULL, NULL, 141, '2024-06-26', NULL, NULL, 'A1', NULL, 'Aashir', 'Aashire&company123', 'false'),
(236, NULL, 'self', 0, 0, '343', '34343', 'public\\uploads\\Next-Screenshot (319).png', '', NULL, NULL, NULL, 141, '2024-06-26', NULL, NULL, 'A1', NULL, 'Aashir', 'Aashire&company123', 'true'),
(237, NULL, 'self', 1232, 323, 'sdsd', 'sdsdsda', 'public\\uploads\\Next-Screenshot (320).png', 'completed', NULL, 'sdsd', NULL, 141, '2024-06-28', 141, '2024-06-29 15:44:26.', 'A2', NULL, 'Aashir', 'Aashire&company123', 'false'),
(238, NULL, 'self', 3478, 387, 'nnmeakj', 'kskjd', 'public\\uploads\\Next-Screenshot (319).png,public\\uploads\\Next-Screenshot (320) - Copy.png,public\\uploads\\Next-Screenshot (320).png', '', NULL, NULL, NULL, 145, '2024-06-28', NULL, NULL, 'A2', NULL, 'zuber Sir', 'Aashire&company123', 'false'),
(239, NULL, 'self', 92, 92, 'testing 333', 'testing 333', 'public\\uploads\\Next-Screenshot (319).png', '', NULL, NULL, NULL, 141, '2024-06-29', NULL, NULL, 'A2', NULL, 'Aashir', 'Aashire&company123', 'false'),
(240, NULL, 'self', 2, 32, 'dsdsa', 'dsads', 'public\\uploads\\Next-Screenshot (316).png', '', NULL, NULL, NULL, 141, '2024-07-03', NULL, NULL, 'A2', NULL, 'Aashir', 'Aashire&company123', 'false'),
(241, NULL, 'self', 32323, 3231, 'kjsdkjakj', 'kjdskjsk', 'public\\uploads\\Next-Screenshot (319).png', '', NULL, NULL, NULL, 141, '2024-07-03', NULL, NULL, 'A2', NULL, 'Aashir', 'Aashire&company123', 'false'),
(242, NULL, 'self', 334, 3343, 'dm,d,fm', 'fdf,mdf,', '', '', NULL, NULL, NULL, 141, '2024-07-03', NULL, NULL, 'A2', NULL, 'Aashir', 'Aashire&company123', 'false');

-- --------------------------------------------------------

--
-- Table structure for table `tender_result`
--

CREATE TABLE `tender_result` (
  `id` int(11) NOT NULL,
  `tender_Ref_No` varchar(255) NOT NULL,
  `p_Select_Bidder` varchar(255) NOT NULL,
  `p_Add_Comment` varchar(255) NOT NULL,
  `p_Qualified_emd` varchar(255) NOT NULL DEFAULT 'false',
  `p_Qualified_Document` varchar(255) NOT NULL DEFAULT 'false',
  `t_Select_Bidder` varchar(255) NOT NULL,
  `t_Qualified` varchar(255) NOT NULL DEFAULT 'No',
  `t_Add_Comment` varchar(255) NOT NULL,
  `f_Select_Bidder` varchar(255) NOT NULL,
  `f_Qualified` varchar(255) NOT NULL DEFAULT 'Null',
  `f_Add_Comment` varchar(255) NOT NULL,
  `created_By` int(11) NOT NULL,
  `bidder_id` int(11) NOT NULL,
  `f_amount` int(11) NOT NULL,
  `company_Id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tender_result`
--

INSERT INTO `tender_result` (`id`, `tender_Ref_No`, `p_Select_Bidder`, `p_Add_Comment`, `p_Qualified_emd`, `p_Qualified_Document`, `t_Select_Bidder`, `t_Qualified`, `t_Add_Comment`, `f_Select_Bidder`, `f_Qualified`, `f_Add_Comment`, `created_By`, `bidder_id`, `f_amount`, `company_Id`) VALUES
(185, 'J1', 'financial', 'this is testing finnical 2', 'true', 'false', '44', 'No', 'NOT QUALIFED FOR FINICAL', '44', 'R2', 'nm', 140, 44, 54, NULL),
(186, 'J1', 'AashirTesting', 'this is testing', 'true', 'true', '45', 'Yes', 'Yes aashir qualifed for technical', '45', 'R1', 'aASHIR IS QALIFIED', 141, 45, 300000, NULL),
(187, 'J1', 'Raj Testing', 'testing raj', 'true', 'true', '46', 'No', 'NO qULIFIED FOR RAJ', '', 'Null', '', 141, 46, 0, NULL),
(188, '2024_kmda_691485_1', 'B1', 'Qualified', 'true', 'true', '48', 'Yes', 'Qualified', '48', 'R1', 'R1', 141, 48, 500000, NULL),
(189, '2024_kmda_691485_1', 'B2', 'Qualified', 'true', 'true', '49', 'Yes', 'Qualified', '49', 'R2', 'R2', 141, 49, 3000, NULL),
(190, '2024_kmda_691485_1', 'B3', 'disqualified', 'false', 'false', '', 'No', '', '', 'Null', '', 141, 50, 0, NULL),
(194, 'A2', 'raj', '', 'true', 'false', '55', 'Yes', '', '', 'Null', '', 141, 55, 0, NULL),
(196, 'J1', 'Raju testings', '', 'true', 'true', '', 'No', '', '', 'Null', '', 141, 59, 0, NULL),
(210, 'A1', 'aashir', 'ssdsds', 'true', 'false', '', 'No', '', '', 'Null', '', 141, 61, 0, NULL),
(211, 'A2', '', '', 'false', 'false', '', 'No', '', '', 'Null', '', 141, 0, 0, NULL),
(212, 'J2', '', '', 'false', 'false', '', 'No', '', '', 'Null', '', 142, 0, 0, NULL),
(213, 'A2', 'EPTL', '', 'true', 'true', '63', 'Yes', '', '', 'Null', '', 141, 63, 0, NULL),
(214, 'R1', '', '', 'false', 'false', '', 'No', '', '', 'Null', '', 142, 0, 0, NULL),
(215, 'A2', '', 'sdsdsa', 'true', 'false', '', 'No', '', '', 'Null', '', 141, 1, 0, NULL),
(216, 'J2', 'Raj&company', 'sdsdfds', '0', '0', '', 'No', '', '', 'Null', '', 142, 1, 0, NULL),
(217, 'A2', 'dev', 'ssads', 'true', 'true', '64', 'Yes', '', '', 'Null', '', 141, 64, 0, NULL),
(218, '332', 'jay&company', 'dasds', 'true', 'true', '', 'No', '', '', 'Null', '', 142, 1, 0, NULL),
(219, '332', 'Raj&company', 'wer', 'true', 'true', '', 'No', '', '', 'Null', '', 142, 71, 0, NULL),
(220, '332', 'Raj&company', 'sdasdasdad', 'true', 'true', '72', 'Yes', 'dfgdfgdfg', '72', 'R1', 'dfsd', 142, 72, 0, NULL),
(221, '332', 'dev', 'fghghf', 'true', 'true', '73', 'Yes', 'tryy', '73', 'R1', 'yjty', 142, 73, 0, NULL),
(222, '332', 'new dev', 'wqwew', 'true', 'true', '75', 'Yes', 'dsfdf', '', 'Null', '', 140, 75, 0, NULL),
(223, '332', 'jatin', 'adssd', 'true', 'true', '74', 'Yes', 'dds', '74', 'R2', 'sda', 142, 74, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_department`
--

CREATE TABLE `user_department` (
  `id` int(11) NOT NULL,
  `department` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_By` varchar(255) NOT NULL,
  `company_Id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_department`
--

INSERT INTO `user_department` (`id`, `department`, `description`, `created_By`, `company_Id`) VALUES
(120, 'IT', 'information technology', '140', NULL),
(121, 'Devloper', 'React Devloper', '141', NULL),
(122, 'Financial', 'dsdad', '142', NULL),
(123, 'Technical', 'sdff', '142', NULL),
(124, 'Managment', 'this is managment ', '141', NULL),
(125, 'Finicial', 'this is fincial department', '141', NULL),
(126, '', '', '141', NULL),
(127, '', '', '141', NULL),
(128, 'Manager', 'THis is manager', '141', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `user_id` int(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `phone_number` varchar(10) NOT NULL,
  `email_id` varchar(255) NOT NULL,
  `role` varchar(255) DEFAULT NULL,
  `Financial_limit` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `Emploee_level` varchar(255) DEFAULT NULL,
  `user_password` varchar(255) NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `create_date_time` date NOT NULL DEFAULT current_timestamp(),
  `updated_by` varchar(255) DEFAULT NULL,
  `f_tender` tinyint(1) DEFAULT 1,
  `f_pq` tinyint(1) DEFAULT 0,
  `f_pre_bid_round` tinyint(1) DEFAULT 0,
  `f_corrigendum` tinyint(1) DEFAULT 0,
  `f_envelope` tinyint(1) DEFAULT 0,
  `f_payment_envelope` tinyint(1) DEFAULT 0,
  `f_tender_result` tinyint(1) DEFAULT 0,
  `f_negotiation` tinyint(1) DEFAULT 0,
  `f_apo_po` tinyint(1) DEFAULT 0,
  `f_cms` tinyint(1) DEFAULT 0,
  `update_date_time` varchar(20) DEFAULT NULL,
  `company_Id` varchar(255) DEFAULT NULL,
  `otp` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`user_id`, `user_name`, `phone_number`, `email_id`, `role`, `Financial_limit`, `department`, `Emploee_level`, `user_password`, `created_by`, `create_date_time`, `updated_by`, `f_tender`, `f_pq`, `f_pre_bid_round`, `f_corrigendum`, `f_envelope`, `f_payment_envelope`, `f_tender_result`, `f_negotiation`, `f_apo_po`, `f_cms`, `update_date_time`, `company_Id`, `otp`) VALUES
(140, 'jay', '8787878787', 'jay@gmail.com', '', '123231', 'Admin', 'L1', '$2a$10$SonPZpWBCIrNJs7ZdXgfo.7BjI3mhgydV58G1vAnMlSNTmvBfVMqC', 'Devloper', '2024-06-14', NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2024-06-14', 'jay&company123', ''),
(141, 'Aashir', '2343423', 'aashir@gmail.com', NULL, '23232323', 'Admin', 'L!', '$2a$10$WRGSZaGcbhP.neOsAKz/huW.wtCbco9SF2AohnXM.8WcvxN0m2Ojm', 'Devloper', '2024-06-14', NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2024-06-14', 'Aashire&company123', ''),
(142, 'Raj', '34234234', '190320107007.ce.raj.bhimjiyani@gmail.com', NULL, '23423423', 'Admin', 'L1', '$2a$10$EiBmf7agfeslqxc.KHvR4eurdWbTA4yKvUhUtGqADbz3wGcwXTMvS', 'Devloper', '2024-06-14', NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2024-06-14', 'Raj&company123', ''),
(143, 'harsh123', '7896321455', 'harsh123@gmail.com', '', NULL, 'IT', NULL, '$2a$10$5v6jWYpWiWUfe6wdAV38O.D5tUNTdT3Xc.5.UDXLMujUM0uhpVvMC', '140', '2024-06-14', NULL, 1, 0, 0, 1, 0, 1, 1, 0, 0, 1, '2024-06-14', 'jay&company123', ''),
(144, 'gulam', '9898989812', 'gulam@gmail.com', '', NULL, 'Devloper', NULL, '$2a$10$bLDYN7PbgRD/dXI7Howe6Oa92URGUuOXmxcckRqmmZnPvz7QVwFWe', '141', '2024-06-14', NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2024-06-14', 'Aashire&company123', ''),
(145, 'zuber Sir', '93784873', 'zuber@gmail.com', '', NULL, 'Devloper', NULL, '$2a$10$5UAFOx20Jf.3ltkYaUZV5eNaDb.FpSTLiGtW0.3RH0MLLGDeGys9S', '141', '2024-06-14', NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2024-06-14', 'Aashire&company123', ''),
(146, 'jishan', '2323232322', 'jishan123@gmail.com', 'financial', '100000', 'IT', 'L1', '$2a$10$nRlu/IeGJ1gSSR6iEor/E.HyRWUUyK6s0uD21ZE5wRg0qtP3s/bcG', '142', '2024-06-14', NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2024-06-14', 'Raj&company123', ''),
(149, 'Shashi', '123456789', 'shashi@procuretiger.com', '', NULL, 'Admin', NULL, '$2a$10$JJMWiudEhFBAG9kncvy3YO2VRpEccaNiAM6Jw65lJ.LUoGYl2uVBa', 'Devloper', '2024-06-20', NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2024-06-20', 'EPTL', ''),
(151, 'test1', '1478523696', 'test1@gmail.com', '', NULL, 'Devloper', NULL, '$2a$10$9dzSVjONuVKRHNiz0TnGe.V9z.22wRpxiO4NQHXPRT8hOKbs.hPBi', '141', '2024-06-28', NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 'Aashire&company123', ''),
(152, 'test2', '1452369874', 'test2@gmail.com', '', NULL, 'Managment', NULL, '$2a$10$LNOrUFRAUywG3a/u81AaAOGeujEq2wR5Eq9ljnN6hwe/elAipBNPK', '141', '2024-06-28', NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 'Aashire&company123', ''),
(153, 'test3', '1235469877', 'test3@gmail.com', '', NULL, 'Manager', NULL, '$2a$10$SDzBaCKB5O676bIHxith5ev2WDNuWW1DASP1cjBTHKHMNjlqU6bby', '141', '2024-06-28', NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 'Aashire&company123', ''),
(154, 'test4', '132456879', 'test4@gmail.com', '', NULL, 'Manager', NULL, '$2a$10$lpxqP1I5Lv6raVZePi4rhOlZQ8gFlRI07nqr7CJOvqLDpXlrifyP6', '141', '2024-06-28', NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 'Aashire&company123', ''),
(155, 'dev', '0989080820', 'dev@gmail.com', '', NULL, 'Financial', NULL, '$2a$10$tLfMi7o7x8rMX0YmoCtiT.M1NlYmq3LCbc.yZ9FgagGRr7YaQxa5y', '142', '2024-07-01', NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 'Raj&company123', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_comment`
--
ALTER TABLE `add_comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_role`
--
ALTER TABLE `add_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `apo_po`
--
ALTER TABLE `apo_po`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bid_envelop`
--
ALTER TABLE `bid_envelop`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blacklisted_tokens`
--
ALTER TABLE `blacklisted_tokens`
  ADD PRIMARY KEY (`token`);

--
-- Indexes for table `cms`
--
ALTER TABLE `cms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_registration`
--
ALTER TABLE `company_registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `financial_limit`
--
ALTER TABLE `financial_limit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `financial_qualified`
--
ALTER TABLE `financial_qualified`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `library_of_document`
--
ALTER TABLE `library_of_document`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `make_payment`
--
ALTER TABLE `make_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `make_payment_ibfk_1` (`c_Id`);

--
-- Indexes for table `negotiation`
--
ALTER TABLE `negotiation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_configurations`
--
ALTER TABLE `payment_configurations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_qualified`
--
ALTER TABLE `payment_qualified`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pq_sub_comment`
--
ALTER TABLE `pq_sub_comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `source`
--
ALTER TABLE `source`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_coment`
--
ALTER TABLE `sub_coment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `q_Id` (`q_Id`);

--
-- Indexes for table `tblbidders`
--
ALTER TABLE `tblbidders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_of_documents`
--
ALTER TABLE `tbl_of_documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `technical_qualified`
--
ALTER TABLE `technical_qualified`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tender_actions`
--
ALTER TABLE `tender_actions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tender_corrigendum`
--
ALTER TABLE `tender_corrigendum`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`),
  ADD KEY `tender_Ref_No` (`tender_Ref_No`);

--
-- Indexes for table `tender_mapped_users`
--
ALTER TABLE `tender_mapped_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tender_Ref_No` (`tender_Ref_No`),
  ADD KEY `user_id` (`m_user_id`);

--
-- Indexes for table `tender_master`
--
ALTER TABLE `tender_master`
  ADD PRIMARY KEY (`tender_ID`) USING BTREE,
  ADD UNIQUE KEY `tender_Ref_No` (`tender_Ref_No`) USING BTREE,
  ADD KEY `user_id` (`user_id`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `tender_pq`
--
ALTER TABLE `tender_pq`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tender_Ref_No` (`tender_Ref_No`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tender_pre_bid`
--
ALTER TABLE `tender_pre_bid`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tender_Ref_No` (`tender_Ref_No`);

--
-- Indexes for table `tender_result`
--
ALTER TABLE `tender_result`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_By` (`created_By`),
  ADD KEY `tender_Ref_No` (`tender_Ref_No`),
  ADD KEY `bidder_id` (`bidder_id`);

--
-- Indexes for table `user_department`
--
ALTER TABLE `user_department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_comment`
--
ALTER TABLE `add_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `add_role`
--
ALTER TABLE `add_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `apo_po`
--
ALTER TABLE `apo_po`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `bid_envelop`
--
ALTER TABLE `bid_envelop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=237;

--
-- AUTO_INCREMENT for table `cms`
--
ALTER TABLE `cms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `company_registration`
--
ALTER TABLE `company_registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `financial_limit`
--
ALTER TABLE `financial_limit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `financial_qualified`
--
ALTER TABLE `financial_qualified`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `library_of_document`
--
ALTER TABLE `library_of_document`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `make_payment`
--
ALTER TABLE `make_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;

--
-- AUTO_INCREMENT for table `negotiation`
--
ALTER TABLE `negotiation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `payment_configurations`
--
ALTER TABLE `payment_configurations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=248;

--
-- AUTO_INCREMENT for table `payment_qualified`
--
ALTER TABLE `payment_qualified`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pq_sub_comment`
--
ALTER TABLE `pq_sub_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `source`
--
ALTER TABLE `source`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `sub_coment`
--
ALTER TABLE `sub_coment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `tblbidders`
--
ALTER TABLE `tblbidders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `tbl_of_documents`
--
ALTER TABLE `tbl_of_documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `technical_qualified`
--
ALTER TABLE `technical_qualified`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tender_actions`
--
ALTER TABLE `tender_actions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT for table `tender_corrigendum`
--
ALTER TABLE `tender_corrigendum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT for table `tender_mapped_users`
--
ALTER TABLE `tender_mapped_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=577;

--
-- AUTO_INCREMENT for table `tender_pq`
--
ALTER TABLE `tender_pq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=231;

--
-- AUTO_INCREMENT for table `tender_pre_bid`
--
ALTER TABLE `tender_pre_bid`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;

--
-- AUTO_INCREMENT for table `tender_result`
--
ALTER TABLE `tender_result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=224;

--
-- AUTO_INCREMENT for table `user_department`
--
ALTER TABLE `user_department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `user_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `make_payment`
--
ALTER TABLE `make_payment`
  ADD CONSTRAINT `make_payment_ibfk_1` FOREIGN KEY (`c_Id`) REFERENCES `payment_configurations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sub_coment`
--
ALTER TABLE `sub_coment`
  ADD CONSTRAINT `sub_coment_ibfk_1` FOREIGN KEY (`q_Id`) REFERENCES `tender_pq` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tender_corrigendum`
--
ALTER TABLE `tender_corrigendum`
  ADD CONSTRAINT `tender_corrigendum_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `user_details` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tender_corrigendum_ibfk_2` FOREIGN KEY (`updated_by`) REFERENCES `user_details` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tender_corrigendum_ibfk_3` FOREIGN KEY (`tender_Ref_No`) REFERENCES `tender_master` (`tender_Ref_No`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tender_mapped_users`
--
ALTER TABLE `tender_mapped_users`
  ADD CONSTRAINT `tender_mapped_users_ibfk_1` FOREIGN KEY (`m_user_id`) REFERENCES `user_details` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tender_mapped_users_ibfk_2` FOREIGN KEY (`tender_Ref_No`) REFERENCES `tender_master` (`tender_Ref_No`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
