-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 27, 2019 at 11:12 AM
-- Server version: 5.7.21
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vikat`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `verified` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admins_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `verified`, `created_at`, `updated_at`) VALUES
(1, 'Akshay Shil', 'akshayshil34@gmail.com', '$2y$10$0jRK14oE0Lh7PFwEyw.BiO1s6lvBxtYOwWTEYfYW5eIBV/90PGawS', 1, '2019-07-25 08:39:53', '2019-07-25 08:39:53');

-- --------------------------------------------------------

--
-- Table structure for table `client_messages`
--

DROP TABLE IF EXISTS `client_messages`;
CREATE TABLE IF NOT EXISTS `client_messages` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'enquiry',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `client_messages`
--

INSERT INTO `client_messages` (`id`, `name`, `mobile`, `email`, `message`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Akshay Shil', '7420087977', 'akshayshil34@gmail.com', 'erf', 'enquiry', '2019-07-25 08:34:03', '2019-07-25 08:34:03');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(19, '2019_07_19_102832_create_admins_table', 1),
(20, '2019_07_19_102846_create_verify_admins_table', 1),
(21, '2019_07_19_143038_create_sliders_table', 1),
(22, '2019_07_19_143620_create_products_table', 1),
(23, '2019_07_19_143634_create_product_images_table', 1),
(24, '2019_07_21_084330_create_password_changes_table', 1),
(25, '2019_07_25_123223_create_client_messages_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_changes`
--

DROP TABLE IF EXISTS `password_changes`;
CREATE TABLE IF NOT EXISTS `password_changes` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_changes`
--

INSERT INTO `password_changes` (`id`, `token`, `admin_id`, `created_at`, `updated_at`) VALUES
(4, '85209e0b4396dd24082b1b964ea2d5f81f16b4f2', '1', '2019-07-26 02:00:22', '2019-07-26 02:00:22');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `desc`, `price`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Guggal Dhoop Cup (Pack of 12 cups)', '### Origin\r\n- Small thorny shrub like tree is native to dry stony areas in central and northern India. The resin is harvested by scoring the bark of the tree growing in the wild.\r\n\r\n### Fragrance Message\r\n- All disruptive influence must be releared and only what has vital significance remains.\r\n- Mighty protective shield against every type of misfortune is created.\r\n- Powerful aromatic burst lead us out of rigidity & let\'s the energy flow freely to overcome blocks.\r\n- The awakening of consciousness creates a contact with the essence & masks can fall.\r\n- Aromatic impulse to give you trust in your strength it can lead you into the process of healing.', 650.00, 'Dhoop Cup', '2019-07-25 11:03:36', '2019-07-25 11:27:04'),
(2, 'Mahalaxmi Sambrani Dhoop Cup (Pack of 12 cups)', '### Sambrani \r\n- An influence that bring the process of leading to action & raising the question.\r\n- The law of life became clear when physical existence is endowed with spirituality.\r\n- The fine Vibration of ethereal forces gather & connect with the seeker.\r\n- Powerful Impulse that aims imparting sense of lightness & awakening the joy of life.', 600.00, 'Dhoop Cup', '2019-07-25 12:19:52', '2019-07-25 12:19:52'),
(3, '3-in-one Sambrani Dhoop Cup', '### Chandan\r\n- All obstructive and distructive forces are pacified. This leads to hormony & willingness to make contact.\r\n- Opening the heart & clearing the mind, inner peace & freshness join together for healing.\r\n- Recognzing the beginning & the end as two sides of the same coin & being able to let go of old burdens.\r\n\r\n### Lobhan\r\n- Gentle guidance in the direction of senstivity & opening for liberation from a state of paralysis.\r\n- The ability to concentrate with consciousness creates clarity.\r\n- A gentle magical mood arises & allows new trust in our own expressiveness to develop.\r\n- Devotedly surrendering to what is striving to manifest wanting to perceived.\r\n- Content from book Health & Harmony - B.Jain publishers(P) 1921, street no.10 chuna mandi paharganj,new delhi 11005\r\n\r\n### 3 in one Dhoop Cup\r\n - 3 in one dhoop cup include 3 type of incense which include Rose,Chandan and special floral Aroma.', 650.00, 'Dhoop Cup', '2019-07-25 12:27:37', '2019-07-25 12:27:37');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

DROP TABLE IF EXISTS `product_images`;
CREATE TABLE IF NOT EXISTS `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `url`, `name`, `product_id`, `created_at`, `updated_at`) VALUES
(1, '/storage/image/product-images/SP 01-ec5d82f40499594a80d62e2c8b6ae7073c994d75.jpg', 'SP 01.jpg', 1, '2019-07-25 11:45:06', '2019-07-25 11:45:06'),
(2, '/storage/image/product-images/SP 02-ec5d82f40499594a80d62e2c8b6ae7073c994d75.jpg', 'SP 02.jpg', 1, '2019-07-25 11:45:06', '2019-07-25 11:45:06'),
(3, '/storage/image/product-images/SP 03-ec5d82f40499594a80d62e2c8b6ae7073c994d75.jpg', 'SP 03.jpg', 1, '2019-07-25 11:45:06', '2019-07-25 11:45:06'),
(4, '/storage/image/product-images/SP 04-e26d392125d1b8bbc101f4416c652cfbd156c87e.jpg', 'SP 04.jpg', 2, '2019-07-25 12:20:22', '2019-07-25 12:20:22'),
(5, '/storage/image/product-images/SP 05-e26d392125d1b8bbc101f4416c652cfbd156c87e.jpg', 'SP 05.jpg', 2, '2019-07-25 12:20:22', '2019-07-25 12:20:22'),
(6, '/storage/image/product-images/SP 06-e26d392125d1b8bbc101f4416c652cfbd156c87e.jpg', 'SP 06.jpg', 2, '2019-07-25 12:20:22', '2019-07-25 12:20:22'),
(7, '/storage/image/product-images/SP 12-e26d392125d1b8bbc101f4416c652cfbd156c87e.jpg', 'SP 12.jpg', 2, '2019-07-25 12:20:22', '2019-07-25 12:20:22'),
(9, '/storage/image/product-images/SP 08-08e473de0ba6d8278e476613c0afdd30d55c208b.jpg', 'SP 08.jpg', 3, '2019-07-25 12:27:51', '2019-07-25 12:27:51'),
(10, '/storage/image/product-images/SP 09-08e473de0ba6d8278e476613c0afdd30d55c208b.jpg', 'SP 09.jpg', 3, '2019-07-25 12:27:51', '2019-07-25 12:27:51'),
(11, '/storage/image/product-images/SP 11-08e473de0ba6d8278e476613c0afdd30d55c208b.jpg', 'SP 11.jpg', 3, '2019-07-25 12:27:51', '2019-07-25 12:27:51');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

DROP TABLE IF EXISTS `sliders`;
CREATE TABLE IF NOT EXISTS `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) NOT NULL,
  `public_path` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `verify_admins`
--

DROP TABLE IF EXISTS `verify_admins`;
CREATE TABLE IF NOT EXISTS `verify_admins` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `admin_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `verify_admins`
--

INSERT INTO `verify_admins` (`id`, `admin_id`, `token`, `created_at`, `updated_at`) VALUES
(1, '1', '6cdb36077ef6b5ba7c504e754afee7ad0dbbe41e', '2019-07-25 08:39:53', '2019-07-25 08:39:53');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
