-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 15, 2024 at 08:12 AM
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
  `po_Apo_D` date NOT NULL,
  `contract_Value` varchar(255) NOT NULL,
  `upload_Document` varchar(255) DEFAULT NULL,
  `comment` varchar(255) NOT NULL,
  `user_Name` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `date_Time` datetime NOT NULL,
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
(60, 'J1', 'PO', '2024-05-26', '60', 'public\\uploads\\Next-2.JPG', 'lk', 'lk', 'pending', '2024-06-14 00:00:00', '140', NULL, 'jay&company123');

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
  `annexure_Submittion_DT` datetime DEFAULT NULL,
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
(173, 'J1', 'Technical', 'HK', 'public\\uploads\\Next-2.JPG', '', 143, 'HIIIIIIIIIIIIIIIIIIIIIIIIIIIII', '2024-06-14 00:00:00', '140', 'jkk', '2024-06-14 17:18:16', 'public\\uploads\\Next-2.JPG', 'jay&company123');

-- --------------------------------------------------------

--
-- Table structure for table `blacklisted_tokens`
--

CREATE TABLE `blacklisted_tokens` (
  `token` varchar(255) NOT NULL,
  `invalidated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `company_Id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blacklisted_tokens`
--

INSERT INTO `blacklisted_tokens` (`token`, `invalidated_at`, `company_Id`) VALUES
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MCwiZW1haWwiOiJqYXlAZ21haWwuY29tIiwiY29tcGFueV9JZCI6ImpheSZjb21wYW55MTIzIiwiaWF0IjoxNzE4MzY2NDA0LCJleHAiOjE3MTg0NTI4MDR9.o_2BAgZWxaiDHCJgFRNMRyXyVQua1m-ZsYUL53NWP0c', '2024-06-14 12:57:54', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MCwiZW1haWwiOiJqYXlAZ21haWwuY29tIiwiY29tcGFueV9JZCI6ImpheSZjb21wYW55MTIzIiwiaWF0IjoxNzE4MzY4NTg1LCJleHAiOjE3MTg0NTQ5ODV9.L0sqho5U3SPDyGadrgIhDEhOnsq1MoYQL94A9io7b48', '2024-06-14 13:06:54', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MCwiZW1haWwiOiJqYXlAZ21haWwuY29tIiwiY29tcGFueV9JZCI6ImpheSZjb21wYW55MTIzIiwiaWF0IjoxNzE4MzY5OTMzLCJleHAiOjE3MTg0NTYzMzN9.YwbapjlXKjLfMPAcYrzpjYpVjiuKByscOZx-LcxfR68', '2024-06-14 13:06:07', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MCwiZW1haWwiOiJqYXlAZ21haWwuY29tIiwiY29tcGFueV9JZCI6ImpheSZjb21wYW55MTIzIiwiaWF0IjoxNzE4MzYzNTc3LCJleHAiOjE3MTg0NDk5Nzd9.V9HJ8Vwdonzl8LOluyyZuZARDRgwiLd2Ih7ccPBJr3Y', '2024-06-14 11:20:24', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MCwiZW1haWwiOiJqYXlAZ21haWwuY29tIiwiY29tcGFueV9JZCI6ImpheSZjb21wYW55MTIzIiwiaWF0IjoxNzE4MzYzNzAzLCJleHAiOjE3MTg0NTAxMDN9.UZ6asFiBp59Y4LuCbC1oMT-vCoWHcaWQLdeBVugDuqY', '2024-06-14 11:32:25', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MiwiZW1haWwiOiJyYWpAZ21haWwuY29tIiwiY29tcGFueV9JZCI6IlJhaiZjb21wYW55MTIzIiwiaWF0IjoxNzE4MzY0MDExLCJleHAiOjE3MTg0NTA0MTF9.QKOe3gj4iV1dEmwcrAoVV_EIziK9zKnKc0e5pZnK6Ho', '2024-06-14 11:36:33', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MiwiZW1haWwiOiJyYWpAZ21haWwuY29tIiwiY29tcGFueV9JZCI6IlJhaiZjb21wYW55MTIzIiwiaWF0IjoxNzE4MzY0MjE0LCJleHAiOjE3MTg0NTA2MTR9.koT3PnE29fLG6C9NuObw1oN6geII4CvaX4lGsNTVQ8s', '2024-06-14 11:23:51', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MiwiZW1haWwiOiJyYWpAZ21haWwuY29tIiwiY29tcGFueV9JZCI6IlJhaiZjb21wYW55MTIzIiwiaWF0IjoxNzE4MzY1MDA5LCJleHAiOjE3MTg0NTE0MDl9.ziTbfnWkXaH_XpPrYW6WeQ128ogtzDbWCVo0f_ztZbE', '2024-06-14 12:31:11', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MiwiZW1haWwiOiJyYWpAZ21haWwuY29tIiwiY29tcGFueV9JZCI6IlJhaiZjb21wYW55MTIzIiwiaWF0IjoxNzE4MzY4NTI4LCJleHAiOjE3MTg0NTQ5Mjh9.kJZHeeDiBAUwHs1oN6Or5POZ1cT-vKUGI0NpsAWPQo0', '2024-06-14 12:36:02', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MSwiZW1haWwiOiJBYXNoaXJAZ21haWwuY29tIiwiY29tcGFueV9JZCI6IkFhc2hpcmUmY29tcGFueTEyMyIsImlhdCI6MTcxODM2NDE4MywiZXhwIjoxNzE4NDUwNTgzfQ.YE_xcpZrZHKtzChKKvEdPndpEyIf8kCNqI0yLytyfA8', '2024-06-14 11:23:16', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MSwiZW1haWwiOiJhYXNoaXJAZ21haWwuY29tIiwiY29tcGFueV9JZCI6IkFhc2hpcmUmY29tcGFueTEyMyIsImlhdCI6MTcxODM2NDcyOCwiZXhwIjoxNzE4NDUxMTI4fQ.PJ00hQpcKnSCmUXCqQj8fNuMDlKztTFLXhJFdDBVJRA', '2024-06-14 11:59:32', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MSwiZW1haWwiOiJhYXNoaXJAZ21haWwuY29tIiwiY29tcGFueV9JZCI6IkFhc2hpcmUmY29tcGFueTEyMyIsImlhdCI6MTcxODM2NDE0NiwiZXhwIjoxNzE4NDUwNTQ2fQ.hRsXRx_OHeVscsrbrSGNI6x1SvBD7mxHLFYh9y83b9w', '2024-06-14 11:22:30', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MSwiZW1haWwiOiJhYXNoaXJAZ21haWwuY29tIiwiY29tcGFueV9JZCI6IkFhc2hpcmUmY29tcGFueTEyMyIsImlhdCI6MTcxODM2NDI4NCwiZXhwIjoxNzE4NDUwNjg0fQ.X_BXouloI0X32_vPFWUfOxsQOOUBabto7WlEzqVI_bY', '2024-06-14 11:24:51', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0MSwiZW1haWwiOiJhYXNoaXJAZ21haWwuY29tIiwiY29tcGFueV9JZCI6IkFhc2hpcmUmY29tcGFueTEyMyIsImlhdCI6MTcxODM2NDIwMywiZXhwIjoxNzE4NDUwNjAzfQ.GafrmOEaIJix1m7yJd8hhN7PxM5tBxawejq3VMgcz6Y', '2024-06-14 11:23:47', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjE0NywiZW1haWwiOiJkZXZAZ21haWwuY29tIiwiY29tcGFueV9JZCI6IlJhaiZjb21wYW55MTIzIiwiaWF0IjoxNzE4MzY4Mjg0LCJleHAiOjE3MTg0NTQ2ODR9.O_kl4UDmy1dvYOKxtVRLwkmg9HozORgjWqDfp49VIOY', '2024-06-14 12:35:08', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjUyLCJlbWFpbCI6InZpcmF0MTIzQGdtYWlsLmNvbSIsImNvbXBhbnlfSWQiOiJwYXJsZTEyMyIsImlhdCI6MTcxODM2MDI0OCwiZXhwIjoxNzE4NDQ2NjQ4fQ.0kE-01g9d8kqKW9DPWrjFaQNle1Heg78sv57jpY_uBI', '2024-06-14 11:18:50', NULL);

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
  `add_Completion_DT` datetime DEFAULT NULL,
  `created_By` int(11) NOT NULL,
  `company_Id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cms`
--

INSERT INTO `cms` (`id`, `tender_Ref_No`, `select_Milestone`, `add_Milestone`, `add_Milestone_Desc`, `attach_Document`, `add_Completion_DT`, `created_By`, `company_Id`) VALUES
(121, 'J1', 'work', 'sdufhsdjkffhkjsdfsdfhkfdksjfjsdfh', 'nmnmnmn', '', '2024-06-14 00:00:00', 140, 'jay&company123'),
(122, 'J1', 'pay', 'qawsedrfg', 'qwsedrftgyh', '', '2024-06-14 00:00:00', 140, 'jay&company123');

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
  `expiry_date` date DEFAULT NULL,
  `subscription_date` date DEFAULT NULL,
  `subscription_plan` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `company_registration`
--

INSERT INTO `company_registration` (`id`, `company_Id`, `company_name`, `address`, `no_of_user`, `expiry_date`, `subscription_date`, `subscription_plan`) VALUES
(7, 'jay&company123', 'jay&company', 'Bapunagar', 95, NULL, NULL, NULL),
(8, 'Aashire&company123', 'Aashire&company', 'Bopal', 76, NULL, NULL, NULL),
(9, 'Raj&company123', 'Raj&company', 'Junagadh', 100, NULL, NULL, NULL);

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
  `uploaded_Date` datetime DEFAULT current_timestamp(),
  `file_Path` varchar(500) NOT NULL,
  `user_Id` int(11) NOT NULL,
  `company_Id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(183, 0, '', 558558, '2024-06-03', '2024-06-14', 'm', 220, 140, 'public\\uploads\\Next-2.JPG', 'jay&company123');

-- --------------------------------------------------------

--
-- Table structure for table `negotiation`
--

CREATE TABLE `negotiation` (
  `id` int(11) NOT NULL,
  `tender_Ref_No` varchar(255) NOT NULL,
  `select_Envelop` varchar(255) NOT NULL,
  `post_Question` varchar(255) NOT NULL,
  `reply_Deadline` datetime DEFAULT NULL,
  `attach_Query_Document` varchar(255) DEFAULT NULL,
  `current_DT` datetime NOT NULL,
  `created_By` varchar(255) NOT NULL,
  `r_comment` varchar(255) NOT NULL,
  `r_Attachment_Query_Document` varchar(255) DEFAULT NULL,
  `company_Id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `negotiation`
--

INSERT INTO `negotiation` (`id`, `tender_Ref_No`, `select_Envelop`, `post_Question`, `reply_Deadline`, `attach_Query_Document`, `current_DT`, `created_By`, `r_comment`, `r_Attachment_Query_Document`, `company_Id`) VALUES
(117, 'J1', 'Financial', 'how are you', '2024-06-17 00:00:00', 'public\\uploads\\Next-2.JPG', '2024-06-10 00:00:00', '140', 'KL', NULL, 'jay&company123'),
(118, 'J1', 'Technical', 'hello', '2024-06-14 00:00:00', 'public\\uploads\\Next-2.JPG', '2024-06-14 00:00:00', '140', 'VK', NULL, 'jay&company123');

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
  `required_Before` datetime DEFAULT NULL,
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
(223, 'J1', 'document', 'free', '', '', 0.00, '', '', '0000-00-00 00:00:00', 'public\\uploads\\Next-2.JPG', 'sdcdcdd', 'pending', 140, NULL, 'jay&company123');

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

-- --------------------------------------------------------

--
-- Table structure for table `sub_coment`
--

CREATE TABLE `sub_coment` (
  `id` int(11) NOT NULL,
  `q_Id` int(11) NOT NULL,
  `s_comment` varchar(255) NOT NULL,
  `date_Time` datetime NOT NULL DEFAULT current_timestamp(),
  `document` varchar(255) NOT NULL,
  `s_Comment_By` varchar(255) NOT NULL,
  `company_Id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sub_coment`
--

INSERT INTO `sub_coment` (`id`, `q_Id`, `s_comment`, `date_Time`, `document`, `s_Comment_By`, `company_Id`) VALUES
(79, 168, 'hii', '2024-06-14 17:10:09', '', 'jay', 'jay&company123');

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
(44, '111112', 'financial', 'J1', 1, 1, 1, 'jay&company123');

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
(53, 'A1', 142, NULL, NULL, 1, NULL, 1, '2024-06-14 17:44:01', 'Raj&company123'),
(55, 'J1', 142, NULL, NULL, 1, NULL, 0, '2024-06-14 18:44:38', 'Raj&company123'),
(56, 'J1', 142, NULL, NULL, 1, NULL, 0, '2024-06-14 18:44:59', 'Raj&company123');

-- --------------------------------------------------------

--
-- Table structure for table `tender_corrigendum`
--

CREATE TABLE `tender_corrigendum` (
  `id` int(11) NOT NULL,
  `corrigendum_text` text DEFAULT NULL,
  `date` date DEFAULT NULL,
  `documents` varchar(255) DEFAULT NULL,
  `new_submission_date` date DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `create_date_time` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `update_date_time` datetime DEFAULT NULL,
  `tender_Ref_No` varchar(255) DEFAULT NULL,
  `company_Id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tender_corrigendum`
--

INSERT INTO `tender_corrigendum` (`id`, `corrigendum_text`, `date`, `documents`, `new_submission_date`, `created_by`, `create_date_time`, `updated_by`, `update_date_time`, `tender_Ref_No`, `company_Id`) VALUES
(147, 'KK', '2024-06-14', 'public\\uploads\\Next-2.JPG', '2024-06-14', 140, '2024-06-14 17:17:38', NULL, NULL, 'J1', 'jay&company123'),
(148, ' jnm', '2024-07-01', 'public\\uploads\\Next-23.JPG', '2024-06-16', 140, '2024-06-14 17:24:07', NULL, NULL, 'J1', 'jay&company123');

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
(549, 'A1', 147, 'Raj&company123'),
(550, 'R1', 143, 'jay&company123'),
(551, 'J1', 146, 'Raj&company123'),
(552, 'J1', 147, 'Raj&company123');

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
  `publication_date` date DEFAULT NULL,
  `submission_date` date DEFAULT NULL,
  `pre_bid_submission_date` date DEFAULT NULL,
  `pre_bid_meeting_date` date DEFAULT NULL,
  `opening_date` date DEFAULT NULL,
  `project_end_date` date DEFAULT NULL,
  `bid_validity_days` int(11) DEFAULT NULL,
  `project_period_months` int(11) DEFAULT NULL,
  `upload_documents` varchar(255) DEFAULT NULL,
  `stage` varchar(100) DEFAULT 'Initial',
  `comments` text DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `user_id` int(11) DEFAULT NULL,
  `f_For_Data` tinyint(1) NOT NULL DEFAULT 0,
  `isPq` tinyint(1) NOT NULL DEFAULT 0,
  `isBoq` tinyint(1) NOT NULL DEFAULT 0,
  `isFreetender` tinyint(1) NOT NULL DEFAULT 0,
  `userDetailUserId` int(11) NOT NULL,
  `isCorrigendum` tinyint(1) NOT NULL DEFAULT 0,
  `company_Id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tender_master`
--

INSERT INTO `tender_master` (`tender_Ref_No`, `tender_ID`, `org_Name`, `tender_Details`, `city`, `state`, `country`, `product_category`, `product`, `procurement_type`, `doc_fees`, `EMD_Fees`, `tender_estimated_cost`, `quantity`, `contact_Person`, `designation`, `email_id`, `phone_no`, `address`, `source`, `tags`, `publication_date`, `submission_date`, `pre_bid_submission_date`, `pre_bid_meeting_date`, `opening_date`, `project_end_date`, `bid_validity_days`, `project_period_months`, `upload_documents`, `stage`, `comments`, `created_by`, `created_date`, `updated_by`, `updated_date`, `user_id`, `f_For_Data`, `isPq`, `isBoq`, `isFreetender`, `userDetailUserId`, `isCorrigendum`, `company_Id`) VALUES
('J1', 111112, 'pen', 'pencil', 'Georgetown', 'Demerara-Mahaica', 'Guyana', 'HM', 'Good', 'Buy', 1000.00, 10000.00, 1000.00, 500, 'raj', 'HM', 'raj1@gmail.com', '7418529633', 'Ahmedabad', 'dm', '#hj #fg #hm', '2024-06-17', '2024-05-27', '2024-05-28', '2024-05-27', '2024-06-04', '2024-08-03', 30, 1, NULL, 'Initial', NULL, NULL, '2024-06-14 11:20:40', NULL, '2024-06-14 11:34:50', 140, 1, 0, 0, 0, 0, 0, 'jay&company123'),
('J2', 111113, 'cello', 'cello box', 'Adrogué', 'Buenos Aires', 'Argentina', 'cg vhbjk', 'Service', 'Rent/Lease', 3000.00, 30000.00, 1500.00, 500, 'harsh', 'jh', 'harsh@gmail.com', '7894561233', 'Rajkot', 'gcf', '#po #op #ju', '2024-06-25', '2024-07-22', '2024-06-05', '2024-07-17', '2024-06-04', '2024-10-02', 60, 2, NULL, 'Initial', NULL, NULL, '2024-06-14 11:24:14', NULL, '2024-06-14 11:35:11', 140, 1, 0, 0, 0, 0, 0, 'jay&company123'),
('A1', 111114, 'Aashir Company', 'This is the Aashir Company', 'Canberra', 'Australian Capital Territory', 'Australia', '#pc', 'Works', 'Maintenance', 20000000.00, 99999999.99, 200000000.00, 20000000, 'Aashir', 'CEO', 'aashirmansuri@gmail.com', '9898989123', 'Navrangpura Muslim Soc', 'Website', '#PC #monbile', '2024-06-05', '2024-06-03', '2024-06-04', '2024-06-12', '2024-06-12', '2024-07-13', 1, 1, NULL, 'Initial', NULL, NULL, '2024-06-14 11:35:43', NULL, '2024-06-14 11:35:43', 141, 1, 0, 0, 0, 0, 0, 'Aashire&company123'),
('R1', 111115, 'Raj&company', 'TV tender', 'Dar el Beïda', 'Alger', 'Algeria', 'dsfdf', 'Good', 'Buy', 15500.00, 100.00, 122.00, 23, 'fdssd', 'werwer', 'r1@gmail.com', '234234', 'Bopal', 'ew', 'wer', '2024-06-03', '2024-05-28', '2024-05-28', '2024-06-04', '2024-05-27', '2028-05-03', 87, 45, NULL, 'Initial', NULL, NULL, '2024-06-14 11:37:57', NULL, '2024-06-14 11:40:52', 142, 1, 0, 0, 0, 0, 0, 'Raj&company123'),
('A2', 111116, 'Aashir AND Company', 'This is aashir company', 'Ahmedabad', 'Gujarat', 'India', '#MOBILE', 'Good', 'Buy', 200000.00, 2000000.00, 20000.00, 20, 'aashir', 'CEO', 'aashir@gmail.com', '2384489', '301 nasir app', 'website', '#mobil', '2024-06-11', '2024-06-03', '2024-06-12', '2024-05-27', '2024-06-13', '2024-08-13', 1, 2, NULL, 'Initial', NULL, NULL, '2024-06-14 11:47:35', NULL, '2024-06-14 11:47:35', 141, 1, 0, 0, 0, 0, 0, 'Aashire&company123');

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
  `create_date_time` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `update_date_time` datetime DEFAULT NULL,
  `tender_Ref_No` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `company_Id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tender_pq`
--

INSERT INTO `tender_pq` (`id`, `pq_condition`, `pq_status`, `comment`, `upload_doc`, `created_by`, `create_date_time`, `updated_by`, `update_date_time`, `tender_Ref_No`, `user_id`, `company_Id`) VALUES
(167, 'JH', 'Non Compliance', 'JK ', 'public\\uploads\\Next-2.JPG', 140, '2024-06-14 17:06:14', NULL, NULL, 'Test1', 140, 'jay&company123'),
(168, 'BGMI', 'Non Compliance', 'JK', 'public\\uploads\\Next-2.JPG', 140, '2024-06-14 17:09:57', NULL, NULL, 'J1', 140, 'jay&company123');

-- --------------------------------------------------------

--
-- Table structure for table `tender_pre_bid`
--

CREATE TABLE `tender_pre_bid` (
  `id` int(11) NOT NULL,
  `date_and_time` datetime DEFAULT NULL,
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
  `create_date_time` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `update_date_time` datetime DEFAULT NULL,
  `tender_Ref_No` varchar(255) DEFAULT NULL,
  `by_company` varchar(255) DEFAULT NULL,
  `p_user` varchar(255) NOT NULL,
  `company_Id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tender_pre_bid`
--

INSERT INTO `tender_pre_bid` (`id`, `date_and_time`, `company_name`, `page_number`, `paragraph_number`, `paragraph_content`, `question`, `documents`, `status`, `revise_content`, `govt_reply`, `is_doc_paid`, `created_by`, `create_date_time`, `updated_by`, `update_date_time`, `tender_Ref_No`, `by_company`, `p_user`, `company_Id`) VALUES
(210, NULL, 'self', 5, 2, 'Information Technology', 'what is your name', 'public\\uploads\\Next-2.JPG', 'completed', NULL, 'jay', NULL, 140, '2024-06-14 17:11:24', 140, '2024-06-14 17:12:48', 'J1', NULL, 'jay', 'jay&company123');

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
(185, 'J1', 'financial', 'bnn', 'true', 'true', '44', 'Yes', 'nm', '44', 'R2', 'nm', 140, 44, 54, NULL);

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
(123, 'Technical', 'sdff', '142', NULL);

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
  `create_date_time` timestamp NOT NULL DEFAULT current_timestamp(),
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
  `update_date_time` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `company_Id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`user_id`, `user_name`, `phone_number`, `email_id`, `role`, `Financial_limit`, `department`, `Emploee_level`, `user_password`, `created_by`, `create_date_time`, `updated_by`, `f_tender`, `f_pq`, `f_pre_bid_round`, `f_corrigendum`, `f_envelope`, `f_payment_envelope`, `f_tender_result`, `f_negotiation`, `f_apo_po`, `f_cms`, `update_date_time`, `company_Id`) VALUES
(140, 'jay', '8787878787', 'jay@gmail.com', '', '123231', 'Admin', 'L1', '$2a$10$SonPZpWBCIrNJs7ZdXgfo.7BjI3mhgydV58G1vAnMlSNTmvBfVMqC', 'Devloper', '2024-06-14 11:02:08', NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2024-06-14 11:31:27', 'jay&company123'),
(141, 'Aashir', '2343423', 'aashir@gmail.com', NULL, '23232323', 'Admin', 'L!', '$2a$10$WRGSZaGcbhP.neOsAKz/huW.wtCbco9SF2AohnXM.8WcvxN0m2Ojm', 'Devloper', '2024-06-14 11:16:14', NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2024-06-14 11:30:59', 'Aashire&company123'),
(142, 'Raj', '34234234', 'raj@gmail.com', NULL, '23423423', 'Admin', 'L1', '$2a$10$EiBmf7agfeslqxc.KHvR4eurdWbTA4yKvUhUtGqADbz3wGcwXTMvS', 'Devloper', '2024-06-14 11:18:44', NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2024-06-14 11:34:26', 'Raj&company123'),
(143, 'harsh123', '7896321455', 'harsh123@gmail.com', '', NULL, 'IT', NULL, '$2a$10$5v6jWYpWiWUfe6wdAV38O.D5tUNTdT3Xc.5.UDXLMujUM0uhpVvMC', '140', '2024-06-14 11:38:34', NULL, 1, 0, 0, 1, 0, 1, 1, 0, 0, 1, '2024-06-14 11:38:34', 'jay&company123'),
(144, 'gulam', '9898989812', 'gulam@gmail.com', '', NULL, 'Devloper', NULL, '$2a$10$bLDYN7PbgRD/dXI7Howe6Oa92URGUuOXmxcckRqmmZnPvz7QVwFWe', '141', '2024-06-14 11:41:17', NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2024-06-14 11:41:17', 'Aashire&company123'),
(145, 'zuber Sir', '93784873', 'zuber@gmail.com', '', NULL, 'Devloper', NULL, '$2a$10$5UAFOx20Jf.3ltkYaUZV5eNaDb.FpSTLiGtW0.3RH0MLLGDeGys9S', '141', '2024-06-14 11:43:11', NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2024-06-14 11:43:11', 'Aashire&company123'),
(146, 'jisan', '3423423', 'jisan@gmail.com', '', NULL, 'Financial', NULL, '$2a$10$nRlu/IeGJ1gSSR6iEor/E.HyRWUUyK6s0uD21ZE5wRg0qtP3s/bcG', '142', '2024-06-14 12:05:09', NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2024-06-14 12:05:09', 'Raj&company123'),
(147, 'dev', '12323', 'dev@gmail.com', '', NULL, 'Technical', NULL, '$2a$10$GLSCCrWvgzh6blI94EW58.wlyG5FzhVZG9HSzcVwIxkaIKHwX6Exy', '142', '2024-06-14 12:06:09', NULL, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, '2024-06-14 12:06:09', 'Raj&company123');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `add_role`
--
ALTER TABLE `add_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `apo_po`
--
ALTER TABLE `apo_po`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `bid_envelop`
--
ALTER TABLE `bid_envelop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;

--
-- AUTO_INCREMENT for table `cms`
--
ALTER TABLE `cms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `company_registration`
--
ALTER TABLE `company_registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `make_payment`
--
ALTER TABLE `make_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;

--
-- AUTO_INCREMENT for table `negotiation`
--
ALTER TABLE `negotiation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `payment_configurations`
--
ALTER TABLE `payment_configurations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=224;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `sub_coment`
--
ALTER TABLE `sub_coment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `tblbidders`
--
ALTER TABLE `tblbidders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `tender_corrigendum`
--
ALTER TABLE `tender_corrigendum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT for table `tender_mapped_users`
--
ALTER TABLE `tender_mapped_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=553;

--
-- AUTO_INCREMENT for table `tender_pq`
--
ALTER TABLE `tender_pq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- AUTO_INCREMENT for table `tender_pre_bid`
--
ALTER TABLE `tender_pre_bid`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;

--
-- AUTO_INCREMENT for table `tender_result`
--
ALTER TABLE `tender_result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;

--
-- AUTO_INCREMENT for table `user_department`
--
ALTER TABLE `user_department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `user_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

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
