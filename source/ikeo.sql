-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8081
-- Generation Time: Nov 23, 2020 at 09:09 AM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ikeo`
--

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id_client` int(11) NOT NULL,
  `type_client` int(11) NOT NULL,
  `raison_client` int(11) NOT NULL,
  `adresse_client` varchar(70) NOT NULL,
  `ville_client` varchar(50) NOT NULL,
  `pays_client` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id_client`, `type_client`, `raison_client`, `adresse_client`, `ville_client`, `pays_client`) VALUES
(1, 1, 1, 'Place Vendôme', 'Paris', 1),
(2, 1, 2, 'Porte de Brandebourg', 'Berlin', 4),
(4, 1, 3, 'Rue de la Bastille', 'Paris', 1),
(5, 1, 1, 'Avenue des Trois Dragons', 'Barcelone', 2),
(6, 2, 4, 'Oxford street', 'Londres', 3),
(7, 1, 5, 'Coven Garden', 'Londres', 3),
(8, 1, 3, 'Place Terreaux', 'Lyon', 1);

-- --------------------------------------------------------

--
-- Table structure for table `factures`
--

CREATE TABLE `factures` (
  `id_facture` int(11) NOT NULL,
  `numero_facture` varchar(20) NOT NULL,
  `date_facture` date NOT NULL,
  `client_facture` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `factures`
--

INSERT INTO `factures` (`id_facture`, `numero_facture`, `date_facture`, `client_facture`) VALUES
(1, 'MSQ291', '2018-06-15', 1),
(2, 'MSQ292', '2018-06-23', 5),
(3, 'MSQ293', '2018-06-23', 6),
(4, 'MSQ294', '2018-06-28', 1),
(5, 'MSQ295', '2018-07-01', 4),
(6, 'MSQ296', '2018-07-04', 7),
(7, 'MSQ297', '2018-07-12', 2),
(8, 'MSQ298', '2018-08-28', 8),
(10, 'MSQ299', '2018-08-28', 8);

-- --------------------------------------------------------

--
-- Table structure for table `facutre_produit`
--

CREATE TABLE `facutre_produit` (
  `id_facture` int(11) NOT NULL,
  `id_produit` int(11) NOT NULL,
  `qte_produit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `facutre_produit`
--

INSERT INTO `facutre_produit` (`id_facture`, `id_produit`, `qte_produit`) VALUES
(1, 1, 20),
(1, 2, 30),
(1, 3, 10),
(2, 8, 25),
(2, 4, 32),
(3, 3, 80),
(3, 5, 70),
(3, 6, 60),
(3, 4, 60),
(3, 9, 120),
(3, 7, 90),
(4, 1, 10),
(4, 2, 10),
(4, 6, 30),
(5, 1, 25),
(5, 7, 34),
(6, 2, 40),
(6, 5, 38),
(6, 6, 54),
(7, 4, 20),
(7, 5, 34),
(7, 6, 45),
(8, 5, 18),
(10, 5, 18),
(10, 5, 18);

-- --------------------------------------------------------

--
-- Table structure for table `pays`
--

