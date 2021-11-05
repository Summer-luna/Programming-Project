-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 13, 2019 at 12:39 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `id11304588_amazonia`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `username` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `userpass` char(60) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`username`, `userpass`) VALUES('guest', '$2y$10$9SdN6fl5.1cNjPemgFpbT.e.ReKvihWVmIyJHHYz8kuR5RRe3vvmi');

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `author_id` int(11) NOT NULL,
  `author_first` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `author_last` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`author_id`, `author_first`, `author_last`) VALUES(2, 'Chris', 'Date');
INSERT INTO `author` (`author_id`, `author_first`, `author_last`) VALUES(3, 'Mercer', 'Mayer');
INSERT INTO `author` (`author_id`, `author_first`, `author_last`) VALUES(4, 'Don', 'Perrin');
INSERT INTO `author` (`author_id`, `author_first`, `author_last`) VALUES(5, 'Gina', 'Mayer');
INSERT INTO `author` (`author_id`, `author_first`, `author_last`) VALUES(6, 'Isaac', 'Asimov');
INSERT INTO `author` (`author_id`, `author_first`, `author_last`) VALUES(7, 'Paul', 'Jennings');
INSERT INTO `author` (`author_id`, `author_first`, `author_last`) VALUES(8, 'Margaret', 'Weis');
INSERT INTO `author` (`author_id`, `author_first`, `author_last`) VALUES(9, 'Marion Zimmer', 'Bradley');
INSERT INTO `author` (`author_id`, `author_first`, `author_last`) VALUES(10, 'Ramesh', 'Elmasri');
INSERT INTO `author` (`author_id`, `author_first`, `author_last`) VALUES(11, 'Shamkant', 'Navathe');
INSERT INTO `author` (`author_id`, `author_first`, `author_last`) VALUES(12, 'Stephen', 'King');
INSERT INTO `author` (`author_id`, `author_first`, `author_last`) VALUES(13, 'Tracy', 'Hickman');
INSERT INTO `author` (`author_id`, `author_first`, `author_last`) VALUES(14, 'David', 'Drake');
INSERT INTO `author` (`author_id`, `author_first`, `author_last`) VALUES(15, 'Bill', 'Fawcett');
INSERT INTO `author` (`author_id`, `author_first`, `author_last`) VALUES(16, 'Larry', 'Niven');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `isbn` int(11) NOT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `listprice` decimal(10,2) NOT NULL,
  `discount` decimal(10,2) NOT NULL,
  `category_code` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `publisher` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`isbn`, `title`, `listprice`, `discount`, `category_code`, `publisher`) VALUES(1, 'Fundamentals of Database Systems', 39.99, 0.00, 'CMP', 1);
INSERT INTO `book` (`isbn`, `title`, `listprice`, `discount`, `category_code`, `publisher`) VALUES(2, 'An Introduction to Database Systems', 59.99, 0.05, 'CMP', 2);
INSERT INTO `book` (`isbn`, `title`, `listprice`, `discount`, `category_code`, `publisher`) VALUES(3, 'Isaac Asimov\'s Greatest Hits', 5.99, 0.10, 'SFF', 1);
INSERT INTO `book` (`isbn`, `title`, `listprice`, `discount`, `category_code`, `publisher`) VALUES(4, 'The Best of Marion Zimmer Bradley', 13.45, 0.05, 'SFF', 2);
INSERT INTO `book` (`isbn`, `title`, `listprice`, `discount`, `category_code`, `publisher`) VALUES(5, 'Rascal the Dragon', 5.99, 0.10, 'FIC', 3);
INSERT INTO `book` (`isbn`, `title`, `listprice`, `discount`, `category_code`, `publisher`) VALUES(6, 'Just a School Project', 5.99, 0.10, 'FIC', 4);
INSERT INTO `book` (`isbn`, `title`, `listprice`, `discount`, `category_code`, `publisher`) VALUES(7, 'The Plant', 2.99, 0.00, 'HOR', 3);
INSERT INTO `book` (`isbn`, `title`, `listprice`, `discount`, `category_code`, `publisher`) VALUES(8, 'The Gunslinger', 5.99, 0.10, 'SFF', 3);
INSERT INTO `book` (`isbn`, `title`, `listprice`, `discount`, `category_code`, `publisher`) VALUES(9, 'Dragons of Autumn Twilight', 4.99, 0.05, 'SFF', 2);
INSERT INTO `book` (`isbn`, `title`, `listprice`, `discount`, `category_code`, `publisher`) VALUES(10, 'Mag Force 7', 4.99, 0.50, 'SFF', 3);
INSERT INTO `book` (`isbn`, `title`, `listprice`, `discount`, `category_code`, `publisher`) VALUES(11, 'The Year\'s Best Science Fiction 2004', 12.00, 0.00, 'SFF', 2);

-- --------------------------------------------------------

--
-- Table structure for table `bookcat`
--

