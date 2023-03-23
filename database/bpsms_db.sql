-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2023 at 04:28 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bpsms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand_list`
--

CREATE TABLE `brand_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `image_path` text NOT NULL,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `brand_list`
--

INSERT INTO `brand_list` (`id`, `name`, `image_path`, `delete_flag`, `status`, `date_created`, `date_updated`) VALUES
(1, 'Health', 'uploads/products/alka.jpeg', 0, 1, '2022-01-21 10:03:12', '2023-03-05 18:17:32'),
(2, 'Cleaning Products\r\n', 'uploads/products/tylen.png', 0, 1, '2022-01-21 10:10:24', '2023-03-05 18:17:46'),
(3, 'Confectionery', 'uploads/brands/3.png?v=1642731467', 0, 1, '2022-01-21 10:17:47', '2023-03-05 18:19:12'),
(4, 'Deli Supplies', 'uploads/brands/4.png?v=1642731495', 0, 1, '2022-01-21 10:18:15', '2023-03-05 18:20:23');

-- --------------------------------------------------------

--
-- Table structure for table `cart_list`
--

CREATE TABLE `cart_list` (
  `id` int(30) NOT NULL,
  `client_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `quantity` float NOT NULL,
  `date_added` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart_list`
--

INSERT INTO `cart_list` (`id`, `client_id`, `product_id`, `quantity`, `date_added`) VALUES
(19, 4, 1, 1, '2023-03-07 19:00:54'),
(20, 5, 30, 1, '2023-03-11 19:58:29'),
(21, 5, 55, 2, '2023-03-11 20:26:13');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(30) NOT NULL,
  `category` varchar(250) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `status`, `delete_flag`, `date_created`) VALUES
(1, 'Health\r\n', 1, 0, '2021-09-30 09:42:40'),
(2, 'Cleaning Products', 1, 0, '2021-09-30 09:43:00'),
(3, 'Deli Items', 1, 0, '2021-09-30 09:43:48');

-- --------------------------------------------------------

--
-- Table structure for table `client_list`
--

CREATE TABLE `client_list` (
  `id` int(30) NOT NULL,
  `firstname` text NOT NULL,
  `middlename` text DEFAULT NULL,
  `lastname` text NOT NULL,
  `gender` text NOT NULL,
  `contact` text NOT NULL,
  `address` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_added` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `client_list`
--

INSERT INTO `client_list` (`id`, `firstname`, `middlename`, `lastname`, `gender`, `contact`, `address`, `email`, `password`, `status`, `delete_flag`, `date_created`, `date_added`) VALUES
(1, 'John', 'D', 'Smith', 'Male', '09123456897', 'This is my sample address only', 'jsmith@sample.com', '1254737c076cf867dc53d60a0364f38e', 1, 1, '2022-01-24 13:33:44', '2023-03-05 18:15:21'),
(2, '777777777777777777', '', 'Male', '', '666666666', '5666666666', '444444444444444444444@22222222222222', 'bbb20a288d0399886e7d1190bde45bfd', 1, 1, '2023-03-05 12:13:09', '2023-03-05 18:15:18'),
(3, 'Yusif', '', 'Male', '', '3472001631', '2222', 'cool@gmail.com', 'e6f564880ad187e377d8616d47bb208e', 1, 0, '2023-03-05 14:48:35', NULL),
(4, 'Yusif', '', 'Male', '', '3472001631', '671', 'yusifesa7@gmail.com', '36fa916a9224e7c753a98558f5af3e73', 1, 0, '2023-03-06 20:25:29', NULL),
(5, 'yusYus1', '', 'Male', '', '7777777777777777777', '', 'matari@onlinecmail.com', '2e317ebd279288ad685570b2213838ed', 1, 0, '2023-03-11 19:56:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mechanics_list`
--

CREATE TABLE `mechanics_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `contact` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(30) NOT NULL,
  `order_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `quantity` float NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `quantity`, `date_added`) VALUES
(8, 6, 1, 1, '2022-01-24 16:37:18'),
(13, 9, 1, 1, '2023-03-05 14:49:21'),
(14, 10, 1, 1, '2023-03-06 20:26:21'),
(15, 11, 1, 2, '2023-03-07 18:56:31');

-- --------------------------------------------------------

--
-- Table structure for table `order_list`
--

