-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mer 01 Mars 2017 à 13:58
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `findyourteam`
--

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE IF NOT EXISTS `categorie` (
  `id_categorie` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  PRIMARY KEY (`id_categorie`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `jeu`
--

CREATE TABLE IF NOT EXISTS `jeu` (
  `id_jeu` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `agemini` int(11) NOT NULL,
  PRIMARY KEY (`id_jeu`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `jeu_categorie`
--

CREATE TABLE IF NOT EXISTS `jeu_categorie` (
  `id_jeu` int(11) NOT NULL,
  `id_categorie` int(11) NOT NULL,
  PRIMARY KEY (`id_jeu`,`id_categorie`),
  KEY `id_categorie` (`id_categorie`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `langue`
--

CREATE TABLE IF NOT EXISTS `langue` (
  `id_langue` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(20) NOT NULL,
  `diminutif` varchar(2) NOT NULL,
  PRIMARY KEY (`id_langue`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `message`
--

CREATE TABLE IF NOT EXISTS `message` (
  `id_message` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `id_roaster` int(11) NOT NULL,
  `id_structure` int(11) NOT NULL,
  `id_jeu` int(11) NOT NULL,
  `id_rang` int(11) NOT NULL,
  `id_langue` int(11) NOT NULL,
  `message` text NOT NULL,
  `datepost` date NOT NULL,
  PRIMARY KEY (`id_message`),
  KEY `id_user` (`id_user`),
  KEY `id_roaster` (`id_roaster`),
  KEY `id_structure` (`id_structure`),
  KEY `id_langue` (`id_langue`),
  KEY `id_rang` (`id_rang`),
  KEY `id_jeu` (`id_jeu`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `rang`
--

CREATE TABLE IF NOT EXISTS `rang` (
  `id_rang` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(30) NOT NULL,
  PRIMARY KEY (`id_rang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `rang_jeu`
--

CREATE TABLE IF NOT EXISTS `rang_jeu` (
  `id_jeu` int(11) NOT NULL,
  `id_rang` int(11) NOT NULL,
  PRIMARY KEY (`id_jeu`,`id_rang`),
  KEY `id_rang` (`id_rang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `roaster`
--

CREATE TABLE IF NOT EXISTS `roaster` (
  `id_roaster` int(11) NOT NULL AUTO_INCREMENT,
  `id_usr` int(11) NOT NULL COMMENT 'administrateur',
  `nom` varchar(50) NOT NULL,
  `mail` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_roaster`),
  KEY `id_usr` (`id_usr`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `roaster_langue`
--

CREATE TABLE IF NOT EXISTS `roaster_langue` (
  `id_roaster` int(11) NOT NULL,
  `id_langue` int(11) NOT NULL,
  PRIMARY KEY (`id_roaster`,`id_langue`),
  KEY `id_langue` (`id_langue`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `structure`
--

CREATE TABLE IF NOT EXISTS `structure` (
  `id_structure` int(11) NOT NULL,
  `id_usr` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `mail` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_structure`),
  KEY `id_usr` (`id_usr`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `structure_langue`
--

CREATE TABLE IF NOT EXISTS `structure_langue` (
  `id_structure` int(11) NOT NULL,
  `id_langue` int(11) NOT NULL,
  PRIMARY KEY (`id_structure`,`id_langue`),
  KEY `id_langue` (`id_langue`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `structure_roaster`
--

CREATE TABLE IF NOT EXISTS `structure_roaster` (
  `id_structure` int(11) NOT NULL,
  `id_roaster` int(11) NOT NULL,
  PRIMARY KEY (`id_structure`,`id_roaster`),
  KEY `id_roaster` (`id_roaster`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `pseudo` varchar(50) DEFAULT NULL,
  `mail` varchar(50) NOT NULL,
  `presentation` text,
  `dateNaiss` date NOT NULL,
  `dateLastCo` date NOT NULL,
  `dateInscription` date NOT NULL,
  `avatar` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `user_langue`
--

CREATE TABLE IF NOT EXISTS `user_langue` (
  `id_user` int(11) NOT NULL,
  `id_langue` int(11) NOT NULL,
  `niveau` int(11) NOT NULL COMMENT 'niveau /5',
  PRIMARY KEY (`id_user`,`id_langue`),
  KEY `id_langue` (`id_langue`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `user_play`
--

CREATE TABLE IF NOT EXISTS `user_play` (
  `id_user` int(11) NOT NULL,
  `id_jeu` int(11) NOT NULL,
  `id_rang` int(11) NOT NULL,
  PRIMARY KEY (`id_user`,`id_jeu`,`id_rang`),
  KEY `id_jeu` (`id_jeu`),
  KEY `id_rang` (`id_rang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `jeu_categorie`
--
ALTER TABLE `jeu_categorie`
  ADD CONSTRAINT `jeu_categorie_ibfk_1` FOREIGN KEY (`id_jeu`) REFERENCES `jeu` (`id_jeu`),
  ADD CONSTRAINT `jeu_categorie_ibfk_2` FOREIGN KEY (`id_categorie`) REFERENCES `categorie` (`id_categorie`),
  ADD CONSTRAINT `jeu_categorie_ibfk_3` FOREIGN KEY (`id_jeu`) REFERENCES `jeu` (`id_jeu`);

--
-- Contraintes pour la table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `message_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`),
  ADD CONSTRAINT `message_ibfk_2` FOREIGN KEY (`id_roaster`) REFERENCES `roaster` (`id_roaster`),
  ADD CONSTRAINT `message_ibfk_3` FOREIGN KEY (`id_structure`) REFERENCES `structure` (`id_structure`),
  ADD CONSTRAINT `message_ibfk_4` FOREIGN KEY (`id_langue`) REFERENCES `langue` (`id_langue`),
  ADD CONSTRAINT `message_ibfk_5` FOREIGN KEY (`id_rang`) REFERENCES `rang` (`id_rang`),
  ADD CONSTRAINT `message_ibfk_6` FOREIGN KEY (`id_jeu`) REFERENCES `jeu` (`id_jeu`);

--
-- Contraintes pour la table `rang_jeu`
--
ALTER TABLE `rang_jeu`
  ADD CONSTRAINT `rang_jeu_ibfk_1` FOREIGN KEY (`id_jeu`) REFERENCES `jeu` (`id_jeu`),
  ADD CONSTRAINT `rang_jeu_ibfk_2` FOREIGN KEY (`id_rang`) REFERENCES `rang` (`id_rang`);

--
-- Contraintes pour la table `roaster`
--
ALTER TABLE `roaster`
  ADD CONSTRAINT `roaster_ibfk_1` FOREIGN KEY (`id_usr`) REFERENCES `user` (`id_user`);

--
-- Contraintes pour la table `roaster_langue`
--
ALTER TABLE `roaster_langue`
  ADD CONSTRAINT `roaster_langue_ibfk_1` FOREIGN KEY (`id_langue`) REFERENCES `langue` (`id_langue`),
  ADD CONSTRAINT `roaster_langue_ibfk_2` FOREIGN KEY (`id_roaster`) REFERENCES `roaster` (`id_roaster`);

--
-- Contraintes pour la table `structure`
--
ALTER TABLE `structure`
  ADD CONSTRAINT `structure_ibfk_1` FOREIGN KEY (`id_usr`) REFERENCES `user` (`id_user`);

--
-- Contraintes pour la table `structure_langue`
--
ALTER TABLE `structure_langue`
  ADD CONSTRAINT `structure_langue_ibfk_1` FOREIGN KEY (`id_langue`) REFERENCES `langue` (`id_langue`),
  ADD CONSTRAINT `structure_langue_ibfk_2` FOREIGN KEY (`id_structure`) REFERENCES `structure` (`id_structure`);

--
-- Contraintes pour la table `structure_roaster`
--
ALTER TABLE `structure_roaster`
  ADD CONSTRAINT `structure_roaster_ibfk_1` FOREIGN KEY (`id_structure`) REFERENCES `structure` (`id_structure`),
  ADD CONSTRAINT `structure_roaster_ibfk_2` FOREIGN KEY (`id_roaster`) REFERENCES `roaster` (`id_roaster`);

--
-- Contraintes pour la table `user_langue`
--
ALTER TABLE `user_langue`
  ADD CONSTRAINT `user_langue_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`),
  ADD CONSTRAINT `user_langue_ibfk_2` FOREIGN KEY (`id_langue`) REFERENCES `langue` (`id_langue`);

--
-- Contraintes pour la table `user_play`
--
ALTER TABLE `user_play`
  ADD CONSTRAINT `user_play_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`),
  ADD CONSTRAINT `user_play_ibfk_2` FOREIGN KEY (`id_jeu`) REFERENCES `jeu` (`id_jeu`),
  ADD CONSTRAINT `user_play_ibfk_3` FOREIGN KEY (`id_rang`) REFERENCES `rang` (`id_rang`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
