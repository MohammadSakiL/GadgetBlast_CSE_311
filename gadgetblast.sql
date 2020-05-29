-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2020 at 02:53 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gadgetblast`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`, `visible`) VALUES
(1, 'HP', 1),
(2, 'DELL', 1),
(3, 'LG', 1),
(4, 'Samsung', 1),
(5, 'Sony', 1),
(6, 'Xiaomi', 1),
(7, 'Lenovo', 1),
(8, 'Apple', 1),
(9, 'Canon', 1),
(10, 'Nikon', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quality` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `visible`) VALUES
(1, 'Laptop', 1),
(2, 'Camera', 1),
(3, 'Cellphone', 1),
(4, 'Desktop', 1),
(5, 'TV', 1),
(6, 'Accessories', 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(100) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `product_image` text COLLATE utf8_unicode_ci NOT NULL,
  `product_keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `views` int(11) NOT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT 1,
  `date` varchar(150) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_keywords`, `views`, `visible`, `date`) VALUES
(1, 5, 5, 'Sony Bravia', 40000, 'this is good', 'tv.jpg', 'sony tv', 1, 1, ''),
(2, 2, 5, 'Sony Alpha 6600', 56000, 'you will love', 'sony-alpha-6600.jpg', 'sony-alpha-6600', 0, 1, ''),
(3, 4, 2, 'Desktop Dell', 130000, 'love this', 'desktop-dell.jpg', 'desktop dell', 0, 1, ''),
(4, 2, 4, 'Samsung Camera', 6000, 'This is great product', 'cam.jpg', 'Samsung Camera', 0, 1, ''),
(5, 4, 8, 'Desktop Apple', 400, 'This is great product. Finding the right laptop have never been easier.', 'desktop.jpg', 'desktop apple', 0, 1, ''),
(6, 1, 2, 'Dell Inspiron S.E.', 80000, 'This is great product. Finding the right computer have never been easier.', 'special.jpg', 'special', 1, 1, ''),
(7, 1, 8, 'Macbook-13', 120000, 'This is great product', 'macbook-13.jpg', 'mac', 0, 1, ''),
(8, 4, 7, 'Desktop Lenovo', 100, 'This is great product Finding the right laptop has never been easier.', 'lenovo.jpg', 'desktop lenovo', 0, 0, ''),
(9, 1, 1, 'Laptop Pro HP', 250, 'What is Lorem Ipsum?\r\n', 'ProBook.jpg', 'Laptop HP', 0, 0, ''),
(10, 1, 8, 'Macbook Air', 100000, 'You will love this', 'macbook-air.jpg', 'mac', 0, 0, ''),
(11, 1, 8, 'Macbook-Pro', 150000, 'Amazing Product', 'macbook-pro.jpg', 'pro', 1, 1, ''),
(12, 1, 2, 'Dell Inspiron', 60000, 'This is good', 'Dell-Inspiron.jpg', 'inspiron', 1, 1, ''),
(13, 1, 2, 'Dell Inspiron 14', 75000, 'this is good one.', 'dell14.png', 'insp', 1, 1, ''),
(14, 1, 2, 'Dell XPS', 95000, 'You will love it', 'dell-xps.jpg', 'xps', 1, 1, ''),
(15, 1, 1, 'HP 250', 65000, 'you will love this', 'hp250.jpg', 'hp250', 0, 1, ''),
(16, 6, 1, 'HP GK100S Keyboard', 3000, 'good', 'hp gk100s.jpg', 'hp gk100s', 0, 1, ''),
(17, 1, 1, 'HP EliteBook', 68000, 'amazing', 'hp2.jpg', 'elite', 0, 1, ''),
(18, 1, 1, 'HP Pavilion', 63000, 'good', 'hp-pav.jpg', 'pavilion', 0, 1, ''),
(19, 1, 3, 'LG Ultra', 67000, 'good', 'lg-ultra.jpg', 'ultra', 0, 1, ''),
(20, 1, 3, 'LG Gram 14', 72000, 'good', 'lg-2.jpg', 'lg', 0, 1, ''),
(21, 1, 3, 'LG Gram', 78000, 'good one', 'lg-3.jpg', 'gram', 0, 1, ''),
(22, 1, 4, 'Samsung Galaxy Book', 79000, 'good', 'samsung-galaxybook.jpg', 'galaxybook', 0, 1, ''),
(23, 1, 4, 'Samsung Notebook', 0, 'good', 'samsung-notebook-9-15.jpg', 'notebook', 0, 1, ''),
(24, 1, 5, 'Sony Sve Vaio', 81000, 'good', 'sony-sve-vaio.jpg', 'sve', 0, 1, ''),
(25, 6, 2, 'Alienware Gaming ', 9000, 'good', 'alienware_510_gaming_headset_dell.jpg', 'gaming', 0, 1, ''),
(26, 1, 5, 'Sony Vaio S', 83000, 'good', 'sony-vaio-s.jpg', 'vaio-s', 0, 1, ''),
(27, 1, 5, 'Sony VJS', 84000, 'good', 'sony-vjs.jpg', 'vjs', 0, 1, ''),
(28, 6, 2, 'Alienware Wireless', 12000, 'good', 'alienware-wireless-gaming-headset-aw988-dell.jpg', 'wireless', 0, 1, ''),
(29, 6, 1, 'HP Headset', 3500, 'good', 'hp-h120-headset.jpg', 'h120', 0, 1, ''),
(30, 6, 1, 'HP Gaming Headset', 5500, 'good', 'HP-H300-Gaming-Headset-Black.jpg', 'h300', 0, 1, ''),
(31, 6, 1, 'HP Pavilion Headset', 4800, 'good', 'hp-pavilion-600-headset.jpg', 'pavilion 600', 0, 1, ''),
(32, 6, 2, 'Alienware AW568 Dell', 6000, 'good', 'Alienware-AW568-dell.jpg', 'Alienware-AW568-dell', 0, 1, ''),
(33, 6, 2, 'Alienware AW768 Dell', 6500, 'good', 'alienware-aw768-dell.jpg', 'alienware-aw768-dell', 0, 1, ''),
(34, 6, 2, 'Alienware TACTX Dell', 7800, 'good', 'alienware-tactx-dell.jpg', 'alienware-tactx-dell', 0, 1, ''),
(35, 6, 1, 'HP-GK200 Keyboard', 7100, 'good', 'HP-GK200.jpg', 'HP-GK200', 0, 1, ''),
(36, 6, 1, 'HP Pavilion 800 Keyboard', 7500, 'good', 'hp-pavilion-800-keyboard.jpg', 'hp-pavilion-800-keyboard', 0, 1, ''),
(37, 6, 1, 'HP GK100S', 7900, 'good', 'hp gk100s.jpg', 'hp gk100s', 0, 1, ''),
(38, 6, 7, 'Lenovo Mechanical Gaming Keyboard', 6500, 'good', 'lenovo-y-mechanical-gaming-keyboard.jpg', 'lenovo-y-mechanical-gaming-keyboard', 0, 1, ''),
(39, 6, 7, 'Lenovo legion K500 Keyboard', 5600, 'good', 'lenovo-legion-k500-keyboard.jpg', 'lenovo-legion-k500-keyboard', 0, 1, ''),
(40, 6, 2, 'Dell Alienware Mouse', 4300, 'good', 'Dell-Alienware.jpg', 'Dell-Alienware', 0, 1, ''),
(41, 6, 2, 'Dell AW558 Gaming Mouse', 4900, 'good', 'Dell-AW558-Gaming-Mouse.jpg', 'Dell-AW558-Gaming-Mouse', 0, 1, ''),
(42, 6, 2, 'Alienware AW959 Mouse', 5300, 'good', 'mouse-alienware-aw959-dell.jpg', 'mouse-alienware-aw959-dell', 0, 1, ''),
(43, 6, 1, 'HP Gaming Mouse M150', 6100, 'good', 'hp-gaming-mouse-m150.jpg', 'hp-gaming-mouse-m150', 0, 1, ''),
(44, 6, 7, 'Lenovo Legion M200 Mouse', 4250, 'good', 'lenovo-legion-m200.jpg', 'lenovo-legion-m200', 0, 1, ''),
(45, 5, 4, 'Samsung 65\" 4K UHD', 90000, 'good', 'samsung-65-4k-uhd.jpg', 'samsung-65-4k-uhd', 0, 1, ''),
(46, 5, 4, 'Samsung 65\" Curved 4K', 0, '', 'samsung-65-curved-4k.jpg', 'samsung-65-curved-4k', 0, 1, ''),
(47, 5, 5, 'Samsung 43\" 4K', 85000, 'good', 'sony-43-4k-ultra.jpg', 'sony-43-4k-ultra', 0, 1, ''),
(48, 5, 5, 'Sony 50\" LED', 98000, 'good', 'sony-50-w660f-led.jpg', 'sony-50-w660f-led', 0, 1, ''),
(49, 5, 5, 'Sony UHD', 120000, 'good', 'sony-z9g-8k-uhd.jpg', 'sony-z9g-8k-uhd', 0, 1, ''),
(50, 5, 6, 'MI 4S 43\" UHD', 65000, 'good', 'mi-4s-43-uhd.jpg', 'mi-4s-43-uhd', 0, 1, ''),
(51, 5, 6, 'MI Smart TV', 85000, 'good', 'mi-tv-9.0hd-smart-tv.jpg', 'mi-tv-9.0hd-smart-tv', 0, 1, ''),
(52, 3, 8, 'Apple-iPhone-11-Pro', 70000, 'good', 'Apple-iPhone-11-Pro.jpg', 'Apple-iPhone-11-Pro', 0, 1, ''),
(53, 3, 8, 'Iphone X 256GB', 40000, 'good', 'apple-iphone-x-256gb.jpg', 'apple-iphone-x-256gb', 0, 1, ''),
(54, 3, 8, 'Iphone XR 64GB', 42000, 'good', 'apple-iphone-xr-64gb.jpg', 'apple-iphone-xr-64gb', 0, 1, ''),
(55, 3, 4, 'Samsung Galaxy A60', 30000, 'good', 'samsung-galaxy-a60.jpg', 'samsung-galaxy-a60', 0, 1, ''),
(56, 3, 4, 'Samsung Galaxy M20', 20000, 'good', 'samsung-galaxy-m20.jpg', 'samsung-galaxy-m20', 0, 1, ''),
(57, 3, 4, 'Samsung Galaxy S10', 35000, 'good', 'samsung-galaxy-s10-5g-8-go-256.jpg', 'samsung-galaxy-s10-5g-8-go-256', 0, 1, ''),
(58, 3, 6, 'Xiaomi A3', 15000, 'good', 'global-version-xiaomi-mi-a3-4gb-64gb.jpg', 'global-version-xiaomi-mi-a3-4gb-64gb', 0, 1, ''),
(59, 3, 6, 'Pocophone F1', 14000, 'good', 'pocophone-red-f1.jpg', 'pocophone-red-f1', 0, 1, ''),
(60, 3, 6, 'Xiaomi-Mi-A2-Lite-Gold', 1800, 'good', 'Xiaomi-Mi-A2-Lite-Gold.jpg', 'Xiaomi-Mi-A2-Lite-Gold', 0, 1, ''),
(61, 3, 6, 'Xiaomi-Redmi-K305G-Red', 16000, 'goood', 'Xiaomi-Redmi-K305G-Red.jpg', 'Xiaomi-Redmi-K305G-Red', 0, 1, ''),
(62, 4, 1, 'Desktop HP', 89000, 'good', 'hp-g2-ci5.jpg', 'hp-g2-ci5', 0, 1, ''),
(63, 2, 9, 'Canon EOS 750D', 130000, 'good', 'Canon-EOS-750D-DSLR-Camera-with-18-55mmlens.jpg', 'Canon-EOS-750D-DSLR-Camera-with-18-55mmlens', 0, 1, ''),
(64, 2, 9, 'Canon EOS 4000D', 140000, 'good', 'canon-eos-4000d-18-55mm-55-250mm-lens.jpg', 'canon-eos-4000d-18-55mm-55-250mm-lens', 0, 1, ''),
(65, 2, 10, 'Nikon D750', 65500, 'good', 'nikon-d750.jpg', 'nikon-d750', 0, 1, ''),
(66, 2, 10, 'Nikon D3100', 71000, 'good', 'nikon-d3100-18-55-mm.jpg', 'nikon-d3100-18-55-mm', 0, 1, ''),
(67, 2, 10, 'Nikon D5600', 75000, 'goood', 'nikon-d5600.jpg', 'nikon-d5600', 0, 1, ''),
(68, 2, 10, 'Nikon D7200', 80000, 'good', 'nikon-d7200.jpg', 'nikon-d7200', 0, 1, ''),
(69, 2, 5, 'Sony Alpha A5100', 95000, 'good', 'sony-alpha-a5100.jpg', 'sony-alpha-a5100', 0, 1, ''),
(70, 2, 5, 'Sony Alpha A7', 86000, 'good', 'sony-alpha-a7.jpg', 'sony-alpha-a7', 0, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `ip_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `contact` text COLLATE utf8_unicode_ci NOT NULL,
  `user_address` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'guest',
  `visible` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `name`, `email`, `password`, `country`, `city`, `contact`, `user_address`, `image`, `role`, `visible`) VALUES
(16, '::1', 'sunny', 'sunny@gmail.com', '533c5ba8368075db8f6ef201546bd71a', 'Bangladesh', 'dhaka', '12343', 'mirpur', 'Capture.PNG', 'guest', 1),
(19, '::1', 'Mohammad', 'shakil@gmail.com', 'fbf832bc8d7e746434993cec0061a682', 'Bangladesh', 'Dhaka', '01867', 'Bashandhara', 'pocket-gadget-logo-template-design-260nw-608265875.png', 'admin', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
