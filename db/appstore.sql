-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 10, 2024 at 11:04 PM
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
-- Database: `appstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(6) NOT NULL,
  `image` varchar(101) NOT NULL,
  `title` varchar(101) NOT NULL,
  `description` varchar(181) DEFAULT NULL,
  `meta_description` varchar(101) NOT NULL,
  `meta_keywords` varchar(101) NOT NULL,
  `category` varchar(101) NOT NULL,
  `subcategory` varchar(101) NOT NULL,
  `subscription_fees` int(6) NOT NULL,
  `sell_price` int(6) NOT NULL,
  `product_link1` mediumtext NOT NULL,
  `product_link2` mediumtext NOT NULL,
  `product_source_link` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `image`, `title`, `description`, `meta_description`, `meta_keywords`, `category`, `subcategory`, `subscription_fees`, `sell_price`, `product_link1`, `product_link2`, `product_source_link`, `created_at`, `status`) VALUES
(1, '', 'education', 'education', '', '', 'education', '', 750, 1500, '', '', '', '2024-11-10 15:04:32', 1),
(2, '', 'Car Show Room', 'Car Show Room', '', '', 'Cars', 'Show Room', 750, 1500, '', '', '', '2024-11-10 15:04:32', 1),
(3, '', 'Jobs website', 'Jobs', '', '', 'Jobs', 'Jobs Portal', 750, 1500, '', '', '', '2024-11-10 15:04:32', 1),
(4, '', 'resume website', 'resume ', '', '', 'Jobs', 'resume', 750, 1600, '', '', '', '2024-11-10 15:04:32', 1),
(5, '', 'Shopping Website', 'Shopping', '', '', 'Shopping', 'Shopping', 750, 1500, '', '', '', '2024-11-10 15:04:32', 1),
(6, '', 'POS Web App', 'POS', '', '', 'POS', 'POS', 2500, 5000, '', '', '', '2024-11-10 15:04:32', 1),
(7, '', 'Medical Website', 'Website', '', '', 'Medicals', 'Hospitals', 750, 1600, '', '', '', '2024-11-10 15:04:32', 1),
(8, '', 'Portfolio Website', 'Portfolio Website', '', '', 'Portfolios', 'Personal Portfolio', 750, 1500, '', '', '', '2024-11-10 15:04:32', 1),
(9, '', 'Real Estate', 'Real Estate', '', '', 'Real Estate', 'Real Estate', 1500, 3000, '', '', '', '2024-11-10 15:04:32', 1),
(10, '', 'Layout Design', 'Website Layout Design', '', '', 'Layout Design', 'Landing Page', 750, 1500, '', '', '', '2024-11-10 15:04:32', 1),
(11, '', 'Manufacturing', 'Industry Website', '', '', 'Manufacturing', 'Steel Making', 2000, 4000, '', '', '', '2024-11-10 15:04:32', 1),
(12, '', 'Business Dashboard', 'Business Dashboard', '', '', 'Dashboards', 'Business Dashboards', 2000, 4000, '', '', '', '2024-11-10 15:04:32', 1),
(13, '', 'Restaurant Website', 'Restaurant Website', '', '', 'Foods', 'Foods Delivery', 2000, 4000, '', '', '', '2024-11-10 15:04:32', 1),
(14, '', 'Products Catalog', 'Products Catalog', '', '', 'Products Catalog', 'Product Card', 750, 1500, '', '', '', '2024-11-10 15:04:32', 1),
(15, '', 'Corporate Website', 'Corporate Website', '', '', 'Corporates', 'Small Business Size', 750, 1500, '', '', '', '2024-11-10 15:04:32', 1),
(16, '', 'Transportation Website', 'Transportation Website', '', '', 'Transportations', 'Shipping Transportations', 1200, 2400, '', '', '', '2024-11-10 15:04:32', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
