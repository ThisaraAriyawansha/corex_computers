-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2025 at 11:12 AM
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
-- Database: `udarata_computers`
--

-- --------------------------------------------------------

--
-- Table structure for table `bids`
--

CREATE TABLE `bids` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `bid_amount` decimal(10,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bids`
--

INSERT INTO `bids` (`id`, `product_id`, `bid_amount`, `created_at`, `updated_at`) VALUES
(1, 1, 1200.00, '2025-04-11 05:00:32', '2025-04-11 05:00:32'),
(2, 1, 1500.00, '2025-04-11 05:02:38', '2025-04-11 05:02:38');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `phone` varchar(45) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `username`, `password`, `fname`, `lname`, `phone`, `email`, `created_at`, `updated_at`) VALUES
(94, 'Thisara', '$2y$10$5/8UjsHHx9BVw8/BWks9lOjOv5rNNklk8VbndYAqr/kTYzJntDKK.', 'Thisara', 'ABC', '0765544563', 'thisara.a2001@gmail.com', '2025-04-10 08:21:56', '2025-04-10 08:21:56');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2025_01_29_080424_create_agents_table', 2),
(6, '2025_01_30_082217_create_estimators_table', 2),
(7, '2025_01_30_082304_create_draftmens_table', 2),
(8, '2025_02_05_110509_create_agentlistings_table', 2),
(9, '2025_02_05_123232_create_draftmen_new_plans_table', 3),
(10, '2025_02_06_134225_create_draftmen_floors_table', 4),
(11, '2025_02_07_075416_create_draftmen_new_estimates_table', 5),
(12, '2025_02_07_075826_create_draftmen_rooms_table', 5),
(13, '2025_02_07_075851_create_draftmen_bathrooms_table', 5),
(14, '2025_02_07_075930_create_draftmen_living_rooms_table', 5),
(15, '2025_02_07_075955_create_draftmen_kitchens_table', 5),
(16, '2025_02_07_080017_create_draftmen_staircases_table', 5),
(17, '2025_02_10_094939_create_draftmen_rooms_table', 6),
(18, '2025_02_10_095212_create_draftmen_staircases_table', 6),
(19, '2025_02_10_095452_create_draftmen_kitchens_table', 6),
(20, '2025_02_10_095620_create_draftmen_living_rooms_table', 6),
(21, '2025_02_10_095828_create_draftmen_bathrooms_table', 6),
(22, '2025_02_10_111130_create_statuses_table', 7),
(23, '2025_02_11_052657_create_draftmen_new_plans_table', 8),
(24, '2025_02_11_052953_create_draftmen_floors_table', 8),
(25, '2025_02_13_031642_create_tv_types_table', 9),
(26, '2025_02_13_050538_create_listings_table', 10);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `product_id`, `payment_id`, `qty`, `created_at`, `updated_at`) VALUES
(107, 11, 85, 1, '2025-03-14 02:45:44', '2025-03-14 02:45:44'),
(108, 11, 86, 1, '2025-03-14 02:47:00', '2025-03-14 02:47:00'),
(109, 7, 87, 1, '2025-03-14 02:52:02', '2025-03-14 02:52:02'),
(110, 6, 87, 1, '2025-03-14 02:52:02', '2025-03-14 02:52:02'),
(111, 7, 88, 1, '2025-03-14 02:53:51', '2025-03-14 02:53:51'),
(112, 6, 88, 1, '2025-03-14 02:53:51', '2025-03-14 02:53:51'),
(113, 5, 88, 1, '2025-03-14 02:53:51', '2025-03-14 02:53:51'),
(114, 7, 89, 1, '2025-03-14 05:34:46', '2025-03-14 05:34:46'),
(115, 6, 89, 1, '2025-03-14 05:34:46', '2025-03-14 05:34:46'),
(116, 5, 89, 1, '2025-03-14 05:34:46', '2025-03-14 05:34:46'),
(117, 7, 90, 1, '2025-03-14 05:37:16', '2025-03-14 05:37:16'),
(118, 6, 90, 1, '2025-03-14 05:37:16', '2025-03-14 05:37:16'),
(119, 5, 90, 1, '2025-03-14 05:37:16', '2025-03-14 05:37:16'),
(120, 5, 91, 1, '2025-03-23 21:39:32', '2025-03-23 21:39:32'),
(121, 11, 91, 1, '2025-03-23 21:39:32', '2025-03-23 21:39:32'),
(122, 5, 92, 1, '2025-03-23 21:42:57', '2025-03-23 21:42:57'),
(123, 11, 92, 1, '2025-03-23 21:42:57', '2025-03-23 21:42:57'),
(124, 5, 93, 1, '2025-03-23 21:44:02', '2025-03-23 21:44:02'),
(125, 11, 93, 1, '2025-03-23 21:44:02', '2025-03-23 21:44:02');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `address1` varchar(50) DEFAULT NULL,
  `address2` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `postal_code` varchar(50) DEFAULT NULL,
  `payment_status_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_statuses`
--

CREATE TABLE `payment_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `status_name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment_statuses`
--

INSERT INTO `payment_statuses` (`id`, `status_name`, `created_at`, `updated_at`) VALUES
(1, 'Pending', '2025-02-21 07:54:47', '2025-02-21 07:54:47'),
(2, 'Paid', '2025-02-21 07:55:05', '2025-02-21 07:55:05'),
(3, 'Fail', '2025-02-21 07:55:20', '2025-02-21 07:55:20');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `brand` varchar(100) NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  `tags` varchar(20) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `discounted_price` decimal(10,2) DEFAULT NULL,
  `retail_price` decimal(10,2) DEFAULT NULL,
  `warranty` varchar(100) DEFAULT NULL,
  `in_stock` varchar(50) DEFAULT NULL,
  `qty` int(11) DEFAULT 0,
  `status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deal_start` date DEFAULT NULL,
  `deal_end` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `brand`, `type`, `tags`, `description`, `discounted_price`, `retail_price`, `warranty`, `in_stock`, `qty`, `status_id`, `image`, `created_at`, `updated_at`, `deal_start`, `deal_end`) VALUES
