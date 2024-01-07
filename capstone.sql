-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2024 at 06:30 AM
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
-- Database: `capstone`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_accounts`
--

CREATE TABLE `tbl_accounts` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `cnum` varchar(20) NOT NULL,
  `bday` date NOT NULL,
  `age` int(11) NOT NULL,
  `address` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `type` int(11) NOT NULL COMMENT 'admin=1 company=2 client=3',
  `verification_state` int(11) NOT NULL DEFAULT 0 COMMENT '0 = not verified\r\n1 = semi verified\r\n2 = verified',
  `avatar` varchar(50) NOT NULL DEFAULT 'avatar_default.png',
  `department` varchar(50) NOT NULL DEFAULT 'none',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `facebook` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `degree_title` varchar(255) DEFAULT NULL,
  `school_name` varchar(255) DEFAULT NULL,
  `school_address` varchar(255) DEFAULT NULL,
  `school_year_attended` varchar(255) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status_id` int(11) NOT NULL DEFAULT 0 COMMENT '0 = not verified , 1 = verifed by admin',
  `prof_id_image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_accounts`
--

INSERT INTO `tbl_accounts` (`id`, `firstname`, `lastname`, `cnum`, `bday`, `age`, `address`, `email`, `password`, `type`, `verification_state`, `avatar`, `department`, `created_at`, `facebook`, `linkedin`, `instagram`, `degree_title`, `school_name`, `school_address`, `school_year_attended`, `achievement`, `updated_at`, `status_id`, `prof_id_image`) VALUES
(20, 'Billy', 'Admin', '09618915412', '2001-10-26', 22, 'Pinagsama, Taguig', 'admin@capstone.com', 'capstone123', 1, 2, 'avatar_98f13708210194c475687be6106a3b84.jpg', 'none', '2023-11-04 04:30:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-07 05:21:31', 1, NULL),
(60, 'billy', 'bocal', '12312938122', '2023-12-30', 22, 'makati kalayaan', 'bocalbilly@gmail.com', '123456', 2, 0, 'avatar_default.png', 'none', '2023-12-29 16:29:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-04 14:12:17', 1, '../../assets/images/3c246929e1f821e1029d86efa05e4969.jpg'),
(61, 'billy', 'bocal', '09618915412', '2023-12-30', 22, 'POST PROPER SOUTHSIDE MAKATI', 'bileehhbocal@gmail.com', '123456', 3, 2, 'avatar_default.png', 'IT DEPARTMENT', '2023-12-29 16:31:58', 'https://www.facebook.com/settings?tab=privacy&section=canfriend&view', 'https://www.facebook.com/settings?tab=privacy&section=canfriend&view', 'https://www.facebook.com/settings?tab=privacy&section=canfriend&view', '4th year colleges', 'asdasd', 'sadasdgsdfg', '234234', 'dsafsdfasdfasdf', '2024-01-07 05:16:40', 1, '../../assets/images/53cf2f6d7a9e0417a0de8f8db1848bac.jpg'),
(62, 'johnny', 'sins', '45634563456', '2023-12-20', 23, 'katuparang ina ng mga anak ng bobo', 'billbill@gmail.com', '123456', 2, 0, 'avatar_default.png', 'none', '2023-12-29 16:34:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-07 05:23:10', 1, '../../assets/images/3da75ed1c699625ec151217ef57dc8c1.jpg'),
(63, 'billee', 'bocallss', '09618915412', '2024-01-03', 23, 'macopa pinagsamang taguig at makati', 'bocboc@gmail.com', '123456', 2, 0, 'avatar_03afdbd66e7929b125f8597834fa83a4.jpg', 'none', '2024-01-03 15:54:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-04 08:08:51', 1, '../../assets/images/2cb79567649049d66fb467b93fa29cca.jpg'),
(65, 'john2', 'aiden2', '09518887123', '2024-01-04', 23, 'macopa', 'bileehhzz@gmail.com', '123456789', 3, 0, 'avatar_default.png', 'IT DEPARTMENT', '2024-01-03 16:14:21', 'https://www.bing.com/search?q=department+in+an+organization&qs=UT&pq=department+in+an+or&sc=10-19&cv', 'https://www.bing.com/search?q=department+in+an+organization&qs=UT&pq=department+in+an+or&sc=10-19&cv', 'https://www.bing.com/search?q=department+in+an+organization&qs=UT&pq=department+in+an+or&sc=10-19&cvid=63F12A09BE0A4F64A6B12AB235153940&FORM=QBRE&sp=1&ghc=1&lq=0', '4th year collegess', 'asdasdss', 'sadasdgsdfa', '234', 'dsafsdfasdfasdfsss', '2024-01-04 08:04:22', 3, '../../assets/images/677ba3ef156549d2b898b216e40b45f3.jpg'),
(66, 'femela', 'femala', '09518887123', '2024-01-04', 23, 'taguig', 'femfem@gmail.com', '123456', 3, 2, 'avatar_3295c76acbf4caaed33c36b1b5fc2cb1.jpg', 'IT DEPARTMENT', '2024-01-04 08:05:58', 'http://localhost/phpmyadmin/index.php?route=/sql&pos=0&db=epiz_33002118_iconnect&table=tbl_accounts', 'http://localhost/phpmyadmin/index.php?route=/sql&pos=0&db=epiz_33002118_iconnect&table=tbl_accounts', 'http://localhost/phpmyadmin/index.php?route=/sql&pos=0&db=epiz_33002118_iconnect&table=tbl_accounts', '4th year collegess', 'asdasdss', 'sadasdgsdfa', '234', 'dsafsdfasdfasdfsss', '2024-01-04 08:07:32', 1, '../../assets/images/af6e9e4ec1f3e71c4ee35a28b961e77a.jpg'),
(67, 'billeh', 'bocs', '09124238423', '2024-01-04', 24, 'admin', 'angeloredruco@gmail.com', '123456', 2, 0, 'avatar_default.png', 'none', '2024-01-04 14:59:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-04 15:01:19', 3, '../../assets/images/cde1777bc6205c77d7424e414508e193.png'),
(68, 'anjelo', 'redruco', '09123456778', '2024-01-04', 22, 'makati city', 'redruco@gmail.com', '123456', 3, 0, 'avatar_default.png', 'IT DEPARTMENT', '2024-01-04 15:00:47', 'file:///D:/Downloads/Final_Documentation.pdf', 'file:///D:/Downloads/Final_Documentation.pdf', 'file:///D:/Downloads/Final_Documentation.pdf', '4th year', 'UNIVERSITY OF MAKATI', 'MAKATI CITY', '10', 'DEANS LISTER', '2024-01-04 15:00:47', 0, '../../assets/images/ec235e19452c1d8ee16f51e8a7fa46c5.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_applicants`
--

CREATE TABLE `tbl_applicants` (
  `id` int(11) NOT NULL,
  `companyid` int(11) NOT NULL,
  `applicantsid` int(11) NOT NULL,
  `jobid` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1=pending\r\n2=hired\r\n3=decline',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_archieve` int(11) DEFAULT 0,
  `set_time_schedule` datetime DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `status_schedule` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_applicants`
--

INSERT INTO `tbl_applicants` (`id`, `companyid`, `applicantsid`, `jobid`, `status`, `created_at`, `is_archieve`, `set_time_schedule`, `remarks`, `status_schedule`) VALUES
(30, 17, 39, 29, 1, '2023-01-25 08:09:04', 0, NULL, NULL, NULL),
(31, 27, 61, 30, 3, '2023-12-29 16:35:00', 0, '2023-12-30 14:38:00', 'check', 'on going'),
(32, 27, 61, 32, 2, '2024-01-04 14:12:01', 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_company`
--

CREATE TABLE `tbl_company` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `c_logo` varchar(70) NOT NULL DEFAULT 'company_logo_default.png',
  `c_banner` varchar(70) NOT NULL DEFAULT 'company_banner_default.png',
  `c_name` varchar(50) NOT NULL,
  `c_address` varchar(100) NOT NULL,
  `c_cnum` varchar(20) NOT NULL,
  `c_position` varchar(50) NOT NULL,
  `department` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_company`
--

INSERT INTO `tbl_company` (`id`, `userid`, `c_logo`, `c_banner`, `c_name`, `c_address`, `c_cnum`, `c_position`, `department`, `created_at`) VALUES
(27, 60, 'company_logo_072b030ba126b2f4b2374f342be9ed44.png', 'company_banner_072b030ba126b2f4b2374f342be9ed44.png', 'AccessiblePath', 'asdasd', '09518871892', 'HR manager', 'IT DEPARTMENT', '2023-12-29 16:29:00'),
(28, 62, 'company_logo_default.png', 'company_banner_default.png', 'AccessiblePath3', 'asdasd', '09518871892', 'HR manager', 'HR department', '2023-12-29 16:34:38'),
(29, 63, 'company_logo_default.png', 'company_banner_default.png', 'accessible', 'taguig', '09518871892', 'chief financial officer', 'marketing', '2024-01-03 15:54:14'),
(30, 67, 'company_logo_default.png', 'company_banner_default.png', 'AccessiblePathasdasd', 'pinagsama taguig', '09518871892', 'chief financial officer', 'IT DEPARTMENT', '2024-01-04 14:59:15');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_company_reports`
--

CREATE TABLE `tbl_company_reports` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `reported_by` int(11) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_company_reports`
--

INSERT INTO `tbl_company_reports` (`id`, `company_id`, `reported_by`, `message`, `created_at`) VALUES
(4, 27, 61, 'I kindly request that you investigate this matter and take the necessary steps to rectify the inaccuracies in the job listing. Ensuring the correctness of the information on your platform is essential for maintaining the trust and confidence of both job seekers and employers.', '2024-01-07 05:18:36'),
(5, 27, 61, 'I kindly request that you investigate this matter and take the necessary steps to rectify the inaccuracies in the job listing. Ensuring the correctness of the information on your platform is essential for maintaining the trust and confidence of both job seekers and employers.', '2024-01-07 05:18:39'),
(6, 27, 61, 'I kindly request that you investigate this matter and take the necessary steps to rectify the inaccuracies in the job listing. Ensuring the correctness of the information on your platform is essential for maintaining the trust and confidence of both job seekers and employers.', '2024-01-07 05:19:03'),
(7, 27, 61, 'I kindly request that you investigate this matter and take the necessary steps to rectify the inaccuracies in the job listing. Ensuring the correctness of the information on your platform is essential for maintaining the trust and confidence of both job seekers and employers.', '2024-01-07 05:19:10'),
(8, 27, 61, 'I kindly request that you investigate this matter and take the necessary steps to rectify the inaccuracies in the job listing. Ensuring the correctness of the information on your platform is essential for maintaining the trust and confidence of both job seekers and employers.', '2024-01-07 05:20:26'),
(9, 27, 62, 'Upon reviewing the job listing for the position mentioned above, I observed several inaccuracies that may mislead potential applicants. The discrepancies include an incorrect job title, and an inaccurate company name.', '2024-01-07 05:24:12'),
(10, 27, 62, 'Upon reviewing the job listing for the position mentioned above, I observed several inaccuracies that may mislead potential applicants. The discrepancies include an incorrect job title, and an inaccurate company name.', '2024-01-07 05:27:20');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jobs`
--

CREATE TABLE `tbl_jobs` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `j_name` varchar(50) NOT NULL,
  `j_age` int(11) NOT NULL,
  `j_min` decimal(50,0) NOT NULL,
  `j_max` decimal(50,0) NOT NULL,
  `j_currency_symbol` varchar(4) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `j_description` text NOT NULL,
  `j_created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_jobs`
--

INSERT INTO `tbl_jobs` (`id`, `userid`, `j_name`, `j_age`, `j_min`, `j_max`, `j_currency_symbol`, `j_description`, `j_created_at`) VALUES
(32, 60, 'IT Network and System Administrator', 18, 18000, 50000, '₱', '<p><strong>Job Summary</strong>&nbsp;</p>\r\n\r\n<p>As a Network Engineer, you are responsible for designing, implementing, and maintaining an organization&#39;s computer network infrastructure. This includes planning and designing network layouts, installing and configuring network hardware and software, and troubleshooting network issues. You are responsible for managing network security, monitoring network performance, and collaborating with other IT professionals.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Key Responsibilities/Duties</strong>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Designing and implementing network infrastructure, including local area networks (LANs), wide area networks (WANs), and wireless networks&nbsp;&nbsp;</li>\r\n	<li>Configuring and maintaining network hardware, such as switches, routers, and firewalls&nbsp;&nbsp;</li>\r\n	<li>Installing and configuring network software, such as operating systems and network management tools&nbsp;&nbsp;</li>\r\n	<li>Managing network security, including implementing security protocols and monitoring network activity for potential threats&nbsp;&nbsp;</li>\r\n	<li>Monitoring network performance and troubleshooting issues as they arise&nbsp;&nbsp;</li>\r\n	<li>Collaborating with other IT professionals, such as system administrators and network security experts, to ensure that the network infrastructure is aligned with the organization&#39;s goals and needs&nbsp;&nbsp;</li>\r\n	<li>This is a full-time position based at our office location. Some travel may be required.&nbsp;&nbsp;</li>\r\n	<li>Performs other duties as assigned.&nbsp;&nbsp;</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Functional Relationships</strong>&nbsp;</p>\r\n\r\n<p>Internal:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; All employees&nbsp;</p>\r\n\r\n<p>External:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Business partners, clients, etc.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Requirements:</strong>&nbsp;</p>\r\n\r\n<p><em>Qualifications:</em>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Must have a Bachelor&rsquo;s Degree in ECE, Computer Engineering, Computer Science or any other IT related courses&nbsp;</li>\r\n	<li>Industry certifications such as Cisco Certified Network Associate (CCNA), Cisco Certified Network Professional (CCNP), Certified Ethical Hacker (CEH), CompTIA Network+, or Certified Wireless Network Professional (CWNP) is desirable&nbsp;</li>\r\n	<li>Vendor specific training from Cisco, Hewlett Packard Enterprise (HPE), Juniper Networks, Fortinet, Ubiquiti, Networks or any similar is a must&nbsp;</li>\r\n	<li>Strong understanding of networking technologies, protocols, and tools&nbsp;</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Specific skills &amp; abilities:</em>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Excellent communication skills, both verbal and written&nbsp;</li>\r\n	<li>Strong problem-solving skills and ability to think critically&nbsp;</li>\r\n	<li>Professional and customer-service oriented&nbsp;</li>\r\n	<li>Must have strong attention to detail&nbsp;</li>\r\n	<li>Adaptable and open to change&nbsp;</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Personal qualities:</em>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Hardworking, resourceful, and proactive with a sense of urgency&nbsp;</li>\r\n	<li>Good time management and organizational skills&nbsp;</li>\r\n	<li>Ability to provide excellent customer service&nbsp;</li>\r\n	<li>Ability to work effectively in a team environment&nbsp;</li>\r\n	<li>Ability to work under pressure with minimum supervision&nbsp;</li>\r\n	<li>Self-motivated with high level of integrity&nbsp;</li>\r\n</ul>\r\n', '2024-01-04 14:09:55');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_notification`
--

CREATE TABLE `tbl_notification` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL DEFAULT 0,
  `description` varchar(255) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_notification`
--

INSERT INTO `tbl_notification` (`id`, `user_id`, `description`, `status`, `created_at`, `updated_at`) VALUES
(88, 60, 'Bocsss, Bilehs, Applying for  Jabulero', 1, '2023-12-29 16:35:00', '2024-01-04 08:28:24'),
(89, 61, 'You`re hired, Hello billy bocal, We see your resume and you have good potential for this kind of job jabulero , Please contact us on 09518871892. - AccessiblePath. And congratulation!....... please be ready for your interview', 1, '2023-12-29 16:37:04', '2024-01-04 14:08:41'),
(90, 61, 'Hello billy bocal, Your application for this position jabulang was declined - AccessiblePath.', 1, '2024-01-04 02:44:34', '2024-01-04 08:44:12'),
(93, 61, 'AccessiblePath \n Hello billy, AccessiblePath has new open job IT Network and System Administrator.', 0, '2024-01-04 14:09:55', '2024-01-04 14:09:55'),
(94, 66, 'AccessiblePath \n Hello femela, AccessiblePath has new open job IT Network and System Administrator.', 0, '2024-01-04 14:09:56', '2024-01-04 14:09:56'),
(95, 60, 'Bocal, Billy, Applying for  IT Network And System Administrator', 0, '2024-01-04 14:12:01', '2024-01-04 14:12:01'),
(96, 61, 'You`re hired, Hello billy bocal, We see your resume and you have good potential for this kind of job IT Network and System Administrator , Please contact us on 09518871892. - AccessiblePath. And congratulation!....... please be ready for your interview', 0, '2024-01-04 14:14:27', '2024-01-04 14:14:27');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_resume`
--

CREATE TABLE `tbl_resume` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `path` varchar(225) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_resume`
--

INSERT INTO `tbl_resume` (`id`, `userid`, `path`, `created_at`) VALUES
(21, 61, '7f39f8317fbdb1988ef4c628eba02591.pdf', '2023-12-29 16:33:04'),
(22, 66, '3295c76acbf4caaed33c36b1b5fc2cb1.pdf', '2024-01-04 08:07:07');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sms_logs`
--

CREATE TABLE `tbl_sms_logs` (
  `id` bigint(20) NOT NULL,
  `receiverid` bigint(20) NOT NULL DEFAULT 0,
  `message` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_sms_logs`
--

INSERT INTO `tbl_sms_logs` (`id`, `receiverid`, `message`, `created_at`) VALUES
(303, 63, '{\"api_key\":\"2H7GtWOeyWYMff0XzK7en5zEdy6\",\"api_secret\":\"l8KFeCstZZokPZFEW0n8ci8L21k9PQ\",\"from\":\"capstone\",\"text\":\"Hi Billee. Your Company account in LocalMJob has been approved.\",\"to\":\"+6309618915412\"}', '2024-01-03 15:55:50'),
(304, 63, 'Client error: `POST https://api.movider.co/v1/sms` resulted in a `401 Unauthorized` response:\n{\"error\":{\"code\":403,\"name\":\"ERR_AUTHENTICATION_FAILED\",\"description\":\"Authentication field.\"}}\n', '2024-01-03 15:55:51'),
(305, 63, '{\"api_key\":\"2H7GtWOeyWYMff0XzK7en5zEdy6\",\"api_secret\":\"l8KFeCstZZokPZFEW0n8ci8L21k9PQ\",\"from\":\"capstone\",\"text\":\"Hi Billee. Your Company account in LocalMJob has been approved.\",\"to\":\"+6309618915412\"}', '2024-01-03 15:55:51'),
(306, 63, 'Client error: `POST https://api.movider.co/v1/sms` resulted in a `401 Unauthorized` response:\n{\"error\":{\"code\":403,\"name\":\"ERR_AUTHENTICATION_FAILED\",\"description\":\"Authentication field.\"}}\n', '2024-01-03 15:55:52'),
(307, 61, '{\"api_key\":\"2H7GtWOeyWYMff0XzK7en5zEdy6\",\"api_secret\":\"l8KFeCstZZokPZFEW0n8ci8L21k9PQ\",\"from\":\"capstone\",\"text\":\"Hello billy bocal, Your application for this position jabulang was declined - AccessiblePath.\",\"to\":\"+6309618915412\"}', '2024-01-04 02:44:34'),
(308, 61, 'Client error: `POST https://api.movider.co/v1/sms` resulted in a `401 Unauthorized` response:\n{\"error\":{\"code\":403,\"name\":\"ERR_AUTHENTICATION_FAILED\",\"description\":\"Authentication field.\"}}\n', '2024-01-04 02:44:35'),
(309, 64, '{\"api_key\":\"2H7GtWOeyWYMff0XzK7en5zEdy6\",\"api_secret\":\"l8KFeCstZZokPZFEW0n8ci8L21k9PQ\",\"from\":\"capstone\",\"text\":\"Hi Billyw. Your Client account in LocalMJob has been declined.\",\"to\":\"+6309618915415\"}', '2024-01-04 08:04:19'),
(310, 64, 'Client error: `POST https://api.movider.co/v1/sms` resulted in a `401 Unauthorized` response:\n{\"error\":{\"code\":403,\"name\":\"ERR_AUTHENTICATION_FAILED\",\"description\":\"Authentication field.\"}}\n', '2024-01-04 08:04:20'),
(311, 65, '{\"api_key\":\"2H7GtWOeyWYMff0XzK7en5zEdy6\",\"api_secret\":\"l8KFeCstZZokPZFEW0n8ci8L21k9PQ\",\"from\":\"capstone\",\"text\":\"Hi John2. Your Client account in LocalMJob has been declined.\",\"to\":\"+6309518887123\"}', '2024-01-04 08:04:22'),
(312, 65, 'Client error: `POST https://api.movider.co/v1/sms` resulted in a `401 Unauthorized` response:\n{\"error\":{\"code\":403,\"name\":\"ERR_AUTHENTICATION_FAILED\",\"description\":\"Authentication field.\"}}\n', '2024-01-04 08:04:22'),
(313, 66, '{\"api_key\":\"2H7GtWOeyWYMff0XzK7en5zEdy6\",\"api_secret\":\"l8KFeCstZZokPZFEW0n8ci8L21k9PQ\",\"from\":\"capstone\",\"text\":\"Hi John2. Your Client account in LocalMJob has been approved.\",\"to\":\"+6309518887123\"}', '2024-01-04 08:06:29'),
(314, 66, 'Client error: `POST https://api.movider.co/v1/sms` resulted in a `401 Unauthorized` response:\n{\"error\":{\"code\":403,\"name\":\"ERR_AUTHENTICATION_FAILED\",\"description\":\"Authentication field.\"}}\n', '2024-01-04 08:06:29'),
(315, 61, '{\"api_key\":\"2H7GtWOeyWYMff0XzK7en5zEdy6\",\"api_secret\":\"l8KFeCstZZokPZFEW0n8ci8L21k9PQ\",\"from\":\"capstone\",\"text\":\"LocalMJob \n Hello billy, AccessiblePath has new open job IT Network and System Administrator.\",\"to\":\"+6309618915412\"}', '2024-01-04 13:54:19'),
(316, 61, 'Client error: `POST https://api.movider.co/v1/sms` resulted in a `401 Unauthorized` response:\n{\"error\":{\"code\":403,\"name\":\"ERR_AUTHENTICATION_FAILED\",\"description\":\"Authentication field.\"}}\n', '2024-01-04 13:54:20'),
(317, 66, '{\"api_key\":\"2H7GtWOeyWYMff0XzK7en5zEdy6\",\"api_secret\":\"l8KFeCstZZokPZFEW0n8ci8L21k9PQ\",\"from\":\"capstone\",\"text\":\"LocalMJob \n Hello femela, AccessiblePath has new open job IT Network and System Administrator.\",\"to\":\"+6309518887123\"}', '2024-01-04 13:54:20'),
(318, 66, 'Client error: `POST https://api.movider.co/v1/sms` resulted in a `401 Unauthorized` response:\n{\"error\":{\"code\":403,\"name\":\"ERR_AUTHENTICATION_FAILED\",\"description\":\"Authentication field.\"}}\n', '2024-01-04 13:54:20'),
(319, 61, '{\"api_key\":\"2H7GtWOeyWYMff0XzK7en5zEdy6\",\"api_secret\":\"l8KFeCstZZokPZFEW0n8ci8L21k9PQ\",\"from\":\"capstone\",\"text\":\"AccessiblePath \n Hello billy, AccessiblePath has new open job IT Network and System Administrator.\",\"to\":\"+6309618915412\"}', '2024-01-04 14:09:55'),
(320, 61, 'Client error: `POST https://api.movider.co/v1/sms` resulted in a `401 Unauthorized` response:\n{\"error\":{\"code\":403,\"name\":\"ERR_AUTHENTICATION_FAILED\",\"description\":\"Authentication field.\"}}\n', '2024-01-04 14:09:56'),
(321, 66, '{\"api_key\":\"2H7GtWOeyWYMff0XzK7en5zEdy6\",\"api_secret\":\"l8KFeCstZZokPZFEW0n8ci8L21k9PQ\",\"from\":\"capstone\",\"text\":\"AccessiblePath \n Hello femela, AccessiblePath has new open job IT Network and System Administrator.\",\"to\":\"+6309518887123\"}', '2024-01-04 14:09:56'),
(322, 66, 'Client error: `POST https://api.movider.co/v1/sms` resulted in a `401 Unauthorized` response:\n{\"error\":{\"code\":403,\"name\":\"ERR_AUTHENTICATION_FAILED\",\"description\":\"Authentication field.\"}}\n', '2024-01-04 14:09:56'),
(323, 61, '{\"api_key\":\"2H7GtWOeyWYMff0XzK7en5zEdy6\",\"api_secret\":\"l8KFeCstZZokPZFEW0n8ci8L21k9PQ\",\"from\":\"capstone\",\"text\":\"You`re hired, Hello billy bocal, We see your resume and you have good potential for this kind of job IT Network and System Administrator , Please contact us on 09518871892. - AccessiblePath. And congratulation!....... please be ready for your interview\",\"to\":\"+6309618915412\"}', '2024-01-04 14:14:27'),
(324, 61, 'Client error: `POST https://api.movider.co/v1/sms` resulted in a `401 Unauthorized` response:\n{\"error\":{\"code\":403,\"name\":\"ERR_AUTHENTICATION_FAILED\",\"description\":\"Authentication field.\"}}\n', '2024-01-04 14:14:27'),
(325, 67, '{\"api_key\":\"2H7GtWOeyWYMff0XzK7en5zEdy6\",\"api_secret\":\"l8KFeCstZZokPZFEW0n8ci8L21k9PQ\",\"from\":\"capstone\",\"text\":\"Hi Billeh. Your Company account in AccessiblePath has been declined.\",\"to\":\"+6309124238423\"}', '2024-01-04 15:01:19'),
(326, 67, 'Client error: `POST https://api.movider.co/v1/sms` resulted in a `401 Unauthorized` response:\n{\"error\":{\"code\":403,\"name\":\"ERR_AUTHENTICATION_FAILED\",\"description\":\"Authentication field.\"}}\n', '2024-01-04 15:01:19');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_verificationcode`
--

CREATE TABLE `tbl_verificationcode` (
  `id` int(11) NOT NULL,
  `session` varchar(65) NOT NULL,
  `code` varchar(10) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0=not used\r\n1=used',
  `used_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_accounts`
--
ALTER TABLE `tbl_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_applicants`
--
ALTER TABLE `tbl_applicants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_company`
--
ALTER TABLE `tbl_company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_company_reports`
--
ALTER TABLE `tbl_company_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_jobs`
--
ALTER TABLE `tbl_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_notification`
--
ALTER TABLE `tbl_notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_resume`
--
ALTER TABLE `tbl_resume`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sms_logs`
--
ALTER TABLE `tbl_sms_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_verificationcode`
--
ALTER TABLE `tbl_verificationcode`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_accounts`
--
ALTER TABLE `tbl_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `tbl_applicants`
--
ALTER TABLE `tbl_applicants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tbl_company`
--
ALTER TABLE `tbl_company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tbl_company_reports`
--
ALTER TABLE `tbl_company_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_jobs`
--
ALTER TABLE `tbl_jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tbl_notification`
--
ALTER TABLE `tbl_notification`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `tbl_resume`
--
ALTER TABLE `tbl_resume`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_sms_logs`
--
ALTER TABLE `tbl_sms_logs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=327;

--
-- AUTO_INCREMENT for table `tbl_verificationcode`
--
ALTER TABLE `tbl_verificationcode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
