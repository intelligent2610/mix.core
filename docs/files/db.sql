-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:50924
-- Generation Time: Dec 09, 2020 at 04:46 AM
-- Server version: 5.7.9-log
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `localdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `aspnetroleclaims`
--

CREATE TABLE `aspnetroleclaims` (
  `Id` int(11) NOT NULL,
  `ClaimType` varchar(400) CHARACTER SET utf8 DEFAULT NULL,
  `ClaimValue` varchar(400) CHARACTER SET utf8 DEFAULT NULL,
  `RoleId` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `aspnetroles`
--

CREATE TABLE `aspnetroles` (
  `Id` varchar(50) CHARACTER SET utf8 NOT NULL,
  `ConcurrencyStamp` varchar(400) CHARACTER SET utf8 DEFAULT NULL,
  `Name` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `NormalizedName` varchar(250) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aspnetroles`
--

INSERT INTO `aspnetroles` (`Id`, `ConcurrencyStamp`, `Name`, `NormalizedName`) VALUES
('5520eb51-fd93-4513-af3a-5863721ba79d', 'b34ce10a-6aad-4253-a194-e818c78c62e7', 'SuperAdmin', 'SUPERADMIN');

-- --------------------------------------------------------

--
-- Table structure for table `aspnetuserclaims`
--

