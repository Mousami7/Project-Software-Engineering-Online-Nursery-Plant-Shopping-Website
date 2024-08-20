-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 18, 2021 at 11:45 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gogreen`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin`
--

CREATE TABLE `adminlogin` (
  `id` bigint(20) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adminlogin`
--

INSERT INTO `adminlogin` (`id`, `Username`, `Password`) VALUES
(1, 'Admin', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add admin login', 7, 'add_adminlogin'),
(26, 'Can change admin login', 7, 'change_adminlogin'),
(27, 'Can delete admin login', 7, 'delete_adminlogin'),
(28, 'Can view admin login', 7, 'view_adminlogin'),
(29, 'Can add user register', 8, 'add_userregister'),
(30, 'Can change user register', 8, 'change_userregister'),
(31, 'Can delete user register', 8, 'delete_userregister'),
(32, 'Can view user register', 8, 'view_userregister'),
(33, 'Can add plant details', 9, 'add_plantdetails'),
(34, 'Can change plant details', 9, 'change_plantdetails'),
(35, 'Can delete plant details', 9, 'delete_plantdetails'),
(36, 'Can view plant details', 9, 'view_plantdetails'),
(37, 'Can add cart items', 10, 'add_cartitems'),
(38, 'Can change cart items', 10, 'change_cartitems'),
(39, 'Can delete cart items', 10, 'delete_cartitems'),
(40, 'Can view cart items', 10, 'view_cartitems'),
(41, 'Can add cartproducts', 11, 'add_cartproducts'),
(42, 'Can change cartproducts', 11, 'change_cartproducts'),
(43, 'Can delete cartproducts', 11, 'delete_cartproducts'),
(44, 'Can view cartproducts', 11, 'view_cartproducts'),
(45, 'Can add order detail', 12, 'add_orderdetail'),
(46, 'Can change order detail', 12, 'change_orderdetail'),
(47, 'Can delete order detail', 12, 'delete_orderdetail'),
(48, 'Can view order detail', 12, 'view_orderdetail'),
(49, 'Can add favourite', 13, 'add_favourite'),
(50, 'Can change favourite', 13, 'change_favourite'),
(51, 'Can delete favourite', 13, 'delete_favourite'),
(52, 'Can view favourite', 13, 'view_favourite'),
(53, 'Can add reviews', 14, 'add_reviews'),
(54, 'Can change reviews', 14, 'change_reviews'),
(55, 'Can delete reviews', 14, 'delete_reviews'),
(56, 'Can view reviews', 14, 'view_reviews'),
(57, 'Can add review', 14, 'add_review'),
(58, 'Can change review', 14, 'change_review'),
(59, 'Can delete review', 14, 'delete_review'),
(60, 'Can view review', 14, 'view_review');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cartitems`
--

CREATE TABLE `cartitems` (
  `id` bigint(20) NOT NULL,
  `UserID` int(11) NOT NULL,
  `ProductID` int(11) NOT NULL,
  `ProdName` varchar(100) NOT NULL,
  `Prod_qty` int(11) NOT NULL,
  `Prod_Price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cartproducts`
--

CREATE TABLE `cartproducts` (
  `id` bigint(20) NOT NULL,
  `OrderID` varchar(100) NOT NULL,
  `ProdId` varchar(100) NOT NULL,
  `ProdName` varchar(100) NOT NULL,
  `UserID` int(11) NOT NULL,
  `Prodqty` int(11) NOT NULL,
  `ProdPrice` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cartproducts`
--

INSERT INTO `cartproducts` (`id`, `OrderID`, `ProdId`, `ProdName`, `UserID`, `Prodqty`, `ProdPrice`) VALUES
(1, '1', '10', 'Gladiolus', 1, 10, 4500),
(2, '2', '1', 'Rose', 1, 1, 550);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(7, 'AppGoGreen', 'adminlogin'),
(10, 'AppGoGreen', 'cartitems'),
(11, 'AppGoGreen', 'cartproducts'),
(13, 'AppGoGreen', 'favourite'),
(12, 'AppGoGreen', 'orderdetail'),
(9, 'AppGoGreen', 'plantdetails'),
(14, 'AppGoGreen', 'review'),
(8, 'AppGoGreen', 'userregister'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-09-15 12:04:11.815626'),
(2, 'auth', '0001_initial', '2021-09-15 12:04:22.164721'),
(3, 'admin', '0001_initial', '2021-09-15 12:04:24.233776'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-09-15 12:04:24.271559'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-09-15 12:04:24.334059'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-09-15 12:04:25.005143'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-09-15 12:04:25.776433'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-09-15 12:04:26.039584'),
(9, 'auth', '0004_alter_user_username_opts', '2021-09-15 12:04:26.093047'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-09-15 12:04:27.544959'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-09-15 12:04:27.614125'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-09-15 12:04:27.683123'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-09-15 12:04:27.830340'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-09-15 12:04:27.984219'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-09-15 12:04:28.100118'),
(16, 'auth', '0011_update_proxy_permissions', '2021-09-15 12:04:28.184857'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-09-15 12:04:28.316473'),
(18, 'sessions', '0001_initial', '2021-09-15 12:04:28.818162'),
(19, 'AppGoGreen', '0001_initial', '2021-09-15 12:36:15.021672'),
(20, 'AppGoGreen', '0002_plantdetails', '2021-09-16 07:10:55.197206'),
(21, 'AppGoGreen', '0003_auto_20210917_1320', '2021-09-17 07:50:28.006293'),
(22, 'AppGoGreen', '0004_favourite', '2021-09-17 08:00:01.932859'),
(23, 'AppGoGreen', '0005_reviews', '2021-09-17 13:19:36.184097'),
(24, 'AppGoGreen', '0006_auto_20210917_1850', '2021-09-17 13:20:43.130408'),
(25, 'AppGoGreen', '0007_rename_usersid_reviews_custid', '2021-09-17 13:49:27.807686'),
(26, 'AppGoGreen', '0005_review', '2021-09-18 05:36:44.411788');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('j652teemurej31icis20v9vez5wwc4ki', '.eJyrViqpLEiNz0xRslJyTMnNzFPSUQotTi0KAYoiCeXkpwNpK6XI1GKlWgDIGBDi:1mRWqC:1Fyax-cRiV1Y3XJtYwhnjjXsTm8IMX8seLudrHh1JYA', '2021-10-02 09:41:00.482890');

-- --------------------------------------------------------

--
-- Table structure for table `favourite`
--

CREATE TABLE `favourite` (
  `id` bigint(20) NOT NULL,
  `UserID` int(11) NOT NULL,
  `FlowerID` int(11) NOT NULL,
  `Fname` varchar(100) NOT NULL,
  `Type` varchar(100) NOT NULL,
  `Price` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orderdetail`
--

CREATE TABLE `orderdetail` (
  `id` bigint(20) NOT NULL,
  `Userid` varchar(200) NOT NULL,
  `TotalPrice` varchar(200) NOT NULL,
  `OrderDate` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orderdetail`
--

INSERT INTO `orderdetail` (`id`, `Userid`, `TotalPrice`, `OrderDate`) VALUES
(1, '1', '4500', '2021-09-17'),
(2, '1', '550', '2021-09-18');

-- --------------------------------------------------------

--
-- Table structure for table `plantdetails`
--

CREATE TABLE `plantdetails` (
  `id` bigint(20) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Light` varchar(100) NOT NULL,
  `Seeds` varchar(100) NOT NULL,
  `Schedule` varchar(100) NOT NULL,
  `Maintainance` varchar(100) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `Price` bigint(20) NOT NULL,
  `Pictures` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `plantdetails`
--

INSERT INTO `plantdetails` (`id`, `Name`, `Light`, `Seeds`, `Schedule`, `Maintainance`, `Description`, `Price`, `Pictures`) VALUES
(1, 'Rose', 'Bright Indirect Light', 'Winter', 'Once A day', 'Low', ' Roses are the epitome of beauty, from their dazzling color combinations and their sweet scent to their rows of delicate petals. They make a stunning addition to a garden or gift — these quotes about ', 550, 'static/Images/rose.jpg'),
(2, 'Lily', 'Direct Sunlight', 'Summer', 'Once A day', 'Low', 'Lilies have long been associated with love, devotion, purity and fertility. The sweet and innocent beauty of the flower has ensured it remains tied to the ideas of fresh new life and rebirth.', 450, 'static/Images/lily.jpg'),
(4, 'Orchids', 'Bright Indirect Light', 'Summer', 'Every Alternate Day', 'High', ' orchid is a blooming plant with waxy leaves, or the flower of the plant used as a floral decoration. An example of an orchid is the yellow bloom known as a Dancing Lady orchid. An example of an orchi', 550, 'static/Images/orchid.jpg'),
(5, 'Anemone', 'Low Light', 'Summer', 'Once A day', 'Medium', 'The most significant anemone flower meaning is anticipation. This is because the anemone flowers close up at night and open back up in the morning. Due to its wild nature, the flower specifically symb', 350, 'static/Images/anemone.jpg'),
(6, 'Hyacinth', 'Bright Indirect Light', 'Easy To Grow', 'Twice a week ', 'Medium', ' Hyacinths on the water surface of a pond create a totally different environmental conditions in the water as compared to an exposed water surface. The dense canopy of leaves shades the surface and pr', 250, 'static/Images/hyacinth.jpg'),
(10, 'Gladiolus', 'Bright Indirect Light', 'Easy To Grow', 'Every Alternate Day', 'Medium', 'Gladiolus produce sword-shaped, medium green leaves in upright fans and funnel-shaped flowers on slender scapes from summer into fall. There is an extensive range of flower colors available, including', 450, 'static/Images/Gladiolus.jpg'),
(11, 'Daffodil', 'Bright Indirect Light', 'Winter', 'Once A day', 'Medium', ' The daffodil symbolizes rebirth and new beginnings. It became associated with new beginnings (and the coming of spring) because it is one of the first perennials to bloom after the winter frost.', 650, 'static/Images/Daffodil.jpg'),
(13, 'Sunflower', 'Direct Sunlight', 'Winter', 'Once A day', 'Low', ' These flowers are unique in that they have the ability to provide energy in the form of nourishment and vibrancy—attributes which mirror the sun and the energy provided by its heat and light. Sunflow', 600, 'sunflower.jpg'),
(14, 'Tulip', 'Direct Sunlight', 'Winter', 'Twice a week ', 'Low', ' Tulips are known for their bold colors and beautiful shape', 450, 'tulips.jpg'),
(15, 'Carnation', 'Bright Indirect Light', 'Easy To Grow', 'Every Alternate Day', 'High', 'carnation flower meaning embraces the ideas of fascination', 350, 'caranation.jpg'),
(16, ' Chrysanthemum', 'Low Light', 'Easy To Grow', 'Every Alternate Day', 'Low', ' Chrysanthemum (mum) is a plant. It gets its name from the Greek words for “gold” and “flower.” People use the flowers to make medicine. Chrysanthemum is used to treat chest pain (angina)', 580, 'Chrysanthemum.jpg'),
(17, 'Daisy', 'Bright Indirect Light', 'Winter', 'Once A day', 'High', 'daisy is a type of flower with white petals around a yellow center', 700, 'daisy.jpg'),
(18, 'Mogra', 'Low Light', 'Winter', 'Twice a week ', 'Medium', ' Image result for mogra The Mogra plant or Jasminum sambac bears white flowers and is an evergreen shrub with dark green foliage. Its speciality is that the flowers bloom only at night and give off a ', 200, 'jasmine.jpg'),
(20, 'Marigold', 'Bright Indirect Light', 'Summer', 'Every Alternate Day', 'Medium', 'Marigolds attract ladybugs, parasitic wasps, hoverflies, and other beneficial insects that protect your plants from aphids and other harmful pests. The blooms, particularly single-bloom cultivars, als', 550, 'static/Images/marigold.jpg'),
(21, 'Lavender', 'Bright Indirect Light', 'Winter', 'Once A day', 'High', ' The flower and the oil of lavender are used to make medicine. Lavender is commonly used for anxiety, stress, and insomnia. It is also used for depression, dementia, pain after surgery, and many other', 400, 'static/Images/lavender.jpg'),
(22, 'Hibiscus', 'Bright Indirect Light', 'Winter', 'Every Alternate Day', 'Medium', ' Image result for hibiscus Hibiscus plants are known for their large, colorful flowers. These blossoms can make a decorative addition to a home or garden, but they also have medicinal uses. The flower', 350, 'static/Images/hibiscus.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` bigint(20) NOT NULL,
  `CustID` int(11) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `Phone` int(11) NOT NULL,
  `messages` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `userregister`
--

CREATE TABLE `userregister` (
  `id` bigint(20) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Mobile` bigint(20) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userregister`
--

INSERT INTO `userregister` (`id`, `Name`, `Mobile`, `Address`, `Email`, `Username`, `Password`) VALUES
(1, 'Priya Sanjay Thukarul', 7045801474, 'Jogeshwari', 'priya@gmail.com', 'test', '123456Pp');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminlogin`
--
ALTER TABLE `adminlogin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `cartitems`
--
ALTER TABLE `cartitems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cartproducts`
--
ALTER TABLE `cartproducts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `favourite`
--
ALTER TABLE `favourite`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plantdetails`
--
ALTER TABLE `plantdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userregister`
--
ALTER TABLE `userregister`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminlogin`
--
ALTER TABLE `adminlogin`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cartitems`
--
ALTER TABLE `cartitems`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cartproducts`
--
ALTER TABLE `cartproducts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `favourite`
--
ALTER TABLE `favourite`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orderdetail`
--
ALTER TABLE `orderdetail`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `plantdetails`
--
ALTER TABLE `plantdetails`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `userregister`
--
ALTER TABLE `userregister`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