CREATE TABLE `bookcat` (
  `category_code` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `category_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bookcat`
--

INSERT INTO `bookcat` (`category_code`, `category_name`) VALUES('CMP', 'Computer');
INSERT INTO `bookcat` (`category_code`, `category_name`) VALUES('FIC', 'General Fiction');
INSERT INTO `bookcat` (`category_code`, `category_name`) VALUES('HOR', 'Horror');
INSERT INTO `bookcat` (`category_code`, `category_name`) VALUES('SFF', 'Science Fiction/Fantasy');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `custno` int(11) NOT NULL,
  `cust_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `custpassword` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`custno`, `cust_name`, `custpassword`, `address`, `email`) VALUES(1, 'Chicken Little', 'You need to create and encrypt this yourself', '123 Norfolk Avenue VA 30146', 'clittle@fantasylane.com');
INSERT INTO `customer` (`custno`, `cust_name`, `custpassword`, `address`, `email`) VALUES(2, 'Donald Duck', 'You need to create and encrypt this yourself', '3 Disney Avenue FL 12945', 'dduck@disney.com');
INSERT INTO `customer` (`custno`, `cust_name`, `custpassword`, `address`, `email`) VALUES(3, 'Prince Charming', 'You need to create and encrypt this yourself', '1 Castle Road CA 21004', 'prince@fairyland.org');
INSERT INTO `customer` (`custno`, `cust_name`, `custpassword`, `address`, `email`) VALUES(4, 'Teddy Bear', 'You need to create and encrypt this yourself', '21 Bringhamton Park WA 30185', 'tbear@cuteguy.com');
INSERT INTO `customer` (`custno`, `cust_name`, `custpassword`, `address`, `email`) VALUES(5, 'Tanya Degurechaff', 'You need to create and encrypt this yourself', 'On the front line', 'curseyoubeingx@empiremages.com');
INSERT INTO `customer` (`custno`, `cust_name`, `custpassword`, `address`, `email`) VALUES(6, 'Teddy Bear', 'You need to create and encrypt this yourself', '1 Care Bear Park AL 30185', 'carebear@evilinc.com');

-- --------------------------------------------------------

--
-- Table structure for table `custphone`
--

CREATE TABLE `custphone` (
  `custno` int(11) NOT NULL,
  `pnumber` char(10) COLLATE utf8_unicode_ci NOT NULL,
  `ptype` char(6) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `custphone`
--

INSERT INTO `custphone` (`custno`, `pnumber`, `ptype`) VALUES(1, '5768374627', 'fax');
INSERT INTO `custphone` (`custno`, `pnumber`, `ptype`) VALUES(2, '5768364517', 'hand');
INSERT INTO `custphone` (`custno`, `pnumber`, `ptype`) VALUES(1, '5795743623', 'home');
INSERT INTO `custphone` (`custno`, `pnumber`, `ptype`) VALUES(2, '5763638263', 'home');
INSERT INTO `custphone` (`custno`, `pnumber`, `ptype`) VALUES(3, '5765827361', 'home');
INSERT INTO `custphone` (`custno`, `pnumber`, `ptype`) VALUES(4, '5769374627', 'home');
INSERT INTO `custphone` (`custno`, `pnumber`, `ptype`) VALUES(3, '5796251732', 'office');
INSERT INTO `custphone` (`custno`, `pnumber`, `ptype`) VALUES(4, '5794758263', 'pager');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `empid` int(10) NOT NULL,
  `empname` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `emppassword` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `emptypecode` char(1) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`empid`, `empname`, `emppassword`, `emptypecode`) VALUES(1, 'Shalltear Bloodfallen', 'X', 'W');
INSERT INTO `employee` (`empid`, `empname`, `emppassword`, `emptypecode`) VALUES(2, 'Demiurge', 'X', 'W');
INSERT INTO `employee` (`empid`, `empname`, `emppassword`, `emptypecode`) VALUES(3, 'Momonga', 'X', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `emptype`
--

CREATE TABLE `emptype` (
  `emptypecode` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `emptypedesc` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `emptype`
--

INSERT INTO `emptype` (`emptypecode`, `emptypedesc`) VALUES('A', 'Administrator');
INSERT INTO `emptype` (`emptypecode`, `emptypedesc`) VALUES('W', 'Worker');

-- --------------------------------------------------------

--
-- Table structure for table `exchrate`
--

CREATE TABLE `exchrate` (
  `currencyname` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `currencycode` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `againstusd` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `exchrate`
--

INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Emirati dirham', 'AED', 3.673);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Afghan afghani', 'AFN', 50.42);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Albanian lek', 'ALL', 79.546);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Armenian dram', 'AMD', 303.93);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Netherlands Antillean guilder', 'ANG', 1.79);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Angolan kwanza', 'AOA', 75.023);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Argentine peso', 'ARS', 8);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Australian dollar', 'AUD', 1.2059);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Azerbaijani manat', 'AZN', 0.8219);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Bosnia and Herzegovina convertible mark', 'BAM', 1.3083);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Barbadian dollar', 'BBD', 2.02);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Bangladeshi taka', 'BDT', 68.554);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Bulgarian lev', 'BGN', 1.3171);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Bahraini dinar', 'BHD', 0.376);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Burundi franc', 'BIF', 1198);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Bermudian dollar', 'BMD', 1);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Bruneian dollar', 'BND', 1.4322);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Bolivian boliviano', 'BOB', 7.253);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Brazilian real', 'BRL', 1.8644);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Bahamian dollar', 'BSD', 1);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Botswana pula', 'BWP', 6.7907);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Belarusian ruble', 'BYR', 2130);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Belizean dollar', 'BZD', 2);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Canadian dollar', 'CAD', 1.0364);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Congolese franc', 'CDF', 459.175);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Swiss franc', 'CHF', 1.0774);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Chilean peso', 'CLP', 509.02);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Renminbi', 'CNY', 6.9385);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Colombian peso', 'COP', 2302.9);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Costa Rican colon', 'CRC', 529.62);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Cuban peso', 'CUP', 0.9259);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Cape Verdean escudo', 'CVE', 73.84);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Czech koruna', 'CZK', 17.037);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Djiboutian franc', 'DJF', 179.14);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Danish krone', 'DKK', 5.0236);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Dominican peso', 'DOP', 34.775);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Algerian dinar', 'DZD', 63.25);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Estonian kroon', 'EEK', 10.537);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Egyptian pound', 'EGP', 5.4);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Eritrean nakfa', 'ERN', 15.38);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Ethiopian birr', 'ETB', 9.57);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Euro', 'EUR', 0.6734);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Fijian dollar', 'FJD', 1.5986);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Falkland Islands pound', 'FKP', 0.5302);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Pound sterling', 'GBP', 0.5302);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Georgian lari', 'GEL', 1.47);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Guernsey Pound', 'GGP', 0.5302);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Ghanaian cedi', 'GHS', 1.1);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Gibraltar pound', 'GIP', 0.5302);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Gambian dalasi', 'GMD', 22.75);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Guinean franc', 'GNF', 5500);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Guatemalan quetzal', 'GTQ', 7.5895);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Guyanese dollar', 'GYD', 203.86);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Hong Kong dollar', 'HKD', 7.8);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Honduran lempira', 'HNL', 18.983);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Croatian kuna', 'HRK', 4.877);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Haitian gourde', 'HTG', 39.216);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Hungarian forint', 'HUF', 165.89);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Indonesian rupiah', 'IDR', 9558.1);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('new Israeli shekel', 'ILS', 3.56);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Indian rupee', 'INR', 43.814);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Iraqi dinar', 'IQD', 1);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Iranian rial', 'IRR', 9);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Icelandic króna', 'ISK', 85.619);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Jersey pound', 'JEP', 0.5302);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Jamaican dollar', 'JMD', 72.236);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Jordanian dinar', 'JOD', 0.709);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Japanese yen', 'JPY', 103.58);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Kenyan shilling', 'KES', 68.358);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Kyrgyzstani som', 'KGS', 36.108);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Cambodian riel', 'KHR', 4070.94);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Comorian franc', 'KOF', 337.26);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('North Korean won', 'KPW', 3400);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('South Korean won', 'KRW', 1101.7);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Kuwaiti dinar', 'KWD', 0.2679);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Caymanian dollar', 'KYD', 0.8333);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Kazakh tenge', 'KZT', 120.25);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Lao kip', 'LAK', 8760.69);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Lebanese pound', 'LBP', 1507.5);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Sri Lankan rupee', 'LKR', 108.14);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Liberian dollar', 'LRD', 63.31);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Lithuanian litas', 'LTL', 2.3251);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Libyan dinar', 'LYD', 1.2112);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Moroccan dirham', 'MAD', 7.526);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Moldovan leu', 'MDL', 10.326);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Malagasy ariary', 'MGA', 1654.78);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Macedonian denar', 'MKD', 41.414);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Myanma kyat', 'MMF', 1);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Mongolian tugrug', 'MNT', 1165.92);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Macau pataca', 'MOP', 8.16567);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Maldivian rufiyaa', 'MVR', 12.954);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Malawian kwacha', 'MWK', 142.41);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Mexican peso', 'MXN', 11.016);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Malaysian ringgit', 'MYR', 3.33);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Mozambique metical', 'MZN', 24.125);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Namibian dollar', 'NAD', 7.75);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Nigerian naira', 'NGN', 117.8);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Nicaraguan córdoba', 'NIO', 19.374);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Norwegian krone', 'NOK', 5.2338);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('New Zealand dollar', 'NZD', 1.4151);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Omani rial', 'OMR', 0.3845);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Peruvian nuevo sol', 'PEN', 2.9322);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Papua New Guinean kina', 'PGK', 2.6956);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Philippine peso', 'PHP', 44.439);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Pakistani rupee', 'PKR', 70.64);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Polish zloty', 'PLN', 2.3);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Paraguayan guarani', 'PYG', 4337.7);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Qatari rial', 'QAR', 3.64);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Romanian leu', 'RON', 2.5);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Serbian dinar', 'RSD', 56.14);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Russian ruble', 'RUB', 24.3);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Rwandan franc', 'RWF', 550);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Saudi riyal', 'SAR', 3.75);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Solomon Islands dollar', 'SBD', 7.6336);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Seychellois rupee', 'SCR', 8);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Sudanese pound', 'SDG', 2.1);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Swedish krona', 'SEK', 6.4074);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Singapore dollar', 'SGD', 1.415);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Saint Helena pound', 'SHP', 0.5302);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Slovak koruna', 'SKK', 21.05);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Sierra Leonean leone', 'SLL', 3007.9);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Somali shilling', 'SOS', 1436);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Surinamese dollar', 'SRD', 2.78);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('São Tomé and Príncipe dobra', 'STD', 14900);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Syrian pound', 'SYP', 46.5281);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Thai baht', 'THB', 33.37);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Tajik somoni', 'TJS', 3.4563);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Turkmen manat', 'TMM', 14250);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Tunisian dinar', 'TND', 1.211);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Tongan pa\'anga', 'TOP', 2.0747);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Turkish lira', 'TRY', 1.3179);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Trinidad and Tobago dollar', 'TTD', 6.3228);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('New Taiwan dollar', 'TWD', 31.47);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Tanzanian shilling', 'TZS', 1178.1);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Ukrainian hryvnia', 'UAH', 4.9523);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Ugandan shilling', 'UGX', 1658.1);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('U.S. dollar', 'USD', 1);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Uruguayan peso', 'UYU', 20.438);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Uzbek som', 'UZS', 1);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Venezuelan bolívar fuerte', 'VEF', 2.147);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Vietnamese đồng', 'VND', 21189);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Vanuatuan vatu', 'VUV', 100.87);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('CFA franc', 'XAF', 438.77);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Change Franc Pacifique', 'XPF', 83.12);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Yemeni rial', 'YER', 199.76);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('South African rand', 'ZAR', 7.75);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Zambian kwacha', 'ZMK', 3512.9);
INSERT INTO `exchrate` (`currencyname`, `currencycode`, `againstusd`) VALUES('Zimbabwean dollar', 'ZWN', 361.9);

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `invoice_no` int(11) NOT NULL,
  `invoice_date` date NOT NULL,
  `custno` int(11) NOT NULL,
  `shippingaddress` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `billingaddress` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `finaldiscount` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`invoice_no`, `invoice_date`, `custno`, `shippingaddress`, `billingaddress`, `finaldiscount`) VALUES(1, '2018-01-03', 1, '123 Norfolk Avenue VA 30146', '123 Norfolk Avenue VA 30146', 0.00);
INSERT INTO `invoice` (`invoice_no`, `invoice_date`, `custno`, `shippingaddress`, `billingaddress`, `finaldiscount`) VALUES(2, '2018-02-03', 2, '3 Disney Avenue FL 12945', '3 Disney Avenue FL 12945', 0.00);
INSERT INTO `invoice` (`invoice_no`, `invoice_date`, `custno`, `shippingaddress`, `billingaddress`, `finaldiscount`) VALUES(3, '2018-03-03', 3, '1 Castle Road CA 21004', '1 Castle Road CA 21004', 0.00);
INSERT INTO `invoice` (`invoice_no`, `invoice_date`, `custno`, `shippingaddress`, `billingaddress`, `finaldiscount`) VALUES(4, '2018-04-03', 4, '21 Bringhamton Park WA 30185', '21 Bringhamton Park WA 30185', 0.00);
INSERT INTO `invoice` (`invoice_no`, `invoice_date`, `custno`, `shippingaddress`, `billingaddress`, `finaldiscount`) VALUES(5, '2018-05-03', 5, 'On the front line', 'On the front line', 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_item`
--

CREATE TABLE `invoice_item` (
  `invoice_no` int(11) NOT NULL,
  `isbn` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `saleprice` decimal(10,2) NOT NULL,
  `sortorder` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `invoice_item`
--

INSERT INTO `invoice_item` (`invoice_no`, `isbn`, `qty`, `saleprice`, `sortorder`) VALUES(1, 1, 1, 39.99, 1);
INSERT INTO `invoice_item` (`invoice_no`, `isbn`, `qty`, `saleprice`, `sortorder`) VALUES(1, 2, 1, 59.99, 2);
INSERT INTO `invoice_item` (`invoice_no`, `isbn`, `qty`, `saleprice`, `sortorder`) VALUES(2, 2, 1, 59.99, 1);
INSERT INTO `invoice_item` (`invoice_no`, `isbn`, `qty`, `saleprice`, `sortorder`) VALUES(2, 4, 1, 13.45, 2);
INSERT INTO `invoice_item` (`invoice_no`, `isbn`, `qty`, `saleprice`, `sortorder`) VALUES(3, 3, 1, 5.99, 1);
INSERT INTO `invoice_item` (`invoice_no`, `isbn`, `qty`, `saleprice`, `sortorder`) VALUES(3, 6, 1, 5.99, 2);
INSERT INTO `invoice_item` (`invoice_no`, `isbn`, `qty`, `saleprice`, `sortorder`) VALUES(4, 4, 1, 13.45, 1);
INSERT INTO `invoice_item` (`invoice_no`, `isbn`, `qty`, `saleprice`, `sortorder`) VALUES(4, 8, 1, 5.99, 2);
INSERT INTO `invoice_item` (`invoice_no`, `isbn`, `qty`, `saleprice`, `sortorder`) VALUES(5, 5, 1, 5.99, 1);
INSERT INTO `invoice_item` (`invoice_no`, `isbn`, `qty`, `saleprice`, `sortorder`) VALUES(5, 10, 1, 4.99, 2);

-- --------------------------------------------------------

--
-- Table structure for table `manifest`
--

CREATE TABLE `manifest` (
  `manifestno` int(11) NOT NULL,
  `empid` int(10) NOT NULL,
  `custno` int(11) NOT NULL,
  `shipaddress` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `shipdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `manifest`
--

INSERT INTO `manifest` (`manifestno`, `empid`, `custno`, `shipaddress`, `shipdate`) VALUES(1, 1, 1, '123 Norfolk Avenue VA 30146', '2018-04-04');
INSERT INTO `manifest` (`manifestno`, `empid`, `custno`, `shipaddress`, `shipdate`) VALUES(2, 1, 2, '3 Disney Avenue FL 12945', '2018-04-04');

-- --------------------------------------------------------

--
-- Table structure for table `manifestdetail`
--

CREATE TABLE `manifestdetail` (
  `manifestno` int(11) NOT NULL,
  `invoiceno` int(11) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `manifestorder` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `manifestdetail`
--

INSERT INTO `manifestdetail` (`manifestno`, `invoiceno`, `sortorder`, `manifestorder`) VALUES(1, 1, 1, 1);
INSERT INTO `manifestdetail` (`manifestno`, `invoiceno`, `sortorder`, `manifestorder`) VALUES(1, 1, 2, 2);
INSERT INTO `manifestdetail` (`manifestno`, `invoiceno`, `sortorder`, `manifestorder`) VALUES(2, 2, 1, 1);
INSERT INTO `manifestdetail` (`manifestno`, `invoiceno`, `sortorder`, `manifestorder`) VALUES(2, 2, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `phone_type`
--

CREATE TABLE `phone_type` (
  `phone_type` char(6) COLLATE utf8_unicode_ci NOT NULL,
  `typedesc` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `phone_type`
--

INSERT INTO `phone_type` (`phone_type`, `typedesc`) VALUES('fax', 'Fax number');
INSERT INTO `phone_type` (`phone_type`, `typedesc`) VALUES('hand', 'Handphone number');
INSERT INTO `phone_type` (`phone_type`, `typedesc`) VALUES('home', 'Home phone number');
INSERT INTO `phone_type` (`phone_type`, `typedesc`) VALUES('Office', 'Office phone number');
INSERT INTO `phone_type` (`phone_type`, `typedesc`) VALUES('pager', 'Pager number');

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `pubname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `pubaddress` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `pubno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`pubname`, `pubaddress`, `pubno`) VALUES('Benjamin Cummins', '39 Dixie Highway FL 11111', 1);
INSERT INTO `publisher` (`pubname`, `pubaddress`, `pubno`) VALUES('Addison-Wesley', '22 Peachtree Road', 2);
INSERT INTO `publisher` (`pubname`, `pubaddress`, `pubno`) VALUES('Bantam', '13 Avondale Avenue', 3);
INSERT INTO `publisher` (`pubname`, `pubaddress`, `pubno`) VALUES('ROC', '24 South Beach Road', 4);

-- --------------------------------------------------------

--
-- Table structure for table `storestats`
--

CREATE TABLE `storestats` (
  `storemonth` int(11) NOT NULL,
  `store` int(11) NOT NULL,
  `stattype` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `stat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `storestats`
--

INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(1, 1, 'Complaints', 0);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(1, 1, 'Drink', 86);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(1, 1, 'Food', 163);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(1, 2, 'Complaints', 6);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(1, 2, 'Drink', 131);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(1, 2, 'Food', 178);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(2, 1, 'Complaints', 0);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(2, 1, 'Drink', 104);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(2, 1, 'Food', 130);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(2, 2, 'Complaints', 5);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(2, 2, 'Drink', 84);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(2, 2, 'Food', 123);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(3, 1, 'Complaints', 1);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(3, 1, 'Drink', 99);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(3, 1, 'Food', 158);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(3, 2, 'Complaints', 2);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(3, 2, 'Drink', 60);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(3, 2, 'Food', 119);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(4, 1, 'Complaints', 2);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(4, 1, 'Drink', 109);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(4, 1, 'Food', 169);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(4, 2, 'Complaints', 2);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(4, 2, 'Drink', 116);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(4, 2, 'Food', 172);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(5, 1, 'Complaints', 4);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(5, 1, 'Drink', 93);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(5, 1, 'Food', 173);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(5, 2, 'Complaints', 5);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(5, 2, 'Drink', 113);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(5, 2, 'Food', 108);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(6, 1, 'Complaints', 2);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(6, 1, 'Drink', 90);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(6, 1, 'Food', 158);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(6, 2, 'Complaints', 3);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(6, 2, 'Drink', 143);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(6, 2, 'Food', 135);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(7, 1, 'Complaints', 4);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(7, 1, 'Drink', 99);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(7, 1, 'Food', 122);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(7, 2, 'Complaints', 8);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(7, 2, 'Drink', 73);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(7, 2, 'Food', 111);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(8, 1, 'Complaints', 1);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(8, 1, 'Drink', 80);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(8, 1, 'Food', 148);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(8, 2, 'Complaints', 2);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(8, 2, 'Drink', 145);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(8, 2, 'Food', 151);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(9, 1, 'Complaints', 4);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(9, 1, 'Drink', 95);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(9, 1, 'Food', 116);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(9, 2, 'Complaints', 5);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(9, 2, 'Drink', 91);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(9, 2, 'Food', 121);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(10, 1, 'Complaints', 2);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(10, 1, 'Drink', 102);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(10, 1, 'Food', 162);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(10, 2, 'Complaints', 3);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(10, 2, 'Drink', 147);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(10, 2, 'Food', 141);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(11, 1, 'Complaints', 3);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(11, 1, 'Drink', 90);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(11, 1, 'Food', 129);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(11, 2, 'Complaints', 5);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(11, 2, 'Drink', 105);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(11, 2, 'Food', 126);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(12, 1, 'Complaints', 3);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(12, 1, 'Drink', 94);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(12, 1, 'Food', 168);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(12, 2, 'Complaints', 2);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(12, 2, 'Drink', 117);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(12, 2, 'Food', 128);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(13, 1, 'Complaints', 1);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(13, 1, 'Drink', 81);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(13, 1, 'Food', 150);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(13, 2, 'Complaints', 5);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(13, 2, 'Drink', 87);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(13, 2, 'Food', 163);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(14, 1, 'Complaints', 2);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(14, 1, 'Drink', 84);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(14, 1, 'Food', 142);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(14, 2, 'Complaints', 3);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(14, 2, 'Drink', 89);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(14, 2, 'Food', 148);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(15, 1, 'Complaints', 1);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(15, 1, 'Drink', 105);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(15, 1, 'Food', 191);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(15, 2, 'Complaints', 10);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(15, 2, 'Drink', 76);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(15, 2, 'Food', 121);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(16, 1, 'Complaints', 0);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(16, 1, 'Drink', 106);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(16, 1, 'Food', 155);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(16, 2, 'Complaints', 1);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(16, 2, 'Drink', 182);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(16, 2, 'Food', 138);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(17, 1, 'Complaints', 1);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(17, 1, 'Drink', 118);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(17, 1, 'Food', 144);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(17, 2, 'Complaints', 2);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(17, 2, 'Drink', 96);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(17, 2, 'Food', 92);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(18, 1, 'Complaints', 4);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(18, 1, 'Drink', 96);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(18, 1, 'Food', 160);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(18, 2, 'Complaints', 2);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(18, 2, 'Drink', 117);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(18, 2, 'Food', 129);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(19, 1, 'Complaints', 4);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(19, 1, 'Drink', 93);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(19, 1, 'Food', 156);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(19, 2, 'Complaints', 0);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(19, 2, 'Drink', 109);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(19, 2, 'Food', 154);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(20, 1, 'Complaints', 3);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(20, 1, 'Drink', 99);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(20, 1, 'Food', 147);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(20, 2, 'Complaints', 3);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(20, 2, 'Drink', 124);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(20, 2, 'Food', 153);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(21, 1, 'Complaints', 1);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(21, 1, 'Drink', 92);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(21, 1, 'Food', 130);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(21, 2, 'Complaints', 3);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(21, 2, 'Drink', 151);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(21, 2, 'Food', 120);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(22, 1, 'Complaints', 2);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(22, 1, 'Drink', 79);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(22, 1, 'Food', 111);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(22, 2, 'Complaints', 3);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(22, 2, 'Drink', 151);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(22, 2, 'Food', 183);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(23, 1, 'Complaints', 4);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(23, 1, 'Drink', 94);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(23, 1, 'Food', 83);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(23, 2, 'Complaints', 8);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(23, 2, 'Drink', 163);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(23, 2, 'Food', 163);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(24, 1, 'Complaints', 1);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(24, 1, 'Drink', 101);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(24, 1, 'Food', 191);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(24, 2, 'Complaints', 6);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(24, 2, 'Drink', 128);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(24, 2, 'Food', 136);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(25, 1, 'Complaints', 0);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(25, 1, 'Drink', 87);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(25, 1, 'Food', 167);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(25, 2, 'Complaints', 2);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(25, 2, 'Drink', 48);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(25, 2, 'Food', 139);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(26, 1, 'Complaints', 3);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(26, 1, 'Drink', 106);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(26, 1, 'Food', 126);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(26, 2, 'Complaints', 3);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(26, 2, 'Drink', 180);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(26, 2, 'Food', 151);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(27, 1, 'Complaints', 2);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(27, 1, 'Drink', 94);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(27, 1, 'Food', 128);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(27, 2, 'Complaints', 6);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(27, 2, 'Drink', 85);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(27, 2, 'Food', 118);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(28, 1, 'Complaints', 2);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(28, 1, 'Drink', 93);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(28, 1, 'Food', 160);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(28, 2, 'Complaints', 4);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(28, 2, 'Drink', 124);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(28, 2, 'Food', 144);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(29, 1, 'Complaints', 2);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(29, 1, 'Drink', 105);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(29, 1, 'Food', 123);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(29, 2, 'Complaints', 7);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(29, 2, 'Drink', 147);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(29, 2, 'Food', 135);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(30, 1, 'Complaints', 2);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(30, 1, 'Drink', 98);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(30, 1, 'Food', 155);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(30, 2, 'Complaints', 4);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(30, 2, 'Drink', 138);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(30, 2, 'Food', 159);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(31, 1, 'Complaints', 2);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(31, 1, 'Drink', 105);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(31, 1, 'Food', 168);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(31, 2, 'Complaints', 2);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(31, 2, 'Drink', 105);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(31, 2, 'Food', 141);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(32, 1, 'Complaints', 2);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(32, 1, 'Drink', 113);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(32, 1, 'Food', 160);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(32, 2, 'Complaints', 5);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(32, 2, 'Drink', 122);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(32, 2, 'Food', 139);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(33, 1, 'Complaints', 1);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(33, 1, 'Drink', 94);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(33, 1, 'Food', 161);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(33, 2, 'Complaints', 3);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(33, 2, 'Drink', 107);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(33, 2, 'Food', 144);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(34, 1, 'Complaints', 1);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(34, 1, 'Drink', 95);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(34, 1, 'Food', 160);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(34, 2, 'Complaints', 5);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(34, 2, 'Drink', 101);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(34, 2, 'Food', 126);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(35, 1, 'Complaints', 4);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(35, 1, 'Drink', 114);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(35, 1, 'Food', 116);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(35, 2, 'Complaints', 4);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(35, 2, 'Drink', 148);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(35, 2, 'Food', 143);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(36, 1, 'Complaints', 1);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(36, 1, 'Drink', 78);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(36, 1, 'Food', 153);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(36, 2, 'Complaints', 0);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(36, 2, 'Drink', 35);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(36, 2, 'Food', 109);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(37, 1, 'Complaints', 0);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(37, 1, 'Drink', 101);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(37, 1, 'Food', 154);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(37, 2, 'Complaints', 3);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(37, 2, 'Drink', 133);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(37, 2, 'Food', 122);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(38, 1, 'Complaints', 1);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(38, 1, 'Drink', 92);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(38, 1, 'Food', 147);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(38, 2, 'Complaints', 3);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(38, 2, 'Drink', 110);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(38, 2, 'Food', 114);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(39, 1, 'Complaints', 2);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(39, 1, 'Drink', 98);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(39, 1, 'Food', 164);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(39, 2, 'Complaints', 2);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(39, 2, 'Drink', 125);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(39, 2, 'Food', 126);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(40, 1, 'Complaints', 1);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(40, 1, 'Drink', 106);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(40, 1, 'Food', 146);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(40, 2, 'Complaints', 5);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(40, 2, 'Drink', 36);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(40, 2, 'Food', 122);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(41, 1, 'Complaints', 3);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(41, 1, 'Drink', 100);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(41, 1, 'Food', 181);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(41, 2, 'Complaints', 2);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(41, 2, 'Drink', 138);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(41, 2, 'Food', 134);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(42, 1, 'Complaints', 4);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(42, 1, 'Drink', 98);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(42, 1, 'Food', 146);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(42, 2, 'Complaints', 3);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(42, 2, 'Drink', 107);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(42, 2, 'Food', 126);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(43, 1, 'Complaints', 1);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(43, 1, 'Drink', 96);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(43, 1, 'Food', 161);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(43, 2, 'Complaints', 2);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(43, 2, 'Drink', 138);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(43, 2, 'Food', 179);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(44, 1, 'Complaints', 0);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(44, 1, 'Drink', 88);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(44, 1, 'Food', 146);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(44, 2, 'Complaints', 3);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(44, 2, 'Drink', 143);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(44, 2, 'Food', 128);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(45, 1, 'Complaints', 0);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(45, 1, 'Drink', 104);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(45, 1, 'Food', 171);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(45, 2, 'Complaints', 4);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(45, 2, 'Drink', 151);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(45, 2, 'Food', 135);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(46, 1, 'Complaints', 2);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(46, 1, 'Drink', 91);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(46, 1, 'Food', 157);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(46, 2, 'Complaints', 4);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(46, 2, 'Drink', 166);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(46, 2, 'Food', 160);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(47, 1, 'Complaints', 6);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(47, 1, 'Drink', 117);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(47, 1, 'Food', 122);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(47, 2, 'Complaints', 8);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(47, 2, 'Drink', 119);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(47, 2, 'Food', 112);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(48, 1, 'Complaints', 4);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(48, 1, 'Drink', 101);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(48, 1, 'Food', 168);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(48, 2, 'Complaints', 9);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(48, 2, 'Drink', 110);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(48, 2, 'Food', 129);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(49, 1, 'Complaints', 5);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(49, 1, 'Drink', 95);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(49, 1, 'Food', 148);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(49, 2, 'Complaints', 8);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(49, 2, 'Drink', 60);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(49, 2, 'Food', 119);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(50, 1, 'Complaints', 1);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(50, 1, 'Drink', 104);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(50, 1, 'Food', 153);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(50, 2, 'Complaints', 8);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(50, 2, 'Drink', 87);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(50, 2, 'Food', 142);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(51, 1, 'Complaints', 3);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(51, 1, 'Drink', 96);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(51, 1, 'Food', 123);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(51, 2, 'Complaints', 3);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(51, 2, 'Drink', 104);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(51, 2, 'Food', 132);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(52, 1, 'Complaints', 3);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(52, 1, 'Drink', 115);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(52, 1, 'Food', 153);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(52, 2, 'Complaints', 0);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(52, 2, 'Drink', 118);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(52, 2, 'Food', 155);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(53, 1, 'Complaints', 6);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(53, 1, 'Drink', 97);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(53, 1, 'Food', 157);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(53, 2, 'Complaints', 3);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(53, 2, 'Drink', 100);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(53, 2, 'Food', 132);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(54, 1, 'Complaints', 0);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(54, 1, 'Drink', 109);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(54, 1, 'Food', 147);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(54, 2, 'Complaints', 3);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(54, 2, 'Drink', 124);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(54, 2, 'Food', 149);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(55, 1, 'Complaints', 2);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(55, 1, 'Drink', 99);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(55, 1, 'Food', 160);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(55, 2, 'Complaints', 4);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(55, 2, 'Drink', 138);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(55, 2, 'Food', 139);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(56, 1, 'Complaints', 2);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(56, 1, 'Drink', 98);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(56, 1, 'Food', 122);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(56, 2, 'Complaints', 4);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(56, 2, 'Drink', 83);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(56, 2, 'Food', 125);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(57, 1, 'Complaints', 4);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(57, 1, 'Drink', 93);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(57, 1, 'Food', 161);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(57, 2, 'Complaints', 8);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(57, 2, 'Drink', 82);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(57, 2, 'Food', 88);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(58, 1, 'Complaints', 1);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(58, 1, 'Drink', 92);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(58, 1, 'Food', 147);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(58, 2, 'Complaints', 2);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(58, 2, 'Drink', 65);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(58, 2, 'Food', 125);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(59, 1, 'Complaints', 2);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(59, 1, 'Drink', 110);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(59, 1, 'Food', 173);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(59, 2, 'Complaints', 6);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(59, 2, 'Drink', 75);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(59, 2, 'Food', 160);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(60, 1, 'Complaints', 0);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(60, 1, 'Drink', 103);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(60, 1, 'Food', 162);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(60, 2, 'Complaints', 2);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(60, 2, 'Drink', 82);
INSERT INTO `storestats` (`storemonth`, `store`, `stattype`, `stat`) VALUES(60, 2, 'Food', 136);

-- --------------------------------------------------------

--
-- Table structure for table `testtable`
--

CREATE TABLE `testtable` (
  `myid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `writes`
--

CREATE TABLE `writes` (
  `isbn` int(11) NOT NULL,
  `authororder` int(11) NOT NULL,
  `authorid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `writes`
--

INSERT INTO `writes` (`isbn`, `authororder`, `authorid`) VALUES(2, 1, 2);
INSERT INTO `writes` (`isbn`, `authororder`, `authorid`) VALUES(6, 2, 3);
INSERT INTO `writes` (`isbn`, `authororder`, `authorid`) VALUES(10, 2, 4);
INSERT INTO `writes` (`isbn`, `authororder`, `authorid`) VALUES(6, 1, 5);
INSERT INTO `writes` (`isbn`, `authororder`, `authorid`) VALUES(3, 1, 6);
INSERT INTO `writes` (`isbn`, `authororder`, `authorid`) VALUES(5, 1, 7);
INSERT INTO `writes` (`isbn`, `authororder`, `authorid`) VALUES(9, 1, 8);
INSERT INTO `writes` (`isbn`, `authororder`, `authorid`) VALUES(10, 1, 8);
INSERT INTO `writes` (`isbn`, `authororder`, `authorid`) VALUES(4, 1, 9);
INSERT INTO `writes` (`isbn`, `authororder`, `authorid`) VALUES(1, 1, 10);
INSERT INTO `writes` (`isbn`, `authororder`, `authorid`) VALUES(1, 2, 11);
INSERT INTO `writes` (`isbn`, `authororder`, `authorid`) VALUES(7, 1, 12);
INSERT INTO `writes` (`isbn`, `authororder`, `authorid`) VALUES(8, 1, 12);
INSERT INTO `writes` (`isbn`, `authororder`, `authorid`) VALUES(9, 2, 13);
INSERT INTO `writes` (`isbn`, `authororder`, `authorid`) VALUES(11, 3, 14);
INSERT INTO `writes` (`isbn`, `authororder`, `authorid`) VALUES(11, 1, 15);
INSERT INTO `writes` (`isbn`, `authororder`, `authorid`) VALUES(11, 2, 16);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`author_id`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`isbn`),
  ADD KEY `FK_bookcat` (`category_code`),
  ADD KEY `FK_pub` (`publisher`);

--
-- Indexes for table `bookcat`
--
ALTER TABLE `bookcat`
  ADD PRIMARY KEY (`category_code`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`custno`);

--
-- Indexes for table `custphone`
--
ALTER TABLE `custphone`
  ADD PRIMARY KEY (`custno`,`pnumber`),
  ADD KEY `FK_ptype` (`ptype`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`empid`),
  ADD KEY `FK_EMPTYPE` (`emptypecode`);

--
-- Indexes for table `emptype`
--
ALTER TABLE `emptype`
  ADD PRIMARY KEY (`emptypecode`);

--
-- Indexes for table `exchrate`
--
ALTER TABLE `exchrate`
  ADD PRIMARY KEY (`currencycode`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoice_no`),
  ADD KEY `FK_custinvoice` (`custno`),
  ADD KEY `custaddress` (`custno`,`shippingaddress`);

--
-- Indexes for table `invoice_item`
--
ALTER TABLE `invoice_item`
  ADD PRIMARY KEY (`invoice_no`,`isbn`),
  ADD UNIQUE KEY `invoice_no` (`invoice_no`,`sortorder`),
  ADD KEY `FK_book` (`isbn`);

--
-- Indexes for table `manifest`
--
ALTER TABLE `manifest`
  ADD PRIMARY KEY (`manifestno`),
  ADD KEY `FK_employee` (`empid`),
  ADD KEY `mancustaddress` (`custno`,`shipaddress`);

--
-- Indexes for table `manifestdetail`
--
ALTER TABLE `manifestdetail`
  ADD PRIMARY KEY (`manifestno`,`manifestorder`),
  ADD UNIQUE KEY `manifestinvoice` (`manifestno`,`invoiceno`,`sortorder`),
  ADD KEY `FKmaniinvoice` (`invoiceno`,`sortorder`);

--
-- Indexes for table `phone_type`
--
ALTER TABLE `phone_type`
  ADD PRIMARY KEY (`phone_type`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`pubno`);

--
-- Indexes for table `storestats`
--
ALTER TABLE `storestats`
  ADD PRIMARY KEY (`storemonth`,`store`,`stattype`);

--
-- Indexes for table `testtable`
--
ALTER TABLE `testtable`
  ADD PRIMARY KEY (`myid`);

--
-- Indexes for table `writes`
--
ALTER TABLE `writes`
  ADD PRIMARY KEY (`isbn`,`authororder`),
  ADD UNIQUE KEY `isbn` (`isbn`,`authorid`),
  ADD KEY `FK_author` (`authorid`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `FK_bookcat` FOREIGN KEY (`category_code`) REFERENCES `bookcat` (`category_code`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_pub` FOREIGN KEY (`publisher`) REFERENCES `publisher` (`pubno`) ON UPDATE CASCADE;

--
-- Constraints for table `custphone`
--
ALTER TABLE `custphone`
  ADD CONSTRAINT `FK_custphone` FOREIGN KEY (`custno`) REFERENCES `customer` (`custno`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_ptype` FOREIGN KEY (`ptype`) REFERENCES `phone_type` (`phone_type`) ON UPDATE CASCADE;

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `FK_EMPTYPE` FOREIGN KEY (`emptypecode`) REFERENCES `emptype` (`emptypecode`) ON UPDATE CASCADE;

--
-- Constraints for table `invoice`
--
ALTER TABLE `invoice`
  ADD CONSTRAINT `FK_custinvoice` FOREIGN KEY (`custno`) REFERENCES `customer` (`custno`) ON UPDATE CASCADE;

--
-- Constraints for table `invoice_item`
--
ALTER TABLE `invoice_item`
  ADD CONSTRAINT `FK_book` FOREIGN KEY (`isbn`) REFERENCES `book` (`isbn`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_invoice` FOREIGN KEY (`invoice_no`) REFERENCES `invoice` (`invoice_no`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `manifest`
--
ALTER TABLE `manifest`
  ADD CONSTRAINT `FK_cust` FOREIGN KEY (`custno`) REFERENCES `customer` (`custno`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_employee` FOREIGN KEY (`empid`) REFERENCES `employee` (`empid`) ON UPDATE CASCADE;

--
-- Constraints for table `manifestdetail`
--
ALTER TABLE `manifestdetail`
  ADD CONSTRAINT `FK_manifest` FOREIGN KEY (`manifestno`) REFERENCES `manifest` (`manifestno`),
  ADD CONSTRAINT `FKmaniinvoice` FOREIGN KEY (`invoiceno`,`sortorder`) REFERENCES `invoice_item` (`invoice_no`, `sortorder`) ON UPDATE CASCADE;

--
-- Constraints for table `writes`
--
ALTER TABLE `writes`
  ADD CONSTRAINT `FK_author` FOREIGN KEY (`authorid`) REFERENCES `author` (`author_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_bisbn` FOREIGN KEY (`isbn`) REFERENCES `book` (`isbn`) ON UPDATE CASCADE;
COMMIT;
