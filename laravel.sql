-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2021 at 08:42 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log_logs`
--

CREATE TABLE `activity_log_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `log_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `subject_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_id` int(11) DEFAULT NULL,
  `causer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `properties` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_log_logs`
--

INSERT INTO `activity_log_logs` (`id`, `log_name`, `description`, `subject_id`, `subject_type`, `causer_id`, `causer_type`, `properties`, `created_at`, `updated_at`) VALUES
(1, 'default', 'Shipment has been created', 1, 'App\\Shipment', 1, 'App\\User', '[]', '2021-04-06 09:01:23', '2021-04-06 09:01:23'),
(2, 'default', 'To be collected from Gardens office, ()', 1, 'App\\Shipment', 1, 'App\\User', '[]', '2021-04-06 09:15:20', '2021-04-06 09:15:20'),
(3, 'default', 'Shipment has been cancelled, REASON: Sender cancelled the shipment\n()', 1, 'App\\Shipment', 1, 'App\\User', '[]', '2021-04-06 09:18:54', '2021-04-06 09:18:54'),
(4, 'default', 'Shipment delivered successfully!, ()', 1, 'App\\Shipment', 1, 'App\\User', '[]', '2021-04-06 09:19:27', '2021-04-06 09:19:27'),
(5, 'default', 'Shipment picked up, ()', 1, 'App\\Shipment', 1, 'App\\User', '[]', '2021-04-06 09:19:50', '2021-04-06 09:19:50'),
(6, 'default', 'To be collected from Gardens office, ()', 1, 'App\\Shipment', 1, 'App\\User', '[]', '2021-04-06 09:20:09', '2021-04-06 09:20:09'),
(7, 'default', 'Pick up created on Sun, Apr 11, 2021 9:37 AM by root', 1, 'App\\Pickup', 1, 'App\\User', '[]', '2021-04-11 05:37:59', '2021-04-11 05:37:59'),
(8, 'default', 'Pick up created on Sun, Apr 11, 2021 10:19 AM by root', 2, 'App\\Pickup', 1, 'App\\User', '[]', '2021-04-11 06:19:38', '2021-04-11 06:19:38'),
(9, 'default', 'Pickup has been collected', 1, 'App\\Pickup', 2, 'App\\User', '[]', '2021-04-11 07:06:10', '2021-04-11 07:06:10'),
(10, 'default', 'Shipment is received to company office in Gardens, ()', 1, 'App\\Shipment', 1, 'App\\User', '[]', '2021-04-11 07:31:48', '2021-04-11 07:31:48'),
(11, 'default', 'Shipment has been departed to Gardens, ()', 1, 'App\\Shipment', 1, 'App\\User', '[]', '2021-04-11 08:12:46', '2021-04-11 08:12:46'),
(12, 'default', 'Shipment is out for delivery, ()', 1, 'App\\Shipment', 1, 'App\\User', '[]', '2021-04-11 08:13:13', '2021-04-11 08:13:13'),
(13, 'default', 'Shipment delivered successfully!, ()', 1, 'App\\Shipment', 1, 'App\\User', '[]', '2021-04-11 08:25:28', '2021-04-11 08:25:28'),
(14, 'default', 'Pickup is ready', 2, 'App\\Pickup', 1, 'App\\User', '[]', '2021-04-11 09:31:41', '2021-04-11 09:31:41'),
(15, 'default', 'Pick up time has been rescheduled to Apr 11, 2021 1:00 PM - Apr 11, 2021 5:30 PM, By Client', 2, 'App\\Pickup', 2, 'App\\User', '[]', '2021-04-11 10:13:09', '2021-04-11 10:13:09'),
(16, 'default', 'Pickup has been rejected, Client didn\'t answer on arrival', 2, 'App\\Pickup', 2, 'App\\User', '[]', '2021-04-11 10:13:30', '2021-04-11 10:13:30');

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `zone_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sameday_price` double NOT NULL,
  `scheduled_price` double NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `zone_id`, `name`, `sameday_price`, `scheduled_price`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Al barsha 1', 10, 20, NULL, '2021-04-06 08:34:19', '2021-04-06 08:34:19'),
(2, 1, 'Al barsha 2', 11, 21, NULL, '2021-04-06 08:35:42', '2021-04-06 08:35:42'),
(3, 2, 'Abu Hail', 50, 25, NULL, '2021-04-07 09:42:28', '2021-04-07 09:42:28'),
(4, 2, 'Al Muraqqabat', 50, 25, NULL, '2021-04-07 09:42:51', '2021-04-07 09:42:51'),
(5, 3, 'Al Qusais', 50, 25, NULL, '2021-04-07 09:43:43', '2021-04-07 09:43:43'),
(6, 3, 'Al Rashidiyah', 55, 30, NULL, '2021-04-07 09:45:22', '2021-04-07 09:45:22');

-- --------------------------------------------------------

--
-- Table structure for table `alerts`
--

CREATE TABLE `alerts` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attachments`
--

CREATE TABLE `attachments` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attachments`
--

INSERT INTO `attachments` (`id`, `author_id`, `name`, `type`, `path`, `url`, `created_at`, `updated_at`, `author_type`) VALUES
(1, 10000, 'Business Proposal.pdf', 'pdf', 'D:\\projects\\delivery-system-master\\storage\\app/public\\clients/abT5vznT0a8f2K02dGRa6O73PQpSGXtOfdN9hePL.pdf', '/storage/clients/abT5vznT0a8f2K02dGRa6O73PQpSGXtOfdN9hePL.pdf', '2021-04-06 08:46:21', '2021-04-06 08:46:21', 'App\\Client'),
(2, 10000, 'Lotus Prime - Group of Companies.pdf', 'pdf', 'D:\\projects\\delivery-system-master\\storage\\app/public\\clients/2DC6wh6wEsFAfpvNEx798834NCscQvMmzj7NRfNS.pdf', '/storage/clients/2DC6wh6wEsFAfpvNEx798834NCscQvMmzj7NRfNS.pdf', '2021-04-06 08:46:21', '2021-04-06 08:46:21', 'App\\Client');

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_main` tinyint(1) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `name`, `address`, `is_main`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Gardens', '', 1, NULL, '2021-04-06 07:21:04', '2021-04-06 07:21:04');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `account_number` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trade_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_sub` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_maps` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_pickup_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_pickup_maps` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zone_id` int(10) UNSIGNED NOT NULL,
  `sector` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` tinyint(4) DEFAULT NULL,
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_account_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_holder_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_iban` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `alerted` tinyint(1) NOT NULL DEFAULT 0,
  `national_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `swift_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipments_email_updates` tinyint(1) NOT NULL DEFAULT 0,
  `note_for_courier` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method_id` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `payment_method_price` double NOT NULL DEFAULT 0,
  `secondary_emails` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`account_number`, `name`, `trade_name`, `password`, `phone_number`, `email`, `address_country`, `address_city`, `address_sub`, `address_maps`, `address_pickup_text`, `address_pickup_maps`, `url_facebook`, `url_instagram`, `url_website`, `zone_id`, `sector`, `category`, `bank_name`, `bank_account_number`, `bank_holder_name`, `bank_iban`, `created_at`, `updated_at`, `deleted_at`, `alerted`, `national_id`, `swift_code`, `shipments_email_updates`, `note_for_courier`, `payment_method_id`, `payment_method_price`, `secondary_emails`) VALUES