(1, 'ASUS VIVOBOOK E1504G', 'ASUS', 'LAPTOPS', 'DEAL OF THE DAYS', 'Stamp your style on the world with Vivobook 15, the feature-packed laptop that makes it easy to get things done, anywhere. Everything about Vivobook 15 is bold and improved, from its powerful 13th Gen Intel® Core™ processor to its crisp and clear display, 180° lay-flat hinge, modern colors and sleek geometric design. Make a fresh start today with Vivobook 15!', 100000.00, 150000.00, '1 year Warranty', 'In Stock', 14, 1, 'ProductImages/0HozR3zsvSOYDszMIMjw.webp', '2025-02-16 23:08:19', '2025-04-11 03:55:54', '2025-04-11', '2025-04-25'),
(2, 'ASUS TUF GAMING F15', 'ASUS', 'LAPTOPS', 'Featured', 'Geared for serious gaming and rocking a slick new style, TUF Gaming F15 is a feature-packed Windows 11 Home gaming laptop with the power to carry you to victory. The new GeForce RTX 2050 GPU delivers fluid gameplay on, while the potent Intel Core i5 11th gen H-Series CPU is bolstered by improved cooling that amps CPU performance and keeps acoustics stealthy. A TUF’s military-grade durability keeps you on your best game anywhere.', 255000.00, 265000.00, '1 year Warranty', 'Out of Stock', 199, 1, 'ProductImages/ILX8bZGb31iWU9xP3BJA.webp', '2025-02-17 00:31:31', '2025-02-26 10:16:20', NULL, NULL),
(3, 'MSI STEALTH 16 MERCEDES-AMG', 'MSI', 'LAPTOPS', 'Top Rated', 'MSI Stealth series x Mercedes-AMG Motorsport BUILT TO PERFORM. The cornerstone of the AMG experience paired with MSI cooling technology paves the road to success in gaming. LUXURIOUS TOUCH The collaborative design seamlessly blends the subtle elegance of Mercedes-Benz with striking red accents that symbolize both the AMG performance and the spirited essence of MSI. ', 1225000.00, 1225000.00, '2 year Warranty', 'In Stock', 31, 1, 'ProductImages/yZnKtKssGYve9pLL8Fu2.webp', '2025-02-17 00:38:49', '2025-02-24 21:42:05', NULL, NULL),
(4, 'ASUS ZENBOOK 14X OLED', 'ASUS', 'LAPTOPS', 'Featured', 'Operating System: Windows 11 Home - ASUS recommends Windows 11 Pro for business', 255000.00, 255000.00, '3 year Warranty', 'In Stock', 14, 1, 'ProductImages/h1cR0DAazhORHgTCfuz3.webp', '2025-02-19 01:01:39', '2025-02-24 21:39:15', NULL, NULL),
(5, 'ACER ASPIRE 3', 'ACER', 'LAPTOPS', 'DEAL OF THE DAYS', 'Processor & Chipset: Processor Type: Ryzen™ 5, Processor Model: AMD Ryzen™ 5 7520U quad-core processor (up to 2 MB L2 cache, up to 4MB L3 cache, 2.8 GHz with boost up to 4.3 GHz)', 155000.00, 155000.00, '1 year Warranty', 'In Stock', 4, 1, 'ProductImages/sbowJlIg9gBnhSlKWKyw.webp', '2025-02-19 01:03:35', '2025-04-10 14:24:38', '2025-04-07', '2025-04-25'),
(6, 'ARRIVAL MSI THIN GF63 12UCX I5 12TH GEN', 'MSI', 'LAPTOPS', 'New Arrivals', 'Intel Core i5-12450H Processor', 252500.00, 252500.00, '1 year Warranty', 'Out of Stock', 94, 1, 'ProductImages/pXUdj3i6pB0MiVRE9VHN.webp', '2025-02-19 01:05:01', '2025-03-14 05:37:16', NULL, NULL),
(7, 'ASUS ROG STRIX HELIOS RGB GAMING CASE', 'ASUS', 'CASINGS', 'New Arrivals', 'Premium mid-tower gaming case with aluminum frame, tempered glass panels, and versatile cooling options.', 106000.00, 106000.00, '3 year Warranty', 'Out of Stock', 96, 1, 'ProductImages/mUmCYPEpnBwwxmrPs55l.webp', '2025-02-19 01:06:08', '2025-03-14 05:37:16', NULL, NULL),
(8, 'IPHONE 16 PRO MAX', 'APPLE', 'APPLE PRODUCTS', 'Top Rated', 'Apple\'s latest flagship smartphone featuring an advanced camera system, A18 Pro chip, and Super Retina XDR display.', 520000.00, 520000.00, '1 year Warranty', 'Out of Stock', 99, 1, 'ProductImages/KbC0NCKd7SA0WLMO3T8b.webp', '2025-02-19 01:19:35', '2025-02-24 03:33:15', NULL, NULL),
(9, 'REDRAGON JUNO G818 WIRELESS GAMEPAD', 'REDRAGON', 'GAMING CONSOLE', 'Top Rated', 'A high-performance wireless gamepad with Bluetooth and wired connectivity, featuring a 6-axis sensor, high-precision 3D joystick, and backlit buttons for an immersive gaming experience.', 10400.00, 10400.00, '1 year Warranty', 'In Stock', 200, 1, 'ProductImages/e7Ou5i9na1agPxbD6xOO.webp', '2025-02-24 22:04:58', '2025-02-24 22:04:58', NULL, NULL),
(10, 'G.SKILL TRIDENT Z NEO RGB 16GB (8X2) 3200MHZ MEMORY', 'TRIDENT', 'RAM', 'Featured', 'High-performance DDR4 memory kit with RGB lighting, optimized for gaming and overclocking.', 18000.00, 18000.00, '1 year Warranty', 'In Stock', 20, 1, 'ProductImages/yg1ipxEcgRqQqn1n6wuK.webp', '2025-02-24 22:07:46', '2025-02-24 22:07:46', NULL, NULL),
(11, 'MSI PRO B760M-P DDR5 MOTHERBOARD', 'MSI', 'MOTHERBOARD', 'New Arrivals', 'MSI PRO B760M-P DDR5 motherboard supports Intel® Core™ 14th/13th/12th Gen processors with DDR5 memory, offering features like PCIe 4.0, dual-channel memory, multiple USB ports, HDMI, DisplayPort, and RAID support for an efficient system.', 50000.00, 50000.00, '2 year Warranty', 'In Stock', 195, 1, 'ProductImages/F3m0jBZWjauOUuhcw9lN.webp', '2025-02-25 07:55:58', '2025-03-23 21:44:02', NULL, NULL),
(12, 'AMD RYZEN 5 3600 PROCESSOR', 'AMD', 'PROCESSOR', 'Top Rated', 'A 6-core, 12-thread processor with a base clock of 3.6GHz and a max boost clock of 4.2GHz. Built on 7nm technology, it supports PCIe 4.0 and offers excellent performance for gaming and productivity.', 39000.00, 39000.00, '3 year Warranty', 'In Stock', 200, 1, 'ProductImages/gHKhV8KpbV47HolMwByD.webp', '2025-02-25 07:56:52', '2025-02-25 07:56:52', NULL, NULL),
(13, 'CORSAIR CV550 — 550 WATT 80 PLUS® BRONZE CERTIFIED PSU', 'CORSAIR', 'POWER SUPPLY', 'Top Rated', 'The CORSAIR CV550 is a reliable 550W power supply with 80 PLUS Bronze certification, ensuring energy efficiency and stable power delivery. It features multiple protection mechanisms and a compact ATX form factor for seamless compatibility.', 211000.00, 211000.00, '1 year Warranty', 'In Stock', 200, 1, 'ProductImages/OdESwmk59iljdrVPqhEc.webp', '2025-02-25 07:57:51', '2025-02-25 07:57:51', NULL, NULL),
(14, 'GTX 1050TI 4GB Graphics Card - USED', 'GTX', 'GRAPHIC CARDS', 'Top Rated', 'The GeForce® GTX 1050 Ti 4GB Graphics Card offers impressive performance with a memory clock of 7008 MHz, 768 CUDA® cores, and support for high resolutions up to 7680x4320. Ideal for gaming and multimedia applications.', 30000.00, 30000.00, '1 year Warranty', 'Used', 200, 1, 'ProductImages/cvyBvqyzSRlvYQxr5kf1.webp', '2025-02-25 07:58:39', '2025-02-25 07:58:39', NULL, NULL),
(15, 'ABCDE', 'Apple', 'APPLE PRODUCTS', 'Top Rated', 'Apple Intelligence is the personal intelligence system that helps you write, express yourself, and get things done effortlessly. With groundbreaking privacy protections, it gives you peace of mind that no one else can access your data — not even Apple.', 20000.00, 25000.00, '1 year Warranty', 'In Stock', 200, 1, 'ProductImages/e5XjIKJPsC7ij6WEYQ5B.jpg', '2025-02-26 10:13:05', '2025-04-11 05:36:00', NULL, NULL),
(16, 'MSI MAG CORELIQUID 240R V2 COOLER', 'MSI', 'COOLING AND LIGHTING', 'DEAL OF THE DAYS', 'The MSI MAG CORELIQUID 240R V2 is an all-in-one liquid CPU cooler featuring a 240mm radiator, dual ARGB fans, and a rotatable pump head. Designed for efficient cooling and compatibility with the latest Intel and AMD sockets.', 38000.00, 37000.00, '3 year Warranty', 'In Stock', 1000, 1, 'ProductImages/jQ55YycLtL8rcVHkxfX8.jpg', '2025-04-10 14:22:09', '2025-04-10 14:22:09', '2025-04-09', '2025-04-14');

