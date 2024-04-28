-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2024 at 11:39 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `abcd`
--
CREATE DATABASE IF NOT EXISTS `abcd` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `abcd`;
--
-- Database: `bict`
--
CREATE DATABASE IF NOT EXISTS `bict` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bict`;
--
-- Database: `ebuy`
--
CREATE DATABASE IF NOT EXISTS `ebuy` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ebuy`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `contactno` int(15) NOT NULL,
  `email` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `name`, `contactno`, `email`, `creationDate`, `updationDate`) VALUES
(1, 'John', 'John@Admin.lk', '', 0, '', '2020-07-24 16:21:18', '2020-07-24 18:21:18'),
(2, 'ikirupan@gmail.com', 'Master_1006', 'Kirupan Inpathas', 0, '', '2020-11-13 15:19:43', '');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(1, 'Breakfast_Recipes', 'Morning_Foods', '2020-07-24 16:21:18', '2020-07-24 18:21:18'),
(2, 'Lunch_Recipes', 'Lunch_Foods', '2020-07-24 16:21:18', '2020-07-24 18:21:18'),
(3, 'Dinner_Recipes', 'Dinner_Foods', '2020-07-24 16:21:18', '2020-07-24 18:21:18'),
(4, 'Dessert_Recipes', 'Taste_Foods', '2020-07-24 16:21:18', '2020-07-24 18:21:18'),
(5, 'Juice', 'Juice ', '2020-11-24 07:35:41', NULL),
(6, 'Soft Drinks', 'Soda ', '2020-11-24 07:36:29', NULL),
(7, 'Special Recipes', 'Special Recipes ', '2020-11-24 07:36:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` varchar(30000) NOT NULL,
  `creation` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `message`, `creation`) VALUES
(1, 'Kirupan Inpathas', 'ikirupan@gmail.com', 'So yummy , nice experince', '2020-11-26 11:00:19'),
(2, 'Abinesh', 'abi@m.com', 'Ok ', '2020-11-26 11:00:19'),
(3, 'Kiru', 'kjhgcgfxyfughjbvcgj@vbnkjkhvghc.com', 'iuyfdufylfrt7liughjfo68gi', '2020-11-26 11:00:40');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `bill_no` int(4) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `bill_no`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(14, 1, 2, '1', 1, '2020-11-17 09:33:26', 'COD', NULL),
(15, 2, 2, '1', 1, '2020-11-17 09:34:23', 'COD', NULL),
(16, 2, 2, '13', 1, '2020-11-17 09:34:23', 'COD', NULL),
(17, 2, 2, '25', 1, '2020-11-17 09:34:23', 'COD', NULL),
(36, 3, 2, '17', 1, '2020-11-23 12:55:00', NULL, NULL),
(39, 4, 2, '17', 1, '2020-11-23 13:16:23', NULL, NULL),
(40, 5, 2, '17', 1, '2020-11-23 13:17:11', NULL, NULL),
(41, 5, 2, '18', 1, '2020-11-23 13:17:12', NULL, NULL),
(42, 5, 2, '19', 1, '2020-11-23 13:17:12', NULL, NULL),
(43, 5, 2, '20', 1, '2020-11-23 13:17:12', NULL, NULL),
(44, 6, 2, '17', 2, '2020-11-23 13:23:01', 'COD', NULL),
(45, 6, 2, '18', 1, '2020-11-23 13:23:01', 'COD', NULL),
(46, 6, 2, '19', 1, '2020-11-23 13:23:01', 'COD', NULL),
(47, 6, 2, '20', 1, '2020-11-23 13:23:01', 'COD', NULL),
(48, 7, 2, '21', 1, '2020-11-23 13:38:30', 'COD', NULL),
(49, 8, 2, '21', 1, '2020-11-23 13:39:20', 'COD', NULL),
(50, 9, 2, '20', 1, '2020-11-23 14:39:41', 'COD', NULL),
(51, 9, 2, '21', 1, '2020-11-23 14:39:41', 'COD', NULL),
(52, 10, 2, '18', 1, '2020-11-23 14:44:59', 'COD', NULL),
(53, 11, 2, '18', 1, '2020-11-23 15:02:40', 'COD', NULL),
(54, 12, 2, '17', 1, '2020-11-24 03:01:42', 'COD', NULL),
(55, 13, 2, '18', 1, '2020-11-24 13:43:34', 'COD', NULL),
(56, 14, 2, '18', 1, '2020-11-24 13:44:20', 'COD', NULL),
(57, 14, 2, '22', 1, '2020-11-24 13:44:20', 'COD', NULL),
(58, 15, 2, '18', 1, '2020-11-24 14:34:49', 'COD', NULL),
(59, 15, 2, '20', 1, '2020-11-24 14:34:49', 'COD', NULL),
(60, 15, 2, '22', 1, '2020-11-24 14:34:49', 'COD', NULL),
(61, 16, 2, '17', 1, '2020-11-24 14:52:22', 'COD', NULL),
(62, 17, 2, '17', 1, '2020-11-25 04:32:34', 'COD', NULL),
(63, 18, 2, '12', 1, '2020-11-25 04:43:43', 'COD', NULL),
(64, 19, 5, '17', 1, '2020-11-25 08:31:22', 'COD', NULL),
(65, 20, 2, '1', 1, '2020-11-26 08:31:55', 'COD', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(1, 1, 'in Process', 'Order has been Shipped.', '2020-07-24 16:21:18');

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `productreviews`
--

INSERT INTO `productreviews` (`id`, `productId`, `name`, `email`, `review`, `reviewDate`) VALUES
(1, 3, 'Shajanthan', 'BEST PRODUCT FOR ME :)', 'BEST PRODUCT WITH AFFORDABLE PRICE', '2020-07-24 16:21:18'),
(3, 30, 'Abinesh', 'abinesh@gmail.com', 'rf', '2020-11-25 14:20:17');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(1, 1, 1, 'Best-Ever Parfait', 'E-Shopper (pvt) Ltd', 200, 0, 'This blueberry compote is incredible.', 'Banana-Pancakes.jpg', 'Banana-Pancakes.jpg', 'Banana-Pancakes.jpg', 0, 'In stock', '2020-07-24 16:21:18', '2020-07-24 17:21:18'),
(2, 1, 2, 'Caramelized Onion Matzo Brei', 'E-Shopper (pvt) Ltd', 200, 0, 'Breakfast doesn\'t get any more comforting.', 'ButterMilk-Pancakes.jpg', 'ButterMilk-Pancakes.jpg', 'ButterMilk-Pancakes.jpg', 40, 'In stock', '2020-07-24 16:21:18', '2020-07-24 17:21:18'),
(3, 1, 3, 'Best-Ever Migas', 'E-Shopper (pvt) Ltd', 180, 0, 'We\'re pretty sure that this might become a new go-to in your morning repertoire.', 'Chocolate-Cake.jpg', 'Chocolate-Cake.jpg', 'Chocolate-Cake.jpg', 0, 'In Stock', '2020-07-24 16:21:18', '2020-07-24 17:21:18'),
(4, 1, 4, 'Healthy Pumpkin Muffins', 'E-Shopper (pvt) Ltd', 220, 0, 'We might have dubbed these guys healthy, but they sure don\'t taste like it!', 'Fluffy-Pancakes.jpg', 'Fluffy-Pancakes.jpg', 'Fluffy-Pancakes.jpg', 50, 'In stock', '2020-07-24 16:21:18', '2020-07-24 17:21:18'),
(5, 1, 5, 'Crustless Quiche', 'E-Shopper (pvt) Ltd', 200, 0, 'Don\'t worry, this low-carb dish is still full of flavor.', 'Hot-Chocolate-Pancakes.jpg', 'Hot-Chocolate-Pancakes.jpg', 'Hot-Chocolate-Pancakes.jpg', 0, 'In Stock', '2020-07-24 16:21:18', '2020-07-24 17:21:18'),
(6, 1, 6, 'Instant Pot Hash', 'E-Shopper (pvt) Ltd', 300, 0, 'Veggies, potatoes, and protein are the keys to a filling breakfast.', 'Strawberry-Pancakes.jpg', 'Strawberry-Pancakes.jpg', 'Strawberry-Pancakes.jpg', 0, 'In Stock', '2020-07-24 16:21:18', '2020-07-24 17:21:18'),
(7, 1, 7, 'Instant Pot Steel Cut Oats', 'E-Shopper (pvt) Ltd', 170, 0, 'Let your Instant Pot do allll the work.', 'Nutella-Pancakes.jpg', 'Nutella-Pancakes.jpg', 'Nutella-Pancakes.jpg', 0, 'In Stock', '2020-07-24 16:21:18', '2020-07-24 17:21:18'),
(8, 1, 8, 'Brussels Sprouts Hash', 'E-Shopper (pvt) Ltd', 160, 0, 'Our favorite low-carb hash.', 'Strawberry-Pancakes.jpg', 'Strawberry-Pancakes.jpg', 'Strawberry-Pancakes.jpg', 0, 'In Stock', '2020-07-24 16:21:18', '2020-07-24 17:21:18'),
(9, 2, 1, 'Best-Ever Farro Salad', 'E-Shopper (pvt) Ltd', 350, 0, 'There are so many ways to customize this meal: change up the protein, add in some nuts, or try a new dressing.', 'BeefRice.jpg', 'BeefRice.jpg', 'BeefRice.jpg', 0, 'In Stock', '2020-07-24 16:21:18', '2020-07-24 17:21:18'),
(10, 2, 2, 'Collard Wrap Bento Boxes', 'E-Shopper (pvt) Ltd', 300, 0, 'Collards are the new kale.', 'ChickenRice.jpg', 'ChickenRice.jpg', 'ChickenRice.jpg', 0, 'In Stock', '2020-07-24 16:21:18', '2020-07-24 17:21:18'),
(11, 2, 3, 'Avocado Chicken Salad', 'E-Shopper (pvt) Ltd', 650, 0, 'Avo and chicken are always a solid combo.', 'ChineseRice.jpg', 'ChineseRice.jpg', 'ChineseRice.jpg', 0, 'In Stock', '2020-07-24 16:21:18', '2020-07-24 17:21:18'),
(12, 2, 4, 'Egg Roll Bowls', 'E-Shopper (pvt) Ltd', 250, 0, 'Take-out Chinese can be a heavy lunch, but these egg roll bowls are just the right amount of filling.', 'FishRice.jpg', 'FishRice.jpg', 'FishRice.jpg', 0, 'In Stock', '2020-07-24 16:21:18', '2020-07-24 17:21:18'),
(13, 2, 5, 'Cobb Egg Salad', 'E-Shopper (pvt) Ltd', 330, 0, 'The upgrade your egg salad deserves.', 'SpiccyRice.jpg', 'SpiccyRice.jpg', 'SpiccyRice.jpg', 0, 'In Stock', '2020-07-24 16:21:18', '2020-07-24 17:21:18'),
(14, 2, 6, 'Perfect Ham And Cheese Sandwich', 'E-Shopper (pvt) Ltd', 600, 0, 'Sourdough gives this classic sandwich a leg up.', 'ThaiRice.jpg', 'ThaiRice.jpg', 'ThaiRice.jpg', 0, 'In Stock', '2020-07-24 16:21:18', '2020-07-24 17:21:18'),
(15, 2, 7, 'Roasted Beet Goat Cheese Salad', 'E-Shopper (pvt) Ltd', 200, 0, 'Goat cheese adds a creamy, tangy taste to this not-so-basic salad.', 'VegetableRice.jpg', 'VegetableRice.jpg', 'VegetableRice.jpg', 0, 'In Stock', '2020-07-24 16:21:18', '2020-07-24 17:21:18'),
(16, 2, 8, 'Lemon Chicken Wraps', 'E-Shopper (pvt) Ltd', 180, 0, 'That creamy Sriracha sauce, though.', 'YellowRice.jpg', 'YellowRice.jpg', 'YellowRice.jpg', 0, 'In Stock', '2020-07-24 16:21:18', '2020-07-24 17:21:18'),
(17, 3, 1, 'Spaghetti and Meatballs', 'E-Shopper (pvt) Ltd', 320, 0, 'Making your own meatballs and sauce makes it even better.', 'Beef-Kottu.jpg', 'Beef-Kottu.jpg', 'Beef-Kottu.jpg', 0, 'In Stock', '2020-07-24 16:21:18', '2020-07-24 17:21:18'),
(18, 3, 2, 'Chicken and Artichoke Rice Casserole', 'E-Shopper (pvt) Ltd', 400, 0, 'This comforting chicken casserole needs to be in your winter dinner rotation.', 'Chicken-Kottu.jpg', 'Chicken-Kottu.jpg', 'Chicken-Kottu.jpg', 0, 'In Stock', '2020-07-24 16:21:18', '2020-07-24 17:21:18'),
(19, 3, 3, 'Chicken Alfredo', 'E-Shopper (pvt) Ltd', 280, 0, 'This is the easiest, creamiest chicken alfredo you will ever make.', 'Dolphin-Kottu.jpg', 'Dolphin-Kottu.jpg', 'Dolphin-Kottu.jpg', 0, 'In Stock', '2020-07-24 16:21:18', '2020-07-24 17:21:18'),
(20, 3, 4, 'Easy Chicken Parm', 'E-Shopper (pvt) Ltd', 160, 0, 'The idiot-proof way to make chicken parm.', 'Egg-Kottu.jpg', 'Egg-Kottu.jpg', 'Egg-Kottu.jpg', 0, 'In Stock', '2020-07-24 16:21:18', '2020-07-24 17:21:18'),
(21, 3, 5, 'Posole', 'E-Shopper (pvt) Ltd', 220, 0, 'Enjoy the comfort of this Mexican favorite without any of the work.', 'Kothu-Parotta.jpg', 'Kothu-Parotta.jpg', 'Kothu-Parotta.jpg', 0, 'In Stock', '2020-07-24 16:21:18', '2020-07-24 17:21:18'),
(22, 3, 6, 'Slow Cooker Chicken Thighs', 'E-Shopper (pvt) Ltd', 650, 0, 'Not mad at all about how easy these are.', 'Mixed-Kottu.jpg', 'Mixed-Kottu.jpg', 'Mixed-Kottu.jpg', 0, 'In Stock', '2020-07-24 16:21:18', '2020-07-24 17:21:18'),
(23, 3, 7, 'Cheesy Baked Meatballs', 'E-Shopper (pvt) Ltd', 500, 0, 'Add more mozz for an even gooey-er bake.', 'Mutton-Kottu.jpg', 'Mutton-Kottu.jpg', 'Mutton-Kottu.jpg', 0, 'In Stock', '2020-07-24 16:21:18', '2020-07-24 17:21:18'),
(24, 3, 8, 'Chicken and Rice Casserole', 'E-Shopper (pvt) Ltd', 150, 0, 'There is literally only one dirty dish to clean with this recipe.', 'Veg-Kottu.jpg', 'Veg-Kottu.jpg', 'Veg-Kottu.jpg', 0, 'In Stock', '2020-07-24 16:21:18', '2020-07-24 17:21:18'),
(25, 4, 1, 'Chocolate Babka', 'E-Shopper (pvt) Ltd', 250, 0, 'This is a stunner.', 'Chocolate-Dessert.jpg', 'Chocolate-Dessert.jpg', 'Chocolate-Dessert.jpg', 0, 'In Stock', '2020-07-24 16:21:18', '2020-07-24 17:21:18'),
(26, 4, 2, 'Milk & Oreos Cake', 'E-Shopper (pvt) Ltd', 300, 0, 'Impress EVERYONE with this showstopper of a cake.', 'Fruit-Cream-Cheese.jpg', 'Fruit-Cream-Cheese.jpg', 'Fruit-Cream-Cheese.jpg', 0, 'In Stock', '2020-07-24 16:21:18', '2020-07-24 17:21:18'),
(27, 4, 3, 'Chocolate Pudding Pie', 'E-Shopper (pvt) Ltd', 280, 0, 'This pie is picture perfect and chock-full of chocolate.', 'Fruit-Custard.jpg', 'Fruit-Custard.jpg', 'Fruit-Custard.jpg', 0, 'In Stock', '2020-07-24 16:21:18', '2020-07-24 17:21:18'),
(28, 4, 4, 'Strawberry Chocolate Mousse Cups', 'E-Shopper (pvt) Ltd', 550, 0, 'You can\'t go wrong with these indulgent and romantic mousse cups.', 'Fruit-Pizza.jpg', 'Fruit-Pizza.jpg', 'Fruit-Pizza.jpg', 0, 'In Stock', '2020-07-24 16:21:18', '2020-07-24 17:21:18'),
(29, 4, 5, 'Samoa Dessert Lasagna', 'E-Shopper (pvt) Ltd', 400, 0, 'Samoa-flavored lasagna? Our dreams have come true.', 'Ice-Cream-Waffle.jpg', 'Ice-Cream-Waffle.jpg', 'Ice-Cream-Waffle.jpg', 0, 'In Stock', '2020-07-24 16:21:18', '2020-07-24 17:21:18'),
(30, 4, 6, 'Red Velvet Oreo Brownies', 'E-Shopper (pvt) Ltd', 650, 0, 'WOW @ these brownies...they\'ll disappear the instant you put them on the table!', 'Kitkat-Ice-Cream-Pie.jpg', 'Kitkat-Ice-Cream-Pie.jpg', 'Kitkat-Ice-Cream-Pie.jpg', 0, 'In Stock', '2020-07-24 16:21:18', '2020-07-24 17:21:18'),
(31, 4, 7, 'Death By Chocolate Ice Cream', 'E-Shopper (pvt) Ltd', 200, 0, 'We don\'t say this lightly: This will be the best chocolate ice cream of your life.', 'Strawberry-Cake.jpg', 'Strawberry-Cake.jpg', 'Strawberry-Cake.jpg', 0, 'In Stock', '2020-07-24 16:21:18', '2020-07-24 17:21:18'),
(32, 4, 8, 'Peanut Butter Explosion Cake', 'E-Shopper (pvt) Ltd', 150, 0, 'For this one you\'ll need an Instant Pot but man, oh, man is it worth it.', 'Strawberry-Short-Cake.jpg', 'Strawberry-Short-Cake.jpg', 'Strawberry-Short-Cake.jpg', 0, 'In Stock', '2020-07-24 16:21:18', '2020-07-24 17:21:18'),
(33, 5, 1, 'Orecchiette With Broccoli Rabe', 'E-Shopper (pvt) Ltd', 290, NULL, 'Show some love for broccoli rabe, would ya?', NULL, NULL, NULL, NULL, NULL, '2020-11-26 20:33:50', NULL),
(34, 5, 2, 'BLT Sushi', 'E-Shopper (pvt) Ltd', 190, NULL, 'The low-carb sandwich substitute that\'s SO fun to eat.', NULL, NULL, NULL, NULL, NULL, '2020-11-26 20:35:02', NULL),
(35, 5, 3, 'Garlic Butter Potatoes', 'E-Shopper (pvt) Ltd', 400, NULL, 'These are basically just cheesy garlic potatoes and we love \'em.', NULL, NULL, NULL, NULL, NULL, '2020-11-26 20:35:55', NULL),
(36, 5, 4, 'Instant Pot Sweet Potatoes', 'E-Shopper (pvt) Ltd', 250, 0, 'So simple, but still super filling.', 'Instant Pot Sweet Potatoes', 'Instant Pot Sweet Potatoes', 'Instant Pot Sweet Potatoes', 0, 'In stock', '2020-11-26 20:28:09', NULL),
(37, 5, 5, 'Garlic Parmesan Flounder', 'E-Shopper (pvt) Ltd', 250, 0, 'We can never say no when it comes to garlic and Parmesan.', 'Instant Pot Sweet Potatoes', 'Instant Pot Sweet Potatoes', 'Instant Pot Sweet Potatoes', 0, 'In stock', '2020-11-26 20:29:24', NULL),
(38, 5, 6, 'Trader Joes Mandarin Orange Chicken Rice Bowls', 'E-Shopper (pvt) Ltd', 250, 0, 'Its no secret: We love Trader Joes frozen food.', 'Instant Pot Sweet Potatoes', 'Instant Pot Sweet Potatoes', 'Instant Pot Sweet Potatoes', 0, 'In stock', '2020-11-26 20:31:08', NULL),
(39, 5, 7, 'Fettuccine Alfredo', 'E-Shopper (pvt) Ltd', 250, 0, 'Need to use up some leftover chicken? Throw it in!', 'Instant Pot Sweet Potatoes', 'Instant Pot Sweet Potatoes', 'Instant Pot Sweet Potatoes', 0, 'In stock', '2020-11-26 20:31:47', NULL),
(40, 5, 8, 'Boursin-Stuffed Chicken', 'E-Shopper (pvt) Ltd', 300, NULL, 'Worthy of a holiday meal or dinner party, but with none of the usual stress.', NULL, NULL, NULL, NULL, NULL, '2020-11-26 20:32:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(1, 1, 'Vanilla Pancakes', '2020-07-24 17:21:18', '2020-07-24 17:21:18'),
(2, 1, 'Butter Milk Pancakes', '2020-07-24 17:21:18', '2020-07-24 17:21:18'),
(3, 1, 'Banana Pancakes', '2020-07-24 17:21:18', '2020-07-24 17:21:18'),
(4, 1, 'Nutella Pancakes', '2020-07-24 17:21:18', '2020-07-24 17:21:18'),
(5, 1, 'Strawberry Pancakes', '2020-07-24 17:21:18', '2020-07-24 17:21:18'),
(6, 1, 'Nutella Pancakes', '2020-07-24 17:21:18', '2020-07-24 17:21:18'),
(7, 1, 'Bacon Pancakes', '2020-07-24 17:21:18', '2020-07-24 17:21:18'),
(8, 1, 'Ihop Pancakes', '2020-07-24 17:21:18', '2020-07-24 17:21:18'),
(9, 2, 'Chicken Rice', '2020-07-24 17:21:18', '2020-07-24 17:21:18'),
(10, 2, 'Beef Rice', '2020-07-24 17:21:18', '2020-07-24 17:21:18'),
(11, 2, 'Chinese Rice', '2020-07-24 17:21:18', '2020-07-24 17:21:18'),
(12, 2, 'Fish Rice', '2020-07-24 17:21:18', '2020-07-24 17:21:18'),
(13, 2, 'Vegetable Rice', '2020-07-24 17:21:18', '2020-07-24 17:21:18'),
(14, 2, 'Yellow Rice', '2020-07-24 17:21:18', '2020-07-24 17:21:18'),
(15, 2, 'Thai Rice', '2020-07-24 17:21:18', '2020-07-24 17:21:18'),
(16, 2, 'Spicy Rice', '2020-07-24 17:21:18', '2020-07-24 17:21:18'),
(17, 3, 'Mixed Kottu', '2020-07-24 17:21:18', '2020-07-24 17:21:18'),
(18, 3, 'Beef Kottu', '2020-07-24 17:21:18', '2020-07-24 17:21:18'),
(19, 3, 'Chicken Kottu', '2020-07-24 17:21:18', '2020-07-24 17:21:18'),
(20, 3, 'Chinese Kottu', '2020-07-24 17:21:18', '2020-07-24 17:21:18'),
(21, 3, 'Vegetable Kottu', '2020-07-24 17:21:18', '2020-07-24 17:21:18'),
(22, 3, 'Egg Kottu', '2020-07-24 17:21:18', '2020-07-24 17:21:18'),
(23, 3, 'Mutton Kottu', '2020-07-24 17:21:18', '2020-07-24 17:21:18'),
(24, 3, 'Chili Kottu', '2020-07-24 17:21:18', '2020-07-24 17:21:18'),
(25, 4, 'Chocolate Dessert', '2020-07-24 17:21:18', '2020-07-24 17:21:18'),
(26, 4, 'KitKat Icecream Pie', '2020-07-24 17:21:18', '2020-07-24 17:21:18'),
(27, 4, 'Chocolate Cake', '2020-07-24 17:21:18', '2020-07-24 17:21:18'),
(28, 4, 'Strawberry Cake', '2020-07-24 17:21:18', '2020-07-24 17:21:18'),
(29, 4, 'Fruit Pizza', '2020-07-24 17:21:18', '2020-07-24 17:21:18'),
(30, 4, 'Ice Cream Waffle', '2020-07-24 17:21:18', '2020-07-24 17:21:18'),
(31, 4, 'Fruit Custard', '2020-07-24 17:21:18', '2020-07-24 17:21:18'),
(32, 4, 'Fruit Cream Cheese', '2020-07-24 17:21:18', '2020-07-24 17:21:18');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 'johnshajanthan@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-24 17:28:38', '', 1),
(2, 'ikirupan@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-13 15:04:09', NULL, 0),
(3, 'ikirupan@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-13 15:06:26', '13-11-2020 08:47:57 PM', 1),
(4, 'ikirupan@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-13 16:34:27', '13-11-2020 10:04:30 PM', 1),
(5, 'ikirupan@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-16 10:40:34', NULL, 1),
(6, 'ikirupan@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-16 11:19:26', NULL, 1),
(7, 'ikirupan@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-17 07:20:51', NULL, 1),
(8, 'ikirupan@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-17 09:30:30', '17-11-2020 03:59:36 PM', 1),
(9, 'ikirupan@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-23 03:13:41', NULL, 1),
(10, 'ikirupan@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-23 03:14:05', NULL, 1),
(11, 'ikirupan@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-23 03:14:12', NULL, 1),
(12, 'ikirupan@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-23 04:33:29', NULL, 1),
(13, 'ikirupan@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-23 05:22:14', NULL, 1),
(14, 'ikirupan@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-23 13:30:11', NULL, 1),
(15, 'ikirupan@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-23 14:44:50', NULL, 1),
(16, 'ikirupan@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-23 15:02:11', NULL, 1),
(17, 'ikirupan@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-23 15:18:15', NULL, 1),
(18, 'ikirupan@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-23 16:42:14', NULL, 1),
(19, 'ikirupan@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-24 02:42:11', NULL, 1),
(20, 'ikirupan@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-24 05:37:05', '24-11-2020 11:07:24 AM', 1),
(21, 'ikirupan@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-24 05:37:46', '24-11-2020 11:42:07 AM', 1),
(22, 'ikirupan@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-24 06:12:14', '24-11-2020 11:42:49 AM', 1),
(23, 'ikirupan@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-24 06:13:16', NULL, 1),
(24, 'ikirupan@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-24 13:42:42', '24-11-2020 08:06:52 PM', 1),
(25, 'ikirupan@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-24 14:47:46', '24-11-2020 08:33:58 PM', 1),
(26, 'ikirupan@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-24 15:15:32', NULL, 1),
(27, 'ikirupan@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-25 04:32:18', NULL, 1),
(28, 'abinesh@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-25 08:22:04', '25-11-2020 01:53:28 PM', 1),
(29, 'Kavin@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-25 08:24:00', '25-11-2020 01:56:12 PM', 1),
(30, 'Mugesh@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-25 08:26:43', NULL, 1),
(31, 'ikirupan@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-25 18:02:19', NULL, 1),
(32, 'ikirupan@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-25 18:03:12', NULL, 1),
(33, 'ikirupan@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-25 18:03:58', NULL, 1),
(34, 'ikirupan@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-25 18:07:09', NULL, 1),
(35, '1', 0x3a3a3100000000000000000000000000, '2020-11-25 18:09:34', NULL, 1),
(36, 'ikirupan@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-25 18:13:02', NULL, 1),
(37, 'ikirupan@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-25 18:17:28', NULL, 1),
(38, 'ikirupan@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-25 18:18:39', NULL, 1),
(39, 'ikirupan@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-25 18:19:00', NULL, 1),
(40, 'ikirupan@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-25 18:54:10', NULL, 1),
(41, 'ikirupan@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-26 01:12:40', NULL, 1),
(42, 'ikirupan@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-26 02:05:43', NULL, 1),
(43, 'ikirupan@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-26 05:00:58', NULL, 1),
(44, 'ikirupan@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-26 05:09:58', NULL, 1),
(45, 'ikirupan@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-26 06:37:36', NULL, 1),
(46, 'ikirupan@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-26 07:38:13', NULL, 1),
(47, 'ikirupan@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-26 08:16:54', NULL, 1),
(48, 'ikirupan@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-26 08:17:22', NULL, 1),
(49, 'ikirupan@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-26 08:31:49', NULL, 1),
(50, 'ikirupan@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-26 10:50:34', NULL, 1),
(51, 'ikirupan@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-26 15:27:40', NULL, 1),
(52, 'ikirupan@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-26 15:42:54', NULL, 1),
(53, 'ikirupan@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-26 15:43:12', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext DEFAULT NULL,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext DEFAULT NULL,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(1, 'John Shajanthan', 'johnshajanthan@gmail.com', 7615148888, 'Abcd@0149', 'Kondavil', 'Northern', 'Jaffna', 40000, 'Kondavil', 'Northern', 'Jaffna', 40000, '2020-07-24 17:28:38', ''),
(2, 'Kirupan', 'ikirupan@gmail.com', 770221046, 'Master_1006', 'Karaveddy East , Karaveddy', 'Jaffna', 'Nelliady', 40000, 'Karaveddy', 'Nothern Province', 'Nelliady', 40040, '2020-11-13 15:06:20', NULL),
(3, 'Abinesh', 'abinesh@gmail.com', 770221049, 'Master', 'Karaveddy east , karaveddy.', 'jaffna', 'Nelliady', 50000, 'Karaveddy east , karaveddy.', 'Jaffna', 'Nelliady', 40040, '2020-11-25 08:21:44', NULL),
(4, 'Kavin', 'Kavin@gmail.com', 770221056, 'Master', 'Karaveddy east , karaveddy.', 'Jaffna', 'Nelliady', 40040, 'Karaveddy east , karaveddy.', '40,000', 'Nelliady', 0, '2020-11-25 08:24:00', NULL),
(5, 'Mugesh', 'Mugesh@gmail.com', 770221049, 'Mugesh', 'Karaveddy east , karaveddy.', 'jaffna', 'Nelliady', 50000, 'Karaveddy east , karaveddy.', 'Jaffna', 'Nelliady', 40040, '2020-11-25 08:26:43', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Database: `electric-shop`
--
CREATE DATABASE IF NOT EXISTS `electric-shop` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `electric-shop`;

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `sid` int(11) NOT NULL,
  `pid` int(50) NOT NULL,
  `uid` int(50) NOT NULL,
  `product` varchar(50) NOT NULL,
  `price` int(50) NOT NULL,
  `quantity` int(50) NOT NULL,
  `status` enum('active','purchased') NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`sid`, `pid`, `uid`, `product`, `price`, `quantity`, `status`) VALUES
(226, 33, 13, 'L12 Tri', 2000, 1, 'active'),
(227, 34, 9, 'Lokai', 15000, 1, 'active'),
(229, 35, 26, 'Iphone12', 130000, 1, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(100) NOT NULL,
  `customer_fname` varchar(50) NOT NULL,
  `customer_email` varchar(100) NOT NULL,
  `customer_pwd` varchar(100) NOT NULL,
  `customer_phone` varchar(15) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_role` varchar(50) NOT NULL DEFAULT 'normal'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_fname`, `customer_email`, `customer_pwd`, `customer_phone`, `customer_address`, `customer_role`) VALUES
(25, 'Mohammed Nisthar Fathima Ashfa', 'fashfnis@gmail.com', '12345', '0768629444', 'Hemmathagama', 'normal'),
(26, 'krishanthi', 'krish@gmail.com', '12345', '0775437245', 'Hatton', 'normal'),
(27, 'Sajeeya', 'sajee@gmail.com', '12345', '0761254367', 'Thihariya', 'normal');

-- --------------------------------------------------------

--
-- Table structure for table `email`
--

CREATE TABLE `email` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(120) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_catag` varchar(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_date` varchar(50) NOT NULL,
  `product_img` text NOT NULL,
  `product_left` int(100) NOT NULL,
  `product_author` varchar(100) NOT NULL DEFAULT 'admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_catag`, `product_title`, `product_price`, `product_desc`, `product_date`, `product_img`, `product_left`, `product_author`) VALUES
(19, 'mouse', 'Digicom (DG-w10)', 400, 'Digicom futuristics technologictics industries with 1500dpi anti slip and it is easy on hand for general gaming homeuse and business purpose.   ', '8, feb, 2022', 'dgw10.jpg', 50, 'bhabishya'),
(21, 'laptop', 'Asus Gaming ', 80000, 'It has 8gb Ram, 4GB AmdRyzon graphics card with backlit keyboard.', '9, feb, 2022', 'asusx550c.jpg', 100, 'bhabishya'),
(22, 'laptop', 'Acer', 60000, 'It is acer series.It has 6gb ram with 2Gb Nvidia graphics along with 1 TB HDD ', '9, feb, 2022', 'laptop1.jpg', 18, 'bhabishya'),
(23, 'mouse', 'Hp-Mouse', 6000, 'Hp branded USA mouse industry has 2500dpi with anti slip technology', '9, feb, 2022', 'mouse2.jpg', 50, 'bhabishya'),
(24, 'keyboard', 'Digicom-keyboard', 1500, ' It has 126 key and has backlit with water resistence features along and suspension.', '9, feb, 2022', 'keyboard1.jpg', 56, 'bhabishya'),
(25, 'laptop', 'Lenovo xx556G i7', 120000, 'It is Lonovo series.It has 6gb ram with 2Gb\r\n Nvidia graphics along with 1TB ssd', '9, feb, 2022', 'laptop2.jpg', 30, 'bhabishya'),
(26, 'mouse', 'Nokia mouse', 1500, 'Nokia branded USA mouse industry has 3500dpi with anti slip technology.', '9, feb, 2022', 'mouse4.jpg', 50, 'bhabishya'),
(27, 'keyboard', 'HP-Desertkey', 700, 'It has 128 key and has backlit with water resistence and great touch.\r\nfeatures along and suspension.', '9, feb, 2022', 'keyboard2.jpg', 40, 'bhabishya'),
(28, 'laptop', 'Dell intel i9', 110000, 'It is dell series.It has 6gb ram with 2Gb Rygen graphics along with 500gb ssd.', '9, feb, 2022', 'laptop3.jpg', 49, 'bhabishya'),
(29, 'mouse', 'Sea-Mouse', 300, 'Sea branded USA mouse industry has 500dpi with anti slip technology.', '9, feb, 2022', 'mouse3.jpg', 45, 'bhabishya'),
(30, 'keyboard', 'Geforce keyboard', 2000, 'Gaming keyboard and has backlit with water resistence features along and suspension.', '9, feb, 2022', 'keyboard3.jpg', 56, 'bhabishya'),
(31, 'laptop', 'HP-77GT intel i5', 60000, ' It has 4gb ram with 256gb ssd and having 3gb HUD graphics.', '9, feb, 2022', 'laptop5.jpg', 45, 'bhabishya'),
(32, 'laptop', 'HP inteli11', 150000, '  It has intel core processor i11 with new technology gaming laptop with 8gb ram.', ' 10, Feb 2022', 'laptop6.png', 100, 'bhabishya'),
(33, 'mouse', 'L12 Tri', 2000, '  Mouse of tri-lateral button, having 3500dpi with anti-slip  technology.', '10,2,2022', 'mouse5.jpg', 25, 'bhabishya'),
(34, 'keyboard', 'Lokai', 15000, 'It is a cheap backlit gaming keyboard with 120keys along with water resistance.', '10,2,2022', 'keyboard4a.jpg', 120, 'bhabishya'),
(35, 'mobile', 'Iphone12', 130000, '     It is apple usa company with water resistance along with 6gb ram with fired processor.It has smooth glasses to protect screen.', '10,2,2022', 'mobile4.jpg', 25, 'bhabishya');

-- --------------------------------------------------------

--
-- Table structure for table `servicestatus`
--

CREATE TABLE `servicestatus` (
  `sid` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `discount` varchar(20) DEFAULT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'pending',
  `pid` int(11) DEFAULT NULL,
  `uuid` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `website_name` varchar(60) NOT NULL,
  `website_logo` varchar(50) NOT NULL,
  `website_footer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`website_name`, `website_logo`, `website_footer`) VALUES
('Electric-Shop', 'logo.png', '&copy; Electric Shop 2021 <br> All right reserved.');

-- --------------------------------------------------------

--
-- Table structure for table `soldproducts`
--

CREATE TABLE `soldproducts` (
  `sid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `quantity` int(50) NOT NULL DEFAULT 1,
  `price` int(11) NOT NULL,
  `date` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `customer_email` (`customer_email`);

--
-- Indexes for table `email`
--
ALTER TABLE `email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `servicestatus`
--
ALTER TABLE `servicestatus`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `soldproducts`
--
ALTER TABLE `soldproducts`
  ADD PRIMARY KEY (`sid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=230;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `email`
--
ALTER TABLE `email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `servicestatus`
--
ALTER TABLE `servicestatus`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `soldproducts`
--
ALTER TABLE `soldproducts`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;
--
-- Database: `foodorder`
--
CREATE DATABASE IF NOT EXISTS `foodorder` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `foodorder`;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `Name` varchar(250) NOT NULL,
  `Email` varchar(250) NOT NULL,
  `Mobile` varchar(250) NOT NULL,
  `Subject` varchar(250) NOT NULL,
  `Message` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`Name`, `Email`, `Mobile`, `Subject`, `Message`) VALUES
('CHANDAN KUMAR', 'ckj40856@gmail.com', '9487810674', 'sa', ''),
('CHANDAN KUMAR', 'ckj40856@gmail.com', '9487810674', 'sa', ''),
('BIRJU KUMAR', 'ckj40856@gmail.com', '8903079750', 'asd', 'asdasdasd'),
('CHANDAN KUMAR', 'ckj40856@gmail.com', '9487810674', 'asd', 'hfgdsfsx');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `username` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`username`, `fullname`, `email`, `contact`, `address`, `password`) VALUES
('birju', 'BIRJU KUMAR', 'bkm123r@gmail.com', '8903079750', 'Pondicherry University, SRK HOSTEL ROOM NUMBER-59,', 'Birju123@'),
('ckumar', 'CHANDAN KUMAR', 'ckj40856@gmail.com', '9487810674', 'Pondicherry University, SRK HOSTEL ROOM NUMBER-59,', 'Ckumar123@'),
('nidha', 'nidha', 'nidha@gmail.com', '998696572', 'Maharashtra', 'suhail'),
('pratheek083', 'Pratheek Shiri', 'pratheek@gmail.com', '8779546521', 'Hyderabad', 'pratheek'),
('rakshithk00', 'Rakshith Kotian', 'rakshith@gmail.com', '9547123658', 'Gujarath', 'rakshith');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `F_ID` int(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` int(30) NOT NULL,
  `description` varchar(200) NOT NULL,
  `R_ID` int(30) NOT NULL,
  `images_path` varchar(200) NOT NULL,
  `options` varchar(10) NOT NULL DEFAULT 'ENABLE'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`F_ID`, `name`, `price`, `description`, `R_ID`, `images_path`, `options`) VALUES
(58, 'Jamboo Shawarma', 230, 'a large, Juicy, marinated meat in flavorful Middle Eastern wrap', 1, 'images/Masala_Paneer_Kathi_Roll.jpg', 'ENABLE'),
(59, 'Drilled Fish', 180, 'Fish with drilled holes for seasoning and marination', 2, 'images/Meurig.jpg', 'ENABLE'),
(60, 'Chocolate Hazelnut Truffle', 600, 'Lose all senses over this very delicious chocolate hazelnut truffle.', 3, 'images/Chocolate_Hazelnut_Truffle.jpg', 'ENABLE'),
(61, 'Happy Choco Chip Shake', 460, 'Happy Happy Choco Chip Shake - a perfect party sweet treat.', 1, 'images/Happy_Happy_Choco_Chip_Shake.jpg', 'ENABLE'),
(62, 'Spring Rolls', 100, 'Delicious Spring Rolls by Dragon Hut, Delhi. Order now!!!', 2, 'images/Spring_Rolls.jpg', 'ENABLE'),
(63, 'Baahubali Thali', 870, 'Baahubali Thali is accompanied by Kattapa Biriyani, Devasena Paratha, Bhalladeva Patiala Lassi', 3, 'images/Baahubali_Thali.jpg', 'ENABLE'),
(65, 'Coffee', 120, 'concentrated coffee made by forcing pressurized water through finely ground coffee beans.', 4, 'images/coffee.jpg', 'DISABLE'),
(66, 'Chai', 150, 'The simple elixir of tea is of our natural world.', 4, 'images/chai.jpg', 'ENABLE'),
(68, 'Paneer', 140, 'it', 6, 'images/paneer pakora.jpg', 'DISABLE'),
(69, 'Coffee', 120, 'concentrated coffee made by forcing pressurized water through finely ground coffee beans.', 2, 'images/coffee.jpg', 'ENABLE'),
(70, 'Tea', 130, 'The simple elixir of tea is of our natural world.', 2, 'images\\tea.jpg', 'ENABLE'),
(71, 'Samosa', 70, 'Cocktail Crispy Samosa..', 2, 'images/samosa.jpg', 'ENABLE'),
(72, 'Cheese Spice Bites', 90, 'Savory bites meld coriander, cheese, and spice', 2, 'images/paneer pakora.jpg', 'ENABLE'),
(73, 'Puff', 100, 'Vegetable Puff, a snack with crisp-n-flaky outer layer and mixed vegetables stuffing', 2, 'images/puff.jpg', 'ENABLE'),
(74, 'Pizza', 200, 'Good and Tasty ', 2, 'Pizza.jpg', 'DISABLE'),
(75, 'French Fries', 60, 'Pure Veg and Tasty.', 2, 'frenchfries.jpg', 'DISABLE'),
(76, 'Cheese Spice Bites', 110, 'Savory bites meld coriander, cheese, and spice', 2, 'images/Pakora.jpg', 'DISABLE'),
(77, 'Pizza', 1250, 'Pure Vegetable and Tasty.', 2, 'images/Pizza.jpg', 'ENABLE'),
(78, 'French Fries', 200, 'Pure Veg and Tasty.', 2, 'images/frenchfries.jpg', 'ENABLE'),
(79, 'Sunset Snack Platter', 45, 'An appetizing evening assortment of snacks', 2, 'images/Pakora.jpg', 'ENABLE'),
(80, 'Poll Roti & Katta Sambol', 170, 'Enjoy these delights that embody Sri Lanka\'s culinary ', 4, 'images/pol.jpg', 'ENABLE'),
(81, 'Kiri Bath', 140, 'Sri Lankan dish of creamy rice cooked in coconut milk.', 1, 'images\\kiri.jpg\"', 'ENABLE'),
(82, 'Wattlappam', 180, 'Rich dessert steeped in Muslim tradition.', 3, 'images\\watti.jpg', 'ENABLE'),
(83, 'kotthu', 580, 'Sri Lankan street food with chopped flatbread and savory fillings.', 1, 'images\\Kottu Roti – Geschnittenes Brot aus Sri Lanka.jpeg\r\n', 'ENABLE'),
(89, 'String Hoppers & Pol Sambol', 170, 'String hoppers paired with spicy pol sambol.\r\n\r\n\r\n', 1, 'images\\iddi.jpg\r\n', 'ENABLE');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `username` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`username`, `fullname`, `email`, `contact`, `address`, `password`) VALUES
('aditi068', 'Aditi Naik', 'aditi@gmail.com', '8654751259', 'Goa', 'aditi'),
('aminnikhil073', 'Nikhil Amin', 'aminnikhil073@gmail.com', '9632587412', 'Karnataka', 'nikhil'),
('ckumar', 'Chandan Kumar', 'ckj40856@gmail.com', '9487810674', 'Pondicherry University, SRK HOSTEL ROOM NUMBER-59,', 'Ckumar123'),
('dhiraj', 'DHIRAJ kUMAR', 'dk123@gmail.com', '8903079750', 'Pondicherry. Le cafe', 'Dhiraj'),
('roshanraj07', 'Roshan Raj', 'roshan@gmail.com', '9541258761', 'Bihar', 'roshan');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_ID` int(30) NOT NULL,
  `F_ID` int(30) NOT NULL,
  `foodname` varchar(30) NOT NULL,
  `price` int(30) NOT NULL,
  `quantity` int(30) NOT NULL,
  `order_date` date NOT NULL,
  `username` varchar(30) NOT NULL,
  `R_ID` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_ID`, `F_ID`, `foodname`, `price`, `quantity`, `order_date`, `username`, `R_ID`) VALUES
