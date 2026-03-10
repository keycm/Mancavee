-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 08, 2026 at 08:23 AM
-- Server version: 11.8.3-MariaDB-log
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u763865560_kanto_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_artists`
--

CREATE TABLE `about_artists` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `role` varchar(100) NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`id`, `title`, `content`, `image_path`, `is_active`, `created_at`) VALUES
(1, 'Artist', 'Hello', 'news_69916c43155971.88946523.jpg', 1, '2026-02-15 06:48:35'),
(2, 'Welcome', 'qwerty', 'news_69916ca35ac4c3.36968819.jpg', 1, '2026-02-15 06:50:11'),
(3, 'sdfghjklqwert', 'qwerty', 'news_69916cc60c8237.51568158.jpg', 1, '2026-02-15 06:50:46'),
(4, 'qwert', 'qwerty', 'news_69916cd7e7dff8.74156170.jpg', 0, '2026-02-15 06:51:03'),
(5, 'test', 'test', '', 0, '2026-03-01 12:36:39');

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

CREATE TABLE `artists` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `style` varchar(100) DEFAULT NULL,
  `bio` text DEFAULT NULL,
  `quote` text DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`id`, `name`, `style`, `bio`, `quote`, `image_path`, `created_at`) VALUES
(26, 'Manny Cabrera', '', 'Manny Cabrera, a distinguished artist hailing from the vibrant province of Pampanga, has etched his name in the annals of contemporary art with his distinctive style and imaginative flair. Having honed his craft at the prestigious University of the East, Cabrera’s journey into the realm of artistic expression was further enriched by his familial ties to the renowned Benedicto “BenCab” Cabrera, a luminary in the realm of visual arts and a National Artist.\r\n\r\nAt the intersection of animation, surrealism, and fantasy, Mannys painting was inspired from the enchanting realm of animation, His art imbues creating with a dynamic energy, breathing life into his characters with every stroke of the brush. Even in the absence of dialogue, his creations speak volumes, each gesture and expression serving as a window into the complex inner worlds of his subjects.\r\n\r\nThrough his art, Manny Cabrera invites viewers to engage in a dialogue with the surreal and the fantastical, encouraging them to explore the depths of their own imagination and embrace the inherent magic of the world around them.\r\n', '', '1771152485_artist_6ec38535-efcb-4a1f-9bca-df784b79aac9.jpeg', '2026-02-08 08:18:25'),
(27, 'Vince', 'Pencil', '', 'Hello world Goodbye', '1770538705_artist_18b68abd-1cee-405e-adbe-1b4fb5ef3b87.jpg', '2026-02-08 08:18:25');

-- --------------------------------------------------------

--
-- Table structure for table `artist_likes`
--

CREATE TABLE `artist_likes` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `artist_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `artist_likes`
--

INSERT INTO `artist_likes` (`id`, `user_id`, `artist_id`, `created_at`) VALUES
(2, 1, 1, '2025-11-29 08:41:20'),
(3, 1, 2, '2025-11-29 11:35:24');

-- --------------------------------------------------------

--
-- Table structure for table `artworks`
--

CREATE TABLE `artworks` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `artist` varchar(255) NOT NULL,
  `category` varchar(100) DEFAULT NULL,
  `medium` varchar(100) DEFAULT NULL,
  `year` int(4) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `size` varchar(100) DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `status` enum('Available','Reserved','Sold') DEFAULT 'Available',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `artworks`
--

INSERT INTO `artworks` (`id`, `title`, `artist`, `category`, `medium`, `year`, `description`, `price`, `size`, `image_path`, `status`, `created_at`) VALUES
(47, 'ESTUDYANTE CLUES', 'Honesto Guirella III', '', 'Mixed Media Sculpture', 2025, '', 60000.00, '16 x 5 x 5 Inches', '1770098310_ESTUDYANTE CLUES.png', 'Available', '2026-02-03 05:58:30'),
(48, 'BLACK MANILA', 'Honesto Guirella III', '', 'Aluminum in Frame', 2025, '', 100000.00, '27 x 40 Inches', '1770098417_Black manila.png', 'Available', '2026-02-03 06:00:17'),
(49, 'The Head Hunter', 'ANGELO ROXAS', '', 'Oil on Canvas', 2024, '\"𝐓𝐇𝐄 𝐇𝐄𝐀𝐃 𝐇𝐔𝐍𝐓𝐄𝐑” A solo exhibition by Angelo Roxas⁣⁣⁣\r\n⁣⁣⁣\r\n⁣⁣⁣\r\nHis painting, \"𝐓𝐇𝐄 𝐇𝐄𝐀𝐃 𝐇𝐔𝐍𝐓𝐄𝐑,\" is based on a vintage photograph of a Bontoc Igorot from the time when they were active headhunters. The work masterfully captures the layered complexities of the nation\'s indigenous traditions, the colonial gaze, and the modern quest for self-determination, amalgamated with influences from portraiture, tattoo culture, and contemporary political commentary. The addition of the crown and the overlaid text \"Pusong Mandirigma\" (𝘞𝘢𝘳𝘳𝘪𝘰𝘳 𝘏𝘦𝘢𝘳𝘵) disrupts the archival image, compelling the viewer to re-evaluate the subject as a figure of strength and defiance rather than a relic of the past.⁣⁣⁣', 87999.99, '4 x 4 ft', '1770098557_THE HEAD HUNTER.png', 'Available', '2026-02-03 06:02:37'),
(50, 'SUPOT NG PULUBI', 'LOURD DE VERYA', '', 'Acrylic ong Canvas', 2025, '', 16650.00, '85 x 50 Inches', '1770098683_supot ng pulubi.png', 'Available', '2026-02-03 06:04:43'),
(51, '\"TUWING GABI SA ESKINITA NG KALYE SAN JOSE 1, 2 AND 3\" ', 'DING ROYALES', '', 'Acrylic on Canvas', 2021, '', 100001.98, '36 x 12 Inches', '1770098824_TUWING GABI SA ESKINITA NG.png', 'Available', '2026-02-03 06:07:04'),
(52, 'TIG ISANG YARDA 1 AND 2', 'DING ROYALES', '', 'Acrylic on Canvas', 2024, '', 133300.00, '36 x 24 Inches', '1770098961_TIG ISANG YARDA 1 AND 2.png', 'Available', '2026-02-03 06:09:21'),
(53, 'WHISPER BENEATH THE WATER', 'Jonet Carpio', '', 'Acrylic on Canvas', 2025, '', 160000.00, '48 x 36 Inches', '1770099052_WHISPER BENEATH THE WATER.png', 'Available', '2026-02-03 06:10:52'),
(54, 'Harvest', 'JAO MAPA', '', 'Acrylic on Canvas', 2020, '', 58330.00, '32 x 22 Inches', '1770099180_HARVEST.png', 'Available', '2026-02-03 06:13:00'),
(56, 'Candle Vendors', 'JAO MAPA', '', 'Acrylic on Canvas', 2020, '', 58330.00, '32 x 22 Inches', '1770099255_Candle vendors.png', 'Available', '2026-02-03 06:14:15'),
(57, 'LUMINOUS ECHO', 'Jonet Carpio', '', 'Mixed Media on Canvas', 2025, '', 70000.00, '36 x 24 Inches', '1770099313_Luminous Echo.png', 'Available', '2026-02-03 06:15:13'),
(58, 'Traffic', 'JAO MAPA', '', 'Acrylic on Canvas', 2022, '', 100000.00, '38 x 31 Inches', '1770099323_Traffic.png', 'Available', '2026-02-03 06:15:23'),
(59, 'PAG-GISING SA 6 NA TAONG BANGUNGOT', 'PETER ABORDO', '', 'Oil on Canvas', 2025, '', 40000.00, '18 x 24 Inches', '1770099539_PAG-GISING SA 6 NA TAONG BANGUNGOT.png', 'Available', '2026-02-03 06:18:59'),
(61, 'LUSAW', 'PETER ABORDO', '', 'Oil on Canvas', 2025, '', 45000.00, '23 x 23 Inches', '1770099611_lusaw.png', 'Available', '2026-02-03 06:20:11'),
(62, 'CELESTIAL ECHOES OF FRAGMENTE MIND', 'Jonet Carpio', '', 'Mixed Media on Canvas', 2025, '', 70000.00, '33 x 22 Inches', '1770099654_Celestial Echoes of a Fragmented Mind.png', 'Available', '2026-02-03 06:20:54'),
(64, 'ANG DALAWANG URI NG MANGHAHASIK', 'PETER ABORDO', '', 'Oil on Canvas', 2025, '', 140000.00, '36 x 48 Inches', '1770099687_ang dalawang uri ng manghahasik.png', 'Available', '2026-02-03 06:21:27'),
(65, 'EYES OF THE COSMOS', 'Jonet Carpio', '', 'Mixed Media on Canvas', 2025, '', 90000.00, '33 x 22 Inches', '1770100030_Eyes of the Cosmos.png', 'Available', '2026-02-03 06:27:10'),
(66, 'MASKARA', 'Ramcos Nulud', '', 'Acrylic on Canvas', 2025, '', 80000.00, '4 x 3 ft', '1770100122_Maskara.png', 'Available', '2026-02-03 06:28:42'),
(67, 'FLOWER GIRL', 'Ramcos Nulud', '', 'Acrylic on Canvas', 2024, '', 110000.00, '4 x 4 ft', '1770100240_Flower Girl.png', 'Available', '2026-02-03 06:30:40'),
(69, 'MONKEY', 'Ramcos Nulud', '', 'Acrylic on Canvas', 2023, '', 100000.00, '4 x 4 ft', '1770100329_Monkey.png', 'Available', '2026-02-03 06:32:09'),
(72, 'SAMURAI III', 'Ramcos Nulud', '', 'Acrylic on Canvas', 2025, '', 220000.00, '4 x 3 ft', '1770100411_Samurai III.png', 'Available', '2026-02-03 06:33:31'),
(73, 'BLOSSOM', 'Ramcos Nulud', '', 'Acrylic on Canvas', 2024, '', 200000.00, '5 x 4 ft', '1770100475_Blossom.png', 'Available', '2026-02-03 06:34:35'),
(74, 'FRAGMENT AMONG US ', 'MARK KENNETH BAMBICO', '', 'Acrylic on Canvas', 2025, '', 11500.00, '12 x 12 Inches', '1770102805_Fragment Among Us.png', 'Available', '2026-02-03 06:36:09'),
(77, 'HEAD CRUSHER', 'MARK KENNETH BAMBICO', '', 'Acrylic on Canvas', 2025, '', 18500.00, '24 x 20 Inches', '1770100683_Head Crusher.png', 'Available', '2026-02-03 06:38:03'),
(78, 'HEAD STRONG', 'MARK KENNETH BAMBICO', '', 'Acrylic on Canvas', 2025, '', 11500.00, '12 x 12 Inches', '1770100762_Head Strong.png', 'Available', '2026-02-03 06:39:06'),
(79, 'COLD SESON', 'MARK KENNETH BAMBICO', '', 'Acrylic on Canvas', 2025, '', 18500.00, '20 x 20 Inches', '1770100850_Cold Seson.png', 'Available', '2026-02-03 06:40:50'),
(82, 'TIGHT JAM', 'MARK KENNETH BAMBICO', '', 'Acrylic on Canvas', 2023, '', 65000.00, '4 x 6 ft', '1770100957_Tight Jam.png', 'Available', '2026-02-03 06:42:37'),
(83, 'SELF ASSESSMENT', 'MARK KENNETH BAMBICO', '', 'Acrylic on Canvas', 2024, '', 65000.00, '4 x 6 ft', '1770101023_Self Assessment.png', 'Available', '2026-02-03 06:43:43'),
(84, 'FOUR PS (Series 1)', 'Melvin Culaba', '', 'Graphite on Canvas', 2025, '', 37000.00, '18 x 18 Inches', '1770101203_Four Ps(Series 1).png', 'Available', '2026-02-03 06:46:43'),
(85, 'FOUR PS (Series 2)', 'Melvin Culaba', '', 'Graphite on Canvas', 2025, '', 37000.00, '18 x 18 Inches', '1770101288_Four Ps(Series 2).png', 'Available', '2026-02-03 06:48:08'),
(86, 'FOUR PS (Series 3)', 'Melvin Culaba', '', 'Graphite on Canvas', 2025, '', 37000.00, '18 x 18 Inches', '1770101369_Four Ps(Series 3).png', 'Available', '2026-02-03 06:49:29'),
(87, 'FOUR PS (Series 4)', 'Melvin Culaba', '', 'Graphite on Canvas', 2025, '', 37000.00, '18 x 18 Inches', '1770101423_Four Ps(Series 4).png', 'Available', '2026-02-03 06:50:23'),
(89, 'LOUIS HAVIER MIST', 'Ara', '', 'Mixed Media on Canvas', 2025, '', 11500.00, '20 x 13 cm', '1770101660_Louis Xavier Mist.png', 'Available', '2026-02-03 06:54:20'),
(90, 'CRYSTAL HARVEST', 'Ara', '', 'Liquid Glass', 2025, '', 35000.00, '24 x 6 x 6 Inches', '1770101767_Crystal Harvest.png', 'Available', '2026-02-03 06:56:07'),
(91, 'ESPIRITU NI MIMING', 'Ara', '', 'Liquid Glass', 2025, '', 13500.00, '10 x 10 x 4 Inches', '1770101861_Espiritu ni Miming.png', 'Available', '2026-02-03 06:57:41'),
(92, 'BROKEN DREAMS', 'Ara', '', 'Liquid Glass', 2025, '', 30000.00, '24 x 24 Inches', '1770101941_Broken Dreams.png', 'Available', '2026-02-03 06:59:01'),
(93, 'SUNBIRD', 'Ara', '', 'Watercolor on tissue paper in Liquid Glass', 2025, '', 12500.00, '21 x 21 cm', '1770102051_Sunbird.png', 'Available', '2026-02-03 07:00:51'),
(94, 'MAMBABATOK', 'Ara', '', 'Watercolor on tissue paper in Liquid Glass', 2025, '', 9500.00, '10 x 16 cm', '1770102120_Mambabatok.png', 'Available', '2026-02-03 07:02:00'),
(95, 'SWAG (KAWS)', 'Jun Talanay', '', 'Acrylic on Canvas', 2025, '', 15000.00, '15 x 19Inches', '1770103314_SWAG (KAWS).png', 'Sold', '2026-02-03 07:21:54'),
(96, 'KOTA NA (SORBETORO)', 'Jun Talanay', '', 'Acrylic on Canvas', 2025, '', 15000.00, '15 x 19 Inches', '1770103405_KOTA NA (SORBETERO).png', 'Available', '2026-02-03 07:23:25'),
(97, 'MAZ - Z', 'Jun Talanay', '', 'Acrylic on Canvas', 2025, '', 35000.00, '24 x 30 Inches', '1770103455_MAZ-Z.png', 'Available', '2026-02-03 07:24:15'),
(98, 'V5', 'Jun Talanay', '', 'Acrylic on Canvas', 2025, '', 35000.00, '24 x 30 Inches', '1770103500_V5.png', 'Available', '2026-02-03 07:25:00'),
(99, 'DIAMOS', 'Jun Talanay', '', 'Acrylic on Canvas', 2025, '', 35000.00, '24 x 30 Inches', '1770103579_DIAMOS.png', 'Available', '2026-02-03 07:26:19');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `artwork_id` int(11) DEFAULT NULL,
  `service` varchar(100) DEFAULT NULL,
  `vehicle_type` varchar(100) DEFAULT NULL,
  `vehicle_model` varchar(100) DEFAULT NULL,
  `preferred_date` date DEFAULT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `special_requests` text DEFAULT NULL,
  `valid_id_image` varchar(255) DEFAULT NULL,
  `status` enum('pending','approved','rejected','completed','cancelled') DEFAULT 'pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL,
  `is_rated` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `user_id`, `artwork_id`, `service`, `vehicle_type`, `vehicle_model`, `preferred_date`, `full_name`, `phone_number`, `special_requests`, `valid_id_image`, `status`, `created_at`, `deleted_at`, `is_rated`) VALUES
