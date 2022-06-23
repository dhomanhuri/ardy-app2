-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2022 at 05:10 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `skripsi_aircraft`
--

-- --------------------------------------------------------

--
-- Table structure for table `badan_pesawat`
--

CREATE TABLE `badan_pesawat` (
  `id` int(11) NOT NULL,
  `features` varchar(255) NOT NULL,
  `binary_fusi` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `badan_pesawat`
--

INSERT INTO `badan_pesawat` (`id`, `features`, `binary_fusi`, `image`) VALUES
(1, 'Subsonic', '0000001000010000', 'subsonic_fuselage.jpg'),
(2, 'Supersonic', '0000000100001000', 'supersonic_fuselage.jpg'),
(3, 'High-Capacity Subsonic', '0000000010000100', 'high_capacity_subsonic.jpg'),
(4, 'High-Maneuverability Supersonic', '0000000001000010\r\n', 'high_maneuverability_supersonic.jpg'),
(5, 'Flying Boat', '0000000000100001', 'flying_boat.jpg'),
(6, 'Hypersonic', '0000000001000100', 'hypersonic.jpg'),
(7, 'Dragonfly', '0000000010001000', 'dragonfly_fuselage.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `bentuk_ekor`
--

CREATE TABLE `bentuk_ekor` (
  `id` int(11) NOT NULL,
  `features` varchar(255) NOT NULL,
  `binary_fusi` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bentuk_ekor`
--

INSERT INTO `bentuk_ekor` (`id`, `features`, `binary_fusi`, `image`) VALUES
(1, 'Conventional Tail', '0000000100010000', 'conventional_tail.jpg'),
(2, 'Twin Tail', '0000010000100100', 'twin_tail.jpg'),
(3, 'T-Tail', '0000001000100000', 't_tail.jpg'),
(4, 'Cruciform Tail', '0000010001000000', 'cruciform_tail.jpg'),
(5, 'H-Tail', '0000100010000000', 'h_tail.jpg'),
(6, 'V-Tail', '0001000100000000', 'v_tail.jpg'),
(7, 'No Tail (Double Main Rotor)', '0000011010000001', 'double_main_rotor.jpg'),
(8, 'Tail Rotor', '0010001000000000', 'tail_rotor.jpg'),
(9, 'Don\'t Have Any Tail', '1000000000100100', 'coba.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `dataset`
--

CREATE TABLE `dataset` (
  `id` int(11) NOT NULL,
  `jenis_sayap` int(255) NOT NULL,
  `jumlah_sayap` int(255) NOT NULL,
  `jenis_mesin` int(255) NOT NULL,
  `jumlah_mesin` int(255) NOT NULL,
  `badan_pesawat` int(255) NOT NULL,
  `jenis_ekor` int(255) NOT NULL,
  `persenjataan` int(255) NOT NULL,
  `warna` int(255) NOT NULL,
  `jenis_pesawat` varchar(255) NOT NULL,
  `nama_pesawat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dataset`
--

INSERT INTO `dataset` (`id`, `jenis_sayap`, `jumlah_sayap`, `jenis_mesin`, `jumlah_mesin`, `badan_pesawat`, `jenis_ekor`, `persenjataan`, `warna`, `jenis_pesawat`, `nama_pesawat`) VALUES
(1, 2, 1, 4, 1, 1, 1, 1, 2, 'Pesawat Militer', 'Chengdu J-7'),
(2, 2, 1, 4, 1, 1, 1, 1, 2, 'Pesawat Militer', 'Chengdu J-10'),
(3, 2, 1, 4, 2, 2, 2, 1, 2, 'Pesawat Militer', 'Chengdu J-20'),
(4, 2, 1, 4, 2, 2, 1, 1, 4, 'Pesawat Militer', 'Shenyang J-8'),
(5, 2, 1, 4, 2, 2, 2, 1, 3, 'Pesawat Militer', 'Shenyang J-11'),
(6, 2, 1, 4, 2, 2, 2, 1, 3, 'Pesawat Militer', 'Shenyang J-16'),
(7, 2, 1, 4, 1, 1, 1, 1, 6, 'Pesawat Militer', 'F-16 Fighting Falcon'),
(8, 2, 1, 4, 2, 2, 2, 1, 5, 'Pesawat Militer', 'F-15E Striker Eagle'),
(9, 2, 1, 4, 1, 1, 2, 1, 5, 'Pesawat Militer', 'F-35 Lighting II'),
(10, 2, 1, 4, 2, 1, 2, 1, 1, 'Pesawat Militer', 'F-22 Raptop'),
(11, 2, 1, 4, 1, 2, 1, 1, 2, 'Pesawat Militer', 'F-5 Freedom Fighter'),
(12, 2, 1, 4, 1, 1, 1, 1, 1, 'Pesawat Militer', 'F-4 Phantom II'),
(13, 2, 1, 4, 2, 1, 2, 2, 1, 'Pesawat Militer', 'Mikoyan MiG-29'),
(14, 2, 1, 4, 2, 1, 2, 1, 2, 'Pesawat Militer', 'Mikoyan MiG-35'),
(15, 2, 1, 4, 2, 1, 2, 1, 1, 'Pesawat Militer', 'Sikhoi Su-27'),
(16, 2, 1, 4, 2, 1, 2, 1, 1, 'Pesawat Militer', 'Sukhoi Su-35'),
(17, 2, 1, 4, 2, 1, 1, 1, 2, 'Pesawat Militer', 'Typhoon Fighter FGR-4'),
(18, 2, 1, 4, 2, 1, 1, 1, 3, 'Pesawat Militer', 'Dassault Rafale'),
(19, 2, 1, 4, 1, 1, 1, 1, 1, 'Pesawat Militer', 'Dassault Mirage 2000'),
(20, 2, 1, 4, 1, 1, 1, 1, 2, 'Pesawat Militer', 'JF-17 Thunder'),
(21, 2, 1, 4, 4, 1, 1, 2, 4, 'Pesawat Militer', 'Tu-160M Blackjack'),
(22, 2, 1, 4, 2, 2, 2, 1, 1, 'Pesawat Militer', 'Sukhoi Su-57'),
(23, 2, 1, 4, 2, 1, 2, 1, 3, 'Pesawat Militer', 'F-15 Eagle'),
(24, 2, 1, 4, 1, 1, 1, 2, 1, 'Pesawat Militer', 'L-33 Albatros'),
(25, 2, 1, 4, 1, 2, 1, 1, 4, 'Pesawat Militer', 'Tupolev Tu-22m'),
(26, 2, 1, 4, 1, 1, 1, 1, 3, 'Pesawat Militer', 'Yakovlev Yak-130'),
(27, 2, 1, 4, 2, 2, 2, 1, 5, 'Pesawat Militer', 'Shenyang J-31'),
(28, 2, 1, 4, 2, 1, 2, 1, 7, 'Pesawat Militer', 'Shenyang J-15'),
(29, 2, 1, 4, 2, 6, 9, 1, 5, 'Pesawat Militer', 'Xi\'an H-20'),
(30, 2, 1, 4, 1, 1, 1, 1, 4, 'Pesawat Militer', 'Xi\'an JH-7'),
(31, 2, 1, 4, 2, 1, 1, 1, 2, 'Pesawat Militer', 'Xi\'an JH-7'),
(32, 2, 1, 4, 2, 1, 1, 1, 3, 'Pesawat Militer', 'Hongdu JL-15'),
(33, 2, 1, 4, 1, 1, 1, 2, 5, 'Pesawat Militer', 'BAE System Hawk'),
(34, 2, 1, 4, 2, 1, 1, 2, 4, 'Pesawat Militer', 'Dassault'),
(35, 2, 1, 4, 2, 1, 1, 1, 1, 'Pesawat Militer', 'Jaguar'),
(36, 2, 1, 4, 2, 1, 1, 1, 5, 'Pesawat Militer', 'pavania Tornado'),
(37, 2, 1, 4, 1, 2, 1, 2, 4, 'Pesawat Militer', 'T-38B Talon'),
(38, 2, 1, 2, 1, 2, 1, 2, 1, 'Pesawat Militer', 'T-37C Tweet'),
(39, 2, 1, 4, 2, 1, 2, 1, 2, 'Pesawat Militer', 'McDonnell Douglas F/A-18D Hornet'),
(40, 2, 1, 4, 5, 5, 3, 2, 5, 'Pesawat Militer', 'Boeing C-17 Globemaster III'),
(41, 2, 1, 3, 2, 5, 5, 2, 2, 'Pesawat Militer', 'V-22 Osprey'),
(42, 2, 1, 4, 4, 6, 9, 1, 5, 'Pesawat Militer', 'Northrop Grumman B-2 Spirit'),
(43, 2, 1, 4, 2, 6, 6, 1, 5, 'Pesawat Militer', 'F-117'),
(44, 2, 1, 4, 2, 1, 2, 1, 2, 'Pesawat Militer', 'F-18'),
(45, 2, 1, 3, 1, 1, 1, 1, 2, 'Pesawat Militer', 'EMB 314/A-29 Super Tucano'),
(46, 2, 1, 4, 4, 5, 1, 2, 4, 'Pesawat Sipil', 'Antonov An-124'),
(47, 2, 1, 4, 4, 5, 1, 2, 4, 'Pesawat Sipil', 'Antonov An-225'),
(48, 2, 1, 4, 2, 5, 1, 2, 4, 'Pesawat Sipil', 'Airbus A300'),
(49, 2, 1, 3, 2, 5, 3, 2, 4, 'Pesawat Sipil', 'ATR-72'),
(50, 2, 1, 3, 2, 5, 1, 2, 4, 'Pesawat Sipil', 'CN-235'),
(51, 2, 1, 3, 2, 5, 1, 2, 4, 'Pesawat Sipil', 'CASA C-212'),
(52, 2, 1, 3, 2, 5, 1, 2, 4, 'Pesawat Sipil', 'N-219'),
(53, 2, 1, 3, 2, 5, 1, 2, 4, 'Pesawat Sipil', 'N-250'),
(54, 2, 1, 3, 2, 5, 1, 2, 4, 'Pesawat Sipil', 'N-245'),
(55, 2, 1, 4, 4, 5, 1, 2, 4, 'Pesawat Sipil', 'Airbus A380'),
(56, 2, 1, 4, 4, 5, 1, 2, 4, 'Pesawat Sipil', 'Airbus A340 600'),
(57, 2, 1, 4, 4, 5, 1, 2, 4, 'Pesawat Sipil', 'Boeing 747 400'),
(58, 2, 1, 3, 2, 5, 1, 2, 4, 'Pesawat Sipil', 'Embraer 190'),
(59, 2, 1, 3, 2, 5, 1, 2, 4, 'Pesawat Sipil', 'Tuperlov Tu-204'),
(60, 2, 1, 3, 2, 5, 1, 2, 4, 'Pesawat Sipil', 'NAMC YS-11'),
(61, 2, 1, 4, 3, 5, 1, 2, 4, 'Pesawat Sipil', 'DC-10'),
(62, 2, 1, 4, 2, 5, 3, 2, 4, 'Pesawat Sipil', 'DC-93'),
(63, 2, 1, 4, 3, 5, 1, 2, 4, 'Pesawat Sipil', 'MD-11'),
(64, 2, 1, 4, 2, 5, 3, 2, 4, 'Pesawat Sipil', 'MD-82'),
(65, 2, 1, 3, 2, 5, 3, 2, 4, 'Pesawat Sipil', 'Fokker F28'),
(66, 2, 1, 3, 2, 5, 1, 2, 8, 'Pesawat Sipil', 'Fokker F50'),
(67, 2, 1, 3, 2, 5, 1, 2, 4, 'Pesawat Sipil', 'Hawker Siddeley HS 748'),
(68, 2, 1, 4, 2, 5, 3, 2, 4, 'Pesawat Sipil', 'Hawker 400'),
(69, 2, 1, 4, 2, 5, 4, 2, 4, 'Pesawat Sipil', 'Gulfstream 200'),
(70, 2, 1, 4, 2, 5, 3, 2, 4, 'Pesawat Sipil', 'Gulfstream 3'),
(71, 2, 1, 4, 4, 5, 3, 2, 4, 'Pesawat Sipil', 'Vickers VC-10'),
(72, 2, 1, 4, 3, 5, 4, 2, 4, 'Pesawat Sipil', 'Dassault Falcon 900'),
(73, 2, 1, 4, 2, 5, 4, 2, 4, 'Pesawat Sipil', 'Falcon 2000'),
(74, 2, 1, 3, 2, 5, 3, 2, 4, 'Pesawat Sipil', 'DHC-8'),
(75, 2, 1, 4, 4, 5, 1, 2, 4, 'Pesawat Sipil', 'Boeing 707'),
(76, 2, 1, 4, 2, 5, 1, 2, 4, 'Pesawat Sipil', 'Boeing 707 Classic'),
(77, 2, 1, 3, 2, 5, 3, 2, 4, 'Pesawat Sipil', 'DHC-6'),
(78, 2, 1, 3, 2, 5, 1, 2, 3, 'Pesawat Sipil', 'Douglas DC-10'),
(79, 2, 1, 4, 3, 5, 1, 2, 4, 'Pesawat Sipil', 'McDonnell Douglas DC-10'),
(80, 2, 1, 4, 2, 5, 1, 2, 4, 'Pesawat Sipil', 'McDonnell Douglas MD-82'),
(81, 1, 4, 5, 1, 7, 8, 1, 5, 'Helikopter Militer', 'AH-64 Apache Longbow'),
(82, 1, 4, 5, 1, 7, 8, 2, 1, 'Helikopter Militer', 'AS32 Super Puma'),
(83, 1, 4, 5, 1, 7, 8, 2, 2, 'Helikopter Militer', 'AW101 Merlin'),
(84, 1, 4, 5, 1, 7, 8, 2, 3, 'Helikopter Militer', 'AW109 Power'),
(85, 1, 4, 5, 1, 7, 8, 1, 3, 'Helikopter Militer', 'A129 Mangusta'),
(86, 1, 4, 5, 2, 7, 7, 2, 8, 'Helikopter Militer', 'Chinook CH-47F'),
(87, 1, 4, 5, 1, 7, 8, 1, 1, 'Helikopter Militer', 'Sikorsky S-70A'),
(88, 1, 4, 5, 1, 7, 1, 1, 1, 'Helikopter Militer', 'Kamov KA-50 Black Shark'),
(89, 1, 4, 5, 1, 7, 1, 1, 1, 'Helikopter Militer', 'Kamov KA-52 Alligator'),
(90, 1, 4, 5, 1, 7, 8, 2, 1, 'Helikopter Militer', 'NH90'),
(91, 1, 4, 5, 1, 7, 8, 2, 4, 'Helikopter Militer', 'Sea King S-61'),
(92, 1, 4, 5, 1, 7, 8, 2, 4, 'Helikopter Militer', 'Sikorsky S-76'),
(93, 1, 4, 5, 1, 7, 8, 2, 1, 'Helikopter Militer', 'Bell UH-1 Iroquois'),
(94, 1, 4, 5, 1, 7, 8, 1, 2, 'Helikopter Militer', 'Bell AH-1W Super Cobra'),
(95, 1, 4, 5, 1, 7, 8, 2, 3, 'Helikopter Militer', 'Sikorsky HH-60P Pave Hawk'),
(96, 1, 4, 5, 1, 7, 8, 2, 5, 'Helikopter Militer', 'Sikorsky UH-60M Black Hawk'),
(97, 1, 4, 5, 1, 7, 1, 1, 1, 'Helikopter Militer', 'KA-52M'),
(98, 1, 4, 5, 1, 7, 8, 2, 5, 'Helikopter Militer', 'UH-72A Lakota'),
(99, 1, 4, 5, 2, 7, 7, 2, 6, 'Helikopter Militer', 'Yakovlev Yak-24U'),
(100, 1, 4, 5, 1, 7, 8, 2, 1, 'Helikopter Militer', 'PZL-Swidnik Mi-2'),
(101, 1, 4, 5, 1, 7, 8, 1, 1, 'Helikopter Militer', 'Bell AH-1S Cobra'),
(102, 1, 4, 5, 1, 7, 8, 1, 1, 'Helikopter Militer', 'Mil Mi 24P'),
(103, 1, 4, 5, 2, 7, 7, 2, 8, 'Helikopter Militer', 'Boeing CH-47D Chinook'),
(104, 1, 4, 5, 1, 7, 8, 1, 1, 'Helikopter Militer', 'Mil Mi 8MTV-2'),
(105, 1, 4, 5, 1, 7, 8, 2, 5, 'Helikopter Militer', 'Sikorsky UH-60A Black Hawk'),
(106, 1, 4, 5, 2, 7, 7, 2, 8, 'Helikopter Militer', 'Boeing CH-47F Chinook'),
(107, 1, 4, 5, 1, 7, 8, 2, 1, 'Helikopter Militer', 'Eucopter AS-532U2 Cougar Mk2'),
(108, 1, 4, 5, 1, 7, 8, 2, 1, 'Helikopter Militer', 'Westland WS-61 Sea King Mk48'),
(110, 1, 4, 5, 1, 7, 8, 2, 2, 'Helikopter Militer', 'Sikorsky S-70C(M)-2 Thunderhawk'),
(111, 1, 4, 5, 1, 7, 8, 2, 6, 'Helikopter Militer', 'Agusta A-109CM'),
(112, 1, 4, 5, 1, 7, 8, 2, 6, 'Helikopter Militer', 'Bell UH-1H Huey II'),
(113, 1, 4, 5, 1, 7, 8, 2, 1, 'Helikopter Militer', 'Mil Mi-8MT'),
(114, 1, 4, 5, 1, 7, 8, 2, 6, 'Helikopter Militer', 'Agusta HH-3F'),
(115, 1, 4, 5, 1, 7, 8, 2, 3, 'Helikopter Militer', 'AgustaWesland HH-139A'),
(116, 1, 4, 5, 1, 7, 1, 2, 1, 'Helikopter Militer', 'Wesland WH-13 Lynx AH7'),
(117, 1, 4, 5, 1, 7, 8, 2, 2, 'Helikopter Militer', 'Sikorsky CH-53E Super Stallion'),
(118, 1, 4, 5, 1, 7, 8, 2, 7, 'Helikopter Militer', 'Agusta AB-47J Ranger'),
(119, 1, 4, 5, 1, 7, 8, 2, 1, 'Helikopter Militer', 'Aerospatiale TP-1 Oryx M'),
(120, 1, 4, 5, 1, 7, 8, 2, 1, 'Helikopter Militer', 'Kazan Ansat-U'),
(121, 1, 4, 5, 2, 7, 8, 2, 5, 'Helikopter Sipil', 'Eurocopter EC-135'),
(122, 1, 4, 5, 2, 7, 8, 2, 4, 'Helikopter Sipil', 'Bell 430'),
(123, 1, 4, 5, 2, 7, 8, 2, 5, 'Helikopter Sipil', 'Agusta Bell 412 Grifone'),
(124, 1, 4, 5, 2, 7, 8, 2, 10, 'Helikopter Sipil', 'Bell 230'),
(125, 1, 4, 5, 1, 7, 8, 2, 9, 'Helikopter Sipil', 'Bell JetRanger'),
(126, 1, 4, 5, 2, 7, 8, 2, 9, 'Helikopter Sipil', 'Bell Supertransport'),
(127, 1, 4, 5, 1, 7, 8, 2, 5, 'Helikopter Sipil', 'Robinson R44'),
(128, 1, 4, 5, 2, 7, 8, 2, 4, 'Helikopter Sipil', 'Sikorsky S-76'),
(129, 1, 4, 5, 1, 7, 8, 2, 9, 'Helikopter Sipil', 'Enstrom F-28'),
(130, 1, 4, 5, 1, 7, 8, 2, 5, 'Helikopter Sipil', 'Eucopter AS350'),
(131, 1, 4, 5, 1, 7, 8, 2, 9, 'Helikopter Sipil', 'Eucopter EC120 Colibri'),
(132, 1, 4, 5, 2, 7, 8, 2, 9, 'Helikopter Sipil', 'NBK 117'),
(133, 1, 4, 5, 1, 7, 8, 2, 9, 'Helikopter Sipil', 'Bell 212'),
(134, 1, 4, 5, 1, 7, 8, 2, 9, 'Helikopter Sipil', 'Bell 407'),
(135, 1, 4, 5, 2, 7, 8, 2, 5, 'Helikopter Sipil', 'Agusta A109'),
(136, 1, 4, 5, 2, 7, 2, 2, 10, 'Helikopter Sipil', 'Eucopter EC145'),
(137, 1, 4, 5, 1, 7, 8, 2, 10, 'Helikopter Sipil', 'Eucopter EC130'),
(138, 1, 4, 5, 1, 7, 8, 2, 5, 'Helikopter Sipil', 'Hughes 369'),
(139, 1, 4, 5, 1, 7, 8, 2, 5, 'Helikopter Sipil', 'Mil Mi-34 Hermit'),
(140, 1, 4, 5, 2, 7, 2, 2, 9, 'Helikopter Sipil', 'MD Explorer'),
(141, 1, 4, 5, 2, 7, 8, 2, 4, 'Helikopter Sipil', 'Ansat'),
(142, 1, 4, 5, 2, 7, 8, 2, 4, 'Helikopter Sipil', 'Bell 412'),
(143, 1, 4, 5, 2, 7, 8, 2, 10, 'Helikopter Sipil', 'Sikorsky S-92'),
(144, 1, 4, 5, 2, 7, 8, 2, 4, 'Helikopter Sipil', 'Agusta W169'),
(145, 1, 4, 5, 2, 7, 8, 2, 7, 'Helikopter Sipil', 'Aeropastiale AS-355'),
(146, 1, 4, 5, 2, 7, 8, 2, 4, 'Helikopter Sipil', 'Airbus Helicopter H225'),
(147, 1, 4, 5, 1, 7, 8, 2, 9, 'Helikopter Sipil', 'Airbus Helicopter EC-120 Colibri'),
(148, 1, 4, 5, 2, 7, 8, 2, 4, 'Helikopter Sipil', 'Airbus Helicopter H175'),
(149, 1, 4, 5, 3, 7, 8, 2, 9, 'Helikopter Sipil', 'Avicopter AC313'),
(150, 1, 4, 5, 1, 7, 8, 2, 7, 'Helikopter Sipil', 'Cicare CH-7'),
(151, 1, 4, 5, 1, 7, 2, 2, 7, 'Helikopter Sipil', 'CH-77 Ranabot'),
(152, 1, 4, 5, 1, 7, 8, 2, 4, 'Helikopter Sipil', 'Guimbal Cabri G2'),
(153, 1, 4, 5, 1, 7, 8, 2, 5, 'Helikopter Sipil', 'Sikorsky S-434'),
(154, 1, 4, 5, 1, 7, 8, 2, 4, 'Helikopter Sipil', 'Schweizer 330'),
(155, 1, 4, 5, 2, 7, 8, 2, 4, 'Helikopter Sipil', 'Airbus Helicopter H135 Helionix');

-- --------------------------------------------------------

--
-- Table structure for table `dataset_aircraft`
--

CREATE TABLE `dataset_aircraft` (
  `id` int(11) NOT NULL,
  `class_aircraft` int(11) NOT NULL,
  `fusi_informasi` varchar(255) NOT NULL,
  `tipe_pesawat` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `buatan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dataset_aircraft`
--

INSERT INTO `dataset_aircraft` (`id`, `class_aircraft`, `fusi_informasi`, `tipe_pesawat`, `image`, `buatan`) VALUES
(1, 0, '0100111111100000\r\n', 'Chengdu J-7', 'ChengduJ-7.jpg', 'China'),
(2, 0, '0101010011111110\r\n', 'Chengdu J-10', 'ChengduJ-10.jpg', 'China'),
(3, 0, '0101000100000110\r\n', 'Chengdu J-20', 'ChengduJ-20.jpg', 'China'),
(4, 0, '0110010011001110\r\n', 'Shenyang J-8', 'ShenyangJ-8.jpg', 'China'),
(5, 0, '0111101111111000\r\n', 'Shenyang J-11', 'ShenyangJ-11.jpg', 'China'),
(6, 0, '0111101111111000\r\n', 'Shenyang J-16', 'ShenyangJ-16.jpg', 'China'),
(7, 0, '0101001110010000\r\n', 'F-16 Fighting Falcon', 'F-16FightingFalcon.jpg', 'United States'),
(8, 0, '0101010101101000', 'F-15E Strike Eagle', 'F-15EStrikeEagle.jpg', 'United States'),
(9, 0, '0101010110111100', 'F-35 Lightning II', 'F-35LightningII.jpg', 'United States'),
(10, 0, '0101100101101000', 'F-22 Raptor', 'F-22Raptor.jpg', 'United States'),
(11, 0, '0100110011100000', 'F-5 Freedom Fighter', 'F-5FreedomFighter.jpg', 'United States'),
(12, 0, '0111011110001000', 'F-4 Phantom II', 'F-4PhantomII.jpg', 'United States'),
(13, 0, '0111000101101000', 'Mikoyan MiG-29', 'MikoyanMiG-29.jpg', 'Russian'),
(14, 0, '0100100100011000', 'Mikoyan MiG-35', 'MikoyanMiG-35.jpg', 'Russia'),
(15, 0, '0111000101101000', 'Sukhoi Su-27', 'SukhoiSu-27.jpg', 'Russia'),
(16, 0, '0111000101101000', 'Sukhoi Su-35', 'SukhoiSu-35.jpg', 'Russia'),
(17, 0, '0101011100111110', 'Typhoon Fighter FGR-4', 'TyphoonFighterFGR-4.jpg', '	United Kingdom'),
(18, 0, '0110011011000110', 'Dassault Rafale', 'DassaultRafale.jpg', 'France'),
(19, 0, '0101111110001000', 'Dassault Mirage 2000', 'DassaultMirage2000.jpg', 'France'),
(20, 0, '0100111111100000', 'JF-17 Thunder', 'JF-17Thunder.jpg', 'Pakistan'),
(21, 0, '1111010010000000', 'Tu-160M Blackjack', 'Tu-160MBlackjack.jpg', 'Russia'),
(22, 0, '0101101001110000', 'Sukhoi Su-57', 'SukhoiSu-57.jpg', 'Russia'),
(23, 0, '0111100011100000', 'F-15C Eagle', 'F-15CEagle.jpg', 'United States'),
(24, 0, '0111011101001000', 'L-39 Albatros', 'L-39Albatros.jpg', 'Czechoslovakia'),
(25, 0, '0100111100010110', 'Tupolev Tu-22m', 'TupolevTu-22m.jpg', 'Russia'),
(26, 0, '0111011110010000', 'Yakovlev Yak-130', 'YakovlevYak-130.jpg', 'Russia'),
(27, 0, '0101010101101000', 'Shenyang J-31', 'ShenyangJ-31.jpg', 'China'),
(28, 0, '0100100110001000', 'Shenyang J-15', 'ShenyangJ-15.jpg', 'China'),
(29, 0, '1111100000101000', 'Xi\'an H-20', 'XianH-20.jpg', 'China'),
(30, 0, '0100110000010110', 'Xi\'an H-6K', 'XianH-6K.jpg', 'China'),
(31, 0, '0100110000101100', 'Xi\'an JH-7', 'XianJH-7.jpg', 'China'),
(32, 0, '0111110111011000', 'Hongdu JL-15', 'HongduJL-15.jpg', 'China'),
(33, 0, '0101110001010000', 'BAE System Hawk', 'BAESystemHawk.jpg', 'United Kingdom'),
(34, 0, '0101110001010010', 'Dassault', 'Dassault.jpg', 'France'),
(35, 0, '0110101100010100', 'Jaguar', 'Jaguar.jpg', 'France/United Kingdom'),
(36, 0, '0101001101000100', 'Panavia Tornado', 'PanaviaTornado.jpg', 'Italy, West Germany and United Kingdom'),
(37, 0, '0100001111010110', 'T-38B Talon', 'T-38BTalon.jpg', 'United States'),
(38, 0, '0101110001011100', 'T-37C Tweet', 'T-37CTweet.jpg', 'United States'),
(39, 0, '0100100100011000', 'McDonnell Douglas F/A-18D Hornet', 'McDonnellDouglas.jpg', 'United States'),
(40, 0, '1110100100001011', 'Boeing C-17 Globemaster III', 'BoeingC-17GlobemasterIII.jpg', 'United States'),
(41, 0, '0110100011011001', 'V-22 Osprey', 'V-22Osprey.jpg', 'United States'),
(42, 0, '0100111101111010', 'Northrop Grumman B-2 Spirit', 'NorthropGrummanB-2Spirit.jpg', 'United States'),
(43, 0, '0101111001011100', 'F-117', 'F-117.jpg', 'United States'),
(44, 0, '0101101100011111', 'F-18', 'F-18.jpg', 'United States'),
(45, 0, '0100111111001000', 'EMB 314/A-29 Super Tucano', 'EMB314.jpg', 'Brazil'),
(46, 1, '1111011010100101\r\n', 'Antonov An-124', 'AntonovAn-124.jpg', 'Russia'),
(47, 1, '1111011010100101\r\n', 'Antonov An-225', 'AntonovAn-225.jpg', 'Russia'),
(48, 1, '0111011010110011', 'Airbus A300', 'AirbusA300.jpg', 'United Kingdom, France, and West Germany'),
(49, 1, '0110000110001111', 'ATR-72', 'ATR-72.jpg', 'France/Italy'),
(50, 1, '0110111010111111', 'CN-235', 'CN-235.jpg', 'Spain and Indonesia'),
(51, 1, '0110001010111111', 'CASA C-212', 'CASAC-212.jpg', 'Spain'),
(52, 1, '0110001010111111', 'N-219', 'N-219.jpg', 'Indonesia'),
(53, 1, '0110001010111111', 'N-250', 'N-250.jpg', 'Indonesia'),
(54, 1, '0110111010111111', 'N-245', 'N-245.jpg', 'Indonesia'),
(55, 1, '1111011010110001', 'Airbus A380', 'AirbusA380.jpg', 'France, Germany, Spain, and the United Kingdom'),
(56, 1, '1111011010110001', 'Airbus A340 600', 'AirbusA340-600.jpg', 'France'),
(57, 1, '1111011010110001', 'Boeing 747 400', 'Boeing747-400.jpg', 'United States'),
(58, 1, '0110111010101011', 'Embraer 190', 'Embraer190.jpg', 'Brazil'),
(59, 1, '0110111010101011', 'Tupolev Tu-204', 'TupolevTu-204.jpg', 'Russia'),
(60, 1, '0110001010101011', 'NAMC YS-11', 'NAMCYS-11.jpg', 'Japan'),
(61, 1, '1111011010110011', 'DC-10', 'DC-10.jpg', 'United States'),
(62, 1, '0101011000100111', 'DC-93', 'DC-93.jpg', 'United States'),
(63, 1, '1111011010110011', 'MD-11', 'MD-11.jpg', 'United States'),
(64, 1, '0101011000100111', 'MD-82', 'MD-82.jpg', 'United States'),
(65, 1, '0100111000111111', 'Fokker F28', 'FokkerF28.jpg', 'Netherlands'),
(66, 1, '0110001010111111', 'Fokker F50', 'FokkerF50.jpg', 'Netherlands'),
(67, 1, '0110001010101011', 'Hawker Siddley HS 748', 'HawkerSiddleyHS-748.jpg', 'United Kingdom'),
(68, 1, '0101011000100111', 'Hawker 400', 'Hawker400.jpg', 'Japan/United States'),
(69, 1, '0101000001000111', 'Gulfstream G200', 'GulfstreamG200.jpg', 'Israel'),
(70, 1, '0101011000100111', 'Gulfstream 3', 'Gulfstream3.jpg', 'United States'),
(71, 1, '1101011000100101', 'Vickers VC-10', 'VickersVC-10.jpg', 'United Kingdom'),
(72, 1, '1101000001000111', 'Dassault Falcon 900', 'DassaultFalcon900.jpg', 'France'),
(73, 1, '0101000001000111', 'Falcon 2000', 'Falcon2000.jpg', 'France'),
(74, 1, '0110000110001111', 'DHC-8', 'DHC-8.jpg', 'Canada'),
(75, 1, '1111011010110001', 'Boeing 707', 'Boeing707.jpg', 'United States'),
(76, 1, '0111011010110011', 'Boeing 737 Classic', 'Boeing737Classic.jpg', 'United States'),
(77, 1, '0110000110001111', 'DHC-6', 'DHC-6.jpg', 'Canada'),
(78, 1, '0101000010100101', 'Douglas DC-3', 'DouglasDC-3.jpg', 'United States'),
(79, 1, '1111011010110011', 'McDonnell Douglas DC-10', 'McDonnellDouglasDC-10.jpg', 'United States'),
(80, 1, '0111011010110011', 'McDonnell Douglas MD-82', 'McDonnellDouglasMD-82.jpg', 'United States'),
(81, 2, '1110100101010000', 'AH-64 Apache Longbow', 'AH-64ApacheLongbow.jpg', 'United States'),
(82, 2, '1100011100001010', 'AS32 Super Puma', 'AS32SuperPuma.jpg', 'France'),
(83, 2, '0011001101111010', 'AW101 Merlin', 'AW101Merlin.jpg', 'United Kingdom/Italy'),
(84, 2, '1100111010000010', 'AW109 Power', 'AW109Power.jpg', 'Italy'),
(85, 2, '1100011111000000', 'A129 Mangusta', 'A129Mangusta.jpg', 'Italy'),
(86, 2, '1110011110011010', 'Chinook CH-47F', 'ChinookCH-47F.jpg', 'United States'),
(87, 2, '1100101111001010', 'Sikorsky S-70A', 'SikorskyS-70A.jpg', 'United States'),
(88, 2, '0010000101011000', 'Kamov KA-50 Black Shark', 'KamovKA-50BlackShark.jpg', 'Russia'),
(89, 2, '0010000101011000', 'Kamov KA-52 Alligator', 'KamovKA-52Alligator.jpg', 'Russia'),
(90, 2, '1100001110001000', 'NH90', 'NH90.jpg', 'France and Germany '),
(91, 2, '0011010000001110', 'Sea King S-61', 'SeaKingS-61.jpg', 'United States'),
(92, 2, '1111100000001110', 'Sikorsky S-76', 'SikorskyS-76.jpg', 'United States'),
(93, 2, '1000101100000010', 'Bell UH-1 Iroquois', 'BellUH-1Iroquois.jpg', 'United States'),
(94, 2, '1011111110110010', 'Bell AH-1W Super Cobra', 'BellAH-1WSuperCobra.jpg', 'United States'),
(95, 2, '1100111010000010', 'Sikorsky HH-60P Pave Hawk', 'SikorskyHH-60PPaveHawk.jpg', 'United States'),
(96, 2, '1110000000010010', 'Sikorsky UH-60M Black Hawk', 'SikorskyUH-60MBlackHawk.jpg', 'United States'),
(97, 2, '0010000101011000', 'KA-52M', 'KA-52M.jpg', 'United States'),
(98, 2, '1010110000011010', 'UH-72A Lakota', 'UH-72ALakota.jpg', 'Russian'),
(99, 2, '1100100000011010', 'Yakovlev Yak-24U', 'YakovlevYak-24U.jpg', 'Russia'),
(100, 2, '0000101100001010', 'PZL-Swidnik Mi-2', 'PZL-SwidnikMi-2.jpg', 'Poland'),
(101, 2, '1000011111000010', 'Bell AH-1S Cobra', 'BellAH-1SCobra.jpg', 'United States'),
(102, 2, '0000011111001010', 'Mil Mi 24P', 'MilMi24P.jpg', 'Russia'),
(103, 2, '1110011110011010', 'Boeing CH-47D Chinook', 'BoeingCH-47DChinook.jpg', 'United States'),
(104, 2, '1100111001001000', 'Mil Mi 8MTV-2', 'MilMi8MTV-2.jpg', 'Russia'),
(105, 2, '1110010110010000', 'Sikorsky UH-60A Black Hawk', 'SikorskyUH-60ABlackHawk.jpg', 'United States'),
(106, 2, '0010101110011010', 'Boeing CH-47F Chinook', 'BoeingCH-47FChinook.jpg', 'United States'),
(107, 2, '0000101100001010', 'Eurocopter AS-532U2 Cougar Mk2', 'EurocopterAS-532U2CougarMk2.jpg', 'France'),
(108, 2, '1100001010001000', 'Westland WS-61 Sea King Mk48', 'WestlandWS-61SeaKingMk48.jpg', 'United Kingdom'),
(109, 2, '1110100101010000', 'Westland WAH-64D Longbow Apache AH1', 'WestlandWAH-64DLongbowApacheAH1.jpg', 'United States / United Kingdom'),
(110, 2, '1111111101111010', 'Sikorsky S-70C(M)-2 Thunderhawk', 'SikorskyS-70CM-2Thunderhawk.jpg', 'Taiwan'),
(111, 2, '1110001100001010', 'Agusta A-109CM', 'AgustaA-109CM.jpg', 'Italy'),
(112, 2, '1010101010000000', 'Bell UH-1H Huey II', 'BellUH-1HHueyII.jpg', 'Argentina'),
(113, 2, '1100011100001010', 'Mil Mi-8MT', 'Mil Mi-8MT.jpg', 'Russia'),
(114, 2, '1110001100001010', 'Agusta HH-3F', 'AgustaHH-3F.jpg', 'Italy'),
(115, 2, '1100111010000010', 'AgustaWestland HH-139A', 'AgustaWestlandHH-139A.jpg', 'Italy'),
(116, 2, '1000111010000000', 'Westland WG-13 Lynx AH7', 'WestlandWG-13LynxAH7.jpg', 'United Kingdom'),
(117, 2, '1111101011111000', 'Sikorsky CH-53E Super Stallion', 'SikorskyCH-53ESuperStallion.jpg', 'United States'),
(118, 2, '1011011001100000', 'Agusta AB-47J Ranger', 'AgustaAB-47JRanger.jpg', 'United States'),
(119, 2, '0000101100001010', 'Aerospatiale TP-1 Oryx M', 'AerospatialeTP-1OryxM.jpg', 'South Africa'),
(120, 2, '1100011100001010', 'Kazan Ansat-U', 'KazanAnsat-U.jpg', 'Russia'),
(121, 3, '1010101101011000', 'Eurocopter EC-135\r\n', 'EurocopterEC-135.jpg', 'France and Germany'),
(122, 3, '0011001101001100', 'Bell 430', 'Bell430.jpg', 'United States'),
(123, 3, '1010111111011010', 'Agusta-Bell 412 Grifone', 'Agusta-Bell412Grifone.jpg', 'United States/Canada'),
(124, 3, '1000000000001010', 'Bell 230', 'Bell230.jpg', 'United States'),
(125, 3, '0111110000000010', 'Bell JetRanger', 'BellJetRanger.jpg', 'United States'),
(126, 3, '0111111111000010', 'Bell Supertransport', 'BellSupertransport.jpg', 'United States'),
(127, 3, '1010110000011010', 'Robinson R44', 'RobinsonR44.jpg', 'United States'),
(128, 3, '0011001101001100', 'Sikorsky S-76', 'SikorskyS-76.jpg', 'United States'),
(129, 3, '0111100110000000', 'Enstrom F-28', 'EnstromF-28.jpg', 'United States'),
(130, 3, '1010110000011010', 'Eurocopter AS350', 'EurocopterAS350.jpg', 'France'),
(131, 3, '0111110000000010', 'Eurocopter EC120 Colibri', 'EurocopterEC120Colibri.jpg', 'France and Australia'),
(132, 3, '0111111111000010', 'NBK 117', 'NBK117.jpg', 'Germany and Japan'),
(133, 3, '0111110000000010', 'Bell 212', 'Bell212.jpg', 'United States/Canada'),
(134, 3, '0111110000000010', 'Bell 407', 'Bell407.jpg', 'United States/Canada'),
(135, 3, '0010111111010010', 'Agusta A109', 'AgustaA109.jpg', 'Italy'),
(136, 3, '0010011000100110', 'Eurocopter EC145', 'EurocopterEC145.jpg', 'France'),
(137, 3, '0000001111000010', 'Eurocopter EC130', 'EurocopterEC130.jpg', 'France'),
(138, 3, '1010110000011010', 'Hughes 369', 'Hughes369.jpg', 'United States'),
(139, 3, '1010100110011000', 'Mil Mi-34 Hermit', 'MilMi-34Hermit.jpg', 'Russia'),
(140, 3, '0101100111100110', 'MD Explorer', 'MDExplorer.jpg', 'United States'),
(141, 3, '1011001101000100', 'Ansat', 'Ansat.jpg', 'Russia'),
(142, 3, '1011001101000100', 'Bell 412', 'Bell412.jpg', 'United States/Canada'),
(143, 3, '1000000000001010', 'Sikorsky S-92', 'SikorskyS-92.jpg', 'United States'),
(144, 3, '0011011111001110', 'Agusta W169', 'AgustaW169.jpg', 'Italy'),
(145, 3, '1011010010100000', 'Aeropastiale AS-355', 'AeropastialeAS-355.jpg', 'France'),
(146, 3, '1111111101001100', 'Airbus Helicopter H225', 'AirbusHelicopterH225.jpg', 'France'),
(147, 3, '0111110000000010', 'Airbus Helicopter EC-120 Colibri', 'AirbusHelicopterEC-120Colibri.jpg', 'France and Australia'),
(148, 3, '0011001101001100', 'Airbus Helicopter H175', 'AirbusHelicopterH175.jpg', 'China'),
(149, 3, '0111111111001010', 'Avicopter AC313', 'AvicopterAC313.jpg', 'China'),
(150, 3, '1011011001100000', 'Cicare CH-7', 'CicareCH-7.jpg', 'Argentina/Italy'),
(151, 3, '1011011001100000', 'CH-77 Ranabot', 'CH-77Ranabot.jpg', 'Italy'),
(152, 3, '1011010100000110', 'Guimbal Cabri G2', 'GuimbalCabriG2.jpg', 'France'),
(153, 3, '1010100110011000', 'Sikorsky S-434', 'SikorskyS-434.jpg', 'United States'),
(154, 3, '1011010100000110', 'Schweizer 330', 'Schweizer330.jpg', 'United States'),
(155, 3, '1011001101000100', 'Airbus Helicopter H135 Helionix', 'AirbusHelicopterH135Helionix.jpg', 'France');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_mesin`
--

CREATE TABLE `jenis_mesin` (
  `id` int(11) NOT NULL,
  `features` varchar(255) NOT NULL,
  `binary_fusi` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jenis_mesin`
--

INSERT INTO `jenis_mesin` (`id`, `features`, `binary_fusi`, `image`) VALUES
(1, 'Piston', '0100000000000001', 'piston.png'),
(2, 'Turbo Jet', '0010000000000100', 'turbojet.png'),
(3, 'Turbo Prop', '0001000000001000', 'turboprop.jpg'),
(4, 'Turbo Fan', '0000100000010000', 'turbofan.png'),
(5, 'Turbo Shaft', '0000010000100000', 'turboshaft.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_sayap`
--

CREATE TABLE `jenis_sayap` (
  `id` int(11) NOT NULL,
  `features` varchar(255) NOT NULL,
  `binary_fusi` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jenis_sayap`
--

INSERT INTO `jenis_sayap` (`id`, `features`, `binary_fusi`, `image`) VALUES
(1, 'Rotary Wings', '0000000000000001', 'rotary_wings.jpg'),
(2, 'Fixed Wings', '0000000000000010', 'fixed_wings.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `jumlah_mesin`
--

CREATE TABLE `jumlah_mesin` (
  `id` int(11) NOT NULL,
  `features` varchar(255) NOT NULL,
  `binary_fusi` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jumlah_mesin`
--

INSERT INTO `jumlah_mesin` (`id`, `features`, `binary_fusi`, `image`) VALUES
(1, '1 (One Machine)', '0000001001000000', 'single_engine.jpeg'),
(2, '2 (Two Machine)', '0000000110000000', 'double_engine.jpg'),
(3, '3 (Three Machine)', '1000000110000000', 'three_engine.jpg'),
(4, '4 (Four Machine)', '1000000110000010', 'four_engine.jpg'),
(5, '5 (Five Machine)', '1000001001000010', 'five_engine.jpg'),
(6, '6 (Six Machine)', '0100001001000010', 'six_engine.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `jumlah_sayap`
--

CREATE TABLE `jumlah_sayap` (
  `id` int(11) NOT NULL,
  `features` varchar(255) NOT NULL,
  `binary_fusi` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jumlah_sayap`
--

INSERT INTO `jumlah_sayap` (`id`, `features`, `binary_fusi`, `image`) VALUES
(1, 'Monoplane', '0000000001000000', 'monoplane.png'),
(2, 'Biplane', '0000000010000000', 'biplane.png'),
(3, 'Triplane', '0000000100000000', 'triplane.jpg'),
(4, 'Don\'t Have Any Wings', '0000001000000000', 'coba.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `persenjataan`
--

CREATE TABLE `persenjataan` (
  `id` int(11) NOT NULL,
  `features` varchar(255) NOT NULL,
  `binary_fusi` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `persenjataan`
--

INSERT INTO `persenjataan` (`id`, `features`, `binary_fusi`, `image`) VALUES
(1, 'Have Weaponary', '1000100010000000', 'weaponary.jpg'),
(2, 'Don\'t Have Any Weaponary', '1000010001000000', 'no_weapon.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `separate_fusi_dataset`
--

CREATE TABLE `separate_fusi_dataset` (
  `id` int(11) NOT NULL,
  `class` int(11) NOT NULL,
  `wings_features` varchar(255) NOT NULL,
  `engine_features` varchar(255) NOT NULL,
  `fuselage_features` varchar(255) NOT NULL,
  `tail_features` varchar(255) NOT NULL,
  `add_features` varchar(255) NOT NULL,
  `tipe_pesawat` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `buatan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `separate_fusi_dataset`
--

INSERT INTO `separate_fusi_dataset` (`id`, `class`, `wings_features`, `engine_features`, `fuselage_features`, `tail_features`, `add_features`, `tipe_pesawat`, `image`, `buatan`) VALUES
(1, 0, '0000100001001010', '0001100101011000', '0000001000010000', '0000000100010000', '0101110111110010', 'Chengdu J-7', 'ChengduJ-7.jpg', 'China'),
(2, 0, '0010000001010010', '0001100101011000', '0000001000010000', '0000000100010000', '0110111011110100', 'Chengdu J-10', 'ChengduJ-10.jpg', 'China'),
(3, 0, '0010000001000110', '0001101010011000', '0000000100001000', '0000010000100100', '0110111011110100', 'Chengdu J-20', 'ChengduJ-20.jpg', 'China'),
(4, 0, '0010000001001010', '0001101010011000', '0000000100001000', '0000000100010000', '0101111000000100', 'Shenyang J-8', 'ShenyangJ-8.jpg', 'China'),
(5, 0, '0000100001000110', '0001101010011000', '0000000100001000', '0000010000100100', '0110110000001010', 'Shenyang J-11', 'ShenyangJ-11.jpg', 'China'),
(6, 0, '0000100001000110', '0001101010011000', '0000000100001000', '0000010000100100', '0110110000001010', 'Shenyang J-16', 'ShenyangJ-16.jpg', 'China'),
(7, 0, '0000100001001010', '0001100101011000', '0000001000010000', '0000000100010000', '0100000110000010', 'F-16 Fighting Falcon', 'F-16FightingFalcon.jpg', 'United States'),
(8, 0, '0000100001000110', '0001101010011000', '0000000100001000', '0000010000100100', '0100001010011010', 'F-15E Strike Eagle', 'F-15EStrikeEagle.jpg', 'United States'),
(9, 0, '0000100001001010', '0001100101011000', '0000001000010000', '0000010000100100', '0100001010011010', 'F-35 Lightning II', 'F-35LightningII.jpg', 'United States'),
(10, 0, '0010000001000110', '0001101010011000', '0000001000010000', '0000010000100100', '0110010110000010', 'F-22 Raptor', 'F-22Raptor.jpg', 'United States'),
(11, 0, '0000100001010010', '0001100101011000', '0000000100001000', '0000000100010000', '0101110111110010', 'F-5 Freedom Fighter', 'F-5FreedomFighter.jpg', 'United States'),
(12, 0, '0000100001010010', '0001100101011000', '0000001000010000', '0000000100010000', '0110010110000010', 'F-4 Phantom II', 'F-4PhantomII.jpg', 'United States'),
(13, 0, '0000100001000110', '0001101010011000', '0000001000010000', '0000010000100100', '0110010110000010', 'Mikoyan MiG-29', 'MikoyanMiG-29.jpg', 'Russian'),
(14, 0, '0000100001000110', '0001101010011000', '0000001000010000', '0000010000100100', '0101110111110010', 'Mikoyan MiG-35', 'MikoyanMiG-35.jpg', 'Russia'),
(15, 0, '0000100001000110', '0001101010011000', '0000001000010000', '0000010000100100', '0110010110000010', 'Sukhoi Su-27', 'SukhoiSu-27.jpg', 'Russia'),
(16, 0, '0000100001000110', '0001101010011000', '0000001000010000', '0000010000100100', '0110010110000010', 'Sukhoi Su-35', 'SukhoiSu-35.jpg', 'Russia'),
(17, 0, '0010000001010010', '0001101010011000', '0000001000010000', '0000000100010000', '0110111011110100', 'Typhoon Fighter FGR-4', 'TyphoonFighterFGR-4.jpg', '	United Kingdom'),
(18, 0, '0010000001010010', '0001101010011000', '0000001000010000', '0000000100010000', '0101111100001100', 'Dassault Rafale', 'DassaultRafale.jpg', 'France'),
(19, 0, '0010000001010010', '0001100101011000', '0000001000010000', '0000000100010000', '0110010110000010', 'Dassault Mirage 2000', 'DassaultMirage2000.jpg', 'France'),
(20, 0, '0000100001001010', '0001100101011000', '0000001000010000', '0000000100010000', '0101110111110010', 'JF-17 Thunder', 'JF-17Thunder.jpg', 'Pakistan'),
(21, 0, '0000100001010010', '1010110100010110', '0000001000010000', '0000000100010000', '0101001011000100', 'Tu-160M Blackjack', 'Tu-160MBlackjack.jpg', 'Russia'),
(22, 0, '0010000001000110', '0001101010011000', '0000000100001000', '0000010000100100', '0110010110000010', 'Sukhoi Su-57', 'SukhoiSu-57.jpg', 'Russia'),
(23, 0, '0000100001000110', '0001101010011000', '0000001000010000', '0000010000100100', '0110110000001010', 'F-15C Eagle', 'F-15CEagle.jpg', 'United States'),
(24, 0, '0000010001010010', '0001100101011000', '0000001000010000', '0000000100010000', '0110100101000010', 'L-39 Albatros', 'L-39Albatros.jpg', 'Czechoslovakia'),
(25, 0, '0000100001010010', '0001100101011000', '0000000100001000', '0000000100010000', '0101111000000100', 'Tupolev Tu-22m', 'TupolevTu-22m.jpg', 'Russia'),
(26, 0, '0000100001001010', '0001100101011000', '0000001000010000', '0000000100010000', '0110010110000010', 'Yakovlev Yak-130', 'YakovlevYak-130.jpg', 'Russia'),
(27, 0, '0000100001000110', '0001101010011000', '0000000100001000', '0000010000100100', '0100001010011010', 'Shenyang J-31', 'ShenyangJ-31.jpg', 'China'),
(28, 0, '0000100001000110', '0001101010011000', '0000001000010000', '0000010000100100', '0101110101100010', 'Shenyang J-15', 'ShenyangJ-15.jpg', 'China'),
(29, 0, '0010000001001010', '0001101010011000', '0000000001000100', '1000000000100100', '0100001010011010', 'Xi\'an H-20', 'XianH-20.jpg', 'China'),
(30, 0, '0000100001001010', '0001100101011000', '0000001000010000', '0000000100010000', '0101111000000100', 'Xi\'an H-6K', 'XianH-6K.jpg', 'China'),
(31, 0, '0000100001000110', '0001101010011000', '0000001000010000', '0000000100010000', '0101110111110010', 'Xi\'an JH-7', 'XianJH-7.jpg', 'China'),
(32, 0, '0000100001001010', '0001101010011000', '0000001000010000', '0000000100010000', '0110110000001010', 'Hongdu JL-15', 'HongduJL-15.jpg', 'China'),
(33, 0, '0000100001010010', '0001100101011000', '0000001000010000', '0000000100010000', '0100111001011010', 'BAE System Hawk', 'BAESystemHawk.jpg', 'United Kingdom'),
(34, 0, '0000100001000110', '0000010111010000', '0000001000010000', '0000000100010000', '0101001011000100', 'Dassault', 'Dassault.jpg', 'France'),
(35, 0, '0000100001000110', '0000010111010000', '0000001000010000', '0000000100010000', '0110010110000010', 'Jaguar', 'Jaguar.jpg', 'France/United Kingdom'),
(36, 0, '0000100001000110', '0001101010011000', '0000001000010000', '0000000100010000', '0100001010011010', 'Panavia Tornado', 'PanaviaTornado.jpg', 'Italy, West Germany and United Kingdom'),
(37, 0, '0000100001010010', '0001100101011000', '0000000100001000', '0000000100010000', '0101001011000100', 'T-38B Talon', 'T-38BTalon.jpg', 'United States'),
(38, 0, '0000010001001010', '0011000101001100', '0000000100001000', '0000000100010000', '0110100101000010', 'T-37C Tweet', 'T-37CTweet.jpg', 'United States'),
(39, 0, '0000100001000110', '0001101010011000', '0000001000010000', '0000010000100100', '0101110111110010', 'McDonnell Douglas F/A-18D Hornet', 'McDonnellDouglas.jpg', 'United States'),
(40, 0, '0000100001000110', '1010110100010110', '0000000000100001', '0000001000100000', '0100111001011010', 'Boeing C-17 Globemaster III', 'BoeingC-17GlobemasterIII.jpg', 'United States'),
(41, 0, '0000010001000110', '0011010100001100', '0000000000100001', '0000100010000000', '0101000100110010', 'V-22 Osprey', 'V-22Osprey.jpg', 'United States'),
(42, 0, '0000100001010010', '1000010111010010', '0000000001000100', '1000000000100100', '0100001010011010', 'Northrop Grumman B-2 Spirit', 'NorthropGrummanB-2Spirit.jpg', 'United States'),
(43, 0, '0000100001010010', '0000010111010000', '0000000001000100', '0001000100000000', '0100001010011010', 'F-117', 'F-117.jpg', 'United States'),
(44, 0, '0000100001001010', '0000100010010011', '0000001000010000', '0000010000100100', '0101110111110010', 'F-18', 'F-18.jpg', 'United States'),
(45, 0, '0000010001010010', '0001010101101000', '0000001000010000', '0000000100010000', '0101110111110010', 'EMB 314/A-29 Super Tucano', 'EMB314.jpg', 'Brazil'),
(46, 1, '0000100001000110', '1010110100010110', '0000000000100001', '0000000100010000', '0101001011000100', 'Antonov An-124', 'AntonovAn-124.jpg', 'Russia'),
(47, 1, '0000100001000110', '1010110100010110', '0000000000100001', '0000000100010000', '0101001011000100', 'Antonov An-225', 'AntonovAn-225.jpg', 'Russia'),
(48, 1, '0000100001010010', '0010110100010100', '0000000000100001', '0000000100010000', '0101001011000100', 'Airbus A300', 'AirbusA300.jpg', 'United Kingdom, France, and West Germany'),
(49, 1, '0000010001000110', '0011010100001100', '0000000000100001', '0000001000100000', '0101001011000100', 'ATR-72', 'ATR-72.jpg', 'France/Italy'),
(50, 1, '0000100001000110', '0011010100001100', '0000000000100001', '0000000100010000', '0101001011000100', 'CN-235', 'CN-235.jpg', 'Spain and Indonesia'),
(51, 1, '0000010001000110', '0011010100001100', '0000000000100001', '0000000100010000', '0101001011000100', 'CASA C-212', 'CASAC-212.jpg', 'Spain'),
(52, 1, '0000010001000110', '0011010100001100', '0000000000100001', '0000000100010000', '0101001011000100', 'N-219', 'N-219.jpg', 'Indonesia'),
(53, 1, '0000010001000110', '0011010100001100', '0000000000100001', '0000000100010000', '0101001011000100', 'N-250', 'N-250.jpg', 'Indonesia'),
(54, 1, '0000100001000110', '0011010100001100', '0000000000100001', '0000000100010000', '0101001011000100', 'N-245', 'N-245.jpg', 'Indonesia'),
(55, 1, '0000100001010010', '1010110100010110', '0000000000100001', '0000000100010000', '0101001011000100', 'Airbus A380', 'AirbusA380.jpg', 'France, Germany, Spain, and the United Kingdom'),
(56, 1, '0000100001010010', '1010110100010110', '0000000000100001', '0000000100010000', '0101001011000100', 'Airbus A340 600', 'AirbusA340-600.jpg', 'France'),
(57, 1, '0000100001010010', '1010110100010110', '0000000000100001', '0000000100010000', '0101001011000100', 'Boeing 747 400', 'Boeing747-400.jpg', 'United States'),
(58, 1, '0000100001010010', '0011010100001100', '0000000000100001', '0000000100010000', '0101001011000100', 'Embraer 190', 'Embraer190.jpg', 'Brazil'),
(59, 1, '0000100001010010', '0011010100001100', '0000000000100001', '0000000100010000', '0101001011000100', 'Tupolev Tu-204', 'TupolevTu-204.jpg', 'Russia'),
(60, 1, '0000010001010010', '0011010100001100', '0000000000100001', '0000000100010000', '0101001011000100', 'NAMC YS-11', 'NAMCYS-11.jpg', 'Japan'),
(61, 1, '0000100001010010', '1010110100010100', '0000000000100001', '0000000100010000', '0101001011000100', 'DC-10', 'DC-10.jpg', 'United States'),
(62, 1, '0000100001010010', '0000111010110000', '0000000000100001', '0000001000100000', '0101001011000100', 'DC-93', 'DC-93.jpg', 'United States'),
(63, 1, '0000100001010010', '1010110100010100', '0000000000100001', '0000000100010000', '0101001011000100', 'MD-11', 'MD-11.jpg', 'United States'),
(64, 1, '0000100001010010', '0000111010110000', '0000000000100001', '0000001000100000', '0101001011000100', 'MD-82', 'MD-82.jpg', 'United States'),
(65, 1, '0000100001010010', '0001011010101000', '0000000000100001', '0000001000100000', '0101001011000100', 'Fokker F28', 'FokkerF28.jpg', 'Netherlands'),
(66, 1, '0000010001000110', '0011010100001100', '0000000000100001', '0000000100010000', '0101001011000100', 'Fokker F50', 'FokkerF50.jpg', 'Netherlands'),
(67, 1, '0000010001010010', '0011010100001100', '0000000000100001', '0000000100010000', '0101001011000100', 'Hawker Siddley HS 748', 'HawkerSiddleyHS-748.jpg', 'United Kingdom'),
(68, 1, '0000100001010010', '0000111010110000', '0000000000100001', '0000001000100000', '0101001011000100', 'Hawker 400', 'Hawker400.jpg', 'Japan/United States'),
(69, 1, '0000100001010010', '0000111010110000', '0000000000100001', '0000010001000000', '0101001011000100', 'Gulfstream G200', 'GulfstreamG200.jpg', 'Israel'),
(70, 1, '0000100001010010', '0000111010110000', '0000000000100001', '0000001000100000', '0101001011000100', 'Gulfstream 3', 'Gulfstream3.jpg', 'United States'),
(71, 1, '0000100001010010', '1000111010110010', '0000000000100001', '0000001000100000', '0101001011000100', 'Vickers VC-10', 'VickersVC-10.jpg', 'United Kingdom'),
(72, 1, '0000100001010010', '1000111010110000', '0000000000100001', '0000010001000000', '0101001011000100', 'Dassault Falcon 900', 'DassaultFalcon900.jpg', 'France'),
(73, 1, '0000100001010010', '0000111010110000', '0000000000100001', '0000010001000000', '0101001011000100', 'Falcon 2000', 'Falcon2000.jpg', 'France'),
(74, 1, '0000010001000110', '0011010100001100', '0000000000100001', '0000001000100000', '0101001011000100', 'DHC-8', 'DHC-8.jpg', 'Canada'),
(75, 1, '0000100001010010', '1010110100010110', '0000000000100001', '0000000100010000', '0101001011000100', 'Boeing 707', 'Boeing707.jpg', 'United States'),
(76, 1, '0000100001010010', '0010110100010100', '0000000000100001', '0000000100010000', '0101001011000100', 'Boeing 737 Classic', 'Boeing737Classic.jpg', 'United States'),
(77, 1, '0000010001000110', '0011010100001100', '0000000000100001', '0000001000100000', '0101001011000100', 'DHC-6', 'DHC-6.jpg', 'Canada'),
(78, 1, '0000010001010010', '0011010100001100', '0000000000100001', '0000000100010000', '0110000011001010', 'Douglas DC-3', 'DouglasDC-3.jpg', 'United States'),
(79, 1, '0000100001010010', '1010110100010100', '0000000000100001', '0000000100010000', '0101001011000100', 'McDonnell Douglas DC-10', 'McDonnellDouglasDC-10.jpg', 'United States'),
(80, 1, '0000100001010010', '0010110100010100', '0000000000100001', '0000000100010000', '0101001011000100', 'McDonnell Douglas MD-82', 'McDonnellDouglasMD-82.jpg', 'United States'),
(81, 2, '0100001000100001', '0000011101100011', '0000000010001000', '0010001000000000', '1000111010011010', 'AH-64 Apache Longbow', 'AH-64ApacheLongbow.jpg', 'United States'),
(82, 2, '0100001000100001', '0000001011100001', '0000000010001000', '0010001000000000', '1010010101000010', 'AS32 Super Puma', 'AS32SuperPuma.jpg', 'France'),
(83, 2, '0100001000100001', '0000001011100001', '0000000010001000', '0010001000000000', '0101000100110010', 'AW101 Merlin', 'AW101Merlin.jpg', 'United Kingdom/Italy'),
(84, 2, '0100001000100001', '0000001011100001', '0000000010001000', '0010001000000000', '1010110011001010', 'AW109 Power', 'AW109Power.jpg', 'Italy'),
(85, 2, '0100001000100001', '0000011101100011', '0000000010001000', '0010001000000000', '1010000000001010', 'A129 Mangusta', 'A129Mangusta.jpg', 'Italy'),
(86, 2, '0100001000100001', '0000110101110000', '0000000010001000', '0000011010000001', '1010111011000010', 'Chinook CH-47F', 'ChinookCH-47F.jpg', 'United States'),
(87, 2, '0100001000100001', '0000001011100001', '0000000010001000', '0010001000000000', '1010100110000010', 'Sikorsky S-70A', 'SikorskyS-70A.jpg', 'United States'),
(88, 2, '0100001000100001', '0000011101100011', '0000000010001000', '0000000100010000', '0110010110000010', 'Kamov KA-50 Black Shark', 'KamovKA-50BlackShark.jpg', 'Russia'),
(89, 2, '0100001000100001', '0000011101100011', '0000000010001000', '0000000100010000', '0110010110000010', 'Kamov KA-52 Alligator', 'KamovKA-52Alligator.jpg', 'Russia'),
(90, 2, '0100001000100001', '0000011001100011', '0000000010001000', '0010001000000000', '1010010101000010', 'NH90', 'NH90.jpg', 'France and Germany '),
(91, 2, '0100001000100001', '0000011001100011', '0000000010001000', '0010001000000000', '0101001011000100', 'Sea King S-61', 'SeaKingS-61.jpg', 'United States'),
(92, 2, '0100001000100001', '0000011001100011', '0000000010001000', '0010001000000000', '1001111011000100', 'Sikorsky S-76', 'SikorskyS-76.jpg', 'United States'),
(93, 2, '0100001000100001', '0000001011100001', '0000000010001000', '0010001000000000', '1110100101001010', 'Bell UH-1 Iroquois', 'BellUH-1Iroquois.jpg', 'United States'),
(94, 2, '0100001000100001', '0000001011100001', '0000000010001000', '0010001000000000', '1101110111111010', 'Bell AH-1W Super Cobra', 'BellAH-1WSuperCobra.jpg', 'United States'),
(95, 2, '0100001000100001', '0000001011100001', '0000000010001000', '0010001000000000', '1010110011001010', 'Sikorsky HH-60P Pave Hawk', 'SikorskyHH-60PPaveHawk.jpg', 'United States'),
(96, 2, '0100001000100001', '0000001011100001', '0000000010001000', '0010001000000000', '1000001001011010', 'Sikorsky UH-60M Black Hawk', 'SikorskyUH-60MBlackHawk.jpg', 'United States'),
(97, 2, '0100001000100001', '0000011101100011', '0000000010001000', '0000000100010000', '0110010110000010', 'KA-52M', 'KA-52M.jpg', 'United States'),
(98, 2, '0100001000100001', '0000001011100001', '0000000010001000', '0010001000000000', '1100111001010010', 'UH-72A Lakota', 'UH-72ALakota.jpg', 'Russian'),
(99, 2, '0100001000100001', '0000110101110000', '0000000010001000', '0000011010000001', '1000000101000010', 'Yakovlev Yak-24U', 'YakovlevYak-24U.jpg', 'Russia'),
(100, 2, '0100001000100001', '0000001011100001', '0000000010001000', '0010001000000000', '0110100101000010', 'PZL-Swidnik Mi-2', 'PZL-SwidnikMi-2.jpg', 'Poland'),
(101, 2, '0100001000100001', '0000001011100001', '0000000010001000', '0010001000000000', '1110010110001010', 'Bell AH-1S Cobra', 'BellAH-1SCobra.jpg', 'United States'),
(102, 2, '0100001000100001', '0000001011100001', '0000000010001000', '0010001000000000', '0110010110000010', 'Mil Mi 24P', 'MilMi24P.jpg', 'Russia'),
(103, 2, '0100001000100001', '0000110101110000', '0000000010001000', '0000011010000001', '1010111011000010', 'Boeing CH-47D Chinook', 'BoeingCH-47DChinook.jpg', 'United States'),
(104, 2, '0100001000100001', '0000011101100011', '0000000010001000', '0010001000000000', '1010100110000010', 'Mil Mi 8MTV-2', 'MilMi8MTV-2.jpg', 'Russia'),
(105, 2, '0100001000100001', '0000011101100011', '0000000010001000', '0010001000000000', '1000001001011010', 'Sikorsky UH-60A Black Hawk', 'SikorskyUH-60ABlackHawk.jpg', 'United States'),
(106, 2, '0100001000100001', '0000110101110000', '0000000010001000', '0000011010000001', '0110001011000010', 'Boeing CH-47F Chinook', 'BoeingCH-47FChinook.jpg', 'United States'),
(107, 2, '0100001000100001', '0000001011100001', '0000000010001000', '0010001000000000', '0110100101000010', 'Eurocopter AS-532U2 Cougar Mk2', 'EurocopterAS-532U2CougarMk2.jpg', 'France'),
(108, 2, '0100001000100001', '0000011101100011', '0000000010001000', '0010001000000000', '1010010101000010', 'Westland WS-61 Sea King Mk48', 'WestlandWS-61SeaKingMk48.jpg', 'United Kingdom'),
(109, 2, '0100001000100001', '0000011101100011', '0000000010001000', '0010001000000000', '1000111010011010', 'Westland WAH-64D Longbow Apache AH1', 'WestlandWAH-64DLongbowApacheAH1.jpg', 'United States / United Kingdom'),
(110, 2, '0100001000100001', '0000001011100001', '0000000010001000', '0010001000000000', '1001110100110010', 'Sikorsky S-70C(M)-2 Thunderhawk', 'SikorskyS-70CM-2Thunderhawk.jpg', 'Taiwan'),
(111, 2, '0100001000100001', '0000001011100001', '0000000010001000', '0010001000000000', '1000000101000010', 'Agusta A-109CM', 'AgustaA-109CM.jpg', 'Italy'),
(112, 2, '0100001000100001', '0000011101100011', '0000000010001000', '0010001000000000', '1100110101001010', 'Bell UH-1H Huey II', 'BellUH-1HHueyII.jpg', 'Argentina'),
(113, 2, '0100001000100001', '0000001011100001', '0000000010001000', '0010001000000000', '1010010101000010', 'Mil Mi-8MT', 'Mil Mi-8MT.jpg', 'Russia'),
(114, 2, '0100001000100001', '0000001011100001', '0000000010001000', '0010001000000000', '1000000101000010', 'Agusta HH-3F', 'AgustaHH-3F.jpg', 'Italy'),
(115, 2, '0100001000100001', '0000001011100001', '0000000010001000', '0010001000000000', '1010110011001010', 'AgustaWestland HH-139A', 'AgustaWestlandHH-139A.jpg', 'Italy'),
(116, 2, '0100001000100001', '0000011101100011', '0000000010001000', '0010001000000000', '1110100101001010', 'Westland WG-13 Lynx AH7', 'WestlandWG-13LynxAH7.jpg', 'United Kingdom'),
(117, 2, '0100001000100001', '0000011101100011', '0000000010001000', '0010001000000000', '1001110100110010', 'Sikorsky CH-53E Super Stallion', 'SikorskyCH-53ESuperStallion.jpg', 'United States'),
(118, 2, '0100001000100001', '0000011101100011', '0000000010001000', '0010001000000000', '1101000110101010', 'Agusta AB-47J Ranger', 'AgustaAB-47JRanger.jpg', 'United States'),
(119, 2, '0100001000100001', '0000001011100001', '0000000010001000', '0010001000000000', '0110100101000010', 'Aerospatiale TP-1 Oryx M', 'AerospatialeTP-1OryxM.jpg', 'South Africa'),
(120, 2, '0100001000100001', '0000001011100001', '0000000010001000', '0010001000000000', '1010010101000010', 'Kazan Ansat-U', 'KazanAnsat-U.jpg', 'Russia'),
(121, 3, '0100001000100001', '0000010110100011', '0000000010001000', '0010001000000000', '1100111001010010', 'Eurocopter EC-135\r\n', 'EurocopterEC-135.jpg', 'France and Germany'),
(122, 3, '0100001000100001', '0000000100100001', '0000000010001000', '0010001000000000', '0101001011000100', 'Bell 430', 'Bell430.jpg', 'United States'),
(123, 3, '0100001000100001', '0000000100100001', '0000000010001000', '0010001000000000', '1100111001010010', 'Agusta-Bell 412 Grifone', 'Agusta-Bell412Grifone.jpg', 'United States/Canada'),
(124, 3, '0100001000100001', '0000000100100001', '0000000010001000', '0010001000000000', '1110000110000010', 'Bell 230', 'Bell230.jpg', 'United States'),
(125, 3, '0100001000100001', '0000001011100001', '0000000010001000', '0010001000000000', '0001111001001010', 'Bell JetRanger', 'BellJetRanger.jpg', 'United States'),
(126, 3, '0100001000100001', '0000000100100001', '0000000010001000', '0010001000000000', '0001111001001010', 'Bell Supertransport', 'BellSupertransport.jpg', 'United States'),
(127, 3, '0100001000100001', '0000001011100001', '0000000010001000', '0010001000000000', '1100111001010010', 'Robinson R44', 'RobinsonR44.jpg', 'United States'),
(128, 3, '0100001000100001', '0000000100100001', '0000000010001000', '0010001000000000', '0101001011000100', 'Sikorsky S-76', 'SikorskyS-76.jpg', 'United States'),
(129, 3, '0100001000100001', '0000011101100011', '0000000010001000', '0010001000000000', '0001111001001010', 'Enstrom F-28', 'EnstromF-28.jpg', 'United States'),
(130, 3, '0100001000100001', '0000001011100001', '0000000010001000', '0010001000000000', '1100111001010010', 'Eurocopter AS350', 'EurocopterAS350.jpg', 'France'),
(131, 3, '0100001000100001', '0000001011100001', '0000000010001000', '0010001000000000', '0001111001001010', 'Eurocopter EC120 Colibri', 'EurocopterEC120Colibri.jpg', 'France and Australia'),
(132, 3, '0100001000100001', '0000000100100001', '0000000010001000', '0010001000000000', '0001111001001010', 'NBK 117', 'NBK117.jpg', 'Germany and Japan'),
(133, 3, '0100001000100001', '0000001011100001', '0000000010001000', '0010001000000000', '0001111001001010', 'Bell 212', 'Bell212.jpg', 'United States/Canada'),
(134, 3, '0100001000100001', '0000001011100001', '0000000010001000', '0010001000000000', '0001111001001010', 'Bell 407', 'Bell407.jpg', 'United States/Canada'),
(135, 3, '0100001000100001', '0000000100100001', '0000000010001000', '0010001000000000', '0100111001011010', 'Agusta A109', 'AgustaA109.jpg', 'Italy'),
(136, 3, '0100001000100001', '0000000100100001', '0000000010001000', '0000010000100100', '0110000110001010', 'Eurocopter EC145', 'EurocopterEC145.jpg', 'France'),
(137, 3, '0100001000100001', '0000001011100001', '0000000010001000', '0010001000000000', '0110000110001010', 'Eurocopter EC130', 'EurocopterEC130.jpg', 'France'),
(138, 3, '0100001000100001', '0000001011100001', '0000000010001000', '0010001000000000', '1100111001010010', 'Hughes 369', 'Hughes369.jpg', 'United States'),
(139, 3, '0100001000100001', '0000011101100011', '0000000010001000', '0010001000000000', '1100111001010010', 'Mil Mi-34 Hermit', 'MilMi-34Hermit.jpg', 'Russia'),
(140, 3, '0100001000100001', '0000000100100001', '0000000010001000', '0000010000100100', '0001111001001010', 'MD Explorer', 'MDExplorer.jpg', 'United States'),
(141, 3, '0100001000100001', '0000000100100001', '0000000010001000', '0010001000000000', '1101001011001100', 'Ansat', 'Ansat.jpg', 'Russia'),
(142, 3, '0100001000100001', '0000000100100001', '0000000010001000', '0010001000000000', '1101001011001100', 'Bell 412', 'Bell412.jpg', 'United States/Canada'),
(143, 3, '0100001000100001', '0000000100100001', '0000000010001000', '0010001000000000', '1110000110000010', 'Sikorsky S-92', 'SikorskyS-92.jpg', 'United States'),
(144, 3, '0100001000100001', '0000010110100011', '0000000010001000', '0010001000000000', '0101001011000100', 'Agusta W169', 'AgustaW169.jpg', 'Italy'),
(145, 3, '0100001000100001', '0000010110100011', '0000000010001000', '0010001000000000', '1101000110101010', 'Aeropastiale AS-355', 'AeropastialeAS-355.jpg', 'France'),
(146, 3, '0100001000100001', '0000000100100001', '0000000010001000', '0010001000000000', '1001111011000100', 'Airbus Helicopter H225', 'AirbusHelicopterH225.jpg', 'France'),
(147, 3, '0100001000100001', '0000001011100001', '0000000010001000', '0010001000000000', '0001111001001010', 'Airbus Helicopter EC-120 Colibri', 'AirbusHelicopterEC-120Colibri.jpg', 'France and Australia'),
(148, 3, '0100001000100001', '0000000100100001', '0000000010001000', '0010001000000000', '0101001011000100', 'Airbus Helicopter H175', 'AirbusHelicopterH175.jpg', 'China'),
(149, 3, '0100001000100001', '1000000100100000', '0000000010001000', '0010001000000000', '1001111001000010', 'Avicopter AC313', 'AvicopterAC313.jpg', 'China'),
(150, 3, '0100001000100001', '0000011101100011', '0000000010001000', '0010001000000000', '1101000110101010', 'Cicare CH-7', 'CicareCH-7.jpg', 'Argentina/Italy'),
(151, 3, '0100001000100001', '0000011101100011', '0000000010001000', '0010001000000000', '1101000110101010', 'CH-77 Ranabot', 'CH-77Ranabot.jpg', 'Italy'),
(152, 3, '0100001000100001', '0000011101100011', '0000000010001000', '0010001000000000', '1101001011001100', 'Guimbal Cabri G2', 'GuimbalCabriG2.jpg', 'France'),
(153, 3, '0100001000100001', '0000011101100011', '0000000010001000', '0010001000000000', '1100111001010010', 'Sikorsky S-434', 'SikorskyS-434.jpg', 'United States'),
(154, 3, '0100001000100001', '0000011101100011', '0000000010001000', '0010001000000000', '1101001011001100', 'Schweizer 330', 'Schweizer330.jpg', 'United States'),
(155, 3, '0100001000100001', '0000000100100001', '0000000010001000', '0010001000000000', '1101001011001100', 'Airbus Helicopter H135 Helionix', 'AirbusHelicopterH135Helionix.jpg', 'France');

-- --------------------------------------------------------

--
-- Table structure for table `warna_pesawat`
--

CREATE TABLE `warna_pesawat` (
  `id` int(11) NOT NULL,
  `features` varchar(255) NOT NULL,
  `binary_fusi` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `warna_pesawat`
--

INSERT INTO `warna_pesawat` (`id`, `features`, `binary_fusi`, `image`) VALUES
(1, 'loreng', '0011100000000000', 'loreng.jpg'),
(2, 'Light Grey', '0000000001110000', 'light_grey.jpg'),
(3, 'Dark Grey', '0011000110001000', 'dark_grey.jpg'),
(4, 'White', '0000001110000110', 'white.jpg'),
(5, 'Black', '0001111100011000', 'black.jpg'),
(6, 'Dark Green', '0001110000000000', 'dark_green.jpg'),
(7, 'Yellow', '0000000011100000', 'yellow.jpg'),
(8, 'Sand', '0011001110000000', 'sand.jpg'),
(9, 'Red', '1100111100000000', 'red.jpg'),
(10, 'Dark Blue', '1011000011000000', 'dark_blue.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `badan_pesawat`
--
ALTER TABLE `badan_pesawat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bentuk_ekor`
--
ALTER TABLE `bentuk_ekor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dataset`
--
ALTER TABLE `dataset`
  ADD PRIMARY KEY (`id`),
  ADD KEY `badan_pesawat` (`badan_pesawat`),
  ADD KEY `jenis_ekor` (`jenis_ekor`),
  ADD KEY `jenis_mesin` (`jenis_mesin`),
  ADD KEY `jenis_sayap` (`jenis_sayap`),
  ADD KEY `jumlah_mesin` (`jumlah_mesin`),
  ADD KEY `jumlah_sayap` (`jumlah_sayap`),
  ADD KEY `persenjataan` (`persenjataan`),
  ADD KEY `warna` (`warna`);

--
-- Indexes for table `dataset_aircraft`
--
ALTER TABLE `dataset_aircraft`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jenis_mesin`
--
ALTER TABLE `jenis_mesin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jenis_sayap`
--
ALTER TABLE `jenis_sayap`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jumlah_mesin`
--
ALTER TABLE `jumlah_mesin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jumlah_sayap`
--
ALTER TABLE `jumlah_sayap`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `persenjataan`
--
ALTER TABLE `persenjataan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `separate_fusi_dataset`
--
ALTER TABLE `separate_fusi_dataset`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `warna_pesawat`
--
ALTER TABLE `warna_pesawat`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `badan_pesawat`
--
ALTER TABLE `badan_pesawat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `bentuk_ekor`
--
ALTER TABLE `bentuk_ekor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `dataset`
--
ALTER TABLE `dataset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT for table `dataset_aircraft`
--
ALTER TABLE `dataset_aircraft`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT for table `jenis_mesin`
--
ALTER TABLE `jenis_mesin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `jenis_sayap`
--
ALTER TABLE `jenis_sayap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jumlah_mesin`
--
ALTER TABLE `jumlah_mesin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `jumlah_sayap`
--
ALTER TABLE `jumlah_sayap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `persenjataan`
--
ALTER TABLE `persenjataan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `separate_fusi_dataset`
--
ALTER TABLE `separate_fusi_dataset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=311;

--
-- AUTO_INCREMENT for table `warna_pesawat`
--
ALTER TABLE `warna_pesawat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dataset`
--
ALTER TABLE `dataset`
  ADD CONSTRAINT `dataset_ibfk_11` FOREIGN KEY (`persenjataan`) REFERENCES `persenjataan` (`id`),
  ADD CONSTRAINT `dataset_ibfk_13` FOREIGN KEY (`warna`) REFERENCES `warna_pesawat` (`id`),
  ADD CONSTRAINT `dataset_ibfk_2` FOREIGN KEY (`badan_pesawat`) REFERENCES `badan_pesawat` (`id`),
  ADD CONSTRAINT `dataset_ibfk_4` FOREIGN KEY (`jenis_ekor`) REFERENCES `bentuk_ekor` (`id`),
  ADD CONSTRAINT `dataset_ibfk_5` FOREIGN KEY (`jenis_mesin`) REFERENCES `jenis_mesin` (`id`),
  ADD CONSTRAINT `dataset_ibfk_6` FOREIGN KEY (`jenis_sayap`) REFERENCES `jenis_sayap` (`id`),
  ADD CONSTRAINT `dataset_ibfk_7` FOREIGN KEY (`jumlah_mesin`) REFERENCES `jumlah_mesin` (`id`),
  ADD CONSTRAINT `dataset_ibfk_8` FOREIGN KEY (`jumlah_sayap`) REFERENCES `jumlah_sayap` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