(1, 58, 'Juicy Masala Paneer Kathi Roll', 40, 1, '2019-03-03', 'ckumar', 1),
(2, 61, 'Happy Happy Choco Chip Shake', 80, 2, '2019-03-03', 'ckumar', 1),
(3, 61, 'Happy Happy Choco Chip Shake', 80, 2, '2019-03-03', 'ckumar', 1),
(4, 65, 'Coffee', 25, 4, '2019-03-03', 'ckumar', 4),
(5, 58, 'Juicy Masala Paneer Kathi Roll', 40, 7, '2019-03-03', 'ckumar', 1),
(6, 65, 'Coffee', 25, 2, '2019-03-03', 'ckumar', 4),
(7, 58, 'Juicy Masala Paneer Kathi Roll', 40, 7, '2019-03-03', 'ckumar', 1),
(8, 65, 'Coffee', 25, 2, '2019-03-03', 'ckumar', 4),
(9, 60, 'Chocolate Hazelnut Truffle', 99, 1, '2019-03-03', 'ckumar', 3),
(10, 59, 'Meurig Fish', 60, 1, '2019-03-05', 'ckumar', 2),
(11, 60, 'Chocolate Hazelnut Truffle', 99, 1, '2019-03-05', 'ckumar', 3),
(12, 65, 'Coffee', 25, 1, '2019-03-05', 'ckumar', 4),
(13, 59, 'Meurig Fish', 60, 4, '2019-03-05', 'ckumar', 2),
(14, 58, 'Juicy Masala Paneer Kathi Roll', 40, 1, '2019-03-05', 'ckumar', 1),
(15, 60, 'Chocolate Hazelnut Truffle', 99, 4, '2019-03-05', 'ckumar', 3),
(16, 65, 'Coffee', 25, 1, '2019-03-05', 'ckumar', 4),
(17, 66, 'Tea', 20, 7, '2019-03-05', 'ckumar', 4),
(18, 59, 'Meurig Fish', 60, 5, '2019-03-05', 'birju', 2),
(19, 63, 'Baahubali Thali', 75, 1, '2019-03-05', 'birju', 3),
(20, 68, 'Paneer Pakora', 75, 1, '2019-03-05', 'birju', 6),
(21, 62, 'Spring Rolls', 65, 1, '2019-03-05', 'birju', 2),
(22, 68, 'Paneer Pakora', 75, 1, '2019-03-05', 'birju', 6),
(23, 62, 'Spring Rolls', 65, 1, '2019-03-05', 'birju', 2),
(24, 65, 'Coffee', 25, 1, '2019-03-05', 'birju', 4),
(25, 68, 'Paneer Pakora', 75, 1, '2019-03-05', 'birju', 6),
(26, 59, 'Meurig Fish', 60, 6, '2019-03-05', 'birju', 2),
(27, 58, 'Juicy Masala Paneer Kathi Roll', 40, 1, '2019-03-05', 'birju', 1),
(28, 59, 'Meurig Fish', 60, 1, '2019-03-05', 'birju', 2),
(29, 58, 'Juicy Masala Paneer Kathi Roll', 40, 1, '2019-03-05', 'birju', 1),
(30, 60, 'Chocolate Hazelnut Truffle', 99, 1, '2019-03-15', 'ckumar', 3),
(31, 59, 'Meurig Fish', 60, 1, '2019-03-15', 'ckumar', 2),
(32, 61, 'Happy Happy Choco Chip Shake', 80, 1, '2019-03-15', 'ckumar', 1),
(33, 60, 'Chocolate Hazelnut Truffle', 99, 1, '2019-03-15', 'ckumar', 3),
(34, 59, 'Meurig Fish', 60, 1, '2019-03-15', 'ckumar', 2),
(35, 61, 'Happy Happy Choco Chip Shake', 80, 1, '2019-03-15', 'ckumar', 1),
(36, 62, 'Spring Rolls', 65, 1, '2019-03-15', 'ckumar', 2),
(37, 72, 'Paneer Pakora', 45, 6, '2019-03-15', 'ckumar', 2),
(38, 78, 'French Fries', 75, 7, '2019-03-15', 'ckumar', 2),
(39, 78, 'French Fries', 75, 1, '2019-03-15', 'ckumar', 2),
(40, 73, 'Puff', 35, 1, '2019-03-15', 'ckumar', 2),
(41, 77, 'Pizza', 200, 2, '2019-03-16', 'ckumar', 2),
(42, 70, 'Tea', 20, 1, '2019-03-16', 'ckumar', 2),
(43, 60, 'Chocolate Hazelnut Truffle', 99, 2, '2019-03-16', 'ckumar', 3),
(44, 70, 'Tea', 20, 1, '2019-03-16', 'ckumar', 2),
(45, 60, 'Chocolate Hazelnut Truffle', 99, 2, '2019-03-16', 'ckumar', 3),
(46, 70, 'Tea', 20, 1, '2019-03-16', 'ckumar', 2),
(47, 60, 'Chocolate Hazelnut Truffle', 99, 2, '2019-03-16', 'ckumar', 3),
(48, 60, 'Chocolate Hazelnut Truffle', 99, 4, '2019-03-25', 'ckumar', 3),
(49, 62, 'Spring Rolls', 65, 6, '2019-03-25', 'ckumar', 2),
(50, 70, 'Tea', 20, 5, '2019-03-25', 'ckumar', 2),
(51, 73, 'Puff', 35, 3, '2019-03-25', 'ckumar', 2),
(52, 70, 'Tea', 20, 1, '2019-03-30', 'ckumar', 2),
(53, 60, 'Chocolate Hazelnut Truffle', 99, 5, '2019-03-30', 'ckumar', 3),
(54, 69, 'Coffee', 25, 7, '2019-03-30', 'ckumar', 2),
(55, 62, 'Spring Rolls', 65, 1, '2019-04-01', 'ckumar', 2),
(56, 70, 'Tea', 20, 4, '2019-04-01', 'ckumar', 2),
(57, 70, 'Tea', 20, 1, '2019-04-01', 'ckumar', 2),
(58, 60, 'Chocolate Hazelnut Truffle', 99, 1, '2019-04-01', 'ckumar', 3),
(59, 59, 'Meurig Fish', 60, 6, '2019-04-02', 'ckumar', 2),
(60, 61, 'Happy Happy Choco Chip Shake', 80, 1, '2019-04-02', 'ckumar', 1),
(61, 71, 'Samosa', 40, 3, '2019-04-17', 'ckumar', 2),
(62, 70, 'Tea', 20, 4, '2019-04-17', 'ckumar', 2),
(63, 72, 'Paneer Pakora', 45, 2, '2019-04-17', 'ckumar', 2),
(64, 71, 'Samosa', 40, 3, '2019-04-17', 'ckumar', 2),
(65, 70, 'Tea', 20, 4, '2019-04-17', 'ckumar', 2),
(66, 72, 'Paneer Pakora', 45, 2, '2019-04-17', 'ckumar', 2),
(67, 60, 'Chocolate Hazelnut Truffle', 99, 1, '2019-04-18', 'ckumar', 3),
(68, 71, 'Samosa', 40, 1, '2019-04-18', 'ckumar', 2);

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `R_ID` int(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `M_ID` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`R_ID`, `name`, `email`, `contact`, `address`, `M_ID`) VALUES
(1, 'Nikhil\'s Restaurant', 'nikhil@restaurant.com', '7998562145', 'Karnataka', 'aminnikhil073'),
(2, 'Roshan\'s Restaurant', 'roshan@restaurant.com', '9887546821', 'Bihar', 'roshanraj07'),
(3, 'Aditi\'s Restaurant', 'aditi@restaurant.com', '7778564231', 'Goa', 'aditi068'),
(4, 'Food Exploria', 'ckj40856@gmail.com', '09487810674', 'C:\\xampp\\htdocs\\FoodExploria-master\\images/coffee.', 'ckumar'),
(6, 'Le Cafe', 'lecafepondi234@gmail.com', '9443369040', 'Pondicherry,rock beach Near,Le cafe', 'dhiraj');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`F_ID`,`R_ID`),
  ADD KEY `R_ID` (`R_ID`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_ID`),
  ADD KEY `F_ID` (`F_ID`),
  ADD KEY `username` (`username`),
  ADD KEY `R_ID` (`R_ID`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`R_ID`),
  ADD UNIQUE KEY `M_ID_2` (`M_ID`),
  ADD KEY `M_ID` (`M_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `F_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `R_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `food`
--
ALTER TABLE `food`
  ADD CONSTRAINT `food_ibfk_1` FOREIGN KEY (`R_ID`) REFERENCES `restaurants` (`R_ID`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`F_ID`) REFERENCES `food` (`F_ID`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`username`) REFERENCES `customer` (`username`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`R_ID`) REFERENCES `restaurants` (`R_ID`);

--
-- Constraints for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD CONSTRAINT `restaurants_ibfk_1` FOREIGN KEY (`M_ID`) REFERENCES `manager` (`username`);
--
-- Database: `library`
--
CREATE DATABASE IF NOT EXISTS `library` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `library`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `AdminEmail` varchar(120) DEFAULT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `FullName`, `AdminEmail`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'Dhinesh', 'Dhinesh@gmail.com', 'admin', '81dc9bdb52d04dc20036dbd8313ed055', '2023-11-05 08:58:38');