(52, 7, NULL, 'full paint job', 'sendan', '2010', '2025-11-08', 'jem', '09999999999', 'full', NULL, 'approved', '2025-10-01 15:28:00', '2025-11-17 22:03:47', 0),
(53, 7, NULL, 'retouch', 'sendan', '2', '2025-10-14', 'adasdasd', '1', 'wqe', NULL, 'approved', '2025-10-12 03:16:58', '2025-11-17 22:09:06', 0),
(54, 7, NULL, 'jjjj', 'sendan', '1', '2025-10-13', 'wqe', '09342423424', 'we', NULL, 'completed', '2025-10-12 03:21:57', NULL, 0),
(59, 34, NULL, '', '', '', '2025-11-14', 'Kanto', '', '', NULL, 'approved', '2025-11-14 03:42:51', '2025-11-17 22:09:13', 0),
(60, 34, NULL, '', '', '', '2025-11-14', 'Kanto', '', '', NULL, 'approved', '2025-11-14 03:43:06', '2025-11-17 22:09:11', 0),
(61, 34, NULL, '', '', '', '2025-11-14', 'Kanto', '', '', NULL, 'approved', '2025-11-14 03:43:12', '2025-11-17 22:09:09', 0),
(62, 34, NULL, '', '', '', '2025-11-14', 'Kanto', '', '', NULL, 'rejected', '2025-11-14 03:43:19', '2025-11-14 15:00:04', 0),
(64, 1, NULL, 'Girl with a Pearl Earring', '', '', '2025-11-30', 'Vincent paul Pena', '09334257317', 'I want this \r\n', NULL, '', '2025-11-29 03:58:29', NULL, 0),
(65, 1, NULL, '', '', '', '2025-12-05', '', '', '', NULL, 'approved', '2025-11-29 04:02:28', NULL, 0),
(66, 1, NULL, 'Girl with a Pearl Earring', '', '', '2025-11-30', 'Vincent paul Pena', '09334257317', 'selkjtredfghjgggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggg', NULL, '', '2025-11-29 04:03:11', NULL, 0),
(67, 1, NULL, 'Girl with a Pearl Earring', '', '', '2025-12-01', 'Vincent paul Pena', '09334257317', 'thank you', NULL, '', '2025-11-29 05:02:55', NULL, 0),
(68, 1, NULL, 'meee', '', '', '2025-11-30', 'Vincent paul Pena', '09334257317', 'geee', NULL, '', '2025-11-29 05:18:03', NULL, 0),
(69, 1, NULL, '', '', '', '2025-12-01', '', '', '', NULL, '', '2025-11-29 05:23:30', NULL, 0),
(70, 1, NULL, '', '', '', '2025-12-04', '', '', '', NULL, '', '2025-11-29 07:41:36', NULL, 0),
(71, 1, NULL, 'meee', '', '', '2025-11-30', 'Vincent paul Pena', '09334257317', 'thank you ', NULL, '', '2025-11-29 07:48:48', '2025-11-30 05:44:44', 0),
(72, 1, NULL, 'meee', '', '', '2025-11-29', 'Vincent paul Pena', '09334257317', 'geee', NULL, 'approved', '2025-11-29 07:50:51', '2025-11-29 18:13:34', 0),
(73, 40, 7, 'Starryyy', '', '', '2025-12-06', '', '', '', NULL, 'approved', '2025-11-29 14:49:49', NULL, 0),
(74, 1, 7, 'Starryyy', '', '', '2025-11-30', 'VIncent paul Pena', '09334257317', 'hjiopojh', NULL, 'approved', '2025-11-29 15:38:37', NULL, 0),
(75, 1, 30, 'BLACK MANILA', '', '', '2025-11-30', 'VIncent paul ', '09334257317', 'wertghyjkl', NULL, 'completed', '2025-11-30 10:04:11', NULL, 0),
(76, 50, 29, 'ESTUDYANTE CLUES', '', '', '2025-12-11', 'kujuju', '00000000000', 'lkoko,', NULL, 'pending', '2025-11-30 13:50:22', NULL, 0),
(77, 50, 29, 'ESTUDYANTE CLUES', '', '', '2025-12-11', 'kujuju', '00000000000', 'lkoko,', NULL, 'pending', '2025-11-30 13:50:22', NULL, 0),
(78, 50, 29, 'ESTUDYANTE CLUES', '', '', '2025-12-11', 'kujuju', '00000000000', 'lkoko,', NULL, 'pending', '2025-11-30 13:50:22', NULL, 0),
(79, 50, 29, 'ESTUDYANTE CLUES', '', '', '2025-12-11', 'kujuju', '00000000000', 'lkoko,', NULL, 'pending', '2025-11-30 13:50:22', NULL, 0),
(80, 50, 29, 'ESTUDYANTE CLUES', '', '', '2025-12-11', 'kujuju', '00000000000', 'lkoko,', NULL, 'pending', '2025-11-30 13:50:23', NULL, 0),
(81, 50, 29, 'ESTUDYANTE CLUES', '', '', '2025-12-11', 'kujuju', '00000000000', 'lkoko,', NULL, 'pending', '2025-11-30 13:50:23', NULL, 0),
(82, 50, 29, 'ESTUDYANTE CLUES', '', '', '2025-12-11', 'kujuju', '00000000000', 'lkoko,', NULL, 'pending', '2025-11-30 13:50:23', NULL, 0),
(83, 50, 29, 'ESTUDYANTE CLUES', '', '', '2025-12-11', 'kujuju', '00000000000', 'lkoko,', NULL, 'pending', '2025-11-30 13:50:23', NULL, 0),
(84, 50, 29, 'ESTUDYANTE CLUES', '', '', '2025-12-11', 'kujuju', '00000000000', 'lkoko,', NULL, 'pending', '2025-11-30 13:50:23', NULL, 0),
(85, 50, 29, 'ESTUDYANTE CLUES', '', '', '2025-12-11', 'kujuju', '00000000000', 'lkoko,', NULL, 'pending', '2025-11-30 13:50:23', NULL, 0),
(86, 50, 29, 'ESTUDYANTE CLUES', '', '', '2025-12-11', 'kujuju', '00000000000', 'lkoko,', NULL, 'pending', '2025-11-30 13:50:24', NULL, 0),
(87, 50, 29, 'ESTUDYANTE CLUES', '', '', '2025-12-11', 'kujuju', '00000000000', 'lkoko,', NULL, 'pending', '2025-11-30 13:50:24', NULL, 0),
(88, 50, 29, 'ESTUDYANTE CLUES', '', '', '2025-12-11', 'kujuju', '00000000000', 'lkoko,', NULL, 'pending', '2025-11-30 13:50:24', NULL, 0),
(89, 50, 29, 'ESTUDYANTE CLUES', '', '', '2025-12-11', 'kujuju', '00000000000', 'lkoko,', NULL, 'pending', '2025-11-30 13:50:24', NULL, 0),
(90, 50, 29, 'ESTUDYANTE CLUES', '', '', '2025-12-11', 'kujuju', '00000000000', 'lkoko,', NULL, 'pending', '2025-11-30 13:50:24', NULL, 0),
(91, 50, 29, 'ESTUDYANTE CLUES', '', '', '2025-12-11', 'kujuju', '00000000000', 'lkoko,', NULL, 'pending', '2025-11-30 13:50:24', NULL, 0),
(92, 50, 29, 'ESTUDYANTE CLUES', '', '', '2025-12-11', 'kujuju', '00000000000', 'lkoko,', NULL, 'pending', '2025-11-30 13:50:25', NULL, 0),
(93, 50, 29, 'ESTUDYANTE CLUES', '', '', '2025-12-11', 'kujuju', '00000000000', 'lkoko,', NULL, 'pending', '2025-11-30 13:50:25', NULL, 0),
(94, 50, 29, 'ESTUDYANTE CLUES', '', '', '2025-12-11', 'kujuju', '00000000000', 'lkoko,', NULL, 'pending', '2025-11-30 13:50:25', NULL, 0),
(95, 50, 29, 'ESTUDYANTE CLUES', '', '', '2025-12-11', 'kujuju', '00000000000', 'lkoko,', NULL, 'pending', '2025-11-30 13:50:25', NULL, 0),
(96, 50, 29, 'ESTUDYANTE CLUES', '', '', '2025-12-11', 'kujuju', '00000000000', 'lkoko,', NULL, 'pending', '2025-11-30 13:50:25', NULL, 0),
(97, 50, 29, 'ESTUDYANTE CLUES', '', '', '2025-12-11', 'kujuju', '00000000000', 'lkoko,', NULL, 'pending', '2025-11-30 13:50:25', NULL, 0),
(98, 50, 29, 'ESTUDYANTE CLUES', '', '', '2025-12-11', 'kujuju', '00000000000', 'lkoko,', NULL, 'completed', '2025-11-30 13:50:26', NULL, 1),
(99, 50, 29, 'ESTUDYANTE CLUES', '', '', '2025-12-11', 'kujuju', '00000000000', 'lkoko,', NULL, 'completed', '2025-11-30 13:50:26', NULL, 1),
(100, 50, 29, 'ESTUDYANTE CLUES', '', '', '2025-12-11', 'kujuju', '00000000000', 'lkoko,', NULL, 'pending', '2025-11-30 13:50:26', NULL, 0),
(101, 50, 29, 'ESTUDYANTE CLUES', '', '', '2025-12-11', 'kujuju', '00000000000', 'lkoko,', NULL, 'pending', '2025-11-30 13:50:26', NULL, 0),
(102, 48, 27, 'Samurai III', '', '', '2025-12-03', 'J', '09397734377', 'Wieeee', NULL, 'approved', '2025-11-30 14:11:21', '2025-11-30 22:45:16', 0),
(103, 48, 27, 'Samurai III', '', '', '2025-12-03', 'J', '09397734377', 'jjj', NULL, 'completed', '2025-11-30 14:11:39', NULL, 1),
(104, 48, 27, 'Samurai III', '', '', '2025-12-03', 'johnfelix dizon', '09685775751', 'specific req', NULL, 'rejected', '2025-11-30 17:36:59', NULL, 0),
(105, 51, 19, 'DIAMOS', '', '', '2025-12-05', 'Jeremiah', '09387734377', 'none.', NULL, 'completed', '2025-12-01 05:22:24', NULL, 0),
(106, 48, 46, '123', '', '', '2025-12-18', 'kujuju', '00000000000', '231', NULL, 'completed', '2025-12-08 14:55:51', NULL, 0),
(107, 48, 26, 'Maskara', '', '', '2025-12-24', '123', '09685775751', '123123', '1765253376_id_download.jfif', 'approved', '2025-12-09 04:09:36', NULL, 0),
(108, 68, 96, 'KOTA NA (SORBETORO)', '', '', '2026-02-17', 'Kate Falceso', '09452640598', 'Pay via gcash', '1771150678_id_IMG_2140.JPG', 'approved', '2026-02-15 10:17:58', NULL, 0),
(109, 40, 53, 'WHISPER BENEATH THE WATER', '', '', '2026-03-30', 'Isaac Jed P. Macaraeg', '09942170085', 'Sealed', '1772952390_id_Gemini_Generated_Image_pugcx7pugcx7pugc.png', 'completed', '2026-03-08 06:46:30', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `event_date` date NOT NULL,
  `event_time` varchar(50) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `artwork_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`id`, `user_id`, `artwork_id`, `created_at`) VALUES
(53, 40, 53, '2026-03-08 06:37:56');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `image_path`, `description`, `uploaded_at`) VALUES
(39, 'uploads/1753622886_Media (8).jpg', 'Door Trunk Refinishing', '2025-07-27 13:28:06'),
(40, 'uploads/1753622891_Media (9).jpg', 'Side Bumper Restoring', '2025-07-27 13:28:11'),
(41, 'uploads/1753622896_Media (10).jpg', 'Bumper  Restoring', '2025-07-27 13:28:16'),
(42, 'uploads/1753622901_Media (11).jpg', 'Full Paint Job', '2025-07-27 13:28:21'),
(43, 'uploads/1753622906_Media (12).jpg', 'Refinishing', '2025-07-27 13:28:26'),
(44, 'uploads/1753622912_Media (13).jpg', 'Touching up and Mags Refinishing', '2025-07-27 13:28:32'),
(45, 'uploads/1753622916_Media (14).jpg', 'Full Paint Job', '2025-07-27 13:28:37'),
(46, 'uploads/1753622922_Media (15).jpg', 'Fairings Refinishing', '2025-07-27 13:28:42'),
(47, 'uploads/1753622926_Media (16).jpg', 'Hood  Restoring', '2025-07-27 13:28:46'),
(48, 'uploads/1753622931_Media (17).jpg', 'Bumper Restoring', '2025-07-27 13:28:51'),
(65, 'uploads/1753622871_Media (7).jpg', 'Side Bumper Restoring', '2025-10-14 12:49:48'),
(66, 'uploads/1753622866_Media (6).jpg', 'Changing Color Refinishing', '2025-11-14 07:01:21');

-- --------------------------------------------------------

--
-- Table structure for table `hero_images`
--

CREATE TABLE `hero_images` (
  `id` int(11) NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hero_slider`
--

CREATE TABLE `hero_slider` (
  `id` int(11) NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hero_slides`
--

CREATE TABLE `hero_slides` (
  `id` int(11) NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inquiries`
--

CREATE TABLE `inquiries` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `status` enum('unread','read','replied') DEFAULT 'unread',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inquiries`
--

INSERT INTO `inquiries` (`id`, `username`, `email`, `mobile`, `subject`, `message`, `attachment`, `status`, `created_at`, `deleted_at`) VALUES
(68, 'jem', 'jem@gmail.com', '', '', 'dasdsadasd', NULL, 'read', '2025-10-14 12:32:40', NULL),
(70, 'Guest', 'example@gmail.com', '29343934234', '', 'cjeicijdckcdndi', NULL, 'read', '2025-11-27 19:11:30', NULL),
(71, 'Guest', 'example@gmail.com', '29343934234', '', 'cjeicijdckcdndi', NULL, 'read', '2025-11-27 19:11:35', NULL),
(76, 'Keycm', 'keycm109@gmail.com', '29343934234', '', 'Hello, I am interested in requesting a copy or similar commission of the artwork: &quot;Girl with a Pearl Earring&quot;. Please contact me with details.', NULL, 'unread', '2025-11-29 08:53:33', NULL),
(77, 'Keycm', 'keycm109@gmail.com', '29343934234', '', 'Hello, I am interested in requesting a copy or similar commission of the artwork: &quot;Girl with a Pearl Earring&quot;. Please contact me with details.', NULL, 'replied', '2025-11-29 08:53:40', NULL),
(92, 'Isaac Jed Macaraeg', 'isaacjedm@gmail.com', '09942170085', '', 'I want to reserve a painting', NULL, 'read', '2025-11-29 14:52:38', NULL),
(94, 'Guest', 'keycm109@gmail.com', '09334257317', '', 'sdfghjk', NULL, 'read', '2025-11-29 15:37:37', NULL),
(95, 'Isaac Jed Macaraeg', 'isaacjedm@gmail.com', '09942170085', '', 'I want to reserve a painting', NULL, 'read', '2025-11-29 16:21:28', NULL),
(96, 'Jermin', 'jerminmercado1@gmail.com', '', '', 'cabyou give nme the', NULL, 'read', '2025-10-12 05:43:08', NULL),
(97, 'Jinzo', 'johnfelix.dizon123@gmail.com', '09685775751', '', 'aaaa', NULL, 'read', '2025-11-30 10:23:48', NULL),
(98, 'Khazmiri', 'johnfelix.dizon123@gmail.com', '09685775751', '', '62085.', NULL, 'read', '2025-11-30 16:08:57', NULL),
(100, 'Khazmiri', 'johnfelix.dizon123@gmail.com', '09397734377', '', 'I need everything that is possible to do with everything you can as long as you can we want to inquire your skills, talent and your genius mind and solution for everything.', NULL, 'replied', '2025-11-30 19:09:29', NULL),
(102, 'Khazmiri', 'johnfelix.dizon123@gmail.com', '09397734377', '', 'anything', NULL, 'unread', '2025-12-01 05:28:10', NULL),
(103, 'Khazmiri', 'john123@gmail.com', '09397734377', '', '/..', NULL, 'read', '2025-12-01 05:29:27', NULL),
(104, 'Guest', 'yuloyoc323@gmail.com', '6691852042', '', 'ozSpZlVtIGFVmgNnoJeRTYe', NULL, 'unread', '2025-12-01 09:19:02', NULL),
(105, 'Guest', 'conti.royal@msn.com', '9266141479', '', 'Hi http://mancavegallery.com,\r\n\r\nI hope you’re doing well. I came across your business online and thought you might be interested in improving your visibility and traffic on search engines.\r\n\r\nWe specialize in helping businesses strengthen their online presence through effective SEO strategies.\r\n\r\nOnce you share your target keywords and target market, I’ll send a full proposal.\r\n\r\nWarm regards,\r\nDeepa', NULL, 'unread', '2025-12-02 05:42:19', NULL),
(106, 'Guest', 'johnfelix.dizon123@gmail.com', '09393939393', '', 'asdasdsa', NULL, 'unread', '2025-12-02 07:29:50', NULL),
(107, 'Guest', 'johnfelix.dizon123@gmail.com', '09397734377', '', 'fgh', NULL, 'unread', '2025-12-02 15:34:27', NULL),
(108, 'Guest', 'keycm109@gmail.com', '09334257317', '', 'jrjdj', NULL, 'unread', '2025-12-02 16:08:31', NULL),
(109, 'Guest', 'contact@domainssubmit.org', '7132737650', '', 'Enlist mancavegallery.com in Google Search Index to have it appear in WebSearch Results.\r\n\r\nAdd mancavegallery.com at https://searchregister.net', NULL, 'unread', '2025-12-02 19:02:11', NULL),
(110, 'Guest', 'lemus.mindy91@msn.com', '697459488', '', 'Enhance your SEO standings, increase your search visibility and gain powerful backlinks! \r\nBonusBacklinks.com - we build daily backlinks and bring organic clicks to your page EVERY DAY:\r\n\r\n+ Take 85% DISCOUNT\r\n+ Quality daily backlinks\r\n+ Real web traffic\r\n+ Prices only from $1\r\n+ Bonus coupon codes\r\n\r\nUse seo deals - https://tiny.cc/bonusbacklinks-discounts\r\nOr view directly - https://Bonusbacklinks.com\r\n\r\nBonusBacklinks - daily seo backlinks and website clicks to skyrocket your website every day\r\n', NULL, 'unread', '2025-12-03 01:01:17', NULL),
(111, 'Guest', 'anaya.dgtlsolution@gmail.com', '9266141479', '', 'Hi http://mancavegallery.com,\r\n \r\nWe can place your website on Google 1st page.\r\n \r\nI can give you our Complete SEO Action Plan along with a customary reach and add great value to your product/ service.\r\n \r\nI may send you a SEO Packages &amp; price list. If interested.\r\n \r\nBest Regards,\r\nAnaya\r\nOnline SEO Consultant', NULL, 'unread', '2025-12-03 08:13:48', NULL),
(112, 'Guest', 'contact@domain-submit.app', '', '', 'Add your mancavegallery.com website to Google Search Index and have it appear in WebSearch Results.\r\n\r\nAdd mancavegallery.com at https://searchregister.org', NULL, 'unread', '2025-12-03 18:57:25', NULL),
(113, 'Guest', 'parchad78@gmail.com', '9217127210', '', 'Hello http://mancavegallery.com,\r\n\r\nI hope you’re doing well. I came across your business online and thought you might be interested in enhancing your digital presence with a modern, high-performing website.\r\n\r\nWe specialize in creating professional, responsive, and custom-designed websites that help businesses improve user experience, build trust, and generate more leads.\r\n\r\nIf you’re interested, please share your WhatsApp number and any reference websites you like, along with details about your business goals and preferred style or features.\r\n\r\nOnce I have that, I’ll prepare a complete proposal designed specifically for your needs.\r\n\r\nWarm regards,\r\nDeepak Parcha', NULL, 'unread', '2025-12-03 19:40:42', NULL),
(116, 'Guest', 'asd@gmail.com', '09387734378', '', 'asd', NULL, 'unread', '2025-12-07 08:45:36', NULL),
(117, 'Guest', '123@gmail.com', '09388388381', '', 'asdasd', NULL, 'unread', '2025-12-08 08:01:22', NULL),
(118, 'Guest', 'denisberger.web@gmail.com', '1201201200', '', 'Hi,\r\n\r\nmancavegallery.com\r\n\r\nI visited your website online and discovered that it was not showing up in any search results for the majority of keywords related to your company on Google, Yahoo, or Bing.\r\n\r\nDo you want more targeted visitors on your website? We can place your website on Google’s 1st Page. yahoo, AOL, Bing. Etc.\r\n\r\nIf interested, kindly provide me your name, phone number, and email.\r\n\r\nRegards,\r\nDenis Berger\r\n\r\n\r\n\r\nNote: Experienced with Squarespace, Shopify, Wix, WordPress, GoDaddy, and comparable tools.', NULL, 'unread', '2025-12-08 11:01:04', NULL),
(119, 'Jinzo', 'valencia04jeremiah29@gmail.com', '09685775751', '', '123', NULL, 'replied', '2025-12-08 14:50:02', NULL),
(120, 'Jinzo', 'valencia04jeremiah29@gmail.com', '09685775751', '', 'Hello, I am interested in requesting a copy or similar commission of the artwork: &quot;Samurai III&quot;. Please contact me with details.', NULL, 'unread', '2025-12-08 14:51:16', NULL),
(121, 'Jinzo', 'valencia04jeremiah29@gmail.com', '09685775751', '', 'Hello, I am interested in requesting a copy or similar commission of the artwork: &quot;Samurai III&quot;. Please contact me with details.', NULL, 'unread', '2025-12-08 14:51:19', NULL),
(122, 'Khazmiri', 'johnfelix.dizon123@gmail.com', '09387734378', '', 'Hello, I am interested in requesting a copy or similar commission of the artwork: &quot;Samurai III&quot;. Please contact me with details.', NULL, 'replied', '2025-12-08 14:53:28', NULL),
(123, 'Khazmiri', 'johnfelix.dizon123@gmail.com', '09387734378', '', '1', NULL, 'replied', '2025-12-08 14:54:58', NULL),
(124, 'Khazmiri', 'johnfelix.dizon123@gmail.com', '09685775751', '', '123', NULL, 'unread', '2025-12-08 15:24:38', NULL),
(128, 'Guest', 'keycm109@gmail.com', '09334257317', '', 'xdgtt', NULL, 'unread', '2025-12-08 16:06:55', NULL),
(129, 'Keycm', 'keycm109@gmail.com', '09334257317', '', 'Hello, I am interested in requesting a copy or similar commission of the artwork: &quot;123&quot;. Please contact me with details.', NULL, 'unread', '2025-12-08 16:49:14', NULL),
(130, 'Keycm', 'keycm109@gmail.com', '09334257317', '', 'Hello, I am interested in requesting a copy or similar commission of the artwork: &quot;Samurai III&quot;. Please contact me with details.', NULL, 'unread', '2025-12-08 16:56:31', NULL),
(131, 'Guest', 'ydx~nwa9pwyxz@mailbox.in.ua', '195183091169', '', '* * * $3,222 credit available! Confirm your transfer here: http://politecnicodelasamericas.com/?nnhb24 * * * hs=111cdddd4f9ec58baa3329e18b52c3b4* ххх*', NULL, 'unread', '2025-12-13 20:45:22', NULL),
(132, 'Guest', 'numepikexoy729@gmail.com', '6830433320', '', 'SKczeWMzQaCIGwZf', NULL, 'unread', '2025-12-14 16:49:56', NULL),
(133, 'Guest', 'tececofoc33@gmail.com', '9537026571', '', 'tJvJFWOggdgqhUcMBMOMqcV', NULL, 'unread', '2025-12-21 03:46:50', NULL),
(134, 'Guest', 'no.reply.RichardGustafsson@gmail.com', '87956528393', '', 'Yo! mancavegallery.com \r\n \r\nDid you know that it is possible to send letters utterly legitimately? \r\nWhen such proposals are sent, no personal data is used, and messages are sent to forms specifically designed to receive messages and appeals securely. Contact Form messages are not likely to end up in spam, as they&#039;re recognized as important. \r\nWe are giving you the chance to experience our service without any cost. \r\nWe can dispatch up to 50,000 messages in your behalf. \r\n \r\nThe cost of sending one million messages is $59. \r\n \r\nThis message was automatically generated. \r\n \r\nContact us. \r\nTelegram - https://t.me/FeedbackFormEU \r\nWhatsApp - +375259112693 \r\nWhatsApp  https://wa.me/+375259112693 \r\nWe only use chat for communication.', NULL, 'unread', '2025-12-23 00:51:35', NULL),
(138, 'Guest', 'info@speed-seo.net', '88262161744', '', 'Hi, \r\nWorried about hidden SEO issues on your website? Let us help — completely free. \r\nRun a 100% free SEO check and discover the exact problems holding your site back from ranking higher on Google. \r\n \r\nRun Your Free SEO Check Now \r\nhttps://www.speed-seo.net/check-site-seo-score/ \r\n \r\nOr chat with us and our agent will run the report for you: https://www.speed-seo.net/whatsapp-with-us/ \r\n \r\nBest regards, \r\n \r\n \r\nMike Jean Eriksson\r\n \r\nSpeed SEO Digital \r\nEmail: info@speed-seo.net \r\nPhone/WhatsApp: +1 (833) 454-8622', NULL, 'unread', '2026-01-02 03:20:01', NULL),
(139, 'Guest', 'zekisuquc419@gmail.com', '82676786794', '', 'Kaixo, zure prezioa jakin nahi nuen.', NULL, 'unread', '2026-01-02 05:50:08', NULL),
(140, 'Guest', 'mike@monkeydigital.co', '85547875378', '', 'Hi, \r\n \r\nSearch is changing faster than most businesses realize. \r\n \r\nMore buyers are now discovering products and services through AI-driven platforms — not only traditional search results. This is why we created the AI Rankings SEO Plan at Monkey Digital. \r\n \r\nIt’s designed to help websites become clear, trusted, and discoverable by AI systems that increasingly influence how people find and choose businesses. \r\n \r\nYou can view the plan here: \r\nhttps://www.monkeydigital.co/ai-rankings/ \r\n \r\nIf you’d like to see whether this approach makes sense for your site, feel free to reach out directly — even a quick question is fine. Whatsapp: https://wa.link/b87jor \r\n \r\n \r\n \r\nBest regards, \r\nMike Giinter Jacobs\r\n \r\nMonkey Digital \r\nmike@monkeydigital.co \r\nPhone/Whatsapp: +1 (775) 314-7914', NULL, 'unread', '2026-01-04 19:19:03', NULL),
(141, 'Guest', 'info@professionalseocleanup.com', '89458333869', '', 'Hi, \r\nWhile reviewing mancavegallery.com, we spotted toxic backlinks that could put your site at risk of a Google penalty. Especially that this Google SPAM update had a high impact in ranks. This is an easy and quick fix for you. Totally free of charge. No obligations. \r\n \r\nFix it now: \r\nhttps://www.professionalseocleanup.com/ \r\n \r\nNeed help or questions? Chat here: \r\nhttps://www.professionalseocleanup.com/whatsapp/ \r\n \r\nBest, \r\nMike Enzo De Vries\r\n \r\n+1 (855) 221-7591 \r\ninfo@professionalseocleanup.com', NULL, 'unread', '2026-01-10 14:15:21', NULL),
(142, 'Guest', 'duckmenoffice11@gmail.com', '85634189362', '', 'Good day, \r\n \r\nMy name is Olivier Gabriel Balzac, a practicing lawyer from France. I previously contacted you regarding a transaction involving 13.5 million Euros, which was left by my late client before his unexpected demise. \r\n \r\nI am reaching out to you once more because, after examining your profile, I am thoroughly convinced that you are capable of managing this transaction effectively alongside me. \r\nIf you are interested, I would like to emphasize that after the transaction, 5% of the funds will be allocated to charitable organizations, while the remaining 95% will be divided equally between us, resulting in 47.5% for each party. \r\nThis transaction is entirely risk-free. Please respond to me at your earliest convenience to receive further details regarding the transaction. \r\nMy email: info@balzacavocate.com Sincerely, I look forward to your prompt response. \r\nBest regards. \r\nOlivier Gabriel Balzac, \r\nAttorney. \r\nPhone: +33 756 850 084 \r\nEmail: info@balzacavocate.com', NULL, 'unread', '2026-01-23 02:35:22', NULL),
(143, 'Guest', 'tdgwdsjq@forms-checker.online', '6986', '', 'vtvujutfvleysostfhmzdhlizxphih', NULL, 'unread', '2026-01-26 07:45:45', NULL),
(144, 'Guest', 'mike@monkeydigital.co', '86154935189', '', 'Hi, \r\n \r\nSearch is changing faster than most businesses realize. \r\n \r\nMore buyers are now discovering products and services through AI-driven platforms — not only traditional search results. This is why we created the AI Rankings SEO Plan at Monkey Digital. \r\n \r\nIt’s designed to help websites become clear, trusted, and discoverable by AI systems that increasingly influence how people find and choose businesses. \r\n \r\nYou can view the plan here: \r\nhttps://www.monkeydigital.co/ai-rankings/ \r\n \r\nIf you’d like to see whether this approach makes sense for your site, feel free to reach out directly — even a quick question is fine. Whatsapp: https://wa.link/b87jor \r\n \r\n \r\n \r\nBest regards, \r\nMike Oskar Simonson\r\n \r\nMonkey Digital \r\nmike@monkeydigital.co \r\nPhone/Whatsapp: +1 (775) 314-7914', NULL, 'unread', '2026-01-27 16:54:15', NULL),
(145, 'Guest', 'roofa2000@automisly.org', '🍼💦 Sex Dating. Regis', '', 'tn9wfw', NULL, 'unread', '2026-01-28 22:43:22', NULL),
(148, 'Guest', 'aleksandramichalakalek51@gmail.com', '82764117281', '', 'Good day. \r\nMy name is Michalak Aleksandra, a Poland based business consultant. \r\nRunning a business means juggling a million things, and getting the funding you need shouldn&#039;t be another hurdle. We&#039;ve helped businesses to secure debt financing for growth, inventory, or operations, without the typical bank delays. \r\nTogether with our partners (investors), we offer a straightforward, transparent process with clear terms, designed to get you funded quickly so you can focus on your business. \r\nReady to explore our services? Please feel free to contact me directly by michalak.aleksandra@mail.com Let&#039;s make your business goals a reality, together. \r\nRegards, \r\nMichalak Aleksandra. \r\nEmail: michalak.aleksandra@mail.com', NULL, 'unread', '2026-02-03 22:58:08', NULL),
(149, 'Guest', '155@kirisbyforum.fun', '87616653697', '', 'Hello .! \r\nI came across a 155 interesting tool that I think you should explore. \r\nThis site is packed with a lot of useful information that you might find helpful. \r\nIt has everything you could possibly need, so be sure to give it a visit! \r\n&lt;a href=https://anteupmagazine.com/2021/02/15/why-play-at-a-bitcoin-casino/&gt;https://anteupmagazine.com/2021/02/15/why-play-at-a-bitcoin-casino/&lt;/a&gt;\r\n \r\nFurthermore remember not to forget, folks, that you always are able to within the publication find responses to your the very confusing queries. Our team made an effort to explain the complete information in the most most understandable way.', NULL, 'unread', '2026-02-06 16:27:00', NULL),
(150, 'Guest', 'xwnozsgx@checkyourform.xyz', '8821', '', 'ohxypppsghvgxpkueglrsltpztmoxp', NULL, 'unread', '2026-02-15 04:54:57', NULL),
(151, 'Guest', 'jessMl9083@gmail.com', '83828587145', '', 'XEvil 5.0 automatically solve most kind of captchas, \r\nIncluding such type of captchas: ReCaptcha v.2, ReCaptcha-3, Google captcha, Solve Media, BitcoinFaucet, Steam, +12000 \r\n+ hCaptcha, FC, ReCaptcha Enterprize now supported in new XEvil 6.0! \r\n+ CloudFlare TurnsTile, GeeTest captcha now supported in new XEvil 7.0! \r\n \r\n1.) Fast, easy, precisionly \r\nXEvil is the fastest captcha killer in the world. Its has no solving limits, no threads number limits \r\n \r\n2.) Several APIs support \r\nXEvil supports more than 6 different, worldwide known API: 2Captcha, anti-captcha (antigate), rucaptcha, death-by-captcha, etc. \r\njust send your captcha via HTTP request, as you can send into any of that service - and XEvil will solve your captcha! \r\nSo, XEvil is compatible with hundreds of applications for SEO/SMM/password recovery/parsing/posting/clicking/cryptocurrency/etc. \r\n \r\n3.) Useful support and manuals \r\nAfter purchase, you got access to a private tech.support forum, Wiki, Skype/Telegram online support \r\nDevelopers will train XEvil to your type of captcha for FREE and very fast - just send them examples \r\n \r\n4.) How to get free trial use of XEvil full version? \r\n- Try to search in Google &quot;Home of XEvil&quot; \r\n- you will find IPs with opened port 80 of XEvil users (click on any IP to ensure) \r\n- try to send your captcha via 2captcha API ino one of that IPs \r\n- if you got BAD KEY error, just tru another IP \r\n- enjoy! :) \r\n- (its not work for hCaptcha!) \r\n \r\nWARNING: Free XEvil DEMO does NOT support ReCaptcha, hCaptcha and most other types of captcha! \r\n \r\n ', NULL, 'unread', '2026-02-16 17:03:19', NULL),
(152, 'Guest', 'jessMl8499@gmail.com', '86247984351', '', 'XEvil 5.0 automatically solve most kind of captchas, \r\nIncluding such type of captchas: ReCaptcha-2, ReCaptcha-3, Google, SolveMedia, BitcoinFaucet, Steam, +12000 \r\n+ hCaptcha, FC, ReCaptcha Enterprize now supported in new XEvil 6.0! \r\n+ CloudFlare TurnsTile, GeeTest captcha now supported in new XEvil 7.0! \r\n \r\n1.) Fast, easy, precisionly \r\nXEvil is the fastest captcha killer in the world. Its has no solving limits, no threads number limits \r\n \r\n2.) Several APIs support \r\nXEvil supports more than 6 different, worldwide known API: 2Captcha, anti-captcha (antigate), rucaptcha, DeathByCaptcha, etc. \r\njust send your captcha via HTTP request, as you can send into any of that service - and XEvil will solve your captcha! \r\nSo, XEvil is compatible with hundreds of applications for SEO/SMM/password recovery/parsing/posting/clicking/cryptocurrency/etc. \r\n \r\n3.) Useful support and manuals \r\nAfter purchase, you got access to a private tech.support forum, Wiki, Skype/Telegram online support \r\nDevelopers will train XEvil to your type of captcha for FREE and very fast - just send them examples \r\n \r\n4.) How to get free trial use of XEvil full version? \r\n- Try to search in Google &quot;Home of XEvil&quot; \r\n- you will find IPs with opened port 80 of XEvil users (click on any IP to ensure) \r\n- try to send your captcha via 2captcha API ino one of that IPs \r\n- if you got BAD KEY error, just tru another IP \r\n- enjoy! :) \r\n- (its not work for hCaptcha!) \r\n \r\nWARNING: Free XEvil DEMO does NOT support ReCaptcha, hCaptcha and most other types of captcha! \r\n \r\nhttp://xrumersale.site/', NULL, 'unread', '2026-02-17 05:54:28', NULL),
(153, 'Guest', 'jessMl7773@gmail.com', '85444395966', '', 'XEvil 6.0 automatically solve most kind of captchas, \r\nIncluding such type of captchas: ReCaptcha-2, ReCaptcha v.3, Google, SolveMedia, BitcoinFaucet, Steam, +12000 \r\n+ hCaptcha, FC, ReCaptcha Enterprize now supported in new XEvil 6.0! \r\n+ CloudFlare TurnsTile, GeeTest captcha now supported in new XEvil 7.0! \r\n \r\n1.) Fast, easy, precisionly \r\nXEvil is the fastest captcha killer in the world. Its has no solving limits, no threads number limits \r\n \r\n2.) Several APIs support \r\nXEvil supports more than 6 different, worldwide known API: 2Captcha, anti-captchas (antigate), rucaptcha, DeathByCaptcha, etc. \r\njust send your captcha via HTTP request, as you can send into any of that service - and XEvil will solve your captcha! \r\nSo, XEvil is compatible with hundreds of applications for SEO/SMM/password recovery/parsing/posting/clicking/cryptocurrency/etc. \r\n \r\n3.) Useful support and manuals \r\nAfter purchase, you got access to a private tech.support forum, Wiki, Skype/Telegram online support \r\nDevelopers will train XEvil to your type of captcha for FREE and very fast - just send them examples \r\n \r\n4.) How to get free trial use of XEvil full version? \r\n- Try to search in Google &quot;Home of XEvil&quot; \r\n- you will find IPs with opened port 80 of XEvil users (click on any IP to ensure) \r\n- try to send your captcha via 2captcha API ino one of that IPs \r\n- if you got BAD KEY error, just tru another IP \r\n- enjoy! :) \r\n- (its not work for hCaptcha!) \r\n \r\nWARNING: Free XEvil DEMO does NOT support ReCaptcha, hCaptcha and most other types of captcha! \r\n \r\nhttp://xrumersale.site/', NULL, 'unread', '2026-02-17 18:50:46', NULL),
(154, 'Guest', 'jessMl9889@gmail.com', '82711396361', '', 'XEvil 6.0 automatically solve most kind of captchas, \r\nIncluding such type of captchas: ReCaptcha v.2, ReCaptcha v.3, Google captcha, Solve Media, BitcoinFaucet, Steam, +12k \r\n+ hCaptcha, FC, ReCaptcha Enterprize now supported in new XEvil 6.0! \r\n+ CloudFlare TurnsTile, GeeTest captcha now supported in new XEvil 7.0! \r\n \r\n1.) Fast, easy, precisionly \r\nXEvil is the fastest captcha killer in the world. Its has no solving limits, no threads number limits \r\n \r\n2.) Several APIs support \r\nXEvil supports more than 6 different, worldwide known API: 2Captcha, anti-captcha (antigate), rucaptcha, DeathByCaptcha, etc. \r\njust send your captcha via HTTP request, as you can send into any of that service - and XEvil will solve your captcha! \r\nSo, XEvil is compatible with hundreds of applications for SEO/SMM/password recovery/parsing/posting/clicking/cryptocurrency/etc. \r\n \r\n3.) Useful support and manuals \r\nAfter purchase, you got access to a private tech.support forum, Wiki, Skype/Telegram online support \r\nDevelopers will train XEvil to your type of captcha for FREE and very fast - just send them examples \r\n \r\n4.) How to get free trial use of XEvil full version? \r\n- Try to search in Google &quot;Home of XEvil&quot; \r\n- you will find IPs with opened port 80 of XEvil users (click on any IP to ensure) \r\n- try to send your captcha via 2captcha API ino one of that IPs \r\n- if you got BAD KEY error, just tru another IP \r\n- enjoy! :) \r\n- (its not work for hCaptcha!) \r\n \r\nWARNING: Free XEvil DEMO does NOT support ReCaptcha, hCaptcha and most other types of captcha! \r\n \r\n ', NULL, 'unread', '2026-02-18 07:25:22', NULL),
(155, 'Guest', 'jessMl1981@gmail.com', '85427866833', '', 'XEvil 5.0 automatically solve most kind of captchas, \r\nIncluding such type of captchas: ReCaptcha-2, ReCaptcha v.3, Google, Solve Media, BitcoinFaucet, Steam, +12000 \r\n+ hCaptcha, FC, ReCaptcha Enterprize now supported in new XEvil 6.0! \r\n+ CloudFlare TurnsTile, GeeTest captcha now supported in new XEvil 7.0! \r\n \r\n1.) Fast, easy, precisionly \r\nXEvil is the fastest captcha killer in the world. Its has no solving limits, no threads number limits \r\n \r\n2.) Several APIs support \r\nXEvil supports more than 6 different, worldwide known API: 2Captcha, anti-captcha (antigate), rucaptcha, DeathByCaptcha, etc. \r\njust send your captcha via HTTP request, as you can send into any of that service - and XEvil will solve your captcha! \r\nSo, XEvil is compatible with hundreds of applications for SEO/SMM/password recovery/parsing/posting/clicking/cryptocurrency/etc. \r\n \r\n3.) Useful support and manuals \r\nAfter purchase, you got access to a private tech.support forum, Wiki, Skype/Telegram online support \r\nDevelopers will train XEvil to your type of captcha for FREE and very fast - just send them examples \r\n \r\n4.) How to get free trial use of XEvil full version? \r\n- Try to search in Google &quot;Home of XEvil&quot; \r\n- you will find IPs with opened port 80 of XEvil users (click on any IP to ensure) \r\n- try to send your captcha via 2captcha API ino one of that IPs \r\n- if you got BAD KEY error, just tru another IP \r\n- enjoy! :) \r\n- (its not work for hCaptcha!) \r\n \r\nWARNING: Free XEvil DEMO does NOT support ReCaptcha, hCaptcha and most other types of captcha! \r\n \r\n ', NULL, 'unread', '2026-02-18 19:44:23', NULL),
(156, 'Guest', 'ydx~nwa9pwyxz@mailbox.in.ua', '* * * $3,222 deposit', '', '0fhqsj', NULL, 'unread', '2026-02-19 12:28:52', NULL),
(157, 'Guest', 'ydx~nwa9pwyxz@mailbox.in.ua', '* * * &lt;a href=&qu', '', 'ppbicq', NULL, 'unread', '2026-02-19 12:29:01', NULL),
(158, 'Guest', 'ydx~nwa9pwyxz@mailbox.in.ua', '* * * $3,222 payment', '', 'fneu32', NULL, 'unread', '2026-02-19 12:32:12', NULL),
(159, 'Guest', 'ydx~nwa9pwyxz@mailbox.in.ua', '* * * &lt;a href=&qu', '', '8tggj0', NULL, 'unread', '2026-02-19 12:32:19', NULL),
(160, 'Guest', 'ydx~nwa9pwyxz@mailbox.in.ua', '481500934388', '', '* * * $3,222 credit available! Confirm your transaction here: http://toyolift.com/?aolrx3 * * * hs=87af65ad4b2bf63681263162139dac61* ххх*', NULL, 'unread', '2026-02-19 12:34:41', NULL),
(161, 'Guest', 'ydx~nwa9pwyxz@mailbox.in.ua', '122958355062', '', '* * * $3,222 payment available! Confirm your transfer here: http://www.caribbeandesign.org/?189vrm * * * hs=6237ca3d4037c3614eca9eb050208fb1* ххх*', NULL, 'unread', '2026-02-19 12:35:01', NULL),
(162, 'Guest', 'termn8er@ship79.com', '710890516194', '', '😈 Crypto transfer to your e-wallet. Get the transfer =&gt; yandex.com/poll/CzcnvHQfzj9AHyPPgwtJKk?hs=87af65ad4b2bf63681263162139dac61&amp;  😈', NULL, 'unread', '2026-03-03 08:49:00', NULL),
(163, 'Guest', 'termn8er@ship79.com', '671910244743', '', '🫣 E-money transfer to your e-wallet. Get the transfer 👉🏼 yandex.com/poll/CzcnvHQfzj9AHyPPgwtJKk?hs=6237ca3d4037c3614eca9eb050208fb1&amp;  🫣', NULL, 'unread', '2026-03-03 08:49:20', NULL),
(164, 'Guest', 'termn8er@ship79.com', '676733631165', '', '💦 E-money transfer to your wallet. Get the transfer 🔗 yandex.com/poll/CzcnvHQfzj9AHyPPgwtJKk?hs=b0d7e96c2dbbc3a102722801d973122d&amp;  💦', NULL, 'unread', '2026-03-03 08:49:35', NULL),
(165, 'Guest', 'termn8er@ship79.com', '075473399549', '', '👉👌 Crypto transaction to your e-wallet. Sign In ➽ yandex.com/poll/CzcnvHQfzj9AHyPPgwtJKk?hs=13507abac47ab8308077c0980521016a&amp;  👉👌', NULL, 'unread', '2026-03-03 08:51:08', NULL),
(166, 'Guest', 'termn8er@ship79.com', '549636730371', '', '🤏 Money transfer to your e-wallet. Get ➼ yandex.com/poll/CzcnvHQfzj9AHyPPgwtJKk?hs=85e07eeaa270b19124727457a43cd844&amp;  🤏', NULL, 'unread', '2026-03-03 08:52:16', NULL),
(167, 'Guest', 'termn8er@ship79.com', '230787834597', '', '🔥🍑 Crypto transfer to your wallet. Sign In 🔥➡️ yandex.com/poll/CzcnvHQfzj9AHyPPgwtJKk?hs=cdcd2ea247c246a51f0bc047d9c86327&amp;  🔥🍑', NULL, 'unread', '2026-03-03 08:55:32', NULL),
(168, 'Guest', 'termn8er@ship79.com', '645317559112', '', '🌶️ Crypto transfer to your e-wallet. Get 👉🏾 yandex.com/poll/CzcnvHQfzj9AHyPPgwtJKk?hs=318e096a12c730be74d26aa780ac84e5&amp;  🌶️', NULL, 'unread', '2026-03-03 08:55:52', NULL),
(169, 'Guest', 'termn8er@ship79.com', '154180145686', '', '🧴 Money transfer to your wallet. Sign In &gt; yandex.com/poll/CzcnvHQfzj9AHyPPgwtJKk?hs=5b6104748c07216190076af43e84ac7c&amp;  🧴', NULL, 'unread', '2026-03-03 08:56:30', NULL),
(170, 'Guest', 'termn8er@ship79.com', '213778884396', '', '🍼 Crypto transfer to your e-wallet. Get the transfer ↪ yandex.com/poll/CzcnvHQfzj9AHyPPgwtJKk?hs=7d58c7d97f7a38747a68280d81e1505d&amp;  🍼', NULL, 'unread', '2026-03-03 08:58:53', NULL),
(171, 'Guest', 'af.in.a.l.o.ja.w.967@gmail.com', '2373637272', '', 'WrrtRdYbKlUZwNgG', NULL, 'unread', '2026-03-04 13:49:05', NULL),
(172, 'Isaac Jed Macaraeg', 'isaacjedm@gmail.com', '09942170085', '', 'Hi, I want to reserve a painting.', NULL, 'replied', '2026-03-08 06:49:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `is_read` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `message`, `is_read`, `created_at`) VALUES
(39, 1, 'Your booking has been approved.', 1, '2025-11-29 04:01:59'),
(40, 1, 'Your booking has been approved.', 1, '2025-11-29 04:10:50'),
(41, 1, 'Your booking has been marked as completed. Thank you!', 1, '2025-11-29 04:10:55'),
(42, 1, 'Your booking has been approved.', 1, '2025-11-29 05:03:05'),
(43, 1, 'Your booking has been marked as completed. Thank you!', 1, '2025-11-29 05:03:07'),
(44, 1, 'Your booking has been approved.', 1, '2025-11-29 05:18:25'),
(45, 1, 'Your booking has been marked as completed. Thank you!', 1, '2025-11-29 05:18:53'),
(46, 1, 'Your booking has been approved.', 1, '2025-11-29 05:23:38'),
(47, 1, 'Your booking has been approved.', 1, '2025-11-29 07:41:42'),
(48, 1, 'Your booking has been marked as completed. Thank you!', 1, '2025-11-29 07:41:57'),
(52, 1, 'Your booking has been marked as completed. Thank you!', 1, '2025-11-29 10:26:11'),
(53, 1, 'Your booking has been marked as completed. Thank you!', 1, '2025-11-29 10:30:11'),
(55, 1, 'Your booking has been approved. Please check your email for collection details.', 1, '2025-11-29 15:58:54'),
(56, 40, 'Your booking has been approved. Please check your email for collection details.', 1, '2025-11-29 16:02:11'),
(57, 1, 'Your booking has been approved. Please check your email for collection details.', 1, '2025-11-30 05:46:00'),
(58, 1, 'Your booking has been approved. Please check your email for collection details.', 1, '2025-11-30 10:04:24'),
(59, 1, 'Your booking has been marked as completed. Thank you!', 1, '2025-11-30 10:04:29'),
(60, 50, 'Your booking has been approved. Please check your email for collection details.', 1, '2025-11-30 14:05:35'),
(61, 50, 'Your booking has been marked as completed. Thank you!', 1, '2025-11-30 14:06:21'),
(62, 50, 'Your booking has been approved. Please check your email for collection details.', 1, '2025-11-30 14:07:19'),
(64, 48, 'Your booking has been approved. Please check your email for collection details.', 1, '2025-11-30 14:12:00'),
(65, 48, 'Your booking has been marked as completed. Thank you!', 1, '2025-11-30 14:12:17'),
(66, 48, 'Your booking has been approved. Please check your email for collection details.', 1, '2025-11-30 14:13:38'),
(67, 48, 'Your booking was rejected.', 1, '2025-11-30 19:31:18'),
(70, 48, 'Your booking has been approved. Please check your email for collection details.', 1, '2025-12-08 14:56:06'),
(71, 48, 'Your booking has been marked as completed. Thank you!', 1, '2025-12-08 14:56:30'),
(72, 68, 'Your booking has been approved. Please check your email for collection details.', 1, '2026-02-15 10:19:03'),
(73, 48, 'Your booking has been approved. Please check your email for collection details.', 0, '2026-02-15 10:19:36'),
(74, 40, 'Your booking has been approved. Please check your email for collection details.', 0, '2026-03-08 06:53:34'),
(75, 40, 'Your booking has been marked as completed. Thank you!', 0, '2026-03-08 06:53:50');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL CHECK (`rating` >= 1 and `rating` <= 5),
  `review` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `duration` varchar(50) NOT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trash_bin`
--

CREATE TABLE `trash_bin` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `source` enum('bookings','services','gallery','inquiries') NOT NULL,
  `deleted_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trash_bin`
--

INSERT INTO `trash_bin` (`id`, `item_id`, `item_name`, `source`, `deleted_at`) VALUES
(141, 62, 'Kanto|{\"service_name\":\"\",\"vehicle_type\":\"\",\"vehicle_model\":\"\",\"full_name\":\"Kanto\",\"phone\":\"\",\"special_request\":\"\",\"username\":\"Kanto\",\"email\":\"keycm109@gmail.com\"}', 'bookings', '2025-11-14 15:00:04'),
(142, 8, 'Spot Repair|{\"description\":\"Professional touch-up for scratches, dings, and small damaged areas to restore your car\'s finish.\",\"price\":\"3000.00\",\"duration\":\"1-2 Days\",\"image\":\"Media (7).jpg\"}', 'services', '2025-11-14 15:00:21'),
(143, 52, 'jem|{\"service_name\":\"full paint job\",\"vehicle_type\":\"sendan\",\"vehicle_model\":\"2010\",\"full_name\":\"jem\",\"phone\":\"09999999999\",\"special_request\":\"full\",\"username\":\"\",\"email\":\"\"}', 'bookings', '2025-11-17 22:03:46'),
(144, 58, 'Kanto|{\"service_name\":\"KAllllllbo\",\"vehicle_type\":\"10:30 AM\",\"vehicle_model\":\"\",\"full_name\":\"Kanto\",\"phone\":\"\",\"special_request\":\"Thank you\",\"username\":\"Kanto\",\"email\":\"keycm109@gmail.com\"}', 'bookings', '2025-11-17 22:03:49'),
(145, 53, 'adasdasd|{\"service_name\":\"retouch\",\"vehicle_type\":\"sendan\",\"vehicle_model\":\"2\",\"full_name\":\"adasdasd\",\"phone\":\"1\",\"special_request\":\"wqe\",\"username\":\"\",\"email\":\"\"}', 'bookings', '2025-11-17 22:09:06'),
(146, 61, 'Kanto|{\"service_name\":\"\",\"vehicle_type\":\"\",\"vehicle_model\":\"\",\"full_name\":\"Kanto\",\"phone\":\"\",\"special_request\":\"\",\"username\":\"Kanto\",\"email\":\"keycm109@gmail.com\"}', 'bookings', '2025-11-17 22:09:09'),
(147, 60, 'Kanto|{\"service_name\":\"\",\"vehicle_type\":\"\",\"vehicle_model\":\"\",\"full_name\":\"Kanto\",\"phone\":\"\",\"special_request\":\"\",\"username\":\"Kanto\",\"email\":\"keycm109@gmail.com\"}', 'bookings', '2025-11-17 22:09:11'),
(148, 59, 'Kanto|{\"service_name\":\"\",\"vehicle_type\":\"\",\"vehicle_model\":\"\",\"full_name\":\"Kanto\",\"phone\":\"\",\"special_request\":\"\",\"username\":\"Kanto\",\"email\":\"keycm109@gmail.com\"}', 'bookings', '2025-11-17 22:09:13'),
(149, 56, 'Unknown User|{\"service_name\":\"kalbo\",\"vehicle_type\":\"1:30 PM\",\"vehicle_model\":\"\",\"full_name\":\"Unknown User\",\"phone\":\"\",\"special_request\":\"thank you\\r\\n\",\"username\":\"\",\"email\":\"\"}', 'bookings', '2025-11-17 22:09:14'),
(152, 34, 'trizone|{\"description\":\"werty\",\"price\":\"12.00\",\"duration\":\"20\",\"image\":\"1764360366_img-10.jpg\"}', 'services', '2025-11-29 04:13:49'),
(153, 7, 'Full Face Job|{\"description\":\"Complete transformation of your vehicle\'s appearance with our premium paint solutions.\",\"price\":\"4000.00\",\"duration\":\"2-3 Days\",\"image\":\"Media (11).jpg\"}', 'services', '2025-11-29 04:16:40'),
(172, 6, 'NIGHT NIHTT|{\"id\":\"6\",\"title\":\"NIGHT NIHTT\",\"artist\":\"trizone\",\"description\":\"dfghjk\",\"price\":\"160.00\",\"image_path\":\"1764404934_img-10.jpg\",\"status\":\"Available\",\"created_at\":\"2025-11-29 10:06:48\"}', '', '2025-11-29 12:53:13'),
(173, 4, 'meee|{\"id\":\"4\",\"title\":\"meee\",\"artist\":\"Johannes Vermeer\",\"description\":\"sdf\",\"price\":\"120.00\",\"image_path\":\"1764393448_img-21.jpg\",\"status\":\"Available\",\"created_at\":\"2025-11-29 05:17:28\"}', '', '2025-11-29 12:53:15'),
(174, 3, 'Girl with a Pearl Earring|{\"id\":\"3\",\"title\":\"Girl with a Pearl Earring\",\"artist\":\"Johannes Vermeer\",\"description\":\"Oil painting.\",\"price\":\"18000.00\",\"image_path\":\"1763888922_img-10.jpg\",\"status\":\"Available\",\"created_at\":\"2025-11-22 14:56:00\"}', '', '2025-11-29 12:53:17'),
(175, 2, 'The Scream|{\"id\":\"2\",\"title\":\"The Scream\",\"artist\":\"Edvard Munch\",\"description\":\"Expressionist masterpiece.\",\"price\":\"25000.00\",\"image_path\":\"1763888960_img-21.jpg\",\"status\":\"Reserved\",\"created_at\":\"2025-11-22 14:56:00\"}', '', '2025-11-29 12:53:18'),
(176, 1, 'Starry Night|{\"id\":\"1\",\"title\":\"Starry Night\",\"artist\":\"Vincent Van Gogh\",\"description\":\"Oil on canvas.\",\"price\":\"15000.00\",\"image_path\":\"1763888841_img-12.jpg\",\"status\":\"Available\",\"created_at\":\"2025-11-22 14:56:00\"}', '', '2025-11-29 12:53:20'),
(177, 1, 'NIGHT|{\"id\":\"1\",\"title\":\"NIGHT\",\"event_date\":\"2025-11-30\",\"event_time\":\"6;00\",\"location\":\"fghgf\",\"created_at\":\"2025-11-28 20:12:12\"}', '', '2025-11-29 12:53:24'),
(178, 2, 'trizone|{\"id\":\"2\",\"name\":\"trizone\",\"style\":\"paint\",\"bio\":\"gfds\",\"quote\":\"giii\",\"image_path\":\"1764360747_artist_img-21.jpg\",\"created_at\":\"2025-11-29 10:07:06\"}', '', '2025-11-29 12:53:26'),
(179, 39, 'jem123|{\"id\":\"39\",\"username\":\"jem123\",\"email\":\"keycm109@gmail.com\",\"password\":\"$2y$10$VGoRNP2XvrIMk6EX7bhJ9OEfX2Tq5f.hDTPND6CvEkP6px\\/YI.Py6\",\"role\":\"user\",\"reset_token_hash\":null,\"reset_token_expires_at\":null,\"account_activation_hash\":null,\"image_path\":n', '', '2025-11-29 12:53:31'),
(180, 91, 'Keycm|{\"username\":\"Keycm\",\"email\":\"keycm109@gmail.com\",\"mobile\":\"29343934234\",\"message\":\"dfghjkl\",\"attachment\":null,\"status\":\"unread\",\"created_at\":\"2025-11-29 10:55:33\"}', 'inquiries', '2025-11-29 12:53:35'),
(181, 90, 'Keycm|{\"username\":\"Keycm\",\"email\":\"keycm109@gmail.com\",\"mobile\":\"29343934234\",\"message\":\"dfghjkl\",\"attachment\":null,\"status\":\"unread\",\"created_at\":\"2025-11-29 10:55:30\"}', 'inquiries', '2025-11-29 12:53:36'),
(182, 89, 'Keycm|{\"username\":\"Keycm\",\"email\":\"keycm109@gmail.com\",\"mobile\":\"29343934234\",\"message\":\"dfghjkl\",\"attachment\":null,\"status\":\"unread\",\"created_at\":\"2025-11-29 10:55:26\"}', 'inquiries', '2025-11-29 12:53:38'),
(183, 88, 'Keycm|{\"username\":\"Keycm\",\"email\":\"keycm109@gmail.com\",\"mobile\":\"29343934234\",\"message\":\"dfghjkl\",\"attachment\":null,\"status\":\"unread\",\"created_at\":\"2025-11-29 10:55:22\"}', 'inquiries', '2025-11-29 12:53:40'),
(184, 87, 'Keycm|{\"username\":\"Keycm\",\"email\":\"keycm109@gmail.com\",\"mobile\":\"29343934234\",\"message\":\"dfghjkl\",\"attachment\":null,\"status\":\"unread\",\"created_at\":\"2025-11-29 10:55:19\"}', 'inquiries', '2025-11-29 12:53:42'),
(185, 86, 'Keycm|{\"username\":\"Keycm\",\"email\":\"keycm109@gmail.com\",\"mobile\":\"29343934234\",\"message\":\"dfghjkl\",\"attachment\":null,\"status\":\"unread\",\"created_at\":\"2025-11-29 10:55:15\"}', 'inquiries', '2025-11-29 12:53:44'),
(186, 85, 'Keycm|{\"username\":\"Keycm\",\"email\":\"keycm109@gmail.com\",\"mobile\":\"29343934234\",\"message\":\"dfghjkl\",\"attachment\":null,\"status\":\"unread\",\"created_at\":\"2025-11-29 10:55:11\"}', 'inquiries', '2025-11-29 12:53:45'),
(187, 84, 'Keycm|{\"username\":\"Keycm\",\"email\":\"keycm109@gmail.com\",\"mobile\":\"29343934234\",\"message\":\"dfghjkl\",\"attachment\":null,\"status\":\"unread\",\"created_at\":\"2025-11-29 10:55:08\"}', 'inquiries', '2025-11-29 12:53:47'),
(188, 83, 'Keycm|{\"username\":\"Keycm\",\"email\":\"keycm109@gmail.com\",\"mobile\":\"29343934234\",\"message\":\"dfghjkl\",\"attachment\":null,\"status\":\"unread\",\"created_at\":\"2025-11-29 10:55:04\"}', 'inquiries', '2025-11-29 12:53:49'),
(189, 82, 'Keycm|{\"username\":\"Keycm\",\"email\":\"keycm109@gmail.com\",\"mobile\":\"29343934234\",\"message\":\"dfghjkl\",\"attachment\":null,\"status\":\"unread\",\"created_at\":\"2025-11-29 10:55:01\"}', 'inquiries', '2025-11-29 12:53:51'),
(190, 81, 'Keycm|{\"username\":\"Keycm\",\"email\":\"keycm109@gmail.com\",\"mobile\":\"29343934234\",\"message\":\"dfghjkl\",\"attachment\":null,\"status\":\"unread\",\"created_at\":\"2025-11-29 10:54:57\"}', 'inquiries', '2025-11-29 12:53:53'),
(191, 79, 'Guest|{\"username\":\"Guest\",\"email\":\"example@gmail.com\",\"mobile\":\"29343934234\",\"message\":\"cjeicijdckcdndi\",\"attachment\":null,\"status\":\"unread\",\"created_at\":\"2025-11-27 19:11:42\"}', 'inquiries', '2025-11-29 12:53:55'),
(197, 41, 'Jinzo|{\"id\":41,\"username\":\"Jinzo\",\"email\":\"valencia04jeremiah29@gmail.com\",\"password\":\"$2y$10$LPqw\\/E1MrcScBQJGvmGadOlFuQx4QIPOcqcC1GXEk\\/y7zgLxcW2a.\",\"role\":\"admin\",\"reset_token_hash\":null,\"reset_token_expires_at\":\"2025-11-29 16:33:43\",\"account_activatio', '', '2025-11-30 06:31:40'),
(198, 42, 'note|{\"id\":42,\"username\":\"note\",\"email\":\"crunchybox321@gmail.com\",\"password\":\"$2y$10$.hRqiFZmPlNXghRibEYQqe\\/hrDXhlOs3VRQKXveJDjZMjsbIAkbnu\",\"role\":\"user\",\"reset_token_hash\":null,\"reset_token_expires_at\":\"2025-11-29 16:51:41\",\"account_activation_hash\":\"57', '', '2025-11-30 06:31:43'),
(199, 43, 'elle|{\"id\":43,\"username\":\"elle\",\"email\":\"valenciajeremiah29@gmail.com\",\"password\":\"$2y$10$FCi2lBiFauIS3OLGS2ykne4jxQnk35rpYeCg.JpV4d06UdPIHHGZC\",\"role\":\"user\",\"reset_token_hash\":null,\"reset_token_expires_at\":\"2025-11-29 16:53:29\",\"account_activation_hash\"', '', '2025-11-30 06:31:46'),
(200, 44, 'isaac jed|{\"id\":44,\"username\":\"isaac jed\",\"email\":\"vibrancy0616@gmail.com\",\"password\":\"$2y$10$Smd3GKg9FBkdz4Ko2cH6o.8IsE\\/Yxzv1DfMKnKOflYrEckmdEQHai\",\"role\":\"user\",\"reset_token_hash\":null,\"reset_token_expires_at\":\"2025-11-29 16:56:03\",\"account_activation_', '', '2025-11-30 06:31:51'),
(201, 7, 'Starryyy|{\"id\":\"7\",\"title\":\"Starryyy\",\"artist\":\"Felix\",\"description\":\"The best among the rest.\",\"price\":\"10000.00\",\"image_path\":\"1764427599_img-12.jpg\",\"status\":\"Available\",\"created_at\":\"2025-11-29 14:46:39\"}', '', '2025-11-30 06:58:50'),
(202, 8, 'Nightt|{\"id\":\"8\",\"title\":\"Nightt\",\"artist\":\"Felix\",\"description\":\"Beautiful and Elegant\",\"price\":\"10000.00\",\"image_path\":\"1764482193_img-10.jpg\",\"status\":\"Available\",\"created_at\":\"2025-11-30 05:56:33\"}', '', '2025-11-30 06:58:54'),
(203, 9, '\"Four Ps\" Series 1|{\"id\":\"9\",\"title\":\"\"Four Ps\" Series 1\",\"artist\":\"Melvin Culaba\",\"description\":\"...\",\"price\":\"50000.00\",\"image_path\":\"1764485141_590223575_122111043405057268_527086352923694948_n.jpg\",\"status\":\"Available\",\"created_at\":\"2025-11-30 06:45:4', '', '2025-11-30 07:03:48'),
(204, 3, 'Felix|{\"id\":\"3\",\"name\":\"Felix\",\"style\":\"Abstract Expressionism\",\"bio\":\"A fashionate painter.\",\"quote\":\"life is a mess, but painting is a must.\",\"image_path\":\"1764427501_artist_img-2.jpg\",\"created_at\":\"2025-11-29 14:45:01\"}', '', '2025-11-30 07:18:17'),
(205, 4, 'Melvin Culaba|{\"id\":\"4\",\"name\":\"Melvin Culaba\",\"style\":\"Figurative Expressionism\",\"bio\":\"Meet Melvin Culaba, an artist known for his unflinching exploration of human emotion and societal complexities through the meticulous use of graphite. His technique t', '', '2025-11-30 07:49:45'),
(206, 9, 'Angelo Roxas|{\"id\":\"9\",\"name\":\"Angelo Roxas\",\"style\":\"Portraiture\",\"bio\":\"...\",\"quote\":\"Inspiration is a must.\",\"image_path\":\"1764489199_artist_cd70ce2d7f2bf2c8d2fe54ec668f7e5a.jpg\",\"created_at\":\"2025-11-30 07:53:19\"}', '', '2025-11-30 08:01:19'),
(207, 28, 'The Head Hunter|{\"id\":\"28\",\"title\":\"The Head Hunter\",\"artist\":\"Angelo Roxas\",\"description\":\"...\",\"price\":\"88000.00\",\"image_path\":\"1764489296_3d88ea128a8df90dea42cb6b1863f118.jpg\",\"status\":\"Available\",\"created_at\":\"2025-11-30 07:54:56\"}', '', '2025-11-30 08:01:24'),
(208, 35, 'Je|{\"id\":\"35\",\"title\":\"Je\",\"artist\":\"Honesto Guirella III\",\"category\":\"Oil\",\"medium\":\"Paper\",\"year\":\"2024\",\"description\":\"Vince\",\"price\":\"99999999.99\",\"size\":\"24x25\",\"image_path\":\"1764524167_IMG_20250619_220146.jpg\",\"status\":\"Available\",\"created_at\":\"2025', '', '2025-11-30 18:04:44'),
(209, 34, 'E|{\"id\":\"34\",\"title\":\"E\",\"artist\":\"Honesto Guirella III\",\"category\":\"O\",\"medium\":\"Canvas\",\"year\":\"2025\",\"description\":\"Ty\",\"price\":\"330000.00\",\"size\":\"24x45\",\"image_path\":\"1764523115_0dfb20eae8fd530ac98ab34128a04cff.jpg\",\"status\":\"Available\",\"created_at\":', '', '2025-11-30 18:04:49'),
(210, 99, 'Guest|{\"username\":\"Guest\",\"email\":\"johnfelix.dizon123@gmail.com\",\"mobile\":\"09887777777\",\"message\":\"Weh\",\"attachment\":null,\"status\":\"unread\",\"created_at\":\"2025-11-30 16:16:30\"}', 'inquiries', '2025-11-30 18:21:12'),
(211, 33, 'J|{\"id\":\"33\",\"title\":\"J\",\"artist\":\"Honesto Guirella III\",\"category\":\"R\",\"medium\":\"Dd\",\"year\":\"2025\",\"description\":\"=jjjjjjjj\",\"price\":\"9000000.00\",\"size\":\"23x24\",\"image_path\":\"1764522872_b9690ac7ec4b7c94d44d9e519b6c30e7.jpg\",\"status\":null,\"created_at\":\"20', '', '2025-11-30 18:43:56'),
(212, 32, 'Circle of Hope|{\"id\":\"32\",\"title\":\"Circle of Hope\",\"artist\":\"Honesto Guirella III\",\"category\":null,\"medium\":null,\"year\":null,\"description\":\"....\",\"price\":\"15000.00\",\"size\":null,\"image_path\":\"1764522341_779350aab55e1428a8c9c8b825aa5083.jpg\",\"status\":null,\"', '', '2025-11-30 18:44:02'),
(213, 31, 'Crypto|{\"id\":\"31\",\"title\":\"Crypto\",\"artist\":\"Honesto Guirella III\",\"category\":null,\"medium\":null,\"year\":null,\"description\":\"...\",\"price\":\"10000.00\",\"size\":null,\"image_path\":\"1764520879_IMG_20250619_220615.jpg\",\"status\":null,\"created_at\":\"2025-11-30 16:41:', '', '2025-11-30 18:44:08'),
(214, 37, 'Graphite on Canvas|{\"description\":\"Ihrsofbwefviywefovwfysfvwovweyfweif\",\"price\":\"99999999.99\",\"duration\":\"4 Hours\",\"image\":\"1764526055_Screenshot_20251114_045133_com.huawei.android.launcher.jpg\"}', 'services', '2025-11-30 18:46:08'),
(215, 3, 'Rating ID: 3|{\"id\":\"3\",\"user_id\":\"48\",\"service_id\":null,\"rating\":\"5\",\"review\":\"\",\"created_at\":\"2025-11-30 16:07:02\"}', '', '2025-11-30 19:03:59'),
(216, 102, 'Booking: Samurai III - J|{\"id\":\"102\",\"user_id\":\"48\",\"artwork_id\":\"27\",\"service\":\"Samurai III\",\"vehicle_type\":\"\",\"vehicle_model\":\"\",\"preferred_date\":\"2025-12-03\",\"full_name\":\"J\",\"phone_number\":\"09397734377\",\"special_requests\":\"Wieeee\",\"status\":\"approved\",\"', 'bookings', '2025-11-30 22:45:16'),
(217, 101, 'Khazmiri|{\"username\":\"Khazmiri\",\"email\":\"johnfelix.dizon123@gmail.com\",\"mobile\":\"09397734377\",\"message\":\"jajjaj\",\"attachment\":null,\"status\":\"read\",\"created_at\":\"2025-11-30 22:58:14\"}', 'inquiries', '2025-12-01 05:27:04'),
(218, 11, 'Sir Arvie|{\"id\":\"11\",\"name\":\"Sir Arvie\",\"style\":\"Abstract Expressionism\",\"bio\":\"Professor\",\"quote\":\"...\",\"image_path\":\"1764565312_artist_Gemini_Generated_Image_3jsia93jsia93jsi.png\",\"created_at\":\"2025-12-01 05:01:52\"}', '', '2025-12-02 06:06:04'),
(219, 3, 'Wie|{\"id\":\"3\",\"title\":\"Wie\",\"event_date\":\"2025-12-10\",\"event_time\":\"03:12\",\"location\":\"\",\"created_at\":\"2025-12-02 07:58:12\"}', '', '2025-12-02 07:58:41'),
(220, 39, '20|{\"id\":\"39\",\"title\":\"20\",\"artist\":\"jem\",\"category\":\"20\",\"medium\":\"20\",\"year\":\"2008\",\"description\":\"20\",\"price\":\"2020.00\",\"size\":\"\",\"image_path\":\"1764664300_download.jfif\",\"status\":\"Available\",\"created_at\":\"2025-12-02 08:31:26\"}', '', '2025-12-02 08:47:07'),
(221, 38, '100|{\"id\":\"38\",\"title\":\"100\",\"artist\":\"jem\",\"category\":\"100\",\"medium\":\"100\",\"year\":\"2009\",\"description\":\"100\",\"price\":\"100.00\",\"size\":\"100\",\"image_path\":\"1764663451_1.jpg\",\"status\":\"Available\",\"created_at\":\"2025-12-02 08:17:31\"}', '', '2025-12-02 08:47:10'),
(222, 37, 'asd|{\"id\":\"37\",\"title\":\"asd\",\"artist\":\"jem\",\"category\":\"asd\",\"medium\":\"asd\",\"year\":\"24\",\"description\":\"123\",\"price\":\"87978.00\",\"size\":\"asd\",\"image_path\":null,\"status\":\"Available\",\"created_at\":\"2025-12-02 08:03:41\"}', '', '2025-12-02 08:47:12'),
(223, 40, '123|{\"id\":\"40\",\"title\":\"123\",\"artist\":\"je\",\"category\":\"asd\",\"medium\":\"asd\",\"year\":\"2008\",\"description\":\"123\",\"price\":\"123.00\",\"size\":\"asd\",\"image_path\":\"1764665345_588551037_2686800495001563_7368616109511360075_n.jpg\",\"status\":\"Available\",\"created_at\":\"20', '', '2025-12-02 08:51:06'),
(224, 16, '9|{\"id\":\"16\",\"name\":\"9\",\"style\":\"\",\"bio\":\"\",\"quote\":\"\",\"image_path\":null,\"created_at\":\"2025-12-02 09:20:35\"}', '', '2025-12-02 09:20:40'),
(225, 15, '965|{\"id\":\"15\",\"name\":\"965\",\"style\":\"54\",\"bio\":\"\",\"quote\":\"\",\"image_path\":null,\"created_at\":\"2025-12-02 09:20:28\"}', '', '2025-12-02 09:20:43'),
(226, 14, 'ab|{\"id\":\"14\",\"name\":\"ab\",\"style\":\"ab\",\"bio\":\"ab\",\"quote\":\"ab\",\"image_path\":null,\"created_at\":\"2025-12-02 08:38:27\"}', '', '2025-12-02 09:20:48'),
(227, 13, 'je|{\"id\":\"13\",\"name\":\"je\",\"style\":\"je\",\"bio\":\"je\",\"quote\":\"je\",\"image_path\":null,\"created_at\":\"2025-12-02 08:38:12\"}', '', '2025-12-02 12:56:25'),
(233, 36, 'Wallie Bayola|{\"id\":\"36\",\"title\":\"Wallie Bayola\",\"artist\":\"Sir Arvie\",\"category\":\"\",\"medium\":\"Acrylic on Canvas\",\"year\":\"2025\",\"description\":\"\",\"price\":\"10000.00\",\"size\":\"24x36 Inches\",\"image_path\":null,\"status\":\"Available\",\"created_at\":\"2025-12-01 05:05:', '', '2025-12-08 10:25:13'),
(234, 39, '123|{\"description\":\"1231\",\"price\":\"123.00\",\"duration\":\"06:00 Hours\",\"image\":\"1765191799_instagram.png\"}', 'services', '2025-12-08 11:09:03'),
(235, 41, '123|{\"id\":\"41\",\"title\":\"123\",\"artist\":\"jem\",\"category\":\"123\",\"medium\":\"123\",\"year\":\"2001\",\"description\":\"123\",\"price\":\"123.00\",\"size\":\"123\",\"image_path\":null,\"status\":\"Available\",\"created_at\":\"2025-12-08 11:09:16\"}', '', '2025-12-08 11:09:29'),
(236, 4, 'we|{\"id\":\"4\",\"title\":\"we\",\"event_date\":\"2025-12-03\",\"event_time\":\"16:03\",\"location\":\"\",\"created_at\":\"2025-12-02 08:02:38\"}', '', '2025-12-08 11:16:51'),
(237, 42, '123|{\"id\":\"42\",\"title\":\"123\",\"artist\":\"123\",\"category\":\"123\",\"medium\":\"123\",\"year\":\"2008\",\"description\":\"123\",\"price\":\"123.00\",\"size\":\"\",\"image_path\":\"1765198230_instagram.png\",\"status\":\"Available\",\"created_at\":\"2025-12-08 12:50:30\"}', '', '2025-12-08 16:01:52'),
(238, 43, '123|{\"id\":\"43\",\"title\":\"123\",\"artist\":\"Honesto Guirella III\",\"category\":\"123\",\"medium\":\"123\",\"year\":\"2011\",\"description\":\"123\",\"price\":\"123.00\",\"size\":\"\",\"image_path\":null,\"status\":\"Available\",\"created_at\":\"2025-12-08 13:06:35\"}', '', '2025-12-08 16:01:56'),
(239, 18, 'hbnm,.|{\"id\":\"18\",\"name\":\"hbnm,.\",\"style\":\"ghjkl;\'\",\"bio\":\"hvbnm\",\"quote\":\"gbnm\",\"image_path\":null,\"created_at\":\"2025-12-08 16:03:30\"}', '', '2025-12-08 16:03:36'),
(240, 53, 'jemjem|{\"id\":53,\"username\":\"jemjem\",\"email\":\"valenciajeremiah29@gmail.com\",\"password\":\"$2y$10$I9yPpIhPyhFsoTSuPanNGu8fgInFwEJpanajwx4Ie8HlvbYEAS4lK\",\"role\":\"user\",\"reset_token_hash\":null,\"reset_token_expires_at\":null,\"account_activation_hash\":null,\"image_', '', '2025-12-08 16:06:54'),
(241, 59, 'wie|{\"id\":59,\"username\":\"wie\",\"email\":\"crunchybox321@gmail.com\",\"password\":\"$2y$10$aN2OuDJpbxADczNhCWLpKu0PL73Ay.3Uj3dUB17gxrlfBWBqhI1NS\",\"role\":\"user\",\"reset_token_hash\":null,\"reset_token_expires_at\":null,\"account_activation_hash\":null,\"image_path\":null}', '', '2025-12-08 16:19:11'),
(242, 51, 'christian|{\"id\":51,\"username\":\"christian\",\"email\":\"valencia14jeremiah@gmail.com\",\"password\":\"$2y$10$sc8dcOXoh\\/2gePCULf5RFuK5CUEYChhCdT7VOL10eYcuAXeQeH\\/qG\",\"role\":\"user\",\"reset_token_hash\":null,\"reset_token_expires_at\":null,\"account_activation_hash\":null', '', '2025-12-08 16:19:16'),
(243, 60, 'rivenking0429|{\"id\":60,\"username\":\"rivenking0429\",\"email\":\"valenciajeremiah29@gmail.com\",\"password\":\"$2y$10$\\/ll6pBpyUF97\\/5Zx8m3iu.3VwPdLCBb6cm1T75pbKWrbXECFxznLC\",\"role\":\"user\",\"reset_token_hash\":null,\"reset_token_expires_at\":null,\"account_activation_ha', '', '2025-12-08 16:19:25'),
(245, 17, '123|{\"id\":\"17\",\"name\":\"123\",\"style\":\"123\",\"bio\":\"\",\"quote\":\"\",\"image_path\":null,\"created_at\":\"2025-12-08 11:17:05\"}', '', '2026-02-03 05:47:31'),
(246, 12, 'jem|{\"id\":\"12\",\"name\":\"jem\",\"style\":\"jem\",\"bio\":\"\",\"quote\":\"\",\"image_path\":null,\"created_at\":\"2025-12-02 07:31:00\"}', '', '2026-02-03 05:47:36'),
(247, 46, '123|{\"id\":\"46\",\"title\":\"123\",\"artist\":\"123\",\"category\":\"\",\"medium\":\"123\",\"year\":\"1999\",\"description\":\"12\",\"price\":\"12.00\",\"size\":\"120 x 12 inches\",\"image_path\":null,\"status\":\"Available\",\"created_at\":\"2025-12-08 14:41:13\"}', '', '2026-02-03 05:52:00'),
(248, 45, '123|{\"id\":\"45\",\"title\":\"123\",\"artist\":\"123\",\"category\":\"\",\"medium\":\"123\",\"year\":\"2013\",\"description\":\"123\",\"price\":\"123.00\",\"size\":\"\",\"image_path\":null,\"status\":\"Available\",\"created_at\":\"2025-12-08 14:35:12\"}', '', '2026-02-03 05:52:05'),
(249, 44, '123|{\"id\":\"44\",\"title\":\"123\",\"artist\":\"Honesto Guirella III\",\"category\":\"\",\"medium\":\"123\",\"year\":\"2009\",\"description\":\"123\",\"price\":\"123.00\",\"size\":\"\",\"image_path\":\"1765204232_facebook-app-symbol.png\",\"status\":\"Available\",\"created_at\":\"2025-12-08 14:30:32', '', '2026-02-03 05:52:09'),
(250, 63, 'ANG DALAWANG URI NG MANGHAHASIK|{\"id\":\"63\",\"title\":\"ANG DALAWANG URI NG MANGHAHASIK\",\"artist\":\"PETER ABORDO\",\"category\":\"\",\"medium\":\"Oil on Canvas\",\"year\":\"2025\",\"description\":\"\",\"price\":\"140000.00\",\"size\":\"36 x 48 Inches\",\"image_path\":\"1770099685_ang dal', '', '2026-02-03 06:24:38'),
(251, 60, 'LUSAW|{\"id\":\"60\",\"title\":\"LUSAW\",\"artist\":\"PETER ABORDO\",\"category\":\"\",\"medium\":\"Oil on Canvas\",\"year\":\"2025\",\"description\":\"\",\"price\":\"45000.00\",\"size\":\"23 x 23 Inches\",\"image_path\":\"1770099610_lusaw.png\",\"status\":\"Available\",\"created_at\":\"2026-02-03 06:', '', '2026-02-03 06:24:43'),
(252, 55, 'Candle Vendors|{\"id\":\"55\",\"title\":\"Candle Vendors\",\"artist\":\"JAO MAPA\",\"category\":\"\",\"medium\":\"Acrylic on Canvas\",\"year\":\"2020\",\"description\":\"\",\"price\":\"58330.00\",\"size\":\"32 x 22 Inches\",\"image_path\":\"1770099254_Candle vendors.png\",\"status\":\"Available\",\"', '', '2026-02-03 06:24:48'),
(253, 68, 'MONKEY|{\"id\":\"68\",\"title\":\"MONKEY\",\"artist\":\"Ramcos Nulud\",\"category\":\"\",\"medium\":\"Acrylic on Canvas\",\"year\":\"2023\",\"description\":\"\",\"price\":\"100000.00\",\"size\":\"4 x 4 ft\",\"image_path\":\"1770100328_Monkey.png\",\"status\":\"Available\",\"created_at\":\"2026-02-03 0', '', '2026-02-03 07:02:38'),
(254, 70, 'SAMURAI III|{\"id\":\"70\",\"title\":\"SAMURAI III\",\"artist\":\"Ramcos Nulud\",\"category\":\"\",\"medium\":\"Acrylic on Canvas\",\"year\":\"2025\",\"description\":\"\",\"price\":\"220000.00\",\"size\":\"4 x 3 ft\",\"image_path\":\"1770100407_Samurai III.png\",\"status\":\"Available\",\"created_at', '', '2026-02-03 07:02:49'),
(255, 71, 'SAMURAI III|{\"id\":\"71\",\"title\":\"SAMURAI III\",\"artist\":\"Ramcos Nulud\",\"category\":\"\",\"medium\":\"Acrylic on Canvas\",\"year\":\"2025\",\"description\":\"\",\"price\":\"220000.00\",\"size\":\"4 x 3 ft\",\"image_path\":\"1770100408_Samurai III.png\",\"status\":\"Available\",\"created_at', '', '2026-02-03 07:03:00'),
(256, 75, 'HEAD CRUSHER|{\"id\":\"75\",\"title\":\"HEAD CRUSHER\",\"artist\":\"MARK KENNETH BAMBICO\",\"category\":\"\",\"medium\":\"Acrylic on Canvas\",\"year\":\"2025\",\"description\":\"\",\"price\":\"18500.00\",\"size\":\"24 x 20 Inches\",\"image_path\":\"1770100678_Head Crusher.png\",\"status\":\"Availa', '', '2026-02-03 07:03:09'),
(257, 76, 'HEAD CRUSHER|{\"id\":\"76\",\"title\":\"HEAD CRUSHER\",\"artist\":\"MARK KENNETH BAMBICO\",\"category\":\"\",\"medium\":\"Acrylic on Canvas\",\"year\":\"2025\",\"description\":\"\",\"price\":\"18500.00\",\"size\":\"24 x 20 Inches\",\"image_path\":\"1770100682_Head Crusher.png\",\"status\":\"Availa', '', '2026-02-03 07:03:17'),
(258, 80, 'COLD SESON|{\"id\":\"80\",\"title\":\"COLD SESON\",\"artist\":\"MARK KENNETH BAMBICO\",\"category\":\"\",\"medium\":\"Acrylic on Canvas\",\"year\":\"2025\",\"description\":\"\",\"price\":\"18500.00\",\"size\":\"20 x 20 Inches\",\"image_path\":\"1770100851_Cold Seson.png\",\"status\":\"Available\",\"', '', '2026-02-03 07:03:24'),
(259, 81, 'TIGHT JAM|{\"id\":\"81\",\"title\":\"TIGHT JAM\",\"artist\":\"MARK KENNETH BAMBICO\",\"category\":\"\",\"medium\":\"Acrylic on Canvas\",\"year\":\"2023\",\"description\":\"\",\"price\":\"65000.00\",\"size\":\"4 x 6 ft\",\"image_path\":\"1770100955_Tight Jam.png\",\"status\":\"Available\",\"created_a', '', '2026-02-03 07:03:29'),
(260, 88, 'FOUR PS (Series 4)|{\"id\":\"88\",\"title\":\"FOUR PS (Series 4)\",\"artist\":\"Melvin Culaba\",\"category\":\"\",\"medium\":\"Graphite on Canvas\",\"year\":\"2025\",\"description\":\"\",\"price\":\"37000.00\",\"size\":\"18 x 18 Inches\",\"image_path\":\"1770101425_Four Ps(Series 4).png\",\"stat', '', '2026-02-03 07:03:39'),
(261, 21, 'KOTA NA (SURBATERO)|{\"id\":\"21\",\"title\":\"KOTA NA (SURBATERO)\",\"artist\":\"Jun Talanay\",\"category\":\"\",\"medium\":\"Acrylic on Canvas \",\"year\":\"2025\",\"description\":\"...\",\"price\":\"15000.00\",\"size\":\"15x19 Inches\",\"image_path\":\"1764486870_img-13.jpg\",\"status\":\"Avail', '', '2026-02-03 07:27:49'),
(262, 19, 'DIAMOS|{\"id\":\"19\",\"title\":\"DIAMOS\",\"artist\":\"Jun Talanay\",\"category\":\"\",\"medium\":\"Acrylic on Canvas \",\"year\":\"2025\",\"description\":\"...\",\"price\":\"35000.00\",\"size\":\"24x30 Inches\",\"image_path\":\"1764486737_1.jpg\",\"status\":\"Available\",\"created_at\":\"2025-11-30 ', '', '2026-02-03 07:27:54'),
(263, 17, '\"Four Ps\" Series 1|{\"id\":\"17\",\"title\":\"\\\"Four Ps\\\" Series 1\",\"artist\":\"Melvin Culaba\",\"category\":\"\",\"medium\":\"Graphite on Canvas\",\"year\":\"2025\",\"description\":\"...\",\"price\":\"17000.00\",\"size\":\"18x18 Inches\",\"image_path\":\"1764486332_590223575_122111043405057', '', '2026-02-03 07:28:14'),
(264, 16, '\"Four Ps\" Series 2|{\"id\":\"16\",\"title\":\"\\\"Four Ps\\\" Series 2\",\"artist\":\"Melvin Culaba\",\"category\":\"\",\"medium\":\"Graphite on Canvas\",\"year\":\"2025\",\"description\":\"...\",\"price\":\"17000.00\",\"size\":\"18x18 Inches\",\"image_path\":\"1764486315_590223575_122111043405057', '', '2026-02-03 07:28:19'),
(265, 15, '\"Four Ps\" Series 3|{\"id\":\"15\",\"title\":\"\\\"Four Ps\\\" Series 3\",\"artist\":\"Melvin Culaba\",\"category\":\"\",\"medium\":\"Graphite on Canvas\",\"year\":\"2025\",\"description\":\"...\",\"price\":\"17000.00\",\"size\":\"18x18 Inches\",\"image_path\":\"1764486289_590223575_122111043405057', '', '2026-02-03 07:28:24'),
(266, 14, '\"Four Ps\" Series 4|{\"id\":\"14\",\"title\":\"\\\"Four Ps\\\" Series 4\",\"artist\":\"Melvin Culaba\",\"category\":\"\",\"medium\":\"Graphite on Canvas\",\"year\":\"2025\",\"description\":\"...\",\"price\":\"17000.00\",\"size\":\"18x18 Inches\",\"image_path\":\"1764486259_590223575_122111043405057', '', '2026-02-03 07:28:29'),
(267, 23, 'Flower Girl|{\"id\":\"23\",\"title\":\"Flower Girl\",\"artist\":\"Ramcos Nulud\",\"category\":\"\",\"medium\":\"Acrylic on Canvas\",\"year\":\"2024\",\"description\":\"...\",\"price\":\"110000.00\",\"size\":\"4x4 ft.\",\"image_path\":\"1764487236_d29fab3aa48256fb36db86d42d8a2c6e.jpg\",\"status\":', '', '2026-02-03 07:28:54'),
(268, 13, 'Luminous Echo|{\"id\":\"13\",\"title\":\"Luminous Echo\",\"artist\":\"Jonet Carpio\",\"category\":\"\",\"medium\":\"Mixed Media on Canvas\",\"year\":\"2025\",\"description\":\"...\",\"price\":\"70000.00\",\"size\":\"36x24 Inches\",\"image_path\":\"1764486054_img-14.jpg\",\"status\":\"Available\",\"c', '', '2026-02-03 07:29:06'),
(269, 10, 'Whispers Beneath the Water|{\"id\":\"10\",\"title\":\"Whispers Beneath the Water\",\"artist\":\"Jonet Carpio\",\"category\":\"\",\"medium\":\"Acrylic and Oil Canvas\",\"year\":\"2025\",\"description\":\"...\",\"price\":\"160000.00\",\"size\":\"48x36 Inches\",\"image_path\":\"1764485875_img-11.', '', '2026-02-03 14:23:51'),
(270, 11, 'Eyes of the Cosmos|{\"id\":\"11\",\"title\":\"Eyes of the Cosmos\",\"artist\":\"Jonet Carpio\",\"category\":\"\",\"medium\":\"Mixed Media on Canvas\",\"year\":\"2025\",\"description\":\"...\",\"price\":\"90000.00\",\"size\":\"32.5x22 Inches\",\"image_path\":\"1764485926_img-21.jpg\",\"status\":\"A', '', '2026-02-03 14:23:55'),
(271, 12, 'Celestial Echoes of a Fragmented Mind|{\"id\":\"12\",\"title\":\"Celestial Echoes of a Fragmented Mind\",\"artist\":\"Jonet Carpio\",\"category\":\"\",\"medium\":\"Mixed Media on Canvas\",\"year\":\"2025\",\"description\":\"...\",\"price\":\"70000.00\",\"size\":\"32.5x22 Inches\",\"image_pat', '', '2026-02-03 14:23:59'),
(272, 18, 'V5|{\"id\":\"18\",\"title\":\"V5\",\"artist\":\"Jun Talanay\",\"category\":\"\",\"medium\":\"Acrylic on Canvas\",\"year\":\"2025\",\"description\":\"...\",\"price\":\"35000.00\",\"size\":\"24x30 Inches\",\"image_path\":\"1764486562_img-12.jpg\",\"status\":\"Available\",\"created_at\":\"2025-11-30 07:0', '', '2026-02-03 14:24:02'),
(273, 20, 'MAZ-Z|{\"id\":\"20\",\"title\":\"MAZ-Z\",\"artist\":\"Jun Talanay\",\"category\":\"\",\"medium\":\"Acrylic on Canvas \",\"year\":\"2025\",\"description\":\"...\",\"price\":\"35000.00\",\"size\":\"24x30 Inches\",\"image_path\":\"1764486775_257c5e6bfbaddd78f8620439653a7928.jpg\",\"status\":\"Availab', '', '2026-02-03 14:24:05'),
(274, 24, 'Monkey|{\"id\":\"24\",\"title\":\"Monkey\",\"artist\":\"Ramcos Nulud\",\"category\":\"\",\"medium\":\"Acrylic on Canvas\",\"year\":\"2024\",\"description\":\"...\",\"price\":\"110000.00\",\"size\":\"4x4 ft.\",\"image_path\":\"1764487262_5887e846d8508190dae27e21fccc4b86.jpg\",\"status\":\"Available', '', '2026-02-03 14:24:15'),
(275, 22, 'SWAG (KAWS)|{\"id\":\"22\",\"title\":\"SWAG (KAWS)\",\"artist\":\"Jun Talanay\",\"category\":\"\",\"medium\":\"Acrylic \",\"year\":\"2025\",\"description\":\"... \",\"price\":\"15000.00\",\"size\":\"19x15 Inches\",\"image_path\":\"1764486915_c30d62b0b698af7d3399086864049e31.jpg\",\"status\":\"Avai', '', '2026-02-03 14:24:19'),
(276, 30, 'BLACK MANILA|{\"id\":\"30\",\"title\":\"BLACK MANILA\",\"artist\":\"Honesto Guirella III\",\"category\":\"\",\"medium\":\"Aluminum on Canvas\",\"year\":\"2025\",\"description\":\"...\",\"price\":\"100000.00\",\"size\":\"27x40 Inches\",\"image_path\":\"1764489589_3d7a8d43a5b1c31308306bc03f9fb76', '', '2026-02-03 14:24:30'),
(277, 29, 'ESTUDYANTE CLUES|{\"id\":\"29\",\"title\":\"ESTUDYANTE CLUES\",\"artist\":\"Honesto Guirella III\",\"category\":\"\",\"medium\":\"Mixed Media Sculpture\",\"year\":\"2025\",\"description\":\"...\",\"price\":\"60000.00\",\"size\":\"16x5x5 Inches\",\"image_path\":\"1764489564_c9d939069163ea19d276', '', '2026-02-03 14:24:35'),
(278, 27, 'Samurai III|{\"id\":\"27\",\"title\":\"Samurai III\",\"artist\":\"Ramcos Nulud\",\"category\":\"\",\"medium\":\"Acrylic on Canvas\",\"year\":\"2025\",\"description\":\"...\",\"price\":\"220000.00\",\"size\":\"4x3 ft.\",\"image_path\":\"1764487350_c492e89c5cdf25dc1577a9b8aed02c4a.jpg\",\"status\":', '', '2026-02-03 14:24:40'),
(279, 26, 'Maskara|{\"id\":\"26\",\"title\":\"Maskara\",\"artist\":\"Ramcos Nulud\",\"category\":\"\",\"medium\":\"Acrylic on Canvas\",\"year\":\"2025\",\"description\":\"...\",\"price\":\"80000.00\",\"size\":\"4 x 3 ft\",\"image_path\":\"1764487328_29b6784201a2debb1e26c00abe24587d.jpg\",\"status\":\"Availab', '', '2026-02-03 14:24:45'),
(280, 25, 'Blossom|{\"id\":\"25\",\"title\":\"Blossom\",\"artist\":\"Ramcos Nulud\",\"category\":\"\",\"medium\":\"Acrylic on Canvas\",\"year\":\"2025\",\"description\":\"...\",\"price\":\"200000.00\",\"size\":\"5x4 ft.\",\"image_path\":\"1764487302_39c275e72d35758bbdec44eb2513b064.jpg\",\"status\":\"Availab', '', '2026-02-03 14:24:49'),
(281, 25, 'Ara|{\"id\":\"25\",\"name\":\"Ara\",\"style\":\"Liquid Glass\",\"bio\":\"\",\"quote\":\"\",\"image_path\":null,\"created_at\":\"2026-02-03 06:51:51\"}', '', '2026-02-08 08:15:58'),
(282, 20, 'ANGELO ROXAS|{\"id\":\"20\",\"name\":\"ANGELO ROXAS\",\"style\":\"Oil on Canvas\",\"bio\":\"His painting, \\\"\\ud835\\udc13\\ud835\\udc07\\ud835\\udc04 \\ud835\\udc07\\ud835\\udc04\\ud835\\udc00\\ud835\\udc03 \\ud835\\udc07\\ud835\\udc14\\ud835\\udc0d\\ud835\\udc13\\ud835\\udc04\\ud835\\udc11,\\\" ', '', '2026-02-08 08:16:01'),
(283, 22, 'DING ROYALES|{\"id\":\"22\",\"name\":\"DING ROYALES\",\"style\":\"Acrylic on Canvas\",\"bio\":\"\",\"quote\":\"\",\"image_path\":null,\"created_at\":\"2026-02-03 05:50:36\"}', '', '2026-02-08 08:16:04'),
(284, 10, 'Honesto Guirella III|{\"id\":\"10\",\"name\":\"Honesto Guirella III\",\"style\":\"Sculpture Master\",\"bio\":\"...\",\"quote\":\"Everything you mold will be as unique as you.\",\"image_path\":\"1764489491_artist_cdc3a3ab0e9660e72f5173089b10e9e8.jpg\",\"created_at\":\"2025-11-30 07:', '', '2026-02-08 08:16:07'),
(285, 23, 'JAO MAPA|{\"id\":\"23\",\"name\":\"JAO MAPA\",\"style\":\"Acrylic on Canvas\",\"bio\":\"\",\"quote\":\"\",\"image_path\":null,\"created_at\":\"2026-02-03 05:50:59\"}', '', '2026-02-08 08:16:09'),
(286, 5, 'Jonet Carpio|{\"id\":\"5\",\"name\":\"Jonet Carpio\",\"style\":\"Abstract Expressionism\",\"bio\":\"...\",\"quote\":\"Once a better gunner, always a better gunner.\",\"image_path\":\"1764488831_artist_cb2395974cf0735694f5c6a632729a9e.jpg\",\"created_at\":\"2025-11-30 06:55:44\"}', '', '2026-02-08 08:16:12'),
(287, 6, 'Jun Talanay|{\"id\":\"6\",\"name\":\"Jun Talanay\",\"style\":\"Figurative Expressionism\",\"bio\":\"...\",\"quote\":\"My heart and Sword is always on painting.\",\"image_path\":\"1764488841_artist_27ac0410cded79b505228f996647a039.jpg\",\"created_at\":\"2025-11-30 07:07:25\"}', '', '2026-02-08 08:16:14'),
(288, 21, 'LOURD DE VERYA|{\"id\":\"21\",\"name\":\"LOURD DE VERYA\",\"style\":\"Acrylic on Canvas\",\"bio\":\"\",\"quote\":\"\",\"image_path\":null,\"created_at\":\"2026-02-03 05:49:44\"}', '', '2026-02-08 08:16:18'),
(289, 19, 'MARK KENNETH BAMBICO|{\"id\":\"19\",\"name\":\"MARK KENNETH BAMBICO\",\"style\":\"Acrylic on Canvas\",\"bio\":\"\",\"quote\":\"\",\"image_path\":null,\"created_at\":\"2026-02-03 05:48:55\"}', '', '2026-02-08 08:16:21'),
(290, 8, 'Melvin Culaba|{\"id\":\"8\",\"name\":\"Melvin Culaba\",\"style\":\"Figurative Expressionism\",\"bio\":\"...\",\"quote\":\"Death is like a wind, always by my side.\",\"image_path\":\"1764488981_artist_47faf1724e7060b91d3fa0f956a2f723.jpg\",\"created_at\":\"2025-11-30 07:49:41\"}', '', '2026-02-08 08:16:24'),
(291, 24, 'PETER ABORDO|{\"id\":\"24\",\"name\":\"PETER ABORDO\",\"style\":\"Oil on Canvas\",\"bio\":\"\",\"quote\":\"\",\"image_path\":null,\"created_at\":\"2026-02-03 05:51:21\"}', '', '2026-02-08 08:16:27'),
(292, 7, 'Ramcos Nulud|{\"id\":\"7\",\"name\":\"Ramcos Nulud\",\"style\":\"Digital Expressionism\",\"bio\":\"...\",\"quote\":\"We as man must have aesthetic in our hearts.\",\"image_path\":\"1764488855_artist_a6da879e9d12fec1893cbad0cae39998.jpg\",\"created_at\":\"2025-11-30 07:19:52\"}', '', '2026-02-08 08:16:29'),
(293, 147, 'Guest|{\"username\":\"Guest\",\"email\":\"info@speed-seo.net\",\"mobile\":\"86167363395\",\"message\":\"Hi, \\r\\nWorried about hidden SEO issues on your website? Let us help \\u2014 completely free. \\r\\nRun a 100% free SEO check and discover the exact problems holding you', 'inquiries', '2026-02-08 09:14:41'),
(294, 127, 'Guest|{\"username\":\"Guest\",\"email\":\"keycm109@gmail.com\",\"mobile\":\"09334257317\",\"message\":\"wdefrgthjk\",\"attachment\":null,\"status\":\"replied\",\"created_at\":\"2025-12-08 16:05:13\"}', 'inquiries', '2026-02-08 09:18:19'),
(295, 126, 'Guest|{\"username\":\"Guest\",\"email\":\"valencia14jeremiah@gmail.com\",\"mobile\":\"09386666666\",\"message\":\"Hello, I am interested in this kind of art style similar to the artwork &quot;ESTUDYANTE CLUES&quot; and want to request a commission.\",\"attachment\":null,\"s', 'inquiries', '2026-02-08 09:18:26'),
(296, 125, 'Khazmiri|{\"username\":\"Khazmiri\",\"email\":\"johnfelix.dizon123@gmail.com\",\"mobile\":\"09685775751\",\"message\":\"Hello, I am interested in this kind of art style similar to the artwork &quot;123&quot; and want to request a commission.\",\"attachment\":null,\"status\":', 'inquiries', '2026-02-08 09:18:30'),
(297, 115, 'Guest|{\"username\":\"Guest\",\"email\":\"veita@btcmod.com\",\"mobile\":\"483667861938\",\"message\":\"\\ud83d\\udc8b Sex Dating. Let&#039;s Go - yandex.com\\/poll\\/LZW8GPQdJg3xe5C7gt95bD?hs=b6aa7fdcb253bd770bc5da9df1b370b4&amp; ticket \\u2116 9824 \\ud83d\\udc8b\",\"attachment', 'inquiries', '2026-02-08 09:19:13'),
(298, 5, 'lkj|{\"id\":\"5\",\"title\":\"lkj\",\"event_date\":\"2025-12-03\",\"event_time\":\"08:25\",\"location\":\"\",\"created_at\":\"2025-12-02 09:20:06\"}', '', '2026-02-15 06:29:27'),
(299, 6, '6|{\"id\":\"6\",\"title\":\"6\",\"event_date\":\"2025-12-05\",\"event_time\":\"17:32\",\"location\":\"\",\"created_at\":\"2025-12-08 09:34:20\"}', '', '2026-02-15 06:29:32'),
(300, 2, 'Modern Abstract Night|{\"id\":\"2\",\"title\":\"Modern Abstract Night\",\"event_date\":\"2025-12-10\",\"event_time\":\"10:00 PM\",\"location\":\"Main Gallery Hall\",\"created_at\":\"2025-11-30 06:33:58\"}', '', '2026-02-15 06:29:38'),
(301, 135, 'Guest|{\"username\":\"Guest\",\"email\":\"tdz.qmeiimna@gmail.com\",\"mobile\":\"89422734234\",\"message\":\"\\u60c5\\u8da3\\u8c03\\u6559\\u4e2d\\u7684\\u5fc3\\u7406\\u5b89\\u5168\\u8fb9\\u754c\\u6307\\u5357\\n\\u7b2c\\u4e00\\u6b21\\u628a\\u201c\\u60c5\\u8da3\\u8c03\\u6559\\u201d\\u8bf4\\u51fa\\u53', 'inquiries', '2026-02-15 08:02:50'),
(302, 137, 'Guest|{\"username\":\"Guest\",\"email\":\"iyurohelu529@gmail.com\",\"mobile\":\"4781493661\",\"message\":\"ZqihDhIgEssxyZnWVJL\",\"attachment\":null,\"status\":\"unread\",\"created_at\":\"2025-12-28 19:58:04\"}', 'inquiries', '2026-02-15 08:03:01'),
(303, 146, 'Guest|{\"username\":\"Guest\",\"email\":\"roofa2000@automisly.org\",\"mobile\":\"531243027839\",\"message\":\"\\ud83d\\udc40 Dating for sex. Join -- yandex.com\\/poll\\/43o224okZdReGRb1Q8PXXJ?hs=106e34632ff7b89267277c29e38e5625&amp; Reminder \\u2116 AQFY1597785 \\ud83d\\udc40\"', 'inquiries', '2026-02-15 08:03:11'),
(304, 136, 'Guest|{\"username\":\"Guest\",\"email\":\"zekisuquc419@gmail.com\",\"mobile\":\"85583349381\",\"message\":\"Hi, \\u10db\\u10d8\\u10dc\\u10d3\\u10dd\\u10d3\\u10d0 \\u10d5\\u10d8\\u10ea\\u10dd\\u10d3\\u10d4 \\u10d7\\u10e5\\u10d5\\u10d4\\u10dc\\u10d8 \\u10e4\\u10d0\\u10e1\\u10d8.\",\"attachment\":n', 'inquiries', '2026-02-15 08:03:21'),
(305, 114, 'Guest|{\"username\":\"Guest\",\"email\":\"veita@btcmod.com\",\"mobile\":\"589816858755\",\"message\":\"\\ud83d\\ude1b Sex Dating. Go - yandex.com\\/poll\\/LZW8GPQdJg3xe5C7gt95bD?hs=b6aa7fdcb253bd770bc5da9df1b370b4&amp; Notification # 2786 \\ud83d\\ude1b\",\"attachment\":null,\"st', 'inquiries', '2026-02-15 08:03:33'),
(306, 41, '123|{\"description\":\"123\",\"price\":\"123.00\",\"duration\":\"08:00 Hours\",\"image\":\"1765192350_facebook-app-symbol.png\"}', 'services', '2026-02-18 14:37:30'),
(307, 40, '123|{\"description\":\"123\",\"price\":\"123.00\",\"duration\":\"07:30\",\"image\":\"1765192304_Untitled Diagram-Page-2.drawio.png\"}', 'services', '2026-02-18 14:37:34'),
(308, 38, 'asd|{\"description\":\"123\",\"price\":\"123123.00\",\"duration\":\"01:00\",\"image\":\"1765191555_facebook-app-symbol.png\"}', 'services', '2026-02-18 14:37:37'),
(309, 36, 'Custom Frame|{\"description\":\"Customize your frame to fit your desire.\",\"price\":\"99999999.99\",\"duration\":\"4 Hours\",\"image\":\"1764526051_Screenshot_20251114_045133_com.huawei.android.launcher.jpg\"}', 'services', '2026-02-18 14:37:43'),
(310, 35, 'Art Appraisal|{\"description\":\"Art appraisal is the process of checking an artwork to find out how much it is worth. An appraiser looks at the artist, the artwork’s condition, its history, and current market prices to give a fair value.\",\"price\":\"20000000.', 'services', '2026-02-18 14:37:46');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(20) DEFAULT 'user',
  `reset_token_hash` varchar(64) DEFAULT NULL,
  `reset_token_expires_at` datetime DEFAULT NULL,
  `account_activation_hash` varchar(64) DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `role`, `reset_token_hash`, `reset_token_expires_at`, `account_activation_hash`, `image_path`) VALUES
(1, 'Keycm', 'penapaul858@gmail.com', '$2y$10$uLXGTKqqRQgVsXBwO89aHeI7L9NdNURnqiIt8NBbKUl8Z2IVOFi1.', 'user', 'b9196683c40dd7cecb4dfc8ffc9ed64d4bc192f126d9d771706e791726582b26', '2025-11-29 16:05:41', NULL, '1764414221_img-17.jpg'),
(40, 'Isaac Jed Macaraeg', 'isaacjedm@gmail.com', '$2y$10$ViG62h6xvM40j17UqkWi6OadRocEFEqU2cTXJM8atiSFi.FW/i1G2', 'user', 'cb57f03a29670cac9cb70b51f9eafda9e09a11e61460501de7aec706edcc4dbf', '2026-03-08 06:51:54', NULL, '1764427752_makima.jpg'),
(45, 'isaacjed', 'gnc.isaacjedm@gmail.com', '$2y$10$fVyq7VeGoVVKD/I1l6RiiuO70RXgqNoKjskMSC8gz/eHW28Z69Gpq', 'user', NULL, '2025-11-29 17:16:41', '150025', NULL),
(46, 'jann kyle', 'yuta.zzz06@gmail.com', '$2y$10$ZaaoBPdkVY2f2rtj7OC9m.Sa1nLiWk8E/IfeURjK33ySO2Wy7WCbW', 'user', NULL, '2025-11-29 17:21:56', '752455', NULL),
(48, 'Khazmiri', 'johnfelix.dizon123@gmail.com', '$2y$10$L1o/StwXFa2LNS0g8m28RuWuLBQ19/hwZbZKguA3fLG1L6L.Bbl.u', 'user', NULL, NULL, NULL, '1764493492_cdc3a3ab0e9660e72f5173089b10e9e8.jpg'),
(50, 'Jinzo', 'valencia04jeremiah29@gmail.com', '$2y$10$.E7NFTUyk7N6IzofUvmoeuJiLriWWYylUAe4MP0TpYXDaYFGE/6UO', 'admin', NULL, NULL, NULL, NULL),
(52, 'KQCsbnYQaNSwZPRujWcRJ', 'yuloyoc323@gmail.com', '$2y$10$9Bcmaf9O61F13TbBo6zQUuqRW5Hp9mmwrPmVg87dcdrgZocnI04tS', 'user', '2342748aa84703041454a2c0874683e6035e33911640c776eecf162038b6ddfe', '2025-12-01 09:34:51', '515237', NULL),
(62, 'Jemm', 'Valencia14jeremiah@gmail.com', '$2y$10$G76o0cnPW2vkZ2/k1I1.5uRQ/eVgXRT4EsB5xwBKi5jnujMdcW50e', 'user', NULL, NULL, NULL, NULL),
(63, 'christian', 'keycm109@gmail.com', '$2y$10$McFVd2.Uk69N7DJ6jTg/z.hK.rxdgRDNoklJaYxXEM8IYuxKclxce', 'user', NULL, NULL, NULL, NULL),
(64, 'IujzUhUcmPRhIbBPzWGn', 'numepikexoy729@gmail.com', '$2y$10$fHNtx/B/.KunR1xbKqnh4OqnPLkPF6V9LRtnnlNFhbEEgyEFgCYh6', 'user', 'fe27196db38490a37cbcbbcbba188978ed153e7a0cc4c28a963806925de6b27d', '2025-12-14 17:04:48', '841654', NULL),
(65, 'meKdHgzbQaWwUhHelM', 'tececofoc33@gmail.com', '$2y$10$ESEfTH4IYBUOLDuJ3wMaZ.GvBMELvGCbwnfa1XgDwS76ywugf7gjG', 'user', NULL, '2025-12-21 03:58:18', '861024', NULL),
(66, 'jmnPxJClLpotbuezaWDnkDkh', 'iyurohelu529@gmail.com', '$2y$10$/ExKnlHm.imxzBDTzPgsbOU71fu1s7a46DgnffJzJoNyuxHZfINc6', 'user', NULL, '2025-12-28 20:07:57', '775448', NULL),
(67, 'bry26', 'bryllelava26@gmail.com', '$2y$10$PSUI9EvWDlhYyBWDi4w64OtTLuJq15aRIcdTWyzoIwrDu0sn1K1vi', 'manager', NULL, NULL, NULL, '1770110697_d18fc76a-8e6e-4aaf-984e-218b41da1890.png'),
(68, 'Ms_Gzelle', 'gzelleabrenicavelasco@gmail.com', '$2y$10$5BgBMUSw3jwItl0PibXe3.x0KF73sZFlbJMRKrrqrq82e4mmziFN2', 'admin', NULL, NULL, NULL, '1770722597_download.png'),
(69, 'Keytflcs', 'falcesokath116@gmail.com', '$2y$10$PKj0bret5SlxqbpJavRESOSwAcAkzNm.QRxwBkG1oQP98SMpiXiHS', 'admin', NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_artists`
--
ALTER TABLE `about_artists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artist_likes`
--
ALTER TABLE `artist_likes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_artist_like` (`user_id`,`artist_id`);

--
-- Indexes for table `artworks`
--
ALTER TABLE `artworks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `artwork_id` (`artwork_id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hero_images`
--
ALTER TABLE `hero_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hero_slider`
--
ALTER TABLE `hero_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hero_slides`
--
ALTER TABLE `hero_slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inquiries`
--
ALTER TABLE `inquiries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `service_id` (`service_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trash_bin`
--
ALTER TABLE `trash_bin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `reset_token_hash` (`reset_token_hash`),
  ADD UNIQUE KEY `account_activation_hash` (`account_activation_hash`),
  ADD UNIQUE KEY `email_2` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_artists`
--
ALTER TABLE `about_artists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `artists`
--
ALTER TABLE `artists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `artist_likes`
--
ALTER TABLE `artist_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `artworks`
--
ALTER TABLE `artworks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `hero_images`
--
ALTER TABLE `hero_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hero_slider`
--
ALTER TABLE `hero_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hero_slides`
--
ALTER TABLE `hero_slides`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `inquiries`
--
ALTER TABLE `inquiries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `trash_bin`
--
ALTER TABLE `trash_bin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=311;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `favorites_ibfk_2` FOREIGN KEY (`artwork_id`) REFERENCES `artworks` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `ratings_ibfk_2` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
