-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 12, 2025 at 05:14 PM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecoomercex`
--

-- --------------------------------------------------------

--
-- Table structure for table `attribute`
--

DROP TABLE IF EXISTS `attribute`;
CREATE TABLE IF NOT EXISTS `attribute` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `isActive` int DEFAULT '0',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attribute`
--

INSERT INTO `attribute` (`id`, `name`, `type`, `isActive`, `create_at`) VALUES
(1, 'Speeds', 'Data', 1, '2025-05-10 06:09:18'),
(2, 'Color', 'Data', 1, '2025-05-12 06:41:55'),
(3, 'Size', 'meserment', 1, '2025-06-21 05:41:34');

-- --------------------------------------------------------

--
-- Table structure for table `attr_value`
--

DROP TABLE IF EXISTS `attr_value`;
CREATE TABLE IF NOT EXISTS `attr_value` (
  `id` int NOT NULL AUTO_INCREMENT,
  `attr_id` int NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `isActive` int NOT NULL DEFAULT '0',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attr_value`
--

INSERT INTO `attr_value` (`id`, `attr_id`, `value`, `isActive`, `create_at`) VALUES
(1, 1, '5400RPM', 1, '2025-05-12 10:08:43'),
(11, 1, '7400RPM', 1, '2025-05-12 10:24:32'),
(12, 1, '9200 RPM', 0, '2025-05-12 10:29:16'),
(13, 1, '12500RPM', 1, '2025-05-12 10:36:37'),
(14, 2, 'Red', 1, '2025-05-12 10:42:04'),
(15, 1, '10200 RPM', 1, '2025-05-24 11:22:50'),
(16, 2, 'Blue', 1, '2025-05-25 10:50:01'),
(17, 2, 'Greens', 1, '2025-05-25 10:50:06'),
(18, 3, 'M', 1, '2025-06-21 09:41:46'),
(19, 3, 'L', 1, '2025-06-21 09:41:50'),
(20, 3, 'XL', 1, '2025-06-21 09:41:53'),
(21, 3, 'XXL', 1, '2025-06-21 09:41:57');

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
CREATE TABLE IF NOT EXISTS `brand` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `description` text COLLATE utf8mb4_general_ci,
  `img_url` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `isActive` int DEFAULT '0',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `name`, `description`, `img_url`, `isActive`, `create_at`) VALUES
(1, 'Hikvision', 'main brands', 'uploads/Rk1Ru5d53c5Jhtb1XdYIhfoD8.png', 1, '2025-05-10 09:36:19');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  `qty` int NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `qty`, `create_at`) VALUES
(1, 1, 1, 2, '2025-07-11 20:56:30'),
(3, 1, 2, 5, '2025-07-11 23:21:31');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `description` text COLLATE utf8mb4_general_ci,
  `img_url` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `isActive` int DEFAULT '0',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `description`, `img_url`, `isActive`, `create_at`) VALUES
(1, 'Desktop', 'lorem', 'uploads/v22fab-ra-001-500x500.webp', 1, '2025-05-10 09:43:25'),
(2, 'Laptop', 'Test', 'uploads/photo-1486365227551-f3f90034a57c.jpeg', 1, '2025-06-03 10:37:36');

-- --------------------------------------------------------

--
-- Table structure for table `compare`
--

DROP TABLE IF EXISTS `compare`;
CREATE TABLE IF NOT EXISTS `compare` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_user`
--

DROP TABLE IF EXISTS `db_user`;
CREATE TABLE IF NOT EXISTS `db_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone` varchar(14) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `verify_at` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `rememder_token` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `db_user`
--

INSERT INTO `db_user` (`id`, `username`, `phone`, `email`, `verify_at`, `rememder_token`, `password`, `create_at`) VALUES
(1, 'himel984', '+8801867033550', 'demohimel@gmail.com', NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e', '2025-03-23 09:55:15'),
(2, 'user', '+5840848', 'test123@gmail.com', NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e', '2025-03-23 10:00:40'),
(3, 'puja', '01837892542', 'school1@gmail.com', NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e', '2025-03-25 07:25:04');

-- --------------------------------------------------------

--
-- Table structure for table `featured`
--

DROP TABLE IF EXISTS `featured`;
CREATE TABLE IF NOT EXISTS `featured` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `content` text COLLATE utf8mb4_general_ci,
  `button_title` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `button_url` varchar(2083) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `is_featured` tinyint(1) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `featured`
--

INSERT INTO `featured` (`id`, `title`, `content`, `button_title`, `button_url`, `image`, `is_active`, `is_featured`, `created_at`, `updated_at`) VALUES
(1, 'Don’t Miss Today', '50% OFF', 'Discover Now', '/ecoomercex/featured-view.php?cat_id=1', 'uploads/td1655-03-500x500.jpg', 1, 1, '2025-04-15 08:21:09', '2025-07-05 06:25:54'),
(2, 'Don’t Miss Today', '50% OFF', 'Discover Now', '/ecoomercex/featured-view.php?cat_id=2', 'uploads/td1655-01-500x500.jpg', 1, 1, '2025-04-15 08:37:02', '2025-07-05 06:31:54');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(14) DEFAULT NULL,
  `address` text,
  `cupone_code` varchar(50) DEFAULT NULL,
  `discount` decimal(10,0) DEFAULT '0',
  `shipping` decimal(10,0) DEFAULT '0',
  `tax` decimal(10,0) DEFAULT '0',
  `total` decimal(10,0) NOT NULL,
  `payment_method` int NOT NULL DEFAULT '1',
  `status` int NOT NULL DEFAULT '0',
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
CREATE TABLE IF NOT EXISTS `order_items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `qty` int NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `short_desc` text COLLATE utf8mb4_general_ci,
  `long_desc` text COLLATE utf8mb4_general_ci,
  `add_info` text COLLATE utf8mb4_general_ci,
  `ship_info` text COLLATE utf8mb4_general_ci,
  `why_us` text COLLATE utf8mb4_general_ci,
  `price` decimal(10,2) NOT NULL,
  `discount` decimal(10,2) DEFAULT '0.00',
  `is_featured` tinyint(1) DEFAULT '0',
  `is_new` tinyint(1) DEFAULT '0',
  `is_flash` tinyint(1) DEFAULT '0',
  `flash_price` decimal(10,2) DEFAULT NULL,
  `flash_start` datetime DEFAULT NULL,
  `flash_end` datetime DEFAULT NULL,
  `feat_img` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `cat_id` int DEFAULT NULL,
  `brand_id` int DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `cat_id` (`cat_id`),
  KEY `brand_id` (`brand_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `short_desc`, `long_desc`, `add_info`, `ship_info`, `why_us`, `price`, `discount`, `is_featured`, `is_new`, `is_flash`, `flash_price`, `flash_start`, `flash_end`, `feat_img`, `cat_id`, `brand_id`, `is_active`, `created_at`) VALUES
(1, 'B1A21P', 'TEST', 'TEST', 'TEST', 'TEST', 'TEST', '2000.00', '10.00', 1, 1, 0, '1500.00', '2025-06-03 16:44:00', '2025-06-28 16:44:00', '1748947504_photo-1486365227551-f3f90034a57c.jpeg', 1, 1, 1, '2025-06-03 16:45:04'),
(2, 't1a21p', 'TEST', 'dasdasd', 'dasd', 'asdasd', 'asdd', '550.00', '10.00', 1, 1, 1, '20.00', '2025-06-03 16:51:00', '2025-06-27 16:51:00', '1748947897_v20-2-500x500.jpg', 1, 1, 1, '2025-06-03 16:51:37');

-- --------------------------------------------------------

--
-- Table structure for table `product_attr_value`
--

DROP TABLE IF EXISTS `product_attr_value`;
CREATE TABLE IF NOT EXISTS `product_attr_value` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `attr_id` int DEFAULT NULL,
  `attr_value_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  KEY `attr_value_id` (`attr_value_id`),
  KEY `attr_id` (`attr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_attr_value`
--

INSERT INTO `product_attr_value` (`id`, `product_id`, `attr_id`, `attr_value_id`) VALUES
(6, 1, 2, 16),
(9, 1, 2, 14),
(10, 1, 3, 18),
(11, 1, 3, 19);

-- --------------------------------------------------------

--
-- Table structure for table `product_gallery`
--

DROP TABLE IF EXISTS `product_gallery`;
CREATE TABLE IF NOT EXISTS `product_gallery` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int DEFAULT NULL,
  `img_url` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_gallery`
--

INSERT INTO `product_gallery` (`id`, `product_id`, `img_url`) VALUES
(1, 1, 'uploads/gallery/1750150982_68512f461e9bc_td1655-01-500x500.jpg'),
(2, 1, 'uploads/gallery/1750150988_68512f4c57d6e_v20-3-500x500.jpg'),
(3, 1, 'uploads/gallery/1750150997_68512f553ff51_v20-228x228.jpg'),
(4, 1, 'uploads/gallery/1750151090_68512fb2292ab_v22fab-ra-001-500x500.webp'),
(5, 1, 'uploads/gallery/1750151090_68512fb22ba5b_ts5322-001-500x500.webp'),
(6, 1, 'uploads/gallery/1750151090_68512fb22d29c_mf2219-b-05-500x500.webp'),
(7, 1, 'uploads/gallery/1750151090_68512fb22e299_mf2219-b-004-500x500.webp'),
(8, 1, 'uploads/gallery/1750151090_68512fb2305ab_mf2219-b-003-500x500.webp'),
(10, 2, 'uploads/gallery/1750151581_6851319d6814e_download (2).jpeg'),
(11, 2, 'uploads/gallery/1750151587_685131a32b104_Saikat College Logo.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `slidertable`
--

DROP TABLE IF EXISTS `slidertable`;
CREATE TABLE IF NOT EXISTS `slidertable` (
  `id` int NOT NULL AUTO_INCREMENT,
  `subTitle` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `details` text COLLATE utf8mb4_general_ci,
  `btnOneText` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `btnOneUrl` varchar(500) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `btnTwoTxt` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `btnTwoUrl` varchar(500) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `align` enum('left','center','right') COLLATE utf8mb4_general_ci DEFAULT 'center',
  `image` varchar(500) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT '1',
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `slidertable`
--

INSERT INTO `slidertable` (`id`, `subTitle`, `title`, `details`, `btnOneText`, `btnOneUrl`, `btnTwoTxt`, `btnTwoUrl`, `align`, `image`, `isActive`, `create_at`) VALUES
(1, 'Limited Time Offer For Man!', 'Winter-Spring!', 'Take 20% Off ‘Sale Must-Haves\'', 'Shop Women\'s', '/shop', 'Shop Men\'s', '/buynow', 'center', 'uploads/mf2219-b-003-500x500.webp', 1, '2025-03-27 09:10:08'),
(4, 'Exclusive Offer!', 'Spring-Show!', 'Leap year offer ‘Sale Must-Haves\'', 'Shop Women\'s', '/shop', 'Shop Men\'s', '/buynow', 'left', 'uploads/mf2219-b-05-500x500.webp', 1, '2025-04-12 11:13:41');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL,
  `fname` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `lname` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone` varchar(14) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `verify_at` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `rememder_token` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_2` (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `fname`, `lname`, `username`, `phone`, `email`, `verify_at`, `rememder_token`, `password`, `create_at`) VALUES
(1, 'Ashraful', 'Himel', 'himel984', '+8801284815148', 'himel984@gmail.com', NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e', '2025-07-06 14:54:27');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product_attr_value`
--
ALTER TABLE `product_attr_value`
  ADD CONSTRAINT `product_attr_value_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_attr_value_ibfk_2` FOREIGN KEY (`attr_value_id`) REFERENCES `attr_value` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_gallery`
--
ALTER TABLE `product_gallery`
  ADD CONSTRAINT `product_gallery_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
