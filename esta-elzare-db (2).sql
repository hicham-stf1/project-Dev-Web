-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 09 fév. 2021 à 20:24
-- Version du serveur :  10.4.14-MariaDB
-- Version de PHP : 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `esta_elzare_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `action`
--

CREATE TABLE `action` (
  `Action` text NOT NULL,
  `AdminID` int(2) NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `action`
--

INSERT INTO `action` (`Action`, `AdminID`, `date`) VALUES
('Action list was cleared.', 42, '2021-02-07'),
('Client: bo3aza, was deleted.', 42, '2021-02-07');

-- --------------------------------------------------------

--
-- Structure de la table `cart`
--

CREATE TABLE `cart` (
  `cartID` int(21) NOT NULL,
  `productID` int(21) DEFAULT NULL,
  `quantity` int(2) DEFAULT NULL,
  `unitTotal` int(8) NOT NULL,
  `clientID` int(21) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `categoryID` int(21) NOT NULL,
  `categoryName` text DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`categoryID`, `categoryName`, `description`) VALUES
(1, 'Men', 'Mens clothing'),
(2, 'Women', 'Womens clothing'),
(3, 'Boys', 'Boys clothing'),
(4, 'Girls', 'Girls clothing'),
(5, 'Babies', 'Babies clothing');

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `clientID` int(21) NOT NULL,
  `clientName` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `password` text DEFAULT NULL,
  `registrationDate` date DEFAULT NULL,
  `type` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`clientID`, `clientName`, `email`, `password`, `registrationDate`, `type`) VALUES
(41, 'Essalihi', 'mouadessalihi201@gmail.com', '$2y$10$xivUKHz83ZebbFoAsnzrxOmOsYlhEFqfmeWd.WjAbFN.Pdk5V.HYC', NULL, 1),
(42, 'Tahiri', 'tahiriabdelghani11@gmail.com', '$2y$10$xivUKHz83ZebbFoAsnzrxOmOsYlhEFqfmeWd.WjAbFN.Pdk5V.HYC', NULL, 1),
(43, 'Elmadani', 'sanaeelmadani3@gmail.com', '$2y$10$xivUKHz83ZebbFoAsnzrxOmOsYlhEFqfmeWd.WjAbFN.Pdk5V.HYC', NULL, 1),
(44, 'Zaidi', 'hzaydi78@gmail.com', '$2y$10$xivUKHz83ZebbFoAsnzrxOmOsYlhEFqfmeWd.WjAbFN.Pdk5V.HYC', NULL, 1),
(45, 'Redouane', 'salmaa.red1@gmail.com', '$2y$10$xivUKHz83ZebbFoAsnzrxOmOsYlhEFqfmeWd.WjAbFN.Pdk5V.HYC', NULL, 1),
(54, 'abdelghani', 'tahiriabdelghani1@gmail.com', '$2y$10$ZKANjVt/RuplahcF3jfiAeG2me16wgpUbkjMUUm3vJkWYfD7zQAj2', '2021-02-07', 0);

-- --------------------------------------------------------

--
-- Structure de la table `command`
--

CREATE TABLE `command` (
  `commandID` int(21) NOT NULL,
  `productID` int(21) DEFAULT NULL,
  `quantity` int(2) DEFAULT NULL,
  `totalprice` int(5) NOT NULL,
  `clientID` int(21) DEFAULT NULL,
  `firstName` varchar(20) NOT NULL,
  `lastName` varchar(20) NOT NULL,
  `email` varchar(35) NOT NULL,
  `adresse` text DEFAULT NULL,
  `commandeDate` date DEFAULT NULL,
  `cardNumber` int(20) NOT NULL,
  `cardType` varchar(12) NOT NULL,
  `exprDate` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `command`
--

INSERT INTO `command` (`commandID`, `productID`, `quantity`, `totalprice`, `clientID`, `firstName`, `lastName`, `email`, `adresse`, `commandeDate`, `cardNumber`, `cardType`, `exprDate`) VALUES
(24, 64, 1, 20, 54, 'ABDELGHANI', 'TAHIRI', 'bo3aza@gmail.com', 'mesghona', '2021-02-09', 387467, 'Mastercard', '11/02'),
(25, 64, 2, 40, 54, 'ABDELGHANI', 'TAHIRI', 'bo3aza@gmail.com', 'mesghona', '2021-02-09', 387467, 'Mastercard', '11/02'),
(26, 64, 3, 60, 54, 'ABDELGHANI', 'TAHIRI', 'bo3aza@gmail.com', 'mesghona', '2021-02-09', 387467, 'Mastercard', '11/02');

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

CREATE TABLE `product` (
  `productID` int(21) NOT NULL,
  `productName` text DEFAULT NULL,
  `categoryID` int(21) DEFAULT NULL,
  `color` varchar(15) NOT NULL,
  `size` varchar(5) NOT NULL,
  `price` int(6) DEFAULT NULL,
  `discountPrice` int(6) DEFAULT NULL,
  `discount` int(6) DEFAULT NULL,
  `rate` int(3) DEFAULT NULL,
  `img1` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`productID`, `productName`, `categoryID`, `color`, `size`, `price`, `discountPrice`, `discount`, `rate`, `img1`) VALUES
(31, 'Mens Rain Boot', 1, 'Black', 'XL', 40, 30, 25, 5, '\"../images/men products/Men Rain Boot 2.PNG\"'),
(32, 'Men Crocs Classic Clog', 1, 'Black', 'XXL', 20, 18, 10, 4, '\"../images/men products/Crocs Adult Classic Clog 2.PNG\"'),
(34, 'Men Classic Notched Coat', 1, 'Black', 'M', 150, 120, 20, 3, '\"..\\images\\men products\\Men Classic Notched Coat 1.PNG\"'),
(35, 'Women Pink Pyjamas', 2, 'Pink', 'M', 170, 150, 15, 3, '\"..\\images\\women products\\00-etam-pyjama-pyjama-en-pilou-femme-rose-pale-a-rayures-blancs-modele-moderne.jpg\"'),
(36, 'Women Red Pyjamas', 2, 'Red', 'M', 250, 120, 5, 3, '\"..\\images\\women products\\Pyjama-combinaison-1.jpg\"'),
(37, 'Women  Gray Pyjamas', 2, 'Gray', 'L', 200, 170, 20, 4, '\"..\\images\\women products\\6d8261fc-fb61-4a3c-838b-9da2ef4b5d0f-zoom_prd_3s_1140x1140.jpg\"'),
(38, 'women red shirts ', 2, 'Red', 'M', 300, 250, 15, 3, '\"..\\images\\women products\\5f5185144af173f1d43757b9bfd4ef87.jpg\"'),
(39, 'Women Gray Pyjamas', 2, 'Gray', 'M', 190, 130, 20, 4, '\"..\\images\\women products\\4873.jpg\"'),
(40, 'Women Red Dresses', 2, 'Red', 'L', 400, 320, 15, 3, '\"..\\images\\women products\\robes chic.jpg\"'),
(41, 'Women Gray Dresses ', 2, 'Gray', 'L', 350, 300, 20, 3, '\"..\\images\\women products\\th (1).jpg\"'),
(42, 'Women Colorful Shirts', 2, 'Colorful', 'M', 200, 150, 30, 3, '\"..\\images\\women products\\chemise-giorgia-chaine-hiver.jpg\"'),
(43, 'Women Chic Dresses', 2, 'garnet', 'M', 500, 400, 20, 4, '\"..\\images\\women products\\robe-en-velour-pour-femme1-1.jpg\"'),
(44, 'Women Blue Dresse', 2, 'Blue', 'M', 350, 250, 25, 3, '\"..\\images\\women products\\patron-robe-patineuse-courte-femme-couture-pdf-charlotte-auzou_600x.jpg\"'),
(45, 'Women Gray Coats ', 2, 'Gray', 'M', 600, 550, 5, 3, '\"..\\images\\women products\\Manteau-femme-1.jpg\"'),
(46, 'Women Skirts', 2, 'Black', 'M', 250, 200, 10, 3, '\"..\\images\\women products\\Vintage-Womens-Skirt-Stretch-High-Waist-Skater-Flared-Pleated-Swing-Long-Skirt-Summer-Party-Night-Flower.jpg\"'),
(47, 'Women Shoes', 2, 'Brown', '39', 500, 350, 25, 2, '\"..\\images\\women products\\bottes-a-talons-femme-2018-mode-bottes-cuir-classi.jpg\"'),
(48, 'Women Pumps', 2, 'Blue Sky', '40', 600, 400, 20, 3, '\"..\\images\\women products\\Valentine-sandales-femmes-2015-bout-pointu-rivet-chaussures-femme-talons-hauts-T-sangle-hasp-talons-minces-min.jpg\"'),
(49, 'Women Heels ', 2, 'Pink', '38', 500, 450, 5, 4, '\"..\\images\\women products\\4e30c63ed76ffad34b00f5cf75b904f7.jpg\"'),
(50, 'Babies Suits', 5, 'Gray', '6-12 ', 200, 150, 15, 3, '\"..\\images\\babies\\1.jpg\"'),
(51, 'Baby Girls', 5, 'Yellow', '12-18', 350, 300, 15, 4, '\"..\\images\\babies\\2.jpg\"'),
(52, 'Girls Tracksuits', 5, 'Pink', '18-36', 400, 300, 20, 4, '\"..\\images\\babies\\3.jpg\"'),
(53, 'Boys Suits', 5, 'Gray', '6-12 ', 200, 170, 5, 3, '\"..\\images\\babies\\5.jpg\"'),
(54, 'Girls Socks', 5, 'All', '3-12M', 100, 70, 15, 3, '\"..\\images\\babies\\6-1.jpg\"'),
(55, 'Boys Socks', 5, 'All', '3-12M', 100, 70, 15, 3, '\"..\\images\\babies\\6.jpg\"'),
(56, 'Boys Suits', 5, 'Black', '3Mois', 150, 100, 30, 3, '\"..\\images\\babies\\7.jpg\"'),
(57, 'Baby Boys', 5, 'White', '12-18', 400, 350, 10, 3, '\"..\\images\\babies\\8-1.jpg\"'),
(58, 'Boys Tracksuits', 5, 'Gray', '6-10M', 350, 250, 20, 3, '\"..\\images\\babies\\9.jpg\"'),
(59, 'Babies Basckets', 5, 'White', '12-18', 250, 200, 15, 3, '\"..\\images\\babies\\10.jpg\"'),
(61, 'GPS Smartwatch ', 1, 'Black', 'M', 150, 100, 33, 5, '\"..\\images\\men products\\GPS Smartwatch with Bright Touchscreen Display 1.PNG\"'),
(62, 'GPS Smartwatch ', 3, 'Black', 'S', 140, 100, 30, 4, '\"..\\images\\men products\\GPS Smartwatch with Bright Touchscreen Display 2.PNG\"'),
(63, 'Graduation Cap ', 1, 'Black', 'L', 100, 80, 20, 3, '\"..\\images\\men products\\Graduation Cap with 2020 and 2021 Tassel 1.PNG\"'),
(64, 'Men Patterned Socks', 1, 'Colorful', 'M', 30, 20, 33, 5, '\"..\\images\\men products\\Men 5-Pack Patterned Socks 2.PNG\"'),
(65, 'Men Fleece Joggers', 1, 'Grey', 'S', 140, 100, 30, 5, '\"..\\images\\men products\\Men Armour Fleece Joggers 1.PNG\"'),
(66, 'Men Casual Shirts', 1, 'Black', 'L', 150, 100, 30, 5, '\"..\\images\\men products\\Men Casual Button Down Shirts 1.PNG\"'),
(67, 'Men Classic Notched Coat', 1, 'Black', 'L', 200, 150, 25, 4, '\"..\\images\\men products\\Men Classic Notched Coat 1.PNG\"'),
(68, 'Men Cotton Tanks', 1, 'White', 'M', 90, 60, 30, 4, '\"..\\images\\men products\\Men Cotton Classics Multipack Tanks 1.PNG\"'),
(69, 'Men Cotton Sports Shorts', 1, 'Black', 'S', 90, 60, 30, 5, '\"..\\images\\men products\\Men Cotton Sports Shorts 1.PNG\"'),
(70, 'Men Flannel Shirt Jacket ', 1, 'Brown', 'L', 200, 180, 10, 5, '\"..\\images\\men products\\Men Flannel Rugged Shirt Jacket 1.PNG\"'),
(71, 'Men Fleece Sweatshirt', 1, 'Black', 'M', 140, 100, 30, 5, '\"..\\images\\men products\\Men Fleece Sweatshirt 1.PNG\"'),
(72, 'Men Gilliam Vest', 1, 'Black', 'M', 150, 100, 30, 4, '\"..\\images\\men products\\Men Gilliam Vest 1.PNG\"'),
(73, 'Men Hooded Jacket Coat ', 1, 'Blue', 'L', 200, 150, 25, 4, '\"..\\images\\men products\\Men Hooded Shirt Jacket Coat 1.PNG\"'),
(74, 'Men Lightweight Summer Sandal', 1, 'Orange', 'L', 100, 80, 20, 3, '\"..\\images\\men products\\Men Lightweight Summer Slides Sandal 1.PNG\"'),
(75, 'Men Long Cozy Robe', 1, 'Blue, Green', 'L', 150, 100, 30, 3, '\"..\\images\\men products\\Men Long Sleeve Cozy Robe 1.PNG\"'),
(76, 'Men Plaid Flannel Shirts', 1, 'Black', 'M', 140, 90, 33, 3, '\"..\\images\\men products\\Men Plaid Flannel Shirts 1.PNG\"'),
(77, 'Quick-Dry Swim Trunk', 1, 'Blue', 'M', 90, 60, 30, 4, '\"..\\images\\men products\\Men Quick-Dry Swim Trunk 1.PNG\"'),
(78, 'Men Ripped Jeans Slim Fit', 1, 'Black', 'M', 140, 100, 25, 3, '\"..\\images\\men products\\Men Ripped Jeans Slim Fit 1.PNG\"'),
(79, 'Men Series Quartz 200M', 1, 'Black', 'M', 300, 150, 50, 5, '\"..\\images\\men products\\Men Series Quartz 200M WR Shock Resistant 1.PNG\"'),
(80, 'Men Short Sleeve T-Shirt', 1, 'Black', 'S', 100, 80, 20, 3, '\"..\\images\\men products\\Men Short Sleeve T-Shirt 1.PNG\"'),
(81, 'Men Full Zip Sweaters', 1, 'Brown', 'L', 150, 100, 30, 4, '\"..\\images\\men products\\Men Slim Full Zip Knitted Sweaters 1.PNG\"'),
(82, 'Men Tough As Buck Vest', 1, 'Brown', 'S', 150, 100, 30, 4, '\"..\\images\\men products\\Men Tough As Buck Vest 1.PNG\"'),
(83, 'Men Trucker Jacket', 1, 'Black', 'L', 150, 100, 50, 5, '\"..\\images\\men products\\Men Trucker Jacket 1.PNG\"'),
(84, 'Men Waterproof Jacket', 1, 'Black', 'S', 200, 150, 25, 3, '\"..\\images\\men products\\Men Waterproof Jacket 1.PNG\"'),
(85, 'Men Waterproof Boot', 1, 'Brown', 'L', 200, 150, 25, 5, '\"..\\images\\men products\\Men Waterproof Wedge Boot 2.PNG\"'),
(86, 'Weave Pullover Hoodie', 1, 'White', 'M', 150, 100, 30, 4, '\"..\\images\\men products\\Men Weave Pullover Hoodie 1.PNG\"'),
(87, 'Men Winter Sweatpants', 1, 'Grey', 'S', 140, 90, 30, 4, '\"..\\images\\men products\\Men Winter Sweatpants 1.PNG\"'),
(88, 'Men Woven Boxe', 1, 'White, Blue', 'M', 90, 60, 30, 2, '\"..\\images\\men products\\Men Woven Boxe 1.PNG\"'),
(89, 'Men Cotton Socks', 1, 'White', 'M', 50, 30, 25, 5, '\"..\\images\\men products\\Nike Everyday Plus Cushion No Show 1.PNG\"'),
(90, 'Winter Waterproof Jacket', 1, 'Pistachio', 'M', 140, 100, 30, 4, '\"..\\images\\men products\\Winter Warm UP Jacket Windproof Waterproof 1.PNG\"'),
(91, 'Yeezy Boost 700 V2', 1, 'Brown', 'M', 200, 150, 25, 5, '\"..\\images\\men products\\Yeezy Boost 700 V2 2.PNG\"'),
(92, 'Women Cotton Shirt', 2, 'White', 'M', 200, 150, 25, 3, '\"..\\images\\women products\\chemise-elegante-et-classique-pour-femme-chemise-elegante-compositions-polyester-style-elegant-proprietes-des-vetements-manches-.jpg\"'),
(93, 'Women Brown Shoes', 2, 'Brown', 'L', 150, 100, 30, 4, '\"..\\images\\women products\\talons-pour-femme-tendance-20189-1.jpg\"'),
(94, 'Women Low Heels', 2, 'Black', 'L', 90, 80, 10, 3, '\"..\\images\\women products\\th (2).jpg\"'),
(95, 'Casio Classic Resin Sport Watch', 3, 'Black', 'M', 200, 150, 25, 2, '\"..\\images\\boys products\\Casio F91W-1 Classic Resin Strap Digital Sport Watch 1.PNG\"'),
(96, '5-Pack Patterned Socks', 3, 'Colorful', 'S', 90, 60, 30, 2, '\"..\\images\\boys products\\Men 5-Pack Patterned Socks 1.PNG\"'),
(97, 'Armour Fleece Joggers', 3, 'Grey', 'M', 140, 90, 30, 3, '\"..\\images\\boys products\\Men Armour Fleece Joggers 2.PNG\"'),
(98, 'Casual Button Down Shirts', 3, 'Black', 'L', 150, 100, 30, 4, '\"..\\images\\boys products\\Men Casual Button Down Shirts 2.PNG\"'),
(99, 'Cotton Classics Tanks', 3, 'White', 'L', 100, 50, 50, 3, '\"..\\images\\boys products\\Men Cotton Classics Multipack Tanks 2.PNG\"'),
(100, 'Cotton Sports Shorts', 3, 'Black', 'M', 100, 50, 50, 3, '\"..\\images\\boys products\\Men Cotton Sports Shorts 2.PNG\"'),
(101, 'Flannel Shirt', 3, 'Grey', 'L', 150, 120, 15, 4, '\"..\\images\\boys products\\Men Flannel Shirt 1.PNG\"'),
(102, 'Boys Patchwork Hoodie ', 3, 'White', 'M', 200, 150, 25, 5, '\"..\\images\\boys products\\Men Pullover Patchwork Hoodie 1.PNG\"'),
(103, 'Quick-Dry Swim Trunk', 3, 'Blue', 'S', 90, 60, 30, 1, '\"..\\images\\boys products\\Men Quick-Dry Swim Trunk 2.PNG\"'),
(104, 'Series Quartz 200M ', 3, 'Black', 'L', 200, 150, 25, 3, '\"..\\images\\boys products\\Men Series Quartz 200M WR Shock Resistant 2.PNG\"'),
(105, 'Sneakers Sports Shoe', 3, 'Black', 'M', 200, 120, 60, 5, '\"..\\images\\boys products\\Men Sneakers Sports Shoe 1.PNG\"'),
(106, 'Sweatpants with Pockets', 3, 'White', 'L', 200, 20, 90, 1, '\"..\\images\\boys products\\Men Sweatpants with Pockets Zipper 1.PNG\"'),
(107, 'Two-Tone Foam Slipper', 3, 'Grey, Blue', 'S', 100, 70, 30, 5, '\"..\\images\\boys products\\Men Two-Tone Foam Slipper 1.PNG\"'),
(108, 'Nike Everyday Plus Cushion', 3, 'White', 'S', 140, 80, 25, 1, '\"..\\images\\boys products\\Nike Everyday Plus Cushion No Show 2.PNG\"'),
(109, 'Baby Suits', 5, 'Colorful', 'L', 200, 120, 60, 3, '\"..\\images\\babies\\1-1.jpg\"'),
(110, 'Baby Suit', 5, 'Yellow', 'M', 150, 100, 30, 5, '\"..\\images\\babies\\2-2.jpg\"'),
(111, 'Baby Suit', 5, 'Black', 'M', 150, 100, 30, 4, '\"..\\images\\babies\\3-1.jpg\"'),
(112, 'Baby Suits', 5, 'Colorful', 'M', 150, 60, 50, 1, '\"..\\images\\babies\\5-1.jpg\"'),
(113, 'Big Bro Little Bro Shirts', 5, 'Grey', 'S', 150, 100, 30, 4, '\"..\\images\\babies\\7-1.jpg\"'),
(114, 'Babies Suit', 5, 'White, Grey', 'S', 150, 100, 30, 3, '\"..\\images\\babies\\8.jpg\"'),
(115, 'Baby Suit', 5, 'Grey', 'L', 200, 100, 50, 3, '\"..\\images\\babies\\1-1.jpg\"'),
(116, 'Baby Sneakers', 5, 'Pink', 'S', 140, 60, 50, 3, '\"..\\images\\babies\\10-1.jpg\"');

-- --------------------------------------------------------

--
-- Structure de la table `seen`
--

CREATE TABLE `seen` (
  `productID` int(21) DEFAULT NULL,
  `clientID` int(21) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `sold`
--

CREATE TABLE `sold` (
  `productID` int(21) DEFAULT NULL,
  `clientID` int(21) DEFAULT NULL,
  `quantity` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `action`
--
ALTER TABLE `action`
  ADD KEY `AdminID` (`AdminID`);

--
-- Index pour la table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cartID`),
  ADD KEY `cart_ibfk_1` (`productID`),
  ADD KEY `cart_ibfk_2` (`clientID`);

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`categoryID`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`clientID`);

