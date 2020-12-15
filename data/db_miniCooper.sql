-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 15, 2020 at 11:21 PM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_miniCooper`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_models`
--

CREATE TABLE `tbl_models` (
  `id` int(11) NOT NULL,
  `title` varchar(20) NOT NULL,
  `price` varchar(20) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `img` varchar(50) NOT NULL,
  `img2` varchar(20) NOT NULL,
  `video` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_models`
--

INSERT INTO `tbl_models` (`id`, `title`, `price`, `description`, `img`, `img2`, `video`) VALUES
(1, 'Mini 3 Door', 'From $23,490', 'It’s the original icon, reborn and reimagined for modern motoring. The MINI 3 door builds on 60+ years of timeless MINI design, but comes equipped with a whole host of 21st century tech features and practical touches to cater to your every need. Distinct by design and urban by nature, it’s made to stand out as you explore new corners of your city. And with its ultra-nimble go-kart feel, you’re sure to find something exciting around every turn.', '1.jpg', '2-1.jpg', '1.mp4'),
(2, 'Mini 5 Door', 'From $24,790', 'It’s the iconic MINI hatch, with two extra doors and a bit more room for passengers and cargo. Featuring our hallmark wheels-pushed stance and a low centre of gravity, the MINI 5 door is designed to deliver the same level of corner-carving agility as its 3-door brother. But thanks to a surprisingly spacious interior equipped with added legroom and up to 941 Litres of cargo space, it’s as functional to own as it is fun to drive.', '2.jpg', '2-2.jpg', '2.mp4'),
(3, 'Mini Convertible', 'From $30,090', 'Open top. Open road. Open-ended possibilities. The MINI Convertible brings together three generations of MINI design, but boasts a personality that is all its own. With comfortable seating for four and a 3-in-1 Soft Top that can function as a sunroof or a full-fledged drop-top, it’s always ready for your next open-air adventure. And with a lively Twin Power Turbo engine capable of hitting 100 km/h in a blistering 6.6 seconds (in the John Cooper Works variant), it’s sure to offer a few hair-raising thrills along the way.', '3.jpg', '2-3.jpg', '3.mp4'),
(4, 'Mini Clubman', 'From $29,990', 'Allow us to introduce you to the most sophisticated MINI ever made. Superbly crafted with sleek exterior contours, refined cockpit accents, and quality materials throughout, the MINI Clubman is designed to make an impression everywhere it goes. And with a generously sized interior plus ALL4 All-Wheel Drive as standard, it boasts as much practicality as it does personality. Get in, get comfortable, and let the MINI Clubman open more doors to new experiences.', '4.jpg', '2-4.jpg', '4.mp4'),
(5, 'Mini Countryman', 'From $32,990', 'The new MINI Countryman ALL4 is as daring and adventure minded as you are. Whether you prefer playing in the city or escaping it at the first opportunity, you’ll have the freedom and flexibility to go wherever your wandering mind takes you. Time to discover the new MINI Countryman and start writing your next adventure.', '5.jpg', '2-5.jpg', '5.mp4');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_models`
--
ALTER TABLE `tbl_models`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_models`
--
ALTER TABLE `tbl_models`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
