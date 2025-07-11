-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2025 at 09:57 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

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

CREATE TABLE `attribute` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` varchar(50) NOT NULL,
  `isActive` int(11) DEFAULT 0,
  `create_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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

CREATE TABLE `attr_value` (
  `id` int(11) NOT NULL,
  `attr_id` int(11) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `isActive` int(11) NOT NULL DEFAULT 0,
  `create_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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

CREATE TABLE `brand` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `img_url` varchar(255) DEFAULT NULL,
  `isActive` int(11) DEFAULT 0,
  `create_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `name`, `description`, `img_url`, `isActive`, `create_at`) VALUES
(1, 'Hikvision', 'main brands', 'uploads/Rk1Ru5d53c5Jhtb1XdYIhfoD8.png', 1, '2025-05-10 09:36:19');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `img_url` varchar(255) DEFAULT NULL,
  `isActive` int(11) DEFAULT 0,
  `create_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `description`, `img_url`, `isActive`, `create_at`) VALUES
(1, 'Desktop', 'lorem', 'uploads/v22fab-ra-001-500x500.webp', 1, '2025-05-10 09:43:25'),
(2, 'Laptop', 'Test', 'uploads/photo-1486365227551-f3f90034a57c.jpeg', 1, '2025-06-03 10:37:36');

-- --------------------------------------------------------

--
-- Table structure for table `db_user`
--

CREATE TABLE `db_user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `phone` varchar(14) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `verify_at` varchar(100) DEFAULT NULL,
  `rememder_token` varchar(100) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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

CREATE TABLE `featured` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text DEFAULT NULL,
  `button_title` varchar(255) DEFAULT NULL,
  `button_url` varchar(2083) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `is_featured` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `featured`
--

INSERT INTO `featured` (`id`, `title`, `content`, `button_title`, `button_url`, `image`, `is_active`, `is_featured`, `created_at`, `updated_at`) VALUES
(1, 'Don’t Miss Today', '50% OFF', 'Discover Now', '/ecoomercex/featured-view.php?cat_id=1', 'uploads/td1655-03-500x500.jpg', 1, 1, '2025-04-15 08:21:09', '2025-07-05 06:25:54'),
(2, 'Don’t Miss Today', '50% OFF', 'Discover Now', '/ecoomercex/featured-view.php?cat_id=2', 'uploads/td1655-01-500x500.jpg', 1, 1, '2025-04-15 08:37:02', '2025-07-05 06:31:54');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `short_desc` text DEFAULT NULL,
  `long_desc` text DEFAULT NULL,
  `add_info` text DEFAULT NULL,
  `ship_info` text DEFAULT NULL,
  `why_us` text DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `discount` decimal(10,2) DEFAULT 0.00,
  `is_featured` tinyint(1) DEFAULT 0,
  `is_new` tinyint(1) DEFAULT 0,
  `is_flash` tinyint(1) DEFAULT 0,
  `flash_price` decimal(10,2) DEFAULT NULL,
  `flash_start` datetime DEFAULT NULL,
  `flash_end` datetime DEFAULT NULL,
  `feat_img` varchar(255) DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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

CREATE TABLE `product_attr_value` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `attr_id` int(11) DEFAULT NULL,
  `attr_value_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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

CREATE TABLE `product_gallery` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `img_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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

CREATE TABLE `slidertable` (
  `id` int(11) NOT NULL,
  `subTitle` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `details` text DEFAULT NULL,
  `btnOneText` varchar(255) DEFAULT NULL,
  `btnOneUrl` varchar(500) DEFAULT NULL,
  `btnTwoTxt` varchar(255) DEFAULT NULL,
  `btnTwoUrl` varchar(500) DEFAULT NULL,
  `align` enum('left','center','right') DEFAULT 'center',
  `image` varchar(500) DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT 1,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `phone` varchar(14) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `verify_at` varchar(100) DEFAULT NULL,
  `rememder_token` varchar(100) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `fname`, `lname`, `username`, `phone`, `email`, `verify_at`, `rememder_token`, `password`, `create_at`) VALUES
(1, 'Ashraful', 'Himel', 'himel984', '+8801284815148', 'himel984@gmail.com', NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e', '2025-07-06 14:54:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attribute`
--
ALTER TABLE `attribute`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attr_value`
--
ALTER TABLE `attr_value`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_user`
--
ALTER TABLE `db_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `featured`
--
ALTER TABLE `featured`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_id` (`cat_id`),
  ADD KEY `brand_id` (`brand_id`);

--
-- Indexes for table `product_attr_value`
--
ALTER TABLE `product_attr_value`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `attr_value_id` (`attr_value_id`),
  ADD KEY `attr_id` (`attr_id`);

--
-- Indexes for table `product_gallery`
--
ALTER TABLE `product_gallery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `slidertable`
--
ALTER TABLE `slidertable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_2` (`id`),
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attribute`
--
ALTER TABLE `attribute`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `attr_value`
--
ALTER TABLE `attr_value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `db_user`
--
ALTER TABLE `db_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `featured`
--
ALTER TABLE `featured`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product_attr_value`
--
ALTER TABLE `product_attr_value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `product_gallery`
--
ALTER TABLE `product_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `slidertable`
--
ALTER TABLE `slidertable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