-- --------------------------------------------------------

--
-- Table structure for table `product_features`
--

CREATE TABLE `product_features` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `feature_name` varchar(255) NOT NULL,
  `feature_value` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_features`
--

INSERT INTO `product_features` (`id`, `product_id`, `feature_name`, `feature_value`, `created_at`, `updated_at`) VALUES
(3, 8, 'Capacity', '256GB', '2025-02-20 02:02:19', '2025-02-20 02:02:19'),
(4, 9, 'Warranty', '1 year', '2025-02-24 22:05:41', '2025-02-24 22:05:41'),
(5, 9, 'Compatibility', 'PS4, PS3, iOS 13.0+, Android 10.0+', '2025-02-24 22:06:03', '2025-02-24 22:06:03'),
(6, 9, 'Connectivity', 'Bluetooth 4.2 & Wired', '2025-02-24 22:06:33', '2025-02-24 22:06:33'),
(7, 9, 'Motion Control', '6-Axis Sensor', '2025-02-24 22:06:49', '2025-02-24 22:06:49'),
(8, 15, 'abcde', 'abbb', '2025-02-26 10:14:19', '2025-02-26 10:14:19'),
(10, 1, 'abcddd', 'ssss', '2025-03-14 05:11:18', '2025-03-14 05:11:18'),
(11, 15, 'Display', 'Super Retina XDR display', '2025-04-11 05:49:42', '2025-04-11 05:49:42'),
(12, 8, 'Display', 'Always-On display', '2025-04-11 05:50:35', '2025-04-11 05:50:35');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image_path`, `created_at`, `updated_at`) VALUES
(3, 1, 'OtherImage/RkjW4BxKbP7AZ2ZlbgT2.webp', '2025-02-19 02:27:31', '2025-02-19 02:27:31'),
(4, 1, 'OtherImage/Dq0iM5yJcYLV5AOZ8myC.webp', '2025-02-19 02:27:51', '2025-02-19 02:27:51'),
(6, 2, 'OtherImage/P4vM2Lwb3WTNvJ8xGqT8.webp', '2025-02-19 04:43:13', '2025-02-19 04:43:13'),
(7, 2, 'OtherImage/b45vKI9haTJ88v2EG5Wr.webp', '2025-02-19 22:21:56', '2025-02-19 22:21:56');