(10000, 'Kim', 'Kimstore Online Shop', 'bena725', '971567949736', 'oo@concerpt.com', 'AE', 'Dubai', 'Dubai', NULL, 'Suite 1405 Jumeirah Bay X2, JLT, Dubai, UAE s', NULL, NULL, NULL, NULL, 1, 'Technology', 2, NULL, NULL, NULL, NULL, '2021-04-06 08:46:17', '2021-04-11 05:31:17', NULL, 0, '795-1998-893542', NULL, 1, NULL, 1, 0, NULL),
(10001, 'Jane', 'UAE Ukay-ukay', 'voti802', '971567949736', 'ec@concerpt.com', 'AE', 'Sharjah', NULL, NULL, 'Abu Hail', NULL, NULL, NULL, NULL, 2, 'Apparel', 1, 'ENBD', '987654321', 'Jane', '12345', '2021-04-11 06:17:31', '2021-04-11 06:17:31', NULL, 0, '123-4567-890987', '9876', 0, NULL, 3, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `client_address`
--

CREATE TABLE `client_address` (
  `client_account_number` int(10) UNSIGNED NOT NULL,
  `address_id` int(10) UNSIGNED NOT NULL,
  `sameday_price` double DEFAULT NULL,
  `scheduled_price` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `client_charged_for`
--

CREATE TABLE `client_charged_for` (
  `id` int(10) UNSIGNED NOT NULL,
  `status_id` int(11) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 0,
  `type` enum('fixed','percentage') COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` double(8,2) NOT NULL,
  `client_account_number` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `options` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`options`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `client_charged_for`
--

INSERT INTO `client_charged_for` (`id`, `status_id`, `enabled`, `type`, `value`, `client_account_number`, `created_at`, `updated_at`, `options`) VALUES
(1, 11, 1, 'percentage', 100.00, 10000, '2021-04-06 08:46:21', '2021-04-06 08:46:21', NULL),
(2, 11, 1, 'percentage', 100.00, 10001, '2021-04-11 06:17:36', '2021-04-11 06:17:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `client_limits`
--

CREATE TABLE `client_limits` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_account_number` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` double(8,2) NOT NULL,
  `appliedOn` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`appliedOn`)),
  `penalty` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` enum('fixed','percentage') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fixed'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `client_service`
--

CREATE TABLE `client_service` (
  `service_id` int(10) UNSIGNED NOT NULL,
  `price` double NOT NULL,
  `client_account_number` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `client_zone`
--

CREATE TABLE `client_zone` (
  `client_account_number` int(10) UNSIGNED NOT NULL,
  `zone_id` int(10) UNSIGNED NOT NULL,
  `base_weight` double DEFAULT NULL,
  `charge_per_unit` double DEFAULT NULL,
  `extra_fees_per_unit` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `couriers`
--

CREATE TABLE `couriers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` tinyint(4) NOT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `couriers`
--

INSERT INTO `couriers` (`id`, `name`, `password`, `phone_number`, `email`, `address`, `category`, `notes`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Arslan (Sunny)', 'voha448', '971567949736', 'oo@concerpt.com', 'JLT', 1, NULL, '2021-04-06 08:37:10', '2021-04-11 05:28:57', NULL),
(2, 'Eric', 'vexe881', '971567949736', 'ec@concerpt.com', 'Al Rigga', 1, NULL, '2021-04-11 10:16:21', '2021-04-11 10:16:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `courier_zone`
--

CREATE TABLE `courier_zone` (
  `courier_id` int(10) UNSIGNED NOT NULL,
  `zone_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courier_zone`
--

INSERT INTO `courier_zone` (`courier_id`, `zone_id`) VALUES
(1, 1),
(2, 2),
(2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `csv_temp_data`
--

CREATE TABLE `csv_temp_data` (
  `id` int(10) UNSIGNED NOT NULL,
  `csv_filename` text NOT NULL,
  `csv_header` text NOT NULL,
  `csv_data` text NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `csv_temp_data`
--

INSERT INTO `csv_temp_data` (`id`, `csv_filename`, `csv_header`, `csv_data`, `updated_at`, `created_at`) VALUES
(1, 'Nutshell-Example.csv', '0', '[[\"Account\\/Company\",\"Full Name\",\"Contact First Name\",\"Contact Last Name\",\"Email\",\"Email2\",\"Email3\",\"Phone\",\"Phone2\",\"Phone3\",\"URL\",\"Address 1\",\"City\",\"State\",\"Zip\",\"Country\",\"Contact type\",\"Tag 2\",\"Birthday (custom field)\",\"Company Type\"],[\"Appleseed Ventures\",\"Johnny Appleseed\",\"Johnny\",\"Appleseed\",\"johnn@appleseed.com\",\"johnn@appleseed.com2\",\"johnn@appleseed.com3\",\"555-555-5551\",\"555-555-5552\",\"555-555-5553\",\"http:\\/\\/www.jappleseed.com\\/\",\"123 Main Street\",\"Austin\",\"TX\",\"78701\",\"UAE\",\"Supplier\",\"Apples\",\"12\\/15\\/1964\",\"Real  Estate\"],[\"Appleseed Ventures\",\"Jerry Appleseed\",\"Jerry\",\"Appleseed\",\"jerry@appleseed.com\",\"jerry@appleseed.com2\",\"jerry@appleseed.com3\",\"555-555-5551\",\"555-555-5552\",\"555-555-5553\",\"http:\\/\\/www.jappleseed.com\\/\",\"123 Main Street\",\"Austin\",\"TX\",\"78701\",\"US\",\"Supplier\",\"Apples\",\"2\\/1\\/1952\",\"Real  Estate\"],[\"Appleseed Ventures\",\"Josie Appleseed\",\"Josie\",\"Appleseed\",\"josie@appleseed.com\",\"josie@appleseed.com2\",\"josie@appleseed.com3\",\"555-555-5551\",\"555-555-5552\",\"555-555-5553\",\"http:\\/\\/www.jappleseed.com\\/\",\"123 Main Street\",\"Austin\",\"TX\",\"78701\",\"CA\",\"Supplier\",\"Apples\",\"7\\/8\\/1982\",\"Real  Estate\"],[\"Appleseed Ventures\",\"Janis Appleseed\",\"Janis\",\"Appleseed\",\"janis@appleseed.com\",\"janis@appleseed.com2\",\"janis@appleseed.com3\",\"555-555-5551\",\"555-555-5552\",\"555-555-5553\",\"http:\\/\\/www.jappleseed.com\\/\",\"123 Main Street\",\"Austin\",\"TX\",\"78701\",\"EU\",\"Costumer\",\"Apples\",\"9\\/20\\/1962\",\"Real  Estate\"],[\"Appleseed Ventures\",\"Joseph Appleseed\",\"Joseph\",\"Appleseed\",\"joseph@appleseed.com\",\"joseph@appleseed.com2\",\"joseph@appleseed.com3\",\"555-555-5551\",\"555-555-5552\",\"555-555-5553\",\"http:\\/\\/www.jappleseed.com\\/\",\"123 Main Street\",\"Austin\",\"TX\",\"78701\",\"NA\",\"Costumer\",\"Apples\",\"5\\/19\\/1975\",\"Real  Estate\"],[\"Appleseed Ventures\",\"Jim Appleseed\",\"Jim\",\"Appleseed\",\"jim@appleseed.com\",\"jim@appleseed.com2\",\"jim@appleseed.com3\",\"555-555-5551\",\"555-555-5552\",\"555-555-5553\",\"http:\\/\\/www.jappleseed.com\\/\",\"123 Main Street\",\"Austin\",\"TX\",\"78701\",\"PH\",\"Costumer\",\"Apples\",\"6\\/12\\/1970\",\"Real  Estate\"]]', '2021-06-23 08:54:22', '2021-06-23 08:54:22'),
(2, 'Nutshell-Example.csv', '0', '[[\"Account\\/Company\",\"Full Name\",\"Contact First Name\",\"Contact Last Name\",\"Email\",\"Email2\",\"Email3\",\"Phone\",\"Phone2\",\"Phone3\",\"URL\",\"Address 1\",\"City\",\"State\",\"Zip\",\"Country\",\"Contact type\",\"Tag 2\",\"Birthday (custom field)\",\"Company Type\"],[\"Appleseed Ventures\",\"Johnny Appleseed\",\"Johnny\",\"Appleseed\",\"johnn@appleseed.com\",\"johnn@appleseed.com2\",\"johnn@appleseed.com3\",\"555-555-5551\",\"555-555-5552\",\"555-555-5553\",\"http:\\/\\/www.jappleseed.com\\/\",\"123 Main Street\",\"Austin\",\"TX\",\"78701\",\"UAE\",\"Supplier\",\"Apples\",\"12\\/15\\/1964\",\"Real  Estate\"],[\"Appleseed Ventures\",\"Jerry Appleseed\",\"Jerry\",\"Appleseed\",\"jerry@appleseed.com\",\"jerry@appleseed.com2\",\"jerry@appleseed.com3\",\"555-555-5551\",\"555-555-5552\",\"555-555-5553\",\"http:\\/\\/www.jappleseed.com\\/\",\"123 Main Street\",\"Austin\",\"TX\",\"78701\",\"US\",\"Supplier\",\"Apples\",\"2\\/1\\/1952\",\"Real  Estate\"],[\"Appleseed Ventures\",\"Josie Appleseed\",\"Josie\",\"Appleseed\",\"josie@appleseed.com\",\"josie@appleseed.com2\",\"josie@appleseed.com3\",\"555-555-5551\",\"555-555-5552\",\"555-555-5553\",\"http:\\/\\/www.jappleseed.com\\/\",\"123 Main Street\",\"Austin\",\"TX\",\"78701\",\"CA\",\"Supplier\",\"Apples\",\"7\\/8\\/1982\",\"Real  Estate\"],[\"Appleseed Ventures\",\"Janis Appleseed\",\"Janis\",\"Appleseed\",\"janis@appleseed.com\",\"janis@appleseed.com2\",\"janis@appleseed.com3\",\"555-555-5551\",\"555-555-5552\",\"555-555-5553\",\"http:\\/\\/www.jappleseed.com\\/\",\"123 Main Street\",\"Austin\",\"TX\",\"78701\",\"EU\",\"Costumer\",\"Apples\",\"9\\/20\\/1962\",\"Real  Estate\"],[\"Appleseed Ventures\",\"Joseph Appleseed\",\"Joseph\",\"Appleseed\",\"joseph@appleseed.com\",\"joseph@appleseed.com2\",\"joseph@appleseed.com3\",\"555-555-5551\",\"555-555-5552\",\"555-555-5553\",\"http:\\/\\/www.jappleseed.com\\/\",\"123 Main Street\",\"Austin\",\"TX\",\"78701\",\"NA\",\"Costumer\",\"Apples\",\"5\\/19\\/1975\",\"Real  Estate\"],[\"Appleseed Ventures\",\"Jim Appleseed\",\"Jim\",\"Appleseed\",\"jim@appleseed.com\",\"jim@appleseed.com2\",\"jim@appleseed.com3\",\"555-555-5551\",\"555-555-5552\",\"555-555-5553\",\"http:\\/\\/www.jappleseed.com\\/\",\"123 Main Street\",\"Austin\",\"TX\",\"78701\",\"PH\",\"Costumer\",\"Apples\",\"6\\/12\\/1970\",\"Real  Estate\"]]', '2021-06-23 08:56:57', '2021-06-23 08:56:57'),
(3, 'Nutshell-Example.csv', '0', '[[\"Account\\/Company\",\"Full Name\",\"Contact First Name\",\"Contact Last Name\",\"Email\",\"Email2\",\"Email3\",\"Phone\",\"Phone2\",\"Phone3\",\"URL\",\"Address 1\",\"City\",\"State\",\"Zip\",\"Country\",\"Contact type\",\"Tag 2\",\"Birthday (custom field)\",\"Company Type\"],[\"Appleseed Ventures\",\"Johnny Appleseed\",\"Johnny\",\"Appleseed\",\"johnn@appleseed.com\",\"johnn@appleseed.com2\",\"johnn@appleseed.com3\",\"555-555-5551\",\"555-555-5552\",\"555-555-5553\",\"http:\\/\\/www.jappleseed.com\\/\",\"123 Main Street\",\"Austin\",\"TX\",\"78701\",\"UAE\",\"Supplier\",\"Apples\",\"12\\/15\\/1964\",\"Real  Estate\"],[\"Appleseed Ventures\",\"Jerry Appleseed\",\"Jerry\",\"Appleseed\",\"jerry@appleseed.com\",\"jerry@appleseed.com2\",\"jerry@appleseed.com3\",\"555-555-5551\",\"555-555-5552\",\"555-555-5553\",\"http:\\/\\/www.jappleseed.com\\/\",\"123 Main Street\",\"Austin\",\"TX\",\"78701\",\"US\",\"Supplier\",\"Apples\",\"2\\/1\\/1952\",\"Real  Estate\"],[\"Appleseed Ventures\",\"Josie Appleseed\",\"Josie\",\"Appleseed\",\"josie@appleseed.com\",\"josie@appleseed.com2\",\"josie@appleseed.com3\",\"555-555-5551\",\"555-555-5552\",\"555-555-5553\",\"http:\\/\\/www.jappleseed.com\\/\",\"123 Main Street\",\"Austin\",\"TX\",\"78701\",\"CA\",\"Supplier\",\"Apples\",\"7\\/8\\/1982\",\"Real  Estate\"],[\"Appleseed Ventures\",\"Janis Appleseed\",\"Janis\",\"Appleseed\",\"janis@appleseed.com\",\"janis@appleseed.com2\",\"janis@appleseed.com3\",\"555-555-5551\",\"555-555-5552\",\"555-555-5553\",\"http:\\/\\/www.jappleseed.com\\/\",\"123 Main Street\",\"Austin\",\"TX\",\"78701\",\"EU\",\"Costumer\",\"Apples\",\"9\\/20\\/1962\",\"Real  Estate\"],[\"Appleseed Ventures\",\"Joseph Appleseed\",\"Joseph\",\"Appleseed\",\"joseph@appleseed.com\",\"joseph@appleseed.com2\",\"joseph@appleseed.com3\",\"555-555-5551\",\"555-555-5552\",\"555-555-5553\",\"http:\\/\\/www.jappleseed.com\\/\",\"123 Main Street\",\"Austin\",\"TX\",\"78701\",\"NA\",\"Costumer\",\"Apples\",\"5\\/19\\/1975\",\"Real  Estate\"],[\"Appleseed Ventures\",\"Jim Appleseed\",\"Jim\",\"Appleseed\",\"jim@appleseed.com\",\"jim@appleseed.com2\",\"jim@appleseed.com3\",\"555-555-5551\",\"555-555-5552\",\"555-555-5553\",\"http:\\/\\/www.jappleseed.com\\/\",\"123 Main Street\",\"Austin\",\"TX\",\"78701\",\"PH\",\"Costumer\",\"Apples\",\"6\\/12\\/1970\",\"Real  Estate\"]]', '2021-06-23 09:06:01', '2021-06-23 09:06:01'),
(4, 'Nutshell-Example.csv', '0', '[[\"Account\\/Company\",\"Full Name\",\"Contact First Name\",\"Contact Last Name\",\"Email\",\"Email2\",\"Email3\",\"Phone\",\"Phone2\",\"Phone3\",\"URL\",\"Address 1\",\"City\",\"State\",\"Zip\",\"Country\",\"Contact type\",\"Tag 2\",\"Birthday (custom field)\",\"Company Type\"],[\"Appleseed Ventures\",\"Johnny Appleseed\",\"Johnny\",\"Appleseed\",\"johnn@appleseed.com\",\"johnn@appleseed.com2\",\"johnn@appleseed.com3\",\"555-555-5551\",\"555-555-5552\",\"555-555-5553\",\"http:\\/\\/www.jappleseed.com\\/\",\"123 Main Street\",\"Austin\",\"TX\",\"78701\",\"UAE\",\"Supplier\",\"Apples\",\"12\\/15\\/1964\",\"Real  Estate\"],[\"Appleseed Ventures\",\"Jerry Appleseed\",\"Jerry\",\"Appleseed\",\"jerry@appleseed.com\",\"jerry@appleseed.com2\",\"jerry@appleseed.com3\",\"555-555-5551\",\"555-555-5552\",\"555-555-5553\",\"http:\\/\\/www.jappleseed.com\\/\",\"123 Main Street\",\"Austin\",\"TX\",\"78701\",\"US\",\"Supplier\",\"Apples\",\"2\\/1\\/1952\",\"Real  Estate\"],[\"Appleseed Ventures\",\"Josie Appleseed\",\"Josie\",\"Appleseed\",\"josie@appleseed.com\",\"josie@appleseed.com2\",\"josie@appleseed.com3\",\"555-555-5551\",\"555-555-5552\",\"555-555-5553\",\"http:\\/\\/www.jappleseed.com\\/\",\"123 Main Street\",\"Austin\",\"TX\",\"78701\",\"CA\",\"Supplier\",\"Apples\",\"7\\/8\\/1982\",\"Real  Estate\"],[\"Appleseed Ventures\",\"Janis Appleseed\",\"Janis\",\"Appleseed\",\"janis@appleseed.com\",\"janis@appleseed.com2\",\"janis@appleseed.com3\",\"555-555-5551\",\"555-555-5552\",\"555-555-5553\",\"http:\\/\\/www.jappleseed.com\\/\",\"123 Main Street\",\"Austin\",\"TX\",\"78701\",\"EU\",\"Costumer\",\"Apples\",\"9\\/20\\/1962\",\"Real  Estate\"],[\"Appleseed Ventures\",\"Joseph Appleseed\",\"Joseph\",\"Appleseed\",\"joseph@appleseed.com\",\"joseph@appleseed.com2\",\"joseph@appleseed.com3\",\"555-555-5551\",\"555-555-5552\",\"555-555-5553\",\"http:\\/\\/www.jappleseed.com\\/\",\"123 Main Street\",\"Austin\",\"TX\",\"78701\",\"NA\",\"Costumer\",\"Apples\",\"5\\/19\\/1975\",\"Real  Estate\"],[\"Appleseed Ventures\",\"Jim Appleseed\",\"Jim\",\"Appleseed\",\"jim@appleseed.com\",\"jim@appleseed.com2\",\"jim@appleseed.com3\",\"555-555-5551\",\"555-555-5552\",\"555-555-5553\",\"http:\\/\\/www.jappleseed.com\\/\",\"123 Main Street\",\"Austin\",\"TX\",\"78701\",\"PH\",\"Costumer\",\"Apples\",\"6\\/12\\/1970\",\"Real  Estate\"]]', '2021-06-24 03:59:23', '2021-06-24 03:59:23'),
(5, 'Nutshell-Example.csv', '0', '[[\"Account\\/Company\",\"Full Name\",\"Contact First Name\",\"Contact Last Name\",\"Email\",\"Email2\",\"Email3\",\"Phone\",\"Phone2\",\"Phone3\",\"URL\",\"Address 1\",\"City\",\"State\",\"Zip\",\"Country\",\"Contact type\",\"Tag 2\",\"Birthday (custom field)\",\"Company Type\"],[\"Appleseed Ventures\",\"Johnny Appleseed\",\"Johnny\",\"Appleseed\",\"johnn@appleseed.com\",\"johnn@appleseed.com2\",\"johnn@appleseed.com3\",\"555-555-5551\",\"555-555-5552\",\"555-555-5553\",\"http:\\/\\/www.jappleseed.com\\/\",\"123 Main Street\",\"Austin\",\"TX\",\"78701\",\"UAE\",\"Supplier\",\"Apples\",\"12\\/15\\/1964\",\"Real  Estate\"],[\"Appleseed Ventures\",\"Jerry Appleseed\",\"Jerry\",\"Appleseed\",\"jerry@appleseed.com\",\"jerry@appleseed.com2\",\"jerry@appleseed.com3\",\"555-555-5551\",\"555-555-5552\",\"555-555-5553\",\"http:\\/\\/www.jappleseed.com\\/\",\"123 Main Street\",\"Austin\",\"TX\",\"78701\",\"US\",\"Supplier\",\"Apples\",\"2\\/1\\/1952\",\"Real  Estate\"],[\"Appleseed Ventures\",\"Josie Appleseed\",\"Josie\",\"Appleseed\",\"josie@appleseed.com\",\"josie@appleseed.com2\",\"josie@appleseed.com3\",\"555-555-5551\",\"555-555-5552\",\"555-555-5553\",\"http:\\/\\/www.jappleseed.com\\/\",\"123 Main Street\",\"Austin\",\"TX\",\"78701\",\"CA\",\"Supplier\",\"Apples\",\"7\\/8\\/1982\",\"Real  Estate\"],[\"Appleseed Ventures\",\"Janis Appleseed\",\"Janis\",\"Appleseed\",\"janis@appleseed.com\",\"janis@appleseed.com2\",\"janis@appleseed.com3\",\"555-555-5551\",\"555-555-5552\",\"555-555-5553\",\"http:\\/\\/www.jappleseed.com\\/\",\"123 Main Street\",\"Austin\",\"TX\",\"78701\",\"EU\",\"Costumer\",\"Apples\",\"9\\/20\\/1962\",\"Real  Estate\"],[\"Appleseed Ventures\",\"Joseph Appleseed\",\"Joseph\",\"Appleseed\",\"joseph@appleseed.com\",\"joseph@appleseed.com2\",\"joseph@appleseed.com3\",\"555-555-5551\",\"555-555-5552\",\"555-555-5553\",\"http:\\/\\/www.jappleseed.com\\/\",\"123 Main Street\",\"Austin\",\"TX\",\"78701\",\"NA\",\"Costumer\",\"Apples\",\"5\\/19\\/1975\",\"Real  Estate\"],[\"Appleseed Ventures\",\"Jim Appleseed\",\"Jim\",\"Appleseed\",\"jim@appleseed.com\",\"jim@appleseed.com2\",\"jim@appleseed.com3\",\"555-555-5551\",\"555-555-5552\",\"555-555-5553\",\"http:\\/\\/www.jappleseed.com\\/\",\"123 Main Street\",\"Austin\",\"TX\",\"78701\",\"PH\",\"Costumer\",\"Apples\",\"6\\/12\\/1970\",\"Real  Estate\"]]', '2021-06-24 04:50:09', '2021-06-24 04:50:09'),
(6, 'Nutshell-Example.csv', '0', '[[\"Account\\/Company\",\"Full Name\",\"Contact First Name\",\"Contact Last Name\",\"Email\",\"Email2\",\"Email3\",\"Phone\",\"Phone2\",\"Phone3\",\"URL\",\"Address 1\",\"City\",\"State\",\"Zip\",\"Country\",\"Contact type\",\"Tag 2\",\"Birthday (custom field)\",\"Company Type\"],[\"Appleseed Ventures\",\"Johnny Appleseed\",\"Johnny\",\"Appleseed\",\"johnn@appleseed.com\",\"johnn@appleseed.com2\",\"johnn@appleseed.com3\",\"555-555-5551\",\"555-555-5552\",\"555-555-5553\",\"http:\\/\\/www.jappleseed.com\\/\",\"123 Main Street\",\"Austin\",\"TX\",\"78701\",\"UAE\",\"Supplier\",\"Apples\",\"12\\/15\\/1964\",\"Real  Estate\"],[\"Appleseed Ventures\",\"Jerry Appleseed\",\"Jerry\",\"Appleseed\",\"jerry@appleseed.com\",\"jerry@appleseed.com2\",\"jerry@appleseed.com3\",\"555-555-5551\",\"555-555-5552\",\"555-555-5553\",\"http:\\/\\/www.jappleseed.com\\/\",\"123 Main Street\",\"Austin\",\"TX\",\"78701\",\"US\",\"Supplier\",\"Apples\",\"2\\/1\\/1952\",\"Real  Estate\"],[\"Appleseed Ventures\",\"Josie Appleseed\",\"Josie\",\"Appleseed\",\"josie@appleseed.com\",\"josie@appleseed.com2\",\"josie@appleseed.com3\",\"555-555-5551\",\"555-555-5552\",\"555-555-5553\",\"http:\\/\\/www.jappleseed.com\\/\",\"123 Main Street\",\"Austin\",\"TX\",\"78701\",\"CA\",\"Supplier\",\"Apples\",\"7\\/8\\/1982\",\"Real  Estate\"],[\"Appleseed Ventures\",\"Janis Appleseed\",\"Janis\",\"Appleseed\",\"janis@appleseed.com\",\"janis@appleseed.com2\",\"janis@appleseed.com3\",\"555-555-5551\",\"555-555-5552\",\"555-555-5553\",\"http:\\/\\/www.jappleseed.com\\/\",\"123 Main Street\",\"Austin\",\"TX\",\"78701\",\"EU\",\"Costumer\",\"Apples\",\"9\\/20\\/1962\",\"Real  Estate\"],[\"Appleseed Ventures\",\"Joseph Appleseed\",\"Joseph\",\"Appleseed\",\"joseph@appleseed.com\",\"joseph@appleseed.com2\",\"joseph@appleseed.com3\",\"555-555-5551\",\"555-555-5552\",\"555-555-5553\",\"http:\\/\\/www.jappleseed.com\\/\",\"123 Main Street\",\"Austin\",\"TX\",\"78701\",\"NA\",\"Costumer\",\"Apples\",\"5\\/19\\/1975\",\"Real  Estate\"],[\"Appleseed Ventures\",\"Jim Appleseed\",\"Jim\",\"Appleseed\",\"jim@appleseed.com\",\"jim@appleseed.com2\",\"jim@appleseed.com3\",\"555-555-5551\",\"555-555-5552\",\"555-555-5553\",\"http:\\/\\/www.jappleseed.com\\/\",\"123 Main Street\",\"Austin\",\"TX\",\"78701\",\"PH\",\"Costumer\",\"Apples\",\"6\\/12\\/1970\",\"Real  Estate\"]]', '2021-06-24 04:50:35', '2021-06-24 04:50:35'),
(7, 'Nutshell-Example.csv', '0', '[[\"Account\\/Company\",\"Full Name\",\"Contact First Name\",\"Contact Last Name\",\"Email\",\"Email2\",\"Email3\",\"Phone\",\"Phone2\",\"Phone3\",\"URL\",\"Address 1\",\"City\",\"State\",\"Zip\",\"Country\",\"Contact type\",\"Tag 2\",\"Birthday (custom field)\",\"Company Type\"],[\"Appleseed Ventures\",\"Johnny Appleseed\",\"Johnny\",\"Appleseed\",\"johnn@appleseed.com\",\"johnn@appleseed.com2\",\"johnn@appleseed.com3\",\"555-555-5551\",\"555-555-5552\",\"555-555-5553\",\"http:\\/\\/www.jappleseed.com\\/\",\"123 Main Street\",\"Austin\",\"TX\",\"78701\",\"UAE\",\"Supplier\",\"Apples\",\"12\\/15\\/1964\",\"Real  Estate\"],[\"Appleseed Ventures\",\"Jerry Appleseed\",\"Jerry\",\"Appleseed\",\"jerry@appleseed.com\",\"jerry@appleseed.com2\",\"jerry@appleseed.com3\",\"555-555-5551\",\"555-555-5552\",\"555-555-5553\",\"http:\\/\\/www.jappleseed.com\\/\",\"123 Main Street\",\"Austin\",\"TX\",\"78701\",\"US\",\"Supplier\",\"Apples\",\"2\\/1\\/1952\",\"Real  Estate\"],[\"Appleseed Ventures\",\"Josie Appleseed\",\"Josie\",\"Appleseed\",\"josie@appleseed.com\",\"josie@appleseed.com2\",\"josie@appleseed.com3\",\"555-555-5551\",\"555-555-5552\",\"555-555-5553\",\"http:\\/\\/www.jappleseed.com\\/\",\"123 Main Street\",\"Austin\",\"TX\",\"78701\",\"CA\",\"Supplier\",\"Apples\",\"7\\/8\\/1982\",\"Real  Estate\"],[\"Appleseed Ventures\",\"Janis Appleseed\",\"Janis\",\"Appleseed\",\"janis@appleseed.com\",\"janis@appleseed.com2\",\"janis@appleseed.com3\",\"555-555-5551\",\"555-555-5552\",\"555-555-5553\",\"http:\\/\\/www.jappleseed.com\\/\",\"123 Main Street\",\"Austin\",\"TX\",\"78701\",\"EU\",\"Costumer\",\"Apples\",\"9\\/20\\/1962\",\"Real  Estate\"],[\"Appleseed Ventures\",\"Joseph Appleseed\",\"Joseph\",\"Appleseed\",\"joseph@appleseed.com\",\"joseph@appleseed.com2\",\"joseph@appleseed.com3\",\"555-555-5551\",\"555-555-5552\",\"555-555-5553\",\"http:\\/\\/www.jappleseed.com\\/\",\"123 Main Street\",\"Austin\",\"TX\",\"78701\",\"NA\",\"Costumer\",\"Apples\",\"5\\/19\\/1975\",\"Real  Estate\"],[\"Appleseed Ventures\",\"Jim Appleseed\",\"Jim\",\"Appleseed\",\"jim@appleseed.com\",\"jim@appleseed.com2\",\"jim@appleseed.com3\",\"555-555-5551\",\"555-555-5552\",\"555-555-5553\",\"http:\\/\\/www.jappleseed.com\\/\",\"123 Main Street\",\"Austin\",\"TX\",\"78701\",\"PH\",\"Costumer\",\"Apples\",\"6\\/12\\/1970\",\"Real  Estate\"]]', '2021-06-24 04:50:51', '2021-06-24 04:50:51'),
(8, 'Nutshell-Example.csv', '0', '[[\"Account\\/Company\",\"Full Name\",\"Contact First Name\",\"Contact Last Name\",\"Email\",\"Email2\",\"Email3\",\"Phone\",\"Phone2\",\"Phone3\",\"URL\",\"Address 1\",\"City\",\"State\",\"Zip\",\"Country\",\"Contact type\",\"Tag 2\",\"Birthday (custom field)\",\"Company Type\"],[\"Appleseed Ventures\",\"Johnny Appleseed\",\"Johnny\",\"Appleseed\",\"johnn@appleseed.com\",\"johnn@appleseed.com2\",\"johnn@appleseed.com3\",\"555-555-5551\",\"555-555-5552\",\"555-555-5553\",\"http:\\/\\/www.jappleseed.com\\/\",\"123 Main Street\",\"Austin\",\"TX\",\"78701\",\"UAE\",\"Supplier\",\"Apples\",\"12\\/15\\/1964\",\"Real  Estate\"],[\"Appleseed Ventures\",\"Jerry Appleseed\",\"Jerry\",\"Appleseed\",\"jerry@appleseed.com\",\"jerry@appleseed.com2\",\"jerry@appleseed.com3\",\"555-555-5551\",\"555-555-5552\",\"555-555-5553\",\"http:\\/\\/www.jappleseed.com\\/\",\"123 Main Street\",\"Austin\",\"TX\",\"78701\",\"US\",\"Supplier\",\"Apples\",\"2\\/1\\/1952\",\"Real  Estate\"],[\"Appleseed Ventures\",\"Josie Appleseed\",\"Josie\",\"Appleseed\",\"josie@appleseed.com\",\"josie@appleseed.com2\",\"josie@appleseed.com3\",\"555-555-5551\",\"555-555-5552\",\"555-555-5553\",\"http:\\/\\/www.jappleseed.com\\/\",\"123 Main Street\",\"Austin\",\"TX\",\"78701\",\"CA\",\"Supplier\",\"Apples\",\"7\\/8\\/1982\",\"Real  Estate\"],[\"Appleseed Ventures\",\"Janis Appleseed\",\"Janis\",\"Appleseed\",\"janis@appleseed.com\",\"janis@appleseed.com2\",\"janis@appleseed.com3\",\"555-555-5551\",\"555-555-5552\",\"555-555-5553\",\"http:\\/\\/www.jappleseed.com\\/\",\"123 Main Street\",\"Austin\",\"TX\",\"78701\",\"EU\",\"Costumer\",\"Apples\",\"9\\/20\\/1962\",\"Real  Estate\"],[\"Appleseed Ventures\",\"Joseph Appleseed\",\"Joseph\",\"Appleseed\",\"joseph@appleseed.com\",\"joseph@appleseed.com2\",\"joseph@appleseed.com3\",\"555-555-5551\",\"555-555-5552\",\"555-555-5553\",\"http:\\/\\/www.jappleseed.com\\/\",\"123 Main Street\",\"Austin\",\"TX\",\"78701\",\"NA\",\"Costumer\",\"Apples\",\"5\\/19\\/1975\",\"Real  Estate\"],[\"Appleseed Ventures\",\"Jim Appleseed\",\"Jim\",\"Appleseed\",\"jim@appleseed.com\",\"jim@appleseed.com2\",\"jim@appleseed.com3\",\"555-555-5551\",\"555-555-5552\",\"555-555-5553\",\"http:\\/\\/www.jappleseed.com\\/\",\"123 Main Street\",\"Austin\",\"TX\",\"78701\",\"PH\",\"Costumer\",\"Apples\",\"6\\/12\\/1970\",\"Real  Estate\"]]', '2021-06-24 04:51:47', '2021-06-24 04:51:47');

-- --------------------------------------------------------

--
-- Table structure for table `custom_addresses`
--

CREATE TABLE `custom_addresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_account_number` int(10) UNSIGNED NOT NULL,
  `custom_zone_id` int(10) UNSIGNED NOT NULL,
  `address_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sameday_price` double DEFAULT NULL,
  `scheduled_price` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `custom_zones`
--

CREATE TABLE `custom_zones` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_account_number` int(10) UNSIGNED NOT NULL,
  `zone_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `base_weight` double DEFAULT NULL,
  `charge_per_unit` double DEFAULT NULL,
  `extra_fees_per_unit` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emails`
--

CREATE TABLE `emails` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `forms`
--

CREATE TABLE `forms` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `guests`
--

CREATE TABLE `guests` (
  `id` int(10) UNSIGNED NOT NULL,
  `trade_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `national_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_id` int(10) UNSIGNED DEFAULT NULL,
  `address_detailed` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` enum('client','courier','guest') COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` int(10) UNSIGNED NOT NULL,
  `from` timestamp NULL DEFAULT NULL,
  `until` timestamp NULL DEFAULT NULL,
  `discount` double(8,2) DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `decision_date` timestamp NULL DEFAULT NULL,
  `decision_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `marketing_contacts`
--

CREATE TABLE `marketing_contacts` (
  `m_id` int(10) UNSIGNED NOT NULL,
  `m_salutation` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `m_fname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `m_lname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `m_mname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `m_fullname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `m_desig` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `m_company` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `m_add1` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `m_add2` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `m_city` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `m_country` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `m_ctype` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `m_csource` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `m_subscription` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `marketing_contact_numbers`
--

CREATE TABLE `marketing_contact_numbers` (
  `mno_id` int(10) UNSIGNED NOT NULL,
  `mno_number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `marketing_emails`
--

CREATE TABLE `marketing_emails` (
  `mem_id` int(10) UNSIGNED NOT NULL,
  `mem_email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2013_04_09_062329_create_revisions_table', 1),
(2, '2014_10_12_000000_create_users_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2018_05_14_181407_create_clients_table', 1),
(5, '2018_05_14_181753_create_roles_table', 1),
(6, '2018_05_14_190442_create_attachments_table', 1),
(7, '2018_05_14_191455_create_couriers_table', 1),
(8, '2018_05_14_192453_create_pickups_table', 1),
(9, '2018_05_14_193758_create_shipments_table', 1),
(10, '2018_05_14_200250_create_pickup_shipment_table', 1),
(11, '2018_05_14_200828_create_zones_table', 1),
(12, '2018_05_14_201223_create_addresses_table', 1),
(13, '2018_05_14_202254_create_notes_table', 1),
(14, '2018_05_14_202816_create_services_table', 1),
(15, '2018_05_14_203212_create_client_service_table', 1),
(16, '2018_05_14_203906_create_client_zones_table', 1),
(17, '2018_05_14_204354_create_client_address_table', 1),
(18, '2018_05_14_204917_create_service_shipment_table', 1),
(19, '2018_05_14_210339_create_alerts_table', 1),
(20, '2018_05_14_210730_create_user_mails_table', 1),
(21, '2018_06_17_155024_create_user_templates_table', 1),
(22, '2018_06_17_161451_create_role_user_template_table', 1),
(23, '2018_06_17_220837_add_user_template_column', 1),
(24, '2018_06_27_183916_create_client_charged_for_table', 1),
(25, '2018_06_29_113847_create_statuses_table', 1),
(26, '2018_07_17_201359_create_guests_table', 1),
(27, '2018_08_17_105710_add_shipment_pieces_field', 1),
(28, '2018_08_17_160548_create_invoices_table', 1),
(29, '2018_08_18_180956_fix_client_charged_for_table', 1),
(30, '2018_08_29_231714_create_custom_zones_table', 1),
(31, '2018_08_29_231738_create_custom_addresses_table', 1),
(32, '2018_09_14_115054_fix_client_service_table', 1),
(33, '2018_09_16_213459_create_notifications_table', 1),
(34, '2018_09_16_233230_add_alerted_to_clients', 1),
(35, '2018_09_18_210026_waybill_index_to_shipments', 1),
(36, '2018_10_01_171456_add_reference_field_to_shipments', 1),
(37, '2018_10_01_200135_add_min_delivery_cost_to_clients', 1),
(38, '2018_10_04_234246_add_client_name_to_pickups', 1),
(39, '2018_10_05_112422_add_national_id_to_clients', 1),
(40, '2018_10_10_221704_add_prepaid_cash_to_pickups', 1),
(41, '2018_10_10_280000_add_is_guest_to_pickups', 1),
(42, '2018_10_11_211640_add_status_note_to_pickups', 1),
(43, '2018_10_20_200744_create_client_limits_table', 1),
(44, '2018_11_08_185548_create_forms_table', 1),
(45, '2018_11_10_101225_add_author_type_to_attachments', 1),
(46, '2018_12_16_215635_create_courier_zone_table', 1),
(47, '2018_12_19_230244_add_swift_code_to_clients', 1),
(48, '2018_12_22_152039_add_shipments_email_updates_to_clients', 1),
(49, '2018_12_26_202222_add_note_for_courier_to_clients', 1),
(50, '2018_12_28_191443_create_payment_methods_table', 1),
(51, '2018_12_28_222600_add_payment_method_to_clients', 1),
(52, '2019_01_09_215627_add_address_data_to_guests', 1),
(53, '2019_01_09_231250_payment_method_price_default_val_in_clients', 1),
(54, '2019_02_13_205137_add_decision_to_invoices', 1),
(55, '2019_02_19_190636_create_branches_table', 1),
(56, '2019_02_19_191823_add_branch_to_shipments', 1),
(57, '2019_02_25_192330_add_created_by_in_shipments_table', 1),
(58, '2019_03_01_161016_add_secondary_email_to_clients', 1),
(59, '2019_03_01_170927_add_penalty_type_to_client_limits', 1),
(60, '2019_03_01_224652_create_pickup_statuses_table', 1),
(61, '2019_03_01_230838_pickup_statuses_relationship', 1),
(62, '2019_03_02_202834_createe_note_user_table', 1),
(63, '2019_03_07_224401_test_fix', 1),
(64, '2019_04_02_225712_create_emails_table', 1),
(65, '2019_04_13_181630_add_options_to_client_charged_for', 1),
(66, '2021_03_17_131224_create_activity_log_table', 1),
(67, '2021_03_17_131224_create_settings_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `private` tinyint(1) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `note_user`
--

CREATE TABLE `note_user` (
  `note_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'cash', '2021-04-06 07:21:04', '2021-04-06 07:21:04'),
(2, 'bank_deposit', '2021-04-06 07:21:04', '2021-04-06 07:21:04'),
(3, 'bank_transfer', '2021-04-06 07:21:04', '2021-04-06 07:21:04'),
(4, 'exchange_shop_transfer', '2021-04-06 07:21:04', '2021-04-06 07:21:04'),
(5, 'zain_cash', '2021-04-06 07:21:04', '2021-04-06 07:21:04'),
(6, 'cash_from_office', '2021-04-06 07:21:04', '2021-04-06 07:21:04');

-- --------------------------------------------------------

--
-- Table structure for table `pickups`
--

CREATE TABLE `pickups` (
  `id` int(10) UNSIGNED NOT NULL,
  `identifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_account_number` int(10) UNSIGNED DEFAULT NULL,
  `courier_id` int(10) UNSIGNED DEFAULT NULL,
  `expected_packages_number` int(10) UNSIGNED NOT NULL,
  `actual_packages_number` int(10) UNSIGNED DEFAULT NULL,
  `pickup_fees` double DEFAULT 0,
  `available_time_start` datetime NOT NULL,
  `available_time_end` datetime NOT NULL,
  `notes_internal` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes_external` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pickup_from` enum('client','customer') COLLATE utf8mb4_unicode_ci NOT NULL,
  `pickup_address_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pickup_address_maps` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_fees_paid` tinyint(1) NOT NULL DEFAULT 0,
  `alerted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `client_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_national_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prepaid_cash` double DEFAULT NULL,
  `is_guest` tinyint(1) NOT NULL DEFAULT 0,
  `guest_country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guest_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pickup_status_id` int(10) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pickups`
--

INSERT INTO `pickups` (`id`, `identifier`, `client_account_number`, `courier_id`, `expected_packages_number`, `actual_packages_number`, `pickup_fees`, `available_time_start`, `available_time_end`, `notes_internal`, `notes_external`, `phone_number`, `pickup_from`, `pickup_address_text`, `pickup_address_maps`, `is_fees_paid`, `alerted`, `created_at`, `updated_at`, `deleted_at`, `client_name`, `client_national_id`, `prepaid_cash`, `is_guest`, `guest_country`, `guest_city`, `status_note`, `pickup_status_id`) VALUES
(1, '2FK5AH', 10000, 1, 123, 123, NULL, '2021-04-11 12:00:00', '2021-04-11 15:30:00', NULL, NULL, '971567949736', 'client', 'Suite 1405 Jumeirah Bay X2, JLT, Dubai, UAE s', NULL, 0, 0, '2021-04-11 05:37:59', '2021-04-11 07:06:10', NULL, NULL, NULL, NULL, 0, NULL, NULL, '', 10),
(2, '3IOEH5', 10001, 1, 4321, NULL, NULL, '2021-04-11 13:00:00', '2021-04-11 17:30:00', NULL, NULL, '971567949736', 'client', 'Abu Hail', NULL, 0, 0, '2021-04-11 06:19:38', '2021-04-11 10:13:30', NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Client didn\'t answer on arrival', 5);

-- --------------------------------------------------------

--
-- Table structure for table `pickup_shipment`
--

CREATE TABLE `pickup_shipment` (
  `pickup_id` int(10) UNSIGNED NOT NULL,
  `shipment_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pickup_statuses`
--

CREATE TABLE `pickup_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`options`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pickup_statuses`
--

INSERT INTO `pickup_statuses` (`id`, `name`, `options`, `created_at`, `updated_at`) VALUES
(1, 'created', '[]', '2021-04-06 07:21:04', '2021-04-06 07:21:04'),
(2, 'ready', '{\"set_available_time\":true}', '2021-04-06 07:21:04', '2021-04-06 07:21:04'),
(3, 'rescheduled', '{\"select\":{\"rescheduled_by\":[\"By Client\",\"By Kangaroo\"]},\"set_available_time\":true,\"set_address\":true}', '2021-04-06 07:21:04', '2021-04-06 07:21:04'),
(4, 'pass_to_office', '[]', '2021-04-06 07:21:04', '2021-04-06 07:21:04'),
(5, 'rejected', '{\"select\":{\"reason\":[\"Client didn\'t answer on arrival\",\"Client cancelled on arrival\",\"Client\'s mobile is switched off on arrival\",\"Client refused to pay cash on pick up\",\"Client didn\'t ask for pick up\",\"Client mobile is transferred\"]}}', '2021-04-06 07:21:04', '2021-04-06 07:21:04'),
(6, 'cancelled', '{\"select\":{\"reason\":[\"Client cancelled the pick up\",\"Client didn\'t ask for pick up\",\"By Kangaroo\"]},\"notes_required\":true}', '2021-04-06 07:21:04', '2021-04-06 07:21:04'),
(7, 'not_available', '{\"select\":{\"reason\":[\"Transferred calls\",\"Number blocked\",\"No answer\",\"Incorrect number\",\"Invalid number\",\"Number disconnected\",\"No signal\\/coverage\",\"Mobile switched off\"]}}', '2021-04-06 07:21:04', '2021-04-06 07:21:04'),
(8, 'failed', '{\"select\":{\"reason\":[\"Bad weather conditions\",\"Unreachable destination\"]}}', '2021-04-06 07:21:04', '2021-04-06 07:21:04'),
(9, 'on_hold', '{\"select\":{\"reason\":[\"Incomplete address\",\"No phone number\"]}}', '2021-04-06 07:21:04', '2021-04-06 07:21:04'),
(10, 'collected', '{\"prepaid_cash\":true,\"actual_packages\":true}', '2021-04-06 07:21:04', '2021-04-06 07:21:04');

-- --------------------------------------------------------

--
-- Table structure for table `revisions`
--

CREATE TABLE `revisions` (
  `id` int(10) UNSIGNED NOT NULL,
  `revisionable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `new_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `revisions`
--

INSERT INTO `revisions` (`id`, `revisionable_type`, `revisionable_id`, `user_id`, `key`, `old_value`, `new_value`, `created_at`, `updated_at`) VALUES
(1, 'App\\Shipment', 1, 1, 'external_notes', NULL, '()', '2021-04-06 09:15:20', '2021-04-06 09:15:20'),
(2, 'App\\Shipment', 1, 1, 'status_id', '1', '4', '2021-04-06 09:15:20', '2021-04-06 09:15:20'),
(3, 'App\\Shipment', 1, 1, 'status_notes', NULL, '()', '2021-04-06 09:15:20', '2021-04-06 09:15:20'),
(4, 'App\\Shipment', 1, 1, 'branch_id', NULL, '1', '2021-04-06 09:15:20', '2021-04-06 09:15:20'),
(5, 'App\\Shipment', 1, 1, 'external_notes', '()', 'REASON: Sender cancelled the shipment\n()', '2021-04-06 09:18:54', '2021-04-06 09:18:54'),
(6, 'App\\Shipment', 1, 1, 'status_id', '4', '10', '2021-04-06 09:18:54', '2021-04-06 09:18:54'),
(7, 'App\\Shipment', 1, 1, 'status_notes', '()', 'REASON: Sender cancelled the shipment\n()', '2021-04-06 09:18:54', '2021-04-06 09:18:54'),
(8, 'App\\Shipment', 1, 1, 'external_notes', 'REASON: Sender cancelled the shipment\n()', '()', '2021-04-06 09:19:27', '2021-04-06 09:19:27'),
(9, 'App\\Shipment', 1, 1, 'actual_paid_by_consignee', NULL, '0', '2021-04-06 09:19:27', '2021-04-06 09:19:27'),
(10, 'App\\Shipment', 1, 1, 'status_id', '10', '13', '2021-04-06 09:19:27', '2021-04-06 09:19:27'),
(11, 'App\\Shipment', 1, 1, 'status_notes', 'REASON: Sender cancelled the shipment\n()', '()', '2021-04-06 09:19:27', '2021-04-06 09:19:27'),
(12, 'App\\Shipment', 1, 1, 'status_id', '13', '1', '2021-04-06 09:19:50', '2021-04-06 09:19:50'),
(13, 'App\\Shipment', 1, 1, 'status_id', '1', '4', '2021-04-06 09:20:09', '2021-04-06 09:20:09'),
(14, 'App\\Pickup', 1, 1, 'courier_id', NULL, '1', '2021-04-11 05:38:15', '2021-04-11 05:38:15'),
(15, 'App\\Pickup', 1, 2, 'actual_packages_number', NULL, '123', '2021-04-11 07:06:10', '2021-04-11 07:06:10'),
(16, 'App\\Pickup', 1, 2, 'pickup_status_id', '1', '10', '2021-04-11 07:06:10', '2021-04-11 07:06:10'),
(17, 'App\\Shipment', 1, 1, 'status_id', '4', '2', '2021-04-11 07:31:48', '2021-04-11 07:31:48'),
(18, 'App\\Shipment', 1, 1, 'status_id', '2', '3', '2021-04-11 08:12:46', '2021-04-11 08:12:46'),
(19, 'App\\Shipment', 1, 1, 'status_id', '3', '6', '2021-04-11 08:13:13', '2021-04-11 08:13:13'),
(20, 'App\\Shipment', 1, 1, 'actual_paid_by_consignee', NULL, '0', '2021-04-11 08:25:29', '2021-04-11 08:25:29'),
(21, 'App\\Shipment', 1, 1, 'status_id', '6', '13', '2021-04-11 08:25:29', '2021-04-11 08:25:29'),
(22, 'App\\Pickup', 2, 1, 'courier_id', NULL, '1', '2021-04-11 09:31:21', '2021-04-11 09:31:21'),
(23, 'App\\Pickup', 2, 1, 'pickup_status_id', '1', '2', '2021-04-11 09:31:41', '2021-04-11 09:31:41'),
(24, 'App\\Pickup', 2, 2, 'status_note', '', 'By Client', '2021-04-11 10:13:09', '2021-04-11 10:13:09'),
(25, 'App\\Pickup', 2, 2, 'pickup_status_id', '2', '3', '2021-04-11 10:13:09', '2021-04-11 10:13:09'),
(26, 'App\\Pickup', 2, 2, 'status_note', 'By Client', 'Client didn\'t answer on arrival', '2021-04-11 10:13:30', '2021-04-11 10:13:30'),
(27, 'App\\Pickup', 2, 2, 'pickup_status_id', '3', '5', '2021-04-11 10:13:30', '2021-04-11 10:13:30');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `default` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `default`, `created_at`, `updated_at`) VALUES
(1, 'shipments', 1, '2021-04-06 07:21:03', '2021-04-06 07:21:03'),
(2, 'clients', 1, '2021-04-06 07:21:03', '2021-04-06 07:21:03'),
(3, 'couriers', 0, '2021-04-06 07:21:03', '2021-04-06 07:21:03'),
(4, 'pickups', 0, '2021-04-06 07:21:03', '2021-04-06 07:21:03'),
(5, 'notes', 3, '2021-04-06 07:21:03', '2021-04-06 07:21:03'),
(6, 'zones', 0, '2021-04-06 07:21:03', '2021-04-06 07:21:03'),
(7, 'services', 0, '2021-04-06 07:21:03', '2021-04-06 07:21:03'),
(8, 'users', 0, '2021-04-06 07:21:03', '2021-04-06 07:21:03'),
(9, 'roles', 0, '2021-04-06 07:21:03', '2021-04-06 07:21:03'),
(10, 'mailing', 1, '2021-04-06 07:21:03', '2021-04-06 07:21:03'),
(11, 'reporting', 0, '2021-04-06 07:21:03', '2021-04-06 07:21:03'),
(12, 'documents', 0, '2021-04-06 07:21:03', '2021-04-06 07:21:03'),
(13, 'settings', 3, '2021-04-06 07:21:03', '2021-04-06 07:21:03'),
(14, 'logs', 2, '2021-04-06 07:21:03', '2021-04-06 07:21:03');

-- --------------------------------------------------------

--
-- Table structure for table `role_user_template`
--

CREATE TABLE `role_user_template` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_template_id` int(10) UNSIGNED NOT NULL,
  `value` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user_template`
--

INSERT INTO `role_user_template` (`role_id`, `user_template_id`, `value`, `created_at`, `updated_at`) VALUES
(1, 1, 4, '2021-04-06 07:21:03', '2021-04-06 07:21:03'),
(2, 1, 4, '2021-04-06 07:21:03', '2021-04-06 07:21:03'),
(3, 1, 4, '2021-04-06 07:21:03', '2021-04-06 07:21:03'),
(4, 1, 4, '2021-04-06 07:21:03', '2021-04-06 07:21:03'),
(5, 1, 4, '2021-04-06 07:21:03', '2021-04-06 07:21:03'),
(6, 1, 4, '2021-04-06 07:21:03', '2021-04-06 07:21:03'),
(7, 1, 4, '2021-04-06 07:21:03', '2021-04-06 07:21:03'),
(8, 1, 4, '2021-04-06 07:21:03', '2021-04-06 07:21:03'),
(9, 1, 4, '2021-04-06 07:21:03', '2021-04-06 07:21:03'),
(10, 1, 4, '2021-04-06 07:21:03', '2021-04-06 07:21:03'),
(11, 1, 4, '2021-04-06 07:21:03', '2021-04-06 07:21:03'),
(12, 1, 4, '2021-04-06 07:21:03', '2021-04-06 07:21:03'),
(13, 1, 4, '2021-04-06 07:21:03', '2021-04-06 07:21:03'),
(14, 1, 4, '2021-04-06 07:21:03', '2021-04-06 07:21:03'),
(1, 2, 3, '2021-04-06 07:21:04', '2021-04-06 07:21:04'),
(2, 2, 1, '2021-04-06 07:21:04', '2021-04-06 07:21:04'),
(3, 2, 1, '2021-04-06 07:21:04', '2021-04-06 07:21:04'),
(4, 2, 1, '2021-04-06 07:21:04', '2021-04-06 07:21:04'),
(5, 2, 4, '2021-04-06 07:21:04', '2021-04-06 07:21:04'),
(6, 2, 0, '2021-04-06 07:21:04', '2021-04-06 07:21:04'),
(7, 2, 0, '2021-04-06 07:21:04', '2021-04-06 07:21:04'),
(8, 2, 0, '2021-04-06 07:21:04', '2021-04-06 07:21:04'),
(9, 2, 0, '2021-04-06 07:21:04', '2021-04-06 07:21:04'),
(10, 2, 0, '2021-04-06 07:21:04', '2021-04-06 07:21:04'),
(11, 2, 0, '2021-04-06 07:21:04', '2021-04-06 07:21:04'),
(12, 2, 0, '2021-04-06 07:21:04', '2021-04-06 07:21:04'),
(13, 2, 0, '2021-04-06 07:21:04', '2021-04-06 07:21:04'),
(14, 2, 0, '2021-04-06 07:21:04', '2021-04-06 07:21:04'),
(1, 3, 3, '2021-04-06 07:21:04', '2021-04-06 07:21:04'),
(2, 3, 1, '2021-04-06 07:21:04', '2021-04-06 07:21:04'),
(3, 3, 1, '2021-04-06 07:21:04', '2021-04-06 07:21:04'),
(4, 3, 1, '2021-04-06 07:21:04', '2021-04-06 07:21:04'),
(5, 3, 4, '2021-04-06 07:21:04', '2021-04-06 07:21:04'),
(6, 3, 0, '2021-04-06 07:21:04', '2021-04-06 07:21:04'),
(7, 3, 0, '2021-04-06 07:21:04', '2021-04-06 07:21:04'),
(8, 3, 0, '2021-04-06 07:21:04', '2021-04-06 07:21:04'),
(9, 3, 0, '2021-04-06 07:21:04', '2021-04-06 07:21:04'),
(10, 3, 0, '2021-04-06 07:21:04', '2021-04-06 07:21:04'),
(11, 3, 0, '2021-04-06 07:21:04', '2021-04-06 07:21:04'),
(12, 3, 0, '2021-04-06 07:21:04', '2021-04-06 07:21:04'),
(13, 3, 0, '2021-04-06 07:21:04', '2021-04-06 07:21:04'),
(14, 3, 0, '2021-04-06 07:21:04', '2021-04-06 07:21:04'),
(1, 4, 3, '2021-04-06 07:21:04', '2021-04-06 07:21:04'),
(2, 4, 1, '2021-04-06 07:21:04', '2021-04-06 07:21:04'),
(3, 4, 1, '2021-04-06 07:21:04', '2021-04-06 07:21:04'),
(4, 4, 1, '2021-04-06 07:21:04', '2021-04-06 07:21:04'),
(5, 4, 4, '2021-04-06 07:21:04', '2021-04-06 07:21:04'),
(6, 4, 0, '2021-04-06 07:21:04', '2021-04-06 07:21:04'),
(7, 4, 0, '2021-04-06 07:21:04', '2021-04-06 07:21:04'),
(8, 4, 0, '2021-04-06 07:21:04', '2021-04-06 07:21:04'),
(9, 4, 0, '2021-04-06 07:21:04', '2021-04-06 07:21:04'),
(10, 4, 0, '2021-04-06 07:21:04', '2021-04-06 07:21:04'),
(11, 4, 0, '2021-04-06 07:21:04', '2021-04-06 07:21:04'),
(12, 4, 0, '2021-04-06 07:21:04', '2021-04-06 07:21:04'),
(13, 4, 0, '2021-04-06 07:21:04', '2021-04-06 07:21:04'),
(14, 4, 0, '2021-04-06 07:21:04', '2021-04-06 07:21:04');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`, `price`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Pronto Bullet - SameDay®', 50, NULL, '2021-04-07 09:48:09', '2021-04-07 10:17:05'),
(2, 'Pronto Standard - 1Day®', 25, NULL, '2021-04-07 10:16:27', '2021-04-07 10:17:16');

-- --------------------------------------------------------

--
-- Table structure for table `service_shipment`
--

CREATE TABLE `service_shipment` (
  `shipment_id` int(10) UNSIGNED NOT NULL,
  `service_id` int(10) UNSIGNED NOT NULL,
  `price` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shipments`
--

CREATE TABLE `shipments` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` enum('normal','guest','returned','prepaid') COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_account_number` int(10) UNSIGNED NOT NULL,
  `courier_id` int(10) UNSIGNED DEFAULT NULL,
  `waybill` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_date` datetime NOT NULL,
  `address_id` int(10) UNSIGNED NOT NULL,
  `address_sub_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_maps_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `consignee_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `internal_notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `external_notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_type` enum('nextday','sameday') COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_cost_lodger` enum('client','courier') COLLATE utf8mb4_unicode_ci NOT NULL,
  `package_weight` double NOT NULL,
  `shipment_value` double NOT NULL,
  `price_of_address` double DEFAULT NULL,
  `base_weight_of_zone` double DEFAULT NULL,
  `charge_per_unit_of_zone` double DEFAULT NULL,
  `extra_fees_per_unit_of_zone` double DEFAULT NULL,
  `total_price` double DEFAULT NULL,
  `actual_paid_by_consignee` double DEFAULT 0,
  `status_id` tinyint(3) UNSIGNED NOT NULL,
  `sub_status_id` tinyint(3) UNSIGNED DEFAULT NULL,
  `status_notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `courier_cashed` tinyint(1) NOT NULL DEFAULT 0,
  `client_paid` tinyint(1) NOT NULL DEFAULT 0,
  `returned_from` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `pieces` int(11) NOT NULL,
  `waybill_index` int(10) UNSIGNED DEFAULT NULL,
  `reference` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipments`
--

INSERT INTO `shipments` (`id`, `type`, `client_account_number`, `courier_id`, `waybill`, `delivery_date`, `address_id`, `address_sub_text`, `address_maps_link`, `consignee_name`, `phone_number`, `internal_notes`, `external_notes`, `service_type`, `delivery_cost_lodger`, `package_weight`, `shipment_value`, `price_of_address`, `base_weight_of_zone`, `charge_per_unit_of_zone`, `extra_fees_per_unit_of_zone`, `total_price`, `actual_paid_by_consignee`, `status_id`, `sub_status_id`, `status_notes`, `courier_cashed`, `client_paid`, `returned_from`, `deleted_at`, `created_at`, `updated_at`, `pieces`, `waybill_index`, `reference`, `branch_id`, `created_by`) VALUES
(1, 'normal', 10000, NULL, '123123123', '2021-04-06 13:01:23', 2, NULL, NULL, '12123123123', '971567949736', NULL, '()', 'sameday', 'client', 0.2, 0, 11, 5, 10, 15, NULL, 0, 13, NULL, '()', 0, 0, NULL, NULL, '2021-04-06 09:01:23', '2021-04-11 08:25:29', 1, NULL, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `groups` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`groups`)),
  `options` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`options`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id`, `name`, `groups`, `options`, `created_at`, `updated_at`) VALUES
(1, 'picked_up', '[\"processing\"]', '[]', '2021-04-06 07:21:04', '2021-04-06 07:21:04'),
(2, 'received', '[\"processing\",\"returned\",\"pending\"]', '{\"set_branch\":true}', '2021-04-06 07:21:04', '2021-04-06 07:21:04'),
(3, 'departed', '[\"processing\",\"returned\",\"pending\"]', '{\"set_branch\":true}', '2021-04-06 07:21:04', '2021-04-06 07:21:04'),
(4, 'collect_from_office', '[\"in_transit\",\"returned\",\"pending\",\"courier\"]', '{\"set_branch\":true}', '2021-04-06 07:21:04', '2021-04-06 07:21:04'),
(5, 'collected_from_office', '[\"delivered\",\"returned\"]', '{\"set_branch\":true}', '2021-04-06 07:21:04', '2021-04-06 07:21:04'),
(6, 'out_for_delivery', '[\"in_transit\",\"returned\",\"pending\"]', '[]', '2021-04-06 07:21:04', '2021-04-06 07:21:04'),
(7, 'ready', '[\"in_transit\",\"courier\",\"returned\",\"pending\"]', '{\"set_time\":true}', '2021-04-06 07:21:04', '2021-04-06 07:21:04'),
(8, 'rescheduled', '[\"in_transit\",\"courier\",\"returned\"]', '{\"select\":{\"rescheduled_by\":[\"By Consignee\",\"By Sender\",\"By Kangaroo\"]},\"set_delivery_date\":true}', '2021-04-06 07:21:04', '2021-04-06 07:21:04'),
(9, 'not_available', '[\"in_transit\",\"courier\",\"returned\"]', '{\"select\":{\"reason\":[\"Transferred calls\",\"Number blocked\",\"No answer\",\"Incorrect number\",\"Invalid number\",\"Number disconnected\",\"No signal\\/coverage\",\"Mobile switched off\"]}}', '2021-04-06 07:21:04', '2021-04-06 07:21:04'),
(10, 'cancelled', '[\"in_transit\",\"courier\"]', '{\"select\":{\"reason\":[\"Sender cancelled the shipment\",\"Consignee is not expecting the shipment\",\"Consignee wants to amend order before delivery\",\"Consignee changed his\\/her mind\",\"Repeated shipment\",\"Duplicate shipment\"]}}', '2021-04-06 07:21:04', '2021-04-06 07:21:04'),
(11, 'rejected', '[\"in_transit\",\"courier\",\"returned\"]', '{\"select\":{\"reason\":[\"Consignee didn\'t answer on arrival\",\"Consignee cancelled on arrival\",\"Consignee\'s mobile is switched off on arrival\",\"Incorrect\\/missing item\",\"Price issue\",\"Damaged\",\"Insufficient money\",\"Consignee refused to pay\",\"Consignee is not expecting shipment\",\"Consignee mobile is transferred\",\"Consignee wanted to receive shipment before paying\"]}}', '2021-04-06 07:21:04', '2021-04-06 07:21:04'),
(12, 'failed', '[\"in_transit\",\"courier\",\"returned\"]', '{\"select\":{\"reason\":[\"Bad weather conditions\",\"Unreachable destination\",\"Incomplete address\",\"No phone number\"]}}', '2021-04-06 07:21:04', '2021-04-06 07:21:04'),
(13, 'delivered', '[\"delivered\",\"courier\",\"returned\"]', '[]', '2021-04-06 07:21:04', '2021-04-06 07:21:04'),
(14, 'customs', '[\"processing\"]', '[]', '2021-04-06 07:21:04', '2021-04-06 07:21:04'),
(15, 'on_hold', '[\"in_transit\",\"returned\"]', '{\"select\":{\"reason\":[\"Consignee rescheduled\",\"Kangaroo rescheduled\",\"Sender rescheduled\",\"Consignee cancelled shipment, awaiting sender\'s instructions\",\"Consignee rejected shipment, awaiting sender\'s instructions\",\"Consignee not available, awaiting sender\'s instructions\",\"Delivery failed\",\"Consignee asked to collect shipment from office\",\"Incomplete address, awaiting admin instructions\",\"No phone number, awaiting admin instructions\",\"Consignee contacted to set delivery address\"]}}', '2021-04-06 07:21:04', '2021-04-06 07:21:04');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `identifier` int(10) UNSIGNED DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_template_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `identifier`, `remember_token`, `created_at`, `updated_at`, `user_template_id`) VALUES
(1, 'root', 'fv@concerpt.com', '$2y$10$AzcohHdqlW/3aYx01ymdbOvt.6iHkO.Aq9zmY1ZHWzmkLnNJw22p6', NULL, '1jlDQ2Yw6pLEvAABlw9OUw1Pl10L0e658KBMrjK4yrxU04nqIRorNsa8uq61', '2021-04-06 07:21:04', '2021-04-06 07:21:04', 1),
(2, '0001', 'oo@concerpt.com', '$2y$10$yx0Oq8Lb/jGhXfvsJ5xvRed/aFcF55vaptDoLqa/cS/3MFp.eBaQ2', 1, NULL, '2021-04-06 08:37:11', '2021-04-06 08:37:11', 4),
(3, '10000', 'oo@concerpt.com', '$2y$10$SrW.0H6KaQXMjXeN009fq.R4htfPS3Ovbs.BA77zY/NX5l5FZNr/G', 10000, NULL, '2021-04-06 08:46:21', '2021-04-06 08:46:21', 3),
(4, '10001', 'ec@concerpt.com', '$2y$10$fETC3bEysESuhIsWm8Y7VeZIC9LewlHzTharCpigO5AMumFbOmi.K', 10001, NULL, '2021-04-11 06:17:36', '2021-04-11 06:17:36', 3),
(5, '0002', 'ec@concerpt.com', '$2y$10$giSxdAk4UUJjWWjh6wIZu.GxXE0l5NpE9KgDVuYmI3lZMdRr8zWsa', 2, NULL, '2021-04-11 10:16:22', '2021-04-11 10:16:22', 4);

-- --------------------------------------------------------

--
-- Table structure for table `user_mails`
--

CREATE TABLE `user_mails` (
  `id` int(10) UNSIGNED NOT NULL,
  `trigger` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_templates`
--

CREATE TABLE `user_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `default` tinyint(1) NOT NULL DEFAULT 0,
  `deletable` tinyint(1) NOT NULL DEFAULT 1,
  `editable` tinyint(1) NOT NULL DEFAULT 1,
  `redirect` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_templates`
--

INSERT INTO `user_templates` (`id`, `name`, `description`, `default`, `deletable`, `editable`, `redirect`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', 0, 0, 0, 1, '2021-04-06 07:21:03', '2021-04-06 07:21:03'),
(2, 'employee', 'Employee', 1, 0, 1, 1, '2021-04-06 07:21:04', '2021-04-06 07:21:04'),
(3, 'client', 'Client', 0, 0, 1, 2, '2021-04-06 07:21:04', '2021-04-06 07:21:04'),
(4, 'courier', 'Courier', 0, 0, 1, 3, '2021-04-06 07:21:04', '2021-04-06 07:21:04');

-- --------------------------------------------------------

--
-- Table structure for table `zones`
--

CREATE TABLE `zones` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `base_weight` double NOT NULL,
  `charge_per_unit` double NOT NULL,
  `extra_fees_per_unit` double NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `zones`
--

INSERT INTO `zones` (`id`, `name`, `base_weight`, `charge_per_unit`, `extra_fees_per_unit`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Sector 3', 5, 10, 15, NULL, '2021-04-06 08:33:52', '2021-04-07 09:45:52'),
(2, 'Sector 1', 10, 25, 0, NULL, '2021-04-07 09:41:56', '2021-04-07 09:41:56'),
(3, 'Sector 2', 10, 25, 0, NULL, '2021-04-07 09:43:21', '2021-04-07 09:43:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log_logs`
--
ALTER TABLE `activity_log_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_log_logs_log_name_index` (`log_name`);

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alerts`
--
ALTER TABLE `alerts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attachments`
--
ALTER TABLE `attachments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`account_number`),
  ADD UNIQUE KEY `clients_trade_name_unique` (`trade_name`);

--
-- Indexes for table `client_charged_for`
--
ALTER TABLE `client_charged_for`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_limits`
--
ALTER TABLE `client_limits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_limits_client_account_number_foreign` (`client_account_number`);

--
-- Indexes for table `couriers`
--
ALTER TABLE `couriers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courier_zone`
--
ALTER TABLE `courier_zone`
  ADD KEY `courier_zone_courier_id_foreign` (`courier_id`);

--
-- Indexes for table `csv_temp_data`
--
ALTER TABLE `csv_temp_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_addresses`
--
ALTER TABLE `custom_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_zones`
--
ALTER TABLE `custom_zones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forms`
--
ALTER TABLE `forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guests`
--
ALTER TABLE `guests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoices_decision_by_foreign` (`decision_by`);

--
-- Indexes for table `marketing_contacts`
--
ALTER TABLE `marketing_contacts`
  ADD PRIMARY KEY (`m_id`);

--
-- Indexes for table `marketing_contact_numbers`
--
ALTER TABLE `marketing_contact_numbers`
  ADD PRIMARY KEY (`mno_id`),
  ADD UNIQUE KEY `marketing_contact_numbers_mno_number_unique` (`mno_number`),
  ADD KEY `marketing_contact_numbers_owner_id_foreign` (`owner_id`);

--
-- Indexes for table `marketing_emails`
--
ALTER TABLE `marketing_emails`
  ADD PRIMARY KEY (`mem_id`),
  ADD UNIQUE KEY `marketing_emails_mem_email` (`mem_email`),
  ADD KEY `marketing_emails_owner_id_foreign` (`owner_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pickups`
--
ALTER TABLE `pickups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pickup_statuses`
--
ALTER TABLE `pickup_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `revisions`
--
ALTER TABLE `revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `settings_key_index` (`key`);

--
-- Indexes for table `shipments`
--
ALTER TABLE `shipments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `shipments_waybill_unique` (`waybill`),
  ADD KEY `shipments_branch_id_foreign` (`branch_id`),
  ADD KEY `shipments_created_by_foreign` (`created_by`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Indexes for table `user_mails`
--
ALTER TABLE `user_mails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_templates`
--
ALTER TABLE `user_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_templates_name_unique` (`name`);

--
-- Indexes for table `zones`
--
ALTER TABLE `zones`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log_logs`
--
ALTER TABLE `activity_log_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `alerts`
--
ALTER TABLE `alerts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attachments`
--
ALTER TABLE `attachments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `account_number` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10002;

--
-- AUTO_INCREMENT for table `client_charged_for`
--
ALTER TABLE `client_charged_for`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `client_limits`
--
ALTER TABLE `client_limits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `couriers`
--
ALTER TABLE `couriers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `csv_temp_data`
--
ALTER TABLE `csv_temp_data`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `custom_addresses`
--
ALTER TABLE `custom_addresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `custom_zones`
--
ALTER TABLE `custom_zones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emails`
--
ALTER TABLE `emails`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forms`
--
ALTER TABLE `forms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `guests`
--
ALTER TABLE `guests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marketing_contacts`
--
ALTER TABLE `marketing_contacts`
  MODIFY `m_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `marketing_contact_numbers`
--
ALTER TABLE `marketing_contact_numbers`
  MODIFY `mno_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `marketing_emails`
--
ALTER TABLE `marketing_emails`
  MODIFY `mem_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pickups`
--
ALTER TABLE `pickups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pickup_statuses`
--
ALTER TABLE `pickup_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `revisions`
--
ALTER TABLE `revisions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shipments`
--
ALTER TABLE `shipments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_mails`
--
ALTER TABLE `user_mails`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_templates`
--
ALTER TABLE `user_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `zones`
--
ALTER TABLE `zones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `client_limits`
--
ALTER TABLE `client_limits`
  ADD CONSTRAINT `client_limits_client_account_number_foreign` FOREIGN KEY (`client_account_number`) REFERENCES `clients` (`account_number`) ON DELETE CASCADE;

--
-- Constraints for table `courier_zone`
--
ALTER TABLE `courier_zone`
  ADD CONSTRAINT `courier_zone_courier_id_foreign` FOREIGN KEY (`courier_id`) REFERENCES `couriers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_decision_by_foreign` FOREIGN KEY (`decision_by`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shipments`
--
ALTER TABLE `shipments`
  ADD CONSTRAINT `shipments_branch_id_foreign` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`),
  ADD CONSTRAINT `shipments_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
