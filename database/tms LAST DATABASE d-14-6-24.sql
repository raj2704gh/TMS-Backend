-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2024 at 12:41 PM
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
(40, 'TV_001', 'Intrested Tender', '', '5/29/2024', 'I want to understand this', '52', NULL),
(41, 'KL456', 'Intrested Tender', 'virat', '5/31/2024', 'HIii', '52', NULL),
(42, 'KL456', 'Intrested Tender', 'virat', '6/1/2024', 'Aashir', '52', NULL),
(43, 'Tender10222', 'Intrested Tender', '', '6/1/2024', 'Computer', '52', NULL),
(44, 'Glass007', 'All Tender', '', '6/3/2024', 'hii', '117', NULL),
(45, 'Bid1012', 'Intrested Tender', '', '6/3/2024', 'pens from int', '120', NULL),
(46, '', 'All Tender', '', '6/4/2024', '', '52', NULL),
(47, '', 'All Tender', 'virat', '6/4/2024', 'sds', '52', NULL),
(48, '', 'All Tender', 'virat', '6/4/2024', 'sdsad', '52', NULL),
(49, 'gem/2024/b/5000791', 'Intrested Tender', '', '6/6/2024', 'AAshir', '52', NULL),
(50, 'KL456', 'All Tender', '', '6/10/2024', 'hii', '52', NULL),
(51, 'Apple_01', 'Intrested Tender', '', '6/10/2024', 'Raj is backend developer', '52', NULL),
(52, '2024_mes_656635_1', 'All Tender', '', '6/10/2024', 'aashir is frintende developer', '52', NULL),
(53, 'KL456', 'Intrested Tender', '', '6/10/2024', 'aashir frintende', '52', NULL),
(54, 'KL456', 'All Tender', '', '6/11/2024', 'Today comment on 11/06/2024\n', '52', NULL),
(55, 'KL456', 'Intrested Tender', '', '6/11/2024', 'TOday Comment on from int tender on 11/06/2924', '52', NULL),
(56, 'KL456', 'All Tender', '', '6/11/2024', 'raj is commenting ', '52', NULL),
(57, 'KL456', 'All Tender', 'virat', '6/11/2024', 'raj and aashir is commeting', '52', NULL),
(58, 'Apple_01', 'Intrested Tender', '', '6/11/2024', 'hello', '52', NULL),
(59, 'Apple_01', 'Intrested Tender', 'virat', '6/11/2024', 'aashir', '52', NULL),
(60, 'KL456', 'Intrested Tender', 'virat', '6/11/2024', 'raj bhai hello', '52', NULL);

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

--
-- Dumping data for table `add_role`
--