-- --------------------------------------------------------

--
-- Table structure for table `product_status`
--

CREATE TABLE `product_status` (
  `id` int(11) NOT NULL,
  `status_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_status`
--

INSERT INTO `product_status` (`id`, `status_name`) VALUES
(1, 'Active'),
(2, 'Inactive');

-- --------------------------------------------------------

--
-- Table structure for table `product_tags`
--

CREATE TABLE `product_tags` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `tag_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_tags`
--

INSERT INTO `product_tags` (`id`, `product_id`, `tag_name`) VALUES
(1, 1, 'Top Rated');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$iVI2irJim.TiCZ72ZpeYH.CU9jI4DEyDO8KBR5x4TlFUa3IlPSZOK', 'cIMjBnI0PhLIGbrlRiMX8hzndUNn9XKAqsQZ4EWBcSRH2eM0qeg2V1cNXMlY', '2025-01-23 05:27:35', '2025-03-14 05:22:10'),
(2, 'admin', 'admin1@gmail.com', NULL, '$2y$10$KYqhM5R/rmpnoMzbup7tU./97Nmre2xlLfmIbekVC4IHVHHJ2jgHW', NULL, '2025-02-12 20:32:26', '2025-02-12 20:32:26'),
(3, 'admin', 'admin2@gmail.com', NULL, '$2y$10$UmNm07/.QVkgPsesc9Oa1uqm/sbyBiwlTce09.HmyiY3FP6j6zZwm', NULL, '2025-02-13 02:49:11', '2025-02-13 02:49:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bids`
--
ALTER TABLE `bids`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `payment_status_id` (`payment_status_id`);

--
-- Indexes for table `payment_statuses`
--
ALTER TABLE `payment_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_features`
--
ALTER TABLE `product_features`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_status`
--
ALTER TABLE `product_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_tags`
--
ALTER TABLE `product_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bids`
--
ALTER TABLE `bids`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `payment_statuses`
--
ALTER TABLE `payment_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `product_features`
--
ALTER TABLE `product_features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product_status`
--
ALTER TABLE `product_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_tags`
--
ALTER TABLE `product_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payments_ibfk_3` FOREIGN KEY (`payment_status_id`) REFERENCES `payment_statuses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_features`
--
ALTER TABLE `product_features`
  ADD CONSTRAINT `product_features_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_tags`
--
ALTER TABLE `product_tags`
  ADD CONSTRAINT `product_tags_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
