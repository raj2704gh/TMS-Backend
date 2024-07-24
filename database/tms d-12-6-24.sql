-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2024 at 07:08 AM
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
  `created_By` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `add_comment`
--

INSERT INTO `add_comment` (`id`, `tender_Ref_No`, `comment_From`, `comment_By`, `commented_D`, `comment`, `created_By`) VALUES
(40, 'TV_001', 'Intrested Tender', '', '5/29/2024', 'I want to understand this', '52'),
(41, 'KL456', 'Intrested Tender', 'virat', '5/31/2024', 'HIii', '52'),
(42, 'KL456', 'Intrested Tender', 'virat', '6/1/2024', 'Aashir', '52'),
(43, 'Tender10222', 'Intrested Tender', '', '6/1/2024', 'Computer', '52'),
(44, 'Glass007', 'All Tender', '', '6/3/2024', 'hii', '117'),
(45, 'Bid1012', 'Intrested Tender', '', '6/3/2024', 'pens from int', '120'),
(46, '', 'All Tender', '', '6/4/2024', '', '52'),
(47, '', 'All Tender', 'virat', '6/4/2024', 'sds', '52'),
(48, '', 'All Tender', 'virat', '6/4/2024', 'sdsad', '52'),
(49, 'gem/2024/b/5000791', 'Intrested Tender', '', '6/6/2024', 'AAshir', '52'),
(50, 'KL456', 'All Tender', '', '6/10/2024', 'hii', '52'),
(51, 'Apple_01', 'Intrested Tender', '', '6/10/2024', 'Raj is backend developer', '52'),
(52, '2024_mes_656635_1', 'All Tender', '', '6/10/2024', 'aashir is frintende developer', '52'),
(53, 'KL456', 'Intrested Tender', '', '6/10/2024', 'aashir frintende', '52'),
(54, 'KL456', 'All Tender', '', '6/11/2024', 'Today comment on 11/06/2024\n', '52'),
(55, 'KL456', 'Intrested Tender', '', '6/11/2024', 'TOday Comment on from int tender on 11/06/2924', '52'),
(56, 'KL456', 'All Tender', '', '6/11/2024', 'raj is commenting ', '52'),
(57, 'KL456', 'All Tender', 'virat', '6/11/2024', 'raj and aashir is commeting', '52'),
(58, 'Apple_01', 'Intrested Tender', '', '6/11/2024', 'hello', '52'),
(59, 'Apple_01', 'Intrested Tender', 'virat', '6/11/2024', 'aashir', '52'),
(60, 'KL456', 'Intrested Tender', 'virat', '6/11/2024', 'raj bhai hello', '52');

-- --------------------------------------------------------

--
-- Table structure for table `add_role`
--

CREATE TABLE `add_role` (
  `id` int(11) NOT NULL,
  `role` varchar(255) NOT NULL,
  `created_By` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `add_role`
--

INSERT INTO `add_role` (`id`, `role`, `created_By`) VALUES
(1, 'admin', 52),
(2, 'admin', 52),
(3, 'admin', 52),
(4, 'user', 52),
(5, 'admin', 52),
(6, 'admin', 52),
(7, 'admin', 52),
(8, 'admin', 52),
(9, 'admin', 52),
(10, 'admin', 52),
(11, 'Admin123', 52),
(12, 'admin', 63),
(13, 'admin', 52),
(14, 'admin', 52);

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
  `upload_Po_Apo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `apo_po`
--

INSERT INTO `apo_po` (`id`, `tender_Ref_No`, `select_Apo_Po`, `po_Apo_D`, `contract_Value`, `upload_Document`, `comment`, `user_Name`, `status`, `date_Time`, `created_By`, `upload_Po_Apo`) VALUES
(33, 'Bid1012', 'PO', '2024-07-04', '21212', '..\\public\\uploads\\Next-Screenshot (320).png', 'Aashir', 'red pen', 'pending', '2024-07-03 00:00:00', '120', NULL),
(34, '71995', 'APO', '2024-06-11', '90', '..\\public\\uploads\\Next-davide-cantelli-jpkfc5_d-DI-unsplash.jpg', 'kjehfkjkdhk', 'kjf', 'pending', '2024-06-04 00:00:00', '52', NULL),
(35, 'KL456', 'APO', '2024-06-24', '98', '..\\public\\uploads\\Next-davide-cantelli-jpkfc5_d-DI-unsplash.jpg', 'jdkdfbkjsdfbskdjfbsdkfb', 'kjbkjdkjfbk', 'pending', '2024-06-07 00:00:00', '52', NULL),
(36, '2024_mcl_309437_1', 'PO', '2024-07-02', '984398', '..\\public\\uploads\\Next-Screenshot (320).png', 'ssdsd', 'assa', 'pending', '2024-06-27 00:00:00', '52', NULL);

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
  `fill_Upload_Annexure` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bid_envelop`
--

INSERT INTO `bid_envelop` (`id`, `tender_Ref_NO`, `envelope_Type`, `annexure_Name`, `upload_Annexure`, `department`, `select_Mapped_User_Id`, `comment`, `annexure_Submittion_DT`, `created_By`, `fill_Comment`, `fill_Date_Time_Upload`, `fill_Upload_Annexure`) VALUES
(158, 'KL456', 'Technical', 'Annexure 1', NULL, 'Finance', 52, 'This is a comment.', '2024-04-17 00:00:00', '52', 'qwertyuiop', '2024-05-30 12:31:22', 'public\\uploads\\Next-Capture.JPG'),
(159, 'KL456', 'Technical', 'rahul', '..\\public\\uploads\\Next-Screenshot (320).png', 'aashir', 109, 'rahul ', '2024-05-30 00:00:00', '52', '', '2024-05-30 14:16:37', NULL),
(160, 'KL456', 'Technical', 'jskd', '..\\public\\uploads\\Next-Screenshot (320).png', 'jay', 112, 'sdsa', '2024-05-27 00:00:00', '52', '', '2024-05-30 14:37:19', NULL),
(161, 'Apple_01', 'Technical', 'jdk', '..\\public\\uploads\\Next-23.JPG', 'aashir', 107, 'jdk', '2024-05-30 00:00:00', '52', 'shshdg', '2024-05-30 15:19:27', ''),
(162, 'MOBILE123', 'Technical', 'hfj', '..\\public\\uploads\\Next-68.PNG', 'aashir', 111, 'jhgdfhdhgfh', '2024-05-30 00:00:00', '52', '', '2024-05-30 15:32:14', NULL),
(163, '121TATA', 'Technical', 'Annexure 1', '', 'Finance', 83, 'This is a comment.', '2024-04-17 00:00:00', '52', 'bhbdhj', '2024-05-30 15:35:40', ''),
(164, 'Glass007', 'Technical', 'dhdfdfhjdfh', '..\\public\\uploads\\Next-chad-montano-MqT0asuoIcU-unsplash.jpg', 'aashir', 117, 'fdhjkfhdjfh', '2024-06-03 00:00:00', '52', 'sretdfyguh', '2024-06-03 11:31:21', '..\\public\\uploads\\Next-davide-cantelli-jpkfc5_d-DI-unsplash.jpg'),
(165, 'Bid1012', 'Technical', 'harsh', '..\\public\\uploads\\Next-Screenshot (317).png', 'Admin', 122, 'Pens', '2024-07-01 00:00:00', '120', 'Completed', '2024-06-03 13:49:21', '..\\public\\uploads\\Next-Screenshot (316).png'),
(166, 'Bid1012', 'Financial', 'Harsh', '..\\public\\uploads\\Next-Screenshot (317).png', 'client', 121, 'Harsh', '2024-07-04 00:00:00', '120', 'Completed', '2024-06-03 13:50:04', '..\\public\\uploads\\Next-Screenshot (317).png'),
(167, 'KL456', 'Technical', 'djkjdkf', '..\\public\\uploads\\Next-chad-montano-MqT0asuoIcU-unsplash.jpg', '', 115, 'jdkshkjds', '2024-06-25 00:00:00', '52', '', '2024-06-06 17:16:05', NULL),
(168, '1000418584', 'Technical', 'jskdskj', '..\\public\\uploads\\Next-Screenshot (320).png', 'aashir', 120, 'kmfdk', '2024-06-26 00:00:00', '52', '', '2024-06-07 14:40:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blacklisted_tokens`
--

CREATE TABLE `blacklisted_tokens` (
  `token` varchar(255) NOT NULL,
  `invalidated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blacklisted_tokens`
--

INSERT INTO `blacklisted_tokens` (`token`, `invalidated_at`) VALUES
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjUyLCJlbWFpbCI6InZpcmF0MTIzQGdtYWlsLmNvbSIsImlhdCI6MTcxNzczNTc4NiwiZXhwIjoxNzE3ODIyMTg2fQ.izr8zSoml84RF37Z6YS-rssOTfKz8gUYWOvmN2um1kM', '2024-06-07 10:18:00'),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjUyLCJlbWFpbCI6InZpcmF0MTIzQGdtYWlsLmNvbSIsImlhdCI6MTcxNzczNTI1OSwiZXhwIjoxNzE3ODIxNjU5fQ.AJwWd3lwnQXZmfaKgh9OQZ4Kp2_AEwoTEtYAqacq43k', '2024-06-07 06:28:44'),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjUyLCJlbWFpbCI6InZpcmF0MTIzQGdtYWlsLmNvbSIsImlhdCI6MTcxNzY0ODcwMywiZXhwIjoxNzE3NzM1MTAzfQ.RdIXOboYqyYwcM80ktn2NkQ6HGbep4Ey3dB7u2DIXBc', '2024-06-06 05:35:58'),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjUyLCJlbWFpbCI6InZpcmF0MTIzQGdtYWlsLmNvbSIsImlhdCI6MTcxNzY0OTkxOCwiZXhwIjoxNzE3NzM2MzE4fQ.8IWeDDogfYQFg5_lmL8TFi7ibefuXkNt8do6kXvD9HY', '2024-06-06 06:51:25'),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjUyLCJlbWFpbCI6InZpcmF0MTIzQGdtYWlsLmNvbSIsImlhdCI6MTcxNzY1MjE3MywiZXhwIjoxNzE3NzM4NTczfQ.be6hP4krTOivQej0Lqho_ZD2DOTdNiAf276Ln_3T75s', '2024-06-06 06:48:09'),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjUyLCJlbWFpbCI6InZpcmF0MTIzQGdtYWlsLmNvbSIsImlhdCI6MTcxNzY1NjgyMSwiZXhwIjoxNzE3NzQzMjIxfQ.Wdtns1-La3uXTFw61B1m7Zi8rmjjOfk3Bp7R0QzLluc', '2024-06-06 06:57:59'),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjUyLCJlbWFpbCI6InZpcmF0MTIzQGdtYWlsLmNvbSIsImlhdCI6MTcxODA4MTg2NSwiZXhwIjoxNzE4MTY4MjY1fQ.HPj3fRCwE0k8SfsU0zbCmwCe8f_zNlVqYEMbTCMVwL8', '2024-06-11 05:48:45'),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjUyLCJlbWFpbCI6InZpcmF0MTIzQGdtYWlsLmNvbSIsImlhdCI6MTcxODA4NjI2OSwiZXhwIjoxNzE4MTcyNjY5fQ.GOjR6iwNterJXRzwHV9wwxNd2wO7zzKZ05hx5sJI3Yg', '2024-06-11 06:18:06'),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjUyLCJlbWFpbCI6InZpcmF0MTIzQGdtYWlsLmNvbSIsImlhdCI6MTcxODA4NjIwMiwiZXhwIjoxNzE4MTcyNjAyfQ.oFVRNCK9dToyCbsptTubI6CitQCy8yG6PaxfoL4s8Fo', '2024-06-11 06:10:26'),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjUyLCJlbWFpbCI6InZpcmF0MTIzQGdtYWlsLmNvbSIsImlhdCI6MTcxODA4NTM3MiwiZXhwIjoxNzE4MTcxNzcyfQ.iky7rtZ_UYRpbp5cJe-uKtQ28HiKLzukdvUL3r2c5yc', '2024-06-11 05:56:17'),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjUyLCJlbWFpbCI6InZpcmF0MTIzQGdtYWlsLmNvbSIsImlhdCI6MTcxODA4ODgyOCwiZXhwIjoxNzE4MTc1MjI4fQ.MrtHmP0O-Xdg2FKXIOBH3wfjxc6NkpvC7-o-LXnZ66k', '2024-06-11 11:01:05'),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjUyLCJlbWFpbCI6InZpcmF0MTIzQGdtYWlsLmNvbSIsImlhdCI6MTcxODAwMDgyNSwiZXhwIjoxNzE4MDg3MjI1fQ.hbw-vlRYPAi9D_Y8YUDAakl2xy78ogolqRAGVuqgLHI', '2024-06-10 07:14:05'),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjUyLCJlbWFpbCI6InZpcmF0MTIzQGdtYWlsLmNvbSIsImlhdCI6MTcxODAwNDQ2MSwiZXhwIjoxNzE4MDkwODYxfQ.sVrBTxWhduLZe5fjS99Mo8sN5hoPmIQXp73SwFlYvbY', '2024-06-10 09:09:17'),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjUyLCJlbWFpbCI6InZpcmF0MTIzQGdtYWlsLmNvbSIsImlhdCI6MTcxODEwNzE2MiwiZXhwIjoxNzE4MTkzNTYyfQ.DocJNJWIYUyFoa0rB2-9_VFZgUwaO2etr5Dom6_WRgw', '2024-06-11 11:59:40'),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjUyLCJlbWFpbCI6InZpcmF0MTIzQGdtYWlsLmNvbSIsImlhdCI6MTcxODEwNzMyOSwiZXhwIjoxNzE4MTkzNzI5fQ.4gguvjwHe4ldoa92m4fr4P1AGLlgozZyz0vV-BuGiBA', '2024-06-11 12:04:26'),
('Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjUyLCJlbWFpbCI6InZpcmF0MTIzQGdtYWlsLmNvbSIsImlhdCI6MTcxODEwNzUwMSwiZXhwIjoxNzE4MTkzOTAxfQ.6J3_zYxaJWhz-hJs81xw5meAI75_qrimEfjCk-Ljbu0', '2024-06-11 12:22:28');

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
  `created_By` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cms`
--

INSERT INTO `cms` (`id`, `tender_Ref_No`, `select_Milestone`, `add_Milestone`, `add_Milestone_Desc`, `attach_Document`, `add_Completion_DT`, `created_By`) VALUES
(87, 'Testing Tender3', 'work', 'sdsa', 'sadsad', '..\\public\\uploads\\Next-18mca018_poster.pdf', '2024-05-27 00:00:00', 52),
(88, 'Testing Tender3', 'pay', 'sds', 'sdsad', '..\\public\\uploads\\Next-18mca018_poster.pdf', '2024-05-30 00:00:00', 52),
(89, '5', 'work', 'near to me', 'any thing to do', NULL, '2012-12-15 00:00:00', 52),
(90, 'KL456', 'work', 'The Indian Premier League', 'The Indian Premier LeagueThe Indian Premier League', '..\\public\\uploads\\Next-Path.png', '2024-05-21 00:00:00', 52),
(91, 'KL456', 'pay', 'fgchbjklm;', 'hjknlkm;,\'.\r\n', '..\\public\\uploads\\Next-2.JPG', '2024-05-28 00:00:00', 52),
(92, 'jay123', 'work', 'tfyguhjoikpl[p', 'cyvuhbijnkml', '..\\public\\uploads\\Next-2.JPG', '2024-05-28 00:00:00', 52),
(93, 'KL456', 'work', 'erstcfybjnk', 'lryvubjn;l,\'.', '', '2024-05-28 00:00:00', 52),
(94, 'KL456', 'work', 'vgbhjn', 'hbjnkm', '', '2024-05-28 00:00:00', 52),
(95, 'jay123', 'work', 'fsjfjsfsdjfjfldsjfdfsdjfdslfjfsjfjsfsdjfjfldsjfdfsdjfdslfjfsjfjsfsdjfjfldsjfdfsdjfdslfj', 'fcghbj', '', '2024-05-28 00:00:00', 52),
(96, 'KL456', 'work', 'dhdsfksdfdfhfhjhfjdhfkdjfhdskjfhdsfkjhdfkjhdsfjshfhjkfhdsfhdskjf', 'mn,,', '', '2024-05-29 00:00:00', 52),
(97, 'Jay007', 'work', 'sjkhjhdfdkj', 'hjjdkhkdhfkjfhk', '', '2024-05-29 00:00:00', 52),
(98, 'Jay007', 'work', 'ddfmdfdf,d', 'm,ndnfdf,dfnd,mdnf,nd,mf', '', '2024-05-29 00:00:00', 52),
(99, 'TV_001', 'work', 'Milestonr', 'Milestonr', '', '2024-05-27 00:00:00', 52),
(100, 'TV_001', 'pay', 'Milestonr', 'Milestonr', '', '2024-05-28 00:00:00', 52),
(101, 'Apple_01', 'work', 'Milestone', 'Add mile stone description', '', '2024-05-30 00:00:00', 52),
(102, 'MOBILE123', 'work', 'waertfhyuiokp', 'rxdtcfgyij', '', '2024-05-20 00:00:00', 52),
(103, 'KL456', 'work', 'Today TAsk1', 'tajs', '', '2024-05-28 00:00:00', 52),
(104, 'KL456', 'pay', 'Task2', 'sldsl', '', '2024-05-29 00:00:00', 52),
(105, 'Glass007', 'work', 'xxtyfugyiuhoijpo', 'cfgvhjkl', '', '2024-06-26 00:00:00', 52),
(106, 'Bid1012', 'work', 'Phase1', 'pen', '', '2024-07-03 00:00:00', 120),
(107, 'Bid1012', 'pay', 'phase1', 'aashir', '', '2024-07-03 00:00:00', 120),
(108, 'KL456', 'work', 'dshgdhfgsdfg', 'gdjgdjfgdj', '', '2024-06-07 00:00:00', 52),
(109, '2024_mcl_309437_1', 'work', 'yt', 'yu', '', '2024-06-21 00:00:00', 52),
(110, '2024_mcl_309437_1', 'pay', 'sdsad', 'ds', '', '2024-06-18 00:00:00', 52),
(111, '5', 'work', 'near to me', 'any thing to do', '', '2012-12-15 00:00:00', 52),
(112, '5', 'work', 'near to me', 'any thing to do', '', '2012-12-15 00:00:00', 52),
(113, '5', 'work', 'near to me', 'any thing to do', '', '2012-12-15 00:00:00', 52),
(114, '5', 'work', 'near to me', 'any thing to do', '', '2012-12-15 00:00:00', 52),
(115, '5', 'work', 'near to me', 'any thing to do', '', '2012-12-15 00:00:00', 52),
(116, '5', 'work', 'near to me', 'any thing to do', '', '2012-12-15 00:00:00', 52);

-- --------------------------------------------------------

--
-- Table structure for table `company_registration`
--

CREATE TABLE `company_registration` (
  `id` int(11) NOT NULL,
  `company_code` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `no_of_user` int(11) NOT NULL,
  `expiry_date` date NOT NULL,
  `subscription_date` date NOT NULL,
  `subscription_plan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `financial_limit`
