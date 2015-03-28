-- STRUCTURE AND DATA SQML DUMP FROM PHPMYADMIN FOR THE CODEZERO TEAM DATABASE

-- WARNING: DATA FROM THE FILES TABLE IS EXCLUDED DUE TO FILE SIZE, SO THERE WILL BE
--   FOREIGN KEY ERRORS IMPORTING THIS AS A RESULT


-- phpMyAdmin SQL Dump
-- version 3.2.5
-- http://www.phpmyadmin.net
--
-- Host: mysql.cms.gre.ac.uk
-- Generation Time: Mar 28, 2015 at 11:31 PM
-- Server version: 5.5.41
-- PHP Version: 5.5.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mdb_codezero`
--

-- --------------------------------------------------------

--
-- Table structure for table `esuper_comment`
--

CREATE TABLE IF NOT EXISTS `esuper_comment` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_staff_id` varchar(255) NOT NULL,
  `comment_body` varchar(255) NOT NULL,
  `comment_date_added` varchar(255) NOT NULL,
  `comment_time_added` varchar(255) NOT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `comment_staff_id` (`comment_staff_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=67 ;

--
-- Dumping data for table `esuper_comment`
--

INSERT INTO `esuper_comment` (`comment_id`, `comment_staff_id`, `comment_body`, `comment_date_added`, `comment_time_added`) VALUES
(51, 'pm253', 'PHP frameworks or native vs hybrid vs web would be interesting.', '2015-03-16', '17:13:43'),
(53, 'jm197', 'I''m glad your project is coming along nicely, some good e-commerce site to checkout are ebay, amazon and play. Most high street shops have an online side now so check some of those out as well.', '2015-03-16', '20:25:46'),
(54, 'pm253', 'That''s excellent!  Let me know how you get on with OOP, it can be quite a pain to master but it''s definitely my ''first'' choice!', '2015-03-16', '23:04:30'),
(55, 'pm253', 'That''s fantastic!', '2015-03-17', '12:27:46'),
(56, 'bd119', 'Green', '2015-03-17', '12:41:01'),
(57, 'pm253', 'Great stuff!', '2015-03-17', '14:28:03'),
(58, 'pm253', 'Congratulations!', '2015-03-17', '14:51:12'),
(59, 'pm253', 'I know', '2015-03-17', '14:51:44'),
(60, 'pm253', 'Well done!', '2015-03-17', '15:17:47'),
(61, 'pm253', 'Looks good!', '2015-03-17', '15:33:00'),
(62, 'bd119', 'Glad to see that you are blogging', '2015-03-17', '16:12:42'),
(63, 'pm253', 'That''s fantastic!', '2015-03-17', '17:09:38'),
(64, 'pm253', 'Sounds good. Since you are using PHP I would recommend MySQL.', '2015-03-24', '15:23:39'),
(65, 'tm21', 'Maybe you could also test it on some peers?', '2015-03-25', '10:35:47'),
(66, 'sa112', 'Testing adding a comment', '2015-03-28', '15:10:30');

-- --------------------------------------------------------

--
-- Table structure for table `esuper_communication`
--

CREATE TABLE IF NOT EXISTS `esuper_communication` (
  `communication_id` int(11) NOT NULL AUTO_INCREMENT,
  `communication_from_id` varchar(5) NOT NULL,
  `communication_to_id` varchar(5) NOT NULL,
  `communication_date_added` varchar(11) NOT NULL COMMENT 'YYYY-MM-DD',
  `communication_time_added` varchar(11) NOT NULL,
  `communication_type_id` int(11) NOT NULL,
  `communication_body` varchar(500) NOT NULL,
  `communication_file_id` int(11) DEFAULT NULL,
  `communication_comment_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`communication_id`),
  KEY `communication_type_id` (`communication_type_id`),
  KEY `communication_file_id` (`communication_file_id`),
  KEY `communication_comment_id` (`communication_comment_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=745 ;

--
-- Dumping data for table `esuper_communication`
--

INSERT INTO `esuper_communication` (`communication_id`, `communication_from_id`, `communication_to_id`, `communication_date_added`, `communication_time_added`, `communication_type_id`, `communication_body`, `communication_file_id`, `communication_comment_id`) VALUES
(637, 'da236', 'blog', '2015-03-16', '17:12:41', 1, 'Thinking about project ideas:\r\n- PHP framework comparison \r\n- Native vs Hybrid vs Web apps\r\n- PHP security\r\n- PHP vs ASP.NET', NULL, 51),
(638, 'da236', 'blog', '2015-03-16', '17:13:17', 1, 'Today I looked into numerous project ideas and have decided to look into Native vs Hybrid vs web apps.', NULL, NULL),
(642, 'la345', 'blog', '2015-03-16', '17:57:42', 1, 'Today I tested my HTML site to ensure it is functioning properly', NULL, 65),
(643, 'sp116', 'pm253', '2015-03-16', '17:57:51', 2, 'Hi Matt, \r\nCould you please review my report - I have updated several sections. ', NULL, NULL),
(644, 'sp116', 'pm253', '2015-03-16', '17:59:34', 2, 'Hi Matt, \r\nWould it be possible to reschedule the virtual meeting I requested for Thursday 19th March to next Monday at a time convenient for you, please?', NULL, NULL),
(645, 'sp116', 'blog', '2015-03-16', '18:00:56', 1, 'This week I have looked into AngularJS Routing and its benefits to PHP routing.\r\n\r\nI have also researched Object Oriented PHP and developed a secure login system.', NULL, 54),
(646, 'la345', 'tm21', '2015-03-16', '18:03:53', 2, 'Hi Mike, when did you say our project demos will take place?', NULL, NULL),
(647, 'tm21', 'la345', '2015-03-16', '18:05:32', 2, 'Hi Amy, this coming Friday.', NULL, NULL),
(648, 'dr456', 'gd435', '2015-03-16', '18:30:52', 2, 'If there are any new sections on your report I am happy to review.', NULL, NULL),
(649, 'jm197', 'ta210', '2015-03-16', '20:12:49', 2, 'Hi Andrew, how is your project coming along?', NULL, NULL),
(650, 'ta210', 'jm197', '2015-03-16', '20:14:21', 2, 'Hi Mary, not too bad but there is something I wanted to ask you in regards to that. I''ve sent you a meeting request. ', NULL, NULL),
(651, 'jm197', 'ta210', '2015-03-16', '20:22:17', 2, 'I have accepted your meeting request (the new one) and will see you then.', NULL, NULL),
(652, 'ta210', 'blog', '2015-03-16', '20:24:19', 1, 'Been stuck on a bug that keeps reoccurring and I can''t seem to find it! I''m meeting my tutor soon to see if she can help me fix it. Other than that my project is going well, I am getting close to making my own e-commerce site. One thing I will focus on doing next week is comparing my product to existing alternatives.', NULL, 53),
(653, 'pm253', 'sp116', '2015-03-16', '21:12:43', 2, 'I can move the meeting to Monday 14.00pm.', NULL, NULL),
(658, 'jm197', 'ta210', '2015-03-17', '11:16:40', 2, 'Morning Andrew, take a look at this, it might help.', NULL, NULL),
(675, 'pm253', 'he667', '2015-03-17', '13:41:54', 2, 'You have not made any visible progress. Please arrange a meeting to discuss this.', NULL, NULL),
(702, 'BD118', 'blog', '2015-03-17', '16:12:27', 1, 'New blog post', NULL, 62),
(703, 'da236', 'pm253', '2015-03-17', '16:13:12', 2, 'Hi Matt could I have some feedback on my Introduction please?', NULL, NULL),
(704, 'pm253', 'da236', '2015-03-17', '16:13:37', 2, 'Yes, see attached file', NULL, NULL),
(705, 'pm253', 'da236', '2015-03-17', '16:13:51', 2, 'How is your project going?', NULL, NULL),
(706, 'da236', 'pm253', '2015-03-17', '16:14:15', 2, 'Fine thanks, I''m working on my contextual report and still researching at the moment', NULL, NULL),
(707, 'pm253', 'en119', '2015-03-17', '16:14:49', 2, 'Good. Please send a meeting request if you need any in depth help.', NULL, NULL),
(731, 'da236', 'pm253', '2015-03-24', '15:11:15', 2, 'Please can you remind me what file you wanted to to submit for feedback?', NULL, NULL),
(732, 'da236', 'blog', '2015-03-24', '15:12:39', 1, 'Today I created a database schema and have started to research the best database system to use. I have considered MySQL and SQL Server.', NULL, NULL),
(733, 'tm21', 'la345', '2015-03-25', '10:31:35', 2, 'Are you ready for your project demo next week?', NULL, NULL),
(734, 'pm253', 'da236', '2015-03-25', '11:36:02', 2, '### FILE UPLOAD - no content ###', 313, NULL),
(735, 'pm253', 'da236', '2015-03-25', '11:36:46', 2, '### FILE UPLOAD - no content ###', 314, NULL),
(736, 'pm253', 'da236', '2015-03-25', '18:23:05', 2, 'sdfsd', 316, NULL),
(737, 'pm253', 'bl745', '2015-03-25', '18:25:38', 2, '### FILE UPLOAD - no content ###', NULL, NULL),
(738, 'pm253', 'bc555', '2015-03-25', '18:29:58', 2, '### FILE UPLOAD - no content ###', 317, NULL),
(739, 'pm253', 'bl745', '2015-03-25', '18:30:14', 2, '### FILE UPLOAD - no content ###', 318, NULL),
(740, 'da236', 'pm253', '2015-03-28', '14:54:36', 2, 'This is a test to show I can add a message here', NULL, NULL),
(741, 'da236', 'blog', '2015-03-28', '14:56:04', 1, 'I can add a blog here!', NULL, NULL),
(742, 'sa112', 'ah324', '2015-03-28', '15:08:49', 2, 'This is a test message', NULL, NULL),
(743, 'ah324', 'blog', '2015-03-28', '15:10:02', 1, 'I''m looking into PHP frameworks', NULL, 66),
(744, 'sa112', 'ah324', '2015-03-28', '15:16:18', 2, '### FILE UPLOAD - no content ###', 322, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `esuper_communication_type`
--

CREATE TABLE IF NOT EXISTS `esuper_communication_type` (
  `communication_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `communication_type_name` varchar(255) NOT NULL,
  `communication_desc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`communication_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `esuper_communication_type`
--

INSERT INTO `esuper_communication_type` (`communication_type_id`, `communication_type_name`, `communication_desc`) VALUES
(1, 'Blog ', 'Post an entry to your student blog.'),
(2, 'Message', 'Send a message directly to your supervisor. ');

-- --------------------------------------------------------

--
-- Table structure for table `esuper_file`
--

CREATE TABLE IF NOT EXISTS `esuper_file` (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `file_type_id` int(11) NOT NULL,
  `file_owner` varchar(5) NOT NULL,
  `file_name` varchar(30) NOT NULL,
  `file_type` varchar(30) NOT NULL,
  `file_size` int(11) NOT NULL,
  `file_content` mediumblob NOT NULL,
  `file_comment_id` int(11) NOT NULL,
  `file_date_added` varchar(255) NOT NULL,
  `file_time_added` varchar(255) NOT NULL,
  PRIMARY KEY (`file_id`),
  KEY `file_type_id` (`file_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=323 ;

-- --------------------------------------------------------

--
-- Table structure for table `esuper_file_type`
--

CREATE TABLE IF NOT EXISTS `esuper_file_type` (
  `file_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `file_type_name` varchar(255) NOT NULL,
  `file_type_desc` varchar(255) NOT NULL,
  `file_mime_type` varchar(255) NOT NULL,
  PRIMARY KEY (`file_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `esuper_file_type`
--

INSERT INTO `esuper_file_type` (`file_type_id`, `file_type_name`, `file_type_desc`, `file_mime_type`) VALUES
(1, 'Formative Feedback', 'Files uploaded for formative Feedback', 'application/pdf'),
(2, 'Project Report', 'Submit your Project Report for feedback', 'application/pdf'),
(3, 'Project Proposal', 'Submit your Project Proposal', 'application/pdf'),
(4, 'Contextual Report', 'Submit your Contextual Report', 'application/pdf'),
(5, 'Interim Report', 'Submit your Interim Report', 'application/pdf'),
(6, 'Ethics Form', 'Submit your Ethics Form for approval', 'application/pdf'),
(8, 'Initial Report', 'Submit your Initial Report', 'application/pdf');

-- --------------------------------------------------------

--
-- Table structure for table `esuper_meeting`
--

CREATE TABLE IF NOT EXISTS `esuper_meeting` (
  `meeting_id` int(11) NOT NULL AUTO_INCREMENT,
  `meeting_date` varchar(11) NOT NULL COMMENT 'YYYY-MM-DD',
  `meeting_timeslot_id` int(11) NOT NULL DEFAULT '0',
  `meeting_title` varchar(255) NOT NULL,
  `meeting_content` text NOT NULL,
  `meeting_status_id` int(11) NOT NULL DEFAULT '1',
  `meeting_status_content` text NOT NULL,
  `meeting_type_id` int(11) NOT NULL,
  `meeting_student_id` char(10) NOT NULL,
  `meeting_staff_id` char(10) NOT NULL,
  PRIMARY KEY (`meeting_id`),
  KEY `meeting_timeslot_id` (`meeting_timeslot_id`),
  KEY `meeting_student_id` (`meeting_student_id`),
  KEY `meeting_staff_id` (`meeting_staff_id`),
  KEY `meeting_status_id` (`meeting_status_id`),
  KEY `meeting_type_id` (`meeting_type_id`),
  KEY `meeting_student_id_2` (`meeting_student_id`),
  KEY `meeting_staff_id_2` (`meeting_staff_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=163 ;

--
-- Dumping data for table `esuper_meeting`
--

INSERT INTO `esuper_meeting` (`meeting_id`, `meeting_date`, `meeting_timeslot_id`, `meeting_title`, `meeting_content`, `meeting_status_id`, `meeting_status_content`, `meeting_type_id`, `meeting_student_id`, `meeting_staff_id`) VALUES
(118, '2015-03-23', 1, 'Prototypes', 'Could we meet to talk about my prototypes I have done so far', 2, 'Yes, see you in my office', 2, 'da236', 'pm253'),
(121, '2015-03-19', 4, 'Review of progress', 'I''d like to see if my progress is okay?', 3, 'Sorry something has come up at this time, please request a meeting for the next day.', 1, 'da236', 'pm253'),
(122, '2015-03-24', 6, 'Review of progress', 'I''d like to see if my progress is okay?\r\n', 2, '', 1, 'da236', 'pm253'),
(123, '2015-03-16', 1, 'Review of literature review', 'Could we meet to have a look at my literature review?', 4, '', 2, 'da236', 'pm253'),
(124, '2015-03-16', 3, 'Project Progress', 'Could we meet to discuss my project progress to date', 4, 'Held.', 2, 'sp116', 'dr456'),
(125, '2015-03-19', 5, 'Project Interview', 'I would like to conduct an interview to feed into my product requirements documentation', 1, '', 1, 'sp116', 'pm253'),
(126, '2015-03-18', 15, 'discuss product', 'Hi Mike, I need some help with composing a questionnaire for testing my product. Are you free to meet this week?', 2, 'Yes I am', 2, 'la345', 'tm21'),
(127, '2015-03-16', 24, 'Project Feedback', 'I have reviewed your report and can meet to provide you with feedback on areas you can improve', 1, '', 1, 'gd435', 'dr456'),
(128, '2015-03-16', 38, 'Project', 'Hi, would it be possible to meet to discuss a problem with my project? I can''t seem to get fix a PHP bug and I think you may be able to help.', 3, 'Declining due to wrong date added.', 2, 'ta210', 'jm197'),
(129, '2015-03-17', 40, 'Project', 'Hi, please disregard my previous meeting request as I''ve just realised I cannot do that day. The time of this meeting is my preferred date.', 2, 'This date is fine, see you then.', 1, 'ta210', 'jm197'),
(130, '2015-03-23', 3, 'Research Question', 'I was hoping to meet with you as I have a question pertaining to my research. ', 1, '', 2, 'sp116', 'pm253'),
(131, '2015-03-23', 3, 'Research Question', 'I was hoping to meet with you as I have a question pertaining to my research. ', 1, '', 2, 'sp116', 'pm253'),
(132, '2015-03-18', 50, 'Prototypes', 'Hi could we meet to discuss my prototypes?', 3, '', 2, 'gd435', 'md238'),
(133, '2015-03-18', 52, 'Prototypes', 'Hi could we meet to discuss my prototypes?\r\n', 3, '', 2, 'gd435', 'md238'),
(145, '2015-03-17', 16, 'Questions', 'Can we meet to answer questions for requirements gatherings', 1, '', 1, 'kb528', 'sa112'),
(146, '2015-03-17', 17, 'Report', 'Can we meet to review your report?', 3, '', 1, 'he667', 'sa112'),
(147, '2015-03-18', 7, 'Project', 'I haven''t seen you in a while can we meet?', 2, '', 1, 'sp116', 'pm253'),
(148, '2015-03-25', 6, 'Project', 'Need to discuss project', 3, 'Cancelled by student', 2, 'da236', 'pm253'),
(149, '2015-03-26', 4, 'Project', 'Discuss project', 4, 'Meet in my office', 2, 'da236', 'pm253'),
(150, '2015-03-25', 7, 'Angular', 'Discuss AngularJS', 1, '', 2, 'sp116', 'pm253'),
(151, '2015-03-23', 10, 'Project', 'Can we please meet soon?', 2, 'Hi, this sounds good to me. Meet my in my office.', 2, 'tm112', 'tm21'),
(152, '2015-03-23', 38, 'testing reports', 'testing reports', 3, 'testing reports', 1, 'ta210', 'jm197'),
(153, '2015-03-23', 39, 'testing reports', 'testing reports', 3, 'testing reports', 1, 'ta210', 'jm197'),
(154, '2015-03-23', 8, 'testing reports', 'testing reports', 3, 'testing reports', 1, 'ta210', 'jm197'),
(155, '2015-03-25', 42, 'testing reports', 'testing reports', 3, 'testing reports', 1, 'ta210', 'jm197'),
(156, '2015-03-24', 40, 'testing reports', 'testing reports', 3, 'testing reports', 1, 'ta210', 'jm197'),
(157, '2015-03-25', 43, 'testing reports', 'testing reports', 3, ' testing reports', 1, 'ta210', 'jm197'),
(158, '2015-03-30', 1, 'Discuss Research Ethics', 'Can we meet to discuss my research ethics proposal? I have completed the form but would like you to check it over.', 1, '', 2, 'da236', 'pm253'),
(159, '2015-04-01', 6, 'Project Catch Up', 'Can I meet you to discuss the progress of your project?', 1, '', 2, 'en119', 'pm253'),
(160, '2015-04-01', 13, 'Project Catch Up', 'Can I meet you to discuss the progress of your project?', 2, '', 2, 'sa111', 'tm21'),
(161, '2015-03-30', 3, 'Test meeting', 'This is a test meeting request', 1, '', 1, 'da236', 'pm253'),
(162, '2015-03-31', 19, 'Test subject', 'This is a test meeting request', 1, '', 1, 'ah324', 'sa112');

-- --------------------------------------------------------

--
-- Table structure for table `esuper_meeting_status`
--

CREATE TABLE IF NOT EXISTS `esuper_meeting_status` (
  `meeting_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `meeting_status_name` varchar(20) NOT NULL,
  `meeting_status_desc` varchar(255) NOT NULL,
  PRIMARY KEY (`meeting_status_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `esuper_meeting_status`
--

INSERT INTO `esuper_meeting_status` (`meeting_status_id`, `meeting_status_name`, `meeting_status_desc`) VALUES
(1, 'Pending', 'Meeting that has not been accepted or declined.'),
(2, 'Accepted', 'Meeting that has been accepted.'),
(3, 'Declined', 'Meeting that has been declined.'),
(4, 'Held', 'Meeting that has been held.');

-- --------------------------------------------------------

--
-- Table structure for table `esuper_meeting_timeslot`
--

CREATE TABLE IF NOT EXISTS `esuper_meeting_timeslot` (
  `timeslot_id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_id` int(11) NOT NULL,
  `timeslot_day` char(2) NOT NULL COMMENT 'M, TU, W, TH, F',
  `timeslot_time` decimal(3,1) NOT NULL COMMENT 'Time as decimal. Eg 14.30 = 14.5',
  `timeslot_active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`timeslot_id`),
  KEY `staff_id` (`staff_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=56 ;

--
-- Dumping data for table `esuper_meeting_timeslot`
--

INSERT INTO `esuper_meeting_timeslot` (`timeslot_id`, `staff_id`, `timeslot_day`, `timeslot_time`, `timeslot_active`) VALUES
(1, 1, 'M', '13.0', 1),
(2, 1, 'M', '13.5', 0),
(3, 1, 'M', '14.0', 1),
(4, 1, 'TH', '10.0', 1),
(5, 1, 'TH', '10.5', 1),
(6, 1, 'W', '9.0', 1),
(7, 1, 'W', '9.5', 1),
(8, 6, 'M', '9.0', 1),
(9, 2, 'M', '9.0', 1),
(10, 2, 'M', '9.5', 1),
(11, 2, 'M', '10.0', 1),
(12, 2, 'M', '10.5', 1),
(13, 2, 'W', '11.0', 1),
(14, 2, 'W', '11.5', 1),
(15, 2, 'W', '12.0', 1),
(16, 3, 'TU', '11.5', 1),
(17, 3, 'TU', '12.5', 1),
(18, 3, 'TU', '13.0', 1),
(19, 3, 'TU', '12.0', 1),
(20, 3, 'TU', '14.0', 1),
(21, 3, 'W', '9.0', 1),
(22, 3, 'F', '14.0', 1),
(23, 3, 'F', '14.5', 1),
(24, 5, 'M', '13.5', 1),
(30, 5, 'TH', '13.5', 1),
(31, 5, 'TH', '14.0', 1),
(32, 5, 'TH', '14.5', 1),
(33, 5, 'TH', '15.5', 1),
(34, 5, 'F', '10.5', 1),
(35, 5, 'F', '15.0', 1),
(36, 5, 'M', '13.0', 1),
(37, 5, 'TH', '11.0', 1),
(38, 6, 'M', '13.5', 1),
(39, 6, 'M', '14.0', 1),
(40, 6, 'TU', '14.5', 1),
(41, 6, 'TU', '15.5', 1),
(42, 6, 'W', '10.5', 1),
(43, 6, 'W', '11.0', 1),
(44, 7, 'M', '13.5', 1),
(45, 7, 'M', '14.0', 1),
(46, 7, 'TU', '14.5', 1),
(47, 7, 'TU', '15.5', 1),
(48, 7, 'W', '10.5', 1),
(49, 7, 'W', '11.0', 1),
(50, 8, 'W', '9.0', 1),
(51, 8, 'W', '9.5', 1),
(52, 8, 'W', '10.0', 1),
(53, 8, 'W', '10.5', 1),
(54, 8, 'F', '13.0', 1),
(55, 8, 'F', '13.5', 1);

--
-- Triggers `esuper_meeting_timeslot`
--
DROP TRIGGER IF EXISTS `ucase_insert`;
DELIMITER //
CREATE TRIGGER `ucase_insert` BEFORE INSERT ON `esuper_meeting_timeslot`
 FOR EACH ROW SET NEW.timeslot_day = UPPER(NEW.timeslot_day)
//
DELIMITER ;
DROP TRIGGER IF EXISTS `ucase_update`;
DELIMITER //
CREATE TRIGGER `ucase_update` BEFORE UPDATE ON `esuper_meeting_timeslot`
 FOR EACH ROW SET NEW.timeslot_day = UPPER(NEW.timeslot_day)
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `esuper_meeting_type`
--

CREATE TABLE IF NOT EXISTS `esuper_meeting_type` (
  `meeting_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `meeting_type_name` varchar(255) NOT NULL,
  `meeting_type_desc` varchar(255) NOT NULL,
  PRIMARY KEY (`meeting_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `esuper_meeting_type`
--

INSERT INTO `esuper_meeting_type` (`meeting_type_id`, `meeting_type_name`, `meeting_type_desc`) VALUES
(1, 'Virtual', 'Skype, phone, etc.'),
(2, 'Face to Face', 'In staff office, etc.');

-- --------------------------------------------------------

--
-- Table structure for table `esuper_programme`
--

CREATE TABLE IF NOT EXISTS `esuper_programme` (
  `programme_id` int(11) NOT NULL AUTO_INCREMENT,
  `programme_title` varchar(80) NOT NULL,
  `programme_info` varchar(255) NOT NULL,
  `programme_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`programme_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `esuper_programme`
--

INSERT INTO `esuper_programme` (`programme_id`, `programme_title`, `programme_info`, `programme_active`) VALUES
(1, 'Web Technologies', 'Web design and development', 1),
(2, 'Games and Multimedia', 'Create games for all platforms', 1),
(3, 'Digital Media', 'For all things digital media related', 1),
(4, 'Maths', 'Maths, maths and maths', 1),
(5, 'Computer Science', 'Learn the Object Oriented Programming way', 1);

-- --------------------------------------------------------

--
-- Table structure for table `esuper_project`
--

CREATE TABLE IF NOT EXISTS `esuper_project` (
  `project_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_username` varchar(255) NOT NULL,
  `project_title` varchar(255) NOT NULL,
  PRIMARY KEY (`project_id`),
  KEY `student_username` (`student_username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `esuper_project`
--

INSERT INTO `esuper_project` (`project_id`, `student_username`, `project_title`) VALUES
(24, 'da236', 'Investgation itno native vs Hybrid vs Web applications'),
(25, 'sp116', 'AngularJS Single Page Application'),
(26, 'la345', 'Creating a website with the use of a content management system '),
(27, 'BD118', 'Is Object Oriented Programming better than Procedural Programming?'),
(28, 'BD118', 'Object Oriented Programming Benefits and Drawbacks'),
(29, 'da236', 'Investigation into Native vs Hybrid vs Web apps'),
(30, 'da236', 'PHP frameworks');

-- --------------------------------------------------------

--
-- Table structure for table `esuper_staff`
--

CREATE TABLE IF NOT EXISTS `esuper_staff` (
  `staff_id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_first` tinytext NOT NULL,
  `staff_last` tinytext NOT NULL,
  `staff_username` char(7) NOT NULL,
  `staff_banner_id` char(9) NOT NULL,
  `staff_password` varchar(255) NOT NULL,
  `staff_authorised` tinyint(1) NOT NULL,
  `staff_active` tinyint(1) NOT NULL,
  `staff_profile_link` varchar(255) NOT NULL,
  PRIMARY KEY (`staff_id`),
  KEY `staff_username` (`staff_username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `esuper_staff`
--

INSERT INTO `esuper_staff` (`staff_id`, `staff_first`, `staff_last`, `staff_username`, `staff_banner_id`, `staff_password`, `staff_authorised`, `staff_active`, `staff_profile_link`) VALUES
(1, 'Matt', 'Prichard', 'pm253', '000837485', '$2y$10$bcX0Gr2MdA6WxuWiE2NA9.QEivy3kb2EjESpSLVx7T4Qp97MQ3y6S', 1, 1, 'http://www2.gre.ac.uk/about/faculty/ach/study/cis/staff?sq_content_src=%2BdXJsPWh0dHAlM0ElMkYlMkZ3d3cuY21zLmdyZS5hYy51ayUyRnN0YWZmJTJGZGV0YWlsc0dSRS5hc3AlM0ZpZCUzRDU2MyZhbGw9MQ%3D%3D'),
(2, 'Mike', 'Johnson', 'tm21', '000534858', '$2y$10$bcX0Gr2MdA6WxuWiE2NA9.QEivy3kb2EjESpSLVx7T4Qp97MQ3y6S', 0, 1, 'http://www2.gre.ac.uk/about/faculty/ach/study/cis/staff?sq_content_src=%2BdXJsPWh0dHAlM0ElMkYlMkZ3d3cuY21zLmdyZS5hYy51ayUyRnN0YWZmJTJGZGV0YWlsc0dSRS5hc3AlM0ZpZCUzRDU2MyZhbGw9MQ%3D%3D'),
(3, 'Tony', 'Ackroyd', 'sa112', '000928345', '$2y$10$bcX0Gr2MdA6WxuWiE2NA9.QEivy3kb2EjESpSLVx7T4Qp97MQ3y6S', 0, 1, 'http://www2.gre.ac.uk/about/faculty/ach/study/cis/staff?sq_content_src=%2BdXJsPWh0dHAlM0ElMkYlMkZ3d3cuY21zLmdyZS5hYy51ayUyRnN0YWZmJTJGZGV0YWlsc0dSRS5hc3AlM0ZpZCUzRDI1MCZhbGw9MQ%3D%3D'),
(4, 'Lucy', 'Deadman', 'dl45', '000758392', '$2y$10$bcX0Gr2MdA6WxuWiE2NA9.QEivy3kb2EjESpSLVx7T4Qp97MQ3y6S', 0, 0, 'http://www2.gre.ac.uk/about/faculty/ach/study/cis/staff?sq_content_src=%2BdXJsPWh0dHAlM0ElMkYlMkZ3d3cuY21zLmdyZS5hYy51ayUyRnN0YWZmJTJGZGV0YWlsc0dSRS5hc3AlM0ZpZCUzRDU2MyZhbGw9MQ%3D%3D'),
(5, 'Ryan', 'Dillion', 'dr456', '000783922', '$2y$10$6q9jFZEGKVrZUeDJJuR1O.vUXR.fepeOGWXGUDi6nmfjYXoGp16O.', 0, 1, 'http://www2.gre.ac.uk/about/faculty/ach/study/cis/staff?sq_content_src=%2BdXJsPWh0dHAlM0ElMkYlMkZ3d3cuY21zLmdyZS5hYy51ayUyRnN0YWZmJTJGZGV0YWlsc0dSRS5hc3AlM0ZpZCUzRDU2MyZhbGw9MQ%3D%3D'),
(6, 'Mary', 'Jane', 'jm197', '000876678', '$2y$10$6q9jFZEGKVrZUeDJJuR1O.vUXR.fepeOGWXGUDi6nmfjYXoGp16O.', 0, 1, 'http://www2.gre.ac.uk/about/faculty/ach/study/cis/staff?sq_content_src=%2BdXJsPWh0dHAlM0ElMkYlMkZ3d3cuY21zLmdyZS5hYy51ayUyRnN0YWZmJTJGZGV0YWlsc0dSRS5hc3AlM0ZpZCUzRDU2MyZhbGw9MQ%3D%3D'),
(7, 'Phillip', 'King', 'kp666', '000882214', '$2y$10$6q9jFZEGKVrZUeDJJuR1O.vUXR.fepeOGWXGUDi6nmfjYXoGp16O.', 0, 1, 'http://www2.gre.ac.uk/about/faculty/ach/study/cis/staff?sq_content_src=%2BdXJsPWh0dHAlM0ElMkYlMkZ3d3cuY21zLmdyZS5hYy51ayUyRnN0YWZmJTJGZGV0YWlsc0dSRS5hc3AlM0ZpZCUzRDU2MyZhbGw9MQ%3D%3D'),
(8, 'Duncan', 'Martin', 'md238', '000625398', '$2y$10$6q9jFZEGKVrZUeDJJuR1O.vUXR.fepeOGWXGUDi6nmfjYXoGp16O.', 1, 1, 'http://www2.gre.ac.uk/about/faculty/ach/study/cis/staff?sq_content_src=%2BdXJsPWh0dHAlM0ElMkYlMkZ3d3cuY21zLmdyZS5hYy51ayUyRnN0YWZmJTJGZGV0YWlsc0dSRS5hc3AlM0ZpZCUzRDU2MyZhbGw9MQ%3D%3D'),
(9, 'Alex', 'Leeding', 'la790', '000423908', '$2y$10$6q9jFZEGKVrZUeDJJuR1O.vUXR.fepeOGWXGUDi6nmfjYXoGp16O.', 1, 1, 'http://www2.gre.ac.uk/about/faculty/ach/study/cis/staff?sq_content_src=%2BdXJsPWh0dHAlM0ElMkYlMkZ3d3cuY21zLmdyZS5hYy51ayUyRnN0YWZmJTJGZGV0YWlsc0dSRS5hc3AlM0ZpZCUzRDU2MyZhbGw9MQ%3D%3D'),
(10, 'Dwayne', 'Johnson', 'bd119', '9999999', '$2y$10$bcX0Gr2MdA6WxuWiE2NA9.QEivy3kb2EjESpSLVx7T4Qp97MQ3y6S', 1, 1, 'null');

-- --------------------------------------------------------

--
-- Table structure for table `esuper_student`
--

CREATE TABLE IF NOT EXISTS `esuper_student` (
  `student_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_first` tinytext NOT NULL,
  `student_last` tinytext NOT NULL,
  `student_username` char(7) NOT NULL,
  `student_banner_id` char(9) NOT NULL,
  `student_password` varchar(255) NOT NULL,
  `student_active` tinyint(1) NOT NULL,
  `last_login_date` datetime NOT NULL,
  PRIMARY KEY (`student_id`),
  KEY `student_username` (`student_username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `esuper_student`
--

INSERT INTO `esuper_student` (`student_id`, `student_first`, `student_last`, `student_username`, `student_banner_id`, `student_password`, `student_active`, `last_login_date`) VALUES
(1, 'Mark', 'Tickner', 'tm112', '000661087', '$2y$10$bcX0Gr2MdA6WxuWiE2NA9.QEivy3kb2EjESpSLVx7T4Qp97MQ3y6S', 1, '2015-03-28 09:19:31'),
(2, 'Andrew', 'Tate', 'ta210', '000122665', '$2y$10$bcX0Gr2MdA6WxuWiE2NA9.QEivy3kb2EjESpSLVx7T4Qp97MQ3y6S', 1, '2015-03-28 10:25:12'),
(3, 'Polly', 'Stoyanova', 'sp116', '000345253', '$2y$10$6q9jFZEGKVrZUeDJJuR1O.vUXR.fepeOGWXGUDi6nmfjYXoGp16O.', 1, '2015-03-28 10:24:48'),
(4, 'Brandon', 'Tompson', 'tb117', '000247687', '$2y$10$6q9jFZEGKVrZUeDJJuR1O.vUXR.fepeOGWXGUDi6nmfjYXoGp16O.', 0, '0000-00-00 00:00:00'),
(5, 'Dorris', 'Bagel', 'bd451', '000876123', '$2y$10$6q9jFZEGKVrZUeDJJuR1O.vUXR.fepeOGWXGUDi6nmfjYXoGp16O.', 1, '2015-03-28 10:25:45'),
(6, 'Bill', 'Kash', 'kb528', '000965764', '$2y$10$6q9jFZEGKVrZUeDJJuR1O.vUXR.fepeOGWXGUDi6nmfjYXoGp16O.', 0, '0000-00-00 00:00:00'),
(7, 'Amy', 'Louise', 'la345', '000636274', '$2y$10$6q9jFZEGKVrZUeDJJuR1O.vUXR.fepeOGWXGUDi6nmfjYXoGp16O.', 1, '2015-03-16 17:49:24'),
(8, 'Louis', 'Brown', 'bl332', '000671183', '$2y$10$6q9jFZEGKVrZUeDJJuR1O.vUXR.fepeOGWXGUDi6nmfjYXoGp16O.', 1, '0000-00-00 00:00:00'),
(9, 'Aaron', 'Dunphy', 'da236', '000543876', '$2y$10$6q9jFZEGKVrZUeDJJuR1O.vUXR.fepeOGWXGUDi6nmfjYXoGp16O.', 1, '2015-03-28 14:53:17'),
(10, 'Dwayne', 'Brown', 'BD118', '000999999', '$2y$10$bcX0Gr2MdA6WxuWiE2NA9.QEivy3kb2EjESpSLVx7T4Qp97MQ3y6S', 1, '2015-03-17 16:21:11'),
(11, 'Aaron', 'Smith', 'sa111', '323213', '$2y$10$6q9jFZEGKVrZUeDJJuR1O.vUXR.fepeOGWXGUDi6nmfjYXoGp16O.	', 1, '0000-00-00 00:00:00'),
(12, 'Zahir', 'Hamilton', 'hm123', '252552', '$2y$10$bcX0Gr2MdA6WxuWiE2NA9.QEivy3kb2EjESpSLVx7T4Qp97MQ3y6S', 1, '0000-00-00 00:00:00'),
(13, 'Austin', 'Jenna', 'ja242', '234514', '$2y$10$bcX0Gr2MdA6WxuWiE2NA9.QEivy3kb2EjESpSLVx7T4Qp97MQ3y6S', 1, '0000-00-00 00:00:00'),
(14, 'Owen', 'Connor', 'co734', '353743', '$2y$10$bcX0Gr2MdA6WxuWiE2NA9.QEivy3kb2EjESpSLVx7T4Qp97MQ3y6S', 1, '2015-03-23 17:25:48'),
(15, 'Jared', 'Acton', 'aj636', '247834', '$2y$10$bcX0Gr2MdA6WxuWiE2NA9.QEivy3kb2EjESpSLVx7T4Qp97MQ3y6S', 1, '0000-00-00 00:00:00'),
(16, 'Elaine', 'Salvador', 'se552', '567123', '$2y$10$bcX0Gr2MdA6WxuWiE2NA9.QEivy3kb2EjESpSLVx7T4Qp97MQ3y6S', 1, '0000-00-00 00:00:00'),
(17, 'Lewis', 'Keely', 'kw778', '883346', '$2y$10$bcX0Gr2MdA6WxuWiE2NA9.QEivy3kb2EjESpSLVx7T4Qp97MQ3y6S', 0, '0000-00-00 00:00:00'),
(18, 'Drew', 'Georgia', 'gd435', '765123', '$2y$10$bcX0Gr2MdA6WxuWiE2NA9.QEivy3kb2EjESpSLVx7T4Qp97MQ3y6S', 1, '2015-03-28 10:26:26'),
(19, 'Luke', 'Bethany', 'bl745', '123754', '$2y$10$bcX0Gr2MdA6WxuWiE2NA9.QEivy3kb2EjESpSLVx7T4Qp97MQ3y6S', 1, '2015-03-23 17:28:21'),
(20, 'Cathleen', 'Bianca', 'bc555', '228912', '$2y$10$bcX0Gr2MdA6WxuWiE2NA9.QEivy3kb2EjESpSLVx7T4Qp97MQ3y6S', 1, '0000-00-00 00:00:00'),
(21, 'Aristotle', 'Neil', 'na237', '435888', '$2y$10$bcX0Gr2MdA6WxuWiE2NA9.QEivy3kb2EjESpSLVx7T4Qp97MQ3y6S', 1, '0000-00-00 00:00:00'),
(22, 'Neville', 'Elijah', 'en119', '765124', '$2y$10$bcX0Gr2MdA6WxuWiE2NA9.QEivy3kb2EjESpSLVx7T4Qp97MQ3y6S', 1, '0000-00-00 00:00:00'),
(23, 'Emi', 'Helen', 'he667', '234776', '$2y$10$bcX0Gr2MdA6WxuWiE2NA9.QEivy3kb2EjESpSLVx7T4Qp97MQ3y6S', 1, '0000-00-00 00:00:00'),
(24, 'Caldwell', 'Leah', 'lc237', '663356', '$2y$10$bcX0Gr2MdA6WxuWiE2NA9.QEivy3kb2EjESpSLVx7T4Qp97MQ3y6S', 0, '0000-00-00 00:00:00'),
(25, 'Hedley', 'Andrew', 'ah324', '765888', '$2y$10$bcX0Gr2MdA6WxuWiE2NA9.QEivy3kb2EjESpSLVx7T4Qp97MQ3y6S', 1, '2015-03-28 15:14:34'),
(26, 'Veronica', 'Skyler', 'sv128', '556923', '$2y$10$bcX0Gr2MdA6WxuWiE2NA9.QEivy3kb2EjESpSLVx7T4Qp97MQ3y6S', 1, '0000-00-00 00:00:00'),
(27, 'Adrienne', 'Bree', 'ba177', '451122', '$2y$10$bcX0Gr2MdA6WxuWiE2NA9.QEivy3kb2EjESpSLVx7T4Qp97MQ3y6S', 0, '0000-00-00 00:00:00'),
(28, 'Petra', 'Mara', 'mp690', '400352', '$2y$10$bcX0Gr2MdA6WxuWiE2NA9.QEivy3kb2EjESpSLVx7T4Qp97MQ3y6S', 0, '0000-00-00 00:00:00'),
(29, 'Mechelle', 'Mercedes', 'mm001', '101352', '$2y$10$bcX0Gr2MdA6WxuWiE2NA9.QEivy3kb2EjESpSLVx7T4Qp97MQ3y6S', 1, '0000-00-00 00:00:00'),
(30, 'Jael', 'Ima', 'ij110', '155980', '$2y$10$bcX0Gr2MdA6WxuWiE2NA9.QEivy3kb2EjESpSLVx7T4Qp97MQ3y6S', 1, '2015-03-15 19:52:35'),
(31, 'Clare', 'Martha', 'mc449', '345888', '$2y$10$bcX0Gr2MdA6WxuWiE2NA9.QEivy3kb2EjESpSLVx7T4Qp97MQ3y6S', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `esuper_user_allocation`
--

CREATE TABLE IF NOT EXISTS `esuper_user_allocation` (
  `user_allocation_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `supervisor_id` int(11) DEFAULT NULL,
  `second_id` int(11) DEFAULT NULL,
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(11) NOT NULL,
  PRIMARY KEY (`user_allocation_id`),
  KEY `student_id` (`student_id`),
  KEY `supervisor_id` (`supervisor_id`),
  KEY `second_id` (`second_id`),
  KEY `updated_by` (`updated_by`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=318 ;

--
-- Dumping data for table `esuper_user_allocation`
--

INSERT INTO `esuper_user_allocation` (`user_allocation_id`, `student_id`, `supervisor_id`, `second_id`, `last_updated`, `updated_by`) VALUES
(1, 1, NULL, 3, '2015-03-01 19:01:18', 1),
(2, 9, NULL, 3, '2015-03-01 19:02:18', 1),
(4, 5, NULL, 7, '2015-03-01 19:04:18', 1),
(5, 7, NULL, 6, '2015-03-01 19:05:18', 2),
(6, 10, NULL, 9, '2015-03-01 19:06:18', 6),
(7, 3, NULL, 5, '2015-03-01 19:08:18', 1),
(8, 2, NULL, 1, '2015-03-01 19:09:18', 1),
(9, 11, NULL, 7, '2015-03-01 19:10:18', 1),
(10, 1, 3, NULL, '2015-03-03 21:51:48', 1),
(11, 9, 1, NULL, '2015-03-03 21:51:48', 1),
(12, 6, 3, NULL, '2015-03-03 21:51:48', 1),
(14, 7, 2, NULL, '2015-03-03 21:51:48', 2),
(15, 10, 2, NULL, '2015-03-03 21:51:48', 6),
(16, 3, 1, NULL, '2015-03-03 21:51:48', 1),
(17, 2, 7, NULL, '2015-03-03 21:51:48', 1),
(18, 11, 4, 4, '2015-03-03 21:51:48', 1),
(21, 1, 1, NULL, '2015-03-03 23:27:22', 1),
(24, 10, 4, NULL, '2015-03-04 00:31:07', 1),
(25, 1, 4, NULL, '2015-03-04 00:31:07', 1),
(27, 11, 2, 2, '2015-03-04 00:39:13', 8),
(28, 10, NULL, 2, '2015-03-04 00:39:13', 8),
(29, 1, 2, 2, '2015-03-04 00:39:13', 8),
(31, 10, 10, 7, '2015-03-04 00:40:13', 8),
(32, 1, NULL, 7, '2015-03-04 00:40:13', 8),
(168, 9, NULL, 1, '2015-03-10 14:45:48', 1),
(169, 9, NULL, 6, '2015-03-10 14:59:34', 1),
(170, 9, 6, 6, '2015-03-10 15:00:26', 1),
(171, 9, 6, 1, '2015-03-10 15:01:52', 1),
(172, 5, NULL, 4, '2015-03-12 10:08:31', 1),
(173, 2, 6, 7, '2015-03-12 10:30:09', 1),
(271, 9, 1, NULL, '2015-03-16 17:04:57', 1),
(272, 9, NULL, 6, '2015-03-16 17:05:11', 1),
(273, 7, 2, 1, '2015-03-16 17:48:58', 1),
(274, 3, 1, 4, '2015-03-16 17:49:14', 1),
(278, 18, 5, NULL, '2015-03-16 18:24:03', 1),
(279, 18, 8, NULL, '2015-03-17 10:48:43', 1),
(280, 18, 1, 5, '2015-03-17 10:56:17', 1),
(281, 19, 1, 3, '2015-03-17 10:56:17', 1),
(282, 20, 1, 4, '2015-03-17 10:56:51', 1),
(283, 21, 1, 3, '2015-03-17 10:56:51', 1),
(284, 22, 1, 7, '2015-03-17 10:56:51', 1),
(285, 23, 3, 1, '2015-03-17 10:58:42', 1),
(286, 24, 3, 5, '2015-03-17 10:58:42', 1),
(287, 25, 3, 1, '2015-03-17 10:59:10', 1),
(288, 26, 3, 5, '2015-03-17 10:59:10', 1),
(289, 27, 3, 5, '2015-03-17 10:59:10', 1),
(290, 28, 3, 5, '2015-03-17 10:59:10', 1),
(291, 9, 6, NULL, '2015-03-17 11:20:04', 1),
(292, 9, 1, NULL, '2015-03-17 11:20:22', 1),
(300, 25, NULL, 6, '2015-03-17 14:57:14', 1),
(301, 12, NULL, 6, '2015-03-17 14:57:14', 1),
(302, 30, NULL, 6, '2015-03-17 14:57:14', 1),
(303, 25, NULL, 7, '2015-03-17 15:26:02', 1),
(304, 9, NULL, 7, '2015-03-17 15:26:02', 1),
(305, 12, NULL, 7, '2015-03-17 15:26:02', 1),
(306, 30, NULL, 7, '2015-03-17 15:26:03', 1),
(307, 9, NULL, 3, '2015-03-17 16:07:07', 1),
(308, 25, NULL, 6, '2015-03-17 17:13:05', 1),
(309, 9, NULL, 6, '2015-03-17 17:13:05', 1),
(310, 12, NULL, 6, '2015-03-17 17:13:06', 1),
(311, 3, NULL, 5, '2015-03-22 00:20:58', 1),
(312, 5, 2, NULL, '2015-03-23 17:16:52', 1),
(313, 4, NULL, 3, '2015-03-23 17:18:57', 1),
(314, 4, 3, NULL, '2015-03-23 17:23:50', 1),
(315, 25, NULL, 5, '2015-03-28 15:20:31', 1),
(316, 9, NULL, 5, '2015-03-28 15:20:31', 1),
(317, 30, NULL, 5, '2015-03-28 15:20:31', 1);

-- --------------------------------------------------------

--
-- Table structure for table `esuper_user_programme`
--

CREATE TABLE IF NOT EXISTS `esuper_user_programme` (
  `user_prog_id` int(11) NOT NULL AUTO_INCREMENT,
  `programme_id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_prog_id`),
  KEY `student_id` (`student_id`),
  KEY `staff_id` (`staff_id`),
  KEY `esuper_user_programme_ibfk_3` (`programme_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=47 ;

--
-- Dumping data for table `esuper_user_programme`
--

INSERT INTO `esuper_user_programme` (`user_prog_id`, `programme_id`, `student_id`, `staff_id`, `last_updated`) VALUES
(1, 1, NULL, 1, '2015-03-03 13:01:39'),
(4, 2, NULL, 2, '2015-03-03 13:04:39'),
(6, 3, NULL, 3, '2015-03-03 13:06:39'),
(8, 4, NULL, 4, '2015-03-03 13:08:39'),
(12, 5, NULL, 5, '2015-03-03 13:30:58'),
(13, 1, 1, NULL, '2015-03-03 18:01:57'),
(14, 1, 2, NULL, '2015-03-03 18:02:57'),
(15, 1, 9, NULL, '2015-03-03 18:03:57'),
(16, 1, 3, NULL, '2015-03-03 18:04:57'),
(17, 2, 4, NULL, '2015-03-03 18:05:57'),
(18, 3, 5, NULL, '2015-03-03 18:06:57'),
(19, 3, 6, NULL, '2015-03-03 18:07:57'),
(20, 4, 7, NULL, '2015-03-03 18:08:57'),
(21, 4, 8, NULL, '2015-03-03 18:09:57'),
(22, 5, 10, NULL, '2015-03-03 18:10:57'),
(23, 5, 11, NULL, '2015-03-03 18:11:57'),
(24, 5, 1, NULL, '2015-03-03 18:12:57'),
(25, 1, NULL, 6, '2015-03-03 18:55:12'),
(26, 1, NULL, 7, '2015-03-03 18:55:12'),
(27, 1, 12, NULL, '2015-03-12 13:33:24'),
(28, 1, 13, NULL, '2015-03-12 13:33:24'),
(29, 2, 14, NULL, '2015-03-12 13:33:24'),
(30, 2, 15, NULL, '2015-03-12 13:33:24'),
(31, 3, 16, NULL, '2015-03-12 13:33:24'),
(32, 3, 17, NULL, '2015-03-12 13:33:24'),
(33, 4, 18, NULL, '2015-03-12 13:33:24'),
(34, 4, 19, NULL, '2015-03-12 13:33:24'),
(35, 5, 20, NULL, '2015-03-12 13:33:24'),
(36, 5, 21, NULL, '2015-03-12 13:33:24'),
(37, 3, 22, NULL, '2015-03-12 15:36:37'),
(38, 5, 23, NULL, '2015-03-12 15:36:37'),
(39, 4, 24, NULL, '2015-03-12 15:36:37'),
(40, 1, 25, NULL, '2015-03-12 15:36:37'),
(41, 1, 26, NULL, '2015-03-12 15:36:37'),
(42, 2, 27, NULL, '2015-03-12 15:36:37'),
(43, 3, 28, NULL, '2015-03-12 15:36:37'),
(44, 4, 29, NULL, '2015-03-12 15:36:37'),
(45, 1, 30, NULL, '2015-03-12 15:36:37'),
(46, 2, 31, NULL, '2015-03-12 15:36:37');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `esuper_comment`
--
ALTER TABLE `esuper_comment`
  ADD CONSTRAINT `esuper_comment_ibfk_1` FOREIGN KEY (`comment_staff_id`) REFERENCES `esuper_staff` (`staff_username`);

--
-- Constraints for table `esuper_communication`
--
ALTER TABLE `esuper_communication`
  ADD CONSTRAINT `esuper_communication_ibfk_1` FOREIGN KEY (`communication_type_id`) REFERENCES `esuper_communication_type` (`communication_type_id`),
  ADD CONSTRAINT `esuper_communication_ibfk_2` FOREIGN KEY (`communication_comment_id`) REFERENCES `esuper_comment` (`comment_id`),
  ADD CONSTRAINT `esuper_communication_ibfk_3` FOREIGN KEY (`communication_file_id`) REFERENCES `esuper_file` (`file_id`);

--
-- Constraints for table `esuper_file`
--
ALTER TABLE `esuper_file`
  ADD CONSTRAINT `esuper_file_ibfk_1` FOREIGN KEY (`file_type_id`) REFERENCES `esuper_file_type` (`file_type_id`);

--
-- Constraints for table `esuper_meeting`
--
ALTER TABLE `esuper_meeting`
  ADD CONSTRAINT `esuper_meeting_ibfk_1` FOREIGN KEY (`meeting_status_id`) REFERENCES `esuper_meeting_status` (`meeting_status_id`),
  ADD CONSTRAINT `esuper_meeting_ibfk_2` FOREIGN KEY (`meeting_type_id`) REFERENCES `esuper_meeting_type` (`meeting_type_id`),
  ADD CONSTRAINT `esuper_meeting_ibfk_3` FOREIGN KEY (`meeting_timeslot_id`) REFERENCES `esuper_meeting_timeslot` (`timeslot_id`),
  ADD CONSTRAINT `esuper_meeting_ibfk_4` FOREIGN KEY (`meeting_student_id`) REFERENCES `esuper_student` (`student_username`),
  ADD CONSTRAINT `esuper_meeting_ibfk_5` FOREIGN KEY (`meeting_staff_id`) REFERENCES `esuper_staff` (`staff_username`);

--
-- Constraints for table `esuper_meeting_timeslot`
--
ALTER TABLE `esuper_meeting_timeslot`
  ADD CONSTRAINT `esuper_meeting_timeslot_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `esuper_staff` (`staff_id`);

--
-- Constraints for table `esuper_project`
--
ALTER TABLE `esuper_project`
  ADD CONSTRAINT `esuper_project_ibfk_1` FOREIGN KEY (`student_username`) REFERENCES `esuper_student` (`student_username`);

--
-- Constraints for table `esuper_user_allocation`
--
ALTER TABLE `esuper_user_allocation`
  ADD CONSTRAINT `esuper_user_allocation_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `esuper_student` (`student_id`),
  ADD CONSTRAINT `esuper_user_allocation_ibfk_2` FOREIGN KEY (`supervisor_id`) REFERENCES `esuper_staff` (`staff_id`),
  ADD CONSTRAINT `esuper_user_allocation_ibfk_3` FOREIGN KEY (`second_id`) REFERENCES `esuper_staff` (`staff_id`),
  ADD CONSTRAINT `esuper_user_allocation_ibfk_4` FOREIGN KEY (`updated_by`) REFERENCES `esuper_staff` (`staff_id`);

--
-- Constraints for table `esuper_user_programme`
--
ALTER TABLE `esuper_user_programme`
  ADD CONSTRAINT `esuper_user_programme_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `esuper_student` (`student_id`),
  ADD CONSTRAINT `esuper_user_programme_ibfk_2` FOREIGN KEY (`staff_id`) REFERENCES `esuper_staff` (`staff_id`),
  ADD CONSTRAINT `esuper_user_programme_ibfk_3` FOREIGN KEY (`programme_id`) REFERENCES `esuper_programme` (`programme_id`);