-- --------------------------------------------------------

--
-- Table structure for table `tblauthors`
--

CREATE TABLE `tblauthors` (
  `id` int(11) NOT NULL,
  `AuthorName` varchar(159) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblauthors`
--

INSERT INTO `tblauthors` (`id`, `AuthorName`, `creationDate`, `UpdationDate`) VALUES
(1, 'Anuj kumar', '2022-01-22 07:23:03', '2022-01-22 07:23:03'),
(2, 'Chetan Bhagatt', '2022-01-22 07:23:03', '2022-01-22 07:23:03'),
(3, 'Anita Desai', '2022-01-22 07:23:03', '2022-01-22 16:23:41'),
(4, 'HC Verma', '2022-01-22 07:23:03', '2022-01-22 16:23:45'),
(5, 'R.D. Sharma ', '2022-01-22 07:23:03', '2022-01-22 16:23:47'),
(9, 'fwdfrwer', '2022-01-22 07:23:03', '2022-01-22 16:23:55'),
(10, 'Dr. Andy Williams', '2022-01-22 07:15:32', NULL),
(11, 'Kyle Hill', '2022-01-22 07:16:34', NULL),
(12, 'Robert T. Kiyosak', '2022-01-22 07:18:38', NULL),
(13, 'Kelly Barnhill', '2022-01-22 07:21:54', NULL),
(14, 'Herbert Schildt', '2022-01-22 07:23:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblbooks`
--

CREATE TABLE `tblbooks` (
  `id` int(11) NOT NULL,
  `BookName` varchar(255) DEFAULT NULL,
  `CatId` int(11) DEFAULT NULL,
  `AuthorId` int(11) DEFAULT NULL,
  `ISBNNumber` varchar(25) DEFAULT NULL,
  `BookPrice` decimal(10,2) DEFAULT NULL,
  `bookImage` varchar(250) NOT NULL,
  `isIssued` int(1) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbooks`
--

INSERT INTO `tblbooks` (`id`, `BookName`, `CatId`, `AuthorId`, `ISBNNumber`, `BookPrice`, `bookImage`, `isIssued`, `RegDate`, `UpdationDate`) VALUES
(1, 'PHP And MySql programming', 5, 1, '222333', 20.00, '1efecc0ca822e40b7b673c0d79ae943f.jpg', 1, '2022-01-22 07:23:03', '2022-01-22 16:24:13'),
(3, 'physics', 6, 4, '1111', 15.00, 'dd8267b57e0e4feee5911cb1e1a03a79.jpg', 0, '2022-01-22 07:23:03', '2023-11-05 09:20:06'),
(5, 'Murach\'s MySQL', 5, 1, '9350237695', 455.00, '5939d64655b4d2ae443830d73abc35b6.jpg', 1, '2022-01-21 16:42:11', '2022-01-22 06:11:03'),
(6, 'WordPress for Beginners 2022: A Visual Step-by-Step Guide to Mastering WordPress', 5, 10, 'B019MO3WCM', 100.00, '144ab706ba1cb9f6c23fd6ae9c0502b3.jpg', NULL, '2022-01-22 07:16:07', '2022-01-22 07:20:49'),
(7, 'WordPress Mastery Guide:', 5, 11, 'B09NKWH7NP', 53.00, '90083a56014186e88ffca10286172e64.jpg', NULL, '2022-01-22 07:18:03', '2022-01-22 07:20:58'),
(8, 'Rich Dad Poor Dad: What the Rich Teach Their Kids About Money That the Poor and Middle Class Do Not', 8, 12, 'B07C7M8SX9', 120.00, '52411b2bd2a6b2e0df3eb10943a5b640.jpg', NULL, '2022-01-22 07:20:39', NULL),
(9, 'The Girl Who Drank the Moon', 8, 13, '1848126476', 200.00, 'f05cd198ac9335245e1fdffa793207a7.jpg', NULL, '2022-01-22 07:22:33', NULL),
(10, 'C++: The Complete Reference, 4th Edition', 5, 14, '007053246X', 142.00, '36af5de9012bf8c804e499dc3c3b33a5.jpg', 0, '2022-01-22 07:23:36', '2022-01-22 08:18:22'),
(11, 'ASP.NET Core 5 for Beginners', 9, 11, 'GBSJ36344563', 422.00, 'b1b6788016bbfab12cfd2722604badc9.jpg', 0, '2022-01-22 08:14:21', '2022-01-22 08:15:23');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(150) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Status`, `CreationDate`, `UpdationDate`) VALUES
(4, 'Romantic', 1, '2022-01-22 07:23:03', '2022-01-22 07:23:03'),
(5, 'Technology', 1, '2022-01-22 07:23:03', '2022-01-22 07:23:03'),
(6, 'Science', 1, '2022-01-22 07:23:03', '2022-01-22 16:24:37'),
(7, 'Management', 1, '2022-01-22 07:23:03', '2022-01-22 16:24:35'),
(8, 'General', 1, '2022-01-22 07:23:03', '2022-01-22 16:24:40'),
(9, 'Programming', 1, '2022-01-22 07:23:03', '2022-01-22 16:24:42');

-- --------------------------------------------------------

--
-- Table structure for table `tblissuedbookdetails`
--

CREATE TABLE `tblissuedbookdetails` (
  `id` int(11) NOT NULL,
  `BookId` int(11) DEFAULT NULL,
  `StudentID` varchar(150) DEFAULT NULL,
  `IssuesDate` timestamp NULL DEFAULT current_timestamp(),
  `ReturnDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `RetrunStatus` int(1) DEFAULT NULL,
  `fine` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblissuedbookdetails`
--

INSERT INTO `tblissuedbookdetails` (`id`, `BookId`, `StudentID`, `IssuesDate`, `ReturnDate`, `RetrunStatus`, `fine`) VALUES
(13, NULL, 'SID016', '2023-11-05 09:17:42', NULL, NULL, NULL),
(14, 3, 'SID016', '2023-11-05 09:18:44', '2023-11-05 09:20:06', 1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE `tblstudents` (
  `id` int(11) NOT NULL,
  `StudentId` varchar(100) DEFAULT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `MobileNumber` char(11) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`id`, `StudentId`, `FullName`, `EmailId`, `MobileNumber`, `Password`, `Status`, `RegDate`, `UpdationDate`) VALUES
(8, 'SID009', 'Dhinesh', 'Dhinesh@gmail.com', '0762220104', 'f925916e2754e5e03f75dd58a5733251', 1, '2022-01-02 07:23:03', '2023-11-04 18:08:48'),
(12, 'SID016', 'Ashfa Nisthar', 'fashfnis@gmail.com', '0768629444', '827ccb0eea8a706c4c34a16891f84e7b', 1, '2023-11-05 08:00:04', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblauthors`
--
ALTER TABLE `tblauthors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooks`
--
ALTER TABLE `tblbooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `StudentId` (`StudentId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblauthors`
--
ALTER TABLE `tblauthors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tblbooks`
--
ALTER TABLE `tblbooks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- Database: `mini_project`
--
CREATE DATABASE IF NOT EXISTS `mini_project` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `mini_project`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`) VALUES
(1, 'ashf@gmail.com', '1234 '),
(2, 'saji@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `ISBN` varchar(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `author` varchar(75) NOT NULL,
  `mrp` int(11) NOT NULL,
  `security` int(11) NOT NULL,
  `rent` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `best_seller` int(11) DEFAULT NULL,
  `short_desc` varchar(2000) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `price` int(3) GENERATED ALWAYS AS (coalesce(`security`,0) + coalesce(`rent`,0)) VIRTUAL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `category_id`, `ISBN`, `name`, `img`, `author`, `mrp`, `security`, `rent`, `qty`, `best_seller`, `short_desc`, `description`, `status`) VALUES
(1, 7, '978-9-35-141670-8', 'Gulliver\'s Travels', 'gulliverTravel.jpg', 'Jonathan Swift', 175, 100, 10, 4, 0, 'Gulliver\'s Travels was first published in 1726, and three centuries later it remains in full force. This famous satirical novel is both an adventure story and a devious philosophical reflection on the constitution of modern societies. The shipwrecked Lemuel Gulliver\'s encounters with the tiny Lilliputians, the Brobdingnag giants, the philosophical Houyhnhnms and the brute Yahoos will make the protagonist, like the reader, open his eyes to the raw and true human nature.', 'Jonathan Swift (1667-1745), a great English satirist, wrote his longest and most famous book, Gulliver’s Travels between 1720 and 1725 (published in 1726). The book deals with imaginary voyages of Gulliver among the pigmies (Lilliputians), the giants (Brobdingnagians), the moonstruck philosophers (Laputans), and the race of the talking horses (Houyhnhnms) with their human serfs the Yahoos. Once Swift wrote to Pope, “I heartily hate and detest that animal called man” and his Gulliver’s Travels and Pilgrim’s Progress are the elaboration of that attitude. In his Gulliver’s Travels, he magnifies man into a giant, and then he diminishes him into a mannikin called Lilliput, and then he turns from man altogether to the race of horses called Houyhnhnms and discovers charity and sagacity in them. The Travels have a charm and vivacity that delight old and young. Swift’s comments upon mankind are shrewd and arresting as well as satirical. The style is Swift’s best - clear, easy, tireless and powerful.', 1),
(2, 3, '978-1-54-209413-9', 'One Arranged Marrage', 'newArrival1.jpg', 'Chetan Bhagat', 400, 250, 10, 4, 0, 'One Arranged Murder is the ninth novel and the twelfth book overall written by the Indian author Chetan Bhagat. The novel is the sequel to Bhagat\'s 2018 novel The Girl in Room 105. A sequel to the book named 400 days was released in 2021.', 'Saurabh Maheshwari is engaged to Prerna Malhotra. His wedding is three months away. On the night of karva chauth, however, Prerna is murdered after being pushed from her terrace. With Inspector Vijender Singh and aided by ACP Rana, the case is investigated by Saurabh and Keshav Rajpurohit. They interrogate all the people in the family. Prerna has a cousin sister called Anjali, and Keshav falls in love with her. They initially believe it is Prerna\'s father\'s brother who has murdered her, but it is later revealed that Anjali had actually murdered Prerna in a fit of jealously. It is also revealed that Anjali and Prerna were twins, but since Prerna was better off, Anjali felt incredibly jealous and planned to murder Prerna.', 1),
(3, 12, '978-1-61-268019-4', 'Rich Dad Poor Dad', 'mostViewed2.png', 'Robert T. Kiyosaki', 499, 300, 10, 4, 1, 'Rich Dad Poor Dad is a 1997 book written by Robert Kiyosaki and Sharon Lechter. It advocates the importance of financial literacy (financial education), financial independence and building wealth through investing in assets, real estate investing, starting and owning businesses, as well as increasing one\'s financial intelligence (financial IQ). Rich Dad Poor Dad is written in the style of a set of parables, ostensibly based on Kiyosaki\'s life. The titular \"rich dad\" is his friend\'s father who accumulated wealth due to entrepreneurship and savvy investing, while the \"poor dad\" is claimed to be Kiyosaki\'s own father who he says worked hard all his life but never obtained financial security.', 'It\'s been nearly 25 years since Robert Kiyosaki’s Rich Dad Poor Dad first made waves in the Personal Finance arena.\nIt has since become the #1 Personal Finance book of all time... translated into dozens of languages and sold around the world.\n\nRich Dad Poor Dad is Robert\'s story of growing up with two dads — his real father and the father of his best friend, his rich dad — and the ways in which both men shaped his thoughts about money and investing. The book explodes the myth that you need to earn a high income to be rich and explains the difference between working for money and having your money work for you.\n\n20 Years... 20/20 Hindsight\nIn the 20th Anniversary Edition of this classic, Robert offers an update on what we’ve seen over the past 20 years related to money, investing, and the global economy. Sidebars throughout the book will take readers “fast forward” — from 1997 to today — as Robert assesses how the principles taught by his rich dad have stood the test of time.\n\nIn many ways, the messages of Rich Dad Poor Dad, messages that were criticized and challenged two decades ago, are more meaningful, relevant and important today than they were 20 years ago.\n\nAs always, readers can expect that Robert will be candid, insightful... and continue to rock more than a few boats in his retrospective.\n\nWill there be a few surprises? Count on it.\n\nRich Dad Poor Dad...\n• Explodes the myth that you need to earn a high income to become rich\n• Challenges the belief that your house is an asset\n• Shows parents why they can\'t rely on the school system to teach their kids\nabout money\n• Defines once and for all an asset and a liability\n• Teaches you what to teach your kids about money for their future financial\nsuccess', 1),
(13, 18, '978-0-24-149151-5', 'A Promised Land', 'mostViewed3.jpg', 'Barak Obama', 1999, 1400, 10, 4, 1, 'A Promised Land is a memoir by Barack Obama, the 44th President of the United States from 2009 to 2017. Published on November 17, 2020, it is the first of a planned two-volume series. Remaining focused on his political career, the presidential memoir documents Obama\'s life from his early years through the events surrounding the killing of Osama bin Laden in May 2011. The book is 768 pages long and available in digital, paperback, and hardcover formats and has been translated into two dozen languages. There is also a 28-hour audiobook edition that is read by Obama himself.', 'A riveting, deeply personal account of history in the making-from the president who inspired us to believe in the power of democracy\n\n\'Gorgeously written, humorous, compelling, life affirming\' Justin Webb, Mail on Sunday\n\nIn the stirring, highly anticipated first volume of his presidential memoirs, Barack Obama tells the story of his improbable odyssey from young man searching for his identity to leader of the free world, describing in strikingly personal detail both his political education and the landmark moments of the first term of his historic presidency-a time of dramatic transformation and turmoil.\n\nObama takes readers on a compelling journey from his earliest political aspirations to the pivotal Iowa caucus victory that demonstrated the power of grassroots activism to the watershed night of November 4, 2008, when he was elected 44th president of the United States, becoming the first African American to hold the nation\'s highest office.\n\nReflecting on the presidency, he offers a unique and thoughtful exploration of both the awesome reach and the limits of presidential power, as well as singular insights into the dynamics of U.S. partisan politics and international diplomacy. Obama brings readers inside the Oval Office and the White House Situation Room, and to Moscow, Cairo, Beijing, and points beyond. We are privy to his thoughts as he assembles his cabinet, wrestles with a global financial crisis, takes the measure of Vladimir Putin, overcomes seemingly insurmountable odds to secure passage of the Affordable Care Act, clashes with generals about U.S. strategy in Afghanistan, tackles Wall Street reform, responds to the devastating Deepwater Horizon blowout, and authorizes Operation Neptune\'s Spear, which leads to the death of Osama bin Laden.\n\nA Promised Land is extraordinarily intimate and introspective-the story of one man\'s bet with history, the faith of a community organizer tested on the world stage. Obama is candid about the balancing act of running for office as a Black American, bearing the expectations of a generation buoyed by messages of \"hope and change,\" and meeting the moral challenges of high-stakes decision-making. He is frank about the forces that opposed him at home and abroad, open about how living in the White House affected his wife and daughters, and unafraid to reveal self-doubt and disappointment. Yet he never wavers from his belief that inside the great, ongoing American experiment, progress is always possible.\n\nThis beautifully written and powerful book captures Barack Obama\'s conviction that democracy is not a gift from on high but something founded on empathy and common understanding and built together, day by day.\n\n\'What is unexpected in A Promised Land is the former president\'s candour\' David Olusoga, Observer', 1),
(14, 40, '978-1-50-111036-8', 'It Ends with Us', 'newArrival3.jpg', 'Colleen Hoover', 399, 300, 10, 0, 0, 'The newest, highly anticipated novel from beloved #1 New York Times bestselling author, Colleen Hoover. Sometimes it is the one who loves you who hurts you the most. Lily hasn?t always had it easy, but that\'s never stopped her from working hard for the life she wants. She?s come a long way from the small town in Maine where she grew up?she graduated from college, moved to Boston and started her own business. So when she feels a spark with a gorgeous neurosurgeon named Ryle Kincaid, everything in Lily?s life suddenly seems almost too good to be true. Ryle is assertive, stubborn, maybe even a little arrogant. He?s also sensitive, brilliant and has a total soft spot for Lily. And the way he looks in scrubs certainly doesn?t hurt. Lily can not get him out of her head. But Ryle?s complete aversion to relationships is disturbing. Even as Lily finds herself becoming the exception to his ?no dating? rule, she can not help but wonder what made him that way in the first place. As questions about her new relationship overwhelm her, so do thoughts of Atlas Corrigan?her first love and a link to the past she left behind. He was her kindred spirit, her protector. When Atlas suddenly reappears, everything Lily has built with Ryle is threatened. With this bold and deeply personal novel, Colleen Hoover delivers a heart-wrenching story that breaks exciting new ground for her as a writer. Combining a captivating romance with a cast of all-too-human characters, it ends with us is an unforgettable tale of love that comes at the ultimate price.', 'In this “brave and heartbreaking novel that digs its claws into you and doesn’t let go, long after you’ve finished it” (Anna Todd, New York Times bestselling author) from the #1 New York Times bestselling author of All Your Perfects, a workaholic with a too-good-to-be-true romance can’t stop thinking about her first love.\n\nLily hasn’t always had it easy, but that’s never stopped her from working hard for the life she wants. She’s come a long way from the small town where she grew up—she graduated from college, moved to Boston, and started her own business. And when she feels a spark with a gorgeous neurosurgeon named Ryle Kincaid, everything in Lily’s life seems too good to be true.\n\nRyle is assertive, stubborn, maybe even a little arrogant. He’s also sensitive, brilliant, and has a total soft spot for Lily. And the way he looks in scrubs certainly doesn’t hurt. Lily can’t get him out of her head. But Ryle’s complete aversion to relationships is disturbing. Even as Lily finds herself becoming the exception to his “no dating” rule, she can’t help but wonder what made him that way in the first place.\n\nAs questions about her new relationship overwhelm her, so do thoughts of Atlas Corrigan—her first love and a link to the past she left behind. He was her kindred spirit, her protector. When Atlas suddenly reappears, everything Lily has built with Ryle is threatened.\n\nAn honest, evocative, and tender novel, It Ends with Us is “a glorious and touching read, a forever keeper. The kind of book that gets handed down” (USA TODAY).', 1),
(15, 23, '978-0-14-344229-5', 'Life\'s Amazing Secrets', '1545127237_newArrival4.jpg', 'Gaur Gopal Das', 250, 150, 10, 5, 1, 'While navigating their way through Mumbai\'s horrendous traffic, Gaur Gopal Das and his wealthy young friend Harry get talking, delving into concepts ranging from the human condition to finding one\'s purpose in life and the key to lasting happiness.\r\n\r\nWhether you are looking at strengthening your relationships, discovering your true potential, understanding how to do well at work or even how you can give back to the world, Gaur Gopal Das takes us on an unforgettable journey with his precious insights on these areas of life.\r\n\r\nDas is one of the most popular and sought-after monks and life coaches in the world, having shared his wisdom with millions. His debut book, Life\'s Amazing Secrets, distils his experiences and lessons about life into a light-hearted, thought-provoking book that will help you align yourself with the life you want to live.', 'No', 1),
(16, 7, '978-1-84-283255-4', 'The General’s Envoy', '2140619059_generalEnvoy.jpeg', 'Anthony  Conway', 53791, 50000, 300, 2, 1, 'The second thrilling volume of the Caspasian series, set this time in the lawless China of 1925 John Caspasian, hero of The Viceroy\'s Captain, is assigned to Shanghai, a city seething with intrigue and violence as rival Chinese revolutionaries make war on each other. Sent up the Yangtsc to make an alliance with the man the British have picked to stop the \'communist\' Chiang Kai-Shek, Caspasian discovers that the supposed champion of the west is a vicious murderer. The warlord\'s right hand man is the English war hero who saved Caspasian\'s life in the trenches in World War I. So why is he trying to Kill Caspasian now?', 'none', 1),
(17, 0, '978-0-09-957784-3', 'The Black Tide', '1396051893_311YEMuKDCL._SX325_BO1,204,203,200_.jpg', 'Hammond Innes', 49342, 44407, 345, 4, 0, 'From the author of DELTA CONNECTION, THE LONELY SKIER, THE TROJAN HORSE and WRECKERS MUST BREATHE, a thriller about a woman who takes matters into her own hands when yet another ship carrying oil flounders on the rocks around Land\'s End, and she sets off to find the one man who knows the truth.', 'none', 1),
(18, 12, '978-0-32-416862-4', 'Principles of Economics', '1138740780_51sHIn7iIbL._SX401_BO1,204,203,200_.jpg', 'N. Gregory Mankiw', 13910, 10000, 97, 1, 0, 'Students save money when purchasing bundled products. This bundle contains a loose-leaf version of Principles of Economics, 8th Edition, and access to MindTap Economics for 1 term (6 months). With a single login for MindTap, you can connect with your instructor, organize coursework, and have access to a range of study tools, including e-book and apps all in one place! MindTap helps you learn on your terms. Read or listen to textbooks and study with the aid of instructor notifications, flashcards, and practice quizzes.', 'None', 1),
(19, 41, '978-19-3-610794-0', '7 Seconds To Success', '1483558651_4145VVA6yGL._SX317_BO1,204,203,200_.jpg', 'Gary Coffey And Bob Phillips', 41458, 37312, 290, 2, 1, 'Success depends on making a great impression and effectively relating to people. Those first few seconds with someone can make all the difference. Bestselling author Bob Phillips and leadership expert Gary Coffey have distilled the essential skills of reading and understanding people into easy-to-remember principles. Readers will discover the best ways to relate to and connect with individuals, including how to: identify the best approaches to create good will know how to communicate with all personality types spark and keep people?s interest 7 Seconds to Success provides the tools necessary to improve people skills and garner trust. Every interaction can be positive and rewarding!', 'None', 1),
(20, 20, '978-0-07-352935-6', 'Design Of Machinery', '1966742517_51JDN8F3NBL._SX378_BO1,204,203,200_.jpg', 'Robert L. Norton, Milton P. Higgins II', 46616, 42000, 300, 2, 1, 'Laboratory Applications in Microbiology: A Case Study Approach uses real-life case studies as the basis for exercises in the laboratory. This is the only microbiology lab manual focusing on this means of instruction, an approach particularly applicable to the microbiology laboratory. The author has carefully organized the exercises so that students develop a solid intellectual base beginning with a particular technique, moving through the case study, and finally applying new knowledge to unique situations beyond the case study.', 'Design of Machinery has proven to be a favorite of both students and educators across the globe. It is currently used in hundreds of schools in the U.S. and Canada and in many more worldwide in both English and several other languages. The book is praised for its friendly writing style, clear exposition of difficult topics, attractive appearance, thorough and relevant coverage, its emphasis on synthesis and design, and its useful computer programs. The foremost goal of the author is to convey the art of the design process and the fundamentals of kinematics and dynamics in order to prepare students to successfully tackle genuine engineering problems encountered in practice. While both thorough and complete on the topics of analysis, the book also emphasizes the synthesis and design aspects of the subject to a greater degree than any other similar book on the market today. Analytical synthesis of linkages is covered, and cam design is given a more thorough and practical treatment than in any other text.\r\n\r\nIncluded with this text are downloadable videos containing animated models of over 100 of the examples from the text. Students can open, run, interact, and modify these Working Model simulations. Student editions of three custom programs for design and analysis of mechanisms: Linkages, DYNACAM, and MATRIX are also on the book’s website.  Linkages is a new program that incorporates the older programs Fourbar, Fivebar, Sixbar, Slider and Engine. (The programs with the book are limited functionality versions of the professional editions of the same programs available elsewhere on this web site.) Also included are many Matlab models for kinematic analysis.\r\n\r\nThe Sixth Edition has a collection of Master Lecture Videos and Tutorials made by the author over a thirty-year period while teaching at Worcester Polytechnic Institute. There are 82 instructional videos in total. Thirty-four are “50-minute” lectures. Thirty-nine are short “snippets” from the lecture videos that are linked to the relevant topics in a chapter. Seven are demonstrations of machinery or tutorials. Two are laboratory exercises that have been “virtualized” via video demonstration and the provision of test data so that students can simulate the lab.', 1),
(21, 18, '978-1-85-398020-6', 'In Search Of Nikola Tesla', '1520464866_41BGPY5CGQL._SX295_BO1,204,203,200_.jpg', 'F. David Peat', 29633, 25000, 200, 1, 1, '– Dr. Peat gives a scientific perspective to Tesla\'s work, specifically, the wireless power transmission theories. The book is very narritive in his search for the truth about Tesla. His endeavors of searching for info are quite interesting. I recommend the book to any scientist out there. The book was originally published in 1983.', 'none', 1),
(22, 38, '978-0-81-530322-0', 'History Of Astronomy', '1864802571_9780815303220.tif', 'John Lankford', 32418, 30000, 270, 1, 0, '– This new history of astronomy, in the form of an encyclopedia, is a welcome addition to the literature of astronomy. Many of the histories that have been published are now long out of print. Although those early histories are still useful, this volume brings together, in a very readable and pleasant format, much information scattered among several publications. The unique quality of this work is its five-pronged approach to presenting information.\r\nThe first approach, which takes up most of the book, is a historical overview of astronomy. Ancient and medieval periods are covered, but the focus is on the beginnings of the scientific revolution of the seventeenth century to the present. The second approach looks at astronomy as it fits into various national contexts. For example, the reader will find key entries for astronomy in France or Russia or Great Britain, describing milestones of astronomical accomplishments in each of those countries.', 'None', 1),
(23, 35, '185-286-336-6', 'Black Orchid', '1219428166_47700.jpg', 'Neil Gaiman', 22537, 20000, 240, 1, 0, 'From one of the most highly recognised and award winning comic writers on the scene today, Neil Gaiman (Sandman, Death, Violent Cases), and his sometime collaborator, innovative artist Dave McKean (Arkham Asylum, Cages, Violent Cases) comes a haunting and stylish exploration of birth, death and renewal. Both human and flower the heroine, Black Orchid, undertakes a hazardous journey to uncover her true origins, providing a moving ecological parable for our times. This work by Gaiman and Mckean is an early showcase for the talent we know today.', 'None', 1),
(24, 0, '067-404-649-8', 'What Is Mental Illness?', '1979676086_content.jpeg', 'Richard J. Mcnally', 27348, 25000, 250, 0, 0, 'According to a major health survey, nearly half of all Americans have been mentally ill at some point in their lives - more than a quarter in the last year. Can this be true? What exactly does it mean, anyway? What\'s a disorder, and what\'s just a struggle with real life? This lucid and incisive book cuts through both professional jargon and polemical hot air, to describe the intense political and intellectual struggles over what counts as a \'real\' disorder, and what goes into the \'DSM\', the psychiatric bible. Is schizophrenia a disorder? Absolutely. Is homosexuality? It was - till gay rights activists drove it out of the DSM a generation ago. What about new and controversial diagnoses? Is \'social anxiety disorder\' a way of saying that it\'s sick to be shy, or \'female sexual arousal disorder\' that it\'s sick to be tired? An advisor to the DSM, but also a fierce critic of exaggerated overuse, McNally defends the careful approach of describing disorders by patterns of symptoms that can be seen, and illustrates how often the system medicalizes everyday emotional life. Neuroscience, genetics, and evolutionary psychology may illuminate the biological bases of mental illness, but at this point, McNally argues, no science can draw a bright line between disorder and distress. In a pragmatic and humane conclusion, he offers questions for patients and professionals alike to help understand, and cope with, the sorrows and psychopathologies of everyday life.', 'None', 1),
(25, 0, '031-416-886-9', 'Copyright Law: Essential Cases And Materials', '1432725721_31POOaFRdmL._SX355_BO1,204,203,200_.jpg', 'Alfred C.Yen', 45907, 42000, 320, 1, 0, '– This brand-new copyright casebook differs from other copyright law casebooks in a number of respects. First, this casebook emphasizes the essential materials at the heart of the subject. The result is a streamlined and exceptionally clear casebook, in which the main themes, ideas, and theories in this exciting and dynamic field are not obscured by extraneous readings. Second, the casebook takes full advantage of technology by providing access to a companion website containing an extensive library of additional modules, topics, edited cases, notes, problems, and audio-visual materials from cases and hypotheticals for use in class. The book is authored by two experts in the field, who have written extensively about copyright, the arts, and the impact of new technology. The approach is both practical and theoretically sophisticated, with a particular focus on the latest controversies in the field.', 'None', 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` mediumint(9) NOT NULL,
  `category` varchar(50) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `status`) VALUES
(3, 'Computing, Internet & Digital Media', 1),
(7, 'Action & Adventure', 1),
(12, 'Business & Economics', 1),
(13, 'Arts,Film & photography', 0),
(14, 'Children\'s & Young Adult', 0),
(15, 'Comics & Mangas', 0),
(16, 'Crime,Horror & Science Fiction', 1),
(18, 'Biographies, Diaries & True Accounts', 1),
(19, 'Crafts, Home & Lifestyle', 1),
(20, 'Engineering', 1),
(21, 'Exam Preparation', 1),
(22, 'Fantasy, Horror & Science Fiction', 1),
(23, 'Health, Family & Personal Development', 1),
(24, 'Health, Fitness & Nutrition', 1),
(25, 'Higher Education Textbooks', 1),
(26, 'Historical Fiction', 1),
(27, 'History', 1),
(28, 'Humour', 0),
(29, 'Language, Linguistics & Writing', 1),
(30, 'Law', 1),
(31, 'Literature & Fiction', 1),
(32, 'Medicine & Health Sciences', 1),
(33, 'School Books', 1),
(34, 'Science & Mathematics', 1),
(35, 'Sciences, Technology & Medicine', 1),
(36, 'Society & Social Sciences', 1),
(37, 'Sports', 1),
(38, 'Textbooks & Study Guides', 1),
(39, 'Travel', 0),
(40, 'Romance', 0),
(41, 'Analysis & Strategy', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(70) NOT NULL,
  `email` varchar(70) NOT NULL,
  `mobile` bigint(10) NOT NULL,
  `message` text NOT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `mobile`, `message`, `date`) VALUES
(24, 'Sajeeya', 'sajee@gmail.com', 1111111113, 'thanl you for your service', '2023-11-04 22:50:42');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `address` varchar(100) NOT NULL,
  `address2` varchar(100) DEFAULT NULL,
  `pin` int(11) NOT NULL,
  `payment_method` varchar(20) DEFAULT NULL,
  `total` int(11) NOT NULL,
  `payment_status` varchar(20) NOT NULL,
  `order_status` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `duration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `address`, `address2`, `pin`, `payment_method`, `total`, `payment_status`, `order_status`, `date`, `duration`) VALUES
(16, 14, '12 main st', 'dehli', 1, 'COD', 10970, 'success', 4, '2023-11-04 22:47:01', 10),
(17, 15, '12 main st', 'colombo', 15, 'COD', 1500, 'success', 4, '2023-11-04 22:50:07', 10);

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `price` float NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`id`, `order_id`, `book_id`, `price`, `time`) VALUES
(6, 7, 3, 350, 0),
(7, 8, 13, 1500, 0),
(8, 9, 3, 450, 15),
(9, 10, 14, 400, 10),
(10, 11, 15, 280, 13),
(12, 13, 1, 200, 10),
(13, 14, 23, 22400, 10),
(14, 15, 24, 27500, 10),
(15, 16, 18, 10970, 10),
(16, 17, 13, 1500, 10);

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `id` int(11) NOT NULL,
  `status_name` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_status`
--

INSERT INTO `order_status` (`id`, `status_name`) VALUES
(4, 'Cancelled'),
(5, 'Delivered'),
(1, 'Pending'),
(2, 'Processing'),
(6, 'Returned'),
(3, 'Shipped');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `doj` datetime NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `mobile`, `doj`, `password`) VALUES
(13, 'Mohammed Nisthar Fathima Ashfa', 'fashfnis@gmail.com', 7651729443, '2023-11-04 22:42:36', '81dc9bdb52d04dc20036dbd8313ed055'),
(14, 'krishanthi', 'krish@gmail.com', 1111111111, '2023-11-04 22:44:31', 'f673d9991a246dbce15d315e7716bc1f'),
(15, 'Sajeeya', 'sajee@gmail.com', 1111111113, '2023-11-04 22:49:26', 'e10adc3949ba59abbe56e057f20f883e');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`,`ISBN`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `order_status_name_uindex` (`status_name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- Database: `mis`
--
CREATE DATABASE IF NOT EXISTS `mis` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `mis`;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"foodorder\",\"table\":\"food\"},{\"db\":\"foodorder\",\"table\":\"manager\"},{\"db\":\"foodorder\",\"table\":\"customer\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2024-04-28 09:37:57', '{\"Console\\/Mode\":\"collapse\",\"Server\\/hide_db\":\"\",\"Server\\/only_db\":\"\",\"lang\":\"en_GB\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `recruitment`
--
CREATE DATABASE IF NOT EXISTS `recruitment` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `recruitment`;

-- --------------------------------------------------------

--
-- Table structure for table `academic`
--

CREATE TABLE `academic` (
  `userid` int(255) NOT NULL,
  `university` varchar(255) NOT NULL,
  `institute` varchar(255) NOT NULL,
  `branch` varchar(255) NOT NULL,
  `degree` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `cpi` float NOT NULL,
  `semester` int(8) NOT NULL,
  `experience` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `academic`
--

INSERT INTO `academic` (`userid`, `university`, `institute`, `branch`, `degree`, `status`, `cpi`, `semester`, `experience`) VALUES
(7, 'University of Ruhuna', 'Faculty of Technology', 'Informantion Technology', 'BICT(hons)', 'pursuing', 4, 2, 0),
(8, 'University of Ruhuna', 'Faculty of Technology', 'Informantion Technology', 'BICT(hons)', 'pursuing', 3.7, 2, 0),
(9, 'University of Ruhuna', 'Faculty of Technology', 'Informantion Technology', 'BICT(hons)', 'pursuing', 3.56, 2, 0),
(10, 'University of Ruhuna', 'Faculty of Technology', 'Informantion Technology', 'BICT(hons)', 'completed', 3, 0, 2),
(11, 'ruhuna', 'Faculty of Technology', 'Informantion Technology', 'BICT(hons)', 'pursuing', 3.03, 2, 0),
(12, 'ruhuna', 'Faculty of Technology', 'Informantion Technology', 'BICT(hons)', 'pursuing', 3.05, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `userid` int(255) NOT NULL,
  `post` varchar(255) NOT NULL,
  `resume` varchar(255) NOT NULL,
  `pemail` varchar(255) NOT NULL,
  `semail` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`userid`, `post`, `resume`, `pemail`, `semail`, `password`) VALUES
(7, 'Web Developer', 'Assessment 02 - DBMS 1222 - B6.pdf', 'fashfnis@gmail.com', 'ashf@gmail.com', '123456789'),
(8, 'Mobile App Developer', 'Assessment 02 - DBMS 1222 - B6.pdf', 'saji@gmail.com', 'sajiya@gmail.com', '123456789'),
(11, 'Web Developer', 'Assessment 02 - DBMS 1222 - B6.pdf', 'krishanth@gmail.com', 'krishanth@gmail.com', '12345678');

-- --------------------------------------------------------

--
-- Table structure for table `addministive_help`
--

CREATE TABLE `addministive_help` (
  `userid` int(11) NOT NULL,
  `ad_head` varchar(255) NOT NULL,
  `ad_content` varchar(3000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminid` int(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminid`, `email`, `password`) VALUES
(21, 'fashfnis@gmail.com', '12345678'),
(22, 'saji@gmail.com', '123456789'),
(25, 'ikirupan@gmail.com', 'kirupan1234'),
(26, 'saji1@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `email` varchar(100) NOT NULL,
  `feedback` varchar(3000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal`
--

CREATE TABLE `personal` (
  `userid` int(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `middlename` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `birthdate` date NOT NULL,
  `state` varchar(255) NOT NULL,
  `statespecify` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `cityspecify` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `personal`
--

INSERT INTO `personal` (`userid`, `firstname`, `middlename`, `lastname`, `gender`, `birthdate`, `state`, `statespecify`, `city`, `cityspecify`) VALUES
(7, 'fathima', 'ashfa', 'nisthar', 'female', '2014-05-13', 'sabaragamuwa', '', 'kegalle', ''),
(8, 'fathima', 'ashfa', 'nisthar', 'female', '2001-10-10', 'sabaragamuwa', '', 'kagella', ''),
(9, 'fathima', 'sajeeya', 'Roshan', 'female', '2004-03-12', 'Western', '', 'Gampaha', ''),
(10, 'fathima', 'ashfa', 'nisthar', 'female', '2001-10-20', 'Sabaragamuwa', '', 'Kagella', ''),
(11, 'fathima', 'ashfa', 'nisthar', 'female', '2001-10-20', 'Sabaragamuwa', '', 'Kagella', ''),
(12, 'fathima', 'ashfa', 'Roshan', 'male', '1998-03-24', 'Central', '', 'Nuwera Eliya', ''),
(13, 'krishanth', 'christopher', ' kalaiselvan', 'male', '2023-11-15', 'Central', '', 'Colombo', ''),
(14, 'krishanthi', 'christina', 'kalaiselvan', 'female', '2023-11-24', 'Central', '', 'Nuwera Eliya', '');

-- --------------------------------------------------------

--
-- Table structure for table `requirement`
--

CREATE TABLE `requirement` (
  `postname` varchar(255) NOT NULL,
  `vacancies` int(255) NOT NULL,
  `reqexperience` int(255) NOT NULL,
  `minsalary` int(255) NOT NULL,
  `maxsalary` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `requirement`
--

INSERT INTO `requirement` (`postname`, `vacancies`, `reqexperience`, `minsalary`, `maxsalary`) VALUES
('Web Developer', 4, 4, 5000, 5500),
('Mobile App Developer', 7, 5, 4000, 6000),
('DataBase Administrator', 5, 4, 5000, 20000),
('Search Engine Optimizer', 5, 4, 3000, 6000),
('Product Manager', 4, 7, 13000, 15000),
('HR Manager', 3, 0, 3000, 6000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academic`
--
ALTER TABLE `academic`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `semail` (`semail`),
  ADD UNIQUE KEY `pemail` (`pemail`);

--
-- Indexes for table `addministive_help`
--
ALTER TABLE `addministive_help`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminid`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `personal`
--
ALTER TABLE `personal`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academic`
--
ALTER TABLE `academic`
  MODIFY `userid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `userid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `addministive_help`
--
ALTER TABLE `addministive_help`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adminid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `personal`
--
ALTER TABLE `personal`
  MODIFY `userid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `academic`
--
ALTER TABLE `academic`
  ADD CONSTRAINT `academic_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `personal` (`userid`) ON DELETE CASCADE;

--
-- Constraints for table `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `account_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `personal` (`userid`) ON DELETE CASCADE;
--
-- Database: `student`
--
CREATE DATABASE IF NOT EXISTS `student` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `student`;

-- --------------------------------------------------------

--
-- Stand-in structure for view `english_marks`
-- (See below for the actual view)
--
CREATE TABLE `english_marks` (
`name` varchar(50)
,`marks` int(11)
,`subject_name` varchar(255)
);

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

CREATE TABLE `marks` (
  `mark_id` int(11) NOT NULL,
  `std_id` int(11) DEFAULT NULL,
  `subject_name` varchar(255) NOT NULL,
  `marks` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `marks`
--

INSERT INTO `marks` (`mark_id`, `std_id`, `subject_name`, `marks`) VALUES
(1, 1, 'Math', 59),
(2, 1, 'Science', 73),
(3, 1, 'English', 83),
(4, 2, 'Math', 91),
(5, 2, 'Science', 59),
(6, 2, 'English', 100),
(7, 3, 'Math', 54),
(8, 3, 'Science', 50),
(9, 3, 'English', 86),
(10, 4, 'Math', 82),
(11, 4, 'Science', 68),
(12, 4, 'English', 49),
(13, 5, 'Math', 56),
(14, 5, 'Science', 66),
(15, 5, 'English', 95),
(16, 6, 'Math', 95),
(17, 6, 'Science', 51),
(18, 6, 'English', 71),
(19, 7, 'Math', 68),
(20, 7, 'Science', 70),
(21, 7, 'English', 59),
(22, 8, 'Math', 79),
(23, 8, 'Science', 61),
(24, 8, 'English', 80),
(25, 9, 'Math', 45),
(26, 9, 'Science', 97),
(27, 9, 'English', 68),
(28, 10, 'Math', 90),
(29, 10, 'Science', 49),
(30, 10, 'English', 68),
(31, 11, 'Math', 87),
(32, 11, 'Science', 92),
(33, 11, 'English', 81),
(34, 12, 'Math', 77),
(35, 12, 'Science', 90),
(36, 12, 'English', 70),
(37, 13, 'Math', 79),
(38, 13, 'Science', 67),
(39, 13, 'English', 59),
(40, 14, 'Math', 62),
(41, 14, 'Science', 76),
(42, 14, 'English', 72),
(43, 15, 'Math', 95),
(44, 15, 'Science', 57),
(45, 15, 'English', 66),
(46, 16, 'Math', 72),
(47, 16, 'Science', 93),
(48, 16, 'English', 74),
(49, 17, 'Math', 82),
(50, 17, 'Science', 74),
(51, 17, 'English', 66),
(52, 18, 'Math', 96),
(53, 18, 'Science', 96),
(54, 18, 'English', 89),
(55, 19, 'Math', 100),
(56, 19, 'Science', 59),
(57, 19, 'English', 57),
(58, 20, 'Math', 93),
(59, 20, 'Science', 86),
(60, 20, 'English', 96),
(61, 21, 'Math', 57),
(62, 21, 'Science', 61),
(63, 21, 'English', 93),
(64, 22, 'Math', 83),
(65, 22, 'Science', 95),
(66, 22, 'English', 96),
(67, 23, 'Math', 86),
(68, 23, 'Science', 47),
(69, 23, 'English', 56),
(70, 24, 'Math', 95),
(71, 24, 'Science', 83),
(72, 24, 'English', 66),
(73, 25, 'Math', 98),
(74, 25, 'Science', 83),
(75, 25, 'English', 80),
(76, 26, 'Math', 66),
(77, 26, 'Science', 73),
(78, 26, 'English', 51),
(79, 27, 'Math', 57),
(80, 27, 'Science', 67),
(81, 27, 'English', 80),
(82, 28, 'Math', 60),
(83, 28, 'Science', 80),
(84, 28, 'English', 87),
(85, 29, 'Math', 84),
(86, 29, 'Science', 72),
(87, 29, 'English', 63),
(88, 30, 'Math', 81),
(89, 30, 'Science', 68),
(90, 30, 'English', 64),
(91, 31, 'Math', 70),
(92, 31, 'Science', 60),
(93, 31, 'English', 95),
(94, 32, 'Math', 52),
(95, 32, 'Science', 75),
(96, 32, 'English', 90),
(97, 33, 'Math', 100),
(98, 33, 'Science', 59),
(99, 33, 'English', 54),
(100, 34, 'Math', 58),
(101, 34, 'Science', 79),
(102, 34, 'English', 82),
(103, 35, 'Math', 62),
(104, 35, 'Science', 63),
(105, 35, 'English', 82),
(106, 36, 'Math', 100),
(107, 36, 'Science', 65),
(108, 36, 'English', 47),
(109, 37, 'Math', 67),
(110, 37, 'Science', 64),
(111, 37, 'English', 72),
(112, 38, 'Math', 50),
(113, 38, 'Science', 56),
(114, 38, 'English', 46),
(115, 39, 'Math', 58),
(116, 39, 'Science', 93),
(117, 39, 'English', 60),
(118, 40, 'Math', 68),
(119, 40, 'Science', 99),
(120, 40, 'English', 63),
(121, 41, 'Math', 68),
(122, 41, 'Science', 90),
(123, 41, 'English', 63),
(124, 42, 'Math', 65),
(125, 42, 'Science', 71),
(126, 42, 'English', 63),
(127, 43, 'Math', 59),
(128, 43, 'Science', 95),
(129, 43, 'English', 78),
(130, 44, 'Math', 78),
(131, 44, 'English', 85),
(132, 44, 'Science', 90);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `std_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `birthdate` date DEFAULT NULL,
  `registration_date` date DEFAULT NULL,
  `grade` int(11) DEFAULT NULL,
  `father_income` decimal(10,2) DEFAULT NULL,
  `distance_to_school` decimal(8,2) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`std_id`, `name`, `email`, `birthdate`, `registration_date`, `grade`, `father_income`, `distance_to_school`, `city`) VALUES
(1, 'john_doe', 'john@example.com', '1990-05-15', '2022-01-01', 10, 50000.00, 2.50, 'Kaluthara'),
(2, 'jane_smith', 'jane@example.com', '1985-08-22', '2022-01-05', 12, 75000.00, 1.80, 'Kaluthara'),
(3, 'bob_jones', 'bob@example.com', '1995-02-10', '2022-02-10', 8, 40000.00, 3.30, 'Kaluthara'),
(4, 'amy_jackson', 'amy@example.com', '1992-09-20', '2022-03-15', 11, 60000.00, 2.00, 'colombo'),
(5, 'samuel_williams', 'samuel@example.com', '1998-04-08', '2022-04-01', 9, 45000.00, 4.10, 'Kaluthara'),
(6, 'sophie_miller', 'sophie@example.com', '1993-12-12', '2022-05-20', 10, 55000.00, 3.50, 'Kaluthara'),
(7, 'michael_smith', 'michael@example.com', '1996-07-01', '2022-06-10', 12, 80000.00, 1.20, 'Kaluthara'),
(8, 'olivia_brown', 'olivia@example.com', '1994-03-25', '2022-07-05', 11, 70000.00, 2.80, 'Kaluthara'),
(9, 'daniel_jones', 'daniel@example.com', '1997-11-18', '2022-08-15', 8, 42000.00, 3.80, 'Kaluthara'),
(10, 'emily_white', 'emily@example.com', '1999-02-28', '2022-09-01', 9, 48000.00, 4.50, 'Kaluthara'),
(11, 'charlie_taylor', 'charlie@example.com', '1991-06-14', '2022-10-10', 10, 58000.00, 1.90, 'Kaluthara'),
(12, 'ryan_davis', 'ryan@example.com', '1995-10-05', '2022-11-05', 12, 82000.00, 1.00, 'Kegalle'),
(13, 'lily_thomas', 'lily@example.com', '1990-08-30', '2022-12-20', 11, 62000.00, 2.20, 'Kegalle'),
(14, 'jacob_anderson', 'jacob@example.com', '1993-05-07', '2023-01-15', 8, 43000.00, 3.00, 'Kegalle'),
(15, 'ava_clark', 'ava@example.com', '1996-01-17', '2023-02-01', 10, 56000.00, 3.20, 'colombo'),
(16, 'noah_martin', 'noah@example.com', '1998-09-08', '2023-03-10', 9, 47000.00, 4.30, 'Kegalle'),
(17, 'grace_baker', 'grace@example.com', '1992-04-22', '2023-04-05', 12, 78000.00, 1.50, 'Kegalle'),
(18, 'william_harris', 'william@example.com', '1994-11-30', '2023-05-20', 11, 69000.00, 2.60, 'Kegalle'),
(19, 'mia_jenkins', 'mia@example.com', '1997-06-03', '2023-06-10', 8, 41000.00, 4.00, 'Kegalle'),
(20, 'ethan_morris', 'ethan@example.com', '1999-03-12', '2023-07-05', 9, 46000.00, 4.80, 'Kegalle'),
(21, 'zoey_wilson', 'zoey@example.com', '1991-01-25', '2023-08-15', 10, 54000.00, 2.30, 'Kegalle'),
(22, 'luke_carter', 'luke@example.com', '1995-07-14', '2023-09-01', 12, 81000.00, 1.10, 'Kegalle'),
(23, 'natalie_miller', 'natalie@example.com', '1993-02-18', '2023-10-10', 11, 67000.00, 2.90, 'Kegalle'),
(24, 'jackson_brown', 'jackson@example.com', '1996-10-01', '2023-11-05', 8, 44000.00, 3.70, 'Kegalle'),
(25, 'chloe_jones', 'chloe@example.com', '1990-09-15', '2023-12-20', 10, 59000.00, 2.70, 'Kegalle'),
(26, 'liam_miller', 'liam@example.com', '1994-07-08', '2024-01-15', 9, 46000.00, 3.20, 'Kegalle'),
(27, 'emma_wilson', 'emma@example.com', '1991-03-12', '2024-02-01', 11, 68000.00, 2.10, 'Kegalle'),
(28, 'aiden_thomas', 'aiden2@example.com', '1997-10-18', '2024-03-10', 8, 42000.00, 4.50, 'colombo'),
(29, 'olivia_davis', 'oliviav@example.com', '1992-05-21', '2024-04-05', 12, 79000.00, 1.80, 'Kegalle'),
(30, 'noah_martin', 'nosah@example.com', '1995-01-30', '2024-05-20', 10, 55000.00, 2.50, 'Kegalle'),
(31, 'ava_anderson', 'avsa@example.com', '1998-08-14', '2024-06-10', 9, 47000.00, 3.80, 'colombo'),
(32, 'liam_jenkins', 'liamc@example.com', '1993-02-28', '2024-07-05', 11, 67000.00, 2.30, 'Kegalle'),
(33, 'olivia_smith', 'olivias@example.com', '1996-09-01', '2024-08-15', 8, 43000.00, 4.00, 'Kegalle'),
(34, 'mason_clark', 'masonj@example.com', '1999-04-14', '2024-09-01', 9, 48000.00, 3.00, 'Kegalle'),
(35, 'emma_harris', 'emmas@example.com', '1991-11-25', '2024-10-10', 10, 59000.00, 2.90, 'Gampaha'),
(36, 'aiden_carter', 'aiden@example.com', '1994-07-03', '2024-11-05', 12, 82000.00, 1.20, 'colombo'),
(37, 'chloe_baker', 'chloev@example.com', '1990-04-15', '2024-12-20', 11, 66000.00, 2.60, 'Gampaha'),
(38, 'mason_taylor', 'masont@example.com', '1993-12-22', '2025-01-15', 8, 44000.00, 3.50, 'Gampaha'),
(39, 'mia_morris', 'miab@example.com', '1996-06-05', '2025-02-01', 10, 56000.00, 2.70, 'Gampaha'),
(40, 'logan_clark', 'logan@example.com', '1998-03-18', '2025-03-10', 9, 45000.00, 4.20, 'Gampaha'),
(41, 'sophia_harris', 'sophia@example.com', '1992-09-30', '2025-04-05', 12, 81000.00, 1.00, 'Gampaha'),
(42, 'jackson_miller', 'jacksond@example.com', '1995-05-14', '2025-05-20', 11, 70000.00, 2.80, 'Gampaha'),
(43, 'aubrey_jones', 'aubrey@example.com', '1990-01-25', '2025-06-10', 8, 41000.00, 4.80, 'colombo'),
(44, 'ethan_davis', 'ethand@example.com', '1993-08-12', '2025-07-05', 9, 49000.00, 3.70, 'Gampaha'),
(45, 'isabella_wilson', 'isabella@example.com', '1997-04-05', '2025-08-15', 10, 58000.00, 1.50, 'Gampaha');

-- --------------------------------------------------------

--
-- Structure for view `english_marks`
--
DROP TABLE IF EXISTS `english_marks`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `english_marks`  AS SELECT `s`.`name` AS `name`, `m`.`marks` AS `marks`, `m`.`subject_name` AS `subject_name` FROM (`students` `s` join `marks` `m`) WHERE `s`.`std_id` = `m`.`std_id` AND `m`.`subject_name` = 'EnglisH' ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `marks`
--
ALTER TABLE `marks`
  ADD PRIMARY KEY (`mark_id`),
  ADD KEY `std_id` (`std_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`std_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `marks`
--
ALTER TABLE `marks`
  MODIFY `mark_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `marks`
--
ALTER TABLE `marks`
  ADD CONSTRAINT `marks_ibfk_1` FOREIGN KEY (`std_id`) REFERENCES `students` (`std_id`);
--
-- Database: `tech_mis`
--
CREATE DATABASE IF NOT EXISTS `tech_mis` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `tech_mis`;

-- --------------------------------------------------------

--
-- Stand-in structure for view `all_ca_eligibility`
-- (See below for the actual view)
--
CREATE TABLE `all_ca_eligibility` (
`student_id` varchar(10)
,`course_id` varchar(7)
,`Eligibility` varchar(12)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `all_courses_grades`
-- (See below for the actual view)
--
CREATE TABLE `all_courses_grades` (
`student_id` varchar(10)
,`ENG1222_grade` varchar(2)
,`ICT1212_grade` varchar(2)
,`ICT1233_grade` varchar(2)
,`ICT1222_grade` varchar(2)
,`ICT1242_grade` varchar(2)
,`TCS1212_grade` varchar(2)
,`TMS1233_grade` varchar(2)
,`ICT1253_grade` varchar(2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `all_final_marks`
-- (See below for the actual view)
--
CREATE TABLE `all_final_marks` (
`Student_ID` varchar(10)
,`ENG1222_Final_Marks` decimal(5,2)
,`ICT1212_Final_Marks` decimal(5,2)
,`ICT1233_Final_Marks` decimal(5,2)
,`ICT1222_Final_Marks` decimal(5,2)
,`ICT1242_Final_Marks` decimal(5,2)
,`TCS1212_Final_Marks` decimal(5,2)
,`TMS1233_Final_Marks` decimal(5,2)
,`ICT1253_Final_Marks` decimal(5,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `all_grades_points`
-- (See below for the actual view)
--
CREATE TABLE `all_grades_points` (
`student_id` varchar(10)
,`ENG1222` decimal(2,1)
,`ICT1212` decimal(2,1)
,`ICT1233` decimal(2,1)
,`ICT1222` decimal(2,1)
,`ICT1242` decimal(2,1)
,`TCS1212` decimal(2,1)
,`TMS1233` decimal(2,1)
,`ICT1253` decimal(2,1)
);

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `student_id` varchar(10) NOT NULL,
  `course_id` varchar(10) NOT NULL,
  `week_01` varchar(2) DEFAULT NULL,
  `week_02` varchar(2) DEFAULT NULL,
  `week_03` varchar(2) DEFAULT NULL,
  `week_04` varchar(2) DEFAULT NULL,
  `week_05` varchar(2) DEFAULT NULL,
  `week_06` varchar(2) DEFAULT NULL,
  `week_07` varchar(2) DEFAULT NULL,
  `week_08` varchar(2) DEFAULT NULL,
  `week_09` varchar(2) DEFAULT NULL,
  `week_10` varchar(2) DEFAULT NULL,
  `week_11` varchar(2) DEFAULT NULL,
  `week_12` varchar(2) DEFAULT NULL,
  `week_13` varchar(2) DEFAULT NULL,
  `week_14` varchar(2) DEFAULT NULL,
  `week_15` varchar(2) DEFAULT NULL,
  `total_attended` int(11) GENERATED ALWAYS AS (case when `week_01` = 'AB' then 0 when `week_01` = 'MC' then 1 else cast(`week_01` as signed) end + case when `week_02` = 'AB' then 0 when `week_02` = 'MC' then 1 else cast(`week_02` as signed) end + case when `week_03` = 'AB' then 0 when `week_03` = 'MC' then 1 else cast(`week_03` as signed) end + case when `week_04` = 'AB' then 0 when `week_04` = 'MC' then 1 else cast(`week_04` as signed) end + case when `week_05` = 'AB' then 0 when `week_05` = 'MC' then 1 else cast(`week_05` as signed) end + case when `week_06` = 'AB' then 0 when `week_06` = 'MC' then 1 else cast(`week_06` as signed) end + case when `week_07` = 'AB' then 0 when `week_07` = 'MC' then 1 else cast(`week_07` as signed) end + case when `week_08` = 'AB' then 0 when `week_08` = 'MC' then 1 else cast(`week_08` as signed) end + case when `week_09` = 'AB' then 0 when `week_09` = 'MC' then 1 else cast(`week_09` as signed) end + case when `week_10` = 'AB' then 0 when `week_10` = 'MC' then 1 else cast(`week_10` as signed) end + case when `week_11` = 'AB' then 0 when `week_11` = 'MC' then 1 else cast(`week_11` as signed) end + case when `week_12` = 'AB' then 0 when `week_12` = 'MC' then 1 else cast(`week_12` as signed) end + case when `week_13` = 'AB' then 0 when `week_13` = 'MC' then 1 else cast(`week_13` as signed) end + case when `week_14` = 'AB' then 0 when `week_14` = 'MC' then 1 else cast(`week_14` as signed) end + case when `week_15` = 'AB' then 0 when `week_15` = 'MC' then 1 else cast(`week_15` as signed) end) VIRTUAL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`student_id`, `course_id`, `week_01`, `week_02`, `week_03`, `week_04`, `week_05`, `week_06`, `week_07`, `week_08`, `week_09`, `week_10`, `week_11`, `week_12`, `week_13`, `week_14`, `week_15`) VALUES
('TG1021', ' TCS1212', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1021', 'ENG1222', '1', '1', '1', 'AB', '1', '1', '1', '1', '1', 'MC', '1', 'AB', '1', '1', '1'),
('TG1021', 'ICT1212', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1021', 'ICT1222', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1021', 'ICT1233', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1021', 'ICT1242', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1021', 'ICT1253', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1021', 'TMS1233', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1031', 'ENG1222', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1', '1'),
('TG1031', 'ICT1212', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1', '1'),
('TG1031', 'ICT1222', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1', '1'),
('TG1031', 'ICT1233', '1', '1', '1', '1', 'AB', '1', 'AB', '1', '1', '1', '1', 'AB', '1', 'AB', '1'),
('TG1031', 'ICT1242', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1', '1'),
('TG1031', 'ICT1253', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1', '1'),
('TG1031', 'TCS1212', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1', '1'),
('TG1031', 'TMS1233', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1', '1'),
('TG1032', 'ENG1222', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1', '1', '1', '1', '1'),
('TG1032', 'ICT1212', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1032', 'ICT1222', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1032', 'ICT1233', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1032', 'ICT1242', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1032', 'ICT1253', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1032', 'TCS1212', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1032', 'TMS1233', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1045', 'ENG1222', '1', 'AB', '1', '1', 'AB', '1', 'AB', '1', 'AB', '1', '1', 'AB', '1', 'AB', '1'),
('TG1045', 'ICT1212', '1', 'MC', '1', '1', 'AB', '1', '1', '1', 'AB', '1', '1', '1', '1', '1', '1'),
('TG1045', 'ICT1222', '1', 'MC', '1', '1', '1', '1', '1', '1', 'AB', '1', '1', '1', '1', '1', '1'),
('TG1045', 'ICT1233', '1', 'MC', '1', '1', '1', '1', '1', '1', 'AB', '1', '1', '1', '1', '1', '1'),
('TG1045', 'ICT1242', '1', 'MC', '1', '1', '1', '1', '1', '1', 'AB', '1', '1', '1', '1', '1', '1'),
('TG1045', 'ICT1253', '1', 'MC', '1', '1', '1', '1', '1', '1', 'AB', '1', '1', '1', '1', '1', '1'),
('TG1045', 'TCS1212', '1', 'MC', '1', '1', '1', '1', 'AB', '1', 'AB', '1', '1', 'AB', '1', 'AB', '1'),
('TG1045', 'TMS1233', '1', 'MC', '1', '1', 'AB', '1', 'AB', '1', 'AB', '1', 'AB', '1', 'AB', '1', '1'),
('TG1047', 'ENG1222', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1'),
('TG1047', 'ICT1212', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1047', 'ICT1222', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1047', 'ICT1233', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1047', 'ICT1242', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1047', 'ICT1253', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1047', 'TCS1212', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1047', 'TMS1233', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1062', 'ENG1222', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1'),
('TG1062', 'ICT1212', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1062', 'ICT1222', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1062', 'ICT1233', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1062', 'ICT1242', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1062', 'ICT1253', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1062', 'TCS1212', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1062', 'TMS1233', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1064', 'ENG1222', '1', '1', 'MC', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1'),
('TG1064', 'ICT1212', '1', '1', 'MC', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1'),
('TG1064', 'ICT1222', '1', '1', 'MC', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1'),
('TG1064', 'ICT1233', '1', '1', 'MC', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1'),
('TG1064', 'ICT1242', '1', '1', 'MC', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1'),
('TG1064', 'ICT1253', '1', '1', 'MC', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1'),
('TG1064', 'TCS1212', '1', '1', 'MC', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1'),
('TG1064', 'TMS1233', '1', '1', 'MC', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1'),
('TG1067', 'ENG1222', '1', '1', 'AB', '1', '1', 'AB', '1', 'AB', '1', 'AB', '1', '1', 'AB', '1', 'MC'),
('TG1067', 'ICT1212', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1', 'AB', '1', 'MC'),
('TG1067', 'ICT1222', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1', 'AB', '1', 'MC'),
('TG1067', 'ICT1233', '1', '1', 'AB', '1', 'AB', 'AB', '1', '1', '1', 'AB', '1', '1', 'AB', '1', 'MC'),
('TG1067', 'ICT1242', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1', 'AB', '1', 'MC'),
('TG1067', 'ICT1253', '1', '1', 'AB', '1', 'AB', '1', '1', '1', '1', 'AB', '1', '1', 'AB', '1', 'MC'),
('TG1067', 'TCS1212', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1', 'AB', '1', 'MC'),
('TG1067', 'TMS1233', '1', '1', 'AB', '1', 'AB', '1', '1', '1', '1', 'AB', '1', '1', 'AB', '1', 'MC'),
('TG1084', 'ENG1222', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1'),
('TG1084', 'ICT1212', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1'),
('TG1084', 'ICT1222', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1'),
('TG1084', 'ICT1233', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1'),
('TG1084', 'ICT1242', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1'),
('TG1084', 'ICT1253', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1'),
('TG1084', 'TCS1212', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1'),
('TG1084', 'TMS1233', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1'),
('TG1087', 'ENG1222', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1087', 'ICT1212', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1087', 'ICT1222', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1087', 'ICT1233', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1087', 'ICT1242', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1087', 'ICT1253', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1087', 'TCS1212', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1087', 'TMS1233', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');

-- --------------------------------------------------------

--
-- Stand-in structure for view `attendance_status`
-- (See below for the actual view)
--
CREATE TABLE `attendance_status` (
`student_id` varchar(10)
,`course_id` varchar(10)
,`total_attended` int(11)
,`eligibility_status` varchar(12)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `ca_total_marks`
-- (See below for the actual view)
--
CREATE TABLE `ca_total_marks` (
`Student_ID` varchar(10)
,`ENG1222_CA_total_marks` decimal(5,2)
,`ICT1212_CA_total_marks` decimal(5,2)
,`ICT1222_CA_total_marks` decimal(5,2)
,`ICT1242_CA_total_marks` decimal(5,2)
,`TCS1212_CA_total_marks` decimal(5,2)
,`TMS1233_CA_total_marks` decimal(5,2)
,`ICT1253_CA_total_marks` decimal(5,2)
);

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` varchar(10) NOT NULL,
  `course_name` varchar(100) NOT NULL,
  `credits` varchar(3) NOT NULL,
  `no_of_quiz` int(1) NOT NULL,
  `CA_percentage` float(5,2) NOT NULL,
  `total_hours` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_name`, `credits`, `no_of_quiz`, `CA_percentage`, `total_hours`) VALUES
('ENG1222', 'ENGLISH_II', '2', 3, 40.00, 30),
('ICT1212', 'DATABASE MANAGEMENT SYSTEM', '2', 4, 30.00, 30),
('ICT1222', 'DATABASE MANAGEMENT SYSTEM PRACTICUM', '2', 0, 20.00, 30),
('ICT1233', 'SERVER-SIDE WEB DEVELOPMENT', '3', 3, 40.00, 60),
('ICT1242', 'COMPUTER ARCHITECTURE', '2', 3, 40.00, 30),
('ICT1253', 'COMPUTER NETWORKS', '3', 3, 30.00, 60),
('TCS1212', 'FUNDAMENTALS OF MANAGEMENT', '2', 3, 40.00, 30),
('TMS1233', 'DISCRETE MATHEMATICS', '3', 3, 40.00, 45);

-- --------------------------------------------------------

--
-- Table structure for table `dean`
--

CREATE TABLE `dean` (
  `dean_id` varchar(8) NOT NULL,
  `start_date` date NOT NULL,
  `dean_user_id` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dean`
--

INSERT INTO `dean` (`dean_id`, `start_date`, `dean_user_id`) VALUES
('D0001', '2017-01-01', 1),
('D0002', '2023-01-01', 16);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `dept_id` varchar(10) NOT NULL,
  `department_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dept_id`, `department_name`) VALUES
('DEPT01', 'Department of Information Communication Technology'),
('DEPT02', 'Department of Engineering Technology'),
('DEPT03', 'Department of Bio System Technology');

-- --------------------------------------------------------

--
-- Stand-in structure for view `details_of_students`
-- (See below for the actual view)
--
CREATE TABLE `details_of_students` (
`student_id` varchar(10)
,`full_name` varchar(61)
,`ENG1222_Final_Marks` decimal(5,2)
,`ICT1212_Final_Marks` decimal(5,2)
,`ICT1233_Final_Marks` decimal(5,2)
,`ICT1222_Final_Marks` decimal(5,2)
,`ICT1242_Final_Marks` decimal(5,2)
,`TCS1212_Final_Marks` decimal(5,2)
,`TMS1233_Final_Marks` decimal(5,2)
,`ICT1253_Final_Marks` decimal(5,2)
);

-- --------------------------------------------------------

--
-- Table structure for table `eng1222_course_marks`
--

CREATE TABLE `eng1222_course_marks` (
  `student_id` varchar(10) NOT NULL,
  `quiz_1` decimal(5,2) NOT NULL DEFAULT 0.00,
  `quiz_2` decimal(5,2) NOT NULL DEFAULT 0.00,
  `quiz_3` decimal(5,2) NOT NULL DEFAULT 0.00,
  `quiz_4` decimal(5,2) NOT NULL DEFAULT 0.00,
  `inclass_test_marks` decimal(5,2) NOT NULL DEFAULT 0.00,
  `final_quiz_marks` decimal(5,2) GENERATED ALWAYS AS ((`quiz_1` + `quiz_2` + `quiz_3` + `quiz_4` - least(`quiz_1`,`quiz_2`,`quiz_3`,`quiz_4`)) / 3 * 0.10) STORED,
  `final_assignment_marks` decimal(5,2) GENERATED ALWAYS AS (`inclass_test_marks` * 0.05) STORED,
  `mid_exam_marks` decimal(5,2) NOT NULL DEFAULT 0.00,
  `end_exam_marks` decimal(5,2) NOT NULL DEFAULT 0.00,
  `CA_total_marks` decimal(5,2) GENERATED ALWAYS AS (`final_quiz_marks` + `final_assignment_marks` + `mid_exam_marks` * 0.25) STORED,
  `final_marks` decimal(5,2) GENERATED ALWAYS AS (`final_quiz_marks` + `final_assignment_marks` + `mid_exam_marks` * 0.25 + `end_exam_marks` * 0.60) STORED
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `eng1222_course_marks`
--

INSERT INTO `eng1222_course_marks` (`student_id`, `quiz_1`, `quiz_2`, `quiz_3`, `quiz_4`, `inclass_test_marks`, `mid_exam_marks`, `end_exam_marks`) VALUES
('TG1021', 95.00, 100.00, 85.00, 0.00, 100.00, 90.00, 85.00),
('TG1031', 88.00, 90.00, 34.50, 76.00, 90.00, 75.00, 87.00),
('TG1032', 80.50, 90.50, 65.00, 89.00, 59.00, 65.00, 58.00),
('TG1045', 88.00, 90.00, 75.50, 86.50, 80.00, 85.00, 75.00),
('TG1047', 87.00, 90.70, 68.50, 86.00, 90.00, 85.00, 98.00),
('TG1062', 10.00, 30.00, 20.00, 26.00, 20.00, 0.00, 0.00),
('TG1064', 78.00, 80.00, 75.00, 80.00, 90.00, 85.00, 76.00),
('TG1067', 100.00, 90.00, 80.00, 80.00, 90.00, 85.00, 54.00),
('TG1084', 70.00, 80.00, 60.00, 70.00, 80.00, 75.00, 73.00),
('TG1087', 100.00, 100.00, 90.00, 90.00, 90.00, 95.00, 90.00),
('TG827', 90.00, 80.00, 80.00, 90.00, 85.00, 67.00, 89.00),
('TG845', 80.00, 80.00, 70.00, 80.00, 65.00, 87.00, 90.00),
('TG827', 90.00, 80.00, 80.00, 90.00, 85.00, 89.00, 76.00),
('TG845', 60.00, 60.50, 70.50, 90.00, 85.00, 77.00, 88.00),
('TG847', 60.80, 80.70, 80.00, 90.00, 85.00, 90.00, 87.00),
('TG857', 90.00, 70.00, 80.00, 60.80, 85.00, 65.00, 78.00),
('TG867', 50.00, 70.00, 40.00, 80.00, 85.00, 78.00, 89.00),
('TG897', 90.00, 80.00, 80.00, 90.00, 95.00, 57.00, 92.00),
('TG997', 60.00, 80.00, 70.00, 50.00, 67.00, 87.00, 77.00);

-- --------------------------------------------------------

--
-- Stand-in structure for view `final_exam_eligibility`
-- (See below for the actual view)
--
CREATE TABLE `final_exam_eligibility` (
`student_id` varchar(10)
,`course_id` varchar(10)
,`final_exam_eligibility` varchar(4)
);

-- --------------------------------------------------------

--
-- Table structure for table `ict1212_course_marks`
--

CREATE TABLE `ict1212_course_marks` (
  `student_id` varchar(10) NOT NULL,
  `quiz_1` decimal(5,2) NOT NULL DEFAULT 0.00,
  `quiz_2` decimal(5,2) NOT NULL DEFAULT 0.00,
  `quiz_3` decimal(5,2) NOT NULL DEFAULT 0.00,
  `quiz_4` decimal(5,2) NOT NULL DEFAULT 0.00,
  `final_quiz_marks` decimal(5,2) GENERATED ALWAYS AS ((`quiz_1` + `quiz_2` + `quiz_3` + `quiz_4` - least(`quiz_1`,`quiz_2`,`quiz_3`,`quiz_4`)) / 3 * 0.10) STORED,
  `mid_exam_marks` decimal(5,2) NOT NULL DEFAULT 0.00,
  `end_exam_marks` decimal(5,2) NOT NULL DEFAULT 0.00,
  `CA_total_marks` decimal(5,2) GENERATED ALWAYS AS (`final_quiz_marks` + `mid_exam_marks` * 0.20) STORED,
  `final_marks` decimal(5,2) GENERATED ALWAYS AS (`final_quiz_marks` + `mid_exam_marks` * 0.20 + `end_exam_marks` * 0.70) STORED
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ict1212_course_marks`
--

INSERT INTO `ict1212_course_marks` (`student_id`, `quiz_1`, `quiz_2`, `quiz_3`, `quiz_4`, `mid_exam_marks`, `end_exam_marks`) VALUES
('TG1021', 95.00, 100.00, 89.00, 80.00, 90.00, 85.00),
('TG1031', 89.00, 90.00, 44.50, 76.00, 75.00, 87.00),
('TG1032', 80.50, 90.50, 65.00, 59.00, 65.00, 58.00),
('TG1045', 88.00, 70.00, 75.50, 86.50, 85.00, 75.00),
('TG1047', 67.00, 90.70, 68.50, 76.00, 85.00, 78.00),
('TG1062', 50.00, 50.00, 20.00, 26.00, 20.00, 50.00),
('TG1064', 58.00, 80.00, 65.00, 80.00, 60.00, 76.00),
('TG1067', 90.00, 90.00, 80.00, 80.00, 85.00, 94.00),
('TG1084', 70.00, 80.00, 60.00, 70.00, 60.00, 73.00),
('TG1087', 60.00, 70.00, 90.00, 60.00, 90.00, 80.00),
('TG827', 90.00, 80.00, 80.00, 90.00, 67.00, 89.00),
('TG845', 80.00, 80.00, 90.00, 65.00, 87.00, 90.00),
('TG827', 70.00, 50.50, 90.00, 85.00, 69.00, 76.00),
('TG845', 50.50, 65.50, 40.70, 55.00, 67.00, 63.00),
('TG847', 60.80, 80.70, 80.00, 90.00, 85.00, 87.00),
('TG857', 90.00, 70.00, 80.00, 60.80, 85.00, 65.00),
('TG867', 50.00, 70.00, 40.00, 80.00, 85.00, 78.00),
('TG897', 90.00, 80.00, 80.00, 90.00, 95.00, 72.00),
('TG997', 60.00, 80.00, 70.00, 50.00, 87.00, 65.00);

-- --------------------------------------------------------

--
-- Table structure for table `ict1222_course_marks`
--

CREATE TABLE `ict1222_course_marks` (
  `student_id` varchar(10) NOT NULL,
  `mini_project_marks` decimal(5,2) NOT NULL DEFAULT 0.00,
  `mid_exam_marks` decimal(5,2) NOT NULL DEFAULT 0.00,
  `end_exam_marks` decimal(5,2) NOT NULL DEFAULT 0.00,
  `CA_total_marks` decimal(5,2) GENERATED ALWAYS AS (`mini_project_marks` * 0.20 + `mid_exam_marks` * 0.10) STORED,
  `final_marks` decimal(5,2) GENERATED ALWAYS AS (`mini_project_marks` * 0.20 + `mid_exam_marks` * 0.10 + `end_exam_marks` * 0.70) STORED
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ict1222_course_marks`
--

INSERT INTO `ict1222_course_marks` (`student_id`, `mini_project_marks`, `mid_exam_marks`, `end_exam_marks`) VALUES
('TG1021', 90.00, 85.00, 85.00),
('TG1031', 75.00, 87.00, 87.00),
('TG1032', 65.00, 58.00, 58.00),
('TG1045', 85.00, 75.00, 35.00),
('TG1047', 85.00, 78.00, 78.00),
('TG1062', 20.00, 50.00, 40.00),
('TG1064', 20.00, 45.00, 66.00),
('TG1067', 85.00, 54.00, 94.00),
('TG1084', 60.00, 33.00, 73.00),
('TG1087', 90.00, 80.00, 80.00),
('TG827', 67.00, 89.00, 89.00),
('TG845', 87.00, 90.00, 90.00),
('TG827', 69.00, 76.00, 76.00),
('TG845', 67.00, 63.00, 63.00),
('TG847', 85.00, 87.00, 87.00),
('TG857', 85.00, 65.00, 65.00),
('TG867', 85.00, 78.00, 78.00),
('TG897', 95.00, 72.00, 72.00),
('TG997', 87.00, 65.00, 65.00);

-- --------------------------------------------------------

--
-- Table structure for table `ict1233_course_marks`
--

CREATE TABLE `ict1233_course_marks` (
  `student_id` varchar(10) NOT NULL,
  `quiz_1` decimal(5,2) NOT NULL DEFAULT 0.00,
  `quiz_2` decimal(5,2) NOT NULL DEFAULT 0.00,
  `quiz_3` decimal(5,2) NOT NULL DEFAULT 0.00,
  `quiz_4` decimal(5,2) NOT NULL DEFAULT 0.00,
  `final_quiz_marks` decimal(5,2) GENERATED ALWAYS AS ((`quiz_1` + `quiz_2` + `quiz_3` + `quiz_4` - least(`quiz_1`,`quiz_2`,`quiz_3`,`quiz_4`)) / 3 * 0.10) STORED,
  `mini_project_marks` decimal(5,2) NOT NULL DEFAULT 0.00,
  `tutorial_assignments` decimal(5,2) NOT NULL DEFAULT 0.00,
  `mid_exam_marks` decimal(5,2) NOT NULL DEFAULT 0.00,
  `end_exam_marks` decimal(5,2) NOT NULL DEFAULT 0.00,
  `final_assignment_marks` decimal(5,2) GENERATED ALWAYS AS (`mini_project_marks` * 0.15 + `tutorial_assignments` * 0.05) STORED,
  `CA_total_marks` decimal(5,2) GENERATED ALWAYS AS (`final_quiz_marks` + `final_assignment_marks` + `mid_exam_marks` * 0.10) STORED,
  `final_marks` decimal(5,2) GENERATED ALWAYS AS (`final_quiz_marks` + `final_assignment_marks` + `mid_exam_marks` * 0.10 + `end_exam_marks` * 0.70) STORED
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ict1233_course_marks`
--

INSERT INTO `ict1233_course_marks` (`student_id`, `quiz_1`, `quiz_2`, `quiz_3`, `quiz_4`, `mini_project_marks`, `tutorial_assignments`, `mid_exam_marks`, `end_exam_marks`) VALUES
('TG1021', 95.00, 100.00, 89.00, 80.00, 90.00, 85.00, 90.00, 85.00),
('TG1031', 89.00, 90.00, 44.50, 76.00, 75.00, 87.00, 75.00, 87.00),
('TG1032', 80.50, 90.50, 65.00, 59.00, 65.00, 58.00, 65.00, 58.00),
('TG1045', 88.00, 70.00, 75.50, 86.50, 85.00, 75.00, 85.00, 75.00),
('TG1047', 67.00, 90.70, 68.50, 76.00, 85.00, 78.00, 85.00, 78.00),
('TG1062', 50.00, 50.00, 20.00, 26.00, 20.00, 50.00, 20.00, 50.00),
('TG1064', 58.00, 80.00, 65.00, 80.00, 60.00, 76.00, 60.00, 76.00),
('TG1067', 90.00, 90.00, 80.00, 80.00, 75.00, 94.00, 85.00, 94.00),
('TG1084', 70.00, 80.00, 60.00, 70.00, 60.00, 73.00, 60.00, 73.00),
('TG1087', 60.00, 70.00, 90.00, 60.00, 90.00, 80.00, 90.00, 80.00),
('TG827', 90.00, 80.00, 80.00, 90.00, 67.00, 89.00, 67.00, 89.00),
('TG845', 80.00, 80.00, 90.00, 65.00, 87.00, 90.00, 87.00, 90.00),
('TG827', 70.00, 50.50, 90.00, 85.00, 69.00, 76.00, 69.00, 76.00),
('TG845', 50.50, 65.50, 40.70, 55.00, 67.00, 63.00, 67.00, 63.00),
('TG847', 60.80, 80.70, 80.00, 90.00, 85.00, 87.00, 85.00, 87.00),
('TG857', 90.00, 70.00, 80.00, 60.80, 85.00, 65.00, 85.00, 65.00),
('TG867', 50.00, 70.00, 40.00, 80.00, 85.00, 78.00, 85.00, 78.00),
('TG897', 90.00, 80.00, 80.00, 90.00, 95.00, 72.00, 95.00, 72.00),
('TG997', 60.00, 80.00, 70.00, 50.00, 87.00, 65.00, 87.00, 65.00);

-- --------------------------------------------------------

--
-- Table structure for table `ict1242_course_marks`
--

CREATE TABLE `ict1242_course_marks` (
  `student_id` varchar(10) NOT NULL,
  `quiz_1` decimal(5,2) NOT NULL DEFAULT 0.00,
  `quiz_2` decimal(5,2) NOT NULL DEFAULT 0.00,
  `quiz_3` decimal(5,2) NOT NULL DEFAULT 0.00,
  `quiz_4` decimal(5,2) NOT NULL DEFAULT 0.00,
  `final_quiz_marks` decimal(5,2) GENERATED ALWAYS AS ((`quiz_1` + `quiz_2` + `quiz_3` + `quiz_4` - least(`quiz_1`,`quiz_2`,`quiz_3`,`quiz_4`)) / 3 * 0.10) STORED,
  `assignments` decimal(5,2) NOT NULL DEFAULT 0.00,
  `mid_exam_marks` decimal(5,2) NOT NULL DEFAULT 0.00,
  `end_exam_marks` decimal(5,2) NOT NULL DEFAULT 0.00,
  `CA_total_marks` decimal(5,2) GENERATED ALWAYS AS (`final_quiz_marks` + `assignments` * 0.10 + `mid_exam_marks` * 0.20) STORED,
  `final_marks` decimal(5,2) GENERATED ALWAYS AS (`final_quiz_marks` + `assignments` * 0.10 + `mid_exam_marks` * 0.20 + `end_exam_marks` * 0.60) STORED
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ict1242_course_marks`
--

INSERT INTO `ict1242_course_marks` (`student_id`, `quiz_1`, `quiz_2`, `quiz_3`, `quiz_4`, `assignments`, `mid_exam_marks`, `end_exam_marks`) VALUES
('TG1021', 95.00, 100.00, 89.00, 80.00, 90.00, 85.00, 85.00),
('TG1031', 89.00, 90.00, 44.50, 76.00, 75.00, 87.00, 87.00),
('TG1032', 80.50, 90.50, 65.00, 59.00, 65.00, 58.00, 58.00),
('TG1045', 88.00, 70.00, 75.50, 86.50, 85.00, 75.00, 75.00),
('TG1047', 67.00, 90.70, 68.50, 76.00, 85.00, 78.00, 78.00),
('TG1062', 50.00, 50.00, 20.00, 26.00, 20.00, 50.00, 50.00),
('TG1064', 58.00, 80.00, 65.00, 80.00, 60.00, 76.00, 76.00),
('TG1067', 90.00, 90.00, 80.00, 80.00, 85.00, 94.00, 94.00),
('TG1084', 70.00, 80.00, 60.00, 70.00, 60.00, 73.00, 73.00),
('TG1087', 60.00, 70.00, 90.00, 60.00, 90.00, 80.00, 80.00),
('TG827', 90.00, 80.00, 80.00, 90.00, 67.00, 89.00, 89.00),
('TG845', 80.00, 80.00, 90.00, 65.00, 87.00, 90.00, 90.00),
('TG827', 70.00, 50.50, 90.00, 85.00, 69.00, 76.00, 76.00),
('TG845', 50.50, 65.50, 40.70, 55.00, 67.00, 63.00, 63.00),
('TG847', 60.80, 80.70, 80.00, 90.00, 85.00, 87.00, 87.00),
('TG857', 90.00, 70.00, 80.00, 60.80, 85.00, 65.00, 65.00),
('TG867', 50.00, 70.00, 40.00, 80.00, 85.00, 78.00, 78.00),
('TG897', 90.00, 80.00, 80.00, 90.00, 95.00, 72.00, 72.00),
('TG997', 60.00, 80.00, 70.00, 50.00, 87.00, 65.00, 65.00);

-- --------------------------------------------------------

--
-- Table structure for table `ict1253_course_marks`
--

CREATE TABLE `ict1253_course_marks` (
  `student_id` varchar(10) NOT NULL,
  `quiz_1` decimal(5,2) NOT NULL DEFAULT 0.00,
  `quiz_2` decimal(5,2) NOT NULL DEFAULT 0.00,
  `quiz_3` decimal(5,2) NOT NULL DEFAULT 0.00,
  `quiz_4` decimal(5,2) NOT NULL DEFAULT 0.00,
  `final_quiz_marks` decimal(5,2) GENERATED ALWAYS AS ((`quiz_1` + `quiz_2` + `quiz_3` + `quiz_4` - least(`quiz_1`,`quiz_2`,`quiz_3`,`quiz_4`)) / 3 * 0.10) STORED,
  `practical_assignments` decimal(5,2) NOT NULL DEFAULT 0.00,
  `in_calss_test` decimal(5,2) NOT NULL DEFAULT 0.00,
  `end_exam_marks` decimal(5,2) NOT NULL DEFAULT 0.00,
  `CA_total_marks` decimal(5,2) GENERATED ALWAYS AS (`final_quiz_marks` + `practical_assignments` * 0.10 + `in_calss_test` * 0.10) STORED,
  `final_marks` decimal(5,2) GENERATED ALWAYS AS (`final_quiz_marks` + `practical_assignments` * 0.10 + `in_calss_test` * 0.10 + `end_exam_marks` * 0.70) STORED
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ict1253_course_marks`
--

INSERT INTO `ict1253_course_marks` (`student_id`, `quiz_1`, `quiz_2`, `quiz_3`, `quiz_4`, `practical_assignments`, `in_calss_test`, `end_exam_marks`) VALUES
('TG1021', 58.00, 40.00, 89.00, 50.00, 90.00, 85.00, 50.00),
('TG1031', 89.00, 20.00, 44.50, 76.00, 75.00, 87.00, 87.00),
('TG1032', 69.50, 90.50, 70.00, 59.00, 65.00, 58.00, 58.00),
('TG1045', 88.00, 70.00, 75.50, 86.50, 85.00, 75.00, 75.00),
('TG1047', 68.00, 90.70, 68.50, 76.00, 85.00, 78.00, 78.00),
('TG1062', 50.00, 0.00, 20.00, 0.00, 20.00, 50.00, 50.00),
('TG1064', 58.00, 20.00, 65.00, 80.00, 60.00, 76.00, 76.00),
('TG1067', 70.00, 86.00, 80.00, 80.00, 85.00, 94.00, 94.00),
('TG1084', 70.00, 80.00, 70.00, 70.00, 60.00, 73.00, 73.00),
('TG1087', 68.00, 70.00, 30.00, 60.00, 90.00, 80.00, 50.00),
('TG827', 79.00, 80.00, 80.00, 90.00, 67.00, 89.00, 89.00),
('TG845', 83.00, 80.00, 90.00, 65.00, 87.00, 90.00, 90.00),
('TG827', 70.00, 50.50, 90.00, 85.00, 69.00, 76.00, 76.00),
('TG845', 50.50, 65.50, 40.70, 55.00, 67.00, 63.00, 63.00),
('TG847', 64.80, 80.70, 80.00, 90.00, 85.00, 87.00, 78.00),
('TG857', 90.00, 70.00, 80.00, 60.80, 85.00, 65.00, 65.00),
('TG867', 50.00, 90.00, 40.00, 80.00, 85.00, 78.00, 78.00),
('TG897', 90.00, 80.00, 80.00, 90.00, 95.00, 72.00, 72.00),
('TG997', 60.00, 80.00, 70.00, 45.50, 87.00, 65.00, 65.00);

-- --------------------------------------------------------

--
-- Table structure for table `lecturer`
--

CREATE TABLE `lecturer` (
  `lecture_id` varchar(10) NOT NULL,
  `department_id` varchar(50) NOT NULL,
  `user_id` int(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lecturer`
--

INSERT INTO `lecturer` (`lecture_id`, `department_id`, `user_id`) VALUES
('L0001', 'DEPT01', 2),
('L0002', 'DEPT01', 3),
('L0003', 'DEPT03', 17),
('L0004', 'DEPT03', 18),
('L0005', 'DEPT02', 19);

-- --------------------------------------------------------

--
-- Stand-in structure for view `proper_students_final_results`
-- (See below for the actual view)
--
CREATE TABLE `proper_students_final_results` (
`student_id` varchar(10)
,`full_name` varchar(61)
,`ENG1222_grade` varchar(2)
,`ICT1212_grade` varchar(2)
,`ICT1233_grade` varchar(2)
,`ICT1222_grade` varchar(2)
,`ICT1242_grade` varchar(2)
,`TCS1212_grade` varchar(2)
,`TMS1233_grade` varchar(2)
,`ICT1253_grade` varchar(2)
,`SGPA` double(19,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `repeaters_results`
-- (See below for the actual view)
--
CREATE TABLE `repeaters_results` (
`student_id` varchar(10)
,`full_name` varchar(61)
,`ENG1222_grade` varchar(1)
,`ICT1212_grade` varchar(1)
,`ICT1233_grade` varchar(1)
,`TMS1233_grade` varchar(1)
,`ICT1222_grade` varchar(1)
,`ICT1242_grade` varchar(1)
,`TCS1212_grade` varchar(1)
,`ICT1253_grade` varchar(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `repeat_students`
-- (See below for the actual view)
--
CREATE TABLE `repeat_students` (
`student_id` varchar(10)
,`full_name` varchar(61)
,`ENG1222_grade` varchar(2)
,`ICT1212_grade` varchar(2)
,`ICT1233_grade` varchar(2)
,`ICT1222_grade` varchar(2)
,`ICT1242_grade` varchar(2)
,`TCS1212_grade` varchar(2)
,`TMS1233_grade` varchar(2)
,`ICT1253_grade` varchar(2)
,`SGPA` double(19,2)
);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` varchar(10) NOT NULL,
  `batch` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `batch`, `user_id`, `status`) VALUES
('TG1021', 2021, 6, 'proper'),
('TG1031', 2021, 7, 'proper'),
('TG1032', 2021, 8, 'proper'),
('TG1045', 2021, 9, 'proper'),
('TG1047', 2021, 10, 'proper'),
('TG1062', 2021, 11, 'suspended'),
('TG1064', 2021, 12, 'proper'),
('TG1067', 2021, 13, 'proper'),
('TG1084', 2021, 14, 'proper'),
('TG1087', 2020, 15, 'proper'),
('TG827', 2020, 16, 'repeat'),
('TG845', 2020, 20, 'repeat'),
('TG847', 2020, 21, 'repeat'),
('TG857', 2020, 22, 'repeat'),
('TG867', 2020, 27, 'repeat'),
('TG997', 2020, 28, 'repeat');

-- --------------------------------------------------------

--
-- Stand-in structure for view `students_final_grades`
-- (See below for the actual view)
--
CREATE TABLE `students_final_grades` (
`student_id` varchar(10)
,`full_name` varchar(61)
,`ENG1222_grade` varchar(2)
,`ICT1212_grade` varchar(2)
,`ICT1233_grade` varchar(2)
,`ICT1222_grade` varchar(2)
,`ICT1242_grade` varchar(2)
,`TCS1212_grade` varchar(2)
,`TMS1233_grade` varchar(2)
,`ICT1253_grade` varchar(2)
,`SGPA` double(19,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `student_details`
-- (See below for the actual view)
--
CREATE TABLE `student_details` (
`student_id` varchar(10)
,`batch` int(11)
,`full_name` varchar(61)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `student_gpa`
-- (See below for the actual view)
--
CREATE TABLE `student_gpa` (
`student_id` varchar(10)
,`SGPA` double(19,2)
);

-- --------------------------------------------------------

--
-- Table structure for table `tcs1212_course_marks`
--

CREATE TABLE `tcs1212_course_marks` (
  `student_id` varchar(10) NOT NULL,
  `quiz_1` decimal(5,2) NOT NULL DEFAULT 0.00,
  `quiz_2` decimal(5,2) NOT NULL DEFAULT 0.00,
  `quiz_3` decimal(5,2) NOT NULL DEFAULT 0.00,
  `quiz_4` decimal(5,2) NOT NULL DEFAULT 0.00,
  `final_quiz_marks` decimal(5,2) GENERATED ALWAYS AS ((`quiz_1` + `quiz_2` + `quiz_3` + `quiz_4` - least(`quiz_1`,`quiz_2`,`quiz_3`,`quiz_4`)) / 3 * 0.10) STORED,
  `assignments` decimal(5,2) NOT NULL DEFAULT 0.00,
  `mid_exam` decimal(5,2) NOT NULL DEFAULT 0.00,
  `end_exam_marks` decimal(5,2) NOT NULL DEFAULT 0.00,
  `CA_total_marks` decimal(5,2) GENERATED ALWAYS AS (`final_quiz_marks` + `assignments` * 0.10 + `mid_exam` * 0.20) STORED,
  `final_marks` decimal(5,2) GENERATED ALWAYS AS (`final_quiz_marks` + `assignments` * 0.10 + `mid_exam` * 0.20 + `end_exam_marks` * 0.60) STORED
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tcs1212_course_marks`
--

INSERT INTO `tcs1212_course_marks` (`student_id`, `quiz_1`, `quiz_2`, `quiz_3`, `quiz_4`, `assignments`, `mid_exam`, `end_exam_marks`) VALUES
('TG1021', 58.00, 0.00, 89.00, 50.00, 90.00, 85.00, 50.00),
('TG1031', 99.00, 90.00, 44.50, 76.00, 75.00, 87.00, 87.00),
('TG1032', 40.50, 90.50, 0.00, 59.00, 65.00, 58.00, 58.00),
('TG1045', 88.00, 70.00, 75.50, 86.50, 85.00, 75.00, 75.00),
('TG1047', 67.00, 90.70, 68.50, 76.00, 85.00, 78.00, 78.00),
('TG1062', 50.00, 50.00, 20.00, 26.00, 20.00, 50.00, 50.00),
('TG1064', 58.00, 20.00, 65.00, 80.00, 60.00, 76.00, 76.00),
('TG1067', 90.00, 90.00, 80.00, 80.00, 85.00, 94.00, 94.00),
('TG1084', 70.00, 80.00, 60.00, 70.00, 60.00, 73.00, 73.00),
('TG1087', 60.00, 70.00, 30.00, 60.00, 90.00, 80.00, 50.00),
('TG827', 90.00, 80.00, 80.00, 90.00, 67.00, 89.00, 89.00),
('TG845', 83.00, 80.00, 90.00, 65.00, 87.00, 90.00, 90.00),
('TG827', 70.00, 50.50, 90.00, 85.00, 69.00, 76.00, 76.00),
('TG845', 50.50, 65.50, 40.70, 55.00, 67.00, 63.00, 63.00),
('TG847', 64.80, 80.70, 80.00, 90.00, 85.00, 87.00, 78.00),
('TG857', 90.00, 70.00, 80.00, 60.80, 85.00, 65.00, 65.00),
('TG867', 50.00, 90.00, 40.00, 80.00, 85.00, 78.00, 78.00),
('TG897', 90.00, 80.00, 80.00, 90.00, 95.00, 72.00, 72.00),
('TG997', 60.00, 80.00, 70.00, 45.50, 87.00, 65.00, 65.00);

-- --------------------------------------------------------

--
-- Table structure for table `teaches`
--

CREATE TABLE `teaches` (
  `lecture_id` varchar(10) NOT NULL,
  `course_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teaches`
--

INSERT INTO `teaches` (`lecture_id`, `course_id`) VALUES
('L0001', 'ICT1212'),
('L0001', 'ICT1222'),
('L0002', 'ICT1242'),
('L0002', 'ICT1253'),
('L0005', 'TMS1233');

-- --------------------------------------------------------

--
-- Table structure for table `technical_officer`
--

CREATE TABLE `technical_officer` (
  `technical_id` varchar(10) NOT NULL,
  `department` varchar(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `technical_officer`
--

INSERT INTO `technical_officer` (`technical_id`, `department`, `user_id`) VALUES
('Tec_Off_01', 'ICT', 4),
('Tec_Off_02', 'ICT', 23),
('Tec_Off_04', 'ICT', 24),
('Tec_Off_07', 'ET', 25),
('Tec_Off_09', 'BST', 26);

-- --------------------------------------------------------

--
-- Table structure for table `tms1233_course_marks`
--

CREATE TABLE `tms1233_course_marks` (
  `student_id` varchar(10) NOT NULL,
  `quiz_1` decimal(5,2) NOT NULL DEFAULT 0.00,
  `quiz_2` decimal(5,2) NOT NULL DEFAULT 0.00,
  `quiz_3` decimal(5,2) NOT NULL DEFAULT 0.00,
  `quiz_4` decimal(5,2) NOT NULL DEFAULT 0.00,
  `final_quiz_marks` decimal(5,2) GENERATED ALWAYS AS ((`quiz_1` + `quiz_2` + `quiz_3` + `quiz_4` - least(`quiz_1`,`quiz_2`,`quiz_3`,`quiz_4`)) / 3 * 0.10) STORED,
  `assignments_tutorial` decimal(5,2) NOT NULL DEFAULT 0.00,
  `mid_exam_marks` decimal(5,2) NOT NULL DEFAULT 0.00,
  `end_exam_marks` decimal(5,2) NOT NULL DEFAULT 0.00,
  `CA_total_marks` decimal(5,2) GENERATED ALWAYS AS (`final_quiz_marks` + `assignments_tutorial` * 0.05 + `mid_exam_marks` * 0.25) STORED,
  `final_marks` decimal(5,2) GENERATED ALWAYS AS (`final_quiz_marks` + `assignments_tutorial` * 0.05 + `mid_exam_marks` * 0.25 + `end_exam_marks` * 0.60) STORED
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tms1233_course_marks`
--

INSERT INTO `tms1233_course_marks` (`student_id`, `quiz_1`, `quiz_2`, `quiz_3`, `quiz_4`, `assignments_tutorial`, `mid_exam_marks`, `end_exam_marks`) VALUES
('TG1021', 48.00, 50.00, 89.00, 50.00, 90.00, 85.00, 50.00),
('TG1031', 89.00, 90.00, 44.50, 76.00, 75.00, 87.00, 87.00),
('TG1032', 69.50, 90.50, 0.00, 59.00, 65.00, 58.00, 58.00),
('TG1045', 88.00, 70.00, 75.50, 86.50, 85.00, 75.00, 75.00),
('TG1047', 68.00, 90.70, 68.50, 76.00, 85.00, 78.00, 78.00),
('TG1062', 50.00, 50.00, 20.00, 26.00, 20.00, 50.00, 50.00),
('TG1064', 58.00, 20.00, 65.00, 80.00, 60.00, 76.00, 76.00),
('TG1067', 90.00, 90.00, 80.00, 80.00, 85.00, 94.00, 94.00),
('TG1084', 70.00, 80.00, 70.00, 70.00, 60.00, 73.00, 73.00),
('TG1087', 60.00, 70.00, 30.00, 60.00, 90.00, 80.00, 50.00),
('TG827', 90.00, 80.00, 80.00, 90.00, 67.00, 89.00, 89.00),
('TG845', 83.00, 80.00, 90.00, 65.00, 87.00, 90.00, 90.00),
('TG827', 70.00, 50.50, 90.00, 85.00, 69.00, 76.00, 76.00),
('TG845', 50.50, 65.50, 40.70, 55.00, 67.00, 63.00, 63.00),
('TG847', 64.80, 80.70, 80.00, 90.00, 85.00, 87.00, 78.00),
('TG857', 90.00, 70.00, 80.00, 60.80, 85.00, 65.00, 65.00),
('TG867', 50.00, 90.00, 40.00, 80.00, 85.00, 78.00, 78.00),
('TG897', 90.00, 80.00, 80.00, 90.00, 95.00, 72.00, 72.00),
('TG997', 60.00, 80.00, 70.00, 45.50, 87.00, 65.00, 65.00);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(9) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `role` varchar(15) NOT NULL,
  `contact_no` int(10) NOT NULL,
  `password` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `email`, `role`, `contact_no`, `password`) VALUES
(1, 'Abel', 'Tesfaye', 'abeltes@gmail.com', 'Dean', 718032400, 'c0fb40babb9b'),
(2, 'Kavidu', 'Sinhavansa', 'kaviduSin@gmail.com', 'Lecturer', 718035670, '18ed16e69569'),
(3, 'Nuwan', 'Laksiri', 'Nuwanlaksiri@gmail.com', 'Lecturer', 761234567, 'af16d8ef24a6'),
(4, 'Yohani', 'De Silva', 'yohani123@gmail.com', 'Tech_Officer', 761234573, '37a59eef613b'),
(5, 'Saranga', 'Disanayaka', 'saranga21@gmail.com', 'Student', 761234545, 'a1a38ae21b71'),
(6, 'Chitral', 'Somapala', 'chitral821@gmail.com', 'Student', 761234512, '7c3242058215'),
(7, 'Danith', 'Sri', 'sridanith@gmail.com', 'Student', 761234565, '0f281d173f0f'),
(8, 'Krishanthi', 'Kalaichelvan', 'krish23@gmail.com', 'Student', 761234678, 'f673d9991a24'),
(9, 'Imana', 'Irfan', 'iman32@gmail.com', 'Student', 761234789, 'dbe4f7a38136'),
(10, 'Asma', 'Akram', 'asmaakram2@gmail.com', 'Student', 761234654, '2ae667aefbb9'),
(11, 'Ashfa', 'Nisthar', 'ashfnis@gmail.com', 'Student', 761234432, '00f7225b7be5'),
(12, 'Shukry', 'Mohammed', 'shukry32@gmail.com', 'Student', 761234546, 'a6b49fb3a89f'),
(13, 'Umesha', 'Hewage', 'umesha52@gmail.com', 'Student', 761234876, '1ef83d4b898d'),
(14, 'Keerthy', 'Pandiyan', 'keerthy23@gmail.com', 'Student', 761234654, '8993afb7f090'),
(15, 'Adithya', 'Baskaran', 'adiyhya43@gmail.com', 'Student', 761234687, '7360409d967a'),
(16, 'Dasun', 'Shanaka', 'subash@gmail.com', 'Dean', 718032400, '7c4308315165'),
(17, 'Kumar', 'Sangakkara', 'kumars@gmail.com', 'Lecturer', 718032400, 'a65872712289'),
(18, 'Rohit', 'Sharma', 'rohit123@gmail.com', 'Lecturer', 718032567, '8ee6f08bd5c3'),
(19, 'Shaheen', 'Afridi', 'shaheen@gmail.com', 'Lecturer', 718036547, '6199031a5f81'),
(20, 'Kusal', 'Mendis', 'kusal12@gmail.com', 'Student', 718012347, '82471fe79c34'),
(21, 'Dilani', 'Manodra', 'manodra@gmail.com', 'Student', 718012347, '0e15ae16aafd'),
(22, 'Smriti', 'Mandhana', 'smriti43@gmail.com', 'Student', 718562347, '9fad50da22fd'),
(23, 'Otara', 'Gunawardane', 'otara87@gmail.com', 'Tech_Officer', 718562347, 'e9f8b28be27a'),
(24, 'Jacquline', 'Fernandaz', 'fernandaz43@gmail.com', 'Tech_Officer', 768534547, '175354034ab9'),
(25, 'Pooja', 'Rajapaksha', 'rajapaksha@gmail.com', 'Tech_Officer', 768567847, '4bcc674371a9'),
(26, 'Raj', 'Kumarathunga', 'raj432@gmail.com', 'Tech_Officer', 768876847, 'cac5ff630494'),
(27, 'Dineth', 'Sriwardana', 'dineth@gmail.com', 'student', 773110507, '0a3c183188dd'),
(28, 'Sajeeya', 'Roshan', 'sajirshn@gmail.com', 'student', 775340058, '3aabbb98c53a');

-- --------------------------------------------------------

--
-- Structure for view `all_ca_eligibility`
--
DROP TABLE IF EXISTS `all_ca_eligibility`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `all_ca_eligibility`  AS SELECT `all_courses`.`student_id` AS `student_id`, `all_courses`.`course_id` AS `course_id`, CASE WHEN `all_courses`.`CA_total_marks` > 19.5 THEN 'Eligible' ELSE 'Not Eligible' END AS `Eligibility` FROM (select `eng1222_course_marks`.`student_id` AS `student_id`,'ENG1222' AS `course_id`,`eng1222_course_marks`.`CA_total_marks` AS `CA_total_marks` from `eng1222_course_marks` union all select `ict1212_course_marks`.`student_id` AS `student_id`,'ICT1212' AS `course_id`,`ict1212_course_marks`.`CA_total_marks` AS `CA_total_marks` from `ict1212_course_marks` union all select `ict1222_course_marks`.`student_id` AS `student_id`,'ICT1222' AS `course_id`,`ict1222_course_marks`.`CA_total_marks` AS `CA_total_marks` from `ict1222_course_marks` union all select `ict1242_course_marks`.`student_id` AS `student_id`,'ICT1242' AS `course_id`,`ict1242_course_marks`.`CA_total_marks` AS `CA_total_marks` from `ict1242_course_marks` union all select `tcs1212_course_marks`.`student_id` AS `student_id`,'TCS1212' AS `course_id`,`tcs1212_course_marks`.`CA_total_marks` AS `CA_total_marks` from `tcs1212_course_marks` union all select `tms1233_course_marks`.`student_id` AS `student_id`,'TMS1233' AS `course_id`,`tms1233_course_marks`.`CA_total_marks` AS `CA_total_marks` from `tms1233_course_marks` union all select `ict1253_course_marks`.`student_id` AS `student_id`,'ICT1253' AS `course_id`,`ict1253_course_marks`.`CA_total_marks` AS `CA_total_marks` from `ict1253_course_marks`) AS `all_courses` ;

-- --------------------------------------------------------

--
-- Structure for view `all_courses_grades`
--
DROP TABLE IF EXISTS `all_courses_grades`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `all_courses_grades`  AS SELECT `e`.`student_id` AS `student_id`, max(case when `e`.`final_marks` >= 90 then 'A+' when `e`.`final_marks` >= 85 then 'A' when `e`.`final_marks` >= 80 then 'A-' when `e`.`final_marks` >= 75 then 'B+' when `e`.`final_marks` >= 70 then 'B' when `e`.`final_marks` >= 65 then 'B-' when `e`.`final_marks` >= 60 then 'C+' when `e`.`final_marks` >= 55 then 'C' when `e`.`final_marks` >= 50 then 'C-' when `e`.`final_marks` >= 45 then 'D' else 'F' end) AS `ENG1222_grade`, max(case when `i`.`final_marks` >= 90 then 'A+' when `i`.`final_marks` >= 85 then 'A' when `i`.`final_marks` >= 80 then 'A-' when `i`.`final_marks` >= 75 then 'B+' when `i`.`final_marks` >= 70 then 'B' when `i`.`final_marks` >= 65 then 'B-' when `i`.`final_marks` >= 60 then 'C+' when `i`.`final_marks` >= 55 then 'C' when `i`.`final_marks` >= 50 then 'C-' when `i`.`final_marks` >= 45 then 'D' else 'F' end) AS `ICT1212_grade`, max(case when `i3`.`final_marks` >= 90 then 'A+' when `i3`.`final_marks` >= 85 then 'A' when `i3`.`final_marks` >= 80 then 'A-' when `i3`.`final_marks` >= 75 then 'B+' when `i3`.`final_marks` >= 70 then 'B' when `i3`.`final_marks` >= 65 then 'B-' when `i3`.`final_marks` >= 60 then 'C+' when `i3`.`final_marks` >= 55 then 'C' when `i3`.`final_marks` >= 50 then 'C-' when `i3`.`final_marks` >= 45 then 'D' else 'F' end) AS `ICT1233_grade`, max(case when `i2`.`final_marks` >= 90 then 'A+' when `i2`.`final_marks` >= 85 then 'A' when `i2`.`final_marks` >= 80 then 'A-' when `i2`.`final_marks` >= 75 then 'B+' when `i2`.`final_marks` >= 70 then 'B' when `i2`.`final_marks` >= 65 then 'B-' when `i2`.`final_marks` >= 60 then 'C+' when `i2`.`final_marks` >= 55 then 'C' when `i2`.`final_marks` >= 50 then 'C-' when `i2`.`final_marks` >= 45 then 'D' else 'F' end) AS `ICT1222_grade`, max(case when `i4`.`final_marks` >= 90 then 'A+' when `i4`.`final_marks` >= 85 then 'A' when `i4`.`final_marks` >= 80 then 'A-' when `i4`.`final_marks` >= 75 then 'B+' when `i4`.`final_marks` >= 70 then 'B' when `i4`.`final_marks` >= 65 then 'B-' when `i4`.`final_marks` >= 60 then 'C+' when `i4`.`final_marks` >= 55 then 'C' when `i4`.`final_marks` >= 50 then 'C-' when `i4`.`final_marks` >= 45 then 'D' else 'F' end) AS `ICT1242_grade`, max(case when `tcs`.`final_marks` >= 90 then 'A+' when `tcs`.`final_marks` >= 85 then 'A' when `tcs`.`final_marks` >= 80 then 'A-' when `tcs`.`final_marks` >= 75 then 'B+' when `tcs`.`final_marks` >= 70 then 'B' when `tcs`.`final_marks` >= 65 then 'B-' when `tcs`.`final_marks` >= 60 then 'C+' when `tcs`.`final_marks` >= 55 then 'C' when `tcs`.`final_marks` >= 50 then 'C-' when `tcs`.`final_marks` >= 45 then 'D' else 'F' end) AS `TCS1212_grade`, max(case when `tms`.`final_marks` >= 90 then 'A+' when `tms`.`final_marks` >= 85 then 'A' when `tms`.`final_marks` >= 80 then 'A-' when `tms`.`final_marks` >= 75 then 'B+' when `tms`.`final_marks` >= 70 then 'B' when `tms`.`final_marks` >= 65 then 'B-' when `tms`.`final_marks` >= 60 then 'C+' when `tms`.`final_marks` >= 55 then 'C' when `tms`.`final_marks` >= 50 then 'C-' when `tms`.`final_marks` >= 45 then 'D' else 'F' end) AS `TMS1233_grade`, max(case when `i5`.`final_marks` >= 90 then 'A+' when `i5`.`final_marks` >= 85 then 'A' when `i5`.`final_marks` >= 80 then 'A-' when `i5`.`final_marks` >= 75 then 'B+' when `i5`.`final_marks` >= 70 then 'B' when `i5`.`final_marks` >= 65 then 'B-' when `i5`.`final_marks` >= 60 then 'C+' when `i5`.`final_marks` >= 55 then 'C' when `i5`.`final_marks` >= 50 then 'C-' when `i5`.`final_marks` >= 45 then 'D' else 'F' end) AS `ICT1253_grade` FROM (((((((`eng1222_course_marks` `e` left join `ict1212_course_marks` `i` on(`e`.`student_id` = `i`.`student_id`)) left join `ict1233_course_marks` `i3` on(`e`.`student_id` = `i3`.`student_id`)) left join `ict1222_course_marks` `i2` on(`e`.`student_id` = `i2`.`student_id`)) left join `ict1242_course_marks` `i4` on(`e`.`student_id` = `i4`.`student_id`)) left join `tcs1212_course_marks` `tcs` on(`e`.`student_id` = `tcs`.`student_id`)) left join `tms1233_course_marks` `tms` on(`e`.`student_id` = `tms`.`student_id`)) left join `ict1253_course_marks` `i5` on(`e`.`student_id` = `i5`.`student_id`)) GROUP BY `e`.`student_id` ;

-- --------------------------------------------------------

--
-- Structure for view `all_final_marks`
--
DROP TABLE IF EXISTS `all_final_marks`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `all_final_marks`  AS SELECT `em`.`student_id` AS `Student_ID`, max(coalesce(`eng`.`final_marks`,0)) AS `ENG1222_Final_Marks`, max(coalesce(`ict1`.`final_marks`,0)) AS `ICT1212_Final_Marks`, max(coalesce(`ict2`.`final_marks`,0)) AS `ICT1233_Final_Marks`, max(coalesce(`ict3`.`final_marks`,0)) AS `ICT1222_Final_Marks`, max(coalesce(`ict4`.`final_marks`,0)) AS `ICT1242_Final_Marks`, max(coalesce(`tcs`.`final_marks`,0)) AS `TCS1212_Final_Marks`, max(coalesce(`tms`.`final_marks`,0)) AS `TMS1233_Final_Marks`, max(coalesce(`ict5`.`final_marks`,0)) AS `ICT1253_Final_Marks` FROM (((((((((select distinct `eng1222_course_marks`.`student_id` AS `student_id` from `eng1222_course_marks` intersect select distinct `ict1212_course_marks`.`student_id` AS `student_id` from `ict1212_course_marks` intersect select distinct `ict1233_course_marks`.`student_id` AS `student_id` from `ict1233_course_marks` intersect select distinct `ict1222_course_marks`.`student_id` AS `student_id` from `ict1222_course_marks` intersect select distinct `ict1242_course_marks`.`student_id` AS `student_id` from `ict1242_course_marks` intersect select distinct `tcs1212_course_marks`.`student_id` AS `student_id` from `tcs1212_course_marks` intersect select distinct `tms1233_course_marks`.`student_id` AS `student_id` from `tms1233_course_marks` intersect select distinct `ict1253_course_marks`.`student_id` AS `student_id` from `ict1253_course_marks`) `em` left join (select distinct `eng1222_course_marks`.`student_id` AS `student_id`,`eng1222_course_marks`.`final_marks` AS `final_marks` from `eng1222_course_marks`) `eng` on(`em`.`student_id` = `eng`.`student_id`)) left join (select distinct `ict1212_course_marks`.`student_id` AS `student_id`,`ict1212_course_marks`.`final_marks` AS `final_marks` from `ict1212_course_marks`) `ict1` on(`em`.`student_id` = `ict1`.`student_id`)) left join (select distinct `ict1233_course_marks`.`student_id` AS `student_id`,`ict1233_course_marks`.`final_marks` AS `final_marks` from `ict1233_course_marks`) `ict2` on(`em`.`student_id` = `ict2`.`student_id`)) left join (select distinct `ict1222_course_marks`.`student_id` AS `student_id`,`ict1222_course_marks`.`final_marks` AS `final_marks` from `ict1222_course_marks`) `ict3` on(`em`.`student_id` = `ict3`.`student_id`)) left join (select distinct `ict1242_course_marks`.`student_id` AS `student_id`,`ict1242_course_marks`.`final_marks` AS `final_marks` from `ict1242_course_marks`) `ict4` on(`em`.`student_id` = `ict4`.`student_id`)) left join (select distinct `tcs1212_course_marks`.`student_id` AS `student_id`,`tcs1212_course_marks`.`final_marks` AS `final_marks` from `tcs1212_course_marks`) `tcs` on(`em`.`student_id` = `tcs`.`student_id`)) left join (select distinct `tms1233_course_marks`.`student_id` AS `student_id`,`tms1233_course_marks`.`final_marks` AS `final_marks` from `tms1233_course_marks`) `tms` on(`em`.`student_id` = `tms`.`student_id`)) left join (select distinct `ict1253_course_marks`.`student_id` AS `student_id`,`ict1253_course_marks`.`final_marks` AS `final_marks` from `ict1253_course_marks`) `ict5` on(`em`.`student_id` = `ict5`.`student_id`)) GROUP BY `em`.`student_id` ;

-- --------------------------------------------------------

--
-- Structure for view `all_grades_points`
--
DROP TABLE IF EXISTS `all_grades_points`;

CREATE ALGORITHM=UNDEFINED DEFINER=`dean`@`localhost` SQL SECURITY DEFINER VIEW `all_grades_points`  AS SELECT `all_courses_grades`.`student_id` AS `student_id`, CASE `all_courses_grades`.`ENG1222_grade` WHEN 'A+' THEN 4.0 WHEN 'A' THEN 4.0 WHEN 'A-' THEN 3.7 WHEN 'B+' THEN 3.0 WHEN 'B' THEN 2.7 WHEN 'B-' THEN 2.3 WHEN 'C+' THEN 2.0 WHEN 'C' THEN 1.5 WHEN 'C-' THEN 1.0 WHEN 'D' THEN 0.0 ELSE NULL END AS `ENG1222`, CASE `all_courses_grades`.`ICT1212_grade` WHEN 'A+' THEN 4.0 WHEN 'A' THEN 4.0 WHEN 'A-' THEN 3.7 WHEN 'B+' THEN 3.0 WHEN 'B' THEN 2.7 WHEN 'B-' THEN 2.3 WHEN 'C+' THEN 2.0 WHEN 'C' THEN 1.5 WHEN 'C-' THEN 1.0 WHEN 'D' THEN 0.0 ELSE NULL END AS `ICT1212`, CASE `all_courses_grades`.`ICT1233_grade` WHEN 'A+' THEN 4.0 WHEN 'A' THEN 4.0 WHEN 'A-' THEN 3.7 WHEN 'B+' THEN 3.0 WHEN 'B' THEN 2.7 WHEN 'B-' THEN 2.3 WHEN 'C+' THEN 2.0 WHEN 'C' THEN 1.5 WHEN 'C-' THEN 1.0 WHEN 'D' THEN 0.0 ELSE NULL END AS `ICT1233`, CASE `all_courses_grades`.`ICT1222_grade` WHEN 'A+' THEN 4.0 WHEN 'A' THEN 4.0 WHEN 'A-' THEN 3.7 WHEN 'B+' THEN 3.0 WHEN 'B' THEN 2.7 WHEN 'B-' THEN 2.3 WHEN 'C+' THEN 2.0 WHEN 'C' THEN 1.5 WHEN 'C-' THEN 1.0 WHEN 'D' THEN 0.0 ELSE NULL END AS `ICT1222`, CASE `all_courses_grades`.`ICT1242_grade` WHEN 'A+' THEN 4.0 WHEN 'A' THEN 4.0 WHEN 'A-' THEN 3.7 WHEN 'B+' THEN 3.0 WHEN 'B' THEN 2.7 WHEN 'B-' THEN 2.3 WHEN 'C+' THEN 2.0 WHEN 'C' THEN 1.5 WHEN 'C-' THEN 1.0 WHEN 'D' THEN 0.0 ELSE NULL END AS `ICT1242`, CASE `all_courses_grades`.`TCS1212_grade` WHEN 'A+' THEN 4.0 WHEN 'A' THEN 4.0 WHEN 'A-' THEN 3.7 WHEN 'B+' THEN 3.0 WHEN 'B' THEN 2.7 WHEN 'B-' THEN 2.3 WHEN 'C+' THEN 2.0 WHEN 'C' THEN 1.5 WHEN 'C-' THEN 1.0 WHEN 'D' THEN 0.0 ELSE NULL END AS `TCS1212`, CASE `all_courses_grades`.`TMS1233_grade` WHEN 'A+' THEN 4.0 WHEN 'A' THEN 4.0 WHEN 'A-' THEN 3.7 WHEN 'B+' THEN 3.0 WHEN 'B' THEN 2.7 WHEN 'B-' THEN 2.3 WHEN 'C+' THEN 2.0 WHEN 'C' THEN 1.5 WHEN 'C-' THEN 1.0 WHEN 'D' THEN 0.0 ELSE NULL END AS `TMS1233`, CASE `all_courses_grades`.`ICT1253_grade` WHEN 'A+' THEN 4.0 WHEN 'A' THEN 4.0 WHEN 'A-' THEN 3.7 WHEN 'B+' THEN 3.0 WHEN 'B' THEN 2.7 WHEN 'B-' THEN 2.3 WHEN 'C+' THEN 2.0 WHEN 'C' THEN 1.5 WHEN 'C-' THEN 1.0 WHEN 'D' THEN 0.0 ELSE NULL END AS `ICT1253` FROM `all_courses_grades` ;

-- --------------------------------------------------------

--
-- Structure for view `attendance_status`
--
DROP TABLE IF EXISTS `attendance_status`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `attendance_status`  AS SELECT `attendance`.`student_id` AS `student_id`, `attendance`.`course_id` AS `course_id`, `attendance`.`total_attended` AS `total_attended`, CASE WHEN `attendance`.`total_attended` / 15.0 * 100 >= 80 THEN 'eligible' ELSE 'not eligible' END AS `eligibility_status` FROM `attendance` ;

-- --------------------------------------------------------

--
-- Structure for view `ca_total_marks`
--
DROP TABLE IF EXISTS `ca_total_marks`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ca_total_marks`  AS SELECT `em`.`student_id` AS `Student_ID`, max(coalesce(`eng`.`CA_total_marks`,0)) AS `ENG1222_CA_total_marks`, max(coalesce(`ict1`.`CA_total_marks`,0)) AS `ICT1212_CA_total_marks`, max(coalesce(`ict3`.`CA_total_marks`,0)) AS `ICT1222_CA_total_marks`, max(coalesce(`ict4`.`CA_total_marks`,0)) AS `ICT1242_CA_total_marks`, max(coalesce(`tcs`.`CA_total_marks`,0)) AS `TCS1212_CA_total_marks`, max(coalesce(`tms`.`CA_total_marks`,0)) AS `TMS1233_CA_total_marks`, max(coalesce(`ict5`.`CA_total_marks`,0)) AS `ICT1253_CA_total_marks` FROM ((((((((select distinct `eng1222_course_marks`.`student_id` AS `student_id` from `eng1222_course_marks` intersect select distinct `ict1212_course_marks`.`student_id` AS `student_id` from `ict1212_course_marks` intersect select distinct `ict1222_course_marks`.`student_id` AS `student_id` from `ict1222_course_marks` intersect select distinct `ict1242_course_marks`.`student_id` AS `student_id` from `ict1242_course_marks` intersect select distinct `tcs1212_course_marks`.`student_id` AS `student_id` from `tcs1212_course_marks` intersect select distinct `tms1233_course_marks`.`student_id` AS `student_id` from `tms1233_course_marks` intersect select distinct `ict1253_course_marks`.`student_id` AS `student_id` from `ict1253_course_marks`) `em` left join (select distinct `eng1222_course_marks`.`student_id` AS `student_id`,`eng1222_course_marks`.`CA_total_marks` AS `CA_total_marks` from `eng1222_course_marks`) `eng` on(`em`.`student_id` = `eng`.`student_id`)) left join (select distinct `ict1212_course_marks`.`student_id` AS `student_id`,`ict1212_course_marks`.`CA_total_marks` AS `CA_total_marks` from `ict1212_course_marks`) `ict1` on(`em`.`student_id` = `ict1`.`student_id`)) left join (select distinct `ict1222_course_marks`.`student_id` AS `student_id`,`ict1222_course_marks`.`CA_total_marks` AS `CA_total_marks` from `ict1222_course_marks`) `ict3` on(`em`.`student_id` = `ict3`.`student_id`)) left join (select distinct `ict1242_course_marks`.`student_id` AS `student_id`,`ict1242_course_marks`.`CA_total_marks` AS `CA_total_marks` from `ict1242_course_marks`) `ict4` on(`em`.`student_id` = `ict4`.`student_id`)) left join (select distinct `tcs1212_course_marks`.`student_id` AS `student_id`,`tcs1212_course_marks`.`CA_total_marks` AS `CA_total_marks` from `tcs1212_course_marks`) `tcs` on(`em`.`student_id` = `tcs`.`student_id`)) left join (select distinct `tms1233_course_marks`.`student_id` AS `student_id`,`tms1233_course_marks`.`CA_total_marks` AS `CA_total_marks` from `tms1233_course_marks`) `tms` on(`em`.`student_id` = `tms`.`student_id`)) left join (select distinct `ict1253_course_marks`.`student_id` AS `student_id`,`ict1253_course_marks`.`CA_total_marks` AS `CA_total_marks` from `ict1253_course_marks`) `ict5` on(`em`.`student_id` = `ict5`.`student_id`)) GROUP BY `em`.`student_id` ;

-- --------------------------------------------------------

--
-- Structure for view `details_of_students`
--
DROP TABLE IF EXISTS `details_of_students`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `details_of_students`  AS SELECT `all_final_marks`.`Student_ID` AS `student_id`, `student_details`.`full_name` AS `full_name`, `all_final_marks`.`ENG1222_Final_Marks` AS `ENG1222_Final_Marks`, `all_final_marks`.`ICT1212_Final_Marks` AS `ICT1212_Final_Marks`, `all_final_marks`.`ICT1233_Final_Marks` AS `ICT1233_Final_Marks`, `all_final_marks`.`ICT1222_Final_Marks` AS `ICT1222_Final_Marks`, `all_final_marks`.`ICT1242_Final_Marks` AS `ICT1242_Final_Marks`, `all_final_marks`.`TCS1212_Final_Marks` AS `TCS1212_Final_Marks`, `all_final_marks`.`TMS1233_Final_Marks` AS `TMS1233_Final_Marks`, `all_final_marks`.`ICT1253_Final_Marks` AS `ICT1253_Final_Marks` FROM (`all_final_marks` join `student_details` on(`all_final_marks`.`Student_ID` = `student_details`.`student_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `final_exam_eligibility`
--
DROP TABLE IF EXISTS `final_exam_eligibility`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `final_exam_eligibility`  AS SELECT `a`.`student_id` AS `student_id`, `a`.`course_id` AS `course_id`, CASE WHEN `c`.`Eligibility` = 'Eligible' AND `a`.`eligibility_status` = 'Eligible' THEN 'E' WHEN `c`.`Eligibility` = 'Not Eligible' AND `a`.`eligibility_status` = 'Not Eligible' THEN 'NE' WHEN `c`.`Eligibility` = 'Eligible' AND `a`.`eligibility_status` = 'Not Eligible' THEN 'NE*' WHEN `c`.`Eligibility` = 'Not Eligible' AND `a`.`eligibility_status` = 'Eligible' THEN 'NE**' END AS `final_exam_eligibility` FROM (`attendance_status` `a` join `all_ca_eligibility` `c` on(`a`.`student_id` = `c`.`student_id` and `a`.`course_id` = `c`.`course_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `proper_students_final_results`
--
DROP TABLE IF EXISTS `proper_students_final_results`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `proper_students_final_results`  AS SELECT DISTINCT `g`.`student_id` AS `student_id`, `g`.`full_name` AS `full_name`, `g`.`ENG1222_grade` AS `ENG1222_grade`, `g`.`ICT1212_grade` AS `ICT1212_grade`, `g`.`ICT1233_grade` AS `ICT1233_grade`, `g`.`ICT1222_grade` AS `ICT1222_grade`, `g`.`ICT1242_grade` AS `ICT1242_grade`, `g`.`TCS1212_grade` AS `TCS1212_grade`, `g`.`TMS1233_grade` AS `TMS1233_grade`, `g`.`ICT1253_grade` AS `ICT1253_grade`, `g`.`SGPA` AS `SGPA` FROM (`students_final_grades` `g` join (select distinct `f`.`Student_ID` AS `student_id`,`e`.`course_id` AS `course_id` from (`final_exam_eligibility` `e` join `all_final_marks` `f` on(`e`.`student_id` = `f`.`Student_ID`)) where `e`.`final_exam_eligibility` = 'E') `eligible_students` on(`g`.`student_id` = `eligible_students`.`student_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `repeaters_results`
--
DROP TABLE IF EXISTS `repeaters_results`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `repeaters_results`  AS SELECT `repeat_students`.`student_id` AS `student_id`, `repeat_students`.`full_name` AS `full_name`, CASE WHEN `repeat_students`.`student_id` in ('TG997','TG845') THEN 'C' WHEN `repeat_students`.`ENG1222_grade` is null THEN NULL ELSE '-' END AS `ENG1222_grade`, CASE WHEN `repeat_students`.`student_id` in ('TG897','TG867') THEN 'C' WHEN `repeat_students`.`ICT1212_grade` is null THEN NULL ELSE '-' END AS `ICT1212_grade`, CASE WHEN `repeat_students`.`student_id` in ('TG897','TG857') THEN 'C' WHEN `repeat_students`.`ICT1233_grade` is null THEN NULL ELSE '-' END AS `ICT1233_grade`, CASE WHEN `repeat_students`.`student_id` in ('TG897','TG857','TG845') THEN 'C' WHEN `repeat_students`.`TMS1233_grade` is null THEN NULL ELSE '-' END AS `TMS1233_grade`, CASE WHEN `repeat_students`.`student_id` in ('TG897','TG857') THEN 'C' WHEN `repeat_students`.`ICT1222_grade` is null THEN NULL ELSE '-' END AS `ICT1222_grade`, CASE WHEN `repeat_students`.`student_id` in ('TG897','TG857') THEN 'C' WHEN `repeat_students`.`ICT1242_grade` is null THEN NULL ELSE '-' END AS `ICT1242_grade`, CASE WHEN `repeat_students`.`student_id` in ('TG847','TG857') THEN 'C' WHEN `repeat_students`.`TCS1212_grade` is null THEN NULL ELSE '-' END AS `TCS1212_grade`, CASE WHEN `repeat_students`.`student_id` in ('TG897','TG867') THEN 'C' WHEN `repeat_students`.`ICT1253_grade` is null THEN NULL ELSE '-' END AS `ICT1253_grade` FROM `repeat_students` ;

-- --------------------------------------------------------

--
-- Structure for view `repeat_students`
--
DROP TABLE IF EXISTS `repeat_students`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `repeat_students`  AS SELECT `students_final_grades`.`student_id` AS `student_id`, `students_final_grades`.`full_name` AS `full_name`, `students_final_grades`.`ENG1222_grade` AS `ENG1222_grade`, `students_final_grades`.`ICT1212_grade` AS `ICT1212_grade`, `students_final_grades`.`ICT1233_grade` AS `ICT1233_grade`, `students_final_grades`.`ICT1222_grade` AS `ICT1222_grade`, `students_final_grades`.`ICT1242_grade` AS `ICT1242_grade`, `students_final_grades`.`TCS1212_grade` AS `TCS1212_grade`, `students_final_grades`.`TMS1233_grade` AS `TMS1233_grade`, `students_final_grades`.`ICT1253_grade` AS `ICT1253_grade`, `students_final_grades`.`SGPA` AS `SGPA` FROM `students_final_grades` ORDER BY `students_final_grades`.`student_id` DESC LIMIT 0, 6 ;

-- --------------------------------------------------------

--
-- Structure for view `students_final_grades`
--
DROP TABLE IF EXISTS `students_final_grades`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `students_final_grades`  AS SELECT `sd`.`student_id` AS `student_id`, `sd`.`full_name` AS `full_name`, `acg`.`ENG1222_grade` AS `ENG1222_grade`, `acg`.`ICT1212_grade` AS `ICT1212_grade`, `acg`.`ICT1233_grade` AS `ICT1233_grade`, `acg`.`ICT1222_grade` AS `ICT1222_grade`, `acg`.`ICT1242_grade` AS `ICT1242_grade`, `acg`.`TCS1212_grade` AS `TCS1212_grade`, `acg`.`TMS1233_grade` AS `TMS1233_grade`, `acg`.`ICT1253_grade` AS `ICT1253_grade`, `sg`.`SGPA` AS `SGPA` FROM ((`student_details` `sd` left join `all_courses_grades` `acg` on(`sd`.`student_id` = `acg`.`student_id`)) left join `student_gpa` `sg` on(`sd`.`student_id` = `sg`.`student_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `student_details`
--
DROP TABLE IF EXISTS `student_details`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `student_details`  AS SELECT `s`.`student_id` AS `student_id`, `s`.`batch` AS `batch`, concat(`u`.`first_name`,' ',`u`.`last_name`) AS `full_name` FROM (`student` `s` join `user` `u` on(`s`.`user_id` = `u`.`user_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `student_gpa`
--
DROP TABLE IF EXISTS `student_gpa`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `student_gpa`  AS SELECT `agp`.`student_id` AS `student_id`, round(sum(case when `agp`.`ENG1222` is not null then `agp`.`ENG1222` * `c1`.`credits` else 0 end + case when `agp`.`ICT1212` is not null then `agp`.`ICT1212` * `c2`.`credits` else 0 end + case when `agp`.`ICT1233` is not null then `agp`.`ICT1233` * `c3`.`credits` else 0 end + case when `agp`.`ICT1222` is not null then `agp`.`ICT1222` * `c4`.`credits` else 0 end + case when `agp`.`ICT1242` is not null then `agp`.`ICT1242` * `c5`.`credits` else 0 end + case when `agp`.`TCS1212` is not null then `agp`.`TCS1212` * `c6`.`credits` else 0 end + case when `agp`.`TMS1233` is not null then `agp`.`TMS1233` * `c7`.`credits` else 0 end + case when `agp`.`ICT1253` is not null then `agp`.`ICT1253` * `c8`.`credits` else 0 end) / sum(case when `agp`.`ENG1222` is not null then `c1`.`credits` else 0 end + case when `agp`.`ICT1212` is not null then `c2`.`credits` else 0 end + case when `agp`.`ICT1233` is not null then `c3`.`credits` else 0 end + case when `agp`.`ICT1222` is not null then `c4`.`credits` else 0 end + case when `agp`.`ICT1242` is not null then `c5`.`credits` else 0 end + case when `agp`.`TCS1212` is not null then `c6`.`credits` else 0 end + case when `agp`.`TMS1233` is not null then `c7`.`credits` else 0 end + case when `agp`.`ICT1253` is not null then `c8`.`credits` else 0 end),2) AS `SGPA` FROM ((((((((`all_grades_points` `agp` left join `course` `c1` on(`agp`.`ENG1222` is not null and `agp`.`ENG1222` > 0 and `c1`.`course_id` = 'ENG1222')) left join `course` `c2` on(`agp`.`ICT1212` is not null and `agp`.`ICT1212` > 0 and `c2`.`course_id` = 'ICT1212')) left join `course` `c3` on(`agp`.`ICT1233` is not null and `agp`.`ICT1233` > 0 and `c3`.`course_id` = 'ICT1233')) left join `course` `c4` on(`agp`.`ICT1222` is not null and `agp`.`ICT1222` > 0 and `c4`.`course_id` = 'ICT1222')) left join `course` `c5` on(`agp`.`ICT1242` is not null and `agp`.`ICT1242` > 0 and `c5`.`course_id` = 'ICT1242')) left join `course` `c6` on(`agp`.`TCS1212` is not null and `agp`.`TCS1212` > 0 and `c6`.`course_id` = 'TCS1212')) left join `course` `c7` on(`agp`.`TMS1233` is not null and `agp`.`TMS1233` > 0 and `c7`.`course_id` = 'TMS1233')) left join `course` `c8` on(`agp`.`ICT1253` is not null and `agp`.`ICT1253` > 0 and `c8`.`course_id` = 'ICT1253')) GROUP BY `agp`.`student_id` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`student_id`,`course_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `dean`
--
ALTER TABLE `dean`
  ADD PRIMARY KEY (`dean_id`),
  ADD KEY `FK_deanUser` (`dean_user_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `lecturer`
--
ALTER TABLE `lecturer`
  ADD PRIMARY KEY (`lecture_id`),
  ADD KEY `department_id` (`department_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `teaches`
--
ALTER TABLE `teaches`
  ADD PRIMARY KEY (`lecture_id`,`course_id`);

--
-- Indexes for table `technical_officer`
--
ALTER TABLE `technical_officer`
  ADD PRIMARY KEY (`technical_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`);

--
-- Constraints for table `dean`
--
ALTER TABLE `dean`
  ADD CONSTRAINT `FK_deanUser` FOREIGN KEY (`dean_user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `lecturer`
--
ALTER TABLE `lecturer`
  ADD CONSTRAINT `lecturer_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department` (`dept_id`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `technical_officer`
--
ALTER TABLE `technical_officer`
  ADD CONSTRAINT `technical_officer_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
