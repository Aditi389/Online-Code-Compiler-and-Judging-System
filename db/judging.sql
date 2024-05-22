-- phpMyAdmin SQL Dump
-- version 4.7.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2017 at 06:37 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `judging`
--

-- --------------------------------------------------------

--
-- Table structure for table `contestants`
--

CREATE TABLE `contestants` (
  `contestant_id` int(11) NOT NULL,
  `fullname` text NOT NULL,
  `subevent_id` int(11) NOT NULL,
  `contestant_ctr` int(11) NOT NULL,
  `status` text NOT NULL,
  `txt_code` text NOT NULL,
  `rand_code` int(15) NOT NULL,
  `txtPollScore` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contestants`
--

INSERT INTO `contestants` (`contestant_id`, `fullname`, `subevent_id`, `contestant_ctr`, `status`, `txt_code`, `rand_code`, `txtPollScore`) VALUES
(1, 'qerwerwe', 1, 5, '', '', 811147, 0),
(2, 'rwerwer', 1, 2, '', '', 402521, 0),
(3, 'werwerwe', 1, 3, '', '', 9469133, 0),
(4, 'rwerwerwer', 1, 4, '', '', 9469134, 0);

-- --------------------------------------------------------

--
-- Table structure for table `criteria`
--

CREATE TABLE `criteria` (
  `criteria_id` int(11) NOT NULL,
  `subevent_id` int(11) NOT NULL,
  `criteria` text NOT NULL,
  `percentage` int(11) NOT NULL,
  `criteria_ctr` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `criteria`
--

INSERT INTO `criteria` (`criteria_id`, `subevent_id`, `criteria`, `percentage`, `criteria_ctr`) VALUES
(1, 1, 'werwerewr', 50, 1),
(2, 1, 'werwerwerwe', 50, 2);

-- --------------------------------------------------------

--
-- Table structure for table `judges`
--

CREATE TABLE `judges` (
  `judge_id` int(11) NOT NULL,
  `subevent_id` int(11) NOT NULL,
  `judge_ctr` int(11) NOT NULL,
  `fullname` text NOT NULL,
  `code` varchar(6) NOT NULL,
  `jtype` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `judges`
--

INSERT INTO `judges` (`judge_id`, `subevent_id`, `judge_ctr`, `fullname`, `code`, `jtype`) VALUES
(1, 1, 1, 'werwer', 'hhxq4v', ''),
(2, 1, 2, 'werwerwer', 'umj4ch', ''),
(3, 1, 3, 'werwerwerwer', 'hf0yms', '');

-- --------------------------------------------------------

--
-- Table structure for table `main_event`
--

CREATE TABLE `main_event` (
  `mainevent_id` int(11) NOT NULL,
  `event_name` text NOT NULL,
  `status` text NOT NULL,
  `organizer_id` int(11) NOT NULL,
  `sy` varchar(9) NOT NULL,
  `date_start` text NOT NULL,
  `date_end` text NOT NULL,
  `place` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `main_event`
--

INSERT INTO `main_event` (`mainevent_id`, `event_name`, `status`, `organizer_id`, `sy`, `date_start`, `date_end`, `place`) VALUES
(1, 'INTRAMS', 'activated', 19, '2017-2018', '2017-11-02', '2017-11-02', 'BCC');

-- --------------------------------------------------------

--
-- Table structure for table `messagein`
--

CREATE TABLE `messagein` (
  `Id` int(11) NOT NULL,
  `SendTime` varchar(10) DEFAULT NULL,
  `ReceiveTime` varchar(10) DEFAULT NULL,
  `MessageFrom` bigint(12) DEFAULT NULL,
  `MessageTo` varchar(10) DEFAULT NULL,
  `SMSC` varchar(10) DEFAULT NULL,
  `MessageText` varchar(4) DEFAULT NULL,
  `MessageType` varchar(10) DEFAULT NULL,
  `MessagePDU` varchar(10) DEFAULT NULL,
  `Gateway` varchar(10) DEFAULT NULL,
  `UserId` varchar(10) DEFAULT NULL,
  `sendStatus` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `messagelog`
--

CREATE TABLE `messagelog` (
  `Id` int(11) NOT NULL,
  `SendTime` datetime DEFAULT NULL,
  `ReceiveTime` datetime DEFAULT NULL,
  `StatusCode` int(11) DEFAULT NULL,
  `StatusText` varchar(80) DEFAULT NULL,
  `MessageTo` varchar(80) DEFAULT NULL,
  `MessageFrom` varchar(80) DEFAULT NULL,
  `MessageText` text,
  `MessageType` varchar(80) DEFAULT NULL,
  `MessageId` varchar(80) DEFAULT NULL,
  `ErrorCode` varchar(80) DEFAULT NULL,
  `ErrorText` varchar(80) DEFAULT NULL,
  `Gateway` varchar(80) DEFAULT NULL,
  `MessageParts` int(11) DEFAULT NULL,
  `MessagePDU` text,
  `Connector` varchar(80) DEFAULT NULL,
  `UserId` varchar(80) DEFAULT NULL,
  `UserInfo` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messagelog`
--

INSERT INTO `messagelog` (`Id`, `SendTime`, `ReceiveTime`, `StatusCode`, `StatusText`, `MessageTo`, `MessageFrom`, `MessageText`, `MessageType`, `MessageId`, `ErrorCode`, `ErrorText`, `Gateway`, `MessageParts`, `MessagePDU`, `Connector`, `UserId`, `UserInfo`) VALUES
(26, '2017-02-18 16:11:34', NULL, 300, NULL, '+', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, '2017-02-18 16:12:00', NULL, 300, NULL, '+', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, '2017-02-18 16:12:00', NULL, 300, NULL, '+', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, '2017-02-18 16:12:00', NULL, 300, NULL, '+', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, '2017-02-18 16:12:00', NULL, 300, NULL, '+', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, '2017-02-18 16:12:00', NULL, 300, NULL, '+', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, '2017-02-18 16:12:00', NULL, 300, NULL, '+', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, '2017-02-18 16:12:00', NULL, 300, NULL, '+', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, '2017-02-18 16:12:00', NULL, 300, NULL, '+', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, '2017-02-18 16:12:31', NULL, 300, NULL, '+', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, '2017-02-18 16:12:31', NULL, 300, NULL, '+', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, '2017-02-18 16:12:31', NULL, 300, NULL, '+', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, '2017-02-18 16:12:31', NULL, 300, NULL, '+', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, '2017-02-18 16:12:31', NULL, 300, NULL, '+', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, '2017-02-18 16:12:31', NULL, 300, NULL, '+', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, '2017-02-18 16:12:31', NULL, 300, NULL, '+', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, '2017-02-18 16:12:31', NULL, 300, NULL, '+', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, '2017-02-18 16:21:40', NULL, 300, NULL, '+', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, '2017-02-18 16:22:10', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, '2017-02-18 16:23:10', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, '2017-02-18 16:23:41', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, '2017-02-18 16:24:13', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, '2017-02-18 16:24:45', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, '2017-02-18 16:25:16', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, '2017-02-18 16:27:19', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, '2017-02-18 16:27:21', NULL, 300, NULL, '+', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, '2017-02-18 16:30:21', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, '2017-02-18 16:30:49', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, '2017-02-18 16:31:21', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, '2017-02-18 16:32:21', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, '2017-02-18 16:38:03', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, '2017-02-18 16:38:33', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, '2017-02-18 16:40:09', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, '2017-02-18 16:40:11', NULL, 300, NULL, '+', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, '2017-02-18 16:40:41', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, '2017-02-18 16:42:16', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, '2017-02-18 16:42:16', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, '2017-02-18 16:42:59', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, '2017-02-18 16:43:30', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, '2017-02-18 16:44:02', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, '2017-02-18 16:44:34', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, '2017-02-18 16:45:05', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, '2017-02-18 16:50:22', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(69, '2017-02-18 16:50:55', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, '2017-02-18 16:54:03', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, '2017-02-18 16:55:35', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, '2017-02-18 16:56:07', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(73, '2017-02-18 16:56:39', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(74, '2017-02-18 16:57:12', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(75, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(76, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(78, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(79, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(80, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(81, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(82, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(83, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(84, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(85, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(86, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(87, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(88, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(89, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(90, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(91, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(92, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(93, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(94, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(95, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(96, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(97, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(98, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(99, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(100, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(101, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(102, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(103, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(104, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(105, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(106, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(107, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(108, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(109, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(110, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(111, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(112, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(113, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(114, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(115, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(116, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(117, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(118, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(119, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(120, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(121, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(122, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(123, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(124, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(125, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(126, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(127, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(128, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(129, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(130, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(131, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(132, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(133, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(134, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(135, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(136, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(137, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(138, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(139, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(140, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(141, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(142, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(143, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(144, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(145, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(146, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(147, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(148, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(149, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(150, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(151, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(152, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(153, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(154, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(155, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(156, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(157, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(158, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(159, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(160, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(161, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(162, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(163, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(164, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(165, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(166, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(167, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(168, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(169, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(170, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(171, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(172, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(173, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(174, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(175, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(176, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(177, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(178, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(179, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(180, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(181, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(182, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(183, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(184, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(185, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(186, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(187, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(188, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(189, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(190, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(191, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(192, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(193, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(194, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(195, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(196, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(197, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(198, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(199, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(200, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(201, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(202, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(203, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(204, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(205, '2017-02-18 17:02:44', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(206, '2017-02-18 17:02:44', NULL, 300, NULL, '+4438', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(207, '2017-02-18 17:02:44', NULL, 300, NULL, '+8080', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(208, '2017-02-18 17:15:15', NULL, 300, NULL, '+0', 'BCC EJS', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(209, '2017-02-18 17:30:24', NULL, 200, NULL, '+639074946964', 'test message', NULL, NULL, '1:+639074946964:197', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(210, '2017-02-18 17:35:38', NULL, 200, NULL, '+639074946964', 'Thank you. Your vote has been counted.', NULL, NULL, '1:+639074946964:198', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(211, '2017-02-18 17:35:40', NULL, 200, NULL, '+4438', 'Wrong code. Pls. try again.', NULL, NULL, '1:+4438:199', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(212, '2017-02-18 17:37:47', NULL, 300, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(213, '2017-02-18 17:38:23', NULL, 300, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(214, '2017-02-18 17:38:47', NULL, 300, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(215, '2017-02-18 17:39:09', NULL, 200, NULL, '+639074946964', 'Wrong code. Pls. try again.', NULL, NULL, '1:+639074946964:200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(216, '2017-02-18 17:39:47', NULL, 200, NULL, '+639074946964', 'You have voted previously. Your vote is not counted.', NULL, NULL, '1:+639074946964:201', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(217, '2017-02-18 17:41:41', NULL, 200, NULL, '+639074946964', 'Thank you. Your vote has been counted.', NULL, NULL, '1:+639074946964:202', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(218, '2017-02-18 17:42:18', NULL, 200, NULL, '+639074946964', 'You have voted previously. Your vote is not counted.', NULL, NULL, '1:+639074946964:203', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(219, '2017-02-18 17:47:10', NULL, 200, NULL, '+639074946964', 'You have voted previously. Your vote is not counted.', NULL, NULL, '1:+639074946964:204', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(220, '2017-02-18 17:48:36', NULL, 200, NULL, '+639074946964', 'Thank you. Your vote has been counted.', NULL, NULL, '1:+639074946964:205', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(221, '2017-02-18 17:49:19', NULL, 200, NULL, '+639074946964', 'Wrong code. Pls. try again.', NULL, NULL, '1:+639074946964:206', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(222, '2017-02-18 17:52:58', NULL, 200, NULL, '+639983401847', 'Wrong code. Pls. try again.', NULL, NULL, '1:+639983401847:207', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(223, '2017-02-18 17:55:22', NULL, 200, NULL, '+639468601299', 'Thank you. Your vote has been counted.', NULL, NULL, '1:+639468601299:208', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(224, '2017-02-18 17:56:15', NULL, 200, NULL, '+639468601299', 'Thank you. Your vote has been counted.', NULL, NULL, '1:+639468601299:209', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(225, '2017-02-18 17:57:01', NULL, 200, NULL, '+639468601299', 'Thank you. Your vote has been counted.', NULL, NULL, '1:+639468601299:210', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(226, '2017-02-18 18:02:11', NULL, 200, NULL, '+639156444975', 'Thank you. Your vote has been counted.', NULL, NULL, '1:+639156444975:211', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(227, '2017-02-18 18:02:49', NULL, 200, NULL, '+639156444975', 'Wrong code. Pls. try again.', NULL, NULL, '1:+639156444975:212', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `messageout`
--

CREATE TABLE `messageout` (
  `Id` int(11) NOT NULL,
  `MessageTo` varchar(80) DEFAULT NULL,
  `MessageFrom` varchar(80) DEFAULT NULL,
  `MessageText` text,
  `MessageType` varchar(80) DEFAULT NULL,
  `Gateway` varchar(80) DEFAULT NULL,
  `UserId` varchar(80) DEFAULT NULL,
  `UserInfo` text,
  `Priority` int(11) DEFAULT NULL,
  `Scheduled` datetime DEFAULT NULL,
  `ValidityPeriod` int(11) DEFAULT NULL,
  `IsSent` tinyint(1) NOT NULL DEFAULT '0',
  `IsRead` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `organizer`
--

CREATE TABLE `organizer` (
  `organizer_id` int(11) NOT NULL,
  `fname` text NOT NULL,
  `mname` text NOT NULL,
  `lname` text NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `pnum` varchar(15) NOT NULL,
  `txt_poll_num` varchar(15) NOT NULL,
  `access` varchar(25) NOT NULL,
  `org_id` varchar(12) NOT NULL,
  `status` varchar(12) NOT NULL,
  `company_name` varchar(55) NOT NULL,
  `company_address` varchar(55) NOT NULL,
  `company_logo` varchar(55) NOT NULL,
  `company_telephone` varchar(55) NOT NULL,
  `company_email` varchar(55) NOT NULL,
  `company_website` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `organizer`
--

INSERT INTO `organizer` (`organizer_id`, `fname`, `mname`, `lname`, `username`, `password`, `email`, `pnum`, `txt_poll_num`, `access`, `org_id`, `status`, `company_name`, `company_address`, `company_logo`, `company_telephone`, `company_email`, `company_website`) VALUES
(19, 'EMILIO', 'BEHASA', 'MAGTOLIS', 'wee', 'wee', 'emiloimagtolis@gmail.com', '09303546547', '09301234567', 'Organizer', '', 'offline', 'BEE4TEN', 'BINALBAGAN, NEGROS OCCIDENTAL', '52985-ejs_logo.png', '742-5601', 'bee4tensales@gmail.com', 'bee4ten.ml'),
(20, 'Carlo', 'Segunla', 'Ebeto', 'carlo', 'carlo', '', '', '', 'Tabulator', '19', 'offline', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `rank_system`
--

CREATE TABLE `rank_system` (
  `rs_id` int(11) NOT NULL,
  `subevent_id` varchar(12) NOT NULL,
  `contestant_id` varchar(12) NOT NULL,
  `total_rank` decimal(3,1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sub_event`
--

CREATE TABLE `sub_event` (
  `subevent_id` int(11) NOT NULL,
  `mainevent_id` int(11) NOT NULL,
  `organizer_id` int(11) NOT NULL,
  `event_name` text NOT NULL,
  `status` text NOT NULL,
  `eventdate` text NOT NULL,
  `eventtime` text NOT NULL,
  `place` text NOT NULL,
  `txtpoll_status` text NOT NULL,
  `view` varchar(15) NOT NULL,
  `txtpollview` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_event`
--

INSERT INTO `sub_event` (`subevent_id`, `mainevent_id`, `organizer_id`, `event_name`, `status`, `eventdate`, `eventtime`, `place`, `txtpoll_status`, `view`, `txtpollview`) VALUES
(1, 1, 19, 'HIP-HOP DANCE', 'activated', '2017-11-02', '02:00 PM', 'BCC', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `sub_results`
--

CREATE TABLE `sub_results` (
  `subresult_id` int(11) NOT NULL,
  `subevent_id` int(11) NOT NULL,
  `mainevent_id` int(11) NOT NULL,
  `contestant_id` int(11) NOT NULL,
  `judge_id` int(11) NOT NULL,
  `total_score` decimal(11,1) NOT NULL,
  `deduction` int(11) NOT NULL,
  `criteria_ctr1` decimal(11,1) NOT NULL,
  `criteria_ctr2` decimal(11,1) NOT NULL,
  `criteria_ctr3` decimal(11,1) NOT NULL,
  `criteria_ctr4` decimal(11,1) NOT NULL,
  `criteria_ctr5` decimal(11,1) NOT NULL,
  `criteria_ctr6` decimal(11,1) NOT NULL,
  `criteria_ctr7` decimal(11,1) NOT NULL,
  `criteria_ctr8` decimal(11,1) NOT NULL,
  `criteria_ctr9` decimal(11,1) NOT NULL,
  `criteria_ctr10` decimal(11,1) NOT NULL,
  `comments` text NOT NULL,
  `rank` varchar(11) NOT NULL,
  `judge_rank_stat` varchar(15) NOT NULL,
  `place_title` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `textpoll`
--

CREATE TABLE `textpoll` (
  `textpoll_id` int(11) NOT NULL,
  `contestant_id` varchar(12) NOT NULL,
  `text_vote` int(11) NOT NULL,
  `subevent_id` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contestants`
--
ALTER TABLE `contestants`
  ADD PRIMARY KEY (`contestant_id`);

--
-- Indexes for table `criteria`
--
ALTER TABLE `criteria`
  ADD PRIMARY KEY (`criteria_id`);

--
-- Indexes for table `judges`
--
ALTER TABLE `judges`
  ADD PRIMARY KEY (`judge_id`);

--
-- Indexes for table `main_event`
--
ALTER TABLE `main_event`
  ADD PRIMARY KEY (`mainevent_id`);

--
-- Indexes for table `messagein`
--
ALTER TABLE `messagein`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `messagelog`
--
ALTER TABLE `messagelog`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IDX_MessageId` (`MessageId`,`SendTime`);

--
-- Indexes for table `messageout`
--
ALTER TABLE `messageout`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IDX_IsRead` (`IsRead`);

--
-- Indexes for table `organizer`
--
ALTER TABLE `organizer`
  ADD PRIMARY KEY (`organizer_id`);

--
-- Indexes for table `rank_system`
--
ALTER TABLE `rank_system`
  ADD PRIMARY KEY (`rs_id`);

--
-- Indexes for table `sub_event`
--
ALTER TABLE `sub_event`
  ADD PRIMARY KEY (`subevent_id`);

--
-- Indexes for table `sub_results`
--
ALTER TABLE `sub_results`
  ADD PRIMARY KEY (`subresult_id`);

--
-- Indexes for table `textpoll`
--
ALTER TABLE `textpoll`
  ADD PRIMARY KEY (`textpoll_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contestants`
--
ALTER TABLE `contestants`
  MODIFY `contestant_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `criteria`
--
ALTER TABLE `criteria`
  MODIFY `criteria_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `judges`
--
ALTER TABLE `judges`
  MODIFY `judge_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `main_event`
--
ALTER TABLE `main_event`
  MODIFY `mainevent_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `messagein`
--
ALTER TABLE `messagein`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `messagelog`
--
ALTER TABLE `messagelog`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;

--
-- AUTO_INCREMENT for table `messageout`
--
ALTER TABLE `messageout`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `organizer`
--
ALTER TABLE `organizer`
  MODIFY `organizer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `rank_system`
--
ALTER TABLE `rank_system`
  MODIFY `rs_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_event`
--
ALTER TABLE `sub_event`
  MODIFY `subevent_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sub_results`
--
ALTER TABLE `sub_results`
  MODIFY `subresult_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `textpoll`
--
ALTER TABLE `textpoll`
  MODIFY `textpoll_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
