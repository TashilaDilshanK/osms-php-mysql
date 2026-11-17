-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.24 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.0.0.6507
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table osms.a/l_assignment
CREATE TABLE IF NOT EXISTS `a/l_assignment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_bin NOT NULL,
  `file` varchar(100) COLLATE utf8_bin NOT NULL,
  `grade_has_a/l_subjects_id` int NOT NULL,
  `start` date NOT NULL,
  `end` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_a/l_assignment_grade_has_a/l_subjects1_idx` (`grade_has_a/l_subjects_id`),
  CONSTRAINT `fk_a/l_assignment_grade_has_a/l_subjects1` FOREIGN KEY (`grade_has_a/l_subjects_id`) REFERENCES `grade_has_a/l_subjects` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;

-- Dumping data for table osms.a/l_assignment: ~5 rows (approximately)
INSERT INTO `a/l_assignment` (`id`, `name`, `file`, `grade_has_a/l_subjects_id`, `start`, `end`) VALUES
	(1, 'as', '62a3823f425081654675549708-Web Programming 1 - Research_H7DT_04_EX_01 (1).pdf', 1, '2022-05-04', '2022-05-20'),
	(2, 'asss', '62a3823f425081654675549708-Web Programming 1 - Research_H7DT_04_EX_01 (1).pdf', 1, '2022-06-09', '2022-06-15'),
	(3, 'rere', '62a3823f425081654675549708-Web Programming 1 - Research_H7DT_04_EX_01 (1).pdf', 1, '2022-06-09', '2022-06-10'),
	(4, 'eeee', '62a3823f425081654675549708-Web Programming 1 - Research_H7DT_04_EX_01 (1).pdf', 2, '2022-06-09', '2022-06-11'),
	(5, 'AS1', '62a3823f425081654675549708-Web Programming 1 - Research_H7DT_04_EX_01 (1).pdf', 12, '2022-06-12', '2022-06-26');

