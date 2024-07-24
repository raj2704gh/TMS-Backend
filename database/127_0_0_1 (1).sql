-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2024 at 12:51 PM
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
-- Database: `ams`
--
CREATE DATABASE IF NOT EXISTS `ams` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ams`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminid` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone_no` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminid`, `name`, `password`, `phone_no`, `photo`, `role`) VALUES
(1, 'admin', '123', '1234567890', NULL, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `admin_seq`
--

CREATE TABLE `admin_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_seq`
--

INSERT INTO `admin_seq` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `comission_details`
--

CREATE TABLE `comission_details` (
  `id` int(11) NOT NULL,
  `commission_earned` double DEFAULT NULL,
  `commission_rate` double DEFAULT NULL,
  `date` datetime(6) DEFAULT NULL,
  `payment_received` double DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `sale_status` varchar(255) DEFAULT NULL,
  `transaction_id` int(11) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_role` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comission_details_products`
--

CREATE TABLE `comission_details_products` (
  `comission_details_id` int(11) NOT NULL,
  `products_pid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comission_details_seq`
--

CREATE TABLE `comission_details_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comission_details_seq`
--

INSERT INTO `comission_details_seq` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `comission_details_user`
--

CREATE TABLE `comission_details_user` (
  `comission_details_id` int(11) NOT NULL,
  `user_userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cid` int(11) NOT NULL,
  `customeraddress` varchar(255) DEFAULT NULL,
  `customercityorvillage` varchar(255) DEFAULT NULL,
  `customerdistrict` varchar(255) DEFAULT NULL,
  `customeremail` varchar(255) DEFAULT NULL,
  `customermobile` varchar(255) DEFAULT NULL,
  `customername` varchar(255) DEFAULT NULL,
  `customerstate` varchar(255) DEFAULT NULL,
  `totalspend` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cid`, `customeraddress`, `customercityorvillage`, `customerdistrict`, `customeremail`, `customermobile`, `customername`, `customerstate`, `totalspend`) VALUES
(1, '67, Fjfejfa, sdasd, sd sdsa ', 'REEdwdadas', 'Attili', 'f@bhai.com', '9876543456', 'Fahim Bhai', 'AP', 29363),
(2, 'gdsf fsdfsdfsdfds', 'sdsds', 'Kakching', 'Zee@gmail.com', '8407241888', 'Zeenat Puthawala', 'MN', 38499),
(52, 'maninagar', 'dahod', 'ABD', 'dia@gmail.com', '7483331734', 'dia', 'gujarat', 1200),
(102, 'umjynhbgtvfdcnyhbtgvrfcd', 'fdsfsdf', 'Afzalgarh', 'm@jdas.com', '9876787656', 'Manali', 'UP', 599);

-- --------------------------------------------------------

--
-- Table structure for table `customer_sell`
--

CREATE TABLE `customer_sell` (
  `customer_cid` int(11) NOT NULL,
  `sell_sellid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_seq`
--

CREATE TABLE `customer_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_seq`
--

INSERT INTO `customer_seq` (`next_val`) VALUES
(201);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `my_orderid` bigint(20) NOT NULL,
  `payment_id` varchar(255) DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `remaining_amount` int(11) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `total_amount` int(11) NOT NULL,
  `transaction_amount` varchar(255) DEFAULT NULL,
  `transaction_date_time` datetime(6) DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `transaction_type` varchar(255) DEFAULT NULL,
  `sell_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `pid` int(11) NOT NULL,
  `acomm` double NOT NULL,
  `chcomm` double NOT NULL,
  `cityhcomm` double NOT NULL,
  `dhcomm` double NOT NULL,
  `sacomm` double NOT NULL,
  `stcomm` double NOT NULL,
  `createddate` date DEFAULT NULL,
  `isdisable` bit(1) NOT NULL,
  `pcode` varchar(255) DEFAULT NULL,
  `pdesc` varchar(255) DEFAULT NULL,
  `pfile` varchar(255) DEFAULT NULL,
  `pname` varchar(255) DEFAULT NULL,
  `pphoto` varchar(255) DEFAULT NULL,
  `pprice` bigint(20) DEFAULT NULL,
  `sub_renewal_date` date DEFAULT NULL,
  `sub_renewal_status` varchar(255) DEFAULT NULL,
  `updateddate` date DEFAULT NULL,
  `createdby` int(11) DEFAULT NULL,
  `productcategory_pcid` int(11) DEFAULT NULL,
  `producttype_ptid` int(11) DEFAULT NULL,
  `updatedby` int(11) DEFAULT NULL,
  `isrenewal` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pid`, `acomm`, `chcomm`, `cityhcomm`, `dhcomm`, `sacomm`, `stcomm`, `createddate`, `isdisable`, `pcode`, `pdesc`, `pfile`, `pname`, `pphoto`, `pprice`, `sub_renewal_date`, `sub_renewal_status`, `updateddate`, `createdby`, `productcategory_pcid`, `producttype_ptid`, `updatedby`, `isrenewal`) VALUES
(1, 6.5, 9.4, 4.2, 1.3, 2.5, 7.8, '2024-05-24', b'0', ' IP14P-256-SL', 'Apple iPhone 14 Pro, 256GB, Silver, featuring a 6.1-inch Super Retina XDR display and A15 Bionic chip.', NULL, 'iPhone 14 Pro', NULL, 150000, NULL, NULL, '2024-05-24', 1, 1, 4, 1, b'0'),
(2, 4.7, 4.7, 5.9, 2.4, 5.6, 4.8, '2024-05-24', b'0', 'MDS-SF-WHT-L', ' Men\'s Slim Fit Dress Shirt, White, Size Large, made from 100% cotton, wrinkle-resistant fabric.', NULL, 'Slim Fit Dress Shirt', NULL, 1670, NULL, NULL, '2024-05-24', 1, 2, 52, 1, b'0'),
(3, 6.4, 4.5, 1.5, 8.4, 7.5, 1.2, '2024-05-24', b'0', 'KASM-5QT-RED', ' KitchenAid Artisan Series 5-Quart Stand Mixer, Empire Red, with 10-speed settings and a tilt-head design.', NULL, 'KitchenAid Stand Mixer', NULL, 3500, NULL, NULL, '2024-05-24', 1, 3, 53, 1, b'0'),
(4, 4.1, 4.3, 2.3, 9.4, 5.6, 2.6, '2024-05-24', b'0', 'NHB-WG-50ML', 'Neutrogena Hydro Boost Water Gel, 50ml, oil-free, with hyaluronic acid for intense hydration.', NULL, 'Neutrogena Hydro Boost Water Gel', NULL, 1000, NULL, NULL, '2024-05-24', 1, 4, 54, 1, b'0'),
(5, 7.9, 4.9, 1.4, 6.4, 5.6, 5.8, '2024-05-24', b'0', ' PEL-BK-V2', 'Peloton Bike, Version 2, with a 21.5-inch touchscreen, access to live and on-demand classes.', NULL, 'Peloton Bike', NULL, 250000, NULL, NULL, '2024-05-24', 1, 5, 55, 1, b'0'),
(6, 6.9, 7.5, 4.5, 1.2, 5.7, 4.5, '2024-05-24', b'0', 'WT-FM-TLCAMRY', 'WeatherTech Custom Fit Floor Mats for Toyota Camry, Black, all-weather protection.', NULL, 'WeatherTech Floor Mats', NULL, 850000, NULL, NULL, '2024-05-24', 1, 6, 56, 1, b'0'),
(7, 8.2, 1.4, 6.3, 4.5, 4.5, 8.74, '2024-05-24', b'0', 'IKEA-EKT-3S-GRY', ' IKEA Ektorp 3-Seat Sofa, Gray, with removable and washable covers, durable frame.', NULL, 'IKEA Ektorp Sofa', NULL, 25600, NULL, NULL, '2024-05-24', 1, 7, 57, 1, b'0'),
(8, 8.2, 1.4, 6.3, 4.5, 4.5, 8.7, '2024-05-24', b'0', 'IKEA-EKT-3S-GRY', ' IKEA Ektorp 3-Seat Sofa, Gray, with removable and washable covers, durable frame.', NULL, 'IKEA Ektorp Sofa', NULL, 25600, NULL, NULL, '2024-05-24', 1, 7, 57, 1, b'0'),
(9, 1.5, 4.5, 4.2, 3.2, 6.3, 1.2, '2024-05-24', b'0', 'DOR-NC-11OZ', 'Doritos Nacho Cheese Tortilla Chips, 11oz bag, crispy and cheesy snack perfect for parties.', NULL, ' Doritos Nacho Cheese', NULL, 50, NULL, NULL, '2024-05-24', 1, 8, 58, 1, b'0'),
(10, 2.3, 1.4, 3.2, 3.5, 1.2, 4.3, '2024-05-24', b'0', ' MBP16-512-SL', ' Apple MacBook Pro 16-inch, 512GB SSD, 16GB RAM, Silver, with M1 Pro chip.', NULL, ' MacBook Pro 16\"', NULL, 209900, NULL, NULL, '2024-05-24', 1, 9, 4, 1, b'0'),
(11, 1.8, 3.6, 6.4, 1.4, 1.2, 5.2, '2024-05-24', b'0', 'BQC35II-BLK', ' Bose QuietComfort 35 II Wireless Bluetooth Headphones, Noise-Cancelling, Black.', NULL, 'Bose QuietComfort 35 II', NULL, 29363, NULL, NULL, '2024-05-24', 1, 10, 4, 1, b'0'),
(12, 6.4, 1.2, 1.2, 3.2, 5.3, 5.4, '2024-05-24', b'0', 'WMD-FMD-BLU-M', 'Women\'s Floral Maxi Dress, Blue, Size Medium, lightweight and flowy fabric.', NULL, 'Floral Maxi Dress', NULL, 4999, NULL, NULL, '2024-05-24', 1, 11, 52, 1, b'0'),
(13, 4.1, 1.4, 2.1, 5.2, 3.1, 1.3, '2024-05-24', b'0', ' KS-NSK-WHT-3', 'Kids\' Sneakers, White, Size 3, with cushioned insole and breathable mesh.', NULL, 'Kids\' Sneakers', NULL, 2499, NULL, NULL, '2024-05-24', 1, 12, 52, 1, b'0'),
(14, 1.4, 2.7, 2.5, 2.4, 2.3, 4.3, '2024-05-24', b'0', 'SFD-28CF-SS', 'Samsung 28 cu. ft. French Door Refrigerator, Stainless Steel, with Family Hub.', NULL, 'Samsung French Door Refrigerator', NULL, 159900, NULL, NULL, '2024-05-24', 1, 13, 53, 1, b'0'),
(15, 1.2, 8.1, 4.6, 3.5, 5.8, 4.7, '2024-05-24', b'0', 'LG-FLW-4.5-WHT', 'LG 4.5 cu. ft. Front Load Washer, White, with Steam and TurboWash technology.', NULL, ' LG Front Load Washer', NULL, 74900, NULL, NULL, '2024-05-24', 1, 14, 53, 1, b'0'),
(16, 1.2, 6.2, 0.3, 1.4, 2.8, 5.3, '2024-05-24', b'0', 'MFF-120-NUD', 'Maybelline Fit Me Matte + Poreless Foundation, Shade 120 Classic Ivory, 30ml.', NULL, 'Maybelline Fit Me Foundation', NULL, 599, NULL, NULL, '2024-05-24', 1, 15, 54, 1, b'0'),
(17, 3.2, 3.5, 3.6, 4.2, 1.2, 1.2, '2024-05-24', b'0', 'PPS-MOIST-12OZ', 'Pantene Pro-V Daily Moisture Renewal Shampoo, 12oz, for hydrated and nourished hair.', NULL, 'Pantene Pro-V Shampoo', NULL, 399, NULL, NULL, '2024-05-24', 1, 16, 54, 1, b'0'),
(18, 5.3, 4.5, 6.2, 2.1, 2.4, 1.3, '2024-05-24', b'0', ' CCT-6P-GRN', ' Coleman Sundome 6-Person Camping Tent, Green, with WeatherTec system and large windows.', NULL, ' Coleman Camping Tent', NULL, 11999, NULL, NULL, '2024-05-24', 1, 17, 55, 1, b'0'),
(19, 1.5, 1.2, 6.2, 4.5, 2.3, 9.3, '2024-05-24', b'0', 'NT-TM-2450', 'NordicTrack Commercial 2450 Treadmill, with 14-inch HD touchscreen and iFit membership.', NULL, 'NordicTrack Treadmill', NULL, 229900, NULL, NULL, '2024-05-24', 1, 18, 55, 1, b'0'),
(20, 3.1, 4.6, 2.1, 3.2, 2.5, 4.3, '2024-05-24', b'0', 'MPS4-245-45R18', 'Michelin Pilot Sport 4 Tire, 245/45R18, high-performance summer tire.', NULL, ' Michelin Pilot Sport 4', NULL, 16499, NULL, NULL, '2024-05-24', 1, 19, 56, 1, b'0'),
(52, 2.1, 1.2, 5.1, 6.2, 2.3, 4.112, '2024-05-24', b'0', 'MUW-WAX-48OZ', ' Meguiar\'s Ultimate Wash & Wax, 48oz, cleans and protects car paint.', NULL, 'Meguiar\'s Ultimate Wash & Wax', NULL, 1199, NULL, NULL, '2024-05-24', 1, 20, 56, 1, b'0'),
(53, 1.2, 1.8, 5.3, 6.2, 2.3, 5.4, '2024-05-24', b'0', ' MALM-BF-Q-BLK', 'IKEA Malm Bed Frame, Queen Size, Black, with slatted bed base and storage drawers.', NULL, 'Malm Bed Frame', NULL, 24999, NULL, NULL, '2024-05-24', 1, 52, 57, 1, b'0'),
(54, 1.5, 2.3, 1.6, 1.8, 2.1, 2.1, '2024-05-24', b'0', 'HMA-CHR-BLK', 'Herman Miller Aeron Office Chair, Black, ergonomic design with lumbar support.', NULL, ' Herman Miller Aeron Chair', NULL, 115000, NULL, NULL, '2024-05-24', 1, 53, 57, 1, b'0'),
(55, 2.6, 1.4, 3.1, 5.2, 2.2, 3.1, '2024-05-24', b'0', 'COKE-CLASSIC-12PK', ' Coca-Cola Classic, 12-pack of 12oz cans, refreshing and fizzy soft drink.', NULL, 'Coca-Cola Classic', NULL, 549, NULL, NULL, '2024-05-24', 1, 54, 58, 1, b'0'),
(56, 4.1, 5.2, 3.2, 6.2, 2.1, 1.4, '2024-05-24', b'0', ' KCF-24OZ', 'Kellogg\'s Corn Flakes Cereal, 24oz box, crispy and lightly sweetened flakes.', NULL, ' Kellogg\'s Corn Flakes', NULL, 275, NULL, NULL, '2024-05-24', 1, 55, 58, 1, b'0'),
(57, 1.4, 4.1, 5.3, 2.1, 2.3, 3.2, '2024-05-24', b'0', 'SG-S22U-512-BLK', 'Samsung Galaxy S22 Ultra, 512GB, Phantom Black, with a 6.8-inch Dynamic AMOLED display and S Pen support.', NULL, 'Samsung Galaxy S22 Ultra', NULL, 119999, NULL, NULL, '2024-05-24', 1, 1, 4, 1, b'0'),
(102, 2.5, 1.2, 1.4, 2.1, 2.7, 3.2, '2024-05-24', b'0', 'GP-P6P-256-SLV', 'Google Pixel 6 Pro, 256GB, Silver, featuring a 6.7-inch OLED display and Tensor chip for AI-powered performance.', NULL, 'Google Pixel 6 Pro', NULL, 89999, NULL, NULL, '2024-05-24', 1, 1, 4, 1, b'0'),
(103, 4.2, 3.2, 6.2, 5.2, 2.3, 1.2, '2024-05-24', b'0', 'OBS-CHK-BLU-L', 'Men\'s Oxford Button-Down Shirt, Blue Checkered, Size Large, made from breathable cotton fabric.', NULL, 'Oxford Button-Down Shirt', NULL, 2499, NULL, NULL, '2024-05-24', 1, 2, 52, 1, b'0'),
(104, 5.3, 1.2, 6.1, 2.3, 2.3, 4.2, '2024-05-24', b'0', ' PT-SOL-BLK-M', 'Men\'s Polo T-Shirt, Black, Size Medium, made from soft and stretchy cotton blend fabric.', NULL, ' Polo T-Shirt', NULL, 999, NULL, NULL, '2024-05-24', 1, 2, 52, 1, b'0'),
(105, 3.2, 5.3, 4.5, 6.2, 2.1, 1.4, '2024-05-24', b'0', 'LG-SBS-30CF-SS', ' LG 30 cu. ft. Side-by-Side Refrigerator, Stainless Steel, with InstaView Door-in-Door and Dual Ice Maker.', NULL, ' LG Side-by-Side Refrigerator', NULL, 159990, NULL, NULL, '2024-05-24', 1, 13, 53, 1, b'0'),
(106, 1.3, 1.5, 5.3, 6.2, 1.2, 1.2, '2024-05-24', b'0', 'WH-TF-350L-WHT', 'Whirlpool 350L Top Freezer Refrigerator, White, with Adaptive Intelligence Technology for energy efficiency.', NULL, ' Whirlpool Top Freezer Refrigerator', NULL, 42990, NULL, NULL, '2024-05-24', 1, 13, 53, 1, b'0'),
(107, 1.2, 3.6, 5.1, 2.1, 2.3, 2.4, '2024-05-24', b'0', ' LRPP-EDUO-40ML', ' La Roche-Posay Effaclar Duo, 40ml, a dual-action acne treatment with benzoyl peroxide and lipo hydroxy acid.', NULL, ' La Roche-Posay Effaclar Duo', NULL, 1299, NULL, NULL, '2024-05-24', 1, 4, 54, 1, b'0'),
(108, 3.1, 3.4, 2.4, 2.6, 2.3, 2.1, '2024-05-24', b'0', 'TO-NS-30ML', 'The Ordinary Niacinamide 10% + Zinc 1% Serum, 30ml, helps reduce the appearance of blemishes and congestion.', NULL, 'The Ordinary Niacinamide Serum', NULL, 599, NULL, NULL, '2024-05-24', 1, 4, 54, 1, b'0'),
(109, 2.3, 3.4, 3.2, 5.2, 2.1, 1.2, '2024-05-24', b'0', 'BFG-XTRM-BLK', 'Bowflex Xtreme 2 SE Home Gym, Black, offering over 70 exercises for a full-body workout.', NULL, ' Bowflex Home Gym', NULL, 119999, NULL, NULL, '2024-05-24', 1, 18, 55, 1, b'0'),
(110, 0.6, 1.5, 2.3, 1.2, 0.6, 3.2, '2024-05-24', b'0', ' YM-ECO-GRN', 'Eco-friendly Yoga Mat, Green, made from natural rubber with non-slip surface.', NULL, 'Yoga Mat', NULL, 1499, NULL, NULL, '2024-05-24', 1, 5, 55, 1, b'0'),
(152, 3.8, 1.8, 2.3, 1.8, 5.3, 3.4, '2024-05-24', b'0', 'TH-RB-XXL-BLK', 'Thule Motion XT XXL Roof Box, Black Glossy, spacious cargo box with dual-side opening for easy access.', NULL, 'Thule Roof Box', NULL, 49999, NULL, NULL, '2024-05-24', 1, 6, 56, 1, b'0'),
(153, 1.5, 0.1, 6.3, 1.4, 2.3, 0.2, '2024-05-24', b'0', ' CPH-VENT-BLK', 'Car Vent Phone Holder, Black, compatible with most smartphones and adjustable for optimal viewing angle.', NULL, 'Car Phone Holder', NULL, 499, NULL, NULL, '2024-05-24', 1, 6, 56, 1, b'0'),
(154, 0.5, 0.6, 0.9, 0.45, 0.3, 0.4, '2024-05-24', b'0', 'SS-MOD-GRY', ' Modern Sectional Sofa, Gray, with reversible chaise and linen upholstery.', NULL, 'Sectional Sofa', NULL, 44999, NULL, NULL, '2024-05-24', 1, 7, 57, 1, b'0'),
(155, 1.5, 1.2, 6.3, 1.4, 2.3, 8.2, '2024-05-24', b'0', ' CT-WD-MAP', 'Wooden Coffee Table, Maple Finish, with open shelf for storage and display.', NULL, 'Coffee Table', NULL, 9999, NULL, NULL, '2024-05-24', 1, 7, 57, 1, b'0'),
(202, 0.9, 1.5, 0.5, 3.2, 0.3, 1.5, '2024-05-24', b'0', '22', 'Good Quality in smart phone', NULL, 'Netflix', NULL, 300, NULL, NULL, '2024-05-24', 1, 1, 4, 1, b'0'),
(252, 0.9, 1.5, 0.5, 3.2, 0.3, 1.5, '2024-05-24', b'0', '22', 'Good Quality in picture', NULL, 'Amazon prime', NULL, 300, NULL, NULL, '2024-05-24', 1, 1, 4, 1, b'1'),
(354, 3.4, 3.4, 5.6, 9.8, 1.2, 1.2, '2024-05-24', b'0', 'OCQ2-256GB', 'Oculus Quest 2 is a standalone virtual reality headset that offers immersive gaming and entertainment experiences. ', NULL, 'Oculus Quest 2', NULL, 34999, NULL, NULL, '2024-05-24', 1, 152, 153, 1, b'0');

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `pcid` int(11) NOT NULL,
  `createddate` date DEFAULT NULL,
  `pcatagory` varchar(255) DEFAULT NULL,
  `pcdescription` varchar(255) DEFAULT NULL,
  `unit` int(11) NOT NULL,
  `updateddate` date DEFAULT NULL,
  `createdby` int(11) DEFAULT NULL,
  `producttype_ptid` int(11) DEFAULT NULL,
  `updatedby` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`pcid`, `createddate`, `pcatagory`, `pcdescription`, `unit`, `updateddate`, `createdby`, `producttype_ptid`, `updatedby`) VALUES
(1, '2024-05-24', 'Mobile Phones', '', 0, '2024-05-24', 1, 4, 1),
(2, '2024-05-24', 'Men\'s Shirts', '', 0, '2024-05-24', 1, 52, 1),
(3, '2024-05-24', 'Kitchen Appliances', '', 0, '2024-05-24', 1, 53, 1),
(4, '2024-05-24', 'Skincare', '', 0, '2024-05-24', 1, 54, 1),
(5, '2024-05-24', 'Fitness Equipment', '', 0, '2024-05-24', 1, 55, 1),
(6, '2024-05-24', 'Car Accessories', '', 0, '2024-05-24', 1, 56, 1),
(7, '2024-05-24', 'Living Room Furniture', '', 0, '2024-05-24', 1, 57, 1),
(8, '2024-05-24', 'Snacks', '', 0, '2024-05-24', 1, 58, 1),
(9, '2024-05-24', 'Laptops', '', 0, '2024-05-24', 1, 4, 1),
(10, '2024-05-24', 'Headphones', '', 0, '2024-05-24', 1, 4, 1),
(11, '2024-05-24', 'Women\'s Dresses', '', 0, '2024-05-24', 1, 52, 1),
(12, '2024-05-24', ' Kids\' Shoes', '', 0, '2024-05-24', 1, 52, 1),
(13, '2024-05-24', 'Refrigerators', '', 0, '2024-05-24', 1, 53, 1),
(14, '2024-05-24', 'Washing Machines', '', 0, '2024-05-24', 1, 53, 1),
(15, '2024-05-24', 'Makeup', '', 0, '2024-05-24', 1, 54, 1),
(16, '2024-05-24', 'Haircare', '', 0, '2024-05-24', 1, 54, 1),
(17, '2024-05-24', ' Outdoor Gear', '', 0, '2024-05-24', 1, 55, 1),
(18, '2024-05-24', ' Exercise Machines', '', 0, '2024-05-24', 1, 55, 1),
(19, '2024-05-24', 'Tires', '', 0, '2024-05-24', 1, 56, 1),
(20, '2024-05-24', ' Car Cleaning Products', '', 0, '2024-05-24', 1, 56, 1),
(52, '2024-05-24', 'Bedroom Furniture', '', 0, '2024-05-24', 1, 57, 1),
(53, '2024-05-24', 'Office Furniture', '', 0, '2024-05-24', 1, 57, 1),
(54, '2024-05-24', 'Beverages', '', 0, '2024-05-24', 1, 58, 1),
(55, '2024-05-24', 'Breakfast Foods', '', 0, '2024-05-24', 1, 58, 1),
(152, '2024-05-24', 'Wearable Technology', '', 0, '2024-05-24', 1, 153, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_category_product`
--

CREATE TABLE `product_category_product` (
  `product_category_pcid` int(11) NOT NULL,
  `product_pid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_category_seq`
--

CREATE TABLE `product_category_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_category_seq`
--

INSERT INTO `product_category_seq` (`next_val`) VALUES
(251);

-- --------------------------------------------------------

--
-- Table structure for table `product_seq`
--

CREATE TABLE `product_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_seq`
--

INSERT INTO `product_seq` (`next_val`) VALUES
(451);

-- --------------------------------------------------------

--
-- Table structure for table `product_type`
--

CREATE TABLE `product_type` (
  `ptid` int(11) NOT NULL,
  `createddate` date DEFAULT NULL,
  `ptdescription` varchar(255) DEFAULT NULL,
  `ptype` varchar(255) DEFAULT NULL,
  `updateddate` date DEFAULT NULL,
  `createdby` int(11) DEFAULT NULL,
  `updatedby` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_type`
--

INSERT INTO `product_type` (`ptid`, `createddate`, `ptdescription`, `ptype`, `updateddate`, `createdby`, `updatedby`) VALUES
(4, '2024-05-24', '', 'Electronics', '2024-05-24', 1, 1),
(52, '2024-05-24', '', 'Clothing', '2024-05-24', 1, 1),
(53, '2024-05-24', '', 'Home Appliances', '2024-05-24', 1, 1),
(54, '2024-05-24', '', 'Beauty', '2024-05-24', 1, 1),
(55, '2024-05-24', '', 'Sports Equipment', '2024-05-24', 1, 1),
(56, '2024-05-24', '', 'Automotive', '2024-05-24', 1, 1),
(57, '2024-05-24', '', 'Furniture', '2024-05-24', 1, 1),
(58, '2024-05-24', '', 'Food & Beverage', '2024-05-24', 1, 1),
(153, '2024-05-24', '', 'Gadgets', '2024-05-24', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_type_productcategory`
--

CREATE TABLE `product_type_productcategory` (
  `product_type_ptid` int(11) NOT NULL,
  `productcategory_pcid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_type_seq`
--

CREATE TABLE `product_type_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_type_seq`
--

INSERT INTO `product_type_seq` (`next_val`) VALUES
(251);

-- --------------------------------------------------------

--
-- Table structure for table `promotion`
--

CREATE TABLE `promotion` (
  `id` int(11) NOT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `sale_amount` bigint(20) NOT NULL,
  `units` int(11) NOT NULL,
  `product_category_id` int(11) DEFAULT NULL,
  `sell_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `promotion_criteria`
--

CREATE TABLE `promotion_criteria` (
  `id` int(11) NOT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `sale_amount` double NOT NULL,
  `unit` int(11) NOT NULL,
  `user_role` varchar(255) DEFAULT NULL,
  `pcid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `promotion_criteria_seq`
--

CREATE TABLE `promotion_criteria_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `promotion_criteria_seq`
--

INSERT INTO `promotion_criteria_seq` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `security_questions`
--

CREATE TABLE `security_questions` (
  `qid` int(11) NOT NULL,
  `question` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `security_questions_seq`
--

CREATE TABLE `security_questions_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `security_questions_seq`
--

INSERT INTO `security_questions_seq` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `sell`
--

CREATE TABLE `sell` (
  `sellid` int(11) NOT NULL,
  `acomm` double NOT NULL,
  `chcomm` double NOT NULL,
  `cityhcomm` double NOT NULL,
  `dhcomm` double NOT NULL,
  `productname` varchar(255) DEFAULT NULL,
  `sacomm` double NOT NULL,
  `stcomm` double NOT NULL,
  `saleamount` bigint(20) NOT NULL,
  `total_commission_amount` double NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userrole` varchar(255) DEFAULT NULL,
  `approved_date` date DEFAULT NULL,
  `pid` int(11) NOT NULL,
  `promotion_duration` varchar(255) DEFAULT NULL,
  `promotion_sale_amount` bigint(20) NOT NULL,
  `promotion_target` varchar(255) DEFAULT NULL,
  `promotion_units` int(11) NOT NULL,
  `register_date` date DEFAULT NULL,
  `salestatus` varchar(255) DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `customer` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `productcategory_pcid` int(11) DEFAULT NULL,
  `soldby` int(11) DEFAULT NULL,
  `renewal_status` varchar(255) DEFAULT NULL,
  `renewaldate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sell`
--

INSERT INTO `sell` (`sellid`, `acomm`, `chcomm`, `cityhcomm`, `dhcomm`, `productname`, `sacomm`, `stcomm`, `saleamount`, `total_commission_amount`, `username`, `userrole`, `approved_date`, `pid`, `promotion_duration`, `promotion_sale_amount`, `promotion_target`, `promotion_units`, `register_date`, `salestatus`, `id`, `customer`, `product_id`, `productcategory_pcid`, `soldby`, `renewal_status`, `renewaldate`) VALUES
(1, 52853.4, 105706.8, 187923.2, 41108.2, 'Bose QuietComfort 35 II', 35235.6, 152687.6, 29363, 575514.8, 'manali', 'AGENT', NULL, 11, NULL, 0, NULL, 0, '2024-05-24', 'Pending', NULL, 1, NULL, NULL, 102, NULL, NULL),
(2, 22400, 15750, 5250, 29400, 'KitchenAid Stand Mixer', 26250, 4200, 3500, 103250, 'manali', 'AGENT', NULL, 3, NULL, 0, NULL, 0, '2024-05-24', 'Pending', NULL, 2, NULL, NULL, 102, NULL, NULL),
(52, 270, 450, 150, 960, 'Amazon prime', 90, 450, 300, 2370, 'ruhi', 'AGENT', NULL, 252, NULL, 0, NULL, 0, '2024-05-24', 'Pending', NULL, 52, NULL, NULL, 104, 'Expired', '2024-06-24'),
(252, 118996.59999999999, 118996.59999999999, 195994.4, 342990.2, 'Oculus Quest 2', 41998.799999999996, 41998.799999999996, 34999, 860975.4, 'Dhrumi', 'SUBAGENT', NULL, 354, NULL, 0, NULL, 0, '2024-05-24', 'Pending', NULL, 2, NULL, NULL, 112, 'Ongoing', '2024-05-24'),
(253, 718.8, 3713.8, 179.7, 838.5999999999999, 'Maybelline Fit Me Foundation', 1677.1999999999998, 3174.7, 599, 10302.8, 'manali', 'AGENT', NULL, 16, NULL, 0, NULL, 0, '2024-05-24', 'Pending', NULL, 102, NULL, NULL, 102, 'Ongoing', '2024-05-24');

-- --------------------------------------------------------

--
-- Table structure for table `sell_seq`
--

CREATE TABLE `sell_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sell_seq`
--

INSERT INTO `sell_seq` (`next_val`) VALUES
(351);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userid` int(11) NOT NULL,
  `aadhar` varchar(255) DEFAULT NULL,
  `accountholdername` varchar(255) DEFAULT NULL,
  `accounttype` varchar(255) DEFAULT NULL,
  `bankname` varchar(255) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `ifsccode` varchar(255) DEFAULT NULL,
  `is_amountachived` bit(1) NOT NULL,
  `iskycdone` bit(1) NOT NULL,
  `is_sub_user` bit(1) NOT NULL,
  `manage_by` int(11) NOT NULL,
  `pan` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `total_commission_amount` double NOT NULL,
  `us_disabled` bit(1) NOT NULL,
  `useraddress` varchar(255) DEFAULT NULL,
  `useremail` varchar(255) DEFAULT NULL,
  `usermobile` bigint(20) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userpassword` varchar(255) DEFAULT NULL,
  `userprofile` varchar(255) DEFAULT NULL,
  `account_no` varchar(255) DEFAULT NULL,
  `branchname` varchar(255) DEFAULT NULL,
  `cityorvillage` varchar(255) DEFAULT NULL,
  `createddate` date DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `half_yearly_target` double NOT NULL,
  `is_agent` bit(1) NOT NULL,
  `is_first_time_login` bit(1) NOT NULL,
  `monthly_target` double NOT NULL,
  `quarterly_target` double NOT NULL,
  `role` varchar(255) DEFAULT NULL,
  `target_achived_amount` int(11) DEFAULT NULL,
  `target_amount` int(11) DEFAULT NULL,
  `updateddate` date DEFAULT NULL,
  `yearly_target` double NOT NULL,
  `createdby` int(11) DEFAULT NULL,
  `updatedby` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `aadhar`, `accountholdername`, `accounttype`, `bankname`, `district`, `ifsccode`, `is_amountachived`, `iskycdone`, `is_sub_user`, `manage_by`, `pan`, `state`, `total_commission_amount`, `us_disabled`, `useraddress`, `useremail`, `usermobile`, `username`, `userpassword`, `userprofile`, `account_no`, `branchname`, `cityorvillage`, `createddate`, `dob`, `duration`, `gender`, `half_yearly_target`, `is_agent`, `is_first_time_login`, `monthly_target`, `quarterly_target`, `role`, `target_achived_amount`, `target_amount`, `updateddate`, `yearly_target`, `createdby`, `updatedby`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, b'0', b'0', b'1', 1, NULL, NULL, 0, b'0', NULL, NULL, 8574856975, 'sufiyan', 'f2c37fe0-5868-4f2b-b95f-ebca699874de', NULL, NULL, NULL, NULL, '2024-05-24', NULL, NULL, NULL, 0, b'0', b'1', 0, 0, 'COUNTRYHEAD', NULL, NULL, '2024-05-24', 0, 1, 1),
(2, NULL, NULL, NULL, NULL, NULL, NULL, b'0', b'0', b'1', 1, NULL, NULL, 0, b'0', NULL, NULL, 8574856525, 'Mehmud', 'c9e2ab60-4fe3-424a-85d2-86ac288e44e1', NULL, NULL, NULL, NULL, '2024-05-24', NULL, NULL, NULL, 0, b'0', b'1', 0, 0, 'STATEHEAD', NULL, NULL, '2024-05-24', 0, 1, 1),
(52, NULL, NULL, NULL, NULL, NULL, NULL, b'0', b'0', b'1', 2, NULL, NULL, 0, b'0', NULL, NULL, 3247659861, 'smit', '3f32457b-e691-484e-9875-29b56e022d35', NULL, NULL, NULL, NULL, '2024-05-24', NULL, NULL, NULL, 0, b'0', b'1', 0, 0, 'DISTRICTHEAD', NULL, NULL, '2024-05-24', 0, 1, 1),
(53, NULL, NULL, NULL, NULL, NULL, NULL, b'0', b'0', b'1', 52, NULL, NULL, 0, b'0', NULL, NULL, 6542879201, 'faisal', '8a637f3c-a065-4918-b814-0148bd327496', NULL, NULL, NULL, NULL, '2024-05-24', NULL, NULL, NULL, 0, b'0', b'1', 0, 0, 'CITYHEAD', NULL, NULL, '2024-05-24', 0, 1, 1),
(102, NULL, NULL, NULL, NULL, 'Navi Mumbai', NULL, b'0', b'0', b'1', 53, NULL, 'MH', 0, b'0', '1, Ix iad asdsd jnxsjnas sjda', NULL, 7846904372, 'manali', '$2a$12$I50B/zr38zlLlfCyyp.a1O.Rb7dg1STNWmwx.obFk4gORht25/5B.', NULL, NULL, NULL, 'Mumbai', '2024-05-24', '2001-11-30', NULL, 'female', 0, b'0', b'1', 0, 0, 'AGENT', NULL, NULL, '2024-05-24', 0, 1, 1),
(103, NULL, NULL, NULL, NULL, NULL, NULL, b'0', b'0', b'1', 53, NULL, NULL, 0, b'0', NULL, NULL, 9638017035, 'zeenat', '4ae833a6-3c1e-42e4-b7b3-d416d6f56cc5', NULL, NULL, NULL, NULL, '2024-05-24', NULL, NULL, NULL, 0, b'0', b'1', 0, 0, 'AGENT', NULL, NULL, '2024-05-24', 0, 1, 1),
(104, NULL, NULL, NULL, NULL, NULL, NULL, b'0', b'0', b'1', 53, NULL, NULL, 0, b'0', NULL, NULL, 9673489320, 'ruhi', '9ad0e887-9b69-4b38-a040-532278b8dbd5', NULL, NULL, NULL, NULL, '2024-05-24', NULL, NULL, NULL, 0, b'0', b'1', 0, 0, 'AGENT', NULL, NULL, '2024-05-24', 0, 1, 1),
(105, NULL, NULL, NULL, NULL, NULL, NULL, b'0', b'0', b'1', 102, NULL, NULL, 0, b'0', NULL, NULL, 9987654321, 'manish', '90f28af8-d0c8-45e7-acca-acdb6602e045', NULL, NULL, NULL, NULL, '2024-05-24', NULL, NULL, NULL, 0, b'0', b'1', 0, 0, 'SUBAGENT', NULL, NULL, '2024-05-24', 0, 1, 1),
(106, NULL, NULL, NULL, NULL, NULL, NULL, b'0', b'0', b'1', 102, NULL, NULL, 0, b'0', NULL, NULL, 6543217890, 'pihu', '83e7370b-41e4-428a-acdb-63ee7ae141cb', NULL, NULL, NULL, NULL, '2024-05-24', NULL, NULL, NULL, 0, b'0', b'1', 0, 0, 'SUBAGENT', NULL, NULL, '2024-05-24', 0, 1, 1),
(107, NULL, NULL, NULL, NULL, NULL, NULL, b'0', b'0', b'1', 102, NULL, NULL, 0, b'0', NULL, NULL, 8642137945, 'dia', '1f182344-8273-4ce4-958e-20e8efb61190', NULL, NULL, NULL, NULL, '2024-05-24', NULL, NULL, NULL, 0, b'0', b'1', 0, 0, 'SUBAGENT', NULL, NULL, '2024-05-24', 0, 1, 1),
(108, NULL, NULL, NULL, NULL, NULL, NULL, b'0', b'0', b'1', 103, NULL, NULL, 0, b'0', NULL, NULL, 9745025841, 'Anisha', '1487a089-9266-4c19-917e-a1a8253c163e', NULL, NULL, NULL, NULL, '2024-05-24', NULL, NULL, NULL, 0, b'0', b'1', 0, 0, 'SUBAGENT', NULL, NULL, '2024-05-24', 0, 1, 1),
(109, NULL, NULL, NULL, NULL, NULL, NULL, b'0', b'0', b'1', 103, NULL, NULL, 0, b'0', NULL, NULL, 9476205846, 'Arnav', '797dccf4-947c-4842-96ec-b425f8febe3f', NULL, NULL, NULL, NULL, '2024-05-24', NULL, NULL, NULL, 0, b'0', b'1', 0, 0, 'SUBAGENT', NULL, NULL, '2024-05-24', 0, 1, 1),
(110, NULL, NULL, NULL, NULL, NULL, NULL, b'0', b'0', b'1', 103, NULL, NULL, 0, b'0', NULL, NULL, 0, 'Krishav', '9ab34c08-c987-45eb-a2c9-8e0fa37924ed', NULL, NULL, NULL, NULL, '2024-05-24', NULL, NULL, NULL, 0, b'0', b'1', 0, 0, 'SUBAGENT', NULL, NULL, '2024-05-24', 0, 1, 1),
(111, NULL, NULL, NULL, NULL, NULL, NULL, b'0', b'0', b'1', 103, NULL, NULL, 0, b'0', NULL, NULL, 8642135787, 'Harsh', '2883ba6a-9b44-416d-8da9-502bca472226', NULL, NULL, NULL, NULL, '2024-05-24', NULL, NULL, NULL, 0, b'0', b'1', 0, 0, 'SUBAGENT', NULL, NULL, '2024-05-24', 0, 1, 1),
(112, NULL, NULL, NULL, NULL, NULL, NULL, b'0', b'0', b'1', 104, NULL, NULL, 0, b'0', NULL, NULL, 6734086783, 'Dhrumi', '$2a$12$qQPRgq922FYPFWfL5ad6Z.6uDF3Alrr4/rCSvjNUFiaTOREI37KDm', NULL, NULL, NULL, NULL, '2024-05-24', NULL, NULL, NULL, 0, b'0', b'1', 0, 0, 'SUBAGENT', NULL, NULL, '2024-05-24', 0, 1, 1),
(113, NULL, NULL, NULL, NULL, NULL, NULL, b'0', b'0', b'1', 104, NULL, NULL, 0, b'0', NULL, NULL, 4512962839, 'Khushi', 'c7a73864-e61d-4c7e-a7cd-03f5207f03ed', NULL, NULL, NULL, NULL, '2024-05-24', NULL, NULL, NULL, 0, b'0', b'1', 0, 0, 'SUBAGENT', NULL, NULL, '2024-05-24', 0, 1, 1),
(114, NULL, NULL, NULL, NULL, NULL, NULL, b'0', b'0', b'1', 104, NULL, NULL, 0, b'0', NULL, NULL, 7692604070, 'Darshit', '23c4d45e-ff20-40fb-be3c-9415451c700e', NULL, NULL, NULL, NULL, '2024-05-24', NULL, NULL, NULL, 0, b'0', b'1', 0, 0, 'SUBAGENT', NULL, NULL, '2024-05-24', 0, 1, 1),
(152, NULL, NULL, NULL, NULL, NULL, NULL, b'0', b'0', b'1', 104, NULL, NULL, 0, b'0', NULL, NULL, 9301272839, 'Krunal', '2637a830-ecda-4b15-a84d-14fbfab270b8', NULL, NULL, NULL, NULL, '2024-05-24', NULL, NULL, NULL, 0, b'0', b'1', 0, 0, 'SUBAGENT', NULL, NULL, '2024-05-24', 0, 1, 1),
(153, NULL, NULL, NULL, NULL, 'dahod', NULL, b'0', b'0', b'1', 102, NULL, 'gujrat', 0, b'0', NULL, 'piu@example.com', 1237856456, 'subagent_piu', '72a73be0-4472-4c64-b9d7-639c73f8bbbf', NULL, NULL, NULL, 'dhd', '2024-05-24', NULL, NULL, NULL, 0, b'0', b'1', 0, 0, 'SUBAGENT', NULL, NULL, '2024-05-24', 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_products`
--

CREATE TABLE `user_products` (
  `user_userid` int(11) NOT NULL,
  `products_pid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_seq`
--

CREATE TABLE `user_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_seq`
--

INSERT INTO `user_seq` (`next_val`) VALUES
(251);

-- --------------------------------------------------------

--
-- Table structure for table `withdrawal_request`
--

CREATE TABLE `withdrawal_request` (
  `withdrawal_id` bigint(20) NOT NULL,
  `witdhrawal_date` datetime(6) DEFAULT NULL,
  `amount` double NOT NULL,
  `approved` bit(1) NOT NULL,
  `processed` bit(1) NOT NULL,
  `remaining_amount` double DEFAULT NULL,
  `request_date` datetime(6) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `withdrawal_sequence`
--

CREATE TABLE `withdrawal_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `withdrawal_sequence`
--

INSERT INTO `withdrawal_sequence` (`next_val`) VALUES
(1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminid`);

--
-- Indexes for table `comission_details`
--
ALTER TABLE `comission_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comission_details_products`
--
ALTER TABLE `comission_details_products`
  ADD UNIQUE KEY `UK_hmshjamjwuin3lpahjg91698t` (`products_pid`),
  ADD KEY `FK5l8be4vjdff5pavslt2js3cnm` (`comission_details_id`);

--
-- Indexes for table `comission_details_user`
--
ALTER TABLE `comission_details_user`
  ADD UNIQUE KEY `UK_rdad51aj9rlpms2u2feytfjyi` (`user_userid`),
  ADD KEY `FKaa8c8tt1vvi5jwoudyquimp3t` (`comission_details_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `customer_sell`
--
ALTER TABLE `customer_sell`
  ADD UNIQUE KEY `UK_nihjgii5wwob96msxtepee0va` (`sell_sellid`),
  ADD KEY `FK3p28bi7t0wiyq3h5ag40kh1x3` (`customer_cid`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`my_orderid`),
  ADD KEY `FKa765teyhxiu71l5ee8cwqjpbq` (`sell_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `FKrsua6drbm9gb4h2o148y17t6d` (`createdby`),
  ADD KEY `FKc9evtufukg2o6v5pgab246k04` (`productcategory_pcid`),
  ADD KEY `FKneola93wx99onflab92yae5b` (`producttype_ptid`),
  ADD KEY `FKtayl4imn3g9pbxd3tekdxvwb2` (`updatedby`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`pcid`),
  ADD KEY `FKpvsv6ccf9yf9d8ae7v2a9t9x8` (`createdby`),
  ADD KEY `FK1yjud5tjqpbotqskecjp46wp9` (`producttype_ptid`),
  ADD KEY `FKm5tjr5r4ghdsq4djrpxy5hde8` (`updatedby`);

--
-- Indexes for table `product_category_product`
--
ALTER TABLE `product_category_product`
  ADD UNIQUE KEY `UK_hgwahoe4gtnjocembftd0p4s3` (`product_pid`),
  ADD KEY `FK15kiqd2f274bxsihc2cesam9m` (`product_category_pcid`);

--
-- Indexes for table `product_type`
--
ALTER TABLE `product_type`
  ADD PRIMARY KEY (`ptid`),
  ADD KEY `FKqe7t7uijej67pne7d6ych628s` (`createdby`),
  ADD KEY `FK4hispd109dvubeaf0parhfsgj` (`updatedby`);

--
-- Indexes for table `product_type_productcategory`
--
ALTER TABLE `product_type_productcategory`
  ADD UNIQUE KEY `UK_qvrtdh6ri76xerggo47fc1kyk` (`productcategory_pcid`),
  ADD KEY `FK2rn25ks7b5m2xtfjr3qo8k92a` (`product_type_ptid`);

--
-- Indexes for table `promotion`
--
ALTER TABLE `promotion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKtrgqt29lq408268bh7uib6240` (`product_category_id`),
  ADD KEY `FKfm9o4smtq133fs5ej2vvpomdo` (`sell_id`),
  ADD KEY `FK95xgdswnun8rx47fp3gf1qbd5` (`user_id`);

--
-- Indexes for table `promotion_criteria`
--
ALTER TABLE `promotion_criteria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKhdndtww7ih5dvprusd56qhq0r` (`pcid`);

--
-- Indexes for table `security_questions`
--
ALTER TABLE `security_questions`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `sell`
--
ALTER TABLE `sell`
  ADD PRIMARY KEY (`sellid`),
  ADD KEY `FKgv6ydsyu9gjky5fw3ms4v2eaw` (`id`),
  ADD KEY `FKg91k6x5cgx6ale3voanfkybof` (`customer`),
  ADD KEY `FK7ofn7rvyyiu5qj8sddnp06dwn` (`product_id`),
  ADD KEY `FK21tmn94402kqkv447pui1gc15` (`productcategory_pcid`),
  ADD KEY `FKj00gykx688ylgu3kv5ogidhct` (`soldby`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `UK_e2k9hco6ul9howd4mmvxnfyvy` (`usermobile`),
  ADD KEY `FKrs938lwpr2d6kp84sb0rqf2as` (`createdby`),
  ADD KEY `FKc9asfhd8aqoi0n5odeiayvmgu` (`updatedby`);

--
-- Indexes for table `user_products`
--
ALTER TABLE `user_products`
  ADD UNIQUE KEY `UK_dl37e326gqskui2st3arpxsod` (`products_pid`),
  ADD KEY `FKs93vumcq1225dedtscylinlxd` (`user_userid`);

--
-- Indexes for table `withdrawal_request`
--
ALTER TABLE `withdrawal_request`
  ADD PRIMARY KEY (`withdrawal_id`),
  ADD KEY `FK9rfwkac994x0ewiql7o8udm58` (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `my_orderid` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `promotion`
--
ALTER TABLE `promotion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comission_details_products`
--
ALTER TABLE `comission_details_products`
  ADD CONSTRAINT `FK5l8be4vjdff5pavslt2js3cnm` FOREIGN KEY (`comission_details_id`) REFERENCES `comission_details` (`id`),
  ADD CONSTRAINT `FKs9nr87rnqi9xe46hc6cavhjgm` FOREIGN KEY (`products_pid`) REFERENCES `product` (`pid`);

--
-- Constraints for table `comission_details_user`
--
ALTER TABLE `comission_details_user`
  ADD CONSTRAINT `FK6hbc49ukrm94aqbki52tcbxp` FOREIGN KEY (`user_userid`) REFERENCES `user` (`userid`),
  ADD CONSTRAINT `FKaa8c8tt1vvi5jwoudyquimp3t` FOREIGN KEY (`comission_details_id`) REFERENCES `comission_details` (`id`);

--
-- Constraints for table `customer_sell`
--
ALTER TABLE `customer_sell`
  ADD CONSTRAINT `FK30ymqla4grnb4o2yi8hcktj2f` FOREIGN KEY (`sell_sellid`) REFERENCES `sell` (`sellid`),
  ADD CONSTRAINT `FK3p28bi7t0wiyq3h5ag40kh1x3` FOREIGN KEY (`customer_cid`) REFERENCES `customer` (`cid`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `FKa765teyhxiu71l5ee8cwqjpbq` FOREIGN KEY (`sell_id`) REFERENCES `sell` (`sellid`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FKc9evtufukg2o6v5pgab246k04` FOREIGN KEY (`productcategory_pcid`) REFERENCES `product_category` (`pcid`),
  ADD CONSTRAINT `FKneola93wx99onflab92yae5b` FOREIGN KEY (`producttype_ptid`) REFERENCES `product_type` (`ptid`),
  ADD CONSTRAINT `FKrsua6drbm9gb4h2o148y17t6d` FOREIGN KEY (`createdby`) REFERENCES `admin` (`adminid`),
  ADD CONSTRAINT `FKtayl4imn3g9pbxd3tekdxvwb2` FOREIGN KEY (`updatedby`) REFERENCES `admin` (`adminid`);

--
-- Constraints for table `product_category`
--
ALTER TABLE `product_category`
  ADD CONSTRAINT `FK1yjud5tjqpbotqskecjp46wp9` FOREIGN KEY (`producttype_ptid`) REFERENCES `product_type` (`ptid`),
  ADD CONSTRAINT `FKm5tjr5r4ghdsq4djrpxy5hde8` FOREIGN KEY (`updatedby`) REFERENCES `admin` (`adminid`),
  ADD CONSTRAINT `FKpvsv6ccf9yf9d8ae7v2a9t9x8` FOREIGN KEY (`createdby`) REFERENCES `admin` (`adminid`);

--
-- Constraints for table `product_category_product`
--
ALTER TABLE `product_category_product`
  ADD CONSTRAINT `FK15kiqd2f274bxsihc2cesam9m` FOREIGN KEY (`product_category_pcid`) REFERENCES `product_category` (`pcid`),
  ADD CONSTRAINT `FKfgjdop0ub2tjob624dlljapsg` FOREIGN KEY (`product_pid`) REFERENCES `product` (`pid`);

--
-- Constraints for table `product_type`
--
ALTER TABLE `product_type`
  ADD CONSTRAINT `FK4hispd109dvubeaf0parhfsgj` FOREIGN KEY (`updatedby`) REFERENCES `admin` (`adminid`),
  ADD CONSTRAINT `FKqe7t7uijej67pne7d6ych628s` FOREIGN KEY (`createdby`) REFERENCES `admin` (`adminid`);

--
-- Constraints for table `product_type_productcategory`
--
ALTER TABLE `product_type_productcategory`
  ADD CONSTRAINT `FK1p2kaf1duod722fbfjyncwnn4` FOREIGN KEY (`productcategory_pcid`) REFERENCES `product_category` (`pcid`),
  ADD CONSTRAINT `FK2rn25ks7b5m2xtfjr3qo8k92a` FOREIGN KEY (`product_type_ptid`) REFERENCES `product_type` (`ptid`);

--
-- Constraints for table `promotion`
--
ALTER TABLE `promotion`
  ADD CONSTRAINT `FK95xgdswnun8rx47fp3gf1qbd5` FOREIGN KEY (`user_id`) REFERENCES `user` (`userid`),
  ADD CONSTRAINT `FKfm9o4smtq133fs5ej2vvpomdo` FOREIGN KEY (`sell_id`) REFERENCES `sell` (`sellid`),
  ADD CONSTRAINT `FKtrgqt29lq408268bh7uib6240` FOREIGN KEY (`product_category_id`) REFERENCES `product_category` (`pcid`);

--
-- Constraints for table `promotion_criteria`
--
ALTER TABLE `promotion_criteria`
  ADD CONSTRAINT `FKhdndtww7ih5dvprusd56qhq0r` FOREIGN KEY (`pcid`) REFERENCES `product_category` (`pcid`);

--
-- Constraints for table `sell`
--
ALTER TABLE `sell`
  ADD CONSTRAINT `FK21tmn94402kqkv447pui1gc15` FOREIGN KEY (`productcategory_pcid`) REFERENCES `product_category` (`pcid`),
  ADD CONSTRAINT `FK7ofn7rvyyiu5qj8sddnp06dwn` FOREIGN KEY (`product_id`) REFERENCES `product` (`pid`),
  ADD CONSTRAINT `FKg91k6x5cgx6ale3voanfkybof` FOREIGN KEY (`customer`) REFERENCES `customer` (`cid`),
  ADD CONSTRAINT `FKgv6ydsyu9gjky5fw3ms4v2eaw` FOREIGN KEY (`id`) REFERENCES `comission_details` (`id`),
  ADD CONSTRAINT `FKj00gykx688ylgu3kv5ogidhct` FOREIGN KEY (`soldby`) REFERENCES `user` (`userid`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `FKc9asfhd8aqoi0n5odeiayvmgu` FOREIGN KEY (`updatedby`) REFERENCES `admin` (`adminid`),
  ADD CONSTRAINT `FKrs938lwpr2d6kp84sb0rqf2as` FOREIGN KEY (`createdby`) REFERENCES `admin` (`adminid`);

--
-- Constraints for table `user_products`
--
ALTER TABLE `user_products`
  ADD CONSTRAINT `FK5d6fb5307bck5t5flvsbeww5q` FOREIGN KEY (`products_pid`) REFERENCES `product` (`pid`),
  ADD CONSTRAINT `FKs93vumcq1225dedtscylinlxd` FOREIGN KEY (`user_userid`) REFERENCES `user` (`userid`);

--
-- Constraints for table `withdrawal_request`
--
ALTER TABLE `withdrawal_request`
  ADD CONSTRAINT `FK9rfwkac994x0ewiql7o8udm58` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`);
--
-- Database: `new`
--
CREATE DATABASE IF NOT EXISTS `new` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `new`;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Dumping data for table `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"snap_to_grid\":\"off\",\"angular_direct\":\"direct\",\"relation_lines\":\"true\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Dumping data for table `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'table', 'TMS', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"allrows\":\"1\",\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@TABLE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_columns\":\"something\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"csv_removeCRLF\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"tms1\",\"table\":\"library_of_document\"},{\"db\":\"tms1\",\"table\":\"make_payment\"},{\"db\":\"tms1\",\"table\":\"payment_configurations\"},{\"db\":\"tms1\",\"table\":\"tender_mapped_users\"},{\"db\":\"tms1\",\"table\":\"tender_corrigendum\"},{\"db\":\"tms1\",\"table\":\"tender_actions\"},{\"db\":\"tms1\",\"table\":\"tender_master\"},{\"db\":\"tms1\",\"table\":\"tender_pre_bid\"},{\"db\":\"tms1\",\"table\":\"user_details\"},{\"db\":\"tms1\",\"table\":\"tender_result\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2024-06-18 07:51:14', '{\"Console\\/Mode\":\"show\",\"ThemeDefault\":\"blueberry\",\"Console\\/Height\":-0.008420000000000094}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `teachercrud`
--
CREATE DATABASE IF NOT EXISTS `teachercrud` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `teachercrud`;

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id`, `name`, `subject`) VALUES
(1, 'teacher 1', 'subject 1'),
(2, 'teacher 2', 'subject 2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `tms`
--
CREATE DATABASE IF NOT EXISTS `tms` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `tms`;

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
  `company_Id` varchar(255) DEFAULT NULL,
  `created_By` varchar(255) NOT NULL
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
  `po_Apo_D` datetime NOT NULL,
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
  `department` varchar(255) NOT NULL,
  `select_Mapped_User_Id` int(11) DEFAULT NULL,
  `comment` varchar(255) NOT NULL,
  `annexure_Submittion_DT` datetime DEFAULT NULL,
  `created_By` varchar(255) NOT NULL,
  `fill_Comment` varchar(255) NOT NULL,
  `fill_Date_Time_Upload` varchar(255) DEFAULT current_timestamp(),
  `fill_Upload_Annexure` varchar(255) DEFAULT NULL,
  `company_Id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blacklisted_tokens`
--

CREATE TABLE `blacklisted_tokens` (
  `id` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `invalidated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `company_Id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `expiry_date` datetime DEFAULT NULL,
  `subscription_date` datetime DEFAULT NULL,
  `subscription_plan` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `transaction_Date` datetime DEFAULT NULL,
  `Date` date NOT NULL,
  `comment` text DEFAULT NULL,
  `c_Id` int(11) NOT NULL,
  `created_By` int(11) DEFAULT NULL,
  `upload_document` varchar(255) DEFAULT NULL,
  `company_Id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `phone_number` varchar(10) NOT NULL,
  `email_id` varchar(255) NOT NULL,
  `role` varchar(255) DEFAULT NULL,
  `Financial_limit` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `Emploee_level` varchar(255) DEFAULT NULL,
  `user_password` varchar(255) NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `create_date_time` datetime DEFAULT NULL,
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
  `update_date_time` datetime DEFAULT NULL,
  `company_Id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  ADD PRIMARY KEY (`id`,`token`);

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
-- Indexes for table `library_of_document`
--
ALTER TABLE `library_of_document`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_Id` (`user_Id`);

--
-- Indexes for table `make_payment`
--
ALTER TABLE `make_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `c_Id` (`c_Id`);

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
-- Indexes for table `technical_qualified`
--
ALTER TABLE `technical_qualified`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tender_pq`
--
ALTER TABLE `tender_pq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tender_result`
--
ALTER TABLE `tender_result`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `add_role`
--
ALTER TABLE `add_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `apo_po`
--
ALTER TABLE `apo_po`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bid_envelop`
--
ALTER TABLE `bid_envelop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blacklisted_tokens`
--
ALTER TABLE `blacklisted_tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms`
--
ALTER TABLE `cms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `company_registration`
--
ALTER TABLE `company_registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `financial_limit`
--
ALTER TABLE `financial_limit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `library_of_document`
--
ALTER TABLE `library_of_document`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `make_payment`
--
ALTER TABLE `make_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `negotiation`
--
ALTER TABLE `negotiation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_configurations`
--
ALTER TABLE `payment_configurations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_qualified`
--
ALTER TABLE `payment_qualified`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pq_sub_comment`
--
ALTER TABLE `pq_sub_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `source`
--
ALTER TABLE `source`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_coment`
--
ALTER TABLE `sub_coment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblbidders`
--
ALTER TABLE `tblbidders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `technical_qualified`
--
ALTER TABLE `technical_qualified`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tender_pq`
--
ALTER TABLE `tender_pq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tender_result`
--
ALTER TABLE `tender_result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_department`
--
ALTER TABLE `user_department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `library_of_document`
--
ALTER TABLE `library_of_document`
  ADD CONSTRAINT `library_of_document_ibfk_1` FOREIGN KEY (`user_Id`) REFERENCES `user_details` (`user_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `make_payment`
--
ALTER TABLE `make_payment`
  ADD CONSTRAINT `make_payment_ibfk_1` FOREIGN KEY (`c_Id`) REFERENCES `payment_configurations` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `sub_coment`
--
ALTER TABLE `sub_coment`
  ADD CONSTRAINT `sub_coment_ibfk_1` FOREIGN KEY (`q_Id`) REFERENCES `tender_pq` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
