-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Mer 08 Mars 2017 à 22:15
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `portefolio`
--

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `id_cat` smallint(5) UNSIGNED NOT NULL,
  `titre` varchar(50) DEFAULT NULL,
  `description` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `categorie`
--

INSERT INTO `categorie` (`id_cat`, `titre`, `description`) VALUES
(1, 'HTML/CSS', 'L’HyperText Markup Language, généralement abrégé HTML, est le format de données conçu pour représenter les pages web. C’est un langage de balisage permettant d’écrire de l’hypertexte, d’où son nom. HTML permet également de structurer sémantiquement et logiquement et de mettre en forme le contenu des pages, d’inclure des ressources multimédias dont des images, des formulaires de saisie, et des programmes informatiques.Les CSS, Cascading Style Sheets (feuilles de styles en cascade), servent à mettre en forme des documents web, type page HTML ou XML. Par l\'intermédiaire de propriétés d\'apparence (couleurs, bordures, polices, etc.) et de placement (largeur, hauteur, côte à côte, dessus-dessous, etc.), le rendu d\'une page web peut être intégralement modifié sans aucun code supplémentaire dans la page web.'),
(2, 'PHP', 'Le langage PHP permet de rendre un site dynamique en utilisant des bases de données. Celui-ci est compilé du côté du serveur qui n\'envoie au client que le résultat HTML. A chaque accès au site, le serveur génère donc une page unique.'),
(3, 'JavaScript', 'JavaScript est un langage de programmation de scripts principalement employé dans les pages web interactives mais aussi pour les serveurs2 avec l\'utilisation (par exemple) de Node.JS. C\'est un langage orienté objet à prototype, c\'est-à-dire que les bases du langage et ses principales interfaces sont fournies par des objets qui ne sont pas des instances de classes, mais qui sont chacun équipés de constructeurs permettant de créer leurs propriétés, et notamment une propriété de prototypage qui permet d\'en créer des objets héritiers personnalisés. En outre, les fonctions sont des objets de première classe.');

-- --------------------------------------------------------

--
-- Structure de la table `competence`
--