-- Dumping structure for table osms.a/l_notes
CREATE TABLE IF NOT EXISTS `a/l_notes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_bin NOT NULL,
  `file` varchar(100) COLLATE utf8_bin NOT NULL,
  `grade_has_a/l_subjects_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_a/l_notes_grade_has_a/l_subjects1_idx` (`grade_has_a/l_subjects_id`),
  CONSTRAINT `fk_a/l_notes_grade_has_a/l_subjects1` FOREIGN KEY (`grade_has_a/l_subjects_id`) REFERENCES `grade_has_a/l_subjects` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;

-- Dumping data for table osms.a/l_notes: ~10 rows (approximately)
INSERT INTO `a/l_notes` (`id`, `name`, `file`, `grade_has_a/l_subjects_id`) VALUES
	(1, 'aaaaaaaaaaaaa', '62a3823f425081654675549708-Web Programming 1 - Research_H7DT_04_EX_01 (1).pdf', 1),
	(2, 'wrwr', '62a3823f425081654675549708-Web Programming 1 - Research_H7DT_04_EX_01 (1).pdf', 2),
	(3, 'wewrerw', 'werwre', 1),
	(4, 'wrwer', 'ewr', 1),
	(5, 'ewr', 'werwe', 1),
	(6, 'wefdsf', 'vscsd', 1),
	(7, 'sdsds', 'dssd', 1),
	(8, 'sdsd', 'sdd', 2),
	(9, 'esfefs', 'sfsds', 12),
	(10, 'MCS', '62a55f0b22e2aMCS AD.pdf', 1),
	(11, 'psq', '62a55f68d0a85Activity2.docx', 2),
	(12, 'we', '62a582a359ab762a55f0b22e2aMCS AD.pdf', 12);

-- Dumping structure for table osms.a/l_results
CREATE TABLE IF NOT EXISTS `a/l_results` (
  `id` int NOT NULL AUTO_INCREMENT,
  `student_s_ad_no` int NOT NULL,
  `a/l_assignment_id` int NOT NULL,
  `file` varchar(300) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `result` varchar(45) COLLATE utf8_bin NOT NULL,
  `status_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_a/l_results_a/l_assignment1_idx` (`a/l_assignment_id`),
  KEY `fk_a/l_results_student1_idx` (`student_s_ad_no`),
  KEY `fk_a/l_results_status1_idx` (`status_id`),
  CONSTRAINT `fk_a/l_results_a/l_assignment1` FOREIGN KEY (`a/l_assignment_id`) REFERENCES `a/l_assignment` (`id`),
  CONSTRAINT `fk_a/l_results_status1` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`),
  CONSTRAINT `fk_a/l_results_student1` FOREIGN KEY (`student_s_ad_no`) REFERENCES `student` (`s_ad_no`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;

-- Dumping data for table osms.a/l_results: ~5 rows (approximately)
INSERT INTO `a/l_results` (`id`, `student_s_ad_no`, `a/l_assignment_id`, `file`, `result`, `status_id`) VALUES
	(3, 1701, 1, 'UploadFiles//62a33025c6f481651144774560-1620616614160-H7E1 04_AS_01.pdf', '88', 2),
	(4, 1701, 2, 'UploadFiles//62a33093998d1SRS_Template.docx', 'Pending', 2),
	(6, 1701, 3, '62a383ac21e22wordpress-5.9.1.zip', 'Pending', 2),
	(7, 1703, 1, 'sjdgfsydfgsk', 'Pending', 2),
	(8, 1703, 4, 'fefeffe', 'Pending', 2);

-- Dumping structure for table osms.a/l_subjects
CREATE TABLE IF NOT EXISTS `a/l_subjects` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8_bin NOT NULL,
  `s_category_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_a/l_subjects_s_category1_idx` (`s_category_id`),
  CONSTRAINT `fk_a/l_subjects_s_category1` FOREIGN KEY (`s_category_id`) REFERENCES `s_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;

-- Dumping data for table osms.a/l_subjects: ~9 rows (approximately)
INSERT INTO `a/l_subjects` (`id`, `name`, `s_category_id`) VALUES
	(1, 'Mathematics', 3),
	(2, 'Physics', 3),
	(3, 'Chemistry', 3),
	(4, 'Bio Science', 3),
	(5, 'Accounting', 5),
	(6, 'Business Studies', 5),
	(7, 'Economics', 5),
	(8, 'Sinhala Language', 4),
	(9, 'History', 4),
	(10, 'Logic', 4),
	(11, 'Political Science', 4);

-- Dumping structure for table osms.ac_officer
CREATE TABLE IF NOT EXISTS `ac_officer` (
  `ac_ad_no` int NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `fname` varchar(50) COLLATE utf8_bin NOT NULL,
  `lname` varchar(50) COLLATE utf8_bin NOT NULL,
  `password` varchar(20) COLLATE utf8_bin NOT NULL,
  `verification_code` varchar(45) COLLATE utf8_bin NOT NULL DEFAULT 'null',
  `status_id` int NOT NULL,
  `grade_id` int NOT NULL,
  PRIMARY KEY (`ac_ad_no`),
  KEY `fk_ac_officer_status1_idx` (`status_id`),
  KEY `fk_ac_officer_grade1_idx` (`grade_id`),
  CONSTRAINT `fk_ac_officer_grade1` FOREIGN KEY (`grade_id`) REFERENCES `grade` (`id`),
  CONSTRAINT `fk_ac_officer_status1` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;

-- Dumping data for table osms.ac_officer: ~3 rows (approximately)
INSERT INTO `ac_officer` (`ac_ad_no`, `email`, `fname`, `lname`, `password`, `verification_code`, `status_id`, `grade_id`) VALUES
	(1001, 'sahan@gmail.com', 'Sahan', 'Perera', 'Sahan123', 'null', 1, 12),
	(1002, 'kasun@gmail.com', 'Kasun', 'Perera', 'Kasun123', '62aac0014b067', 2, 7),
	(1003, 'adithyaperera47@gmail.com', 'Saman', 'Perera', 'Saman123', 'null', 1, 10);

-- Dumping structure for table osms.admin
CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` int NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `fname` varchar(50) COLLATE utf8_bin NOT NULL,
  `lname` varchar(50) COLLATE utf8_bin NOT NULL,
  `password` varchar(20) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;

-- Dumping data for table osms.admin: ~0 rows (approximately)
INSERT INTO `admin` (`admin_id`, `email`, `fname`, `lname`, `password`) VALUES
	(1, 'pererakusal79@gmail.com', 'Ajith', 'Perera', 'Ajith321');

-- Dumping structure for table osms.assignment
CREATE TABLE IF NOT EXISTS `assignment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_bin NOT NULL,
  `file` varchar(100) COLLATE utf8_bin NOT NULL,
  `grade_has_subject_id` int NOT NULL,
  `start` date NOT NULL,
  `end` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_assignment_grade_has_subject1_idx` (`grade_has_subject_id`),
  CONSTRAINT `fk_assignment_grade_has_subject1` FOREIGN KEY (`grade_has_subject_id`) REFERENCES `grade_has_subject` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;

-- Dumping data for table osms.assignment: ~0 rows (approximately)
INSERT INTO `assignment` (`id`, `name`, `file`, `grade_has_subject_id`, `start`, `end`) VALUES
	(1, 'fdsd', '62a3823f425081654675549708-Web Programming 1 - Research_H7DT_04_EX_01 (1).pdf', 19, '2022-05-03', '2022-07-17'),
	(2, 'sfes', 'eeesf', 19, '2022-06-09', '2022-06-09'),
	(3, 'Aseee', '62a5886f8d5a862a55f0b22e2aMCS AD.pdf', 19, '2022-06-12', '2022-06-13');

-- Dumping structure for table osms.grade
CREATE TABLE IF NOT EXISTS `grade` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;

-- Dumping data for table osms.grade: ~11 rows (approximately)
INSERT INTO `grade` (`id`, `name`) VALUES
	(1, 1),
	(2, 2),
	(3, 3),
	(4, 4),
	(5, 5),
	(6, 6),
	(7, 7),
	(8, 8),
	(9, 9),
	(10, 10),
	(11, 11),
	(12, 12),
	(13, 13);

-- Dumping structure for table osms.grade_has_a/l_subjects
CREATE TABLE IF NOT EXISTS `grade_has_a/l_subjects` (
  `id` int NOT NULL AUTO_INCREMENT,
  `grade_id` int NOT NULL,
  `a/l_subjects_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_grade_has_a/l_subjects_a/l_subjects1_idx` (`a/l_subjects_id`),
  KEY `fk_grade_has_a/l_subjects_grade1_idx` (`grade_id`),
  CONSTRAINT `fk_grade_has_a/l_subjects_a/l_subjects1` FOREIGN KEY (`a/l_subjects_id`) REFERENCES `a/l_subjects` (`id`),
  CONSTRAINT `fk_grade_has_a/l_subjects_grade1` FOREIGN KEY (`grade_id`) REFERENCES `grade` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;

-- Dumping data for table osms.grade_has_a/l_subjects: ~21 rows (approximately)
INSERT INTO `grade_has_a/l_subjects` (`id`, `grade_id`, `a/l_subjects_id`) VALUES
	(1, 12, 1),
	(2, 12, 2),
	(3, 12, 3),
	(4, 12, 4),
	(5, 12, 5),
	(6, 12, 6),
	(7, 12, 7),
	(8, 12, 8),
	(9, 12, 9),
	(10, 12, 10),
	(11, 12, 11),
	(12, 13, 1),
	(13, 13, 2),
	(14, 13, 3),
	(15, 13, 4),
	(16, 13, 5),
	(17, 13, 6),
	(18, 13, 7),
	(19, 13, 8),
	(20, 13, 9),
	(21, 13, 10),
	(22, 13, 11);

-- Dumping structure for table osms.grade_has_subject
CREATE TABLE IF NOT EXISTS `grade_has_subject` (
  `id` int NOT NULL AUTO_INCREMENT,
  `grade_id` int NOT NULL,
  `subject_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_grade_has_subject_subject1_idx` (`subject_id`),
  KEY `fk_grade_has_subject_grade1_idx` (`grade_id`),
  CONSTRAINT `fk_grade_has_subject_grade1` FOREIGN KEY (`grade_id`) REFERENCES `grade` (`id`),
  CONSTRAINT `fk_grade_has_subject_subject1` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;

-- Dumping data for table osms.grade_has_subject: ~136 rows (approximately)
INSERT INTO `grade_has_subject` (`id`, `grade_id`, `subject_id`) VALUES
	(1, 1, 3),
	(2, 1, 7),
	(3, 1, 1),
	(4, 2, 3),
	(5, 2, 7),
	(6, 2, 1),
	(7, 3, 3),
	(8, 3, 7),
	(9, 3, 1),
	(10, 3, 8),
	(11, 4, 3),
	(12, 4, 7),
	(13, 4, 1),
	(14, 4, 8),
	(15, 5, 3),
	(16, 5, 7),
	(17, 5, 1),
	(18, 5, 8),
	(19, 6, 1),
	(20, 6, 2),
	(21, 6, 3),
	(22, 6, 4),
	(23, 6, 5),
	(24, 6, 6),
	(25, 6, 8),
	(26, 6, 9),
	(27, 6, 10),
	(28, 6, 11),
	(29, 6, 12),
	(30, 6, 13),
	(31, 6, 14),
	(32, 6, 15),
	(33, 6, 16),
	(34, 6, 17),
	(35, 6, 18),
	(36, 6, 19),
	(37, 6, 20),
	(38, 7, 1),
	(39, 7, 2),
	(40, 7, 3),
	(41, 7, 4),
	(42, 7, 5),
	(43, 7, 6),
	(44, 7, 8),
	(45, 7, 9),
	(46, 7, 10),
	(47, 7, 11),
	(48, 7, 12),
	(49, 7, 13),
	(50, 7, 14),
	(51, 7, 15),
	(52, 7, 16),
	(53, 7, 18),
	(54, 7, 19),
	(55, 7, 20),
	(56, 8, 1),
	(57, 8, 2),
	(58, 8, 3),
	(59, 8, 4),
	(60, 8, 5),
	(61, 8, 6),
	(62, 8, 8),
	(63, 8, 16),
	(64, 8, 9),
	(65, 8, 10),
	(66, 8, 11),
	(67, 8, 12),
	(68, 8, 13),
	(69, 8, 14),
	(70, 8, 15),
	(71, 8, 17),
	(72, 8, 18),
	(73, 8, 19),
	(74, 8, 20),
	(75, 7, 17),
	(76, 9, 1),
	(77, 9, 2),
	(78, 9, 3),
	(79, 9, 4),
	(80, 9, 5),
	(81, 9, 6),
	(82, 9, 8),
	(83, 9, 9),
	(84, 9, 10),
	(85, 9, 11),
	(86, 9, 12),
	(87, 9, 13),
	(88, 9, 14),
	(89, 9, 15),
	(90, 9, 16),
	(91, 9, 17),
	(92, 9, 18),
	(93, 9, 19),
	(94, 9, 20),
	(95, 10, 1),
	(96, 10, 2),
	(97, 10, 3),
	(98, 10, 4),
	(99, 10, 5),
	(100, 10, 6),
	(101, 10, 8),
	(102, 10, 9),
	(103, 10, 10),
	(104, 10, 11),
	(105, 10, 12),
	(106, 10, 13),
	(107, 10, 14),
	(108, 10, 15),
	(109, 10, 16),
	(110, 10, 17),
	(111, 10, 18),
	(112, 10, 19),
	(113, 10, 21),
	(114, 10, 22),
	(115, 10, 23),
	(116, 11, 1),
	(117, 11, 2),
	(118, 11, 3),
	(119, 11, 4),
	(120, 11, 5),
	(121, 11, 6),
	(122, 11, 8),
	(123, 11, 9),
	(124, 11, 10),
	(125, 11, 11),
	(126, 11, 12),
	(127, 11, 13),
	(128, 11, 14),
	(129, 11, 15),
	(130, 11, 16),
	(131, 11, 17),
	(132, 11, 18),
	(133, 11, 19),
	(134, 11, 21),
	(135, 11, 22),
	(136, 11, 23);

-- Dumping structure for table osms.notes
CREATE TABLE IF NOT EXISTS `notes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `file` varchar(100) COLLATE utf8_bin NOT NULL,
  `grade_has_subject_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_notes_grade_has_subject1_idx` (`grade_has_subject_id`),
  CONSTRAINT `fk_notes_grade_has_subject1` FOREIGN KEY (`grade_has_subject_id`) REFERENCES `grade_has_subject` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;

-- Dumping data for table osms.notes: ~3 rows (approximately)
INSERT INTO `notes` (`id`, `name`, `file`, `grade_has_subject_id`) VALUES
	(1, 'sdfs', '62a3823f425081654675549708-Web Programming 1 - Research_H7DT_04_EX_01 (1).pdf', 19),
	(2, '61', '62a56a00dac62Question Set 30.pdf', 19),
	(3, 'M1', '62a74495ef584Question Set 01.pdf', 38);

-- Dumping structure for table osms.results
CREATE TABLE IF NOT EXISTS `results` (
  `id` int NOT NULL AUTO_INCREMENT,
  `student_s_ad_no` int NOT NULL,
  `assignment_id` int NOT NULL,
  `file` varchar(300) COLLATE utf8_bin NOT NULL,
  `result` varchar(45) COLLATE utf8_bin NOT NULL,
  `status_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_results_assignment1_idx` (`assignment_id`),
  KEY `fk_results_student1_idx` (`student_s_ad_no`),
  KEY `fk_results_status1_idx` (`status_id`),
  CONSTRAINT `fk_results_assignment1` FOREIGN KEY (`assignment_id`) REFERENCES `assignment` (`id`),
  CONSTRAINT `fk_results_status1` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`),
  CONSTRAINT `fk_results_student1` FOREIGN KEY (`student_s_ad_no`) REFERENCES `student` (`s_ad_no`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;

-- Dumping data for table osms.results: ~0 rows (approximately)
INSERT INTO `results` (`id`, `student_s_ad_no`, `assignment_id`, `file`, `result`, `status_id`) VALUES
	(1, 1702, 1, 'UploadFiles//62a35632402de1645518749305-OOSAD - H7DV 04_AS 04 (1) (1).pdf', '80', 2),
	(2, 1703, 3, 'ter', '89', 2);

-- Dumping structure for table osms.section
CREATE TABLE IF NOT EXISTS `section` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(25) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;

-- Dumping data for table osms.section: ~4 rows (approximately)
INSERT INTO `section` (`id`, `name`) VALUES
	(1, 'Primary'),
	(2, 'Junior'),
	(3, 'Senior'),
	(4, 'Collegiate');

-- Dumping structure for table osms.status
CREATE TABLE IF NOT EXISTS `status` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(10) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;

-- Dumping data for table osms.status: ~2 rows (approximately)
INSERT INTO `status` (`id`, `name`) VALUES
	(1, 'Active'),
	(2, 'Deactive');

-- Dumping structure for table osms.student
CREATE TABLE IF NOT EXISTS `student` (
  `s_ad_no` int NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `fname` varchar(50) COLLATE utf8_bin NOT NULL,
  `lname` varchar(50) COLLATE utf8_bin NOT NULL,
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `verification_code` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT 'null',
  `grade_id` int NOT NULL,
  `status_id` int NOT NULL,
  `section_id` int NOT NULL,
  PRIMARY KEY (`s_ad_no`),
  KEY `fk_student_grade1_idx` (`grade_id`),
  KEY `fk_student_status1_idx` (`status_id`),
  KEY `fk_student_section1_idx` (`section_id`),
  CONSTRAINT `fk_student_grade1` FOREIGN KEY (`grade_id`) REFERENCES `grade` (`id`),
  CONSTRAINT `fk_student_section1` FOREIGN KEY (`section_id`) REFERENCES `section` (`id`),
  CONSTRAINT `fk_student_status1` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;

-- Dumping data for table osms.student: ~4 rows (approximately)
INSERT INTO `student` (`s_ad_no`, `email`, `fname`, `lname`, `password`, `verification_code`, `grade_id`, `status_id`, `section_id`) VALUES
	(1701, 'pererakusal79@gmail.com', 'Kusal', 'Perera', 'Kusal456', 'null', 12, 2, 4),
	(1702, 'kamalpere11@gmail.com', 'Kamal', 'Perera', 'Kamal123', 'null', 7, 1, 2),
	(1703, 'ajith@gmail.com', 'Ajith', 'Perera', 'Ajith123', 'null', 10, 1, 3),
	(1704, 'adithyaperera47@gmail.com', 'Dinuka', 'perera', 'Dinuka123', 'null', 12, 1, 4);

-- Dumping structure for table osms.student_payment
CREATE TABLE IF NOT EXISTS `student_payment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `student_s_ad_no` int NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `payment` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_student_payment_student1_idx` (`student_s_ad_no`),
  CONSTRAINT `fk_student_payment_student1` FOREIGN KEY (`student_s_ad_no`) REFERENCES `student` (`s_ad_no`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;

-- Dumping data for table osms.student_payment: ~1 rows (approximately)
INSERT INTO `student_payment` (`id`, `student_s_ad_no`, `start`, `end`, `payment`) VALUES
	(1, 1703, '2022-05-16 20:29:03', '2022-06-10 16:21:03', 0);

-- Dumping structure for table osms.subject
CREATE TABLE IF NOT EXISTS `subject` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;

-- Dumping data for table osms.subject: ~23 rows (approximately)
INSERT INTO `subject` (`id`, `name`) VALUES
	(1, 'Mathematics'),
	(2, 'Science'),
	(3, 'Sinhala Language'),
	(4, 'Catholic'),
	(5, 'Buddhism'),
	(6, 'IT'),
	(7, 'Environment'),
	(8, 'English Language'),
	(9, 'History'),
	(10, 'Shivenary'),
	(11, 'Islam'),
	(12, 'Geography'),
	(13, 'Music'),
	(14, 'Art'),
	(15, 'Dancing'),
	(16, 'Drama'),
	(17, 'Health Science'),
	(18, 'Tamil Language'),
	(19, 'Civic Education'),
	(20, 'PTS'),
	(21, 'Commerce'),
	(22, 'Sinhala Literature'),
	(23, 'English Literature');

-- Dumping structure for table osms.s_category
CREATE TABLE IF NOT EXISTS `s_category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;

-- Dumping data for table osms.s_category: ~4 rows (approximately)
INSERT INTO `s_category` (`id`, `name`) VALUES
	(3, 'Science'),
	(4, 'Art'),
	(5, 'Commerce');

-- Dumping structure for table osms.teacher
CREATE TABLE IF NOT EXISTS `teacher` (
  `t_ad_no` int NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `fname` varchar(50) COLLATE utf8_bin NOT NULL,
  `lname` varchar(50) COLLATE utf8_bin NOT NULL,
  `password` varchar(20) COLLATE utf8_bin NOT NULL,
  `section_id` int NOT NULL,
  `verification_code` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT 'null',
  `status_id` int NOT NULL,
  PRIMARY KEY (`t_ad_no`),
  KEY `fk_teacher_status1_idx` (`status_id`),
  KEY `fk_teacher_section1_idx` (`section_id`),
  CONSTRAINT `fk_teacher_section1` FOREIGN KEY (`section_id`) REFERENCES `section` (`id`),
  CONSTRAINT `fk_teacher_status1` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;

-- Dumping data for table osms.teacher: ~3 rows (approximately)
INSERT INTO `teacher` (`t_ad_no`, `email`, `fname`, `lname`, `password`, `section_id`, `verification_code`, `status_id`) VALUES
	(1301, 'adithyaperera@gmail.com', 'Adithya', 'Perera', 'Adithya444', 4, 'null', 1),
	(1302, 'amal123@gmail.com', 'Amal', 'Perera', 'Amal321', 3, 'null', 2),
	(1303, 'adithyaperera47@gmail.com', 'Kasun', 'Perera', 'Kasun123', 3, 'null', 1);

-- Dumping structure for table osms.teacher_has_a/l_subjects
CREATE TABLE IF NOT EXISTS `teacher_has_a/l_subjects` (
  `id` int NOT NULL AUTO_INCREMENT,
  `teacher_t_ad_no` int NOT NULL,
  `grade_has_a/l_subjects_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_teacher_has_a/l_subjects_grade_has_a/l_subjects1_idx` (`grade_has_a/l_subjects_id`),
  KEY `fk_teacher_has_a/l_subjects_teacher1_idx` (`teacher_t_ad_no`),
  CONSTRAINT `fk_teacher_has_a/l_subjects_grade_has_a/l_subjects1` FOREIGN KEY (`grade_has_a/l_subjects_id`) REFERENCES `grade_has_a/l_subjects` (`id`),
  CONSTRAINT `fk_teacher_has_a/l_subjects_teacher1` FOREIGN KEY (`teacher_t_ad_no`) REFERENCES `teacher` (`t_ad_no`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;

-- Dumping data for table osms.teacher_has_a/l_subjects: ~4 rows (approximately)
INSERT INTO `teacher_has_a/l_subjects` (`id`, `teacher_t_ad_no`, `grade_has_a/l_subjects_id`) VALUES
	(1, 1301, 1),
	(2, 1301, 12),
	(3, 1302, 2),
	(4, 1301, 2);

-- Dumping structure for table osms.teacher_has_subject
CREATE TABLE IF NOT EXISTS `teacher_has_subject` (
  `id` int NOT NULL AUTO_INCREMENT,
  `teacher_t_ad_no` int NOT NULL,
  `grade_has_subject_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_teacher_has_subject_grade_has_subject1_idx` (`grade_has_subject_id`),
  KEY `fk_teacher_has_subject_teacher1_idx` (`teacher_t_ad_no`),
  CONSTRAINT `fk_teacher_has_subject_grade_has_subject1` FOREIGN KEY (`grade_has_subject_id`) REFERENCES `grade_has_subject` (`id`),
  CONSTRAINT `fk_teacher_has_subject_teacher1` FOREIGN KEY (`teacher_t_ad_no`) REFERENCES `teacher` (`t_ad_no`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;

-- Dumping data for table osms.teacher_has_subject: ~4 rows (approximately)
INSERT INTO `teacher_has_subject` (`id`, `teacher_t_ad_no`, `grade_has_subject_id`) VALUES
	(1, 1302, 19),
	(2, 1302, 38),
	(3, 1302, 56),
	(8, 1303, 116),
	(9, 1303, 95);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
