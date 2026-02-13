-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2025 at 05:48 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `accreditation`
--

-- --------------------------------------------------------

--
-- Table structure for table `criteria`
--

CREATE TABLE `criteria` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `criteria`
--

INSERT INTO `criteria` (`id`, `name`) VALUES
(1, 'Academics & Curriculum'),
(2, 'Teachers & Student Learning'),
(3, 'Research Outcomes'),
(4, 'Finance & Infrastructure'),
(5, 'Student Outcomes'),
(6, 'Governance & Sustainability'),
(7, 'sssss');

-- --------------------------------------------------------

--
-- Table structure for table `criterion_templates`
--

CREATE TABLE `criterion_templates` (
  `id` int(11) NOT NULL,
  `criterion_id` int(11) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `original_filename` varchar(255) NOT NULL,
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `criterion_templates`
--

INSERT INTO `criterion_templates` (`id`, `criterion_id`, `file_path`, `original_filename`, `uploaded_at`) VALUES
(3, 1, 'uploads/criterion_templates/pending_5_criterion_1_1753636311.docx', 'Academic Council-C1-A&A.docx', '2025-07-14 14:14:31'),
(5, 4, 'uploads/criterion_templates/criterion_4_1752767003.docx', 'App.docx', '2025-07-17 15:43:23'),
(6, 3, 'uploads/criterion_templates/criterion_3_1752774365.docx', 'App.docx', '2025-07-17 17:46:05');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`) VALUES
(1, 'General Administration'),
(2, 'MCT'),
(3, 'CSE'),
(4, 'EEE'),
(5, 'ECE'),
(6, 'IT'),
(7, 'Civil'),
(8, 'Mech');

-- --------------------------------------------------------

--
-- Table structure for table `job_descriptions`
--

CREATE TABLE `job_descriptions` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `job_descriptions`
--

INSERT INTO `job_descriptions` (`id`, `name`) VALUES
(19, 'Alumni - co-ordinator'),
(5, 'Bos co-ordinator'),
(1, 'Class Counselor'),
(17, 'Club co-ordinator'),
(9, 'Consultancy Co-ordinator'),
(8, 'Continuing Education Co-ordinator'),
(21, 'Higher Studies'),
(3, 'Internship co-ordinator'),
(13, 'ISO - Incharge (Dept)'),
(7, 'MOU - co-ordinator'),
(14, 'NAAC co-ordinator'),
(12, 'NBA - co-ordinator (Dept)'),
(15, 'NIRF Incharge'),
(6, 'NPTEL - co-ordinator'),
(11, 'Patent Incharge'),
(16, 'Placement co-ordinator'),
(10, 'Publication - co-ordinator'),
(4, 'R&D co-ordinator'),
(18, 'Seminar/Workshop/Guest Lecture Organized'),
(20, 'Student/Staff Achievement'),
(2, 'Test co-ordinator');

-- --------------------------------------------------------

--
-- Table structure for table `metrics`
--

CREATE TABLE `metrics` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `criterion_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `metrics`
--

INSERT INTO `metrics` (`id`, `name`, `description`, `criterion_id`) VALUES
(1, 'AC-1.1.1', 'Academic Council Meeting', 1),
(2, 'AC-1.1.2', 'Regulation and Amendments', 1),
(3, 'AC-1.2.1', 'Revision of Policies on Curriculum Development', 1),
(4, 'AC-1.2.2', 'Revision of Policies on Feedback process', 1),
(5, 'AC-1.2.3', 'Revision of policies/ SOPs on Value added / certification', 1),
(6, 'AC-1.2.4', 'Programme wise semester wise course information', 1),
(7, 'AC-1.2.5', 'Programme wise overall course count', 1),
(8, 'AC-1.2.6', NULL, 1),
(9, 'AC-1.2.7', NULL, 1),
(10, 'AC-1.1.7', NULL, 1),
(11, 'AC-1.1.1', NULL, 4),
(12, 'AC-1.3.1', NULL, 1),
(13, 'AC-1.1', NULL, 3),
(14, 'AC-1.4.5', NULL, 4),
(15, 'AC-1.4.6', NULL, 3),
(16, 'AC-1.5.6', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `metric_attachments`
--

CREATE TABLE `metric_attachments` (
  `id` int(11) NOT NULL,
  `metric_id` int(11) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `original_filename` varchar(255) NOT NULL,
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `metric_attachments`
--

INSERT INTO `metric_attachments` (`id`, `metric_id`, `file_path`, `original_filename`, `uploaded_at`) VALUES
(2, 2, 'uploads/metric_attachments/metric_2_6874b260800ca4.79005970.xlsx', 'AC_1.1.2.xlsx', '2025-07-14 07:31:44'),
(3, 3, 'uploads/metric_attachments/metric_3_6874b26b96f8d9.78837175.xlsx', 'AC_1.2.1.xlsx', '2025-07-14 07:31:55'),
(4, 4, 'uploads/metric_attachments/metric_4_6874b27e2ff7d4.48707041.xlsx', 'AC_1.2.2.xlsx', '2025-07-14 07:32:14'),
(5, 5, 'uploads/metric_attachments/metric_5_6874b28a845951.05212720.xlsx', 'AC_1.2.3.xlsx', '2025-07-14 07:32:26'),
(6, 6, 'uploads/metric_attachments/metric_6_6874b2949b2789.75219461.xlsx', 'AC_1.2.4.xlsx', '2025-07-14 07:32:36'),
(7, 7, 'uploads/metric_attachments/metric_7_6874b2a1ac0402.19427853.xlsx', 'AC_1.2.5.xlsx', '2025-07-14 07:32:49'),
(8, 1, 'uploads/metric_attachments/pending_5_metric_1_688661f2a46c6_UnderstandingDeepLearning_05_29_25_C.pdf', 'UnderstandingDeepLearning_05_29_25_C.pdf', '2025-07-16 15:22:41'),
(10, 8, 'uploads/metric_attachments/metric_8_687907c0321017.77693092.xlsx', '.trashed-1755066108-Consolidated -SampleExcel-1_AC-1.2.4.xlsx', '2025-07-17 14:25:04'),
(11, 9, 'uploads/metric_attachments/metric_9_68790fb27b9cc_.trashed-1755066108-Consolidated-SampleExcel-1_AC-1.1.2.xlsx', '.trashed-1755066108-Consolidated -SampleExcel-1_AC-1.1.2.xlsx', '2025-07-17 14:58:58'),
(12, 11, 'uploads/metric_attachments/metric_11_68791a0a10689_Untitled4.pdf', 'Untitled (4).pdf', '2025-07-17 15:43:06'),
(13, 12, 'uploads/metric_attachments/metric_12_687933c707574_.trashed-1755066108-Consolidated-SampleExcel-1_AC-1.1.2.xlsx', '.trashed-1755066108-Consolidated -SampleExcel-1_AC-1.1.2.xlsx', '2025-07-17 17:32:55'),
(14, 13, 'uploads/metric_attachments/metric_13_687936bc7ef50_AC_1.1.1.xlsx', 'AC_1.1.1.xlsx', '2025-07-17 17:45:32'),
(15, 14, 'uploads/metric_attachments/metric_14_68793ac53442f3.46474372.pdf', 'Untitled (1).pdf', '2025-07-17 18:02:45'),
(16, 16, 'uploads/metric_attachments/metric_16_687a23111ec297.83581074.pdf', 'Untitled (2).pdf', '2025-07-18 10:33:53');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL COMMENT 'The user who receives the notification',
  `message` varchar(255) NOT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `link` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `message`, `is_read`, `link`, `created_at`) VALUES
(1, 3, 'User details for \'G.Kirubasri\' have been updated.', 0, 'hod_dashboard.php#user-management', '2025-07-27 17:00:57'),
(2, 5, 'User details for \'G.Kirubasri\' have been updated.', 1, 'hod_dashboard.php#user-management', '2025-07-27 17:00:57'),
(3, 6, 'User details for \'G.Kirubasri\' have been updated.', 0, 'hod_dashboard.php#user-management', '2025-07-27 17:00:57'),
(4, 7, 'User details for \'G.Kirubasri\' have been updated.', 0, 'hod_dashboard.php#user-management', '2025-07-27 17:00:57'),
(5, 8, 'User details for \'G.Kirubasri\' have been updated.', 0, 'hod_dashboard.php#user-management', '2025-07-27 17:00:57'),
(6, 9, 'User details for \'G.Kirubasri\' have been updated.', 0, 'hod_dashboard.php#user-management', '2025-07-27 17:00:57'),
(7, 10, 'User details for \'G.Kirubasri\' have been updated.', 0, 'hod_dashboard.php#user-management', '2025-07-27 17:00:57'),
(8, 24, 'User details for \'G.Kirubasri\' have been updated.', 0, 'hod_dashboard.php#user-management', '2025-07-27 17:00:57'),
(9, 3, 'User details for \'B.Sathiyabham\' have been updated.', 0, 'hod_dashboard.php#user-management', '2025-07-27 17:20:42'),
(10, 5, 'User details for \'B.Sathiyabham\' have been updated.', 1, 'hod_dashboard.php#user-management', '2025-07-27 17:20:42'),
(11, 6, 'User details for \'B.Sathiyabham\' have been updated.', 0, 'hod_dashboard.php#user-management', '2025-07-27 17:20:42'),
(12, 7, 'User details for \'B.Sathiyabham\' have been updated.', 0, 'hod_dashboard.php#user-management', '2025-07-27 17:20:42'),
(13, 8, 'User details for \'B.Sathiyabham\' have been updated.', 0, 'hod_dashboard.php#user-management', '2025-07-27 17:20:42'),
(14, 9, 'User details for \'B.Sathiyabham\' have been updated.', 0, 'hod_dashboard.php#user-management', '2025-07-27 17:20:42'),
(15, 10, 'User details for \'B.Sathiyabham\' have been updated.', 0, 'hod_dashboard.php#user-management', '2025-07-27 17:20:42'),
(16, 24, 'User details for \'B.Sathiyabham\' have been updated.', 0, 'hod_dashboard.php#user-management', '2025-07-27 17:20:42'),
(17, 3, 'User details for \'G.Vidhya\' have been updated.\n\nChanges made:\n• Role: Faculty → Faculty\n• Department: CSE → CSE\n• Job Description: Placement co-ordinator → Publication - co-ordinator\n', 0, 'hod_dashboard.php#user-management', '2025-07-27 17:37:26'),
(18, 5, 'User details for \'G.Vidhya\' have been updated.\n\nChanges made:\n• Role: Faculty → Faculty\n• Department: CSE → CSE\n• Job Description: Placement co-ordinator → Publication - co-ordinator\n', 1, 'hod_dashboard.php#user-management', '2025-07-27 17:37:26'),
(19, 6, 'User details for \'G.Vidhya\' have been updated.\n\nChanges made:\n• Role: Faculty → Faculty\n• Department: CSE → CSE\n• Job Description: Placement co-ordinator → Publication - co-ordinator\n', 0, 'hod_dashboard.php#user-management', '2025-07-27 17:37:26'),
(20, 7, 'User details for \'G.Vidhya\' have been updated.\n\nChanges made:\n• Role: Faculty → Faculty\n• Department: CSE → CSE\n• Job Description: Placement co-ordinator → Publication - co-ordinator\n', 0, 'hod_dashboard.php#user-management', '2025-07-27 17:37:26'),
(21, 8, 'User details for \'G.Vidhya\' have been updated.\n\nChanges made:\n• Role: Faculty → Faculty\n• Department: CSE → CSE\n• Job Description: Placement co-ordinator → Publication - co-ordinator\n', 0, 'hod_dashboard.php#user-management', '2025-07-27 17:37:26'),
(22, 9, 'User details for \'G.Vidhya\' have been updated.\n\nChanges made:\n• Role: Faculty → Faculty\n• Department: CSE → CSE\n• Job Description: Placement co-ordinator → Publication - co-ordinator\n', 0, 'hod_dashboard.php#user-management', '2025-07-27 17:37:26'),
(23, 10, 'User details for \'G.Vidhya\' have been updated.\n\nChanges made:\n• Role: Faculty → Faculty\n• Department: CSE → CSE\n• Job Description: Placement co-ordinator → Publication - co-ordinator\n', 0, 'hod_dashboard.php#user-management', '2025-07-27 17:37:26'),
(24, 24, 'User details for \'G.Vidhya\' have been updated.\n\nChanges made:\n• Role: Faculty → Faculty\n• Department: CSE → CSE\n• Job Description: Placement co-ordinator → Publication - co-ordinator\n', 0, 'hod_dashboard.php#user-management', '2025-07-27 17:37:26'),
(25, 5, 'You have assigned new tasks to faculty members.\n\nAssignment Details:\n• Metrics: AC-1.2.1\n• Faculty Members: 1 assigned\n• Due Date: July 30, 2025\n• Emails Sent: 0 of 1\n', 1, 'lead_dashboard.php#manage-tasks', '2025-07-29 03:54:45'),
(26, 3, 'A new user, \'Divya Prakash\', has been added to the system.', 0, 'hod_dashboard.php#user-management', '2025-07-29 06:11:24'),
(27, 5, 'A new user, \'Divya Prakash\', has been added to the system.', 0, 'hod_dashboard.php#user-management', '2025-07-29 06:11:24'),
(28, 6, 'A new user, \'Divya Prakash\', has been added to the system.', 0, 'hod_dashboard.php#user-management', '2025-07-29 06:11:24'),
(29, 7, 'A new user, \'Divya Prakash\', has been added to the system.', 0, 'hod_dashboard.php#user-management', '2025-07-29 06:11:24'),
(30, 8, 'A new user, \'Divya Prakash\', has been added to the system.', 0, 'hod_dashboard.php#user-management', '2025-07-29 06:11:24'),
(31, 9, 'A new user, \'Divya Prakash\', has been added to the system.', 0, 'hod_dashboard.php#user-management', '2025-07-29 06:11:24'),
(32, 10, 'A new user, \'Divya Prakash\', has been added to the system.', 0, 'hod_dashboard.php#user-management', '2025-07-29 06:11:24'),
(33, 24, 'A new user, \'Divya Prakash\', has been added to the system.', 0, 'hod_dashboard.php#user-management', '2025-07-29 06:11:24'),
(34, 5, 'You have assigned new tasks to faculty members.\n\nAssignment Details:\n• Metrics: AC-1.2.2\n• Faculty Members: 1 assigned\n• Due Date: July 31, 2025\n• Emails Sent: 0 of 1\n', 1, 'lead_dashboard.php#manage-tasks', '2025-07-29 06:11:55'),
(35, 5, 'You have assigned new tasks to faculty members.\n\nAssignment Details:\n• Metrics: AC-1.1.2\n• Faculty Members: 1 assigned\n• Due Date: July 26, 2025\n• Emails Sent: 0 of 1\n', 1, 'lead_dashboard.php#manage-tasks', '2025-07-29 06:12:55'),
(36, 5, 'You have assigned new tasks to faculty members.\n\nAssignment Details:\n• Metrics: AC-1.2.1\n• Faculty Members: 1 assigned\n• Due Date: July 31, 2025\n• Emails Sent: 0 of 1\n', 0, 'lead_dashboard.php#manage-tasks', '2025-07-29 06:19:47'),
(37, 5, 'You have assigned new tasks to faculty members.\n\nAssignment Details:\n• Metrics: AC-1.1.1, AC-1.2.1, AC-1.2.4, AC-1.2.7\n• Faculty Members: 1 assigned\n• Due Date: July 30, 2025\n• Emails Sent: 0 of 1\n', 0, 'lead_dashboard.php#manage-tasks', '2025-07-29 06:51:38');

-- --------------------------------------------------------

--
-- Table structure for table `pending_updates`
--

CREATE TABLE `pending_updates` (
  `id` int(11) NOT NULL,
  `update_type` enum('criterion_template','metric_attachment') NOT NULL,
  `target_id` int(11) NOT NULL COMMENT 'criterion_id or metric_id',
  `requested_by_user_id` int(11) NOT NULL,
  `new_file_path` varchar(255) NOT NULL,
  `original_filename` varchar(255) NOT NULL,
  `status` enum('Pending','Approved','Rejected') NOT NULL DEFAULT 'Pending',
  `remarks` text DEFAULT NULL,
  `requested_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `reviewed_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pending_updates`
--

INSERT INTO `pending_updates` (`id`, `update_type`, `target_id`, `requested_by_user_id`, `new_file_path`, `original_filename`, `status`, `remarks`, `requested_at`, `reviewed_at`) VALUES
(1, 'metric_attachment', 1, 5, 'uploads/pending_updates/pending_5_metric_1_688657c8c7234_schema1.pdf', 'schema (1).pdf', '', 'okay', '2025-07-27 16:46:00', '2025-07-27 16:46:35'),
(2, 'criterion_template', 1, 5, 'uploads/pending_updates/pending_5_criterion_1_1753635159.docx', 'proof_4_68724ac9aa79a8.65199677.docx', '', 'abcd', '2025-07-27 16:52:39', '2025-07-27 16:53:04'),
(3, 'criterion_template', 1, 5, 'uploads/pending_updates/pending_5_criterion_1_1753636311.docx', 'Academic Council-C1-A&A.docx', '', 'abcd', '2025-07-27 17:11:51', '2025-07-27 17:12:18'),
(4, 'metric_attachment', 1, 5, 'uploads/pending_updates/pending_5_metric_1_688661f2a46c6_UnderstandingDeepLearning_05_29_25_C.pdf', 'UnderstandingDeepLearning_05_29_25_C.pdf', '', 'a', '2025-07-27 17:29:22', '2025-07-27 17:29:49');

-- --------------------------------------------------------

--
-- Table structure for table `proofs`
--

CREATE TABLE `proofs` (
  `id` int(11) NOT NULL,
  `task_assignee_id` int(11) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `original_filename` varchar(255) NOT NULL,
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `proofs`
--

INSERT INTO `proofs` (`id`, `task_assignee_id`, `file_path`, `original_filename`, `uploaded_at`) VALUES
(15, 24, 'uploads/proof_17_68750e67658e68.73715347.docx', 'task_13_6874f7f3775f1.docx', '2025-07-14 14:04:23'),
(16, 28, 'uploads/proof_19_68753d0f4c08a6.57514661.docx', 'write.docx', '2025-07-14 17:23:27'),
(17, 28, 'uploads/proof_19_687612ebec8aa9.38421725.docx', 'task_13_6874f7f3775f1.docx', '2025-07-15 08:35:55'),
(18, 34, 'uploads/proof_23_687617f6ba8c30.41445217.jpg', 'IMG-20250714-WA0005.jpg', '2025-07-15 08:57:26'),
(19, 36, 'uploads/proof_25_6877d1e4e4b9c4.39757285.xlsx', 'metric_1_6877c3c18ed3b5.97534957.xlsx', '2025-07-16 16:23:00'),
(20, 37, 'uploads/proof_26_6877da92b9c419.79019217.xlsx', 'metric_1_6877c3c18ed3b5.97534957.xlsx', '2025-07-16 17:00:02'),
(21, 60, 'uploads/proof_47_6879102f774c73.11974430.pdf', 'Untitled (2).pdf', '2025-07-17 15:01:03'),
(22, 61, 'uploads/proof_48_68793b94338439.48824670.pdf', 'Untitled (3).pdf', '2025-07-17 18:06:12');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'Admin'),
(2, 'HOD'),
(3, 'Criterion Lead'),
(4, 'Faculty');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(11) NOT NULL,
  `metric_id` int(11) NOT NULL,
  `assigned_by_user_id` int(11) NOT NULL,
  `due_date` date NOT NULL,
  `status` enum('Pending','In Progress','Submitted','Approved','Rejected') NOT NULL DEFAULT 'Pending',
  `remarks` text DEFAULT NULL,
  `working_file_path` varchar(255) DEFAULT NULL,
  `assigned_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `metric_id`, `assigned_by_user_id`, `due_date`, `status`, `remarks`, `working_file_path`, `assigned_at`) VALUES
(17, 1, 5, '2025-07-18', 'Approved', 'hfy', 'uploads/task_working_files/task_17_68750e449280b.docx', '2025-07-14 14:03:48'),
(19, 2, 5, '2025-07-18', 'Approved', '', 'uploads/task_working_files/task_19_68752b0603c53.docx', '2025-07-14 16:06:30'),
(21, 1, 5, '2025-07-18', 'Pending', NULL, 'uploads/task_working_files/task_21_68760d18c03e3.docx', '2025-07-15 08:11:04'),
(23, 5, 5, '2025-07-17', 'Approved', 'v', 'uploads/task_working_files/task_23_687614c1790d8.docx', '2025-07-15 08:43:45'),
(24, 7, 5, '2025-07-26', 'Pending', NULL, 'uploads/task_working_files/task_24_687614d229b54.docx', '2025-07-15 08:44:02'),
(25, 1, 5, '2025-07-17', 'Approved', ',lolm', 'uploads/task_working_files/task_25_6877cd98d1a9a.docx', '2025-07-16 16:04:40'),
(26, 1, 5, '2025-07-23', 'Approved', '', 'uploads/task_working_files/task_26_6877d1551c0b3.docx', '2025-07-16 16:20:37'),
(27, 1, 5, '2025-07-22', 'Pending', NULL, 'uploads/task_working_files/task_27_6877dc25b723e.docx', '2025-07-16 17:06:45'),
(28, 5, 5, '2025-07-28', 'Pending', NULL, 'uploads/task_working_files/task_28_6878afc9a5f1b.docx', '2025-07-17 08:09:45'),
(29, 5, 5, '2025-07-28', 'Pending', NULL, 'uploads/task_working_files/task_29_6878afdb1dba1.docx', '2025-07-17 08:10:03'),
(30, 1, 5, '2025-07-22', 'Pending', NULL, 'uploads/task_working_files/task_30_6878cef83ace8.docx', '2025-07-17 10:22:48'),
(31, 1, 5, '2025-07-22', 'Pending', NULL, 'uploads/task_working_files/task_31_6878cf035856a.docx', '2025-07-17 10:22:59'),
(32, 1, 5, '2025-07-22', 'Pending', NULL, 'uploads/task_working_files/task_32_6878cf0e75bce.docx', '2025-07-17 10:23:10'),
(33, 1, 5, '2025-07-22', 'Pending', NULL, 'uploads/task_working_files/task_33_6878cf0e7befe.docx', '2025-07-17 10:23:10'),
(34, 1, 5, '2025-07-22', 'Pending', NULL, 'uploads/task_working_files/task_34_6878cf0e82900.docx', '2025-07-17 10:23:10'),
(35, 1, 5, '2025-07-22', 'Pending', NULL, 'uploads/task_working_files/task_35_6878cf0e8f599.docx', '2025-07-17 10:23:10'),
(36, 1, 5, '2025-07-22', 'Pending', NULL, 'uploads/task_working_files/task_36_6878cf0e9546d.docx', '2025-07-17 10:23:10'),
(37, 1, 5, '2025-07-22', 'Pending', NULL, 'uploads/task_working_files/task_37_6878cf0e9ad12.docx', '2025-07-17 10:23:10'),
(38, 1, 5, '2025-07-22', 'Pending', NULL, 'uploads/task_working_files/task_38_6878cf0ea66cd.docx', '2025-07-17 10:23:10'),
(39, 1, 5, '2025-07-22', 'Pending', NULL, 'uploads/task_working_files/task_39_6878cf0eac1f2.docx', '2025-07-17 10:23:10'),
(40, 1, 5, '2025-07-22', 'Pending', NULL, 'uploads/task_working_files/task_40_6878cf0eb1b93.docx', '2025-07-17 10:23:10'),
(41, 1, 5, '2025-07-22', 'Pending', NULL, 'uploads/task_working_files/task_41_6878cf0eb6a10.docx', '2025-07-17 10:23:10'),
(42, 1, 5, '2025-07-25', 'Pending', NULL, 'uploads/task_working_files/task_42_6878cfe5f1b0e.docx', '2025-07-17 10:26:45'),
(43, 1, 5, '2025-07-21', 'Pending', NULL, 'uploads/task_working_files/task_43_6878d22ecdb6d.docx', '2025-07-17 10:36:30'),
(45, 1, 5, '2025-07-31', 'Pending', NULL, 'uploads/task_working_files/task_45_6878d47cd43ee.docx', '2025-07-17 10:46:20'),
(46, 3, 5, '2025-07-21', 'Pending', NULL, 'uploads/task_working_files/task_46_6878d4e300369.docx', '2025-07-17 10:48:02'),
(47, 1, 5, '2025-07-18', 'Approved', 'd', 'uploads/task_working_files/task_47_6879014eb9362.docx', '2025-07-17 13:57:34'),
(48, 8, 5, '2025-07-18', 'Submitted', NULL, 'uploads/task_working_files/task_48_6879080a205ca.docx', '2025-07-17 14:26:18'),
(49, 10, 5, '2025-07-18', 'Pending', NULL, 'uploads/task_working_files/task_49_687917db11cc3.docx', '2025-07-17 15:33:47'),
(50, 12, 5, '2025-07-18', 'Pending', NULL, 'uploads/task_working_files/task_50_687933eec3133.docx', '2025-07-17 17:33:34'),
(52, 1, 5, '2025-07-18', 'Pending', NULL, 'uploads/task_working_files/task_52_68793b3765d63.docx', '2025-07-17 18:04:39'),
(53, 1, 5, '2025-07-24', 'Pending', NULL, 'uploads/task_working_files/task_53_687d08d906264.docx', '2025-07-20 15:18:49'),
(54, 3, 5, '2025-07-30', 'Pending', NULL, 'uploads/task_working_files/task_54_68884602c55c0.docx', '2025-07-29 03:54:42'),
(55, 4, 5, '2025-07-31', 'Pending', NULL, 'uploads/task_working_files/task_55_6888662ab043a.docx', '2025-07-29 06:11:54'),
(56, 2, 5, '2025-07-26', 'Pending', NULL, 'uploads/task_working_files/task_56_688866667bad7.docx', '2025-07-29 06:12:54'),
(57, 3, 5, '2025-07-31', 'Pending', NULL, 'uploads/task_working_files/task_57_688868024a02d.docx', '2025-07-29 06:19:46'),
(58, 1, 5, '2025-07-30', 'Pending', NULL, 'uploads/task_working_files/task_58_68886f7a12bce.docx', '2025-07-29 06:51:38'),
(59, 3, 5, '2025-07-30', 'Pending', NULL, 'uploads/task_working_files/task_59_68886f7a14ecb.docx', '2025-07-29 06:51:38'),
(60, 6, 5, '2025-07-30', 'Pending', NULL, 'uploads/task_working_files/task_60_68886f7a1bde8.docx', '2025-07-29 06:51:38'),
(61, 9, 5, '2025-07-30', 'Pending', NULL, 'uploads/task_working_files/task_61_68886f7a1d42d.docx', '2025-07-29 06:51:38');

-- --------------------------------------------------------

--
-- Table structure for table `task_assignees`
--

CREATE TABLE `task_assignees` (
  `id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `submission_status` enum('Not Submitted','Submitted') NOT NULL DEFAULT 'Not Submitted'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `task_assignees`
--

INSERT INTO `task_assignees` (`id`, `task_id`, `user_id`, `submission_status`) VALUES
(24, 17, 17, 'Submitted'),
(28, 19, 11, 'Submitted'),
(31, 21, 17, 'Not Submitted'),
(34, 23, 11, 'Submitted'),
(35, 24, 11, 'Not Submitted'),
(36, 25, 20, 'Submitted'),
(37, 26, 20, 'Submitted'),
(38, 27, 20, 'Not Submitted'),
(39, 28, 20, 'Not Submitted'),
(40, 29, 20, 'Not Submitted'),
(41, 30, 20, 'Not Submitted'),
(42, 31, 20, 'Not Submitted'),
(43, 32, 20, 'Not Submitted'),
(44, 33, 20, 'Not Submitted'),
(45, 34, 20, 'Not Submitted'),
(46, 35, 20, 'Not Submitted'),
(47, 36, 20, 'Not Submitted'),
(48, 37, 20, 'Not Submitted'),
(49, 38, 20, 'Not Submitted'),
(50, 39, 20, 'Not Submitted'),
(51, 40, 20, 'Not Submitted'),
(52, 41, 20, 'Not Submitted'),
(53, 42, 10, 'Not Submitted'),
(54, 43, 17, 'Not Submitted'),
(55, 43, 3, 'Not Submitted'),
(58, 45, 20, 'Not Submitted'),
(59, 46, 20, 'Not Submitted'),
(60, 47, 20, 'Submitted'),
(61, 48, 20, 'Submitted'),
(62, 49, 20, 'Not Submitted'),
(63, 50, 20, 'Not Submitted'),
(65, 52, 20, 'Not Submitted'),
(66, 53, 17, 'Not Submitted'),
(67, 54, 20, 'Not Submitted'),
(68, 55, 17, 'Not Submitted'),
(69, 56, 35, 'Not Submitted'),
(70, 57, 35, 'Not Submitted'),
(71, 58, 20, 'Not Submitted'),
(72, 59, 20, 'Not Submitted'),
(73, 60, 20, 'Not Submitted'),
(74, 61, 20, 'Not Submitted');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `employee_id` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `department_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `criterion_id` int(11) DEFAULT NULL,
  `job_description_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `employee_id`, `email`, `password`, `department_id`, `role_id`, `criterion_id`, `job_description_id`) VALUES
(1, 'Principal', '25XXXPRI', 'a@college.ac.in', '$2y$10$veMVdjA6YiMWg/BYwkdpL.NdaK887xxrGxj/TZB4LKdp/R6qAve.C', 1, 1, NULL, 15),
(2, 'P.Suresh', '25YYYIQA', 'b@college.ac.in', '$2y$10$veMVdjA6YiMWg/BYwkdpL.NdaK887xxrGxj/TZB4LKdp/R6qAve.C', 2, 1, NULL, 1),
(3, 'B.Sathiyabham', '25CSESAT', 'c@college.ac.in', '$2y$10$veMVdjA6YiMWg/BYwkdpL.NdaK887xxrGxj/TZB4LKdp/R6qAve.C', 3, 2, NULL, NULL),
(4, 'P.Suresh', '25YYYIQA', 'd@college.ac.in', '$2y$10$veMVdjA6YiMWg/BYwkdpL.NdaK887xxrGxj/TZB4LKdp/R6qAve.C', 2, 2, NULL, 2),
(5, 'S.Anitha', '25CSEANI', 'e@college.ac.in', '$2y$10$veMVdjA6YiMWg/BYwkdpL.NdaK887xxrGxj/TZB4LKdp/R6qAve.C', 3, 3, 1, NULL),
(6, 'S.Madhubalan', '25EEEMAD', 'f@college.ac.in', '$2y$10$veMVdjA6YiMWg/BYwkdpL.NdaK887xxrGxj/TZB4LKdp/R6qAve.C', 4, 3, 2, NULL),
(7, 'N.Sasirekha', '25ECESAS', 'g@college.ac.in', '$2y$10$veMVdjA6YiMWg/BYwkdpL.NdaK887xxrGxj/TZB4LKdp/R6qAve.C', 5, 3, 3, 4),
(8, 'S. Jagan', NULL, 'jagan@college.ac.in', '$2y$10$veMVdjA6YiMWg/BYwkdpL.NdaK887xxrGxj/TZB4LKdp/R6qAve.C', 7, 3, 4, 18),
(9, 'P. Ilanchezhian', NULL, 'ilan@college.ac.in', '$2y$10$veMVdjA6YiMWg/BYwkdpL.NdaK887xxrGxj/TZB4LKdp/R6qAve.C', 6, 3, 5, 14),
(10, 'A. Sivapragasam', NULL, 'siva@college.ac.in', '$2y$10$veMVdjA6YiMWg/BYwkdpL.NdaK887xxrGxj/TZB4LKdp/R6qAve.C', 8, 3, 6, 9),
(11, 'G.Kirubasri', '25CSEKIR', 'h@college.ac.in', '$2y$10$veMVdjA6YiMWg/BYwkdpL.NdaK887xxrGxj/TZB4LKdp/R6qAve.C', 3, 4, NULL, 11),
(12, 'G.Vidhya', '25CSEVID', 'i@college.ac.in', '$2y$10$veMVdjA6YiMWg/BYwkdpL.NdaK887xxrGxj/TZB4LKdp/R6qAve.C', 3, 4, NULL, 10),
(13, 'D.Kesavan', '25EEEKES', 'j@college.ac.in', '$2y$10$veMVdjA6YiMWg/BYwkdpL.NdaK887xxrGxj/TZB4LKdp/R6qAve.C', 4, 4, NULL, NULL),
(14, 'S.Arun Kumar', '25EEEARU', 'k@college.ac.in', '$2y$10$veMVdjA6YiMWg/BYwkdpL.NdaK887xxrGxj/TZB4LKdp/R6qAve.C', 4, 4, NULL, 20),
(15, 'D.P. Sangeetha', '25ECESAN', 'l@college.ac.in', '$2y$10$veMVdjA6YiMWg/BYwkdpL.NdaK887xxrGxj/TZB4LKdp/R6qAve.C', 5, 4, NULL, NULL),
(16, 'M.Susaritha', '25ECESUS', 'm@college.ac.in', '$2y$10$veMVdjA6YiMWg/BYwkdpL.NdaK887xxrGxj/TZB4LKdp/R6qAve.C', 5, 4, NULL, NULL),
(17, 'ALFA', '25EEEALF', 'alfadeen2166@gmail.com', '$2y$10$veMVdjA6YiMWg/BYwkdpL.NdaK887xxrGxj/TZB4LKdp/R6qAve.C', 4, 4, NULL, 16),
(18, 'madhan', '25EEEMAD', 'x@college.ac.in', '$2y$10$veMVdjA6YiMWg/BYwkdpL.NdaK887xxrGxj/TZB4LKdp/R6qAve.C', 4, 2, NULL, NULL),
(20, 'subash', 'we2345', 'subashnagarajanbaby@gmail.com', '$2y$10$veMVdjA6YiMWg/BYwkdpL.NdaK887xxrGxj/TZB4LKdp/R6qAve.C', 2, 4, NULL, 17),
(24, 'bhavan', '25CSEBHA', 'bha@college.ac.in', '$2y$10$veMVdjA6YiMWg/BYwkdpL.NdaK887xxrGxj/TZB4LKdp/R6qAve.C', 3, 3, 1, 15),
(35, 'Divya Prakash', '25CSEDIV', 'dpk10.04.2006@gmail.com', '$2y$10$n4VqBlI1pcKeklP7h77mSOfdyBYcneGJPB8DMU8kglERxXZAy.sO6', 3, 4, NULL, 14);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `criteria`
--
ALTER TABLE `criteria`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `criterion_templates`
--
ALTER TABLE `criterion_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `criterion_id` (`criterion_id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_descriptions`
--
ALTER TABLE `job_descriptions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `metrics`
--
ALTER TABLE `metrics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_metrics_criterion` (`criterion_id`);

--
-- Indexes for table `metric_attachments`
--
ALTER TABLE `metric_attachments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uk_metric_id` (`metric_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_notifications_user` (`user_id`);

--
-- Indexes for table `pending_updates`
--
ALTER TABLE `pending_updates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `requested_by_user_id` (`requested_by_user_id`);

--
-- Indexes for table `proofs`
--
ALTER TABLE `proofs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `proofs_ibfk_1` (`task_assignee_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tasks_ibfk_2` (`assigned_by_user_id`),
  ADD KEY `tasks_ibfk_1` (`metric_id`);

--
-- Indexes for table `task_assignees`
--
ALTER TABLE `task_assignees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `task_user_unique` (`task_id`,`user_id`),
  ADD KEY `task_assignees_ibfk_2` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_users_department` (`department_id`),
  ADD KEY `fk_users_role` (`role_id`),
  ADD KEY `fk_users_criterion` (`criterion_id`),
  ADD KEY `fk_users_job_description` (`job_description_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `criteria`
--
ALTER TABLE `criteria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `criterion_templates`
--
ALTER TABLE `criterion_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `job_descriptions`
--
ALTER TABLE `job_descriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `metrics`
--
ALTER TABLE `metrics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `metric_attachments`
--
ALTER TABLE `metric_attachments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `pending_updates`
--
ALTER TABLE `pending_updates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `proofs`
--
ALTER TABLE `proofs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `task_assignees`
--
ALTER TABLE `task_assignees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `metrics`
--
ALTER TABLE `metrics`
  ADD CONSTRAINT `fk_metrics_criterion` FOREIGN KEY (`criterion_id`) REFERENCES `criteria` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `metric_attachments`
--
ALTER TABLE `metric_attachments`
  ADD CONSTRAINT `fk_metric_attachment` FOREIGN KEY (`metric_id`) REFERENCES `metrics` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `fk_notifications_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pending_updates`
--
ALTER TABLE `pending_updates`
  ADD CONSTRAINT `pending_updates_ibfk_1` FOREIGN KEY (`requested_by_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `proofs`
--
ALTER TABLE `proofs`
  ADD CONSTRAINT `proofs_ibfk_1` FOREIGN KEY (`task_assignee_id`) REFERENCES `task_assignees` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_ibfk_1` FOREIGN KEY (`metric_id`) REFERENCES `metrics` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tasks_ibfk_2` FOREIGN KEY (`assigned_by_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `task_assignees`
--
ALTER TABLE `task_assignees`
  ADD CONSTRAINT `task_assignees_ibfk_1` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `task_assignees_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_users_criterion` FOREIGN KEY (`criterion_id`) REFERENCES `criteria` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_users_department` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_users_job_description` FOREIGN KEY (`job_description_id`) REFERENCES `job_descriptions` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_users_role` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