INSERT INTO `add_role` (`id`, `role`, `created_By`, `company_Id`) VALUES
(1, 'admin', 52, NULL),
(2, 'admin', 52, NULL),
(3, 'admin', 52, NULL),
(4, 'user', 52, NULL),
(5, 'admin', 52, NULL),
(6, 'admin', 52, NULL),
(7, 'admin', 52, NULL),
(8, 'admin', 52, NULL),
(9, 'admin', 52, NULL),
(10, 'admin', 52, NULL),
(11, 'Admin123', 52, NULL),
(12, 'admin', 63, NULL),
(13, 'admin', 52, NULL),
(14, 'admin', 52, NULL);

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
(53, 'KL456', '', '0000-00-00', '', NULL, '', '', 'pending', '0000-00-00 00:00:00', '52', NULL, NULL),
(54, 'KL456', 'APO', '2024-06-11', '10000000', 'public\\uploads\\Next-Screenshot (318).png', 'ssad', 'sasad', 'pending', '2024-07-03 00:00:00', '52', NULL, NULL),
(55, 'KL456', 'PO', '2024-06-10', '10000000', 'public\\uploads\\Next-Screenshot (323).png', 'ssad', 'sasad', 'pending', '2024-07-02 18:30:00', '52', NULL, NULL),
(56, 'Apple_01', '', '0000-00-00', '', NULL, '', '', 'pending', '0000-00-00 00:00:00', '52', NULL, NULL),
(57, 'Apple_01', 'APO', '2024-07-04', '21212', 'public\\uploads\\Next-Screenshot (321).png', 'dsdsa', 'sdsds', 'pending', '2024-06-19 00:00:00', '52', NULL, NULL);

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
(158, 'KL456', 'Technical', 'Annexure 1', NULL, 'Finance', 52, 'This is a comment.', '2024-04-17 00:00:00', '52', 'jkhriu', '2024-05-30 12:31:22', 'public\\uploads\\Next-Capture.JPG', NULL),
(159, 'KL456', 'Technical', 'rahul', '..\\public\\uploads\\Next-Screenshot (320).png', 'aashir', 109, 'rahul ', '2024-05-30 00:00:00', '52', '', '2024-05-30 14:16:37', NULL, NULL),
(160, 'KL456', 'Technical', 'jskd', '..\\public\\uploads\\Next-Screenshot (320).png', 'jay', 112, 'sdsa', '2024-05-27 00:00:00', '52', '', '2024-05-30 14:37:19', NULL, NULL),
(161, 'Apple_01', 'Technical', 'jdk', '..\\public\\uploads\\Next-23.JPG', 'aashir', 107, 'jdk', '2024-05-30 00:00:00', '52', 'shshdg', '2024-05-30 15:19:27', '', NULL),
(162, 'MOBILE123', 'Technical', 'hfj', '..\\public\\uploads\\Next-68.PNG', 'aashir', 111, 'jhgdfhdhgfh', '2024-05-30 00:00:00', '52', '', '2024-05-30 15:32:14', NULL, NULL),
(163, '121TATA', 'Technical', 'Annexure 1', '', 'Finance', 83, 'This is a comment.', '2024-04-17 00:00:00', '52', 'bhbdhj', '2024-05-30 15:35:40', '', NULL),
(164, 'Glass007', 'Technical', 'dhdfdfhjdfh', '..\\public\\uploads\\Next-chad-montano-MqT0asuoIcU-unsplash.jpg', 'aashir', 117, 'fdhjkfhdjfh', '2024-06-03 00:00:00', '52', 'sretdfyguh', '2024-06-03 11:31:21', '..\\public\\uploads\\Next-davide-cantelli-jpkfc5_d-DI-unsplash.jpg', NULL),
(165, 'Bid1012', 'Technical', 'harsh', '..\\public\\uploads\\Next-Screenshot (317).png', 'Admin', 122, 'Pens', '2024-07-01 00:00:00', '120', 'Completed', '2024-06-03 13:49:21', '..\\public\\uploads\\Next-Screenshot (316).png', NULL),
(166, 'Bid1012', 'Financial', 'Harsh', '..\\public\\uploads\\Next-Screenshot (317).png', 'client', 121, 'Harsh', '2024-07-04 00:00:00', '120', 'Completed', '2024-06-03 13:50:04', '..\\public\\uploads\\Next-Screenshot (317).png', NULL),
(167, 'KL456', 'Technical', 'djkjdkf', '..\\public\\uploads\\Next-chad-montano-MqT0asuoIcU-unsplash.jpg', '', 115, 'jdkshkjds', '2024-06-25 00:00:00', '52', '', '2024-06-06 17:16:05', NULL, NULL),
(168, '1000418584', 'Technical', 'jskdskj', '..\\public\\uploads\\Next-Screenshot (320).png', 'aashir', 120, 'kmfdk', '2024-06-26 00:00:00', '52', '', '2024-06-07 14:40:30', NULL, NULL),
(169, 'KL456', 'Financial', 'sdssdd', 'public\\uploads\\Next-Capture.JPG', '', 115, 'ssdsd', '2024-06-24 00:00:00', '52', '', '2024-06-12 16:10:16', NULL, NULL),
(170, 'KL456', 'Financial', 'hg', 'public\\uploads\\Next-2.JPG', '', 128, 'hgjbk', '2024-06-14 00:00:00', '133', '', '2024-06-14 12:15:56', NULL, 'parle123'),
(171, 'KL456', 'Financial', 'v', 'public\\uploads\\Next-23.JPG', '', 115, '\r\ngvjhblk', '2024-06-14 00:00:00', '133', '', '2024-06-14 12:16:12', NULL, 'parle123'),
(172, 'KL456', 'Financial', 'sxdrfgvhj', 'public\\uploads\\Next-2.JPG', '', 115, 'gghbj', '2024-06-14 00:00:00', '133', '', '2024-06-14 16:02:04', NULL, 'parle123');

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
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjEzMywiZW1haWwiOiJ0cnVtcDEyM0BnbWFpbC5jb20iLCJjb21wYW55X0lkIjoicGFybGUxMjMiLCJpYXQiOjE3MTgyODI4OTAsImV4cCI6MTcxODM2OTI5MH0.o6aklf6hwXx531kLQHDktgaBmE5B2Dssip1u_z6nazE', '2024-06-13 12:51:24', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjEzMywiZW1haWwiOiJ0cnVtcDEyM0BnbWFpbC5jb20iLCJjb21wYW55X0lkIjoicGFybGUxMjMiLCJpYXQiOjE3MTgyODMyODgsImV4cCI6MTcxODM2OTY4OH0.zhWmBfkPgLWRu49zk29VZ8UrxOExnsEuMTf7gNvlvu4', '2024-06-13 13:10:34', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjEzMywiZW1haWwiOiJ0cnVtcDEyM0BnbWFpbC5jb20iLCJjb21wYW55X0lkIjoicGFybGUxMjMiLCJpYXQiOjE3MTgyODQ4MzIsImV4cCI6MTcxODM3MTIzMn0.OHbpf0QuvqV0BrvpEK7_uZ_v07wO8l0i4tYRjwA8rhE', '2024-06-13 13:37:02', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjEzMywiZW1haWwiOiJ0cnVtcDEyM0BnbWFpbC5jb20iLCJpYXQiOjE3MTgxOTc3MTksImV4cCI6MTcxODI4NDExOX0.G2bxbXEsNg47x7MGf6Julev54R7eB4HhxHNPGLUFgX8', '2024-06-12 13:08:57', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjEzMywiZW1haWwiOiJ0cnVtcDEyM0BnbWFpbC5jb20iLCJpYXQiOjE3MTgyNTc3MzUsImV4cCI6MTcxODM0NDEzNX0.xdfcnIdpPkbNaLne_YnfzPk-wYr0m8lLbKj02qn2gao', '2024-06-13 05:50:45', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjEzMywiZW1haWwiOiJ0cnVtcDEyM0BnbWFpbC5jb20iLCJpYXQiOjE3MTgyNTQyNDgsImV4cCI6MTcxODM0MDY0OH0.e05tpb_O2vc35MxMfgLuXasI2kOZjn9YlTA6b4pYYNA', '2024-06-13 05:08:43', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjEzMywiZW1haWwiOiJ0cnVtcDEyM0BnbWFpbC5jb20iLCJpYXQiOjE3MTgyNTUzODIsImV4cCI6MTcxODM0MTc4Mn0.LCeXeG06MvEsk_I_ueAGJoni6VckR9aL2Qz_NFcHYg0', '2024-06-13 05:14:40', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjEzMywiZW1haWwiOiJ0cnVtcDEyM0BnbWFpbC5jb20iLCJpYXQiOjE3MTgyNTY4MzcsImV4cCI6MTcxODM0MzIzN30.DRQajNK_ETz5T5SqcurT1B1uTNh6SlyqKnyCV7_mM94', '2024-06-13 05:43:07', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjEzMywiZW1haWwiOiJ0cnVtcDEyM0BnbWFpbC5jb20iLCJpYXQiOjE3MTgyNzMxMTcsImV4cCI6MTcxODM1OTUxN30.7aJFD11yI8NWHbvR_itZKhFUpz9FSuJrG_SsKRj_P-E', '2024-06-13 10:22:19', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjEzMywiZW1haWwiOiJ0cnVtcDEyM0BnbWFpbC5jb20iLCJpYXQiOjE3MTgyNzMzNjksImV4cCI6MTcxODM1OTc2OX0.tY-Lg2LmnwnYiBciJaD_DAbrAkexbu4lmarPhtxx4xc', '2024-06-13 11:30:47', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjEzMywiZW1haWwiOiJ0cnVtcDEyM0BnbWFpbC5jb20iLCJpYXQiOjE3MTgyODE1NDEsImV4cCI6MTcxODM2Nzk0MX0.dGLEr8zB_eOzDEYaZUR_CNedMlTC6uYhuGesPBMolRs', '2024-06-13 12:33:45', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjEzNCwiZW1haWwiOiJvYmFtYTEyM0BnbWFpbC5jb20iLCJjb21wYW55X0lkIjoia3JhY2tqYWNrMTIzIiwiaWF0IjoxNzE4MjgzMTAwLCJleHAiOjE3MTgzNjk1MDB9.khtCcEaOlroxWQCSSqC1A3QljGmhMoKtxg3ivMQkNio', '2024-06-13 12:54:33', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjEzNCwiZW1haWwiOiJvYmFtYTEyM0BnbWFpbC5jb20iLCJpYXQiOjE3MTgxOTc3NjgsImV4cCI6MTcxODI4NDE2OH0.4gedLqyt_22-wV_70n5Jsf2rF_2zmBU6LE66tP6cuYw', '2024-06-12 13:11:35', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjEzNCwiZW1haWwiOiJvYmFtYTEyM0BnbWFpbC5jb20iLCJpYXQiOjE3MTgyNTc0MDAsImV4cCI6MTcxODM0MzgwMH0.YenL8n75fteBbvudBJ1FATIG8nAX8gaPFk5psDYWGqw', '2024-06-13 05:48:42', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjEzNCwiZW1haWwiOiJvYmFtYTEyM0BnbWFpbC5jb20iLCJpYXQiOjE3MTgyNTc4ODEsImV4cCI6MTcxODM0NDI4MX0.v--c8QSqK3Rol1VMDlJO6hYlVRcd8iN_wkG_h6I6I-0', '2024-06-13 05:53:33', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjEzNCwiZW1haWwiOiJvYmFtYTEyM0BnbWFpbC5jb20iLCJpYXQiOjE3MTgyNTQyMTksImV4cCI6MTcxODM0MDYxOX0.jjfNQ6qBXGoz5Z1x_c70vpH1WaH0gELFuf5s5sG_JMI', '2024-06-13 04:50:28', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjEzNCwiZW1haWwiOiJvYmFtYTEyM0BnbWFpbC5jb20iLCJpYXQiOjE3MTgyNTUzMzYsImV4cCI6MTcxODM0MTczNn0.nLemBM-H9vwMzd4FtsBtKPMK4On_RwzHCtvGPZrBpsk', '2024-06-13 05:09:21', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjEzNCwiZW1haWwiOiJvYmFtYTEyM0BnbWFpbC5jb20iLCJpYXQiOjE3MTgyNzk5NzIsImV4cCI6MTcxODM2NjM3Mn0.1REsJ4f8it3TANLbQW_8uohGGjxlx6AEX4Sb8bU3v5s', '2024-06-13 12:51:33', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjEzNCwiZW1haWwiOiJvYmFtYTEyM0BnbWFpbC5jb20iLCJpYXQiOjE3MTgyNzQxNTMsImV4cCI6MTcxODM2MDU1M30.bdaHmdPtPqJdNMCLdBItvGzbUL67p4d_bn-0UGFckH8', '2024-06-13 11:18:11', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjEzNSwiZW1haWwiOiJwZW5AZ21haWwuY29tIiwiY29tcGFueV9JZCI6ImtyYWNramFjazEyMyIsImlhdCI6MTcxODI4MjA3MSwiZXhwIjoxNzE4MzY4NDcxfQ.ldoJ14daz3zO80kO8CaaMcRzRA154jilaJ3FBBvcZ6E', '2024-06-13 12:47:52', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjUyLCJlbWFpbCI6InZpcmF0MTIzQGdtYWlsLmNvbSIsImlhdCI6MTcxNzczNTc4NiwiZXhwIjoxNzE3ODIyMTg2fQ.izr8zSoml84RF37Z6YS-rssOTfKz8gUYWOvmN2um1kM', '2024-06-07 10:18:00', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjUyLCJlbWFpbCI6InZpcmF0MTIzQGdtYWlsLmNvbSIsImlhdCI6MTcxNzczNTI1OSwiZXhwIjoxNzE3ODIxNjU5fQ.AJwWd3lwnQXZmfaKgh9OQZ4Kp2_AEwoTEtYAqacq43k', '2024-06-07 06:28:44', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjUyLCJlbWFpbCI6InZpcmF0MTIzQGdtYWlsLmNvbSIsImlhdCI6MTcxNzY0ODcwMywiZXhwIjoxNzE3NzM1MTAzfQ.RdIXOboYqyYwcM80ktn2NkQ6HGbep4Ey3dB7u2DIXBc', '2024-06-06 05:35:58', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjUyLCJlbWFpbCI6InZpcmF0MTIzQGdtYWlsLmNvbSIsImlhdCI6MTcxNzY0OTkxOCwiZXhwIjoxNzE3NzM2MzE4fQ.8IWeDDogfYQFg5_lmL8TFi7ibefuXkNt8do6kXvD9HY', '2024-06-06 06:51:25', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjUyLCJlbWFpbCI6InZpcmF0MTIzQGdtYWlsLmNvbSIsImlhdCI6MTcxNzY1MjE3MywiZXhwIjoxNzE3NzM4NTczfQ.be6hP4krTOivQej0Lqho_ZD2DOTdNiAf276Ln_3T75s', '2024-06-06 06:48:09', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjUyLCJlbWFpbCI6InZpcmF0MTIzQGdtYWlsLmNvbSIsImlhdCI6MTcxNzY1NjgyMSwiZXhwIjoxNzE3NzQzMjIxfQ.Wdtns1-La3uXTFw61B1m7Zi8rmjjOfk3Bp7R0QzLluc', '2024-06-06 06:57:59', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjUyLCJlbWFpbCI6InZpcmF0MTIzQGdtYWlsLmNvbSIsImlhdCI6MTcxODA4MTg2NSwiZXhwIjoxNzE4MTY4MjY1fQ.HPj3fRCwE0k8SfsU0zbCmwCe8f_zNlVqYEMbTCMVwL8', '2024-06-11 05:48:45', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjUyLCJlbWFpbCI6InZpcmF0MTIzQGdtYWlsLmNvbSIsImlhdCI6MTcxODA4NjI2OSwiZXhwIjoxNzE4MTcyNjY5fQ.GOjR6iwNterJXRzwHV9wwxNd2wO7zzKZ05hx5sJI3Yg', '2024-06-11 06:18:06', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjUyLCJlbWFpbCI6InZpcmF0MTIzQGdtYWlsLmNvbSIsImlhdCI6MTcxODA4NjIwMiwiZXhwIjoxNzE4MTcyNjAyfQ.oFVRNCK9dToyCbsptTubI6CitQCy8yG6PaxfoL4s8Fo', '2024-06-11 06:10:26', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjUyLCJlbWFpbCI6InZpcmF0MTIzQGdtYWlsLmNvbSIsImlhdCI6MTcxODA4NTM3MiwiZXhwIjoxNzE4MTcxNzcyfQ.iky7rtZ_UYRpbp5cJe-uKtQ28HiKLzukdvUL3r2c5yc', '2024-06-11 05:56:17', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjUyLCJlbWFpbCI6InZpcmF0MTIzQGdtYWlsLmNvbSIsImlhdCI6MTcxODA4ODgyOCwiZXhwIjoxNzE4MTc1MjI4fQ.MrtHmP0O-Xdg2FKXIOBH3wfjxc6NkpvC7-o-LXnZ66k', '2024-06-11 11:01:05', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjUyLCJlbWFpbCI6InZpcmF0MTIzQGdtYWlsLmNvbSIsImlhdCI6MTcxODAwMDgyNSwiZXhwIjoxNzE4MDg3MjI1fQ.hbw-vlRYPAi9D_Y8YUDAakl2xy78ogolqRAGVuqgLHI', '2024-06-10 07:14:05', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjUyLCJlbWFpbCI6InZpcmF0MTIzQGdtYWlsLmNvbSIsImlhdCI6MTcxODAwNDQ2MSwiZXhwIjoxNzE4MDkwODYxfQ.sVrBTxWhduLZe5fjS99Mo8sN5hoPmIQXp73SwFlYvbY', '2024-06-10 09:09:17', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjUyLCJlbWFpbCI6InZpcmF0MTIzQGdtYWlsLmNvbSIsImlhdCI6MTcxODE3MjQ1NywiZXhwIjoxNzE4MjU4ODU3fQ.JXbH9_DQd4B1-1qqsSrNc5J-JW_NUf6aqst0E-ip1Gs', '2024-06-12 06:08:19', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjUyLCJlbWFpbCI6InZpcmF0MTIzQGdtYWlsLmNvbSIsImlhdCI6MTcxODE3OTU1MiwiZXhwIjoxNzE4MjY1OTUyfQ.2H3On7Ks2ZGUNOW280XqVJFYc8xM72ZGB4XHXEtcKnI', '2024-06-12 10:30:03', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjUyLCJlbWFpbCI6InZpcmF0MTIzQGdtYWlsLmNvbSIsImlhdCI6MTcxODE4MTY3MywiZXhwIjoxNzE4MjY4MDczfQ.1O82AXJcQLlQq6lJsN-z8B4tlH565ydUa63X9fLvk4E', '2024-06-12 10:05:32', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjUyLCJlbWFpbCI6InZpcmF0MTIzQGdtYWlsLmNvbSIsImlhdCI6MTcxODE4Njc0NCwiZXhwIjoxNzE4MjczMTQ0fQ.VOmq0Rz_imTDIDCe_bCbiXJ6DEpKdQVtgrBCwIQKFfA', '2024-06-12 10:12:03', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjUyLCJlbWFpbCI6InZpcmF0MTIzQGdtYWlsLmNvbSIsImlhdCI6MTcxODE5NzAyMCwiZXhwIjoxNzE4MjgzNDIwfQ.3EwB3Z0u6R_aFvNXhS-Jw_YEwk24996bzTqxqx_nGHI', '2024-06-12 13:08:19', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjUyLCJlbWFpbCI6InZpcmF0MTIzQGdtYWlsLmNvbSIsImlhdCI6MTcxODEwNzE2MiwiZXhwIjoxNzE4MTkzNTYyfQ.DocJNJWIYUyFoa0rB2-9_VFZgUwaO2etr5Dom6_WRgw', '2024-06-11 11:59:40', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjUyLCJlbWFpbCI6InZpcmF0MTIzQGdtYWlsLmNvbSIsImlhdCI6MTcxODEwNzMyOSwiZXhwIjoxNzE4MTkzNzI5fQ.4gguvjwHe4ldoa92m4fr4P1AGLlgozZyz0vV-BuGiBA', '2024-06-11 12:04:26', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjUyLCJlbWFpbCI6InZpcmF0MTIzQGdtYWlsLmNvbSIsImlhdCI6MTcxODEwNzUwMSwiZXhwIjoxNzE4MTkzOTAxfQ.6J3_zYxaJWhz-hJs81xw5meAI75_qrimEfjCk-Ljbu0', '2024-06-11 12:22:28', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjUyLCJlbWFpbCI6InZpcmF0MTIzQGdtYWlsLmNvbSIsImlhdCI6MTcxODI1NDE3MCwiZXhwIjoxNzE4MzQwNTcwfQ.J93u_EoSVsvgt7AsquApcZRlAm2wAk0imjxsfrfvYV0', '2024-06-13 04:50:00', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjUyLCJlbWFpbCI6InZpcmF0MTIzQGdtYWlsLmNvbSIsImlhdCI6MTcxODI1NDI0OSwiZXhwIjoxNzE4MzQwNjQ5fQ.mh1Exgkh1I4RpSVKeLUtrTARJTcf3sewShZkJPXgNLU', '2024-06-13 10:09:07', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjUyLCJlbWFpbCI6InZpcmF0MTIzQGdtYWlsLmNvbSIsImlhdCI6MTcxODI3NzUwMCwiZXhwIjoxNzE4MzYzOTAwfQ.Pli2rZDDeywIZGDBRRv5GTSBkRAAhCrI2wxXTAk1C_4', '2024-06-13 12:25:29', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjUyLCJlbWFpbCI6InZpcmF0MTIzQGdtYWlsLmNvbSIsImlhdCI6MTcxODI3ODQwMiwiZXhwIjoxNzE4MzY0ODAyfQ.lZ5-CPrs05xzYsY89YR4qZ27zCg6pAXyMs8euufZ2Ts', '2024-06-13 11:58:32', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjUyLCJlbWFpbCI6InZpcmF0MTIzQGdtYWlsLmNvbSIsImNvbXBhbnlfSWQiOiJwYXJsZTEyMyIsImlhdCI6MTcxODI4MjA0MCwiZXhwIjoxNzE4MzY4NDQwfQ.SsaCBkswbQYdMFiPROy-la-24VN3tCR8SXDb3XLbFwM', '2024-06-13 12:34:13', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjUyLCJlbWFpbCI6InZpcmF0MTIzQGdtYWlsLmNvbSIsImNvbXBhbnlfSWQiOiJwYXJsZTEyMyIsImlhdCI6MTcxODM0MTU5MywiZXhwIjoxNzE4NDI3OTkzfQ.OLHlri2H92yk7nV2BCvtbbFyKCW8Vl9jcfx7EvygIl4', '2024-06-14 05:46:07', NULL),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjUyLCJlbWFpbCI6InZpcmF0MTIzQGdtYWlsLmNvbSIsImNvbXBhbnlfSWQiOiJwYXJsZTEyMyIsImlhdCI6MTcxODM1OTAzNywiZXhwIjoxNzE4NDQ1NDM3fQ.Sm9Uw7_-8KK7HFOkcpYz_9rI5edsB8PCS-129sIexIM', '2024-06-14 10:17:28', NULL);

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
(87, 'Testing Tender3', 'work', 'sdsa', 'sadsad', '..\\public\\uploads\\Next-18mca018_poster.pdf', '2024-05-27 00:00:00', 52, NULL),
(88, 'Testing Tender3', 'pay', 'sds', 'sdsad', '..\\public\\uploads\\Next-18mca018_poster.pdf', '2024-05-30 00:00:00', 52, NULL),
(89, '5', 'work', 'near to me', 'any thing to do', NULL, '2012-12-15 00:00:00', 52, NULL),
(90, 'KL456', 'work', 'The Indian Premier League', 'The Indian Premier LeagueThe Indian Premier League', '..\\public\\uploads\\Next-Path.png', '2024-05-21 00:00:00', 52, NULL),
(91, 'KL456', 'pay', 'fgchbjklm;', 'hjknlkm;,\'.\r\n', '..\\public\\uploads\\Next-2.JPG', '2024-05-28 00:00:00', 52, NULL),
(92, 'jay123', 'work', 'tfyguhjoikpl[p', 'cyvuhbijnkml', '..\\public\\uploads\\Next-2.JPG', '2024-05-28 00:00:00', 52, NULL),
(93, 'KL456', 'work', 'erstcfybjnk', 'lryvubjn;l,\'.', '', '2024-05-28 00:00:00', 52, NULL),
(94, 'KL456', 'work', 'vgbhjn', 'hbjnkm', '', '2024-05-28 00:00:00', 52, NULL),
(95, 'jay123', 'work', 'fsjfjsfsdjfjfldsjfdfsdjfdslfjfsjfjsfsdjfjfldsjfdfsdjfdslfjfsjfjsfsdjfjfldsjfdfsdjfdslfj', 'fcghbj', '', '2024-05-28 00:00:00', 52, NULL),
(96, 'KL456', 'work', 'dhdsfksdfdfhfhjhfjdhfkdjfhdskjfhdsfkjhdfkjhdsfjshfhjkfhdsfhdskjf', 'mn,,', '', '2024-05-29 00:00:00', 52, NULL),
(97, 'Jay007', 'work', 'sjkhjhdfdkj', 'hjjdkhkdhfkjfhk', '', '2024-05-29 00:00:00', 52, NULL),
(98, 'Jay007', 'work', 'ddfmdfdf,d', 'm,ndnfdf,dfnd,mdnf,nd,mf', '', '2024-05-29 00:00:00', 52, NULL),
(99, 'TV_001', 'work', 'Milestonr', 'Milestonr', '', '2024-05-27 00:00:00', 52, NULL),
(100, 'TV_001', 'pay', 'Milestonr', 'Milestonr', '', '2024-05-28 00:00:00', 52, NULL),
(101, 'Apple_01', 'work', 'Milestone', 'Add mile stone description', '', '2024-05-30 00:00:00', 52, NULL),
(102, 'MOBILE123', 'work', 'waertfhyuiokp', 'rxdtcfgyij', '', '2024-05-20 00:00:00', 52, NULL),
(103, 'KL456', 'work', 'Today TAsk1', 'tajs', '', '2024-05-28 00:00:00', 52, NULL),
(104, 'KL456', 'pay', 'Task2', 'sldsl', '', '2024-05-29 00:00:00', 52, NULL),
(105, 'Glass007', 'work', 'xxtyfugyiuhoijpo', 'cfgvhjkl', '', '2024-06-26 00:00:00', 52, NULL),
(106, 'Bid1012', 'work', 'Phase1', 'pen', '', '2024-07-03 00:00:00', 120, NULL),
(107, 'Bid1012', 'pay', 'phase1', 'aashir', '', '2024-07-03 00:00:00', 120, NULL),
(108, 'KL456', 'work', 'dshgdhfgsdfg', 'gdjgdjfgdj', '', '2024-06-07 00:00:00', 52, NULL),
(109, '2024_mcl_309437_1', 'work', 'yt', 'yu', '', '2024-06-21 00:00:00', 52, NULL),
(110, '2024_mcl_309437_1', 'pay', 'sdsad', 'ds', '', '2024-06-18 00:00:00', 52, NULL),
(111, '5', 'work', 'near to me', 'any thing to do', '', '2012-12-15 00:00:00', 52, NULL),
(112, '5', 'work', 'near to me', 'any thing to do', '', '2012-12-15 00:00:00', 52, NULL),
(113, '5', 'work', 'near to me', 'any thing to do', '', '2012-12-15 00:00:00', 52, NULL),
(114, '5', 'work', 'near to me', 'any thing to do', '', '2012-12-15 00:00:00', 52, NULL),
(115, '5', 'work', 'near to me', 'any thing to do', '', '2012-12-15 00:00:00', 52, NULL),
(116, '5', 'work', 'near to me', 'any thing to do', '', '2012-12-15 00:00:00', 52, NULL),
(117, 'KL456', 'work', 'esxdcrFVCFV', 'fvg', '', '2024-07-02 00:00:00', 52, NULL),
(118, 'KL456', 'work', 'rftgy', 'gybhun', '', '2024-06-14 00:00:00', 133, 'parle123'),
(119, 'KL456', 'work', 'ftvgb', 'hftvgbh', '', '2024-06-18 00:00:00', 133, 'parle123'),
(120, 'KL456', 'pay', 'ftvgbyh', 'vgbhnj', '', '2024-06-14 00:00:00', 133, 'parle123');

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
(1, 'parle123', 'parle', 'Rajkot', 100, '0000-00-00', '0000-00-00', '0000-00-00'),
(6, 'krackjack123', 'krackjack', 'junagadh', 50, NULL, NULL, NULL);

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