CREATE TABLE `pays` (
  `id_pays` int(11) NOT NULL,
  `nom_pays` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pays`
--

INSERT INTO `pays` (`id_pays`, `nom_pays`) VALUES
(1, 'France'),
(2, 'Espagne'),
(3, 'Angleterre'),
(4, 'Allemagne');

-- --------------------------------------------------------

--
-- Table structure for table `produits`
--

CREATE TABLE `produits` (
  `id_produit` int(11) NOT NULL,
  `nom_produit` varchar(30) NOT NULL,
  `ref_produit` varchar(20) NOT NULL,
  `desc_produit` varchar(70) NOT NULL,
  `abandon_produit` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `produits`
--

INSERT INTO `produits` (`id_produit`, `nom_produit`, `ref_produit`, `desc_produit`, `abandon_produit`) VALUES
(1, 'Knutsen', 'OANT72', 'Table basse pour poser les bières', 0),
(2, 'Moen', 'OANT34', 'Chaise haute de bar', 1),
(3, 'Eide', 'OANT67', 'Porte-serviettes pour 100 serviettes', 0),
(4, 'Gulbrandsen', 'LXAL34', 'Lit nuage en lévitation', 0),
(5, 'Naess', 'LXAL56', 'able 128 convives', 0),
(6, 'Lund', 'LXAL78', 'Bureau-cafetère électrique', 0),
(7, 'Dahl', 'LXL12', 'Tiroir a rond de serviette', 1),
(8, 'Ruud', 'OANT90', 'Bureau-lit combiné', 0),
(9, 'Apfelgluck', 'OANT12', 'Panier a chien (ou a chat)', 0);

-- --------------------------------------------------------

--
-- Table structure for table `raisons_socials`
--

CREATE TABLE `raisons_socials` (
  `id_raison` int(11) NOT NULL,
  `libelle_raison` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `raisons_socials`
--

INSERT INTO `raisons_socials` (`id_raison`, `libelle_raison`) VALUES
(1, 'Bo Meuble'),
(2, 'Mobel'),
(3, 'Tout A La Maison'),
(4, 'The World Compagny'),
(5, 'The Best Greatest BeautifulestFurniture');

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `id_type` int(11) NOT NULL,
  `libelle_type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id_type`, `libelle_type`) VALUES
(1, 'Magasin'),
(2, 'Central d\'achat');

-- --------------------------------------------------------

--
-- Table structure for table `usines`
--

CREATE TABLE `usines` (
  `id_usine` int(11) NOT NULL,
  `nom_usine` varchar(50) NOT NULL,
  `adresse_usine` varchar(70) NOT NULL,
  `ville_usine` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usines`
--

INSERT INTO `usines` (`id_usine`, `nom_usine`, `adresse_usine`, `ville_usine`) VALUES
(1, 'Harald', 'Quai Pipervika', 'Oslo'),
(2, 'Sverre', 'Rue Strangehagen', 'Bergen'),
(3, 'Olaf', 'Place Nidaros', 'Trondheim');

-- --------------------------------------------------------

--
-- Table structure for table `usine_produit`
--

CREATE TABLE `usine_produit` (
  `id_usine` int(11) NOT NULL,
  `id_produit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usine_produit`
--

INSERT INTO `usine_produit` (`id_usine`, `id_produit`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 5),
(1, 6),
(2, 1),
(2, 2),
(2, 5),
(2, 7),
(3, 3),
(3, 4),
(3, 5),
(3, 6),
(3, 7),
(3, 8),
(3, 9);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id_client`),
  ADD KEY `pays_client` (`pays_client`),
  ADD KEY `type_client` (`type_client`),
  ADD KEY `raison_client` (`raison_client`);

--
-- Indexes for table `factures`
--
ALTER TABLE `factures`
  ADD PRIMARY KEY (`id_facture`),
  ADD KEY `client_facture` (`client_facture`);

--
-- Indexes for table `facutre_produit`
--
ALTER TABLE `facutre_produit`
  ADD KEY `id_facture` (`id_facture`),
  ADD KEY `id_produit` (`id_produit`);

--
-- Indexes for table `pays`
--
ALTER TABLE `pays`
  ADD PRIMARY KEY (`id_pays`);

--
-- Indexes for table `produits`
--
ALTER TABLE `produits`
  ADD PRIMARY KEY (`id_produit`);

--
-- Indexes for table `raisons_socials`
--
ALTER TABLE `raisons_socials`
  ADD PRIMARY KEY (`id_raison`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id_type`);

--
-- Indexes for table `usines`
--
ALTER TABLE `usines`
  ADD PRIMARY KEY (`id_usine`);

--
-- Indexes for table `usine_produit`
--
ALTER TABLE `usine_produit`
  ADD KEY `id_produit` (`id_produit`),
  ADD KEY `id_usine` (`id_usine`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id_client` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `factures`
--
ALTER TABLE `factures`
  MODIFY `id_facture` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pays`
--
ALTER TABLE `pays`
  MODIFY `id_pays` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `produits`
--
ALTER TABLE `produits`
  MODIFY `id_produit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `raisons_socials`
--
ALTER TABLE `raisons_socials`
  MODIFY `id_raison` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id_type` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `usines`
--
ALTER TABLE `usines`
  MODIFY `id_usine` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `clients`
--
ALTER TABLE `clients`
  ADD CONSTRAINT `clients_ibfk_1` FOREIGN KEY (`pays_client`) REFERENCES `pays` (`id_pays`),
  ADD CONSTRAINT `clients_ibfk_2` FOREIGN KEY (`type_client`) REFERENCES `types` (`id_type`),
  ADD CONSTRAINT `clients_ibfk_3` FOREIGN KEY (`raison_client`) REFERENCES `raisons_socials` (`id_raison`);

--
-- Constraints for table `factures`
--
ALTER TABLE `factures`
  ADD CONSTRAINT `factures_ibfk_1` FOREIGN KEY (`client_facture`) REFERENCES `clients` (`id_client`);

--
-- Constraints for table `facutre_produit`
--
ALTER TABLE `facutre_produit`
  ADD CONSTRAINT `facutre_produit_ibfk_1` FOREIGN KEY (`id_facture`) REFERENCES `factures` (`id_facture`),
  ADD CONSTRAINT `facutre_produit_ibfk_2` FOREIGN KEY (`id_produit`) REFERENCES `produits` (`id_produit`);

--
-- Constraints for table `usine_produit`
--
ALTER TABLE `usine_produit`
  ADD CONSTRAINT `usine_produit_ibfk_2` FOREIGN KEY (`id_produit`) REFERENCES `produits` (`id_produit`),
  ADD CONSTRAINT `usine_produit_ibfk_3` FOREIGN KEY (`id_usine`) REFERENCES `usines` (`id_usine`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