--

CREATE TABLE `financial_limit` (
  `id` int(11) NOT NULL,
  `max_Limit` int(11) NOT NULL,
  `min_Limit` int(11) NOT NULL,
  `created_By` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `financial_limit`
--

INSERT INTO `financial_limit` (`id`, `max_Limit`, `min_Limit`, `created_By`) VALUES
(19, 20, 50, '52');

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
  `add_comment` varchar(255) NOT NULL
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
  `user_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `library_of_document`
--

INSERT INTO `library_of_document` (`id`, `file_Name`, `category`, `uploaded_Date`, `file_Path`, `user_Id`) VALUES
(1, 'PQ_Document', 'PQ', '2024-06-07 05:49:39', '..\\public\\uploads\\Next-22MCA034_College_Certificate.pdf,..\\public\\uploads\\Next-Result List and Result Details APIs.docx', 0),
(2, 'PQ_Document', 'PQ', '2024-06-07 05:50:14', '..\\public\\uploads\\Next-22MCA034_College_Certificate.pdf,..\\public\\uploads\\Next-Result List and Result Details APIs.docx', 0),
(3, 'PQ', 'PQ', '2024-06-07 12:11:28', '..\\public\\uploads\\Next-Screenshot (316).png,..\\public\\uploads\\Next-Screenshot (317).png,..\\public\\uploads\\Next-Screenshot (318).png', 0),
(4, 'Negotiation', 'Negotiation', '2024-06-07 12:12:44', '..\\public\\uploads\\Next-Screenshot (318).png,..\\public\\uploads\\Next-Screenshot (319).png,..\\public\\uploads\\Next-Screenshot (320).png,..\\public\\uploads\\Next-Screenshot (321).png,..\\public\\uploads\\Next-Screenshot (322).png,..\\public\\uploads\\Next-Screenshot (323).png,..\\public\\uploads\\Next-Screenshot (324).png', 0),
(5, 'PQ', 'PQ', '2024-06-07 12:24:36', '..\\public\\uploads\\Next-Screenshot (316).png,..\\public\\uploads\\Next-Screenshot (317).png,..\\public\\uploads\\Next-Screenshot (318).png', 0),
(6, 'Negotiation', 'Negotiation', '2024-06-07 12:26:26', '..\\public\\uploads\\Next-Screenshot (318).png', 0),
(7, 'Pre Bid Round', 'Pre Bid Round', '2024-06-07 12:29:56', '..\\public\\uploads\\Next-Screenshot (316).png,..\\public\\uploads\\Next-Screenshot (317).png,..\\public\\uploads\\Next-Screenshot (318).png', 0),
(8, 'Corrigendum Addendum', 'Corrigendum Addendum', '2024-06-07 12:30:21', '..\\public\\uploads\\Next-Screenshot (316).png,..\\public\\uploads\\Next-Screenshot (317).png', 0),
(9, 'Tender Bid Evaluation', 'Tender Bid Evaluation', '2024-06-07 12:34:33', '..\\public\\uploads\\Next-Screenshot (316).png', 0),
(10, 'Tender Bid Evaluation', 'Tender Bid Evaluation', '2024-06-07 12:36:02', '..\\public\\uploads\\Next-Screenshot (320).png', 0),
(11, 'PQ_Document', 'PQ', '2024-06-10 06:01:43', 'public\\uploads\\Next-22MCA034_College_Certificate.pdf', 52),
(12, 'Create Tender', 'Create Tender', '2024-06-11 07:41:21', 'public\\uploads\\Next-Screenshot (316).png', 52),
(13, 'My Annexure', 'My Annexure', '2024-06-11 08:01:11', 'public\\uploads\\Next-Screenshot (316).png,public\\uploads\\Next-Screenshot (317).png,public\\uploads\\Next-Screenshot (318).png,public\\uploads\\Next-Screenshot (319).png,public\\uploads\\Next-Screenshot (320).png,public\\uploads\\Next-Screenshot (321).png,public\\uploads\\Next-Screenshot (322).png,public\\uploads\\Next-Screenshot (323).png,public\\uploads\\Next-Screenshot (324).png,public\\uploads\\Next-Screenshot (325).png,public\\uploads\\Next-Screenshot (326).png,public\\uploads\\Next-Screenshot (327).png,public\\u', 52);

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
  `upload_document` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `make_payment`
--

INSERT INTO `make_payment` (`id`, `remainning_for_SD`, `add_Bank`, `transaction_Number`, `transaction_Date`, `Date`, `comment`, `c_Id`, `created_By`, `upload_document`) VALUES
(116, NULL, '', 1234567890, '2024-04-29T18:30:00.000Z', '2024-05-23', 'sjdsafkjsa', 160, 52, ''),
(117, NULL, '', 123456789, '2024-05-07', '2024-05-23', 'sjdsafkjsa', 160, 52, ''),
(118, NULL, '', 1234567890, '2024-04-30', '2024-05-23', 'sdsd', 160, 52, ''),
(119, NULL, '', 1234567890, '2024-05-21', '2024-05-23', 'sjdsafkjsa', 160, 52, ''),
(120, NULL, '', 1234567890, '2024-05-20', '2024-05-23', 'qewrterrerefdsss', 160, 52, ''),
(121, NULL, '', 123456789, '2024-05-02', '2024-05-23', 'sdsa', 160, 52, ''),
(122, NULL, NULL, NULL, '', '2024-05-23', '', 162, 52, ''),
(123, 10000, NULL, NULL, '2024-05-21', '2024-05-23', '', 162, 52, ''),
(124, 10000, NULL, 1234567890, '2024-05-29', '2024-05-23', 'shahi', 162, 52, ''),
(125, 30000, '', 558552, '01/01/2001', '2024-05-23', 'awsertdfgyoijpk[pl[]', 163, 52, ''),
(126, 10000, NULL, 1234567890, '2024-05-29', '2024-05-23', 'shahi', 162, 52, ''),
(127, NULL, 'Axis', 29, '2024-05-30', '2024-05-24', 'sjdsafkjsa', 165, 52, ''),
(129, NULL, '', 0, '', '2024-05-24', 'dsd', 165, 52, ''),
(130, 10000, '', 121, '2024-05-28', '2024-05-24', 'sdsa', 170, 52, ''),
(131, 500, 'SBI', 12345, '2024-05-23', '2024-05-24', 'Test payment', 166, 52, ''),
(132, NULL, 'SBI', 12345, '12/2/24', '2024-05-24', 'dfdf', 166, 52, ''),
(133, NULL, 'SBI', 12345, '12/2/24', '2024-05-24', 'dfdf', 166, 52, ''),
(134, NULL, 'SBI', 12345, '12/2/24', '2024-05-24', 'dfdf', 166, 52, ''),
(135, NULL, 'SBI', 12345, '12/2/24', '2024-05-24', 'dfdf', 171, 52, NULL),
(136, NULL, 'SBI', 12345, '12/2/24', '2024-05-24', 'dfdf', 171, 52, NULL),
(137, NULL, 'SBI', 12345, '12/2/24', '2024-05-24', 'dfdf', 171, 52, NULL),
(138, NULL, 'SBI', 12345, '12/2/24', '2024-05-24', 'dfdf', 171, 52, NULL),
(139, NULL, 'SBI', 12345, '12/2/24', '2024-05-24', 'dfdf', 171, 52, NULL),
(140, NULL, 'SBI', 12345, '12/2/24', '2024-05-24', 'dfdf', 171, 52, NULL),
(141, NULL, 'SBI', 12345, '12/2/24', '2024-05-24', 'dfdf', 171, 52, NULL),
(142, NULL, 'SBI', 12345, '12/2/24', '2024-05-24', 'dfdf', 171, 52, '..\\public\\uploads\\Next-Result List and Result Details APIs.docx,..\\public\\uploads\\Next-22MCA034_College_Certificate.pdf'),
(143, NULL, 'SBI', 12345, '12/2/24', '2024-05-24', 'dfdf', 171, 52, ''),
(144, NULL, 'SBI', 12345, '12/2/24', '2024-05-24', 'dfdf', 171, 52, ''),
(145, NULL, 'SBI', 12345, '12/2/24', '2024-05-24', 'dfdf', 171, 52, '..\\public\\uploads\\Next-Result List and Result Details APIs.docx,..\\public\\uploads\\Next-22MCA034_College_Certificate.pdf'),
(146, NULL, 'SBI', 12345, '12/2/24', '2024-05-24', 'dfdf', 171, 52, ''),
(147, NULL, '', 2147483647, '02/12/2024', '2024-05-27', 'The Indian Premier LeagueThe Indian Premier League', 173, 52, NULL),
(148, 25000, '', 558558, '02/02/2002', '2024-05-27', 'The Indian Premier League', 174, 52, NULL),
(149, 0, '', 1234567890, '2024-05-07', '2024-05-28', 'sds', 169, 52, '..\\public\\uploads\\Next-Screenshot (320).png'),
(150, 0, '', 558558, '2024-05-29', '2024-05-29', 'kjjhukhkj', 182, 52, '..\\public\\uploads\\Next-23.JPG'),
(151, 30000, '', 959599559, '2024-05-30', '2024-05-29', 'dkjdfhkdjf', 183, 52, '..\\public\\uploads\\Next-23.JPG'),
(152, 25000, 'Axis', 56565, '2024-05-28', '2024-05-29', 'wdsdsdsd', 174, 52, '..\\public\\uploads\\Next-23.JPG'),
(153, 0, '', 123456, '2024-05-29', '2024-05-29', 'Tet', 185, 52, '..\\public\\uploads\\Next-67.PNG'),
(154, 0, '', 4567896, '2024-05-29', '2024-05-29', 'Done', 186, 52, '..\\public\\uploads\\Next-67.PNG'),
(155, 10000, NULL, 2147483647, '2024-05-01', '2024-05-29', 'Apo', 187, 52, NULL),
(156, 0, '', 123456789, '2024-05-01', '2024-05-30', 'qwertyuiop', 194, 52, '..\\public\\uploads\\Next-Screenshot (320).png'),
(157, 0, '', 123456789, '2024-05-29', '2024-05-30', 'qwertyuio', 173, 52, '..\\public\\uploads\\Next-Screenshot (320).png'),
(158, 0, '', 123456789, '2024-05-28', '2024-05-30', 'qwertyui', 173, 52, '..\\public\\uploads\\Next-Screenshot (320).png'),
(159, 25000, '', 0, '2024-05-28', '2024-05-30', 'qwertyui', 174, 52, '..\\public\\uploads\\Next-Screenshot (319).png'),
(160, 25000, '', 454464, '+056465-01-08', '2024-05-30', 'jkdfdfhjfjfkhk', 174, 52, '..\\public\\uploads\\Next-2.JPG'),
(161, 0, '', 84687979, '2024-05-21', '2024-05-30', 'djgfdyufgiudfhidu', 198, 52, '..\\public\\uploads\\Next-68.PNG'),
(162, 0, '', 4456466, '2024-06-01', '2024-05-30', 'sretdyguoijpk', 199, 52, '..\\public\\uploads\\Next-23.JPG'),
(163, 97543536, NULL, 1234567890, '2024-04-30', '2024-05-30', 'efdss', 200, 52, NULL),
(164, 97543536, '', 56466464, '2024-05-28', '2024-05-31', '', 200, 52, NULL),
(165, 97543536, '', 4564566, '', '2024-05-31', '', 200, 52, NULL),
(166, 10000, '', 65561, '2024-05-29', '2024-05-31', '', 170, 52, NULL),
(167, 97543536, '', 558558, '2024-05-29', '2024-05-31', '', 200, 52, NULL),
(168, 0, '', 65456456, '2024-06-25', '2024-06-03', 'dfngfgkj', 204, 52, '..\\public\\uploads\\Next-chad-montano-MqT0asuoIcU-unsplash.jpg'),
(169, 0, '', 963852852, '2024-06-25', '2024-06-03', 'qwertyuiop[]', 205, 52, '..\\public\\uploads\\Next-chad-montano-MqT0asuoIcU-unsplash.jpg'),
(170, 5000, '', 56565, '2024-07-03', '2024-06-03', '', 206, 52, NULL),
(171, 25000, '', 2147483647, '2024-06-18', '2024-06-03', '', 174, 52, NULL),
(172, 25000, NULL, NULL, '2024-06-18', '2024-06-03', '', 174, 52, NULL),
(173, 0, '', 23456789, '2024-07-03', '2024-06-03', 'pens', 207, 120, '..\\public\\uploads\\Next-Screenshot (320).png'),
(174, 0, '', 12345678, '2024-07-03', '2024-06-03', 'Bob', 210, 120, '..\\public\\uploads\\Next-Screenshot (317).png'),
(175, 0, '', 1234567890, '2024-06-26', '2024-06-03', '', 211, 120, NULL),
(176, 0, '', 0, '2024-06-25', '2024-06-07', 'we', 213, 52, '..\\public\\uploads\\Next-Screenshot (317).png'),
(177, 0, '', 0, '', '2024-06-07', 'ewq', 214, 52, '..\\public\\uploads\\Next-Screenshot (324).png'),
(178, 10002, '', 0, '2024-06-25', '2024-06-07', '', 215, 52, NULL);

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
  `r_Attachment_Query_Document` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `negotiation`
--

INSERT INTO `negotiation` (`id`, `tender_Ref_No`, `select_Envelop`, `post_Question`, `reply_Deadline`, `attach_Query_Document`, `current_DT`, `created_By`, `r_comment`, `r_Attachment_Query_Document`) VALUES
(87, '4', 'Technical', 'what ois your dead line?', '2012-04-12 00:00:00', 'null', '2012-12-12 15:20:00', '52', '', NULL),
(88, 'jay123', 'Financial', 'rsewdsa', '2024-05-31 00:00:00', '..\\public\\uploads\\Next-Screenshot (286).png', '2024-05-27 00:00:00', '52', '', NULL),
(89, 'jay123', 'Technical', 'aa', '2024-05-28 00:00:00', '..\\public\\uploads\\Next-Screenshot (286).png', '2024-05-27 00:00:00', '52', '', NULL),
(90, 'KL456', 'Financial', 'The Indian Premier League', '2024-05-13 00:00:00', '..\\public\\uploads\\Next-Path.png', '2024-05-20 00:00:00', '52', 'kjfdhfkjhk', NULL),
(91, 'KL456', 'Financial', 'sad', '2024-05-29 00:00:00', '..\\public\\uploads\\Next-Screenshot (321).png', '2024-05-28 00:00:00', '52', 'jkfgkk', NULL),
(92, 'KL456', 'Technical', 'Todays', '2024-05-17 00:00:00', '..\\public\\uploads\\Next-Screenshot (316).png', '2024-05-28 00:00:00', '52', 'lkjelkjlefjf', NULL),
(93, 'KL456', 'Financial', 'TOdays', '2024-05-30 00:00:00', '..\\public\\uploads\\Next-Screenshot (321).png', '2024-05-28 00:00:00', '52', 'ndjgfg', NULL),
(94, 'Jay007', 'Technical', 'shdsgd', '2024-05-23 00:00:00', '..\\public\\uploads\\Next-2.JPG', '2024-05-13 00:00:00', '52', 'qwertyuio', NULL),
(95, 'Jay007', 'Financial', 'dkjfdhjfhdjfhjdh', '2024-05-29 00:00:00', '..\\public\\uploads\\Next-23.JPG', '2024-05-22 00:00:00', '52', 'ertyuio', NULL),
(96, 'Jay007', 'Technical', 'wsertfhyuop[;', '2024-05-29 00:00:00', '..\\public\\uploads\\Next-23.JPG', '2024-05-27 00:00:00', '52', 'pwertyuiop', NULL),
(97, 'KL456', 'Financial', 'qwertyuiop[;]\'', '2024-05-21 00:00:00', '..\\public\\uploads\\Next-23.JPG', '2024-05-14 00:00:00', '52', 'jfdgjg', NULL),
(98, 'Jay007', 'Technical', 'qwertyuiop[', '2024-05-21 00:00:00', '..\\public\\uploads\\Next-23.JPG', '2024-05-21 00:00:00', '52', '[wertyuiop', NULL),
(99, 'Jay007', 'Financial', 'qwertyuiop[', '2024-05-21 00:00:00', '..\\public\\uploads\\Next-2.JPG', '2024-05-29 00:00:00', '52', 'wertyuio', NULL),
(100, 'TV_001', 'Technical', 'What is tender', '2024-05-29 00:00:00', '..\\public\\uploads\\Next-1.JPG', '2024-05-29 00:00:00', '52', 'dhjsdg', NULL),
(101, 'TV_001', 'Financial', 'FInical question', '2024-05-29 00:00:00', '..\\public\\uploads\\Next-1.JPG', '2024-05-27 00:00:00', '52', 'fjdkf', NULL),
(102, 'MOBILE123', 'Technical', 'rsedtgiojpk', '2024-05-30 00:00:00', '..\\public\\uploads\\Next-67.PNG', '2024-05-30 00:00:00', '52', '', NULL),
(103, 'MOBILE123', 'Financial', 'szxdfgvhbjlkm', '2024-05-30 00:00:00', '..\\public\\uploads\\Next-68.PNG', '2024-05-30 00:00:00', '52', '', NULL),
(104, 'KL456', 'Financial', 'sdsad', '2024-05-28 00:00:00', '..\\public\\uploads\\Next-Screenshot (317).png', '2024-05-26 00:00:00', '52', 'lkjfdlkdlkj', NULL),
(105, 'KL456', 'Technical', 'asdsad', '2024-05-31 00:00:00', '..\\public\\uploads\\Next-Screenshot (317).png', '2024-05-28 00:00:00', '52', 'lkjlfjljf', NULL),
(106, 'KL456', 'Financial', 'Aashir And Raj', '2024-05-29 00:00:00', '..\\public\\uploads\\Next-Screenshot (321).png', '2024-05-28 00:00:00', '52', 'lkjfljldkflkj', NULL),
(107, 'Glass007', 'Financial', 'erdtfyguhijo', '2024-06-03 00:00:00', '..\\public\\uploads\\Next-chad-montano-MqT0asuoIcU-unsplash.jpg', '2024-06-03 00:00:00', '52', 'dmnsdfbsdfjhfbffhdfbhbd', NULL),
(108, 'Glass007', 'Technical', 'eawrstyioup', '2024-06-03 00:00:00', '..\\public\\uploads\\Next-chad-montano-MqT0asuoIcU-unsplash.jpg', '2024-06-03 00:00:00', '52', 'dmnsdfbsdfjhfbffhdfbhbd', NULL),
(109, 'Bid1012', 'Financial', 'What is pen', '2024-07-02 00:00:00', '..\\public\\uploads\\Next-Screenshot (320).png', '2024-07-02 00:00:00', '120', 'pen is blue', NULL),
(110, 'Bid1012', 'Technical', 'pen size?', '2024-07-03 00:00:00', '..\\public\\uploads\\Next-Screenshot (320).png', '2024-07-03 00:00:00', '120', '3', NULL),
(111, '2024_mcl_309437_1', 'Financial', 'hhhhj', '2024-06-27 00:00:00', '..\\public\\uploads\\Next-Screenshot (321).png', '2024-06-25 00:00:00', '52', 'ddsd', NULL),
(112, '2024_mcl_309437_1', 'Technical', 'aisjakjsak', '2024-07-03 00:00:00', '..\\public\\uploads\\Next-Screenshot (324).png', '2024-07-03 00:00:00', '52', 'aaaaaaaaaa', NULL);

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
  `refund_Date` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment_configurations`
--

INSERT INTO `payment_configurations` (`id`, `tender_Ref_No`, `select_type`, `payment_Type`, `payment_Mode`, `currency`, `amount`, `online_Option`, `add_Detail`, `required_Before`, `upload_Document`, `comment`, `status`, `created_By`, `refund_Date`) VALUES
(160, '101TenderTesting', 'document', 'paid', 'offline', 'USD', 123123.00, '', '', '2024-05-28 00:00:00', '..\\public\\uploads\\Next-Screenshot (285).png', 'ettryuiuytrewqertyuiouytrewq', 'Done', 52, NULL),
(161, 'TestingTenderNo2', 'emd', 'paid', 'offline', '', 20000.00, '', '', '2024-05-30 00:00:00', '..\\public\\uploads\\Next-18mca018_poster.pdf', 'sdsd', 'pending', 52, NULL),
(162, 'TestingTenderNo2', 'sd', 'paid', 'online', 'INR', 30000.00, '', 'sdsa', '2024-05-29 00:00:00', '..\\public\\uploads\\Next-18mca018_poster.pdf', 'scsa', 'Done', 52, NULL),
(163, '101TenderTesting', 'sd', 'paid', 'offline', 'USD', 50000.00, '', '', '2024-05-21 00:00:00', '..\\public\\uploads\\Next-Calendar.png', 'qwertfgijopl[', 'Done', 52, NULL),
(164, '101TenderTesting', 'emd', 'paid', 'offline', 'USD', 20000.00, '', '', '2024-04-30 00:00:00', '..\\public\\uploads\\Next-Calendar.png', 'awerstdguoijkpl;\'', 'pending', 52, NULL),
(165, 'jay123', 'document', 'free', '', '', 0.00, '', '', '0000-00-00 00:00:00', '..\\public\\uploads\\Next-216X92.png', 'cxxzxcx', 'Done', 52, NULL),
(166, '5', 'EMD', 'paid', 'online', 'USD', 100.50, 'UPI', 'Transaction details', '2024-05-01 00:00:00', NULL, 'Additional comments', 'Done', 52, NULL),
(167, '5', 'SD', 'paid', 'online', 'USD', 100.50, 'UPI', 'Transaction details', '2024-05-01 00:00:00', NULL, 'Additional comments', 'pending', 52, NULL),
(168, 'jay123', '', 'free', '', '', 0.00, '', '', '0000-00-00 00:00:00', '..\\public\\uploads\\Next-Screenshot (286).png', 'ss', 'pending', 52, NULL),
(169, 'jay123', 'emd', 'paid', 'offline', 'USD', 20000.00, '', '', '2024-05-28 00:00:00', '..\\public\\uploads\\Next-Screenshot (286).png', 'ss', 'Done', 52, NULL),
(170, 'jay123', 'sd', 'paid', 'online', '', 30000.00, '', 'ds', '2024-04-30 00:00:00', '..\\public\\uploads\\Next-Screenshot (286).png', 'ssa', 'Done', 52, NULL),
(171, '10', 'EMD', 'paid', 'online', 'USD', 100.50, 'UPI', 'Transaction details', '2024-05-01 00:00:00', NULL, 'Additional comments', 'Done', 52, NULL),
(172, 'jay123', '', 'paid', 'offline', 'USD', 8520.00, '', '', '2024-05-29 00:00:00', '..\\public\\uploads\\Next-Path.png', 'qwertyuiop[]', 'pending', 52, NULL),
(173, 'KL456', 'emd', 'paid', 'offline', 'USD', 25000.00, '', '', '2024-05-21 00:00:00', '..\\public\\uploads\\Next-Path.png', 'The Indian Premier LeagueThe Indian Premier League', 'Done', 52, NULL),
(174, 'KL456', 'sd', 'paid', 'offline', 'USD', 50000.00, '', '', '2024-05-14 00:00:00', '..\\public\\uploads\\Next-Calendar.png', 'The Indian Premier LeagueThe Indian Premier LeagueThe Indian Premier League', 'Done', 52, NULL),
(176, '10', 'Document', 'paid', 'online', 'USD', 100.50, 'UPI', 'Transaction details', '2024-05-01 00:00:00', NULL, 'Additional comments', 'pending', 52, NULL),
(177, '10', 'emd', 'paid', 'online', 'USD', 5000.00, 'UPI', 'Transaction details', '2024-05-01 00:00:00', NULL, 'Additional comments', 'pending', 52, NULL),
(178, '10', 'sd', 'paid', 'online', 'USD', 10000.00, 'UPI', 'Transaction details', '2024-05-01 00:00:00', NULL, 'Additional comments', 'pending', 52, NULL),
(179, '10', 'sd', 'paid', 'online', 'USD', 10000.00, 'UPI', 'Transaction details', '2024-05-01 00:00:00', NULL, 'Additional comments', 'pending', 52, NULL),
(180, '10', 'emd', 'paid', 'online', 'USD', 10000.00, 'UPI', 'Transaction details', '2024-05-01 00:00:00', NULL, 'Additional comments', 'pending', 52, NULL),
(181, 'KL456', 'emd', 'free', '', '', 0.00, '', '', '0000-00-00 00:00:00', '..\\public\\uploads\\Next-Screenshot (316).png', 'fdfdsf', 'pending', 52, NULL),
(182, 'Jay007', 'emd', 'paid', 'offline', 'USD', 20000.00, '', '', '2024-05-21 00:00:00', '..\\public\\uploads\\Next-2.JPG', 'kjhejkrhekhkhjjfh', 'Done', 52, NULL),
(183, 'Jay007', 'sd', 'paid', 'online', 'USD', 50000.00, '', 'jhghuggj', '2024-04-30 00:00:00', '..\\public\\uploads\\Next-23.JPG', 'djjkfdhkjfhdkhdf', 'Done', 52, NULL),
(184, 'jay123', 'sd', 'paid', 'offline', 'USD', 20000.00, '', '', '2024-05-29 00:00:00', '..\\public\\uploads\\Next-23.JPG', 'fghjkl;', 'pending', 52, NULL),
(185, 'TV_001', '', 'paid', 'online', '', 1000.00, '', 'Bank Information ', '2024-05-28 00:00:00', '..\\public\\uploads\\Next-67.PNG', 'Any add details', 'Done', 52, NULL),
(186, 'TV_001', 'emd', 'paid', 'online', '', 50000.00, '', 'Transaction Id', '2024-05-28 00:00:00', '..\\public\\uploads\\Next-67.PNG', 'Transaction Id', 'Done', 52, NULL),
(187, 'TV_001', 'sd', 'paid', 'online', '', 60000.00, '', 'Bank Number', '2024-05-29 00:00:00', '..\\public\\uploads\\Next-67.PNG', 'Bank Number', 'Done', 52, NULL),
(188, 'Jay007', 'document', 'free', '', '', 0.00, '', '', '0000-00-00 00:00:00', '..\\public\\uploads\\Next-23.JPG', 'fghjlk', 'pending', 52, NULL),
(189, 'Jay007', 'document', 'paid', 'offline', 'USD', 4554.00, '', '', '2024-05-21 00:00:00', '..\\public\\uploads\\Next-2.JPG', 'dfslkj', 'pending', 52, NULL),
(190, 'KL456', '', 'free', '', '', 0.00, '', '', '0000-00-00 00:00:00', '..\\public\\uploads\\Next-Screenshot (319).png', 'ddas', 'pending', 52, NULL),
(191, 'KL456', '', 'paid', 'online', 'USD', 23232.00, '', 'dsads', '2024-05-28 00:00:00', '..\\public\\uploads\\Next-Screenshot (317).png', 'dssa', 'pending', 52, NULL),
(192, 'KL456', 'emd', 'paid', 'online', 'USD', 3232.00, '', 'dsadsa', '2024-05-21 00:00:00', '..\\public\\uploads\\Next-Screenshot (320).png', 'dsads', 'pending', 52, NULL),
(193, 'KL456', 'sd', 'paid', 'online', 'USD', 232.00, '', 'wew', '2024-05-28 00:00:00', '..\\public\\uploads\\Next-Screenshot (316).png', 'zzxz\\', 'pending', 52, NULL),
(194, 'KL456', 'document', 'paid', 'offline', 'USD', 5000.00, '', '', '2024-05-21 00:00:00', '..\\public\\uploads\\Next-Screenshot (320).png', 'iusisjdsjdjsd', 'Done', 52, NULL),
(195, 'KL456', 'emd', 'paid', 'online', 'USD', 20000.00, '', '111111', '2024-05-14 00:00:00', '..\\public\\uploads\\Next-Screenshot (320).png', 'wertyuiop', 'pending', 52, NULL),
(196, 'KL456', 'sd', 'paid', 'offline', 'USD', 323232.00, '', '', '2024-05-07 00:00:00', '..\\public\\uploads\\Next-Screenshot (320).png', 'qewrtyuio', 'pending', 52, NULL),
(197, 'KL456', 'sd', 'paid', 'offline', 'USD', 60000.00, '', '', '2024-05-28 00:00:00', '..\\public\\uploads\\Next-Screenshot (317).png', 'qwertyui', 'pending', 52, NULL),
(198, 'MOBILE123', 'document', 'paid', 'offline', 'USD', 654.00, '', '', '2024-05-30 00:00:00', '..\\public\\uploads\\Next-23.JPG', 'djkffhdkfh', 'Done', 52, NULL),
(199, 'MOBILE123', 'emd', 'paid', 'offline', 'USD', 2456464.00, '', '', '2024-05-28 00:00:00', '..\\public\\uploads\\Next-2.JPG', 'dskjhdjfhdhdfhjdkfdfh', 'Done', 52, NULL),
(200, 'MOBILE123', 'sd', 'paid', 'offline', 'USD', 99999999.99, '', '', '2024-05-28 00:00:00', '..\\public\\uploads\\Next-2.JPG', 'sxdfghbjkl', 'Done', 52, NULL),
(201, '5', 'EMD', 'paid', 'online', 'USD', 100.50, 'UPI', 'Transaction details', '2024-05-01 00:00:00', NULL, 'Additional comments', 'pending', 52, NULL),
(202, '5', 'EMD', 'paid', 'online', 'USD', 100.50, 'UPI', 'Transaction details', '2024-05-01 00:00:00', NULL, 'Additional comments', 'pending', 52, NULL),
(203, '5', 'EMD', 'paid', 'online', 'USD', 100.50, 'UPI', 'Transaction details', '2024-05-01 00:00:00', NULL, 'Additional comments', 'pending', 52, NULL),
(204, 'Glass007', 'document', 'paid', 'offline', 'USD', 56.00, '', '', '2024-06-18 00:00:00', '..\\public\\uploads\\Next-chad-montano-MqT0asuoIcU-unsplash.jpg', 'hfkhgkjfghfkjghgjfgk', 'Done', 52, NULL),
(205, 'Glass007', 'emd', 'paid', 'offline', 'USD', 20000.00, '', '', '2024-06-18 00:00:00', '..\\public\\uploads\\Next-anna-tukhfatullina-food-photographer-stylist-Mzy-OjtCI70-unsplash.jpg', 'wsedrtyuiop[', 'Done', 52, NULL),
(206, 'Glass007', 'sd', 'paid', 'offline', 'USD', 25000.00, '', '', '2024-05-29 00:00:00', '..\\public\\uploads\\Next-davide-cantelli-jpkfc5_d-DI-unsplash.jpg', 'qwertyuiop[', 'Done', 52, NULL),
(207, 'Bid1012', '', 'free', '', '', 0.00, '', '', '0000-00-00 00:00:00', '..\\public\\uploads\\Next-Screenshot (316).png', 'Document', 'Done', 120, NULL),
(208, 'Bid1012', '', 'paid', 'online', '', 20000.00, '', 'bob', '2024-07-02 00:00:00', '..\\public\\uploads\\Next-Screenshot (316).png', 'bob', 'pending', 120, NULL),
(209, 'Bid1012', '', 'paid', 'offline', 'USD', 20000.00, '', '', '2024-07-05 00:00:00', '..\\public\\uploads\\Next-Screenshot (321).png', 'pens', 'pending', 120, NULL),
(210, 'Bid1012', 'emd', 'paid', 'online', 'USD', 30000.00, '', 'Bob', '2024-07-02 00:00:00', '..\\public\\uploads\\Next-Screenshot (316).png', 'Aashir', 'Done', 120, NULL),
(211, 'Bid1012', 'sd', 'paid', 'online', '', 30000.00, '', 'Bob', '2024-07-02 00:00:00', '..\\public\\uploads\\Next-Screenshot (320).png', 'Add', 'Done', 120, NULL),
(212, 'Bid1012', 'document', 'paid', 'offline', 'USD', 8909.00, '', '', '2024-06-25 00:00:00', '..\\public\\uploads\\Next-Screenshot (320).png', 'qwertoiuo', 'pending', 120, NULL),
(213, '1000418584', 'document', 'free', '', '', 0.00, '', '', '0000-00-00 00:00:00', '..\\public\\uploads\\Next-Screenshot (321).png', 'sdkjskj', 'Done', 52, NULL),
(214, '1000418584', 'emd', 'paid', 'online', '', 29998.00, '', 'bobb', '2024-06-25 00:00:00', '..\\public\\uploads\\Next-Screenshot (321).png', 'skjskd', 'Done', 52, NULL),
(215, '1000418584', 'sd', 'paid', 'online', '', 40000.00, '', 'kjdskd', '2024-07-04 00:00:00', '..\\public\\uploads\\Next-Screenshot (320).png', 'dsmkdm,s', 'Done', 52, NULL),
(216, 'Apple_01', 'emd', 'free', '', '', 0.00, '', '', '0000-00-00 00:00:00', 'public\\uploads\\Next-Capture.JPG', 'hjgfhfghjg', 'pending', 52, NULL);

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
  `add_comment` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pq_sub_comment`
--

CREATE TABLE `pq_sub_comment` (
  `id` int(11) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `pq_Id` int(11) NOT NULL
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
  `date` varchar(255) DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `source`
--

INSERT INTO `source` (`id`, `login_Url`, `password`, `user_Name`, `date`) VALUES
(12, 'https://registration.tendertiger.co.in/api/Registration/Login', '$2a$10$kw4sVc8ENa7Iuat1xyMriOl7Px2m7Anejm4NBkrKYl6Z8147c4K2e', 'rakadi7782@buzblox.com', '2024-06-11 05:44:01');

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
  `s_Comment_By` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sub_coment`
--

INSERT INTO `sub_coment` (`id`, `q_Id`, `s_comment`, `date_Time`, `document`, `s_Comment_By`) VALUES
(68, 139, 'This question allready ask me bro.', '2024-06-04 11:29:14', '..\\public\\uploads\\Next-Result List and Result Details APIs.docx,..\\public\\uploads\\Next-22MCA034_College_Certificate.pdf', 'virat'),
(69, 139, 'This is not done', '2024-06-04 11:29:40', '..\\public\\uploads\\Next-Result List and Result Details APIs.docx,..\\public\\uploads\\Next-22MCA034_College_Certificate.pdf', 'virat'),
(70, 141, 'TTfsdljlkj', '2024-06-04 11:30:42', '..\\public\\uploads\\Next-Result List and Result Details APIs.docx,..\\public\\uploads\\Next-22MCA034_College_Certificate.pdf', 'virat'),
(71, 141, 'kkkkkkkkkkkkkkk', '2024-06-04 11:30:57', '..\\public\\uploads\\Next-Result List and Result Details APIs.docx,..\\public\\uploads\\Next-22MCA034_College_Certificate.pdf', 'virat'),
(72, 143, 'hii', '2024-06-04 12:41:52', '', 'virat'),
(73, 142, 'raj', '2024-06-04 12:44:39', '', 'virat'),
(74, 142, 'hii', '2024-06-04 12:45:12', '', 'virat'),
(75, 141, 'jay', '2024-06-04 13:22:16', '', 'virat'),
(76, 145, 'Cooment', '2024-06-07 13:02:15', '', 'virat'),
(77, 147, 'hii', '2024-06-11 15:09:57', '', 'virat'),
(78, 144, 'hiii', '2024-06-11 16:22:58', '', 'virat');

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
  `is_technical_qualified` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblbidders`
--

INSERT INTO `tblbidders` (`id`, `tender_Id`, `bidder_name`, `tender_ref_no`, `is_payment_quilified`, `is_financial_qualified`, `is_technical_qualified`) VALUES
(34, '111116', 'AAshir', 'KL456', 1, 1, 1),
(35, '111116', 'Raj', 'KL456', 1, NULL, NULL),
(36, '72272966', 'financial', 'Glass007', 1, 1, 1),
(37, '72272967', 'Raj', 'Bid1012', 1, 1, 1),
(38, '72272967', 'jay', 'Bid1012', NULL, NULL, NULL),
(39, '72489777', 'aasjihr', '1000418584', 1, NULL, 1),
(40, '72489777', 'rajjj', '1000418584', 1, NULL, NULL),
(41, '72452475', 'aashir', '2024_mcl_309437_1', 1, 1, 1),
(42, '72452475', 'rajjj', '2024_mcl_309437_1', 1, NULL, 1);

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
  `user_Id` int(11) DEFAULT NULL
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
  `add_comment` varchar(255) NOT NULL
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
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tender_actions`
--

INSERT INTO `tender_actions` (`id`, `tender_Ref_No`, `user_id`, `reason`, `comment`, `likes`, `i_want`, `favorite`, `created_at`) VALUES
(10, 'TATA', 52, NULL, NULL, NULL, NULL, 0, '2024-06-06 06:56:34'),
(11, 'TATA1', 52, NULL, NULL, NULL, NULL, 0, '2024-06-06 06:56:47'),
(12, '1000418584', 52, NULL, NULL, 1, NULL, 0, '2024-06-06 12:29:37'),
(13, 'rdpr/2024-25/rd/work_indent3906', 52, NULL, NULL, 1, NULL, 0, '2024-06-06 12:38:09'),
(14, 'KL456', 52, NULL, NULL, 1, NULL, 1, '2024-06-06 12:38:30'),
(15, 'Apple_01', 52, NULL, NULL, 1, NULL, 1, '2024-06-06 12:47:26'),
(16, '2024_mcl_309437_1', 52, NULL, NULL, 1, NULL, 0, '2024-06-06 12:50:28'),
(17, 'Testing Tender3', 52, NULL, NULL, 1, NULL, 1, '2024-06-06 15:38:59'),
(18, 'Testing Tender3', 52, NULL, NULL, NULL, NULL, 0, '2024-06-06 10:08:59'),
(19, 'rdpr/2024-25/bd/work_indent5837', 52, NULL, NULL, NULL, NULL, 0, '2024-06-10 06:27:24'),
(20, 'kfd/2024-25/ow/work_indent11413', 52, NULL, NULL, NULL, NULL, 0, '2024-06-10 06:28:07'),
(21, '736806', 52, NULL, NULL, 1, NULL, 0, '2024-06-10 13:06:29'),
(22, '736753', 52, NULL, NULL, 1, NULL, 0, '2024-06-10 13:06:44'),
(23, 'Glass007', 52, NULL, NULL, NULL, NULL, 0, '2024-06-10 09:57:56'),
(24, 'Tender10222', 52, NULL, NULL, NULL, NULL, 0, '2024-06-10 09:57:58'),
(25, '2024_mes_656635_1', 52, NULL, NULL, NULL, NULL, 0, '2024-06-10 10:17:06'),
(26, 'gem/2024/b/5028394', 52, NULL, NULL, NULL, NULL, 0, '2024-06-10 10:17:07'),
(27, 'gem/2024/b/5027668', 52, NULL, NULL, NULL, NULL, 0, '2024-06-10 11:09:47'),
(28, 'gem/2024/b/5028708', 52, NULL, NULL, NULL, NULL, 0, '2024-06-10 11:36:20'),
(29, 'gem/2024/b/5028969', 52, NULL, NULL, NULL, NULL, 0, '2024-06-10 11:38:48');

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
  `tender_Ref_No` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tender_corrigendum`
--

INSERT INTO `tender_corrigendum` (`id`, `corrigendum_text`, `date`, `documents`, `new_submission_date`, `created_by`, `create_date_time`, `updated_by`, `update_date_time`, `tender_Ref_No`) VALUES
(125, 'The Indian Premier LeagueThe Indian Premier LeagueThe Indian Premier League', '2024-05-26', '..\\public\\uploads\\Next-Calendar.png', '2024-05-19', 52, '2024-05-27 15:48:14', NULL, NULL, 'KL456'),
(126, 'wsexdrcftvgybhunijmok,pl;', '2024-05-25', '..\\public\\uploads\\Next-chad-montano-MqT0asuoIcU-unsplash.jpg', '2024-05-19', 52, '2024-05-28 12:09:40', NULL, NULL, 'KL456'),
(129, 'this is good', '2024-05-19', '..\\public\\uploads\\Next-Screenshot (320).png', '2024-05-12', 52, '2024-05-30 10:39:44', NULL, NULL, 'KL456'),
(130, 'sdsad', '2024-03-31', '..\\public\\uploads\\Next-Screenshot (320).png', '2024-05-21', 52, '2024-05-30 11:02:59', NULL, NULL, 'KL456'),
(131, 'Corrigendum text', '2024-05-21', '..\\public\\uploads\\Next-63.PNG', '2024-05-26', 52, '2024-05-30 14:24:59', NULL, NULL, 'Apple_01'),
(132, 'corrigendum', '2024-05-30', '..\\public\\uploads\\Next-23.JPG', '2024-05-30', 52, '2024-05-30 15:02:01', NULL, NULL, 'Apple_01'),
(133, 'jfhdkfq', '2024-05-30', '..\\public\\uploads\\Next-23.JPG', '2024-05-30', 52, '2024-05-30 15:18:40', NULL, NULL, 'Apple_01'),
(135, 'efjdfkdkfl', '2024-06-03', '..\\public\\uploads\\Next-chad-montano-MqT0asuoIcU-unsplash.jpg', '2024-06-03', 52, '2024-06-03 11:30:55', NULL, NULL, 'Glass007');

-- --------------------------------------------------------

--
-- Table structure for table `tender_mapped_users`
--

CREATE TABLE `tender_mapped_users` (
  `id` int(11) NOT NULL,
  `tender_Ref_No` varchar(255) DEFAULT NULL,
  `m_user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tender_mapped_users`
--

INSERT INTO `tender_mapped_users` (`id`, `tender_Ref_No`, `m_user_id`) VALUES
(498, 'Glass007', 52),
(499, 'Glass007', 115),
(500, 'Glass007', 117),
(501, 'Glass007', 118),
(502, 'Glass007', 119),
(512, 'KL456', 115),
(513, 'KL456', 117),
(514, 'KL456', 118);

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
  `isCorrigendum` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tender_master`
--

INSERT INTO `tender_master` (`tender_Ref_No`, `tender_ID`, `org_Name`, `tender_Details`, `city`, `state`, `country`, `product_category`, `product`, `procurement_type`, `doc_fees`, `EMD_Fees`, `tender_estimated_cost`, `quantity`, `contact_Person`, `designation`, `email_id`, `phone_no`, `address`, `source`, `tags`, `publication_date`, `submission_date`, `pre_bid_submission_date`, `pre_bid_meeting_date`, `opening_date`, `project_end_date`, `bid_validity_days`, `project_period_months`, `upload_documents`, `stage`, `comments`, `created_by`, `created_date`, `updated_by`, `updated_date`, `user_id`, `f_For_Data`, `isPq`, `isBoq`, `isFreetender`, `isCorrigendum`) VALUES
('Testing Tender3', 111114, 'Annoynomus', 'This is no name company', 'Mumbai', 'Gujarat', 'Nepal', 'NO name', 'Good', 'Buy', 200.00, 20.00, 20.00, 220, 'No Name', 'ctto', 'Dsa@gmail.com', '238728', 'India', 'Internet', 'internet', '2024-05-15', '2024-05-06', '2024-05-17', '2024-05-27', '2024-05-31', '2024-08-19', 20, 2, '..\\public\\uploads\\Next-Screenshot (286).png', NULL, NULL, 52, '2024-05-22 12:45:43', NULL, '2024-06-03 07:55:24', 52, 1, 0, 0, 0, 0),
('KL456', 111116, 'IPL', 'The Indian Premier League', 'Jaipur', 'Maharastra', 'India', 'Cricket', 'Good', 'Rent/Lease', 800.00, 8000.00, 500.00, 500, 'prince', 'ahmedabad', 'prince@gmail.com', '7418529633', 'oiwdewiofiewoereorerioye', 'oidhfodfdhfohf', '#cricket #Laptop #mobile #Iphone', '2024-05-22', '2024-05-06', '2024-05-14', '2024-04-30', '2024-04-29', '2024-06-03', 56, 2, '..\\public\\uploads\\Next-Calendar.png', NULL, NULL, 52, '2024-05-27 10:09:30', NULL, '2024-06-03 07:57:02', 52, 1, 0, 0, 0, 0),
('Apple_01', 111120, 'Updated', 'This is the Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Updated New York', 'Updated New York', 'INDIA', 'Updated Electronics', 'Updated Laptops', 'Updated Open Tender', 200.00, 600.00, 15000.00, 200, 'Chinmay', 'Updated Procurement Manager', 'updated.john.doe@example.com', '123-456-7890', '456 Updated Main Street', 'Updated Online Portal', 'Updated Electronics, Laptops, IT', '2024-03-20', '2024-04-20', '2024-04-05', '2024-04-01', '2024-04-25', '2024-06-05', 45, 4, '/uploads/updated_tender123.pdf', '', 'Updated comments', 52, '2024-05-30 07:17:13', NULL, '2024-06-10 08:46:36', 52, 1, 0, 0, 0, 0),
('6435', 4534543, 'ABC Coasds', 'This is the Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'New York', 'New York', 'USA', 'Electronics', 'Laptops', 'Open Tender', 100.00, 500.00, 10000.00, 100, NULL, 'Procurement Manager', 'man3@gmail.com', '123-456-7890', '123 Main Street', 'Online Portal', 'Electronics, Laptops, IT', '2024-03-15', '2024-04-15', '2024-03-30', '2024-03-25', '2024-04-20', '2024-05-30', 30, 3, '/uploads/tender123.pdfF', '', 'No comments', NULL, '2024-06-06 13:23:16', NULL, '2024-06-10 08:46:52', 52, 0, 0, 0, 0, 0),
('64354', 45345434, 'ABC Coasds', 'This is the Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'New York', 'New York', 'USA', 'Electronics', 'Laptops', 'Open Tender', 100.00, 500.00, 10000.00, 100, NULL, 'Procurement Manager', 'man3@gmail.com', '123-456-7890', '123 Main Street', 'Online Portal', 'Electronics, Laptops, IT', '2024-03-15', '2024-04-15', '2024-03-30', '2024-03-25', '2024-04-20', '2024-05-30', 30, 3, '/uploads/tender123.pdfF', '', 'No comments', NULL, '2024-06-06 13:24:10', NULL, '2024-06-10 08:45:54', 52, 0, 0, 0, 0, 0),
('Tender10222', 72272965, 'MathsAuth', 'tender For Conputers', 'Ahmedabad', 'Gujarat', 'India', 'Computer', 'Good', 'Buy', 99999999.99, 99999999.99, 2000000000.00, 2, 'Gulam', 'Ceo', 'gulam@gmail.com', '298323998', 'Wall street', 'Internet', '#Computer #laptop', '2024-07-01', '2024-07-02', '2024-07-02', '2024-07-03', '2024-07-03', '2026-03-05', 10, 20, '..\\public\\uploads\\Next-Screenshot (316).png', NULL, NULL, 52, '2024-06-01 06:30:54', NULL, '2024-06-01 06:30:54', 52, 1, 0, 0, 0, 0),
('Glass007', 72272966, 'dell', 'dkfdfhkjdfhkjdfhk', 'Amreli', 'Gujarat', 'India', 'udfdfdfh', 'Good', 'Buy', 565.00, 6565.00, 655.00, 6565, 'prince', 'jdfhdj', 'p@gmail.com', '7418529635', 'lkvdfkjhjkhkfhfjkhg', 'jdfhjkdfhdjfjh', '#jfvh #kjvfgh #kdfjdk #jdfd', '2024-06-24', '2024-07-01', '2024-05-27', '2024-06-04', '2024-06-05', '2024-08-04', 30, 1, '..\\public\\uploads\\Next-_public_uploads_Next-23 (1).JPG', NULL, NULL, 52, '2024-06-03 05:56:20', NULL, '2024-06-03 05:56:20', 52, 1, 0, 0, 0, 0);

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
  `tender_Ref_No` varchar(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tender_pq`
--

INSERT INTO `tender_pq` (`id`, `pq_condition`, `pq_status`, `comment`, `upload_doc`, `created_by`, `create_date_time`, `updated_by`, `update_date_time`, `tender_Ref_No`, `user_id`) VALUES
(139, 'condition', 'Noncompliance', 'rrrrrrrrrrrrrrrrrrrrrrr', '', 52, '2024-06-04 10:54:49', NULL, NULL, 'KL456', 52),
(140, 'condition', 'status', 'not complex', '', 52, '2024-06-04 10:55:58', NULL, NULL, '2024_hc_488', 52),
(141, 'condition', 'nothing', '', '..\\public\\uploads\\Next-Result List and Result Details APIs.docx', 52, '2024-06-04 10:56:05', 52, '2024-06-04 14:43:50', 'Glass007', 52),
(142, 'condition', 'nothing', '', '..\\public\\uploads\\Next-Result List and Result Details APIs.docx', 52, '2024-06-04 10:58:37', 52, '2024-06-04 14:43:50', 'Glass007', 52),
(143, 'pen ', 'Compliance', 'pens', '..\\public\\uploads\\Next-davide-cantelli-jpkfc5_d-DI-unsplash.jpg', 52, '2024-06-04 12:01:43', NULL, NULL, '71995', 52),
(144, 'wserddf', 'Compliance', 'jgfghfh', '..\\public\\uploads\\Next-chad-montano-MqT0asuoIcU-unsplash.jpg', 52, '2024-06-06 14:59:34', NULL, NULL, 'KL456', 52),
(145, 'Aadd', 'Compliance', 'Aas', '..\\public\\uploads\\Next-Screenshot (317).png', 52, '2024-06-07 13:02:04', NULL, NULL, '1000418584', 52),
(146, '23sdl', 'Compliance', 'dslsl', '..\\public\\uploads\\Next-Screenshot (317).png', 52, '2024-06-07 14:22:13', NULL, NULL, '1000418584', 52),
(147, 'sdsd', 'Compliance', 'dsds', 'public\\uploads\\Next-Screenshot (317).png', 52, '2024-06-10 13:05:56', NULL, NULL, 'Apple_01', 52),
(148, 'AAshir', 'Non Compliance', 'Aahsir', 'public\\uploads\\Next-Screenshot (317).png', 52, '2024-06-11 16:21:56', NULL, NULL, 'KL456', 52),
(149, 'Man', 'Non Compliance', 'Aashirww', 'public\\uploads\\Next-Screenshot (324).png', 52, '2024-06-11 16:30:11', NULL, NULL, 'Apple_01', 52),
(150, 'sjakjskjdskajsdkj', 'Non Compliance', 'sdsoidpoisadopisad', 'public\\uploads\\Next-Screenshot (321).png', 52, '2024-06-11 16:30:49', NULL, NULL, 'Apple_01', 52);

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
  `p_user` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tender_pre_bid`
--

INSERT INTO `tender_pre_bid` (`id`, `date_and_time`, `company_name`, `page_number`, `paragraph_number`, `paragraph_content`, `question`, `documents`, `status`, `revise_content`, `govt_reply`, `is_doc_paid`, `created_by`, `create_date_time`, `updated_by`, `update_date_time`, `tender_Ref_No`, `by_company`, `p_user`) VALUES
(170, NULL, 'TATA', 6, 10, 'This is not right question', 'where are your building?', '', 'completed', 'Revised content Lorem ipsum dolor sit amet', NULL, NULL, 52, '2024-05-28 12:26:26', NULL, NULL, '111tata', 'self', 'virat'),
(171, NULL, '', 6, 10, 'This is not right question', 'where are your building?', '', 'completed', 'Revised content Lorem ipsum dolor sit amet', NULL, NULL, 52, '2024-05-28 12:26:58', NULL, NULL, '111tata', 'self', 'virat'),
(172, NULL, 'self', 5444, 544, 'eawrtdgioup[]', 'ertrdyugijokpl[', '..\\public\\uploads\\Next-23.JPG', '', NULL, NULL, NULL, 52, '2024-05-28 15:35:19', NULL, NULL, 'TestingTenderNo2', NULL, 'virat'),
(173, NULL, 'fdhfdfk', 86415, 6512, 'rextdcvboijl,', '\';dxgfchbklm;,\'', '..\\public\\uploads\\Next-2.JPG', 'completed', NULL, 'jay', NULL, 52, '2024-05-28 15:36:01', 52, '2024-05-29 16:09:34', 'jay123', NULL, 'virat'),
(174, NULL, 'self', 87, 8778, 'etrdyguoijpk', 'rdtfugyiuoihjpk', '..\\public\\uploads\\Next-23.JPG', 'Approved', NULL, 'HII', NULL, 52, '2024-05-29 11:14:25', 52, '2024-05-31 10:30:03', 'KL456', NULL, 'virat'),
(175, NULL, 'self', 74, 741, 'djfdfh', 'hdjfhdjfdffh', '..\\public\\uploads\\Next-23.JPG', 'Approved', NULL, NULL, NULL, 52, '2024-05-29 11:36:09', NULL, NULL, 'Jay007', NULL, 'virat'),
(176, NULL, NULL, NULL, NULL, NULL, NULL, '', 'completed', NULL, 'kldkjf', NULL, 52, '2024-05-29 11:36:41', NULL, NULL, 'Jay007', NULL, 'virat'),
(177, NULL, 'PVC', 84, 878, '88778q', '84754djkfkfhdkhfkj', '..\\public\\uploads\\Next-2.JPG', '', NULL, NULL, NULL, 52, '2024-05-29 11:37:26', NULL, NULL, 'Jay007', NULL, 'virat'),
(178, NULL, NULL, NULL, NULL, NULL, NULL, '', 'completed', NULL, ',,g,,g,,j,,h,,g,,j', NULL, 52, '2024-05-29 11:48:21', NULL, NULL, 'Jay007', NULL, 'virat'),
(179, NULL, 'TodayUpdate', 6, 10, 'This is not right question', 'where are your building?', '', 'completed', 'Revised content Lorem ipsum dolor sit amet', 'The deadline is extended by one week.', NULL, 52, '2024-05-29 11:50:55', 52, '2024-05-29 12:45:09', '111JIO', NULL, 'virat'),
(180, NULL, 'self', 2147483647, 865, 'HJSKFHDKJHFJ', 'DJFKDFKHFK', '..\\public\\uploads\\Next-23.JPG', '', NULL, NULL, NULL, 52, '2024-05-29 12:27:42', NULL, NULL, 'Jay007', NULL, 'virat'),
(181, NULL, 'self', 89561, 4512, 'sexrdctgbhunij', 'mokewxrtfvhijm', '..\\public\\uploads\\Next-23.JPG', 'Approved', NULL, NULL, NULL, 52, '2024-05-29 16:02:00', NULL, NULL, 'jay123', NULL, 'virat'),
(182, NULL, 'self', 102, 20, 'skjdksj', 'kjsdkj', '..\\public\\uploads\\Next-Screenshot (317).png', 'Approved', NULL, 'aashir', NULL, 52, '2024-05-29 16:08:16', 52, '2024-05-30 10:20:47', 'KL456', NULL, 'virat'),
(183, NULL, 'self', 2, 4, 'Criteria is not proper', 'Enter proper Criteria', '..\\public\\uploads\\Next-67.PNG', 'completed', NULL, 'sds', NULL, 52, '2024-05-29 16:53:41', 52, '2024-05-30 10:10:52', 'TV_001', NULL, 'virat'),
(184, NULL, 'self', 5, 8, 'New Parag', 'Add new value', '..\\public\\uploads\\Next-67.PNG', 'completed', NULL, 'dssada', NULL, 52, '2024-05-29 16:54:53', 52, '2024-05-30 10:10:54', 'TV_001', NULL, 'virat'),
(185, NULL, 'self', 23, 23, '32sdks', 'kjdskjd', '..\\public\\uploads\\Next-Screenshot (320).png', 'Rejected', NULL, 'aasihr', NULL, 52, '2024-05-29 19:20:01', 52, '2024-05-30 10:20:46', 'KL456', NULL, 'virat'),
(186, NULL, 'self', 30, 3, 'sdjkj', 'skjdksjd', '..\\public\\uploads\\Next-Screenshot (320).png', 'completed', NULL, 'dnbdm', NULL, 52, '2024-05-29 19:49:42', 52, '2024-06-11 13:01:02', 'KL456', NULL, 'virat'),
(187, NULL, NULL, NULL, NULL, NULL, NULL, '', 'completed', NULL, 'asdsa', NULL, 52, '2024-05-29 20:06:12', 52, '2024-05-30 10:11:10', 'TV_001', NULL, 'virat'),
(188, NULL, 'self', 20, 20, 'sdskj', 'sdkjs', '..\\public\\uploads\\Next-Screenshot (317).png', 'Approved', NULL, NULL, NULL, 52, '2024-05-30 10:23:52', NULL, NULL, '101TenderTesting', NULL, 'virat'),
(189, NULL, 'self', 9, 5, 'paragraph Content', 'Ask Your Questions', '..\\public\\uploads\\Next-23.JPG', 'completed', NULL, 'pre bid round', NULL, 52, '2024-05-30 14:19:45', 52, '2024-05-30 14:22:02', 'Apple_01', NULL, 'virat'),
(190, NULL, 'self', 5, 55, 'lksddfjjdfdj', 'kljdjdjflkdjj', '..\\public\\uploads\\Next-23.JPG', 'completed', NULL, 'kjdkf', NULL, 52, '2024-05-30 14:59:38', 52, '2024-05-30 15:17:59', 'Apple_01', NULL, 'virat'),
(191, NULL, 'self', 84, 54, '54klsjfdlj', 'jskldjflkjdfjljkd', '..\\public\\uploads\\Next-23.JPG', 'completed', NULL, 'djdf', NULL, 52, '2024-05-30 15:33:48', 52, '2024-05-30 15:34:08', 'MOBILE123', NULL, 'virat'),
(192, NULL, 'self', 2, 22, '2dfjkfhdh', 'kjhfkjghfjk', '..\\public\\uploads\\Next-23.JPG', '', NULL, NULL, NULL, 52, '2024-05-30 17:56:55', NULL, NULL, '101TenderTesting', NULL, 'virat'),
(193, NULL, 'self', 20, 20, 'Computer', 'COmputer specfication?', '..\\public\\uploads\\Next-Screenshot (320).png', 'completed', NULL, '32 gb ram', NULL, 52, '2024-06-01 12:04:46', 52, '2024-06-01 12:08:22', 'Tender10222', NULL, 'virat'),
(194, NULL, 'self', 30, 30, 'Computer ', 'Computer Name', '..\\public\\uploads\\Next-Screenshot (320).png', 'Rejected', NULL, NULL, NULL, 52, '2024-06-01 12:05:25', NULL, NULL, 'Tender10222', NULL, 'virat'),
(195, NULL, 'self', 7878, 787, 'fjkdfhgkfjk', '87877kvmfj', '..\\public\\uploads\\Next-chad-montano-MqT0asuoIcU-unsplash.jpg', 'completed', NULL, 'dgfhdgfdgfh', NULL, 52, '2024-06-03 11:30:22', 52, '2024-06-03 11:30:38', 'Glass007', NULL, 'virat'),
(196, NULL, 'self', 10, 10, 'Pens', 'Pens', '..\\public\\uploads\\Next-Screenshot (320).png', 'completed', NULL, 'Which type of pem', NULL, 120, '2024-06-03 13:45:09', 120, '2024-06-03 13:45:50', 'Bid1012', NULL, 'Admin'),
(197, NULL, 'self', 20, 20, 'penicls', 'penclis', '..\\public\\uploads\\Next-Screenshot (317).png', 'Rejected', NULL, NULL, NULL, 120, '2024-06-03 13:45:29', NULL, NULL, 'Bid1012', NULL, 'Admin'),
(198, NULL, 'Softonic', 20, 20, 'pens company', 'which pens company', '..\\public\\uploads\\Next-Screenshot (317).png', 'Approved', NULL, NULL, NULL, 120, '2024-06-03 13:46:14', NULL, NULL, 'Bid1012', NULL, 'Admin'),
(199, NULL, 'TATA', 6, 10, 'This is not right question', 'where are your building?', '', 'completed', 'Revised content Lorem ipsum dolor sit amet', 'The deadline is extended by one week.', 0, 52, '2024-06-07 14:27:36', NULL, NULL, '5', NULL, 'virat'),
(200, NULL, 'TATA', 6, 10, 'This is not right question', 'where are your building?', '', NULL, NULL, NULL, NULL, 52, '2024-06-07 14:29:32', NULL, NULL, '5', NULL, 'virat'),
(201, NULL, 'self', 23, 23, 'dkjd', 'kdkjs', '..\\public\\uploads\\Next-Screenshot (321).png', 'completed', NULL, 'wewe', NULL, 52, '2024-06-07 14:31:35', 52, '2024-06-07 14:34:07', '1000418584', NULL, 'virat'),
(202, NULL, 'self', 98322, 983298, 'ksjosadas', 'skmdsamd', '..\\public\\uploads\\Next-Screenshot (320).png', 'completed', NULL, 'wwdssdsdsa', NULL, 52, '2024-06-07 14:32:10', 52, '2024-06-07 14:34:35', '1000418584', NULL, 'virat'),
(203, NULL, 'self', 2938, 2398298, 'csajdk', 'sdmsm', '..\\public\\uploads\\Next-Screenshot (320).png', 'Rejected', NULL, NULL, NULL, 52, '2024-06-07 14:32:36', NULL, NULL, '1000418584', NULL, 'virat'),
(204, NULL, 'self', 5614, 5445, ',mvnvjknvjfkn', 'JNJDKJKDFJHNKJ', 'public\\uploads\\Next-Capture.JPG', 'completed', NULL, 'DDHFGFGFJ', NULL, 52, '2024-06-11 15:13:05', 52, '2024-06-11 15:13:39', 'KL456', NULL, 'virat'),
(205, NULL, 'self', 4546, 646, 'kjdhkfjdhgfg', 'hjdhfkdfdj', 'public\\uploads\\Next-Capture.JPG', '', NULL, NULL, NULL, 52, '2024-06-11 15:14:00', NULL, NULL, 'KL456', NULL, 'virat');

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
  `f_amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tender_result`
--

INSERT INTO `tender_result` (`id`, `tender_Ref_No`, `p_Select_Bidder`, `p_Add_Comment`, `p_Qualified_emd`, `p_Qualified_Document`, `t_Select_Bidder`, `t_Qualified`, `t_Add_Comment`, `f_Select_Bidder`, `f_Qualified`, `f_Add_Comment`, `created_By`, `bidder_id`, `f_amount`) VALUES
(180, '2024_mcl_309437_1', '', '', 'false', 'false', '', 'No', '', '41', 'R2', 'sdsd', 52, 41, 23),
(181, '2024_mcl_309437_1', 'rajjj', 'dsasd', 'true', 'true', '42', 'Yes', 'sdsads', '', 'Null', '', 52, 42, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_department`
--

CREATE TABLE `user_department` (
  `id` int(11) NOT NULL,
  `department` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_By` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_department`
--

INSERT INTO `user_department` (`id`, `department`, `description`, `created_By`) VALUES
(101, 'aashir', 'this is aashir', '52'),
(102, 'jay', 'hii ', '52'),
(103, 'chinmay', 'Hello', '52'),
(104, 'admin', 'this is aashir', '52'),
(105, 'admin', 'aashir', '52'),
(106, 'Jay', 'Jay', '84'),
(107, 'admin', 'admin', '52'),
(108, 'Admin', 'Admin', '120'),
(109, 'client', 'client', '120'),
(110, 'financial', 'pen', '123'),
(111, 'aashir', 'aashir', '52'),
(112, '', '', '52'),
(113, 'sds', 'dsds', '52'),
(114, '', '', '125'),
(115, '', '', '125'),
(116, 'aashir', 'aashir', '125');

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
  `update_date_time` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`user_id`, `user_name`, `phone_number`, `email_id`, `role`, `Financial_limit`, `department`, `Emploee_level`, `user_password`, `created_by`, `create_date_time`, `updated_by`, `f_tender`, `f_pq`, `f_pre_bid_round`, `f_corrigendum`, `f_envelope`, `f_payment_envelope`, `f_tender_result`, `f_negotiation`, `f_apo_po`, `f_cms`, `update_date_time`) VALUES
(52, 'virat', '2323232322', 'virat123@gmail.com', 'Admin', '100000', 'IT', 'L1', '$2a$10$ezpAQAgb7jL4mWqA5uphJ.8kjHFqGdmb8TnQapbqbcz3dQpS73/OW', '52', '2024-05-18 08:03:07', NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2024-05-27 07:59:47'),
(115, 'Aashir', '9898985123', 'aashirmansuri256@gmail.com', '', NULL, 'aashir', NULL, '$2a$10$30z8O.SrU2C5gMxfQ0VRruz2cBYYl/uH6.RUJSSSPU0yaSO2Vd06K', '52', '2024-06-01 06:25:23', NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2024-06-01 06:25:23'),
(117, 'Aashir', '2323232322', 'Aashir123@gmail.com', 'Admin', '100000', 'IT', 'L1', '$2a$10$o1DVokyWawrpzmoriIzkf.Gf4MJ3/AMrZs286Sm3maxfrHQe7mE7.', '52', '2024-06-03 05:44:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-03 05:44:07'),
(118, 'jay', '2323232322', 'jay123@gmail.com', 'Admin', '100000', 'IT', 'L1', '$2a$10$P/SsRs72qUeD/qOzhqZQf.p29L9Ll4cELPlqeNjcrGzKRmFa3vp1a', '52', '2024-06-03 05:48:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-03 05:48:34'),
(119, 'raj', '2323232322', 'raj123@gmail.com', 'Admin', '100000', 'IT', 'L1', '$2a$10$hnzYKVM4n/pn2O6.cCCUMeazjUQRkaOPhMNPLVpsvu.bUYF4QPHrS', '52', '2024-06-03 05:48:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-03 05:48:58'),
(120, 'Admin', '3984983498', 'admin@123gmail.com', '', NULL, 'aashir', NULL, '$2a$10$sJXYZdDA/EV/GmjeqbF7tu5kk127XOvA3qpl4NjtBqLn2ArFCIMNS', '52', '2024-06-03 08:07:57', NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2024-06-03 08:07:57'),
(121, 'username1', '98283928', 'username1@gmail.com', '', NULL, 'Admin', NULL, '$2a$10$OX6A.D9SGBKwjwJlS3gpleiaCCusDtqg7Wo6sc32ua4SKB5OUbfyC', '120', '2024-06-03 08:13:42', NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2024-06-03 08:13:42'),
(122, 'username2', '2430923098', 'username2@gmail.com', '', NULL, 'client', NULL, '$2a$10$SVetgneM//SULlA4m9ZwJOEfpkobQ/VAUvYskHHD1dOcWEUgWGhcu', '120', '2024-06-03 08:14:12', NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2024-06-03 08:14:12'),
(123, 'Keyur ', '9638527411', 'keyur@gmail.com', '', NULL, 'jay', NULL, '$2a$10$PLZXiKma/uQQNv3OaJ6DXuGs7el2/WOC3xRpXPU02x1YylVvLTWPu', '52', '2024-06-05 05:02:06', NULL, 1, 1, 1, 0, 0, 0, 1, 1, 1, 0, '2024-06-05 05:02:06'),
(124, '', '', '', '', NULL, '', NULL, '$2a$10$aPNlEteZmlqyz3qjISaIYunWOcKaRktlHBk4IwkQcl0IAv2ePUayu', '52', '2024-06-11 12:11:57', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-11 12:11:57'),
(125, 'aashirmansuri@gmail.com', '989878987', 'aashirmansuri@gmail.com', '', NULL, 'admin', NULL, '$2a$10$XkIkEBkBmk8iK3JxfUnvxO1ZMrNHjrIxMmEZlMHs7KZDu4zFT8XPC', '52', '2024-06-11 12:21:31', NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2024-06-11 12:21:31'),
(126, 'slkdslk', '1320982', 'kjsdkjskj@gmai.con', '', NULL, 'aashir', NULL, '$2a$10$6ro1dUTrYVtV5HEv9phd1OqV0PXN9nee2ruaSoH0OEyconpIxqHpK', '125', '2024-06-11 12:46:20', NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-11 12:46:20'),
(127, 'raj', '2832873', 'raj1@gmail.com', '', NULL, 'aashir', NULL, '$2a$10$ZglINVlKRSz.BqQJpGc/6.YOrQAEEcw.BkaxCb2Tbtk/O/SQAqC7u', '125', '2024-06-12 04:58:47', NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-12 04:58:47'),
(128, 'mansuri', '9843849', 'mansuri@gmail.com', '', NULL, 'aashir', NULL, '$2a$10$z7gyJIN1N11jIGmQuaK1F.HNMauhMQ5ssylPmn8BW.KyIi3yUygKi', '125', '2024-06-12 05:02:25', NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-12 05:02:25');

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
  ADD KEY `c_id` (`c_Id`);

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
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `bid_envelop`
--
ALTER TABLE `bid_envelop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- AUTO_INCREMENT for table `cms`
--
ALTER TABLE `cms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `company_registration`
--
ALTER TABLE `company_registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `make_payment`
--
ALTER TABLE `make_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

--
-- AUTO_INCREMENT for table `negotiation`
--
ALTER TABLE `negotiation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `payment_configurations`
--
ALTER TABLE `payment_configurations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `sub_coment`
--
ALTER TABLE `sub_coment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `tblbidders`
--
ALTER TABLE `tblbidders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tender_corrigendum`
--
ALTER TABLE `tender_corrigendum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `tender_mapped_users`
--
ALTER TABLE `tender_mapped_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=522;

--
-- AUTO_INCREMENT for table `tender_pq`
--
ALTER TABLE `tender_pq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `tender_pre_bid`
--
ALTER TABLE `tender_pre_bid`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;

--
-- AUTO_INCREMENT for table `tender_result`
--
ALTER TABLE `tender_result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

--
-- AUTO_INCREMENT for table `user_department`
--
ALTER TABLE `user_department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `user_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `make_payment`
--
ALTER TABLE `make_payment`
  ADD CONSTRAINT `make_payment_ibfk_1` FOREIGN KEY (`c_id`) REFERENCES `payment_configurations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
