-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 08, 2022 at 04:47 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u104679525_prashu`
--

-- --------------------------------------------------------

--
-- Table structure for table `country_details`
--

CREATE TABLE `country_details` (
  `id` int(11) NOT NULL,
  `country` text NOT NULL,
  `country_name` text NOT NULL,
  `state1` text NOT NULL,
  `city` text NOT NULL,
  `pincode` int(11) NOT NULL,
  `phone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `country_details`
--

INSERT INTO `country_details` (`id`, `country`, `country_name`, `state1`, `city`, `pincode`, `phone`) VALUES
(1, 'IN', 'India', 'Maharashtra', 'Mumbai', 100021, 123456789),
(2, 'CA', 'Canada', 'British Columbia', 'Columbia', 200018, 2147483647),
(5, 'IN', 'India', 'Madhya Pradesh', 'Bhopal', 100042, 2147483647),
(6, 'IN', 'India', 'Uttar Pradesh', 'Banaras', 300118, 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `country_pages`
--

CREATE TABLE `country_pages` (
  `id` int(11) NOT NULL,
  `country` varchar(255) NOT NULL,
  `country_name` text NOT NULL,
  `state1` text NOT NULL,
  `city` text NOT NULL,
  `country_url` text NOT NULL,
  `city_url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `country_pages`
--

INSERT INTO `country_pages` (`id`, `country`, `country_name`, `state1`, `city`, `country_url`, `city_url`) VALUES
(1, 'IN', 'India', 'Maharashtra', 'Mumbai', 'https://localhost/IN/', 'https://localhost/IN/Mumbai/'),
(2, 'CA', 'Canada', 'British Columbia', 'Columbia', 'https://localhost/CA/', 'https://localhost/CA/Columbia/'),
(5, 'IN', 'India', 'Madhya Pradesh', 'Bhopal', 'https://localhost/IN/', 'https://localhost/IN/Bhopal/'),
(6, 'IN', 'India', 'Uttar Pradesh', 'Banaras', 'https://organizein.com/IN/', 'https://organizein.com/IN/Banaras/');

-- --------------------------------------------------------

--
-- Table structure for table `extra_code`
--

CREATE TABLE `extra_code` (
  `header_code` longtext NOT NULL,
  `footer_code` longtext NOT NULL,
  `top_header_message` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `extra_code`
--

INSERT INTO `extra_code` (`header_code`, `footer_code`, `top_header_message`) VALUES
('<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/material-design-iconic-font/2.2.0/css/material-prahu-iconic-font.css\" />\r\n<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/material-design-iconic-font/2.2.0/css/material-prahu-iconic-font.css\" />\r\n<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/material-design-iconic-font/2.2.0/css/material-prahu-iconic-font.css\" />\r\n<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/material-design-iconic-font/2.2.0/css/material-prahu-iconic-font.css\" />', '<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/material-design-iconic-font/2.2.0/css/material-prahu-iconic-font.css\" />', 'test for me m');

-- --------------------------------------------------------

--
-- Table structure for table `inquiry_form`
--

CREATE TABLE `inquiry_form` (
  `full_name` text NOT NULL,
  `company` text NOT NULL,
  `email` text NOT NULL,
  `phone` text NOT NULL,
  `website_link` text NOT NULL,
  `from_website` text NOT NULL,
  `interested_services` text NOT NULL,
  `budget` text NOT NULL,
  `message` text NOT NULL,
  `id` int(11) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `form_number` text NOT NULL,
  `ip` text NOT NULL,
  `message_url` text NOT NULL,
  `new_inquiry` int(1) NOT NULL DEFAULT 1,
  `city` longtext NOT NULL,
  `country` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inquiry_form`
--

INSERT INTO `inquiry_form` (`full_name`, `company`, `email`, `phone`, `website_link`, `from_website`, `interested_services`, `budget`, `message`, `id`, `date`, `form_number`, `ip`, `message_url`, `new_inquiry`, `city`, `country`) VALUES
('', '', '', '', '', 'https://organizein.me/multipageadmin/in/karnataka/bangalore/social-media-marketing.php', '', '', '', 40, '2022-07-09', 'form-2', '', '', 0, '', ''),
('Naik', '234324', 'naik@naik.com', '234234234', '', 'https://organizein.me/multipageadmin/in/karnataka/bangalore/social-media-marketing.php', 'Digital Marketing', 'Unknown', 'wetet', 41, '2022-07-09', 'form-3', '', '', 0, '', ''),
('', '', '', '', '', 'https://organizein.me/multipageadmin/in/karnataka/bangalore/social-media-marketing.php', '', '', '', 42, '2022-07-09', 'form-2', '', '', 0, '', ''),
('Frances Peck', '', 'sydape@mailinator.com', '+1 (602) 403-7178', 'https://www.qav.cc', 'https://organizein.me/multipageadmin/in/karnataka/bangalore/social-media-marketing.php', 'ABM Campaings (Account Based Marketing)', '', '', 44, '2022-07-09', 'form-1', '', '', 0, '', ''),
('', '', '', '', '', 'https://organizein.me/multipageadmin/in/karnataka/bangalore/social-media-marketing.php', '', '', '', 45, '2022-07-09', 'form-2', '', '', 0, '', ''),
('', '', '', '', '', 'https://organizein.me/multipageadmin/in/karnataka/bangalore/social-media-marketing.php', '', '', '', 46, '2022-07-09', 'form-2', '', '', 0, '', ''),
('Charde Decker', 'Leblanc Reese Plc', 'rakuwof@mailinator.com', '91', '', 'https://organizein.me/multipageadmin/mv/consequatur-laborum/placeat-eius-vel-la/social-media-marketing.php', 'SEO', '$750 - $1,500/mo.', 'Distinctio Rem nesc', 47, '2022-07-09', 'form-3', '', '', 0, '', ''),
('Echo Mcdaniel', 'Barber and Prince Trading', 'sykujazim@mailinator.com', '24', '', 'https://organizein.me/multipageadmin/mv/consequatur-laborum/placeat-eius-vel-la/social-media-marketing.php', 'Content Development', 'Unknown', 'Suscipit qui qui aut', 48, '2022-07-09', 'form-3', '', '', 0, '', ''),
('Alyssa Ross', '', 'bukaniqyca@mailinator.com', '+1 (311) 731-3663', 'https://www.cehat.com', 'https://organizein.com/multipageadmin/ht/nemo-voluptate-quia/voluptate-ducimus-s/web-design.php', 'Marketing Collaterals', '', '', 56, '2022-07-09', 'form-1', '', '', 0, '', ''),
('Hayfa Bartlett', 'softwareride.com', 'fonaru@mailinator.com', '+1 (148) 342-7247', 'https://www.cakyz.info', 'https://organizein.com/multipageadmin/ht/nemo-voluptate-quia/voluptate-ducimus-s/web-design.php', 'Whats App Marketing', 'gjdg', '', 57, '2022-07-09', 'form-1', '', ' ', 0, '', ''),
('Violet Boyle', '', 'silusebu@mailinator.com', '+1 (509) 129-1954', 'https://www.modagutanyqivac.org.au', 'https://organizein.com/multipageadmin/na/quo-et-et-quo-quia-o/cupiditate-dignissim/seo.php', 'Services Interested in?', '', '', 58, '2022-07-09', 'form-1', '', '', 0, '', ''),
('Fleur Harrell', '', 'ruhetabize@mailinator.com', '+1 (971) 931-3629', 'https://www.kovi.mobi', 'https://organizein.com/multipageadmin/na/quo-et-et-quo-quia-o/cupiditate-dignissim/seo.php', 'SMM', '', '', 59, '2022-07-10', 'form-1', '', '', 0, '', ''),
('', '', 'zesekehu@mailinator.com', '', 'https://www.giful.mobi', 'https://organizein.com/multipageadmin/na/quo-et-et-quo-quia-o/cupiditate-dignissim/seo.php', '', '', '', 60, '2022-07-10', 'form-2', '', '', 0, '', ''),
('Flavia Buckley', 'Wilkinson and Nixon Traders', 'lizoni@mailinator.com', '78', '', 'https://organizein.com/multipageadmin/na/quo-et-et-quo-quia-o/cupiditate-dignissim/seo.php', 'Content Development', '$10,000+/mo.', 'Corrupti qui ex vol', 61, '2022-07-10', 'form-3', '', '', 0, '', ''),
('Sophia Curtis', '', 'vupupi@mailinator.com', '+1 (263) 283-7911', 'https://www.lec.co', 'https://organizein.com/multipageadmin/na/quo-et-et-quo-quia-o/cupiditate-dignissim/graphic-design-services.php', 'SEM', '', '', 62, '2022-07-10', 'form-1', '', '', 0, '', ''),
('', '', 'gybybyci@mailinator.com', '', 'https://www.fas.ca', 'https://organizein.com/multipageadmin/na/quo-et-et-quo-quia-o/cupiditate-dignissim/graphic-design-services.php', '', '', '', 63, '2022-07-10', 'form-2', '', '', 0, '', ''),
('Shelby Mcintyre', 'Alston and Witt Plc', 'myrafisy@mailinator.com', '15', '', 'https://organizein.com/multipageadmin/na/quo-et-et-quo-quia-o/cupiditate-dignissim/graphic-design-services.php', 'Content Development', '$3,500 - $10,000/mo.', 'Officiis hic consect', 64, '2022-07-10', 'form-3', '', '', 0, '', ''),
('', '', 'gybybyci@mailinator.com', '', 'https://www.fas.ca', 'https://organizein.com/multipageadmin/na/quo-et-et-quo-quia-o/cupiditate-dignissim/graphic-design-services.php', '', '', '', 65, '2022-07-10', 'form-2', '', '', 0, '', ''),
('', '', 'dyhuze@mailinator.com', '', 'https://www.gihysoq.me', 'https://organizein.com/multipageadmin/na/quo-et-et-quo-quia-o/cupiditate-dignissim/graphic-design-services.php', '', '', '', 66, '2022-07-10', 'form-2', '', '', 0, '', ''),
('', '', 'dyhuze@mailinator.com', '', 'https://www.gihysoq.me', 'https://organizein.com/multipageadmin/na/quo-et-et-quo-quia-o/cupiditate-dignissim/graphic-design-services.php', '', '', '', 67, '2022-07-10', 'form-2', '', '', 0, '', ''),
('', '', 'xyqy@mailinator.com', '', 'https://www.cuzyjuna.com.au', 'https://organizein.com/multipageadmin/na/quo-et-et-quo-quia-o/cupiditate-dignissim/graphic-design-services.php', '', '', '', 68, '2022-07-10', 'form-2', '', '', 0, '', ''),
('Pearl Soto', '', 'lyqymeleq@mailinator.com', '+1 (504) 446-4444', 'https://www.vaf.co.uk', 'https://organizein.com/multipageadmin/na/quo-et-et-quo-quia-o/cupiditate-dignissim/graphic-design-services.php', 'Branding', '', '', 69, '2022-07-10', 'form-1', '', '', 0, '', ''),
('Chava Higgins', 'Stewart and Mcclure Traders', 'guxucukuqo@mailinator.com', '44', '', 'https://organizein.com/multipageadmin/na/quo-et-et-quo-quia-o/cupiditate-dignissim/graphic-design-services.php', 'SEM', '$750 - $1,500/mo.', 'Ut esse aut molliti', 70, '2022-07-10', 'form-3', '', '', 0, '', ''),
('Janna Mcintosh', 'Wilcox Bullock Inc', 'siva@mailinator.com', '80', '', 'https://organizein.com/multipageadmin/na/quo-et-et-quo-quia-o/cupiditate-dignissim/graphic-design-services.php', 'SEM', '$30 - $750/mo.', 'Fuga Voluptates com', 71, '2022-07-10', 'form-3', '', '', 0, '', ''),
('Mara Reynolds', '', 'pabatabyvi@mailinator.com', '+1 (631) 315-8449', 'https://www.xasec.me.uk', 'https://organizein.com/multipageadmin/mo/et-labore-quia-iure/email-marketing.php', '', '', '', 72, '2022-07-10', 'form-1', '', '', 0, '', ''),
('', '', 'kasyxini@mailinator.com', '', 'https://www.kinohefulif.tv', 'https://organizein.com/multipageadmin/mo/et-labore-quia-iure/email-marketing.php', '', '', '', 73, '2022-07-10', 'form-2', '', '', 0, '', ''),
('Merrill Gregory', 'Lewis Warner Plc', 'buxejyfy@mailinator.com', '100', '', 'https://organizein.com/multipageadmin/mo/et-labore-quia-iure/email-marketing.php', 'Content Development', '$750 - $1,500/mo.', 'Eius illo quia volup', 74, '2022-07-10', 'form-3', '', '', 0, '', ''),
('Irma Riley', '', 'hukad@mailinator.com', '+1 (275) 905-8205', 'https://www.voxury.in', 'https://organizein.com/multipageadmin/mo/et-labore-quia-iure/email-marketing.php', 'SEO', '', '', 75, '2022-07-10', 'form-1', '', '', 0, '', ''),
('', '', 'gawevyruki@mailinator.com', '', 'https://www.luxyruzysuq.me', 'https://organizein.com/multipageadmin/mo/et-labore-quia-iure/email-marketing.php', '', '', '', 76, '2022-07-10', 'form-2', '', '', 0, '', ''),
('Astra Maynard', 'Cobb Mooney Trading', 'febofiqa@mailinator.com', '23', '', 'https://organizein.com/multipageadmin/mo/et-labore-quia-iure/email-marketing.php', 'Email Marketing', '$30 - $750/mo.', 'Qui rerum et ipsum ', 77, '2022-07-10', 'form-3', '', '', 0, '', ''),
('Herrod Donovan', '', 'jejamoriv@mailinator.com', '+1 (235) 448-7605', 'https://www.wukikucyti.mobi', 'https://organizein.com/multipageadmin/in/bangalore/mobile-app-development-services.php', 'Logo Designing', '', '', 78, '2022-07-11', 'form-1', '', '', 0, '', ''),
('', '', 'naik@mailinator.com', '', 'https://www.naik.ca', 'https://organizein.com/multipageadmin/in/bangalore/mobile-app-development-services.php', '', '', '', 79, '2022-07-11', 'form-2', '', '', 0, '', ''),
('Naik Cooper', 'Rutledge and Rush Co', 'leqefypol@mailinator.com', '54', '', 'https://organizein.com/multipageadmin/in/bangalore/mobile-app-development-services.php', 'Custom', '$750 - $1,500/mo.', 'Magnam perspiciatisNaik Cooper', 80, '2022-07-11', 'form-3', '', '', 0, '', ''),
('Sloane Joyner', '', 'hovobe@mailinator.com', '+1 (306) 957-5292', 'https://www.kisagopypyjyren.com', 'https://organizein.com/multipageadmin/in/ravangle/web-design.php', 'App MVP Prototypes', '', '', 81, '2022-07-13', 'form-1', '', '', 0, '', ''),
('Raven Valenzuela', '', 'vigatad@mailinator.com', '+1 (188) 305-9626', 'https://www.sizul.org.uk', 'https://organizein.com/multipageadmin/t7/est-assumenda-aliqua/web-design-services.php', 'Logo Designing', '', '', 82, '2022-07-13', 'form-1', '', '', 0, '', ''),
('Zephr Peters', '', 'lazyfuxeca@mailinator.com', '+1 (671) 262-3327', 'https://www.madogevacew.com.au', 'https://organizein.com/multipageadmin/t7/est-assumenda-aliqua/web-design-services.php', 'Inbound Marketing', '', '', 83, '2022-07-13', 'form-1', '', '', 0, '', ''),
('Samantha Mills', '', 'wilabyj@mailinator.com', '+1 (274) 445-1145', 'https://www.dysaqizofygo.co.uk', 'https://organizein.com/t7/est-assumenda-aliqua/web-design-services.php', 'Hosting, Domain & Server Management', '', '', 84, '2022-07-13', 'form-1', '', '', 0, '', ''),
('test', '', 'naik@organizein.com', '324324', 'te', 'https://organizein.com/in/bengaluru/mobile-app-development-services.php', 'CRM Development & Integrations', '', '', 85, '2022-07-14', 'form-1', '', '', 0, '', ''),
('Colette Morton', 'Massey Ashley Traders', 'radolu@mailinator.com', '20', '', 'https://organizein.com/ae//web-design-services.php', 'Social Media', '$750 - $1,500/mo.', 'Est molestiae sed do', 86, '2022-07-28', 'form-3', '', '', 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `partner_details`
--

CREATE TABLE `partner_details` (
  `partner_id` int(11) NOT NULL,
  `country_selected` varchar(255) NOT NULL,
  `country_name` text NOT NULL,
  `state_name` varchar(255) NOT NULL,
  `city_name` varchar(255) NOT NULL,
  `services` longtext NOT NULL,
  `title` text NOT NULL,
  `partner_first_name` text NOT NULL,
  `partner_last_name` text NOT NULL,
  `partner_phone` text NOT NULL,
  `partner_email` varchar(255) NOT NULL,
  `partner_address` varchar(255) NOT NULL,
  `partner_discription` longtext NOT NULL,
  `partner_linkedin` varchar(255) NOT NULL,
  `partner_photo` varchar(255) NOT NULL,
  `meta_title` text NOT NULL,
  `meta_description` text NOT NULL,
  `meta_keyword` text NOT NULL,
  `special_top_message` longtext NOT NULL,
  `special_header_script` longtext NOT NULL,
  `whatsapp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `partner_details`
--

INSERT INTO `partner_details` (`partner_id`, `country_selected`, `country_name`, `state_name`, `city_name`, `services`, `title`, `partner_first_name`, `partner_last_name`, `partner_phone`, `partner_email`, `partner_address`, `partner_discription`, `partner_linkedin`, `partner_photo`, `meta_title`, `meta_description`, `meta_keyword`, `special_top_message`, `special_header_script`, `whatsapp`) VALUES
(625, 'LS', 'Lesotho', 'Provident sit illu', 'Consequatur Accusam', '[\"Email Marketing\",\"Search engine marketing\",\"Social media marketing\",\"Graphic design Services\",\"Web Design services\"]', 'Mrs.', 'Lillian', 'Contreras', '+1 (607) 254-3944', 'fytew@mailinator.com', 'Commodo sequi tempor', 'Laudantium nostrum ', 'Voluptatem Ut quia ', 'https://www.dmarge.com/most-likeable-person-world-the-rock', 'Consequatur Accusam', ' SEO Company is a leading SEO & Web Design Agency that provides unmatched  SEO services. We deliver more leads and traffic to your online business in  and surrounding burrows, call Quod maiores quaerat SEO Company today.', ' SEO Company ,  Social Media Company, PPC Company ,  Digital Marketing Company , Web Design Company , Graphic design agency', 'lorem', '', ''),
(626, 'IN', 'India', 'Karnataka', 'Bengaluru', '[\"Web Design\",\"Email Marketing\",\"SEO\",\"Search engine marketing\",\"Social media marketing\",\"Email marketing\",\"Graphic design Services\",\"Web Design services\",\"Web development services\",\"Mobile App development services\"]', '', '', '', '', '', '', '', '', 'https://www.dmarge.com/most-likeable-person-world-the-rock', '', '', '', '', '', ''),
(627, 'AE', 'United Arab Emirates', 'Dubai', '', '[\"Web Design\",\"Email Marketing\",\"SEO\",\"Search engine marketing\",\"Social media marketing\",\"Email marketing\",\"Graphic design Services\",\"Web Design services\",\"Web development services\",\"Mobile App development services\"]', '', '', '', '', '', '', '', '', 'https://www.dmarge.com/most-likeable-person-world-the-rock', '', '', '', '', '', ''),
(628, 'IN', 'India', 'Delectus error ut v', 'Ipsa commodo nemo i', '[\"Email Marketing\",\"SEO\",\"Graphic design Services\"]', 'Mr.', 'Upton', 'Hopper', '+1 (911) 377-1461', 'civi@mailinator.com', 'Labore molestias ame', 'Laborum non commodi ', 'Quo commodi odit eni', 'https://www.dmarge.com/most-likeable-person-world-the-rock', '', '', '', '', '', ''),
(629, 'IN', 'India', 'Bihar', 'SASARAM', '[\"Web Design\",\"SEO\"]', '', 'PRASHU', 'SHARMA', '+919155767010', 'prashukumarsharmassm2000@gmail.com', 'SHARMA NIWAS', '', '', 'https://www.dmarge.com/most-likeable-person-world-the-rock', '', '', '', '', '', ''),
(630, 'US', 'United States', 'California', 'Las vegas', '[\"Web Design\",\"Email Marketing\",\"SEO\",\"Search engine marketing\",\"Social media marketing\",\"Email marketing\",\"Graphic design Services\",\"Web Design services\",\"Web development services\",\"Mobile App development services\"]', '', '', '', '', '', '', '', '', 'https://www.dmarge.com/most-likeable-person-world-the-rock', '', '', '', '', '', ''),
(631, 'US', 'United States', 'Tennessee', 'Nashville', '[\"Web Design\",\"Email Marketing\",\"SEO\",\"Search engine marketing\",\"Social media marketing\",\"Email marketing\",\"Graphic design Services\",\"Web Design services\",\"Web development services\",\"Mobile App development services\"]', '', '', '', '', '', '', '', '', 'https://www.dmarge.com/most-likeable-person-world-the-rock', '', '', '', '', '', ''),
(632, 'AW', 'Aruba', '', '', 'null', '', '', '', '', '', '', '', '', 'https://www.dmarge.com/most-likeable-person-world-the-rock', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE `user_login` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`id`, `email`, `password`) VALUES
(2, 'prashu@gmail.com', 'abc'),
(3, 'prashu@prashu.com', 'prashu123');

-- --------------------------------------------------------

--
-- Table structure for table `website_pages`
--

CREATE TABLE `website_pages` (
  `website_id` int(255) NOT NULL,
  `website_url` longtext NOT NULL,
  `status` int(1) NOT NULL,
  `partner_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `website_pages`
--

INSERT INTO `website_pages` (`website_id`, `website_url`, `status`, `partner_id`) VALUES
(3863, 'https://organizein.com/ls/consequatur-accusam/email-marketing.php', 1, 625),
(3864, 'https://organizein.com/ls/consequatur-accusam/search-engine-marketing.php', 1, 625),
(3865, 'https://organizein.com/ls/consequatur-accusam/social-media-marketing.php', 1, 625),
(3866, 'https://organizein.com/ls/consequatur-accusam/graphic-design-services.php', 1, 625),
(3867, 'https://organizein.com/ls/consequatur-accusam/web-design-services.php', 1, 625),
(3868, 'https://organizein.com/in/bengaluru/web-design.php', 1, 626),
(3869, 'https://organizein.com/in/bengaluru/email-marketing.php', 1, 626),
(3870, 'https://organizein.com/in/bengaluru/seo.php', 1, 626),
(3871, 'https://organizein.com/in/bengaluru/search-engine-marketing.php', 1, 626),
(3872, 'https://organizein.com/in/bengaluru/social-media-marketing.php', 1, 626),
(3873, 'https://organizein.com/in/bengaluru/email-marketing.php', 1, 626),
(3874, 'https://organizein.com/in/bengaluru/graphic-design-services.php', 1, 626),
(3875, 'https://organizein.com/in/bengaluru/web-design-services.php', 1, 626),
(3876, 'https://organizein.com/in/bengaluru/web-development-services.php', 1, 626),
(3877, 'https://organizein.com/in/bengaluru/mobile-app-development-services.php', 1, 626),
(3878, 'https://organizein.com/ae//web-design.php', 1, 627),
(3879, 'https://organizein.com/ae//email-marketing.php', 1, 627),
(3880, 'https://organizein.com/ae//seo.php', 1, 627),
(3881, 'https://organizein.com/ae//search-engine-marketing.php', 1, 627),
(3882, 'https://organizein.com/ae//social-media-marketing.php', 1, 627),
(3883, 'https://organizein.com/ae//email-marketing.php', 1, 627),
(3884, 'https://organizein.com/ae//graphic-design-services.php', 1, 627),
(3885, 'https://organizein.com/ae//web-design-services.php', 1, 627),
(3886, 'https://organizein.com/ae//web-development-services.php', 1, 627),
(3887, 'https://organizein.com/ae//mobile-app-development-services.php', 1, 627),
(3888, 'https://organizein.com/in/ipsa-commodo-nemo-i/email-marketing.php', 1, 628),
(3889, 'https://organizein.com/in/ipsa-commodo-nemo-i/seo.php', 1, 628),
(3890, 'https://organizein.com/in/ipsa-commodo-nemo-i/graphic-design-services.php', 1, 628),
(3891, 'https://organizein.com/in/sasaram/web-design.php', 1, 629),
(3892, 'https://organizein.com/in/sasaram/seo.php', 1, 629),
(3893, 'https://organizein.com/us/las-vegas/web-design.php', 1, 630),
(3894, 'https://organizein.com/us/las-vegas/email-marketing.php', 1, 630),
(3895, 'https://organizein.com/us/las-vegas/seo.php', 1, 630),
(3896, 'https://organizein.com/us/las-vegas/search-engine-marketing.php', 1, 630),
(3897, 'https://organizein.com/us/las-vegas/social-media-marketing.php', 1, 630),
(3898, 'https://organizein.com/us/las-vegas/email-marketing.php', 1, 630),
(3899, 'https://organizein.com/us/las-vegas/graphic-design-services.php', 1, 630),
(3900, 'https://organizein.com/us/las-vegas/web-design-services.php', 1, 630),
(3901, 'https://organizein.com/us/las-vegas/web-development-services.php', 1, 630),
(3902, 'https://organizein.com/us/las-vegas/mobile-app-development-services.php', 1, 630),
(3903, 'https://organizein.com/us/nashville/web-design.php', 1, 631),
(3904, 'https://organizein.com/us/nashville/email-marketing.php', 1, 631),
(3905, 'https://organizein.com/us/nashville/seo.php', 1, 631),
(3906, 'https://organizein.com/us/nashville/search-engine-marketing.php', 1, 631),
(3907, 'https://organizein.com/us/nashville/social-media-marketing.php', 1, 631),
(3908, 'https://organizein.com/us/nashville/email-marketing.php', 1, 631),
(3909, 'https://organizein.com/us/nashville/graphic-design-services.php', 1, 631),
(3910, 'https://organizein.com/us/nashville/web-design-services.php', 1, 631),
(3911, 'https://organizein.com/us/nashville/web-development-services.php', 1, 631),
(3912, 'https://organizein.com/us/nashville/mobile-app-development-services.php', 1, 631);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `country_details`
--
ALTER TABLE `country_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country_pages`
--
ALTER TABLE `country_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inquiry_form`
--
ALTER TABLE `inquiry_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partner_details`
--
ALTER TABLE `partner_details`
  ADD PRIMARY KEY (`partner_id`);

--
-- Indexes for table `user_login`
--
ALTER TABLE `user_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `website_pages`
--
ALTER TABLE `website_pages`
  ADD PRIMARY KEY (`website_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `country_details`
--
ALTER TABLE `country_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `country_pages`
--
ALTER TABLE `country_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `inquiry_form`
--
ALTER TABLE `inquiry_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `partner_details`
--
ALTER TABLE `partner_details`
  MODIFY `partner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=633;

--
-- AUTO_INCREMENT for table `user_login`
--
ALTER TABLE `user_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `website_pages`
--
ALTER TABLE `website_pages`
  MODIFY `website_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3913;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
