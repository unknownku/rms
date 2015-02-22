-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 22, 2015 at 02:25 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `rms`
--
CREATE DATABASE IF NOT EXISTS `rms` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `rms`;

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE IF NOT EXISTS `applications` (
`app_id` int(11) NOT NULL,
  `app_fullname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `app_shortname` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `create_dttm` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_dttm` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE IF NOT EXISTS `booking` (
`bk_id` int(11) NOT NULL,
  `app_id` int(11) NOT NULL,
  `ur_id` int(11) NOT NULL,
  `rs_id` int(11) NOT NULL,
  `bk_task` int(11) NOT NULL,
  `bk_type` int(11) NOT NULL,
  `bk_manday` float NOT NULL,
  `bk_fte` float NOT NULL,
  `bk_status` int(11) NOT NULL,
  `bk_start_dt` date NOT NULL,
  `bk_end_dt` date NOT NULL,
  `create_dttm` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_dttm` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `booking_detail`
--

CREATE TABLE IF NOT EXISTS `booking_detail` (
`bk_detail_id` int(11) NOT NULL,
  `bk_id` int(11) NOT NULL,
  `rs_id` int(11) NOT NULL,
  `bk_detail_dt` date NOT NULL,
  `bk_detail_manhour` float NOT NULL,
  `bk_detail_fte` float NOT NULL,
  `create_dttm` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_dttm` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `delete_flag` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `holidays`
--

CREATE TABLE IF NOT EXISTS `holidays` (
`holiday_id` int(11) NOT NULL,
  `holiday_type` int(2) NOT NULL,
  `holiday_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `holiday_date` date NOT NULL,
  `create_dttm` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_dttm` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `holidays`
--

INSERT INTO `holidays` (`holiday_id`, `holiday_type`, `holiday_name`, `holiday_date`, `create_dttm`, `update_dttm`, `delete_flag`) VALUES
(1, 0, 'วันปีใหม่', '2014-01-01', '2015-02-22 18:00:52', '2015-02-22 18:00:52', 0),
(2, 0, 'วันมาฆบูชา', '2014-02-14', '2015-02-22 18:00:52', '2015-02-22 18:00:52', 0),
(3, 0, 'ชดเชยวันจักรี', '2014-04-07', '2015-02-22 18:00:52', '2015-02-22 18:00:52', 0),
(4, 0, 'วันสงกรานต์', '2014-04-14', '2015-02-22 18:00:52', '2015-02-22 18:00:52', 0),
(5, 0, 'วันสงกรานต์', '2014-04-15', '2015-02-22 18:00:52', '2015-02-22 18:00:52', 0),
(6, 0, 'วันแรงงานแห่งชาติ', '2014-05-01', '2015-02-22 18:00:52', '2015-02-22 18:00:52', 0),
(7, 0, 'วันฉัตรมงคล', '2014-05-05', '2015-02-22 18:00:52', '2015-02-22 18:00:52', 0),
(8, 0, 'วันวิสาขบูชา', '2014-05-13', '2015-02-22 18:00:52', '2015-02-22 18:00:52', 0),
(9, 0, 'วันหยุดภาคครึ่งปี', '2014-06-01', '2015-02-22 18:00:52', '2015-02-22 18:00:52', 0),
(10, 0, 'วันอาสาฬหบูชา', '2014-07-11', '2015-02-22 18:00:52', '2015-02-22 18:00:52', 0),
(11, 0, 'วันหยุดกรณีพิเศษ', '2014-08-11', '2015-02-22 18:00:52', '2015-02-22 18:00:52', 0),
(12, 0, 'วันแม่', '2014-08-12', '2015-02-22 18:00:52', '2015-02-22 18:00:52', 0),
(13, 0, 'วันปิยมหาราช', '2014-10-23', '2015-02-22 18:00:52', '2015-02-22 18:00:52', 0),
(14, 0, 'วันพ่อ', '2014-12-05', '2015-02-22 18:00:52', '2015-02-22 18:00:52', 0),
(15, 0, 'วันพระราชทานรัฐธรรมนูญ', '2014-12-10', '2015-02-22 18:00:52', '2015-02-22 18:00:52', 0),
(16, 0, 'วันสิ้นปี', '2014-12-31', '2015-02-22 18:00:52', '2015-02-22 18:00:52', 0),
(18, 0, 'วันหยุดพิเศษ', '2015-01-02', '2015-02-22 18:00:52', '2015-02-22 18:00:52', 0),
(19, 0, 'วันมาฆบูชา', '2015-03-04', '2015-02-22 18:00:52', '2015-02-22 18:00:52', 0),
(20, 0, 'วันจักรี', '2015-04-06', '2015-02-22 18:00:52', '2015-02-22 18:00:52', 0),
(21, 0, 'วันสงกรานต์', '2015-04-13', '2015-02-22 18:00:52', '2015-02-22 18:00:52', 0),
(22, 0, 'วันสงกรานต์', '2015-04-14', '2015-02-22 18:00:52', '2015-02-22 18:00:52', 0),
(23, 0, 'วันสงกรานต์', '2015-04-15', '2015-02-22 18:00:52', '2015-02-22 18:00:52', 0),
(24, 0, 'วันแรงงานแห่งชาติ', '2015-05-01', '2015-02-22 18:00:52', '2015-02-22 18:00:52', 0),
(25, 0, 'วันวิสาขบูชา', '2015-06-01', '2015-02-22 18:00:52', '2015-02-22 18:00:52', 0),
(26, 0, 'วันหยุดภาคครึ่งปี', '2015-07-01', '2015-02-22 18:00:52', '2015-02-22 18:00:52', 0),
(27, 0, 'วันอาสาฬหบูชา', '2015-07-30', '2015-02-22 18:00:52', '2015-02-22 18:00:52', 0),
(28, 0, 'วันแม่', '2015-08-12', '2015-02-22 18:00:52', '2015-02-22 18:00:52', 0),
(29, 0, 'วันปิยมหาราช', '2015-08-23', '2015-02-22 18:00:52', '2015-02-22 18:00:52', 0),
(30, 0, 'ชดเชยวันพ่อ', '2015-12-07', '2015-02-22 18:00:52', '2015-02-22 18:00:52', 0),
(31, 0, 'วันพระราชทานรัฐธรรมนูญ', '2015-12-10', '2015-02-22 18:00:52', '2015-02-22 18:00:52', 0),
(32, 0, 'วันสิ้นปี', '2015-12-31', '2015-02-22 18:00:52', '2015-02-22 18:00:52', 0),
(37, 0, 'วันหยุดครึ่งปีธนาคาร', '2017-07-01', '2015-02-22 18:00:52', '2015-02-22 18:00:52', 0),
(39, 0, 'วันหยุดครึ่งปีธนาคาร', '2018-07-01', '2015-02-22 18:00:52', '2015-02-22 18:00:52', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pooling`
--

CREATE TABLE IF NOT EXISTS `pooling` (
`pooling_id` int(11) NOT NULL,
  `pooling_fullname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `pooling_shortname` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `create_dttm` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_dttm` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pooling_level`
--

CREATE TABLE IF NOT EXISTS `pooling_level` (
`pooling_lv_id` int(11) NOT NULL,
  `pooling_lv_master` int(11) NOT NULL,
  `pooling_lv_child` int(11) NOT NULL,
  `create_dttm` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_dttm` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `resources`
--

CREATE TABLE IF NOT EXISTS `resources` (
`rs_id` int(11) NOT NULL,
  `pooling_id` int(11) NOT NULL,
  `holiday_type` int(11) NOT NULL,
  `rs_emp_id` int(11) NOT NULL,
  `rs_firstname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `rs_lastname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `rs_nickname` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `rs_status` int(11) NOT NULL,
  `create_dttm` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_dttm` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ur`
--

CREATE TABLE IF NOT EXISTS `ur` (
`ur_id` int(11) NOT NULL,
  `ur_no` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `ur_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ur_manday` int(11) NOT NULL,
  `ur_start_dt` date NOT NULL,
  `ur_end_dt` date NOT NULL,
  `ur_status` int(11) NOT NULL,
  `create_dttm` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_dttm` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
 ADD PRIMARY KEY (`app_id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
 ADD PRIMARY KEY (`bk_id`);

--
-- Indexes for table `booking_detail`
--
ALTER TABLE `booking_detail`
 ADD PRIMARY KEY (`bk_detail_id`);

--
-- Indexes for table `holidays`
--
ALTER TABLE `holidays`
 ADD PRIMARY KEY (`holiday_id`), ADD UNIQUE KEY `date` (`holiday_date`);

--
-- Indexes for table `pooling`
--
ALTER TABLE `pooling`
 ADD PRIMARY KEY (`pooling_id`);

--
-- Indexes for table `pooling_level`
--
ALTER TABLE `pooling_level`
 ADD PRIMARY KEY (`pooling_lv_id`);

--
-- Indexes for table `resources`
--
ALTER TABLE `resources`
 ADD PRIMARY KEY (`rs_id`);

--
-- Indexes for table `ur`
--
ALTER TABLE `ur`
 ADD PRIMARY KEY (`ur_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
MODIFY `app_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
MODIFY `bk_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `booking_detail`
--
ALTER TABLE `booking_detail`
MODIFY `bk_detail_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `holidays`
--
ALTER TABLE `holidays`
MODIFY `holiday_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `pooling`
--
ALTER TABLE `pooling`
MODIFY `pooling_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pooling_level`
--
ALTER TABLE `pooling_level`
MODIFY `pooling_lv_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `resources`
--
ALTER TABLE `resources`
MODIFY `rs_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ur`
--
ALTER TABLE `ur`
MODIFY `ur_id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