--
-- Index pour la table `command`
--
ALTER TABLE `command`
  ADD PRIMARY KEY (`commandID`),
  ADD KEY `command_ibfk_1` (`productID`),
  ADD KEY `command_ibfk_2` (`clientID`);

--
-- Index pour la table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productID`),
  ADD KEY `product_ibfk_1` (`categoryID`);

--
-- Index pour la table `seen`
--
ALTER TABLE `seen`
  ADD KEY `seen_ibfk_1` (`clientID`),
  ADD KEY `seen_ibfk_2` (`productID`);

--
-- Index pour la table `sold`
--
ALTER TABLE `sold`
  ADD KEY `sold_ibfk_1` (`clientID`),
  ADD KEY `sold_ibfk_2` (`productID`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `cart`
--
ALTER TABLE `cart`
  MODIFY `cartID` int(21) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `categoryID` int(21) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `clientID` int(21) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT pour la table `command`
--
ALTER TABLE `command`
  MODIFY `commandID` int(21) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT pour la table `product`
--
ALTER TABLE `product`
  MODIFY `productID` int(21) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `action`
--
ALTER TABLE `action`
  ADD CONSTRAINT `action_ibfk_1` FOREIGN KEY (`AdminID`) REFERENCES `client` (`clientID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`productID`) REFERENCES `product` (`productID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`clientID`) REFERENCES `client` (`clientID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `command`
--
ALTER TABLE `command`
  ADD CONSTRAINT `command_ibfk_1` FOREIGN KEY (`productID`) REFERENCES `product` (`productID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `command_ibfk_2` FOREIGN KEY (`clientID`) REFERENCES `client` (`clientID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`categoryID`) REFERENCES `category` (`categoryID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `seen`
--
ALTER TABLE `seen`
  ADD CONSTRAINT `seen_ibfk_1` FOREIGN KEY (`clientID`) REFERENCES `client` (`clientID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `seen_ibfk_2` FOREIGN KEY (`productID`) REFERENCES `product` (`productID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `sold`
--
ALTER TABLE `sold`
  ADD CONSTRAINT `sold_ibfk_1` FOREIGN KEY (`clientID`) REFERENCES `client` (`clientID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sold_ibfk_2` FOREIGN KEY (`productID`) REFERENCES `product` (`productID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