CREATE TABLE `competence` (
  `id_comp` smallint(5) UNSIGNED NOT NULL,
  `titre` varchar(50) DEFAULT NULL,
  `description` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `competence`
--

INSERT INTO `competence` (`id_comp`, `titre`, `description`) VALUES
(1, 'A1.1.1', 'Analyse du cahier des charges d\'un service à produire\r\n'),
(2, 'A1.1.2', 'Étude de l\'impact de l\'intégration d\'un service sur le système informatique\r\n'),
(3, 'A1.1.3', 'Étude des exigences liées à la qualité attendue d\'un service\r\n'),
(4, 'A1.2.1', 'Élaboration et présentation d\'un dossier de choix de solution technique\r\n'),
(5, 'A1.2.2', 'Rédaction des spécifications techniques de la solution retenue\r\n'),
(6, 'A1.2.3', 'Évaluation des risques liés à l\'utilisation d\'un service \r\n'),
(7, 'A1.2.4', 'Détermination des tests nécessaires à la validation d\'un service'),
(8, 'A1.2.5', 'Définition des niveaux d\'habilitation associés à un service \r\n'),
(9, 'A1.3.1', 'Test d\'intégration et d\'acceptation d\'un service \r\n'),
(10, 'A1.3.2', 'Définition des éléments nécessaires à la continuité d\'un service \r\n'),
(11, 'A1.3.3', 'Accompagnement de la mise en place d\'un nouveau service \r\n'),
(12, 'A1.3.4', 'Déploiement d\'un service \r\n'),
(13, 'A1.4.1', 'Participation à un projet \r\n'),
(14, 'A1.4.2', 'Évaluation des indicateurs de suivi d\'un projet et justification des écarts \r\n'),
(15, 'A1.4.3', 'Gestion des ressources '),
(16, 'A2.1.1', 'Accompagnement des utilisateurs dans la prise en main d\'un service \r\n'),
(17, 'A2.1.2', 'Évaluation et maintien de la qualité d\'un service \r\n'),
(18, 'A2.2.1', 'Suivi et résolution d\'incidents \r\n'),
(19, 'A2.2.2', 'Suivi et réponse à des demandes d\'assistance \r\n'),
(20, 'A2.2.3', 'Réponse à une interruption de service \r\n'),
(21, 'A2.3.1', 'Identification, qualification et évaluation d\'un problème \r\n'),
(22, 'A2.3.2', 'Proposition d\'amélioration d\'un service \r\n'),
(23, 'A3.2.1', 'Installation et configuration d\'éléments d\'infrastructure  \r\n'),
(24, 'A3.2.2', 'Remplacement ou mise à jour d\'éléments défectueux ou obsolètes \r\n'),
(25, 'A4.1.1', 'Proposition d\'une solution applicative \r\n'),
(26, 'A4.1.2', 'Conception ou adaptation de l\'interface utilisateur d\'une solution applicative \r\n'),
(27, 'A4.1.3', 'Conception ou adaptation d\'une base de données \r\n'),
(28, 'A4.1.4', 'Définition des caractéristiques d\'une solution applicative \r\n'),
(29, 'A4.1.5', 'Prototypage de composants logiciels \r\n'),
(30, 'A4.1.6', 'Gestion d\'environnements de développement et de test \r\n'),
(31, 'A4.1.7', 'Développement, utilisation ou adaptation de composants logiciels \r\n'),
(32, 'A4.1.8', 'Réalisation des tests nécessaires à la validation d\'éléments adaptés ou développés  \r\n'),
(33, 'A4.1.9', 'Rédaction d\'une documentation technique  \r\n'),
(34, 'A4.1.10', 'Rédaction d\'une documentation d\'utilisation  \r\n'),
(35, 'A4.2.1', 'Analyse et correction d\'un dysfonctionnement, d\'un problème de qualité de …\r\n'),
(36, 'A4.2.2', 'Adaptation d\'une solution applicative aux évolutions de ses composants \r\n'),
(37, 'A4.2.3', 'Réalisation des tests nécessaires à la mise en production d\'éléments mis à jour \r\n'),
(38, 'A4.2.4', 'Mise à jour d\'une documentation technique \r\n'),
(39, 'A5.1.1', 'Mise en place d\'une gestion de configuration \r\n'),
(40, 'A5.1.2 ', 'Recueil d\'informations sur une configuration et ses éléments\r\n'),
(41, 'A5.1.3', 'Suivi d\'une configuration et de ses éléments \r\n'),
(42, 'A5.1.4', 'Étude de propositions de contrat de service (client, fournisseur) \r\n'),
(43, 'A5.1.5', 'Évaluation d\'un élément de configuration ou d\'une configuration  \r\n'),
(44, 'A5.1.6', 'Évaluation d\'un investissement informatique \r\n'),
(45, 'A5.2.1', 'Exploitation des référentiels, normes et standards adoptés par le prestataire\r\n'),
(46, 'A5.2.2', 'Veille technologique \r\n'),
(47, 'A5.2.3', 'Repérage des compléments de formation ou d\'auto-formation ...\r\n'),
(48, 'A5.2.4', 'Étude d˜une technologie, d\'un composant, d\'un outil ou d\'une méthode \r\n');

-- --------------------------------------------------------

--
-- Structure de la table `englober`
--

CREATE TABLE `englober` (
  `id_p` smallint(5) UNSIGNED NOT NULL,
  `id_comp` smallint(5) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `englober`
--

INSERT INTO `englober` (`id_p`, `id_comp`) VALUES
(30, 1),
(30, 2),
(30, 3),
(30, 4),
(30, 5),
(31, 1),
(31, 2),
(31, 3),
(31, 22),
(31, 26),
(31, 29),
(32, 2),
(32, 8),
(32, 13),
(32, 32),
(32, 47),
(33, 1),
(33, 22),
(33, 45),
(34, 1),
(34, 21),
(34, 26),
(34, 38),
(34, 46),
(35, 1),
(35, 13),
(35, 29),
(35, 33);

-- --------------------------------------------------------

--
-- Structure de la table `image`
--

CREATE TABLE `image` (
  `id_img` smallint(5) UNSIGNED NOT NULL,
  `nom_img` varchar(255) DEFAULT NULL,
  `principal` int(11) DEFAULT '0',
  `id_p` smallint(5) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `image`
--

INSERT INTO `image` (`id_img`, `nom_img`, `principal`, `id_p`) VALUES
(107, 'img/portfolio/immo1.png', 0, 31),
(106, 'img/portfolio/immo1.png', 1, 31),
(105, 'img/portfolio/dead1.png', 0, 30),
(104, 'img/portfolio/dead1.png', 0, 30),
(103, 'img/portfolio/dead1.png', 0, 30),
(102, 'img/portfolio/dead1.png', 1, 30),
(125, 'img/portfolio/cv1.png', 0, 35),
(123, 'img/portfolio/cv1.png', 0, 35),
(124, 'img/portfolio/cv1.png', 0, 35),
(122, 'img/portfolio/cv1.png', 1, 35),
(119, 'img/portfolio/csgo1.png', 0, 34),
(120, 'img/portfolio/csgo1.png', 0, 34),
(121, 'img/portfolio/csgo1.png', 0, 34),
(108, 'img/portfolio/immo1.png', 0, 31),
(109, 'img/portfolio/immo1.png', 0, 31),
(110, 'img/portfolio/langage1.png', 1, 32),
(111, 'img/portfolio/langage1.png', 0, 32),
(112, 'img/portfolio/langage1.png', 0, 32),
(113, 'img/portfolio/langage1.png', 0, 32),
(114, 'img/portfolio/streaming1.png', 1, 33),
(115, 'img/portfolio/streaming1.png', 0, 33),
(116, 'img/portfolio/streaming1.png', 0, 33),
(117, 'img/portfolio/streaming1.png', 0, 33),
(118, 'img/portfolio/csgo1.png', 1, 34);

-- --------------------------------------------------------

--
-- Structure de la table `projet`
--

CREATE TABLE `projet` (
  `id_p` smallint(5) UNSIGNED NOT NULL,
  `titre` varchar(50) DEFAULT NULL,
  `description` text,
  `date_deb` date DEFAULT NULL,
  `date_fin` date DEFAULT NULL,
  `id_cat` smallint(5) UNSIGNED NOT NULL,
  `id_u` smallint(5) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `projet`
--

INSERT INTO `projet` (`id_p`, `titre`, `description`, `date_deb`, `date_fin`, `id_cat`, `id_u`) VALUES
(35, 'Le C.V', '<p>La description se doit d&#39;&ecirc;tre courte et percutante. Elle doit donner envie au lecteur de cliquer et d&#39;entrer sur votre site. 165 caract&egrave;res est la norme pour une bonne description. Comme vous le savez les mots-cl&eacute;s ne font plus parti des crit&egrave;res de Google, mais nous vous conseillons de continuer &agrave; optimiser les textes pr&eacute;sents sur votre site avec des mots cl&eacute;s importants pour votre activit&eacute; ! Vous pouvez donc en ins&eacute;rer ici ou pas.</p>\r\n', '2017-03-01', '2017-05-01', 1, 1),
(34, 'Forum CS GO', ' La description se doit d\'être courte et percutante. Elle doit donner envie au lecteur de cliquer et d\'entrer sur votre site. 165 caractères est la norme pour une bonne description. Comme vous le savez les mots-clés ne font plus parti des critères de Google, mais nous vous conseillons de continuer à optimiser les textes présents sur votre site  avec des mots clés importants pour votre activité ! Vous pouvez donc en insérer ici.\r\n\r\n  ', '2017-03-01', '2017-05-01', 2, 1),
(33, 'Site de Streaming', ' La description se doit d\'être courte et percutante. Elle doit donner envie au lecteur de cliquer et d\'entrer sur votre site. 165 caractères est la norme pour une bonne description. Comme vous le savez les mots-clés ne font plus parti des critères de Google, mais nous vous conseillons de continuer à optimiser les textes présents sur votre site  avec des mots clés importants pour votre activité ! Vous pouvez donc en insérer ici.\r\n\r\n  ', '2017-03-01', '2017-05-01', 2, 1),
(32, 'Site sur les langages', ' La description se doit d\'être courte et percutante. Elle doit donner envie au lecteur de cliquer et d\'entrer sur votre site. 165 caractères est la norme pour une bonne description. Comme vous le savez les mots-clés ne font plus parti des critères de Google, mais nous vous conseillons de continuer à optimiser les textes présents sur votre site  avec des mots clés importants pour votre activité ! Vous pouvez donc en insérer ici.\r\n\r\n  ', '2017-03-01', '2017-05-01', 1, 1),
(30, 'Le Blog Dead by Daylight', ' La description se doit d\'être courte et percutante. Elle doit donner envie au lecteur de cliquer et d\'entrer sur votre site. 165 caractères est la norme pour une bonne description. Comme vous le savez les mots-clés ne font plus parti des critères de Google, mais nous vous conseillons de continuer à optimiser les textes présents sur votre site  avec des mots clés importants pour votre activité ! Vous pouvez donc en insérer ici.\r\n\r\n  ', '2017-03-01', '2017-05-01', 2, 1),
(31, 'Site d\'immobilier', ' La description se doit d\'être courte et percutante. Elle doit donner envie au lecteur de cliquer et d\'entrer sur votre site. 165 caractères est la norme pour une bonne description. Comme vous le savez les mots-clés ne font plus parti des critères de Google, mais nous vous conseillons de continuer à optimiser les textes présents sur votre site  avec des mots clés importants pour votre activité ! Vous pouvez donc en insérer ici.\r\n\r\n  ', '2017-03-01', '2017-05-01', 2, 1);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id_u` smallint(5) UNSIGNED NOT NULL,
  `login` varchar(50) DEFAULT NULL,
  `mdp` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`id_u`, `login`, `mdp`, `email`) VALUES
(1, 'marko', '855739ab88a6ee827c65b130fecae7638f65b394', 'markostef@hotmail.fr');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id_cat`);

--
-- Index pour la table `competence`
--
ALTER TABLE `competence`
  ADD PRIMARY KEY (`id_comp`);

--
-- Index pour la table `englober`
--
ALTER TABLE `englober`
  ADD PRIMARY KEY (`id_p`,`id_comp`),
  ADD KEY `id_comp` (`id_comp`);

--
-- Index pour la table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id_img`),
  ADD KEY `id_p` (`id_p`);

--
-- Index pour la table `projet`
--
ALTER TABLE `projet`
  ADD PRIMARY KEY (`id_p`),
  ADD KEY `id_cat` (`id_cat`),
  ADD KEY `id_u` (`id_u`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_u`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id_cat` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `competence`
--
ALTER TABLE `competence`
  MODIFY `id_comp` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT pour la table `image`
--
ALTER TABLE `image`
  MODIFY `id_img` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;
--
-- AUTO_INCREMENT pour la table `projet`
--
ALTER TABLE `projet`
  MODIFY `id_p` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id_u` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
