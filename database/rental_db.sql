-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2021 at 08:24 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rental_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `house`
--

CREATE TABLE `house` (
  `id` int(12) NOT NULL,
  `address` varchar(500) NOT NULL,
  `phNumber` varchar(15) NOT NULL,
  `details` varchar(500) NOT NULL,
  `location_id` int(12) NOT NULL COMMENT '1=Slim River, 2=Behrang, 3=Tanjung Malim'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `house`
--

INSERT INTO `house` (`id`, `address`, `phNumber`, `details`, `location_id`) VALUES
(1, 'Behrang 2020', '012-4628731', '3 bilik tidur,2 bilik air,Peti ais ,Mesin basuh, dapur masak, harga sewa RM 750, deposit sebulan + (api dan air RM200)', 2),
(2, 'Taman Wangsa Behrang', '017-7070143', '4 bilik dengan penghawa dingin, katil,almari, dressing table, 3 bilik air dengan water heater, Ada meja makan 6 orang, Ada peti sejuk, Ada mesin basuh, Ada dapur dengan set penuh, Full set sofa ada, Tv saiz 44 inci dengan chanel Njoi, Ada Unifi, Boleh memuatkan 11 orang.', 2),
(3, 'Behrang 2020', '019–6994603 ', 'Bilik single - 1 orang : rm250, Kipas, private toilet,katil beserta tilam¸meja study, rak baju,  mesin basuh, tv, peti sejuk,  dapur dan gas memasak, rice cooker, water heater & lain2 Sewa termasuk bil air dan elektrik. Deposit 1+1 sahaja!!', 2),
(4, 'No 3, Jalan Wangsa Behrang 2, Taman Wangsa Behrang.', '010–5603923, 01', 'Mesin basuh, Perkakas dapur & dapur, Peti ais, TV, Rak TV, Kipas siling, Lampu, 4 bilik + 3 bilik air, Rumah fully grilled, Parking untuk 2 biji kereta, deposit - 2 plus 1 (harga sewa bulanan semasa), maksima 10 orang sahaja', 2),
(5, 'No 30, Jalan Jati 2, Taman Behrang Jati, 35950 Behrang', '012-5757454', '3 bilik, 2 bilik air, almari,katil,mesin basuh,tv,astro', 2),
(6, 'Behrang Bitara', '019–3397784', 'Bilik biasa  3 ,Bilik master  1(6 orang),Tandas setiap bilik,Katil double decker,Locker,Television,Ruang tamu,Meja makan,Peti ais,Mesin  basuh,Dapur gas', 2),
(7, 'No Klan Halt 3, 35950, Behrang Stesen, Perak', '012–6918483 ', 'tv,sofa,meja makan 2,peti ais,mesin basuh,Tandas 3', 2),
(8, 'Felda Sungai, Behrang ', '017–5126124 ', 'dapur gas,  meja mkn,  almari,  bilik ad 3 / kenderaan motor dan kereta', 2),
(9, 'Taman Bestari ', '011–64426916 ', 'Meja Makan, Almari, Tv , Peri Sejuk , Katil & Tilam, Ampaian , Kelengkapan Dapur', 2),
(10, '', '019–3682791 ', 'RM 1 500 per month,3 Bilik Tidur , 2 bilik air ,Partially Furnished.', 2),
(11, 'Taman Behrang BItara', '018-9494686', 'Semua bilik bertingkap & ada langsir , Katil Set Dengan Tilam, Almari Baju, Kipas, Dapur Memasak, Peti Sejuk, Mesin Basuh,  Heater Shower', 2),
(12, 'Taman Behrang Stesen', '011–23208649', '3 Bilik , 2 Bilik air, Meja dan kerusi makan, peti ais , kelengkapan memasak', 2),
(13, 'Taman Behrang Residence', '013–6588041 ', 'Bilik 3 , Bilik 2 air, kerusi dan meja makan, gas , peti ais, mesin basuh', 2),
(14, 'Taman Behrang Residence', '018–3602984', '3 bilik, 2 bilik air, peti ais, Kelengkapan dapur, Tv', 2),
(15, 'Taman Bestari', '017-7529773', 'Peti ais, Mesin Basuh, Kelengkapan memasak, Tv , Wifi , Katil, tilam, penyidai pakaian', 1),
(16, 'Taman Behrang Residence', '013–77912801', 'Rumah fully furnished. Tinggal bawa beg je. Siap cadar, selimut, bantal.', 1),
(17, 'Felda Sungai behrang', '013–2573979', '3 Bilik , 2 Bilik air, Dapur, Peti Ais, Mesin Basuh ,Tv', 1),
(18, 'Felda Sungai Behrang', '011-28188913', '2 bilik, 1 Bilik air,  pendingin hawa,Kipas, Jubin sampai ke luar, double pintu grill , 1 car park + parking bebas, tangga access dari  depan dan belakang', 3),
(19, 'Taman Behrang Stesen', '017-6290192', '3bilik 2bilik air, Meja dan kerusi makan, Katil, Almari', 3),
(20, 'Felda Sungai Behrang', '014–5343097', '3 Bilik, 2 bilik Air, Kerusi dan meja makan , Almari , Katil, Tv', 3);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(12) NOT NULL,
  `type_id` int(12) NOT NULL COMMENT '1=House Rental, 2=Vehicle Rental',
  `rental_id` int(12) NOT NULL COMMENT 'Vehicle / House id',
  `image_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `type_id`, `rental_id`, `image_name`) VALUES
(1, 1, 1, 'behrang_1_img.jpg'),
(2, 1, 1, 'behrang_1_img2.jpg'),
(3, 1, 1, 'behrang_1_img3.jpg'),
(4, 1, 2, 'behrang_2_img.jpg'),
(5, 1, 2, 'behrang_2_img2.jpg'),
(6, 1, 2, 'behrang_2_img3.jpg'),
(7, 1, 2, 'behrang_2_img4.jpg'),
(8, 1, 3, 'behrang_3_img.jpg'),
(9, 1, 3, 'behrang_3_img2.jpg'),
(10, 1, 3, 'behrang_3_img3.jpg'),
(11, 1, 3, 'behrang_3_img4.jpg'),
(12, 1, 4, 'behrang_4_img.jpg'),
(13, 1, 4, 'behrang_4_img2.jpg'),
(14, 1, 4, 'behrang_4_img3.jpg'),
(15, 1, 4, 'behrang_4_img4.jpg'),
(16, 1, 5, 'behrang_5_img.jpg'),
(17, 1, 6, 'behrang_6_img.jpg'),
(18, 1, 6, 'behrang_6_img2.jpg'),
(19, 1, 6, 'behrang_6_img3.jpg'),
(20, 1, 6, 'behrang_6_img4.jpg'),
(21, 1, 7, 'behrang_7_img.jpg'),
(22, 1, 7, 'behrang_7_img2.jpg'),
(23, 1, 7, 'behrang_7_img3.jpg'),
(24, 1, 8, 'behrang_8_img.jpg'),
(25, 1, 8, 'behrang_8_img2.jpg'),
(26, 1, 8, 'behrang_8_img3.jpg'),
(27, 1, 8, 'behrang_8_img4.jpg'),
(28, 1, 9, 'behrang_9_img.jpg'),
(29, 1, 9, 'behrang_9_img2.jpg'),
(30, 1, 9, 'behrang_9_img3.jpg'),
(31, 1, 9, 'behrang_9_img4.jpg'),
(32, 1, 10, 'behrang_10_img.jpg'),
(33, 1, 10, 'behrang_10_img2.jpg'),
(34, 1, 10, 'behrang_10_img3.jpg'),
(35, 1, 11, 'behrang_11_img.jpg'),
(36, 1, 11, 'behrang_11_img2.jpg'),
(37, 1, 11, 'behrang_11_img3.jpg'),
(38, 1, 12, 'behrang_12_img.jpg'),
(39, 1, 12, 'behrang_12_img2.jpg'),
(40, 1, 12, 'behrang_12_img3.jpg'),
(41, 1, 12, 'behrang_12_img4.jpg'),
(42, 1, 13, 'behrang_13_img.jpg'),
(43, 1, 13, 'behrang_13_img2.jpg'),
(44, 1, 13, 'behrang_13_img3.jpg'),
(45, 1, 13, 'behrang_13_img4.jpg'),
(46, 1, 14, 'behrang_14_img.jpg'),
(47, 1, 14, 'behrang_14_img2.jpg'),
(48, 1, 14, 'behrang_14_img3.jpg'),
(49, 1, 14, 'behrang_14_img4.jpg'),
(50, 1, 15, 'slimriver_1_img.jpg'),
(51, 1, 15, 'slimriver_1_img2.jpg'),
(52, 1, 15, 'slimriver_1_img3.jpg'),
(53, 1, 15, 'slimriver_1_img4.jpg'),
(54, 1, 16, 'slimriver_2_img.jpg'),
(55, 1, 16, 'slimriver_2_img2.jpg'),
(56, 1, 16, 'slimriver_2_img3.jpg'),
(57, 1, 16, 'slimriver_2_img4.jpg'),
(58, 1, 17, 'slimriver_3_img.jpg'),
(59, 1, 17, 'slimriver_3_img2.jpg'),
(60, 1, 17, 'slimriver_3_img3.jpg'),
(61, 1, 17, 'slimriver_3_img4.jpg'),
(62, 1, 18, 'tgmalim_1_img.jpg'),
(63, 1, 18, 'tgmalim_1_img2.jpg'),
(64, 1, 18, 'tgmalim_1_img3.jpg'),
(65, 1, 19, 'tgmalim_2_img.jpg'),
(66, 1, 19, 'tgmalim_2_img2.jpg'),
(67, 1, 19, 'tgmalim_2_img3.jpg'),
(68, 1, 19, 'tgmalim_2_img4.jpg'),
(69, 1, 20, 'tgmalim_3_img.jpg'),
(70, 1, 20, 'tgmalim_3_img2.jpg'),
(71, 1, 20, 'tgmalim_3_img3.jpg'),
(72, 1, 20, 'tgmalim_3_img4.jpg'),
(110, 2, 1, 'TgMalim_Axia_1_img1.jpg'),
(111, 2, 1, 'TgMalim_Axia_1_img2.jpg'),
(112, 2, 1, 'TgMalim_Axia_1_img3.jpg'),
(113, 2, 1, 'TgMalim_Axia_1_img4.jpg'),
(114, 2, 2, 'Behrang_Bezza_2_img1.jpg'),
(115, 2, 2, 'Behrang_Bezza_2_img2.jpg'),
(116, 2, 3, 'TgMalin_Bezza_3_img1.jpg'),
(117, 2, 3, 'TgMalin_Bezza_3_img2.jpg'),
(118, 2, 3, 'TgMalin_Bezza_3_img3.jpg'),
(119, 2, 4, 'SlimRiver_Bezza_4_img1.jpg'),
(120, 2, 5, 'TgMalim_Saga_5_img1.jpg'),
(121, 2, 6, 'TgMalim_Saga_6_img1.jpg'),
(122, 2, 7, 'SlimRiver_Myvi_7_img1.jpg'),
(123, 2, 7, 'SlimRiver_Myvi_7_img2.jpg'),
(124, 2, 7, 'SlimRiver_Myvi_7_img3.jpg'),
(125, 2, 7, 'SlimRiver_Myvi_7_img4.jpg'),
(126, 2, 8, 'SlimRiver_Myvi_8_img1.jpg'),
(127, 2, 9, 'TgMalim_Myvi_9_img1.jpg'),
(128, 2, 10, 'SlimRiver_Myvi_10_img1.jpg'),
(129, 2, 11, 'SlimRiver_Myvi_11_img1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `id` int(12) NOT NULL,
  `locationName` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `locationName`) VALUES
(1, 'Slim River'),
(2, 'Behrang'),
(3, 'Tanjung Malim');

-- --------------------------------------------------------

--
-- Table structure for table `rentals`
--

CREATE TABLE `rentals` (
  `id` int(12) NOT NULL,
  `rental_id` int(12) NOT NULL COMMENT '1=House Rental, 2=Vehicle Rental',
  `location_id` int(12) NOT NULL COMMENT '1=Slim River, 2=Behrang, 3=Tanjung Malim',
  `variation_id` int(12) NOT NULL COMMENT '1=Myvi, 2=Axia, 3=Alza',
  `username` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phoneNum` varchar(15) NOT NULL,
  `address` varchar(500) NOT NULL COMMENT 'House / Vehicle Address'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `id` int(12) NOT NULL,
  `rentalType` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`id`, `rentalType`) VALUES
