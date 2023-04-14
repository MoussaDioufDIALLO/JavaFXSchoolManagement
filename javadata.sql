-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 14 avr. 2023 à 15:33
-- Version du serveur :  8.0.27
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `javadata`
--

-- --------------------------------------------------------

--
-- Structure de la table `apprenantprofil`
--

DROP TABLE IF EXISTS `apprenantprofil`;
CREATE TABLE IF NOT EXISTS `apprenantprofil` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(150) NOT NULL,
  `prenom` varchar(150) NOT NULL,
  `dateNaissance` date NOT NULL,
  `lieuNaissance` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `genre` varchar(150) NOT NULL,
  `classe` varchar(150) NOT NULL,
  `section` varchar(150) NOT NULL,
  `moyenne_semestre_1` double DEFAULT NULL,
  `moyenne_semestre_2` double DEFAULT NULL,
  `rang` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `apprenantprofil`
--

INSERT INTO `apprenantprofil` (`ID`, `nom`, `prenom`, `dateNaissance`, `lieuNaissance`, `genre`, `classe`, `section`, `moyenne_semestre_1`, `moyenne_semestre_2`, `rang`) VALUES
(1, 'DIALLO', 'Moussa Diouf', '2000-09-10', 'Kolda', 'M', '3e', 'college', 18.05, 18.238095238095237, 1),
(2, 'DIALLO', 'Fatoumata', '2000-10-06', 'Kolda', 'F', '3e', 'college', 14.523809523809524, 14.85, 2),
(3, 'DIOP', 'Seynabou', '2000-12-06', 'Kolda', 'M', '3e', 'college', NULL, NULL, 9),
(4, 'Balde', 'Idrissa', '2000-02-15', 'Kolda', 'M', '3e', 'college', NULL, NULL, 10),
(5, 'Beradah', 'Mounir', '1997-07-16', 'Liban', 'M', 'CAP_BEP3', 'froidclimatisation', 17.357142857142858, 15, 3),
(6, 'DIATTA', 'Héléne', '1997-05-28', 'Ziguinchor', 'F', 'CAP_BEP3', 'froidclimatisation', NULL, NULL, NULL),
(7, 'Sambou', 'Collete', '1999-11-13', 'Ziguinchor', 'F', '4e', 'college', NULL, NULL, NULL),
(8, 'Bassenne', 'Medoune', '2001-02-17', 'Kaolack', 'M', '4e', 'college', 12.571428571428571, 0, 3),
(9, 'Anne', 'Ali', '2000-01-09', 'Dakar', 'M', '3e', 'college', 11.666666666666666, 10.866666666666667, 7),
(10, 'Balde', 'Aicha', '1999-03-15', 'Dakar', 'F', '4e', 'college', NULL, NULL, NULL),
(11, 'Sylla', 'Binta ', '0200-08-12', 'Paris', 'F', '3e', 'college', 11.714285714285714, 13.952380952380953, 5),
(13, 'DIATTA', 'Damien', '1999-09-14', '12/08/1999', 'M', '3e', 'college', 13.952380952380953, 13.761904761904763, 3),
(14, 'DIA', 'Modou', '2000-02-09', 'Dakar', 'M', '3e', 'college', 13.904761904761905, 12.952380952380953, 4),
(16, 'Badji', 'Djimouna', '2023-02-24', 'Rufisque', 'M', 'CAP_BEP3', 'froidclimatisation', NULL, NULL, NULL),
(17, 'Camara', 'Ablaye', '2012-02-10', 'Rufisque', 'M', 'CM2', 'elementaire', NULL, NULL, NULL),
(18, 'Baangoura', 'Fanta', '2011-06-10', 'Thies', 'M', 'CM2', 'elementaire', NULL, NULL, NULL),
(19, 'Barry', 'Rahim', '2012-08-08', 'Porto', 'M', 'CM2', 'elementaire', NULL, NULL, NULL),
(20, 'BA', 'Mamadou Aliou', '2000-05-12', 'Conakry', 'M', 'CM2', 'elementaire', 17, NULL, 7),
(21, 'DIALLO', 'Ramatoulaye', '2001-02-23', 'Bissau ', 'F', 'CI', 'elementaire', NULL, NULL, 0),
(51, 'Barry', 'Aicha ', '2000-06-06', 'Dakar', 'F', '4e', 'college', NULL, NULL, NULL),
(48, 'Mane', 'Gabriel', '2000-10-09', 'Tambacounda', 'M', '3e', 'college', NULL, NULL, 11),
(49, 'DJIBA', 'Raymond', '1998-04-03', 'Matam', 'M', '3e', 'college', NULL, NULL, 12),
(50, 'SY', 'Anta', '1998-07-12', 'Diourbel', 'F', '3e', 'college', 13.1, 10.904761904761905, 6),
(47, 'BALDE', 'Aida', '2000-01-01', 'Tunis', 'F', '3e', 'college', 13.14, NULL, 8),
(52, 'DIATTA', 'Moussa', '1998-03-15', 'Bignona', 'M', 'CAP_BEP3', 'froidclimatisation', 17.714285714285715, 19.4, 1),
(53, 'DIALLO', 'Ourry', '1998-03-14', 'Ziguinchor', 'M', 'CAP_BEP3', 'froidclimatisation', NULL, NULL, NULL),
(64, 'ANNE', 'Arame', '2023-04-15', 'Kolda', 'F', '3e', 'college', NULL, NULL, NULL),
(54, 'Kebe', 'Edaly', '2000-03-03', 'Kabendou', 'M', '3e', 'college', NULL, NULL, 13),
(55, 'Mane', 'Malang', '1999-07-23', 'Conakry', 'M', 'CM2', 'elementaire', 12.666666666666666, 13.5, 4),
(65, 'ANNE', 'Arame', '2023-04-15', 'Kolda', 'F', '3e', 'college', NULL, NULL, NULL),
(56, 'Sagna', 'Thierno', '2000-09-07', 'Guédiawaye', 'M', 'CM2', 'elementaire', 11.666666666666666, 13.833333333333334, 5),
(57, 'Thiam', 'Mohamed', '1999-07-08', 'Kaolack', 'M', '3e', 'college', NULL, NULL, 14),
(58, 'Dramé', 'Fanta', '2001-03-09', 'Thiés', 'F', 'CAP_BEP3', 'college', NULL, NULL, NULL),
(66, 'ANNE', 'Arame', '2023-04-15', 'Kolda', 'F', '3e', 'college', NULL, NULL, NULL),
(59, 'Bolly', 'Aissatou', '2000-03-19', 'Diourbel', 'M', '3e', 'college', NULL, NULL, 15),
(68, 'ANNE', 'Arame', '2003-04-10', 'Kolda', 'F', '3e', 'college', NULL, NULL, NULL),
(60, 'Ndiaye', 'Azigui', '2000-11-18', 'Paris', 'F', 'CM2', 'elementaire', NULL, NULL, NULL),
(67, 'ANNE', 'Arame', '2023-04-15', 'Kolda', 'F', '3e', 'college', NULL, NULL, NULL),
(62, 'Ndiaye', 'Sidy', '1999-03-13', 'SanFrancisco', 'M', '3e', 'college', NULL, NULL, 16),
(63, 'Balde', 'Demba', '2000-03-11', 'Velingara', 'M', '3e', 'college', NULL, NULL, 17),
(69, 'ANNE', 'kjhvhj ', '2003-04-10', 'Kolda', 'F', 'CAP_BEP2', 'maternelle', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `notes`
--

DROP TABLE IF EXISTS `notes`;
CREATE TABLE IF NOT EXISTS `notes` (
  `id_note` int NOT NULL AUTO_INCREMENT,
  `id_apprenant` int NOT NULL,
  `matiere` varchar(150) NOT NULL,
  `note` decimal(10,0) NOT NULL,
  `somme_notes` int DEFAULT NULL,
  PRIMARY KEY (`id_note`)
) ENGINE=MyISAM AUTO_INCREMENT=973 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `notes`
--

INSERT INTO `notes` (`id_note`, `id_apprenant`, `matiere`, `note`, `somme_notes`) VALUES
(642, 20, 'Résolution probléme', '19', NULL),
(643, 20, 'Sciences Naturelles', '17', NULL),
(641, 20, 'Arithmétique', '18', NULL),
(563, 5, 'Thermodynamique', '15', NULL),
(479, 2, 'physique-chimie', '16', NULL),
(478, 2, 'maths', '13', NULL),
(555, 5, 'Thermodynamique', '19', NULL),
(556, 5, 'Electrotechnique', '15', NULL),
(557, 5, 'Systéme de réfrigération', '16', NULL),
(558, 5, 'Securite et prevention des risques', '17', NULL),
(559, 5, 'Thermodynamique', '15', NULL),
(644, 20, 'Histoire Geographie', '17', NULL),
(645, 20, 'Arts', '19', NULL),
(653, 13, 'maths', '12', NULL),
(654, 13, 'physique-chimie', '16', NULL),
(655, 13, 'svt', '15', NULL),
(656, 13, 'francais', '13', NULL),
(657, 13, 'anglais', '14', NULL),
(658, 13, 'histoiregeo', '15', NULL),
(659, 13, 'eps', '14', NULL),
(660, 9, 'maths', '9', NULL),
(661, 9, 'physique-chimie', '13', NULL),
(662, 9, 'svt', '11', NULL),
(663, 9, 'francais', '13', NULL),
(664, 9, 'anglais', '12', NULL),
(665, 9, 'histoiregeo', '15', NULL),
(666, 9, 'eps', '12', NULL),
(667, 11, 'maths', '13', NULL),
(668, 11, 'physique-chimie', '14', NULL),
(669, 11, 'svt', '10', NULL),
(670, 11, 'francais', '12', NULL),
(671, 11, 'anglais', '8', NULL),
(672, 11, 'histoiregeo', '14', NULL),
(673, 11, 'eps', '12', NULL),
(674, 14, 'maths', '14', NULL),
(675, 14, 'physique-chimie', '17', NULL),
(676, 14, 'svt', '13', NULL),
(677, 14, 'francais', '12', NULL),
(678, 14, 'anglais', '11', NULL),
(679, 14, 'histoiregeo', '14', NULL),
(680, 14, 'eps', '16', NULL),
(961, 1, 'SVT', '19', NULL),
(960, 1, 'physique-chimie', '20', NULL),
(959, 1, 'maths', '18', NULL),
(958, 1, 'eps', '18', NULL),
(957, 1, 'histoiregeo', '20', NULL),
(956, 1, 'anglais', '19', NULL),
(955, 1, 'francais', '16', NULL),
(954, 1, 'svt', '16', NULL),
(953, 1, 'physique-chimie', '20', NULL),
(952, 1, 'maths', '19', NULL),
(709, 8, 'maths', '12', NULL),
(710, 8, 'physique-chimie', '12', NULL),
(711, 8, 'svt', '12', NULL),
(712, 8, 'francais', '15', NULL),
(713, 8, 'anglais', '12', NULL),
(714, 8, 'histoiregeo', '12', NULL),
(715, 8, 'eps', '12', NULL),
(723, 13, 'maths', '12', NULL),
(724, 13, 'physique-chimie', '14', NULL),
(725, 13, 'SVT', '14', NULL),
(726, 13, 'Français', '12', NULL),
(727, 13, 'Anglais', '16', NULL),
(728, 13, 'HistoireGeo', '17', NULL),
(729, 13, 'EPS', '13', NULL),
(730, 11, 'maths', '13', NULL),
(731, 11, 'physique-chimie', '14', NULL),
(732, 11, 'SVT', '15', NULL),
(733, 11, 'Français', '14', NULL),
(734, 11, 'Anglais', '13', NULL),
(735, 11, 'HistoireGeo', '16', NULL),
(736, 11, 'EPS', '13', NULL),
(737, 5, 'Thermodynamique', '19', NULL),
(738, 5, 'Electrotechnique', '17', NULL),
(739, 5, 'Systéme de réfrigération', '15', NULL),
(740, 5, 'Securite et prevention des risques', '18', NULL),
(965, 1, 'EPS', '14', NULL),
(964, 1, 'HistoireGeo', '18', NULL),
(963, 1, 'Anglais', '20', NULL),
(962, 1, 'Français', '16', NULL),
(766, 14, 'maths', '14', NULL),
(767, 14, 'physique-chimie', '12', NULL),
(768, 14, 'SVT', '15', NULL),
(769, 14, 'Français', '11', NULL),
(770, 14, 'Anglais', '13', NULL),
(771, 14, 'HistoireGeo', '12', NULL),
(772, 14, 'EPS', '16', NULL),
(787, 52, 'Thermodynamique', '17', NULL),
(788, 52, 'Electrotechnique', '18', NULL),
(789, 52, 'Systéme de réfrigération', '19', NULL),
(790, 52, 'Securite et prevention des risques', '17', NULL),
(791, 52, 'Thermodynamique', '20', NULL),
(792, 52, 'Electrotechnique', '20', NULL),
(793, 52, 'Systéme de réfrigération', '17', NULL),
(972, 47, 'eps', '9', NULL),
(971, 47, 'histoiregeo', '12', NULL),
(970, 47, 'anglais', '16', NULL),
(969, 47, 'francais', '14', NULL),
(968, 47, 'svt', '15', NULL),
(967, 47, 'physique-chimie', '12', NULL),
(966, 47, 'maths', '13', NULL),
(815, 50, 'maths', '13', NULL),
(816, 50, 'physique-chimie', '12', NULL),
(817, 50, 'svt', '11', NULL),
(818, 50, 'francais', '13', NULL),
(819, 50, 'anglais', '16', NULL),
(820, 50, 'histoiregeo', '12', NULL),
(821, 50, 'eps', '14', NULL),
(822, 50, 'maths', '12', NULL),
(823, 50, 'physique-chimie', '11', NULL),
(824, 50, 'SVT', '10', NULL),
(825, 50, 'Français', '9', NULL),
(826, 50, 'Anglais', '11', NULL),
(827, 50, 'HistoireGeo', '13', NULL),
(828, 50, 'EPS', '12', NULL),
(857, 55, 'Arithmétique', '14', NULL),
(858, 55, 'Résolution probléme', '12', NULL),
(859, 55, 'Sciences Naturelles', '11', NULL),
(860, 55, 'Histoire Geographie', '14', NULL),
(861, 55, 'Arts', '12', NULL),
(862, 55, 'Arithmétique2', '14', NULL),
(863, 55, 'Résolution de problemes2', '11', NULL),
(864, 55, '13', '11', NULL),
(865, 55, 'Initiation Scientifiques et Techniques', '15', NULL),
(866, 55, '16', '15', NULL),
(867, 55, 'ART2', '12', NULL),
(879, 56, 'Arithmétique', '12', NULL),
(880, 56, 'Résolution probléme', '14', NULL),
(881, 56, 'Sciences Naturelles', '8', NULL),
(882, 56, 'Histoire Geographie', '13', NULL),
(883, 56, 'Arts', '12', NULL),
(884, 56, 'Arithmétique2', '14', NULL),
(885, 56, 'Résolution de problemes2', '11', NULL),
(886, 56, '15', '11', NULL),
(887, 56, 'Initiation Scientifiques et Techniques', '16', NULL),
(888, 56, '14', '16', NULL),
(889, 56, 'ART2', '13', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `payement`
--

DROP TABLE IF EXISTS `payement`;
CREATE TABLE IF NOT EXISTS `payement` (
  `idPayement` int NOT NULL AUTO_INCREMENT,
  `prenom` varchar(50) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `classe` varchar(50) NOT NULL,
  `montant` double NOT NULL,
  `datePayement` date NOT NULL,
  `dateEcheance` date NOT NULL,
  `dateNow` date NOT NULL,
  `statut` varchar(50) NOT NULL,
  `montantPaye` double NOT NULL,
  PRIMARY KEY (`idPayement`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `rubriques`
--

DROP TABLE IF EXISTS `rubriques`;
CREATE TABLE IF NOT EXISTS `rubriques` (
  `idRubriques` int NOT NULL AUTO_INCREMENT,
  `classe` varchar(50) NOT NULL,
  `droitInscription` int NOT NULL,
  `scolarite` int NOT NULL,
  `albums` int NOT NULL,
  `tenues` int NOT NULL,
  `fraisGeneraux` int NOT NULL,
  `cotisationAPE` int NOT NULL,
  `total` int NOT NULL,
  PRIMARY KEY (`idRubriques`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `rubriques`
--

INSERT INTO `rubriques` (`idRubriques`, `classe`, `droitInscription`, `scolarite`, `albums`, `tenues`, `fraisGeneraux`, `cotisationAPE`, `total`) VALUES
(1, 'CI', 17000, 15000, 0, 30000, 10000, 3000, 75000),
(2, 'CE1', 17000, 16000, 0, 30000, 10000, 3000, 76000),
(3, 'CM1', 17000, 21500, 0, 30000, 10000, 3000, 81500),
(4, 'CRECHES', 75000, 50000, 2000, 0, 0, 3000, 130000),
(5, 'TPS', 17000, 23000, 2000, 10000, 10000, 3000, 65000),
(6, 'PS', 17000, 16000, 2000, 10000, 10000, 3000, 58000),
(7, '6e', 17000, 23000, 0, 30000, 10000, 3000, 83000),
(8, '4e', 17000, 28000, 0, 30000, 10000, 3000, 88000),
(9, 'CAP_BEP1', 17000, 10000, 0, 15000, 10000, 3000, 55000),
(37, 'CP', 17000, 15000, 0, 30000, 10000, 3000, 75000),
(38, 'CE2', 17000, 16000, 0, 30000, 10000, 3000, 76000),
(39, 'CM2', 17000, 21500, 0, 30000, 10000, 3000, 81500),
(40, 'MS', 17000, 16000, 2000, 10000, 10000, 3000, 58000),
(41, 'GS', 17000, 16000, 2000, 10000, 10000, 3000, 58000),
(42, '5e', 17000, 23000, 0, 30000, 10000, 3000, 83000),
(43, '3e', 17000, 28000, 0, 30000, 10000, 3000, 88000),
(44, 'CAP_BEP2', 17000, 10000, 0, 15000, 10000, 3000, 55000),
(45, 'CAP_BEP3', 17000, 10000, 0, 15000, 10000, 3000, 55000);

-- --------------------------------------------------------

--
-- Structure de la table `sections`
--

DROP TABLE IF EXISTS `sections`;
CREATE TABLE IF NOT EXISTS `sections` (
  `nom_section` varchar(155) NOT NULL,
  `nom_classe` varchar(155) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `sections`
--

INSERT INTO `sections` (`nom_section`, `nom_classe`) VALUES
('elementaire', 'CI'),
('elementaire', 'CP'),
('elementaire', 'CE1'),
('elementaire', 'CM1'),
('elementaire', 'CM2'),
('froidclimatisation', 'CAP_BEP1'),
('froidclimatisation', 'CAP_BEP2'),
('froidclimatisation', 'CAP_BEP3'),
('maternelle', 'TPS'),
('maternelle', 'PS'),
('maternelle', 'MS'),
('maternelle', 'GS'),
('college', '6e'),
('college', '5e'),
('college', '4e'),
('college', '3e');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `idUser` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `role` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idUser`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`idUser`, `username`, `password`, `role`) VALUES
(1, 'Seydou', 'forceforte', 'admin'),
(2, 'Moussa', 'frise667', 'secretaire'),
(3, 'fxman', 'angularman', 'caissier'),
(4, 'admin', 'admin', 'secretaire');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