CREATE TABLE `aspnetuserclaims` (
  `Id` int(11) NOT NULL,
  `ApplicationUserId` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `ClaimType` varchar(400) CHARACTER SET utf8 DEFAULT NULL,
  `ClaimValue` varchar(400) CHARACTER SET utf8 DEFAULT NULL,
  `UserId` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `aspnetuserlogins`
--

CREATE TABLE `aspnetuserlogins` (
  `LoginProvider` varchar(50) CHARACTER SET utf8 NOT NULL,
  `ProviderKey` varchar(50) CHARACTER SET utf8 NOT NULL,
  `ApplicationUserId` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `ProviderDisplayName` varchar(400) CHARACTER SET utf8 DEFAULT NULL,
  `UserId` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `aspnetuserroles`
--

CREATE TABLE `aspnetuserroles` (
  `UserId` varchar(50) CHARACTER SET utf8 NOT NULL,
  `RoleId` varchar(50) CHARACTER SET utf8 NOT NULL,
  `ApplicationUserId` varchar(50) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aspnetuserroles`
--

INSERT INTO `aspnetuserroles` (`UserId`, `RoleId`, `ApplicationUserId`) VALUES
('28ee7b7c-bf63-4180-adf1-7f9940b26e77', '5520eb51-fd93-4513-af3a-5863721ba79d', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `aspnetusers`
--

CREATE TABLE `aspnetusers` (
  `Id` varchar(50) CHARACTER SET utf8 NOT NULL,
  `AccessFailedCount` int(11) NOT NULL,
  `Avatar` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `ConcurrencyStamp` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `CountryId` int(11) NOT NULL,
  `Culture` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `DOB` datetime(6) DEFAULT NULL,
  `Email` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `EmailConfirmed` bit(1) NOT NULL,
  `FirstName` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Gender` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `IsActived` bit(1) NOT NULL,
  `JoinDate` datetime(6) NOT NULL,
  `LastModified` datetime(6) NOT NULL,
  `LastName` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `LockoutEnabled` bit(1) NOT NULL,
  `LockoutEnd` datetime(6) DEFAULT NULL,
  `ModifiedBy` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `NickName` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `NormalizedEmail` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `NormalizedUserName` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `PasswordHash` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `PhoneNumber` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `PhoneNumberConfirmed` bit(1) NOT NULL,
  `RegisterType` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `SecurityStamp` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `TwoFactorEnabled` bit(1) NOT NULL,
  `UserName` varchar(250) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aspnetusers`
--

INSERT INTO `aspnetusers` (`Id`, `AccessFailedCount`, `Avatar`, `ConcurrencyStamp`, `CountryId`, `Culture`, `DOB`, `Email`, `EmailConfirmed`, `FirstName`, `Gender`, `IsActived`, `JoinDate`, `LastModified`, `LastName`, `LockoutEnabled`, `LockoutEnd`, `ModifiedBy`, `NickName`, `NormalizedEmail`, `NormalizedUserName`, `PasswordHash`, `PhoneNumber`, `PhoneNumberConfirmed`, `RegisterType`, `SecurityStamp`, `TwoFactorEnabled`, `UserName`) VALUES
('28ee7b7c-bf63-4180-adf1-7f9940b26e77', 0, '/assets/img/user.png', '2d7e2627-55aa-4c98-b4e5-0c2566ade481', 0, NULL, NULL, 'nhathoang989@gmail.com', b'0', NULL, NULL, b'0', '2020-12-05 03:44:22.346735', '0001-01-01 00:00:00.000000', NULL, b'1', NULL, NULL, NULL, 'NHATHOANG989@GMAIL.COM', 'SUPERADMIN', 'AQAAAAEAACcQAAAAECame1hhE3+7WpHCfd81elHynAiouP7R1kg1u5B9C56fxx1HZz+G+/sp5KKRV4ukrA==', NULL, b'0', NULL, 'XUWEUIZZGQYXIOQBUMNCDUQKOEXJFGOT', b'0', 'superadmin');

-- --------------------------------------------------------

--
-- Table structure for table `aspnetusertokens`
--

CREATE TABLE `aspnetusertokens` (
  `UserId` varchar(50) CHARACTER SET utf8 NOT NULL,
  `LoginProvider` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Value` varchar(400) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `Id` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Active` bit(1) NOT NULL,
  `AllowedOrigin` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `ApplicationType` int(11) NOT NULL,
  `Name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `RefreshTokenLifeTime` int(11) NOT NULL,
  `Secret` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mix_attribute_field`
--

CREATE TABLE `mix_attribute_field` (
  `Id` int(11) NOT NULL,
  `AttributeSetId` int(11) NOT NULL,
  `AttributeSetName` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Regex` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Title` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `DataType` int(11) NOT NULL,
  `DefaultValue` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `Name` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Options` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `IsRequire` bit(1) NOT NULL,
  `IsEncrypt` bit(1) NOT NULL,
  `IsMultiple` bit(1) NOT NULL,
  `IsSelect` bit(1) NOT NULL,
  `IsUnique` bit(1) NOT NULL,
  `ReferenceId` int(11) DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `CreatedDateTime` datetime NOT NULL,
  `Priority` int(11) NOT NULL,
  `Status` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Configurations` longtext CHARACTER SET utf8mb4
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mix_attribute_field`
--

INSERT INTO `mix_attribute_field` (`Id`, `AttributeSetId`, `AttributeSetName`, `Regex`, `Title`, `DataType`, `DefaultValue`, `Name`, `Options`, `IsRequire`, `IsEncrypt`, `IsMultiple`, `IsSelect`, `IsUnique`, `ReferenceId`, `ModifiedBy`, `CreatedBy`, `LastModified`, `CreatedDateTime`, `Priority`, `Status`, `Configurations`) VALUES
(1, 1, 'sys_menu_item', NULL, 'Title', 7, NULL, 'title', NULL, b'1', b'0', b'0', b'0', b'0', NULL, NULL, NULL, NULL, '2020-12-05 03:44:35', 0, 'Published', '{\"upload\":{\"width\":null,\"height\":null,\"isCrop\":false}}'),
(2, 1, 'sys_menu_item', NULL, 'Uri', 7, NULL, 'uri', '[]', b'0', b'0', b'0', b'0', b'0', NULL, NULL, NULL, NULL, '2020-12-05 03:44:35', 1, 'Published', '{\"upload\":{\"width\":null,\"height\":null,\"isCrop\":false}}'),
(3, 1, 'sys_menu_item', NULL, 'Icon', 19, NULL, 'icon', '[]', b'0', b'0', b'0', b'0', b'0', NULL, NULL, NULL, NULL, '2020-12-05 03:44:36', 2, 'Published', '{\"upload\":{\"width\":null,\"height\":null,\"isCrop\":false}}'),
(4, 1, 'sys_menu_item', NULL, 'Type', 7, 'Uri', 'type', '[\r\n  {\r\n    \"value\": \"Uri\",\r\n    \"dataType\": 7\r\n  },\r\n  {\r\n    \"value\": \"Page\",\r\n    \"dataType\": 7\r\n  },\r\n  {\r\n    \"value\": \"Post\",\r\n    \"dataType\": 7\r\n  }\r\n]', b'0', b'0', b'0', b'1', b'0', NULL, NULL, NULL, NULL, '2020-12-05 03:44:36', 3, 'Published', '{\"upload\":{\"width\":null,\"height\":null,\"isCrop\":false}}'),
(5, 1, 'sys_menu_item', NULL, 'Target', 7, '_top', 'target', '[\r\n  {\r\n    \"value\": \"_blank\",\r\n    \"dataType\": 7\r\n  },\r\n  {\r\n    \"value\": \"_self\",\r\n    \"dataType\": 7\r\n  },\r\n  {\r\n    \"value\": \"_parent\",\r\n    \"dataType\": 7\r\n  },\r\n  {\r\n    \"value\": \"_top\",\r\n    \"dataType\": 7\r\n  },\r\n  {\r\n    \"value\": \"framename\",\r\n    \"dataType\": 7\r\n  }\r\n]', b'0', b'0', b'0', b'1', b'0', NULL, NULL, NULL, NULL, '2020-12-05 03:44:36', 4, 'Published', '{\"upload\":{\"width\":null,\"height\":null,\"isCrop\":false}}'),
(6, 1, 'sys_menu_item', NULL, 'Classes', 7, NULL, 'classes', NULL, b'0', b'0', b'0', b'0', b'0', NULL, NULL, NULL, NULL, '2020-12-05 03:44:36', 5, 'Published', '{\"upload\":{\"width\":null,\"height\":null,\"isCrop\":false}}'),
(7, 1, 'sys_menu_item', NULL, 'Description', 9, NULL, 'description', NULL, b'0', b'0', b'0', b'0', b'0', NULL, NULL, NULL, NULL, '2020-12-05 03:44:36', 6, 'Published', '{\"upload\":{\"width\":null,\"height\":null,\"isCrop\":false}}'),
(8, 1, 'sys_menu_item', NULL, 'Menu Items', 23, NULL, 'menu_items', NULL, b'0', b'0', b'0', b'0', b'0', 1, NULL, NULL, NULL, '2020-12-05 03:44:36', 7, 'Published', '{\"upload\":{\"width\":null,\"height\":null,\"isCrop\":false}}'),
(9, 1, 'sys_menu_item', NULL, 'Alt', 7, NULL, 'alt', '[]', b'0', b'0', b'0', b'0', b'0', NULL, NULL, NULL, NULL, '2020-12-05 03:44:36', 8, 'Published', '{\"upload\":{\"width\":null,\"height\":null,\"isCrop\":false}}'),
(10, 1, 'sys_menu_item', NULL, 'Hreflang', 7, NULL, 'hreflang', '[]', b'0', b'0', b'0', b'0', b'0', NULL, NULL, NULL, NULL, '2020-12-05 03:44:36', 9, 'Published', '{\"upload\":{\"width\":null,\"height\":null,\"isCrop\":false}}'),
(11, 1, 'sys_menu_item', NULL, 'Rel', 7, NULL, 'rel', '[\r\n  {\r\n    \"value\": \"next\",\r\n    \"dataType\": 7\r\n  },\r\n  {\r\n    \"value\": \"nofollow\",\r\n    \"dataType\": 7\r\n  },\r\n  {\r\n    \"value\": \"noreferrer\",\r\n    \"dataType\": 7\r\n  },\r\n  {\r\n    \"value\": \"prev\",\r\n    \"dataType\": 7\r\n  }\r\n]', b'0', b'0', b'0', b'1', b'0', NULL, NULL, NULL, NULL, '2020-12-05 03:44:36', 10, 'Published', '{\"upload\":{\"width\":null,\"height\":null,\"isCrop\":false}}'),
(12, 2, 'sys_navigation', NULL, 'Title', 7, NULL, 'title', '[]', b'1', b'0', b'0', b'0', b'0', NULL, NULL, NULL, NULL, '2020-12-05 03:44:36', 0, 'Published', '{\"upload\":{\"width\":null,\"height\":null,\"isCrop\":false}}'),
(13, 2, 'sys_navigation', NULL, 'Name', 7, NULL, 'name', NULL, b'1', b'0', b'0', b'0', b'0', NULL, NULL, NULL, NULL, '2020-12-05 03:44:36', 1, 'Published', '{\"upload\":{\"width\":null,\"height\":null,\"isCrop\":false}}'),
(14, 2, 'sys_navigation', NULL, 'Menu Items', 23, NULL, 'menu_items', '[]', b'0', b'0', b'0', b'0', b'0', 1, NULL, NULL, NULL, '2020-12-05 03:44:36', 2, 'Published', '{\"upload\":{\"width\":null,\"height\":null,\"isCrop\":false}}'),
(15, 7, 'sys_category', NULL, 'Title', 7, NULL, 'title', '[]', b'1', b'0', b'0', b'0', b'1', NULL, NULL, NULL, NULL, '2020-12-05 03:44:36', 1, 'Published', '{\"upload\":{\"width\":null,\"height\":null,\"isCrop\":false}}'),
(16, 7, 'sys_category', NULL, 'Slug', 7, NULL, 'slug', '[]', b'1', b'0', b'0', b'0', b'1', NULL, NULL, NULL, NULL, '2020-12-05 03:44:36', 2, 'Published', '{\"upload\":{\"width\":null,\"height\":null,\"isCrop\":false}}'),
(17, 7, 'sys_category', NULL, 'Type', 7, 'Post', 'type', '[\r\n  {\r\n    \"value\": \"Post\",\r\n    \"dataType\": 7\r\n  },\r\n  {\r\n    \"value\": \"Page\",\r\n    \"dataType\": 7\r\n  },\r\n  {\r\n    \"value\": \"Module\",\r\n    \"dataType\": 7\r\n  }\r\n]', b'0', b'0', b'0', b'1', b'0', NULL, NULL, NULL, NULL, '2020-12-05 03:44:36', 3, 'Published', '{\"upload\":{\"width\":null,\"height\":null,\"isCrop\":false}}'),
(18, 7, 'sys_category', NULL, 'Icon', 19, NULL, 'icon', '[]', b'0', b'0', b'0', b'0', b'0', NULL, NULL, NULL, NULL, '2020-12-05 03:44:37', 4, 'Published', '{\"upload\":{\"width\":null,\"height\":null,\"isCrop\":false}}'),
(19, 7, 'sys_category', NULL, 'Description', 9, NULL, 'description', '[]', b'0', b'0', b'0', b'0', b'0', NULL, NULL, NULL, NULL, '2020-12-05 03:44:37', 5, 'Published', '{\"upload\":{\"width\":null,\"height\":null,\"isCrop\":false}}'),
(20, 8, 'sys_tag', NULL, 'Title', 7, NULL, 'title', '[]', b'1', b'0', b'0', b'0', b'1', NULL, NULL, NULL, NULL, '2020-12-05 03:44:37', 1, 'Published', '{\"upload\":{\"width\":null,\"height\":null,\"isCrop\":false}}'),
(21, 8, 'sys_tag', NULL, 'Slug', 7, NULL, 'slug', '[]', b'1', b'0', b'0', b'0', b'1', NULL, NULL, NULL, NULL, '2020-12-05 03:44:37', 2, 'Published', '{\"upload\":{\"width\":null,\"height\":null,\"isCrop\":false}}'),
(22, 8, 'sys_tag', NULL, 'Type', 7, 'Post', 'type', '[]', b'0', b'0', b'0', b'0', b'0', NULL, NULL, NULL, NULL, '2020-12-05 03:44:37', 3, 'Published', '{\"upload\":{\"width\":null,\"height\":null,\"isCrop\":false}}'),
(23, 9, 'post_type', NULL, 'Title', 7, NULL, 'title', '[]', b'0', b'0', b'0', b'0', b'0', NULL, NULL, NULL, NULL, '2020-12-05 03:44:37', 1, 'Published', '{\"upload\":{\"width\":null,\"height\":null,\"isCrop\":false}}'),
(24, 9, 'post_type', NULL, 'Attribute Set Name', 7, NULL, 'attribute_set_name', '[]', b'0', b'0', b'0', b'0', b'0', NULL, NULL, NULL, NULL, '2020-12-05 03:44:37', 2, 'Published', '{\"upload\":{\"width\":null,\"height\":null,\"isCrop\":false}}'),
(25, 9, 'post_type', NULL, 'Icon', 19, NULL, 'icon', '[]', b'0', b'0', b'0', b'0', b'0', NULL, NULL, NULL, NULL, '2020-12-05 03:44:37', 3, 'Published', '{\"upload\":{\"width\":null,\"height\":null,\"isCrop\":false}}'),
(26, 10, 'register', NULL, 'Họ', 7, NULL, 'ho', '[]', b'0', b'0', b'0', b'0', b'0', NULL, NULL, NULL, NULL, '2020-12-05 05:33:08', 1, 'Published', '{\"upload\":{\"width\":null,\"height\":null,\"isCrop\":false}}'),
(27, 10, 'register', NULL, 'Tên', 7, NULL, 'ten', '[]', b'0', b'0', b'0', b'0', b'0', NULL, NULL, NULL, NULL, '2020-12-05 05:33:08', 2, 'Published', '{\"upload\":{\"width\":null,\"height\":null,\"isCrop\":false}}'),
(28, 10, 'register', NULL, 'Số điện thoại', 7, NULL, 'so_dien_thoai', '[]', b'0', b'0', b'0', b'0', b'0', NULL, NULL, NULL, NULL, '2020-12-05 05:33:08', 3, 'Published', '{\"upload\":{\"width\":null,\"height\":null,\"isCrop\":false}}'),
(29, 10, 'register', NULL, 'CMND', 7, NULL, 'cmnd', '[]', b'0', b'0', b'0', b'0', b'0', NULL, NULL, NULL, NULL, '2020-12-05 05:33:08', 5, 'Published', '{\"upload\":{\"width\":null,\"height\":null,\"isCrop\":false}}'),
(30, 10, 'register', NULL, 'Email', 10, NULL, 'email', '[]', b'0', b'0', b'0', b'0', b'0', NULL, NULL, NULL, NULL, '2020-12-05 05:33:08', 4, 'Published', '{\"upload\":{\"width\":null,\"height\":null,\"isCrop\":false}}'),
(31, 10, 'register', NULL, 'Phương thức nhận quà', 7, NULL, 'phuong_thuc_nhan_qua', '[]', b'0', b'0', b'0', b'0', b'0', NULL, NULL, NULL, NULL, '2020-12-05 05:33:08', 10, 'Published', '{\"upload\":{\"width\":null,\"height\":null,\"isCrop\":false}}'),
(32, 11, 'media', NULL, 'Title', 7, NULL, 'title', '[]', b'0', b'0', b'0', b'0', b'0', NULL, NULL, NULL, NULL, '2020-12-05 05:35:46', 1, 'Published', '{\"upload\":{\"width\":null,\"height\":null,\"isCrop\":false}}'),
(33, 11, 'media', NULL, 'Upload File', 16, NULL, 'upload_file', '[]', b'0', b'0', b'0', b'0', b'0', NULL, NULL, NULL, NULL, '2020-12-05 05:35:46', 2, 'Published', '{\"upload\":{\"width\":null,\"height\":null,\"isCrop\":false}}'),
(37, 12, 'thong_tin_hoa_don', NULL, 'Ngày mua hàng', 2, NULL, 'ngay_mua_hang', '[]', b'0', b'0', b'0', b'0', b'0', NULL, NULL, NULL, NULL, '2020-12-05 05:38:27', 3, 'Published', '{\"upload\":{\"width\":null,\"height\":null,\"isCrop\":false}}'),
(39, 10, 'register', NULL, 'Hóa Đơn', 23, NULL, 'hoa_don', '[]', b'0', b'0', b'0', b'0', b'0', 12, NULL, NULL, NULL, '2020-12-05 05:40:03', 8, 'Published', '{\"upload\":{\"width\":null,\"height\":null,\"isCrop\":false}}'),
(40, 10, 'register', NULL, 'Giới tính', 7, NULL, 'gioi_tinh', '[\r\n  {\r\n    \"value\": \"Ông\",\r\n    \"dataType\": 7\r\n  },\r\n  {\r\n    \"value\": \"Bà\",\r\n    \"dataType\": 7\r\n  }\r\n]', b'0', b'0', b'0', b'1', b'0', NULL, NULL, NULL, NULL, '2020-12-09 05:27:37', 0, 'Published', '{\"upload\":{\"width\":null,\"height\":null,\"isCrop\":false}}'),
(41, 10, 'register', NULL, 'Ngày cấp', 2, NULL, 'ngay_cap', '[]', b'0', b'0', b'0', b'0', b'0', NULL, NULL, NULL, NULL, '2020-12-09 05:27:38', 6, 'Published', '{\"upload\":{\"width\":null,\"height\":null,\"isCrop\":false}}'),
(42, 10, 'register', NULL, 'Hình CMND', 23, NULL, 'hinh_cmnd', '[]', b'0', b'0', b'0', b'0', b'0', 11, NULL, NULL, NULL, '2020-12-09 05:27:38', 7, 'Published', '{\"upload\":{\"width\":800,\"height\":600,\"isCrop\":true}}'),
(43, 13, 'thong_tin_san_pham', NULL, 'Mã sản phẩm', 7, NULL, 'ma_san_pham', '[]', b'0', b'0', b'0', b'0', b'0', NULL, NULL, NULL, NULL, '2020-12-09 05:28:47', 1, 'Published', '{\"upload\":{\"width\":null,\"height\":null,\"isCrop\":false}}'),
(44, 13, 'thong_tin_san_pham', NULL, 'PNC', 7, NULL, 'pnc', '[]', b'0', b'0', b'0', b'0', b'0', NULL, NULL, NULL, NULL, '2020-12-09 05:28:47', 2, 'Published', '{\"upload\":{\"width\":null,\"height\":null,\"isCrop\":false}}'),
(45, 13, 'thong_tin_san_pham', NULL, 'SN', 0, NULL, 'sn', '[]', b'0', b'0', b'0', b'0', b'0', NULL, NULL, NULL, NULL, '2020-12-09 05:28:47', 3, 'Published', '{\"upload\":{\"width\":null,\"height\":null,\"isCrop\":false}}'),
(46, 13, 'thong_tin_san_pham', NULL, 'Hình Tem', 23, NULL, 'hinh_tem', '[]', b'0', b'0', b'0', b'0', b'0', 11, NULL, NULL, NULL, '2020-12-09 05:28:47', 4, 'Published', '{\"upload\":{\"width\":null,\"height\":null,\"isCrop\":false}}'),
(47, 12, 'thong_tin_hoa_don', NULL, 'Hóa đơn', 7, NULL, 'hoa_don', '[]', b'0', b'0', b'0', b'0', b'0', NULL, NULL, NULL, NULL, '2020-12-09 05:31:16', 0, 'Published', '{\"upload\":{\"width\":null,\"height\":null,\"isCrop\":false}}'),
(48, 12, 'thong_tin_hoa_don', NULL, 'Mã sản phẩm', 7, NULL, 'ma_san_pham', '[]', b'0', b'0', b'0', b'0', b'0', NULL, NULL, NULL, NULL, '2020-12-09 05:31:16', 1, 'Published', '{\"upload\":{\"width\":null,\"height\":null,\"isCrop\":false}}'),
(49, 12, 'thong_tin_hoa_don', NULL, 'Giá trị', 6, NULL, 'gia_tri', '[]', b'0', b'0', b'0', b'0', b'0', NULL, NULL, NULL, NULL, '2020-12-09 05:31:16', 2, 'Published', '{\"upload\":{\"width\":null,\"height\":null,\"isCrop\":false}}'),
(50, 12, 'thong_tin_hoa_don', NULL, 'Nơi mua', 7, NULL, 'noi_mua', '[]', b'0', b'0', b'0', b'0', b'0', NULL, NULL, NULL, NULL, '2020-12-09 05:31:16', 5, 'Published', '{\"upload\":{\"width\":null,\"height\":null,\"isCrop\":false}}'),
(51, 12, 'thong_tin_hoa_don', NULL, 'Hình hóa đơn', 23, NULL, 'hinh_hoa_don', '[]', b'0', b'0', b'0', b'0', b'0', 11, NULL, NULL, NULL, '2020-12-09 05:31:16', 6, 'Published', '{\"upload\":{\"width\":null,\"height\":null,\"isCrop\":false}}'),
(52, 10, 'register', NULL, 'Sản phẩm', 23, NULL, 'san_pham', '[]', b'0', b'0', b'0', b'0', b'0', 13, NULL, NULL, NULL, '2020-12-09 05:31:47', 9, 'Published', '{\"upload\":{\"width\":null,\"height\":null,\"isCrop\":false}}');

-- --------------------------------------------------------

--
-- Table structure for table `mix_attribute_set`
--

CREATE TABLE `mix_attribute_set` (
  `Id` int(11) NOT NULL,
  `Type` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Title` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Name` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Description` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `FormTemplate` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `EdmTemplate` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `EdmSubject` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `EdmFrom` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `EdmAutoSend` bit(1) DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `CreatedDateTime` datetime NOT NULL,
  `Priority` int(11) NOT NULL,
  `Status` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mix_attribute_set`
--

INSERT INTO `mix_attribute_set` (`Id`, `Type`, `Title`, `Name`, `Description`, `FormTemplate`, `EdmTemplate`, `EdmSubject`, `EdmFrom`, `EdmAutoSend`, `ModifiedBy`, `CreatedBy`, `LastModified`, `CreatedDateTime`, `Priority`, `Status`) VALUES
(1, 'System', 'Menu Item', 'sys_menu_item', NULL, 'Layouts/Footer.cshtml', 'Layouts/Footer.cshtml', NULL, NULL, NULL, NULL, NULL, '2020-06-18 05:20:33', '2020-12-05 03:44:35', 0, 'Published'),
(2, 'System', 'Navigation', 'sys_navigation', NULL, 'Forms/_Blank.cshtml', 'Edms/_Blank.cshtml', NULL, NULL, NULL, NULL, NULL, NULL, '2020-12-05 03:44:35', 0, 'Published'),
(3, 'System', 'Page', 'sys_additional_field_page', NULL, 'Forms/_Blank.cshtml', 'Edms/_Blank.cshtml', NULL, NULL, NULL, NULL, NULL, NULL, '2020-12-05 03:44:35', 0, 'Published'),
(4, 'System', 'Module', 'sys_additional_field_module', NULL, 'Forms/_Blank.cshtml', 'Edms/_Blank.cshtml', NULL, NULL, NULL, NULL, NULL, NULL, '2020-12-05 03:44:35', 0, 'Published'),
(5, 'System', 'Post', 'sys_additional_field_post', NULL, 'Forms/_Blank.cshtml', 'Edms/_Blank.cshtml', NULL, NULL, NULL, NULL, NULL, NULL, '2020-12-05 03:44:35', 0, 'Published'),
(6, 'System', 'Additional Field', 'sys_additional_field', NULL, 'Forms/_Blank.cshtml', 'Edms/_Blank.cshtml', NULL, NULL, NULL, NULL, NULL, NULL, '2020-12-05 03:44:35', 1, 'Published'),
(7, 'System', 'Category', 'sys_category', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-12-05 03:44:35', 2, 'Published'),
(8, 'System', 'Tag', 'sys_tag', NULL, 'Forms/_Blank.cshtml', 'Edms/_Blank.cshtml', NULL, NULL, NULL, NULL, NULL, NULL, '2020-12-05 03:44:35', 3, 'Published'),
(9, 'System', 'Post Type', 'post_type', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-26 10:19:31', '2020-12-05 03:44:35', 0, 'Published'),
(10, 'System', 'Register', 'register', NULL, 'Widgets/Register_Form.cshtml', 'Widgets/Register_Form.cshtml', NULL, NULL, NULL, NULL, NULL, '2020-12-09 05:56:25', '2020-12-05 05:33:08', 0, 'Published'),
(11, 'System', 'Media', 'media', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-12-05 05:35:46', 0, 'Published'),
(12, 'System', 'Thông Tin Hóa Đơn', 'thong_tin_hoa_don', NULL, 'Widgets/Register_Form.cshtml', 'Widgets/Register_Form.cshtml', NULL, NULL, NULL, NULL, NULL, '2020-12-09 05:31:16', '2020-12-05 05:38:27', 0, 'Published'),
(13, 'System', 'Thông tin sản phẩm', 'thong_tin_san_pham', NULL, 'Widgets/Register_Form.cshtml', 'Widgets/Register_Form.cshtml', NULL, NULL, NULL, NULL, NULL, NULL, '2020-12-09 05:28:47', 0, 'Published');

-- --------------------------------------------------------

--
-- Table structure for table `mix_attribute_set_data`
--

CREATE TABLE `mix_attribute_set_data` (
  `Id` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Specificulture` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `AttributeSetId` int(11) NOT NULL,
  `AttributeSetName` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `CreatedDateTime` datetime NOT NULL,
  `Priority` int(11) NOT NULL,
  `Status` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mix_attribute_set_data`
--

INSERT INTO `mix_attribute_set_data` (`Id`, `Specificulture`, `AttributeSetId`, `AttributeSetName`, `ModifiedBy`, `CreatedBy`, `LastModified`, `CreatedDateTime`, `Priority`, `Status`) VALUES
('30f1bae5-6015-4562-8f75-dcbc73893259', 'vi-vn', 13, 'thong_tin_san_pham', NULL, 'superadmin', NULL, '2020-12-09 05:34:52', 1, 'Published'),
('494f5993-9420-4f43-af0b-80d1da909ac7', 'vi-vn', 3, 'sys_additional_field_page', NULL, NULL, NULL, '2020-12-05 04:54:59', 0, 'Published'),
('5b7ad92d-7dd0-4657-be3e-6e4a6629c35b', 'vi-vn', 3, 'sys_additional_field_page', NULL, NULL, NULL, '2020-12-05 05:04:28', 0, 'Published'),
('6b1b8d03-fddc-4d6d-8754-cbe337721028', 'vi-vn', 12, 'thong_tin_hoa_don', NULL, NULL, NULL, '2020-12-08 13:01:30', 1, 'Published'),
('928b31ca-81bd-406a-b054-e87f7036ee9e', 'vi-vn', 11, 'media', NULL, 'superadmin', NULL, '2020-12-09 05:54:50', 1, 'Published'),
('c3b6bf50-a423-4f23-95ac-55aa554d4645', 'vi-vn', 3, 'sys_additional_field_page', NULL, NULL, NULL, '2020-12-05 05:03:17', 0, 'Published'),
('d0496617-e46f-4fdf-a709-4a7a6bf52d8d', 'vi-vn', 10, 'register', NULL, 'superadmin', NULL, '2020-12-09 05:54:31', 2, 'Published'),
('db6c1ecd-ef9e-4bfb-b7ee-a7a17ba3c263', 'vi-vn', 2, 'sys_navigation', NULL, 'superadmin', NULL, '2020-12-05 17:05:04', 1, 'Published'),
('f734d9de-7e0c-4d84-8d7e-242dcb18c26d', 'vi-vn', 11, 'media', NULL, NULL, NULL, '2020-12-08 13:01:30', 1, 'Published');

-- --------------------------------------------------------

--
-- Table structure for table `mix_attribute_set_reference`
--

CREATE TABLE `mix_attribute_set_reference` (
  `Id` int(11) NOT NULL,
  `ParentId` int(11) NOT NULL,
  `ParentType` int(11) NOT NULL,
  `Description` varchar(450) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Image` varchar(450) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `AttributeSetId` int(11) NOT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `CreatedDateTime` datetime NOT NULL,
  `Priority` int(11) NOT NULL,
  `Status` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mix_attribute_set_value`
--

CREATE TABLE `mix_attribute_set_value` (
  `Id` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Specificulture` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `AttributeFieldId` int(11) NOT NULL,
  `AttributeFieldName` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `AttributeSetName` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Regex` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `DataType` int(11) NOT NULL,
  `BooleanValue` bit(1) DEFAULT NULL,
  `DataId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `DateTimeValue` datetime DEFAULT NULL,
  `DoubleValue` double DEFAULT NULL,
  `IntegerValue` int(11) DEFAULT NULL,
  `StringValue` varchar(4000) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `EncryptValue` varchar(4000) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `EncryptKey` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `EncryptType` int(11) NOT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `CreatedDateTime` datetime NOT NULL,
  `Priority` int(11) NOT NULL,
  `Status` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mix_attribute_set_value`
--

INSERT INTO `mix_attribute_set_value` (`Id`, `Specificulture`, `AttributeFieldId`, `AttributeFieldName`, `AttributeSetName`, `Regex`, `DataType`, `BooleanValue`, `DataId`, `DateTimeValue`, `DoubleValue`, `IntegerValue`, `StringValue`, `EncryptValue`, `EncryptKey`, `EncryptType`, `ModifiedBy`, `CreatedBy`, `LastModified`, `CreatedDateTime`, `Priority`, `Status`) VALUES
('1e8ab078-5fa1-4bf5-93ba-30d6dbff2123', 'vi-vn', 29, 'cmnd', 'register', NULL, 7, NULL, 'd0496617-e46f-4fdf-a709-4a7a6bf52d8d', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-12-09 05:54:31', 5, 'Published'),
('3e342648-9f7c-446e-8c5b-9a5bbe993328', 'vi-vn', 45, 'sn', 'thong_tin_san_pham', NULL, 0, NULL, '30f1bae5-6015-4562-8f75-dcbc73893259', NULL, NULL, NULL, '123123123', NULL, NULL, 0, NULL, NULL, NULL, '2020-12-09 05:34:52', 3, 'Published'),
('3f81dd19-357f-4922-a764-3b51e4051b71', 'vi-vn', 31, 'phuong_thuc_nhan_qua', 'register', NULL, 7, NULL, 'd0496617-e46f-4fdf-a709-4a7a6bf52d8d', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-12-09 05:54:31', 10, 'Published'),
('432773dc-4842-4c0f-8d0e-255e168d629c', 'vi-vn', 44, 'pnc', 'thong_tin_san_pham', NULL, 7, NULL, '30f1bae5-6015-4562-8f75-dcbc73893259', NULL, NULL, NULL, '213123', NULL, NULL, 0, NULL, NULL, NULL, '2020-12-09 05:34:52', 2, 'Published'),
('531e4213-9728-4ffe-a4cb-603dd14bb3cc', 'vi-vn', 40, 'gioi_tinh', 'register', NULL, 7, NULL, 'd0496617-e46f-4fdf-a709-4a7a6bf52d8d', NULL, NULL, NULL, 'Ông', NULL, NULL, 0, NULL, NULL, NULL, '2020-12-09 05:54:31', 0, 'Published'),
('62ca94f9-6153-4fd4-b181-8fbe25986071', 'vi-vn', 41, 'ngay_cap', 'register', NULL, 2, NULL, 'd0496617-e46f-4fdf-a709-4a7a6bf52d8d', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-12-09 05:54:31', 6, 'Published'),
('66c7c440-1b6d-48ad-8a06-4cea9839e23d', 'vi-vn', 13, 'name', 'sys_navigation', NULL, 7, NULL, 'db6c1ecd-ef9e-4bfb-b7ee-a7a17ba3c263', NULL, NULL, NULL, 'top', NULL, NULL, 0, NULL, NULL, NULL, '2020-12-05 17:05:05', 1, 'Published'),
('6c1eb5f1-2c26-44d1-a1a8-e12f5a35221e', 'vi-vn', 12, 'title', 'sys_navigation', NULL, 7, NULL, 'db6c1ecd-ef9e-4bfb-b7ee-a7a17ba3c263', NULL, NULL, NULL, 'Top', NULL, NULL, 0, NULL, NULL, NULL, '2020-12-05 17:05:05', 0, 'Published'),
('7b20e81e-11b9-4666-ba1e-3b5e4f34bef8', 'vi-vn', 52, 'san_pham', 'register', NULL, 23, NULL, 'd0496617-e46f-4fdf-a709-4a7a6bf52d8d', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-12-09 05:54:31', 9, 'Published'),
('7f411932-bab0-4b40-9de5-d05bde32d00a', 'vi-vn', 26, 'ho', 'register', NULL, 7, NULL, 'd0496617-e46f-4fdf-a709-4a7a6bf52d8d', NULL, NULL, NULL, 'asdf', NULL, NULL, 0, NULL, NULL, NULL, '2020-12-09 05:54:31', 1, 'Published'),
('8de42696-9171-4d54-b9e1-bb6fd8a6ccda', 'vi-vn', 35, 'pnc', 'thong_tin_hoa_don', NULL, 7, NULL, '6b1b8d03-fddc-4d6d-8754-cbe337721028', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-12-08 13:01:31', 2, 'Published'),
('918ee1f3-70bf-4604-8ee9-777570c32688', 'vi-vn', 42, 'hinh_cmnd', 'register', NULL, 23, NULL, 'd0496617-e46f-4fdf-a709-4a7a6bf52d8d', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-12-09 05:54:31', 7, 'Published'),
('a73030c7-a70f-413c-8d0f-aabc166595a8', 'vi-vn', 32, 'title', 'media', NULL, 7, NULL, 'f734d9de-7e0c-4d84-8d7e-242dcb18c26d', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-12-08 13:01:30', 1, 'Published'),
('a8746d7c-2410-4671-8c54-e1c9da24c26c', 'vi-vn', 36, 'serial_number', 'thong_tin_hoa_don', NULL, 7, NULL, '6b1b8d03-fddc-4d6d-8754-cbe337721028', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-12-08 13:01:31', 3, 'Published'),
('ab0d09ec-388e-4fa3-9e1a-7a88ddaa36cf', 'vi-vn', 34, 'model', 'thong_tin_hoa_don', NULL, 7, NULL, '6b1b8d03-fddc-4d6d-8754-cbe337721028', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-12-08 13:01:31', 1, 'Published'),
('b14ae921-391b-4a52-b1a1-1aeef4db32c5', 'vi-vn', 30, 'email', 'register', NULL, 10, NULL, 'd0496617-e46f-4fdf-a709-4a7a6bf52d8d', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-12-09 05:54:31', 4, 'Published'),
('b30965cb-5aef-4f6a-aad5-676e41f4fbc2', 'vi-vn', 14, 'menu_items', 'sys_navigation', NULL, 23, NULL, 'db6c1ecd-ef9e-4bfb-b7ee-a7a17ba3c263', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-12-05 17:05:05', 2, 'Published'),
('c444cd1d-db5b-43ab-98c0-59d8ead6c67c', 'vi-vn', 37, 'ngay_mua_hang', 'thong_tin_hoa_don', NULL, 2, NULL, '6b1b8d03-fddc-4d6d-8754-cbe337721028', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-12-08 13:01:31', 4, 'Published'),
('c7660328-90ba-4d98-b3c3-7158e537809c', 'vi-vn', 28, 'so_dien_thoai', 'register', NULL, 7, NULL, 'd0496617-e46f-4fdf-a709-4a7a6bf52d8d', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-12-09 05:54:31', 3, 'Published'),
('c83bb533-2745-4847-8f1f-82227ce46190', 'vi-vn', 33, 'upload_file', 'media', NULL, 16, NULL, '928b31ca-81bd-406a-b054-e87f7036ee9e', NULL, NULL, NULL, '/content/templates/electrolux/uploads/2020-12/19201en1-637430900861508887.jpg', NULL, NULL, 0, NULL, NULL, NULL, '2020-12-09 05:54:50', 2, 'Published'),
('c93952f4-e680-4ec8-8a71-7b446443cf37', 'vi-vn', 32, 'title', 'media', NULL, 7, NULL, '928b31ca-81bd-406a-b054-e87f7036ee9e', NULL, NULL, NULL, 'asds', NULL, NULL, 0, NULL, NULL, NULL, '2020-12-09 05:54:50', 1, 'Published'),
('ce1fa0b0-bbe6-4c61-8a39-ba005e24ae45', 'vi-vn', 43, 'ma_san_pham', 'thong_tin_san_pham', NULL, 7, NULL, '30f1bae5-6015-4562-8f75-dcbc73893259', NULL, NULL, NULL, '12312', NULL, NULL, 0, NULL, NULL, NULL, '2020-12-09 05:34:52', 1, 'Published'),
('d40410a0-6da4-4e72-a863-d3f3f6538624', 'vi-vn', 33, 'upload_file', 'media', NULL, 16, NULL, 'f734d9de-7e0c-4d84-8d7e-242dcb18c26d', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-12-08 13:01:30', 2, 'Published'),
('e7c4b917-fc4b-405c-9e58-ee5d1dd86cc4', 'vi-vn', 46, 'hinh_tem', 'thong_tin_san_pham', NULL, 23, NULL, '30f1bae5-6015-4562-8f75-dcbc73893259', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-12-09 05:34:52', 4, 'Published'),
('f9df3c06-5774-4538-b384-227a592fe262', 'vi-vn', 27, 'ten', 'register', NULL, 7, NULL, 'd0496617-e46f-4fdf-a709-4a7a6bf52d8d', NULL, NULL, NULL, 'asdf', NULL, NULL, 0, NULL, NULL, NULL, '2020-12-09 05:54:31', 2, 'Published'),
('ff9bbe52-a34e-476f-ba7d-8e27f9304f3a', 'vi-vn', 39, 'hoa_don', 'register', NULL, 23, NULL, 'd0496617-e46f-4fdf-a709-4a7a6bf52d8d', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-12-09 05:54:31', 8, 'Published');

-- --------------------------------------------------------

--
-- Table structure for table `mix_cache`
--

CREATE TABLE `mix_cache` (
  `Id` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Value` varchar(4000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ExpiredDateTime` datetime DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `CreatedDateTime` datetime NOT NULL,
  `Priority` int(11) NOT NULL,
  `Status` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mix_cms_user`
--

CREATE TABLE `mix_cms_user` (
  `Id` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Address` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Avatar` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `FirstName` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `LastName` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `MiddleName` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `PhoneNumber` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Username` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Email` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `CreatedDateTime` datetime NOT NULL,
  `Priority` int(11) NOT NULL,
  `Status` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mix_cms_user`
--

INSERT INTO `mix_cms_user` (`Id`, `Address`, `Avatar`, `FirstName`, `LastName`, `MiddleName`, `PhoneNumber`, `Username`, `Email`, `ModifiedBy`, `CreatedBy`, `LastModified`, `CreatedDateTime`, `Priority`, `Status`) VALUES
('28ee7b7c-bf63-4180-adf1-7f9940b26e77', NULL, '/assets/img/user.png', NULL, NULL, NULL, NULL, 'superadmin', 'nhathoang989@gmail.com', 'superadmin', 'superadmin', '2020-12-05 03:44:23', '2020-12-05 03:44:23', 0, 'Actived');

-- --------------------------------------------------------

--
-- Table structure for table `mix_configuration`
--

CREATE TABLE `mix_configuration` (
  `Id` int(11) NOT NULL,
  `Specificulture` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Keyword` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Category` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `DataType` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Description` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Value` varchar(4000) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedDateTime` datetime NOT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `Priority` int(11) NOT NULL,
  `Status` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mix_configuration`
--

INSERT INTO `mix_configuration` (`Id`, `Specificulture`, `Keyword`, `Category`, `DataType`, `Description`, `Value`, `CreatedBy`, `CreatedDateTime`, `ModifiedBy`, `LastModified`, `Priority`, `Status`) VALUES
(1, 'vi-vn', 'SiteName', 'Common', 'Text', 'Site Name', 'Electrolux Tet 2021', NULL, '2020-12-05 03:43:43', NULL, NULL, 0, 'Published'),
(2, 'vi-vn', 'LanguageVersion', 'Version', 'Text', 'Language Version', '1', NULL, '2020-12-05 03:43:43', NULL, NULL, 0, 'Published'),
(3, 'vi-vn', 'SettingVersion', 'Version', 'Text', 'Settings Version', '1', NULL, '2020-12-05 03:43:44', NULL, NULL, 0, 'Published'),
(4, 'vi-vn', 'ThemeName', 'Site', 'Text', 'Theme Name', 'electrolux', NULL, '2020-12-05 03:43:44', NULL, NULL, 0, 'Published'),
(5, 'vi-vn', 'ThemeFolder', 'Site', 'Text', 'Theme Folder', 'electrolux', NULL, '2020-12-05 03:43:44', NULL, NULL, 0, 'Published'),
(6, 'vi-vn', 'ThemeId', 'Site', 'Text', 'Theme Id', '2', NULL, '2020-12-05 03:43:44', NULL, NULL, 0, 'Published'),
(7, 'vi-vn', 'DateTimeFormat', 'Common', 'Text', 'Date Time Format', 'dd-MM-yyyy HH:mm:ss', NULL, '2020-12-05 03:43:44', NULL, NULL, 0, 'Published'),
(8, 'vi-vn', 'StartWeekOn', 'Common', 'Text', 'Day', 'Monday', NULL, '2020-12-05 03:43:44', NULL, NULL, 0, 'Published'),
(9, 'vi-vn', 'post_image_width', 'Site', 'Integer', 'Post Image Width', '800', NULL, '2020-12-05 03:43:44', 'superadmin', '2020-12-07 16:19:30', 0, 'Published'),
(10, 'vi-vn', 'post_image_height', 'Site', 'Integer', 'Post Image Height', '600', NULL, '2020-12-05 03:43:44', 'superadmin', '2020-12-07 16:19:44', 0, 'Published');

-- --------------------------------------------------------

--
-- Table structure for table `mix_culture`
--

CREATE TABLE `mix_culture` (
  `Id` int(11) NOT NULL,
  `Alias` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Description` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `FullName` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Icon` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `LCID` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Specificulture` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `CreatedBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedDateTime` datetime NOT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `Priority` int(11) NOT NULL,
  `Status` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mix_culture`
--

INSERT INTO `mix_culture` (`Id`, `Alias`, `Description`, `FullName`, `Icon`, `LCID`, `Specificulture`, `CreatedBy`, `CreatedDateTime`, `ModifiedBy`, `LastModified`, `Priority`, `Status`) VALUES
(1, NULL, NULL, 'Việt Nam - Tiếng việt', 'flag-icon-vn', NULL, 'vi-vn', NULL, '2020-12-05 03:43:41', NULL, NULL, 0, 'Published');

-- --------------------------------------------------------

--
-- Table structure for table `mix_file`
--

CREATE TABLE `mix_file` (
  `Id` int(11) NOT NULL,
  `StringContent` varchar(4000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Extension` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `FileFolder` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `FileName` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `FolderType` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ThemeId` int(11) DEFAULT NULL,
  `ThemeName` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `CreatedBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedDateTime` datetime NOT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `Priority` int(11) NOT NULL,
  `Status` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mix_language`
--

CREATE TABLE `mix_language` (
  `Id` int(11) NOT NULL,
  `Specificulture` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Keyword` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Category` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `DataType` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Description` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Value` varchar(4000) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `DefaultValue` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedDateTime` datetime NOT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `Priority` int(11) NOT NULL,
  `Status` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mix_media`
--

CREATE TABLE `mix_media` (
  `Id` int(11) NOT NULL,
  `Specificulture` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Description` varchar(4000) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Extension` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `FileFolder` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `FileName` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `FileProperties` varchar(4000) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `FileSize` bigint(20) NOT NULL,
  `FileType` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Title` varchar(4000) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Tags` varchar(400) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Source` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `TargetUrl` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedDateTime` datetime NOT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `Priority` int(11) NOT NULL,
  `Status` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mix_media`
--

INSERT INTO `mix_media` (`Id`, `Specificulture`, `Description`, `Extension`, `FileFolder`, `FileName`, `FileProperties`, `FileSize`, `FileType`, `Title`, `Tags`, `Source`, `TargetUrl`, `CreatedBy`, `CreatedDateTime`, `ModifiedBy`, `LastModified`, `Priority`, `Status`) VALUES
(1, 'vi-vn', '', '.jpg', 'content/templates/electrolux/uploads/2020-12', '19201en1-637430028041512914', NULL, 0, 'image', '19201_en_1.jpg', NULL, NULL, NULL, NULL, '2020-12-08 05:40:06', NULL, NULL, 0, 'Published'),
(2, 'vi-vn', '', '.jpg', 'content/templates/electrolux/uploads/2020-12', '19230en1-637430033162465681', NULL, 0, 'image', '19230_en_1.jpg', NULL, NULL, NULL, NULL, '2020-12-08 05:48:37', NULL, NULL, 0, 'Published'),
(3, 'vi-vn', '', '.jpg', 'content/templates/electrolux/uploads/2020-12', '19666en1-637430283761818336', NULL, 0, 'image', '19666_en_1.jpg', NULL, NULL, NULL, NULL, '2020-12-08 12:46:17', NULL, NULL, 0, 'Published'),
(4, 'vi-vn', '', '.jpg', 'content/templates/electrolux/uploads/2020-12', '19230en1-637430284025629557', NULL, 0, 'image', '19230_en_1.jpg', NULL, NULL, NULL, NULL, '2020-12-08 12:46:43', NULL, NULL, 0, 'Published'),
(5, 'vi-vn', '', '.jpg', 'content/templates/electrolux/uploads/2020-12', '19230en1-637430292840717802', NULL, 0, 'image', '19230_en_1.jpg', NULL, NULL, NULL, NULL, '2020-12-08 13:01:25', NULL, NULL, 0, 'Published'),
(6, 'vi-vn', '', '.jpg', 'content/templates/electrolux/uploads/2020-12', '16074351575363330963840850135544-637430320254065087', NULL, 0, 'image', '16074351575363330963840850135544.jpg', NULL, NULL, NULL, NULL, '2020-12-08 13:47:06', NULL, NULL, 0, 'Published'),
(8, 'vi-vn', '', '.jpg', 'content/templates/electrolux/uploads/2020-12', '16074352340528540135657050364579-637430320828245681', NULL, 0, 'image', '16074352340528540135657050364579.jpg', NULL, NULL, NULL, NULL, '2020-12-08 13:48:03', NULL, NULL, 0, 'Published'),
(9, 'vi-vn', '', '.jpg', 'content/templates/electrolux/uploads/2020-12', '73ff3ff079629700aa14ae662e63071a-637430773601225732', NULL, 0, 'image', '73ff3ff0-7962-9700-aa14-ae662e63071a.jpg', NULL, NULL, NULL, NULL, '2020-12-09 02:22:40', NULL, NULL, 0, 'Published'),
(10, 'vi-vn', '', '.jpg', 'content/templates/electrolux/uploads/2020-12', '19170en1-637430882265996405', NULL, 0, 'image', '19170_en_1.jpg', NULL, NULL, NULL, NULL, '2020-12-09 05:23:47', NULL, NULL, 0, 'Published'),
(11, 'vi-vn', '', '.jpg', 'content/templates/electrolux/uploads/2020-12', '19542en1-637430887515699360', NULL, 0, 'image', '19542_en_1.jpg', NULL, NULL, NULL, NULL, '2020-12-09 05:32:32', NULL, NULL, 0, 'Published'),
(12, 'vi-vn', NULL, '.jpg', 'content/templates/electrolux/uploads/2020-12', '19666en1-637430889616458310', NULL, 0, 'image', '19666en1-637430889616458310', NULL, NULL, NULL, NULL, '2020-12-09 05:36:04', NULL, NULL, 0, 'Published'),
(13, 'vi-vn', NULL, '.jpg', 'content/templates/electrolux/uploads/2020-12', '19201en1-637430900861508887', NULL, 0, 'image', '19201en1-637430900861508887', NULL, NULL, NULL, NULL, '2020-12-09 05:54:47', NULL, NULL, 0, 'Published');

-- --------------------------------------------------------

--
-- Table structure for table `mix_messenger_hub_room`
--

CREATE TABLE `mix_messenger_hub_room` (
  `Id` char(36) NOT NULL,
  `Avatar` varchar(250) CHARACTER SET utf8mb4 DEFAULT NULL,
  `CreatedDate` datetime NOT NULL,
  `Description` longtext CHARACTER SET utf8mb4,
  `HostId` varchar(128) CHARACTER SET utf8mb4 DEFAULT NULL,
  `IsOpen` tinyint(1) NOT NULL,
  `LastModified` datetime DEFAULT NULL,
  `Name` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `TeamId` int(11) DEFAULT NULL,
  `Title` varchar(250) CHARACTER SET utf8mb4 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mix_messenger_message`
--

CREATE TABLE `mix_messenger_message` (
  `Id` char(36) NOT NULL,
  `Content` longtext CHARACTER SET utf8mb4,
  `CreatedDate` datetime NOT NULL,
  `RoomId` char(36) DEFAULT NULL,
  `TeamId` int(11) DEFAULT NULL,
  `UserId` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mix_messenger_nav_room_user`
--

CREATE TABLE `mix_messenger_nav_room_user` (
  `RoomId` char(36) NOT NULL,
  `UserId` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `JoinedDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mix_messenger_nav_team_user`
--

CREATE TABLE `mix_messenger_nav_team_user` (
  `TeamId` int(11) NOT NULL,
  `UserId` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `JoinedDate` datetime NOT NULL,
  `LastModified` datetime DEFAULT NULL,
  `Status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mix_messenger_team`
--

CREATE TABLE `mix_messenger_team` (
  `Id` int(11) NOT NULL,
  `Avatar` varchar(250) CHARACTER SET utf8mb4 DEFAULT NULL,
  `CreatedDate` datetime NOT NULL,
  `HostId` varchar(128) CHARACTER SET utf8mb4 DEFAULT NULL,
  `IsOpen` tinyint(1) DEFAULT NULL,
  `Name` varchar(250) CHARACTER SET utf8mb4 NOT NULL,
  `Type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mix_messenger_user`
--

CREATE TABLE `mix_messenger_user` (
  `Id` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `FacebookId` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
  `Avatar` varchar(250) CHARACTER SET utf8mb4 DEFAULT NULL,
  `CreatedDate` datetime NOT NULL,
  `LastModified` datetime DEFAULT NULL,
  `Name` varchar(250) CHARACTER SET utf8mb4 NOT NULL,
  `Status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mix_messenger_user_device`
--

CREATE TABLE `mix_messenger_user_device` (
  `UserId` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `ConnectionId` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `DeviceId` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `Status` int(11) NOT NULL,
  `StartDate` datetime NOT NULL,
  `EndDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mix_module`
--

CREATE TABLE `mix_module` (
  `Id` int(11) NOT NULL,
  `Specificulture` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Description` varchar(4000) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Fields` varchar(4000) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Thumbnail` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Image` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Template` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `FormTemplate` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `EdmTemplate` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Title` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Type` int(11) NOT NULL,
  `PageSize` int(11) DEFAULT NULL,
  `CreatedBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedDateTime` datetime NOT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `Priority` int(11) NOT NULL,
  `Status` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `PostType` longtext CHARACTER SET utf8mb4
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mix_module_data`
--

CREATE TABLE `mix_module_data` (
  `Id` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Specificulture` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ModuleId` int(11) NOT NULL,
  `PageId` int(11) DEFAULT NULL,
  `PostId` int(11) DEFAULT NULL,
  `Fields` varchar(4000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Value` varchar(4000) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedDateTime` datetime NOT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `Priority` int(11) NOT NULL,
  `Status` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mix_module_post`
--

CREATE TABLE `mix_module_post` (
  `Id` int(11) NOT NULL,
  `Specificulture` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `PostId` int(11) NOT NULL,
  `ModuleId` int(11) NOT NULL,
  `Description` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Image` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedDateTime` datetime NOT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `Priority` int(11) NOT NULL,
  `Status` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mix_page`
--

CREATE TABLE `mix_page` (
  `Id` int(11) NOT NULL,
  `Specificulture` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `CssClass` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Excerpt` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `Icon` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Image` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Layout` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Level` int(11) DEFAULT NULL,
  `SeoDescription` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `SeoKeywords` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `SeoName` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `SeoTitle` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `StaticUrl` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Tags` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `Template` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Title` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `Type` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Views` int(11) DEFAULT NULL,
  `PageSize` int(11) DEFAULT NULL,
  `ExtraFields` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `CreatedBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedDateTime` datetime NOT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `Priority` int(11) NOT NULL,
  `Status` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `PostType` longtext CHARACTER SET utf8mb4
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mix_page`
--

INSERT INTO `mix_page` (`Id`, `Specificulture`, `Content`, `CssClass`, `Excerpt`, `Icon`, `Image`, `Layout`, `Level`, `SeoDescription`, `SeoKeywords`, `SeoName`, `SeoTitle`, `StaticUrl`, `Tags`, `Template`, `Title`, `Type`, `Views`, `PageSize`, `ExtraFields`, `CreatedBy`, `CreatedDateTime`, `ModifiedBy`, `LastModified`, `Priority`, `Status`, `PostType`) VALUES
(1, 'vi-vn', NULL, NULL, NULL, NULL, 'assets/img/bgs/tag.jpg', 'Masters/_Layout.cshtml', 0, 'tag', 'tag', 'tag', 'tag', NULL, NULL, 'Pages/_Tag.cshtml', 'Tag', 'System', NULL, NULL, NULL, 'admin', '2020-12-05 03:44:34', NULL, '2019-07-13 01:41:56', 0, 'Published', NULL),
(2, 'vi-vn', NULL, NULL, NULL, NULL, 'assets/img/bgs/search.jpg', 'Masters/_Layout.cshtml', 0, 'search', 'search', 'search', 'search', NULL, NULL, 'Pages/_Search.cshtml', 'Search', 'System', NULL, NULL, NULL, 'admin', '2020-12-05 03:44:34', NULL, '2019-07-13 01:41:42', 0, 'Published', NULL),
(3, 'vi-vn', NULL, NULL, NULL, NULL, 'assets/img/bgs/404.jpg', 'Masters/_Blank.cshtml', 0, '404', '404', '404', '404', NULL, NULL, 'Pages/_Blank.cshtml', '404', 'System', NULL, NULL, NULL, 'admin', '2020-12-05 03:44:34', NULL, '2019-07-13 01:43:50', 0, 'Published', NULL),
(4, 'vi-vn', NULL, NULL, NULL, NULL, 'assets/img/bgs/403.png', 'Masters/_Blank.cshtml', 0, '403', '403', '403', '403', NULL, NULL, 'Pages/_Blank.cshtml', '403', 'System', NULL, NULL, NULL, 'admin', '2020-12-05 03:44:34', NULL, '2019-07-13 01:44:08', 0, 'Published', NULL),
(5, 'vi-vn', NULL, NULL, NULL, NULL, 'assets/img/bgs/500.png', 'Masters/_Blank.cshtml', 0, '500', '500', '500', '500', NULL, NULL, 'Pages/_Blank.cshtml', '500', 'System', NULL, NULL, NULL, 'admin', '2020-12-05 03:44:34', NULL, '2019-07-13 01:46:16', 0, 'Published', NULL),
(6, 'vi-vn', NULL, NULL, NULL, NULL, 'assets/img/bgs/Maintenance.jpg', 'Masters/_Blank.cshtml', 0, 'maintenance', 'maintenance', 'maintenance', 'maintenance', NULL, NULL, 'Pages/_Maintenance.cshtml', 'Maintenance', 'System', NULL, NULL, NULL, 'admin', '2020-12-05 03:44:35', NULL, '2020-06-18 05:43:46', 0, 'Published', NULL),
(7, 'vi-vn', NULL, NULL, NULL, NULL, 'https://dev.mixcore.org/assets/img/bgs/home.jpeg', 'Masters/_Layout.cshtml', 0, 'home', 'home', 'home', 'home', NULL, NULL, 'Pages/Home.cshtml', 'Home', 'Home', NULL, NULL, NULL, 'admin', '2020-12-05 03:44:35', NULL, '2020-06-16 18:15:29', 0, 'Published', NULL),
(8, 'vi-vn', NULL, NULL, NULL, NULL, NULL, 'Masters/_Layout.cshtml', NULL, 'dang-ky', 'Đăng ký', 'dang-ky', 'Đăng ký', NULL, NULL, 'Pages/Dang_Ky.cshtml', 'Đăng ký', '0', NULL, NULL, NULL, 'superadmin', '2020-12-05 04:54:59', NULL, '2020-12-05 04:54:59', 0, 'Published', NULL),
(9, 'vi-vn', NULL, NULL, NULL, NULL, NULL, 'Masters/_Layout.cshtml', NULL, 'the-le-dieu-kien', 'Thể lệ điều kiện', 'the-le-dieu-kien', 'Thể lệ điều kiện', NULL, NULL, 'Pages/The_Le_Dieu_Kien.cshtml', 'Thể lệ điều kiện', '0', NULL, NULL, NULL, 'superadmin', '2020-12-05 05:03:16', NULL, '2020-12-05 05:03:16', 0, 'Published', NULL),
(10, 'vi-vn', NULL, NULL, NULL, NULL, NULL, 'Masters/_Layout.cshtml', NULL, 'ho-tro', 'Hỗ trợ', 'ho-tro', 'Hỗ trợ', NULL, NULL, 'Pages/Ho_Tro.cshtml', 'Hỗ trợ', '0', NULL, NULL, NULL, 'superadmin', '2020-12-05 05:04:28', NULL, '2020-12-05 05:04:28', 0, 'Published', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mix_page_module`
--

CREATE TABLE `mix_page_module` (
  `Id` int(11) NOT NULL,
  `Specificulture` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ModuleId` int(11) NOT NULL,
  `PageId` int(11) NOT NULL,
  `Description` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Image` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Position` int(11) NOT NULL,
  `CreatedBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedDateTime` datetime NOT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `Priority` int(11) NOT NULL,
  `Status` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mix_page_post`
--

CREATE TABLE `mix_page_post` (
  `Id` int(11) NOT NULL,
  `Specificulture` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `PostId` int(11) NOT NULL,
  `PageId` int(11) NOT NULL,
  `Description` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Image` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedDateTime` datetime NOT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `Priority` int(11) NOT NULL,
  `Status` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mix_portal_page`
--

CREATE TABLE `mix_portal_page` (
  `Id` int(11) NOT NULL,
  `Icon` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `TextKeyword` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Url` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Description` varchar(450) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `TextDefault` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Level` int(11) NOT NULL,
  `CreatedBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedDateTime` datetime NOT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `Priority` int(11) NOT NULL,
  `Status` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mix_portal_page_navigation`
--

CREATE TABLE `mix_portal_page_navigation` (
  `Id` int(11) NOT NULL,
  `PageId` int(11) NOT NULL,
  `ParentId` int(11) NOT NULL,
  `Description` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Image` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedDateTime` datetime NOT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `Priority` int(11) NOT NULL,
  `Status` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mix_portal_page_role`
--

CREATE TABLE `mix_portal_page_role` (
  `PageId` int(11) NOT NULL,
  `RoleId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `CreatedBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedDateTime` datetime NOT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `Priority` int(11) NOT NULL,
  `Status` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mix_post`
--

CREATE TABLE `mix_post` (
  `Id` int(11) NOT NULL,
  `Specificulture` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `PublishedDateTime` datetime DEFAULT NULL,
  `Excerpt` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `ExtraProperties` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `Icon` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `Image` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `SeoDescription` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `SeoKeywords` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `SeoName` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `SeoTitle` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `Source` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Tags` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `Template` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Thumbnail` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Title` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `Type` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Views` int(11) DEFAULT NULL,
  `ExtraFields` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `CreatedBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedDateTime` datetime NOT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `Priority` int(11) NOT NULL,
  `Status` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mix_post`
--

INSERT INTO `mix_post` (`Id`, `Specificulture`, `Content`, `PublishedDateTime`, `Excerpt`, `ExtraProperties`, `Icon`, `Image`, `SeoDescription`, `SeoKeywords`, `SeoName`, `SeoTitle`, `Source`, `Tags`, `Template`, `Thumbnail`, `Title`, `Type`, `Views`, `ExtraFields`, `CreatedBy`, `CreatedDateTime`, `ModifiedBy`, `LastModified`, `Priority`, `Status`) VALUES
(1, 'vi-vn', 'Run with Docker\n<p>Latest Docker Image\n</p><p>docker pull mixcore/mix.core:latest\n</p><p>docker run -it --rm -p 5000:80 --name mixcore_cms mixcore/mix.core:latest\n</p><p>Or with Docker Compose\n</p><p>docker-compose build\n</p><p>docker-compose up\n</p><p>GITs clone\n</p><p>mkdir mixcore\n</p><p>cd mixcore\n</p><p>\n</p><p>git clone https://github.com/mixcore/mix.core.git\n</p><p>Optional:\n</p><p>\n</p><p>Optional steps as those packages are Nuget Library\n</p><p>\n</p><p>git clone https://github.com/mixcore/mix.heart.git\n</p><p>git clone https://github.com/mixcore/mix.identity.git\n</p><p>Build &amp; Run with Dotnet SDK\n</p><p>Build &amp; Run Mixcore CMS\n</p><p>REM Make sure you already read and download Dotnet Core SDK here https://dotnet.microsoft.com/download\n</p><p>\n</p><p>cd mix.core/src/Mix.Cms.Web\n</p><p>\n</p><p>dotnet restore\n</p><p>dotnet build\n</p><p>dotnet run\n</p><p>Modify &amp; Build Portal Front-End source (Optional)\n</p><p>This step is optional and only needed in case you would like to modify the portal front-end code\n</p><p>\n</p><p>cd mix.core/src/portal-app\n</p><p>\n</p><p>npm install\n</p><p>npm install --global gulp-cli\n</p><p>gulp build\n</p><p>Note: If you facing any System.Data.SqlClient.SqlException error, please replace all content inside \"appsettings.json\" file with \"{}\".</p>', NULL, 'Fully Open Source UI Tools to create multi-purpose Web Apps, Mobile Apps & Application Services', NULL, NULL, NULL, 'Fully Open Source UI Tools to create multi-purpose Web Apps, Mobile Apps & Application Services', 'mixcore-cms', 'mixcore-cms', 'Mixcore CMS', NULL, '[]', 'Posts/_Blank.cshtml', NULL, 'Mixcore CMS', 'sys_additional_field_post', NULL, NULL, NULL, '2020-12-05 03:44:35', NULL, '2020-10-11 10:00:33', 0, 'Published');

-- --------------------------------------------------------

--
-- Table structure for table `mix_post_media`
--

CREATE TABLE `mix_post_media` (
  `Id` int(11) NOT NULL,
  `Specificulture` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `MediaId` int(11) NOT NULL,
  `PostId` int(11) NOT NULL,
  `Description` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Image` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Position` int(11) NOT NULL,
  `CreatedBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedDateTime` datetime NOT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `Priority` int(11) NOT NULL,
  `Status` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mix_post_module`
--

CREATE TABLE `mix_post_module` (
  `Id` int(11) NOT NULL,
  `Specificulture` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ModuleId` int(11) NOT NULL,
  `PostId` int(11) NOT NULL,
  `Description` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Image` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Position` int(11) NOT NULL,
  `CreatedBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedDateTime` datetime NOT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `Priority` int(11) NOT NULL,
  `Status` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mix_related_attribute_data`
--

CREATE TABLE `mix_related_attribute_data` (
  `Id` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Specificulture` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `DataId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ParentId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ParentType` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `AttributeSetId` int(11) NOT NULL,
  `AttributeSetName` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Description` varchar(450) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedDateTime` datetime NOT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `Priority` int(11) NOT NULL,
  `Status` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mix_related_attribute_data`
--

INSERT INTO `mix_related_attribute_data` (`Id`, `Specificulture`, `DataId`, `ParentId`, `ParentType`, `AttributeSetId`, `AttributeSetName`, `Description`, `CreatedBy`, `CreatedDateTime`, `ModifiedBy`, `LastModified`, `Priority`, `Status`) VALUES
('222fab7d-aff2-4122-92fa-9e6230d14528', 'vi-vn', '494f5993-9420-4f43-af0b-80d1da909ac7', '8', 'Page', 3, 'sys_additional_field_page', NULL, NULL, '2020-12-05 04:54:59', NULL, NULL, 0, 'Published'),
('60e86c3f-2038-495f-8fa7-dca582bd28be', 'vi-vn', '5b7ad92d-7dd0-4657-be3e-6e4a6629c35b', '10', 'Page', 3, 'sys_additional_field_page', NULL, NULL, '2020-12-05 05:04:28', NULL, NULL, 0, 'Published'),
('78755930-fb5c-469b-b73d-1a103d69cbcc', 'vi-vn', '928b31ca-81bd-406a-b054-e87f7036ee9e', 'd0496617-e46f-4fdf-a709-4a7a6bf52d8d', 'Set', 11, 'media', NULL, NULL, '2020-12-09 05:54:50', NULL, NULL, 0, 'Published'),
('f6a72fd1-837a-476a-a545-330087d45c63', 'vi-vn', 'c3b6bf50-a423-4f23-95ac-55aa554d4645', '9', 'Page', 3, 'sys_additional_field_page', NULL, NULL, '2020-12-05 05:03:17', NULL, NULL, 0, 'Published');

-- --------------------------------------------------------

--
-- Table structure for table `mix_related_attribute_set`
--

CREATE TABLE `mix_related_attribute_set` (
  `Id` int(11) NOT NULL,
  `Specificulture` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `AttributeSetId` int(11) NOT NULL,
  `ParentId` int(11) NOT NULL,
  `ParentType` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Description` varchar(450) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Image` varchar(450) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedDateTime` datetime NOT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `Priority` int(11) NOT NULL,
  `Status` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mix_related_data`
--

CREATE TABLE `mix_related_data` (
  `Id` int(11) NOT NULL,
  `Specificulture` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `DataId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Type` int(11) NOT NULL,
  `ParentId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ParentType` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `AttributeSetId` int(11) NOT NULL,
  `AttributeSetName` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Description` varchar(450) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedDateTime` datetime NOT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `Priority` int(11) NOT NULL,
  `Status` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mix_related_post`
--

CREATE TABLE `mix_related_post` (
  `Id` int(11) NOT NULL,
  `Specificulture` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `SourceId` int(11) NOT NULL,
  `DestinationId` int(11) NOT NULL,
  `Description` varchar(450) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Image` varchar(450) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedDateTime` datetime NOT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `Priority` int(11) NOT NULL,
  `Status` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mix_template`
--

CREATE TABLE `mix_template` (
  `Id` int(11) NOT NULL,
  `Content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Extension` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `FileFolder` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `FileName` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `FolderType` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `MobileContent` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `Scripts` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `SpaContent` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `Styles` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `ThemeId` int(11) NOT NULL,
  `ThemeName` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `CreatedBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedDateTime` datetime NOT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `Priority` int(11) NOT NULL,
  `Status` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mix_template`
--

INSERT INTO `mix_template` (`Id`, `Content`, `Extension`, `FileFolder`, `FileName`, `FolderType`, `MobileContent`, `Scripts`, `SpaContent`, `Styles`, `ThemeId`, `ThemeName`, `CreatedBy`, `CreatedDateTime`, `ModifiedBy`, `LastModified`, `Priority`, `Status`) VALUES
(24, '@using Mix.Cms.Lib\r\n@using Mix.Cms.Lib.Services\r\n@{ \r\n   string assetFolder = MixCmsHelper.GetAssetFolder(ViewBag.culture); \r\n   string templateFolder = MixCmsHelper.GetTemplateFolder(ViewBag.culture);\r\n}\r\n@*\r\n    // Get Configuration\r\n    @MixService.GetConfig<T>(\"conf_name\", ViewBag.culture)\r\n*@\r\n<h1>\r\n    Edm\r\n</h1>', '.cshtml', 'Views/Shared/Templates/electrolux/Edms', '_Blank', 'Edms', NULL, NULL, NULL, NULL, 2, 'electrolux', NULL, '2020-12-05 03:51:08', 'superadmin', '2020-12-05 03:51:08', 0, 'Deleted'),
(25, '@using Mix.Cms.Lib\r\n@using Mix.Cms.Lib.Services\r\n@{ \r\n   string assetFolder = MixCmsHelper.GetAssetFolder(ViewBag.culture); \r\n   string templateFolder = MixCmsHelper.GetTemplateFolder(ViewBag.culture);\r\n}\r\n\r\n<div class=\"row\" ng-init=\"initModuleForm(\'@Model.Name\');\">\r\n    <div class=\"col-sm-12\">\r\n        <form ng-class=\"{\'submitted\': submitted}\" ng-submit=\"saveModuleData()\" id=\"module-{{activedModuleData.moduleId}}\">\r\n            <div class=\"card\">\r\n                <div class=\"card-header text-center\">\r\n                    <h4 class=\"card-title\"></h4>\r\n                </div>\r\n                <div class=\"card-body\">\r\n                    <div class=\"row\">\r\n                        <div class=\"col-sm-12\">\r\n                            <div ng-repeat=\"prop in activedModuleData.dataProperties track by $index\">\r\n                                <module-form-editor is-show-title=\"\'true\'\" title=\"prop.title\" data=\"activedModuleData.jItem[prop.name]\" ng-if=\"!prop.isSelect\"></module-form-editor>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                    <div class=\"row\">\r\n                        <div class=\"col-sm-12\">\r\n                            <button type=\"submit\" class=\"btn btn-primary btn-round pull-right\">Submit</button>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n\r\n            </div>\r\n        </form>\r\n    </div>\r\n</div>', '.cshtml', 'Views/Shared/Templates/electrolux/Forms', '_Blank', 'Forms', NULL, NULL, NULL, NULL, 2, 'electrolux', NULL, '2020-12-05 03:51:08', 'superadmin', '2020-12-05 03:51:08', 0, 'Deleted'),
(28, '@using Microsoft.AspNetCore.Authorization\r\n@inject IAuthorizationService AuthorizationService\r\n\r\n@{\r\n    string culture = ViewBag.culture;\r\n    string assetFolder = Mix.Cms.Lib.MixCmsHelper.GetAssetFolder(ViewBag.culture);\r\n}\r\n<header class=\"header is-dark\">\r\n    <div class=\"permanent-notice theme-blue-mid text-center\">Thông tin của campaign...</div>\r\n    <nav class=\"navigation-wrapper\">\r\n        <div class=\"main-navigation__close js-mobile-menu-close hide\"><button class=\"close-icon\" type=\"button\" data-open=\"offCanvasRight\" aria-expanded=\"true\" aria-controls=\"offCanvasRight\" aria-label=\"Close icon\" aria-hidden=\"true\"></button></div>\r\n        <div class=\"main-navigation js-menu-container\" id=\"offCanvasRight\" data-off-canvas=\"\" data-transition=\"push\">\r\n            <div class=\"opt-left hide-for-small\">\r\n                <div class=\"navigation-logo\">\r\n                    <a href=\"/\" class=\"logo-link tracking-link\" data-track-location-id=\"header\" data-track-button-name=\"electrolux icon\">\r\n                    <img src=\"@assetFolder/assets/icons/electrolux_logo_sg.svg\" alt=\"Electrolux Vietnam\"></a>\r\n                </div>\r\n            </div>\r\n            <div class=\"main-navigation__menu js-dropdown-menu\" data-closing-time=\"200\" role=\"menubar\">\r\n                <div class=\"main-navigation__main-item has-submenu js-menu-item js-menu-expand-icon\"><a href=\"/dang-ky\" class=\"main-navigation__main-item-link\">Đăng Ký Tham Gia</a></div>\r\n                <div class=\"main-navigation__main-item has-submenu js-menu-item js-menu-expand-icon\"><a href=\"/the-le-dieu-kien\" class=\"main-navigation__main-item-link\">Thể Lệ và Điều Kiện</a></div>\r\n                <div class=\"main-navigation__main-item has-submenu js-menu-item\" role=\"menuitem\" aria-haspopup=\"true\" aria-label=\"Support\"><a href=\"/ho-tro\" class=\"main-navigation__main-item-link\">Hương Dẫn</a></div>\r\n                <div class=\"main-navigation__main-item has-submenu -profile navigation-icon js-menu-item js-menu-expand-icon\">\r\n                    <div class=\"mobileMenu hide-for-large main-navigation__main-item-link profile-button js-profile-button\">\r\n                        <div class=\"navigation-logo\"><a href=\"/\" class=\"logo-link tracking-link\" data-track-location-id=\"header\" data-track-button-name=\"electrolux icon\"><img src=\"@assetFolder/assets/icons/electrolux_logo_sg.svg\" alt=\"Electrolux Vietnam\"></a></div>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        <div class=\"js-off-canvas-overlay is-overlay-fixed\"></div>\r\n        <div class=\"main-nav off-canvas-content header-mobile\" data-off-canvas-content=\"\">\r\n        <div class=\"hide-for-large mobile-menu js-mobile-menu\" data-toggle=\"offCanvas\"><img class=\"preview\" src=\"@assetFolder/assets/img/place-holder.png\" data-src=\"@assetFolder/assets/icons/hamburger.svg\" width=\"25px\" height=\"25px\" alt=\"close\"></div>\r\n        <div class=\"header-mobile-logo\" role=\"menu\">\r\n            <div class=\"navigation-logo\" role=\"menuitem\"><a href=\"/\" class=\"logo-link tracking-link\" data-track-location-id=\"header\" data-track-button-name=\"electrolux icon\"><img src=\"@assetFolder/assets/icons/electrolux_logo_sg.svg\" alt=\"Electrolux Vietnam\"></a></div>\r\n        </div>\r\n        <div class=\"close-search-bar option-right-content hide click-disable\"><img class=\"preview\" src=\"@assetFolder/assets/img/place-holder.png\" data-src=\"@assetFolder/assets/img/cross.png\" alt=\"close\"></div>\r\n        </div>\r\n    </nav>\r\n</header>', '.cshtml', 'Views/Shared/Templates/electrolux/Layouts', 'Navigation', 'Layouts', NULL, NULL, NULL, NULL, 2, 'electrolux', NULL, '2020-12-05 03:51:08', 'superadmin', '2020-12-09 01:25:05', 0, 'Deleted'),
(29, '@{\r\n    string assetFolder = Mix.Cms.Lib.MixCmsHelper.GetAssetFolder(ViewBag.culture);\r\n}\r\n<header class=\"masthead\" style=\"background-image: url(\'@assetFolder/img/home-bg.jpg\')\">\r\n  <div class=\"overlay\"></div>\r\n  <div class=\"container\">\r\n    <div class=\"row\">\r\n      <div class=\"col-lg-8 col-md-10 mx-auto\">\r\n        <div class=\"site-heading\">\r\n          <h1>Clean Blog</h1>\r\n          <span class=\"subheading\">@Model.Title</span>\r\n        </div>\r\n      </div>\r\n    </div>\r\n  </div>\r\n</header>', '.cshtml', 'Views/Shared/Templates/electrolux/Layouts', 'Header', 'Layouts', NULL, NULL, NULL, NULL, 2, 'electrolux', NULL, '2020-12-05 03:51:08', 'superadmin', '2020-12-05 03:51:08', 0, 'Deleted'),
(30, '@{\r\n    string assetFolder = Mix.Cms.Lib.MixCmsHelper.GetAssetFolder(ViewBag.culture);\r\n}\r\n\r\n<section id=\"footerSection\">\r\n  <footer role=\"group\" class=\"footer\">\r\n    <div class=\"content-container row accordion-mobile hide-for-small\" data-allow-all-closed=\"true\" data-accordion=\"auh8l4-accordion\" role=\"tablist\">\r\n      <div class=\"columns col-12 col-md-2 accordion-item-mobile\" data-accordion-item=\"\" role=\"presentation\">\r\n        <div class=\"row accordion-content-mobile\" data-tab-content=\"\" role=\"tabpanel\" aria-labelledby=\"pp6ke7-accordion-label\" aria-hidden=\"false\" id=\"pp6ke7-accordion\">\r\n          <ul class=\"menu-group\">\r\n            <li><a class=\"group-tag\" href=\"#\" aria-controls=\"pp6ke7-accordion\" role=\"tab\" id=\"pp6ke7-accordion-label\" aria-expanded=\"false\" aria-selected=\"false\">Nhà bếp</a></li>\r\n            <li><a href=\"/thiet-bi/lo-nuong/\">Lò nướng âm tủ</a></li>\r\n            <li><a href=\"/thiet-bi/thiet-bi-nau-dung-doc-lap/\">Thiết bị nấu đứng độc lập</a></li>\r\n            <li><a href=\"/thiet-bi/bep/\">Bếp</a></li>\r\n            <li><a href=\"/thiet-bi/may-hut-mui/\">Máy hút mùi</a></li>\r\n            <li><a href=\"/thiet-bi/may-rua-bat/\">Máy rửa bát</a></li>\r\n            <li><a href=\"/thiet-bi/tu-lanh/\">Tủ lạnh</a></li>\r\n            <li><a href=\"/thiet-bi/lo-vi-song/\">Lò vi sóng &amp; thiết bị nấu để bàn</a></li>\r\n          </ul>\r\n        </div>\r\n      </div>\r\n      <div class=\"columns col-12 col-md-2 accordion-item-mobile\" data-accordion-item=\"\" role=\"presentation\">\r\n        <div class=\"row accordion-content-mobile\" data-tab-content=\"\" role=\"tabpanel\" aria-labelledby=\"t3oo40-accordion-label\" aria-hidden=\"false\" id=\"t3oo40-accordion\">\r\n          <ul class=\"menu-group\">\r\n            <li><span class=\"group-tag\"> </span></li>\r\n            <li><a href=\"/thiet-bi/may-pha-ca-phe/\" aria-controls=\"t3oo40-accordion\" role=\"tab\" id=\"t3oo40-accordion-label\" aria-expanded=\"false\" aria-selected=\"false\">Máy pha cà phê</a></li>\r\n            <li><a href=\"/thiet-bi/noi-com-dien/\">Nồi cơm điện</a></li>\r\n            <li><a href=\"/thiet-bi/may-nuong-banh-mi/\">Máy nướng bánh mì</a></li>\r\n            <li><a href=\"/thiet-bi/may-danh-trung/\">Máy đánh trứng</a></li>\r\n            <li><a href=\"/thiet-bi/binh-dun-nuoc/\">Bình đun nước</a></li>\r\n            <li><a href=\"/thiet-bi/may-xay-sinh-to-may-ep-trai-cay/\">Máy xay sinh tố &amp; máy ép trái cây</a></li>\r\n            <li><a href=\"/thiet-bi/cay-nuoc-nong-lanh/\">Cây nước nóng lạnh</a></li>\r\n          </ul>\r\n        </div>\r\n      </div>\r\n      <div class=\"columns col-12 col-md-2 accordion-item-mobile\" data-accordion-item=\"\" role=\"presentation\">\r\n        <div class=\"row accordion-content-mobile\" data-tab-content=\"\" role=\"tabpanel\" aria-labelledby=\"heh324-accordion-label\" aria-hidden=\"false\" id=\"heh324-accordion\">\r\n          <ul class=\"menu-group\">\r\n            <li><a class=\"group-tag\" href=\"#\" aria-controls=\"heh324-accordion\" role=\"tab\" id=\"heh324-accordion-label\" aria-expanded=\"false\" aria-selected=\"false\">Giặt ủi</a></li>\r\n            <li><a href=\"/thiet-bi/may-giat/\">Máy giặt và máy giặt sấy</a></li>\r\n            <li><a href=\"/thiet-bi/may-say/\">Máy sấy quần áo</a></li>\r\n            <li><a href=\"/thiet-bi/ban-ui/\">Bàn ủi, bàn là</a></li>\r\n            <li><a href=\"/thiet-bi/ban-ui-hoi-nuoc-dung/\">Bàn ủi hơi nước đứng</a></li>\r\n            <li><span class=\"group-tag\"> </span></li>\r\n            <li><a class=\"group-tag\" href=\"#\">Phụ kiện</a></li>\r\n            <li><a href=\"/thiet-bi/phu-kien/may-giat/\">Máy giặt</a></li>\r\n          </ul>\r\n        </div>\r\n      </div>\r\n      <div class=\"columns col-12 col-md-2 accordion-item-mobile\" data-accordion-item=\"\" role=\"presentation\">\r\n        <div class=\"row accordion-content-mobile\" data-tab-content=\"\" role=\"tabpanel\" aria-labelledby=\"rwxii9-accordion-label\" aria-hidden=\"false\" id=\"rwxii9-accordion\">\r\n          <ul class=\"menu-group\">\r\n            <li><a class=\"group-tag\" href=\"#\" aria-controls=\"rwxii9-accordion\" role=\"tab\" id=\"rwxii9-accordion-label\" aria-expanded=\"false\" aria-selected=\"false\">Tiện nghi gia đình</a></li>\r\n            <li><a href=\"/thiet-bi/may-hut-bui/\">Máy hút bụi</a></li>\r\n            <li><a href=\"/thiet-bi/may-lanh/\">Máy lạnh, điều hòa</a></li>\r\n            <li><a href=\"/thiet-bi/may-nuoc-nong/\">Máy tắm nước nóng</a></li>\r\n            <li><a href=\"/thiet-bi/may-loc-khong-khi/\">Máy lọc không khí</a></li>\r\n            <li><a href=\"/thiet-bi/may-hut-am/\">Máy hút ẩm</a></li>\r\n            <li><span class=\"group-tag\"> </span></li>\r\n          </ul>\r\n        </div>\r\n      </div>\r\n      <div class=\"columns col-12 col-md-2 accordion-item-mobile\" data-accordion-item=\"\" role=\"presentation\">\r\n        <div class=\"row accordion-content-mobile\" data-tab-content=\"\" role=\"tabpanel\" aria-labelledby=\"iksnam-accordion-label\" aria-hidden=\"false\" id=\"iksnam-accordion\">\r\n          <ul class=\"menu-group\">\r\n            <li><a class=\"group-tag\" href=\"#\" aria-controls=\"iksnam-accordion\" role=\"tab\" id=\"iksnam-accordion-label\" aria-expanded=\"false\" aria-selected=\"false\">Hỗ trợ khách hàng</a></li>\r\n            <li><a href=\"/ho-tro/#contact-us-anchor\">Liên hệ chúng tôi</a></li>\r\n            <li><a href=\"/ho-tro/dang-ky-bao-hanh-truc-tuyen/\">Đặt hẹn dịch vụ</a></li>\r\n            <li><a href=\"/ho-tro/dang-ky-bao-hanh/\">Đăng kí sản phẩm </a></li>\r\n            <li><a href=\"/ho-tro/dieu-khoan-va-dieu-kien-bao-hanh-chung/\">Thông tin bảo hành</a></li>\r\n            <li><a href=\"/ho-tro/faq/\">Xử lý sự cố</a></li>\r\n            <li><a href=\"/ho-tro/faq/cau-hoi-thuong-gap-ve-mua-hang-truc-tuyen/\">Câu hỏi thường gặp về đơn hàng trực tuyến</a></li>\r\n            <li><a href=\"/ho-tro/ung-dung-electrolux-life/\">Ứng dụng Electrolux Life</a></li>\r\n          </ul>\r\n        </div>\r\n      </div>\r\n      <div class=\"columns col-12 col-md-2 accordion-item-mobile\" data-accordion-item=\"\" role=\"presentation\">\r\n        <div class=\"row accordion-content-mobile\" data-tab-content=\"\" role=\"tabpanel\" aria-labelledby=\"f5nx7m-accordion-label\" aria-hidden=\"false\" id=\"f5nx7m-accordion\">\r\n          <ul class=\"menu-group\">\r\n            <li><a class=\"group-tag\" href=\"#\" aria-controls=\"f5nx7m-accordion\" role=\"tab\" id=\"f5nx7m-accordion-label\" aria-expanded=\"false\" aria-selected=\"false\">Giới thiệu</a></li>\r\n            <li><a href=\"/gioi-thieu-ve-electrolux/cong-ty-chung-toi/\">Công ty chúng tôi</a></li>\r\n            <li><a href=\"/gioi-thieu-ve-electrolux/nha-thiet-ke-giau-y-tuong/\">Nhà thiết kế cải tiến giàu ý tưởng</a></li>\r\n            <li><a href=\"/gioi-thieu-ve-electrolux/bao-ve-moi-truong/\">Bảo vệ môi trường</a></li>\r\n            <li><a href=\"https://career.electroluxgroup.com/open-jobs/?Country=Vietnam\">Mục tiêu nghề nghiệp</a></li>\r\n            <li><a href=\"/gioi-thieu-ve-electrolux/thuong-hieu-thiet-bi-gia-dung-hang-dau-den-tu-chau-au/\">Thương hiệu hàng đầu tại châu Âu</a></li>\r\n            <li><span class=\"group-tag\"> </span></li>\r\n            <li><a href=\"/mua-o-dau/\" class=\"group-tag-link\">Mua ở đâu </a></li>\r\n          </ul>\r\n        </div>\r\n      </div>\r\n    </div>\r\n    <div class=\"content-container row accordion-mobile hide-for-large\" data-allow-all-closed=\"true\" data-accordion=\"\">\r\n      <div class=\"columns col-12 col-md-2 accordion-item-mobile\" data-accordion-item=\"\"><a class=\"group-tag\" href=\"#\">Nhà bếp</a>\r\n        <div class=\"row accordion-content-mobile\" data-tab-content=\"\" aria-hidden=\"false\">\r\n          <ul class=\"menu-group\">\r\n            <li role=\"footer-menuitem\"><a href=\"/thiet-bi/lo-nuong/\">Lò nướng âm tủ</a></li>\r\n            <li role=\"footer-menuitem\"><a href=\"/thiet-bi/thiet-bi-nau-dung-doc-lap/\">Thiết bị nấu đứng độc lập</a></li>\r\n            <li role=\"footer-menuitem\"><a href=\"/thiet-bi/bep/\">Bếp</a></li>\r\n            <li role=\"footer-menuitem\"><a href=\"/thiet-bi/may-hut-mui/\">Máy hút mùi</a></li>\r\n            <li role=\"footer-menuitem\"><a href=\"/thiet-bi/may-rua-bat/\">Máy rửa bát</a></li>\r\n            <li role=\"footer-menuitem\"><a href=\"/thiet-bi/tu-lanh/\">Tủ lạnh</a></li>\r\n            <li role=\"footer-menuitem\"><a href=\"/thiet-bi/lo-vi-song/\">Lò vi sóng &amp; thiết bị nấu để bàn</a></li>\r\n            <li role=\"footer-menuitem\"><a href=\"/thiet-bi/may-pha-ca-phe/\">Máy pha cà phê</a></li>\r\n            <li role=\"footer-menuitem\"><a href=\"/thiet-bi/noi-com-dien/\">Nồi cơm điện</a></li>\r\n            <li role=\"footer-menuitem\"><a href=\"/thiet-bi/may-nuong-banh-mi/\">Máy nướng bánh mì</a></li>\r\n            <li role=\"footer-menuitem\"><a href=\"/thiet-bi/may-danh-trung/\">Máy đánh trứng</a></li>\r\n            <li role=\"footer-menuitem\"><a href=\"/thiet-bi/binh-dun-nuoc/\">Bình đun nước</a></li>\r\n            <li role=\"footer-menuitem\"><a href=\"/thiet-bi/may-xay-sinh-to-may-ep-trai-cay/\">Máy xay sinh tố &amp; máy ép trái cây</a></li>\r\n            <li role=\"footer-menuitem\"><a href=\"/thiet-bi/cay-nuoc-nong-lanh/\">Cây nước nóng lạnh</a></li>\r\n          </ul>\r\n        </div>\r\n      </div>\r\n      <div class=\"columns col-12 col-md-2 accordion-item-mobile\" data-accordion-item=\"\"><a class=\"group-tag\" href=\"#\">Giặt ủi</a>\r\n        <div class=\"row accordion-content-mobile\" data-tab-content=\"\" aria-hidden=\"false\">\r\n          <ul class=\"menu-group\">\r\n            <li role=\"footer-menuitem\"><a href=\"/thiet-bi/may-giat/\">Máy giặt và máy giặt sấy</a></li>\r\n            <li role=\"footer-menuitem\"><a href=\"/thiet-bi/may-say/\">Máy sấy quần áo</a></li>\r\n            <li role=\"footer-menuitem\"><a href=\"/thiet-bi/ban-ui/\">Bàn ủi, bàn là</a></li>\r\n            <li role=\"footer-menuitem\"><a href=\"/thiet-bi/ban-ui-hoi-nuoc-dung/\">Bàn ủi hơi nước đứng</a></li>\r\n          </ul>\r\n        </div>\r\n      </div>\r\n      <div class=\"columns col-12 col-md-2 accordion-item-mobile\" data-accordion-item=\"\"><a class=\"group-tag\" href=\"#\">Phụ kiện</a>\r\n        <div class=\"row accordion-content-mobile\" data-tab-content=\"\" aria-hidden=\"false\">\r\n          <ul class=\"menu-group\">\r\n            <li role=\"footer-menuitem\"><a href=\"/thiet-bi/phu-kien/may-giat/\">Máy giặt</a></li>\r\n          </ul>\r\n        </div>\r\n      </div>\r\n      <div class=\"columns col-12 col-md-2 accordion-item-mobile\" data-accordion-item=\"\"><a class=\"group-tag\" href=\"#\">Tiện nghi gia đình</a>\r\n        <div class=\"row accordion-content-mobile\" data-tab-content=\"\" aria-hidden=\"false\">\r\n          <ul class=\"menu-group\">\r\n            <li role=\"footer-menuitem\"><a href=\"/thiet-bi/may-hut-bui/\">Máy hút bụi</a></li>\r\n            <li role=\"footer-menuitem\"><a href=\"/thiet-bi/may-lanh/\">Máy lạnh, điều hòa</a></li>\r\n            <li role=\"footer-menuitem\"><a href=\"/thiet-bi/may-nuoc-nong/\">Máy tắm nước nóng</a></li>\r\n            <li role=\"footer-menuitem\"><a href=\"/thiet-bi/may-loc-khong-khi/\">Máy lọc không khí</a></li>\r\n            <li role=\"footer-menuitem\"><a href=\"/thiet-bi/may-hut-am/\">Máy hút ẩm</a></li>\r\n          </ul>\r\n        </div>\r\n      </div>\r\n      <div class=\"columns col-12 col-md-2 accordion-item-mobile\" data-accordion-item=\"\"><a class=\"group-tag\" href=\"#\">Hỗ trợ khách hàng</a>\r\n        <div class=\"row accordion-content-mobile\" data-tab-content=\"\" aria-hidden=\"false\">\r\n          <ul class=\"menu-group\">\r\n            <li role=\"footer-menuitem\"><a href=\"/ho-tro/#contact-us-anchor\">Liên hệ chúng tôi</a></li>\r\n            <li role=\"footer-menuitem\"><a href=\"/ho-tro/dang-ky-bao-hanh-truc-tuyen/\">Đặt hẹn dịch vụ</a></li>\r\n            <li role=\"footer-menuitem\"><a href=\"/ho-tro/dang-ky-bao-hanh/\">Đăng kí sản phẩm </a></li>\r\n            <li role=\"footer-menuitem\"><a href=\"/ho-tro/dieu-khoan-va-dieu-kien-bao-hanh-chung/\">Thông tin bảo hành</a></li>\r\n            <li role=\"footer-menuitem\"><a href=\"/ho-tro/faq/\">Xử lý sự cố</a></li>\r\n            <li role=\"footer-menuitem\"><a href=\"/ho-tro/faq/cau-hoi-thuong-gap-ve-mua-hang-truc-tuyen/\">Câu hỏi thường gặp về đơn hàng trực tuyến</a></li>\r\n            <li role=\"footer-menuitem\"><a href=\"/ho-tro/ung-dung-electrolux-life/\">Ứng dụng Electrolux Life</a></li>\r\n          </ul>\r\n        </div>\r\n      </div>\r\n      <div class=\"columns col-12 col-md-2 accordion-item-mobile\" data-accordion-item=\"\"><a class=\"group-tag\" href=\"#\">Giới thiệu</a>\r\n        <div class=\"row accordion-content-mobile\" data-tab-content=\"\" aria-hidden=\"false\">\r\n          <ul class=\"menu-group\">\r\n            <li role=\"footer-menuitem\"><a href=\"/gioi-thieu-ve-electrolux/cong-ty-chung-toi/\">Công ty chúng tôi</a></li>\r\n            <li role=\"footer-menuitem\"><a href=\"/gioi-thieu-ve-electrolux/nha-thiet-ke-giau-y-tuong/\">Nhà thiết kế cải tiến giàu ý tưởng</a></li>\r\n            <li role=\"footer-menuitem\"><a href=\"/gioi-thieu-ve-electrolux/bao-ve-moi-truong/\">Bảo vệ môi trường</a></li>\r\n            <li role=\"footer-menuitem\"><a href=\"https://career.electroluxgroup.com/open-jobs/?Country=Vietnam\">Mục tiêu nghề nghiệp</a></li>\r\n            <li role=\"footer-menuitem\"><a href=\"/gioi-thieu-ve-electrolux/thuong-hieu-thiet-bi-gia-dung-hang-dau-den-tu-chau-au/\">Thương hiệu hàng đầu tại châu Âu</a></li>\r\n          </ul>\r\n        </div>\r\n      </div>\r\n      <div class=\"columns col-12 col-md-2 accordion-item-mobile\"><a href=\"/mua-o-dau/\" class=\"group-tag non-child\">Mua ở đâu </a>\r\n        <div class=\"row accordion-content-mobile\" data-tab-content=\"\" aria-hidden=\"false\">\r\n          <ul class=\"menu-group\"></ul>\r\n        </div>\r\n      </div>\r\n    </div>\r\n    <div class=\"footer-info\">\r\n      <div class=\"content-container\">\r\n        <div class=\"social-share col-12 col-md-8 pdl-sm-0 pdr-sm-0\">\r\n          <ul role=\"menu\">\r\n            <li role=\"menuitem\" class=\"icons\"><a href=\"https://www.facebook.com/electroluxvietnam/\" target=\"_blank\" rel=\"noreferrer\"><img class=\"preview\" data-src=\"@assetFolder/assets/icons/facebook.svg?mode=crop\" src=\"@assetFolder/assets/icons/facebook.svg?mode=crop\" alt=\"Electrolux Vietnam Facebook\" io-loaded=\"true\"></a></li>\r\n            <li role=\"menuitem\" class=\"icons\"><a href=\"https://www.pinterest.com/Electrolux/\" target=\"_blank\" rel=\"noreferrer\"><img class=\"preview\" data-src=\"@assetFolder/assets/icons/pinterest.svg?mode=crop\" src=\"@assetFolder/assets/icons/pinterest.svg?mode=crop\" alt=\"Electrolux Vietnam Pinterest\" io-loaded=\"true\"></a></li>\r\n            <li role=\"menuitem\" class=\"icons\"><a href=\"https://www.youtube.com/channel/UCM_o0GEyCYFWXEm7UpfJRIw\" target=\"_blank\" rel=\"noreferrer\"><img class=\"preview\" data-src=\"@assetFolder/assets/icons/youtube.svg?mode=crop\" src=\"@assetFolder/assets/icons/youtube.svg?mode=crop\" alt=\"Electrolux Vietnam YouTube\" io-loaded=\"true\"></a></li>\r\n            <li role=\"menuitem\" class=\"icons\"><a href=\"https://twitter.com/Electrolux\" target=\"_blank\" rel=\"noreferrer\"><img class=\"preview\" data-src=\"@assetFolder/assets/icons/twitter.svg?mode=crop\" src=\"@assetFolder/assets/icons/twitter.svg?mode=crop\" alt=\"Electrolux Vietnam Twitter\" io-loaded=\"true\"></a></li>\r\n          </ul>\r\n          <div class=\"copyright\">\r\n            <div class=\"content-container\"><span><a href=\"https://www.electroluxgroup.com/en/\" rel=\"noreferrer\">Electroluxgroup.com</a></span></div>\r\n          </div>\r\n        </div>\r\n        <div class=\"elux-life-app col-12 col-md-4\">\r\n          <div class=\"content-container--table\">\r\n            <div class=\"block-table\">\r\n              <div class=\"vertical-container block-table-cell\">\r\n                <div class=\"block-table\">\r\n                  <div class=\"block-table-cell elux-life-app--content without-logo\"><strong>Ứng dụng Electrolux Life</strong></div>\r\n                </div>\r\n              </div>\r\n            </div>\r\n            <div class=\"block-table\">\r\n              <div class=\"vertical-container block-table-cell\"><a href=\"https://apps.apple.com/app/apple-store/id1352924780?pt=498489&ct=brandsite&mt=8\"><img class=\"preview\" data-src=\"@assetFolder/assets/img/_thumb_10779.png\" src=\"@assetFolder/assets/img/_thumb_10779.png\" alt=\"Download Electrolux Life App iPhone\" io-loaded=\"true\"></a></div>\r\n              <div class=\"vertical-container block-table-cell\"><a href=\"https://play.google.com/store/apps/details?id=com.electrolux.electroluxlife\"><img class=\"preview\" data-src=\"@assetFolder/assets/img/_thumb_10778.png\" src=\"@assetFolder/assets/img/_thumb_10778.png\" alt=\"Download Electrolux App Android\" io-loaded=\"true\"></a></div>\r\n            </div>\r\n          </div>\r\n        </div>\r\n      </div>\r\n      <div class=\"copyright\">\r\n        <div class=\"content-container\">\r\n          <div class=\"col-12 col-lg-6 pdl-sm-0\">\r\n            <p>Bản quyền Electrolux năm 2017 - Bảo lưu mọi quyền<br>Công ty TNHH Electrolux Việt Nam<br>GPKD: 0100831110/KD-0364, do Sở Công Thương Hà Nội cấp ngày 16/10/2020<br>CNĐKDN: 0100831110, do Sở kế hoạch &amp; đầu tư Hà Nội cấp ngày 08/11/2019<br>Địa chỉ: Tầng 1 &amp; 15 tòa nhà Geleximco, số 36 Hoàng Cầu, phường Ô Chợ Dừa, quận Đống Đa, Hà Nội<br>Điện thoại: +84-438574882</p>\r\n            <div class=\"mgbt-sm-50 mgbt-md-0\"> </div>\r\n          </div>\r\n          <div class=\"col-12 col-lg-6 menu-footer\"><span><a href=\"/dieu-khoan-va-dieu-kien/\" rel=\"noreferrer\" title=\"Các điều khoản sử dụng trang web\">Các điều khoản sử dụng trang web</a>\r\n                <span>| </span></span>\r\n            <span><a href=\"/chinh-sach-bao-ve-du-lieu/\" rel=\"noreferrer\" title=\"Chính sách bảo mật thông tin\">Chính sách bảo mật thông tin</a>\r\n                <span>| </span></span>\r\n            <span><a href=\"/huong-dan-su-dung-cookie/\" rel=\"noreferrer\" title=\"Hướng dẫn sử dụng Cookie\">Hướng dẫn sử dụng Cookie</a>\r\n                <span>| </span></span>\r\n            <span><a href=\"/sitemap/\" rel=\"noreferrer\" title=\"Bản đồ trang\">Bản đồ trang</a></span>\r\n          </div>\r\n        </div>\r\n      </div>\r\n    </div>\r\n  </footer>\r\n</section>', '.cshtml', 'Views/Shared/Templates/electrolux/Layouts', 'Footer', 'Layouts', NULL, NULL, NULL, NULL, 2, 'electrolux', NULL, '2020-12-05 03:51:08', 'superadmin', '2020-12-05 04:26:36', 0, 'Deleted'),
(31, '@{ \r\n    string assetFolder = MixCmsHelper.GetAssetFolder(ViewBag.culture);\r\n}\r\n<!DOCTYPE html>\r\n<html lang=\"@ViewBag.culture\" amp>\r\n<head>\r\n    <meta charset=\"utf-8\" />\r\n    <meta name=\"viewport\" content=\"width=device-width,initial-scale=1\" />\r\n    <title>Mixcore FE Small - Electrolux Viet Nam</title>\r\n    <meta name=\"theme-color\" content=\"#333333\" />\r\n    <link rel=\"preload\" href=\"@assetFolder/assets/icons/electrolux_logo_sg.svg\" as=\"image\" />\r\n    <link rel=\"preload\" href=\"@assetFolder/assets/fonts/ElectroluxSansVN-Regular.woff2\" as=\"Font\" type=font/woff2 crossorigin />\r\n    <link rel=\"preload\" href=\"@assetFolder/assets/fonts/ElectroluxSansVN-DemiBold.woff2\" as=\"Font\" type=font/woff2 crossorigin />\r\n    <meta name=\"description\" content=\"Please fill in your contact and product information here to enjoy the protection from Electrolux Warranty Policy. \" />\r\n    <meta property=\"og:title\" content=\"Register Warranty - Register your Appliance\" />\r\n    <meta property=\"og:image\" content=\"@assetFolder/assets/icons/electrolux_logo_sg.svg\" />\r\n    <meta property=\"og:description\" content=\"Please fill in your contact and product information here to enjoy the protection from Electrolux Warranty Policy. \" />\r\n    <meta property=\"og:url\" content=\"https://www.dxcore.org/en-vn/support/register-warranty/\" />\r\n    <meta property=\"og:type\" content=\"website\" />\r\n    <meta property=\"og:site_name\" content=\"Electrolux Viet Nam\" />\r\n    <meta name=\"twitter:card\" content=\"summary\" />\r\n    <meta name=\"lytics:topics\" content=\"Electrolux, Support, Register Warranty\" />\r\n    <meta name=\"viewport\" user-scalable=\"yes\" content=\"width=device-width, initial-scale=1.0\" />\r\n    <link rel=\"canonical\" href=\"https://www.dxcore.org/en-vn/support/register-warranty/\" />\r\n    <meta name=\"apple-mobile-web-app-capable\" content=\"yes\" />\r\n    <meta name=\"apple-mobile-web-app-status-bar-style\" content=\"#ffffff\" />\r\n    <meta name=\"apple-mobile-web-app-title\" content=\"PWA Splash\" />\r\n    <meta name=\"msapplication-TileColor\" content=\"#ffffff\" />\r\n    <meta name=\"theme-color\" content=\"#ffffff\" />\r\n    <link rel=\"alternate\" href=\"https://www.dxcore.org/en-vn/support/register-warranty/\" hreflang=\"vi-VN\" />\r\n    <link rel=\"alternate\" href=\"https://www.dxcore.org/ho-tro/dang-ky-bao-hanh/\" hreflang=\"vi-VN\" />\r\n    <link rel=\"icon\" type=\"image/png\" href=\"@assetFolder/assets/icons/eluxfavicon.ico\" />\r\n    <meta http-equiv=\"Content-Type\" content=\"text/html;charset=utf-8\" />\r\n    <script>\r\n      if (!ELECTROLUX) var ELECTROLUX = {}\r\n      ELECTROLUX.SiteSetting = {\r\n        placeholderImage: \'/assets/img/place-holder.png\',\r\n        hideCompare: false,\r\n        hideWhereToBuy: false,\r\n        hideWhereToBuyRetailer: false,\r\n        hideWhereToBuyStoreLocator: true,\r\n        hideThePrice: true,\r\n        hideOutOfStockRetailer: true,\r\n      }\r\n      ELECTROLUX.defer = function(toWaitFor, method, target) {\r\n        target = target || window\r\n        if (target[toWaitFor]) {\r\n          method()\r\n        } else {\r\n          setTimeout(function() {\r\n            ELECTROLUX.defer(toWaitFor, method)\r\n          }, 20)\r\n        }\r\n      }\r\n    </script>\r\n    <base href=\"/\">\r\n    <link rel=\"manifest\" href=\"manifest.json\" crossorigin=\"use-credentials\" />\r\n    <link rel=\"icon\" type=\"image/png\" href=\"favicon.png\" />\r\n\r\n    <!-- CSS Dependencies -->\r\n    <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css\" integrity=\"sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm\" crossorigin=\"anonymous\" />\r\n    <link rel=\"stylesheet\" href=\"@assetFolder/assets/css/app.css\" />\r\n    <link rel=\"stylesheet\" href=\"@assetFolder/assets/css/ProductRegistration.css?v=1.0.0.1\" as=\"style\" media=\"none\" onload=\"this.media=\'all\'\" />\r\n    <link rel=\"stylesheet\" href=\"/css/app-vendor.min.css\" />\r\n    <link rel=\"stylesheet\" href=\"@assetFolder/css/theme.min.css\" />\r\n    <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css\" />\r\n\r\n    <!-- Optional JavaScript -->\r\n    <script src=\"https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js\" crossorigin=\"anonymous\"></script>\r\n    <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js\" integrity=\"sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl\" crossorigin=\"anonymous\"></script>\r\n\r\n    <!-- SCRIPTS IMPORTED FROM LIVE SITE -->\r\n    <script type=\"text/javascript\" src=\"@assetFolder/assets/js/critical.js?v=1.0.0.0\" defer></script>\r\n    <script type=\"text/javascript\" src=\"@assetFolder/assets/js/vendor.js?v=1.0.0.0\" defer></script>\r\n    <script type=\"text/javascript\" src=\"@assetFolder/assets/js/app.js?v=1.0.0.0\" defer></script>\r\n    <script type=\"text/javascript\" src=\"@assetFolder/assets/js/_jqueryui.js?v=1.0.0.0\" defer></script>\r\n    <script type=\"text/javascript\" src=\"@assetFolder/assets/js/_datepicker.js?v=1.0.0.0\" defer></script>\r\n    <script type=\"text/javascript\" src=\"@assetFolder/assets/js/contactus.js?v=1.0.0.1\" defer></script>\r\n    <script type=\"text/javascript\" src=\"@assetFolder/assets/js/productregistration.js?v=1.0.0.0\" defer></script>\r\n    <noscript id=\'sapper-head-start\'></noscript>\r\n    <title>@ViewData[\"Title\"]</title>\r\n    <noscript id=\'sapper-head-end\'></noscript>\r\n     @RenderSection(\"Seo\", false)     \r\n    <!--[STYLES]-->\r\n    @RenderSection(\"Styles\", false)    \r\n</head>\r\n<body \r\n  ng-app=\"MixClient\" ng-controller=\"AppClientController\" ng-init=\"init(\'vi-vn\')\"\r\n  class=\"@ViewData[\"PageClass\"] body standard-page progressive none-head-nav have-permanent-notice\">\r\n    <div id=\"sapper\">\r\n        <div class=\"global-inactive-bg js-inactive-bg hide\"></div>\r\n        @await Html.PartialAsync(\"../Layouts/Navigation.cshtml\")\r\n        <main>\r\n            @RenderBody()                \r\n            @await Html.PartialAsync(\"../Layouts/Footer.cshtml\")\r\n        </main>\r\n    </div>\r\n\r\n    <!--   Core JS Files   -->\r\n    <script src=\"/js/framework.min.js\"></script>\r\n    <script src=\"/js/app-client.min.js\"></script>\r\n    <script src=\"/js/app-shared.min.js\"></script>\r\n    <script src=\"/js/_custom/electrolux-register-controller.js\"></script>\r\n    <!--[SCRIPTS]-->\r\n    @RenderSection(\"Scripts\", false)    \r\n</body>\r\n</html>', '.cshtml', 'Views/Shared/Templates/electrolux/Masters', '_Layout', 'Masters', NULL, NULL, NULL, NULL, 2, 'electrolux', NULL, '2020-12-05 03:51:08', 'superadmin', '2020-12-07 16:22:24', 0, 'Deleted'),
(32, '@RenderSection(\"Seo\", false)\r\n@RenderSection(\"Styles\", false)\r\n@RenderSection(\"Scripts\", false)\r\n<style>\r\n    body{\r\n        margin:0;\r\n    }\r\n</style>\r\n@RenderBody()', '.cshtml', 'Views/Shared/Templates/electrolux/Masters', '_Blank', 'Masters', NULL, NULL, NULL, NULL, 2, 'electrolux', NULL, '2020-12-05 03:51:08', 'superadmin', '2020-12-05 03:51:08', 0, 'Deleted'),
(33, '@using Mix.Cms.Lib\n@using Mix.Cms.Lib.Services\n@model Mix.Cms.Lib.ViewModels.MixModules.ReadMvcViewModel\n@{ \n   string assetFolder = MixCmsHelper.GetAssetFolder(ViewBag.culture); \n   string templateFolder = MixCmsHelper.GetTemplateFolder(ViewBag.culture);\n}\n@*\n    // Get Configuration\n    @MixService.GetConfig<T>(\"conf_name\", ViewBag.culture)\n\n    // Get Extra Attribute\n    @(Model.Property<TDataType>(\"[propertyName]\"))\n    ex: @(Model.Property<string>(\"html_title\"))\n\n    // Loop Data\n    @foreach(var item in Model.Data.Items){\n        // get simple Data value\n        @item.Property(\"[propertyName]\")\n    }\n*@\nModule: @Model.Title', '.cshtml', 'Views/Shared/Templates/electrolux/Modules', '_Blank', 'Modules', NULL, NULL, NULL, NULL, 2, 'electrolux', NULL, '2020-12-05 03:51:08', 'superadmin', '2020-12-05 03:51:08', 0, 'Deleted'),
(34, '@using Mix.Cms.Lib\n@using Mix.Cms.Lib.Services\n@model Mix.Cms.Lib.ViewModels.MixModules.ReadMvcViewModel\n@{ \n   string assetFolder = MixCmsHelper.GetAssetFolder(ViewBag.culture); \n   string templateFolder = MixCmsHelper.GetTemplateFolder(ViewBag.culture);\n}\n@*\n    // Get Configuration\n    @MixService.GetConfig<T>(\"conf_name\", ViewBag.culture)\n\n    // Get Extra Attribute\n    @(Model.Property<TDataType>(\"[propertyName]\"))\n    ex: @(Model.Property<string>(\"html_title\"))\n\n    // Loop Data\n    @foreach(var item in Model.Data.Items){\n        // get simple Data value\n        @item.Property(\"[propertyName]\")\n    }\n*@\n<h1>Module: @Model.Title</h1>', '.cshtml', 'Views/Shared/Templates/electrolux/Modules', 'TestVueComponent', 'Modules', NULL, NULL, NULL, NULL, 2, 'electrolux', NULL, '2020-12-05 03:51:08', 'superadmin', '2020-12-05 03:51:08', 0, 'Deleted'),
(35, '@using Mix.Cms.Lib\r\n@using Mix.Cms.Lib.Services\r\n@model Mix.Cms.Lib.ViewModels.MixPages.ReadMvcViewModel\r\n@{\r\n    string assetFolder = MixCmsHelper.GetAssetFolder(ViewBag.culture); \r\n    string templateFolder = MixCmsHelper.GetTemplateFolder(ViewBag.culture);\r\n    string culture = ViewBag.culture;\r\n    var social = Mix.Cms.Lib.MixCmsHelper.GetModule(\"Social\", ViewBag.culture);\r\n    ViewData[\"DetailsUrl\"] = Model.DetailsUrl;\r\n}\r\n<div>\r\n    \r\n    <div class=\"page-header page-header-small\">\r\n        <div class=\"page-header-image\" data-parallax=\"true\" style=\"background-image: url(\'@Model.Image\');\">\r\n        </div>\r\n        <div class=\"content-center\">\r\n            <div class=\"row\">\r\n                <div class=\"col-md-8 ml-auto mr-auto text-center\">\r\n                    <h2 class=\"title\">\r\n                        @Model.Title\r\n                    </h2>\r\n                     <div class=\"description\">\r\n                        @Html.Raw(Model.Excerpt)\r\n                    </div>\r\n                    \r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n    <!--     *********    END BLOGS 4      *********      -->\r\n    <div class=\"blogs-4\" id=\"blogs-4\">\r\n        <div class=\"container\">\r\n            <div class=\"row\">\r\n                <div class=\"col-md-8 ml-auto mr-auto\">\r\n                    @foreach (var nav in Model.Posts.Items)\r\n                    {\r\n                        var product = nav.Post;\r\n                        <div class=\"card card-plain card-blog\">\r\n                            <div class=\"card-image\">\r\n                                <a href=\"@product.DetailsUrl\">\r\n                                    <img class=\"img img-raised rounded\" src=\"@product.ImageUrl\" />\r\n                                </a>\r\n                            </div>\r\n                            <h3 class=\"card-title\">\r\n                                <a href=\"@product.DetailsUrl\">@product.Title</a>\r\n                            </h3>\r\n                            <h5 class=\"card-description\">\r\n                                @Html.Raw(product.Excerpt)\r\n                            </h5>\r\n                            <a href=\"@product.DetailsUrl\" class=\"btn btn-primary btn-round\">\r\n                                @(Mix.Cms.Lib.Services.MixService.Translate<string>(\"read_more\", ViewBag.culture))                                    \r\n                                </a>\r\n                        </div>\r\n                    }\r\n                </div>\r\n                \r\n            </div>\r\n            <div class=\"row\">\r\n                <div class=\"col-md-8 ml-auto mr-auto\">\r\n                     @await Html.PartialAsync(\"../Widgets/_Pagination.cshtml\", Model.Posts)\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</div>', '.cshtml', 'Views/Shared/Templates/electrolux/Pages', '_Tag', 'Pages', NULL, NULL, NULL, NULL, 2, 'electrolux', NULL, '2020-12-05 03:51:08', 'superadmin', '2020-12-05 03:51:08', 0, 'Deleted'),
(36, '@using Mix.Cms.Lib\r\n@using Mix.Cms.Lib.Services\r\n@model Mix.Cms.Lib.ViewModels.MixPages.ReadMvcViewModel\r\n@{\r\n    string assetFolder = MixCmsHelper.GetAssetFolder(ViewBag.culture); \r\n    string templateFolder = MixCmsHelper.GetTemplateFolder(ViewBag.culture);\r\n    string culture = ViewBag.culture;\r\n    var social = Mix.Cms.Lib.MixCmsHelper.GetModule(\"Social\", ViewBag.culture);\r\n    ViewData[\"DetailsUrl\"] = Model.DetailsUrl;\r\n}\r\n<div>\r\n    \r\n    <div class=\"page-header page-header-small\">\r\n        <div class=\"page-header-image\" data-parallax=\"true\" style=\"background-image: url(\'@Model.Image\');\">\r\n        </div>\r\n        <div class=\"content-center\">\r\n            <div class=\"row\">\r\n                <div class=\"col-md-8 ml-auto mr-auto text-center\">\r\n                    <h2 class=\"title\">\r\n                        @Model.Title\r\n                    </h2>\r\n                     <div class=\"description\">\r\n                        @Html.Raw(Model.Excerpt)\r\n                    </div>\r\n                    \r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n    <!--     *********    END BLOGS 4      *********      -->\r\n    <div class=\"blogs-4\" id=\"blogs-4\">\r\n        <div class=\"container\">\r\n            <div class=\"row\">\r\n                <div class=\"col-md-8 ml-auto mr-auto\">\r\n                    @foreach (var nav in Model.Posts.Items)\r\n                    {\r\n                        var product = nav.Post;\r\n                        <div class=\"card card-plain card-blog\">\r\n                            <div class=\"card-image\">\r\n                                <a href=\"@product.DetailsUrl\">\r\n                                    <img class=\"img img-raised rounded\" src=\"@product.ImageUrl\" />\r\n                                </a>\r\n                            </div>\r\n                            <h3 class=\"card-title\">\r\n                                <a href=\"@product.DetailsUrl\">@product.Title</a>\r\n                            </h3>\r\n                            <h5 class=\"card-description\">\r\n                                @Html.Raw(product.Excerpt)\r\n                            </h5>\r\n                            <a href=\"@product.DetailsUrl\" class=\"btn btn-primary btn-round\">\r\n                                @(Mix.Cms.Lib.Services.MixService.Translate<string>(\"read_more\", ViewBag.culture))                                    \r\n                                </a>\r\n                        </div>\r\n                    }\r\n                </div>\r\n                \r\n            </div>\r\n            <div class=\"row\">\r\n                <div class=\"col-md-8 ml-auto mr-auto\">\r\n                    @await Html.PartialAsync(\"../Widgets/_Pagination.cshtml\", Model.Posts)\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</div>', '.cshtml', 'Views/Shared/Templates/electrolux/Pages', '_Search', 'Pages', NULL, NULL, NULL, NULL, 2, 'electrolux', NULL, '2020-12-05 03:51:08', 'superadmin', '2020-12-05 03:51:08', 0, 'Deleted'),
(37, '@using Mix.Cms.Lib\r\n@using Mix.Cms.Lib.Services\r\n@model Mix.Cms.Lib.ViewModels.MixPages.ReadMvcViewModel\r\n@{\r\n    string assetFolder = MixCmsHelper.GetAssetFolder(ViewBag.culture); \r\n    string templateFolder = MixCmsHelper.GetTemplateFolder(ViewBag.culture);\r\n}\r\n@foreach (var nav in Model.Modules.OrderBy(n => n.Priority))\r\n{\r\n    var module = nav.Module; \r\n    if (module != null)\r\n    {\r\n        <div  id=\"@module.Name\">\r\n            @await Html.PartialAsync(module.TemplatePath, module)\r\n        </div>\r\n    }\r\n}', '.cshtml', 'Views/Shared/Templates/electrolux/Pages', '_Modules', 'Pages', NULL, NULL, NULL, NULL, 2, 'electrolux', NULL, '2020-12-05 03:51:08', 'superadmin', '2020-12-05 03:51:08', 0, 'Deleted'),
(38, '@using Mix.Cms.Lib\r\n@using Mix.Cms.Lib.Services\r\n@model Mix.Cms.Lib.ViewModels.MixPages.ReadMvcViewModel\r\n@{ \r\n   string assetFolder = MixCmsHelper.GetAssetFolder(ViewBag.culture); \r\n   string templateFolder = MixCmsHelper.GetTemplateFolder(ViewBag.culture);\r\n}\r\n@*\r\n    // Get Configuration\r\n    @MixService.GetConfig<T>(\"conf_name\", ViewBag.culture)\r\n\r\n    // Get Extra Attribute\r\n    @(Model.Property<TDataType>(\"[propertyName]\"))\r\n    ex: @(Model.Property<string>(\"html_title\"))\r\n\r\n    // Loop Data\r\n    @foreach(var item in Model.Posts.Items){\r\n        // get simple Data value\r\n        var post = item.Post\r\n        @post.Property(\"[propertyName]\")\r\n    }\r\n    @foreach(var item in Model.Modules.Items){\r\n        // get simple Data value\r\n        @item.Property(\"[propertyName]\")\r\n    }\r\n*@\r\n<div style=\"width:100%; height: 100%;background-image: url(\'@Model.ImageUrl\');background-size:cover;\">    \r\n</div>', '.cshtml', 'Views/Shared/Templates/electrolux/Pages', '_Maintenance', 'Pages', NULL, NULL, NULL, NULL, 2, 'electrolux', NULL, '2020-12-05 03:51:09', 'superadmin', '2020-12-05 03:51:08', 0, 'Deleted'),
(39, '@using Mix.Cms.Lib\r\n@using Mix.Cms.Lib.Services\r\n@model Mix.Cms.Lib.ViewModels.MixPages.ReadMvcViewModel\r\n@{ \r\n   string assetFolder = MixCmsHelper.GetAssetFolder(ViewBag.culture); \r\n   string templateFolder = MixCmsHelper.GetTemplateFolder(ViewBag.culture);\r\n}\r\n@*\r\n    // Get Configuration\r\n    @MixService.GetConfig<T>(\"conf_name\", ViewBag.culture)\r\n\r\n    // Get Extra Attribute\r\n    @(Model.Property<TDataType>(\"[propertyName]\"))\r\n    ex: @(Model.Property<string>(\"html_title\"))\r\n\r\n    // Loop Data\r\n    @foreach(var item in Model.Posts.Items){\r\n        // get simple Data value\r\n        var post = item.Post\r\n        @post.Property(\"[propertyName]\")\r\n    }\r\n    @foreach(var item in Model.Modules.Items){\r\n        // get simple Data value\r\n        @item.Property(\"[propertyName]\")\r\n    }\r\n*@\r\nPage: @Model.Title', '.cshtml', 'Views/Shared/Templates/electrolux/Pages', '_Blank', 'Pages', NULL, NULL, NULL, NULL, 2, 'electrolux', NULL, '2020-12-05 03:51:09', 'superadmin', '2020-12-05 03:51:09', 0, 'Deleted'),
(40, '@using Mix.Cms.Lib\r\n@using Mix.Cms.Lib.Services\r\n@model Mix.Cms.Lib.ViewModels.MixPages.ReadMvcViewModel\r\n@{ \r\n   string assetFolder = MixCmsHelper.GetAssetFolder(ViewBag.culture); \r\n   string templateFolder = MixCmsHelper.GetTemplateFolder(ViewBag.culture);\r\n}\r\n@*\r\n    // Get Configuration\r\n    @MixService.GetConfig<T>(\"conf_name\", ViewBag.culture)\r\n\r\n    // Get Extra Attribute\r\n    @(Model.Property<TDataType>(\"[propertyName]\"))\r\n    ex: @(Model.Property<string>(\"html_title\"))\r\n\r\n    // Loop Data\r\n    @foreach(var item in Model.Posts.Items){\r\n        // get simple Data value\r\n        var post = item.Post\r\n        @post.Property(\"[propertyName]\")\r\n    }\r\n    @foreach(var item in Model.Modules.Items){\r\n        // get simple Data value\r\n        @item.Property(\"[propertyName]\")\r\n    }\r\n*@\r\n<post-list></post-list>', '.cshtml', 'Views/Shared/Templates/electrolux/Pages', 'Post_List', 'Pages', NULL, NULL, NULL, NULL, 2, 'electrolux', NULL, '2020-12-05 03:51:09', 'superadmin', '2020-12-05 03:51:09', 0, 'Deleted'),
(41, '@using Mix.Cms.Lib\r\n@using Mix.Cms.Lib.Services\r\n@model Mix.Cms.Lib.ViewModels.MixPages.ReadMvcViewModel\r\n@{ \r\n   string assetFolder = MixCmsHelper.GetAssetFolder(ViewBag.culture); \r\n   string templateFolder = MixCmsHelper.GetTemplateFolder(ViewBag.culture);\r\n   var posts = await Mix.Cms.Lib.ViewModels.MixPosts.ReadViewModel.Repository.GetModelListAsync(\r\n       \"CreatedDateTime\", Mix.Heart.Enums.MixHeartEnums.DisplayDirection.Desc,\r\n       20, 0\r\n   );\r\n}\r\n<section id=\"indexSection\" class=\"the-le-dieu-kien body-container\">\r\n    <section id=\"heroBannerSection\">\r\n        <div class=\"hero-banner-slider hero-banner-slider-js\" data-slide-infinite=\"False\" data-slide-autoplay-speed=\"7000\">\r\n            <div class=\"hero-banner-standard theme-blue-rich \" role=\"banner\">\r\n            <div class=\"card col-12\">\r\n                <div class=\"card-section feature-img\" data-imagizer=\"\">\r\n                    <picture>\r\n                        <source srcset=\"@assetFolder/img/promotion-banner-mobile-375x350.jpg\" media=\"(max-width: 767px)\">\r\n                        <source srcset=\"@assetFolder/assets/img/KV.jpg\" media=\"(min-width: 768px)\">\r\n                        <img src=\"@assetFolder/assets/img/KV.jpg\" alt=\"Banner homepage\">\r\n                    </picture>\r\n                </div>\r\n            </div>\r\n            </div>\r\n        </div>\r\n    </section>\r\n    <div class=\"container\">\r\n    <div class=\"row\">\r\n        <div class=\"col-12\">\r\n        <div class=\" mgbt-sm-50 d-flex flex-direction-column\">\r\n            <div class=\" row mgl-sm-0 mgr-sm-0\">\r\n            <div class=\"grid d-flex textimageblock col-lg-12 col-md-12 col-12 displaymode-full  pdr-sm-0 pdl-sm-0\">\r\n                <div class=\"img-text-block    mgt-sm-50  mgbt-sm-30    d-flex  \r\n                \">\r\n                <div class=\"img-text-block__content js-img-block__content      text-sm-center  justify-content-center d-flex\">\r\n                    <div class=\"img-text-block__title order-1 text-sm-center\">\r\n                    <h1>Tổng giá trị lên đến 10 tỷ đồng</h1>\r\n                    <h2>Từ 1/1/2021 - 10/2/2021</h2>\r\n                    </div>\r\n                </div>\r\n                </div>\r\n            </div>\r\n            <div class=\"grid d-flex fulltextblock col-lg-12 col-md-12 col-12 displaymode-full  pdr-sm-0 pdl-sm-0\">\r\n                <div class=\"full-text-module w-100-percent\">\r\n                <div class=\"content-container \">\r\n                    <p>Từ 01/01/2021 đến 10/02/2021 Công ty TNHH Electrolux Việt Nam thực hiện chương trình khuyến mại &quot; Đón Tết Rộn Ràng – Lì Xì Hoành Tráng” - Lì xì 500.000 đồng cho các khách hàng khi mua mỗi sản phẩm Electrolux có giá trị từ 10.000.000 đến dưới 15.000.000 đồng và lì xì 1.000.000 đồng cho mỗi sản phẩm Electrolux có giá trị từ 15.000.000 đồng trở lên trên toàn quốc.\r\n                    <br><br>\r\n                    Xem chi tiết thể lệ và điều kiện tham gia chương trình tại\r\n                    <a href=\"https://www.tet2021-electrolux.com/the-le-dieu-kien\" target=\"_top\">https://www.tet2021-electrolux.com/the-le-dieu-kien</a>\r\n                    </p>\r\n                    <br>\r\n                    <p style=\"text-align: center;\"><a href=\"/dang-ky\" class=\"button primary highlight-secondary-color\" type=\"button\" name=\"Register\" value=\"Register\" data-register=\"Vào sổ\" data-loading=\"Tải...\" style=\"margin: 0;\">Tham gia chương trình\r\n                    </a></p>\r\n                </div>\r\n                </div>\r\n            </div>\r\n            </div>\r\n        </div>\r\n        </div>\r\n    </div>\r\n    </div>\r\n</section>', '.cshtml', 'Views/Shared/Templates/electrolux/Pages', 'Home', 'Pages', NULL, NULL, NULL, NULL, 2, 'electrolux', NULL, '2020-12-05 03:51:09', 'superadmin', '2020-12-09 01:10:53', 0, 'Deleted');
INSERT INTO `mix_template` (`Id`, `Content`, `Extension`, `FileFolder`, `FileName`, `FolderType`, `MobileContent`, `Scripts`, `SpaContent`, `Styles`, `ThemeId`, `ThemeName`, `CreatedBy`, `CreatedDateTime`, `ModifiedBy`, `LastModified`, `Priority`, `Status`) VALUES
(42, '@using Mix.Cms.Lib\r\n@using Mix.Cms.Lib.Services\r\n@model Mix.Cms.Lib.ViewModels.MixPosts.ReadMvcViewModel\r\n@{ \r\n   string assetFolder = MixCmsHelper.GetAssetFolder(ViewBag.culture); \r\n   string templateFolder = MixCmsHelper.GetTemplateFolder(ViewBag.culture);\r\n}\r\n@*\r\n    // Get Configuration\r\n    @MixService.GetConfig<T>(\"conf_name\", ViewBag.culture)\r\n\r\n    // Get Extra Attribute\r\n    @(Model.Property<TDataType>(\"[propertyName]\"))\r\n    ex: @(Model.Property<string>(\"html_title\"))\r\n*@\r\n<header class=\"masthead\" style=\"background-image: url(\'@assetFolder/img/post-bg.jpg\')\">\r\n    <div class=\"overlay\"></div>\r\n    <div class=\"container\">\r\n      <div class=\"row\">\r\n        <div class=\"col-lg-8 col-md-10 mx-auto\">\r\n          <div class=\"post-heading\">\r\n            <h1>@Model.Title</h1>\r\n            <h2 class=\"subheading\">@Model.Excerpt</h2>\r\n            <span class=\"meta\">Posted by\r\n              <a href=\"#\">@Model.CreatedBy</a>\r\n              on @Model.CreatedDateTime.ToLocalTime().ToShortDateString()</span>\r\n          </div>\r\n        </div>\r\n      </div>\r\n    </div>\r\n  </header>\r\n  <article>\r\n    <div class=\"container\">\r\n      <div class=\"row\">\r\n        <div class=\"col-lg-8 col-md-10 mx-auto\">\r\n          @Html.Raw(Model.Content)\r\n        </div>\r\n      </div>\r\n    </div>\r\n  </article>', '.cshtml', 'Views/Shared/Templates/electrolux/Posts', '_Blank', 'Posts', NULL, NULL, NULL, NULL, 2, 'electrolux', NULL, '2020-12-05 03:51:09', 'superadmin', '2020-12-05 03:51:09', 0, 'Deleted'),
(43, '@using Mix.Cms.Lib\r\n@using Mix.Cms.Lib.Services\r\n@{\r\n    var assetFolder = MixCmsHelper.GetAssetFolder(ViewBag.culture);\r\n}\r\n@if(Model.PostNavs.Count >0){\r\n    <!-- Our Blog Section -->\r\n    <div class=\"blog section section-invert py-4\">\r\n        <h3 class=\"section-title text-center m-5\">Related Posts</h3>\r\n\r\n        <div class=\"container\">\r\n            <div class=\"py-4\">\r\n            <div class=\"row\">\r\n                <div class=\"card-deck\">\r\n                @foreach(var item in Model.PostNavs)\r\n                {\r\n                    var post = item.RelatedPost;\r\n                    <div class=\"col-md-12 col-lg-4\">\r\n                        <div class=\"card mb-4\">\r\n                            <img class=\"card-img-top\" src=\"@post.ImageUrl\" alt=\"Card image cap\">\r\n                            <div class=\"card-body\">\r\n                                <h4 class=\"card-title\">@post.Title</h4>\r\n                                <p class=\"card-text\">@post.Excerpt</p>\r\n                                <a class=\"btn btn-primary btn-pill\" href=\"@post.DetailsUrl\">Read More &rarr;</a>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                }\r\n                </div>\r\n            </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n    <!-- / Our Blog Section -->\r\n}', '.cshtml', 'Views/Shared/Templates/electrolux/Widgets', '_Related_Posts', 'Widgets', NULL, NULL, NULL, NULL, 2, 'electrolux', NULL, '2020-12-05 03:51:09', 'superadmin', '2020-12-05 03:51:09', 0, 'Deleted'),
(44, '@{\r\n    var detailsUrl = (string)this.ViewData[\"DetailsUrl\"];\r\n}\r\n@if (Model.TotalPage > 1)\r\n{\r\n<nav aria-label=\"Page navigation example\">\r\n    <ul class=\"pagination justify-content-center\">\r\n        @if (Model.PageIndex > 0)\r\n        {\r\n        <li class=\"page-item\">\r\n            <a class=\"page-link\" href=\"@detailsUrl/?page=@(Model.Page - 1)\" tabindex=\"-1\" aria-disabled=\"true\">Previous</a>\r\n        </li>\r\n        }\r\n        @for (int i = 0; i < Model.TotalPage; i++)\r\n        {\r\n            string cl = i == Model.PageIndex ? \"active\" : string.Empty;\r\n            <li class=\"page-item @cl\"><a class=\"page-link\" href=\"@detailsUrl/?page=@(i + 1)\">@(i + 1)</a></li>\r\n        }\r\n        @if (Model.PageIndex < Model.TotalPage - 1)\r\n        {\r\n        <li class=\"page-item\">\r\n        <a class=\"page-link\" href=\"@detailsUrl/?page=@(Model.Page + 1)\">Next</a>\r\n        </li>\r\n        }\r\n    </ul>\r\n</nav>\r\n}', '.cshtml', 'Views/Shared/Templates/electrolux/Widgets', '_Pagination', 'Widgets', NULL, NULL, NULL, NULL, 2, 'electrolux', NULL, '2020-12-05 03:51:09', 'superadmin', '2020-12-05 03:51:09', 0, 'Deleted'),
(45, '@{\r\n    string href = $\"{Context.Request.Scheme}://{Context.Request.Host}{Context.Request.Path}\";\r\n\r\n}\r\n\r\n<div class=\"row\">\r\n    <div class=\"col-sm-12\">\r\n    <div class=\"fb-comments\"\r\n         data-href=\"@href\" data-width=\"100%\"\r\n         data-numposts=\"5\"></div>\r\n     </div>\r\n</div>', '.cshtml', 'Views/Shared/Templates/electrolux/Widgets', '_Comments_Facebook', 'Widgets', NULL, NULL, NULL, NULL, 2, 'electrolux', NULL, '2020-12-05 03:51:09', 'superadmin', '2020-12-05 03:51:09', 0, 'Deleted'),
(46, '@using Mix.Cms.Lib\r\n@using Mix.Cms.Lib.Services\r\n@{\r\n    var assetFolder = MixCmsHelper.GetAssetFolder(ViewBag.culture);\r\n    var navs = await MixCmsHelper.GetNavigation(\"top\", ViewBag.culture, Url);\r\n    var social = MixCmsHelper.GetModule(\"social\", ViewBag.culture);\r\n}\r\n<!-- Navigation -->\r\n<nav class=\"navbar navbar-expand-lg navbar-dark pt-4 px-0\">\r\n    <a class=\"navbar-brand\" href=\"#\">\r\n        <img src=\"@assetFolder/images/agency-landing/shards-logo-white.svg\" class=\"mr-2\" alt=\"Shards - Agency Landing Page\">\r\n        Mixcore Agency\r\n    </a>\r\n    <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarNavDropdown\"\r\n        aria-controls=\"navbarNavDropdown\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\r\n        <span class=\"navbar-toggler-icon\"></span>\r\n    </button>\r\n    <div class=\"collapse navbar-collapse\" id=\"navbarNavDropdown\">\r\n        <ul class=\"navbar-nav\">\r\n        @if(navs!=null){\r\n            @foreach(var item in navs.MenuItems){                \r\n            item.Classes += item.IsActive ? \" active\": \"\";\r\n            if(item.MenuItems.Count>0){\r\n                \r\n                <li class=\"nav-item dropdown @item.Classes\">\r\n                <a class=\"nav-link dropdown-toggle\" href=\"@item.Uri\" target=\"@item.Target\" rel=\"@(item.Property<string>(\"rel\"))\"\r\n                    id=\"dropdown-top-@navs.MenuItems.IndexOf(item)\" data-toggle=\"dropdown\"\r\n                    aria-haspopup=\"true\" aria-expanded=\"false\">@item.Title rel @(item.Property<string>(\"rel\"))</a>\r\n                <div class=\"dropdown-menu\" aria-labelledby=\"dropdown-top-@navs.MenuItems.IndexOf(item)\">\r\n                    @foreach(var sub_item in item.MenuItems){\r\n                    sub_item.Classes += sub_item.IsActive ? \" active\": \"\";\r\n                    <a class=\"dropdown-item @sub_item.Classes\" href=\"@sub_item.Uri\" target=\"@sub_item.Target\">@sub_item.Title</a>\r\n                    }                      \r\n                </div>\r\n                </li>\r\n                \r\n            }\r\n            else{\r\n                <li class=\"nav-item @item.Classes\">\r\n                <a class=\"nav-link\" href=\"@item.Uri\" title=\"@item.Title\" target=\"@item.Target\" rel=\"@(item.Property<string>(\"rel\"))\">@item.Title</a>\r\n                </li>\r\n            }\r\n            }\r\n        }            \r\n        </ul>\r\n        \r\n        <ul class=\"navbar-nav ml-auto\">\r\n        @if(social!=null){\r\n            foreach(var item in social.Data.Items)\r\n            {\r\n            <li class=\"nav-item\">\r\n                <a class=\"nav-link\" href=\"@(item.Property(\"uri\"))\" title=\"@(item.Property(\"title\"))\"><i class=\"@(item.Property(\"icon\"))\"></i></a>\r\n            </li>\r\n            }\r\n        }           \r\n        </ul>\r\n        <language-switcher></language-switcher>\r\n    </div>\r\n    </nav>\r\n    <!-- / Navigation -->', '.cshtml', 'Views/Shared/Templates/electrolux/Widgets', 'Navigation', 'Widgets', NULL, NULL, NULL, NULL, 2, 'electrolux', NULL, '2020-12-05 03:51:09', 'superadmin', '2020-12-05 03:51:09', 0, 'Deleted'),
(47, '@using Mix.Cms.Lib\r\n@using Mix.Cms.Lib.Services\r\n@model Mix.Cms.Lib.ViewModels.MixPages.ReadMvcViewModel\r\n@{ \r\n   string assetFolder = MixCmsHelper.GetAssetFolder(ViewBag.culture); \r\n   string templateFolder = MixCmsHelper.GetTemplateFolder(ViewBag.culture);\r\n}\r\n@*\r\n    // Get Configuration\r\n    @MixService.GetConfig<T>(\"conf_name\", ViewBag.culture)\r\n\r\n    // Get Extra Attribute\r\n    @(Model.Property<TDataType>(\"[propertyName]\"))\r\n    ex: @(Model.Property<string>(\"html_title\"))\r\n\r\n    // Loop Data\r\n    @foreach(var item in Model.Posts.Items){\r\n        // get simple Data value\r\n        var post = item.Post\r\n        @post.Property(\"[propertyName]\")\r\n    }\r\n    @foreach(var item in Model.Modules.Items){\r\n        // get simple Data value\r\n        @item.Property(\"[propertyName]\")\r\n    }\r\n*@\r\n <section id=\"indexSection\" class=\"body-container\">\r\n    <section id=\"heroBannerSection\">\r\n    <div class=\"hero-banner-slider hero-banner-slider-js\" data-slide-infinite=\"False\" data-slide-autoplay-speed=\"7000\">\r\n        <div class=\"hero-banner-standard theme-blue-rich \" role=\"banner\">\r\n            <div class=\"card col-12\">\r\n                <div class=\"card-section feature-img\" data-imagizer=\"\">\r\n                    <picture>\r\n                        <source srcset=\"@assetFolder/assets/img/e_wb_home_360x350_nov20.jpg\" media=\"(max-width: 767px)\">\r\n                        <source srcset=\"@assetFolder/assets/img/KV.jpg?preset=xlarge\" media=\"(min-width: 768px)\">\r\n                            <img src=\"@assetFolder/assets/img/KV.jpg?preset=xlarge\" alt=\"Electrolux tư duy Thụy Điển nâng tầm cuộc sống\">\r\n                    </picture>\r\n                </div>            \r\n            </div>\r\n        </div>\r\n    </div>\r\n    </section>\r\n    <section id=\"formSection\">\r\n    <div class=\"body-container\">\r\n        <div class=\"product-registration js-product-registration\">\r\n        <div class=\"container\">\r\n            @await Html.PartialAsync(\"../Widgets/Register_Form.cshtml\")\r\n        </div>\r\n        </div>\r\n        <div class=\"reveal\" id=\"product-info-pnc\" data-reveal=\"\"><img src=\"@assetFolder/assets/img/pnc.jpg\" alt=\"pnc\">\r\n        <h4>Địa điểm của số PNC trên sản phẩm</h4>\r\n        <div class=\"row align-center\">\r\n            <div class=\"col-4\"><button class=\"button primary highlight-secondary-color\" data-close=\"\" type=\"button\" value=\"Register\">OK</button></div>\r\n        </div>\r\n        </div>\r\n        <div class=\"reveal\" id=\"product-info-machine\" data-reveal=\"\"><img src=\"@assetFolder/assets/img/serial-no.jpg\" alt=\"Electrolux Bảo hành số seri\">\r\n        <h4>Địa điểm của số seri trên sản phẩm</h4>\r\n        <div class=\"row align-center\">\r\n            <div class=\"col-4\"><button class=\"cta-link-button\" data-close=\"\" type=\"button\" value=\"Register\">OK</button></div>\r\n        </div>\r\n        </div>\r\n        <div class=\"reveal\" id=\"sn-info\" data-reveal=\"\"><img src=\"@assetFolder/assets/img/serial-no.jpg\" alt=\"Electrolux Bảo hành số seri\">\r\n        <h4>Địa điểm của số seri trên sản phẩm</h4>\r\n        <div class=\"row align-center\">\r\n            <div class=\"col-4\"><button class=\"cta-link-button\" data-close=\"\" type=\"button\" value=\"Register\">OK</button></div>\r\n        </div>\r\n        </div>\r\n        <div class=\"reveal\" id=\"product-info-list-check\" data-reveal=\"\">\r\n        <div class=\"product-info-list-check-message\">\r\n            <p></p>\r\n        </div>\r\n        <div class=\"ok-btn\"><button class=\"button primary highlight-secondary-color\" data-close=\"\" type=\"button\" onclick=\"return validateForm();\">OK</button></div>\r\n        </div>\r\n        <div class=\"reveal\" id=\"form-status\" data-reveal=\"\">\r\n        <div class=\"row align-center\">\r\n            <div class=\"col-4\"><button class=\"button primary highlight-secondary-color w-100-percent\" data-close=\"\" type=\"button\">OK</button></div>\r\n        </div>\r\n        </div>\r\n    </div>\r\n    </section>\r\n</section>', '.cshtml', 'Views/Shared/Templates/electrolux/Pages', 'Dang_Ky', 'Pages', NULL, NULL, NULL, NULL, 2, 'electrolux', NULL, '2020-12-05 04:54:59', 'superadmin', '2020-12-09 05:07:01', 0, 'Deleted'),
(48, '@using Mix.Cms.Lib\r\n@using Mix.Cms.Lib.Services\r\n@model Mix.Cms.Lib.ViewModels.MixPages.ReadMvcViewModel\r\n@{ \r\n   string assetFolder = MixCmsHelper.GetAssetFolder(ViewBag.culture); \r\n   string templateFolder = MixCmsHelper.GetTemplateFolder(ViewBag.culture);\r\n}\r\n@*\r\n    // Get Configuration\r\n    @MixService.GetConfig<T>(\"conf_name\", ViewBag.culture)\r\n\r\n    // Get Extra Attribute\r\n    @(Model.Property<TDataType>(\"[propertyName]\"))\r\n    ex: @(Model.Property<string>(\"html_title\"))\r\n\r\n    // Loop Data\r\n    @foreach(var item in Model.Posts.Items){\r\n        // get simple Data value\r\n        var post = item.Post\r\n        @post.Property(\"[propertyName]\")\r\n    }\r\n    @foreach(var item in Model.Modules.Items){\r\n        // get simple Data value\r\n        @item.Property(\"[propertyName]\")\r\n    }\r\n*@\r\n<section id=\"indexSection\" class=\"body-container\">\r\n          <section id=\"heroBannerSection\">\r\n            <div class=\"hero-banner-slider hero-banner-slider-js\" data-slide-infinite=\"False\" data-slide-autoplay-speed=\"7000\">\r\n              <div class=\"hero-banner-standard theme-blue-rich \" role=\"banner\">\r\n                <div class=\"card col-12\">\r\n                  <div class=\"card-section feature-img\" data-imagizer=\"\">\r\n                    <picture>\r\n                      <source srcset=\"@assetFolder/assets/img/promotion-banner-mobile-375x350.jpg\" media=\"(max-width: 767px)\">\r\n                      <source srcset=\"@assetFolder/assets/img/promotion-banner-desktop-1980x500.jpg\" media=\"(min-width: 768px)\">\r\n                      <img src=\"@assetFolder/assets/img/promotion-banner-desktop-1980x500.jpg\" alt=\"Banner homepage\">\r\n                    </picture>\r\n                  </div>\r\n                  <div class=\"card-section content card-section_content row\">\r\n                    <div class=\"card-column\">\r\n                      <div class=\"card-content-wrapper card-column__content\">\r\n                        <h1 class=\"heading \">Tết trao lì xì, <br>Khai xuân như ý.\r\n                          <br>\r\n                          <button class=\"button primary highlight-secondary-color\" type=\"button\" name=\"Register\" value=\"Register\" data-register=\"Vào sổ\" data-loading=\"Tải...\" onclick=\"return validateForm();\" style=\"margin: 0;\">Tham gia chương trình\r\n                          </button>\r\n                        </h1>\r\n                      </div>\r\n                    </div>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n            </div>\r\n          </section>\r\n          <div class=\"container\">\r\n            <div class=\"row\">\r\n              <div class=\"col-12\">\r\n                <div class=\" mgbt-sm-50 d-flex flex-direction-column\">\r\n                  <div class=\" row mgl-sm-0 mgr-sm-0\">\r\n                    <div class=\"grid d-flex textimageblock col-lg-12 col-md-12 col-12 displaymode-full pdr-sm-0 pdl-sm-0\">\r\n                      <div class=\"img-text-block mgt-sm-50 mgbt-sm-30 d-flex \">\r\n                        <div class=\"img-text-block__content js-img-block__content text-sm-center justify-content-center d-flex\">\r\n                          <div class=\"img-text-block__title order-1 text-sm-center\">\r\n                            <h1>Tổng giá trị lên đến 10 tỷ đồng</h1>\r\n                            <h2>Từ 1/1/2021 - 10/2/2021</h2>\r\n                          </div>\r\n                        </div>\r\n                      </div>\r\n                    </div>\r\n                    <div class=\"grid d-flex fulltextblock col-lg-12 col-md-12 col-12 displaymode-full pdr-sm-0 pdl-sm-0\">\r\n                      <div class=\"full-text-module w-100-percent\">\r\n                        <div class=\"content-container \">\r\n                          <h5>Từ 21/12/2020 đến 10/02/2021 Công ty TNHH Electrolux Việt Nam thực hiện chương trình khuyến mại &quot;Tết Trao Lì Xì – Khai Xuân Như Ý” - Lì xì 500.000 đồng cho các khách hàng khi mua mỗi sản phẩm Electrolux có giá trị từ 10.000.000 đến dưới 15.000.000 đồng và lì\r\n                            xì 1.000.000 đồng cho mỗi sản phẩm Electrolux có giá trị từ 15.000.000 đồng trở lên trên toàn quốc.\r\n                          </h5>\r\n                          <br>\r\n                          <ol>\r\n                            <li><strong>Tên chương trình khuyến mại: &quot;Tết Trao Lì Xì – Khai Xuân Như Ý ”</strong></li>\r\n                            <li><strong>Thời gian: Từ 21/12/2020 đến 10/02/2021</strong></li>\r\n                            <li><strong>Nội dung chương trình:</strong></li>\r\n                            <ol type=\"a\">\r\n                              <li>Phạm vi áp dung: Toàn quốc</li>\r\n                              <li>Đối tượng: Khách hàng tiêu dùng (*)\r\n                                <p>(*) Chương trình không áp dụng đối với đối tượng cửa hàng bán lẻ, đại lý hoặc các siêu thị điện máy.</p>\r\n                              </li>\r\n                              <li>Hình thức khuyến mãi: Khi khách hàng mua mỗi sản phẩm Electrolux có giá khuyến nghị (đã bao gồm VAT) từ 10 triệu đồng trở lên và có trong danh sách sản phẩm khuyến mại đính kèm sẽ đủ điều kiện tham gia chương trình nhận quà tặng lì xì may mắn như sau:\r\n                                <table style=\"width:60%; border:1px solid\">\r\n                                  <tbody>\r\n                                    <tr>\r\n                                      <td>\r\n                                        <p><strong>GIÁ TRỊ MỖI SẢN PHẨM (VNĐ)</strong></p>\r\n                                      </td>\r\n                                      <td>\r\n                                        <p><strong>GIÁ TRỊ LÌ XÌ (VNĐ)</strong></p>\r\n                                      </td>\r\n                                    </tr>\r\n                                    <tr>\r\n                                      <td>\r\n                                        <p>Từ\r\n                                          <strong>10.000.000</strong>\r\n                                          đến dưới\r\n                                          <strong>15.000.000</strong>\r\n                                        </p>\r\n                                      </td>\r\n                                      <td>\r\n                                        <p><strong>500.000</strong></p>\r\n                                      </td>\r\n                                    </tr>\r\n                                    <tr>\r\n                                      <td>\r\n                                        <p>Trên\r\n                                          <strong>15.000.000</strong>\r\n                                        </p>\r\n                                      </td>\r\n                                      <td>\r\n                                        <p><strong>1.000.000</strong></p>\r\n                                      </td>\r\n                                    </tr>\r\n                                  </tbody>\r\n                                </table>\r\n                              </li>\r\n                              <li>Cách thức gửi quà tặng lì xì: Electrolux sẽ chuyển tiền\r\n                                <strong>TRỰC TIẾP</strong>\r\n                                cho khách hàng tiêu dùng và\r\n                                <strong>KHÔNG THÔNG QUA</strong>\r\n                                bất kỳ cửa hàng bán lẻ, đại lý hoặc siêu thị điện máy nào.\r\n                              </li>\r\n                              <li>Cách thức tham gia: Khách hàng đăng nhập đường link của chương trình để đăng kí tham gia: https://www.electrolux.vn/tet2021/ ( TBC)</li>\r\n                              <ol>\r\n                                <li>Hình ảnh chụp / tập tin scan màu Hóa đơn mua hàng (hóa đơn VAT) có ghi rõ thông tin sản phẩm mua.</li>\r\n                                <li>Hình ảnh chụp rõ ràng tem sản phẩm (được dán bên trong sản phẩm)</li>\r\n                                <li>Cung cấp đầy đủ thông tin cá nhân gồm: Họ và tên, số điện thoại liên lạc, địa chỉ, tài khoản ngân hàng, hình chụp CMND (mặt trước + mặt sau).\r\n                                  <p>Hộp thư điện tử của chương trình : tet2021@electrolux.com</p>\r\n                                  <p>Tiêu đề ghi rõ :\r\n                                    <strong>CHƯƠNG TRÌNH LÌ XÌ TẾT 2021 - ELECTROLUX</strong>\r\n                                  </p>\r\n                                </li>\r\n                              </ol>\r\n                              <li>Thời gian tiếp nhận thông tin: Từ\r\n                                <strong>00’00”</strong>\r\n                                ngày\r\n                                <strong>21/12/2020</strong>\r\n                                đến hết\r\n                                <strong>23’59”</strong>\r\n                                ngày\r\n                                <strong>17/2/2021</strong>\r\n                                .\r\n                                <p>Khách hàng vui lòng liên hệ với\r\n                                  <strong>HOTLINE – 1800588899</strong>\r\n                                  của chương trình để nhận được tư vấn đầy đủ nhất.\r\n                                </p>\r\n                              </li>\r\n                              <li>Thời gian gửi quà tặng lì xì:\r\n                                <p>Electrolux sẽ tiến hành gửi quà tặng lì xì may mắn theo hai khung thời gian như sau:</p>\r\n                                <ol>\r\n                                  <li>Từ\r\n                                    <strong>00’00”</strong>\r\n                                    ngày\r\n                                    <strong>21/12/2020</strong>\r\n                                    đến\r\n                                    <strong>23’59”</strong>\r\n                                    ngày\r\n                                    <strong>25/1/2021</strong>\r\n                                    : sau khi liên hệ xác nhận thông tin khách hàng gửi về là đầy đủ và hợp lệ, chương trình sẽ gửi quà tặng lì xì may mắn trong vòng 10 ngày làm việc (không tính Thứ bảy, Chủ nhật và Ngày Lễ).\r\n                                  </li>\r\n                                  <li>Từ\r\n                                    <strong>00’00”</strong>\r\n                                    ngày\r\n                                    <strong>26/1/2021</strong>\r\n                                    đến\r\n                                    <strong>23’59”</strong>\r\n                                    ngày\r\n                                    <strong>17/2/2021</strong>\r\n                                    : sau khi liên hệ xác nhận thông tin khách hàng gửi về là đầy đủ và hợp lệ, chương trình sẽ gửi quà tặng lì xì may mắn chậm nhất trước ngày 26/2/2021.\r\n                                  </li>\r\n                                </ol>\r\n                              </li>\r\n                              <li>Phương thức gửi quà tặng lì xì: Electrolux sẽ tiến hành gửi quà tặng lì xì may mắn thông qua\r\n                                <strong>Tài khoản ngân hàng / Dịch vụ chuyển tiền qua đường bưu điện</strong>\r\n                                (tùy theo yêu cầu của khách hàng).\r\n                              </li>\r\n                            </ol>\r\n                            <li><strong>Quy định chương trình:</strong></li>\r\n                            <ol>\r\n                              <li>Khách hàng cần yêu cầu xuất hóa đơn mua hàng VAT cùng với chi tiết mã sản phẩm Electrolux để tham gia chương trình.</li>\r\n                              <li>Hóa đơn cung cấp phải là hóa đơn tài chính của các đơn vị phân phối chính hãng mặt hàng Electrolux tại Việt Nam và thông tin trên hóa đơn được xem là thông tin chính được căn cứ để nhận khuyến mãi.</li>\r\n                              <li>Ngày xuất hóa đơn phải nằm trong thời gian diễn ra chương trình khuyến mãi (\r\n                                <strong>từ 21/12/2020 đến 10/02/2021</strong>\r\n                                ).\r\n                              </li>\r\n                              <li>Toàn bộ các thông tin cá nhân phải trùng khớp với nhau (thông tin trên CMND, họ và tên đăng ký tham gia chương trình, địa chỉ, thông tin chủ Tài khoản Ngân hàng)</li>\r\n                              <li>Chương trình có quyền yêu cầu khách hàng bổ sung thông tin để xác định tính hợp lệ và là người quyết định cuối cùng. Khách hàng hoàn toàn chịu trách nhiệm đối với các thông tin cung cấp cho chương trình.</li>\r\n                              <li>Không áp dụng cho hình thức mua đi bán lại sản phẩm.</li>\r\n                              <li>Không giới hạn số lần khách hàng tham gia chương trình.</li>\r\n                              <li>Không áp dụng đồng thời với các chương trình khuyến mãi khác từ Electrolux.</li>\r\n                              <li>Thông tin người đăng ký tham gia chương trình khác trên hóa đơn mua hàng</li>\r\n                              <li>Nếu thay đổi thông tin người nhận quà tặng (thông tin người nhận khác thông tin trong Hóa Đơn), khách hàng vui lòng cung cấp giấy ủy Quyền có công chứng.</li>\r\n                              <li>Đối với hóa đơn là tên công ty, khách hàng phải cung cấp giấy ủy quyền có công chứng. Tet</li>\r\n                              <li>Khách hàng tự chịu trách nhiệm đóng thuế thu nhập cá nhân và chi phí di chuyển nhận giải (nếu có).</li>\r\n                              <li>Tổng giá trị quà tặng lì xì của chương trình là 10 tỉ đồng, chương trình có thể kết thúc sớm trước thời hạn mà không cần báo trước.</li>\r\n                              <li>Quà tặng lì xì có thể bị tạm hoãn nếu phát hiện dấu hiệu gian lận và đầu cơ từ phía khách hàng.</li>\r\n                              <li>Trường hợp xảy ra tranh chấp, quyết định của Electrolux là quyết định cuối cùng.</li>\r\n                              <li><strong>Mọi thắc mắc có thể</strong>\r\n                                liên hệ hotline\r\n                                <strong>1800 588 899</strong>\r\n                                (Thời gian làm việc từ: 09:00 - 18:00 từ thứ hai đến thứ bảy).\r\n                              </li>\r\n                            </ol>\r\n                          </ol>\r\n                          <br>\r\n                          <p style=\"text-align: center;\"><button class=\"button primary highlight-secondary-color\" type=\"button\" name=\"Register\" value=\"Register\" data-register=\"Vào sổ\" data-loading=\"Tải...\" onclick=\"return validateForm();\" style=\"margin: 0;\">Tham gia chương trình</button></p>\r\n                        </div>\r\n                      </div>\r\n                    </div>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n            </div>\r\n          </div>\r\n        </section>', '.cshtml', 'Views/Shared/Templates/electrolux/Pages', 'The_Le_Dieu_Kien', 'Pages', NULL, NULL, NULL, NULL, 2, 'electrolux', NULL, '2020-12-05 05:03:16', 'superadmin', '2020-12-05 03:51:09', 0, 'Deleted'),
(49, '@using Mix.Cms.Lib\r\n@using Mix.Cms.Lib.Services\r\n@model Mix.Cms.Lib.ViewModels.MixPages.ReadMvcViewModel\r\n@{ \r\n   string assetFolder = MixCmsHelper.GetAssetFolder(ViewBag.culture); \r\n   string templateFolder = MixCmsHelper.GetTemplateFolder(ViewBag.culture);\r\n}\r\n@*\r\n    // Get Configuration\r\n    @MixService.GetConfig<T>(\"conf_name\", ViewBag.culture)\r\n\r\n    // Get Extra Attribute\r\n    @(Model.Property<TDataType>(\"[propertyName]\"))\r\n    ex: @(Model.Property<string>(\"html_title\"))\r\n\r\n    // Loop Data\r\n    @foreach(var item in Model.Posts.Items){\r\n        // get simple Data value\r\n        var post = item.Post\r\n        @post.Property(\"[propertyName]\")\r\n    }\r\n    @foreach(var item in Model.Modules.Items){\r\n        // get simple Data value\r\n        @item.Property(\"[propertyName]\")\r\n    }\r\n*@\r\n<section id=\"indexSection\" class=\"body-container\">\r\n          <section id=\"heroBannerSection\">\r\n            <div class=\"hero-banner-slider hero-banner-slider-js\" data-slide-infinite=\"False\" data-slide-autoplay-speed=\"7000\">\r\n              <div class=\"hero-banner-standard theme-blue-rich \" role=\"banner\">\r\n                <div class=\"card col-12\">\r\n                  <div class=\"card-section feature-img\" data-imagizer=\"\">\r\n                    <picture>\r\n                      <source srcset=\"@assetFolder/assets/img/promotion-banner-mobile-375x350.jpg\" media=\"(max-width: 767px)\">\r\n                      <source srcset=\"@assetFolder/assets/img/promotion-banner-desktop-1980x500.jpg\" media=\"(min-width: 768px)\">\r\n                      <img src=\"@assetFolder/assets/img/promotion-banner-desktop-1980x500.jpg\" alt=\"Banner homepage\">\r\n                    </picture>\r\n                  </div>\r\n                  <div class=\"card-section content card-section_content row\">\r\n                    <div class=\"card-column\">\r\n                      <div class=\"card-content-wrapper card-column__content\">\r\n                        <h1 class=\"heading \">Tết trao lì xì, <br>Khai xuân như ý.\r\n                          <br>\r\n                          <button class=\"button primary highlight-secondary-color\" type=\"button\" name=\"Register\" value=\"Register\" data-register=\"Vào sổ\" data-loading=\"Tải...\" onclick=\"return validateForm();\" style=\"margin: 0;\">Tham gia chương trình\r\n                          </button>\r\n                        </h1>\r\n                      </div>\r\n                    </div>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n            </div>\r\n          </section>\r\n          <div class=\"container\">\r\n            <div class=\"row\">\r\n              <div class=\"col-12\">\r\n                <div class=\" mgbt-sm-50 d-flex flex-direction-column\">\r\n                  <div class=\" row mgl-sm-0 mgr-sm-0\">\r\n                    <div class=\"grid d-flex textimageblock col-lg-12 col-md-12 col-12 displaymode-full  pdr-sm-0 pdl-sm-0\">\r\n                      <div class=\"img-text-block    mgt-sm-50  mgbt-sm-30    d-flex  \r\n                     \">\r\n                        <div class=\"img-text-block__content js-img-block__content      text-sm-center  justify-content-center d-flex\">\r\n                          <div class=\"img-text-block__title order-1 text-sm-center\">\r\n                            <h1>Hỗ trợ: 1800 588 899</h1>\r\n                            <h2>Thời gian làm việc từ: 09:00 - 18:00 từ thứ hai đến thứ bảy</h2>\r\n                          </div>\r\n                        </div>\r\n                      </div>\r\n                    </div>\r\n                    <div class=\"grid d-flex fulltextblock col-lg-12 col-md-12 col-12 displaymode-full  pdr-sm-0 pdl-sm-0\">\r\n                      <div class=\"full-text-module w-100-percent\">\r\n                        <div class=\"content-container \"><strong>Lưu ý về thông tin sản phẩm:</strong>\r\n                          <p>Hình ảnh không được cắt khép, rách rời. Chứ trên hình ảnh hoặc hóa đơn không được tẩy xóa hoặc bị mờ.\r\n                          </p>\r\n                          <ol>\r\n                            <li>Hình mẫu chứng minh thư, chứng minh nhân dân</li>\r\n                            <p><img src=\"https://visabaongoc.com/wp-content/uploads/2018/02/quy-dinh-ve-anh-lam-chung-minh-thu-nhan-dan-3-1024x614.jpg\" width=\"50%\"></p>\r\n                            <li>Hình mẫu về tem sản phẩm</li>\r\n                            <img src=\"@assetFolder/assets/sample/tem-may-giat.jpg\" width=\"50%\">\r\n                            <li>Hình mẫu về hóa đơn mua hàng</li>\r\n                            <img src=\"@assetFolder/assets/sample/tem-tu-lanh.jpg\" width=\"50%\">\r\n                          </ol>\r\n                          <br>\r\n                          <p style=\"text-align: center;\"><a href=\"/dang-ky\" class=\"button primary highlight-secondary-color\" type=\"button\" name=\"Register\" value=\"Register\" data-register=\"Vào sổ\" data-loading=\"Tải...\" style=\"margin: 0;\">Tham gia chương trình\r\n                            </a></p>\r\n                        </div>\r\n                      </div>\r\n                    </div>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n            </div>\r\n          </div>\r\n        </section>', '.cshtml', 'Views/Shared/Templates/electrolux/Pages', 'Ho_Tro', 'Pages', NULL, NULL, NULL, NULL, 2, 'electrolux', NULL, '2020-12-05 05:04:28', 'superadmin', '2020-12-05 03:51:09', 0, 'Deleted');
INSERT INTO `mix_template` (`Id`, `Content`, `Extension`, `FileFolder`, `FileName`, `FolderType`, `MobileContent`, `Scripts`, `SpaContent`, `Styles`, `ThemeId`, `ThemeName`, `CreatedBy`, `CreatedDateTime`, `ModifiedBy`, `LastModified`, `Priority`, `Status`) VALUES
(50, '@{\r\n    var assetFolder = Mix.Cms.Lib.MixCmsHelper.GetAssetFolder(ViewBag.culture);\r\n}\r\n\r\n<form\r\n    ng-if=\"isInit\"\r\n    ng-controller=\"ElectroluxRegisterController\"\r\n    ng-init=\"init(\'register\')\"\r\n    data-validate=\"\"\r\n    novalidate=\"\"\r\n    data-customersourceidprepend=\"VN\"\r\n    data-sourceapi=\"\"\r\n    >\r\n    <div class=\"row personal-info-header\">\r\n        <div class=\"col-12\">\r\n        <h5>Thông Tin Cá Nhân</h5>\r\n        </div>\r\n    </div>\r\n    <div class=\"personal-info\">\r\n        <div class=\"row fields\">\r\n        <div class=\"col-12 col-lg-6\">\r\n            <div class=\"row\">\r\n            <div class=\"col-4 col-lg-3\">\r\n                <div class=\"form-group\">\r\n                <select\r\n                    class=\"form-control customized-dropdown\"\r\n                    id=\"sel1\">\r\n                    <option value=\"\" selected disabled>Giới Tính ▼</option>\r\n                    <option value=\"\">Ông</option>\r\n                    <option value=\"\">Bà</option>\r\n                </select>\r\n                </div>\r\n            </div>\r\n            <div class=\"col-8 col-lg-9\">\r\n                <label\r\n                ><input\r\n                    type=\"text\"\r\n                    name=\"lastName\"\r\n                    placeholder=\"*Họ\"\r\n                    aria-describedby=\"lastname\"\r\n                    required=\"\"\r\n                    pattern=\"alpha\"\r\n                    data-required=\"Bắt buộc nhập\"\r\n                    data-valid=\"Họ không hợp lệ. Vui lòng nhập lại\"\r\n                    aria-label=\"lastName\" />\r\n                <span class=\"form-validate-error\"></span\r\n                ></label>\r\n            </div>\r\n            </div>\r\n        </div>\r\n        <div class=\"col-12 col-lg-6\">\r\n            <label\r\n            ><input\r\n                type=\"text\"\r\n                name=\"firstName\"\r\n                placeholder=\"*Tên\"\r\n                aria-describedby=\"firstName\"\r\n                required=\"\"\r\n                pattern=\"alpha\"\r\n                data-required=\"Bắt buộc nhập\"\r\n                data-valid=\"Tên không hợp lệ. Vui lòng nhập lại\"\r\n                aria-label=\"firstName\" />\r\n            <span class=\"form-validate-error\"></span\r\n            ></label>\r\n        </div>\r\n        <div class=\"col-12 col-lg-6\">\r\n            <div class=\"row\">\r\n            <div class=\"col-12 col-lg-6\">\r\n                <label\r\n                ><input\r\n                    type=\"text\"\r\n                    name=\"contactNumber\"\r\n                    placeholder=\"*Số điện thoại\"\r\n                    data-removealtnum=\"Thêm số điện thoại thay thế \"\r\n                    data-addaltnum=\"Số điện thoại thay thế \"\r\n                    data-altplaceholder=\"Số điện thoại thay thế \"\r\n                    aria-describedby=\"number\"\r\n                    required=\"\"\r\n                    pattern=\"number\"\r\n                    data-required=\"Bắt buộc nhập\"\r\n                    data-valid=\"Số điện thoại không chính xác. Vui lòng thử lại \"\r\n                    data-altvalid=\"Số điện thoại thay thế không chính xác. Vui lòng thử lại \"\r\n                    aria-label=\"contactNumber\" />\r\n                <span class=\"form-validate-error\"></span\r\n                ></label>\r\n            </div>\r\n            <div class=\"col-12 col-lg-6\">\r\n                <div class=\"fields-email\">\r\n                <label\r\n                    ><input\r\n                    type=\"email\"\r\n                    name=\"email\"\r\n                    placeholder=\"*Email\"\r\n                    data-removealtemail=\"Thêm email thay thế \"\r\n                                    data-addaltemail=\"Email thay thế \"\r\n                                    data-altplaceholder=\"Email thay thế \"\r\n                                    aria-describedby=\"email\"\r\n                                    required=\"\"\r\n                                    pattern=\"email\"\r\n                                    data-required=\"Bắt buộc nhập\"\r\n                                    data-valid=\"Địa chỉ mail không chính xác. Vui lòng thử lại \"\r\n                                    data-altvalid=\"Email thay thế không chính xác. Vui lòng thử lại \"\r\n                                    aria-label=\"email\" />\r\n                                  <span class=\"form-validate-error\"></span\r\n                                ></label>\r\n                              </div>\r\n                            </div>\r\n                          </div>\r\n                        </div>\r\n                        <div class=\"col-12 col-lg-6\">\r\n                          <div class=\"row\">\r\n                            <label class=\"col-12 col-lg-6\"\r\n                              ><input\r\n                                type=\"text\"\r\n                                name=\"identity\"\r\n                                placeholder=\"*Số Chứng minh thư / Số Hộ chiếu\"\r\n                                aria-describedby=\"identity\"\r\n                                required\r\n                                pattern=\"alpha\"\r\n                                data-required=\"Bắt buộc nhập\"\r\n                                data-valid=\"Tên không hợp lệ. Vui lòng nhập lại\"\r\n                                aria-label=\"identity\" />\r\n                              <span class=\"form-validate-error\"></span\r\n                            ></label>\r\n                            <label class=\"col-12 col-lg-6\"\r\n                              ><input\r\n                                type=\"text\"\r\n                                name=\"identity\"\r\n                                placeholder=\"*Ngày cấp\"\r\n                                aria-describedby=\"identity\"\r\n                                required\r\n                                pattern=\"alpha\"\r\n                                data-required=\"Bắt buộc nhập\"\r\n                                data-valid=\"Tên không hợp lệ. Vui lòng nhập lại\"\r\n                                aria-label=\"identity\" />\r\n                              <img\r\n                                style=\"right: 17px;\"\r\n                                class=\"placeholder-image\"\r\n                                src=\"@assetFolder/assets/img/date-icon.png\"\r\n                                alt=\"Date Icon\"\r\n                                tabindex=\"-1\" />\r\n                              <span class=\"form-validate-error\"></span\r\n                            ></label>\r\n                          </div>\r\n                        </div>\r\n                        <div class=\"col-12 col-lg-12 productPhoto\">\r\n                          <div class=\"fields-productPhoto\">\r\n                            <label class=\"image-upload-label\"\r\n                              >Hình CMND / Hộ Chiếu ( 2 mặt trước và sau\r\n                              )</label\r\n                            >\r\n                            <img\r\n                              data-open=\"product-info-pnc\"\r\n                              data-unscroll=\"\"\r\n                              tabindex=\"-1\"\r\n                              class=\"infoIcon placeholder-image\"\r\n                              src=\"@assetFolder/assets/img/info-icon.png\"\r\n                              alt=\"Info Icon\"\r\n                            />\r\n                            <input\r\n                              type=\"file\"\r\n                              class=\"custom-file-upload-img\"\r\n                              data-files=\"file.files\"\r\n                              ngf-select=\"selectFiles($files)\"\r\n                              accept=\"image/*;capture=camera\"\r\n                            />\r\n                          </div>\r\n                        </div>\r\n                      </div>\r\n                    </div>\r\n                    <div class=\"row product-info-header\">\r\n                      <div class=\"col-12\">\r\n                        <h5>Thông Tin Hóa Đơn</h5>\r\n                      </div>\r\n                    </div>\r\n                    <div class=\"product-info\">\r\n                      <div class=\"row fields\">\r\n                        <div class=\"col-12 col-md-4\">\r\n                          <label class=\"product-information\"\r\n                            ><input\r\n                              class=\"product-info-input\"\r\n                              name=\"modelno\"\r\n                              type=\"text\"\r\n                              placeholder=\"*Hoá Đơn\"\r\n                              aria-describedby=\"productModelNo\"\r\n                              required=\"\"\r\n                              pattern=\"alpha_numeric\"\r\n                              data-valid=\"\"\r\n                              data-required=\"Bắt buộc nhập\"\r\n                              aria-label=\"modelno\" />\r\n                            <img\r\n                              data-open=\"product-info-pnc\"\r\n                              data-unscroll=\"\"\r\n                              tabindex=\"-1\"\r\n                              class=\"infoIcon placeholder-image\"\r\n                              src=\"@assetFolder/assets/img/info-icon.png\"\r\n                              alt=\"Info Icon\" />\r\n                            <span class=\"form-validate-error\"></span\r\n                          ></label>\r\n                        </div>\r\n                        <div class=\"col-12 col-md-4\">\r\n                          <label class=\"product-information\"\r\n                            ><input\r\n                              class=\"product-info-input\"\r\n                              name=\"modelno\"\r\n                              type=\"text\"\r\n                              placeholder=\"*Mã Sản Phẩm (Model)\"\r\n                              aria-describedby=\"productModelNo\"\r\n                              required=\"\"\r\n                              pattern=\"alpha_numeric\"\r\n                              data-valid=\"\"\r\n                              data-required=\"Bắt buộc nhập\"\r\n                              aria-label=\"modelno\" />\r\n                            <img\r\n                              data-open=\"product-info-pnc\"\r\n                              data-unscroll=\"\"\r\n                              tabindex=\"-1\"\r\n                              class=\"infoIcon placeholder-image\"\r\n                              src=\"@assetFolder/assets/img/info-icon.png\"\r\n                              alt=\"Info Icon\" />\r\n                            <span class=\"form-validate-error\"></span\r\n                          ></label>\r\n                        </div>\r\n                        <div class=\"col-12 col-md-4\">\r\n                          <label class=\"product-information\"\r\n                            ><input\r\n                              class=\"product-info-input\"\r\n                              name=\"serialno\"\r\n                              type=\"text\"\r\n                              placeholder=\"*Giá Trị\"\r\n                              aria-describedby=\"machineserialno\"\r\n                              data-required=\"Bắt buộc nhập\"\r\n                              required=\"\"\r\n                              pattern=\"number\"\r\n                              aria-label=\"serialno\" />\r\n                            <img\r\n                              data-open=\"product-info-machine\"\r\n                              data-unscroll=\"\"\r\n                              tabindex=\"-1\"\r\n                              class=\"infoIcon placeholder-image\"\r\n                              src=\"@assetFolder/assets/img/info-icon.png\"\r\n                              alt=\"Info Icon\" />\r\n                            <span class=\"form-validate-error\"></span\r\n                          ></label>\r\n                        </div>\r\n                        <div class=\"col-12 col-lg-6\">\r\n                          <label class=\"product-information\"\r\n                            ><input\r\n                              class=\"product-info-input hasDatepicker\"\r\n                              type=\"text\"\r\n                              id=\"prefAppDate\"\r\n                              name=\"prefAppDate\"\r\n                              placeholder=\"*Ngày mua hàng\"\r\n                              aria-describedby=\"dateofpurchase\"\r\n                              required=\"\"\r\n                              pattern=\"date\"\r\n                              data-required=\"Bắt buộc nhập\"\r\n                              data-valid=\"Ngày mua hàng không chính xác. Vui lòng thử lại \"\r\n                              aria-label=\"Date of Purchase\" />\r\n                            <img\r\n                              class=\"placeholder-image\"\r\n                              src=\"@assetFolder/assets/img/date-icon.png\"\r\n                              alt=\"Date Icon\"\r\n                              tabindex=\"-1\" />\r\n                            <span class=\"form-validate-error\"></span\r\n                          ></label>\r\n                        </div>\r\n                        <div class=\"col-12 col-lg-6\">\r\n                          <label class=\"product-information\"\r\n                            ><input\r\n                              class=\"product-info-input\"\r\n                              name=\"modelno\"\r\n                              type=\"text\"\r\n                              placeholder=\"*Nơi Mua\"\r\n                              aria-describedby=\"productModelNo\"\r\n                              required=\"\"\r\n                              pattern=\"alpha_numeric\"\r\n                              data-valid=\"\"\r\n                              data-required=\"Bắt buộc nhập\"\r\n                              aria-label=\"modelno\" />\r\n                            <span class=\"form-validate-error\"></span\r\n                          ></label>\r\n                        </div>\r\n                        <div class=\"col-12 productPhoto\">\r\n                          <div class=\"fields-productPhoto\">\r\n                            <label class=\"image-upload-label\"\r\n                              >Hình Hóa Đơn Gốc</label\r\n                            >\r\n                            <img\r\n                              data-open=\"product-info-pnc\"\r\n                              data-unscroll=\"\"\r\n                              tabindex=\"-1\"\r\n                              class=\"infoIcon placeholder-image\"\r\n                              src=\"@assetFolder/assets/img/info-icon.png\"\r\n                              alt=\"Info Icon\"\r\n                            />\r\n                            <input\r\n                              type=\"file\"\r\n                              class=\"custom-file-upload-img\"\r\n                              data-files=\"file.files\"\r\n                              ngf-select=\"selectFiles($files)\"\r\n                              accept=\"image/*;capture=camera\"\r\n                            />\r\n                          </div>\r\n                        </div>\r\n                      </div>\r\n                    </div>\r\n                    <div class=\"row product-info-header\">\r\n                      <div class=\"col-12\">\r\n                        <h5>Thông Tin Sản Phẩm</h5>\r\n                      </div>\r\n                    </div>\r\n                    <div class=\"product-info\">\r\n                      <div class=\"row fields\">\r\n                        <div class=\"col-12 col-md-4\">\r\n                          <div class=\"form-group\">\r\n                            <select\r\n                              class=\"form-control customized-dropdown\"\r\n                              id=\"sel1\"\r\n                            >\r\n                              <option value=\"\" selected disabled\r\n                                >Mã Sản Phẩm ▼</option>\r\n                              <option value=\"\">ETB4600B-H</option>\r\n                              <option value=\"\">ETB4600B-G</option>\r\n                              <option value=\"\">ETB5400B-H</option>\r\n                              <option value=\"\">ETB5400B-G</option>\r\n                              <option value=\"\">ETE5720B-G</option>\r\n                              <option value=\"\">EBE4500B-H</option>\r\n                              <option value=\"\">EBE4500B-G</option>\r\n                              <option value=\"\">EME3700H-H</option>\r\n                              <option value=\"\">EME3700H-A</option>\r\n                              <option value=\"\">EHE5224B-A</option>\r\n                              <option value=\"\">EHE6879A-B</option>\r\n                              <option value=\"\">EHXD875FAK</option>\r\n                              <option value=\"\">EHD8740FOK</option>\r\n                              <option value=\"\">EHI7325BA</option>\r\n                              <option value=\"\">EHI7023BA</option>\r\n                              <option value=\"\">EHI7280BA</option>\r\n                              <option value=\"\">EHI7280BB</option>\r\n                              <option value=\"\">EHI7260BA</option>\r\n                              <option value=\"\">EHI7260BB</option>\r\n                              <option value=\"\">EFC926BAR</option>\r\n                              <option value=\"\">EFC936GAR</option>\r\n                              <option value=\"\">EFC928SC</option>\r\n                              <option value=\"\">EOB8857AAX</option>\r\n                              <option value=\"\">EOB3434BOX</option>\r\n                              <option value=\"\">EOB2100COX</option>\r\n                              <option value=\"\">EKI64500OX</option>\r\n                              <option value=\"\">EWF9024BDWB</option>\r\n                              <option value=\"\">EWF9024ADSA</option>\r\n                              <option value=\"\">EWF9023BDWA</option>\r\n                              <option value=\"\">EWF9523BDWA</option>\r\n                              <option value=\"\">EWF9523ADSA</option>\r\n                              <option value=\"\">EWF1024BDWA</option>\r\n                              <option value=\"\">EWF1023BEWA</option>\r\n                              <option value=\"\">EWF1023BESA</option>\r\n                              <option value=\"\">EWF1042BDWA</option>\r\n                              <option value=\"\">EWF1142BEWA</option>\r\n                              <option value=\"\">EWF1141AEWA</option>\r\n                              <option value=\"\">EWF1142BESA</option>\r\n                              <option value=\"\">EWF1141AESA</option>\r\n                              <option value=\"\">EWF1141SESA</option>\r\n                              <option value=\"\">EWW8023AEWA</option>\r\n                              <option value=\"\">EWW1042AEWA</option>\r\n                              <option value=\"\">EWW1141AEWA</option>\r\n                              <option value=\"\">EWW8025DGWA</option>\r\n                              <option value=\"\">EDS805KQWA</option>\r\n                              <option value=\"\">EDS805KQSA</option>\r\n                              <option value=\"\">EDC804CEWA</option>\r\n                              <option value=\"\">EDH803BEWA</option>\r\n                              <option value=\"\">EDH903BEWA</option>\r\n                              <option value=\"\">ESV18CRR-C2</option>\r\n                              <option value=\"\">ESV18CRR-C3</option>\r\n                              <option value=\"\">PA91-406GY</option>\r\n                              <option value=\"\">PA91-606DG</option>\r\n                            </select>\r\n                            <img\r\n                              style=\"right: 17px;\"\r\n                              data-open=\"product-info-pnc\"\r\n                              data-unscroll=\"\"\r\n                              tabindex=\"-1\"\r\n                              class=\"infoIcon placeholder-image\"\r\n                              src=\"@assetFolder/assets/img/info-icon.png\"\r\n                              alt=\"Info Icon\"\r\n                            />\r\n                          </div>\r\n                        </div>\r\n                        <div class=\"col-12 col-md-4\">\r\n                          <div class=\"form-group\">\r\n                            <select\r\n                              class=\"form-control customized-dropdown\"\r\n                              id=\"sel1\"\r\n                            >\r\n                              <option value=\"\" selected disabled>PNC ▼</option>\r\n                              <option value=\"\">925060513</option>\r\n                              <option value=\"\">925060515</option>\r\n                              <option value=\"\">925060523</option>\r\n                              <option value=\"\">925060524</option>\r\n                              <option value=\"\">925060499</option>\r\n                              <option value=\"\">925060525</option>\r\n                              <option value=\"\">925060526</option>\r\n                              <option value=\"\">925060494</option>\r\n                              <option value=\"\">925060493</option>\r\n                              <option value=\"\">925060502</option>\r\n                              <option value=\"\">925060325</option>\r\n                              <option value=\"\">949596507</option>\r\n                              <option value=\"\">949596515</option>\r\n                              <option value=\"\">956004191</option>\r\n                              <option value=\"\">956004192</option>\r\n                              <option value=\"\">949163372</option>\r\n                              <option value=\"\">949163451</option>\r\n                              <option value=\"\">949163369</option>\r\n                              <option value=\"\">949163449</option>\r\n                              <option value=\"\">942001214</option>\r\n                              <option value=\"\">942001279</option>\r\n                              <option value=\"\">956004024</option>\r\n                              <option value=\"\">944184529</option>\r\n                              <option value=\"\">949499035</option>\r\n                              <option value=\"\">944064612</option>\r\n                              <option value=\"\">943004894</option>\r\n                              <option value=\"\">914900815</option>\r\n                              <option value=\"\">914900816</option>\r\n                              <option value=\"\">914900729</option>\r\n                              <option value=\"\">914900817</option>\r\n                              <option value=\"\">914900818</option>\r\n                              <option value=\"\">914900728</option>\r\n                              <option value=\"\">914900726</option>\r\n                              <option value=\"\">914900725</option>\r\n                              <option value=\"\">914900727</option>\r\n                              <option value=\"\">914900724</option>\r\n                              <option value=\"\">914900722</option>\r\n                              <option value=\"\">914900723</option>\r\n                              <option value=\"\">914900721</option>\r\n                              <option value=\"\">914900809</option>\r\n                              <option value=\"\">914900734</option>\r\n                              <option value=\"\">914900733</option>\r\n                              <option value=\"\">914900732</option>\r\n                              <option value=\"\">914900838</option>\r\n                              <option value=\"\">916002115</option>\r\n                              <option value=\"\">916002117</option>\r\n                              <option value=\"\">916098411</option>\r\n                              <option value=\"\">916098414</option>\r\n                              <option value=\"\">916098417</option>\r\n                              <option value=\"\">956004610</option>\r\n                              <option value=\"\">956004619</option>\r\n                              <option value=\"\">900943149</option>\r\n                              <option value=\"\">900943150</option>\r\n                            </select>\r\n                            <img\r\n                              style=\"right: 17px;\"\r\n                              data-open=\"product-info-machine\"\r\n                              data-unscroll=\"\"\r\n                              tabindex=\"-1\"\r\n                              class=\"infoIcon placeholder-image\"\r\n                              src=\"@assetFolder/assets/img/info-icon.png\"\r\n                              alt=\"Info Icon\"\r\n                            />\r\n                          </div>\r\n                        </div>\r\n                        <div class=\"col-12 col-md-4\">\r\n                          <label class=\"product-information\"\r\n                            ><input\r\n                              class=\"product-info-input\"\r\n                              name=\"serialno\"\r\n                              type=\"text\"\r\n                              placeholder=\"*SN\"\r\n                              aria-describedby=\"machineserialno\"\r\n                              data-required=\"Bắt buộc nhập\"\r\n                              required=\"\"\r\n                              pattern=\"number\"\r\n                              aria-label=\"serialno\" />\r\n                            <img\r\n                              data-open=\"product-info-machine\"\r\n                              data-unscroll=\"\"\r\n                              tabindex=\"-1\"\r\n                              class=\"infoIcon placeholder-image\"\r\n                              src=\"@assetFolder/assets/img/info-icon.png\"\r\n                              alt=\"Info Icon\" />\r\n                            <span class=\"form-validate-error\"></span\r\n                          ></label>\r\n                        </div>\r\n                        <div class=\"col-12 col-md-6 productPhoto\">\r\n                          <div class=\"fields-productPhoto\">\r\n                            <label class=\"image-upload-label\">Hình Tem</label>\r\n                            <img\r\n                              data-open=\"product-info-pnc\"\r\n                              data-unscroll=\"\"\r\n                              tabindex=\"-1\"\r\n                              class=\"infoIcon placeholder-image\"\r\n                              src=\"@assetFolder/assets/img/info-icon.png\"\r\n                              alt=\"Info Icon\"\r\n                            />\r\n                            <input\r\n                              type=\"file\"\r\n                              class=\"custom-file-upload-img\"\r\n                              data-files=\"file.files\"\r\n                              ngf-select=\"selectFiles($files)\"                              \r\n                              accept=\"image/*;capture=camera\"\r\n                            />\r\n                          </div>\r\n                        </div>\r\n                      </div>\r\n                    </div>\r\n                    <div class=\"row terms\">\r\n                      <div class=\"col-12 data-consent-group\">\r\n                        <div class=\"group-section pre-caption\">\r\n                          <p><strong>Phương Thức Nhận Quà</strong></p>\r\n                          <p class=\"pre-caption-description\">\r\n                            Bạn muốn nhận quà qua các phương thức nào sau đây:\r\n                          </p>\r\n                        </div>\r\n                        <ul class=\"filter-accordion\">\r\n                          <li class=\"filter-accordion_item\">\r\n                            <div\r\n                              class=\"filter-accordion_item-title js_filter-accordion_item-title\"\r\n                            >\r\n                              Chuyển khoản qua ngân hàng\r\n                            </div>\r\n                            <div\r\n                              class=\"filter-accordion_item-content\"\r\n                              style=\"height: 0px;\"\r\n                            >\r\n                              <div\r\n                                class=\"filter-accordion_item-content-wrapper\"\r\n                              >\r\n                                <div class=\"filter-accordion_item-content-item\">\r\n                                  <div class=\"row fields diachinhanqua\">\r\n                                    <div class=\"col-12 col-lg-12\">\r\n                                      <div class=\"row\">\r\n                                        <label class=\"col-12 col-lg-4\"\r\n                                          ><input\r\n                                            type=\"text\"\r\n                                            name=\"identity\"\r\n                                            placeholder=\"*Số Tài Khoản Ngân Hàng\"\r\n                                            aria-describedby=\"identity\"\r\n                                            required\r\n                                            pattern=\"alpha\"\r\n                                            data-required=\"Bắt buộc nhập\"\r\n                                            data-valid=\"Tên không hợp lệ. Vui lòng nhập lại\"\r\n                                            aria-label=\"identity\" />\r\n                                          <span\r\n                                            class=\"form-validate-error\"\r\n                                          ></span\r\n                                        ></label>\r\n                                        <label class=\"col-12 col-lg-4\"\r\n                                          ><input\r\n                                            type=\"text\"\r\n                                            name=\"identity\"\r\n                                            placeholder=\"*Ngân Hàng\"\r\n                                            aria-describedby=\"identity\"\r\n                                            required\r\n                                            pattern=\"alpha\"\r\n                                            data-required=\"Bắt buộc nhập\"\r\n                                            data-valid=\"Tên không hợp lệ. Vui lòng nhập lại\"\r\n                                            aria-label=\"identity\" />\r\n                                          <span\r\n                                            class=\"form-validate-error\"\r\n                                          ></span\r\n                                        ></label>\r\n                                        <label class=\"col-12 col-lg-4\"\r\n                                          ><input\r\n                                            type=\"text\"\r\n                                            name=\"identity\"\r\n                                            placeholder=\"*Phòng GD / Chi Nhánh Ngân Hàng\"\r\n                                            aria-describedby=\"identity\"\r\n                                            required\r\n                                            pattern=\"alpha\"\r\n                                            data-required=\"Bắt buộc nhập\"\r\n                                            data-valid=\"Tên không hợp lệ. Vui lòng nhập lại\"\r\n                                            aria-label=\"identity\" />\r\n                                          <span\r\n                                            class=\"form-validate-error\"\r\n                                          ></span\r\n                                        ></label>\r\n                                      </div>\r\n                                    </div>\r\n                                  </div>\r\n                                </div>\r\n                              </div>\r\n                            </div>\r\n                          </li>\r\n                          <li class=\"filter-accordion_item\">\r\n                            <div\r\n                              class=\"filter-accordion_item-title js_filter-accordion_item-title\"\r\n                            >\r\n                              Chuyển tiền qua đường bưu điện.\r\n                            </div>\r\n                            <div class=\"filter-accordion_item-content\">\r\n                              <div\r\n                                class=\"filter-accordion_item-content-wrapper\"\r\n                              >\r\n                                <div class=\"filter-accordion_item-content-item\">\r\n                                  <div class=\"row fields diachinhanqua\">\r\n                                    <div class=\"col-12 col-lg-12\">\r\n                                      <div class=\"row\">\r\n                                        <label class=\"col-12 col-lg-6\">\r\n                                          <textarea\r\n                                            name=\"identity\"\r\n                                            placeholder=\"*Địa chỉ\"\r\n                                            aria-describedby=\"identity\"\r\n                                            required\r\n                                            pattern=\"alpha\"\r\n                                            data-required=\"Bắt buộc nhập\"\r\n                                            data-valid=\"Tên không hợp lệ. Vui lòng nhập lại\"\r\n                                            aria-label=\"identity\"\r\n                                          ></textarea>\r\n                                          <span\r\n                                            class=\"form-validate-error\"\r\n                                          ></span\r\n                                        ></label>\r\n                                        <div class=\"form-group col-12 col-lg-2\">\r\n                                          <select\r\n                                            class=\"form-control customized-dropdown\"\r\n                                            id=\"sel1\"\r\n                                          >\r\n                                            <option value=\"\" selected disabled\r\n                                              >Phường / Xã ▼</option>\r\n                                            <option value=\"\">ETB4600B-H</option>\r\n                                          </select>\r\n                                        </div>\r\n                                        <div class=\"form-group col-12 col-lg-2\">\r\n                                          <select\r\n                                            class=\"form-control customized-dropdown\"\r\n                                            id=\"sel1\"\r\n                                          >\r\n                                            <option value=\"\" selected disabled\r\n                                              >Quận / Huyện ▼</option>\r\n                                            <option value=\"\">ETB4600B-H</option>\r\n                                          </select>\r\n                                        </div>\r\n                                        <div class=\"form-group col-12 col-lg-2\">\r\n                                          <select\r\n                                            class=\"form-control customized-dropdown\"\r\n                                            id=\"sel1\"\r\n                                          >\r\n                                            <option value=\"\" selected disabled\r\n                                              >Tỉnh / Thành Phố ▼</option>\r\n                                            <option value=\"\">ETB4600B-H</option>\r\n                                          </select>\r\n                                        </div>\r\n                                      </div>\r\n                                    </div>\r\n                                  </div>\r\n                                </div>\r\n                              </div>\r\n                            </div>\r\n                          </li>\r\n                        </ul>\r\n                      </div>\r\n                      <fieldset class=\"columns col-12 col-md-12 col-lg-12\">\r\n                        <span\r\n                          class=\"tnc-checkbox\"\r\n                          data-validate-check=\"\"\r\n                        ></span>\r\n                        <input\r\n                          data-consent-option=\"\"\r\n                          name=\"dataProtectionConsent\"\r\n                          type=\"checkbox\"\r\n                          required=\"\"\r\n                          aria-label=\"dataProtectionConsent\"\r\n                          data-required=\"Bạn cần chấp thuận chính sách bảo mật dữ liệu trước khi đăng ký sản phẩm.\"\r\n                          data-value-check=\"Yes\"\r\n                          data-value-uncheck=\"No\"\r\n                        />\r\n                        <div class=\"label-offset\">\r\n                          <label\r\n                            class=\"tncbox\"\r\n                            for=\"dataProtectionConsent\"\r\n                            data-consent-label=\"\"\r\n                          >\r\n                            <p>\r\n                              Tôi xác nhận rằng tôi đã đọc, hiểu và đồng ý với\r\n                              toàn bộ\r\n                              <a href=\"/chinh-sach-bao-ve-du-lieu/\"\r\n                                >Chính Sách Bảo Mật</a\r\n                              >\r\n                              bao gồm cả cách thức dữ liệu cá nhân của tôi có\r\n                              thể được thu thập, sử dụng và tiết lộ bởi Công Ty\r\n                              TNHH Electrolux Việt Nam và các công ty có liên\r\n                              quan của Công Ty TNHH Electrolux Việt Nam theo quy\r\n                              định tại Chính Sách Bảo Mật.\r\n                            </p>\r\n                          </label>\r\n                        </div>\r\n                        <div class=\"form-validate-error\"></div>\r\n                      </fieldset>\r\n                      <fieldset class=\"columns col-12 col-md-12 col-lg-12\">\r\n                        <span\r\n                          class=\"tnc-checkbox\"\r\n                          data-validate-check=\"\"\r\n                        ></span>\r\n                        <input\r\n                          data-consent-option=\"\"\r\n                          name=\"termsAndConditionsAcceptance\"\r\n                          type=\"checkbox\"\r\n                          required=\"\"\r\n                          aria-label=\"termsAndConditionsAcceptance\"\r\n                          data-required=\"Bạn cần chấp thuận điều kiện & điều khoản bảo hành trước khi đăng ký sản phẩm.\"\r\n                          data-value-check=\"Yes\"\r\n                          data-value-uncheck=\"No\"\r\n                        />\r\n                        <div class=\"label-offset\">\r\n                          <label\r\n                            class=\"tncbox\"\r\n                            for=\"termsAndConditionsAcceptance\"\r\n                            data-consent-label=\"\"\r\n                          >\r\n                            <p>\r\n                              Tôi đồng ý về\r\n                              <a\r\n                                href=\"/ho-tro/dieu-khoan-va-dieu-kien-bao-hanh-chung/\"\r\n                                >Điều khoản và Điều kiện bảo hành.</a\r\n                              >\r\n                            </p>\r\n                          </label>\r\n                        </div>\r\n                        <div class=\"form-validate-error\"></div>\r\n                      </fieldset>\r\n                    </div>\r\n                    <div class=\"row submit-reset\">\r\n                      <fieldset class=\"col-12 col-md-2\">\r\n                        <button\r\n                          class=\"button primary highlight-secondary-color\"\r\n                          type=\"button\"\r\n                          name=\"Register\"\r\n                          value=\"Register\"\r\n                          data-register=\"Vào sổ\"\r\n                          data-loading=\"Tải...\"\r\n                          onclick=\"return validateForm();\"\r\n                        >\r\n                          Hoàn Tất Đăng Ký\r\n                        </button>\r\n                      </fieldset>\r\n                    </div>\r\n                    <input type=\"hidden\" name=\"Country\" value=\"Vietnam\" />\r\n                    <input type=\"hidden\" name=\"CountryHeader\" value=\"VNM\" />\r\n                    <input type=\"hidden\" name=\"Language\" value=\"vi-VN\" />\r\n                    <input\r\n                      type=\"hidden\"\r\n                      name=\"RedirectLink\"\r\n                      value=\"/ho-tro/dang-ky-bao-hanh/thanh-cong/\"\r\n                    />\r\n                  </form>', '.cshtml', 'Views/Shared/Templates/electrolux/Widgets', 'Register_Form', 'Widgets', '{}', NULL, '', NULL, 2, 'electrolux', 'superadmin', '2020-12-07 06:23:10', 'superadmin', '2020-12-09 05:19:17', 0, 'Published');

-- --------------------------------------------------------

--
-- Table structure for table `mix_theme`
--

CREATE TABLE `mix_theme` (
  `Id` int(11) NOT NULL,
  `Thumbnail` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Image` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Title` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Name` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `PreviewUrl` varchar(450) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedDateTime` datetime NOT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `Priority` int(11) NOT NULL,
  `Status` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mix_theme`
--

INSERT INTO `mix_theme` (`Id`, `Thumbnail`, `Image`, `Title`, `Name`, `PreviewUrl`, `CreatedBy`, `CreatedDateTime`, `ModifiedBy`, `LastModified`, `Priority`, `Status`) VALUES
(2, NULL, NULL, 'Electrolux', 'electrolux', NULL, 'superadmin', '2020-12-05 03:51:08', NULL, NULL, 1, 'Published');

-- --------------------------------------------------------

--
-- Table structure for table `mix_url_alias`
--

CREATE TABLE `mix_url_alias` (
  `Id` int(11) NOT NULL,
  `Specificulture` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `SourceId` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Type` int(11) NOT NULL,
  `Description` varchar(4000) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Alias` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedDateTime` datetime NOT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `Priority` int(11) NOT NULL,
  `Status` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `refreshtokens`
--

CREATE TABLE `refreshtokens` (
  `Id` varchar(50) CHARACTER SET utf8 NOT NULL,
  `ClientId` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Email` varchar(250) CHARACTER SET utf8 NOT NULL,
  `Username` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `ExpiresUtc` datetime(6) NOT NULL,
  `IssuedUtc` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `refreshtokens`
--

INSERT INTO `refreshtokens` (`Id`, `ClientId`, `Email`, `Username`, `ExpiresUtc`, `IssuedUtc`) VALUES
('6a060f57-d92b-46d9-8095-df48f467c784', 'mix-core', 'nhathoang989@gmail.com', NULL, '2020-12-09 14:38:16.076545', '2020-12-09 12:38:16.076545');

-- --------------------------------------------------------

--
-- Table structure for table `__efmigrationshistory`
--

CREATE TABLE `__efmigrationshistory` (
  `MigrationId` varchar(95) NOT NULL,
  `ProductVersion` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `__efmigrationshistory`
--

INSERT INTO `__efmigrationshistory` (`MigrationId`, `ProductVersion`) VALUES
('20181119151731_init', '3.1.3'),
('20200312035845_Init', '3.1.3'),
('20200915195051_Init_MySql_Cms', '3.1.3'),
('20201007055738_add_post_type_page_module', '3.1.3'),
('20201103052726_Add_Field_Configurations', '3.1.3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aspnetroleclaims`
--
ALTER TABLE `aspnetroleclaims`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_AspNetRoleClaims_RoleId` (`RoleId`);

--
-- Indexes for table `aspnetroles`
--
ALTER TABLE `aspnetroles`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `RoleNameIndex` (`NormalizedName`);

--
-- Indexes for table `aspnetuserclaims`
--
ALTER TABLE `aspnetuserclaims`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_AspNetUserClaims_ApplicationUserId` (`ApplicationUserId`),
  ADD KEY `IX_AspNetUserClaims_UserId` (`UserId`);

--
-- Indexes for table `aspnetuserlogins`
--
ALTER TABLE `aspnetuserlogins`
  ADD PRIMARY KEY (`LoginProvider`,`ProviderKey`),
  ADD KEY `IX_AspNetUserLogins_ApplicationUserId` (`ApplicationUserId`),
  ADD KEY `IX_AspNetUserLogins_UserId` (`UserId`);

--
-- Indexes for table `aspnetuserroles`
--
ALTER TABLE `aspnetuserroles`
  ADD PRIMARY KEY (`UserId`,`RoleId`),
  ADD KEY `IX_AspNetUserRoles_ApplicationUserId` (`ApplicationUserId`),
  ADD KEY `IX_AspNetUserRoles_RoleId` (`RoleId`);

--
-- Indexes for table `aspnetusers`
--
ALTER TABLE `aspnetusers`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UserNameIndex` (`NormalizedUserName`),
  ADD KEY `EmailIndex` (`NormalizedEmail`);

--
-- Indexes for table `aspnetusertokens`
--
ALTER TABLE `aspnetusertokens`
  ADD PRIMARY KEY (`UserId`,`LoginProvider`,`Name`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `mix_attribute_field`
--
ALTER TABLE `mix_attribute_field`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_mix_attribute_field_AttributeSetId` (`AttributeSetId`),
  ADD KEY `IX_mix_attribute_field_ReferenceId` (`ReferenceId`);

--
-- Indexes for table `mix_attribute_set`
--
ALTER TABLE `mix_attribute_set`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `mix_attribute_set_data`
--
ALTER TABLE `mix_attribute_set_data`
  ADD PRIMARY KEY (`Id`,`Specificulture`),
  ADD KEY `IX_mix_attribute_set_data_AttributeSetId` (`AttributeSetId`);

--
-- Indexes for table `mix_attribute_set_reference`
--
ALTER TABLE `mix_attribute_set_reference`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_mix_attribute_set_reference_AttributeSetId` (`AttributeSetId`);

--
-- Indexes for table `mix_attribute_set_value`
--
ALTER TABLE `mix_attribute_set_value`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_mix_attribute_set_value_DataId` (`DataId`);

--
-- Indexes for table `mix_cache`
--
ALTER TABLE `mix_cache`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Index_ExpiresAtTime` (`ExpiredDateTime`);

--
-- Indexes for table `mix_cms_user`
--
ALTER TABLE `mix_cms_user`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `mix_configuration`
--
ALTER TABLE `mix_configuration`
  ADD PRIMARY KEY (`Id`,`Specificulture`),
  ADD KEY `IX_mix_configuration_Specificulture` (`Specificulture`);

--
-- Indexes for table `mix_culture`
--
ALTER TABLE `mix_culture`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `AK_mix_culture_Specificulture` (`Specificulture`),
  ADD UNIQUE KEY `IX_Mix_Culture` (`Specificulture`);

--
-- Indexes for table `mix_file`
--
ALTER TABLE `mix_file`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_mix_file_ThemeId` (`ThemeId`);

--
-- Indexes for table `mix_language`
--
ALTER TABLE `mix_language`
  ADD PRIMARY KEY (`Id`,`Specificulture`),
  ADD KEY `IX_mix_language_Specificulture` (`Specificulture`);

--
-- Indexes for table `mix_media`
--
ALTER TABLE `mix_media`
  ADD PRIMARY KEY (`Id`,`Specificulture`);

--
-- Indexes for table `mix_messenger_hub_room`
--
ALTER TABLE `mix_messenger_hub_room`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `mix_messenger_message`
--
ALTER TABLE `mix_messenger_message`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_messenger_message_RoomId` (`RoomId`),
  ADD KEY `IX_messenger_message_TeamId` (`TeamId`),
  ADD KEY `IX_messenger_message_UserId` (`UserId`);

--
-- Indexes for table `mix_messenger_nav_room_user`
--
ALTER TABLE `mix_messenger_nav_room_user`
  ADD PRIMARY KEY (`RoomId`,`UserId`),
  ADD KEY `IX_messenger_nav_room_user_UserId` (`UserId`);

--
-- Indexes for table `mix_messenger_nav_team_user`
--
ALTER TABLE `mix_messenger_nav_team_user`
  ADD PRIMARY KEY (`TeamId`,`UserId`),
  ADD KEY `IX_messenger_nav_team_user_UserId` (`UserId`);

--
-- Indexes for table `mix_messenger_team`
--
ALTER TABLE `mix_messenger_team`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `mix_messenger_user`
--
ALTER TABLE `mix_messenger_user`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `mix_messenger_user_device`
--
ALTER TABLE `mix_messenger_user_device`
  ADD PRIMARY KEY (`UserId`,`DeviceId`);

--
-- Indexes for table `mix_module`
--
ALTER TABLE `mix_module`
  ADD PRIMARY KEY (`Id`,`Specificulture`),
  ADD KEY `IX_mix_module_Specificulture` (`Specificulture`);

--
-- Indexes for table `mix_module_data`
--
ALTER TABLE `mix_module_data`
  ADD PRIMARY KEY (`Id`,`Specificulture`),
  ADD KEY `IX_mix_module_data_ModuleId_Specificulture` (`ModuleId`,`Specificulture`),
  ADD KEY `IX_mix_module_data_PageId_Specificulture` (`PageId`,`Specificulture`),
  ADD KEY `IX_mix_module_data_PostId_Specificulture` (`PostId`,`Specificulture`),
  ADD KEY `IX_mix_module_data_ModuleId_PageId_Specificulture` (`ModuleId`,`PageId`,`Specificulture`);

--
-- Indexes for table `mix_module_post`
--
ALTER TABLE `mix_module_post`
  ADD PRIMARY KEY (`Id`,`Specificulture`),
  ADD KEY `IX_mix_module_post_ModuleId_Specificulture` (`ModuleId`,`Specificulture`),
  ADD KEY `IX_mix_module_post_PostId_Specificulture` (`PostId`,`Specificulture`);

--
-- Indexes for table `mix_page`
--
ALTER TABLE `mix_page`
  ADD PRIMARY KEY (`Id`,`Specificulture`),
  ADD KEY `IX_mix_page_Specificulture` (`Specificulture`);

--
-- Indexes for table `mix_page_module`
--
ALTER TABLE `mix_page_module`
  ADD PRIMARY KEY (`Id`,`Specificulture`),
  ADD KEY `IX_mix_page_module_ModuleId_Specificulture` (`ModuleId`,`Specificulture`),
  ADD KEY `IX_mix_page_module_PageId_Specificulture` (`PageId`,`Specificulture`);

--
-- Indexes for table `mix_page_post`
--
ALTER TABLE `mix_page_post`
  ADD PRIMARY KEY (`Id`,`Specificulture`),
  ADD KEY `IX_mix_page_post_PageId_Specificulture` (`PageId`,`Specificulture`),
  ADD KEY `IX_mix_page_post_PostId_Specificulture` (`PostId`,`Specificulture`);

--
-- Indexes for table `mix_portal_page`
--
ALTER TABLE `mix_portal_page`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `mix_portal_page_navigation`
--
ALTER TABLE `mix_portal_page_navigation`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `FK_mix_portal_page_navigation_mix_portal_page` (`PageId`),
  ADD KEY `IX_mix_portal_page_navigation_ParentId` (`ParentId`);

--
-- Indexes for table `mix_portal_page_role`
--
ALTER TABLE `mix_portal_page_role`
  ADD PRIMARY KEY (`RoleId`,`PageId`),
  ADD KEY `IX_mix_portal_page_role_PageId` (`PageId`);

--
-- Indexes for table `mix_post`
--
ALTER TABLE `mix_post`
  ADD PRIMARY KEY (`Id`,`Specificulture`),
  ADD KEY `IX_mix_post_Specificulture` (`Specificulture`);

--
-- Indexes for table `mix_post_media`
--
ALTER TABLE `mix_post_media`
  ADD PRIMARY KEY (`Id`,`Specificulture`),
  ADD KEY `IX_mix_post_media_MediaId_Specificulture` (`MediaId`,`Specificulture`),
  ADD KEY `IX_mix_post_media_PostId_Specificulture` (`PostId`,`Specificulture`);

--
-- Indexes for table `mix_post_module`
--
ALTER TABLE `mix_post_module`
  ADD PRIMARY KEY (`Id`,`Specificulture`),
  ADD KEY `IX_mix_post_module_ModuleId_Specificulture` (`ModuleId`,`Specificulture`),
  ADD KEY `IX_mix_post_module_PostId_Specificulture` (`PostId`,`Specificulture`);

--
-- Indexes for table `mix_related_attribute_data`
--
ALTER TABLE `mix_related_attribute_data`
  ADD PRIMARY KEY (`Id`,`Specificulture`);

--
-- Indexes for table `mix_related_attribute_set`
--
ALTER TABLE `mix_related_attribute_set`
  ADD PRIMARY KEY (`Id`,`Specificulture`);

--
-- Indexes for table `mix_related_data`
--
ALTER TABLE `mix_related_data`
  ADD PRIMARY KEY (`Id`,`Specificulture`);

--
-- Indexes for table `mix_related_post`
--
ALTER TABLE `mix_related_post`
  ADD PRIMARY KEY (`Id`,`Specificulture`),
  ADD KEY `IX_mix_related_post_DestinationId_Specificulture` (`DestinationId`,`Specificulture`),
  ADD KEY `IX_mix_related_post_SourceId_Specificulture` (`SourceId`,`Specificulture`);

--
-- Indexes for table `mix_template`
--
ALTER TABLE `mix_template`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_mix_template_file_TemplateId` (`ThemeId`);

--
-- Indexes for table `mix_theme`
--
ALTER TABLE `mix_theme`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `mix_url_alias`
--
ALTER TABLE `mix_url_alias`
  ADD PRIMARY KEY (`Id`,`Specificulture`),
  ADD KEY `IX_mix_url_alias_Specificulture` (`Specificulture`);

--
-- Indexes for table `refreshtokens`
--
ALTER TABLE `refreshtokens`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `__efmigrationshistory`
--
ALTER TABLE `__efmigrationshistory`
  ADD PRIMARY KEY (`MigrationId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mix_attribute_field`
--
ALTER TABLE `mix_attribute_field`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `mix_attribute_set`
--
ALTER TABLE `mix_attribute_set`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `mix_attribute_set_reference`
--
ALTER TABLE `mix_attribute_set_reference`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mix_culture`
--
ALTER TABLE `mix_culture`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `mix_file`
--
ALTER TABLE `mix_file`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mix_portal_page`
--
ALTER TABLE `mix_portal_page`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mix_portal_page_navigation`
--
ALTER TABLE `mix_portal_page_navigation`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mix_template`
--
ALTER TABLE `mix_template`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `mix_theme`
--
ALTER TABLE `mix_theme`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `aspnetroleclaims`
--
ALTER TABLE `aspnetroleclaims`
  ADD CONSTRAINT `FK_AspNetRoleClaims_AspNetRoles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `aspnetroles` (`Id`) ON DELETE CASCADE;

--
-- Constraints for table `aspnetuserclaims`
--
ALTER TABLE `aspnetuserclaims`
  ADD CONSTRAINT `FK_AspNetUserClaims_AspNetUsers_ApplicationUserId` FOREIGN KEY (`ApplicationUserId`) REFERENCES `aspnetusers` (`Id`),
  ADD CONSTRAINT `FK_AspNetUserClaims_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE;

--
-- Constraints for table `aspnetuserlogins`
--
ALTER TABLE `aspnetuserlogins`
  ADD CONSTRAINT `FK_AspNetUserLogins_AspNetUsers_ApplicationUserId` FOREIGN KEY (`ApplicationUserId`) REFERENCES `aspnetusers` (`Id`),
  ADD CONSTRAINT `FK_AspNetUserLogins_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE;

--
-- Constraints for table `aspnetuserroles`
--
ALTER TABLE `aspnetuserroles`
  ADD CONSTRAINT `FK_AspNetUserRoles_AspNetRoles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `aspnetroles` (`Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_AspNetUserRoles_AspNetUsers_ApplicationUserId` FOREIGN KEY (`ApplicationUserId`) REFERENCES `aspnetusers` (`Id`),
  ADD CONSTRAINT `FK_AspNetUserRoles_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE;

--
-- Constraints for table `aspnetusertokens`
--
ALTER TABLE `aspnetusertokens`
  ADD CONSTRAINT `FK_AspNetUserTokens_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE;

--
-- Constraints for table `mix_attribute_field`
--
ALTER TABLE `mix_attribute_field`
  ADD CONSTRAINT `FK_mix_attribute_field_mix_attribute_set` FOREIGN KEY (`AttributeSetId`) REFERENCES `mix_attribute_set` (`Id`),
  ADD CONSTRAINT `FK_mix_attribute_field_mix_attribute_set1` FOREIGN KEY (`ReferenceId`) REFERENCES `mix_attribute_set` (`Id`);

--
-- Constraints for table `mix_attribute_set_data`
--
ALTER TABLE `mix_attribute_set_data`
  ADD CONSTRAINT `FK_mix_attribute_set_data_mix_attribute_set` FOREIGN KEY (`AttributeSetId`) REFERENCES `mix_attribute_set` (`Id`);

--
-- Constraints for table `mix_attribute_set_reference`
--
ALTER TABLE `mix_attribute_set_reference`
  ADD CONSTRAINT `FK_mix_attribute_set_reference_mix_attribute_set` FOREIGN KEY (`AttributeSetId`) REFERENCES `mix_attribute_set` (`Id`);

--
-- Constraints for table `mix_configuration`
--
ALTER TABLE `mix_configuration`
  ADD CONSTRAINT `FK_Mix_Configuration_Mix_Culture` FOREIGN KEY (`Specificulture`) REFERENCES `mix_culture` (`Specificulture`) ON DELETE CASCADE;

--
-- Constraints for table `mix_file`
--
ALTER TABLE `mix_file`
  ADD CONSTRAINT `FK_mix_file_mix_template` FOREIGN KEY (`ThemeId`) REFERENCES `mix_theme` (`Id`);

--
-- Constraints for table `mix_language`
--
ALTER TABLE `mix_language`
  ADD CONSTRAINT `FK_Mix_Language_Mix_Culture` FOREIGN KEY (`Specificulture`) REFERENCES `mix_culture` (`Specificulture`) ON DELETE CASCADE;

--
-- Constraints for table `mix_messenger_message`
--
ALTER TABLE `mix_messenger_message`
  ADD CONSTRAINT `FK_messenger_message_messenger_hub_room` FOREIGN KEY (`RoomId`) REFERENCES `mix_messenger_hub_room` (`Id`),
  ADD CONSTRAINT `FK_messenger_message_messenger_team` FOREIGN KEY (`TeamId`) REFERENCES `mix_messenger_team` (`Id`),
  ADD CONSTRAINT `FK_messenger_message_messenger_user` FOREIGN KEY (`UserId`) REFERENCES `mix_messenger_user` (`Id`);

--
-- Constraints for table `mix_messenger_nav_room_user`
--
ALTER TABLE `mix_messenger_nav_room_user`
  ADD CONSTRAINT `FK_messenger_nav_room_user_messenger_hub_room` FOREIGN KEY (`RoomId`) REFERENCES `mix_messenger_hub_room` (`Id`),
  ADD CONSTRAINT `FK_messenger_nav_room_user_messenger_user` FOREIGN KEY (`UserId`) REFERENCES `mix_messenger_user` (`Id`);

--
-- Constraints for table `mix_messenger_nav_team_user`
--
ALTER TABLE `mix_messenger_nav_team_user`
  ADD CONSTRAINT `FK_messenger_nav_team_user_messenger_team` FOREIGN KEY (`TeamId`) REFERENCES `mix_messenger_team` (`Id`),
  ADD CONSTRAINT `FK_messenger_nav_team_user_messenger_user` FOREIGN KEY (`UserId`) REFERENCES `mix_messenger_user` (`Id`);

--
-- Constraints for table `mix_module`
--
ALTER TABLE `mix_module`
  ADD CONSTRAINT `FK_Mix_Module_Mix_Culture` FOREIGN KEY (`Specificulture`) REFERENCES `mix_culture` (`Specificulture`) ON DELETE CASCADE;

--
-- Constraints for table `mix_module_data`
--
ALTER TABLE `mix_module_data`
  ADD CONSTRAINT `FK_Mix_Module_Data_Mix_Module` FOREIGN KEY (`ModuleId`,`Specificulture`) REFERENCES `mix_module` (`Id`, `Specificulture`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_mix_module_data_mix_page` FOREIGN KEY (`PageId`,`Specificulture`) REFERENCES `mix_page` (`Id`, `Specificulture`),
  ADD CONSTRAINT `FK_mix_module_data_mix_post` FOREIGN KEY (`PostId`,`Specificulture`) REFERENCES `mix_post` (`Id`, `Specificulture`);

--
-- Constraints for table `mix_module_post`
--
ALTER TABLE `mix_module_post`
  ADD CONSTRAINT `FK_Mix_Module_Post_Mix_Module` FOREIGN KEY (`ModuleId`,`Specificulture`) REFERENCES `mix_module` (`Id`, `Specificulture`),
  ADD CONSTRAINT `FK_Mix_Module_Post_Mix_Post` FOREIGN KEY (`PostId`,`Specificulture`) REFERENCES `mix_post` (`Id`, `Specificulture`);

--
-- Constraints for table `mix_page`
--
ALTER TABLE `mix_page`
  ADD CONSTRAINT `FK_Mix_Page_Mix_Culture` FOREIGN KEY (`Specificulture`) REFERENCES `mix_culture` (`Specificulture`);

--
-- Constraints for table `mix_page_module`
--
ALTER TABLE `mix_page_module`
  ADD CONSTRAINT `FK_Mix_Menu_Module_Mix_Module1` FOREIGN KEY (`ModuleId`,`Specificulture`) REFERENCES `mix_module` (`Id`, `Specificulture`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_Mix_Page_Module_Mix_Page` FOREIGN KEY (`PageId`,`Specificulture`) REFERENCES `mix_page` (`Id`, `Specificulture`);

--
-- Constraints for table `mix_page_post`
--
ALTER TABLE `mix_page_post`
  ADD CONSTRAINT `FK_Mix_Page_Post_Mix_Page` FOREIGN KEY (`PageId`,`Specificulture`) REFERENCES `mix_page` (`Id`, `Specificulture`),
  ADD CONSTRAINT `FK_Mix_Page_Post_Mix_Post` FOREIGN KEY (`PostId`,`Specificulture`) REFERENCES `mix_post` (`Id`, `Specificulture`);

--
-- Constraints for table `mix_portal_page_navigation`
--
ALTER TABLE `mix_portal_page_navigation`
  ADD CONSTRAINT `FK_mix_portal_page_navigation_mix_portal_page` FOREIGN KEY (`PageId`) REFERENCES `mix_portal_page` (`Id`),
  ADD CONSTRAINT `FK_mix_portal_page_navigation_mix_portal_page1` FOREIGN KEY (`ParentId`) REFERENCES `mix_portal_page` (`Id`);

--
-- Constraints for table `mix_portal_page_role`
--
ALTER TABLE `mix_portal_page_role`
  ADD CONSTRAINT `FK_mix_portal_page_role_mix_portal_page` FOREIGN KEY (`PageId`) REFERENCES `mix_portal_page` (`Id`) ON DELETE CASCADE;

--
-- Constraints for table `mix_post`
--
ALTER TABLE `mix_post`
  ADD CONSTRAINT `FK_Mix_Post_Mix_Culture` FOREIGN KEY (`Specificulture`) REFERENCES `mix_culture` (`Specificulture`);

--
-- Constraints for table `mix_post_media`
--
ALTER TABLE `mix_post_media`
  ADD CONSTRAINT `FK_mix_post_media_mix_media` FOREIGN KEY (`MediaId`,`Specificulture`) REFERENCES `mix_media` (`Id`, `Specificulture`),
  ADD CONSTRAINT `FK_mix_post_media_mix_post` FOREIGN KEY (`PostId`,`Specificulture`) REFERENCES `mix_post` (`Id`, `Specificulture`);

--
-- Constraints for table `mix_post_module`
--
ALTER TABLE `mix_post_module`
  ADD CONSTRAINT `FK_Mix_Post_Module_Mix_Module1` FOREIGN KEY (`ModuleId`,`Specificulture`) REFERENCES `mix_module` (`Id`, `Specificulture`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_Mix_Post_Module_Mix_Post` FOREIGN KEY (`PostId`,`Specificulture`) REFERENCES `mix_post` (`Id`, `Specificulture`);

--
-- Constraints for table `mix_related_attribute_set`
--
ALTER TABLE `mix_related_attribute_set`
  ADD CONSTRAINT `FK_mix_related_attribute_set_mix_attribute_set` FOREIGN KEY (`Id`) REFERENCES `mix_attribute_set` (`Id`);

--
-- Constraints for table `mix_related_post`
--
ALTER TABLE `mix_related_post`
  ADD CONSTRAINT `FK_mix_related_post_mix_post` FOREIGN KEY (`SourceId`,`Specificulture`) REFERENCES `mix_post` (`Id`, `Specificulture`),
  ADD CONSTRAINT `FK_mix_related_post_mix_post1` FOREIGN KEY (`DestinationId`,`Specificulture`) REFERENCES `mix_post` (`Id`, `Specificulture`);

--
-- Constraints for table `mix_template`
--
ALTER TABLE `mix_template`
  ADD CONSTRAINT `FK_mix_template_mix_theme` FOREIGN KEY (`ThemeId`) REFERENCES `mix_theme` (`Id`);

--
-- Constraints for table `mix_url_alias`
--
ALTER TABLE `mix_url_alias`
  ADD CONSTRAINT `FK_Mix_Url_Alias_Mix_Culture` FOREIGN KEY (`Specificulture`) REFERENCES `mix_culture` (`Specificulture`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