(1, 'House Rental'),
(2, 'Vehicle Rental');

-- --------------------------------------------------------

--
-- Table structure for table `userlevels`
--

CREATE TABLE `userlevels` (
  `level_id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userlevels`
--

INSERT INTO `userlevels` (`level_id`, `type`) VALUES
(1, 'Admin'),
(2, 'User');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(12) NOT NULL,
  `username` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(100) NOT NULL,
  `phoneNum` varchar(15) NOT NULL,
  `level_id` int(11) NOT NULL COMMENT '1= Admin, 2= User'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `variation`
--

CREATE TABLE `variation` (
  `id` int(12) NOT NULL,
  `varName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `variation`
--

INSERT INTO `variation` (`id`, `varName`) VALUES
(1, 'Myvi'),
(2, 'Axia'),
(3, 'Alza'),
(4, 'Bezza'),
(5, 'Saga');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `id` int(12) NOT NULL,
  `address` varchar(500) NOT NULL,
  `phNumber` varchar(15) NOT NULL,
  `details` varchar(500) NOT NULL,
  `variation_id` int(12) NOT NULL COMMENT '1=Myvi, 2=Axia, 3=Alza, 4=Bezza, 5=Saga'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`id`, `address`, `phNumber`, `details`, `variation_id`) VALUES
(1, 'hafizan Klezcar Tg Malim', '012–3176903', '5 jam = RM 50, 12 jam = RM 80, 1 hari = RM 120, 2 hari = RM 220, 3 hari = RM 330, 4 hari = RM 420, 5 hari = RM 500, 6 hari = RM 570, 7 hari = RM 650, Sebulan(30 hari) = RM 1800', 2),
(2, 'Bandar Behrang 2020', '019–3842606', '5 jam RM 45, 12 jam RM 75, 1 hari RM 120 (Terbuka kepada pelajar dan penduduk yg berhampiran sahaja Minimum sewaan bermula dari 5 jam dan keatas)', 4),
(3, 'Tanjung Malim', '011–28118822', 'RM 80 ( Ws untuk selanjutnya)', 4),
(4, 'WR Car Rental Slim River', '012-6576877', 'Ws Sahaja', 4),
(5, 'Kereta Sewa Tanjung Malim', '012–6770775', 'RM20 sebagai deposit. Sila hubungi saya.', 5),
(6, 'Kereta Sewa Murah Tg Malim', '012-2983751', '1 jam = RM 50', 5),
(7, 'Car Rental Slim River', '013-3215485', '1 hari = RM 100 (Weekdays), 1 hari = RM 120 ( Weekend), Booking / Deposit = RM 50', 1),
(8, 'WR Car Rental Slim River', '012-6576877', 'Ws sahaja', 1),
(9, 'Kereta Sewa Murah Tg Malim', '012-2983751', '1 jam = RM 50', 1),
(10, 'WR Car Rental Slim River', '012-6576877', 'Ws sahaja', 1),
(11, 'WR Car Rental Slim River', '012-6576877', 'Ws sahaja', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `house`
--
ALTER TABLE `house`
  ADD PRIMARY KEY (`id`),
  ADD KEY `test1` (`location_id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk1` (`type_id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rentals`
--
ALTER TABLE `rentals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlevels`
--
ALTER TABLE `userlevels`
  ADD PRIMARY KEY (`level_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk` (`level_id`);

--
-- Indexes for table `variation`
--
ALTER TABLE `variation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `test` (`variation_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `house`
--
ALTER TABLE `house`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rentals`
--
ALTER TABLE `rentals`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `variation`
--
ALTER TABLE `variation`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vehicle`
--
ALTER TABLE `vehicle`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `house`
--
ALTER TABLE `house`
  ADD CONSTRAINT `test1` FOREIGN KEY (`location_id`) REFERENCES `location` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `fk1` FOREIGN KEY (`type_id`) REFERENCES `rentaldb`.`type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk` FOREIGN KEY (`level_id`) REFERENCES `userlevels` (`level_id`);

--
-- Constraints for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD CONSTRAINT `test` FOREIGN KEY (`variation_id`) REFERENCES `variation` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
