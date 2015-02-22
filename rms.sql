-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `rms`
--

-- --------------------------------------------------------

--
-- โครงสร้างตาราง `applications`
--

CREATE TABLE IF NOT EXISTS `applications` (
  `app_id` int(11) NOT NULL AUTO_INCREMENT,
  `app_fullname` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `app_shortname` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `create_dttm` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_dttm` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`app_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- โครงสร้างตาราง `daily_work`
--

CREATE TABLE IF NOT EXISTS `daily_work` (
  `daily_id` int(11) NOT NULL AUTO_INCREMENT,
  `ur_app_id` int(11) NOT NULL,
  `resource_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `man_hour` float NOT NULL,
  `fte` float NOT NULL,
  `man_hour_left` float NOT NULL,
  `status` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `booking` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`daily_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- โครงสร้างตาราง `holidays`
--

CREATE TABLE IF NOT EXISTS `holidays` (
  `holiday_id` int(11) NOT NULL AUTO_INCREMENT,
  `holiday_type` int(2) NOT NULL,
  `holiday_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `holiday_date` date NOT NULL,
  `create_dttm` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_dttm` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`holiday_id`),
  UNIQUE KEY `date` (`holiday_date`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=40 ;

--
-- dump ตาราง `holidays`
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
-- โครงสร้างตาราง `pooling`
--

CREATE TABLE IF NOT EXISTS `pooling` (
  `pool_id` int(11) NOT NULL AUTO_INCREMENT,
  `pooling_fullname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `pooling_shortname` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `create_dttm` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_dttm` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pool_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- โครงสร้างตาราง `pooling_level`
--

CREATE TABLE IF NOT EXISTS `pooling_level` (
  `pooling_level_id` int(11) NOT NULL AUTO_INCREMENT,
  `pooling_master` int(11) NOT NULL,
  `pooling_child` int(11) NOT NULL,
  `create_dttm` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_dttm` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pooling_level_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- โครงสร้างตาราง `resources`
--

CREATE TABLE IF NOT EXISTS `resources` (
  `resource_id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `nickname` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `datetime` datetime NOT NULL,
  `pool_id` int(11) NOT NULL,
  PRIMARY KEY (`resource_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- โครงสร้างตาราง `ur`
--

CREATE TABLE IF NOT EXISTS `ur` (
  `ur_id` int(11) NOT NULL AUTO_INCREMENT,
  `ur_no` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `ur_name` text COLLATE utf8_unicode_ci NOT NULL,
  `ur_effort` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `datetime` datetime NOT NULL,
  `status` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ur_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- โครงสร้างตาราง `ur_app`
--

CREATE TABLE IF NOT EXISTS `ur_app` (
  `ur_app_id` int(11) NOT NULL AUTO_INCREMENT,
  `ur_id` int(11) NOT NULL,
  `resource_id` int(11) NOT NULL,
  `task` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `task_effort` float NOT NULL,
  `task_fte` float NOT NULL,
  `status` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `datetime` datetime NOT NULL,
  `app_id` int(11) NOT NULL,
  `booking` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ur_app_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
