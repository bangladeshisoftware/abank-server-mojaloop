-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 29, 2026 at 12:15 PM
-- Server version: 11.4.10-MariaDB
-- PHP Version: 8.4.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mojaloop_dfsp_1`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_logs`
--

CREATE TABLE `activity_logs` (
  `id` int(11) NOT NULL,
  `user_id` varchar(36) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(150) DEFAULT NULL,
  `role` enum('ADMIN','MERCHANT') NOT NULL,
  `merchant_id` varchar(36) DEFAULT NULL,
  `merchant_name` varchar(100) DEFAULT NULL,
  `action` varchar(100) DEFAULT 'LOGIN',
  `ip_address` varchar(60) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `browser` varchar(200) DEFAULT NULL,
  `os` varchar(100) DEFAULT NULL,
  `device` varchar(50) DEFAULT NULL,
  `is_mobile` tinyint(1) DEFAULT 0,
  `status` enum('SUCCESS','FAILED') DEFAULT 'SUCCESS',
  `note` text DEFAULT NULL,
  `login_time` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `activity_logs`
--

INSERT INTO `activity_logs` (`id`, `user_id`, `username`, `email`, `role`, `merchant_id`, `merchant_name`, `action`, `ip_address`, `country`, `city`, `browser`, `os`, `device`, `is_mobile`, `status`, `note`, `login_time`) VALUES
(1, '91d243f1-1490-11f1-8555-fc3497682340', 'echodeals', 'echo-deal@gmail.com', 'MERCHANT', '19', NULL, 'LOGIN', '::1', 'Localhost', 'Local', 'Chrome 145', 'Windows 10/11', 'Desktop', 0, 'SUCCESS', NULL, '2026-03-02 01:03:04'),
(2, '91d243f1-1490-11f1-8555-fc3497682340', 'echodeals', 'echo-deal@gmail.com', 'MERCHANT', '19', NULL, 'LOGIN', '::1', 'Localhost', 'Local', 'Chrome 145', 'Windows 10/11', 'Desktop', 0, 'SUCCESS', NULL, '2026-03-02 13:57:27'),
(3, 'c112b3c7-14be-11f1-8555-fc3497682340', 'admin', 'cao.bangladeshisoftware@gmail.com', 'ADMIN', NULL, NULL, 'LOGIN', '114.130.157.77', 'Bangladesh', 'Dhaka', 'Chrome 145', 'Windows 10/11', 'Desktop', 0, 'SUCCESS', NULL, '2026-03-02 11:09:36'),
(4, 'c112b3c7-14be-11f1-8555-fc3497682340', 'admin', 'cao.bangladeshisoftware@gmail.com', 'ADMIN', NULL, NULL, 'LOGIN', '114.130.157.77', 'Bangladesh', 'Dhaka', 'Chrome 145', 'Windows 10/11', 'Desktop', 0, 'SUCCESS', NULL, '2026-03-02 12:07:01'),
(5, 'c112b3c7-14be-11f1-8555-fc3497682340', 'admin', 'cao.bangladeshisoftware@gmail.com', 'ADMIN', NULL, NULL, 'LOGIN', '114.130.157.77', 'Bangladesh', 'Dhaka', 'Chrome 145', 'Windows 10/11', 'Desktop', 0, 'SUCCESS', NULL, '2026-03-02 13:51:14'),
(6, '91d243f1-1490-11f1-8555-fc3497682340', 'echodeals', 'echo-deal@gmail.com', 'MERCHANT', '19', NULL, 'LOGIN', '114.130.157.77', 'Bangladesh', 'Dhaka', 'Chrome 145', 'Windows 10/11', 'Desktop', 0, 'SUCCESS', NULL, '2026-03-02 17:40:27'),
(7, 'c112b3c7-14be-11f1-8555-fc3497682340', 'admin', 'cao.bangladeshisoftware@gmail.com', 'ADMIN', NULL, NULL, 'LOGIN', '114.130.157.77', 'Bangladesh', 'Dhaka', 'Chrome 145', 'Windows 10/11', 'Desktop', 0, 'SUCCESS', NULL, '2026-03-02 18:13:04'),
(8, 'b224y3c9-14be-11f1-8588-fc3497542336', 'admin_', 'ceo.bangladeshisoftware@gmail.com', 'ADMIN', NULL, NULL, 'LOGIN', '103.59.179.19', 'Bangladesh', 'Sylhet', 'Chrome 145', 'Windows 10/11', 'Desktop', 0, 'SUCCESS', NULL, '2026-03-06 17:29:18'),
(9, 'b224y3c9-14be-11f1-8588-fc3497542336', 'admin_', 'ceo.bangladeshisoftware@gmail.com', 'ADMIN', NULL, NULL, 'LOGIN', '103.59.179.13', 'Bangladesh', 'Sylhet', 'Chrome 146', 'Windows 10/11', 'Desktop', 0, 'SUCCESS', NULL, '2026-03-17 15:48:10');

-- --------------------------------------------------------

--
-- Table structure for table `als_logs`
--

CREATE TABLE `als_logs` (
  `id` int(11) NOT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `initiator` varchar(10) DEFAULT NULL,
  `callback` varchar(255) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `merchant`
--

CREATE TABLE `merchant` (
  `id` int(11) NOT NULL,
  `display_name` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `middle_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `dob` varchar(30) NOT NULL,
  `fsp_id` varchar(50) NOT NULL,
  `id_type` varchar(50) NOT NULL,
  `id_value` varchar(60) NOT NULL,
  `nid` varchar(30) DEFAULT NULL,
  `acc_no` varchar(30) DEFAULT NULL,
  `daily_limit` varchar(12) DEFAULT '0',
  `single_transaction_limit` varchar(12) DEFAULT '0',
  `status` varchar(2) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `merchant`
--

INSERT INTO `merchant` (`id`, `display_name`, `first_name`, `middle_name`, `last_name`, `dob`, `fsp_id`, `id_type`, `id_value`, `nid`, `acc_no`, `daily_limit`, `single_transaction_limit`, `status`, `created_at`) VALUES
(19, 'Echo Deals', 'Echo', 'Deal', 'ed', '2026-02-16', '', 'MSISDN', '01234567890', '2344656565464565653', '13343456565654344', '120000', '1000', '1', '2026-02-15 18:05:48'),
(20, 'IT Park', 'IT', 'Park', 'ITP', '2026-02-22', '', 'MSISDN', '01234567893', '1344656565464565614', '43434598565654342', '12000', '1000', '1', '2026-02-22 06:02:38'),
(21, 'Blood Service', 'Blood', 'Service', 'Org', '2026-03-01', '', 'MSISDN', '01233445566', '6344656555464565659', '33434593565654342', '12000', '1000', '1', '2026-03-01 04:53:58'),
(23, 'Finance IT', 'Finance', 'IT', 'FIT', '2026-03-01', '', 'MSISDN', '01222222222', '4344656574464565661', '44656767788988561', '12000', '1000', '1', '2026-03-01 05:41:37');

-- --------------------------------------------------------

--
-- Table structure for table `merchant_balance`
--

CREATE TABLE `merchant_balance` (
  `id` int(11) NOT NULL,
  `merchant_id` varchar(36) NOT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `transaction_id` varchar(100) DEFAULT NULL,
  `transfer_id` varchar(100) DEFAULT NULL,
  `type` enum('CREDIT','DEBIT') NOT NULL,
  `amount` decimal(18,2) NOT NULL DEFAULT 0.00,
  `fee` decimal(18,2) NOT NULL DEFAULT 0.00,
  `balance_before` decimal(18,2) NOT NULL DEFAULT 0.00,
  `balance_after` decimal(18,2) NOT NULL DEFAULT 0.00,
  `currency` varchar(10) DEFAULT 'BDT',
  `note` varchar(200) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `merchant_balance`
--

INSERT INTO `merchant_balance` (`id`, `merchant_id`, `user_id`, `transaction_id`, `transfer_id`, `type`, `amount`, `fee`, `balance_before`, `balance_after`, `currency`, `note`, `created_at`, `updated_at`) VALUES
(1, '19', '91d243f1-1490-11f1-8555-fc3497682340', NULL, NULL, 'CREDIT', 2000.00, 0.00, 0.00, 2000.00, 'BDT', 'Account Opening Deposit.', '2026-03-02 13:54:16', '2026-03-02 14:31:23'),
(2, '20', NULL, NULL, NULL, 'CREDIT', 2000.00, 0.00, 0.00, 2000.00, 'BDT', 'Account Opening Deposit.', '2026-03-02 13:54:56', '2026-03-02 13:54:56'),
(3, '21', NULL, NULL, NULL, 'CREDIT', 2000.00, 0.00, 0.00, 2000.00, 'BDT', 'Account Opening Deposit.', '2026-03-02 13:55:00', '2026-03-02 13:55:00'),
(4, '23', NULL, NULL, NULL, 'CREDIT', 2000.00, 0.00, 0.00, 2000.00, 'BDT', 'Account Opening Deposit.', '2026-03-02 13:55:08', '2026-03-02 13:55:08'),
(5, '19', NULL, 'a1728d51-f59e-45df-8ab2-508af2ac56d0', 'c56a917f-1971-4a97-9055-b2bdccf68717', 'DEBIT', 6.00, 0.00, 2000.00, 1994.00, 'BDT', 'P2P sent to 01234567891', '2026-03-02 13:01:24', '2026-03-02 13:01:24'),
(6, '23', NULL, '0c032ff4-446e-40f7-b86d-ec897acbb61c', '19abecd3-2c3d-4e07-8d72-4704fd9fc369', 'DEBIT', 20.00, 0.00, 2000.00, 1980.00, 'BDT', 'P2P sent to 01234567891', '2026-03-02 18:19:00', '2026-03-02 18:19:00'),
(7, '23', NULL, 'ee914695-17fa-4509-b991-6315b60a18ff', '11c93345-36f2-4843-b472-3cd8344d536a', 'DEBIT', 8.00, 0.00, 1980.00, 1972.00, 'BDT', 'P2P sent to 01234567891', '2026-03-04 08:29:49', '2026-03-04 08:29:49'),
(8, '19', NULL, '90b2f278-a1a1-4283-b02b-4682e36bb961', '5529e1a3-18a2-450f-9bda-7e8fe4db9994', 'DEBIT', 100.00, 0.00, 1994.00, 1894.00, 'BDT', 'P2P sent to 01234567891', '2026-03-06 18:23:48', '2026-03-06 18:23:48'),
(9, '21', NULL, 'c1256ea5-fadd-456b-b64b-d70b9df63ed2', 'c3cfe7b6-724d-4432-9aea-8a7b36366611', 'DEBIT', 100.00, 0.00, 2000.00, 1900.00, 'BDT', 'INSTANT sent to 01234567891', '2026-03-06 18:24:29', '2026-03-06 18:24:29'),
(10, '19', NULL, '1723ecdd-bf1b-4409-af59-b3658c8bf28b', 'e8368540-e5af-44f1-adcb-ef5d7b6cee25', 'DEBIT', 50.00, 0.00, 1894.00, 1844.00, 'BDT', 'INSTANT sent to 01234567892', '2026-03-07 16:03:33', '2026-03-07 16:03:33');

-- --------------------------------------------------------

--
-- Table structure for table `merchant_wallet`
--

CREATE TABLE `merchant_wallet` (
  `id` int(11) NOT NULL,
  `merchant_id` varchar(36) NOT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `balance` decimal(18,2) NOT NULL DEFAULT 0.00,
  `total_credit` decimal(18,2) NOT NULL DEFAULT 0.00,
  `total_debit` decimal(18,2) NOT NULL DEFAULT 0.00,
  `total_fee` decimal(18,2) NOT NULL DEFAULT 0.00,
  `currency` varchar(10) DEFAULT 'BDT',
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `merchant_wallet`
--

INSERT INTO `merchant_wallet` (`id`, `merchant_id`, `user_id`, `balance`, `total_credit`, `total_debit`, `total_fee`, `currency`, `created_at`, `updated_at`) VALUES
(1, '19', '91d243f1-1490-11f1-8555-fc3497682340', 1844.00, 2000.00, 156.00, 0.00, 'BDT', '2026-03-02 13:54:16', '2026-03-07 16:03:33'),
(2, '20', NULL, 2000.00, 2000.00, 0.00, 0.00, 'BDT', '2026-03-02 13:54:56', '2026-03-02 13:54:56'),
(3, '21', NULL, 1900.00, 2000.00, 100.00, 0.00, 'BDT', '2026-03-02 13:55:00', '2026-03-06 18:24:29'),
(4, '23', NULL, 1972.00, 2000.00, 28.00, 0.00, 'BDT', '2026-03-02 13:55:08', '2026-03-04 08:29:49');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `quote_fee` varchar(12) DEFAULT NULL,
  `quote_expire` varchar(12) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `quote_fee`, `quote_expire`, `created_at`) VALUES
(1, '0', '5', '2025-11-02 14:52:15');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` varchar(36) NOT NULL,
  `transfer_id` varchar(36) DEFAULT NULL,
  `quote_id` varchar(36) DEFAULT NULL,
  `transaction_id` varchar(36) DEFAULT NULL,
  `type` enum('P2P','INSTANT','BULK','NPSB','RTGS','BEFTN') NOT NULL DEFAULT 'P2P',
  `direction` enum('OUTGOING','INCOMING') NOT NULL DEFAULT 'OUTGOING',
  `payer_fsp` varchar(100) DEFAULT NULL,
  `payee_fsp` varchar(100) DEFAULT NULL,
  `payer_id_type` varchar(50) DEFAULT NULL,
  `payer_id_value` varchar(100) DEFAULT NULL,
  `payer_name` varchar(200) DEFAULT NULL,
  `payee_id_type` varchar(50) DEFAULT NULL,
  `payee_id_value` varchar(100) DEFAULT NULL,
  `payee_name` varchar(200) DEFAULT NULL,
  `merchant_id` varchar(36) DEFAULT NULL,
  `initiated_by` varchar(36) DEFAULT NULL,
  `amount` decimal(18,4) NOT NULL,
  `currency` varchar(10) NOT NULL DEFAULT 'BDT',
  `fee` decimal(18,4) DEFAULT 0.0000,
  `receive_amount` decimal(18,4) DEFAULT NULL,
  `ilp_packet` mediumtext DEFAULT NULL,
  `condition_hash` varchar(255) DEFAULT NULL,
  `fulfilment` varchar(255) DEFAULT NULL,
  `expiration` datetime DEFAULT NULL,
  `status` enum('PENDING','QUOTE_REQUESTED','QUOTE_RECEIVED','TRANSFER_SENT','COMMITTED','FAILED','EXPIRED','ABORTED') NOT NULL DEFAULT 'PENDING',
  `error_code` varchar(10) DEFAULT NULL,
  `error_description` text DEFAULT NULL,
  `quote_at` datetime DEFAULT NULL,
  `transfer_at` datetime DEFAULT NULL,
  `completed_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `transfer_id`, `quote_id`, `transaction_id`, `type`, `direction`, `payer_fsp`, `payee_fsp`, `payer_id_type`, `payer_id_value`, `payer_name`, `payee_id_type`, `payee_id_value`, `payee_name`, `merchant_id`, `initiated_by`, `amount`, `currency`, `fee`, `receive_amount`, `ilp_packet`, `condition_hash`, `fulfilment`, `expiration`, `status`, `error_code`, `error_description`, `quote_at`, `transfer_at`, `completed_at`, `created_at`, `updated_at`) VALUES
('17378f9d-1a3d-11f1-8896-bc2411b07449', NULL, '5935597c-3edc-4196-a7ad-ca59608f38c7', '3a106dce-dc3a-4968-adc9-f610af07cc38', 'INSTANT', 'OUTGOING', 'ABank', 'BBank', 'MSISDN', '01234567893', 'IT (ITP)', 'MSISDN', '01234567891', NULL, '20', NULL, 50.0000, 'BDT', 0.0000, NULL, NULL, NULL, NULL, NULL, 'QUOTE_REQUESTED', NULL, NULL, '2026-03-07 15:48:19', NULL, NULL, '2026-03-07 15:48:19', '2026-03-07 15:48:19'),
('1e3e911a-1a3d-11f1-8896-bc2411b07449', NULL, 'b8a4f589-6baa-4b96-816b-89ee13e193da', 'b195c79e-2d4b-49a4-9f78-e0b53cd80378', 'INSTANT', 'OUTGOING', 'ABank', 'BBank', 'MSISDN', '01234567893', 'IT (ITP)', 'MSISDN', '01234567891', NULL, '20', NULL, 50.0000, 'BDT', 0.0000, NULL, NULL, NULL, NULL, NULL, 'QUOTE_REQUESTED', NULL, NULL, '2026-03-07 15:48:31', NULL, NULL, '2026-03-07 15:48:31', '2026-03-07 15:48:31'),
('2cdb1365-1a3f-11f1-8896-bc2411b07449', 'e8368540-e5af-44f1-adcb-ef5d7b6cee25', 'd207daaa-ccc8-4664-ac6a-2aac57c71cb3', '1723ecdd-bf1b-4409-af59-b3658c8bf28b', 'INSTANT', 'OUTGOING', 'ABank', 'BBank', 'MSISDN', '01234567890', 'Echo s', 'MSISDN', '01234567892', NULL, '19', NULL, 50.0000, 'BDT', 0.0000, 50.0000, 'eyJhbW91bnQiOiI1MCIsImN1cnJlbmN5IjoiQkRUIiwicGF5ZWUiOnsiaWQiOiIwMTIzNDU2Nzg5MiJ9LCJwYXllciI6eyJpZCI6IjAxMjM0NTY3ODkwIn0sImV4cGlyYXRpb24iOiIyMDI2LTAzLTA3VDE3OjAzOjE2LjgyOFoifQ==', 'Y7-UwOaxmk0yLn4BSfqUlBf68-2aWbIRzoi7nGWhhMc', NULL, '2026-03-07 17:03:16', 'COMMITTED', NULL, NULL, '2026-03-07 16:03:15', '2026-03-07 16:03:31', '2026-03-07 16:03:33', '2026-03-07 16:03:15', '2026-03-07 16:03:33'),
('3c480f22-1638-11f1-8896-bc2411b07449', NULL, '4a49cdf5-cfc4-4161-aeec-e43a12a44d2f', '8eb05143-c875-4017-8319-de57cf91dea3', 'INSTANT', 'OUTGOING', 'ABank', 'BBank', 'MSISDN', '01234567893', 'IT (ITP)', 'MSISDN', '01234567891', NULL, '20', NULL, 8.0000, 'BDT', 0.0000, NULL, NULL, NULL, NULL, NULL, 'QUOTE_REQUESTED', NULL, NULL, '2026-03-02 13:03:33', NULL, NULL, '2026-03-02 13:03:33', '2026-03-02 13:03:33'),
('445cc181-1664-11f1-8896-bc2411b07449', '19abecd3-2c3d-4e07-8d72-4704fd9fc369', '11e2c3f1-7f9b-460d-a5b8-93cc0df419a3', '0c032ff4-446e-40f7-b86d-ec897acbb61c', 'P2P', 'OUTGOING', 'ABank', 'BBank', 'MSISDN', '01222222222', 'Finance FIT', 'MSISDN', '01234567891', NULL, '23', NULL, 20.0000, 'BDT', 0.0000, 20.0000, 'eyJhbW91bnQiOiIyMCIsImN1cnJlbmN5IjoiQkRUIiwicGF5ZWUiOnsiaWQiOiIwMTIzNDU2Nzg5MSJ9LCJwYXllciI6eyJpZCI6IjAxMjIyMjIyMjIyIn0sImV4cGlyYXRpb24iOiIyMDI2LTAzLTAyVDE5OjE4OjQ2LjE2M1oifQ==', 'jIR1LVjD4VF9ODsANMyZC7zMARWcIf1hpl00Vam-VZo', NULL, '2026-03-02 19:18:46', 'COMMITTED', NULL, NULL, '2026-03-02 18:18:44', '2026-03-02 18:18:58', '2026-03-02 18:19:00', '2026-03-02 18:18:44', '2026-03-02 18:19:00'),
('4f937e62-17a4-11f1-8896-bc2411b07449', '11c93345-36f2-4843-b472-3cd8344d536a', 'f14fe0d5-b00e-4536-a55a-0767f174e1bb', 'ee914695-17fa-4509-b991-6315b60a18ff', '', 'OUTGOING', 'ABank', 'BBank', 'MSISDN', '01222222222', 'Finance FIT', 'MSISDN', '01234567891', NULL, '23', NULL, 8.0000, 'BDT', 0.0000, 8.0000, 'eyJhbW91bnQiOiI4IiwiY3VycmVuY3kiOiJCRFQiLCJwYXllZSI6eyJpZCI6IjAxMjM0NTY3ODkxIn0sInBheWVyIjp7ImlkIjoiMDEyMjIyMjIyMjIifSwiZXhwaXJhdGlvbiI6IjIwMjYtMDMtMDRUMDk6Mjk6NDIuODc0WiJ9', 'y77q0U9t2GGcA9VDBdyv7AibGsiBCYlgRWQ2GoFiSQo', NULL, '2026-03-04 09:29:42', 'COMMITTED', NULL, NULL, '2026-03-04 08:29:41', '2026-03-04 08:29:47', '2026-03-04 08:29:49', '2026-03-04 08:29:41', '2026-03-04 08:29:49'),
('8a94d647-1471-11f1-8555-fc3497682340', 'a25216d8-b414-4112-9b4f-906d0803f998', '835ef26f-825c-485a-8993-40e91a808f8e', 'c489ab17-9ffb-4119-a144-d1f82a86952f', 'P2P', 'OUTGOING', 'ABank', 'BBank', 'MSISDN', '01234567890', 'Echo s', 'MSISDN', '01234567891', NULL, '19', NULL, 5.0000, 'BDT', 0.0000, 5.0000, 'eyJhbW91bnQiOiI1IiwiY3VycmVuY3kiOiJCRFQiLCJwYXllZSI6eyJpZCI6IjAxMjM0NTY3ODkxIn0sInBheWVyIjp7ImlkIjoiMDEyMzQ1Njc4OTAifSwiZXhwaXJhdGlvbiI6IjIwMjYtMDItMjhUMDc6NDg6NTEuNzE5WiJ9', 'XYLQ0IQ9NVQg3lYUpt5_qzVYa5GQ6FSdm3wO-gDrN2s', NULL, '2026-02-28 08:48:52', 'COMMITTED', NULL, NULL, '2026-02-28 07:48:51', '2026-02-28 07:49:00', '2026-02-28 07:49:01', '2026-02-28 07:48:51', '2026-02-28 07:49:01'),
('902e02d3-1662-11f1-8896-bc2411b07449', '8acf0c86-b7a1-4eaf-aa89-d3cb0937919b', '329be86b-74e2-4930-baf6-8b4570005bde', '9f6e776d-0824-4f6e-b6a3-ceb7914b8faf', 'INSTANT', 'INCOMING', 'BBank', 'ABank', 'MSISDN', '01234567891', 'IT ITS', 'MSISDN', '01234567890', NULL, NULL, NULL, 10.0000, 'BDT', 0.0000, 10.0000, 'eyJhbW91bnQiOiIxMCIsImN1cnJlbmN5IjoiQkRUIiwicGF5ZWUiOnsiaWQiOiIwMTIzNDU2Nzg5MCJ9LCJwYXllciI6eyJpZCI6IjAxMjM0NTY3ODkxIn0sImV4cGlyYXRpb24iOiIyMDI2LTAzLTAyVDE5OjA2OjMyLjk5N1oifQ==', 'OTw_n7xmHQPCyHxA65L-pkJF8_AKpitmENqqCM4fJaU', NULL, '2026-03-02 19:06:32', 'COMMITTED', NULL, NULL, '2026-03-02 18:06:32', '2026-03-02 18:06:44', '2026-03-02 18:06:44', '2026-03-02 18:06:32', '2026-03-03 08:38:22'),
('9a3677ca-1989-11f1-8896-bc2411b07449', '5529e1a3-18a2-450f-9bda-7e8fe4db9994', 'c15bde9b-3e90-4dbc-8dea-69ff04012564', '90b2f278-a1a1-4283-b02b-4682e36bb961', 'P2P', 'OUTGOING', 'ABank', 'BBank', 'MSISDN', '01234567890', 'Echo s', 'MSISDN', '01234567891', NULL, '19', NULL, 100.0000, 'BDT', 0.0000, 100.0000, 'eyJhbW91bnQiOiIxMDAiLCJjdXJyZW5jeSI6IkJEVCIsInBheWVlIjp7ImlkIjoiMDEyMzQ1Njc4OTEifSwicGF5ZXIiOnsiaWQiOiIwMTIzNDU2Nzg5MCJ9LCJleHBpcmF0aW9uIjoiMjAyNi0wMy0wNlQxOToyMzozMi45MzJaIn0=', 'llp6NpL86_PgX0tBmAmf1AoMPu3LJgCDiUnGTC-kAN8', NULL, '2026-03-06 19:23:32', 'COMMITTED', NULL, NULL, '2026-03-06 18:23:31', '2026-03-06 18:23:45', '2026-03-06 18:23:48', '2026-03-06 18:23:31', '2026-03-06 18:23:48'),
('9cc67f20-16d9-11f1-8896-bc2411b07449', '2f91ad01-0315-456c-8139-ebff06c33b00', '49dc8628-4bc3-47e2-b44d-ffe6ea8a956e', 'cc7d8402-1e3f-4341-943a-fb70920c81f8', 'INSTANT', 'INCOMING', 'BBank', 'ABank', 'MSISDN', '01234567891', 'IT ITS', 'MSISDN', '01233445566', NULL, NULL, NULL, 7.0000, 'BDT', 0.0000, 7.0000, 'eyJhbW91bnQiOiI3IiwiY3VycmVuY3kiOiJCRFQiLCJwYXllZSI6eyJpZCI6IjAxMjMzNDQ1NTY2In0sInBheWVyIjp7ImlkIjoiMDEyMzQ1Njc4OTEifSwiZXhwaXJhdGlvbiI6IjIwMjYtMDMtMDNUMDk6MTg6NDMuOTM3WiJ9', 'uAJkrVFMZ7-rb07UbynA-pVPOf796b6_wMItoR7RJsk', NULL, '2026-03-03 09:18:43', 'COMMITTED', NULL, NULL, '2026-03-03 08:18:43', '2026-03-03 08:18:52', '2026-03-03 08:18:53', '2026-03-03 08:18:43', '2026-03-03 08:18:53'),
('ae2e9b29-1982-11f1-8896-bc2411b07449', NULL, 'f4f45661-86e8-4540-abc8-8c3b8b4fb39b', 'b1f97848-426b-4f2f-8d3d-3bfd4d5467f5', 'INSTANT', 'OUTGOING', 'ABank', 'BBank', 'MSISDN', '01234567893', 'IT (ITP)', 'MSISDN', '01234567891', NULL, '20', NULL, 100.0000, 'BDT', 0.0000, NULL, NULL, NULL, NULL, NULL, 'QUOTE_REQUESTED', NULL, NULL, '2026-03-06 17:33:58', NULL, NULL, '2026-03-06 17:33:58', '2026-03-06 17:33:58'),
('b6dcd902-1989-11f1-8896-bc2411b07449', 'c3cfe7b6-724d-4432-9aea-8a7b36366611', 'f6fc5f0d-51a3-48a7-b5c6-878e295d8622', 'c1256ea5-fadd-456b-b64b-d70b9df63ed2', 'INSTANT', 'OUTGOING', 'ABank', 'BBank', 'MSISDN', '01233445566', 'Blood Org', 'MSISDN', '01234567891', NULL, '21', NULL, 100.0000, 'BDT', 0.0000, 100.0000, 'eyJhbW91bnQiOiIxMDAiLCJjdXJyZW5jeSI6IkJEVCIsInBheWVlIjp7ImlkIjoiMDEyMzQ1Njc4OTEifSwicGF5ZXIiOnsiaWQiOiIwMTIzMzQ0NTU2NiJ9LCJleHBpcmF0aW9uIjoiMjAyNi0wMy0wNlQxOToyNDoyMC43NThaIn0=', '277P4dOThuoaHrO7WS1rER8aG0UUfynO9NeiCnH6mVg', NULL, '2026-03-06 19:24:20', 'COMMITTED', NULL, NULL, '2026-03-06 18:24:19', '2026-03-06 18:24:26', '2026-03-06 18:24:29', '2026-03-06 18:24:19', '2026-03-06 18:24:29'),
('c226e5be-1664-11f1-8896-bc2411b07449', '632def4d-c631-4cd1-9cc1-9c2520c02966', '8e28bbaf-5363-4c89-9441-73c8b8c06e32', 'bf4e49e0-2b14-4c14-8d75-427f64ca75c9', 'INSTANT', 'INCOMING', 'BBank', 'ABank', 'MSISDN', '01234567891', 'IT ITS', 'MSISDN', '01222222222', NULL, NULL, NULL, 30.0000, 'BDT', 0.0000, 30.0000, 'eyJhbW91bnQiOiIzMCIsImN1cnJlbmN5IjoiQkRUIiwicGF5ZWUiOnsiaWQiOiIwMTIyMjIyMjIyMiJ9LCJwYXllciI6eyJpZCI6IjAxMjM0NTY3ODkxIn0sImV4cGlyYXRpb24iOiIyMDI2LTAzLTAyVDE5OjIyOjE1LjgzMFoifQ==', '9h0oUwOeuCfakxXb4GAa6QTYRWWAQoHWaHQHbadN0Dc', NULL, '2026-03-02 19:22:15', 'COMMITTED', NULL, NULL, '2026-03-02 18:22:15', '2026-03-02 18:22:26', '2026-03-02 18:22:27', '2026-03-02 18:22:15', '2026-03-03 08:35:29'),
('e21c7cd4-1982-11f1-8896-bc2411b07449', NULL, '2d7da250-82bf-4003-8f64-86873212aee6', '3f3e15e3-d80a-420d-9d1c-50c34ef325f0', 'INSTANT', 'OUTGOING', 'ABank', 'BBank', 'MSISDN', '01234567893', 'IT (ITP)', 'MSISDN', '01234567891', NULL, '20', NULL, 100.0000, 'BDT', 0.0000, NULL, NULL, NULL, NULL, NULL, 'QUOTE_REQUESTED', NULL, NULL, '2026-03-06 17:35:25', NULL, NULL, '2026-03-06 17:35:25', '2026-03-06 17:35:25'),
('e7bcf343-1982-11f1-8896-bc2411b07449', NULL, '94432fef-ede7-43f3-b450-eb8e82eb0385', 'abcb3d04-f698-491a-bd06-27dbaf3f55c4', 'INSTANT', 'OUTGOING', 'ABank', 'BBank', 'MSISDN', '01234567893', 'IT (ITP)', 'MSISDN', '01234567891', NULL, '20', NULL, 1000.0000, 'BDT', 0.0000, NULL, NULL, NULL, NULL, NULL, 'QUOTE_REQUESTED', NULL, NULL, '2026-03-06 17:35:34', NULL, NULL, '2026-03-06 17:35:34', '2026-03-06 17:35:34'),
('e82f9080-1637-11f1-8896-bc2411b07449', 'c56a917f-1971-4a97-9055-b2bdccf68717', '931a1364-280a-4c83-934d-34303510a071', 'a1728d51-f59e-45df-8ab2-508af2ac56d0', 'P2P', 'OUTGOING', 'ABank', 'BBank', 'MSISDN', '01234567890', 'Echo s', 'MSISDN', '01234567891', NULL, '19', NULL, 6.0000, 'BDT', 0.0000, 6.0000, 'eyJhbW91bnQiOiI2IiwiY3VycmVuY3kiOiJCRFQiLCJwYXllZSI6eyJpZCI6IjAxMjM0NTY3ODkxIn0sInBheWVyIjp7ImlkIjoiMDEyMzQ1Njc4OTAifSwiZXhwaXJhdGlvbiI6IjIwMjYtMDMtMDJUMTQ6MDE6MTMuNDgxWiJ9', 'J0VewQvoWlzX0dPqPyzKMsqFOzNf8bslxKfPdQ2Nmtw', NULL, '2026-03-02 14:01:13', 'COMMITTED', NULL, NULL, '2026-03-02 13:01:12', '2026-03-02 13:01:22', '2026-03-02 13:01:24', '2026-03-02 13:01:12', '2026-03-02 13:01:24');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` varchar(36) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(255) NOT NULL,
  `full_name` varchar(150) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `merchant_id` varchar(36) NOT NULL,
  `role` enum('ADMIN','MERCHANT') NOT NULL DEFAULT 'MERCHANT',
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `otp` varchar(10) DEFAULT NULL,
  `otp_expires_at` datetime DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `full_name`, `phone`, `merchant_id`, `role`, `is_active`, `otp`, `otp_expires_at`, `last_login`, `created_at`, `updated_at`) VALUES
('0bdb88d9-8b65-4675-aa8f-d3bc02a0b349', 'coo.bangladeshisoftware', 'coo.bangladeshisoftware@gmail.com', '$2b$10$BgPz2uwE5C.8dzONMofVJugxigqkGG4qrf9ihW8Ped5BASdOSPm7O', 'Finance IT', '01222222222', '23', 'MERCHANT', 1, NULL, NULL, NULL, '2026-03-01 05:41:37', '2026-03-01 05:41:37'),
('7f3c1a10-14be-11f1-8555-fc3497682340', 'contact', 'contact@blood-service.org', '$2b$10$CNtRHJg0B7VLpO8xqCLr.OE1jg3AwupCckh9RXa.mp1OhJxwKnm1S', 'Blood Service', '01233445566', '21', 'MERCHANT', 1, NULL, NULL, NULL, '2026-03-01 04:53:58', '2026-03-01 04:53:58'),
('91d243f1-1490-11f1-8555-fc3497682340', 'echodeals', 'echo-deal@gmail.com', '$2a$10$DLASP9zw8e.xn95qrgRtTOyY/8.U0b6yZH.01riSFLX.enmwjjvFa', 'Echo Deals', '01234567890', '19', 'MERCHANT', 1, NULL, NULL, '2026-03-02 17:40:26', '2026-02-28 11:30:57', '2026-03-02 17:40:26'),
('91d24a01-1490-11f1-8555-fc3497682340', 'd_marchant', 'd_marchant@gmail.com', '$2a$10$DLASP9zw8e.xn95qrgRtTOyY/8.U0b6yZH.01riSFLX.enmwjjvFa', 'D Merchant', '01234567893', '20', 'MERCHANT', 1, NULL, NULL, NULL, '2026-02-28 11:30:57', '2026-02-28 13:55:24'),
('b224y3c9-14be-11f1-8588-fc3497542336', 'admin_', 'ceo.bangladeshisoftware@gmail.com', '$2b$12$cwPB0KFgyKC7uglHiOH0OuXPpx0vxApPmdJmfNEmmssNtNF65q4SC', 'Admin', '01719182586', '', 'ADMIN', 1, NULL, NULL, '2026-03-17 15:48:10', '2026-02-28 17:01:34', '2026-03-17 15:48:10'),
('c112b3c7-14be-11f1-8555-fc3497682340', 'admin', 'cao.bangladeshisoftware@gmail.com', '$2b$12$cwPB0KFgyKC7uglHiOH0OuXPpx0vxApPmdJmfNEmmssNtNF65q4SC', 'Admin', '01345678900', '', 'ADMIN', 1, NULL, NULL, '2026-03-02 18:13:04', '2026-02-28 17:01:34', '2026-03-02 18:13:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_merchant` (`merchant_id`),
  ADD KEY `idx_login_time` (`login_time`);

--
-- Indexes for table `als_logs`
--
ALTER TABLE `als_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `merchant`
--
ALTER TABLE `merchant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `merchant_balance`
--
ALTER TABLE `merchant_balance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_merchant_id` (`merchant_id`),
  ADD KEY `idx_created_at` (`created_at`),
  ADD KEY `idx_transfer_id` (`transfer_id`);

--
-- Indexes for table `merchant_wallet`
--
ALTER TABLE `merchant_wallet`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `merchant_id` (`merchant_id`),
  ADD UNIQUE KEY `uq_merchant` (`merchant_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_transfer_id` (`transfer_id`),
  ADD KEY `idx_quote_id` (`quote_id`),
  ADD KEY `idx_direction` (`direction`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_merchant` (`merchant_id`),
  ADD KEY `idx_created` (`created_at`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_username` (`username`),
  ADD UNIQUE KEY `uq_email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `als_logs`
--
ALTER TABLE `als_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `merchant`
--
ALTER TABLE `merchant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `merchant_balance`
--
ALTER TABLE `merchant_balance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `merchant_wallet`
--
ALTER TABLE `merchant_wallet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