--
-- Dumping data for table `financial_limit`
--

INSERT INTO `financial_limit` (`id`, `max_Limit`, `min_Limit`, `created_By`, `company_Id`) VALUES
(19, 20, 50, '52', NULL);

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

--
-- Dumping data for table `library_of_document`
--

INSERT INTO `library_of_document` (`id`, `file_Name`, `category`, `uploaded_Date`, `file_Path`, `user_Id`, `company_Id`) VALUES
(1, 'PQ_Document', 'PQ', '2024-06-07 05:49:39', '..\\public\\uploads\\Next-22MCA034_College_Certificate.pdf,..\\public\\uploads\\Next-Result List and Result Details APIs.docx', 0, NULL),
(2, 'PQ_Document', 'PQ', '2024-06-07 05:50:14', '..\\public\\uploads\\Next-22MCA034_College_Certificate.pdf,..\\public\\uploads\\Next-Result List and Result Details APIs.docx', 0, NULL),
(3, 'PQ', 'PQ', '2024-06-07 12:11:28', '..\\public\\uploads\\Next-Screenshot (316).png,..\\public\\uploads\\Next-Screenshot (317).png,..\\public\\uploads\\Next-Screenshot (318).png', 0, NULL),
(4, 'Negotiation', 'Negotiation', '2024-06-07 12:12:44', '..\\public\\uploads\\Next-Screenshot (318).png,..\\public\\uploads\\Next-Screenshot (319).png,..\\public\\uploads\\Next-Screenshot (320).png,..\\public\\uploads\\Next-Screenshot (321).png,..\\public\\uploads\\Next-Screenshot (322).png,..\\public\\uploads\\Next-Screenshot (323).png,..\\public\\uploads\\Next-Screenshot (324).png', 0, NULL),
(5, 'PQ', 'PQ', '2024-06-07 12:24:36', '..\\public\\uploads\\Next-Screenshot (316).png,..\\public\\uploads\\Next-Screenshot (317).png,..\\public\\uploads\\Next-Screenshot (318).png', 0, NULL),
(6, 'Negotiation', 'Negotiation', '2024-06-07 12:26:26', '..\\public\\uploads\\Next-Screenshot (318).png', 0, NULL),
(7, 'Pre Bid Round', 'Pre Bid Round', '2024-06-07 12:29:56', '..\\public\\uploads\\Next-Screenshot (316).png,..\\public\\uploads\\Next-Screenshot (317).png,..\\public\\uploads\\Next-Screenshot (318).png', 0, NULL),
(8, 'Corrigendum Addendum', 'Corrigendum Addendum', '2024-06-07 12:30:21', '..\\public\\uploads\\Next-Screenshot (316).png,..\\public\\uploads\\Next-Screenshot (317).png', 0, NULL),
(9, 'Tender Bid Evaluation', 'Tender Bid Evaluation', '2024-06-07 12:34:33', '..\\public\\uploads\\Next-Screenshot (316).png', 0, NULL),
(10, 'Tender Bid Evaluation', 'Tender Bid Evaluation', '2024-06-07 12:36:02', '..\\public\\uploads\\Next-Screenshot (320).png', 0, NULL),
(11, 'PQ_Document', 'PQ', '2024-06-10 06:01:43', 'public\\uploads\\Next-22MCA034_College_Certificate.pdf', 52, NULL),
(12, 'Create Tender', 'Create Tender', '2024-06-11 07:41:21', 'public\\uploads\\Next-Screenshot (316).png', 52, NULL),
(13, 'My Annexure', 'My Annexure', '2024-06-11 08:01:11', 'public\\uploads\\Next-Screenshot (316).png,public\\uploads\\Next-Screenshot (317).png,public\\uploads\\Next-Screenshot (318).png,public\\uploads\\Next-Screenshot (319).png,public\\uploads\\Next-Screenshot (320).png,public\\uploads\\Next-Screenshot (321).png,public\\uploads\\Next-Screenshot (322).png,public\\uploads\\Next-Screenshot (323).png,public\\uploads\\Next-Screenshot (324).png,public\\uploads\\Next-Screenshot (325).png,public\\uploads\\Next-Screenshot (326).png,public\\uploads\\Next-Screenshot (327).png,public\\u', 52, NULL),
(14, 'PQ', 'PQ', '2024-06-12 11:42:48', 'public\\uploads\\Next-Capture.JPG', 52, 'parle123'),
(15, 'PQ', 'PQ', '2024-06-14 10:24:06', 'public\\uploads\\Next-tms (3).sql', 52, NULL);

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
(116, NULL, '', 1234567890, '2024-04-29T18:30:00.000Z', '2024-05-23', 'sjdsafkjsa', 160, 52, '', NULL),
(117, NULL, '', 123456789, '2024-05-07', '2024-05-23', 'sjdsafkjsa', 160, 52, '', NULL),
(118, NULL, '', 1234567890, '2024-04-30', '2024-05-23', 'sdsd', 160, 52, '', NULL),
(119, NULL, '', 1234567890, '2024-05-21', '2024-05-23', 'sjdsafkjsa', 160, 52, '', NULL),
(120, NULL, '', 1234567890, '2024-05-20', '2024-05-23', 'qewrterrerefdsss', 160, 52, '', NULL),
(121, NULL, '', 123456789, '2024-05-02', '2024-05-23', 'sdsa', 160, 52, '', NULL),
(122, NULL, NULL, NULL, '', '2024-05-23', '', 162, 52, '', NULL),
(123, 10000, NULL, NULL, '2024-05-21', '2024-05-23', '', 162, 52, '', NULL),
(124, 10000, NULL, 1234567890, '2024-05-29', '2024-05-23', 'shahi', 162, 52, '', NULL),
(125, 30000, '', 558552, '01/01/2001', '2024-05-23', 'awsertdfgyoijpk[pl[]', 163, 52, '', NULL),
(126, 10000, NULL, 1234567890, '2024-05-29', '2024-05-23', 'shahi', 162, 52, '', NULL),
(127, NULL, 'Axis', 29, '2024-05-30', '2024-05-24', 'sjdsafkjsa', 165, 52, '', NULL),
(129, NULL, '', 0, '', '2024-05-24', 'dsd', 165, 52, '', NULL),
(130, 10000, '', 121, '2024-05-28', '2024-05-24', 'sdsa', 170, 52, '', NULL),
(131, 500, 'SBI', 12345, '2024-05-23', '2024-05-24', 'Test payment', 166, 52, '', NULL),
(132, NULL, 'SBI', 12345, '12/2/24', '2024-05-24', 'dfdf', 166, 52, '', NULL),
(133, NULL, 'SBI', 12345, '12/2/24', '2024-05-24', 'dfdf', 166, 52, '', NULL),
(134, NULL, 'SBI', 12345, '12/2/24', '2024-05-24', 'dfdf', 166, 52, '', NULL),
(135, NULL, 'SBI', 12345, '12/2/24', '2024-05-24', 'dfdf', 171, 52, NULL, NULL),
(136, NULL, 'SBI', 12345, '12/2/24', '2024-05-24', 'dfdf', 171, 52, NULL, NULL),
(137, NULL, 'SBI', 12345, '12/2/24', '2024-05-24', 'dfdf', 171, 52, NULL, NULL),
(138, NULL, 'SBI', 12345, '12/2/24', '2024-05-24', 'dfdf', 171, 52, NULL, NULL),
(139, NULL, 'SBI', 12345, '12/2/24', '2024-05-24', 'dfdf', 171, 52, NULL, NULL),
(140, NULL, 'SBI', 12345, '12/2/24', '2024-05-24', 'dfdf', 171, 52, NULL, NULL),
(141, NULL, 'SBI', 12345, '12/2/24', '2024-05-24', 'dfdf', 171, 52, NULL, NULL),
(142, NULL, 'SBI', 12345, '12/2/24', '2024-05-24', 'dfdf', 171, 52, '..\\public\\uploads\\Next-Result List and Result Details APIs.docx,..\\public\\uploads\\Next-22MCA034_College_Certificate.pdf', NULL),
(143, NULL, 'SBI', 12345, '12/2/24', '2024-05-24', 'dfdf', 171, 52, '', NULL),
(144, NULL, 'SBI', 12345, '12/2/24', '2024-05-24', 'dfdf', 171, 52, '', NULL),
(145, NULL, 'SBI', 12345, '12/2/24', '2024-05-24', 'dfdf', 171, 52, '..\\public\\uploads\\Next-Result List and Result Details APIs.docx,..\\public\\uploads\\Next-22MCA034_College_Certificate.pdf', NULL),
(146, NULL, 'SBI', 12345, '12/2/24', '2024-05-24', 'dfdf', 171, 52, '', NULL),
(147, NULL, '', 2147483647, '02/12/2024', '2024-05-27', 'The Indian Premier LeagueThe Indian Premier League', 173, 52, NULL, NULL),
(148, 25000, '', 558558, '02/02/2002', '2024-05-27', 'The Indian Premier League', 174, 52, NULL, NULL),
(149, 0, '', 1234567890, '2024-05-07', '2024-05-28', 'sds', 169, 52, '..\\public\\uploads\\Next-Screenshot (320).png', NULL),
(150, 0, '', 558558, '2024-05-29', '2024-05-29', 'kjjhukhkj', 182, 52, '..\\public\\uploads\\Next-23.JPG', NULL),
(151, 30000, '', 959599559, '2024-05-30', '2024-05-29', 'dkjdfhkdjf', 183, 52, '..\\public\\uploads\\Next-23.JPG', NULL),
(152, 25000, 'Axis', 56565, '2024-05-28', '2024-05-29', 'wdsdsdsd', 174, 52, '..\\public\\uploads\\Next-23.JPG', NULL),
(153, 0, '', 123456, '2024-05-29', '2024-05-29', 'Tet', 185, 52, '..\\public\\uploads\\Next-67.PNG', NULL),
(154, 0, '', 4567896, '2024-05-29', '2024-05-29', 'Done', 186, 52, '..\\public\\uploads\\Next-67.PNG', NULL),
(155, 10000, NULL, 2147483647, '2024-05-01', '2024-05-29', 'Apo', 187, 52, NULL, NULL),
(156, 0, '', 123456789, '2024-05-01', '2024-05-30', 'qwertyuiop', 194, 52, '..\\public\\uploads\\Next-Screenshot (320).png', NULL),
(157, 0, '', 123456789, '2024-05-29', '2024-05-30', 'qwertyuio', 173, 52, '..\\public\\uploads\\Next-Screenshot (320).png', NULL),
(158, 0, '', 123456789, '2024-05-28', '2024-05-30', 'qwertyui', 173, 52, '..\\public\\uploads\\Next-Screenshot (320).png', NULL),
(159, 25000, '', 0, '2024-05-28', '2024-05-30', 'qwertyui', 174, 52, '..\\public\\uploads\\Next-Screenshot (319).png', NULL),
(160, 25000, '', 454464, '+056465-01-08', '2024-05-30', 'jkdfdfhjfjfkhk', 174, 52, '..\\public\\uploads\\Next-2.JPG', NULL),
(161, 0, '', 84687979, '2024-05-21', '2024-05-30', 'djgfdyufgiudfhidu', 198, 52, '..\\public\\uploads\\Next-68.PNG', NULL),
(162, 0, '', 4456466, '2024-06-01', '2024-05-30', 'sretdyguoijpk', 199, 52, '..\\public\\uploads\\Next-23.JPG', NULL),
(163, 97543536, NULL, 1234567890, '2024-04-30', '2024-05-30', 'efdss', 200, 52, NULL, NULL),
(164, 97543536, '', 56466464, '2024-05-28', '2024-05-31', '', 200, 52, NULL, NULL),
(165, 97543536, '', 4564566, '', '2024-05-31', '', 200, 52, NULL, NULL),
(166, 10000, '', 65561, '2024-05-29', '2024-05-31', '', 170, 52, NULL, NULL),
(167, 97543536, '', 558558, '2024-05-29', '2024-05-31', '', 200, 52, NULL, NULL),
(168, 0, '', 65456456, '2024-06-25', '2024-06-03', 'dfngfgkj', 204, 52, '..\\public\\uploads\\Next-chad-montano-MqT0asuoIcU-unsplash.jpg', NULL),
(169, 0, '', 963852852, '2024-06-25', '2024-06-03', 'qwertyuiop[]', 205, 52, '..\\public\\uploads\\Next-chad-montano-MqT0asuoIcU-unsplash.jpg', NULL),
(170, 5000, '', 56565, '2024-07-03', '2024-06-03', '', 206, 52, NULL, NULL),
(171, 25000, '', 2147483647, '2024-06-18', '2024-06-03', '', 174, 52, NULL, NULL),
(172, 25000, NULL, NULL, '2024-06-18', '2024-06-03', '', 174, 52, NULL, NULL),
(173, 0, '', 23456789, '2024-07-03', '2024-06-03', 'pens', 207, 120, '..\\public\\uploads\\Next-Screenshot (320).png', NULL),
(174, 0, '', 12345678, '2024-07-03', '2024-06-03', 'Bob', 210, 120, '..\\public\\uploads\\Next-Screenshot (317).png', NULL),
(175, 0, '', 1234567890, '2024-06-26', '2024-06-03', '', 211, 120, NULL, NULL),
(176, 0, '', 0, '2024-06-25', '2024-06-07', 'we', 213, 52, '..\\public\\uploads\\Next-Screenshot (317).png', NULL),
(177, 0, '', 0, '', '2024-06-07', 'ewq', 214, 52, '..\\public\\uploads\\Next-Screenshot (324).png', NULL),
(178, 10002, '', 0, '2024-06-25', '2024-06-07', '', 215, 52, NULL, NULL),
(179, 0, 'Axis', 56565, '2024-07-02', '2024-06-12', 'wertyuio', 194, 52, 'public\\uploads\\Next-Capture.JPG', NULL),
(180, 25000, '', 56466464, '2024-05-29', '2024-06-12', '', 174, 52, NULL, NULL);

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
(87, '4', 'Technical', 'what ois your dead line?', '2012-04-12 00:00:00', 'null', '2012-12-12 15:20:00', '52', '', NULL, NULL),
(88, 'jay123', 'Financial', 'rsewdsa', '2024-05-31 00:00:00', '..\\public\\uploads\\Next-Screenshot (286).png', '2024-05-27 00:00:00', '52', '', NULL, NULL),
(89, 'jay123', 'Technical', 'aa', '2024-05-28 00:00:00', '..\\public\\uploads\\Next-Screenshot (286).png', '2024-05-27 00:00:00', '52', '', NULL, NULL),
(90, 'KL456', 'Financial', 'The Indian Premier League', '2024-05-13 00:00:00', '..\\public\\uploads\\Next-Path.png', '2024-05-20 00:00:00', '52', 'sdsd', NULL, NULL),
(91, 'KL456', 'Financial', 'sad', '2024-05-29 00:00:00', '..\\public\\uploads\\Next-Screenshot (321).png', '2024-05-28 00:00:00', '52', 'jkfgkk', NULL, NULL),
(92, 'KL456', 'Technical', 'Todays', '2024-05-17 00:00:00', '..\\public\\uploads\\Next-Screenshot (316).png', '2024-05-28 00:00:00', '52', 'sdd', NULL, NULL),
(93, 'KL456', 'Financial', 'TOdays', '2024-05-30 00:00:00', '..\\public\\uploads\\Next-Screenshot (321).png', '2024-05-28 00:00:00', '52', 'ndjgfg', NULL, NULL),
(94, 'Jay007', 'Technical', 'shdsgd', '2024-05-23 00:00:00', '..\\public\\uploads\\Next-2.JPG', '2024-05-13 00:00:00', '52', 'qwertyuio', NULL, NULL),
(95, 'Jay007', 'Financial', 'dkjfdhjfhdjfhjdh', '2024-05-29 00:00:00', '..\\public\\uploads\\Next-23.JPG', '2024-05-22 00:00:00', '52', 'ertyuio', NULL, NULL),
(96, 'Jay007', 'Technical', 'wsertfhyuop[;', '2024-05-29 00:00:00', '..\\public\\uploads\\Next-23.JPG', '2024-05-27 00:00:00', '52', 'pwertyuiop', NULL, NULL),
(97, 'KL456', 'Financial', 'qwertyuiop[;]\'', '2024-05-21 00:00:00', '..\\public\\uploads\\Next-23.JPG', '2024-05-14 00:00:00', '52', 'jfdgjg', NULL, NULL),
(98, 'Jay007', 'Technical', 'qwertyuiop[', '2024-05-21 00:00:00', '..\\public\\uploads\\Next-23.JPG', '2024-05-21 00:00:00', '52', '[wertyuiop', NULL, NULL),
(99, 'Jay007', 'Financial', 'qwertyuiop[', '2024-05-21 00:00:00', '..\\public\\uploads\\Next-2.JPG', '2024-05-29 00:00:00', '52', 'wertyuio', NULL, NULL),
(100, 'TV_001', 'Technical', 'What is tender', '2024-05-29 00:00:00', '..\\public\\uploads\\Next-1.JPG', '2024-05-29 00:00:00', '52', 'dhjsdg', NULL, NULL),
(101, 'TV_001', 'Financial', 'FInical question', '2024-05-29 00:00:00', '..\\public\\uploads\\Next-1.JPG', '2024-05-27 00:00:00', '52', 'fjdkf', NULL, NULL),
(102, 'MOBILE123', 'Technical', 'rsedtgiojpk', '2024-05-30 00:00:00', '..\\public\\uploads\\Next-67.PNG', '2024-05-30 00:00:00', '52', '', NULL, NULL),
(103, 'MOBILE123', 'Financial', 'szxdfgvhbjlkm', '2024-05-30 00:00:00', '..\\public\\uploads\\Next-68.PNG', '2024-05-30 00:00:00', '52', '', NULL, NULL),
(104, 'KL456', 'Financial', 'sdsad', '2024-05-28 00:00:00', '..\\public\\uploads\\Next-Screenshot (317).png', '2024-05-26 00:00:00', '52', 'lkjfdlkdlkj', NULL, NULL),
(105, 'KL456', 'Technical', 'asdsad', '2024-05-31 00:00:00', '..\\public\\uploads\\Next-Screenshot (317).png', '2024-05-28 00:00:00', '52', 'sdds', NULL, NULL),
(106, 'KL456', 'Financial', 'Aashir And Raj', '2024-05-29 00:00:00', '..\\public\\uploads\\Next-Screenshot (321).png', '2024-05-28 00:00:00', '52', 'lkjfljldkflkj', NULL, NULL),
(107, 'Glass007', 'Financial', 'erdtfyguhijo', '2024-06-03 00:00:00', '..\\public\\uploads\\Next-chad-montano-MqT0asuoIcU-unsplash.jpg', '2024-06-03 00:00:00', '52', 'dmnsdfbsdfjhfbffhdfbhbd', NULL, NULL),
(108, 'Glass007', 'Technical', 'eawrstyioup', '2024-06-03 00:00:00', '..\\public\\uploads\\Next-chad-montano-MqT0asuoIcU-unsplash.jpg', '2024-06-03 00:00:00', '52', 'dmnsdfbsdfjhfbffhdfbhbd', NULL, NULL),
(109, 'Bid1012', 'Financial', 'What is pen', '2024-07-02 00:00:00', '..\\public\\uploads\\Next-Screenshot (320).png', '2024-07-02 00:00:00', '120', 'pen is blue', NULL, NULL),
(110, 'Bid1012', 'Technical', 'pen size?', '2024-07-03 00:00:00', '..\\public\\uploads\\Next-Screenshot (320).png', '2024-07-03 00:00:00', '120', '3', NULL, NULL),
(111, '2024_mcl_309437_1', 'Financial', 'hhhhj', '2024-06-27 00:00:00', '..\\public\\uploads\\Next-Screenshot (321).png', '2024-06-25 00:00:00', '52', 'ddsd', NULL, NULL),
(112, '2024_mcl_309437_1', 'Technical', 'aisjakjsak', '2024-07-03 00:00:00', '..\\public\\uploads\\Next-Screenshot (324).png', '2024-07-03 00:00:00', '52', 'aaaaaaaaaa', NULL, NULL),
(113, 'KL456', 'Financial', 'qwertyui', '2024-06-12 00:00:00', 'public\\uploads\\Next-Capture.JPG', '2024-06-12 00:00:00', '52', '', NULL, NULL),
(114, 'Glass007', 'Technical', 'qwe', '2024-06-22 00:00:00', 'public\\uploads\\Next-2.JPG', '2024-06-22 00:00:00', '133', '', NULL, 'parle123'),
(115, 'KL456', 'Technical', 'tfgybhnj', '2024-06-12 00:00:00', 'public\\uploads\\Next-23.JPG', '2024-06-30 00:00:00', '133', '', NULL, 'parle123'),
(116, 'KL456', 'Financial', 'rtfgyh', '2024-06-14 00:00:00', 'public\\uploads\\Next-23.JPG', '2024-06-14 00:00:00', '133', '', NULL, 'parle123');

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
(160, '101TenderTesting', 'document', 'paid', 'offline', 'USD', 123123.00, '', '', '2024-05-28 00:00:00', '..\\public\\uploads\\Next-Screenshot (285).png', 'ettryuiuytrewqertyuiouytrewq', 'Done', 52, NULL, NULL),
(161, 'TestingTenderNo2', 'emd', 'paid', 'offline', '', 20000.00, '', '', '2024-05-30 00:00:00', '..\\public\\uploads\\Next-18mca018_poster.pdf', 'sdsd', 'pending', 52, NULL, NULL),
(162, 'TestingTenderNo2', 'sd', 'paid', 'online', 'INR', 30000.00, '', 'sdsa', '2024-05-29 00:00:00', '..\\public\\uploads\\Next-18mca018_poster.pdf', 'scsa', 'Done', 52, NULL, NULL),
(163, '101TenderTesting', 'sd', 'paid', 'offline', 'USD', 50000.00, '', '', '2024-05-21 00:00:00', '..\\public\\uploads\\Next-Calendar.png', 'qwertfgijopl[', 'Done', 52, NULL, NULL),
(164, '101TenderTesting', 'emd', 'paid', 'offline', 'USD', 20000.00, '', '', '2024-04-30 00:00:00', '..\\public\\uploads\\Next-Calendar.png', 'awerstdguoijkpl;\'', 'pending', 52, NULL, NULL),
(165, 'jay123', 'document', 'free', '', '', 0.00, '', '', '0000-00-00 00:00:00', '..\\public\\uploads\\Next-216X92.png', 'cxxzxcx', 'Done', 52, NULL, NULL),
(166, '5', 'EMD', 'paid', 'online', 'USD', 100.50, 'UPI', 'Transaction details', '2024-05-01 00:00:00', NULL, 'Additional comments', 'Done', 52, NULL, NULL),
(167, '5', 'SD', 'paid', 'online', 'USD', 100.50, 'UPI', 'Transaction details', '2024-05-01 00:00:00', NULL, 'Additional comments', 'pending', 52, NULL, NULL),
(168, 'jay123', '', 'free', '', '', 0.00, '', '', '0000-00-00 00:00:00', '..\\public\\uploads\\Next-Screenshot (286).png', 'ss', 'pending', 52, NULL, NULL),
(169, 'jay123', 'emd', 'paid', 'offline', 'USD', 20000.00, '', '', '2024-05-28 00:00:00', '..\\public\\uploads\\Next-Screenshot (286).png', 'ss', 'Done', 52, NULL, NULL),
(170, 'jay123', 'sd', 'paid', 'online', '', 30000.00, '', 'ds', '2024-04-30 00:00:00', '..\\public\\uploads\\Next-Screenshot (286).png', 'ssa', 'Done', 52, NULL, NULL),
(171, '10', 'EMD', 'paid', 'online', 'USD', 100.50, 'UPI', 'Transaction details', '2024-05-01 00:00:00', NULL, 'Additional comments', 'Done', 52, NULL, NULL),
(172, 'jay123', '', 'paid', 'offline', 'USD', 8520.00, '', '', '2024-05-29 00:00:00', '..\\public\\uploads\\Next-Path.png', 'qwertyuiop[]', 'pending', 52, NULL, NULL),
(173, 'KL456', 'emd', 'paid', 'offline', 'USD', 25000.00, '', '', '2024-05-21 00:00:00', '..\\public\\uploads\\Next-Path.png', 'The Indian Premier LeagueThe Indian Premier League', 'Done', 52, NULL, NULL),
(174, 'KL456', 'sd', 'paid', 'offline', 'USD', 50000.00, '', '', '2024-05-14 00:00:00', '..\\public\\uploads\\Next-Calendar.png', 'The Indian Premier LeagueThe Indian Premier LeagueThe Indian Premier League', 'Done', 52, NULL, NULL),
(176, '10', 'Document', 'paid', 'online', 'USD', 100.50, 'UPI', 'Transaction details', '2024-05-01 00:00:00', NULL, 'Additional comments', 'pending', 52, NULL, NULL),
(177, '10', 'emd', 'paid', 'online', 'USD', 5000.00, 'UPI', 'Transaction details', '2024-05-01 00:00:00', NULL, 'Additional comments', 'pending', 52, NULL, NULL),
(178, '10', 'sd', 'paid', 'online', 'USD', 10000.00, 'UPI', 'Transaction details', '2024-05-01 00:00:00', NULL, 'Additional comments', 'pending', 52, NULL, NULL),
(179, '10', 'sd', 'paid', 'online', 'USD', 10000.00, 'UPI', 'Transaction details', '2024-05-01 00:00:00', NULL, 'Additional comments', 'pending', 52, NULL, NULL),
(180, '10', 'emd', 'paid', 'online', 'USD', 10000.00, 'UPI', 'Transaction details', '2024-05-01 00:00:00', NULL, 'Additional comments', 'pending', 52, NULL, NULL),
(181, 'KL456', 'emd', 'free', '', '', 0.00, '', '', '0000-00-00 00:00:00', '..\\public\\uploads\\Next-Screenshot (316).png', 'fdfdsf', 'pending', 52, NULL, NULL),
(182, 'Jay007', 'emd', 'paid', 'offline', 'USD', 20000.00, '', '', '2024-05-21 00:00:00', '..\\public\\uploads\\Next-2.JPG', 'kjhejkrhekhkhjjfh', 'Done', 52, NULL, NULL),
(183, 'Jay007', 'sd', 'paid', 'online', 'USD', 50000.00, '', 'jhghuggj', '2024-04-30 00:00:00', '..\\public\\uploads\\Next-23.JPG', 'djjkfdhkjfhdkhdf', 'Done', 52, NULL, NULL),
(184, 'jay123', 'sd', 'paid', 'offline', 'USD', 20000.00, '', '', '2024-05-29 00:00:00', '..\\public\\uploads\\Next-23.JPG', 'fghjkl;', 'pending', 52, NULL, NULL),
(185, 'TV_001', '', 'paid', 'online', '', 1000.00, '', 'Bank Information ', '2024-05-28 00:00:00', '..\\public\\uploads\\Next-67.PNG', 'Any add details', 'Done', 52, NULL, NULL),
(186, 'TV_001', 'emd', 'paid', 'online', '', 50000.00, '', 'Transaction Id', '2024-05-28 00:00:00', '..\\public\\uploads\\Next-67.PNG', 'Transaction Id', 'Done', 52, NULL, NULL),
(187, 'TV_001', 'sd', 'paid', 'online', '', 60000.00, '', 'Bank Number', '2024-05-29 00:00:00', '..\\public\\uploads\\Next-67.PNG', 'Bank Number', 'Done', 52, NULL, NULL),
(188, 'Jay007', 'document', 'free', '', '', 0.00, '', '', '0000-00-00 00:00:00', '..\\public\\uploads\\Next-23.JPG', 'fghjlk', 'pending', 52, NULL, NULL),
(189, 'Jay007', 'document', 'paid', 'offline', 'USD', 4554.00, '', '', '2024-05-21 00:00:00', '..\\public\\uploads\\Next-2.JPG', 'dfslkj', 'pending', 52, NULL, NULL),
(190, 'KL456', '', 'free', '', '', 0.00, '', '', '0000-00-00 00:00:00', '..\\public\\uploads\\Next-Screenshot (319).png', 'ddas', 'pending', 52, NULL, NULL),
(191, 'KL456', '', 'paid', 'online', 'USD', 23232.00, '', 'dsads', '2024-05-28 00:00:00', '..\\public\\uploads\\Next-Screenshot (317).png', 'dssa', 'pending', 52, NULL, NULL),
(192, 'KL456', 'emd', 'paid', 'online', 'USD', 3232.00, '', 'dsadsa', '2024-05-21 00:00:00', '..\\public\\uploads\\Next-Screenshot (320).png', 'dsads', 'pending', 52, NULL, NULL),
(193, 'KL456', 'sd', 'paid', 'online', 'USD', 232.00, '', 'wew', '2024-05-28 00:00:00', '..\\public\\uploads\\Next-Screenshot (316).png', 'zzxz\\', 'pending', 52, NULL, NULL),
(194, 'KL456', 'document', 'paid', 'offline', 'USD', 5000.00, '', '', '2024-05-21 00:00:00', '..\\public\\uploads\\Next-Screenshot (320).png', 'iusisjdsjdjsd', 'Done', 52, NULL, NULL),
(195, 'KL456', 'emd', 'paid', 'online', 'USD', 20000.00, '', '111111', '2024-05-14 00:00:00', '..\\public\\uploads\\Next-Screenshot (320).png', 'wertyuiop', 'pending', 52, NULL, NULL),
(196, 'KL456', 'sd', 'paid', 'offline', 'USD', 323232.00, '', '', '2024-05-07 00:00:00', '..\\public\\uploads\\Next-Screenshot (320).png', 'qewrtyuio', 'pending', 52, NULL, NULL),
(197, 'KL456', 'sd', 'paid', 'offline', 'USD', 60000.00, '', '', '2024-05-28 00:00:00', '..\\public\\uploads\\Next-Screenshot (317).png', 'qwertyui', 'pending', 52, NULL, NULL),
(198, 'MOBILE123', 'document', 'paid', 'offline', 'USD', 654.00, '', '', '2024-05-30 00:00:00', '..\\public\\uploads\\Next-23.JPG', 'djkffhdkfh', 'Done', 52, NULL, NULL),
(199, 'MOBILE123', 'emd', 'paid', 'offline', 'USD', 2456464.00, '', '', '2024-05-28 00:00:00', '..\\public\\uploads\\Next-2.JPG', 'dskjhdjfhdhdfhjdkfdfh', 'Done', 52, NULL, NULL),
(200, 'MOBILE123', 'sd', 'paid', 'offline', 'USD', 99999999.99, '', '', '2024-05-28 00:00:00', '..\\public\\uploads\\Next-2.JPG', 'sxdfghbjkl', 'Done', 52, NULL, NULL),
(201, '5', 'EMD', 'paid', 'online', 'USD', 100.50, 'UPI', 'Transaction details', '2024-05-01 00:00:00', NULL, 'Additional comments', 'pending', 52, NULL, NULL),
(202, '5', 'EMD', 'paid', 'online', 'USD', 100.50, 'UPI', 'Transaction details', '2024-05-01 00:00:00', NULL, 'Additional comments', 'pending', 52, NULL, NULL),
(203, '5', 'EMD', 'paid', 'online', 'USD', 100.50, 'UPI', 'Transaction details', '2024-05-01 00:00:00', NULL, 'Additional comments', 'pending', 52, NULL, NULL),
(204, 'Glass007', 'document', 'paid', 'offline', 'USD', 56.00, '', '', '2024-06-18 00:00:00', '..\\public\\uploads\\Next-chad-montano-MqT0asuoIcU-unsplash.jpg', 'hfkhgkjfghfkjghgjfgk', 'Done', 52, NULL, NULL),
(205, 'Glass007', 'emd', 'paid', 'offline', 'USD', 20000.00, '', '', '2024-06-18 00:00:00', '..\\public\\uploads\\Next-anna-tukhfatullina-food-photographer-stylist-Mzy-OjtCI70-unsplash.jpg', 'wsedrtyuiop[', 'Done', 52, NULL, NULL),
(206, 'Glass007', 'sd', 'paid', 'offline', 'USD', 25000.00, '', '', '2024-05-29 00:00:00', '..\\public\\uploads\\Next-davide-cantelli-jpkfc5_d-DI-unsplash.jpg', 'qwertyuiop[', 'Done', 52, NULL, NULL),
(207, 'Bid1012', '', 'free', '', '', 0.00, '', '', '0000-00-00 00:00:00', '..\\public\\uploads\\Next-Screenshot (316).png', 'Document', 'Done', 120, NULL, NULL),
(208, 'Bid1012', '', 'paid', 'online', '', 20000.00, '', 'bob', '2024-07-02 00:00:00', '..\\public\\uploads\\Next-Screenshot (316).png', 'bob', 'pending', 120, NULL, NULL),
(209, 'Bid1012', '', 'paid', 'offline', 'USD', 20000.00, '', '', '2024-07-05 00:00:00', '..\\public\\uploads\\Next-Screenshot (321).png', 'pens', 'pending', 120, NULL, NULL),
(210, 'Bid1012', 'emd', 'paid', 'online', 'USD', 30000.00, '', 'Bob', '2024-07-02 00:00:00', '..\\public\\uploads\\Next-Screenshot (316).png', 'Aashir', 'Done', 120, NULL, NULL),
(211, 'Bid1012', 'sd', 'paid', 'online', '', 30000.00, '', 'Bob', '2024-07-02 00:00:00', '..\\public\\uploads\\Next-Screenshot (320).png', 'Add', 'Done', 120, NULL, NULL),
(212, 'Bid1012', 'document', 'paid', 'offline', 'USD', 8909.00, '', '', '2024-06-25 00:00:00', '..\\public\\uploads\\Next-Screenshot (320).png', 'qwertoiuo', 'pending', 120, NULL, NULL),
(213, '1000418584', 'document', 'free', '', '', 0.00, '', '', '0000-00-00 00:00:00', '..\\public\\uploads\\Next-Screenshot (321).png', 'sdkjskj', 'Done', 52, NULL, NULL),
(214, '1000418584', 'emd', 'paid', 'online', '', 29998.00, '', 'bobb', '2024-06-25 00:00:00', '..\\public\\uploads\\Next-Screenshot (321).png', 'skjskd', 'Done', 52, NULL, NULL),
(215, '1000418584', 'sd', 'paid', 'online', '', 40000.00, '', 'kjdskd', '2024-07-04 00:00:00', '..\\public\\uploads\\Next-Screenshot (320).png', 'dsmkdm,s', 'Done', 52, NULL, NULL),
(216, 'Apple_01', 'emd', 'free', '', '', 0.00, '', '', '0000-00-00 00:00:00', 'public\\uploads\\Next-Capture.JPG', 'hjgfhfghjg', 'pending', 52, NULL, NULL),
(217, 'KL456', 'document', 'free', '', '', 0.00, '', '', '0000-00-00 00:00:00', 'public\\uploads\\Next-Capture.JPG', 'mmm', 'pending', 52, NULL, NULL),
(218, 'KL456', 'emd', 'free', '', '', 0.00, '', '', '0000-00-00 00:00:00', 'public\\uploads\\Next-23.JPG', 'gfvhbj', 'pending', 133, NULL, 'parle123'),
(219, 'KL456', 'document', 'free', '', '', 0.00, '', '', '0000-00-00 00:00:00', 'public\\uploads\\Next-2.JPG', 'hgbjn', 'pending', 133, NULL, 'parle123');

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
(12, 'https://registration.tendertiger.co.in/api/Registration/Login', 'w7bCq9', 'rakadi7782@buzblox.com', '2024-06-11 05:44:01', NULL),
(13, 'http://localhost:5173/#/admin/MyAccount', '1234', 'ashir', '2024-06-12 11:26:14', NULL);

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
(34, '111116', 'AAshir', 'KL456', 1, 1, 1, NULL),
(35, '111116', 'Raj', 'KL456', 1, NULL, NULL, NULL),
(36, '72272966', 'financial', 'Glass007', 1, 1, 1, NULL),
(37, '72272967', 'Raj', 'Bid1012', 1, 1, 1, NULL),
(38, '72272967', 'jay', 'Bid1012', NULL, NULL, NULL, NULL),
(39, '72489777', 'aasjihr', '1000418584', 1, NULL, 1, NULL),
(40, '72489777', 'rajjj', '1000418584', 1, NULL, NULL, NULL),
(41, '72452475', 'aashir', '2024_mcl_309437_1', 1, 1, 1, NULL),
(42, '72452475', 'rajjj', '2024_mcl_309437_1', 1, NULL, 1, NULL),
(43, '111120', 'hy', 'Apple_01', NULL, NULL, NULL, NULL);

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
(10, 'TATA', 52, NULL, NULL, NULL, NULL, 0, '2024-06-06 06:56:34', NULL),
(11, 'TATA1', 52, NULL, NULL, NULL, NULL, 0, '2024-06-06 06:56:47', NULL),
(14, 'KL456', 52, NULL, NULL, 1, NULL, 0, '2024-06-06 12:38:30', 'parle123'),
(18, 'Testing Tender3', 52, NULL, NULL, NULL, NULL, 0, '2024-06-06 10:08:59', NULL),
(24, 'Tender10222', 52, NULL, NULL, NULL, NULL, 1, '2024-06-10 09:57:58', NULL),
(35, 'TE_123', 133, NULL, NULL, 1, NULL, 0, '2024-06-13 15:50:52', NULL),
(36, 'DE_1', 134, NULL, NULL, 1, NULL, 0, '2024-06-13 15:55:14', NULL),
(37, 'sdghd121', 134, NULL, NULL, 1, NULL, 0, '2024-06-13 18:22:50', NULL),
(39, 'Glass007', 133, NULL, NULL, 1, NULL, 0, '2024-06-13 18:52:52', 'parle123'),
(40, 'TE_123', 134, NULL, NULL, 1, NULL, 0, '2024-06-13 19:10:07', 'krackjack123'),
(41, 'Tender10222', 52, NULL, NULL, 1, NULL, 0, '2024-06-14 10:54:45', 'parle123'),
(42, 'HII123', 52, NULL, NULL, 1, NULL, 0, '2024-06-14 10:57:08', 'parle123'),
(43, 'HII123', 52, NULL, NULL, 1, NULL, 0, '2024-06-14 15:49:28', 'parle123'),
(44, 'HII123', 52, NULL, NULL, 1, NULL, 0, '2024-06-14 15:50:42', 'parle123');

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
(125, 'The Indian Premier LeagueThe Indian Premier LeagueThe Indian Premier League', '2024-05-26', '..\\public\\uploads\\Next-Calendar.png', '2024-05-19', 52, '2024-05-27 15:48:14', NULL, NULL, 'KL456', NULL),
(126, 'wsexdrcftvgybhunijmok,pl;', '2024-05-25', '..\\public\\uploads\\Next-chad-montano-MqT0asuoIcU-unsplash.jpg', '2024-05-19', 52, '2024-05-28 12:09:40', NULL, NULL, 'KL456', NULL),
(129, 'this is good', '2024-05-19', '..\\public\\uploads\\Next-Screenshot (320).png', '2024-05-12', 52, '2024-05-30 10:39:44', NULL, NULL, 'KL456', NULL),
(130, 'sdsad', '2024-03-31', '..\\public\\uploads\\Next-Screenshot (320).png', '2024-05-21', 52, '2024-05-30 11:02:59', NULL, NULL, 'KL456', NULL),
(131, 'Corrigendum text', '2024-05-21', '..\\public\\uploads\\Next-63.PNG', '2024-05-26', 52, '2024-05-30 14:24:59', NULL, NULL, 'Apple_01', NULL),
(132, 'corrigendum', '2024-05-30', '..\\public\\uploads\\Next-23.JPG', '2024-05-30', 52, '2024-05-30 15:02:01', NULL, NULL, 'Apple_01', NULL),
(133, 'jfhdkfq', '2024-05-30', '..\\public\\uploads\\Next-23.JPG', '2024-05-30', 52, '2024-05-30 15:18:40', NULL, NULL, 'Apple_01', NULL),
(135, 'efjdfkdkfl', '2024-06-03', '..\\public\\uploads\\Next-chad-montano-MqT0asuoIcU-unsplash.jpg', '2024-06-03', 52, '2024-06-03 11:30:55', NULL, NULL, 'Glass007', NULL),
(139, 'werty', '2024-06-12', 'public\\uploads\\Next-Capture.JPG', '2024-06-29', 52, '2024-06-12 16:05:20', NULL, NULL, 'KL456', NULL),
(140, 'ftvgbh', '2024-06-12', 'public\\uploads\\Next-Capture.JPG', '2024-06-12', 52, '2024-06-12 16:06:03', NULL, NULL, 'KL456', NULL),
(141, 'zdsd', '2024-06-24', 'public\\uploads\\Next-Screenshot (321).png', '2024-06-16', 52, '2024-06-14 12:01:44', NULL, NULL, 'KL456', NULL),
(142, 'cghjbk', '2024-06-22', 'public\\uploads\\Next-68.PNG', '2024-06-23', 133, '2024-06-14 12:01:52', NULL, NULL, 'KL456', 'parle123'),
(143, 'plkm', '2024-06-17', 'public\\uploads\\Next-23.JPG', '2024-06-16', 133, '2024-06-14 12:02:13', NULL, NULL, 'KL456', 'parle123'),
(144, 'dfghjk', '2024-06-01', 'public\\uploads\\Next-2.JPG', '2024-06-22', 133, '2024-06-14 15:01:11', NULL, NULL, 'KL456', 'parle123'),
(145, 'dfxgchbjlk', '2024-06-14', 'public\\uploads\\Next-23.JPG', '2024-06-14', 133, '2024-06-14 15:58:27', NULL, NULL, 'KL456', NULL);

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
(498, 'Glass007', 52, NULL),
(499, 'Glass007', 115, NULL),
(500, 'Glass007', 117, NULL),
(501, 'Glass007', 118, NULL),
(502, 'Glass007', 119, NULL),
(512, 'KL456', 115, NULL),
(513, 'KL456', 117, NULL),
(514, 'KL456', 118, NULL),
(522, 'KL456', 128, NULL),
(523, 'KL456', 127, NULL),
(524, 'KL456', 137, NULL),
(525, 'KL456', 138, NULL),
(526, 'KL456', 135, NULL),
(527, 'KL456', 136, NULL),
(528, 'Apple_01', 137, 'parle123'),
(529, 'Apple_01', 138, 'parle123'),
(530, 'TE_123', 137, 'parle123'),
(531, 'TE_123', 138, 'parle123'),
(532, 'DE_1', 135, 'krackjack123'),
(533, 'DE_1', 136, 'krackjack123'),
(534, 'sdghd121', 135, 'krackjack123'),
(535, 'sdghd121', 136, 'krackjack123'),
(536, 'Glass007', 137, 'parle123'),
(537, 'Glass007', 138, 'parle123'),
(538, 'TE_123', 135, 'krackjack123'),
(539, 'TE_123', 136, 'krackjack123'),
(540, 'HII123', 52, NULL),
(541, 'HII123', 115, NULL),
(542, 'HII123', 117, NULL);

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
('Testing Tender3', 111114, 'Annoynomus', 'This is no name company', 'Mumbai', 'Gujarat', 'Nepal', 'NO name', 'Good', 'Buy', 200.00, 20.00, 20.00, 220, 'No Name', 'ctto', 'Dsa@gmail.com', '238728', 'India', 'Internet', 'internet', '2024-05-15', '2024-05-06', '2024-05-17', '2024-05-27', '2024-05-31', '2024-08-19', 20, 2, '..\\public\\uploads\\Next-Screenshot (286).png', NULL, NULL, 52, '2024-05-22 12:45:43', NULL, '2024-06-13 05:42:45', 52, 1, 0, 0, 0, 0, 0, 'parle123'),
('KL456', 111116, 'IPL', 'The Indian Premier League', 'Jaipur', 'Maharastra', 'India', 'Cricket', 'Good', 'Rent/Lease', 800.00, 8000.00, 500.00, 500, 'prince', 'ahmedabad', 'prince@gmail.com', '7418529633', 'oiwdewiofiewoereorerioye', 'oidhfodfdhfohf', '#cricket #Laptop #mobile #Iphone', '2024-05-19', '2024-05-03', '2024-05-11', '2024-04-27', '2022-08-04', '2022-11-28', 56, 2, '..\\public\\uploads\\Next-Calendar.png', NULL, NULL, 52, '2024-05-27 10:09:30', NULL, '2024-06-14 05:46:49', 52, 1, 0, 0, 0, 0, 0, 'parle123'),
('Apple_01', 111120, 'Updated', 'This is the Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Updated New York', 'Updated New York', 'INDIA', 'Updated Electronics', 'Updated Laptops', 'Updated Open Tender', 200.00, 600.00, 15000.00, 200, 'Chinmay', 'Updated Procurement Manager', 'updated.john.doe@example.com', '123-456-7890', '456 Updated Main Street', 'Updated Online Portal', 'Updated Electronics, Laptops, IT', '2024-03-20', '2024-04-20', '2024-04-05', '2024-04-01', '2024-04-25', '2024-06-05', 45, 4, '/uploads/updated_tender123.pdf', '', 'Updated comments', 52, '2024-05-30 07:17:13', NULL, '2024-06-13 05:42:08', 52, 1, 0, 0, 0, 0, 0, 'krackjack123'),
('Tender10222', 72272965, 'MathsAuth', 'tender For Conputers', 'Ahmedabad', 'Gujarat', 'India', 'Computer', 'Good', 'Buy', 99999999.99, 99999999.99, 2000000000.00, 2, 'Gulam', 'Ceo', 'gulam@gmail.com', '298323998', 'Wall street', 'Internet', '#Computer #laptop', '2024-07-01', '2024-07-02', '2024-07-02', '2024-07-03', '2024-07-03', '2026-03-05', 10, 20, '..\\public\\uploads\\Next-Screenshot (316).png', NULL, NULL, 52, '2024-06-01 06:30:54', NULL, '2024-06-13 12:37:25', 52, 1, 0, 0, 0, 0, 0, 'parle123'),
('Glass007', 72272966, 'dell', 'dkfdfhkjdfhkjdfhk', 'Amreli', 'Gujarat', 'India', 'udfdfdfh', 'Good', 'Buy', 565.00, 6565.00, 655.00, 6565, 'prince', 'jdfhdj', 'p@gmail.com', '7418529635', 'lkvdfkjhjkhkfhfjkhg', 'jdfhjkdfhdjfjh', '#jfvh #kjvfgh #kdfjdk #jdfd', '2024-06-24', '2024-07-01', '2024-05-27', '2024-06-04', '2024-06-05', '2024-08-04', 30, 1, '..\\public\\uploads\\Next-_public_uploads_Next-23 (1).JPG', NULL, NULL, 52, '2024-06-03 05:56:20', NULL, '2024-06-13 12:37:02', 52, 1, 0, 0, 0, 0, 0, 'parle123'),
('dhfj', 72728938, 'jgjhgf', 'fgh', 'Piton Saint-Leu', 'N/A', 'Aruba', 'jhfdhdfjg', 'Good', 'Maintenance', 877.00, 987897.00, 987987.00, 987987, 'dkfdhfkjkh', 'khfkjdhkh', 'khfkjhs@gmail.h', '7418529631', 'dkjfdfg', 'gfkhgd', 'kgfkhgk', '2024-06-10', '2024-05-27', '2024-06-05', '2024-05-27', '2024-05-28', '2024-07-27', 30, 1, NULL, 'Initial', NULL, NULL, '2024-06-13 07:35:44', NULL, '2024-06-13 07:35:44', NULL, 1, 0, 0, 0, 0, 0, 'krackjack123'),
('dsjfdfhg', 72728939, 'dskjfhdkjfh', 'kjhsfkj', 'Canberra', 'Australian Capital Territory', 'Australia', 'dfhghdfdg', 'Good', 'Buy', 741.00, 852.00, 852.00, 96, 'djgfhd', 'kdhks', 'khdk@dv.f', '7418529631', 'dkjffhjh', 'kjhfdfkjjh', 'ldhfjfd', '2024-06-03', '2024-05-27', '2024-06-03', '2024-05-26', '2024-05-29', '2024-07-28', 30, 1, NULL, 'Initial', NULL, NULL, '2024-06-13 07:39:12', NULL, '2024-06-13 07:39:12', 136, 1, 0, 0, 0, 0, 0, 'krackjack123'),
('sdghd121', 72728940, 'dfhjd', 'jhsfjhd', 'Ashtarak', 'Aragatsotn Province', 'Armenia', 'kjfdkn', 'Good', 'Buy', 741.00, 741.00, 741.00, 741, 'dkjfnkfk', 'jkndfjn', 'jff@.co', '7418529631', 'ezwxrtcfvgbhyun', 'ctfvygbhunji', 'drxctfvgybhun', '2024-06-04', '2024-05-27', '2024-05-28', '2024-06-04', '2024-06-03', '2024-08-02', 30, 1, NULL, 'Initial', NULL, NULL, '2024-06-13 08:52:37', NULL, '2024-06-13 08:52:37', 136, 1, 0, 0, 0, 0, 0, 'krackjack123'),
('TE_1', 72728941, 'TE ', 'HEllo', 'Ahmedabad', 'Gujarat', 'India', 'lep', 'Good', 'Sell', 1000.00, 10000.00, 1000.00, 500, 'Ashir', 'AM', 'ashir@gmail.com', '7411852963', 'Ahemedabad', 'Hi', '#hii #ho #hi', '2024-06-12', '2024-06-24', '2024-06-11', '2024-06-04', '2024-05-28', '2024-07-27', 30, 1, NULL, 'Initial', NULL, NULL, '2024-06-13 08:58:51', NULL, '2024-06-13 08:58:51', 136, 1, 0, 0, 0, 0, 0, 'krackjack123'),
('TE_123', 72728942, 'TE1234', 'hiiii', 'Lonavla', 'Maharashtra', 'India', 'mob', 'Good', 'Maintenance', 1000.00, 15000.00, 1000.00, 200, 'jay', 'JD', 'j@gmail.com', '7418529633', 'qwertyuio', 'qwerty', '#hii #hooo #huuuu', '2024-06-24', '2024-06-24', '2024-06-05', '2024-06-04', '2024-06-12', '2024-10-10', 60, 2, NULL, 'Initial', NULL, NULL, '2024-06-13 09:02:33', NULL, '2024-06-13 09:02:33', 136, 1, 0, 0, 0, 0, 0, 'krackjack123'),
('DE_1', 72728943, 'qwert', 'erty', 'Ashtarak', 'Aragatsotn Province', 'Armenia', 'ehwrebhjre', 'Good', 'Buy', 12.00, 12.00, 12.00, 1, 'harsh', 'HM', 'hm@gmail.com', '7411852963', 'wert', 'rt', '#fg', '2024-06-04', '2024-06-25', '2024-06-03', '2024-06-17', '2024-06-09', '2024-12-06', 90, 3, NULL, 'Initial', NULL, NULL, '2024-06-13 10:24:53', NULL, '2024-06-13 10:24:53', 134, 1, 0, 0, 0, 0, 0, 'krackjack123'),
('HII123', 72728944, 'sdgdjg', 'jvhjksfk', 'Ashtarak', 'Aragatsotn Province', 'Armenia', 'dgbkjlnm;', 'Good', 'Buy', 741.00, 852.00, 852852.00, 852, 'gfchj', 'ghvhbjn', 'hsdg@h.c', '7418529633', 'fgvhbj', 'lkmyvgubhijnokm', 'gvbhjnmk', '2024-06-04', '2024-06-18', '2024-06-06', '2024-06-11', '2024-06-11', '2024-12-08', 90, 3, NULL, 'Initial', NULL, NULL, '2024-06-13 11:54:23', NULL, '2024-06-13 11:54:23', 52, 1, 0, 0, 0, 0, 0, 'parle123'),
('gem/2024/b/5016858', 72813403, 'indian air force', 'supply of 3d terrain model.<br><b> qty : 70< b>< br>', NULL, NULL, 'india', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Initial', NULL, NULL, '2024-06-14 05:06:55', NULL, '2024-06-14 05:06:55', NULL, 0, 1, 0, 0, 0, 0, NULL),
('-', 72813405, 'm s m e development institute', 'auction sale of unusable   inactive machinery etc.  hindi image', NULL, NULL, 'india', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Initial', NULL, NULL, '2024-06-14 05:06:55', NULL, '2024-06-14 05:06:55', NULL, 0, 0, 0, 0, 0, 0, NULL),
('54/2024', 72813416, 'mahudha municipal corporation', 'civil works under sbm 1.0 & 2.0.  *. construction of toilet & urinal block.  gujarati image', NULL, NULL, 'india', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Initial', NULL, NULL, '2024-06-14 05:06:55', NULL, '2024-06-14 05:06:55', NULL, 0, 0, 0, 0, 0, 0, NULL),
('01/se/2024-25', 72813418, 'rural water supply and sanitation division', '1 no. work of pws scheme.', NULL, NULL, 'india', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Initial', NULL, NULL, '2024-06-14 05:06:55', NULL, '2024-06-14 05:06:55', NULL, 0, 0, 0, 0, 0, 0, NULL);

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
(166, 'condition', 'Done', '', '', 52, '2024-06-14 16:10:47', NULL, NULL, 'KL456', 52, 'parle123');

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
(170, NULL, 'TATA', 6, 10, 'This is not right question', 'where are your building?', '', 'completed', 'Revised content Lorem ipsum dolor sit amet', NULL, NULL, 52, '2024-05-28 12:26:26', NULL, NULL, '111tata', 'self', 'virat', NULL),
(171, NULL, '', 6, 10, 'This is not right question', 'where are your building?', '', 'completed', 'Revised content Lorem ipsum dolor sit amet', NULL, NULL, 52, '2024-05-28 12:26:58', NULL, NULL, '111tata', 'self', 'virat', NULL),
(172, NULL, 'self', 5444, 544, 'eawrtdgioup[]', 'ertrdyugijokpl[', '..\\public\\uploads\\Next-23.JPG', '', NULL, NULL, NULL, 52, '2024-05-28 15:35:19', NULL, NULL, 'TestingTenderNo2', NULL, 'virat', NULL),
(173, NULL, 'fdhfdfk', 86415, 6512, 'rextdcvboijl,', '\';dxgfchbklm;,\'', '..\\public\\uploads\\Next-2.JPG', 'completed', NULL, 'jay', NULL, 52, '2024-05-28 15:36:01', 52, '2024-05-29 16:09:34', 'jay123', NULL, 'virat', NULL),
(174, NULL, 'self', 87, 8778, 'etrdyguoijpk', 'rdtfugyiuoihjpk', '..\\public\\uploads\\Next-23.JPG', 'completed', NULL, 'sdsd', NULL, 52, '2024-05-29 11:14:25', 52, '2024-06-12 16:03:11', 'KL456', NULL, 'virat', NULL),
(175, NULL, 'self', 74, 741, 'djfdfh', 'hdjfhdjfdffh', '..\\public\\uploads\\Next-23.JPG', 'Approved', NULL, NULL, NULL, 52, '2024-05-29 11:36:09', NULL, NULL, 'Jay007', NULL, 'virat', NULL),
(176, NULL, NULL, NULL, NULL, NULL, NULL, '', 'completed', NULL, 'kldkjf', NULL, 52, '2024-05-29 11:36:41', NULL, NULL, 'Jay007', NULL, 'virat', NULL),
(177, NULL, 'PVC', 84, 878, '88778q', '84754djkfkfhdkhfkj', '..\\public\\uploads\\Next-2.JPG', '', NULL, NULL, NULL, 52, '2024-05-29 11:37:26', NULL, NULL, 'Jay007', NULL, 'virat', NULL),
(178, NULL, NULL, NULL, NULL, NULL, NULL, '', 'completed', NULL, ',,g,,g,,j,,h,,g,,j', NULL, 52, '2024-05-29 11:48:21', NULL, NULL, 'Jay007', NULL, 'virat', NULL),
(179, NULL, 'TodayUpdate', 6, 10, 'This is not right question', 'where are your building?', '', 'completed', 'Revised content Lorem ipsum dolor sit amet', 'The deadline is extended by one week.', NULL, 52, '2024-05-29 11:50:55', 52, '2024-05-29 12:45:09', '111JIO', NULL, 'virat', NULL),
(180, NULL, 'self', 2147483647, 865, 'HJSKFHDKJHFJ', 'DJFKDFKHFK', '..\\public\\uploads\\Next-23.JPG', '', NULL, NULL, NULL, 52, '2024-05-29 12:27:42', NULL, NULL, 'Jay007', NULL, 'virat', NULL),
(181, NULL, 'self', 89561, 4512, 'sexrdctgbhunij', 'mokewxrtfvhijm', '..\\public\\uploads\\Next-23.JPG', 'Approved', NULL, NULL, NULL, 52, '2024-05-29 16:02:00', NULL, NULL, 'jay123', NULL, 'virat', NULL),
(182, NULL, 'self', 102, 20, 'skjdksj', 'kjsdkj', '..\\public\\uploads\\Next-Screenshot (317).png', 'Approved', NULL, 'aashir', NULL, 52, '2024-05-29 16:08:16', 52, '2024-05-30 10:20:47', 'KL456', NULL, 'virat', NULL),
(183, NULL, 'self', 2, 4, 'Criteria is not proper', 'Enter proper Criteria', '..\\public\\uploads\\Next-67.PNG', 'completed', NULL, 'sds', NULL, 52, '2024-05-29 16:53:41', 52, '2024-05-30 10:10:52', 'TV_001', NULL, 'virat', NULL),
(184, NULL, 'self', 5, 8, 'New Parag', 'Add new value', '..\\public\\uploads\\Next-67.PNG', 'completed', NULL, 'dssada', NULL, 52, '2024-05-29 16:54:53', 52, '2024-05-30 10:10:54', 'TV_001', NULL, 'virat', NULL),
(185, NULL, 'self', 23, 23, '32sdks', 'kjdskjd', '..\\public\\uploads\\Next-Screenshot (320).png', 'Rejected', NULL, 'aasihr', NULL, 52, '2024-05-29 19:20:01', 52, '2024-05-30 10:20:46', 'KL456', NULL, 'virat', NULL),
(186, NULL, 'self', 30, 3, 'sdjkj', 'skjdksjd', '..\\public\\uploads\\Next-Screenshot (320).png', 'completed', NULL, 'dnbdm', NULL, 52, '2024-05-29 19:49:42', 52, '2024-06-11 13:01:02', 'KL456', NULL, 'virat', NULL),
(187, NULL, NULL, NULL, NULL, NULL, NULL, '', 'completed', NULL, 'asdsa', NULL, 52, '2024-05-29 20:06:12', 52, '2024-05-30 10:11:10', 'TV_001', NULL, 'virat', NULL),
(188, NULL, 'self', 20, 20, 'sdskj', 'sdkjs', '..\\public\\uploads\\Next-Screenshot (317).png', 'Approved', NULL, NULL, NULL, 52, '2024-05-30 10:23:52', NULL, NULL, '101TenderTesting', NULL, 'virat', NULL),
(189, NULL, 'self', 9, 5, 'paragraph Content', 'Ask Your Questions', '..\\public\\uploads\\Next-23.JPG', 'completed', NULL, 'ffgg', NULL, 52, '2024-05-30 14:19:45', 52, '2024-06-12 17:02:54', 'Apple_01', NULL, 'virat', NULL),
(190, NULL, 'self', 5, 55, 'lksddfjjdfdj', 'kljdjdjflkdjj', '..\\public\\uploads\\Next-23.JPG', 'completed', NULL, 'cvbn', NULL, 52, '2024-05-30 14:59:38', 52, '2024-06-12 16:47:00', 'Apple_01', NULL, 'virat', NULL),
(191, NULL, 'self', 84, 54, '54klsjfdlj', 'jskldjflkjdfjljkd', '..\\public\\uploads\\Next-23.JPG', 'completed', NULL, 'djdf', NULL, 52, '2024-05-30 15:33:48', 52, '2024-05-30 15:34:08', 'MOBILE123', NULL, 'virat', NULL),
(192, NULL, 'self', 2, 22, '2dfjkfhdh', 'kjhfkjghfjk', '..\\public\\uploads\\Next-23.JPG', '', NULL, NULL, NULL, 52, '2024-05-30 17:56:55', NULL, NULL, '101TenderTesting', NULL, 'virat', NULL),
(193, NULL, 'self', 20, 20, 'Computer', 'COmputer specfication?', '..\\public\\uploads\\Next-Screenshot (320).png', 'completed', NULL, '32 gb ram', NULL, 52, '2024-06-01 12:04:46', 52, '2024-06-01 12:08:22', 'Tender10222', NULL, 'virat', NULL),
(194, NULL, 'self', 30, 30, 'Computer ', 'Computer Name', '..\\public\\uploads\\Next-Screenshot (320).png', 'Rejected', NULL, NULL, NULL, 52, '2024-06-01 12:05:25', NULL, NULL, 'Tender10222', NULL, 'virat', NULL),
(195, NULL, 'self', 7878, 787, 'fjkdfhgkfjk', '87877kvmfj', '..\\public\\uploads\\Next-chad-montano-MqT0asuoIcU-unsplash.jpg', 'completed', NULL, 'dgfhdgfdgfh', NULL, 52, '2024-06-03 11:30:22', 52, '2024-06-03 11:30:38', 'Glass007', NULL, 'virat', NULL),
(196, NULL, 'self', 10, 10, 'Pens', 'Pens', '..\\public\\uploads\\Next-Screenshot (320).png', 'completed', NULL, 'Which type of pem', NULL, 120, '2024-06-03 13:45:09', 120, '2024-06-03 13:45:50', 'Bid1012', NULL, 'Admin', NULL),
(197, NULL, 'self', 20, 20, 'penicls', 'penclis', '..\\public\\uploads\\Next-Screenshot (317).png', 'Rejected', NULL, NULL, NULL, 120, '2024-06-03 13:45:29', NULL, NULL, 'Bid1012', NULL, 'Admin', NULL),
(198, NULL, 'Softonic', 20, 20, 'pens company', 'which pens company', '..\\public\\uploads\\Next-Screenshot (317).png', 'Approved', NULL, NULL, NULL, 120, '2024-06-03 13:46:14', NULL, NULL, 'Bid1012', NULL, 'Admin', NULL),
(199, NULL, 'TATA', 6, 10, 'This is not right question', 'where are your building?', '', 'completed', 'Revised content Lorem ipsum dolor sit amet', 'The deadline is extended by one week.', 0, 52, '2024-06-07 14:27:36', NULL, NULL, '5', NULL, 'virat', NULL),
(200, NULL, 'TATA', 6, 10, 'This is not right question', 'where are your building?', '', NULL, NULL, NULL, NULL, 52, '2024-06-07 14:29:32', NULL, NULL, '5', NULL, 'virat', NULL),
(201, NULL, 'self', 23, 23, 'dkjd', 'kdkjs', '..\\public\\uploads\\Next-Screenshot (321).png', 'completed', NULL, 'wewe', NULL, 52, '2024-06-07 14:31:35', 52, '2024-06-07 14:34:07', '1000418584', NULL, 'virat', NULL),
(202, NULL, 'self', 98322, 983298, 'ksjosadas', 'skmdsamd', '..\\public\\uploads\\Next-Screenshot (320).png', 'completed', NULL, 'wwdssdsdsa', NULL, 52, '2024-06-07 14:32:10', 52, '2024-06-07 14:34:35', '1000418584', NULL, 'virat', NULL),
(203, NULL, 'self', 2938, 2398298, 'csajdk', 'sdmsm', '..\\public\\uploads\\Next-Screenshot (320).png', 'Rejected', NULL, NULL, NULL, 52, '2024-06-07 14:32:36', NULL, NULL, '1000418584', NULL, 'virat', NULL),
(204, NULL, 'self', 5614, 5445, ',mvnvjknvjfkn', 'JNJDKJKDFJHNKJ', 'public\\uploads\\Next-Capture.JPG', 'completed', NULL, 'DDHFGFGFJ', NULL, 52, '2024-06-11 15:13:05', 52, '2024-06-11 15:13:39', 'KL456', NULL, 'virat', NULL),
(205, NULL, 'self', 4546, 646, 'kjdhkfjdhgfg', 'hjdhfkdfdj', 'public\\uploads\\Next-Capture.JPG', '', NULL, NULL, NULL, 52, '2024-06-11 15:14:00', NULL, NULL, 'KL456', NULL, 'virat', NULL),
(206, NULL, 'self', 34, 45, 'sdfgh', 'fgvb', 'public\\uploads\\Next-Capture.JPG', '', NULL, NULL, NULL, 52, '2024-06-12 16:01:06', NULL, NULL, 'KL456', NULL, 'virat', NULL),
(207, NULL, 'self', 741, 74, 'pen', 'pencil', 'public\\uploads\\Next-23.JPG', '', NULL, NULL, NULL, 133, '2024-06-14 11:23:02', NULL, NULL, 'Glass007', NULL, 'trump', 'parle123'),
(208, NULL, 'self', 741, 741, 'tgyuh', 'rdcft', 'public\\uploads\\Next-23.JPG', '', NULL, NULL, NULL, 133, '2024-06-14 11:24:05', NULL, NULL, 'Glass007', NULL, 'trump', 'parle123'),
(209, NULL, 'self', 74, 4, 'qwerty', 'sdfg', 'public\\uploads\\Next-2.JPG', '', NULL, NULL, NULL, 133, '2024-06-14 11:24:20', NULL, NULL, 'Glass007', NULL, 'trump', 'parle123');

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
(180, '2024_mcl_309437_1', '', '', 'false', 'false', '', 'No', '', '41', 'R2', 'sdsd', 52, 41, 23, NULL),
(181, '2024_mcl_309437_1', 'rajjj', 'dsasd', 'true', 'true', '42', 'Yes', 'sdsads', '', 'Null', '', 52, 42, 0, NULL),
(182, 'KL456', 'AAshir', 'knm', 'true', 'false', '34', 'Yes', 'jn', '34', 'R1', 'ewf', 52, 34, 323, 'parle123'),
(183, 'KL456', 'Raj', 'njm', 'false', 'true', '35', 'No', 'j', '', 'Null', '', 133, 35, 0, 'parle123'),
(184, 'KL456', '', '', 'false', 'false', '', 'No', '', '', 'R3', 'wee', 133, 0, 43, 'parle123');

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
(101, 'aashir', 'this is aashir', '52', NULL),
(102, 'jay', 'hii ', '52', NULL),
(103, 'chinmay', 'Hello', '52', NULL),
(104, 'admin', 'this is aashir', '52', NULL),
(105, 'admin', 'aashir', '52', NULL),
(106, 'Jay', 'Jay', '84', NULL),
(107, 'admin', 'admin', '52', NULL),
(108, 'Admin', 'Admin', '120', NULL),
(109, 'client', 'client', '120', NULL),
(110, 'financial', 'pen', '123', NULL),
(111, 'aashir', 'aashir', '52', NULL),
(112, '', '', '52', NULL),
(113, 'sds', 'dsds', '52', NULL),
(114, '', '', '125', NULL),
(115, '', '', '125', NULL),
(116, 'aashir', 'aashir', '125', NULL),
(117, 'harsh', 'pen', '52', NULL),
(118, 'HR', 'it', '52', NULL),
(119, 'IT', 'IT', '133', NULL);

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
(52, 'virat', '2323232322', 'virat123@gmail.com', 'Admin', '100000', 'IT', 'L1', '$2a$10$ezpAQAgb7jL4mWqA5uphJ.8kjHFqGdmb8TnQapbqbcz3dQpS73/OW', '52', '2024-05-18 08:03:07', NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2024-06-12 09:33:57', 'parle123'),
(115, 'Aashir', '9898985123', 'aashirmansuri256@gmail.com', '', NULL, 'aashir', NULL, '$2a$10$30z8O.SrU2C5gMxfQ0VRruz2cBYYl/uH6.RUJSSSPU0yaSO2Vd06K', '52', '2024-06-01 06:25:23', NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2024-06-12 09:33:39', 'TATA123'),
(117, 'Aashir', '2323232322', 'Aashir123@gmail.com', 'Admin', '100000', 'IT', 'L1', '$2a$10$o1DVokyWawrpzmoriIzkf.Gf4MJ3/AMrZs286Sm3maxfrHQe7mE7.', '52', '2024-06-03 05:44:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-03 05:44:07', NULL),
(118, 'jay', '2323232322', 'jay123@gmail.com', 'Admin', '100000', 'IT', 'L1', '$2a$10$P/SsRs72qUeD/qOzhqZQf.p29L9Ll4cELPlqeNjcrGzKRmFa3vp1a', '52', '2024-06-03 05:48:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-12 09:35:07', 'jay&company123'),
(119, 'raj', '2323232322', 'raj123@gmail.com', 'Admin', '100000', 'IT', 'L1', '$2a$10$hnzYKVM4n/pn2O6.cCCUMeazjUQRkaOPhMNPLVpsvu.bUYF4QPHrS', '52', '2024-06-03 05:48:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-03 05:48:58', NULL),
(120, 'Admin', '3984983498', 'admin@123gmail.com', '', NULL, 'aashir', NULL, '$2a$10$sJXYZdDA/EV/GmjeqbF7tu5kk127XOvA3qpl4NjtBqLn2ArFCIMNS', '52', '2024-06-03 08:07:57', NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2024-06-03 08:07:57', NULL),
(121, 'username1', '98283928', 'username1@gmail.com', '', NULL, 'Admin', NULL, '$2a$10$OX6A.D9SGBKwjwJlS3gpleiaCCusDtqg7Wo6sc32ua4SKB5OUbfyC', '120', '2024-06-03 08:13:42', NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2024-06-03 08:13:42', NULL),
(122, 'username2', '2430923098', 'username2@gmail.com', '', NULL, 'client', NULL, '$2a$10$SVetgneM//SULlA4m9ZwJOEfpkobQ/VAUvYskHHD1dOcWEUgWGhcu', '120', '2024-06-03 08:14:12', NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2024-06-03 08:14:12', NULL),
(123, 'Keyur ', '9638527411', 'keyur@gmail.com', '', NULL, 'jay', NULL, '$2a$10$PLZXiKma/uQQNv3OaJ6DXuGs7el2/WOC3xRpXPU02x1YylVvLTWPu', '52', '2024-06-05 05:02:06', NULL, 1, 1, 1, 0, 0, 0, 1, 1, 1, 0, '2024-06-05 05:02:06', NULL),
(124, '', '', '', '', NULL, '', NULL, '$2a$10$aPNlEteZmlqyz3qjISaIYunWOcKaRktlHBk4IwkQcl0IAv2ePUayu', '52', '2024-06-11 12:11:57', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-11 12:11:57', NULL),
(125, 'aashirmansuri@gmail.com', '989878987', 'aashirmansuri@gmail.com', '', NULL, 'admin', NULL, '$2a$10$XkIkEBkBmk8iK3JxfUnvxO1ZMrNHjrIxMmEZlMHs7KZDu4zFT8XPC', '52', '2024-06-11 12:21:31', NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2024-06-11 12:21:31', NULL),
(126, 'slkdslk', '1320982', 'kjsdkjskj@gmai.con', '', NULL, 'aashir', NULL, '$2a$10$6ro1dUTrYVtV5HEv9phd1OqV0PXN9nee2ruaSoH0OEyconpIxqHpK', '125', '2024-06-11 12:46:20', NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-11 12:46:20', NULL),
(127, 'raj', '2832873', 'raj1@gmail.com', '', NULL, 'aashir', NULL, '$2a$10$ZglINVlKRSz.BqQJpGc/6.YOrQAEEcw.BkaxCb2Tbtk/O/SQAqC7u', '125', '2024-06-12 04:58:47', NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-12 04:58:47', NULL),
(128, 'mansuri', '9843849', 'mansuri@gmail.com', '', NULL, 'aashir', NULL, '$2a$10$z7gyJIN1N11jIGmQuaK1F.HNMauhMQ5ssylPmn8BW.KyIi3yUygKi', '125', '2024-06-12 05:02:25', NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-12 05:02:25', NULL),
(129, 'hero', '1234567899', 'hero123@gmail.com', '', NULL, 'admin', NULL, '$2a$10$QFgdw9Tq60Ii8n.JlHs7suQUYshn/l/thySENF4EWmnqM/OO2s8Ua', '52', '2024-06-12 10:15:39', NULL, 1, 1, 0, 1, 0, 0, 1, 0, 0, 0, '2024-06-12 10:15:39', NULL),
(130, 'raju', '7418529633', 'raju123@gmail.com', '', NULL, 'sds', NULL, '$2a$10$sXbZ4xnUUEzOIkkS17/j5umOxhW0TPL190nQNbj7nO6TnQLitQRVi', '52', '2024-06-12 11:08:20', NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, '2024-06-12 11:08:20', NULL),
(131, 'q11', '1234567898', 'q11@gmail.com', '', NULL, 'aashir', NULL, '$2a$10$U1E/7f2crF.wk6REsLx0K.4bqPMXGMeEcRCBzkFEFMPJaTDyZ/AeC', '52', '2024-06-12 11:10:15', NULL, 1, 0, 1, 0, 1, 0, 0, 0, 1, 0, '2024-06-12 11:10:15', NULL),
(132, 'bcdv', '65644', '56@hgaas.com', '', NULL, 'sds', NULL, '$2a$10$cLOXagXt.MRxsxqLRxYHAuJuz5.EsY.xzJW4wBPt/JTsQn.rgAQwS', '52', '2024-06-12 11:14:43', NULL, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, '2024-06-12 11:14:43', NULL),
(133, 'trump', '2323232322', 'trump123@gmail.com', 'Admin', '100000', 'IT', 'L1', '$2a$10$5foQW8soncc1wcXCBs4/9u1jXD2dD9YCxWT8YQd53W2Q/uPlP5m6S', '52', '2024-06-12 13:03:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-12 13:03:42', 'parle123'),
(134, 'obama', '2323232322', 'obama123@gmail.com', 'Admin', '100000', 'IT', 'L1', '$2a$10$iRDGEn029QFNwWQE/waHH.oDz4MBV41atbx5gIPFirpZvNvWXaDGi', '52', '2024-06-12 13:04:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-12 13:04:55', 'krackjack123'),
(135, 'pen', '7418529633', 'pen@gmail.com', '', NULL, '', NULL, '$2a$10$YB1q4VLZupjpmPk9gc7gLee/R9IeBUzJPyVUXvCb2lKett.W3U3R.', '134', '2024-06-12 13:10:20', NULL, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, '2024-06-12 13:10:20', 'krackjack123'),
(136, 'pencil', '7418520963', 'pencil123@gmail.com', '', NULL, '', NULL, '$2a$10$HamFq8ifOnDRgKBNPJIl3uo0Omed7x808BTxq9JzaWHi2Rxy8xydq', '134', '2024-06-12 13:11:23', NULL, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, '2024-06-12 13:11:23', 'krackjack123'),
(137, 'cello', '741852963', 'cello@gmail.com', '', NULL, '', NULL, '$2a$10$x2H/gZ6uUi6MuGUo0DqwLuOjoXlyRXFYz160Q3/gMLWhymX1e2Lcm', '133', '2024-06-13 04:52:13', NULL, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, '2024-06-13 04:52:13', 'parle123'),
(138, 'Safari', '963.852074', 'safari123@gmail.com', '', NULL, 'IT', NULL, '$2a$10$4y0CquSK4E8.o3vxghHLYOHTiDWo2NANckOm2sw1ZvH6iuavu2jL2', '133', '2024-06-13 04:53:20', NULL, 1, 0, 0, 1, 1, 0, 1, 0, 0, 0, '2024-06-13 04:53:20', 'parle123'),
(139, 'fd', '7418529633', 'sd@sd.cc', '', NULL, 'IT', NULL, '$2a$10$2cJiN36a8p1phvlOVS0B.eLxVixs/YLQ1CgTHyTOh51wxM79.P0WG', '133', '2024-06-14 09:33:27', NULL, 0, 1, 1, 0, 1, 1, 0, 1, 0, 0, '2024-06-14 09:33:27', 'parle123');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `bid_envelop`
--
ALTER TABLE `bid_envelop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;

--
-- AUTO_INCREMENT for table `cms`
--
ALTER TABLE `cms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `company_registration`
--
ALTER TABLE `company_registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT for table `negotiation`
--
ALTER TABLE `negotiation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `payment_configurations`
--
ALTER TABLE `payment_configurations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `tblbidders`
--
ALTER TABLE `tblbidders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `tender_corrigendum`
--
ALTER TABLE `tender_corrigendum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT for table `tender_mapped_users`
--
ALTER TABLE `tender_mapped_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=543;

--
-- AUTO_INCREMENT for table `tender_pq`
--
ALTER TABLE `tender_pq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT for table `tender_pre_bid`
--
ALTER TABLE `tender_pre_bid`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;

--
-- AUTO_INCREMENT for table `tender_result`
--
ALTER TABLE `tender_result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT for table `user_department`
--
ALTER TABLE `user_department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `user_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

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
