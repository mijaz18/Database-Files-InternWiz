--
-- Database: `samplevideo_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--
CREATE TABLE IF NOT EXISTS 'Students' (
  `student_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`student_id`)
);
--
-- Dumping data for table `user_details`
--

INSERT INTO `Students` (`student_id`, `name`, `department`, `email`) VALUES
(000001, 'David John', '', 'djohn@college.edu', 1),
(000002, 'Rogers Paul', '', 'djohn@college.edu', 1),
(000003, 'Maria Sanders', '', 'djohn@college.edu', 1),
(000004, 'Mark Thomas', '', 'djohn@college.edu', 1),
(000005, 'Morris Miller', '', 'djohn@college.edu', 1),
(000006, 'Daniel Michael', '', 'djohn@college.edu', 1),
(000007, 'Mark Mike', 'sanders', 'paul', 'Female', 'djohn@college.edu', 1),
(000008, 'David John', 'mark', 'mike', 'Male', 'djohn@college.edu', 1),
(000009, 'Morgan Maria', 'morgan', 'maria', 'Female', 'djohn@college.edu', 1),
(0000010, 'Paul Sanders', 'paul', 'miller', 'Female', 'djohn@college.edu', 1);
