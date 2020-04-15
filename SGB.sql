-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Mer 15 Avril 2020 à 18:13
-- Version du serveur :  5.7.29-0ubuntu0.18.04.1
-- Version de PHP :  7.2.24-0ubuntu0.18.04.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `SGB`
--

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `id_categorie` int(11) NOT NULL,
  `nom_categorie` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `categorie`
--

INSERT INTO `categorie` (`id_categorie`, `nom_categorie`) VALUES
(1, 'bureautique'),
(2, 'electroménagère'),
(3, 'informatique');

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `id_produit` int(11) NOT NULL,
  `libelle` varchar(200) NOT NULL,
  `prix_unitaire` tinyint(4) NOT NULL,
  `nom_categorie` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `produit`
--

INSERT INTO `produit` (`id_produit`, `libelle`, `prix_unitaire`, `nom_categorie`) VALUES
(4, 'unite central', 3, 'bureautique'),
(5, 'souris', 3, 'informatique'),
(6, 'micro-onde', 3, 'electroménagère');

-- --------------------------------------------------------

--
-- Structure de la table `reference_prod`
--

CREATE TABLE `reference_prod` (
  `id_ref_prod` int(11) NOT NULL,
  `prix_unitaire` tinyint(4) NOT NULL,
  `montant` mediumint(9) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `reference_prod`
--

INSERT INTO `reference_prod` (`id_ref_prod`, `prix_unitaire`, `montant`, `date`) VALUES
(1, 3, 1000, '2020-10-01'),
(2, 5, 10000, '0000-00-00'),
(3, 1, 40000, '0000-00-00');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id_categorie`),
  ADD KEY `nom` (`nom_categorie`),
  ADD KEY `nom_2` (`nom_categorie`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`id_produit`),
  ADD UNIQUE KEY `racine_categorie` (`nom_categorie`),
  ADD KEY `clef etrangere` (`prix_unitaire`);

--
-- Index pour la table `reference_prod`
--
ALTER TABLE `reference_prod`
  ADD PRIMARY KEY (`id_ref_prod`),
  ADD KEY `prix_unitaire` (`prix_unitaire`) USING BTREE;

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id_categorie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `produit`
--
ALTER TABLE `produit`
  MODIFY `id_produit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `reference_prod`
--
ALTER TABLE `reference_prod`
  MODIFY `id_ref_prod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `produit`
--
ALTER TABLE `produit`
  ADD CONSTRAINT `produit_ibfk_1` FOREIGN KEY (`nom_categorie`) REFERENCES `categorie` (`nom_categorie`),
  ADD CONSTRAINT `produit_ibfk_2` FOREIGN KEY (`prix_unitaire`) REFERENCES `reference_prod` (`prix_unitaire`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