CREATE TABLE `order_list` (
  `id` int(30) NOT NULL,
  `ref_code` varchar(100) NOT NULL,
  `client_id` int(30) NOT NULL,
  `total_amount` float NOT NULL DEFAULT 0,
  `delivery_address` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=pending,1 = packed, 2 = for delivery, 3 = on the way, 4 = delivered, 5=cancelled',
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_list`
--

INSERT INTO `order_list` (`id`, `ref_code`, `client_id`, `total_amount`, `delivery_address`, `status`, `date_created`, `date_updated`) VALUES
(6, '202201-00001', 1, 11500, 'This is my sample address only', 5, '2022-01-24 16:37:18', '2022-01-24 17:09:42'),
(7, '202201-00002', 1, 11080, 'This is my sample address only', 2, '2022-01-25 10:43:19', '2022-01-25 10:58:04'),
(9, '202303-00001', 3, 1111110, '2222', 5, '2023-03-05 14:49:21', '2023-03-05 14:49:28'),
(10, '202303-00002', 4, 1111110, '671', 5, '2023-03-06 20:26:21', '2023-03-06 20:35:30'),
(11, '202303-00003', 4, 2222220, '671', 0, '2023-03-07 18:56:31', '2023-03-07 18:56:31'),
(12, '202303-00004', 4, 0, '671', 0, '2023-03-07 18:56:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_list`
--

CREATE TABLE `product_list` (
  `id` int(30) NOT NULL,
  `brand_id` int(30) NOT NULL,
  `category_id` int(30) NOT NULL,
  `name` text NOT NULL,
  `models` text NOT NULL,
  `description` text NOT NULL,
  `price` float NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `image_path` text NOT NULL,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_list`
--

INSERT INTO `product_list` (`id`, `brand_id`, `category_id`, `name`, `models`, `description`, `price`, `status`, `image_path`, `delete_flag`, `date_created`, `date_updated`) VALUES
(1, 1, 3, 'Phillips Milk of Magnesium', 'Nmax V2', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;br&gt;&lt;/p&gt;', 1111110, 1, 'uploads/products/58.png', 0, '2022-01-21 11:20:27', '2023-03-06 18:34:33'),
(6, 1, 3, 'Advil Sinus 50 CT', 'Nmax V2', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;br&gt;&lt;/p&gt;', 8.99, 1, 'uploads/products/prd23.jpeg', 0, '2022-01-21 11:20:27', '2023-03-05 21:23:05'),
(7, 1, 3, 'Advil Allergy', 'Nmax V2', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;br&gt;&lt;/p&gt;', 8.99, 1, 'uploads/products/21.jpeg', 0, '2022-01-21 11:20:27', '2023-03-05 21:17:08'),
(8, 1, 3, 'Alka-Seltzer 116s', 'Nmax V2', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;br&gt;&lt;/p&gt;', 8.99, 1, 'uploads/products/40.png', 0, '2022-01-21 11:20:27', '2023-03-06 15:42:35'),
(9, 1, 3, 'Advil 50CT', 'Nmax V2', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;br&gt;&lt;/p&gt;', 9.99, 1, 'uploads/products/prd16.jpeg', 0, '2022-01-21 11:20:27', '2023-03-05 21:05:01'),
(10, 1, 3, 'Advil PM 50CT', 'Nmax V2', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;br&gt;&lt;/p&gt;', 8.99, 1, 'uploads/products/prd15.jpeg', 0, '2022-01-21 11:20:27', '2023-03-05 21:03:42'),
(11, 1, 3, 'Bayer 50CT', 'Nmax V2', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;br&gt;&lt;/p&gt;', 8.99, 1, 'uploads/products/prd33.jpeg', 0, '2022-01-21 11:20:27', '2023-03-06 15:17:40'),
(12, 1, 3, 'Benadryl 60CT', 'Nmax V2', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;br&gt;&lt;/p&gt;', 8.99, 1, 'uploads/products/47.png', 0, '2022-01-21 11:20:27', '2023-03-06 15:52:37'),
(13, 1, 3, 'Benadryl 25CT', 'Nmax V2', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;br&gt;&lt;/p&gt;', 8.99, 1, 'uploads/products/52.png', 0, '2022-01-21 11:20:27', '2023-03-06 16:04:43'),
(14, 1, 3, 'BC Powder LG 6 pack 24CT', 'Nmax V2', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;br&gt;&lt;/p&gt;', 8.99, 1, 'uploads/products/prd26.jpeg', 0, '2022-01-21 11:20:27', '2023-03-05 21:30:08'),
(15, 1, 3, 'BC Powder LG 2 pack 36CT', 'Nmax V2', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;br&gt;&lt;/p&gt;', 8.99, 1, 'uploads/products/43.png', 0, '2022-01-21 11:20:27', '2023-03-06 15:45:24'),
(16, 1, 3, 'Excedrin Migraine', 'Nmax V2', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;br&gt;&lt;/p&gt;', 8.99, 1, 'uploads/products/54.png', 0, '2022-01-21 11:20:27', '2023-03-06 16:07:13'),
(17, 1, 3, 'Flanax 20CT', 'Nmax V2', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;br&gt;&lt;/p&gt;', 8.99, 1, 'uploads/products/prd32.png', 0, '2022-01-21 11:20:27', '2023-03-06 15:15:43'),
(18, 1, 3, 'Hangover Helper', 'Nmax V2', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;br&gt;&lt;/p&gt;', 8.99, 1, 'uploads/products/prd10.png', 0, '2022-01-21 11:20:27', '2023-03-05 20:38:22'),
(19, 1, 3, 'Alka-Seltzer Cold Plus', 'Nmax V2', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;br&gt;&lt;/p&gt;', 1111110, 1, 'uploads/products/11.png', 0, '2022-01-21 11:20:27', '2023-03-05 18:13:54'),
(20, 1, 3, 'Excedrin Extra Strength', 'Nmax V2', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;br&gt;&lt;/p&gt;', 8.99, 1, 'uploads/products/55.png', 0, '2022-01-21 11:20:27', '2023-03-06 16:13:48'),
(21, 1, 3, 'Midol 25CT', 'Nmax V2', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;br&gt;&lt;/p&gt;', 8.99, 1, 'uploads/products/51.png', 0, '2022-01-21 11:20:27', '2023-03-06 16:02:40'),
(22, 1, 3, 'Motrin 50CT', 'Nmax V2', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;br&gt;&lt;/p&gt;', 8.99, 1, 'uploads/products/53.png', 0, '2022-01-21 11:20:27', '2023-03-06 16:05:41'),
(23, 1, 3, 'NyQuil 32CT', 'Nmax V2', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;br&gt;&lt;/p&gt;', 8.99, 1, 'uploads/products/37.png', 0, '2022-01-21 11:20:27', '2023-03-06 15:21:25'),
(24, 1, 3, 'DayQuil 32CT', 'Nmax V2', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;br&gt;&lt;/p&gt;', 8.99, 1, 'uploads/products/38.png', 0, '2022-01-21 11:20:27', '2023-03-06 15:22:17'),
(25, 1, 3, 'Mucinex DM 20CT', 'Nmax V2', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;br&gt;&lt;/p&gt;', 8.99, 1, 'uploads/products/46.png', 0, '2022-01-21 11:20:27', '2023-03-06 15:51:26'),
(26, 1, 3, 'Anti-Diarrheal compare to Imodium A-D', 'Nmax V2', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;br&gt;&lt;/p&gt;', 8.99, 1, 'uploads/products/prd12.jpg', 0, '2022-01-21 11:20:27', '2023-03-05 20:53:35'),
(27, 1, 3, 'Claritin', 'Nmax V2', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;br&gt;&lt;/p&gt;', 8.99, 1, 'uploads/products/prd30.jpeg', 0, '2022-01-21 11:20:27', '2023-03-06 15:10:06'),
(28, 1, 3, 'Advil Liqui-Gels 50CT', 'Nmax V2', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;br&gt;&lt;/p&gt;', 8.99, 1, 'uploads/products/prd18.jpeg', 0, '2022-01-21 11:20:27', '2023-03-05 21:09:47'),
(29, 1, 3, 'Stomach Relief Generic Imodium ', 'Nmax V2', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;br&gt;&lt;/p&gt;', 8.99, 1, 'uploads/products/prd29.png', 0, '2022-01-21 11:20:27', '2023-03-06 15:07:55'),
(30, 1, 3, 'Pepcid Complete', 'Nmax V2', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;br&gt;&lt;/p&gt;', 8.99, 1, 'uploads/products/56.png', 0, '2022-01-21 11:20:27', '2023-03-06 16:16:50'),
(31, 1, 3, 'Pepto Bismol', 'Nmax V2', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;br&gt;&lt;/p&gt;', 8.99, 1, 'uploads/products/prd13.jpeg', 0, '2022-01-21 11:20:27', '2023-03-05 20:59:21'),
(32, 1, 3, 'Picot', 'Nmax V2', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;br&gt;&lt;/p&gt;', 8.99, 1, 'uploads/products/44.png', 0, '2022-01-21 11:20:27', '2023-03-06 15:48:55'),
(33, 1, 3, 'Anbesol Liquid Maximum Strength', 'Nmax V2', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;br&gt;&lt;/p&gt;', 8.99, 1, 'uploads/products/49.png', 0, '2022-01-21 11:20:27', '2023-03-06 15:54:18'),
(34, 1, 3, 'Anbesol Gel Regular Strength', 'Nmax V2', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;br&gt;&lt;/p&gt;', 8.99, 1, 'uploads/products/prd8.png', 0, '2022-01-21 11:20:27', '2023-03-06 20:20:17'),
(35, 1, 3, 'Pepto Bismol 8 oz', 'Nmax V2', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;br&gt;&lt;/p&gt;', 1111110, 1, 'uploads/products/59.png', 0, '2022-01-21 11:20:27', '2023-03-06 18:36:14'),
(36, 1, 3, 'Tylenol PM', 'Nmax V2', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;br&gt;&lt;/p&gt;', 8.99, 1, 'uploads/products/prd0.png', 0, '2022-01-21 11:20:27', '2023-03-05 20:24:56'),
(37, 1, 3, 'Tylenol Extra Strength', 'Nmax V2', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;br&gt;&lt;/p&gt;', 8.99, 1, 'uploads/products/prd7.png', 0, '2022-01-21 11:20:27', '2023-03-05 20:23:16'),
(38, 1, 3, 'Tylenol Sinus', 'Nmax V2', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;br&gt;&lt;/p&gt;', 8.99, 1, 'uploads/products/tylen.png', 0, '2022-01-21 11:20:27', '2023-03-05 20:02:09'),
(39, 1, 3, 'Tylenol Cold', 'Nmax V2', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;br&gt;&lt;/p&gt;', 8.99, 1, 'uploads/products/prd6.png', 0, '2022-01-21 11:20:27', '2023-03-05 20:20:26'),
(40, 1, 3, 'Aleve 24 caplets', 'Nmax V2', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;br&gt;&lt;/p&gt;', 8.99, 1, 'uploads/products/26.jpeg', 0, '2022-01-21 11:20:27', '2023-03-05 21:37:02'),
(41, 1, 3, 'Advil 24 Tablets', 'Nmax V2', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;br&gt;&lt;/p&gt;', 8.99, 1, 'uploads/products/prd19.jpeg', 0, '2022-01-21 11:20:27', '2023-03-05 21:13:39'),
(42, 1, 3, 'Advil 24 Caplets', 'Nmax V2', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;br&gt;&lt;/p&gt;', 4.99, 1, 'uploads/products/prd24.jpeg', 0, '2022-01-21 11:20:27', '2023-03-05 21:51:48'),
(43, 1, 3, 'Advil Liqui-Gels 20 liquid-gels', 'Nmax V2', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;br&gt;&lt;/p&gt;', 8.99, 1, 'uploads/products/prd20.jpeg', 0, '2022-01-21 11:20:27', '2023-03-05 21:15:24'),
(44, 1, 3, 'Bayer 81 32 tablets', 'Nmax V2', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;br&gt;&lt;/p&gt;', 8.99, 1, 'uploads/products/35.png', 0, '2022-01-21 11:20:27', '2023-03-06 15:18:38'),
(45, 1, 3, 'Bayer 24 tablets', 'Nmax V2', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;br&gt;&lt;/p&gt;', 8.99, 1, 'uploads/products/28.jpeg', 0, '2022-01-21 11:20:27', '2023-03-05 21:39:09'),
(46, 1, 3, 'Benadryl Allergy 24 tablets', 'Nmax V2', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;br&gt;&lt;/p&gt;', 8.99, 1, 'uploads/products/prd27.jpeg', 0, '2022-01-21 11:20:27', '2023-03-05 21:31:43'),
(47, 1, 3, 'Claritin 5 tablets', 'Nmax V2', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;br&gt;&lt;/p&gt;', 8.99, 1, 'uploads/products/prd31.jpeg', 0, '2022-01-21 11:20:27', '2023-03-06 15:11:01'),
(48, 1, 3, 'Dramamine 8 count', 'Nmax V2', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;br&gt;&lt;/p&gt;', 8.99, 1, 'uploads/products/48.png', 0, '2022-01-21 11:20:27', '2023-03-06 15:53:08'),
(49, 1, 3, 'Dayquil 8 LiquiCaps', 'Nmax V2', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;br&gt;&lt;/p&gt;', 8.99, 1, 'uploads/products/36.png', 0, '2022-01-21 11:20:27', '2023-03-06 15:19:23'),
(50, 1, 3, 'Excedrin Extra Strength 24 caplets', 'Nmax V2', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;br&gt;&lt;/p&gt;', 8.99, 1, 'uploads/products/prd25.jpeg', 0, '2022-01-21 11:20:27', '2023-03-05 21:25:43'),
(51, 1, 3, 'Excedrin Migraine 24 caplets', 'Nmax V2', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;br&gt;&lt;/p&gt;', 8.99, 1, 'uploads/products/prd9.jpeg', 0, '2022-01-21 11:20:27', '2023-03-05 20:35:25'),
(52, 1, 3, 'Ex Lax 8 Tablets', 'Nmax V2', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;br&gt;&lt;/p&gt;', 8.99, 1, 'uploads/products/prd11.jpg', 0, '2022-01-21 11:20:27', '2023-03-05 20:39:38'),
(53, 1, 3, 'Gas X Extra Strength 10 softgels', 'Nmax V2', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;br&gt;&lt;/p&gt;', 8.99, 1, 'uploads/products/50.png', 0, '2022-01-21 11:20:27', '2023-03-06 16:01:24'),
(54, 1, 3, 'Motrin 24 caplets', 'Nmax V2', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;br&gt;&lt;/p&gt;', 8.99, 1, 'uploads/products/27.jpeg', 0, '2022-01-21 11:20:27', '2023-03-05 21:37:59'),
(55, 1, 3, 'Tylenol Extra Strength 24 caplets', 'Nmax V2', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;br&gt;&lt;/p&gt;', 8.99, 1, 'uploads/products/prd4.png', 0, '2022-01-21 11:20:27', '2023-03-05 20:09:22'),
(56, 1, 3, 'Tylenol PM 24 caplets', 'Nmax V2', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;br&gt;&lt;/p&gt;', 8.99, 1, 'uploads/products/prd2.png', 0, '2022-01-21 11:20:27', '2023-03-05 20:06:14'),
(57, 1, 3, 'Tylenol Cold + Flu 24 Caplets', 'Nmax V2', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;br&gt;&lt;/p&gt;', 8.99, 1, 'uploads/products/prd3.png', 0, '2022-01-21 11:20:27', '2023-03-05 20:07:43'),
(58, 1, 3, 'Tylenol Sinus 24 caplets', 'Nmax V2', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;br&gt;&lt;/p&gt;', 8.99, 1, 'uploads/products/prod1.jpg', 0, '2022-01-21 11:20:27', '2023-03-05 20:04:52'),
(59, 1, 3, 'ZzzQuil 12 caplets', 'Nmax V2', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;br&gt;&lt;/p&gt;', 8.99, 1, 'uploads/products/34.jpeg', 0, '2022-01-21 11:20:27', '2023-03-05 21:49:26'),
(60, 1, 3, 'Children’s Advil', 'Nmax V2', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;br&gt;&lt;/p&gt;', 8.99, 1, 'uploads/products/prd17.jpeg', 0, '2022-01-21 11:20:27', '2023-03-05 21:07:22'),
(61, 1, 3, 'Alka-Seltzer Plus Cold & Flu Day', 'Nmax V2', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;br&gt;&lt;/p&gt;', 8.99, 1, 'uploads/products/39.png', 0, '2022-01-21 11:20:27', '2023-03-06 15:24:32'),
(62, 1, 3, 'Alka-Seltzer Plus Cold & Flu Night', 'Nmax V2', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;br&gt;&lt;/p&gt;', 8.99, 1, 'uploads/products/prd22.jpeg', 0, '2022-01-21 11:20:27', '2023-03-05 21:21:14'),
(63, 1, 3, 'Children’s Benadryl 4 oz', 'Nmax V2', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;br&gt;&lt;/p&gt;', 8.99, 1, 'uploads/products/30.jpeg', 0, '2022-01-21 11:20:27', '2023-03-05 21:42:21'),
(64, 1, 3, 'DayQuil 8 oz Cold & Flu', 'Nmax V2', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;br&gt;&lt;/p&gt;', 8.99, 1, 'uploads/products/31.jpeg', 0, '2022-01-21 11:20:27', '2023-03-05 21:45:30'),
(65, 1, 3, 'Children’s Dimetapp', 'Nmax V2', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;br&gt;&lt;/p&gt;', 8.99, 1, 'uploads/products/42.png', 0, '2022-01-21 11:20:27', '2023-03-06 15:44:44'),
(66, 1, 3, 'Imodium A-D', 'Nmax V2', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;br&gt;&lt;/p&gt;', 8.99, 1, 'uploads/products/45.png', 0, '2022-01-21 11:20:27', '2023-03-06 15:49:51'),
(67, 1, 3, 'Chloraseptic Cherry', 'Nmax V2', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;br&gt;&lt;/p&gt;', 8.99, 1, 'uploads/products/65.png', 0, '2022-01-21 11:20:27', '2023-03-06 20:22:15'),
(68, 1, 3, 'Children’s Motrin', 'Nmax V2', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;br&gt;&lt;/p&gt;', 8.99, 1, 'uploads/products/41.png', 0, '2022-01-21 11:20:27', '2023-03-06 15:43:26'),
(69, 1, 3, 'Mylanta 12 oz', 'Nmax V2', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;br&gt;&lt;/p&gt;', 8.99, 1, 'uploads/products/29.jpeg', 0, '2022-01-21 11:20:27', '2023-03-05 21:41:20'),
(70, 1, 3, 'NyQuil Cherry 8 oz Cold & Flu', 'Nmax V2', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;br&gt;&lt;/p&gt;', 8.99, 1, 'uploads/products/32.jpeg', 0, '2022-01-21 11:20:27', '2023-03-05 21:46:45'),
(71, 1, 3, 'NyQuil 8 oz Cold & Flu', 'Nmax V2', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;br&gt;&lt;/p&gt;', 8.99, 1, 'uploads/products/33.jpeg', 0, '2022-01-21 11:20:27', '2023-03-05 21:48:02'),
(72, 1, 3, 'Pepto Bismol 4 oz', 'Nmax V2', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;br&gt;&lt;/p&gt;', 8.99, 1, 'uploads/products/prd14.jpeg', 0, '2022-01-21 11:20:27', '2023-03-05 21:00:31'),
(73, 1, 3, 'Aleve', 'Nmax V2', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;br&gt;&lt;/p&gt;', 8.99, 1, 'uploads/products/12.png', 0, '2022-01-21 11:20:27', '2023-03-05 18:27:19'),
(75, 1, 3, 'Robitussin Cough & Chest Congestion DM', 'Nmax V2', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;br&gt;&lt;/p&gt;', 8.99, 1, 'uploads/products/57.png', 0, '2022-01-21 11:20:27', '2023-03-06 18:40:27'),
(76, 1, 3, 'Theraflu Nighttime Cold & Cough', 'Nmax V2', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;br&gt;&lt;/p&gt;', 8.99, 1, 'uploads/products/64.png', 0, '2022-01-21 11:20:27', '2023-03-06 20:18:45'),
(77, 1, 3, 'Theraflu Daytime Cold & Cough', 'Nmax V2', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;br&gt;&lt;/p&gt;', 8.99, 1, 'uploads/products/61.png', 0, '2022-01-21 11:20:27', '2023-03-06 20:15:16'),
(78, 1, 3, 'Robitussin Multi-Symptom CF', 'Nmax V2', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;br&gt;&lt;/p&gt;', 8.99, 1, 'uploads/products/57.png', 0, '2022-01-21 11:20:27', '2023-03-06 18:42:21'),
(79, 1, 3, 'Children’s Robitussin Honey', 'Nmax V2', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;br&gt;&lt;/p&gt;', 8.99, 1, 'uploads/products/57.png', 0, '2022-01-21 11:20:27', '2023-03-06 18:42:45'),
(80, 1, 3, 'Children’s Robitussin', 'Nmax V2', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;br&gt;&lt;/p&gt;', 8.99, 1, 'uploads/products/62.png', 0, '2022-01-21 11:20:27', '2023-03-06 20:16:15'),
(81, 1, 3, 'Theraflu Nighttime Liquid 8 oz', 'Nmax V2', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;br&gt;&lt;/p&gt;', 8.99, 1, 'uploads/products/60.png', 0, '2022-01-21 11:20:27', '2023-03-06 20:14:04'),
(82, 1, 3, 'Children’s Tylenol 4 oz', 'Nmax V2', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;br&gt;&lt;/p&gt;', 8.99, 1, 'uploads/products/57.png', 0, '2022-01-21 11:20:27', '2023-03-06 18:44:33'),
(83, 1, 3, 'Tussin DM Generic Robitussin', 'Nmax V2', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;br&gt;&lt;/p&gt;', 8.99, 1, 'uploads/products/57.png', 0, '2022-01-21 11:20:27', '2023-03-06 18:48:28'),
(84, 1, 3, 'A & D First Aid', 'Nmax V2', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;br&gt;&lt;/p&gt;', 8.99, 1, 'uploads/products/57.png', 0, '2022-01-21 11:20:27', '2023-03-06 18:48:08'),
(85, 1, 3, 'ZzzQuil 6 oz', 'Nmax V2', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;br&gt;&lt;/p&gt;', 8.99, 1, 'uploads/products/63.png', 0, '2022-01-21 11:20:27', '2023-03-06 20:17:37'),
(86, 1, 3, 'Infants’ Tylenol 1 oz', 'Nmax V2', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;br&gt;&lt;/p&gt;', 8.99, 1, 'uploads/products/57.png', 0, '2022-01-21 11:20:27', '2023-03-06 18:46:09'),
(87, 1, 3, 'Theraflu Daytime Liquid 8 oz', 'Nmax V2', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;br&gt;&lt;/p&gt;', 8.99, 1, 'uploads/products/66.png', 0, '2022-01-21 11:20:27', '2023-03-06 20:23:56');

-- --------------------------------------------------------

--
-- Table structure for table `request_meta`
--

CREATE TABLE `request_meta` (
  `request_id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `request_meta`
--

INSERT INTO `request_meta` (`request_id`, `meta_field`, `meta_value`) VALUES
(6, 'vehicle_name', 'tyleno'),
(6, 'service_id', '1'),
(6, 'pickup_address', '671');

-- --------------------------------------------------------

--
-- Table structure for table `service_list`
--

CREATE TABLE `service_list` (
  `id` int(30) NOT NULL,
  `service` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `service_list`
--

INSERT INTO `service_list` (`id`, `service`, `description`, `status`, `delete_flag`, `date_created`) VALUES
(1, 'Health Products', '', 1, 0, '2021-09-30 14:11:21'),
(2, 'Cleaning Products', '', 1, 0, '2021-09-30 14:11:38'),
(3, 'Confectionery Items', '', 1, 0, '2021-09-30 14:12:03'),
(4, 'Deli Items', '', 1, 0, '2021-09-30 14:12:24');

-- --------------------------------------------------------

--
-- Table structure for table `service_requests`
--

CREATE TABLE `service_requests` (
  `id` int(30) NOT NULL,
  `client_id` int(30) NOT NULL,
  `service_type` text NOT NULL,
  `mechanic_id` int(30) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `service_requests`
--

INSERT INTO `service_requests` (`id`, `client_id`, `service_type`, `mechanic_id`, `status`, `date_created`) VALUES
(6, 1, 'Pick Up', NULL, 0, '2023-03-06 20:46:05');

-- --------------------------------------------------------

--
-- Table structure for table `stock_list`
--

CREATE TABLE `stock_list` (
  `id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `quantity` float NOT NULL DEFAULT 0,
  `type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1= IN, 2= Out',
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock_list`
--

INSERT INTO `stock_list` (`id`, `product_id`, `quantity`, `type`, `date_created`) VALUES
(1, 84, 100000000000, 1, '2022-01-21 13:07:47'),
(2, 42, 100000000000, 1, '2022-01-21 13:07:55'),
(9, 41, 100000000000, 1, '2022-01-21 13:07:55'),
(10, 9, 100000000000, 1, '2022-01-21 13:07:55'),
(11, 7, 100000000000, 1, '2022-01-21 13:07:55'),
(12, 1, 100000000000, 1, '2022-01-21 13:07:47'),
(13, 43, 100000000000, 1, '2022-01-21 13:07:55'),
(14, 28, 100000000000, 1, '2022-01-21 13:07:55'),
(15, 29, 100000000000, 1, '2022-01-21 13:07:55'),
(16, 30, 100000000000, 1, '2022-01-21 13:07:55'),
(17, 1, 100000000000, 1, '2022-01-21 13:07:47'),
(18, 31, 100000000000, 1, '2022-01-21 13:07:55'),
(19, 32, 100000000000, 1, '2022-01-21 13:07:55'),
(20, 33, 100000000000, 1, '2022-01-21 13:07:55'),
(21, 34, 100000000000, 1, '2022-01-21 13:07:55'),
(22, 35, 100000000000, 1, '2022-01-21 13:07:47'),
(23, 36, 100000000000, 1, '2022-01-21 13:07:55'),
(24, 37, 100000000000, 1, '2022-01-21 13:07:55'),
(25, 38, 100000000000, 1, '2022-01-21 13:07:55'),
(26, 39, 100000000000, 1, '2022-01-21 13:07:55'),
(27, 40, 100000000000, 1, '2022-01-21 13:07:47'),
(28, 41, 100000000000, 1, '2022-01-21 13:07:55'),
(29, 42, 100000000000, 1, '2022-01-21 13:07:55'),
(30, 43, 100000000000, 1, '2022-01-21 13:07:55'),
(31, 44, 100000000000, 1, '2022-01-21 13:07:55'),
(32, 45, 100000000000, 1, '2022-01-21 13:07:47'),
(33, 46, 100000000000, 1, '2022-01-21 13:07:55'),
(34, 47, 100000000000, 1, '2022-01-21 13:07:55'),
(35, 48, 100000000000, 1, '2022-01-21 13:07:55'),
(36, 49, 100000000000, 1, '2022-01-21 13:07:55'),
(37, 50, 100000000000, 1, '2022-01-21 13:07:47'),
(38, 51, 100000000000, 1, '2022-01-21 13:07:55'),
(39, 52, 100000000000, 1, '2022-01-21 13:07:55'),
(40, 53, 100000000000, 1, '2022-01-21 13:07:55'),
(41, 54, 100000000000, 1, '2022-01-21 13:07:55'),
(42, 55, 100000000000, 1, '2022-01-21 13:07:47'),
(43, 56, 100000000000, 1, '2022-01-21 13:07:55'),
(44, 57, 100000000000, 1, '2022-01-21 13:07:55'),
(45, 58, 100000000000, 1, '2022-01-21 13:07:55'),
(46, 59, 100000000000, 1, '2022-01-21 13:07:55'),
(47, 60, 100000000000, 1, '2022-01-21 13:07:47'),
(48, 61, 100000000000, 1, '2022-01-21 13:07:55'),
(49, 62, 100000000000, 1, '2022-01-21 13:07:55'),
(50, 63, 100000000000, 1, '2022-01-21 13:07:55'),
(51, 64, 100000000000, 1, '2022-01-21 13:07:55'),
(52, 65, 100000000000, 1, '2022-01-21 13:07:47'),
(53, 66, 100000000000, 1, '2022-01-21 13:07:55'),
(54, 67, 100000000000, 1, '2022-01-21 13:07:55'),
(55, 68, 100000000000, 1, '2022-01-21 13:07:55'),
(56, 69, 100000000000, 1, '2022-01-21 13:07:55'),
(57, 70, 100000000000, 1, '2022-01-21 13:07:47'),
(58, 71, 100000000000, 1, '2022-01-21 13:07:55'),
(59, 72, 100000000000, 1, '2022-01-21 13:07:55'),
(60, 73, 100000000000, 1, '2022-01-21 13:07:55'),
(61, 75, 100000000000, 1, '2022-01-21 13:07:55'),
(62, 76, 100000000000, 1, '2022-01-21 13:07:47'),
(63, 77, 100000000000, 1, '2022-01-21 13:07:55'),
(64, 78, 100000000000, 1, '2022-01-21 13:07:55'),
(65, 79, 100000000000, 1, '2022-01-21 13:07:55'),
(66, 80, 100000000000, 1, '2022-01-21 13:07:55'),
(67, 81, 100000000000, 1, '2022-01-21 13:07:47'),
(68, 82, 100000000000, 1, '2022-01-21 13:07:55'),
(69, 83, 100000000000, 1, '2022-01-21 13:07:55'),
(70, 84, 100000000000, 1, '2022-01-21 13:07:55'),
(71, 85, 100000000000, 1, '2022-01-21 13:07:55'),
(72, 86, 100000000000, 1, '2022-01-21 13:07:47'),
(73, 87, 100000000000, 1, '2022-01-21 13:07:55');

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'FE Wholesale'),
(6, 'short_name', 'FE'),
(11, 'logo', 'uploads/1678414260_fewholesale-low-resolution-logo-white-on-black-background.png'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/standard (3).png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', 'Admin', 'admin', '88572a06df3c4cce9bbb9713aab8b464', 'uploads/1624240500_avatar.png', NULL, 1, '2021-01-20 14:02:37', '2023-03-05 20:18:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand_list`
--
ALTER TABLE `brand_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart_list`
--
ALTER TABLE `cart_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_list`
--
ALTER TABLE `client_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`) USING HASH;

--
-- Indexes for table `mechanics_list`
--
ALTER TABLE `mechanics_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `order_list`
--
ALTER TABLE `order_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `product_list`
--
ALTER TABLE `product_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brand_id` (`brand_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `request_meta`
--
ALTER TABLE `request_meta`
  ADD KEY `request_id` (`request_id`);

--
-- Indexes for table `service_list`
--
ALTER TABLE `service_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_requests`
--
ALTER TABLE `service_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `mechanic_id` (`mechanic_id`);

--
-- Indexes for table `stock_list`
--
ALTER TABLE `stock_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brand_list`
--
ALTER TABLE `brand_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cart_list`
--
ALTER TABLE `cart_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `client_list`
--
ALTER TABLE `client_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mechanics_list`
--
ALTER TABLE `mechanics_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `order_list`
--
ALTER TABLE `order_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product_list`
--
ALTER TABLE `product_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `service_list`
--
ALTER TABLE `service_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `service_requests`
--
ALTER TABLE `service_requests`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `stock_list`
--
ALTER TABLE `stock_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart_list`
--
ALTER TABLE `cart_list`
  ADD CONSTRAINT `cart_list_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product_list` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_list_ibfk_2` FOREIGN KEY (`client_id`) REFERENCES `client_list` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order_list` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product_list` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_list`
--
ALTER TABLE `order_list`
  ADD CONSTRAINT `order_list_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `client_list` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_list`
--
ALTER TABLE `product_list`
  ADD CONSTRAINT `product_list_ibfk_1` FOREIGN KEY (`brand_id`) REFERENCES `brand_list` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_list_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `request_meta`
--
ALTER TABLE `request_meta`
  ADD CONSTRAINT `request_meta_ibfk_1` FOREIGN KEY (`request_id`) REFERENCES `service_requests` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `service_requests`
--
ALTER TABLE `service_requests`
  ADD CONSTRAINT `service_requests_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `client_list` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `service_requests_ibfk_2` FOREIGN KEY (`mechanic_id`) REFERENCES `mechanics_list` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `stock_list`
--
ALTER TABLE `stock_list`
  ADD CONSTRAINT `stock_list_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product_list` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
